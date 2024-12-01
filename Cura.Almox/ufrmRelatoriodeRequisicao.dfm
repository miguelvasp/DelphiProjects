object frmRelatoriodeRequisicao: TfrmRelatoriodeRequisicao
  Left = 192
  Top = 116
  Width = 979
  Height = 563
  Caption = 'Relatório de Requisições'
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
    Width = 963
    Height = 65
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 43
      Height = 14
      Caption = 'Data de'
    end
    object Label2: TLabel
      Left = 112
      Top = 8
      Width = 49
      Height = 14
      Caption = 'Data Até'
    end
    object Label3: TLabel
      Left = 200
      Top = 8
      Width = 88
      Height = 14
      Caption = 'Local de Origem'
    end
    object Label4: TLabel
      Left = 400
      Top = 8
      Width = 90
      Height = 14
      Caption = 'Local de Destino'
    end
    object Label5: TLabel
      Left = 600
      Top = 8
      Width = 96
      Height = 14
      Caption = 'Tipo de Consumo'
    end
    object edtIni: TMaskEdit
      Left = 16
      Top = 24
      Width = 81
      Height = 22
      EditMask = '99/99/9999'
      MaxLength = 10
      TabOrder = 0
      Text = '  /  /    '
    end
    object edtFim: TMaskEdit
      Left = 112
      Top = 24
      Width = 81
      Height = 22
      EditMask = '99/99/9999'
      MaxLength = 10
      TabOrder = 1
      Text = '  /  /    '
    end
    object cboLocalOrigem: TwwDBLookupCombo
      Left = 200
      Top = 24
      Width = 193
      Height = 22
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'DESCRICAO'#9'50'#9'DESCRICAO'#9#9)
      LookupTable = qrLocalOrigem
      LookupField = 'LOCAL_ID'
      TabOrder = 2
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
    end
    object cboLocalDestino: TwwDBLookupCombo
      Left = 400
      Top = 24
      Width = 193
      Height = 22
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'DESCRICAO'#9'50'#9'DESCRICAO'#9#9)
      LookupTable = qrLocalDestino
      LookupField = 'LOCAL_ID'
      TabOrder = 3
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
    end
    object cboTipoConsumo: TwwDBComboBox
      Left = 600
      Top = 24
      Width = 121
      Height = 22
      ShowButton = True
      Style = csDropDown
      MapList = True
      AllowClearKey = False
      DropDownCount = 8
      ItemHeight = 0
      Items.Strings = (
        'Consumo'#9'C'
        'Transferência'#9'T')
      Sorted = False
      TabOrder = 4
      UnboundDataType = wwDefault
    end
    object Button1: TButton
      Left = 736
      Top = 23
      Width = 75
      Height = 25
      Caption = 'Filtrar'
      TabOrder = 5
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 824
      Top = 23
      Width = 97
      Height = 25
      Caption = 'Exportar Excel'
      TabOrder = 6
      OnClick = Button2Click
    end
  end
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 65
    Width = 963
    Height = 460
    Selected.Strings = (
      'Req_ID'#9'10'#9'Requisição'#9#9
      'Data'#9'10'#9'Data'#9#9
      'Usuario'#9'30'#9'Usuário'#9#9
      'Origem'#9'30'#9'Origem'#9#9
      'Destino'#9'30'#9'Destino'#9#9
      'MAT_DESC'#9'50'#9'Material'#9#9
      'TipoConsumo'#9'13'#9'Tipo Consumo'#9#9
      'Qtde'#9'10'#9'Qtde'#9#9
      'CUSTO'#9'10'#9'Custo Médio'#9'F'
      'REPOSICAO'#9'10'#9'Reposição'#9'F')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = dsExcel
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
  object qrLocalOrigem: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    SQL.Strings = (
      'SELECT LOCAL_ID, DESCRICAO FROM LOCAL ORDER BY DESCRICAO')
    Left = 488
    Top = 96
    object qrLocalOrigemDESCRICAO: TStringField
      DisplayWidth = 50
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object qrLocalOrigemLOCAL_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'LOCAL_ID'
      ReadOnly = True
      Visible = False
    end
  end
  object qrLocalDestino: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    SQL.Strings = (
      'SELECT LOCAL_ID, DESCRICAO FROM LOCAL ORDER BY DESCRICAO')
    Left = 616
    Top = 96
    object StringField1: TStringField
      DisplayWidth = 50
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object AutoIncField1: TAutoIncField
      DisplayWidth = 10
      FieldName = 'LOCAL_ID'
      ReadOnly = True
      Visible = False
    end
  end
  object qrBusca: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT  top 100'
      #9'C.Req_ID,'
      #9'C.Data,'
      #9'ISNULL(U.NOME_COMPLETO, C.Usuario) AS Usuario,'
      #9'O.Descricao AS Origem,'
      #9'D.Descricao as Destino,'
      #9'M.MAT_DESC,'
      #9'I.Status,'
      #9'CASE WHEN I.tipoConsumo = '#39'C'#39' THEN '#39'CONSUMO'#39
      #9#9'WHEN I.tipoConsumo = '#39'T'#39' THEN '#39'TRANSFERENCIA'#39
      #9'END AS TipoConsumo,'
      #9'Sum(L.Qtde) as Qtde, CUSTO, REPOSICAO'
      'FROM Req_Capa C'
      'INNER JOIN Req_Item I ON C.Req_ID = I.Req_ID'
      'INNER JOIN Req_Lote L ON I.Req_Item_ID = L.Req_Item_ID'
      'INNER JOIN Local O ON C.LOCAL_ID = O.Local_ID'
      'INNER JOIN LOCAL D ON L.Local_ID = D.Local_ID'
      'INNER JOIN UsuarioAlmox U ON C.Usuario = U.Nome'
      'INNER JOIN MATERIAIS M ON I.Mat_ID = M.MAT_ID'
      ''
      'group by C.Req_ID,'
      #9'C.Data,'
      #9'ISNULL(U.NOME_COMPLETO, C.Usuario) ,'
      #9'O.Descricao,'
      #9'D.Descricao,'
      #9'M.MAT_DESC,'
      #9'I.Status,'
      #9'CASE WHEN I.tipoConsumo = '#39'C'#39' THEN '#39'CONSUMO'#39
      #9#9'WHEN I.tipoConsumo = '#39'T'#39' THEN '#39'TRANSFERENCIA'#39
      #9'END, CUSTO, REPOSICAO'
      'order by C.Req_ID')
    Left = 504
    Top = 296
    object qrBuscaReq_ID: TAutoIncField
      DisplayLabel = 'Requisição'
      DisplayWidth = 10
      FieldName = 'Req_ID'
      ReadOnly = True
    end
    object qrBuscaData: TDateTimeField
      DisplayWidth = 10
      FieldName = 'Data'
    end
    object qrBuscaUsuario: TStringField
      DisplayLabel = 'Usuário'
      DisplayWidth = 30
      FieldName = 'Usuario'
      ReadOnly = True
      Size = 150
    end
    object qrBuscaOrigem: TStringField
      DisplayWidth = 30
      FieldName = 'Origem'
      Size = 50
    end
    object qrBuscaDestino: TStringField
      DisplayWidth = 30
      FieldName = 'Destino'
      Size = 50
    end
    object qrBuscaMAT_DESC: TStringField
      DisplayLabel = 'Material'
      DisplayWidth = 50
      FieldName = 'MAT_DESC'
      Size = 100
    end
    object qrBuscaTipoConsumo: TStringField
      DisplayLabel = 'Tipo Consumo'
      DisplayWidth = 13
      FieldName = 'TipoConsumo'
      ReadOnly = True
      Size = 13
    end
    object qrBuscaQtde: TFloatField
      DisplayWidth = 10
      FieldName = 'Qtde'
      ReadOnly = True
    end
    object qrBuscaCUSTO: TFloatField
      DisplayLabel = 'Custo Médio'
      DisplayWidth = 10
      FieldName = 'CUSTO'
      DisplayFormat = '##0.00'
    end
    object qrBuscaREPOSICAO: TFloatField
      DisplayLabel = 'Reposição'
      DisplayWidth = 10
      FieldName = 'REPOSICAO'
      DisplayFormat = '##0.00'
    end
  end
  object dsExcel: TDataSource
    DataSet = qrBusca
    Left = 400
    Top = 216
  end
end
