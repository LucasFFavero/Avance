unit UdtmUsuarios;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TdtmUsuarios = class(TDataModule)
    qryBuscaUsuarios: TFDQuery;
    dtsBuscaUsuarios: TDataSource;
    qryBuscaUsuariosCODIGO: TIntegerField;
    qryBuscaUsuariosNOME: TStringField;
    qryBuscaUsuariosCOD_ESCOLA: TIntegerField;
    qryBuscaUsuariosESCOLA: TStringField;
    qryBuscaUsuariosCOD_TURMA: TIntegerField;
    qryBuscaUsuariosTURMA: TStringField;
    qryBuscaUsuariosEMAIL: TStringField;
    qryBuscaUsuariosLOGIN: TStringField;
    qryBuscaUsuariosSENHA: TStringField;
    qryBuscaUsuariosDATA_NASCIMENTO: TSQLTimeStampField;
    qryBuscaUsuariosATIVO: TSmallintField;
    qryBuscaUsuariosGESTOR: TSmallintField;
    qryBuscaUsuariosPROFESSOR: TSmallintField;
    qryBuscaUsuariosALUNO: TSmallintField;
    qryBuscaUsuariosDATA_INGRESSO: TSQLTimeStampField;
    qryBuscaUsuariosULTIMO_ACESSO: TSQLTimeStampField;
    qryEscolas: TFDQuery;
    dtsEscolas: TDataSource;
    qryTurmas: TFDQuery;
    dtsTurmas: TDataSource;
    qryEscolasCODIGO: TIntegerField;
    qryEscolasNOME: TStringField;
    qryEscolasCIDADE: TStringField;
    qryEscolasESTADO: TStringField;
    qryTurmasCODIGO: TIntegerField;
    qryTurmasDESCRICAO: TStringField;
    qryUsuarios: TFDQuery;
    FDAutoIncField1: TFDAutoIncField;
    Transaction: TFDTransaction;
    UpdateSQL: TFDUpdateSQL;
    dtsUsuarios: TDataSource;
    qryUsuariosCOD_TURMA: TIntegerField;
    qryUsuariosCOD_ESCOLA: TIntegerField;
    qryUsuariosNOME: TStringField;
    qryUsuariosEMAIL: TStringField;
    qryUsuariosLOGIN: TStringField;
    qryUsuariosSENHA: TStringField;
    qryUsuariosDATA_NASCIMENTO: TSQLTimeStampField;
    qryUsuariosATIVO: TSmallintField;
    qryUsuariosGESTOR: TSmallintField;
    qryUsuariosPROFESSOR: TSmallintField;
    qryUsuariosALUNO: TSmallintField;
    qryUsuariosDATA_INGRESSO: TSQLTimeStampField;
    qryUsuariosULTIMO_ACESSO: TSQLTimeStampField;
    FDMTUsuarios: TFDMemTable;
    procedure dtsUsuariosStateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtmUsuarios: TdtmUsuarios;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UdtmMain, UfrmUsuarios;

{$R *.dfm}

procedure TdtmUsuarios.dtsUsuariosStateChange(Sender: TObject);
begin
  // Animações dos botões
  if (frmUsuarios <> nil) then
  begin
    if (frmUsuarios.pgcDadosCadastrais.TabIndex = 1) then
    begin
      frmUsuarios.btnBuscar.Enabled := false;
      frmUsuarios.btnIncluir.Enabled := false;
      frmUsuarios.btnEditar.Enabled := false;
      frmUsuarios.btnExcluir.Enabled := false;
      frmUsuarios.btnSalvar.Enabled := false;
      frmUsuarios.btnCancelar.Enabled := false;
    end
    else
    begin
      frmUsuarios.btnBuscar.Enabled := (qryUsuarios.State = dsBrowse) and
        (qryUsuarios.IsEmpty);
      frmUsuarios.btnIncluir.Enabled := qryUsuarios.State = dsBrowse;
      frmUsuarios.btnEditar.Enabled := (qryUsuarios.State = dsBrowse) and
        (not(qryUsuarios.IsEmpty));
      frmUsuarios.btnExcluir.Enabled := (qryUsuarios.State = dsBrowse) and
        (not(qryUsuarios.IsEmpty));
      frmUsuarios.btnSalvar.Enabled := qryUsuarios.State <> dsBrowse;
      frmUsuarios.btnCancelar.Enabled := qryUsuarios.State <> dsBrowse;
    end;

    frmUsuarios.btnImprimir.Enabled := (qryUsuarios.State = dsBrowse) and
      (not(qryUsuarios.IsEmpty));
    frmUsuarios.btnListar.Enabled := (qryUsuarios.State = dsBrowse) and
      (not(qryUsuarios.IsEmpty));

    frmUsuarios.btnPrimeiro.Enabled := (qryUsuarios.State = dsBrowse) and
      (not(qryUsuarios.IsEmpty));
    frmUsuarios.btnAnterior.Enabled := (qryUsuarios.State = dsBrowse) and
      (not(qryUsuarios.IsEmpty));
    frmUsuarios.btnProximo.Enabled := (qryUsuarios.State = dsBrowse) and
      (not(qryUsuarios.IsEmpty));
    frmUsuarios.btnUltimo.Enabled := (qryUsuarios.State = dsBrowse) and
      (not(qryUsuarios.IsEmpty));

    frmUsuarios.pnlCadastro.Enabled := qryUsuarios.State <> dsBrowse;
  end;
end;

end.
