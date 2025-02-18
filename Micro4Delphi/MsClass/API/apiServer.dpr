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
  Controller.Classes in 'src\controller\Controller.Classes.pas',
  DAO.Classes in 'src\DAO\DAO.Classes.pas',
  Model.Classes in 'src\model\Model.Classes.pas',
  Model.Response in 'src\model\Model.Response.pas',
  uTGenID in 'src\util\uTGenID.pas',
  Util.Database in 'src\util\Util.Database.pas',
  Utils.Functions in 'src\util\Utils.Functions.pas',
  Utils.ObjectToJson in 'src\util\Utils.ObjectToJson.pas';

procedure SwaggerConfig;
begin
  Swagger //
    .Config //
    .ModuleName('Classes.dll') //
    .&End. //
    Info. //
    Title('Classes'). //
    Description('Classes List') //
    .Contact.Name('Classes ltda') //
    .Email('fac@Classes.com.br') //
    .Url('http://www.Classes.com.br') //
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

  THorseGBSwaggerRegister.RegisterPath(TControllerClasses);
  THorse.Listen(9000);
end.
