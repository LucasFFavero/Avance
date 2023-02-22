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
  cxDBLookupComboBox, cxImageComboBox, Vcl.ExtCtrls, dxDateRanges,
  dxGDIPlusClasses;

type
  TfrmFrames_Aulas = class(TForm)
    clEmployees: TClientDataSet;
    clEmployeesId: TIntegerField;
    clEmployeesDepartment: TIntegerField;
    clEmployeesTitle: TWideStringField;
    clEmployeesStatus: TIntegerField;
    clEmployeesHireDate: TDateTimeField;
    clEmployeesPersonalProfile: TWideStringField;
    clEmployeesFirstName: TWideStringField;
    clEmployeesLastName: TWideStringField;
    clEmployeesFullName: TWideStringField;
    clEmployeesPrefix: TIntegerField;
    clEmployeesHomePhone: TWideStringField;
    clEmployeesMobilePhone: TWideStringField;
    clEmployeesEmail: TWideStringField;
    clEmployeesSkype: TWideStringField;
    clEmployeesBirthDate: TDateTimeField;
    clEmployeesPictureId: TIntegerField;
    clEmployeesAddress_Line: TWideStringField;
    clEmployeesAddress_City: TWideStringField;
    clEmployeesAddress_State: TIntegerField;
    clEmployeesAddress_ZipCode: TWideStringField;
    clEmployeesAddress_Latitude: TFloatField;
    clEmployeesAddress_Longitude: TFloatField;
    clEmployeesProbationReason_Id: TIntegerField;
    clEmployeesPicture: TBlobField;
    clEmployeesFull_Address: TStringField;
    dsEmployees: TDataSource;
    cxGridEmployees: TcxGrid;
    gvEmployees: TcxGridDBLayoutView;
    gvEmployeesItemPicture: TcxGridDBLayoutViewItem;
    gvEmployeesItemFullName: TcxGridDBLayoutViewItem;
    gvEmployeesItemPosition: TcxGridDBLayoutViewItem;
    gvEmployeesItemPhone: TcxGridDBLayoutViewItem;
    gvEmployeesItemCity: TcxGridDBLayoutViewItem;
    gvEmployeesGroup_Root: TdxLayoutGroup;
    cxGridLayoutItem1: TcxGridLayoutItem;
    gvEmployeesLayoutItem2: TcxGridLayoutItem;
    gvEmployeesLayoutItem3: TcxGridLayoutItem;
    gvEmployeesLayoutItem4: TcxGridLayoutItem;
    gvEmployeesLayoutItem5: TcxGridLayoutItem;
    gvStores: TcxGridDBLayoutView;
    gvStoresAddress_City: TcxGridDBLayoutViewItem;
    gvStoresAddress_Full: TcxGridDBLayoutViewItem;
    gvStoresCrestId: TcxGridDBLayoutViewItem;
    gvStoresGroup_Root: TdxLayoutGroup;
    gvStoresLayoutItem4: TcxGridLayoutItem;
    gvStoresLayoutItem16: TcxGridLayoutItem;
    cxGridLayoutItem2: TcxGridLayoutItem;
    cxGridEmployeesLevel1: TcxGridLevel;
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
    Panel1: TPanel;
    Image1: TImage;
    dtsAulas: TDataSource;
    cldsAulas: TClientDataSet;
    cldsAulasDESCRICAO: TStringField;
    cldsAulasDESC_QUESTOES: TStringField;
    cldsAulasDESC_CONTEUDO: TStringField;
    procedure gvEmployeesLayoutCustomDrawRecordCaption
      (Sender: TcxGridLayoutView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridLayoutViewRecordCaptionViewInfo; var ADone: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFrames_Aulas: TfrmFrames_Aulas;

implementation

{$R *.dfm}

uses UdtmFrames_Aulas, UfrmMain;

procedure TfrmFrames_Aulas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
  frmFrames_Aulas := nil;
end;

procedure TfrmFrames_Aulas.FormShow(Sender: TObject);
begin
  frmFrames_Aulas.Height := frmMain.Image1.Height - 5;
  frmFrames_Aulas.Width := frmMain.Image1.Width - 5;
end;

procedure TfrmFrames_Aulas.gvEmployeesLayoutCustomDrawRecordCaption
  (Sender: TcxGridLayoutView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridLayoutViewRecordCaptionViewInfo; var ADone: Boolean);
begin
  // Aqui joga o título
  AViewInfo.Text := AViewInfo.GridRecord.Values
    [TcxGridDBLayoutView(AViewInfo.GridView).GetItemByFieldName
    ('FullName').Index];
end;

end.
