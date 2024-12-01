object frmLiberaMaterialRequisicao: TfrmLiberaMaterialRequisicao
  Left = 197
  Top = 113
  BorderStyle = bsDialog
  Caption = 'Materiais controlados'
  ClientHeight = 549
  ClientWidth = 969
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
    Left = 16
    Top = 416
    Width = 139
    Height = 14
    Caption = 'Justificativa para liberação'
  end
  object Label2: TLabel
    Left = 16
    Top = 504
    Width = 34
    Height = 14
    Caption = 'Senha'
  end
  object Label4: TLabel
    Left = 14
    Top = 12
    Width = 89
    Height = 14
    Caption = 'Local de destino'
  end
  object wwDBGrid1: TwwDBGrid
    Left = 16
    Top = 64
    Width = 921
    Height = 337
    Selected.Strings = (
      'Req_ID'#9'10'#9'Requisição'
      'Descricao'#9'30'#9'Local'
      'Data'#9'18'#9'Data'
      'MAT_DESC'#9'50'#9'Material'
      'Qtde'#9'10'#9'Qtde')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DataSource1
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ReadOnly = True
    TabOrder = 0
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
  end
  object Memo1: TMemo
    Left = 16
    Top = 432
    Width = 449
    Height = 65
    TabOrder = 1
  end
  object Edit1: TEdit
    Left = 16
    Top = 520
    Width = 121
    Height = 22
    PasswordChar = '*'
    TabOrder = 2
  end
  object Button1: TButton
    Left = 152
    Top = 519
    Width = 161
    Height = 25
    Caption = 'Liberar material'
    TabOrder = 3
    OnClick = Button1Click
  end
  object cboLocal: TwwDBLookupCombo
    Left = 16
    Top = 32
    Width = 441
    Height = 22
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'Descricao'#9'50'#9'Descricao'#9'F')
    LookupTable = qrLocal
    LookupField = 'Local_ID'
    TabOrder = 4
    AutoDropDown = False
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
  end
  object Button2: TButton
    Left = 472
    Top = 32
    Width = 75
    Height = 25
    Caption = 'Pesquisar'
    TabOrder = 5
    OnClick = Button2Click
  end
  object ADOQuery1: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT '
      #9'C.Req_ID,'
      #9'D.Descricao,'
      #9'C.Data,'
      #9'E.MAT_DESC,'
      #9'A.Qtde,'
      #9'A.Req_Item_ID'
      'FROM Req_Item A INNER JOIN MATERIAIS B'
      'ON A.Mat_ID = B.MAT_ID inner join Req_Capa c'
      'on a.Req_ID = c.Req_ID INNER JOIN Local D'
      'ON C.LOCAL_ID = D.Local_ID INNER JOIN MATERIAIS E'
      'ON A.Mat_ID = E.MAT_ID'
      'WHERE  B.CONTROLA_GRUPO = '#39'S'#39
      'AND ISNULL(A.AUTORIZA, '#39#39') <> '#39'S'#39
      'ORDER BY D.Descricao , C.Data')
    Left = 264
    Top = 72
    object ADOQuery1Req_ID: TAutoIncField
      DisplayLabel = 'Requisição'
      DisplayWidth = 10
      FieldName = 'Req_ID'
      ReadOnly = True
    end
    object ADOQuery1Descricao: TStringField
      DisplayLabel = 'Local'
      DisplayWidth = 30
      FieldName = 'Descricao'
      Size = 50
    end
    object ADOQuery1Data: TDateTimeField
      DisplayWidth = 18
      FieldName = 'Data'
    end
    object ADOQuery1MAT_DESC: TStringField
      DisplayLabel = 'Material'
      DisplayWidth = 50
      FieldName = 'MAT_DESC'
      Size = 60
    end
    object ADOQuery1Qtde: TFloatField
      DisplayWidth = 10
      FieldName = 'Qtde'
    end
    object ADOQuery1Req_Item_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'Req_Item_ID'
      ReadOnly = True
      Visible = False
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 248
    Top = 208
  end
  object ADOQuery2: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    Left = 528
    Top = 360
  end
  object qrLocal: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM LOCAL'
      'ORDER BY DESCRICAO')
    Left = 416
    Top = 157
    object qrLocalLocal_ID: TAutoIncField
      FieldName = 'Local_ID'
      ReadOnly = True
    end
    object qrLocalDescricao: TStringField
      FieldName = 'Descricao'
      Size = 50
    end
    object qrLocalDisponivelSN: TStringField
      FieldName = 'DisponivelSN'
      FixedChar = True
      Size = 1
    end
    object qrLocalCONSUMO: TStringField
      FieldName = 'CONSUMO'
      FixedChar = True
      Size = 1
    end
    object qrLocalCONTROLA_ESTOQUE: TStringField
      FieldName = 'CONTROLA_ESTOQUE'
      FixedChar = True
      Size = 1
    end
  end
end
