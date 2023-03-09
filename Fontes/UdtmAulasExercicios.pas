unit UdtmAulasExercicios;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB, Jpeg,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TdtmAulasExercicios = class(TDataModule)
    qryExercicios: TFDQuery;
    Transaction: TFDTransaction;
    UpdateSQL: TFDUpdateSQL;
    dtsExercicios: TDataSource;
    qryExerciciosCODIGO: TFDAutoIncField;
    qryExerciciosCOD_AULA: TIntegerField;
    qryExerciciosCOD_CONTEUDO: TIntegerField;
    qryExerciciosDESCRICAO: TStringField;
    qryExerciciosTIPO: TStringField;
    qryExerciciosIMAGEM: TBlobField;
    qryExerciciosVIDEO: TBlobField;
    qryQuestoes: TFDQuery;
    qryQuestoesCODIGO: TFDAutoIncField;
    qryQuestoesCOD_AULAS_EXERCICIOS: TIntegerField;
    qryQuestoesDESCRICAO: TStringField;
    qryQuestoesIMAGEM: TBlobField;
    qryQuestoesCORRETA: TSmallintField;
    dtsQuestoes: TDataSource;
    TransactionExcluir: TFDTransaction;
    qryExcluirQuestoes: TFDQuery;
    qryExerciciosTITULO: TStringField;
    procedure qryExerciciosAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtmAulasExercicios: TdtmAulasExercicios;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UfrmAulasExercicios, UfrmMain;
{$R *.dfm}

procedure TdtmAulasExercicios.qryExerciciosAfterScroll(DataSet: TDataSet);
var
  strCaminhoVideo, strCaminhoAudio: String;
  Jpg: TJpegImage;
  b: TStream;
begin
  if (frmAulasExercicios <> nil) then
  begin
    // Imagem do conteúdo
    frmAulasExercicios.Image.Visible := false;
    if (dtmAulasExercicios.qryExerciciosTIPO.AsString = 'I') then
    begin
      frmAulasExercicios.cbImagem.Checked := true;

      Jpg := nil;
      b := qryExercicios.CreateBlobStream
        (qryExercicios.FieldByName('IMAGEM'), bmRead);

      if (b.Size > 0) then
      begin
        try
          Jpg := TJpegImage.Create;
          Jpg.LoadFromStream(b);
          frmAulasExercicios.Image.Picture.Assign(Jpg);
          frmAulasExercicios.Image.Visible := true;
        except
        end;
      end
      else
        frmAulasExercicios.Image.Picture.Assign(nil);

      // liberar memoria
      b.Destroy;
      Jpg.Free;
    end;

    // Video do conteúdo
    frmAulasExercicios.WindowsMediaPlayer.Visible := false;
    if (dtmAulasExercicios.qryExerciciosTIPO.AsString = 'V') then
    begin
      frmAulasExercicios.cbVideo.Checked := true;

      strCaminhoVideo := ExtractFilePath(paramstr(0)) + 'Videos\' +
        Trim(Copy(frmMain.sbPrincipal.Panels[2].Text, 9, 20));

      if not DirectoryExists(strCaminhoVideo) then
        ForceDirectories(strCaminhoVideo);

      strCaminhoVideo := strCaminhoVideo + '\' +
        dtmAulasExercicios.qryExerciciosCODIGO.AsString + '.avi';

      dtmAulasExercicios.qryExerciciosVIDEO.SaveToFile(strCaminhoVideo);
      frmAulasExercicios.WindowsMediaPlayer.URL := strCaminhoVideo;
      frmAulasExercicios.WindowsMediaPlayer.Visible := true;
      frmAulasExercicios.WindowsMediaPlayer.Close;
    end;
  end;
end;

end.
