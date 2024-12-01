object frmPgtoCartao: TfrmPgtoCartao
  Left = 334
  Top = 48
  Width = 1132
  Height = 620
  Caption = 'Pagamento com Cartão de Crédito'
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
  object Label13: TLabel
    Left = 19
    Top = 6
    Width = 78
    Height = 14
    Caption = 'Cliente origem'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label33: TLabel
    Left = 432
    Top = 6
    Width = 33
    Height = 14
    Caption = 'Banco'
  end
  object Label1: TLabel
    Left = 19
    Top = 91
    Width = 84
    Height = 14
    Caption = 'Vencimento de'
  end
  object Label2: TLabel
    Left = 116
    Top = 91
    Width = 20
    Height = 14
    Caption = 'Até'
  end
  object Label3: TLabel
    Left = 401
    Top = 91
    Width = 82
    Height = 14
    Caption = 'N° Documento'
  end
  object Label4: TLabel
    Left = 493
    Top = 91
    Width = 52
    Height = 14
    Caption = 'Taxa (%)'
  end
  object Label5: TLabel
    Left = 584
    Top = 91
    Width = 85
    Height = 14
    Caption = 'Data de crédito'
  end
  object Label6: TLabel
    Left = 19
    Top = 46
    Width = 81
    Height = 14
    Caption = 'Cliente destino'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 203
    Top = 91
    Width = 60
    Height = 14
    Caption = 'Emissão de'
  end
  object Label8: TLabel
    Left = 300
    Top = 91
    Width = 20
    Height = 14
    Caption = 'Até'
  end
  object tbTotal: TLabel
    Left = 24
    Top = 552
    Width = 79
    Height = 14
    Caption = 'Total: R$ 0,00'
  end
  object cboCliente: TwwDBLookupCombo
    Left = 19
    Top = 22
    Width = 406
    Height = 22
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    CharCase = ecUpperCase
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'CLI_RAZA'#9'50'#9'Razão'
      'CLI_CODI'#9'10'#9'Código')
    LookupTable = Q_RECCLI
    LookupField = 'CLI_CODI'
    ParentFont = False
    TabOrder = 0
    AutoDropDown = True
    ShowButton = True
    SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
    PreciseEditRegion = False
    AllowClearKey = False
  end
  object cboBanco: TwwDBLookupCombo
    Left = 432
    Top = 22
    Width = 381
    Height = 22
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    CharCase = ecUpperCase
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'BAN_NOME'#9'25'#9'Nome'#9'F'
      'BAN_CODI'#9'14'#9'Conta'#9'F')
    LookupTable = Q_BANC
    LookupField = 'BAN_CODI'
    ParentFont = False
    TabOrder = 1
    AutoDropDown = True
    ShowButton = True
    SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
    PreciseEditRegion = False
    AllowClearKey = False
  end
  object edtIni: TMaskEdit
    Left = 20
    Top = 107
    Width = 89
    Height = 22
    EditMask = '99/99/9999'
    MaxLength = 10
    TabOrder = 3
    Text = '  /  /    '
  end
  object edtFim: TMaskEdit
    Left = 117
    Top = 107
    Width = 85
    Height = 22
    EditMask = '99/99/9999'
    MaxLength = 10
    TabOrder = 4
    Text = '  /  /    '
  end
  object edtDoc: TEdit
    Left = 400
    Top = 107
    Width = 85
    Height = 22
    TabOrder = 5
  end
  object edtTaxa: TEdit
    Left = 492
    Top = 107
    Width = 85
    Height = 22
    TabOrder = 6
  end
  object edtdataCred: TMaskEdit
    Left = 585
    Top = 107
    Width = 89
    Height = 22
    EditMask = '99/99/9999'
    MaxLength = 10
    TabOrder = 7
    Text = '  /  /    '
  end
  object Button1: TButton
    Left = 712
    Top = 104
    Width = 123
    Height = 25
    Caption = 'Buscar'
    TabOrder = 8
    OnClick = Button1Click
  end
  object wwDBGrid1: TwwDBGrid
    Left = 16
    Top = 188
    Width = 1089
    Height = 341
    Selected.Strings = (
      'REC_CODI'#9'7'#9'CR.'
      'REC_RAZA'#9'25'#9'Cliente'
      'REC_NFIS'#9'10'#9'Documento'
      'NSU'#9'10'#9'NSU'
      'REC_VENC'#9'10'#9'Vencimento'
      'REC_EMIS'#9'10'#9'Emissão'
      'REC_HIST'#9'30'#9'Histórico'
      'REC_VLIQ'#9'10'#9'V. Liq.'
      'REC_SALD'#9'10'#9'Saldo'
      'PgtoTotal'#9'9'#9'Pgto Total'
      'PgtoParcial'#9'10'#9'Pgto Parcial')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 9
    ShowHorzScrollBar = True
    DataSource = DataSource1
    TabOrder = 9
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnDblClick = wwDBGrid1DblClick
  end
  object Button3: TButton
    Left = 968
    Top = 544
    Width = 137
    Height = 25
    Caption = 'Confirmar'
    Enabled = False
    TabOrder = 10
    OnClick = Button3Click
  end
  object RadioGroup1: TRadioGroup
    Left = 16
    Top = 141
    Width = 817
    Height = 36
    Caption = 'Ordenar por'
    Columns = 4
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemIndex = 0
    Items.Strings = (
      'Vencimento'
      'Documento'
      'Valor'
      'NSU')
    ParentFont = False
    TabOrder = 11
  end
  object cboClienteDestino: TwwDBLookupCombo
    Left = 19
    Top = 62
    Width = 406
    Height = 22
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    CharCase = ecUpperCase
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'CLI_RAZA'#9'50'#9'Razão'
      'CLI_CODI'#9'10'#9'Código')
    LookupTable = qrCliente
    LookupField = 'CLI_CODI'
    ParentFont = False
    TabOrder = 2
    AutoDropDown = True
    ShowButton = True
    SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
    PreciseEditRegion = False
    AllowClearKey = False
  end
  object MaskEdit1: TMaskEdit
    Left = 204
    Top = 107
    Width = 89
    Height = 22
    EditMask = '99/99/9999'
    MaxLength = 10
    TabOrder = 12
    Text = '  /  /    '
  end
  object MaskEdit2: TMaskEdit
    Left = 301
    Top = 107
    Width = 85
    Height = 22
    EditMask = '99/99/9999'
    MaxLength = 10
    TabOrder = 13
    Text = '  /  /    '
  end
  object Button2: TButton
    Left = 728
    Top = 544
    Width = 209
    Height = 25
    Caption = 'Transferir selecionados para destino'
    TabOrder = 14
    OnClick = Button2Click
  end
  object Q_AUX: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    ValidateWithMask = True
    Left = 408
    Top = 440
  end
  object Q_RECCLI: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'Select CLI_CODI,CLI_RAZA  from CPACLIE  order by CLI_RAZA')
    ValidateWithMask = True
    Left = 393
    Top = 237
    object Q_RECCLICLI_RAZA: TStringField
      DisplayLabel = 'Razão'
      DisplayWidth = 50
      FieldName = 'CLI_RAZA'
      Origin = 'CPACLIE.CLI_RAZA'
      Size = 50
    end
    object Q_RECCLICLI_CODI: TAutoIncField
      DisplayLabel = 'Código'
      DisplayWidth = 10
      FieldName = 'CLI_CODI'
      Origin = 'CPACLIE.CLI_CODI'
    end
  end
  object Q_BANC: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'Select BAN_CODI,BAN_NOME  from CPABANC ')
    ValidateWithMask = True
    Left = 153
    Top = 370
    object Q_BANCBAN_NOME: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 25
      FieldName = 'BAN_NOME'
      Origin = 'CPABANC.BAN_NOME'
      Size = 25
    end
    object Q_BANCBAN_CODI: TStringField
      DisplayLabel = 'Conta'
      DisplayWidth = 14
      FieldName = 'BAN_CODI'
      Origin = 'CPABANC.BAN_CODI'
      Size = 14
    end
  end
  object qrExec: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    ValidateWithMask = True
    Left = 712
    Top = 152
  end
  object qrBusca: TwwQuery
    CachedUpdates = True
    BeforePost = qrBuscaBeforePost
    AfterPost = qrBuscaAfterPost
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM PgtoCartao')
    UpdateObject = UPD_RECE
    ControlType.Strings = (
      'PgtoTotal;CheckBox;T;N')
    ValidateWithMask = True
    Left = 792
    Top = 144
    object qrBuscaREC_CODI: TIntegerField
      DisplayLabel = 'CR.'
      DisplayWidth = 7
      FieldName = 'REC_CODI'
      Origin = 'FINANCEIRO.PgtoCartao.REC_CODI'
    end
    object qrBuscaREC_RAZA: TStringField
      DisplayLabel = 'Cliente'
      DisplayWidth = 25
      FieldName = 'REC_RAZA'
      Origin = 'FINANCEIRO.PgtoCartao.REC_RAZA'
      FixedChar = True
      Size = 50
    end
    object qrBuscaREC_NFIS: TStringField
      DisplayLabel = 'Documento'
      DisplayWidth = 10
      FieldName = 'REC_NFIS'
      Origin = 'FINANCEIRO.PgtoCartao.REC_NFIS'
      FixedChar = True
      Size = 50
    end
    object qrBuscaNSU: TStringField
      DisplayWidth = 10
      FieldName = 'NSU'
      Origin = 'FINANCEIRO.PgtoCartao.NSU'
      FixedChar = True
      Size = 50
    end
    object qrBuscaREC_VENC: TDateTimeField
      DisplayLabel = 'Vencimento'
      DisplayWidth = 10
      FieldName = 'REC_VENC'
      Origin = 'FINANCEIRO.PgtoCartao.REC_VENC'
    end
    object qrBuscaREC_EMIS: TDateTimeField
      DisplayLabel = 'Emissão'
      DisplayWidth = 10
      FieldName = 'REC_EMIS'
      Origin = 'FINANCEIRO.PgtoCartao.REC_EMIS'
      DisplayFormat = 'dd/MM/yyyy'
    end
    object qrBuscaREC_HIST: TStringField
      DisplayLabel = 'Histórico'
      DisplayWidth = 30
      FieldName = 'REC_HIST'
      Origin = 'FINANCEIRO.PgtoCartao.REC_HIST'
      FixedChar = True
      Size = 50
    end
    object qrBuscaREC_VLIQ: TFloatField
      DisplayLabel = 'V. Liq.'
      DisplayWidth = 10
      FieldName = 'REC_VLIQ'
      Origin = 'FINANCEIRO.PgtoCartao.REC_VLIQ'
      DisplayFormat = '###,###,##0.00'
    end
    object qrBuscaREC_SALD: TFloatField
      DisplayLabel = 'Saldo'
      DisplayWidth = 10
      FieldName = 'REC_SALD'
      Origin = 'FINANCEIRO.PgtoCartao.REC_SALD'
      DisplayFormat = '###,###,##0.00'
    end
    object qrBuscaPgtoTotal: TStringField
      DisplayLabel = 'Pgto Total'
      DisplayWidth = 9
      FieldName = 'PgtoTotal'
      Origin = 'FINANCEIRO.PgtoCartao.PgtoTotal'
      FixedChar = True
      Size = 1
    end
    object qrBuscaPgtoParcial: TFloatField
      DisplayLabel = 'Pgto Parcial'
      DisplayWidth = 10
      FieldName = 'PgtoParcial'
      Origin = 'FINANCEIRO.PgtoCartao.PgtoParcial'
      DisplayFormat = '###,###,##0.00'
    end
    object qrBuscaID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'ID'
      Origin = 'FINANCEIRO.PgtoCartao.ID'
      Visible = False
    end
  end
  object DataSource1: TDataSource
    DataSet = qrBusca
    Left = 248
    Top = 256
  end
  object UPD_RECE: TUpdateSQL
    ModifySQL.Strings = (
      'update PgtoCartao'
      'set'
      '  PgtoTotal = :PgtoTotal,'
      '  PgtoParcial = :PgtoParcial'
      'where'
      '  ID = :OLD_ID ')
    DeleteSQL.Strings = (
      '')
    Left = 457
    Top = 322
  end
  object qrApagaSobra: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      
        'delete from PgtoCartao where ISNULL(PgtoTotal, '#39'N'#39') = '#39'N'#39' and Pg' +
        'toParcial is null')
    ValidateWithMask = True
    Left = 312
    Top = 344
  end
  object STP_BAIXA: TStoredProc
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    StoredProcName = 'dbo.BAIXA_CARTAO;1'
    Left = 209
    Top = 314
    ParamData = <
      item
        DataType = ftInteger
        Name = '@REC_CODI'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@TIPO'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = '@DATA_CREDITO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@DOCUMENTO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = '@TAXA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@BANCO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = '@VALOR'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@CLIENTE'
        ParamType = ptInput
      end>
  end
  object qrPara: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'SELECT * FROM CPAPARA')
    ValidateWithMask = True
    Left = 512
    Top = 168
    object qrParaPAR_CHAV: TStringField
      FieldName = 'PAR_CHAV'
      Origin = 'FINANCEIRO.CPAPARA.PAR_CHAV'
      FixedChar = True
      Size = 1
    end
    object qrParaPAR_MOED: TStringField
      FieldName = 'PAR_MOED'
      Origin = 'FINANCEIRO.CPAPARA.PAR_MOED'
      FixedChar = True
      Size = 50
    end
    object qrParaPAR_SALD: TFloatField
      FieldName = 'PAR_SALD'
      Origin = 'FINANCEIRO.CPAPARA.PAR_SALD'
    end
    object qrParaPAR_DATA: TDateTimeField
      FieldName = 'PAR_DATA'
      Origin = 'FINANCEIRO.CPAPARA.PAR_DATA'
    end
    object qrParaCtaGerencialOrig: TStringField
      FieldName = 'CtaGerencialOrig'
      Origin = 'FINANCEIRO.CPAPARA.CtaGerencialOrig'
      FixedChar = True
      Size = 6
    end
    object qrParaCtaGerencialDest: TStringField
      FieldName = 'CtaGerencialDest'
      Origin = 'FINANCEIRO.CPAPARA.CtaGerencialDest'
      FixedChar = True
      Size = 6
    end
    object qrParaFilialOrigem: TStringField
      FieldName = 'FilialOrigem'
      Origin = 'FINANCEIRO.CPAPARA.FilialOrigem'
      FixedChar = True
      Size = 3
    end
    object qrParaFilialDestino: TStringField
      FieldName = 'FilialDestino'
      Origin = 'FINANCEIRO.CPAPARA.FilialDestino'
      FixedChar = True
      Size = 3
    end
    object qrParaCta_GerencialPaga: TStringField
      FieldName = 'Cta_GerencialPaga'
      Origin = 'FINANCEIRO.CPAPARA.Cta_GerencialPaga'
      FixedChar = True
      Size = 6
    end
    object qrParaFilialPaga: TStringField
      FieldName = 'FilialPaga'
      Origin = 'FINANCEIRO.CPAPARA.FilialPaga'
      FixedChar = True
      Size = 3
    end
    object qrParaCta_GerencialRece: TStringField
      FieldName = 'Cta_GerencialRece'
      Origin = 'FINANCEIRO.CPAPARA.Cta_GerencialRece'
      FixedChar = True
      Size = 6
    end
    object qrParaFilialRece: TStringField
      FieldName = 'FilialRece'
      Origin = 'FINANCEIRO.CPAPARA.FilialRece'
      FixedChar = True
      Size = 3
    end
    object qrParaPAR_MOVI: TStringField
      FieldName = 'PAR_MOVI'
      Origin = 'FINANCEIRO.CPAPARA.PAR_MOVI'
      FixedChar = True
      Size = 1
    end
    object qrParaPAR_DOLAR: TStringField
      FieldName = 'PAR_DOLAR'
      Origin = 'FINANCEIRO.CPAPARA.PAR_DOLAR'
      FixedChar = True
      Size = 4
    end
    object qrParaPAR_Acrescimo: TStringField
      FieldName = 'PAR_Acrescimo'
      Origin = 'FINANCEIRO.CPAPARA.PAR_Acrescimo'
      FixedChar = True
      Size = 3
    end
    object qrParaEmp_Nome: TStringField
      FieldName = 'Emp_Nome'
      Origin = 'FINANCEIRO.CPAPARA.Emp_Nome'
      FixedChar = True
    end
    object qrParaPar_impnf: TStringField
      FieldName = 'Par_impnf'
      Origin = 'FINANCEIRO.CPAPARA.Par_impnf'
      FixedChar = True
      Size = 80
    end
    object qrParaRestringe_pag_empresa: TStringField
      FieldName = 'Restringe_pag_empresa'
      Origin = 'FINANCEIRO.CPAPARA.Restringe_pag_empresa'
      FixedChar = True
      Size = 1
    end
    object qrParaPARA_CARTAO: TStringField
      FieldName = 'PARA_CARTAO'
      Origin = 'FINANCEIRO.CPAPARA.PARA_CARTAO'
      FixedChar = True
      Size = 3
    end
  end
  object qrProc: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'exec BAIXA_CARTAO  '
      ':REC_CODI,'
      ':TIPO,'
      ':DATA_CREDITO,'
      ':DOCUMENTO,'
      ':TAXA,'
      ':BANCO,'
      ':VALOR,'
      ':CLIENTE')
    ValidateWithMask = True
    Left = 104
    Top = 288
    ParamData = <
      item
        DataType = ftInteger
        Name = 'REC_CODI'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TIPO'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'DATA_CREDITO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'DOCUMENTO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TAXA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'BANCO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALOR'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CLIENTE'
        ParamType = ptInput
      end>
  end
  object qrCliente: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'Select CLI_CODI,CLI_RAZA  from CPACLIE  order by CLI_RAZA')
    ValidateWithMask = True
    Left = 393
    Top = 237
    object qrClienteCLI_CODI: TAutoIncField
      FieldName = 'CLI_CODI'
      Origin = 'FINANCEIRO.CPACLIE.CLI_CODI'
    end
    object qrClienteCLI_RAZA: TStringField
      FieldName = 'CLI_RAZA'
      Origin = 'FINANCEIRO.CPACLIE.CLI_RAZA'
      FixedChar = True
      Size = 50
    end
  end
  object qrTotal: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'SELECT SUM(REC_SALD) AS TOTAL'
      'FROM ('
      'SELECT REC_SALD FROM PgtoCartao WHERE PgtoTotal = '#39'T'#39
      'UNION '
      
        'SELECT PgtoParcial FROM PgtoCartao WHERE PgtoTotal <> '#39'T'#39' AND Pg' +
        'toParcial IS NOT NULL'
      ') AS A')
    ValidateWithMask = True
    Left = 760
    Top = 416
    object qrTotalTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
  end
end
