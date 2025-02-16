object frmControlePermanencia: TfrmControlePermanencia
  Left = 435
  Top = 175
  Width = 504
  Height = 275
  Caption = 'Controle de Perman�ncia de Produtos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 24
    Width = 38
    Height = 13
    Caption = 'Data de'
  end
  object Label2: TLabel
    Left = 160
    Top = 24
    Width = 16
    Height = 13
    Caption = 'At�'
  end
  object Label3: TLabel
    Left = 24
    Top = 72
    Width = 32
    Height = 13
    Caption = 'Cliente'
  end
  object Label4: TLabel
    Left = 24
    Top = 120
    Width = 40
    Height = 13
    Caption = 'Contrato'
  end
  object MaskEdit1: TMaskEdit
    Left = 24
    Top = 40
    Width = 121
    Height = 21
    EditMask = '99/99/9999'
    MaxLength = 10
    TabOrder = 0
    Text = '  /  /    '
  end
  object MaskEdit2: TMaskEdit
    Left = 160
    Top = 40
    Width = 121
    Height = 21
    EditMask = '99/99/9999'
    MaxLength = 10
    TabOrder = 1
    Text = '  /  /    '
  end
  object wwDBLookupCombo1: TwwDBLookupCombo
    Left = 24
    Top = 88
    Width = 441
    Height = 21
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
  object cboContrato: TwwDBLookupCombo
    Left = 24
    Top = 136
    Width = 441
    Height = 21
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'CTT_NOME'#9'40'#9'CTT_NOME'#9#9)
    LookupTable = qrContrato
    LookupField = 'CTT_ID'
    TabOrder = 3
    AutoDropDown = False
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
  end
  object Button1: TButton
    Left = 24
    Top = 176
    Width = 113
    Height = 25
    Caption = 'Gerar Excel'
    TabOrder = 4
    OnClick = Button1Click
  end
  object qrCliente: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    SQL.Strings = (
      'Select CLIN_ID, CLIN_RAZA  from CLIENTENBF where'
      'CLIN_CONTRATO = '#39'S'#39
      'order by CLIN_RAZA ')
    Left = 336
    Top = 40
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
  object qrContrato: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <
      item
        Name = 'clin_id'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT CTT_ID, CTT_NOME'
      'from CONTRATO'
      'where CLIN_ID = :clin_id'
      'and TOS_ID <> 1')
    Left = 304
    Top = 184
    object qrContratoCTT_NOME: TStringField
      DisplayWidth = 40
      FieldName = 'CTT_NOME'
      Size = 40
    end
    object qrContratoCTT_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'CTT_ID'
      ReadOnly = True
      Visible = False
    end
  end
  object STP_PERMANENCIA: TADOStoredProc
    Connection = FMenu.ADOConnection
    ProcedureName = 'STP_PERMANENCIA;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@DATAI'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = '20140101'
      end
      item
        Name = '@DATAF'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = '20140101'
      end
      item
        Name = '@CLIN_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 59
      end
      item
        Name = '@CTT_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 208
    Top = 176
    object STP_PERMANENCIANF: TStringField
      FieldName = 'NF'
      Size = 10
    end
    object STP_PERMANENCIADtEntrada: TDateTimeField
      FieldName = 'Dt Entrada'
    end
    object STP_PERMANENCIADtEntrega: TDateTimeField
      FieldName = 'Dt. Entrega'
    end
    object STP_PERMANENCIADiasIsentos: TIntegerField
      FieldName = 'Dias Isentos'
      ReadOnly = True
    end
    object STP_PERMANENCIAPeso: TFloatField
      FieldName = 'Peso'
      ReadOnly = True
    end
    object STP_PERMANENCIAQuinzenas: TIntegerField
      FieldName = 'Quinzenas'
      ReadOnly = True
    end
    object STP_PERMANENCIAValorportonelada: TFloatField
      FieldName = 'Valor por tonelada'
      ReadOnly = True
    end
    object STP_PERMANENCIATotal: TFloatField
      FieldName = 'Total'
      ReadOnly = True
    end
  end
  object dsExcel: TDataSource
    DataSet = qrBusca
    Left = 408
    Top = 32
  end
  object qrBusca: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    SQL.Strings = (
      'select * from TbPermanenciaTemp'
      'order by nf')
    Left = 400
    Top = 176
    object qrBuscaNF: TStringField
      FieldName = 'NF'
      Size = 10
    end
    object qrBuscaDtEntrada: TDateTimeField
      FieldName = 'Dt Entrada'
    end
    object qrBuscaDtEntrega: TDateTimeField
      FieldName = 'Dt. Entrega'
    end
    object qrBuscaDiasIsentos: TIntegerField
      FieldName = 'Dias Isentos'
    end
    object qrBuscaPeso: TFloatField
      FieldName = 'Peso'
    end
    object qrBuscaQuinzenas: TIntegerField
      FieldName = 'Quinzenas'
    end
    object qrBuscaValorportonelada: TFloatField
      FieldName = 'Valor por tonelada'
    end
    object qrBuscaTotal: TFloatField
      FieldName = 'Total'
    end
  end
end
