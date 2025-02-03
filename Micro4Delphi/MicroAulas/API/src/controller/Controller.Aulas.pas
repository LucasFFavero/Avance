unit Controller.Aulas;

interface

uses
  Horse, System.JSON, Rest.JSON, System.SysUtils, Generics.Collections,
  Horse.GBSwagger, System.Variants, GBSwagger.Path.Attributes,
  GBSwagger.Validator.Attributes, GBSwagger.Validator.Base,
  GBSwagger.Validator.Interfaces, Model.Aulas, Model.Response;

type
  [SwagPath('Aulas', 'Aulas')]

  TControllerAulas = class
  private
    FRequest: THorseRequest;
    FResponse: THorseResponse;
    function getBody: TModelAulas;
  public
    // Comandos do Swagger para documentação
    [SwagParamBody('body', TModelAulas)]

    // Métodos Post
    [SwagPOST('', 'Post', true)]
    [SwagResponse(200, TModelAulas, 'Success')]
    [SwagResponse(400, TModelResponse, 'Bad Request')]

    // Procedure post que chama o método setAulas da camada DAOAulas
    procedure post;

    // Métodos Get
    [SwagGET('', 'Get', true)]
    [SwagResponse(200, TModelAulas, 'Success')]
    [SwagResponse(400, TModelResponse, 'Bad Request')]

    // Procedure get que chama o método getAulas da camada DAOAulas
    procedure get;

    constructor Create(Req: THorseRequest; Res: THorseResponse);
  end;

implementation

uses
  DAO.Aulas;

{ TControllerAulas }

constructor TControllerAulas.Create(Req: THorseRequest; Res: THorseResponse);
begin
  FRequest := Req;
  FResponse := Res;
end;

procedure TControllerAulas.get;
var
  LRetorno: TModelResponse;
  DAOAulas: TDAOAulas;
begin
  DAOAulas := TDAOAulas.Create;

  try
    try
      // Realiza a chamada do método getAulas da camada DAOAulas
      FResponse.Status(200).Send<TJSONArray>(DAOAulas.getAulas);
    except
      on E: Exception do
      begin
        LRetorno := TModelResponse.Create;
        LRetorno.Status := 400;
        LRetorno.mensagem := E.Message;

        // Retorna o Json como objeto para a camada cliente
        FResponse.Status(400).Send<TJSONObject>
          (TJSON.ObjectToJsonObject(LRetorno, [joIgnoreEmptyArrays,
          joIgnoreEmptyStrings]));
      end;
    end;
  finally
    if DAOAulas <> nil then
    begin
      DAOAulas.free;
      DAOAulas := nil;
    end;
  end;
end;

function TControllerAulas.getBody: TModelAulas;
var
  jsonValue: TJSONObject;
  ReqBody: string;
begin
  result := TModelAulas.Create;
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
      if jsonValue.GetValue('titulo') <> nil then
        result.titulo := jsonValue.GetValue<string>('titulo');
    end;
  end;
end;

procedure TControllerAulas.post;
var
  Aulas: TModelAulas;
  LRetorno: TModelResponse;
  DAOAulas: TDAOAulas;
begin
  Aulas := getBody;
  DAOAulas := TDAOAulas.Create;

  try
    try
      // Realiza a chamada do método setAulas da camada DAOAulas
      FResponse.Status(200).Send<TJSONObject>
        (DAOAulas.setAulas(Aulas));
    except
      on E: Exception do
      begin
        LRetorno := TModelResponse.Create;
        LRetorno.Status := 400;
        LRetorno.mensagem := E.Message;

        // Retorna o Json como objeto para a camada cliente
        FResponse.Status(400).Send<TJSONObject>
          (TJSON.ObjectToJsonObject(LRetorno, [joIgnoreEmptyArrays,
          joIgnoreEmptyStrings]));
      end;
    end;
  finally
    if Aulas <> nil then
    begin
      Aulas.free;
      Aulas := nil;
    end;

    if DAOAulas <> nil then
    begin
      DAOAulas.free;
      DAOAulas := nil;
    end;
  end;
end;

end.
