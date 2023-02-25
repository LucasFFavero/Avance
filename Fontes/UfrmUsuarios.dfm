object frmUsuarios: TfrmUsuarios
  Left = 0
  Top = 0
  Caption = 'Usu'#225'rios'
  ClientHeight = 541
  ClientWidth = 944
  Color = clWhite
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
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
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
    object btnListar: TAdvGlowButton
      AlignWithMargins = True
      Left = 754
      Top = 5
      Width = 62
      Height = 50
      Align = alLeft
      BorderStyle = bsNone
      Caption = 'Listar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 3618615
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ImageIndex = 6
      Images = frmMain.cxImageList1
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Transparent = True
      TabOrder = 0
      OnClick = btnListarClick
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
    object btnSalvar: TAdvGlowButton
      AlignWithMargins = True
      Left = 166
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
      TabOrder = 1
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
      TabOrder = 2
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
    object btnEditar: TAdvGlowButton
      AlignWithMargins = True
      Left = 234
      Top = 5
      Width = 62
      Height = 50
      Align = alLeft
      BorderStyle = bsNone
      Caption = 'Editar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 3618615
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ImageIndex = 4
      Images = frmMain.cxImageList1
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Transparent = True
      TabOrder = 3
      OnClick = btnEditarClick
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
      Left = 302
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
      TabOrder = 4
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
    object btnExcluir: TAdvGlowButton
      AlignWithMargins = True
      Left = 370
      Top = 5
      Width = 62
      Height = 50
      Align = alLeft
      BorderStyle = bsNone
      Caption = 'Excluir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 3618615
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ImageIndex = 2
      Images = frmMain.cxImageList1
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Transparent = True
      TabOrder = 5
      OnClick = btnExcluirClick
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
    object btnPrimeiro: TAdvGlowButton
      AlignWithMargins = True
      Left = 460
      Top = 5
      Width = 62
      Height = 50
      Align = alLeft
      BorderStyle = bsNone
      Caption = 'Primeiro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 3618615
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ImageIndex = 3
      Images = frmMain.cxImageList1
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Transparent = True
      TabOrder = 6
      OnClick = btnPrimeiroClick
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
    object btnAnterior: TAdvGlowButton
      AlignWithMargins = True
      Left = 528
      Top = 5
      Width = 62
      Height = 50
      Align = alLeft
      BorderStyle = bsNone
      Caption = 'Anterior'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 3618615
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ImageIndex = 8
      Images = frmMain.cxImageList1
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Transparent = True
      TabOrder = 7
      OnClick = btnAnteriorClick
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
    object btnProximo: TAdvGlowButton
      AlignWithMargins = True
      Left = 596
      Top = 5
      Width = 62
      Height = 50
      Align = alLeft
      BorderStyle = bsNone
      Caption = 'Pr'#243'ximo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 3618615
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ImageIndex = 11
      Images = frmMain.cxImageList1
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Transparent = True
      TabOrder = 8
      OnClick = btnProximoClick
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
    object btnUltimo: TAdvGlowButton
      AlignWithMargins = True
      Left = 664
      Top = 5
      Width = 62
      Height = 50
      Align = alLeft
      BorderStyle = bsNone
      Caption = #218'ltimo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 3618615
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ImageIndex = 12
      Images = frmMain.cxImageList1
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Transparent = True
      TabOrder = 9
      OnClick = btnUltimoClick
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
      TabOrder = 10
    end
    object Panel3: TPanel
      Left = 435
      Top = 2
      Width = 22
      Height = 56
      Align = alLeft
      BevelOuter = bvNone
      Color = 15461355
      ParentBackground = False
      TabOrder = 11
    end
    object Panel4: TPanel
      Left = 729
      Top = 2
      Width = 22
      Height = 56
      Align = alLeft
      BevelOuter = bvNone
      Color = 15461355
      ParentBackground = False
      TabOrder = 12
    end
    object btnIncluir: TAdvGlowButton
      AlignWithMargins = True
      Left = 98
      Top = 5
      Width = 62
      Height = 50
      Align = alLeft
      BorderStyle = bsNone
      Caption = 'Inlcluir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 3618615
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ImageIndex = 5
      Images = frmMain.cxImageList1
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Transparent = True
      TabOrder = 13
      OnClick = btnIncluirClick
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
      AlignWithMargins = True
      Left = 844
      Top = 5
      Width = 62
      Height = 50
      Align = alLeft
      BorderStyle = bsNone
      Caption = 'Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 3618615
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ImageIndex = 9
      Images = frmMain.cxImageList1
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Transparent = True
      TabOrder = 14
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
    object Panel2: TPanel
      Left = 819
      Top = 2
      Width = 22
      Height = 56
      Align = alLeft
      BevelOuter = bvNone
      Color = 15461355
      ParentBackground = False
      TabOrder = 15
    end
  end
  object pgcDadosCadastrais: TPageControl
    Left = 0
    Top = 60
    Width = 944
    Height = 481
    ActivePage = tbsDadosCadastrais
    Align = alClient
    TabHeight = 30
    TabOrder = 1
    TabWidth = 140
    object tbsDadosCadastrais: TTabSheet
      Caption = 'Dados Cadastrais'
      object dbGrid: TDBGrid
        Left = 0
        Top = 0
        Width = 936
        Height = 441
        Align = alClient
        DataSource = dtmUsuarios.dtsUsuarios
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs]
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Visible = False
        OnDrawColumnCell = dbGridDrawColumnCell
        OnDblClick = dbGridDblClick
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
            FieldName = 'NOME'
            Title.Caption = 'Nome'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMAIL'
            Title.Caption = 'E-mail'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LOGIN'
            Title.Caption = 'Login'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATA_NASCIMENTO'
            Title.Caption = 'Data Nascimento'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 100
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ATIVO'
            Title.Alignment = taCenter
            Title.Caption = 'Ativo'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 60
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'GESTOR'
            Title.Alignment = taCenter
            Title.Caption = 'Gestor'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 60
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'PROFESSOR'
            Title.Alignment = taCenter
            Title.Caption = 'Professor'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 60
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ALUNO'
            Title.Alignment = taCenter
            Title.Caption = 'Aluno'
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
            FieldName = 'DATA_INGRESSO'
            Title.Caption = 'Data ingresso'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ULTIMO_ACESSO'
            Title.Caption = #218'ltimo acesso'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 100
            Visible = True
          end>
      end
      object pnlCadastro: TPanel
        Left = 0
        Top = 0
        Width = 936
        Height = 441
        Align = alClient
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        object Label1: TLabel
          Left = 25
          Top = 16
          Width = 38
          Height = 13
          Caption = 'C'#243'digo'
          FocusControl = edtCodigo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 3618615
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 25
          Top = 72
          Width = 32
          Height = 13
          Caption = 'Nome'
          FocusControl = edtSenha
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 3618615
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 391
          Top = 136
          Width = 35
          Height = 13
          Caption = 'Senha'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 3618615
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 535
          Top = 136
          Width = 89
          Height = 13
          Caption = 'Confirma Senha'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 3618615
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 25
          Top = 136
          Width = 30
          Height = 13
          Caption = 'Login'
          FocusControl = edtLogin
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 3618615
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 25
          Top = 202
          Width = 35
          Height = 13
          Caption = 'E-mail'
          FocusControl = edtEmail
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 3618615
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 391
          Top = 72
          Width = 96
          Height = 13
          Caption = 'Data nascimento'
          FocusControl = edtSenha
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 3618615
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 389
          Top = 202
          Width = 35
          Height = 13
          Caption = 'Escola'
          FocusControl = edtEmail
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 3618615
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label9: TLabel
          Left = 677
          Top = 202
          Width = 37
          Height = 13
          Caption = 'Turma'
          FocusControl = edtEmail
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 3618615
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object edtCodigo: TDBEdit
          Left = 25
          Top = 33
          Width = 80
          Height = 21
          Hint = 'C'#243'digo Autom'#225'tico'
          Color = 16771797
          DataField = 'CODIGO'
          DataSource = dtmUsuarios.dtsUsuarios
          ReadOnly = True
          TabOrder = 11
        end
        object edtNome: TDBEdit
          Left = 25
          Top = 91
          Width = 340
          Height = 21
          Hint = 'Informe o nome'
          CharCase = ecUpperCase
          DataField = 'NOME'
          DataSource = dtmUsuarios.dtsUsuarios
          TabOrder = 0
        end
        object edtSenha: TDBEdit
          Left = 391
          Top = 154
          Width = 120
          Height = 21
          Hint = 'Informe a senha'
          DataField = 'SENHA'
          DataSource = dtmUsuarios.dtsUsuarios
          PasswordChar = '*'
          TabOrder = 3
        end
        object edtConfirmaSenha: TMaskEdit
          Left = 535
          Top = 154
          Width = 120
          Height = 21
          Hint = 'Confirme a senha'
          PasswordChar = '*'
          TabOrder = 4
          Text = ''
        end
        object edtLogin: TDBEdit
          Left = 25
          Top = 155
          Width = 340
          Height = 21
          Hint = 'Informe o login'
          CharCase = ecUpperCase
          DataField = 'LOGIN'
          DataSource = dtmUsuarios.dtsUsuarios
          TabOrder = 2
        end
        object edtEmail: TDBEdit
          Left = 25
          Top = 221
          Width = 340
          Height = 21
          Hint = 'Informe o e-mail'
          DataField = 'EMAIL'
          DataSource = dtmUsuarios.dtsUsuarios
          TabOrder = 5
        end
        object edtNascimento: TPlannerDBDatePicker
          Left = 391
          Top = 91
          Width = 120
          Height = 21
          EmptyTextStyle = []
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clWindowText
          LabelFont.Height = -11
          LabelFont.Name = 'Tahoma'
          LabelFont.Style = []
          Lookup.Font.Charset = DEFAULT_CHARSET
          Lookup.Font.Color = clWindowText
          Lookup.Font.Height = -11
          Lookup.Font.Name = 'Arial'
          Lookup.Font.Style = []
          Lookup.Separator = ';'
          Color = clWindow
          ShortCut = 0
          TabOrder = 1
          Text = '20/09/1985'
          Visible = True
          Version = '2.0.1.0'
          ButtonStyle = bsDropDown
          ButtonWidth = 16
          Flat = False
          Etched = False
          Glyph.Data = {
            DA020000424DDA0200000000000036000000280000000D0000000D0000000100
            200000000000A402000000000000000000000000000000000000F0F0F000F0F0
            F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
            F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
            F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
            F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
            F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
            F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
            F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
            F00000000000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
            F000F0F0F000F0F0F000F0F0F000F0F0F000000000000000000000000000F0F0
            F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
            F0000000000000000000000000000000000000000000F0F0F000F0F0F000F0F0
            F000F0F0F000F0F0F000F0F0F000F0F0F0000000000000000000000000000000
            0000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
            F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
            F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
            F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
            F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
            F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
            F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
            F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
            F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000}
          Calendar = cal40_.Owner
          HideCalendarAfterSelection = True
          DataField = 'DATA_NASCIMENTO'
          DataSource = dtmUsuarios.dtsUsuarios
          TMSStyle = 0
          object cal40_: TPlannerCalendar
            Left = 0
            Top = 0
            Width = 180
            Height = 180
            EventDayColor = clBlack
            EventFont.Charset = DEFAULT_CHARSET
            EventFont.Color = clWindowText
            EventFont.Height = -11
            EventFont.Name = 'Tahoma'
            EventFont.Style = [fsBold]
            EventMarkerColor = clYellow
            EventMarkerShape = evsCircle
            BackgroundPosition = bpTiled
            BevelOuter = bvRaised
            BorderWidth = 1
            CaptionColor = clNone
            CaptionTextColor = clBlack
            DateDownColor = clNone
            DateHoverColor = clNone
            DayFont.Charset = DEFAULT_CHARSET
            DayFont.Color = clWindowText
            DayFont.Height = -11
            DayFont.Name = 'Tahoma'
            DayFont.Style = []
            FocusColor = clHighlight
            HeaderColor = clNone
            InActiveColor = clGray
            InversColor = clTeal
            LineColor = clGray
            Line3D = True
            Look = lookFlat
            NameOfDays.Monday = 'seg'
            NameOfDays.Tuesday = 'ter'
            NameOfDays.Wednesday = 'qua'
            NameOfDays.Thursday = 'qui'
            NameOfDays.Friday = 'sex'
            NameOfDays.Saturday = 's'#225'b'
            NameOfDays.Sunday = 'dom'
            NameOfMonths.January = 'jan'
            NameOfMonths.February = 'fev'
            NameOfMonths.March = 'mar'
            NameOfMonths.April = 'abr'
            NameOfMonths.May = 'mai'
            NameOfMonths.June = 'jun'
            NameOfMonths.July = 'jul'
            NameOfMonths.August = 'ago'
            NameOfMonths.September = 'set'
            NameOfMonths.October = 'out'
            NameOfMonths.November = 'nov'
            NameOfMonths.December = 'dez'
            NameOfMonths.UseIntlNames = True
            WeekFont.Charset = DEFAULT_CHARSET
            WeekFont.Color = clWindowText
            WeekFont.Height = -11
            WeekFont.Name = 'Tahoma'
            WeekFont.Style = []
            WeekName = 'Wk'
            SelectColor = clTeal
            SelectFontColor = clWhite
            StartDay = 7
            TextColor = clBlack
            TodayFormat = '"Today" DDD/mm, YYYY'
            WeekendColor = clRed
            Day = 20
            Month = 9
            Year = 1985
            TabStop = True
            TabOrder = 0
            GradientStartColor = clWhite
            GradientEndColor = clBtnFace
            GradientDirection = gdVertical
            MonthGradientStartColor = clNone
            MonthGradientEndColor = clNone
            MonthGradientDirection = gdHorizontal
            HintPrevYear = 'Previous Year'
            HintPrevMonth = 'Previous Month'
            HintNextMonth = 'Next Month'
            HintNextYear = 'Next Year'
            Version = '2.3.3.0'
            TMSStyle = 0
          end
        end
        object dbcbGestor: TDBCheckBox
          Left = 25
          Top = 274
          Width = 80
          Height = 17
          Caption = 'Gestor'
          DataField = 'GESTOR'
          DataSource = dtmUsuarios.dtsUsuarios
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 3618615
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
          ValueChecked = '1'
          ValueUnchecked = '0'
          OnClick = dbcbGestorClick
        end
        object dbcbProfessor: TDBCheckBox
          Left = 151
          Top = 274
          Width = 80
          Height = 17
          Caption = 'Professor'
          DataField = 'PROFESSOR'
          DataSource = dtmUsuarios.dtsUsuarios
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 3618615
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 9
          ValueChecked = '1'
          ValueUnchecked = '0'
          OnClick = dbcbProfessorClick
        end
        object dbcbAluno: TDBCheckBox
          Left = 285
          Top = 274
          Width = 80
          Height = 17
          Caption = 'Aluno'
          DataField = 'ALUNO'
          DataSource = dtmUsuarios.dtsUsuarios
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 3618615
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 10
          ValueChecked = '1'
          ValueUnchecked = '0'
          OnClick = dbcbAlunoClick
        end
        object dbcbAtivo: TDBCheckBox
          Left = 135
          Top = 35
          Width = 80
          Height = 17
          Caption = 'Ativo'
          DataField = 'ATIVO'
          DataSource = dtmUsuarios.dtsUsuarios
          TabOrder = 12
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object dblkcbEscola: TDBLookupComboBox
          Left = 389
          Top = 221
          Width = 266
          Height = 21
          DataField = 'COD_ESCOLA'
          DataSource = dtmUsuarios.dtsUsuarios
          KeyField = 'CODIGO'
          ListField = 'NOME'
          ListSource = dtmUsuarios.dtsEscolas
          TabOrder = 6
          OnEnter = dblkcbEscolaEnter
        end
        object dblkcbTurma: TDBLookupComboBox
          Left = 677
          Top = 221
          Width = 220
          Height = 21
          DataField = 'COD_TURMA'
          DataSource = dtmUsuarios.dtsUsuarios
          KeyField = 'CODIGO'
          ListField = 'DESCRICAO'
          ListSource = dtmUsuarios.dtsTurmas
          TabOrder = 7
          OnEnter = dblkcbTurmaEnter
        end
      end
    end
    object tbsLocalizar: TTabSheet
      Caption = 'Localizar'
      ImageIndex = 1
      OnShow = tbsLocalizarShow
      object pnlLocalizar: TPanel
        Left = 0
        Top = 0
        Width = 936
        Height = 81
        Align = alTop
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        object Label10: TLabel
          Left = 27
          Top = 13
          Width = 32
          Height = 13
          Caption = 'Nome'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 3618615
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object edtLocUsuarios: TEdit
          Left = 27
          Top = 30
          Width = 494
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 0
        end
        object btnLocalizarUsuarios: TAdvGlowButton
          Left = 527
          Top = 21
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
          TabOrder = 1
          OnClick = btnLocalizarUsuariosClick
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
      end
      object dbGridLocalizar: TDBGrid
        Left = 0
        Top = 81
        Width = 936
        Height = 360
        Align = alClient
        DataSource = dtmUsuarios.dtsBuscaUsuarios
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs]
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDrawColumnCell = dbGridLocalizarDrawColumnCell
        OnDblClick = dbGridLocalizarDblClick
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
            FieldName = 'NOME'
            Title.Caption = 'Nome'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ESCOLA'
            Title.Caption = 'Escola'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TURMA'
            Title.Caption = 'Turma'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMAIL'
            Title.Caption = 'E-mail'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LOGIN'
            Title.Caption = 'Login'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SENHA'
            Title.Caption = 'Senha'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATA_NASCIMENTO'
            Title.Caption = 'Data Nascimento'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 125
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ATIVO'
            Title.Alignment = taCenter
            Title.Caption = 'Ativo'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 60
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'GESTOR'
            Title.Alignment = taCenter
            Title.Caption = 'Gestor'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 60
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'PROFESSOR'
            Title.Alignment = taCenter
            Title.Caption = 'Professor'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 60
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ALUNO'
            Title.Alignment = taCenter
            Title.Caption = 'Aluno'
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
            FieldName = 'DATA_INGRESSO'
            Title.Caption = 'Data ingresso'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ULTIMO_ACESSO'
            Title.Caption = 'Utimo acesso'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 100
            Visible = True
          end>
      end
    end
  end
  object ImageList: TImageList
    Left = 846
    Top = 240
    Bitmap = {
      494C010104001000040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D0D0D000E2E2E200FBFB
      FB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FCFCFC00E5E5E500D1D1D100E6E6E6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBFBFBFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFFC8C8C800D9D9D900C0C0C000C4C4
      C400C9C9C900C9C9C900C9C9C900C9C9C900C9C9C900C9C9C900C9C9C900CACA
      CA00C4C4C400BEBEBE00D5D5D500CECECE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFB19575FF8D6D56FF8D6D
      56FF8D6D56FF796052FF796052FF6B5549FF6B5549FF5C4B43FF5C4B43FF5545
      3EFF55453EFF433129FF796052FFFFFFFFFFE7E7E700C6C6C600F9F9F900FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F7F7F700C5C5C500E1E1E1000000000000000000000000000000
      000000000000FBFCFB00BFCBBF00EBECEB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009797
      BF008B8BB300EDEDF100FFFFFF00FFFFFF00FFFFFF00FFFFFF00EEEEF2008B8B
      B5009797BE00000000000000000000000000FFFFFFFFE1D4BBFFF6F1EBFFFBF6
      F0FFF6F1EBFFF5ECE4FFF5ECE4FFF5ECE4FFF5ECE4FFEFE8E0FFEFE8E0FFEFE8
      E0FFF6F1EBFFE1D4BBFF433129FFFFFFFFFFFFFFFF00C5C5C500FFFFFF00F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700FFFFFF00C3C3C300FFFFFF000000000000000000000000000000
      000000000000A6C3A6007CD37C0084B98400F2F2F20000000000000000000000
      0000000000000000000000000000000000000000000000000000A1A1BC005C5C
      B5006868C1008282B000EBEBEF00FFFFFF00FFFFFF00EAEAEF008181AF006B6B
      C4006161B9009F9FBB000000000000000000FFFFFFFF9B7143FFF2D0AAFF9B71
      43FFF2D0AAFFD5AC7EFFD5AC7EFFF2D0AAFF9B7143FFD5AC7EFF9B7143FFFCCB
      98FFFCCB98FFF6F1EBFF55453EFFFFFFFFFFFFFFFF00C0C0C000F6F6F600EDED
      ED00EEEEEE00EDEDED00EEEEEE00EDEDED00EDEDED00EDEDED00EDEDED00EEEE
      EE00EEEEEE00F5F5F500C2C2C200FFFFFF000000000000000000000000000000
      0000ADBEAD006BC36B009FF69F00A9FEA90087B58700F3F4F300000000000000
      00000000000000000000000000000000000000000000000000007B7BB6006A6A
      C5008585D8006767C2007676A600E6E6EB00E6E6EB007474A4006969C4009393
      E4007878D2007A7AB6000000000000000000FFFFFFFF9B7143FFF2D0AAFFF2D0
      AAFFF2D0AAFFD5AC7EFFD5AC7EFFD5AC7EFFD5AC7EFFD5AC7EFF9B7143FFFCCB
      98FFFCCB98FFEFE8E0FF55453EFFFFFFFFFFFFFFFF00BDBDBD00EFEFEF00E6E6
      E600E5E5E500E5E5E500E5E5E500E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600EDEDED00BCBCBC00FFFFFF00000000000000000000000000B0BF
      B0005DB35D006BC56B0080D580009FF39F008FE88F0083AD8300F5F6F5000000
      0000000000000000000000000000000000000000000000000000B8B8D6006A6A
      BE007676CD008383D6006363BC006D6DA0006C6CA0006565BF008E8EE0008282
      D8007474C700B9B9D7000000000000000000FFFFFFFFF0E7D7FF9B7143FFF2D0
      AAFF6894C3FF6894C3FF6894C3FF6894C3FFD5AC7EFF9B7143FFFBD2A6FFFCCB
      98FFFCCB98FFEFE8E0FF5C4B43FFFFFFFFFFFFFFFF00BFBFBF00F0F0F000E8E8
      E800E7E7E700E4E4E400E1E1E100DDDDDD00DDDDDD00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00E6E6E600B5B5B500FFFFFF000000000000000000B4C1B40056A7
      560058AE58005CAE5C006BC06B0076CD76007BD37B0069C3690085AE8500F5F7
      F500000000000000000000000000000000000000000000000000FBFBFD00B8B8
      D6006A6ABC007474CA007E7ED0005E5EB6005F5FB7008181D2007979D0007272
      C200BDBDD900FCFCFD000000000000000000FFFFFFFFF0E7D7FFF6F1EBFF6894
      C3FFC6D7E9FFC6D7E9FFC6D7E9FFC6D7E9FF6894C3FFFBD2A6FFFBD2A6FFFBD2
      A6FFFBD2A6FFF5ECE4FF5C4B43FFFFFFFFFFFFFFFF00C2C2C200F6F6F600EDED
      ED00EDEDED00EEEEEE00EDEDED00E9E9E900DDDDDD00D5D5D500D5D5D500D7D7
      D700D7D7D700E0E0E000B3B3B300FFFFFF0000000000BBC9BB00539C530050A3
      500055A555005CAD5C0063BA63006ABF6A0065B865005EB35E0051A9510089AB
      8900F7F8F7000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00C4C4D9007A7AC5008686DB008686D9008787DA008484DA007878C200CACA
      DD00FFFFFF00FFFFFF000000000000000000FFFFFFFFF4E0C6FF6894C3FFDAE5
      F1FF789BBFFFC6D7E9FFC6D7E9FF789BBFFFC6D7E9FF6894C3FFFBD2A6FFFBD2
      A6FFFBD2A6FFF5ECE4FF6B5549FFFFFFFFFFFFFFFF00C6C6C600FEFEFE00F7F7
      F700F7F7F700F7F7F700F7F7F700F8F8F800F7F7F700EDEDED00DDDDDD00D1D1
      D100CDCDCD00D6D6D600B1B1B100FFFFFF000000000078A978004BA24B0061B4
      610075CB750074CC740070B8700074C874007BD37B0075CB750067BE67004CA2
      4C0089A68900F7F8F70000000000000000000000000000000000FFFFFF00FFFF
      FF00D2D2D8006262A5007B7BD3009090E0009191E1007A7AD2006464A000DADA
      E500FFFFFF00FFFFFF000000000000000000FFFFFFFFF4E0C6FF4576B1FFDAE5
      F1FF326189FFC6D7E9FFC6D7E9FF326189FFC6D7E9FF4576B1FFFDDBB7FFFBD2
      A6FFFBD2A6FFFBF6F0FF6B5549FFFFFFFFFFFFFFFF00C9C9C900FFFFFF00FDFD
      FD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FEFEFE00FEFEFE00F6F6
      F600E7E7E700DFDFDF00B9B9B900FFFFFF00000000009BBA9B0068C3680091E7
      910084E184007BBB7B00DBE4DB00A3C3A3007ED67E008FE48F008CE28C0073CB
      73004A9C4A008EA98E00FAFBFA00000000000000000000000000FFFFFF00CDCD
      D300545492005B5BB3008E8EDF009393E7009898EA008D8DDC005656AF005D5D
      9300D8D8DC00FFFFFF000000000000000000FFFFFFFFE1D4BBFF326189FF4576
      B1FFC6D7E9FFC6D7E9FFC6D7E9FFC6D7E9FF4576B1FF326189FFFDDBB7FFFDDB
      B7FFFBD2A6FFFBF6F0FF796052FFFFFFFFFFFFFFFF00CBCBCB00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CECECE00FFFFFF0000000000FAFBFA0099BE99007CE1
      7C007DB97D00E6EFE60000000000FEFEFE00A0C8A00089E28900A5F8A500A1F3
      A1007ED67E004697460094AD9400000000000000000000000000D6D6DB005252
      8F005D5DB800A2A2EF00A4A4F6009090D2008F8FD100ADADFB009E9EEC005555
      B0005E5E9300E3E3E6000000000000000000FFFFFFFFE1D4BBFF326189FF789B
      BFFF4576B1FF4576B1FF4576B1FF4576B1FF4576B1FF326189FFFDDBB7FFFDDB
      B7FFFDDBB7FFFBF6F0FF796052FFFFFFFFFFFFFFFF00CCCCCC00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C8C8C800FFFFFF000000000000000000F0F4F000A5C1
      A500D4E2D400000000000000000000000000FAFCFA009AC19A009EF79E00C0FF
      C000BCFFBC008AE38A0066A36600000000000000000000000000A2A2B9006262
      C100AFAFF500B9B9FF009898D700E6E6F100DDDDEC009696DA00C1C1FF00AAAA
      F3006161BC00BABAC8000000000000000000FFFFFFFFE1D4BBFFFBF6F0FF3261
      89FF789BBFFF4576B1FF4576B1FF4576B1FF326189FFFDDBB7FFFDDBB7FFFBF6
      F0FFFBF6F0FFFBF6F0FF8D6D56FFFFFFFFFFF1F1F100B9B9B900FAFAFA00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FDFDFD00B9B9B900F7F7F7000000000000000000000000000000
      00000000000000000000000000000000000000000000F9FBF9009ABE9A00B9FF
      B900F3FFF300A2F4A200A5C3A500000000000000000000000000C4C4D400A5A5
      EC00D3D3FF009D9DDB00E4E4F100FFFFFF00FFFFFF00D6D6E1009F9FE000DBDB
      FF009D9DE300D6D6DF000000000000000000FFFFFFFFE1CEABFFF6F1EBFFF4E0
      C6FF326189FF326189FF326189FF326189FFF4E0C6FFFDDBB7FFFDDBB7FFFBF6
      F0FFECBB89FFECBB89FF8D6D56FFFFFFFFFFC5C5C500D7D7D700C0C0C000DBDB
      DB00D0D0D000D2D2D200D5D5D500D8D8D800D9D9D900D9D9D900DBDBDB00DCDC
      DC00E8E8E800C1C1C100D1D1D100CCCCCC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F8F9F8009DC5
      9D0095F79500A3C2A300FCFDFC00000000000000000000000000FBFBFC00BABA
      D700A1A1DB00DEDEED00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CFCFDE009E9E
      DA00C3C3D700FDFDFD000000000000000000FFFFFFFFE1CEABFFF0E7D7FFF5EC
      E4FFF6F1EBFFF6F1EBFFF6F1EBFFF6F1EBFFF5ECE4FFF5ECE4FFF5ECE4FFF5EC
      E4FFECBB89FF8D6D56FFFFFFFFFF00000000E8E8E800CACACA00E3E3E300EEEE
      EE00F7F7F700F5F5F500F6F6F600F5F5F500F2F2F200ECECEC00EAEAEA00E9E9
      E900E0E0E000D6D6D600C6C6C600E2E2E2000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E1E8
      E100ACC5AC00EDF2ED0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFF0E7D7FFE1CEABFFE1CE
      ABFFE1CEABFFE1CEABFFCFB791FFCFB791FFD5AC7EFFB19575FFB19575FFB195
      75FFB19575FFFFFFFFFF0000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000008000FFFFFFFF00000000FFFFFFFF0000
      0000F8FFE00700000000F87FC00300000000F03FC00300000000E01FC0030000
      0000C00FC003000000008007C003000000008003C003000000008001C0030000
      00008201C00300000000C701C00300000000FF81C00300000000FFC1C0030000
      0000FFE3FFFF00000000FFFFFFFF000000000000000000000000000000000000
      000000000000}
  end
end
