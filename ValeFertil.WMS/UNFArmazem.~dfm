object FNFArmazem: TFNFArmazem
  Left = 225
  Top = 52
  Width = 851
  Height = 620
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  BorderIcons = []
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 3
    Top = 0
    Width = 823
    Height = 31
    BevelInner = bvLowered
    TabOrder = 0
    object SpeedButton3: TSpeedButton
      Left = 795
      Top = 5
      Width = 25
      Height = 22
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
      Left = 9
      Top = 3
      Width = 265
      Height = 25
      Caption = 'Nota Fiscal de Armazém'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -21
      Font.Name = 'Georgia'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 1
    Top = 32
    Width = 825
    Height = 546
    BevelInner = bvLowered
    TabOrder = 1
    object GroupBox6: TGroupBox
      Left = 4
      Top = 2
      Width = 813
      Height = 146
      Caption = 'Seleção de Filtros'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Label20: TLabel
        Left = 45
        Top = 20
        Width = 64
        Height = 15
        Caption = 'Cliente NBF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 60
        Top = 44
        Width = 49
        Height = 15
        Caption = 'Contrato'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel
        Left = 16
        Top = 73
        Width = 93
        Height = 15
        Caption = 'NF de Entrada Nº'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object Label2: TLabel
        Left = 16
        Top = 113
        Width = 25
        Height = 15
        Caption = 'OBS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object wwDBLookupCombo4: TwwDBLookupCombo
        Left = 112
        Top = 15
        Width = 352
        Height = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        CharCase = ecUpperCase
        BorderStyle = bsNone
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'CLIN_RAZA'#9'50'#9'Razão Social'#9'F')
        LookupTable = Q_CLINBF
        LookupField = 'CLIN_ID'
        DropDownCount = 16
        ParentFont = False
        TabOrder = 0
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = True
        OnCloseUp = wwDBLookupCombo4CloseUp
        OnEnter = wwDBLookupCombo4Enter
        OnExit = wwDBLookupCombo4Exit
      end
      object wwDBLookupCombo6: TwwDBLookupCombo
        Left = 112
        Top = 42
        Width = 352
        Height = 23
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        BorderStyle = bsNone
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'CTT_NOME'#9'40'#9'Nome do Contrato'#9'F')
        DataField = 'CTT_ID'
        LookupTable = Q_CTT
        LookupField = 'CTT_ID'
        ParentFont = False
        TabOrder = 1
        AutoDropDown = True
        ShowButton = True
        SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
        PreciseEditRegion = False
        AllowClearKey = False
        OnEnter = wwDBLookupCombo6Enter
        OnExit = wwDBLookupCombo6Exit
      end
      object DBNavigator1: TDBNavigator
        Left = 482
        Top = 68
        Width = 176
        Height = 25
        DataSource = DS_NFA
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
        TabOrder = 4
      end
      object RadioGroup1: TRadioGroup
        Left = 205
        Top = 68
        Width = 263
        Height = 31
        Caption = 'Transportador NBF ?'
        Color = 13303754
        Columns = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Items.Strings = (
          'Sim'
          'Não')
        ParentColor = False
        ParentFont = False
        TabOrder = 3
      end
      object wwDBEdit4: TwwDBEdit
        Left = 112
        Top = 70
        Width = 89
        Height = 23
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 2
        UnboundDataType = wwDefault
        Visible = False
        WantReturns = False
        WordWrap = False
        OnEnter = wwDBEdit4Enter
        OnExit = wwDBEdit4Exit
      end
      object BitBtn6: TBitBtn
        Left = 672
        Top = 25
        Width = 74
        Height = 25
        Hint = 'Incluir nova Nota Fiscal de Armazém '
        Caption = 'Incluir'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        OnClick = BitBtn6Click
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555000000
          000055555F77777777775555000FFFFFFFF0555F777F5FFFF55755000F0F0000
          FFF05F777F7F77775557000F0F0FFFFFFFF0777F7F7F5FFFFFF70F0F0F0F0000
          00F07F7F7F7F777777570F0F0F0FFFFFFFF07F7F7F7F5FFFFFF70F0F0F0F0000
          00F07F7F7F7F777777570F0F0F0FFFFFFFF07F7F7F7F5FFF55570F0F0F0F000F
          FFF07F7F7F7F77755FF70F0F0F0FFFFF00007F7F7F7F5FF577770F0F0F0F00FF
          0F057F7F7F7F77557F750F0F0F0FFFFF00557F7F7F7FFFFF77550F0F0F000000
          05557F7F7F77777775550F0F0000000555557F7F7777777555550F0000000555
          55557F7777777555555500000005555555557777777555555555}
        NumGlyphs = 2
      end
      object edtOBS: TEdit
        Left = 56
        Top = 112
        Width = 705
        Height = 22
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
      end
      object Button1: TButton
        Left = 56
        Top = 74
        Width = 139
        Height = 25
        Caption = 'Selecionar Produtos'
        TabOrder = 7
        OnClick = Button1Click
      end
    end
    object wwDBGrid4: TwwDBGrid
      Left = 6
      Top = 150
      Width = 829
      Height = 392
      Selected.Strings = (
        'NFA_ITEM'#9'3'#9'Item'
        'PRO_COD'#9'8'#9'Código'
        'PRO_DESC'#9'40'#9'Descrição'
        'QTDE_NFA'#9'14'#9'Qtde. UV'
        'QTDE_NFE'#9'10'#9'Qtde. NFE'
        'QTDE_ESTOQUE'#9'10'#9'Qtde. Estoque')
      IniAttributes.FileName = 'delphi32.ini'
      IniAttributes.SectionName = 'FNFDBG_INFI'
      IniAttributes.Delimiter = ';;'
      TitleColor = clBlue
      FixedCols = 1
      ShowHorzScrollBar = True
      Color = clWhite
      DataSource = DS_NFA
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      KeyOptions = [dgEnterToTab, dgAllowInsert]
      ParentFont = False
      TabOrder = 1
      TitleAlignment = taCenter
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWhite
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = [fsBold]
      TitleLines = 1
      TitleButtons = False
      OnCalcCellColors = wwDBGrid4CalcCellColors
      OnEnter = wwDBGrid4Enter
      FooterColor = clInactiveCaption
      FooterCellColor = clGrayText
    end
    object BitBtn3: TBitBtn
      Left = 662
      Top = 70
      Width = 29
      Height = 25
      Hint = 'Checagem de  (Produtos X  NFE)'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = BitBtn3Click
      OnMouseDown = BitBtn3MouseDown
      OnMouseUp = BitBtn3MouseUp
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333333333333333333FFFFFFFFFFF33330000000000
        03333377777777777F33333003333330033333377FF333377F33333300333333
        0333333377FF33337F3333333003333303333333377FF3337333333333003333
        333333333377FF3333333333333003333333333333377FF33333333333330033
        3333333333337733333333333330033333333333333773333333333333003333
        33333333337733333F3333333003333303333333377333337F33333300333333
        03333333773333337F33333003333330033333377FFFFFF77F33330000000000
        0333337777777777733333333333333333333333333333333333}
      NumGlyphs = 2
    end
    object BitBtn1: TBitBtn
      Left = 719
      Top = 70
      Width = 29
      Height = 25
      Hint = 'Geração de Nota Fiscal de Armazém'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = BitBtn1Click
      OnMouseDown = BitBtn1MouseDown
      OnMouseUp = BitBtn1MouseUp
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555000000
        000055555F77777777775555000FFFFFFFF0555F777F5FFFF55755000F0F0000
        FFF05F777F7F77775557000F0F0FFFFFFFF0777F7F7F5FFFFFF70F0F0F0F0000
        00F07F7F7F7F777777570F0F0F0FFFFFFFF07F7F7F7F5FFFFFF70F0F0F0F0000
        00F07F7F7F7F777777570F0F0F0FFFFFFFF07F7F7F7F5FFF55570F0F0F0F000F
        FFF07F7F7F7F77755FF70F0F0F0FFFFF00007F7F7F7F5FF577770F0F0F0F00FF
        0F057F7F7F7F77557F750F0F0F0FFFFF00557F7F7F7FFFFF77550F0F0F000000
        05557F7F7F77777775550F0F0000000555557F7F7777777555550F0000000555
        55557F7777777555555500000005555555557777777555555555}
      NumGlyphs = 2
    end
    object Animate1: TAnimate
      Left = 768
      Top = 257
      Width = 281
      Height = 66
      Active = True
      AutoSize = False
      Center = False
      Color = clTeal
      CommonAVI = aviCopyFiles
      ParentColor = False
      StopFrame = 1
      Visible = False
    end
    object Panel1: TPanel
      Left = 767
      Top = 136
      Width = 401
      Height = 121
      Caption = 'Aguarde...efetuando checagem com NFE ! '
      Color = clTeal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      Visible = False
    end
    object DBLC_INF_PROD: TwwDBLookupCombo
      Left = 125
      Top = 145
      Width = 76
      Height = 26
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'PRO_COD'#9'13'#9'Código'#9'F'
        'PRO_DESC'#9'45'#9'PRO_DESC'#9'F')
      DataField = 'PRO_COD'
      DataSource = DS_NFA
      LookupTable = Q_PROD
      LookupField = 'PRO_COD'
      ParentFont = False
      TabOrder = 6
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnExit = DBLC_INF_PRODExit
    end
    object BitBtn2: TBitBtn
      Left = 691
      Top = 70
      Width = 29
      Height = 25
      Hint = 'Excluir todos os Itens'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnClick = BitBtn2Click
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
    end
    object BitBtn4: TBitBtn
      Left = 13
      Top = 41
      Width = 29
      Height = 25
      Hint = 'Escolher outro Cliente/Contrato'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
      Visible = False
      OnClick = BitBtn4Click
      OnMouseUp = BitBtn3MouseUp
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333333333333333333333333333333333333333333333FF333333333333
        3000333333FFFFF3F77733333000003000B033333777773777F733330BFBFB00
        E00033337FFF3377F7773333000FBFB0E000333377733337F7773330FBFBFBF0
        E00033F7FFFF3337F7773000000FBFB0E000377777733337F7770BFBFBFBFBF0
        E00073FFFFFFFF37F777300000000FB0E000377777777337F7773333330BFB00
        000033333373FF77777733333330003333333333333777333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
    end
  end
  object UPD_NFA: TUpdateSQL
    ModifySQL.Strings = (
      'update NFA_PRODUTO'
      'set'
      '  NFA_ITEM = :NFA_ITEM,'
      '  PRO_ID = :PRO_ID,'
      '  QTDE_NFA = :QTDE_NFA,'
      '  QTDE_NFE = :QTDE_NFE,'
      '  REJEITADA = :REJEITADA,'
      '  SALDO = :SALDO,'
      '  PRECOUNIT = :PRECOUNIT,'
      '  CH = :CH'
      'where'
      '  NFA_ID = :OLD_NFA_ID')
    InsertSQL.Strings = (
      'insert into NFA_PRODUTO'
      
        '  (NFA_ITEM, PRO_ID, QTDE_NFA, QTDE_NFE, REJEITADA, SALDO, PRECO' +
        'UNIT, CH)'
      'values'
      
        '  (:NFA_ITEM, :PRO_ID, :QTDE_NFA, :QTDE_NFE, :REJEITADA, :SALDO,' +
        ' :PRECOUNIT, '
      '   :CH)')
    DeleteSQL.Strings = (
      'delete from NFA_PRODUTO'
      'where'
      '  NFA_ID = :OLD_NFA_ID')
    Left = 260
    Top = 284
  end
  object Q_CLINBF: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select  CLIN_ID,CLIN_RAZA,UF_SIGLA,CLIN_CGCCPF'
      '  from CLIENTENBF where'
      '(CLIN_CONTRATO <> '#39'I'#39' and CLIN_CONTRATO <> '#39'R'#39') '
      'order by CLIN_RAZA ')
    ValidateWithMask = True
    Left = 42
    Top = 160
    object Q_CLINBFCLIN_RAZA: TStringField
      DisplayLabel = 'Razão Social'
      DisplayWidth = 50
      FieldName = 'CLIN_RAZA'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_RAZA'
      FixedChar = True
      Size = 50
    end
    object Q_CLINBFCLIN_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'CLIN_ID'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_ID'
      Visible = False
    end
    object Q_CLINBFUF_SIGLA: TStringField
      FieldName = 'UF_SIGLA'
      Origin = 'NBFDADOS.CLIENTENBF.UF_SIGLA'
      FixedChar = True
      Size = 2
    end
    object Q_CLINBFCLIN_CGCCPF: TStringField
      FieldName = 'CLIN_CGCCPF'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_CGCCPF'
      FixedChar = True
      Size = 15
    end
  end
  object DS_CLINBF: TwwDataSource
    DataSet = Q_CLINBF
    Left = 42
    Top = 210
  end
  object Q_AUX: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    ValidateWithMask = True
    Left = 40
    Top = 258
  end
  object Q_NFA: TwwQuery
    CachedUpdates = True
    BeforePost = Q_NFABeforePost
    AfterPost = Q_NFAAfterPost
    AfterDelete = Q_NFAAfterDelete
    OnNewRecord = Q_NFANewRecord
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    DataSource = FMenu.DS_Usuario
    RequestLive = True
    SQL.Strings = (
      'SELECT A.*,B.PRO_COD,B.PRO_DESC '
      'FROM NFA_PRODUTO A,PRODUTO B'
      'WHERE  A.PRO_ID = B.PRO_ID'
      'and A.CH = :CH')
    UpdateObject = UPD_NFA
    ControlType.Strings = (
      'PRO_COD;CustomEdit;DBLC_INF_PROD')
    ValidateWithMask = True
    Left = 256
    Top = 184
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'CH'
        ParamType = ptUnknown
      end>
    object Q_NFANFA_ITEM: TIntegerField
      DisplayLabel = 'Item'
      DisplayWidth = 3
      FieldName = 'NFA_ITEM'
      Origin = 'NBFDADOS.NFA_PRODUTO.NFA_ITEM'
    end
    object Q_NFAPRO_COD: TStringField
      DisplayLabel = 'Código'
      DisplayWidth = 8
      FieldName = 'PRO_COD'
      Origin = 'NBFDADOS.PRODUTO.PRO_COD'
      FixedChar = True
      Size = 16
    end
    object Q_NFAPRO_DESC: TStringField
      DisplayLabel = 'Descrição'
      DisplayWidth = 40
      FieldName = 'PRO_DESC'
      Origin = 'NBFDADOS.PRODUTO.PRO_DESC'
      FixedChar = True
      Size = 40
    end
    object Q_NFAQTDE_NFA: TFloatField
      DisplayLabel = 'Qtde. UV'
      DisplayWidth = 14
      FieldName = 'QTDE_NFA'
      Origin = 'NBFDADOS.NFA_PRODUTO.QTDE_NFA'
      DisplayFormat = '0.000'
      EditFormat = '0.000'
    end
    object Q_NFAQTDE_NFE: TFloatField
      DisplayLabel = 'Qtde. NFE'
      DisplayWidth = 10
      FieldName = 'QTDE_NFE'
      Origin = 'NBFDADOS.NFA_PRODUTO.QTDE_NFE'
      ReadOnly = True
      DisplayFormat = '0.000'
      EditFormat = '0.000'
    end
    object Q_NFAQTDE_ESTOQUE: TFloatField
      DisplayLabel = 'Qtde. Estoque'
      DisplayWidth = 10
      FieldName = 'QTDE_ESTOQUE'
      Origin = 'NBFDADOS.NFA_PRODUTO.QTDE_ESTOQUE'
    end
    object Q_NFANFA_ID: TAutoIncField
      DisplayLabel = #39
      DisplayWidth = 1
      FieldName = 'NFA_ID'
      Origin = 'NBFDADOS.NFA_PRODUTO.NFA_ID'
      Visible = False
    end
    object Q_NFAPRECOUNIT: TFloatField
      DisplayLabel = 'Pr. Unitário'
      DisplayWidth = 10
      FieldName = 'PRECOUNIT'
      Origin = 'NBFDADOS.NFA_PRODUTO.PRECOUNIT'
      Visible = False
    end
    object Q_NFAPRO_ID: TIntegerField
      FieldName = 'PRO_ID'
      Origin = 'NBFDADOS.NFA_PRODUTO.PRO_ID'
      Visible = False
    end
    object Q_NFAREJEITADA: TStringField
      FieldName = 'REJEITADA'
      Origin = 'NBFDADOS.NFA_PRODUTO.REJEITADA'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_NFASALDO: TFloatField
      FieldName = 'SALDO'
      Origin = 'NBFDADOS.NFA_PRODUTO.SALDO'
      Visible = False
    end
    object Q_NFACH: TIntegerField
      FieldName = 'CH'
      Origin = 'NBFDADOS.NFA_PRODUTO.CH'
      Visible = False
    end
  end
  object DS_NFA: TwwDataSource
    DataSet = Q_NFA
    OnDataChange = DS_NFADataChange
    Left = 255
    Top = 234
  end
  object DS_CTT: TwwDataSource
    DataSet = Q_CTT
    Left = 119
    Top = 226
  end
  object Q_CTT: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    DataSource = DS_CLINBF
    SQL.Strings = (
      'Select CTT_ID,CTT_NOME,TOS_ID,CLIN_ID,PAR_ID,'
      'CTT_TERCEIRO from CONTRATO where'
      'CLIN_ID = :CLIN_ID and TOS_ID = 6')
    ValidateWithMask = True
    Left = 121
    Top = 178
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'CLIN_ID'
        ParamType = ptUnknown
      end>
    object Q_CTTCTT_NOME: TStringField
      DisplayLabel = 'Nome do Contrato'
      DisplayWidth = 40
      FieldName = 'CTT_NOME'
      Origin = 'NBFDADOS.CONTRATO.CTT_NOME'
      FixedChar = True
      Size = 40
    end
    object Q_CTTCTT_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'CTT_ID'
      Origin = 'NBFDADOS.CONTRATO.CTT_ID'
      Visible = False
    end
    object Q_CTTTOS_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'TOS_ID'
      Origin = 'NBFDADOS.CONTRATO.TOS_ID'
      Visible = False
    end
    object Q_CTTCLIN_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'CLIN_ID'
      Origin = 'NBFDADOS.CONTRATO.CLIN_ID'
      Visible = False
    end
    object Q_CTTCTT_TERCEIRO: TStringField
      FieldName = 'CTT_TERCEIRO'
      Origin = 'NBFDADOS.CONTRATO.CTT_TERCEIRO'
      FixedChar = True
      Size = 1
    end
    object Q_CTTPAR_ID: TIntegerField
      FieldName = 'PAR_ID'
      Origin = 'NBFDADOS.CONTRATO.PAR_ID'
    end
  end
  object Q_PROD: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    DataSource = DS_CLINBF
    SQL.Strings = (
      'select * from PRODUTO where'
      'CLIN_ID = :CLIN_ID and PRO_DESCONTINUA = '#39'N'#39
      'order by PRO_COD'
      '')
    ValidateWithMask = True
    Left = 192
    Top = 184
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'CLIN_ID'
        ParamType = ptUnknown
      end>
    object Q_PRODPRO_COD: TStringField
      DisplayLabel = 'Código'
      DisplayWidth = 13
      FieldName = 'PRO_COD'
      Origin = 'NBFDADOS.PRODUTO.PRO_COD'
      FixedChar = True
      Size = 16
    end
    object Q_PRODPRO_DESC: TStringField
      DisplayWidth = 45
      FieldName = 'PRO_DESC'
      Origin = 'NBFDADOS.PRODUTO.PRO_DESC'
      FixedChar = True
      Size = 40
    end
    object Q_PRODPRO_QTDE_PALLET: TIntegerField
      DisplayLabel = 'Qtde.PALLET'
      DisplayWidth = 6
      FieldName = 'PRO_QTDE_PALLET'
      Origin = 'NBFDADOS.PRODUTO.PRO_QTDE_PALLET'
      Visible = False
    end
    object Q_PRODPRO_PESO: TFloatField
      DisplayLabel = 'Peso'
      DisplayWidth = 6
      FieldName = 'PRO_PESO'
      Origin = 'NBFDADOS.PRODUTO.PRO_PESO'
      Visible = False
    end
    object Q_PRODPRO_VOLUME: TFloatField
      DisplayLabel = 'Volume'
      DisplayWidth = 10
      FieldName = 'PRO_VOLUME'
      Origin = 'NBFDADOS.PRODUTO.PRO_VOLUME'
      Visible = False
    end
    object Q_PRODPRO_VOLUME_PALLET: TFloatField
      DisplayLabel = 'Volume PALLET'
      DisplayWidth = 10
      FieldName = 'PRO_VOLUME_PALLET'
      Origin = 'NBFDADOS.PRODUTO.PRO_VOLUME_PALLET'
      Visible = False
    end
    object Q_PRODPRO_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'PRO_ID'
      Origin = 'NBFDADOS.PRODUTO.PRO_ID'
      Visible = False
    end
    object Q_PRODCLIN_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'CLIN_ID'
      Origin = 'NBFDADOS.PRODUTO.CLIN_ID'
      Visible = False
    end
    object Q_PRODTPRO_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'TPRO_ID'
      Origin = 'NBFDADOS.PRODUTO.TPRO_ID'
      Visible = False
    end
    object Q_PRODUVEN_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'UVEN_ID'
      Origin = 'NBFDADOS.PRODUTO.UVEN_ID'
      Visible = False
    end
    object Q_PRODPRO_PESO_LIQ: TFloatField
      FieldName = 'PRO_PESO_LIQ'
      Origin = 'NBFDADOS.PRODUTO.PRO_PESO_LIQ'
    end
  end
  object DS_PROD: TwwDataSource
    DataSet = Q_PROD
    Left = 192
    Top = 232
  end
  object Q_AUX2: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    ValidateWithMask = True
    Left = 40
    Top = 313
  end
  object STP_NFA: TwwStoredProc
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    StoredProcName = 'dbo.STP_RETORNOARMAZEM'
    ValidateWithMask = True
    Left = 361
    Top = 224
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Result'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = '@GERA_NFRS'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@CH'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@NFI_TRANS'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@DEST_CLI'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@CLIN3_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@CFA_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@CTT_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@OSNOVA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@NFI_CODINOVO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@NFE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@OUTRA_OS'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@OBS'
        ParamType = ptInput
      end>
  end
  object STP_TPDO_TPOS_OS: TwwStoredProc
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    StoredProcName = 'dbo.STP_TPDOC_TPOS_OS'
    ValidateWithMask = True
    Left = 360
    Top = 280
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Result'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = '@OS'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@TOS'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@ADMITE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@PROCEDENCIA'
        ParamType = ptInput
      end>
  end
  object STP_NF: TwwStoredProc
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    StoredProcName = 'dbo.STP_CALCNOTA'
    ValidateWithMask = True
    Left = 358
    Top = 332
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Result'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = '@NF'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@CFO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@CLIN_ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@GERATPROD'
        ParamType = ptInput
      end>
  end
  object Q_AUX3: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    ValidateWithMask = True
    Left = 40
    Top = 368
  end
  object qrAtualizaSaldo: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      
        'update nf_itens set INF_QTDERETORNADASALDO = (INF_QTDE - case wh' +
        'en INF_QTDERETORNADA is null then 0 else INF_QTDERETORNADA end )' +
        '   '
      'where nfi_codi in '
      '('
      '         Select nfi_codi '
      '         from nf '
      '         where  '
      '         convert(Char(10),NFI_DEMI,112) >= :data1'
      '         and convert(Char(10),NFI_DEMI,112) <= :data2'
      ''
      ')')
    ValidateWithMask = True
    Left = 688
    Top = 333
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'data1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data2'
        ParamType = ptUnknown
      end>
  end
  object qrParams: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'select PAR_UF_SIGLA from PARAMETRO')
    ValidateWithMask = True
    Left = 184
    Top = 386
    object qrParamsPAR_UF_SIGLA: TStringField
      FieldName = 'PAR_UF_SIGLA'
      Origin = 'NBFDADOS.PARAMETRO.PAR_UF_SIGLA'
      FixedChar = True
      Size = 2
    end
  end
end
