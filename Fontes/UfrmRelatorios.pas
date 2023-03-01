unit UfrmRelatorios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, AdvGlowButton, Vcl.DBCtrls;

type
  TfrmRelatorios = class(TForm)
    pnlTop: TPanel;
    dbgRelatorios: TDBGrid;
    rgFiltros: TRadioGroup;
    gpbCampos: TGroupBox;
    gpbOpcoes: TGroupBox;
    btnLocalizarUsuarios: TAdvGlowButton;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    pnlAlunos: TPanel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label1: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelatorios: TfrmRelatorios;

implementation

{$R *.dfm}

uses UfrmMain;

end.
