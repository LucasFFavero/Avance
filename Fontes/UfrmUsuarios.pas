unit UfrmUsuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, AdvGlowButton,
  AdvReflectionImage, System.ImageList, Vcl.ImgList, cxImageList, cxGraphics,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.Mask, Vcl.StdCtrls,
  Vcl.DBCtrls, AdvEdit, AdvEdBtn, PlannerDatePicker, PlannerDBDatePicker,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinsDefaultPainters, cxTextEdit, cxMaskEdit, cxSpinEdit,
  cxDBEdit;

type
  TfrmUsuarios = class(TForm)
    pnlTop: TPanel;
    btnListar: TAdvGlowButton;
    btnSalvar: TAdvGlowButton;
    btnBuscar: TAdvGlowButton;
    btnEditar: TAdvGlowButton;
    btnCancelar: TAdvGlowButton;
    btnExcluir: TAdvGlowButton;
    btnPrimeiro: TAdvGlowButton;
    btnAnterior: TAdvGlowButton;
    btnProximo: TAdvGlowButton;
    btnUltimo: TAdvGlowButton;
    Panel1: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    btnIncluir: TAdvGlowButton;
    btnImprimir: TAdvGlowButton;
    Panel2: TPanel;
    pgcDadosCadastrais: TPageControl;
    tbsDadosCadastrais: TTabSheet;
    dbGrid: TDBGrid;
    pnlCadastro: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    edtCodigo: TDBEdit;
    edtNome: TDBEdit;
    edtSenha: TDBEdit;
    edtConfirmaSenha: TMaskEdit;
    edtLogin: TDBEdit;
    edtEmail: TDBEdit;
    edtNascimento: TPlannerDBDatePicker;
    dbcbGestor: TDBCheckBox;
    dbcbProfessor: TDBCheckBox;
    dbcbAluno: TDBCheckBox;
    dbcbAtivo: TDBCheckBox;
    dblkcbEscola: TDBLookupComboBox;
    dblkcbTurma: TDBLookupComboBox;
    tbsLocalizar: TTabSheet;
    pnlLocalizar: TPanel;
    Label10: TLabel;
    edtLocUsuarios: TEdit;
    btnLocalizarUsuarios: TAdvGlowButton;
    dbGridLocalizar: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure dblkcbEscolaEnter(Sender: TObject);
    procedure dblkcbTurmaEnter(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnPrimeiroClick(Sender: TObject);
    procedure btnAnteriorClick(Sender: TObject);
    procedure btnProximoClick(Sender: TObject);
    procedure btnUltimoClick(Sender: TObject);
    procedure btnListarClick(Sender: TObject);
    procedure btnLocalizarUsuariosClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure tbsLocalizarShow(Sender: TObject);
    procedure dbGridLocalizarDblClick(Sender: TObject);
    procedure dbGridDblClick(Sender: TObject);
    procedure dbcbGestorClick(Sender: TObject);
    procedure dbcbProfessorClick(Sender: TObject);
    procedure dbcbAlunoClick(Sender: TObject);
    procedure dbGridLocalizarDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUsuarios: TfrmUsuarios;

implementation

{$R *.dfm}

uses UfrmMain, UdtmUsuarios;

procedure TfrmUsuarios.btnAnteriorClick(Sender: TObject);
begin
  if dtmUsuarios.qryUsuarios.Active then
    dtmUsuarios.qryUsuarios.Prior;
end;

procedure TfrmUsuarios.btnBuscarClick(Sender: TObject);
begin
  if dtmUsuarios.Transaction.Active then
    dtmUsuarios.Transaction.Rollback;
  if not dtmUsuarios.Transaction.Active then
    dtmUsuarios.Transaction.StartTransaction;

  if not dtmUsuarios.qryUsuarios.Active then
    dtmUsuarios.qryUsuarios.Open;

  if not dtmUsuarios.qryEscola.Active then
    dtmUsuarios.qryEscola.Open;
  if not dtmUsuarios.qryTurmas.Active then
    dtmUsuarios.qryTurmas.Open;
end;

procedure TfrmUsuarios.btnCancelarClick(Sender: TObject);
begin
  if dtmUsuarios.qryUsuarios.Active then
    dtmUsuarios.qryUsuarios.Cancel;

  dtmUsuarios.dtsUsuariosStateChange(Self);
end;

procedure TfrmUsuarios.btnEditarClick(Sender: TObject);
begin
  if (edtLogin.Text <> Trim(Copy(frmMain.sbPrincipal.Panels[2].Text, 9, 20)))
  then
  begin
    Application.MessageBox
      ('Você não pode alterar informações de outro usuário.',
      pchar('Atenção - Usuário ' + Copy(frmMain.sbPrincipal.Panels[2].Text, 9,
      20)), 0 + 48 + 0);
    Exit;
  end;

  // Edita registro
  pnlCadastro.Visible := true;
  dbGrid.Visible := false;

  if dtmUsuarios.qryUsuarios.Active then
    dtmUsuarios.qryUsuarios.Edit;
  edtNome.SetFocus;
end;

procedure TfrmUsuarios.btnExcluirClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja realmente excluir esse registro?',
    pchar('Atenção - Usuário ' + Copy(frmMain.sbPrincipal.Panels[2].Text, 9, 20)
    ), MB_YesNo + MB_IconQuestion) = idNo then
    Abort;

  pnlCadastro.Visible := true;
  dbGrid.Visible := false;

  try
    // Excluir registro
    if dtmUsuarios.qryUsuarios.Active then
      dtmUsuarios.qryUsuarios.Delete;
    dtmUsuarios.Transaction.CommitRetaining;

    dtmUsuarios.dtsUsuariosStateChange(Self);
  except
    Application.MessageBox
      ('Erro ao exluir o registro, verifique se ele não está em uso.',
      pchar('Atenção - Usuário ' + Copy(frmMain.sbPrincipal.Panels[2].Text, 9,
      20)), 0 + 16 + 0);
    Exit;
  end;

  Application.MessageBox('Exclusão realizada com sucesso.',
    pchar('Atenção - Usuário ' + Copy(frmMain.sbPrincipal.Panels[2].Text, 9, 20)
    ), 0 + 64 + 0);
end;

procedure TfrmUsuarios.btnImprimirClick(Sender: TObject);
begin
  if dtmUsuarios.qryUsuarios.IsEmpty then
  begin
    Application.MessageBox('Não há registro(s) para imprimir.',
      pchar('Atenção - Usuário ' + Copy(frmMain.sbPrincipal.Panels[2].Text, 9,
      20)), 0 + 48 + 0);
    Exit;
  end;

  { relUsuarios := nil;
    Application.CreateForm(TrelUsuarios, relUsuarios);
    relUsuarios.qrUsuarios.Preview; }

  dtmUsuarios.qryUsuarios.First;
end;

procedure TfrmUsuarios.btnIncluirClick(Sender: TObject);
begin
  btnBuscarClick(Self);

  pnlCadastro.Visible := true;
  dbGrid.Visible := false;

  dtmUsuarios.qryUsuarios.Insert;
  dtmUsuarios.qryUsuariosATIVO.Value := 1;
  edtConfirmaSenha.Clear;
  edtNome.SetFocus;
end;

procedure TfrmUsuarios.btnListarClick(Sender: TObject);
begin
  pgcDadosCadastrais.ActivePage := tbsDadosCadastrais;

  if (pnlCadastro.Visible = true) then
  begin
    pnlCadastro.Visible := false;
    dbGrid.Visible := true;

    btnEditar.Enabled := false;
    btnIncluir.Enabled := false;
    dtmUsuarios.qryUsuarios.First;

    THackDBGrid(dbGridLocalizar).DefaultRowHeight := 30;
    THackDBGrid(dbGrid).DefaultRowHeight := 30;
  end
  else
  begin
    btnIncluir.Enabled := dtmUsuarios.qryUsuarios.State = dsBrowse;
    btnEditar.Enabled := (dtmUsuarios.qryUsuarios.State = dsBrowse) and
      (not(dtmUsuarios.qryUsuarios.IsEmpty));

    pnlCadastro.Visible := true;
    dbGrid.Visible := false;
  end;
end;

procedure TfrmUsuarios.btnLocalizarUsuariosClick(Sender: TObject);
begin
  dtmUsuarios.qryBuscaUsuarios.Close;
  dtmUsuarios.qryBuscaUsuarios.SQL.Clear;

  dtmUsuarios.qryBuscaUsuarios.SQL.Add
    ('SELECT USUARIOS.CODIGO, USUARIOS.NOME, USUARIOS.COD_ESCOLA, ESCOLA.NOME AS ESCOLA,');
  dtmUsuarios.qryBuscaUsuarios.SQL.Add
    ('USUARIOS.COD_TURMA, TURMAS.DESCRICAO AS TURMA, USUARIOS.EMAIL, USUARIOS.LOGIN,');
  dtmUsuarios.qryBuscaUsuarios.SQL.Add
    ('USUARIOS.SENHA, USUARIOS.DATA_NASCIMENTO, USUARIOS.ATIVO, USUARIOS.GESTOR,');
  dtmUsuarios.qryBuscaUsuarios.SQL.Add
    ('USUARIOS.PROFESSOR, USUARIOS.ALUNO, USUARIOS.DATA_INGRESSO, USUARIOS.ULTIMO_ACESSO');
  dtmUsuarios.qryBuscaUsuarios.SQL.Add('FROM USUARIOS');
  dtmUsuarios.qryBuscaUsuarios.SQL.Add
    ('INNER JOIN ESCOLA ON (USUARIOS.COD_ESCOLA = ESCOLA.CODIGO)');
  dtmUsuarios.qryBuscaUsuarios.SQL.Add
    ('INNER JOIN TURMAS ON (USUARIOS.COD_TURMA = TURMAS.CODIGO)');

  if (edtLocUsuarios.Text <> '') then
  begin
    dtmUsuarios.qryBuscaUsuarios.SQL.Add('WHERE USUARIOS.NOME LIKE :NOME');
    dtmUsuarios.qryBuscaUsuarios.Params[0].DataType := ftString;
    dtmUsuarios.qryBuscaUsuarios.Params[0].AsString :=
      edtLocUsuarios.Text + '%';
  end;

  dtmUsuarios.qryBuscaUsuarios.SQL.Add('ORDER BY USUARIOS.CODIGO');
  dtmUsuarios.qryBuscaUsuarios.Open;

  THackDBGrid(dbGridLocalizar).DefaultRowHeight := 30;
  THackDBGrid(dbGrid).DefaultRowHeight := 30;

  if dtmUsuarios.qryBuscaUsuarios.IsEmpty then
  begin
    Application.MessageBox('Não há registro(s) para esta filtragem.',
      pchar('Atenção - Usuário ' + Copy(frmMain.sbPrincipal.Panels[2].Text, 9,
      20)), 0 + 48 + 0);
    Exit;
  end;
end;

procedure TfrmUsuarios.btnPrimeiroClick(Sender: TObject);
begin
  if dtmUsuarios.qryUsuarios.Active then
    dtmUsuarios.qryUsuarios.First;
end;

procedure TfrmUsuarios.btnProximoClick(Sender: TObject);
begin
  if dtmUsuarios.qryUsuarios.Active then
    dtmUsuarios.qryUsuarios.Next;
end;

procedure TfrmUsuarios.btnSalvarClick(Sender: TObject);
begin
  if Trim(edtNome.Text) = '' then
  begin
    Application.MessageBox('Informe o Nome.',
      pchar('Atenção - Usuário ' + Copy(frmMain.sbPrincipal.Panels[2].Text, 9,
      20)), 0 + 48 + 0);
    edtNome.SetFocus;
    Exit;
  end;

  if Trim(edtLogin.Text) = '' then
  begin
    Application.MessageBox('Informe o Login.',
      pchar('Atenção - Usuário ' + Copy(frmMain.sbPrincipal.Panels[2].Text, 9,
      20)), 0 + 48 + 0);
    edtLogin.SetFocus;
    Exit;
  end;

  if Trim(edtEmail.Text) = '' then
  begin
    Application.MessageBox('Informe o E-mail.',
      pchar('Atenção - Usuário ' + Copy(frmMain.sbPrincipal.Panels[2].Text, 9,
      20)), 0 + 48 + 0);
    edtEmail.SetFocus;
    Exit;
  end;

  if Trim(dblkcbEscola.Text) = '' then
  begin
    Application.MessageBox('Informe a Escola.',
      pchar('Atenção - Usuário ' + Copy(frmMain.sbPrincipal.Panels[2].Text, 9,
      20)), 0 + 48 + 0);
    dblkcbEscola.SetFocus;
    Exit;
  end;

  if Trim(dblkcbTurma.Text) = '' then
  begin
    Application.MessageBox('Informe a Turma.',
      pchar('Atenção - Usuário ' + Copy(frmMain.sbPrincipal.Panels[2].Text, 9,
      20)), 0 + 48 + 0);
    dblkcbTurma.SetFocus;
    Exit;
  end;

  if (edtSenha.Text = '') then
  begin
    Application.MessageBox('Informe a Senha.',
      pchar('Atenção - Usuário ' + Copy(frmMain.sbPrincipal.Panels[2].Text, 9,
      20)), 0 + 48 + 0);
    edtSenha.SetFocus;
    Exit;
  end;

  { if ((edtSenha.Text <> '') and
    (edtSenha.Text <> dtmMain.JvVigenereCipher.EncodeString
    (dtmMain.JvVigenereCipher.Key, edtConfirmaSenha.Text))) then }

  if ((edtSenha.Text <> '') and (edtSenha.Text <> edtConfirmaSenha.Text)) then
  begin
    Application.MessageBox('Confirme a Senha.',
      pchar('Atenção - Usuário ' + Copy(frmMain.sbPrincipal.Panels[2].Text, 9,
      20)), 0 + 48 + 0);
    edtConfirmaSenha.SetFocus;
    Exit;
  end;

  try
    // Salvar novo registro
    { dtmUsuarios.qryUsuariosSENHA.AsString :=
      dtmUsuarios.JvVigenereCipher.EncodeString
      (dtmUsuarios.JvVigenereCipher.Key, edtConfirmaSenha.Text); }
    if dtmUsuarios.qryUsuarios.Active then
      dtmUsuarios.qryUsuarios.Post;

    dtmUsuarios.Transaction.CommitRetaining;
  except
    Application.MessageBox(pchar('Erro ao realizar a operação.'),
      pchar('Atenção - Usuário ' + Copy(frmMain.sbPrincipal.Panels[2].Text, 9,
      20)), 0 + 16 + 0);
    edtNome.SetFocus;
    Abort;
  end;

  Application.MessageBox('Operação realizada com sucesso.',
    pchar('Atenção - Usuário ' + Copy(frmMain.sbPrincipal.Panels[2].Text, 9, 20)
    ), 0 + 64 + 0);
end;

procedure TfrmUsuarios.btnUltimoClick(Sender: TObject);
begin
  if dtmUsuarios.qryUsuarios.Active then
    dtmUsuarios.qryUsuarios.Last;
end;

procedure TfrmUsuarios.dbcbAlunoClick(Sender: TObject);
begin
  if (dbcbAluno.Checked = true) then
  begin
    dbcbProfessor.Checked := false;
    dbcbGestor.Checked := false;
  end;
end;

procedure TfrmUsuarios.dbcbGestorClick(Sender: TObject);
begin
  if (dbcbGestor.Checked = true) then
  begin
    dbcbProfessor.Checked := false;
    dbcbAluno.Checked := false;
  end;
end;

procedure TfrmUsuarios.dbcbProfessorClick(Sender: TObject);
begin
  if (dbcbProfessor.Checked = true) then
  begin
    dbcbGestor.Checked := false;
    dbcbAluno.Checked := false;
  end;
end;

procedure TfrmUsuarios.dbGridDblClick(Sender: TObject);
begin
  btnListarClick(Self);
end;

procedure TfrmUsuarios.dbGridDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if gdSelected in State then
  begin
    with dbGrid.Canvas do
    begin
      Brush.Color := $00FFF9F2;
      FillRect(Rect);
      Font.Style := [fsBold]
    end;
  end;
  dbGrid.DefaultDrawDataCell(Rect, dbGrid.columns[DataCol].Field, State);

  // Altura da fonte no centro da célula
  if Column.Field.Alignment = taRightJustify then
  begin
    SetTextAlign((dbGrid).Canvas.Handle, TA_RIGHT);
    dbGrid.Canvas.TextRect(Rect, Rect.Right - 2, Rect.Top + 10,
      Column.Field.Text);
  end
  else if Column.Field.Alignment = taCenter then
  begin
    SetTextAlign((dbGrid).Canvas.Handle, TA_CENTER);
    dbGrid.Canvas.TextRect(Rect, (Rect.Left + Rect.Right) div 2, Rect.Top + 10,
      Column.Field.Text);
  end
  else
  begin
    SetTextAlign((dbGrid).Canvas.Handle, TA_LEFT);
    dbGrid.Canvas.TextRect(Rect, Rect.Left + 2, Rect.Top + 10,
      Column.Field.Text);
  end;
end;

procedure TfrmUsuarios.dbGridLocalizarDblClick(Sender: TObject);
begin
  dtmUsuarios.qryUsuarios.Locate('CODIGO',
    dtmUsuarios.qryBuscaUsuariosCODIGO.Value, []);

  pgcDadosCadastrais.TabIndex := 0;
  pnlCadastro.Visible := true;
  dbGrid.Visible := false;

  btnIncluir.Enabled := dtmUsuarios.qryUsuarios.State = dsBrowse;
  btnEditar.Enabled := (dtmUsuarios.qryUsuarios.State = dsBrowse) and
    (not(dtmUsuarios.qryUsuarios.IsEmpty));
  btnExcluir.Enabled := (dtmUsuarios.qryUsuarios.State = dsBrowse) and
    (not(dtmUsuarios.qryUsuarios.IsEmpty));
end;

procedure TfrmUsuarios.dbGridLocalizarDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if gdSelected in State then
  begin
    with dbGridLocalizar.Canvas do
    begin
      Brush.Color := $00FFF9F2;
      FillRect(Rect);
      Font.Style := [fsBold]
    end;
  end;
  dbGridLocalizar.DefaultDrawDataCell(Rect, dbGridLocalizar.columns[DataCol]
    .Field, State);

  // Altura da fonte no centro da célula
  if Column.Field.Alignment = taRightJustify then
  begin
    SetTextAlign((dbGridLocalizar).Canvas.Handle, TA_RIGHT);
    dbGridLocalizar.Canvas.TextRect(Rect, Rect.Right - 2, Rect.Top + 10,
      Column.Field.Text);
  end
  else if Column.Field.Alignment = taCenter then
  begin
    SetTextAlign((dbGridLocalizar).Canvas.Handle, TA_CENTER);
    dbGridLocalizar.Canvas.TextRect(Rect, (Rect.Left + Rect.Right) div 2,
      Rect.Top + 10, Column.Field.Text);
  end
  else
  begin
    SetTextAlign((dbGridLocalizar).Canvas.Handle, TA_LEFT);
    dbGridLocalizar.Canvas.TextRect(Rect, Rect.Left + 2, Rect.Top + 10,
      Column.Field.Text);
  end;
end;

procedure TfrmUsuarios.dblkcbEscolaEnter(Sender: TObject);
begin
  if not dtmUsuarios.qryEscola.Active then
    dtmUsuarios.qryEscola.Open;
end;

procedure TfrmUsuarios.dblkcbTurmaEnter(Sender: TObject);
begin
  if not dtmUsuarios.qryTurmas.Active then
    dtmUsuarios.qryTurmas.Open;
end;

procedure TfrmUsuarios.FormActivate(Sender: TObject);
begin
  THackDBGrid(dbGridLocalizar).DefaultRowHeight := 30;
  THackDBGrid(dbGrid).DefaultRowHeight := 30;
end;

procedure TfrmUsuarios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if dtmUsuarios.Transaction.Active then
    dtmUsuarios.Transaction.Rollback;

  dtmUsuarios.qryUsuarios.Close;

  Action := cafree;
  frmUsuarios := nil;
end;

procedure TfrmUsuarios.FormCreate(Sender: TObject);
begin
  THackDBGrid(dbGridLocalizar).DefaultRowHeight := 30;
  THackDBGrid(dbGrid).DefaultRowHeight := 30;
end;

procedure TfrmUsuarios.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmUsuarios.FormShow(Sender: TObject);
begin
  THackDBGrid(dbGridLocalizar).DefaultRowHeight := 30;
  THackDBGrid(dbGrid).DefaultRowHeight := 30;
end;

procedure TfrmUsuarios.tbsLocalizarShow(Sender: TObject);
begin
  if dtmUsuarios.qryBuscaUsuarios.Active then
    dtmUsuarios.qryBuscaUsuarios.Close;

  edtLocUsuarios.Clear;
  edtLocUsuarios.SetFocus;

  THackDBGrid(dbGridLocalizar).DefaultRowHeight := 30;
  THackDBGrid(dbGrid).DefaultRowHeight := 30;
end;

end.
