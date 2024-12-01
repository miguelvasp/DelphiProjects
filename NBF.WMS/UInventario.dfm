object FInventario: TFInventario
  Left = 28
  Top = 77
  Width = 767
  Height = 410
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
    Width = 735
    Height = 45
    BevelInner = bvLowered
    TabOrder = 0
    object Label16: TLabel
      Left = 9
      Top = 5
      Width = 136
      Height = 29
      Caption = 'Inventário'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -24
      Font.Name = 'Georgia'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object SpeedButton3: TSpeedButton
      Left = 702
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
  end
  object GroupBox6: TGroupBox
    Left = 2
    Top = 50
    Width = 735
    Height = 311
    Caption = 'Seleção de Filtros'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Label2: TLabel
      Left = 114
      Top = 54
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
      Left = 95
      Top = 27
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
    object DBText3: TDBText
      Left = 315
      Top = 53
      Width = 414
      Height = 17
      DataField = 'PRO_DESC'
      DataSource = DS_PROD
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object wwDBLookupCombo1: TwwDBLookupCombo
      Left = 162
      Top = 51
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
        'PRO_COD'#9'16'#9'Código'#9'F'
        'PRO_DESC'#9'40'#9'Descrição'#9'F')
      LookupTable = Q_PROD
      LookupField = 'PRO_ID'
      DropDownCount = 15
      Enabled = False
      ParentFont = False
      TabOrder = 1
      AutoDropDown = True
      ShowButton = True
      AllowClearKey = True
      OnCloseUp = wwDBLookupCombo1CloseUp
      OnEnter = wwDBLookupCombo1Enter
      OnExit = wwDBLookupCombo1Exit
    end
    object wwDBLookupCombo4: TwwDBLookupCombo
      Left = 162
      Top = 22
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
        'CLIN_RAZA'#9'50'#9'Razão Social'#9'F')
      LookupTable = Q_CLINBF
      LookupField = 'CLIN_ID'
      DropDownCount = 16
      ParentFont = False
      TabOrder = 0
      AutoDropDown = True
      ShowButton = True
      AllowClearKey = True
      OnCloseUp = wwDBLookupCombo4CloseUp
      OnEnter = wwDBLookupCombo4Enter
      OnExit = wwDBLookupCombo4Exit
    end
    object Panel12: TPanel
      Left = 314
      Top = 48
      Width = 415
      Height = 31
      BevelOuter = bvNone
      TabOrder = 2
      Visible = False
    end
    object BitBtn3: TBitBtn
      Left = 307
      Top = 273
      Width = 118
      Height = 25
      Caption = 'Gerar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 3
      OnClick = BitBtn3Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
        000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
        00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
        F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
        0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
        FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
        FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
        0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
        00333377737FFFFF773333303300000003333337337777777333}
      NumGlyphs = 2
    end
    object RadioGroup2: TRadioGroup
      Left = 159
      Top = 84
      Width = 154
      Height = 37
      Caption = 'Produto Descontinuado ?'
      Columns = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ItemIndex = 1
      Items.Strings = (
        'Sim'
        'Não')
      ParentFont = False
      TabOrder = 4
    end
    object BitBtn1: TBitBtn
      Left = 307
      Top = 140
      Width = 118
      Height = 25
      Hint = 'Iniciar Contagem'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = BitBtn1Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333333333333333333FFFFFFFFFFF33330000000000
        03333377777777777F33333003333330033333377FF333377F33333300333333
        0333333377FF33337F3333333003333303333333377FF3337333333333003333
        333333333377FF3333333333333003333333333333377FF33333333333330033
        3333333333337733333333333330033333333333333773333333333333003333
        33333333337733333F3333333003333303333333377333337F33333300333333
        03333333773333337F33333003333330033333377FFFFFF77F33330000000000
        0333337777777777733333333333333333333333333333333333}
      NumGlyphs = 2
    end
    object Panel10: TPanel
      Left = 198
      Top = 200
      Width = 363
      Height = 34
      BevelInner = bvLowered
      BevelOuter = bvSpace
      Color = 12615680
      TabOrder = 6
      object Label46: TLabel
        Left = 11
        Top = 5
        Width = 83
        Height = 24
        Caption = 'Total UV'
        Color = 12615680
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clYellow
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label47: TLabel
        Left = 280
        Top = 4
        Width = 62
        Height = 24
        Alignment = taRightJustify
        Caption = 'Totais'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
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
      'order by CLIN_RAZA ')
    ValidateWithMask = True
    Left = 610
    Top = 160
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
    Left = 674
    Top = 160
  end
  object Q_PROD: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    DataSource = DS_CLINBF
    SQL.Strings = (
      'select PRO_ID,PRO_COD,PRO_DESC from PRODUTO where'
      'CLIN_ID = :CLIN_ID'
      'order by PRO_DESC'
      '')
    ValidateWithMask = True
    Left = 615
    Top = 208
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'CLIN_ID'
        ParamType = ptUnknown
      end>
    object Q_PRODPRO_COD: TStringField
      DisplayLabel = 'Código'
      DisplayWidth = 16
      FieldName = 'PRO_COD'
      Origin = 'NBFDADOS.PRODUTO.PRO_COD'
      FixedChar = True
      Size = 16
    end
    object Q_PRODPRO_DESC: TStringField
      DisplayLabel = 'Descrição'
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
    Left = 674
    Top = 208
  end
  object Q_AUX3: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    ValidateWithMask = True
    Left = 672
    Top = 107
  end
  object Q_AUX4: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    ValidateWithMask = True
    Left = 600
    Top = 113
  end
end
