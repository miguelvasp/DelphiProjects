object FTpDocumento: TFTpDocumento
  Left = 89
  Top = 54
  Width = 641
  Height = 480
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
    Left = 9
    Top = 11
    Width = 614
    Height = 45
    BevelInner = bvLowered
    TabOrder = 0
    object SpeedButton1: TSpeedButton
      Left = 553
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
    end
    object SpeedButton3: TSpeedButton
      Left = 579
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
      Width = 264
      Height = 29
      Caption = 'Tipos de Documentos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -24
      Font.Name = 'Georgia'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object DBNavigator1: TDBNavigator
      Left = 361
      Top = 9
      Width = 192
      Height = 25
      DataSource = DS_TDOC
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
    Left = 9
    Top = 63
    Width = 614
    Height = 384
    BevelInner = bvLowered
    TabOrder = 1
    object Label3: TLabel
      Left = 45
      Top = 9
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
      Left = 28
      Top = 36
      Width = 50
      Height = 15
      Caption = 'Conceito'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 36
      Top = 107
      Width = 42
      Height = 15
      Caption = 'Apelido'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 23
      Top = 133
      Width = 55
      Height = 15
      Caption = 'Categoria'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 252
      Top = 133
      Width = 50
      Height = 15
      Caption = 'Emitente'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      Visible = False
    end
    object Label7: TLabel
      Left = 419
      Top = 133
      Width = 69
      Height = 15
      Caption = 'Destinatário'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      Visible = False
    end
    object Label8: TLabel
      Left = 402
      Top = 107
      Width = 130
      Height = 15
      Caption = 'Participa do Contrato ?'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object wwDBEdit3: TwwDBEdit
      Left = 81
      Top = 9
      Width = 310
      Height = 21
      BorderStyle = bsNone
      DataField = 'TDOC_NOME'
      DataSource = DS_TDOC
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
      Left = 80
      Top = 159
      Width = 435
      Height = 219
      Hint = 'Visualização dos Registros'
      Selected.Strings = (
        'TDOC_NOME'#9'50'#9'Nome'
        'TDOC_APELIDO'#9'15'#9'Apelido'#9'F')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DS_TDOC
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
      TabOrder = 7
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
    object wwDBEdit4: TwwDBEdit
      Left = 81
      Top = 105
      Width = 166
      Height = 21
      BorderStyle = bsNone
      DataField = 'TDOC_APELIDO'
      DataSource = DS_TDOC
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnEnter = wwDBEdit4Enter
      OnExit = wwDBEdit4Exit
    end
    object DBMemo2: TDBMemo
      Left = 81
      Top = 36
      Width = 515
      Height = 63
      BorderStyle = bsNone
      DataField = 'TDOC_CONCEITO'
      DataSource = DS_TDOC
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 1
      OnEnter = DBMemo2Enter
      OnExit = DBMemo2Exit
    end
    object DBCB_CLI_PESS: TwwDBComboBox
      Left = 81
      Top = 132
      Width = 158
      Height = 21
      ShowButton = True
      Style = csDropDown
      MapList = True
      AllowClearKey = False
      AutoDropDown = True
      BorderStyle = bsNone
      ButtonStyle = cbsEllipsis
      DataField = 'TDOC_CATEGORIA'
      DataSource = DS_TDOC
      DropDownCount = 8
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ItemHeight = 0
      Items.Strings = (
        'Nota Fiscal'#9'N'
        'Comprovante'#9'C'
        'Manifesto'#9'O'
        'Romaneio'#9'R')
      ParentFont = False
      Sorted = False
      TabOrder = 4
      UnboundDataType = wwDefault
      OnEnter = DBCB_CLI_PESSEnter
      OnExit = DBCB_CLI_PESSExit
    end
    object wwDBComboBox1: TwwDBComboBox
      Left = 307
      Top = 132
      Width = 104
      Height = 21
      ShowButton = True
      Style = csDropDown
      MapList = True
      AllowClearKey = False
      AutoDropDown = True
      BorderStyle = bsNone
      ButtonStyle = cbsEllipsis
      DataField = 'TDOC_EMIT'
      DataSource = DS_TDOC
      DropDownCount = 8
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ItemHeight = 0
      Items.Strings = (
        'NBF'#9'N'
        'Cliente NBF '#9'C'
        'Cliente Final'#9'F'
        'Cliente NBF Remetente'#9'R')
      ParentFont = False
      Sorted = False
      TabOrder = 5
      UnboundDataType = wwDefault
      Visible = False
      OnEnter = DBCB_CLI_PESSEnter
      OnExit = DBCB_CLI_PESSExit
    end
    object wwDBComboBox2: TwwDBComboBox
      Left = 492
      Top = 132
      Width = 104
      Height = 21
      ShowButton = True
      Style = csDropDown
      MapList = True
      AllowClearKey = False
      AutoDropDown = True
      BorderStyle = bsNone
      ButtonStyle = cbsEllipsis
      DataField = 'TDOC_DEST'
      DataSource = DS_TDOC
      DropDownCount = 8
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ItemHeight = 0
      Items.Strings = (
        'NBF'#9'N'
        'Cliente NBF'#9'C'
        'Cliente Final'#9'F'
        'Outros'#9'O')
      ParentFont = False
      Sorted = False
      TabOrder = 6
      UnboundDataType = wwDefault
      Visible = False
      OnEnter = DBCB_CLI_PESSEnter
      OnExit = DBCB_CLI_PESSExit
    end
    object wwDBComboBox3: TwwDBComboBox
      Left = 540
      Top = 105
      Width = 56
      Height = 21
      ShowButton = True
      Style = csDropDown
      MapList = True
      AllowClearKey = False
      AutoDropDown = True
      BorderStyle = bsNone
      ButtonStyle = cbsEllipsis
      DataField = 'TDOC_CONTRATO'
      DataSource = DS_TDOC
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
      TabOrder = 3
      UnboundDataType = wwDefault
      OnEnter = DBCB_CLI_PESSEnter
      OnExit = DBCB_CLI_PESSExit
    end
  end
  object Q_TDOC: TwwQuery
    AutoCalcFields = False
    CachedUpdates = True
    BeforePost = Q_TDOCBeforePost
    AfterPost = Q_TDOCAfterPost
    AfterDelete = Q_TDOCAfterDelete
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    RequestLive = True
    SQL.Strings = (
      'select * from TPDOC  order by TDOC_NOME')
    UpdateObject = UPD_TDOC
    ValidateWithMask = True
    Left = 495
    Top = 48
    object Q_TDOCTDOC_NOME: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 50
      FieldName = 'TDOC_NOME'
      Origin = 'NBFDADOS.TPDOC.TDOC_NOME'
      FixedChar = True
      Size = 40
    end
    object Q_TDOCTDOC_APELIDO: TStringField
      DisplayLabel = 'Apelido'
      DisplayWidth = 15
      FieldName = 'TDOC_APELIDO'
      Origin = 'NBFDADOS.TPDOC.TDOC_APELIDO'
      FixedChar = True
      Size = 10
    end
    object Q_TDOCTDOC_ID: TAutoIncField
      FieldName = 'TDOC_ID'
      Origin = 'NBFDADOS.TPDOC.TDOC_ID'
      Visible = False
    end
    object Q_TDOCTDOC_CONCEITO: TMemoField
      FieldName = 'TDOC_CONCEITO'
      Origin = 'NBFDADOS.TPDOC.TDOC_CONCEITO'
      Visible = False
      BlobType = ftMemo
    end
    object Q_TDOCTDOC_CATEGORIA: TStringField
      FieldName = 'TDOC_CATEGORIA'
      Origin = 'NBFDADOS.TPDOC.TDOC_ID'
      FixedChar = True
      Size = 1
    end
    object Q_TDOCTDOC_EMIT: TStringField
      FieldName = 'TDOC_EMIT'
      Origin = 'NBFDADOS.TPDOC.TDOC_ID'
      FixedChar = True
      Size = 1
    end
    object Q_TDOCTDOC_DEST: TStringField
      FieldName = 'TDOC_DEST'
      Origin = 'NBFDADOS.TPDOC.TDOC_ID'
      FixedChar = True
      Size = 1
    end
    object Q_TDOCTDOC_CONTRATO: TStringField
      FieldName = 'TDOC_CONTRATO'
      Origin = 'NBFDADOS.TPDOC.TDOC_CONTRATO'
      FixedChar = True
      Size = 1
    end
  end
  object UPD_TDOC: TUpdateSQL
    ModifySQL.Strings = (
      'update TPDOC'
      'set'
      '  TDOC_NOME = :TDOC_NOME,'
      '  TDOC_CONCEITO = :TDOC_CONCEITO,'
      '  TDOC_APELIDO = :TDOC_APELIDO,'
      '  TDOC_CATEGORIA = :TDOC_CATEGORIA,'
      '  TDOC_EMIT = :TDOC_EMIT,'
      '  TDOC_DEST = :TDOC_DEST,'
      '  TDOC_CONTRATO = :TDOC_CONTRATO'
      'where'
      '  TDOC_ID = :OLD_TDOC_ID')
    InsertSQL.Strings = (
      'insert into TPDOC'
      
        '  (TDOC_NOME, TDOC_CONCEITO, TDOC_APELIDO, TDOC_CATEGORIA, TDOC_' +
        'EMIT, TDOC_DEST, '
      '   TDOC_CONTRATO)'
      'values'
      
        '  (:TDOC_NOME, :TDOC_CONCEITO, :TDOC_APELIDO, :TDOC_CATEGORIA, :' +
        'TDOC_EMIT, '
      '   :TDOC_DEST, :TDOC_CONTRATO)')
    DeleteSQL.Strings = (
      'delete from TPDOC'
      'where'
      '  TDOC_ID = :OLD_TDOC_ID')
    Left = 495
    Top = 96
  end
  object DS_TDOC: TwwDataSource
    DataSet = Q_TDOC
    OnDataChange = DS_TDOCDataChange
    Left = 359
    Top = 112
  end
end
