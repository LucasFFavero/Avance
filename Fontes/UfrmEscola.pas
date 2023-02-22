unit UfrmEscola;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvGlowButton, Vcl.ExtCtrls, Data.DB,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls;

type
  TfrmEscola = class(TForm)
    pnlTop: TPanel;
    btnListar: TAdvGlowButton;
    btnSalvar: TAdvGlowButton;
    btnBuscar: TAdvGlowButton;
    btnEditar: TAdvGlowButton;
    btnCancelar: TAdvGlowButton;
    btnExcluir: TAdvGlowButton;
    btnPrimeiro: TAdvGlowButton;
    btnAnterior: TAdvGlowButton;
    btnProximo: TAdvGlowButton;
    btnUltimo: TAdvGlowButton;
    Panel1: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    btnIncluir: TAdvGlowButton;
    btnImprimir: TAdvGlowButton;
    Panel2: TPanel;
    pnlGeral: TPanel;
    pgcDadosCadastrais: TPageControl;
    tbsDadosCadastrais: TTabSheet;
    dbGrid: TDBGrid;
    pnlCadastro: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    edtCodigo: TDBEdit;
    edtNome: TDBEdit;
    tbsLocalizar: TTabSheet;
    pnlLocalizar: TPanel;
    Label10: TLabel;
    edtLocEscola: TEdit;
    btnLocalizarUsuarios: TAdvGlowButton;
    dbGridLocalizar: TDBGrid;
    Label3: TLabel;
    edtCidade: TDBEdit;
    edtEstado: TDBEdit;
    Label4: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnBuscarClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnPrimeiroClick(Sender: TObject);
    procedure btnAnteriorClick(Sender: TObject);
    procedure btnProximoClick(Sender: TObject);
    procedure btnUltimoClick(Sender: TObject);
    procedure btnListarClick(Sender: TObject);
    procedure btnLocalizarUsuariosClick(Sender: TObject);
    procedure tbsLocalizarShow(Sender: TObject);
    procedure dbGridLocalizarDblClick(Sender: TObject);
    procedure dbGridDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEscola: TfrmEscola;

implementation

{$R *.dfm}

uses UdtmEscola, UfrmMain;

procedure TfrmEscola.btnAnteriorClick(Sender: TObject);
begin
  if dtmEscola.qryEscola.Active then
    dtmEscola.qryEscola.Prior;
end;

procedure TfrmEscola.btnBuscarClick(Sender: TObject);
begin
  if dtmEscola.Transaction.Active then
    dtmEscola.Transaction.Rollback;
  if not dtmEscola.Transaction.Active then
    dtmEscola.Transaction.StartTransaction;

  if not dtmEscola.qryEscola.Active then
    dtmEscola.qryEscola.Open;
end;

procedure TfrmEscola.btnCancelarClick(Sender: TObject);
begin
  if dtmEscola.qryEscola.Active then
    dtmEscola.qryEscola.Cancel;

  dtmEscola.dtsEscolaStateChange(Self);
end;

procedure TfrmEscola.btnEditarClick(Sender: TObject);
begin
  pnlCadastro.Visible := true;
  dbGrid.Visible := false;

  if dtmEscola.qryEscola.Active then
    dtmEscola.qryEscola.Edit;
  edtNome.SetFocus;
end;

procedure TfrmEscola.btnExcluirClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja realmente excluir esse registro?',
    pchar('Atenção - Usuário ' + Copy(frmMain.sbPrincipal.Panels[2].Text, 9, 20)
    ), MB_YesNo + MB_IconQuestion) = idNo then
    Abort;

  pnlCadastro.Visible := true;
  dbGrid.Visible := false;

  try
    // Excluir registro
    if dtmEscola.qryEscola.Active then
      dtmEscola.qryEscola.Delete;
    dtmEscola.Transaction.CommitRetaining;

    dtmEscola.dtsEscolaStateChange(Self);
  except
    Application.MessageBox
      ('Erro ao exluir o registro, verifique se ele não está em uso.',
      pchar('Atenção - Usuário ' + Copy(frmMain.sbPrincipal.Panels[2].Text, 9,
      20)), 0 + 16 + 0);
    Exit;
  end;

  Application.MessageBox('Exclusão realizada com sucesso.',
    pchar('Atenção - Usuário ' + Copy(frmMain.sbPrincipal.Panels[2].Text, 9, 20)
    ), 0 + 64 + 0);
end;

procedure TfrmEscola.btnIncluirClick(Sender: TObject);
begin
  btnBuscarClick(Self);

  pnlCadastro.Visible := true;
  dbGrid.Visible := false;

  dtmEscola.qryEscola.Insert;
  edtNome.SetFocus;
end;

procedure TfrmEscola.btnListarClick(Sender: TObject);
begin
  pgcDadosCadastrais.ActivePage := tbsDadosCadastrais;

  if (pnlCadastro.Visible = true) then
  begin
    pnlCadastro.Visible := false;
    dbGrid.Visible := true;

    btnEditar.Enabled := false;
    btnIncluir.Enabled := false;
    dtmEscola.qryEscola.First;
  end
  else
  begin
    btnIncluir.Enabled := dtmEscola.qryEscola.State = dsBrowse;
    btnEditar.Enabled := (dtmEscola.qryEscola.State = dsBrowse) and
      (not(dtmEscola.qryEscola.IsEmpty));

    pnlCadastro.Visible := true;
    dbGrid.Visible := false;
  end;
end;

procedure TfrmEscola.btnLocalizarUsuariosClick(Sender: TObject);
begin
  dtmEscola.qryBuscaEscola.Close;
  dtmEscola.qryBuscaEscola.SQL.Clear;

  dtmEscola.qryBuscaEscola.SQL.Add
    ('SELECT ESCOLA.CODIGO, ESCOLA.NOME, ESCOLA.CIDADE, ESCOLA.ESTADO');
  dtmEscola.qryBuscaEscola.SQL.Add('FROM ESCOLA');

  if (edtLocEscola.Text <> '') then
  begin
    dtmEscola.qryBuscaEscola.SQL.Add('WHERE ESCOLA.NOME LIKE :NOME');
    dtmEscola.qryBuscaEscola.Params[0].DataType := ftString;
    dtmEscola.qryBuscaEscola.Params[0].AsString := edtLocEscola.Text + '%';
  end;

  dtmEscola.qryBuscaEscola.SQL.Add('ORDER BY ESCOLA.CODIGO');
  dtmEscola.qryBuscaEscola.Open;

  if dtmEscola.qryBuscaEscola.IsEmpty then
  begin
    Application.MessageBox('Não há registro(s) para esta filtragem.',
      pchar('Atenção - Usuário ' + Copy(frmMain.sbPrincipal.Panels[2].Text, 9,
      20)), 0 + 48 + 0);
    Exit;
  end;
end;

procedure TfrmEscola.btnPrimeiroClick(Sender: TObject);
begin
  if dtmEscola.qryEscola.Active then
    dtmEscola.qryEscola.First;
end;

procedure TfrmEscola.btnProximoClick(Sender: TObject);
begin
  if dtmEscola.qryEscola.Active then
    dtmEscola.qryEscola.Next;
end;

procedure TfrmEscola.btnSalvarClick(Sender: TObject);
begin
  if Trim(edtNome.Text) = '' then
  begin
    Application.MessageBox('Informe a Descrição.',
      pchar('Atenção - Usuário ' + Copy(frmMain.sbPrincipal.Panels[2].Text, 9,
      20)), 0 + 48 + 0);
    edtNome.SetFocus;
    Exit;
  end;

  try
    // Salvar novo registro
    if dtmEscola.qryEscola.Active then
      dtmEscola.qryEscola.Post;

    dtmEscola.Transaction.CommitRetaining;
  except
    Application.MessageBox(pchar('Erro ao realizar a operação.'),
      pchar('Atenção - Usuário ' + Copy(frmMain.sbPrincipal.Panels[2].Text, 9,
      20)), 0 + 16 + 0);
    edtNome.SetFocus;
    Abort;
  end;

  Application.MessageBox('Operação realizada com sucesso.',
    pchar('Atenção - Usuário ' + Copy(frmMain.sbPrincipal.Panels[2].Text, 9, 20)
    ), 0 + 64 + 0);
end;

procedure TfrmEscola.btnUltimoClick(Sender: TObject);
begin
  if dtmEscola.qryEscola.Active then
    dtmEscola.qryEscola.Last;
end;

procedure TfrmEscola.dbGridDblClick(Sender: TObject);
begin
  btnListarClick(self);
end;

procedure TfrmEscola.dbGridLocalizarDblClick(Sender: TObject);
begin
  dtmEscola.qryEscola.Locate('CODIGO',
    dtmEscola.qryBuscaEscolaCODIGO.Value, []);

  pgcDadosCadastrais.TabIndex := 0;
  pnlCadastro.Visible := true;
  dbGrid.Visible := false;

  btnIncluir.Enabled := dtmEscola.qryEscola.State = dsBrowse;
  btnEditar.Enabled := (dtmEscola.qryEscola.State = dsBrowse) and
    (not(dtmEscola.qryEscola.IsEmpty));
  btnExcluir.Enabled := (dtmEscola.qryEscola.State = dsBrowse) and
    (not(dtmEscola.qryEscola.IsEmpty));
end;

procedure TfrmEscola.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if dtmEscola.Transaction.Active then
    dtmEscola.Transaction.Rollback;

  dtmEscola.qryEscola.Close;

  Action := cafree;
  frmEscola := nil;
end;

procedure TfrmEscola.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmEscola.tbsLocalizarShow(Sender: TObject);
begin
  if dtmEscola.qryBuscaEscola.Active then
    dtmEscola.qryBuscaEscola.Close;

  edtLocEscola.Clear;
  edtLocEscola.SetFocus;
end;

end.
