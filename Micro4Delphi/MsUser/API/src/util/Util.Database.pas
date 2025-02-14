unit Util.Database;

interface

uses
  udmFiredac, Datasnap.DBClient, Data.SqlExpr, System.SyncObjs,
  FireDAC.Comp.Client;

type
  TUtilDatabase = class
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

class function TUtilDatabase.getDM: TdmFiredac;
begin
  if FDm = nil then
    FDm := TdmFiredac.Create(nil);
  result := FDm;
end;

class function TUtilDatabase.getFDacConnection: TFDConnection;
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

class function TUtilDatabase.getFDQuery: TFDQuery;
begin
  result := TFDQuery.Create(nil);
  result.Connection := getFDacConnection;
  FFDConnection.Connected := true;
end;

end.
