object frmRetornaInsumo: TfrmRetornaInsumo
  Left = 289
  Top = 53
  Width = 744
  Height = 587
  Caption = 'Retorno de Insumos'
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
  object DBText1: TDBText
    Left = 664
    Top = 8
    Width = 48
    Height = 14
    Alignment = taRightJustify
    AutoSize = True
    DataField = 'PREP_ID'
    DataSource = DataSource1
  end
  object Panel1: TPanel
    Left = 8
    Top = 40
    Width = 714
    Height = 506
    TabOrder = 0
    Visible = False
    object Label1: TLabel
      Left = 16
      Top = 72
      Width = 104
      Height = 14
      Caption = 'Selecione o Cliente'
    end
    object Label2: TLabel
      Left = 16
      Top = 120
      Width = 111
      Height = 14
      Caption = 'Selecione o Produto'
    end
    object Label3: TLabel
      Left = 200
      Top = 120
      Width = 63
      Height = 14
      Caption = 'Quantidade'
    end
    object lbl1: TLabel
      Left = 16
      Top = 8
      Width = 179
      Height = 14
      Caption = 'Selecione a origem dos produtos'
    end
    object wwDBLookupCombo1: TwwDBLookupCombo
      Left = 16
      Top = 88
      Width = 601
      Height = 22
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'CLIN_RAZA'#9'50'#9'CLIN_RAZA'#9'F')
      LookupTable = qrClientes
      LookupField = 'CLIN_ID'
      TabOrder = 0
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnCloseUp = wwDBLookupCombo1CloseUp
      OnExit = wwDBLookupCombo1Exit
    end
    object wwDBLookupCombo2: TwwDBLookupCombo
      Left = 16
      Top = 136
      Width = 161
      Height = 22
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'PRO_COD'#9'16'#9'PRO_COD'#9'F'
        'PRO_DESC'#9'40'#9'PRO_DESC'#9'F')
      LookupTable = qrProdutos
      LookupField = 'PRO_ID'
      Options = [loColLines, loRowLines]
      TabOrder = 1
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
    end
    object Edit1: TEdit
      Left = 200
      Top = 136
      Width = 121
      Height = 22
      TabOrder = 2
    end
    object Button2: TButton
      Left = 336
      Top = 134
      Width = 75
      Height = 25
      Caption = 'Adicionar'
      TabOrder = 3
      OnClick = Button2Click
    end
    object wwDBGrid1: TwwDBGrid
      Left = 16
      Top = 168
      Width = 697
      Height = 289
      Selected.Strings = (
        'PRO_COD_BAIXA'#9'16'#9'PRODUTO'
        'PRO_DESC'#9'37'#9'DESCRIÇÃO'
        'NFI_NUMERO'#9'13'#9'NF ENTRADA'
        'QTDE'#9'18'#9'QTDE')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DataSource2
      TabOrder = 4
      TitleAlignment = taLeftJustify
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
    end
    object Button3: TButton
      Left = 16
      Top = 472
      Width = 137
      Height = 25
      Caption = 'Gerar Nota Fiscal'
      TabOrder = 5
      OnClick = Button3Click
    end
    object cboTipoDoc: TwwDBComboBox
      Left = 16
      Top = 28
      Width = 297
      Height = 22
      ShowButton = True
      Style = csDropDown
      MapList = True
      AllowClearKey = False
      DropDownCount = 8
      ItemHeight = 0
      Items.Strings = (
        'NFE Industrialização'#9'23'
        'NFE Reprocesso'#9'28')
      ItemIndex = 0
      Sorted = False
      TabOrder = 6
      UnboundDataType = wwDefault
    end
  end
  object Button1: TButton
    Left = 8
    Top = 8
    Width = 137
    Height = 25
    Caption = 'Nova Preparação'
    TabOrder = 1
    OnClick = Button1Click
  end
  object qrClientes: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'#9'CLIN.CLIN_ID,'
      #9'CLIN.CLIN_RAZA'
      'FROM'#9'CLIENTENBF CLIN'
      'WHERE clin_contrato <> '#39'R'#39
      'ORDER BY CLIN.CLIN_RAZA'
      '')
    Left = 256
    Top = 416
    object qrClientesCLIN_RAZA: TStringField
      DisplayWidth = 50
      FieldName = 'CLIN_RAZA'
      Size = 50
    end
    object qrClientesCLIN_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'CLIN_ID'
      ReadOnly = True
      Visible = False
    end
  end
  object qrProdutos: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'cin_id'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select PRO_ID, PRO_COD, PRO_DESC'
      'from PRODUTO where INSUMO = '#39'S'#39
      'and CLIN_ID = :cin_id'
      'order by PRO_COD')
    Left = 480
    Top = 352
    object qrProdutosPRO_COD: TStringField
      DisplayWidth = 16
      FieldName = 'PRO_COD'
      Size = 16
    end
    object qrProdutosPRO_DESC: TStringField
      DisplayWidth = 40
      FieldName = 'PRO_DESC'
      Size = 40
    end
    object qrProdutosPRO_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'PRO_ID'
      ReadOnly = True
      Visible = False
    end
  end
  object ADOQuery3: TADOQuery
    Parameters = <>
    Left = 560
    Top = 416
  end
  object qrPreparacao: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    SQL.Strings = (
      'select TOP 0 * from OS_INDUSTRIALIZACAO')
    Left = 528
    Top = 240
    object qrPreparacaoPREP_ID: TAutoIncField
      FieldName = 'PREP_ID'
      ReadOnly = True
    end
    object qrPreparacaoPREP_DATA: TDateTimeField
      FieldName = 'PREP_DATA'
    end
    object qrPreparacaoOS_ID: TIntegerField
      FieldName = 'OS_ID'
    end
    object qrPreparacaoSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
  end
  object DataSource1: TDataSource
    DataSet = qrPreparacao
    Left = 600
    Top = 240
  end
  object qrSaldo: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <
      item
        Name = 'Tdoc'
        Size = -1
        Value = Null
      end
      item
        Name = 'pro_id'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT '
      '  sum(B.INF_QTDE - ISNULL(B.INF_QTDERETORNADA, 0.00)) AS SALDO'
      'FROM NF A INNER JOIN NF_ITENS B'
      'ON A.NFI_CODI = B.NFI_CODI'
      'WHERE TDOC_ID = :Tdoc '
      'AND (B.INF_QTDE - ISNULL(B.INF_QTDERETORNADA, 0.00)) > 0'
      'AND B.PRO_ID = :pro_id'
      '')
    Left = 464
    Top = 240
    object qrSaldoSALDO: TFloatField
      FieldName = 'SALDO'
      ReadOnly = True
    end
  end
  object STP_CalculaInsumo: TADOStoredProc
    Connection = FMenu.ADOConnection
    ProcedureName = 'INSUMO_CALCULA_BAIXA;1'
    Parameters = <
      item
        Name = '@PREP_ID'
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
        Name = '@PRO_COD'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end
      item
        Name = '@QTDE_TOTAL'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 4
        Precision = 18
        Value = Null
      end
      item
        Name = '@TDOC_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 648
    Top = 416
  end
  object qrResumo: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'PREP_ID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      ''
      'SELECT'
      #9'A.PRO_COD,'
      #9'A.PRO_COD_BAIXA,'
      #9'P.PRO_DESC,'#9
      #9'A.QTDE,'
      #9'B.NFI_NUMERO,'
      #9'P.INSUMO,'
      #9'A.INF_CODI'#9
      'FROM INDUSTRIALIZACAO_BAIXA A INNER JOIN NF B'
      'ON A.NFI_CODI = B.NFI_CODI INNER JOIN PRODUTO P'
      'ON A.PRO_ID_BAIXA = P.PRO_ID'
      'WHERE A.PREP_ID = :PREP_ID'
      'order by A.PRO_COD')
    Left = 641
    Top = 350
    object qrResumoPRO_COD_BAIXA: TStringField
      DisplayLabel = 'PRODUTO'
      DisplayWidth = 16
      FieldName = 'PRO_COD_BAIXA'
      Size = 16
    end
    object qrResumoPRO_DESC: TStringField
      DisplayLabel = 'DESCRIÇÃO'
      DisplayWidth = 37
      FieldName = 'PRO_DESC'
      Size = 40
    end
    object qrResumoNFI_NUMERO: TStringField
      DisplayLabel = 'NF ENTRADA'
      DisplayWidth = 13
      FieldName = 'NFI_NUMERO'
      Size = 10
    end
    object qrResumoQTDE: TBCDField
      DisplayWidth = 18
      FieldName = 'QTDE'
      DisplayFormat = '###,###,##0.0000'
      Precision = 12
    end
    object qrResumoPRO_COD: TStringField
      DisplayLabel = 'BOX'
      DisplayWidth = 16
      FieldName = 'PRO_COD'
      Visible = False
      Size = 16
    end
    object qrResumoINSUMO: TStringField
      DisplayWidth = 1
      FieldName = 'INSUMO'
      Visible = False
      Size = 1
    end
    object qrResumoINF_CODI: TIntegerField
      FieldName = 'INF_CODI'
      Visible = False
    end
  end
  object DataSource2: TDataSource
    DataSet = qrResumo
    Left = 448
    Top = 416
  end
  object qrAux: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    Left = 352
    Top = 416
  end
  object STP_NF_RETORNO: TADOStoredProc
    Connection = FMenu.ADOConnection
    ProcedureName = 'NOTA_INDUSTRIALIZACAO_RETORNO;1'
    Parameters = <
      item
        Name = '@PREP_ID'
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
        Name = '@OS_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@NAOUSADO'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = Null
      end>
    Left = 361
    Top = 318
  end
  object qrNFItens: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'INF_CODI'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM NF_ITENS'
      'WHERE INF_CODI = :INF_CODI')
    Left = 561
    Top = 350
    object qrNFItensINF_CODI: TAutoIncField
      FieldName = 'INF_CODI'
      ReadOnly = True
    end
    object qrNFItensINF_ITEM: TIntegerField
      FieldName = 'INF_ITEM'
    end
    object qrNFItensNFI_CODI: TIntegerField
      FieldName = 'NFI_CODI'
    end
    object qrNFItensPRO_ID: TIntegerField
      FieldName = 'PRO_ID'
    end
    object qrNFItensPRO_COD: TStringField
      FieldName = 'PRO_COD'
      Size = 16
    end
    object qrNFItensPRO_DESC: TStringField
      FieldName = 'PRO_DESC'
      Size = 60
    end
    object qrNFItensINF_QTDE: TFloatField
      FieldName = 'INF_QTDE'
    end
    object qrNFItensINF_PUNI: TFloatField
      FieldName = 'INF_PUNI'
    end
    object qrNFItensINF_AIPI: TFloatField
      FieldName = 'INF_AIPI'
    end
    object qrNFItensINF_VIPI: TFloatField
      FieldName = 'INF_VIPI'
    end
    object qrNFItensINF_TOTA: TFloatField
      FieldName = 'INF_TOTA'
    end
    object qrNFItensINF_PESOLIQ: TFloatField
      FieldName = 'INF_PESOLIQ'
    end
    object qrNFItensINF_PESO: TFloatField
      FieldName = 'INF_PESO'
    end
    object qrNFItensINF_VOL: TFloatField
      FieldName = 'INF_VOL'
    end
    object qrNFItensINF_AICM: TFloatField
      FieldName = 'INF_AICM'
    end
    object qrNFItensINF_BICM: TFloatField
      FieldName = 'INF_BICM'
    end
    object qrNFItensINF_VICM: TFloatField
      FieldName = 'INF_VICM'
    end
    object qrNFItensUVEN_ID: TIntegerField
      FieldName = 'UVEN_ID'
    end
    object qrNFItensINF_QTDERETORNADA: TFloatField
      FieldName = 'INF_QTDERETORNADA'
    end
    object qrNFItensINF_NFE: TIntegerField
      FieldName = 'INF_NFE'
    end
    object qrNFItensINF_QTDERETORNADASALDO: TFloatField
      FieldName = 'INF_QTDERETORNADASALDO'
    end
    object qrNFItensESTQ_LOTE1: TStringField
      DisplayWidth = 50
      FieldName = 'ESTQ_LOTE1'
      Size = 50
    end
    object qrNFItensESTQ_LOTE1_QTDE: TFloatField
      FieldName = 'ESTQ_LOTE1_QTDE'
    end
    object qrNFItensESTQ_LOTE2: TStringField
      DisplayWidth = 50
      FieldName = 'ESTQ_LOTE2'
      Size = 50
    end
    object qrNFItensESTQ_LOTE2_QTDE: TFloatField
      FieldName = 'ESTQ_LOTE2_QTDE'
    end
    object qrNFItensINF_CST: TStringField
      FieldName = 'INF_CST'
      Size = 3
    end
    object qrNFItensUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 5
    end
    object qrNFItensNCM: TStringField
      FieldName = 'NCM'
      Size = 10
    end
  end
end
