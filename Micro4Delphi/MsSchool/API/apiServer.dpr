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
  udmFiredac in 'src\connection\udmFiredac.pas' {dmFiredac: TDataModule} ,
  Controller.Schools in 'src\controller\Controller.Schools.pas',
  DAO.Schools in 'src\DAO\DAO.Schools.pas',
  Model.Schools in 'src\model\Model.Schools.pas',
  Model.Response in 'src\model\Model.Response.pas',
  uTGenID in 'src\util\uTGenID.pas',
  Util.Database in 'src\util\Util.Database.pas',
  Utils.Functions in 'src\util\Utils.Functions.pas',
  Utils.ObjectToJson in 'src\util\Utils.ObjectToJson.pas';

procedure SwaggerConfig;
begin
  Swagger //
    .Config //
    .ModuleName('Schools.dll') //
    .&End. //
    Info. //
    Title('Schools'). //
    Description('Schools list') //
    .Contact.Name('Schools ltda') //
    .Email('fac@Schools.com.br') //
    .Url('http://www.Schools.com.br') //
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

  THorseGBSwaggerRegister.RegisterPath(TControllerSchools);
  THorse.Listen(9000);

end.
