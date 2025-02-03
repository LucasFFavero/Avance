object dmFiredac: TdmFiredac
  OldCreateOrder = True
  OnCreate = DataModuleCreate
  Height = 365
  Width = 335
  object FDManager: TFDManager
    DriverDefFileAutoLoad = False
    ConnectionDefFileAutoLoad = False
    WaitCursor = gcrHourGlass
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <>
    ActiveStoredUsage = [auDesignTime]
    Active = True
    BeforeStartup = FDManagerBeforeStartup
    Left = 72
    Top = 64
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    VendorLib = 
      'C:\Desenvolvimento\Projetos\Micro4Delphi\API\Win32\Release\fbCli' +
      'ent.dll'
    Left = 72
    Top = 8
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Console'
    ScreenCursor = gcrHourGlass
    Left = 72
    Top = 120
  end
end
