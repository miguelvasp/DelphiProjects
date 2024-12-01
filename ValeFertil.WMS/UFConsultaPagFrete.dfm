object FFConsultaPagFrete: TFFConsultaPagFrete
  Left = 36
  Top = 56
  Width = 748
  Height = 461
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
  object Panel3: TPanel
    Left = 0
    Top = 2
    Width = 738
    Height = 45
    BevelInner = bvLowered
    TabOrder = 0
    object SpeedButton3: TSpeedButton
      Left = 704
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
      Width = 415
      Height = 29
      Caption = 'Consultas de Pagamento de Frete'
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
    Top = 50
    Width = 738
    Height = 375
    BevelInner = bvLowered
    TabOrder = 1
    object SpeedButton1: TSpeedButton
      Left = 305
      Top = 337
      Width = 128
      Height = 25
      Hint = 'Visualizar Relatório'
      Caption = 'Visualizar '
      Glyph.Data = {
        42010000424D4201000000000000760000002800000013000000110000000100
        040000000000CC00000000000000000000001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888880008880000000000000888880008880FFFFFFFFFFF0888880008880
        FFFFFFFFFFF0888880008880F77F777F77F0888880008880FFFFFFFFFFF08888
        80008880F7F77F7F77F0888880008880FFFFFFFFFFF0888880008880F77F7F7F
        77F0888880008880FFFFFFFFFFF0888880008880F7777F77F7F0888880008880
        FFFFFFFFFFF0888880008880F77F77F777F0888880008880FFFFFFFFFFF08888
        80038880FFFFFFFFFFF08880000F88800000000000008880000F888888888888
        88888880000F}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton1Click
    end
    object GroupBox6: TGroupBox
      Left = 6
      Top = 10
      Width = 723
      Height = 319
      Caption = 'Seleção de Filtros'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Label4: TLabel
        Left = 642
        Top = 14
        Width = 58
        Height = 15
        Caption = 'Pallet TAG'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object Label6: TLabel
        Left = 334
        Top = 233
        Width = 18
        Height = 15
        Caption = 'até'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 199
        Top = 232
        Width = 44
        Height = 15
        Caption = 'Período'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label20: TLabel
        Left = 179
        Top = 265
        Width = 64
        Height = 15
        Alignment = taRightJustify
        Caption = 'Cliente NBF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel
        Left = 156
        Top = 108
        Width = 89
        Height = 15
        Caption = 'Transportadora'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 191
        Top = 139
        Width = 54
        Height = 15
        Caption = 'Motorista'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 118
        Top = 170
        Width = 127
        Height = 15
        Alignment = taRightJustify
        Caption = 'Veículo Transportador'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 154
        Top = 202
        Width = 91
        Height = 15
        Caption = 'Região p/ Pagto.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Data2: TMaskEdit
        Left = 361
        Top = 230
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
        TabOrder = 6
        Text = '  /  /    '
        OnEnter = Data2Enter
        OnExit = Data2Exit
      end
      object Data1: TMaskEdit
        Left = 249
        Top = 230
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
        TabOrder = 5
        Text = '  /  /    '
        OnEnter = Data1Enter
        OnExit = Data1Exit
      end
      object combo_cliente: TwwDBLookupCombo
        Left = 249
        Top = 261
        Width = 401
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
          'CLIN_RAZA'#9'50'#9'Razão Social'#9'F')
        LookupTable = Q_CLINBF
        LookupField = 'CLIN_ID'
        DropDownCount = 13
        ParentFont = False
        TabOrder = 8
        AutoDropDown = True
        ShowButton = True
        AllowClearKey = True
        OnEnter = combo_clienteEnter
        OnExit = combo_clienteExit
      end
      object DBTAG: TwwDBEdit
        Left = 705
        Top = 10
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
        Visible = False
        WantReturns = False
        WordWrap = False
        OnEnter = DBTAGEnter
        OnExit = DBTAGExit
      end
      object wwDBLookupCombo1: TwwDBLookupCombo
        Left = 249
        Top = 104
        Width = 401
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
          'TRANS_FANTASIA'#9'40'#9'TRANS_FANTASIA'#9'F')
        LookupTable = Q_TRANS
        LookupField = 'TRANS_ID'
        DropDownCount = 13
        ParentFont = False
        TabOrder = 1
        AutoDropDown = True
        ShowButton = True
        AllowClearKey = True
        OnChange = wwDBLookupCombo1Change
        OnEnter = wwDBLookupCombo1Enter
        OnExit = wwDBLookupCombo1Exit
      end
      object combo_Motorista: TwwDBLookupCombo
        Left = 249
        Top = 136
        Width = 289
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
          'MOT_NOME'#9'40'#9'MOT_NOME'#9'F')
        LookupTable = Q_TRMOT
        LookupField = 'MOT_ID'
        DropDownCount = 16
        Enabled = False
        ParentFont = False
        TabOrder = 2
        AutoDropDown = True
        ShowButton = True
        AllowClearKey = True
        OnEnter = combo_MotoristaEnter
        OnExit = combo_MotoristaExit
      end
      object wwDBLookupCombo2: TwwDBLookupCombo
        Left = 249
        Top = 168
        Width = 185
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
          'VEIC_NOME'#9'40'#9'VEIC_NOME'#9'F')
        LookupTable = Q_VEIC
        LookupField = 'VEIC_ID'
        DropDownCount = 13
        ParentFont = False
        TabOrder = 3
        AutoDropDown = True
        ShowButton = True
        AllowClearKey = True
        OnEnter = wwDBLookupCombo2Enter
        OnExit = wwDBLookupCombo2Exit
      end
      object wwDBLookupCombo3: TwwDBLookupCombo
        Left = 249
        Top = 200
        Width = 185
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
          'REG_NOME'#9'40'#9'REG_NOME'#9'F')
        LookupTable = Q_REG
        LookupField = 'REG_ID'
        DropDownCount = 13
        ParentFont = False
        TabOrder = 4
        AutoDropDown = True
        ShowButton = True
        AllowClearKey = True
        OnEnter = wwDBLookupCombo3Enter
        OnExit = wwDBLookupCombo3Exit
      end
      object RadioGroup2: TRadioGroup
        Left = 260
        Top = 30
        Width = 213
        Height = 51
        Caption = 'Tipo'
        Columns = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ItemIndex = 0
        Items.Strings = (
          'Analítico'
          'Sintético')
        ParentFont = False
        TabOrder = 7
        OnClick = RadioGroup2Click
      end
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
    Left = 594
    Top = 232
    object Q_CLINBFCLIN_RAZA: TStringField
      DisplayLabel = 'Razão Social'
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
  object DS_CLINBF: TwwDataSource
    DataSet = Q_CLINBF
    Left = 658
    Top = 242
  end
  object Q_TRMOT: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'select MOT_ID,MOT_NOME,TRANS_ID '
      'from TRANSPORTADORA_MOTORISTA '
      'order by MOT_NOME')
    ValidateWithMask = True
    Left = 606
    Top = 296
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
  object Q_TRANS: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'select A.TRANS_ID,A.TRANS_FANTASIA from'
      'TRANSPORTADORA A, TRANSPORTADORA_MOTORISTA B'
      'where    A.TRANS_FLAG = '#39'S'#39
      'and   A.TRANS_ID = B.TRANS_ID'
      'GROUP BY'
      'A.TRANS_ID,A.TRANS_FANTASIA'
      ''
      ''
      ' '
      ''
      '')
    ValidateWithMask = True
    Left = 502
    Top = 296
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
  object Q_VEIC: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select * from TPVEICULO'
      ' order by VEIC_ORDEM')
    ValidateWithMask = True
    Left = 499
    Top = 240
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
  object Q_REG: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'select * from REGIAO '
      '  order by REG_NOME'
      ''
      '')
    ValidateWithMask = True
    Left = 678
    Top = 320
    object Q_REGREG_ID: TAutoIncField
      FieldName = 'REG_ID'
      Origin = 'NBFDADOS.REGIAO.REG_ID'
    end
    object Q_REGREG_NOME: TStringField
      FieldName = 'REG_NOME'
      Origin = 'NBFDADOS.REGIAO.REG_NOME'
      FixedChar = True
      Size = 40
    end
  end
end
