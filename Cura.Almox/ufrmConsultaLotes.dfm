object frmConsultaLotes: TfrmConsultaLotes
  Left = 203
  Top = 114
  Width = 817
  Height = 552
  Caption = 'Consulta de uso de lotes de materiais'
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
    Width = 801
    Height = 258
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 41
      Height = 14
      Caption = 'Material'
    end
    object Label2: TLabel
      Left = 16
      Top = 56
      Width = 63
      Height = 14
      Caption = 'Validade de'
    end
    object Label3: TLabel
      Left = 200
      Top = 56
      Width = 25
      Height = 14
      Caption = 'Lote'
    end
    object Label4: TLabel
      Left = 296
      Top = 56
      Width = 74
      Height = 14
      Caption = 'N° Requisição'
    end
    object Label5: TLabel
      Left = 384
      Top = 56
      Width = 85
      Height = 14
      Caption = 'Data Requisição'
    end
    object Label6: TLabel
      Left = 480
      Top = 56
      Width = 20
      Height = 14
      Caption = 'Até'
    end
    object Label7: TLabel
      Left = 16
      Top = 104
      Width = 90
      Height = 14
      Caption = 'Centro de Custo'
    end
    object Label18: TLabel
      Left = 104
      Top = 56
      Width = 20
      Height = 14
      Caption = 'Até'
    end
    object Label21: TLabel
      Left = 16
      Top = 144
      Width = 143
      Height = 14
      Caption = 'Leitor de código de barras'
    end
    object cboMateriais: TwwDBLookupCombo
      Left = 16
      Top = 24
      Width = 529
      Height = 22
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'MAT_DESC'#9'60'#9'MAT_DESC'#9'F')
      LookupTable = qrMatPesq
      LookupField = 'MAT_ID'
      TabOrder = 0
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
    end
    object edtValidade: TMaskEdit
      Left = 16
      Top = 72
      Width = 81
      Height = 22
      EditMask = '99/99/9999'
      MaxLength = 10
      TabOrder = 3
      Text = '  /  /    '
    end
    object edtLote: TEdit
      Left = 197
      Top = 72
      Width = 87
      Height = 22
      TabOrder = 5
    end
    object edtRequisicao: TEdit
      Left = 296
      Top = 72
      Width = 79
      Height = 22
      TabOrder = 6
    end
    object edtDe: TMaskEdit
      Left = 384
      Top = 72
      Width = 85
      Height = 22
      EditMask = '99/99/9999'
      MaxLength = 10
      TabOrder = 7
      Text = '  /  /    '
    end
    object edtAte: TMaskEdit
      Left = 480
      Top = 72
      Width = 86
      Height = 22
      EditMask = '99/99/9999'
      MaxLength = 10
      TabOrder = 8
      Text = '  /  /    '
    end
    object cboCentroCusto: TwwDBLookupCombo
      Left = 16
      Top = 120
      Width = 553
      Height = 22
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'CC_Desc'#9'40'#9'CC_Desc'#9'F')
      LookupTable = qrCCPesq
      LookupField = 'CC_ID'
      TabOrder = 10
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
    end
    object Button1: TButton
      Left = 584
      Top = 24
      Width = 121
      Height = 25
      Caption = 'Pesquisar'
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 584
      Top = 56
      Width = 121
      Height = 25
      Caption = 'Alterar dados'
      TabOrder = 2
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 584
      Top = 88
      Width = 121
      Height = 25
      Caption = 'Imprimir'
      TabOrder = 9
      OnClick = Button3Click
    end
    object RadioGroup1: TRadioGroup
      Left = 16
      Top = 218
      Width = 689
      Height = 34
      Caption = 'Ordenar por'
      Columns = 5
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        'Requisição'
        'Data'
        'Material'
        'Lote'
        'Validade')
      ParentFont = False
      TabOrder = 11
    end
    object edtValidadeAte: TMaskEdit
      Left = 104
      Top = 72
      Width = 86
      Height = 22
      EditMask = '99/99/9999'
      MaxLength = 10
      TabOrder = 4
      Text = '  /  /    '
    end
    object RadioGroup2: TRadioGroup
      Left = 16
      Top = 186
      Width = 689
      Height = 32
      Caption = 'Status'
      Columns = 4
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        'Todos'
        'A iniciar'
        'Iniciados e não finalizados'
        'Finalizados')
      ParentFont = False
      TabOrder = 12
    end
    object edtLeitor: TEdit
      Left = 16
      Top = 160
      Width = 553
      Height = 22
      PasswordChar = '*'
      TabOrder = 13
      OnKeyDown = edtLeitorKeyDown
    end
    object btnGetMaterial: TBitBtn
      Left = 546
      Top = 18
      Width = 32
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
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
    Top = 258
    Width = 801
    Height = 256
    Selected.Strings = (
      'Req_ID'#9'10'#9'N° Requisição'
      'Data'#9'10'#9'Data'
      'MAT_DESC'#9'40'#9'Material'
      'MARCA_DESC'#9'15'#9'Marca'
      'Qtde'#9'5'#9'Qtde'
      'N_Lote'#9'15'#9'Lote'
      'Valid'#9'10'#9'Validade'
      'DT_INICIO'#9'10'#9'Data de inicio'
      'DT_FIM'#9'10'#9'Data Final'#9'F'
      'OBS'#9'50'#9'Observação')
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
  object Panel2: TPanel
    Left = 600
    Top = 246
    Width = 816
    Height = 324
    TabOrder = 2
    Visible = False
    object Label8: TLabel
      Left = 24
      Top = 32
      Width = 74
      Height = 14
      Caption = 'N° Requisição'
      FocusControl = DBEdit1
    end
    object Label9: TLabel
      Left = 104
      Top = 32
      Width = 25
      Height = 14
      Caption = 'Data'
      FocusControl = DBEdit2
    end
    object Label10: TLabel
      Left = 184
      Top = 32
      Width = 41
      Height = 14
      Caption = 'Material'
      FocusControl = DBEdit3
    end
    object Label11: TLabel
      Left = 520
      Top = 32
      Width = 31
      Height = 14
      Caption = 'Marca'
      FocusControl = DBEdit4
    end
    object Label12: TLabel
      Left = 24
      Top = 80
      Width = 28
      Height = 14
      Caption = 'Qtde'
      FocusControl = DBEdit5
    end
    object Label13: TLabel
      Left = 72
      Top = 80
      Width = 25
      Height = 14
      Caption = 'Lote'
      FocusControl = DBEdit6
    end
    object Label14: TLabel
      Left = 192
      Top = 80
      Width = 45
      Height = 14
      Caption = 'Validade'
      FocusControl = DBEdit7
    end
    object Label15: TLabel
      Left = 24
      Top = 136
      Width = 73
      Height = 14
      Caption = 'Data de inicio'
      FocusControl = DBEdit8
    end
    object Label16: TLabel
      Left = 312
      Top = 136
      Width = 52
      Height = 14
      Caption = 'Data Final'
      FocusControl = DBEdit9
    end
    object Label17: TLabel
      Left = 24
      Top = 184
      Width = 63
      Height = 14
      Caption = 'Observação'
      FocusControl = DBEdit10
    end
    object Label19: TLabel
      Left = 112
      Top = 136
      Width = 39
      Height = 14
      Caption = 'Usuário'
      FocusControl = DBEdit11
    end
    object Label20: TLabel
      Left = 392
      Top = 136
      Width = 39
      Height = 14
      Caption = 'Usuário'
      FocusControl = DBEdit12
    end
    object DBEdit1: TDBEdit
      Left = 24
      Top = 48
      Width = 74
      Height = 22
      DataField = 'Req_ID'
      DataSource = DataSource1
      Enabled = False
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 104
      Top = 48
      Width = 74
      Height = 22
      DataField = 'Data'
      DataSource = DataSource1
      Enabled = False
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 184
      Top = 48
      Width = 329
      Height = 22
      DataField = 'MAT_DESC'
      DataSource = DataSource1
      Enabled = False
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 520
      Top = 48
      Width = 109
      Height = 22
      DataField = 'MARCA_DESC'
      DataSource = DataSource1
      Enabled = False
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 24
      Top = 96
      Width = 39
      Height = 22
      DataField = 'Qtde'
      DataSource = DataSource1
      Enabled = False
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 72
      Top = 96
      Width = 109
      Height = 22
      DataField = 'N_Lote'
      DataSource = DataSource1
      Enabled = False
      TabOrder = 5
    end
    object DBEdit7: TDBEdit
      Left = 192
      Top = 96
      Width = 74
      Height = 22
      DataField = 'Valid'
      DataSource = DataSource1
      Enabled = False
      TabOrder = 6
    end
    object DBEdit8: TDBEdit
      Left = 24
      Top = 152
      Width = 74
      Height = 22
      DataField = 'DT_INICIO'
      DataSource = dsLotes
      TabOrder = 7
    end
    object DBEdit9: TDBEdit
      Left = 312
      Top = 152
      Width = 74
      Height = 22
      DataField = 'DT_FIM'
      DataSource = dsLotes
      TabOrder = 8
    end
    object DBEdit10: TDBEdit
      Left = 24
      Top = 200
      Width = 761
      Height = 22
      DataField = 'OBS'
      DataSource = dsLotes
      TabOrder = 9
    end
    object Button4: TButton
      Left = 24
      Top = 240
      Width = 75
      Height = 25
      Caption = 'Salvar'
      TabOrder = 10
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 112
      Top = 240
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 11
      OnClick = Button5Click
    end
    object DBEdit11: TDBEdit
      Left = 112
      Top = 152
      Width = 185
      Height = 22
      DataField = 'USUARIO_INICIO'
      DataSource = dsLotes
      Enabled = False
      TabOrder = 12
    end
    object DBEdit12: TDBEdit
      Left = 392
      Top = 152
      Width = 210
      Height = 22
      DataField = 'USUARIO_FIM'
      DataSource = dsLotes
      Enabled = False
      TabOrder = 13
    end
  end
  object qrBusca: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      #9'A.Req_ID,'
      #9'A.Data,'
      #9'D.MAT_DESC,'
      #9'E.MARCA_DESC,'
      #9'C.RR_ID,'
      #9'C.Qtde,'
      #9'C.N_Lote,'
      #9'C.Valid,'
      #9'C.DT_INICIO,'
      #9'C.DT_FIM,'
      #9'C.OBS'
      'FROM Req_Capa A INNER JOIN Req_Item B '
      'ON A.Req_ID = B.Req_ID INNER JOIN Req_Lote C'
      'ON B.Req_Item_ID = C.Req_Item_ID INNER JOIN MATERIAIS D'
      'ON C.Mat_ID = D.MAT_ID INNER JOIN MARCAS E'
      'ON C.Marca_ID = E.MARCA_ID')
    Left = 248
    Top = 336
    object qrBuscaReq_ID: TAutoIncField
      DisplayLabel = 'N° Requisição'
      DisplayWidth = 10
      FieldName = 'Req_ID'
      ReadOnly = True
    end
    object qrBuscaData: TDateTimeField
      DisplayWidth = 10
      FieldName = 'Data'
      DisplayFormat = 'dd/MM/yyyy'
    end
    object qrBuscaMAT_DESC: TStringField
      DisplayLabel = 'Material'
      DisplayWidth = 40
      FieldName = 'MAT_DESC'
      Size = 60
    end
    object qrBuscaMARCA_DESC: TStringField
      DisplayLabel = 'Marca'
      DisplayWidth = 15
      FieldName = 'MARCA_DESC'
    end
    object qrBuscaQtde: TFloatField
      DisplayWidth = 5
      FieldName = 'Qtde'
    end
    object qrBuscaN_Lote: TWideStringField
      DisplayLabel = 'Lote'
      DisplayWidth = 15
      FieldName = 'N_Lote'
    end
    object qrBuscaValid: TDateTimeField
      DisplayLabel = 'Validade'
      DisplayWidth = 10
      FieldName = 'Valid'
    end
    object qrBuscaDT_INICIO: TDateTimeField
      DisplayLabel = 'Data de inicio'
      DisplayWidth = 10
      FieldName = 'DT_INICIO'
      DisplayFormat = 'dd/MM/yyyy'
    end
    object qrBuscaDT_FIM: TDateTimeField
      DisplayLabel = 'Data Final'
      DisplayWidth = 10
      FieldName = 'DT_FIM'
      DisplayFormat = 'dd/MM/yyyy'
    end
    object qrBuscaOBS: TStringField
      DisplayLabel = 'Observação'
      DisplayWidth = 50
      FieldName = 'OBS'
      Size = 500
    end
    object qrBuscaRR_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'RR_ID'
      ReadOnly = True
      Visible = False
    end
  end
  object DataSource1: TDataSource
    DataSet = qrBusca
    OnDataChange = DataSource1DataChange
    Left = 712
    Top = 216
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
  object qrMatPesq: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      ''
      'select MAT_ID, MAT_DESC from MATERIAIS'
      
        'where case when MAT_ATIVO IS null then '#39'N'#39' else MAT_ATIVO end = ' +
        #39'S'#39
      'AND CASE WHEN GENERICO IS NULL THEN '#39'N'#39' ELSE GENERICO END = '#39'N'#39
      'order by mat_desc')
    Left = 625
    Top = 231
    object qrMatPesqMAT_DESC: TStringField
      DisplayWidth = 60
      FieldName = 'MAT_DESC'
      Size = 60
    end
    object qrMatPesqMAT_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'MAT_ID'
      ReadOnly = True
      Visible = False
    end
  end
  object qrLotes: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <
      item
        Name = 'RR_ID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM Req_Lote_CONSUMO'
      'WHERE RR_ID = :RR_ID')
    Left = 752
    Top = 160
    object qrLotesRR_ID: TAutoIncField
      FieldName = 'RR_ID'
      ReadOnly = True
    end
    object qrLotesReq_Item_ID: TIntegerField
      FieldName = 'Req_Item_ID'
    end
    object qrLotesMat_ID: TIntegerField
      FieldName = 'Mat_ID'
    end
    object qrLotesN_Lote: TWideStringField
      FieldName = 'N_Lote'
    end
    object qrLotesValid: TDateTimeField
      FieldName = 'Valid'
    end
    object qrLotesMarca_ID: TIntegerField
      FieldName = 'Marca_ID'
    end
    object qrLotesFor_Codi: TStringField
      FieldName = 'For_Codi'
      FixedChar = True
      Size = 15
    end
    object qrLotesLocal_ID: TIntegerField
      FieldName = 'Local_ID'
    end
    object qrLotesQtde: TFloatField
      FieldName = 'Qtde'
    end
    object qrLotesUsuario: TStringField
      FieldName = 'Usuario'
      Size = 25
    end
    object qrLotesStatus: TStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 1
    end
    object qrLotesDevolucao: TFloatField
      FieldName = 'Devolucao'
    end
    object qrLotesAux: TFloatField
      FieldName = 'Aux'
    end
    object qrLotesDT_INICIO: TDateTimeField
      FieldName = 'DT_INICIO'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '99/99/9999'
    end
    object qrLotesDT_FIM: TDateTimeField
      FieldName = 'DT_FIM'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '99/99/9999'
    end
    object qrLotesOBS: TStringField
      FieldName = 'OBS'
      Size = 500
    end
    object qrLotesSEL: TStringField
      FieldName = 'SEL'
      Size = 1
    end
    object qrLotesDT_APROVACAO: TDateTimeField
      FieldName = 'DT_APROVACAO'
    end
    object qrLotesUSUARIO_INICIO: TStringField
      FieldName = 'USUARIO_INICIO'
      Size = 50
    end
    object qrLotesUSUARIO_FIM: TStringField
      FieldName = 'USUARIO_FIM'
      Size = 50
    end
    object qrLotesFLAG_INICIO: TStringField
      FieldName = 'FLAG_INICIO'
      Size = 1
    end
    object qrLotesFLAG_FIM: TStringField
      FieldName = 'FLAG_FIM'
      Size = 1
    end
  end
  object dsLotes: TDataSource
    DataSet = qrLotes
    Left = 560
    Top = 334
  end
  object qrBarras: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <
      item
        Name = 'ID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM CODIGO_BARRAS'
      'WHERE ID = :ID')
    Left = 344
    Top = 305
    object qrBarrasID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object qrBarrasMAT_ID: TIntegerField
      FieldName = 'MAT_ID'
    end
    object qrBarrasN_LOTE: TStringField
      FieldName = 'N_LOTE'
    end
    object qrBarrasVALIDADE: TDateTimeField
      FieldName = 'VALIDADE'
    end
    object qrBarrasMARCA_ID: TIntegerField
      FieldName = 'MARCA_ID'
    end
    object qrBarrasFOR_CODI: TStringField
      FieldName = 'FOR_CODI'
      Size = 15
    end
    object qrBarrasQTDE: TIntegerField
      FieldName = 'QTDE'
    end
    object qrBarrasREC_ID: TIntegerField
      FieldName = 'REC_ID'
    end
    object qrBarrasIMPRESSAO: TStringField
      FieldName = 'IMPRESSAO'
      Size = 1
    end
    object qrBarrasQTDE_SEL: TIntegerField
      FieldName = 'QTDE_SEL'
    end
    object qrBarrasREC_NF: TStringField
      FieldName = 'REC_NF'
      Size = 10
    end
    object qrBarrasREC_DATA: TDateTimeField
      FieldName = 'REC_DATA'
    end
  end
end
