unit UfrmAulas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvGlowButton, Vcl.ExtCtrls, Data.DB,
  Vcl.StdCtrls, Vcl.DBCtrls, AdvEdit, AdvEdBtn, PlannerDatePicker,
  PlannerDBDatePicker, Vcl.Mask, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,
  Vcl.ExtDlgs, System.ImageList, Vcl.ImgList;

type
  TfrmAulas = class(TForm)
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
    OpenPicture: TOpenPictureDialog;
    imgDetail: TImageList;
    pgcDadosCadastrais: TPageControl;
    tbsDadosCadastrais: TTabSheet;
    pnlCadastro: TPanel;
    pnlCadastroTop: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtCodigo: TDBEdit;
    edtTitulo: TDBEdit;
    dblkcbTurma: TDBLookupComboBox;
    pnlImagem: TPanel;
    pnlCadastroLeft: TPanel;
    pnlCadastroRight: TPanel;
    tbsConteudos: TTabSheet;
    tbsLocalizar: TTabSheet;
    pnlLocalizar: TPanel;
    Label10: TLabel;
    edtLocAulas: TEdit;
    btnLocalizarUsuarios: TAdvGlowButton;
    dbGridLocalizar: TDBGrid;
    dbGrid: TDBGrid;
    pnlConteudo: TPanel;
    pnlConteudoBotoes: TPanel;
    btnIncluirConteudo: TAdvGlowButton;
    btnExcluirConteudo: TAdvGlowButton;
    btnEditarConteudo: TAdvGlowButton;
    dbgConteudo: TDBGrid;
    Panel9: TPanel;
    pnlExercicios: TPanel;
    dbgExercicios: TDBGrid;
    pnlExerciciosBotoes: TPanel;
    btnIncluirExercicio: TAdvGlowButton;
    btnExcluirExercicio: TAdvGlowButton;
    btnEditarExercicio: TAdvGlowButton;
    pnlQuestoes: TPanel;
    dbgQuestoes: TDBGrid;
    pnlQuestoesBotoes: TPanel;
    pnlExerciciosTituloGeral: TPanel;
    pnlExerciciosTituloLeft: TPanel;
    pnlExerciciosTitulo: TPanel;
    lblExercicios: TLabel;
    pnlQuestoesTituloGeral: TPanel;
    pnlQuestoesTituloLeft: TPanel;
    pnlQuestoesTitulo: TPanel;
    lblQuestoes: TLabel;
    gpbImagem: TGroupBox;
    Image: TImage;
    Panel5: TPanel;
    btnIncluirImagem: TAdvGlowButton;
    btnRemoverImagem: TAdvGlowButton;
    btnIncluirQuestao: TAdvGlowButton;
    btnEditarQuestao: TAdvGlowButton;
    btnExcluirQuestao: TAdvGlowButton;
    procedure btnIncluirImagemClick(Sender: TObject);
    procedure btnRemoverImagemClick(Sender: TObject);
    procedure dblkcbTurmaEnter(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnPrimeiroClick(Sender: TObject);
    procedure btnAnteriorClick(Sender: TObject);
    procedure btnProximoClick(Sender: TObject);
    procedure btnUltimoClick(Sender: TObject);
    procedure btnListarClick(Sender: TObject);
    procedure btnLocalizarUsuariosClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dbGridDblClick(Sender: TObject);
    procedure btnIncluirConteudoClick(Sender: TObject);
    procedure tbsConteudosShow(Sender: TObject);
    procedure btnExcluirConteudoClick(Sender: TObject);
    procedure btnEditarConteudoClick(Sender: TObject);
    procedure dbGridLocalizarDblClick(Sender: TObject);
    procedure tbsDadosCadastraisShow(Sender: TObject);
    procedure btnIncluirExercicioClick(Sender: TObject);
    procedure dbgConteudoDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbGridLocalizarDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnEditarExercicioClick(Sender: TObject);
    procedure btnExcluirExercicioClick(Sender: TObject);
    procedure dbgExerciciosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgQuestoesDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tbsLocalizarShow(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure edtLocAulasKeyPress(Sender: TObject; var Key: Char);
    procedure edtLocAulasEnter(Sender: TObject);
    procedure edtLocAulasExit(Sender: TObject);
    procedure btnIncluirQuestaoClick(Sender: TObject);
    procedure btnEditarQuestaoClick(Sender: TObject);
    procedure btnExcluirQuestaoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAulas: TfrmAulas;

implementation

{$R *.dfm}

uses UdtmAulas, UfrmMain, UfrmAulasConteudos, UdtmAulasConteudos,
  UfrmAulasExercicios, UdtmAulasExercicios, UrelAulas, UfrmAulasQuestoes,
  UdtmAulasQuestoes;

procedure TfrmAulas.btnIncluirImagemClick(Sender: TObject);
var
  b: TMemoryStream;
begin
  if dtmAulas.qryAulas.State in [dsbrowse] then
    dtmAulas.qryAulas.Edit;

  if OpenPicture.Execute then
  begin
    Image.Picture.LoadFromFile(OpenPicture.FileName);

    b := TMemoryStream.Create;
    Image.Picture.Graphic.SaveToStream(b);

    dtmAulas.qryAulasIMAGEM.LoadFromStream(b);
    b.Destroy;
  end;
end;

procedure TfrmAulas.btnIncluirQuestaoClick(Sender: TObject);
begin
  if (frmAulasQuestoes = nil) then
    Application.CreateForm(TfrmAulasQuestoes, frmAulasQuestoes);

  if dtmAulasQuestoes.Transaction.Active then
    dtmAulasQuestoes.Transaction.Rollback;
  if not dtmAulasQuestoes.Transaction.Active then
    dtmAulasQuestoes.Transaction.StartTransaction;

  if not dtmAulasQuestoes.qryQuestoes.Active then
    dtmAulasQuestoes.qryQuestoes.Open;

  dtmAulasQuestoes.qryQuestoes.Insert;
  dtmAulasQuestoes.qryQuestoesCOD_AULAS_EXERCICIOS.AsInteger :=
    dtmAulas.qryExerciciosCODIGO.AsInteger;
  dtmAulasQuestoes.qryQuestoesCORRETA.Value := 0;

  frmAulasQuestoes.edtDescricao.SetFocus;

  THackDBGrid(dbgQuestoes).DefaultRowHeight := 30;
end;

procedure TfrmAulas.btnRemoverImagemClick(Sender: TObject);
begin
  if dtmAulas.qryAulas.State in [dsbrowse] then
    dtmAulas.qryAulas.Edit;

  dtmAulas.qryAulasIMAGEM.AsVariant := null;
  Image.Picture.Assign(nil);
end;

procedure TfrmAulas.btnEditarExercicioClick(Sender: TObject);
begin
  if (frmAulasExercicios = nil) then
    Application.CreateForm(TfrmAulasExercicios, frmAulasExercicios);

  if dtmAulasExercicios.Transaction.Active then
    dtmAulasExercicios.Transaction.Rollback;
  if not dtmAulasExercicios.Transaction.Active then
    dtmAulasExercicios.Transaction.StartTransaction;

  dtmAulasExercicios.qryExercicios.Close;
  dtmAulasExercicios.qryExercicios.ParamByName('CODIGO').AsInteger :=
    dtmAulas.qryExerciciosCODIGO.AsInteger;
  dtmAulasExercicios.qryExercicios.Open;

  dtmAulasExercicios.qryExercicios.Edit;
  frmAulasExercicios.edtDescricao.SetFocus;
end;

procedure TfrmAulas.btnEditarQuestaoClick(Sender: TObject);
begin
  if (frmAulasQuestoes = nil) then
    Application.CreateForm(TfrmAulasQuestoes, frmAulasQuestoes);

  if dtmAulasQuestoes.Transaction.Active then
    dtmAulasQuestoes.Transaction.Rollback;
  if not dtmAulasQuestoes.Transaction.Active then
    dtmAulasQuestoes.Transaction.StartTransaction;

  dtmAulasQuestoes.qryQuestoes.Close;
  dtmAulasQuestoes.qryQuestoes.ParamByName('CODIGO').AsInteger :=
    dtmAulas.qryQuestoesCODIGO.AsInteger;
  dtmAulasQuestoes.qryQuestoes.Open;

  dtmAulasQuestoes.qryQuestoes.Edit;
  frmAulasQuestoes.edtDescricao.SetFocus;

  THackDBGrid(dbgQuestoes).DefaultRowHeight := 30;
end;

procedure TfrmAulas.btnAnteriorClick(Sender: TObject);
begin
  if dtmAulas.qryAulas.Active then
    dtmAulas.qryAulas.Prior;
end;

procedure TfrmAulas.btnBuscarClick(Sender: TObject);
begin
  if dtmAulas.Transaction.Active then
    dtmAulas.Transaction.Rollback;
  if not dtmAulas.Transaction.Active then
    dtmAulas.Transaction.StartTransaction;

  if not dtmAulas.qryAulas.Active then
    dtmAulas.qryAulas.Open;
  if not dtmAulas.qryTurmas.Active then
    dtmAulas.qryTurmas.Open;
end;

procedure TfrmAulas.btnCancelarClick(Sender: TObject);
begin
  if dtmAulas.qryAulas.Active then
    dtmAulas.qryAulas.Cancel;

  dtmAulas.dtsAulasStateChange(Self);
end;

procedure TfrmAulas.btnEditarClick(Sender: TObject);
begin
  pnlCadastro.Visible := true;
  dbGrid.Visible := false;

  if dtmAulas.qryAulas.Active then
    dtmAulas.qryAulas.Edit;
  edtTitulo.SetFocus;
end;

procedure TfrmAulas.btnEditarConteudoClick(Sender: TObject);
begin
  if (frmAulasConteudos = nil) then
    Application.CreateForm(TfrmAulasConteudos, frmAulasConteudos);

  if dtmAulasConteudos.Transaction.Active then
    dtmAulasConteudos.Transaction.Rollback;
  if not dtmAulasConteudos.Transaction.Active then
    dtmAulasConteudos.Transaction.StartTransaction;

  dtmAulasConteudos.qryConteudos.Close;
  dtmAulasConteudos.qryConteudos.ParamByName('CODIGO').AsInteger :=
    dtmAulas.qryConteudosCODIGO.AsInteger;
  dtmAulasConteudos.qryConteudos.Open;

  dtmAulasConteudos.qryConteudos.Edit;
  frmAulasConteudos.edtDescricao.SetFocus;
end;

procedure TfrmAulas.btnExcluirClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja realmente excluir esse registro?',
    pchar('Atenção - Usuário ' + Copy(frmMain.sbPrincipal.Panels[2].Text, 9, 20)
    ), MB_YesNo + MB_IconQuestion) = idNo then
    Abort;

  pnlCadastro.Visible := true;
  dbGrid.Visible := false;

  try
    // Excluir registro
    if dtmAulas.qryAulas.Active then
      dtmAulas.qryAulas.Delete;
    dtmAulas.Transaction.CommitRetaining;

    dtmAulas.dtsAulasStateChange(Self);
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

procedure TfrmAulas.btnExcluirConteudoClick(Sender: TObject);
begin
  if dtmAulas.TransactionExcluir.Active then
    dtmAulas.TransactionExcluir.Rollback;
  if not dtmAulas.TransactionExcluir.Active then
    dtmAulas.TransactionExcluir.StartTransaction;

  try
    dtmAulas.qryExcluirConteudo.Close;
    dtmAulas.qryExcluirConteudo.ParamByName('CODIGO').AsInteger :=
      dtmAulas.qryConteudosCODIGO.AsInteger;
    dtmAulas.qryExcluirConteudo.ExecSql;

    dtmAulas.TransactionExcluir.CommitRetaining;

    dtmAulas.qryConteudos.Close;
    dtmAulas.qryConteudos.ParamByName('COD_AULA').AsInteger :=
      dtmAulas.qryAulasCODIGO.AsInteger;
    dtmAulas.qryConteudos.Open;
  except
    Application.MessageBox(pchar('Erro ao realizar a operação.'),
      pchar('Atenção - Usuário ' + Copy(frmMain.sbPrincipal.Panels[2].Text, 9,
      20)), 0 + 16 + 0);
    edtTitulo.SetFocus;
    Abort;
  end;

  Application.MessageBox('Exclusão realizada com sucesso.',
    pchar('Atenção - Usuário ' + Copy(frmMain.sbPrincipal.Panels[2].Text, 9, 20)
    ), 0 + 64 + 0);
end;

procedure TfrmAulas.btnExcluirExercicioClick(Sender: TObject);
begin
  if dtmAulas.TransactionExcluir.Active then
    dtmAulas.TransactionExcluir.Rollback;
  if not dtmAulas.TransactionExcluir.Active then
    dtmAulas.TransactionExcluir.StartTransaction;

  try
    // Exclui Questões
    dtmAulas.qryExcluirQuestoes.Close;
    dtmAulas.qryExcluirQuestoes.ParamByName('COD_AULAS_EXERCICIOS').AsInteger :=
      dtmAulas.qryExerciciosCODIGO.AsInteger;
    dtmAulas.qryExcluirQuestoes.ExecSql;

    // Excluir Exercício
    dtmAulas.qryExcluirExercicio.Close;
    dtmAulas.qryExcluirExercicio.ParamByName('CODIGO').AsInteger :=
      dtmAulas.qryExerciciosCODIGO.AsInteger;
    dtmAulas.qryExcluirExercicio.ExecSql;

    dtmAulas.TransactionExcluir.CommitRetaining;

    // Atualiza Questões
    dtmAulas.qryQuestoes.Close;

    // Atualiza Exercícios
    dtmAulas.qryExercicios.Close;
    dtmAulas.qryExercicios.ParamByName('COD_AULA').AsInteger :=
      dtmAulas.qryAulasCODIGO.AsInteger;
    dtmAulas.qryExercicios.ParamByName('COD_CONTEUDO').AsInteger :=
      dtmAulas.qryConteudosCODIGO.AsInteger;
    dtmAulas.qryExercicios.Open;
  except
    Application.MessageBox(pchar('Erro ao realizar a operação.'),
      pchar('Atenção - Usuário ' + Copy(frmMain.sbPrincipal.Panels[2].Text, 9,
      20)), 0 + 16 + 0);
    Abort;
  end;

  Application.MessageBox('Exclusão realizada com sucesso.',
    pchar('Atenção - Usuário ' + Copy(frmMain.sbPrincipal.Panels[2].Text, 9, 20)
    ), 0 + 64 + 0);
end;

procedure TfrmAulas.btnExcluirQuestaoClick(Sender: TObject);
begin
  if dtmAulas.TransactionExcluir.Active then
    dtmAulas.TransactionExcluir.Rollback;
  if not dtmAulas.TransactionExcluir.Active then
    dtmAulas.TransactionExcluir.StartTransaction;

  try
    dtmAulas.qryExcluirQuestao.Close;
    dtmAulas.qryExcluirQuestao.ParamByName('CODIGO').AsInteger :=
      dtmAulas.qryQuestoesCODIGO.AsInteger;
    dtmAulas.qryExcluirQuestao.ExecSql;

    dtmAulas.TransactionExcluir.CommitRetaining;

    dtmAulas.qryQuestoes.Close;
    dtmAulas.qryQuestoes.ParamByName('COD_AULAS_EXERCICIO').AsInteger :=
      dtmAulas.qryExerciciosCODIGO.AsInteger;
    dtmAulas.qryQuestoes.Open;
  except
    THackDBGrid(dbgQuestoes).DefaultRowHeight := 30;

    Application.MessageBox(pchar('Erro ao realizar a operação.'),
      pchar('Atenção - Usuário ' + Copy(frmMain.sbPrincipal.Panels[2].Text, 9,
      20)), 0 + 16 + 0);
    Abort;
  end;

  THackDBGrid(dbgQuestoes).DefaultRowHeight := 30;

  Application.MessageBox('Exclusão realizada com sucesso.',
    pchar('Atenção - Usuário ' + Copy(frmMain.sbPrincipal.Panels[2].Text, 9, 20)
    ), 0 + 64 + 0);
end;

procedure TfrmAulas.btnImprimirClick(Sender: TObject);
begin
  if dtmAulas.qryAulas.IsEmpty then
  begin
    Application.MessageBox('Não há registro(s) para imprimir.',
      pchar('Atenção - Usuário ' + Copy(frmMain.sbPrincipal.Panels[2].Text, 9,
      20)), 0 + 48 + 0);
    Exit;
  end;

  relAulas := nil;
  Application.CreateForm(TrelAulas, relAulas);
  relAulas.qrAulas.Preview;

  dtmAulas.qryAulas.First;
end;

procedure TfrmAulas.btnIncluirClick(Sender: TObject);
begin
  btnBuscarClick(Self);

  pnlCadastro.Visible := true;
  dbGrid.Visible := false;

  dtmAulas.qryAulas.Insert;
  edtTitulo.SetFocus;
end;

procedure TfrmAulas.btnIncluirConteudoClick(Sender: TObject);
begin
  if (frmAulasConteudos = nil) then
    Application.CreateForm(TfrmAulasConteudos, frmAulasConteudos);

  if dtmAulasConteudos.Transaction.Active then
    dtmAulasConteudos.Transaction.Rollback;
  if not dtmAulasConteudos.Transaction.Active then
    dtmAulasConteudos.Transaction.StartTransaction;

  if not dtmAulasConteudos.qryConteudos.Active then
    dtmAulasConteudos.qryConteudos.Open;

  dtmAulasConteudos.qryConteudos.Insert;
  dtmAulasConteudos.qryConteudosCOD_AULA.AsInteger :=
    dtmAulas.qryAulasCODIGO.AsInteger;
  frmAulasConteudos.edtDescricao.SetFocus;
end;

procedure TfrmAulas.btnIncluirExercicioClick(Sender: TObject);
begin
  if (frmAulasExercicios = nil) then
    Application.CreateForm(TfrmAulasExercicios, frmAulasExercicios);

  if dtmAulasExercicios.Transaction.Active then
    dtmAulasExercicios.Transaction.Rollback;
  if not dtmAulasExercicios.Transaction.Active then
    dtmAulasExercicios.Transaction.StartTransaction;

  if not dtmAulasExercicios.qryExercicios.Active then
    dtmAulasExercicios.qryExercicios.Open;

  dtmAulasExercicios.qryExercicios.Insert;
  dtmAulasExercicios.qryExerciciosCOD_AULA.AsInteger :=
    dtmAulas.qryAulasCODIGO.AsInteger;
  dtmAulasExercicios.qryExerciciosCOD_CONTEUDO.AsInteger :=
    dtmAulas.qryConteudosCODIGO.AsInteger;

  frmAulasExercicios.edtDescricao.SetFocus;
end;

procedure TfrmAulas.btnListarClick(Sender: TObject);
begin
  pgcDadosCadastrais.ActivePage := tbsDadosCadastrais;

  if (pnlCadastro.Visible = true) then
  begin
    pnlCadastro.Visible := false;
    dbGrid.Visible := true;

    btnEditar.Enabled := false;
    btnIncluir.Enabled := false;

    if dtmAulas.qryAulas.Active then
      dtmAulas.qryTurmas.First;

    THackDBGrid(dbGrid).DefaultRowHeight := 30;
    THackDBGrid(dbgConteudo).DefaultRowHeight := 30;
    THackDBGrid(dbgExercicios).DefaultRowHeight := 30;
    THackDBGrid(dbgQuestoes).DefaultRowHeight := 30;
    THackDBGrid(dbGridLocalizar).DefaultRowHeight := 30;
  end
  else
  begin
    btnIncluir.Enabled := dtmAulas.qryTurmas.State = dsbrowse;
    btnEditar.Enabled := (dtmAulas.qryTurmas.State = dsbrowse) and
      (not(dtmAulas.qryTurmas.IsEmpty));

    pnlCadastro.Visible := true;
    dbGrid.Visible := false;
  end;
end;

procedure TfrmAulas.btnLocalizarUsuariosClick(Sender: TObject);
begin
  dtmAulas.qryBuscaAulas.Close;
  dtmAulas.qryBuscaAulas.SQL.Clear;

  dtmAulas.qryBuscaAulas.SQL.Add('SELECT AULAS.CODIGO, AULAS.COD_TURMA,');
  dtmAulas.qryBuscaAulas.SQL.Add
    ('TURMAS.DESCRICAO, AULAS.TITULO, AULAS.IMAGEM');
  dtmAulas.qryBuscaAulas.SQL.Add('FROM AULAS');
  dtmAulas.qryBuscaAulas.SQL.Add
    ('INNER JOIN TURMAS ON (AULAS.COD_TURMA = TURMAS.CODIGO)');

  if (edtLocAulas.Text <> '') then
  begin
    dtmAulas.qryBuscaAulas.SQL.Add('WHERE AULAS.TITULO LIKE :TITULO');
    dtmAulas.qryBuscaAulas.Params[0].DataType := ftString;
    dtmAulas.qryBuscaAulas.Params[0].AsString := edtLocAulas.Text + '%';
  end;

  dtmAulas.qryBuscaAulas.SQL.Add('ORDER BY AULAS.CODIGO');
  dtmAulas.qryBuscaAulas.Open;

  THackDBGrid(dbGridLocalizar).DefaultRowHeight := 30;
  THackDBGrid(dbGrid).DefaultRowHeight := 30;

  if dtmAulas.qryBuscaAulas.IsEmpty then
  begin
    Application.MessageBox('Não há registro(s) para esta filtragem.',
      pchar('Atenção - Usuário ' + Copy(frmMain.sbPrincipal.Panels[2].Text, 9,
      20)), 0 + 48 + 0);
    Exit;
  end;
end;

procedure TfrmAulas.btnPrimeiroClick(Sender: TObject);
begin
  if dtmAulas.qryAulas.Active then
    dtmAulas.qryAulas.First;
end;

procedure TfrmAulas.btnProximoClick(Sender: TObject);
begin
  if dtmAulas.qryAulas.Active then
    dtmAulas.qryAulas.Next;
end;

procedure TfrmAulas.btnSalvarClick(Sender: TObject);
begin
  if Trim(edtTitulo.Text) = '' then
  begin
    Application.MessageBox('Informe o Título.',
      pchar('Atenção - Usuário ' + Copy(frmMain.sbPrincipal.Panels[2].Text, 9,
      20)), 0 + 48 + 0);
    edtTitulo.SetFocus;
    Exit;
  end;

  try
    // Salvar novo registro
    if dtmAulas.qryAulas.Active then
      dtmAulas.qryAulas.Post;

    dtmAulas.Transaction.Commit;
  except
    Application.MessageBox(pchar('Erro ao realizar a operação.'),
      pchar('Atenção - Usuário ' + Copy(frmMain.sbPrincipal.Panels[2].Text, 9,
      20)), 0 + 16 + 0);
    edtTitulo.SetFocus;
    Abort;
  end;

  Application.MessageBox('Operação realizada com sucesso.',
    pchar('Atenção - Usuário ' + Copy(frmMain.sbPrincipal.Panels[2].Text, 9, 20)
    ), 0 + 64 + 0);
end;

procedure TfrmAulas.btnUltimoClick(Sender: TObject);
begin
  if dtmAulas.qryAulas.Active then
    dtmAulas.qryAulas.Last;
end;

procedure TfrmAulas.dbgConteudoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if not dtmAulas.qryConteudos.IsEmpty then
  begin

    if gdSelected in State then
    begin
      with dbgConteudo.Canvas do
      begin
        Brush.Color := $00FFF9F2;
        FillRect(Rect);
        Font.Style := [fsBold]
      end;
    end;
    dbgConteudo.DefaultDrawDataCell(Rect, dbgConteudo.columns[DataCol]
      .Field, State);

    // Altura da fonte no centro da célula
    if Column.Field.Alignment = taRightJustify then
    begin
      SetTextAlign((dbgConteudo).Canvas.Handle, TA_RIGHT);
      dbgConteudo.Canvas.TextRect(Rect, Rect.Right - 2, Rect.Top + 10,
        Column.Field.Text);
    end
    else if Column.Field.Alignment = taCenter then
    begin
      SetTextAlign((dbgConteudo).Canvas.Handle, TA_CENTER);
      dbgConteudo.Canvas.TextRect(Rect, (Rect.Left + Rect.Right) div 2,
        Rect.Top + 10, Column.Field.Text);
    end
    else
    begin
      SetTextAlign((dbgConteudo).Canvas.Handle, TA_LEFT);
      dbgConteudo.Canvas.TextRect(Rect, Rect.Left + 2, Rect.Top + 10,
        Column.Field.Text);
    end;

    if (Column.Field = dtmAulas.qryBuscaAulasIMAGEM) then
    begin
      dbgConteudo.Canvas.FillRect(Rect);
      if (dtmAulas.qryBuscaAulasIMAGEM.AsVariant <> null) then
        imgDetail.Draw(dbgConteudo.Canvas, Rect.Left + 20, Rect.Top + 10, 0);
    end;

    if (Column.Field = dtmAulas.qryConteudosIMAGEM) then
    begin
      dbgConteudo.Canvas.FillRect(Rect);
      if (dtmAulas.qryConteudosIMAGEM.AsVariant <> null) then
        imgDetail.Draw(dbgConteudo.Canvas, Rect.Left + 20, Rect.Top + 10, 0);
    end;

    if (Column.Field = dtmAulas.qryConteudosVIDEO) then
    begin
      dbgConteudo.Canvas.FillRect(Rect);
      if (dtmAulas.qryConteudosVIDEO.AsVariant <> null) then
        imgDetail.Draw(dbgConteudo.Canvas, Rect.Left + 20, Rect.Top + 10, 1);
    end;

    if (Column.Field = dtmAulas.qryConteudosAUDIO) then
    begin
      dbgConteudo.Canvas.FillRect(Rect);
      if (dtmAulas.qryConteudosAUDIO.AsVariant <> null) then
        imgDetail.Draw(dbgConteudo.Canvas, Rect.Left + 20, Rect.Top + 10, 2);
    end;

    if (Column.Field = dtmAulas.qryConteudosRESUMO_IMAGEM) then
    begin
      dbgConteudo.Canvas.FillRect(Rect);
      if (dtmAulas.qryConteudosRESUMO_IMAGEM.AsVariant <> null) then
        imgDetail.Draw(dbgConteudo.Canvas, Rect.Left + 35, Rect.Top + 10, 0);
    end;
  end;
end;

procedure TfrmAulas.dbgExerciciosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if not dtmAulas.qryExercicios.IsEmpty then
  begin
    if gdSelected in State then
    begin
      with dbgExercicios.Canvas do
      begin
        Brush.Color := $00FFF9F2;
        FillRect(Rect);
        Font.Style := [fsBold]
      end;
    end;
    dbgExercicios.DefaultDrawDataCell(Rect, dbgExercicios.columns[DataCol]
      .Field, State);

    // Altura da fonte no centro da célula
    if Column.Field.Alignment = taRightJustify then
    begin
      SetTextAlign((dbgExercicios).Canvas.Handle, TA_RIGHT);
      dbgExercicios.Canvas.TextRect(Rect, Rect.Right - 2, Rect.Top + 10,
        Column.Field.Text);
    end
    else if Column.Field.Alignment = taCenter then
    begin
      SetTextAlign((dbgExercicios).Canvas.Handle, TA_CENTER);
      dbgExercicios.Canvas.TextRect(Rect, (Rect.Left + Rect.Right) div 2,
        Rect.Top + 10, Column.Field.Text);
    end
    else
    begin
      SetTextAlign((dbgExercicios).Canvas.Handle, TA_LEFT);
      dbgExercicios.Canvas.TextRect(Rect, Rect.Left + 2, Rect.Top + 10,
        Column.Field.Text);
    end;

    if (Column.Field = dtmAulas.qryExerciciosIMAGEM) then
    begin
      dbgExercicios.Canvas.FillRect(Rect);
      if (dtmAulas.qryExerciciosIMAGEM.AsVariant <> null) then
        imgDetail.Draw(dbgExercicios.Canvas, Rect.Left + 20, Rect.Top + 10, 0);
    end;

    if (Column.Field = dtmAulas.qryExerciciosVIDEO) then
    begin
      dbgExercicios.Canvas.FillRect(Rect);
      if (dtmAulas.qryExerciciosVIDEO.AsVariant <> null) then
        imgDetail.Draw(dbgExercicios.Canvas, Rect.Left + 20, Rect.Top + 10, 1);
    end;
  end;
end;

procedure TfrmAulas.dbgQuestoesDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if not dtmAulas.qryQuestoes.IsEmpty then
  begin
    if gdSelected in State then
    begin
      with dbgQuestoes.Canvas do
      begin
        Brush.Color := $00FFF9F2;
        FillRect(Rect);
        Font.Style := [fsBold]
      end;
    end;
    dbgQuestoes.DefaultDrawDataCell(Rect, dbgQuestoes.columns[DataCol]
      .Field, State);

    // Altura da fonte no centro da célula
    if Column.Field.Alignment = taRightJustify then
    begin
      SetTextAlign((dbgQuestoes).Canvas.Handle, TA_RIGHT);
      dbgQuestoes.Canvas.TextRect(Rect, Rect.Right - 2, Rect.Top + 10,
        Column.Field.Text);
    end
    else if Column.Field.Alignment = taCenter then
    begin
      SetTextAlign((dbgQuestoes).Canvas.Handle, TA_CENTER);
      dbgQuestoes.Canvas.TextRect(Rect, (Rect.Left + Rect.Right) div 2,
        Rect.Top + 10, Column.Field.Text);
    end
    else
    begin
      SetTextAlign((dbgQuestoes).Canvas.Handle, TA_LEFT);
      dbgQuestoes.Canvas.TextRect(Rect, Rect.Left + 2, Rect.Top + 10,
        Column.Field.Text);
    end;

    if (Column.Field = dtmAulas.qryQuestoesIMAGEM) then
    begin
      dbgQuestoes.Canvas.FillRect(Rect);
      if (dtmAulas.qryQuestoesIMAGEM.AsVariant <> null) then
        imgDetail.Draw(dbgQuestoes.Canvas, Rect.Left + 20, Rect.Top + 10, 0);
    end;

    if (Column.Field = dtmAulas.qryQuestoesCORRETA) then
    begin
      dbgQuestoes.Canvas.FillRect(Rect);
      if (dtmAulas.qryQuestoesCORRETA.Value = 1) then
        imgDetail.Draw(dbgQuestoes.Canvas, Rect.Left + 20, Rect.Top + 10, 3);
    end;
  end;
end;

procedure TfrmAulas.dbGridDblClick(Sender: TObject);
begin
  btnListarClick(Self);
end;

procedure TfrmAulas.dbGridDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if not dtmAulas.qryAulas.IsEmpty then
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
      dbGrid.Canvas.TextRect(Rect, (Rect.Left + Rect.Right) div 2,
        Rect.Top + 10, Column.Field.Text);
    end
    else
    begin
      SetTextAlign((dbGrid).Canvas.Handle, TA_LEFT);
      dbGrid.Canvas.TextRect(Rect, Rect.Left + 2, Rect.Top + 10,
        Column.Field.Text);
    end;

    if (Column.Field = dtmAulas.qryAulasIMAGEM) then
    begin
      dbGrid.Canvas.FillRect(Rect);
      if (dtmAulas.qryAulasIMAGEM.AsVariant <> null) then
        imgDetail.Draw(dbGrid.Canvas, Rect.Left + 20, Rect.Top + 1, 0);
    end;
  end;
end;

procedure TfrmAulas.dbGridLocalizarDblClick(Sender: TObject);
begin
  dtmAulas.qryAulas.Locate('CODIGO', dtmAulas.qryBuscaAulasCODIGO.Value, []);

  pgcDadosCadastrais.TabIndex := 0;
  pnlCadastro.Visible := true;
  dbGrid.Visible := false;

  btnIncluir.Enabled := dtmAulas.qryAulas.State = dsbrowse;
  btnEditar.Enabled := (dtmAulas.qryAulas.State = dsbrowse) and
    (not(dtmAulas.qryAulas.IsEmpty));
  btnExcluir.Enabled := (dtmAulas.qryAulas.State = dsbrowse) and
    (not(dtmAulas.qryAulas.IsEmpty));
end;

procedure TfrmAulas.dbGridLocalizarDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if not dtmAulas.qryBuscaAulas.IsEmpty then
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

    if (Column.Field = dtmAulas.qryBuscaAulasIMAGEM) then
    begin
      dbGridLocalizar.Canvas.FillRect(Rect);
      if (dtmAulas.qryBuscaAulasIMAGEM.AsVariant <> null) then
        imgDetail.Draw(dbGridLocalizar.Canvas, Rect.Left + 20,
          Rect.Top + 10, 0);
    end;
  end;
end;

procedure TfrmAulas.dblkcbTurmaEnter(Sender: TObject);
begin
  if not dtmAulas.qryTurmas.Active then
    dtmAulas.qryTurmas.Open;
end;

procedure TfrmAulas.edtLocAulasEnter(Sender: TObject);
begin
  frmAulas.KeyPreview := false;
end;

procedure TfrmAulas.edtLocAulasExit(Sender: TObject);
begin
  frmAulas.KeyPreview := true;
end;

procedure TfrmAulas.edtLocAulasKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
    btnLocalizarUsuariosClick(Self);
end;

procedure TfrmAulas.FormActivate(Sender: TObject);
begin
  THackDBGrid(dbGrid).DefaultRowHeight := 30;
  THackDBGrid(dbgConteudo).DefaultRowHeight := 30;
  THackDBGrid(dbgExercicios).DefaultRowHeight := 30;
  THackDBGrid(dbgQuestoes).DefaultRowHeight := 30;
  THackDBGrid(dbGridLocalizar).DefaultRowHeight := 30;
end;

procedure TfrmAulas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if dtmAulas.Transaction.Active then
    dtmAulas.Transaction.Rollback;

  dtmAulas.qryBuscaAulas.Close;
  dtmAulas.qryAulas.Close;

  Action := cafree;
  frmAulas := nil;
end;

procedure TfrmAulas.FormCreate(Sender: TObject);
begin
  THackDBGrid(dbGrid).DefaultRowHeight := 30;
  THackDBGrid(dbgConteudo).DefaultRowHeight := 30;
  THackDBGrid(dbgExercicios).DefaultRowHeight := 30;
  THackDBGrid(dbgQuestoes).DefaultRowHeight := 30;
  THackDBGrid(dbGridLocalizar).DefaultRowHeight := 30;
end;

procedure TfrmAulas.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmAulas.FormShow(Sender: TObject);
begin
  THackDBGrid(dbGrid).DefaultRowHeight := 30;
  THackDBGrid(dbgConteudo).DefaultRowHeight := 30;
  THackDBGrid(dbgExercicios).DefaultRowHeight := 30;
  THackDBGrid(dbgQuestoes).DefaultRowHeight := 30;
  THackDBGrid(dbGridLocalizar).DefaultRowHeight := 30;

  frmAulas.Height := frmMain.Image1.Height - 20;
  frmAulas.Width := frmMain.Image1.Width - 20;
  frmAulas.Left := 10;
  frmAulas.Top := 10;
end;

procedure TfrmAulas.tbsConteudosShow(Sender: TObject);
begin
  pnlTop.Enabled := false;

  THackDBGrid(dbGrid).DefaultRowHeight := 30;
  THackDBGrid(dbgConteudo).DefaultRowHeight := 30;
  THackDBGrid(dbgExercicios).DefaultRowHeight := 30;
  THackDBGrid(dbgQuestoes).DefaultRowHeight := 30;
  THackDBGrid(dbGridLocalizar).DefaultRowHeight := 30;
end;

procedure TfrmAulas.tbsDadosCadastraisShow(Sender: TObject);
begin
  pnlTop.Enabled := true;
end;

procedure TfrmAulas.tbsLocalizarShow(Sender: TObject);
begin
  THackDBGrid(dbGrid).DefaultRowHeight := 30;
  THackDBGrid(dbgConteudo).DefaultRowHeight := 30;
  THackDBGrid(dbgExercicios).DefaultRowHeight := 30;
  THackDBGrid(dbgQuestoes).DefaultRowHeight := 30;
  THackDBGrid(dbGridLocalizar).DefaultRowHeight := 30;
end;

end.
