object FFConsultaVeiculo: TFFConsultaVeiculo
  Left = 35
  Top = 56
  Width = 762
  Height = 475
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
      Width = 404
      Height = 29
      Caption = 'Consultas de Ve'#237'culos Utilizados'
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
      Hint = 'Visualizar Relat'#243'rio'
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
      Caption = 'Sele'#231#227'o de Filtros'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Label3: TLabel
        Left = 253
        Top = 180
        Width = 44
        Height = 15
        Caption = 'Per'#237'odo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label20: TLabel
        Left = 211
        Top = 147
        Width = 85
        Height = 15
        Caption = 'Tipo de Ve'#237'culo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object combo_cliente: TwwDBLookupCombo
        Left = 301
        Top = 142
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
        TabOrder = 0
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = True
        OnEnter = combo_clienteEnter
        OnExit = combo_clienteExit
      end
      object MaskEdit1: TMaskEdit
        Left = 301
        Top = 175
        Width = 78
        Height = 25
        BorderStyle = bsNone
        EditMask = '!99/9999;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        MaxLength = 7
        ParentFont = False
        TabOrder = 1
        Text = '  /    '
        OnEnter = MaskEdit1Enter
        OnExit = MaskEdit1Exit
      end
      object RadioGroup3: TRadioGroup
        Left = 268
        Top = 60
        Width = 213
        Height = 51
        Caption = 'Tipo de Movimenta'#231#227'o'
        Columns = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ItemIndex = 0
        Items.Strings = (
          'Entrega'
          'Coleta')
        ParentFont = False
        TabOrder = 2
      end
    end
  end
  object Q_VEIC: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select * from TPVEICULO'
      ' order by VEIC_ORDEM')
    ValidateWithMask = True
    Left = 451
    Top = 296
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
  object STP_TONELAGEM2: TwwStoredProc
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    StoredProcName = 'dbo.STP_VEICULO_UTILIZ'
    ValidateWithMask = True
    Left = 654
    Top = 240
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Result'
        ParamType = ptResult
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
        DataType = ftInteger
        Name = '@VEIC_Idaux'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@CH'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@MOVI'
        ParamType = ptInput
      end>
  end
  object Q_AUX: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    ValidateWithMask = True
    Left = 647
    Top = 336
  end
end
