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
    qryGravaAcesso: TFDQuery;
    TransactionAcesso: TFDTransaction;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtmMain: TdtmMain;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

procedure TdtmMain.DataModuleCreate(Sender: TObject);
var
  FArquivo: TextFile;
  Caminho: string;
begin
  // Localizar caminho
  AssignFile(FArquivo, ExtractFilePath(paramstr(0)) + 'Caminho.sys');
  Reset(FArquivo);
  Readln(FArquivo, Caminho);
  closeFile(FArquivo);

  // Conectar Base de Dados
  FDConnectionMain.Connected := false;
  FDConnectionMain.Params.Database := Caminho;
  FDConnectionMain.Connected := true;
end;

end.
