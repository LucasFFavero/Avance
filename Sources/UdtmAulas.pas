unit UdtmAulas;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  Data.DB, FireDAC.Comp.DataSet, Jpeg;

type
  TdtmAulas = class(TDataModule)
    qryBuscaAulas: TFDQuery;
    qryBuscaAulasCODIGO: TIntegerField;
    dtsBuscaAulas: TDataSource;
    qryAulas: TFDQuery;
    qryAulasCODIGO: TFDAutoIncField;
    Transaction: TFDTransaction;
    UpdateSQL: TFDUpdateSQL;
    dtsAulas: TDataSource;
    qryAulasCOD_TURMA: TIntegerField;
    qryAulasTITULO: TStringField;
    qryAulasIMAGEM: TBlobField;
    qryBuscaAulasCOD_TURMA: TIntegerField;
    qryBuscaAulasTITULO: TStringField;
    qryBuscaAulasIMAGEM: TBlobField;
    qryTurmas: TFDQuery;
    qryTurmasCODIGO: TIntegerField;
    qryTurmasDESCRICAO: TStringField;
    dtsTurmas: TDataSource;
    qryConteudos: TFDQuery;
    dtsConteudos: TDataSource;
    qryConteudosCODIGO: TFDAutoIncField;
    qryConteudosCOD_AULA: TIntegerField;
    qryConteudosDESCRICAO: TStringField;
    qryConteudosRESUMO: TStringField;
    qryExercicios: TFDQuery;
    dtsExercicios: TDataSource;
    qryExerciciosCODIGO: TFDAutoIncField;
    qryExerciciosCOD_AULA: TIntegerField;
    qryExerciciosCOD_CONTEUDO: TIntegerField;
    qryExerciciosCONTEUDO: TStringField;
    qryExerciciosDESCRICAO: TStringField;
    qryQuestoes: TFDQuery;
    dtsQuestoes: TDataSource;
    qryQuestoesCODIGO: TFDAutoIncField;
    qryQuestoesCOD_AULAS_EXERCICIOS: TIntegerField;
    qryQuestoesDESCRICAO: TStringField;
    qryQuestoesCORRETA: TSmallintField;
    qryExcluirConteudo: TFDQuery;
    TransactionExcluir: TFDTransaction;
    qryBuscaAulasDESCRICAO: TStringField;
    qryExcluirExercicio: TFDQuery;
    qryExcluirQuestoes: TFDQuery;
    qryExerciciosTITULO: TStringField;
    qryExcluirQuestao: TFDQuery;
    qryConteudosTIPO: TStringField;
    qryExerciciosTIPO: TStringField;
    qryConteudosIMAGEM_1: TIntegerField;
    qryConteudosVIDEO_1: TIntegerField;
    qryConteudosAUDIO_1: TIntegerField;
    qryConteudosRESUMO_IMAGEM_1: TIntegerField;
    qryExerciciosIMAGEM_1: TIntegerField;
    qryExerciciosVIDEO_1: TIntegerField;
    qryQuestoesIMAGEM_1: TIntegerField;
    qryBuscaAulasIMAGEM_1: TIntegerField;
    FDMTAulas: TFDMemTable;
    procedure dtsAulasStateChange(Sender: TObject);
    procedure qryAulasAfterScroll(DataSet: TDataSet);
    procedure qryExerciciosAfterScroll(DataSet: TDataSet);
    procedure qryConteudosAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtmAulas: TdtmAulas;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UfrmAulas;
{$R *.dfm}

procedure TdtmAulas.dtsAulasStateChange(Sender: TObject);
var
  b: TStream;
  Jpg: TJpegImage;
begin
  // Animações dos botões
  if (frmAulas <> nil) then
  begin
    if (frmAulas.pgcDadosCadastrais.TabIndex = 1) then
    begin
      frmAulas.btnBuscar.Enabled := false;
      frmAulas.btnIncluir.Enabled := false;
      frmAulas.btnEditar.Enabled := false;
      frmAulas.btnExcluir.Enabled := false;
      frmAulas.btnSalvar.Enabled := false;
      frmAulas.btnCancelar.Enabled := false;
    end
    else
    begin
      frmAulas.btnBuscar.Enabled := (qryAulas.State = dsBrowse) and (qryAulas.IsEmpty);
      frmAulas.btnIncluir.Enabled := qryAulas.State = dsBrowse;
      frmAulas.btnEditar.Enabled := (qryAulas.State = dsBrowse) and (not(qryAulas.IsEmpty));
      frmAulas.btnExcluir.Enabled := (qryAulas.State = dsBrowse) and (not(qryAulas.IsEmpty));
      frmAulas.btnSalvar.Enabled := qryAulas.State <> dsBrowse;
      frmAulas.btnCancelar.Enabled := qryAulas.State <> dsBrowse;
    end;

    frmAulas.btnImprimir.Enabled := (qryAulas.State = dsBrowse) and (not(qryAulas.IsEmpty));
    frmAulas.btnListar.Enabled := (qryAulas.State = dsBrowse) and (not(qryAulas.IsEmpty));

    frmAulas.btnPrimeiro.Enabled := (qryAulas.State = dsBrowse) and (not(qryAulas.IsEmpty));
    frmAulas.btnAnterior.Enabled := (qryAulas.State = dsBrowse) and (not(qryAulas.IsEmpty));
    frmAulas.btnProximo.Enabled := (qryAulas.State = dsBrowse) and (not(qryAulas.IsEmpty));
    frmAulas.btnUltimo.Enabled := (qryAulas.State = dsBrowse) and (not(qryAulas.IsEmpty));

    frmAulas.pnlCadastro.Enabled := qryAulas.State <> dsBrowse;

    // Imagem
    Jpg := nil;
    b := qryAulas.CreateBlobStream(qryAulas.FieldByName('IMAGEM'), bmRead);

    if (b.Size > 0) then
    begin
      try
        Jpg := TJpegImage.Create;
        Jpg.LoadFromStream(b);
        frmAulas.Image.Picture.Assign(Jpg);
      except
      end;
    end
    else
      frmAulas.Image.Picture.Assign(nil);

    // liberar memoria
    b.Destroy;
    Jpg.Free;
  end;
end;

procedure TdtmAulas.qryAulasAfterScroll(DataSet: TDataSet);
var
  b: TStream;
  Jpg: TJpegImage;
begin
  // Carrega os Conteúdos
  dtmAulas.qryConteudos.Close;
  dtmAulas.qryConteudos.ParamByName('COD_AULA').AsInteger := dtmAulas.qryAulasCODIGO.AsInteger;
  dtmAulas.qryConteudos.Open;

  // Carrega Imagem
  Jpg := nil;
  b := qryAulas.CreateBlobStream(qryAulas.FieldByName('IMAGEM'), bmRead);

  if (b.Size > 0) then
  begin
    try
      Jpg := TJpegImage.Create;
      Jpg.LoadFromStream(b);
      frmAulas.Image.Picture.Assign(Jpg);
    except
    end;
  end
  else
    frmAulas.Image.Picture.Assign(nil);

  // liberar memoria
  b.Destroy;
  Jpg.Free;
end;

procedure TdtmAulas.qryConteudosAfterScroll(DataSet: TDataSet);
begin
  // Carrega Exercícios e Questões
  dtmAulas.qryQuestoes.Close;

  dtmAulas.qryExercicios.Close;
  dtmAulas.qryExercicios.ParamByName('COD_AULA').AsInteger := dtmAulas.qryAulasCODIGO.AsInteger;
  dtmAulas.qryExercicios.ParamByName('COD_CONTEUDO').AsInteger := dtmAulas.qryConteudosCODIGO.AsInteger;
  dtmAulas.qryExercicios.Open;
end;

procedure TdtmAulas.qryExerciciosAfterScroll(DataSet: TDataSet);
begin
  dtmAulas.qryQuestoes.Close;
  dtmAulas.qryQuestoes.ParamByName('COD_AULAS_EXERCICIO').AsInteger := dtmAulas.qryExerciciosCODIGO.AsInteger;
  dtmAulas.qryQuestoes.Open;
end;

end.
