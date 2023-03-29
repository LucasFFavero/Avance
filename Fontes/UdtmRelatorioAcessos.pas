unit UdtmRelatorioAcessos;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

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
    qryBuscaUsuarios: TFDQuery;
    dtsBuscaUsuarios: TDataSource;
    qryTurmasCODIGO: TIntegerField;
    qryTurmasDESCRICAO: TStringField;
    qryBuscaUsuariosCODIGO: TIntegerField;
    qryBuscaUsuariosNOME: TStringField;
    qryBuscaUsuariosCOD_ESCOLA: TIntegerField;
    qryBuscaUsuariosESCOLA: TStringField;
    qryBuscaUsuariosCOD_TURMA: TIntegerField;
    qryBuscaUsuariosTURMA: TStringField;
    qryBuscaUsuariosEMAIL: TStringField;
    qryBuscaUsuariosLOGIN: TStringField;
    qryBuscaUsuariosDATA_NASCIMENTO: TSQLTimeStampField;
    qryBuscaUsuariosDATA_INGRESSO: TSQLTimeStampField;
    qryBuscaUsuariosULTIMO_ACESSO: TSQLTimeStampField;
    qryBuscaUsuariosENTRADA: TSQLTimeStampField;
    qryBuscaUsuariosSAIDA: TSQLTimeStampField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtmRelatorioAcessos: TdtmRelatorioAcessos;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
