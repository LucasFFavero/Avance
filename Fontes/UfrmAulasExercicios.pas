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
    gpbImagem: TGroupBox;
    Image: TImage;
    Panel5: TPanel;
    btnIncluirImagem: TAdvGlowButton;
    btnExcluirImagem: TAdvGlowButton;
    pnlImagemLeft: TPanel;
    pnlImagemRight: TPanel;
    pnlCadastro: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtCodigo: TDBEdit;
    edtDescricao: TDBEdit;
    dblkcbConteudo: TDBLookupComboBox;
    cbImagem: TCheckBox;
    cbVideo: TCheckBox;
    tbsResumo: TTabSheet;
    dbGridQuestoes: TDBGrid;
    pnlConteudo: TPanel;
    btnIncluirConteudo: TAdvGlowButton;
    btnExcluirConteudo: TAdvGlowButton;
    btnEditarConteudo: TAdvGlowButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dblkcbConteudoEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnIncluirImagemClick(Sender: TObject);
    procedure btnExcluirImagemClick(Sender: TObject);
    procedure btnIncluirVideoClick(Sender: TObject);
    procedure btnRemoverVideoClick(Sender: TObject);
    procedure btnIncluirConteudoClick(Sender: TObject);
    procedure btnEditarConteudoClick(Sender: TObject);
    procedure btnExcluirConteudoClick(Sender: TObject);
    procedure dbGridQuestoesDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure tbsResumoShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure cbImagemClick(Sender: TObject);
    procedure cbVideoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAulasExercicios: TfrmAulasExercicios;

implementation

{$R *.dfm}

uses UdtmAulasExercicios, UfrmMain, UdtmAulas, UfrmAulasQuestoes,
  UdtmAulasQuestoes;

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

procedure TfrmAulasExercicios.btnEditarConteudoClick(Sender: TObject);
begin
  if (frmAulasQuestoes = nil) then
    Application.CreateForm(TfrmAulasQuestoes, frmAulasQuestoes);

  if dtmAulasQuestoes.Transaction.Active then
    dtmAulasQuestoes.Transaction.Rollback;
  if not dtmAulasQuestoes.Transaction.Active then
    dtmAulasQuestoes.Transaction.StartTransaction;

  dtmAulasQuestoes.qryQuestoes.Close;
  dtmAulasQuestoes.qryQuestoes.ParamByName('CODIGO').AsInteger :=
    dtmAulasExercicios.qryQuestoesCODIGO.AsInteger;
  dtmAulasQuestoes.qryQuestoes.Open;

  dtmAulasQuestoes.qryQuestoes.Edit;
  frmAulasQuestoes.edtDescricao.SetFocus;

  THackDBGrid(dbGridQuestoes).DefaultRowHeight := 30;
end;

procedure TfrmAulasExercicios.btnExcluirConteudoClick(Sender: TObject);
begin
  if dtmAulasExercicios.TransactionExcluir.Active then
    dtmAulasExercicios.TransactionExcluir.Rollback;
  if not dtmAulasExercicios.TransactionExcluir.Active then
    dtmAulasExercicios.TransactionExcluir.StartTransaction;

  try
    dtmAulasExercicios.qryExcluirQuestoes.Close;
    dtmAulasExercicios.qryExcluirQuestoes.ParamByName('CODIGO').AsInteger :=
      dtmAulas.qryExerciciosCODIGO.AsInteger;
    dtmAulasExercicios.qryExcluirQuestoes.ExecSql;

    dtmAulas.TransactionExcluir.CommitRetaining;

    dtmAulas.qryQuestoes.Close;
    dtmAulas.qryQuestoes.ParamByName('COD_AULAS_EXERCICIO').AsInteger :=
      dtmAulas.qryExerciciosCODIGO.AsInteger;
    dtmAulas.qryQuestoes.Open;
  except
    THackDBGrid(dbGridQuestoes).DefaultRowHeight := 30;
    Application.MessageBox(pchar('Erro ao realizar a operação.'),
      pchar('Atenção - Usuário ' + Copy(frmMain.sbPrincipal.Panels[2].Text, 9,
      20)), 0 + 16 + 0);
    Abort;
  end;

  THackDBGrid(dbGridQuestoes).DefaultRowHeight := 30;
end;

procedure TfrmAulasExercicios.btnIncluirConteudoClick(Sender: TObject);
begin
  if (frmAulasQuestoes = nil) then
    Application.CreateForm(TfrmAulasQuestoes, frmAulasQuestoes);

  if dtmAulasQuestoes.Transaction.Active then
    dtmAulasQuestoes.Transaction.Rollback;
  if not dtmAulasQuestoes.Transaction.Active then
    dtmAulasQuestoes.Transaction.StartTransaction;

  if not dtmAulasQuestoes.qryQuestoes.Active then
    dtmAulasQuestoes.qryQuestoes.Open;

  dtmAulasQuestoes.qryQuestoes.Insert;
  dtmAulasQuestoes.qryQuestoesCOD_AULAS_EXERCICIOS.AsInteger :=
    dtmAulas.qryExerciciosCODIGO.AsInteger;
  dtmAulasQuestoes.qryQuestoesCORRETA.Value := 0;

  frmAulasQuestoes.edtDescricao.SetFocus;

  THackDBGrid(dbGridQuestoes).DefaultRowHeight := 30;
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
  if Trim(dblkcbConteudo.Text) = '' then
  begin
    Application.MessageBox('Informe o conteúdo.',
      pchar('Atenção - Usuário ' + Copy(frmMain.sbPrincipal.Panels[2].Text, 9,
      20)), 0 + 48 + 0);
    dblkcbConteudo.SetFocus;
    Exit;
  end;

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
      if (cbImagem.Checked = true) then
        dtmAulasExercicios.qryExerciciosTIPO.AsString := 'I'
      else if (cbVideo.Checked = true) then
        dtmAulasExercicios.qryExerciciosTIPO.AsString := 'V';

      dtmAulasExercicios.qryExercicios.Post;
    end;

    dtmAulasExercicios.Transaction.CommitRetaining;
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

procedure TfrmAulasExercicios.dbGridQuestoesDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if not dtmAulasExercicios.qryConteudos.IsEmpty then
  begin

    if gdSelected in State then
    begin
      with dbGridQuestoes.Canvas do
      begin
        Brush.Color := $00FFF9F2;
        FillRect(Rect);
        Font.Style := [fsBold]
      end;
    end;
    dbGridQuestoes.DefaultDrawDataCell(Rect, dbGridQuestoes.columns[DataCol]
      .Field, State);

    // Altura da fonte no centro da célula
    if Column.Field.Alignment = taRightJustify then
    begin
      SetTextAlign((dbGridQuestoes).Canvas.Handle, TA_RIGHT);
      dbGridQuestoes.Canvas.TextRect(Rect, Rect.Right - 2, Rect.Top + 10,
        Column.Field.Text);
    end
    else if Column.Field.Alignment = taCenter then
    begin
      SetTextAlign((dbGridQuestoes).Canvas.Handle, TA_CENTER);
      dbGridQuestoes.Canvas.TextRect(Rect, (Rect.Left + Rect.Right) div 2,
        Rect.Top + 10, Column.Field.Text);
    end
    else
    begin
      SetTextAlign((dbGridQuestoes).Canvas.Handle, TA_LEFT);
      dbGridQuestoes.Canvas.TextRect(Rect, Rect.Left + 2, Rect.Top + 10,
        Column.Field.Text);
    end;

    if (Column.Field = dtmAulasExercicios.qryQuestoesIMAGEM) then
    begin
      dbGridQuestoes.Canvas.FillRect(Rect);
      if (dtmAulasExercicios.qryQuestoesIMAGEM.AsVariant <> null) then
        imgDetail.Draw(dbGridQuestoes.Canvas, Rect.Left + 20, Rect.Top + 10, 0);
    end;

    if (Column.Field = dtmAulasExercicios.qryQuestoesCORRETA) then
    begin
      dbGridQuestoes.Canvas.FillRect(Rect);
      if (dtmAulasExercicios.qryQuestoesCORRETA.Value = 1) then
        imgDetail.Draw(dbGridQuestoes.Canvas, Rect.Left + 35, Rect.Top + 10, 3);
    end;
  end;
end;

procedure TfrmAulasExercicios.dblkcbConteudoEnter(Sender: TObject);
begin
  if not dtmAulasExercicios.qryConteudos.Active then
    dtmAulasExercicios.qryConteudos.Open;
end;

procedure TfrmAulasExercicios.FormActivate(Sender: TObject);
begin
  THackDBGrid(dbGridQuestoes).DefaultRowHeight := 30;
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

procedure TfrmAulasExercicios.FormCreate(Sender: TObject);
begin
  THackDBGrid(dbGridQuestoes).DefaultRowHeight := 30;
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

procedure TfrmAulasExercicios.FormShow(Sender: TObject);
begin
  if not dtmAulasExercicios.qryConteudos.Active then
    dtmAulasExercicios.qryConteudos.Open;

  THackDBGrid(dbGridQuestoes).DefaultRowHeight := 30;
end;

procedure TfrmAulasExercicios.tbsResumoShow(Sender: TObject);
begin
  dtmAulasExercicios.qryQuestoes.Close;
  dtmAulasExercicios.qryQuestoes.ParamByName('COD_AULAS_EXERCICIO').AsInteger :=
    dtmAulas.qryExerciciosCODIGO.AsInteger;
  dtmAulasExercicios.qryQuestoes.Open;

  THackDBGrid(dbGridQuestoes).DefaultRowHeight := 30;
end;

end.
