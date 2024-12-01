object Form2: TForm2
  Left = 192
  Top = 124
  Width = 1104
  Height = 480
  Caption = 'Form2'
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
    Top = 64
    Width = 401
    Height = 361
    DittoAttributes.ShortCutDittoField = 0
    DittoAttributes.ShortCutDittoRecord = 0
    DittoAttributes.Options = []
    DisableThemesInTitle = False
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DataSource1
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
  object wwDBGrid2: TwwDBGrid
    Left = 432
    Top = 64
    Width = 369
    Height = 361
    DittoAttributes.ShortCutDittoField = 0
    DittoAttributes.ShortCutDittoRecord = 0
    DittoAttributes.Options = []
    DisableThemesInTitle = False
    Selected.Strings = (
      'PRO_COD'#9'16'#9'PRO_COD'
      'ESTOQUE_2008'#9'10'#9'ESTOQUE_2007'#9'F')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DataSource2
    TabOrder = 1
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
  end
  object Edit1: TEdit
    Left = 8
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'Edit1'
    OnChange = Edit1Change
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select'
      'clin_id, clin_raza from clientenbf'
      'order by clin_raza')
    Left = 304
    Top = 24
    object ADOQuery1clin_id: TAutoIncField
      FieldName = 'clin_id'
      ReadOnly = True
    end
    object ADOQuery1clin_raza: TStringField
      FieldName = 'clin_raza'
      Size = 50
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    OnDataChange = DataSource1DataChange
    Left = 160
    Top = 160
  end
  object ADOQuery2: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CLIN_ID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM PRODUTO'
      'WHERE CLIN_ID = :CLIN_ID'
      'ORDER BY PRO_COD')
    Left = 504
    Top = 112
    object ADOQuery2PRO_COD: TStringField
      DisplayWidth = 16
      FieldName = 'PRO_COD'
      Size = 16
    end
    object ADOQuery2ESTOQUE_2008: TFloatField
      DisplayLabel = 'ESTOQUE_2007'
      DisplayWidth = 10
      FieldName = 'ESTOQUE_2008'
    end
    object ADOQuery2PRO_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'PRO_ID'
      ReadOnly = True
      Visible = False
    end
    object ADOQuery2CLIN_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'CLIN_ID'
      Visible = False
    end
    object ADOQuery2PRO_DESC: TStringField
      DisplayWidth = 40
      FieldName = 'PRO_DESC'
      Visible = False
      Size = 40
    end
    object ADOQuery2TPRO_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'TPRO_ID'
      Visible = False
    end
    object ADOQuery2PRO_ORIGEM: TStringField
      DisplayWidth = 1
      FieldName = 'PRO_ORIGEM'
      Visible = False
      Size = 1
    end
    object ADOQuery2UVEN_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'UVEN_ID'
      Visible = False
    end
    object ADOQuery2UVEN_ID_EXP: TIntegerField
      DisplayWidth = 10
      FieldName = 'UVEN_ID_EXP'
      Visible = False
    end
    object ADOQuery2QTDE_UVUE: TFloatField
      DisplayWidth = 10
      FieldName = 'QTDE_UVUE'
      Visible = False
    end
    object ADOQuery2PRO_QTDE_PALLET: TIntegerField
      DisplayWidth = 10
      FieldName = 'PRO_QTDE_PALLET'
      Visible = False
    end
    object ADOQuery2PRO_QTDE_PALLETUV: TFloatField
      DisplayWidth = 10
      FieldName = 'PRO_QTDE_PALLETUV'
      Visible = False
    end
    object ADOQuery2PRO_PESO: TFloatField
      DisplayWidth = 10
      FieldName = 'PRO_PESO'
      Visible = False
    end
    object ADOQuery2PRO_VOLUME: TFloatField
      DisplayWidth = 10
      FieldName = 'PRO_VOLUME'
      Visible = False
    end
    object ADOQuery2PRO_VOLUME_PALLET: TFloatField
      DisplayWidth = 10
      FieldName = 'PRO_VOLUME_PALLET'
      Visible = False
    end
    object ADOQuery2PRO_ALTURA: TIntegerField
      DisplayWidth = 10
      FieldName = 'PRO_ALTURA'
      Visible = False
    end
    object ADOQuery2PRO_LASTRO: TIntegerField
      DisplayWidth = 10
      FieldName = 'PRO_LASTRO'
      Visible = False
    end
    object ADOQuery2PRO_VALIDDIAS: TIntegerField
      DisplayWidth = 10
      FieldName = 'PRO_VALIDDIAS'
      Visible = False
    end
    object ADOQuery2MARCADOR: TStringField
      DisplayWidth = 1
      FieldName = 'MARCADOR'
      Visible = False
      Size = 1
    end
    object ADOQuery2PRO_PESO_LIQ: TFloatField
      DisplayWidth = 10
      FieldName = 'PRO_PESO_LIQ'
      Visible = False
    end
    object ADOQuery2PRO_DESCONTINUA: TStringField
      DisplayWidth = 1
      FieldName = 'PRO_DESCONTINUA'
      Visible = False
      Size = 1
    end
    object ADOQuery2PRO_COMPR: TFloatField
      DisplayWidth = 10
      FieldName = 'PRO_COMPR'
      Visible = False
    end
    object ADOQuery2PRO_LARG: TFloatField
      DisplayWidth = 10
      FieldName = 'PRO_LARG'
      Visible = False
    end
    object ADOQuery2PRO_ALT: TFloatField
      DisplayWidth = 10
      FieldName = 'PRO_ALT'
      Visible = False
    end
    object ADOQuery2PRO_REDUZICMS: TFloatField
      DisplayWidth = 10
      FieldName = 'PRO_REDUZICMS'
      Visible = False
    end
    object ADOQuery2PRO_ISENCAO: TStringField
      DisplayWidth = 1
      FieldName = 'PRO_ISENCAO'
      Visible = False
      Size = 1
    end
    object ADOQuery2PRO_ICMS: TFloatField
      DisplayWidth = 10
      FieldName = 'PRO_ICMS'
      Visible = False
    end
    object ADOQuery2PRO_CST1: TStringField
      DisplayWidth = 7
      FieldName = 'PRO_CST1'
      Visible = False
      Size = 7
    end
    object ADOQuery2PRO_CST2: TStringField
      DisplayWidth = 7
      FieldName = 'PRO_CST2'
      Visible = False
      Size = 7
    end
    object ADOQuery2PRO_CST3: TStringField
      DisplayWidth = 7
      FieldName = 'PRO_CST3'
      Visible = False
      Size = 7
    end
    object ADOQuery2PRO_CST4: TStringField
      DisplayWidth = 7
      FieldName = 'PRO_CST4'
      Visible = False
      Size = 7
    end
    object ADOQuery2PRO_CST5: TStringField
      DisplayWidth = 7
      FieldName = 'PRO_CST5'
      Visible = False
      Size = 7
    end
    object ADOQuery2PRO_CST6: TStringField
      DisplayWidth = 7
      FieldName = 'PRO_CST6'
      Visible = False
      Size = 7
    end
    object ADOQuery2ULTIMO_PRECO: TFloatField
      DisplayWidth = 10
      FieldName = 'ULTIMO_PRECO'
      Visible = False
    end
    object ADOQuery2EMBALAGEM: TStringField
      DisplayWidth = 50
      FieldName = 'EMBALAGEM'
      Visible = False
      Size = 50
    end
    object ADOQuery2TIPO_PRODUTO: TStringField
      DisplayWidth = 10
      FieldName = 'TIPO_PRODUTO'
      Visible = False
      Size = 10
    end
    object ADOQuery2NCM: TStringField
      DisplayWidth = 8
      FieldName = 'NCM'
      Visible = False
      Size = 8
    end
    object ADOQuery2ESTOQUE: TFloatField
      DisplayWidth = 10
      FieldName = 'ESTOQUE'
      Visible = False
    end
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery2
    Left = 648
    Top = 176
  end
end
