unit UdtmFrames_Aulas;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TdtmFrames_Aulas = class(TDataModule)
    qryBuscaAulas: TFDQuery;
    qryBuscaAulasTITULO: TStringField;
    qryBuscaAulasIMAGEM: TBlobField;
    qryBuscaAulasCODIGO: TIntegerField;
    qryBuscaConteudo: TFDQuery;
    qryBuscaConteudoDESCRICAO: TStringField;
    qryBuscaExercicio: TFDQuery;
    qryBuscaExercicioDESCRICAO: TStringField;
    qryBuscaExercicioCOD_CONTEUDO: TIntegerField;
    qryBuscaConteudoCODIGO: TIntegerField;
    qryBuscaExercicioCODIGO: TIntegerField;
    qryBuscaConteudoClicado: TFDQuery;
    qryBuscaConteudoClicadoCODIGO: TIntegerField;
    qryBuscaConteudoClicadoCOD_AULA: TIntegerField;
    qryBuscaConteudoClicadoDESCRICAO: TStringField;
    qryBuscaConteudoClicadoTIPO: TStringField;
    qryBuscaConteudoClicadoIMAGEM: TBlobField;
    qryBuscaConteudoClicadoVIDEO: TBlobField;
    qryBuscaConteudoClicadoAUDIO: TBlobField;
    qryBuscaConteudoClicadoRESUMO: TStringField;
    qryBuscaConteudoClicadoRESUMO_IMAGEM: TBlobField;
    qryBuscaExercicioClicado: TFDQuery;
    dtsBuscaExercicioClicado: TDataSource;
    qryBuscaExercicioClicadoCODIGO: TIntegerField;
    qryBuscaExercicioClicadoCOD_AULA: TIntegerField;
    qryBuscaExercicioClicadoCOD_CONTEUDO: TIntegerField;
    qryBuscaExercicioClicadoDESCRICAO: TStringField;
    qryBuscaExercicioClicadoTIPO: TStringField;
    qryBuscaExercicioClicadoIMAGEM: TBlobField;
    qryBuscaExercicioClicadoVIDEO: TBlobField;
    qryBuscaExercicioClicadoTITULO: TStringField;
    qryBuscaExerciciosQuestoes: TFDQuery;
    qryBuscaExerciciosQuestoesCODIGO: TIntegerField;
    qryBuscaExerciciosQuestoesCOD_AULAS_EXERCICIOS: TIntegerField;
    qryBuscaExerciciosQuestoesDESCRICAO: TStringField;
    qryBuscaExerciciosQuestoesIMAGEM: TBlobField;
    qryBuscaExerciciosQuestoesCORRETA: TSmallintField;
    dtsBuscaExerciciosQuestoes: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtmFrames_Aulas: TdtmFrames_Aulas;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UfrmFrames_Aulas, UdtmMain, UfrmMain;

{$R *.dfm}

end.
