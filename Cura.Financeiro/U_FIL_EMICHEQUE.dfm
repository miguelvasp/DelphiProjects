object Form2: TForm2
  Left = 96
  Top = 65
  Width = 542
  Height = 438
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 32
    Width = 521
    Height = 353
    Caption = 'GroupBox1'
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 40
      Width = 100
      Height = 16
      Caption = 'Vencimento até'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 24
      Top = 76
      Width = 65
      Height = 16
      Caption = 'Bco/Conta'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 303
      Top = 78
      Width = 20
      Height = 16
      Caption = 'até'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 24
      Top = 112
      Width = 43
      Height = 16
      Caption = 'Credor'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 303
      Top = 114
      Width = 20
      Height = 16
      Caption = 'até'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SpeedButton1: TSpeedButton
      Left = 25
      Top = 153
      Width = 113
      Height = 29
      Caption = 'Carregar Grid'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333300000000
        0000333377777777777733330FFFFFFFFFF033337F3FFF3F3FF733330F000F0F
        00F033337F777373773733330FFFFFFFFFF033337F3FF3FF3FF733330F00F00F
        00F033337F773773773733330FFFFFFFFFF033337FF3333FF3F7333300FFFF00
        F0F03333773FF377F7373330FB00F0F0FFF0333733773737F3F7330FB0BF0FB0
        F0F0337337337337373730FBFBF0FB0FFFF037F333373373333730BFBF0FB0FF
        FFF037F3337337333FF700FBFBFB0FFF000077F333337FF37777E0BFBFB000FF
        0FF077FF3337773F7F37EE0BFB0BFB0F0F03777FF3733F737F73EEE0BFBF00FF
        00337777FFFF77FF7733EEEE0000000003337777777777777333}
      NumGlyphs = 2
      ParentFont = False
      OnClick = SpeedButton1Click
    end
    object wwDBGrid1: TwwDBGrid
      Left = 24
      Top = 197
      Width = 457
      Height = 140
      Selected.Strings = (
        'DOCUMENTO'#9'11'#9'DOCUMENTO'
        'VENCIMENTO'#9'12'#9'VENCIMENTO'
        'RAZAO'#9'21'#9'RAZAO'
        'BANCOCONTA'#9'14'#9'BancoConta'
        'SALDO'#9'8'#9'SALDO')
      IniAttributes.FileName = 'delphi32.ini'
      IniAttributes.SectionName = 'wwDBGrid1'
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DS_GRID
      TabOrder = 0
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
      IndicatorColor = icBlack
    end
    object wwDBLookupCombo1: TwwDBLookupCombo
      Left = 143
      Top = 73
      Width = 142
      Height = 21
      DropDownAlignment = taLeftJustify
      LookupTable = Q_TESTE
      LookupField = 'BANCOCONTA'
      TabOrder = 1
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
    end
    object wwDBLookupCombo2: TwwDBLookupCombo
      Left = 343
      Top = 73
      Width = 140
      Height = 21
      DropDownAlignment = taLeftJustify
      LookupTable = Q_TESTE
      LookupField = 'BANCOCONTA'
      TabOrder = 2
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
    end
    object wwDBLookupCombo3: TwwDBLookupCombo
      Left = 143
      Top = 107
      Width = 142
      Height = 21
      DropDownAlignment = taLeftJustify
      LookupTable = Q_TESTE
      LookupField = 'RAZAO'
      TabOrder = 3
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
    end
    object wwDBLookupCombo4: TwwDBLookupCombo
      Left = 343
      Top = 107
      Width = 139
      Height = 21
      DropDownAlignment = taLeftJustify
      LookupTable = Q_TESTE
      LookupField = 'RAZAO'
      TabOrder = 4
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
    end
    object MaskEdit1: TMaskEdit
      Left = 144
      Top = 37
      Width = 73
      Height = 21
      EditMask = '!99/99/00;1;_'
      MaxLength = 8
      TabOrder = 5
      Text = '  /  /  '
    end
  end
  object Q_TESTE: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      
        'SELECT DOCUMENTO , RAZAO , VENCIMENTO , SALDO , BANCOCONTA FROM ' +
        'CPAPAGA ')
    ValidateWithMask = True
    Left = 416
    Top = 56
    object Q_TESTEDOCUMENTO: TStringField
      DisplayWidth = 11
      FieldName = 'DOCUMENTO'
      FixedChar = True
      Size = 15
    end
    object Q_TESTEVENCIMENTO: TDateTimeField
      DisplayWidth = 12
      FieldName = 'VENCIMENTO'
      EditMask = '!99/99/00;1;_'
    end
    object Q_TESTERAZAO: TStringField
      DisplayWidth = 21
      FieldName = 'RAZAO'
      FixedChar = True
      Size = 40
    end
    object Q_TESTEBANCOCONTA: TStringField
      DisplayLabel = 'BancoConta'
      DisplayWidth = 14
      FieldName = 'BANCOCONTA'
      FixedChar = True
      Size = 14
    end
    object Q_TESTESALDO: TFloatField
      DisplayWidth = 8
      FieldName = 'SALDO'
    end
  end
  object DS_TESTE: TwwDataSource
    DataSet = Q_TESTE
    Left = 352
    Top = 56
  end
  object Q_GRID: TQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'SELECT DOCUMENTO , RAZAO , VENCIMENTO , BANCOCONTA , SALDO'
      'FROM CPAPAGA')
    Left = 176
    Top = 184
    object Q_GRIDDOCUMENTO: TStringField
      DisplayWidth = 11
      FieldName = 'DOCUMENTO'
      FixedChar = True
      Size = 15
    end
    object Q_GRIDVENCIMENTO: TDateTimeField
      DisplayWidth = 12
      FieldName = 'VENCIMENTO'
      EditMask = '!99/99/00;1;_'
    end
    object Q_GRIDRAZAO: TStringField
      DisplayWidth = 21
      FieldName = 'RAZAO'
      FixedChar = True
      Size = 40
    end
    object Q_GRIDBANCOCONTA: TStringField
      DisplayLabel = 'BancoConta'
      DisplayWidth = 14
      FieldName = 'BANCOCONTA'
      FixedChar = True
      Size = 14
    end
    object Q_GRIDSALDO: TFloatField
      DisplayWidth = 8
      FieldName = 'SALDO'
    end
  end
  object DS_GRID: TDataSource
    DataSet = Q_GRID
    Left = 224
    Top = 184
  end
end
