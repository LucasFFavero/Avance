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
    procedure dtsConteudosStateChange(Sender: TObject);
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

procedure TdtmAulasConteudos.dtsConteudosStateChange(Sender: TObject);
begin
  // Animações dos botões
  if (frmAulasConteudos <> nil) then
  begin
    frmAulasConteudos.btnSalvar.Enabled := qryConteudos.State <> dsBrowse;
    frmAulasConteudos.btnCancelar.Enabled := qryConteudos.State <> dsBrowse;
    frmAulasConteudos.pnlCadastro.Enabled := qryConteudos.State <> dsBrowse;
  end;
end;

procedure TdtmAulasConteudos.qryConteudosAfterScroll(DataSet: TDataSet);
var
  strCaminhoVideo, strCaminhoAudio: String;
  Jpg: TJpegImage;
  b: TStream;
begin
  if (frmAulasConteudos <> nil) then
  begin
    // Imagem do conteúdo
    frmAulasConteudos.Image.Visible := false;
    if (dtmAulasConteudos.qryConteudosTIPO.AsString = 'I') then
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

    // Video do conteúdo
    frmAulasConteudos.WindowsMediaPlayer.Visible := false;
    if (dtmAulasConteudos.qryConteudosTIPO.AsString = 'V') then
    begin
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

    // Audio do conteúdo
    frmAulasConteudos.WindowsMediaPlayerAudio.Visible := false;
    if (dtmAulasConteudos.qryConteudosTIPO.AsString = 'A') then
    begin
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
    if (dtmAulasConteudos.qryConteudosRESUMO_IMAGEM.AsVariant <> null) then
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
  end;
end;

end.
