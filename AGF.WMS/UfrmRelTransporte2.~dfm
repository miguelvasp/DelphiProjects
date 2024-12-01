object frmRelTransporte2: TfrmRelTransporte2
  Left = 386
  Top = 56
  Width = 480
  Height = 585
  Caption = 'Relatório de Transporte 2'
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
  object GroupBox1: TGroupBox
    Left = 16
    Top = 8
    Width = 427
    Height = 57
    Caption = 'Emissão da Nota Fiscal'
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 17
      Height = 13
      Caption = 'De:'
    end
    object Label2: TLabel
      Left = 208
      Top = 24
      Width = 19
      Height = 13
      Caption = 'Até:'
    end
    object MaskEdit1: TMaskEdit
      Left = 48
      Top = 21
      Width = 121
      Height = 21
      EditMask = '99/99/9999'
      MaxLength = 10
      TabOrder = 0
      Text = '  /  /    '
      OnExit = MaskEdit1Exit
    end
    object MaskEdit2: TMaskEdit
      Left = 256
      Top = 21
      Width = 121
      Height = 21
      EditMask = '99/99/9999'
      MaxLength = 10
      TabOrder = 1
      Text = '  /  /    '
      OnExit = MaskEdit2Exit
    end
  end
  object GroupBox2: TGroupBox
    Left = 16
    Top = 163
    Width = 427
    Height = 53
    Caption = 'Cliente NBF'
    TabOrder = 1
    object cbocliente: TwwDBLookupCombo
      Left = 48
      Top = 24
      Width = 329
      Height = 21
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'clin_nome'#9'30'#9'Cliente'#9'F')
      LookupTable = qrClienteNBF
      LookupField = 'clin_id'
      TabOrder = 0
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnCloseUp = cboclienteCloseUp
      OnExit = cboclienteExit
    end
    object cboClienteRemetente: TwwDBLookupCombo
      Left = 48
      Top = 24
      Width = 329
      Height = 21
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'clin_nome'#9'30'#9'Cliente'#9'F')
      LookupTable = qrClienteRemetente
      LookupField = 'clin_id'
      TabOrder = 1
      Visible = False
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
    end
  end
  object RadioGroup1: TRadioGroup
    Left = 16
    Top = 331
    Width = 425
    Height = 56
    Caption = 'Produto'
    TabOrder = 2
  end
  object rgTransportador: TRadioGroup
    Left = 16
    Top = 279
    Width = 425
    Height = 49
    Caption = 'Transportador'
    Columns = 3
    ItemIndex = 0
    Items.Strings = (
      'Todos'
      'NBF'
      'Retira')
    TabOrder = 3
  end
  object BitBtn1: TBitBtn
    Left = 160
    Top = 501
    Width = 137
    Height = 33
    Caption = '     Visualizar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = BitBtn1Click
  end
  object rgGrupo: TRadioGroup
    Left = 16
    Top = 395
    Width = 425
    Height = 41
    Caption = 'Agrupar por'
    Color = clBtnFace
    Columns = 3
    ItemIndex = 0
    Items.Strings = (
      'Produto'
      'Nota Fiscal')
    ParentColor = False
    TabOrder = 5
  end
  object GroupBox3: TGroupBox
    Left = 16
    Top = 220
    Width = 425
    Height = 54
    Caption = 'Tipo de Produto'
    TabOrder = 6
    object cbotpProduto: TwwDBLookupCombo
      Left = 48
      Top = 24
      Width = 329
      Height = 21
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'TPRO_NOME'#9'40'#9'Tipo'#9'F')
      LookupTable = qrTPProduto
      LookupField = 'TPRO_ID'
      TabOrder = 0
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
    end
  end
  object BitBtn2: TBitBtn
    Left = 304
    Top = 501
    Width = 137
    Height = 33
    Caption = '     Excel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = BitBtn2Click
  end
  object rgTpDoc: TRadioGroup
    Left = 16
    Top = 64
    Width = 425
    Height = 89
    Caption = 'Tipo de Nota Fiscal'
    Columns = 3
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Verdana'
    Font.Style = []
    ItemIndex = 0
    Items.Strings = (
      'Saída'
      'Entrada'
      'Remetente'
      'Retorno Simbólico'
      'Armazém'
      'Entrada Ind.'
      'Ind. Efetuada'
      'Retorno de Ind.')
    ParentFont = False
    TabOrder = 8
    OnClick = rgTpDocClick
  end
  object cboProduto: TwwDBLookupCombo
    Left = 64
    Top = 349
    Width = 329
    Height = 21
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'pro_cod'#9'16'#9'pro_cod'#9'F'
      'pro_desc'#9'40'#9'pro_desc'#9'F')
    LookupTable = qrProduto
    LookupField = 'pro_id'
    TabOrder = 9
    AutoDropDown = True
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
  end
  object RadioGroup2: TRadioGroup
    Left = 16
    Top = 442
    Width = 425
    Height = 45
    Caption = 'Considerar'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'Último preço'
      'Preço da nota')
    TabOrder = 10
  end
  object qrClienteNBF: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select  CLIN_ID,CLIN_RAZA as clin_nome from CLIENTENBF where'
      '(CLIN_CONTRATO <> '#39'I'#39' and CLIN_CONTRATO <> '#39'R'#39') '
      'order by CLIN_RAZA ')
    ValidateWithMask = True
    Left = 400
    Top = 176
    object qrClienteNBFclin_nome: TStringField
      DisplayLabel = 'Cliente'
      DisplayWidth = 30
      FieldName = 'clin_nome'
      FixedChar = True
      Size = 30
    end
    object qrClienteNBFclin_id: TAutoIncField
      DisplayWidth = 10
      FieldName = 'clin_id'
      Visible = False
    end
  end
  object qrProduto: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'select pro_id, pro_cod, pro_desc from produto'
      'order by pro_cod')
    ValidateWithMask = True
    Left = 248
    Top = 168
    object qrProdutopro_cod: TStringField
      DisplayWidth = 16
      FieldName = 'pro_cod'
      FixedChar = True
      Size = 16
    end
    object qrProdutopro_desc: TStringField
      DisplayWidth = 40
      FieldName = 'pro_desc'
      FixedChar = True
      Size = 40
    end
    object qrProdutopro_id: TAutoIncField
      DisplayWidth = 10
      FieldName = 'pro_id'
      Visible = False
    end
  end
  object qrExecConsulta: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      
        'EXEC REL_TRANSPORTE3 :USUARIO, :DE, :ATE, :CLIN_ID, :PRO_ID, :TR' +
        'ANS, :GRUPO, :FATOR, :TPDOC, :TIPO_PRECO')
    ValidateWithMask = True
    Left = 328
    Top = 392
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'USUARIO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CLIN_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PRO_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TRANS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'GRUPO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FATOR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TPDOC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TIPO_PRECO'
        ParamType = ptUnknown
      end>
  end
  object qrTPProduto: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'SELECT TPRO_ID, TPRO_NOME FROM TPPRODUTO_CLINBF')
    ValidateWithMask = True
    Left = 408
    Top = 232
    object qrTPProdutoTPRO_NOME: TStringField
      DisplayLabel = 'Tipo'
      DisplayWidth = 40
      FieldName = 'TPRO_NOME'
      Origin = 'NBFDADOS.TPPRODUTO_CLINBF.TPRO_NOME'
      FixedChar = True
      Size = 40
    end
    object qrTPProdutoTPRO_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'TPRO_ID'
      Origin = 'NBFDADOS.TPPRODUTO_CLINBF.TPRO_ID'
      Visible = False
    end
  end
  object qrRel: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select * from REL_TRANSPORTE'
      'where ch = :ch')
    ValidateWithMask = True
    Left = 400
    Top = 344
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ch'
        ParamType = ptUnknown
      end>
    object qrRelDATA: TDateTimeField
      FieldName = 'DATA'
      Origin = 'NBFDADOS.REL_TRANSPORTE.DATA'
      DisplayFormat = 'DD/MM/YYYY'
    end
    object qrRelNOTA_FISCAL: TStringField
      FieldName = 'NOTA_FISCAL'
      Origin = 'NBFDADOS.REL_TRANSPORTE.NOTA_FISCAL'
      FixedChar = True
      Size = 10
    end
    object qrRelPESO: TFloatField
      FieldName = 'PESO'
      Origin = 'NBFDADOS.REL_TRANSPORTE.PESO'
      DisplayFormat = '###,##0.00'
    end
    object qrRelOBS: TStringField
      FieldName = 'OBS'
      Origin = 'NBFDADOS.REL_TRANSPORTE.OBS'
      FixedChar = True
      Size = 1
    end
    object qrRelCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'NBFDADOS.REL_TRANSPORTE.CODIGO'
      FixedChar = True
    end
    object qrRelPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Origin = 'NBFDADOS.REL_TRANSPORTE.PRODUTO'
      FixedChar = True
      Size = 50
    end
    object qrRelFATURA: TFloatField
      FieldName = 'FATURA'
      Origin = 'NBFDADOS.REL_TRANSPORTE.FATURA'
      DisplayFormat = '###,##0.00'
    end
    object qrRelUV: TFloatField
      FieldName = 'UV'
      Origin = 'NBFDADOS.REL_TRANSPORTE.UV'
    end
    object qrRelUE: TFloatField
      FieldName = 'UE'
      Origin = 'NBFDADOS.REL_TRANSPORTE.UE'
    end
  end
  object qrFiltraProduto: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'SELECT DISTINCT CODIGO FROM REL_TRANSPORTE'
      'ORDER BY CODIGO')
    ValidateWithMask = True
    Left = 104
    Top = 304
    object qrFiltraProdutoCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'NBFDADOS.REL_TRANSPORTE.CODIGO'
      FixedChar = True
    end
  end
  object qrFiltraNotaFiscal: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'SELECT DISTINCT NOTA_FISCAL FROM REL_TRANSPORTE'
      'WHERE CH = :CH'
      'ORDER BY NOTA_FISCAL')
    ValidateWithMask = True
    Left = 208
    Top = 304
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CH'
        ParamType = ptUnknown
      end>
    object qrFiltraNotaFiscalNOTA_FISCAL: TStringField
      FieldName = 'NOTA_FISCAL'
      Origin = 'NBFDADOS.REL_TRANSPORTE.NOTA_FISCAL'
      FixedChar = True
      Size = 10
    end
  end
  object qrDetalhe: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'SELECT *, round(fatura, 2) as fat FROM REL_TRANSPORTE')
    ValidateWithMask = True
    Left = 272
    Top = 344
    object qrDetalheDATA: TDateTimeField
      FieldName = 'DATA'
      Origin = 'NBFDADOS.REL_TRANSPORTE.DATA'
      DisplayFormat = 'DD/MM/YYYY'
    end
    object qrDetalheNOTA_FISCAL: TStringField
      FieldName = 'NOTA_FISCAL'
      Origin = 'NBFDADOS.REL_TRANSPORTE.NOTA_FISCAL'
      FixedChar = True
      Size = 10
    end
    object qrDetalhePESO: TFloatField
      FieldName = 'PESO'
      Origin = 'NBFDADOS.REL_TRANSPORTE.PESO'
    end
    object qrDetalheOBS: TStringField
      FieldName = 'OBS'
      Origin = 'NBFDADOS.REL_TRANSPORTE.OBS'
      FixedChar = True
      Size = 8
    end
    object qrDetalheCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'NBFDADOS.REL_TRANSPORTE.CODIGO'
      FixedChar = True
    end
    object qrDetalhePRODUTO: TStringField
      FieldName = 'PRODUTO'
      Origin = 'NBFDADOS.REL_TRANSPORTE.PRODUTO'
      FixedChar = True
      Size = 50
    end
    object qrDetalheFATURA: TFloatField
      FieldName = 'FATURA'
      Origin = 'NBFDADOS.REL_TRANSPORTE.FATURA'
    end
    object qrDetalheCH: TIntegerField
      FieldName = 'CH'
      Origin = 'NBFDADOS.REL_TRANSPORTE.CH'
    end
    object qrDetalhefat: TFloatField
      FieldName = 'fat'
    end
    object qrDetalheUV: TFloatField
      FieldName = 'UV'
    end
    object qrDetalheUE: TFloatField
      FieldName = 'UE'
    end
    object qrDetalheDESTINATARIO: TStringField
      FieldName = 'DESTINATARIO'
      FixedChar = True
      Size = 50
    end
    object qrDetalheVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object qrDetalheNFE: TStringField
      FieldName = 'NFE'
      FixedChar = True
      Size = 10
    end
    object qrDetalhePRO_ID: TIntegerField
      FieldName = 'PRO_ID'
    end
    object qrDetalheCFOP: TStringField
      FieldName = 'CFOP'
      FixedChar = True
      Size = 50
    end
    object qrDetalheTRANS_ID: TIntegerField
      FieldName = 'TRANS_ID'
    end
    object qrDetalheTRANSPORTADORA: TStringField
      FieldName = 'TRANSPORTADORA'
      FixedChar = True
      Size = 255
    end
    object qrDetalhePLACA: TStringField
      FieldName = 'PLACA'
      FixedChar = True
      Size = 50
    end
  end
  object qrTotais: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'SELECT round(SUM(VALOR), 2)  AS TVALOR,'
      'round(SUM(PESO), 2)  AS TPESO, '
      'ROUND(SUM(FATURA), 2) AS TFATURA,'
      'SUM(UV) AS TUV,'
      'SUM(UE) AS TUE'
      'FROM REL_TRANSPORTE')
    ValidateWithMask = True
    Left = 320
    Top = 192
    object qrTotaisTPESO: TFloatField
      FieldName = 'TPESO'
    end
    object qrTotaisTFATURA: TFloatField
      FieldName = 'TFATURA'
    end
    object qrTotaisTUV: TFloatField
      FieldName = 'TUV'
    end
    object qrTotaisTUE: TFloatField
      FieldName = 'TUE'
    end
    object qrTotaisTVALOR: TFloatField
      FieldName = 'TVALOR'
    end
  end
  object qrCount: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'select count(*) as achei from  rel_transporte')
    ValidateWithMask = True
    Left = 248
    Top = 256
    object qrCountachei: TIntegerField
      FieldName = 'achei'
    end
  end
  object qrClienteRemetente: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select  CLIN_ID,CLIN_RAZA as clin_nome from CLIENTENBF where'
      '(CLIN_CONTRATO <> '#39'I'#39' and CLIN_CONTRATO = '#39'R'#39') '
      'order by CLIN_RAZA ')
    ValidateWithMask = True
    Left = 408
    Top = 288
    object qrClienteRemetenteCLIN_ID: TAutoIncField
      FieldName = 'CLIN_ID'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_ID'
    end
    object qrClienteRemetenteclin_nome: TStringField
      FieldName = 'clin_nome'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_RAZA'
      FixedChar = True
      Size = 50
    end
  end
end
