object Form1: TForm1
  Left = 230
  Top = 144
  Width = 928
  Height = 549
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
    Top = 64
    Width = 193
    Height = 425
    DittoAttributes.ShortCutDittoField = 0
    DittoAttributes.ShortCutDittoRecord = 0
    DittoAttributes.Options = []
    DisableThemesInTitle = False
    Selected.Strings = (
      'PRODUTO'#9'10'#9'PRODUTO'
      'ESTOQUE_2008'#9'10'#9'ESTOQUE_2007')
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
    Left = 224
    Top = 64
    Width = 673
    Height = 425
    DittoAttributes.ShortCutDittoField = 0
    DittoAttributes.ShortCutDittoRecord = 0
    DittoAttributes.Options = []
    DisableThemesInTitle = False
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
  object Button1: TButton
    Left = 152
    Top = 24
    Width = 75
    Height = 25
    Caption = 'INICIAR'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 280
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 3
    OnClick = Button2Click
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 'FILE NAME=C:\Sources\NBFx\NBF.udl'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 520
    Top = 264
  end
  object qrProdutos: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT DISTINCT A.PRODUTO, B.PRO_COD, B.ESTOQUE_2008, VALOR_2008' +
        ' FROM LIVRO_ARMAZEM A INNER JOIN PRODUTO B ON A.PRODUTO = B.PRO_' +
        'ID')
    Left = 56
    Top = 104
    object qrProdutosPRODUTO: TIntegerField
      DisplayWidth = 10
      FieldName = 'PRODUTO'
    end
    object qrProdutosESTOQUE_2008: TFloatField
      DisplayLabel = 'ESTOQUE_2007'
      DisplayWidth = 10
      FieldName = 'ESTOQUE_2008'
    end
    object qrProdutosPRO_COD: TStringField
      DisplayWidth = 16
      FieldName = 'PRO_COD'
      Visible = False
      Size = 16
    end
    object qrProdutosVALOR_2008: TFloatField
      FieldName = 'VALOR_2008'
    end
  end
  object qrNotas: TADOQuery
    Connection = ADOConnection1
    Parameters = <
      item
        Name = 'Param1'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    SQL.Strings = (
      'SELECT * FROM LIVRO_ARMAZEM'
      'WHERE PRODUTO = :PRODUTO'
      'ORDER BY DATA')
    Left = 496
    Top = 120
    object qrNotasNFI_CODI: TIntegerField
      FieldName = 'NFI_CODI'
    end
    object qrNotasDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object qrNotasCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 50
    end
    object qrNotasPRODUTO: TIntegerField
      FieldName = 'PRODUTO'
    end
    object qrNotasSALDO_ANT: TFloatField
      FieldName = 'SALDO_ANT'
    end
    object qrNotasENTRADAS: TFloatField
      FieldName = 'ENTRADAS'
    end
    object qrNotasSAIDAS: TFloatField
      FieldName = 'SAIDAS'
    end
    object qrNotasSALDO: TFloatField
      FieldName = 'SALDO'
    end
    object qrNotasUN: TStringField
      FieldName = 'UN'
      Size = 5
    end
    object qrNotasVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object qrNotasPARCIAL: TFloatField
      FieldName = 'PARCIAL'
    end
    object qrNotasID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object qrNotasTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
  end
  object DataSource1: TDataSource
    DataSet = qrProdutos
    Left = 72
    Top = 200
  end
  object DataSource2: TDataSource
    DataSet = qrNotas
    Left = 392
    Top = 160
  end
end
