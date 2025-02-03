object MainFormClient: TMainFormClient
  Left = 0
  Top = 0
  Caption = 'MainFormClient'
  ClientHeight = 603
  ClientWidth = 1044
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 562
    Width = 1044
    Height = 41
    Align = alBottom
    TabOrder = 0
    object btnFechar: TButton
      AlignWithMargins = True
      Left = 965
      Top = 4
      Width = 75
      Height = 33
      Align = alRight
      Caption = 'Fechar'
      TabOrder = 0
      OnClick = btnFecharClick
    end
  end
  object pcDados: TPageControl
    Left = 0
    Top = 41
    Width = 1044
    Height = 521
    ActivePage = tsEdit
    Align = alClient
    Style = tsButtons
    TabOrder = 1
    object tsGrid: TTabSheet
      Caption = 'tsGrid'
      TabVisible = False
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 1036
        Height = 511
        Align = alClient
        DataSource = DataSource
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
    object tsEdit: TTabSheet
      Caption = 'tsEdit'
      ImageIndex = 1
      TabVisible = False
      object edtNome: TLabeledEdit
        Left = 16
        Top = 32
        Width = 417
        Height = 21
        EditLabel.Width = 27
        EditLabel.Height = 13
        EditLabel.Caption = 'Nome'
        TabOrder = 0
      end
      object btnSalvar: TButton
        Left = 16
        Top = 120
        Width = 75
        Height = 25
        Caption = 'Salvar'
        TabOrder = 1
        OnClick = btnSalvarClick
      end
      object btnCancelar: TButton
        Left = 97
        Top = 120
        Width = 75
        Height = 25
        Caption = 'Cancelar'
        TabOrder = 2
        OnClick = btnCancelarClick
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1044
    Height = 41
    Align = alTop
    TabOrder = 2
    object lblAPI: TLabel
      Left = 216
      Top = 15
      Width = 28
      Height = 13
      Caption = 'PONG'
    end
    object btnInserir: TButton
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 75
      Height = 33
      Align = alLeft
      Caption = 'Inserir'
      TabOrder = 0
      OnClick = btnInserirClick
    end
    object btnAtualizar: TButton
      AlignWithMargins = True
      Left = 85
      Top = 4
      Width = 75
      Height = 33
      Align = alLeft
      Caption = 'Atualizar'
      TabOrder = 1
      OnClick = btnAtualizarClick
    end
  end
  object FDMemTable: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 556
    Top = 95
  end
  object DataSource: TDataSource
    DataSet = FDMemTable
    Left = 608
    Top = 95
  end
end
