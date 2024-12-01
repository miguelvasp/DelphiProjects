object frmRelClienteNBF: TfrmRelClienteNBF
  Left = 427
  Top = 240
  Width = 479
  Height = 213
  Caption = 'Relatório de Clientes NBF'
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
      AllowClearKey = False
    end
  end
  object Button1: TButton
    Left = 32
    Top = 120
    Width = 161
    Height = 25
    Caption = 'Exportar para Excel'
    TabOrder = 1
    OnClick = Button1Click
  end
  object qrCliente: TADOQuery
    Active = True
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM CLIENTENBF A INNER JOIN MUNICIPIO B '
      'ON A.MUN_ID = B.MUN_ID')
    Left = 256
    Top = 104
    object qrClienteCLIN_RAZA: TStringField
      DisplayLabel = 'Razão Social'
      DisplayWidth = 50
      FieldName = 'CLIN_RAZA'
      Size = 50
    end
    object qrClienteCLIN_ID: TAutoIncField
      DisplayLabel = 'Código'
      DisplayWidth = 10
      FieldName = 'CLIN_ID'
      ReadOnly = True
      Visible = False
    end
    object qrClienteCLIN_NOME: TStringField
      DisplayLabel = 'Nome Fantasia'
      DisplayWidth = 30
      FieldName = 'CLIN_NOME'
      Visible = False
      Size = 30
    end
    object qrClienteCLIN_PESSOA: TStringField
      DisplayLabel = 'Tipo Pessoa'
      DisplayWidth = 1
      FieldName = 'CLIN_PESSOA'
      Visible = False
      Size = 1
    end
    object qrClienteCLIN_CGCCPF: TStringField
      DisplayLabel = 'CNPJ'
      DisplayWidth = 15
      FieldName = 'CLIN_CGCCPF'
      Visible = False
      Size = 15
    end
    object qrClienteCLIN_INSCRG: TStringField
      DisplayLabel = 'IE'
      DisplayWidth = 15
      FieldName = 'CLIN_INSCRG'
      Visible = False
      Size = 15
    end
    object qrClienteCLIN_ENDERECO: TStringField
      DisplayLabel = 'Endereço'
      DisplayWidth = 50
      FieldName = 'CLIN_ENDERECO'
      Visible = False
      Size = 50
    end
    object qrClienteCLIN_ENDERECO_COMPL: TStringField
      DisplayLabel = 'Complemento'
      DisplayWidth = 35
      FieldName = 'CLIN_ENDERECO_COMPL'
      Visible = False
      Size = 35
    end
    object qrClienteCLIN_ENDERECO_BAIRRO: TStringField
      DisplayLabel = 'Bairro'
      DisplayWidth = 40
      FieldName = 'CLIN_ENDERECO_BAIRRO'
      Visible = False
      Size = 40
    end
    object qrClienteMUN_NOME: TStringField
      DisplayLabel = 'Municipio'
      DisplayWidth = 40
      FieldName = 'MUN_NOME'
      Visible = False
      Size = 40
    end
    object qrClienteUF_SIGLA: TStringField
      DisplayLabel = 'UF'
      DisplayWidth = 2
      FieldName = 'UF_SIGLA'
      Visible = False
      Size = 2
    end
    object qrClienteCLIN_CEP: TStringField
      DisplayLabel = 'CEP'
      DisplayWidth = 8
      FieldName = 'CLIN_CEP'
      Visible = False
      Size = 8
    end
    object qrClienteCLIN_TEL1: TStringField
      DisplayLabel = 'Telefone1'
      DisplayWidth = 11
      FieldName = 'CLIN_TEL1'
      Visible = False
      Size = 11
    end
    object qrClienteCLIN_TEL2: TStringField
      DisplayLabel = 'Telefone2'
      DisplayWidth = 11
      FieldName = 'CLIN_TEL2'
      Visible = False
      Size = 11
    end
    object qrClienteCLIN_FAX: TStringField
      DisplayLabel = 'FAX'
      DisplayWidth = 11
      FieldName = 'CLIN_FAX'
      Visible = False
      Size = 11
    end
    object qrClienteCLIN_EMAIL: TStringField
      DisplayLabel = 'Email'
      DisplayWidth = 60
      FieldName = 'CLIN_EMAIL'
      Visible = False
      Size = 60
    end
    object qrClienteCLIN_WEB: TStringField
      DisplayLabel = 'Site'
      DisplayWidth = 60
      FieldName = 'CLIN_WEB'
      Visible = False
      FixedChar = True
      Size = 60
    end
    object qrClienteCLIN_ENDC: TStringField
      DisplayLabel = 'Endereço Cob.'
      DisplayWidth = 50
      FieldName = 'CLIN_ENDC'
      Visible = False
      Size = 50
    end
    object qrClienteCLIN_END_COMPLC: TStringField
      DisplayLabel = 'Complemento Cob.'
      DisplayWidth = 35
      FieldName = 'CLIN_END_COMPLC'
      Visible = False
      Size = 35
    end
    object qrClienteCLIN_END_BAIRC: TStringField
      DisplayLabel = 'Bairro Cob.'
      DisplayWidth = 40
      FieldName = 'CLIN_END_BAIRC'
      Visible = False
      Size = 40
    end
    object qrClienteUF_SIGLAC: TStringField
      DisplayLabel = 'UF Cob.'
      DisplayWidth = 2
      FieldName = 'UF_SIGLAC'
      Visible = False
      Size = 2
    end
    object qrClienteCLIN_CEPC: TStringField
      DisplayLabel = 'CEP Cob.'
      DisplayWidth = 8
      FieldName = 'CLIN_CEPC'
      Visible = False
      Size = 8
    end
    object qrClienteCLIN_TELC: TStringField
      DisplayLabel = 'Telefone Cob.'
      DisplayWidth = 11
      FieldName = 'CLIN_TELC'
      Visible = False
      Size = 11
    end
    object qrClienteCLIN_FAXC: TStringField
      DisplayLabel = 'Fax Cob.'
      DisplayWidth = 11
      FieldName = 'CLIN_FAXC'
      Visible = False
      Size = 11
    end
    object qrClienteCLIN_EMAILC: TStringField
      DisplayLabel = 'Email Cob.'
      DisplayWidth = 60
      FieldName = 'CLIN_EMAILC'
      Visible = False
      Size = 60
    end
  end
  object dsExcel: TDataSource
    DataSet = qrCliente
    Left = 336
    Top = 104
  end
end
