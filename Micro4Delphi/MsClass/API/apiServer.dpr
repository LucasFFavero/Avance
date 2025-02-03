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
  Controller.Turmas in 'src\controller\Controller.Turmas.pas',
  DAO.Turmas in 'src\DAO\DAO.Turmas.pas',
  Model.Turmas in 'src\model\Model.Turmas.pas',
  Model.Response in 'src\model\Model.Response.pas',
  uTGenID in 'src\util\uTGenID.pas',
  Util.BancoDados in 'src\util\Util.BancoDados.pas',
  Utils.Funcoes in 'src\util\Utils.Funcoes.pas',
  Utils.ObjectToJson in 'src\util\Utils.ObjectToJson.pas';

procedure SwaggerConfig;
begin
  Swagger //
    .Config //
    .ModuleName('Turmas.dll') //
    .&End. //
    Info. //
    Title('Turmas'). //
    Description('Lista de Turmas') //
    .Contact.Name('Turmas ltda') //
    .Email('fac@Turmas.com.br') //
    .Url('http://www.Turmas.com.br') //
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

  THorseGBSwaggerRegister.RegisterPath(TControllerTurmas);
  THorse.Listen(9000);
end.
