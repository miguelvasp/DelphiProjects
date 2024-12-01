object frmFaturamentoMultimedAgrupa: TfrmFaturamentoMultimedAgrupa
  Left = 192
  Top = 124
  Width = 762
  Height = 207
  Caption = 'Faturamento'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 16
    Width = 39
    Height = 13
    Caption = 'Emissão'
  end
  object Vencimento: TLabel
    Left = 152
    Top = 16
    Width = 56
    Height = 13
    Caption = 'Vencimento'
  end
  object Label2: TLabel
    Left = 576
    Top = 16
    Width = 53
    Height = 13
    Caption = 'Nota Fiscal'
  end
  object Label3: TLabel
    Left = 280
    Top = 16
    Width = 41
    Height = 13
    Caption = 'Empresa'
  end
  object Label4: TLabel
    Left = 24
    Top = 64
    Width = 44
    Height = 13
    Caption = 'Hist[orico'
  end
  object lbTipo: TLabel
    Left = 296
    Top = 128
    Width = 29
    Height = 13
    Caption = 'lbTipo'
    Visible = False
  end
  object edtEmissao: TMaskEdit
    Left = 24
    Top = 32
    Width = 121
    Height = 21
    EditMask = '99/99/9999'
    MaxLength = 10
    TabOrder = 0
    Text = '  /  /    '
  end
  object edtVencimento: TMaskEdit
    Left = 152
    Top = 32
    Width = 121
    Height = 21
    EditMask = '99/99/9999'
    MaxLength = 10
    TabOrder = 1
    Text = '  /  /    '
  end
  object edtNotaFiscal: TMaskEdit
    Left = 576
    Top = 32
    Width = 145
    Height = 21
    TabOrder = 2
  end
  object cboEmpresa: TwwDBLookupCombo
    Left = 280
    Top = 32
    Width = 281
    Height = 21
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'FIL_DESC'#9'20'#9'FIL_DESC'#9#9)
    LookupTable = qrEmpresa
    LookupField = 'FIL_CODI'
    TabOrder = 3
    AutoDropDown = True
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
  end
  object edtHistorico: TMaskEdit
    Left = 24
    Top = 80
    Width = 697
    Height = 21
    TabOrder = 4
  end
  object Button1: TButton
    Left = 24
    Top = 120
    Width = 113
    Height = 25
    Caption = 'Confirmar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = Button1Click
  end
  object qrEmpresa: TADOQuery
    Connection = FMenu.ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'select * from cpafili order by fil_desc')
    Left = 648
    Top = 120
    object qrEmpresaFIL_DESC: TStringField
      DisplayWidth = 20
      FieldName = 'FIL_DESC'
      FixedChar = True
    end
    object qrEmpresaFIL_CODI: TStringField
      DisplayWidth = 3
      FieldName = 'FIL_CODI'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object qrEmpresaFIL_NATOPERA: TStringField
      DisplayWidth = 30
      FieldName = 'FIL_NATOPERA'
      Visible = False
      Size = 30
    end
    object qrEmpresaFIL_DESCSERV: TStringField
      DisplayWidth = 30
      FieldName = 'FIL_DESCSERV'
      Visible = False
      Size = 30
    end
    object qrEmpresaFIL_ULTIMANF: TStringField
      DisplayWidth = 20
      FieldName = 'FIL_ULTIMANF'
      Visible = False
    end
    object qrEmpresaRAZAO: TStringField
      DisplayWidth = 100
      FieldName = 'RAZAO'
      Visible = False
      Size = 100
    end
    object qrEmpresaCNPJ: TStringField
      DisplayWidth = 14
      FieldName = 'CNPJ'
      Visible = False
      Size = 14
    end
    object qrEmpresaENDERECO: TStringField
      DisplayWidth = 100
      FieldName = 'ENDERECO'
      Visible = False
      Size = 100
    end
    object qrEmpresaCOMPL: TStringField
      DisplayWidth = 50
      FieldName = 'COMPL'
      Visible = False
      Size = 50
    end
    object qrEmpresaCEP: TStringField
      DisplayWidth = 8
      FieldName = 'CEP'
      Visible = False
      Size = 8
    end
    object qrEmpresaCIDADE: TStringField
      DisplayWidth = 50
      FieldName = 'CIDADE'
      Visible = False
      Size = 50
    end
    object qrEmpresaUF: TStringField
      DisplayWidth = 2
      FieldName = 'UF'
      Visible = False
      Size = 2
    end
    object qrEmpresaSEL: TStringField
      DisplayWidth = 1
      FieldName = 'SEL'
      Visible = False
      FixedChar = True
      Size = 1
    end
  end
  object stpAgrupa: TADOStoredProc
    Connection = FMenu.ADOConnection1
    ProcedureName = 'STP_LANCAMENTOFATURAMENTO;1'
    Parameters = <
      item
        Name = '@EhAgrupamento'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Emissao'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@Vencimento'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@NotaFiscal'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end
      item
        Name = '@Empresa'
        Attributes = [paNullable]
        DataType = ftString
        Size = 5
        Value = Null
      end
      item
        Name = '@Historico'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end>
    Left = 536
    Top = 112
  end
  object ADOQuery1: TADOQuery
    Parameters = <>
    Left = 432
    Top = 112
  end
  object qrLancar: TADOQuery
    Connection = FMenu.ADOConnection1
    Parameters = <>
    SQL.Strings = (
      
        'SELECT * FROM TAB_FATURAMENTO_MMED WHERE REC_ID IS NULL AND Lanc' +
        'ar = '#39'S'#39)
    Left = 216
    Top = 120
    object qrLancarNRFATURAMENTO: TWideStringField
      FieldName = 'NRFATURAMENTO'
      Size = 384
    end
    object qrLancarDTFATURA: TDateTimeField
      FieldName = 'DTFATURA'
    end
    object qrLancarMES: TWideStringField
      FieldName = 'MES'
      Size = 384
    end
    object qrLancarANO: TWideStringField
      FieldName = 'ANO'
      Size = 384
    end
    object qrLancarNOMECONVENIO: TStringField
      FieldName = 'NOMECONVENIO'
      Size = 40
    end
    object qrLancarCLI_CODI_FINANC: TBCDField
      FieldName = 'CLI_CODI_FINANC'
      Precision = 32
      Size = 0
    end
    object qrLancarCLI_CGC_FINANC: TStringField
      FieldName = 'CLI_CGC_FINANC'
      Size = 15
    end
    object qrLancarVALORFATURADO: TBCDField
      FieldName = 'VALORFATURADO'
      Precision = 18
      Size = 2
    end
    object qrLancarLancar: TStringField
      FieldName = 'Lancar'
      Size = 1
    end
    object qrLancarAgrupar: TStringField
      FieldName = 'Agrupar'
      Size = 1
    end
    object qrLancarId: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object qrLancarREC_ID: TIntegerField
      FieldName = 'REC_ID'
    end
  end
  object stpLancar: TADOStoredProc
    Connection = FMenu.ADOConnection1
    ProcedureName = 'STP_LANCAMENTOFATURAMENTOINDIVIDUAL;1'
    Parameters = <
      item
        Name = '@id'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Emissao'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@Vencimento'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@Empresa'
        Attributes = [paNullable]
        DataType = ftString
        Size = 5
        Value = Null
      end
      item
        Name = '@Historico'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end>
    Left = 360
    Top = 112
  end
end
