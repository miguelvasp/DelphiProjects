object frmCorrigeConhecimentoComplementar: TfrmCorrigeConhecimentoComplementar
  Left = 183
  Top = 156
  Width = 1058
  Height = 455
  Caption = 'Altera��o de Conhecimento Complementar'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 14
  object DBText1: TDBText
    Left = 968
    Top = 8
    Width = 65
    Height = 17
    Alignment = taRightJustify
    DataField = 'ORD_ID'
    DataSource = DataSource1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 241
    Height = 55
    Caption = 'Consultar Conhecimento'
    TabOrder = 0
    object Edit1: TEdit
      Left = 16
      Top = 24
      Width = 121
      Height = 22
      TabOrder = 0
    end
    object Button1: TButton
      Left = 152
      Top = 23
      Width = 75
      Height = 25
      Caption = 'Buscar'
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object wwDBGrid1: TwwDBGrid
    Left = 8
    Top = 88
    Width = 1025
    Height = 265
    Selected.Strings = (
      'ORD_CONH'#9'10'#9'CTRC'
      'ORD_DATA'#9'10'#9'DATA'
      'OS_ID'#9'10'#9'OS'
      'ORD_VLR_FRETE'#9'10'#9'Frete'
      'ORD_VLR_SECCAT'#9'10'#9'SECCAT'
      'ORD_VLR_DESPACHO'#9'10'#9'Despacho'
      'ORD_VLR_PEDAGIO'#9'10'#9'Ped�gio'
      'ORD_TXENTREGA'#9'10'#9'Taxa Entrega'
      'ORD_SEGURO'#9'10'#9'Seguro'
      'ORD_ALIQ'#9'10'#9'Aliq. ICMS'
      'ORD_VLR_ICMS'#9'10'#9'Vlr. ICMS'
      'ORD_TOTALPREST'#9'10'#9'Valor Total')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 3
    ShowHorzScrollBar = True
    DataSource = DataSource1
    TabOrder = 1
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
  object Button2: TButton
    Left = 16
    Top = 376
    Width = 153
    Height = 25
    Caption = 'Confirmar Valores'
    TabOrder = 2
    OnClick = Button2Click
  end
  object qrCTR: TADOQuery
    Active = True
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CTR'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'select * from ordem_coleta_entrega '
      'where ORD_CONH = :CTR'
      'AND E_COMPLEMENTAR = '#39'S'#39)
    Left = 568
    Top = 160
    object qrCTRORD_CONH: TStringField
      DisplayLabel = 'CTRC'
      DisplayWidth = 10
      FieldName = 'ORD_CONH'
      Size = 10
    end
    object qrCTRORD_DATA: TDateTimeField
      DisplayLabel = 'DATA'
      DisplayWidth = 10
      FieldName = 'ORD_DATA'
    end
    object qrCTROS_ID: TIntegerField
      DisplayLabel = 'OS'
      DisplayWidth = 10
      FieldName = 'OS_ID'
    end
    object qrCTRORD_VLR_FRETE: TFloatField
      DisplayLabel = 'Frete'
      DisplayWidth = 10
      FieldName = 'ORD_VLR_FRETE'
      DisplayFormat = '###,###,##0.00'
    end
    object qrCTRORD_VLR_SECCAT: TFloatField
      DisplayLabel = 'SECCAT'
      DisplayWidth = 10
      FieldName = 'ORD_VLR_SECCAT'
      DisplayFormat = '###,###,##0.00'
    end
    object qrCTRORD_VLR_DESPACHO: TFloatField
      DisplayLabel = 'Despacho'
      DisplayWidth = 10
      FieldName = 'ORD_VLR_DESPACHO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrCTRORD_VLR_PEDAGIO: TFloatField
      DisplayLabel = 'Ped�gio'
      DisplayWidth = 10
      FieldName = 'ORD_VLR_PEDAGIO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrCTRORD_TXENTREGA: TFloatField
      DisplayLabel = 'Taxa Entrega'
      DisplayWidth = 10
      FieldName = 'ORD_TXENTREGA'
      DisplayFormat = '###,###,##0.00'
    end
    object qrCTRORD_SEGURO: TFloatField
      DisplayLabel = 'Seguro'
      DisplayWidth = 10
      FieldName = 'ORD_SEGURO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrCTRORD_ALIQ: TFloatField
      DisplayLabel = 'Aliq. ICMS'
      DisplayWidth = 10
      FieldName = 'ORD_ALIQ'
      DisplayFormat = '###,###,##0.00'
    end
    object qrCTRORD_VLR_ICMS: TFloatField
      DisplayLabel = 'Vlr. ICMS'
      DisplayWidth = 10
      FieldName = 'ORD_VLR_ICMS'
      DisplayFormat = '###,###,##0.00'
    end
    object qrCTRORD_TOTALPREST: TFloatField
      DisplayLabel = 'Valor Total'
      DisplayWidth = 10
      FieldName = 'ORD_TOTALPREST'
      DisplayFormat = '###,###,##0.00'
    end
    object qrCTRORD_VLR_OUTROS: TFloatField
      DisplayLabel = 'Outros'
      DisplayWidth = 10
      FieldName = 'ORD_VLR_OUTROS'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrCTRORD_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'ORD_ID'
      ReadOnly = True
      Visible = False
    end
    object qrCTRMANI_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'MANI_ID'
      Visible = False
    end
    object qrCTRTRANS_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'TRANS_ID'
      Visible = False
    end
    object qrCTRVEIC_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'VEIC_ID'
      Visible = False
    end
    object qrCTRVEIC_ID_RECEB: TIntegerField
      DisplayWidth = 10
      FieldName = 'VEIC_ID_RECEB'
      Visible = False
    end
    object qrCTRREG_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'REG_ID'
      Visible = False
    end
    object qrCTRORD_PESO_TOTAL: TFloatField
      DisplayWidth = 10
      FieldName = 'ORD_PESO_TOTAL'
      Visible = False
    end
    object qrCTRORD_QTDE_PALLET: TFloatField
      DisplayWidth = 10
      FieldName = 'ORD_QTDE_PALLET'
      Visible = False
    end
    object qrCTRORD_VOLUME: TFloatField
      DisplayWidth = 10
      FieldName = 'ORD_VOLUME'
      Visible = False
    end
    object qrCTRORD_VALORTOTAL: TFloatField
      DisplayWidth = 10
      FieldName = 'ORD_VALORTOTAL'
      Visible = False
    end
    object qrCTRORD_COLETA_ENTREGA: TStringField
      DisplayWidth = 1
      FieldName = 'ORD_COLETA_ENTREGA'
      Visible = False
      Size = 1
    end
    object qrCTRORD_COL_ENDERECO: TStringField
      DisplayWidth = 50
      FieldName = 'ORD_COL_ENDERECO'
      Visible = False
      Size = 50
    end
    object qrCTRORD_COL_ENDERECO_COMPL: TStringField
      DisplayWidth = 20
      FieldName = 'ORD_COL_ENDERECO_COMPL'
      Visible = False
    end
    object qrCTRORD_COL_ENDERECO_BAIRRO: TStringField
      DisplayWidth = 20
      FieldName = 'ORD_COL_ENDERECO_BAIRRO'
      Visible = False
    end
    object qrCTRMUN_ID_COL: TIntegerField
      DisplayWidth = 10
      FieldName = 'MUN_ID_COL'
      Visible = False
    end
    object qrCTRORD_COL_MUNICIPIO: TStringField
      DisplayWidth = 40
      FieldName = 'ORD_COL_MUNICIPIO'
      Visible = False
      Size = 40
    end
    object qrCTRUF_SIGLA_COL: TStringField
      DisplayWidth = 2
      FieldName = 'UF_SIGLA_COL'
      Visible = False
      Size = 2
    end
    object qrCTRORD_COL_CEP: TStringField
      DisplayWidth = 8
      FieldName = 'ORD_COL_CEP'
      Visible = False
      Size = 8
    end
    object qrCTRORD_COL_TEL1: TStringField
      DisplayWidth = 11
      FieldName = 'ORD_COL_TEL1'
      Visible = False
      Size = 11
    end
    object qrCTRORD_COL_TEL2: TStringField
      DisplayWidth = 11
      FieldName = 'ORD_COL_TEL2'
      Visible = False
      Size = 11
    end
    object qrCTRORD_COL_FAX: TStringField
      DisplayWidth = 11
      FieldName = 'ORD_COL_FAX'
      Visible = False
      Size = 11
    end
    object qrCTRORD_COL_EMAIL: TStringField
      DisplayWidth = 60
      FieldName = 'ORD_COL_EMAIL'
      Visible = False
      Size = 60
    end
    object qrCTRORD_COL_CONTATO: TStringField
      DisplayWidth = 50
      FieldName = 'ORD_COL_CONTATO'
      Visible = False
      Size = 50
    end
    object qrCTRORD_ENT_ENDERECO: TStringField
      DisplayWidth = 50
      FieldName = 'ORD_ENT_ENDERECO'
      Visible = False
      Size = 50
    end
    object qrCTRORD_ENT_ENDERECO_COMPL: TStringField
      DisplayWidth = 20
      FieldName = 'ORD_ENT_ENDERECO_COMPL'
      Visible = False
    end
    object qrCTRORD_ENT_ENDERECO_BAIRRO: TStringField
      DisplayWidth = 20
      FieldName = 'ORD_ENT_ENDERECO_BAIRRO'
      Visible = False
    end
    object qrCTRMUN_ID_ENT: TIntegerField
      DisplayWidth = 10
      FieldName = 'MUN_ID_ENT'
      Visible = False
    end
    object qrCTRORD_ENT_MUNICIPIO: TStringField
      DisplayWidth = 40
      FieldName = 'ORD_ENT_MUNICIPIO'
      Visible = False
      Size = 40
    end
    object qrCTRUF_SIGLA_ENT: TStringField
      DisplayWidth = 2
      FieldName = 'UF_SIGLA_ENT'
      Visible = False
      Size = 2
    end
    object qrCTRORD_ENT_CEP: TStringField
      DisplayWidth = 8
      FieldName = 'ORD_ENT_CEP'
      Visible = False
      Size = 8
    end
    object qrCTRORD_ENT_TEL1: TStringField
      DisplayWidth = 11
      FieldName = 'ORD_ENT_TEL1'
      Visible = False
      Size = 11
    end
    object qrCTRORD_ENT_TEL2: TStringField
      DisplayWidth = 11
      FieldName = 'ORD_ENT_TEL2'
      Visible = False
      Size = 11
    end
    object qrCTRORD_ENT_FAX: TStringField
      DisplayWidth = 11
      FieldName = 'ORD_ENT_FAX'
      Visible = False
      Size = 11
    end
    object qrCTRORD_ENT_EMAIL: TStringField
      DisplayWidth = 60
      FieldName = 'ORD_ENT_EMAIL'
      Visible = False
      Size = 60
    end
    object qrCTRORD_ENT_CONTATO: TStringField
      DisplayWidth = 50
      FieldName = 'ORD_ENT_CONTATO'
      Visible = False
      Size = 50
    end
    object qrCTRCLIF_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'CLIF_ID'
      Visible = False
    end
    object qrCTRORD_TPCARGA: TStringField
      DisplayWidth = 1
      FieldName = 'ORD_TPCARGA'
      Visible = False
      Size = 1
    end
    object qrCTRORD_QTDE_UV: TFloatField
      DisplayWidth = 10
      FieldName = 'ORD_QTDE_UV'
      Visible = False
    end
    object qrCTRORD_REDESPACHO: TStringField
      DisplayWidth = 1
      FieldName = 'ORD_REDESPACHO'
      Visible = False
      Size = 1
    end
    object qrCTRORD_PLACA: TStringField
      DisplayWidth = 8
      FieldName = 'ORD_PLACA'
      Visible = False
      Size = 8
    end
    object qrCTRCFA_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'CFA_ID'
      Visible = False
    end
    object qrCTRORD_NOTAS: TStringField
      DisplayWidth = 50
      FieldName = 'ORD_NOTAS'
      Visible = False
      Size = 50
    end
    object qrCTRTRANS_ID_REDES: TIntegerField
      DisplayWidth = 10
      FieldName = 'TRANS_ID_REDES'
      Visible = False
    end
    object qrCTRORD_PAGO: TStringField
      DisplayWidth = 1
      FieldName = 'ORD_PAGO'
      Visible = False
      Size = 1
    end
    object qrCTRCLIN_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'CLIN_ID'
      Visible = False
    end
    object qrCTRORD_CONSIGN: TStringField
      DisplayWidth = 1
      FieldName = 'ORD_CONSIGN'
      Visible = False
      Size = 1
    end
    object qrCTRMARCADOR: TStringField
      DisplayWidth = 1
      FieldName = 'MARCADOR'
      Visible = False
      Size = 1
    end
    object qrCTRORD_MINUTA: TStringField
      DisplayWidth = 10
      FieldName = 'ORD_MINUTA'
      Visible = False
      Size = 10
    end
    object qrCTRORD_STATUS: TStringField
      DisplayWidth = 1
      FieldName = 'ORD_STATUS'
      Visible = False
      Size = 1
    end
    object qrCTRORD_OBS: TStringField
      DisplayWidth = 50
      FieldName = 'ORD_OBS'
      Visible = False
      Size = 50
    end
    object qrCTRORD_GENERICO: TStringField
      DisplayWidth = 1
      FieldName = 'ORD_GENERICO'
      Visible = False
      Size = 1
    end
    object qrCTRCHAVE_ID: TStringField
      DisplayWidth = 50
      FieldName = 'CHAVE_ID'
      Visible = False
      Size = 50
    end
    object qrCTRSEL: TStringField
      DisplayWidth = 1
      FieldName = 'SEL'
      Visible = False
      Size = 1
    end
    object qrCTRFAT_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'FAT_ID'
      Visible = False
    end
    object qrCTRE_COMPLEMENTAR: TStringField
      DisplayWidth = 1
      FieldName = 'E_COMPLEMENTAR'
      Visible = False
      Size = 1
    end
    object qrCTRORD_ID_COMPLEMENTAR: TIntegerField
      DisplayWidth = 10
      FieldName = 'ORD_ID_COMPLEMENTAR'
      Visible = False
    end
    object qrCTRTEM_COMPLEMENTAR: TStringField
      DisplayWidth = 1
      FieldName = 'TEM_COMPLEMENTAR'
      Visible = False
      Size = 1
    end
    object qrCTRSEL_CTRC: TStringField
      DisplayWidth = 1
      FieldName = 'SEL_CTRC'
      Visible = False
      Size = 1
    end
    object qrCTRPAMCARD_SEL: TStringField
      DisplayWidth = 1
      FieldName = 'PAMCARD_SEL'
      Visible = False
      Size = 1
    end
    object qrCTRTOMADOR: TStringField
      DisplayWidth = 1
      FieldName = 'TOMADOR'
      Visible = False
      Size = 1
    end
    object qrCTRNFSO_SEL: TStringField
      DisplayWidth = 1
      FieldName = 'NFSO_SEL'
      Visible = False
      Size = 1
    end
    object qrCTRNFSO_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'NFSO_ID'
      Visible = False
    end
    object qrCTRALIQ_ISS: TFloatField
      DisplayWidth = 10
      FieldName = 'ALIQ_ISS'
      Visible = False
    end
    object qrCTRVLR_ISS: TFloatField
      DisplayWidth = 10
      FieldName = 'VLR_ISS'
      Visible = False
    end
    object qrCTRVLR_NFS: TFloatField
      DisplayWidth = 10
      FieldName = 'VLR_NFS'
      Visible = False
    end
  end
  object DataSource1: TDataSource
    DataSet = qrCTR
    Left = 656
    Top = 160
  end
  object ADOQuery1: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    Left = 344
    Top = 160
  end
  object qrOECAux: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    SQL.Strings = (
      'select TOP 0 * from OEC_AUX')
    Left = 480
    Top = 176
    object qrOECAuxORD_ID: TIntegerField
      FieldName = 'ORD_ID'
    end
    object qrOECAuxVLR_FRETE: TFloatField
      FieldName = 'VLR_FRETE'
    end
    object qrOECAuxTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object qrOECAuxSEC_CAT: TFloatField
      FieldName = 'SEC_CAT'
    end
    object qrOECAuxDESPACHO: TFloatField
      FieldName = 'DESPACHO'
    end
    object qrOECAuxPEDAGIO: TFloatField
      FieldName = 'PEDAGIO'
    end
    object qrOECAuxOUTROS: TFloatField
      FieldName = 'OUTROS'
    end
    object qrOECAuxALIQ: TFloatField
      FieldName = 'ALIQ'
    end
    object qrOECAuxICMS: TFloatField
      FieldName = 'ICMS'
    end
    object qrOECAuxENTREGA: TFloatField
      FieldName = 'ENTREGA'
    end
    object qrOECAuxSEGURO: TFloatField
      FieldName = 'SEGURO'
    end
  end
end
