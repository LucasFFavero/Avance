unit uTGenID;

interface

uses system.sysutils, data.db;

type
  TGenID = class
  public
    class function getGenId(const Generator: string): integer;
  end;

implementation

uses FireDAC.Comp.Client, Util.BancoDados;

{ TGenID }

class function TGenID.getGenId(const Generator: string): integer;
var
  FQuery: TFDQuery;
begin
  FQuery := TUtilBancoDados.getFDQuery;
  FQuery.SQL.text := 'select cast(gen_id(' + UpperCase(Generator) +
    ',1) as integer) as codigo FROM RDB$DATABASE';

  try
    FQuery.Open;
    result := FQuery.Fields[0].AsInteger;
    FQuery.close;
  finally
    FQuery.free;
  end;
end;

end.
