object frmRelatorios: TfrmRelatorios
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rios'
  ClientHeight = 514
  ClientWidth = 964
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 964
    Height = 140
    Align = alTop
    BevelOuter = bvNone
    Color = 15461355
    Padding.Left = 5
    Padding.Top = 2
    Padding.Right = 2
    Padding.Bottom = 2
    ParentBackground = False
    TabOrder = 0
    object rgFiltros: TRadioGroup
      Left = 5
      Top = 2
      Width = 276
      Height = 136
      Align = alLeft
      Caption = 'Filtros'
      Items.Strings = (
        'Escola'
        'Alunos'
        'Exerc'#237'cios')
      TabOrder = 0
      ExplicitLeft = 1
      ExplicitTop = -2
    end
    object gpbCampos: TGroupBox
      Left = 281
      Top = 2
      Width = 256
      Height = 136
      Align = alLeft
      Caption = 'Campos'
      TabOrder = 1
      ExplicitHeight = 149
      object pnlAlunos: TPanel
        Left = 2
        Top = 15
        Width = 252
        Height = 119
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitLeft = 256
        ExplicitTop = 11
        ExplicitWidth = 257
        ExplicitHeight = 129
        object Label1: TLabel
          Left = 10
          Top = 21
          Width = 27
          Height = 13
          Caption = 'Aluno'
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 10
          Top = 39
          Width = 217
          Height = 21
          TabOrder = 0
        end
      end
    end
    object gpbOpcoes: TGroupBox
      Left = 537
      Top = 2
      Width = 425
      Height = 136
      Align = alClient
      Caption = 'Op'#231#245'es'
      TabOrder = 2
      ExplicitLeft = 672
      ExplicitTop = 56
      ExplicitWidth = 185
      ExplicitHeight = 105
      object btnLocalizarUsuarios: TAdvGlowButton
        Left = 17
        Top = 20
        Width = 110
        Height = 32
        Caption = 'Buscar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 3618615
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 0
        Images = frmMain.cxImageList2
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 0
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
        Layout = blGlyphRight
      end
      object AdvGlowButton1: TAdvGlowButton
        Left = 17
        Top = 58
        Width = 110
        Height = 32
        Caption = 'Limpar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 3618615
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 0
        Images = frmMain.cxImageList2
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 1
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
        Layout = blGlyphRight
      end
      object AdvGlowButton2: TAdvGlowButton
        Left = 17
        Top = 96
        Width = 110
        Height = 32
        Caption = 'Imprimir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 3618615
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 0
        Images = frmMain.cxImageList2
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 2
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
        Layout = blGlyphRight
      end
    end
  end
  object dbgRelatorios: TDBGrid
    Left = 0
    Top = 140
    Width = 964
    Height = 374
    Align = alClient
    DataSource = dtmAulas.dtsConteudos
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
        FieldName = 'CODIGO'
        Title.Caption = 'C'#243'digo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 240
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IMAGEM'
        Title.Alignment = taCenter
        Title.Caption = 'Imagem'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VIDEO'
        Title.Alignment = taCenter
        Title.Caption = 'V'#237'deo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AUDIO'
        Title.Alignment = taCenter
        Title.Caption = 'Audio'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RESUMO'
        Title.Caption = 'Resumo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 240
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RESUMO_IMAGEM'
        Title.Alignment = taCenter
        Title.Caption = 'Imagem Resumo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 110
        Visible = True
      end>
  end
end
