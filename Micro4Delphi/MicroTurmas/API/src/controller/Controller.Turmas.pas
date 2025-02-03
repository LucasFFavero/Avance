unit Controller.Turmas;

interface

uses
  Horse, System.JSON, Rest.JSON, System.SysUtils, Generics.Collections,
  Horse.GBSwagger, System.Variants, GBSwagger.Path.Attributes,
  GBSwagger.Validator.Attributes, GBSwagger.Validator.Base,
  GBSwagger.Validator.Interfaces, Model.Turmas, Model.Response;

type
  [SwagPath('Turmas', 'Turmas')]

  TControllerTurmas = class
  private
    FRequest: THorseRequest;
    FResponse: THorseResponse;
    function getBody: TModelTurmas;
  public
    [SwagParamBody('body', TModelTurmas)]
    [SwagPOST('', 'Post', true)]
    [SwagResponse(200, TModelTurmas, 'Success')]
    [SwagResponse(400, TModelResponse, 'Bad Request')]
    procedure post;
    [SwagGET('', 'Get', true)]
    [SwagResponse(200, TModelTurmas, 'Success')]
    [SwagResponse(400, TModelResponse, 'Bad Request')]
    procedure get;
    constructor Create(Req: THorseRequest; Res: THorseResponse);
  end;

implementation

uses
  DAO.Turmas;

{ TControllerTurmas }

constructor TControllerTurmas.Create(Req: THorseRequest; Res: THorseResponse);
begin
  FRequest := Req;
  FResponse := Res;
end;

procedure TControllerTurmas.get;
var
  LRetorno: TModelResponse;
  DAOTurmas: TDAOTurmas;
begin
  DAOTurmas := TDAOTurmas.Create;

  try
    try
      FResponse.Status(200).Send<TJSONArray>(DAOTurmas.getTurmas);
    except
      on E: Exception do
      begin
        LRetorno := TModelResponse.Create;
        LRetorno.Status := 400;
        LRetorno.mensagem := E.Message;
        FResponse.Status(400).Send<TJSONObject>
          (TJSON.ObjectToJsonObject(LRetorno, [joIgnoreEmptyArrays,
          joIgnoreEmptyStrings]));
      end;
    end;
  finally
    if DAOTurmas <> nil then
    begin
      DAOTurmas.free;
      DAOTurmas := nil;
    end;
  end;

end;

function TControllerTurmas.getBody: TModelTurmas;
var
  jsonValue: TJSONObject;
  ReqBody: string;
begin
  result := TModelTurmas.Create;
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
        result.codigo := jsonValue.GetValue<integer>('codigo');
      if jsonValue.GetValue('descricao') <> nil then
        result.descricao := jsonValue.GetValue<string>('descricao');
    end;
  end;

end;

procedure TControllerTurmas.post;
var
  Turmas: TModelTurmas;
  LRetorno: TModelResponse;
  DAOTurmas: TDAOTurmas;
begin
  Turmas := getBody;
  DAOTurmas := TDAOTurmas.Create;

  try
    try
      FResponse.Status(200).Send<TJSONObject>(DAOTurmas.setTurmas(Turmas));
    except
      on E: Exception do
      begin
        LRetorno := TModelResponse.Create;
        LRetorno.Status := 400;
        LRetorno.mensagem := E.Message;
        FResponse.Status(400).Send<TJSONObject>
          (TJSON.ObjectToJsonObject(LRetorno, [joIgnoreEmptyArrays,
          joIgnoreEmptyStrings]));
      end;
    end;
  finally
    if Turmas <> nil then
    begin
      Turmas.free;
      Turmas := nil;
    end;

    if DAOTurmas <> nil then
    begin
      DAOTurmas.free;
      DAOTurmas := nil;
    end;
  end;
end;

end.
