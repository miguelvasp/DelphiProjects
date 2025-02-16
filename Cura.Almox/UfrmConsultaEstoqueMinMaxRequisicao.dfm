object frmConsultaEstoqueMinMaxRequisicao: TfrmConsultaEstoqueMinMaxRequisicao
  Left = 282
  Top = 128
  Width = 1000
  Height = 650
  Caption = 'Consulta de Estoque M�nimo M�ximo por Local'
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
  object Label23: TLabel
    Left = 16
    Top = 6
    Width = 32
    Height = 18
    Caption = 'Local'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 984
    Height = 63
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 26
      Height = 13
      Caption = 'Local'
    end
    object Label2: TLabel
      Left = 320
      Top = 8
      Width = 89
      Height = 13
      Caption = 'Grupo de Materiais'
    end
    object cboGrupo: TwwDBLookupCombo
      Left = 320
      Top = 23
      Width = 297
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'GRU_DESC'#9'40'#9'GRU_DESC'#9'F'#9)
      DataField = 'Local_ID'
      LookupTable = qrGrupo
      LookupField = 'GRU_ID'
      ParentFont = False
      TabOrder = 0
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = True
    end
    object Button1: TButton
      Left = 624
      Top = 22
      Width = 75
      Height = 25
      Caption = 'Consultar'
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 704
      Top = 22
      Width = 75
      Height = 25
      Caption = 'Imprimir'
      TabOrder = 2
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 784
      Top = 22
      Width = 75
      Height = 25
      Caption = 'Excel'
      TabOrder = 3
      OnClick = Button3Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 571
    Width = 984
    Height = 41
    Align = alBottom
    TabOrder = 1
    object Label3: TLabel
      Left = 8
      Top = 16
      Width = 76
      Height = 13
      Caption = 'Centro de Custo'
    end
    object Button4: TButton
      Left = 536
      Top = 9
      Width = 209
      Height = 25
      Caption = 'Gerar Solicita��o de Materiais'
      TabOrder = 0
      OnClick = Button4Click
    end
    object cboCentroCusto: TwwDBLookupCombo
      Left = 94
      Top = 11
      Width = 427
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'CC_Desc'#9'40'#9'CC_Desc'#9'F'#9)
      DataField = 'Local_ID'
      LookupTable = qrCentroCusto
      LookupField = 'CC_ID'
      ParentFont = False
      TabOrder = 1
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = True
    end
  end
  object cboLocal: TwwDBLookupCombo
    Left = 16
    Top = 24
    Width = 297
    Height = 24
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'Descricao'#9'50'#9'Descricao'#9'F'#9)
    DataField = 'Local_ID'
    LookupTable = qrLocal
    LookupField = 'Local_ID'
    ParentFont = False
    TabOrder = 2
    AutoDropDown = True
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = True
  end
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 63
    Width = 984
    Height = 508
    ControlType.Strings = (
      'Selecionado;CheckBox;S;N')
    Selected.Strings = (
      'LOCAL'#9'30'#9'Local'
      'MATERIAL'#9'60'#9'Material'
      'Estoque'#9'10'#9'Estoque'
      'Media'#9'10'#9'M�dia'
      'EstoqueMinimo'#9'10'#9'Est. M�n'
      'EstoqueMaximo'#9'10'#9'Est. M�x.'
      'Selecionado'#9'3'#9'***'
      'QtdeSolicitada'#9'12'#9'Qtde Req.'
      'PacoteSolicitar'#9'1'#9'PacoteSolicitar'
      'EntregaEmPacote'#9'1'#9'EntregaEmPacote')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 6
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = dsExcel
    TabOrder = 3
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnCalcCellColors = wwDBGrid1CalcCellColors
  end
  object qrLocal: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    SQL.Strings = (
      
        'SELECT * FROM Local WHERE CONTROLA_ESTOQUE = '#39'S'#39' ORDER BY Descri' +
        'cao')
    Left = 676
    Top = 442
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
    object qrLocalDisponivelSN: TStringField
      DisplayWidth = 1
      FieldName = 'DisponivelSN'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object qrLocalCONSUMO: TStringField
      DisplayWidth = 1
      FieldName = 'CONSUMO'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object qrLocalCONTROLA_ESTOQUE: TStringField
      DisplayWidth = 1
      FieldName = 'CONTROLA_ESTOQUE'
      Visible = False
      FixedChar = True
      Size = 1
    end
  end
  object qrGrupo: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM GRUPO_MATERIAL ORDER BY GRU_DESC')
    Left = 736
    Top = 440
    object qrGrupoGRU_DESC: TStringField
      DisplayWidth = 40
      FieldName = 'GRU_DESC'
      Size = 40
    end
    object qrGrupoGRU_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'GRU_ID'
      ReadOnly = True
      Visible = False
    end
  end
  object qrBusca: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'usuario'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT '
      'CE.*,'
      'L.Descricao AS LOCAL,'
      'CodigoMaterial + '#39' '#39' + M.MAT_DESC  AS MATERIAL'
      'FROM ConsultaEstoqueRequisicao CE'
      'INNER JOIN Local L '
      'ON CE.Local_ID = L.Local_ID'
      'INNER JOIN MATERIAIS M '
      'ON CE.Mat_ID = M.MAT_ID'
      'WHERE usuario = :usuario'
      'order by M.MAT_DESC')
    Left = 792
    Top = 440
    object qrBuscaLOCAL: TStringField
      DisplayLabel = 'Local'
      DisplayWidth = 30
      FieldName = 'LOCAL'
      ProviderFlags = []
      Size = 50
    end
    object qrBuscaMATERIAL: TStringField
      DisplayLabel = 'Material'
      DisplayWidth = 60
      FieldName = 'MATERIAL'
      ProviderFlags = []
      Size = 100
    end
    object qrBuscaEstoque: TFloatField
      DisplayWidth = 10
      FieldName = 'Estoque'
      ProviderFlags = []
    end
    object qrBuscaMedia: TFloatField
      DisplayLabel = 'M�dia'
      DisplayWidth = 10
      FieldName = 'Media'
      ProviderFlags = []
    end
    object qrBuscaEstoqueMinimo: TFloatField
      DisplayLabel = 'Est. M�n'
      DisplayWidth = 10
      FieldName = 'EstoqueMinimo'
      ProviderFlags = []
    end
    object qrBuscaEstoqueMaximo: TFloatField
      DisplayLabel = 'Est. M�x.'
      DisplayWidth = 10
      FieldName = 'EstoqueMaximo'
      ProviderFlags = []
    end
    object qrBuscaSelecionado: TStringField
      DisplayLabel = '***'
      DisplayWidth = 3
      FieldName = 'Selecionado'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object qrBuscaQtdeSolicitada: TFloatField
      DisplayLabel = 'Qtde Req.'
      DisplayWidth = 12
      FieldName = 'QtdeSolicitada'
      ProviderFlags = [pfInUpdate]
    end
    object qrBuscaUsuario: TIntegerField
      DisplayWidth = 10
      FieldName = 'Usuario'
      ProviderFlags = []
      Visible = False
    end
    object qrBuscaIdConsultaEstoqueRequisicao: TAutoIncField
      DisplayWidth = 10
      FieldName = 'IdConsultaEstoqueRequisicao'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      Visible = False
    end
    object qrBuscaLocal_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'Local_ID'
      ProviderFlags = []
      Visible = False
    end
    object qrBuscaMAT_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'MAT_ID'
      ProviderFlags = []
      Visible = False
    end
    object qrBuscaPacoteSolicitar: TStringField
      FieldName = 'PacoteSolicitar'
      Size = 1
    end
    object qrBuscaEntregaEmPacote: TStringField
      FieldName = 'EntregaEmPacote'
      Size = 1
    end
  end
  object dsExcel: TDataSource
    DataSet = qrBusca
    Left = 456
    Top = 288
  end
  object qrSTP: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    Left = 608
    Top = 440
  end
  object qrCentroCusto: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM CENTRO_CUSTO ORDER BY CC_Desc')
    Left = 512
    Top = 440
    object qrCentroCustoCC_Desc: TStringField
      DisplayWidth = 40
      FieldName = 'CC_Desc'
      Size = 40
    end
    object qrCentroCustoCC_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'CC_ID'
      ReadOnly = True
      Visible = False
    end
    object qrCentroCustoFinancSN: TStringField
      DisplayWidth = 1
      FieldName = 'FinancSN'
      Visible = False
      Size = 1
    end
  end
end
