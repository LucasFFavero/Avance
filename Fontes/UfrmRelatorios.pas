unit UfrmRelatorios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, AdvGlowButton, Vcl.DBCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinsDefaultPainters, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, dxDateRanges, cxDBData, cxTextEdit, cxImageComboBox, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxDataControllerConditionalFormattingRulesManagerDialog,
  System.ImageList, Vcl.ImgList, cxImageList;

type
  TfrmRelatorios = class(TForm)
    pnlTop: TPanel;
    gpbFiltros: TGroupBox;
    Label1: TLabel;
    dbcbEscola: TDBLookupComboBox;
    dbcbTurmas: TDBLookupComboBox;
    cbTurmas: TCheckBox;
    dbcbUsuario: TDBLookupComboBox;
    cbUsuario: TCheckBox;
    gpbOpcoes: TGroupBox;
    btnBuscar: TAdvGlowButton;
    btnLimpar: TAdvGlowButton;
    btnImprimir: TAdvGlowButton;
    pnlAlunos: TPanel;
    Panel6: TPanel;
    Label3: TLabel;
    pnlAcessos: TPanel;
    Panel2: TPanel;
    Label2: TLabel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1NOME: TcxGridDBColumn;
    cxGrid1DBTableView1ESCOLA: TcxGridDBColumn;
    cxGrid1DBTableView1TURMA: TcxGridDBColumn;
    cxGrid1DBTableView1EMAIL: TcxGridDBColumn;
    cxGrid1DBTableView1DATA_INGRESSO: TcxGridDBColumn;
    cxGrid1DBTableView1ULTIMO_ACESSO: TcxGridDBColumn;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1AULA: TcxGridDBColumn;
    cxGridDBTableView1CONTEUDO: TcxGridDBColumn;
    cxGridDBTableView1EXERCICIO: TcxGridDBColumn;
    cxGridDBTableView1ACERTOU: TcxGridDBColumn;
    cxImageList1: TcxImageList;
    cxStyleRepository: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    cxStyle10: TcxStyle;
    cxStyle11: TcxStyle;
    cxStyle12: TcxStyle;
    cxStyle13: TcxStyle;
    cxStyle14: TcxStyle;
    cxStyle15: TcxStyle;
    cxStyle16: TcxStyle;
    cxStyle17: TcxStyle;
    cxStyle18: TcxStyle;
    cxStyle19: TcxStyle;
    cxStyle20: TcxStyle;
    cxStyle21: TcxStyle;
    cxStyle22: TcxStyle;
    cxStyle23: TcxStyle;
    cxStyle24: TcxStyle;
    cxStyle25: TcxStyle;
    cxStyle26: TcxStyle;
    cxStyle27: TcxStyle;
    cxStyle28: TcxStyle;
    cxStyleAcessibilidade: TcxStyle;
    CorFiltro: TcxStyle;
    FilterRowText: TcxStyle;
    FilterBox: TcxStyle;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbcbEscolaEnter(Sender: TObject);
    procedure dbcbAlunosEnter(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure dbcbTurmasEnter(Sender: TObject);
    procedure dbcbUsuarioEnter(Sender: TObject);
    procedure cbTurmasClick(Sender: TObject);
    procedure cbUsuarioClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelatorios: TfrmRelatorios;

implementation

{$R *.dfm}

uses UfrmMain, UdtmRelatorios, UrelDesempenhos;

procedure TfrmRelatorios.btnBuscarClick(Sender: TObject);
begin
  btnLimparClick(self);

  if Trim(dbcbEscola.Text) = '' then
  begin
    Application.MessageBox('Selecione a Escola.',
      pchar('Atenção - Usuário ' + Copy(frmMain.sbPrincipal.Panels[2].Text, 9,
      20)), 0 + 48 + 0);
    dbcbEscola.SetFocus;
    Exit;
  end;

  if (cbTurmas.Checked = true) and (Trim(dbcbTurmas.Text) = '') then
  begin
    Application.MessageBox('Selecione a Turma.',
      pchar('Atenção - Usuário ' + Copy(frmMain.sbPrincipal.Panels[2].Text, 9,
      20)), 0 + 48 + 0);
    dbcbTurmas.SetFocus;
    Exit;
  end;

  if (cbUsuario.Checked = true) and (Trim(dbcbUsuario.Text) = '') then
  begin
    Application.MessageBox('Selecione o Aluno.',
      pchar('Atenção - Usuário ' + Copy(frmMain.sbPrincipal.Panels[2].Text, 9,
      20)), 0 + 48 + 0);
    dbcbUsuario.SetFocus;
    Exit;
  end;

  dtmRelatorios.qryAlunos.Close;
  dtmRelatorios.qryAlunos.SQL.Clear;
  dtmRelatorios.qryAlunos.SQL.Add
    ('SELECT USUARIOS.CODIGO, USUARIOS.NOME, USUARIOS.COD_ESCOLA, ESCOLA.NOME AS ESCOLA,');
  dtmRelatorios.qryAlunos.SQL.Add
    ('USUARIOS.COD_TURMA, TURMAS.DESCRICAO AS TURMA, USUARIOS.EMAIL, USUARIOS.LOGIN,');
  dtmRelatorios.qryAlunos.SQL.Add
    ('USUARIOS.DATA_NASCIMENTO, USUARIOS.DATA_INGRESSO, USUARIOS.ULTIMO_ACESSO');
  dtmRelatorios.qryAlunos.SQL.Add('FROM USUARIOS');
  dtmRelatorios.qryAlunos.SQL.Add
    ('INNER JOIN ESCOLA ON (USUARIOS.COD_ESCOLA = ESCOLA.CODIGO)');
  dtmRelatorios.qryAlunos.SQL.Add
    ('INNER JOIN TURMAS ON (USUARIOS.COD_TURMA = TURMAS.CODIGO)');

  dtmRelatorios.qryAlunos.SQL.Add('WHERE USUARIOS.ATIVO = 1');
  dtmRelatorios.qryAlunos.SQL.Add('AND USUARIOS.ALUNO = 1');

  // Filtra Escola
  dtmRelatorios.qryAlunos.SQL.Add('AND ESCOLA.CODIGO =:COD_ESCOLA');
  dtmRelatorios.qryAlunos.ParamByName('COD_ESCOLA').AsInteger :=
    dtmRelatorios.qryEscolasCODIGO.AsInteger;

  // Filtra Turma
  if (cbTurmas.Checked = true) then
  begin
    dtmRelatorios.qryAlunos.SQL.Add('AND TURMAS.CODIGO =:COD_TURMA');
    dtmRelatorios.qryAlunos.ParamByName('COD_TURMA').AsInteger :=
      dtmRelatorios.qryTurmasCODIGO.AsInteger;
  end;

  // Filtra Usuário
  if (cbUsuario.Checked = true) then
  begin
    dtmRelatorios.qryAlunos.SQL.Add('AND USUARIOS.CODIGO =:COD_USUARIO');
    dtmRelatorios.qryAlunos.ParamByName('COD_USUARIO').AsInteger :=
      dtmRelatorios.qryUsuariosCODIGO.AsInteger;
  end;

  dtmRelatorios.qryAlunos.SQL.Add('ORDER BY USUARIOS.CODIGO');
  dtmRelatorios.qryAlunos.Open;

  if dtmRelatorios.qryAlunos.IsEmpty then
  begin
    Application.MessageBox('Não há registros para esta filtragem.',
      pchar('Atenção - Usuário ' + Copy(frmMain.sbPrincipal.Panels[2].Text, 9,
      20)), 0 + 64 + 0);
    Exit;
  end;
end;

procedure TfrmRelatorios.btnImprimirClick(Sender: TObject);
begin
  if dtmRelatorios.qryAlunos.IsEmpty then
  begin
    Application.MessageBox('Não há registro(s) para imprimir.',
      pchar('Atenção - Usuário ' + Copy(frmMain.sbPrincipal.Panels[2].Text, 9,
      20)), 0 + 48 + 0);
    Exit;
  end;

  relDesempenhos := nil;
  Application.CreateForm(TrelDesempenhos, relDesempenhos);
  relDesempenhos.qrDesempenhos.Preview;

  dtmRelatorios.qryAlunos.First;
end;

procedure TfrmRelatorios.btnLimparClick(Sender: TObject);
begin
  dtmRelatorios.qryExercicios.Close;
  dtmRelatorios.qryAlunos.Close;
end;

procedure TfrmRelatorios.cbTurmasClick(Sender: TObject);
begin
  btnLimparClick(self);

  if (cbTurmas.Checked = true) then
    dbcbTurmas.Enabled := true
  else
  begin
    dtmRelatorios.qryTurmas.Close;
    dbcbTurmas.Enabled := false;
  end;
end;

procedure TfrmRelatorios.cbUsuarioClick(Sender: TObject);
begin
  btnLimparClick(self);

  if (cbUsuario.Checked = true) then
    dbcbUsuario.Enabled := true
  else
  begin
    dtmRelatorios.qryUsuarios.Close;
    dbcbUsuario.Enabled := false;
  end;
end;

procedure TfrmRelatorios.dbcbAlunosEnter(Sender: TObject);
begin
  if not dtmRelatorios.qryUsuarios.Active then
    dtmRelatorios.qryUsuarios.Open;
end;

procedure TfrmRelatorios.dbcbEscolaEnter(Sender: TObject);
begin
  dtmRelatorios.qryEscolas.Close;
  dtmRelatorios.qryEscolas.Open;
end;

procedure TfrmRelatorios.dbcbTurmasEnter(Sender: TObject);
begin
  dtmRelatorios.qryTurmas.Close;
  dtmRelatorios.qryTurmas.Open;
end;

procedure TfrmRelatorios.dbcbUsuarioEnter(Sender: TObject);
begin
  dtmRelatorios.qryUsuarios.Close;
  dtmRelatorios.qryUsuarios.Open;
end;

procedure TfrmRelatorios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
  frmRelatorios := nil;
end;

procedure TfrmRelatorios.FormKeyPress(Sender: TObject; var Key: Char);
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
