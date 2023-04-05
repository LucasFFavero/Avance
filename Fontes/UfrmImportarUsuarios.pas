unit UfrmImportarUsuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  AdvGlowButton, Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Datasnap.DBClient, shellapi, Comobj, urlmon, Registry, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, Vcl.OleCtrls, SHDocVw,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TfrmImportarUsuarios = class(TForm)
    pnlTop: TPanel;
    btnSalvar: TAdvGlowButton;
    btnBuscar: TAdvGlowButton;
    btnCancelar: TAdvGlowButton;
    Panel1: TPanel;
    dbGridLocalizar: TDBGrid;
    OpenDialog: TOpenDialog;
    cldsImportar: TClientDataSet;
    cldsImportarEmail: TStringField;
    cldsImportarPassword: TStringField;
    cldsImportarQuota: TStringField;
    cldsImportarUsuario: TStringField;
    dtsImportar: TDataSource;
    qryIncluirUsuario: TFDQuery;
    TransactionIncluir: TFDTransaction;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmImportarUsuarios: TfrmImportarUsuarios;

implementation

{$R *.dfm}

uses UfrmMain;

procedure TfrmImportarUsuarios.btnBuscarClick(Sender: TObject);
var
  Excel, Livro, Planilha, Range: OleVariant;
  Dados: Variant;
  i, j: Integer;
const
  xlDown = -4121;
begin
  OpenDialog.Execute;

  if (OpenDialog.FileName <> '') then
  begin
    Excel := CreateOleObject('Excel.Application');

    try
      Livro := Excel.WorkBooks.Open(OpenDialog.FileName);
      Planilha := Excel.WorkBooks[1].Sheets[1];

      Range := Planilha.Range['A2', Planilha.Range['O2'].End[xlDown]];
      Dados := Range.Value;

      cldsImportar.DisableControls;
      cldsImportar.EmptyDataSet;
      cldsImportar.First;

      for i := 1 to VarArrayHighBound(Dados, 1) do
      begin
        if (Dados[i, 1] = '') then
          Break;

        cldsImportar.Append;
        cldsImportarUsuario.AsString :=
          Copy(Dados[i, 1], 1, Pos('@', Dados[i, 1]) - 1);
        cldsImportarEmail.AsString := Dados[i, 1];
        cldsImportarPassword.AsString := Dados[i, 2];
        cldsImportarQuota.AsString := Dados[i, 3];
        cldsImportar.Post;
      end;

    finally
      Range := Unassigned;
      Planilha := Unassigned;
      Livro := Unassigned;
      Excel.Quit;
      Excel := Unassigned;

      cldsImportar.First;
      cldsImportar.EnableControls;
    end;
  end;
end;

procedure TfrmImportarUsuarios.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmImportarUsuarios.btnSalvarClick(Sender: TObject);
begin
  try
    if TransactionIncluir.Active then
      TransactionIncluir.Rollback;
    if not TransactionIncluir.Active then
      TransactionIncluir.StartTransaction;

    cldsImportar.First;
    while not cldsImportar.eof do
    begin
      qryIncluirUsuario.Close;
      qryIncluirUsuario.ParamByName('NOME').AsString :=
        cldsImportarUsuario.AsString;
      qryIncluirUsuario.ParamByName('EMAIL').AsString :=
        cldsImportarEmail.AsString;
      qryIncluirUsuario.ParamByName('LOGIN').AsString :=
        cldsImportarUsuario.AsString;
      qryIncluirUsuario.ParamByName('SENHA').AsString :=
        cldsImportarPassword.AsString;
      qryIncluirUsuario.ParamByName('ATIVO').AsInteger := 1;
      qryIncluirUsuario.ParamByName('ALUNO').AsInteger := 1;
      qryIncluirUsuario.ExecSQL;

      cldsImportar.Next;
    end;

    TransactionIncluir.Commit;
  except
    TransactionIncluir.Rollback;

    Application.MessageBox('Erro ao importar Usuário(s).',
      pchar('Atenção - Usuário ' + Copy(frmMain.sbPrincipal.Panels[2].Text, 9,
      20)), 0 + 16 + 0);
    Exit;
  end;

  Application.MessageBox('Usuário(s) importado(s) com sucesso.',
    pchar('Atenção - Usuário ' + Copy(frmMain.sbPrincipal.Panels[2].Text, 9, 20)
    ), 0 + 64 + 0);

  cldsImportar.EmptyDataSet;
  Close;
end;

procedure TfrmImportarUsuarios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
  frmImportarUsuarios := nil;
end;

end.
