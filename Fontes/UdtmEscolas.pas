unit UdtmEscolas;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TdtmEscolas = class(TDataModule)
    qryEscolas: TFDQuery;
    Transaction: TFDTransaction;
    UpdateSQL: TFDUpdateSQL;
    dtsEscolas: TDataSource;
    qryBuscaEscolas: TFDQuery;
    dtsBuscaEscolas: TDataSource;
    qryEscolasCODIGO: TFDAutoIncField;
    qryEscolasNOME: TStringField;
    qryEscolasCIDADE: TStringField;
    qryEscolasESTADO: TStringField;
    qryBuscaEscolasCODIGO: TIntegerField;
    qryBuscaEscolasNOME: TStringField;
    qryBuscaEscolasCIDADE: TStringField;
    qryBuscaEscolasESTADO: TStringField;
    FDMTEscolas: TFDMemTable;
    procedure dtsEscolasStateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtmEscolas: TdtmEscolas;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UfrmEscolas;
{$R *.dfm}

procedure TdtmEscolas.dtsEscolasStateChange(Sender: TObject);
begin
  // Animações dos botões
  if (frmEscolas <> nil) then
  begin
    if (frmEscolas.pgcDadosCadastrais.TabIndex = 1) then
    begin
      frmEscolas.btnBuscar.Enabled := false;
      frmEscolas.btnIncluir.Enabled := false;
      frmEscolas.btnEditar.Enabled := false;
      frmEscolas.btnExcluir.Enabled := false;
      frmEscolas.btnSalvar.Enabled := false;
      frmEscolas.btnCancelar.Enabled := false;
    end
    else
    begin
      frmEscolas.btnBuscar.Enabled := (qryEscolas.State = dsBrowse) and
        (qryEscolas.IsEmpty);
      frmEscolas.btnIncluir.Enabled := qryEscolas.State = dsBrowse;
      frmEscolas.btnEditar.Enabled := (qryEscolas.State = dsBrowse) and
        (not(qryEscolas.IsEmpty));
      frmEscolas.btnExcluir.Enabled := (qryEscolas.State = dsBrowse) and
        (not(qryEscolas.IsEmpty));
      frmEscolas.btnSalvar.Enabled := qryEscolas.State <> dsBrowse;
      frmEscolas.btnCancelar.Enabled := qryEscolas.State <> dsBrowse;
    end;

    frmEscolas.btnImprimir.Enabled := (qryEscolas.State = dsBrowse) and
      (not(qryEscolas.IsEmpty));
    frmEscolas.btnListar.Enabled := (qryEscolas.State = dsBrowse) and
      (not(qryEscolas.IsEmpty));

    frmEscolas.btnPrimeiro.Enabled := (qryEscolas.State = dsBrowse) and
      (not(qryEscolas.IsEmpty));
    frmEscolas.btnAnterior.Enabled := (qryEscolas.State = dsBrowse) and
      (not(qryEscolas.IsEmpty));
    frmEscolas.btnProximo.Enabled := (qryEscolas.State = dsBrowse) and
      (not(qryEscolas.IsEmpty));
    frmEscolas.btnUltimo.Enabled := (qryEscolas.State = dsBrowse) and
      (not(qryEscolas.IsEmpty));

    frmEscolas.pnlCadastro.Enabled := qryEscolas.State <> dsBrowse;
  end;
end;

end.
