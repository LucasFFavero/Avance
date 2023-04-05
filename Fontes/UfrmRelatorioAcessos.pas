unit UfrmRelatorioAcessos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Grids,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB,
  AdvGlowButton, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBGrids;

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
    pnlAcessos: TPanel;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Label2: TLabel;
    Panel1: TPanel;
    lblTempoAcesso: TLabel;
    cbDetalhado: TCheckBox;
    dbcbUsuario: TDBLookupComboBox;
    cbUsuario: TCheckBox;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dbcbEscolaEnter(Sender: TObject);
    procedure dbcbTurmasEnter(Sender: TObject);
    procedure cbTurmasClick(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnImprimirClick(Sender: TObject);
    procedure cbUsuarioClick(Sender: TObject);
    procedure dbcbUsuarioEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelatorioAcessos: TfrmRelatorioAcessos;

implementation

{$R *.dfm}

uses UdtmRelatorioAcessos, UfrmMain, UrelAcessos;

procedure TfrmRelatorioAcessos.btnBuscarClick(Sender: TObject);
begin
  btnLimparClick(self);

  if Trim(dbcbEscola.Text) = '' then
  begin
    Application.MessageBox('Selecione a Escola.',
      pchar('Atenção - Usuário ' + Copy(frmMain.sbPrincipal.Panels[2].Text, 9,
      20)), 0 + 48 + 0);
    dbcbEscola.SetFocus;
    Exit;
  end;

  if (cbTurmas.Checked = true) and (Trim(dbcbTurmas.Text) = '') then
  begin
    Application.MessageBox('Selecione a Turma.',
      pchar('Atenção - Usuário ' + Copy(frmMain.sbPrincipal.Panels[2].Text, 9,
      20)), 0 + 48 + 0);
    dbcbTurmas.SetFocus;
    Exit;
  end;

  if (cbUsuario.Checked = true) and (Trim(dbcbUsuario.Text) = '') then
  begin
    Application.MessageBox('Selecione o Usuário.',
      pchar('Atenção - Usuário ' + Copy(frmMain.sbPrincipal.Panels[2].Text, 9,
      20)), 0 + 48 + 0);
    dbcbUsuario.SetFocus;
    Exit;
  end;

  dtmRelatorioAcessos.qryAlunos.Close;
  dtmRelatorioAcessos.qryAlunos.SQL.Clear;
  dtmRelatorioAcessos.qryAlunos.SQL.Add
    ('SELECT USUARIOS.CODIGO, USUARIOS.NOME, USUARIOS.COD_ESCOLA, ESCOLA.NOME AS ESCOLA,');
  dtmRelatorioAcessos.qryAlunos.SQL.Add
    ('USUARIOS.COD_TURMA, TURMAS.DESCRICAO AS TURMA, USUARIOS.EMAIL, USUARIOS.LOGIN,');
  dtmRelatorioAcessos.qryAlunos.SQL.Add
    ('USUARIOS.DATA_NASCIMENTO, USUARIOS.DATA_INGRESSO, USUARIOS.ULTIMO_ACESSO');
  dtmRelatorioAcessos.qryAlunos.SQL.Add('FROM USUARIOS');
  dtmRelatorioAcessos.qryAlunos.SQL.Add
    ('INNER JOIN ESCOLA ON (USUARIOS.COD_ESCOLA = ESCOLA.CODIGO)');
  dtmRelatorioAcessos.qryAlunos.SQL.Add
    ('INNER JOIN TURMAS ON (USUARIOS.COD_TURMA = TURMAS.CODIGO)');

  dtmRelatorioAcessos.qryAlunos.SQL.Add('WHERE USUARIOS.ATIVO = 1');
  dtmRelatorioAcessos.qryAlunos.SQL.Add('AND USUARIOS.ALUNO = 1');

  // Filtra Escola
  dtmRelatorioAcessos.qryAlunos.SQL.Add('AND ESCOLA.CODIGO =:COD_ESCOLA');
  dtmRelatorioAcessos.qryAlunos.ParamByName('COD_ESCOLA').AsInteger :=
    dtmRelatorioAcessos.qryEscolasCODIGO.AsInteger;

  // Filtra Turma
  if (cbTurmas.Checked = true) then
  begin
    dtmRelatorioAcessos.qryAlunos.SQL.Add('AND TURMAS.CODIGO =:COD_TURMA');
    dtmRelatorioAcessos.qryAlunos.ParamByName('COD_TURMA').AsInteger :=
      dtmRelatorioAcessos.qryTurmasCODIGO.AsInteger;
  end;

  // Filtra Usuário
  if (cbUsuario.Checked = true) then
  begin
    dtmRelatorioAcessos.qryAlunos.SQL.Add('AND USUARIOS.CODIGO =:COD_USUARIO');
    dtmRelatorioAcessos.qryAlunos.ParamByName('COD_USUARIO').AsInteger :=
      dtmRelatorioAcessos.qryUsuariosCODIGO.AsInteger;
  end;

  dtmRelatorioAcessos.qryAlunos.SQL.Add('ORDER BY USUARIOS.CODIGO');
  dtmRelatorioAcessos.qryAlunos.Open;

  if dtmRelatorioAcessos.qryAlunos.IsEmpty then
  begin
    Application.MessageBox('Não há registros para esta filtragem.',
      pchar('Atenção - Usuário ' + Copy(frmMain.sbPrincipal.Panels[2].Text, 9,
      20)), 0 + 64 + 0);
    Exit;
  end;
end;

procedure TfrmRelatorioAcessos.btnImprimirClick(Sender: TObject);
begin
  if dtmRelatorioAcessos.qryAlunos.IsEmpty then
  begin
    Application.MessageBox('Não há registro(s) para imprimir.',
      pchar('Atenção - Usuário ' + Copy(frmMain.sbPrincipal.Panels[2].Text, 9,
      20)), 0 + 48 + 0);
    Exit;
  end;

  relAcessos := nil;
  Application.CreateForm(TrelAcessos, relAcessos);

  if (cbDetalhado.Checked = false) then
  begin
    relAcessos.ChildBand2.Height := 0;
    relAcessos.QRSubDetail1.Height := 0;
    relAcessos.GroupFooterBand1.Height := 0;
  end;

  relAcessos.qrAcessos.Preview;

  dtmRelatorioAcessos.qryAlunos.First;
end;

procedure TfrmRelatorioAcessos.btnLimparClick(Sender: TObject);
begin
  frmRelatorioAcessos.lblTempoAcesso.Caption := 'Tempo de acesso: 00:00:00';
  Application.ProcessMessages;

  dtmRelatorioAcessos.cldsAcesso.EmptyDataSet;
  dtmRelatorioAcessos.qryAlunos.Close;
end;

procedure TfrmRelatorioAcessos.cbTurmasClick(Sender: TObject);
begin
  btnLimparClick(self);

  if (cbTurmas.Checked = true) then
    dbcbTurmas.Enabled := true
  else
  begin
    dtmRelatorioAcessos.qryTurmas.Close;
    dbcbTurmas.Enabled := false;
  end;
end;

procedure TfrmRelatorioAcessos.cbUsuarioClick(Sender: TObject);
begin
  btnLimparClick(self);

  if (cbUsuario.Checked = true) then
    dbcbUsuario.Enabled := true
  else
  begin
    dtmRelatorioAcessos.qryUsuarios.Close;
    dbcbUsuario.Enabled := false;
  end;
end;

procedure TfrmRelatorioAcessos.dbcbEscolaEnter(Sender: TObject);
begin
  dtmRelatorioAcessos.qryEscolas.Close;
  dtmRelatorioAcessos.qryEscolas.Open;
end;

procedure TfrmRelatorioAcessos.dbcbTurmasEnter(Sender: TObject);
begin
  dtmRelatorioAcessos.qryTurmas.Close;
  dtmRelatorioAcessos.qryTurmas.Open;
end;

procedure TfrmRelatorioAcessos.dbcbUsuarioEnter(Sender: TObject);
begin
  dtmRelatorioAcessos.qryUsuarios.Close;
  dtmRelatorioAcessos.qryUsuarios.Open;
end;

procedure TfrmRelatorioAcessos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
  frmRelatorioAcessos := nil;
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
