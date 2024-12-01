object FEstqConsulta: TFEstqConsulta
  Left = -4
  Top = -4
  Width = 808
  Height = 580
  Caption = 'Sistema de Almoxarifado'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 5
    Top = 36
    Width = 789
    Height = 124
    Caption = 'Filtros'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label3: TLabel
      Left = 322
      Top = 13
      Width = 44
      Height = 14
      Caption = 'Material'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 18
      Top = 14
      Width = 29
      Height = 14
      Caption = 'Local'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SBT_PESQ: TSpeedButton
      Left = 679
      Top = 18
      Width = 89
      Height = 33
      Hint = 'Executa as pesquisas de acordo com a Ordenação e os Filtros.'
      Caption = '&Pesquisa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000010000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333FF33333333333330003FF3FFFFF3333777003000003333
        300077F777773F333777E00BFBFB033333337773333F7F33333FE0BFBF000333
        330077F3337773F33377E0FBFBFBF033330077F3333FF7FFF377E0BFBF000000
        333377F3337777773F3FE0FBFBFBFBFB039977F33FFFFFFF7377E0BF00000000
        339977FF777777773377000BFB03333333337773FF733333333F333000333333
        3300333777333333337733333333333333003333333333333377333333333333
        333333333333333333FF33333333333330003333333333333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SBT_PESQClick
    end
    object Label1: TLabel
      Left = 20
      Top = 62
      Width = 33
      Height = 14
      Caption = 'Marca'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 324
      Top = 62
      Width = 47
      Height = 14
      Caption = 'Validade'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label15: TLabel
      Left = 396
      Top = 85
      Width = 17
      Height = 14
      Caption = 'até'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object wwDBLookupCombo1: TwwDBLookupCombo
      Left = 18
      Top = 27
      Width = 263
      Height = 22
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'LOC_DESC'#9'20'#9'LOC_DESC'#9'F')
      LookupTable = Q_LOC
      LookupField = 'LOC_ID'
      ParentFont = False
      TabOrder = 0
      AutoDropDown = True
      ShowButton = True
      AllowClearKey = True
      OnEnter = wwDBLookupCombo1Enter
      OnExit = wwDBLookupCombo1Exit
    end
    object wwDBLookupCombo2: TwwDBLookupCombo
      Left = 321
      Top = 27
      Width = 268
      Height = 22
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'MAT_DESC'#9'60'#9'MAT_DESC'#9'F')
      LookupTable = Q_MAT
      LookupField = 'MAT_ID'
      ParentFont = False
      TabOrder = 1
      AutoDropDown = True
      ShowButton = True
      AllowClearKey = True
      OnEnter = wwDBLookupCombo2Enter
      OnExit = wwDBLookupCombo2Exit
    end
    object wwDBLookupCombo3: TwwDBLookupCombo
      Left = 18
      Top = 76
      Width = 262
      Height = 22
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'MARCA_DESC'#9'20'#9'MARCA_DESC'#9'F')
      LookupTable = Q_MARC
      LookupField = 'MARCA_ID'
      ParentFont = False
      TabOrder = 2
      AutoDropDown = True
      ShowButton = True
      AllowClearKey = True
      OnEnter = wwDBLookupCombo2Enter
      OnExit = wwDBLookupCombo2Exit
    end
    object DBE_AJUS_VAL1: TMaskEdit
      Left = 324
      Top = 77
      Width = 64
      Height = 22
      EditMask = '99/99/9999'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 3
      Text = '  /  /    '
    end
    object DBE_AJUS_VAL2: TMaskEdit
      Left = 419
      Top = 77
      Width = 64
      Height = 22
      EditMask = '99/99/9999'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 4
      Text = '  /  /    '
    end
  end
  object wwDBGrid1: TwwDBGrid
    Left = 6
    Top = 162
    Width = 783
    Height = 367
    Selected.Strings = (
      'LOC_DESC'#9'16'#9'Local'
      'MAT_DESC'#9'28'#9'Material'
      'marca_desc'#9'20'#9'Marca'
      'LOTE'#9'11'#9'Lote'
      'VALIDADE'#9'18'#9'Validade'
      'Quantidade'#9'8'#9'Quantidade')
    IniAttributes.Delimiter = ';;'
    TitleColor = clSilver
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DS_ESTOQUE
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    TabOrder = 1
    TitleAlignment = taCenter
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -11
    TitleFont.Name = 'Arial'
    TitleFont.Style = [fsBold]
    TitleLines = 1
    TitleButtons = False
    IndicatorColor = icBlack
    object wwDBGrid1IButton: TwwIButton
      Left = 0
      Top = 0
      Width = 13
      Height = 22
      AllowAllUp = True
    end
  end
  object Panel1: TPanel
    Left = 1
    Top = 0
    Width = 794
    Height = 37
    BevelInner = bvLowered
    TabOrder = 2
    object Label5: TLabel
      Left = 9
      Top = 8
      Width = 177
      Height = 22
      Caption = 'Consulta de Estoque'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object SBT_SAIR: TSpeedButton
      Left = 680
      Top = 5
      Width = 90
      Height = 27
      Hint = 'Retorna a tela anterior'
      Caption = '&Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Glyph.Data = {
        76020000424D7602000000000000760000002800000040000000100000000100
        0400000000000002000000000000000000001000000010000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
        03333388888888888F3333000000000003333388888888888F33330111111111
        0333338F333333338F333301BBBBBBBB033333883F3333338F33330111111111
        0333338F333333338F3333011BBBBBBB0333338F83F333338F33330111111111
        0333338F333333338F33330111BBBBBB0333338F383F33338F33330111111111
        0333338F333333338F333301110BBBBB0333338F338F33338F33330111111111
        0333338F333333338F333301110BBBBB0333338F338F33338F33330111111111
        0333338F3333333F8F333301110BBBBB0333338F338F33338F333301111111B1
        0333338F333333838F333301110BBBBB0333338F338F33338F33330111111111
        0333338F333333338F333301110BBBBB0333338F338F33338F33330111111111
        0333338F33FFFFF38F333301110BBBBB0333338F338FF3338F3333011EEEEE11
        0333338F388888F38F33330111B0BBBB0333338F338833338F3333011EEEEE11
        0333338F38FFF8F38F333301110BBBBB0333338F338F33338F3333011EEEEE11
        0333338F388888338F333301110BBBBB0333338F3F8F33338F33330111111111
        0333338F333333338F333301E10BBBBB0333338F8F8F33338F33330111111111
        0333338FFFFFFFFF8F333301EE0BBBBB0333338F888FFFFF8F33330000000000
        0333338888888888833333000000000003333388888888888333}
      NumGlyphs = 4
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SBT_SAIRClick
    end
  end
  object Q_ESTOQUE: TwwQuery
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'select A.MAT_ID,A.LOTE,B.MAT_DESC,C.LOC_DESC,A.Quantidade,'
      'C.LOC_ID,A.MARCA_ID,A.VALIDADE'
      'from '
      'MATERIAIS B,LOCAIS C , Estoque A '
      'where A.MAT_ID = B.MAT_ID'
      'and   A.LOC_ID = C.LOC_ID'
      'order by A.MAT_ID')
    ValidateWithMask = True
    Left = 240
    Top = 168
    object Q_ESTOQUELOC_DESC: TStringField
      DisplayLabel = 'Local'
      DisplayWidth = 16
      FieldName = 'LOC_DESC'
      FixedChar = True
    end
    object Q_ESTOQUEMAT_DESC: TStringField
      DisplayLabel = 'Material'
      DisplayWidth = 28
      FieldName = 'MAT_DESC'
      FixedChar = True
      Size = 60
    end
    object Q_ESTOQUEmarca_desc: TStringField
      DisplayLabel = 'Marca'
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = 'marca_desc'
      LookupDataSet = Q_MARC
      LookupKeyFields = 'MARCA_ID'
      LookupResultField = 'MARCA_DESC'
      KeyFields = 'MARCA_ID'
      Lookup = True
    end
    object Q_ESTOQUELOTE: TStringField
      DisplayLabel = 'Lote'
      DisplayWidth = 11
      FieldName = 'LOTE'
      FixedChar = True
      Size = 15
    end
    object Q_ESTOQUEVALIDADE: TDateTimeField
      DisplayLabel = 'Validade'
      DisplayWidth = 18
      FieldName = 'VALIDADE'
    end
    object Q_ESTOQUEQuantidade: TIntegerField
      DisplayWidth = 8
      FieldName = 'Quantidade'
    end
    object Q_ESTOQUEMAT_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'MAT_ID'
      Visible = False
    end
    object Q_ESTOQUELOC_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'LOC_ID'
      Visible = False
    end
    object Q_ESTOQUEMARCA_ID: TIntegerField
      FieldName = 'MARCA_ID'
      Visible = False
    end
  end
  object DS_ESTOQUE: TwwDataSource
    DataSet = Q_ESTOQUE
    Left = 240
    Top = 224
  end
  object Q_AUX: TwwQuery
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    ValidateWithMask = True
    Left = 400
    Top = 200
  end
  object Q_MAT: TwwQuery
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'select MAT_ID, MAT_DESC from MATERIAIS '
      'order by MAT_DESC')
    ValidateWithMask = True
    Left = 528
    Top = 208
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
  end
  object Q_LOC: TwwQuery
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'select * from LOCAIS'
      'order by LOC_DESC')
    ValidateWithMask = True
    Left = 544
    Top = 272
    object Q_LOCLOC_DESC: TStringField
      DisplayWidth = 20
      FieldName = 'LOC_DESC'
      Origin = 'CURA.LOCAIS.LOC_DESC'
      FixedChar = True
    end
    object Q_LOCLOC_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'LOC_ID'
      Origin = 'CURA.LOCAIS.LOC_ID'
      Visible = False
    end
  end
  object Q_LOTE: TwwQuery
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'select LOTE'
      'from '
      'Estoque ')
    ValidateWithMask = True
    Left = 392
    Top = 136
    object Q_LOTELOTE: TStringField
      FieldName = 'LOTE'
      Origin = 'CURA.Estoque.LOTE'
      FixedChar = True
      Size = 15
    end
  end
  object Q_MARC: TwwQuery
    Active = True
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'select * from MARCAS '
      'order by MARCA_DESC')
    ValidateWithMask = True
    Left = 502
    Top = 248
    object Q_MARCMARCA_DESC: TStringField
      DisplayWidth = 20
      FieldName = 'MARCA_DESC'
      Origin = 'CURA.MARCAS.MARCA_DESC'
      FixedChar = True
    end
    object Q_MARCMARCA_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'MARCA_ID'
      Origin = 'CURA.MARCAS.MARCA_ID'
      Visible = False
    end
  end
end
