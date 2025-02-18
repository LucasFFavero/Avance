unit DAO.Users;

interface

uses
  System.JSON, Rest.JSON, System.SysUtils, Model.Users, udmFiredac,
  Datasnap.DBClient, Data.SqlExpr, System.SyncObjs, FireDAC.Comp.Client,
  Model.Response, System.Generics.Collections, uTGenID;

type
  TDAOUsers = class
  private
    FDQuery: TFDQuery;
    function postUsers(const Users: TModelUsers): TModelResponse;
    function getJsonArray(const AValue: TArray<TObject>): TJSONArray;
    function getJsonMsg(const tag, texto: string): TJsonObject;
    procedure closeQuery;
  public
    function setUsers(const Users: TModelUsers): TJsonObject;
    function getUsers: TJSONArray;
    destructor Destroy; override;
  end;

implementation

{ TDAOUsers }

uses Util.Database;

{ TDAOUsers }

procedure TDAOUsers.closeQuery;
begin
  FDQuery.Close;
end;

destructor TDAOUsers.Destroy;
begin
  if FDQuery <> nil then
  begin
    FDQuery.free;
    FDQuery := nil;
  end;
  inherited;
end;

function TDAOUsers.getUsers: TJSONArray;
var
  Users: TModelUsers;
  UsersList: TArray<TObject>;
begin
  result := nil;
  UsersList := TArray<TObject>.Create(nil);
  FDQuery := TUtilDatabase.getFDQuery;

  try
    // SQL command for query
    FDQuery.SQL.Clear;
    FDQuery.SQL.Add('SELECT CODIGO, NOME');
    FDQuery.SQL.Add('FROM USUARIOS');
    FDQuery.SQL.Add('WHERE CODIGO > 0');
    FDQuery.open;

    SetLength(UsersList, FDQuery.RecordCount);

    while not FDQuery.Eof do
    begin
      // Writes the return to the properties of Model.Users
      Users := TModelUsers.Create;
      Users.id := FDQuery.FieldByName('CODIGO').asInteger;
      Users.name := FDQuery.FieldByName('NOME').AsString;

      // Adiciona os dados na lista de usuários
      UsersList[FDQuery.recno - 1] := Users;
      FDQuery.next;
    end;

    // Returns the list in Json format to the controller
    if Length(UsersList) > 0 then
      result := getJsonArray(UsersList);
  finally
    closeQuery;

    if UsersList <> nil then
      UsersList := nil;
  end;
end;

function TDAOUsers.getJsonArray(const AValue: TArray<TObject>): TJSONArray;
var
  i: integer;
begin
  result := TJSONArray.Create;

  try
    if Length(AValue) = 0 then
    begin
      result.Add(getJsonMsg('message', 'Empty File'));
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

function TDAOUsers.getJsonMsg(const tag, texto: string): TJsonObject;
begin
  result := TJsonObject.Create;
  result.AddPair(tag, texto);
end;

function TDAOUsers.postUsers(const Users: TModelUsers)
  : TModelResponse;
begin
  result := TModelResponse.Create;
  result.status := 0;
  result.message := '';

  FDQuery := TUtilDatabase.getFDQuery;

  try
    // SQL command for query
    FDQuery.SQL.Clear;
    FDQuery.SQL.Add('SELECT CODIGO, NOME');
    FDQuery.SQL.Add('FROM USUARIOS');
    FDQuery.SQL.Add('WHERE CODIGO > 0');
    FDQuery.open;

    try
      // Command to include
      FDQuery.Append;
      if Users.ID = 0 then
        FDQuery.FieldByName('CODIGO').asInteger :=
          TGenID.getGenId('GEN_USUARIOS_ID')
      else
        FDQuery.FieldByName('CODIGO').asInteger := Users.ID;
      FDQuery.FieldByName('NOME').AsString := Users.name;
      FDQuery.Post;
    finally
      closeQuery;
    end;
  finally
    result.status := 200;
    result.message := 'Data entered successfully';
  end;
end;

function TDAOUsers.setUsers(const Users: TModelUsers): TJsonObject;
var
  Response: TModelResponse;
  ResponseSucess: TModelResponse;
begin
  ResponseSucess := TModelResponse.Create;
  Response := TModelResponse.Create;

  try
    try
      ResponseSucess := postUsers(Users);
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
