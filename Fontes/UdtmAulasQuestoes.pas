unit UdtmAulasQuestoes;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB, Jpeg,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TdtmAulasQuestoes = class(TDataModule)
    qryQuestoes: TFDQuery;
    Transaction: TFDTransaction;
    UpdateSQL: TFDUpdateSQL;
    dtsQuestoes: TDataSource;
    qryQuestoesCODIGO: TFDAutoIncField;
    qryQuestoesCOD_AULAS_EXERCICIOS: TIntegerField;
    qryQuestoesDESCRICAO: TStringField;
    qryQuestoesIMAGEM: TBlobField;
    qryQuestoesCORRETA: TSmallintField;
    procedure qryQuestoesAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtmAulasQuestoes: TdtmAulasQuestoes;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UfrmAulasQuestoes;
{$R *.dfm}

procedure TdtmAulasQuestoes.qryQuestoesAfterScroll(DataSet: TDataSet);
var
  Jpg: TJpegImage;
  b: TStream;
begin
  if (frmAulasQuestoes <> nil) then
  begin
    // Imagem do conteúdo
    frmAulasQuestoes.Image.Visible := false;

    Jpg := nil;
    b := qryQuestoes.CreateBlobStream
      (qryQuestoes.FieldByName('IMAGEM'), bmRead);

    if (b.Size > 0) then
    begin
      try
        Jpg := TJpegImage.Create;
        Jpg.LoadFromStream(b);
        frmAulasQuestoes.Image.Picture.Assign(Jpg);
        frmAulasQuestoes.Image.Visible := true;
      except
      end;
    end
    else
      frmAulasQuestoes.Image.Picture.Assign(nil);

    // liberar memoria
    b.Destroy;
    Jpg.Free;
  end;
end;

end.
