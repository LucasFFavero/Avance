unit UdtmAulasConteudos;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, System.Variants,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet, Data.DB, Jpeg, Vcl.Controls,
  Vcl.DBGrids;

type
  TdtmAulasConteudos = class(TDataModule)
    qryConteudos: TFDQuery;
    Transaction: TFDTransaction;
    UpdateSQL: TFDUpdateSQL;
    dtsConteudos: TDataSource;
    qryConteudosCODIGO: TFDAutoIncField;
    qryConteudosCOD_AULA: TIntegerField;
    qryConteudosDESCRICAO: TStringField;
    qryConteudosIMAGEM: TBlobField;
    qryConteudosVIDEO: TBlobField;
    qryConteudosAUDIO: TBlobField;
    qryConteudosRESUMO: TStringField;
    qryConteudosRESUMO_IMAGEM: TBlobField;
    qryConteudosTIPO: TStringField;
    procedure qryConteudosAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtmAulasConteudos: TdtmAulasConteudos;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UfrmAulasConteudos, UdtmMain, UfrmMain;

{$R *.dfm}

procedure TdtmAulasConteudos.qryConteudosAfterScroll(DataSet: TDataSet);
var
  strCaminhoVideo, strCaminhoAudio: String;
  Jpg: TJpegImage;
  b: TStream;
begin
  if (frmAulasConteudos <> nil) then
  begin
    // Imagem do conte�do
    frmAulasConteudos.Image.Visible := false;
    if (qryConteudosIMAGEM.AsVariant <> null) then
    begin
      frmAulasConteudos.cbImagem.Checked := true;

      Jpg := nil;
      b := qryConteudos.CreateBlobStream
        (qryConteudos.FieldByName('IMAGEM'), bmRead);

      if (b.Size > 0) then
      begin
        try
          Jpg := TJpegImage.Create;
          Jpg.LoadFromStream(b);
          frmAulasConteudos.Image.Picture.Assign(Jpg);
          frmAulasConteudos.Image.Visible := true;
        except
        end;
      end
      else
        frmAulasConteudos.Image.Picture.Assign(nil);

      // liberar memoria
      b.Destroy;
      Jpg.Free;
    end;

    // Video do conte�do
    frmAulasConteudos.WindowsMediaPlayer.Visible := false;
    if (qryConteudosVIDEO.AsVariant <> null) then
    begin
      if (frmAulasConteudos.cbImagem.Checked = false) then
        frmAulasConteudos.cbVideo.Checked := true;

      strCaminhoVideo := ExtractFilePath(paramstr(0)) + 'Videos\' +
        Trim(Copy(frmMain.sbPrincipal.Panels[2].Text, 9, 20));

      if not DirectoryExists(strCaminhoVideo) then
        ForceDirectories(strCaminhoVideo);

      strCaminhoVideo := strCaminhoVideo + '\' +
        dtmAulasConteudos.qryConteudosCODIGO.AsString + '.avi';

      dtmAulasConteudos.qryConteudosVIDEO.SaveToFile(strCaminhoVideo);
      frmAulasConteudos.WindowsMediaPlayer.URL := strCaminhoVideo;
      frmAulasConteudos.WindowsMediaPlayer.Visible := true;
      frmAulasConteudos.WindowsMediaPlayer.Close;
    end;

    // Audio do conte�do
    frmAulasConteudos.WindowsMediaPlayerAudio.Visible := false;
    if (qryConteudosAUDIO.AsVariant <> null) then
    begin
      if (frmAulasConteudos.cbImagem.Checked = false) and
        (frmAulasConteudos.cbVideo.Checked = false) then
        frmAulasConteudos.cbAudio.Checked := true;

      strCaminhoAudio := ExtractFilePath(paramstr(0)) + 'Audios\' +
        Trim(Copy(frmMain.sbPrincipal.Panels[2].Text, 9, 20));

      if not DirectoryExists(strCaminhoAudio) then
        ForceDirectories(strCaminhoAudio);

      strCaminhoAudio := strCaminhoAudio + '\' +
        dtmAulasConteudos.qryConteudosCODIGO.AsString + '.mp3';

      dtmAulasConteudos.qryConteudosAUDIO.SaveToFile(strCaminhoAudio);
      frmAulasConteudos.WindowsMediaPlayerAudio.URL := strCaminhoAudio;
      frmAulasConteudos.WindowsMediaPlayerAudio.Visible := true;
      frmAulasConteudos.WindowsMediaPlayerAudio.Close;
    end;

    // Imagem do resumo
    frmAulasConteudos.ImageResumo.Visible := false;
    if (qryConteudosRESUMO_IMAGEM.AsVariant <> null) then
    begin
      Jpg := nil;
      b := qryConteudos.CreateBlobStream
        (qryConteudos.FieldByName('RESUMO_IMAGEM'), bmRead);

      if (b.Size > 0) then
      begin
        try
          Jpg := TJpegImage.Create;
          Jpg.LoadFromStream(b);
          frmAulasConteudos.ImageResumo.Picture.Assign(Jpg);
          frmAulasConteudos.ImageResumo.Visible := true;
        except
        end;
      end
      else
        frmAulasConteudos.ImageResumo.Picture.Assign(nil);

      // liberar memoria
      b.Destroy;
      Jpg.Free;
    end;

    if (frmAulasConteudos.cbImagem.Checked = false) and
      (frmAulasConteudos.cbVideo.Checked = false) and
      (frmAulasConteudos.cbAudio.Checked = false) then
      frmAulasConteudos.cbImagem.Checked := true;
  end;
end;

end.
