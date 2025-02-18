unit Controller.Schools;

interface

uses
  Horse, System.JSON, Rest.JSON, System.SysUtils, Generics.Collections,
  Horse.GBSwagger, System.Variants, GBSwagger.Path.Attributes,
  GBSwagger.Validator.Attributes, GBSwagger.Validator.Base,
  GBSwagger.Validator.Interfaces, Model.Schools, Model.Response;

type
  [SwagPath('Schools', 'Schools')]

  TControllerSchools = class
  private
    FRequest: THorseRequest;
    FResponse: THorseResponse;
    function getBody: TModelSchools;
  public
    [SwagParamBody('body', TModelSchools)]
    [SwagPOST('', 'Post', true)]
    [SwagResponse(200, TModelSchools, 'Success')]
    [SwagResponse(400, TModelResponse, 'Bad Request')]
    procedure post;
    [SwagGET('', 'Get', true)]
    [SwagResponse(200, TModelSchools, 'Success')]
    [SwagResponse(400, TModelResponse, 'Bad Request')]
    procedure get;
    constructor Create(Req: THorseRequest; Res: THorseResponse);
  end;

implementation

uses
  DAO.Schools;

{ TControllerSchools }

constructor TControllerSchools.Create(Req: THorseRequest; Res: THorseResponse);
begin
  FRequest := Req;
  FResponse := Res;
end;

procedure TControllerSchools.get;
var
  LRetorno: TModelResponse;
  DAOSchools: TDAOSchools;
begin
  DAOSchools := TDAOSchools.Create;

  try
    try
      FResponse.Status(200).Send<TJSONArray>(DAOSchools.getSchools);
    except
      on E: Exception do
      begin
        LRetorno := TModelResponse.Create;
        LRetorno.Status := 400;
        LRetorno.message := E.message;
        FResponse.Status(400).Send<TJSONObject>
          (TJSON.ObjectToJsonObject(LRetorno, [joIgnoreEmptyArrays,
          joIgnoreEmptyStrings]));
      end;
    end;
  finally
    if DAOSchools <> nil then
    begin
      DAOSchools.free;
      DAOSchools := nil;
    end;
  end;

end;

function TControllerSchools.getBody: TModelSchools;
var
  jsonValue: TJSONObject;
  ReqBody: string;
begin
  result := TModelSchools.Create;
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
      if jsonValue.GetValue('nome') <> nil then
        result.nome := jsonValue.GetValue<string>('nome');
    end;
  end;

end;

procedure TControllerSchools.post;
var
  Schools: TModelSchools;
  LRetorno: TModelResponse;
  DAOSchools: TDAOSchools;
begin
  Schools := getBody;
  DAOSchools := TDAOSchools.Create;

  try
    try
      FResponse.Status(200).Send<TJSONObject>(DAOSchools.setSchools(Schools));
    except
      on E: Exception do
      begin
        LRetorno := TModelResponse.Create;
        LRetorno.Status := 400;
        LRetorno.message := E.message;
        FResponse.Status(400).Send<TJSONObject>
          (TJSON.ObjectToJsonObject(LRetorno, [joIgnoreEmptyArrays,
          joIgnoreEmptyStrings]));
      end;
    end;
  finally
    if Schools <> nil then
    begin
      Schools.free;
      Schools := nil;
    end;

    if DAOSchools <> nil then
    begin
      DAOSchools.free;
      DAOSchools := nil;
    end;
  end;
end;

end.
