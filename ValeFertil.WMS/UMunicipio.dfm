object FMunicipio: TFMunicipio
  Left = 304
  Top = 86
  Width = 711
  Height = 557
  BorderIcons = []
  Color = clMenu
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 185
    Top = 154
    Width = 39
    Height = 15
    Caption = 'Região'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object Panel3: TPanel
    Left = 4
    Top = 2
    Width = 685
    Height = 45
    BevelInner = bvLowered
    TabOrder = 0
    object SpeedButton1: TSpeedButton
      Left = 625
      Top = 9
      Width = 25
      Height = 25
      Hint = 'Visualizar Relatório'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000010000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        0003377777777777777308888888888888807F33333333333337088888888888
        88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
        8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
        8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton3: TSpeedButton
      Left = 651
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
      Left = 16
      Top = 5
      Width = 141
      Height = 29
      Caption = 'Municípios'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -24
      Font.Name = 'Georgia'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object SpeedButton4: TSpeedButton
      Left = 601
      Top = 9
      Width = 25
      Height = 25
      Hint = 'Pesquisar Municípios'
      Glyph.Data = {
        EE000000424DEE000000000000007600000028000000100000000F0000000100
        0400000000007800000000000000000000001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        888800000888880000080F000888880F00080F000888880F0008000000080000
        000800F000000F00000800F000800F00000800F000800F000008800000000000
        0088880F00080F000888880000080000088888800088800088888880F08880F0
        888888800088800088888888888888888888}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton4Click
    end
    object DBNavigator1: TDBNavigator
      Left = 408
      Top = 9
      Width = 192
      Height = 25
      DataSource = DS_MUNI
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbPost, nbCancel]
      Hints.Strings = (
        'Posiciona no primeiro registro | Posiciona no primeiro registro'
        'Retorna ao registro anterior | Retorna ao registro anterior '
        'Avança para o próximo registro | Avança para o próximo registro '
        'Posiciona no último registro | Posiciona no último registro '
        'Incluir  '
        'Excluir'
        ''
        'Confirmar'
        'Cancelar')
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = DBNavigator1Click
    end
  end
  object Panel1: TPanel
    Left = 5
    Top = 52
    Width = 684
    Height = 461
    TabOrder = 1
    object Label3: TLabel
      Left = 161
      Top = 17
      Width = 78
      Height = 15
      Caption = 'Código DIPAM'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 182
      Top = 45
      Width = 58
      Height = 15
      Caption = 'Descrição'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 201
      Top = 98
      Width = 39
      Height = 15
      Caption = 'Região'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 225
      Top = 73
      Width = 14
      Height = 15
      Caption = 'UF'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 185
      Top = 138
      Width = 54
      Height = 15
      Caption = 'Municipio'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object wwDBEdit3: TwwDBEdit
      Left = 243
      Top = 13
      Width = 84
      Height = 21
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'DIPAM'
      DataSource = DS_MUNI
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnEnter = wwDBEdit3Enter
      OnExit = wwDBEdit3Exit
    end
    object wwDBEdit1: TwwDBEdit
      Left = 243
      Top = 41
      Width = 281
      Height = 21
      BorderStyle = bsNone
      DataField = 'MUN_NOME'
      DataSource = DS_MUNI
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnEnter = wwDBEdit1Enter
      OnExit = wwDBEdit1Exit
    end
    object wwDBLookupCombo2: TwwDBLookupCombo
      Left = 243
      Top = 96
      Width = 281
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      BorderStyle = bsNone
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'REG_NOME'#9'40'#9'REG_NOME'#9'F')
      DataField = 'REG_ID'
      DataSource = DS_MUNI
      LookupTable = Q_REG
      LookupField = 'REG_ID'
      DropDownCount = 20
      ParentFont = False
      TabOrder = 3
      AutoDropDown = True
      ShowButton = True
      SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
      PreciseEditRegion = False
      AllowClearKey = False
      OnEnter = wwDBLookupCombo2Enter
      OnExit = wwDBLookupCombo2Exit
    end
    object wwDBLookupCombo1: TwwDBLookupCombo
      Left = 243
      Top = 69
      Width = 45
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      CharCase = ecUpperCase
      BorderStyle = bsNone
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'UF_SIGLA'#9'2'#9'UF_SIGLA'#9'F')
      DataField = 'UF_SIGLA'
      DataSource = DS_MUNI
      LookupTable = Q_UF
      LookupField = 'UF_SIGLA'
      DropDownCount = 20
      ParentFont = False
      TabOrder = 2
      AutoDropDown = True
      ShowButton = True
      SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
      PreciseEditRegion = False
      AllowClearKey = False
      OnEnter = wwDBLookupCombo1Enter
      OnExit = wwDBLookupCombo1Exit
    end
    object DBG_RAAT: TwwDBGrid
      Left = 243
      Top = 212
      Width = 229
      Height = 228
      Hint = 'Visualização dos Registros'
      Selected.Strings = (
        'MUN_NOME'#9'30'#9'Município')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DS_MUNI
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      KeyOptions = []
      Options = [dgAlwaysShowEditor, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgWordWrap]
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 5
      TitleAlignment = taCenter
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clNavy
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = [fsBold]
      TitleLines = 1
      TitleButtons = False
      object DBG_RAATIButton: TwwIButton
        Left = 0
        Top = 0
        Width = 13
        Height = 22
        AllowAllUp = True
      end
    end
    object wwDBLookupCombo3: TwwDBLookupCombo
      Left = 243
      Top = 136
      Width = 406
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      BorderStyle = bsNone
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'MUNICIPIO'#9'50'#9'MUNICIPIO'#9'F'
        'UF'#9'2'#9'UF'#9'F')
      DataField = 'IBGE_ID'
      DataSource = DS_MUNI
      LookupTable = qrIbge
      LookupField = 'ID'
      DropDownCount = 20
      ParentFont = False
      TabOrder = 4
      AutoDropDown = True
      ShowButton = True
      SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
      PreciseEditRegion = False
      AllowClearKey = False
      OnEnter = wwDBLookupCombo2Enter
      OnExit = wwDBLookupCombo2Exit
    end
    object Button1: TButton
      Left = 8
      Top = 136
      Width = 161
      Height = 25
      Caption = 'Abrir Table de Municipios IBGE'
      TabOrder = 6
      OnClick = Button1Click
    end
  end
  object Q_MUNI: TwwQuery
    CachedUpdates = True
    AfterPost = Q_MUNIAfterPost
    AfterDelete = Q_MUNIAfterDelete
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    RequestLive = True
    SQL.Strings = (
      'Select * from MUNICIPIO order by MUN_NOME')
    UpdateObject = UPD_MUNI
    ValidateWithMask = True
    Left = 488
    Top = 230
    object Q_MUNIMUN_NOME: TStringField
      DisplayLabel = 'Município'
      DisplayWidth = 30
      FieldName = 'MUN_NOME'
      Origin = 'NBFDADOS.MUNICIPIO.MUN_NOME'
      FixedChar = True
      Size = 40
    end
    object Q_MUNIDIPAM: TStringField
      Alignment = taCenter
      DisplayLabel = 'Código DIPAM'
      DisplayWidth = 10
      FieldName = 'DIPAM'
      Origin = 'NBFDADOS.MUNICIPIO.DIPAM'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object Q_MUNIUF_NOME: TStringField
      DisplayLabel = 'Estado'
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'UF_NOME'
      LookupDataSet = Q_UF
      LookupKeyFields = 'UF_SIGLA'
      LookupResultField = 'UF_NOME'
      KeyFields = 'UF_SIGLA'
      Visible = False
      Size = 40
      Lookup = True
    end
    object Q_MUNIREG_NOME: TStringField
      DisplayLabel = 'Região'
      DisplayWidth = 25
      FieldKind = fkLookup
      FieldName = 'REG_NOME'
      LookupDataSet = Q_REG
      LookupKeyFields = 'REG_ID'
      LookupResultField = 'REG_NOME'
      KeyFields = 'REG_ID'
      Visible = False
      Size = 40
      Lookup = True
    end
    object Q_MUNIMUN_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'MUN_ID'
      Origin = 'NBFDADOS.MUNICIPIO.MUN_ID'
      Visible = False
    end
    object Q_MUNIUF_SIGLA: TStringField
      DisplayLabel = 'Estado'
      DisplayWidth = 2
      FieldName = 'UF_SIGLA'
      Origin = 'NBFDADOS.MUNICIPIO.UF_SIGLA'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object Q_MUNIREG_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'REG_ID'
      Origin = 'NBFDADOS.MUNICIPIO.REG_ID'
      Visible = False
    end
    object Q_MUNIIBGE_ID: TIntegerField
      FieldName = 'IBGE_ID'
      Origin = 'NBFDADOS.MUNICIPIO.IBGE_ID'
    end
  end
  object DS_MUNI: TwwDataSource
    DataSet = Q_MUNI
    Left = 488
    Top = 278
  end
  object UPD_MUNI: TUpdateSQL
    ModifySQL.Strings = (
      'update MUNICIPIO'
      'set'
      '  DIPAM = :DIPAM,'
      '  MUN_NOME = :MUN_NOME,'
      '  UF_SIGLA = :UF_SIGLA,'
      '  IBGE_ID = :IBGE_ID,'
      '  REG_ID = :REG_ID'
      'where'
      '  MUN_ID = :OLD_MUN_ID')
    InsertSQL.Strings = (
      'insert into MUNICIPIO'
      '  (DIPAM, MUN_NOME, UF_SIGLA, REG_ID, IBGE_ID)'
      'values'
      '  (:DIPAM, :MUN_NOME, :UF_SIGLA, :REG_ID, :IBGE_ID)')
    DeleteSQL.Strings = (
      'delete from MUNICIPIO'
      'where'
      '  MUN_ID = :OLD_MUN_ID')
    Left = 629
    Top = 236
  end
  object Q_UF: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select *  from UF order by UF_SIGLa'
      ''
      ''
      '')
    ValidateWithMask = True
    Left = 569
    Top = 144
    object Q_UFUF_SIGLA: TStringField
      DisplayWidth = 2
      FieldName = 'UF_SIGLA'
      Origin = 'NBFDADOS.UF.UF_SIGLA'
      FixedChar = True
      Size = 2
    end
    object Q_UFUF_NOME: TStringField
      DisplayWidth = 30
      FieldName = 'UF_NOME'
      Origin = 'NBFDADOS.UF.UF_NOME'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object Q_UFUF_ALIQUOTA: TFloatField
      DisplayWidth = 10
      FieldName = 'UF_ALIQUOTA'
      Origin = 'NBFDADOS.UF.UF_ALIQUOTA'
      Visible = False
    end
  end
  object Q_REG: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select * from regiao order by reg_NOME')
    ValidateWithMask = True
    Left = 145
    Top = 264
    object Q_REGREG_NOME: TStringField
      DisplayWidth = 40
      FieldName = 'REG_NOME'
      Origin = 'NBFDADOS.regiao.REG_NOME'
      FixedChar = True
      Size = 40
    end
    object Q_REGREG_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'REG_ID'
      Origin = 'NBFDADOS.regiao.REG_ID'
      Visible = False
    end
  end
  object wwSearchDialog1: TwwSearchDialog
    Selected.Strings = (
      'MUN_NOME'#9'30'#9'Município'#9'F')
    GridTitleAlignment = taCenter
    GridColor = clAqua
    GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
    SearchTable = Q_MUNI
    Caption = 'Pesquisa de Clientes NBF'
    MaxWidth = 0
    MaxHeight = 350
    CharCase = ecUpperCase
    Left = 304
    Top = 264
  end
  object qrIbge: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'SELECT ID, MUNICIPIO, UF FROM TB_IBGE'
      'ORDER BY MUNICIPIO, UF'
      ''
      ''
      '')
    ValidateWithMask = True
    Left = 569
    Top = 216
    object qrIbgeMUNICIPIO: TStringField
      DisplayWidth = 50
      FieldName = 'MUNICIPIO'
      Origin = 'NBFDADOS.TB_IBGE.MUNICIPIO'
      FixedChar = True
      Size = 250
    end
    object qrIbgeUF: TStringField
      DisplayWidth = 2
      FieldName = 'UF'
      Origin = 'NBFDADOS.TB_IBGE.UF'
      FixedChar = True
      Size = 2
    end
    object qrIbgeID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'ID'
      Origin = 'NBFDADOS.TB_IBGE.ID'
      Visible = False
    end
  end
end
