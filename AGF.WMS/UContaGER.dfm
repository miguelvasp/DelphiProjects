object FContaGER: TFContaGER
  Left = 53
  Top = 58
  Width = 674
  Height = 459
  BorderIcons = []
  Color = clBtnShadow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 5
    Top = 9
    Width = 658
    Height = 45
    BevelInner = bvLowered
    TabOrder = 0
    object SpeedButton3: TSpeedButton
      Left = 626
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
    object Label4: TLabel
      Left = 16
      Top = 5
      Width = 227
      Height = 29
      Caption = 'Contas Gerenciais'
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
      Hint = 'Pesquisar Contas Gerenciais '
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
    object SpeedButton1: TSpeedButton
      Left = 576
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
    object DBNavigator1: TDBNavigator
      Left = 384
      Top = 9
      Width = 192
      Height = 25
      DataSource = DS_CG
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
    Top = 62
    Width = 658
    Height = 361
    BevelInner = bvLowered
    TabOrder = 1
    object Label3: TLabel
      Left = 65
      Top = 17
      Width = 39
      Height = 15
      Caption = 'Código'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 46
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
    object Label2: TLabel
      Left = 22
      Top = 70
      Width = 82
      Height = 15
      Caption = 'Fluxo de Caixa'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 22
      Top = 98
      Width = 82
      Height = 15
      Caption = 'Conta Contábil'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object DBG_RAAT: TwwDBGrid
      Left = 15
      Top = 156
      Width = 634
      Height = 191
      Hint = 'Visualização dos Registros'
      Selected.Strings = (
        'CON_CODI'#9'6'#9'Código'
        'CON_DESC'#9'41'#9'Descrição'
        'CON_FLUX'#9'13'#9'Fluxo de Caixa'
        'CON_ENSA'#9'16'#9'Movimento'
        'CON_OPER'#9'19'#9'Tipo')
      IniAttributes.FileName = 'Delphi32.ini'
      IniAttributes.SectionName = 'FContaGERDBG_RAAT'
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DS_CG
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
      TabOrder = 6
      TitleAlignment = taCenter
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clNavy
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = [fsBold]
      TitleLines = 1
      TitleButtons = False
      IndicatorColor = icBlack
      object DBG_RAATIButton: TwwIButton
        Left = 0
        Top = 0
        Width = 13
        Height = 22
        AllowAllUp = True
      end
    end
    object wwDBEdit3: TwwDBEdit
      Left = 107
      Top = 13
      Width = 84
      Height = 21
      BorderStyle = bsNone
      DataField = 'CON_CODI'
      DataSource = DS_CG
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
      Left = 107
      Top = 41
      Width = 294
      Height = 21
      BorderStyle = bsNone
      DataField = 'CON_DESC'
      DataSource = DS_CG
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
    object DBCB_CLI_PESS: TwwDBComboBox
      Left = 107
      Top = 69
      Width = 58
      Height = 21
      ShowButton = True
      Style = csDropDown
      MapList = True
      AllowClearKey = False
      AutoDropDown = True
      BorderStyle = bsNone
      ButtonStyle = cbsEllipsis
      DataField = 'CON_FLUX'
      DataSource = DS_CG
      DropDownCount = 8
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ItemHeight = 0
      Items.Strings = (
        'Sim'#9'S'
        'Não'#9'N')
      ParentFont = False
      Sorted = False
      TabOrder = 2
      UnboundDataType = wwDefault
      OnEnter = DBCB_CLI_PESSEnter
      OnExit = DBCB_CLI_PESSExit
    end
    object DBR_CON_ENSA: TDBRadioGroup
      Left = 512
      Top = 10
      Width = 126
      Height = 60
      Caption = ' Movimento '
      DataField = 'CON_ENSA'
      DataSource = DS_CG
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Items.Strings = (
        'Entrada'
        'Saída')
      ParentFont = False
      TabOrder = 4
      TabStop = True
      Values.Strings = (
        'E'
        'S')
    end
    object DBR_CON_OPER: TDBRadioGroup
      Left = 512
      Top = 69
      Width = 126
      Height = 78
      Caption = ' Tipo '
      DataField = 'CON_OPER'
      DataSource = DS_CG
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Items.Strings = (
        'Operacional'
        'Não Operacional'
        'Financeira')
      ParentFont = False
      TabOrder = 5
      TabStop = True
      Values.Strings = (
        'O'
        'N'
        'F')
    end
    object DBCB_CON_FLUX2: TwwDBComboBox
      Left = 346
      Top = 183
      Width = 35
      Height = 21
      ShowButton = True
      Style = csDropDown
      MapList = True
      AllowClearKey = False
      DataField = 'CON_FLUX'
      DataSource = DS_CG
      DropDownCount = 8
      ItemHeight = 0
      Items.Strings = (
        'Sim'#9'S'
        'Não'#9'N')
      Sorted = False
      TabOrder = 7
      UnboundDataType = wwDefault
    end
    object DBCB_CON_OPER: TwwDBComboBox
      Left = 531
      Top = 166
      Width = 70
      Height = 21
      ShowButton = True
      Style = csDropDown
      MapList = True
      AllowClearKey = False
      DataField = 'CON_OPER'
      DataSource = DS_CG
      DropDownCount = 8
      ItemHeight = 0
      Items.Strings = (
        'Operacional'#9'O'
        'Não Operacional'#9'N'
        'Financeira'#9'F')
      Sorted = False
      TabOrder = 8
      UnboundDataType = wwDefault
    end
    object DBCB_CON_ENSA: TwwDBComboBox
      Left = 431
      Top = 167
      Width = 57
      Height = 21
      ShowButton = True
      Style = csDropDown
      MapList = True
      AllowClearKey = False
      DataField = 'CON_ENSA'
      DataSource = DS_CG
      DropDownCount = 8
      ItemHeight = 0
      Items.Strings = (
        'Saída'#9'S'
        'Entrada'#9'E')
      Sorted = False
      TabOrder = 9
      UnboundDataType = wwDefault
    end
    object wwDBLookupCombo2: TwwDBLookupCombo
      Left = 107
      Top = 96
      Width = 94
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      BorderStyle = bsNone
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'CTC_CODI'#9'6'#9'CTC_CODI'#9'F')
      DataField = 'CON_CTCO'
      DataSource = DS_CG
      LookupTable = Q_CTCO
      LookupField = 'CTC_CODI'
      DropDownCount = 20
      ParentFont = False
      TabOrder = 3
      AutoDropDown = True
      ShowButton = True
      SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
      AllowClearKey = False
      OnEnter = wwDBLookupCombo2Enter
      OnExit = wwDBLookupCombo2Exit
    end
  end
  object Q_CG: TwwQuery
    AutoCalcFields = False
    CachedUpdates = True
    AfterPost = Q_CGAfterPost
    AfterDelete = Q_CGAfterDelete
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    RequestLive = True
    SQL.Strings = (
      'select * from CPACONT  order by CON_CODI')
    ControlType.Strings = (
      'CON_FLUX;CustomEdit;DBCB_CON_FLUX2'
      'CON_ENSA;CustomEdit;DBCB_CON_ENSA'
      'CON_OPER;CustomEdit;DBCB_CON_OPER')
    ValidateWithMask = True
    Left = 287
    Top = 136
    object Q_CGCON_CODI: TStringField
      DisplayLabel = 'Código'
      DisplayWidth = 6
      FieldName = 'CON_CODI'
      Origin = 'NBFDADOS.CONTA_GERENCIAL.CON_CODI'
      EditMask = '99.999'
      FixedChar = True
      Size = 6
    end
    object Q_CGCON_DESC: TStringField
      DisplayLabel = 'Descrição'
      DisplayWidth = 41
      FieldName = 'CON_DESC'
      Origin = 'NBFDADOS.CONTA_GERENCIAL.CON_DESC'
      FixedChar = True
      Size = 40
    end
    object Q_CGCON_FLUX: TStringField
      DisplayLabel = 'Fluxo de Caixa'
      DisplayWidth = 13
      FieldName = 'CON_FLUX'
      Origin = 'NBFDADOS.CONTA_GERENCIAL.CON_FLUX'
      FixedChar = True
      Size = 1
    end
    object Q_CGCON_ENSA: TStringField
      DisplayLabel = 'Movimento'
      DisplayWidth = 16
      FieldName = 'CON_ENSA'
      Origin = 'NBFDADOS.CONTA_GERENCIAL.CON_ENSA'
      FixedChar = True
      Size = 1
    end
    object Q_CGCON_OPER: TStringField
      DisplayLabel = 'Tipo'
      DisplayWidth = 19
      FieldName = 'CON_OPER'
      Origin = 'NBFDADOS.CONTA_GERENCIAL.CON_OPER'
      FixedChar = True
      Size = 1
    end
    object Q_CGCON_FLOA: TFloatField
      DisplayWidth = 10
      FieldName = 'CON_FLOA'
      Origin = 'NBFDADOS.CONTA_GERENCIAL.CON_FLOA'
      Visible = False
    end
    object Q_CGCON_CTCO: TStringField
      FieldName = 'CON_CTCO'
      Origin = 'NBFDADOS.CPACONT.CON_CTCO'
      Visible = False
      FixedChar = True
      Size = 6
    end
  end
  object UPD_CG: TUpdateSQL
    ModifySQL.Strings = (
      'update CPACONT'
      'set'
      '  CON_CODI = :CON_CODI,'
      '  CON_DESC = :CON_DESC,'
      '  CON_ENSA = :CON_ENSA,'
      '  CON_OPER = :CON_OPER,'
      '  CON_FLOA = :CON_FLOA,'
      '  CON_FLUX = :CON_FLUX,'
      '  CON_CTCO = :CON_CTCO'
      'where'
      '  CON_CODI = :OLD_CON_CODI')
    InsertSQL.Strings = (
      'insert into CPACONT'
      '  (CON_CODI, CON_DESC, CON_ENSA, CON_OPER, CON_FLOA, CON_FLUX, '
      'CON_CTCO)'
      'values'
      
        '  (:CON_CODI, :CON_DESC, :CON_ENSA, :CON_OPER, :CON_FLOA, :CON_F' +
        'LUX, '
      ':CON_CTCO)')
    DeleteSQL.Strings = (
      'delete from CPACONT'
      'where'
      '  CON_CODI = :OLD_CON_CODI')
    Left = 367
    Top = 136
  end
  object DS_CG: TwwDataSource
    DataSet = Q_CG
    Left = 423
    Top = 136
  end
  object Q_CTCO: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select * from CPACTCO order by CTC_CODI')
    ValidateWithMask = True
    Left = 317
    Top = 190
    object Q_CTCOCTC_CODI: TStringField
      DisplayWidth = 6
      FieldName = 'CTC_CODI'
      Origin = 'NBFDADOS.CPACTCO.CTC_CODI'
      FixedChar = True
      Size = 6
    end
    object Q_CTCOCTC_DESC: TStringField
      DisplayWidth = 20
      FieldName = 'CTC_DESC'
      Origin = 'NBFDADOS.CPACTCO.CTC_DESC'
      Visible = False
      FixedChar = True
    end
  end
  object wwSearchDialog1: TwwSearchDialog
    Selected.Strings = (
      'CON_CODI'#9'6'#9'Código'#9'F'
      'CON_DESC'#9'41'#9'Descrição'#9'F')
    GridTitleAlignment = taCenter
    GridColor = clAqua
    GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
    SearchTable = Q_CG2
    Caption = 'Pesquisa de Contas Gerenciais '
    MaxWidth = 0
    MaxHeight = 350
    CharCase = ecUpperCase
    Left = 448
    Top = 248
  end
  object Q_CG2: TwwQuery
    AutoCalcFields = False
    CachedUpdates = True
    AfterPost = Q_CGAfterPost
    AfterDelete = Q_CGAfterDelete
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    RequestLive = True
    SQL.Strings = (
      'select * from CPACONT  order by CON_CODI')
    ControlType.Strings = (
      'CON_FLUX;CustomEdit;DBCB_CON_FLUX2'
      'CON_ENSA;CustomEdit;DBCB_CON_ENSA'
      'CON_OPER;CustomEdit;DBCB_CON_OPER')
    ValidateWithMask = True
    Left = 551
    Top = 248
    object Q_CG2CON_CODI: TStringField
      DisplayLabel = 'Código'
      DisplayWidth = 6
      FieldName = 'CON_CODI'
      Origin = 'NBFDADOS.CPACONT.CON_CODI'
      FixedChar = True
      Size = 6
    end
    object Q_CG2CON_DESC: TStringField
      DisplayLabel = 'Descrição'
      DisplayWidth = 41
      FieldName = 'CON_DESC'
      Origin = 'NBFDADOS.CPACONT.CON_DESC'
      FixedChar = True
      Size = 40
    end
    object Q_CG2CON_ENSA: TStringField
      FieldName = 'CON_ENSA'
      Origin = 'NBFDADOS.CPACONT.CON_ENSA'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_CG2CON_OPER: TStringField
      FieldName = 'CON_OPER'
      Origin = 'NBFDADOS.CPACONT.CON_OPER'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_CG2CON_FLOA: TFloatField
      FieldName = 'CON_FLOA'
      Origin = 'NBFDADOS.CPACONT.CON_FLOA'
      Visible = False
    end
    object Q_CG2CON_FLUX: TStringField
      FieldName = 'CON_FLUX'
      Origin = 'NBFDADOS.CPACONT.CON_FLUX'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_CG2CON_CTCO: TStringField
      FieldName = 'CON_CTCO'
      Origin = 'NBFDADOS.CPACONT.CON_CTCO'
      Visible = False
      FixedChar = True
      Size = 6
    end
  end
end
