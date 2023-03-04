unit UfrmLogon;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Data.DB,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.Mask, Vcl.ExtCtrls, Vcl.Buttons, AdvGlowButton, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxImage, dxGDIPlusClasses, Vcl.Menus, cxButtons,
  AdvGlassButton, AdvShapeButton;

type
  TfrmLogon = class(TForm)
    Image1: TImage;
    edtUsuario: TEdit;
    edtSenha: TEdit;
    AdvShapeButton1: TAdvShapeButton;
    btnLogon: TAdvShapeButton;
    edtFoco: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure AdvShapeButton1Click(Sender: TObject);
    procedure btnLogonClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edtSenhaKeyPress(Sender: TObject; var Key: Char);
    procedure edtSenhaEnter(Sender: TObject);
    procedure edtSenhaExit(Sender: TObject);
    procedure edtUsuarioEnter(Sender: TObject);
    procedure edtUsuarioExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Tentativa: Integer;
  end;

var
  frmLogon: TfrmLogon;

implementation

{$R *.dfm}

uses UfrmLogonTransp, UfrmMain, UdtmMain, UfrmFrames_Aulas;

procedure TfrmLogon.AdvShapeButton1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfrmLogon.btnLogonClick(Sender: TObject);
begin
  if (edtUsuario.Text = '') then
  begin
    Application.MessageBox(PChar('Informe o Usuário.'), 'ATENÇÃO - Usuário ', 0 + 48 + 0);
    edtUsuario.SetFocus;
    Exit;
  end;

  dtmMain.qryUsuarios.Close;
  dtmMain.qryUsuarios.SQL.Clear;
  dtmMain.qryUsuarios.SQL.Add('SELECT USUARIOS.CODIGO, USUARIOS.NOME,  USUARIOS.LOGIN, USUARIOS.ALUNO, USUARIOS.COD_TURMA');
  dtmMain.qryUsuarios.SQL.Add('FROM USUARIOS');

  dtmMain.qryUsuarios.SQL.Add('WHERE USUARIOS.LOGIN =:NOME');
  dtmMain.qryUsuarios.Params[0].DataType := ftString;
  dtmMain.qryUsuarios.Params[0].AsString := AnsiUpperCase(edtUsuario.Text);

  dtmMain.qryUsuarios.SQL.Add('AND USUARIOS.SENHA =:SENHA');
  dtmMain.qryUsuarios.Params[1].DataType := ftString;
  dtmMain.qryUsuarios.Params[1].AsString := edtSenha.Text;
  dtmMain.qryUsuarios.Open;

  if not dtmMain.qryUsuarios.IsEmpty then
  begin
    frmMain.sbPrincipal.Panels[2].Text := 'Usuário: ' + dtmMain.qryUsuariosLOGIN.AsString;

    frmMain.pnlProfessores.Visible := True;
    frmMain.pnlAlunos.Visible := False;

    // Verifica se é usuário ou aluno
    if (dtmMain.qryUsuariosALUNO.AsInteger = 1) then
    begin
      frmMain.pnlAlunos.Visible := False;
      frmMain.pnlProfessores.Visible := False;
    end;

    Application.ProcessMessages;
    Close;
  end
  else
  begin
    // Após 3 tentativas encerrar
    if (Tentativa = 3) then
    begin
      Application.MessageBox(PChar('Senha e/ou Usuário inválido(s)' + #13 + #13 + 'Limite de tentativas excedido...'), 'ATENÇÃO - Usuário ', 0 + 16 + 0);
      Application.Terminate;
    end
    else
    begin
      Application.MessageBox(PChar('Senha e/ou Usuário inválido(s)'), 'ATENÇÃO - Usuário ', 0 + 48 + 0);
      edtUsuario.SetFocus;
      Abort;
    end;
  end;

  Tentativa := Tentativa + 1;
  Close;
end;

procedure TfrmLogon.edtSenhaEnter(Sender: TObject);
begin
  Keypreview := False;

  if edtSenha.Text = 'Senha' then
  begin
    edtSenha.font.color := $00525252;
    edtSenha.Clear;
    edtSenha.PasswordChar := '*';
  end;
  Application.ProcessMessages;
end;

procedure TfrmLogon.edtSenhaExit(Sender: TObject);
begin
  Keypreview := True;

  if (edtSenha.Text = 'Senha') or (edtSenha.Text = '') then
  begin
    edtSenha.font.color := $00C4800F;
    edtSenha.PasswordChar := #0;
    edtSenha.Text := 'Senha'
  end;
  Application.ProcessMessages;
end;

procedure TfrmLogon.edtSenhaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    btnLogonClick(self);
end;

procedure TfrmLogon.edtUsuarioEnter(Sender: TObject);
begin
  if edtUsuario.Text = 'USUÁRIO' then
  begin
    edtUsuario.Clear;
    edtUsuario.font.color := $00525252;
  end;
  Application.ProcessMessages;
end;

procedure TfrmLogon.edtUsuarioExit(Sender: TObject);
begin
  if (edtUsuario.Text = 'USUÁRIO') or (edtUsuario.Text = '') then
  begin
    edtUsuario.font.color := $00C4800F;
    edtUsuario.Text := 'USUÁRIO'
  end;
  Application.ProcessMessages;
end;

procedure TfrmLogon.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  { if (frmLogonTransp <> nil) then
    frmLogonTransp.Close; }

  Action := CaFree;
  frmLogon := nil;
end;

procedure TfrmLogon.FormCreate(Sender: TObject);
var
  region: hrgn;
begin
  region := CreateRoundRectRgn(0, 0, width, height, 10, 10);
  setwindowrgn(handle, region, True);
end;

procedure TfrmLogon.FormKeyPress(Sender: TObject; var Key: Char);
begin
  // Usar "ENTER" como "TAB", pular de campo com enter
  if (Key = #13) then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TfrmLogon.FormShow(Sender: TObject);
begin
  { if (frmLogonTransp = nil) then
    begin
    frmLogonTransp := TfrmLogonTransp.Create(self);
    frmLogonTransp.Show;
    frmLogonTransp.SendToBack;
    end; }

  frmMain.tPrincipal.Enabled := True;
  edtFoco.SetFocus;
  Tentativa := 0;
end;

end.
