object frmPesqBionexoDownload: TfrmPesqBionexoDownload
  Left = 171
  Top = 52
  Width = 990
  Height = 607
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
  object Label1: TLabel
    Left = 16
    Top = 56
    Width = 41
    Height = 14
    Caption = 'Material'
  end
  object Label4: TLabel
    Left = 552
    Top = 56
    Width = 35
    Height = 14
    Caption = 'Status'
  end
  object Label5: TLabel
    Left = 16
    Top = 544
    Width = 234
    Height = 14
    Caption = 'ITENS COM ORDEM DE COMPRAS GERADA'
    Color = clActiveCaption
    ParentColor = False
  end
  object MaskEdit1: TMaskEdit
    Left = 16
    Top = 24
    Width = 121
    Height = 22
    EditMask = '99/99/9999'
    MaxLength = 10
    TabOrder = 0
    Text = '  /  /    '
  end
  object MaskEdit2: TMaskEdit
    Left = 152
    Top = 24
    Width = 121
    Height = 22
    EditMask = '99/99/9999'
    MaxLength = 10
    TabOrder = 1
    Text = '  /  /    '
  end
  object Button1: TButton
    Left = 830
    Top = 6
    Width = 130
    Height = 25
    Caption = 'Pesquisar'
    TabOrder = 2
    OnClick = Button1Click
  end
  object wwDBGrid1: TwwDBGrid
    Left = 15
    Top = 112
    Width = 946
    Height = 425
    Selected.Strings = (
      'bioId'#9'10'#9'Pedido'
      'data'#9'10'#9'Data'
      'usuario'#9'10'#9'Usuário'
      'cod_bionexo'#9'15'#9'Cód. Bionexo'
      'MAT_DESC'#9'50'#9'Material'
      'qtde'#9'7'#9'Qtde'#9'F'
      'preco_unit'#9'10'#9'Pr. Unit'
      'preco_total'#9'10'#9'Pr. Total')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 3
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnCalcCellColors = wwDBGrid1CalcCellColors
    OnDblClick = Button3Click
  end
  object Button2: TButton
    Left = 830
    Top = 70
    Width = 130
    Height = 25
    Caption = 'Novo'
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 830
    Top = 38
    Width = 130
    Height = 25
    Caption = 'Selecionar'
    TabOrder = 5
    OnClick = Button3Click
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
    TabOrder = 6
    AutoDropDown = False
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
  end
  object ComboBox1: TComboBox
    Left = 552
    Top = 72
    Width = 145
    Height = 22
    Style = csDropDownList
    ItemHeight = 14
    TabOrder = 7
    Items.Strings = (
      ''
      'Importado'
      'Ordem de Compras')
  end
  object qrBusca: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      #9'A.bioId,'
      #9'A.data,'
      #9'A.usuario,'
      #9'B.cod_bionexo,'
      #9'C.MAT_DESC,'
      #9'B.qtde,'
      #9'B.preco_unit,'
      #9'B.preco_total,'
      '                B.STATUSITEM'
      'FROM bionexoDownload A'
      ''
      'INNER JOIN bionexoDownloadItens B'
      'ON A.bioId = B.bioId '
      ''
      'LEFT JOIN MATERIAIS C'
      'ON B.cod_bionexo = C.COD_BIONEXO'
      ''
      'LEFT JOIN pgtoBionexo D'
      'ON B.pgtoBio_id = D.pgtoBio_id'
      ''
      'LEFT JOIN CONDICAO_PAGTO E'
      'ON D.pgtoBio_id = E.pgtoBio_id')
    Left = 360
    Top = 176
    object qrBuscabioId: TAutoIncField
      DisplayLabel = 'Pedido'
      DisplayWidth = 10
      FieldName = 'bioId'
      ReadOnly = True
    end
    object qrBuscadata: TDateTimeField
      DisplayLabel = 'Data'
      DisplayWidth = 10
      FieldName = 'data'
    end
    object qrBuscausuario: TStringField
      DisplayLabel = 'Usuário'
      DisplayWidth = 10
      FieldName = 'usuario'
      Size = 255
    end
    object qrBuscacod_bionexo: TStringField
      DisplayLabel = 'Cód. Bionexo'
      DisplayWidth = 15
      FieldName = 'cod_bionexo'
      Size = 255
    end
    object qrBuscaMAT_DESC: TStringField
      DisplayLabel = 'Material'
      DisplayWidth = 50
      FieldName = 'MAT_DESC'
      Size = 100
    end
    object qrBuscaqtde: TFloatField
      DisplayLabel = 'Qtde'
      DisplayWidth = 7
      FieldName = 'qtde'
    end
    object qrBuscapreco_unit: TFloatField
      DisplayLabel = 'Pr. Unit'
      DisplayWidth = 10
      FieldName = 'preco_unit'
    end
    object qrBuscapreco_total: TFloatField
      DisplayLabel = 'Pr. Total'
      DisplayWidth = 10
      FieldName = 'preco_total'
    end
    object qrBuscaSTATUSITEM: TStringField
      FieldName = 'STATUSITEM'
      Size = 50
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
    Left = 498
    Top = 128
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
