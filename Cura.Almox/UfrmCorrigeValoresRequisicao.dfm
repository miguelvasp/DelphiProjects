object frmCorrigeValoresRequisicao: TfrmCorrigeValoresRequisicao
  Left = 238
  Top = 128
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Corrigir Valores de Reposição'
  ClientHeight = 525
  ClientWidth = 924
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 924
    Height = 65
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 41
      Height = 13
      Caption = 'Data de:'
    end
    object Label2: TLabel
      Left = 144
      Top = 8
      Width = 18
      Height = 13
      Caption = 'áte:'
    end
    object Label3: TLabel
      Left = 280
      Top = 8
      Width = 40
      Height = 13
      Caption = 'Material:'
    end
    object MaskEdit1: TMaskEdit
      Left = 8
      Top = 24
      Width = 121
      Height = 21
      EditMask = '99/99/9999'
      MaxLength = 10
      TabOrder = 0
      Text = '  /  /    '
    end
    object MaskEdit2: TMaskEdit
      Left = 144
      Top = 24
      Width = 121
      Height = 21
      EditMask = '99/99/9999'
      MaxLength = 10
      TabOrder = 1
      Text = '  /  /    '
    end
    object cboMateriais: TwwDBLookupCombo
      Left = 280
      Top = 23
      Width = 505
      Height = 21
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'MAT_DESC'#9'60'#9'MAT_DESC'#9'F')
      LookupTable = qrMateriais
      LookupField = 'MAT_ID'
      TabOrder = 2
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
    end
    object Button1: TButton
      Left = 802
      Top = 23
      Width = 75
      Height = 25
      Caption = 'Filtrar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = Button1Click
    end
  end
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 65
    Width = 924
    Height = 460
    Selected.Strings = (
      'MAT_DESC'#9'80'#9'Material'
      'Data'#9'18'#9'Data'
      'REPOSICAO'#9'20'#9'Valor Reposição'
      'CUSTO'#9'20'#9'Custo Médio')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 2
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = DataSource1
    TabOrder = 1
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
  end
  object qrMateriais: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT MAT_ID, MAT_DESC FROM MATERIAIS'
      'WHERE GENERICO NOT IN ('#39'S'#39')'
      'AND MAT_ATIVO = '#39'S'#39
      'ORDER BY MAT_DESC')
    Left = 400
    Top = 200
    object qrMateriaisMAT_DESC: TStringField
      DisplayWidth = 60
      FieldName = 'MAT_DESC'
      Size = 60
    end
    object qrMateriaisMAT_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'MAT_ID'
      ReadOnly = True
      Visible = False
    end
  end
  object qrBusca: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT top 1'
      #9'I.Req_Item_ID, M.MAT_DESC, C.Data, I.REPOSICAO, I.CUSTO'
      'FROM Req_Item I'
      'INNER JOIN Req_Capa C ON I.Req_ID = C.Req_ID'
      'INNER JOIN MATERIAIS M ON I.Mat_ID = M.MAT_ID')
    Left = 464
    Top = 200
    object qrBuscaMAT_DESC: TStringField
      DisplayLabel = 'Material'
      DisplayWidth = 80
      FieldName = 'MAT_DESC'
      ProviderFlags = []
      Size = 100
    end
    object qrBuscaData: TDateTimeField
      DisplayWidth = 18
      FieldName = 'Data'
      ProviderFlags = []
    end
    object qrBuscaREPOSICAO: TFloatField
      DisplayLabel = 'Valor Reposição'
      DisplayWidth = 20
      FieldName = 'REPOSICAO'
      ProviderFlags = [pfInUpdate]
    end
    object qrBuscaCUSTO: TFloatField
      DisplayLabel = 'Custo Médio'
      DisplayWidth = 20
      FieldName = 'CUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object qrBuscaReq_Item_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'Req_Item_ID'
      ProviderFlags = [pfInWhere, pfInKey]
      Visible = False
    end
  end
  object DataSource1: TDataSource
    DataSet = qrBusca
    Left = 448
    Top = 368
  end
end
