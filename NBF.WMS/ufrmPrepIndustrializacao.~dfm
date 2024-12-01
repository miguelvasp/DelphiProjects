object frmPrepIndustrializacao: TfrmPrepIndustrializacao
  Left = 228
  Top = 80
  Width = 800
  Height = 600
  Caption = 'Preparação de Boxes para industrialização'
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
  object Label5: TLabel
    Left = 422
    Top = 92
    Width = 35
    Height = 14
    Caption = 'Label5'
  end
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 89
    Width = 784
    Height = 473
    ActivePage = TabSheet1
    TabIndex = 0
    TabOrder = 1
    FixedDimension = 20
    object TabSheet1: TRzTabSheet
      Caption = 'Informações da Nota'
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 780
        Height = 80
        Align = alTop
        Caption = 'Adicionar produtos'
        TabOrder = 0
        object Label6: TLabel
          Left = 16
          Top = 24
          Width = 44
          Height = 14
          Caption = 'Produto'
        end
        object Label7: TLabel
          Left = 184
          Top = 24
          Width = 63
          Height = 14
          Caption = 'Quantidade'
        end
        object cboProduto: TwwDBLookupCombo
          Left = 16
          Top = 40
          Width = 145
          Height = 22
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'PRO_COD'#9'16'#9'PRO_COD'#9'F'
            'PRO_DESC'#9'40'#9'PRO_DESC'#9'F')
          LookupTable = qrProdutosKit
          LookupField = 'PRO_ID'
          Options = [loColLines, loRowLines]
          TabOrder = 0
          AutoDropDown = True
          ShowButton = True
          PreciseEditRegion = False
          AllowClearKey = False
        end
        object edtQtde: TEdit
          Left = 184
          Top = 40
          Width = 121
          Height = 22
          TabOrder = 1
        end
        object Button1: TButton
          Left = 322
          Top = 38
          Width = 98
          Height = 25
          Caption = 'Adicionar'
          TabOrder = 2
          OnClick = Button1Click
        end
        object Button2: TButton
          Left = 434
          Top = 37
          Width = 175
          Height = 25
          Caption = 'Remover item selecionado'
          TabOrder = 3
          OnClick = Button2Click
        end
      end
      object wwDBGrid2: TwwDBGrid
        Left = 0
        Top = 80
        Width = 780
        Height = 369
        Selected.Strings = (
          'PRO_COD'#9'16'#9'Produto'
          'PRO_DESC'#9'40'#9'Descrição'
          'QTDE'#9'18'#9'Qtde')
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alClient
        DataSource = dsItens
        ReadOnly = True
        TabOrder = 1
        TitleAlignment = taLeftJustify
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
      end
    end
    object TabSheet2: TRzTabSheet
      Caption = 'Dados da nota de Retorno de Industrialização'
      object wwDBGrid1: TwwDBGrid
        Left = 0
        Top = 0
        Width = 780
        Height = 296
        Selected.Strings = (
          'PRO_COD'#9'16'#9'BOX'#9'F'
          'PRO_COD_BAIXA'#9'16'#9'PRODUTO'#9'F'
          'PRO_DESC'#9'37'#9'DESCRIÇÃO'#9'F'
          'NFI_NUMERO'#9'13'#9'NF ENTRADA'#9'F'
          'QTDE'#9'18'#9'QTDE'#9'F')
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alClient
        DataSource = dsResumo
        ReadOnly = True
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
      object Panel3: TPanel
        Left = 0
        Top = 296
        Width = 780
        Height = 153
        Align = alBottom
        TabOrder = 1
        object Label8: TLabel
          Left = 8
          Top = 8
          Width = 100
          Height = 14
          Caption = 'Produtos faltantes'
        end
        object wwDBGrid3: TwwDBGrid
          Left = 8
          Top = 24
          Width = 761
          Height = 121
          Selected.Strings = (
            'PRO_COD'#9'16'#9'BOX'
            'PRO_COD_BAIXA'#9'16'#9'PRODUTO'
            'SOMA_QTDE'#9'18'#9'QTDE EM NOTAS'
            'QTDE_TOTAL'#9'19'#9'QTDE TOTAL'
            'QTDE_FALTANTE'#9'18'#9'QTDE FALTANTE')
          IniAttributes.Delimiter = ';;'
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          DataSource = dsFaltantes
          ReadOnly = True
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
      end
    end
    object TabSheet3: TRzTabSheet
      Caption = 'Notas Fiscais'
      object wwDBGrid4: TwwDBGrid
        Left = 0
        Top = 0
        Width = 780
        Height = 449
        Selected.Strings = (
          'NFI_NUMERO'#9'10'#9'Nota Fiscal'
          'CFA_CODI'#9'6'#9'CFOP'
          'CFA_DCFO'#9'50'#9'Natureza da Operação'
          'STATUS'#9'13'#9'Status'#9'F')
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alClient
        DataSource = dsNF
        ReadOnly = True
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
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 784
    Height = 89
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 26
      Width = 20
      Height = 14
      Caption = 'OS:'
    end
    object Label2: TLabel
      Left = 8
      Top = 44
      Width = 41
      Height = 14
      Caption = 'Cliente:'
    end
    object Label3: TLabel
      Left = 8
      Top = 62
      Width = 29
      Height = 14
      Caption = 'Data:'
    end
    object Label4: TLabel
      Left = 8
      Top = 7
      Width = 64
      Height = 14
      Caption = 'Preparação:'
    end
    object DBText1: TDBText
      Left = 80
      Top = 7
      Width = 65
      Height = 17
      DataField = 'PREP_ID'
      DataSource = dsPreparacao
    end
    object DBText2: TDBText
      Left = 35
      Top = 26
      Width = 65
      Height = 17
      DataField = 'OS_ID'
      DataSource = dsPreparacao
    end
    object DBText4: TDBText
      Left = 45
      Top = 62
      Width = 65
      Height = 17
      DataField = 'PREP_DATA'
      DataSource = dsPreparacao
    end
    object lbCliente: TLabel
      Left = 54
      Top = 44
      Width = 46
      Height = 14
      Caption = 'lbCliente'
    end
    object lbStatus: TLabel
      Left = 576
      Top = 56
      Width = 189
      Height = 19
      Caption = 'Preparação confirmada'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object DBNavigator1: TDBNavigator
      Left = 554
      Top = 3
      Width = 224
      Height = 25
      DataSource = dsPreparacao
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 0
    end
    object Button3: TButton
      Left = 424
      Top = 3
      Width = 123
      Height = 25
      Caption = 'Nova Preparação'
      TabOrder = 1
      OnClick = Button3Click
    end
    object btnConfirma: TButton
      Left = 552
      Top = 43
      Width = 225
      Height = 33
      Caption = 'Calcular estoques e emitir notas'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = btnConfirmaClick
    end
    object Button4: TButton
      Left = 289
      Top = 3
      Width = 131
      Height = 25
      Caption = 'Retorno de Insumos'
      TabOrder = 3
      OnClick = Button4Click
    end
    object cboTipoDoc: TwwDBComboBox
      Left = 384
      Top = 52
      Width = 153
      Height = 22
      ShowButton = True
      Style = csDropDown
      MapList = True
      AllowClearKey = False
      DropDownCount = 8
      ItemHeight = 0
      Items.Strings = (
        'Industrialização'#9'23'
        'Reprocesso'#9'28')
      ItemIndex = 0
      Sorted = False
      TabOrder = 4
      UnboundDataType = wwDefault
    end
  end
  object qrPreparacao: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <
      item
        Name = 'OS_ID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select * from OS_INDUSTRIALIZACAO'
      'WHERE OS_ID = :OS_ID')
    Left = 248
    Top = 416
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
  object dsPreparacao: TDataSource
    DataSet = qrPreparacao
    OnDataChange = dsPreparacaoDataChange
    Left = 160
    Top = 416
  end
  object qrItens: TADOQuery
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
      'SELECT'
      #9'A.ITEM,'
      #9'A.PRO_ID,'
      #9'B.PRO_COD,'
      #9'B.PRO_DESC,'
      #9'A.QTDE,'
      #9'A.QTDE_BAIXADA'#9
      'FROM OS_INDUSTRIALIZACAO_ITEM A INNER JOIN PRODUTO B'
      'ON A.PRO_ID = B.PRO_ID'
      'where A.PREP_ID = :PREP_ID'
      'ORDER BY A.ITEM')
    Left = 449
    Top = 222
    object qrItensPRO_COD: TStringField
      DisplayLabel = 'Produto'
      DisplayWidth = 16
      FieldName = 'PRO_COD'
      Size = 16
    end
    object qrItensPRO_DESC: TStringField
      DisplayLabel = 'Descrição'
      DisplayWidth = 40
      FieldName = 'PRO_DESC'
      Size = 40
    end
    object qrItensQTDE: TBCDField
      DisplayLabel = 'Qtde'
      DisplayWidth = 18
      FieldName = 'QTDE'
      DisplayFormat = '###,###,##0.0000'
      Precision = 12
    end
    object qrItensQTDE_BAIXADA: TBCDField
      DisplayLabel = 'Qtde Baixada'
      DisplayWidth = 18
      FieldName = 'QTDE_BAIXADA'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 12
    end
    object qrItensITEM: TAutoIncField
      DisplayWidth = 10
      FieldName = 'ITEM'
      ReadOnly = True
      Visible = False
    end
    object qrItensPRO_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'PRO_ID'
      Visible = False
    end
  end
  object dsItens: TDataSource
    DataSet = qrItens
    Left = 689
    Top = 222
  end
  object qrAux: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    Left = 377
    Top = 238
  end
  object qrProdutosKit: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CLIN_ID'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'PREP_ID'
        DataType = ftString
        Size = 1
        Value = '0'
      end>
    SQL.Strings = (
      'SELECT'
      #9'PRO_ID,'
      #9'PRO_COD,'
      #9'PRO_DESC'
      'FROM PRODUTO'
      'WHERE ISNULL(KIT, '#39'N'#39') = '#39'S'#39
      'AND CLIN_ID = :CLIN_ID'
      
        'AND PRO_ID NOT IN (SELECT PRO_ID FROM OS_INDUSTRIALIZACAO_ITEM W' +
        'HERE PREP_ID = :PREP_ID)'
      'ORDER BY PRO_DESC')
    Left = 521
    Top = 222
    object qrProdutosKitPRO_COD: TStringField
      DisplayWidth = 16
      FieldName = 'PRO_COD'
      Size = 16
    end
    object qrProdutosKitPRO_DESC: TStringField
      DisplayWidth = 40
      FieldName = 'PRO_DESC'
      Size = 40
    end
    object qrProdutosKitPRO_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'PRO_ID'
      ReadOnly = True
      Visible = False
    end
  end
  object qrIndustrializacaoItens: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    SQL.Strings = (
      'select top 0 * from [OS_INDUSTRIALIZACAO_ITEM]')
    Left = 601
    Top = 222
    object qrIndustrializacaoItensITEM: TAutoIncField
      FieldName = 'ITEM'
      ReadOnly = True
    end
    object qrIndustrializacaoItensPREP_ID: TIntegerField
      FieldName = 'PREP_ID'
    end
    object qrIndustrializacaoItensPRO_ID: TIntegerField
      FieldName = 'PRO_ID'
    end
    object qrIndustrializacaoItensQTDE: TBCDField
      FieldName = 'QTDE'
      Precision = 12
    end
    object qrIndustrializacaoItensQTDE_BAIXADA: TBCDField
      FieldName = 'QTDE_BAIXADA'
      Precision = 12
    end
  end
  object STP_VERIFICA: TADOStoredProc
    Connection = FMenu.ADOConnection
    ProcedureName = 'INDUSTRIALIZACAO_CALCULA_BAIXA;1'
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
        Name = '@TDOC_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 241
    Top = 246
  end
  object qrFaltantes: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'PREP_ID'
        DataType = ftString
        Size = 1
        Value = '0'
      end>
    SQL.Strings = (
      'SELECT DISTINCT'
      '    A.PREP_ID,'
      '    A.PRO_COD,'
      #9'A.PRO_COD_BAIXA,'
      #9'('
      #9#9'SELECT SUM(QTDE) FROM INDUSTRIALIZACAO_BAIXA '
      #9#9'WHERE PREP_ID = A.PREP_ID'
      #9#9'AND PRO_ID_BAIXA = A.PRO_ID_BAIXA'
      #9') AS SOMA_QTDE,'
      #9'('
      #9#9'SELECT TOP 1  QTDE_TOTAL FROM INDUSTRIALIZACAO_BAIXA '
      #9#9'WHERE PREP_ID = A.PREP_ID'
      #9#9'AND PRO_ID_BAIXA = A.PRO_ID_BAIXA'
      #9') AS QTDE_TOTAL,'
      #9'('
      #9#9'SELECT TOP 1  QTDE_TOTAL FROM INDUSTRIALIZACAO_BAIXA '
      #9#9'WHERE PREP_ID = A.PREP_ID'
      #9#9'AND PRO_ID_BAIXA = A.PRO_ID_BAIXA'
      #9')-'
      #9'('
      #9#9'SELECT SUM(QTDE) FROM INDUSTRIALIZACAO_BAIXA '
      #9#9'WHERE PREP_ID = A.PREP_ID'
      #9#9'AND PRO_ID_BAIXA = A.PRO_ID_BAIXA'
      #9')  QTDE_FALTANTE'
      'FROM INDUSTRIALIZACAO_BAIXA A'
      'WHERE A.PREP_ID = :PREP_ID'
      'AND'
      '('
      #9#9'SELECT SUM(QTDE) FROM INDUSTRIALIZACAO_BAIXA '
      #9#9'WHERE PREP_ID = A.PREP_ID'
      #9#9'AND PRO_ID_BAIXA = A.PRO_ID_BAIXA'
      #9') <'
      #9'('
      #9#9'SELECT TOP 1  QTDE_TOTAL FROM INDUSTRIALIZACAO_BAIXA '
      #9#9'WHERE PREP_ID = A.PREP_ID'
      #9#9'AND PRO_ID_BAIXA = A.PRO_ID_BAIXA'
      #9')')
    Left = 697
    Top = 438
    object qrFaltantesPRO_COD: TStringField
      DisplayLabel = 'BOX'
      DisplayWidth = 16
      FieldName = 'PRO_COD'
      Size = 16
    end
    object qrFaltantesPRO_COD_BAIXA: TStringField
      DisplayLabel = 'PRODUTO'
      DisplayWidth = 16
      FieldName = 'PRO_COD_BAIXA'
      Size = 16
    end
    object qrFaltantesSOMA_QTDE: TBCDField
      DisplayLabel = 'QTDE EM NOTAS'
      DisplayWidth = 18
      FieldName = 'SOMA_QTDE'
      ReadOnly = True
      DisplayFormat = '###,###,##0.0000'
      Precision = 32
    end
    object qrFaltantesQTDE_TOTAL: TBCDField
      DisplayLabel = 'QTDE TOTAL'
      DisplayWidth = 19
      FieldName = 'QTDE_TOTAL'
      ReadOnly = True
      DisplayFormat = '###,###,##0.0000'
      Precision = 18
    end
    object qrFaltantesQTDE_FALTANTE: TBCDField
      DisplayLabel = 'QTDE FALTANTE'
      DisplayWidth = 18
      FieldName = 'QTDE_FALTANTE'
      ReadOnly = True
      DisplayFormat = '###,###,##0.0000'
      Precision = 32
    end
    object qrFaltantesPREP_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'PREP_ID'
      Visible = False
    end
  end
  object dsFaltantes: TDataSource
    DataSet = qrFaltantes
    Left = 657
    Top = 438
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
    Left = 121
    Top = 238
    object qrResumoPRO_COD: TStringField
      DisplayLabel = 'BOX'
      DisplayWidth = 16
      FieldName = 'PRO_COD'
      Size = 16
    end
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
  object dsResumo: TDataSource
    DataSet = qrResumo
    Left = 73
    Top = 198
  end
  object STP_NF_COBRANCA: TADOStoredProc
    Connection = FMenu.ADOConnection
    ProcedureName = 'NOTA_INDUSTRIALIZACAO_COBRANCA;1'
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
      end>
    Left = 217
    Top = 318
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
        Size = -1
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
    Left = 385
    Top = 166
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
      FieldName = 'ESTQ_LOTE1'
    end
    object qrNFItensESTQ_LOTE1_QTDE: TFloatField
      FieldName = 'ESTQ_LOTE1_QTDE'
    end
    object qrNFItensESTQ_LOTE2: TStringField
      FieldName = 'ESTQ_LOTE2'
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
  object qrNF: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'prep_id'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT'
      #9'NFI_NUMERO,'
      #9'B.CFA_CODI,'
      #9'B.CFA_DCFO,'
      #9'CASE WHEN A.NFI_STATUS = '#39'A'#39' THEN '#39'Nota a emitir'#39
      #9#9' WHEN A.NFI_STATUS = '#39'E'#39' THEN '#39'Nota emitida'#39' '
      '    END AS STATUS'
      'FROM NF A INNER JOIN FATURAMENTO B'
      'ON A.CFA_ID = B.CFA_ID'
      'WHERE PREP_ID = :prep_id'
      'ORDER BY NFI_NUMERO')
    Left = 177
    Top = 134
    object qrNFNFI_NUMERO: TStringField
      DisplayLabel = 'Nota Fiscal'
      DisplayWidth = 10
      FieldName = 'NFI_NUMERO'
      Size = 10
    end
    object qrNFCFA_CODI: TStringField
      DisplayLabel = 'CFOP'
      DisplayWidth = 6
      FieldName = 'CFA_CODI'
      Size = 4
    end
    object qrNFCFA_DCFO: TStringField
      DisplayLabel = 'Natureza da Operação'
      DisplayWidth = 50
      FieldName = 'CFA_DCFO'
      Size = 50
    end
    object qrNFSTATUS: TStringField
      DisplayLabel = 'Status'
      DisplayWidth = 13
      FieldName = 'STATUS'
      ReadOnly = True
      Size = 13
    end
  end
  object dsNF: TDataSource
    DataSet = qrNF
    Left = 281
    Top = 142
  end
end
