object frmUsuarios: TfrmUsuarios
  Left = 0
  Top = 0
  BorderStyle = bsDialog
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
    ExplicitLeft = 5
    ExplicitTop = 2
    ExplicitWidth = 934
    ExplicitHeight = 477
    object tbsDadosCadastrais: TTabSheet
      Caption = 'Dados Cadastrais'
      object dbGrid: TDBGrid
        Left = 0
        Top = 0
        Width = 936
        Height = 441
        Align = alClient
        DataSource = dtmUsuarios.dtsUsuarios
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
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
            FieldName = 'NOME'
            Title.Caption = 'Nome'
            Width = 200
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
            FieldName = 'LOGIN'
            Title.Caption = 'Login'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATA_NASCIMENTO'
            Title.Caption = 'Data Nascimento'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ATIVO'
            Title.Caption = 'Ativo'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'GESTOR'
            Title.Caption = 'Gestor'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PROFESSOR'
            Title.Caption = 'Professor'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ALUNO'
            Title.Caption = 'Aluno'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATA_INGRESSO'
            Title.Caption = 'Data ingresso'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ULTIMO_ACESSO'
            Title.Caption = #218'ltimo acesso'
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
        ExplicitWidth = 926
        ExplicitHeight = 437
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
          Left = 278
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
          ListSource = dtmUsuarios.dtsEscola
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
        Width = 926
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
        Width = 926
        Height = 356
        Align = alClient
        DataSource = dtmUsuarios.dtsBuscaUsuarios
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
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
            FieldName = 'NOME'
            Title.Caption = 'Nome'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ESCOLA'
            Title.Caption = 'Escola'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TURMA'
            Title.Caption = 'Turma'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMAIL'
            Title.Caption = 'E-mail'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LOGIN'
            Title.Caption = 'Login'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SENHA'
            Title.Caption = 'Senha'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATA_NASCIMENTO'
            Title.Caption = 'Data Nascimento'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ATIVO'
            Title.Caption = 'Ativo'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'GESTOR'
            Title.Caption = 'Gestor'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PROFESSOR'
            Title.Caption = 'Professor'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ALUNO'
            Title.Caption = 'Aluno'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATA_INGRESSO'
            Title.Caption = 'Data ingresso'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ULTIMO_ACESSO'
            Title.Caption = 'Utimo acesso'
            Width = 100
            Visible = True
          end>
      end
    end
  end
end
