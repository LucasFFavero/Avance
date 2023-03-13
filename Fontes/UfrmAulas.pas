unit UfrmAulas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvGlowButton, Vcl.ExtCtrls, Data.DB,
  Vcl.StdCtrls, Vcl.DBCtrls, AdvEdit, AdvEdBtn, PlannerDatePicker,
  PlannerDBDatePicker, Vcl.Mask, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,
  Vcl.ExtDlgs, System.ImageList, Vcl.ImgList, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinsDefaultPainters, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, dxDateRanges, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxTextEdit,
  cxImageComboBox, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinTheBezier, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxImageList;

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
    pnlConteudo: TPanel;
    pnlConteudoBotoes: TPanel;
    btnIncluirConteudo: TAdvGlowButton;
    btnExcluirConteudo: TAdvGlowButton;
    btnEditarConteudo: TAdvGlowButton;
    Panel9: TPanel;
    pnlExercicios: TPanel;
    pnlExerciciosBotoes: TPanel;
    btnIncluirExercicio: TAdvGlowButton;
    btnExcluirExercicio: TAdvGlowButton;
    btnEditarExercicio: TAdvGlowButton;
    pnlQuestoes: TPanel;
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
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn;
    cxGrid1DBTableView1IMAGEM: TcxGridDBColumn;
    cxGrid1DBTableView1RESUMO: TcxGridDBColumn;
    cxStyleRepository: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    cxStyle10: TcxStyle;
    cxStyle11: TcxStyle;
    cxStyle12: TcxStyle;
    cxStyle13: TcxStyle;
    cxStyle14: TcxStyle;
    cxStyle15: TcxStyle;
    cxStyle16: TcxStyle;
    cxStyle17: TcxStyle;
    cxStyle18: TcxStyle;
    cxStyle19: TcxStyle;
    cxStyle20: TcxStyle;
    cxStyle21: TcxStyle;
    cxStyle22: TcxStyle;
    cxStyle23: TcxStyle;
    cxStyle24: TcxStyle;
    cxStyle25: TcxStyle;
    cxStyle26: TcxStyle;
    cxStyle27: TcxStyle;
    cxStyle28: TcxStyle;
    cxStyleAcessibilidade: TcxStyle;
    CorFiltro: TcxStyle;
    FilterRowText: TcxStyle;
    FilterBox: TcxStyle;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    cxImageList1: TcxImageList;
    cxGrid4: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    cxGrid5: TcxGrid;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
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
    procedure btnIncluirConteudoClick(Sender: TObject);
    procedure tbsConteudosShow(Sender: TObject);
    procedure btnExcluirConteudoClick(Sender: TObject);
    procedure btnEditarConteudoClick(Sender: TObject);
    procedure tbsDadosCadastraisShow(Sender: TObject);
    procedure btnIncluirExercicioClick(Sender: TObject);
    procedure btnEditarExercicioClick(Sender: TObject);
    procedure btnExcluirExercicioClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure edtLocAulasKeyPress(Sender: TObject; var Key: Char);
    procedure edtLocAulasEnter(Sender: TObject);
    procedure edtLocAulasExit(Sender: TObject);
    procedure btnIncluirQuestaoClick(Sender: TObject);
    procedure btnEditarQuestaoClick(Sender: TObject);
    procedure btnExcluirQuestaoClick(Sender: TObject);
    procedure cxGridDBTableView3DblClick(Sender: TObject);
    procedure cxGridDBTableView4DblClick(Sender: TObject);
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
  dtmAulasQuestoes.qryQuestoesCOD_AULAS_EXERCICIOS.AsInteger := dtmAulas.qryExerciciosCODIGO.AsInteger;
  dtmAulasQuestoes.qryQuestoesCORRETA.Value := 0;

  frmAulasQuestoes.edtDescricao.SetFocus;
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
  dtmAulasExercicios.qryExercicios.ParamByName('CODIGO').AsInteger := dtmAulas.qryExerciciosCODIGO.AsInteger;
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
  dtmAulasQuestoes.qryQuestoes.ParamByName('CODIGO').AsInteger := dtmAulas.qryQuestoesCODIGO.AsInteger;
  dtmAulasQuestoes.qryQuestoes.Open;

  dtmAulasQuestoes.qryQuestoes.Edit;
  frmAulasQuestoes.edtDescricao.SetFocus;
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
  cxGrid5.Visible := false;

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
  dtmAulasConteudos.qryConteudos.ParamByName('CODIGO').AsInteger := dtmAulas.qryConteudosCODIGO.AsInteger;
  dtmAulasConteudos.qryConteudos.Open;

  dtmAulasConteudos.qryConteudos.Edit;
  frmAulasConteudos.edtDescricao.SetFocus;
end;

procedure TfrmAulas.btnExcluirClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja realmente excluir esse registro?', pchar('Atenção - Usuário ' + Copy(frmMain.sbPrincipal.Panels[2].Text, 9, 20)), MB_YesNo + MB_IconQuestion) = idNo then
    Abort;

  pnlCadastro.Visible := true;
  cxGrid5.Visible := false;

  try
    // Excluir registro
    if dtmAulas.qryAulas.Active then
      dtmAulas.qryAulas.Delete;
    dtmAulas.Transaction.CommitRetaining;

    dtmAulas.dtsAulasStateChange(Self);
  except
    Application.MessageBox('Erro ao exluir o registro, verifique se ele não está em uso.', pchar('Atenção - Usuário ' + Copy(frmMain.sbPrincipal.Panels[2].Text, 9, 20)), 0 + 16 + 0);
    Exit;
  end;

  Application.MessageBox('Exclusão realizada com sucesso.', pchar('Atenção - Usuário ' + Copy(frmMain.sbPrincipal.Panels[2].Text, 9, 20)), 0 + 64 + 0);
end;

procedure TfrmAulas.btnExcluirConteudoClick(Sender: TObject);
begin
  if dtmAulas.TransactionExcluir.Active then
    dtmAulas.TransactionExcluir.Rollback;
  if not dtmAulas.TransactionExcluir.Active then
    dtmAulas.TransactionExcluir.StartTransaction;

  try
    dtmAulas.qryExcluirConteudo.Close;
    dtmAulas.qryExcluirConteudo.ParamByName('CODIGO').AsInteger := dtmAulas.qryConteudosCODIGO.AsInteger;
    dtmAulas.qryExcluirConteudo.ExecSql;

    dtmAulas.TransactionExcluir.CommitRetaining;

    dtmAulas.qryConteudos.Close;
    dtmAulas.qryConteudos.ParamByName('COD_AULA').AsInteger := dtmAulas.qryAulasCODIGO.AsInteger;
    dtmAulas.qryConteudos.Open;
  except
    Application.MessageBox(pchar('Erro ao realizar a operação.'), pchar('Atenção - Usuário ' + Copy(frmMain.sbPrincipal.Panels[2].Text, 9, 20)), 0 + 16 + 0);
    edtTitulo.SetFocus;
    Abort;
  end;

  Application.MessageBox('Exclusão realizada com sucesso.', pchar('Atenção - Usuário ' + Copy(frmMain.sbPrincipal.Panels[2].Text, 9, 20)), 0 + 64 + 0);
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
    dtmAulas.qryExcluirQuestoes.ParamByName('COD_AULAS_EXERCICIOS').AsInteger := dtmAulas.qryExerciciosCODIGO.AsInteger;
    dtmAulas.qryExcluirQuestoes.ExecSql;

    // Excluir Exercício
    dtmAulas.qryExcluirExercicio.Close;
    dtmAulas.qryExcluirExercicio.ParamByName('CODIGO').AsInteger := dtmAulas.qryExerciciosCODIGO.AsInteger;
    dtmAulas.qryExcluirExercicio.ExecSql;

    dtmAulas.TransactionExcluir.CommitRetaining;

    // Atualiza Questões
    dtmAulas.qryQuestoes.Close;

    // Atualiza Exercícios
    dtmAulas.qryExercicios.Close;
    dtmAulas.qryExercicios.ParamByName('COD_AULA').AsInteger := dtmAulas.qryAulasCODIGO.AsInteger;
    dtmAulas.qryExercicios.ParamByName('COD_CONTEUDO').AsInteger := dtmAulas.qryConteudosCODIGO.AsInteger;
    dtmAulas.qryExercicios.Open;
  except
    Application.MessageBox(pchar('Erro ao realizar a operação.'), pchar('Atenção - Usuário ' + Copy(frmMain.sbPrincipal.Panels[2].Text, 9, 20)), 0 + 16 + 0);
    Abort;
  end;

  Application.MessageBox('Exclusão realizada com sucesso.', pchar('Atenção - Usuário ' + Copy(frmMain.sbPrincipal.Panels[2].Text, 9, 20)), 0 + 64 + 0);
end;

procedure TfrmAulas.btnExcluirQuestaoClick(Sender: TObject);
begin
  if dtmAulas.TransactionExcluir.Active then
    dtmAulas.TransactionExcluir.Rollback;
  if not dtmAulas.TransactionExcluir.Active then
    dtmAulas.TransactionExcluir.StartTransaction;

  try
    dtmAulas.qryExcluirQuestao.Close;
    dtmAulas.qryExcluirQuestao.ParamByName('CODIGO').AsInteger := dtmAulas.qryQuestoesCODIGO.AsInteger;
    dtmAulas.qryExcluirQuestao.ExecSql;

    dtmAulas.TransactionExcluir.CommitRetaining;

    dtmAulas.qryQuestoes.Close;
    dtmAulas.qryQuestoes.ParamByName('COD_AULAS_EXERCICIO').AsInteger := dtmAulas.qryExerciciosCODIGO.AsInteger;
    dtmAulas.qryQuestoes.Open;
  except

    Application.MessageBox(pchar('Erro ao realizar a operação.'), pchar('Atenção - Usuário ' + Copy(frmMain.sbPrincipal.Panels[2].Text, 9, 20)), 0 + 16 + 0);
    Abort;
  end;

  Application.MessageBox('Exclusão realizada com sucesso.', pchar('Atenção - Usuário ' + Copy(frmMain.sbPrincipal.Panels[2].Text, 9, 20)), 0 + 64 + 0);
end;

procedure TfrmAulas.btnImprimirClick(Sender: TObject);
begin
  if dtmAulas.qryAulas.IsEmpty then
  begin
    Application.MessageBox('Não há registro(s) para imprimir.', pchar('Atenção - Usuário ' + Copy(frmMain.sbPrincipal.Panels[2].Text, 9, 20)), 0 + 48 + 0);
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
  cxGrid5.Visible := false;

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
  dtmAulasConteudos.qryConteudosCOD_AULA.AsInteger := dtmAulas.qryAulasCODIGO.AsInteger;
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
  dtmAulasExercicios.qryExerciciosCOD_AULA.AsInteger := dtmAulas.qryAulasCODIGO.AsInteger;
  dtmAulasExercicios.qryExerciciosCOD_CONTEUDO.AsInteger := dtmAulas.qryConteudosCODIGO.AsInteger;

  frmAulasExercicios.edtDescricao.SetFocus;
end;

procedure TfrmAulas.btnListarClick(Sender: TObject);
begin
  pgcDadosCadastrais.ActivePage := tbsDadosCadastrais;

  if (pnlCadastro.Visible = true) then
  begin
    pnlCadastro.Visible := false;
    cxGrid5.Visible := true;

    btnEditar.Enabled := false;
    btnIncluir.Enabled := false;

    if dtmAulas.qryAulas.Active then
      dtmAulas.qryTurmas.First;
  end
  else
  begin
    btnIncluir.Enabled := dtmAulas.qryTurmas.State = dsbrowse;
    btnEditar.Enabled := (dtmAulas.qryTurmas.State = dsbrowse) and (not(dtmAulas.qryTurmas.IsEmpty));

    pnlCadastro.Visible := true;
    cxGrid5.Visible := false;
  end;
end;

procedure TfrmAulas.btnLocalizarUsuariosClick(Sender: TObject);
begin
  dtmAulas.qryBuscaAulas.Close;
  dtmAulas.qryBuscaAulas.SQL.Clear;

  dtmAulas.qryBuscaAulas.SQL.Add('SELECT AULAS.CODIGO, AULAS.COD_TURMA,');
  dtmAulas.qryBuscaAulas.SQL.Add('TURMAS.DESCRICAO, AULAS.TITULO, AULAS.IMAGEM');
  dtmAulas.qryBuscaAulas.SQL.Add('FROM AULAS');
  dtmAulas.qryBuscaAulas.SQL.Add('INNER JOIN TURMAS ON (AULAS.COD_TURMA = TURMAS.CODIGO)');

  if (edtLocAulas.Text <> '') then
  begin
    dtmAulas.qryBuscaAulas.SQL.Add('WHERE AULAS.TITULO LIKE :TITULO');
    dtmAulas.qryBuscaAulas.Params[0].DataType := ftString;
    dtmAulas.qryBuscaAulas.Params[0].AsString := edtLocAulas.Text + '%';
  end;

  dtmAulas.qryBuscaAulas.SQL.Add('ORDER BY AULAS.CODIGO');
  dtmAulas.qryBuscaAulas.Open;

  if dtmAulas.qryBuscaAulas.IsEmpty then
  begin
    Application.MessageBox('Não há registro(s) para esta filtragem.', pchar('Atenção - Usuário ' + Copy(frmMain.sbPrincipal.Panels[2].Text, 9, 20)), 0 + 48 + 0);
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
    Application.MessageBox('Informe o Título.', pchar('Atenção - Usuário ' + Copy(frmMain.sbPrincipal.Panels[2].Text, 9, 20)), 0 + 48 + 0);
    edtTitulo.SetFocus;
    Exit;
  end;

  try
    // Salvar novo registro
    if dtmAulas.qryAulas.Active then
      dtmAulas.qryAulas.Post;

    dtmAulas.Transaction.Commit;
  except
    Application.MessageBox(pchar('Erro ao realizar a operação.'), pchar('Atenção - Usuário ' + Copy(frmMain.sbPrincipal.Panels[2].Text, 9, 20)), 0 + 16 + 0);
    edtTitulo.SetFocus;
    Abort;
  end;

  Application.MessageBox('Operação realizada com sucesso.', pchar('Atenção - Usuário ' + Copy(frmMain.sbPrincipal.Panels[2].Text, 9, 20)), 0 + 64 + 0);
end;

procedure TfrmAulas.btnUltimoClick(Sender: TObject);
begin
  if dtmAulas.qryAulas.Active then
    dtmAulas.qryAulas.Last;
end;

procedure TfrmAulas.cxGridDBTableView3DblClick(Sender: TObject);
begin
  dtmAulas.qryAulas.Locate('CODIGO', dtmAulas.qryBuscaAulasCODIGO.Value, []);

  pgcDadosCadastrais.TabIndex := 0;
  pnlCadastro.Visible := true;
  cxGrid5.Visible := false;

  btnIncluir.Enabled := dtmAulas.qryAulas.State = dsbrowse;
  btnEditar.Enabled := (dtmAulas.qryAulas.State = dsbrowse) and (not(dtmAulas.qryAulas.IsEmpty));
  btnExcluir.Enabled := (dtmAulas.qryAulas.State = dsbrowse) and (not(dtmAulas.qryAulas.IsEmpty));
end;

procedure TfrmAulas.cxGridDBTableView4DblClick(Sender: TObject);
begin
  btnListarClick(Self);
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

procedure TfrmAulas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if dtmAulas.Transaction.Active then
    dtmAulas.Transaction.Rollback;

  dtmAulas.qryBuscaAulas.Close;
  dtmAulas.qryAulas.Close;

  Action := cafree;
  frmAulas := nil;
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

  frmAulas.Height := frmMain.Image1.Height - 10;
  frmAulas.Width := frmMain.Image1.Width - 10;
  frmAulas.Left := 5;
  frmAulas.Top := 5;
end;

procedure TfrmAulas.tbsConteudosShow(Sender: TObject);
begin
  pnlTop.Enabled := false;
end;

procedure TfrmAulas.tbsDadosCadastraisShow(Sender: TObject);
begin
  pnlTop.Enabled := true;
end;

end.
