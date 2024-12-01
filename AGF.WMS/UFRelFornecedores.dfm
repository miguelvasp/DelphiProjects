object FFRelFornecedores: TFFRelFornecedores
  Left = 305
  Top = 110
  Width = 646
  Height = 481
  BorderIcons = []
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 65
    Top = 177
    Width = 64
    Height = 15
    Caption = 'Cliente NBF'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel3: TPanel
    Left = 2
    Top = 2
    Width = 612
    Height = 45
    BevelInner = bvLowered
    TabOrder = 0
    object SpeedButton3: TSpeedButton
      Left = 576
      Top = 9
      Width = 25
      Height = 25
      Hint = 'Sair'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000010000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
        03333377777777777F333301111111110333337F333333337F33330111111111
        0333337F333333337F333301111111110333337F333333337F33330111111111
        0333337F333333337F333301111111110333337F333333337F33330111111111
        0333337F3333333F7F333301111111B10333337F333333737F33330111111111
        0333337F333333337F333301111111110333337F33FFFFF37F3333011EEEEE11
        0333337F377777F37F3333011EEEEE110333337F37FFF7F37F3333011EEEEE11
        0333337F377777337F333301111111110333337F333333337F33330111111111
        0333337FFFFFFFFF7F3333000000000003333377777777777333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton3Click
    end
    object Label16: TLabel
      Left = 9
      Top = 5
      Width = 329
      Height = 29
      Caption = 'Relatório de Fornecedores'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -24
      Font.Name = 'Georgia'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 2
    Top = 50
    Width = 612
    Height = 377
    BevelInner = bvLowered
    TabOrder = 1
    object SBT_VISU: TSpeedButton
      Left = 16
      Top = 336
      Width = 142
      Height = 27
      Hint = 'Visualiza Estoque'
      Caption = '&Visualizar Fornecedores'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
        033333777777777773333330777777703333333773F333773333333330888033
        33333FFFF7FFF7FFFFFF0000000000000003777777777777777F0FFFFFFFFFF9
        FF037F3333333337337F0F78888888887F037F33FFFFFFFFF37F0F7000000000
        8F037F3777777777F37F0F70AAAAAAA08F037F37F3333337F37F0F70ADDDDDA0
        8F037F37F3333337F37F0F70A99A99A08F037F37F3333337F37F0F70A99A99A0
        8F037F37F3333337F37F0F70AAAAAAA08F037F37FFFFFFF7F37F0F7000000000
        8F037F3777777777337F0F77777777777F037F3333333333337F0FFFFFFFFFFF
        FF037FFFFFFFFFFFFF7F00000000000000037777777777777773}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SBT_VISUClick
    end
    object GroupBox6: TGroupBox
      Left = 16
      Top = 10
      Width = 585
      Height = 303
      Caption = 'Seleção de Filtros'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Label20: TLabel
        Left = 64
        Top = 102
        Width = 65
        Height = 15
        Caption = 'Fornecedor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object wwDBLookupCombo4: TwwDBLookupCombo
        Left = 133
        Top = 97
        Width = 418
        Height = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        CharCase = ecUpperCase
        BorderStyle = bsNone
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'TRANS_RAZA'#9'60'#9'TRANS_RAZA'#9'F')
        LookupTable = Q_FORNE
        LookupField = 'TRANS_ID'
        DropDownCount = 16
        ParentFont = False
        TabOrder = 0
        AutoDropDown = True
        ShowButton = True
        AllowClearKey = True
        OnEnter = wwDBLookupCombo4Enter
        OnExit = wwDBLookupCombo4Exit
      end
      object RadioGroup2: TRadioGroup
        Left = 240
        Top = 177
        Width = 121
        Height = 63
        Caption = 'Transportadora ?'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ItemIndex = 0
        Items.Strings = (
          'Sim'
          'Não')
        ParentFont = False
        TabOrder = 1
      end
    end
    object Button1: TButton
      Left = 168
      Top = 336
      Width = 201
      Height = 25
      Caption = 'Exportar para Excel'
      TabOrder = 1
      OnClick = Button1Click
    end
    object ProgressBar1: TProgressBar
      Left = 384
      Top = 344
      Width = 150
      Height = 17
      Min = 0
      Max = 100
      TabOrder = 2
    end
  end
  object Q_FORNE: TwwQuery
    Active = True
    AutoCalcFields = False
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'select TRANS_ID,TRANS_RAZA'
      'from TRANSPORTADORA order by TRANS_RAZa'
      '')
    ValidateWithMask = True
    Left = 535
    Top = 232
    object Q_FORNETRANS_RAZA: TStringField
      DisplayWidth = 60
      FieldName = 'TRANS_RAZA'
      Origin = 'NBFDADOS.TRANSPORTADORA.TRANS_RAZA'
      FixedChar = True
      Size = 60
    end
    object Q_FORNETRANS_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'TRANS_ID'
      Origin = 'NBFDADOS.TRANSPORTADORA.TRANS_ID'
      Visible = False
    end
  end
  object qrFornecedores: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    SQL.Strings = (
      'SELECT '
      '  A.* ,'
      '  B.MUN_NOME'
      'FROM TRANSPORTADORA A LEFT OUTER JOIN MUNICIPIO B'
      'ON A.MUN_ID = B.MUN_ID')
    Left = 74
    Top = 250
    object qrFornecedoresTRANS_ID: TAutoIncField
      DisplayLabel = 'Código'
      FieldName = 'TRANS_ID'
      ReadOnly = True
    end
    object qrFornecedoresTRANS_RAZA: TStringField
      DisplayLabel = 'Razão Social'
      FieldName = 'TRANS_RAZA'
      Size = 60
    end
    object qrFornecedoresTRANS_FANTASIA: TStringField
      DisplayLabel = 'Nome Fantasia'
      FieldName = 'TRANS_FANTASIA'
      Size = 40
    end
    object qrFornecedoresTRANS_PESSOA: TStringField
      DisplayLabel = 'TIPO PESSOA'
      FieldName = 'TRANS_PESSOA'
      FixedChar = True
      Size = 1
    end
    object qrFornecedoresTRANS_CNPJ: TStringField
      DisplayLabel = 'CNPJ'
      FieldName = 'TRANS_CNPJ'
      Size = 15
    end
    object qrFornecedoresTRANS_INSCRICAO: TStringField
      DisplayLabel = 'IE'
      FieldName = 'TRANS_INSCRICAO'
      Size = 15
    end
    object qrFornecedoresTRANS_ENDERECO: TStringField
      DisplayLabel = 'Endereço'
      FieldName = 'TRANS_ENDERECO'
      Size = 50
    end
    object qrFornecedoresTRANS_ENDERECO_COMPL: TStringField
      DisplayLabel = 'Complemento'
      FieldName = 'TRANS_ENDERECO_COMPL'
    end
    object qrFornecedoresTRANS_ENDERECO_BAIRRO: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'TRANS_ENDERECO_BAIRRO'
      Size = 40
    end
    object qrFornecedoresTRANS_CEP: TStringField
      DisplayLabel = 'CEP'
      FieldName = 'TRANS_CEP'
      Size = 8
    end
    object qrFornecedoresMUN_NOME: TStringField
      DisplayLabel = 'MUNICIPIO'
      FieldName = 'MUN_NOME'
      Size = 40
    end
    object qrFornecedoresUF_SIGLA: TStringField
      DisplayLabel = 'UF'
      FieldName = 'UF_SIGLA'
      Size = 2
    end
    object qrFornecedoresTRANS_TEL: TStringField
      DisplayLabel = 'TELEFONE 1'
      FieldName = 'TRANS_TEL'
      Size = 11
    end
    object qrFornecedoresTRANS_TEL2: TStringField
      DisplayLabel = 'TELEFONE 2'
      FieldName = 'TRANS_TEL2'
      Size = 11
    end
    object qrFornecedoresTRANS_FAX: TStringField
      DisplayLabel = 'FAX'
      FieldName = 'TRANS_FAX'
      Size = 11
    end
    object qrFornecedoresTRANS_EMAIL: TStringField
      DisplayLabel = 'EMAIL'
      FieldName = 'TRANS_EMAIL'
      Size = 60
    end
    object qrFornecedoresTRANS_CONTATO: TStringField
      DisplayLabel = 'CONTATO'
      FieldName = 'TRANS_CONTATO'
      Size = 30
    end
  end
  object dsExcel: TDataSource
    DataSet = qrFornecedores
    Left = 146
    Top = 244
  end
end
