object frmREL_MANIFESTO_FILT: TfrmREL_MANIFESTO_FILT
  Left = 228
  Top = 123
  Width = 1093
  Height = 553
  Caption = 'Relatório de manifestos'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Verdana'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object JvGradientProgressBar1: TJvGradientProgressBar
    Left = 168
    Top = 272
    Width = 329
    Height = 17
    Smooth = True
    ParentColor = True
  end
  object lbProgress: TLabel
    Left = 168
    Top = 256
    Width = 143
    Height = 13
    Caption = 'Buscando Informações...'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object BitBtn1: TBitBtn
    Left = 8
    Top = 252
    Width = 153
    Height = 41
    Caption = 'GERAR ARQUIVO'
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 497
    Height = 65
    Caption = 'Período'
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 29
      Width = 19
      Height = 16
      Caption = 'De'
    end
    object Label2: TLabel
      Left = 236
      Top = 29
      Width = 25
      Height = 16
      Caption = 'Até'
    end
    object MaskEdit1: TMaskEdit
      Left = 56
      Top = 24
      Width = 121
      Height = 24
      EditMask = '99/99/9999'
      MaxLength = 10
      TabOrder = 0
      Text = '  /  /    '
    end
    object MaskEdit2: TMaskEdit
      Left = 328
      Top = 24
      Width = 121
      Height = 24
      EditMask = '99/99/9999'
      MaxLength = 10
      TabOrder = 1
      Text = '  /  /    '
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 88
    Width = 497
    Height = 65
    Caption = 'Cliente NBF'
    TabOrder = 2
    object cboClienteNBF: TwwDBLookupCombo
      Left = 16
      Top = 24
      Width = 465
      Height = 24
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'CLIN_RAZA'#9'50'#9'CLIN_RAZA'#9#9)
      LookupTable = cdsClienteNBF
      LookupField = 'CLIN_ID'
      TabOrder = 0
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnCloseUp = cboClienteNBFCloseUp
    end
  end
  object GroupBox3: TGroupBox
    Left = 8
    Top = 168
    Width = 497
    Height = 65
    Caption = 'Cliente Final'
    TabOrder = 3
    object cboClienteFinal: TwwDBLookupCombo
      Left = 16
      Top = 24
      Width = 465
      Height = 24
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'CLIF_RAZA'#9'50'#9'CLIF_RAZA'#9#9)
      LookupTable = CDSClienteFinal
      LookupField = 'CLIF_ID'
      TabOrder = 0
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
    end
  end
  object qrMani: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT TOP 1'
      #9'A.MANI_ID, '
      #9'A.MANI_DATA, '
      #9'A.VEIC_ID, '
      #9'A.REG_ID, '
      #9'A.MANI_VFRETEPAG, '
      '    SUM(B.ORD_PESO_TOTAL) AS PESO_TOTAL'
      'FROM '
      #9'MANIFESTO A WITH(NOLOCK)'
      #9'INNER JOIN ORDEM_COLETA_ENTREGA B ON A.MANI_ID = B.MANI_ID'
      'WHERE 1 = 1'
      'GROUP BY'
      #9'A.MANI_ID, '
      #9'A.MANI_DATA, '
      #9'A.VEIC_ID, '
      #9'A.REG_ID, '
      #9'A.MANI_VFRETEPAG '
      'ORDER BY A.MANI_ID')
    Left = 576
    Top = 16
    object qrManiMANI_ID: TAutoIncField
      FieldName = 'MANI_ID'
      ReadOnly = True
    end
    object qrManiMANI_DATA: TDateTimeField
      FieldName = 'MANI_DATA'
    end
    object qrManiVEIC_ID: TIntegerField
      FieldName = 'VEIC_ID'
    end
    object qrManiREG_ID: TIntegerField
      FieldName = 'REG_ID'
    end
    object qrManiMANI_VFRETEPAG: TFloatField
      FieldName = 'MANI_VFRETEPAG'
    end
    object qrManiPESO_TOTAL: TFloatField
      FieldName = 'PESO_TOTAL'
      ReadOnly = True
    end
  end
  object dspMani: TDataSetProvider
    DataSet = qrMani
    Constraints = True
    Left = 576
    Top = 64
  end
  object cdsMani: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMani'
    Left = 576
    Top = 112
    object cdsManiMANI_ID: TAutoIncField
      FieldName = 'MANI_ID'
      ReadOnly = True
    end
    object cdsManiMANI_DATA: TDateTimeField
      FieldName = 'MANI_DATA'
    end
    object cdsManiVEIC_ID: TIntegerField
      FieldName = 'VEIC_ID'
    end
    object cdsManiREG_ID: TIntegerField
      FieldName = 'REG_ID'
    end
    object cdsManiMANI_VFRETEPAG: TFloatField
      FieldName = 'MANI_VFRETEPAG'
    end
    object cdsManiPESO_TOTAL: TFloatField
      FieldName = 'PESO_TOTAL'
      ReadOnly = True
    end
  end
  object qrApagaRegistros: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <
      item
        Name = 'CH'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'DELETE FROM REL_MANIFESTO'
      'WHERE USUARIO = :CH')
    Left = 512
    Top = 16
  end
  object cdsRelManifesto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspRelManifesto'
    AfterPost = cdsRelManifestoAfterPost
    Left = 648
    Top = 112
    object cdsRelManifestoID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object cdsRelManifestoMANIFESTO: TIntegerField
      FieldName = 'MANIFESTO'
    end
    object cdsRelManifestoNOTAS: TStringField
      FieldName = 'NOTAS'
      Size = 50
    end
    object cdsRelManifestoQTDE_UV: TFloatField
      FieldName = 'QTDE_UV'
    end
    object cdsRelManifestoPESO: TFloatField
      FieldName = 'PESO'
    end
    object cdsRelManifestoVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object cdsRelManifestoDESTINATARIO: TStringField
      FieldName = 'DESTINATARIO'
      Size = 50
    end
    object cdsRelManifestoENTREGAS: TIntegerField
      FieldName = 'ENTREGAS'
    end
    object cdsRelManifestoVEICULOS: TIntegerField
      FieldName = 'VEICULOS'
    end
    object cdsRelManifestoDATA_MANI: TDateTimeField
      FieldName = 'DATA_MANI'
    end
    object cdsRelManifestoTIPO_VEICULO: TIntegerField
      FieldName = 'TIPO_VEICULO'
    end
    object cdsRelManifestoREGIAO: TIntegerField
      FieldName = 'REGIAO'
    end
    object cdsRelManifestoDATA_CONH: TDateTimeField
      FieldName = 'DATA_CONH'
    end
    object cdsRelManifestoFRETE: TFloatField
      FieldName = 'FRETE'
    end
    object cdsRelManifestoOUTROS: TFloatField
      FieldName = 'OUTROS'
    end
    object cdsRelManifestoICMS: TFloatField
      FieldName = 'ICMS'
    end
    object cdsRelManifestoTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object cdsRelManifestoFRETE_OP: TFloatField
      FieldName = 'FRETE_OP'
    end
    object cdsRelManifestoNSS_FRETE: TFloatField
      FieldName = 'NSS_FRETE'
    end
    object cdsRelManifestoOUTROS_OP: TFloatField
      FieldName = 'OUTROS_OP'
    end
    object cdsRelManifestoTOTAL_OP: TFloatField
      FieldName = 'TOTAL_OP'
    end
    object cdsRelManifestoUSUARIO: TIntegerField
      FieldName = 'USUARIO'
    end
    object cdsRelManifestoCONHECIMENTO: TStringField
      FieldName = 'CONHECIMENTO'
      Size = 10
    end
    object cdsRelManifestoRemetente: TStringField
      FieldName = 'Remetente'
      Size = 150
    end
    object cdsRelManifestoNFSE: TStringField
      FieldName = 'NFSE'
      Size = 500
    end
  end
  object qrRelManifesto: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'USUARIO'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT  * FROM REL_MANIFESTO'
      'WHERE USUARIO = :USUARIO')
    Left = 648
    Top = 16
    object qrRelManifestoID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object qrRelManifestoMANIFESTO: TIntegerField
      FieldName = 'MANIFESTO'
    end
    object qrRelManifestoNOTAS: TStringField
      FieldName = 'NOTAS'
      Size = 50
    end
    object qrRelManifestoQTDE_UV: TFloatField
      FieldName = 'QTDE_UV'
    end
    object qrRelManifestoPESO: TFloatField
      FieldName = 'PESO'
    end
    object qrRelManifestoVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object qrRelManifestoDESTINATARIO: TStringField
      FieldName = 'DESTINATARIO'
      Size = 50
    end
    object qrRelManifestoENTREGAS: TIntegerField
      FieldName = 'ENTREGAS'
    end
    object qrRelManifestoVEICULOS: TIntegerField
      FieldName = 'VEICULOS'
    end
    object qrRelManifestoDATA_MANI: TDateTimeField
      FieldName = 'DATA_MANI'
    end
    object qrRelManifestoTIPO_VEICULO: TIntegerField
      FieldName = 'TIPO_VEICULO'
    end
    object qrRelManifestoREGIAO: TIntegerField
      FieldName = 'REGIAO'
    end
    object qrRelManifestoDATA_CONH: TDateTimeField
      FieldName = 'DATA_CONH'
    end
    object qrRelManifestoFRETE: TFloatField
      FieldName = 'FRETE'
    end
    object qrRelManifestoOUTROS: TFloatField
      FieldName = 'OUTROS'
    end
    object qrRelManifestoICMS: TFloatField
      FieldName = 'ICMS'
    end
    object qrRelManifestoTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object qrRelManifestoFRETE_OP: TFloatField
      FieldName = 'FRETE_OP'
    end
    object qrRelManifestoNSS_FRETE: TFloatField
      FieldName = 'NSS_FRETE'
    end
    object qrRelManifestoOUTROS_OP: TFloatField
      FieldName = 'OUTROS_OP'
    end
    object qrRelManifestoTOTAL_OP: TFloatField
      FieldName = 'TOTAL_OP'
    end
    object qrRelManifestoUSUARIO: TIntegerField
      FieldName = 'USUARIO'
    end
    object qrRelManifestoCONHECIMENTO: TStringField
      FieldName = 'CONHECIMENTO'
      Size = 10
    end
    object qrRelManifestoRemetente: TStringField
      FieldName = 'Remetente'
      Size = 150
    end
    object qrRelManifestoNFSE: TStringField
      FieldName = 'NFSE'
      Size = 500
    end
  end
  object dspRelManifesto: TDataSetProvider
    DataSet = qrRelManifesto
    Constraints = True
    UpdateMode = upWhereKeyOnly
    Left = 648
    Top = 64
  end
  object qrClienteNBF: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    SQL.Strings = (
      'SELECT CLIN_RAZA, CLIN_ID FROM CLIENTENBF'
      'ORDER BY CLIN_RAZA')
    Left = 736
    Top = 16
    object qrClienteNBFCLIN_RAZA: TStringField
      FieldName = 'CLIN_RAZA'
      Size = 50
    end
    object qrClienteNBFCLIN_ID: TAutoIncField
      FieldName = 'CLIN_ID'
      ReadOnly = True
    end
  end
  object dspClienteNBF: TDataSetProvider
    DataSet = qrClienteNBF
    Constraints = True
    Left = 736
    Top = 64
  end
  object cdsClienteNBF: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspClienteNBF'
    Left = 736
    Top = 112
    object cdsClienteNBFCLIN_RAZA: TStringField
      DisplayWidth = 50
      FieldName = 'CLIN_RAZA'
      Size = 50
    end
    object cdsClienteNBFCLIN_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'CLIN_ID'
      ReadOnly = True
      Visible = False
    end
  end
  object qrClienteFinal: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT CLIF_RAZA, CLIF_ID FROM CLIENTEFINAL')
    Left = 816
    Top = 16
  end
  object DSPClienteFinal: TDataSetProvider
    DataSet = qrClienteFinal
    Constraints = True
    Left = 816
    Top = 64
  end
  object CDSClienteFinal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPClienteFinal'
    Left = 816
    Top = 112
    object CDSClienteFinalCLIF_RAZA: TStringField
      DisplayWidth = 50
      FieldName = 'CLIF_RAZA'
      Size = 50
    end
    object CDSClienteFinalCLIF_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'CLIF_ID'
      ReadOnly = True
      Visible = False
    end
  end
  object qrConhecimentos: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT  A.*, B.CLIF_RAZA, '#39#39' AS NFSE FROM ORDEM_COLETA_ENTREGA A' +
        ' INNER JOIN CLIENTEFINAL B ON A.CLIF_ID = B.CLIF_ID'
      'WHERE  A.ORD_STATUS = '#39'E'#39
      'ORDER BY ORD_CONH')
    Left = 912
    Top = 16
    object qrConhecimentosORD_ID: TAutoIncField
      FieldName = 'ORD_ID'
      ReadOnly = True
    end
    object qrConhecimentosOS_ID: TIntegerField
      FieldName = 'OS_ID'
    end
    object qrConhecimentosMANI_ID: TIntegerField
      FieldName = 'MANI_ID'
    end
    object qrConhecimentosTRANS_ID: TIntegerField
      FieldName = 'TRANS_ID'
    end
    object qrConhecimentosVEIC_ID: TIntegerField
      FieldName = 'VEIC_ID'
    end
    object qrConhecimentosVEIC_ID_RECEB: TIntegerField
      FieldName = 'VEIC_ID_RECEB'
    end
    object qrConhecimentosREG_ID: TIntegerField
      FieldName = 'REG_ID'
    end
    object qrConhecimentosORD_PESO_TOTAL: TFloatField
      FieldName = 'ORD_PESO_TOTAL'
    end
    object qrConhecimentosORD_QTDE_PALLET: TFloatField
      FieldName = 'ORD_QTDE_PALLET'
    end
    object qrConhecimentosORD_VOLUME: TFloatField
      FieldName = 'ORD_VOLUME'
    end
    object qrConhecimentosORD_VALORTOTAL: TFloatField
      FieldName = 'ORD_VALORTOTAL'
    end
    object qrConhecimentosORD_COLETA_ENTREGA: TStringField
      FieldName = 'ORD_COLETA_ENTREGA'
      Size = 1
    end
    object qrConhecimentosORD_COL_ENDERECO: TStringField
      FieldName = 'ORD_COL_ENDERECO'
      Size = 50
    end
    object qrConhecimentosORD_COL_ENDERECO_COMPL: TStringField
      FieldName = 'ORD_COL_ENDERECO_COMPL'
    end
    object qrConhecimentosORD_COL_ENDERECO_BAIRRO: TStringField
      FieldName = 'ORD_COL_ENDERECO_BAIRRO'
    end
    object qrConhecimentosMUN_ID_COL: TIntegerField
      FieldName = 'MUN_ID_COL'
    end
    object qrConhecimentosORD_COL_MUNICIPIO: TStringField
      FieldName = 'ORD_COL_MUNICIPIO'
      Size = 40
    end
    object qrConhecimentosUF_SIGLA_COL: TStringField
      FieldName = 'UF_SIGLA_COL'
      Size = 2
    end
    object qrConhecimentosORD_COL_CEP: TStringField
      FieldName = 'ORD_COL_CEP'
      Size = 8
    end
    object qrConhecimentosORD_COL_TEL1: TStringField
      FieldName = 'ORD_COL_TEL1'
      Size = 11
    end
    object qrConhecimentosORD_COL_TEL2: TStringField
      FieldName = 'ORD_COL_TEL2'
      Size = 11
    end
    object qrConhecimentosORD_COL_FAX: TStringField
      FieldName = 'ORD_COL_FAX'
      Size = 11
    end
    object qrConhecimentosORD_COL_EMAIL: TStringField
      FieldName = 'ORD_COL_EMAIL'
      Size = 60
    end
    object qrConhecimentosORD_COL_CONTATO: TStringField
      FieldName = 'ORD_COL_CONTATO'
      Size = 50
    end
    object qrConhecimentosORD_ENT_ENDERECO: TStringField
      FieldName = 'ORD_ENT_ENDERECO'
      Size = 50
    end
    object qrConhecimentosORD_ENT_ENDERECO_COMPL: TStringField
      FieldName = 'ORD_ENT_ENDERECO_COMPL'
    end
    object qrConhecimentosORD_ENT_ENDERECO_BAIRRO: TStringField
      FieldName = 'ORD_ENT_ENDERECO_BAIRRO'
    end
    object qrConhecimentosMUN_ID_ENT: TIntegerField
      FieldName = 'MUN_ID_ENT'
    end
    object qrConhecimentosORD_ENT_MUNICIPIO: TStringField
      FieldName = 'ORD_ENT_MUNICIPIO'
      Size = 40
    end
    object qrConhecimentosUF_SIGLA_ENT: TStringField
      FieldName = 'UF_SIGLA_ENT'
      Size = 2
    end
    object qrConhecimentosORD_ENT_CEP: TStringField
      FieldName = 'ORD_ENT_CEP'
      Size = 8
    end
    object qrConhecimentosORD_ENT_TEL1: TStringField
      FieldName = 'ORD_ENT_TEL1'
      Size = 11
    end
    object qrConhecimentosORD_ENT_TEL2: TStringField
      FieldName = 'ORD_ENT_TEL2'
      Size = 11
    end
    object qrConhecimentosORD_ENT_FAX: TStringField
      FieldName = 'ORD_ENT_FAX'
      Size = 11
    end
    object qrConhecimentosORD_ENT_EMAIL: TStringField
      FieldName = 'ORD_ENT_EMAIL'
      Size = 60
    end
    object qrConhecimentosORD_ENT_CONTATO: TStringField
      FieldName = 'ORD_ENT_CONTATO'
      Size = 50
    end
    object qrConhecimentosCLIF_ID: TIntegerField
      FieldName = 'CLIF_ID'
    end
    object qrConhecimentosORD_TPCARGA: TStringField
      FieldName = 'ORD_TPCARGA'
      Size = 1
    end
    object qrConhecimentosORD_QTDE_UV: TFloatField
      FieldName = 'ORD_QTDE_UV'
    end
    object qrConhecimentosORD_REDESPACHO: TStringField
      FieldName = 'ORD_REDESPACHO'
      Size = 1
    end
    object qrConhecimentosORD_PLACA: TStringField
      FieldName = 'ORD_PLACA'
      Size = 8
    end
    object qrConhecimentosCFA_ID: TIntegerField
      FieldName = 'CFA_ID'
    end
    object qrConhecimentosORD_TOTALPREST: TFloatField
      FieldName = 'ORD_TOTALPREST'
    end
    object qrConhecimentosORD_VLR_ICMS: TFloatField
      FieldName = 'ORD_VLR_ICMS'
    end
    object qrConhecimentosORD_NOTAS: TStringField
      FieldName = 'ORD_NOTAS'
      Size = 50
    end
    object qrConhecimentosTRANS_ID_REDES: TIntegerField
      FieldName = 'TRANS_ID_REDES'
    end
    object qrConhecimentosORD_PAGO: TStringField
      FieldName = 'ORD_PAGO'
      Size = 1
    end
    object qrConhecimentosCLIN_ID: TIntegerField
      FieldName = 'CLIN_ID'
    end
    object qrConhecimentosORD_CONSIGN: TStringField
      FieldName = 'ORD_CONSIGN'
      Size = 1
    end
    object qrConhecimentosORD_VLR_FRETE: TFloatField
      FieldName = 'ORD_VLR_FRETE'
    end
    object qrConhecimentosORD_VLR_SECCAT: TFloatField
      FieldName = 'ORD_VLR_SECCAT'
    end
    object qrConhecimentosORD_VLR_DESPACHO: TFloatField
      FieldName = 'ORD_VLR_DESPACHO'
    end
    object qrConhecimentosORD_VLR_PEDAGIO: TFloatField
      FieldName = 'ORD_VLR_PEDAGIO'
    end
    object qrConhecimentosORD_VLR_OUTROS: TFloatField
      FieldName = 'ORD_VLR_OUTROS'
    end
    object qrConhecimentosORD_CONH: TStringField
      FieldName = 'ORD_CONH'
      Size = 10
    end
    object qrConhecimentosORD_ALIQ: TFloatField
      FieldName = 'ORD_ALIQ'
    end
    object qrConhecimentosMARCADOR: TStringField
      FieldName = 'MARCADOR'
      Size = 1
    end
    object qrConhecimentosORD_MINUTA: TStringField
      FieldName = 'ORD_MINUTA'
      Size = 10
    end
    object qrConhecimentosORD_STATUS: TStringField
      FieldName = 'ORD_STATUS'
      Size = 1
    end
    object qrConhecimentosORD_DATA: TDateTimeField
      FieldName = 'ORD_DATA'
    end
    object qrConhecimentosORD_OBS: TStringField
      FieldName = 'ORD_OBS'
      Size = 50
    end
    object qrConhecimentosORD_GENERICO: TStringField
      FieldName = 'ORD_GENERICO'
      Size = 1
    end
    object qrConhecimentosCLIF_RAZA: TStringField
      FieldName = 'CLIF_RAZA'
      Size = 50
    end
    object qrConhecimentosNFSE: TStringField
      DisplayWidth = 500
      FieldName = 'NFSE'
      ReadOnly = True
      Size = 500
    end
  end
  object dspConhecimentos: TDataSetProvider
    DataSet = qrConhecimentos
    Constraints = True
    Left = 912
    Top = 64
  end
  object cdsConhecimentos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConhecimentos'
    Left = 912
    Top = 112
    object cdsConhecimentosORD_ID: TAutoIncField
      FieldName = 'ORD_ID'
      ReadOnly = True
    end
    object cdsConhecimentosOS_ID: TIntegerField
      FieldName = 'OS_ID'
    end
    object cdsConhecimentosMANI_ID: TIntegerField
      FieldName = 'MANI_ID'
    end
    object cdsConhecimentosTRANS_ID: TIntegerField
      FieldName = 'TRANS_ID'
    end
    object cdsConhecimentosVEIC_ID: TIntegerField
      FieldName = 'VEIC_ID'
    end
    object cdsConhecimentosVEIC_ID_RECEB: TIntegerField
      FieldName = 'VEIC_ID_RECEB'
    end
    object cdsConhecimentosREG_ID: TIntegerField
      FieldName = 'REG_ID'
    end
    object cdsConhecimentosORD_PESO_TOTAL: TFloatField
      FieldName = 'ORD_PESO_TOTAL'
    end
    object cdsConhecimentosORD_QTDE_PALLET: TFloatField
      FieldName = 'ORD_QTDE_PALLET'
    end
    object cdsConhecimentosORD_VOLUME: TFloatField
      FieldName = 'ORD_VOLUME'
    end
    object cdsConhecimentosORD_VALORTOTAL: TFloatField
      FieldName = 'ORD_VALORTOTAL'
    end
    object cdsConhecimentosORD_COLETA_ENTREGA: TStringField
      FieldName = 'ORD_COLETA_ENTREGA'
      Size = 1
    end
    object cdsConhecimentosORD_COL_ENDERECO: TStringField
      FieldName = 'ORD_COL_ENDERECO'
      Size = 50
    end
    object cdsConhecimentosORD_COL_ENDERECO_COMPL: TStringField
      FieldName = 'ORD_COL_ENDERECO_COMPL'
    end
    object cdsConhecimentosORD_COL_ENDERECO_BAIRRO: TStringField
      FieldName = 'ORD_COL_ENDERECO_BAIRRO'
    end
    object cdsConhecimentosMUN_ID_COL: TIntegerField
      FieldName = 'MUN_ID_COL'
    end
    object cdsConhecimentosORD_COL_MUNICIPIO: TStringField
      FieldName = 'ORD_COL_MUNICIPIO'
      Size = 40
    end
    object cdsConhecimentosUF_SIGLA_COL: TStringField
      FieldName = 'UF_SIGLA_COL'
      Size = 2
    end
    object cdsConhecimentosORD_COL_CEP: TStringField
      FieldName = 'ORD_COL_CEP'
      Size = 8
    end
    object cdsConhecimentosORD_COL_TEL1: TStringField
      FieldName = 'ORD_COL_TEL1'
      Size = 11
    end
    object cdsConhecimentosORD_COL_TEL2: TStringField
      FieldName = 'ORD_COL_TEL2'
      Size = 11
    end
    object cdsConhecimentosORD_COL_FAX: TStringField
      FieldName = 'ORD_COL_FAX'
      Size = 11
    end
    object cdsConhecimentosORD_COL_EMAIL: TStringField
      FieldName = 'ORD_COL_EMAIL'
      Size = 60
    end
    object cdsConhecimentosORD_COL_CONTATO: TStringField
      FieldName = 'ORD_COL_CONTATO'
      Size = 50
    end
    object cdsConhecimentosORD_ENT_ENDERECO: TStringField
      FieldName = 'ORD_ENT_ENDERECO'
      Size = 50
    end
    object cdsConhecimentosORD_ENT_ENDERECO_COMPL: TStringField
      FieldName = 'ORD_ENT_ENDERECO_COMPL'
    end
    object cdsConhecimentosORD_ENT_ENDERECO_BAIRRO: TStringField
      FieldName = 'ORD_ENT_ENDERECO_BAIRRO'
    end
    object cdsConhecimentosMUN_ID_ENT: TIntegerField
      FieldName = 'MUN_ID_ENT'
    end
    object cdsConhecimentosORD_ENT_MUNICIPIO: TStringField
      FieldName = 'ORD_ENT_MUNICIPIO'
      Size = 40
    end
    object cdsConhecimentosUF_SIGLA_ENT: TStringField
      FieldName = 'UF_SIGLA_ENT'
      Size = 2
    end
    object cdsConhecimentosORD_ENT_CEP: TStringField
      FieldName = 'ORD_ENT_CEP'
      Size = 8
    end
    object cdsConhecimentosORD_ENT_TEL1: TStringField
      FieldName = 'ORD_ENT_TEL1'
      Size = 11
    end
    object cdsConhecimentosORD_ENT_TEL2: TStringField
      FieldName = 'ORD_ENT_TEL2'
      Size = 11
    end
    object cdsConhecimentosORD_ENT_FAX: TStringField
      FieldName = 'ORD_ENT_FAX'
      Size = 11
    end
    object cdsConhecimentosORD_ENT_EMAIL: TStringField
      FieldName = 'ORD_ENT_EMAIL'
      Size = 60
    end
    object cdsConhecimentosORD_ENT_CONTATO: TStringField
      FieldName = 'ORD_ENT_CONTATO'
      Size = 50
    end
    object cdsConhecimentosCLIF_ID: TIntegerField
      FieldName = 'CLIF_ID'
    end
    object cdsConhecimentosORD_TPCARGA: TStringField
      FieldName = 'ORD_TPCARGA'
      Size = 1
    end
    object cdsConhecimentosORD_QTDE_UV: TFloatField
      FieldName = 'ORD_QTDE_UV'
    end
    object cdsConhecimentosORD_REDESPACHO: TStringField
      FieldName = 'ORD_REDESPACHO'
      Size = 1
    end
    object cdsConhecimentosORD_PLACA: TStringField
      FieldName = 'ORD_PLACA'
      Size = 8
    end
    object cdsConhecimentosCFA_ID: TIntegerField
      FieldName = 'CFA_ID'
    end
    object cdsConhecimentosORD_TOTALPREST: TFloatField
      FieldName = 'ORD_TOTALPREST'
    end
    object cdsConhecimentosORD_VLR_ICMS: TFloatField
      FieldName = 'ORD_VLR_ICMS'
    end
    object cdsConhecimentosORD_NOTAS: TStringField
      FieldName = 'ORD_NOTAS'
      Size = 50
    end
    object cdsConhecimentosTRANS_ID_REDES: TIntegerField
      FieldName = 'TRANS_ID_REDES'
    end
    object cdsConhecimentosORD_PAGO: TStringField
      FieldName = 'ORD_PAGO'
      Size = 1
    end
    object cdsConhecimentosCLIN_ID: TIntegerField
      FieldName = 'CLIN_ID'
    end
    object cdsConhecimentosORD_CONSIGN: TStringField
      FieldName = 'ORD_CONSIGN'
      Size = 1
    end
    object cdsConhecimentosORD_VLR_FRETE: TFloatField
      FieldName = 'ORD_VLR_FRETE'
    end
    object cdsConhecimentosORD_VLR_SECCAT: TFloatField
      FieldName = 'ORD_VLR_SECCAT'
    end
    object cdsConhecimentosORD_VLR_DESPACHO: TFloatField
      FieldName = 'ORD_VLR_DESPACHO'
    end
    object cdsConhecimentosORD_VLR_PEDAGIO: TFloatField
      FieldName = 'ORD_VLR_PEDAGIO'
    end
    object cdsConhecimentosORD_VLR_OUTROS: TFloatField
      FieldName = 'ORD_VLR_OUTROS'
    end
    object cdsConhecimentosORD_CONH: TStringField
      FieldName = 'ORD_CONH'
      Size = 10
    end
    object cdsConhecimentosORD_ALIQ: TFloatField
      FieldName = 'ORD_ALIQ'
    end
    object cdsConhecimentosMARCADOR: TStringField
      FieldName = 'MARCADOR'
      Size = 1
    end
    object cdsConhecimentosORD_MINUTA: TStringField
      FieldName = 'ORD_MINUTA'
      Size = 10
    end
    object cdsConhecimentosORD_STATUS: TStringField
      FieldName = 'ORD_STATUS'
      Size = 1
    end
    object cdsConhecimentosORD_DATA: TDateTimeField
      FieldName = 'ORD_DATA'
    end
    object cdsConhecimentosORD_OBS: TStringField
      FieldName = 'ORD_OBS'
      Size = 50
    end
    object cdsConhecimentosORD_GENERICO: TStringField
      FieldName = 'ORD_GENERICO'
      Size = 1
    end
    object cdsConhecimentosCLIF_RAZA: TStringField
      FieldName = 'CLIF_RAZA'
      Size = 50
    end
    object cdsConhecimentosNFSE: TStringField
      FieldName = 'NFSE'
      ReadOnly = True
      Size = 500
    end
  end
  object DataSource1: TDataSource
    DataSet = cdsRelManifesto
    Left = 424
    Top = 440
  end
  object qrRegiao: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM REGIAO'
      'ORDER BY REG_ID')
    Left = 576
    Top = 184
    object qrRegiaoREG_ID: TAutoIncField
      FieldName = 'REG_ID'
      ReadOnly = True
    end
    object qrRegiaoREG_NOME: TStringField
      FieldName = 'REG_NOME'
      Size = 40
    end
  end
  object dspRegiao: TDataSetProvider
    DataSet = qrRegiao
    Constraints = True
    Left = 576
    Top = 232
  end
  object cdsRegiao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspRegiao'
    Left = 576
    Top = 280
    object cdsRegiaoREG_ID: TAutoIncField
      FieldName = 'REG_ID'
      ReadOnly = True
    end
    object cdsRegiaoREG_NOME: TStringField
      FieldName = 'REG_NOME'
      Size = 40
    end
  end
  object qrTPVeiculo: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM TPVEICULO')
    Left = 648
    Top = 184
    object qrTPVeiculoVEIC_ID: TAutoIncField
      FieldName = 'VEIC_ID'
      ReadOnly = True
    end
    object qrTPVeiculoVEIC_NOME: TStringField
      FieldName = 'VEIC_NOME'
      Size = 40
    end
    object qrTPVeiculoVEIC_ORDEM: TIntegerField
      FieldName = 'VEIC_ORDEM'
    end
  end
  object dspTPVeiculo: TDataSetProvider
    DataSet = qrTPVeiculo
    Constraints = True
    Left = 648
    Top = 232
  end
  object cdsTPVeiculo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTPVeiculo'
    Left = 648
    Top = 280
    object cdsTPVeiculoVEIC_ID: TAutoIncField
      FieldName = 'VEIC_ID'
      ReadOnly = True
    end
    object cdsTPVeiculoVEIC_NOME: TStringField
      FieldName = 'VEIC_NOME'
      Size = 40
    end
    object cdsTPVeiculoVEIC_ORDEM: TIntegerField
      FieldName = 'VEIC_ORDEM'
    end
  end
  object qrTotaisRegiao: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'USUARIO'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT '
      #9'B.REG_NOME, '
      #9'SUM(A.QTDE_UV) AS QTDE_UV, '
      #9'SUM(A.PESO) AS PESO,'
      #9'SUM(A.VALOR) AS VALOR,'
      #9'SUM(A.ENTREGAS) AS ENTREGAS,'
      #9'SUM(A.VEICULOS) AS VEICULOS,'
      #9'SUM(A.PESO) / SUM(A.ENTREGAS) AS PESO_MEDIO,'
      #9'SUM(A.VALOR) / SUM(A.ENTREGAS) AS VALOR_MEDIO,'
      #9'SUM(A.TOTAL) AS TOTAL,'
      #9'SUM(A.FRETE) AS FRETE,'
      #9'SUM(A.FRETE) / SUM(A.VALOR) AS FR_S_FAT,'
      #9'SUM(A.TOTAL) / SUM(A.PESO) AS FRETE_KG,'
      '        SUM(A.TOTAL) / SUM(A.PESO) * 100 AS FRETE_TON,'
      #9'SUM(A.OUTROS) AS OUTROS,'
      '        SUM(ICMS) AS ICMS '
      'FROM REL_MANIFESTO A INNER JOIN REGIAO B'
      'ON A.REGIAO = B.REG_ID'
      'WHERE A.USUARIO = :USUARIO'
      'GROUP BY B.REG_NOME'
      'ORDER BY B.REG_NOME')
    Left = 728
    Top = 184
    object qrTotaisRegiaoREG_NOME: TStringField
      FieldName = 'REG_NOME'
      Size = 40
    end
    object qrTotaisRegiaoQTDE_UV: TFloatField
      FieldName = 'QTDE_UV'
      ReadOnly = True
    end
    object qrTotaisRegiaoPESO: TFloatField
      FieldName = 'PESO'
      ReadOnly = True
    end
    object qrTotaisRegiaoVALOR: TFloatField
      FieldName = 'VALOR'
      ReadOnly = True
    end
    object qrTotaisRegiaoENTREGAS: TIntegerField
      FieldName = 'ENTREGAS'
      ReadOnly = True
    end
    object qrTotaisRegiaoVEICULOS: TIntegerField
      FieldName = 'VEICULOS'
      ReadOnly = True
    end
    object qrTotaisRegiaoPESO_MEDIO: TFloatField
      FieldName = 'PESO_MEDIO'
      ReadOnly = True
    end
    object qrTotaisRegiaoVALOR_MEDIO: TFloatField
      FieldName = 'VALOR_MEDIO'
      ReadOnly = True
    end
    object qrTotaisRegiaoTOTAL: TFloatField
      FieldName = 'TOTAL'
      ReadOnly = True
    end
    object qrTotaisRegiaoFRETE: TFloatField
      FieldName = 'FRETE'
      ReadOnly = True
    end
    object qrTotaisRegiaoFR_S_FAT: TFloatField
      FieldName = 'FR_S_FAT'
      ReadOnly = True
    end
    object qrTotaisRegiaoFRETE_KG: TFloatField
      FieldName = 'FRETE_KG'
      ReadOnly = True
    end
    object qrTotaisRegiaoFRETE_TON: TFloatField
      FieldName = 'FRETE_TON'
      ReadOnly = True
    end
    object qrTotaisRegiaoOUTROS: TFloatField
      FieldName = 'OUTROS'
      ReadOnly = True
    end
    object qrTotaisRegiaoICMS: TFloatField
      FieldName = 'ICMS'
      ReadOnly = True
    end
  end
  object dspTotaisRegiao: TDataSetProvider
    DataSet = qrTotaisRegiao
    Constraints = True
    Left = 728
    Top = 232
  end
  object cdsTotaisRegiao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTotaisRegiao'
    Left = 728
    Top = 280
    object cdsTotaisRegiaoREG_NOME: TStringField
      FieldName = 'REG_NOME'
      Size = 40
    end
    object cdsTotaisRegiaoQTDE_UV: TFloatField
      FieldName = 'QTDE_UV'
      ReadOnly = True
    end
    object cdsTotaisRegiaoPESO: TFloatField
      FieldName = 'PESO'
      ReadOnly = True
    end
    object cdsTotaisRegiaoVALOR: TFloatField
      FieldName = 'VALOR'
      ReadOnly = True
    end
    object cdsTotaisRegiaoENTREGAS: TIntegerField
      FieldName = 'ENTREGAS'
      ReadOnly = True
    end
    object cdsTotaisRegiaoVEICULOS: TIntegerField
      FieldName = 'VEICULOS'
      ReadOnly = True
    end
    object cdsTotaisRegiaoPESO_MEDIO: TFloatField
      FieldName = 'PESO_MEDIO'
      ReadOnly = True
    end
    object cdsTotaisRegiaoVALOR_MEDIO: TFloatField
      FieldName = 'VALOR_MEDIO'
      ReadOnly = True
    end
    object cdsTotaisRegiaoTOTAL: TFloatField
      FieldName = 'TOTAL'
      ReadOnly = True
    end
    object cdsTotaisRegiaoFRETE: TFloatField
      FieldName = 'FRETE'
      ReadOnly = True
    end
    object cdsTotaisRegiaoFR_S_FAT: TFloatField
      FieldName = 'FR_S_FAT'
      ReadOnly = True
    end
    object cdsTotaisRegiaoFRETE_KG: TFloatField
      FieldName = 'FRETE_KG'
      ReadOnly = True
    end
    object cdsTotaisRegiaoFRETE_TON: TFloatField
      FieldName = 'FRETE_TON'
      ReadOnly = True
    end
    object cdsTotaisRegiaoOUTROS: TFloatField
      FieldName = 'OUTROS'
      ReadOnly = True
    end
    object cdsTotaisRegiaoICMS: TFloatField
      FieldName = 'ICMS'
      ReadOnly = True
    end
  end
  object qrTotaisVeiculo: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <
      item
        Name = 'usuario'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT '
      #9'B.VEIC_NOME, '
      #9'SUM(A.QTDE_UV) AS QTDE_UV, '
      #9'SUM(A.PESO) AS PESO,'
      #9'SUM(A.VALOR) AS VALOR,'
      #9'SUM(A.ENTREGAS) AS ENTREGAS,'
      #9'SUM(A.VEICULOS) AS VEICULOS,'
      #9'SUM(A.PESO) / SUM(A.ENTREGAS) AS PESO_MEDIO,'
      #9'SUM(A.VALOR) / SUM(A.ENTREGAS) AS VALOR_MEDIO,'
      #9'SUM(A.TOTAL) AS TOTAL,'
      #9'SUM(A.FRETE) AS FRETE,'
      #9'SUM(A.FRETE) / SUM(A.VALOR) AS FR_S_FAT,'
      #9'SUM(A.TOTAL) / SUM(A.PESO) AS FRETE_KG,'
      '        SUM(A.TOTAL) / SUM(A.PESO) * 100 AS FRETE_TON,'
      #9'SUM(A.OUTROS) AS OUTROS,'
      '        SUM(ICMS) AS ICMS '
      'FROM REL_MANIFESTO A INNER JOIN TPVEICULO B'
      'ON A.TIPO_VEICULO = B.VEIC_ID'
      'WHERE A.USUARIO = :usuario'
      'GROUP BY B.VEIC_NOME'
      'ORDER BY B.VEIC_NOME'
      '')
    Left = 824
    Top = 184
    object qrTotaisVeiculoVEIC_NOME: TStringField
      FieldName = 'VEIC_NOME'
      Size = 40
    end
    object qrTotaisVeiculoQTDE_UV: TFloatField
      FieldName = 'QTDE_UV'
      ReadOnly = True
    end
    object qrTotaisVeiculoPESO: TFloatField
      FieldName = 'PESO'
      ReadOnly = True
    end
    object qrTotaisVeiculoVALOR: TFloatField
      FieldName = 'VALOR'
      ReadOnly = True
    end
    object qrTotaisVeiculoENTREGAS: TIntegerField
      FieldName = 'ENTREGAS'
      ReadOnly = True
    end
    object qrTotaisVeiculoVEICULOS: TIntegerField
      FieldName = 'VEICULOS'
      ReadOnly = True
    end
    object qrTotaisVeiculoPESO_MEDIO: TFloatField
      FieldName = 'PESO_MEDIO'
      ReadOnly = True
    end
    object qrTotaisVeiculoVALOR_MEDIO: TFloatField
      FieldName = 'VALOR_MEDIO'
      ReadOnly = True
    end
    object qrTotaisVeiculoTOTAL: TFloatField
      FieldName = 'TOTAL'
      ReadOnly = True
    end
    object qrTotaisVeiculoFRETE: TFloatField
      FieldName = 'FRETE'
      ReadOnly = True
    end
    object qrTotaisVeiculoFR_S_FAT: TFloatField
      FieldName = 'FR_S_FAT'
      ReadOnly = True
    end
    object qrTotaisVeiculoFRETE_KG: TFloatField
      FieldName = 'FRETE_KG'
      ReadOnly = True
    end
    object qrTotaisVeiculoFRETE_TON: TFloatField
      FieldName = 'FRETE_TON'
      ReadOnly = True
    end
    object qrTotaisVeiculoOUTROS: TFloatField
      FieldName = 'OUTROS'
      ReadOnly = True
    end
    object qrTotaisVeiculoICMS: TFloatField
      FieldName = 'ICMS'
      ReadOnly = True
    end
  end
  object dspTotaisVEiculo: TDataSetProvider
    DataSet = qrTotaisVeiculo
    Constraints = True
    Left = 824
    Top = 232
  end
  object cdsTotaisVeiculo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTotaisVEiculo'
    Left = 824
    Top = 280
    object cdsTotaisVeiculoVEIC_NOME: TStringField
      FieldName = 'VEIC_NOME'
      Size = 40
    end
    object cdsTotaisVeiculoQTDE_UV: TFloatField
      FieldName = 'QTDE_UV'
      ReadOnly = True
    end
    object cdsTotaisVeiculoPESO: TFloatField
      FieldName = 'PESO'
      ReadOnly = True
    end
    object cdsTotaisVeiculoVALOR: TFloatField
      FieldName = 'VALOR'
      ReadOnly = True
    end
    object cdsTotaisVeiculoENTREGAS: TIntegerField
      FieldName = 'ENTREGAS'
      ReadOnly = True
    end
    object cdsTotaisVeiculoVEICULOS: TIntegerField
      FieldName = 'VEICULOS'
      ReadOnly = True
    end
    object cdsTotaisVeiculoPESO_MEDIO: TFloatField
      FieldName = 'PESO_MEDIO'
      ReadOnly = True
    end
    object cdsTotaisVeiculoVALOR_MEDIO: TFloatField
      FieldName = 'VALOR_MEDIO'
      ReadOnly = True
    end
    object cdsTotaisVeiculoTOTAL: TFloatField
      FieldName = 'TOTAL'
      ReadOnly = True
    end
    object cdsTotaisVeiculoFRETE: TFloatField
      FieldName = 'FRETE'
      ReadOnly = True
    end
    object cdsTotaisVeiculoFR_S_FAT: TFloatField
      FieldName = 'FR_S_FAT'
      ReadOnly = True
    end
    object cdsTotaisVeiculoFRETE_KG: TFloatField
      FieldName = 'FRETE_KG'
      ReadOnly = True
    end
    object cdsTotaisVeiculoFRETE_TON: TFloatField
      FieldName = 'FRETE_TON'
      ReadOnly = True
    end
    object cdsTotaisVeiculoOUTROS: TFloatField
      FieldName = 'OUTROS'
      ReadOnly = True
    end
    object cdsTotaisVeiculoICMS: TFloatField
      FieldName = 'ICMS'
      ReadOnly = True
    end
  end
  object qrTotais: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <
      item
        Name = 'usuario'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT '
      #9'SUM(A.QTDE_UV) AS QTDE_UV, '
      #9'SUM(A.PESO) AS PESO,'
      #9'SUM(A.VALOR) AS VALOR,'
      #9'SUM(A.ENTREGAS) AS ENTREGAS,'
      #9'SUM(A.VEICULOS) AS VEICULOS,'
      #9'SUM(A.PESO) / SUM(A.ENTREGAS) AS PESO_MEDIO,'
      #9'SUM(A.VALOR) / SUM(A.ENTREGAS) AS VALOR_MEDIO,'
      #9'SUM(A.TOTAL) AS TOTAL,'
      #9'SUM(A.FRETE) AS FRETE,'
      #9'SUM(A.FRETE) / SUM(A.VALOR) AS FR_S_FAT,'
      #9'SUM(A.TOTAL) / SUM(A.PESO) AS FRETE_KG,'
      '        SUM(A.TOTAL) / SUM(A.PESO) * 100 AS FRETE_TON,'
      #9'SUM(A.OUTROS) AS OUTROS,'
      '        SUM(ICMS) AS ICMS '
      'FROM REL_MANIFESTO A INNER JOIN TPVEICULO B'
      'ON A.TIPO_VEICULO = B.VEIC_ID'
      'WHERE A.USUARIO = :usuario'
      '')
    Left = 576
    Top = 344
    object qrTotaisQTDE_UV: TFloatField
      FieldName = 'QTDE_UV'
      ReadOnly = True
    end
    object qrTotaisPESO: TFloatField
      FieldName = 'PESO'
      ReadOnly = True
    end
    object qrTotaisVALOR: TFloatField
      FieldName = 'VALOR'
      ReadOnly = True
    end
    object qrTotaisENTREGAS: TIntegerField
      FieldName = 'ENTREGAS'
      ReadOnly = True
    end
    object qrTotaisVEICULOS: TIntegerField
      FieldName = 'VEICULOS'
      ReadOnly = True
    end
    object qrTotaisPESO_MEDIO: TFloatField
      FieldName = 'PESO_MEDIO'
      ReadOnly = True
    end
    object qrTotaisVALOR_MEDIO: TFloatField
      FieldName = 'VALOR_MEDIO'
      ReadOnly = True
    end
    object qrTotaisTOTAL: TFloatField
      FieldName = 'TOTAL'
      ReadOnly = True
    end
    object qrTotaisFRETE: TFloatField
      FieldName = 'FRETE'
      ReadOnly = True
    end
    object qrTotaisFR_S_FAT: TFloatField
      FieldName = 'FR_S_FAT'
      ReadOnly = True
    end
    object qrTotaisFRETE_KG: TFloatField
      FieldName = 'FRETE_KG'
      ReadOnly = True
    end
    object qrTotaisFRETE_TON: TFloatField
      FieldName = 'FRETE_TON'
      ReadOnly = True
    end
    object qrTotaisOUTROS: TFloatField
      FieldName = 'OUTROS'
      ReadOnly = True
    end
    object qrTotaisICMS: TFloatField
      FieldName = 'ICMS'
      ReadOnly = True
    end
  end
  object qrNotasSemConh: TADOQuery
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
      'select'
      
        #9'N.NFI_NUMERO, N.NFI_QTDEUV, N.NFI_PBRU, N.NFI_TOTA, N.NFI_DEST_' +
        'RAZA, ORD_CONH, ORD_STATUS, NFI_EMIT_CLI'
      'from nf N left outer join ORDEM_COLETA_ENTREGA O'
      'on n.MANI_ID = o.MANI_ID'
      'WHERE n.MANI_ID = :MANI_ID'
      'AND NFI_TRANS = '#39'S'#39
      'ORDER BY N.NFI_NUMERO')
    Left = 688
    Top = 408
    object qrNotasSemConhNFI_NUMERO: TStringField
      FieldName = 'NFI_NUMERO'
      Size = 10
    end
    object qrNotasSemConhNFI_QTDEUV: TFloatField
      FieldName = 'NFI_QTDEUV'
    end
    object qrNotasSemConhNFI_PBRU: TFloatField
      FieldName = 'NFI_PBRU'
    end
    object qrNotasSemConhNFI_TOTA: TFloatField
      FieldName = 'NFI_TOTA'
    end
    object qrNotasSemConhNFI_DEST_RAZA: TStringField
      FieldName = 'NFI_DEST_RAZA'
      Size = 50
    end
    object qrNotasSemConhORD_CONH: TStringField
      FieldName = 'ORD_CONH'
      Size = 10
    end
    object qrNotasSemConhORD_STATUS: TStringField
      FieldName = 'ORD_STATUS'
      Size = 1
    end
    object qrNotasSemConhNFI_EMIT_CLI: TIntegerField
      FieldName = 'NFI_EMIT_CLI'
    end
  end
  object qrAux: TADOQuery
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
      'SELECT CLIN_RAZA FROM CLIENTENBF WHERE CLIN_ID = :CLIN_ID')
    Left = 888
    Top = 400
    object qrAuxCLIN_RAZA: TStringField
      FieldName = 'CLIN_RAZA'
      Size = 50
    end
  end
  object qry1: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    Left = 944
    Top = 344
  end
end
