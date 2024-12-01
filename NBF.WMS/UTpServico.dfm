object FTpServico: TFTpServico
  Left = 101
  Top = 79
  Width = 620
  Height = 417
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
    Left = 15
    Top = 11
    Width = 588
    Height = 45
    BevelInner = bvLowered
    TabOrder = 0
    object SpeedButton1: TSpeedButton
      Left = 526
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
      Left = 552
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
      Width = 215
      Height = 29
      Caption = 'Tipos de Servi�os'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -24
      Font.Name = 'Georgia'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object DBNavigator1: TDBNavigator
      Left = 334
      Top = 9
      Width = 192
      Height = 25
      DataSource = DS_TSERV
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
    Left = 15
    Top = 64
    Width = 588
    Height = 313
    BevelInner = bvLowered
    TabOrder = 1
    object Label3: TLabel
      Left = 46
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
      Left = 29
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
    object wwDBEdit3: TwwDBEdit
      Left = 81
      Top = 9
      Width = 310
      Height = 21
      BorderStyle = bsNone
      DataField = 'TSER_NOME'
      DataSource = DS_TSERV
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
      Left = 117
      Top = 111
      Width = 359
      Height = 186
      Hint = 'Visualiza��o dos Registros'
      Selected.Strings = (
        'TSER_NOME'#9'53'#9'Nome'#9'F')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DS_TSERV
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
      TabOrder = 2
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
    object DBMemo2: TDBMemo
      Left = 81
      Top = 36
      Width = 470
      Height = 67
      BorderStyle = bsNone
      DataField = 'TSER_CONCEITO'
      DataSource = DS_TSERV
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
  end
  object Q_TSERV: TwwQuery
    AutoCalcFields = False
    CachedUpdates = True
    AfterPost = Q_TSERVAfterPost
    AfterDelete = Q_TSERVAfterDelete
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    RequestLive = True
    SQL.Strings = (
      'select * from TPSERVICO  order by TSER_NOME')
    UpdateObject = UPD_TSERV
    ValidateWithMask = True
    Left = 495
    Top = 88
    object Q_TSERVTSER_NOME: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 53
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
  object UPD_TSERV: TUpdateSQL
    ModifySQL.Strings = (
      'update TPSERVICO'
      'set'
      '  TSER_NOME = :TSER_NOME,'
      '  TSER_CONCEITO = :TSER_CONCEITO'
      'where'
      '  TSER_ID = :OLD_TSER_ID')
    InsertSQL.Strings = (
      'insert into TPSERVICO'
      '  (TSER_NOME, TSER_CONCEITO)'
      'values'
      '  (:TSER_NOME, :TSER_CONCEITO)')
    DeleteSQL.Strings = (
      'delete from TPSERVICO'
      'where'
      '  TSER_ID = :OLD_TSER_ID')
    Left = 495
    Top = 136
  end
  object DS_TSERV: TwwDataSource
    DataSet = Q_TSERV
    Left = 495
    Top = 184
  end
end
