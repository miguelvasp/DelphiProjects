object frmNFSE_CteConfig: TfrmNFSE_CteConfig
  Left = 245
  Top = 87
  BorderStyle = bsDialog
  Caption = 'Configura��o CTe - NFSE'
  ClientHeight = 418
  ClientWidth = 872
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
  object lbl1: TLabel
    Left = 24
    Top = 24
    Width = 347
    Height = 14
    Caption = 'Informe a distribui��o dos valores para cada tipo de documento'
  end
  object wwDBGrid1: TwwDBGrid
    Left = 24
    Top = 40
    Width = 833
    Height = 353
    ControlType.Strings = (
      'UF_ORIGEM;CustomEdit;cboOrigem;F'
      'UF_DESTINO;CustomEdit;cboDestino;F'
      'FRETE;CustomEdit;cboFrete;F'
      'SEGURO;CustomEdit;cboSeguro;F'
      'PEDAGIO;CustomEdit;cboPedagio;F'
      'DESPACHO;CustomEdit;cboDespacho;F'
      'DESCARGA;CustomEdit;cboDescarga;F')
    Selected.Strings = (
      'UF_ORIGEM'#9'20'#9'UF Origem'#9'F'
      'UF_DESTINO'#9'25'#9'UF Destino'#9'F'
      'FRETE'#9'10'#9'Frete'#9'F'
      'SEGURO'#9'10'#9'Seguro'#9'F'
      'PEDAGIO'#9'10'#9'Ped�gio'#9'F'
      'DESPACHO'#9'10'#9'Despacho'#9'F'
      'DESCARGA'#9'10'#9'Descarga'#9'F')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = ds1
    TabOrder = 0
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
  end
  object dbnvgr1: TDBNavigator
    Left = 600
    Top = 8
    Width = 240
    Height = 25
    DataSource = ds1
    TabOrder = 1
  end
  object cboOrigem: TwwDBComboBox
    Left = 88
    Top = 360
    Width = 121
    Height = 22
    ShowButton = True
    Style = csDropDownList
    MapList = False
    AllowClearKey = False
    AutoDropDown = True
    DataField = 'UF_ORIGEM'
    DataSource = ds1
    DropDownCount = 8
    ItemHeight = 0
    Items.Strings = (
      'Municipio do Emitente')
    Sorted = False
    TabOrder = 2
    UnboundDataType = wwDefault
  end
  object cboDestino: TwwDBComboBox
    Left = 216
    Top = 360
    Width = 121
    Height = 22
    ShowButton = True
    Style = csDropDownList
    MapList = False
    AllowClearKey = False
    AutoDropDown = True
    DataField = 'UF_DESTINO'
    DataSource = ds1
    DropDownCount = 8
    ItemHeight = 0
    Items.Strings = (
      'Municipio do Emitente'
      'Municipio diferente do Emitente')
    Sorted = False
    TabOrder = 3
    UnboundDataType = wwDefault
  end
  object cboFrete: TwwDBComboBox
    Left = 344
    Top = 360
    Width = 121
    Height = 22
    ShowButton = True
    Style = csDropDownList
    MapList = False
    AllowClearKey = False
    AutoDropDown = True
    DataField = 'FRETE'
    DataSource = ds1
    DropDownCount = 8
    ItemHeight = 0
    Items.Strings = (
      'CTe'
      'NFSE 1'
      'NFSE 2'
      'NFSE 3')
    Sorted = False
    TabOrder = 4
    UnboundDataType = wwDefault
  end
  object cboDescarga: TwwDBComboBox
    Left = 472
    Top = 360
    Width = 121
    Height = 22
    ShowButton = True
    Style = csDropDownList
    MapList = False
    AllowClearKey = False
    AutoDropDown = True
    DataField = 'DESCARGA'
    DataSource = ds1
    DropDownCount = 8
    ItemHeight = 0
    Items.Strings = (
      'CTe'
      'NFSE 1'
      'NFSE 2'
      'NFSE 3')
    Sorted = False
    TabOrder = 5
    UnboundDataType = wwDefault
  end
  object cboDespacho: TwwDBComboBox
    Left = 472
    Top = 328
    Width = 121
    Height = 22
    ShowButton = True
    Style = csDropDownList
    MapList = False
    AllowClearKey = False
    AutoDropDown = True
    DataField = 'DESPACHO'
    DataSource = ds1
    DropDownCount = 8
    ItemHeight = 0
    Items.Strings = (
      'CTe'
      'NFSE 1'
      'NFSE 2'
      'NFSE 3')
    Sorted = False
    TabOrder = 6
    UnboundDataType = wwDefault
  end
  object cboPedagio: TwwDBComboBox
    Left = 344
    Top = 328
    Width = 121
    Height = 22
    ShowButton = True
    Style = csDropDownList
    MapList = False
    AllowClearKey = False
    AutoDropDown = True
    DataField = 'PEDAGIO'
    DataSource = ds1
    DropDownCount = 8
    ItemHeight = 0
    Items.Strings = (
      'CTe'
      'NFSE 1'
      'NFSE 2'
      'NFSE 3')
    Sorted = False
    TabOrder = 7
    UnboundDataType = wwDefault
  end
  object cboSeguro: TwwDBComboBox
    Left = 216
    Top = 328
    Width = 121
    Height = 22
    ShowButton = True
    Style = csDropDownList
    MapList = False
    AllowClearKey = False
    AutoDropDown = True
    DataField = 'SEGURO'
    DataSource = ds1
    DropDownCount = 8
    ItemHeight = 0
    Items.Strings = (
      'CTe'
      'NFSE 1'
      'NFSE 2'
      'NFSE 3')
    Sorted = False
    TabOrder = 8
    UnboundDataType = wwDefault
  end
  object qryConfig: TADOQuery
    Active = True
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from CTE_NFSE_Configuracao')
    Left = 320
    Top = 192
    object qryConfigUF_ORIGEM: TStringField
      DisplayLabel = 'UF Origem'
      DisplayWidth = 20
      FieldName = 'UF_ORIGEM'
      Required = True
      Size = 50
    end
    object qryConfigUF_DESTINO: TStringField
      DisplayLabel = 'UF Destino'
      DisplayWidth = 25
      FieldName = 'UF_DESTINO'
      Required = True
      Size = 50
    end
    object qryConfigFRETE: TStringField
      DisplayLabel = 'Frete'
      DisplayWidth = 10
      FieldName = 'FRETE'
      Required = True
      Size = 50
    end
    object qryConfigSEGURO: TStringField
      DisplayLabel = 'Seguro'
      DisplayWidth = 10
      FieldName = 'SEGURO'
      Required = True
      Size = 50
    end
    object qryConfigPEDAGIO: TStringField
      DisplayLabel = 'Ped�gio'
      DisplayWidth = 10
      FieldName = 'PEDAGIO'
      Required = True
      Size = 50
    end
    object qryConfigDESPACHO: TStringField
      DisplayLabel = 'Despacho'
      DisplayWidth = 10
      FieldName = 'DESPACHO'
      Required = True
      Size = 50
    end
    object qryConfigDESCARGA: TStringField
      DisplayLabel = 'Descarga'
      DisplayWidth = 10
      FieldName = 'DESCARGA'
      Required = True
      Size = 50
    end
    object qryConfigid: TAutoIncField
      DisplayWidth = 10
      FieldName = 'id'
      ReadOnly = True
      Visible = False
    end
  end
  object ds1: TDataSource
    DataSet = qryConfig
    Left = 208
    Top = 184
  end
end
