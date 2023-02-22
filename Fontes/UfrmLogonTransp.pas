unit UfrmLogonTransp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pngimage, DBCtrls, Mask,  StdCtrls, ExtCtrls ;

type
  TfrmLogonTransp = class(TForm)
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogonTransp: TfrmLogonTransp;

implementation

uses UfrmLogon;

{$R *.dfm}

procedure TfrmLogonTransp.FormCreate(Sender: TObject);
var
  region: hrgn;
begin
  region := CreateRoundRectRgn(0, 0, width, height, 9, 9);
  setwindowrgn(handle, region, true);
end;

procedure TfrmLogonTransp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmLogonTransp := nil;
  Action := cafree;
end;

end.
