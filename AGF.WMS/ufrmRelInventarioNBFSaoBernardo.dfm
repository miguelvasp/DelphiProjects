object frmRelInventarioNBFSaoBernardo: TfrmRelInventarioNBFSaoBernardo
  Left = 192
  Top = 124
  Width = 641
  Height = 346
  Caption = 'Relatório de inventário - NBF São Bernardo'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 14
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 47
    Height = 14
    Caption = 'Data de:'
  end
  object Label2: TLabel
    Left = 152
    Top = 8
    Width = 20
    Height = 14
    Caption = 'Até'
  end
  object MaskEdit1: TMaskEdit
    Left = 16
    Top = 24
    Width = 121
    Height = 22
    EditMask = '99/99/9999'
    MaxLength = 10
    TabOrder = 0
    Text = '  /  /    '
  end
  object MaskEdit2: TMaskEdit
    Left = 152
    Top = 24
    Width = 121
    Height = 22
    EditMask = '99/99/9999'
    MaxLength = 10
    TabOrder = 1
    Text = '  /  /    '
  end
  object Button1: TButton
    Left = 16
    Top = 264
    Width = 97
    Height = 25
    Caption = 'Consultar'
    TabOrder = 2
    OnClick = Button1Click
  end
  object RadioGroup1: TRadioGroup
    Left = 16
    Top = 56
    Width = 297
    Height = 89
    Caption = 'OPÇÕES DO RELATÓRIO'
    ItemIndex = 0
    Items.Strings = (
      'LIVRO DE INVENTÁRIO'
      'LIVRO DE ENTRADA/SAÍDA'
      'LIVRO DEPOSITANTE')
    TabOrder = 4
  end
  object pnlProgress: TPanel
    Left = 328
    Top = 15
    Width = 434
    Height = 154
    Color = clWhite
    TabOrder = 3
    Visible = False
    object Label3: TLabel
      Left = 0
      Top = 47
      Width = 433
      Height = 14
      Alignment = taCenter
      AutoSize = False
      Caption = 'enquanto efetuamos a operação solicitada'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 96
      Top = 16
      Width = 4
      Height = 14
    end
    object Label5: TLabel
      Left = 0
      Top = 23
      Width = 433
      Height = 25
      Alignment = taCenter
      AutoSize = False
      Caption = 'Aguarde'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbProgress: TLabel
      Left = 3
      Top = 136
      Width = 3
      Height = 13
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object ProgressBar1: TProgressBar
      Left = 16
      Top = 95
      Width = 401
      Height = 29
      Min = 0
      Max = 100
      Smooth = True
      TabOrder = 0
    end
  end
  object RadioGroup2: TRadioGroup
    Left = 16
    Top = 152
    Width = 273
    Height = 81
    Caption = 'Consultar por'
    ItemIndex = 1
    Items.Strings = (
      'Saldo de Notas de Saída'
      'Saldo de Notas de Armazem e Retorno Simbolico')
    TabOrder = 5
  end
  object qrCliente: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'select CLIN_ID,CLIN_RAZA  from nf a, clientenbf b '
      'where a.nfi_emit_cli = b.CLIN_ID'
      'and a.nfi_codi = :nfi_codi')
    ValidateWithMask = True
    Left = 486
    Top = 12
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nfi_codi'
        ParamType = ptUnknown
      end>
    object qrClienteCLIN_ID: TAutoIncField
      FieldName = 'CLIN_ID'
      Origin = 'NBFDADOS.clientenbf.CLIN_ID'
    end
    object qrClienteCLIN_RAZA: TStringField
      FieldName = 'CLIN_RAZA'
      Origin = 'NBFDADOS.clientenbf.CLIN_RAZA'
      FixedChar = True
      Size = 50
    end
  end
  object qrListaProdutos: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'SELECT '
      'ID,PRODUTO,  TIPO, CLIENTE, nfi_codi, data, '
      
        'CASE WHEN ENTRADAS IS NULL THEN 0 ELSE ENTRADAS END as entradas,' +
        ' '
      #9#9#9' CASE WHEN SAIDAS IS NULL THEN 0 ELSE SAIDAS END  as saidas'
      #9#9#9' FROM LIVRO_ARMAZEM '
      ''
      ''
      ''
      ''
      'WHERE PRODUTO = :PRODUTO '
      'order by ID desc')
    ValidateWithMask = True
    Left = 480
    Top = 73
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PRODUTO'
        ParamType = ptUnknown
      end>
    object qrListaProdutosID: TAutoIncField
      FieldName = 'ID'
    end
    object qrListaProdutosPRODUTO: TIntegerField
      FieldName = 'PRODUTO'
    end
    object qrListaProdutosentradas: TFloatField
      FieldName = 'entradas'
    end
    object qrListaProdutossaidas: TFloatField
      FieldName = 'saidas'
    end
    object qrListaProdutosTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object qrListaProdutosCLIENTE: TStringField
      FieldName = 'CLIENTE'
      FixedChar = True
      Size = 50
    end
    object qrListaProdutosnfi_codi: TIntegerField
      FieldName = 'nfi_codi'
    end
  end
  object qrValor: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'SELECT TOP 1 '
      
        'CASE WHEN B.INF_PUNI IS NULL THEN 0 ELSE B.INF_PUNI END AS VALOR' +
        ' FROM NF A, NF_ITENS B'
      'WHERE '
      'A.NFI_CODI = b.NFI_CODI'
      'AND B.PRO_ID = :PRO_ID'
      'AND A.TDOC_ID = 2'
      'AND A.NFI_DEMI <  :DT_INI'
      'ORDER BY B.NFI_CODI DESC')
    ValidateWithMask = True
    Left = 472
    Top = 185
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PRO_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DT_INI'
        ParamType = ptUnknown
      end>
    object qrValorVALOR: TFloatField
      FieldName = 'VALOR'
    end
  end
  object qrLivroFiscal: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    ValidateWithMask = True
    Left = 480
    Top = 129
  end
  object qrEntradas: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      
        'SELECT  CASE WHEN SUM(B.INF_QTDE) IS NULL THEN 0 ELSE SUM(B.INF_' +
        'QTDE) END AS ENTRADAS'
      'FROM NF A, NF_ITENS B'
      'WHERE A.NFI_CODI = B.NFI_CODI AND A.TDOC_ID = 2 '
      'AND A.NFI_DEMI < CONVERT(DATETIME, :DT_INI, 112)'#9
      'AND (A.NFI_STATUS <> '#39'C'#39' OR A.NFI_STATUS IS NULL)'
      'AND B.PRO_ID = :PROD_ID')
    ValidateWithMask = True
    Left = 424
    Top = 201
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DT_INI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PROD_ID'
        ParamType = ptUnknown
      end>
    object qrEntradasENTRADAS: TFloatField
      FieldName = 'ENTRADAS'
    end
  end
  object qrSaidas: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      
        'SELECT  CASE WHEN SUM(B.INF_QTDE) IS NULL THEN 0 ELSE SUM(B.INF_' +
        'QTDE) END AS SAIDA'
      'FROM NF A, NF_ITENS B'
      
        'WHERE A.NFI_CODI = B.NFI_CODI AND (A.TDOC_ID = 3 OR A.TDOC_ID = ' +
        '14)'
      'AND A.NFI_DEMI < CONVERT(DATETIME, :DT_INI, 112)'#9
      'AND (A.NFI_STATUS <> '#39'C'#39' OR A.NFI_STATUS IS NULL)'
      'AND B.PRO_ID = :PROD_ID')
    ValidateWithMask = True
    Left = 416
    Top = 9
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DT_INI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PROD_ID'
        ParamType = ptUnknown
      end>
    object qrSaidasSAIDA: TFloatField
      FieldName = 'SAIDA'
    end
  end
  object qrUpdate: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'UPDATE LIVRO_ARMAZEM '
      'SET '
      'SALDO_ANT = :SALDO_ANT'
      ',  SALDO = :SALDO'
      ', VALOR = :VALOR'
      ', PARCIAL = :PARCIAL'
      'WHERE ID = :ID'#9)
    ValidateWithMask = True
    Left = 288
    Top = 9
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'SALDO_ANT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SALDO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VALOR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PARCIAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID'#9
        ParamType = ptUnknown
      end>
  end
  object qrProdutos: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select Distinct produto from livro_armazem'
      '')
    ValidateWithMask = True
    Left = 352
    Top = 9
    object qrProdutosproduto: TIntegerField
      FieldName = 'produto'
    end
  end
  object STP_CONSULTA_ESTOQUE_FIXO: TADOStoredProc
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    ProcedureName = 'CALCULA_ESTOQUE_FIXO_SAIDA;1'
    Parameters = <
      item
        Name = '@PRO_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
      end
      item
        Name = '@DATA_FINAL'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
      end>
    Left = 528
    Top = 232
    object STP_CONSULTA_ESTOQUE_FIXOESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
      ReadOnly = True
    end
  end
  object STP_CONSULTA_ESTOQUE_FIXO2: TADOStoredProc
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    ProcedureName = 'CALCULA_ESTOQUE_FIXO_ARMAZEM_RETORNO;1'
    Parameters = <
      item
        Name = '@PRO_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
      end
      item
        Name = '@DATA_FINAL'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
      end>
    Left = 224
    Top = 232
    object STP_CONSULTA_ESTOQUE_FIXO2ESTOQUE: TBCDField
      FieldName = 'ESTOQUE'
      ReadOnly = True
      Precision = 15
      Size = 2
    end
  end
  object qrEStoque: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    Left = 304
    Top = 184
  end
end
