unit UfrmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Menus,
  System.Classes, Vcl.Graphics, Vcl.DBGrids, Vcl.Controls, Vcl.Forms, AdvPanel,
  Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls, Vcl.ActnMenus, dxScreenTip, cxHint,
  Vcl.ImgList, cxImageList, cxGraphics, Vcl.ComCtrls, Vcl.ExtCtrls, AdvMenus,
  Vcl.Dialogs, midaslib, AdvGlowButton, System.ImageList, dxGDIPlusClasses,
  cxClasses, dxCustomHint, AdvOfficeHint, System.IoUtils, System.Types;

type
  THackDBGrid = class(TDBGrid)
    property DefaultRowHeight;
  end;

  TfrmMain = class(TForm)
    cxImageList1: TcxImageList;
    sbPrincipal: TStatusBar;
    tPrincipal: TTimer;
    cxImageList2: TcxImageList;
    cxImageList3: TcxImageList;
    Image1: TImage;
    scol: TcxImageList;
    pnlProfessores: TPanel;
    btnCadEscolas: TAdvGlowButton;
    btnRelatorios: TAdvGlowButton;
    btnCadUsuarios: TAdvGlowButton;
    btnCadTurmas: TAdvGlowButton;
    pnlAlunos: TPanel;
    ScrollBox1: TScrollBox;
    btnAno1: TAdvGlowButton;
    btnAno2: TAdvGlowButton;
    btnAno3: TAdvGlowButton;
    btnAno4: TAdvGlowButton;
    btnAno5: TAdvGlowButton;
    cxImageList4: TcxImageList;
    cxImageList5: TcxImageList;
    btnCadAulas: TAdvGlowButton;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    TimerAbrirAulas: TTimer;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    cxHintStyleController1: TcxHintStyleController;
    procedure FormShow(Sender: TObject);
    procedure tPrincipalTimer(Sender: TObject);
    procedure btnCadUsuariosClick(Sender: TObject);
    procedure btnCadEscolasClick(Sender: TObject);
    procedure btnCadTurmasClick(Sender: TObject);
    procedure btnCadAulasClick(Sender: TObject);
    procedure btnAno2Click(Sender: TObject);
    procedure btnAno3Click(Sender: TObject);
    procedure btnAno4Click(Sender: TObject);
    procedure btnAno5Click(Sender: TObject);
    procedure btnRelatoriosClick(Sender: TObject);
    procedure btnAno1Click(Sender: TObject);
    procedure TimerAbrirAulasTimer(Sender: TObject);
    procedure DeletarDiretorio(const NomeDiretorio: string);
  private
    { Private declarations }
  public
    { Public declarations }
    IntAnoClicado: Integer;
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses UfrmLogon, UfrmUsuarios, UfrmEscolas, UfrmTurmas, UfrmAulas,
  UfrmFrames_Aulas, UfrmRelatorios, UdtmMain;

procedure TfrmMain.btnAno1Click(Sender: TObject);
begin
  IntAnoClicado := 1;
  if (frmFrames_Aulas <> nil) then
    Close;

  if (frmFrames_Aulas = nil) then
    Application.CreateForm(TfrmFrames_Aulas, frmFrames_Aulas);
end;

procedure TfrmMain.btnAno2Click(Sender: TObject);
begin
  IntAnoClicado := 2;
  if (frmFrames_Aulas <> nil) then
    Close;

  if (frmFrames_Aulas = nil) then
    Application.CreateForm(TfrmFrames_Aulas, frmFrames_Aulas);
end;

procedure TfrmMain.btnAno3Click(Sender: TObject);
begin
  IntAnoClicado := 3;

  if (frmFrames_Aulas <> nil) then
    Close;

  if (frmFrames_Aulas = nil) then
    Application.CreateForm(TfrmFrames_Aulas, frmFrames_Aulas);
end;

procedure TfrmMain.btnAno4Click(Sender: TObject);
begin
  IntAnoClicado := 4;

  if (frmFrames_Aulas <> nil) then
    Close;

  if (frmFrames_Aulas = nil) then
    Application.CreateForm(TfrmFrames_Aulas, frmFrames_Aulas);
end;

procedure TfrmMain.btnAno5Click(Sender: TObject);
begin
  IntAnoClicado := 5;

  if (frmFrames_Aulas <> nil) then
    Close;

  if (frmFrames_Aulas = nil) then
    Application.CreateForm(TfrmFrames_Aulas, frmFrames_Aulas);
end;

procedure TfrmMain.btnCadAulasClick(Sender: TObject);
begin
  if (frmAulas = nil) then
    Application.CreateForm(TfrmAulas, frmAulas);
end;

procedure TfrmMain.btnCadUsuariosClick(Sender: TObject);
begin
  if (frmUsuarios = nil) then
    Application.CreateForm(TfrmUsuarios, frmUsuarios);
end;

procedure TfrmMain.btnRelatoriosClick(Sender: TObject);
begin
  if (frmRelatorios = nil) then
    Application.CreateForm(TfrmRelatorios, frmRelatorios);
end;

procedure TfrmMain.DeletarDiretorio(const NomeDiretorio: string);
var
  arquivos: TStringDynArray;
  arquivo: string;
begin
  if TDirectory.Exists(NomeDiretorio) then
  begin
    // obtem todos os arquivos dentro do diretório.
    arquivos := TDirectory.GetFiles(NomeDiretorio);

    // deleta todos os arquivos.
    for arquivo in arquivos do
    begin
      TFile.Delete(arquivo);
    end;

    // se não existir mais arquivos, remove o diretorio.
    if TDirectory.IsEmpty(NomeDiretorio) then
    begin
      TDirectory.Delete(NomeDiretorio);
    end;
  end;
end;

procedure TfrmMain.btnCadTurmasClick(Sender: TObject);
begin
  if (frmTurmas = nil) then
    Application.CreateForm(TfrmTurmas, frmTurmas);
end;

procedure TfrmMain.btnCadEscolasClick(Sender: TObject);
begin
  if (frmEscolas = nil) then
    Application.CreateForm(TfrmEscolas, frmEscolas);
end;

procedure TfrmMain.FormShow(Sender: TObject);
begin
  frmLogon.ShowModal;

  // Verifica se é usuário ou aluno
  if (dtmMain.qryUsuariosALUNO.AsInteger = 1) then
    TimerAbrirAulas.Enabled := True;
end;

procedure TfrmMain.TimerAbrirAulasTimer(Sender: TObject);
begin
  TimerAbrirAulas.Enabled := false;
  frmMain.IntAnoClicado := dtmMain.qryUsuariosCOD_TURMA.AsInteger;
  if (frmFrames_Aulas = nil) then
    Application.CreateForm(TfrmFrames_Aulas, frmFrames_Aulas);
end;

procedure TfrmMain.tPrincipalTimer(Sender: TObject);
begin
  // Passar informações do dia e hora para o sistema
  sbPrincipal.Panels[0].Text := 'Data: ' +
    FormatDatetime('dddd , dd " de " mmmm "de" yyyy', Date);
  sbPrincipal.Panels[1].Text := 'Hora: ' + FormatDatetime('hh:mm:ss', Time);
  sbPrincipal.Panels[4].Text := 'Avance';
end;

end.
