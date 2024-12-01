object FFRelManifesto: TFFRelManifesto
  Left = 104
  Top = 90
  Width = 628
  Height = 395
  AutoSize = True
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
    Top = 0
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
      Width = 405
      Height = 29
      Caption = 'Relatório de Manifesto de Carga'
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
        Left = 117
        Top = 64
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
      object Label35: TLabel
        Left = 104
        Top = 94
        Width = 102
        Height = 15
        Caption = 'Data do Manifesto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label34: TLabel
        Left = 85
        Top = 122
        Width = 121
        Height = 15
        Caption = 'Número do Manifesto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 289
        Top = 94
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
      object wwDBLookupCombo7: TwwDBLookupCombo
        Left = 209
        Top = 60
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
          'TRANS_RAZA'#9'60'#9'TRANS_RAZA'#9'F')
        LookupTable = Q_TRANS
        LookupField = 'TRANS_ID'
        ParentFont = False
        TabOrder = 0
        AutoDropDown = True
        ShowButton = True
        AllowClearKey = True
        OnEnter = wwDBLookupCombo7Enter
        OnExit = wwDBLookupCombo7Exit
      end
      object Data1: TMaskEdit
        Left = 208
        Top = 90
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
        TabOrder = 1
        Text = '  /  /    '
        OnEnter = Data1Enter
        OnExit = Data1Exit
      end
      object Data2: TMaskEdit
        Left = 313
        Top = 90
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
        TabOrder = 2
        Text = '  /  /    '
        OnEnter = Data2Enter
        OnExit = Data2Exit
      end
      object Edit1: TEdit
        Left = 208
        Top = 119
        Width = 57
        Height = 23
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnEnter = Edit1Enter
        OnExit = Edit1Exit
      end
    end
  end
  object Q_TRANS: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'select TRANS_ID,TRANS_RAZA'
      'from TRANSPORTADORA  where '
      ' TRANS_FLAG = '#39'S'#39' order by TRANS_RAZA')
    ValidateWithMask = True
    Left = 505
    Top = 216
    object Q_TRANSTRANS_RAZA: TStringField
      DisplayWidth = 60
      FieldName = 'TRANS_RAZA'
      Origin = 'NBFDADOS.TRANSPORTADORA.TRANS_RAZA'
      FixedChar = True
      Size = 60
    end
    object Q_TRANSTRANS_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'TRANS_ID'
      Origin = 'NBFDADOS.TRANSPORTADORA.TRANS_ID'
      Visible = False
    end
  end
end
