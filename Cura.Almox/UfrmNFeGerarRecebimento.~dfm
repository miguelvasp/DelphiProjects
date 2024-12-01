object frmNFeGerarRecebimento: TfrmNFeGerarRecebimento
  Left = 338
  Top = 119
  Width = 632
  Height = 328
  Caption = 'Gerar Recebimento'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
  object Label1: TLabel
    Left = 24
    Top = 48
    Width = 133
    Height = 14
    Caption = 'Condição de Pagamento'
  end
  object Label2: TLabel
    Left = 24
    Top = 104
    Width = 27
    Height = 14
    Caption = 'Local'
  end
  object Label3: TLabel
    Left = 24
    Top = 160
    Width = 20
    Height = 14
    Caption = 'Filial'
  end
  object lbOk: TLabel
    Left = 264
    Top = 232
    Width = 4
    Height = 14
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 616
    Height = 32
    Align = alTop
    Caption = 'Preencha as informações para a geração do Recebimento'
    Color = clNavy
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object cboCondicao: TwwDBLookupCombo
    Left = 24
    Top = 64
    Width = 561
    Height = 22
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'DESCRICAO'#9'30'#9'DESCRICAO'#9#9)
    LookupTable = qrCond
    LookupField = 'COND_PGTO_ID'
    TabOrder = 1
    AutoDropDown = False
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
  end
  object cboLocal: TwwDBLookupCombo
    Left = 24
    Top = 120
    Width = 561
    Height = 22
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'Descricao'#9'50'#9'Descricao'#9#9)
    LookupTable = qrLocal
    LookupField = 'Local_ID'
    TabOrder = 2
    AutoDropDown = False
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
  end
  object cboFilial: TwwDBLookupCombo
    Left = 24
    Top = 176
    Width = 561
    Height = 22
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'FIL_DESC'#9'20'#9'FIL_DESC'#9#9)
    LookupTable = qrFilial
    LookupField = 'FIL_CODI'
    TabOrder = 3
    AutoDropDown = False
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
  end
  object Button1: TButton
    Left = 440
    Top = 248
    Width = 145
    Height = 25
    Caption = 'Gerar Recebimento'
    TabOrder = 4
    OnClick = Button1Click
  end
  object qrCond: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    SQL.Strings = (
      'SELECT'#9#9'COND_PGTO_ID,'
      #9#9'DESCRICAO'
      'FROM'#9#9'CONDICAO_PAGTO')
    Left = 32
    Top = 240
    object qrCondDESCRICAO: TStringField
      DisplayWidth = 30
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object qrCondCOND_PGTO_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'COND_PGTO_ID'
      ReadOnly = True
      Visible = False
    end
  end
  object qrLocal: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    SQL.Strings = (
      'SELECT'#9#9'*'
      'FROM'#9#9'LOCAL'
      'WHERE CONTROLA_ESTOQUE = '#39'S'#39
      'ORDER BY'#9'DESCRICAO')
    Left = 96
    Top = 240
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
  object qrFilial: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    SQL.Strings = (
      'SELECT FIL_CODI, FIL_DESC FROM CPAFILI'
      'order by FIL_DESC')
    Left = 176
    Top = 240
    object qrFilialFIL_DESC: TStringField
      DisplayWidth = 20
      FieldName = 'FIL_DESC'
      FixedChar = True
    end
    object qrFilialFIL_CODI: TStringField
      DisplayWidth = 3
      FieldName = 'FIL_CODI'
      Visible = False
      FixedChar = True
      Size = 3
    end
  end
end
