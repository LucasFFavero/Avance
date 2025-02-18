unit Controller.Classes;

interface

uses
  Horse, System.JSON, Rest.JSON, System.SysUtils, Generics.Collections,
  Horse.GBSwagger, System.Variants, GBSwagger.Path.Attributes,
  GBSwagger.Validator.Attributes, GBSwagger.Validator.Base,
  GBSwagger.Validator.Interfaces, Model.Classes, Model.Response;

type
  [SwagPath('Classes', 'Classes')]

  TControllerClasses = class
  private
    FRequest: THorseRequest;
    FResponse: THorseResponse;
    function getBody: TModelClasses;
  public
    [SwagParamBody('body', TModelCLasses)]
    [SwagPOST('', 'Post', true)]
    [SwagResponse(200, TModelCLasses, 'Success')]
    [SwagResponse(400, TModelResponse, 'Bad Request')]
    procedure post;
    [SwagGET('', 'Get', true)]
    [SwagResponse(200, TModelCLasses, 'Success')]
    [SwagResponse(400, TModelResponse, 'Bad Request')]
    procedure get;
    constructor Create(Req: THorseRequest; Res: THorseResponse);
  end;

implementation

uses
  DAO.Classes;

{ TControllerClasses }

constructor TControllerClasses.Create(Req: THorseRequest; Res: THorseResponse);
begin
  FRequest := Req;
  FResponse := Res;
end;

procedure TControllerClasses.get;
var
  LRetorno: TModelResponse;
  DAOClasses: TDAOClasses;
begin
  DAOClasses := TDAOClasses.Create;

  try
    try
      FResponse.Status(200).Send<TJSONArray>(DAOClasses.getClasses);
    except
      on E: Exception do
      begin
        LRetorno := TModelResponse.Create;
        LRetorno.Status := 400;
        LRetorno.message := E.Message;
        FResponse.Status(400).Send<TJSONObject>
          (TJSON.ObjectToJsonObject(LRetorno, [joIgnoreEmptyArrays,
          joIgnoreEmptyStrings]));
      end;
    end;
  finally
    if DAOClasses <> nil then
    begin
      DAOClasses.free;
      DAOClasses := nil;
    end;
  end;
end;

function TControllerClasses.getBody: TModelClasses;
var
  jsonValue: TJSONObject;
  ReqBody: string;
begin
  result := TModelClasses.Create;
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

procedure TControllerClasses.post;
var
  Classes: TModelClasses;
  LRetorno: TModelResponse;
  DAOClasses: TDAOClasses;
begin
  Classes := getBody;
  DAOClasses := TDAOClasses.Create;

  try
    try
      FResponse.Status(200).Send<TJSONObject>(DAOClasses.setClasses(Classes));
    except
      on E: Exception do
      begin
        LRetorno := TModelResponse.Create;
        LRetorno.Status := 400;
        LRetorno.message := E.Message;
        FResponse.Status(400).Send<TJSONObject>
          (TJSON.ObjectToJsonObject(LRetorno, [joIgnoreEmptyArrays,
          joIgnoreEmptyStrings]));
      end;
    end;
  finally
    if Classes <> nil then
    begin
      Classes.free;
      Classes := nil;
    end;

    if DAOClasses <> nil then
    begin
      DAOClasses.free;
      DAOClasses := nil;
    end;
  end;
end;

end.
