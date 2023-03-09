unit UfrmAulasConteudos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvGlowButton, Vcl.ExtCtrls, Data.DB,
  Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,
  Vcl.ExtDlgs, Vcl.MPlayer, Vcl.OleCtrls, WMPLib_TLB;

type
  TfrmAulasConteudos = class(TForm)
    pnlTop: TPanel;
    btnSalvar: TAdvGlowButton;
    btnCancelar: TAdvGlowButton;
    OpenPicture: TOpenPictureDialog;
    OpenVideo: TOpenDialog;
    OpenAudio: TOpenDialog;
    pgcDadosCadastrais: TPageControl;
    tbsDadosCadastrais: TTabSheet;
    pnlAudio: TPanel;
    Panel11: TPanel;
    gpbAudio: TGroupBox;
    Panel3: TPanel;
    btnIncluirAudio: TAdvGlowButton;
    btnRemoverAudio: TAdvGlowButton;
    pnlAudioReproduzir: TPanel;
    WindowsMediaPlayerAudio: TWindowsMediaPlayer;
    pnlAudioBottom: TPanel;
    pnlAudioLeft: TPanel;
    pnlAudioRight: TPanel;
    pnlVideo: TPanel;
    gpbVideo: TGroupBox;
    pnlBotoesVideo: TPanel;
    btnIncluirVideo: TAdvGlowButton;
    btnRemoverVideo: TAdvGlowButton;
    pnlVideoReproduzir: TPanel;
    WindowsMediaPlayer: TWindowsMediaPlayer;
    pnlVideoLeft: TPanel;
    pnlVideoRight: TPanel;
    pnlImagem: TPanel;
    pnlImagemRight: TPanel;
    gpbImagem: TGroupBox;
    Image: TImage;
    Panel5: TPanel;
    btnIncluirImagem: TAdvGlowButton;
    btnRemoverImagem: TAdvGlowButton;
    pnlImagemLeft: TPanel;
    pnlCadastro: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    edtCodigo: TDBEdit;
    edtDescricao: TDBEdit;
    cbImagem: TCheckBox;
    cbVideo: TCheckBox;
    cbAudio: TCheckBox;
    tbsResumo: TTabSheet;
    pnlResumo: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    gpbResumo: TGroupBox;
    ImageResumo: TImage;
    Panel4: TPanel;
    btnIncluirImagemResumo: TAdvGlowButton;
    btnRemoverImagemResumo: TAdvGlowButton;
    Panel13: TPanel;
    dbResumo: TDBMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnIncluirImagemClick(Sender: TObject);
    procedure btnRemoverImagemClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure cbImagemClick(Sender: TObject);
    procedure cbVideoClick(Sender: TObject);
    procedure cbAudioClick(Sender: TObject);
    procedure btnIncluirImagemResumoClick(Sender: TObject);
    procedure btnRemoverImagemResumoClick(Sender: TObject);
    procedure btnIncluirVideoClick(Sender: TObject);
    procedure btnRemoverVideoClick(Sender: TObject);
    procedure btnIncluirAudioClick(Sender: TObject);
    procedure btnRemoverAudioClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAulasConteudos: TfrmAulasConteudos;

implementation

{$R *.dfm}

uses UdtmAulasConteudos, UfrmMain, UdtmAulas;

procedure TfrmAulasConteudos.btnIncluirImagemResumoClick(Sender: TObject);
var
  b: TMemoryStream;
begin
  if dtmAulasConteudos.qryConteudos.State in [dsbrowse] then
    dtmAulasConteudos.qryConteudos.Edit;

  if OpenPicture.Execute then
  begin
    ImageResumo.Picture.LoadFromFile(OpenPicture.FileName);
    ImageResumo.Visible := true;

    b := TMemoryStream.Create;
    ImageResumo.Picture.Graphic.SaveToStream(b);

    dtmAulasConteudos.qryConteudosRESUMO_IMAGEM.LoadFromStream(b);
    b.Destroy;
  end;
end;

procedure TfrmAulasConteudos.btnRemoverImagemResumoClick(Sender: TObject);
begin
  if dtmAulasConteudos.qryConteudos.State in [dsbrowse] then
    dtmAulasConteudos.qryConteudos.Edit;

  dtmAulasConteudos.qryConteudosRESUMO_IMAGEM.AsVariant := null;
  ImageResumo.Picture.Assign(nil);
end;

procedure TfrmAulasConteudos.btnCancelarClick(Sender: TObject);
begin
  if dtmAulasConteudos.qryConteudos.Active then
    dtmAulasConteudos.qryConteudos.Cancel;

  dtmAulasConteudos.Transaction.Rollback;
  Close;
end;

procedure TfrmAulasConteudos.btnIncluirAudioClick(Sender: TObject);
begin
  if dtmAulasConteudos.qryConteudos.State in [dsbrowse] then
    dtmAulasConteudos.qryConteudos.Edit;

  if OpenAudio.Execute then
  begin
    WindowsMediaPlayerAudio.URL := OpenAudio.FileName;
    WindowsMediaPlayerAudio.Visible := true;

    dtmAulasConteudos.qryConteudosAUDIO.LoadFromFile(OpenAudio.FileName);
  end;
end;

procedure TfrmAulasConteudos.btnIncluirImagemClick(Sender: TObject);
var
  b: TMemoryStream;
begin
  if dtmAulasConteudos.qryConteudos.State in [dsbrowse] then
    dtmAulasConteudos.qryConteudos.Edit;

  if OpenPicture.Execute then
  begin
    Image.Picture.LoadFromFile(OpenPicture.FileName);
    Image.Visible := true;

    b := TMemoryStream.Create;
    Image.Picture.Graphic.SaveToStream(b);

    dtmAulasConteudos.qryConteudosIMAGEM.LoadFromStream(b);
    b.Destroy;
  end;
end;

procedure TfrmAulasConteudos.btnIncluirVideoClick(Sender: TObject);
begin
  if dtmAulasConteudos.qryConteudos.State in [dsbrowse] then
    dtmAulasConteudos.qryConteudos.Edit;

  if OpenVideo.Execute then
  begin
    WindowsMediaPlayer.URL := OpenVideo.FileName;
    WindowsMediaPlayer.Visible := true;

    dtmAulasConteudos.qryConteudosVIDEO.LoadFromFile(OpenVideo.FileName);
  end;
end;

procedure TfrmAulasConteudos.btnRemoverAudioClick(Sender: TObject);
begin
  if dtmAulasConteudos.qryConteudos.State in [dsbrowse] then
    dtmAulasConteudos.qryConteudos.Edit;

  WindowsMediaPlayerAudio.URL := '';
  WindowsMediaPlayerAudio.Visible := false;
  dtmAulasConteudos.qryConteudosAUDIO.AsVariant := null;
end;

procedure TfrmAulasConteudos.btnRemoverImagemClick(Sender: TObject);
begin
  if dtmAulasConteudos.qryConteudos.State in [dsbrowse] then
    dtmAulasConteudos.qryConteudos.Edit;

  dtmAulasConteudos.qryConteudosIMAGEM.AsVariant := null;
  Image.Picture.Assign(nil);
end;

procedure TfrmAulasConteudos.btnRemoverVideoClick(Sender: TObject);
begin
  if dtmAulasConteudos.qryConteudos.State in [dsbrowse] then
    dtmAulasConteudos.qryConteudos.Edit;

  WindowsMediaPlayer.URL := '';
  WindowsMediaPlayer.Visible := false;
  dtmAulasConteudos.qryConteudosVIDEO.AsVariant := null;
end;

procedure TfrmAulasConteudos.btnSalvarClick(Sender: TObject);
begin
  if Trim(edtDescricao.Text) = '' then
  begin
    Application.MessageBox('Informe a descrição.',
      pchar('Atenção - Usuário ' + Copy(frmMain.sbPrincipal.Panels[2].Text, 9,
      20)), 0 + 48 + 0);
    edtDescricao.SetFocus;
    Exit;
  end;

  try
    // Salvar novo registro
    if dtmAulasConteudos.qryConteudos.Active then
    begin
      if (cbImagem.Checked = true) then
        dtmAulasConteudos.qryConteudosTIPO.AsString := 'I'
      else if (cbVideo.Checked = true) then
        dtmAulasConteudos.qryConteudosTIPO.AsString := 'V'
      else if (cbAudio.Checked = true) then
        dtmAulasConteudos.qryConteudosTIPO.AsString := 'A';

      dtmAulasConteudos.qryConteudos.Post;
    end;

    dtmAulasConteudos.Transaction.Commit;
  except
    Application.MessageBox(pchar('Erro ao realizar a operação.'),
      pchar('Atenção - Usuário ' + Copy(frmMain.sbPrincipal.Panels[2].Text, 9,
      20)), 0 + 16 + 0);
    edtDescricao.SetFocus;
    Abort;
  end;

  dtmAulas.qryConteudos.Close;
  dtmAulas.qryConteudos.ParamByName('COD_AULA').AsInteger :=
    dtmAulas.qryAulasCODIGO.AsInteger;
  dtmAulas.qryConteudos.Open;

  Close;
end;

procedure TfrmAulasConteudos.cbAudioClick(Sender: TObject);
begin
  if (cbAudio.Checked = true) then
  begin
    cbImagem.Checked := false;
    cbVideo.Checked := false;

    pnlImagem.Visible := false;
    pnlVideo.Visible := false;
    pnlAudio.Visible := true;
  end;
end;

procedure TfrmAulasConteudos.cbImagemClick(Sender: TObject);
begin
  if (cbImagem.Checked = true) then
  begin
    cbVideo.Checked := false;
    cbAudio.Checked := false;

    pnlVideo.Visible := false;
    pnlAudio.Visible := false;
    pnlImagem.Visible := true;
  end;
end;

procedure TfrmAulasConteudos.cbVideoClick(Sender: TObject);
begin
  if (cbVideo.Checked = true) then
  begin
    cbImagem.Checked := false;
    cbAudio.Checked := false;

    pnlImagem.Visible := false;
    pnlAudio.Visible := false;
    pnlVideo.Visible := true;
  end;
end;

procedure TfrmAulasConteudos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if dtmAulasConteudos.Transaction.Active then
    dtmAulasConteudos.Transaction.Rollback;

  dtmAulasConteudos.qryConteudos.Close;

  Action := cafree;
  frmAulasConteudos := nil;
end;

procedure TfrmAulasConteudos.FormKeyPress(Sender: TObject; var Key: Char);
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

end.
