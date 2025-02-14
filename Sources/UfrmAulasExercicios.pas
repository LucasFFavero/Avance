unit UfrmAulasExercicios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  AdvGlowButton, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask,
  Vcl.ComCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.ExtDlgs,
  Vcl.OleCtrls, WMPLib_TLB, System.ImageList, Vcl.ImgList;

type
  TfrmAulasExercicios = class(TForm)
    pnlTop: TPanel;
    btnSalvar: TAdvGlowButton;
    btnCancelar: TAdvGlowButton;
    OpenPicture: TOpenPictureDialog;
    OpenVideo: TOpenDialog;
    imgDetail: TImageList;
    pnlGeral: TPanel;
    pnlCadastro: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtCodigo: TDBEdit;
    edtDescricao: TDBEdit;
    cbImagem: TCheckBox;
    cbVideo: TCheckBox;
    edtTitulo: TDBEdit;
    pnlImagem: TPanel;
    gpbImagem: TGroupBox;
    Image: TImage;
    Panel5: TPanel;
    btnIncluirImagem: TAdvGlowButton;
    btnExcluirImagem: TAdvGlowButton;
    pnlImagemLeft: TPanel;
    pnlImagemRight: TPanel;
    pnlVideo: TPanel;
    gpbVideo: TGroupBox;
    pnlBotoesVideo: TPanel;
    btnIncluirVideo: TAdvGlowButton;
    btnRemoverVideo: TAdvGlowButton;
    pnlVideoReproduzir: TPanel;
    WindowsMediaPlayer: TWindowsMediaPlayer;
    Panel7: TPanel;
    Panel8: TPanel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnIncluirImagemClick(Sender: TObject);
    procedure btnExcluirImagemClick(Sender: TObject);
    procedure btnIncluirVideoClick(Sender: TObject);
    procedure btnRemoverVideoClick(Sender: TObject);
    procedure tbsResumoShow(Sender: TObject);
    procedure cbImagemClick(Sender: TObject);
    procedure cbVideoClick(Sender: TObject);
    procedure LimpaPastasTemporarias(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAulasExercicios: TfrmAulasExercicios;

implementation

{$R *.dfm}

uses UdtmAulasExercicios, UfrmMain, UdtmAulas;

procedure TfrmAulasExercicios.btnIncluirImagemClick(Sender: TObject);
var
  b: TMemoryStream;
begin
  if dtmAulasExercicios.qryExercicios.State in [dsbrowse] then
    dtmAulasExercicios.qryExercicios.Edit;

  if OpenPicture.Execute then
  begin
    Image.Picture.LoadFromFile(OpenPicture.FileName);
    Image.Visible := true;

    b := TMemoryStream.Create;
    Image.Picture.Graphic.SaveToStream(b);

    dtmAulasExercicios.qryExerciciosIMAGEM.LoadFromStream(b);
    b.Destroy;
  end;
end;

procedure TfrmAulasExercicios.btnExcluirImagemClick(Sender: TObject);
begin
  if dtmAulasExercicios.qryExercicios.State in [dsbrowse] then
    dtmAulasExercicios.qryExercicios.Edit;

  dtmAulasExercicios.qryExerciciosIMAGEM.AsVariant := null;
  Image.Picture.Assign(nil);
end;

procedure TfrmAulasExercicios.btnCancelarClick(Sender: TObject);
begin
  if dtmAulasExercicios.qryExercicios.Active then
    dtmAulasExercicios.qryExercicios.Cancel;

  dtmAulasExercicios.Transaction.Rollback;
  Close;
end;

procedure TfrmAulasExercicios.btnIncluirVideoClick(Sender: TObject);
begin
  if dtmAulasExercicios.qryExercicios.State in [dsbrowse] then
    dtmAulasExercicios.qryExercicios.Edit;

  if OpenVideo.Execute then
  begin
    WindowsMediaPlayer.URL := OpenVideo.FileName;
    WindowsMediaPlayer.Visible := true;

    dtmAulasExercicios.qryExerciciosVIDEO.LoadFromFile(OpenVideo.FileName);
  end;
end;

procedure TfrmAulasExercicios.btnRemoverVideoClick(Sender: TObject);
begin
  if dtmAulasExercicios.qryExercicios.State in [dsbrowse] then
    dtmAulasExercicios.qryExercicios.Edit;

  WindowsMediaPlayer.URL := '';
  WindowsMediaPlayer.Visible := false;
  dtmAulasExercicios.qryExerciciosVIDEO.AsVariant := null;
end;

procedure TfrmAulasExercicios.btnSalvarClick(Sender: TObject);
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
    if dtmAulasExercicios.qryExercicios.Active then
    begin
      if (dtmAulasExercicios.qryExercicios.State = dsInsert) or
        (dtmAulasExercicios.qryExercicios.State = dsEdit) then
      begin
        if (cbImagem.Checked = true) then
          dtmAulasExercicios.qryExerciciosTIPO.AsString := 'I'
        else if (cbVideo.Checked = true) then
          dtmAulasExercicios.qryExerciciosTIPO.AsString := 'V';
        dtmAulasExercicios.qryExercicios.Post;

        dtmAulasExercicios.Transaction.Commit;
      end;
    end;
  except
    Application.MessageBox(pchar('Erro ao realizar a operação.'),
      pchar('Atenção - Usuário ' + Copy(frmMain.sbPrincipal.Panels[2].Text, 9,
      20)), 0 + 16 + 0);
    edtDescricao.SetFocus;
    Abort;
  end;

  dtmAulas.qryExercicios.Close;
  dtmAulas.qryExercicios.ParamByName('COD_AULA').AsInteger :=
    dtmAulas.qryAulasCODIGO.AsInteger;
  dtmAulas.qryExercicios.Open;

  dtmAulas.qryQuestoes.Close;
  dtmAulas.qryQuestoes.ParamByName('COD_AULAS_EXERCICIO').AsInteger :=
    dtmAulas.qryExerciciosCODIGO.AsInteger;
  dtmAulas.qryQuestoes.Open;

  Close;
end;

procedure TfrmAulasExercicios.cbImagemClick(Sender: TObject);
begin
  if (cbImagem.Checked = true) then
  begin
    cbVideo.Checked := false;

    pnlVideo.Visible := false;
    pnlImagem.Visible := true;
  end;
end;

procedure TfrmAulasExercicios.cbVideoClick(Sender: TObject);
begin
  if (cbVideo.Checked = true) then
  begin
    cbImagem.Checked := false;

    pnlImagem.Visible := false;
    pnlVideo.Visible := true;
  end;
end;

procedure TfrmAulasExercicios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if dtmAulasExercicios.Transaction.Active then
    dtmAulasExercicios.Transaction.Rollback;

  dtmAulasExercicios.qryExercicios.Close;

  Action := cafree;
  frmAulasExercicios := nil;
end;

procedure TfrmAulasExercicios.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmAulasExercicios.LimpaPastasTemporarias(Sender: TObject);
begin
  frmMain.DeletarDiretorio(ExtractFilePath(paramstr(0)) + 'Videos\' +
    Trim(Copy(frmMain.sbPrincipal.Panels[2].Text, 9, 20)));
end;

procedure TfrmAulasExercicios.tbsResumoShow(Sender: TObject);
begin
  dtmAulasExercicios.qryQuestoes.Close;

  if (dtmAulasExercicios.qryExerciciosCODIGO.AsInteger > 0) then
  begin
    dtmAulasExercicios.qryQuestoes.Close;
    dtmAulasExercicios.qryQuestoes.ParamByName('COD_AULAS_EXERCICIO').AsInteger
      := dtmAulasExercicios.qryExerciciosCODIGO.AsInteger;
    dtmAulasExercicios.qryQuestoes.Open;
  end;
end;

end.
