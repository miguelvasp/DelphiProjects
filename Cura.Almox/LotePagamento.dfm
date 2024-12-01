object FLotePagamento: TFLotePagamento
  Left = 2
  Top = 3
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Lote Pagamento'
  ClientHeight = 543
  ClientWidth = 792
  Color = clBtnFace
  Constraints.MaxHeight = 579
  Constraints.MaxWidth = 800
  Constraints.MinHeight = 572
  Constraints.MinWidth = 800
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnPaint = FormPaint
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 792
    Height = 37
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 9
      Top = 8
      Width = 125
      Height = 19
      Caption = 'Lote Pagamento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SBT_SAIR: TSpeedButton
      Left = 756
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
    object SpeedButton2: TSpeedButton
      Left = 653
      Top = 6
      Width = 78
      Height = 25
      Hint = 'Retorna ao Número do Lote'
      Caption = 'Detalhes'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333FFFFFFFFFFFFFFF000000000000000077777777777777770FFFFFFFFFFF
        FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
        FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
        FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
        FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
        FFF07FFFFFFFFFFFFFF70CCCCCCCCCCCCCC07777777777777777088CCCCCCCCC
        C8807FF7777777777FF700000000000000007777777777777777333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton2Click
    end
    object SBT_REFR: TSpeedButton
      Left = 731
      Top = 6
      Width = 25
      Height = 25
      Hint = 'Atualiza Base de Dados'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000010000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
        3333333777333777FF33339993707399933333773337F3777FF3399933000339
        9933377333777F3377F3399333707333993337733337333337FF993333333333
        399377F33333F333377F993333303333399377F33337FF333373993333707333
        333377F333777F333333993333101333333377F333777F3FFFFF993333000399
        999377FF33777F77777F3993330003399993373FF3777F37777F399933000333
        99933773FF777F3F777F339993707399999333773F373F77777F333999999999
        3393333777333777337333333999993333333333377777333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SBT_REFRClick
    end
    object Fonte: TDBNavigator
      Left = 454
      Top = 6
      Width = 198
      Height = 25
      DataSource = DS_LotePaga
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
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
      BeforeAction = FonteBeforeAction
      OnClick = FonteClick
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 517
    Width = 792
    Height = 26
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 1
    object LBL_STATUS: TLabel
      Left = 377
      Top = 6
      Width = 68
      Height = 13
      Alignment = taCenter
      Caption = 'LBL_STATUS'
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 37
    Width = 792
    Height = 480
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 2
    object SpeedButton4: TSpeedButton
      Left = 677
      Top = 8
      Width = 97
      Height = 27
      Hint = 'Acessa Tela de Pagamentos'
      Caption = '&Pagamento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        55555555FFFFFFFFFF55555000000000055555577777777775F55500B8B8B8B8
        B05555775F555555575F550F0B8B8B8B8B05557F75F555555575550BF0B8B8B8
        B8B0557F575FFFFFFFF7550FBF0000000000557F557777777777500BFBFBFBFB
        0555577F555555557F550B0FBFBFBFBF05557F7F555555FF75550F0BFBFBF000
        55557F75F555577755550BF0BFBF0B0555557F575FFF757F55550FB700007F05
        55557F557777557F55550BFBFBFBFB0555557F555555557F55550FBFBFBFBF05
        55557FFFFFFFFF7555550000000000555555777777777755555550FBFB055555
        5555575FFF755555555557000075555555555577775555555555}
      NumGlyphs = 2
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton4Click
    end
    object SpeedButton3: TSpeedButton
      Left = 677
      Top = 43
      Width = 97
      Height = 25
      Hint = 'Item do Lote de Recebimento'
      Caption = 'Atualização'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00337000000000
        73333337777777773F333308888888880333337F3F3F3FFF7F33330808089998
        0333337F737377737F333308888888880333337F3F3F3F3F7F33330808080808
        0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
        0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
        0333337F737373737F333308888888880333337F3FFFFFFF7F33330800000008
        0333337F7777777F7F333308000E0E080333337F7FFFFF7F7F33330800000008
        0333337F777777737F333308888888880333337F333333337F33330888888888
        03333373FFFFFFFF733333700000000073333337777777773333}
      NumGlyphs = 2
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton3Click
    end
    object SpeedButton1: TSpeedButton
      Left = 677
      Top = 75
      Width = 97
      Height = 25
      Hint = 'Cópia de Cheque'
      Caption = 'Emissão'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
        8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
        8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
        8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
      ParentFont = False
      Visible = False
      OnClick = SpeedButton1Click
    end
    object SpeedButton5: TSpeedButton
      Left = 678
      Top = 108
      Width = 96
      Height = 25
      Caption = 'Sem Nome'
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
      Visible = False
      OnClick = SpeedButton5Click
    end
    object Panel4: TPanel
      Left = 1
      Top = 3
      Width = 580
      Height = 134
      BevelInner = bvLowered
      TabOrder = 0
      object Label2: TLabel
        Left = 15
        Top = 4
        Width = 80
        Height = 14
        Caption = 'No. do Cheque'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 15
        Top = 80
        Width = 49
        Height = 14
        Caption = 'Histórico'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 351
        Top = 4
        Width = 23
        Height = 14
        Caption = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label33: TLabel
        Left = 114
        Top = 4
        Width = 68
        Height = 14
        Caption = 'Banco/Conta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 15
        Top = 41
        Width = 60
        Height = 14
        Caption = 'Favorecido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 455
        Top = 4
        Width = 32
        Height = 14
        Caption = 'Valor '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object NumLote: TDBEdit
        Left = 15
        Top = 18
        Width = 83
        Height = 22
        DataField = 'NumLote'
        DataSource = DS_LotePaga
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object Historico: TDBEdit
        Left = 15
        Top = 96
        Width = 547
        Height = 22
        DataField = 'Historico'
        DataSource = DS_LotePaga
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object Data: TDBEdit
        Left = 351
        Top = 18
        Width = 88
        Height = 22
        DataField = 'Data'
        DataSource = DS_LotePaga
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object BancoConta: TwwDBLookupCombo
        Left = 114
        Top = 18
        Width = 218
        Height = 22
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        CharCase = ecUpperCase
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'BAN_NOME'#9'25'#9'Banco'#9'F')
        DataField = 'BancoConta'
        DataSource = DS_LotePaga
        LookupTable = Q_BANC
        LookupField = 'BAN_CODI'
        MaxLength = 14
        ParentFont = False
        TabOrder = 1
        AutoDropDown = True
        ShowButton = True
        SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
        AllowClearKey = False
      end
      object Valor: TDBEdit
        Left = 455
        Top = 18
        Width = 107
        Height = 22
        DataField = 'Valor'
        DataSource = DS_LotePaga
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        MaxLength = 15
        ParentFont = False
        TabOrder = 3
      end
      object Favorecido: TDBEdit
        Left = 15
        Top = 56
        Width = 547
        Height = 21
        DataField = 'Favorecidos'
        DataSource = DS_LotePaga
        TabOrder = 5
      end
    end
    object TN2: TTabbedNotebook
      Left = 2
      Top = 136
      Width = 788
      Height = 342
      Align = alBottom
      Enabled = False
      TabFont.Charset = DEFAULT_CHARSET
      TabFont.Color = clNavy
      TabFont.Height = -11
      TabFont.Name = 'Arial'
      TabFont.Style = [fsBold]
      TabOrder = 1
      OnClick = TN2Click
      OnChange = TN2Change
      object TTabPage
        Left = 4
        Top = 24
        Caption = '             &Itens             '
        object Panel5: TPanel
          Left = 0
          Top = 0
          Width = 780
          Height = 314
          Align = alClient
          BevelInner = bvLowered
          TabOrder = 0
          object Label10: TLabel
            Left = 600
            Top = 281
            Width = 59
            Height = 14
            Caption = 'Valor Pago'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label20: TLabel
            Left = 405
            Top = 281
            Width = 33
            Height = 14
            Caption = 'Saldo '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Saldo: TLabel
            Left = 448
            Top = 281
            Width = 89
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Caption = '0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object wwDBGrid2: TwwDBGrid
            Left = 8
            Top = 8
            Width = 761
            Height = 262
            IniAttributes.FileName = 'delphi32.ini'
            IniAttributes.SectionName = 'FLotePagamentowwDBGrid2'
            IniAttributes.Delimiter = ';;'
            TitleColor = clBtnFace
            FixedCols = 0
            ShowHorzScrollBar = True
            DataSource = ds_ItemLotePaga
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            KeyOptions = [dgEnterToTab, dgAllowDelete, dgAllowInsert]
            ParentFont = False
            TabOrder = 0
            TitleAlignment = taLeftJustify
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clMaroon
            TitleFont.Height = -11
            TitleFont.Name = 'Arial'
            TitleFont.Style = [fsBold]
            TitleLines = 1
            TitleButtons = False
            IndicatorColor = icBlack
          end
          object lk_Titulo: TwwDBLookupCombo
            Left = 25
            Top = 281
            Width = 176
            Height = 22
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            CharCase = ecUpperCase
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'Documento'#9'15'#9'Documento'#9'F'
              'Fornecedor'#9'15'#9'Fornecedor'#9'F'
              'Vencimento'#9'18'#9'Vencimento'#9'F'
              'Saldo'#9'10'#9'Saldo'#9'F'
              'Numero'#9'10'#9'CP'#9'F')
            DataField = 'Titulo'
            DataSource = ds_ItemLotePaga
            LookupTable = Q_CPAPAGA
            LookupField = 'Documento'
            Options = [loTitles]
            ParentFont = False
            ParentShowHint = False
            ShowHint = False
            TabOrder = 1
            AutoDropDown = True
            ShowButton = True
            SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
            AllowClearKey = False
            OnCloseUp = lk_TituloCloseUp
            OnExit = lk_TituloExit
          end
          object wwDBEdit1: TwwDBEdit
            Left = 264
            Top = 281
            Width = 121
            Height = 21
            DataField = 'ValorDescAcresc'
            DataSource = ds_ItemLotePaga
            TabOrder = 2
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnExit = wwDBEdit1Exit
          end
        end
      end
      object TTabPage
        Left = 4
        Top = 24
        Caption = '          &Detalhamentos          '
        object Bevel5: TBevel
          Left = 0
          Top = 0
          Width = 780
          Height = 45
          Align = alTop
          Shape = bsBottomLine
        end
        object Label38: TLabel
          Left = 64
          Top = 47
          Width = 115
          Height = 14
          Caption = 'Desconto/Acréscimo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label40: TLabel
          Left = 410
          Top = 47
          Width = 29
          Height = 14
          Caption = 'Valor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Bevel6: TBevel
          Left = 0
          Top = 98
          Width = 780
          Height = 216
          Align = alBottom
          Shape = bsTopLine
        end
        object Label3: TLabel
          Left = 408
          Top = 8
          Width = 32
          Height = 14
          Caption = 'Valor '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 64
          Top = 8
          Width = 68
          Height = 14
          Caption = 'No. do Título'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText1: TDBText
          Left = 64
          Top = 26
          Width = 65
          Height = 17
          DataField = 'Titulo'
          DataSource = ds_ItemLotePaga
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText2: TDBText
          Left = 344
          Top = 26
          Width = 97
          Height = 17
          Alignment = taRightJustify
          DataField = 'ValorDescAcresc'
          DataSource = ds_ItemLotePaga
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBLC_IDR_DIFE: TwwDBLookupCombo
          Left = 64
          Top = 63
          Width = 217
          Height = 22
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'DIF_DESC'#9'20'#9'Descrição'
            'DIF_CODI'#9'3'#9'Código')
          DataField = 'DescAcresc'
          DataSource = ds_DescLotePaga
          LookupTable = Q_DIFE
          LookupField = 'DIF_CODI'
          ParentFont = False
          TabOrder = 0
          AutoDropDown = True
          ShowButton = True
          SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
          AllowClearKey = True
          OnExit = DBLC_IDR_DIFEExit
        end
        object wwDBGrid1: TwwDBGrid
          Left = 9
          Top = 108
          Width = 760
          Height = 197
          Selected.Strings = (
            'Descricao'#9'35'#9'Desconto/Acréscimo'
            'Valor'#9'34'#9'Valor')
          IniAttributes.FileName = 'delphi32.ini'
          IniAttributes.SectionName = 'FLotePagamentowwDBGrid1'
          IniAttributes.Delimiter = ';;'
          TitleColor = clNavy
          FixedCols = 0
          ShowHorzScrollBar = True
          DataSource = ds_DescLotePaga
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          KeyOptions = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs]
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
          TitleAlignment = taCenter
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clYellow
          TitleFont.Height = -11
          TitleFont.Name = 'Arial'
          TitleFont.Style = [fsBold]
          TitleLines = 1
          TitleButtons = False
          IndicatorColor = icYellow
        end
        object DBE_IDR_VALO: TDBEdit
          Left = 352
          Top = 63
          Width = 92
          Height = 22
          DataField = 'Valor'
          DataSource = ds_DescLotePaga
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
      end
    end
  end
  object upd_LotePaga: TUpdateSQL
    ModifySQL.Strings = (
      'update LOTEPaga'
      'set'
      '  NumLote = :NumLote,'
      '  Data = :Data,'
      '  BancoConta = :BancoConta,'
      '  Valor = :Valor,'
      '  Historico = :Historico,'
      '  Favorecidos = :Favorecidos'
      'where'
      '  Sequencia = :OLD_Sequencia and'
      '  NumLote = :OLD_NumLote')
    InsertSQL.Strings = (
      'insert into LOTEPaga'
      '  (NumLote, Data, BancoConta, Valor, Historico, Favorecidos)'
      'values'
      
        '  (:NumLote, :Data, :BancoConta, :Valor, :Historico, :Favorecido' +
        's)')
    DeleteSQL.Strings = (
      'delete from LOTEPaga'
      'where'
      '  Sequencia = :OLD_Sequencia and'
      '  NumLote = :OLD_NumLote')
    Left = 626
    Top = 403
  end
  object DS_LotePaga: TwwDataSource
    DataSet = q_LotePaga
    Left = 626
    Top = 403
  end
  object q_LotePaga: TwwQuery
    CachedUpdates = True
    AfterPost = q_LotePagaAfterPost
    BeforeDelete = q_LotePagaBeforeDelete
    AfterDelete = q_LotePagaAfterDelete
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM LOTEPaga ORDER BY SEQUENCIA')
    UpdateObject = upd_LotePaga
    ValidateWithMask = True
    Left = 626
    Top = 351
    object q_LotePagaSequencia: TAutoIncField
      FieldName = 'Sequencia'
      Origin = 'FINANCEIRO.LOTEPaga.Sequencia'
    end
    object q_LotePagaNumLote: TStringField
      FieldName = 'NumLote'
      Origin = 'FINANCEIRO.LOTEPaga.NumLote'
      FixedChar = True
      Size = 10
    end
    object q_LotePagaData: TDateTimeField
      FieldName = 'Data'
      Origin = 'FINANCEIRO.LOTEPaga.Data'
      EditMask = '!99/99/00;1;_'
    end
    object q_LotePagaBancoConta: TStringField
      FieldName = 'BancoConta'
      Origin = 'FINANCEIRO.LOTEPaga.BancoConta'
      FixedChar = True
      Size = 14
    end
    object q_LotePagaValor: TFloatField
      FieldName = 'Valor'
      Origin = 'FINANCEIRO.LOTEPaga.Valor'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object q_LotePagaHistorico: TStringField
      FieldName = 'Historico'
      Origin = 'FINANCEIRO.LOTEPaga.Historico'
      FixedChar = True
      Size = 50
    end
    object q_LotePagaFavorecidos: TStringField
      FieldName = 'Favorecidos'
      Origin = 'FINANCEIRO.LOTEPaga.Favorecidos'
      FixedChar = True
      Size = 60
    end
  end
  object q_ItemLotePaga: TwwQuery
    CachedUpdates = True
    BeforePost = q_ItemLotePagaBeforePost
    AfterPost = q_ItemLotePagaAfterPost
    BeforeDelete = q_ItemLotePagaBeforeDelete
    AfterDelete = q_ItemLotePagaAfterDelete
    OnNewRecord = q_ItemLotePagaNewRecord
    AutoRefresh = True
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    DataSource = DS_LotePaga
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM ITEMLOTEPAGA'
      'WHERE SEQLOTEPAGA = :Sequencia'
      'ORDER BY Sequencia')
    UpdateObject = upd_ItemLotePag
    ControlType.Strings = (
      'Titulo;CustomEdit;lk_Titulo'
      'ValorDescAcresc;CustomEdit;wwDBEdit1')
    ValidateWithMask = True
    Left = 626
    Top = 403
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'Sequencia'
        ParamType = ptUnknown
      end>
    object q_ItemLotePagaTitulo: TStringField
      DisplayWidth = 9
      FieldName = 'Titulo'
      Origin = 'FINANCEIRO.ITEMLOTEPAGA.Titulo'
      FixedChar = True
      Size = 10
    end
    object q_ItemLotePagaNumeroCp: TStringField
      DisplayLabel = 'CP'
      DisplayWidth = 10
      FieldKind = fkLookup
      FieldName = 'NumeroCp'
      LookupDataSet = Q_CPAPAGA
      LookupKeyFields = 'Documento'
      LookupResultField = 'Numero'
      KeyFields = 'Titulo'
      Lookup = True
    end
    object q_ItemLotePagaFornecedor: TStringField
      DisplayWidth = 37
      FieldKind = fkLookup
      FieldName = 'Fornecedor'
      LookupDataSet = Q_CPAPAGA
      LookupKeyFields = 'Documento'
      LookupResultField = 'Fornecedor'
      KeyFields = 'Titulo'
      Size = 40
      Lookup = True
    end
    object q_ItemLotePagaVencimento: TDateTimeField
      DisplayWidth = 11
      FieldKind = fkLookup
      FieldName = 'Vencimento'
      LookupDataSet = Q_CPAPAGA
      LookupKeyFields = 'Documento'
      LookupResultField = 'Vencimento'
      KeyFields = 'Titulo'
      Lookup = True
    end
    object q_ItemLotePagaValorPago: TFloatField
      DisplayLabel = 'Valor Pago'
      DisplayWidth = 12
      FieldName = 'ValorPago'
      Origin = 'FINANCEIRO.ITEMLOTEPAGA.ValorPago'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object q_ItemLotePagaValorDescAcresc: TFloatField
      DisplayLabel = 'Acresc./Desc.'
      DisplayWidth = 13
      FieldName = 'ValorDescAcresc'
      Origin = 'FINANCEIRO.ITEMLOTEPAGA.ValorDescAcresc'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object q_ItemLotePagaSeqLotePaga: TIntegerField
      FieldName = 'SeqLotePaga'
      Origin = 'FINANCEIRO.ITEMLOTEPAGA.SeqLotePaga'
      Visible = False
    end
    object q_ItemLotePagaSequencia: TAutoIncField
      DisplayWidth = 10
      FieldName = 'Sequencia'
      Origin = 'FINANCEIRO.ITEMLOTEPAGA.Sequencia'
      Visible = False
    end
  end
  object ds_ItemLotePaga: TwwDataSource
    DataSet = q_ItemLotePaga
    Left = 626
    Top = 403
  end
  object upd_ItemLotePag: TUpdateSQL
    ModifySQL.Strings = (
      'update ITEMLOTEPAGA'
      'set'
      '  Titulo = :Titulo,'
      '  ValorPago = :ValorPago,'
      '  ValorDescAcresc = :ValorDescAcresc'
      'where'
      '  Titulo = :OLD_Titulo and'
      '  SeqLotePaga = :OLD_SeqLotePaga ')
    InsertSQL.Strings = (
      'insert into ITEMLOTEPAGA'
      '  (Titulo, SeqLotePaga, ValorPago, ValorDescAcresc)'
      'values'
      '  (:Titulo, :SeqLotePaga, :ValorPago, :ValorDescAcresc)')
    DeleteSQL.Strings = (
      'delete from ITEMLOTEPAGA'
      'where'
      '  Titulo = :OLD_Titulo and'
      '  SeqLotePaga = :OLD_SeqLotePaga ')
    Left = 626
    Top = 403
  end
  object upd_DescLotePaga: TUpdateSQL
    ModifySQL.Strings = (
      'update DESCLOTEPaga'
      'set'
      '  Titulo = :Titulo,'
      '  DescAcresc = :DescAcresc,'
      '  Valor = :Valor,'
      '  SeqLotePaga = :SeqLotePaga'
      'where'
      '  Sequencia = :OLD_Sequencia ')
    InsertSQL.Strings = (
      'insert into DESCLOTEPaga'
      '  ( Titulo, DescAcresc, Valor, SeqLotePaga)'
      'values'
      '  ( :Titulo, :DescAcresc, :Valor, :SeqLotePaga)')
    DeleteSQL.Strings = (
      'delete from DESCLOTEPaga'
      'where'
      '  Sequencia = :OLD_Sequencia ')
    Left = 626
    Top = 403
  end
  object q_DescLotePaga: TwwQuery
    CachedUpdates = True
    BeforePost = q_DescLotePagaBeforePost
    AfterPost = q_DescLotePagaAfterPost
    AfterDelete = q_DescLotePagaAfterDelete
    OnNewRecord = q_DescLotePagaNewRecord
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    DataSource = ds_ItemLotePaga
    RequestLive = True
    SQL.Strings = (
      'SELECT * fROM DESCLOTEPaga '
      'WHERE SeqLotePaga = :SeqLotePaga  and '
      ' Titulo = :Titulo '
      '')
    UpdateObject = upd_DescLotePaga
    ControlType.Strings = (
      'Titulo;CustomEdit;lk_Titulo'
      'DescAcresc;CustomEdit;DBLC_IDR_DIFE2')
    ValidateWithMask = True
    Left = 498
    Top = 202
    ParamData = <
      item
        DataType = ftInteger
        Name = 'SeqLotePaga'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'Titulo'
        ParamType = ptUnknown
      end>
    object q_DescLotePagaDescricao: TStringField
      DisplayLabel = 'Desconto/Acréscimo'
      DisplayWidth = 35
      FieldKind = fkLookup
      FieldName = 'Descricao'
      LookupDataSet = Q_DIFE
      LookupKeyFields = 'DIF_CODI'
      LookupResultField = 'DIF_DESC'
      KeyFields = 'DescAcresc'
      Lookup = True
    end
    object q_DescLotePagaValor: TFloatField
      DisplayWidth = 34
      FieldName = 'Valor'
      Origin = 'FINANCEIRO.DESCLOTEPaga.Valor'
      DisplayFormat = '###,###,##0.00'
    end
    object q_DescLotePagaDescAcresc: TStringField
      DisplayLabel = 'Desconto/Acéscimo'
      DisplayWidth = 37
      FieldName = 'DescAcresc'
      Origin = 'FINANCEIRO.DESCLOTEPaga.DescAcresc'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object q_DescLotePagaSequencia: TAutoIncField
      FieldName = 'Sequencia'
      Origin = 'FINANCEIRO.DESCLOTEPaga.Sequencia'
      Visible = False
    end
    object q_DescLotePagaTitulo: TStringField
      FieldName = 'Titulo'
      Origin = 'FINANCEIRO.DESCLOTEPaga.Titulo'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object q_DescLotePagaSeqLotePaga: TIntegerField
      FieldName = 'SeqLotePaga'
      Origin = 'FINANCEIRO.DESCLOTEPaga.SeqLotePaga'
      Visible = False
    end
  end
  object ds_DescLotePaga: TwwDataSource
    AutoEdit = False
    DataSet = q_DescLotePaga
    Left = 626
    Top = 403
  end
  object STP_GERAMOVI: TwwStoredProc
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    StoredProcName = 'dbo.STP_GERAMOVIPAGA'
    ValidateWithMask = True
    Left = 610
    Top = 279
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Result'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = '@NumLote'
        ParamType = ptInput
      end>
  end
  object ds_Banc: TwwDataSource
    DataSet = Q_BANC
    Left = 626
    Top = 403
  end
  object DS_CPAPAGA: TwwDataSource
    DataSet = Q_CPAPAGA
    Left = 626
    Top = 403
  end
  object Q_CPAPAGA: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'SELECT Documento,Fornecedor,Vencimento,Saldo , Numero'
      'FROM CPAPAGA where saldo <> 0  and '
      'Saldo is not null'
      'ORDER BY Documento,Fornecedor')
    ValidateWithMask = True
    Left = 626
    Top = 403
    object Q_CPAPAGADocumento: TStringField
      DisplayWidth = 15
      FieldName = 'Documento'
      Origin = 'FINANCEIRO.CPAPAGA.Documento'
      FixedChar = True
      Size = 15
    end
    object Q_CPAPAGAFornecedor: TStringField
      DisplayWidth = 15
      FieldName = 'Fornecedor'
      Origin = 'FINANCEIRO.CPAPAGA.Fornecedor'
      FixedChar = True
      Size = 15
    end
    object Q_CPAPAGAVencimento: TDateTimeField
      DisplayWidth = 18
      FieldName = 'Vencimento'
      Origin = 'FINANCEIRO.CPAPAGA.Vencimento'
    end
    object Q_CPAPAGASaldo: TFloatField
      DisplayWidth = 10
      FieldName = 'Saldo'
      Origin = 'FINANCEIRO.CPAPAGA.Saldo'
    end
    object Q_CPAPAGANumero: TIntegerField
      DisplayLabel = 'CP'
      DisplayWidth = 10
      FieldName = 'Numero'
      Origin = 'FINANCEIRO.CPAPAGA.Numero'
    end
  end
  object Q_AUXI: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      
        'SELECT SUM(ValorDescAcresc) FROM ItemLoteRec WHERE SeqLoteRec = ' +
        '1')
    ValidateWithMask = True
    Left = 626
    Top = 403
    object Q_AUXICOLUMN1: TFloatField
      FieldName = 'COLUMN1'
      Origin = 'ItemLoteRec.ValorDescAcresc'
    end
  end
  object Q_AUX2: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    ValidateWithMask = True
    Left = 626
    Top = 403
  end
  object Q_DIFE: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'select * from cpadife order by dif_desc')
    ValidateWithMask = True
    Left = 618
    Top = 403
    object Q_DIFEDIF_DESC: TStringField
      DisplayLabel = 'Descrição'
      DisplayWidth = 20
      FieldName = 'DIF_DESC'
      Origin = 'FINANCEIRO.cpadife.DIF_DESC'
      FixedChar = True
    end
    object Q_DIFEDIF_CODI: TStringField
      DisplayWidth = 3
      FieldName = 'DIF_CODI'
      Origin = 'FINANCEIRO.cpadife.DIF_CODI'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object Q_DIFEDIF_SINAL: TStringField
      DisplayWidth = 1
      FieldName = 'DIF_SINAL'
      Origin = 'FINANCEIRO.cpadife.DIF_SINAL'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_DIFEDIF_CTCO: TStringField
      DisplayWidth = 6
      FieldName = 'DIF_CTCO'
      Origin = 'FINANCEIRO.cpadife.DIF_CTCO'
      Visible = False
      FixedChar = True
      Size = 6
    end
  end
  object Q_BANC: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'SELECT * FROM CPABANC order by BAN_CODI')
    ValidateWithMask = True
    Left = 602
    Top = 403
    object Q_BANCBAN_NOME: TStringField
      DisplayLabel = 'Banco'
      DisplayWidth = 25
      FieldName = 'BAN_NOME'
      Origin = 'FINANCEIRO.CPABANC.BAN_NOME'
      FixedChar = True
      Size = 25
    end
    object Q_BANCBAN_CODI: TStringField
      DisplayWidth = 14
      FieldName = 'BAN_CODI'
      Origin = 'FINANCEIRO.CPABANC.BAN_CODI'
      Visible = False
      FixedChar = True
      Size = 14
    end
    object Q_BANCBAN_AGEN: TStringField
      FieldName = 'BAN_AGEN'
      Origin = 'FINANCEIRO.CPABANC.BAN_AGEN'
      Visible = False
      FixedChar = True
      Size = 4
    end
    object Q_BANCBAN_NAGE: TStringField
      FieldName = 'BAN_NAGE'
      Origin = 'FINANCEIRO.CPABANC.BAN_NAGE'
      Visible = False
      FixedChar = True
    end
    object Q_BANCBAN_DATA: TDateTimeField
      FieldName = 'BAN_DATA'
      Origin = 'FINANCEIRO.CPABANC.BAN_DATA'
      Visible = False
    end
    object Q_BANCBAN_SALD: TFloatField
      FieldName = 'BAN_SALD'
      Origin = 'FINANCEIRO.CPABANC.BAN_SALD'
      Visible = False
    end
    object Q_BANCBAN_NLAN: TFloatField
      FieldName = 'BAN_NLAN'
      Origin = 'FINANCEIRO.CPABANC.BAN_NLAN'
      Visible = False
    end
    object Q_BANCBAN_LCHE: TStringField
      FieldName = 'BAN_LCHE'
      Origin = 'FINANCEIRO.CPABANC.BAN_LCHE'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object Q_BANCBAN_UCHE: TStringField
      FieldName = 'BAN_UCHE'
      Origin = 'FINANCEIRO.CPABANC.BAN_UCHE'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object Q_BANCBAN_SALDT: TFloatField
      FieldName = 'BAN_SALDT'
      Origin = 'FINANCEIRO.CPABANC.BAN_SALDT'
      Visible = False
    end
    object Q_BANCBAN_DATAT: TDateTimeField
      FieldName = 'BAN_DATAT'
      Origin = 'FINANCEIRO.CPABANC.BAN_DATAT'
      Visible = False
    end
    object Q_BANCBAN_CARTAGECC: TStringField
      FieldName = 'BAN_CARTAGECC'
      Origin = 'FINANCEIRO.CPABANC.BAN_CARTAGECC'
      Visible = False
      FixedChar = True
    end
    object Q_BANCBAN_CODEMPR: TStringField
      FieldName = 'BAN_CODEMPR'
      Origin = 'FINANCEIRO.CPABANC.BAN_CODEMPR'
      Visible = False
      FixedChar = True
    end
  end
end
