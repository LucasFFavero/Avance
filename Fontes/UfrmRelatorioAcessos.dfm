object frmRelatorioAcessos: TfrmRelatorioAcessos
  Left = 0
  Top = 0
  Caption = 'frmRelatorioAcessos'
  ClientHeight = 561
  ClientWidth = 1094
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 1094
    Height = 100
    Align = alTop
    BevelOuter = bvNone
    Color = 15461355
    Padding.Left = 5
    Padding.Top = 2
    Padding.Right = 2
    Padding.Bottom = 2
    ParentBackground = False
    TabOrder = 0
    object gpbFiltros: TGroupBox
      Left = 5
      Top = 2
      Width = 760
      Height = 96
      Align = alLeft
      Caption = 'Filtros'
      TabOrder = 0
      object Label1: TLabel
        Left = 10
        Top = 28
        Width = 30
        Height = 13
        Caption = 'Escola'
      end
      object dbcbEscola: TDBLookupComboBox
        Left = 10
        Top = 47
        Width = 300
        Height = 21
        KeyField = 'CODIGO'
        ListField = 'NOME'
        ListSource = dtmRelatorioAcessos.dtsEscolas
        TabOrder = 0
        OnEnter = dbcbEscolaEnter
      end
      object dbcbTurmas: TDBLookupComboBox
        Left = 333
        Top = 47
        Width = 130
        Height = 21
        Enabled = False
        KeyField = 'CODIGO'
        ListField = 'DESCRICAO'
        ListSource = dtmRelatorioAcessos.dtsTurmas
        TabOrder = 1
        OnEnter = dbcbTurmasEnter
      end
      object cbTurmas: TCheckBox
        Left = 333
        Top = 27
        Width = 97
        Height = 17
        Caption = 'Turma'
        TabOrder = 2
        OnClick = cbTurmasClick
      end
      object dbcbUsuario: TDBLookupComboBox
        Left = 485
        Top = 47
        Width = 250
        Height = 21
        Enabled = False
        KeyField = 'CODIGO'
        ListField = 'NOME'
        ListSource = dtmRelatorioAcessos.dtsUsuarios
        TabOrder = 3
        OnEnter = dbcbUsuarioEnter
      end
      object cbUsuario: TCheckBox
        Left = 485
        Top = 27
        Width = 97
        Height = 17
        Caption = 'Usu'#225'rio'
        TabOrder = 4
        OnClick = cbUsuarioClick
      end
    end
    object gpbOpcoes: TGroupBox
      Left = 765
      Top = 2
      Width = 327
      Height = 96
      Align = alClient
      Caption = 'Op'#231#245'es'
      TabOrder = 1
      object btnBuscar: TAdvGlowButton
        Left = 17
        Top = 37
        Width = 32
        Height = 32
        BorderStyle = bsNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 3618615
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ImageIndex = 0
        Images = frmMain.cxImageList2
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        ShowCaption = False
        Transparent = True
        TabOrder = 0
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
      object btnLimpar: TAdvGlowButton
        Left = 73
        Top = 37
        Width = 32
        Height = 32
        BorderStyle = bsNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 3618615
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ImageIndex = 2
        Images = frmMain.cxImageList2
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        ShowCaption = False
        Transparent = True
        TabOrder = 1
        OnClick = btnLimparClick
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
      object btnImprimir: TAdvGlowButton
        Left = 129
        Top = 36
        Width = 32
        Height = 32
        BorderStyle = bsNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 3618615
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ImageIndex = 1
        Images = frmMain.cxImageList2
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        ShowCaption = False
        Transparent = True
        TabOrder = 2
        OnClick = btnImprimirClick
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
      object cbDetalhado: TCheckBox
        Left = 185
        Top = 44
        Width = 70
        Height = 17
        Caption = 'Detalhado'
        TabOrder = 3
      end
    end
  end
  object pnlAlunos: TPanel
    Left = 0
    Top = 100
    Width = 1094
    Height = 181
    Align = alTop
    BevelOuter = bvNone
    Padding.Left = 10
    TabOrder = 1
    ExplicitHeight = 191
    object dbgAlunos: TDBGrid
      Left = 10
      Top = 35
      Width = 1084
      Height = 146
      Align = alClient
      DataSource = dtmRelatorioAcessos.dtsAlunos
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs]
      ReadOnly = True
      TabOrder = 0
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
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME'
          Title.Caption = 'Nome'
          Width = 186
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ESCOLA'
          Title.Caption = 'Escola'
          Width = 188
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TURMA'
          Title.Caption = 'Turma'
          Width = 116
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EMAIL'
          Title.Caption = 'E-mail'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA_INGRESSO'
          Title.Caption = 'Data Ingresso'
          Width = 135
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ULTIMO_ACESSO'
          Title.Caption = #218'ltimo acesso'
          Width = 135
          Visible = True
        end>
    end
    object Panel6: TPanel
      Left = 10
      Top = 0
      Width = 1084
      Height = 35
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object Label3: TLabel
        Left = 2
        Top = 8
        Width = 56
        Height = 16
        Caption = 'Aluno(s)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object pnlAcessos: TPanel
    Left = 0
    Top = 281
    Width = 1094
    Height = 280
    Align = alClient
    BevelOuter = bvNone
    Padding.Left = 10
    TabOrder = 2
    object DBGrid1: TDBGrid
      Left = 10
      Top = 35
      Width = 1084
      Height = 210
      Align = alClient
      DataSource = dtmRelatorioAcessos.dtsAcessos
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs]
      ReadOnly = True
      TabOrder = 0
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
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENTRADA'
          Title.Caption = 'Entrada'
          Width = 180
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SAIDA'
          Title.Caption = 'Sa'#237'da'
          Width = 180
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TEMPO'
          Title.Caption = 'Tempo'
          Width = 120
          Visible = True
        end>
    end
    object Panel2: TPanel
      Left = 10
      Top = 0
      Width = 1084
      Height = 35
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object Label2: TLabel
        Left = 2
        Top = 8
        Width = 66
        Height = 16
        Caption = 'Acesso(s)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object Panel1: TPanel
      Left = 10
      Top = 245
      Width = 1084
      Height = 35
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 2
      ExplicitTop = 315
      object lblTempoAcesso: TLabel
        Left = 323
        Top = 9
        Width = 178
        Height = 16
        Caption = 'Tempo de acesso: 00:00:00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
end
