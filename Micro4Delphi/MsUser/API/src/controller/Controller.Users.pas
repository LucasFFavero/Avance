unit Controller.Users;

interface

uses
  Horse, System.JSON, Rest.JSON, System.SysUtils, Generics.Collections,
  Horse.GBSwagger, System.Variants, GBSwagger.Path.Attributes,
  GBSwagger.Validator.Attributes, GBSwagger.Validator.Base,
  GBSwagger.Validator.Interfaces, Model.Users, Model.Response;

type
  [SwagPath('Users', 'Users')]

  TControllerUsers = class
  private
    FRequest: THorseRequest;
    FResponse: THorseResponse;
    function getBody: TModelUsers;
  public
    // Swagger commands for documentation
    [SwagParamBody('body', TModelUsers)]

    // Post Methods
    [SwagPOST('', 'Post', true)]
    [SwagResponse(200, TModelUsers, 'Success')]
    [SwagResponse(400, TModelResponse, 'Bad Request')]

    // Post procedure that calls the setUsers method of the DAOUsers layer
    procedure post;

    // Get Methods
    [SwagGET('', 'Get', true)]
    [SwagResponse(200, TModelUsers, 'Success')]
    [SwagResponse(400, TModelResponse, 'Bad Request')]

    // Get procedure that calls the getUsers method of the DAOUsers layer
    procedure get;

    constructor Create(Req: THorseRequest; Res: THorseResponse);
  end;

implementation

uses
  DAO.Users;

{ TControllerUsers }

constructor TControllerUsers.Create(Req: THorseRequest; Res: THorseResponse);
begin
  FRequest := Req;
  FResponse := Res;
end;

procedure TControllerUsers.get;
var
  LRetorno: TModelResponse;
  DAOUsers: TDAOUsers;
begin
  DAOUsers := TDAOUsers.Create;

  try
    try
      // Realiza a chamada do método getUsers da camada DAOUsers
      FResponse.Status(200).Send<TJSONArray>(DAOUsers.getUsers);
    except
      on E: Exception do
      begin
        LRetorno := TModelResponse.Create;
        LRetorno.Status := 400;
        LRetorno.message := E.Message;

        // Retorna o Json como objeto para a camada cliente
        FResponse.Status(400).Send<TJSONObject>
          (TJSON.ObjectToJsonObject(LRetorno, [joIgnoreEmptyArrays,
          joIgnoreEmptyStrings]));
      end;
    end;
  finally
    if DAOUsers <> nil then
    begin
      DAOUsers.free;
      DAOUsers := nil;
    end;
  end;
end;

function TControllerUsers.getBody: TModelUsers;
var
  jsonValue: TJSONObject;
  ReqBody: string;
begin
  result := TModelUsers.Create;
  ReqBody := FRequest.Body;

  if copy(ReqBody, 1, 1) = '[' then
  begin
    ReqBody := StringReplace(ReqBody, '#92', '\', [rfReplaceAll]);
    ReqBody := copy(ReqBody, 2, length(ReqBody) - 2);
  end;

  if ReqBody <> '' then
  begin
    jsonValue := TJSONObject.ParseJSONValue(ReqBody) as TJSONObject;

    if jsonValue <> nil then
    begin
      if jsonValue.GetValue('codigo') <> nil then
        result.id := jsonValue.GetValue<integer>('codigo');
      if jsonValue.GetValue('nome') <> nil then
        result.name := jsonValue.GetValue<string>('nome');
    end;
  end;
end;

procedure TControllerUsers.post;
var
  Users: TModelUsers;
  LRetorno: TModelResponse;
  DAOUsers: TDAOUsers;
begin
  Users := getBody;
  DAOUsers := TDAOUsers.Create;

  try
    try
      // Calls the setUsers method of the DAOUsers layer
      FResponse.Status(200).Send<TJSONObject>(DAOUsers.setUsers(Users));
    except
      on E: Exception do
      begin
        LRetorno := TModelResponse.Create;
        LRetorno.Status := 400;
        LRetorno.message := E.Message;

        // Returns Json as object to client layer
        FResponse.Status(400).Send<TJSONObject>
          (TJSON.ObjectToJsonObject(LRetorno, [joIgnoreEmptyArrays,
          joIgnoreEmptyStrings]));
      end;
    end;
  finally
    if Users <> nil then
    begin
      Users.free;
      Users := nil;
    end;

    if DAOUsers <> nil then
    begin
      DAOUsers.free;
      DAOUsers := nil;
    end;
  end;
end;

end.
