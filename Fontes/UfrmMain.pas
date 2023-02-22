unit UfrmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.DBGrids,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, midaslib, AdvGlowButton,
  System.ImageList, Vcl.ImgList, cxImageList, cxGraphics, Vcl.Menus,
  Vcl.ComCtrls, Vcl.ExtCtrls, AdvPanel, dxGDIPlusClasses;

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
    btnCadAulas: TAdvGlowButton;
    btnCadUsuarios: TAdvGlowButton;
    btnCadTurmas: TAdvGlowButton;
    pnlAlunos: TPanel;
    ScrollBox1: TScrollBox;
    btnAno1: TAdvGlowButton;
    btnAno2: TAdvGlowButton;
    btnAno3: TAdvGlowButton;
    btnAno4: TAdvGlowButton;
    btnAno5: TAdvGlowButton;
    Panel8: TPanel;
    cxImageList4: TcxImageList;
    Panel9: TPanel;
    Panel7: TPanel;
    Panel3: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel10: TPanel;
    cxImageList5: TcxImageList;
    procedure FormShow(Sender: TObject);
    procedure tPrincipalTimer(Sender: TObject);
    procedure btnCadUsuariosClick(Sender: TObject);
    procedure btnCadEscolasClick(Sender: TObject);
    procedure btnCadTurmasClick(Sender: TObject);
    procedure btnCadAulasClick(Sender: TObject);
    procedure btnAno1Click(Sender: TObject);
    procedure btnAno2Click(Sender: TObject);
    procedure btnAno3Click(Sender: TObject);
    procedure btnAno4Click(Sender: TObject);
    procedure btnAno5Click(Sender: TObject);
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

uses UfrmLogon, UfrmUsuarios, UfrmEscola, UfrmTurmas, UfrmAulas,
  UfrmFrames_Aulas;

procedure TfrmMain.btnAno1Click(Sender: TObject);
begin
  IntAnoClicado := 1;
  if (frmEscola = nil) then
    Application.CreateForm(TfrmFrames_Aulas, frmFrames_Aulas);
end;

procedure TfrmMain.btnAno2Click(Sender: TObject);
begin
  IntAnoClicado := 2;
  if (frmEscola = nil) then
    Application.CreateForm(TfrmFrames_Aulas, frmFrames_Aulas);
end;

procedure TfrmMain.btnAno3Click(Sender: TObject);
begin
  IntAnoClicado := 3;
  if (frmEscola = nil) then
    Application.CreateForm(TfrmFrames_Aulas, frmFrames_Aulas);
end;

procedure TfrmMain.btnAno4Click(Sender: TObject);
begin
  IntAnoClicado := 4;
  if (frmEscola = nil) then
    Application.CreateForm(TfrmFrames_Aulas, frmFrames_Aulas);
end;

procedure TfrmMain.btnAno5Click(Sender: TObject);
begin
  IntAnoClicado := 5;
  if (frmEscola = nil) then
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

procedure TfrmMain.btnCadTurmasClick(Sender: TObject);
begin
  if (frmTurmas = nil) then
    Application.CreateForm(TfrmTurmas, frmTurmas);
end;

procedure TfrmMain.btnCadEscolasClick(Sender: TObject);
begin
  if (frmEscola = nil) then
    Application.CreateForm(TfrmEscola, frmEscola);
end;

procedure TfrmMain.FormShow(Sender: TObject);
begin
  frmLogon.ShowModal;
end;

procedure TfrmMain.tPrincipalTimer(Sender: TObject);
begin
  // Passar informações do dia e hora para o sistema
  sbPrincipal.Panels[0].Text := 'Data: ' +
    FormatDatetime('dddd , dd " de " mmmm "de" yyyy', Date);
  sbPrincipal.Panels[1].Text := 'Hora: ' + FormatDatetime('hh:mm:ss', Time);
  sbPrincipal.Panels[3].Text := 'Avance';
end;

end.
