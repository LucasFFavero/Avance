unit udmFiredac;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Phys, FireDAC.Stan.ExprFuncs, FireDAC.Phys.SQLiteDef,
  FireDAC.Phys.SQLite, FireDAC.Comp.UI, FireDAC.Comp.Client, FireDAC.Dapt,
  FireDAC.Stan.Async, FireDAC.Comp.ScriptCommands, FireDAC.Stan.Util,
  FireDAC.Stan.Pool, FireDAC.Phys.FBDef, FireDAC.Phys.IBBase,
  FireDAC.Phys.FB, FireDAC.Phys.IBWrapper, FireDAC.ConsoleUI.Wait;

type
  TdmFiredac = class(TDataModule)
    FDManager: TFDManager;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    procedure FDManagerBeforeStartup(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function getConnectionDefName: string;
  end;

const
  FIREDAC_CONNECTION_DEF_NAME = 'Escolas_runtime';

var
  dmFiredac: TdmFiredac;

implementation

uses IdGlobalProtocols;

{$R *.dfm}

procedure TdmFiredac.DataModuleCreate(Sender: TObject);
begin
  FDManager.Active := false;
  FDPhysFBDriverLink1.vendorLib := '';
{$IFDEF MSWINDOWS}
  FDPhysFBDriverLink1.vendorLib := ExtractFilePath(ParamStr(0)) +
    'fbClient.dll';
{$ENDIF}
end;

procedure TdmFiredac.FDManagerBeforeStartup(Sender: TObject);
var
  cnxDef: IFDStanConnectionDef;
begin
  FDManager.connectionDefs.Clear;
  cnxDef := FDManager.connectionDefs.addConnectionDef;
  cnxDef.Name := FIREDAC_CONNECTION_DEF_NAME;
  cnxDef.Params.DriverID := 'FB';
  cnxDef.Params.UserName := 'sysdba';
  cnxDef.Params.Password := 'masterkey';
  cnxDef.Params.Database :=
    'C:\Desenvolvimento\Projetos\Avance\Micro4Delphi\MicroEscolas\API\banco\Escolas.fdb';
  cnxDef.Params.pooled := false;
  cnxDef.Params.Add('Protocol=TCPIP');
  cnxDef.Params.Add('Server=192.168.0.183');
  cnxDef.Params.Add('Port=3050');
  cnxDef.Params.Add('CharacterSet=WIN1252');
  cnxDef.Apply;
end;

function TdmFiredac.getConnectionDefName: string;
begin
  result := FIREDAC_CONNECTION_DEF_NAME;
end;

end.
