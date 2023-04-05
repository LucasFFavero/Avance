unit UdtmRelatorioAcessos;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB, Vcl.Forms,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Datasnap.DBClient;

type
  TdtmRelatorioAcessos = class(TDataModule)
    qryEscolas: TFDQuery;
    qryEscolasCODIGO: TIntegerField;
    qryEscolasNOME: TStringField;
    qryEscolasCIDADE: TStringField;
    qryEscolasESTADO: TStringField;
    dtsEscolas: TDataSource;
    qryTurmas: TFDQuery;
    dtsTurmas: TDataSource;
    qryAlunos: TFDQuery;
    dtsAlunos: TDataSource;
    qryTurmasCODIGO: TIntegerField;
    qryTurmasDESCRICAO: TStringField;
    qryAcessos: TFDQuery;
    dtsAcessos: TDataSource;
    qryAcessosCODIGO: TIntegerField;
    qryAcessosENTRADA: TSQLTimeStampField;
    qryAcessosSAIDA: TSQLTimeStampField;
    qryAlunosCODIGO: TIntegerField;
    qryAlunosNOME: TStringField;
    qryAlunosCOD_ESCOLA: TIntegerField;
    qryAlunosESCOLA: TStringField;
    qryAlunosCOD_TURMA: TIntegerField;
    qryAlunosTURMA: TStringField;
    qryAlunosEMAIL: TStringField;
    qryAlunosLOGIN: TStringField;
    qryAlunosDATA_NASCIMENTO: TSQLTimeStampField;
    qryAlunosDATA_INGRESSO: TSQLTimeStampField;
    qryAlunosULTIMO_ACESSO: TSQLTimeStampField;
    cldsAcesso: TClientDataSet;
    cldsAcessoCODIGO: TIntegerField;
    cldsAcessoENTRADA: TStringField;
    cldsAcessoSAIDA: TStringField;
    cldsAcessoTEMPO: TStringField;
    qryUsuarios: TFDQuery;
    dtsUsuarios: TDataSource;
    qryUsuariosCODIGO: TIntegerField;
    qryUsuariosNOME: TStringField;
    qryUsuariosCOD_ESCOLA: TIntegerField;
    qryUsuariosCOD_TURMA: TIntegerField;
    qryUsuariosEMAIL: TStringField;
    qryUsuariosLOGIN: TStringField;
    qryUsuariosDATA_NASCIMENTO: TSQLTimeStampField;
    qryUsuariosDATA_INGRESSO: TSQLTimeStampField;
    qryUsuariosULTIMO_ACESSO: TSQLTimeStampField;
    procedure qryAlunosAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtmRelatorioAcessos: TdtmRelatorioAcessos;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UfrmRelatorioAcessos;
{$R *.dfm}

procedure TdtmRelatorioAcessos.qryAlunosAfterScroll(DataSet: TDataSet);
var
  Tempo: TTime;
begin
  cldsAcesso.EmptyDataSet;
  Tempo := 0;

  qryAcessos.Close;
  qryAcessos.SQL.Clear;
  qryAcessos.SQL.Add
    ('SELECT USUARIOS_ACESSOS.CODIGO, USUARIOS_ACESSOS.ENTRADA, USUARIOS_ACESSOS.SAIDA');
  qryAcessos.SQL.Add('FROM USUARIOS_ACESSOS');

  // Filtra Usuário
  qryAcessos.SQL.Add('WHERE USUARIOS_ACESSOS.COD_USUARIO =:COD_USUARIO');
  qryAcessos.ParamByName('COD_USUARIO').AsInteger := qryAlunosCODIGO.AsInteger;

  qryAcessos.SQL.Add('ORDER BY USUARIOS_ACESSOS.CODIGO');
  qryAcessos.Open;

  qryAcessos.First;
  while not qryAcessos.eof do
  begin
    cldsAcesso.Append;
    cldsAcessoCODIGO.AsInteger := qryAcessosCODIGO.AsInteger;
    cldsAcessoENTRADA.AsString := qryAcessosENTRADA.AsString;
    cldsAcessoSAIDA.AsString := qryAcessosSAIDA.AsString;
    cldsAcessoTEMPO.AsString :=
      TimetoStr(StrtoTime(Copy(qryAcessosSAIDA.AsString, 12, 8)) -
      StrtoTime(Copy(qryAcessosENTRADA.AsString, 12, 8)));
    cldsAcesso.Post;

    Tempo := Tempo + StrtoTime(Copy(qryAcessosSAIDA.AsString, 12, 8)) -
      StrtoTime(Copy(qryAcessosENTRADA.AsString, 12, 8));

    qryAcessos.Next;
  end;

  frmRelatorioAcessos.lblTempoAcesso.Caption := 'Tempo de acesso: ' +
    TimetoStr(Tempo);
  Application.ProcessMessages;
end;

end.
