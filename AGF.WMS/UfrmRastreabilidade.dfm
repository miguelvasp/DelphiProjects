object frmRastreabilidade: TfrmRastreabilidade
  Left = 355
  Top = 161
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Rastreabilidade de Produtos'
  ClientHeight = 351
  ClientWidth = 505
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
  object Label1: TLabel
    Left = 16
    Top = 56
    Width = 56
    Height = 14
    Caption = 'PRODUTO'
  end
  object Label2: TLabel
    Left = 16
    Top = 104
    Width = 33
    Height = 14
    Caption = 'NOTA'
  end
  object Label3: TLabel
    Left = 176
    Top = 104
    Width = 66
    Height = 14
    Caption = 'MANIFESTO'
  end
  object Label4: TLabel
    Left = 16
    Top = 152
    Width = 102
    Height = 14
    Caption = 'DATA MANIFESTO'
  end
  object Label5: TLabel
    Left = 16
    Top = 200
    Width = 31
    Height = 14
    Caption = 'LOAD'
  end
  object Label6: TLabel
    Left = 176
    Top = 200
    Width = 30
    Height = 14
    Caption = 'LOTE'
  end
  object Label7: TLabel
    Left = 16
    Top = 8
    Width = 72
    Height = 14
    Caption = 'CLIENTE NBF'
  end
  object Label8: TLabel
    Left = 336
    Top = 200
    Width = 75
    Height = 14
    Caption = 'VENCIMENTO'
  end
  object cboCliente: TwwDBLookupCombo
    Left = 16
    Top = 24
    Width = 457
    Height = 22
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'CLIN_RAZA'#9'50'#9'CLIN_RAZA'#9'F')
    LookupTable = qrCliente
    LookupField = 'CLIN_ID'
    TabOrder = 0
    AutoDropDown = True
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
    OnChange = cboClienteChange
  end
  object cboProduto: TwwDBLookupCombo
    Left = 16
    Top = 72
    Width = 457
    Height = 22
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'PRO_COD'#9'16'#9'PRO_COD'#9'F'
      'PRO_DESC'#9'40'#9'PRO_DESC'#9'F')
    LookupTable = qrProd
    LookupField = 'PRO_ID'
    TabOrder = 1
    AutoDropDown = True
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
  end
  object edtNota: TEdit
    Left = 16
    Top = 120
    Width = 121
    Height = 22
    TabOrder = 2
  end
  object edtManifesto: TEdit
    Left = 176
    Top = 120
    Width = 121
    Height = 22
    TabOrder = 3
  end
  object edtD1: TMaskEdit
    Left = 16
    Top = 168
    Width = 121
    Height = 22
    EditMask = '99/99/9999'
    MaxLength = 10
    TabOrder = 4
    Text = '  /  /    '
  end
  object edtD2: TMaskEdit
    Left = 176
    Top = 168
    Width = 121
    Height = 22
    EditMask = '99/99/9999'
    MaxLength = 10
    TabOrder = 5
    Text = '  /  /    '
  end
  object edtLoad: TEdit
    Left = 16
    Top = 216
    Width = 153
    Height = 22
    TabOrder = 6
  end
  object edtLote: TEdit
    Left = 176
    Top = 216
    Width = 145
    Height = 22
    TabOrder = 7
  end
  object Button1: TButton
    Left = 16
    Top = 312
    Width = 121
    Height = 25
    Caption = 'Executar'
    TabOrder = 8
    OnClick = Button1Click
  end
  object RadioGroup1: TRadioGroup
    Left = 16
    Top = 248
    Width = 361
    Height = 41
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'Visualizar Relatório'
      'Exportar para Excel')
    TabOrder = 9
  end
  object edtVenc: TMaskEdit
    Left = 336
    Top = 216
    Width = 121
    Height = 22
    EditMask = '99/99/9999'
    MaxLength = 10
    TabOrder = 10
    Text = '  /  /    '
  end
  object Button2: TButton
    Left = 168
    Top = 312
    Width = 177
    Height = 25
    Caption = 'Relatório Detalhado'
    TabOrder = 11
    OnClick = Button2Click
  end
  object qrBusca: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'ch'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT CH'
      '      ,PRO_ID'
      '      ,MANI_ID'
      '      ,CONVERT(DATETIME, CONVERT(CHAR(10), DATA, 112)) DATA'
      '      ,CLIN_ID'
      '      ,NFI_LOAD'
      '      ,LOTE'
      
        '      ,CONVERT(DATETIME, CONVERT(CHAR(10), VALIDADE, 112)) VALID' +
        'ADE'
      '      ,SUM(QTDE) AS QTDE'
      '      ,NFI_NUMERO'
      '  FROM tbRastreabilidade'
      'GROUP BY CH'
      '      ,PRO_ID'
      '      ,MANI_ID'
      '      ,CONVERT(DATETIME, CONVERT(CHAR(10), DATA, 112)) '
      '      ,CLIN_ID'
      '      ,NFI_LOAD'
      '      ,LOTE'
      '      ,CONVERT(DATETIME, CONVERT(CHAR(10), VALIDADE, 112))   '
      '      ,NFI_NUMERO'
      'HAVING CH = :CH'
      'ORDER BY MANI_ID')
    Left = 448
    Top = 176
    object qrBuscaCH: TIntegerField
      FieldName = 'CH'
    end
    object qrBuscaPRO_ID: TIntegerField
      FieldName = 'PRO_ID'
    end
    object qrBuscaMANI_ID: TIntegerField
      FieldName = 'MANI_ID'
    end
    object qrBuscaDATA: TDateTimeField
      FieldName = 'DATA'
      DisplayFormat = 'DD/MM/YYYY'
    end
    object qrBuscaCLIN_ID: TIntegerField
      FieldName = 'CLIN_ID'
    end
    object qrBuscaLOTE: TStringField
      FieldName = 'LOTE'
      Size = 50
    end
    object qrBuscaVALIDADE: TDateTimeField
      FieldName = 'VALIDADE'
      DisplayFormat = 'DD/MM/YYYY'
    end
    object qrBuscaQTDE: TFloatField
      FieldName = 'QTDE'
    end
    object qrBuscaNFI_LOAD: TStringField
      FieldName = 'NFI_LOAD'
      Size = 3500
    end
    object qrBuscaNFI_NUMERO: TStringField
      FieldName = 'NFI_NUMERO'
      Size = 3500
    end
  end
  object DataSource1: TDataSource
    DataSet = qrBusca
    Left = 376
    Top = 152
  end
  object qrCliente: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT CLIN_RAZA, CLIN_ID'
      'FROM CLIENTENBF (NOLOCK)'
      'ORDER BY CLIN_RAZA')
    Left = 448
    Top = 16
    object qrClienteCLIN_RAZA: TStringField
      DisplayWidth = 50
      FieldName = 'CLIN_RAZA'
      Size = 50
    end
    object qrClienteCLIN_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'CLIN_ID'
      ReadOnly = True
      Visible = False
    end
  end
  object qrProd: TADOQuery
    Connection = FMenu.ADOConnection
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
      'SELECT PRO_COD, PRO_ID, PRO_DESC'
      'FROM PRODUTO'
      'WHERE CLIN_ID = :CLIN_ID'
      'ORDER BY PRO_COD')
    Left = 448
    Top = 64
    object qrProdPRO_COD: TStringField
      DisplayWidth = 16
      FieldName = 'PRO_COD'
      Size = 16
    end
    object qrProdPRO_DESC: TStringField
      DisplayWidth = 40
      FieldName = 'PRO_DESC'
      Size = 40
    end
    object qrProdPRO_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'PRO_ID'
      ReadOnly = True
      Visible = False
    end
  end
  object DataSource2: TDataSource
    DataSet = qrCliente
    OnDataChange = DataSource2DataChange
    Left = 448
    Top = 120
  end
  object STP_RASTREABILIDADE: TADOStoredProc
    Connection = FMenu.ADOConnection
    ProcedureName = 'RASTREABILIDADE;1'
    Parameters = <
      item
        Name = '@CH'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@CLIN_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@PRO_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@MANI_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@DT_INI'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@DT_FIM'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@LOTE'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@LOAD'
        Attributes = [paNullable]
        DataType = ftString
        Size = 8
        Value = Null
      end
      item
        Name = '@NF'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@VENCIMENTO'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end>
    Left = 336
    Top = 104
  end
  object qrRel: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CH'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT '
      #9'A.*,'
      #9'B.NFI_NUMERO,'
      #9'B.NFI_LOAD,'
      #9'B.NFI_DEMI,'
      #9'B.NFI_DEST_RAZA,'
      #9'C.INF_QTDE,'
      '    B.NFI_DTENTREGA,'
      '    B.NFI_DEST_ENDERECO,'
      '    B.NFI_DEST_BAIRRO,'
      '    B.NFI_DEST_COMPL,'
      '    B.NFI_DEST_CEP,'
      #9'B.NFI_DEST_UF_SIGLA'
      'FROM CONS_RASTREABILIDADE A INNER JOIN NF B'
      'ON A.MANI_ID = B.MANI_ID INNER JOIN NF_ITENS C'
      'ON B.NFI_CODI = C.NFI_CODI AND A.PRO_ID = C.PRO_ID'
      'WHERE A.CH = :CH'
      'order by A.MANI_ID, B.NFI_NUMERO, A.LOTE')
    Left = 432
    Top = 256
    object qrRelCH: TIntegerField
      FieldName = 'CH'
    end
    object qrRelPRO_ID: TIntegerField
      FieldName = 'PRO_ID'
    end
    object qrRelMANI_ID: TIntegerField
      FieldName = 'MANI_ID'
    end
    object qrRelDATA: TDateTimeField
      FieldName = 'DATA'
      ReadOnly = True
    end
    object qrRelCLIN_ID: TIntegerField
      FieldName = 'CLIN_ID'
    end
    object qrRelLOTE: TStringField
      FieldName = 'LOTE'
      Size = 50
    end
    object qrRelVALIDADE: TDateTimeField
      FieldName = 'VALIDADE'
    end
    object qrRelQTDE: TFloatField
      FieldName = 'QTDE'
      ReadOnly = True
    end
    object qrRelNFI_NUMERO: TStringField
      FieldName = 'NFI_NUMERO'
      Size = 10
    end
    object qrRelNFI_LOAD: TStringField
      FieldName = 'NFI_LOAD'
      Size = 15
    end
    object qrRelNFI_DEMI: TDateTimeField
      FieldName = 'NFI_DEMI'
    end
    object qrRelNFI_DEST_RAZA: TStringField
      FieldName = 'NFI_DEST_RAZA'
      Size = 50
    end
    object qrRelINF_QTDE: TFloatField
      FieldName = 'INF_QTDE'
    end
    object qrRelNFI_DTENTREGA: TDateTimeField
      FieldName = 'NFI_DTENTREGA'
    end
    object qrRelNFI_DEST_ENDERECO: TStringField
      FieldName = 'NFI_DEST_ENDERECO'
      Size = 50
    end
    object qrRelNFI_DEST_BAIRRO: TStringField
      FieldName = 'NFI_DEST_BAIRRO'
      Size = 40
    end
    object qrRelNFI_DEST_COMPL: TStringField
      FieldName = 'NFI_DEST_COMPL'
    end
    object qrRelNFI_DEST_CEP: TStringField
      FieldName = 'NFI_DEST_CEP'
      Size = 8
    end
    object qrRelNFI_DEST_UF_SIGLA: TStringField
      FieldName = 'NFI_DEST_UF_SIGLA'
      Size = 2
    end
  end
end
