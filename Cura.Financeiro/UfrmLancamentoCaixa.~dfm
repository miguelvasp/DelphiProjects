object frmLancamentoCaixa: TfrmLancamentoCaixa
  Left = 571
  Top = 238
  Width = 1482
  Height = 700
  Caption = 'Lançamento do Caixa Multimed'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1466
    Height = 65
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 99
      Height = 13
      Caption = 'Data                    Até'
    end
    object Label3: TLabel
      Left = 184
      Top = 8
      Width = 93
      Height = 13
      Caption = 'Código do Paciente'
    end
    object Label4: TLabel
      Left = 288
      Top = 8
      Width = 88
      Height = 13
      Caption = 'Nome do Paciente'
    end
    object Label5: TLabel
      Left = 680
      Top = 7
      Width = 94
      Height = 13
      Caption = 'Nome do Profisional'
    end
    object Label6: TLabel
      Left = 568
      Top = 7
      Width = 104
      Height = 13
      Caption = 'Código do Profissional'
    end
    object edtVctoIni: TMaskEdit
      Left = 16
      Top = 24
      Width = 73
      Height = 21
      EditMask = '99/99/9999'
      MaxLength = 10
      TabOrder = 0
      Text = '  /  /    '
    end
    object edtVctoFim: TMaskEdit
      Left = 96
      Top = 24
      Width = 73
      Height = 21
      EditMask = '99/99/9999'
      MaxLength = 10
      TabOrder = 1
      Text = '  /  /    '
    end
    object edtCodigoPaciente: TEdit
      Left = 184
      Top = 24
      Width = 97
      Height = 21
      TabOrder = 2
    end
    object edtCodProfissional: TEdit
      Left = 568
      Top = 24
      Width = 105
      Height = 21
      TabOrder = 3
    end
    object cboProfisional: TwwDBLookupCombo
      Left = 680
      Top = 23
      Width = 265
      Height = 21
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'NOMEPROFISSIONAL'#9'60'#9'NOMEPROFISSIONAL'#9#9)
      LookupTable = qrProfisional
      LookupField = 'NOMEPROFISSIONAL'
      TabOrder = 4
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
    end
    object cboPaciente: TwwDBLookupCombo
      Left = 288
      Top = 24
      Width = 273
      Height = 21
      DropDownAlignment = taLeftJustify
      LookupTable = qrPaciente
      LookupField = 'NOME'
      TabOrder = 5
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
    end
    object Button1: TButton
      Left = 951
      Top = 19
      Width = 74
      Height = 25
      Caption = 'Buscar'
      TabOrder = 6
      OnClick = Button1Click
    end
    object Button4: TButton
      Left = 1032
      Top = 19
      Width = 75
      Height = 25
      Caption = 'Imprimir'
      TabOrder = 7
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 1112
      Top = 19
      Width = 75
      Height = 25
      Caption = 'Excel'
      TabOrder = 8
      OnClick = Button5Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 621
    Width = 1466
    Height = 41
    Align = alBottom
    TabOrder = 1
    object lbSoma: TLabel
      Left = 360
      Top = 10
      Width = 64
      Height = 20
      Caption = 'R$ 0.00'
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Button2: TButton
      Left = 16
      Top = 8
      Width = 147
      Height = 25
      Caption = 'Agrupar e Lancar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 174
      Top = 8
      Width = 179
      Height = 25
      Caption = 'Lançar Recebimento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = Button3Click
    end
  end
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 65
    Width = 1466
    Height = 556
    ControlType.Strings = (
      'Agrupar;CheckBox;S;N'
      'Lancar;CheckBox;S;N'
      'BANDEIRACARTAO;CustomEdit;cboCliente;F'
      'REC_CLIE;CustomEdit;cboCliente;T')
    Selected.Strings = (
      'Lancar'#9'1'#9'Lancar'#9#9
      'Agrupar'#9'1'#9'Agrupar'#9#9
      'NRPAGAMENTO'#9'10'#9'N° Pgto'#9#9
      'NOMEPROFISSIONAL'#9'40'#9'Profissional'#9#9
      'DTHRLANCAMENTO'#9'10'#9'Dt. Lanc.'#9#9
      'DATAVENCIMENTO'#9'10'#9'Dt. Venc.'#9#9
      'VALOR_PARCELA'#9'11'#9'Vlr. Parcela'#9#9
      'VALOR_LANCAMENTO'#9'11'#9'Valor Lanc.'#9#9
      'TIPOPAGAMENTO'#9'8'#9'Tp. Pgto.'#9#9
      'NOME'#9'40'#9'Paciente'#9#9
      'DOCUMENTOS'#9'30'#9'NSU'#9'F'#9
      'NUPARCELAS'#9'8'#9'N° Parcelas'#9#9
      'PARCELAS'#9'8'#9'Parcela'#9'F'#9
      'REC_CLIE'#9'50'#9'REC_CLIE'#9'F'#9)
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = DataSource1
    TabOrder = 2
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    PaintOptions.AlternatingRowColor = cl3DLight
  end
  object cboCliente: TwwDBLookupCombo
    Left = 680
    Top = 416
    Width = 304
    Height = 21
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'CLI_RAZA'#9'50'#9'CLI_RAZA'#9#9)
    DataField = 'REC_CLIE'
    DataSource = DataSource1
    LookupTable = qrClientes
    LookupField = 'REC_CLIE'
    TabOrder = 3
    AutoDropDown = True
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
  end
  object qrProfisional: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      
        'SELECT DISTINCT NOMEPROFISSIONAL FROM LancamentoCaixa ORDER BY N' +
        'OMEPROFISSIONAL')
    ValidateWithMask = True
    Left = 733
    Top = 248
    object qrProfisionalNOMEPROFISSIONAL: TStringField
      DisplayWidth = 60
      FieldName = 'NOMEPROFISSIONAL'
      FixedChar = True
      Size = 60
    end
  end
  object qrPaciente: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'SELECT DISTINCT NOME FROM LancamentoCaixa ORDER BY NOME')
    ValidateWithMask = True
    Left = 437
    Top = 200
    object qrPacienteNOME: TStringField
      FieldName = 'NOME'
      FixedChar = True
      Size = 60
    end
  end
  object DataSource1: TDataSource
    DataSet = qrBusca
    OnDataChange = DataSource1DataChange
    Left = 336
    Top = 288
  end
  object UPD: TUpdateSQL
    ModifySQL.Strings = (
      'update LancamentoCaixa'
      'set'
      '  Agrupar = :Agrupar,'
      '  Lancar = :Lancar'
      'where'
      '  Id = :OLD_Id ')
    InsertSQL.Strings = (
      'insert into LancamentoCaixa'
      
        '  (Id, NRPAGAMENTO, FK_CONTA, FK_PROFCAIXA, NOMEPROFISSIONAL, DT' +
        'HRLANCAMENTO, '
      
        '   DATAVENCIMENTO, VALOR_PARCELA, VALOR_LANCAMENTO, DOMNTIPOPAGT' +
        'O, TIPOPAGAMENTO, '
      
        '   REC_CLIE, BANDEIRACARTAO, FK_PACIENTE, NOME, DTHRABERTURA, NU' +
        'PARCELAS, '
      '   PARCELAS, Agrupar, Lancar, REC_ID)'
      'values'
      
        '  (:Id, :NRPAGAMENTO, :FK_CONTA, :FK_PROFCAIXA, :NOMEPROFISSIONA' +
        'L, :DTHRLANCAMENTO, '
      
        '   :DATAVENCIMENTO, :VALOR_PARCELA, :VALOR_LANCAMENTO, :DOMNTIPO' +
        'PAGTO, '
      
        '   :TIPOPAGAMENTO, :REC_CLIE, :BANDEIRACARTAO, :FK_PACIENTE, :NO' +
        'ME, :DTHRABERTURA, '
      '   :NUPARCELAS, :PARCELAS, :Agrupar, :Lancar, :REC_ID)')
    DeleteSQL.Strings = (
      'delete from LancamentoCaixa'
      'where'
      '  Id = :OLD_Id and'
      '  NRPAGAMENTO = :OLD_NRPAGAMENTO and'
      '  FK_CONTA = :OLD_FK_CONTA and'
      '  FK_PROFCAIXA = :OLD_FK_PROFCAIXA and'
      '  NOMEPROFISSIONAL = :OLD_NOMEPROFISSIONAL and'
      '  DTHRLANCAMENTO = :OLD_DTHRLANCAMENTO and'
      '  DATAVENCIMENTO = :OLD_DATAVENCIMENTO and'
      '  VALOR_PARCELA = :OLD_VALOR_PARCELA and'
      '  VALOR_LANCAMENTO = :OLD_VALOR_LANCAMENTO and'
      '  DOMNTIPOPAGTO = :OLD_DOMNTIPOPAGTO and'
      '  TIPOPAGAMENTO = :OLD_TIPOPAGAMENTO and'
      '  REC_CLIE = :OLD_REC_CLIE and'
      '  BANDEIRACARTAO = :OLD_BANDEIRACARTAO and'
      '  FK_PACIENTE = :OLD_FK_PACIENTE and'
      '  NOME = :OLD_NOME and'
      '  DTHRABERTURA = :OLD_DTHRABERTURA and'
      '  NUPARCELAS = :OLD_NUPARCELAS and'
      '  PARCELAS = :OLD_PARCELAS and'
      '  Agrupar = :OLD_Agrupar and'
      '  Lancar = :OLD_Lancar and'
      '  REC_ID = :OLD_REC_ID')
    Left = 475
    Top = 402
  end
  object qrBusca: TADOQuery
    Connection = FMenu.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM LancamentoCaixa')
    Left = 560
    Top = 312
    object qrBuscaLancar: TStringField
      DisplayWidth = 1
      FieldName = 'Lancar'
      OnChange = qrBuscaLancarChange
      Size = 1
    end
    object qrBuscaAgrupar: TStringField
      DisplayWidth = 1
      FieldName = 'Agrupar'
      OnChange = qrBuscaAgruparChange
      Size = 1
    end
    object qrBuscaNRPAGAMENTO: TWideStringField
      DisplayLabel = 'N° Pgto'
      DisplayWidth = 10
      FieldName = 'NRPAGAMENTO'
      Size = 384
    end
    object qrBuscaNOMEPROFISSIONAL: TStringField
      DisplayLabel = 'Profissional'
      DisplayWidth = 40
      FieldName = 'NOMEPROFISSIONAL'
      Size = 60
    end
    object qrBuscaDTHRLANCAMENTO: TDateTimeField
      DisplayLabel = 'Dt. Lanc.'
      DisplayWidth = 10
      FieldName = 'DTHRLANCAMENTO'
      DisplayFormat = 'dd/MM/yy'
    end
    object qrBuscaDATAVENCIMENTO: TDateTimeField
      DisplayLabel = 'Dt. Venc.'
      DisplayWidth = 10
      FieldName = 'DATAVENCIMENTO'
      DisplayFormat = 'dd/MM/yy'
    end
    object qrBuscaVALOR_PARCELA: TBCDField
      DisplayLabel = 'Vlr. Parcela'
      DisplayWidth = 11
      FieldName = 'VALOR_PARCELA'
      DisplayFormat = '###,###,##0.00'
      Precision = 10
      Size = 2
    end
    object qrBuscaVALOR_LANCAMENTO: TBCDField
      DisplayLabel = 'Valor Lanc.'
      DisplayWidth = 11
      FieldName = 'VALOR_LANCAMENTO'
      DisplayFormat = '###,###,##0.00'
      Precision = 10
      Size = 2
    end
    object qrBuscaTIPOPAGAMENTO: TStringField
      DisplayLabel = 'Tp. Pgto.'
      DisplayWidth = 8
      FieldName = 'TIPOPAGAMENTO'
      Size = 8
    end
    object qrBuscaNOME: TStringField
      DisplayLabel = 'Paciente'
      DisplayWidth = 40
      FieldName = 'NOME'
      Size = 60
    end
    object qrBuscaDOCUMENTOS: TStringField
      DisplayLabel = 'NSU'
      DisplayWidth = 30
      FieldName = 'DOCUMENTOS'
      Size = 30
    end
    object qrBuscaNUPARCELAS: TWideStringField
      DisplayLabel = 'N° Parcelas'
      DisplayWidth = 8
      FieldName = 'NUPARCELAS'
      Size = 384
    end
    object qrBuscaPARCELAS: TWideStringField
      DisplayLabel = 'Parcela'
      DisplayWidth = 8
      FieldName = 'PARCELAS'
      Size = 384
    end
    object qrBuscaREC_CLIE: TWideStringField
      DisplayWidth = 50
      FieldName = 'REC_CLIE'
      Size = 384
    end
    object qrBuscaBANDEIRACARTAO: TStringField
      DisplayLabel = 'Bandeira'
      DisplayWidth = 15
      FieldName = 'BANDEIRACARTAO'
      Visible = False
      Size = 60
    end
    object qrBuscaId: TAutoIncField
      DisplayWidth = 10
      FieldName = 'Id'
      ReadOnly = True
      Visible = False
    end
    object qrBuscaFK_CONTA: TWideStringField
      DisplayWidth = 384
      FieldName = 'FK_CONTA'
      Visible = False
      Size = 384
    end
    object qrBuscaFK_PROFCAIXA: TWideStringField
      DisplayWidth = 384
      FieldName = 'FK_PROFCAIXA'
      Visible = False
      Size = 384
    end
    object qrBuscaDOMNTIPOPAGTO: TStringField
      DisplayWidth = 1
      FieldName = 'DOMNTIPOPAGTO'
      Visible = False
      Size = 1
    end
    object qrBuscaFK_PACIENTE: TWideStringField
      DisplayWidth = 384
      FieldName = 'FK_PACIENTE'
      Visible = False
      Size = 384
    end
    object qrBuscaDTHRABERTURA: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DTHRABERTURA'
      Visible = False
    end
    object qrBuscaREC_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'REC_ID'
      Visible = False
    end
  end
  object qrProc: TADOQuery
    Connection = FMenu.ADOConnection1
    Parameters = <>
    Left = 576
    Top = 224
  end
  object qrSoma: TADOQuery
    Connection = FMenu.ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'SELECT SUM(VALOR_PARCELA) AS SOMA FROM LANCAMENTOCAIXA')
    Left = 248
    Top = 176
    object qrSomaSOMA: TBCDField
      FieldName = 'SOMA'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
  end
  object qrAux: TADOQuery
    Connection = FMenu.ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'UPDATE LancamentoCaixa SET Agrupar = NULL, Lancar = NULL')
    Left = 152
    Top = 200
  end
  object qrClientes: TADOQuery
    Connection = FMenu.ADOConnection1
    Parameters = <>
    SQL.Strings = (
      '  SELECT       DISTINCT'
      ''
      ' '
      ''
      '(CASE WHEN CLI_CODI = 1792 THEN 1791'
      ''
      
        '        WHEN  CLI_CODI = 1787 THEN 1790 ELSE CLI_CODI END) AS RE' +
        'C_CLIE,'
      ''
      ''
      '(CASE WHEN CLI_RAZA = '#39'DINHEIRO PARTICULARES'#39' THEN '#39'DINHEIRO'#39
      ''
      
        '         WHEN CLI_RAZA = '#39'CHEQUES PARTICULARES'#39'  THEN '#39'CHEQUES'#39' ' +
        'ELSE CLI_RAZA END) AS CLI_RAZA'
      ''
      ' '
      ''
      ' '
      ''
      '          FROM CPACLIE  '
      ''
      '          '
      ''
      '          WHERE CLI_CODI IN'
      ''
      '   (1868,'
      ''
      '       1869,'
      ''
      '       1789,'
      ''
      '       1788,'
      ''
      '       1793,'
      ''
      '       1800,'
      ''
      '       1803,'
      ''
      '       1793,'
      ''
      '       1870,'
      ''
      '       1866,'
      ''
      '       1791,'
      ''
      '       1792,'
      ''
      '       1790,'
      ''
      '       1787,'
      ''
      '       1875,'
      ''
      '       1877,'
      ''
      '       1878,'
      ''
      '       1879,'
      ''
      '       1880,'
      ''
      '       1881,'
      ''
      '       1882,'
      ''
      '       1882);')
    Left = 352
    Top = 136
    object qrClientesCLI_RAZA: TStringField
      DisplayWidth = 50
      FieldName = 'CLI_RAZA'
      Size = 50
    end
    object qrClientesREC_CLIE: TAutoIncField
      DisplayWidth = 10
      FieldName = 'REC_CLIE'
      ReadOnly = True
      Visible = False
    end
  end
  object dsExcel: TDataSource
    DataSet = qrBusca
    Left = 248
    Top = 368
  end
end
