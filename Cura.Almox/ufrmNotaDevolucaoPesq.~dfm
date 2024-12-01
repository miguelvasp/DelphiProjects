object frmNotaDevolucaoPesq: TfrmNotaDevolucaoPesq
  Left = 228
  Top = 60
  Width = 1000
  Height = 650
  Caption = 'Notas de Devolução'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 984
    Height = 113
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 64
      Height = 13
      Caption = 'Número NF'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 152
      Top = 8
      Width = 50
      Height = 13
      Caption = 'Data de:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 248
      Top = 8
      Width = 23
      Height = 13
      Caption = 'até:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 344
      Top = 8
      Width = 65
      Height = 13
      Caption = 'Fornecedor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 16
      Top = 56
      Width = 46
      Height = 13
      Caption = 'Material'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtNF: TEdit
      Left = 16
      Top = 24
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object edtDe: TMaskEdit
      Left = 152
      Top = 24
      Width = 81
      Height = 21
      EditMask = '99/99/9999'
      MaxLength = 10
      TabOrder = 1
      Text = '  /  /    '
    end
    object edtAte: TMaskEdit
      Left = 248
      Top = 24
      Width = 81
      Height = 21
      EditMask = '99/99/9999'
      MaxLength = 10
      TabOrder = 2
      Text = '  /  /    '
    end
    object cboFornecedor: TwwDBLookupCombo
      Left = 344
      Top = 24
      Width = 409
      Height = 21
      DropDownAlignment = taLeftJustify
      LookupTable = qrForn
      LookupField = 'FOR_CODI'
      TabOrder = 3
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
    end
    object cboMateriais: TwwDBLookupCombo
      Left = 16
      Top = 72
      Width = 737
      Height = 21
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'MAT_DESC'#9'100'#9'MAT_DESC'#9#9)
      LookupTable = qrMaterial
      LookupField = 'MAT_ID'
      TabOrder = 4
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
    end
    object Button1: TButton
      Left = 875
      Top = 4
      Width = 105
      Height = 25
      Caption = 'Adicionar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 875
      Top = 36
      Width = 105
      Height = 25
      Caption = 'Pesquisar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 875
      Top = 70
      Width = 105
      Height = 25
      Caption = 'Exportar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnClick = Button3Click
    end
    object btnGetMaterial: TBitBtn
      Left = 754
      Top = 69
      Width = 32
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      OnClick = btnGetMaterialClick
      Glyph.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        08000000000040020000E30E0000E30E00000001000000010000212121000018
        290029292900393939005A39390042424200181852005252520073635200315A
        5A005A5A5A0094735A000039630063636300736B63004A6B6B006B6B6B007B73
        6B00735A73007373730073737B007B7B7B0094847B00A5847B00BD9C7B006384
        84008C8C8C009C948C00AD948C0094949400A59C940084849C009C9C9C00B5AD
        9C00CEBD9C00849CA500A5A5A5009494AD00ADADAD00D6BDAD00FFE7AD00B59C
        B500E7CEB500BDBDBD00D6C6BD009CADC600ADC6C600C6C6C600EFD6C600C6C6
        CE00CECECE00FFDECE00D6D6D600F7E7D600DEDEDE00EFE7DE00D6DEE700DEE7
        E700E7E7E700EFE7E700F7EFE700DEE7EF00EFEFEF00F7F7F700FFF7F700FFFF
        F700FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00424242424242
        4242424242424242424242424242424242424242424242424242424242424242
        4242424242424242424242424242424242424242424242424224000A42424242
        42424242424242424242424242424242240210101A4242424242424242424242
        424242424242422002152B241A4242424242424242424242424242424242420A
        0A2B2B1A42424242424242424242424242420D1A1A4242030A1D1A4242424242
        42424242424242424202110B080300241A2042424242424242424242201F1F20
        07223335271B0705201F1F1F241F1F2B42424242010101020E241B1B1B201B03
        010101010101010142424242090A1E07222B1C17182C2A0D060109141A1E0A04
        424242420919370A2A2C2C2C2C2C2A1613201D262F37191242424242091F4313
        22283C3E412A2A152636434343432509424242421F09432B1B28333C352A211A
        4343413F43430F1F4242424223094340241D2A302A211A3E3F3E3E3E40430929
        42424242230C433F3E2F24202020243F3E3E3E3E3E430929424242422E06413E
        3A3A3A3A3E24243E3A3A3A3A3E410629424242422E063F3A3636363A3A24243A
        3A3636363A3F0629424242422E0C2D322F2F2F2F322020322F2F2F2F322F0C2B
        42424242422E24242B2B2B2B2B20202B2B2B2B2B24242B424242424242424242
        2B242424242020242424242B4242424242424242424242424242424242424242
        4242424242424242424242424242424242424242424242424242424242424242
        4242424242424242424242424242424242424242424242424242}
    end
  end
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 113
    Width = 984
    Height = 499
    Selected.Strings = (
      'IdNotaDevolucao'#9'5'#9'Código'#9'F'#9
      'Fornecedor'#9'35'#9'Fornecedor'#9'F'
      'Numero'#9'10'#9'Numero NF'#9#9
      'Data'#9'10'#9'Data'#9'F'#9
      'MAT_DESC'#9'50'#9'Material'#9#9
      'Quantidade'#9'10'#9'Quantidade'#9#9
      'QtdeLote'#9'10'#9'QtdeLote'#9#9
      'QtdeLoteBaixada'#9'10'#9'QtdeLoteBaixada'#9#9)
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = DataSource1
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ReadOnly = True
    TabOrder = 1
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnCalcCellColors = wwDBGrid1CalcCellColors
    OnDblClick = wwDBGrid1DblClick
  end
  object qrForn: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    SQL.Strings = (
      'SELECT'#9#9'FOR_CODI'
      'FROM'#9#9'CPAFORN'
      'WHERE F_ALMOX = '#39'S'#39
      'ORDER BY'#9'FOR_CODI')
    Left = 792
    Top = 368
    object qrFornFOR_CODI: TStringField
      FieldName = 'FOR_CODI'
      FixedChar = True
      Size = 15
    end
  end
  object qrMaterial: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    SQL.Strings = (
      
        'SELECT MAT_ID, CodigoMaterial + '#39' '#39' + MAT_DESC AS MAT_DESC FROM ' +
        'MATERIAIS'
      'WHERE (GENERICO <> '#39'S'#39' OR GENERICO IS NULL)'
      'AND MAT_ATIVO = '#39'S'#39
      'ORDER BY MAT_DESC')
    Left = 488
    Top = 288
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
  object qrBusca: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      
        'N.IdNotaDevolucao, n.Fornecedor, n.Data, n.Numero,M.MAT_DESC, MR' +
        '.MARCA_DESC, I.Quantidade, SUM(L.Qtde) AS QtdeLote, SUM(l.QtdeBa' +
        'ixada) as QtdeLoteBaixada'
      'FROM NotaDevolucao N'
      
        'LEFT JOIN NotaDevolucaoItem I ON N.IdNotaDevolucao = I.IdNotaDev' +
        'olucao'
      'LEFT JOIN MATERIAIS M ON I.MAT_ID = M.MAT_ID'
      'LEFT JOIN MARCAS MR ON I.MARCA_ID = MR.MARCA_ID'
      
        'LEFT JOIN NotaDevolucaoLote L ON I.IdNotaDevolucaoItem = L.IdNot' +
        'aDevolucaoItem'
      ''
      
        'GROUP BY N.IdNotaDevolucao, n.Fornecedor, n.Data, n.Numero,M.MAT' +
        '_DESC, MR.MARCA_DESC, I.Quantidade')
    Left = 312
    Top = 280
    object qrBuscaIdNotaDevolucao: TAutoIncField
      DisplayLabel = 'Código'
      DisplayWidth = 5
      FieldName = 'IdNotaDevolucao'
      ReadOnly = True
    end
    object qrBuscaFornecedor: TStringField
      DisplayWidth = 35
      FieldName = 'Fornecedor'
      Size = 50
    end
    object qrBuscaNumero: TStringField
      DisplayLabel = 'Numero NF'
      DisplayWidth = 10
      FieldName = 'Numero'
      Size = 50
    end
    object qrBuscaData: TDateTimeField
      DisplayWidth = 10
      FieldName = 'Data'
      DisplayFormat = 'dd/MM/yyyy'
    end
    object qrBuscaMAT_DESC: TStringField
      DisplayLabel = 'Material'
      DisplayWidth = 50
      FieldName = 'MAT_DESC'
      Size = 100
    end
    object qrBuscaQuantidade: TIntegerField
      DisplayWidth = 10
      FieldName = 'Quantidade'
    end
    object qrBuscaQtdeLote: TIntegerField
      DisplayWidth = 10
      FieldName = 'QtdeLote'
      ReadOnly = True
    end
    object qrBuscaQtdeLoteBaixada: TIntegerField
      DisplayWidth = 10
      FieldName = 'QtdeLoteBaixada'
      ReadOnly = True
    end
    object qrBuscaMARCA_DESC: TStringField
      DisplayWidth = 20
      FieldName = 'MARCA_DESC'
      Visible = False
    end
  end
  object DataSource1: TDataSource
    DataSet = qrBusca
    Left = 416
    Top = 216
  end
  object qrExcel: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    SQL.Strings = (
      
        'SELECT N.Data, N.Numero, N.Fornecedor, M.MAT_DESC Material, MR.M' +
        'ARCA_DESC Marca, L.Lote, L.Validade, L.Qtde, L.QtdeBaixada '
      'FROM NotaDevolucao N'
      
        'INNER JOIN NotaDevolucaoItem I ON N.IdNotaDevolucao = I.IdNotaDe' +
        'volucao'
      'INNER JOIN MATERIAIS M ON I.MAT_ID = M.MAT_ID'
      'INNER JOIN MARCAS MR ON I.MARCA_ID = MR.MARCA_ID'
      
        'LEFT JOIN NotaDevolucaoLote L ON I.IdNotaDevolucaoItem = L.IdNot' +
        'aDevolucaoItem')
    Left = 168
    Top = 224
    object qrExcelData: TDateTimeField
      FieldName = 'Data'
    end
    object qrExcelNumero: TStringField
      FieldName = 'Numero'
      Size = 50
    end
    object qrExcelFornecedor: TStringField
      FieldName = 'Fornecedor'
      Size = 50
    end
    object qrExcelMaterial: TStringField
      FieldName = 'Material'
      Size = 100
    end
    object qrExcelMarca: TStringField
      FieldName = 'Marca'
    end
    object qrExcelLote: TStringField
      FieldName = 'Lote'
      Size = 50
    end
    object qrExcelValidade: TDateTimeField
      FieldName = 'Validade'
    end
    object qrExcelQtde: TIntegerField
      FieldName = 'Qtde'
    end
    object qrExcelQtdeBaixada: TIntegerField
      FieldName = 'QtdeBaixada'
    end
  end
  object dsExcel: TDataSource
    DataSet = qrExcel
    Left = 488
    Top = 440
  end
end
