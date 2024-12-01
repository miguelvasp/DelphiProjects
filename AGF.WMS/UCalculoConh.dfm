object frmCalculoConh: TfrmCalculoConh
  Left = 206
  Top = 160
  Width = 823
  Height = 488
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 24
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Q_OCE: TwwQuery
    CachedUpdates = True
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    RequestLive = True
    SQL.Strings = (
      'Select '
      'A.*'
      ' from ORDEM_COLETA_ENTREGA A'
      'where A.OS_ID = :OS_ID'
      '')
    ControlType.Strings = (
      'ORD_TPCARGA;CustomEdit;wwDBComboBox5'
      'MARCADOR;CheckBox;*;'
      'ORD_STATUS;CustomEdit;DBCB_CLI_PESS')
    ValidateWithMask = True
    Left = 328
    Top = 208
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'OS_ID'
        ParamType = ptUnknown
      end>
    object Q_OCEMARCADOR: TStringField
      DisplayLabel = '***'
      DisplayWidth = 1
      FieldName = 'MARCADOR'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.MARCADOR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object Q_OCEORD_STATUS: TStringField
      Alignment = taCenter
      DisplayLabel = 'Situação'
      DisplayWidth = 1
      FieldName = 'ORD_STATUS'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_STATUS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object Q_OCEORD_CONH: TStringField
      DisplayLabel = 'Conhcto.Nº'
      DisplayWidth = 10
      FieldName = 'ORD_CONH'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_CONH'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 10
    end
    object Q_OCEORD_MINUTA: TStringField
      DisplayLabel = 'Minuta Nº'
      DisplayWidth = 10
      FieldName = 'ORD_MINUTA'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_MINUTA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 10
    end
    object Q_OCEOS_ID: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'OS'
      DisplayWidth = 10
      FieldName = 'OS_ID'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.OS_ID'
      ProviderFlags = [pfInUpdate]
    end
    object Q_OCEVEICNOME: TStringField
      DisplayLabel = 'Veículo Cobrar'
      DisplayWidth = 19
      FieldKind = fkLookup
      FieldName = 'VEICNOME'
      LookupKeyFields = 'VEIC_ID'
      LookupResultField = 'VEIC_NOME'
      KeyFields = 'VEIC_ID_RECEB'
      ProviderFlags = [pfInUpdate]
      Size = 30
      Lookup = True
    end
    object Q_OCEREGNOME: TStringField
      DisplayLabel = 'Região Cobrar'
      DisplayWidth = 18
      FieldKind = fkLookup
      FieldName = 'REGNOME'
      LookupKeyFields = 'REG_ID'
      LookupResultField = 'REG_NOME'
      KeyFields = 'REG_ID'
      ProviderFlags = [pfInUpdate]
      Size = 30
      Lookup = True
    end
    object Q_OCECLIFraza: TStringField
      DisplayLabel = 'Destinatário'
      DisplayWidth = 40
      FieldKind = fkLookup
      FieldName = 'CLIFraza'
      LookupKeyFields = 'CLIF_ID'
      LookupResultField = 'CLIF_RAZA'
      KeyFields = 'CLIF_ID'
      ProviderFlags = [pfInUpdate]
      Size = 40
      Lookup = True
    end
    object Q_OCEORD_ID: TAutoIncField
      Alignment = taCenter
      DisplayLabel = 'OC/E'
      DisplayWidth = 10
      FieldName = 'ORD_ID'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
      Visible = False
    end
    object Q_OCECFACODI: TStringField
      DisplayWidth = 4
      FieldKind = fkLookup
      FieldName = 'CFACODI'
      LookupKeyFields = 'CFA_ID'
      LookupResultField = 'CFA_CODI'
      KeyFields = 'CFA_ID'
      ProviderFlags = [pfInUpdate]
      Visible = False
      Size = 4
      Lookup = True
    end
    object Q_OCEORD_CONSIGN: TStringField
      DisplayWidth = 1
      FieldName = 'ORD_CONSIGN'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_CONSIGN'
      ProviderFlags = [pfInUpdate]
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_OCEORD_PESO_TOTAL: TFloatField
      DisplayLabel = 'Peso (Kg)'
      DisplayWidth = 18
      FieldName = 'ORD_PESO_TOTAL'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_PESO_TOTAL'
      ProviderFlags = [pfInUpdate]
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      EditFormat = '###,###,##0.0000'
    end
    object Q_OCEORD_VOLUME: TFloatField
      DisplayLabel = 'Volume (M3)'
      DisplayWidth = 18
      FieldName = 'ORD_VOLUME'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_VOLUME'
      ProviderFlags = [pfInUpdate]
      Visible = False
      DisplayFormat = '###,###,##0.000000'
      EditFormat = '###,###,##0.000000'
    end
    object Q_OCEORD_QTDE_PALLET: TFloatField
      DisplayLabel = 'Qtde Pallet'
      DisplayWidth = 10
      FieldName = 'ORD_QTDE_PALLET'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_QTDE_PALLET'
      ProviderFlags = [pfInUpdate]
      Visible = False
    end
    object Q_OCEORD_VALORTOTAL: TFloatField
      DisplayLabel = 'Valor'
      DisplayWidth = 15
      FieldName = 'ORD_VALORTOTAL'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_VALORTOTAL'
      ProviderFlags = [pfInUpdate]
      Visible = False
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_OCEORD_TPCARGA: TStringField
      DisplayLabel = 'Tp. Carga'
      DisplayWidth = 1
      FieldName = 'ORD_TPCARGA'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_TPCARGA'
      ProviderFlags = [pfInUpdate]
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_OCEORD_QTDE_UV: TFloatField
      DisplayLabel = 'Qtde.UV'
      DisplayWidth = 10
      FieldName = 'ORD_QTDE_UV'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_QTDE_UV'
      ProviderFlags = [pfInUpdate]
      Visible = False
      DisplayFormat = '0.000'
      EditFormat = '0.000'
    end
    object Q_OCEORD_PLACA: TStringField
      DisplayWidth = 8
      FieldName = 'ORD_PLACA'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_PLACA'
      ProviderFlags = [pfInUpdate]
      Visible = False
      FixedChar = True
      Size = 8
    end
    object Q_OCEORD_TOTALPREST: TFloatField
      DisplayWidth = 10
      FieldName = 'ORD_TOTALPREST'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_TOTALPREST'
      ProviderFlags = [pfInUpdate]
      Visible = False
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_OCEORD_VLR_ICMS: TFloatField
      DisplayWidth = 10
      FieldName = 'ORD_VLR_ICMS'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_VLR_ICMS'
      ProviderFlags = [pfInUpdate]
      Visible = False
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_OCEORD_NOTAS: TStringField
      DisplayWidth = 50
      FieldName = 'ORD_NOTAS'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_NOTAS'
      ProviderFlags = [pfInUpdate]
      Visible = False
      FixedChar = True
      Size = 50
    end
    object Q_OCETRANS_ID_REDES: TIntegerField
      DisplayWidth = 10
      FieldName = 'TRANS_ID_REDES'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.TRANS_ID_REDES'
      ProviderFlags = [pfInUpdate]
      Visible = False
    end
    object Q_OCEORD_PAGO: TStringField
      DisplayWidth = 1
      FieldName = 'ORD_PAGO'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_PAGO'
      ProviderFlags = [pfInUpdate]
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_OCECLIN_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'CLIN_ID'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.CLIN_ID'
      ProviderFlags = [pfInUpdate]
      Visible = False
    end
    object Q_OCEORD_VLR_FRETE: TFloatField
      DisplayWidth = 10
      FieldName = 'ORD_VLR_FRETE'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_VLR_FRETE'
      ProviderFlags = [pfInUpdate]
      Visible = False
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_OCEORD_VLR_SECCAT: TFloatField
      DisplayWidth = 10
      FieldName = 'ORD_VLR_SECCAT'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_VLR_SECCAT'
      ProviderFlags = [pfInUpdate]
      Visible = False
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_OCEORD_VLR_DESPACHO: TFloatField
      DisplayWidth = 10
      FieldName = 'ORD_VLR_DESPACHO'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_VLR_DESPACHO'
      ProviderFlags = [pfInUpdate]
      Visible = False
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_OCEORD_VLR_PEDAGIO: TFloatField
      DisplayWidth = 10
      FieldName = 'ORD_VLR_PEDAGIO'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_VLR_PEDAGIO'
      ProviderFlags = [pfInUpdate]
      Visible = False
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_OCEORD_VLR_OUTROS: TFloatField
      DisplayWidth = 10
      FieldName = 'ORD_VLR_OUTROS'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_VLR_OUTROS'
      ProviderFlags = [pfInUpdate]
      Visible = False
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_OCEVEIC_ID_RECEB: TIntegerField
      DisplayWidth = 10
      FieldName = 'VEIC_ID_RECEB'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.VEIC_ID_RECEB'
      ProviderFlags = [pfInUpdate]
      Visible = False
    end
    object Q_OCEREG_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'REG_ID'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.REG_ID'
      ProviderFlags = [pfInUpdate]
      Visible = False
    end
    object Q_OCEMANI_ID: TIntegerField
      FieldName = 'MANI_ID'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.MANI_ID'
      ProviderFlags = [pfInUpdate]
      Visible = False
    end
    object Q_OCETRANS_ID: TIntegerField
      FieldName = 'TRANS_ID'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.TRANS_ID'
      ProviderFlags = [pfInUpdate]
      Visible = False
    end
    object Q_OCEVEIC_ID: TIntegerField
      FieldName = 'VEIC_ID'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.VEIC_ID'
      ProviderFlags = [pfInUpdate]
      Visible = False
    end
    object Q_OCEORD_COLETA_ENTREGA: TStringField
      FieldName = 'ORD_COLETA_ENTREGA'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_COLETA_ENTREGA'
      ProviderFlags = [pfInUpdate]
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_OCEORD_COL_ENDERECO: TStringField
      FieldName = 'ORD_COL_ENDERECO'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_COL_ENDERECO'
      ProviderFlags = [pfInUpdate]
      Visible = False
      FixedChar = True
      Size = 50
    end
    object Q_OCEORD_COL_ENDERECO_COMPL: TStringField
      FieldName = 'ORD_COL_ENDERECO_COMPL'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_COL_ENDERECO_COMPL'
      ProviderFlags = [pfInUpdate]
      Visible = False
      FixedChar = True
    end
    object Q_OCEORD_COL_ENDERECO_BAIRRO: TStringField
      FieldName = 'ORD_COL_ENDERECO_BAIRRO'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_COL_ENDERECO_BAIRRO'
      ProviderFlags = [pfInUpdate]
      Visible = False
      FixedChar = True
    end
    object Q_OCEMUN_ID_COL: TIntegerField
      FieldName = 'MUN_ID_COL'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.MUN_ID_COL'
      ProviderFlags = [pfInUpdate]
      Visible = False
    end
    object Q_OCEORD_COL_MUNICIPIO: TStringField
      FieldName = 'ORD_COL_MUNICIPIO'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_COL_MUNICIPIO'
      ProviderFlags = [pfInUpdate]
      Visible = False
      FixedChar = True
      Size = 40
    end
    object Q_OCEUF_SIGLA_COL: TStringField
      FieldName = 'UF_SIGLA_COL'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.UF_SIGLA_COL'
      ProviderFlags = [pfInUpdate]
      Visible = False
      FixedChar = True
      Size = 2
    end
    object Q_OCEORD_COL_CEP: TStringField
      FieldName = 'ORD_COL_CEP'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_COL_CEP'
      ProviderFlags = [pfInUpdate]
      Visible = False
      EditMask = '99999-999;0;_'
      FixedChar = True
      Size = 8
    end
    object Q_OCEORD_COL_TEL1: TStringField
      FieldName = 'ORD_COL_TEL1'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_COL_TEL1'
      ProviderFlags = [pfInUpdate]
      Visible = False
      EditMask = '!\(999\)#999-9999;0; '
      FixedChar = True
      Size = 11
    end
    object Q_OCEORD_COL_TEL2: TStringField
      FieldName = 'ORD_COL_TEL2'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_COL_TEL2'
      ProviderFlags = [pfInUpdate]
      Visible = False
      EditMask = '!\(999\)#999-9999;0; '
      FixedChar = True
      Size = 11
    end
    object Q_OCEORD_COL_FAX: TStringField
      FieldName = 'ORD_COL_FAX'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_COL_FAX'
      ProviderFlags = [pfInUpdate]
      Visible = False
      EditMask = '!\(999\)#999-9999;0; '
      FixedChar = True
      Size = 11
    end
    object Q_OCEORD_COL_EMAIL: TStringField
      FieldName = 'ORD_COL_EMAIL'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_COL_EMAIL'
      ProviderFlags = [pfInUpdate]
      Visible = False
      FixedChar = True
      Size = 60
    end
    object Q_OCEORD_COL_CONTATO: TStringField
      FieldName = 'ORD_COL_CONTATO'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_COL_CONTATO'
      ProviderFlags = [pfInUpdate]
      Visible = False
      FixedChar = True
      Size = 50
    end
    object Q_OCEORD_ENT_ENDERECO: TStringField
      FieldName = 'ORD_ENT_ENDERECO'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_ENT_ENDERECO'
      ProviderFlags = [pfInUpdate]
      Visible = False
      FixedChar = True
      Size = 50
    end
    object Q_OCEORD_ENT_ENDERECO_COMPL: TStringField
      FieldName = 'ORD_ENT_ENDERECO_COMPL'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_ENT_ENDERECO_COMPL'
      ProviderFlags = [pfInUpdate]
      Visible = False
      FixedChar = True
    end
    object Q_OCEORD_ENT_ENDERECO_BAIRRO: TStringField
      FieldName = 'ORD_ENT_ENDERECO_BAIRRO'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_ENT_ENDERECO_BAIRRO'
      ProviderFlags = [pfInUpdate]
      Visible = False
      FixedChar = True
    end
    object Q_OCEMUN_ID_ENT: TIntegerField
      FieldName = 'MUN_ID_ENT'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.MUN_ID_ENT'
      ProviderFlags = [pfInUpdate]
      Visible = False
    end
    object Q_OCEORD_ENT_MUNICIPIO: TStringField
      FieldName = 'ORD_ENT_MUNICIPIO'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_ENT_MUNICIPIO'
      ProviderFlags = [pfInUpdate]
      Visible = False
      FixedChar = True
      Size = 40
    end
    object Q_OCEUF_SIGLA_ENT: TStringField
      FieldName = 'UF_SIGLA_ENT'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.UF_SIGLA_ENT'
      ProviderFlags = [pfInUpdate]
      Visible = False
      FixedChar = True
      Size = 2
    end
    object Q_OCEORD_ENT_CEP: TStringField
      FieldName = 'ORD_ENT_CEP'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_ENT_CEP'
      ProviderFlags = [pfInUpdate]
      Visible = False
      EditMask = '99999-999;0;_'
      FixedChar = True
      Size = 8
    end
    object Q_OCEORD_ENT_TEL1: TStringField
      FieldName = 'ORD_ENT_TEL1'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_ENT_TEL1'
      ProviderFlags = [pfInUpdate]
      Visible = False
      EditMask = '!\(999\)#999-9999;0; '
      FixedChar = True
      Size = 11
    end
    object Q_OCEORD_ENT_TEL2: TStringField
      FieldName = 'ORD_ENT_TEL2'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_ENT_TEL2'
      ProviderFlags = [pfInUpdate]
      Visible = False
      EditMask = '!\(999\)#999-9999;0; '
      FixedChar = True
      Size = 11
    end
    object Q_OCEORD_ENT_FAX: TStringField
      FieldName = 'ORD_ENT_FAX'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_ENT_FAX'
      ProviderFlags = [pfInUpdate]
      Visible = False
      EditMask = '!\(999\)#999-9999;0; '
      FixedChar = True
      Size = 11
    end
    object Q_OCEORD_ENT_EMAIL: TStringField
      FieldName = 'ORD_ENT_EMAIL'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_ENT_EMAIL'
      ProviderFlags = [pfInUpdate]
      Visible = False
      FixedChar = True
      Size = 60
    end
    object Q_OCEORD_ENT_CONTATO: TStringField
      FieldName = 'ORD_ENT_CONTATO'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_ENT_CONTATO'
      ProviderFlags = [pfInUpdate]
      Visible = False
      FixedChar = True
      Size = 50
    end
    object Q_OCECLIF_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'CLIF_ID'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.CLIF_ID'
      ProviderFlags = [pfInUpdate]
      Visible = False
    end
    object Q_OCECLINraza: TStringField
      DisplayWidth = 40
      FieldKind = fkLookup
      FieldName = 'CLINraza'
      LookupKeyFields = 'CLIN_ID'
      LookupResultField = 'CLIN_RAZA'
      KeyFields = 'CLIN_ID'
      ProviderFlags = [pfInUpdate]
      Visible = False
      Size = 40
      Lookup = True
    end
    object Q_OCETRANSRaza: TStringField
      DisplayWidth = 40
      FieldKind = fkLookup
      FieldName = 'TRANSRaza'
      LookupKeyFields = 'TRANS_ID'
      LookupResultField = 'TRANS_RAZA'
      KeyFields = 'TRANS_ID_REDES'
      ProviderFlags = [pfInUpdate]
      Visible = False
      Size = 40
      Lookup = True
    end
    object Q_OCEMUNIdesc: TStringField
      FieldKind = fkLookup
      FieldName = 'MUNIdesc'
      LookupKeyFields = 'MUN_ID'
      LookupResultField = 'MUN_NOME'
      KeyFields = 'MUN_ID_COL'
      ProviderFlags = [pfInUpdate]
      Visible = False
      Size = 30
      Lookup = True
    end
    object Q_OCEMUNIdescENT: TStringField
      FieldKind = fkLookup
      FieldName = 'MUNIdescENT'
      LookupKeyFields = 'MUN_ID'
      LookupResultField = 'MUN_NOME'
      KeyFields = 'MUN_ID_ENT'
      ProviderFlags = [pfInUpdate]
      Visible = False
      Size = 40
      Lookup = True
    end
    object Q_OCETransEND: TStringField
      FieldKind = fkLookup
      FieldName = 'TransEND'
      LookupKeyFields = 'TRANS_ID'
      LookupResultField = 'TRANS_ENDERECO'
      KeyFields = 'TRANS_ID_REDES'
      ProviderFlags = [pfInUpdate]
      Visible = False
      Size = 40
      Lookup = True
    end
    object Q_OCETransENDCOMPL: TStringField
      FieldKind = fkLookup
      FieldName = 'TransENDCOMPL'
      LookupKeyFields = 'TRANS_ID'
      LookupResultField = 'TRANS_ENDERECO_COMPL'
      KeyFields = 'TRANS_ID_REDES'
      ProviderFlags = [pfInUpdate]
      Visible = False
      Lookup = True
    end
    object Q_OCETransCNPJ: TStringField
      FieldKind = fkLookup
      FieldName = 'TransCNPJ'
      LookupKeyFields = 'TRANS_ID'
      LookupResultField = 'TRANS_CNPJ'
      KeyFields = 'TRANS_ID_REDES'
      ProviderFlags = [pfInUpdate]
      Visible = False
      Size = 15
      Lookup = True
    end
    object Q_OCETransPESSOA: TStringField
      FieldKind = fkLookup
      FieldName = 'TransPESSOA'
      LookupKeyFields = 'TRANS_ID'
      LookupResultField = 'TRANS_PESSOA'
      KeyFields = 'TRANS_ID_REDES'
      ProviderFlags = [pfInUpdate]
      Visible = False
      Size = 1
      Lookup = True
    end
    object Q_OCETransMUN_ID: TIntegerField
      FieldKind = fkLookup
      FieldName = 'TransMUN_ID'
      LookupKeyFields = 'TRANS_ID'
      LookupResultField = 'MUN_ID'
      KeyFields = 'TRANS_ID_REDES'
      ProviderFlags = [pfInUpdate]
      Visible = False
      Lookup = True
    end
    object Q_OCEORD_ALIQ: TFloatField
      FieldName = 'ORD_ALIQ'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_ID'
      ProviderFlags = [pfInUpdate]
      Visible = False
    end
    object Q_OCEORD_REDESPACHO: TStringField
      FieldName = 'ORD_REDESPACHO'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_REDESPACHO'
      ProviderFlags = [pfInUpdate]
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_OCECFA_ID: TIntegerField
      FieldName = 'CFA_ID'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.CFA_ID'
      ProviderFlags = [pfInUpdate]
      Visible = False
    end
    object Q_OCEUFCli: TStringField
      FieldKind = fkLookup
      FieldName = 'UFCli'
      LookupKeyFields = 'CLIN_ID'
      LookupResultField = 'UF_SIGLA'
      KeyFields = 'CLIN_ID'
      ProviderFlags = [pfInUpdate]
      Visible = False
      Size = 2
      Lookup = True
    end
    object Q_OCEORD_OBS: TStringField
      FieldName = 'ORD_OBS'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_OBS'
      ProviderFlags = [pfInUpdate]
      Visible = False
      FixedChar = True
      Size = 50
    end
    object Q_OCEORD_GENERICO: TStringField
      FieldName = 'ORD_GENERICO'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_GENERICO'
      ProviderFlags = [pfInUpdate]
      Visible = False
      FixedChar = True
      Size = 1
    end
  end
  object dspOCE: TDataSetProvider
    DataSet = Q_OCE
    Constraints = True
    UpdateMode = upWhereKeyOnly
    Left = 330
    Top = 103
  end
  object cdsOCE: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOCE'
    Left = 330
    Top = 151
    object cdsOCEMARCADOR: TStringField
      DisplayLabel = '***'
      DisplayWidth = 1
      FieldName = 'MARCADOR'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.MARCADOR'
      FixedChar = True
      Size = 1
    end
    object cdsOCEORD_STATUS: TStringField
      DisplayLabel = 'Situação'
      DisplayWidth = 1
      FieldName = 'ORD_STATUS'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_STATUS'
      FixedChar = True
      Size = 1
    end
    object cdsOCEORD_CONH: TStringField
      DisplayLabel = 'Conhcto.Nº'
      DisplayWidth = 10
      FieldName = 'ORD_CONH'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_CONH'
      FixedChar = True
      Size = 10
    end
    object cdsOCEORD_MINUTA: TStringField
      DisplayLabel = 'Minuta Nº'
      DisplayWidth = 10
      FieldName = 'ORD_MINUTA'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_MINUTA'
      FixedChar = True
      Size = 10
    end
    object cdsOCEOS_ID: TIntegerField
      DisplayLabel = 'OS'
      DisplayWidth = 10
      FieldName = 'OS_ID'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.OS_ID'
    end
    object cdsOCEVEICNOME: TStringField
      DisplayLabel = 'Veículo Cobrar'
      DisplayWidth = 19
      FieldName = 'VEICNOME'
      ReadOnly = True
      Size = 30
    end
    object cdsOCEREGNOME: TStringField
      DisplayLabel = 'Região Cobrar'
      DisplayWidth = 18
      FieldName = 'REGNOME'
      ReadOnly = True
      Size = 30
    end
    object cdsOCECLIFraza: TStringField
      DisplayLabel = 'Destinatário'
      DisplayWidth = 40
      FieldName = 'CLIFraza'
      ReadOnly = True
      Size = 40
    end
    object cdsOCECFACODI: TStringField
      FieldName = 'CFACODI'
      ReadOnly = True
      Visible = False
      Size = 4
    end
    object cdsOCEORD_ID: TAutoIncField
      FieldName = 'ORD_ID'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_ID'
      ReadOnly = True
      Visible = False
    end
    object cdsOCEORD_CONSIGN: TStringField
      FieldName = 'ORD_CONSIGN'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_CONSIGN'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object cdsOCEORD_PESO_TOTAL: TFloatField
      FieldName = 'ORD_PESO_TOTAL'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_PESO_TOTAL'
      Visible = False
    end
    object cdsOCEORD_VOLUME: TFloatField
      FieldName = 'ORD_VOLUME'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_VOLUME'
      Visible = False
    end
    object cdsOCEORD_QTDE_PALLET: TFloatField
      FieldName = 'ORD_QTDE_PALLET'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_QTDE_PALLET'
      Visible = False
      DisplayFormat = '###,##0.00'
    end
    object cdsOCEORD_VALORTOTAL: TFloatField
      FieldName = 'ORD_VALORTOTAL'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_VALORTOTAL'
      Visible = False
    end
    object cdsOCEORD_TPCARGA: TStringField
      FieldName = 'ORD_TPCARGA'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_TPCARGA'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object cdsOCEORD_QTDE_UV: TFloatField
      FieldName = 'ORD_QTDE_UV'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_QTDE_UV'
      Visible = False
    end
    object cdsOCEORD_PLACA: TStringField
      FieldName = 'ORD_PLACA'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_PLACA'
      Visible = False
      FixedChar = True
      Size = 8
    end
    object cdsOCEORD_TOTALPREST: TFloatField
      FieldName = 'ORD_TOTALPREST'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_TOTALPREST'
      Visible = False
      DisplayFormat = '###,##0.00'
    end
    object cdsOCEORD_VLR_ICMS: TFloatField
      FieldName = 'ORD_VLR_ICMS'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_VLR_ICMS'
      Visible = False
      DisplayFormat = '###,##0.00'
    end
    object cdsOCEORD_NOTAS: TStringField
      FieldName = 'ORD_NOTAS'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_NOTAS'
      Visible = False
      FixedChar = True
      Size = 50
    end
    object cdsOCETRANS_ID_REDES: TIntegerField
      FieldName = 'TRANS_ID_REDES'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.TRANS_ID_REDES'
      Visible = False
    end
    object cdsOCEORD_PAGO: TStringField
      FieldName = 'ORD_PAGO'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_PAGO'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object cdsOCECLIN_ID: TIntegerField
      FieldName = 'CLIN_ID'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.CLIN_ID'
      Visible = False
    end
    object cdsOCEORD_VLR_FRETE: TFloatField
      FieldName = 'ORD_VLR_FRETE'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_VLR_FRETE'
      Visible = False
      DisplayFormat = '###,##0.00'
    end
    object cdsOCEORD_VLR_SECCAT: TFloatField
      FieldName = 'ORD_VLR_SECCAT'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_VLR_SECCAT'
      Visible = False
      DisplayFormat = '###,##0.00'
    end
    object cdsOCEORD_VLR_DESPACHO: TFloatField
      FieldName = 'ORD_VLR_DESPACHO'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_VLR_DESPACHO'
      Visible = False
      DisplayFormat = '###,##0.00'
    end
    object cdsOCEORD_VLR_PEDAGIO: TFloatField
      FieldName = 'ORD_VLR_PEDAGIO'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_VLR_PEDAGIO'
      Visible = False
      DisplayFormat = '###,##0.00'
    end
    object cdsOCEORD_VLR_OUTROS: TFloatField
      FieldName = 'ORD_VLR_OUTROS'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_VLR_OUTROS'
      Visible = False
      DisplayFormat = '###,##0.00'
    end
    object cdsOCEVEIC_ID_RECEB: TIntegerField
      FieldName = 'VEIC_ID_RECEB'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.VEIC_ID_RECEB'
      Visible = False
    end
    object cdsOCEREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.REG_ID'
      Visible = False
    end
    object cdsOCEMANI_ID: TIntegerField
      FieldName = 'MANI_ID'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.MANI_ID'
      Visible = False
    end
    object cdsOCETRANS_ID: TIntegerField
      FieldName = 'TRANS_ID'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.TRANS_ID'
      Visible = False
    end
    object cdsOCEVEIC_ID: TIntegerField
      FieldName = 'VEIC_ID'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.VEIC_ID'
      Visible = False
    end
    object cdsOCEORD_COLETA_ENTREGA: TStringField
      FieldName = 'ORD_COLETA_ENTREGA'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_COLETA_ENTREGA'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object cdsOCEORD_COL_ENDERECO: TStringField
      FieldName = 'ORD_COL_ENDERECO'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_COL_ENDERECO'
      Visible = False
      FixedChar = True
      Size = 50
    end
    object cdsOCEORD_COL_ENDERECO_COMPL: TStringField
      FieldName = 'ORD_COL_ENDERECO_COMPL'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_COL_ENDERECO_COMPL'
      Visible = False
      FixedChar = True
    end
    object cdsOCEORD_COL_ENDERECO_BAIRRO: TStringField
      FieldName = 'ORD_COL_ENDERECO_BAIRRO'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_COL_ENDERECO_BAIRRO'
      Visible = False
      FixedChar = True
    end
    object cdsOCEMUN_ID_COL: TIntegerField
      FieldName = 'MUN_ID_COL'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.MUN_ID_COL'
      Visible = False
    end
    object cdsOCEORD_COL_MUNICIPIO: TStringField
      FieldName = 'ORD_COL_MUNICIPIO'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_COL_MUNICIPIO'
      Visible = False
      FixedChar = True
      Size = 40
    end
    object cdsOCEUF_SIGLA_COL: TStringField
      FieldName = 'UF_SIGLA_COL'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.UF_SIGLA_COL'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object cdsOCEORD_COL_CEP: TStringField
      FieldName = 'ORD_COL_CEP'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_COL_CEP'
      Visible = False
      FixedChar = True
      Size = 8
    end
    object cdsOCEORD_COL_TEL1: TStringField
      FieldName = 'ORD_COL_TEL1'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_COL_TEL1'
      Visible = False
      FixedChar = True
      Size = 11
    end
    object cdsOCEORD_COL_TEL2: TStringField
      FieldName = 'ORD_COL_TEL2'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_COL_TEL2'
      Visible = False
      FixedChar = True
      Size = 11
    end
    object cdsOCEORD_COL_FAX: TStringField
      FieldName = 'ORD_COL_FAX'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_COL_FAX'
      Visible = False
      FixedChar = True
      Size = 11
    end
    object cdsOCEORD_COL_EMAIL: TStringField
      FieldName = 'ORD_COL_EMAIL'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_COL_EMAIL'
      Visible = False
      FixedChar = True
      Size = 60
    end
    object cdsOCEORD_COL_CONTATO: TStringField
      FieldName = 'ORD_COL_CONTATO'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_COL_CONTATO'
      Visible = False
      FixedChar = True
      Size = 50
    end
    object cdsOCEORD_ENT_ENDERECO: TStringField
      FieldName = 'ORD_ENT_ENDERECO'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_ENT_ENDERECO'
      Visible = False
      FixedChar = True
      Size = 50
    end
    object cdsOCEORD_ENT_ENDERECO_COMPL: TStringField
      FieldName = 'ORD_ENT_ENDERECO_COMPL'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_ENT_ENDERECO_COMPL'
      Visible = False
      FixedChar = True
    end
    object cdsOCEORD_ENT_ENDERECO_BAIRRO: TStringField
      FieldName = 'ORD_ENT_ENDERECO_BAIRRO'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_ENT_ENDERECO_BAIRRO'
      Visible = False
      FixedChar = True
    end
    object cdsOCEMUN_ID_ENT: TIntegerField
      FieldName = 'MUN_ID_ENT'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.MUN_ID_ENT'
      Visible = False
    end
    object cdsOCEORD_ENT_MUNICIPIO: TStringField
      FieldName = 'ORD_ENT_MUNICIPIO'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_ENT_MUNICIPIO'
      Visible = False
      FixedChar = True
      Size = 40
    end
    object cdsOCEUF_SIGLA_ENT: TStringField
      FieldName = 'UF_SIGLA_ENT'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.UF_SIGLA_ENT'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object cdsOCEORD_ENT_CEP: TStringField
      FieldName = 'ORD_ENT_CEP'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_ENT_CEP'
      Visible = False
      FixedChar = True
      Size = 8
    end
    object cdsOCEORD_ENT_TEL1: TStringField
      FieldName = 'ORD_ENT_TEL1'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_ENT_TEL1'
      Visible = False
      FixedChar = True
      Size = 11
    end
    object cdsOCEORD_ENT_TEL2: TStringField
      FieldName = 'ORD_ENT_TEL2'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_ENT_TEL2'
      Visible = False
      FixedChar = True
      Size = 11
    end
    object cdsOCEORD_ENT_FAX: TStringField
      FieldName = 'ORD_ENT_FAX'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_ENT_FAX'
      Visible = False
      FixedChar = True
      Size = 11
    end
    object cdsOCEORD_ENT_EMAIL: TStringField
      FieldName = 'ORD_ENT_EMAIL'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_ENT_EMAIL'
      Visible = False
      FixedChar = True
      Size = 60
    end
    object cdsOCEORD_ENT_CONTATO: TStringField
      FieldName = 'ORD_ENT_CONTATO'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_ENT_CONTATO'
      Visible = False
      FixedChar = True
      Size = 50
    end
    object cdsOCECLIF_ID: TIntegerField
      FieldName = 'CLIF_ID'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.CLIF_ID'
      Visible = False
    end
    object cdsOCECLINraza: TStringField
      FieldName = 'CLINraza'
      ReadOnly = True
      Visible = False
      Size = 40
    end
    object cdsOCETRANSRaza: TStringField
      FieldName = 'TRANSRaza'
      ReadOnly = True
      Visible = False
      Size = 40
    end
    object cdsOCEMUNIdesc: TStringField
      FieldName = 'MUNIdesc'
      ReadOnly = True
      Visible = False
      Size = 30
    end
    object cdsOCEMUNIdescENT: TStringField
      FieldName = 'MUNIdescENT'
      ReadOnly = True
      Visible = False
      Size = 40
    end
    object cdsOCETransEND: TStringField
      FieldName = 'TransEND'
      ReadOnly = True
      Visible = False
      Size = 40
    end
    object cdsOCETransENDCOMPL: TStringField
      FieldName = 'TransENDCOMPL'
      ReadOnly = True
      Visible = False
    end
    object cdsOCETransCNPJ: TStringField
      FieldName = 'TransCNPJ'
      ReadOnly = True
      Visible = False
      Size = 15
    end
    object cdsOCETransPESSOA: TStringField
      FieldName = 'TransPESSOA'
      ReadOnly = True
      Visible = False
      Size = 1
    end
    object cdsOCETransMUN_ID: TIntegerField
      FieldName = 'TransMUN_ID'
      ReadOnly = True
      Visible = False
    end
    object cdsOCEORD_ALIQ: TFloatField
      FieldName = 'ORD_ALIQ'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_ID'
      Visible = False
      DisplayFormat = '###,##0.00'
    end
    object cdsOCEORD_REDESPACHO: TStringField
      FieldName = 'ORD_REDESPACHO'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_REDESPACHO'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object cdsOCECFA_ID: TIntegerField
      FieldName = 'CFA_ID'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.CFA_ID'
      Visible = False
    end
    object cdsOCEUFCli: TStringField
      FieldName = 'UFCli'
      ReadOnly = True
      Visible = False
      Size = 2
    end
    object cdsOCEORD_OBS: TStringField
      FieldName = 'ORD_OBS'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_OBS'
      Visible = False
      FixedChar = True
      Size = 50
    end
    object cdsOCEORD_GENERICO: TStringField
      FieldName = 'ORD_GENERICO'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_GENERICO'
      Visible = False
      FixedChar = True
      Size = 1
    end
  end
  object Q_AUX: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    ValidateWithMask = True
    Left = 438
    Top = 160
  end
  object Q_AUX1: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    ValidateWithMask = True
    Left = 488
    Top = 159
  end
  object Q_AUX2: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    ValidateWithMask = True
    Left = 544
    Top = 158
  end
end
