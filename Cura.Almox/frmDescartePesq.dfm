object FDescartePesq: TFDescartePesq
  Left = 259
  Top = 151
  BorderStyle = bsDialog
  Caption = 'Descarte de Materiais'
  ClientHeight = 558
  ClientWidth = 916
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Comic Sans MS'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 17
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 916
    Height = 129
    Align = alTop
    Color = clWhite
    TabOrder = 0
    object Label10: TLabel
      Left = 16
      Top = 10
      Width = 48
      Height = 16
      Caption = 'Data de'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 120
      Top = 10
      Width = 22
      Height = 16
      Caption = 'Até'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 208
      Top = 10
      Width = 50
      Height = 16
      Caption = 'Material'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label14: TLabel
      Left = 16
      Top = 70
      Width = 29
      Height = 16
      Caption = 'Local'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 360
      Top = 69
      Width = 93
      Height = 16
      Caption = 'Centro de Custo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object MaskEdit1: TMaskEdit
      Left = 16
      Top = 28
      Width = 81
      Height = 25
      EditMask = '99/99/9999'
      MaxLength = 10
      TabOrder = 0
      Text = '  /  /    '
    end
    object MaskEdit2: TMaskEdit
      Left = 120
      Top = 28
      Width = 81
      Height = 25
      EditMask = '99/99/9999'
      MaxLength = 10
      TabOrder = 1
      Text = '  /  /    '
    end
    object cboMatPesq: TwwDBLookupCombo
      Left = 208
      Top = 26
      Width = 489
      Height = 25
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'MAT_DESC'#9'60'#9'MAT_DESC'#9'F')
      LookupTable = qrMaterial
      LookupField = 'MAT_ID'
      TabOrder = 2
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
    end
    object cboLocal: TwwDBLookupCombo
      Left = 16
      Top = 86
      Width = 337
      Height = 25
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'Descricao'#9'50'#9'Descricao'#9'F')
      LookupTable = qrLocal
      LookupField = 'Local_ID'
      TabOrder = 3
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
    end
    object btnBuscar: TButton
      Left = 781
      Top = 98
      Width = 124
      Height = 25
      Caption = 'Buscar'
      TabOrder = 4
      OnClick = btnBuscarClick
    end
    object btnVisualizar: TButton
      Left = 781
      Top = 24
      Width = 124
      Height = 25
      Caption = 'Visualizar'
      TabOrder = 5
      OnClick = btnVisualizarClick
    end
    object cboCCPesq: TwwDBLookupCombo
      Left = 360
      Top = 85
      Width = 337
      Height = 25
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'CC_Desc'#9'40'#9'CC_Desc'#9'F')
      LookupTable = qrCCPesq
      LookupField = 'CC_ID'
      TabOrder = 6
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
    end
    object Button1: TButton
      Left = 781
      Top = 0
      Width = 124
      Height = 25
      Caption = 'Novo'
      TabOrder = 7
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 781
      Top = 49
      Width = 124
      Height = 25
      Caption = 'Imprimir'
      TabOrder = 8
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 781
      Top = 74
      Width = 124
      Height = 25
      Caption = 'Exportar Excel'
      TabOrder = 9
      OnClick = Button3Click
    end
    object btnGetMaterial: TBitBtn
      Left = 698
      Top = 23
      Width = 32
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
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
    Top = 129
    Width = 916
    Height = 429
    Selected.Strings = (
      'Id'#9'7'#9'Código'
      'Data'#9'10'#9'Data'
      'CentroCusto'#9'20'#9'CentroCusto'
      'Local'#9'20'#9'Local'
      'MATERIAL'#9'59'#9'Material'
      'Quantidade'#9'5'#9'Qtde')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = dsExcel
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Comic Sans MS'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnDblClick = wwDBGrid1DblClick
  end
  object qrBusca: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      #9'D.Id, D.Data, C.CC_Desc AS CentroCusto, L.Descricao as Local,'
      
        #9'M.MAT_DESC AS MATERIAL, I.Quantidade, I.Reposicao, I.Quantidade' +
        ' * I.Reposicao as Total'
      'FROM DescarteMateriais D'
      'INNER JOIN DescarteMateriaisItem I ON D.Id = I.IdDescarte'
      'INNER JOIN Local L ON D.LocalID = L.Local_ID'
      'INNER JOIN CENTRO_CUSTO C ON D.CC_ID = C.CC_ID'
      'INNER JOIN MATERIAIS M ON I.MAT_ID = M.MAT_ID')
    Left = 440
    Top = 256
    object qrBuscaId: TAutoIncField
      DisplayLabel = 'Código'
      DisplayWidth = 7
      FieldName = 'Id'
      ReadOnly = True
    end
    object qrBuscaData: TDateTimeField
      DisplayWidth = 10
      FieldName = 'Data'
      DisplayFormat = 'dd/MM/yyyy'
    end
    object qrBuscaCentroCusto: TStringField
      DisplayWidth = 20
      FieldName = 'CentroCusto'
      Size = 40
    end
    object qrBuscaLocal: TStringField
      DisplayWidth = 20
      FieldName = 'Local'
      Size = 50
    end
    object qrBuscaMATERIAL: TStringField
      DisplayLabel = 'Material'
      DisplayWidth = 59
      FieldName = 'MATERIAL'
      Size = 100
    end
    object qrBuscaQuantidade: TIntegerField
      DisplayLabel = 'Qtde'
      DisplayWidth = 5
      FieldName = 'Quantidade'
    end
    object qrBuscaReposicao: TBCDField
      DisplayWidth = 19
      FieldName = 'Reposicao'
      Visible = False
      Precision = 18
      Size = 2
    end
    object qrBuscaTotal: TBCDField
      DisplayWidth = 30
      FieldName = 'Total'
      ReadOnly = True
      Visible = False
      Precision = 29
      Size = 2
    end
  end
  object qrMaterial: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select MAT_ID, CodigoMaterial + '#39' '#39' + MAT_DESC AS MAT_DESC, U.UN' +
        'I_SIGLA'
      'from MATERIAIS M inner join UNIDADES U'
      'ON M.UNI_ID = U.UNI_ID'
      
        'where case when MAT_ATIVO IS null then '#39'N'#39' else MAT_ATIVO end = ' +
        #39'S'#39
      'AND CASE WHEN GENERICO IS NULL THEN '#39'N'#39' ELSE GENERICO END = '#39'N'#39
      'AND ISNULL(CONTROLA_GRUPO, '#39'N'#39' ) = ISNULL('#39':CONTROLA'#39', '#39'N'#39')'
      'order by mat_Desc')
    Left = 361
    Top = 351
    object qrMaterialMAT_DESC: TStringField
      DisplayWidth = 60
      FieldName = 'MAT_DESC'
      Size = 60
    end
    object qrMaterialMAT_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'MAT_ID'
      ReadOnly = True
      Visible = False
    end
    object qrMaterialUNI_SIGLA: TStringField
      FieldName = 'UNI_SIGLA'
      Size = 2
    end
  end
  object qrCCPesq: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM CENTRO_CUSTO'
      'ORDER BY CC_Desc')
    Left = 417
    Top = 327
    object qrCCPesqCC_Desc: TStringField
      DisplayWidth = 40
      FieldName = 'CC_Desc'
      Size = 40
    end
    object qrCCPesqCC_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'CC_ID'
      ReadOnly = True
      Visible = False
    end
  end
  object qrLocal: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT Local_ID, Descricao FROM Local'
      'ORDER BY Descricao')
    Left = 232
    Top = 448
    object qrLocalDescricao: TStringField
      DisplayWidth = 50
      FieldName = 'Descricao'
      Size = 50
    end
    object qrLocalLocal_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'Local_ID'
      ReadOnly = True
      Visible = False
    end
  end
  object dsExcel: TDataSource
    DataSet = qrBusca
    Left = 296
    Top = 272
  end
end
