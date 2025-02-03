unit DAO.Turmas;

interface

uses
  System.JSON, Rest.JSON, System.SysUtils, Model.Turmas, udmFiredac,
  Datasnap.DBClient, Data.SqlExpr, System.SyncObjs, FireDAC.Comp.Client,
  Model.Response, System.Generics.Collections, uTGenID;

type
  TDAOTurmas = class
  private
    FDQuery: TFDQuery;
    function postTurmas(const Turmas: TModelTurmas): TModelResponse;
    function getJsonArray(const AValue: TArray<TObject>): TJSONArray;
    function getJsonMsg(const tag, texto: string): TJsonObject;
    procedure closeQuery;
  public
    function setTurmas(const Turmas: TModelTurmas): TJsonObject;
    function getTurmas: TJSONArray;
    destructor Destroy; override;
  end;

implementation

{ TDAOTurmas }

uses Util.BancoDados;

{ TDAOTurmas }

procedure TDAOTurmas.closeQuery;
begin
  FDQuery.Close;
end;

destructor TDAOTurmas.Destroy;
begin
  if FDQuery <> nil then
  begin
    FDQuery.free;
    FDQuery := nil;
  end;
  inherited;
end;

function TDAOTurmas.getTurmas: TJSONArray;
var
  Turmas: TModelTurmas;
  TurmasList: TArray<TObject>;
begin
  result := nil;
  TurmasList := TArray<TObject>.Create(nil);
  FDQuery := TUtilBancoDados.getFDQuery;

  try
    FDQuery.SQL.Clear;
    FDQuery.SQL.Add('SELECT CODIGO, DESCRICAO');
    FDQuery.SQL.Add('FROM TURMAS');
    FDQuery.SQL.Add('WHERE CODIGO > 0');
    FDQuery.open;

    SetLength(TurmasList, FDQuery.RecordCount);

    while not FDQuery.Eof do
    begin
      Turmas := TModelTurmas.Create;
      Turmas.codigo := FDQuery.FieldByName('CODIGO').asInteger;
      Turmas.descricao := FDQuery.FieldByName('DESCRICAO').AsString;
      TurmasList[FDQuery.recno - 1] := Turmas;
      FDQuery.next;
    end;

    if Length(TurmasList) > 0 then
      result := getJsonArray(TurmasList);
  finally
    closeQuery;

    if TurmasList <> nil then
      TurmasList := nil;
  end;
end;

function TDAOTurmas.getJsonArray(const AValue: TArray<TObject>): TJSONArray;
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

function TDAOTurmas.getJsonMsg(const tag, texto: string): TJsonObject;
begin
  result := TJsonObject.Create;
  result.AddPair(tag, texto);
end;

function TDAOTurmas.postTurmas(const Turmas: TModelTurmas): TModelResponse;
begin
  result := TModelResponse.Create;
  result.status := 0;
  result.mensagem := '';

  try
    FDQuery := TUtilBancoDados.getFDQuery;
    FDQuery.SQL.Clear;
    FDQuery.SQL.Add('SELECT CODIGO, DESCRICAO');
    FDQuery.SQL.Add('FROM TURMAS');
    FDQuery.SQL.Add('WHERE CODIGO > 0');
    FDQuery.open;

    try
      FDQuery.Append;
      if Turmas.codigo = 0 then
        FDQuery.FieldByName('CODIGO').asInteger :=
          TGenID.getGenId('GEN_TURMAS_ID')
      else
        FDQuery.FieldByName('CODIGO').asInteger := Turmas.codigo;
      FDQuery.FieldByName('DESCRICAO').AsString := Turmas.descricao;
      FDQuery.Post;
    finally
      closeQuery;
    end;
  finally
    result.status := 200;
    result.mensagem := 'Dado inserido com sucesso';
  end;
end;

function TDAOTurmas.setTurmas(const Turmas: TModelTurmas): TJsonObject;
var
  Response: TModelResponse;
  ResponseSucess: TModelResponse;
begin
  ResponseSucess := TModelResponse.Create;
  Response := TModelResponse.Create;

  try
    try
      ResponseSucess := postTurmas(Turmas);
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
