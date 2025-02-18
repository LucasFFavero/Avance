unit DAO.Classes;

interface

uses
  System.JSON, Rest.JSON, System.SysUtils, Model.Classes, udmFiredac,
  Datasnap.DBClient, Data.SqlExpr, System.SyncObjs, FireDAC.Comp.Client,
  Model.Response, System.Generics.Collections, uTGenID;

type
  TDAOClasses = class
  private
    FDQuery: TFDQuery;
    function postClasses(const Classes: TModelClasses): TModelResponse;
    function getJsonArray(const AValue: TArray<TObject>): TJSONArray;
    function getJsonMsg(const tag, texto: string): TJsonObject;
    procedure closeQuery;
  public
    function setClasses(const Classes: TModelClasses): TJsonObject;
    function getClasses: TJSONArray;
    destructor Destroy; override;
  end;

implementation

{ TDAOClasses }

uses Util.Database;

{ TDAOClasses }

procedure TDAOClasses.closeQuery;
begin
  FDQuery.Close;
end;

destructor TDAOClasses.Destroy;
begin
  if FDQuery <> nil then
  begin
    FDQuery.free;
    FDQuery := nil;
  end;
  inherited;
end;

function TDAOClasses.getClasses: TJSONArray;
var
  Classes: TModelClasses;
  ClassesList: TArray<TObject>;
begin
  result := nil;
  ClassesList := TArray<TObject>.Create(nil);
  FDQuery := TUtilDatabase.getFDQuery;

  try
    FDQuery.SQL.Clear;
    FDQuery.SQL.Add('SELECT CODIGO, DESCRICAO');
    FDQuery.SQL.Add('FROM TURMAS');
    FDQuery.SQL.Add('WHERE CODIGO > 0');
    FDQuery.open;

    SetLength(ClassesList, FDQuery.RecordCount);

    while not FDQuery.Eof do
    begin
      Classes := TModelClasses.Create;
      Classes.codigo := FDQuery.FieldByName('CODIGO').asInteger;
      Classes.descricao := FDQuery.FieldByName('DESCRICAO').AsString;
      ClassesList[FDQuery.recno - 1] := Classes;
      FDQuery.next;
    end;

    if Length(ClassesList) > 0 then
      result := getJsonArray(ClassesList);
  finally
    closeQuery;

    if ClassesList <> nil then
      ClassesList := nil;
  end;
end;

function TDAOClasses.getJsonArray(const AValue: TArray<TObject>): TJSONArray;
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

function TDAOClasses.getJsonMsg(const tag, texto: string): TJsonObject;
begin
  result := TJsonObject.Create;
  result.AddPair(tag, texto);
end;

function TDAOClasses.postClasses(const Classes: TModelClasses): TModelResponse;
begin
  result := TModelResponse.Create;
  result.status := 0;
  result.message := '';

  try
    FDQuery := TUtilDatabase.getFDQuery;
    FDQuery.SQL.Clear;
    FDQuery.SQL.Add('SELECT CODIGO, DESCRICAO');
    FDQuery.SQL.Add('FROM TURMAS');
    FDQuery.SQL.Add('WHERE CODIGO > 0');
    FDQuery.open;

    try
      FDQuery.Append;
      if Classes.codigo = 0 then
        FDQuery.FieldByName('CODIGO').asInteger :=
          TGenID.getGenId('GEN_TURMAS_ID')
      else
        FDQuery.FieldByName('CODIGO').asInteger := Classes.codigo;
      FDQuery.FieldByName('DESCRICAO').AsString := Classes.descricao;
      FDQuery.Post;
    finally
      closeQuery;
    end;
  finally
    result.status := 200;
    result.message := 'Data entered successfully';
  end;
end;

function TDAOClasses.setClasses(const Classes: TModelClasses): TJsonObject;
var
  Response: TModelResponse;
  ResponseSucess: TModelResponse;
begin
  ResponseSucess := TModelResponse.Create;
  Response := TModelResponse.Create;

  try
    try
      ResponseSucess := postClasses(Classes);
      result := TJSON.ObjectToJsonObject(ResponseSucess,
        [joIgnoreEmptyArrays, joIgnoreEmptyStrings]);
    except
      on e: exception do
      begin
        Response.status := 400;
        Response.message := e.Message;
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
