object FUnFederacao: TFUnFederacao
  Left = 199
  Top = 61
  Width = 800
  Height = 556
  Caption = 'Sistema Integrado'
  Color = clBtnFace
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 791
    Height = 37
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 9
      Top = 7
      Width = 268
      Height = 22
      Caption = 'Unidades da Federação (ICMS)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object SBT_SAIR: TSpeedButton
      Left = 749
      Top = 6
      Width = 29
      Height = 26
      Cursor = crHandPoint
      Hint = 'Sair'
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
      ParentShowHint = False
      ShowHint = True
      OnClick = SBT_SAIRClick
    end
    object SBT_REFR: TSpeedButton
      Left = 662
      Top = 6
      Width = 29
      Height = 26
      Cursor = crHandPoint
      Hint = 'Atualiza Base de Dados'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000010000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
        3333333777333777FF33339993707399933333773337F3777FF3399933000339
        9933377333777F3377F3399333707333993337733337333337FF993333333333
        399377F33333F333377F993333303333399377F33337FF333373993333707333
        333377F333777F333333993333101333333377F333777F3FFFFF993333000399
        999377FF33777F77777F3993330003399993373FF3777F37777F399933000333
        99933773FF777F3F777F339993707399999333773F373F77777F333999999999
        3393333777333777337333333999993333333333377777333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SBT_REFRClick
    end
    object Bt_Incluir: TSpeedButton
      Left = 546
      Top = 6
      Width = 29
      Height = 26
      Cursor = crHandPoint
      Hint = 'Incluir'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
        333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
        0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
        07333337F33333337F333330FFFFFFFF07333337F33333337F333330FFFFFFFF
        07333FF7F33333337FFFBBB0FFFFFFFF0BB37777F3333333777F3BB0FFFFFFFF
        0BBB3777F3333FFF77773330FFFF000003333337F333777773333330FFFF0FF0
        33333337F3337F37F3333330FFFF0F0B33333337F3337F77FF333330FFFF003B
        B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
        3BB33773333773333773B333333B3333333B7333333733333337}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = Bt_IncluirClick
    end
    object bt_gravar: TSpeedButton
      Left = 575
      Top = 6
      Width = 29
      Height = 26
      Cursor = crHandPoint
      Hint = 'Gravar'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333330070
        7700333333337777777733333333008088003333333377F73377333333330088
        88003333333377FFFF7733333333000000003FFFFFFF77777777000000000000
        000077777777777777770FFFFFFF0FFFFFF07F3333337F3333370FFFFFFF0FFF
        FFF07F3FF3FF7FFFFFF70F00F0080CCC9CC07F773773777777770FFFFFFFF039
        99337F3FFFF3F7F777F30F0000F0F09999937F7777373777777F0FFFFFFFF999
        99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
        99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
        93337FFFF7737777733300000033333333337777773333333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = bt_gravarClick
    end
    object Bt_cancelar: TSpeedButton
      Left = 604
      Top = 6
      Width = 29
      Height = 26
      Cursor = crHandPoint
      Hint = 'Cancelar'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
        555557777F777555F55500000000555055557777777755F75555005500055055
        555577F5777F57555555005550055555555577FF577F5FF55555500550050055
        5555577FF77577FF555555005050110555555577F757777FF555555505099910
        555555FF75777777FF555005550999910555577F5F77777775F5500505509990
        3055577F75F77777575F55005055090B030555775755777575755555555550B0
        B03055555F555757575755550555550B0B335555755555757555555555555550
        BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
        50BB555555555555575F555555555555550B5555555555555575}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = Bt_cancelarClick
    end
    object Bt_excluir: TSpeedButton
      Left = 633
      Top = 6
      Width = 29
      Height = 26
      Cursor = crHandPoint
      Hint = 'Excluir'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
        3333333777777777F3333330F777777033333337F3F3F3F7F3333330F0808070
        33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
        33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
        333333F7F7F7F7F7F3F33030F080707030333737F7F7F7F7F7333300F0808070
        03333377F7F7F7F773333330F080707033333337F7F7F7F7F333333070707070
        33333337F7F7F7F7FF3333000000000003333377777777777F33330F88877777
        0333337FFFFFFFFF7F3333000000000003333377777777777333333330777033
        3333333337FFF7F3333333333000003333333333377777333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = Bt_excluirClick
    end
    object SpeedButton1: TSpeedButton
      Left = 720
      Top = 6
      Width = 29
      Height = 26
      Cursor = crHandPoint
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
    object SpeedButton2: TSpeedButton
      Left = 691
      Top = 6
      Width = 29
      Height = 26
      Cursor = crHandPoint
      Hint = 'Pesquisar Clientes'
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
      OnClick = SpeedButton2Click
    end
    object DBNavigator1: TDBNavigator
      Left = 450
      Top = 6
      Width = 96
      Height = 26
      Cursor = crHandPoint
      DataSource = DS_UFED
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Hints.Strings = (
        'Primeiro Registro'
        'Registro Anterior'
        'Próximo Registro'
        'Último Registro'
        'Insert record'
        'Delete record'
        'Edit record'
        'Post edit'
        'Cancel edit'
        'Refresh data')
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 37
    Width = 791
    Height = 457
    BevelInner = bvLowered
    TabOrder = 1
    object Label3: TLabel
      Left = 189
      Top = 70
      Width = 58
      Height = 16
      Caption = 'Descrição'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 218
      Top = 43
      Width = 29
      Height = 16
      Caption = 'Sigla'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 215
      Top = 100
      Width = 32
      Height = 16
      Caption = 'ICMS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object wwDBGrid1: TwwDBGrid
      Left = 172
      Top = 138
      Width = 439
      Height = 295
      TabStop = False
      Selected.Strings = (
        'UFE_CODI'#9'8'#9'UF'
        'UFE_DESC'#9'38'#9'Descrição'
        'UFE_AICM'#9'10'#9'ICMS')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      Color = clHighlightText
      DataSource = DS_UFED
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      KeyOptions = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      ParentFont = False
      TabOrder = 3
      TitleAlignment = taLeftJustify
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -13
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
      IndicatorColor = icYellow
    end
    object BDE_UNI_DESC: TwwDBEdit
      Left = 253
      Top = 69
      Width = 283
      Height = 24
      DataField = 'UFE_DESC'
      DataSource = DS_UFED
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnEnter = BDE_UNI_DESCEnter
      OnExit = BDE_UNI_DESCExit
    end
    object DBE_UNI_CODI: TwwDBEdit
      Left = 253
      Top = 42
      Width = 35
      Height = 24
      DataField = 'UFE_CODI'
      DataSource = DS_UFED
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnEnter = DBE_UNI_CODIEnter
      OnExit = DBE_UNI_CODIExit
    end
    object wwDBEdit1: TwwDBEdit
      Left = 253
      Top = 96
      Width = 43
      Height = 24
      DataField = 'UFE_AICM'
      DataSource = DS_UFED
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnEnter = wwDBEdit1Enter
      OnExit = wwDBEdit1Exit
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 494
    Width = 791
    Height = 26
    BevelInner = bvLowered
    TabOrder = 2
    object LBL_STATUS: TLabel
      Left = 289
      Top = 6
      Width = 68
      Height = 13
      Alignment = taCenter
      Caption = 'LBL_STATUS'
    end
  end
  object SrchDlg_UF: TwwSearchDialog
    Selected.Strings = (
      'UF'#9'4'#9'Sigla'#9'F'
      'DESCRICAO'#9'47'#9'Descrição'#9'F'
      'ICMS'#9'6'#9'ICMS'#9'F')
    GridTitleAlignment = taLeftJustify
    GridColor = clWhite
    GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
    Caption = 'Search'
    MaxWidth = 0
    MaxHeight = 209
    CharCase = ecNormal
    Left = 335
    Top = 142
  end
  object Q_UFED: TwwQuery
    CachedUpdates = True
    AfterPost = Q_UFEDAfterPost
    AfterDelete = Q_UFEDAfterDelete
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM SIAUFED')
    UpdateObject = UPD_UFED
    PictureMasks.Strings = (
      
        'UNI_DESC'#9'![!][!][!][!][!][!][!][!][!][!][!][!][!][!][!][!][!][!]' +
        '[!]'#9'T'#9'F'
      'UNI_CODI'#9'![!]'#9'T'#9'F')
    ValidateWithMask = True
    Left = 98
    Top = 329
    object Q_UFEDUFE_CODI: TStringField
      DisplayLabel = 'UF'
      DisplayWidth = 8
      FieldName = 'UFE_CODI'
      Origin = 'CURA.SIAUFED.UFE_CODI'
      FixedChar = True
      Size = 2
    end
    object Q_UFEDUFE_DESC: TStringField
      DisplayLabel = 'Descrição'
      DisplayWidth = 38
      FieldName = 'UFE_DESC'
      Origin = 'CURA.SIAUFED.UFE_DESC'
      FixedChar = True
    end
    object Q_UFEDUFE_AICM: TFloatField
      DisplayLabel = 'ICMS'
      DisplayWidth = 10
      FieldName = 'UFE_AICM'
      Origin = 'CURA.SIAUFED.UFE_AICM'
    end
  end
  object DS_UFED: TwwDataSource
    DataSet = Q_UFED
    Left = 102
    Top = 257
  end
  object UPD_UFED: TUpdateSQL
    ModifySQL.Strings = (
      'update SIAUFED'
      'set'
      '  UFE_CODI = :UFE_CODI,'
      '  UFE_DESC = :UFE_DESC,'
      '  UFE_AICM = :UFE_AICM'
      'where'
      '  UFE_CODI = :OLD_UFE_CODI')
    InsertSQL.Strings = (
      'insert into SIAUFED'
      '  (UFE_CODI, UFE_DESC, UFE_AICM)'
      'values'
      '  (:UFE_CODI, :UFE_DESC, :UFE_AICM)')
    DeleteSQL.Strings = (
      'delete from SIAUFED'
      'where'
      '  UFE_CODI = :OLD_UFE_CODI')
    Left = 312
    Top = 281
  end
end
