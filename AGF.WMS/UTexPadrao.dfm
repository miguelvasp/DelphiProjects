object FTexPadrao: TFTexPadrao
  Left = 105
  Top = 113
  Width = 616
  Height = 345
  BorderIcons = []
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
    Left = 10
    Top = 10
    Width = 590
    Height = 45
    BevelInner = bvLowered
    TabOrder = 0
    object SpeedButton1: TSpeedButton
      Left = 530
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
      Left = 556
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
      Width = 179
      Height = 29
      Caption = 'Textos Padrão'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -24
      Font.Name = 'Georgia'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object DBNavigator1: TDBNavigator
      Left = 338
      Top = 9
      Width = 192
      Height = 25
      DataSource = DS_TEX
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
    end
  end
  object Panel1: TPanel
    Left = 10
    Top = 63
    Width = 590
    Height = 247
    BevelInner = bvLowered
    TabOrder = 1
    object Label3: TLabel
      Left = 18
      Top = 33
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
      Left = 15
      Top = 65
      Width = 42
      Height = 15
      Caption = 'Texto 1'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 15
      Top = 98
      Width = 42
      Height = 15
      Caption = 'Texto 2'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 15
      Top = 130
      Width = 42
      Height = 15
      Caption = 'Texto 3'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object wwDBEdit3: TwwDBEdit
      Left = 62
      Top = 31
      Width = 35
      Height = 21
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'CodTexto'
      DataSource = DS_TEX
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
      Left = 62
      Top = 64
      Width = 521
      Height = 21
      BorderStyle = bsNone
      DataField = 'Linha1'
      DataSource = DS_TEX
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
    object wwDBEdit2: TwwDBEdit
      Left = 62
      Top = 97
      Width = 521
      Height = 21
      BorderStyle = bsNone
      DataField = 'Linha2'
      DataSource = DS_TEX
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
      OnEnter = wwDBEdit2Enter
      OnExit = wwDBEdit2Exit
    end
    object wwDBEdit4: TwwDBEdit
      Left = 62
      Top = 129
      Width = 521
      Height = 21
      BorderStyle = bsNone
      DataField = 'Linha3'
      DataSource = DS_TEX
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnEnter = wwDBEdit4Enter
      OnExit = wwDBEdit4Exit
    end
  end
  object Q_TEX: TwwQuery
    AutoCalcFields = False
    CachedUpdates = True
    AfterPost = Q_TEXAfterPost
    AfterDelete = Q_TEXAfterDelete
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    RequestLive = True
    SQL.Strings = (
      'select * from TEXPADRAO order by CODTEXTO')
    UpdateObject = UPD_TEX
    ValidateWithMask = True
    Left = 455
    Top = 72
    object Q_TEXCodTexto: TStringField
      FieldName = 'CodTexto'
      Origin = 'NBFDADOS.TEXPADRAO.CodTexto'
      FixedChar = True
      Size = 2
    end
    object Q_TEXLinha1: TStringField
      FieldName = 'Linha1'
      Origin = 'NBFDADOS.TEXPADRAO.Linha1'
      FixedChar = True
      Size = 70
    end
    object Q_TEXLinha2: TStringField
      FieldName = 'Linha2'
      Origin = 'NBFDADOS.TEXPADRAO.Linha2'
      FixedChar = True
      Size = 70
    end
    object Q_TEXLinha3: TStringField
      FieldName = 'Linha3'
      Origin = 'NBFDADOS.TEXPADRAO.Linha3'
      FixedChar = True
      Size = 70
    end
  end
  object UPD_TEX: TUpdateSQL
    ModifySQL.Strings = (
      'update TEXPADRAO'
      'set'
      '  CodTexto = :CodTexto,'
      '  Linha1 = :Linha1,'
      '  Linha2 = :Linha2,'
      '  Linha3 = :Linha3'
      'where'
      '  CodTexto = :OLD_CodTexto')
    InsertSQL.Strings = (
      'insert into TEXPADRAO'
      '  (CodTexto, Linha1, Linha2, Linha3)'
      'values'
      '  (:CodTexto, :Linha1, :Linha2, :Linha3)')
    DeleteSQL.Strings = (
      'delete from TEXPADRAO'
      'where'
      '  CodTexto = :OLD_CodTexto')
    Left = 455
    Top = 128
  end
  object DS_TEX: TwwDataSource
    DataSet = Q_TEX
    Left = 455
    Top = 176
  end
end
