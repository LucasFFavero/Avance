unit UdtmMain;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Comp.Client, Data.DB,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet;

type
  TdtmMain = class(TDataModule)
    FDConnectionMain: TFDConnection;
    FDTransactionMain: TFDTransaction;
    qryUsuarios: TFDQuery;
    qryUsuariosCODIGO: TFDAutoIncField;
    qryUsuariosNOME: TStringField;
    qryUsuariosLOGIN: TStringField;
    qryUsuariosALUNO: TSmallintField;
    qryUsuariosCOD_TURMA: TIntegerField;
    qryUsuariosPROFESSOR: TSmallintField;
    qryUsuariosGESTOR: TSmallintField;
    qryGravaUltimoAcesso: TFDQuery;
    qryGravaAcesso: TFDQuery;
    TransactionAcesso: TFDTransaction;
    qryAtualizaAcesso: TFDQuery;
    TransactionUltimoAcesso: TFDTransaction;
    qryAcesso: TFDQuery;
    qryAcessoCODIGO: TFDAutoIncField;
    procedure DataModuleCreate(Sender: TObject);
    procedure AtualizaAcesso(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    intCodAcesso: Integer;
  end;

var
  dtmMain: TdtmMain;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

procedure TdtmMain.AtualizaAcesso(Sender: TObject);
begin
  try
    // Atualiza saída
    if dtmMain.TransactionAcesso.Active then
      dtmMain.TransactionAcesso.Rollback;
    if not dtmMain.TransactionAcesso.Active then
      dtmMain.TransactionAcesso.StartTransaction;

    dtmMain.qryAtualizaAcesso.Close;
    dtmMain.qryAtualizaAcesso.ParamByName('SAIDA').Value := now;
    dtmMain.qryAtualizaAcesso.ParamByName('CODIGO').AsInteger :=
      dtmMain.intCodAcesso;
    dtmMain.qryAtualizaAcesso.ExecSql;

    dtmMain.TransactionAcesso.Commit;
  finally

  end;
end;

procedure TdtmMain.DataModuleCreate(Sender: TObject);
var
  FArquivo: TextFile;
  Caminho: string;
begin
  // Localizar caminho
  AssignFile(FArquivo, ExtractFilePath(paramstr(0)) + 'Path.sys');
  Reset(FArquivo);
  Readln(FArquivo, Caminho);
  closeFile(FArquivo);

  // Conectar Base de Dados
  FDConnectionMain.Connected := false;
  FDConnectionMain.Params.Database := Caminho;
  FDConnectionMain.Connected := true;
end;

end.
