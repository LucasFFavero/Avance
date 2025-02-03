unit DAO.Usuarios;

interface

uses
  System.JSON, Rest.JSON, System.SysUtils, Model.Usuarios, udmFiredac,
  Datasnap.DBClient, Data.SqlExpr, System.SyncObjs, FireDAC.Comp.Client,
  Model.Response, System.Generics.Collections, uTGenID;

type
  TDAOUsuarios = class
  private
    FDQuery: TFDQuery;
    function postUsuarios(const Usuarios: TModelUsuarios): TModelResponse;
    function getJsonArray(const AValue: TArray<TObject>): TJSONArray;
    function getJsonMsg(const tag, texto: string): TJsonObject;
    procedure closeQuery;
  public
    function setUsuarios(const Usuarios: TModelUsuarios): TJsonObject;
    function getUsuarios: TJSONArray;
    destructor Destroy; override;
  end;

implementation

{ TDAOUsuarios }

uses Util.BancoDados;

{ TDAOUsuarios }

procedure TDAOUsuarios.closeQuery;
begin
  FDQuery.Close;
end;

destructor TDAOUsuarios.Destroy;
begin
  if FDQuery <> nil then
  begin
    FDQuery.free;
    FDQuery := nil;
  end;
  inherited;
end;

function TDAOUsuarios.getUsuarios: TJSONArray;
var
  Usuarios: TModelUsuarios;
  UsuariosList: TArray<TObject>;
begin
  result := nil;
  UsuariosList := TArray<TObject>.Create(nil);
  FDQuery := TUtilBancoDados.getFDQuery;

  try
    // Comando SQL para consulta
    FDQuery.SQL.Clear;
    FDQuery.SQL.Add('SELECT CODIGO, NOME');
    FDQuery.SQL.Add('FROM USUARIOS');
    FDQuery.SQL.Add('WHERE CODIGO > 0');
    FDQuery.open;

    SetLength(UsuariosList, FDQuery.RecordCount);

    while not FDQuery.Eof do
    begin
      // Grava o retorno nas propriedades do Model.Usuarios
      Usuarios := TModelUsuarios.Create;
      Usuarios.codigo := FDQuery.FieldByName('CODIGO').asInteger;
      Usuarios.nome := FDQuery.FieldByName('NOME').AsString;

      // Adiciona os dados na lista de usuários
      UsuariosList[FDQuery.recno - 1] := Usuarios;
      FDQuery.next;
    end;

    // Retorna a lista em formato Json para o controlador
    if Length(UsuariosList) > 0 then
      result := getJsonArray(UsuariosList);
  finally
    closeQuery;

    if UsuariosList <> nil then
      UsuariosList := nil;
  end;
end;

function TDAOUsuarios.getJsonArray(const AValue: TArray<TObject>): TJSONArray;
var
  i: integer;
begin
  result := TJSONArray.Create;

  try
    if Length(AValue) = 0 then
    begin
      result.Add(getJsonMsg('mensagem', 'Arquivo Vazio'));
    end
    else
    begin
      for i := 0 to Length(AValue) - 1 do
        result.Add(TJSON.ObjectToJsonObject(AValue[i]));
    end;
  except
    on e: exception do
    begin
      result.Add(getJsonMsg('erro', e.Message));
    end;
  end;
end;

function TDAOUsuarios.getJsonMsg(const tag, texto: string): TJsonObject;
begin
  result := TJsonObject.Create;
  result.AddPair(tag, texto);
end;

function TDAOUsuarios.postUsuarios(const Usuarios: TModelUsuarios)
  : TModelResponse;
begin
  result := TModelResponse.Create;
  result.status := 0;
  result.mensagem := '';

  FDQuery := TUtilBancoDados.getFDQuery;

  try
    // Comando SQL para consulta
    FDQuery.SQL.Clear;
    FDQuery.SQL.Add('SELECT CODIGO, NOME');
    FDQuery.SQL.Add('FROM USUARIOS');
    FDQuery.SQL.Add('WHERE CODIGO > 0');
    FDQuery.open;

    try
      // Comando para inclusão
      FDQuery.Append;
      if Usuarios.codigo = 0 then
        FDQuery.FieldByName('CODIGO').asInteger :=
          TGenID.getGenId('GEN_USUARIOS_ID')
      else
        FDQuery.FieldByName('CODIGO').asInteger := Usuarios.codigo;
      FDQuery.FieldByName('NOME').AsString := Usuarios.nome;
      FDQuery.Post;
    finally
      closeQuery;
    end;
  finally
    result.status := 200;
    result.mensagem := 'Dado inserido com sucesso';
  end;
end;

function TDAOUsuarios.setUsuarios(const Usuarios: TModelUsuarios): TJsonObject;
var
  Response: TModelResponse;
  ResponseSucess: TModelResponse;
begin
  ResponseSucess := TModelResponse.Create;
  Response := TModelResponse.Create;

  try
    try
      ResponseSucess := postUsuarios(Usuarios);
      result := TJSON.ObjectToJsonObject(ResponseSucess,
        [joIgnoreEmptyArrays, joIgnoreEmptyStrings]);
    except
      on e: exception do
      begin
        Response.status := 400;
        Response.mensagem := e.Message;
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
