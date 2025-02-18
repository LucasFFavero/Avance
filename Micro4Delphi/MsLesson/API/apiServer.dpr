program apiServer;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils,
  System.Classes,
  Horse,
  Horse.Jhonson,
  Horse.CORS,
  System.JSON,
  Horse.GBSwagger,
  Horse.Paginate,
  Horse.HandleException,
  udmFiredac in 'src\connection\udmFiredac.pas' {dmFiredac: TDataModule},
  Controller.Lessons in 'src\controller\Controller.Lessons.pas',
  DAO.Lessons in 'src\DAO\DAO.Lessons.pas',
  Model.Lessons in 'src\model\Model.Lessons.pas',
  Model.Response in 'src\model\Model.Response.pas',
  uTGenID in 'src\util\uTGenID.pas',
  Util.Database in 'src\util\Util.Database.pas',
  Utils.Functions in 'src\util\Utils.Functions.pas',
  Utils.ObjectToJson in 'src\util\Utils.ObjectToJson.pas';

procedure SwaggerConfig;
begin
  Swagger //
    .Config //
    .ModuleName('Lessons.dll') //
    .&End. //
    Info. //
    Title('Lessons'). //
    Description('Lessons List') //
    .Contact.Name('Lessons ltda') //
    .Email('fac@Lessons.com.br') //
    .Url('http://www.Lessons.com.br') //
    .&End.&End.BasePath('');
end;

begin
  THorse.Use(HorseSwagger);
  SwaggerConfig;
  THorse.Use(Jhonson);
  THorse.Use(CORS);
  THorse.Use(HandleException);

  THorse.Get('/ping',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    begin
      // Res.Send('pong');
      Res.Send('pong ' + GetEnvironmentVariable('PONG'));
    end);

  THorseGBSwaggerRegister.RegisterPath(TControllerLessons);
  THorse.Listen(9000);
end.
