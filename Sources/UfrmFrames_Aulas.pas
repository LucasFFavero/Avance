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
  Vcl.ComCtrls, cxCheckBox, cxDropDownEdit, cxCalendar,
  cxMaskEdit, cxGridTableView, cxGridDBTableView, cxHyperLinkEdit, cxProgressBar,
  cxGridCardView, System.ImageList, Vcl.ImgList, cxImageList, Vcl.Buttons,
  AdvGlowButton, Vcl.OleCtrls, WMPLib_TLB, dxDateRanges;

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
    cxgridDBTableViewImagem: TcxGridDBColumn;
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
    pnlConteudo_Video_Audio: TPanel;
    pnlVideo: TPanel;
    WindowsMediaPlayer: TWindowsMediaPlayer;
    Panel1: TPanel;
    lblResumoVideoAudio: TLabel;
    pnlFundo: TPanel;
    Panel3: TPanel;
    lblTituloDaExercicios: TLabel;
    pnlVideoImagem: TPanel;
    pnlVideoExercicio: TPanel;
    WindowsMediaPlayer1: TWindowsMediaPlayer;
    pnlImagemExercicio: TPanel;
    imgQuestoes: TImage;
    pnlQuestoesFundo: TPanel;
    Panel4: TPanel;
    lblTituloQuestao: TLabel;
    Panel5: TPanel;
    Button1: TButton;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxImageAtivo: TcxImageList;
    cxGridDBTableView1DESCRICAO: TcxGridDBColumn;
    cxGridDBTableView1CORRETA: TcxGridDBColumn;
    Button5: TButton;
    TimerVideoAudioConteudo: TTimer;
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
    procedure Button1Click(Sender: TObject);
    procedure cxGridDBTableView1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure Button5Click(Sender: TObject);
    procedure cxgridDBTableViewCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure TimerVideoAudioConteudoTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Cronometro: Integer;
    Caption: String;
  end;

var
  frmFrames_Aulas: TfrmFrames_Aulas;

implementation

{$R *.dfm}

uses UfrmMain, UdtmFrames_Aulas;

Procedure SleepNoFreeze(PtimeOut: Integer);
var
  LIni: Cardinal;
  Lpass: Integer;
Begin
  LIni := GetTickCount;
  Lpass := 0;
  Application.ProcessMessages;
  Repeat
    inc(Lpass);
    Sleep(1);
    if (Lpass > 10) then
    Begin
      Lpass := 0;
      Application.ProcessMessages;
    end;
  Until (GetTickCount - LIni) >= Cardinal(PtimeOut);
End;

procedure TfrmFrames_Aulas.btnVoltarClick(Sender: TObject);
begin
  WindowsMediaPlayer.Controls.Stop;
  TimerVideoAudioConteudo.Enabled := False;

  if pnlGrid.Visible = False then
  begin
    pnlCONTEUDO.Visible := False;
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

procedure TfrmFrames_Aulas.Button1Click(Sender: TObject);
begin
  // Vai gravar na usuarios_exercicios
end;

procedure TfrmFrames_Aulas.Button2Click(Sender: TObject);
begin
  cldsAulas.SaveToFile('C:\AMD\XML_AULAS.XML');
end;

procedure TfrmFrames_Aulas.Button3Click(Sender: TObject);
begin
  cldsConteudo.SaveToFile('C:\AMD\XML_CONTEUDO.XML');
end;

procedure TfrmFrames_Aulas.Button5Click(Sender: TObject);
begin
  lblResumoVideoAudio.Caption := lblResumoVideoAudio.Caption + ' | Tempo do v�deo: ' + WindowsMediaPlayer.Controls.currentPositionString + ' de ' + WindowsMediaPlayer.currentMedia.durationString;
end;

procedure TfrmFrames_Aulas.cxGridDBTableView1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
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

  if (AHitTest is TcxGridRecordCellHitTest) and (((AHitTest as TcxGridRecordCellHitTest).Item = cxGridDBTableView1CORRETA)) then
    AGridSite.Cursor := crHandPoint;
end;

procedure TfrmFrames_Aulas.cxgridDBTableViewCellClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var
  strCaminho, Imagem_Audio_Video: String;
begin
  // Aqui vai buscar o Conteudo ou o Exercicio
  // if (cxGridDBTableView.Columns[cxgridDBTableViewDESCRICAO_CONTEUDO.Index].Focused = True) then
  // begin

  if (cxGridDBTableView.Columns[cxgridDBTableViewGAUGE.Index].Focused = True) then
    Exit;

  if (cxGridDBTableView.Columns[cxgridDBTableViewImagem.Index].Focused = True) then
    Exit;

  if cldsConteudoConteudo_Exercicio.AsString = 'Conteudo' then
  begin
    dtmFrames_Aulas.qryBuscaConteudoClicado.Close;
    dtmFrames_Aulas.qryBuscaConteudoClicado.ParamByName('COD_CONTEUDO').AsInteger := cldsConteudoCOD_CONTEUDO.AsInteger;
    dtmFrames_Aulas.qryBuscaConteudoClicado.Open;

    /// SEGUE AQUI
    if not dtmFrames_Aulas.qryBuscaConteudoClicado.IsEmpty then
    begin
      pnlGrid.Visible := False;
      pnlCONTEUDO.Align := alClient;
      pnlCONTEUDO.Visible := True;
      Application.ProcessMessages;

      pnlConteudo_Imagem.Visible := False;
      pnlConteudo_Video_Audio.Visible := False;

      // � Imagem
      if (dtmFrames_Aulas.qryBuscaConteudoClicadoIMAGEM_1.AsInteger = 1) then
      begin
        pnlConteudo_Imagem.Visible := True;
        pnlConteudo_Imagem.Align := alClient;

        strCaminho := ExtractFilePath(paramstr(0)) + 'Imagens\' + Trim(Copy(frmMain.sbPrincipal.Panels[2].Text, 9, 20));
        if not DirectoryExists(strCaminho) then
          ForceDirectories(strCaminho);

        lblResumoImagem.Caption := dtmFrames_Aulas.qryBuscaConteudoClicadoRESUMO.AsString;

        // Verifica onde vai gravar o arquivo e o nome dele.
        Imagem_Audio_Video := strCaminho + '\IMAGEM_' + Copy(TimeToStr(Time), 1, 2) + Copy(TimeToStr(Time), 4, 2) + Copy(TimeToStr(Time), 7, 2) + '.jpg';

        // Salva o arquivo do banco de dados para o micro com o nome acima (Imagem_Audio_Video)
        dtmFrames_Aulas.qryBuscaConteudoClicadoIMAGEM.SaveToFile(Imagem_Audio_Video);

        // Abre o arquivo no com a imagem
        ImageConteudo.Picture.LoadFromFile(Imagem_Audio_Video);
        Application.ProcessMessages;
      end // � V�deo
      else if (dtmFrames_Aulas.qryBuscaConteudoClicadoVIDEO_1.AsInteger = 1) then
      begin
        pnlConteudo_Video_Audio.Visible := True;
        pnlConteudo_Video_Audio.Align := alClient;

        lblResumoVideoAudio.Caption := dtmFrames_Aulas.qryBuscaConteudoClicadoRESUMO.AsString;

        strCaminho := ExtractFilePath(paramstr(0)) + 'Videos\' + Trim(Copy(frmMain.sbPrincipal.Panels[2].Text, 9, 20));
        if not DirectoryExists(strCaminho) then
          ForceDirectories(strCaminho);

        lblResumoImagem.Caption := dtmFrames_Aulas.qryBuscaConteudoClicadoRESUMO.AsString;

        // Verifica onde vai gravar o arquivo e o nome dele.
        Imagem_Audio_Video := strCaminho + '\VIDEO_' + Copy(TimeToStr(Time), 1, 2) + Copy(TimeToStr(Time), 4, 2) + Copy(TimeToStr(Time), 7, 2) + '.avi';

        // Salva o arquivo do banco de dados para o micro com o nome acima (Imagem_Audio_Video)
        dtmFrames_Aulas.qryBuscaConteudoClicadoVIDEO.SaveToFile(Imagem_Audio_Video);

        // Abre o arquivo no com o v�deo
        WindowsMediaPlayer.URL := Imagem_Audio_Video;
        WindowsMediaPlayer.Enabled := False;

        Caption := '';
        Cronometro := 0;
        TimerVideoAudioConteudo.Enabled := True;
        SleepNoFreeze(1000);

        lblResumoVideoAudio.Caption := dtmFrames_Aulas.qryBuscaConteudoClicadoRESUMO.AsString + ' | Tempo do v�deo: ' + WindowsMediaPlayer.currentMedia.durationString;

      end // � �udio
      else if (dtmFrames_Aulas.qryBuscaConteudoClicadoAUDIO_1.AsInteger = 1) then
      begin
        pnlConteudo_Video_Audio.Visible := True;
        pnlConteudo_Video_Audio.Align := alClient;

        lblResumoVideoAudio.Caption := dtmFrames_Aulas.qryBuscaConteudoClicadoRESUMO.AsString;

        strCaminho := ExtractFilePath(paramstr(0)) + 'Audio\' + Trim(Copy(frmMain.sbPrincipal.Panels[2].Text, 9, 20));
        if not DirectoryExists(strCaminho) then
          ForceDirectories(strCaminho);

        lblResumoImagem.Caption := dtmFrames_Aulas.qryBuscaConteudoClicadoRESUMO.AsString;

        // Verifica onde vai gravar o arquivo e o nome dele.
        Imagem_Audio_Video := strCaminho + '\AUDIO_' + Copy(TimeToStr(Time), 1, 2) + Copy(TimeToStr(Time), 4, 2) + Copy(TimeToStr(Time), 7, 2) + '.avi';

        // Salva o arquivo do banco de dados para o micro com o nome acima (Imagem_Audio_Video)
        dtmFrames_Aulas.qryBuscaConteudoClicadoAUDIO.SaveToFile(Imagem_Audio_Video);

        // Abre o arquivo no com o v�deo
        WindowsMediaPlayer.URL := Imagem_Audio_Video;
        WindowsMediaPlayer.Controls.play;
        Application.ProcessMessages;
      end;

    end;

  end
  else
  begin
    // Busca o Exerc�cio
    dtmFrames_Aulas.qryBuscaExercicioClicado.Close;
    dtmFrames_Aulas.qryBuscaExercicioClicado.ParamByName('COD_EXERCICIO').AsInteger := cldsConteudoCOD_EXERCICIO.AsInteger;
    dtmFrames_Aulas.qryBuscaExercicioClicado.Open;

    lblTituloDaExercicios.Caption := dtmFrames_Aulas.qryBuscaExercicioClicadoDESCRICAO.AsString;

    // Busca as Quest�es
    dtmFrames_Aulas.qryBuscaExerciciosQuestoes.Close;
    dtmFrames_Aulas.qryBuscaExerciciosQuestoes.ParamByName('COD_EXERCICIO').AsInteger := cldsConteudoCOD_EXERCICIO.AsInteger;
    dtmFrames_Aulas.qryBuscaExerciciosQuestoes.Open;

    dtmFrames_Aulas.qryBuscaExerciciosQuestoes.First;

    lblTituloQuestao.Caption := dtmFrames_Aulas.qryBuscaExerciciosQuestoesDESCRICAO.AsString;

    // � Imagem
    if (dtmFrames_Aulas.qryBuscaExercicioClicadoIMAGEM_1.AsInteger = 1) then
    begin
      pnlImagemExercicio.Visible := True;
      pnlImagemExercicio.Align := alClient;
      pnlVideoExercicio.Visible := False;

      strCaminho := ExtractFilePath(paramstr(0)) + 'Imagens\' + Trim(Copy(frmMain.sbPrincipal.Panels[2].Text, 9, 20));
      if not DirectoryExists(strCaminho) then
        ForceDirectories(strCaminho);

      // Verifica onde vai gravar o arquivo e o nome dele.
      Imagem_Audio_Video := strCaminho + '\IMAGEM_' + Copy(TimeToStr(Time), 1, 2) + Copy(TimeToStr(Time), 4, 2) + Copy(TimeToStr(Time), 7, 2) + '.jpg';

      // Salva o arquivo do banco de dados para o micro com o nome acima (Imagem_Audio_Video)
      dtmFrames_Aulas.qryBuscaExercicioClicadoIMAGEM.SaveToFile(Imagem_Audio_Video);

      // Abre o arquivo no com a imagem
      imgQuestoes.Picture.LoadFromFile(Imagem_Audio_Video);
      Application.ProcessMessages;

    end // � V�deo
    else if (dtmFrames_Aulas.qryBuscaExercicioClicadoVIDEO_1.AsInteger = 1) then
    begin
      pnlVideoExercicio.Visible := True;
      pnlVideoExercicio.Align := alClient;
      pnlImagemExercicio.Visible := False;

      strCaminho := ExtractFilePath(paramstr(0)) + 'Videos\' + Trim(Copy(frmMain.sbPrincipal.Panels[2].Text, 9, 20));
      if not DirectoryExists(strCaminho) then
        ForceDirectories(strCaminho);

      lblResumoImagem.Caption := dtmFrames_Aulas.qryBuscaConteudoClicadoRESUMO.AsString;

      // Verifica onde vai gravar o arquivo e o nome dele.
      Imagem_Audio_Video := strCaminho + '\VIDEO_' + Copy(TimeToStr(Time), 1, 2) + Copy(TimeToStr(Time), 4, 2) + Copy(TimeToStr(Time), 7, 2) + '.avi';

      // Salva o arquivo do banco de dados para o micro com o nome acima (Imagem_Audio_Video)
      dtmFrames_Aulas.qryBuscaConteudoClicadoVIDEO.SaveToFile(Imagem_Audio_Video);

      // Abre o arquivo no com o v�deo
      WindowsMediaPlayer.URL := Imagem_Audio_Video;
      WindowsMediaPlayer.Controls.play;
      Application.ProcessMessages;

    end;

    tbsExercicios.Show;
    // end;
  end;
end;

procedure TfrmFrames_Aulas.cxgridDBTableViewCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.GridRecord.Selected then
    // ACanvas.Brush.Color := $00FFF9F2;
    ACanvas.Brush.Color := $00FFE0BB;

  // Cor da c�lula focada
  if AViewInfo.Selected then
  begin
    ACanvas.Brush.Color := $00FFE0BB;
    ACanvas.Font.Color := $004E4E4E;
    ACanvas.Font.Style := ACanvas.Font.Style + [fsBold];
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

    WindowsMediaPlayer.Controls.Stop;

    if pnlGrid.Visible = False then
    begin
      pnlCONTEUDO.Visible := False;
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
  strCaminho: String;
begin
  // Cria diretorio dos videos
  strCaminho := ExtractFilePath(paramstr(0)) + 'Videos\' + Trim(Copy(frmMain.sbPrincipal.Panels[2].Text, 9, 20));
  if not DirectoryExists(strCaminho) then
    ForceDirectories(strCaminho);

  // Cria diretorio dos Audios
  strCaminho := ExtractFilePath(paramstr(0)) + 'Audios\' + Trim(Copy(frmMain.sbPrincipal.Panels[2].Text, 9, 20));
  if not DirectoryExists(strCaminho) then
    ForceDirectories(strCaminho);

  // Cria diretorio das Imagens
  strCaminho := ExtractFilePath(paramstr(0)) + 'Imagens\' + Trim(Copy(frmMain.sbPrincipal.Panels[2].Text, 9, 20));
  if not DirectoryExists(strCaminho) then
    ForceDirectories(strCaminho);

  tbsAulas.TabVisible := False;
  tbsConteudo.TabVisible := False;
  tbsExercicios.TabVisible := False;

  cxgridDBTableViewCod_Conteudo.Visible := False;
  cxgridDBTableViewDESCRICAO_EXERCICIO.Visible := False;
  cxgridDBTableViewCOD_AULA.Visible := False;
  cxgridDBTableViewCOD_EXERCICIO.Visible := False;
  cxGridDBTableView.OptionsView.Header := False;
  cxGridDBTableView.OptionsView.GroupByBox := False;

  dtmFrames_Aulas.qryBuscaAulas.Close;
  dtmFrames_Aulas.qryBuscaAulas.ParamByName('COD_TURMA').AsInteger := frmMain.IntAnoClicado;
  dtmFrames_Aulas.qryBuscaAulas.Open;

  cldsAulas.EmptyDataSet;

  dtmFrames_Aulas.qryBuscaAulas.First;
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
  dtmFrames_Aulas.qryBuscaAulas.First;

  frmFrames_Aulas.Height := frmMain.Image1.Height - 10;
  frmFrames_Aulas.Width := frmMain.Image1.Width - 10;
  frmFrames_Aulas.Left := 5;
  frmFrames_Aulas.Top := 5;

  PageControl1.ActivePage := tbsAulas;
  tbsAulas.Show;

  cxgridDBTableViewDESCRICAO_CONTEUDO.Width := cxGridEmployees.Width - 250;
end;

procedure TfrmFrames_Aulas.gvEmployeesCellClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  cldsConteudo.EmptyDataSet;

  dtmFrames_Aulas.qryBuscaConteudo.Close;
  dtmFrames_Aulas.qryBuscaConteudo.ParamByName('COD_AULA').AsInteger := cldsAulasCOD_AULA.AsInteger;
  dtmFrames_Aulas.qryBuscaConteudo.Open;

  try
    cxGridDBTableView.DataController.DataSource := nil;

    dtmFrames_Aulas.qryBuscaConteudo.First;
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
      dtmFrames_Aulas.qryBuscaConteudo.next;
    end;

    dtmFrames_Aulas.qryBuscaConteudo.First;
    while not dtmFrames_Aulas.qryBuscaConteudo.eof do
    begin
      dtmFrames_Aulas.qryBuscaExercicio.Close;
      dtmFrames_Aulas.qryBuscaExercicio.ParamByName('COD_CONTEUDO').AsInteger := dtmFrames_Aulas.qryBuscaConteudoCODIGO.AsInteger;
      dtmFrames_Aulas.qryBuscaExercicio.Open;

      dtmFrames_Aulas.qryBuscaExercicio.First;
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
    cldsConteudo.First;
    cxGridDBTableView.DataController.DataSource := dtsConteudo;

    lblAula.Caption := cldsAulasDESCRICAO.AsString;
    Application.ProcessMessages;
    tbsConteudo.Show;
    cxGridDBTableView.DataController.Groups.FullCollapse;
  end;

end;

procedure TfrmFrames_Aulas.tbsAulasShow(Sender: TObject);
begin
  btnVoltar.Visible := False;
  Application.ProcessMessages;
end;

procedure TfrmFrames_Aulas.tbsConteudoShow(Sender: TObject);
begin
  btnVoltar.Visible := True;
  Application.ProcessMessages;
end;

procedure TfrmFrames_Aulas.TimerVideoAudioConteudoTimer(Sender: TObject);
var
  Duracao: Double;
  Duracao1: Double;
begin
  if (Caption = '') then
    Caption := lblResumoVideoAudio.Caption;

  inc(Cronometro, 1);

  Duracao := Round(WindowsMediaPlayer.currentMedia.duration);

  if (Cronometro >= Duracao) then
  begin
    TimerVideoAudioConteudo.Enabled := False;
    showMessage('Cronometro finalizado');
  end;
  Application.ProcessMessages;
end;

end.
