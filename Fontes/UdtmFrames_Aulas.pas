unit UdtmFrames_Aulas;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TdtmFrames_Aulas = class(TDataModule)
    qryBuscaTurmas: TFDQuery;
    qryBuscaTurmasCODIGO: TIntegerField;
    qryBuscaTurmasCOD_TURMA: TIntegerField;
    qryBuscaTurmasTITULO: TStringField;
    qryBuscaTurmasIMAGEM: TBlobField;
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
