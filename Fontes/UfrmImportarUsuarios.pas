unit UfrmImportarUsuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvGlowButton, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids;

type
  TfrmImportarUsuarios = class(TForm)
    pnlTop: TPanel;
    btnSalvar: TAdvGlowButton;
    btnBuscar: TAdvGlowButton;
    btnCancelar: TAdvGlowButton;
    Panel1: TPanel;
    dbGridLocalizar: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmImportarUsuarios: TfrmImportarUsuarios;

implementation

{$R *.dfm}

procedure TfrmImportarUsuarios.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmImportarUsuarios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
  frmImportarUsuarios := nil;
end;

end.
