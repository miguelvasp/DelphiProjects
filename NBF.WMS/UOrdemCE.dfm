object FOrdemCE: TFOrdemCE
  Left = 1
  Top = -1
  Width = 795
  Height = 568
  BorderIcons = []
  Color = clAppWorkSpace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 7
    Top = 7
    Width = 779
    Height = 45
    BevelInner = bvLowered
    TabOrder = 0
    object SpeedButton1: TSpeedButton
      Left = 715
      Top = 9
      Width = 25
      Height = 25
      Hint = 'Visualizar Relatório'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000010000000000000000000
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
    end
    object SpeedButton3: TSpeedButton
      Left = 740
      Top = 9
      Width = 28
      Height = 25
      Hint = 'Sair'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000010000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
        03333377777777777F333301111111110333337F333333337F33330111111111
        0333337F333333337F333301111111110333337F333333337F33330111111111
        0333337F333333337F333301111111110333337F333333337F33330111111111
        0333337F3333333F7F333301111111B10333337F333333737F33330111111111
        0333337F333333337F333301111111110333337F33FFFFF37F3333011EEEEE11
        0333337F377777F37F3333011EEEEE110333337F37FFF7F37F3333011EEEEE11
        0333337F377777337F333301111111110333337F333333337F33330111111111
        0333337FFFFFFFFF7F3333000000000003333377777777777333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton3Click
    end
    object Label4: TLabel
      Left = 16
      Top = 5
      Width = 326
      Height = 29
      Caption = 'Ordem de Coleta/Entrega '
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -24
      Font.Name = 'Georgia'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object DBNavigator1: TDBNavigator
      Left = 523
      Top = 9
      Width = 192
      Height = 25
      DataSource = DS_OCE
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbPost, nbCancel]
      Hints.Strings = (
        'Posiciona no primeiro registro | Posiciona no primeiro registro'
        'Retorna ao registro anterior | Retorna ao registro anterior '
        'Avança para o próximo registro | Avança para o próximo registro '
        'Posiciona no último registro | Posiciona no último registro '
        'Incluir  '
        'Excluir'
        ''
        'Confirmar'
        'Cancelar')
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
    end
  end
  object Panel1: TPanel
    Left = 7
    Top = 55
    Width = 779
    Height = 479
    BevelInner = bvLowered
    TabOrder = 1
    object Label1: TLabel
      Left = 15
      Top = 83
      Width = 83
      Height = 15
      Caption = 'Tipo da Ordem'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object Label50: TLabel
      Left = 59
      Top = 111
      Width = 39
      Height = 15
      Caption = 'Região'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object Label21: TLabel
      Left = 12
      Top = 140
      Width = 86
      Height = 15
      Caption = 'Tipo de Veículo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 20
      Top = 169
      Width = 78
      Height = 15
      Caption = 'Tipo da Carga'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object Label26: TLabel
      Left = 26
      Top = 227
      Width = 72
      Height = 15
      Caption = 'Qtde. Pallets'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object Label31: TLabel
      Left = 38
      Top = 198
      Width = 60
      Height = 15
      Caption = 'Peso Total'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object Label32: TLabel
      Left = 55
      Top = 256
      Width = 43
      Height = 15
      Caption = 'Volume'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object Label39: TLabel
      Left = 147
      Top = 257
      Width = 17
      Height = 15
      Caption = 'M3'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object Label33: TLabel
      Left = 49
      Top = 285
      Width = 49
      Height = 15
      Caption = 'Qtde. UV'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 9
      Top = 315
      Width = 89
      Height = 15
      Caption = 'Transportadora'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 44
      Top = 341
      Width = 54
      Height = 15
      Caption = 'Motorista'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object Label16: TLabel
      Left = 160
      Top = 199
      Width = 15
      Height = 15
      Caption = 'Kg'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object DBCB_CLI_PESS: TwwDBComboBox
      Left = 102
      Top = 80
      Width = 104
      Height = 21
      ShowButton = True
      Style = csDropDown
      MapList = True
      AllowClearKey = False
      AutoDropDown = True
      BorderStyle = bsNone
      ButtonStyle = cbsEllipsis
      DataField = 'ORD_COLETA_ENTREGA'
      DataSource = DS_OCE
      DropDownCount = 8
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ItemHeight = 0
      Items.Strings = (
        'Coleta'#9'C'
        'Entrega'#9'E')
      ParentFont = False
      Sorted = False
      TabOrder = 0
      UnboundDataType = wwDefault
      OnEnter = DBCB_CLI_PESSEnter
      OnExit = DBCB_CLI_PESSExit
    end
    object Panel3: TPanel
      Left = 5
      Top = 5
      Width = 769
      Height = 60
      BevelInner = bvRaised
      BevelOuter = bvLowered
      BevelWidth = 3
      TabOrder = 10
      object DBText1: TDBText
        Left = 565
        Top = 10
        Width = 197
        Height = 17
        DataField = 'CTT_NOME'
        DataSource = FOS.DS_OS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 460
        Top = 11
        Width = 102
        Height = 15
        Caption = 'Nome do Contrato'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText3: TDBText
        Left = 212
        Top = 10
        Width = 234
        Height = 17
        DataField = 'CLIN_RAZA'
        DataSource = FOS.DS_OS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label15: TLabel
        Left = 144
        Top = 11
        Width = 64
        Height = 15
        Caption = 'Cliente NBF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText4: TDBText
        Left = 37
        Top = 10
        Width = 93
        Height = 17
        Color = clMenu
        DataField = 'OS_ID'
        DataSource = FOS.DS_OS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label18: TLabel
        Left = 10
        Top = 11
        Width = 23
        Height = 15
        Caption = 'O.S.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 98
        Top = 31
        Width = 109
        Height = 15
        Caption = 'Tipo de Documento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object DBText2: TDBText
        Left = 212
        Top = 31
        Width = 385
        Height = 17
        Color = clMenu
        DataField = 'TDOC_NOME'
        DataSource = FOS.DS_TDOC
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
    end
    object wwDBLookupCombo3: TwwDBLookupCombo
      Left = 102
      Top = 109
      Width = 198
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      BorderStyle = bsNone
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'REG_NOME'#9'40'#9'REG_NOME'#9'F')
      DataField = 'REG_ID'
      DataSource = DS_OCE
      LookupTable = Q_REG
      LookupField = 'REG_ID'
      ParentFont = False
      TabOrder = 1
      AutoDropDown = True
      ShowButton = True
      SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
      AllowClearKey = False
      OnEnter = wwDBLookupCombo3Enter
      OnExit = wwDBLookupCombo3Exit
    end
    object wwDBLookupCombo1: TwwDBLookupCombo
      Left = 102
      Top = 138
      Width = 198
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      BorderStyle = bsNone
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'VEIC_NOME'#9'40'#9'VEIC_NOME'#9'F')
      DataField = 'VEIC_ID'
      DataSource = DS_OCE
      LookupTable = Q_VEIC
      LookupField = 'VEIC_ID'
      ParentFont = False
      TabOrder = 2
      AutoDropDown = True
      ShowButton = True
      SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
      AllowClearKey = False
      OnEnter = wwDBLookupCombo1Enter
      OnExit = wwDBLookupCombo1Exit
    end
    object wwDBComboBox1: TwwDBComboBox
      Left = 102
      Top = 167
      Width = 133
      Height = 21
      ShowButton = True
      Style = csDropDown
      MapList = True
      AllowClearKey = False
      AutoDropDown = True
      BorderStyle = bsNone
      ButtonStyle = cbsEllipsis
      DataField = 'ORD_TPCARGA'
      DataSource = DS_OCE
      DropDownCount = 8
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ItemHeight = 0
      Items.Strings = (
        'Palletizada'#9'P'
        'Granel'#9'G')
      ParentFont = False
      Sorted = False
      TabOrder = 3
      UnboundDataType = wwDefault
      OnEnter = wwDBComboBox1Enter
      OnExit = wwDBComboBox1Exit
    end
    object wwDBEdit6: TwwDBEdit
      Left = 102
      Top = 226
      Width = 42
      Height = 21
      BorderStyle = bsNone
      DataField = 'ORD_QTDE_PALLET'
      DataSource = DS_OCE
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnEnter = wwDBEdit6Enter
      OnExit = wwDBEdit6Exit
    end
    object wwDBEdit12: TwwDBEdit
      Left = 102
      Top = 196
      Width = 55
      Height = 21
      BorderStyle = bsNone
      DataField = 'ORD_PESO_TOTAL'
      DataSource = DS_OCE
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnEnter = wwDBEdit12Enter
      OnExit = wwDBEdit12Exit
    end
    object wwDBEdit14: TwwDBEdit
      Left = 102
      Top = 255
      Width = 42
      Height = 21
      BorderStyle = bsNone
      DataField = 'ORD_VOLUME'
      DataSource = DS_OCE
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnEnter = wwDBEdit14Enter
      OnExit = wwDBEdit14Exit
    end
    object wwDBEdit15: TwwDBEdit
      Left = 102
      Top = 284
      Width = 42
      Height = 21
      BorderStyle = bsNone
      DataField = 'ORD_QTDE_CAIXA'
      DataSource = DS_OCE
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnEnter = wwDBEdit15Enter
      OnExit = wwDBEdit15Exit
    end
    object wwDBLookupCombo2: TwwDBLookupCombo
      Left = 102
      Top = 313
      Width = 198
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      BorderStyle = bsNone
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'TRANS_FANTASIA'#9'40'#9'TRANS_FANTASIA'#9'F')
      DataField = 'TRANS_ID'
      DataSource = DS_OCE
      LookupTable = Q_TRANS
      LookupField = 'TRANS_ID'
      ParentFont = False
      TabOrder = 8
      AutoDropDown = True
      ShowButton = True
      SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
      AllowClearKey = False
      OnCloseUp = wwDBLookupCombo2CloseUp
      OnEnter = wwDBLookupCombo2Enter
      OnExit = wwDBLookupCombo2Exit
    end
    object wwDBLookupCombo4: TwwDBLookupCombo
      Left = 102
      Top = 342
      Width = 198
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      BorderStyle = bsNone
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'MOT_NOME'#9'40'#9'MOT_NOME'#9'F')
      DataField = 'MOT_ID'
      DataSource = DS_OCE
      LookupTable = Q_TRMOT
      LookupField = 'MOT_ID'
      ParentFont = False
      TabOrder = 9
      AutoDropDown = True
      ShowButton = True
      SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
      AllowClearKey = False
      OnCloseUp = wwDBLookupCombo4CloseUp
      OnEnter = wwDBLookupCombo4Enter
      OnExit = wwDBLookupCombo4Exit
    end
    object TabbedNotebook1: TTabbedNotebook
      Left = 320
      Top = 72
      Width = 453
      Height = 388
      TabFont.Charset = ANSI_CHARSET
      TabFont.Color = clRed
      TabFont.Height = -11
      TabFont.Name = 'Arial'
      TabFont.Style = [fsBold]
      TabOrder = 11
      object TTabPage
        Left = 4
        Top = 24
        Caption = '   Endereço da Coleta   '
        object GroupBox1: TGroupBox
          Left = 4
          Top = 4
          Width = 437
          Height = 344
          Caption = 'Endereço da Coleta'
          Color = clActiveBorder
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 0
          object Label20: TLabel
            Left = 83
            Top = 86
            Width = 23
            Height = 15
            Caption = 'CEP'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object Label22: TLabel
            Left = 52
            Top = 109
            Width = 54
            Height = 15
            Caption = 'Endereço'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object Label23: TLabel
            Left = 71
            Top = 157
            Width = 35
            Height = 15
            Caption = 'Bairro'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object Label24: TLabel
            Left = 67
            Top = 205
            Width = 39
            Height = 15
            Caption = 'Estado'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object Label25: TLabel
            Left = 50
            Top = 230
            Width = 56
            Height = 15
            Caption = 'Telefones'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object Label27: TLabel
            Left = 86
            Top = 254
            Width = 20
            Height = 15
            Caption = 'Fax'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object Label28: TLabel
            Left = 72
            Top = 277
            Width = 34
            Height = 15
            Caption = 'E-Mail'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object Label29: TLabel
            Left = 248
            Top = 230
            Width = 9
            Height = 15
            Caption = ' / '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label30: TLabel
            Left = 52
            Top = 181
            Width = 54
            Height = 15
            Caption = 'Município'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object Label34: TLabel
            Left = 8
            Top = 133
            Width = 98
            Height = 15
            Caption = 'Nº,bloco,conjunto'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object Label35: TLabel
            Left = 62
            Top = 299
            Width = 44
            Height = 15
            Caption = 'Contato'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object wwDBEdit2: TwwDBEdit
            Left = 110
            Top = 83
            Width = 69
            Height = 21
            BorderStyle = bsNone
            DataField = 'ORD_COL_CEP'
            DataSource = DS_OCE
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnEnter = wwDBEdit2Enter
            OnExit = wwDBEdit2Exit
          end
          object wwDBEdit3: TwwDBEdit
            Left = 110
            Top = 107
            Width = 236
            Height = 21
            BorderStyle = bsNone
            DataField = 'ORD_COL_ENDERECO'
            DataSource = DS_OCE
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnEnter = wwDBEdit3Enter
            OnExit = wwDBEdit3Exit
          end
          object wwDBEdit4: TwwDBEdit
            Left = 110
            Top = 155
            Width = 164
            Height = 21
            BorderStyle = bsNone
            DataField = 'ORD_COL_ENDERECO_BAIRRO'
            DataSource = DS_OCE
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnEnter = wwDBEdit4Enter
            OnExit = wwDBEdit4Exit
          end
          object wwDBLookupCombo6: TwwDBLookupCombo
            Left = 110
            Top = 204
            Width = 198
            Height = 21
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            BorderStyle = bsNone
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'UF_NOME'#9'30'#9'Estado'#9'F')
            DataField = 'UF_SIGLA_COL'
            DataSource = DS_OCE
            LookupTable = Q_UF1
            LookupField = 'UF_SIGLA'
            ParentFont = False
            TabOrder = 6
            AutoDropDown = True
            ShowButton = True
            SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
            AllowClearKey = False
            OnEnter = wwDBLookupCombo6Enter
            OnExit = wwDBLookupCombo6Exit
          end
          object wwDBEdit5: TwwDBEdit
            Left = 110
            Top = 228
            Width = 128
            Height = 21
            BorderStyle = bsNone
            DataField = 'ORD_COL_TEL1'
            DataSource = DS_OCE
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnEnter = wwDBEdit5Enter
            OnExit = wwDBEdit5Exit
          end
          object wwDBEdit7: TwwDBEdit
            Left = 110
            Top = 252
            Width = 128
            Height = 21
            BorderStyle = bsNone
            DataField = 'ORD_COL_FAX'
            DataSource = DS_OCE
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 9
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnEnter = wwDBEdit7Enter
            OnExit = wwDBEdit7Exit
          end
          object wwDBEdit8: TwwDBEdit
            Left = 110
            Top = 276
            Width = 217
            Height = 21
            BorderStyle = bsNone
            DataField = 'ORD_COL_EMAIL'
            DataSource = DS_OCE
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 10
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnEnter = wwDBEdit8Enter
            OnExit = wwDBEdit8Exit
          end
          object wwDBEdit9: TwwDBEdit
            Left = 268
            Top = 228
            Width = 128
            Height = 21
            BorderStyle = bsNone
            DataField = 'ORD_COL_TEL2'
            DataSource = DS_OCE
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 8
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnEnter = wwDBEdit9Enter
            OnExit = wwDBEdit9Exit
          end
          object wwDBEdit10: TwwDBEdit
            Left = 110
            Top = 180
            Width = 204
            Height = 21
            BorderStyle = bsNone
            DataField = 'ORD_COL_MUNICIPIO'
            DataSource = DS_OCE
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnEnter = wwDBEdit10Enter
            OnExit = wwDBEdit10Exit
          end
          object wwDBEdit11: TwwDBEdit
            Left = 110
            Top = 131
            Width = 232
            Height = 21
            BorderStyle = bsNone
            DataField = 'ORD_COL_ENDERECO_COMPL'
            DataSource = DS_OCE
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnEnter = wwDBEdit11Enter
            OnExit = wwDBEdit11Exit
          end
          object wwDBEdit13: TwwDBEdit
            Left = 110
            Top = 300
            Width = 217
            Height = 21
            BorderStyle = bsNone
            DataField = 'ORD_COL_CONTATO'
            DataSource = DS_OCE
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 11
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnEnter = wwDBEdit13Enter
            OnExit = wwDBEdit13Exit
          end
          object RadioGroup2: TRadioGroup
            Left = 7
            Top = 14
            Width = 418
            Height = 65
            Caption = 'Aproveitar Endereço'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Items.Strings = (
              'Clientes NBF'
              'Clientes Finais')
            ParentFont = False
            TabOrder = 0
            OnClick = RadioGroup2Click
          end
          object wwDBLookupCombo9: TwwDBLookupCombo
            Left = 132
            Top = 40
            Width = 281
            Height = 21
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            BorderStyle = bsNone
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'CLIF_RAZA'#9'50'#9'CLIF_RAZA'#9'F')
            LookupTable = Q_CLIF
            LookupField = 'CLIF_ID'
            ParentFont = False
            TabOrder = 13
            Visible = False
            AutoDropDown = True
            ShowButton = True
            SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
            AllowClearKey = False
            OnEnter = wwDBLookupCombo9Enter
            OnExit = wwDBLookupCombo9Exit
          end
          object wwDBLookupCombo7: TwwDBLookupCombo
            Left = 132
            Top = 40
            Width = 281
            Height = 21
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            BorderStyle = bsNone
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'CLIN_RAZA'#9'50'#9'CLIN_RAZA'#9'F')
            LookupTable = Q_CLIN
            LookupField = 'CLIN_ID'
            ParentFont = False
            TabOrder = 12
            Visible = False
            AutoDropDown = True
            ShowButton = True
            SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
            AllowClearKey = False
            OnEnter = wwDBLookupCombo7Enter
            OnExit = wwDBLookupCombo7Exit
          end
        end
      end
      object TTabPage
        Left = 4
        Top = 24
        Caption = '   Endereço da Entrega   '
        object GroupBox2: TGroupBox
          Left = 5
          Top = 4
          Width = 437
          Height = 344
          Caption = 'Endereço da Entrega'
          Color = clActiveBorder
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 0
          object Label7: TLabel
            Left = 52
            Top = 109
            Width = 54
            Height = 15
            Caption = 'Endereço'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object Label42: TLabel
            Left = 71
            Top = 157
            Width = 35
            Height = 15
            Caption = 'Bairro'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object Label12: TLabel
            Left = 67
            Top = 205
            Width = 39
            Height = 15
            Caption = 'Estado'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object Label10: TLabel
            Left = 50
            Top = 230
            Width = 56
            Height = 15
            Caption = 'Telefones'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object Label8: TLabel
            Left = 86
            Top = 254
            Width = 20
            Height = 15
            Caption = 'Fax'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object Label13: TLabel
            Left = 72
            Top = 277
            Width = 34
            Height = 15
            Caption = 'E-Mail'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object Label14: TLabel
            Left = 248
            Top = 230
            Width = 9
            Height = 15
            Caption = ' / '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label17: TLabel
            Left = 52
            Top = 181
            Width = 54
            Height = 15
            Caption = 'Município'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object Label41: TLabel
            Left = 8
            Top = 133
            Width = 98
            Height = 15
            Caption = 'Nº,bloco,conjunto'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object Label19: TLabel
            Left = 62
            Top = 299
            Width = 44
            Height = 15
            Caption = 'Contato'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object Label11: TLabel
            Left = 83
            Top = 86
            Width = 23
            Height = 15
            Caption = 'CEP'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object DBE_CLI_FEND: TwwDBEdit
            Left = 110
            Top = 107
            Width = 236
            Height = 21
            BorderStyle = bsNone
            DataField = 'ORD_ENT_ENDERECO'
            DataSource = DS_OCE
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnEnter = DBE_CLI_FENDEnter
            OnExit = DBE_CLI_FENDExit
          end
          object wwDBEdit18: TwwDBEdit
            Left = 110
            Top = 155
            Width = 164
            Height = 21
            BorderStyle = bsNone
            DataField = 'ORD_ENT_ENDERECO_BAIRRO'
            DataSource = DS_OCE
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnEnter = wwDBEdit18Enter
            OnExit = wwDBEdit18Exit
          end
          object DBLC_DBE_FEST: TwwDBLookupCombo
            Left = 110
            Top = 204
            Width = 198
            Height = 21
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            BorderStyle = bsNone
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'UF_NOME'#9'30'#9'UF_NOME'#9'F')
            DataField = 'UF_SIGLA_ENT'
            DataSource = DS_OCE
            LookupTable = Q_UF2
            LookupField = 'UF_SIGLA'
            ParentFont = False
            TabOrder = 6
            AutoDropDown = True
            ShowButton = True
            SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
            AllowClearKey = False
            OnEnter = DBLC_DBE_FESTEnter
            OnExit = DBLC_DBE_FESTExit
          end
          object DBE_CLI_FFAX: TwwDBEdit
            Left = 110
            Top = 228
            Width = 128
            Height = 21
            BorderStyle = bsNone
            DataField = 'ORD_ENT_TEL1'
            DataSource = DS_OCE
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnEnter = DBE_CLI_FFAXEnter
            OnExit = DBE_CLI_FFAXExit
          end
          object DBE_CLI_FTEL: TwwDBEdit
            Left = 110
            Top = 252
            Width = 128
            Height = 21
            BorderStyle = bsNone
            DataField = 'ORD_ENT_FAX'
            DataSource = DS_OCE
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 9
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnEnter = DBE_CLI_FTELEnter
            OnExit = DBE_CLI_FTELExit
          end
          object DBE_CLI_FEMA: TwwDBEdit
            Left = 110
            Top = 276
            Width = 217
            Height = 21
            BorderStyle = bsNone
            DataField = 'ORD_ENT_EMAIL'
            DataSource = DS_OCE
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 10
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnEnter = DBE_CLI_FEMAEnter
            OnExit = DBE_CLI_FEMAExit
          end
          object DBE_CLI_FTE2: TwwDBEdit
            Left = 268
            Top = 228
            Width = 128
            Height = 21
            BorderStyle = bsNone
            DataField = 'ORD_ENT_TEL2'
            DataSource = DS_OCE
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 8
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnEnter = DBE_CLI_FTE2Enter
            OnExit = DBE_CLI_FTE2Exit
          end
          object DBE_CLI_FMUN: TwwDBEdit
            Left = 110
            Top = 180
            Width = 204
            Height = 21
            BorderStyle = bsNone
            DataField = 'ORD_ENT_MUNICIPIO'
            DataSource = DS_OCE
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnEnter = DBE_CLI_FMUNEnter
            OnExit = DBE_CLI_FMUNExit
          end
          object wwDBEdit16: TwwDBEdit
            Left = 110
            Top = 131
            Width = 232
            Height = 21
            BorderStyle = bsNone
            DataField = 'ORD_ENT_ENDERECO_COMPL'
            DataSource = DS_OCE
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnEnter = wwDBEdit16Enter
            OnExit = wwDBEdit16Exit
          end
          object wwDBEdit1: TwwDBEdit
            Left = 110
            Top = 300
            Width = 217
            Height = 21
            BorderStyle = bsNone
            DataField = 'ORD_ENT_CONTATO'
            DataSource = DS_OCE
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 11
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnEnter = wwDBEdit1Enter
            OnExit = wwDBEdit1Exit
          end
          object RadioGroup1: TRadioGroup
            Left = 7
            Top = 14
            Width = 418
            Height = 65
            Caption = 'Aproveitar Endereço'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Items.Strings = (
              'Clientes NBF'
              'Clientes Finais')
            ParentFont = False
            TabOrder = 0
            OnClick = RadioGroup1Click
          end
          object wwDBLookupCombo8: TwwDBLookupCombo
            Left = 132
            Top = 40
            Width = 281
            Height = 21
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            BorderStyle = bsNone
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'CLIF_RAZA'#9'50'#9'CLIF_RAZA'#9'F')
            LookupTable = Q_CLIF
            LookupField = 'CLIF_ID'
            ParentFont = False
            TabOrder = 12
            Visible = False
            AutoDropDown = True
            ShowButton = True
            SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
            AllowClearKey = False
            OnEnter = wwDBLookupCombo8Enter
            OnExit = wwDBLookupCombo8Exit
          end
          object wwDBLookupCombo5: TwwDBLookupCombo
            Left = 132
            Top = 40
            Width = 281
            Height = 21
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            BorderStyle = bsNone
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'CLIN_RAZA'#9'50'#9'CLIN_RAZA'#9'F')
            LookupTable = Q_CLIN
            LookupField = 'CLIN_ID'
            ParentFont = False
            TabOrder = 13
            Visible = False
            AutoDropDown = True
            ShowButton = True
            SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
            AllowClearKey = False
            OnEnter = wwDBLookupCombo5Enter
            OnExit = wwDBLookupCombo5Exit
          end
          object DBE_CLI_FCEP: TwwDBEdit
            Left = 110
            Top = 83
            Width = 69
            Height = 21
            BorderStyle = bsNone
            DataField = 'ORD_ENT_CEP'
            DataSource = DS_OCE
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnEnter = DBE_CLI_FCEPEnter
            OnExit = DBE_CLI_FCEPExit
          end
        end
      end
    end
  end
  object Q_OCE: TwwQuery
    CachedUpdates = True
    BeforePost = Q_OCEBeforePost
    AfterPost = Q_OCEAfterPost
    AfterDelete = Q_OCEAfterDelete
    OnNewRecord = Q_OCENewRecord
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    DataSource = FOS.DS_TDOC
    RequestLive = True
    SQL.Strings = (
      'Select * from ORDEM_COLETA_ENTREGA where'
      'TDOC_ID = :TDOC_ID'
      '')
    UpdateObject = UPD_OCE
    ValidateWithMask = True
    Left = 48
    Top = 10
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'TDOC_ID'
        ParamType = ptUnknown
      end>
    object Q_OCEORD_ID: TAutoIncField
      FieldName = 'ORD_ID'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_ID'
    end
    object Q_OCEOS_ID: TIntegerField
      FieldName = 'OS_ID'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.OS_ID'
    end
    object Q_OCEORD_COLETA_ENTREGA: TStringField
      FieldName = 'ORD_COLETA_ENTREGA'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_COLETA_ENTREGA'
      FixedChar = True
      Size = 1
    end
    object Q_OCEREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.REG_ID'
    end
    object Q_OCEVEIC_ID: TIntegerField
      FieldName = 'VEIC_ID'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.VEIC_ID'
    end
    object Q_OCETDOC_ID: TIntegerField
      FieldName = 'TDOC_ID'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.TDOC_ID'
    end
    object Q_OCEORD_TPCARGA: TStringField
      FieldName = 'ORD_TPCARGA'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_TPCARGA'
      FixedChar = True
      Size = 1
    end
    object Q_OCEORD_QTDE_PALLET: TIntegerField
      FieldName = 'ORD_QTDE_PALLET'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_QTDE_PALLET'
    end
    object Q_OCEORD_QTDE_CAIXA: TIntegerField
      FieldName = 'ORD_QTDE_CAIXA'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_QTDE_CAIXA'
    end
    object Q_OCETRANS_ID: TIntegerField
      FieldName = 'TRANS_ID'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.TRANS_ID'
    end
    object Q_OCEMOT_ID: TIntegerField
      FieldName = 'MOT_ID'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.MOT_ID'
    end
    object Q_OCEORD_COL_ENDERECO: TStringField
      FieldName = 'ORD_COL_ENDERECO'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_COL_ENDERECO'
      FixedChar = True
      Size = 50
    end
    object Q_OCEORD_COL_ENDERECO_COMPL: TStringField
      FieldName = 'ORD_COL_ENDERECO_COMPL'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_COL_ENDERECO_COMPL'
      FixedChar = True
    end
    object Q_OCEORD_COL_ENDERECO_BAIRRO: TStringField
      FieldName = 'ORD_COL_ENDERECO_BAIRRO'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_COL_ENDERECO_BAIRRO'
      FixedChar = True
    end
    object Q_OCEORD_COL_MUNICIPIO: TStringField
      FieldName = 'ORD_COL_MUNICIPIO'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_COL_MUNICIPIO'
      FixedChar = True
      Size = 40
    end
    object Q_OCEUF_SIGLA_COL: TStringField
      FieldName = 'UF_SIGLA_COL'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.UF_SIGLA_COL'
      FixedChar = True
      Size = 2
    end
    object Q_OCEORD_COL_CEP: TStringField
      FieldName = 'ORD_COL_CEP'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_COL_CEP'
      EditMask = '99999-999;0;_'
      FixedChar = True
      Size = 8
    end
    object Q_OCEORD_COL_TEL1: TStringField
      FieldName = 'ORD_COL_TEL1'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_COL_TEL1'
      EditMask = '!\(999\)#999-9999;0; '
      FixedChar = True
      Size = 11
    end
    object Q_OCEORD_COL_TEL2: TStringField
      FieldName = 'ORD_COL_TEL2'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_COL_TEL2'
      EditMask = '!\(999\)#999-9999;0; '
      FixedChar = True
      Size = 11
    end
    object Q_OCEORD_COL_FAX: TStringField
      FieldName = 'ORD_COL_FAX'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_COL_FAX'
      EditMask = '!\(999\)#999-9999;0; '
      FixedChar = True
      Size = 11
    end
    object Q_OCEORD_COL_EMAIL: TStringField
      FieldName = 'ORD_COL_EMAIL'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_COL_EMAIL'
      FixedChar = True
      Size = 60
    end
    object Q_OCEORD_COL_CONTATO: TStringField
      FieldName = 'ORD_COL_CONTATO'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_COL_CONTATO'
      FixedChar = True
      Size = 50
    end
    object Q_OCEORD_ENT_ENDERECO: TStringField
      FieldName = 'ORD_ENT_ENDERECO'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_ENT_ENDERECO'
      FixedChar = True
      Size = 50
    end
    object Q_OCEORD_ENT_ENDERECO_COMPL: TStringField
      FieldName = 'ORD_ENT_ENDERECO_COMPL'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_ENT_ENDERECO_COMPL'
      FixedChar = True
    end
    object Q_OCEORD_ENT_ENDERECO_BAIRRO: TStringField
      FieldName = 'ORD_ENT_ENDERECO_BAIRRO'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_ENT_ENDERECO_BAIRRO'
      FixedChar = True
    end
    object Q_OCEORD_ENT_MUNICIPIO: TStringField
      FieldName = 'ORD_ENT_MUNICIPIO'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_ENT_MUNICIPIO'
      FixedChar = True
      Size = 40
    end
    object Q_OCEUF_SIGLA_ENT: TStringField
      FieldName = 'UF_SIGLA_ENT'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.UF_SIGLA_ENT'
      FixedChar = True
      Size = 2
    end
    object Q_OCEORD_ENT_CEP: TStringField
      FieldName = 'ORD_ENT_CEP'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_ENT_CEP'
      EditMask = '99999-999;0;_'
      FixedChar = True
      Size = 8
    end
    object Q_OCEORD_ENT_TEL1: TStringField
      FieldName = 'ORD_ENT_TEL1'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_ENT_TEL1'
      EditMask = '!\(999\)#999-9999;0; '
      FixedChar = True
      Size = 11
    end
    object Q_OCEORD_ENT_TEL2: TStringField
      FieldName = 'ORD_ENT_TEL2'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_ENT_TEL2'
      EditMask = '!\(999\)#999-9999;0; '
      FixedChar = True
      Size = 11
    end
    object Q_OCEORD_ENT_FAX: TStringField
      FieldName = 'ORD_ENT_FAX'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_ENT_FAX'
      EditMask = '!\(999\)#999-9999;0; '
      FixedChar = True
      Size = 11
    end
    object Q_OCEORD_ENT_EMAIL: TStringField
      FieldName = 'ORD_ENT_EMAIL'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_ENT_EMAIL'
      FixedChar = True
      Size = 60
    end
    object Q_OCEORD_ENT_CONTATO: TStringField
      FieldName = 'ORD_ENT_CONTATO'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_ENT_CONTATO'
      FixedChar = True
      Size = 50
    end
    object Q_OCEORD_DATA: TDateTimeField
      FieldName = 'ORD_DATA'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_DATA'
    end
    object Q_OCEORD_PESO_TOTAL: TFloatField
      FieldName = 'ORD_PESO_TOTAL'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_PESO_TOTAL'
      DisplayFormat = '###,###,##0.0'
      EditFormat = '###,###,##0.0'
    end
    object Q_OCEORD_VOLUME: TFloatField
      FieldName = 'ORD_VOLUME'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_VOLUME'
      DisplayFormat = '###,###,##0.0'
      EditFormat = '###,###,##0.0'
    end
  end
  object DS_OCE: TwwDataSource
    DataSet = Q_OCE
    OnDataChange = DS_OCEDataChange
    Left = 95
    Top = 10
  end
  object UPD_OCE: TUpdateSQL
    ModifySQL.Strings = (
      'update ORDEM_COLETA_ENTREGA'
      'set'
      '  OS_ID = :OS_ID,'
      '  ORD_COLETA_ENTREGA = :ORD_COLETA_ENTREGA,'
      '  REG_ID = :REG_ID,'
      '  VEIC_ID = :VEIC_ID,'
      '  TDOC_ID = :TDOC_ID,'
      '  ORD_TPCARGA = :ORD_TPCARGA,'
      '  ORD_PESO_TOTAL = :ORD_PESO_TOTAL,'
      '  ORD_QTDE_PALLET = :ORD_QTDE_PALLET,'
      '  ORD_QTDE_CAIXA = :ORD_QTDE_CAIXA,'
      '  ORD_VOLUME = :ORD_VOLUME,'
      '  TRANS_ID = :TRANS_ID,'
      '  MOT_ID = :MOT_ID,'
      '  ORD_COL_ENDERECO = :ORD_COL_ENDERECO,'
      '  ORD_COL_ENDERECO_COMPL = :ORD_COL_ENDERECO_COMPL,'
      '  ORD_COL_ENDERECO_BAIRRO = :ORD_COL_ENDERECO_BAIRRO,'
      '  ORD_COL_MUNICIPIO = :ORD_COL_MUNICIPIO,'
      '  UF_SIGLA_COL = :UF_SIGLA_COL,'
      '  ORD_COL_CEP = :ORD_COL_CEP,'
      '  ORD_COL_TEL1 = :ORD_COL_TEL1,'
      '  ORD_COL_TEL2 = :ORD_COL_TEL2,'
      '  ORD_COL_FAX = :ORD_COL_FAX,'
      '  ORD_COL_EMAIL = :ORD_COL_EMAIL,'
      '  ORD_COL_CONTATO = :ORD_COL_CONTATO,'
      '  ORD_ENT_ENDERECO = :ORD_ENT_ENDERECO,'
      '  ORD_ENT_ENDERECO_COMPL = :ORD_ENT_ENDERECO_COMPL,'
      '  ORD_ENT_ENDERECO_BAIRRO = :ORD_ENT_ENDERECO_BAIRRO,'
      '  ORD_ENT_MUNICIPIO = :ORD_ENT_MUNICIPIO,'
      '  UF_SIGLA_ENT = :UF_SIGLA_ENT,'
      '  ORD_ENT_CEP = :ORD_ENT_CEP,'
      '  ORD_ENT_TEL1 = :ORD_ENT_TEL1,'
      '  ORD_ENT_TEL2 = :ORD_ENT_TEL2,'
      '  ORD_ENT_FAX = :ORD_ENT_FAX,'
      '  ORD_ENT_EMAIL = :ORD_ENT_EMAIL,'
      '  ORD_ENT_CONTATO = :ORD_ENT_CONTATO,'
      '  ORD_DATA = :ORD_DATA'
      'where'
      '  ORD_ID = :OLD_ORD_ID')
    InsertSQL.Strings = (
      'insert into ORDEM_COLETA_ENTREGA'
      '  (OS_ID, ORD_COLETA_ENTREGA, REG_ID, VEIC_ID, TDOC_ID, '
      'ORD_TPCARGA, '
      '   ORD_PESO_TOTAL, ORD_QTDE_PALLET, ORD_QTDE_CAIXA, ORD_VOLUME, '
      'TRANS_ID, '
      '   MOT_ID, ORD_COL_ENDERECO, ORD_COL_ENDERECO_COMPL, '
      'ORD_COL_ENDERECO_BAIRRO, '
      '   ORD_COL_MUNICIPIO, UF_SIGLA_COL, ORD_COL_CEP, ORD_COL_TEL1, '
      'ORD_COL_TEL2, '
      '   ORD_COL_FAX, ORD_COL_EMAIL, ORD_COL_CONTATO, '
      'ORD_ENT_ENDERECO, ORD_ENT_ENDERECO_COMPL, '
      '   ORD_ENT_ENDERECO_BAIRRO, ORD_ENT_MUNICIPIO, UF_SIGLA_ENT, '
      'ORD_ENT_CEP, '
      '   ORD_ENT_TEL1, ORD_ENT_TEL2, ORD_ENT_FAX, ORD_ENT_EMAIL, '
      'ORD_ENT_CONTATO, ORD_DATA)'
      'values'
      '  (:OS_ID, :ORD_COLETA_ENTREGA, :REG_ID, :VEIC_ID, :TDOC_ID, '
      ':ORD_TPCARGA, '
      '   :ORD_PESO_TOTAL, :ORD_QTDE_PALLET, :ORD_QTDE_CAIXA, '
      ':ORD_VOLUME, :TRANS_ID, '
      '   :MOT_ID, :ORD_COL_ENDERECO, :ORD_COL_ENDERECO_COMPL, '
      ':ORD_COL_ENDERECO_BAIRRO, '
      
        '   :ORD_COL_MUNICIPIO, :UF_SIGLA_COL, :ORD_COL_CEP, :ORD_COL_TEL' +
        '1, '
      ':ORD_COL_TEL2, '
      '   :ORD_COL_FAX, :ORD_COL_EMAIL, :ORD_COL_CONTATO, '
      ':ORD_ENT_ENDERECO, :ORD_ENT_ENDERECO_COMPL, '
      '   :ORD_ENT_ENDERECO_BAIRRO, :ORD_ENT_MUNICIPIO, :UF_SIGLA_ENT, '
      ':ORD_ENT_CEP, '
      '   :ORD_ENT_TEL1, :ORD_ENT_TEL2, :ORD_ENT_FAX, :ORD_ENT_EMAIL, '
      ':ORD_ENT_CONTATO, :ORD_DATA)')
    DeleteSQL.Strings = (
      'delete from ORDEM_COLETA_ENTREGA'
      'where'
      '  ORD_ID = :OLD_ORD_ID')
    Left = 153
    Top = 8
  end
  object Q_REG: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select * from REgiao order by REG_NOME')
    ValidateWithMask = True
    Left = 24
    Top = 444
    object Q_REGREG_NOME: TStringField
      DisplayWidth = 40
      FieldName = 'REG_NOME'
      Origin = 'NBFDADOS.REgiao.REG_NOME'
      FixedChar = True
      Size = 40
    end
    object Q_REGREG_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'REG_ID'
      Origin = 'NBFDADOS.REgiao.REG_ID'
      Visible = False
    end
  end
  object Q_VEIC: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select * from TPVEICULO order by VEIC_NOME')
    ValidateWithMask = True
    Left = 107
    Top = 448
    object Q_VEICVEIC_NOME: TStringField
      DisplayWidth = 40
      FieldName = 'VEIC_NOME'
      Origin = 'NBFDADOS.TPVEICULO.VEIC_NOME'
      FixedChar = True
      Size = 40
    end
    object Q_VEICVEIC_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'VEIC_ID'
      Origin = 'NBFDADOS.TPVEICULO.VEIC_ID'
      Visible = False
    end
  end
  object Q_TRANS: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'select TRANS_ID,TRANS_FANTASIA'
      'from TRANSPORTADORA order by TRANS_FANTASIA')
    ValidateWithMask = True
    Left = 183
    Top = 448
    object Q_TRANSTRANS_FANTASIA: TStringField
      DisplayWidth = 40
      FieldName = 'TRANS_FANTASIA'
      Origin = 'NBFDADOS.TRANSPORTADORA.TRANS_FANTASIA'
      FixedChar = True
      Size = 40
    end
    object Q_TRANSTRANS_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'TRANS_ID'
      Origin = 'NBFDADOS.TRANSPORTADORA.TRANS_ID'
      Visible = False
    end
  end
  object Q_TRMOT: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    DataSource = DS_OCE
    SQL.Strings = (
      'select MOT_ID,MOT_NOME,TRANS_ID '
      'from TRANSPORTADORA_MOTORISTA '
      'where MOT_ID = :MOT_ID'
      ' order by MOT_NOME')
    ValidateWithMask = True
    Left = 265
    Top = 448
    ParamData = <
      item
        DataType = ftInteger
        Name = 'MOT_ID'
        ParamType = ptUnknown
      end>
    object Q_TRMOTMOT_NOME: TStringField
      DisplayWidth = 40
      FieldName = 'MOT_NOME'
      Origin = 'NBFDADOS.TRANSPORTADORA_MOTORISTA.MOT_NOME'
      FixedChar = True
      Size = 40
    end
    object Q_TRMOTMOT_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'MOT_ID'
      Origin = 'NBFDADOS.TRANSPORTADORA_MOTORISTA.MOT_ID'
      Visible = False
    end
    object Q_TRMOTTRANS_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'TRANS_ID'
      Origin = 'NBFDADOS.TRANSPORTADORA_MOTORISTA.TRANS_ID'
      Visible = False
    end
  end
  object Q_CLIN: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select * from CLIENTENBF order by CLIN_RAZA ')
    ValidateWithMask = True
    Left = 268
    Top = 304
    object Q_CLINCLIN_RAZA: TStringField
      DisplayWidth = 50
      FieldName = 'CLIN_RAZA'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_RAZA'
      FixedChar = True
      Size = 50
    end
    object Q_CLINCLIN_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'CLIN_ID'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_ID'
      Visible = False
    end
    object Q_CLINCLIN_PESSOA: TStringField
      FieldName = 'CLIN_PESSOA'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_PESSOA'
      FixedChar = True
      Size = 1
    end
    object Q_CLINCLIN_NOME: TStringField
      FieldName = 'CLIN_NOME'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_NOME'
      FixedChar = True
      Size = 30
    end
    object Q_CLINCLIN_CGCCPF: TStringField
      FieldName = 'CLIN_CGCCPF'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_CGCCPF'
      FixedChar = True
      Size = 15
    end
    object Q_CLINCLIN_INSCRG: TStringField
      FieldName = 'CLIN_INSCRG'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_INSCRG'
      FixedChar = True
      Size = 15
    end
    object Q_CLINCLIN_ENDERECO: TStringField
      FieldName = 'CLIN_ENDERECO'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_ENDERECO'
      FixedChar = True
      Size = 50
    end
    object Q_CLINCLIN_ENDERECO_COMPL: TStringField
      FieldName = 'CLIN_ENDERECO_COMPL'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_ENDERECO_COMPL'
      FixedChar = True
    end
    object Q_CLINCLIN_ENDERECO_BAIRRO: TStringField
      FieldName = 'CLIN_ENDERECO_BAIRRO'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_ENDERECO_BAIRRO'
      FixedChar = True
      Size = 40
    end
    object Q_CLINCLIN_MUNICIPIO: TStringField
      FieldName = 'CLIN_MUNICIPIO'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_MUNICIPIO'
      FixedChar = True
      Size = 40
    end
    object Q_CLINUF_SIGLA: TStringField
      FieldName = 'UF_SIGLA'
      Origin = 'NBFDADOS.CLIENTENBF.UF_SIGLA'
      FixedChar = True
      Size = 2
    end
    object Q_CLINCLIN_CEP: TStringField
      FieldName = 'CLIN_CEP'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_CEP'
      FixedChar = True
      Size = 8
    end
    object Q_CLINCLIN_TEL1: TStringField
      FieldName = 'CLIN_TEL1'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_TEL1'
      FixedChar = True
      Size = 11
    end
    object Q_CLINCLIN_TEL2: TStringField
      FieldName = 'CLIN_TEL2'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_TEL2'
      FixedChar = True
      Size = 11
    end
    object Q_CLINCLIN_FAX: TStringField
      FieldName = 'CLIN_FAX'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_FAX'
      FixedChar = True
      Size = 11
    end
    object Q_CLINCLIN_EMAIL: TStringField
      FieldName = 'CLIN_EMAIL'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_EMAIL'
      FixedChar = True
      Size = 60
    end
    object Q_CLINCON_CODI: TStringField
      FieldName = 'CON_CODI'
      Origin = 'NBFDADOS.CLIENTENBF.CON_CODI'
      FixedChar = True
      Size = 6
    end
  end
  object Q_CLIF: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select * from CLIENTEFINAL order by CLIF_RAZA ')
    ValidateWithMask = True
    Left = 220
    Top = 304
    object Q_CLIFCLIF_RAZA: TStringField
      DisplayWidth = 50
      FieldName = 'CLIF_RAZA'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_RAZA'
      FixedChar = True
      Size = 50
    end
    object Q_CLIFCLIF_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'CLIF_ID'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_ID'
      Visible = False
    end
    object Q_CLIFCLIF_PESSOA: TStringField
      FieldName = 'CLIF_PESSOA'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_PESSOA'
      FixedChar = True
      Size = 1
    end
    object Q_CLIFCLIF_NOME: TStringField
      FieldName = 'CLIF_NOME'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_NOME'
      FixedChar = True
      Size = 30
    end
    object Q_CLIFCLIF_CGCCPF: TStringField
      FieldName = 'CLIF_CGCCPF'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_CGCCPF'
      FixedChar = True
      Size = 15
    end
    object Q_CLIFCLIF_INSCRG: TStringField
      FieldName = 'CLIF_INSCRG'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_INSCRG'
      FixedChar = True
      Size = 15
    end
    object Q_CLIFCLIF_ENDERECO: TStringField
      FieldName = 'CLIF_ENDERECO'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_ENDERECO'
      FixedChar = True
      Size = 50
    end
    object Q_CLIFCLIF_ENDERECO_COMPL: TStringField
      FieldName = 'CLIF_ENDERECO_COMPL'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_ENDERECO_COMPL'
      FixedChar = True
    end
    object Q_CLIFCLIF_ENDERECO_BAIRRO: TStringField
      FieldName = 'CLIF_ENDERECO_BAIRRO'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_ENDERECO_BAIRRO'
      FixedChar = True
      Size = 40
    end
    object Q_CLIFCLIF_MUNICIPIO: TStringField
      FieldName = 'CLIF_MUNICIPIO'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_MUNICIPIO'
      FixedChar = True
      Size = 40
    end
    object Q_CLIFUF_SIGLA: TStringField
      FieldName = 'UF_SIGLA'
      Origin = 'NBFDADOS.CLIENTEFINAL.UF_SIGLA'
      FixedChar = True
      Size = 2
    end
    object Q_CLIFCLIF_CEP: TStringField
      FieldName = 'CLIF_CEP'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_CEP'
      FixedChar = True
      Size = 8
    end
    object Q_CLIFCLIF_TEL1: TStringField
      FieldName = 'CLIF_TEL1'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_TEL1'
      FixedChar = True
      Size = 11
    end
    object Q_CLIFCLIF_TEL2: TStringField
      FieldName = 'CLIF_TEL2'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_TEL2'
      FixedChar = True
      Size = 11
    end
    object Q_CLIFCLIF_FAX: TStringField
      FieldName = 'CLIF_FAX'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_FAX'
      FixedChar = True
      Size = 11
    end
    object Q_CLIFCLIF_EMAIL: TStringField
      FieldName = 'CLIF_EMAIL'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_EMAIL'
      FixedChar = True
      Size = 60
    end
    object Q_CLIFCLIF_CONTATO: TStringField
      FieldName = 'CLIF_CONTATO'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_CONTATO'
      FixedChar = True
      Size = 50
    end
  end
  object Q_UF1: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select *  from UF order by UF_NOME'
      ''
      '')
    ValidateWithMask = True
    Left = 312
    Top = 351
    object Q_UF1UF_NOME: TStringField
      DisplayLabel = 'Estado'
      DisplayWidth = 30
      FieldName = 'UF_NOME'
      Origin = 'NBFDADOS.UF.UF_NOME'
      FixedChar = True
      Size = 30
    end
    object Q_UF1UF_SIGLA: TStringField
      DisplayWidth = 2
      FieldName = 'UF_SIGLA'
      Origin = 'NBFDADOS.UF.UF_SIGLA'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object Q_UF1UF_ALIQUOTA: TFloatField
      DisplayWidth = 10
      FieldName = 'UF_ALIQUOTA'
      Origin = 'NBFDADOS.UF.UF_ALIQUOTA'
      Visible = False
    end
  end
  object Q_UF2: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select *  from UF order by UF_NOME'
      ''
      '')
    ValidateWithMask = True
    Left = 312
    Top = 407
    object Q_UF2UF_NOME: TStringField
      DisplayWidth = 30
      FieldName = 'UF_NOME'
      Origin = 'NBFDADOS.UF.UF_NOME'
      FixedChar = True
      Size = 30
    end
    object Q_UF2UF_SIGLA: TStringField
      DisplayWidth = 2
      FieldName = 'UF_SIGLA'
      Origin = 'NBFDADOS.UF.UF_SIGLA'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object Q_UF2UF_ALIQUOTA: TFloatField
      DisplayWidth = 10
      FieldName = 'UF_ALIQUOTA'
      Origin = 'NBFDADOS.UF.UF_ALIQUOTA'
      Visible = False
    end
  end
  object Q_CEP: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    ValidateWithMask = True
    Left = 248
    Top = 236
  end
  object Q_OSESPEC: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    ValidateWithMask = True
    Left = 687
    Top = 423
  end
end
