unit DAO.Lessons;

interface

uses
  System.JSON, Rest.JSON, System.SysUtils, Model.Lessons, udmFiredac,
  Datasnap.DBClient, Data.SqlExpr, System.SyncObjs, FireDAC.Comp.Client,
  Model.Response, System.Generics.Collections, uTGenID;

type
  TDAOLessons = class
  private
    FDQuery: TFDQuery;
    function postLessons(const Lessons: TModelLessons): TModelResponse;
    function getJsonArray(const AValue: TArray<TObject>): TJSONArray;
    function getJsonMsg(const tag, texto: string): TJsonObject;
    procedure closeQuery;
  public
    function setLessons(const Lessons: TModelLessons): TJsonObject;
    function getLessons: TJSONArray;
    destructor Destroy; override;
  end;

implementation

{ TDAOLessons }

uses Util.Database;

{ TDAOLessons }

procedure TDAOLessons.closeQuery;
begin
  FDQuery.Close;
end;

destructor TDAOLessons.Destroy;
begin
  if FDQuery <> nil then
  begin
    FDQuery.free;
    FDQuery := nil;
  end;
  inherited;
end;

function TDAOLessons.getLessons: TJSONArray;
var
  Lessons: TModelLessons;
  LessonsList: TArray<TObject>;
begin
  result := nil;
  LessonsList := TArray<TObject>.Create(nil);
  FDQuery := TUtilDatabase.getFDQuery;

  try
    // SQL command for query
    FDQuery.SQL.Clear;
    FDQuery.SQL.Add('SELECT CODIGO, TITULO');
    FDQuery.SQL.Add('FROM AULAS');
    FDQuery.SQL.Add('WHERE CODIGO > 0');
    FDQuery.open;

    SetLength(LessonsList, FDQuery.RecordCount);

    while not FDQuery.Eof do
    begin
      // Writes the return in the Model.Lessons properties
      Lessons := TModelLessons.Create;
      Lessons.codigo := FDQuery.FieldByName('CODIGO').asInteger;
      Lessons.titulo := FDQuery.FieldByName('TITULO').AsString;

      // Add data to the Lessons list
      LessonsList[FDQuery.recno - 1] := Lessons;
      FDQuery.next;
    end;

    // Returns the list in Json format to the controller
    if Length(LessonsList) > 0 then
      result := getJsonArray(LessonsList);
  finally
    closeQuery;

    if LessonsList <> nil then
      LessonsList := nil;
  end;
end;

function TDAOLessons.getJsonArray(const AValue: TArray<TObject>): TJSONArray;
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

function TDAOLessons.getJsonMsg(const tag, texto: string): TJsonObject;
begin
  result := TJsonObject.Create;
  result.AddPair(tag, texto);
end;

function TDAOLessons.postLessons(const Lessons: TModelLessons): TModelResponse;
begin
  result := TModelResponse.Create;
  result.status := 0;
  result.Message := '';

  FDQuery := TUtilDatabase.getFDQuery;

  try
    // SQL command for query
    FDQuery.SQL.Clear;
    FDQuery.SQL.Add('SELECT CODIGO, TITULO');
    FDQuery.SQL.Add('FROM AULAS');
    FDQuery.SQL.Add('WHERE CODIGO > 0');
    FDQuery.open;

    try
      // Command to include
      FDQuery.Append;
      if Lessons.codigo = 0 then
        FDQuery.FieldByName('CODIGO').asInteger :=
          TGenID.getGenId('GEN_AULAS_ID')
      else
        FDQuery.FieldByName('CODIGO').asInteger := Lessons.codigo;
      FDQuery.FieldByName('TITULO').AsString := Lessons.titulo;
      FDQuery.Post;
    finally
      closeQuery;
    end;
  finally
    result.status := 200;
    result.Message := 'Data entered successfully';
  end;
end;

function TDAOLessons.setLessons(const Lessons: TModelLessons): TJsonObject;
var
  Response: TModelResponse;
  ResponseSucess: TModelResponse;
begin
  ResponseSucess := TModelResponse.Create;
  Response := TModelResponse.Create;

  try
    try
      ResponseSucess := postLessons(Lessons);
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
