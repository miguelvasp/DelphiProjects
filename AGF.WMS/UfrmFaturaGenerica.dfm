object frmFaturaGenerica: TfrmFaturaGenerica
  Left = 319
  Top = 156
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Gera��o de Fatura Gen�rica'
  ClientHeight = 297
  ClientWidth = 576
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
  object RzGroupBox1: TRzGroupBox
    Left = 24
    Top = 16
    Width = 529
    Height = 57
    Caption = 'Cliente'
    TabOrder = 0
    object cboCliente: TwwDBLookupCombo
      Left = 16
      Top = 24
      Width = 505
      Height = 22
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'CLIN_RAZA'#9'50'#9'CLIN_RAZA'#9'F')
      LookupTable = cdsClin
      LookupField = 'CLIN_ID'
      TabOrder = 0
      AutoDropDown = True
      ShowButton = True
      AllowClearKey = False
    end
  end
  object RzGroupBox2: TRzGroupBox
    Left = 24
    Top = 88
    Width = 529
    Height = 57
    Caption = 'Condi��o de Pagamento'
    TabOrder = 1
    object cboCondPgto: TwwDBLookupCombo
      Left = 16
      Top = 24
      Width = 505
      Height = 22
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'Descricao'#9'25'#9'Descri��o'#9'F'
        'Num_Parcelas'#9'28'#9'N�mero de Parcelas'#9'F')
      LookupTable = Q_COND
      LookupField = 'Cond_Pgto_ID'
      TabOrder = 0
      AutoDropDown = True
      ShowButton = True
      AllowClearKey = False
    end
  end
  object RzRadioGroup1: TRzRadioGroup
    Left = 256
    Top = 160
    Width = 297
    Height = 57
    Caption = 'Sele��o'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'Fatura Transporte'
      'NF de Servi�os')
    SpaceEvenly = True
    TabOrder = 2
  end
  object RzGroupBox3: TRzGroupBox
    Left = 24
    Top = 160
    Width = 217
    Height = 57
    Caption = 'Valor da Fatura'
    TabOrder = 3
    object edtValor: TEdit
      Left = 16
      Top = 24
      Width = 185
      Height = 22
      TabOrder = 0
      Text = '0'
    end
  end
  object RzBitBtn1: TRzBitBtn
    Left = 200
    Top = 240
    Width = 185
    Height = 33
    Caption = 'Gerar Fatura'
    TabOrder = 4
    OnClick = RzBitBtn1Click
    Glyph.Data = {
      76060000424D7606000000000000360400002800000018000000180000000100
      08000000000040020000220B0000220B00000001000000000000942121009429
      2900943131009C3131009C393900A5393900944242009C424200A5424200AD42
      4200A54A42009C424A009C4A4A00A54A4A00AD4A4A00B54A4A009C525200B552
      5200BD525200C6525200BD5A5A00C65A5A00CE5A5A009C636300A5636300C663
      6300CE6363009C6B6B00B56B6B00BD6B6B00C66B6B00CE6B6B00AD736B00B573
      6B009C737300A5737300B5737300BD737300C6737300CE737300B5847300A57B
      7B00AD7B7B00BD7B7B00C67B7B00CE7B7B00A5848400B5848400BD848400C684
      8400B58C8400A58C8C00AD8C8C00B58C8C00C68C8C00CE8C8C00BD949400D694
      94009C9C9C00BD9C9C00C69C9C00CE9C9C00CEA59C00ADA5A500CEA5A500D6A5
      A500C6ADAD00CEADAD00D6ADAD00B5B5B500BDB5B500DEB5B500BDBDB500B5BD
      BD00BDBDBD00D6BDBD00DEBDBD00C6C6C600CEC6C600DEC6C600E7C6C600C6CE
      CE00CECECE00D6CECE00DECECE00D6D6D600DEDED600DEDEDE00E7DEDE00E7E7
      DE00EFE7DE00E7E7E700EFE7E700F7E7E700EFEFE700F7EFE700EFEFEF00F7EF
      EF00F7F7EF00F7F7F700FFF7F700FFFFF700FF00FF00FFFFFF00FFFFFF00FFFF
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
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00666620100C10
      0C2345454546464545454523060C0C0C0C6666281E19191A111B455259606262
      5C58572401020414190C66281E1A1A1A141B332F43546265635E5B2401020415
      190C66281E1A1A1A14222904213C5C636462602B01020415190C66281E1A1A1A
      14232E02072456606364632B01020415190C66281E1A1A1A14233402020C4D59
      6064672C01020415190C66281E1A1A1A112A350101023F525961673101020415
      190C66281E1A1A1A112A421818173A455560673101020414190C66281E1A1A1A
      1424413C3B3834343C44502608090E19190C66281E1A1A1A1A1A1A1A1A1A1A1A
      1919191A1A1A1A1A190C66281E1914191E2727272727272727272727272D1F1A
      190C66281E0E0A1C36434B4B4B4B4B4B4B4B4B4B4B4F371A190C66281E093D62
      616161616161616161616161615C3715190C66281E0940676363636363636363
      63636363645C3714190C66281E094067616161616161616161616161635C3714
      190C66281E0940675B4E5252525252525252524D585C3714190C66281E094067
      615C5C5C5C5C5C5C5C5C5C5C615C3714190C66281E0940675C53535353535353
      535353525B5C3714190C66281E0940675E5858585858585858585858605C3714
      190C66281E0940675E5858585858585858585858605C3714190C66281E094067
      5B52535353535353535353525B5C3714190C66281E0940676464646464646464
      64646464645C3715190C66281D093D605C5C5C5C5C5C5C5C5C5C5C5C5E583611
      140C6666200832514D4D4D4D4D4D4D4D4D4D4D4D4D4E2F060C66}
  end
  object Q_CLIN: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select *  from CLIENTENBF where'
      'CLIN_CONTRATO = '#39'S'#39
      'order by CLIN_RAZA ')
    ValidateWithMask = True
    Left = 512
    Top = 18
    object Q_CLINCLIN_RAZA: TStringField
      DisplayWidth = 50
      FieldName = 'CLIN_RAZA'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_RAZA'
      FixedChar = True
      Size = 50
    end
    object Q_CLINCLIN_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'CLIN_ID'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_ID'
      Visible = False
    end
    object Q_CLINCLIN_UTIL_COD: TStringField
      FieldName = 'CLIN_UTIL_COD'
      FixedChar = True
      Size = 1
    end
    object Q_CLINCLIN_PESSOA: TStringField
      FieldName = 'CLIN_PESSOA'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_PESSOA'
      FixedChar = True
      Size = 1
    end
    object Q_CLINCLIN_NOME: TStringField
      FieldName = 'CLIN_NOME'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_NOME'
      FixedChar = True
      Size = 30
    end
    object Q_CLINCLIN_CGCCPF: TStringField
      FieldName = 'CLIN_CGCCPF'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_CGCCPF'
      FixedChar = True
      Size = 15
    end
    object Q_CLINCLIN_INSCRG: TStringField
      FieldName = 'CLIN_INSCRG'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_INSCRG'
      FixedChar = True
      Size = 15
    end
    object Q_CLINCLIN_ENDERECO: TStringField
      FieldName = 'CLIN_ENDERECO'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_ENDERECO'
      FixedChar = True
      Size = 50
    end
    object Q_CLINCLIN_ENDERECO_COMPL: TStringField
      FieldName = 'CLIN_ENDERECO_COMPL'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_ENDERECO_COMPL'
      FixedChar = True
    end
    object Q_CLINCLIN_ENDERECO_BAIRRO: TStringField
      FieldName = 'CLIN_ENDERECO_BAIRRO'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_ENDERECO_BAIRRO'
      FixedChar = True
      Size = 40
    end
    object Q_CLINCLIN_MUNICIPIO: TStringField
      FieldName = 'CLIN_MUNICIPIO'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_MUNICIPIO'
      FixedChar = True
      Size = 40
    end
    object Q_CLINUF_SIGLA: TStringField
      FieldName = 'UF_SIGLA'
      Origin = 'NBFDADOS.CLIENTENBF.UF_SIGLA'
      FixedChar = True
      Size = 2
    end
    object Q_CLINCLIN_CEP: TStringField
      FieldName = 'CLIN_CEP'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_CEP'
      FixedChar = True
      Size = 8
    end
    object Q_CLINCLIN_TEL1: TStringField
      FieldName = 'CLIN_TEL1'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_TEL1'
      FixedChar = True
      Size = 11
    end
    object Q_CLINCLIN_TEL2: TStringField
      FieldName = 'CLIN_TEL2'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_TEL2'
      FixedChar = True
      Size = 11
    end
    object Q_CLINCLIN_FAX: TStringField
      FieldName = 'CLIN_FAX'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_FAX'
      FixedChar = True
      Size = 11
    end
    object Q_CLINCLIN_EMAIL: TStringField
      FieldName = 'CLIN_EMAIL'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_EMAIL'
      FixedChar = True
      Size = 60
    end
    object Q_CLINCON_CODI: TStringField
      FieldName = 'CON_CODI'
      Origin = 'NBFDADOS.CLIENTENBF.CON_CODI'
      FixedChar = True
      Size = 6
    end
    object Q_CLINCLIN_CONTRATO: TStringField
      FieldName = 'CLIN_CONTRATO'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_CONTRATO'
      FixedChar = True
      Size = 1
    end
    object Q_CLINMUN_ID: TIntegerField
      FieldName = 'MUN_ID'
      Origin = 'NBFDADOS.CLIENTENBF.MUN_ID'
    end
    object Q_CLINCLIN_TIPOSALDO: TStringField
      FieldName = 'CLIN_TIPOSALDO'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_ID'
      FixedChar = True
      Size = 1
    end
    object Q_CLINCLIN_DESCONTO: TFloatField
      FieldName = 'CLIN_DESCONTO'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_DESCONTO'
    end
  end
  object dspClin: TDataSetProvider
    DataSet = Q_CLIN
    Constraints = True
    Left = 512
    Top = 72
  end
  object cdsClin: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspClin'
    Left = 512
    Top = 136
    object cdsClinCLIN_RAZA: TStringField
      DisplayWidth = 50
      FieldName = 'CLIN_RAZA'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_RAZA'
      FixedChar = True
      Size = 50
    end
    object cdsClinCLIN_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'CLIN_ID'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_ID'
      ReadOnly = True
      Visible = False
    end
    object cdsClinCLIN_UTIL_COD: TStringField
      DisplayWidth = 1
      FieldName = 'CLIN_UTIL_COD'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object cdsClinCLIN_PESSOA: TStringField
      DisplayWidth = 1
      FieldName = 'CLIN_PESSOA'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_PESSOA'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object cdsClinCLIN_NOME: TStringField
      DisplayWidth = 30
      FieldName = 'CLIN_NOME'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_NOME'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object cdsClinCLIN_CGCCPF: TStringField
      DisplayWidth = 15
      FieldName = 'CLIN_CGCCPF'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_CGCCPF'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object cdsClinCLIN_INSCRG: TStringField
      DisplayWidth = 15
      FieldName = 'CLIN_INSCRG'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_INSCRG'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object cdsClinCLIN_ENDERECO: TStringField
      DisplayWidth = 50
      FieldName = 'CLIN_ENDERECO'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_ENDERECO'
      Visible = False
      FixedChar = True
      Size = 50
    end
    object cdsClinCLIN_ENDERECO_COMPL: TStringField
      DisplayWidth = 20
      FieldName = 'CLIN_ENDERECO_COMPL'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_ENDERECO_COMPL'
      Visible = False
      FixedChar = True
    end
    object cdsClinCLIN_ENDERECO_BAIRRO: TStringField
      DisplayWidth = 40
      FieldName = 'CLIN_ENDERECO_BAIRRO'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_ENDERECO_BAIRRO'
      Visible = False
      FixedChar = True
      Size = 40
    end
    object cdsClinCLIN_MUNICIPIO: TStringField
      DisplayWidth = 40
      FieldName = 'CLIN_MUNICIPIO'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_MUNICIPIO'
      Visible = False
      FixedChar = True
      Size = 40
    end
    object cdsClinUF_SIGLA: TStringField
      DisplayWidth = 2
      FieldName = 'UF_SIGLA'
      Origin = 'NBFDADOS.CLIENTENBF.UF_SIGLA'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object cdsClinCLIN_CEP: TStringField
      DisplayWidth = 8
      FieldName = 'CLIN_CEP'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_CEP'
      Visible = False
      FixedChar = True
      Size = 8
    end
    object cdsClinCLIN_TEL1: TStringField
      DisplayWidth = 11
      FieldName = 'CLIN_TEL1'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_TEL1'
      Visible = False
      FixedChar = True
      Size = 11
    end
    object cdsClinCLIN_TEL2: TStringField
      DisplayWidth = 11
      FieldName = 'CLIN_TEL2'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_TEL2'
      Visible = False
      FixedChar = True
      Size = 11
    end
    object cdsClinCLIN_FAX: TStringField
      DisplayWidth = 11
      FieldName = 'CLIN_FAX'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_FAX'
      Visible = False
      FixedChar = True
      Size = 11
    end
    object cdsClinCLIN_EMAIL: TStringField
      DisplayWidth = 60
      FieldName = 'CLIN_EMAIL'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_EMAIL'
      Visible = False
      FixedChar = True
      Size = 60
    end
    object cdsClinCON_CODI: TStringField
      DisplayWidth = 6
      FieldName = 'CON_CODI'
      Origin = 'NBFDADOS.CLIENTENBF.CON_CODI'
      Visible = False
      FixedChar = True
      Size = 6
    end
    object cdsClinCLIN_CONTRATO: TStringField
      DisplayWidth = 1
      FieldName = 'CLIN_CONTRATO'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_CONTRATO'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object cdsClinMUN_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'MUN_ID'
      Origin = 'NBFDADOS.CLIENTENBF.MUN_ID'
      Visible = False
    end
    object cdsClinCLIN_TIPOSALDO: TStringField
      DisplayWidth = 1
      FieldName = 'CLIN_TIPOSALDO'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_ID'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object cdsClinCLIN_DESCONTO: TFloatField
      DisplayWidth = 10
      FieldName = 'CLIN_DESCONTO'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_DESCONTO'
      Visible = False
    end
  end
  object Q_COND: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'SELECT * from CONDICAO_PAGTO'
      'order by descricao')
    ValidateWithMask = True
    Left = 508
    Top = 200
    object Q_CONDDescricao: TStringField
      DisplayLabel = 'Descri��o'
      DisplayWidth = 25
      FieldName = 'Descricao'
      Origin = 'NBFDADOS.CONDICAO_PAGTO.Descricao'
      FixedChar = True
      Size = 30
    end
    object Q_CONDNum_Parcelas: TFloatField
      DisplayLabel = 'N�mero de Parcelas'
      DisplayWidth = 28
      FieldName = 'Num_Parcelas'
      Origin = 'NBFDADOS.CONDICAO_PAGTO.Num_Parcelas'
    end
    object Q_CONDCond_Pgto_ID: TAutoIncField
      FieldName = 'Cond_Pgto_ID'
      Origin = 'NBFDADOS.CONDICAO_PAGTO.Cond_Pgto_ID'
      Visible = False
    end
    object Q_CONDPagamento: TStringField
      FieldName = 'Pagamento'
      Origin = 'NBFDADOS.CONDICAO_PAGTO.Pagamento'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object Q_CONDFora: TStringField
      FieldName = 'Fora'
      Origin = 'NBFDADOS.CONDICAO_PAGTO.Fora'
      Visible = False
      FixedChar = True
      Size = 1
    end
  end
  object STP_GERAFATURA: TwwStoredProc
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    StoredProcName = 'dbo.STP_GERAFATURA'
    ValidateWithMask = True
    Left = 129
    Top = 233
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Result'
        ParamType = ptResult
      end
      item
        DataType = ftFloat
        Name = '@VALORCHEIO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@CLIN_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@COND_PGTO_ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@TIPO'
        ParamType = ptInput
      end>
  end
end
