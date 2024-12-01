object FOrdComp: TFOrdComp
  Left = 592
  Top = 290
  Width = 1036
  Height = 627
  Caption = 'Ordens de Compra - Sistema de Almoxarifado'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnPaint = FormPaint
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label11: TLabel
    Left = 525
    Top = 99
    Width = 76
    Height = 16
    Caption = 'Embalagem'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 326
    Top = 83
    Width = 91
    Height = 18
    Caption = 'Desconto Total'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1020
    Height = 57
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object SBT_REL: TSpeedButton
      Left = 757
      Top = 10
      Width = 36
      Height = 34
      Hint = 'O.C.'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        0003377777777777777308888888888888807F33333333333337088888888888
        88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
        8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
        8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      Visible = False
      OnClick = SBT_RELClick
    end
    object Fonte: TDBNavigator
      Left = 186
      Top = 10
      Width = 208
      Height = 34
      DataSource = DS_OC
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbPost, nbCancel]
      Hints.Strings = (
        'Primeiro'
        'Anterior'
        'Próximo'
        'Último'
        'Incluir'
        'Excluir'
        'Alterar'
        'Confirmar'
        'Cancelar'
        'Refresh'
        '')
      ParentShowHint = False
      ConfirmDelete = False
      ShowHint = True
      TabOrder = 0
      Visible = False
      OnClick = FonteClick
    end
    object wwDBNavigator1: TwwDBNavigator
      Left = 8
      Top = 7
      Width = 553
      Height = 43
      AutosizeStyle = asSizeNavButtons
      DataSource = dsMyNavPanel
      Flat = False
      ImageList = ImageList1
      RepeatInterval.InitialDelay = 500
      RepeatInterval.Interval = 100
      object fonteFirst: TwwNavButton
        Left = 0
        Top = 0
        Width = 51
        Height = 43
        Hint = 'Move to first record'
        ImageIndex = 9
        NumGlyphs = 1
        ShowText = True
        Spacing = 8
        Transparent = False
        Caption = 'Primeiro'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 0
        Style = nbsFirst
      end
      object fontePrior: TwwNavButton
        Left = 51
        Top = 0
        Width = 51
        Height = 43
        Hint = 'Move to prior record'
        ImageIndex = 8
        NumGlyphs = 1
        ShowText = True
        Spacing = 8
        Transparent = False
        Caption = 'Anterior'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 1
        Style = nbsPrior
      end
      object fonteNext: TwwNavButton
        Left = 102
        Top = 0
        Width = 51
        Height = 43
        Hint = 'Move to next record'
        ImageIndex = 11
        NumGlyphs = 1
        ShowText = True
        Spacing = 8
        Transparent = False
        Caption = 'Próximo'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 2
        Style = nbsNext
      end
      object fonteLast: TwwNavButton
        Left = 153
        Top = 0
        Width = 50
        Height = 43
        Hint = 'Move to last record'
        ImageIndex = 10
        NumGlyphs = 1
        ShowText = True
        Spacing = 8
        Transparent = False
        Caption = 'Último'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 3
        Style = nbsLast
      end
      object fonteInsert: TwwNavButton
        Left = 203
        Top = 0
        Width = 50
        Height = 43
        Hint = 'Insert new record'
        ImageIndex = 2
        NumGlyphs = 1
        ShowText = True
        Spacing = 8
        Transparent = False
        Caption = 'Novo'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 4
        Style = nbsInsert
      end
      object fonteDelete: TwwNavButton
        Left = 253
        Top = 0
        Width = 50
        Height = 43
        Hint = 'Delete current record'
        ImageIndex = 7
        NumGlyphs = 1
        ShowText = True
        Spacing = 8
        Transparent = False
        Caption = 'Apagar'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 5
        Style = nbsDelete
      end
      object fonteEdit: TwwNavButton
        Left = 303
        Top = 0
        Width = 50
        Height = 43
        Hint = 'Edit current record'
        ImageIndex = 4
        NumGlyphs = 1
        ShowText = True
        Spacing = 8
        Transparent = False
        Caption = 'Editar'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 6
        Style = nbsEdit
      end
      object fontePost: TwwNavButton
        Left = 353
        Top = 0
        Width = 50
        Height = 43
        Hint = 'Post changes of current record'
        ImageIndex = 3
        NumGlyphs = 1
        ShowText = True
        Spacing = 8
        Transparent = False
        Caption = 'Salvar'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 7
        Style = nbsPost
      end
      object fonteCancel: TwwNavButton
        Left = 403
        Top = 0
        Width = 50
        Height = 43
        Hint = 'Cancel changes made to current record'
        ImageIndex = 6
        NumGlyphs = 1
        ShowText = True
        Spacing = 8
        Transparent = False
        Caption = 'Cancelar'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 8
        Style = nbsCancel
      end
      object wwDBNavigator1Button: TwwNavButton
        Left = 453
        Top = 0
        Width = 50
        Height = 43
        ImageIndex = 12
        NumGlyphs = 1
        ShowText = True
        Spacing = 8
        Transparent = False
        Caption = 'Imprimir'
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        OnClick = wwDBNavigator1ButtonClick
        Index = 9
        Style = nbsCustom
      end
      object wwDBNavigator1Button1: TwwNavButton
        Left = 503
        Top = 0
        Width = 50
        Height = 43
        ImageIndex = 13
        NumGlyphs = 1
        ShowText = True
        Spacing = 8
        Transparent = False
        Caption = 'Materiais'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        OnClick = wwDBNavigator1Button1Click
        Index = 10
        Style = nbsCustom
      end
    end
    object RzBitBtn1: TRzBitBtn
      Left = 695
      Top = 7
      Width = 108
      Height = 43
      Caption = 'Criar Cópia da OC'
      TabOrder = 2
      OnClick = RzBitBtn1Click
      Glyph.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        08000000000040020000210B0000210B00000001000000000000E0842A007340
        4000EA984000F4A14000845048008F605800A16A5800E0985800E0A16000F4B6
        6000AB6A6A00AB736A00C0846A00D4986A00E0A17300EAAB7B00FFCA8F00FFCA
        9800FFCAA100ABABAB00F4D4AB00FFD4AB00F4D4B600FFD4B600FFE0B600D4CA
        C000EAD4C000FFE0C000CACACA00EAD4CA00EAE0CA00F4E0CA00FFE0CA00F4EA
        CA00FFEACA00EAE0D400F4E0D400F4EAD400FFEAD400EAE0E000F4E0E000EAEA
        E000F4EAE000FFEAE000FFF4E000F4E0EA00F4EAEA00FFF4EA00FFF4F400FFFF
        F400FF00FF00FFFFFF0000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000323232323232
        3232050505050505050505050505050501323232323232323232051A251F1F1F
        1F1F1F1F1F1F211A01323232323232323232051A251E1E1E1E1A1A1A1A1A1E1A
        01323232323232323232051D2A23231E1E1E1E1A1A1A1E1A0132323232323232
        3232061D2A1611111111111111141E1A01323232323232323232061D2A1B1414
        1414141414161E1A0132320505050505050506232F2524241F1F1F1F1E1E1F1A
        043232051A251F1F1F1F0B232F141010101010101014241A043232051A251E1E
        1E1E0B23302A2524241F1F1F1F1F241A043232051D2A23231E1E0C2731251F1F
        1F1F1F1B161F251D053232061D2A161111110C2A331710101010101010162A1E
        053232061D2A1B1414140D2E33302F2F2E2A2A2A2A2A2A1905323206232F2524
        241F0D2E333333303030302F30271C130632320B232F141010100E2E33333331
        3030302A060606060632320B23302A2524240E2E333333333331332306070200
        0A32320C2731251F1F1F0F2F33333333333333270609020A3232320C2A331710
        10100F2F333333333333332706080A323232320D2E33302F2F2E0F0D0D0D0D0D
        0D0D0D0D060A32323232320D2E333333303030302F30271C1306323232323232
        3232320E2E333333313030302A06060606063232323232323232320E2E333333
        3333313323060702000A3232323232323232320F2F3333333333333327060902
        0A323232323232323232320F2F333333333333332706080A3232323232323232
        3232320F0D0D0D0D0D0D0D0D0D060A3232323232323232323232}
    end
    object btnLiberarEntrega: TRzBitBtn
      Left = 571
      Top = 6
      Width = 108
      Height = 43
      Caption = 'Liberar Entrega da OC'
      TabOrder = 3
      OnClick = btnLiberarEntregaClick
    end
  end
  object TB1: TTabbedNotebook
    Left = 0
    Top = 57
    Width = 1020
    Height = 505
    Align = alClient
    PageIndex = 1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clActiveCaption
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    TabFont.Charset = ANSI_CHARSET
    TabFont.Color = clNavy
    TabFont.Height = -13
    TabFont.Name = 'Comic Sans MS'
    TabFont.Style = [fsBold]
    TabOrder = 1
    TabStop = False
    OnClick = TB1Click
    OnChange = TB1Change
    object TTabPage
      Left = 4
      Top = 24
      Caption = '   Ordem de Compra   '
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1001
        Height = 443
        BevelInner = bvLowered
        TabOrder = 0
        object txtCh: TLabel
          Left = 65
          Top = 317
          Width = 5
          Height = 16
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object GridOC: TwwDBGrid
          Left = 7
          Top = 200
          Width = 978
          Height = 236
          Selected.Strings = (
            'ORD_ID'#9'10'#9'O.C.'
            'DT_CADASTRO'#9'10'#9'Dt. Cadastro'
            'FOR_CODI'#9'17'#9'Fornecedor'
            'DT_EMISSAO'#9'11'#9'Dt. Emiss.'
            'DT_ENTREGA'#9'10'#9'Dt. Entrega'
            'VALOR'#9'12'#9'Valor'
            'ds_cond'#9'12'#9'Cond.Pagto'
            'STATUS'#9'16'#9'Status'
            'DescTotal'#9'10'#9'DescTotal'
            'VlrFrete'#9'10'#9'VlrFrete')
          IniAttributes.FileName = 'delphi32.ini'
          IniAttributes.SectionName = 'FPcPGrid'
          IniAttributes.Delimiter = ';;'
          TitleColor = clLime
          FixedCols = 0
          ShowHorzScrollBar = True
          EditControlOptions = [ecoCheckboxSingleClick, ecoSearchOwnerForm]
          Color = clInfoBk
          DataSource = DS_OC
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          KeyOptions = []
          Options = [dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
          ParentFont = False
          TabOrder = 1
          TitleAlignment = taLeftJustify
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clBlue
          TitleFont.Height = -12
          TitleFont.Name = 'Comic Sans MS'
          TitleFont.Style = []
          TitleLines = 1
          TitleButtons = False
          FooterColor = clInactiveCaption
          FooterCellColor = clGrayText
        end
        object Panel2: TPanel
          Left = 8
          Top = 8
          Width = 977
          Height = 187
          BevelInner = bvLowered
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object Label7: TLabel
            Left = 57
            Top = 12
            Width = 24
            Height = 18
            Caption = 'O.C.'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object Label2: TLabel
            Left = 11
            Top = 48
            Width = 70
            Height = 18
            Caption = 'Fornecedor'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object Label3: TLabel
            Left = 187
            Top = 12
            Width = 75
            Height = 18
            Caption = 'Dt. Cadastro'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object Label5: TLabel
            Left = 525
            Top = 83
            Width = 68
            Height = 18
            Caption = 'Dt. Entrega'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object Label8: TLabel
            Left = 363
            Top = 13
            Width = 57
            Height = 18
            Caption = 'Dt. Emiss.'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object Label9: TLabel
            Left = 11
            Top = 80
            Width = 70
            Height = 18
            Caption = 'Cond. Pagto'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object Label6: TLabel
            Left = 6
            Top = 119
            Width = 68
            Height = 18
            Caption = 'Valor Total'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object Label4: TLabel
            Left = 523
            Top = 11
            Width = 39
            Height = 18
            Caption = 'Status'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object Label27: TLabel
            Left = 520
            Top = 113
            Width = 73
            Height = 18
            Caption = 'Autorizador'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object lbl1: TLabel
            Left = 270
            Top = 83
            Width = 55
            Height = 18
            Caption = 'Desconto'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object lbl3: TLabel
            Left = 298
            Top = 118
            Width = 33
            Height = 18
            Caption = 'Frete'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object Label1: TLabel
            Left = 22
            Top = 151
            Width = 50
            Height = 18
            Caption = 'Empresa'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object Label14: TLabel
            Left = 406
            Top = 151
            Width = 94
            Height = 18
            Caption = 'Tipo de Compra'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object DBLCForn: TwwDBLookupCombo
            Left = 83
            Top = 47
            Width = 878
            Height = 26
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'FOR_RAZA'#9'50'#9'FOR_RAZA'#9'F')
            DataField = 'FOR_CODI'
            DataSource = DS_OC
            LookupTable = Q_FORN
            LookupField = 'FOR_CODI'
            ParentFont = False
            TabOrder = 0
            AutoDropDown = True
            ShowButton = True
            PreciseEditRegion = False
            AllowClearKey = True
            OnEnter = DBLCCondEnter
            OnExit = DBLCFornExit
          end
          object DBEOC: TwwDBEdit
            Left = 85
            Top = 11
            Width = 87
            Height = 26
            Color = clSilver
            DataField = 'ORD_ID'
            DataSource = DS_OC
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object DBEDtCad: TwwDBEdit
            Left = 266
            Top = 10
            Width = 87
            Height = 26
            Color = clSilver
            DataField = 'DT_CADASTRO'
            DataSource = DS_OC
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object DBBDtEntr: TwwDBEdit
            Left = 597
            Top = 79
            Width = 157
            Height = 26
            DataField = 'DT_ENTREGA'
            DataSource = DS_OC
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnEnter = DBBDtEntrEnter
            OnExit = DBBDtEntrExit
          end
          object DBEDtEmiss: TwwDBEdit
            Left = 425
            Top = 10
            Width = 87
            Height = 26
            Color = clSilver
            DataField = 'DT_EMISSAO'
            DataSource = DS_OC
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            TabOrder = 8
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object DBLCCond: TwwDBLookupCombo
            Left = 83
            Top = 80
            Width = 175
            Height = 26
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'DESCRICAO'#9'57'#9'Descrição'#9'F')
            DataField = 'COND_PGTO_ID'
            DataSource = DS_OC
            LookupTable = Q_COND
            LookupField = 'Cond_Pgto_ID'
            ParentFont = False
            TabOrder = 1
            AutoDropDown = True
            ShowButton = True
            PreciseEditRegion = False
            AllowClearKey = True
            OnEnter = DBLCCondEnter
            OnExit = DBLCCondExit
          end
          object DBEVal: TwwDBEdit
            Left = 83
            Top = 114
            Width = 175
            Height = 26
            Color = clSilver
            DataField = 'VALOR'
            DataSource = DS_OC
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            TabOrder = 9
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object wwDBLookupCombo1: TwwDBLookupCombo
            Left = 597
            Top = 108
            Width = 158
            Height = 26
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'NOME'#9'40'#9'NOME'#9'F')
            DataField = 'CH_AUT'
            DataSource = DS_OC
            LookupTable = Q_USU
            LookupField = 'CH'
            ParentFont = False
            TabOrder = 5
            AutoDropDown = True
            ShowButton = True
            PreciseEditRegion = False
            AllowClearKey = True
            OnEnter = DBLCCondEnter
            OnExit = wwDBLookupCombo1Exit
          end
          object cboStat: TwwDBComboBox
            Left = 564
            Top = 9
            Width = 192
            Height = 26
            ShowButton = True
            Style = csDropDown
            MapList = True
            AllowClearKey = False
            AutoDropDown = True
            ButtonStyle = cbsEllipsis
            Color = clSilver
            DataField = 'STATUS'
            DataSource = DS_OC
            DropDownCount = 8
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ItemHeight = 0
            Items.Strings = (
              'Parcialmente Atendida'#9'P'
              'Totalmente Atendida'#9'T'
              'Em Aberto'#9'A')
            ParentFont = False
            Sorted = False
            TabOrder = 10
            UnboundDataType = wwDefault
          end
          object wwDBEdit2: TwwDBEdit
            Left = 335
            Top = 80
            Width = 175
            Height = 26
            DataField = 'DescTotal'
            DataSource = DS_OC
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnEnter = DBBDtEntrEnter
            OnExit = DBBDtEntrExit
          end
          object wwDBEdit5: TwwDBEdit
            Left = 335
            Top = 114
            Width = 175
            Height = 26
            DataField = 'VlrFrete'
            DataSource = DS_OC
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnEnter = DBBDtEntrEnter
            OnExit = DBBDtEntrExit
          end
          object wwDBLookupCombo5: TwwDBLookupCombo
            Left = 83
            Top = 148
            Width = 307
            Height = 26
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'FIL_DESC'#9'20'#9'FIL_DESC'#9'F')
            DataField = 'FIL_CODI'
            DataSource = DS_OC
            LookupTable = ADOQuery1
            LookupField = 'FIL_CODI'
            Style = csDropDownList
            ParentFont = False
            TabOrder = 11
            AutoDropDown = True
            ShowButton = True
            PreciseEditRegion = False
            AllowClearKey = False
          end
          object DBComboBox1: TDBComboBox
            Left = 512
            Top = 148
            Width = 241
            Height = 26
            Style = csDropDownList
            DataField = 'TipoCompra'
            DataSource = DS_OC
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ItemHeight = 18
            Items.Strings = (
              'NORMAL'
              'URGÊNCIA'
              'EMERGÊNCIA')
            ParentFont = False
            TabOrder = 12
          end
        end
      end
    end
    object TTabPage
      Left = 4
      Top = 24
      Caption = '         Itens         '
      object Panel4: TPanel
        Left = 0
        Top = 1
        Width = 1001
        Height = 464
        BevelInner = bvLowered
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clActiveCaption
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label24: TLabel
          Left = 268
          Top = 388
          Width = 142
          Height = 18
          Caption = 'Saldo Restante do Item'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object Label25: TLabel
          Left = 537
          Top = 385
          Width = 115
          Height = 18
          Caption = 'Saldo Total da O.C'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object wwDBEdit13: TwwDBEdit
          Left = 663
          Top = 382
          Width = 108
          Height = 25
          DataField = 'SALDO'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBEdit12: TwwDBEdit
          Left = 419
          Top = 382
          Width = 110
          Height = 25
          DataField = 'SALDO_ITEM'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object GridOI: TwwDBGrid
          Left = 4
          Top = 144
          Width = 989
          Height = 313
          Selected.Strings = (
            'MAT_DESC'#9'20'#9'Material'#9'F'
            'MARCAdesc'#9'14'#9'Marca'#9'F'
            'EmbalagemDESC'#9'12'#9'Embalagem'#9'F'
            'QTDE_COMP'#9'13'#9'Qtd.'#9'F'
            'PRECO_UNIT'#9'12'#9'Preço Unitário'#9'F'
            'VALOR'#9'9'#9'Valor'#9'F'
            'IPI'#9'10'#9'Aliq. IPI (%)'#9'F'
            'VL_IPI'#9'9'#9'Valor IPI'#9'F'
            'QTDE_REC'#9'18'#9'Qtd. Recebida'#9'F'
            'STATUS'#9'11'#9'Status'#9'F'
            'VL_TOTITEM'#9'17'#9'Valor Total'#9'F'
            'COMPARADOR'#9'10'#9'% Dif. Reposição'#9'F')
          IniAttributes.FileName = 'delphi32.ini'
          IniAttributes.SectionName = 'FPcPGrid'
          IniAttributes.Delimiter = ';;'
          TitleColor = clLime
          FixedCols = 0
          ShowHorzScrollBar = True
          EditControlOptions = [ecoCheckboxSingleClick, ecoSearchOwnerForm]
          Color = clInfoBk
          DataSource = DS_OCI
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          KeyOptions = []
          Options = [dgAlwaysShowEditor, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
          TitleAlignment = taLeftJustify
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clBlue
          TitleFont.Height = -12
          TitleFont.Name = 'Comic Sans MS'
          TitleFont.Style = []
          TitleLines = 1
          TitleButtons = False
          OnCalcCellColors = GridOICalcCellColors
          FooterColor = clInactiveCaption
          FooterCellColor = clGrayText
        end
        object Panel7: TPanel
          Left = 6
          Top = 7
          Width = 770
          Height = 130
          BevelInner = bvLowered
          TabOrder = 0
          object Label16: TLabel
            Left = 196
            Top = 71
            Width = 34
            Height = 18
            Caption = 'Qtde.'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object Label20: TLabel
            Left = 623
            Top = 72
            Width = 99
            Height = 18
            Caption = 'Valor Total (R$)'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object Label22: TLabel
            Left = 531
            Top = 71
            Width = 40
            Height = 18
            Caption = 'Vl. IPI'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object Label21: TLabel
            Left = 428
            Top = 71
            Width = 66
            Height = 18
            Caption = 'Al. IPI (%)'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object Label12: TLabel
            Left = 301
            Top = 71
            Width = 88
            Height = 18
            Caption = 'Preço Unitário'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object Label13: TLabel
            Left = 35
            Top = 29
            Width = 51
            Height = 18
            Caption = 'Material'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object Label10: TLabel
            Left = 37
            Top = 70
            Width = 66
            Height = 18
            Caption = 'Embalagem'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object lblUni: TLabel
            Left = 327
            Top = 120
            Width = 4
            Height = 16
            Color = clMenu
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Visible = False
          end
          object Label15: TLabel
            Left = 544
            Top = 5
            Width = 38
            Height = 18
            Caption = 'Marca'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object DBEDQtdComp: TwwDBEdit
            Left = 195
            Top = 89
            Width = 80
            Height = 26
            Color = clWhite
            DataField = 'QTDE_COMP'
            DataSource = DS_OCI
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnEnter = DBBDtEntrEnter
            OnExit = DBBDtEntrExit
          end
          object wwDBEdit3: TwwDBEdit
            Left = 624
            Top = 90
            Width = 134
            Height = 26
            Color = clSilver
            DataField = 'VL_TOTITEM'
            DataSource = DS_OCI
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            TabOrder = 8
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object wwDBEdit6: TwwDBEdit
            Left = 530
            Top = 89
            Width = 71
            Height = 26
            Color = clSilver
            DataField = 'VL_IPI'
            DataSource = DS_OCI
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object wwDBEdit1: TwwDBEdit
            Left = 427
            Top = 89
            Width = 66
            Height = 26
            Color = clWhite
            DataField = 'IPI'
            DataSource = DS_OCI
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnEnter = DBBDtEntrEnter
            OnExit = wwDBEdit1Exit
          end
          object DBEDPrec: TwwDBEdit
            Left = 300
            Top = 89
            Width = 110
            Height = 26
            DataField = 'PRECO_UNIT'
            DataSource = DS_OCI
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnEnter = DBBDtEntrEnter
            OnExit = DBBDtEntrExit
          end
          object wwDBLookupCombo3: TwwDBLookupCombo
            Left = 90
            Top = 24
            Width = 399
            Height = 26
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'MAT_DESC'#9'60'#9'Material'#9'F'#9
              'CodigoMaterial'#9'10'#9'CodigoMaterial'#9'F'#9)
            DataField = 'MATMARCA_ID'
            DataSource = DS_OCI
            LookupTable = qrMaterialMarca
            LookupField = 'MATMARCA_ID'
            Options = [loColLines, loRowLines, loTitles]
            ParentFont = False
            TabOrder = 0
            AutoDropDown = True
            ShowButton = True
            PreciseEditRegion = False
            AllowClearKey = True
            OnCloseUp = wwDBLookupCombo3CloseUp
            OnEnter = DBLCCondEnter
            OnExit = wwDBLookupCombo3Exit
          end
          object wwDBLookupCombo2: TwwDBLookupCombo
            Left = 36
            Top = 89
            Width = 137
            Height = 26
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'MATMARCA_EMBALAGEM'#9'15'#9'MATMARCA_EMBALAGEM'#9'F')
            DataField = 'MATMARCA_ID'
            DataSource = DS_OCI
            LookupTable = Q_EMB
            LookupField = 'MATMARCA_ID'
            Enabled = False
            ParentFont = False
            TabOrder = 3
            AutoDropDown = True
            ShowButton = True
            PreciseEditRegion = False
            AllowClearKey = True
            OnEnter = DBLCCondEnter
            OnExit = wwDBLookupCombo2Exit
          end
          object wwDBLookupCombo4: TwwDBLookupCombo
            Left = 547
            Top = 25
            Width = 214
            Height = 26
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'MARCA_DESC'#9'20'#9'MARCA_DESC'#9'F')
            DataField = 'MARCA_ID'
            DataSource = DS_OCI
            LookupTable = Q_MARC
            LookupField = 'MARCA_ID'
            Enabled = False
            ParentFont = False
            TabOrder = 2
            AutoDropDown = True
            ShowButton = True
            PreciseEditRegion = False
            AllowClearKey = True
            OnCloseUp = wwDBLookupCombo4CloseUp
            OnEnter = DBLCCondEnter
            OnExit = wwDBLookupCombo4Exit
          end
          object chkSemCadastro: TDBCheckBox
            Left = 91
            Top = 3
            Width = 150
            Height = 17
            Caption = 'Material sem cadastro'
            DataField = 'GENERICO'
            DataSource = DS_OCI
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            TabOrder = 9
            ValueChecked = 'S'
            ValueUnchecked = 'N'
            OnClick = chkSemCadastroClick
          end
          object edtMAtDesc: TDBEdit
            Left = 90
            Top = 24
            Width = 359
            Height = 26
            DataField = 'MAT_DESC'
            DataSource = DS_OCI
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            Visible = False
          end
          object btnGetMaterial: TBitBtn
            Left = 490
            Top = 22
            Width = 32
            Height = 28
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 10
            OnClick = btnGetMaterialClick
            Glyph.Data = {
              76060000424D7606000000000000360400002800000018000000180000000100
              08000000000040020000E30E0000E30E00000001000000010000212121000018
              290029292900393939005A39390042424200181852005252520073635200315A
              5A005A5A5A0094735A000039630063636300736B63004A6B6B006B6B6B007B73
              6B00735A73007373730073737B007B7B7B0094847B00A5847B00BD9C7B006384
              84008C8C8C009C948C00AD948C0094949400A59C940084849C009C9C9C00B5AD
              9C00CEBD9C00849CA500A5A5A5009494AD00ADADAD00D6BDAD00FFE7AD00B59C
              B500E7CEB500BDBDBD00D6C6BD009CADC600ADC6C600C6C6C600EFD6C600C6C6
              CE00CECECE00FFDECE00D6D6D600F7E7D600DEDEDE00EFE7DE00D6DEE700DEE7
              E700E7E7E700EFE7E700F7EFE700DEE7EF00EFEFEF00F7F7F700FFF7F700FFFF
              F700FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00424242424242
              4242424242424242424242424242424242424242424242424242424242424242
              4242424242424242424242424242424242424242424242424224000A42424242
              42424242424242424242424242424242240210101A4242424242424242424242
              424242424242422002152B241A4242424242424242424242424242424242420A
              0A2B2B1A42424242424242424242424242420D1A1A4242030A1D1A4242424242
              42424242424242424202110B080300241A2042424242424242424242201F1F20
              07223335271B0705201F1F1F241F1F2B42424242010101020E241B1B1B201B03
              010101010101010142424242090A1E07222B1C17182C2A0D060109141A1E0A04
              424242420919370A2A2C2C2C2C2C2A1613201D262F37191242424242091F4313
              22283C3E412A2A152636434343432509424242421F09432B1B28333C352A211A
              4343413F43430F1F4242424223094340241D2A302A211A3E3F3E3E3E40430929
              42424242230C433F3E2F24202020243F3E3E3E3E3E430929424242422E06413E
              3A3A3A3A3E24243E3A3A3A3A3E410629424242422E063F3A3636363A3A24243A
              3A3636363A3F0629424242422E0C2D322F2F2F2F322020322F2F2F2F322F0C2B
              42424242422E24242B2B2B2B2B20202B2B2B2B2B24242B424242424242424242
              2B242424242020242424242B4242424242424242424242424242424242424242
              4242424242424242424242424242424242424242424242424242424242424242
              4242424242424242424242424242424242424242424242424242}
          end
        end
      end
    end
    object TTabPage
      Left = 4
      Top = 24
      Caption = '     Observações        '
      object Panel5: TPanel
        Left = 5
        Top = 3
        Width = 996
        Height = 398
        BevelInner = bvLowered
        TabOrder = 0
        object Label26: TLabel
          Left = 51
          Top = 30
          Width = 77
          Height = 18
          Caption = 'Observações'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object DBMemo1: TDBMemo
          Left = 136
          Top = 24
          Width = 833
          Height = 343
          Color = clInfoBk
          DataField = 'OBS'
          DataSource = DS_OC
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
      end
    end
  end
  object Panel6: TPanel
    Left = 0
    Top = 562
    Width = 1020
    Height = 27
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 2
    object LBL_STATUS: TLabel
      Left = 547
      Top = 5
      Width = 72
      Height = 15
      Alignment = taCenter
      Caption = 'LBL_STATUS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Panel8: TPanel
      Left = 6
      Top = 4
      Width = 267
      Height = 17
      Caption = '20% ou mais abaixo do valor de reposição'
      Color = 7012351
      TabOrder = 0
    end
    object Panel9: TPanel
      Left = 279
      Top = 4
      Width = 250
      Height = 17
      Caption = '20% ou mais acima do valor de reposição'
      Color = 8224255
      TabOrder = 1
    end
  end
  object Q_OC: TwwQuery
    CachedUpdates = True
    BeforePost = Q_OCBeforePost
    AfterPost = Q_OCAfterPost
    BeforeDelete = Q_OCBeforeDelete
    AfterDelete = Q_OCAfterDelete
    AfterScroll = Q_OCAfterScroll
    OnNewRecord = Q_OCNewRecord
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    RequestLive = True
    SQL.Strings = (
      'SELECT  * FROM ORDEM_COMPRA'
      '')
    UpdateObject = UPD_OC
    ValidateWithMask = True
    Left = 188
    Top = 256
    object Q_OCORD_ID: TAutoIncField
      DisplayLabel = 'O.C.'
      DisplayWidth = 10
      FieldName = 'ORD_ID'
      Origin = 'CURA.ORDEM_COMPRA.ORD_ID'
    end
    object Q_OCDT_CADASTRO: TDateTimeField
      DisplayLabel = 'Dt. Cadastro'
      DisplayWidth = 10
      FieldName = 'DT_CADASTRO'
      Origin = 'CURA.ORDEM_COMPRA.DT_CADASTRO'
      DisplayFormat = 'DD/MM/YYYY'
      EditMask = '!99/99/9999;1;_'
    end
    object Q_OCFOR_CODI: TStringField
      DisplayLabel = 'Fornecedor'
      DisplayWidth = 17
      FieldName = 'FOR_CODI'
      Origin = 'CURA.ORDEM_COMPRA.FOR_CODI'
      FixedChar = True
      Size = 15
    end
    object Q_OCDT_EMISSAO: TDateTimeField
      DisplayLabel = 'Dt. Emiss.'
      DisplayWidth = 11
      FieldName = 'DT_EMISSAO'
      Origin = 'CURA.ORDEM_COMPRA.DT_EMISSAO'
      DisplayFormat = 'DD/MM/YYYY'
      EditMask = '!99/99/9999;1;_'
    end
    object Q_OCDT_ENTREGA: TDateTimeField
      DisplayLabel = 'Dt. Entrega'
      DisplayWidth = 10
      FieldName = 'DT_ENTREGA'
      Origin = 'CURA.ORDEM_COMPRA.DT_ENTREGA'
      DisplayFormat = 'DD/MM/YYYY'
      EditMask = '!99/99/9999;1;_'
    end
    object Q_OCVALOR: TFloatField
      DisplayLabel = 'Valor'
      DisplayWidth = 12
      FieldName = 'VALOR'
      Origin = 'CURA.ORDEM_COMPRA.VALOR'
      DisplayFormat = '###,###,##0.0000'
      EditFormat = '###,###,##0.0000'
    end
    object Q_OCds_cond: TStringField
      DisplayLabel = 'Cond.Pagto'
      DisplayWidth = 12
      FieldKind = fkLookup
      FieldName = 'ds_cond'
      LookupDataSet = Q_COND
      LookupKeyFields = 'COND_PGTO_ID'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'COND_PGTO_ID'
      Size = 30
      Lookup = True
    end
    object Q_OCSTATUS: TStringField
      DisplayLabel = 'Status'
      DisplayWidth = 16
      FieldName = 'STATUS'
      Origin = 'CURA.ORDEM_COMPRA.STATUS'
      OnGetText = Q_OCSTATUSGetText
      FixedChar = True
      Size = 1
    end
    object Q_OCDescTotal: TFloatField
      DisplayWidth = 10
      FieldName = 'DescTotal'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_OCVlrFrete: TFloatField
      DisplayWidth = 10
      FieldName = 'VlrFrete'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_OCNUM_OCOM: TIntegerField
      DisplayLabel = 'O.C.'
      DisplayWidth = 7
      FieldName = 'NUM_OCOM'
      Origin = 'CURA.ORDEM_COMPRA.NUM_OCOM'
      Visible = False
    end
    object Q_OCCOND_PGTO_ID: TIntegerField
      DisplayLabel = 'Cond.Pagto'
      DisplayWidth = 10
      FieldName = 'COND_PGTO_ID'
      Origin = 'CURA.ORDEM_COMPRA.COND_PGTO_ID'
      Visible = False
    end
    object Q_OCUSUARIO: TStringField
      DisplayWidth = 50
      FieldName = 'USUARIO'
      Origin = 'CURA.ORDEM_COMPRA.USUARIO'
      Visible = False
      FixedChar = True
      Size = 50
    end
    object Q_OCCH_AUT: TIntegerField
      DisplayWidth = 10
      FieldName = 'CH_AUT'
      Origin = 'CURA.ORDEM_COMPRA.CH_AUT'
      Visible = False
    end
    object Q_OCCH_CANCEL: TIntegerField
      DisplayWidth = 10
      FieldName = 'CH_CANCEL'
      Origin = 'CURA.ORDEM_COMPRA.CH_CANCEL'
      Visible = False
    end
    object Q_OCOBS: TMemoField
      DisplayWidth = 10
      FieldName = 'OBS'
      Origin = 'CURA.ORDEM_COMPRA.OBS'
      Visible = False
      BlobType = ftMemo
    end
    object Q_OCALTERAR: TStringField
      DisplayWidth = 1
      FieldName = 'ALTERAR'
      Origin = 'CURA.ORDEM_COMPRA.ALTERAR'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_OCDT_CANCEL: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DT_CANCEL'
      Origin = 'CURA.ORDEM_COMPRA.DT_CANCEL'
      Visible = False
    end
    object Q_OCVL_IPI: TFloatField
      DisplayWidth = 10
      FieldName = 'VL_IPI'
      Origin = 'CURA.ORDEM_COMPRA.VL_IPI'
      Visible = False
    end
    object Q_OCVL_TOT: TFloatField
      DisplayWidth = 10
      FieldName = 'VL_TOT'
      Origin = 'CURA.ORDEM_COMPRA.VL_TOT'
      Visible = False
    end
    object Q_OCCOT_ID: TIntegerField
      FieldName = 'COT_ID'
      Origin = 'CURA.Ordem_Compra.COT_ID'
      Visible = False
    end
    object Q_OCDT_IMPRESSAO: TDateTimeField
      FieldName = 'DT_IMPRESSAO'
      Origin = 'CURA.Ordem_Compra.DT_IMPRESSAO'
      Visible = False
    end
    object Q_OCFIL_CODI: TStringField
      FieldName = 'FIL_CODI'
      Origin = 'CURA.Ordem_Compra.FIL_CODI'
      Required = True
      Visible = False
      FixedChar = True
      Size = 3
    end
    object Q_OCTipoCompra: TStringField
      FieldName = 'TipoCompra'
      Origin = 'CURA.Ordem_Compra.TipoCompra'
      FixedChar = True
      Size = 50
    end
    object Q_OCORD_ID_ORIGEM: TIntegerField
      FieldName = 'ORD_ID_ORIGEM'
      Origin = 'CURA.Ordem_Compra.ORD_ID_ORIGEM'
    end
    object Q_OCAutorizaOrdemVencida: TStringField
      FieldName = 'AutorizaOrdemVencida'
      Origin = 'CURA.Ordem_Compra.AutorizaOrdemVencida'
      FixedChar = True
      Size = 1
    end
    object Q_OCDtAutorizaOrdemVencida: TDateTimeField
      FieldName = 'DtAutorizaOrdemVencida'
      Origin = 'CURA.Ordem_Compra.DtAutorizaOrdemVencida'
    end
    object Q_OCUsuarioAutorizaOrdemVencida: TStringField
      FieldName = 'UsuarioAutorizaOrdemVencida'
      Origin = 'CURA.Ordem_Compra.UsuarioAutorizaOrdemVencida'
      FixedChar = True
      Size = 250
    end
  end
  object DS_OC: TwwDataSource
    DataSet = Q_OC
    OnStateChange = DS_OCStateChange
    OnDataChange = DS_OCDataChange
    Left = 100
    Top = 257
  end
  object UPD_OC: TUpdateSQL
    ModifySQL.Strings = (
      'update ORDEM_COMPRA'
      'set'
      '  DT_CADASTRO = :DT_CADASTRO,'
      '  USUARIO = :USUARIO,'
      '  CH_AUT = :CH_AUT,'
      '  CH_CANCEL = :CH_CANCEL,'
      '  FOR_CODI = :FOR_CODI,'
      '  NUM_OCOM = :NUM_OCOM,'
      '  COND_PGTO_ID = :COND_PGTO_ID,'
      '  OBS = :OBS,'
      '  DT_EMISSAO = :DT_EMISSAO,'
      '  DT_ENTREGA = :DT_ENTREGA,'
      '  STATUS = :STATUS,'
      '  VALOR = :VALOR,'
      '  ALTERAR = :ALTERAR,'
      '  DT_CANCEL = :DT_CANCEL,'
      '  VL_IPI = :VL_IPI,'
      '  VL_TOT = :VL_TOT,'
      '  DescTotal = :DescTotal,'
      '  vlrFrete = :vlrFrete,'
      '  FIL_CODI = :FIL_CODI,'
      '  TIPOCOMPRA = :TIPOCOMPRA,'
      'AutorizaOrdemVencida = :AutorizaOrdemVencida,'
      'DtAutorizaOrdemVencida = :DtAutorizaOrdemVencida,'
      'UsuarioAutorizaOrdemVencida = :UsuarioAutorizaOrdemVencida'
      'where'
      '  ORD_ID = :OLD_ORD_ID')
    InsertSQL.Strings = (
      'insert into ORDEM_COMPRA'
      '  (DT_CADASTRO, USUARIO, CH_AUT, CH_CANCEL, FOR_CODI, NUM_OCOM, '
      'COND_PGTO_ID, '
      
        '   OBS, DT_EMISSAO, DT_ENTREGA, STATUS, VALOR, ALTERAR, DT_CANCE' +
        'L, '
      'VL_IPI, '
      '   VL_TOT, DescTotal, vlrFrete, FIL_CODI, TIPOCOMPRA)'
      'values'
      '  (:DT_CADASTRO, :USUARIO, :CH_AUT, :CH_CANCEL, :FOR_CODI, '
      ':NUM_OCOM, :COND_PGTO_ID, '
      '   :OBS, :DT_EMISSAO, :DT_ENTREGA, :STATUS, :VALOR, :ALTERAR, '
      ':DT_CANCEL, '
      
        '   :VL_IPI, :VL_TOT, :DescTotal, :VlrFrete, :FIL_CODI, :TIPOCOMP' +
        'RA)')
    DeleteSQL.Strings = (
      'delete from ORDEM_COMPRA'
      'where'
      '  ORD_ID = :OLD_ORD_ID')
    Left = 148
    Top = 257
  end
  object Q_AUX: TwwQuery
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    ValidateWithMask = True
    Left = 305
    Top = 333
  end
  object Q_FORN: TwwQuery
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'SELECT FOR_CODI, FOR_RAZA'
      'FROM CPAFORN'
      'WHERE F_ALMOX = '#39'S'#39
      'ORDER BY FOR_CODI')
    ValidateWithMask = True
    Left = 220
    Top = 376
    object Q_FORNFOR_RAZA: TStringField
      DisplayWidth = 50
      FieldName = 'FOR_RAZA'
      Origin = 'CURA.CPAFORN.FOR_RAZA'
      FixedChar = True
      Size = 50
    end
    object Q_FORNFOR_CODI: TStringField
      DisplayWidth = 15
      FieldName = 'FOR_CODI'
      Origin = 'CURA.CPAFORN.FOR_CODI'
      Visible = False
      FixedChar = True
      Size = 15
    end
  end
  object Q_COND: TwwQuery
    CachedUpdates = True
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'SELECT '
      '* '
      'FROM CONDICAO_PAGTO')
    ValidateWithMask = True
    Left = 213
    Top = 483
    object Q_CONDDESCRICAO: TStringField
      DisplayLabel = 'Descrição'
      DisplayWidth = 57
      FieldName = 'DESCRICAO'
      Origin = 'CURA.CONDICAO_PAGTO.DESCRICAO'
      FixedChar = True
      Size = 30
    end
    object Q_CONDNUM_PARCELAS: TFloatField
      DisplayLabel = 'Número de Parcelas'
      DisplayWidth = 28
      FieldName = 'NUM_PARCELAS'
      Origin = 'CURA.CONDICAO_PAGTO.NUM_PARCELAS'
      Visible = False
    end
    object Q_CONDCOND_PGTO_ID: TAutoIncField
      FieldName = 'COND_PGTO_ID'
      Origin = 'CURA.CONDICAO_PAGTO.COND_PGTO_ID'
      Visible = False
    end
    object Q_CONDPAGAMENTO: TStringField
      FieldName = 'PAGAMENTO'
      Origin = 'CURA.CONDICAO_PAGTO.PAGAMENTO'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object Q_CONDFORA: TStringField
      FieldName = 'FORA'
      Origin = 'CURA.CONDICAO_PAGTO.FORA'
      Visible = False
      FixedChar = True
      Size = 1
    end
  end
  object Q_USU: TwwQuery
    CachedUpdates = True
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'SELECT * FROM USUARIOALMOX'
      'ORDER BY NOME')
    ValidateWithMask = True
    Left = 556
    Top = 452
    object Q_USUCH: TAutoIncField
      FieldName = 'CH'
      Origin = 'CURA.USUARIOALMOX.CH'
    end
    object Q_USUNome: TStringField
      FieldName = 'Nome'
      Origin = 'CURA.USUARIOALMOX.Nome'
      FixedChar = True
      Size = 40
    end
    object Q_USUSenha: TStringField
      FieldName = 'Senha'
      Origin = 'CURA.USUARIOALMOX.Senha'
      FixedChar = True
      Size = 40
    end
  end
  object Q_OCI: TwwQuery
    CachedUpdates = True
    BeforePost = Q_OCIBeforePost
    AfterPost = Q_OCIAfterPost
    BeforeDelete = Q_OCIBeforeDelete
    AfterDelete = Q_OCIAfterDelete
    AfterScroll = Q_OCIAfterScroll
    OnCalcFields = Q_OCICalcFields
    OnNewRecord = Q_OCINewRecord
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    DataSource = DS_OC
    RequestLive = True
    SQL.Strings = (
      'SELECT oi.PRECO_REP, OI.IOrd_ID'
      '      ,OI.Ord_ID'
      '      ,OI.Num_Ocom'
      '      ,OI.Mat_ID'
      '      ,OI.Marca_ID'
      '      ,OI.Uni_Comp_ID'
      '      ,OI.Uni_Estq_ID'
      '      ,OI.Qtde'
      '      ,OI.Qtde_Rec'
      '      ,OI.Qtde_Comp'
      '      ,OI.Qtde_Comp_Rec'
      '      ,OI.Qtde_Estq_Comp'
      '      ,OI.Preco_Unit'
      '      ,OI.Matmarca_ID'
      '      ,OI.Valor'
      '      ,OI.Conversao'
      '      ,OI.IPI'
      '      ,OI.VL_IPI'
      '      ,OI.Alterar'
      '      ,OI.NFIS'
      '      ,OI.Rec_ID'
      '      ,OI.Status'
      '      ,OI.Usu_Cancel'
      '      ,OI.Dt_Cancel'
      '      ,OI.Vl_Totitem'
      '      ,OI.Rec_Item_ID '
      
        '      ,CASE WHEN oi.MAT_DESC IS not null THEN OI.MAT_DESC ELSE M' +
        'AT.CodigoMaterial + '#39' '#39' + MAT.MAT_DESC END AS MAT_DESC'
      
        '      ,CASE WHEN OI.GENERICO IS NULL  THEN '#39'N'#39' ELSE OI.GENERICO ' +
        'END AS GENERICO'
      'FROM'#9#9'ORDEM_COMPRAITEM OI,'
      #9#9'MATERIAIS MAT'
      'WHERE'#9#9'OI.MAT_ID = MAT.MAT_ID'
      'AND OI.ORD_ID = :ORD_ID'
      'ORDER BY             OI.ORD_ID DESC')
    UpdateObject = UPD_OCI
    ValidateWithMask = True
    Left = 120
    Top = 384
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'ORD_ID'
        ParamType = ptUnknown
      end>
    object Q_OCIMAT_DESC: TStringField
      DisplayLabel = 'Material'
      DisplayWidth = 20
      FieldName = 'MAT_DESC'
      Origin = 'CURA.Ordem_CompraItem.MAT_DESC'
      FixedChar = True
      Size = 60
    end
    object Q_OCIMARCAdesc: TStringField
      DisplayLabel = 'Marca'
      DisplayWidth = 14
      FieldKind = fkLookup
      FieldName = 'MARCAdesc'
      LookupDataSet = Q_MARCX
      LookupKeyFields = 'MARCA_ID'
      LookupResultField = 'MARCA_DESC'
      KeyFields = 'MARCA_ID'
      Lookup = True
    end
    object Q_OCIEmbalagemDESC: TStringField
      DisplayLabel = 'Embalagem'
      DisplayWidth = 12
      FieldKind = fkLookup
      FieldName = 'EmbalagemDESC'
      LookupDataSet = Q_EMBX
      LookupKeyFields = 'MATMARCA_ID'
      LookupResultField = 'MATMARCA_EMBALAGEM'
      KeyFields = 'MATMARCA_ID'
      Size = 15
      Lookup = True
    end
    object Q_OCIQTDE_COMP: TFloatField
      DisplayLabel = 'Qtd.'
      DisplayWidth = 13
      FieldName = 'QTDE_COMP'
      Origin = 'CURA.ORDEM_COMPRAITEM.QTDE_COMP'
      OnChange = Q_OCIQTDE_COMPChange
      DisplayFormat = '###,###,##0.0000'
      EditFormat = '########0.0000'
    end
    object Q_OCIPRECO_UNIT: TFloatField
      DisplayLabel = 'Preço Unitário'
      DisplayWidth = 12
      FieldName = 'PRECO_UNIT'
      Origin = 'CURA.ORDEM_COMPRAITEM.PRECO_UNIT'
      OnChange = Q_OCIPRECO_UNITChange
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      currency = True
    end
    object Q_OCIVALOR: TFloatField
      DisplayLabel = 'Valor'
      DisplayWidth = 9
      FieldName = 'VALOR'
      Origin = 'CURA.ORDEM_COMPRAITEM.VALOR'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_OCIIPI: TFloatField
      DisplayLabel = 'Aliq. IPI (%)'
      DisplayWidth = 10
      FieldName = 'IPI'
      Origin = 'CURA.ORDEM_COMPRAITEM.IPI'
      OnChange = Q_OCIIPIChange
      DisplayFormat = '##0.0'
      EditFormat = '##0.0'
    end
    object Q_OCIVL_IPI: TFloatField
      DisplayLabel = 'Valor IPI'
      DisplayWidth = 9
      FieldName = 'VL_IPI'
      Origin = 'CURA.ORDEM_COMPRAITEM.VL_IPI'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_OCIQTDE_REC: TFloatField
      DisplayLabel = 'Qtd. Recebida'
      DisplayWidth = 18
      FieldName = 'QTDE_REC'
      Origin = 'CURA.ORDEM_COMPRAITEM.QTDE_REC'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '########0.00'
    end
    object Q_OCISTATUS: TStringField
      DisplayLabel = 'Status'
      DisplayWidth = 11
      FieldName = 'STATUS'
      Origin = 'CURA.ORDEM_COMPRAITEM.STATUS'
      OnGetText = Q_OCISTATUSGetText
      FixedChar = True
      Size = 1
    end
    object Q_OCIVL_TOTITEM: TFloatField
      DisplayLabel = 'Valor Total'
      DisplayWidth = 17
      FieldName = 'VL_TOTITEM'
      Origin = 'CURA.ORDEM_COMPRAITEM.VL_TOTITEM'
      DisplayFormat = '###,###,##0.0000'
      EditFormat = '###,###,##0.00'
    end
    object Q_OCICOMPARADOR: TFloatField
      DisplayLabel = '% Dif. Reposição'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'COMPARADOR'
      DisplayFormat = '###,##0.00%'
      Calculated = True
    end
    object Q_OCIds_mat: TStringField
      DisplayLabel = 'Material'
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = 'ds_mat'
      LookupDataSet = Q_MAT
      LookupKeyFields = 'MAT_ID'
      LookupResultField = 'MAT_DESC'
      KeyFields = 'MAT_ID'
      Visible = False
      Lookup = True
    end
    object Q_OCINUM_OCOM: TIntegerField
      DisplayWidth = 10
      FieldName = 'NUM_OCOM'
      Origin = 'CURA.ORDEM_COMPRAITEM.NUM_OCOM'
      Visible = False
    end
    object Q_OCIembalagem: TStringField
      DisplayLabel = 'Embalagem'
      DisplayWidth = 19
      FieldKind = fkLookup
      FieldName = 'embalagem'
      LookupDataSet = Q_EMB
      LookupKeyFields = 'MAT_ID'
      LookupResultField = 'MATMARCA_EMBALAGEM'
      KeyFields = 'MAT_ID'
      Visible = False
      Size = 40
      Lookup = True
    end
    object Q_OCIMAT_ID: TIntegerField
      FieldName = 'MAT_ID'
      Origin = 'CURA.ORDEM_COMPRAITEM.MAT_ID'
      Visible = False
      OnChange = Q_OCIMAT_IDChange
    end
    object Q_OCIQTDE: TFloatField
      FieldName = 'QTDE'
      Origin = 'CURA.ORDEM_COMPRAITEM.QTDE'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      EditFormat = '########0.00'
    end
    object Q_OCIQTDE_COMP_REC: TFloatField
      FieldName = 'QTDE_COMP_REC'
      Origin = 'CURA.ORDEM_COMPRAITEM.QTDE_COMP_REC'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      EditFormat = '########0.00'
    end
    object Q_OCIQTDE_ESTQ_COMP: TFloatField
      FieldName = 'QTDE_ESTQ_COMP'
      Origin = 'CURA.ORDEM_COMPRAITEM.QTDE_ESTQ_COMP'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      EditFormat = '########0.00'
    end
    object Q_OCICONVERSAO: TFloatField
      FieldName = 'CONVERSAO'
      Origin = 'CURA.ORDEM_COMPRAITEM.CONVERSAO'
      Visible = False
    end
    object Q_OCIALTERAR: TStringField
      FieldName = 'ALTERAR'
      Origin = 'CURA.ORDEM_COMPRAITEM.ALTERAR'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_OCINFIS: TIntegerField
      FieldName = 'NFIS'
      Origin = 'CURA.ORDEM_COMPRAITEM.NFIS'
      Visible = False
    end
    object Q_OCIREC_ID: TIntegerField
      FieldName = 'REC_ID'
      Origin = 'CURA.ORDEM_COMPRAITEM.REC_ID'
      Visible = False
    end
    object Q_OCIUSU_CANCEL: TStringField
      FieldName = 'USU_CANCEL'
      Origin = 'CURA.ORDEM_COMPRAITEM.USU_CANCEL'
      Visible = False
      FixedChar = True
    end
    object Q_OCIDT_CANCEL: TDateTimeField
      FieldName = 'DT_CANCEL'
      Origin = 'CURA.ORDEM_COMPRAITEM.DT_CANCEL'
      Visible = False
    end
    object Q_OCIORD_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'ORD_ID'
      Origin = 'CURA.ORDEM_COMPRAITEM.ORD_ID'
      Visible = False
    end
    object Q_OCIIORD_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'IORD_ID'
      Origin = 'CURA.ORDEM_COMPRAITEM.ORD_ITEM_ID'
      Visible = False
    end
    object Q_OCIunidade: TStringField
      FieldKind = fkLookup
      FieldName = 'unidade'
      LookupDataSet = Q_UNI
      LookupKeyFields = 'UNI_ID'
      LookupResultField = 'UNI_DESC'
      KeyFields = 'Uni_Comp_ID'
      Visible = False
      Size = 15
      Lookup = True
    end
    object Q_OCIMATMARCA_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'MATMARCA_ID'
      Origin = 'CURA.ORDEM_COMPRAITEM.MATMARCA_ID'
      Visible = False
      OnChange = Q_OCIMATMARCA_IDChange
    end
    object Q_OCIMARCA_ID: TIntegerField
      FieldName = 'MARCA_ID'
      Origin = 'CURA.ORDEM_COMPRAITEM.MARCA_ID'
      Visible = False
    end
    object Q_OCIUni_Comp_ID: TIntegerField
      FieldName = 'Uni_Comp_ID'
      Origin = 'CURA.ORDEM_COMPRAITEM.Uni_Comp_ID'
      Visible = False
    end
    object Q_OCIUni_Estq_ID: TIntegerField
      FieldName = 'Uni_Estq_ID'
      Origin = 'CURA.ORDEM_COMPRAITEM.Uni_Estq_ID'
      Visible = False
    end
    object Q_OCIGENERICO: TStringField
      FieldName = 'GENERICO'
      Origin = 'CURA.Ordem_CompraItem.GENERICO'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_OCIPRECO_REP: TFloatField
      FieldName = 'PRECO_REP'
      Visible = False
    end
    object Q_OCICOR: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'COR'
      Visible = False
      Calculated = True
    end
  end
  object DS_OCI: TwwDataSource
    DataSet = Q_OCI
    OnStateChange = DS_OCIStateChange
    OnDataChange = DS_OCIDataChange
    Left = 295
    Top = 417
  end
  object UPD_OCI: TUpdateSQL
    ModifySQL.Strings = (
      'update ORDEM_COMPRAITEM'
      'set'
      '  Ord_ID = :Ord_ID,'
      '  Num_Ocom = :Num_Ocom,'
      '  Mat_ID = :Mat_ID,'
      '  Marca_ID = :Marca_ID,'
      '  Uni_Comp_ID = :Uni_Comp_ID,'
      '  Uni_Estq_ID = :Uni_Estq_ID,'
      '  Qtde = :Qtde,'
      '  Qtde_Rec = :Qtde_Rec,'
      '  Qtde_Comp = :Qtde_Comp,'
      '  Qtde_Comp_Rec = :Qtde_Comp_Rec,'
      '  Qtde_Estq_Comp = :Qtde_Estq_Comp,'
      '  Preco_Unit = :Preco_Unit,'
      '  Matmarca_ID = :Matmarca_ID,'
      '  Valor = :Valor,'
      '  Conversao = :Conversao,'
      '  IPI = :IPI,'
      '  VL_IPI = :VL_IPI,'
      '  Alterar = :Alterar,'
      '  NFIS = :NFIS,'
      '  Rec_ID = :Rec_ID,'
      '  Status = :Status,'
      '  Usu_Cancel = :Usu_Cancel,'
      '  Dt_Cancel = :Dt_Cancel,'
      '  Vl_Totitem = :Vl_Totitem,'
      '  GENERICO = :GENERICO,'
      '  MAT_DESC = :MAT_DESC'
      'where'
      '  IOrd_ID = :OLD_IOrd_ID')
    InsertSQL.Strings = (
      'insert into ORDEM_COMPRAITEM'
      
        '  (Ord_ID, Num_Ocom, Mat_ID, Marca_ID, Uni_Comp_ID, Uni_Estq_ID,' +
        ' Qtde, '
      
        '   Qtde_Rec, Qtde_Comp, Qtde_Comp_Rec, Qtde_Estq_Comp, Preco_Uni' +
        't, '
      'Matmarca_ID, '
      
        '   Valor, Conversao, IPI, VL_IPI, Alterar, NFIS, Rec_ID, Status,' +
        ' Usu_Cancel, '
      '   Dt_Cancel, Vl_Totitem, GENERICO, MAT_DESC)'
      'values'
      
        '  (:Ord_ID, :Num_Ocom, :Mat_ID, :Marca_ID, :Uni_Comp_ID, :Uni_Es' +
        'tq_ID, '
      
        '   :Qtde, :Qtde_Rec, :Qtde_Comp, :Qtde_Comp_Rec, :Qtde_Estq_Comp' +
        ', :Preco_Unit, '
      
        '   :Matmarca_ID, :Valor, :Conversao, :IPI, :VL_IPI, :Alterar, :N' +
        'FIS, :Rec_ID, '
      
        '   :Status, :Usu_Cancel, :Dt_Cancel, :Vl_Totitem, :GENERICO, :MA' +
        'T_DESC)')
    DeleteSQL.Strings = (
      'delete from ORDEM_COMPRAITEM'
      'where'
      '  IOrd_ID = :OLD_IOrd_ID')
    Left = 118
    Top = 441
  end
  object PESQ_OC: TwwSearchDialog
    Selected.Strings = (
      'ORD_ID'#9'10'#9'O.C.'#9'F')
    GridTitleAlignment = taLeftJustify
    GridColor = clWhite
    GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
    SearchTable = Q_PSQOC
    Caption = 'Pesquisa de Ordem de Compra'
    MaxWidth = 0
    MaxHeight = 209
    CharCase = ecNormal
    Left = 548
    Top = 339
  end
  object Q_PSQOC: TwwQuery
    CachedUpdates = True
    BeforePost = Q_OCBeforePost
    AfterPost = Q_OCAfterPost
    BeforeDelete = Q_OCBeforeDelete
    AfterDelete = Q_OCAfterDelete
    OnNewRecord = Q_OCNewRecord
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    RequestLive = True
    SQL.Strings = (
      'SELECT ORD_ID FROM ORDEM_COMPRA'
      'ORDER BY ORD_ID ')
    ValidateWithMask = True
    Left = 695
    Top = 234
    object Q_PSQOCORD_ID: TAutoIncField
      DisplayLabel = 'O.C.'
      DisplayWidth = 10
      FieldName = 'ORD_ID'
      Origin = 'CURA.ORDEM_COMPRA.ORD_ID'
    end
  end
  object PESQ_OCI: TwwSearchDialog
    Selected.Strings = (
      'ds_mat'#9'60'#9'Material'#9'F')
    GridTitleAlignment = taLeftJustify
    GridColor = clWhite
    GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
    SearchTable = Q_PSQOCI
    Caption = 'Pesquisa de Itens'
    MaxWidth = 0
    MaxHeight = 209
    CharCase = ecNormal
    Left = 348
    Top = 438
  end
  object Q_PSQOCI: TwwQuery
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    DataSource = DS_OC
    SQL.Strings = (
      'SELECT'#9#9'OI.MAT_ID'
      'FROM'#9#9'ORDEM_COMPRAITEM OI,'
      #9#9'MATERIAIS MAT'
      'WHERE'#9#9'OI.MAT_ID = MAT.MAT_ID'
      'AND'#9#9'OI.ORD_ID = :ORD_ID'
      'ORDER BY'#9'MAT.MAT_DESC')
    ValidateWithMask = True
    Left = 524
    Top = 356
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'ORD_ID'
        ParamType = ptUnknown
      end>
    object Q_PSQOCIds_mat: TStringField
      DisplayLabel = 'Material'
      DisplayWidth = 60
      FieldKind = fkLookup
      FieldName = 'ds_mat'
      LookupDataSet = Q_MAT
      LookupKeyFields = 'MAT_ID'
      LookupResultField = 'MAT_DESC'
      KeyFields = 'MAT_ID'
      Size = 60
      Lookup = True
    end
    object Q_PSQOCIMAT_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'MAT_ID'
      Origin = 'CURA.ORDEM_COMPRAITEM.MAT_ID'
      Visible = False
    end
  end
  object DS_FORN: TDataSource
    DataSet = Q_FORN
    Left = 340
    Top = 369
  end
  object DS_MAT: TDataSource
    DataSet = Q_MAT
    Left = 414
    Top = 349
  end
  object Q_MAT: TwwQuery
    BeforePost = Q_OCBeforePost
    AfterPost = Q_OCAfterPost
    BeforeDelete = Q_OCBeforeDelete
    AfterDelete = Q_OCAfterDelete
    OnNewRecord = Q_OCNewRecord
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'SELECT '#9'A.MAT_ID ,                '
      #9'A.MAT_DESC               '
      '            '
      ''
      'FROM '#9'MATERIAIS A'
      'WHERE GENERICO NOT IN ('#39'S'#39')'
      'AND MAT_ATIVO = '#39'S'#39
      '                '
      'ORDER BY A.MAT_DESC'
      '               '
      '')
    ValidateWithMask = True
    Left = 48
    Top = 344
    object Q_MATMAT_DESC: TStringField
      DisplayWidth = 60
      FieldName = 'MAT_DESC'
      Origin = 'CURA.MATERIAIS.MAT_DESC'
      FixedChar = True
      Size = 60
    end
    object Q_MATMAT_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'MAT_ID'
      Visible = False
    end
  end
  object DS_UNI: TwwDataSource
    Left = 532
    Top = 380
  end
  object Q_UNI: TwwQuery
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'SELECT'#9'UNI_ID, UNI_SIGLA, UNI_DESC'
      'FROM UNIDADES'
      'ORDER BY UNI_DESC'
      ' ')
    ValidateWithMask = True
    Left = 488
    Top = 451
    object Q_UNIUNI_ID: TAutoIncField
      FieldName = 'UNI_ID'
      Origin = 'CURA.UNIDADES.UNI_ID'
    end
    object Q_UNIUNI_SIGLA: TStringField
      FieldName = 'UNI_SIGLA'
      Origin = 'CURA.UNIDADES.UNI_SIGLA'
      FixedChar = True
      Size = 2
    end
    object Q_UNIUNI_DESC: TStringField
      FieldName = 'UNI_DESC'
      Origin = 'CURA.UNIDADES.UNI_DESC'
      FixedChar = True
      Size = 10
    end
  end
  object Q_MARC: TwwQuery
    BeforePost = Q_OCBeforePost
    OnNewRecord = Q_OCNewRecord
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    DataSource = DS_OCI
    SQL.Strings = (
      'SELECT A.MAT_ID, A.MARCA_ID, A.UNI_ID , B.MARCA_DESC'
      'FROM MATERIAL_MARCA A,'
      '           MARCAS B'
      'WHERE A.MARCA_ID = B.MARCA_ID'
      'AND  A.MAT_ID = :MAT_ID'
      
        'GROUP BY  A.MARCA_ID,B.MARCA_DESC,A.MAT_ID,A.UNI_ID             ' +
        '  ')
    ValidateWithMask = True
    Left = 711
    Top = 376
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'MAT_ID'
        ParamType = ptUnknown
      end>
    object Q_MARCMARCA_DESC: TStringField
      DisplayWidth = 20
      FieldName = 'MARCA_DESC'
      Origin = 'CURA.MARCAS.MARCA_DESC'
      FixedChar = True
    end
    object Q_MARCMAT_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'MAT_ID'
      Origin = 'CURA.MATERIAL_MARCA.MAT_ID'
      Visible = False
    end
    object Q_MARCMARCA_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'MARCA_ID'
      Origin = 'CURA.MATERIAL_MARCA.MARCA_ID'
      Visible = False
    end
    object Q_MARCUNI_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'UNI_ID'
      Origin = 'CURA.MATERIAL_MARCA.UNI_ID'
      Visible = False
    end
  end
  object Q_EMB: TwwQuery
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    DataSource = DS_OCI
    SQL.Strings = (
      'SELECT * FROM MATERIAL_MARCA '
      'WHERE MAT_ID = :MAT_ID'
      'AND MARCA_ID = :MARCA_ID'
      'ORDER BY MATMARCA_EMBALAGEM')
    ValidateWithMask = True
    Left = 396
    Top = 305
    ParamData = <
      item
        DataType = ftInteger
        Name = 'MAT_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'MARCA_ID'
        ParamType = ptUnknown
      end>
    object Q_EMBMATMARCA_EMBALAGEM: TStringField
      DisplayWidth = 15
      FieldName = 'MATMARCA_EMBALAGEM'
      Origin = 'CURA.MATERIAL_MARCA.MATMARCA_EMBALAGEM'
      FixedChar = True
      Size = 15
    end
    object Q_EMBMATMARCA_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'MATMARCA_ID'
      Origin = 'CURA.MATERIAL_MARCA.MATMARCA_ID'
      Visible = False
    end
    object Q_EMBMAT_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'MAT_ID'
      Origin = 'CURA.MATERIAL_MARCA.MAT_ID'
      Visible = False
    end
    object Q_EMBMARCA_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'MARCA_ID'
      Origin = 'CURA.MATERIAL_MARCA.MARCA_ID'
      Visible = False
    end
    object Q_EMBUNI_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'UNI_ID'
      Origin = 'CURA.MATERIAL_MARCA.UNI_ID'
      Visible = False
    end
    object Q_EMBMATMARCA_CONVERSAO: TFloatField
      DisplayWidth = 10
      FieldName = 'MATMARCA_CONVERSAO'
      Origin = 'CURA.MATERIAL_MARCA.MATMARCA_CONVERSAO'
      Visible = False
    end
    object Q_EMBMATMARCA_DT_ULTCOMP: TDateTimeField
      DisplayWidth = 18
      FieldName = 'MATMARCA_DT_ULTCOMP'
      Origin = 'CURA.MATERIAL_MARCA.MATMARCA_DT_ULTCOMP'
      Visible = False
    end
    object Q_EMBMATMARCA_PRE_ULTCOMP: TFloatField
      DisplayWidth = 10
      FieldName = 'MATMARCA_PRE_ULTCOMP'
      Origin = 'CURA.MATERIAL_MARCA.MATMARCA_PRE_ULTCOMP'
      Visible = False
    end
    object Q_EMBMATMARCA_DT_ULTCOTA: TDateTimeField
      DisplayWidth = 18
      FieldName = 'MATMARCA_DT_ULTCOTA'
      Origin = 'CURA.MATERIAL_MARCA.MATMARCA_DT_ULTCOTA'
      Visible = False
    end
    object Q_EMBMATMARCA_PRE_ULTCOTA: TFloatField
      DisplayWidth = 10
      FieldName = 'MATMARCA_PRE_ULTCOTA'
      Origin = 'CURA.MATERIAL_MARCA.MATMARCA_PRE_ULTCOTA'
      Visible = False
    end
  end
  object DS_MARC: TwwDataSource
    DataSet = Q_MARC
    Left = 636
    Top = 332
  end
  object Q_EMBX: TwwQuery
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'SELECT * FROM MATERIAL_MARCA ')
    ValidateWithMask = True
    Left = 468
    Top = 321
    object StringField1: TStringField
      DisplayWidth = 15
      FieldName = 'MATMARCA_EMBALAGEM'
      Origin = 'CURA.MATERIAL_MARCA.MATMARCA_EMBALAGEM'
      FixedChar = True
      Size = 15
    end
    object AutoIncField1: TAutoIncField
      DisplayWidth = 10
      FieldName = 'MATMARCA_ID'
      Origin = 'CURA.MATERIAL_MARCA.MATMARCA_ID'
      Visible = False
    end
    object IntegerField1: TIntegerField
      DisplayWidth = 10
      FieldName = 'MAT_ID'
      Origin = 'CURA.MATERIAL_MARCA.MAT_ID'
      Visible = False
    end
    object IntegerField2: TIntegerField
      DisplayWidth = 10
      FieldName = 'MARCA_ID'
      Origin = 'CURA.MATERIAL_MARCA.MARCA_ID'
      Visible = False
    end
    object IntegerField3: TIntegerField
      DisplayWidth = 10
      FieldName = 'UNI_ID'
      Origin = 'CURA.MATERIAL_MARCA.UNI_ID'
      Visible = False
    end
    object FloatField1: TFloatField
      DisplayWidth = 10
      FieldName = 'MATMARCA_CONVERSAO'
      Origin = 'CURA.MATERIAL_MARCA.MATMARCA_CONVERSAO'
      Visible = False
    end
    object DateTimeField1: TDateTimeField
      DisplayWidth = 18
      FieldName = 'MATMARCA_DT_ULTCOMP'
      Origin = 'CURA.MATERIAL_MARCA.MATMARCA_DT_ULTCOMP'
      Visible = False
    end
    object FloatField2: TFloatField
      DisplayWidth = 10
      FieldName = 'MATMARCA_PRE_ULTCOMP'
      Origin = 'CURA.MATERIAL_MARCA.MATMARCA_PRE_ULTCOMP'
      Visible = False
    end
    object DateTimeField2: TDateTimeField
      DisplayWidth = 18
      FieldName = 'MATMARCA_DT_ULTCOTA'
      Origin = 'CURA.MATERIAL_MARCA.MATMARCA_DT_ULTCOTA'
      Visible = False
    end
    object FloatField3: TFloatField
      DisplayWidth = 10
      FieldName = 'MATMARCA_PRE_ULTCOTA'
      Origin = 'CURA.MATERIAL_MARCA.MATMARCA_PRE_ULTCOTA'
      Visible = False
    end
  end
  object Q_MARCX: TwwQuery
    BeforePost = Q_OCBeforePost
    OnNewRecord = Q_OCNewRecord
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'SELECT A.MAT_ID, A.MARCA_ID, A.UNI_ID , B.MARCA_DESC'
      'FROM MATERIAL_MARCA A,'
      '           MARCAS B'
      'WHERE A.MARCA_ID = B.MARCA_ID'
      
        'GROUP BY  A.MARCA_ID,B.MARCA_DESC,A.MAT_ID,A.UNI_ID             ' +
        '  ')
    ValidateWithMask = True
    Left = 671
    Top = 280
    object StringField2: TStringField
      DisplayWidth = 20
      FieldName = 'MARCA_DESC'
      Origin = 'CURA.MARCAS.MARCA_DESC'
      FixedChar = True
    end
    object IntegerField4: TIntegerField
      DisplayWidth = 10
      FieldName = 'MAT_ID'
      Origin = 'CURA.MATERIAL_MARCA.MAT_ID'
      Visible = False
    end
    object IntegerField5: TIntegerField
      DisplayWidth = 10
      FieldName = 'MARCA_ID'
      Origin = 'CURA.MATERIAL_MARCA.MARCA_ID'
      Visible = False
    end
    object IntegerField6: TIntegerField
      DisplayWidth = 10
      FieldName = 'UNI_ID'
      Origin = 'CURA.MATERIAL_MARCA.UNI_ID'
      Visible = False
    end
  end
  object dsMyNavPanel: TDataSource
    DataSet = Q_OC
    Left = 592
    Top = 328
  end
  object ImageList1: TImageList
    Height = 24
    Width = 24
    Left = 212
    Top = 350
    Bitmap = {
      494C01010E001300040018001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      00000000000036000000280000006000000078000000010020000000000000B4
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005A5A5A00393939008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008F8F8F0084848400848484008484
      8400848484008484840084848400848484008F8F8F0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000006B737B00426384004A84B500295A7B00424A
      4A00848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400A1A1A100CACACA00E0E0E000E0EAEA00EAEA
      EA00EAEAEA00EAEAEA00E0EAE000D4D4D400ABABAB00A19898008F8484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006B737B0042638C005A94C6006394CE00528CBD00316B9400295A
      7B00424A4A008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000003131310058606000EAEAEA00F4F4F400B6C0C000A1AB
      AB00B6B6B600A1A1A100C0CAC000FFFFFF00B6B6B6006058580031313100A1A1
      AB00000000000000000000000000000000000000000000000000000000006B73
      7B00426B8C005A94C6006394CE006B9CD6006394CE00528CBD00316B9400316B
      9400295A7B00424A4A0084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000383838003131310050505000EAEAEA00F4F4F400CACACA00C0B6
      B600CAC0C000B6B6B600CACACA00FFFFFF00B6B6C00050504800313131003838
      3800A1A1A100000000000000000000000000000000006B7384004A6B8C005A8C
      C6006394CE00639CD6006B9CCE005A94C600639CD600528CBD00316B9400316B
      9400316B9400295A7B00424A4A00848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005050
      50004848480031313100313131006A6A6A00F4F4F400EAF4F400D4D4D400CAC0
      CA00D4CACA00CAC0C000D4D4D400FFFFFF00C0CACA00606A6000313131003131
      31003131310050505000000000000000000000000000294A63006394CE006394
      CE005A8CC600528CBD00316B9400528CB5006B9CD600528CBD00316B9400316B
      9400316B9400316B9400295A7B00394A4A008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000505050003131
      31003131310031313100313131006A737300D4E0E000C0CACA007B8484006A73
      730073737300A1A1A100848F9800EAEAEA00B6C0C0006A6A6A00313131003131
      31003131310031313100505048000000000000000000294A63006394CE002152
      8400316B9400316B940008396B00396BA5006394CE00528CBD00427BA5006B9C
      CE00316B9400316B9400316B9400295A7B00394A4A0084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000060606000313131004038
      38006A606000383838003131310050505000848484009898980098A1A10098A1
      A100A1A1A100A1A1A1008F9898008F8F8F007B7B840050504800313131003838
      4000586A6A0031383800313131005050500000000000294A63006394CE001042
      7300104A7300215A8C004A84B500639CD6007BADE70084BDEF0094ADC6007384
      94005A94BD00316B9400316B9400316B9400295A7B00394A4A00848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000038383800484848006A60
      60006A6A6A004848480048484800313131003131310031313100313131003131
      3100313131003131310031313100313131003131310031313100484848003831
      4000A1A1A10038314000383140003131310000000000294A63006394CE002152
      84004A84B500639CD6007BADE7008CBDEF009CB5D600B5B5BD00CECECE00847B
      8400A5B5C6004A84AD00316B9400316B9400316B9400295A7B00394A4A008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000383838006A606A007B84
      84006A7B7B007384840073847B00737B7B007B8484007B7B7B007B8484007373
      7300606A60006A7B730073847B00737B7B007B848400737B8400736A8400A1A1
      A10073FF600073848400504050002323230000000000294A63006394CE00639C
      D6007BADE7008CBDEF009CB5D600B5B5BD00CEC6CE00D6CED600D6D6D600948C
      9400B5B5B500949CAD00528CB500316B9400316B9400316B9400295A7B00394A
      4A00848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003838380084848400ABAB
      AB00ABA1AB00989898007B7373006A6060006A5058006A5050006A5050006A48
      50006A405000604850006050480073505000734858007B606A008F608F007384
      8400A1A1A100A1A1A10098849800313131000000000031526B007BADE7008CBD
      EF009CBDD600B5BDC600CECECE00DEDEDE00DED6DE00DED6DE00DED6DE009494
      9400BDB5BD00ADADAD007B8C94005A8CBD00316B9400316B9400316B9400295A
      7B00394A4A007B847B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004848480098989800CAD4
      D400988F8F0073505800845058008F6A6A008F606000AB737300B6737300B673
      7B00AB737B00AB737B00AB737300B67373008F586000986A6A008F5060006048
      4800607B5800ABCAAB00A1A1A100313131000000000042637B004A7BB500949C
      A500E7DEE700E7E7E700E7E7E700E7DEE700EFEFEF00DED6DE00ADA5AD00B5AD
      B500BDBDBD00B5ADB5008C848C00ADBDC6004A84AD00316B9400316B9400316B
      9400295A7B00424A4A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000058585800A1A1A100C0CA
      CA0073606A006A313800AB606A00986A6A008F6060008F606000986060009860
      60008460600084606000986060008F6060008F6A6000986A6A00A16A6A007331
      400098608400E0CAE00098989800484848000000000094949C00396394009494
      9C00F7FFF700EFEFEF00E7EFEF00CEDED600ADADAD008C8C8C00BDB5BD00DED6
      DE00B5ADB500BDB5BD0094949400C6BDC6008494A500528CB500316B9400316B
      9400316B94002142520000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000073737300A1A1A100C0C0
      C0007B606A00603138006A313800401C1C003131310031313100313131003131
      31003131310031313100313131003131310031313100401C1C006A3138006031
      3800846A7300B6B6C000989898006A6A6A000000000000000000A5ADB5009C9C
      9C00F7FFF700BDEFD60073CE9C0039845200A59CA500DED6DE00C6BDC6009C9C
      9C00B5B5B500DED6DE0094949400C6C6C600A59CA500848C9C005A8CBD00316B
      9400316B94002142520000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000ABABAB00A1A1A100C0C0
      C000987B84002A0B110031313100311616005848480060484800604848005848
      48005848480060484800604848006048480058504800381C1C00232323003111
      11008F848400C0C0C000A1A1A10098989800000000000000000000000000527B
      52006BC6940039A55A00297331005A6B5A00CE8CCE0094849400ADA5AD00D6CE
      D600D6CED600BDB5BD00B5ADB500C6C6C600ADA5AD0084848400B5BDCE004A84
      AD00316B94002142520000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A1A1A100CAC0
      C000AB8F98002A11110031313100A18F8400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A18F8F00313131003111
      1100A18F8F00C0C0C000A1A1A10000000000000000000000000000000000396B
      3900216B2900525A5200AD6BAD00C66BC6009C319C00947B8C00DECECE00BDB5
      BD009C949C00BDB5BD00DED6DE00BDBDBD00B5ADB50094949400CECECE00314A
      6B004A84AD002142520000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000ABABAB0098A1
      A100A1A1A100847B7B006A5858007B737300FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F4FFFF007B737300604850008473
      7300A1ABAB0098A1A100ABABAB00000000000000000000000000000000000000
      000094949400942994009C319C007B427300AD947B00EFBD7300D6945200A59C
      A500DED6DE00CEC6CE00A5A5A500ADA5AD00DED6DE0094949400D6CED6001839
      5200215A8C0042637B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E0EA
      EA00E0E0E000EAEAEA00EAE0E000CACACA00E0E0E000F4FFFF00F4FFFF00F4FF
      FF00FFFFFF00FFFFFF00FFFFFF00EAF4F400CAD4D400CACACA00E0E0E000F4EA
      EA00EAE0E000E0EAE00000000000000000000000000000000000000000000000
      000000000000734A73007B394200EFAD6B00F7944200D64A31009463630073E7
      E70084A5A500A59CA500CEC6CE00DED6DE00C6BDC600A5A5A500D6CED6004A63
      7B004A6B8C00848C940000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D4E0D400D4D4D400F4F4F400FFFFFF00FFFF
      FF00C0C0C000A1A1A100A1A1A100A1A1A100A1A1A100C0CACA00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C4A4A00CE392900945A63005AC6CE0042F7FF005ADE
      F7007B949C00D6D6D600C6BDC60094949400ADADAD00DED6DE00CEC6CE008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CAC0C000D4D4D400F4FFFF00FFFFFF00EAEA
      EA00A1A1A100A1A1A100C0B6B600B6B6B600C0C0C000CACACA00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000949494006BC6E7005ADEF7006B9CB5007B9C
      940073BD940052AD7B00948C9400DED6DE00D6CED600ADADAD00ADADAD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B6B6B600C0C0C000F4F4F400F4F4F400D4D4
      D400A1A1A100A1A1A100FFFFFF00FFFFFF00EAEAEA00C0C0C000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000738494004A6352006BB584004ABD
      7300299439004A734A00C694C600A58CA500ADA5AD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B6B6B600C0C0C000F4F4F400F4F4F400C0C0
      C000A1A1A100D4D4D400FFFFFF00E0E0E000C0C0C00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005A7B5A00218429004A6B
      4A00A57BA500CE73CE00AD42AD008C638C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000ABABAB00A1A1A100CACACA00CACACA00A1A1
      A100A1A1A100EAEAEA00E0E0E000C0C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000949494008429
      8400AD42AD007B297B0094849400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B6B6B60098989800A1A1A100A1A1A100A1A1
      A100ABABAB00C0C0C000C0C0C000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000073BD73002973
      290021632100216B2100216B2100216B2100216B2100216B2100216B21002163
      210021632100216B210021632100216B210021632100216321002163210073BD
      7300000000000000000000000000000000000000000000000000FFAD6B00B563
      18008C521000A55A1800A55A1800A55A1800A55A1800A55A1800A55A18009C52
      10009C521000A55A18009C521000A55A18009C5210008C5210009C521000FFAD
      6B00000000000000000000000000000000000000000000000000FFAD6B00B563
      18008C521000A55A1800A55A1800A55A1800A55A1800A55A1800A55A18009C52
      10009C521000A55A18009C521000A55A18009C5210008C5210009C521000FFAD
      6B0000000000000000000000000000000000000000000000000073BD73002973
      290021632100216B2100216B2100216B2100216B2100216B2100216B21002163
      210021632100216B210021632100216B210021632100216321002163210073BD
      7300000000000000000000000000000000000000000000000000318431003184
      3100318C3100319C3100319C3100319C3100319C3100319C3100319C3100318C
      3100318C3100318C3100318C31003184310029842900297B290029732900216B
      2100000000000000000000000000000000000000000000000000CE6B1800CE6B
      1800D6731800DE732100DE732100DE732100DE732100DE732100DE732100D673
      1800DE732100D6731800D6731800CE6B1800BD6B1800B5631800AD5A1800A55A
      1800000000000000000000000000000000000000000000000000CE6B1800CE6B
      1800D6731800DE732100DE732100DE732100DE732100DE732100DE732100D673
      1800DE732100D6731800D6731800CE6B1800BD6B1800B5631800AD5A1800A55A
      1800000000000000000000000000000000000000000000000000318431003184
      3100318C3100319C3100319C3100319C3100319C3100319C3100319C3100318C
      3100318C3100318C3100318C31003184310029842900297B290029732900216B
      21000000000000000000000000000000000000000000000000002984290039A5
      390039A539004AAD4A004AAD4A004AAD4A004AAD4A004AAD4A0039A5390039A5
      390039A5390039A5390039A5390039A53900319C310031843100298429002163
      2100000000000000000000000000000000000000000000000000BD6B1800EF7B
      2100EF842900F7843100F7843100F7843100F7843100F7843100EF7B2900EF84
      2900EF842900EF7B2900EF7B2100EF7B2100DE732100CE6B1800BD6B18008C52
      1000000000000000000000000000000000000000000000000000BD6B1800EF7B
      2100EF842900F7843100F7843100F7843100F7843100F7843100EF7B2900EF84
      2900EF842900EF7B2900EF7B2100EF7B2100DE732100CE6B1800BD6B18008C52
      10000000000000000000000000000000000000000000000000002984290039A5
      390039A539004AAD4A004AAD4A004AAD4A004AAD4A004AAD4A0039A5390039A5
      390039A5390039A5390039A5390039A53900319C310031843100298429002163
      2100000000000000000000000000000000000000000000000000318C310039A5
      390039A5390052AD520052AD52005AB55A0052AD520052AD52004AAD4A0039A5
      390039A5390039A5390039A5390039A53900318C3100319C3100298429002163
      2100000000000000000000000000000000000000000000000000D6731800EF7B
      2900EF842900F78C3900F78C3900F79C4A00F78C3900F78C3900F78C3900EF84
      2900EF842900EF7B2900EF7B2900EF7B2100D6731800DE732100BD6B18008C52
      1000000000000000000000000000000000000000000000000000D6731800EF7B
      2900EF842900F78C3900F78C3900F79C4A00F78C3900F78C3900F78C3900EF84
      2900EF842900EF7B2900EF7B2900EF7B2100D6731800DE732100BD6B18008C52
      1000000000000000000000000000000000000000000000000000318C310039A5
      390039A5390052AD520052AD52005AB55A0052AD520052AD52004AAD4A0039A5
      390039A5390039A5390039A5390039A53900318C3100319C3100298429002163
      2100000000000000000000000000000000000000000000000000318C310039A5
      39004AAD4A005AB55A005AB55A005AB55A0052AD52004AAD4A004AAD4A008CCE
      8C00EFF7EF00EFF7EF0039A5390039A5390039A53900319C3100318431002163
      2100000000000000000000000000000000000000000000000000DE732100EF84
      2900F78C3900FFBD8400FFBD8400F79C4A00F78C3900F78C3900F78C3900F784
      3100FFBD8400FFF7DE00FFF7DE00EF7B2900EF7B2100DE732100CE6B18008C52
      1000000000000000000000000000000000000000000000000000DE732100EF84
      2900F78C3900F79C4A00F79C4A00FFF7DE00FFF7DE00FFBD8400F78C3900F784
      3100EF842900EF7B2900EF7B2900FFBD8400FFBD8400DE732100CE6B18008C52
      1000000000000000000000000000000000000000000000000000318C310039A5
      39004AAD4A005AB55A005AB55A00EFF7EF00EFF7EF008CCE8C004AAD4A004AAD
      4A0039A5390039A5390039A5390039A5390039A53900319C3100318431002163
      210000000000000000000000000000000000000000000000000039A539004AAD
      4A005AB55A005AB55A005AB55A005AB55A005AB55A0052AD52008CCE8C00EFF7
      EF00FFFFFF00EFF7EF0039A5390039A53900319C310039A5390031843100216B
      2100000000000000000000000000000000000000000000000000EF7B2100F78C
      3900F79C4A00FFFFFF00FFBD8400F79C4A00F79C4A00F78C3900F78C3900FFBD
      8400FFF7DE00FFFFFF00FFF7DE00EF7B2100DE732100EF7B2100CE6B1800A55A
      1800000000000000000000000000000000000000000000000000EF7B2100F78C
      3900F79C4A00F79C4A00F79C4A00FFF7DE00FFFFFF00FFF7DE00FFBD8400F784
      3100EF842900EF842900EF7B2900FFBD8400FFFFFF00EF7B2100CE6B1800A55A
      180000000000000000000000000000000000000000000000000039A539004AAD
      4A005AB55A005AB55A005AB55A00EFF7EF00FFFFFF00EFF7EF008CCE8C004AAD
      4A0039A5390039A5390039A5390039A53900319C310039A5390031843100216B
      210000000000000000000000000000000000000000000000000039A5390052AD
      52005AB55A005AB55A005AB55A005AB55A005AB55A008CCE8C00EFF7EF00FFFF
      FF00FFFFFF00EFF7EF0039A5390039A5390039A5390039A53900318C3100216B
      2100000000000000000000000000000000000000000000000000EF7B2100F78C
      3900F79C5200FFFFFF00FFBD8400F79C4A00F79C4A00F79C4A00FFBD8400FFF7
      DE00FFFFFF00FFFFFF00FFF7DE00EF7B2100EF7B2100EF7B2100D6731800A55A
      1800000000000000000000000000000000000000000000000000EF7B2100F78C
      3900F79C5200F79C5200F79C5200FFF7DE00FFFFFF00FFFFFF00FFF7DE00FFBD
      8400F7843100EF842900EF7B2900FFBD8400FFFFFF00EF7B2100D6731800A55A
      180000000000000000000000000000000000000000000000000039A5390052AD
      52005AB55A005AB55A005AB55A00EFF7EF00FFFFFF00FFFFFF00EFF7EF008CCE
      8C004AAD4A0039A5390039A5390039A5390039A5390039A53900318C3100216B
      210000000000000000000000000000000000000000000000000039A539005AB5
      5A005AB55A005AB55A005AB55A005AB55A008CCE8C00EFF7EF00FFFFFF00FFFF
      FF00FFFFFF00EFF7EF0039A5390039A53900319C310039A53900318C31002973
      2900000000000000000000000000000000000000000000000000EF7B2900F79C
      5200F79C5200FFFFFF00FFBD8400F79C5200F79C4A00FFBD8400FFF7DE00FFFF
      FF00FFFFFF00FFFFFF00FFF7DE00EF7B2100DE732100EF7B2900DE732100AD5A
      1800000000000000000000000000000000000000000000000000EF7B2900F79C
      5200F79C5200F79C5200F79C5200FFF7DE00FFFFFF00FFFFFF00FFFFFF00FFF7
      DE00FFBD8400EF842900EF7B2900FFBD8400FFFFFF00EF7B2900DE732100AD5A
      180000000000000000000000000000000000000000000000000039A539005AB5
      5A005AB55A005AB55A005AB55A00EFF7EF00FFFFFF00FFFFFF00FFFFFF00EFF7
      EF008CCE8C0039A5390039A5390039A53900319C310039A53900318C31002973
      29000000000000000000000000000000000000000000000000004AAD4A0063B5
      63005AB55A0063B563005AB55A008CCE8C00EFF7EF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00EFF7EF0039A5390039A5390039A5390039A53900318C3100216B
      2100000000000000000000000000000000000000000000000000F7843100F7A5
      5A00F79C5200FFFFFF00FFBD8400F79C5200FFBD8400FFF7DE00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF7DE00EF7B2100EF7B2900EF842900DE732100A55A
      1800000000000000000000000000000000000000000000000000F7843100F7A5
      5A00F79C5200F7A55A00F79C5200FFF7DE00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFF7DE00FFBD8400EF7B2900FFBD8400FFFFFF00EF842900DE732100A55A
      18000000000000000000000000000000000000000000000000004AAD4A0063B5
      63005AB55A0063B563005AB55A00EFF7EF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00EFF7EF008CCE8C0039A5390039A5390039A5390039A53900318C3100216B
      21000000000000000000000000000000000000000000000000005AB55A005AB5
      5A0063B5630063B563008CCE8C00EFF7EF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00EFF7EF0039A5390039A5390039A5390039A5390039A539002973
      2900000000000000000000000000000000000000000000000000F79C4A00F79C
      5200F7A55A00FFFFFF00FFBD8400FFBD8400FFF7DE00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF7DE00EF842900EF7B2900EF7B2900EF7B2100AD5A
      1800000000000000000000000000000000000000000000000000F79C4A00F79C
      5200F7A55A00F7A55A00F7A55A00FFF7DE00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFF7DE00FFBD8400FFBD8400FFFFFF00EF7B2900EF7B2100AD5A
      18000000000000000000000000000000000000000000000000005AB55A005AB5
      5A0063B5630063B5630063B56300EFF7EF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00EFF7EF008CCE8C0039A5390039A5390039A5390039A539002973
      290000000000000000000000000000000000000000000000000052AD52006BBD
      6B0063B5630063B563005AB55A008CCE8C00EFF7EF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00EFF7EF0039A5390039A53900318C310039A5390039A539002973
      2900000000000000000000000000000000000000000000000000F78C3900F7A5
      5A00F7A55A00FFFFFF00FFBD8400F79C4A00FFBD8400FFF7DE00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF7DE00EF7B2900DE732100EF7B2900EF7B2100AD5A
      1800000000000000000000000000000000000000000000000000F78C3900F7A5
      5A00F7A55A00F7A55A00F79C5200FFF7DE00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFF7DE00FFBD8400EF7B2900FFBD8400FFFFFF00EF7B2900EF7B2100AD5A
      180000000000000000000000000000000000000000000000000052AD52006BBD
      6B0063B5630063B563005AB55A00EFF7EF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00EFF7EF008CCE8C0039A5390039A53900318C310039A5390039A539002973
      29000000000000000000000000000000000000000000000000005AB55A006BBD
      6B006BBD6B006BBD6B0063B563005AB55A008CCE8C00EFF7EF00FFFFFF00FFFF
      FF00FFFFFF00EFF7EF0039A5390039A5390039A5390039A5390039A53900216B
      2100000000000000000000000000000000000000000000000000F79C4A00FFAD
      6300F7A55A00FFFFFF00FFBD8400F79C5200F79C4A00FFBD8400FFF7DE00FFFF
      FF00FFFFFF00FFFFFF00FFF7DE00EF7B2900EF7B2900EF842900EF7B2900A55A
      1800000000000000000000000000000000000000000000000000F79C4A00FFAD
      6300F7A55A00F7A55A00F7A55A00FFF7DE00FFFFFF00FFFFFF00FFFFFF00FFF7
      DE00FFBD8400EF7B2900EF7B2900FFBD8400FFFFFF00EF842900EF7B2900A55A
      18000000000000000000000000000000000000000000000000005AB55A006BBD
      6B006BBD6B006BBD6B0063B56300EFF7EF00FFFFFF00FFFFFF00FFFFFF00EFF7
      EF008CCE8C0039A5390039A5390039A5390039A5390039A5390039A53900216B
      21000000000000000000000000000000000000000000000000005AB55A0073BD
      73007BBD7B006BBD6B006BBD6B005AB55A005AB55A008CCE8C00EFF7EF00FFFF
      FF00FFFFFF00EFF7EF0039A5390039A539004AAD4A0039A5390039A539002973
      2900000000000000000000000000000000000000000000000000F79C4A00FFAD
      6B00FFB57300FFFFFF00FFBD8400F79C5200F79C4A00F79C5200FFBD8400FFF7
      DE00FFFFFF00FFFFFF00FFF7DE00EF842900F7843100EF842900EF7B2100AD5A
      1800000000000000000000000000000000000000000000000000F79C4A00FFAD
      6B00FFB57300FFAD6300F7A55A00FFF7DE00FFFFFF00FFFFFF00FFF7DE00FFBD
      8400F7843100EF842900EF7B2900FFBD8400FFFFFF00EF842900EF7B2100AD5A
      18000000000000000000000000000000000000000000000000005AB55A0073BD
      73007BBD7B006BBD6B006BBD6B00EFF7EF00FFFFFF00FFFFFF00EFF7EF008CCE
      8C004AAD4A0039A5390039A5390039A539004AAD4A0039A5390039A539002973
      29000000000000000000000000000000000000000000000000005AB55A007BBD
      7B007BBD7B0073BD73006BBD6B0063B563005AB55A005AB55A008CCE8C00EFF7
      EF00FFFFFF00EFF7EF004AAD4A0039A5390039A5390039A5390039A539002973
      2900000000000000000000000000000000000000000000000000F79C5200FFB5
      7B00FFB57300FFFFFF00FFBD8400F7A55A00F79C5200F79C4A00F78C3900FFBD
      8400FFF7DE00FFFFFF00FFF7DE00EF7B2900EF7B2900EF842900EF7B2900B563
      1800000000000000000000000000000000000000000000000000F79C5200FFB5
      7B00FFB57300FFAD6B00F7A55A00FFF7DE00FFFFFF00FFF7DE00FFBD8400F78C
      3900F78C3900F7843100F7843100FFBD8400FFFFFF00EF842900EF7B2900B563
      18000000000000000000000000000000000000000000000000005AB55A007BBD
      7B007BBD7B0073BD73006BBD6B00EFF7EF00FFFFFF00EFF7EF008CCE8C004AAD
      4A004AAD4A004AAD4A004AAD4A0039A5390039A5390039A5390039A539002973
      290000000000000000000000000000000000000000000000000063B563008CCE
      8C0084CE84007BBD7B0073BD73006BBD6B006BBD6B0063B563005AB55A008CCE
      8C00EFF7EF00EFF7EF005AB55A004AAD4A004AAD4A004AAD4A0039A539002973
      2900000000000000000000000000000000000000000000000000F7A55A00FFCE
      8C00FFBD8400FFBD8400FFBD8400FFAD6300F7A55A00F7A55A00F79C5200F79C
      4A00FFBD8400FFF7DE00FFF7DE00F78C3900F78C3900F7843100EF7B2100AD5A
      1800000000000000000000000000000000000000000000000000F7A55A00FFCE
      8C00FFBD8400FFB57300FFAD6B00FFF7DE00FFF7DE00FFBD8400F79C5200F79C
      4A00F79C4A00F78C3900F79C4A00FFBD8400FFBD8400F7843100EF7B2100AD5A
      180000000000000000000000000000000000000000000000000063B563008CCE
      8C0084CE84007BBD7B0073BD7300EFF7EF00EFF7EF008CCE8C005AB55A005AB5
      5A005AB55A0052AD52005AB55A004AAD4A004AAD4A004AAD4A0039A539002973
      29000000000000000000000000000000000000000000000000006BBD6B009CD6
      9C009CD69C0084CE84007BBD7B007BBD7B0073BD73006BBD6B006BBD6B006BBD
      6B006BBD6B0063B563005AB55A005AB55A005AB55A004AAD4A0039A53900216B
      2100000000000000000000000000000000000000000000000000F7A55A00FFCE
      9C00FFCE9C00FFBD8400FFB57300FFB57300FFAD6B00FFAD6300F7A55A00F7A5
      5A00F7A55A00F7A55A00F79C5200F79C4A00F79C4A00F78C3900EF7B2900A55A
      1800000000000000000000000000000000000000000000000000F7A55A00FFCE
      9C00FFCE9C00FFBD8400FFB57300FFB57300FFAD6B00FFAD6300F7A55A00F7A5
      5A00F7A55A00F7A55A00F79C5200F79C4A00F79C4A00F78C3900EF7B2900A55A
      18000000000000000000000000000000000000000000000000006BBD6B009CD6
      9C009CD69C0084CE84007BBD7B007BBD7B0073BD73006BBD6B006BBD6B006BBD
      6B006BBD6B0063B563005AB55A005AB55A005AB55A004AAD4A0039A53900216B
      210000000000000000000000000000000000000000000000000073BD73009CD6
      9C009CD69C0084CE84007BBD7B006BBD6B006BBD6B006BBD6B006BBD6B006BBD
      6B006BBD6B0063B563005AB55A005AB55A0052AD52004AAD4A00319C3100297B
      2900000000000000000000000000000000000000000000000000FFAD6B00FFCE
      9C00FFCE9C00FFBD8400FFB57300FFAD6300FFAD6300F7A55A00F7A55A00F7A5
      5A00F7A55A00F7A55A00F79C5200F79C4A00F78C3900F7843100DE732100B563
      1800000000000000000000000000000000000000000000000000FFAD6B00FFCE
      9C00FFCE9C00FFBD8400FFB57300FFAD6300FFAD6300F7A55A00F7A55A00F7A5
      5A00F7A55A00F7A55A00F79C5200F79C4A00F78C3900F7843100DE732100B563
      180000000000000000000000000000000000000000000000000073BD73009CD6
      9C009CD69C0084CE84007BBD7B006BBD6B006BBD6B006BBD6B006BBD6B006BBD
      6B006BBD6B0063B563005AB55A005AB55A0052AD52004AAD4A00319C3100297B
      290000000000000000000000000000000000000000000000000073BD730073BD
      73006BBD6B005AB55A005AB55A005AB55A0052AD520052AD520052AD52005AB5
      5A004AAD4A0039A539004AAD4A004AAD4A0039A5390039A53900318C310073BD
      7300000000000000000000000000000000000000000000000000FFAD6B00FFAD
      6B00F7A55A00F79C5200F79C4A00F79C4A00F78C3900F78C3900F78C3900F79C
      4A00F78C3900EF842900F7843100F7843100EF7B2100EF7B2100D6731800FFAD
      6B00000000000000000000000000000000000000000000000000FFAD6B00FFAD
      6B00F7A55A00F79C5200F79C4A00F79C4A00F78C3900F78C3900F78C3900F79C
      4A00F78C3900EF842900F7843100F7843100EF7B2100EF7B2100D6731800FFAD
      6B0000000000000000000000000000000000000000000000000073BD730073BD
      73006BBD6B005AB55A005AB55A005AB55A0052AD520052AD520052AD52005AB5
      5A004AAD4A0039A539004AAD4A004AAD4A0039A5390039A53900318C310073BD
      7300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009860
      6000A16A6A00A16A6A00A16A6A00A16A6A00A16A6A00A16A6A00A16A6A00A16A
      6A00A16A6A00A16A6A00A16A6A00A16A6A00A16A6A00A16A6A00A16A6A00A16A
      6A00A16A6A00A16A6A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009858
      6A00EAD4B600F4E0B600F4D4AB00F4D4A100F4CAA100F4CA9800F4CA8F00EAC0
      8400EAC08400EAC07B00EAC07B00EAC07B00EAC07B00EAC07B00EAC07B00EAC0
      7B00EAC07B00A16A6A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000662800006628
      00005F25000059230000532000004D1E0000471C0000451B0000451B0000451B
      0000451B0000451B0000451B0000451B0000451B0000451B0000451B0000431A
      00003C1700003C17000000000000000000000000000000000000000000000000
      00000000000000000000EEAA6B00F0B47700F0BA7F00F0B77B00EFB27600F0AD
      6E00EEAC6D00EFAF6F00EEAC6D00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009858
      6A00EAD4B600F4E0B600F4D4B600F4D4AB00F4CAA100F4CA9800F4CA9800EAC0
      8F00EAC08400EAC08400EAC07B00EAC07B00EAC07B00EAC07B00EAC07B00EAC0
      7B00EAC07B00A16A6A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084340000792F00008935
      0000843400007E310000772E0000702C00006A29000068280000682800006828
      00006828000068280000682800006828000068280000682800006A2900006A29
      000053200000361600003C170000000000000000000000000000000000000000
      000000000000F6CE9700FAE2B100FAE2B100F8D7A300F4CA9200F0BC8100EFB0
      7300EFAF6F00F2B77A00F3C08600F4C58B00F2BF8400EFAF7200EEAC6D000000
      0000000000000000000000000000000000000000000000000000000000009858
      6A00F4D4C000F4E0C000F4D4B600F4D4B600F4D4AB00F4CAA100F4CA9800F4CA
      9800EAC08F00EAC08400EAC08400EAC07B00EAC07B00EAC07B00EAC07B00EAC0
      7B00EAC07B00A16A6A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084340000C24C0000CF51
      0000C74E0000C04B0000BB490000B6470000B1450000AC430000AA420000AA42
      0000AA420000AA420000AA420000AA420000AA420000AA420000AA420000AF44
      0000A03F0000532000003C170000000000000000000000000000000000000000
      0000FAE2B100FFFCD400FEF7CE00FBE5B600F8D7A300F3C99100F7BF8600F4B1
      7500F0AD6E00FFBF8B00FFCC9F00FFD9AD00FFE2B400FBE5B600F3C18700EEAC
      6D00000000000000000000000000000000000000000000000000000000009858
      6A00F4E0C000F4E0CA00F4E0C000F4D4B600F4D4AB00F4D4AB00F4CAA100F4CA
      9800F4CA9800EAC08F00EAC08400EAC08400EAC07B00EAC07B00EAC07B00EAC0
      7B00EAC07B00A16A6A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009E3E0000D9550000D955
      0000CF510000CA4F0000C54D0000C04B0000B8480000B4460000AF440000AA42
      0000AA420000AA420000AA420000AA420000AA420000AA420000AA420000AF44
      0000AF4400006A290000431A0000000000000000000000000000000000000000
      0000FCF2C600FFFFD800FEF3C900FBE5B500F8D7A300F8CB9500D0C28400E2C1
      8A00F4C08F007EAD550058A5410082B76300E9E1B400FFF7CF00FFF6CA00F2BC
      8200EEAC6D000000000000000000000000000000000000000000000000009858
      6A00F4E0CA00D4D4D400848484008484840084848400848484001C1C1C003848
      5000848484008484840084848400848484008484840084848400848484008484
      8400EAC07B00A16A6A0000000000000000000000000084401600844016008440
      1600844016008440160084401600844016008440160084401600844016008440
      1600844016008440160000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A7410000DE570000DC56
      0000D4530000CF510000C74E0000C54D0000BD4A0000B8480000B4460000AC43
      0000AA420000A7410000A7410000A7410000A7410000A7410000A7410000AA42
      0000AA4200006A290000451B0000000000000000000000000000000000000000
      0000F6D09A00FFFFD900FEF7CE00FAE5B600F7D7A400FFCE9C00A4BB6F003199
      28003C9C2D00007B000000790000007800001F931B00D3E5B400FFFFE000F8DA
      A900EEAC6D000000000000000000000000000000000000000000000000009860
      6A00F4E0D400F4EAD400F4E0CA00F4E0C000F4E0C000F4D4B600604031002316
      0B001648600038485000F4CA9800EAC08F00EAC08400EAC08400EAC07B00EAC0
      7B00EAC07B00A16A6A0000000000000000000000000084401600E0C0A100A158
      1600A1581600A1581600A1581600A1581600A1581600A1581600A1581600F4E0
      CA0084401600A158160084401600000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B1450000E65C0000E35B
      0000DC580000D7560000D1540000CC500000CC631300CC6A1E00C7691E00C467
      1E00C0661E00B4520B00A7410000A7410000A7410000A7410000A7410000AA42
      0000AA42000068280000451B000000000000000000000000000000000000EEAB
      6C00EEA96900F4CA9200FEF2C600FCEFC200F7DAA600FFCB9700BAC07B000180
      0200007B0000017F0100048103000D890B000076000033A02E00FBFCE000FAD4
      A000EEAC6D00000000000000000000000000000000000000000000000000A160
      6A00F4EAE000F4EAE000F4EAD400F4E0CA00F4E0C000F4E0C000CACACA0073A1
      B60073F4FF001658F40011385000F4CA9800EAC08F00EAC08400EAC08400EAC0
      7B00EAC07B00A16A6A0000000000000000000000000084401600E0C0A100AB60
      3100AB603100AB603100AB603100AB603100AB603100AB603100AB603100F4E0
      CA0084401600A1581600A1581600844016000000000000000000000000000000
      00000000000000000000000000000000000000000000B6470000EB630400EB63
      0400E35D0300DE5A0100D9570000D1540000EFC69F00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00F6EADE00C9864B00A7410000A7410000A7410000AA42
      0000AA42000068280000451B000000000000000000000000000000000000EEAB
      6C00EEAA6B00EDA66700EFB47600F6D39E00FAE2B100FFDEB000C9CE91000683
      0500007B00000A860900B1DAAB00EBF6E900EEAC6D000281030099C17400FEB7
      8100EEAC6D00EEAC6D000000000000000000000000000000000000000000A16A
      6A00F4EAE000D4D4D400848484008484840084848400848484008484840050B6
      FF0073F4FF001658F4001658F400032A48008484840084848400848484008484
      8400EAC07B00A16A6A0000000000000000000000000084401600E0C0A100AB60
      3100AB603100AB603100AB603100AB603100AB603100AB603100AB603100F4E0
      CA0084401600A1581600A1581600A15816008440160000000000000000000000
      00000000000000000000000000000000000000000000B6470000EF6A0A00F26B
      0A00ED660700E6600400E15C0200DC580000EBAD7600F4D8BC00F3D7BC00F2D7
      BC00F0D7BC00F6E6D700FEFEFE00FEFEFE00DDB08700A7410000A7410000AA42
      0000AA42000068280000451B000000000000000000000000000000000000EEAD
      6F00EFAF7200EEAD6F00EEAA6B00EEA96900EFAF6F00F8BD8600D3CC93000281
      030000780000007900006DBD6A00FBFEFA00FFFFFF007DC579004A9A2F00FAB5
      7E00EEAA6B00EEAC6D000000000000000000000000000000000000000000AB6A
      6A00F4EAEA00FFF4EA00F4EAE000F4EAE000F4EAD400F4E0CA00F4E0C000F4E0
      C000068FCA002AE0F4001658F4001658F40011385000F4CA9800EAC08F00EAC0
      8400EAC07B00A16A6A00000000000000000000000000844016007B7B7B00E0C0
      A100D4845800D4845800D4845800D4845800D4845800D4845800D4845800F4E0
      CA007B7B7B0084401600A1581600A1581600A158160023317B00000000000000
      00000000000000000000000000000000000000000000B6470000F0751700F376
      1700F06E0F00EE660600E9620400E15B0100DC580000D7540000D1520000CC50
      0000C74E0000C04B0000CA6E2500F8EFE600FEFEFE00C1702F00A7410000AA42
      0000AA42000068280000451B000000000000000000000000000000000000F2B5
      7A00F3B78000F2B67E00F2B57B00F2B27800F0B17600F4AD7200E3BC870045A7
      410045A942004FAF4C0067B76000E7F3E200FFFFFF00FFFFFF00B1CC9500E5B1
      7400EEAA6B00EEAC6D000000000000000000000000000000000000000000AB6A
      7300FFF4F400FFFFF400FFF4EA00F4EAE000F4EAE000F4EAD400F4E0CA00F4E0
      C000F4E0C000068FCA002AE0F4001658F4001658F4000B2A4000F4CA9800EAC0
      8F00EAC08400A16A6A000000000000000000000000000000000084401600E0C0
      A100E0C0A100E0C0A100E0C0A100E0C0A100E0C0A100F4E0CA00F4E0CA00E0E0
      E000E0C0A10084401600A1581600A1581600A15816003150840023317B000000
      00000000000000000000000000000000000000000000B6470000F2832B00F484
      2B00F0751700EE670700EE670700EB600300E65C0000DE570000D9550000D453
      0000CF510000CA4F0000C54D0000D78B4B00FEFEFE00E1B28700AF440000AC43
      0000AA42000068280000451B0000000000000000000000000000EEAC6D00F6C0
      8C00F7C19000F7C08E00F6BF8B00F6BD8900F4BC8700F7BB8400E2C69300FAF6
      ED00FFFFFF00FFFFFF00EEF4E900CAE6C500C0E2BC00B1DCAD00C7D3A300F3B6
      7D00EEAB6C00EEAC6D000000000000000000000000000000000000000000B673
      7300FFF4F400D4D4D40084848400848484008484840084848400848484008484
      84008484840084848400068FCA002AE0F4001658F4001658F400113850008484
      8400EAC08F00A16A6A0000000000000000000000000000000000000000008440
      1600E08F5800E08F5800E08F5800E08F5800E08F5800E08F5800E08F5800E08F
      5800E08F5800E08F580084401600A1581600A1581600607BB600315084002331
      7B000000000000000000000000000000000000000000B6470000F3913F00F492
      3F00F27E2200EF6A0A00EF6A0A00EE640400EB5E0000FEFEFE00E1580000DC56
      0000D7540000D1520000CC500000D1702300FEFEFE00EAC6A300B6470000B446
      0000AF4400006A290000451B0000000000000000000000000000F2B27800FBCB
      A100FBCBA100FBC99E00FAC99C00FAC69900F8C59800FFC69800CBC48B0062B6
      5B00FFFFFF00FFFFFF00A3D59E000D880C0003800300007B0000429D3000FEC2
      9500F0B07300F0B073000000000000000000000000000000000000000000B673
      7300FFF4F400FFFFFF00FFFFFF00FFF4F400FFF4EA00F4EAE000F4EAE000F4EA
      D400F4E0CA00F4E0C000F4E0C000068FCA002AE0F4001658F4001658F400032A
      4800EAC08F00A16A6A0000000000000000000000000000000000000000000000
      000084401600E08F5800E08F5800E08F5800E08F5800E08F5800E08F5800E08F
      5800E08F5800E08F5800E08F580084401600A1581600607BB600607BB6003150
      840023317B0000000000000000000000000000000000B6470000F4994C00F79C
      4E00F2832B00F06D0E00F06C0D00EE660600FEFEFE00FEFEFE00EB5E0100E359
      0000DE570000D9550000D1520000E2985700FEFEFE00E6B18000BD4A0000BB49
      0000B4460000732D00004D1E0000000000000000000000000000F4C08B00FED8
      B200FCD4AD00FCD3AB00FCD0A900FCD0A900FCD0A900FFCEA600F7D5B2002192
      1A0066BA6300FFFFFF00FFFFFF0083C67E00007B0000007B0000379C2C00FECC
      A400F4B57D00F4B57D000000000000000000000000000000000000000000B673
      7300FFF4F400FFFFFF00FFFFFF00FFFFFF00FFF4F400FFF4EA00F4EAE000F4EA
      E000F4EAD400F4E0CA00F4E0C000F4E0C000068FCA002AE0F4001658F4001C23
      AB001C1C1C00A16A6A0000000000000000000000000000000000000000000000
      00000000000084401600E08F5800E08F5800E08F5800E08F5800E08F5800E08F
      5800E08F5800E08F5800E08F5800E08F58008440160031508400607BB600607B
      B6003150840023317B00000000000000000000000000B6470000F49F5500F7A1
      5800F2883100F06F1100F06E1000FEFEFE00FEFEFE00FEFEFE00EF660600EB5C
      0000E65A0000DE570000E5883A00FBF4EE00FEFBFA00D46F2000C24C0000C24C
      0000BB490000792F000057220000000000000000000000000000FAD1A300FFE2
      BC00FEDEB700FEDDB600FEDCB500FEDAB400FED9B200FED7AF00FFDEC2008BBF
      72000079000038A1340062B75E001F951E00017E0100007B00002F992700FCD5
      B400F8BD8A00F8BD8A00EEAC6D0000000000000000000000000000000000C07B
      7300FFF4F400D4D4D40084848400848484008484840084848400848484008484
      84008484840084848400848484008484840084848400068FCA002A8FD400736A
      60006A6A60001C1C1C0000000000000000000000000000000000000000000000
      0000000000000000000084401600E08F5800E08F5800E08F5800E08F5800E08F
      5800E08F5800E08F5800E08F5800E08F5800E08F580023317B0031508400607B
      B600607BB6003150840023317B000000000000000000B6470000F4A35B00F7A6
      5E00F38C3700F6B57800FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00EAA46600D1520000CC500000CA4F
      0000C24C000082330000622600000000000000000000EFB27400FEE7BF00FEED
      C500FEEAC200FEE9C000FEE7BF00FEE5BD00FEE5BD00FEE3BB00FFE2BC00FBE9
      CB0039A031000073000000760000007B0000007B00000A87090026972100F8DD
      BC00FCC99A00FCC99A00EEAC6D0000000000000000000000000000000000C07B
      7300FFF4F400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF4F400FFF4
      EA00F4EAE000F4EAE000F4EAD400F4E0CA00F4E0C000F4E0C0006A504000FFFF
      FF00F4EAE0005848380011113100000000000000000000000000000000000000
      000000000000000000000000000023317B0098C0E00098C0E00098C0E00098C0
      E00098C0E00098C0E00098C0E00098C0E00098C0E00098C0E00023317B003150
      8400607BB600607BB60023317B000000000000000000B6470000F6A55F00F7AA
      6600F4914000F7B77D00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFBFA00FAD8B800EB893700DE570000D9550000D4530000D152
      0000CA4F00008B3600006A2900000000000000000000F3BF8400FFF7CF00FFF7
      CF00FFF6CC00FFF2CA00FFF2C900FFF0C700FFEFC700FFEEC600FEEDC400FFED
      CA00E9E9C20052AD4800138B1100098608003FA43600CADEB1007EBF6C00EEE2
      BA00FFD7AB00FFD7AB00EEAC6D0000000000000000000000000000000000CA84
      7B00FFF4F400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF4
      F400FFF4EA00F4EAE000F4EAD400F4EAD400F4EAD400E0D4C000C0AB9800847B
      7300E0C0A100164860001658F4001C23AB000000000000000000000000000000
      00000000000000000000000000000000000023317B0098C0E00098C0E00098C0
      E00098C0E00098C0E00098C0E00098C0E00098C0E00098C0E00098C0E0002331
      7B0031508400607BB60023317B000000000000000000B6470000F6A96400F7B0
      6F00F4994B00F07B2000F2842D00FEFEFE00FEFEFE00FEFEFE00F0721300EE67
      0700EE650500EE620300EE5F0100EB5E0000E65C0000E1580000DC560000D955
      0000D1520000953A0000752D00000000000000000000F6D09A00FFFFD900FFFB
      D300FFFBD300FFFBD300FFFBD300FFF8D100FFF8D000FFF8D000FFF7CF00FFF6
      CC00FFF8D100FFF8DA00F0F0CC00EAEEC600FFF3D400FFF2D000FFF2D000FCED
      C700FCE6BB00FCE6BB00EEAC6D0000000000000000000000000000000000CA84
      7B00FFF4F400D4D4D40084848400848484008484840084848400848484008484
      8400848484008484840084848400EAD4CA00A16A5800986A5800986058009860
      5800315084001684EA001658F4001C23AB000000000000000000000000000000
      0000000000000000000000000000000000000000000023317B0098C0E00098C0
      E00098C0E00098C0E00098C0E00098C0E00098C0E00098C0E00098C0E00098C0
      E00023317B003150840023317B000000000000000000B6470000F6AA6600F8B5
      7900F6A45D00F27E2200F2842D00F2802600FEFEFE00FEFEFE00F0731400F06C
      0D00F06C0D00EE670700EE640400EE600100EE5F0000E95B0000E3590000DE57
      0000D9550000A03F00007E3100000000000000000000FAE2B100FFFFD900FFFB
      D300FFFBD300FFFBD300FFFBD300FFFBD300FFFBD300FFFBD300FFFBD300FFFC
      D400FFFED500FFFFD900FFFFDC00FFFFD900FFFFD900FFFCD400FFF8D000FFF7
      CF00FEF3C900FEF3C900F2B77A0000000000000000000000000000000000D48F
      7B00FFF4F400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF400FFF4F400FFF4EA00E0C0B600A16A5800E0A16A00E0985000EA8F
      3800EA8F23000006E0000006E000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000023317B0098C0
      E00098C0E00098C0E00098C0E00098C0E00098C0E00098C0E00098C0E00098C0
      E00098C0E00023317B0023317B000000000000000000B6470000F6AA6600F8B8
      7F00F7B57900F3913F00F38C3700F2872F00F2802600FEFEFE00F0761800F072
      1300F0761800F06E0F00EE670700EE620300EE5F0100EE5F0000EB5C0000E95B
      0000E1580000A5410000873500000000000000000000FBEABD00FFFFD900FFFB
      D300FFFBD300FFFBD300FFFBD300FFFCD400FFFCD400FFFED500FFFFD900FFFF
      D900FCF2C600F7D49900F4C48100F4C48100F6D09500FBE6B600FFF6CC00FFFF
      D800FFFED500FFFED500F3C0860000000000000000000000000000000000D48F
      7B00FFF4F400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFF400E0C0B600A16A5800EAB67300F4AB5000FFA1
      3800A16A6A000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002331
      7B0098C0E00098C0E00098C0E00098C0E00098C0E00098C0E00098C0E00098C0
      E00098C0E00098C0E00023317B000000000000000000B6470000F4A35B00F8B6
      7A00F7BD8800F7B88000F7B47700F6AF6F00F6A76300F49F5500F4964600F38C
      3700F2822900F0761800F06B0C00EE650500EE600100EE5F0000EE5D0000F05E
      0000E95B0000B1450000923900000000000000000000F4CA9200FEFBD300FFFF
      D900FFFFD800FFFED500FFFCD400FFFBD300FEF7CE00FBEBBB00F8D9A100F3C0
      7E00EEA75C00EB9D4E00EB9D4E00EB9D4E00EBA15900EFAF6F00F8C18800FCD9
      A700FFF2C900FFF2C900F3C9910000000000000000000000000000000000D48F
      7B00FFF4F400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E0CAC000A16A5800EAB67300F4AB5000A16A
      6A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003150840023317B0023317B0023317B0023317B0023317B0023317B002331
      7B0023317B0031508400000000000000000000000000B8480000F6984900F8AB
      6700F8B67A00F8BB8300F8BB8300F8B87F00F8B27500F7AC6900F7A35900F697
      4800F4893300F37D1F00F36F1000F0670600F0630200F0600000F05E0000F35F
      0000F35F0000BB4900009C3D0000000000000000000000000000F0BA7F00F6CE
      9700F4CB9500F4C68F00F3C28A00F2BD8300EFB27400EEA96500EDA45C00EDA0
      5800EDA15500EDA15400EDA15400EDA35900EEAA6900F3B57900F8BD8600FABC
      8400FBC48C00F7BF8600F8BD860000000000000000000000000000000000D48F
      7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E0CACA00A16A5800EAB67300A16A6A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B8480000DE570000F697
      4800F4A15900F6AA6600F6AB6900F6AA6700F6A56000F4A05800F4994B00F38F
      3C00F2832C00F0781B00F06C0D00EE660600EE620200EE5F0000EE5D0000F05E
      0000E3590000AC4300009C3D0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EDA35500EEA76200F0B07300F8BC8300FAC08900FAC0
      8800FABF8700FABF8700F8BD860000000000000000000000000000000000D48F
      7300E0C0AB00EACAAB00EACAAB00EAC0B600E0C0AB00E0C0AB00E0C0AB00E0C0
      AB00D4B6AB00D4B6AB00D4B6AB00C0988F00A16A5800A16A6A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B6470000B647
      0000B6470000B6470000B6470000B6470000B6470000B6470000B6470000B647
      0000B6470000B6470000B6470000B6470000B6470000B6490000B6470000B647
      0000A7410000A741000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F4B67A00FAC08800FAC08800FAC0
      8800FAC08800FAC08800FAC08900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FAC08800FAC0
      8800FAC08800FAC0880000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00FEFEFE00FDFD
      FE00FEFEFE00FEFEFE00FEFEFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000995951008838
      38008234350084353500812E2F008C585900A4A5A500A5A3A300A6A4A400A7A5
      A400A7A4A400A6A4A400A5A3A300A4A3A300A5A5A5008E565600802D2D008131
      3200813233008234350082343500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FAFAFA00E0E0D900CACABC00CACABD00CACABD00CBCB
      BD00CACABD00CACABD00CACABC00CECEBE00E9E9E300FDFDFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A0675B00B2535000BA49
      4900BA494900BC4A4A00A43D3D00824E4F009C9D9D00BFBFBC00DDDAD800EEEA
      E700F7F2EE00F7F2ED00E9E5E300DAD9D700D4D5D500A35B5B007D181800801F
      1F0087232300B0414100AF454600823334000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FCFCFB00D3D3CB00686891003F3F9B0044449900454599004646
      98004646970046469600464695003D3D920070709100E4E4DA00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000035C0700035C
      0700035C0700035C070000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A0675B00B2535000BF4A
      4A00BF4B4B00C04C4C00A73E3F00835151008A747400A1676600C19A9700D5BD
      BB00F7F2ED00FFFBF700FAF4F200EAE7E500E1E2E100A65B5C007B171600801E
      1E0087232300B1414100B1474700823334000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDFDFD00D4D4C900656590002B2BCD002C2CE9002626E9002323E7002525
      E8002626E9002525E9002B2BEC003131ED001C1CB6006B6B8900E6E6DB000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000025C0400FFFFFF00058E
      0D00058F0D00058F0D00035C0700000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A0675B00B2535000BD4A
      4A00BC4B4B00C04C4C00A53E3E00875656008A63640087262500A0555300BA89
      8600E6E1DD00FAF4F200FEF8F400F7F2EE00EBEBEA00A95E5D007B171700801E
      1E0087232300B1414100B1474700823334000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FD00D5D5CC00636391002C2CD0003535E9002B2BE1003636C1004646BD003D3D
      C2003D3DC3004242BF003333CA003232E8003D3DF0001C1CB7006A6A8900E7E7
      DD00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000025C0400FFFFFF00058E
      0D00058F0D00058F0D00035C0700000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A0675B00B2535000BD4A
      4A00BC4B4B00C04C4C00A53E3E008B595900916A6A007F1B1B0088282800A15A
      5800D4CCCB00EEEAE700FAF4F200FEFAF600F8F8F400AC6262007B161700801E
      1E0087232300B1414100B1474700823334000000000084401600844016008440
      1600844016008440160084401600844016008440160084401600844016008440
      1600844016008440160000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFDFA00D5D5
      C900636393002B2BD3003535ED002C2CDF006060B100C2C2C100D2D2D000C6C6
      CA00C6C6CA00CECECC00B8B8BC005050C0003232EB003D3DF5001B1BB9006A6A
      8700E7E7DA000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000025C0400FFFFFF00058E
      0D00058F0D00058F0D00035C0700000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A0675B00B2535000BD4A
      4A00BC4B4B00C04C4C00A53E3E008F5B5B00986F6E00801D1D007F1B1B00892F
      2F00BAB1B000DDDAD800EFEBE700FCF7F300FFFFFC00B16564007A161600801E
      1E0087232300B1414100B1474700823334000000000084401600E0C0A100A158
      1600A1581600A1581600A1581600A1581600A1581600A1581600A1581600F4E0
      CA0084401600A158160084401600000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFC00D6D6CB006363
      95002C2CD4003636EC002E2EE8004C4CBF00D9D9CD00EBEBEE00E0E0EA00E2E2
      E900E2E2E900E1E1EA00EEEEEB00C4C4C7003B3BD3003939F1004040F6001E1E
      BA006A6A8600E7E7DB0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000025C0500FFFFFF00058E
      0D00058F0D00058F0D00035C0700000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A0675B00B2535000BD4A
      4A00BC4B4B00C04C4C00A43D3D00965F5E00A17372007F1818007F1818007F1D
      1D0098909000C1C1C000DEDAD700F3EFEB00FFFFFC00B46866007A161600801E
      1E0087232300B1414100B1474700823334000000000084401600E0C0A100AB60
      3100AB603100AB603100AB603100AB603100AB603100AB603100AB603100F4E0
      CA0084401600A1581600A1581600844016000000000000000000000000000000
      00000000000000000000000000000000000000000000E3E3DF0066669B002B2B
      D4003737EB003939E7002C2CE2009292C100EEEEE900DBDBE900DBDBE800DCDC
      E800DCDCE800DBDBE800DDDDEA00ECECE5008282C5003131EB004141ED004141
      F8001F1FB80070708F00F2F2ED00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000035D0500FFFFFF000690
      0F00058F0D00058F0D00035C0700000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A0675B00B2535000BD4A
      4A00BC4B4B00C04C4C00A13C3C0099626000B5959200904A4A008A4545008649
      490087888800A0A6A500C6CAC700E6EAE600FFFFFF00B2686700771414007D1C
      1C0084212100B0414100B1474700823334000000000084401600E0C0A100AB60
      3100AB603100AB603100AB603100AB603100AB603100AB603100AB603100F4E0
      CA0084401600A1581600A1581600A15816008440160000000000000000000000
      00000000000000000000000000000000000000000000ADADC4002626C7003636
      F0003B3BE6003A3AEB003535E100B2B2CE00EFEFEF00DEDEEB00DFDFEB00DFDF
      EC00DFDFEC00DFDFEB00DEDEEB00EAEAF100CBCBD4004343DF003E3EF2004343
      ED003C3CF7003333C100CFCFDB00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000035D0500FFFFFF000A96
      16000792110007921100035C0700000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A0675B00B2535000BD4A
      4A00BC4B4B00C04C4C00AB414100A6565700C6918F00BA898900AD818100A57B
      7B009D7474009D747400B2888700CC9E9D00DEB1AF00B55C5B0091282800952D
      2D0099303000B6454500B14647008233340000000000844016007B7B7B00E0C0
      A100D4845800D4845800D4845800D4845800D4845800D4845800D4845800F4E0
      CA007B7B7B0084401600A1581600A1581600A158160023317B00000000000000
      00000000000000000000000000000000000000000000A7A7C9002B2BD3003B3B
      ED003E3EEB003D3DF0003A3AE400B4B4CF00F2F2F300E2E2EF00E4E4F000E4E4
      F100E4E4F100E3E3F000E3E3EF00E7E7F500EBEBE5006868D6003D3DF8004646
      F1004141F5004747E300CCCCE20000000000000000000000000000000000035C
      0700035C0700035C0700035C0700035C0700035C0700035D0500FFFFFF000E9D
      1D000B9817000B981700035D0500035C0700035C0700035C0700035C0700035C
      0700035C070000000000000000000000000000000000A0675B00B2535000BF4B
      4B00BF4B4B00BF4B4B00BD4A4A00BD484800BC464600BC474700BC474700BD46
      4700BD464700BC464600BB444400BB444400BA444400BC474700BD4A4A00BD48
      4800BF4B4B00C04C4C00AF45460082333400000000000000000084401600E0C0
      A100E0C0A100E0C0A100E0C0A100E0C0A100E0C0A100F4E0CA00F4E0CA00E0E0
      E000E0C0A10084401600A1581600A1581600A15816003150840023317B000000
      00000000000000000000000000000000000000000000A9A9CA002E2ED3003E3E
      F2004242F0004343F6003F3FE900B6B6D100F8F8FA00E9E9F600E8E8F500E9E9
      F500E9E9F500E9E9F500EAEAF500EBEBF200F5F5F4009292D5003D3DFB004B4B
      F6004343F9004747DE00CECEE100000000000000000000000000035C0700FFFF
      FF0038D3640033CC5A002DC7520029C14B0025BD440020B63B0016A72B0013A1
      24000F9D1E000C9718000D9C1B000A97160007921100058F0D00058F0D00058F
      0D00058F0D00035C0700000000000000000000000000A0675B00B2535000B645
      4500B0424100B4484600B8515000BC575700BF5C5B00BF5C5B00BF5C5B00BF5C
      5B00BF5C5B00BF5C5B00BF5C5B00BF5C5B00BF5C5B00BF5C5B00BF5C5B00BF5E
      5D00BF545400BF4B4B00AF454600823334000000000000000000000000008440
      1600E08F5800E08F5800E08F5800E08F5800E08F5800E08F5800E08F5800E08F
      5800E08F5800E08F580084401600A1581600A1581600607BB600315084002331
      7B000000000000000000000000000000000000000000A9A9C9003131D6004242
      F7004747F4004848FC004444EE00BBBBD700FCFCFC00EAEAF700EFEFFC00F0F0
      FC00EFEFFC00F2F2FE00E1E1F100A9A9D200FFFFFE00C6C6DA004444E6004E4E
      FE004848FE004A4AE000CDCDE000000000000000000000000000035C0700FFFF
      FF0038D3640033CC5A002DC7520029C14B0025BD440020B63B001CAC330018A7
      2C0014A32600109E20000D9C1B000A97160007921100058F0D00058F0D00058F
      0D00058F0D00035C0700000000000000000000000000A0685B00B45451009C35
      31008F302C00A1514D00B4767300C2969300CBAAA900CCADAC00CCACAB00CCAC
      AB00CCACAB00CCACAB00CCACAB00CCACAB00CCACAB00CCACAB00CCACAB00CCB2
      B100C4777700BD464600AF454600823334000000000000000000000000000000
      000084401600E08F5800E08F5800E08F5800E08F5800E08F5800E08F5800E08F
      5800E08F5800E08F5800E08F580084401600A1581600607BB600607BB6003150
      840023317B0000000000000000000000000000000000A9A9C9003434DA004848
      FD004D4DFB004E4EFF004949EF00C5C5DF00E0E0E600C9C9D80000000000F7F7
      FF00F7F7FF00FBFBFF00E7E7F2006868DC00D0D0F100FFFFF2008E8ECF004646
      FD004D4DFF004B4BE200CDCDDF00000000000000000000000000035C0700FFFF
      FF003CD76B0037CF620033CA5A002DC552002AC04B0025BA430021B53C001CAF
      350018AA2F0015A4280011A022000F9C1D000C97180008921200068E0E00058C
      0D00058E0D00035C0700000000000000000000000000A0685B00B4535000972D
      2900C0878200F8F2EF00F3E7E600F4EAE900F6EDEB00F6EDEB00F6EDEB00F6ED
      EB00F6EDEB00F6EDEB00F6EDEB00F6EDEB00F6EDEB00F6EDEB00F8EFEE00E9DD
      DC00BF757400B23F3F00AF454600823435000000000000000000000000000000
      00000000000084401600E08F5800E08F5800E08F5800E08F5800E08F5800E08F
      5800E08F5800E08F5800E08F5800E08F58008440160031508400607BB600607B
      B6003150840023317B00000000000000000000000000A9A9CB003737DE004D4D
      FF005252FF005454FF005050F000C9C9E100DADAE200CDCDD900E5E5EC00D3D3
      DE00E9E9EF00CFCFDB00F7F7F4006B6BEB006464F700B6B6F4009595F3004F4F
      FC005151FF004C4CE300CCCCDF00000000000000000000000000035C0700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0022B5
      3E001EB037001AAC3100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00035C0700000000000000000000000000A0685B00B4535000972D
      2900C5908C00FFFFFF00FAF2F000FAF2F000FAF2F000FAF2F000FAF2F000FAF2
      F000FAF2F000FAF2F000FAF2F000FAF2F000FAF2F000FAF2F000FCF4F300EAE0
      DE00BD747300B03D3D00AF454600823435000000000000000000000000000000
      0000000000000000000084401600E08F5800E08F5800E08F5800E08F5800E08F
      5800E08F5800E08F5800E08F5800E08F5800E08F580023317B0031508400607B
      B600607BB6003150840023317B000000000000000000A9A9CA003A3AE1005353
      FF005959FF005C5CFF005858F000CBCBE300DADADD00D1D1D800D5D5E000C2C2
      CF00E0E0EA00BABACF00FBFBF4007B7BE9005F5FFF005757FE005A5AFF005F5F
      FF005656FF004F4FE200CBCBDE0000000000000000000000000000000000035C
      0700035C0700035C0700035C0700035C0700035C0700035D0500FFFFFF0028BD
      480024BA410024BA4100035D0500035C0700035C0700035C0700035C0700035C
      0700035C070000000000000000000000000000000000A0685B00B4535000972D
      2900C48E8A00FFFFFC00F6EEED00F6EDEB00F6EEED00F6EEED00F6EEED00F6EE
      ED00F6EEED00F6EEED00F6EEED00F6EEED00F6EEED00F6EDEB00FAF2F000EADE
      DD00BD747300B03D3D00AF454600823435000000000000000000000000000000
      000000000000000000000000000023317B0098C0E00098C0E00098C0E00098C0
      E00098C0E00098C0E00098C0E00098C0E00098C0E00098C0E00023317B003150
      8400607BB600607BB60023317B000000000000000000A6A6CC003B3BE3005A5A
      FF005F5FFF006363FF005F5FF000D2D2E200E3E3DD00D1D1D600DADAE700C8C8
      D700E2E2EB00C1C1D400FBFBF4008181E9007070FF006E6EFF006868FF006565
      FF005D5DFF004F4FE200CACADE00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000035C0700FFFFFF002DC6
      53002AC24D002AC24D00035C0700000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A0685B00B4535000972D
      2900C48E8A00FFFFFE00E2DCDA00BDBBBB00BFBDBD00BFBDBD00BFBDBD00BFBD
      BD00BFBDBD00BFBDBD00BFBDBD00BFBDBD00BFBDBD00BBBAB800DED9D900EEE1
      E000BD747300B03D3D00AF454600823435000000000000000000000000000000
      00000000000000000000000000000000000023317B0098C0E00098C0E00098C0
      E00098C0E00098C0E00098C0E00098C0E00098C0E00098C0E00098C0E0002331
      7B0031508400607BB60023317B000000000000000000C2C2DF003D3DDD005D5D
      FF006666FF006B6BFF006A6AF900B4B4ED00C0C0E400D2D2E100DADAE600C7C7
      D600E2E2EA00C0C0D200F9F9F5008787E9007878FF007777FF007171FF006B6B
      FF005F5FFF005A5AE600DDDDEA00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000035C0700FFFFFF0034CC
      5C0030C9560030C95600035C0700000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A0685B00B4535000972D
      2900C48E8A00FFFFFE00F2E9E900E7E1E000E7E1E000E7E1E000E7E1E000E7E1
      E000E7E1E000E7E1E000E7E1E000E7E1E000E7E1E000E6E0DE00F2EBEB00EDE0
      DE00BD747300B03D3D00AF454600823435000000000000000000000000000000
      0000000000000000000000000000000000000000000023317B0098C0E00098C0
      E00098C0E00098C0E00098C0E00098C0E00098C0E00098C0E00098C0E00098C0
      E00023317B003150840023317B000000000000000000FCFCFD009F9FE0004646
      E6006E6EFF007676FF007A7AFF007E7EFE007777EC00D9D9E300DCDCE400C8C8
      D400E2E2E900C2C2D100FBFBF5008F8FE7008282FF007F7FFF007A7AFF006F6F
      FF005D5DEF00BDBDEC00FEFEFE00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000035C0700FFFFFF003AD3
      670036D0600036D06000035C0700000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A0685B00B4535000972D
      2900C48E8A00FFFFFE00E6E0DE00C7C4C400C9C5C500C9C5C500C9C5C500C9C5
      C500C9C5C500C9C5C500C9C5C500C9C5C500C9C5C500C5C2C200E2DDDD00EDE1
      E000BD747300B03D3D00AF454600823435000000000000000000000000000000
      000000000000000000000000000000000000000000000000000023317B0098C0
      E00098C0E00098C0E00098C0E00098C0E00098C0E00098C0E00098C0E00098C0
      E00098C0E00023317B0023317B00000000000000000000000000000000009C9C
      DD004F4FE7008181FF008585FF008989FF008383F200DBDBE200E0E0E600CCCC
      DA00E2E2EC00C3C3D200FFFFF4009797EC008A8AFF008989FF008080FF006161
      F000BBBBE9000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000035C0700FFFFFF003FD9
      6F003DD86B0043E17700035C0700000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A0685B00B4535000972D
      2900C48E8A00FFFFFE00EEE6E500DDD7D500DDD8D700DDD8D700DDD8D700DDD8
      D700DDD8D700DDD8D700DDD8D700DDD8D700DDD8D700DCD5D500EEE7E600EDE0
      DE00BD747300B03D3D00AF454600823435000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002331
      7B0098C0E00098C0E00098C0E00098C0E00098C0E00098C0E00098C0E00098C0
      E00098C0E00098C0E00023317B0000000000000000000000000000000000FFFF
      FE009999DE005959E8009191FF009393FF009595FE00AFAFF800ACACED00D3D3
      E200F2F2F300AAAAE500B6B6F9009B9BFE009696FF008F8FFF006868EF00B8B8
      E800FFFFFE000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000035C0700FFFFFF0040DA
      700041DD730043E17700035C0700000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A0685B00B4535000972D
      2900C48E8A00FFFFFE00EEE6E500DDD7D500DDD8D700DDD8D700DDD8D700DDD8
      D700DDD8D700DDD8D700DDD8D700DDD8D700DDD8D700DCD5D500EEE7E600EDE0
      DE00BD747300B03D3D00AF454600823435000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003150840023317B0023317B0023317B0023317B0023317B0023317B002331
      7B0023317B003150840000000000000000000000000000000000000000000000
      0000FFFFFE009898DF006161E700A2A2FF00AAAAFF00A8A8FF00A6A6FF00C5C5
      F100D7D7F500AEAEFE00A5A5FF00ABABFF00A0A0FF006C6CEE00B5B5E700FFFF
      FE00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000035C0700FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00035C0700000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A0685B00B4535000972D
      2900C48E8A00FFFFFE00E5DDDD00C5C1C100C6C4C200C6C4C200C6C4C200C6C4
      C200C6C4C200C6C4C200C6C4C200C6C4C200C6C4C200C2C0C000E2DCDA00EEE1
      E000BD747300B03D3D00AF454600823435000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009898E1006868E8009898FC009B9BFC009F9FFC009C9C
      FD009999FC009F9FFC009D9DFC009797FC007272ED00B5B5E700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000035C0700035C
      0700035C0700035C070000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A0685B00B4535000972D
      2900C58F8B00FFFFFF00FBF2F000FCF3F200FCF3F200FCF3F200FCF3F200FCF3
      F200FCF3F200FCF3F200FCF3F200FCF3F200FCF3F200FCF3F200FFF6F400EDE0
      DE00BD747300B23F3F00B0464700823435000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000AFAFEA008C8CEA009393EA009494EA009595
      EB009595EA009494EA009393EB008C8CEA00C0C0EC0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A0685B00AD545000952D
      2900BC878300EFEFEE00EAE2E100EAE2E100EAE2E100EAE2E100EAE2E100EAE2
      E100EAE2E100EAE2E100EAE2E100EAE2E100EAE2E100EAE2E100EBE6E500E1D7
      D500B8727000A5393900A5414200823435000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FAFAFA00FAFAFA00FAFAFB00FAFA
      FA00FAFAFA00FAFAFA00F9F9FA00FBFBFA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000985851008A2D
      2800A36F6D00B6BCBC00B4B2B200B4B2B200B4B2B200B4B2B200B4B2B200B4B2
      B200B4B2B200B4B2B200B4B2B200B4B2B200B4B2B200B4B2B200B2B2B200C1BA
      B800A56A6A007E2C2D008233340000000000424D3E000000000000003E000000
      2800000060000000780000000100010000000000A00500000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFF8FFF000000000000FF007FFE
      07FF000000000000FC001FF803FF000000000000FC000FE001FF000000000000
      F800078000FF000000000000E0000380007F000000000000C0000180003F0000
      0000000080000080001F00000000000080000080000F00000000000080000080
      0007000000000000800000800003000000000000800000800003000000000000
      800000800003000000000000800000C00003000000000000800000E000030000
      00000000C00001E00003000000000000C00001F00003000000000000E00003F8
      0003000000000000FE003FFC000F000000000000FE003FFE001F000000000000
      FE003FFF007F000000000000FE007FFF80FF000000000000FE00FFFFC1FF0000
      00000000FE01FFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000FC0000FC0000FC0000F
      C0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC000
      0FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0
      000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000F
      C0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC000
      0FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0
      000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000F
      C0000FC0000FC0000FC0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00003FFFFFFFFFFFFFFFFFFE00003FF
      FFFFC00003FC01FFE00003FFFFFF800001F8001FE00003FFFFFF800001F0000F
      E00003FFFFFF800001F00007E000038003FF800001F00007E000038001FF8000
      01E00007E000038000FF800001E00003E0000380007F800001E00003E0000380
      003F800001E00003E00003C0001F800001C00003E00003E0000F800001C00003
      E00003F00007800001C00003E00003F80003800001C00001E00003FC00018000
      01800001E00001FE0001800001800001E00000FF0001800001800001E00000FF
      8001800001800001E00001FFC001800001800001E00007FFE001800001800001
      E0000FFFF003800001C00001E0001FFFFFFF800001FFFC01E0003FFFFFFFC000
      03FFFF01FFFFFFFFFFFFFFFFFFFFFFC3FFFFFFFF81FFFFFFFFC00001FFFFFFFC
      003FFFFFFF800000FFFFFFF8003FFFC3FF800000FFFFFFF0001FFF81FF800000
      FFFFFFE0000FFF81FF8000008003FFC00007FF81FF8000008001FF800003FF81
      FF8000008000FF800001FF81FF80000080007F800001FF81FF80000080003F80
      0001E00007800000C0001F800001C00003800000E0000F800001C00003800000
      F00007802001C00003800000F80003800001C00003800000FC0001800001E000
      07800000FE0001800001FF81FF800000FF0001800001FF81FF800000FF800180
      0001FF81FF800000FFC001E00007FF81FF800000FFE001E00007FF81FF800000
      FFF003F0000FFF81FF800000FFFFFFFC003FFFC3FF800000FFFFFFFE007FFFFF
      FF800000FFFFFFFF00FFFFFFFFC0000100000000000000000000000000000000
      000000000000}
  end
  object qrCopyOc: TwwQuery
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    ValidateWithMask = True
    Left = 609
    Top = 429
  end
  object STP_COPY_OC: TADOStoredProc
    Connection = FMenu.ADOConnection
    ProcedureName = 'COPY_OC;1'
    Parameters = <
      item
        Name = '@ORD_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@ORD_ID_OUT'
        Attributes = [paNullable]
        DataType = ftInteger
        Direction = pdOutput
        Precision = 10
        Value = Null
      end>
    Left = 148
    Top = 322
  end
  object qrMaterialMarca: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT  A.CodigoMaterial,'
      #9'B.MATMARCA_ID,'
      #9'B.MARCA_ID,'
      #9'B.MAT_ID,'
      #9'A.CodigoMaterial + '#39' '#39' + A.MAT_DESC AS MAT_DESC,'
      #9'C.MARCA_DESC,'
      #9'B.MATMARCA_CONVERSAO,'
      #9'b.MATMARCA_EMBALAGEM'
      'FROM MATERIAIS A INNER JOIN MATERIAL_MARCA B'
      'ON A.MAT_ID = B.MAT_ID INNER JOIN MARCAS C'
      'ON B.MARCA_ID = C.MARCA_ID'
      'WHERE ISNULL(B.MATMARCA_CONVERSAO, 0) > 0'
      'ORDER BY A.MAT_DESC, C.MARCA_DESC')
    Left = 44
    Top = 402
    object qrMaterialMarcaMAT_DESC: TStringField
      DisplayLabel = 'Material'
      DisplayWidth = 60
      FieldName = 'MAT_DESC'
      Size = 60
    end
    object qrMaterialMarcaCodigoMaterial: TStringField
      DisplayWidth = 10
      FieldName = 'CodigoMaterial'
      Size = 50
    end
    object qrMaterialMarcaMARCA_DESC: TStringField
      DisplayLabel = 'Marca'
      DisplayWidth = 20
      FieldName = 'MARCA_DESC'
      Visible = False
    end
    object qrMaterialMarcaMATMARCA_CONVERSAO: TFloatField
      DisplayLabel = 'Conversão'
      DisplayWidth = 10
      FieldName = 'MATMARCA_CONVERSAO'
      Visible = False
    end
    object qrMaterialMarcaMATMARCA_EMBALAGEM: TStringField
      DisplayWidth = 15
      FieldName = 'MATMARCA_EMBALAGEM'
      Visible = False
      Size = 15
    end
    object qrMaterialMarcaMARCA_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'MARCA_ID'
      Visible = False
    end
    object qrMaterialMarcaMAT_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'MAT_ID'
      Visible = False
    end
    object qrMaterialMarcaMATMARCA_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'MATMARCA_ID'
      ReadOnly = True
      Visible = False
    end
  end
  object ADOQuery1: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT FIL_CODI, FIL_DESC FROM CPAFILI'
      'order by FIL_DESC')
    Left = 432
    Top = 336
    object ADOQuery1FIL_DESC: TStringField
      DisplayWidth = 20
      FieldName = 'FIL_DESC'
      FixedChar = True
    end
    object ADOQuery1FIL_CODI: TStringField
      DisplayWidth = 3
      FieldName = 'FIL_CODI'
      Visible = False
      FixedChar = True
      Size = 3
    end
  end
end
