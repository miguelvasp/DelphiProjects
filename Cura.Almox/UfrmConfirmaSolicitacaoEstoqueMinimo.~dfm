object frmConfirmaSolicitacaoEstoqueMinimo: TfrmConfirmaSolicitacaoEstoqueMinimo
  Left = 192
  Top = 124
  Width = 485
  Height = 251
  Caption = 'Confirmação'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 26
    Height = 13
    Caption = 'Local'
  end
  object Label3: TLabel
    Left = 16
    Top = 64
    Width = 76
    Height = 13
    Caption = 'Centro de Custo'
  end
  object Label2: TLabel
    Left = 16
    Top = 122
    Width = 83
    Height = 13
    Caption = 'Data Programada'
  end
  object cboLocal: TwwDBLookupCombo
    Left = 16
    Top = 24
    Width = 425
    Height = 24
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'Descricao'#9'50'#9'Descricao'#9'F'#9)
    DataField = 'Local_ID'
    LookupTable = qrLocal
    LookupField = 'Local_ID'
    ParentFont = False
    TabOrder = 0
    AutoDropDown = True
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = True
  end
  object cboCentroCusto: TwwDBLookupCombo
    Left = 15
    Top = 83
    Width = 427
    Height = 24
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'CC_Desc'#9'40'#9'CC_Desc'#9'F'#9)
    DataField = 'Local_ID'
    LookupTable = qrCentroCusto
    LookupField = 'CC_ID'
    ParentFont = False
    TabOrder = 1
    AutoDropDown = True
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = True
  end
  object MaskEdit1: TMaskEdit
    Left = 16
    Top = 138
    Width = 121
    Height = 21
    EditMask = '99/99/9999'
    MaxLength = 10
    TabOrder = 2
    Text = '  /  /    '
  end
  object BitBtn1: TBitBtn
    Left = 320
    Top = 160
    Width = 121
    Height = 25
    Caption = 'Confirmar'
    TabOrder = 3
    OnClick = BitBtn1Click
  end
  object qrCentroCusto: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM CENTRO_CUSTO ORDER BY CC_Desc')
    Left = 136
    Top = 120
    object qrCentroCustoCC_Desc: TStringField
      DisplayWidth = 40
      FieldName = 'CC_Desc'
      Size = 40
    end
    object qrCentroCustoCC_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'CC_ID'
      ReadOnly = True
      Visible = False
    end
    object qrCentroCustoFinancSN: TStringField
      DisplayWidth = 1
      FieldName = 'FinancSN'
      Visible = False
      Size = 1
    end
  end
  object qrLocal: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    SQL.Strings = (
      
        'SELECT * FROM Local WHERE CONTROLA_ESTOQUE = '#39'S'#39' ORDER BY Descri' +
        'cao')
    Left = 180
    Top = 130
    object qrLocalDescricao: TStringField
      DisplayWidth = 50
      FieldName = 'Descricao'
      Size = 50
    end
    object qrLocalLocal_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'Local_ID'
      ReadOnly = True
      Visible = False
    end
    object qrLocalDisponivelSN: TStringField
      DisplayWidth = 1
      FieldName = 'DisponivelSN'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object qrLocalCONSUMO: TStringField
      DisplayWidth = 1
      FieldName = 'CONSUMO'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object qrLocalCONTROLA_ESTOQUE: TStringField
      DisplayWidth = 1
      FieldName = 'CONTROLA_ESTOQUE'
      Visible = False
      FixedChar = True
      Size = 1
    end
  end
  object ADOQuery1: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    Left = 264
    Top = 128
  end
end
