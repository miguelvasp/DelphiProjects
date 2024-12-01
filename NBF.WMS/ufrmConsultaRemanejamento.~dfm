object frmConsultaRemanejamento: TfrmConsultaRemanejamento
  Left = 226
  Top = 82
  BorderStyle = bsDialog
  Caption = 'Consulta de Remanejamento'
  ClientHeight = 574
  ClientWidth = 945
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
  object Label2: TLabel
    Left = 12
    Top = 10
    Width = 62
    Height = 14
    Caption = 'Cliente NBF'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 305
    Top = 10
    Width = 44
    Height = 14
    Caption = 'Produto'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 496
    Top = 8
    Width = 25
    Height = 14
    Caption = 'Lote'
  end
  object Label4: TLabel
    Left = 592
    Top = 8
    Width = 21
    Height = 14
    Caption = 'Tag'
  end
  object wwDBLookupCombo2: TwwDBLookupCombo
    Left = 304
    Top = 24
    Width = 177
    Height = 22
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'PRO_COD'#9'16'#9'PRO_COD'#9#9
      'PRO_DESC'#9'40'#9'PRO_DESC'#9#9)
    LookupTable = qrProduto
    LookupField = 'PRO_ID'
    Options = [loColLines, loRowLines]
    TabOrder = 0
    AutoDropDown = False
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
  end
  object wwDBLookupCombo1: TwwDBLookupCombo
    Left = 14
    Top = 24
    Width = 275
    Height = 22
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'clin_raza'#9'50'#9'clin_raza'#9#9)
    LookupTable = qrCliente
    LookupField = 'clin_id'
    TabOrder = 1
    AutoDropDown = False
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
    OnExit = wwDBLookupCombo1Exit
  end
  object edtTag: TEdit
    Left = 592
    Top = 24
    Width = 89
    Height = 22
    TabOrder = 2
  end
  object edtLote: TEdit
    Left = 496
    Top = 24
    Width = 89
    Height = 22
    TabOrder = 3
  end
  object Button1: TButton
    Left = 704
    Top = 22
    Width = 75
    Height = 25
    Caption = 'Consultar'
    TabOrder = 4
    OnClick = Button1Click
  end
  object wwDBGrid1: TwwDBGrid
    Left = 16
    Top = 64
    Width = 921
    Height = 497
    Selected.Strings = (
      'RREM_ID'#9'10'#9'N°'
      'RREM_DATA'#9'10'#9'Data'
      'TIPO'#9'21'#9'Tipo'
      'MOVIMENTO'#9'7'#9'Movimento'
      'DISPONIVEL'#9'10'#9'Qtde Disponível'
      'QTDE'#9'10'#9'Qtde Movimentada'
      'LOTE'#9'20'#9'Lote'
      'VENCIMENTO'#9'10'#9'Venc.'
      'PALLET_TAG'#9'10'#9'Tag')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 5
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
  end
  object qrCliente: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    SQL.Strings = (
      'Select clin_id, clin_raza  from CLIENTENBF where'
      'CLIN_CONTRATO = '#39'S'#39
      'order by CLIN_RAZA ')
    Left = 536
    Top = 200
    object qrClienteclin_raza: TStringField
      DisplayWidth = 50
      FieldName = 'clin_raza'
      Size = 50
    end
    object qrClienteclin_id: TAutoIncField
      DisplayWidth = 10
      FieldName = 'clin_id'
      ReadOnly = True
      Visible = False
    end
  end
  object qrProduto: TADOQuery
    Connection = FMenu.ADOConnection
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
      'SELECT PRO_ID, PRO_COD, PRO_DESC'
      'FROM PRODUTO'
      'WHERE CLIN_ID = :CLIN_ID'
      'ORDER BY PRO_COD')
    Left = 448
    Top = 304
    object qrProdutoPRO_COD: TStringField
      DisplayWidth = 16
      FieldName = 'PRO_COD'
      Size = 16
    end
    object qrProdutoPRO_DESC: TStringField
      DisplayWidth = 40
      FieldName = 'PRO_DESC'
      Size = 40
    end
    object qrProdutoPRO_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'PRO_ID'
      ReadOnly = True
      Visible = False
    end
  end
  object qrBusca: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select '
      '  A.RREM_ID,'
      '  A.RREM_DATA,'
      '  CASE'
      '  WHEN B.TIPO = '#39'E'#39' THEN '#39'Entrada (Novo Pallet)'#39
      '  WHEN B.TIPO = '#39'A'#39' THEN '#39'Alteração Quantidade'#39
      '  WHEN B.TIPO = '#39'T'#39' THEN '#39'Transferência'#39
      '  END AS TIPO,'
      '  CASE'
      '  WHEN B.SOMASUBTRAI = -1 THEN '#39'Baixa'#39
      '  WHEN B.SOMASUBTRAI = 1  THEN '#39'Entrada'#39
      '  END AS MOVIMENTO,'
      '  DISPONIVEL,'
      '  QTDE,'
      '  LOTE,'
      '  BATCH,'
      '  VENCIMENTO,'
      '  PALLET_TAG'
      'from dbo.ROMANEIO_REMANEJA A'
      'INNER JOIN  dbo.ROMANEIO_REMANEJAITENS B'
      'ON A.RREM_ID = B.RREM_ID'
      '')
    Left = 328
    Top = 184
    object qrBuscaRREM_ID: TAutoIncField
      DisplayLabel = 'N°'
      DisplayWidth = 10
      FieldName = 'RREM_ID'
      ReadOnly = True
    end
    object qrBuscaRREM_DATA: TDateTimeField
      DisplayLabel = 'Data'
      DisplayWidth = 10
      FieldName = 'RREM_DATA'
      DisplayFormat = 'dd/MM/yyyy'
    end
    object qrBuscaTIPO: TStringField
      DisplayLabel = 'Tipo'
      DisplayWidth = 21
      FieldName = 'TIPO'
      ReadOnly = True
      Size = 21
    end
    object qrBuscaMOVIMENTO: TStringField
      DisplayLabel = 'Movimento'
      DisplayWidth = 7
      FieldName = 'MOVIMENTO'
      ReadOnly = True
      Size = 7
    end
    object qrBuscaDISPONIVEL: TFloatField
      DisplayLabel = 'Qtde Disponível'
      DisplayWidth = 10
      FieldName = 'DISPONIVEL'
    end
    object qrBuscaQTDE: TFloatField
      DisplayLabel = 'Qtde Movimentada'
      DisplayWidth = 10
      FieldName = 'QTDE'
    end
    object qrBuscaLOTE: TStringField
      DisplayLabel = 'Lote'
      DisplayWidth = 20
      FieldName = 'LOTE'
    end
    object qrBuscaVENCIMENTO: TDateTimeField
      DisplayLabel = 'Venc.'
      DisplayWidth = 10
      FieldName = 'VENCIMENTO'
      DisplayFormat = 'dd/MM/yyyy'
    end
    object qrBuscaPALLET_TAG: TIntegerField
      DisplayLabel = 'Tag'
      DisplayWidth = 10
      FieldName = 'PALLET_TAG'
    end
    object qrBuscaBATCH: TDateTimeField
      DisplayLabel = 'Batch'
      DisplayWidth = 18
      FieldName = 'BATCH'
      Visible = False
    end
  end
  object DataSource1: TDataSource
    DataSet = qrBusca
    Left = 264
    Top = 136
  end
end
