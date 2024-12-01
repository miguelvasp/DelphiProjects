object FFRelContrato: TFFRelContrato
  Left = 104
  Top = 90
  Width = 641
  Height = 407
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
    Left = 2
    Top = 2
    Width = 612
    Height = 45
    BevelInner = bvLowered
    TabOrder = 0
    object SpeedButton3: TSpeedButton
      Left = 576
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
      Width = 285
      Height = 29
      Caption = 'Relatório de Contratos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -24
      Font.Name = 'Georgia'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 2
    Top = 50
    Width = 612
    Height = 311
    BevelInner = bvLowered
    TabOrder = 1
    object SBT_VISU: TSpeedButton
      Left = 257
      Top = 272
      Width = 101
      Height = 27
      Hint = 'Visualiza relatório na tela'
      Caption = '&Visualiza'
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
      OnClick = SBT_VISUClick
    end
    object GroupBox6: TGroupBox
      Left = 16
      Top = 10
      Width = 585
      Height = 247
      Caption = 'Seleção de Filtros'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Label20: TLabel
        Left = 87
        Top = 56
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
      object Label34: TLabel
        Left = 83
        Top = 128
        Width = 68
        Height = 15
        Caption = 'Tipos de OS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label35: TLabel
        Left = 86
        Top = 91
        Width = 64
        Height = 15
        Caption = 'Contrato(s)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object wwDBLookupCombo13: TwwDBLookupCombo
        Left = 153
        Top = 88
        Width = 352
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
          'CTT_NOME'#9'40'#9'CTT_NOME'#9'F')
        LookupTable = Q_CONTRATO
        LookupField = 'CTT_ID'
        Enabled = False
        ParentFont = False
        TabOrder = 1
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = True
        OnEnter = wwDBLookupCombo13Enter
        OnExit = wwDBLookupCombo13Exit
      end
      object wwDBLookupCombo12: TwwDBLookupCombo
        Left = 153
        Top = 124
        Width = 304
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
          'TOS_NOME'#9'40'#9'TOS_NOME'#9'F')
        LookupTable = Q_TOS
        LookupField = 'TOS_ID'
        ParentFont = False
        TabOrder = 2
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = True
        OnEnter = wwDBLookupCombo12Enter
        OnExit = wwDBLookupCombo12Exit
      end
      object wwDBLookupCombo7: TwwDBLookupCombo
        Left = 153
        Top = 52
        Width = 352
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
          'CLIN_RAZA'#9'50'#9'CLIN_RAZA'#9'F')
        LookupTable = Q_CLIN
        LookupField = 'CLIN_ID'
        ParentFont = False
        TabOrder = 0
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = True
        OnEnter = wwDBLookupCombo7Enter
        OnExit = wwDBLookupCombo7Exit
      end
    end
  end
  object Q_CLIN: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select'
      'CLIN_ID,CLIN_RAZA'
      'from'
      'ClienteNBF order by CLIN_RAZA'
      ''
      '')
    ValidateWithMask = True
    Left = 43
    Top = 97
  end
  object Q_TOS: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select TOS_ID,TOS_NOME  from TPOS order by TOS_NOME')
    ValidateWithMask = True
    Left = 42
    Top = 168
    object Q_TOSTOS_NOME: TStringField
      DisplayWidth = 40
      FieldName = 'TOS_NOME'
      Origin = 'NBFDADOS.TPOS.TOS_NOME'
      FixedChar = True
      Size = 40
    end
    object Q_TOSTOS_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'TOS_ID'
      Origin = 'NBFDADOS.TPOS.TOS_ID'
      Visible = False
    end
  end
  object Q_CONTRATO: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    DataSource = DS_CLIN
    SQL.Strings = (
      'Select CTT_NOME,CLIN_ID,CTT_ID'
      '  from CONTRATO where '
      'CLIN_ID = :CLIN_ID order by ctt_NOME')
    ValidateWithMask = True
    Left = 42
    Top = 234
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CLIN_ID'
        ParamType = ptUnknown
      end>
    object Q_CONTRATOCTT_NOME: TStringField
      DisplayWidth = 40
      FieldName = 'CTT_NOME'
      Origin = 'NBFDADOS.CONTRATO.CTT_NOME'
      FixedChar = True
      Size = 40
    end
    object Q_CONTRATOCLIN_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'CLIN_ID'
      Origin = 'NBFDADOS.CONTRATO.CLIN_ID'
      Visible = False
    end
    object Q_CONTRATOCTT_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'CTT_ID'
      Origin = 'NBFDADOS.CONTRATO.CTT_ID'
      Visible = False
    end
  end
  object DS_CLIN: TwwDataSource
    DataSet = Q_CLIN
    Left = 98
    Top = 74
  end
end
