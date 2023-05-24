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
    qryExercicios: TFDQuery;
    dtsExercicios: TDataSource;
    qryExerciciosAULA: TStringField;
    qryExerciciosCONTEUDO: TStringField;
    qryExerciciosEXERCICIO: TStringField;
    qryExerciciosACERTOU: TSmallintField;
    procedure qryAlunosAfterScroll(DataSet: TDataSet);
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

procedure TdtmRelatorios.qryAlunosAfterScroll(DataSet: TDataSet);
begin
  qryExercicios.Close;
  qryExercicios.ParamByName('COD_USUARIO').Value := qryAlunosCODIGO.Value;
  qryExercicios.Open;
end;

end.
