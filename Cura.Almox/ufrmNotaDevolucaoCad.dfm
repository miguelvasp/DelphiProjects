object frmNotaDevolucaoCad: TfrmNotaDevolucaoCad
  Left = 186
  Top = 111
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Nota de Devolução'
  ClientHeight = 612
  ClientWidth = 982
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label7: TLabel
    Left = 0
    Top = 124
    Width = 158
    Height = 16
    Caption = 'Materiais Cadastrados'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 0
    Top = 384
    Width = 132
    Height = 16
    Caption = 'Lotes Cadastrados'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 982
    Height = 65
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 51
      Height = 16
      Caption = 'Código'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 104
      Top = 8
      Width = 34
      Height = 16
      Caption = 'Data'
      FocusControl = DBEdit2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 232
      Top = 8
      Width = 55
      Height = 16
      Caption = 'Numero'
      FocusControl = DBEdit3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 312
      Top = 8
      Width = 38
      Height = 16
      Caption = 'Serie'
      FocusControl = DBEdit4
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 352
      Top = 8
      Width = 81
      Height = 16
      Caption = 'Fornecedor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 648
      Top = 8
      Width = 44
      Height = 16
      Caption = 'Status'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEdit2: TDBEdit
      Left = 104
      Top = 24
      Width = 121
      Height = 21
      DataField = 'Data'
      DataSource = dsNota
      TabOrder = 0
    end
    object DBEdit3: TDBEdit
      Left = 232
      Top = 24
      Width = 73
      Height = 21
      DataField = 'Numero'
      DataSource = dsNota
      TabOrder = 1
    end
    object DBEdit4: TDBEdit
      Left = 312
      Top = 24
      Width = 33
      Height = 21
      DataField = 'Serie'
      DataSource = dsNota
      TabOrder = 2
    end
    object wwDBLookupCombo1: TwwDBLookupCombo
      Left = 352
      Top = 24
      Width = 281
      Height = 21
      DropDownAlignment = taLeftJustify
      DataField = 'Fornecedor'
      DataSource = dsNota
      LookupTable = qrForn
      LookupField = 'FOR_CODI'
      TabOrder = 3
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = True
    end
    object edtCodigo: TEdit
      Left = 16
      Top = 24
      Width = 81
      Height = 21
      ReadOnly = True
      TabOrder = 5
      Text = '0'
    end
    object Button4: TButton
      Left = 857
      Top = 22
      Width = 75
      Height = 25
      Caption = 'Salvar'
      TabOrder = 4
      OnClick = Button4Click
    end
    object cboStatus: TwwDBComboBox
      Left = 648
      Top = 24
      Width = 201
      Height = 21
      ShowButton = True
      Style = csDropDown
      MapList = True
      AllowClearKey = False
      DataField = 'IdStatusDevolucao'
      DataSource = dsNota
      DropDownCount = 8
      ItemHeight = 0
      Items.Strings = (
        'Digitação'#9'1'
        'Nota Baixada'#9'2')
      Sorted = False
      TabOrder = 6
      UnboundDataType = wwDefault
    end
  end
  object pnlMateriais: TPanel
    Left = 0
    Top = 65
    Width = 982
    Height = 56
    Align = alTop
    TabOrder = 1
    object Label6: TLabel
      Left = 16
      Top = 8
      Width = 57
      Height = 16
      Caption = 'Material'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 432
      Top = 8
      Width = 44
      Height = 16
      Caption = 'Marca'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 680
      Top = 8
      Width = 34
      Height = 16
      Caption = 'Qtde'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cboMaterial: TwwDBLookupCombo
      Left = 16
      Top = 24
      Width = 409
      Height = 21
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'MAT_DESC'#9'100'#9'MAT_DESC'#9#9)
      LookupTable = qrMaterial
      LookupField = 'MAT_ID'
      TabOrder = 0
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = True
    end
    object Button1: TButton
      Left = 769
      Top = 22
      Width = 75
      Height = 25
      Caption = 'Adicionar'
      TabOrder = 3
      OnClick = Button1Click
    end
    object cboMarca: TwwDBLookupCombo
      Left = 432
      Top = 24
      Width = 233
      Height = 21
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'MARCA_DESC'#9'20'#9'MARCA_DESC'#9'F'#9)
      LookupTable = qrMarcas
      LookupField = 'MARCA_ID'
      TabOrder = 1
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = True
    end
    object edtQtde: TEdit
      Left = 679
      Top = 24
      Width = 74
      Height = 21
      TabOrder = 2
    end
  end
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 141
    Width = 977
    Height = 220
    Selected.Strings = (
      'MAT_DESC'#9'90'#9'Material'
      'MARCA_DESC'#9'20'#9'Marca'
      'Quantidade'#9'10'#9'Qtde'
      'QtdeLote'#9'10'#9'Qtde em Lotes'
      'QtdeLoteBaixada'#9'10'#9'Qtde Baixada em Lote')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = dsItens
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ReadOnly = True
    TabOrder = 2
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
  end
  object btnEliminarMaterial: TButton
    Left = 880
    Top = 369
    Width = 98
    Height = 25
    Caption = 'Eliminar Material'
    TabOrder = 3
    OnClick = btnEliminarMaterialClick
  end
  object wwDBGrid2: TwwDBGrid
    Left = 0
    Top = 401
    Width = 977
    Height = 168
    Selected.Strings = (
      'Lote'#9'50'#9'Lote'
      'Validade'#9'18'#9'Validade'
      'Qtde'#9'10'#9'Qtde')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = dsLotesSelecionados
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ReadOnly = True
    TabOrder = 4
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
  end
  object btnSelecionarLotes: TButton
    Left = 774
    Top = 369
    Width = 98
    Height = 25
    Caption = 'Selecionar Lotes'
    TabOrder = 5
    OnClick = btnSelecionarLotesClick
  end
  object btnConfirmar: TButton
    Left = 800
    Top = 577
    Width = 177
    Height = 25
    Caption = 'Confirmar e Efetuar Baixas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = btnConfirmarClick
  end
  object pnlLotes: TPanel
    Left = -296
    Top = 528
    Width = 1041
    Height = 537
    TabOrder = 7
    Visible = False
    object Panel3: TPanel
      Left = 1
      Top = 502
      Width = 1039
      Height = 34
      Align = alBottom
      TabOrder = 0
      object Button2: TButton
        Left = 861
        Top = 4
        Width = 113
        Height = 25
        Caption = 'Confirmar Lotes'
        TabOrder = 0
        OnClick = Button2Click
      end
      object Button3: TButton
        Left = 742
        Top = 4
        Width = 113
        Height = 25
        Caption = 'Cancelar'
        TabOrder = 1
        OnClick = Button3Click
      end
    end
    object wwDBGrid3: TwwDBGrid
      Left = 1
      Top = 1
      Width = 976
      Height = 501
      Selected.Strings = (
        'MAT_DESC'#9'50'#9'Material'
        'MARCA_DESC'#9'17'#9'Marca'
        'UNI_SIGLA'#9'2'#9'UN'
        'QTDE'#9'7'#9'Qtde'
        'DS_LOC'#9'15'#9'Local'
        'N_Lote'#9'20'#9'Lote'
        'Valid'#9'10'#9'Valid'
        'LocalArmazem'#9'20'#9'LocalArmazem'
        'QtdeSelecionada'#9'5'#9'Qtde')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 8
      ShowHorzScrollBar = True
      DataSource = dsLotes
      TabOrder = 1
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
    end
  end
  object qrNota: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'IdNotaDevolucao'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT TOP 1 * FROM NotaDevolucao'
      'WHERE IdNotaDevolucao = :IdNotaDevolucao')
    Left = 488
    Top = 488
    object qrNotaIdNotaDevolucao: TAutoIncField
      FieldName = 'IdNotaDevolucao'
      ReadOnly = True
    end
    object qrNotaNumero: TStringField
      FieldName = 'Numero'
      Size = 50
    end
    object qrNotaSerie: TStringField
      FieldName = 'Serie'
      Size = 50
    end
    object qrNotaFornecedor: TStringField
      FieldName = 'Fornecedor'
      Size = 50
    end
    object qrNotaIdStatusDevolucao: TIntegerField
      FieldName = 'IdStatusDevolucao'
    end
    object qrNotaData: TDateTimeField
      FieldName = 'Data'
      EditMask = '99/99/9999'
    end
  end
  object dsNota: TDataSource
    DataSet = qrNota
    OnDataChange = dsNotaDataChange
    Left = 536
    Top = 488
  end
  object qrMaterial: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    SQL.Strings = (
      'SELECT MAT_ID, MAT_DESC FROM MATERIAIS'
      'WHERE (GENERICO <> '#39'S'#39' OR GENERICO IS NULL)'
      'AND MAT_ATIVO = '#39'S'#39
      'ORDER BY MAT_DESC')
    Left = 576
    Top = 488
    object qrMaterialMAT_DESC: TStringField
      DisplayWidth = 100
      FieldName = 'MAT_DESC'
      Size = 100
    end
    object qrMaterialMAT_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'MAT_ID'
      ReadOnly = True
      Visible = False
    end
  end
  object qrForn: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    SQL.Strings = (
      'SELECT'#9#9'FOR_CODI'
      'FROM'#9#9'CPAFORN'
      'WHERE F_ALMOX = '#39'S'#39
      'ORDER BY'#9'FOR_CODI')
    Left = 664
    Top = 488
    object qrFornFOR_CODI: TStringField
      FieldName = 'FOR_CODI'
      FixedChar = True
      Size = 15
    end
  end
  object qrMarcas: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    SQL.Strings = (
      'select * from marcas'
      'order by marca_desc')
    Left = 624
    Top = 488
    object qrMarcasMARCA_DESC: TStringField
      DisplayWidth = 20
      FieldName = 'MARCA_DESC'
    end
    object qrMarcasMARCA_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'MARCA_ID'
      ReadOnly = True
      Visible = False
    end
  end
  object qrItems: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'IdNotaDevolucao'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    SQL.Strings = (
      'SELECT'
      
        #9'MR.MARCA_ID,M.Mat_id, i.IdNotaDevolucaoItem, M.MAT_DESC, MR.MAR' +
        'CA_DESC, I.Quantidade, SUM(L.Qtde) AS QtdeLote, SUM(l.QtdeBaixad' +
        'a) as QtdeLoteBaixada'
      'FROM NotaDevolucao N'
      
        'INNER JOIN NotaDevolucaoItem I ON N.IdNotaDevolucao = I.IdNotaDe' +
        'volucao'
      'INNER JOIN MATERIAIS M ON I.MAT_ID = M.MAT_ID'
      'INNER JOIN MARCAS MR ON I.MARCA_ID = MR.MARCA_ID'
      
        'LEFT JOIN NotaDevolucaoLote L ON I.IdNotaDevolucaoItem = L.IdNot' +
        'aDevolucaoItem'
      'WHERE n.IdNotaDevolucao = :IdNotaDevolucao'
      
        'GROUP BY MR.MARCA_ID, M.Mat_id, i.IdNotaDevolucaoItem,M.MAT_DESC' +
        ', MR.MARCA_DESC, I.Quantidade')
    Left = 432
    Top = 488
    object qrItemsMAT_DESC: TStringField
      DisplayLabel = 'Material'
      DisplayWidth = 90
      FieldName = 'MAT_DESC'
      Size = 100
    end
    object qrItemsMARCA_DESC: TStringField
      DisplayLabel = 'Marca'
      DisplayWidth = 20
      FieldName = 'MARCA_DESC'
    end
    object qrItemsQuantidade: TIntegerField
      DisplayLabel = 'Qtde'
      DisplayWidth = 10
      FieldName = 'Quantidade'
    end
    object qrItemsQtdeLote: TIntegerField
      DisplayLabel = 'Qtde em Lotes'
      DisplayWidth = 10
      FieldName = 'QtdeLote'
      ReadOnly = True
    end
    object qrItemsQtdeLoteBaixada: TIntegerField
      DisplayLabel = 'Qtde Baixada em Lote'
      DisplayWidth = 10
      FieldName = 'QtdeLoteBaixada'
      ReadOnly = True
    end
    object qrItemsIdNotaDevolucaoItem: TAutoIncField
      FieldName = 'IdNotaDevolucaoItem'
      ReadOnly = True
      Visible = False
    end
    object qrItemsMat_id: TAutoIncField
      FieldName = 'Mat_id'
      ReadOnly = True
    end
    object qrItemsMARCA_ID: TAutoIncField
      FieldName = 'MARCA_ID'
      ReadOnly = True
    end
  end
  object dsItens: TDataSource
    DataSet = qrItems
    OnDataChange = dsItensDataChange
    Left = 384
    Top = 488
  end
  object qrItemAdd: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    SQL.Strings = (
      'SELECT TOP 0 * FROM NotaDevolucaoItem')
    Left = 720
    Top = 488
    object qrItemAddIdNotaDevolucaoItem: TAutoIncField
      FieldName = 'IdNotaDevolucaoItem'
      ReadOnly = True
    end
    object qrItemAddIdNotaDevolucao: TIntegerField
      FieldName = 'IdNotaDevolucao'
    end
    object qrItemAddMAT_ID: TIntegerField
      FieldName = 'MAT_ID'
    end
    object qrItemAddMARCA_ID: TIntegerField
      FieldName = 'MARCA_ID'
    end
    object qrItemAddQuantidade: TIntegerField
      FieldName = 'Quantidade'
    end
  end
  object dsLotes: TDataSource
    DataSet = qrLotes
    Left = 200
    Top = 488
  end
  object qrExec: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    Left = 136
    Top = 488
  end
  object qrLotesSelecionados: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'IdNotaDevolucaoItem'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM NotaDevolucaoLote'
      'WHERE IdNotaDevolucaoItem = :IdNotaDevolucaoItem')
    Left = 816
    Top = 488
    object qrLotesSelecionadosLote: TStringField
      DisplayWidth = 50
      FieldName = 'Lote'
      Size = 50
    end
    object qrLotesSelecionadosValidade: TDateTimeField
      DisplayWidth = 18
      FieldName = 'Validade'
    end
    object qrLotesSelecionadosQtde: TIntegerField
      DisplayWidth = 10
      FieldName = 'Qtde'
    end
    object qrLotesSelecionadosIdNotaDevolucaoLote: TAutoIncField
      DisplayWidth = 10
      FieldName = 'IdNotaDevolucaoLote'
      ReadOnly = True
      Visible = False
    end
    object qrLotesSelecionadosIdNotaDevolucaoItem: TIntegerField
      DisplayWidth = 10
      FieldName = 'IdNotaDevolucaoItem'
      Visible = False
    end
    object qrLotesSelecionadosMAT_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'MAT_ID'
      Visible = False
    end
    object qrLotesSelecionadosMARCA_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'MARCA_ID'
      Visible = False
    end
    object qrLotesSelecionadosQtdeBaixada: TIntegerField
      DisplayWidth = 10
      FieldName = 'QtdeBaixada'
      Visible = False
    end
    object qrLotesSelecionadosFornecedor: TStringField
      DisplayWidth = 50
      FieldName = 'Fornecedor'
      Visible = False
      Size = 50
    end
  end
  object qrLotes: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    BeforePost = qrLotesBeforePost
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM NotaDevolucaoTemp where 1 = 1')
    Left = 256
    Top = 488
    object qrLotesMAT_DESC: TStringField
      DisplayLabel = 'Material'
      DisplayWidth = 50
      FieldName = 'MAT_DESC'
      Size = 100
    end
    object qrLotesMARCA_DESC: TStringField
      DisplayLabel = 'Marca'
      DisplayWidth = 17
      FieldName = 'MARCA_DESC'
    end
    object qrLotesUNI_SIGLA: TStringField
      DisplayLabel = 'UN'
      DisplayWidth = 2
      FieldName = 'UNI_SIGLA'
      Size = 2
    end
    object qrLotesQTDE: TFloatField
      DisplayLabel = 'Qtde'
      DisplayWidth = 7
      FieldName = 'QTDE'
    end
    object qrLotesDS_LOC: TStringField
      DisplayLabel = 'Local'
      DisplayWidth = 15
      FieldName = 'DS_LOC'
      Size = 50
    end
    object qrLotesN_Lote: TWideStringField
      DisplayLabel = 'Lote'
      DisplayWidth = 20
      FieldName = 'N_Lote'
    end
    object qrLotesValid: TDateTimeField
      DisplayWidth = 10
      FieldName = 'Valid'
    end
    object qrLotesLocalArmazem: TStringField
      DisplayWidth = 20
      FieldName = 'LocalArmazem'
      Size = 255
    end
    object qrLotesQtdeSelecionada: TIntegerField
      DisplayLabel = 'Qtde'
      DisplayWidth = 5
      FieldName = 'QtdeSelecionada'
    end
    object qrLotesId: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
      Visible = False
    end
    object qrLotesIdNotaDevolucao: TIntegerField
      FieldName = 'IdNotaDevolucao'
      Visible = False
    end
    object qrLotesData: TDateTimeField
      FieldName = 'Data'
      Visible = False
    end
    object qrLotesMAT_ID: TIntegerField
      FieldName = 'MAT_ID'
      Visible = False
    end
    object qrLotesGRU_DESC: TStringField
      FieldName = 'GRU_DESC'
      Visible = False
      Size = 40
    end
    object qrLotesGRU_ID: TIntegerField
      FieldName = 'GRU_ID'
      Visible = False
    end
    object qrLotesUNI_ID: TIntegerField
      FieldName = 'UNI_ID'
      Visible = False
    end
    object qrLotesLOCAL_ID: TIntegerField
      FieldName = 'LOCAL_ID'
      Visible = False
    end
    object qrLotesMARCA_ID: TIntegerField
      FieldName = 'MARCA_ID'
      Visible = False
    end
    object qrLotesREPOSICAO: TFloatField
      FieldName = 'REPOSICAO'
      Visible = False
    end
    object qrLotesEAN: TStringField
      FieldName = 'EAN'
      Visible = False
      Size = 50
    end
    object qrLotesFor_Codi: TStringField
      FieldName = 'For_Codi'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object qrLotesDocto: TStringField
      FieldName = 'Docto'
      Visible = False
    end
  end
  object dsLotesSelecionados: TDataSource
    DataSet = qrLotesSelecionados
    Left = 688
    Top = 440
  end
  object qrVerificaEstoque: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'IdNotaDevolucao'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end>
    SQL.Strings = (
      'SELECT '
      #9'L.IdNotaDevolucaoLote, '
      #9'L.MAT_ID, '
      #9'L.MARCA_ID, '
      #9'M.MAT_DESC,  '
      #9'l.Lote, '
      #9'l.Validade, '
      #9'L.Qtde Qtde, '
      #9'ISNULL(sum(E.QTDE), 0) as QtdeEstoque'
      'FROM NotaDevolucaoItem I'
      'INNER JOIN MATERIAIS M ON I.MAT_ID = M.MAT_ID'
      
        'INNER JOIN NotaDevolucaoLote L ON I.IdNotaDevolucaoItem = L.IdNo' +
        'taDevolucaoItem'
      
        'LEFT JOIN (SELECT * FROM vwEstoque WHERE LOCAL_ID = 1 ) E ON L.M' +
        'AT_ID = E.MAT_ID AND L.MARCA_ID = E.MARCA_ID AND L.Lote = E.N_Lo' +
        'te AND CONVERT(DATE, L.Validade) = CONVERT(DATE, E.Valid) AND L.' +
        'Fornecedor = E.For_Codi'
      'WHERE I.IdNotaDevolucao = :IdNotaDevolucao'
      
        'group by L.IdNotaDevolucaoLote, L.MAT_ID, L.MARCA_ID, M.MAT_DESC' +
        ', l.Lote, l.Validade, L.Qtde')
    Left = 464
    Top = 424
    object qrVerificaEstoqueMAT_DESC: TStringField
      DisplayLabel = 'Material'
      DisplayWidth = 95
      FieldName = 'MAT_DESC'
      Size = 100
    end
    object qrVerificaEstoqueLote: TStringField
      DisplayWidth = 20
      FieldName = 'Lote'
      Size = 50
    end
    object qrVerificaEstoqueValidade: TDateTimeField
      DisplayWidth = 10
      FieldName = 'Validade'
    end
    object qrVerificaEstoqueQtde: TIntegerField
      DisplayWidth = 10
      FieldName = 'Qtde'
    end
    object qrVerificaEstoqueQtdeEstoque: TFloatField
      DisplayWidth = 10
      FieldName = 'QtdeEstoque'
      ReadOnly = True
    end
    object qrVerificaEstoqueMAT_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'MAT_ID'
      Visible = False
    end
    object qrVerificaEstoqueMARCA_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'MARCA_ID'
      Visible = False
    end
    object qrVerificaEstoqueIdNotaDevolucaoLote: TAutoIncField
      DisplayWidth = 10
      FieldName = 'IdNotaDevolucaoLote'
      ReadOnly = True
      Visible = False
    end
  end
  object SPAlmox: TADOStoredProc
    Connection = FMenu.ADOConnection
    ProcedureName = 'SP_ATUAL_LOTE;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@N_LOTE'
        Attributes = [paNullable]
        DataType = ftFixedChar
        Size = 20
        Value = Null
      end
      item
        Name = '@QTDE'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@MAT_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@FOR_CODI'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
        Value = Null
      end
      item
        Name = '@MOT_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@TIPO'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = Null
      end
      item
        Name = '@USUARIO'
        Attributes = [paNullable]
        DataType = ftFixedChar
        Size = 50
        Value = Null
      end
      item
        Name = '@MSG'
        Attributes = [paNullable]
        DataType = ftString
        Direction = pdInputOutput
        Size = 400
        Value = Null
      end
      item
        Name = '@TD_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@DOCTO'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@REC_ITEM_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@DATAX'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@MARCA_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@VALID'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@LOCAL_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@OBS'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1000
        Value = Null
      end>
    Left = 648
    Top = 248
  end
end
