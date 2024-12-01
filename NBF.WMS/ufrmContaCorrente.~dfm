object frmContaCorrente: TfrmContaCorrente
  Left = 302
  Top = 206
  BorderStyle = bsDialog
  Caption = 'Conta Corrente'
  ClientHeight = 339
  ClientWidth = 538
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
  object Label1: TLabel
    Left = 40
    Top = 16
    Width = 43
    Height = 14
    Caption = 'Data de'
  end
  object Label2: TLabel
    Left = 184
    Top = 16
    Width = 20
    Height = 14
    Caption = 'Até'
  end
  object Label3: TLabel
    Left = 40
    Top = 64
    Width = 37
    Height = 14
    Caption = 'Cliente'
  end
  object Label4: TLabel
    Left = 40
    Top = 184
    Width = 57
    Height = 14
    Caption = 'Nota Fiscal'
  end
  object Label5: TLabel
    Left = 40
    Top = 123
    Width = 44
    Height = 14
    Caption = 'Produto'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object MaskEdit1: TMaskEdit
    Left = 40
    Top = 32
    Width = 121
    Height = 22
    EditMask = '99/99/9999'
    MaxLength = 10
    TabOrder = 0
    Text = '  /  /    '
  end
  object MaskEdit2: TMaskEdit
    Left = 184
    Top = 32
    Width = 121
    Height = 22
    EditMask = '99/99/9999'
    MaxLength = 10
    TabOrder = 1
    Text = '  /  /    '
  end
  object wwDBLookupCombo1: TwwDBLookupCombo
    Left = 40
    Top = 80
    Width = 449
    Height = 22
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'CLIN_RAZA'#9'50'#9'CLIN_RAZA'#9#9)
    LookupTable = qrCliente
    LookupField = 'CLIN_ID'
    TabOrder = 2
    AutoDropDown = True
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
    OnExit = wwDBLookupCombo1Exit
  end
  object edtNota: TEdit
    Left = 40
    Top = 200
    Width = 121
    Height = 22
    TabOrder = 3
  end
  object Button1: TButton
    Left = 40
    Top = 264
    Width = 121
    Height = 25
    Caption = 'Gerar Excel'
    TabOrder = 4
    OnClick = Button1Click
  end
  object wwDBLookupCombo2: TwwDBLookupCombo
    Left = 40
    Top = 141
    Width = 449
    Height = 22
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    CharCase = ecUpperCase
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'PRO_COD'#9'16'#9'Código'#9'F'
      'PRO_DESC'#9'40'#9'Descrição'#9'F')
    LookupTable = Q_PROD
    LookupField = 'PRO_ID'
    DropDownCount = 15
    Enabled = False
    ParentFont = False
    TabOrder = 5
    AutoDropDown = True
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = True
  end
  object qrCliente: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT CLIN_ID, CLIN_RAZA'
      ''
      'from CLIENTENBF where'
      'CLIN_CONTRATO = '#39'S'#39
      'order by CLIN_RAZA ')
    Left = 376
    Top = 8
    object qrClienteCLIN_RAZA: TStringField
      DisplayWidth = 50
      FieldName = 'CLIN_RAZA'
      Size = 50
    end
    object qrClienteCLIN_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'CLIN_ID'
      ReadOnly = True
      Visible = False
    end
  end
  object STP_Excel: TADOStoredProc
    Connection = FMenu.ADOConnection
    ProcedureName = 'STP_CONTACORRENTE;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@DATAI'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@DATAF'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@CLIN_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@NF'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@PROD'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 280
    Top = 8
  end
  object qrConta: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM ContaCorrenteTemp'
      'ORDER BY ID')
    Left = 328
    Top = 8
    object qrContaData: TDateTimeField
      FieldName = 'Data'
    end
    object qrContaNFEntrada: TStringField
      FieldName = 'NFEntrada'
      Size = 10
    end
    object qrContaNFRetorno: TStringField
      FieldName = 'NFRetorno'
      Size = 10
    end
    object qrContaTipo: TStringField
      FieldName = 'Tipo'
      Size = 5
    end
    object qrContaCodigo: TStringField
      FieldName = 'Codigo'
      Size = 50
    end
    object qrContaProduto: TStringField
      FieldName = 'Produto'
      Size = 250
    end
    object qrContaValorUnit: TFloatField
      FieldName = 'ValorUnit'
    end
    object qrContaQtdeEntrada: TFloatField
      FieldName = 'QtdeEntrada'
    end
    object qrContaQtdeSaida: TFloatField
      FieldName = 'QtdeSaida'
    end
    object qrContaSaldo: TFloatField
      FieldName = 'Saldo'
    end
    object qrContaValorEntrada: TFloatField
      FieldName = 'ValorEntrada'
    end
    object qrContaValorSaida: TFloatField
      FieldName = 'ValorSaida'
    end
    object qrContaValorSaldo: TFloatField
      FieldName = 'ValorSaldo'
    end
  end
  object dsExcel: TDataSource
    DataSet = qrConta
    Left = 480
    Top = 8
  end
  object qrResumo: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    SQL.Strings = (
      'SELECT '
      '      Codigo'
      '      ,PRODUTO'
      '      ,sum(isnull(QtdeEntrada, 0)) QtdeEntrada'
      '      ,sum(isnull(QtdeSaida, 0)) QtdeSaida'
      '      ,sum(isnull(ValorEntrada, 0)) ValorEntrada'
      '      ,sum(isnull(ValorSaida, 0)) ValorSaida'
      '  FROM contacorrentetemp'
      'group by Codigo, PRODUTO'
      'order by Codigo')
    Left = 432
    Top = 8
    object qrResumoCodigo: TStringField
      FieldName = 'Codigo'
      Size = 50
    end
    object qrResumoPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Size = 250
    end
    object qrResumoQtdeEntrada: TFloatField
      FieldName = 'QtdeEntrada'
      ReadOnly = True
    end
    object qrResumoQtdeSaida: TFloatField
      FieldName = 'QtdeSaida'
      ReadOnly = True
    end
    object qrResumoValorEntrada: TFloatField
      FieldName = 'ValorEntrada'
      ReadOnly = True
    end
    object qrResumoValorSaida: TFloatField
      FieldName = 'ValorSaida'
      ReadOnly = True
    end
  end
  object Q_PROD: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'select PRO_ID,PRO_COD,PRO_DESC from PRODUTO where'
      'CLIN_ID = :CLIN_ID'
      'order by PRO_DESC'
      '')
    ValidateWithMask = True
    Left = 295
    Top = 264
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'CLIN_ID'
        ParamType = ptUnknown
      end>
    object Q_PRODPRO_COD: TStringField
      DisplayLabel = 'Código'
      DisplayWidth = 16
      FieldName = 'PRO_COD'
      Origin = 'NBFDADOS.PRODUTO.PRO_COD'
      FixedChar = True
      Size = 16
    end
    object Q_PRODPRO_DESC: TStringField
      DisplayLabel = 'Descrição'
      DisplayWidth = 40
      FieldName = 'PRO_DESC'
      Origin = 'NBFDADOS.PRODUTO.PRO_DESC'
      FixedChar = True
      Size = 40
    end
    object Q_PRODPRO_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'PRO_ID'
      Origin = 'NBFDADOS.PRODUTO.PRO_ID'
      Visible = False
    end
  end
  object DataSource1: TDataSource
    DataSet = qrCliente
    OnDataChange = DataSource1DataChange
    Left = 448
    Top = 264
  end
end
