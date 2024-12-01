object frmControledeAcessos: TfrmControledeAcessos
  Left = 192
  Top = 124
  Width = 1251
  Height = 563
  Caption = 'Controle de Acessos a Requisição de materiais'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1235
    Height = 57
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 31
      Height = 14
      Caption = 'Local:'
    end
    object cboLocal: TwwDBLookupCombo
      Left = 56
      Top = 21
      Width = 377
      Height = 22
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'Descricao'#9'50'#9'Descricao'#9#9)
      LookupTable = qrLocal
      LookupField = 'Local_ID'
      TabOrder = 0
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
    end
    object Button1: TButton
      Left = 457
      Top = 20
      Width = 75
      Height = 25
      Caption = 'Filtrar'
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 544
      Top = 20
      Width = 153
      Height = 25
      Caption = 'Exportar Excel'
      TabOrder = 2
      OnClick = Button2Click
    end
  end
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 57
    Width = 1235
    Height = 468
    Selected.Strings = (
      'Nome'#9'40'#9'Login'
      'NOME_COMPLETO'#9'50'#9'Nome'
      'Descricao'#9'40'#9'Local'
      'Requisicao'#9'1'#9'Requisição'
      'Requisicao_Adm'#9'1'#9'Requisição Adminstração'
      'Requisicao_aprov'#9'1'#9'Requisição Aprovação'#9'F')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = dsExcel
    ReadOnly = True
    TabOrder = 1
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
  end
  object qrLocal: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    SQL.Strings = (
      'SELECT Local_ID, Descricao FROM LOCAL ORDER BY Descricao')
    Left = 464
    Top = 120
    object qrLocalDescricao: TStringField
      DisplayWidth = 50
      FieldName = 'Descricao'
      Size = 50
    end
    object qrLocalLocal_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'Local_ID'
      ReadOnly = True
      Visible = False
    end
  end
  object qrBusca: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT '
      'CH, Nome, NOME_COMPLETO, L.Descricao, Requisicao,'
      'Requisicao_Adm, Requisicao_aprov '
      'FROM UsuarioAlmox U'
      'INNER JOIN Local L ON U.LOCAL_ID = L.Local_ID'
      'WHERE Nome NOT LIKE '#39'%(%'#39
      'ORDER BY NOME_COMPLETO')
    Left = 312
    Top = 192
    object qrBuscaNome: TStringField
      DisplayLabel = 'Login'
      DisplayWidth = 40
      FieldName = 'Nome'
      Size = 40
    end
    object qrBuscaNOME_COMPLETO: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 50
      FieldName = 'NOME_COMPLETO'
      Size = 150
    end
    object qrBuscaDescricao: TStringField
      DisplayLabel = 'Local'
      DisplayWidth = 40
      FieldName = 'Descricao'
      Size = 50
    end
    object qrBuscaRequisicao: TStringField
      DisplayLabel = 'Requisição'
      DisplayWidth = 1
      FieldName = 'Requisicao'
      FixedChar = True
      Size = 1
    end
    object qrBuscaRequisicao_Adm: TStringField
      DisplayLabel = 'Requisição Adminstração'
      DisplayWidth = 1
      FieldName = 'Requisicao_Adm'
      FixedChar = True
      Size = 1
    end
    object qrBuscaRequisicao_aprov: TStringField
      DisplayLabel = 'Requisição Aprovação'
      DisplayWidth = 1
      FieldName = 'Requisicao_aprov'
      FixedChar = True
      Size = 1
    end
    object qrBuscaCH: TAutoIncField
      DisplayWidth = 10
      FieldName = 'CH'
      ReadOnly = True
      Visible = False
    end
  end
  object dsExcel: TDataSource
    DataSet = qrBusca
    Left = 256
    Top = 208
  end
end
