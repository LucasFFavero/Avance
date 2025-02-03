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
  Controller.Escolas in 'src\controller\Controller.Escolas.pas',
  DAO.Escolas in 'src\DAO\DAO.Escolas.pas',
  Model.Escolas in 'src\model\Model.Escolas.pas',
  Model.Response in 'src\model\Model.Response.pas',
  uTGenID in 'src\util\uTGenID.pas',
  Util.BancoDados in 'src\util\Util.BancoDados.pas',
  Utils.Funcoes in 'src\util\Utils.Funcoes.pas',
  Utils.ObjectToJson in 'src\util\Utils.ObjectToJson.pas';

procedure SwaggerConfig;
begin
  Swagger //
    .Config //
    .ModuleName('Escolas.dll') //
    .&End. //
    Info. //
    Title('Escolas'). //
    Description('Lista de Escolas') //
    .Contact.Name('Escolas ltda') //
    .Email('fac@Escolas.com.br') //
    .Url('http://www.Escolas.com.br') //
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

  THorseGBSwaggerRegister.RegisterPath(TControllerEscolas);
  THorse.Listen(9000);
end.
