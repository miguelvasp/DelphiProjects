object frmNFe: TfrmNFe
  Left = 338
  Top = 119
  Width = 1038
  Height = 697
  Caption = 'NF-e Detalhe'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 1022
    Height = 86
    Align = alTop
    Caption = 'Dados do Fornecedor'
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 28
      Height = 16
      Caption = 'CNPJ'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 216
      Top = 15
      Width = 73
      Height = 16
      Caption = 'Razão Social'
      FocusControl = DBEdit2
    end
    object lbStatus: TLabel
      Left = 8
      Top = 56
      Width = 113
      Height = 23
      Caption = 'Fornecedor '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 8
      Top = 32
      Width = 193
      Height = 24
      DataField = 'emi_CNPJ'
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 216
      Top = 31
      Width = 721
      Height = 24
      DataField = 'emi_xNome'
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 618
    Width = 1022
    Height = 41
    Align = alBottom
    TabOrder = 1
    object btnProcesar: TButton
      Left = 8
      Top = 8
      Width = 201
      Height = 25
      Caption = 'Fechar'
      TabOrder = 0
      OnClick = btnProcesarClick
    end
    object Panel5: TPanel
      Left = 240
      Top = 8
      Width = 545
      Height = 30
      Caption = 'MATERIAL NÃO ENCONTRADO NA ORDEM DE COMPRA'
      Color = clRed
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 86
    Width = 1022
    Height = 91
    Align = alTop
    TabOrder = 2
    object Label3: TLabel
      Left = 24
      Top = 29
      Width = 116
      Height = 16
      Caption = 'Selecione o Material'
    end
    object Label4: TLabel
      Left = 35
      Top = 58
      Width = 105
      Height = 16
      Caption = 'Selecione a Marca'
    end
    object cboMaterial: TwwDBLookupCombo
      Left = 146
      Top = 26
      Width = 639
      Height = 24
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'MAT_DESC'#9'100'#9'Material'#9'F'
        'EAN'#9'50'#9'EAN'#9#9)
      LookupTable = qrMat
      LookupField = 'MAT_ID'
      Options = [loColLines, loRowLines, loTitles]
      TabOrder = 0
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnCloseUp = cboMaterialCloseUp
    end
    object cboMarca: TwwDBLookupCombo
      Left = 146
      Top = 53
      Width = 639
      Height = 24
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'MARCA_DESC'#9'20'#9'MARCA_DESC'#9#9)
      LookupTable = qrMarca
      LookupField = 'MARCA_ID'
      TabOrder = 1
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 1020
      Height = 22
      Align = alTop
      Caption = 
        'IMPORTANTE: Ao vincular o item da NF-e a um material o campo EAN' +
        ' será automaticamente preenchido no cadastro de materiais'
      Color = clNavy
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object Button2: TButton
      Left = 840
      Top = 47
      Width = 121
      Height = 25
      Caption = 'Vincular'
      TabOrder = 3
      OnClick = Button2Click
    end
    object btnGetMaterial: TBitBtn
      Left = 786
      Top = 24
      Width = 32
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
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
    Top = 177
    Width = 1022
    Height = 205
    Selected.Strings = (
      'cProd'#9'15'#9'cProd'
      'cEAN'#9'15'#9'cEAN'
      'xProd'#9'50'#9'xProd'
      'uCom'#9'3'#9'uCom'
      'qCom'#9'10'#9'qCom'
      'vUnCom'#9'12'#9'vUnCom'
      'vProd'#9'19'#9'vProd')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alTop
    DataSource = DataSource2
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ReadOnly = True
    TabOrder = 3
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
  end
  object Panel4: TPanel
    Left = 0
    Top = 382
    Width = 1022
    Height = 22
    Align = alTop
    Caption = 'Materiais Vinculados a um cadastro'
    Color = clGreen
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
  end
  object wwDBGrid2: TwwDBGrid
    Left = 0
    Top = 404
    Width = 1022
    Height = 205
    Selected.Strings = (
      'MAT_DESC'#9'80'#9'Material'
      'uCom'#9'3'#9'uCom'
      'qCom'#9'10'#9'qCom'
      'vProd'#9'19'#9'vProd'
      'ORD_ID'#9'10'#9'OC')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alTop
    DataSource = DataSource3
    ReadOnly = True
    TabOrder = 5
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnCalcCellColors = wwDBGrid2CalcCellColors
  end
  object qrNFe: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    AfterOpen = qrNFeAfterOpen
    Parameters = <
      item
        Name = 'IDNFE'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM NFE'
      'WHERE IDNFE = :IDNFE')
    Left = 520
    Top = 264
    object qrNFeIdNFe: TAutoIncField
      FieldName = 'IdNFe'
      ReadOnly = True
    end
    object qrNFeIdEmitente: TIntegerField
      FieldName = 'IdEmitente'
    end
    object qrNFeAmbiente: TIntegerField
      FieldName = 'Ambiente'
    end
    object qrNFecDV: TIntegerField
      FieldName = 'cDV'
    end
    object qrNFeide_cUF: TIntegerField
      FieldName = 'ide_cUF'
    end
    object qrNFeide_natOp: TStringField
      FieldName = 'ide_natOp'
      Size = 255
    end
    object qrNFeide_indPag: TIntegerField
      FieldName = 'ide_indPag'
    end
    object qrNFeide_mode: TIntegerField
      FieldName = 'ide_mode'
    end
    object qrNFeide_serie: TStringField
      FieldName = 'ide_serie'
      Size = 255
    end
    object qrNFeide_nNF: TIntegerField
      FieldName = 'ide_nNF'
    end
    object qrNFeide_dEmi: TDateTimeField
      FieldName = 'ide_dEmi'
    end
    object qrNFeide_dSaiEnt: TDateTimeField
      FieldName = 'ide_dSaiEnt'
    end
    object qrNFeide_tpNF: TIntegerField
      FieldName = 'ide_tpNF'
    end
    object qrNFeide_cMunFG: TIntegerField
      FieldName = 'ide_cMunFG'
    end
    object qrNFeide_tpImp: TIntegerField
      FieldName = 'ide_tpImp'
    end
    object qrNFeide_finNFe: TIntegerField
      FieldName = 'ide_finNFe'
    end
    object qrNFeide_tpEmis: TIntegerField
      FieldName = 'ide_tpEmis'
    end
    object qrNFeide_procEmi: TIntegerField
      FieldName = 'ide_procEmi'
    end
    object qrNFeide_verProc: TStringField
      FieldName = 'ide_verProc'
      Size = 255
    end
    object qrNFeide_NFref: TStringField
      FieldName = 'ide_NFref'
      Size = 255
    end
    object qrNFeide_CondPagDesc: TStringField
      FieldName = 'ide_CondPagDesc'
      Size = 255
    end
    object qrNFeide_indFinal: TIntegerField
      FieldName = 'ide_indFinal'
    end
    object qrNFeide_indPres: TIntegerField
      FieldName = 'ide_indPres'
    end
    object qrNFeide_cNF: TIntegerField
      FieldName = 'ide_cNF'
    end
    object qrNFeemi_CNPJ: TStringField
      FieldName = 'emi_CNPJ'
      Size = 255
    end
    object qrNFeemi_CPF: TStringField
      FieldName = 'emi_CPF'
      Size = 255
    end
    object qrNFeemi_xNome: TStringField
      FieldName = 'emi_xNome'
      Size = 255
    end
    object qrNFeemi_xFant: TStringField
      FieldName = 'emi_xFant'
      Size = 255
    end
    object qrNFeemi_IE: TStringField
      FieldName = 'emi_IE'
      Size = 255
    end
    object qrNFeemi_xLgr: TStringField
      FieldName = 'emi_xLgr'
      Size = 255
    end
    object qrNFeemi_nro: TStringField
      FieldName = 'emi_nro'
      Size = 255
    end
    object qrNFeemi_xCpl: TStringField
      FieldName = 'emi_xCpl'
      Size = 255
    end
    object qrNFeemi_xBairro: TStringField
      FieldName = 'emi_xBairro'
      Size = 255
    end
    object qrNFeemi_cMun: TStringField
      FieldName = 'emi_cMun'
      Size = 255
    end
    object qrNFeemi_xMun: TStringField
      FieldName = 'emi_xMun'
      Size = 255
    end
    object qrNFeemi_UF: TStringField
      FieldName = 'emi_UF'
      Size = 255
    end
    object qrNFeemi_CEP: TStringField
      FieldName = 'emi_CEP'
      Size = 255
    end
    object qrNFeemi_cPais: TStringField
      FieldName = 'emi_cPais'
      Size = 255
    end
    object qrNFeemi_xPais: TStringField
      FieldName = 'emi_xPais'
      Size = 255
    end
    object qrNFeemi_Fone: TStringField
      FieldName = 'emi_Fone'
      Size = 255
    end
    object qrNFeemi_IEST: TStringField
      FieldName = 'emi_IEST'
      Size = 255
    end
    object qrNFeemi_IM: TStringField
      FieldName = 'emi_IM'
      Size = 255
    end
    object qrNFeemi_CNAE: TStringField
      FieldName = 'emi_CNAE'
      Size = 255
    end
    object qrNFeemi_CRT: TStringField
      FieldName = 'emi_CRT'
      Size = 255
    end
    object qrNFeemi_xContato: TStringField
      FieldName = 'emi_xContato'
      Size = 255
    end
    object qrNFeemi_xContatoEmail: TStringField
      FieldName = 'emi_xContatoEmail'
      Size = 255
    end
    object qrNFeemi_idCSRT: TStringField
      FieldName = 'emi_idCSRT'
      Size = 255
    end
    object qrNFeemi_CSRT: TStringField
      FieldName = 'emi_CSRT'
      Size = 255
    end
    object qrNFeemi_chaveNFe: TStringField
      FieldName = 'emi_chaveNFe'
      Size = 255
    end
    object qrNFedest_CNPJ: TStringField
      FieldName = 'dest_CNPJ'
      Size = 255
    end
    object qrNFedest_CPF: TStringField
      FieldName = 'dest_CPF'
      Size = 255
    end
    object qrNFedest_xNome: TStringField
      FieldName = 'dest_xNome'
      Size = 255
    end
    object qrNFedest_xFant: TStringField
      FieldName = 'dest_xFant'
      Size = 255
    end
    object qrNFedest_xlgr: TStringField
      FieldName = 'dest_xlgr'
      Size = 255
    end
    object qrNFedest_nro: TStringField
      FieldName = 'dest_nro'
      Size = 255
    end
    object qrNFedest_xCpl: TStringField
      FieldName = 'dest_xCpl'
      Size = 255
    end
    object qrNFedest_xBairro: TStringField
      FieldName = 'dest_xBairro'
      Size = 255
    end
    object qrNFedest_cMun: TStringField
      FieldName = 'dest_cMun'
      Size = 255
    end
    object qrNFedest_xMun: TStringField
      FieldName = 'dest_xMun'
      Size = 255
    end
    object qrNFedest_UF: TStringField
      FieldName = 'dest_UF'
      Size = 255
    end
    object qrNFedest_CEP: TStringField
      FieldName = 'dest_CEP'
      Size = 255
    end
    object qrNFedest_cPais: TStringField
      FieldName = 'dest_cPais'
      Size = 255
    end
    object qrNFedest_xPais: TStringField
      FieldName = 'dest_xPais'
      Size = 255
    end
    object qrNFedest_fone: TStringField
      FieldName = 'dest_fone'
      Size = 255
    end
    object qrNFedest_IE: TStringField
      FieldName = 'dest_IE'
      Size = 255
    end
    object qrNFedest_IESUF: TStringField
      FieldName = 'dest_IESUF'
      Size = 255
    end
    object qrNFedest_email: TStringField
      FieldName = 'dest_email'
      Size = 255
    end
    object qrNFedest_indIEDest: TStringField
      FieldName = 'dest_indIEDest'
      Size = 255
    end
    object qrNFedest_IdExtrangeiro: TStringField
      FieldName = 'dest_IdExtrangeiro'
      Size = 255
    end
    object qrNFetot_vBC: TBCDField
      FieldName = 'tot_vBC'
      Precision = 18
      Size = 5
    end
    object qrNFetot_vICMS: TBCDField
      FieldName = 'tot_vICMS'
      Precision = 18
      Size = 5
    end
    object qrNFetot_vBCST: TBCDField
      FieldName = 'tot_vBCST'
      Precision = 18
      Size = 5
    end
    object qrNFetot_vST: TBCDField
      FieldName = 'tot_vST'
      Precision = 18
      Size = 5
    end
    object qrNFetot_vProd: TBCDField
      FieldName = 'tot_vProd'
      Precision = 18
      Size = 5
    end
    object qrNFetot_vFrete: TBCDField
      FieldName = 'tot_vFrete'
      Precision = 18
      Size = 5
    end
    object qrNFetot_vSeg: TBCDField
      FieldName = 'tot_vSeg'
      Precision = 18
      Size = 5
    end
    object qrNFetot_vDesc: TBCDField
      FieldName = 'tot_vDesc'
      Precision = 18
      Size = 5
    end
    object qrNFetot_vII: TBCDField
      FieldName = 'tot_vII'
      Precision = 18
      Size = 5
    end
    object qrNFetot_vIPI: TBCDField
      FieldName = 'tot_vIPI'
      Precision = 18
      Size = 5
    end
    object qrNFetot_vPIS: TBCDField
      FieldName = 'tot_vPIS'
      Precision = 18
      Size = 5
    end
    object qrNFetot_vCOFINS: TBCDField
      FieldName = 'tot_vCOFINS'
      Precision = 18
      Size = 5
    end
    object qrNFetot_vOutro: TBCDField
      FieldName = 'tot_vOutro'
      Precision = 18
      Size = 5
    end
    object qrNFetot_vNF: TBCDField
      FieldName = 'tot_vNF'
      Precision = 18
      Size = 5
    end
    object qrNFetot_vTotTrib: TBCDField
      FieldName = 'tot_vTotTrib'
      Precision = 18
      Size = 5
    end
    object qrNFetot_vICMSDeson: TBCDField
      FieldName = 'tot_vICMSDeson'
      Precision = 18
      Size = 5
    end
    object qrNFetot_vICMSUFDest_Opc: TBCDField
      FieldName = 'tot_vICMSUFDest_Opc'
      Precision = 18
      Size = 5
    end
    object qrNFetot_vICMSUFRemet: TBCDField
      FieldName = 'tot_vICMSUFRemet'
      Precision = 18
      Size = 5
    end
    object qrNFetot_vFCPUFDest: TBCDField
      FieldName = 'tot_vFCPUFDest'
      Precision = 18
      Size = 5
    end
    object qrNFetot_vFCP: TBCDField
      FieldName = 'tot_vFCP'
      Precision = 18
      Size = 5
    end
    object qrNFetot_vFCPST: TBCDField
      FieldName = 'tot_vFCPST'
      Precision = 18
      Size = 5
    end
    object qrNFetot_vFCPSTRet: TBCDField
      FieldName = 'tot_vFCPSTRet'
      Precision = 18
      Size = 5
    end
    object qrNFetot_vIPIDevol: TBCDField
      FieldName = 'tot_vIPIDevol'
      Precision = 18
      Size = 5
    end
    object qrNFetra_modFrete: TStringField
      FieldName = 'tra_modFrete'
      Size = 255
    end
    object qrNFetra_CNPJ: TStringField
      FieldName = 'tra_CNPJ'
      Size = 255
    end
    object qrNFetra_CPF: TStringField
      FieldName = 'tra_CPF'
      Size = 255
    end
    object qrNFetra_xNome: TStringField
      FieldName = 'tra_xNome'
      Size = 255
    end
    object qrNFetra_IE: TStringField
      FieldName = 'tra_IE'
      Size = 255
    end
    object qrNFetra_xEnder: TStringField
      FieldName = 'tra_xEnder'
      Size = 255
    end
    object qrNFetra_xMun: TStringField
      FieldName = 'tra_xMun'
      Size = 255
    end
    object qrNFetra_UF: TStringField
      FieldName = 'tra_UF'
      Size = 255
    end
    object qrNFeRecibo: TStringField
      FieldName = 'Recibo'
      Size = 255
    end
    object qrNFeProtocolo: TStringField
      FieldName = 'Protocolo'
      Size = 255
    end
    object qrNFeDtAutorizacao: TDateTimeField
      FieldName = 'DtAutorizacao'
    end
    object qrNFeMsgRetorno: TMemoField
      FieldName = 'MsgRetorno'
      BlobType = ftMemo
    end
    object qrNFeNFeStatus: TStringField
      FieldName = 'NFeStatus'
      Size = 255
    end
    object qrNFeDtCancelamento: TDateTimeField
      FieldName = 'DtCancelamento'
    end
    object qrNFeJustificativa: TMemoField
      FieldName = 'Justificativa'
      BlobType = ftMemo
    end
    object qrNFeChaveAut: TStringField
      FieldName = 'ChaveAut'
      Size = 50
    end
    object qrNFeProtocoloCancelamento: TStringField
      FieldName = 'ProtocoloCancelamento'
      Size = 255
    end
    object qrNFeveic_Placa: TStringField
      FieldName = 'veic_Placa'
      Size = 255
    end
    object qrNFeveic_UF: TStringField
      FieldName = 'veic_UF'
      Size = 255
    end
    object qrNFeveic_RNTC: TStringField
      FieldName = 'veic_RNTC'
      Size = 255
    end
    object qrNFevol_qVol: TBCDField
      FieldName = 'vol_qVol'
      Precision = 18
      Size = 5
    end
    object qrNFevol_esp: TStringField
      FieldName = 'vol_esp'
      Size = 255
    end
    object qrNFevol_Marca: TStringField
      FieldName = 'vol_Marca'
      Size = 255
    end
    object qrNFevol_nVol: TStringField
      FieldName = 'vol_nVol'
      Size = 255
    end
    object qrNFevol_pesoL: TBCDField
      FieldName = 'vol_pesoL'
      Precision = 18
      Size = 5
    end
    object qrNFevol_pesoB: TBCDField
      FieldName = 'vol_pesoB'
      Precision = 18
      Size = 5
    end
    object qrNFevol_lacres: TStringField
      FieldName = 'vol_lacres'
      Size = 255
    end
    object qrNFeinfAdic: TMemoField
      FieldName = 'infAdic'
      BlobType = ftMemo
    end
    object qrNFeIdExterno: TIntegerField
      FieldName = 'IdExterno'
    end
    object qrNFepag_tPag: TStringField
      FieldName = 'pag_tPag'
      Size = 255
    end
    object qrNFepag_vPag: TBCDField
      FieldName = 'pag_vPag'
      Precision = 18
      Size = 5
    end
    object qrNFeCCeTexto: TStringField
      FieldName = 'CCeTexto'
      Size = 1000
    end
    object qrNFeUFSaidaPais: TStringField
      FieldName = 'UFSaidaPais'
      Size = 255
    end
    object qrNFexLocEmbarq: TStringField
      FieldName = 'xLocEmbarq'
      Size = 255
    end
    object qrNFeREC_ID: TIntegerField
      FieldName = 'REC_ID'
    end
    object qrNFeFOR_CODI: TStringField
      FieldName = 'FOR_CODI'
      Size = 50
    end
    object qrNFeINFO_OK: TStringField
      FieldName = 'INFO_OK'
      Size = 50
    end
  end
  object DataSource1: TDataSource
    DataSet = qrNFe
    OnDataChange = DataSource1DataChange
    Left = 640
    Top = 296
  end
  object qrAux: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    Left = 392
    Top = 256
  end
  object qrItens: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'IdNFe'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM NFeProduto'
      'WHERE IdNFe = :IdNFe'
      'AND (MAT_ID IS NULL OR '
      'MARCA_ID IS NULL'
      'AND CONVERSAO IS NULL)')
    Left = 208
    Top = 264
    object qrItenscProd: TStringField
      DisplayWidth = 15
      FieldName = 'cProd'
      Size = 255
    end
    object qrItenscEAN: TStringField
      DisplayWidth = 15
      FieldName = 'cEAN'
      Size = 255
    end
    object qrItensxProd: TStringField
      DisplayWidth = 50
      FieldName = 'xProd'
      Size = 255
    end
    object qrItensuCom: TStringField
      DisplayWidth = 3
      FieldName = 'uCom'
      Size = 50
    end
    object qrItensqCom: TBCDField
      DisplayWidth = 10
      FieldName = 'qCom'
      Precision = 18
      Size = 5
    end
    object qrItensvUnCom: TBCDField
      DisplayWidth = 12
      FieldName = 'vUnCom'
      Precision = 18
      Size = 5
    end
    object qrItensvProd: TBCDField
      DisplayWidth = 19
      FieldName = 'vProd'
      Precision = 18
      Size = 5
    end
    object qrItensNCM: TStringField
      DisplayWidth = 255
      FieldName = 'NCM'
      Visible = False
      Size = 255
    end
    object qrItensCEST: TStringField
      DisplayWidth = 255
      FieldName = 'CEST'
      Visible = False
      Size = 255
    end
    object qrItensCFOP: TStringField
      DisplayWidth = 255
      FieldName = 'CFOP'
      Visible = False
      Size = 255
    end
    object qrItenscEANTrib: TStringField
      DisplayWidth = 255
      FieldName = 'cEANTrib'
      Visible = False
      Size = 255
    end
    object qrItensuTrib: TStringField
      DisplayWidth = 255
      FieldName = 'uTrib'
      Visible = False
      Size = 255
    end
    object qrItensqTrib: TBCDField
      DisplayWidth = 19
      FieldName = 'qTrib'
      Visible = False
      Precision = 18
      Size = 5
    end
    object qrItensvUnTrib: TBCDField
      DisplayWidth = 19
      FieldName = 'vUnTrib'
      Visible = False
      Precision = 18
      Size = 5
    end
    object qrItensvOutro: TBCDField
      DisplayWidth = 19
      FieldName = 'vOutro'
      Visible = False
      Precision = 18
      Size = 5
    end
    object qrItensindTot: TIntegerField
      DisplayWidth = 10
      FieldName = 'indTot'
      Visible = False
    end
    object qrItensxPed: TStringField
      DisplayWidth = 255
      FieldName = 'xPed'
      Visible = False
      Size = 255
    end
    object qrItensICMS_origem: TStringField
      DisplayWidth = 255
      FieldName = 'ICMS_origem'
      Visible = False
      Size = 255
    end
    object qrItensICMS_CST: TStringField
      DisplayWidth = 255
      FieldName = 'ICMS_CST'
      Visible = False
      Size = 255
    end
    object qrItensICMS_modBC: TIntegerField
      DisplayWidth = 10
      FieldName = 'ICMS_modBC'
      Visible = False
    end
    object qrItensICMS_redBC: TBCDField
      DisplayWidth = 19
      FieldName = 'ICMS_redBC'
      Visible = False
      Precision = 18
      Size = 5
    end
    object qrItensICMS_vBC: TBCDField
      DisplayWidth = 19
      FieldName = 'ICMS_vBC'
      Visible = False
      Precision = 18
      Size = 5
    end
    object qrItensICMS_pICMS: TBCDField
      DisplayWidth = 19
      FieldName = 'ICMS_pICMS'
      Visible = False
      Precision = 18
      Size = 5
    end
    object qrItensICMS_vICMS: TBCDField
      DisplayWidth = 19
      FieldName = 'ICMS_vICMS'
      Visible = False
      Precision = 18
      Size = 5
    end
    object qrItensICMS_modBCST: TIntegerField
      DisplayWidth = 10
      FieldName = 'ICMS_modBCST'
      Visible = False
    end
    object qrItensICMS_pMVAST: TBCDField
      DisplayWidth = 19
      FieldName = 'ICMS_pMVAST'
      Visible = False
      Precision = 18
      Size = 5
    end
    object qrItensICMS_pRedBCST: TBCDField
      DisplayWidth = 19
      FieldName = 'ICMS_pRedBCST'
      Visible = False
      Precision = 18
      Size = 5
    end
    object qrItensICMS_vBCST: TBCDField
      DisplayWidth = 19
      FieldName = 'ICMS_vBCST'
      Visible = False
      Precision = 18
      Size = 5
    end
    object qrItensICMS_pST: TBCDField
      DisplayWidth = 19
      FieldName = 'ICMS_pST'
      Visible = False
      Precision = 18
      Size = 5
    end
    object qrItensICMS_vST: TBCDField
      DisplayWidth = 19
      FieldName = 'ICMS_vST'
      Visible = False
      Precision = 18
      Size = 5
    end
    object qrItensICMS_vBCSTRet: TBCDField
      DisplayWidth = 19
      FieldName = 'ICMS_vBCSTRet'
      Visible = False
      Precision = 18
      Size = 5
    end
    object qrItensICMS_vICMSSTRet: TBCDField
      DisplayWidth = 19
      FieldName = 'ICMS_vICMSSTRet'
      Visible = False
      Precision = 18
      Size = 5
    end
    object qrItensICMS_pCredSN: TBCDField
      DisplayWidth = 19
      FieldName = 'ICMS_pCredSN'
      Visible = False
      Precision = 18
      Size = 5
    end
    object qrItensICMS_vCredICMSSN: TBCDField
      DisplayWidth = 19
      FieldName = 'ICMS_vCredICMSSN'
      Visible = False
      Precision = 18
      Size = 5
    end
    object qrItensIPI_CST: TStringField
      DisplayWidth = 50
      FieldName = 'IPI_CST'
      Visible = False
      Size = 50
    end
    object qrItensIPI_Enq: TStringField
      DisplayWidth = 50
      FieldName = 'IPI_Enq'
      Visible = False
      Size = 50
    end
    object qrItensIPI_pIpi: TBCDField
      DisplayWidth = 19
      FieldName = 'IPI_pIpi'
      Visible = False
      Precision = 18
      Size = 5
    end
    object qrItensIPI_vIPI: TBCDField
      DisplayWidth = 19
      FieldName = 'IPI_vIPI'
      Visible = False
      Precision = 18
      Size = 5
    end
    object qrItensPIS_CST: TStringField
      DisplayWidth = 50
      FieldName = 'PIS_CST'
      Visible = False
      Size = 50
    end
    object qrItensPIS_pPis: TBCDField
      DisplayWidth = 19
      FieldName = 'PIS_pPis'
      Visible = False
      Precision = 18
      Size = 5
    end
    object qrItensPIS_vPis: TBCDField
      DisplayWidth = 19
      FieldName = 'PIS_vPis'
      Visible = False
      Precision = 18
      Size = 5
    end
    object qrItensCOFINS_CST: TStringField
      DisplayWidth = 50
      FieldName = 'COFINS_CST'
      Visible = False
      Size = 50
    end
    object qrItensCOFINS_pCofins: TBCDField
      DisplayWidth = 19
      FieldName = 'COFINS_pCofins'
      Visible = False
      Precision = 18
      Size = 5
    end
    object qrItensCOFINS_vCofins: TBCDField
      DisplayWidth = 19
      FieldName = 'COFINS_vCofins'
      Visible = False
      Precision = 18
      Size = 5
    end
    object qrItensinfAdic: TMemoField
      DisplayWidth = 10
      FieldName = 'infAdic'
      Visible = False
      BlobType = ftMemo
    end
    object qrItensvFrete: TBCDField
      DisplayWidth = 19
      FieldName = 'vFrete'
      Visible = False
      Precision = 18
      Size = 5
    end
    object qrItensvSeg: TBCDField
      DisplayWidth = 19
      FieldName = 'vSeg'
      Visible = False
      Precision = 18
      Size = 5
    end
    object qrItensvDesc: TBCDField
      DisplayWidth = 19
      FieldName = 'vDesc'
      Visible = False
      Precision = 18
      Size = 5
    end
    object qrItensIPI_vBC: TBCDField
      DisplayWidth = 19
      FieldName = 'IPI_vBC'
      Visible = False
      Precision = 18
      Size = 5
    end
    object qrItensPIS_vBC: TBCDField
      DisplayWidth = 19
      FieldName = 'PIS_vBC'
      Visible = False
      Precision = 18
      Size = 5
    end
    object qrItensCOFINS_vBC: TBCDField
      DisplayWidth = 19
      FieldName = 'COFINS_vBC'
      Visible = False
      Precision = 18
      Size = 5
    end
    object qrItenspis_qBCProd: TBCDField
      DisplayWidth = 19
      FieldName = 'pis_qBCProd'
      Visible = False
      Precision = 18
      Size = 5
    end
    object qrItenspis_vAliqProd: TBCDField
      DisplayWidth = 19
      FieldName = 'pis_vAliqProd'
      Visible = False
      Precision = 18
      Size = 5
    end
    object qrItenscofins_qBCProd: TBCDField
      DisplayWidth = 19
      FieldName = 'cofins_qBCProd'
      Visible = False
      Precision = 18
      Size = 5
    end
    object qrItenscofins_vAliqProd: TBCDField
      DisplayWidth = 19
      FieldName = 'cofins_vAliqProd'
      Visible = False
      Precision = 18
      Size = 5
    end
    object qrItensipi_CNPJProd: TStringField
      DisplayWidth = 50
      FieldName = 'ipi_CNPJProd'
      Visible = False
      Size = 50
    end
    object qrItensipi_cSelo: TStringField
      DisplayWidth = 50
      FieldName = 'ipi_cSelo'
      Visible = False
      Size = 50
    end
    object qrItensipi_qSelo: TBCDField
      DisplayWidth = 19
      FieldName = 'ipi_qSelo'
      Visible = False
      Precision = 18
      Size = 5
    end
    object qrItensipi_clEnq: TStringField
      DisplayWidth = 50
      FieldName = 'ipi_clEnq'
      Visible = False
      Size = 50
    end
    object qrItensipi_qUnid: TBCDField
      DisplayWidth = 19
      FieldName = 'ipi_qUnid'
      Visible = False
      Precision = 18
      Size = 5
    end
    object qrItensipi_vUnid: TBCDField
      DisplayWidth = 19
      FieldName = 'ipi_vUnid'
      Visible = False
      Precision = 18
      Size = 5
    end
    object qrItensIdExternoItem: TIntegerField
      DisplayWidth = 10
      FieldName = 'IdExternoItem'
      Visible = False
    end
    object qrItensMAT_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'MAT_ID'
      Visible = False
    end
    object qrItensMARCA_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'MARCA_ID'
      Visible = False
    end
    object qrItensORD_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'ORD_ID'
      Visible = False
    end
    object qrItensIORD_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'IORD_ID'
      Visible = False
    end
    object qrItensCONVERSAO: TFloatField
      DisplayWidth = 10
      FieldName = 'CONVERSAO'
      Visible = False
    end
    object qrItensQTDE_OC: TFloatField
      DisplayWidth = 10
      FieldName = 'QTDE_OC'
      Visible = False
    end
    object qrItensMATMARCA_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'MATMARCA_ID'
      Visible = False
    end
    object qrItensIdNFeProduto: TAutoIncField
      DisplayWidth = 10
      FieldName = 'IdNFeProduto'
      ReadOnly = True
      Visible = False
    end
    object qrItensIdNFe: TIntegerField
      DisplayWidth = 10
      FieldName = 'IdNFe'
      Visible = False
    end
  end
  object DataSource2: TDataSource
    DataSet = qrItens
    OnDataChange = DataSource2DataChange
    Left = 436
    Top = 304
  end
  object qrMat: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    SQL.Strings = (
      'SELECT'#9#9'MAT_ID,'
      #9#9'MAT_DESC, EAN'
      'FROM'#9#9'MATERIAIS MAT'
      'WHERE GENERICO NOT IN ('#39'S'#39')'
      'AND MAT_ATIVO = '#39'S'#39' '
      'ORDER BY'#9'MAT_DESC')
    Left = 608
    Top = 432
    object qrMatMAT_DESC: TStringField
      DisplayLabel = 'Material'
      DisplayWidth = 100
      FieldName = 'MAT_DESC'
      Size = 100
    end
    object qrMatEAN: TStringField
      DisplayWidth = 50
      FieldName = 'EAN'
      Size = 50
    end
    object qrMatMAT_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'MAT_ID'
      ReadOnly = True
      Visible = False
    end
  end
  object qrMarca: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <
      item
        Name = 'MAT'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT'
      '    M.MARCA_ID,'
      #9'M.MARCA_DESC,'
      #9'MM.MATMARCA_CONVERSAO,'
      #9'MM.MATMARCA_ID'
      'from MATERIAL_MARCA MM'
      'INNER JOIN MARCAS M on MM.MARCA_ID = M.MARCA_ID'
      'WHERE MM.MAT_ID = :MAT')
    Left = 416
    Top = 464
    object qrMarcaMARCA_DESC: TStringField
      DisplayWidth = 20
      FieldName = 'MARCA_DESC'
    end
    object qrMarcaMARCA_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'MARCA_ID'
      ReadOnly = True
      Visible = False
    end
    object qrMarcaMATMARCA_CONVERSAO: TFloatField
      DisplayWidth = 10
      FieldName = 'MATMARCA_CONVERSAO'
      Visible = False
    end
    object qrMarcaMATMARCA_ID: TAutoIncField
      FieldName = 'MATMARCA_ID'
      ReadOnly = True
    end
  end
  object qrItensOK: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'IdNFe'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM NFeProduto A'
      'INNER JOIN MATERIAIS M ON A.MAT_ID = M.MAT_ID'
      'WHERE IdNFe = :IdNFe'
      'AND (A.MAT_ID IS NOT NULL OR '
      'MARCA_ID IS NOT NULL'
      'AND CONVERSAO IS NOT NULL)')
    Left = 208
    Top = 480
    object qrItensOKMAT_DESC: TStringField
      DisplayLabel = 'Material'
      DisplayWidth = 80
      FieldName = 'MAT_DESC'
      Size = 100
    end
    object StringField4: TStringField
      DisplayWidth = 3
      FieldName = 'uCom'
      Size = 50
    end
    object BCDField1: TBCDField
      DisplayWidth = 10
      FieldName = 'qCom'
      Precision = 18
      Size = 5
    end
    object BCDField3: TBCDField
      DisplayWidth = 19
      FieldName = 'vProd'
      Precision = 18
      Size = 5
    end
    object IntegerField7: TIntegerField
      DisplayLabel = 'OC'
      DisplayWidth = 10
      FieldName = 'ORD_ID'
    end
    object StringField3: TStringField
      DisplayWidth = 50
      FieldName = 'xProd'
      Visible = False
      Size = 255
    end
    object StringField1: TStringField
      DisplayWidth = 15
      FieldName = 'cProd'
      Visible = False
      Size = 255
    end
    object StringField2: TStringField
      DisplayWidth = 15
      FieldName = 'cEAN'
      Visible = False
      Size = 255
    end
    object BCDField2: TBCDField
      DisplayWidth = 12
      FieldName = 'vUnCom'
      Visible = False
      Precision = 18
      Size = 5
    end
    object StringField5: TStringField
      DisplayWidth = 255
      FieldName = 'NCM'
      Visible = False
      Size = 255
    end
    object StringField6: TStringField
      DisplayWidth = 255
      FieldName = 'CEST'
      Visible = False
      Size = 255
    end
    object StringField7: TStringField
      DisplayWidth = 255
      FieldName = 'CFOP'
      Visible = False
      Size = 255
    end
    object StringField8: TStringField
      DisplayWidth = 255
      FieldName = 'cEANTrib'
      Visible = False
      Size = 255
    end
    object StringField9: TStringField
      DisplayWidth = 255
      FieldName = 'uTrib'
      Visible = False
      Size = 255
    end
    object BCDField4: TBCDField
      DisplayWidth = 19
      FieldName = 'qTrib'
      Visible = False
      Precision = 18
      Size = 5
    end
    object BCDField5: TBCDField
      DisplayWidth = 19
      FieldName = 'vUnTrib'
      Visible = False
      Precision = 18
      Size = 5
    end
    object BCDField6: TBCDField
      DisplayWidth = 19
      FieldName = 'vOutro'
      Visible = False
      Precision = 18
      Size = 5
    end
    object IntegerField1: TIntegerField
      DisplayWidth = 10
      FieldName = 'indTot'
      Visible = False
    end
    object StringField10: TStringField
      DisplayWidth = 255
      FieldName = 'xPed'
      Visible = False
      Size = 255
    end
    object StringField11: TStringField
      DisplayWidth = 255
      FieldName = 'ICMS_origem'
      Visible = False
      Size = 255
    end
    object StringField12: TStringField
      DisplayWidth = 255
      FieldName = 'ICMS_CST'
      Visible = False
      Size = 255
    end
    object IntegerField2: TIntegerField
      DisplayWidth = 10
      FieldName = 'ICMS_modBC'
      Visible = False
    end
    object BCDField7: TBCDField
      DisplayWidth = 19
      FieldName = 'ICMS_redBC'
      Visible = False
      Precision = 18
      Size = 5
    end
    object BCDField8: TBCDField
      DisplayWidth = 19
      FieldName = 'ICMS_vBC'
      Visible = False
      Precision = 18
      Size = 5
    end
    object BCDField9: TBCDField
      DisplayWidth = 19
      FieldName = 'ICMS_pICMS'
      Visible = False
      Precision = 18
      Size = 5
    end
    object BCDField10: TBCDField
      DisplayWidth = 19
      FieldName = 'ICMS_vICMS'
      Visible = False
      Precision = 18
      Size = 5
    end
    object IntegerField3: TIntegerField
      DisplayWidth = 10
      FieldName = 'ICMS_modBCST'
      Visible = False
    end
    object BCDField11: TBCDField
      DisplayWidth = 19
      FieldName = 'ICMS_pMVAST'
      Visible = False
      Precision = 18
      Size = 5
    end
    object BCDField12: TBCDField
      DisplayWidth = 19
      FieldName = 'ICMS_pRedBCST'
      Visible = False
      Precision = 18
      Size = 5
    end
    object BCDField13: TBCDField
      DisplayWidth = 19
      FieldName = 'ICMS_vBCST'
      Visible = False
      Precision = 18
      Size = 5
    end
    object BCDField14: TBCDField
      DisplayWidth = 19
      FieldName = 'ICMS_pST'
      Visible = False
      Precision = 18
      Size = 5
    end
    object BCDField15: TBCDField
      DisplayWidth = 19
      FieldName = 'ICMS_vST'
      Visible = False
      Precision = 18
      Size = 5
    end
    object BCDField16: TBCDField
      DisplayWidth = 19
      FieldName = 'ICMS_vBCSTRet'
      Visible = False
      Precision = 18
      Size = 5
    end
    object BCDField17: TBCDField
      DisplayWidth = 19
      FieldName = 'ICMS_vICMSSTRet'
      Visible = False
      Precision = 18
      Size = 5
    end
    object BCDField18: TBCDField
      DisplayWidth = 19
      FieldName = 'ICMS_pCredSN'
      Visible = False
      Precision = 18
      Size = 5
    end
    object BCDField19: TBCDField
      DisplayWidth = 19
      FieldName = 'ICMS_vCredICMSSN'
      Visible = False
      Precision = 18
      Size = 5
    end
    object StringField13: TStringField
      DisplayWidth = 50
      FieldName = 'IPI_CST'
      Visible = False
      Size = 50
    end
    object StringField14: TStringField
      DisplayWidth = 50
      FieldName = 'IPI_Enq'
      Visible = False
      Size = 50
    end
    object BCDField20: TBCDField
      DisplayWidth = 19
      FieldName = 'IPI_pIpi'
      Visible = False
      Precision = 18
      Size = 5
    end
    object BCDField21: TBCDField
      DisplayWidth = 19
      FieldName = 'IPI_vIPI'
      Visible = False
      Precision = 18
      Size = 5
    end
    object StringField15: TStringField
      DisplayWidth = 50
      FieldName = 'PIS_CST'
      Visible = False
      Size = 50
    end
    object BCDField22: TBCDField
      DisplayWidth = 19
      FieldName = 'PIS_pPis'
      Visible = False
      Precision = 18
      Size = 5
    end
    object BCDField23: TBCDField
      DisplayWidth = 19
      FieldName = 'PIS_vPis'
      Visible = False
      Precision = 18
      Size = 5
    end
    object StringField16: TStringField
      DisplayWidth = 50
      FieldName = 'COFINS_CST'
      Visible = False
      Size = 50
    end
    object BCDField24: TBCDField
      DisplayWidth = 19
      FieldName = 'COFINS_pCofins'
      Visible = False
      Precision = 18
      Size = 5
    end
    object BCDField25: TBCDField
      DisplayWidth = 19
      FieldName = 'COFINS_vCofins'
      Visible = False
      Precision = 18
      Size = 5
    end
    object MemoField1: TMemoField
      DisplayWidth = 10
      FieldName = 'infAdic'
      Visible = False
      BlobType = ftMemo
    end
    object BCDField26: TBCDField
      DisplayWidth = 19
      FieldName = 'vFrete'
      Visible = False
      Precision = 18
      Size = 5
    end
    object BCDField27: TBCDField
      DisplayWidth = 19
      FieldName = 'vSeg'
      Visible = False
      Precision = 18
      Size = 5
    end
    object BCDField28: TBCDField
      DisplayWidth = 19
      FieldName = 'vDesc'
      Visible = False
      Precision = 18
      Size = 5
    end
    object BCDField29: TBCDField
      DisplayWidth = 19
      FieldName = 'IPI_vBC'
      Visible = False
      Precision = 18
      Size = 5
    end
    object BCDField30: TBCDField
      DisplayWidth = 19
      FieldName = 'PIS_vBC'
      Visible = False
      Precision = 18
      Size = 5
    end
    object BCDField31: TBCDField
      DisplayWidth = 19
      FieldName = 'COFINS_vBC'
      Visible = False
      Precision = 18
      Size = 5
    end
    object BCDField32: TBCDField
      DisplayWidth = 19
      FieldName = 'pis_qBCProd'
      Visible = False
      Precision = 18
      Size = 5
    end
    object BCDField33: TBCDField
      DisplayWidth = 19
      FieldName = 'pis_vAliqProd'
      Visible = False
      Precision = 18
      Size = 5
    end
    object BCDField34: TBCDField
      DisplayWidth = 19
      FieldName = 'cofins_qBCProd'
      Visible = False
      Precision = 18
      Size = 5
    end
    object BCDField35: TBCDField
      DisplayWidth = 19
      FieldName = 'cofins_vAliqProd'
      Visible = False
      Precision = 18
      Size = 5
    end
    object StringField17: TStringField
      DisplayWidth = 50
      FieldName = 'ipi_CNPJProd'
      Visible = False
      Size = 50
    end
    object StringField18: TStringField
      DisplayWidth = 50
      FieldName = 'ipi_cSelo'
      Visible = False
      Size = 50
    end
    object BCDField36: TBCDField
      DisplayWidth = 19
      FieldName = 'ipi_qSelo'
      Visible = False
      Precision = 18
      Size = 5
    end
    object StringField19: TStringField
      DisplayWidth = 50
      FieldName = 'ipi_clEnq'
      Visible = False
      Size = 50
    end
    object BCDField37: TBCDField
      DisplayWidth = 19
      FieldName = 'ipi_qUnid'
      Visible = False
      Precision = 18
      Size = 5
    end
    object BCDField38: TBCDField
      DisplayWidth = 19
      FieldName = 'ipi_vUnid'
      Visible = False
      Precision = 18
      Size = 5
    end
    object IntegerField4: TIntegerField
      DisplayWidth = 10
      FieldName = 'IdExternoItem'
      Visible = False
    end
    object IntegerField5: TIntegerField
      DisplayWidth = 10
      FieldName = 'MAT_ID'
      Visible = False
    end
    object IntegerField6: TIntegerField
      DisplayWidth = 10
      FieldName = 'MARCA_ID'
      Visible = False
    end
    object IntegerField8: TIntegerField
      DisplayWidth = 10
      FieldName = 'IORD_ID'
      Visible = False
    end
    object FloatField1: TFloatField
      DisplayWidth = 10
      FieldName = 'CONVERSAO'
      Visible = False
    end
    object FloatField2: TFloatField
      DisplayWidth = 10
      FieldName = 'QTDE_OC'
      Visible = False
    end
    object IntegerField9: TIntegerField
      DisplayWidth = 10
      FieldName = 'MATMARCA_ID'
      Visible = False
    end
    object AutoIncField1: TAutoIncField
      DisplayWidth = 10
      FieldName = 'IdNFeProduto'
      ReadOnly = True
      Visible = False
    end
    object IntegerField10: TIntegerField
      DisplayWidth = 10
      FieldName = 'IdNFe'
      Visible = False
    end
  end
  object DataSource3: TDataSource
    DataSet = qrItensOK
    Left = 96
    Top = 496
  end
  object STP_CadastraCodigoXML: TADOStoredProc
    Connection = FMenu.ADOConnection
    ProcedureName = 'PR_CADASTRA_CODIGO_XML;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
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
        Size = 50
        Value = Null
      end
      item
        Name = '@CODIGO'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end
      item
        Name = '@EAN'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end>
    Left = 328
    Top = 264
  end
end
