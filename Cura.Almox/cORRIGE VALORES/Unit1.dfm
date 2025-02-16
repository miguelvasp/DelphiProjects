object Form1: TForm1
  Left = 192
  Top = 124
  Width = 741
  Height = 557
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object wwDBGrid1: TwwDBGrid
    Left = 8
    Top = 88
    Width = 713
    Height = 417
    DittoAttributes.ShortCutDittoField = 0
    DittoAttributes.ShortCutDittoRecord = 0
    DittoAttributes.Options = []
    DisableThemesInTitle = False
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 0
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
  end
  object wwDBLookupCombo1: TwwDBLookupCombo
    Left = 8
    Top = 40
    Width = 345
    Height = 21
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'MAT_DESC'#9'60'#9'MAT_DESC'#9#9)
    LookupTable = ADOQuery2
    LookupField = 'MAT_ID'
    TabOrder = 1
    AutoDropDown = False
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
  end
  object Button1: TButton
    Left = 368
    Top = 40
    Width = 75
    Height = 25
    Caption = 'BUSCAR'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 464
    Top = 40
    Width = 81
    Height = 21
    TabOrder = 3
  end
  object Button2: TButton
    Left = 568
    Top = 40
    Width = 75
    Height = 25
    Caption = 'CORRIGIR'
    TabOrder = 4
    OnClick = Button2Click
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 'FILE NAME=C:\almox.udl'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 232
    Top = 144
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    Parameters = <
      item
        Name = 'MAT_IDA'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM REQ_ITEM WHERE MAT_ID = :MAT_IDA')
    Left = 120
    Top = 56
    object ADOQuery1Req_Item_ID: TAutoIncField
      FieldName = 'Req_Item_ID'
      ReadOnly = True
    end
    object ADOQuery1Req_ID: TIntegerField
      FieldName = 'Req_ID'
    end
    object ADOQuery1Mat_ID: TIntegerField
      FieldName = 'Mat_ID'
    end
    object ADOQuery1Marca_ID: TIntegerField
      FieldName = 'Marca_ID'
    end
    object ADOQuery1Uni_Sigla: TStringField
      FieldName = 'Uni_Sigla'
      FixedChar = True
      Size = 2
    end
    object ADOQuery1Qtde: TFloatField
      FieldName = 'Qtde'
    end
    object ADOQuery1Status: TStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 1
    end
    object ADOQuery1tipoConsumo: TStringField
      FieldName = 'tipoConsumo'
      FixedChar = True
      Size = 1
    end
    object ADOQuery1CUSTO: TFloatField
      FieldName = 'CUSTO'
    end
    object ADOQuery1REPOSICAO: TFloatField
      FieldName = 'REPOSICAO'
    end
  end
  object ADOQuery2: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'select MAT_ID, MAT_DESC FROM MATERIAIS ORDER BY MAT_DESC')
    Left = 488
    Top = 152
    object ADOQuery2MAT_DESC: TStringField
      DisplayWidth = 60
      FieldName = 'MAT_DESC'
      Size = 60
    end
    object ADOQuery2MAT_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'MAT_ID'
      ReadOnly = True
      Visible = False
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 176
    Top = 320
  end
end
