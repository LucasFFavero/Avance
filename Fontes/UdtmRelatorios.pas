unit UdtmRelatorios;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Datasnap.DBClient;

type
  TdtmRelatorios = class(TDataModule)
    qryEscolas: TFDQuery;
    qryEscolasCODIGO: TIntegerField;
    qryEscolasNOME: TStringField;
    qryEscolasCIDADE: TStringField;
    qryEscolasESTADO: TStringField;
    dtsEscolas: TDataSource;
    qryTurmas: TFDQuery;
    qryTurmasCODIGO: TIntegerField;
    qryTurmasDESCRICAO: TStringField;
    dtsTurmas: TDataSource;
    qryUsuarios: TFDQuery;
    qryUsuariosCODIGO: TIntegerField;
    qryUsuariosNOME: TStringField;
    qryUsuariosCOD_ESCOLA: TIntegerField;
    qryUsuariosCOD_TURMA: TIntegerField;
    qryUsuariosEMAIL: TStringField;
    qryUsuariosLOGIN: TStringField;
    qryUsuariosDATA_NASCIMENTO: TSQLTimeStampField;
    qryUsuariosDATA_INGRESSO: TSQLTimeStampField;
    qryUsuariosULTIMO_ACESSO: TSQLTimeStampField;
    dtsUsuarios: TDataSource;
    qryAlunos: TFDQuery;
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
    dtsAlunos: TDataSource;
    qryAcessos: TFDQuery;
    qryAcessosCODIGO: TIntegerField;
    qryAcessosENTRADA: TSQLTimeStampField;
    qryAcessosSAIDA: TSQLTimeStampField;
    dtsAcessos: TDataSource;
    cldsAcesso: TClientDataSet;
    cldsAcessoCODIGO: TIntegerField;
    cldsAcessoENTRADA: TStringField;
    cldsAcessoSAIDA: TStringField;
    cldsAcessoTEMPO: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtmRelatorios: TdtmRelatorios;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
