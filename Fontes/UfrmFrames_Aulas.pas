unit UfrmFrames_Aulas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxCustomData, Data.DB, cxDBData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxImage, cxMemo,
  cxGridLevel, dxLayoutContainer, cxGridViewLayoutContainer, cxGridLayoutView,
  cxGridCustomTableView, cxGridDBLayoutView, cxClasses, cxGridCustomView,
  cxGridCustomLayoutView, cxGrid, Datasnap.DBClient, Vcl.StdCtrls, cxTextEdit,
  cxDBLookupComboBox, cxImageComboBox, Vcl.ExtCtrls, dxGDIPlusClasses,
  Vcl.ComCtrls, dxDateRanges, cxCheckBox, cxDropDownEdit, cxCalendar,
  cxMaskEdit, cxGridTableView, cxGridDBTableView, cxHyperLinkEdit, cxProgressBar,
  cxGridCardView, System.ImageList, Vcl.ImgList, cxImageList, Vcl.Buttons,
  AdvGlowButton, Vcl.OleCtrls, WMPLib_TLB;

type
  TfrmFrames_Aulas = class(TForm)
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
    Image1: TImage;
    dtsAulas: TDataSource;
    cldsAulas: TClientDataSet;
    cldsAulasDESCRICAO: TStringField;
    cldsAulasIMAGEM: TBlobField;
    PageControl1: TPageControl;
    tbsAulas: TTabSheet;
    tbsExercicios: TTabSheet;
    tbsConteudo: TTabSheet;
    cxGridEmployees: TcxGrid;
    gvEmployees: TcxGridDBLayoutView;
    gvEmployeesItemPicture: TcxGridDBLayoutViewItem;
    gvEmployeesItemFullName: TcxGridDBLayoutViewItem;
    gvEmployeesGroup_Root: TdxLayoutGroup;
    cxGridLayoutItem1: TcxGridLayoutItem;
    gvEmployeesLayoutItem2: TcxGridLayoutItem;
    gvStores: TcxGridDBLayoutView;
    gvStoresAddress_City: TcxGridDBLayoutViewItem;
    gvStoresAddress_Full: TcxGridDBLayoutViewItem;
    gvStoresCrestId: TcxGridDBLayoutViewItem;
    gvStoresGroup_Root: TdxLayoutGroup;
    gvStoresLayoutItem4: TcxGridLayoutItem;
    gvStoresLayoutItem16: TcxGridLayoutItem;
    cxGridLayoutItem2: TcxGridLayoutItem;
    cxGridEmployeesLevel1: TcxGridLevel;
    pnlTopo: TPanel;
    cldsConteudo: TClientDataSet;
    dtsConteudo: TDataSource;
    pnlTitulo: TPanel;
    lblAula: TLabel;
    cldsConteudoGAUGE: TIntegerField;
    cldsConteudoDESCRICAO_CONTEUDO: TStringField;
    cldsConteudoDESCRICAO_EXERCICIO: TStringField;
    cldsConteudoCOD_AULA: TIntegerField;
    cldsConteudoCOD_EXERCICIO: TIntegerField;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle29: TcxStyle;
    cxStyle30: TcxStyle;
    cxStyle31: TcxStyle;
    cxStyle32: TcxStyle;
    cxStyle33: TcxStyle;
    cxStyle34: TcxStyle;
    cxStyle35: TcxStyle;
    cxStyle36: TcxStyle;
    cxStyle37: TcxStyle;
    cxStyle38: TcxStyle;
    cxStyle39: TcxStyle;
    cxStyle40: TcxStyle;
    cxStyle41: TcxStyle;
    cxStyle42: TcxStyle;
    cxStyle43: TcxStyle;
    cxStyle44: TcxStyle;
    cxStyle45: TcxStyle;
    cxStyle46: TcxStyle;
    cxStyle47: TcxStyle;
    cxStyle48: TcxStyle;
    cxStyle49: TcxStyle;
    cxStyle50: TcxStyle;
    cxStyle51: TcxStyle;
    cxStyle52: TcxStyle;
    cxStyle53: TcxStyle;
    cxStyle54: TcxStyle;
    cxStyle55: TcxStyle;
    cxStyle56: TcxStyle;
    cxStyle57: TcxStyle;
    cxStyle58: TcxStyle;
    cxStyle59: TcxStyle;
    cxStyle60: TcxStyle;
    gvEmployeesLayoutItem1: TcxGridLayoutItem;
    gvEmployeesItem1: TcxGridDBLayoutViewItem;
    cldsAulasCOD_AULA: TIntegerField;
    cldsConteudoDESCRICAO_AGRUPADA: TStringField;
    cldsConteudoGAUGE_INI: TIntegerField;
    cldsConteudoGAUGE_FINAL: TIntegerField;
    cldsConteudoCOD_CONTEUDO: TIntegerField;
    Button2: TButton;
    Button3: TButton;
    StyleRepository: TcxStyleRepository;
    cxStyle61: TcxStyle;
    cxStyle62: TcxStyle;
    cxStyle63: TcxStyle;
    cxStyle64: TcxStyle;
    cxStyle65: TcxStyle;
    cxStyle66: TcxStyle;
    cxStyle67: TcxStyle;
    cxStyle68: TcxStyle;
    cxStyle69: TcxStyle;
    cxStyle70: TcxStyle;
    cxStyle71: TcxStyle;
    cxStyle72: TcxStyle;
    cxStyle73: TcxStyle;
    cxStyle74: TcxStyle;
    cxStyle75: TcxStyle;
    cxStyle76: TcxStyle;
    cxStyle77: TcxStyle;
    cxStyle78: TcxStyle;
    cxStyle79: TcxStyle;
    cxStyle80: TcxStyle;
    cxStyle81: TcxStyle;
    cxStyle82: TcxStyle;
    cxStyle83: TcxStyle;
    cxStyle84: TcxStyle;
    styleSelection: TcxStyle;
    styleCardHeader: TcxStyle;
    styleCardBorder: TcxStyle;
    styleBackground: TcxStyle;
    styleCategoryRow: TcxStyle;
    stylePrice: TcxStyle;
    GridTableViewStyleSheetDevExpress: TcxGridTableViewStyleSheet;
    GridCardViewStyleSheetDevExpress: TcxGridCardViewStyleSheet;
    CardsStyleSheet: TcxGridCardViewStyleSheet;
    cldsConteudoConteudo_Exercicio: TStringField;
    cxImageList1: TcxImageList;
    cxImageList2: TcxImageList;
    btnVoltar: TAdvGlowButton;
    pnlGrid: TPanel;
    cxGrid: TcxGrid;
    cxGridDBTableView: TcxGridDBTableView;
    cxgridDBTableViewGAUGE: TcxGridDBColumn;
    cxgridDBTableViewDESCRICAO_AGRUPADA: TcxGridDBColumn;
    cxgridDBTableViewColumn1: TcxGridDBColumn;
    cxgridDBTableViewDESCRICAO_CONTEUDO: TcxGridDBColumn;
    cxgridDBTableViewCod_Conteudo: TcxGridDBColumn;
    cxgridDBTableViewDESCRICAO_EXERCICIO: TcxGridDBColumn;
    cxgridDBTableViewCOD_AULA: TcxGridDBColumn;
    cxgridDBTableViewCOD_EXERCICIO: TcxGridDBColumn;
    cxGridLevel: TcxGridLevel;
    pnlCONTEUDO: TPanel;
    pnlConteudo_Imagem: TPanel;
    Panel2: TPanel;
    lblResumoImagem: TLabel;
    pnlImage: TPanel;
    ImageConteudo: TImage;
    pnlConteudo_Video: TPanel;
    pnlVideo: TPanel;
    WindowsMediaPlayer: TWindowsMediaPlayer;
    Panel1: TPanel;
    lblResumoVideo: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure gvEmployeesCellClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure tbsConteudoShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure cxgridDBTableViewCellClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure cxgridDBTableViewMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure tbsAulasShow(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFrames_Aulas: TfrmFrames_Aulas;

implementation

{$R *.dfm}

uses UfrmMain, UdtmFrames_Aulas;

procedure TfrmFrames_Aulas.btnVoltarClick(Sender: TObject);
begin
  if pnlGrid.Visible = false then
  begin
    pnlCONTEUDO.Visible := false;
    pnlGrid.Visible := True;
    Exit;
  end;

  if tbsExercicios.Showing then
  begin
    tbsConteudo.Show;
    Exit;
  end;

  if tbsConteudo.Showing then
  begin
    tbsAulas.Show;
    Exit;
  end;
end;

procedure TfrmFrames_Aulas.Button2Click(Sender: TObject);
begin
  cldsAulas.SaveToFile('C:\AMD\XML_AULAS.XML');
end;

procedure TfrmFrames_Aulas.Button3Click(Sender: TObject);
begin
  cldsConteudo.SaveToFile('C:\AMD\XML_CONTEUDO.XML');
end;

procedure TfrmFrames_Aulas.cxgridDBTableViewCellClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  // Aqui vai buscar o Conteudo ou o Exercicio
  if cldsConteudoConteudo_Exercicio.AsString = 'Conteudo' then
  begin
    dtmFrames_Aulas.qryBuscaConteudoClicado.Close;
    dtmFrames_Aulas.qryBuscaConteudoClicado.ParamByName('COD_CONTEUDO').AsInteger := cldsConteudoCOD_CONTEUDO.AsInteger;
    dtmFrames_Aulas.qryBuscaConteudoClicado.Open;

    /// SEGUE AQUI
    if not dtmFrames_Aulas.qryBuscaConteudoClicado.IsEmpty then
    begin
      pnlGrid.Visible := false;
      pnlCONTEUDO.Visible := True;

    end;

  end
  else
  begin
    dtmFrames_Aulas.qryBuscaExercicioClicado.Close;
    dtmFrames_Aulas.qryBuscaExercicioClicado.ParamByName('COD_CONTEUDO').AsInteger := cldsConteudoCOD_CONTEUDO.AsInteger;
    dtmFrames_Aulas.qryBuscaExercicioClicado.Open;

    /// SEGUE AQUI
  end;
end;

procedure TfrmFrames_Aulas.cxgridDBTableViewMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
var
  AGridSite: TcxGridSite;
  AGridView: TcxGridTableView;
  AHitTest: TcxCustomGridHitTest;

  ht: TcxCustomGridHitTest;
  CheckBox: String;
begin
  AGridSite := Sender as TcxGridSite;
  AGridView := AGridSite.GridView as TcxGridTableView;
  AHitTest := AGridView.GetHitTest(X, Y);

  AGridSite.Cursor := crDefault;

  if (AHitTest is TcxGridRecordCellHitTest) and (((AHitTest as TcxGridRecordCellHitTest).Item = cxgridDBTableViewDESCRICAO_CONTEUDO)) then
    AGridSite.Cursor := crHandPoint;
end;

procedure TfrmFrames_Aulas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
  frmFrames_Aulas := nil;
end;

procedure TfrmFrames_Aulas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  // Usar "ENTER" como "TAB", pular de campo com enter
  if (Key = #13) then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;

  // Fechar form usando "ESC"
  if (Key = #27) then
  begin
    if pnlGrid.Visible = false then
    begin
      pnlCONTEUDO.Visible := false;
      pnlGrid.Visible := True;
      Exit;
    end;

    if tbsExercicios.Showing then
    begin
      tbsConteudo.Show;
      Exit;
    end;

    if tbsConteudo.Showing then
    begin
      tbsAulas.Show;
      Exit;
    end;
  end;
end;

procedure TfrmFrames_Aulas.FormShow(Sender: TObject);
var
  Count: Integer;
begin
  cxgridDBTableViewCod_Conteudo.Visible := false;
  cxgridDBTableViewDESCRICAO_EXERCICIO.Visible := false;
  cxgridDBTableViewCOD_AULA.Visible := false;
  cxgridDBTableViewCOD_EXERCICIO.Visible := false;
  cxGridDBTableView.OptionsView.Header := false;
  cxGridDBTableView.OptionsView.GroupByBox := false;

  dtmFrames_Aulas.qryBuscaAulas.Close;
  dtmFrames_Aulas.qryBuscaAulas.ParamByName('COD_TURMA').AsInteger := frmMain.IntAnoClicado;
  dtmFrames_Aulas.qryBuscaAulas.Open;

  cldsAulas.EmptyDataSet;

  dtmFrames_Aulas.qryBuscaAulas.first;
  while not dtmFrames_Aulas.qryBuscaAulas.eof do
  begin
    cldsAulas.Append;
    cldsAulasCOD_AULA.AsInteger := dtmFrames_Aulas.qryBuscaAulasCODIGO.AsInteger;
    cldsAulasDESCRICAO.AsString := dtmFrames_Aulas.qryBuscaAulasTITULO.AsString;
    cldsAulasIMAGEM.value := dtmFrames_Aulas.qryBuscaAulasIMAGEM.value;
    cldsAulas.Post;

    dtmFrames_Aulas.qryBuscaAulas.next;
  end;

  Count := Round(cldsAulas.RecordCount / 2);

  // gvEmployees.OptionsView.MaxColumnCount := Count;
  gvEmployees.OptionsView.MaxColumnCount := 4;
  gvEmployees.Controller.FocusedItemIndex := 0;
  dtmFrames_Aulas.qryBuscaAulas.first;

  frmFrames_Aulas.Height := frmMain.Image1.Height - 10;
  frmFrames_Aulas.Width := frmMain.Image1.Width - 10;
  frmFrames_Aulas.Left := 5;
  frmFrames_Aulas.Top := 5;

  cxgridDBTableViewDESCRICAO_CONTEUDO.Width := cxGridEmployees.Width - 276;
end;

procedure TfrmFrames_Aulas.gvEmployeesCellClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  cldsConteudo.EmptyDataSet;

  dtmFrames_Aulas.qryBuscaConteudo.Close;
  dtmFrames_Aulas.qryBuscaConteudo.ParamByName('COD_AULA').AsInteger := cldsAulasCOD_AULA.AsInteger;
  dtmFrames_Aulas.qryBuscaConteudo.Open;

  try
    cxGridDBTableView.DataController.DataSource := nil;

    dtmFrames_Aulas.qryBuscaConteudo.first;
    while not dtmFrames_Aulas.qryBuscaConteudo.eof do
    begin
      cldsConteudo.Append;
      cldsConteudoGAUGE.AsInteger := 20;
      cldsConteudoCOD_CONTEUDO.AsInteger := dtmFrames_Aulas.qryBuscaConteudoCODIGO.AsInteger;
      cldsConteudoCOD_AULA.AsInteger := cldsAulasCOD_AULA.AsInteger;
      cldsConteudoConteudo_Exercicio.AsString := 'Conteudo';
      cldsConteudoDESCRICAO_CONTEUDO.AsString := dtmFrames_Aulas.qryBuscaConteudoDESCRICAO.AsString;
      cldsConteudoCOD_EXERCICIO.AsVariant := null;
      cldsConteudoDESCRICAO_EXERCICIO.AsVariant := null;
      cldsConteudoDESCRICAO_AGRUPADA.AsVariant := dtmFrames_Aulas.qryBuscaConteudoDESCRICAO.AsString;
      cldsConteudo.Post;

      dtmFrames_Aulas.qryBuscaExercicio.Close;
      dtmFrames_Aulas.qryBuscaExercicio.ParamByName('COD_CONTEUDO').AsInteger := dtmFrames_Aulas.qryBuscaConteudoCODIGO.AsInteger;
      dtmFrames_Aulas.qryBuscaExercicio.Open;

      dtmFrames_Aulas.qryBuscaExercicio.first;
      while not dtmFrames_Aulas.qryBuscaExercicio.eof do
      begin
        cldsConteudo.Append;
        cldsConteudoGAUGE.AsInteger := 80;
        cldsConteudoConteudo_Exercicio.AsString := 'Exercicios';
        cldsConteudoCOD_CONTEUDO.AsInteger := dtmFrames_Aulas.qryBuscaConteudoCODIGO.AsInteger;
        cldsConteudoCOD_AULA.AsInteger := cldsAulasCOD_AULA.AsInteger;
        cldsConteudoDESCRICAO_CONTEUDO.AsString := dtmFrames_Aulas.qryBuscaExercicioDESCRICAO.AsString;
        cldsConteudoCOD_EXERCICIO.AsVariant := dtmFrames_Aulas.qryBuscaExercicioCODIGO.AsInteger;
        cldsConteudoDESCRICAO_EXERCICIO.AsString := dtmFrames_Aulas.qryBuscaExercicioDESCRICAO.AsString;
        cldsConteudoDESCRICAO_AGRUPADA.AsVariant := dtmFrames_Aulas.qryBuscaConteudoDESCRICAO.AsString;
        cldsConteudo.Post;

        dtmFrames_Aulas.qryBuscaExercicio.next;
      end;

      dtmFrames_Aulas.qryBuscaConteudo.next;
    end;

  finally
    cldsConteudo.first;
    cxGridDBTableView.DataController.DataSource := dtsConteudo;

    lblAula.Caption := cldsAulasDESCRICAO.AsString;
    Application.ProcessMessages;
    tbsConteudo.Show;

    cxGridDBTableView.DataController.Groups.FullExpand;
  end;

end;

procedure TfrmFrames_Aulas.tbsAulasShow(Sender: TObject);
begin
  btnVoltar.Visible := false;
  Application.ProcessMessages;
end;

procedure TfrmFrames_Aulas.tbsConteudoShow(Sender: TObject);
begin
  btnVoltar.Visible := True;
  Application.ProcessMessages;
end;

end.
