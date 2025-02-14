unit UfrmEscolas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  AdvGlowButton, Vcl.ExtCtrls, Data.DB, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls;

type
  TfrmEscolas = class(TForm)
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
    pgcDadosCadastrais: TPageControl;
    tbsDadosCadastrais: TTabSheet;
    dbGrid: TDBGrid;
    pnlCadastro: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edtCodigo: TDBEdit;
    edtNome: TDBEdit;
    edtCidade: TDBEdit;
    edtEstado: TDBEdit;
    tbsLocalizar: TTabSheet;
    pnlLocalizar: TPanel;
    Label10: TLabel;
    edtLocEscola: TEdit;
    btnLocalizarUsuarios: TAdvGlowButton;
    dbGridLocalizar: TDBGrid;
    lblAPIEscolas: TLabel;
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
    procedure dbGridLocalizarDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dbGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
    procedure getDados;
    procedure setDados;
  public
    { Public declarations }
  end;

var
  frmEscolas: TfrmEscolas;

implementation

{$R *.dfm}

uses UfrmMain, UdtmEscolas, UrelEscolas, RESTRequest4D,
  DataSet.Serialize.Adapter.RESTRequest4D;

procedure TfrmEscolas.btnAnteriorClick(Sender: TObject);
begin
  if dtmEscolas.qryEscolas.Active then
    dtmEscolas.qryEscolas.Prior;
end;

procedure TfrmEscolas.btnBuscarClick(Sender: TObject);
begin
  if dtmEscolas.Transaction.Active then
    dtmEscolas.Transaction.Rollback;
  if not dtmEscolas.Transaction.Active then
    dtmEscolas.Transaction.StartTransaction;

  if not dtmEscolas.qryEscolas.Active then
    dtmEscolas.qryEscolas.Open;

  // Microsserviços ativado
  if (frmMain.blnMicro4Delphi = true) then
    getDados;
end;

procedure TfrmEscolas.btnCancelarClick(Sender: TObject);
begin
  if dtmEscolas.qryEscolas.Active then
    dtmEscolas.qryEscolas.Cancel;

  dtmEscolas.dtsEscolasStateChange(Self);
end;

procedure TfrmEscolas.btnEditarClick(Sender: TObject);
begin
  pnlCadastro.Visible := true;
  dbGrid.Visible := false;

  if dtmEscolas.qryEscolas.Active then
    dtmEscolas.qryEscolas.Edit;
  edtNome.SetFocus;
end;

procedure TfrmEscolas.btnExcluirClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja realmente excluir esse registro?',
    pchar('Atenção - Usuário ' + Copy(frmMain.sbPrincipal.Panels[2].Text, 9, 20)
    ), MB_YesNo + MB_IconQuestion) = idNo then
    Abort;

  pnlCadastro.Visible := true;
  dbGrid.Visible := false;

  try
    // Excluir registro
    if dtmEscolas.qryEscolas.Active then
      dtmEscolas.qryEscolas.Delete;
    dtmEscolas.Transaction.CommitRetaining;

    dtmEscolas.dtsEscolasStateChange(Self);
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

procedure TfrmEscolas.btnImprimirClick(Sender: TObject);
begin
  if dtmEscolas.qryEscolas.IsEmpty then
  begin
    Application.MessageBox('Não há registro(s) para imprimir.',
      pchar('Atenção - Usuário ' + Copy(frmMain.sbPrincipal.Panels[2].Text, 9,
      20)), 0 + 48 + 0);
    Exit;
  end;

  relEscolas := nil;
  Application.CreateForm(TrelEscolas, relEscolas);
  relEscolas.qrEscolas.Preview;

  dtmEscolas.qryEscolas.First;
end;

procedure TfrmEscolas.btnIncluirClick(Sender: TObject);
begin
  btnBuscarClick(Self);

  pnlCadastro.Visible := true;
  dbGrid.Visible := false;

  dtmEscolas.qryEscolas.Insert;
  edtNome.SetFocus;
end;

procedure TfrmEscolas.btnListarClick(Sender: TObject);
begin
  pgcDadosCadastrais.ActivePage := tbsDadosCadastrais;

  if (pnlCadastro.Visible = true) then
  begin
    pnlCadastro.Visible := false;
    dbGrid.Visible := true;

    btnEditar.Enabled := false;
    btnIncluir.Enabled := false;

    if dtmEscolas.qryEscolas.Active then
      dtmEscolas.qryEscolas.First;

    THackDBGrid(dbGridLocalizar).DefaultRowHeight := 30;
    THackDBGrid(dbGrid).DefaultRowHeight := 30;
  end
  else
  begin
    btnIncluir.Enabled := dtmEscolas.qryEscolas.State = dsBrowse;
    btnEditar.Enabled := (dtmEscolas.qryEscolas.State = dsBrowse) and
      (not(dtmEscolas.qryEscolas.IsEmpty));

    pnlCadastro.Visible := true;
    dbGrid.Visible := false;
  end;
end;

procedure TfrmEscolas.btnLocalizarUsuariosClick(Sender: TObject);
begin
  dtmEscolas.qryBuscaEscolas.Close;
  dtmEscolas.qryBuscaEscolas.SQL.Clear;

  dtmEscolas.qryBuscaEscolas.SQL.Add
    ('SELECT ESCOLA.CODIGO, ESCOLA.NOME, ESCOLA.CIDADE, ESCOLA.ESTADO');
  dtmEscolas.qryBuscaEscolas.SQL.Add('FROM ESCOLA');

  if (edtLocEscola.Text <> '') then
  begin
    dtmEscolas.qryBuscaEscolas.SQL.Add('WHERE ESCOLA.NOME LIKE :NOME');
    dtmEscolas.qryBuscaEscolas.Params[0].DataType := ftString;
    dtmEscolas.qryBuscaEscolas.Params[0].AsString := edtLocEscola.Text + '%';
  end;

  dtmEscolas.qryBuscaEscolas.SQL.Add('ORDER BY ESCOLA.CODIGO');
  dtmEscolas.qryBuscaEscolas.Open;

  THackDBGrid(dbGridLocalizar).DefaultRowHeight := 30;
  THackDBGrid(dbGrid).DefaultRowHeight := 30;

  if dtmEscolas.qryBuscaEscolas.IsEmpty then
  begin
    Application.MessageBox('Não há registro(s) para esta filtragem.',
      pchar('Atenção - Usuário ' + Copy(frmMain.sbPrincipal.Panels[2].Text, 9,
      20)), 0 + 48 + 0);
    Exit;
  end;
end;

procedure TfrmEscolas.btnPrimeiroClick(Sender: TObject);
begin
  if dtmEscolas.qryEscolas.Active then
    dtmEscolas.qryEscolas.First;
end;

procedure TfrmEscolas.btnProximoClick(Sender: TObject);
begin
  if dtmEscolas.qryEscolas.Active then
    dtmEscolas.qryEscolas.Next;
end;

procedure TfrmEscolas.btnSalvarClick(Sender: TObject);
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
    if dtmEscolas.qryEscolas.Active then
      dtmEscolas.qryEscolas.Post;

    dtmEscolas.Transaction.CommitRetaining;
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

procedure TfrmEscolas.btnUltimoClick(Sender: TObject);
begin
  if dtmEscolas.qryEscolas.Active then
    dtmEscolas.qryEscolas.Last;
end;

procedure TfrmEscolas.dbGridDblClick(Sender: TObject);
begin
  btnListarClick(Self);
end;

procedure TfrmEscolas.dbGridDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if gdSelected in State then
  begin
    with dbGrid.Canvas do
    begin
      Brush.Color := $00FFF9F2;
      FillRect(Rect);
      Font.Style := [fsBold]
    end;
  end;
  dbGrid.DefaultDrawDataCell(Rect, dbGrid.columns[DataCol].Field, State);

  // Altura da fonte no centro da célula
  if Column.Field.Alignment = taRightJustify then
  begin
    SetTextAlign((dbGrid).Canvas.Handle, TA_RIGHT);
    dbGrid.Canvas.TextRect(Rect, Rect.Right - 2, Rect.Top + 10,
      Column.Field.Text);
  end
  else if Column.Field.Alignment = taCenter then
  begin
    SetTextAlign((dbGrid).Canvas.Handle, TA_CENTER);
    dbGrid.Canvas.TextRect(Rect, (Rect.Left + Rect.Right) div 2, Rect.Top + 10,
      Column.Field.Text);
  end
  else
  begin
    SetTextAlign((dbGrid).Canvas.Handle, TA_LEFT);
    dbGrid.Canvas.TextRect(Rect, Rect.Left + 2, Rect.Top + 10,
      Column.Field.Text);
  end;
end;

procedure TfrmEscolas.dbGridLocalizarDblClick(Sender: TObject);
begin
  dtmEscolas.qryEscolas.Locate('CODIGO',
    dtmEscolas.qryBuscaEscolasCODIGO.Value, []);

  pgcDadosCadastrais.TabIndex := 0;
  pnlCadastro.Visible := true;
  dbGrid.Visible := false;

  btnIncluir.Enabled := dtmEscolas.qryEscolas.State = dsBrowse;
  btnEditar.Enabled := (dtmEscolas.qryEscolas.State = dsBrowse) and
    (not(dtmEscolas.qryEscolas.IsEmpty));
  btnExcluir.Enabled := (dtmEscolas.qryEscolas.State = dsBrowse) and
    (not(dtmEscolas.qryEscolas.IsEmpty));
end;

procedure TfrmEscolas.dbGridLocalizarDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if gdSelected in State then
  begin
    with dbGridLocalizar.Canvas do
    begin
      Brush.Color := $00FFF9F2;
      FillRect(Rect);
      Font.Style := [fsBold]
    end;
  end;
  dbGridLocalizar.DefaultDrawDataCell(Rect, dbGridLocalizar.columns[DataCol]
    .Field, State);

  // Altura da fonte no centro da célula
  if Column.Field.Alignment = taRightJustify then
  begin
    SetTextAlign((dbGridLocalizar).Canvas.Handle, TA_RIGHT);
    dbGridLocalizar.Canvas.TextRect(Rect, Rect.Right - 2, Rect.Top + 10,
      Column.Field.Text);
  end
  else if Column.Field.Alignment = taCenter then
  begin
    SetTextAlign((dbGridLocalizar).Canvas.Handle, TA_CENTER);
    dbGridLocalizar.Canvas.TextRect(Rect, (Rect.Left + Rect.Right) div 2,
      Rect.Top + 10, Column.Field.Text);
  end
  else
  begin
    SetTextAlign((dbGridLocalizar).Canvas.Handle, TA_LEFT);
    dbGridLocalizar.Canvas.TextRect(Rect, Rect.Left + 2, Rect.Top + 10,
      Column.Field.Text);
  end;
end;

procedure TfrmEscolas.FormActivate(Sender: TObject);
begin
  THackDBGrid(dbGridLocalizar).DefaultRowHeight := 30;
  THackDBGrid(dbGrid).DefaultRowHeight := 30;
end;

procedure TfrmEscolas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if dtmEscolas.Transaction.Active then
    dtmEscolas.Transaction.Rollback;

  dtmEscolas.qryEscolas.Close;

  Action := cafree;
  frmEscolas := nil;
end;

procedure TfrmEscolas.FormCreate(Sender: TObject);
begin
  THackDBGrid(dbGridLocalizar).DefaultRowHeight := 30;
  THackDBGrid(dbGrid).DefaultRowHeight := 30;
end;

procedure TfrmEscolas.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmEscolas.FormShow(Sender: TObject);
begin
  THackDBGrid(dbGridLocalizar).DefaultRowHeight := 30;
  THackDBGrid(dbGrid).DefaultRowHeight := 30;
end;

procedure TfrmEscolas.tbsLocalizarShow(Sender: TObject);
begin
  if dtmEscolas.qryBuscaEscolas.Active then
    dtmEscolas.qryBuscaEscolas.Close;

  edtLocEscola.Clear;
  edtLocEscola.SetFocus;

  THackDBGrid(dbGridLocalizar).DefaultRowHeight := 30;
  THackDBGrid(dbGrid).DefaultRowHeight := 30;
end;

procedure TfrmEscolas.getDados;
begin
  TRequest.New.BaseURL('http://localhost:8082/Escolas')
    .Adapters(TDataSetSerializeAdapter.New(dtmEscolas.FDMTEscolas))
    .Accept('application/json').Get;

  lblAPIEscolas.Visible := true;
  lblAPIEscolas.Caption := 'Micro4DelphiEscolas: ' + TRequest.New.BaseURL
    ('http://localhost:8082/ping').Get.Content;
  Application.ProcessMessages;
end;

procedure TfrmEscolas.setDados;
begin
  TRequest.New.BaseURL('http://localhost:8082/Escolas')
    .ContentType('application/json')
    .AddBody('{"codigo":"0","nome":"' + edtNome.Text + '"}').Post;

  lblAPIEscolas.Visible := true;
  lblAPIEscolas.Caption := 'Micro4DelphiEscolas: ' + TRequest.New.BaseURL
    ('http://localhost:8082/ping').Get.Content;
  Application.ProcessMessages;
end;

end.
