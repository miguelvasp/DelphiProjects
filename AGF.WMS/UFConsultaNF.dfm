object FFConsultaNF: TFFConsultaNF
  Left = 234
  Top = 54
  Width = 780
  Height = 567
  AutoSize = True
  BorderIcons = []
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 102
    Top = 210
    Width = 64
    Height = 15
    Caption = 'Cliente NBF'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 764
    Height = 45
    BevelInner = bvLowered
    TabOrder = 0
    object SpeedButton3: TSpeedButton
      Left = 728
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
    object Label16: TLabel
      Left = 9
      Top = 5
      Width = 322
      Height = 29
      Caption = 'Consultas por Nota Fiscal'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -24
      Font.Name = 'Georgia'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 48
    Width = 764
    Height = 481
    BevelInner = bvLowered
    TabOrder = 1
    object GroupBox6: TGroupBox
      Left = 10
      Top = 5
      Width = 744
      Height = 471
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Label4: TLabel
        Left = 77
        Top = 134
        Width = 80
        Height = 15
        Caption = 'N� Nota Fiscal '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 246
        Top = 338
        Width = 18
        Height = 15
        Caption = 'at�'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 42
        Top = 337
        Width = 113
        Height = 15
        Caption = 'Per�odo de Emiss�o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 110
        Top = 238
        Width = 45
        Height = 15
        Caption = 'Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label20: TLabel
        Left = 92
        Top = 200
        Width = 64
        Height = 15
        Caption = 'Cliente NBF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 86
        Top = 304
        Width = 68
        Height = 15
        Caption = 'Cliente Final'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 52
        Top = 165
        Width = 104
        Height = 15
        Caption = 'Cliente Remetente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText3: TDBText
        Left = 324
        Top = 233
        Width = 349
        Height = 17
        DataField = 'PRO_DESC'
        DataSource = DS_PROD
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 68
        Top = 272
        Width = 89
        Height = 15
        Caption = 'Tipo de Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 122
        Top = 407
        Width = 33
        Height = 15
        Caption = 'Batch'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 130
        Top = 437
        Width = 25
        Height = 15
        Caption = 'Lote'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 246
        Top = 406
        Width = 18
        Height = 15
        Caption = 'at�'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label17: TLabel
        Left = 370
        Top = 437
        Width = 28
        Height = 15
        Caption = 'Load'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label18: TLabel
        Left = 66
        Top = 369
        Width = 90
        Height = 15
        Caption = 'Data de entrega'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label19: TLabel
        Left = 246
        Top = 370
        Width = 18
        Height = 15
        Caption = 'at�'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object SBT_VISU: TSpeedButton
        Left = 543
        Top = 431
        Width = 145
        Height = 24
        Hint = 'Visualiza Estoque'
        Caption = '&Visualizar'
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
          033333777777777773333330777777703333333773F333773333333330888033
          33333FFFF7FFF7FFFFFF0000000000000003777777777777777F0FFFFFFFFFF9
          FF037F3333333337337F0F78888888887F037F33FFFFFFFFF37F0F7000000000
          8F037F3777777777F37F0F70AAAAAAA08F037F37F3333337F37F0F70ADDDDDA0
          8F037F37F3333337F37F0F70A99A99A08F037F37F3333337F37F0F70A99A99A0
          8F037F37F3333337F37F0F70AAAAAAA08F037F37FFFFFFF7F37F0F7000000000
          8F037F3777777777337F0F77777777777F037F3333333333337F0FFFFFFFFFFF
          FF037FFFFFFFFFFFFF7F00000000000000037777777777777773}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = SBT_VISUClick
      end
      object Data2: TMaskEdit
        Left = 273
        Top = 335
        Width = 76
        Height = 22
        BorderStyle = bsNone
        CharCase = ecUpperCase
        EditMask = '!99/99/9999;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 9
        Text = '  /  /    '
        OnEnter = Data2Enter
        OnExit = Data2Exit
      end
      object Data1: TMaskEdit
        Left = 160
        Top = 335
        Width = 76
        Height = 22
        AutoSize = False
        BorderStyle = bsNone
        CharCase = ecUpperCase
        EditMask = '!99/99/9999;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 8
        Text = '  /  /    '
        OnEnter = Data1Enter
        OnExit = Data1Exit
      end
      object combo_cliente: TwwDBLookupCombo
        Left = 160
        Top = 196
        Width = 473
        Height = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        CharCase = ecUpperCase
        BorderStyle = bsNone
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'CLIN_RAZA'#9'50'#9'Raz�o Social'#9'F')
        LookupTable = Q_CLINBF
        LookupField = 'CLIN_ID'
        DropDownCount = 13
        ParentFont = False
        TabOrder = 3
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = True
        OnChange = combo_clienteChange
        OnEnter = combo_clienteEnter
        OnExit = combo_clienteExit
      end
      object dbnf: TwwDBEdit
        Left = 161
        Top = 130
        Width = 120
        Height = 23
        BorderStyle = bsNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 1
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnEnter = dbnfEnter
        OnExit = dbnfExit
      end
      object combo_cliente_final: TwwDBLookupCombo
        Left = 160
        Top = 302
        Width = 473
        Height = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        CharCase = ecUpperCase
        BorderStyle = bsNone
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'CLIF_RAZA'#9'50'#9'CLIF_RAZA'#9'F')
        LookupTable = Q_CLIFINAL
        LookupField = 'CLIF_ID'
        DropDownCount = 10
        ParentFont = False
        TabOrder = 7
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = True
        OnEnter = combo_clienteEnter
        OnExit = combo_clienteExit
      end
      object combo_produto: TwwDBLookupCombo
        Left = 160
        Top = 234
        Width = 152
        Height = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        CharCase = ecUpperCase
        BorderStyle = bsNone
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'PRO_COD'#9'16'#9'C�digo'#9'F'
          'PRO_DESC'#9'40'#9'Descri��o'#9'F')
        LookupTable = Q_PROD
        LookupField = 'PRO_ID'
        DropDownCount = 16
        Enabled = False
        ParentFont = False
        TabOrder = 5
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = True
        OnCloseUp = combo_produtoCloseUp
        OnEnter = combo_produtoEnter
        OnExit = combo_produtoExit
      end
      object RadioGroup1: TRadioGroup
        Left = 9
        Top = 7
        Width = 728
        Height = 106
        Caption = 'Tipo de Nota Fiscal'
        Columns = 4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ItemIndex = 0
        Items.Strings = (
          'Sa�da'
          'Entrada'
          'Remetente'
          'Retorno Simb�lico'
          'Armaz�m'
          'Remessa Conta e Ordem 3�s'
          'Gen�rica'
          'Entrada Industrializa��o'
          'Industrializa��o Efetuada'
          'Retorno de Industrializa��o'
          'Entrada Reprocesso')
        ParentFont = False
        TabOrder = 0
        OnClick = RadioGroup1Click
      end
      object wwDBLookupCombo1: TwwDBLookupCombo
        Left = 160
        Top = 161
        Width = 473
        Height = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        CharCase = ecUpperCase
        BorderStyle = bsNone
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'CLIN_RAZA'#9'50'#9'Raz�o Social'#9'F')
        LookupTable = Q_REM
        LookupField = 'CLIN_ID'
        DropDownCount = 13
        Enabled = False
        ParentFont = False
        TabOrder = 2
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = True
        OnEnter = combo_clienteEnter
        OnExit = combo_clienteExit
      end
      object Panel12: TPanel
        Left = 314
        Top = 228
        Width = 424
        Height = 31
        BevelOuter = bvNone
        TabOrder = 4
      end
      object wwDBLookupCombo2: TwwDBLookupCombo
        Left = 160
        Top = 268
        Width = 225
        Height = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        CharCase = ecUpperCase
        BorderStyle = bsNone
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'TPRO_NOME'#9'41'#9'Nome'#9'F')
        LookupTable = Q_TPROD
        LookupField = 'TPRO_ID'
        DropDownCount = 15
        Enabled = False
        ParentFont = False
        TabOrder = 6
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = True
        OnEnter = wwDBLookupCombo2Enter
        OnExit = wwDBLookupCombo2Exit
      end
      object RadioGroup2: TRadioGroup
        Left = 388
        Top = 333
        Width = 136
        Height = 33
        Caption = 'Calcular Qtde. Pallet ?'
        Columns = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ItemIndex = 0
        Items.Strings = (
          'N�o'
          'Sim')
        ParentFont = False
        TabOrder = 14
        OnClick = RadioGroup1Click
      end
      object MaskEdit1: TMaskEdit
        Left = 160
        Top = 405
        Width = 76
        Height = 22
        AutoSize = False
        BorderStyle = bsNone
        CharCase = ecUpperCase
        EditMask = '!99/99/9999;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 12
        Text = '  /  /    '
        OnEnter = Data1Enter
        OnExit = Data1Exit
      end
      object wwDBEdit1: TwwDBEdit
        Left = 161
        Top = 435
        Width = 192
        Height = 23
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        MaxLength = 20
        ParentFont = False
        TabOrder = 15
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnEnter = dbnfEnter
        OnExit = dbnfExit
      end
      object MaskEdit2: TMaskEdit
        Left = 273
        Top = 405
        Width = 76
        Height = 22
        BorderStyle = bsNone
        CharCase = ecUpperCase
        EditMask = '!99/99/9999;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 13
        Text = '  /  /    '
        OnEnter = MaskEdit2Enter
        OnExit = MaskEdit2Exit
      end
      object edtLoad: TwwDBEdit
        Left = 401
        Top = 435
        Width = 96
        Height = 23
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 16
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnEnter = dbnfEnter
        OnExit = dbnfExit
      end
      object edtEntregaIni: TMaskEdit
        Left = 160
        Top = 367
        Width = 76
        Height = 22
        AutoSize = False
        BorderStyle = bsNone
        CharCase = ecUpperCase
        EditMask = '!99/99/9999;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 10
        Text = '  /  /    '
        OnEnter = Data1Enter
        OnExit = Data1Exit
      end
      object edtEntregaFim: TMaskEdit
        Left = 273
        Top = 367
        Width = 76
        Height = 22
        BorderStyle = bsNone
        CharCase = ecUpperCase
        EditMask = '!99/99/9999;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 11
        Text = '  /  /    '
        OnEnter = Data2Enter
        OnExit = Data2Exit
      end
    end
  end
  object Panel1: TPanel
    Left = 19
    Top = 146
    Width = 729
    Height = 342
    BevelInner = bvSpace
    BevelOuter = bvLowered
    TabOrder = 2
    Visible = False
    object Label12: TLabel
      Left = 168
      Top = 79
      Width = 77
      Height = 15
      Caption = 'N� Nota Fiscal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 132
      Top = 143
      Width = 113
      Height = 15
      Caption = 'Per�odo de Emiss�o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label14: TLabel
      Left = 332
      Top = 143
      Width = 18
      Height = 15
      Caption = 'at�'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label15: TLabel
      Left = 177
      Top = 112
      Width = 68
      Height = 15
      Caption = 'Cliente Final'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SpeedButton1: TSpeedButton
      Left = 296
      Top = 302
      Width = 145
      Height = 24
      Hint = 'Visualiza Estoque'
      Caption = '&Visualizar'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
        033333777777777773333330777777703333333773F333773333333330888033
        33333FFFF7FFF7FFFFFF0000000000000003777777777777777F0FFFFFFFFFF9
        FF037F3333333337337F0F78888888887F037F33FFFFFFFFF37F0F7000000000
        8F037F3777777777F37F0F70AAAAAAA08F037F37F3333337F37F0F70ADDDDDA0
        8F037F37F3333337F37F0F70A99A99A08F037F37F3333337F37F0F70A99A99A0
        8F037F37F3333337F37F0F70AAAAAAA08F037F37FFFFFFF7F37F0F7000000000
        8F037F3777777777337F0F77777777777F037F3333333333337F0FFFFFFFFFFF
        FF037FFFFFFFFFFFFF7F00000000000000037777777777777773}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SBT_VISUClick
    end
    object wwDBEdit2: TwwDBEdit
      Left = 249
      Top = 77
      Width = 120
      Height = 23
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 0
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnEnter = dbnfEnter
      OnExit = dbnfExit
    end
    object MaskEdit3: TMaskEdit
      Left = 249
      Top = 142
      Width = 76
      Height = 22
      AutoSize = False
      BorderStyle = bsNone
      CharCase = ecUpperCase
      EditMask = '!99/99/9999;1;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 2
      Text = '  /  /    '
      OnEnter = Data1Enter
      OnExit = Data1Exit
    end
    object MaskEdit4: TMaskEdit
      Left = 359
      Top = 142
      Width = 76
      Height = 22
      BorderStyle = bsNone
      CharCase = ecUpperCase
      EditMask = '!99/99/9999;1;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 3
      Text = '  /  /    '
      OnEnter = Data2Enter
      OnExit = Data2Exit
    end
    object wwDBEdit3: TwwDBEdit
      Left = 249
      Top = 109
      Width = 392
      Height = 23
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 1
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnEnter = dbnfEnter
      OnExit = dbnfExit
    end
  end
  object Q_CLINBF: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select  CLIN_ID,CLIN_RAZA  from CLIENTENBF where'
      '(CLIN_CONTRATO <> '#39'I'#39' and CLIN_CONTRATO <> '#39'R'#39') '
      'order by CLIN_RAZA '
      '')
    ValidateWithMask = True
    Left = 674
    Top = 280
    object Q_CLINBFCLIN_RAZA: TStringField
      DisplayLabel = 'Raz�o Social'
      DisplayWidth = 50
      FieldName = 'CLIN_RAZA'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_RAZA'
      FixedChar = True
      Size = 50
    end
    object Q_CLINBFCLIN_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'CLIN_ID'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_ID'
      Visible = False
    end
  end
  object Q_PROD: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    DataSource = DS_CLINBF
    SQL.Strings = (
      'select PRO_ID,PRO_COD,PRO_DESC from PRODUTO where'
      'CLIN_ID = :CLIN_ID'
      'order by PRO_COD'
      '')
    ValidateWithMask = True
    Left = 567
    Top = 368
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'CLIN_ID'
        ParamType = ptUnknown
      end>
    object Q_PRODPRO_COD: TStringField
      DisplayLabel = 'C�digo'
      DisplayWidth = 16
      FieldName = 'PRO_COD'
      Origin = 'NBFDADOS.PRODUTO.PRO_COD'
      FixedChar = True
      Size = 16
    end
    object Q_PRODPRO_DESC: TStringField
      DisplayLabel = 'Descri��o'
      DisplayWidth = 40
      FieldName = 'PRO_DESC'
      Origin = 'NBFDADOS.PRODUTO.PRO_DESC'
      FixedChar = True
      Size = 40
    end
    object Q_PRODPRO_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'PRO_ID'
      Origin = 'NBFDADOS.PRODUTO.PRO_ID'
      Visible = False
    end
  end
  object DS_PROD: TwwDataSource
    DataSet = Q_PROD
    Left = 514
    Top = 322
  end
  object DS_CLINBF: TwwDataSource
    DataSet = Q_CLINBF
    Left = 578
    Top = 282
  end
  object Q_CLIFINAL: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'select CLIF_ID,CLIF_RAZA from CLIENTEFINAL order by CLIF_NOME')
    ValidateWithMask = True
    Left = 648
    Top = 352
    object Q_CLIFINALCLIF_RAZA: TStringField
      DisplayWidth = 50
      FieldName = 'CLIF_RAZA'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_RAZA'
      FixedChar = True
      Size = 50
    end
    object Q_CLIFINALCLIF_ID: TAutoIncField
      FieldName = 'CLIF_ID'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_ID'
      Visible = False
    end
  end
  object Q_REM: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select  CLIN_ID,CLIN_RAZA  from CLIENTENBF where'
      '(CLIN_CONTRATO <> '#39'I'#39' and CLIN_CONTRATO = '#39'R'#39') '
      'order by CLIN_RAZA '
      '')
    ValidateWithMask = True
    Left = 698
    Top = 166
    object StringField1: TStringField
      DisplayLabel = 'Raz�o Social'
      DisplayWidth = 50
      FieldName = 'CLIN_RAZA'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_RAZA'
      FixedChar = True
      Size = 50
    end
    object AutoIncField1: TAutoIncField
      DisplayWidth = 10
      FieldName = 'CLIN_ID'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_ID'
      Visible = False
    end
  end
  object DS_REM: TwwDataSource
    DataSet = Q_REM
    Left = 698
    Top = 224
  end
  object Q_TPROD: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    DataSource = DS_CLINBF
    SQL.Strings = (
      'select * from TPPRODUTO_CLINBF  where'
      'CLIN_ID = :CLIN_ID'
      'order by TPRO_NOME')
    ValidateWithMask = True
    Left = 627
    Top = 238
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'CLIN_ID'
        ParamType = ptUnknown
      end>
    object Q_TPRODTPRO_NOME: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 41
      FieldName = 'TPRO_NOME'
      Origin = 'NBFDADOS.TPPRODUTO_CLINBF.TPRO_NOME'
      FixedChar = True
      Size = 40
    end
    object Q_TPRODTPRO_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'TPRO_ID'
      Origin = 'NBFDADOS.TPPRODUTO_CLINBF.TPRO_ID'
      Visible = False
    end
    object Q_TPRODCLIN_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'CLIN_ID'
      Origin = 'NBFDADOS.TPPRODUTO_CLINBF.CLIN_ID'
      Visible = False
    end
  end
  object STP_CONSULTANF: TwwStoredProc
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    StoredProcName = 'dbo.STP_CONSULTANF;1'
    ValidateWithMask = True
    Left = 451
    Top = 184
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Result'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = '@NF'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@CLIN_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@CLIN_REMET'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@PRO_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@CLIF_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@TPRO_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@TIPO_NF'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@DATAI'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@DATAF'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@CALCPALLET'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@LOTE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@BATCH'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@BATCHF'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@CH'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@LOAD_IN'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@ENTREGA_INI'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@ENTREGA_FIM'
        ParamType = ptInput
      end>
  end
  object Q_AUX: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    ValidateWithMask = True
    Left = 680
    Top = 361
  end
  object Q_CONSUL: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select COUNT(*)  AS QTDE  from CONSULTA_NF where CH = :CH'
      '')
    ValidateWithMask = True
    Left = 416
    Top = 281
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'CH'
        ParamType = ptUnknown
      end>
  end
  object STP_CONSULTANF2: TADOStoredProc
    Connection = FMenu.ADOConnection
    ProcedureName = 'STP_CONSULTANF;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@NF'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@CLIN_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@CLIN_REMET'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@PRO_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@CLIF_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@TPRO_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@TIPO_NF'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@DATAI'
        Attributes = [paNullable]
        DataType = ftString
        Size = 8
        Value = Null
      end
      item
        Name = '@DATAF'
        Attributes = [paNullable]
        DataType = ftString
        Size = 8
        Value = Null
      end
      item
        Name = '@CALCPALLET'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = Null
      end
      item
        Name = '@LOTE'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@BATCH'
        Attributes = [paNullable]
        DataType = ftString
        Size = 8
        Value = Null
      end
      item
        Name = '@BATCHF'
        Attributes = [paNullable]
        DataType = ftString
        Size = 8
        Value = Null
      end
      item
        Name = '@CH'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@LOAD_IN'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@ENTREGA_INI'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@ENTREGA_FIM'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end>
    Left = 643
    Top = 91
  end
end
