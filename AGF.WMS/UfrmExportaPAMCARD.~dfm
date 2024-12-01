object frmExportaPAMCARD: TfrmExportaPAMCARD
  Left = 274
  Top = 64
  Width = 800
  Height = 600
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  Caption = 'Exportação de informações PAMCARD'
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
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 784
    Height = 43
    Align = alTop
    Caption = 'Pasta destino'
    TabOrder = 1
    object edtDiretorio: TEdit
      Left = 8
      Top = 17
      Width = 721
      Height = 22
      Enabled = False
      TabOrder = 0
    end
    object Button2: TButton
      Left = 735
      Top = 12
      Width = 27
      Height = 25
      Caption = '...'
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 43
    Width = 784
    Height = 71
    Align = alTop
    Caption = 
      'Informe a data dos conhecimentos a serem transmitidos(os conheci' +
      'mentos devem ter os valores confirmados)'
    TabOrder = 2
    object Label2: TLabel
      Left = 16
      Top = 32
      Width = 18
      Height = 14
      Caption = 'de:'
    end
    object Label3: TLabel
      Left = 144
      Top = 32
      Width = 22
      Height = 14
      Caption = 'até:'
    end
    object MaskEdit1: TMaskEdit
      Left = 40
      Top = 32
      Width = 89
      Height = 22
      EditMask = '99/99/9999'
      MaxLength = 10
      TabOrder = 0
      Text = '  /  /    '
    end
    object MaskEdit2: TMaskEdit
      Left = 176
      Top = 32
      Width = 89
      Height = 22
      EditMask = '99/99/9999'
      MaxLength = 10
      TabOrder = 1
      Text = '  /  /    '
    end
    object Button3: TButton
      Left = 304
      Top = 30
      Width = 106
      Height = 25
      Caption = 'Buscar'
      TabOrder = 2
      OnClick = Button3Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 528
    Width = 784
    Height = 34
    Align = alBottom
    TabOrder = 3
    object Label4: TLabel
      Left = 8
      Top = 8
      Width = 415
      Height = 14
      Caption = 
        'Para efetuar a geração dos dados, selecione os conhecimentos e c' +
        'lique em '
    end
    object Button4: TButton
      Left = 426
      Top = 3
      Width = 129
      Height = 25
      Caption = 'Exportar dados'
      TabOrder = 0
      OnClick = Button4Click
    end
  end
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 114
    Width = 784
    Height = 414
    ControlType.Strings = (
      'PAMCARD_SEL;CheckBox;S;N'
      'SEL_CIOT;CheckBox;S;N')
    Selected.Strings = (
      'SEL_CIOT'#9'1'#9'***'#9'F'
      'MANI_ID'#9'10'#9'Manifesto'#9'F'
      'MANI_DATA'#9'18'#9'Data Manifesto'#9'F'
      'CIOT'#9'20'#9'CIOT'#9'F'
      'PROTOCOLO_ANTT'#9'20'#9'PROTOCOLO ANTT'#9'F')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = DataSource1
    TabOrder = 4
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    IndicatorColor = icBlack
  end
  object Panel1: TPanel
    Left = 640
    Top = 56
    Width = 729
    Height = 489
    TabOrder = 0
    Visible = False
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 175
      Height = 14
      Caption = 'Selecione a pasta de destino'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RzShellTree1: TRzShellTree
      Left = 16
      Top = 36
      Width = 697
      Height = 269
      Indent = 19
      TabOrder = 0
    end
    object Button1: TButton
      Left = 16
      Top = 312
      Width = 121
      Height = 25
      Caption = 'Confirmar'
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object qrBusca: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT '
      #9'B.MANI_ID,'
      #9'B.MANI_DATA,'
      #9'CIOT,'
      #9'PROTOCOLO_ANTT,'
      #9'SEL_CIOT'
      'from ORDEM_COLETA_ENTREGA A inner JOIN MANIFESTO B'
      
        'ON A. MANI_ID = B.MANI_ID left outer JOIN TRANSPORTADORA_MOTORIS' +
        'TA C'
      'ON B.MOT_ID = C.MOT_ID INNER JOIN OEC_AUX D'
      'ON A.ORD_ID = D.ORD_ID INNER JOIN TRANSPORTADORA E'
      'ON B.TRANS_ID = E.TRANS_ID')
    Left = 176
    Top = 160
    object qrBuscaSEL_CIOT: TStringField
      DisplayLabel = '***'
      DisplayWidth = 1
      FieldName = 'SEL_CIOT'
      ProviderFlags = [pfInUpdate]
      OnChange = qrBuscaSEL_CIOTChange
      Size = 1
    end
    object qrBuscaMANI_ID: TAutoIncField
      DisplayLabel = 'Manifesto'
      DisplayWidth = 10
      FieldName = 'MANI_ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qrBuscaMANI_DATA: TDateTimeField
      DisplayLabel = 'Data Manifesto'
      DisplayWidth = 18
      FieldName = 'MANI_DATA'
      ProviderFlags = []
    end
    object qrBuscaCIOT: TStringField
      DisplayWidth = 20
      FieldName = 'CIOT'
      ProviderFlags = []
    end
    object qrBuscaPROTOCOLO_ANTT: TStringField
      DisplayLabel = 'PROTOCOLO ANTT'
      DisplayWidth = 20
      FieldName = 'PROTOCOLO_ANTT'
      ProviderFlags = []
    end
  end
  object qrDados: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'MANI_ID'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select B.*, C.*, E.*, '
      #9'A.ORD_COLETA_ENTREGA,'
      #9'A.MUN_ID_COL,'
      #9'(select top 1 PAR_CNPJ from PARAMETRO) as cnpj,'
      
        #9'(SELECT IB.COD_MUN FROM MUNICIPIO MUN INNER JOIN TB_IBGE IB ON ' +
        'MUN.IBGE_ID = IB.ID WHERE MUN.MUN_ID = E.MUN_ID) AS IBGE_MOT,'
      
        '(SELECT CATEGORIA FROM TPVEICULO WHERE VEIC_ID = C.VEIC_ID) VEIC' +
        '_CATEGORIA'
      'from ORDEM_COLETA_ENTREGA A INNER JOIN MANIFESTO B'
      'ON A. MANI_ID = B.MANI_ID INNER JOIN TRANSPORTADORA_MOTORISTA C'
      'ON B.MOT_ID = C.MOT_ID INNER JOIN OEC_AUX D'
      'ON A.ORD_ID = D.ORD_ID INNER JOIN TRANSPORTADORA E'
      'ON B.TRANS_ID = E.TRANS_ID'
      'WHERE B.MANI_ID = :MANI_ID')
    Left = 272
    Top = 160
    object qrDadosMANI_ID: TAutoIncField
      FieldName = 'MANI_ID'
      ReadOnly = True
    end
    object qrDadosMANI_TIPOCARGA: TStringField
      FieldName = 'MANI_TIPOCARGA'
      Size = 1
    end
    object qrDadosMANI_PESO: TFloatField
      FieldName = 'MANI_PESO'
    end
    object qrDadosMANI_QTDEPALLET: TIntegerField
      FieldName = 'MANI_QTDEPALLET'
    end
    object qrDadosMANI_VOLUME: TFloatField
      FieldName = 'MANI_VOLUME'
    end
    object qrDadosMANI_QTDEUV: TFloatField
      FieldName = 'MANI_QTDEUV'
    end
    object qrDadosTRANS_ID: TIntegerField
      FieldName = 'TRANS_ID'
    end
    object qrDadosMOT_ID: TIntegerField
      FieldName = 'MOT_ID'
    end
    object qrDadosVEIC_ID: TIntegerField
      FieldName = 'VEIC_ID'
    end
    object qrDadosMANI_DATA: TDateTimeField
      FieldName = 'MANI_DATA'
    end
    object qrDadosMANI_CENDERECO: TStringField
      FieldName = 'MANI_CENDERECO'
      Size = 50
    end
    object qrDadosMANI_CENDERECOCOMPL: TStringField
      FieldName = 'MANI_CENDERECOCOMPL'
    end
    object qrDadosMANI_CENDERECOBAIRRO: TStringField
      FieldName = 'MANI_CENDERECOBAIRRO'
    end
    object qrDadosMANI_CMUNICIPIO: TStringField
      FieldName = 'MANI_CMUNICIPIO'
      Size = 40
    end
    object qrDadosMANI_CUF_SIGLA: TStringField
      FieldName = 'MANI_CUF_SIGLA'
      Size = 2
    end
    object qrDadosMANI_CCEP: TStringField
      FieldName = 'MANI_CCEP'
      Size = 8
    end
    object qrDadosMANI_CTEL1: TStringField
      FieldName = 'MANI_CTEL1'
      Size = 11
    end
    object qrDadosMANI_CTEL2: TStringField
      FieldName = 'MANI_CTEL2'
      Size = 11
    end
    object qrDadosMANI_CFAX: TStringField
      FieldName = 'MANI_CFAX'
      Size = 11
    end
    object qrDadosMANI_CEMAIL: TStringField
      FieldName = 'MANI_CEMAIL'
      Size = 60
    end
    object qrDadosMANI_CCONTATO: TStringField
      FieldName = 'MANI_CCONTATO'
      Size = 50
    end
    object qrDadosMANI_EENDERECO: TStringField
      FieldName = 'MANI_EENDERECO'
      Size = 50
    end
    object qrDadosMANI_EENDERECOCOMPL: TStringField
      FieldName = 'MANI_EENDERECOCOMPL'
    end
    object qrDadosMANI_EENDERECOBAIRRO: TStringField
      FieldName = 'MANI_EENDERECOBAIRRO'
    end
    object qrDadosMANI_EMUNICIPIO: TStringField
      FieldName = 'MANI_EMUNICIPIO'
      Size = 40
    end
    object qrDadosMANI_EUF_SIGLA: TStringField
      FieldName = 'MANI_EUF_SIGLA'
      Size = 2
    end
    object qrDadosMANI_ECEP: TStringField
      FieldName = 'MANI_ECEP'
      Size = 8
    end
    object qrDadosMANI_ETEL1: TStringField
      FieldName = 'MANI_ETEL1'
      Size = 11
    end
    object qrDadosMANI_ETEL2: TStringField
      FieldName = 'MANI_ETEL2'
      Size = 11
    end
    object qrDadosMANI_EFAX: TStringField
      FieldName = 'MANI_EFAX'
      Size = 11
    end
    object qrDadosMANI_EEMAIL: TStringField
      FieldName = 'MANI_EEMAIL'
      Size = 60
    end
    object qrDadosMANI_ECONTATO: TStringField
      FieldName = 'MANI_ECONTATO'
      Size = 50
    end
    object qrDadosPAR_ID: TIntegerField
      FieldName = 'PAR_ID'
    end
    object qrDadosCONFIRMA: TStringField
      FieldName = 'CONFIRMA'
      Size = 1
    end
    object qrDadosNFI_TRANS: TStringField
      FieldName = 'NFI_TRANS'
      Size = 1
    end
    object qrDadosVEIC_ID_FRETE: TIntegerField
      FieldName = 'VEIC_ID_FRETE'
    end
    object qrDadosREG_ID: TIntegerField
      FieldName = 'REG_ID'
    end
    object qrDadosMANI_ENT_COL: TStringField
      FieldName = 'MANI_ENT_COL'
      Size = 2
    end
    object qrDadosMANI_VFRETEPAG: TFloatField
      FieldName = 'MANI_VFRETEPAG'
    end
    object qrDadosCONFIRMA_MANI: TStringField
      FieldName = 'CONFIRMA_MANI'
      Size = 1
    end
    object qrDadosCLIN_ID: TIntegerField
      FieldName = 'CLIN_ID'
    end
    object qrDadosCTT_ID: TIntegerField
      FieldName = 'CTT_ID'
    end
    object qrDadosVEIC_ID_COBRA: TIntegerField
      FieldName = 'VEIC_ID_COBRA'
    end
    object qrDadosREG_ID_COBRA: TIntegerField
      FieldName = 'REG_ID_COBRA'
    end
    object qrDadosFRETE_NEGOCIA: TStringField
      FieldName = 'FRETE_NEGOCIA'
      Size = 1
    end
    object qrDadosVLR_NEGOCIA: TFloatField
      FieldName = 'VLR_NEGOCIA'
    end
    object qrDadosVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object qrDadosMANI_DTAGENDA: TDateTimeField
      FieldName = 'MANI_DTAGENDA'
    end
    object qrDadosMANI_HORAGENDA: TStringField
      FieldName = 'MANI_HORAGENDA'
      Size = 4
    end
    object qrDadosMANI_SOLICITANTE: TStringField
      FieldName = 'MANI_SOLICITANTE'
      Size = 30
    end
    object qrDadosMANI_AJUDANTE: TStringField
      FieldName = 'MANI_AJUDANTE'
      Size = 1
    end
    object qrDadosMANI_OBS: TStringField
      FieldName = 'MANI_OBS'
      Size = 30
    end
    object qrDadosCLIF_ID: TIntegerField
      FieldName = 'CLIF_ID'
    end
    object qrDadosMANI_NF: TStringField
      FieldName = 'MANI_NF'
      Size = 30
    end
    object qrDadosMANI_DT_TRANSP: TDateTimeField
      FieldName = 'MANI_DT_TRANSP'
    end
    object qrDadosMANI_MUN_IDC: TIntegerField
      FieldName = 'MANI_MUN_IDC'
    end
    object qrDadosFLAG: TStringField
      FieldName = 'FLAG'
      Size = 1
    end
    object qrDadosPGTO_FRETE: TStringField
      FieldName = 'PGTO_FRETE'
      FixedChar = True
      Size = 1
    end
    object qrDadosSEL: TStringField
      FieldName = 'SEL'
      FixedChar = True
      Size = 1
    end
    object qrDadosMANI_KM_IDA: TIntegerField
      FieldName = 'MANI_KM_IDA'
    end
    object qrDadosMANI_KM_TOTAL: TIntegerField
      FieldName = 'MANI_KM_TOTAL'
    end
    object qrDadosCHAVE: TStringField
      FieldName = 'CHAVE'
      Size = 150
    end
    object qrDadosNFS_GERAL: TStringField
      FieldName = 'NFS_GERAL'
      Size = 4000
    end
    object qrDadosMOT_EQUIP: TStringField
      FieldName = 'MOT_EQUIP'
      Size = 50
    end
    object qrDadosSEL_EXPORT: TStringField
      FieldName = 'SEL_EXPORT'
      Size = 1
    end
    object qrDadosMOT_ID_1: TAutoIncField
      FieldName = 'MOT_ID_1'
      ReadOnly = True
    end
    object qrDadosTRANS_ID_1: TIntegerField
      FieldName = 'TRANS_ID_1'
    end
    object qrDadosMOT_NOME: TStringField
      FieldName = 'MOT_NOME'
      Size = 40
    end
    object qrDadosMOT_ENDERECO: TStringField
      FieldName = 'MOT_ENDERECO'
      Size = 50
    end
    object qrDadosMOT_MUNICIPIO: TStringField
      FieldName = 'MOT_MUNICIPIO'
      Size = 40
    end
    object qrDadosMOT_CEP: TStringField
      FieldName = 'MOT_CEP'
      Size = 8
    end
    object qrDadosUF_SIGLA: TStringField
      FieldName = 'UF_SIGLA'
      Size = 2
    end
    object qrDadosMOT_CPF: TStringField
      FieldName = 'MOT_CPF'
      Size = 15
    end
    object qrDadosMOT_RG: TStringField
      FieldName = 'MOT_RG'
      Size = 15
    end
    object qrDadosMOT_DT_NASC: TDateTimeField
      FieldName = 'MOT_DT_NASC'
    end
    object qrDadosMOT_RG_ORGAO: TStringField
      FieldName = 'MOT_RG_ORGAO'
      Size = 6
    end
    object qrDadosMOT_CNH: TStringField
      FieldName = 'MOT_CNH'
      Size = 15
    end
    object qrDadosMOT_CNH_CATEG: TStringField
      FieldName = 'MOT_CNH_CATEG'
      Size = 3
    end
    object qrDadosMOT_CNH_VALID: TDateTimeField
      FieldName = 'MOT_CNH_VALID'
    end
    object qrDadosMOT_PAI: TStringField
      FieldName = 'MOT_PAI'
      Size = 40
    end
    object qrDadosMOT_MAE: TStringField
      FieldName = 'MOT_MAE'
      Size = 40
    end
    object qrDadosMOT_TEL_PESS: TStringField
      FieldName = 'MOT_TEL_PESS'
      Size = 11
    end
    object qrDadosMOT_TEL_COM: TStringField
      FieldName = 'MOT_TEL_COM'
      Size = 11
    end
    object qrDadosMOT_PAMCARD: TStringField
      FieldName = 'MOT_PAMCARD'
      Size = 1
    end
    object qrDadosMOT_PAMCARD_VIG: TDateTimeField
      FieldName = 'MOT_PAMCARD_VIG'
    end
    object qrDadosMOT_ENDERECO_COMPL: TStringField
      FieldName = 'MOT_ENDERECO_COMPL'
    end
    object qrDadosMOT_ENDERECO_BAIRRO: TStringField
      FieldName = 'MOT_ENDERECO_BAIRRO'
      Size = 40
    end
    object qrDadosVEIC_ID_1: TIntegerField
      FieldName = 'VEIC_ID_1'
    end
    object qrDadosMOT_VEIC_PLACA: TStringField
      FieldName = 'MOT_VEIC_PLACA'
      Size = 8
    end
    object qrDadosMOT_VEIC_CIDADE: TStringField
      FieldName = 'MOT_VEIC_CIDADE'
      Size = 50
    end
    object qrDadosMOT_VEIC_UF_SIGLA: TStringField
      FieldName = 'MOT_VEIC_UF_SIGLA'
      Size = 2
    end
    object qrDadosMOT_VEIC_MARCA: TStringField
      FieldName = 'MOT_VEIC_MARCA'
      Size = 50
    end
    object qrDadosMOT_VEIC_ANO: TStringField
      FieldName = 'MOT_VEIC_ANO'
      Size = 4
    end
    object qrDadosMOT_VEIC_MODELO: TStringField
      FieldName = 'MOT_VEIC_MODELO'
      Size = 40
    end
    object qrDadosMOT_VEIC_COR: TStringField
      FieldName = 'MOT_VEIC_COR'
    end
    object qrDadosMOT_VEIC_CHASSI: TStringField
      FieldName = 'MOT_VEIC_CHASSI'
      Size = 60
    end
    object qrDadosMOT_CARRETA_PLACA: TStringField
      FieldName = 'MOT_CARRETA_PLACA'
      Size = 8
    end
    object qrDadosMOT_CARRETA_CIDADE: TStringField
      FieldName = 'MOT_CARRETA_CIDADE'
      Size = 50
    end
    object qrDadosMOT_CARRETA_UF_SIGLA: TStringField
      FieldName = 'MOT_CARRETA_UF_SIGLA'
      Size = 2
    end
    object qrDadosMOT_CARRETA_MARCA: TStringField
      FieldName = 'MOT_CARRETA_MARCA'
      Size = 50
    end
    object qrDadosMOT_CARRETA_ANO: TStringField
      FieldName = 'MOT_CARRETA_ANO'
      Size = 4
    end
    object qrDadosMOT_CARRETA_MODELO: TStringField
      FieldName = 'MOT_CARRETA_MODELO'
      Size = 40
    end
    object qrDadosMOT_CARRETA_COR: TStringField
      FieldName = 'MOT_CARRETA_COR'
    end
    object qrDadosMOT_CARRETA_CHASSI: TStringField
      FieldName = 'MOT_CARRETA_CHASSI'
      Size = 60
    end
    object qrDadosMOT_PAMC_NUM: TStringField
      FieldName = 'MOT_PAMC_NUM'
      Size = 15
    end
    object qrDadosMOT_NUMPIS: TStringField
      FieldName = 'MOT_NUMPIS'
      Size = 15
    end
    object qrDadosMOT_CARRETA_COMPR: TFloatField
      FieldName = 'MOT_CARRETA_COMPR'
    end
    object qrDadosMOT_CARRETA_LARG: TFloatField
      FieldName = 'MOT_CARRETA_LARG'
    end
    object qrDadosMOT_CARRETA_ALT: TFloatField
      FieldName = 'MOT_CARRETA_ALT'
    end
    object qrDadosMOT_CARRETA_M3: TFloatField
      FieldName = 'MOT_CARRETA_M3'
    end
    object qrDadosMOT_NEXTEL: TStringField
      FieldName = 'MOT_NEXTEL'
      Size = 50
    end
    object qrDadosMOT_EQUIP_1: TStringField
      FieldName = 'MOT_EQUIP_1'
      Size = 50
    end
    object qrDadosRENAVAN: TStringField
      FieldName = 'RENAVAN'
      Size = 15
    end
    object qrDadosRNTRC: TStringField
      FieldName = 'RNTRC'
      Size = 10
    end
    object qrDadosTRANS_ID_2: TAutoIncField
      FieldName = 'TRANS_ID_2'
      ReadOnly = True
    end
    object qrDadosTRANS_FANTASIA: TStringField
      FieldName = 'TRANS_FANTASIA'
      Size = 40
    end
    object qrDadosTRANS_RAZA: TStringField
      FieldName = 'TRANS_RAZA'
      Size = 60
    end
    object qrDadosTRANS_CNPJ: TStringField
      FieldName = 'TRANS_CNPJ'
      Size = 15
    end
    object qrDadosTRANS_INSCRICAO: TStringField
      FieldName = 'TRANS_INSCRICAO'
      Size = 15
    end
    object qrDadosTRANS_ENDERECO: TStringField
      FieldName = 'TRANS_ENDERECO'
      Size = 50
    end
    object qrDadosTRANS_ENDERECO_COMPL: TStringField
      FieldName = 'TRANS_ENDERECO_COMPL'
    end
    object qrDadosTRANS_ENDERECO_BAIRRO: TStringField
      FieldName = 'TRANS_ENDERECO_BAIRRO'
      Size = 40
    end
    object qrDadosTRANS_MUNICIPIO: TStringField
      FieldName = 'TRANS_MUNICIPIO'
      Size = 40
    end
    object qrDadosTRANS_CEP: TStringField
      FieldName = 'TRANS_CEP'
      Size = 8
    end
    object qrDadosUF_SIGLA_1: TStringField
      FieldName = 'UF_SIGLA_1'
      Size = 2
    end
    object qrDadosTRANS_TEL: TStringField
      FieldName = 'TRANS_TEL'
      Size = 11
    end
    object qrDadosTRANS_TEL2: TStringField
      FieldName = 'TRANS_TEL2'
      Size = 11
    end
    object qrDadosTRANS_FAX: TStringField
      FieldName = 'TRANS_FAX'
      Size = 11
    end
    object qrDadosTRANS_EMAIL: TStringField
      FieldName = 'TRANS_EMAIL'
      Size = 60
    end
    object qrDadosTRANS_CONTATO: TStringField
      FieldName = 'TRANS_CONTATO'
      Size = 30
    end
    object qrDadosTRANS_FLAG: TStringField
      FieldName = 'TRANS_FLAG'
      Size = 1
    end
    object qrDadosCON_CODI: TStringField
      FieldName = 'CON_CODI'
      Size = 6
    end
    object qrDadosMUN_ID: TIntegerField
      FieldName = 'MUN_ID'
    end
    object qrDadosTRANS_PESSOA: TStringField
      FieldName = 'TRANS_PESSOA'
      FixedChar = True
      Size = 1
    end
    object qrDadosTRANS_REDES: TStringField
      FieldName = 'TRANS_REDES'
      Size = 1
    end
    object qrDadosPIS: TStringField
      FieldName = 'PIS'
      Size = 50
    end
    object qrDadosIBGE_ID: TIntegerField
      FieldName = 'IBGE_ID'
    end
    object qrDadoscnpj: TStringField
      FieldName = 'cnpj'
      ReadOnly = True
      Size = 15
    end
    object qrDadosIBGE_MOT: TIntegerField
      FieldName = 'IBGE_MOT'
      ReadOnly = True
    end
    object qrDadosVEIC_CATEGORIA: TStringField
      FieldName = 'VEIC_CATEGORIA'
      ReadOnly = True
      Size = 5
    end
    object qrDadosIBGE_ID_DESTINO: TIntegerField
      FieldName = 'IBGE_ID_DESTINO'
    end
    object qrDadosORD_COLETA_ENTREGA: TStringField
      FieldName = 'ORD_COLETA_ENTREGA'
      Size = 1
    end
    object qrDadosMUN_ID_COL: TIntegerField
      FieldName = 'MUN_ID_COL'
    end
  end
  object DataSource1: TDataSource
    DataSet = qrBusca
    Left = 464
    Top = 304
  end
  object qrAux: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    SQL.Strings = (
      'update MANIFESTO SET SEL_CIOT = '#39'N'#39' WHERE SEL_CIOT = '#39'S'#39)
    Left = 392
    Top = 184
  end
  object qrMunIbge: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <
      item
        Name = 'MUN_ID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT B.COD_MUN FROM MUNICIPIO A INNER JOIN TB_IBGE B ON A.IBGE' +
        '_ID = B.ID'
      'WHERE MUN_ID = :MUN_ID')
    Left = 272
    Top = 288
    object qrMunIbgeCOD_MUN: TIntegerField
      FieldName = 'COD_MUN'
    end
  end
  object qrClienteNBF: TADOQuery
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
      'SELECT *,'
      'dbo.CONTROLA_CNPJ( CLIN_CGCCPF) AS CNPJ FROM CLIENTENBF'
      'WHERE CLIN_ID = :CLIN_ID')
    Left = 392
    Top = 392
    object qrClienteNBFCLIN_ID: TAutoIncField
      FieldName = 'CLIN_ID'
      ReadOnly = True
    end
    object qrClienteNBFCLIN_PESSOA: TStringField
      FieldName = 'CLIN_PESSOA'
      Size = 1
    end
    object qrClienteNBFCLIN_RAZA: TStringField
      FieldName = 'CLIN_RAZA'
      Size = 50
    end
    object qrClienteNBFCLIN_NOME: TStringField
      FieldName = 'CLIN_NOME'
      Size = 30
    end
    object qrClienteNBFCLIN_CGCCPF: TStringField
      FieldName = 'CLIN_CGCCPF'
      Size = 15
    end
    object qrClienteNBFCLIN_INSCRG: TStringField
      FieldName = 'CLIN_INSCRG'
      Size = 15
    end
    object qrClienteNBFCLIN_ENDERECO: TStringField
      FieldName = 'CLIN_ENDERECO'
      Size = 50
    end
    object qrClienteNBFCLIN_ENDERECO_COMPL: TStringField
      FieldName = 'CLIN_ENDERECO_COMPL'
      Size = 35
    end
    object qrClienteNBFCLIN_ENDERECO_BAIRRO: TStringField
      FieldName = 'CLIN_ENDERECO_BAIRRO'
      Size = 40
    end
    object qrClienteNBFCLIN_MUNICIPIO: TStringField
      FieldName = 'CLIN_MUNICIPIO'
      Size = 40
    end
    object qrClienteNBFUF_SIGLA: TStringField
      FieldName = 'UF_SIGLA'
      Size = 2
    end
    object qrClienteNBFCLIN_CEP: TStringField
      FieldName = 'CLIN_CEP'
      Size = 8
    end
    object qrClienteNBFCLIN_TEL1: TStringField
      FieldName = 'CLIN_TEL1'
      Size = 11
    end
    object qrClienteNBFCLIN_TEL2: TStringField
      FieldName = 'CLIN_TEL2'
      Size = 11
    end
    object qrClienteNBFCLIN_FAX: TStringField
      FieldName = 'CLIN_FAX'
      Size = 11
    end
    object qrClienteNBFCLIN_EMAIL: TStringField
      FieldName = 'CLIN_EMAIL'
      Size = 60
    end
    object qrClienteNBFCON_CODI: TStringField
      FieldName = 'CON_CODI'
      Size = 6
    end
    object qrClienteNBFCLIN_CONTRATO: TStringField
      FieldName = 'CLIN_CONTRATO'
      Size = 1
    end
    object qrClienteNBFCLIN_UTIL_COD: TStringField
      FieldName = 'CLIN_UTIL_COD'
      Size = 1
    end
    object qrClienteNBFMUN_ID: TIntegerField
      FieldName = 'MUN_ID'
    end
    object qrClienteNBFCLIN_WEB: TStringField
      FieldName = 'CLIN_WEB'
      FixedChar = True
      Size = 60
    end
    object qrClienteNBFCLIN_ENDC: TStringField
      FieldName = 'CLIN_ENDC'
      Size = 50
    end
    object qrClienteNBFCLIN_END_COMPLC: TStringField
      FieldName = 'CLIN_END_COMPLC'
      Size = 35
    end
    object qrClienteNBFCLIN_END_BAIRC: TStringField
      FieldName = 'CLIN_END_BAIRC'
      Size = 40
    end
    object qrClienteNBFCLIN_MUNICC: TStringField
      FieldName = 'CLIN_MUNICC'
      Size = 40
    end
    object qrClienteNBFUF_SIGLAC: TStringField
      FieldName = 'UF_SIGLAC'
      Size = 2
    end
    object qrClienteNBFCLIN_CEPC: TStringField
      FieldName = 'CLIN_CEPC'
      Size = 8
    end
    object qrClienteNBFCLIN_TELC: TStringField
      FieldName = 'CLIN_TELC'
      Size = 11
    end
    object qrClienteNBFCLIN_FAXC: TStringField
      FieldName = 'CLIN_FAXC'
      Size = 11
    end
    object qrClienteNBFCLIN_EMAILC: TStringField
      FieldName = 'CLIN_EMAILC'
      Size = 60
    end
    object qrClienteNBFMUN_IDC: TIntegerField
      FieldName = 'MUN_IDC'
    end
    object qrClienteNBFCLIN_TIPOSALDO: TStringField
      FieldName = 'CLIN_TIPOSALDO'
      Size = 1
    end
    object qrClienteNBFCLIN_VLRSALDO: TFloatField
      FieldName = 'CLIN_VLRSALDO'
    end
    object qrClienteNBFCLIN_TPMERC: TStringField
      FieldName = 'CLIN_TPMERC'
      Size = 50
    end
    object qrClienteNBFCLIN_LOTE: TStringField
      FieldName = 'CLIN_LOTE'
      Size = 1
    end
    object qrClienteNBFCLIN_ISS: TFloatField
      FieldName = 'CLIN_ISS'
    end
    object qrClienteNBFCLIN_DESCONTO: TFloatField
      FieldName = 'CLIN_DESCONTO'
    end
    object qrClienteNBFRemanejaSN: TStringField
      FieldName = 'RemanejaSN'
      Size = 1
    end
    object qrClienteNBFIBGE_ID: TIntegerField
      FieldName = 'IBGE_ID'
    end
    object qrClienteNBFCNPJ: TStringField
      FieldName = 'CNPJ'
      ReadOnly = True
      Size = 14
    end
  end
  object qrFinal: TADOQuery
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
      'SELECT *,'
      'dbo.CONTROLA_CNPJ( CLIF_CGCCPF) AS CNPJ'
      ' FROM CLIENTEFINAL'
      'WHERE CLIF_ID = :CLIF_ID')
    Left = 88
    Top = 304
    object qrFinalCLIF_ID: TAutoIncField
      FieldName = 'CLIF_ID'
      ReadOnly = True
    end
    object qrFinalCLIF_PESSOA: TStringField
      FieldName = 'CLIF_PESSOA'
      Size = 1
    end
    object qrFinalCLIF_RAZA: TStringField
      FieldName = 'CLIF_RAZA'
      Size = 50
    end
    object qrFinalCLIF_NOME: TStringField
      FieldName = 'CLIF_NOME'
      Size = 30
    end
    object qrFinalCLIF_CGCCPF: TStringField
      FieldName = 'CLIF_CGCCPF'
      Size = 15
    end
    object qrFinalCLIF_INSCRG: TStringField
      FieldName = 'CLIF_INSCRG'
      Size = 15
    end
    object qrFinalCLIF_ENDERECO: TStringField
      FieldName = 'CLIF_ENDERECO'
      Size = 50
    end
    object qrFinalCLIF_ENDERECO_COMPL: TStringField
      FieldName = 'CLIF_ENDERECO_COMPL'
    end
    object qrFinalCLIF_ENDERECO_BAIRRO: TStringField
      FieldName = 'CLIF_ENDERECO_BAIRRO'
      Size = 40
    end
    object qrFinalCLIF_MUNICIPIO: TStringField
      FieldName = 'CLIF_MUNICIPIO'
      Size = 40
    end
    object qrFinalCLIF_MUNICIPIO2: TStringField
      FieldName = 'CLIF_MUNICIPIO2'
      Size = 40
    end
    object qrFinalUF_SIGLA: TStringField
      FieldName = 'UF_SIGLA'
      Size = 2
    end
    object qrFinalCLIF_CEP: TStringField
      FieldName = 'CLIF_CEP'
      Size = 8
    end
    object qrFinalCLIF_TEL1: TStringField
      FieldName = 'CLIF_TEL1'
      Size = 11
    end
    object qrFinalCLIF_TEL2: TStringField
      FieldName = 'CLIF_TEL2'
      Size = 11
    end
    object qrFinalCLIF_FAX: TStringField
      FieldName = 'CLIF_FAX'
      Size = 11
    end
    object qrFinalCLIF_EMAIL: TStringField
      FieldName = 'CLIF_EMAIL'
      Size = 60
    end
    object qrFinalCLIF_CONTATO: TStringField
      FieldName = 'CLIF_CONTATO'
      Size = 50
    end
    object qrFinalMUN_ID: TIntegerField
      FieldName = 'MUN_ID'
    end
    object qrFinalCLIF_CARGAPALLET: TStringField
      FieldName = 'CLIF_CARGAPALLET'
      Size = 1
    end
    object qrFinalCLIE_ENDERECO: TStringField
      FieldName = 'CLIE_ENDERECO'
      Size = 50
    end
    object qrFinalCLIE_ENDERECO_COMPL: TStringField
      FieldName = 'CLIE_ENDERECO_COMPL'
    end
    object qrFinalCLIE_ENDERECO_BAIRRO: TStringField
      FieldName = 'CLIE_ENDERECO_BAIRRO'
      Size = 40
    end
    object qrFinalCLIE_MUNICIPIO: TStringField
      FieldName = 'CLIE_MUNICIPIO'
      Size = 40
    end
    object qrFinalCLIE_MUN_ID: TIntegerField
      FieldName = 'CLIE_MUN_ID'
    end
    object qrFinalCLIE_UF_SIGLA: TStringField
      FieldName = 'CLIE_UF_SIGLA'
      Size = 2
    end
    object qrFinalCLIE_CEP: TStringField
      FieldName = 'CLIE_CEP'
      Size = 8
    end
    object qrFinalCLI_HORARIO: TStringField
      FieldName = 'CLI_HORARIO'
      Size = 5
    end
    object qrFinalCLI_VL_DESCARGA: TFloatField
      FieldName = 'CLI_VL_DESCARGA'
    end
    object qrFinalCLI_OBS: TStringField
      FieldName = 'CLI_OBS'
      Size = 4000
    end
    object qrFinalCLI_UNCOBRACA: TStringField
      FieldName = 'CLI_UNCOBRACA'
      Size = 50
    end
    object qrFinalIBGE_ID: TIntegerField
      FieldName = 'IBGE_ID'
    end
    object qrFinalCNPJ: TStringField
      FieldName = 'CNPJ'
      ReadOnly = True
      Size = 14
    end
  end
  object qrColetaNF: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <
      item
        Name = 'MANI_ID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT'
      #9'A.CNF_NF,'
      #9'A.SERIE,'
      #9'A.CNF_PALLETS,'
      #9#39#39' ESPECIE,'
      #9'A.CNF_PESO,'
      #9'A.CNF_VALOR,'
      #9'A.CLIF_ID,'
      #9'B.CLIN_ID'
      'FROM COLETA_NF A INNER JOIN MANIFESTO B'
      'ON A.MANI_ID = B.MANI_ID'
      'WHERE A.MANI_ID = :MANI_ID')
    Left = 560
    Top = 240
    object qrColetaNFCNF_NF: TStringField
      FieldName = 'CNF_NF'
      Size = 30
    end
    object qrColetaNFSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object qrColetaNFCNF_PALLETS: TIntegerField
      FieldName = 'CNF_PALLETS'
    end
    object qrColetaNFESPECIE: TStringField
      FieldName = 'ESPECIE'
      ReadOnly = True
      Size = 1
    end
    object qrColetaNFCNF_PESO: TFloatField
      FieldName = 'CNF_PESO'
    end
    object qrColetaNFCNF_VALOR: TFloatField
      FieldName = 'CNF_VALOR'
    end
    object qrColetaNFCLIF_ID: TIntegerField
      FieldName = 'CLIF_ID'
    end
    object qrColetaNFCLIN_ID: TIntegerField
      FieldName = 'CLIN_ID'
    end
  end
  object qrAux2: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    Left = 208
    Top = 232
  end
  object qrConhecimento: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <
      item
        Name = 'MANI_ID'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT'
      #9'A.ORD_CONH,'
      #9#39'U'#39' ORD_SERIE,'
      #9'A.ORD_QTDE_UV,'
      #9#39#39' ESPECIE,'
      #9'A.ORD_PESO_TOTAL,'
      #9'A.ORD_TOTALPREST,'
      #9'A.CLIF_ID,'
      #9'A.CLIN_ID,'
      
        '                 (SELECT SUM(ISNULL(N.NFI_VOL, 0.00)) FROM NF N ' +
        'WHERE ORD_ID = A.ORD_ID  ) AS CUBAGEM'
      'FROM ORDEM_COLETA_ENTREGA A'
      'WHERE A.MANI_ID = :MANI_ID'
      'ORDER BY A.ORD_CONH')
    Left = 200
    Top = 376
    object qrConhecimentoORD_CONH: TStringField
      FieldName = 'ORD_CONH'
      Size = 10
    end
    object qrConhecimentoORD_QTDE_UV: TFloatField
      FieldName = 'ORD_QTDE_UV'
    end
    object qrConhecimentoESPECIE: TStringField
      FieldName = 'ESPECIE'
      ReadOnly = True
      Size = 1
    end
    object qrConhecimentoORD_PESO_TOTAL: TFloatField
      FieldName = 'ORD_PESO_TOTAL'
    end
    object qrConhecimentoORD_TOTALPREST: TFloatField
      FieldName = 'ORD_TOTALPREST'
    end
    object qrConhecimentoCLIF_ID: TIntegerField
      FieldName = 'CLIF_ID'
    end
    object qrConhecimentoCLIN_ID: TIntegerField
      FieldName = 'CLIN_ID'
    end
    object qrConhecimentoORD_SERIE: TStringField
      FieldName = 'ORD_SERIE'
      ReadOnly = True
      Size = 1
    end
    object qrConhecimentoCUBAGEM: TFloatField
      FieldName = 'CUBAGEM'
      ReadOnly = True
    end
  end
end
