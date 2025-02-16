object FServico: TFServico
  Left = 99
  Top = 79
  Width = 622
  Height = 414
  BorderIcons = []
  Color = clGray
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 6
    Top = 6
    Width = 602
    Height = 45
    BevelInner = bvLowered
    TabOrder = 0
    object SpeedButton1: TSpeedButton
      Left = 538
      Top = 9
      Width = 25
      Height = 25
      Hint = 'Visualizar Relat�rio'
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
      Left = 564
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
      Width = 106
      Height = 29
      Caption = 'Servi�os'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -24
      Font.Name = 'Georgia'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object DBNavigator1: TDBNavigator
      Left = 346
      Top = 9
      Width = 192
      Height = 25
      DataSource = DS_SERV
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbPost, nbCancel]
      Hints.Strings = (
        'Posiciona no primeiro registro | Posiciona no primeiro registro'
        'Retorna ao registro anterior | Retorna ao registro anterior '
        'Avan�a para o pr�ximo registro | Avan�a para o pr�ximo registro '
        'Posiciona no �ltimo registro | Posiciona no �ltimo registro '
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
    Left = 6
    Top = 55
    Width = 602
    Height = 327
    BevelInner = bvLowered
    TabOrder = 1
    object Label3: TLabel
      Left = 101
      Top = 10
      Width = 33
      Height = 15
      Caption = 'Nome'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 33
      Top = 35
      Width = 101
      Height = 15
      Caption = 'Tipos de Servi�os'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 14
      Top = 62
      Width = 120
      Height = 15
      Caption = 'Composi��o de Frete'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object wwDBEdit3: TwwDBEdit
      Left = 137
      Top = 9
      Width = 310
      Height = 21
      BorderStyle = bsNone
      DataField = 'SER_NOME'
      DataSource = DS_SERV
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
    object DBG_RAAT: TwwDBGrid
      Left = 73
      Top = 88
      Width = 479
      Height = 228
      Hint = 'Visualiza��o dos Registros'
      Selected.Strings = (
        'TSER_NOME'#9'35'#9'Tipo de Servi�o'
        'SER_NOME'#9'37'#9'Servi�o'#9'F')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DS_SERV2
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
      TabOrder = 3
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
    object wwDBLookupCombo1: TwwDBLookupCombo
      Left = 137
      Top = 35
      Width = 312
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      BorderStyle = bsNone
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'TSER_NOME'#9'40'#9'Nome'#9'F')
      DataField = 'TSER_ID'
      DataSource = DS_SERV
      LookupTable = Q_TSERV
      LookupField = 'TSER_ID'
      ParentFont = False
      TabOrder = 1
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnEnter = wwDBLookupCombo1Enter
      OnExit = wwDBLookupCombo1Exit
    end
    object wwDBComboBox1: TwwDBComboBox
      Left = 137
      Top = 61
      Width = 116
      Height = 21
      ShowButton = True
      Style = csDropDown
      MapList = True
      AllowClearKey = False
      AutoDropDown = True
      BorderStyle = bsNone
      ButtonStyle = cbsEllipsis
      DataField = 'SER_COMPOSICAO'
      DataSource = DS_SERV
      DropDownCount = 8
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ItemHeight = 0
      Items.Strings = (
        'Frete'#9'F'
        'SEC/CAT'#9'S'
        'Despacho'#9'D'
        'Ped�gio'#9'P'
        'Outros'#9'O'
        'N�o se Aplica'#9'N'
        'Seguro'#9'G'
        'Taxa Entrega'#9'T')
      ParentFont = False
      Sorted = False
      TabOrder = 2
      UnboundDataType = wwDefault
      OnEnter = wwDBComboBox1Enter
      OnExit = wwDBComboBox1Exit
    end
  end
  object DS_SERV: TwwDataSource
    DataSet = Q_SERV
    Left = 495
    Top = 200
  end
  object UPD_SERV: TUpdateSQL
    ModifySQL.Strings = (
      'update SERVICO'
      'set'
      '  TSER_ID = :TSER_ID,'
      '  SER_NOME = :SER_NOME,'
      '  SER_COMPOSICAO = :SER_COMPOSICAO'
      'where'
      '  SER_ID = :OLD_SER_ID')
    InsertSQL.Strings = (
      'insert into SERVICO'
      '  (TSER_ID, SER_NOME, SER_COMPOSICAO)'
      'values'
      '  (:TSER_ID, :SER_NOME, :SER_COMPOSICAO)')
    DeleteSQL.Strings = (
      'delete from SERVICO'
      'where'
      '  SER_ID = :OLD_SER_ID')
    Left = 495
    Top = 144
  end
  object Q_SERV: TwwQuery
    AutoCalcFields = False
    CachedUpdates = True
    BeforePost = Q_SERVBeforePost
    AfterPost = Q_SERVAfterPost
    AfterDelete = Q_SERVAfterDelete
    OnNewRecord = Q_SERVNewRecord
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    RequestLive = True
    SQL.Strings = (
      'select * from SERVICO  order by SER_NOME')
    UpdateObject = UPD_SERV
    ControlType.Strings = (
      'TSER_ID;CustomEdit;wwDBLookupCombo2')
    ValidateWithMask = True
    Left = 496
    Top = 88
    object Q_SERVSER_NOME: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 33
      FieldName = 'SER_NOME'
      Origin = 'NBFDADOS.SERVICO.SER_NOME'
      FixedChar = True
      Size = 40
    end
    object Q_SERVTSER_DESC: TStringField
      DisplayLabel = 'Tipos de Servi�os'
      DisplayWidth = 32
      FieldKind = fkLookup
      FieldName = 'TSER_DESC'
      LookupDataSet = Q_TSERV
      LookupKeyFields = 'TSER_ID'
      LookupResultField = 'TSER_NOME'
      KeyFields = 'TSER_ID'
      Size = 40
      Lookup = True
    end
    object Q_SERVTSER_ID: TIntegerField
      DisplayLabel = 'Tipo de Servi�o'
      DisplayWidth = 10
      FieldName = 'TSER_ID'
      Origin = 'NBFDADOS.SERVICO.TSER_ID'
      Visible = False
    end
    object Q_SERVSER_ID: TAutoIncField
      FieldName = 'SER_ID'
      Origin = 'NBFDADOS.SERVICO.SER_ID'
      Visible = False
    end
    object Q_SERVSER_COMPOSICAO: TStringField
      FieldName = 'SER_COMPOSICAO'
      Origin = 'NBFDADOS.SERVICO.SER_COMPOSICAO'
      FixedChar = True
      Size = 1
    end
  end
  object Q_TSERV: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'select * from TPSERVICO  order by TSER_NOME')
    ValidateWithMask = True
    Left = 497
    Top = 280
    object Q_TSERVTSER_NOME: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 40
      FieldName = 'TSER_NOME'
      Origin = 'NBFDADOS.TPSERVICO.TSER_NOME'
      FixedChar = True
      Size = 40
    end
    object Q_TSERVTSER_ID: TAutoIncField
      FieldName = 'TSER_ID'
      Origin = 'NBFDADOS.TPSERVICO.TSER_ID'
      Visible = False
    end
    object Q_TSERVTSER_CONCEITO: TMemoField
      FieldName = 'TSER_CONCEITO'
      Origin = 'NBFDADOS.TPSERVICO.TSER_CONCEITO'
      Visible = False
      BlobType = ftMemo
    end
  end
  object Q_SERV2: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      
        'Select A.TSER_ID,A.SER_NOME,B.TSER_NOME from SERVICO A,TPSERVICO' +
        ' B'
      'where A.TSER_ID = B.TSER_ID order by B.TSER_NOME,A.SER_NOME')
    ValidateWithMask = True
    Left = 39
    Top = 160
    object Q_SERV2TSER_NOME: TStringField
      DisplayLabel = 'Tipo de Servi�o'
      DisplayWidth = 35
      FieldName = 'TSER_NOME'
      Origin = 'NBFDADOS.TPSERVICO.TSER_NOME'
      FixedChar = True
      Size = 40
    end
    object Q_SERV2SER_NOME: TStringField
      DisplayLabel = 'Servi�o'
      DisplayWidth = 37
      FieldName = 'SER_NOME'
      Origin = 'NBFDADOS.SERVICO.SER_NOME'
      FixedChar = True
      Size = 40
    end
    object Q_SERV2TSER_ID: TIntegerField
      FieldName = 'TSER_ID'
      Origin = 'NBFDADOS.SERVICO.TSER_ID'
    end
  end
  object DS_SERV2: TwwDataSource
    DataSet = Q_SERV2
    OnDataChange = DS_SERV2DataChange
    Left = 39
    Top = 240
  end
end
