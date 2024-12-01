object frmImprimeEtiquetas: TfrmImprimeEtiquetas
  Left = 296
  Top = 233
  BorderStyle = bsDialog
  Caption = 'Impressão de Etiquetas'
  ClientHeight = 567
  ClientWidth = 1026
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
  object lbREC_ID: TLabel
    Left = 840
    Top = 8
    Width = 7
    Height = 14
    Caption = '0'
    Visible = False
  end
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 63
    Height = 14
    Caption = 'Dt. Entrada'
  end
  object Label2: TLabel
    Left = 144
    Top = 8
    Width = 20
    Height = 14
    Caption = 'Até'
  end
  object Label3: TLabel
    Left = 280
    Top = 8
    Width = 57
    Height = 14
    Caption = 'Nota Fiscal'
  end
  object Label4: TLabel
    Left = 16
    Top = 58
    Width = 62
    Height = 14
    Caption = 'Fornecedor'
  end
  object Label5: TLabel
    Left = 16
    Top = 112
    Width = 41
    Height = 14
    Caption = 'Material'
  end
  object Label6: TLabel
    Left = 384
    Top = 8
    Width = 25
    Height = 14
    Caption = 'Lote'
  end
  object wwDBLookupCombo1: TwwDBLookupCombo
    Left = 16
    Top = 76
    Width = 481
    Height = 22
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'FOR_CODI'#9'15'#9'FOR_CODI'#9'F')
    LookupTable = qrForn
    LookupField = 'FOR_CODI'
    TabOrder = 0
    AutoDropDown = True
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
  end
  object wwDBLookupCombo2: TwwDBLookupCombo
    Left = 16
    Top = 128
    Width = 483
    Height = 22
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'MAT_DESC'#9'60'#9'MAT_DESC'#9'F')
    LookupTable = qrMateriais
    LookupField = 'MAT_ID'
    TabOrder = 1
    AutoDropDown = True
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
  end
  object MaskEdit1: TMaskEdit
    Left = 16
    Top = 24
    Width = 121
    Height = 22
    EditMask = '99/99/9999'
    MaxLength = 10
    TabOrder = 2
    Text = '  /  /    '
  end
  object MaskEdit2: TMaskEdit
    Left = 144
    Top = 24
    Width = 121
    Height = 22
    EditMask = '99/99/9999'
    MaxLength = 10
    TabOrder = 3
    Text = '  /  /    '
  end
  object Edit1: TEdit
    Left = 280
    Top = 24
    Width = 97
    Height = 22
    TabOrder = 4
  end
  object wwDBGrid1: TwwDBGrid
    Left = 16
    Top = 163
    Width = 1001
    Height = 358
    Selected.Strings = (
      'MATERIAL'#9'40'#9'Material'#9'F'
      'MARCA'#9'20'#9'Marca'#9'F'
      'FOR_CODI'#9'10'#9'Fornecedor'#9'F'
      'N_LOTE'#9'15'#9'Lote'#9'F'
      'VALIDADE'#9'12'#9'Validade'#9'F'
      'REC_NF'#9'10'#9'NF'#9'F'
      'REC_DATA'#9'12'#9'Dt. Entrada'#9'F'
      'IMPRESSAO'#9'1'#9'Já foi impresso'#9'F'
      'QTDE'#9'8'#9'Qtde'#9'F'
      'QTDE_SEL'#9'10'#9'Imprimir'#9'F')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 9
    ShowHorzScrollBar = True
    DataSource = DataSource1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
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
  object Button1: TButton
    Left = 573
    Top = 126
    Width = 106
    Height = 25
    Caption = 'Buscar'
    TabOrder = 6
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 872
    Top = 536
    Width = 145
    Height = 25
    Caption = 'Imprimir Etiquetas'
    TabOrder = 7
    OnClick = Button2Click
  end
  object edtLote: TEdit
    Left = 384
    Top = 24
    Width = 113
    Height = 22
    TabOrder = 8
  end
  object Button3: TButton
    Left = 736
    Top = 536
    Width = 129
    Height = 25
    Caption = 'Alterar informações'
    TabOrder = 9
    OnClick = Button3Click
  end
  object Panel1: TPanel
    Left = 16
    Top = 159
    Width = 1017
    Height = 365
    TabOrder = 10
    Visible = False
    object Label7: TLabel
      Left = 32
      Top = 16
      Width = 41
      Height = 14
      Caption = 'Material'
      FocusControl = DBLookupComboBox1
    end
    object Label8: TLabel
      Left = 344
      Top = 16
      Width = 31
      Height = 14
      Caption = 'Marca'
      FocusControl = DBLookupComboBox2
    end
    object Label9: TLabel
      Left = 512
      Top = 16
      Width = 62
      Height = 14
      Caption = 'Fornecedor'
      FocusControl = DBEdit1
    end
    object Label10: TLabel
      Left = 696
      Top = 15
      Width = 14
      Height = 14
      Caption = 'NF'
      FocusControl = DBEdit2
    end
    object Label11: TLabel
      Left = 32
      Top = 72
      Width = 25
      Height = 14
      Caption = 'Lote'
      FocusControl = DBEdit3
    end
    object Label12: TLabel
      Left = 152
      Top = 72
      Width = 45
      Height = 14
      Caption = 'Validade'
      FocusControl = DBEdit4
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 32
      Top = 32
      Width = 294
      Height = 22
      DataField = 'MATERIAL'
      DataSource = DataSource1
      Enabled = False
      TabOrder = 0
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 344
      Top = 32
      Width = 154
      Height = 22
      DataField = 'MARCA'
      DataSource = DataSource1
      Enabled = False
      TabOrder = 1
    end
    object DBEdit1: TDBEdit
      Left = 512
      Top = 32
      Width = 169
      Height = 22
      DataField = 'FOR_CODI'
      DataSource = DataSource1
      Enabled = False
      TabOrder = 2
    end
    object DBEdit2: TDBEdit
      Left = 696
      Top = 31
      Width = 74
      Height = 22
      DataField = 'REC_NF'
      DataSource = DataSource1
      Enabled = False
      TabOrder = 3
    end
    object DBEdit3: TDBEdit
      Left = 32
      Top = 88
      Width = 109
      Height = 22
      DataField = 'N_LOTE'
      DataSource = DataSource1
      TabOrder = 4
    end
    object DBEdit4: TDBEdit
      Left = 152
      Top = 88
      Width = 88
      Height = 22
      DataField = 'VALIDADE'
      DataSource = DataSource1
      TabOrder = 5
    end
    object Button4: TButton
      Left = 9
      Top = 333
      Width = 75
      Height = 25
      Caption = 'Salvar'
      TabOrder = 6
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 91
      Top = 333
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 7
      OnClick = Button5Click
    end
  end
  object btnGetMaterial: TBitBtn
    Left = 500
    Top = 123
    Width = 32
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
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
  object qrForn: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT FOR_CODI,FOR_RAZA FROM CPAFORN'
      'WHERE F_ALMOX = '#39'S'#39
      'ORDER BY FOR_RAZA')
    Left = 872
    Top = 80
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
  object qrMateriais: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT MAT_ID, MAT_DESC FROM MATERIAIS'
      'WHERE GENERICO NOT IN ('#39'S'#39')'
      'AND MAT_ATIVO = '#39'S'#39
      'ORDER BY MAT_DESC')
    Left = 312
    Top = 104
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
  object qrBusca: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM CODIGO_BARRAS')
    Left = 840
    Top = 216
    object qrBuscaMATERIAL: TStringField
      DisplayLabel = 'Material'
      DisplayWidth = 40
      FieldKind = fkLookup
      FieldName = 'MATERIAL'
      LookupDataSet = qrMatLookup
      LookupKeyFields = 'MAT_ID'
      LookupResultField = 'MAT_DESC'
      KeyFields = 'MAT_ID'
      Size = 60
      Lookup = True
    end
    object qrBuscaMARCA: TStringField
      DisplayLabel = 'Marca'
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = 'MARCA'
      LookupDataSet = qrMarca
      LookupKeyFields = 'MARCA_ID'
      LookupResultField = 'MARCA_DESC'
      KeyFields = 'MARCA_ID'
      Size = 60
      Lookup = True
    end
    object qrBuscaFOR_CODI: TStringField
      DisplayLabel = 'Fornecedor'
      DisplayWidth = 10
      FieldName = 'FOR_CODI'
      Size = 15
    end
    object qrBuscaN_LOTE: TStringField
      DisplayLabel = 'Lote'
      DisplayWidth = 15
      FieldName = 'N_LOTE'
    end
    object qrBuscaVALIDADE: TDateTimeField
      DisplayLabel = 'Validade'
      DisplayWidth = 12
      FieldName = 'VALIDADE'
      EditMask = '99/99/9999'
    end
    object qrBuscaREC_NF: TStringField
      DisplayLabel = 'NF'
      DisplayWidth = 10
      FieldName = 'REC_NF'
      Size = 10
    end
    object qrBuscaREC_DATA: TDateTimeField
      DisplayLabel = 'Dt. Entrada'
      DisplayWidth = 12
      FieldName = 'REC_DATA'
    end
    object qrBuscaIMPRESSAO: TStringField
      DisplayLabel = 'Já foi impresso'
      DisplayWidth = 1
      FieldName = 'IMPRESSAO'
      Size = 1
    end
    object qrBuscaQTDE: TIntegerField
      DisplayLabel = 'Qtde'
      DisplayWidth = 8
      FieldName = 'QTDE'
    end
    object qrBuscaQTDE_SEL: TIntegerField
      DisplayLabel = 'Imprimir'
      DisplayWidth = 10
      FieldName = 'QTDE_SEL'
    end
    object qrBuscaMARCA_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'MARCA_ID'
      Visible = False
    end
    object qrBuscaID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'ID'
      ReadOnly = True
      Visible = False
    end
    object qrBuscaMAT_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'MAT_ID'
      Visible = False
    end
    object qrBuscaREC_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'REC_ID'
      Visible = False
    end
  end
  object DataSource1: TDataSource
    DataSet = qrBusca
    Left = 664
    Top = 64
  end
  object qrMatLookup: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT MAT_ID, MAT_DESC FROM MATERIAIS'
      'ORDER BY MAT_DESC')
    Left = 872
    Top = 32
    object qrMatLookupMAT_ID: TAutoIncField
      FieldName = 'MAT_ID'
      ReadOnly = True
    end
    object qrMatLookupMAT_DESC: TStringField
      FieldName = 'MAT_DESC'
      Size = 60
    end
  end
  object qrMarca: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT MARCA_ID, MARCA_DESC FROM MARCAS'
      'ORDER BY MARCA_DESC')
    Left = 800
    Top = 32
    object qrMarcaMARCA_ID: TAutoIncField
      FieldName = 'MARCA_ID'
      ReadOnly = True
    end
    object qrMarcaMARCA_DESC: TStringField
      FieldName = 'MARCA_DESC'
    end
  end
  object qrParametros: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM PARAMETROS')
    Left = 704
    Top = 113
    object qrParametrosParam_ID: TAutoIncField
      FieldName = 'Param_ID'
      ReadOnly = True
    end
    object qrParametrosPIS: TFloatField
      FieldName = 'PIS'
    end
    object qrParametrosCofins: TFloatField
      FieldName = 'Cofins'
    end
    object qrParametrosNum_Inv: TIntegerField
      FieldName = 'Num_Inv'
    end
    object qrParametrosUsu_Inv: TStringField
      FieldName = 'Usu_Inv'
      FixedChar = True
      Size = 25
    end
    object qrParametrosFor_Codi_Inv: TStringField
      FieldName = 'For_Codi_Inv'
      FixedChar = True
      Size = 15
    end
    object qrParametrosFoto: TBlobField
      FieldName = 'Foto'
      BlobType = ftBlob
    end
    object qrParametrosEmp_Nome: TStringField
      FieldName = 'Emp_Nome'
      Size = 50
    end
    object qrParametrosParam_end: TStringField
      FieldName = 'Param_end'
      Size = 50
    end
    object qrParametrosParam_bairro: TStringField
      FieldName = 'Param_bairro'
      Size = 30
    end
    object qrParametrosParam_cep: TStringField
      FieldName = 'Param_cep'
      Size = 10
    end
    object qrParametrosParam_cidade: TStringField
      FieldName = 'Param_cidade'
      Size = 30
    end
    object qrParametrosParam_uf: TStringField
      FieldName = 'Param_uf'
      Size = 2
    end
    object qrParametrosParam_tel: TStringField
      FieldName = 'Param_tel'
      Size = 30
    end
    object qrParametrosParam_site: TStringField
      FieldName = 'Param_site'
      Size = 30
    end
    object qrParametrosVersao: TFloatField
      FieldName = 'Versao'
    end
    object qrParametrosZEBRA: TStringField
      FieldName = 'ZEBRA'
      Size = 150
    end
  end
end
