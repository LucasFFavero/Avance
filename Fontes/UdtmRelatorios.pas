unit UdtmRelatorios;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TdtmRelatorios = class(TDataModule)
    qryAulas: TFDQuery;
    qryAulasCODIGO: TIntegerField;
    qryAulasCOD_TURMA: TIntegerField;
    qryAulasDESCRICAO: TStringField;
    qryAulasTITULO: TStringField;
    qryAulasIMAGEM: TBlobField;
    dtsAulas: TDataSource;
    qryEscolas: TFDQuery;
    qryEscolasCODIGO: TIntegerField;
    qryEscolasNOME: TStringField;
    qryEscolasCIDADE: TStringField;
    qryEscolasESTADO: TStringField;
    dtsEscolas: TDataSource;
    qryUsuarios: TFDQuery;
    qryUsuariosCODIGO: TIntegerField;
    qryUsuariosNOME: TStringField;
    qryUsuariosCOD_ESCOLA: TIntegerField;
    qryUsuariosESCOLA: TStringField;
    qryUsuariosCOD_TURMA: TIntegerField;
    qryUsuariosTURMA: TStringField;
    qryUsuariosEMAIL: TStringField;
    qryUsuariosLOGIN: TStringField;
    qryUsuariosSENHA: TStringField;
    qryUsuariosDATA_NASCIMENTO: TSQLTimeStampField;
    qryUsuariosATIVO: TSmallintField;
    qryUsuariosGESTOR: TSmallintField;
    qryUsuariosPROFESSOR: TSmallintField;
    qryUsuariosALUNO: TSmallintField;
    qryUsuariosDATA_INGRESSO: TSQLTimeStampField;
    qryUsuariosULTIMO_ACESSO: TSQLTimeStampField;
    dtsUsuarios: TDataSource;
    qryBuscaEscolas: TFDQuery;
    qryBuscaEscolasCODIGO: TIntegerField;
    qryBuscaEscolasNOME: TStringField;
    qryBuscaEscolasCIDADE: TStringField;
    qryBuscaEscolasESTADO: TStringField;
    dtsBuscaEscolas: TDataSource;
    qryBuscaUsuarios: TFDQuery;
    qryBuscaUsuariosCODIGO: TIntegerField;
    qryBuscaUsuariosNOME: TStringField;
    qryBuscaUsuariosCOD_ESCOLA: TIntegerField;
    qryBuscaUsuariosESCOLA: TStringField;
    qryBuscaUsuariosCOD_TURMA: TIntegerField;
    qryBuscaUsuariosTURMA: TStringField;
    qryBuscaUsuariosEMAIL: TStringField;
    qryBuscaUsuariosLOGIN: TStringField;
    qryBuscaUsuariosSENHA: TStringField;
    qryBuscaUsuariosDATA_NASCIMENTO: TSQLTimeStampField;
    qryBuscaUsuariosATIVO: TSmallintField;
    qryBuscaUsuariosGESTOR: TSmallintField;
    qryBuscaUsuariosPROFESSOR: TSmallintField;
    qryBuscaUsuariosALUNO: TSmallintField;
    qryBuscaUsuariosDATA_INGRESSO: TSQLTimeStampField;
    qryBuscaUsuariosULTIMO_ACESSO: TSQLTimeStampField;
    dtsBuscaUsuarios: TDataSource;
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
