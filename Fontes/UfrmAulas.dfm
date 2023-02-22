object frmAulas: TfrmAulas
  Left = 0
  Top = 0
  Caption = 'Aulas'
  ClientHeight = 611
  ClientWidth = 964
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
    Width = 964
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
    Width = 964
    Height = 551
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
    ExplicitLeft = 8
    ExplicitTop = 1
    ExplicitWidth = 954
    ExplicitHeight = 547
    object tbsDadosCadastrais: TTabSheet
      Caption = 'Dados Cadastrais'
      OnShow = tbsDadosCadastraisShow
      object pnlGrid: TPanel
        Left = 0
        Top = 0
        Width = 956
        Height = 511
        Align = alClient
        TabOrder = 1
        ExplicitWidth = 946
        ExplicitHeight = 507
        object dbGrid: TDBGrid
          Left = 1
          Top = 1
          Width = 954
          Height = 509
          Align = alClient
          DataSource = dtmAulas.dtsAulas
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDrawColumnCell = dbGridDrawColumnCell
          OnDblClick = dbGridDblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'CODIGO'
              Title.Caption = 'C'#243'digo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TITULO'
              Title.Caption = 'T'#237'tulo'
              Width = 600
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'IMAGEM'
              Title.Alignment = taCenter
              Title.Caption = 'Imagem'
              Width = 60
              Visible = True
            end>
        end
      end
      object pnlCadastro: TPanel
        Left = 0
        Top = 0
        Width = 956
        Height = 511
        Align = alClient
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        ExplicitWidth = 946
        ExplicitHeight = 507
        object Panel9: TPanel
          Left = 0
          Top = 0
          Width = 956
          Height = 140
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          ExplicitLeft = 1
          ExplicitTop = -6
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
            Left = 593
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
            Color = 16771797
            DataField = 'CODIGO'
            DataSource = dtmAulas.dtsAulas
            ReadOnly = True
            TabOrder = 0
          end
          object edtTitulo: TDBEdit
            Left = 25
            Top = 91
            Width = 530
            Height = 21
            Hint = 'Informe a descri'#231#227'o'
            CharCase = ecUpperCase
            DataField = 'TITULO'
            DataSource = dtmAulas.dtsAulas
            TabOrder = 1
          end
          object dblkcbTurma: TDBLookupComboBox
            Left = 593
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
        object Panel10: TPanel
          Left = 0
          Top = 140
          Width = 956
          Height = 371
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 1
          ExplicitWidth = 946
          ExplicitHeight = 367
          object gpbImagem: TGroupBox
            Left = 25
            Top = 0
            Width = 541
            Height = 371
            Align = alClient
            Caption = 'Imagem'
            TabOrder = 0
            ExplicitWidth = 531
            ExplicitHeight = 367
            object Image: TImage
              Left = 40
              Top = 15
              Width = 499
              Height = 354
              Align = alClient
              Stretch = True
              ExplicitLeft = 42
              ExplicitTop = 14
            end
            object Panel5: TPanel
              Left = 2
              Top = 15
              Width = 38
              Height = 354
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 0
              ExplicitHeight = 350
              object btnIncluirImagem: TAdvGlowButton
                Left = 2
                Top = 13
                Width = 32
                Height = 32
                BorderStyle = bsNone
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 3618615
                Font.Height = -9
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ImageIndex = 14
                Images = frmMain.cxImageList1
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
                Left = 2
                Top = 51
                Width = 32
                Height = 32
                BorderStyle = bsNone
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 3618615
                Font.Height = -9
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ImageIndex = 13
                Images = frmMain.cxImageList1
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
          object Panel11: TPanel
            Left = 0
            Top = 0
            Width = 25
            Height = 371
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            ExplicitHeight = 367
          end
          object Panel12: TPanel
            Left = 566
            Top = 0
            Width = 390
            Height = 371
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 2
            ExplicitLeft = 570
          end
        end
      end
    end
    object tbsConteudos: TTabSheet
      Caption = 'Conte'#250'dos'
      ImageIndex = 2
      OnShow = tbsConteudosShow
      object dbgConteudo: TDBGrid
        Left = 38
        Top = 0
        Width = 918
        Height = 511
        Align = alClient
        DataSource = dtmAulas.dtsConteudos
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDrawColumnCell = dbgConteudoDrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'CODIGO'
            Title.Caption = 'C'#243'digo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Title.Caption = 'Descri'#231#227'o'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IMAGEM'
            Title.Alignment = taCenter
            Title.Caption = 'Imagem'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VIDEO'
            Title.Alignment = taCenter
            Title.Caption = 'V'#237'deo'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AUDIO'
            Title.Alignment = taCenter
            Title.Caption = 'Audio'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RESUMO'
            Title.Caption = 'Resumo'
            Width = 300
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RESUMO_IMAGEM'
            Title.Alignment = taCenter
            Title.Caption = 'Imagem Resumo'
            Width = 90
            Visible = True
          end>
      end
      object pnlConteudo: TPanel
        Left = 0
        Top = 0
        Width = 38
        Height = 511
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 1
        object btnIncluirConteudo: TAdvGlowButton
          Left = 2
          Top = 21
          Width = 32
          Height = 32
          BorderStyle = bsNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 3618615
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ImageIndex = 14
          Images = frmMain.cxImageList1
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
          Left = 2
          Top = 97
          Width = 32
          Height = 32
          BorderStyle = bsNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 3618615
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ImageIndex = 13
          Images = frmMain.cxImageList1
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
          Left = 2
          Top = 59
          Width = 32
          Height = 32
          BorderStyle = bsNone
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
    end
    object tbsExercicios: TTabSheet
      Caption = 'Exerc'#237'cios'
      ImageIndex = 4
      OnShow = tbsExerciciosShow
      object pnlExercicios: TPanel
        Left = 0
        Top = 0
        Width = 956
        Height = 193
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object dbgExercicios: TDBGrid
          Left = 38
          Top = 0
          Width = 918
          Height = 193
          Align = alClient
          DataSource = dtmAulas.dtsExercicios
          ReadOnly = True
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDrawColumnCell = dbgExerciciosDrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'CODIGO'
              Title.Caption = 'C'#243'digo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CONTEUDO'
              Title.Caption = 'Conte'#250'do'
              Width = 250
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCRICAO'
              Title.Caption = 'Descri'#231#227'o'
              Width = 350
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'IMAGEM'
              Title.Alignment = taCenter
              Title.Caption = 'Imagem'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VIDEO'
              Title.Alignment = taCenter
              Title.Caption = 'V'#237'deo'
              Width = 60
              Visible = True
            end>
        end
        object pnlExerciciosBotoes: TPanel
          Left = 0
          Top = 0
          Width = 38
          Height = 193
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 0
          object btnIncluirExercicios: TAdvGlowButton
            Left = 2
            Top = 21
            Width = 32
            Height = 32
            BorderStyle = bsNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 3618615
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ImageIndex = 14
            Images = frmMain.cxImageList1
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            ShowCaption = False
            Transparent = True
            TabOrder = 0
            OnClick = btnIncluirExerciciosClick
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
          object btnExcluirExercicios: TAdvGlowButton
            Left = 2
            Top = 97
            Width = 32
            Height = 32
            BorderStyle = bsNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 3618615
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ImageIndex = 13
            Images = frmMain.cxImageList1
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            ShowCaption = False
            Transparent = True
            TabOrder = 1
            OnClick = btnExcluirExerciciosClick
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
          object AdvGlowButton1: TAdvGlowButton
            Left = 2
            Top = 59
            Width = 32
            Height = 32
            BorderStyle = bsNone
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
            ShowCaption = False
            Transparent = True
            TabOrder = 2
            OnClick = AdvGlowButton1Click
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
      object Panel8: TPanel
        Left = 0
        Top = 193
        Width = 956
        Height = 41
        Align = alTop
        BevelOuter = bvNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object Panel6: TPanel
          Left = 0
          Top = 0
          Width = 38
          Height = 41
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 0
        end
        object Panel7: TPanel
          Left = 38
          Top = 0
          Width = 918
          Height = 41
          Align = alClient
          Alignment = taLeftJustify
          BevelOuter = bvNone
          Color = clWhite
          Padding.Top = 8
          ParentBackground = False
          TabOrder = 1
          object Label4: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 11
            Width = 912
            Height = 27
            Align = alClient
            Caption = 'Quest'#245'es'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitWidth = 61
            ExplicitHeight = 16
          end
        end
      end
      object pnlQuestoes: TPanel
        Left = 0
        Top = 234
        Width = 956
        Height = 277
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 2
        object dbgQuestoes: TDBGrid
          Left = 38
          Top = 0
          Width = 918
          Height = 277
          Align = alClient
          DataSource = dtmAulas.dtsQuestoes
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgTitleClick, dgTitleHotTrack]
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDrawColumnCell = dbgQuestoesDrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'CODIGO'
              Title.Caption = 'C'#243'digo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCRICAO'
              Title.Caption = 'Descri'#231#227'o'
              Width = 400
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'IMAGEM'
              Title.Alignment = taCenter
              Title.Caption = 'Imagem'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CORRETA'
              Title.Alignment = taCenter
              Title.Caption = 'Correta'
              Width = 60
              Visible = True
            end>
        end
        object pnlQuestoesBotoes: TPanel
          Left = 0
          Top = 0
          Width = 38
          Height = 277
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 1
        end
      end
    end
    object tbsLocalizar: TTabSheet
      Caption = 'Localizar'
      ImageIndex = 1
      object pnlLocalizar: TPanel
        Left = 0
        Top = 0
        Width = 956
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
        Width = 956
        Height = 430
        Align = alClient
        DataSource = dtmAulas.dtsBuscaAulas
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
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
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TITULO'
            Title.Caption = 'T'#237'tulo'
            Width = 400
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Title.Caption = 'Turma'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IMAGEM'
            Title.Alignment = taCenter
            Title.Caption = 'Imagem'
            Width = 60
            Visible = True
          end>
      end
    end
  end
  object OpenPicture: TOpenPictureDialog
    Filter = 'JPEG Image File (*.jpg)|*.jpg'
    Left = 600
    Top = 244
  end
  object imgDetail: TImageList
    Left = 658
    Top = 244
    Bitmap = {
      494C010104000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      000000000000000000000000000000000000FFFFFFFF8B6B55FFE4DBD5FFF5F3
      F0FFF4ECE6FFF4ECE6FFF4ECE6FFF4ECE6FFF4ECE6FFF2E8DEFFF2E8DEFFF2E8
      DEFFF5F3F0FFD1CCCBFF433129FFFFFFFFFFFFFFFFFF917057FFE4DBD5FFFAF6
      F2FFF6F1ECFFF5EDE5FFF5EDE5FFF0E9E2FFF0E9E2FFF0E9E2FFF0E9E2FFEFE7
      DEFFF6F1ECFFD1CCCBFF433129FFFFFFFFFFFFFFFFFF917057FFE4DBD5FFFAF6
      F2FFF6F1ECFFF5EDE5FFF5EDE5FFF0E9E2FFF0E9E2FFF0E9E2FFF0E9E2FFEFE7
      DEFFF6F1ECFFD1CCCBFF433129FFFFFFFFFF000000000000000000000000FFFF
      FFFF3C604CFF2C8252FF2C8252FF2C8252FF2C8252FF2C8252FF1A5936FFFFFF
      FFFFFFFFFFFF000000000000000000000000FFFFFFFFB29576FFF5F3F0FF4DB0
      7AFF4EB17BFF51B37DFF52B47DFF53B67FFF54B780FF55B981FF57BA83FF58BC
      84FF58BC84FFF5F3F0FF594941FFFFFFFFFFFFFFFFFFB49776FFFAF6F2FFFDDC
      BBFFFCDAB6FFFCD7B1FFFBD4ABFFFBD4ABFFFBD1A4FFFBCE9EFFFBCE9EFFFCCA
      95FFFCCA95FFF6F1ECFF55453EFFFFFFFFFFFFFFFFFFB49776FFFAF6F2FFFDDC
      BBFFBAA895FF707070FFFBD4ABFFFBD4ABFFFBD1A4FFFBCE9EFFFBCE9EFFFCCA
      95FFFCCA95FFF6F1ECFF55453EFFFFFFFFFF0000000000000000FFFFFFFF3C60
      4CFF58D28BFF4CE489FF47D57EFF47D57EFF47D57EFF48D980FF4CE489FF2E70
      4BFFFFFFFFFFF7FCF9FF0000000000000000FFFFFFFFB29576FFF4ECE6FF4DAF
      78FF4EB079FF4FB17AFF51B37CFF51B47DFF53B57FFF53B67FFF54B781FF55B8
      81FF56B982FFF2E8DEFF594941FFFFFFFFFFFFFFFFFFB49776FFF6F1ECFFFDDC
      BBFFFCDAB6FFFCDAB6FFFCD7B1FFFBD4ABFFFBD1A4FFFBD1A4FFFBCE9EFFFCCA
      95FFFCCA95FFEFE7DEFF55453EFFFFFFFFFFFFFFFFFFB49776FFF6F1ECFFBBA9
      98FF707070FF707070FFFCD7B1FFFBD4ABFFFBD1A4FFFBD1A4FFFBCE9EFFFCCA
      95FFFCCA95FFEFE7DEFF55453EFFFFFFFFFF00000000FFFFFFFF3C604CFF58D2
      8BFF44BF71FF3EB869FF3EB869FF3EB869FF3EB869FF3EB869FF3EB869FF4CE4
      89FF2E704BFFFFFFFFFF0000000000000000FFFFFFFFB29576FFF4ECE6FF4DAE
      79FF4DAF79FF4FB07BFF4FB17BFF51B37DFF53B47EFF51B47EFF53B67FFF53B6
      80FF54B780FFF2E8DEFF594941FFFFFFFFFFFFFFFFFF000000FF7E6D5BFF0000
      00FF7F7060FF000000FF7F7060FF000000FF7F7264FF000000FF7F7264FFFBCE
      9EFFFBCE9EFFF0E9E2FF5C4B43FFFFFFFFFFFFFFFFFFB49776FFB7B4B2FF7070
      70FF969696FF707070FFFCD7B1FFFBD4ABFFFBD4ABFF868078FFD0B394FFFBCE
      9EFFFBCE9EFFF0E9E2FF5C4B43FFFFFFFFFFFFFFFFFF426752FF77DAA4FF3EB8
      69FF47C376FF47C376FF44BF71FF44BF71FF44BF71FF44BF71FF3EB869FF3EB8
      69FF50E58CFF1A5936FFFFFFFFFF00000000FFFFFFFFC7AC85FFF4ECE6FF4DAE
      79FF4DAE79FF4EAF79FF4EB07AFF4FB17BFF50B27CFF51B37DFF51B47DFF52B4
      7EFF51B47EFFF4ECE6FF594941FFFFFFFFFFFFFFFFFF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFFBD1
      A4FFFBCE9EFFF5EDE5FF5C4B43FFFFFFFFFF707070FF707070FF707070FF9696
      96FF8E8E8EFF707070FFFCDAB6FF7D7A76FFC1AA92FFC0A992FF90867CFFFBD1
      A4FFFBCE9EFFF5EDE5FF5C4B43FFFFFFFFFFFFFFFFFF426752FF96DDB3FF47C3
      76FF47C376FF69D091FFE5F7ECFF96DDB3FF44BF71FF44BF71FF44BF71FF44BF
      71FF4CE489FF1A5936FFFFFFFFFF00000000FFFFFFFFC7AC85FFF4ECE6FFFFE5
      BDFFFFE5BDFFFFE5BEFFFFE5BFFFFFE6C0FFFFE7C2FFFFE8C4FFFFE9C7FFFFEA
      CAFFFFEBCDFFF4ECE6FF6F594CFFFFFFFFFFFFFFFFFF000000FFFBCE9EFFFEE3
      C7FF000000FFFCCA95FFFEE3C7FF000000FFFCCA95FFFEE3C7FF000000FFFBD1
      A4FFFBD1A4FFF5EDE5FF6B5549FFFFFFFFFF707070FFA2A2A2FF8E8E8EFF8E8E
      8EFF8E8E8EFF707070FFFCDAB6FFDBC1A6FF727271FFD8BB9CFF717170FFFBD1
      A4FFFBD1A4FFF5EDE5FF6B5549FFFFFFFFFFFFFFFFFF426752FF96DDB3FF69D0
      91FFA9E6C2FFF7FCF9FFE5F7ECFFFFFFFFFF96DDB3FF44BF71FF44BF71FF47C3
      76FF50E58CFF1A5936FFFFFFFFFF00000000FFFFFFFFC7AC85FFF4ECE6FFFFE2
      B5FFFFE2B5FFFFE2B6FFFFE2B7FFFFE3B9FFFFE4BBFFFFE5BDFFFFE6C0FFFFE7
      C4FFFFE9C7FFF4ECE6FF6F594CFFFFFFFFFFFFFFFFFF000000FFFEE3C7FFFEE3
      C7FF000000FFFEE3C7FFFEE3C7FF000000FFFEE3C7FFFEE3C7FF000000FFFBD4
      ABFFFBD4ABFFFAF6F2FF6B5549FFFFFFFFFF707070FFB4B4B4FFAAAAAAFF9B9B
      9BFF9B9B9BFF707070FFFDDCBBFFDCC3A9FF727271FFD9BDA1FF717171FFFBD4
      ABFFFBD4ABFFFAF6F2FF6B5549FFFFFFFFFFFFFFFFFF426752FF96DDB3FF60CE
      8BFFC5EDD4FFE5F7ECFF69D091FFC5EDD4FFFFFFFFFF96DDB3FF44BF71FF47C3
      76FF50E58CFF1A5936FFFFFFFFFF00000000FFFFFFFFD6C09AFFF4ECE6FFFFDE
      ADFFFFDEADFFFFDFAEFFFFDFAEFFFFE0B1FFFFE1B3FFFFE2B6FFFFE3BAFFFFE5
      BDFFFFE7C2FFF4ECE6FF6F594CFFFFFFFFFFFFFFFFFF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFFCD7
      B1FFFBD4ABFFFAF6F2FF7B6152FFFFFFFFFF707070FF707070FF707070FFAAAA
      AAFF9B9B9BFF707070FFFDDFC0FF7D7A78FFC2AF9CFFC0AD98FF908880FFFCD7
      B1FFFBD4ABFFFAF6F2FF7B6152FFFFFFFFFFFFFFFFFF426752FF96DDB3FF53CD
      83FF53CD83FF53CD83FF4FCB80FF60CE8BFFE5F7ECFFFFFFFFFFC5EDD4FF53CD
      83FF50E58CFF2E704BFFFFFFFFFF00000000FFFFFFFFD6C09AFFF4ECE6FF04D1
      FDFF04D1FDFFC2D6B2FFFFDCA7FFFFDDA9FFFFDEACFFFFDFAFFFFFE1B3FFFEE2
      B7FFFFE4BBFFF4ECE6FF6F594CFFFFFFFFFFFFFFFFFF000000FF7E6D5BFF0000
      00FF7F7060FF000000FF7F7060FF000000FF7F7264FF000000FF7F7264FFFCDA
      B6FFFCD7B1FFFAF6F2FF7B6152FFFFFFFFFFFFFFFFFFD6C09AFFB9B7B5FF7070
      70FFAAAAAAFF707070FFFDDFC0FFFDDFC0FFFDDFC0FF87817CFFD1BAA1FFFCDA
      B6FFFCD7B1FFFAF6F2FF7B6152FFFFFFFFFFFFFFFFFF426752FF96DDB3FF58D2
      8BFF53CD83FF53CD83FF4FCB80FF4FCB80FF69D091FFE5F7ECFFFFFFFFFF69D0
      91FF57E693FF2E704BFFFFFFFFFF00000000FFFFFFFFDFCDAAFFFCF3E7FF04E4
      FDFF04E4FDFF04D1FDFFFFD99FFFFFDAA1FFFFDBA4FFFFDCA8FFFFDEABFFFFE0
      B0FFFFE1B4FFF4ECE6FF8B6B55FFFFFFFFFFFFFFFFFFDECBA8FFFAF6F2FFFEE3
      C7FFFEE3C7FFFEE3C7FFFEE3C7FFFDDFC0FFFDDFC0FFFDDCBBFFFDDCBBFFFAF6
      F2FFFAF6F2FFFAF6F2FF7B6152FFFFFFFFFFFFFFFFFFDECBA8FFFAF6F2FFBBAD
      9EFF707070FF707070FFFEE3C7FFFDDFC0FFFDDFC0FFFDDCBBFFFDDCBBFFFAF6
      F2FFFAF6F2FFFAF6F2FF7B6152FFFFFFFFFFFFFFFFFF426752FFB9E6CDFF58D2
      8BFF53CD83FF53CD83FF53CD83FF4FCB80FF4FCB80FF69D091FFB9E6CDFF60CE
      8BFF57E693FF1A5936FFFFFFFFFF00000000FFFFFFFFE4D3AEFFFCF3E7FF00E4
      FFFF04E4FDFF04D1FDFFFFD697FFFFD799FFFFD89DFFFFD9A0FFFFDBA5FFFFDD
      A9FFFFDFAEFFF5F3F0FF8B6B55FFFFFFFFFFFFFFFFFFE3D1B0FFF5EDE5FFFEE3
      C7FFFEE3C7FFFEE3C7FFFEE3C7FFFEE3C7FFFDDFC0FFFDDFC0FFFDDFC0FFFAF6
      F2FFECBB89FFECBB89FF917057FFFFFFFFFFFFFFFFFFE3D1B0FFF5EDE5FFFEE3
      C7FFBBAD9EFF707070FFFEE3C7FFFEE3C7FFFDDFC0FFFDDFC0FFFDDFC0FFFAF6
      F2FFECBB89FFECBB89FF917057FFFFFFFFFF00000000FFFFFFFF5C8B71FFB9E6
      CDFF58D28BFF58D28BFF58D28BFF58D28BFF53CD83FF53CD83FF4FCB80FF57E6
      93FF2C8252FFFFFFFFFF0000000000000000FFFFFFFFE4D3AEFFF4EBD9FFFCF3
      E7FFF4EBD9FFF4EBD9FFF4EBD9FFF2E8DEFFF2E8DEFFF2E8DEFFF2E8DEFFF2E8
      DEFFF4ECE6FFE4DBD5FF8B6B55FFFFFFFFFFFFFFFFFFE5D3AEFFF0E7D5FFF5ED
      E5FFF6F1ECFFF5EDE5FFF6F1ECFFF6F1ECFFF5EDE5FFF5EDE5FFF5EDE5FFF5ED
      E5FFECBB89FF917057FFFFFFFFFF00000000FFFFFFFFE5D3AEFFF0E7D5FFF5ED
      E5FFF6F1ECFFF5EDE5FFF6F1ECFFF6F1ECFFF5EDE5FFF5EDE5FFF5EDE5FFF5ED
      E5FFECBB89FF917057FFFFFFFFFF000000000000000000000000FFFFFFFF5C8B
      71FFB9E6CDFFB9E6CDFFA9E6C2FF77E5A8FF77E5A8FF77E5A8FF77E5A8FF2C82
      52FFFFFFFFFF000000000000000000000000FFFFFFFFF4EBD9FFE4D3AEFFE4D3
      AEFFDFCDAAFFD6C09AFFD6C09AFFC7AC85FFC7AC85FFC7AC85FFB29576FFB295
      76FFB29576FF8B6B55FFB29576FFFFFFFFFFFFFFFFFFF0E7D5FFE5D3AEFFE3D1
      B0FFDECBA8FFD6C09AFFD6C09AFFC8AF88FFC8AF88FFB49776FFB49776FFB497
      76FFB49776FFFFFFFFFF0000000000000000FFFFFFFFF0E7D5FFE5D3AEFFE3D1
      B0FFDECBA8FFD6C09AFFD6C09AFFC8AF88FFC8AF88FFB49776FFB49776FFB497
      76FFB49776FFFFFFFFFF0000000000000000000000000000000000000000FFFF
      FFFF467A5DFF8C9891FF8C9891FF8C9891FF6D937EFF6D937EFF467A5DFFFFFF
      FFFF00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF0000000000000000000000000000000000000000000000000000
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
end
