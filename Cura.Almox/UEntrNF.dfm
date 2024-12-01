object FEntNf: TFEntNf
  Left = -4
  Top = -4
  Width = 808
  Height = 574
  Caption = 'Sistema de Almoxarifado'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 1
    Top = 0
    Width = 797
    Height = 37
    BevelInner = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 9
      Top = 8
      Width = 122
      Height = 22
      Caption = 'Entrada de NF'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object SBT_SAIR: TSpeedButton
      Left = 760
      Top = 6
      Width = 25
      Height = 25
      Hint = 'Sair'
      Glyph.Data = {
        76020000424D7602000000000000760000002800000040000000100000000100
        0400000000000002000000000000000000001000000010000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
        03333388888888888F3333000000000003333388888888888F33330111111111
        0333338F333333338F333301BBBBBBBB033333883F3333338F33330111111111
        0333338F333333338F3333011BBBBBBB0333338F83F333338F33330111111111
        0333338F333333338F33330111BBBBBB0333338F383F33338F33330111111111
        0333338F333333338F333301110BBBBB0333338F338F33338F33330111111111
        0333338F333333338F333301110BBBBB0333338F338F33338F33330111111111
        0333338F3333333F8F333301110BBBBB0333338F338F33338F333301111111B1
        0333338F333333838F333301110BBBBB0333338F338F33338F33330111111111
        0333338F333333338F333301110BBBBB0333338F338F33338F33330111111111
        0333338F33FFFFF38F333301110BBBBB0333338F338FF3338F3333011EEEEE11
        0333338F388888F38F33330111B0BBBB0333338F338833338F3333011EEEEE11
        0333338F38FFF8F38F333301110BBBBB0333338F338F33338F3333011EEEEE11
        0333338F388888338F333301110BBBBB0333338F3F8F33338F33330111111111
        0333338F333333338F333301E10BBBBB0333338F8F8F33338F33330111111111
        0333338FFFFFFFFF8F333301EE0BBBBB0333338F888FFFFF8F33330000000000
        0333338888888888833333000000000003333388888888888333}
      NumGlyphs = 4
      ParentShowHint = False
      ShowHint = True
      OnClick = SBT_SAIRClick
    end
    object SpeedButton6: TSpeedButton
      Left = 734
      Top = 6
      Width = 25
      Height = 25
      Hint = 'Localização Rápida de Pedidos'
      Glyph.Data = {
        EE000000424DEE000000000000007600000028000000100000000F0000000100
        0400000000007800000000000000000000001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        888800000888880000080F000888880F00080F000888880F0008000000080000
        000800F000000F00000800F000800F00000800F000800F000008800000000000
        0088880F00080F000888880000080000088888800088800088888880F08880F0
        888888800088800088888888888888888888}
      ParentShowHint = False
      ShowHint = True
    end
    object SpeedButton3: TSpeedButton
      Left = 647
      Top = 6
      Width = 86
      Height = 25
      Caption = 'OC'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000010000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555000000
        000055555F77777777775555000FFFFFFFF0555F777F5FFFF55755000F0F0000
        FFF05F777F7F77775557000F0F0FFFFFFFF0777F7F7F5FFFFFF70F0F0F0F0000
        00F07F7F7F7F777777570F0F0F0FFFFFFFF07F7F7F7F5FFFFFF70F0F0F0F0000
        00F07F7F7F7F777777570F0F0F0FFFFFFFF07F7F7F7F5FFF55570F0F0F0F000F
        FFF07F7F7F7F77755FF70F0F0F0FFFFF00007F7F7F7F5FF577770F0F0F0F00FF
        0F057F7F7F7F77557F750F0F0F0FFFFF00557F7F7F7FFFFF77550F0F0F000000
        05557F7F7F77777775550F0F0000000555557F7F7777777555550F0000000555
        55557F7777777555555500000005555555557777777555555555}
      NumGlyphs = 2
      OnClick = SpeedButton3Click
    end
    object Fonte: TDBNavigator
      Left = 439
      Top = 6
      Width = 208
      Height = 25
      DataSource = DS_NFREC
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
    end
  end
  object TB1: TTabbedNotebook
    Left = 1
    Top = 40
    Width = 795
    Height = 469
    PageIndex = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clActiveCaption
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    TabFont.Charset = ANSI_CHARSET
    TabFont.Color = clNavy
    TabFont.Height = -13
    TabFont.Name = 'MS Sans Serif'
    TabFont.Style = [fsBold]
    TabOrder = 1
    TabStop = False
    OnClick = TB1Click
    object TTabPage
      Left = 4
      Top = 27
      Caption = '    Principal  '
      object Panel3: TPanel
        Left = 1
        Top = 10
        Width = 785
        Height = 417
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
        object Label19: TLabel
          Left = 14
          Top = 91
          Width = 44
          Height = 15
          Caption = 'Entrada'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label11: TLabel
          Left = 343
          Top = 91
          Width = 138
          Height = 15
          Caption = 'Condição de Pagamento'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label23: TLabel
          Left = 13
          Top = 28
          Width = 90
          Height = 15
          Caption = 'Nº Recebimento'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 120
          Top = 28
          Width = 46
          Height = 15
          Caption = 'Nº da NF'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 206
          Top = 27
          Width = 30
          Height = 15
          Caption = 'Série'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label18: TLabel
          Left = 263
          Top = 27
          Width = 65
          Height = 15
          Caption = 'Fornecedor'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 119
          Top = 92
          Width = 32
          Height = 15
          Caption = 'C.F.O.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label32: TLabel
          Left = 572
          Top = 26
          Width = 71
          Height = 15
          Caption = 'Nº do Pedido'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label9: TLabel
          Left = 552
          Top = 91
          Width = 31
          Height = 15
          Caption = 'Local'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 12
          Top = 348
          Width = 110
          Height = 15
          Caption = 'Valor Total do Frete'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label17: TLabel
          Left = 559
          Top = 346
          Width = 107
          Height = 15
          Caption = 'Valor Total da Nota'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label31: TLabel
          Left = 395
          Top = 347
          Width = 104
          Height = 15
          Caption = 'Valor do Desconto'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 270
          Top = 346
          Width = 91
          Height = 15
          Caption = 'Valor do Seguro'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 148
          Top = 347
          Width = 90
          Height = 15
          Caption = 'Valor Despesas'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object SpeedButton5: TSpeedButton
          Left = 685
          Top = 349
          Width = 75
          Height = 36
          Caption = 'Estoque'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            0400000000000001000000000000000000001000000010000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
            555555555555555555555555555555555555555555FF55555555555559055555
            55555555577FF5555555555599905555555555557777F5555555555599905555
            555555557777FF5555555559999905555555555777777F555555559999990555
            5555557777777FF5555557990599905555555777757777F55555790555599055
            55557775555777FF5555555555599905555555555557777F5555555555559905
            555555555555777FF5555555555559905555555555555777FF55555555555579
            05555555555555777FF5555555555557905555555555555777FF555555555555
            5990555555555555577755555555555555555555555555555555}
          NumGlyphs = 2
          ParentFont = False
        end
        object DBEDNumRec: TwwDBEdit
          Left = 13
          Top = 41
          Width = 86
          Height = 23
          Color = clSilver
          DataField = 'NFR_ID'
          DataSource = DS_NFREC
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnEnter = DBEDNumRecEnter
          OnExit = DBEDNumRecExit
        end
        object DBEDNumNf: TwwDBEdit
          Left = 119
          Top = 41
          Width = 81
          Height = 23
          DataField = 'NFR_NF'
          DataSource = DS_NFREC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnEnter = DBEDNumRecEnter
          OnExit = DBEDNumRecExit
        end
        object DBEDSerie: TwwDBEdit
          Left = 205
          Top = 41
          Width = 32
          Height = 23
          CharCase = ecUpperCase
          DataField = 'NFR_SERIE'
          DataSource = DS_NFREC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnEnter = DBEDNumRecEnter
          OnExit = DBEDNumRecExit
        end
        object wwDBEdit9: TwwDBEdit
          Left = 571
          Top = 39
          Width = 81
          Height = 23
          DataField = 'NFR_PED'
          DataSource = DS_NFREC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnEnter = DBEDNumRecEnter
          OnExit = DBEDNumRecExit
        end
        object DBEDDtEntra: TwwDBEdit
          Left = 13
          Top = 104
          Width = 85
          Height = 23
          DataField = 'NFR_DTEMISS'
          DataSource = DS_NFREC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnEnter = DBEDNumRecEnter
          OnExit = DBEDNumRecExit
        end
        object DBEDCfo: TwwDBEdit
          Left = 118
          Top = 105
          Width = 197
          Height = 23
          DataField = 'NFR_CFOP'
          DataSource = DS_NFREC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnEnter = DBEDNumRecEnter
          OnExit = DBEDNumRecExit
        end
        object DBEDValorTotFrete: TwwDBEdit
          Left = 12
          Top = 361
          Width = 94
          Height = 23
          DataField = 'NFR_VLRFRETE'
          DataSource = DS_NFREC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 11
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnEnter = DBEDNumRecEnter
          OnExit = DBEDNumRecExit
        end
        object DBEDValorDesp: TwwDBEdit
          Left = 148
          Top = 360
          Width = 94
          Height = 23
          DataField = 'NFR_VLRDESPESAS'
          DataSource = DS_NFREC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 12
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnEnter = DBEDNumRecEnter
          OnExit = DBEDNumRecExit
        end
        object DBEDValorSeg: TwwDBEdit
          Left = 271
          Top = 359
          Width = 94
          Height = 23
          DataField = 'NFR_VLRSEGURO'
          DataSource = DS_NFREC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 13
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnEnter = DBEDNumRecEnter
          OnExit = DBEDNumRecExit
        end
        object DBEDValorDesc: TwwDBEdit
          Left = 396
          Top = 360
          Width = 107
          Height = 23
          DataField = 'NFR_DESCONTO'
          DataSource = DS_NFREC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 14
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnEnter = DBEDNumRecEnter
          OnExit = DBEDNumRecExit
        end
        object DBEDVlTotNota: TwwDBEdit
          Left = 560
          Top = 359
          Width = 107
          Height = 23
          DataField = 'NFR_TOTALNF'
          DataSource = DS_NFREC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 15
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnEnter = DBEDNumRecEnter
          OnExit = DBEDNumRecExit
        end
        object GroupBox5: TGroupBox
          Left = 7
          Top = 152
          Width = 753
          Height = 68
          Caption = 'ICMS'
          TabOrder = 9
          object Label27: TLabel
            Left = 9
            Top = 14
            Width = 56
            Height = 15
            Caption = 'Aliq. ICMS'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label28: TLabel
            Left = 109
            Top = 15
            Width = 79
            Height = 15
            Caption = 'Cod.Trib.ICMS'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label29: TLabel
            Left = 554
            Top = 13
            Width = 92
            Height = 15
            Caption = 'Base Calc. ICMS'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label33: TLabel
            Left = 662
            Top = 14
            Width = 79
            Height = 15
            Caption = 'Valor do ICMS'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBCB_CFA_TICM: TwwDBComboBox
            Left = 109
            Top = 28
            Width = 420
            Height = 23
            ShowButton = True
            Style = csDropDown
            MapList = True
            AllowClearKey = True
            AutoDropDown = True
            ButtonStyle = cbsEllipsis
            DataField = 'NFR_CODTRIBICMS'
            DataSource = DS_NFREC
            DropDownCount = 8
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ItemHeight = 0
            Items.Strings = (
              'Tributado Integralmente'#9'0'
              'Tributado e ICMS por Substituição Tributária'#9'1'
              'Com Redução de Base de Cálculo'#9'2'
              'Isento ou Não Tributado e ICMS por Substituição Tributária'#9'3'
              'Isento ou Não Tributado'#9'4'
              'Com Suspensão ou Diferimento'#9'5'
              'ICMS Cobrado Anteriormente por Substituição Tributária'#9'6'
              
                'Com Redução de Base de Cálculo e ICMS por Substituição Tributári' +
                'a'#9'7'
              'Outros'#9'9')
            ParentFont = False
            Sorted = False
            TabOrder = 1
            UnboundDataType = wwDefault
            OnEnter = DBCB_CFA_TICMEnter
            OnExit = DBCB_CFA_TICMExit
          end
          object DBEDBaseCalcIcms: TwwDBEdit
            Left = 554
            Top = 27
            Width = 81
            Height = 23
            DataField = 'NFR_BASECALCICMS'
            DataSource = DS_NFREC
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnEnter = DBEDNumRecEnter
            OnExit = DBEDNumRecExit
          end
          object DBEDValorIcms: TwwDBEdit
            Left = 661
            Top = 27
            Width = 80
            Height = 23
            DataField = 'NFR_VALORICMS'
            DataSource = DS_NFREC
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnEnter = DBEDNumRecEnter
            OnExit = DBEDNumRecExit
          end
          object DBEDAliqicms: TwwDBEdit
            Left = 7
            Top = 27
            Width = 81
            Height = 23
            DataField = 'NFR_ALIQICMS'
            DataSource = DS_NFREC
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnEnter = DBEDNumRecEnter
            OnExit = DBEDNumRecExit
          end
        end
        object GroupBox6: TGroupBox
          Left = 8
          Top = 245
          Width = 363
          Height = 60
          Caption = 'IPI'
          TabOrder = 10
          object Label34: TLabel
            Left = 7
            Top = 11
            Width = 64
            Height = 15
            Caption = 'Cod.Trib.IPI'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label35: TLabel
            Left = 141
            Top = 12
            Width = 77
            Height = 15
            Caption = 'Base Calc. IPI'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label36: TLabel
            Left = 253
            Top = 11
            Width = 64
            Height = 15
            Caption = 'Valor do IPI'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBCB_CFA_TIPI: TwwDBComboBox
            Left = 6
            Top = 25
            Width = 107
            Height = 23
            ShowButton = True
            Style = csDropDown
            MapList = True
            AllowClearKey = True
            AutoDropDown = True
            ButtonStyle = cbsEllipsis
            DataField = 'NFR_CODTRIBIPI'
            DataSource = DS_NFREC
            DropDownCount = 8
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ItemHeight = 0
            Items.Strings = (
              'Isentas'#9'I'
              'Outras'#9'O'
              'Tributado'#9'T')
            ParentFont = False
            Sorted = True
            TabOrder = 0
            UnboundDataType = wwDefault
            OnEnter = DBCB_CFA_TICMEnter
            OnExit = DBCB_CFA_TICMExit
          end
          object DBEDBaseCalcIpi: TwwDBEdit
            Left = 140
            Top = 25
            Width = 81
            Height = 23
            DataField = 'NFR_BASECALCIPI'
            DataSource = DS_NFREC
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnEnter = DBEDNumRecEnter
            OnExit = DBEDNumRecExit
          end
          object DBEDVaorIpi: TwwDBEdit
            Left = 253
            Top = 24
            Width = 81
            Height = 23
            DataField = 'NFR_VALORIPI'
            DataSource = DS_NFREC
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnEnter = DBEDNumRecEnter
            OnExit = DBEDNumRecExit
          end
        end
        object DBLCForn: TwwDBLookupCombo
          Left = 262
          Top = 40
          Width = 287
          Height = 23
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'FOR_RAZA'#9'50'#9'FOR_RAZA'#9'F')
          DataField = 'FOR_CODI'
          DataSource = DS_NFREC
          LookupTable = Q_FORN
          LookupField = 'FOR_CODI'
          ParentFont = False
          TabOrder = 3
          AutoDropDown = True
          ShowButton = True
          AllowClearKey = True
          OnEnter = DBLCFornEnter
          OnExit = DBLCFornExit
        end
        object DBLCCond: TwwDBLookupCombo
          Left = 343
          Top = 104
          Width = 185
          Height = 23
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'DESCRICAO'#9'30'#9'DESCRICAO'#9'F')
          DataField = 'COND_PGTO_ID'
          DataSource = DS_NFREC
          LookupTable = Q_COND
          LookupField = 'COND_PGTO_ID'
          ParentFont = False
          TabOrder = 7
          AutoDropDown = True
          ShowButton = True
          AllowClearKey = True
          OnEnter = DBLCFornEnter
          OnExit = DBLCCondExit
        end
        object DBLCLocal: TwwDBLookupCombo
          Left = 552
          Top = 104
          Width = 207
          Height = 23
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'LOC_DESC'#9'20'#9'LOC_DESC'#9'F')
          DataField = 'LOC_ID'
          DataSource = DS_NFREC
          LookupTable = Q_LOCAL
          LookupField = 'LOC_ID'
          ParentFont = False
          TabOrder = 8
          AutoDropDown = True
          ShowButton = True
          AllowClearKey = True
          OnEnter = DBLCFornEnter
          OnExit = DBLCLocalExit
        end
      end
    end
    object TTabPage
      Left = 4
      Top = 27
      Caption = '     Itens       '
      object Panel4: TPanel
        Left = 2
        Top = 7
        Width = 783
        Height = 431
        BevelInner = bvLowered
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clActiveCaption
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object GroupBox2: TGroupBox
          Left = 2
          Top = 2
          Width = 779
          Height = 53
          Align = alTop
          TabOrder = 0
          object Label22: TLabel
            Left = 120
            Top = 12
            Width = 43
            Height = 14
            Caption = 'Nº da NF'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label10: TLabel
            Left = 214
            Top = 12
            Width = 29
            Height = 14
            Caption = 'Série'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label12: TLabel
            Left = 263
            Top = 11
            Width = 64
            Height = 14
            Caption = 'Fornecedor'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label21: TLabel
            Left = 8
            Top = 12
            Width = 87
            Height = 14
            Caption = 'Nº Recebimento'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object wwDBLookupCombo7: TwwDBLookupCombo
            Left = 262
            Top = 23
            Width = 271
            Height = 19
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Small Fonts'
            Font.Style = []
            CharCase = ecUpperCase
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'FOR_CODI'#9'15'#9'Código')
            DataField = 'FOR_CODI'
            DataSource = DS_NFREC
            LookupTable = Q_FORN
            LookupField = 'FOR_CODI'
            Options = [loColLines, loRowLines, loTitles]
            DropDownCount = 4
            Enabled = False
            ParentFont = False
            TabOrder = 0
            AutoDropDown = True
            ShowButton = True
            AllowClearKey = False
          end
          object wwDBEdit4: TwwDBEdit
            Left = 7
            Top = 24
            Width = 89
            Height = 19
            DataField = 'NFR_ID'
            DataSource = DS_NFREC
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Small Fonts'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object wwDBEdit6: TwwDBEdit
            Left = 119
            Top = 24
            Width = 80
            Height = 19
            DataField = 'NFR_NF'
            DataSource = DS_NFREC
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Small Fonts'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object wwDBEdit12: TwwDBEdit
            Left = 214
            Top = 23
            Width = 29
            Height = 19
            DataField = 'NFR_SERIE'
            DataSource = DS_NFREC
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Small Fonts'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
        end
        object GroupBox4: TGroupBox
          Left = 8
          Top = 57
          Width = 768
          Height = 368
          Caption = 'Itens da Nota Fiscal'
          TabOrder = 1
          object GridItens: TwwDBGrid
            Left = 23
            Top = 15
            Width = 716
            Height = 345
            Selected.Strings = (
              'MAT_ID'#9'10'#9'Material'
              'NFRI_ALIQICMS'#9'10'#9'Aliq.ICMS'
              'NFRI_ALIQIPI'#9'10'#9'Aliq.IPI'
              'NFRI_BXTOTAL'#9'1'#9'Bx.Total'
              'NFRI_QTDE'#9'10'#9'Qtde'
              'NFRI_VLRUNIT'#9'10'#9'Vl. Unit.'
              'NFRI_SEQ'#9'10'#9'Seq.'
              'NFRI_VLRIPI'#9'10'#9'Vl. IPI'
              'NFRI_VLRTOTAL'#9'10'#9'Vl. Total')
            IniAttributes.Delimiter = ';;'
            TitleColor = clBtnFace
            FixedCols = 0
            ShowHorzScrollBar = True
            DataSource = DS_NFRECI
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -9
            Font.Name = 'Small Fonts'
            Font.Style = []
            KeyOptions = [dgEnterToTab, dgAllowDelete, dgAllowInsert]
            ParentFont = False
            TabOrder = 0
            TitleAlignment = taCenter
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clMaroon
            TitleFont.Height = -11
            TitleFont.Name = 'Times New Roman'
            TitleFont.Style = []
            TitleLines = 1
            TitleButtons = False
            IndicatorColor = icBlack
          end
          object PanelOC: TPanel
            Left = 75
            Top = 107
            Width = 601
            Height = 235
            BevelInner = bvRaised
            BevelOuter = bvLowered
            BorderStyle = bsSingle
            Color = 14141587
            TabOrder = 1
            Visible = False
            object SpeedButton4: TSpeedButton
              Left = 240
              Top = 200
              Width = 81
              Height = 26
              Caption = 'Cancela'
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                0400000000000001000000000000000000001000000010000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
                555557777F777555F55500000000555055557777777755F75555005500055055
                555577F5777F57555555005550055555555577FF577F5FF55555500550050055
                5555577FF77577FF555555005050110555555577F757777FF555555505099910
                555555FF75777777FF555005550999910555577F5F77777775F5500505509990
                3055577F75F77777575F55005055090B030555775755777575755555555550B0
                B03055555F555757575755550555550B0B335555755555757555555555555550
                BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
                50BB555555555555575F555555555555550B5555555555555575}
              Layout = blGlyphRight
              NumGlyphs = 2
              Visible = False
              OnClick = SpeedButton4Click
            end
            object SpeedButton2: TSpeedButton
              Left = 336
              Top = 200
              Width = 81
              Height = 26
              Caption = '&Confirma'
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                0400000000000001000000000000000000001000000010000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
                555555555555555555555555555555555555555555FF55555555555559055555
                55555555577FF5555555555599905555555555557777F5555555555599905555
                555555557777FF5555555559999905555555555777777F555555559999990555
                5555557777777FF5555557990599905555555777757777F55555790555599055
                55557775555777FF5555555555599905555555555557777F5555555555559905
                555555555555777FF5555555555559905555555555555777FF55555555555579
                05555555555555777FF5555555555557905555555555555777FF555555555555
                5990555555555555577755555555555555555555555555555555}
              Layout = blGlyphRight
              NumGlyphs = 2
              Visible = False
              OnClick = SpeedButton2Click
            end
            object Btn_seleciona: TSpeedButton
              Left = 24
              Top = 200
              Width = 125
              Height = 26
              Caption = '&Seleciona Tudo'
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000120B0000120B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500000000055
                555557777777775F55550FFFFFFFFF0555557F5555555F7FFF5F0FEEEEEE0000
                05007F555555777775770FFFFFF0BFBFB00E7F5F5557FFF557770F0EEEE000FB
                FB0E7F75FF57775555770FF00F0FBFBFBF0E7F57757FFFF555770FE0B00000FB
                FB0E7F575777775555770FFF0FBFBFBFBF0E7F5575FFFFFFF5770FEEE0000000
                FB0E7F555777777755770FFFFF0B00BFB0007F55557577FFF7770FEEEEE0B000
                05557F555557577775550FFFFFFF0B0555557FF5F5F57575F55500F0F0F0F0B0
                555577F7F7F7F7F75F5550707070700B055557F7F7F7F7757FF5507070707050
                9055575757575757775505050505055505557575757575557555}
              Layout = blGlyphRight
              NumGlyphs = 2
              Visible = False
            end
            object wwDBGrid1: TwwDBGrid
              Left = 21
              Top = 19
              Width = 167
              Height = 178
              Hint = 'Pressione Duplo Clique para Selecionar'
              Selected.Strings = (
                'ORD_ID'#9'10'#9'O.C.')
              IniAttributes.Delimiter = ';;'
              TitleColor = clBtnFace
              FixedCols = 0
              ShowHorzScrollBar = True
              Ctl3D = True
              DataSource = DS_OC
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
              ParentCtl3D = False
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              TitleAlignment = taLeftJustify
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clNavy
              TitleFont.Height = -11
              TitleFont.Name = 'Arial'
              TitleFont.Style = [fsBold, fsItalic]
              TitleLines = 1
              TitleButtons = False
              Visible = False
              IndicatorColor = icBlack
            end
            object wwDBGrid3: TwwDBGrid
              Left = 197
              Top = 17
              Width = 382
              Height = 177
              Hint = 'Pressione Duplo Clique para Selecionar'
              Selected.Strings = (
                'alterar'#9'4'#9'>>'
                'MAT_DESC'#9'35'#9'Material'
                'QTDE_COMP'#9'15'#9'Qtde')
              IniAttributes.Delimiter = ';;'
              TitleColor = clBtnFace
              FixedCols = 0
              ShowHorzScrollBar = True
              Ctl3D = True
              DataSource = DS_OCI
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              TitleAlignment = taLeftJustify
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clNavy
              TitleFont.Height = -11
              TitleFont.Name = 'Arial'
              TitleFont.Style = [fsBold, fsItalic]
              TitleLines = 1
              TitleButtons = False
              Visible = False
              IndicatorColor = icBlack
            end
            object wwDBEdit1: TwwDBEdit
              Left = 432
              Top = 80
              Width = 73
              Height = 23
              DataField = 'QTDE_COMP'
              DataSource = DS_OCI
              TabOrder = 2
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
          end
        end
      end
    end
    object TTabPage
      Left = 4
      Top = 27
      Caption = '   Vencimentos   '
      object Panel5: TPanel
        Left = 2
        Top = 7
        Width = 783
        Height = 431
        BevelInner = bvLowered
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clActiveCaption
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object GroupBox7: TGroupBox
          Left = 2
          Top = 2
          Width = 779
          Height = 61
          Align = alTop
          TabOrder = 0
          object Label24: TLabel
            Left = 120
            Top = 12
            Width = 43
            Height = 14
            Caption = 'Nº da NF'
            FocusControl = DBEdit18
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label25: TLabel
            Left = 214
            Top = 12
            Width = 29
            Height = 14
            Caption = 'Série'
            FocusControl = DBEdit20
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label26: TLabel
            Left = 263
            Top = 12
            Width = 64
            Height = 14
            Caption = 'Fornecedor'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label5: TLabel
            Left = 8
            Top = 12
            Width = 87
            Height = 14
            Caption = 'Nº Recebimento'
            FocusControl = DBEdit22
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBEdit18: TDBEdit
            Left = 118
            Top = 26
            Width = 85
            Height = 19
            DataField = 'NFR_NF'
            DataSource = DS_NFREC
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Small Fonts'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
          end
          object DBEdit20: TDBEdit
            Left = 212
            Top = 26
            Width = 32
            Height = 19
            Ctl3D = True
            DataField = 'NFR_SERIE'
            DataSource = DS_NFREC
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Small Fonts'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 1
          end
          object DBEdit21: TDBEdit
            Left = 263
            Top = 26
            Width = 269
            Height = 19
            Ctl3D = True
            DataField = 'FOR_CODI'
            DataSource = DS_NFREC
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Small Fonts'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 2
          end
          object DBEdit22: TDBEdit
            Left = 7
            Top = 26
            Width = 85
            Height = 19
            DataField = 'NFR_ID'
            DataSource = DS_NFREC
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Small Fonts'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 3
          end
        end
        object GroupBox1: TGroupBox
          Left = 88
          Top = 121
          Width = 617
          Height = 266
          Caption = 'Vencimentos da Nota Fiscal'
          TabOrder = 1
          object wwDBGrid2: TwwDBGrid
            Left = 130
            Top = 14
            Width = 346
            Height = 248
            Selected.Strings = (
              'RecVenNf_Vcto'#9'15'#9'Vencimento'
              'RecVeNf_Valor'#9'16'#9'Valor'
              'NumeroCp'#9'10'#9'Número do CP')
            IniAttributes.Delimiter = ';;'
            TitleColor = clBtnFace
            FixedCols = 0
            ShowHorzScrollBar = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            TitleAlignment = taLeftJustify
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clMaroon
            TitleFont.Height = -12
            TitleFont.Name = 'Arial'
            TitleFont.Style = []
            TitleLines = 1
            TitleButtons = False
            IndicatorColor = icBlack
          end
        end
      end
    end
  end
  object Panel6: TPanel
    Left = 0
    Top = 508
    Width = 798
    Height = 33
    BevelInner = bvLowered
    TabOrder = 2
    object LBL_STATUS: TLabel
      Left = 355
      Top = 9
      Width = 68
      Height = 13
      Alignment = taCenter
      Caption = 'LBL_STATUS'
    end
  end
  object Q_NFREC: TwwQuery
    CachedUpdates = True
    AfterPost = Q_NFRECAfterPost
    BeforeDelete = Q_NFRECBeforeDelete
    AfterDelete = Q_NFRECAfterDelete
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM NF_RECEBE'
      'ORDER BY NFR_ID')
    UpdateObject = UPD_NFREC
    ValidateWithMask = True
    Left = 365
    Top = 43
    object Q_NFRECNFR_ID: TAutoIncField
      FieldName = 'NFR_ID'
      Origin = 'CURA.NF_RECEBE.NFR_ID'
    end
    object Q_NFRECFOR_CODI: TStringField
      FieldName = 'FOR_CODI'
      Origin = 'CURA.NF_RECEBE.FOR_CODI'
      FixedChar = True
      Size = 15
    end
    object Q_NFRECCOND_PGTO_ID: TIntegerField
      FieldName = 'COND_PGTO_ID'
      Origin = 'CURA.NF_RECEBE.COND_PGTO_ID'
    end
    object Q_NFRECLOC_ID: TIntegerField
      FieldName = 'LOC_ID'
      Origin = 'CURA.NF_RECEBE.LOC_ID'
    end
    object Q_NFRECNFR_CFOP: TStringField
      FieldName = 'NFR_CFOP'
      Origin = 'CURA.NF_RECEBE.NFR_CFOP'
      FixedChar = True
      Size = 4
    end
    object Q_NFRECNFR_DTEMISS: TDateTimeField
      FieldName = 'NFR_DTEMISS'
      Origin = 'CURA.NF_RECEBE.NFR_DTEMISS'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '99/99/9999'
    end
    object Q_NFRECNFR_ALIQICMS: TFloatField
      FieldName = 'NFR_ALIQICMS'
      Origin = 'CURA.NF_RECEBE.NFR_ALIQICMS'
      DisplayFormat = '###,###,##0.0'
      EditFormat = '###,###,##0.0'
    end
    object Q_NFRECNFR_CODTRIBICMS: TStringField
      FieldName = 'NFR_CODTRIBICMS'
      Origin = 'CURA.NF_RECEBE.NFR_CODTRIBICMS'
      FixedChar = True
      Size = 1
    end
    object Q_NFRECNFR_BASECALCICMS: TFloatField
      FieldName = 'NFR_BASECALCICMS'
      Origin = 'CURA.NF_RECEBE.NFR_BASECALCICMS'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_NFRECNFR_VALORICMS: TFloatField
      FieldName = 'NFR_VALORICMS'
      Origin = 'CURA.NF_RECEBE.NFR_VALORICMS'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_NFRECNFR_CODTRIBIPI: TStringField
      FieldName = 'NFR_CODTRIBIPI'
      Origin = 'CURA.NF_RECEBE.NFR_CODTRIBIPI'
      FixedChar = True
      Size = 1
    end
    object Q_NFRECNFR_BASECALCIPI: TFloatField
      FieldName = 'NFR_BASECALCIPI'
      Origin = 'CURA.NF_RECEBE.NFR_BASECALCIPI'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_NFRECNFR_VALORIPI: TFloatField
      FieldName = 'NFR_VALORIPI'
      Origin = 'CURA.NF_RECEBE.NFR_VALORIPI'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_NFRECNFR_VLRFRETE: TFloatField
      FieldName = 'NFR_VLRFRETE'
      Origin = 'CURA.NF_RECEBE.NFR_VLRFRETE'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_NFRECNFR_VLRDESPESAS: TFloatField
      FieldName = 'NFR_VLRDESPESAS'
      Origin = 'CURA.NF_RECEBE.NFR_VLRDESPESAS'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_NFRECNFR_VLRSEGURO: TFloatField
      FieldName = 'NFR_VLRSEGURO'
      Origin = 'CURA.NF_RECEBE.NFR_VLRSEGURO'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_NFRECNFR_DESCONTO: TFloatField
      FieldName = 'NFR_DESCONTO'
      Origin = 'CURA.NF_RECEBE.NFR_DESCONTO'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_NFRECNFR_TOTALNF: TFloatField
      FieldName = 'NFR_TOTALNF'
      Origin = 'CURA.NF_RECEBE.NFR_TOTALNF'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_NFRECNFR_NF: TStringField
      FieldName = 'NFR_NF'
      Origin = 'CURA.NF_RECEBE.FOR_CODI'
      FixedChar = True
      Size = 10
    end
    object Q_NFRECNFR_SERIE: TStringField
      FieldName = 'NFR_SERIE'
      Origin = 'CURA.NF_RECEBE.COND_PGTO_ID'
      FixedChar = True
      Size = 3
    end
    object Q_NFRECNFR_PED: TStringField
      FieldName = 'NFR_PED'
      Origin = 'CURA.NF_RECEBE.NFR_CFOP'
      FixedChar = True
      Size = 10
    end
  end
  object DS_NFREC: TwwDataSource
    DataSet = Q_NFREC
    OnStateChange = DS_NFRECStateChange
    Left = 445
    Top = 43
  end
  object UPD_NFREC: TUpdateSQL
    ModifySQL.Strings = (
      'update NF_RECEBE'
      'set'
      '  NFR_NF = :NFR_NF,'
      '  NFR_SERIE = :NFR_SERIE,'
      '  FOR_CODI = :FOR_CODI,'
      '  COND_PGTO_ID = :COND_PGTO_ID,'
      '  LOC_ID = :LOC_ID,'
      '  NFR_CFOP = :NFR_CFOP,'
      '  NFR_DTEMISS = :NFR_DTEMISS,'
      '  NFR_ALIQICMS = :NFR_ALIQICMS,'
      '  NFR_CODTRIBICMS = :NFR_CODTRIBICMS,'
      '  NFR_BASECALCICMS = :NFR_BASECALCICMS,'
      '  NFR_VALORICMS = :NFR_VALORICMS,'
      '  NFR_CODTRIBIPI = :NFR_CODTRIBIPI,'
      '  NFR_BASECALCIPI = :NFR_BASECALCIPI,'
      '  NFR_VALORIPI = :NFR_VALORIPI,'
      '  NFR_VLRFRETE = :NFR_VLRFRETE,'
      '  NFR_VLRDESPESAS = :NFR_VLRDESPESAS,'
      '  NFR_VLRSEGURO = :NFR_VLRSEGURO,'
      '  NFR_DESCONTO = :NFR_DESCONTO,'
      '  NFR_TOTALNF = :NFR_TOTALNF'
      'where'
      '  NFR_ID = :OLD_NFR_ID')
    InsertSQL.Strings = (
      'insert into NF_RECEBE'
      
        '  (NFR_NF, NFR_SERIE, FOR_CODI, COND_PGTO_ID, LOC_ID, NFR_CFOP, ' +
        'NFR_DTEMISS, '
      
        '   NFR_ALIQICMS, NFR_CODTRIBICMS, NFR_BASECALCICMS, NFR_VALORICM' +
        'S, NFR_CODTRIBIPI, '
      
        '   NFR_BASECALCIPI, NFR_VALORIPI, NFR_VLRFRETE, NFR_VLRDESPESAS,' +
        ' NFR_VLRSEGURO, '
      '   NFR_DESCONTO, NFR_TOTALNF)'
      'values'
      
        '  (:NFR_NF, :NFR_SERIE, :FOR_CODI, :COND_PGTO_ID, :LOC_ID, :NFR_' +
        'CFOP, :NFR_DTEMISS, '
      
        '   :NFR_ALIQICMS, :NFR_CODTRIBICMS, :NFR_BASECALCICMS, :NFR_VALO' +
        'RICMS, '
      
        '   :NFR_CODTRIBIPI, :NFR_BASECALCIPI, :NFR_VALORIPI, :NFR_VLRFRE' +
        'TE, :NFR_VLRDESPESAS, '
      '   :NFR_VLRSEGURO, :NFR_DESCONTO, :NFR_TOTALNF)')
    DeleteSQL.Strings = (
      'delete from NF_RECEBE'
      'where'
      '  NFR_ID = :OLD_NFR_ID')
    Left = 509
    Top = 43
  end
  object Q_NFRECI: TwwQuery
    CachedUpdates = True
    OnNewRecord = Q_NFRECINewRecord
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM NF_RECEBE_ITEM'
      'ORDER BY NFRI_ID')
    UpdateObject = UPD_NFRECI
    ValidateWithMask = True
    Left = 607
    Top = 43
    object Q_NFRECIMAT_ID: TIntegerField
      DisplayLabel = 'Material'
      DisplayWidth = 10
      FieldName = 'MAT_ID'
      Origin = 'CURA.NF_RECEBE_ITEM.MAT_ID'
    end
    object Q_NFRECINFRI_ALIQICMS: TFloatField
      DisplayLabel = 'Aliq.ICMS'
      DisplayWidth = 10
      FieldName = 'NFRI_ALIQICMS'
      Origin = 'CURA.NF_RECEBE_ITEM.NFRI_ALIQICMS'
    end
    object Q_NFRECINFRI_ALIQIPI: TFloatField
      DisplayLabel = 'Aliq.IPI'
      DisplayWidth = 10
      FieldName = 'NFRI_ALIQIPI'
      Origin = 'CURA.NF_RECEBE_ITEM.NFRI_ALIQIPI'
    end
    object Q_NFRECINFRI_BXTOTAL: TStringField
      DisplayLabel = 'Bx.Total'
      DisplayWidth = 1
      FieldName = 'NFRI_BXTOTAL'
      Origin = 'CURA.NF_RECEBE_ITEM.NFRI_BXTOTAL'
      FixedChar = True
      Size = 1
    end
    object Q_NFRECINFRI_QTDE: TIntegerField
      DisplayLabel = 'Qtde'
      DisplayWidth = 10
      FieldName = 'NFRI_QTDE'
      Origin = 'CURA.NF_RECEBE_ITEM.NFRI_QTDE'
    end
    object Q_NFRECINFRI_VLRUNIT: TFloatField
      DisplayLabel = 'Vl. Unit.'
      DisplayWidth = 10
      FieldName = 'NFRI_VLRUNIT'
      Origin = 'CURA.NF_RECEBE_ITEM.NFRI_VLRUNIT'
    end
    object Q_NFRECINFRI_SEQ: TIntegerField
      DisplayLabel = 'Seq.'
      DisplayWidth = 10
      FieldName = 'NFRI_SEQ'
      Origin = 'CURA.NF_RECEBE_ITEM.NFRI_SEQ'
    end
    object Q_NFRECINFRI_VLRIPI: TFloatField
      DisplayLabel = 'Vl. IPI'
      DisplayWidth = 10
      FieldName = 'NFRI_VLRIPI'
      Origin = 'CURA.NF_RECEBE_ITEM.NFRI_VLRIPI'
    end
    object Q_NFRECINFRI_VLRTOTAL: TFloatField
      DisplayLabel = 'Vl. Total'
      DisplayWidth = 10
      FieldName = 'NFRI_VLRTOTAL'
      Origin = 'CURA.NF_RECEBE_ITEM.NFRI_VLRTOTAL'
    end
    object Q_NFRECINFRI_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'NFRI_ID'
      Origin = 'CURA.NF_RECEBE_ITEM.NFRI_ID'
      Visible = False
    end
    object Q_NFRECINFR_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'NFR_ID'
      Origin = 'CURA.NF_RECEBE_ITEM.NFR_ID'
      Visible = False
    end
  end
  object DS_NFRECI: TwwDataSource
    DataSet = Q_NFRECI
    OnStateChange = DS_NFRECIStateChange
    Left = 671
    Top = 43
  end
  object UPD_NFRECI: TUpdateSQL
    ModifySQL.Strings = (
      'update NF_RECEBE_ITEM'
      'set'
      '  NFRI_SEQ = :NFRI_SEQ,'
      '  NFR_ID = :NFR_ID,'
      '  MAT_ID = :MAT_ID,'
      '  NFRI_QTDE = :NFRI_QTDE,'
      '  NFRI_VLRUNIT = :NFRI_VLRUNIT,'
      '  NFRI_ALIQICMS = :NFRI_ALIQICMS,'
      '  NFRI_ALIQIPI = :NFRI_ALIQIPI,'
      '  NFRI_VLRIPI = :NFRI_VLRIPI,'
      '  NFRI_VLRTOTAL = :NFRI_VLRTOTAL,'
      '  NFRI_BXTOTAL = :NFRI_BXTOTAL'
      'where'
      '  NFRI_ID = :OLD_NFRI_ID')
    InsertSQL.Strings = (
      'insert into NF_RECEBE_ITEM'
      
        '  (NFRI_SEQ, NFR_ID, MAT_ID, NFRI_QTDE, NFRI_VLRUNIT, NFRI_ALIQI' +
        'CMS, NFRI_ALIQIPI, '
      '   NFRI_VLRIPI, NFRI_VLRTOTAL, NFRI_BXTOTAL)'
      'values'
      
        '  (:NFRI_SEQ, :NFR_ID, :MAT_ID, :NFRI_QTDE, :NFRI_VLRUNIT, :NFRI' +
        '_ALIQICMS, '
      '   :NFRI_ALIQIPI, :NFRI_VLRIPI, :NFRI_VLRTOTAL, :NFRI_BXTOTAL)')
    DeleteSQL.Strings = (
      'delete from NF_RECEBE_ITEM'
      'where'
      '  NFRI_ID = :OLD_NFRI_ID')
    Left = 743
    Top = 43
  end
  object Q_FORN: TwwQuery
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'SELECT FOR_CODI,FOR_RAZA FROM CPAFORN'
      'ORDER BY FOR_RAZA')
    ValidateWithMask = True
    Left = 261
    Top = 195
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
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'SELECT COND_PGTO_ID, DESCRICAO FROM CONDICAO_PAGTO'
      'ORDER BY DESCRICAO'
      ''
      ''
      '')
    ValidateWithMask = True
    Left = 324
    Top = 195
    object Q_CONDDESCRICAO: TStringField
      DisplayWidth = 30
      FieldName = 'DESCRICAO'
      Origin = 'CURA.CONDICAO_PAGTO.DESCRICAO'
      FixedChar = True
      Size = 30
    end
    object Q_CONDCOND_PGTO_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'COND_PGTO_ID'
      Origin = 'CURA.CONDICAO_PAGTO.COND_PGTO_ID'
      Visible = False
    end
  end
  object Q_LOCAL: TwwQuery
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'SELECT * FROM LOCAIS'
      'ORDER BY LOC_DESC')
    ValidateWithMask = True
    Left = 376
    Top = 196
    object Q_LOCALLOC_DESC: TStringField
      DisplayWidth = 20
      FieldName = 'LOC_DESC'
      Origin = 'CURA.LOCAIS.LOC_DESC'
      FixedChar = True
    end
    object Q_LOCALLOC_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'LOC_ID'
      Origin = 'CURA.LOCAIS.LOC_ID'
      Visible = False
    end
  end
  object Q_OC: TwwQuery
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    DataSource = DS_NFREC
    SQL.Strings = (
      'SELECT ORD_ID FROM ORDEM_COMPRA'
      'WHERE STATUS IN ('#39'A'#39','#39'P'#39')'
      'AND FOR_CODI = :FOR_CODI'
      'ORDER BY ORD_ID DESC'
      '          ')
    ValidateWithMask = True
    Left = 503
    Top = 195
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'FOR_CODI'
        ParamType = ptUnknown
      end>
    object Q_OCORD_ID: TAutoIncField
      DisplayLabel = 'O.C.'
      DisplayWidth = 10
      FieldName = 'ORD_ID'
    end
  end
  object DS_OC: TwwDataSource
    DataSet = Q_OC
    Left = 543
    Top = 195
  end
  object Q_OCI: TwwQuery
    CachedUpdates = True
    AfterPost = Q_OCIAfterPost
    AfterDelete = Q_OCIAfterDelete
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    DataSource = DS_OC
    RequestLive = True
    SQL.Strings = (
      'SELECT A.MAT_DESC,B.*'
      'FROM MATERIAIS A,'
      '           ORDEM_COMPRAITEM B  '
      'WHERE B.ORD_ID = :ORD_ID'
      'and   a.mat_id = b.mat_id'
      'ORDER BY A.MAT_DESC')
    UpdateObject = UPD_OCI
    ControlType.Strings = (
      'alterar;CheckBox;S;N'
      'QTDE_COMP;CustomEdit;wwDBEdit1')
    ValidateWithMask = True
    Left = 463
    Top = 371
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'ORD_ID'
        ParamType = ptUnknown
      end>
    object Q_OCIalterar: TStringField
      DisplayLabel = '>>'
      DisplayWidth = 4
      FieldName = 'alterar'
      FixedChar = True
      Size = 1
    end
    object Q_OCIMAT_DESC: TStringField
      DisplayLabel = 'Material'
      DisplayWidth = 35
      FieldName = 'MAT_DESC'
      Origin = 'CURA.MATERIAIS.MAT_DESC'
      FixedChar = True
      Size = 60
    end
    object Q_OCIQTDE_COMP: TFloatField
      DisplayLabel = 'Qtde'
      DisplayWidth = 15
      FieldName = 'QTDE_COMP'
      Origin = 'CURA.ORDEM_COMPRAITEM.QTDE_COMP'
      OnChange = Q_OCIQTDE_COMPChange
    end
    object Q_OCIMAT_ID: TIntegerField
      FieldName = 'MAT_ID'
      Origin = 'CURA.ORDEM_COMPRAITEM.MAT_ID'
      Visible = False
    end
    object Q_OCIMATMARCA_ID: TIntegerField
      FieldName = 'MATMARCA_ID'
      Origin = 'CURA.ORDEM_COMPRAITEM.MATMARCA_ID'
      Visible = False
    end
    object Q_OCIUNI_ID: TIntegerField
      FieldName = 'UNI_ID'
      Origin = 'CURA.ORDEM_COMPRAITEM.UNI_ID'
      Visible = False
    end
    object Q_OCIiord_id: TAutoIncField
      FieldName = 'iord_id'
      Visible = False
    end
    object Q_OCIVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = 'CURA.ORDEM_COMPRAITEM.CONVERSAO'
      Visible = False
    end
    object Q_OCIVL_TOTITEM: TFloatField
      FieldName = 'VL_TOTITEM'
      Origin = 'CURA.ORDEM_COMPRAITEM.UNI_ID'
      Visible = False
    end
    object Q_OCIPRECO_UNIT: TFloatField
      FieldName = 'PRECO_UNIT'
      Origin = 'CURA.ORDEM_COMPRAITEM.MATMARCA_ID'
      Visible = False
    end
    object Q_OCIIPI: TFloatField
      FieldName = 'IPI'
      Origin = 'CURA.ORDEM_COMPRAITEM.VL_IPI'
      Visible = False
    end
    object Q_OCIVL_IPI: TFloatField
      FieldName = 'VL_IPI'
      Origin = 'CURA.ORDEM_COMPRAITEM.ALTERAR'
      Visible = False
    end
    object Q_OCIMARC_ID: TIntegerField
      FieldName = 'MARC_ID'
      Origin = 'CURA.ORDEM_COMPRAITEM.UNI_COMP_ID'
      Visible = False
    end
    object Q_OCIORD_ID: TIntegerField
      FieldName = 'ORD_ID'
      Origin = 'CURA.ORDEM_COMPRAITEM.MAT_ID'
      Visible = False
    end
    object Q_OCIUNI_COMP_ID: TStringField
      FieldName = 'UNI_COMP_ID'
      Origin = 'CURA.ORDEM_COMPRAITEM.UNI_ESTQ_ID'
      Visible = False
      FixedChar = True
      Size = 6
    end
    object Q_OCIUNI_ESTQ_ID: TStringField
      FieldName = 'UNI_ESTQ_ID'
      Origin = 'CURA.ORDEM_COMPRAITEM.QTDE'
      Visible = False
      FixedChar = True
      Size = 6
    end
    object Q_OCIQTDE: TFloatField
      FieldName = 'QTDE'
      Origin = 'CURA.ORDEM_COMPRAITEM.QTDE_REC'
      Visible = False
    end
    object Q_OCIQTDE_REC: TFloatField
      FieldName = 'QTDE_REC'
      Origin = 'CURA.ORDEM_COMPRAITEM.QTDE_COMP'
      Visible = False
    end
    object Q_OCIQTDE_COMP_REC: TFloatField
      FieldName = 'QTDE_COMP_REC'
      Origin = 'CURA.ORDEM_COMPRAITEM.QTDE_ESTQ_COMP'
      Visible = False
    end
    object Q_OCIQTDE_ESTQ_COMP: TFloatField
      FieldName = 'QTDE_ESTQ_COMP'
      Origin = 'CURA.ORDEM_COMPRAITEM.PRECO_UNIT'
      Visible = False
    end
    object Q_OCICONVERSAO: TFloatField
      FieldName = 'CONVERSAO'
      Origin = 'CURA.ORDEM_COMPRAITEM.IPI'
      Visible = False
    end
    object Q_OCINFIS: TIntegerField
      FieldName = 'NFIS'
      Origin = 'CURA.ORDEM_COMPRAITEM.REC_ID'
      Visible = False
    end
    object Q_OCIREC_ID: TIntegerField
      FieldName = 'REC_ID'
      Origin = 'CURA.ORDEM_COMPRAITEM.STATUS'
      Visible = False
    end
    object Q_OCISTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'CURA.ORDEM_COMPRAITEM.USU_CANCEL'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_OCIUSU_CANCEL: TStringField
      FieldName = 'USU_CANCEL'
      Origin = 'CURA.ORDEM_COMPRAITEM.DT_CANCEL'
      Visible = False
      FixedChar = True
    end
    object Q_OCIDT_CANCEL: TDateTimeField
      FieldName = 'DT_CANCEL'
      Origin = 'CURA.ORDEM_COMPRAITEM.VL_TOTITEM'
      Visible = False
    end
  end
  object DS_OCI: TwwDataSource
    DataSet = Q_OCI
    Left = 647
    Top = 179
  end
  object UPD_OCI: TUpdateSQL
    ModifySQL.Strings = (
      'update ORDEM_COMPRAITEM'
      'set'
      '  QTDE_COMP = :QTDE_COMP,'
      '  ALTERAR = :ALTERAR'
      'where'
      '  IORD_ID = :OLD_IORD_ID and'
      '  MAT_ID = :OLD_MAT_ID and'
      '  MARC_ID = :OLD_MARC_ID and'
      '  UNI_COMP_ID = :OLD_UNI_COMP_ID and'
      '  UNI_ESTQ_ID = :OLD_UNI_ESTQ_ID and'
      '  QTDE = :OLD_QTDE and'
      '  QTDE_REC = :OLD_QTDE_REC and'
      '  QTDE_COMP = :OLD_QTDE_COMP and'
      '  QTDE_COMP_REC = :OLD_QTDE_COMP_REC and'
      '  QTDE_ESTQ_COMP = :OLD_QTDE_ESTQ_COMP and'
      '  PRECO_UNIT = :OLD_PRECO_UNIT and'
      '  MATMARCA_ID = :OLD_MATMARCA_ID and'
      '  VALOR = :OLD_VALOR and'
      '  CONVERSAO = :OLD_CONVERSAO and'
      '  IPI = :OLD_IPI and'
      '  VL_IPI = :OLD_VL_IPI and'
      '  ALTERAR = :OLD_ALTERAR and'
      '  NFIS = :OLD_NFIS and'
      '  REC_ID = :OLD_REC_ID and'
      '  STATUS = :OLD_STATUS and'
      '  USU_CANCEL = :OLD_USU_CANCEL and'
      '  DT_CANCEL = :OLD_DT_CANCEL and'
      '  VL_TOTITEM = :OLD_VL_TOTITEM and'
      '  UNI_ID = :OLD_UNI_ID')
    InsertSQL.Strings = (
      'insert into ORDEM_COMPRAITEM'
      '  (QTDE_COMP, ALTERAR)'
      'values'
      '  (:QTDE_COMP, :ALTERAR)')
    DeleteSQL.Strings = (
      'delete from ORDEM_COMPRAITEM'
      'where'
      '  IORD_ID = :OLD_IORD_ID and'
      '  MAT_ID = :OLD_MAT_ID and'
      '  MARC_ID = :OLD_MARC_ID and'
      '  UNI_COMP_ID = :OLD_UNI_COMP_ID and'
      '  UNI_ESTQ_ID = :OLD_UNI_ESTQ_ID and'
      '  QTDE = :OLD_QTDE and'
      '  QTDE_REC = :OLD_QTDE_REC and'
      '  QTDE_COMP = :OLD_QTDE_COMP and'
      '  QTDE_COMP_REC = :OLD_QTDE_COMP_REC and'
      '  QTDE_ESTQ_COMP = :OLD_QTDE_ESTQ_COMP and'
      '  PRECO_UNIT = :OLD_PRECO_UNIT and'
      '  MATMARCA_ID = :OLD_MATMARCA_ID and'
      '  VALOR = :OLD_VALOR and'
      '  CONVERSAO = :OLD_CONVERSAO and'
      '  IPI = :OLD_IPI and'
      '  VL_IPI = :OLD_VL_IPI and'
      '  ALTERAR = :OLD_ALTERAR and'
      '  NFIS = :OLD_NFIS and'
      '  REC_ID = :OLD_REC_ID and'
      '  STATUS = :OLD_STATUS and'
      '  USU_CANCEL = :OLD_USU_CANCEL and'
      '  DT_CANCEL = :OLD_DT_CANCEL and'
      '  VL_TOTITEM = :OLD_VL_TOTITEM and'
      '  UNI_ID = :OLD_UNI_ID')
    Left = 623
    Top = 355
  end
  object Q_AUX: TwwQuery
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    ValidateWithMask = True
    Left = 447
    Top = 283
  end
end
