unit UfrmTurmas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvGlowButton, Vcl.ExtCtrls, Data.DB,
  Vcl.StdCtrls, Vcl.DBCtrls, AdvEdit, AdvEdBtn, PlannerDatePicker,
  PlannerDBDatePicker, Vcl.Mask, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls;

type
  TfrmTurmas = class(TForm)
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
    edtCodigo: TDBEdit;
    edtNome: TDBEdit;
    tbsLocalizar: TTabSheet;
    pnlLocalizar: TPanel;
    Label10: TLabel;
    edtLocTurmas: TEdit;
    btnLocalizarUsuarios: TAdvGlowButton;
    dbGridLocalizar: TDBGrid;
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
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dbGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbGridLocalizarDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTurmas: TfrmTurmas;

implementation

{$R *.dfm}

uses UdtmTurmas, UfrmMain;

procedure TfrmTurmas.btnAnteriorClick(Sender: TObject);
begin
  if dtmTurmas.qryTurmas.Active then
    dtmTurmas.qryTurmas.Prior;
end;

procedure TfrmTurmas.btnBuscarClick(Sender: TObject);
begin
  if dtmTurmas.Transaction.Active then
    dtmTurmas.Transaction.Rollback;
  if not dtmTurmas.Transaction.Active then
    dtmTurmas.Transaction.StartTransaction;

  if not dtmTurmas.qryTurmas.Active then
    dtmTurmas.qryTurmas.Open;
end;

procedure TfrmTurmas.btnCancelarClick(Sender: TObject);
begin
  if dtmTurmas.qryTurmas.Active then
    dtmTurmas.qryTurmas.Cancel;

  dtmTurmas.dtsTurmasStateChange(Self);
end;

procedure TfrmTurmas.btnEditarClick(Sender: TObject);
begin
  pnlCadastro.Visible := true;
  dbGrid.Visible := false;

  if dtmTurmas.qryTurmas.Active then
    dtmTurmas.qryTurmas.Edit;
  edtNome.SetFocus;
end;

procedure TfrmTurmas.btnExcluirClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja realmente excluir esse registro?',
    pchar('Atenção - Usuário ' + Copy(frmMain.sbPrincipal.Panels[2].Text, 9, 20)
    ), MB_YesNo + MB_IconQuestion) = idNo then
    Abort;

  pnlCadastro.Visible := true;
  dbGrid.Visible := false;

  try
    // Excluir registro
    if dtmTurmas.qryTurmas.Active then
      dtmTurmas.qryTurmas.Delete;
    dtmTurmas.Transaction.CommitRetaining;

    dtmTurmas.dtsTurmasStateChange(Self);
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

procedure TfrmTurmas.btnIncluirClick(Sender: TObject);
begin
  btnBuscarClick(Self);

  pnlCadastro.Visible := true;
  dbGrid.Visible := false;

  dtmTurmas.qryTurmas.Insert;
  edtNome.SetFocus;
end;

procedure TfrmTurmas.btnListarClick(Sender: TObject);
begin
  pgcDadosCadastrais.ActivePage := tbsDadosCadastrais;

  if (pnlCadastro.Visible = true) then
  begin
    pnlCadastro.Visible := false;
    dbGrid.Visible := true;

    btnEditar.Enabled := false;
    btnIncluir.Enabled := false;

    if dtmTurmas.qryTurmas.Active then
      dtmTurmas.qryTurmas.First;

    THackDBGrid(dbGridLocalizar).DefaultRowHeight := 30;
    THackDBGrid(dbGrid).DefaultRowHeight := 30;
  end
  else
  begin
    btnIncluir.Enabled := dtmTurmas.qryTurmas.State = dsBrowse;
    btnEditar.Enabled := (dtmTurmas.qryTurmas.State = dsBrowse) and
      (not(dtmTurmas.qryTurmas.IsEmpty));

    pnlCadastro.Visible := true;
    dbGrid.Visible := false;
  end;
end;

procedure TfrmTurmas.btnLocalizarUsuariosClick(Sender: TObject);
begin
  THackDBGrid(dbGridLocalizar).DefaultRowHeight := 30;
  THackDBGrid(dbGrid).DefaultRowHeight := 30;

  dtmTurmas.qryBuscaTurmas.Close;
  dtmTurmas.qryBuscaTurmas.SQL.Clear;

  dtmTurmas.qryBuscaTurmas.SQL.Add('SELECT TURMAS.CODIGO, TURMAS.DESCRICAO');
  dtmTurmas.qryBuscaTurmas.SQL.Add('FROM TURMAS');

  if (edtLocTurmas.Text <> '') then
  begin
    dtmTurmas.qryBuscaTurmas.SQL.Add('WHERE TURMAS.DESCRICAO LIKE :DESCRICAO');
    dtmTurmas.qryBuscaTurmas.Params[0].DataType := ftString;
    dtmTurmas.qryBuscaTurmas.Params[0].AsString := edtLocTurmas.Text + '%';
  end;

  dtmTurmas.qryBuscaTurmas.SQL.Add('ORDER BY TURMAS.CODIGO');
  dtmTurmas.qryBuscaTurmas.Open;

  if dtmTurmas.qryBuscaTurmas.IsEmpty then
  begin
    Application.MessageBox('Não há registro(s) para esta filtragem.',
      pchar('Atenção - Usuário ' + Copy(frmMain.sbPrincipal.Panels[2].Text, 9,
      20)), 0 + 48 + 0);
    Exit;
  end;

  THackDBGrid(dbGridLocalizar).DefaultRowHeight := 30;
  THackDBGrid(dbGrid).DefaultRowHeight := 30;
end;

procedure TfrmTurmas.btnPrimeiroClick(Sender: TObject);
begin
  if dtmTurmas.qryTurmas.Active then
    dtmTurmas.qryTurmas.First;
end;

procedure TfrmTurmas.btnProximoClick(Sender: TObject);
begin
  if dtmTurmas.qryTurmas.Active then
    dtmTurmas.qryTurmas.Next;
end;

procedure TfrmTurmas.btnSalvarClick(Sender: TObject);
begin
  if Trim(edtNome.Text) = '' then
  begin
    Application.MessageBox('Informe o Nome.',
      pchar('Atenção - Usuário ' + Copy(frmMain.sbPrincipal.Panels[2].Text, 9,
      20)), 0 + 48 + 0);
    edtNome.SetFocus;
    Exit;
  end;

  try
    // Salvar novo registro
    if dtmTurmas.qryTurmas.Active then
      dtmTurmas.qryTurmas.Post;

    dtmTurmas.Transaction.CommitRetaining;
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

procedure TfrmTurmas.btnUltimoClick(Sender: TObject);
begin
  if dtmTurmas.qryTurmas.Active then
    dtmTurmas.qryTurmas.Last;
end;

procedure TfrmTurmas.dbGridDblClick(Sender: TObject);
begin
  btnListarClick(Self);
end;

procedure TfrmTurmas.dbGridDrawColumnCell(Sender: TObject; const Rect: TRect;
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

procedure TfrmTurmas.dbGridLocalizarDblClick(Sender: TObject);
begin
  dtmTurmas.qryTurmas.Locate('CODIGO',
    dtmTurmas.qryBuscaTurmasCODIGO.Value, []);

  pgcDadosCadastrais.TabIndex := 0;
  pnlCadastro.Visible := true;
  dbGrid.Visible := false;

  btnIncluir.Enabled := dtmTurmas.qryTurmas.State = dsBrowse;
  btnEditar.Enabled := (dtmTurmas.qryTurmas.State = dsBrowse) and
    (not(dtmTurmas.qryTurmas.IsEmpty));
  btnExcluir.Enabled := (dtmTurmas.qryTurmas.State = dsBrowse) and
    (not(dtmTurmas.qryTurmas.IsEmpty));
end;

procedure TfrmTurmas.dbGridLocalizarDrawColumnCell(Sender: TObject;
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

procedure TfrmTurmas.FormActivate(Sender: TObject);
begin
  THackDBGrid(dbGridLocalizar).DefaultRowHeight := 30;
  THackDBGrid(dbGrid).DefaultRowHeight := 30;
end;

procedure TfrmTurmas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if dtmTurmas.Transaction.Active then
    dtmTurmas.Transaction.Rollback;

  dtmTurmas.qryTurmas.Close;

  Action := cafree;
  frmTurmas := nil;
end;

procedure TfrmTurmas.FormCreate(Sender: TObject);
begin
  THackDBGrid(dbGridLocalizar).DefaultRowHeight := 30;
  THackDBGrid(dbGrid).DefaultRowHeight := 30;
end;

procedure TfrmTurmas.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmTurmas.tbsLocalizarShow(Sender: TObject);
begin
  THackDBGrid(dbGridLocalizar).DefaultRowHeight := 30;
  THackDBGrid(dbGrid).DefaultRowHeight := 30;

  if dtmTurmas.qryBuscaTurmas.Active then
    dtmTurmas.qryBuscaTurmas.Close;

  edtLocTurmas.Clear;
  edtLocTurmas.SetFocus;
end;

end.
