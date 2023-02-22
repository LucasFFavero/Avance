unit UdtmEscola;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TdtmEscola = class(TDataModule)
    qryEscola: TFDQuery;
    Transaction: TFDTransaction;
    UpdateSQL: TFDUpdateSQL;
    dtsEscola: TDataSource;
    qryBuscaEscola: TFDQuery;
    dtsBuscaEscola: TDataSource;
    qryEscolaCODIGO: TFDAutoIncField;
    qryEscolaNOME: TStringField;
    qryEscolaCIDADE: TStringField;
    qryEscolaESTADO: TStringField;
    qryBuscaEscolaCODIGO: TIntegerField;
    qryBuscaEscolaNOME: TStringField;
    qryBuscaEscolaCIDADE: TStringField;
    qryBuscaEscolaESTADO: TStringField;
    procedure dtsEscolaStateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtmEscola: TdtmEscola;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UfrmEscola;
{$R *.dfm}

procedure TdtmEscola.dtsEscolaStateChange(Sender: TObject);
begin
  // Animações dos botões
  if (frmEscola <> nil) then
  begin
    if (frmEscola.pgcDadosCadastrais.TabIndex = 1) then
    begin
      frmEscola.btnBuscar.Enabled := false;
      frmEscola.btnIncluir.Enabled := false;
      frmEscola.btnEditar.Enabled := false;
      frmEscola.btnExcluir.Enabled := false;
      frmEscola.btnSalvar.Enabled := false;
      frmEscola.btnCancelar.Enabled := false;
    end
    else
    begin
      frmEscola.btnBuscar.Enabled := (qryEscola.State = dsBrowse) and
        (qryEscola.IsEmpty);
      frmEscola.btnIncluir.Enabled := qryEscola.State = dsBrowse;
      frmEscola.btnEditar.Enabled := (qryEscola.State = dsBrowse) and
        (not(qryEscola.IsEmpty));
      frmEscola.btnExcluir.Enabled := (qryEscola.State = dsBrowse) and
        (not(qryEscola.IsEmpty));
      frmEscola.btnSalvar.Enabled := qryEscola.State <> dsBrowse;
      frmEscola.btnCancelar.Enabled := qryEscola.State <> dsBrowse;
    end;

    frmEscola.btnImprimir.Enabled := (qryEscola.State = dsBrowse) and
      (not(qryEscola.IsEmpty));
    frmEscola.btnListar.Enabled := (qryEscola.State = dsBrowse) and
      (not(qryEscola.IsEmpty));

    frmEscola.btnPrimeiro.Enabled := (qryEscola.State = dsBrowse) and
      (not(qryEscola.IsEmpty));
    frmEscola.btnAnterior.Enabled := (qryEscola.State = dsBrowse) and
      (not(qryEscola.IsEmpty));
    frmEscola.btnProximo.Enabled := (qryEscola.State = dsBrowse) and
      (not(qryEscola.IsEmpty));
    frmEscola.btnUltimo.Enabled := (qryEscola.State = dsBrowse) and
      (not(qryEscola.IsEmpty));

    frmEscola.pnlCadastro.Enabled := qryEscola.State <> dsBrowse;
  end;
end;

end.
