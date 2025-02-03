unit Main.Form;

interface

uses Winapi.Windows, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, System.SysUtils, System.JSON, Horse, Horse.Jhonson,
  Horse.CORS, Vcl.AppEvnts, Vcl.ExtCtrls, Vcl.Menus, Horse.GBSwagger, Horse.HandleException, IdBaseComponent;

type
  TFrmMain = class(TForm)
    ApplicationEvents1: TApplicationEvents;
    btnStart: TButton;
    btnStop: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure ApplicationEvents1Minimize(Sender: TObject);
    procedure ApplicationEvents1Activate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnStartClick(Sender: TObject);
    procedure btnStopClick(Sender: TObject);
  private
    FMinimize: boolean;
    FHorseIsRunning: boolean;
    procedure Start;
    procedure Stop;
    procedure SwaggerConfig;
  end;

var
  FrmMain: TFrmMain;

implementation

uses IOUtils, Horse.Provider.Vcl, IdSSLOpenSSL, Controller.Produto;

{$R *.dfm}

procedure TFrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if FHorseIsRunning then
    Stop;
end;

procedure TFrmMain.FormCreate(Sender: TObject);
begin
  FHorseIsRunning := false;
  self.Top := screen.height - (self.height + 40);
  self.left := screen.Width - self.Width;
end;

procedure TFrmMain.FormShow(Sender: TObject);
begin
  if not FHorseIsRunning then
    Start;
end;

procedure TFrmMain.SwaggerConfig;
begin
  Swagger //
    .Config //
    .ModuleName('produto.dll') //
    .&End. //
    Info. //
    Title('Produtos'). //
    Description('lista de Produtos') //
    .Contact.Name('Produtos ltda') //
    .Email('fac@produtos.com.br') //
    .Url('http://www.produtos.com.br') //
    .&End.&End.BasePath('');
end;

procedure TFrmMain.Start;
begin
  FHorseIsRunning := true;
  THorse.Use(Jhonson);
  THorse.Use(CORS);
  THorse.Use(HandleException);
  THorse.Use(HorseSwagger);
  THorse.Get('ping',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    begin
      Res.Send('pong');
    end);
  SwaggerConfig;
  THorseGBSwaggerRegister.RegisterPath(TControllerProduto);
  THorse.Listen(8099);
  btnStart.Enabled := not FHorseIsRunning;
  btnStop.Enabled := not btnStart.Enabled;
end;

procedure TFrmMain.Stop;
begin
  if FHorseIsRunning then
    THorse.StopListen;
  FHorseIsRunning := false;
  btnStart.Enabled := not FHorseIsRunning;
  btnStop.Enabled := not btnStart.Enabled;
end;

procedure TFrmMain.ApplicationEvents1Activate(Sender: TObject);
begin
  if FMinimize then
    hide();
end;

procedure TFrmMain.ApplicationEvents1Minimize(Sender: TObject);
begin
  FMinimize := true;
  hide();
  WindowState := wsMinimized;
end;

procedure TFrmMain.btnStartClick(Sender: TObject);
begin
  Start;
end;

procedure TFrmMain.btnStopClick(Sender: TObject);
begin
  Stop;
end;

end.
