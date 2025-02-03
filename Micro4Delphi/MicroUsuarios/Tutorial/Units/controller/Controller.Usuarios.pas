unit Controller.Usuarios;

interface

uses
  Horse, System.JSON, Rest.JSON, System.SysUtils, Generics.Collections,
  Horse.GBSwagger, System.Variants, GBSwagger.Path.Attributes,
  GBSwagger.Validator.Attributes, GBSwagger.Validator.Base,
  GBSwagger.Validator.Interfaces, Model.Usuarios, Model.Response;

type
  [SwagPath('Usuarios', 'Usuarios')]

  TControllerUsuarios = class
  private
    FRequest: THorseRequest;
    FResponse: THorseResponse;
    function getBody: TModelUsuarios;
  public
    // Comandos do Swagger para documentação
    [SwagParamBody('body', TModelUsuarios)]

    // Métodos Post
    [SwagPOST('', 'Post', true)]
    [SwagResponse(200, TModelUsuarios, 'Success')]
    [SwagResponse(400, TModelResponse, 'Bad Request')]

    // Procedure post que chama o método setUsuarios da camada DAOUsuarios
    procedure post;

    // Métodos Get
    [SwagGET('', 'Get', true)]
    [SwagResponse(200, TModelUsuarios, 'Success')]
    [SwagResponse(400, TModelResponse, 'Bad Request')]

    // Procedure get que chama o método getUsuarios da camada DAOUsuarios
    procedure get;

    constructor Create(Req: THorseRequest; Res: THorseResponse);
  end;

implementation

uses
  DAO.Usuarios;

{ TControllerUsuarios }

constructor TControllerUsuarios.Create(Req: THorseRequest; Res: THorseResponse);
begin
  FRequest := Req;
  FResponse := Res;
end;

procedure TControllerUsuarios.get;
var
  LRetorno: TModelResponse;
  DAOUsuarios: TDAOUsuarios;
begin
  DAOUsuarios := TDAOUsuarios.Create;

  try
    try
      // Realiza a chamada do método getUsuarios da camada DAOUsuarios
      FResponse.Status(200).Send<TJSONArray>(DAOUsuarios.getUsuarios);
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
    if DAOUsuarios <> nil then
    begin
      DAOUsuarios.free;
      DAOUsuarios := nil;
    end;
  end;
end;

function TControllerUsuarios.getBody: TModelUsuarios;
var
  jsonValue: TJSONObject;
  ReqBody: string;
begin
  result := TModelUsuarios.Create;
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

procedure TControllerUsuarios.post;
var
  Usuarios: TModelUsuarios;
  LRetorno: TModelResponse;
  DAOUsuarios: TDAOUsuarios;
begin
  Usuarios := getBody;
  DAOUsuarios := TDAOUsuarios.Create;

  try
    try
      // Realiza a chamada do método setUsuarios da camada DAOUsuarios
      FResponse.Status(200).Send<TJSONObject>
        (DAOUsuarios.setUsuarios(Usuarios));
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
    if Usuarios <> nil then
    begin
      Usuarios.free;
      Usuarios := nil;
    end;

    if DAOUsuarios <> nil then
    begin
      DAOUsuarios.free;
      DAOUsuarios := nil;
    end;
  end;
end;

end.
