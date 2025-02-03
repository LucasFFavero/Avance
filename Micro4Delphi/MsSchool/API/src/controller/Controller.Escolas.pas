unit Controller.Escolas;

interface

uses
  Horse, System.JSON, Rest.JSON, System.SysUtils, Generics.Collections,
  Horse.GBSwagger, System.Variants, GBSwagger.Path.Attributes,
  GBSwagger.Validator.Attributes, GBSwagger.Validator.Base,
  GBSwagger.Validator.Interfaces, Model.Escolas, Model.Response;

type
  [SwagPath('Escolas', 'Escolas')]

  TControllerEscolas = class
  private
    FRequest: THorseRequest;
    FResponse: THorseResponse;
    function getBody: TModelEscolas;
  public
    [SwagParamBody('body', TModelEscolas)]
    [SwagPOST('', 'Post', true)]
    [SwagResponse(200, TModelEscolas, 'Success')]
    [SwagResponse(400, TModelResponse, 'Bad Request')]
    procedure post;
    [SwagGET('', 'Get', true)]
    [SwagResponse(200, TModelEscolas, 'Success')]
    [SwagResponse(400, TModelResponse, 'Bad Request')]
    procedure get;
    constructor Create(Req: THorseRequest; Res: THorseResponse);
  end;

implementation

uses
  DAO.Escolas;

{ TControllerEscolas }

constructor TControllerEscolas.Create(Req: THorseRequest; Res: THorseResponse);
begin
  FRequest := Req;
  FResponse := Res;
end;

procedure TControllerEscolas.get;
var
  LRetorno: TModelResponse;
  DAOEscolas: TDAOEscolas;
begin
  DAOEscolas := TDAOEscolas.Create;

  try
    try
      FResponse.Status(200).Send<TJSONArray>(DAOEscolas.getEscolas);
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
    if DAOEscolas <> nil then
    begin
      DAOEscolas.free;
      DAOEscolas := nil;
    end;
  end;

end;

function TControllerEscolas.getBody: TModelEscolas;
var
  jsonValue: TJSONObject;
  ReqBody: string;
begin
  result := TModelEscolas.Create;
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

procedure TControllerEscolas.post;
var
  Escolas: TModelEscolas;
  LRetorno: TModelResponse;
  DAOEscolas: TDAOEscolas;
begin
  Escolas := getBody;
  DAOEscolas := TDAOEscolas.Create;

  try
    try
      FResponse.Status(200).Send<TJSONObject>(DAOEscolas.setEscolas(Escolas));
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
    if Escolas <> nil then
    begin
      Escolas.free;
      Escolas := nil;
    end;

    if DAOEscolas <> nil then
    begin
      DAOEscolas.free;
      DAOEscolas := nil;
    end;
  end;
end;

end.
