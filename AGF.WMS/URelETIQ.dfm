object FRelETIQ: TFRelETIQ
  Left = 101
  Top = 54
  Width = 640
  Height = 462
  BorderIcons = []
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 2
    Top = 2
    Width = 612
    Height = 45
    BevelInner = bvLowered
    TabOrder = 0
    object SpeedButton3: TSpeedButton
      Left = 578
      Top = 9
      Width = 25
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
      Width = 279
      Height = 29
      Caption = 'Emissão de Pallet TAG'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -24
      Font.Name = 'Georgia'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object DBNavigator1: TDBNavigator
      Left = 386
      Top = 9
      Width = 192
      Height = 25
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
    Left = 2
    Top = 53
    Width = 612
    Height = 364
    BevelInner = bvLowered
    TabOrder = 1
    object SpeedButton1: TSpeedButton
      Left = 238
      Top = 286
      Width = 129
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
      OnClick = SpeedButton1Click
    end
    object RadioGroup1: TRadioGroup
      Left = 23
      Top = 21
      Width = 576
      Height = 73
      Caption = ' Seleção '
      Columns = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ItemIndex = 0
      Items.Strings = (
        'Impressão Total'
        'Reimpressão')
      ParentFont = False
      TabOrder = 0
      OnClick = RadioGroup1Click
    end
    object GroupBox6: TGroupBox
      Left = 89
      Top = 138
      Width = 429
      Height = 103
      Caption = 'Romaneio de Entrada Nº'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      Visible = False
      object wwDBLookupCombo3: TwwDBLookupCombo
        Left = 145
        Top = 36
        Width = 144
        Height = 39
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -29
        Font.Name = 'Arial'
        Font.Style = []
        CharCase = ecUpperCase
        BorderStyle = bsNone
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'ROM_ID'#9'10'#9'ROM_ID'#9'F')
        LookupTable = Q_ESTQ
        LookupField = 'ROM_ID'
        DropDownCount = 6
        ParentFont = False
        TabOrder = 0
        AutoDropDown = True
        ShowButton = True
        AllowClearKey = True
        OnEnter = wwDBLookupCombo3Enter
        OnExit = wwDBLookupCombo3Exit
      end
    end
    object GroupBox1: TGroupBox
      Left = 89
      Top = 130
      Width = 429
      Height = 111
      Caption = 'Digitar o Pallet TAG  '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      Visible = False
      object wwDBLookupCombo1: TwwDBLookupCombo
        Left = 184
        Top = 36
        Width = 161
        Height = 39
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -29
        Font.Name = 'Arial'
        Font.Style = []
        CharCase = ecUpperCase
        BorderStyle = bsNone
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'ESTQ_TAG'#9'10'#9'ESTQ_TAG'#9'F')
        LookupTable = Q_ESTOQUE
        LookupField = 'ESTQ_TAG'
        DropDownCount = 6
        ParentFont = False
        TabOrder = 0
        AutoDropDown = True
        ShowButton = True
        AllowClearKey = True
        OnEnter = wwDBLookupCombo1Enter
        OnExit = wwDBLookupCombo1Exit
      end
    end
  end
  object Q_ESTQ: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select ROM_ID from ROMANEIO'
      '')
    ControlType.Strings = (
      'PROcod;CustomEdit;ComboPROD'
      'AreaDESC;CustomEdit;ComboAREA'
      'POSdesc;CustomEdit;ComboPOSICAO')
    ValidateWithMask = True
    Left = 40
    Top = 242
    object Q_ESTQROM_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'ROM_ID'
      Origin = 'NBFDADOS.ROMANEIO.ROM_ID'
    end
  end
  object Q_ESTOQUE: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select distinct  ESTQ_TAG from ESTOQUE where'
      ' ESTQ_QTDE_RETIRA = 0 '
      'order by estq_TAG')
    ControlType.Strings = (
      'PROcod;CustomEdit;ComboPROD'
      'AreaDESC;CustomEdit;ComboAREA'
      'POSdesc;CustomEdit;ComboPOSICAO')
    ValidateWithMask = True
    Left = 40
    Top = 294
    object Q_ESTOQUEESTQ_TAG: TIntegerField
      DisplayWidth = 10
      FieldName = 'ESTQ_TAG'
      Origin = 'NBFDADOS.ESTOQUE.ESTQ_TAG'
    end
  end
end
