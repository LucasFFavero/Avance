unit Utils.ObjectToJson;

interface

uses
  System.Generics.Collections, System.Json, rest.Json;

type
  TUtilsObjectToJson = class
  public
    class function getJson(const AValue: TObject): TJsonObject;
    class function getJsonReturn(const erro: boolean; const msg: string)
      : TJsonObject;
  end;

implementation

{ TUtilsObjectToJson }

class function TUtilsObjectToJson.getJson(const AValue: TObject): TJsonObject;
var
  jsonArray: TJsonArray;
begin
  result := TJson.ObjectToJsonObject(AValue);
end;

class function TUtilsObjectToJson.getJsonReturn(const erro: boolean;
  const msg: string): TJsonObject;
begin
  result := TJsonObject.Create;

  if erro then
  begin
    result.AddPair('status', 'erro');
    result.AddPair('mensagem', msg);
  end
  else
  begin
    result.AddPair('status', 'ok');
    result.AddPair('mensagem', msg);
  end
end;

end.
