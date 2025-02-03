unit Main.Form.Client;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TMainFormClient = class(TForm)
    Panel1: TPanel;
    btnFechar: TButton;
    pcDados: TPageControl;
    tsGrid: TTabSheet;
    tsEdit: TTabSheet;
    DBGrid1: TDBGrid;
    edtNome: TLabeledEdit;
    btnSalvar: TButton;
    btnCancelar: TButton;
    Panel2: TPanel;
    btnInserir: TButton;
    FDMemTable: TFDMemTable;
    DataSource: TDataSource;
    btnAtualizar: TButton;
    lblAPI: TLabel;
    procedure btnFecharClick(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnAtualizarClick(Sender: TObject);
  private
    { Private declarations }
    procedure getDados;
    procedure setDados;
  public
    { Public declarations }
  end;

var
  MainFormClient: TMainFormClient;

implementation

uses
  RESTRequest4D, DataSet.Serialize.Adapter.RESTRequest4D;

{$R *.dfm}

procedure TMainFormClient.btnAtualizarClick(Sender: TObject);
begin
  pcDados.ActivePage := tsGrid;
  getDados;
end;

procedure TMainFormClient.btnCancelarClick(Sender: TObject);
begin
  pcDados.ActivePage := tsGrid;
end;

procedure TMainFormClient.btnFecharClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TMainFormClient.btnInserirClick(Sender: TObject);
begin
  pcDados.ActivePage := tsEdit;
end;

procedure TMainFormClient.btnSalvarClick(Sender: TObject);
begin
  setDados;
  pcDados.ActivePage := tsGrid;
  getDados;
end;

procedure TMainFormClient.FormShow(Sender: TObject);
begin
  pcDados.ActivePage := tsGrid;
  getDados;
end;

procedure TMainFormClient.getDados;
begin
  TRequest.New.BaseURL('http://localhost:8080/produto')
    .Adapters(TDataSetSerializeAdapter.New(FDMemTable))
    .Accept('application/json').Get;

  lblAPI.Caption := TRequest.New.BaseURL('http://localhost:8080/ping')
    .Get.Content;
  Application.ProcessMessages;
end;

procedure TMainFormClient.setDados;
begin
  TRequest.New.BaseURL('http://localhost:8080/produto')
    .ContentType('application/json')
    .AddBody('{"codigo":"0","nome":"' + edtNome.Text + '"}').Post;

  lblAPI.Caption := TRequest.New.BaseURL('http://localhost:8080/ping')
    .Get.Content;
  Application.ProcessMessages;
end;

end.
