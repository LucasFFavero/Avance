unit DAO.Aulas;

interface

uses
  System.JSON, Rest.JSON, System.SysUtils, Model.Aulas, udmFiredac,
  Datasnap.DBClient, Data.SqlExpr, System.SyncObjs, FireDAC.Comp.Client,
  Model.Response, System.Generics.Collections, uTGenID;

type
  TDAOAulas = class
  private
    FDQuery: TFDQuery;
    function postAulas(const Aulas: TModelAulas): TModelResponse;
    function getJsonArray(const AValue: TArray<TObject>): TJSONArray;
    function getJsonMsg(const tag, texto: string): TJsonObject;
    procedure closeQuery;
  public
    function setAulas(const Aulas: TModelAulas): TJsonObject;
    function getAulas: TJSONArray;
    destructor Destroy; override;
  end;

implementation

{ TDAOAulas }

uses Util.BancoDados;

{ TDAOAulas }

procedure TDAOAulas.closeQuery;
begin
  FDQuery.Close;
end;

destructor TDAOAulas.Destroy;
begin
  if FDQuery <> nil then
  begin
    FDQuery.free;
    FDQuery := nil;
  end;
  inherited;
end;

function TDAOAulas.getAulas: TJSONArray;
var
  Aulas: TModelAulas;
  AulasList: TArray<TObject>;
begin
  result := nil;
  AulasList := TArray<TObject>.Create(nil);
  FDQuery := TUtilBancoDados.getFDQuery;

  try
    // Comando SQL para consulta
    FDQuery.SQL.Clear;
    FDQuery.SQL.Add('SELECT CODIGO, TITULO');
    FDQuery.SQL.Add('FROM AULAS');
    FDQuery.SQL.Add('WHERE CODIGO > 0');
    FDQuery.open;

    SetLength(AulasList, FDQuery.RecordCount);

    while not FDQuery.Eof do
    begin
      // Grava o retorno nas propriedades do Model.Aulas
      Aulas := TModelAulas.Create;
      Aulas.codigo := FDQuery.FieldByName('CODIGO').asInteger;
      Aulas.titulo := FDQuery.FieldByName('TITULO').AsString;

      // Adiciona os dados na lista de usuários
      AulasList[FDQuery.recno - 1] := Aulas;
      FDQuery.next;
    end;

    // Retorna a lista em formato Json para o controlador
    if Length(AulasList) > 0 then
      result := getJsonArray(AulasList);
  finally
    closeQuery;

    if AulasList <> nil then
      AulasList := nil;
  end;
end;

function TDAOAulas.getJsonArray(const AValue: TArray<TObject>): TJSONArray;
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

function TDAOAulas.getJsonMsg(const tag, texto: string): TJsonObject;
begin
  result := TJsonObject.Create;
  result.AddPair(tag, texto);
end;

function TDAOAulas.postAulas(const Aulas: TModelAulas): TModelResponse;
begin
  result := TModelResponse.Create;
  result.status := 0;
  result.mensagem := '';

  FDQuery := TUtilBancoDados.getFDQuery;

  try
    // Comando SQL para consulta
    FDQuery.SQL.Clear;
    FDQuery.SQL.Add('SELECT CODIGO, TITULO');
    FDQuery.SQL.Add('FROM AULAS');
    FDQuery.SQL.Add('WHERE CODIGO > 0');
    FDQuery.open;

    try
      // Comando para inclusão
      FDQuery.Append;
      if Aulas.codigo = 0 then
        FDQuery.FieldByName('CODIGO').asInteger :=
          TGenID.getGenId('GEN_AULAS_ID')
      else
        FDQuery.FieldByName('CODIGO').asInteger := Aulas.codigo;
      FDQuery.FieldByName('TITULO').AsString := Aulas.titulo;
      FDQuery.Post;
    finally
      closeQuery;
    end;
  finally
    result.status := 200;
    result.mensagem := 'Dado inserido com sucesso';
  end;
end;

function TDAOAulas.setAulas(const Aulas: TModelAulas): TJsonObject;
var
  Response: TModelResponse;
  ResponseSucess: TModelResponse;
begin
  ResponseSucess := TModelResponse.Create;
  Response := TModelResponse.Create;

  try
    try
      ResponseSucess := postAulas(Aulas);
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
