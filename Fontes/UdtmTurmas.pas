unit UdtmTurmas;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TdtmTurmas = class(TDataModule)
    qryBuscaTurmas: TFDQuery;
    dtsBuscaTurmas: TDataSource;
    qryBuscaTurmasCODIGO: TIntegerField;
    qryBuscaTurmasDESCRICAO: TStringField;
    qryTurmas: TFDQuery;
    qryTurmasCODIGO: TFDAutoIncField;
    Transaction: TFDTransaction;
    UpdateSQL: TFDUpdateSQL;
    dtsTurmas: TDataSource;
    qryTurmasDESCRICAO: TStringField;
    procedure dtsTurmasStateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtmTurmas: TdtmTurmas;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UfrmTurmas;
{$R *.dfm}

procedure TdtmTurmas.dtsTurmasStateChange(Sender: TObject);
begin
  // Animações dos botões
  if (frmTurmas <> nil) then
  begin
    if (frmTurmas.pgcDadosCadastrais.TabIndex = 1) then
    begin
      frmTurmas.btnBuscar.Enabled := false;
      frmTurmas.btnIncluir.Enabled := false;
      frmTurmas.btnEditar.Enabled := false;
      frmTurmas.btnExcluir.Enabled := false;
      frmTurmas.btnSalvar.Enabled := false;
      frmTurmas.btnCancelar.Enabled := false;
    end
    else
    begin
      frmTurmas.btnBuscar.Enabled := (qryTurmas.State = dsBrowse) and
        (qryTurmas.IsEmpty);
      frmTurmas.btnIncluir.Enabled := qryTurmas.State = dsBrowse;
      frmTurmas.btnEditar.Enabled := (qryTurmas.State = dsBrowse) and
        (not(qryTurmas.IsEmpty));
      frmTurmas.btnExcluir.Enabled := (qryTurmas.State = dsBrowse) and
        (not(qryTurmas.IsEmpty));
      frmTurmas.btnSalvar.Enabled := qryTurmas.State <> dsBrowse;
      frmTurmas.btnCancelar.Enabled := qryTurmas.State <> dsBrowse;
    end;

    frmTurmas.btnImprimir.Enabled := (qryTurmas.State = dsBrowse) and
      (not(qryTurmas.IsEmpty));
    frmTurmas.btnListar.Enabled := (qryTurmas.State = dsBrowse) and
      (not(qryTurmas.IsEmpty));

    frmTurmas.btnPrimeiro.Enabled := (qryTurmas.State = dsBrowse) and
      (not(qryTurmas.IsEmpty));
    frmTurmas.btnAnterior.Enabled := (qryTurmas.State = dsBrowse) and
      (not(qryTurmas.IsEmpty));
    frmTurmas.btnProximo.Enabled := (qryTurmas.State = dsBrowse) and
      (not(qryTurmas.IsEmpty));
    frmTurmas.btnUltimo.Enabled := (qryTurmas.State = dsBrowse) and
      (not(qryTurmas.IsEmpty));

    frmTurmas.pnlCadastro.Enabled := qryTurmas.State <> dsBrowse;
  end;
end;

end.
