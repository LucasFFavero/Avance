unit DAO.Schools;

interface

uses
  System.JSON, Rest.JSON, System.SysUtils, Model.Schools, udmFiredac,
  Datasnap.DBClient, Data.SqlExpr, System.SyncObjs, FireDAC.Comp.Client,
  Model.Response, System.Generics.Collections, uTGenID;

type
  TDAOSchools = class
  private
    FDQuery: TFDQuery;
    function postSchools(const Schools: TModelSchools): TModelResponse;
    function getJsonArray(const AValue: TArray<TObject>): TJSONArray;
    function getJsonMsg(const tag, texto: string): TJsonObject;
    procedure closeQuery;
  public
    function setSchools(const Schools: TModelSchools): TJsonObject;
    function getSchools: TJSONArray;
    destructor Destroy; override;
  end;

implementation

{ TDAOSchools }

uses Util.Database;

{ TDAOSchools }

procedure TDAOSchools.closeQuery;
begin
  FDQuery.Close;
end;

destructor TDAOSchools.Destroy;
begin
  if FDQuery <> nil then
  begin
    FDQuery.free;
    FDQuery := nil;
  end;
  inherited;
end;

function TDAOSchools.getSchools: TJSONArray;
var
  Schools: TModelSchools;
  SchoolsList: TArray<TObject>;
begin
  result := nil;
  SchoolsList := TArray<TObject>.Create(nil);
  FDQuery := TUtilDatabase.getFDQuery;

  try
    FDQuery.SQL.Clear;
    FDQuery.SQL.Add('SELECT CODIGO, NOME');
    FDQuery.SQL.Add('FROM ESCOLA');
    FDQuery.SQL.Add('WHERE CODIGO > 0');
    FDQuery.open;

    SetLength(SchoolsList, FDQuery.RecordCount);

    while not FDQuery.Eof do
    begin
      Schools := TModelSchools.Create;
      Schools.codigo := FDQuery.FieldByName('CODIGO').asInteger;
      Schools.nome := FDQuery.FieldByName('NOME').AsString;
      SchoolsList[FDQuery.recno - 1] := Schools;
      FDQuery.next;
    end;

    if Length(SchoolsList) > 0 then
      result := getJsonArray(SchoolsList);
  finally
    closeQuery;

    if SchoolsList <> nil then
      SchoolsList := nil;
  end;
end;

function TDAOSchools.getJsonArray(const AValue: TArray<TObject>): TJSONArray;
var
  i: integer;
begin
  result := TJSONArray.Create;

  try
    if Length(AValue) = 0 then
    begin
      result.Add(getJsonMsg('message', 'Empty file'));
    end
    else
    begin
      for i := 0 to Length(AValue) - 1 do
        result.Add(TJSON.ObjectToJsonObject(AValue[i]));
    end;
  except
    on e: exception do
    begin
      result.Add(getJsonMsg('error', e.Message));
    end;
  end;
end;

function TDAOSchools.getJsonMsg(const tag, texto: string): TJsonObject;
begin
  result := TJsonObject.Create;
  result.AddPair(tag, texto);
end;

function TDAOSchools.postSchools(const Schools: TModelSchools): TModelResponse;
begin
  result := TModelResponse.Create;
  result.status := 0;
  result.Message := '';

  try
    FDQuery := TUtilDatabase.getFDQuery;
    FDQuery.SQL.Clear;
    FDQuery.SQL.Add('SELECT CODIGO, NOME');
    FDQuery.SQL.Add('FROM ESCOLA');
    FDQuery.SQL.Add('WHERE CODIGO > 0');
    FDQuery.open;

    try
      FDQuery.Append;
      if Schools.codigo = 0 then
        FDQuery.FieldByName('CODIGO').asInteger :=
          TGenID.getGenId('GEN_ESCOLA_ID')
      else
        FDQuery.FieldByName('CODIGO').asInteger := Schools.codigo;
      FDQuery.FieldByName('NOME').AsString := Schools.nome;
      FDQuery.Post;
    finally
      closeQuery;
    end;
  finally
    result.status := 200;
    result.message := 'Data entered successfully';
  end;
end;

function TDAOSchools.setSchools(const Schools: TModelSchools): TJsonObject;
var
  Response: TModelResponse;
  ResponseSucess: TModelResponse;
begin
  ResponseSucess := TModelResponse.Create;
  Response := TModelResponse.Create;

  try
    try
      ResponseSucess := postSchools(Schools);
      result := TJSON.ObjectToJsonObject(ResponseSucess,
        [joIgnoreEmptyArrays, joIgnoreEmptyStrings]);
    except
      on e: exception do
      begin
        Response.status := 400;
        Response.Message := e.Message;
        result := TJSON.ObjectToJsonObject(Response,
          [joIgnoreEmptyArrays, joIgnoreEmptyStrings]);
      end;
    end;
  finally

    if Response <> nil then
    begin
      Response.free;
      Response := nil;
    end;
    if ResponseSucess <> nil then
    begin
      ResponseSucess.free;
      ResponseSucess := nil;
    end;
  end;

end;

end.
