unit UfrmTipoRelatorio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvGlowButton;

type
  TfrmTipoRelatorio = class(TForm)
    btnRelatorios: TAdvGlowButton;
    AdvGlowButton1: TAdvGlowButton;
    procedure btnRelatoriosClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTipoRelatorio: TfrmTipoRelatorio;

implementation

{$R *.dfm}

uses UfrmRelatorios, UfrmMain, UfrmRelatorioAcessos;

procedure TfrmTipoRelatorio.AdvGlowButton1Click(Sender: TObject);
begin
  if (frmRelatorioAcessos = nil) then
    Application.CreateForm(TfrmRelatorioAcessos, frmRelatorioAcessos);

  Close;
end;

procedure TfrmTipoRelatorio.btnRelatoriosClick(Sender: TObject);
begin
  if (frmRelatorios = nil) then
    Application.CreateForm(TfrmRelatorios, frmRelatorios);

  Close;
end;

procedure TfrmTipoRelatorio.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
  frmTipoRelatorio := nil;
end;

procedure TfrmTipoRelatorio.FormKeyPress(Sender: TObject; var Key: Char);
begin
  // Fechar form usando "ESC"
  if (Key = #27) then
    Close;
end;

end.
