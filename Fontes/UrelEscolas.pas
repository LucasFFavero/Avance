unit UrelEscolas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, QRCtrls, QuickRpt, Vcl.ExtCtrls;

type
  TrelEscolas = class(TForm)
    qrEscolas: TQuickRep;
    QRBand1: TQRBand;
    QRSysData2: TQRSysData;
    QRShape1: TQRShape;
    QRLabel5: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRShape2: TQRShape;
    QRLabel3: TQRLabel;
    QRLabel1: TQRLabel;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText2: TQRDBText;
    QRBand3: TQRBand;
    QRSysData3: TQRSysData;
    QRShape3: TQRShape;
    QRBand4: TQRBand;
    QRLabel12: TQRLabel;
    QRExpr1: TQRExpr;
    QRLabel6: TQRLabel;
    QRDBText3: TQRDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  relEscolas: TrelEscolas;

implementation

{$R *.dfm}

uses UdtmEscolas;

end.
