unit UrelTurmas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, QRCtrls, QuickRpt, Vcl.ExtCtrls;

type
  TrelTurmas = class(TForm)
    qrTurmas: TQuickRep;
    QRBand1: TQRBand;
    QRSysData2: TQRSysData;
    QRShape1: TQRShape;
    QRLabel5: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRShape2: TQRShape;
    QRLabel1: TQRLabel;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText15: TQRDBText;
    QRBand3: TQRBand;
    QRSysData3: TQRSysData;
    QRShape3: TQRShape;
    QRBand4: TQRBand;
    QRLabel12: TQRLabel;
    QRExpr1: TQRExpr;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  relTurmas: TrelTurmas;

implementation

{$R *.dfm}

uses UdtmTurmas;

end.
