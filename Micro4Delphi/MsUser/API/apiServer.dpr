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
  Controller.Usuarios in 'src\controller\Controller.Usuarios.pas',
  DAO.Usuarios in 'src\DAO\DAO.Usuarios.pas',
  Model.Usuarios in 'src\model\Model.Usuarios.pas',
  Model.Response in 'src\model\Model.Response.pas',
  uTGenID in 'src\util\uTGenID.pas',
  Util.BancoDados in 'src\util\Util.BancoDados.pas',
  Utils.Funcoes in 'src\util\Utils.Funcoes.pas',
  Utils.ObjectToJson in 'src\util\Utils.ObjectToJson.pas';

procedure SwaggerConfig;
begin
  Swagger //
    .Config //
    .ModuleName('Usuarios.dll') //
    .&End. //
    Info. //
    Title('Usuarios'). //
    Description('Lista de Usuários') //
    .Contact.Name('Usuários ltda') //
    .Email('fac@usuarios.com.br') //
    .Url('http://www.usuarios.com.br') //
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

  THorseGBSwaggerRegister.RegisterPath(TControllerUsuarios);
  THorse.Listen(9000);
end.
