unit URelUsuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, QRCtrls, QuickRpt, Vcl.ExtCtrls,
  QRWebControls;

type
  TrelUsuarios = class(TForm)
    qrUsuarios: TQuickRep;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRBand3: TQRBand;
    QRSysData3: TQRSysData;
    QRShape3: TQRShape;
    QRBand4: TQRBand;
    QRLabel12: TQRLabel;
    QRExpr1: TQRExpr;
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
    qrAluno: TQRLabel;
    procedure QRBand2BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  relUsuarios: TrelUsuarios;

implementation

{$R *.dfm}

uses UdtmUsuarios;

procedure TrelUsuarios.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if (dtmUsuarios.qryUsuariosGESTOR.Value = 1) then
    qrAluno.Caption := 'Gestor'
  else if (dtmUsuarios.qryUsuariosPROFESSOR.Value = 1) then
    qrAluno.Caption := 'Professor'
  else if (dtmUsuarios.qryUsuariosALUNO.Value = 1) then
    qrAluno.Caption := 'Aluno';
end;

end.
