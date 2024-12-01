object FUF: TFUF
  Left = 107
  Top = 97
  Width = 618
  Height = 359
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
    Width = 584
    Height = 45
    BevelInner = bvLowered
    TabOrder = 0
    object Label4: TLabel
      Left = 16
      Top = 5
      Width = 294
      Height = 29
      Caption = 'Unidades da Federação'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -24
      Font.Name = 'Georgia'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object SpeedButton3: TSpeedButton
      Left = 549
      Top = 10
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
    object SpeedButton1: TSpeedButton
      Left = 523
      Top = 10
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
      Left = 331
      Top = 10
      Width = 192
      Height = 25
      DataSource = DS_UF
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
    Left = 15
    Top = 64
    Width = 584
    Height = 257
    BevelInner = bvLowered
    TabOrder = 1
    object Label1: TLabel
      Left = 87
      Top = 14
      Width = 28
      Height = 15
      Caption = 'Sigla'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 83
      Top = 43
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
    object wwDBEdit1: TwwDBEdit
      Left = 118
      Top = 11
      Width = 41
      Height = 22
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = clWhite
      DataField = 'UF_SIGLA'
      DataSource = DS_UF
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnEnter = wwDBEdit1Enter
      OnExit = wwDBEdit1Exit
    end
    object wwDBEdit3: TwwDBEdit
      Left = 118
      Top = 40
      Width = 281
      Height = 21
      BorderStyle = bsNone
      DataField = 'UF_NOME'
      DataSource = DS_UF
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnEnter = wwDBEdit3Enter
      OnExit = wwDBEdit3Exit
    end
    object DBG_RAAT: TwwDBGrid
      Left = 118
      Top = 116
      Width = 427
      Height = 131
      Hint = 'Visualização dos Registros'
      Selected.Strings = (
        'UF_SIGLA'#9'8'#9'Sigla'
        'UF_NOME'#9'38'#9'Nome'#9'F'
        'UF_ALIQUOTA'#9'12'#9'Alíquota')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DS_UF
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
      IndicatorColor = icBlack
      object DBG_RAATIButton: TwwIButton
        Left = 0
        Top = 0
        Width = 13
        Height = 22
        AllowAllUp = True
      end
    end
    object GroupBox1: TGroupBox
      Left = 117
      Top = 65
      Width = 428
      Height = 46
      Caption = 'Alíquota de ICMS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      TabOrder = 2
      object Label2: TLabel
        Left = 109
        Top = 19
        Width = 62
        Height = 15
        Caption = 'Nota Fiscal'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 233
        Top = 21
        Width = 11
        Height = 15
        Caption = '%'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Georgia'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 255
        Top = 19
        Width = 82
        Height = 15
        Caption = 'Conhecimento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 397
        Top = 21
        Width = 11
        Height = 15
        Caption = '%'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Georgia'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object wwDBEdit2: TwwDBEdit
        Left = 176
        Top = 15
        Width = 53
        Height = 21
        BorderStyle = bsNone
        DataField = 'UF_ALIQUOTA'
        DataSource = DS_UF
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnEnter = wwDBEdit2Enter
        OnExit = wwDBEdit2Exit
      end
      object wwDBEdit4: TwwDBEdit
        Left = 340
        Top = 15
        Width = 53
        Height = 21
        BorderStyle = bsNone
        DataField = 'UF_ALIQUOTACONH'
        DataSource = DS_UF
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnEnter = wwDBEdit2Enter
        OnExit = wwDBEdit2Exit
      end
    end
  end
  object Q_UF: TwwQuery
    AutoCalcFields = False
    CachedUpdates = True
    AfterPost = Q_UFAfterPost
    AfterDelete = Q_UFAfterDelete
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    RequestLive = True
    SQL.Strings = (
      'select * from UF  order by UF_SIGLA')
    UpdateObject = UPD_UF
    ValidateWithMask = True
    Left = 543
    Top = 72
    object Q_UFUF_SIGLA: TStringField
      Alignment = taCenter
      DisplayLabel = 'Sigla'
      DisplayWidth = 8
      FieldName = 'UF_SIGLA'
      Origin = 'NBFDADOS.UF.UF_SIGLA'
      FixedChar = True
      Size = 2
    end
    object Q_UFUF_NOME: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 38
      FieldName = 'UF_NOME'
      Origin = 'NBFDADOS.UF.UF_NOME'
      FixedChar = True
      Size = 30
    end
    object Q_UFUF_ALIQUOTA: TFloatField
      Alignment = taCenter
      DisplayLabel = 'Alíquota'
      DisplayWidth = 12
      FieldName = 'UF_ALIQUOTA'
      Origin = 'NBFDADOS.UF.UF_ALIQUOTA'
      DisplayFormat = '##0.00'
      EditFormat = '##0.00'
    end
    object Q_UFUF_ALIQUOTACONH: TFloatField
      FieldName = 'UF_ALIQUOTACONH'
      Origin = 'NBFDADOS.UF.UF_ALIQUOTACONH'
      DisplayFormat = '##0.00'
      EditFormat = '##0.00'
    end
  end
  object UPD_UF: TUpdateSQL
    ModifySQL.Strings = (
      'update UF'
      'set'
      '  UF_SIGLA = :UF_SIGLA,'
      '  UF_NOME = :UF_NOME,'
      '  UF_ALIQUOTA = :UF_ALIQUOTA,'
      '  UF_ALIQUOTACONH = :UF_ALIQUOTACONH'
      'where'
      '  UF_SIGLA = :OLD_UF_SIGLA')
    InsertSQL.Strings = (
      'insert into UF'
      '  (UF_SIGLA, UF_NOME, UF_ALIQUOTA, UF_ALIQUOTACONH)'
      'values'
      '  (:UF_SIGLA, :UF_NOME, :UF_ALIQUOTA, :UF_ALIQUOTACONH)')
    DeleteSQL.Strings = (
      'delete from UF'
      'where'
      '  UF_SIGLA = :OLD_UF_SIGLA')
    Left = 495
    Top = 72
  end
  object DS_UF: TwwDataSource
    DataSet = Q_UF
    Left = 431
    Top = 72
  end
end
