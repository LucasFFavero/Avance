unit UfrmAulasQuestoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  AdvGlowButton, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask,
  Vcl.OleCtrls, WMPLib_TLB, Vcl.ComCtrls, Vcl.ExtDlgs, Data.DB;

type
  TfrmAulasQuestoes = class(TForm)
    pnlTop: TPanel;
    btnSalvar: TAdvGlowButton;
    btnCancelar: TAdvGlowButton;
    pgcDadosCadastrais: TPageControl;
    tbsDadosCadastrais: TTabSheet;
    pnlVideo: TPanel;
    gpbVideo: TGroupBox;
    pnlBotoesVideo: TPanel;
    btnIncluirVideo: TAdvGlowButton;
    btnRemoverVideo: TAdvGlowButton;
    pnlVideoReproduzir: TPanel;
    WindowsMediaPlayer: TWindowsMediaPlayer;
    Panel7: TPanel;
    Panel8: TPanel;
    pnlImagem: TPanel;
    GroupBox1: TGroupBox;
    Image: TImage;
    Panel5: TPanel;
    btnIncluirImagem: TAdvGlowButton;
    btnExcluirImagem: TAdvGlowButton;
    Panel1: TPanel;
    Panel3: TPanel;
    pnlCadastro: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    edtCodigo: TDBEdit;
    edtDescricao: TDBEdit;
    dbcbCorreta: TDBCheckBox;
    OpenPicture: TOpenPictureDialog;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnIncluirImagemClick(Sender: TObject);
    procedure btnExcluirImagemClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAulasQuestoes: TfrmAulasQuestoes;

implementation

{$R *.dfm}

uses UdtmAulasQuestoes, UfrmMain, UdtmAulasExercicios;

procedure TfrmAulasQuestoes.btnIncluirImagemClick(Sender: TObject);
var
  b: TMemoryStream;
begin
  if dtmAulasQuestoes.qryQuestoes.State in [dsbrowse] then
    dtmAulasQuestoes.qryQuestoes.Edit;

  if OpenPicture.Execute then
  begin
    Image.Picture.LoadFromFile(OpenPicture.FileName);
    Image.Visible := true;

    b := TMemoryStream.Create;
    Image.Picture.Graphic.SaveToStream(b);

    dtmAulasQuestoes.qryQuestoesIMAGEM.LoadFromStream(b);
    b.Destroy;
  end;
end;

procedure TfrmAulasQuestoes.btnExcluirImagemClick(Sender: TObject);
begin
  if dtmAulasQuestoes.qryQuestoes.State in [dsbrowse] then
    dtmAulasQuestoes.qryQuestoes.Edit;

  dtmAulasQuestoes.qryQuestoesIMAGEM.AsVariant := null;
  Image.Picture.Assign(nil);
end;

procedure TfrmAulasQuestoes.btnCancelarClick(Sender: TObject);
begin
  if dtmAulasQuestoes.qryQuestoes.Active then
    dtmAulasQuestoes.qryQuestoes.Cancel;

  dtmAulasQuestoes.Transaction.Rollback;
  Close;
end;

procedure TfrmAulasQuestoes.btnSalvarClick(Sender: TObject);
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
    if dtmAulasQuestoes.qryQuestoes.Active then
    begin
      dtmAulasQuestoes.qryQuestoes.Post;
    end;

    dtmAulasQuestoes.Transaction.CommitRetaining;
  except
    Application.MessageBox(pchar('Erro ao realizar a operação.'),
      pchar('Atenção - Usuário ' + Copy(frmMain.sbPrincipal.Panels[2].Text, 9,
      20)), 0 + 16 + 0);
    edtDescricao.SetFocus;
    Abort;
  end;

  dtmAulasExercicios.qryQuestoes.Close;
  dtmAulasExercicios.qryQuestoes.ParamByName('COD_AULAS_EXERCICIO').AsInteger :=
    dtmAulasExercicios.qryExerciciosCODIGO.AsInteger;
  dtmAulasExercicios.qryQuestoes.Open;

  Close;
end;

procedure TfrmAulasQuestoes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if dtmAulasQuestoes.Transaction.Active then
    dtmAulasQuestoes.Transaction.Rollback;

  dtmAulasQuestoes.qryQuestoes.Close;

  Action := cafree;
  frmAulasQuestoes := nil;
end;

procedure TfrmAulasQuestoes.FormKeyPress(Sender: TObject; var Key: Char);
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
