unit Controller.Lessons;

interface

uses
  Horse, System.JSON, Rest.JSON, System.SysUtils, Generics.Collections,
  Horse.GBSwagger, System.Variants, GBSwagger.Path.Attributes,
  GBSwagger.Validator.Attributes, GBSwagger.Validator.Base,
  GBSwagger.Validator.Interfaces, Model.Lessons, Model.Response;

type
  [SwagPath('Lessons', 'Lessons')]

  TControllerLessons = class
  private
    FRequest: THorseRequest;
    FResponse: THorseResponse;
    function getBody: TModelLessons;
  public
    // Comandos do Swagger para documentação
    [SwagParamBody('body', TModelLessons)]

    // Métodos Post
    [SwagPOST('', 'Post', true)]
    [SwagResponse(200, TModelLessons, 'Success')]
    [SwagResponse(400, TModelResponse, 'Bad Request')]

    // Procedure post que chama o método setLessons da camada DAOLessons
    procedure post;

    // Métodos Get
    [SwagGET('', 'Get', true)]
    [SwagResponse(200, TModelLessons, 'Success')]
    [SwagResponse(400, TModelResponse, 'Bad Request')]

    // Procedure get que chama o método getLessons da camada DAOLessons
    procedure get;

    constructor Create(Req: THorseRequest; Res: THorseResponse);
  end;

implementation

uses
  DAO.Lessons;

{ TControllerLessons }

constructor TControllerLessons.Create(Req: THorseRequest; Res: THorseResponse);
begin
  FRequest := Req;
  FResponse := Res;
end;

procedure TControllerLessons.get;
var
  LRetorno: TModelResponse;
  DAOLessons: TDAOLessons;
begin
  DAOLessons := TDAOLessons.Create;

  try
    try
      // Calls the getLessons method of the DAOLessons layer
      FResponse.Status(200).Send<TJSONArray>(DAOLessons.getLessons);
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
    if DAOLessons <> nil then
    begin
      DAOLessons.free;
      DAOLessons := nil;
    end;
  end;
end;

function TControllerLessons.getBody: TModelLessons;
var
  jsonValue: TJSONObject;
  ReqBody: string;
begin
  result := TModelLessons.Create;
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

procedure TControllerLessons.post;
var
  Lessons: TModelLessons;
  LRetorno: TModelResponse;
  DAOLessons: TDAOLessons;
begin
  Lessons := getBody;
  DAOLessons := TDAOLessons.Create;

  try
    try
      // Calls the setLessons method of the DAOLessons layer
      FResponse.Status(200).Send<TJSONObject>(DAOLessons.setLessons(Lessons));
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
    if Lessons <> nil then
    begin
      Lessons.free;
      Lessons := nil;
    end;

    if DAOLessons <> nil then
    begin
      DAOLessons.free;
      DAOLessons := nil;
    end;
  end;
end;

end.
