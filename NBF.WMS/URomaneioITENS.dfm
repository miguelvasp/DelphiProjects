object FRomaneioITENS: TFRomaneioITENS
  Left = 408
  Top = 110
  Width = 1052
  Height = 583
  BorderIcons = []
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1033
    Height = 45
    BevelInner = bvLowered
    Color = clMenu
    TabOrder = 0
    object SpeedButton3: TSpeedButton
      Left = 997
      Top = 11
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
      Width = 234
      Height = 29
      Caption = 'Itens do Romaneio'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -24
      Font.Name = 'Georgia'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object SpeedButton1: TSpeedButton
      Left = 973
      Top = 11
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
    object DBNavigator1: TDBNavigator
      Left = 786
      Top = 11
      Width = 186
      Height = 25
      DataSource = DS_ESTQ
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbPost, nbCancel]
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
  object Panel3: TPanel
    Left = 0
    Top = 47
    Width = 1033
    Height = 498
    BevelInner = bvLowered
    TabOrder = 1
    object Label8: TLabel
      Left = 271
      Top = 16
      Width = 23
      Height = 15
      Caption = 'O.S.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText7: TDBText
      Left = 298
      Top = 8
      Width = 117
      Height = 27
      DataField = 'OS_ID'
      DataSource = FRomaneio.DS_ROM
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -19
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 662
      Top = 16
      Width = 26
      Height = 15
      Caption = 'Data'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 692
      Top = 13
      Width = 85
      Height = 22
      DataField = 'ROM_DATA'
      DataSource = FRomaneio.DS_ROM
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 7
      Top = 16
      Width = 72
      Height = 15
      Caption = 'Romaneio N�'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Panel5: TPanel
      Left = 83
      Top = 3
      Width = 126
      Height = 38
      BevelInner = bvLowered
      TabOrder = 0
      object DBText2: TDBText
        Left = 13
        Top = 2
        Width = 99
        Height = 28
        Alignment = taCenter
        Color = clMenu
        DataField = 'ROM_ID'
        DataSource = FRomaneio.DS_ROM
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -24
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
    end
    object GRID: TwwDBGrid
      Left = 4
      Top = 59
      Width = 1029
      Height = 429
      Selected.Strings = (
        'PROcod'#9'8'#9'C�d.Prod.'
        'PROdesc'#9'45'#9'Descri��o do Produto'#9'F'
        'ESTQ_QTDE'#9'10'#9'Quantidade'
        'ESTQ_LOTE'#9'30'#9'Lote'
        'ROM_DTBATCH'#9'10'#9'Batch'
        'ROM_DTVENCTO'#9'10'#9'Vencimento'
        'UVENdesc'#9'12'#9'UV'
        'AreaDESC'#9'7'#9'�rea'
        'POSdesc'#9'10'#9'Posi��o'
        'ESTQ_TAG'#9'10'#9'Pallet TAG')
      IniAttributes.FileName = 'delphi32.ini'
      IniAttributes.SectionName = 'FRomaneioITENSGRID'
      IniAttributes.Delimiter = ';;'
      TitleColor = clLime
      FixedCols = 0
      ShowHorzScrollBar = True
      Color = clWhite
      DataSource = DS_ESTQ
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      KeyOptions = [dgEnterToTab]
      ParentFont = False
      TabOrder = 1
      TitleAlignment = taCenter
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clNavy
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = [fsBold]
      TitleLines = 1
      TitleButtons = False
      OnColExit = GRIDColExit
      FooterColor = clInactiveCaption
      FooterCellColor = clGrayText
    end
    object ComboPROD: TwwDBLookupCombo
      Left = 53
      Top = 177
      Width = 76
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'PRO_COD'#9'16'#9'PRO_COD'#9'F'
        'PRO_DESC'#9'40'#9'PRO_DESC'#9'F')
      DataField = 'PRO_ID'
      DataSource = DS_ESTQ
      LookupTable = Q_PROD
      LookupField = 'PRO_ID'
      DropDownCount = 16
      Enabled = False
      ParentFont = False
      TabOrder = 2
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
    end
    object ComboAREA: TwwDBLookupCombo
      Left = 309
      Top = 169
      Width = 76
      Height = 23
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'AR_NOME'#9'40'#9'AR_NOME'#9'F')
      DataField = 'AR_ID'
      DataSource = DS_ESTQ
      LookupTable = Q_AREA
      LookupField = 'AR_ID'
      Style = csDropDownList
      AutoSelect = False
      DropDownCount = 16
      Enabled = False
      ParentFont = False
      TabOrder = 3
      AutoDropDown = False
      ShowButton = False
      PreciseEditRegion = False
      AllowClearKey = False
      OnDblClick = ComboAREADblClick
      OnExit = ComboAREAExit
    end
    object ComboPOSICAO: TwwDBLookupCombo
      Left = 432
      Top = 169
      Width = 81
      Height = 23
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'POS_COD'#9'15'#9'POS_COD'#9'F')
      DataField = 'POS_ID'
      DataSource = DS_ESTQ
      LookupTable = Q_POS
      LookupField = 'POS_ID'
      Style = csDropDownList
      AutoSelect = False
      DropDownCount = 16
      Enabled = False
      ParentFont = False
      TabOrder = 4
      AutoDropDown = False
      ShowButton = False
      PreciseEditRegion = False
      AllowClearKey = False
      OnDblClick = ComboPOSICAODblClick
      OnEnter = ComboPOSICAOEnter
    end
    object GridBATCH: TwwDBGrid
      Left = 4
      Top = 59
      Width = 1029
      Height = 208
      Selected.Strings = (
        'PRO_COD'#9'17'#9'C�d.Produto'#9'F'#9
        'PRO_DESC'#9'51'#9'Descri��o'#9'F'#9
        'MARCADOR'#9'12'#9'Marcador'#9'F'#9)
      IniAttributes.FileName = 'delphi32.ini'
      IniAttributes.SectionName = 'FRomaneioITENSGridBATCH'
      IniAttributes.Delimiter = ';;'
      TitleColor = clAqua
      FixedCols = 2
      ShowHorzScrollBar = True
      Color = clWhite
      DataSource = DS_PRODUTO
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      KeyOptions = [dgEnterToTab, dgAllowInsert]
      ParentFont = False
      RowHeightPercent = 150
      TabOrder = 5
      TitleAlignment = taCenter
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -21
      TitleFont.Name = 'Arial'
      TitleFont.Style = [fsBold]
      TitleLines = 1
      TitleButtons = False
      Visible = False
      FooterColor = clInactiveCaption
      FooterCellColor = clGrayText
    end
    object BitBtn6: TBitBtn
      Left = 657
      Top = 34
      Width = 105
      Height = 24
      Caption = 'Batch / Lote'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnClick = BitBtn6Click
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
      Left = 655
      Top = 34
      Width = 36
      Height = 24
      Hint = 'Confirmar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      Visible = False
      OnClick = BitBtn2Click
      Glyph.Data = {
        BE060000424DBE06000000000000360400002800000024000000120000000100
        0800000000008802000000000000000000000001000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
        A600000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000F0FBFF00A4A0A000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00030303030303
        0303030303030303030303030303030303030303030303030303030303030303
        03030303030303030303030303030303030303030303FF030303030303030303
        03030303030303040403030303030303030303030303030303F8F8FF03030303
        03030303030303030303040202040303030303030303030303030303F80303F8
        FF030303030303030303030303040202020204030303030303030303030303F8
        03030303F8FF0303030303030303030304020202020202040303030303030303
        0303F8030303030303F8FF030303030303030304020202FA0202020204030303
        0303030303F8FF0303F8FF030303F8FF03030303030303020202FA03FA020202
        040303030303030303F8FF03F803F8FF0303F8FF03030303030303FA02FA0303
        03FA0202020403030303030303F8FFF8030303F8FF0303F8FF03030303030303
        FA0303030303FA0202020403030303030303F80303030303F8FF0303F8FF0303
        0303030303030303030303FA0202020403030303030303030303030303F8FF03
        03F8FF03030303030303030303030303FA020202040303030303030303030303
        0303F8FF0303F8FF03030303030303030303030303FA02020204030303030303
        03030303030303F8FF0303F8FF03030303030303030303030303FA0202020403
        030303030303030303030303F8FF0303F8FF03030303030303030303030303FA
        0202040303030303030303030303030303F8FF03F8FF03030303030303030303
        03030303FA0202030303030303030303030303030303F8FFF803030303030303
        030303030303030303FA0303030303030303030303030303030303F803030303
        0303030303030303030303030303030303030303030303030303030303030303
        0303}
      NumGlyphs = 2
      Style = bsNew
    end
    object BitBtn3: TBitBtn
      Left = 691
      Top = 34
      Width = 36
      Height = 24
      Hint = 'Selecionar Todos Produtos'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
      Visible = False
      OnClick = BitBtn3Click
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
    object BitBtn4: TBitBtn
      Left = 727
      Top = 18
      Width = 36
      Height = 24
      Hint = 'Limpar Marcadores'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
      Visible = False
      OnClick = BitBtn4Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        55555FFFFFFF5F55FFF5777777757559995777777775755777F7555555555550
        305555555555FF57F7F555555550055BB0555555555775F777F55555550FB000
        005555555575577777F5555550FB0BF0F05555555755755757F555550FBFBF0F
        B05555557F55557557F555550BFBF0FB005555557F55575577F555500FBFBFB0
        B05555577F555557F7F5550E0BFBFB00B055557575F55577F7F550EEE0BFB0B0
        B05557FF575F5757F7F5000EEE0BFBF0B055777FF575FFF7F7F50000EEE00000
        B0557777FF577777F7F500000E055550805577777F7555575755500000555555
        05555777775555557F5555000555555505555577755555557555}
      NumGlyphs = 2
    end
    object Panel1: TPanel
      Left = 5
      Top = 264
      Width = 1028
      Height = 225
      BevelInner = bvLowered
      BevelOuter = bvSpace
      TabOrder = 10
      Visible = False
      object Label3: TLabel
        Left = 548
        Top = 72
        Width = 41
        Height = 22
        Caption = 'Lote'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 231
        Top = 80
        Width = 54
        Height = 22
        Caption = 'Batch'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object MonthCalendar1: TMonthCalendar
        Left = 296
        Top = 5
        Width = 232
        Height = 213
        CalColors.BackColor = clScrollBar
        CalColors.TextColor = clBlack
        CalColors.TitleBackColor = clNavy
        CalColors.TitleTextColor = clYellow
        CalColors.MonthBackColor = clWindow
        CalColors.TrailingTextColor = clActiveBorder
        Date = 37461.8556550926
        FirstDayOfWeek = dowMonday
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ShowToday = False
        ShowTodayCircle = False
        TabOrder = 0
      end
      object Edit1: TEdit
        Left = 541
        Top = 96
        Width = 228
        Height = 25
        CharCase = ecUpperCase
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        MaxLength = 20
        ParentFont = False
        TabOrder = 1
        OnEnter = Edit1Enter
        OnExit = Edit1Exit
      end
      object RadioGroup1: TRadioGroup
        Left = 24
        Top = 3
        Width = 177
        Height = 216
        Caption = 'Altera��es para: '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ItemIndex = 2
        Items.Strings = (
          'Batch'
          'Lote'
          'Batch / Lote')
        ParentFont = False
        TabOrder = 2
      end
    end
    object BitBtn1: TBitBtn
      Left = 619
      Top = 34
      Width = 36
      Height = 24
      Hint = 'Cancelar'
      Cancel = True
      ParentShowHint = False
      ShowHint = True
      TabOrder = 11
      Visible = False
      OnClick = BitBtn1Click
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      Style = bsNew
    end
    object BitBtn5: TBitBtn
      Left = 453
      Top = 35
      Width = 113
      Height = 24
      Caption = 'Alterar �rea/Posi��o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 12
      OnClick = BitBtn5Click
      NumGlyphs = 2
    end
    object Panel4: TPanel
      Left = 5
      Top = 59
      Width = 1028
      Height = 438
      BevelInner = bvLowered
      TabOrder = 13
      Visible = False
      object Label18: TLabel
        Left = 217
        Top = 16
        Width = 70
        Height = 15
        Caption = 'C�d.Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label38: TLabel
        Left = 207
        Top = 54
        Width = 80
        Height = 15
        Caption = 'Desc. Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label40: TLabel
        Left = 425
        Top = 16
        Width = 16
        Height = 15
        Caption = 'UV'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText5: TDBText
        Left = 291
        Top = 14
        Width = 122
        Height = 22
        DataField = 'PROcod'
        DataSource = DS_ESTQ
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object DBText6: TDBText
        Left = 291
        Top = 76
        Width = 346
        Height = 22
        DataField = 'PROdesc'
        DataSource = DS_ESTQ
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object DBText3: TDBText
        Left = 444
        Top = 14
        Width = 140
        Height = 22
        DataField = 'UVENdesc'
        DataSource = DS_ESTQ
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label36: TLabel
        Left = 7
        Top = 11
        Width = 177
        Height = 19
        Caption = 'Altera��o �rea/Posi��o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 206
        Top = 75
        Width = 81
        Height = 15
        Caption = '�rea Sugerida'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText4: TDBText
        Left = 291
        Top = 54
        Width = 346
        Height = 22
        DataField = 'AreaDESC'
        DataSource = DS_ESTQ
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 187
        Top = 97
        Width = 100
        Height = 15
        Caption = 'Posi��o Sugerida'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText8: TDBText
        Left = 291
        Top = 95
        Width = 346
        Height = 22
        DataField = 'POSdesc'
        DataSource = DS_ESTQ
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 190
        Top = 135
        Width = 98
        Height = 15
        Caption = 'Alterar �rea para'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 171
        Top = 165
        Width = 117
        Height = 15
        Caption = 'Alterar Posi��o para'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 229
        Top = 35
        Width = 57
        Height = 15
        Caption = 'Pallet TAG'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText9: TDBText
        Left = 291
        Top = 33
        Width = 122
        Height = 22
        DataField = 'ESTQ_TAG'
        DataSource = DS_ESTQ
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object BitBtn7: TBitBtn
        Left = 724
        Top = 10
        Width = 36
        Height = 25
        Hint = 'Cancelar'
        Cancel = True
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = BitBtn7Click
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
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
        Style = bsNew
      end
      object wwDBLookupCombo1: TwwDBLookupCombo
        Left = 291
        Top = 129
        Width = 129
        Height = 28
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        BorderStyle = bsNone
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'AR_NOME'#9'40'#9'AR_NOME'#9'F')
        LookupTable = Q_AREA_2
        LookupField = 'AR_ID'
        ParentFont = False
        TabOrder = 0
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        OnEnter = wwDBLookupCombo1Enter
        OnExit = wwDBLookupCombo1Exit
      end
      object wwDBLookupCombo2: TwwDBLookupCombo
        Left = 291
        Top = 161
        Width = 134
        Height = 28
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        BorderStyle = bsNone
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'POS_COD'#9'15'#9'POS_COD'#9'F')
        LookupTable = Q_POS3
        LookupField = 'POS_ID'
        Enabled = False
        ParentFont = False
        TabOrder = 1
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        OnEnter = wwDBLookupCombo2Enter
        OnExit = wwDBLookupCombo2Exit
      end
      object BitBtn8: TBitBtn
        Left = 686
        Top = 10
        Width = 36
        Height = 25
        Hint = 'Confirmar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnClick = BitBtn8Click
        Glyph.Data = {
          BE060000424DBE06000000000000360400002800000024000000120000000100
          0800000000008802000000000000000000000001000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
          A600000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000F0FBFF00A4A0A000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00030303030303
          0303030303030303030303030303030303030303030303030303030303030303
          03030303030303030303030303030303030303030303FF030303030303030303
          03030303030303040403030303030303030303030303030303F8F8FF03030303
          03030303030303030303040202040303030303030303030303030303F80303F8
          FF030303030303030303030303040202020204030303030303030303030303F8
          03030303F8FF0303030303030303030304020202020202040303030303030303
          0303F8030303030303F8FF030303030303030304020202FA0202020204030303
          0303030303F8FF0303F8FF030303F8FF03030303030303020202FA03FA020202
          040303030303030303F8FF03F803F8FF0303F8FF03030303030303FA02FA0303
          03FA0202020403030303030303F8FFF8030303F8FF0303F8FF03030303030303
          FA0303030303FA0202020403030303030303F80303030303F8FF0303F8FF0303
          0303030303030303030303FA0202020403030303030303030303030303F8FF03
          03F8FF03030303030303030303030303FA020202040303030303030303030303
          0303F8FF0303F8FF03030303030303030303030303FA02020204030303030303
          03030303030303F8FF0303F8FF03030303030303030303030303FA0202020403
          030303030303030303030303F8FF0303F8FF03030303030303030303030303FA
          0202040303030303030303030303030303F8FF03F8FF03030303030303030303
          03030303FA0202030303030303030303030303030303F8FFF803030303030303
          030303030303030303FA0303030303030303030303030303030303F803030303
          0303030303030303030303030303030303030303030303030303030303030303
          0303}
        NumGlyphs = 2
        Style = bsNew
      end
      object Button1: TButton
        Left = 544
        Top = 11
        Width = 137
        Height = 24
        Caption = 'Alterar todos os registros'
        TabOrder = 4
        Visible = False
        OnClick = Button1Click
      end
      object BitBtn9: TBitBtn
        Left = 24
        Top = 392
        Width = 161
        Height = 25
        Caption = 'Remanejar todos para OPVP'
        TabOrder = 5
        OnClick = BitBtn9Click
      end
      object BitBtn10: TBitBtn
        Left = 200
        Top = 392
        Width = 161
        Height = 25
        Caption = 'Remanejar todos para CORVP'
        TabOrder = 6
        OnClick = BitBtn10Click
      end
    end
  end
  object Q_ESTQ: TwwQuery
    CachedUpdates = True
    BeforeEdit = Q_ESTQBeforeEdit
    BeforePost = Q_ESTQBeforePost
    AfterPost = Q_ESTQAfterPost
    BeforeDelete = Q_ESTQBeforeDelete
    AfterDelete = Q_ESTQAfterDelete
    OnNewRecord = Q_ESTQNewRecord
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    DataSource = FRomaneio.DS_ROM
    RequestLive = True
    SQL.Strings = (
      'Select *'
      ' from ESTOQUE '
      'where'
      'ROM_ID_ENT = :ROM_ID and'
      'GEROU_OPER_ROMSAIDA not in('#39'S'#39') '
      'order by '
      'PRO_ID,AR_ID,POS_ID,ESTQ_QTDE desc')
    UpdateObject = UPD_ESTQ
    ControlType.Strings = (
      'PROcod;CustomEdit;ComboPROD;F'
      'AreaDESC;CustomEdit;ComboAREA'
      'POSdesc;CustomEdit;ComboPOSICAO')
    ValidateWithMask = True
    Left = 40
    Top = 258
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'ROM_ID'
        ParamType = ptUnknown
      end>
    object Q_ESTQPROcod: TStringField
      DisplayLabel = 'C�d.Prod.'
      DisplayWidth = 8
      FieldKind = fkLookup
      FieldName = 'PROcod'
      LookupDataSet = Q_PROD
      LookupKeyFields = 'PRO_ID'
      LookupResultField = 'PRO_COD'
      KeyFields = 'PRO_ID'
      Size = 16
      Lookup = True
    end
    object Q_ESTQPROdesc: TStringField
      DisplayLabel = 'Descri��o do Produto'
      DisplayWidth = 45
      FieldKind = fkLookup
      FieldName = 'PROdesc'
      LookupDataSet = Q_PROD
      LookupKeyFields = 'PRO_ID'
      LookupResultField = 'PRO_DESC'
      KeyFields = 'PRO_ID'
      Size = 40
      Lookup = True
    end
    object Q_ESTQESTQ_QTDE: TFloatField
      DisplayLabel = 'Quantidade'
      DisplayWidth = 10
      FieldName = 'ESTQ_QTDE'
      DisplayFormat = '0.0000'
      EditFormat = '0.000'
    end
    object Q_ESTQESTQ_LOTE: TStringField
      Alignment = taCenter
      DisplayLabel = 'Lote'
      DisplayWidth = 50
      FieldName = 'ESTQ_LOTE'
      Origin = 'NBFDADOS.ESTOQUE.ESTQ_ID'
      FixedChar = True
      Size = 50
    end
    object Q_ESTQROM_DTBATCH: TDateTimeField
      Alignment = taCenter
      DisplayLabel = 'Batch'
      DisplayWidth = 10
      FieldName = 'ROM_DTBATCH'
      Origin = 'NBFDADOS.ESTOQUE.ROM_DTBATCH'
    end
    object Q_ESTQROM_DTVENCTO: TDateTimeField
      DisplayLabel = 'Vencimento'
      DisplayWidth = 10
      FieldName = 'ROM_DTVENCTO'
      Origin = 'NBFDADOS.ESTOQUE.ROM_DTVENCTO'
    end
    object Q_ESTQUVENdesc: TStringField
      DisplayLabel = 'UV'
      DisplayWidth = 12
      FieldKind = fkLookup
      FieldName = 'UVENdesc'
      LookupDataSet = Q_UNIDVEND
      LookupKeyFields = 'UVEN_ID'
      LookupResultField = 'UVEN_NOME'
      KeyFields = 'UVEN_ID'
      Size = 40
      Lookup = True
    end
    object Q_ESTQAreaDESC: TStringField
      DisplayLabel = '�rea'
      DisplayWidth = 7
      FieldKind = fkLookup
      FieldName = 'AreaDESC'
      LookupDataSet = Q_AREAux
      LookupKeyFields = 'AR_ID'
      LookupResultField = 'AR_NOME'
      KeyFields = 'AR_ID'
      Size = 40
      Lookup = True
    end
    object Q_ESTQPOSdesc: TStringField
      DisplayLabel = 'Posi��o'
      DisplayWidth = 10
      FieldKind = fkLookup
      FieldName = 'POSdesc'
      LookupDataSet = Q_POS2
      LookupKeyFields = 'POS_ID'
      LookupResultField = 'POS_COD'
      KeyFields = 'POS_ID'
      Size = 10
      Lookup = True
    end
    object Q_ESTQESTQ_TAG: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Pallet TAG'
      DisplayWidth = 10
      FieldName = 'ESTQ_TAG'
      Origin = 'NBFDADOS.ESTOQUE.ESTQ_TAG'
    end
    object Q_ESTQESTQ_ID: TAutoIncField
      FieldName = 'ESTQ_ID'
      Origin = 'NBFDADOS.ESTOQUE.ESTQ_ID'
      Visible = False
    end
    object Q_ESTQAR_ID: TIntegerField
      FieldName = 'AR_ID'
      Origin = 'NBFDADOS.ESTOQUE.AR_ID'
      Visible = False
    end
    object Q_ESTQPOS_ID: TIntegerField
      Alignment = taCenter
      FieldName = 'POS_ID'
      Origin = 'NBFDADOS.ESTOQUE.POS_ID'
      Visible = False
    end
    object Q_ESTQOS_ID_ORIG: TIntegerField
      FieldName = 'OS_ID_ORIG'
      Origin = 'NBFDADOS.ESTOQUE.OS_ID_ORIG'
      Visible = False
    end
    object Q_ESTQPRO_ID: TIntegerField
      FieldName = 'PRO_ID'
      Origin = 'NBFDADOS.ESTOQUE.PRO_ID'
      Visible = False
    end
    object Q_ESTQESTQ_PESO: TFloatField
      FieldName = 'ESTQ_PESO'
      Origin = 'NBFDADOS.ESTOQUE.ESTQ_PESO'
      Visible = False
    end
    object Q_ESTQOS_ID_DEST: TIntegerField
      FieldName = 'OS_ID_DEST'
      Origin = 'NBFDADOS.ESTOQUE.OS_ID_DEST'
      Visible = False
    end
    object Q_ESTQESTQ_DT_ENTRADA: TDateTimeField
      FieldName = 'ESTQ_DT_ENTRADA'
      Origin = 'NBFDADOS.ESTOQUE.ESTQ_DT_ENTRADA'
      Visible = False
      EditMask = '!99/99/9999;1;_'
    end
    object Q_ESTQESTQ_DT_SAIDA: TDateTimeField
      FieldName = 'ESTQ_DT_SAIDA'
      Origin = 'NBFDADOS.ESTOQUE.ESTQ_DT_SAIDA'
      Visible = False
      EditMask = '!99/99/9999;1;_'
    end
    object Q_ESTQESTQ_DT_ULMOV: TDateTimeField
      FieldName = 'ESTQ_DT_ULMOV'
      Origin = 'NBFDADOS.ESTOQUE.ESTQ_DT_ULMOV'
      Visible = False
      EditMask = '!99/99/9999;1;_'
    end
    object Q_ESTQROM_ID_ENT: TIntegerField
      FieldName = 'ROM_ID_ENT'
      Origin = 'NBFDADOS.ESTOQUE.ROM_ID_ENT'
      Visible = False
    end
    object Q_ESTQROM_ID_SAIDA: TIntegerField
      FieldName = 'ROM_ID_SAIDA'
      Origin = 'NBFDADOS.ESTOQUE.ROM_ID_SAIDA'
      Visible = False
    end
    object Q_ESTQUVEN_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'UVEN_ID'
      Origin = 'NBFDADOS.ESTOQUE.ESTQ_ID'
      Visible = False
    end
    object Q_ESTQPAR_ID: TIntegerField
      FieldName = 'PAR_ID'
      Origin = 'NBFDADOS.ESTOQUE.PAR_ID'
      Visible = False
    end
    object Q_ESTQMANI_ID: TIntegerField
      FieldName = 'MANI_ID'
      Origin = 'NBFDADOS.ESTOQUE.MANI_ID'
      Visible = False
    end
    object Q_ESTQAR_ID_ANTERIOR: TIntegerField
      FieldName = 'AR_ID_ANTERIOR'
      Origin = 'NBFDADOS.ESTOQUE.AR_ID_ANTERIOR'
      Visible = False
    end
    object Q_ESTQPOS_ID_ANTERIOR: TIntegerField
      FieldName = 'POS_ID_ANTERIOR'
      Origin = 'NBFDADOS.ESTOQUE.POS_ID_ANTERIOR'
      Visible = False
    end
    object Q_ESTQGEROU_OPER_ROMSAIDA: TStringField
      FieldName = 'GEROU_OPER_ROMSAIDA'
      Origin = 'NBFDADOS.ESTOQUE.GEROU_OPER_ROMSAIDA'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_ESTQESTQ_QTDE_RETIRA: TFloatField
      FieldName = 'ESTQ_QTDE_RETIRA'
      Visible = False
      DisplayFormat = '0.000'
      EditFormat = '0.000'
    end
  end
  object DS_ESTQ: TwwDataSource
    DataSet = Q_ESTQ
    OnDataChange = DS_ESTQDataChange
    Left = 40
    Top = 314
  end
  object UPD_ESTQ: TUpdateSQL
    ModifySQL.Strings = (
      'update ESTOQUE'
      'set'
      '   AR_ID = :AR_ID,'
      '  POS_ID = :POS_ID,'
      '  OS_ID_ORIG = :OS_ID_ORIG,'
      '  PRO_ID = :PRO_ID,'
      '  ESTQ_QTDE_RETIRA = :ESTQ_QTDE_RETIRA,'
      '  MANI_ID = :MANI_ID,'
      '  ESTQ_PESO = :ESTQ_PESO,'
      '  OS_ID_DEST = :OS_ID_DEST,'
      '  ESTQ_DT_ENTRADA = :ESTQ_DT_ENTRADA,'
      '  ESTQ_DT_SAIDA = :ESTQ_DT_SAIDA,'
      '  ROM_ID_ENT = :ROM_ID_ENT,'
      '  ROM_ID_SAIDA = :ROM_ID_SAIDA,'
      '  ROM_DTBATCH = :ROM_DTBATCH,'
      '  ROM_DTVENCTO = :ROM_DTVENCTO,'
      '  ESTQ_LOTE = :ESTQ_LOTE,'
      '  UVEN_ID = :UVEN_ID,'
      '  ESTQ_TAG = :ESTQ_TAG,'
      '  AR_ID_ANTERIOR = :AR_ID_ANTERIOR,'
      '  POS_ID_ANTERIOR = :POS_ID_ANTERIOR,'
      '  ESTQ_DT_ULMOV = :ESTQ_DT_ULMOV,'
      '  PAR_ID = :PAR_ID'
      'where'
      '  ESTQ_ID = :OLD_ESTQ_ID')
    InsertSQL.Strings = (
      'insert into ESTOQUE'
      
        '  (AR_ID, POS_ID, OS_ID_ORIG, PRO_ID, ESTQ_QTDE, ESTQ_QTDE_RETIR' +
        'A, '
      
        '   MANI_ID, ESTQ_PESO, OS_ID_DEST, ESTQ_DT_ENTRADA, ESTQ_DT_SAID' +
        'A, '
      'ROM_ID_ENT, '
      '   ROM_ID_SAIDA, ROM_DTBATCH, ROM_DTVENCTO, ESTQ_LOTE, UVEN_ID, '
      'ESTQ_TAG, '
      '   AR_ID_ANTERIOR, POS_ID_ANTERIOR, ESTQ_DT_ULMOV, PAR_ID)'
      'values'
      '  (:AR_ID, :POS_ID, :OS_ID_ORIG, :PRO_ID, :ESTQ_QTDE, '
      ':ESTQ_QTDE_RETIRA, '
      '   :MANI_ID, :ESTQ_PESO, :OS_ID_DEST, :ESTQ_DT_ENTRADA, '
      ':ESTQ_DT_SAIDA, '
      '   :ROM_ID_ENT, :ROM_ID_SAIDA, :ROM_DTBATCH, :ROM_DTVENCTO, '
      ':ESTQ_LOTE, '
      '   :UVEN_ID, :ESTQ_TAG, :AR_ID_ANTERIOR, :POS_ID_ANTERIOR, '
      ':ESTQ_DT_ULMOV, '
      '   :PAR_ID)')
    DeleteSQL.Strings = (
      'delete from ESTOQUE'
      'where'
      '  ESTQ_ID = :OLD_ESTQ_ID')
    Left = 40
    Top = 364
  end
  object Q_PROD: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    DataSource = FOS.DS_OS
    SQL.Strings = (
      'select PRO_ID, PRO_COD,PRO_DESC,CLIN_ID,UVEN_ID from PRODUTO '
      'where CLIN_ID = :CLIN_ID'
      'order by PRO_COD'
      '')
    ValidateWithMask = True
    Left = 116
    Top = 272
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CLIN_ID'
        ParamType = ptUnknown
      end>
    object Q_PRODPRO_COD: TStringField
      DisplayWidth = 16
      FieldName = 'PRO_COD'
      Origin = 'NBFDADOS.PRODUTO.PRO_COD'
      FixedChar = True
      Size = 16
    end
    object Q_PRODPRO_DESC: TStringField
      DisplayWidth = 40
      FieldName = 'PRO_DESC'
      Origin = 'NBFDADOS.PRODUTO.PRO_DESC'
      FixedChar = True
      Size = 40
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
    object Q_PRODUVEN_ID: TIntegerField
      FieldName = 'UVEN_ID'
      Origin = 'NBFDADOS.PRODUTO.UVEN_ID'
    end
  end
  object Q_UNIDVEND: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select UVEN_ID,UVEN_NOME from UNIDVENDA'
      'order by UVEN_NOME'
      ''
      '')
    ValidateWithMask = True
    Left = 256
    Top = 328
    object Q_UNIDVENDUVEN_ID: TAutoIncField
      FieldName = 'UVEN_ID'
      Origin = 'NBFDADOS.UNIDVENDA.UVEN_ID'
    end
    object Q_UNIDVENDUVEN_NOME: TStringField
      FieldName = 'UVEN_NOME'
      Origin = 'NBFDADOS.UNIDVENDA.UVEN_NOME'
      FixedChar = True
      Size = 40
    end
  end
  object Q_AREA: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    DataSource = DS_ESTQ
    SQL.Strings = (
      'select AR_ID,AR_NOME,AR_EMPILHA_MAX from AREA'
      'where '
      'not exists (Select AR_ID from PRODUTO_AREA '
      'where PRO_ID = :PRO_ID and'
      'PRODUTO_AREA.AR_ID = AREA.AR_ID and'
      'PROAREA_SITU = '#39'E'#39') and'
      'PAR_ID = :PAR_ID'
      'order by AR_NOME')
    ControlType.Strings = (
      'PROAREA_SITU;CustomEdit;wwDBComboBox5')
    ValidateWithMask = True
    Left = 119
    Top = 376
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PRO_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'PAR_ID'
        ParamType = ptUnknown
      end>
    object Q_AREAAR_NOME: TStringField
      DisplayWidth = 40
      FieldName = 'AR_NOME'
      FixedChar = True
      Size = 40
    end
    object Q_AREAAR_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'AR_ID'
      Visible = False
    end
    object Q_AREAAR_EMPILHA_MAX: TIntegerField
      FieldName = 'AR_EMPILHA_MAX'
    end
  end
  object DS_PROD: TwwDataSource
    DataSet = Q_PROD
    Left = 117
    Top = 324
  end
  object Q_POS: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'select POS_COD,AR_ID,POS_UTILIZADO,POS_ID'
      'from AREA_POSICOES '
      'where  '
      'AR_ID = AR_ID and'
      'POS_UTILIZADO = '#39'N'#39'  and status = '#39'D'#39
      'order by POS_COD'
      ''
      '')
    ValidateWithMask = True
    Left = 41
    Top = 432
    object Q_POSPOS_COD: TStringField
      DisplayWidth = 15
      FieldName = 'POS_COD'
      Origin = 'NBFDADOS.AREA_POSICOES.POS_COD'
      FixedChar = True
      Size = 5
    end
    object Q_POSAR_ID: TIntegerField
      FieldName = 'AR_ID'
      Origin = 'NBFDADOS.AREA_POSICOES.AR_ID'
      Visible = False
    end
    object Q_POSPOS_UTILIZADO: TStringField
      FieldName = 'POS_UTILIZADO'
      Origin = 'NBFDADOS.AREA_POSICOES.POS_UTILIZADO'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_POSPOS_ID: TAutoIncField
      FieldName = 'POS_ID'
      Origin = 'NBFDADOS.AREA_POSICOES.POS_ID'
      Visible = False
    end
  end
  object Q_PROD2: TwwQuery
    AutoCalcFields = False
    CachedUpdates = True
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    DataSource = DS_PROD
    RequestLive = True
    SQL.Strings = (
      'select PRO_COD,PRO_VALIDDIAS from PRODUTO where'
      'PRO_ID = :PRO_ID')
    ValidateWithMask = True
    Left = 156
    Top = 448
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PRO_ID'
        ParamType = ptUnknown
      end>
    object Q_PROD2PRO_COD: TStringField
      FieldName = 'PRO_COD'
      Origin = 'NBFDADOS.PRODUTO.PRO_COD'
      FixedChar = True
      Size = 16
    end
    object Q_PROD2PRO_VALIDDIAS: TIntegerField
      FieldName = 'PRO_VALIDDIAS'
      Origin = 'NBFDADOS.PRODUTO.PRO_VALIDDIAS'
    end
  end
  object Q_PRODUTO: TwwQuery
    CachedUpdates = True
    AfterPost = Q_PRODUTOAfterPost
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    DataSource = FRomaneio.DS_ROM
    RequestLive = True
    SQL.Strings = (
      'Select PRO_ID,MARCADOR,PRO_DESC,PRO_COD,PRO_VALIDDIAS'
      ' from PRODUTO where PRO_ID in(Select PRO_ID from ESTOQUE where'
      'ROM_ID_ENT = :ROM_ID) order by PRO_COD')
    UpdateObject = UPD_PRODUTO
    ControlType.Strings = (
      'MARCADOR;CheckBox;*;')
    ValidateWithMask = True
    Left = 221
    Top = 2
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'ROM_ID'
        ParamType = ptUnknown
      end>
    object Q_PRODUTOPRO_COD: TStringField
      DisplayLabel = 'C�d.Produto'
      DisplayWidth = 17
      FieldName = 'PRO_COD'
      FixedChar = True
      Size = 16
    end
    object Q_PRODUTOPRO_DESC: TStringField
      DisplayLabel = 'Descri��o'
      DisplayWidth = 51
      FieldName = 'PRO_DESC'
      FixedChar = True
      Size = 40
    end
    object Q_PRODUTOMARCADOR: TStringField
      DisplayLabel = 'Marcador'
      DisplayWidth = 12
      FieldName = 'MARCADOR'
      FixedChar = True
      Size = 1
    end
    object Q_PRODUTOPRO_ID: TAutoIncField
      FieldName = 'PRO_ID'
      Visible = False
    end
    object Q_PRODUTOPRO_VALIDDIAS: TIntegerField
      FieldName = 'PRO_VALIDDIAS'
      Visible = False
    end
  end
  object DS_PRODUTO: TwwDataSource
    DataSet = Q_PRODUTO
    Left = 221
    Top = 58
  end
  object Q_IRaux: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    ValidateWithMask = True
    Left = 77
    Top = 194
  end
  object UPD_PRODUTO: TUpdateSQL
    ModifySQL.Strings = (
      'update PRODUTO'
      'set'
      '    MARCADOR = :MARCADOR '
      'where'
      '  PRO_ID = :OLD_PRO_ID')
    Left = 312
    Top = 56
  end
  object Q_PRODUTOaux: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    ValidateWithMask = True
    Left = 157
    Top = 202
  end
  object Q_POS2: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'select A.POS_COD,A.AR_ID,A.POS_UTILIZADO,A.POS_ID'
      'from AREA_POSICOES A '
      'where   status = '#39'D'#39
      'order by A.POS_COD')
    ValidateWithMask = True
    Left = 205
    Top = 338
    object Q_POS2POS_COD: TStringField
      FieldName = 'POS_COD'
      Origin = 'NBFDADOS.AREA_POSICOES.POS_COD'
      FixedChar = True
      Size = 5
    end
    object Q_POS2AR_ID: TIntegerField
      FieldName = 'AR_ID'
      Origin = 'NBFDADOS.AREA_POSICOES.AR_ID'
    end
    object Q_POS2POS_UTILIZADO: TStringField
      FieldName = 'POS_UTILIZADO'
      Origin = 'NBFDADOS.AREA_POSICOES.POS_UTILIZADO'
      FixedChar = True
      Size = 1
    end
    object Q_POS2POS_ID: TAutoIncField
      FieldName = 'POS_ID'
      Origin = 'NBFDADOS.AREA_POSICOES.POS_ID'
    end
  end
  object Q_QTDEaux: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    ValidateWithMask = True
    Left = 245
    Top = 386
  end
  object DS_AREA: TwwDataSource
    DataSet = Q_AREA
    Left = 109
    Top = 426
  end
  object Q_AREA_2: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    DataSource = DS_ESTQ
    SQL.Strings = (
      'select AR_ID,AR_NOME,AR_EMPILHA_MAX from AREA'
      'where '
      'not exists (Select AR_ID from PRODUTO_AREA '
      'where PRO_ID = :PRO_ID and'
      'PRODUTO_AREA.AR_ID = AREA.AR_ID and'
      'PROAREA_SITU = '#39'E'#39') and'
      'PAR_ID = :PAR_ID'
      'order by AR_NOME')
    ValidateWithMask = True
    Left = 429
    Top = 322
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PRO_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'PAR_ID'
        ParamType = ptUnknown
      end>
    object Q_AREA_2AR_ID: TAutoIncField
      FieldName = 'AR_ID'
      Origin = 'NBFDADOS.AREA.AR_ID'
    end
    object Q_AREA_2AR_EMPILHA_MAX: TIntegerField
      FieldName = 'AR_EMPILHA_MAX'
      Origin = 'NBFDADOS.AREA.AR_EMPILHA_MAX'
    end
    object Q_AREA_2AR_NOME: TStringField
      FieldName = 'AR_NOME'
      FixedChar = True
      Size = 40
    end
  end
  object Q_POS3: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    DataSource = DS_AREA_2
    SQL.Strings = (
      'select POS_COD,AR_ID,POS_UTILIZADO,POS_ID'
      'from AREA_POSICOES '
      'where  '
      'AR_ID = AR_ID and'
      'POS_UTILIZADO = '#39'N'#39' and status = '#39'D'#39
      'order by POS_COD'
      ''
      '')
    ValidateWithMask = True
    Left = 492
    Top = 320
    object Q_POS3POS_COD: TStringField
      FieldName = 'POS_COD'
      Origin = 'NBFDADOS.AREA_POSICOES.POS_COD'
      FixedChar = True
      Size = 6
    end
    object Q_POS3AR_ID: TIntegerField
      FieldName = 'AR_ID'
      Origin = 'NBFDADOS.AREA_POSICOES.AR_ID'
    end
    object Q_POS3POS_UTILIZADO: TStringField
      FieldName = 'POS_UTILIZADO'
      Origin = 'NBFDADOS.AREA_POSICOES.POS_UTILIZADO'
      FixedChar = True
      Size = 1
    end
    object Q_POS3POS_ID: TAutoIncField
      FieldName = 'POS_ID'
      Origin = 'NBFDADOS.AREA_POSICOES.POS_ID'
    end
  end
  object DS_AREA_2: TwwDataSource
    DataSet = Q_AREA_2
    Left = 432
    Top = 370
  end
  object Q_AREAux: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select AR_ID,AR_NOME from AREA')
    ValidateWithMask = True
    Left = 637
    Top = 302
    object Q_AREAuxAR_ID: TAutoIncField
      FieldName = 'AR_ID'
      Origin = 'NBFDADOS.AREA.AR_ID'
    end
    object Q_AREAuxAR_NOME: TStringField
      FieldName = 'AR_NOME'
      Origin = 'NBFDADOS.AREA.AR_NOME'
      FixedChar = True
      Size = 40
    end
  end
end
