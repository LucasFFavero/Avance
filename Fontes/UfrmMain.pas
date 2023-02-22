unit UfrmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, midaslib, AdvGlowButton,
  System.ImageList, Vcl.ImgList, cxImageList, cxGraphics, Vcl.Menus,
  Vcl.ComCtrls, Vcl.ExtCtrls, AdvPanel, dxGDIPlusClasses;

type
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
    AdvGlowButton4: TAdvGlowButton;
    AdvGlowButton6: TAdvGlowButton;
    AdvGlowButton7: TAdvGlowButton;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton5: TAdvGlowButton;
    Panel8: TPanel;
    cxImageList4: TcxImageList;
    Panel9: TPanel;
    Panel7: TPanel;
    Panel3: TPanel;
    Panel1: TPanel;
    procedure FormShow(Sender: TObject);
    procedure tPrincipalTimer(Sender: TObject);
    procedure btnCadUsuariosClick(Sender: TObject);
    procedure btnCadEscolasClick(Sender: TObject);
    procedure btnCadTurmasClick(Sender: TObject);
    procedure btnCadAulasClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses UfrmLogon, UfrmUsuarios, UfrmEscola, UfrmTurmas, UfrmAulas;

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
