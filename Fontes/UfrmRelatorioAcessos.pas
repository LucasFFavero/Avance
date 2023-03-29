unit UfrmRelatorioAcessos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvGlowButton, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TfrmRelatorioAcessos = class(TForm)
    pnlTop: TPanel;
    gpbFiltros: TGroupBox;
    dbcbEscola: TDBLookupComboBox;
    gpbOpcoes: TGroupBox;
    btnBuscar: TAdvGlowButton;
    btnLimpar: TAdvGlowButton;
    btnImprimir: TAdvGlowButton;
    pnlAlunos: TPanel;
    dbgAlunos: TDBGrid;
    Panel6: TPanel;
    Label3: TLabel;
    dbcbTurmas: TDBLookupComboBox;
    cbTurmas: TCheckBox;
    Label1: TLabel;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dbcbEscolaEnter(Sender: TObject);
    procedure dbcbTurmasEnter(Sender: TObject);
    procedure cbTurmasClick(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelatorioAcessos: TfrmRelatorioAcessos;

implementation

{$R *.dfm}

uses UdtmRelatorioAcessos;

procedure TfrmRelatorioAcessos.btnBuscarClick(Sender: TObject);
begin
  dtmRelatorioAcessos.qryBuscaUsuarios.Close;
  dtmRelatorioAcessos.qryBuscaUsuarios.SQL.Clear;
  dtmRelatorioAcessos.qryBuscaUsuarios.SQL.Add
    ('SELECT USUARIOS.CODIGO, USUARIOS.NOME, USUARIOS.COD_ESCOLA, ESCOLA.NOME AS ESCOLA,');
  dtmRelatorioAcessos.qryBuscaUsuarios.SQL.Add
    ('USUARIOS.COD_TURMA, TURMAS.DESCRICAO AS TURMA, USUARIOS.EMAIL, USUARIOS.LOGIN,');
  dtmRelatorioAcessos.qryBuscaUsuarios.SQL.Add
    ('USUARIOS.DATA_NASCIMENTO, USUARIOS.DATA_INGRESSO, USUARIOS.ULTIMO_ACESSO,');
  dtmRelatorioAcessos.qryBuscaUsuarios.SQL.Add
    ('USUARIOS_ACESSOS.ENTRADA, USUARIOS_ACESSOS.SAIDA');
  dtmRelatorioAcessos.qryBuscaUsuarios.SQL.Add('FROM USUARIOS');
  dtmRelatorioAcessos.qryBuscaUsuarios.SQL.Add
    ('INNER JOIN USUARIOS_ACESSOS ON (USUARIOS.CODIGO = USUARIOS_ACESSOS.COD_USUARIO)');
  dtmRelatorioAcessos.qryBuscaUsuarios.SQL.Add
    ('INNER JOIN ESCOLA ON (USUARIOS.COD_ESCOLA = ESCOLA.CODIGO)');
  dtmRelatorioAcessos.qryBuscaUsuarios.SQL.Add
    ('INNER JOIN TURMAS ON (USUARIOS.COD_TURMA = TURMAS.CODIGO)');

  // Filtra Escola
  dtmRelatorioAcessos.qryBuscaUsuarios.SQL.Add
    ('WHERE ESCOLA.CODIGO =:COD_ESCOLA');
  dtmRelatorioAcessos.qryBuscaUsuarios.ParamByName('COD_ESCOLA').AsInteger :=
    dtmRelatorioAcessos.qryEscolasCODIGO.AsInteger;

  // Filtra Turma
  if (cbTurmas.Checked = true) then
  begin
    dtmRelatorioAcessos.qryBuscaUsuarios.SQL.Add
      ('AND TURMAS.CODIGO =:COD_TURMA');
    dtmRelatorioAcessos.qryBuscaUsuarios.ParamByName('COD_TURMA').AsInteger :=
      dtmRelatorioAcessos.qryTurmasCODIGO.AsInteger;
  end;

  dtmRelatorioAcessos.qryBuscaUsuarios.SQL.Add('ORDER BY USUARIOS.CODIGO');
  dtmRelatorioAcessos.qryBuscaUsuarios.Open;
end;

procedure TfrmRelatorioAcessos.btnLimparClick(Sender: TObject);
begin
  dtmRelatorioAcessos.qryBuscaUsuarios.Close;
end;

procedure TfrmRelatorioAcessos.cbTurmasClick(Sender: TObject);
begin
  if (cbTurmas.Checked = true) then
    dbcbTurmas.Enabled := true
  else
  begin
    dtmRelatorioAcessos.qryTurmas.Close;
    dbcbTurmas.Enabled := false;
  end;
end;

procedure TfrmRelatorioAcessos.dbcbEscolaEnter(Sender: TObject);
begin
  if not dtmRelatorioAcessos.qryEscolas.Active then
    dtmRelatorioAcessos.qryEscolas.Open;
end;

procedure TfrmRelatorioAcessos.dbcbTurmasEnter(Sender: TObject);
begin
  if not dtmRelatorioAcessos.qryTurmas.Active then
    dtmRelatorioAcessos.qryEscolas.Open;
end;

procedure TfrmRelatorioAcessos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  // Usar "ENTER" como "TAB", pular de campo com enter
  if (Key = #13) then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;

  // Fechar form usando "ESC"
  if (Key = #27) then
    Close;
end;

end.
