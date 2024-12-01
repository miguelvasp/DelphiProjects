object frSelecionaProdutoNFArmazem: TfrSelecionaProdutoNFArmazem
  Left = 324
  Top = 124
  Width = 836
  Height = 563
  Caption = 'Seleção de Produtos para Nota Fiscal de Armazem'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 41
    Width = 820
    Height = 443
    Selected.Strings = (
      'NFI_NUMERO'#9'10'#9'Nota Fiscal'
      'PRO_COD'#9'16'#9'Código'
      'PRO_DESC'#9'60'#9'Produto'
      'QTDE_ENTRADA'#9'10'#9'Qtde NF Entrada'
      'QTDE_ESTQ'#9'10'#9'Qtde Estoque'
      'QtdeSelecionada'#9'10'#9'Qtde Selecionada')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 5
    ShowHorzScrollBar = True
    Align = alClient
    Color = clWhite
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
    PaintOptions.AlternatingRowColor = clBtnFace
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 820
    Height = 41
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 56
      Height = 13
      Caption = 'Nota Fiscal:'
    end
    object lbClinId: TLabel
      Left = 408
      Top = 8
      Width = 6
      Height = 13
      Caption = '0'
      Visible = False
    end
    object edtNF: TEdit
      Left = 77
      Top = 13
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object Button1: TButton
      Left = 206
      Top = 11
      Width = 75
      Height = 25
      Caption = 'Buscar'
      TabOrder = 1
      OnClick = Button1Click
    end
    object RadioButton1: TRadioButton
      Left = 312
      Top = 16
      Width = 193
      Height = 17
      Caption = 'Ordenar por Nota Fiscal'
      Checked = True
      TabOrder = 2
      TabStop = True
    end
    object RadioButton2: TRadioButton
      Left = 488
      Top = 16
      Width = 225
      Height = 17
      Caption = 'Ordenar por Código do Produto'
      TabOrder = 3
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 484
    Width = 820
    Height = 41
    Align = alBottom
    TabOrder = 2
    object Button2: TButton
      Left = 696
      Top = 8
      Width = 107
      Height = 25
      Caption = 'Confirmar'
      TabOrder = 0
      OnClick = Button2Click
    end
  end
  object qrBusca: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT '#9'A.NFI_CODI, NFI_NUMERO,NFI_EMIT_CLI , INF_CODI,   PRO_DE' +
        'SC,    B.PRO_ID,       PRO_COD,            ISNULL(B.INF_QTDE, 0.' +
        '00) - ISNULL(B.INF_QTDERETORNADA, 0.00) AS QTDE_ENTRADA, E.QTDE_' +
        'ESTQ'
      'FROM'#9'NF A'
      'INNER JOIN NF_ITENS B ON A.NFI_CODI = B.NFI_CODI '
      'LEFT JOIN ('
      #9#9#9'Select B.CLIN_ID, A.PRO_ID, SUM(ESTq_QTDE) as QTDE_ESTQ '
      #9#9#9'FROM ESTOQUE A '
      #9#9#9'INNER JOIN PRODUTO B ON A.PRO_ID = B.PRO_ID'
      #9#9#9'where  A.ESTQ_DT_ENTRADA IS NOT NULL '
      #9#9#9'and A.ESTQ_DT_ENTRADA <> '#39#39
      #9#9#9'and A.ESTQ_QTDE_RETIRA = 0'
      #9#9#9'and (A.MANI_ID is NULL or A.MANI_ID = '#39#39')'
      
        #9#9#9'and A.AR_ID in(Select AR_ID from AREA where PAR_ID = 2 and AR' +
        '_DISPONIVEL = '#39'S'#39')'
      #9#9#9'GROUP BY B.CLIN_ID, A.PRO_ID'
      ')  AS E ON A.NFI_EMIT_CLI = E.CLIN_ID AND B.PRO_ID = E.PRO_ID'
      'WHERE  NFI_EMIT_CLI = 353'
      'AND'#9'TDOC_ID = 2'
      'AND ISNULL(B.INF_QTDE, 0.00) > ISNULL(B.INF_QTDERETORNADA, 0.00)'
      'AND ISNULL(E.QTDE_ESTQ, 0) > 0'
      'ORDER BY NFI_NUMERO, PRO_COD')
    Left = 312
    Top = 168
    object qrBuscaNFI_CODI: TAutoIncField
      FieldName = 'NFI_CODI'
      ReadOnly = True
    end
    object qrBuscaNFI_NUMERO: TStringField
      FieldName = 'NFI_NUMERO'
      Size = 10
    end
    object qrBuscaNFI_EMIT_CLI: TIntegerField
      FieldName = 'NFI_EMIT_CLI'
    end
    object qrBuscaINF_CODI: TAutoIncField
      FieldName = 'INF_CODI'
      ReadOnly = True
    end
    object qrBuscaPRO_DESC: TStringField
      FieldName = 'PRO_DESC'
      Size = 60
    end
    object qrBuscaPRO_COD: TStringField
      FieldName = 'PRO_COD'
      Size = 16
    end
    object qrBuscaQTDE_ENTRADA: TFloatField
      FieldName = 'QTDE_ENTRADA'
      ReadOnly = True
    end
    object qrBuscaQTDE_ESTQ: TFloatField
      FieldName = 'QTDE_ESTQ'
      ReadOnly = True
    end
    object qrBuscaPRO_ID: TIntegerField
      FieldName = 'PRO_ID'
    end
  end
  object cdsBusca: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    BeforePost = cdsBuscaBeforePost
    Left = 304
    Top = 288
    object cdsBuscaNFI_NUMERO: TStringField
      DisplayLabel = 'Nota Fiscal'
      DisplayWidth = 10
      FieldName = 'NFI_NUMERO'
      Size = 10
    end
    object cdsBuscaPRO_COD: TStringField
      DisplayLabel = 'Código'
      DisplayWidth = 16
      FieldName = 'PRO_COD'
      Size = 16
    end
    object cdsBuscaPRO_DESC: TStringField
      DisplayLabel = 'Produto'
      DisplayWidth = 60
      FieldName = 'PRO_DESC'
      Size = 60
    end
    object cdsBuscaQTDE_ENTRADA: TFloatField
      DisplayLabel = 'Qtde NF Entrada'
      DisplayWidth = 10
      FieldName = 'QTDE_ENTRADA'
      ReadOnly = True
    end
    object cdsBuscaQTDE_ESTQ: TFloatField
      DisplayLabel = 'Qtde Estoque'
      DisplayWidth = 10
      FieldName = 'QTDE_ESTQ'
      ReadOnly = True
    end
    object cdsBuscaQtdeSelecionada: TFloatField
      DisplayLabel = 'Qtde Selecionada'
      DisplayWidth = 10
      FieldKind = fkInternalCalc
      FieldName = 'QtdeSelecionada'
    end
    object cdsBuscaNFI_CODI: TAutoIncField
      DisplayWidth = 10
      FieldName = 'NFI_CODI'
      ReadOnly = True
      Visible = False
    end
    object cdsBuscaNFI_EMIT_CLI: TIntegerField
      DisplayWidth = 10
      FieldName = 'NFI_EMIT_CLI'
      Visible = False
    end
    object cdsBuscaINF_CODI: TAutoIncField
      DisplayWidth = 10
      FieldName = 'INF_CODI'
      ReadOnly = True
      Visible = False
    end
    object cdsBuscaPRO_ID: TIntegerField
      FieldName = 'PRO_ID'
    end
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = qrBusca
    Constraints = True
    Left = 312
    Top = 224
  end
  object DataSource1: TDataSource
    DataSet = cdsBusca
    Left = 312
    Top = 344
  end
  object qrNFA: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    SQL.Strings = (
      'SELECT TOP 1 * FROM NFA_PRODUTO ORDER BY NFA_ITEM DESC')
    Left = 144
    Top = 288
    object qrNFANFA_ID: TAutoIncField
      FieldName = 'NFA_ID'
      ReadOnly = True
    end
    object qrNFANFA_ITEM: TIntegerField
      FieldName = 'NFA_ITEM'
    end
    object qrNFAPRO_ID: TIntegerField
      FieldName = 'PRO_ID'
    end
    object qrNFAQTDE_NFA: TFloatField
      FieldName = 'QTDE_NFA'
    end
    object qrNFAQTDE_NFE: TFloatField
      FieldName = 'QTDE_NFE'
    end
    object qrNFAREJEITADA: TStringField
      FieldName = 'REJEITADA'
      Size = 1
    end
    object qrNFASALDO: TFloatField
      FieldName = 'SALDO'
    end
    object qrNFAPRECOUNIT: TFloatField
      FieldName = 'PRECOUNIT'
    end
    object qrNFACH: TIntegerField
      FieldName = 'CH'
    end
    object qrNFAQTDE_ESTOQUE: TFloatField
      FieldName = 'QTDE_ESTOQUE'
    end
    object qrNFANFI_CODI_ENTRADA: TIntegerField
      FieldName = 'NFI_CODI_ENTRADA'
    end
    object qrNFAINF_CODI_ENTRADA: TIntegerField
      FieldName = 'INF_CODI_ENTRADA'
    end
  end
end
