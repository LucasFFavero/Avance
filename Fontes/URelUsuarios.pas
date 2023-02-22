unit URelUsuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, QuickRpt, QRCtrls;

type
  TRelUsuarios = class(TForm)
    QuickRep1: TQuickRep;
    pnlTitle: TQRBand;
    QRShape2: TQRShape;
    lblUsuario: TQRLabel;
    pnlDetail: TQRBand;
    pnlPageFooter: TQRBand;
    QRSysData2: TQRSysData;
    QRShape3: TQRShape;
    QRSysData1: TQRSysData;
    QRLabel3: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText2: TQRDBText;
    QRShape1: TQRShape;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RelUsuarios: TRelUsuarios;

implementation

{$R *.dfm}

end.
