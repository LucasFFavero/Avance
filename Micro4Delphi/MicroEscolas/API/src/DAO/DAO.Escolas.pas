unit DAO.Escolas;

interface

uses
  System.JSON, Rest.JSON, System.SysUtils, Model.Escolas, udmFiredac,
  Datasnap.DBClient, Data.SqlExpr, System.SyncObjs, FireDAC.Comp.Client,
  Model.Response, System.Generics.Collections, uTGenID;

type
  TDAOEscolas = class
  private
    FDQuery: TFDQuery;
    function postEscolas(const Escolas: TModelEscolas): TModelResponse;
    function getJsonArray(const AValue: TArray<TObject>): TJSONArray;
    function getJsonMsg(const tag, texto: string): TJsonObject;
    procedure closeQuery;
  public
    function setEscolas(const Escolas: TModelEscolas): TJsonObject;
    function getEscolas: TJSONArray;
    destructor Destroy; override;
  end;

implementation

{ TDAOEscolas }

uses Util.BancoDados;

{ TDAOEscolas }

procedure TDAOEscolas.closeQuery;
begin
  FDQuery.Close;
end;

destructor TDAOEscolas.Destroy;
begin
  if FDQuery <> nil then
  begin
    FDQuery.free;
    FDQuery := nil;
  end;
  inherited;
end;

function TDAOEscolas.getEscolas: TJSONArray;
var
  Escolas: TModelEscolas;
  EscolasList: TArray<TObject>;
begin
  result := nil;
  EscolasList := TArray<TObject>.Create(nil);
  FDQuery := TUtilBancoDados.getFDQuery;

  try
    FDQuery.SQL.Clear;
    FDQuery.SQL.Add('SELECT CODIGO, NOME');
    FDQuery.SQL.Add('FROM ESCOLA');
    FDQuery.SQL.Add('WHERE CODIGO > 0');
    FDQuery.open;

    SetLength(EscolasList, FDQuery.RecordCount);

    while not FDQuery.Eof do
    begin
      Escolas := TModelEscolas.Create;
      Escolas.codigo := FDQuery.FieldByName('CODIGO').asInteger;
      Escolas.nome := FDQuery.FieldByName('NOME').AsString;
      EscolasList[FDQuery.recno - 1] := Escolas;
      FDQuery.next;
    end;

    if Length(EscolasList) > 0 then
      result := getJsonArray(EscolasList);
  finally
    closeQuery;

    if EscolasList <> nil then
      EscolasList := nil;
  end;
end;

function TDAOEscolas.getJsonArray(const AValue: TArray<TObject>): TJSONArray;
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

function TDAOEscolas.getJsonMsg(const tag, texto: string): TJsonObject;
begin
  result := TJsonObject.Create;
  result.AddPair(tag, texto);
end;

function TDAOEscolas.postEscolas(const Escolas: TModelEscolas): TModelResponse;
begin
  result := TModelResponse.Create;
  result.status := 0;
  result.mensagem := '';

  try
    FDQuery := TUtilBancoDados.getFDQuery;
    FDQuery.SQL.Clear;
    FDQuery.SQL.Add('SELECT CODIGO, NOME');
    FDQuery.SQL.Add('FROM ESCOLA');
    FDQuery.SQL.Add('WHERE CODIGO > 0');
    FDQuery.open;

    try
      FDQuery.Append;
      if Escolas.codigo = 0 then
        FDQuery.FieldByName('CODIGO').asInteger :=
          TGenID.getGenId('GEN_ESCOLA_ID')
      else
        FDQuery.FieldByName('CODIGO').asInteger := Escolas.codigo;
      FDQuery.FieldByName('NOME').AsString := Escolas.nome;
      FDQuery.Post;
    finally
      closeQuery;
    end;
  finally
    result.status := 200;
    result.mensagem := 'Dado inserido com sucesso';
  end;
end;

function TDAOEscolas.setEscolas(const Escolas: TModelEscolas): TJsonObject;
var
  Response: TModelResponse;
  ResponseSucess: TModelResponse;
begin
  ResponseSucess := TModelResponse.Create;
  Response := TModelResponse.Create;

  try
    try
      ResponseSucess := postEscolas(Escolas);
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
