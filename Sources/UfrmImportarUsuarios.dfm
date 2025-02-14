object frmImportarUsuarios: TfrmImportarUsuarios
  Left = 0
  Top = 0
  Caption = 'Importar Usu'#225'rios'
  ClientHeight = 541
  ClientWidth = 944
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 944
    Height = 60
    Align = alTop
    BevelOuter = bvNone
    Color = 15461355
    Padding.Left = 5
    Padding.Top = 2
    Padding.Right = 2
    Padding.Bottom = 2
    ParentBackground = False
    TabOrder = 0
    object btnSalvar: TAdvGlowButton
      AlignWithMargins = True
      Left = 98
      Top = 5
      Width = 62
      Height = 50
      Align = alLeft
      BorderStyle = bsNone
      Caption = 'Salvar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 3618615
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ImageIndex = 10
      Images = frmMain.cxImageList1
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Transparent = True
      TabOrder = 0
      OnClick = btnSalvarClick
      Appearance.ColorChecked = 16111818
      Appearance.ColorCheckedTo = 16367008
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 16111818
      Appearance.ColorDownTo = 16367008
      Appearance.ColorHot = 16117985
      Appearance.ColorHotTo = 16372402
      Appearance.ColorMirrorHot = 16107693
      Appearance.ColorMirrorHotTo = 16775412
      Appearance.ColorMirrorDown = 16102556
      Appearance.ColorMirrorDownTo = 16768988
      Appearance.ColorMirrorChecked = 16102556
      Appearance.ColorMirrorCheckedTo = 16768988
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Layout = blGlyphTop
    end
    object btnBuscar: TAdvGlowButton
      AlignWithMargins = True
      Left = 8
      Top = 5
      Width = 62
      Height = 50
      Align = alLeft
      BorderStyle = bsNone
      Caption = 'Buscar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 3618615
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ImageIndex = 0
      Images = frmMain.cxImageList1
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Transparent = True
      TabOrder = 1
      OnClick = btnBuscarClick
      Appearance.ColorChecked = 16111818
      Appearance.ColorCheckedTo = 16367008
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 16111818
      Appearance.ColorDownTo = 16367008
      Appearance.ColorHot = 16117985
      Appearance.ColorHotTo = 16372402
      Appearance.ColorMirrorHot = 16107693
      Appearance.ColorMirrorHotTo = 16775412
      Appearance.ColorMirrorDown = 16102556
      Appearance.ColorMirrorDownTo = 16768988
      Appearance.ColorMirrorChecked = 16102556
      Appearance.ColorMirrorCheckedTo = 16768988
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Layout = blGlyphTop
    end
    object btnCancelar: TAdvGlowButton
      AlignWithMargins = True
      Left = 166
      Top = 5
      Width = 62
      Height = 50
      Align = alLeft
      BorderStyle = bsNone
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 3618615
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ImageIndex = 1
      Images = frmMain.cxImageList1
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Transparent = True
      TabOrder = 2
      OnClick = btnCancelarClick
      Appearance.ColorChecked = 16111818
      Appearance.ColorCheckedTo = 16367008
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 16111818
      Appearance.ColorDownTo = 16367008
      Appearance.ColorHot = 16117985
      Appearance.ColorHotTo = 16372402
      Appearance.ColorMirrorHot = 16107693
      Appearance.ColorMirrorHotTo = 16775412
      Appearance.ColorMirrorDown = 16102556
      Appearance.ColorMirrorDownTo = 16768988
      Appearance.ColorMirrorChecked = 16102556
      Appearance.ColorMirrorCheckedTo = 16768988
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Layout = blGlyphTop
    end
    object Panel1: TPanel
      Left = 73
      Top = 2
      Width = 22
      Height = 56
      Align = alLeft
      BevelOuter = bvNone
      Color = 15461355
      ParentBackground = False
      TabOrder = 3
    end
  end
  object dbGridLocalizar: TDBGrid
    Left = 0
    Top = 60
    Width = 944
    Height = 481
    Align = alClient
    DataSource = dtsImportar
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs]
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Usuario'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Email'
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Password'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Quota'
        Width = 100
        Visible = True
      end>
  end
  object OpenDialog: TOpenDialog
    Filter = 'Excel|*.xlsx'
    Left = 168
    Top = 112
  end
  object cldsImportar: TClientDataSet
    PersistDataPacket.Data = {
      870000009619E0BD010000001800000004000000000003000000870005456D61
      696C010049000000010005574944544802000200C8000850617373776F726401
      0049000000010005574944544802000200C8000551756F746101004900000001
      0005574944544802000200C800075573756172696F0100490000000100055749
      44544802000200C8000000}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Email'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'Password'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'Quota'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'Usuario'
        DataType = ftString
        Size = 200
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 40
    Top = 112
    object cldsImportarEmail: TStringField
      FieldName = 'Email'
      Size = 200
    end
    object cldsImportarPassword: TStringField
      FieldName = 'Password'
      Size = 200
    end
    object cldsImportarQuota: TStringField
      FieldName = 'Quota'
      Size = 200
    end
    object cldsImportarUsuario: TStringField
      FieldName = 'Usuario'
      Size = 200
    end
  end
  object dtsImportar: TDataSource
    DataSet = cldsImportar
    Left = 104
    Top = 112
  end
  object qryIncluirUsuario: TFDQuery
    Connection = dtmMain.FDConnectionMain
    Transaction = TransactionIncluir
    FetchOptions.AssignedValues = [evMode, evCursorKind]
    FetchOptions.Mode = fmAll
    FetchOptions.CursorKind = ckDefault
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.GeneratorName = 'GEN_ESCOLA_ID'
    UpdateOptions.KeyFields = 'CODIGO'
    UpdateOptions.AutoIncFields = 'CODIGO'
    SQL.Strings = (
      'INSERT INTO USUARIOS (NOME, EMAIL, LOGIN, SENHA, ATIVO, ALUNO)'
      
        '              VALUES (:NOME, :EMAIL, :LOGIN, :SENHA, :ATIVO, :AL' +
        'UNO);')
    Left = 280
    Top = 112
    ParamData = <
      item
        Name = 'NOME'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'EMAIL'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'LOGIN'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'SENHA'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'ATIVO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ALUNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object TransactionIncluir: TFDTransaction
    Connection = dtmMain.FDConnectionMain
    Left = 280
    Top = 169
  end
  object qryBuscaUsuario: TFDQuery
    Connection = dtmMain.FDConnectionMain
    FetchOptions.AssignedValues = [evMode, evCursorKind]
    FetchOptions.Mode = fmAll
    FetchOptions.CursorKind = ckDefault
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.GeneratorName = 'GEN_ESCOLA_ID'
    UpdateOptions.KeyFields = 'CODIGO'
    UpdateOptions.AutoIncFields = 'CODIGO'
    SQL.Strings = (
      'SELECT USUARIOS.CODIGO, USUARIOS.NOME'
      'FROM USUARIOS'
      'WHERE USUARIOS.NOME =:NOME')
    Left = 368
    Top = 112
    ParamData = <
      item
        Name = 'NOME'
        DataType = ftString
        ParamType = ptInput
        Size = 200
      end>
    object qryBuscaUsuarioCODIGO: TFDAutoIncField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object qryBuscaUsuarioNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 200
    end
  end
end
