object FNFRetornoSimb: TFNFRetornoSimb
  Left = 235
  Top = 88
  Width = 872
  Height = 577
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
  object lblNotaId: TLabel
    Left = 816
    Top = 136
    Width = 6
    Height = 13
    Caption = '0'
    Visible = False
  end
  object Panel3: TPanel
    Left = 2
    Top = 0
    Width = 793
    Height = 31
    BevelInner = bvLowered
    TabOrder = 0
    object SpeedButton3: TSpeedButton
      Left = 760
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
      Width = 331
      Height = 25
      Caption = 'Nota Fiscal Retorno Simbólico'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -21
      Font.Name = 'Georgia'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 2
    Top = 32
    Width = 793
    Height = 511
    BevelInner = bvLowered
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 321
      Width = 388
      Height = 15
      Caption = 
        'Produtos que não atendem a todas as NFS, qtde. em NFE insuficien' +
        'te'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 546
      Top = 321
      Width = 161
      Height = 15
      Caption = 'NFS para o Produto sem NFE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label47: TLabel
      Left = 720
      Top = 206
      Width = 41
      Height = 15
      AutoSize = False
      Color = clRed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clAqua
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label48: TLabel
      Left = 700
      Top = 222
      Width = 80
      Height = 14
      Caption = 'NFS sem Qtde.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 691
      Top = 238
      Width = 98
      Height = 14
      Caption = 'suficiente em NFE'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 5
      Top = 52
      Width = 785
      Height = 18
      Alignment = taCenter
      AutoSize = False
      Caption = 
        'Esta rotina será sempre executada na ordem crescente de Data de ' +
        'Emissão.'
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object GroupBox6: TGroupBox
      Left = 4
      Top = 2
      Width = 785
      Height = 48
      Caption = 'Seleção de Filtros'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Label5: TLabel
        Left = 433
        Top = 20
        Width = 44
        Height = 15
        Caption = 'Período'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 561
        Top = 20
        Width = 18
        Height = 15
        Caption = 'até'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label20: TLabel
        Left = 5
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
      object SpeedButton1: TSpeedButton
        Left = 671
        Top = 11
        Width = 108
        Height = 28
        Hint = 'Visualizar Relatório'
        Caption = 'Pesquisar NF'#39's'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
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
        OnClick = SpeedButton1Click
      end
      object MaskEdit1: TMaskEdit
        Left = 480
        Top = 16
        Width = 76
        Height = 22
        AutoSize = False
        BorderStyle = bsNone
        CharCase = ecUpperCase
        EditMask = '!99/99/9999;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 1
        Text = '  /  /    '
        OnEnter = MaskEdit1Enter
        OnExit = MaskEdit1Exit
      end
      object MaskEdit2: TMaskEdit
        Left = 585
        Top = 16
        Width = 76
        Height = 22
        BorderStyle = bsNone
        CharCase = ecUpperCase
        EditMask = '!99/99/9999;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 2
        Text = '  /  /    '
        OnEnter = MaskEdit2Enter
        OnExit = MaskEdit2Exit
      end
      object wwDBLookupCombo4: TwwDBLookupCombo
        Left = 72
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
        OnEnter = wwDBLookupCombo4Enter
        OnExit = wwDBLookupCombo4Exit
      end
    end
    object wwDBGrid4: TwwDBGrid
      Left = 700
      Top = -222
      Width = 685
      Height = 234
      Selected.Strings = (
        'NFI_MARCADOR_NFRS'#9'1'#9' '#9'F'
        'NFI_NUMERO'#9'10'#9'Número'#9'F'
        'NFI_DEMI'#9'9'#9'Dt. Emissão'#9'F'
        'CLIF_RAZA'#9'40'#9'Cliente Final'#9'F'
        'OS_Id'#9'9'#9'Ordem Serviço'#9'F')
      IniAttributes.FileName = 'delphi32.ini'
      IniAttributes.SectionName = 'FNFDBG_INFI'
      IniAttributes.Delimiter = ';;'
      TitleColor = clBlue
      FixedCols = 0
      ShowHorzScrollBar = True
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      KeyOptions = [dgEnterToTab]
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
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
      Visible = False
      OnCalcCellColors = wwDBGrid4CalcCellColors
      OnDblClick = wwDBGrid4DblClick
      FooterColor = clInactiveCaption
      FooterCellColor = clGrayText
    end
    object BitBtn3: TBitBtn
      Left = 709
      Top = 176
      Width = 62
      Height = 25
      Hint = 'Checagem de Notas Fiscais de Saída'
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
    object RadioGroup1: TRadioGroup
      Left = 690
      Top = 71
      Width = 99
      Height = 99
      Caption = 'Ordenação'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ItemIndex = 0
      Items.Strings = (
        'Data Emissão'
        'Número NF                 '
        'Ordem Serviço           '
        'Cliente Final')
      ParentFont = False
      TabOrder = 3
      OnClick = RadioGroup1Click
    end
    object wwDBGrid1: TwwDBGrid
      Left = 4
      Top = 342
      Width = 536
      Height = 166
      Selected.Strings = (
        'PRO_DESC'#9'40'#9'Descrição'#9'F'
        'PRO_COD'#9'8'#9'Código'#9'F'
        'QTDE_NFS'#9'10'#9'Qtde. em NFS'#9'F'
        'QTDE_NFE'#9'10'#9'Qtde. em NFE'#9'F')
      IniAttributes.FileName = 'delphi32.ini'
      IniAttributes.SectionName = 'FNFDBG_INFI'
      IniAttributes.Delimiter = ';;'
      TitleColor = clBlue
      FixedCols = 0
      ShowHorzScrollBar = True
      Color = clWhite
      DataSource = DS_NFRS
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      KeyOptions = [dgEnterToTab]
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      ParentFont = False
      TabOrder = 4
      TitleAlignment = taCenter
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWhite
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = [fsBold]
      TitleLines = 1
      TitleButtons = False
      FooterColor = clInactiveCaption
      FooterCellColor = clGrayText
    end
    object wwDBGrid2: TwwDBGrid
      Left = 542
      Top = 343
      Width = 248
      Height = 165
      Selected.Strings = (
        'NFI_DEMI'#9'9'#9'Dt. Emissão'
        'NFI_NUMERO'#9'9'#9'NF'
        'QTDE_NFS'#9'10'#9'Quantidade')
      IniAttributes.FileName = 'delphi32.ini'
      IniAttributes.SectionName = 'FNFDBG_INFI'
      IniAttributes.Delimiter = ';;'
      TitleColor = clBlue
      FixedCols = 0
      ShowHorzScrollBar = True
      Color = clWhite
      DataSource = DS_NFRS2
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      KeyOptions = [dgEnterToTab]
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      ParentFont = False
      TabOrder = 5
      TitleAlignment = taCenter
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWhite
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = [fsBold]
      TitleLines = 1
      TitleButtons = False
      OnCalcCellColors = wwDBGrid2CalcCellColors
      FooterColor = clInactiveCaption
      FooterCellColor = clGrayText
    end
    object BitBtn1: TBitBtn
      Left = 709
      Top = 264
      Width = 62
      Height = 26
      Hint = 'Geração de Nota Fiscal de Retorno Simbólico'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
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
    object RadioGroup2: TRadioGroup
      Left = 403
      Top = 309
      Width = 137
      Height = 32
      Caption = 'Ordenação'
      Columns = 2
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ItemIndex = 1
      Items.Strings = (
        'Descrição'
        'Código')
      ParentFont = False
      TabOrder = 7
      OnClick = RadioGroup2Click
    end
    object Grid: TwwDBGrid
      Left = 3
      Top = 97
      Width = 686
      Height = 194
      Selected.Strings = (
        'NFI_MARCADOR_NFRS'#9'5'#9' Seleção'#9'F'#9
        'NFI_NUMERO'#9'8'#9'Número'#9'F'#9
        'NFI_DEMI'#9'9'#9'Dt. Emissão'#9'F'#9
        'CLIF_RAZA'#9'38'#9'Cliente Final'#9'F'#9
        'OS_Id'#9'9'#9'Ordem Serviço'#9'F'#9)
      IniAttributes.FileName = 'delphi32.ini'
      IniAttributes.SectionName = 'FPcPGrid'
      IniAttributes.Delimiter = ';;'
      TitleColor = clBlue
      FixedCols = 0
      ShowHorzScrollBar = True
      EditControlOptions = [ecoCheckboxSingleClick, ecoSearchOwnerForm]
      Color = clWhite
      DataSource = DS_NF2
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      KeyOptions = []
      Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      ParentFont = False
      TabOrder = 8
      TitleAlignment = taCenter
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWhite
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = [fsBold]
      TitleLines = 1
      TitleButtons = False
      OnCalcCellColors = GridCalcCellColors
      FooterColor = clInactiveCaption
      FooterCellColor = clGrayText
    end
    object Animate1: TAnimate
      Left = 32
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
      Left = 32
      Top = 120
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
      TabOrder = 10
      Visible = False
    end
    object btNem: TBitBtn
      Left = 34
      Top = 73
      Width = 30
      Height = 24
      Hint = 'Desmarcar Todos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 11
      OnClick = btNemClick
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
    end
    object BitBtn2: TBitBtn
      Left = 4
      Top = 73
      Width = 30
      Height = 24
      Hint = 'Selecionar Todos'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 12
      OnClick = BitBtn2Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
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
    end
    object btnAtualizaSaldo: TButton
      Left = 392
      Top = 296
      Width = 153
      Height = 25
      Caption = 'AtualizaSaldo'
      TabOrder = 13
      Visible = False
      OnClick = btnAtualizaSaldoClick
    end
    object btn1: TButton
      Left = 688
      Top = 296
      Width = 105
      Height = 25
      Caption = 'Gera NF individual'
      Enabled = False
      TabOrder = 14
      OnClick = btn1Click
    end
  end
  object Q_NF2: TwwQuery
    CachedUpdates = True
    AfterPost = Q_NF2AfterPost
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    RequestLive = True
    SQL.Strings = (
      'SELECT A.NFI_DEMI,A.NFI_DTENTREGA,'
      'A.NFI_CODI,'
      'A.NFI_DEST_CLI,'
      'A.NFI_NUMERO,'
      'A.NFI_MARCADOR_NFRS,A.OS_Id,A.NFI_NFRS_REJEITADA,'
      'C.CLIF_RAZA'
      ' FROM  NF A,OS B,CLIENTEFINAL C where '
      ' A.OS_ID = B.OS_ID and'
      ' A.TDOC_ID = 1 and '
      ' B.TOS_ID <> 5 and '
      ' A.NFI_DEST_CLI = C.CLIF_ID')
    UpdateObject = UPD_NF2
    ControlType.Strings = (
      'NFI_MARCADOR_NFRS;CheckBox;*;')
    ValidateWithMask = True
    Left = 276
    Top = 168
    object Q_NF2NFI_MARCADOR_NFRS: TStringField
      DisplayLabel = ' Seleção'
      DisplayWidth = 5
      FieldName = 'NFI_MARCADOR_NFRS'
      Origin = 'NBFDADOS.NF.NFI_MARCADOR_NFRS'
      OnChange = Q_NF2NFI_MARCADOR_NFRSChange
      FixedChar = True
      Size = 1
    end
    object Q_NF2NFI_NUMERO: TStringField
      Alignment = taRightJustify
      DisplayLabel = 'Número'
      DisplayWidth = 8
      FieldName = 'NFI_NUMERO'
      Origin = 'NBFDADOS.NF.NFI_NUMERO'
      FixedChar = True
      Size = 10
    end
    object Q_NF2NFI_DEMI: TDateTimeField
      DisplayLabel = 'Dt. Emissão'
      DisplayWidth = 9
      FieldName = 'NFI_DEMI'
      Origin = 'NBFDADOS.NF.NFI_DEMI'
    end
    object Q_NF2CLIF_RAZA: TStringField
      DisplayLabel = 'Cliente Final'
      DisplayWidth = 38
      FieldName = 'CLIF_RAZA'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_RAZA'
      FixedChar = True
      Size = 50
    end
    object Q_NF2OS_Id: TIntegerField
      DisplayLabel = 'Ordem Serviço'
      DisplayWidth = 9
      FieldName = 'OS_Id'
    end
    object Q_NF2NFI_DTENTREGA: TDateTimeField
      DisplayLabel = 'Dt. Entrega'
      DisplayWidth = 9
      FieldName = 'NFI_DTENTREGA'
      Origin = 'NBFDADOS.NF.NFI_DTENTREGA'
      Visible = False
    end
    object Q_NF2NFI_DEST_CLI: TIntegerField
      FieldName = 'NFI_DEST_CLI'
      Origin = 'NBFDADOS.NF.NFI_DEST_CLI'
      Visible = False
    end
    object Q_NF2NFI_CODI: TAutoIncField
      FieldName = 'NFI_CODI'
      Origin = 'NBFDADOS.NF.NFI_CODI'
      Visible = False
    end
    object Q_NF2NFI_NFRS_REJEITADA: TStringField
      FieldName = 'NFI_NFRS_REJEITADA'
      Visible = False
      FixedChar = True
      Size = 1
    end
  end
  object DS_NF2: TwwDataSource
    DataSet = Q_NF2
    Left = 272
    Top = 266
  end
  object UPD_NF2: TUpdateSQL
    ModifySQL.Strings = (
      'update NF'
      'set'
      '  NFI_DEMI = :NFI_DEMI,'
      '  NFI_DTENTREGA = :NFI_DTENTREGA,'
      '  NFI_DEST_CLI = :NFI_DEST_CLI,'
      '  NFI_NUMERO = :NFI_NUMERO,'
      '  NFI_MARCADOR_NFRS = :NFI_MARCADOR_NFRS'
      'where'
      '  NFI_CODI = :OLD_NFI_CODI')
    InsertSQL.Strings = (
      'insert into NF'
      '  (NFI_DEMI, NFI_DTENTREGA, NFI_DEST_CLI, NFI_NUMERO, '
      'NFI_MARCADOR_NFRS)'
      'values'
      '  (:NFI_DEMI, :NFI_DTENTREGA, :NFI_DEST_CLI, :NFI_NUMERO, '
      ':NFI_MARCADOR_NFRS)')
    DeleteSQL.Strings = (
      'delete from NF'
      'where'
      '  NFI_CODI = :OLD_NFI_CODI')
    Left = 276
    Top = 212
  end
  object Q_CLINBF: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select  CLIN_ID,CLIN_RAZA,CLIN_CGCCPF,UF_SIGLA'
      '  from CLIENTENBF where'
      '(CLIN_CONTRATO <> '#39'I'#39' and CLIN_CONTRATO <> '#39'R'#39') '
      'order by CLIN_RAZA ')
    ValidateWithMask = True
    Left = 162
    Top = 144
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
    object Q_CLINBFCLIN_CGCCPF: TStringField
      FieldName = 'CLIN_CGCCPF'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_CGCCPF'
      FixedChar = True
      Size = 15
    end
    object Q_CLINBFUF_SIGLA: TStringField
      FieldName = 'UF_SIGLA'
      Origin = 'NBFDADOS.CLIENTENBF.UF_SIGLA'
      FixedChar = True
      Size = 2
    end
  end
  object DS_CLINBF: TwwDataSource
    DataSet = Q_CLINBF
    Left = 162
    Top = 194
  end
  object Q_AUX: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    ValidateWithMask = True
    Left = 160
    Top = 258
  end
  object STP_NFRS: TwwStoredProc
    ObjectView = True
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    StoredProcName = 'dbo.STP_RETORNOSIMBOLICO'
    ValidateWithMask = True
    Left = 346
    Top = 263
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
        Name = '@CLIN_ID2'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@CNPJ'
        ParamType = ptInput
      end>
  end
  object Q_NFRS: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'SELECT A.PRO_ID,'
      'A.QTDE_NFe,'
      'SUM(A.QTDE_NFS) as QTDE_NFS,'
      'B.PRO_DESC,B.PRO_COD '
      'FROM NFRS_PRODUTO A,PRODUTO B WHERE'
      ' A.PRO_ID = B.PRO_ID and'
      'NFRS_REJEITADA = '#39'*'#39'    group by'
      'B.PRO_DESC,B.PRO_COD,A.PRO_ID,A.QTDE_NFe'
      'order by B.PRO_COD')
    ValidateWithMask = True
    Left = 472
    Top = 104
    object Q_NFRSPRO_DESC: TStringField
      DisplayLabel = 'Descrição'
      DisplayWidth = 40
      FieldName = 'PRO_DESC'
      Origin = 'NBFDADOS.PRODUTO.PRO_DESC'
      FixedChar = True
      Size = 40
    end
    object Q_NFRSPRO_COD: TStringField
      Alignment = taRightJustify
      DisplayLabel = 'Código'
      DisplayWidth = 8
      FieldName = 'PRO_COD'
      Origin = 'NBFDADOS.PRODUTO.PRO_COD'
      FixedChar = True
      Size = 16
    end
    object Q_NFRSQTDE_NFS: TFloatField
      DisplayLabel = 'Qtde. em NFS'
      DisplayWidth = 10
      FieldName = 'QTDE_NFS'
      Origin = 'NBFDADOS.NFRS_PRODUTO.QTDE_NFS'
      DisplayFormat = '0.000'
      EditFormat = '0.000'
    end
    object Q_NFRSQTDE_NFE: TFloatField
      DisplayLabel = 'Qtde. em NFE'
      DisplayWidth = 10
      FieldName = 'QTDE_NFE'
      Origin = 'NBFDADOS.NFRS_PRODUTO.QTDE_NFE'
      DisplayFormat = '0.000'
      EditFormat = '0.000'
    end
    object Q_NFRSPRO_ID: TIntegerField
      FieldName = 'PRO_ID'
      Origin = 'NBFDADOS.NFRS_PRODUTO.PRO_ID'
      Visible = False
    end
  end
  object DS_NFRS: TwwDataSource
    DataSet = Q_NFRS
    Left = 479
    Top = 154
  end
  object Q_NFRS2: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    DataSource = DS_NFRS
    SQL.Strings = (
      'SELECT B.NFRS_REJEITADA,'
      'B.PRO_Id,B.QTDE_NFS,C.NFI_NUMERO,C.NFI_DEMI'
      'FROM NFRS_PRODUTO B,NF C '
      'WHERE '
      'C.NFI_MARCADOR_NFRS = '#39'*'#39' and'
      'C.NFI_CODI = B.NFI_CODI_SAI  and '
      'B.PRO_ID = :PRO_ID')
    ValidateWithMask = True
    Left = 540
    Top = 104
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PRO_ID'
        ParamType = ptUnknown
      end>
    object Q_NFRS2NFI_DEMI: TDateTimeField
      DisplayLabel = 'Dt. Emissão'
      DisplayWidth = 9
      FieldName = 'NFI_DEMI'
    end
    object Q_NFRS2NFI_NUMERO: TStringField
      Alignment = taRightJustify
      DisplayLabel = 'NF'
      DisplayWidth = 9
      FieldName = 'NFI_NUMERO'
      FixedChar = True
      Size = 10
    end
    object Q_NFRS2QTDE_NFS: TFloatField
      DisplayLabel = 'Quantidade'
      DisplayWidth = 10
      FieldName = 'QTDE_NFS'
      DisplayFormat = '0.000'
      EditFormat = '0.000'
    end
    object Q_NFRS2PRO_Id: TIntegerField
      DisplayWidth = 10
      FieldName = 'PRO_Id'
      Visible = False
    end
    object Q_NFRS2NFRS_REJEITADA: TStringField
      FieldName = 'NFRS_REJEITADA'
      Visible = False
      FixedChar = True
      Size = 1
    end
  end
  object DS_NFRS2: TwwDataSource
    DataSet = Q_NFRS2
    Left = 544
    Top = 154
  end
  object STP_NF: TwwStoredProc
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    StoredProcName = 'dbo.STP_CALCNOTA'
    ValidateWithMask = True
    Left = 614
    Top = 172
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
  object Q_AUX2: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    ValidateWithMask = True
    Left = 160
    Top = 314
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
    Left = 512
    Top = 269
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
  object qrAux: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    Left = 34
    Top = 400
  end
  object qrCliente: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <
      item
        Name = 'CGC'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 15
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM CLIENTEFINAL (NOLOCK)'
      'WHERE CLIF_CGCCPF LIKE :CGC')
    Left = 34
    Top = 448
    object qrClienteCLIF_ID: TAutoIncField
      FieldName = 'CLIF_ID'
      ReadOnly = True
    end
    object qrClienteCLIF_PESSOA: TStringField
      FieldName = 'CLIF_PESSOA'
      Size = 1
    end
    object qrClienteCLIF_RAZA: TStringField
      FieldName = 'CLIF_RAZA'
      Size = 50
    end
    object qrClienteCLIF_NOME: TStringField
      FieldName = 'CLIF_NOME'
      Size = 30
    end
    object qrClienteCLIF_CGCCPF: TStringField
      FieldName = 'CLIF_CGCCPF'
      Size = 15
    end
    object qrClienteCLIF_INSCRG: TStringField
      FieldName = 'CLIF_INSCRG'
      Size = 15
    end
    object qrClienteCLIF_ENDERECO: TStringField
      FieldName = 'CLIF_ENDERECO'
      Size = 50
    end
    object qrClienteCLIF_ENDERECO_COMPL: TStringField
      FieldName = 'CLIF_ENDERECO_COMPL'
    end
    object qrClienteCLIF_ENDERECO_BAIRRO: TStringField
      FieldName = 'CLIF_ENDERECO_BAIRRO'
      Size = 40
    end
    object qrClienteCLIF_MUNICIPIO: TStringField
      FieldName = 'CLIF_MUNICIPIO'
      Size = 40
    end
    object qrClienteCLIF_MUNICIPIO2: TStringField
      FieldName = 'CLIF_MUNICIPIO2'
      Size = 40
    end
    object qrClienteUF_SIGLA: TStringField
      FieldName = 'UF_SIGLA'
      Size = 2
    end
    object qrClienteCLIF_CEP: TStringField
      FieldName = 'CLIF_CEP'
      Size = 8
    end
    object qrClienteCLIF_TEL1: TStringField
      FieldName = 'CLIF_TEL1'
      Size = 11
    end
    object qrClienteCLIF_TEL2: TStringField
      FieldName = 'CLIF_TEL2'
      Size = 11
    end
    object qrClienteCLIF_FAX: TStringField
      FieldName = 'CLIF_FAX'
      Size = 11
    end
    object qrClienteCLIF_EMAIL: TStringField
      FieldName = 'CLIF_EMAIL'
      Size = 60
    end
    object qrClienteCLIF_CONTATO: TStringField
      FieldName = 'CLIF_CONTATO'
      Size = 50
    end
    object qrClienteMUN_ID: TIntegerField
      FieldName = 'MUN_ID'
    end
    object qrClienteCLIF_CARGAPALLET: TStringField
      FieldName = 'CLIF_CARGAPALLET'
      Size = 1
    end
    object qrClienteCLIE_ENDERECO: TStringField
      FieldName = 'CLIE_ENDERECO'
      Size = 50
    end
    object qrClienteCLIE_ENDERECO_COMPL: TStringField
      FieldName = 'CLIE_ENDERECO_COMPL'
    end
    object qrClienteCLIE_ENDERECO_BAIRRO: TStringField
      FieldName = 'CLIE_ENDERECO_BAIRRO'
      Size = 40
    end
    object qrClienteCLIE_MUNICIPIO: TStringField
      FieldName = 'CLIE_MUNICIPIO'
      Size = 40
    end
    object qrClienteCLIE_MUN_ID: TIntegerField
      FieldName = 'CLIE_MUN_ID'
    end
    object qrClienteCLIE_UF_SIGLA: TStringField
      FieldName = 'CLIE_UF_SIGLA'
      Size = 2
    end
    object qrClienteCLIE_CEP: TStringField
      FieldName = 'CLIE_CEP'
      Size = 8
    end
    object qrClienteCLI_HORARIO: TStringField
      FieldName = 'CLI_HORARIO'
      Size = 5
    end
    object qrClienteCLI_VL_DESCARGA: TFloatField
      FieldName = 'CLI_VL_DESCARGA'
    end
    object qrClienteCLI_OBS: TStringField
      FieldName = 'CLI_OBS'
      Size = 4000
    end
    object qrClienteCLI_UNCOBRACA: TStringField
      FieldName = 'CLI_UNCOBRACA'
      Size = 50
    end
    object qrClienteIBGE_ID: TIntegerField
      FieldName = 'IBGE_ID'
    end
  end
  object qrNF: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT TOP 0 * FROM NF (NOLOCK)')
    Left = 90
    Top = 464
    object qrNFNFI_CODI: TAutoIncField
      FieldName = 'NFI_CODI'
      ReadOnly = True
    end
    object qrNFNFI_NUMERO: TStringField
      FieldName = 'NFI_NUMERO'
      Size = 10
    end
    object qrNFTDOC_ID: TIntegerField
      FieldName = 'TDOC_ID'
    end
    object qrNFNFI_EMIT_ORIG: TStringField
      FieldName = 'NFI_EMIT_ORIG'
      Size = 1
    end
    object qrNFNFI_EMIT_CLI: TIntegerField
      FieldName = 'NFI_EMIT_CLI'
    end
    object qrNFNFI_DEST_ORIG: TStringField
      FieldName = 'NFI_DEST_ORIG'
      Size = 1
    end
    object qrNFNFI_DEST_CLI: TIntegerField
      FieldName = 'NFI_DEST_CLI'
    end
    object qrNFNFI_DEST_NOME: TStringField
      FieldName = 'NFI_DEST_NOME'
      Size = 30
    end
    object qrNFNFI_DEST_RAZA: TStringField
      FieldName = 'NFI_DEST_RAZA'
      Size = 50
    end
    object qrNFNFI_DEST_ENDERECO: TStringField
      FieldName = 'NFI_DEST_ENDERECO'
      Size = 50
    end
    object qrNFNFI_DEST_COMPL: TStringField
      FieldName = 'NFI_DEST_COMPL'
    end
    object qrNFNFI_DEST_BAIRRO: TStringField
      FieldName = 'NFI_DEST_BAIRRO'
      Size = 40
    end
    object qrNFNFI_DEST_UF_SIGLA: TStringField
      FieldName = 'NFI_DEST_UF_SIGLA'
      Size = 2
    end
    object qrNFNFI_DEST_CEP: TStringField
      FieldName = 'NFI_DEST_CEP'
      Size = 8
    end
    object qrNFNFI_DEST_TEL: TStringField
      FieldName = 'NFI_DEST_TEL'
      Size = 11
    end
    object qrNFNFI_DEST_FAX: TStringField
      FieldName = 'NFI_DEST_FAX'
      Size = 11
    end
    object qrNFNFI_DEST_CGC: TStringField
      FieldName = 'NFI_DEST_CGC'
      Size = 14
    end
    object qrNFNFI_DEST_INSCRG: TStringField
      FieldName = 'NFI_DEST_INSCRG'
    end
    object qrNFNFI_DEST_INSCTRB: TStringField
      FieldName = 'NFI_DEST_INSCTRB'
    end
    object qrNFNFI_DEST_PESS: TStringField
      FieldName = 'NFI_DEST_PESS'
      FixedChar = True
      Size = 1
    end
    object qrNFNFI_VDES: TFloatField
      FieldName = 'NFI_VDES'
    end
    object qrNFNFI_VFRE: TFloatField
      FieldName = 'NFI_VFRE'
    end
    object qrNFNFI_VSEG: TFloatField
      FieldName = 'NFI_VSEG'
    end
    object qrNFNFI_BIPI: TFloatField
      FieldName = 'NFI_BIPI'
    end
    object qrNFNFI_VIPI: TFloatField
      FieldName = 'NFI_VIPI'
    end
    object qrNFNFI_BICM: TFloatField
      FieldName = 'NFI_BICM'
    end
    object qrNFNFI_VICM: TFloatField
      FieldName = 'NFI_VICM'
    end
    object qrNFNFI_VMER: TFloatField
      FieldName = 'NFI_VMER'
    end
    object qrNFNFI_TOTA: TFloatField
      FieldName = 'NFI_TOTA'
    end
    object qrNFNFI_DSAI: TDateTimeField
      FieldName = 'NFI_DSAI'
    end
    object qrNFNFI_HSAI: TDateTimeField
      FieldName = 'NFI_HSAI'
    end
    object qrNFNFI_TRAN: TStringField
      FieldName = 'NFI_TRAN'
      Size = 50
    end
    object qrNFNFI_PLAC: TStringField
      FieldName = 'NFI_PLAC'
      Size = 50
    end
    object qrNFNFI_UF_SIGLA: TStringField
      FieldName = 'NFI_UF_SIGLA'
      Size = 2
    end
    object qrNFNFI_MARC: TStringField
      FieldName = 'NFI_MARC'
      Size = 15
    end
    object qrNFNFI_QTDE: TIntegerField
      FieldName = 'NFI_QTDE'
    end
    object qrNFNFI_ESPE: TStringField
      FieldName = 'NFI_ESPE'
      Size = 15
    end
    object qrNFNFI_PLIQ: TFloatField
      FieldName = 'NFI_PLIQ'
    end
    object qrNFNFI_PBRU: TFloatField
      FieldName = 'NFI_PBRU'
    end
    object qrNFNFI_VOL: TFloatField
      FieldName = 'NFI_VOL'
    end
    object qrNFNFI_TFRE: TStringField
      FieldName = 'NFI_TFRE'
      Size = 1
    end
    object qrNFNFI_DEMI: TDateTimeField
      FieldName = 'NFI_DEMI'
    end
    object qrNFCFA_ID: TIntegerField
      FieldName = 'CFA_ID'
    end
    object qrNFOS_ID: TIntegerField
      FieldName = 'OS_ID'
    end
    object qrNFMUN_ID: TIntegerField
      FieldName = 'MUN_ID'
    end
    object qrNFNFI_MARCADOR: TStringField
      FieldName = 'NFI_MARCADOR'
      Size = 1
    end
    object qrNFNFI_DTENTREGA: TDateTimeField
      FieldName = 'NFI_DTENTREGA'
    end
    object qrNFMANI_ID: TIntegerField
      FieldName = 'MANI_ID'
    end
    object qrNFMANI_ORDEM: TIntegerField
      FieldName = 'MANI_ORDEM'
    end
    object qrNFNFI_MOVESTQ: TStringField
      FieldName = 'NFI_MOVESTQ'
      Size = 1
    end
    object qrNFNFI_TRANS: TStringField
      FieldName = 'NFI_TRANS'
      Size = 1
    end
    object qrNFTEXTO_LIVRE: TMemoField
      FieldName = 'TEXTO_LIVRE'
      BlobType = ftMemo
    end
    object qrNFNFI_DTENTREGA_FIM: TDateTimeField
      FieldName = 'NFI_DTENTREGA_FIM'
    end
    object qrNFNFI_ENTREGA: TStringField
      FieldName = 'NFI_ENTREGA'
      Size = 1
    end
    object qrNFNFI_COBRAR: TStringField
      FieldName = 'NFI_COBRAR'
      Size = 1
    end
    object qrNFNFI_CLONE: TStringField
      FieldName = 'NFI_CLONE'
      Size = 1
    end
    object qrNFNFI_QTDEPALLET: TIntegerField
      FieldName = 'NFI_QTDEPALLET'
    end
    object qrNFNFI_QTDEUV: TFloatField
      FieldName = 'NFI_QTDEUV'
    end
    object qrNFTPRO_ID: TIntegerField
      FieldName = 'TPRO_ID'
    end
    object qrNFNFI_MARCADOR_NFRS: TStringField
      FieldName = 'NFI_MARCADOR_NFRS'
      Size = 1
    end
    object qrNFNFI_NFRS_REJEITADA: TStringField
      FieldName = 'NFI_NFRS_REJEITADA'
      Size = 1
    end
    object qrNFNFI_RETORNADA: TStringField
      FieldName = 'NFI_RETORNADA'
      Size = 1
    end
    object qrNFNFI_GEROUNFE: TStringField
      FieldName = 'NFI_GEROUNFE'
      Size = 1
    end
    object qrNFNFI_REDESPACHO: TStringField
      FieldName = 'NFI_REDESPACHO'
      Size = 1
    end
    object qrNFORD_ID: TIntegerField
      FieldName = 'ORD_ID'
    end
    object qrNFTRANS_ID: TIntegerField
      FieldName = 'TRANS_ID'
    end
    object qrNFNFI_PRESTSERV: TStringField
      FieldName = 'NFI_PRESTSERV'
      Size = 25
    end
    object qrNFNFI_FATURADA: TStringField
      FieldName = 'NFI_FATURADA'
      Size = 10
    end
    object qrNFNFI_DISCRIM: TStringField
      FieldName = 'NFI_DISCRIM'
      Size = 2000
    end
    object qrNFFAT_ID: TIntegerField
      FieldName = 'FAT_ID'
    end
    object qrNFNFI_MARCAREEN: TStringField
      FieldName = 'NFI_MARCAREEN'
      Size = 1
    end
    object qrNFNFI_STATUS: TStringField
      FieldName = 'NFI_STATUS'
      Size = 1
    end
    object qrNFNFI_MARCAIMP: TStringField
      FieldName = 'NFI_MARCAIMP'
      Size = 1
    end
    object qrNFNFI_CODI_ORIGINOUNFRS: TIntegerField
      FieldName = 'NFI_CODI_ORIGINOUNFRS'
    end
    object qrNFNFI_LOAD: TStringField
      FieldName = 'NFI_LOAD'
      Size = 15
    end
    object qrNFNFI_SERIE: TStringField
      FieldName = 'NFI_SERIE'
      Size = 2
    end
    object qrNFNFI_MARCADOR_CROS: TStringField
      FieldName = 'NFI_MARCADOR_CROS'
      Size = 1
    end
    object qrNFNFI_EXCLUI_REEN: TStringField
      FieldName = 'NFI_EXCLUI_REEN'
      Size = 1
    end
    object qrNFNFI_MARCADOR_CTRCGEN: TStringField
      FieldName = 'NFI_MARCADOR_CTRCGEN'
      Size = 1
    end
    object qrNFNFI_GEROU_REENTREGA: TStringField
      FieldName = 'NFI_GEROU_REENTREGA'
      Size = 1
    end
    object qrNFBLOQUEIO: TStringField
      FieldName = 'BLOQUEIO'
      Size = 1
    end
    object qrNFSEL: TStringField
      FieldName = 'SEL'
      Size = 1
    end
    object qrNFCOD_EDI: TStringField
      FieldName = 'COD_EDI'
      Size = 2
    end
    object qrNFNFI_CODI_SIMB: TIntegerField
      FieldName = 'NFI_CODI_SIMB'
    end
  end
  object qrItensGeracao: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT A.PRO_ID,SUM(a.QTDE_NFS) AS QTDE,B.NFI_EMIT_CLI FROM'
      'NFRS_PRODUTO A,NF B (NOLOCK) where '
      
        '(CASE WHEN B.NFI_NFRS_REJEITADA IS NULL THEN '#39#39' ELSE B.NFI_NFRS_' +
        'REJEITADA END)  = '#39#39
      'and A.NFI_CODI_SAI = B.NFI_CODI '
      'group by a.PRO_ID,B.NFI_EMIT_CLI'
      'order by A.PRO_ID')
    Left = 186
    Top = 448
    object qrItensGeracaoPRO_ID: TIntegerField
      FieldName = 'PRO_ID'
    end
    object qrItensGeracaoQTDE: TFloatField
      FieldName = 'QTDE'
      ReadOnly = True
    end
    object qrItensGeracaoNFI_EMIT_CLI: TIntegerField
      FieldName = 'NFI_EMIT_CLI'
    end
  end
  object qrADDItem: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    SQL.Strings = (
      'SELECT TOP 0 * FROM NF_ITENS (NOLOCK)')
    Left = 202
    Top = 400
    object qrADDItemINF_CODI: TAutoIncField
      FieldName = 'INF_CODI'
      ReadOnly = True
    end
    object qrADDItemINF_ITEM: TIntegerField
      FieldName = 'INF_ITEM'
    end
    object qrADDItemNFI_CODI: TIntegerField
      FieldName = 'NFI_CODI'
    end
    object qrADDItemPRO_ID: TIntegerField
      FieldName = 'PRO_ID'
    end
    object qrADDItemPRO_COD: TStringField
      FieldName = 'PRO_COD'
      Size = 16
    end
    object qrADDItemPRO_DESC: TStringField
      FieldName = 'PRO_DESC'
      Size = 60
    end
    object qrADDItemINF_QTDE: TFloatField
      FieldName = 'INF_QTDE'
    end
    object qrADDItemINF_PUNI: TFloatField
      FieldName = 'INF_PUNI'
    end
    object qrADDItemINF_AIPI: TFloatField
      FieldName = 'INF_AIPI'
    end
    object qrADDItemINF_VIPI: TFloatField
      FieldName = 'INF_VIPI'
    end
    object qrADDItemINF_TOTA: TFloatField
      FieldName = 'INF_TOTA'
    end
    object qrADDItemINF_PESOLIQ: TFloatField
      FieldName = 'INF_PESOLIQ'
    end
    object qrADDItemINF_PESO: TFloatField
      FieldName = 'INF_PESO'
    end
    object qrADDItemINF_VOL: TFloatField
      FieldName = 'INF_VOL'
    end
    object qrADDItemINF_AICM: TFloatField
      FieldName = 'INF_AICM'
    end
    object qrADDItemINF_BICM: TFloatField
      FieldName = 'INF_BICM'
    end
    object qrADDItemINF_VICM: TFloatField
      FieldName = 'INF_VICM'
    end
    object qrADDItemUVEN_ID: TIntegerField
      FieldName = 'UVEN_ID'
    end
    object qrADDItemINF_QTDERETORNADA: TFloatField
      FieldName = 'INF_QTDERETORNADA'
    end
    object qrADDItemINF_NFE: TIntegerField
      FieldName = 'INF_NFE'
    end
    object qrADDItemINF_QTDERETORNADASALDO: TFloatField
      FieldName = 'INF_QTDERETORNADASALDO'
    end
    object qrADDItemESTQ_LOTE1: TStringField
      FieldName = 'ESTQ_LOTE1'
      Size = 10
    end
    object qrADDItemESTQ_LOTE1_QTDE: TFloatField
      FieldName = 'ESTQ_LOTE1_QTDE'
    end
    object qrADDItemESTQ_LOTE2: TStringField
      FieldName = 'ESTQ_LOTE2'
      Size = 10
    end
    object qrADDItemESTQ_LOTE2_QTDE: TFloatField
      FieldName = 'ESTQ_LOTE2_QTDE'
    end
    object qrADDItemINF_CST: TStringField
      FieldName = 'INF_CST'
      Size = 3
    end
  end
  object qrItensEntrada: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'PRO_ID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT  B.NFI_DEMI, A.NFI_CODI,A.INF_QTDE,A.INF_CODI,A.INF_PUNI,' +
        'A.INF_QTDERETORNADA, B.NFI_NUMERO from '
      'NF_ITENS A,NF B WHERE'
      'B.TDOC_Id = 2 and'
      'A.PRO_Id   = :PRO_ID and'
      'A.NFI_CODI = B.NFI_CODI and '
      '(A.INF_QTDERETORNADA < A.INF_QTDE) '
      'order by B.NFI_DEMI')
    Left = 290
    Top = 392
    object qrItensEntradaNFI_CODI: TIntegerField
      FieldName = 'NFI_CODI'
    end
    object qrItensEntradaINF_QTDE: TFloatField
      FieldName = 'INF_QTDE'
    end
    object qrItensEntradaINF_CODI: TAutoIncField
      FieldName = 'INF_CODI'
      ReadOnly = True
    end
    object qrItensEntradaINF_PUNI: TFloatField
      FieldName = 'INF_PUNI'
    end
    object qrItensEntradaINF_QTDERETORNADA: TFloatField
      FieldName = 'INF_QTDERETORNADA'
    end
    object qrItensEntradaNFI_NUMERO: TStringField
      FieldName = 'NFI_NUMERO'
      Size = 10
    end
    object qrItensEntradaNFI_DEMI: TDateTimeField
      FieldName = 'NFI_DEMI'
    end
  end
  object qrProduto: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <
      item
        Name = 'pro_id'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM PRODUTO'
      'where pro_id = :pro_id')
    Left = 490
    Top = 432
    object qrProdutoPRO_ID: TAutoIncField
      FieldName = 'PRO_ID'
      ReadOnly = True
    end
    object qrProdutoCLIN_ID: TIntegerField
      FieldName = 'CLIN_ID'
    end
    object qrProdutoPRO_DESC: TStringField
      FieldName = 'PRO_DESC'
      Size = 40
    end
    object qrProdutoTPRO_ID: TIntegerField
      FieldName = 'TPRO_ID'
    end
    object qrProdutoPRO_COD: TStringField
      FieldName = 'PRO_COD'
      Size = 16
    end
    object qrProdutoPRO_ORIGEM: TStringField
      FieldName = 'PRO_ORIGEM'
      Size = 1
    end
    object qrProdutoUVEN_ID: TIntegerField
      FieldName = 'UVEN_ID'
    end
    object qrProdutoUVEN_ID_EXP: TIntegerField
      FieldName = 'UVEN_ID_EXP'
    end
    object qrProdutoQTDE_UVUE: TFloatField
      FieldName = 'QTDE_UVUE'
    end
    object qrProdutoPRO_QTDE_PALLET: TIntegerField
      FieldName = 'PRO_QTDE_PALLET'
    end
    object qrProdutoPRO_QTDE_PALLETUV: TFloatField
      FieldName = 'PRO_QTDE_PALLETUV'
    end
    object qrProdutoPRO_PESO: TFloatField
      FieldName = 'PRO_PESO'
    end
    object qrProdutoPRO_VOLUME: TFloatField
      FieldName = 'PRO_VOLUME'
    end
    object qrProdutoPRO_VOLUME_PALLET: TFloatField
      FieldName = 'PRO_VOLUME_PALLET'
    end
    object qrProdutoPRO_ALTURA: TIntegerField
      FieldName = 'PRO_ALTURA'
    end
    object qrProdutoPRO_LASTRO: TIntegerField
      FieldName = 'PRO_LASTRO'
    end
    object qrProdutoPRO_VALIDDIAS: TIntegerField
      FieldName = 'PRO_VALIDDIAS'
    end
    object qrProdutoMARCADOR: TStringField
      FieldName = 'MARCADOR'
      Size = 1
    end
    object qrProdutoPRO_PESO_LIQ: TFloatField
      FieldName = 'PRO_PESO_LIQ'
    end
    object qrProdutoPRO_DESCONTINUA: TStringField
      FieldName = 'PRO_DESCONTINUA'
      Size = 1
    end
    object qrProdutoPRO_COMPR: TFloatField
      FieldName = 'PRO_COMPR'
    end
    object qrProdutoPRO_LARG: TFloatField
      FieldName = 'PRO_LARG'
    end
    object qrProdutoPRO_ALT: TFloatField
      FieldName = 'PRO_ALT'
    end
    object qrProdutoPRO_REDUZICMS: TFloatField
      FieldName = 'PRO_REDUZICMS'
    end
    object qrProdutoPRO_ISENCAO: TStringField
      FieldName = 'PRO_ISENCAO'
      Size = 1
    end
    object qrProdutoPRO_ICMS: TFloatField
      FieldName = 'PRO_ICMS'
    end
    object qrProdutoPRO_CST1: TStringField
      FieldName = 'PRO_CST1'
      Size = 7
    end
    object qrProdutoPRO_CST2: TStringField
      FieldName = 'PRO_CST2'
      Size = 7
    end
    object qrProdutoPRO_CST3: TStringField
      FieldName = 'PRO_CST3'
      Size = 7
    end
    object qrProdutoPRO_CST4: TStringField
      FieldName = 'PRO_CST4'
      Size = 7
    end
    object qrProdutoPRO_CST5: TStringField
      FieldName = 'PRO_CST5'
      Size = 7
    end
    object qrProdutoPRO_CST6: TStringField
      FieldName = 'PRO_CST6'
      Size = 7
    end
    object qrProdutoULTIMO_PRECO: TFloatField
      FieldName = 'ULTIMO_PRECO'
    end
  end
  object qrAux2: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    Left = 330
    Top = 472
  end
  object qrVerificaQtde: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    Left = 394
    Top = 424
  end
  object qrParametros: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    SQL.Strings = (
      'SELECT PAR_UF_SIGLA FROM PARAMETRO')
    Left = 42
    Top = 272
    object qrParametrosPAR_UF_SIGLA: TStringField
      FieldName = 'PAR_UF_SIGLA'
      Size = 2
    end
  end
  object qryNFSimb: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'ch'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT  * FROM NFSIMB'
      'where ch = :ch')
    Left = 808
    Top = 248
    object qryNFSimbNFI_CODI: TIntegerField
      FieldName = 'NFI_CODI'
    end
    object qryNFSimbCH: TIntegerField
      FieldName = 'CH'
    end
  end
end
