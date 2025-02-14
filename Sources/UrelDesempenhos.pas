unit UrelDesempenhos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  QRCtrls, QuickRpt, Vcl.ExtCtrls;

type
  TrelDesempenhos = class(TForm)
    qrDesempenhos: TQuickRep;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRBand3: TQRBand;
    QRSysData3: TQRSysData;
    QRShape3: TQRShape;
    QRBand1: TQRBand;
    QRSysData2: TQRSysData;
    QRShape1: TQRShape;
    QRLabel5: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRShape2: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRSubDetail1: TQRSubDetail;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText7: TQRDBText;
    ChildBand2: TQRChildBand;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    GroupFooterBand1: TQRBand;
    QRLabel13: TQRLabel;
    qrlAcerto: TQRLabel;
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  relDesempenhos: TrelDesempenhos;

implementation

{$R *.dfm}

uses UdtmRelatorios;

procedure TrelDesempenhos.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if dtmRelatorios.qryExerciciosACERTOU.Value = 1 then
    qrlAcerto.Caption := 'Sim'
  else
    qrlAcerto.Caption := 'Não';
end;

end.
