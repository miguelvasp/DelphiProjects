object frmExportaManifesto: TfrmExportaManifesto
  Left = 255
  Top = 139
  Width = 800
  Height = 570
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 97
    Width = 784
    Height = 394
    ControlType.Strings = (
      'SEL_EXPORT;CheckBox;S;N')
    Selected.Strings = (
      'SEL_EXPORT'#9'1'#9'***'
      'MANI_ID'#9'10'#9'Manifesto'
      'MANI_DATA'#9'11'#9'Data'
      'NOTA'#9'10'#9'Nota'
      'MOT_EQUIP'#9'13'#9'Rastreador'#9'F'
      'CLIN_RAZA'#9'35'#9'Cliente'
      'REG_NOME'#9'40'#9'Região'
      'VEIC_NOME'#9'40'#9'Veiculo'
      'TRANS_FANTASIA'#9'30'#9'Transportadora'
      'MOT_NOME'#9'40'#9'Motorista'
      'EMITENTE'#9'10'#9'EMITENTE'
      'DESTINATARIO'#9'10'#9'DESTINATARIO')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
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
    IndicatorColor = icBlack
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 784
    Height = 97
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 176
      Top = 8
      Width = 14
      Height = 13
      Caption = 'De'
    end
    object Label2: TLabel
      Left = 272
      Top = 8
      Width = 16
      Height = 13
      Caption = 'Até'
    end
    object Label3: TLabel
      Left = 360
      Top = 8
      Width = 56
      Height = 13
      Caption = 'Cliente NBF'
    end
    object MaskEdit1: TMaskEdit
      Left = 176
      Top = 24
      Width = 73
      Height = 21
      EditMask = '99/99/9999'
      MaxLength = 10
      TabOrder = 0
      Text = '  /  /    '
    end
    object MaskEdit2: TMaskEdit
      Left = 272
      Top = 24
      Width = 73
      Height = 21
      EditMask = '99/99/9999'
      MaxLength = 10
      TabOrder = 1
      Text = '  /  /    '
    end
    object wwDBLookupCombo1: TwwDBLookupCombo
      Left = 360
      Top = 24
      Width = 313
      Height = 21
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'CLIN_RAZA'#9'50'#9'CLIN_RAZA'#9'F')
      LookupTable = qrCliCombo
      LookupField = 'CLIN_ID'
      TabOrder = 2
      AutoDropDown = True
      ShowButton = True
      AllowClearKey = False
    end
    object Button3: TButton
      Left = 688
      Top = 21
      Width = 75
      Height = 25
      Caption = 'Buscar'
      TabOrder = 3
      OnClick = Button3Click
    end
    object RadioGroup1: TRadioGroup
      Left = 8
      Top = 8
      Width = 153
      Height = 41
      Caption = 'Tipo Manifesto'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Entrega'
        'Coleta')
      TabOrder = 4
      OnClick = RadioGroup1Click
    end
    object Button4: TButton
      Left = 3
      Top = 69
      Width = 134
      Height = 25
      Caption = 'Marcar Todos'
      TabOrder = 5
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 141
      Top = 69
      Width = 134
      Height = 25
      Caption = 'Desmarcar Todos'
      TabOrder = 6
      OnClick = Button5Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 491
    Width = 784
    Height = 41
    Align = alBottom
    TabOrder = 2
    object Button1: TButton
      Left = 16
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Gerar TXT'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 96
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Gerar Excel'
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object qrManif: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    AfterPost = qrManifAfterPost
    Parameters = <>
    SQL.Strings = (
      'SELECT  distinct TOP 100 '
      
        'A.SEL_EXPORT,   N.NFI_NUMERO NOTA, N.NFI_EMIT_CLI EMITENTE, N.NF' +
        'I_DEST_CLI DESTINATARIO,'
      'A.MANI_ID, '
      'A.MANI_DATA, '
      'A.MANI_TIPOCARGA, '
      'A.VEIC_ID, '
      'A.MOT_ID, '
      'A.TRANS_ID, '
      'C.CLIN_RAZA,  '
      'A.CONFIRMA_MANI, '
      'A.REG_ID, '
      'A.MANI_VFRETEPAG,'
      'R.REG_NOME,'
      'V.VEIC_NOME,'
      'T.TRANS_FANTASIA,'
      'M.MOT_NOME, A.MOT_EQUIP'
      'FROM MANIFESTO A LEFT OUTER JOIN NF N'
      'ON A.MANI_ID = N.MANI_ID LEFT OUTER JOIN CLIENTENBF C'
      'ON N.NFI_EMIT_CLI = C.CLIN_ID LEFT OUTER JOIN ESTOQUE '
      'ON N.MANI_ID = ESTOQUE.MANI_ID left outer join REGIAO R'
      'ON A.REG_ID = R.REG_ID LEFT OUTER JOIN TPVEICULO V'
      'ON A.VEIC_ID = V.VEIC_ID LEFT OUTER JOIN TRANSPORTADORA T'
      
        'ON A.TRANS_ID = T.TRANS_ID LEFT OUTER JOIN TRANSPORTADORA_MOTORI' +
        'STA M'
      'ON A.MOT_ID = M.MOT_ID')
    Left = 376
    Top = 136
    object qrManifSEL_EXPORT: TStringField
      DisplayLabel = '***'
      DisplayWidth = 1
      FieldName = 'SEL_EXPORT'
      OnChange = qrManifSEL_EXPORTChange
      Size = 1
    end
    object qrManifMANI_ID: TAutoIncField
      DisplayLabel = 'Manifesto'
      DisplayWidth = 10
      FieldName = 'MANI_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qrManifMANI_DATA: TDateTimeField
      DisplayLabel = 'Data'
      DisplayWidth = 11
      FieldName = 'MANI_DATA'
      ProviderFlags = []
      DisplayFormat = 'dd/MM/yyyy'
    end
    object qrManifNOTA: TStringField
      DisplayLabel = 'Nota'
      DisplayWidth = 10
      FieldName = 'NOTA'
      Size = 10
    end
    object qrManifMOT_EQUIP: TStringField
      DisplayLabel = 'Rastreador'
      DisplayWidth = 13
      FieldName = 'MOT_EQUIP'
      Size = 50
    end
    object qrManifCLIN_RAZA: TStringField
      DisplayLabel = 'Cliente'
      DisplayWidth = 35
      FieldName = 'CLIN_RAZA'
      ProviderFlags = []
      Size = 50
    end
    object qrManifREG_NOME: TStringField
      DisplayLabel = 'Região'
      DisplayWidth = 40
      FieldName = 'REG_NOME'
      ProviderFlags = []
      Size = 40
    end
    object qrManifVEIC_NOME: TStringField
      DisplayLabel = 'Veiculo'
      DisplayWidth = 40
      FieldName = 'VEIC_NOME'
      ProviderFlags = []
      Size = 40
    end
    object qrManifTRANS_FANTASIA: TStringField
      DisplayLabel = 'Transportadora'
      DisplayWidth = 30
      FieldName = 'TRANS_FANTASIA'
      ProviderFlags = []
      Size = 40
    end
    object qrManifMOT_NOME: TStringField
      DisplayLabel = 'Motorista'
      DisplayWidth = 40
      FieldName = 'MOT_NOME'
      ProviderFlags = []
      Size = 40
    end
    object qrManifEMITENTE: TIntegerField
      DisplayWidth = 10
      FieldName = 'EMITENTE'
    end
    object qrManifDESTINATARIO: TIntegerField
      DisplayWidth = 10
      FieldName = 'DESTINATARIO'
    end
    object qrManifMANI_VFRETEPAG: TFloatField
      DisplayWidth = 10
      FieldName = 'MANI_VFRETEPAG'
      ProviderFlags = []
      Visible = False
    end
    object qrManifMANI_TIPOCARGA: TStringField
      DisplayWidth = 1
      FieldName = 'MANI_TIPOCARGA'
      ProviderFlags = []
      Visible = False
      Size = 1
    end
    object qrManifVEIC_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'VEIC_ID'
      ProviderFlags = []
      Visible = False
    end
    object qrManifMOT_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'MOT_ID'
      ProviderFlags = []
      Visible = False
    end
    object qrManifTRANS_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'TRANS_ID'
      ProviderFlags = []
      Visible = False
    end
    object qrManifCONFIRMA_MANI: TStringField
      DisplayWidth = 1
      FieldName = 'CONFIRMA_MANI'
      ProviderFlags = []
      Visible = False
      Size = 1
    end
    object qrManifREG_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'REG_ID'
      ProviderFlags = []
      Visible = False
    end
  end
  object DataSource1: TDataSource
    DataSet = qrManif
    Left = 448
    Top = 136
  end
  object qrCliCombo: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT CLIN_ID, CLIN_RAZA FROM CLIENTENBF'
      'ORDER BY CLIN_RAZA')
    Left = 264
    Top = 240
    object qrCliComboCLIN_RAZA: TStringField
      DisplayWidth = 50
      FieldName = 'CLIN_RAZA'
      Size = 50
    end
    object qrCliComboCLIN_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'CLIN_ID'
      ReadOnly = True
      Visible = False
    end
  end
  object qrMot: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <
      item
        Name = 'MOT_ID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM TRANSPORTADORA_MOTORISTA'
      'WHERE MOT_ID = :MOT_ID')
    Left = 440
    Top = 296
    object qrMotMOT_ID: TAutoIncField
      FieldName = 'MOT_ID'
      ReadOnly = True
    end
    object qrMotTRANS_ID: TIntegerField
      FieldName = 'TRANS_ID'
    end
    object qrMotMOT_NOME: TStringField
      FieldName = 'MOT_NOME'
      Size = 40
    end
    object qrMotMOT_ENDERECO: TStringField
      FieldName = 'MOT_ENDERECO'
      Size = 50
    end
    object qrMotMOT_MUNICIPIO: TStringField
      FieldName = 'MOT_MUNICIPIO'
      Size = 40
    end
    object qrMotMOT_CEP: TStringField
      FieldName = 'MOT_CEP'
      Size = 8
    end
    object qrMotUF_SIGLA: TStringField
      FieldName = 'UF_SIGLA'
      Size = 2
    end
    object qrMotMOT_CPF: TStringField
      FieldName = 'MOT_CPF'
      EditMask = '999.999.999-99'
      Size = 15
    end
    object qrMotMOT_RG: TStringField
      FieldName = 'MOT_RG'
      Size = 15
    end
    object qrMotMOT_DT_NASC: TDateTimeField
      FieldName = 'MOT_DT_NASC'
    end
    object qrMotMOT_RG_ORGAO: TStringField
      FieldName = 'MOT_RG_ORGAO'
      Size = 6
    end
    object qrMotMOT_CNH: TStringField
      FieldName = 'MOT_CNH'
      Size = 15
    end
    object qrMotMOT_CNH_CATEG: TStringField
      FieldName = 'MOT_CNH_CATEG'
      Size = 3
    end
    object qrMotMOT_CNH_VALID: TDateTimeField
      FieldName = 'MOT_CNH_VALID'
    end
    object qrMotMOT_PAI: TStringField
      FieldName = 'MOT_PAI'
      Size = 40
    end
    object qrMotMOT_MAE: TStringField
      FieldName = 'MOT_MAE'
      Size = 40
    end
    object qrMotMOT_TEL_PESS: TStringField
      FieldName = 'MOT_TEL_PESS'
      Size = 11
    end
    object qrMotMOT_TEL_COM: TStringField
      FieldName = 'MOT_TEL_COM'
      Size = 11
    end
    object qrMotMOT_PAMCARD: TStringField
      FieldName = 'MOT_PAMCARD'
      Size = 1
    end
    object qrMotMOT_PAMCARD_VIG: TDateTimeField
      FieldName = 'MOT_PAMCARD_VIG'
    end
    object qrMotMOT_ENDERECO_COMPL: TStringField
      FieldName = 'MOT_ENDERECO_COMPL'
    end
    object qrMotMOT_ENDERECO_BAIRRO: TStringField
      FieldName = 'MOT_ENDERECO_BAIRRO'
      Size = 40
    end
    object qrMotVEIC_ID: TIntegerField
      FieldName = 'VEIC_ID'
    end
    object qrMotMOT_VEIC_PLACA: TStringField
      FieldName = 'MOT_VEIC_PLACA'
      Size = 8
    end
    object qrMotMOT_VEIC_CIDADE: TStringField
      FieldName = 'MOT_VEIC_CIDADE'
      Size = 50
    end
    object qrMotMOT_VEIC_UF_SIGLA: TStringField
      FieldName = 'MOT_VEIC_UF_SIGLA'
      Size = 2
    end
    object qrMotMOT_VEIC_MARCA: TStringField
      FieldName = 'MOT_VEIC_MARCA'
      Size = 50
    end
    object qrMotMOT_VEIC_ANO: TStringField
      FieldName = 'MOT_VEIC_ANO'
      Size = 4
    end
    object qrMotMOT_VEIC_MODELO: TStringField
      FieldName = 'MOT_VEIC_MODELO'
      Size = 40
    end
    object qrMotMOT_VEIC_COR: TStringField
      FieldName = 'MOT_VEIC_COR'
    end
    object qrMotMOT_VEIC_CHASSI: TStringField
      FieldName = 'MOT_VEIC_CHASSI'
      Size = 60
    end
    object qrMotMOT_CARRETA_PLACA: TStringField
      FieldName = 'MOT_CARRETA_PLACA'
      Size = 8
    end
    object qrMotMOT_CARRETA_CIDADE: TStringField
      FieldName = 'MOT_CARRETA_CIDADE'
      Size = 50
    end
    object qrMotMOT_CARRETA_UF_SIGLA: TStringField
      FieldName = 'MOT_CARRETA_UF_SIGLA'
      Size = 2
    end
    object qrMotMOT_CARRETA_MARCA: TStringField
      FieldName = 'MOT_CARRETA_MARCA'
      Size = 50
    end
    object qrMotMOT_CARRETA_ANO: TStringField
      FieldName = 'MOT_CARRETA_ANO'
      Size = 4
    end
    object qrMotMOT_CARRETA_MODELO: TStringField
      FieldName = 'MOT_CARRETA_MODELO'
      Size = 40
    end
    object qrMotMOT_CARRETA_COR: TStringField
      FieldName = 'MOT_CARRETA_COR'
    end
    object qrMotMOT_CARRETA_CHASSI: TStringField
      FieldName = 'MOT_CARRETA_CHASSI'
      Size = 60
    end
    object qrMotMOT_PAMC_NUM: TStringField
      FieldName = 'MOT_PAMC_NUM'
      Size = 15
    end
    object qrMotMOT_NUMPIS: TStringField
      FieldName = 'MOT_NUMPIS'
      Size = 15
    end
    object qrMotMOT_CARRETA_COMPR: TFloatField
      FieldName = 'MOT_CARRETA_COMPR'
    end
    object qrMotMOT_CARRETA_LARG: TFloatField
      FieldName = 'MOT_CARRETA_LARG'
    end
    object qrMotMOT_CARRETA_ALT: TFloatField
      FieldName = 'MOT_CARRETA_ALT'
    end
    object qrMotMOT_CARRETA_M3: TFloatField
      FieldName = 'MOT_CARRETA_M3'
    end
    object qrMotMOT_NEXTEL: TStringField
      FieldName = 'MOT_NEXTEL'
      Size = 50
    end
    object qrMotMOT_EQUIP: TStringField
      FieldName = 'MOT_EQUIP'
      Size = 50
    end
  end
  object qrClinNBF: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <
      item
        Name = 'CLIN_ID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT A.*, B.MUN_NOME FROM CLIENTENBF A'
      'INNER JOIN MUNICIPIO B ON'
      'A.MUN_ID = B.MUN_ID'
      'WHERE CLIN_ID = :CLIN_ID')
    Left = 40
    Top = 120
    object qrClinNBFCLIN_ID: TAutoIncField
      FieldName = 'CLIN_ID'
      ReadOnly = True
    end
    object qrClinNBFCLIN_PESSOA: TStringField
      FieldName = 'CLIN_PESSOA'
      Size = 1
    end
    object qrClinNBFCLIN_RAZA: TStringField
      FieldName = 'CLIN_RAZA'
      Size = 50
    end
    object qrClinNBFCLIN_NOME: TStringField
      FieldName = 'CLIN_NOME'
      Size = 30
    end
    object qrClinNBFCLIN_CGCCPF: TStringField
      FieldName = 'CLIN_CGCCPF'
      Size = 15
    end
    object qrClinNBFCLIN_INSCRG: TStringField
      FieldName = 'CLIN_INSCRG'
      Size = 15
    end
    object qrClinNBFCLIN_ENDERECO: TStringField
      FieldName = 'CLIN_ENDERECO'
      Size = 50
    end
    object qrClinNBFCLIN_ENDERECO_COMPL: TStringField
      FieldName = 'CLIN_ENDERECO_COMPL'
      Size = 35
    end
    object qrClinNBFCLIN_ENDERECO_BAIRRO: TStringField
      FieldName = 'CLIN_ENDERECO_BAIRRO'
      Size = 40
    end
    object qrClinNBFCLIN_MUNICIPIO: TStringField
      FieldName = 'CLIN_MUNICIPIO'
      Size = 40
    end
    object qrClinNBFUF_SIGLA: TStringField
      FieldName = 'UF_SIGLA'
      Size = 2
    end
    object qrClinNBFCLIN_CEP: TStringField
      FieldName = 'CLIN_CEP'
      Size = 8
    end
    object qrClinNBFCLIN_TEL1: TStringField
      FieldName = 'CLIN_TEL1'
      Size = 11
    end
    object qrClinNBFCLIN_TEL2: TStringField
      FieldName = 'CLIN_TEL2'
      Size = 11
    end
    object qrClinNBFCLIN_FAX: TStringField
      FieldName = 'CLIN_FAX'
      Size = 11
    end
    object qrClinNBFCLIN_EMAIL: TStringField
      FieldName = 'CLIN_EMAIL'
      Size = 60
    end
    object qrClinNBFCON_CODI: TStringField
      FieldName = 'CON_CODI'
      Size = 6
    end
    object qrClinNBFCLIN_CONTRATO: TStringField
      FieldName = 'CLIN_CONTRATO'
      Size = 1
    end
    object qrClinNBFCLIN_UTIL_COD: TStringField
      FieldName = 'CLIN_UTIL_COD'
      Size = 1
    end
    object qrClinNBFMUN_ID: TIntegerField
      FieldName = 'MUN_ID'
    end
    object qrClinNBFCLIN_WEB: TStringField
      FieldName = 'CLIN_WEB'
      FixedChar = True
      Size = 60
    end
    object qrClinNBFCLIN_ENDC: TStringField
      FieldName = 'CLIN_ENDC'
      Size = 50
    end
    object qrClinNBFCLIN_END_COMPLC: TStringField
      FieldName = 'CLIN_END_COMPLC'
      Size = 35
    end
    object qrClinNBFCLIN_END_BAIRC: TStringField
      FieldName = 'CLIN_END_BAIRC'
      Size = 40
    end
    object qrClinNBFCLIN_MUNICC: TStringField
      FieldName = 'CLIN_MUNICC'
      Size = 40
    end
    object qrClinNBFUF_SIGLAC: TStringField
      FieldName = 'UF_SIGLAC'
      Size = 2
    end
    object qrClinNBFCLIN_CEPC: TStringField
      FieldName = 'CLIN_CEPC'
      Size = 8
    end
    object qrClinNBFCLIN_TELC: TStringField
      FieldName = 'CLIN_TELC'
      Size = 11
    end
    object qrClinNBFCLIN_FAXC: TStringField
      FieldName = 'CLIN_FAXC'
      Size = 11
    end
    object qrClinNBFCLIN_EMAILC: TStringField
      FieldName = 'CLIN_EMAILC'
      Size = 60
    end
    object qrClinNBFMUN_IDC: TIntegerField
      FieldName = 'MUN_IDC'
    end
    object qrClinNBFCLIN_TIPOSALDO: TStringField
      FieldName = 'CLIN_TIPOSALDO'
      Size = 1
    end
    object qrClinNBFCLIN_VLRSALDO: TFloatField
      FieldName = 'CLIN_VLRSALDO'
    end
    object qrClinNBFCLIN_TPMERC: TStringField
      FieldName = 'CLIN_TPMERC'
      Size = 50
    end
    object qrClinNBFCLIN_LOTE: TStringField
      FieldName = 'CLIN_LOTE'
      Size = 1
    end
    object qrClinNBFCLIN_ISS: TFloatField
      FieldName = 'CLIN_ISS'
    end
    object qrClinNBFCLIN_DESCONTO: TFloatField
      FieldName = 'CLIN_DESCONTO'
    end
    object qrClinNBFRemanejaSN: TStringField
      FieldName = 'RemanejaSN'
      Size = 1
    end
    object qrClinNBFIBGE_ID: TIntegerField
      FieldName = 'IBGE_ID'
    end
    object qrClinNBFMUN_NOME: TStringField
      FieldName = 'MUN_NOME'
      Size = 40
    end
  end
  object qrClinFinal: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <
      item
        Name = 'CLIF_ID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT A.*, B.MUN_NOME FROM CLIENTEFINAL A'
      'INNER JOIN MUNICIPIO B ON'
      'A.MUN_ID = B.MUN_ID'
      'WHERE CLIF_ID = :CLIF_ID')
    Left = 40
    Top = 184
    object qrClinFinalCLIF_ID: TAutoIncField
      FieldName = 'CLIF_ID'
      ReadOnly = True
    end
    object qrClinFinalCLIF_PESSOA: TStringField
      FieldName = 'CLIF_PESSOA'
      Size = 1
    end
    object qrClinFinalCLIF_RAZA: TStringField
      FieldName = 'CLIF_RAZA'
      Size = 50
    end
    object qrClinFinalCLIF_NOME: TStringField
      FieldName = 'CLIF_NOME'
      Size = 30
    end
    object qrClinFinalCLIF_CGCCPF: TStringField
      FieldName = 'CLIF_CGCCPF'
      Size = 15
    end
    object qrClinFinalCLIF_INSCRG: TStringField
      FieldName = 'CLIF_INSCRG'
      Size = 15
    end
    object qrClinFinalCLIF_ENDERECO: TStringField
      FieldName = 'CLIF_ENDERECO'
      Size = 50
    end
    object qrClinFinalCLIF_ENDERECO_COMPL: TStringField
      FieldName = 'CLIF_ENDERECO_COMPL'
    end
    object qrClinFinalCLIF_ENDERECO_BAIRRO: TStringField
      FieldName = 'CLIF_ENDERECO_BAIRRO'
      Size = 40
    end
    object qrClinFinalCLIF_MUNICIPIO: TStringField
      FieldName = 'CLIF_MUNICIPIO'
      Size = 40
    end
    object qrClinFinalCLIF_MUNICIPIO2: TStringField
      FieldName = 'CLIF_MUNICIPIO2'
      Size = 40
    end
    object qrClinFinalUF_SIGLA: TStringField
      FieldName = 'UF_SIGLA'
      Size = 2
    end
    object qrClinFinalCLIF_CEP: TStringField
      FieldName = 'CLIF_CEP'
      Size = 8
    end
    object qrClinFinalCLIF_TEL1: TStringField
      FieldName = 'CLIF_TEL1'
      Size = 11
    end
    object qrClinFinalCLIF_TEL2: TStringField
      FieldName = 'CLIF_TEL2'
      Size = 11
    end
    object qrClinFinalCLIF_FAX: TStringField
      FieldName = 'CLIF_FAX'
      Size = 11
    end
    object qrClinFinalCLIF_EMAIL: TStringField
      FieldName = 'CLIF_EMAIL'
      Size = 60
    end
    object qrClinFinalCLIF_CONTATO: TStringField
      FieldName = 'CLIF_CONTATO'
      Size = 50
    end
    object qrClinFinalMUN_ID: TIntegerField
      FieldName = 'MUN_ID'
    end
    object qrClinFinalCLIF_CARGAPALLET: TStringField
      FieldName = 'CLIF_CARGAPALLET'
      Size = 1
    end
    object qrClinFinalCLIE_ENDERECO: TStringField
      FieldName = 'CLIE_ENDERECO'
      Size = 50
    end
    object qrClinFinalCLIE_ENDERECO_COMPL: TStringField
      FieldName = 'CLIE_ENDERECO_COMPL'
    end
    object qrClinFinalCLIE_ENDERECO_BAIRRO: TStringField
      FieldName = 'CLIE_ENDERECO_BAIRRO'
      Size = 40
    end
    object qrClinFinalCLIE_MUNICIPIO: TStringField
      FieldName = 'CLIE_MUNICIPIO'
      Size = 40
    end
    object qrClinFinalCLIE_MUN_ID: TIntegerField
      FieldName = 'CLIE_MUN_ID'
    end
    object qrClinFinalCLIE_UF_SIGLA: TStringField
      FieldName = 'CLIE_UF_SIGLA'
      Size = 2
    end
    object qrClinFinalCLIE_CEP: TStringField
      FieldName = 'CLIE_CEP'
      Size = 8
    end
    object qrClinFinalCLI_HORARIO: TStringField
      FieldName = 'CLI_HORARIO'
      Size = 5
    end
    object qrClinFinalCLI_VL_DESCARGA: TFloatField
      FieldName = 'CLI_VL_DESCARGA'
    end
    object qrClinFinalCLI_OBS: TStringField
      FieldName = 'CLI_OBS'
      Size = 4000
    end
    object qrClinFinalCLI_UNCOBRACA: TStringField
      FieldName = 'CLI_UNCOBRACA'
      Size = 50
    end
    object qrClinFinalIBGE_ID: TIntegerField
      FieldName = 'IBGE_ID'
    end
    object qrClinFinalMUN_NOME: TStringField
      FieldName = 'MUN_NOME'
      Size = 40
    end
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '*.txt'
    Filter = 'TextFile|*.txt'
    Left = 544
    Top = 136
  end
  object qrAux: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    Left = 272
    Top = 136
  end
end
