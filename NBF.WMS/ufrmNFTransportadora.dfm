object frmNFTransportadora: TfrmNFTransportadora
  Left = 247
  Top = 218
  BorderStyle = bsDialog
  Caption = 'Transportadora'
  ClientHeight = 378
  ClientWidth = 715
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
  object lbl1: TLabel
    Left = 32
    Top = 72
    Width = 83
    Height = 14
    Caption = 'Transportadora'
  end
  object lbl2: TLabel
    Left = 32
    Top = 168
    Width = 63
    Height = 14
    Caption = 'Observação'
  end
  object lbl3: TLabel
    Left = 200
    Top = 120
    Width = 27
    Height = 14
    Caption = 'Placa'
    FocusControl = dbedt1
  end
  object lbl4: TLabel
    Left = 392
    Top = 120
    Width = 48
    Height = 14
    Caption = 'Qtde UV'
    FocusControl = dbedt2
  end
  object lbl5: TLabel
    Left = 472
    Top = 120
    Width = 41
    Height = 14
    Caption = 'Especie'
    FocusControl = dbedt3
  end
  object lbl6: TLabel
    Left = 600
    Top = 120
    Width = 31
    Height = 14
    Caption = 'Marca'
    FocusControl = dbedt4
  end
  object lbl7: TLabel
    Left = 32
    Top = 8
    Width = 43
    Height = 14
    Caption = 'Número'
    FocusControl = dbedt5
  end
  object lbl8: TLabel
    Left = 128
    Top = 8
    Width = 64
    Height = 14
    Caption = 'Destinatário'
    FocusControl = dbedt6
  end
  object lbl9: TLabel
    Left = 32
    Top = 120
    Width = 57
    Height = 14
    Caption = 'Tipo Frete'
  end
  object Label1: TLabel
    Left = 296
    Top = 120
    Width = 14
    Height = 14
    Caption = 'UF'
    FocusControl = DBEdit1
  end
  object wwDBLookupCombo1: TwwDBLookupCombo
    Left = 32
    Top = 88
    Width = 665
    Height = 22
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'nome'#9'60'#9'nome'#9#9)
    DataField = 'TRANS_ID'
    DataSource = ds1
    LookupTable = qryTransp
    LookupField = 'TRANS_ID'
    TabOrder = 2
    AutoDropDown = True
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
  end
  object dbmmo1: TDBMemo
    Left = 32
    Top = 184
    Width = 665
    Height = 113
    DataField = 'OBS_DANFE'
    DataSource = ds1
    TabOrder = 8
  end
  object btn1: TButton
    Left = 32
    Top = 320
    Width = 113
    Height = 25
    Caption = 'Salvar'
    TabOrder = 9
    OnClick = btn1Click
  end
  object dbedt1: TDBEdit
    Left = 200
    Top = 136
    Width = 89
    Height = 22
    DataField = 'NFI_PLAC'
    DataSource = ds1
    TabOrder = 4
  end
  object dbedt2: TDBEdit
    Left = 392
    Top = 136
    Width = 73
    Height = 22
    DataField = 'NFI_QTDEUV'
    DataSource = ds1
    TabOrder = 5
  end
  object dbedt3: TDBEdit
    Left = 472
    Top = 136
    Width = 121
    Height = 22
    DataField = 'NFI_ESPE'
    DataSource = ds1
    TabOrder = 6
  end
  object dbedt4: TDBEdit
    Left = 600
    Top = 136
    Width = 97
    Height = 22
    DataField = 'NFI_MARC'
    DataSource = ds1
    TabOrder = 7
  end
  object btn2: TButton
    Left = 160
    Top = 320
    Width = 113
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 10
    OnClick = btn2Click
  end
  object dbedt5: TDBEdit
    Left = 32
    Top = 24
    Width = 74
    Height = 22
    DataField = 'NFI_NUMERO'
    DataSource = ds1
    Enabled = False
    TabOrder = 0
  end
  object dbedt6: TDBEdit
    Left = 128
    Top = 24
    Width = 569
    Height = 22
    DataField = 'NFI_DEST_RAZA'
    DataSource = ds1
    Enabled = False
    TabOrder = 1
  end
  object wwDBComboBox1: TwwDBComboBox
    Left = 32
    Top = 136
    Width = 161
    Height = 22
    ShowButton = True
    Style = csDropDown
    MapList = True
    AllowClearKey = False
    DataField = 'NFI_TFRE'
    DataSource = ds1
    DropDownCount = 8
    ItemHeight = 0
    Items.Strings = (
      'Emitente'#9'1'
      'Destinatário'#9'2')
    Sorted = False
    TabOrder = 3
    UnboundDataType = wwDefault
  end
  object DBEdit1: TDBEdit
    Left = 296
    Top = 136
    Width = 89
    Height = 22
    DataField = 'NFI_UF_SIGLA'
    DataSource = ds1
    TabOrder = 11
  end
  object qryNota: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <
      item
        Name = 'NFI_CODI'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select * from nf'
      'WHERE NFI_CODI = :NFI_CODI')
    Left = 440
    Top = 296
    object qryNotaNFI_CODI: TAutoIncField
      FieldName = 'NFI_CODI'
      ReadOnly = True
    end
    object qryNotaNFI_NUMERO: TStringField
      FieldName = 'NFI_NUMERO'
      Size = 10
    end
    object qryNotaTDOC_ID: TIntegerField
      FieldName = 'TDOC_ID'
    end
    object qryNotaNFI_EMIT_ORIG: TStringField
      FieldName = 'NFI_EMIT_ORIG'
      Size = 1
    end
    object qryNotaNFI_EMIT_CLI: TIntegerField
      FieldName = 'NFI_EMIT_CLI'
    end
    object qryNotaNFI_DEST_ORIG: TStringField
      FieldName = 'NFI_DEST_ORIG'
      Size = 1
    end
    object qryNotaNFI_DEST_CLI: TIntegerField
      FieldName = 'NFI_DEST_CLI'
    end
    object qryNotaNFI_DEST_NOME: TStringField
      FieldName = 'NFI_DEST_NOME'
      Size = 30
    end
    object qryNotaNFI_DEST_RAZA: TStringField
      FieldName = 'NFI_DEST_RAZA'
      Size = 50
    end
    object qryNotaNFI_DEST_ENDERECO: TStringField
      FieldName = 'NFI_DEST_ENDERECO'
      Size = 50
    end
    object qryNotaNFI_DEST_COMPL: TStringField
      FieldName = 'NFI_DEST_COMPL'
    end
    object qryNotaNFI_DEST_BAIRRO: TStringField
      FieldName = 'NFI_DEST_BAIRRO'
      Size = 40
    end
    object qryNotaNFI_DEST_UF_SIGLA: TStringField
      FieldName = 'NFI_DEST_UF_SIGLA'
      Size = 2
    end
    object qryNotaNFI_DEST_CEP: TStringField
      FieldName = 'NFI_DEST_CEP'
      Size = 8
    end
    object qryNotaNFI_DEST_TEL: TStringField
      FieldName = 'NFI_DEST_TEL'
      Size = 11
    end
    object qryNotaNFI_DEST_FAX: TStringField
      FieldName = 'NFI_DEST_FAX'
      Size = 11
    end
    object qryNotaNFI_DEST_CGC: TStringField
      FieldName = 'NFI_DEST_CGC'
      Size = 14
    end
    object qryNotaNFI_DEST_INSCRG: TStringField
      FieldName = 'NFI_DEST_INSCRG'
    end
    object qryNotaNFI_DEST_INSCTRB: TStringField
      FieldName = 'NFI_DEST_INSCTRB'
    end
    object qryNotaNFI_DEST_PESS: TStringField
      FieldName = 'NFI_DEST_PESS'
      FixedChar = True
      Size = 1
    end
    object qryNotaNFI_VDES: TFloatField
      FieldName = 'NFI_VDES'
    end
    object qryNotaNFI_VFRE: TFloatField
      FieldName = 'NFI_VFRE'
    end
    object qryNotaNFI_VSEG: TFloatField
      FieldName = 'NFI_VSEG'
    end
    object qryNotaNFI_BIPI: TFloatField
      FieldName = 'NFI_BIPI'
    end
    object qryNotaNFI_VIPI: TFloatField
      FieldName = 'NFI_VIPI'
    end
    object qryNotaNFI_BICM: TFloatField
      FieldName = 'NFI_BICM'
    end
    object qryNotaNFI_VICM: TFloatField
      FieldName = 'NFI_VICM'
    end
    object qryNotaNFI_VMER: TFloatField
      FieldName = 'NFI_VMER'
    end
    object qryNotaNFI_TOTA: TFloatField
      FieldName = 'NFI_TOTA'
    end
    object qryNotaNFI_DSAI: TDateTimeField
      FieldName = 'NFI_DSAI'
    end
    object qryNotaNFI_HSAI: TDateTimeField
      FieldName = 'NFI_HSAI'
    end
    object qryNotaNFI_TRAN: TStringField
      FieldName = 'NFI_TRAN'
      Size = 50
    end
    object qryNotaNFI_PLAC: TStringField
      FieldName = 'NFI_PLAC'
      Size = 50
    end
    object qryNotaNFI_UF_SIGLA: TStringField
      FieldName = 'NFI_UF_SIGLA'
      Size = 2
    end
    object qryNotaNFI_MARC: TStringField
      FieldName = 'NFI_MARC'
      Size = 15
    end
    object qryNotaNFI_QTDE: TIntegerField
      FieldName = 'NFI_QTDE'
    end
    object qryNotaNFI_ESPE: TStringField
      FieldName = 'NFI_ESPE'
      Size = 15
    end
    object qryNotaNFI_PLIQ: TFloatField
      FieldName = 'NFI_PLIQ'
    end
    object qryNotaNFI_PBRU: TFloatField
      FieldName = 'NFI_PBRU'
    end
    object qryNotaNFI_VOL: TFloatField
      FieldName = 'NFI_VOL'
    end
    object qryNotaNFI_TFRE: TStringField
      FieldName = 'NFI_TFRE'
      Size = 1
    end
    object qryNotaNFI_DEMI: TDateTimeField
      FieldName = 'NFI_DEMI'
    end
    object qryNotaCFA_ID: TIntegerField
      FieldName = 'CFA_ID'
    end
    object qryNotaOS_ID: TIntegerField
      FieldName = 'OS_ID'
    end
    object qryNotaMUN_ID: TIntegerField
      FieldName = 'MUN_ID'
    end
    object qryNotaNFI_MARCADOR: TStringField
      FieldName = 'NFI_MARCADOR'
      Size = 1
    end
    object qryNotaNFI_DTENTREGA: TDateTimeField
      FieldName = 'NFI_DTENTREGA'
    end
    object qryNotaMANI_ID: TIntegerField
      FieldName = 'MANI_ID'
    end
    object qryNotaMANI_ORDEM: TIntegerField
      FieldName = 'MANI_ORDEM'
    end
    object qryNotaNFI_MOVESTQ: TStringField
      FieldName = 'NFI_MOVESTQ'
      Size = 1
    end
    object qryNotaNFI_TRANS: TStringField
      FieldName = 'NFI_TRANS'
      Size = 1
    end
    object qryNotaTEXTO_LIVRE: TMemoField
      FieldName = 'TEXTO_LIVRE'
      BlobType = ftMemo
    end
    object qryNotaNFI_DTENTREGA_FIM: TDateTimeField
      FieldName = 'NFI_DTENTREGA_FIM'
    end
    object qryNotaNFI_ENTREGA: TStringField
      FieldName = 'NFI_ENTREGA'
      Size = 1
    end
    object qryNotaNFI_COBRAR: TStringField
      FieldName = 'NFI_COBRAR'
      Size = 1
    end
    object qryNotaNFI_CLONE: TStringField
      FieldName = 'NFI_CLONE'
      Size = 1
    end
    object qryNotaNFI_QTDEPALLET: TIntegerField
      FieldName = 'NFI_QTDEPALLET'
    end
    object qryNotaNFI_QTDEUV: TFloatField
      FieldName = 'NFI_QTDEUV'
    end
    object qryNotaTPRO_ID: TIntegerField
      FieldName = 'TPRO_ID'
    end
    object qryNotaNFI_MARCADOR_NFRS: TStringField
      FieldName = 'NFI_MARCADOR_NFRS'
      Size = 1
    end
    object qryNotaNFI_NFRS_REJEITADA: TStringField
      FieldName = 'NFI_NFRS_REJEITADA'
      Size = 1
    end
    object qryNotaNFI_RETORNADA: TStringField
      FieldName = 'NFI_RETORNADA'
      Size = 1
    end
    object qryNotaNFI_GEROUNFE: TStringField
      FieldName = 'NFI_GEROUNFE'
      Size = 1
    end
    object qryNotaNFI_REDESPACHO: TStringField
      FieldName = 'NFI_REDESPACHO'
      Size = 1
    end
    object qryNotaORD_ID: TIntegerField
      FieldName = 'ORD_ID'
    end
    object qryNotaTRANS_ID: TIntegerField
      FieldName = 'TRANS_ID'
    end
    object qryNotaNFI_PRESTSERV: TStringField
      FieldName = 'NFI_PRESTSERV'
      Size = 25
    end
    object qryNotaNFI_FATURADA: TStringField
      FieldName = 'NFI_FATURADA'
      Size = 10
    end
    object qryNotaNFI_DISCRIM: TStringField
      FieldName = 'NFI_DISCRIM'
      Size = 2000
    end
    object qryNotaFAT_ID: TIntegerField
      FieldName = 'FAT_ID'
    end
    object qryNotaNFI_MARCAREEN: TStringField
      FieldName = 'NFI_MARCAREEN'
      Size = 1
    end
    object qryNotaNFI_STATUS: TStringField
      FieldName = 'NFI_STATUS'
      Size = 1
    end
    object qryNotaNFI_MARCAIMP: TStringField
      FieldName = 'NFI_MARCAIMP'
      Size = 1
    end
    object qryNotaNFI_CODI_ORIGINOUNFRS: TIntegerField
      FieldName = 'NFI_CODI_ORIGINOUNFRS'
    end
    object qryNotaNFI_LOAD: TStringField
      FieldName = 'NFI_LOAD'
      Size = 8
    end
    object qryNotaNFI_SERIE: TStringField
      FieldName = 'NFI_SERIE'
      Size = 2
    end
    object qryNotaNFI_MARCADOR_CROS: TStringField
      FieldName = 'NFI_MARCADOR_CROS'
      Size = 1
    end
    object qryNotaNFI_EXCLUI_REEN: TStringField
      FieldName = 'NFI_EXCLUI_REEN'
      Size = 1
    end
    object qryNotaNFI_MARCADOR_CTRCGEN: TStringField
      FieldName = 'NFI_MARCADOR_CTRCGEN'
      Size = 1
    end
    object qryNotaNFI_GEROU_REENTREGA: TStringField
      FieldName = 'NFI_GEROU_REENTREGA'
      Size = 1
    end
    object qryNotaBLOQUEIO: TStringField
      FieldName = 'BLOQUEIO'
      Size = 1
    end
    object qryNotaSEL: TStringField
      FieldName = 'SEL'
      Size = 1
    end
    object qryNotaCOD_EDI: TStringField
      FieldName = 'COD_EDI'
      Size = 2
    end
    object qryNotaNFI_CODI_SIMB: TIntegerField
      FieldName = 'NFI_CODI_SIMB'
    end
    object qryNotaIBGE_ID: TIntegerField
      FieldName = 'IBGE_ID'
    end
    object qryNotaCHAVE_NFE: TStringField
      FieldName = 'CHAVE_NFE'
      Size = 50
    end
    object qryNotacNF: TStringField
      FieldName = 'cNF'
      Size = 50
    end
    object qryNotacDV: TStringField
      FieldName = 'cDV'
      Size = 50
    end
    object qryNotaOBS_DANFE: TMemoField
      FieldName = 'OBS_DANFE'
      BlobType = ftMemo
    end
    object qryNotaNFE: TStringField
      FieldName = 'NFE'
      Size = 1
    end
    object qryNotaNFI_ISS: TFloatField
      FieldName = 'NFI_ISS'
    end
    object qryNotaNFI_ALIQISS: TFloatField
      FieldName = 'NFI_ALIQISS'
    end
    object qryNotaNF_SERVICO_SEL: TStringField
      FieldName = 'NF_SERVICO_SEL'
      Size = 1
    end
    object qryNotaPREP_ID: TIntegerField
      FieldName = 'PREP_ID'
    end
  end
  object qryTransp: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    SQL.Strings = (
      'SELECT TRANS_ID, UPPER(TRANS_RAZA) nome'
      'FROM TRANSPORTADORA'
      'ORDER BY TRANS_RAZA')
    Left = 344
    Top = 296
    object qryTranspnome: TStringField
      DisplayWidth = 60
      FieldName = 'nome'
      ReadOnly = True
      Size = 60
    end
    object qryTranspTRANS_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'TRANS_ID'
      ReadOnly = True
      Visible = False
    end
  end
  object ds1: TDataSource
    DataSet = qryNota
    Left = 392
    Top = 296
  end
end
