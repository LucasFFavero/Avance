object frmAulas: TfrmAulas
  Left = 0
  Top = 0
  Caption = 'Aulas'
  ClientHeight = 745
  ClientWidth = 1109
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 1109
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
      ExplicitLeft = 5
      ExplicitTop = 4
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
    Width = 1109
    Height = 685
    ActivePage = tbsDadosCadastrais
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabHeight = 30
    TabOrder = 1
    TabWidth = 140
    object tbsDadosCadastrais: TTabSheet
      Caption = 'Dados Cadastrais'
      OnShow = tbsDadosCadastraisShow
      object cxGrid5: TcxGrid
        Left = 0
        Top = 0
        Width = 1101
        Height = 645
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = cxcbsNone
        TabOrder = 1
        Visible = False
        LookAndFeel.ScrollbarMode = sbmHybrid
        object cxGridDBTableView4: TcxGridDBTableView
          OnDblClick = cxGridDBTableView4DblClick
          Navigator.Buttons.CustomButtons = <>
          DataController.DataModeController.GridModeBufferCount = 250
          DataController.DataSource = dtmAulas.dtsAulas
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsSelection.CellSelect = False
          OptionsView.DataRowHeight = 31
          OptionsView.GridLineColor = 15980971
          OptionsView.GroupByBox = False
          OptionsView.GroupRowHeight = 30
          OptionsView.HeaderHeight = 30
          OptionsView.Indicator = True
          OptionsView.RowSeparatorColor = 16445404
          Styles.Content = cxStyle1
          Styles.Header = cxStyle4
          Styles.Selection = cxStyle6
          object cxGridDBColumn12: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CODIGO'
            PropertiesClassName = 'TcxTextEditProperties'
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
          end
          object cxGridDBColumn13: TcxGridDBColumn
            Caption = 'T'#237'tulo'
            DataBinding.FieldName = 'TITULO'
            PropertiesClassName = 'TcxTextEditProperties'
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Width = 810
          end
        end
        object cxGridLevel4: TcxGridLevel
          GridView = cxGridDBTableView4
        end
      end
      object pnlCadastro: TPanel
        Left = 0
        Top = 0
        Width = 1101
        Height = 645
        Align = alClient
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        object pnlImagem: TPanel
          Left = 0
          Top = 140
          Width = 1101
          Height = 505
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 1
          object pnlCadastroRight: TPanel
            Left = 921
            Top = 0
            Width = 180
            Height = 505
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
          end
          object pnlCadastroLeft: TPanel
            Left = 0
            Top = 0
            Width = 25
            Height = 505
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
          end
          object gpbImagem: TGroupBox
            Left = 25
            Top = 0
            Width = 896
            Height = 505
            Align = alLeft
            Caption = 'Imagem'
            TabOrder = 2
            object Image: TImage
              AlignWithMargins = True
              Left = 43
              Top = 18
              Width = 848
              Height = 482
              Align = alClient
              Stretch = True
              ExplicitLeft = 42
              ExplicitTop = 20
              ExplicitHeight = 388
            end
            object Panel5: TPanel
              Left = 2
              Top = 15
              Width = 38
              Height = 488
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 0
              object btnIncluirImagem: TAdvGlowButton
                Left = 0
                Top = 0
                Width = 38
                Height = 32
                Align = alTop
                BorderStyle = bsNone
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 3618615
                Font.Height = -9
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ImageIndex = 0
                Images = frmMain.cxImageList5
                NotesFont.Charset = DEFAULT_CHARSET
                NotesFont.Color = clWindowText
                NotesFont.Height = -11
                NotesFont.Name = 'Tahoma'
                NotesFont.Style = []
                ParentFont = False
                ShowCaption = False
                Transparent = True
                TabOrder = 0
                OnClick = btnIncluirImagemClick
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
              object btnRemoverImagem: TAdvGlowButton
                Left = 0
                Top = 32
                Width = 38
                Height = 32
                Align = alTop
                BorderStyle = bsNone
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 3618615
                Font.Height = -9
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ImageIndex = 1
                Images = frmMain.cxImageList5
                NotesFont.Charset = DEFAULT_CHARSET
                NotesFont.Color = clWindowText
                NotesFont.Height = -11
                NotesFont.Name = 'Tahoma'
                NotesFont.Style = []
                ParentFont = False
                ShowCaption = False
                Transparent = True
                TabOrder = 1
                OnClick = btnRemoverImagemClick
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
          end
        end
        object pnlCadastroTop: TPanel
          Left = 0
          Top = 0
          Width = 1101
          Height = 140
          Align = alTop
          BevelOuter = bvNone
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
            Caption = 'T'#237'tulo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 3618615
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label3: TLabel
            Left = 617
            Top = 72
            Width = 37
            Height = 13
            Caption = 'Turma'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 3618615
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object edtCodigo: TDBEdit
            Left = 25
            Top = 35
            Width = 80
            Height = 21
            Hint = 'C'#243'digo Autom'#225'tico'
            CharCase = ecUpperCase
            Color = 16771797
            DataField = 'CODIGO'
            DataSource = dtmAulas.dtsAulas
            ReadOnly = True
            TabOrder = 0
          end
          object edtTitulo: TDBEdit
            Left = 25
            Top = 91
            Width = 567
            Height = 21
            Hint = 'Informe a descri'#231#227'o'
            CharCase = ecUpperCase
            DataField = 'TITULO'
            DataSource = dtmAulas.dtsAulas
            TabOrder = 1
          end
          object dblkcbTurma: TDBLookupComboBox
            Left = 617
            Top = 91
            Width = 304
            Height = 21
            DataField = 'COD_TURMA'
            DataSource = dtmAulas.dtsAulas
            KeyField = 'CODIGO'
            ListField = 'DESCRICAO'
            ListSource = dtmAulas.dtsTurmas
            TabOrder = 2
            OnEnter = dblkcbTurmaEnter
          end
        end
      end
    end
    object tbsConteudos: TTabSheet
      Caption = 'Conte'#250'dos'
      ImageIndex = 2
      OnShow = tbsConteudosShow
      object pnlConteudo: TPanel
        Left = 0
        Top = 0
        Width = 1101
        Height = 200
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object pnlConteudoBotoes: TPanel
          Left = 0
          Top = 0
          Width = 38
          Height = 200
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 0
          object btnIncluirConteudo: TAdvGlowButton
            Left = 0
            Top = 0
            Width = 38
            Height = 32
            Align = alTop
            BorderStyle = bsNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 3618615
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ImageIndex = 0
            Images = frmMain.cxImageList5
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            ShowCaption = False
            Transparent = True
            TabOrder = 0
            OnClick = btnIncluirConteudoClick
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
          object btnExcluirConteudo: TAdvGlowButton
            Left = 0
            Top = 64
            Width = 38
            Height = 32
            Align = alTop
            BorderStyle = bsNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 3618615
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ImageIndex = 1
            Images = frmMain.cxImageList5
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            ShowCaption = False
            Transparent = True
            TabOrder = 1
            OnClick = btnExcluirConteudoClick
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
          object btnEditarConteudo: TAdvGlowButton
            Left = 0
            Top = 32
            Width = 38
            Height = 32
            Align = alTop
            BorderStyle = bsNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 3618615
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ImageIndex = 2
            Images = frmMain.cxImageList5
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            ShowCaption = False
            Transparent = True
            TabOrder = 2
            OnClick = btnEditarConteudoClick
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
        object cxGrid1: TcxGrid
          Left = 38
          Top = 0
          Width = 1063
          Height = 200
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = cxcbsNone
          Images = cxImageList1
          TabOrder = 1
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.NativeStyle = True
          LookAndFeel.ScrollbarMode = sbmHybrid
          object cxGrid1DBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataModeController.GridModeBufferCount = 250
            DataController.DataSource = dtmAulas.dtsConteudos
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsSelection.CellSelect = False
            OptionsView.DataRowHeight = 31
            OptionsView.GridLineColor = 15980971
            OptionsView.GroupByBox = False
            OptionsView.GroupRowHeight = 30
            OptionsView.HeaderHeight = 30
            OptionsView.Indicator = True
            OptionsView.RowSeparatorColor = 16445404
            Styles.Content = cxStyle1
            Styles.Header = cxStyle4
            Styles.Selection = cxStyle6
            object cxGrid1DBTableView1CODIGO: TcxGridDBColumn
              Caption = 'C'#243'digo'
              DataBinding.FieldName = 'CODIGO'
              PropertiesClassName = 'TcxTextEditProperties'
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
            end
            object cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn
              Caption = 'Descri'#231#227'o'
              DataBinding.FieldName = 'DESCRICAO'
              PropertiesClassName = 'TcxTextEditProperties'
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Width = 415
            end
            object cxGrid1DBTableView1IMAGEM: TcxGridDBColumn
              Caption = 'Imagem'
              DataBinding.FieldName = 'IMAGEM_1'
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.Images = cxImageList1
              Properties.Items = <
                item
                  ImageIndex = 3
                  Value = 1
                end>
              Properties.ReadOnly = True
              Properties.ShowDescriptions = False
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              MinWidth = 66
              Options.Editing = False
              Options.Filtering = False
              Options.Grouping = False
              Options.HorzSizing = False
              Options.Moving = False
              Options.Sorting = False
              Width = 66
            end
            object cxGrid1DBTableView1Column1: TcxGridDBColumn
              Caption = 'V'#237'deo'
              DataBinding.FieldName = 'VIDEO_1'
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.Images = cxImageList1
              Properties.Items = <
                item
                  ImageIndex = 4
                  Value = 1
                end>
              Properties.ReadOnly = True
              Properties.ShowDescriptions = False
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              MinWidth = 66
              Options.Editing = False
              Options.Filtering = False
              Options.Grouping = False
              Options.HorzSizing = False
              Options.Moving = False
              Options.Sorting = False
              Width = 66
            end
            object cxGrid1DBTableView1Column2: TcxGridDBColumn
              Caption = 'Audio'
              DataBinding.FieldName = 'AUDIO_1'
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.Images = cxImageList1
              Properties.Items = <
                item
                  ImageIndex = 0
                  Value = 1
                end>
              Properties.ReadOnly = True
              Properties.ShowDescriptions = False
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              MinWidth = 66
              Options.Editing = False
              Options.Filtering = False
              Options.Grouping = False
              Options.HorzSizing = False
              Options.Moving = False
              Options.Sorting = False
              Width = 66
            end
            object cxGrid1DBTableView1RESUMO: TcxGridDBColumn
              Caption = 'Resumo'
              DataBinding.FieldName = 'RESUMO'
              PropertiesClassName = 'TcxTextEditProperties'
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Width = 350
            end
            object cxGrid1DBTableView1Column3: TcxGridDBColumn
              Caption = 'Imagem Resumo'
              DataBinding.FieldName = 'RESUMO_IMAGEM_1'
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.Images = cxImageList1
              Properties.Items = <
                item
                  ImageIndex = 3
                  Value = 1
                end>
              Properties.ReadOnly = True
              Properties.ShowDescriptions = False
              MinWidth = 120
              Options.Editing = False
              Options.Filtering = False
              Options.Grouping = False
              Options.HorzSizing = False
              Options.Moving = False
              Options.Sorting = False
              Width = 120
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBTableView1
          end
        end
      end
      object Panel9: TPanel
        Left = 0
        Top = 200
        Width = 1101
        Height = 445
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        object pnlExercicios: TPanel
          Left = 0
          Top = 0
          Width = 1101
          Height = 200
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object pnlExerciciosBotoes: TPanel
            Left = 0
            Top = 30
            Width = 38
            Height = 170
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object btnIncluirExercicio: TAdvGlowButton
              Left = 0
              Top = 0
              Width = 38
              Height = 32
              Align = alTop
              BorderStyle = bsNone
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 3618615
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ImageIndex = 0
              Images = frmMain.cxImageList5
              NotesFont.Charset = DEFAULT_CHARSET
              NotesFont.Color = clWindowText
              NotesFont.Height = -11
              NotesFont.Name = 'Tahoma'
              NotesFont.Style = []
              ParentFont = False
              ShowCaption = False
              Transparent = True
              TabOrder = 0
              OnClick = btnIncluirExercicioClick
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
            object btnExcluirExercicio: TAdvGlowButton
              Left = 0
              Top = 64
              Width = 38
              Height = 32
              Align = alTop
              BorderStyle = bsNone
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 3618615
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ImageIndex = 1
              Images = frmMain.cxImageList5
              NotesFont.Charset = DEFAULT_CHARSET
              NotesFont.Color = clWindowText
              NotesFont.Height = -11
              NotesFont.Name = 'Tahoma'
              NotesFont.Style = []
              ParentFont = False
              ShowCaption = False
              Transparent = True
              TabOrder = 1
              OnClick = btnExcluirExercicioClick
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
            object btnEditarExercicio: TAdvGlowButton
              Left = 0
              Top = 32
              Width = 38
              Height = 32
              Align = alTop
              BorderStyle = bsNone
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 3618615
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ImageIndex = 2
              Images = frmMain.cxImageList5
              NotesFont.Charset = DEFAULT_CHARSET
              NotesFont.Color = clWindowText
              NotesFont.Height = -11
              NotesFont.Name = 'Tahoma'
              NotesFont.Style = []
              ParentFont = False
              ShowCaption = False
              Transparent = True
              TabOrder = 2
              OnClick = btnEditarExercicioClick
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
          object pnlExerciciosTituloGeral: TPanel
            Left = 0
            Top = 0
            Width = 1101
            Height = 30
            Align = alTop
            BevelOuter = bvNone
            Color = clWhite
            ParentBackground = False
            TabOrder = 1
            object pnlExerciciosTituloLeft: TPanel
              Left = 0
              Top = 0
              Width = 38
              Height = 30
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 0
            end
            object pnlExerciciosTitulo: TPanel
              Left = 38
              Top = 0
              Width = 1063
              Height = 30
              Align = alClient
              BevelOuter = bvNone
              Color = 7301738
              Padding.Top = 2
              ParentBackground = False
              TabOrder = 1
              StyleElements = []
              object lblExercicios: TLabel
                Left = 0
                Top = 2
                Width = 1063
                Height = 28
                Align = alClient
                Alignment = taCenter
                Caption = 'Exerc'#237'cios'
                Color = 7301738
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -19
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
                StyleElements = []
                ExplicitWidth = 96
                ExplicitHeight = 23
              end
            end
          end
          object cxGrid2: TcxGrid
            Left = 38
            Top = 30
            Width = 1063
            Height = 170
            Align = alClient
            BevelInner = bvNone
            BevelOuter = bvNone
            BorderStyle = cxcbsNone
            TabOrder = 2
            LookAndFeel.ScrollbarMode = sbmHybrid
            object cxGridDBTableView1: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.DataModeController.GridModeBufferCount = 250
              DataController.DataSource = dtmAulas.dtsExercicios
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsSelection.CellSelect = False
              OptionsView.DataRowHeight = 31
              OptionsView.GridLineColor = 15980971
              OptionsView.GroupByBox = False
              OptionsView.GroupRowHeight = 30
              OptionsView.HeaderHeight = 30
              OptionsView.Indicator = True
              OptionsView.RowSeparatorColor = 16445404
              Styles.Content = cxStyle1
              Styles.Header = cxStyle4
              Styles.Selection = cxStyle6
              object cxGridDBColumn1: TcxGridDBColumn
                Caption = 'C'#243'digo'
                DataBinding.FieldName = 'CODIGO'
                PropertiesClassName = 'TcxTextEditProperties'
                Options.Editing = False
                Options.Filtering = False
                Options.Sorting = False
              end
              object cxGridDBColumn2: TcxGridDBColumn
                Caption = 'Descri'#231#227'o'
                DataBinding.FieldName = 'DESCRICAO'
                PropertiesClassName = 'TcxTextEditProperties'
                Options.Editing = False
                Options.Filtering = False
                Options.Sorting = False
                Width = 424
              end
              object cxGridDBTableView1Column2: TcxGridDBColumn
                Caption = 'T'#237'tulo'
                DataBinding.FieldName = 'TITULO'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.ReadOnly = True
                Options.Editing = False
                Options.Filtering = False
                Options.Grouping = False
                Options.Sorting = False
                Width = 263
              end
              object cxGridDBColumn3: TcxGridDBColumn
                Caption = 'Imagem'
                DataBinding.FieldName = 'IMAGEM_1'
                PropertiesClassName = 'TcxImageComboBoxProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Images = cxImageList1
                Properties.Items = <
                  item
                    ImageIndex = 3
                    Value = 1
                  end>
                Properties.ReadOnly = True
                Properties.ShowDescriptions = False
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                MinWidth = 66
                Options.Editing = False
                Options.Filtering = False
                Options.Grouping = False
                Options.HorzSizing = False
                Options.Moving = False
                Options.Sorting = False
                Width = 66
              end
              object cxGridDBTableView1Column1: TcxGridDBColumn
                Caption = 'V'#237'deo'
                DataBinding.FieldName = 'VIDEO_1'
                PropertiesClassName = 'TcxImageComboBoxProperties'
                Properties.Images = cxImageList1
                Properties.Items = <
                  item
                    ImageIndex = 4
                    Value = 1
                  end>
                Properties.ReadOnly = True
                Properties.ShowDescriptions = False
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                MinWidth = 66
                Options.Editing = False
                Options.Filtering = False
                Options.Grouping = False
                Options.HorzSizing = False
                Options.Moving = False
                Options.Sorting = False
                Width = 66
              end
            end
            object cxGridLevel1: TcxGridLevel
              GridView = cxGridDBTableView1
            end
          end
        end
        object pnlQuestoes: TPanel
          Left = 0
          Top = 200
          Width = 1101
          Height = 245
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 1
          object pnlQuestoesBotoes: TPanel
            Left = 0
            Top = 30
            Width = 38
            Height = 215
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object btnIncluirQuestao: TAdvGlowButton
              Left = 0
              Top = 0
              Width = 38
              Height = 32
              Align = alTop
              BorderStyle = bsNone
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 3618615
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ImageIndex = 0
              Images = frmMain.cxImageList5
              NotesFont.Charset = DEFAULT_CHARSET
              NotesFont.Color = clWindowText
              NotesFont.Height = -11
              NotesFont.Name = 'Tahoma'
              NotesFont.Style = []
              ParentFont = False
              ShowCaption = False
              Transparent = True
              TabOrder = 0
              OnClick = btnIncluirQuestaoClick
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
            object btnEditarQuestao: TAdvGlowButton
              Left = 0
              Top = 32
              Width = 38
              Height = 32
              Align = alTop
              BorderStyle = bsNone
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 3618615
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ImageIndex = 2
              Images = frmMain.cxImageList5
              NotesFont.Charset = DEFAULT_CHARSET
              NotesFont.Color = clWindowText
              NotesFont.Height = -11
              NotesFont.Name = 'Tahoma'
              NotesFont.Style = []
              ParentFont = False
              ShowCaption = False
              Transparent = True
              TabOrder = 1
              OnClick = btnEditarQuestaoClick
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
            object btnExcluirQuestao: TAdvGlowButton
              Left = 0
              Top = 64
              Width = 38
              Height = 32
              Align = alTop
              BorderStyle = bsNone
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 3618615
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ImageIndex = 1
              Images = frmMain.cxImageList5
              NotesFont.Charset = DEFAULT_CHARSET
              NotesFont.Color = clWindowText
              NotesFont.Height = -11
              NotesFont.Name = 'Tahoma'
              NotesFont.Style = []
              ParentFont = False
              ShowCaption = False
              Transparent = True
              TabOrder = 2
              OnClick = btnExcluirQuestaoClick
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
          object pnlQuestoesTituloGeral: TPanel
            Left = 0
            Top = 0
            Width = 1101
            Height = 30
            Align = alTop
            BevelOuter = bvNone
            Color = clWhite
            ParentBackground = False
            TabOrder = 1
            object pnlQuestoesTituloLeft: TPanel
              Left = 0
              Top = 0
              Width = 38
              Height = 30
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 0
            end
            object pnlQuestoesTitulo: TPanel
              Left = 38
              Top = 0
              Width = 1063
              Height = 30
              Align = alClient
              BevelOuter = bvNone
              Color = 13336105
              Padding.Top = 2
              ParentBackground = False
              TabOrder = 1
              StyleElements = []
              object lblQuestoes: TLabel
                Left = 0
                Top = 2
                Width = 1063
                Height = 28
                Align = alClient
                Alignment = taCenter
                Caption = 'Quest'#245'es / Respostas'
                Color = 13336105
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -19
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
                StyleElements = []
                ExplicitWidth = 210
                ExplicitHeight = 23
              end
            end
          end
          object cxGrid3: TcxGrid
            Left = 38
            Top = 30
            Width = 1063
            Height = 215
            Align = alClient
            BevelInner = bvNone
            BevelOuter = bvNone
            BorderStyle = cxcbsNone
            TabOrder = 2
            LookAndFeel.ScrollbarMode = sbmHybrid
            object cxGridDBTableView2: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.DataModeController.GridModeBufferCount = 250
              DataController.DataSource = dtmAulas.dtsQuestoes
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsSelection.CellSelect = False
              OptionsView.DataRowHeight = 31
              OptionsView.GridLineColor = 15980971
              OptionsView.GroupByBox = False
              OptionsView.GroupRowHeight = 30
              OptionsView.HeaderHeight = 30
              OptionsView.Indicator = True
              OptionsView.RowSeparatorColor = 16445404
              Styles.Content = cxStyle1
              Styles.Header = cxStyle4
              Styles.Selection = cxStyle6
              object cxGridDBColumn5: TcxGridDBColumn
                Caption = 'C'#243'digo'
                DataBinding.FieldName = 'CODIGO'
                PropertiesClassName = 'TcxTextEditProperties'
                Options.Editing = False
                Options.Filtering = False
                Options.Sorting = False
              end
              object cxGridDBColumn6: TcxGridDBColumn
                Caption = 'Descri'#231#227'o'
                DataBinding.FieldName = 'DESCRICAO'
                PropertiesClassName = 'TcxTextEditProperties'
                Options.Editing = False
                Options.Filtering = False
                Options.Sorting = False
                Width = 414
              end
              object cxGridDBTableView2Column1: TcxGridDBColumn
                Caption = 'Imagem'
                DataBinding.FieldName = 'IMAGEM_1'
                PropertiesClassName = 'TcxImageComboBoxProperties'
                Properties.Images = cxImageList1
                Properties.Items = <
                  item
                    ImageIndex = 3
                    Value = 1
                  end>
                Properties.ReadOnly = True
                Properties.ShowDescriptions = False
                FooterAlignmentHorz = taCenter
                GroupSummaryAlignment = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Editing = False
                Options.Filtering = False
                Options.Moving = False
                Options.Sorting = False
                Width = 66
              end
              object cxGridDBColumn7: TcxGridDBColumn
                Caption = 'Correta'
                DataBinding.FieldName = 'CORRETA'
                PropertiesClassName = 'TcxImageComboBoxProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Images = cxImageList1
                Properties.Items = <
                  item
                    ImageIndex = 1
                    Value = 1
                  end
                  item
                    ImageIndex = 2
                    Value = 0
                  end>
                Properties.ReadOnly = True
                Properties.ShowDescriptions = False
                FooterAlignmentHorz = taCenter
                GroupSummaryAlignment = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Editing = False
                Options.Filtering = False
                Options.Sorting = False
                Width = 66
              end
            end
            object cxGridLevel2: TcxGridLevel
              GridView = cxGridDBTableView2
            end
          end
        end
      end
    end
    object tbsLocalizar: TTabSheet
      Caption = 'Localizar'
      ImageIndex = 1
      object pnlLocalizar: TPanel
        Left = 0
        Top = 0
        Width = 1101
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
        object edtLocAulas: TEdit
          Left = 27
          Top = 30
          Width = 494
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 0
          OnEnter = edtLocAulasEnter
          OnExit = edtLocAulasExit
          OnKeyPress = edtLocAulasKeyPress
        end
        object btnLocalizarUsuarios: TAdvGlowButton
          Left = 532
          Top = 21
          Width = 36
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
      object cxGrid4: TcxGrid
        Left = 0
        Top = 81
        Width = 1101
        Height = 564
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = cxcbsNone
        TabOrder = 1
        LookAndFeel.ScrollbarMode = sbmHybrid
        object cxGridDBTableView3: TcxGridDBTableView
          OnDblClick = cxGridDBTableView3DblClick
          Navigator.Buttons.CustomButtons = <>
          DataController.DataModeController.GridModeBufferCount = 250
          DataController.DataSource = dtmAulas.dtsBuscaAulas
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsSelection.CellSelect = False
          OptionsView.DataRowHeight = 31
          OptionsView.GridLineColor = 15980971
          OptionsView.GroupByBox = False
          OptionsView.GroupRowHeight = 30
          OptionsView.HeaderHeight = 30
          OptionsView.Indicator = True
          OptionsView.RowSeparatorColor = 16445404
          Styles.Content = cxStyle1
          Styles.Header = cxStyle4
          Styles.Selection = cxStyle6
          object cxGridDBColumn8: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CODIGO'
            PropertiesClassName = 'TcxTextEditProperties'
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
          end
          object cxGridDBColumn9: TcxGridDBColumn
            Caption = 'T'#237'tulo'
            DataBinding.FieldName = 'TITULO'
            PropertiesClassName = 'TcxTextEditProperties'
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Width = 414
          end
          object cxGridDBColumn11: TcxGridDBColumn
            Caption = 'Turma'
            DataBinding.FieldName = 'DESCRICAO'
            PropertiesClassName = 'TcxTextEditProperties'
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Width = 222
          end
          object cxGridDBColumn10: TcxGridDBColumn
            Caption = 'Imagem'
            DataBinding.FieldName = 'IMAGEM_1'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Images = cxImageList1
            Properties.Items = <
              item
                ImageIndex = 3
                Value = 1
              end>
            Properties.ShowDescriptions = False
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Options.Moving = False
            Options.Sorting = False
            Width = 66
          end
        end
        object cxGridLevel3: TcxGridLevel
          GridView = cxGridDBTableView3
        end
      end
    end
  end
  object OpenPicture: TOpenPictureDialog
    Filter = 'JPEG Image File (*.jpg)|*.jpg'
    Left = 216
    Top = 372
  end
  object imgDetail: TImageList
    Left = 362
    Top = 372
    Bitmap = {
      494C010105000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
      0000000000000000000000000000000000000000000000000000000000009797
      BF008B8BB300EDEDF100FFFFFF00FFFFFF00FFFFFF00FFFFFF00EEEEF2008B8B
      B5009797BE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A1A1BC005C5C
      B5006868C1008282B000EBEBEF00FFFFFF00FFFFFF00EAEAEF008181AF006B6B
      C4006161B9009F9FBB0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7BB6006A6A
      C5008585D8006767C2007676A600E6E6EB00E6E6EB007474A4006969C4009393
      E4007878D2007A7AB60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B8B8D6006A6A
      BE007676CD008383D6006363BC006D6DA0006C6CA0006565BF008E8EE0008282
      D8007474C700B9B9D70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FBFBFD00B8B8
      D6006A6ABC007474CA007E7ED0005E5EB6005F5FB7008181D2007979D0007272
      C200BDBDD900FCFCFD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00C4C4D9007A7AC5008686DB008686D9008787DA008484DA007878C200CACA
      DD00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00D2D2D8006262A5007B7BD3009090E0009191E1007A7AD2006464A000DADA
      E500FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00CDCD
      D300545492005B5BB3008E8EDF009393E7009898EA008D8DDC005656AF005D5D
      9300D8D8DC00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D6D6DB005252
      8F005D5DB800A2A2EF00A4A4F6009090D2008F8FD100ADADFB009E9EEC005555
      B0005E5E9300E3E3E60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A2A2B9006262
      C100AFAFF500B9B9FF009898D700E6E6F100DDDDEC009696DA00C1C1FF00AAAA
      F3006161BC00BABAC80000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C4C4D400A5A5
      EC00D3D3FF009D9DDB00E4E4F100FFFFFF00FFFFFF00D6D6E1009F9FE000DBDB
      FF009D9DE300D6D6DF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FBFBFC00BABA
      D700A1A1DB00DEDEED00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CFCFDE009E9E
      DA00C3C3D700FDFDFD0000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFB29576FF8B6B55FF8B6B
      55FF8B6B55FF8B6B55FF6F594CFF6F594CFF6F594CFF594941FF594941FF5949
      41FF594941FF433129FF6F594CFFFFFFFFFFFFFFFFFFB49776FF917057FF9170
      57FF917057FF7B6152FF7B6152FF6B5549FF6B5549FF5C4B43FF5C4B43FF5545
      3EFF55453EFF433129FF7B6152FFFFFFFFFFFFFFFFFFB49776FF917057FF9170
      57FF917057FF7B6152FF7B6152FF6B5549FF6B5549FF5C4B43FF5C4B43FF5545
      3EFF55453EFF433129FF7B6152FFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFF8B6B55FFE4DBD5FFF5F3
      F0FFF4ECE6FFF4ECE6FFF4ECE6FFF4ECE6FFF4ECE6FFF2E8DEFFF2E8DEFFF2E8
      DEFFF5F3F0FFD1CCCBFF433129FFFFFFFFFFFFFFFFFF917057FFE4DBD5FFFAF6
      F2FFF6F1ECFFF5EDE5FFF5EDE5FFF0E9E2FFF0E9E2FFF0E9E2FFF0E9E2FFEFE7
      DEFFF6F1ECFFD1CCCBFF433129FFFFFFFFFFFFFFFFFF917057FFE4DBD5FFFAF6
      F2FFF6F1ECFFF5EDE5FFF5EDE5FFF0E9E2FFF0E9E2FFF0E9E2FFF0E9E2FFEFE7
      DEFFF6F1ECFFD1CCCBFF433129FFFFFFFFFF0000000000000000000000000000
      000000000000FBFCFB00BFCBBF00EBECEB000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFB29576FFF5F3F0FF4DB0
      7AFF4EB17BFF51B37DFF52B47DFF53B67FFF54B780FF55B981FF57BA83FF58BC
      84FF58BC84FFF5F3F0FF594941FFFFFFFFFFFFFFFFFFB49776FFFAF6F2FFFDDC
      BBFFFCDAB6FFFCD7B1FFFBD4ABFFFBD4ABFFFBD1A4FFFBCE9EFFFBCE9EFFFCCA
      95FFFCCA95FFF6F1ECFF55453EFFFFFFFFFFFFFFFFFFB49776FFFAF6F2FFFDDC
      BBFFBAA895FF707070FFFBD4ABFFFBD4ABFFFBD1A4FFFBCE9EFFFBCE9EFFFCCA
      95FFFCCA95FFF6F1ECFF55453EFFFFFFFFFF0000000000000000000000000000
      000000000000A6C3A6007CD37C0084B98400F2F2F20000000000000000000000
      000000000000000000000000000000000000FFFFFFFFB29576FFF4ECE6FF4DAF
      78FF4EB079FF4FB17AFF51B37CFF51B47DFF53B57FFF53B67FFF54B781FF55B8
      81FF56B982FFF2E8DEFF594941FFFFFFFFFFFFFFFFFFB49776FFF6F1ECFFFDDC
      BBFFFCDAB6FFFCDAB6FFFCD7B1FFFBD4ABFFFBD1A4FFFBD1A4FFFBCE9EFFFCCA
      95FFFCCA95FFEFE7DEFF55453EFFFFFFFFFFFFFFFFFFB49776FFF6F1ECFFBBA9
      98FF707070FF707070FFFCD7B1FFFBD4ABFFFBD1A4FFFBD1A4FFFBCE9EFFFCCA
      95FFFCCA95FFEFE7DEFF55453EFFFFFFFFFF0000000000000000000000000000
      0000ADBEAD006BC36B009FF69F00A9FEA90087B58700F3F4F300000000000000
      000000000000000000000000000000000000FFFFFFFFB29576FFF4ECE6FF4DAE
      79FF4DAF79FF4FB07BFF4FB17BFF51B37DFF53B47EFF51B47EFF53B67FFF53B6
      80FF54B780FFF2E8DEFF594941FFFFFFFFFFFFFFFFFF000000FF7E6D5BFF0000
      00FF7F7060FF000000FF7F7060FF000000FF7F7264FF000000FF7F7264FFFBCE
      9EFFFBCE9EFFF0E9E2FF5C4B43FFFFFFFFFFFFFFFFFFB49776FFB7B4B2FF7070
      70FF969696FF707070FFFCD7B1FFFBD4ABFFFBD4ABFF868078FFD0B394FFFBCE
      9EFFFBCE9EFFF0E9E2FF5C4B43FFFFFFFFFF000000000000000000000000B0BF
      B0005DB35D006BC56B0080D580009FF39F008FE88F0083AD8300F5F6F5000000
      000000000000000000000000000000000000FFFFFFFFC7AC85FFF4ECE6FF4DAE
      79FF4DAE79FF4EAF79FF4EB07AFF4FB17BFF50B27CFF51B37DFF51B47DFF52B4
      7EFF51B47EFFF4ECE6FF594941FFFFFFFFFFFFFFFFFF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFFBD1
      A4FFFBCE9EFFF5EDE5FF5C4B43FFFFFFFFFF707070FF707070FF707070FF9696
      96FF8E8E8EFF707070FFFCDAB6FF7D7A76FFC1AA92FFC0A992FF90867CFFFBD1
      A4FFFBCE9EFFF5EDE5FF5C4B43FFFFFFFFFF0000000000000000B4C1B40056A7
      560058AE58005CAE5C006BC06B0076CD76007BD37B0069C3690085AE8500F5F7
      F50000000000000000000000000000000000FFFFFFFFC7AC85FFF4ECE6FFFFE5
      BDFFFFE5BDFFFFE5BEFFFFE5BFFFFFE6C0FFFFE7C2FFFFE8C4FFFFE9C7FFFFEA
      CAFFFFEBCDFFF4ECE6FF6F594CFFFFFFFFFFFFFFFFFF000000FFFBCE9EFFFEE3
      C7FF000000FFFCCA95FFFEE3C7FF000000FFFCCA95FFFEE3C7FF000000FFFBD1
      A4FFFBD1A4FFF5EDE5FF6B5549FFFFFFFFFF707070FFA2A2A2FF8E8E8EFF8E8E
      8EFF8E8E8EFF707070FFFCDAB6FFDBC1A6FF727271FFD8BB9CFF717170FFFBD1
      A4FFFBD1A4FFF5EDE5FF6B5549FFFFFFFFFF00000000BBC9BB00539C530050A3
      500055A555005CAD5C0063BA63006ABF6A0065B865005EB35E0051A9510089AB
      8900F7F8F700000000000000000000000000FFFFFFFFC7AC85FFF4ECE6FFFFE2
      B5FFFFE2B5FFFFE2B6FFFFE2B7FFFFE3B9FFFFE4BBFFFFE5BDFFFFE6C0FFFFE7
      C4FFFFE9C7FFF4ECE6FF6F594CFFFFFFFFFFFFFFFFFF000000FFFEE3C7FFFEE3
      C7FF000000FFFEE3C7FFFEE3C7FF000000FFFEE3C7FFFEE3C7FF000000FFFBD4
      ABFFFBD4ABFFFAF6F2FF6B5549FFFFFFFFFF707070FFB4B4B4FFAAAAAAFF9B9B
      9BFF9B9B9BFF707070FFFDDCBBFFDCC3A9FF727271FFD9BDA1FF717171FFFBD4
      ABFFFBD4ABFFFAF6F2FF6B5549FFFFFFFFFF0000000078A978004BA24B0061B4
      610075CB750074CC740070B8700074C874007BD37B0075CB750067BE67004CA2
      4C0089A68900F7F8F7000000000000000000FFFFFFFFD6C09AFFF4ECE6FFFFDE
      ADFFFFDEADFFFFDFAEFFFFDFAEFFFFE0B1FFFFE1B3FFFFE2B6FFFFE3BAFFFFE5
      BDFFFFE7C2FFF4ECE6FF6F594CFFFFFFFFFFFFFFFFFF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFFCD7
      B1FFFBD4ABFFFAF6F2FF7B6152FFFFFFFFFF707070FF707070FF707070FFAAAA
      AAFF9B9B9BFF707070FFFDDFC0FF7D7A78FFC2AF9CFFC0AD98FF908880FFFCD7
      B1FFFBD4ABFFFAF6F2FF7B6152FFFFFFFFFF000000009BBA9B0068C3680091E7
      910084E184007BBB7B00DBE4DB00A3C3A3007ED67E008FE48F008CE28C0073CB
      73004A9C4A008EA98E00FAFBFA0000000000FFFFFFFFD6C09AFFF4ECE6FF04D1
      FDFF04D1FDFFC2D6B2FFFFDCA7FFFFDDA9FFFFDEACFFFFDFAFFFFFE1B3FFFEE2
      B7FFFFE4BBFFF4ECE6FF6F594CFFFFFFFFFFFFFFFFFF000000FF7E6D5BFF0000
      00FF7F7060FF000000FF7F7060FF000000FF7F7264FF000000FF7F7264FFFCDA
      B6FFFCD7B1FFFAF6F2FF7B6152FFFFFFFFFFFFFFFFFFD6C09AFFB9B7B5FF7070
      70FFAAAAAAFF707070FFFDDFC0FFFDDFC0FFFDDFC0FF87817CFFD1BAA1FFFCDA
      B6FFFCD7B1FFFAF6F2FF7B6152FFFFFFFFFF00000000FAFBFA0099BE99007CE1
      7C007DB97D00E6EFE60000000000FEFEFE00A0C8A00089E28900A5F8A500A1F3
      A1007ED67E004697460094AD940000000000FFFFFFFFDFCDAAFFFCF3E7FF04E4
      FDFF04E4FDFF04D1FDFFFFD99FFFFFDAA1FFFFDBA4FFFFDCA8FFFFDEABFFFFE0
      B0FFFFE1B4FFF4ECE6FF8B6B55FFFFFFFFFFFFFFFFFFDECBA8FFFAF6F2FFFEE3
      C7FFFEE3C7FFFEE3C7FFFEE3C7FFFDDFC0FFFDDFC0FFFDDCBBFFFDDCBBFFFAF6
      F2FFFAF6F2FFFAF6F2FF7B6152FFFFFFFFFFFFFFFFFFDECBA8FFFAF6F2FFBBAD
      9EFF707070FF707070FFFEE3C7FFFDDFC0FFFDDFC0FFFDDCBBFFFDDCBBFFFAF6
      F2FFFAF6F2FFFAF6F2FF7B6152FFFFFFFFFF0000000000000000F0F4F000A5C1
      A500D4E2D400000000000000000000000000FAFCFA009AC19A009EF79E00C0FF
      C000BCFFBC008AE38A0066A3660000000000FFFFFFFFE4D3AEFFFCF3E7FF00E4
      FFFF04E4FDFF04D1FDFFFFD697FFFFD799FFFFD89DFFFFD9A0FFFFDBA5FFFFDD
      A9FFFFDFAEFFF5F3F0FF8B6B55FFFFFFFFFFFFFFFFFFE3D1B0FFF5EDE5FFFEE3
      C7FFFEE3C7FFFEE3C7FFFEE3C7FFFEE3C7FFFDDFC0FFFDDFC0FFFDDFC0FFFAF6
      F2FFECBB89FFECBB89FF917057FFFFFFFFFFFFFFFFFFE3D1B0FFF5EDE5FFFEE3
      C7FFBBAD9EFF707070FFFEE3C7FFFEE3C7FFFDDFC0FFFDDFC0FFFDDFC0FFFAF6
      F2FFECBB89FFECBB89FF917057FFFFFFFFFF0000000000000000000000000000
      00000000000000000000000000000000000000000000F9FBF9009ABE9A00B9FF
      B900F3FFF300A2F4A200A5C3A50000000000FFFFFFFFE4D3AEFFF4EBD9FFFCF3
      E7FFF4EBD9FFF4EBD9FFF4EBD9FFF2E8DEFFF2E8DEFFF2E8DEFFF2E8DEFFF2E8
      DEFFF4ECE6FFE4DBD5FF8B6B55FFFFFFFFFFFFFFFFFFE5D3AEFFF0E7D5FFF5ED
      E5FFF6F1ECFFF5EDE5FFF6F1ECFFF6F1ECFFF5EDE5FFF5EDE5FFF5EDE5FFF5ED
      E5FFECBB89FF917057FFFFFFFFFF00000000FFFFFFFFE5D3AEFFF0E7D5FFF5ED
      E5FFF6F1ECFFF5EDE5FFF6F1ECFFF6F1ECFFF5EDE5FFF5EDE5FFF5EDE5FFF5ED
      E5FFECBB89FF917057FFFFFFFFFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F8F9F8009DC5
      9D0095F79500A3C2A300FCFDFC0000000000FFFFFFFFF4EBD9FFE4D3AEFFE4D3
      AEFFDFCDAAFFD6C09AFFD6C09AFFC7AC85FFC7AC85FFC7AC85FFB29576FFB295
      76FFB29576FF8B6B55FFB29576FFFFFFFFFFFFFFFFFFF0E7D5FFE5D3AEFFE3D1
      B0FFDECBA8FFD6C09AFFD6C09AFFC8AF88FFC8AF88FFB49776FFB49776FFB497
      76FFB49776FFFFFFFFFF0000000000000000FFFFFFFFF0E7D5FFE5D3AEFFE3D1
      B0FFDECBA8FFD6C09AFFD6C09AFFC8AF88FFC8AF88FFB49776FFB49776FFB497
      76FFB49776FFFFFFFFFF00000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E1E8
      E100ACC5AC00EDF2ED000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF00FFFF000000000000FFFF000000000000
      E007000000000000C003000000000000C003000000000000C003000000000000
      C003000000000000C003000000000000C003000000000000C003000000000000
      C003000000000000C003000000000000C003000000000000C003000000000000
      FFFF000000000000FFFF000000000000000000000000FFFF000000000000FFFF
      000000000000F8FF000000000000F87F000000000000F03F000000000000E01F
      000000000000C00F000000000000800700000000000080030000000000008001
      0000000000008201000000000000C701000000000000FF81000000000000FFC1
      000000000000FFE3000000000000FFFF00000000000000000000000000000000
      000000000000}
  end
  object cxStyleRepository: TcxStyleRepository
    Left = 134
    Top = 372
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5131854
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = 5131854
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 15394787
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5131854
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      TextColor = 5131854
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 15921390
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5131854
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = []
      TextColor = 5131854
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14275534
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5131854
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = 5131854
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13665116
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 13665116
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      TextColor = 13665116
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 15394787
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11237400
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = 11237400
    end
    object cxStyle7: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5131854
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = []
      TextColor = 5131854
    end
    object cxStyle8: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Roboto'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle9: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Roboto'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle10: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Roboto'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle11: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Roboto'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle12: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Roboto'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle13: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Roboto'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle14: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Roboto'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle15: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Roboto'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle16: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Roboto'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle17: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Roboto'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle18: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Roboto'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle19: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Roboto'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle20: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Roboto'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle21: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Roboto'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle22: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Roboto'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle23: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Roboto'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle24: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Roboto'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle25: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Roboto'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle26: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Roboto'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle27: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Roboto'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle28: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Roboto'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyleAcessibilidade: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16382199
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5131854
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = []
      TextColor = 5131854
    end
    object CorFiltro: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clWhite
      TextColor = clWhite
    end
    object FilterRowText: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 15921390
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5131854
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      TextColor = 3158064
    end
    object FilterBox: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 13565183
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Roboto'
      Font.Style = []
    end
  end
  object cxImageList1: TcxImageList
    SourceDPI = 96
    Height = 28
    Width = 28
    FormatVersion = 1
    DesignInfo = 24379680
    ImageInfo = <
      item
        Image.Data = {
          760C0000424D760C00000000000036000000280000001C0000001C0000000100
          200000000000400C000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000041A2327094259630C5B7A880E67
          8B9B0E678B9B0C5B7A8809425963041A23270000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000003151C1F0D5E
          7F8D1491C4DA17AAE5FF17AAE5FF17AAE5FF17AAE5FF17AAE5FF17AAE5FF1491
          C4DA0D5E7F8D03151C1F00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000C5B7A8817AAE5FF17AAE5FF17AAE5FF17AAE5FF17AAE5FF17AA
          E5FF17AAE5FF17AAE5FF17AAE5FF17AAE5FF17AAE5FF17AAE5FF0C5B7A880000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000020D1214138BBBD017AAE5FF17AAE5FF17AA
          E5FF17AAE5FF17AAE5FF17AAE5FF17AAE5FF17AAE5FF17AAE5FF17AAE5FF17AA
          E5FF17AAE5FF17AAE5FF17AAE5FF138BBBD0020D111300000000000000000000
          0000000000000000000000000000000000000000000000000000010B0E10159C
          D2EA17AAE5FF17AAE5FF17AAE5FF17AAE5FF17AAE5FF17AAE5FF17AAE5FF17AA
          E5FF17AAE5FF17AAE5FF17AAE5FF17AAE5FF17AAE5FF17AAE5FF17AAE5FF17AA
          E5FF159CD2EA010B0E1000000000000000000000000000000000000000000000
          000000000000000000001491C3D917AAE5FF17AAE5FF17AAE5FF17AAE5FF17AA
          E5FF17AAE5FF17AAE5FF17AAE5FF15A9E5FF16AAE5FF17AAE5FF1BACE6FF00A0
          E2FF009EE1FF19ABE5FF18AAE5FF17AAE5FF17AAE5FF1390C2D8000000000000
          000000000000000000000000000000000000000000000C5B7B8917AAE5FF17AA
          E5FF17AAE5FF17AAE5FF17AAE5FF17AAE5FF18AAE5FF19ABE5FF00A0E2FF009F
          E2FF10A8E4FF1AACE6FF009DE1FF7BCFF0FF79CEF0FF009AE0FF14A9E5FF18AA
          E5FF17AAE5FF17AAE5FF0C5B7B89000000000000000000000000000000000000
          0000020E131517AAE5FF17AAE5FF17AAE5FF17AAE5FF17AAE5FF17AAE5FF1AAB
          E5FF0DA6E4FF0098DFFF3BB7E9FFBAE6F7FF4ABDEAFF069FE2FF36B3E8FF46B9
          EAFFDAF1FBFF95D7F3FF009AE0FF17ABE5FF17AAE5FF17AAE5FF17AAE5FF020E
          1315000000000000000000000000000000000D5F808F17AAE5FF17AAE5FF17AA
          E5FF17AAE5FF17AAE5FF18ABE5FF009CE1FF009FE2FF81D0F0FFFFFFFFFFFFFF
          FFFF65C7EEFF0088DBFF73CBEFFFCDECF9FF009AE0FFE1F4FCFF70CAEFFF009B
          E1FF19ABE5FF17AAE5FF17AAE5FF0D608190000000000000000000000000020E
          1315159BD1E917AAE5FF17AAE5FF1BACE6FF00A2E2FF009CE1FF0098DFFF3BB5
          E8FFD3EFFAFFFFFFFFFFFFFFFFFFFFFFFFFF3DB8E9FF5FC6EDFF3CB6E9FF71CB
          EFFFBAE6F8FF18AAE5FFDFF4FBFF0BA4E3FF12A9E5FF17AAE5FF17AAE5FF159B
          D0E803171F220000000000000000083C515A17AAE5FF17AAE5FF17AAE5FF08A1
          E2FF63C6EEFFAAE0F5FFB1E2F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF41BAEAFF42B2E8FFFCFFFFFF0AA4E3FFB6E4F7FF41B9E9FF9DDBF4FF6ECA
          EFFF00A0E2FF17AAE5FF17AAE5FF17AAE5FF09455D6800000000000000000C5B
          7B8917AAE5FF17AAE5FF17AAE5FF009AE0FFBBE5F8FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5CC3EDFF008ADBFF69C8EEFFA6DE
          F5FF4DBEEBFF8BD5F2FF5EC4EDFFA8DFF5FF009BE1FF17AAE5FF17AAE5FF17AA
          E5FF0D5F808E00000000000000000E6A8F9F17AAE5FF17AAE5FF17AAE5FF009C
          E1FFA4DDF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF56C1ECFF009DE1FF1DACE6FFB3E3F7FF48BCEAFF93D8F3FF4CBEEBFFB2E3
          F6FF009DE1FF17AAE5FF17AAE5FF17AAE5FF0E6A8F9F00000000000000000E6A
          8F9F17AAE5FF17AAE5FF17AAE5FF009CE1FFA4DDF5FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF56C1ECFF009DE1FF1AABE5FFB3E3
          F7FF48BCEAFF93D7F3FF4ABDEBFFB3E3F6FF009DE1FF17AAE5FF17AAE5FF17AA
          E5FF0E6A8F9F00000000000000000C5B7B8917AAE5FF17AAE5FF17AAE5FF009B
          E1FFB0E1F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF5AC3ECFF0090DDFF52C0ECFFB1E3F6FF42BAEAFF91D7F3FF54C0ECFFAEE1
          F6FF009BE1FF17AAE5FF17AAE5FF17AAE5FF0D5F808E0000000000000000083C
          515A17AAE5FF17AAE5FF17AAE5FF019DE1FF93D7F3FFF6FBFEFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF49BCEBFF1EA2E3FFF6FDFEFF23AD
          E6FF96D9F3FF5BC3EDFF86D3F1FF87D3F2FF009DE1FF17AAE5FF17AAE5FF17AA
          E5FF09455D680000000000000000020F1416159BD1E917AAE5FF17AAE5FF16A9
          E5FF15A9E5FF20ADE6FF1EABE5FF91D6F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF41B9E9FF37B8E9FF5FC2ECFF36B3E8FFDFF5FCFF03A3E3FFD7F1FBFF26AF
          E6FF0CA6E4FF17AAE5FF17AAE5FF159ACFE703171F2200000000000000000000
          00000D5F808F17AAE5FF17AAE5FF19ABE5FF11A8E4FF09A5E3FF03A2E3FF0098
          E0FF3FB7E9FFD7F0FAFFFFFFFFFFFFFFFFFF5CC3EDFF0092DDFF19A9E5FFF2FB
          FEFF0BA1E3FFA1DDF5FFA7DFF5FF0099E0FF19ABE5FF17AAE5FF17AAE5FF0D60
          819000000000000000000000000000000000020E131517AAE5FF17AAE5FF17AA
          E5FF17AAE5FF17AAE5FF18AAE5FF19ABE5FF009BE1FF01A0E2FF87D3F2FFFFFF
          FFFF5DC4EDFF009CE0FF2CB3E8FF21ACE5FF9DD8F3FFD8F1FBFF019FE2FF11A8
          E4FF17AAE5FF17AAE5FF17AAE5FF020E13150000000000000000000000000000
          0000000000000C5B7B8917AAE5FF17AAE5FF17AAE5FF17AAE5FF17AAE5FF17AA
          E5FF1AABE5FF0CA6E4FF009BE1FF32B4E8FF24AFE7FF14AAE5FF06A4E3FF1DAC
          E5FF9DDCF4FF0DA6E4FF07A3E3FF1AABE5FF17AAE5FF17AAE5FF0C5B7B890000
          00000000000000000000000000000000000000000000000000001491C3D917AA
          E5FF17AAE5FF17AAE5FF17AAE5FF17AAE5FF17AAE5FF18AAE5FF18AAE5FF03A3
          E3FF10A7E4FF19ABE5FF1AABE5FF13A9E5FF009CE1FF0FA7E4FF1AABE5FF17AA
          E5FF17AAE5FF1390C2D800000000000000000000000000000000000000000000
          00000000000000000000010B0E10159CD2EA17AAE5FF17AAE5FF17AAE5FF17AA
          E5FF17AAE5FF17AAE5FF17AAE5FF17AAE5FF17AAE5FF17AAE5FF17AAE5FF17AA
          E5FF17AAE5FF17AAE5FF17AAE5FF17AAE5FF159BD1E9010B0E10000000000000
          000000000000000000000000000000000000000000000000000000000000020D
          1214138BBBD017AAE5FF17AAE5FF17AAE5FF17AAE5FF17AAE5FF17AAE5FF17AA
          E5FF17AAE5FF17AAE5FF17AAE5FF17AAE5FF17AAE5FF17AAE5FF17AAE5FF138B
          BBD0020D12140000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000C5B7A8817AAE5FF17AA
          E5FF17AAE5FF17AAE5FF17AAE5FF17AAE5FF17AAE5FF17AAE5FF17AAE5FF17AA
          E5FF17AAE5FF17AAE5FF0C5B7A88000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000003151C1F0D5D7E8C1492C5DB17AAE5FF17AAE5FF17AA
          E5FF17AAE5FF17AAE5FF17AAE5FF1492C5DB0D5D7E8C03151C1F000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000313191C083A4E570C5776830E678B9B0E678B9B0C577683083A4E570313
          191C000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          760C0000424D760C00000000000036000000280000001C0000001C0000000100
          200000000000400C000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000090E0912223D215431612F893672
          33A5367233A531612F89213D2055090E09120000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000100012948
          2763458A42C54EAD4AFF4DAE49FF4FAE4BFF4FAE4BFF4EAE4AFF4DAD49FF468A
          42C5284726630001000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000234022594CA948F644AA40FF49AB44FF4EAE4AFF4EAE4AFF4FAE
          4BFF4FAE4BFF4EAE4BFF4EAE4AFF48AB44FF44AA40FF4CA949F7234022590000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000337730B145A941FF4CAC48FF50AE
          4CFF4FAE4BFF4FAE4BFF4FAE4BFF4FAE4BFF4FAE4BFF4FAE4BFF4FAE4BFF4FAE
          4BFF50AE4CFF4CAD48FF45AA41FF337831B10000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000468E
          43CA42A83DFF50AE4CFF4FAE4BFF4FAE4BFF4FAE4BFF4FAE4BFF4FAE4BFF4FAE
          4BFF4FAE4BFF4FAE4BFF4FAE4BFF4FAE4BFF4FAE4BFF4FAE4BFF50AE4CFF42A8
          3EFF468D43CA0000000000000000000000000000000000000000000000000000
          000000000000000000003C7739AA3BA537FF52AF4EFF4FAE4BFF4FAE4BFF4FAE
          4BFF4FAE4BFF4EAE4AFF4FAE4BFF4FAE4BFF4FAE4BFF4FAE4BFF4FAE4BFF4FAE
          4BFF4FAE4BFF4FAE4BFF4FAE4BFF52AF4EFF3BA537FF3C773AAA000000000000
          000000000000000000000000000000000000000000002E4A2C633CA637FF51AF
          4DFF4FAE4BFF4FAE4BFF4FAE4BFF50AF4CFF4FAE4AFF34A22FFF38A333FF51AF
          4DFF50AE4CFF4FAE4BFF4FAE4BFF4FAE4BFF4FAE4BFF4FAE4BFF4FAE4BFF4FAE
          4BFF51AF4DFF3BA537FF2E4A2D63000000000000000000000000000000000000
          000001010101469D41E74BAC47FF4FAE4BFF4FAE4BFF4FAE4BFF50AF4CFF4AAC
          46FF2B9E27FFB4DCB2FFA2D4A0FF289C23FF4EAE4AFF50AE4CFF4FAE4BFF4FAE
          4BFF4FAE4BFF4FAE4BFF4FAE4BFF4FAE4BFF4FAE4BFF4BAC47FF459D42E80102
          010200000000000000000000000000000000334E32673CA637FF50AF4CFF4FAE
          4BFF4FAE4BFF50AF4CFF4AAC46FF279C21FFA9D7A7FFFFFFFFFFFFFFFFFF94CE
          92FF269B21FF4DAE4AFF50AE4CFF4FAE4BFF4FAE4BFF4FAE4BFF4FAE4BFF4FAE
          4BFF4FAE4BFF50AE4CFF3CA637FF334F3267000000000000000000000000141C
          1423468743BE45A940FF4FAE4BFF4FAE4BFF50AF4CFF4BAC47FF279B22FFA7D7
          A5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF95CE92FF279C22FF4EAE4AFF50AE
          4CFF4FAE4BFF4FAE4BFF4FAE4BFF4FAE4BFF4FAE4BFF4FAE4BFF45AA40FF4687
          43BF1B261A3000000000000000002A4828634BAA48FA4EAD4AFF4FAE4BFF50AF
          4CFF4BAC47FF289C23FFA6D6A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF96CF93FF269B21FF4EAE4AFF50AE4CFF4FAE4BFF4FAE4BFF4FAE
          4BFF4FAE4BFF4FAE4BFF4EAD4AFF4CA947F92C502B6F00000000000000002D64
          2B934EAE4AFF4FAE4BFF4FAE4BFF4CAD48FF41A73CFFAAD8A8FFFFFFFFFFFFFF
          FFFFFFFFFFFFFEFFFEFFFEFFFEFFFFFFFFFFFFFFFFFFFFFFFFFF93CE91FF259B
          20FF4EAD4AFF50AE4CFF4FAE4BFF4FAE4BFF4FAE4BFF4FAE4BFF4FAE4BFF4FAE
          4BFF2D652B9500000000000000002E6B2C9E4FAE4BFF4FAE4BFF4FAE4BFF40A7
          3CFF64B861FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF84C681FF93CD91FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF95CE93FF269B21FF4EAE4AFF50AE4CFF4FAE
          4BFF4FAE4BFF4FAE4BFF4FAE4BFF4FAE4BFF2F6B2D9E00000000000000002E6B
          2C9E4FAE4BFF4FAE4BFF4FAE4BFF4FAE4BFF3AA435FF8ACA87FFFFFFFFFFFFFF
          FFFF94CE92FF249A1EFF279C22FFA7D6A5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF95CE93FF269B21FF4EAE4AFF50AE4CFF4FAE4BFF4FAE4BFF4FAE4BFF4FAE
          4BFF2F6B2D9E00000000000000002D642B934EAE4AFF4FAE4BFF4FAE4BFF4FAE
          4BFF50AE4CFF2B9D26FF96CF94FFA1D49FFF2B9D26FF4FAE4BFF4BAC47FF279C
          22FFA6D6A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF96CF94FF279C23FF4EAD
          4AFF50AE4CFF4FAE4BFF4FAE4BFF4FAE4BFF2E652B9500000000000000002A48
          28634BAA47FA4EAD4AFF4FAE4BFF4FAE4BFF50AE4CFF52AF4EFF37A332FF35A2
          30FF51AF4DFF50AE4CFF50AF4CFF4BAC47FF269B22FFA6D6A3FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF98D096FF3CA538FF4EAD4AFF4FAE4BFF4EAD4AFF4CA9
          47F92C502B6F0000000000000000141C1423468744BE45A941FF4FAE4BFF4FAE
          4BFF4FAE4BFF4FAE4BFF4FAE4BFF4FAE4BFF4FAE4BFF4FAE4BFF4FAE4BFF50AF
          4CFF4BAC47FF279C22FFA8D7A6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF64B8
          61FF40A73CFF4FAE4BFF45AA41FF468743BF1B261A3000000000000000000000
          0000334F32683CA638FF50AE4CFF4FAE4BFF4FAE4BFF4FAE4BFF4FAE4BFF4FAE
          4BFF4FAE4BFF4FAE4BFF4FAE4BFF4FAE4BFF50AF4CFF4AAC46FF279C22FFA6D6
          A4FFFFFFFFFFFFFFFFFF9BD198FF3DA639FF4DAD49FF50AE4CFF3CA637FF334E
          32670000000000000000000000000000000001020102459D42E84BAC47FF4FAE
          4BFF4FAE4BFF4FAE4BFF4FAE4BFF4FAE4BFF4FAE4BFF4FAE4BFF4FAE4BFF4FAE
          4BFF4FAE4BFF50AF4CFF4AAC46FF2B9E27FFB1DBB0FFA3D5A1FF2A9D25FF4EAD
          4AFF50AE4CFF4BAC47FF459D42E8010201020000000000000000000000000000
          0000000000002D4A2C633DA638FF50AF4CFF4FAE4BFF4FAE4BFF4FAE4BFF4FAE
          4BFF4FAE4BFF4FAE4BFF4FAE4BFF4FAE4BFF4FAE4BFF4FAE4BFF50AF4CFF4FAE
          4BFF35A230FF37A332FF50AF4CFF50AE4CFF51AF4DFF3CA637FF2E4A2D630000
          00000000000000000000000000000000000000000000000000003C7739AA3CA5
          37FF52AF4EFF4FAE4BFF4FAE4BFF4FAE4BFF4FAE4BFF4FAE4BFF4FAE4BFF4FAE
          4BFF4FAE4BFF4FAE4BFF4FAE4BFF4FAE4BFF4EAE4AFF4EAE4AFF4FAE4BFF52AF
          4EFF3BA537FF3C773AAA00000000000000000000000000000000000000000000
          0000000000000000000000000000478E44CB42A83DFF50AE4CFF4FAE4BFF4FAE
          4BFF4FAE4BFF4FAE4BFF4FAE4BFF4FAE4BFF4FAE4BFF4FAE4BFF4FAE4BFF4FAE
          4BFF4FAE4BFF4FAE4BFF50AE4CFF42A83EFF468D43CA00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000327730B046AA41FF4CAD48FF50AE4CFF4FAE4BFF4FAE4BFF4FAE4BFF4FAE
          4BFF4FAE4BFF4FAE4BFF4FAE4BFF4FAE4BFF50AE4CFF4CAD48FF45AA41FF3377
          30B0000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000002341225A4CA848F644A9
          40FF49AB44FF4EAD4AFF4FAE4BFF4FAE4BFF4FAE4BFF4FAE4BFF4EAE4AFF48AB
          44FF44A93FFF4CA848F623402159000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000001000128472762458B43C64EAD4AFF4FAE4BFF4FAE
          4BFF4FAE4BFF4FAE4BFF4DAD49FF468B43C62848276300010001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000E160E1D294B28682F682C99306E2EA2306E2EA22F682C99284B26690E15
          0D1C000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          760C0000424D760C00000000000036000000280000001C0000001C0000000100
          200000000000400C000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000809212215195D611C2381872129
          949B2129959C1D248389161B6064080A25260000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000010202151C
          63672933B7BE3541EEF93643F4FF3643F4FF3643F4FF3643F4FF3542F0FB2A33
          BAC2161C686C0202080800000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000151A6165303EDEE83742F4FF3642F4FF3643F4FF3643F4FF3643
          F4FF3643F4FF3643F4FF3643F4FF3643F4FF3644F4FF343FE3EE151D696D0000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000242DA4AB3844F4FF3642F4FF3643
          F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
          F4FF3643F4FF3643F4FF3743F4FF272FAFB60000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000002D38
          BBC43744F4FF3A47F4FF2634F3FF2533F3FF3B47F4FF3643F4FF3643F4FF3643
          F4FF3643F4FF3643F4FF3643F4FF3A47F4FF2331F3FF2735F3FF3A47F4FF3744
          F4FF2E3CC5D00000000000000000000000000000000000000000000000000000
          00000000000000000000282EAAB03544F3FF3A47F4FF1D2CF3FF4954F5FF4F5B
          F5FF1B29F3FF3B47F4FF3643F4FF3643F4FF3643F4FF3643F4FF3A47F4FF1928
          F3FF545FF6FF4753F5FF1F2DF3FF3A47F4FF3644F3FF2B32B5BC000000000000
          000000000000000000000000000000000000000000000C1953563942F2FF3B47
          F4FF1D2CF3FF2936F3FFF3F3FFFFFDFDFFFF313EF4FF1726F2FF3B47F4FF3643
          F4FF3643F4FF3B47F4FF1423F2FF3A47F4FFFFFFFFFFEEEFFEFF2331F3FF1F2E
          F3FF3A47F5FF3941F2FF0F1D6265000000000000000000000000000000000000
          0000000000003742E8F33643F4FF2634F3FF4551F5FFF4F4FFFFFFFFFFFFFFFF
          FFFFEDEEFEFF313FF4FF1726F2FF3B48F4FF3B48F4FF1423F2FF3C49F4FFF6F7
          FFFFFFFFFFFFFFFFFFFFF0F2FEFF414DF5FF2835F3FF3643F4FF3744EFFB0101
          0505000000000000000000000000000000001315585B3643F3FF3643F4FF2533
          F3FF4B56F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F1FEFF3240F4FF1B2A
          F3FF1827F2FF3B48F4FFF6F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFFFF4450
          F5FF2634F3FF3643F4FF3743F3FF181A666A0000000000000000000000000405
          13132932B3BA3543F3FF3643F4FF3B47F4FF1A28F2FF3442F4FFF2F3FEFFFFFF
          FFFFFFFFFFFFFFFFFFFFF1F2FEFF1D2BF3FF2735F3FFF7F8FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFEAECFEFF2B38F3FF1D2CF2FF3A47F4FF3643F4FF3543F3FF2D36
          C3CA08091F2000000000000000001317565A3541EEF93643F4FF3643F4FF3643
          F4FF3B47F4FF1625F2FF3441F4FFF1F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFE1E3
          FEFFE6E7FEFFFFFFFFFFFFFFFFFFFFFFFFFFEAECFEFF2D3AF4FF1928F2FF3A47
          F4FF3643F4FF3643F4FF3643F4FF3643F4FF171C656900000000000000001D24
          858A3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3B47F4FF1625F2FF3441
          F4FFF1F2FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9EB
          FEFF2C3AF3FF1927F2FF3A47F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
          F4FF1E25888E0000000000000000222A99A03643F4FF3643F4FF3643F4FF3643
          F4FF3643F4FF3643F4FF3B48F4FF1A29F2FF2533F3FFDADCFDFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFD1D4FDFF1C2BF3FF1E2CF3FF3B47F4FF3643F4FF3643
          F4FF3643F4FF3643F4FF3643F4FF3643F4FF222A989F0000000000000000222A
          989F3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3B48F4FF1827
          F2FF2D3BF4FFDCDEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD4D7FDFF2432
          F3FF1B2AF2FF3B48F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
          F4FF222A989F00000000000000001D2483883643F4FF3643F4FF3643F4FF3643
          F4FF3643F4FF3B47F4FF1423F2FF3B48F4FFF7F7FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F1FEFF3340F4FF1726F2FF3B47F4FF3643
          F4FF3643F4FF3643F4FF3643F4FF3643F4FF1E24878D00000000000000001217
          53573541EDF83643F4FF3643F4FF3643F4FF3B47F4FF1323F2FF3A46F4FFF7F7
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFDBDDFDFFE0E2FDFFFFFFFFFFFFFFFFFFFFFF
          FFFFF0F1FEFF313EF4FF1726F2FF3A47F4FF3643F4FF3643F4FF3643F4FF3643
          F4FF151B62660000000000000000040511112731B0B63643F3FF3643F4FF3B47
          F4FF1827F2FF3C48F4FFF6F6FEFFFFFFFFFFFFFFFFFFFFFFFFFFEBECFEFF1928
          F3FF2230F3FFF2F3FEFFFFFFFFFFFFFFFFFFFFFFFFFFEFF0FEFF313EF4FF1B2A
          F2FF3A47F4FF3643F4FF3542F3FF2D37BEC607081C1D00000000000000000000
          0000101451543644F3FF3643F4FF2331F3FF4F5BF5FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFEAECFEFF2C39F3FF1D2CF3FF1A29F2FF3341F4FFF1F2FEFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF4854F5FF2533F3FF3643F4FF3745F3FF1217
          616400000000000000000000000000000000000000003840E4EF3543F4FF2735
          F3FF4450F5FFF0F1FEFFFFFFFFFFFFFFFFFFE9EAFEFF2A38F3FF1928F2FF3B47
          F4FF3B48F4FF1625F2FF3441F4FFF2F3FEFFFFFFFFFFFFFFFFFFEDEFFEFF404C
          F5FF2836F3FF3543F4FF3A44ECF8000102020000000000000000000000000000
          0000000000000D154C4E3843F3FF3A47F4FF1D2CF3FF2836F4FFF1F2FEFFF8F8
          FFFF2D3BF4FF1928F3FF3B47F4FF3643F4FF3643F4FF3B47F4FF1626F2FF3542
          F4FFFEFEFFFFEBEDFEFF2231F3FF202EF3FF3A47F4FF3843F3FF1019595C0000
          0000000000000000000000000000000000000000000000000000242CA0A53744
          F3FF3B47F4FF1E2DF3FF4551F5FF4955F5FF1C2BF3FF3B47F4FF3643F4FF3643
          F4FF3643F4FF3643F4FF3B47F4FF1A29F3FF4E59F5FF4450F5FF1F2EF3FF3A47
          F4FF3645F3FF272DABB100000000000000000000000000000000000000000000
          00000000000000000000000000002B35B1BA3744F4FF3A47F4FF2735F3FF2634
          F3FF3A47F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3A47
          F4FF2533F3FF2836F3FF3A47F4FF3744F4FF2D39BDC600000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000021299AA03843F4FF3642F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
          F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3642F4FF232E
          A3AA000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000111755582F3CD3DD3643
          F4FF3542F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
          F4FF3743F4FF313CD8E3141A5C5F000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000001417565A262FA8AF323FE4EE3643F4FF3643
          F4FF3643F4FF3643F4FF333FE7F12630ADB413185C6000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000005061516121650541C227D822128939A2129949B1B227E83131654580507
          1819000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          760C0000424D760C00000000000036000000280000001C0000001C0000000100
          200000000000400C000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000025052C00560C660074108A0084
          129D0083129C0072108800540C64002205290000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000001F0425007A
          119100BB1ADF00D61EFF00D61EFF00D61EFF00D61EFF00D61EFF00D61EFF00B9
          1ADC0075108B001B042000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000078118F00D61EFF00D61EFF00D61EFF00D61EFF00D61EFF00D6
          1EFF00D61EFF00D61EFF00D61EFF00D61EFF00D61EFF00D61EFF007010850000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000012031600B219D400D61EFF00D61EFF00D6
          1EFF00D61EFF00D61EFF00D61EFF00D61EFF00D61EFF00D61EFF00D61EFF00D6
          1EFF00D61EFF00D61EFF00D61EFF00AB18CC000C020E00000000000000000000
          00000000000000000000000000000000000000000000000000000010021300C8
          1CEE00D61EFF00D61EFF00D61EFF00D61EFF00D61EFF00D61EFF00D61EFF00D6
          1EFF00D61EFF00D61EFF00D61EFF00D61EFF00D61EFF00D61EFF00D61EFF00D6
          1EFF00BF1BE40008010A00000000000000000000000000000000000000000000
          0000000000000000000000B91ADC00D61EFF00D61EFF00D61EFF00D61EFF00D6
          1EFF00D61EFF00D61EFF00D61EFF00D61EFF00D61EFF00D61EFF00D61EFF00D6
          1EFF00D61EFF00D61EFF00D61EFF00D61EFF00D61EFF00AF18D0000000000000
          00000000000000000000000000000000000000000000007A119100D61EFF00D6
          1EFF00D61EFF00D61EFF00D61EFF00D61EFF00D61EFF00D61EFF00D61EFF00D6
          1EFF00D61EFF00D61EFF00D61EFF00D61EFF00D61EFF00D61EFF00D61EFF00D6
          1EFF00D61EFF00D61EFF006B0F7F000000000000000000000000000000000000
          00000016031A00D61EFF00D61EFF00D61EFF00D61EFF88EC96FFFFFFFFFFE6FB
          E9FFE6FBE9FFE6FBE9FFE6FBE9FFE6FBE9FFE6FBE9FFE6FBE9FFE6FBE9FFE6FB
          E9FFE6FBE9FFFFFFFFFF79E989FF00D61EFF00D61EFF00D61EFF00D61EFF000D
          021000000000000000000000000000000000007B119300D61EFF00D61EFF00D6
          1EFF00D61EFFA7F1B1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF93EEA0FF00D6
          1EFF00D61EFF00D61EFF00D61EFF006F10840000000000000000000000000017
          031B00C81CEE00D61EFF00D61EFF00D61EFF00D61EFFA6F1B0FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF93EEA0FF00D61EFF00D61EFF00D61EFF00D61EFF00BB
          1ADF002205280000000000000000004F0B5E00D61EFF00D61EFF00D61EFF00D6
          1EFF00D61EFFBFF5C7FFDCF9E0FF67E779FFFFFFFFFFFFFFFFFFFFFFFFFF98EE
          A4FF6EE87FFFFFFFFFFF7FEA8EFF50E365FF51E365FFFFFFFFFFAAF1B4FF00D6
          1EFF00D61EFF00D61EFF00D61EFF00D61EFF005B0D6C00000000000000000075
          108B00D61EFF00D61EFF00D61EFF00D61EFF00D61EFFCFF7D5FFC6F6CDFF00D6
          1EFFA8F1B2FFFFFFFFFFF4FDF5FF0AD827FFCAF6D0FFC3F5CAFF00D61EFF00D6
          1EFF00D61EFFE7FBEAFFB9F4C1FF00D61EFF00D61EFF00D61EFF00D61EFF00D6
          1EFF0078118F0000000000000000008813A200D61EFF00D61EFF00D61EFF00D6
          1EFF00D61EFFCFF7D5FFCAF6D0FF00D61EFF15D931FFFFFFFFFF63E675FF0DD8
          29FFFDFFFDFF1BDA36FF00D61EFF00D61EFF00D61EFFE6FBE9FFBAF4C2FF00D6
          1EFF00D61EFF00D61EFF00D61EFF00D61EFF008713A100000000000000000086
          13A000D61EFF00D61EFF00D61EFF00D61EFF00D61EFFCFF7D5FFCAF6D0FF00D6
          1EFF00D61EFF3ADF51FF14D930FF00D61EFF1CDB37FF00D61EFF40E056FF6DE8
          7EFF00D61EFFE0FAE4FFBAF4C2FF00D61EFF00D61EFF00D61EFF00D61EFF00D6
          1EFF008613A000000000000000000073108900D61EFF00D61EFF00D61EFF00D6
          1EFF00D61EFFCFF7D5FFCAF6D0FF00D61EFF00D61EFF00D61EFF00D61EFF00D6
          1EFF00D61EFF32DE4AFF95EEA1FF7CEA8BFF4EE363FFC5F6CCFFBAF4C2FF00D6
          1EFF00D61EFF00D61EFF00D61EFF00D61EFF0077118E0000000000000000004C
          0B5B00D61EFF00D61EFF00D61EFF00D61EFF00D61EFFCFF7D5FFCAF6D0FF00D6
          1EFF00D61EFF00D61EFF00D61EFF00D61EFF00D61EFF4DE262FF8AEC98FF48E2
          5EFF6FE880FFC0F5C7FFBAF4C2FF00D61EFF00D61EFF00D61EFF00D61EFF00D6
          1EFF00580C6900000000000000000013031700C41CEA00D61EFF00D61EFF00D6
          1EFF00D61EFFCFF7D5FFC9F6CFFF00D61EFF00D61EFF00D61EFF00D61EFF00D6
          1EFF00D61EFF00D61EFF3CE053FF5FE572FF00D61EFFDCF9E0FFBBF4C3FF00D6
          1EFF00D61EFF00D61EFF00D61EFF00B81ADB001E042400000000000000000000
          00000076118D00D61EFF00D61EFF00D61EFF00D61EFFB5F3BEFFFFFFFFFF9AEF
          A6FFA8F1B2FFA8F1B2FFA8F1B2FFA8F1B2FFA9F1B3FFA7F1B1FF8AEC98FF81EB
          90FF8EED9BFFFFFFFFFFA1F0ACFF00D61EFF00D61EFF00D61EFF00D61EFF0069
          0F7D000000000000000000000000000000000012021500D61EFF00D61EFF00D6
          1EFF00D61EFF67E779FFF0FDF2FFF7FEF8FFEFFCF1FFEFFCF1FFEFFCF1FFEFFC
          F1FFEFFCF1FFEFFCF1FFEFFCF1FFEFFCF1FFF6FEF7FFEDFCEFFF5BE56EFF00D6
          1EFF00D61EFF00D61EFF00D61EFF000A010C0000000000000000000000000000
          0000000000000072108800D61EFF00D61EFF00D61EFF00D61EFF00D61EFF00D6
          1EFF00D61EFF00D61EFF00D61EFF00D61EFF00D61EFF00D61EFF00D61EFF00D6
          1EFF00D61EFF00D61EFF00D61EFF00D61EFF00D61EFF00D61EFF00630E760000
          000000000000000000000000000000000000000000000000000000B019D200D6
          1EFF00D61EFF00D61EFF00D61EFF00D61EFF00D61EFF00D61EFF00D61EFF00D6
          1EFF00D61EFF00D61EFF00D61EFF00D61EFF00D61EFF00D61EFF00D61EFF00D6
          1EFF00D61EFF00A617C600000000000000000000000000000000000000000000
          000000000000000000000009010B00BF1BE400D61EFF00D61EFF00D61EFF00D6
          1EFF00D61EFF00D61EFF00D61EFF00D61EFF00D61EFF00D61EFF00D61EFF00D6
          1EFF00D61EFF00D61EFF00D61EFF00D61EFF00B71ADA00030003000000000000
          000000000000000000000000000000000000000000000000000000000000000B
          020D00A918C900D61EFF00D61EFF00D61EFF00D61EFF00D61EFF00D61EFF00D6
          1EFF00D61EFF00D61EFF00D61EFF00D61EFF00D61EFF00D61EFF00D61EFF00A0
          16BF000401050000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000006D0F8200D61EFF00D6
          1EFF00D61EFF00D61EFF00D61EFF00D61EFF00D61EFF00D61EFF00D61EFF00D6
          1EFF00D61EFF00D31EFB00650E78000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000016031A006E0F8300B219D400D61EFF00D61EFF00D6
          1EFF00D61EFF00D61EFF00D61EFF00AF18D000680F7C00120215000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000001C0421004C0B5A007010850084129D0083129C006E0F8300490A570018
          031D000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          760C0000424D760C00000000000036000000280000001C0000001C0000000100
          200000000000400C000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000002017032C4A360766654A098A7354
          0A9D72530A9C63490988493507641E1603290000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000001B1402256A4D
          0A91A3770FDFBA8811FFBA8811FFBA8811FFBA8811FFBA8811FFBA8811FFA075
          0FDC654A098B1711022000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000684C0A8FBA8811FFBA8811FFBA8811FFBA8811FFBA8811FFBA88
          11FFBA8811FFBA8811FFBA8811FFBA8811FFBA8811FFBA8811FF614709850000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000100C01169B710ED4BA8811FFBA8811FFBA88
          11FFBA8811FFBA8811FFBA8811FFBA8811FFBA8811FFBA8811FFBA8811FFBA88
          11FFBA8811FFBA8811FFBA8811FF956D0ECC0A07010E00000000000000000000
          00000000000000000000000000000000000000000000000000000E0A0113AE7F
          10EEBA8811FFBA8811FFBA8811FFBA8811FFBA8811FFBA8811FFBA8811FFBA88
          11FFBA8811FFBA8811FFBA8811FFBA8811FFBA8811FFBA8811FFBA8811FFBA88
          11FFA67A0FE40705010A00000000000000000000000000000000000000000000
          00000000000000000000A0750FDCBA8811FFBA8811FFBA8811FFBA8811FFBA88
          11FFBA8811FFBA8811FFBA8811FFBA8811FFBA8811FFBA8811FFBA8811FFBA88
          11FFBA8811FFBA8811FFBA8811FFBA8811FFBA8811FF986F0ED0000000000000
          000000000000000000000000000000000000000000006A4D0A91BA8811FFBA88
          11FFBA8811FFBA8811FFBA8811FFBA8811FFBA8811FFBA8811FFBA8811FFBA88
          11FFBA8811FFBA8811FFBA8811FFBA8811FFBA8811FFBA8811FFBA8811FFBA88
          11FFBA8811FFBA8811FF5D44087F000000000000000000000000000000000000
          0000130E021ABA8811FFBA8811FFBA8811FFBA8811FFBA8811FFBA8811FFBA88
          11FFBB8A14FFB27B00FFB47E00FFBB8A13FFBA8811FFBA8811FFBA8811FFBA88
          11FFBA8811FFBA8811FFBA8811FFBA8811FFBA8811FFBA8811FFBA8811FF0C09
          0110000000000000000000000000000000006B4E0A93BA8811FFBA8811FFBA88
          11FFBA8811FFBA8811FFBA8811FFBA8811FFB7830BFFCBA44AFFC1952BFFAC70
          00FFB8850BFFBB8913FFBA8811FFBA8811FFBA8811FFBA8811FFBA8811FFBA88
          11FFBA8811FFBA8811FFBA8811FF60460984000000000000000000000000140E
          021BAE7F10EEBA8811FFBA8811FFBA8811FFBA8811FFBA8811FFBA8811FFBA87
          0FFFB07600FFF5EEDDFFFFFFFEFFD2B169FFB17800FFAF7500FFBA8910FFBA89
          12FFBA8811FFBA8811FFBA8811FFBA8811FFBA8811FFBA8811FFBA8811FFA377
          0FDF1D15032800000000000000004532065EBA8811FFBA8811FFBA8811FFBA88
          11FFBA8811FFBA8811FFBA8811FFBA870FFFB17800FFEADCB8FFFFFFFFFFFFFF
          FFFFF0E5CCFFC79E44FFAD7100FFB27A00FFBB8A13FFBA8811FFBA8811FFBA88
          11FFBA8811FFBA8811FFBA8811FFBA8811FF4F3A076C0000000000000000654A
          098BBA8811FFBA8811FFBA8811FFBA8811FFBA8811FFBA8811FFBA8811FFBA87
          0FFFB17800FFEBDDBBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5D2A8FFBD8D
          24FFAD7100FFBA8812FFBA8812FFBA8811FFBA8811FFBA8811FFBA8811FFBA88
          11FF684C0A8F000000000000000076560BA2BA8811FFBA8811FFBA8811FFBA88
          11FFBA8811FFBA8811FFBA8811FFBA870FFFB17800FFEBDDBBFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1CC9CFFB37D02FFB9870EFFBA88
          11FFBA8811FFBA8811FFBA8811FFBA8811FF75560BA100000000000000007555
          0BA0BA8811FFBA8811FFBA8811FFBA8811FFBA8811FFBA8811FFBA8811FFBA87
          0FFFB17800FFEBDDBBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFDEC691FFB47D03FFB9870EFFBA8811FFBA8811FFBA8811FFBA8811FFBA88
          11FF75550BA0000000000000000064490989BA8811FFBA8811FFBA8811FFBA88
          11FFBA8811FFBA8811FFBA8811FFBA870FFFB17800FFEBDDBBFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFE1CB9BFFBA8819FFAC7100FFBA8912FFBA8812FFBA88
          11FFBA8811FFBA8811FFBA8811FFBA8811FF684C098E00000000000000004231
          065BBA8811FFBA8811FFBA8811FFBA8811FFBA8811FFBA8811FFBA8811FFBA87
          0FFFB17800FFEADCB9FFFFFFFFFFFFFFFFFFECDFC0FFC49938FFAC7000FFB37D
          00FFBB8A13FFBA8811FFBA8811FFBA8811FFBA8811FFBA8811FFBA8811FFBA88
          11FF4D3807690000000000000000110C0217AB7D10EABA8811FFBA8811FFBA88
          11FFBA8811FFBA8811FFBA8811FFBA870FFFB07600FFF4EDDAFFFCFAF6FFCEAA
          5CFFAF7500FFB07700FFBB8911FFBA8912FFBA8811FFBA8811FFBA8811FFBA88
          11FFBA8811FFBA8811FFBA8811FFA0750FDB1A13022400000000000000000000
          0000674B098DBA8811FFBA8811FFBA8811FFBA8811FFBA8811FFBA8811FFBA88
          11FFB8840CFFC8A041FFBF9021FFAD7100FFB9870DFFBB8913FFBA8811FFBA88
          11FFBA8811FFBA8811FFBA8811FFBA8811FFBA8811FFBA8811FFBA8811FF5B43
          087D000000000000000000000000000000000F0B0115BA8811FFBA8811FFBA88
          11FFBA8811FFBA8811FFBA8811FFBA8811FFBB8A13FFB37C00FFB58000FFBB8A
          13FFBA8811FFBA8811FFBA8811FFBA8811FFBA8811FFBA8811FFBA8811FFBA88
          11FFBA8811FFBA8811FFBA8811FF0906010C0000000000000000000000000000
          00000000000063490988BA8811FFBA8811FFBA8811FFBA8811FFBA8811FFBA88
          11FFBA8811FFBA8811FFBA8811FFBA8811FFBA8811FFBA8811FFBA8811FFBA88
          11FFBA8811FFBA8811FFBA8811FFBA8811FFBA8811FFBA8811FF563F08760000
          000000000000000000000000000000000000000000000000000099700ED2BA88
          11FFBA8811FFBA8811FFBA8811FFBA8811FFBA8811FFBA8811FFBA8811FFBA88
          11FFBA8811FFBA8811FFBA8811FFBA8811FFBA8811FFBA8811FFBA8811FFBA88
          11FFBA8811FF906A0DC600000000000000000000000000000000000000000000
          000000000000000000000806010BA67A0FE4BA8811FFBA8811FFBA8811FFBA88
          11FFBA8811FFBA8811FFBA8811FFBA8811FFBA8811FFBA8811FFBA8811FFBA88
          11FFBA8811FFBA8811FFBA8811FFBA8811FF9F740FDA02020003000000000000
          0000000000000000000000000000000000000000000000000000000000000907
          010D936B0DC9BA8811FFBA8811FFBA8811FFBA8811FFBA8811FFBA8811FFBA88
          11FFBA8811FFBA8811FFBA8811FFBA8811FFBA8811FFBA8811FFBA8811FF8B66
          0DBF040300050000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000005F450982BA8811FFBA88
          11FFBA8811FFBA8811FFBA8811FFBA8811FFBA8811FFBA8811FFBA8811FFBA88
          11FFBA8811FFB78611FB58400878000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000130E021A604609839B710ED4BA8811FFBA8811FFBA88
          11FFBA8811FFBA8811FFBA8811FF986F0ED05A42087C0F0B0115000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000181202214230065A6147098573540A9D72530A9C604609833F2E0657150F
          021D000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end>
  end
end
