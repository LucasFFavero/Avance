unit UfrmRelatorios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, AdvGlowButton, Vcl.DBCtrls;

type
  TfrmRelatorios = class(TForm)
    pnlTop: TPanel;
    dbgRelatorios: TDBGrid;
    gpbFiltros: TGroupBox;
    gpbOpcoes: TGroupBox;
    btnBuscar: TAdvGlowButton;
    btnLimpar: TAdvGlowButton;
    btnImprimir: TAdvGlowButton;
    cbEscola: TCheckBox;
    cbAlunos: TCheckBox;
    cbAulas: TCheckBox;
    dbcbEscola: TDBLookupComboBox;
    dbcbAlunos: TDBLookupComboBox;
    dbcbAulas: TDBLookupComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbcbEscolaEnter(Sender: TObject);
    procedure dbcbAlunosEnter(Sender: TObject);
    procedure dbcbAulasEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelatorios: TfrmRelatorios;

implementation

{$R *.dfm}

uses UfrmMain, UdtmRelatorios;

procedure TfrmRelatorios.dbcbAlunosEnter(Sender: TObject);
begin
  if not dtmRelatorios.qryBuscaUsuarios.Active then
    dtmRelatorios.qryBuscaUsuarios.Open;
end;

procedure TfrmRelatorios.dbcbAulasEnter(Sender: TObject);
begin
  if not dtmRelatorios.qryBuscaAulas.Active then
    dtmRelatorios.qryBuscaAulas.Open;
end;

procedure TfrmRelatorios.dbcbEscolaEnter(Sender: TObject);
begin
  if not dtmRelatorios.qryBuscaEscolas.Active then
    dtmRelatorios.qryBuscaEscolas.Open;
end;

procedure TfrmRelatorios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
  frmRelatorios := nil;
end;

end.
