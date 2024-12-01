object frmRelClienteFinal: TfrmRelClienteFinal
  Left = 192
  Top = 124
  Width = 489
  Height = 218
  Caption = 'Relatório de Clientes Finais'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
  object GroupBox1: TGroupBox
    Left = 32
    Top = 24
    Width = 409
    Height = 65
    Caption = 'Cliente'
    TabOrder = 0
    object wwDBLookupCombo1: TwwDBLookupCombo
      Left = 16
      Top = 24
      Width = 377
      Height = 22
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'CLIN_RAZA'#9'50'#9'Razão Social'#9'F')
      LookupTable = qrCliente
      LookupField = 'CLIN_ID'
      TabOrder = 0
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
    end
  end
  object Button1: TButton
    Left = 32
    Top = 112
    Width = 161
    Height = 25
    Caption = 'Exportar para o Excel'
    TabOrder = 1
    OnClick = Button1Click
  end
  object ProgressBar1: TProgressBar
    Left = 208
    Top = 120
    Width = 233
    Height = 17
    Min = 0
    Max = 100
    TabOrder = 2
  end
  object qrCliente: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT CLIN_ID, CLIN_RAZA FROM CLIENTENBF'
      'ORDER BY CLIN_RAZA')
    Left = 216
    Top = 104
    object qrClienteCLIN_ID: TAutoIncField
      FieldName = 'CLIN_ID'
      ReadOnly = True
    end
    object qrClienteCLIN_RAZA: TStringField
      FieldName = 'CLIN_RAZA'
      Size = 50
    end
  end
  object dsExcel: TDataSource
    DataSet = qrFinal
    Left = 280
    Top = 104
  end
  object qrFinal: TADOQuery
    Active = True
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    OnCalcFields = qrFinalCalcFields
    Parameters = <
      item
        Name = 'CLIN_ID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT '
      #9'DISTINCT A.*,'
      #9'C.MUN_NOME'
      #9
      'FROM CLIENTEFINAL A INNER JOIN CLIENTE_NBFINAL B'
      'ON A.CLIF_ID = B.CLIF_ID INNER JOIN MUNICIPIO C'
      'ON A.MUN_ID = C.MUN_ID'
      'WHERE B.CLIN_ID = :CLIN_ID'
      'ORDER BY CLIF_RAZA')
    Left = 328
    Top = 104
    object qrFinalCLIENTE_NBF: TStringField
      DisplayLabel = 'CLIENTE NBF'
      DisplayWidth = 50
      FieldKind = fkCalculated
      FieldName = 'CLIENTE_NBF'
      Size = 100
      Calculated = True
    end
    object qrFinalCLIF_ID: TAutoIncField
      DisplayLabel = 'Código'
      DisplayWidth = 10
      FieldName = 'CLIF_ID'
      ReadOnly = True
    end
    object qrFinalCLIF_RAZA: TStringField
      DisplayLabel = 'Razão Social'
      DisplayWidth = 50
      FieldName = 'CLIF_RAZA'
      Size = 50
    end
    object qrFinalCLIF_NOME: TStringField
      DisplayLabel = 'Nome Fantasia'
      DisplayWidth = 30
      FieldName = 'CLIF_NOME'
      Size = 30
    end
    object qrFinalCLIF_PESSOA: TStringField
      DisplayLabel = 'Tipo de Pessoa'
      DisplayWidth = 1
      FieldName = 'CLIF_PESSOA'
      Size = 1
    end
    object qrFinalCLIF_CGCCPF: TStringField
      DisplayLabel = 'CNPJ/CPF'
      DisplayWidth = 15
      FieldName = 'CLIF_CGCCPF'
      Size = 15
    end
    object qrFinalCLIF_INSCRG: TStringField
      DisplayLabel = 'IE'
      DisplayWidth = 15
      FieldName = 'CLIF_INSCRG'
      Size = 15
    end
    object qrFinalCLIF_ENDERECO: TStringField
      DisplayLabel = 'Endereço'
      DisplayWidth = 50
      FieldName = 'CLIF_ENDERECO'
      Size = 50
    end
    object qrFinalCLIF_ENDERECO_COMPL: TStringField
      DisplayLabel = 'Complemento'
      DisplayWidth = 20
      FieldName = 'CLIF_ENDERECO_COMPL'
    end
    object qrFinalCLIF_ENDERECO_BAIRRO: TStringField
      DisplayLabel = 'Bairro'
      DisplayWidth = 40
      FieldName = 'CLIF_ENDERECO_BAIRRO'
      Size = 40
    end
    object qrFinalMUN_NOME: TStringField
      DisplayLabel = 'Municipio'
      DisplayWidth = 40
      FieldName = 'MUN_NOME'
      Size = 40
    end
    object qrFinalUF_SIGLA: TStringField
      DisplayLabel = 'UF'
      DisplayWidth = 2
      FieldName = 'UF_SIGLA'
      Size = 2
    end
    object qrFinalCLIF_CEP: TStringField
      DisplayLabel = 'CEP'
      DisplayWidth = 8
      FieldName = 'CLIF_CEP'
      Size = 8
    end
    object qrFinalCLIF_TEL1: TStringField
      DisplayLabel = 'Telefone1'
      DisplayWidth = 11
      FieldName = 'CLIF_TEL1'
      Size = 11
    end
    object qrFinalCLIF_TEL2: TStringField
      DisplayLabel = 'Telefone2'
      DisplayWidth = 11
      FieldName = 'CLIF_TEL2'
      Size = 11
    end
    object qrFinalCLIF_FAX: TStringField
      DisplayLabel = 'Fax'
      DisplayWidth = 11
      FieldName = 'CLIF_FAX'
      Size = 11
    end
    object qrFinalCLIF_EMAIL: TStringField
      DisplayLabel = 'Email'
      DisplayWidth = 60
      FieldName = 'CLIF_EMAIL'
      Size = 60
    end
    object qrFinalCLIF_CONTATO: TStringField
      DisplayLabel = 'Contato'
      DisplayWidth = 50
      FieldName = 'CLIF_CONTATO'
      Size = 50
    end
    object qrFinalCLIF_CARGAPALLET: TStringField
      DisplayLabel = 'CARGAPALLET'
      DisplayWidth = 1
      FieldName = 'CLIF_CARGAPALLET'
      Size = 1
    end
    object qrFinalCLIE_ENDERECO: TStringField
      DisplayLabel = 'Endereço Ent.'
      DisplayWidth = 50
      FieldName = 'CLIE_ENDERECO'
      Size = 50
    end
    object qrFinalCLIE_ENDERECO_COMPL: TStringField
      DisplayLabel = 'Complemento Ent.'
      DisplayWidth = 20
      FieldName = 'CLIE_ENDERECO_COMPL'
    end
    object qrFinalCLIE_ENDERECO_BAIRRO: TStringField
      DisplayLabel = 'Bairro Ent.'
      DisplayWidth = 40
      FieldName = 'CLIE_ENDERECO_BAIRRO'
      Size = 40
    end
    object qrFinalCLIE_MUNICIPIO: TStringField
      DisplayLabel = 'Municipio Entr.'
      DisplayWidth = 40
      FieldName = 'CLIE_MUNICIPIO'
      Size = 40
    end
    object qrFinalCLIE_UF_SIGLA: TStringField
      DisplayLabel = 'UF Entr.'
      DisplayWidth = 2
      FieldName = 'CLIE_UF_SIGLA'
      Size = 2
    end
    object qrFinalCLIE_CEP: TStringField
      DisplayLabel = 'CEP Entr.'
      DisplayWidth = 8
      FieldName = 'CLIE_CEP'
      Size = 8
    end
    object qrFinalCLI_HORARIO: TStringField
      DisplayLabel = 'Horario'
      DisplayWidth = 5
      FieldName = 'CLI_HORARIO'
      Size = 5
    end
    object qrFinalCLI_VL_DESCARGA: TFloatField
      DisplayLabel = 'Valor Descarga'
      DisplayWidth = 10
      FieldName = 'CLI_VL_DESCARGA'
    end
    object qrFinalCLI_OBS: TStringField
      DisplayLabel = 'OBS'
      DisplayWidth = 4000
      FieldName = 'CLI_OBS'
      Size = 4000
    end
  end
end
