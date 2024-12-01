object frmAcompanhaCompras: TfrmAcompanhaCompras
  Left = 238
  Top = 109
  Width = 1217
  Height = 554
  Caption = 'Analítico de compras'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1201
    Height = 217
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 56
      Height = 14
      Caption = 'Solicitante'
    end
    object Label2: TLabel
      Left = 176
      Top = 8
      Width = 120
      Height = 14
      Caption = 'Data da Solicitação de'
    end
    object Label3: TLabel
      Left = 320
      Top = 8
      Width = 20
      Height = 14
      Caption = 'Até'
    end
    object Label4: TLabel
      Left = 464
      Top = 8
      Width = 74
      Height = 14
      Caption = 'N° Solicitação'
    end
    object Label5: TLabel
      Left = 8
      Top = 56
      Width = 34
      Height = 14
      Caption = 'N° OC'
    end
    object Label6: TLabel
      Left = 176
      Top = 56
      Width = 63
      Height = 14
      Caption = 'Data OC de'
    end
    object Label7: TLabel
      Left = 320
      Top = 56
      Width = 20
      Height = 14
      Caption = 'Até'
    end
    object Label8: TLabel
      Left = 8
      Top = 94
      Width = 41
      Height = 14
      Caption = 'Material'
    end
    object Label9: TLabel
      Left = 8
      Top = 136
      Width = 62
      Height = 14
      Caption = 'Fornecedor'
    end
    object cboSolicitante: TwwDBLookupCombo
      Left = 8
      Top = 24
      Width = 145
      Height = 22
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'Nome'#9'40'#9'Nome'#9'F')
      LookupTable = qrUsuarios
      LookupField = 'CH'
      TabOrder = 0
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
    end
    object edtDtSolIni: TMaskEdit
      Left = 176
      Top = 24
      Width = 121
      Height = 22
      EditMask = '99/99/9999'
      MaxLength = 10
      TabOrder = 1
      Text = '  /  /    '
    end
    object edtSolFim: TMaskEdit
      Left = 320
      Top = 24
      Width = 121
      Height = 22
      EditMask = '99/99/9999'
      MaxLength = 10
      TabOrder = 2
      Text = '  /  /    '
    end
    object EdtSol: TEdit
      Left = 464
      Top = 24
      Width = 121
      Height = 22
      TabOrder = 3
    end
    object edtOC: TEdit
      Left = 8
      Top = 72
      Width = 145
      Height = 22
      TabOrder = 4
    end
    object edtOCDTINI: TMaskEdit
      Left = 176
      Top = 72
      Width = 121
      Height = 22
      EditMask = '99/99/9999'
      MaxLength = 10
      TabOrder = 5
      Text = '  /  /    '
    end
    object edtOCDTFIM: TMaskEdit
      Left = 320
      Top = 72
      Width = 121
      Height = 22
      EditMask = '99/99/9999'
      MaxLength = 10
      TabOrder = 6
      Text = '  /  /    '
    end
    object cboMaterial: TwwDBLookupCombo
      Left = 8
      Top = 110
      Width = 545
      Height = 22
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'MAT_DESC'#9'60'#9'MAT_DESC'#9'F')
      LookupTable = qrMateriais
      LookupField = 'MAT_ID'
      TabOrder = 7
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
    end
    object cboFornecedor: TwwDBLookupCombo
      Left = 8
      Top = 152
      Width = 577
      Height = 22
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'FOR_CODI'#9'15'#9'FOR_CODI'#9'F')
      LookupTable = qrForn
      LookupField = 'FOR_CODI'
      TabOrder = 8
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
    end
    object Button1: TButton
      Left = 608
      Top = 8
      Width = 169
      Height = 25
      Caption = 'Pesquisar'
      TabOrder = 9
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 608
      Top = 32
      Width = 169
      Height = 25
      Caption = 'Relatório'
      TabOrder = 10
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 608
      Top = 56
      Width = 169
      Height = 25
      Caption = 'Visualizar OC'
      TabOrder = 11
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 608
      Top = 80
      Width = 169
      Height = 25
      Caption = 'Visualizar Solicitação'
      TabOrder = 12
      OnClick = Button4Click
    end
    object rdOrdem: TRadioGroup
      Left = 608
      Top = 112
      Width = 169
      Height = 97
      Caption = 'Ordenar por'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        'N° Solicitação'
        'Data de Solicitação'
        'Ordem de Compra'
        'Data Ordem de Compra')
      ParentFont = False
      TabOrder = 13
    end
    object rgStatus: TRadioGroup
      Left = 8
      Top = 176
      Width = 577
      Height = 36
      Caption = 'Status'
      Columns = 4
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        'Todas'
        'Em aberto'
        'Atendidas'
        'Atendidas parcialmente')
      ParentFont = False
      TabOrder = 14
    end
    object btnGetMaterial: TBitBtn
      Left = 554
      Top = 106
      Width = 32
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 15
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
    Top = 217
    Width = 1201
    Height = 299
    Selected.Strings = (
      'COLUMN1'#9'9'#9'Solicitante'#9'F'
      'DT_PROGRAMACAO'#9'13'#9'Data Solicitação'#9'F'
      'id'#9'10'#9'N° Sol.'#9'F'
      'MAT_DESC'#9'50'#9'Material'#9'F'
      'QTDE'#9'7'#9'Qtde'#9'F'
      'ORD_ID'#9'10'#9'Ordem Compra'#9'F'
      'DT_CADASTRO'#9'14'#9'Data OC'#9'F'
      'FOR_CODI'#9'15'#9'Fornecedor'#9'F'
      'DT_ENTREGA'#9'14'#9'Data Entrega'#9'F'
      'Qtde_Comp'#9'10'#9'Qtde Comprada'#9'F')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = DataSource1
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
  object qrBusca: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      #9'(SELECT NOME FROM USUARIOALMOX WHERE CH = S.USUARIO )'
      #9',S.DT_PROGRAMACAO'
      #9',S.id'
      #9',M.MAT_DESC'
      #9',I.QTDE'
      #9',O.ORD_ID'
      #9',O.DT_CADASTRO'
      #9',O.FOR_CODI'
      #9',O.DT_ENTREGA'
      #9',OI.Qtde_Comp'
      'FROM SOLICITACAO S INNER JOIN ITEM_SOLICITACAO I'
      'ON S.id = I.SOL_ID LEFT OUTER JOIN TB_COTACAO C'
      'ON I.COT_ID = C.COT_ID LEFT OUTER JOIN ITEM_COTACAO IC'
      'ON C.COT_ID = IC.COT_ID LEFT OUTER JOIN MATERIAIS M'
      'ON I.MAT_ID = M.MAT_ID LEFT OUTER JOIN Ordem_Compra O'
      'ON IC.ORD_ID = O.ORD_ID LEFT OUTER JOIN Ordem_CompraItem OI'
      'ON O.ORD_ID = OI.Ord_ID'
      'WHERE S.id = 1301')
    Left = 440
    Top = 304
    object qrBuscaCOLUMN1: TStringField
      DisplayLabel = 'Solicitante'
      DisplayWidth = 9
      FieldName = 'COLUMN1'
      ReadOnly = True
      Size = 40
    end
    object qrBuscaDT_PROGRAMACAO: TDateTimeField
      DisplayLabel = 'Data Solicitação'
      DisplayWidth = 13
      FieldName = 'DT_PROGRAMACAO'
    end
    object qrBuscaid: TAutoIncField
      DisplayLabel = 'N° Sol.'
      DisplayWidth = 10
      FieldName = 'id'
      ReadOnly = True
    end
    object qrBuscaMAT_DESC: TStringField
      DisplayLabel = 'Material'
      DisplayWidth = 50
      FieldName = 'MAT_DESC'
      Size = 60
    end
    object qrBuscaQTDE: TFloatField
      DisplayLabel = 'Qtde'
      DisplayWidth = 7
      FieldName = 'QTDE'
    end
    object qrBuscaORD_ID: TAutoIncField
      DisplayLabel = 'Ordem Compra'
      DisplayWidth = 10
      FieldName = 'ORD_ID'
      ReadOnly = True
    end
    object qrBuscaDT_CADASTRO: TDateTimeField
      DisplayLabel = 'Data OC'
      DisplayWidth = 14
      FieldName = 'DT_CADASTRO'
      DisplayFormat = 'dd/MM/yyyy'
    end
    object qrBuscaFOR_CODI: TStringField
      DisplayLabel = 'Fornecedor'
      DisplayWidth = 15
      FieldName = 'FOR_CODI'
      FixedChar = True
      Size = 15
    end
    object qrBuscaDT_ENTREGA: TDateTimeField
      DisplayLabel = 'Data Entrega'
      DisplayWidth = 14
      FieldName = 'DT_ENTREGA'
    end
    object qrBuscaQtde_Comp: TFloatField
      DisplayLabel = 'Qtde Comprada'
      DisplayWidth = 10
      FieldName = 'Qtde_Comp'
    end
  end
  object DataSource1: TDataSource
    DataSet = qrBusca
    Left = 280
    Top = 264
  end
  object qrUsuarios: TADOQuery
    Active = True
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      #9'A.CH,'
      #9'A.Nome'
      'FROM UsuarioAlmox A'
      'ORDER BY Nome')
    Left = 480
    Top = 72
  end
  object qrMateriais: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT MAT_ID, CodigoMaterial + '#39' '#39' + MAT_DESC AS MAT_DESC FROM ' +
        'MATERIAIS'
      'WHERE GENERICO NOT IN ('#39'S'#39')'
      'AND MAT_ATIVO = '#39'S'#39
      'ORDER BY MAT_DESC')
    Left = 320
    Top = 328
    object qrMateriaisMAT_DESC: TStringField
      DisplayWidth = 60
      FieldName = 'MAT_DESC'
      Size = 60
    end
    object qrMateriaisMAT_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'MAT_ID'
      ReadOnly = True
      Visible = False
    end
  end
  object qrForn: TADOQuery
    Active = True
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT FOR_CODI,FOR_RAZA FROM CPAFORN'
      'WHERE F_ALMOX = '#39'S'#39
      'ORDER BY FOR_RAZA')
    Left = 160
    Top = 376
    object qrFornFOR_CODI: TStringField
      DisplayWidth = 15
      FieldName = 'FOR_CODI'
      FixedChar = True
      Size = 15
    end
    object qrFornFOR_RAZA: TStringField
      DisplayWidth = 50
      FieldName = 'FOR_RAZA'
      Visible = False
      FixedChar = True
      Size = 50
    end
  end
end
