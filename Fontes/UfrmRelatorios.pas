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
    pnlCenter: TPanel;
    pnlClient: TPanel;
    pnlEscolas: TPanel;
    dbgEscolas: TDBGrid;
    Panel2: TPanel;
    Label1: TLabel;
    pnlAulas: TPanel;
    dbgAulas: TDBGrid;
    Panel4: TPanel;
    Label2: TLabel;
    pnlAlunos: TPanel;
    dbgAlunos: TDBGrid;
    Panel6: TPanel;
    Label3: TLabel;
    pnlExercicios: TPanel;
    dbgExercicios: TDBGrid;
    Panel8: TPanel;
    Label4: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbcbEscolaEnter(Sender: TObject);
    procedure dbcbAlunosEnter(Sender: TObject);
    procedure dbcbAulasEnter(Sender: TObject);
    procedure cbEscolaClick(Sender: TObject);
    procedure cbAlunosClick(Sender: TObject);
    procedure cbAulasClick(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
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

procedure TfrmRelatorios.btnBuscarClick(Sender: TObject);
begin
  if (cbEscola.Checked = true) then
  begin
    dtmRelatorios.qryBuscaEscolas.Close;
    dtmRelatorios.qryBuscaEscolas.SQL.Clear;
    dtmRelatorios.qryBuscaEscolas.SQL.Add
      ('SELECT ESCOLA.CODIGO, ESCOLA.NOME, ESCOLA.CIDADE, ESCOLA.ESTADO');
    dtmRelatorios.qryBuscaEscolas.SQL.Add('FROM ESCOLA');
    dtmRelatorios.qryBuscaEscolas.SQL.Add('ORDER BY ESCOLA.CODIGO');
    dtmRelatorios.qryBuscaEscolas.Open;
  end;

  if (cbAlunos.Checked = true) then
  begin
    dtmRelatorios.qryBuscaUsuarios.Close;
    dtmRelatorios.qryBuscaUsuarios.SQL.Clear;
    dtmRelatorios.qryBuscaUsuarios.SQL.Add
      ('SELECT USUARIOS.CODIGO, USUARIOS.NOME, USUARIOS.COD_ESCOLA, ESCOLA.NOME AS ESCOLA,');
    dtmRelatorios.qryBuscaUsuarios.SQL.Add
      ('USUARIOS.COD_TURMA, TURMAS.DESCRICAO AS TURMA, USUARIOS.EMAIL, USUARIOS.LOGIN,');
    dtmRelatorios.qryBuscaUsuarios.SQL.Add
      ('USUARIOS.SENHA, USUARIOS.DATA_NASCIMENTO, USUARIOS.ATIVO, USUARIOS.GESTOR,');
    dtmRelatorios.qryBuscaUsuarios.SQL.Add
      ('USUARIOS.PROFESSOR, USUARIOS.ALUNO, USUARIOS.DATA_INGRESSO, USUARIOS.ULTIMO_ACESSO');
    dtmRelatorios.qryBuscaUsuarios.SQL.Add('FROM USUARIOS');
    dtmRelatorios.qryBuscaUsuarios.SQL.Add
      ('INNER JOIN ESCOLA ON (USUARIOS.COD_ESCOLA = ESCOLA.CODIGO)');
    dtmRelatorios.qryBuscaUsuarios.SQL.Add
      ('INNER JOIN TURMAS ON (USUARIOS.COD_TURMA = TURMAS.CODIGO)');
    dtmRelatorios.qryBuscaUsuarios.SQL.Add('ORDER BY USUARIOS.CODIGO');
    dtmRelatorios.qryBuscaUsuarios.Open;
  end;
end;

procedure TfrmRelatorios.cbAlunosClick(Sender: TObject);
begin
  if (cbAlunos.Checked = true) then
    dbcbAlunos.Enabled := true
  else
  begin
    dtmRelatorios.qryUsuarios.Close;
    dbcbAlunos.Enabled := false;
  end;
end;

procedure TfrmRelatorios.cbAulasClick(Sender: TObject);
begin
  if (cbAulas.Checked = true) then
    dbcbAulas.Enabled := true
  else
  begin
    dtmRelatorios.qryAulas.Close;
    dbcbAulas.Enabled := false;
  end;
end;

procedure TfrmRelatorios.cbEscolaClick(Sender: TObject);
begin
  if (cbEscola.Checked = true) then
    dbcbEscola.Enabled := true
  else
  begin
    dtmRelatorios.qryEscolas.Close;
    dbcbEscola.Enabled := false;
  end;
end;

procedure TfrmRelatorios.dbcbAlunosEnter(Sender: TObject);
begin
  if not dtmRelatorios.qryUsuarios.Active then
    dtmRelatorios.qryUsuarios.Open;
end;

procedure TfrmRelatorios.dbcbAulasEnter(Sender: TObject);
begin
  if not dtmRelatorios.qryAulas.Active then
    dtmRelatorios.qryAulas.Open;
end;

procedure TfrmRelatorios.dbcbEscolaEnter(Sender: TObject);
begin
  if not dtmRelatorios.qryEscolas.Active then
    dtmRelatorios.qryEscolas.Open;
end;

procedure TfrmRelatorios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
  frmRelatorios := nil;
end;

end.
