unit Util.BancoDados;

interface

uses
  udmFiredac, Datasnap.DBClient, Data.SqlExpr, System.SyncObjs,
  FireDAC.Comp.Client;

type
  TUtilBancoDados = class
  private
    class var FFDConnection: TFDConnection;
    class var FDm: TdmFiredac;
  public
    class function getDM: TdmFiredac;
    class function getFDacConnection: TFDConnection;
    class function getFDQuery: TFDQuery;
  end;

implementation

{ TUtilBancoDados }

{ TUtilBancoDados }

class function TUtilBancoDados.getDM: TdmFiredac;
begin
  if FDm = nil then
    FDm := TdmFiredac.Create(nil);
  result := FDm;
end;

class function TUtilBancoDados.getFDacConnection: TFDConnection;
begin
  if FFDConnection = nil then
  begin
    FFDConnection := TFDConnection.Create(nil);
    FFDConnection.Params.Clear;
    FFDConnection.ConnectionDefName := getDM.getConnectionDefName;
    FFDConnection.LoginPrompt := false;
  end;
  result := FFDConnection;
end;

class function TUtilBancoDados.getFDQuery: TFDQuery;
begin
  result := TFDQuery.Create(nil);
  result.Connection := getFDacConnection;
  FFDConnection.Connected := true;
end;

end.
