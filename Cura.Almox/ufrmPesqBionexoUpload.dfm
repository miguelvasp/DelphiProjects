object frmPesqBionexoUpload: TfrmPesqBionexoUpload
  Left = 212
  Top = 98
  Width = 954
  Height = 600
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
  object Label1: TLabel
    Left = 16
    Top = 56
    Width = 41
    Height = 14
    Caption = 'Material'
  end
  object Label2: TLabel
    Left = 16
    Top = 8
    Width = 15
    Height = 14
    Caption = 'De'
  end
  object Label3: TLabel
    Left = 152
    Top = 8
    Width = 20
    Height = 14
    Caption = 'Até'
  end
  object wwDBLookupCombo1: TwwDBLookupCombo
    Left = 16
    Top = 72
    Width = 521
    Height = 22
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'MAT_DESC'#9'60'#9'MAT_DESC'#9#9)
    LookupTable = Q_MAT
    LookupField = 'MAT_ID'
    TabOrder = 5
    AutoDropDown = False
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
  end
  object MaskEdit1: TMaskEdit
    Left = 16
    Top = 24
    Width = 121
    Height = 22
    EditMask = '99/99/9999'
    MaxLength = 10
    TabOrder = 1
    Text = '  /  /    '
  end
  object MaskEdit2: TMaskEdit
    Left = 152
    Top = 24
    Width = 121
    Height = 22
    EditMask = '99/99/9999'
    MaxLength = 10
    TabOrder = 2
    Text = '  /  /    '
  end
  object Button1: TButton
    Left = 807
    Top = 6
    Width = 130
    Height = 25
    Caption = 'Pesquisar'
    TabOrder = 0
    OnClick = Button1Click
  end
  object wwDBGrid1: TwwDBGrid
    Left = 16
    Top = 112
    Width = 913
    Height = 441
    Selected.Strings = (
      'BIOID'#9'10'#9'Pedido'
      'DATA'#9'10'#9'Data'
      'codBionexo'#9'20'#9'Cód. Bionexo '#9'F'
      'MAT_DESC'#9'70'#9'Material'
      'QtdeTotal'#9'10'#9'Qtde Total')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 6
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnDblClick = Button3Click
  end
  object Button2: TButton
    Left = 808
    Top = 70
    Width = 130
    Height = 25
    Caption = 'Novo'
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 808
    Top = 38
    Width = 130
    Height = 25
    Caption = 'Selecionar'
    TabOrder = 3
    OnClick = Button3Click
  end
  object qrBusca: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      #9'A.BIOID,'
      #9'A.DATA, '
      #9'B.codBionexo,'
      #9'B.MAT_DESC,'
      #9'B.QtdeTotal'
      'FROM bionexoUpload a inner join bionexoUploadItens b'
      'on a.bioId = b.BioId')
    Left = 360
    Top = 176
    object qrBuscaBIOID: TAutoIncField
      DisplayLabel = 'Pedido'
      DisplayWidth = 10
      FieldName = 'BIOID'
      ReadOnly = True
    end
    object qrBuscaDATA: TDateTimeField
      DisplayLabel = 'Data'
      DisplayWidth = 10
      FieldName = 'DATA'
      DisplayFormat = 'DD/MM/YYYY'
    end
    object qrBuscacodBionexo: TStringField
      DisplayLabel = 'Cód. Bionexo '
      DisplayWidth = 20
      FieldName = 'codBionexo'
      Size = 255
    end
    object qrBuscaMAT_DESC: TStringField
      DisplayLabel = 'Material'
      DisplayWidth = 70
      FieldName = 'MAT_DESC'
      Size = 255
    end
    object qrBuscaQtdeTotal: TFloatField
      DisplayLabel = 'Qtde Total'
      DisplayWidth = 10
      FieldName = 'QtdeTotal'
    end
  end
  object DataSource1: TDataSource
    DataSet = qrBusca
    Left = 136
    Top = 272
  end
  object Q_MAT: TwwQuery
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'SELECT * FROM MATERIAIS '
      'WHERE GENERICO NOT IN ('#39'S'#39')'
      'AND MAT_ATIVO = '#39'S'#39
      'AND (COD_BIONEXO IS NOT NULL OR  COD_BIONEXO <> '#39#39')'
      'ORDER BY MAT_DESC')
    ValidateWithMask = True
    Left = 738
    Top = 16
    object Q_MATMAT_DESC: TStringField
      DisplayWidth = 60
      FieldName = 'MAT_DESC'
      Origin = 'CURA.MATERIAIS.MAT_DESC'
      FixedChar = True
      Size = 60
    end
    object Q_MATMAT_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'MAT_ID'
      Origin = 'CURA.MATERIAIS.MAT_ID'
      Visible = False
    end
    object Q_MATCOD_BIONEXO: TStringField
      DisplayWidth = 255
      FieldName = 'COD_BIONEXO'
      Visible = False
      FixedChar = True
      Size = 255
    end
  end
end
