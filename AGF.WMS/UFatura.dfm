object FFatura: TFFatura
  Left = 144
  Top = 59
  BorderIcons = []
  BorderStyle = bsSingle
  ClientHeight = 552
  ClientWidth = 812
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
  object Panel2: TPanel
    Left = 1
    Top = 2
    Width = 786
    Height = 36
    BevelInner = bvLowered
    Color = clMenu
    TabOrder = 0
    object SpeedButton3: TSpeedButton
      Left = 738
      Top = 6
      Width = 32
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
      Top = 2
      Width = 99
      Height = 29
      Caption = 'Faturas'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -24
      Font.Name = 'Georgia'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object SpeedButton5: TSpeedButton
      Left = 704
      Top = 6
      Width = 32
      Height = 25
      Hint = 'Visualizar Faturas a partir da Pesquisa realizada'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
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
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton5Click
    end
    object CheckBox1: TCheckBox
      Left = 520
      Top = 8
      Width = 97
      Height = 17
      Caption = 'Imprime txt'
      TabOrder = 0
      Visible = False
    end
  end
  object Panel3: TPanel
    Left = 1
    Top = 41
    Width = 787
    Height = 503
    BevelInner = bvLowered
    Color = clScrollBar
    TabOrder = 1
    object SpeedButton4: TSpeedButton
      Left = 431
      Top = 98
      Width = 80
      Height = 27
      Hint = 'Cancelar Fatura(s)'
      Caption = 'Cancelar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
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
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton4Click
    end
    object SpeedButton1: TSpeedButton
      Left = 524
      Top = 98
      Width = 159
      Height = 27
      Hint = 'Visualizar Conhecimentos por Fatura'
      Caption = 'Rel. de CTRC por Fatura'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
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
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton1Click
    end
    object Label9: TLabel
      Left = 707
      Top = 90
      Width = 74
      Height = 40
      Caption = 'Fatura'#13#10'Genérica'
      Color = 10944511
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object DBG_INFI: TwwDBGrid
      Left = 6
      Top = 139
      Width = 777
      Height = 230
      Selected.Strings = (
        'FAT_NUM'#9'7'#9'Nº Fatura'#9'F'
        'FAT_EMISSAO'#9'9'#9'Emissão'#9'F'
        'CLIN_RAZA'#9'39'#9'Cliente NBF'#9'F'
        'descricao'#9'14'#9'Condição de Pagto.'#9'F'
        'FAT_VALOR'#9'10'#9'Valor R$'#9'F'
        'FAT_TIPO'#9'1'#9'Tipo da Fatura'#9'F')
      IniAttributes.FileName = 'delphi32.ini'
      IniAttributes.SectionName = 'FNFDBG_INFI'
      IniAttributes.Delimiter = ';;'
      TitleColor = clBlue
      FixedCols = 0
      ShowHorzScrollBar = True
      Color = 16748945
      DataSource = DS_FAT
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      TitleAlignment = taCenter
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWhite
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = [fsBold]
      TitleLines = 1
      TitleButtons = False
      OnCalcCellColors = DBG_INFICalcCellColors
      FooterColor = clInactiveCaption
      FooterCellColor = clGrayText
    end
    object wwDBGrid1: TwwDBGrid
      Left = 5
      Top = 369
      Width = 778
      Height = 130
      Selected.Strings = (
        'IFAT_VCTO'#9'9'#9'Vencto.'
        'IFAT_VALOR'#9'49'#9'Valor da Parcela'
        'IFAT_GEROU'#9'22'#9'Gerou Contas')
      IniAttributes.FileName = 'delphi32.ini'
      IniAttributes.SectionName = 'FNFDBG_INFI'
      IniAttributes.Delimiter = ';;'
      TitleColor = clBlue
      FixedCols = 0
      ShowHorzScrollBar = True
      Color = 16748945
      DataSource = DS_IFAT
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      TitleAlignment = taCenter
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWhite
      TitleFont.Height = -21
      TitleFont.Name = 'Arial'
      TitleFont.Style = [fsBold]
      TitleLines = 1
      TitleButtons = False
      FooterColor = clInactiveCaption
      FooterCellColor = clGrayText
    end
    object DBCB_CLI_PESS: TwwDBComboBox
      Left = 713
      Top = 470
      Width = 48
      Height = 21
      ShowButton = True
      Style = csDropDown
      MapList = True
      AllowClearKey = False
      AutoDropDown = True
      BorderStyle = bsNone
      ButtonStyle = cbsEllipsis
      DataField = 'IFAT_GEROU'
      DataSource = DS_IFAT
      DropDownCount = 8
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ItemHeight = 0
      Items.Strings = (
        'Não'#9'N'
        'Sim'#9'S')
      ParentFont = False
      Sorted = False
      TabOrder = 4
      UnboundDataType = wwDefault
    end
    object GroupBox1: TGroupBox
      Left = 5
      Top = 5
      Width = 777
      Height = 78
      Caption = 'Filtros para Pesquisa'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Label35: TLabel
        Left = 115
        Top = 52
        Width = 49
        Height = 15
        Caption = 'Emissão'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 249
        Top = 52
        Width = 18
        Height = 15
        Caption = 'até'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 99
        Top = 24
        Width = 64
        Height = 15
        Caption = 'Cliente NBF'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object SBT_PESQ: TSpeedButton
        Left = 654
        Top = 30
        Width = 88
        Height = 27
        Hint = 'Executa as pesquisas de acordo com os filtros.'
        Caption = 'Pesquisar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          0400000000000001000000000000000000001000000010000000000000000000
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
        OnClick = SBT_PESQClick
      end
      object Label10: TLabel
        Left = 492
        Top = 24
        Width = 51
        Height = 15
        Caption = 'Nº Fatura'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object Data1: TMaskEdit
        Left = 168
        Top = 48
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
        TabOrder = 2
        Text = '  /  /    '
        OnEnter = Data1Enter
        OnExit = Data1Exit
      end
      object Data2: TMaskEdit
        Left = 273
        Top = 48
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
        TabOrder = 3
        Text = '  /  /    '
        OnEnter = Data2Enter
        OnExit = Data2Exit
      end
      object wwDBLookupCombo1: TwwDBLookupCombo
        Left = 168
        Top = 21
        Width = 314
        Height = 23
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        BorderStyle = bsNone
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'CLIN_RAZA'#9'50'#9'CLIN_RAZA'#9'F')
        LookupTable = Q_CLINBF
        LookupField = 'CLIN_ID'
        ParentFont = False
        TabOrder = 0
        AutoDropDown = True
        ShowButton = True
        SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
        PreciseEditRegion = False
        AllowClearKey = False
        OnEnter = wwDBLookupCombo1Enter
        OnExit = wwDBLookupCombo1Exit
      end
      object wwDBEdit1: TwwDBEdit
        Left = 546
        Top = 21
        Width = 96
        Height = 23
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 1
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnEnter = wwDBEdit1Enter
        OnExit = wwDBEdit1Exit
      end
    end
    object GroupBox2: TGroupBox
      Left = 5
      Top = 83
      Width = 408
      Height = 55
      Caption = 'Filtros para Impressão'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object Label7: TLabel
        Left = 11
        Top = 22
        Width = 119
        Height = 15
        Caption = 'Imprimir da Fatura Nº'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object Label1: TLabel
        Left = 221
        Top = 22
        Width = 18
        Height = 15
        Caption = 'até'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object SBT_VISU: TSpeedButton
        Left = 328
        Top = 16
        Width = 73
        Height = 27
        Hint = 'Imprimir Faturas'
        Caption = 'Faturas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
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
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = SBT_VISUClick
      end
      object wwDBEdit2: TwwDBEdit
        Left = 137
        Top = 19
        Width = 77
        Height = 23
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnEnter = wwDBEdit2Enter
        OnExit = wwDBEdit2Exit
      end
      object wwDBEdit3: TwwDBEdit
        Left = 246
        Top = 19
        Width = 77
        Height = 23
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 1
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnEnter = wwDBEdit3Enter
        OnExit = wwDBEdit3Exit
      end
    end
    object wwDBComboBox1: TwwDBComboBox
      Left = 161
      Top = 238
      Width = 48
      Height = 21
      ShowButton = True
      Style = csDropDown
      MapList = True
      AllowClearKey = False
      AutoDropDown = True
      BorderStyle = bsNone
      ButtonStyle = cbsEllipsis
      DataField = 'FAT_TIPO'
      DataSource = DS_FAT
      DropDownCount = 8
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ItemHeight = 0
      Items.Strings = (
        'Transporte'#9'0'
        'Armazém'#9'1'
        'Transporte'#9'2'
        'Armazém'#9'3')
      ParentFont = False
      Sorted = False
      TabOrder = 5
      UnboundDataType = wwDefault
    end
  end
  object Panel1: TPanel
    Left = 65
    Top = 49
    Width = 787
    Height = 499
    BevelInner = bvSpace
    BevelOuter = bvLowered
    TabOrder = 2
    Visible = False
    object Label3: TLabel
      Left = 4
      Top = 16
      Width = 772
      Height = 29
      Alignment = taCenter
      AutoSize = False
      Caption = 'Relatório de Conhecimentos por Fatura'
      Color = clScrollBar
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -24
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsUnderline]
      ParentColor = False
      ParentFont = False
    end
    object Label5: TLabel
      Left = 225
      Top = 169
      Width = 93
      Height = 24
      Caption = 'Fatura Nº'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 289
      Top = 207
      Width = 31
      Height = 24
      Caption = 'até'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object wwDBEdit4: TwwDBEdit
      Left = 327
      Top = 164
      Width = 185
      Height = 38
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -27
      Font.Name = 'Arial'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 0
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnEnter = wwDBEdit2Enter
      OnExit = wwDBEdit2Exit
      OnKeyUp = wwDBEdit4KeyUp
    end
    object wwDBEdit5: TwwDBEdit
      Left = 327
      Top = 210
      Width = 185
      Height = 38
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -27
      Font.Name = 'Arial'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 1
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnEnter = wwDBEdit3Enter
      OnExit = wwDBEdit3Exit
    end
    object Panel4: TPanel
      Left = 6
      Top = 284
      Width = 771
      Height = 46
      BevelOuter = bvNone
      BorderStyle = bsSingle
      Color = 16748945
      TabOrder = 2
      object SpeedButton2: TSpeedButton
        Left = 403
        Top = 5
        Width = 88
        Height = 33
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
        OnClick = SpeedButton2Click
      end
      object BitBtn1: TBitBtn
        Left = 298
        Top = 5
        Width = 88
        Height = 33
        Hint = 'Confirmar'
        Default = True
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = BitBtn1Click
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333330000333333333333333333333333F33333333333
          00003333344333333333333333388F3333333333000033334224333333333333
          338338F3333333330000333422224333333333333833338F3333333300003342
          222224333333333383333338F3333333000034222A22224333333338F338F333
          8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
          33333338F83338F338F33333000033A33333A222433333338333338F338F3333
          0000333333333A222433333333333338F338F33300003333333333A222433333
          333333338F338F33000033333333333A222433333333333338F338F300003333
          33333333A222433333333333338F338F00003333333333333A22433333333333
          3338F38F000033333333333333A223333333333333338F830000333333333333
          333A333333333333333338330000333333333333333333333333333333333333
          0000}
        NumGlyphs = 2
      end
    end
  end
  object Q_FAT: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'SELECT'
      'A.*,B.descricao,C.CLIN_RAZA'
      'FROM'
      'FATURA A,CONDICAO_PAGTO B,CLIENTENBF C'
      'Where '
      'A.COND_PGTO_ID = B.COND_PGTO_ID and'
      'A.CLIN_ID = C.CLIN_ID')
    ControlType.Strings = (
      'FAT_TIPO;CustomEdit;wwDBComboBox1')
    ValidateWithMask = True
    Left = 632
    Top = 338
    object Q_FATFAT_NUM: TIntegerField
      DisplayLabel = 'Nº Fatura'
      DisplayWidth = 7
      FieldName = 'FAT_NUM'
    end
    object Q_FATFAT_EMISSAO: TDateTimeField
      DisplayLabel = 'Emissão'
      DisplayWidth = 9
      FieldName = 'FAT_EMISSAO'
    end
    object Q_FATCLIN_RAZA: TStringField
      DisplayLabel = 'Cliente NBF'
      DisplayWidth = 39
      FieldName = 'CLIN_RAZA'
      FixedChar = True
      Size = 50
    end
    object Q_FATdescricao: TStringField
      DisplayLabel = 'Condição de Pagto.'
      DisplayWidth = 14
      FieldName = 'descricao'
      FixedChar = True
      Size = 30
    end
    object Q_FATFAT_VALOR: TFloatField
      DisplayLabel = 'Valor R$'
      DisplayWidth = 10
      FieldName = 'FAT_VALOR'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_FATFAT_TIPO: TStringField
      DisplayLabel = 'Tipo da Fatura'
      DisplayWidth = 1
      FieldName = 'FAT_TIPO'
      FixedChar = True
      Size = 1
    end
    object Q_FATFAT_ID: TAutoIncField
      FieldName = 'FAT_ID'
      Visible = False
    end
    object Q_FATCOND_PGTO_ID: TIntegerField
      FieldName = 'COND_PGTO_ID'
      Visible = False
    end
    object Q_FATCLIN_ID: TIntegerField
      FieldName = 'CLIN_ID'
      Visible = False
    end
  end
  object DS_FAT: TwwDataSource
    DataSet = Q_FAT
    Left = 632
    Top = 394
  end
  object Q_IFAT: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    DataSource = DS_FAT
    SQL.Strings = (
      'Select * from FATURA_ITENS where'
      'FAT_ID = :FAT_ID ')
    ControlType.Strings = (
      'IFAT_GEROU;CustomEdit;DBCB_CLI_PESS')
    ValidateWithMask = True
    Left = 576
    Top = 338
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'FAT_ID'
        ParamType = ptUnknown
      end>
    object Q_IFATIFAT_VCTO: TDateTimeField
      DisplayLabel = 'Vencto.'
      DisplayWidth = 9
      FieldName = 'IFAT_VCTO'
      Origin = 'NBFDADOS.FATURA_ITENS.IFAT_VCTO'
    end
    object Q_IFATIFAT_VALOR: TFloatField
      DisplayLabel = 'Valor da Parcela'
      DisplayWidth = 49
      FieldName = 'IFAT_VALOR'
      Origin = 'NBFDADOS.FATURA_ITENS.IFAT_VALOR'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_IFATIFAT_GEROU: TStringField
      Alignment = taCenter
      DisplayLabel = 'Gerou Contas'
      DisplayWidth = 22
      FieldName = 'IFAT_GEROU'
      Origin = 'NBFDADOS.FATURA_ITENS.IFAT_GEROU'
      FixedChar = True
      Size = 1
    end
    object Q_IFATIFAT_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'IFAT_ID'
      Origin = 'NBFDADOS.FATURA_ITENS.IFAT_ID'
      Visible = False
    end
    object Q_IFATFAT_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'FAT_ID'
      Origin = 'NBFDADOS.FATURA_ITENS.FAT_ID'
      Visible = False
    end
  end
  object DS_IFAT: TwwDataSource
    DataSet = Q_IFAT
    Left = 576
    Top = 396
  end
  object Q_CLINBF: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select  *  from CLIENTENBF where'
      '(CLIN_CONTRATO <> '#39'I'#39' and CLIN_CONTRATO <> '#39'R'#39') '
      'order by CLIN_RAZA ')
    ValidateWithMask = True
    Left = 562
    Top = 72
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
    object Q_CLINBFCLIN_PESSOA: TStringField
      FieldName = 'CLIN_PESSOA'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_PESSOA'
      FixedChar = True
      Size = 1
    end
    object Q_CLINBFCLIN_NOME: TStringField
      FieldName = 'CLIN_NOME'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_NOME'
      FixedChar = True
      Size = 30
    end
    object Q_CLINBFCLIN_CGCCPF: TStringField
      FieldName = 'CLIN_CGCCPF'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_CGCCPF'
      FixedChar = True
      Size = 15
    end
    object Q_CLINBFCLIN_INSCRG: TStringField
      FieldName = 'CLIN_INSCRG'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_INSCRG'
      FixedChar = True
      Size = 15
    end
    object Q_CLINBFCLIN_ENDERECO: TStringField
      FieldName = 'CLIN_ENDERECO'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_ENDERECO'
      FixedChar = True
      Size = 50
    end
    object Q_CLINBFCLIN_ENDERECO_COMPL: TStringField
      FieldName = 'CLIN_ENDERECO_COMPL'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_ENDERECO_COMPL'
      FixedChar = True
      Size = 35
    end
    object Q_CLINBFCLIN_ENDERECO_BAIRRO: TStringField
      FieldName = 'CLIN_ENDERECO_BAIRRO'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_ENDERECO_BAIRRO'
      FixedChar = True
      Size = 40
    end
    object Q_CLINBFCLIN_MUNICIPIO: TStringField
      FieldName = 'CLIN_MUNICIPIO'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_MUNICIPIO'
      FixedChar = True
      Size = 40
    end
    object Q_CLINBFUF_SIGLA: TStringField
      FieldName = 'UF_SIGLA'
      Origin = 'NBFDADOS.CLIENTENBF.UF_SIGLA'
      FixedChar = True
      Size = 2
    end
    object Q_CLINBFCLIN_CEP: TStringField
      FieldName = 'CLIN_CEP'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_CEP'
      FixedChar = True
      Size = 8
    end
    object Q_CLINBFCLIN_TEL1: TStringField
      FieldName = 'CLIN_TEL1'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_TEL1'
      FixedChar = True
      Size = 11
    end
    object Q_CLINBFCLIN_TEL2: TStringField
      FieldName = 'CLIN_TEL2'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_TEL2'
      FixedChar = True
      Size = 11
    end
    object Q_CLINBFCLIN_FAX: TStringField
      FieldName = 'CLIN_FAX'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_FAX'
      FixedChar = True
      Size = 11
    end
    object Q_CLINBFCLIN_EMAIL: TStringField
      FieldName = 'CLIN_EMAIL'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_EMAIL'
      FixedChar = True
      Size = 60
    end
    object Q_CLINBFCON_CODI: TStringField
      FieldName = 'CON_CODI'
      Origin = 'NBFDADOS.CLIENTENBF.CON_CODI'
      FixedChar = True
      Size = 6
    end
    object Q_CLINBFCLIN_CONTRATO: TStringField
      FieldName = 'CLIN_CONTRATO'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_CONTRATO'
      FixedChar = True
      Size = 1
    end
    object Q_CLINBFCLIN_UTIL_COD: TStringField
      FieldName = 'CLIN_UTIL_COD'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_UTIL_COD'
      FixedChar = True
      Size = 1
    end
    object Q_CLINBFMUN_ID: TIntegerField
      FieldName = 'MUN_ID'
      Origin = 'NBFDADOS.CLIENTENBF.MUN_ID'
    end
    object Q_CLINBFCLIN_WEB: TStringField
      FieldName = 'CLIN_WEB'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_WEB'
      FixedChar = True
      Size = 60
    end
    object Q_CLINBFCLIN_ENDC: TStringField
      FieldName = 'CLIN_ENDC'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_ENDC'
      FixedChar = True
      Size = 50
    end
    object Q_CLINBFCLIN_END_COMPLC: TStringField
      FieldName = 'CLIN_END_COMPLC'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_END_COMPLC'
      FixedChar = True
      Size = 35
    end
    object Q_CLINBFCLIN_END_BAIRC: TStringField
      FieldName = 'CLIN_END_BAIRC'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_END_BAIRC'
      FixedChar = True
      Size = 40
    end
    object Q_CLINBFCLIN_MUNICC: TStringField
      FieldName = 'CLIN_MUNICC'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_MUNICC'
      FixedChar = True
      Size = 40
    end
    object Q_CLINBFUF_SIGLAC: TStringField
      FieldName = 'UF_SIGLAC'
      Origin = 'NBFDADOS.CLIENTENBF.UF_SIGLAC'
      FixedChar = True
      Size = 2
    end
    object Q_CLINBFCLIN_CEPC: TStringField
      FieldName = 'CLIN_CEPC'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_CEPC'
      FixedChar = True
      Size = 8
    end
    object Q_CLINBFCLIN_TELC: TStringField
      FieldName = 'CLIN_TELC'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_TELC'
      FixedChar = True
      Size = 11
    end
    object Q_CLINBFCLIN_FAXC: TStringField
      FieldName = 'CLIN_FAXC'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_FAXC'
      FixedChar = True
      Size = 11
    end
    object Q_CLINBFCLIN_EMAILC: TStringField
      FieldName = 'CLIN_EMAILC'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_EMAILC'
      FixedChar = True
      Size = 60
    end
    object Q_CLINBFMUN_IDC: TIntegerField
      FieldName = 'MUN_IDC'
      Origin = 'NBFDADOS.CLIENTENBF.MUN_IDC'
    end
    object Q_CLINBFCLIN_DESCONTO: TFloatField
      FieldName = 'CLIN_DESCONTO'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_DESCONTO'
    end
  end
  object Q_AUX: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    ValidateWithMask = True
    Left = 648
    Top = 194
  end
  object Q_AUX2: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    ValidateWithMask = True
    Left = 578
    Top = 226
  end
  object T_IMPR: TwwTable
    DatabaseName = 'NBF'
    TableName = 'IMPR_FATURA.DB'
    SyncSQLByRange = False
    NarrowSearch = False
    ValidateWithMask = True
    Left = 633
    Top = 281
    object T_IMPRNUM1: TIntegerField
      FieldName = 'NUM1'
    end
    object T_IMPRVALOR1: TFloatField
      FieldName = 'VALOR1'
    end
    object T_IMPRNUM2: TIntegerField
      FieldName = 'NUM2'
    end
    object T_IMPRVALOR2: TFloatField
      FieldName = 'VALOR2'
    end
    object T_IMPRNUM3: TIntegerField
      FieldName = 'NUM3'
    end
    object T_IMPRVALOR3: TFloatField
      FieldName = 'VALOR3'
    end
    object T_IMPRNUM4: TIntegerField
      FieldName = 'NUM4'
    end
    object T_IMPRVALOR4: TFloatField
      FieldName = 'VALOR4'
    end
    object T_IMPRSALTAPAGINA: TStringField
      FieldName = 'SALTAPAGINA'
      Size = 1
    end
  end
  object T_ACEN: TwwTable
    DatabaseName = 'NBF'
    TableName = 'Acentuacao.DB'
    SyncSQLByRange = True
    NarrowSearch = False
    ValidateWithMask = True
    Left = 576
    Top = 280
    object T_ACENACE_CASC: TIntegerField
      FieldName = 'ACE_CASC'
    end
    object T_ACENACE_DESC: TStringField
      FieldName = 'ACE_DESC'
    end
    object T_ACENACE_NOVO: TStringField
      FieldName = 'ACE_NOVO'
      Size = 1
    end
  end
  object Q_PAR: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      ' Select * from parametro')
    PictureMasks.Strings = (
      'CFA_CODI'#9'#[#][#]'#9'T'#9'T')
    ValidateWithMask = True
    Left = 575
    Top = 167
    object Q_PARPAR_ID: TAutoIncField
      FieldName = 'PAR_ID'
      Origin = 'NBFDADOS.PARAMETRO.PAR_ID'
    end
    object Q_PARPAR_NOME: TStringField
      FieldName = 'PAR_NOME'
      Origin = 'NBFDADOS.PARAMETRO.PAR_NOME'
      FixedChar = True
      Size = 30
    end
    object Q_PARPAR_RAZA: TStringField
      FieldName = 'PAR_RAZA'
      Origin = 'NBFDADOS.PARAMETRO.PAR_RAZA'
      FixedChar = True
      Size = 50
    end
    object Q_PARPAR_CNPJ: TStringField
      FieldName = 'PAR_CNPJ'
      Origin = 'NBFDADOS.PARAMETRO.PAR_CNPJ'
      FixedChar = True
      Size = 15
    end
    object Q_PARPAR_INSC: TStringField
      FieldName = 'PAR_INSC'
      Origin = 'NBFDADOS.PARAMETRO.PAR_INSC'
      FixedChar = True
      Size = 15
    end
    object Q_PARPAR_ENDERECO: TStringField
      FieldName = 'PAR_ENDERECO'
      Origin = 'NBFDADOS.PARAMETRO.PAR_ENDERECO'
      FixedChar = True
      Size = 50
    end
    object Q_PARPAR_ENDERECO_COMPL: TStringField
      FieldName = 'PAR_ENDERECO_COMPL'
      Origin = 'NBFDADOS.PARAMETRO.PAR_ENDERECO_COMPL'
      FixedChar = True
    end
    object Q_PARPAR_ENDERECO_BAIRRO: TStringField
      FieldName = 'PAR_ENDERECO_BAIRRO'
      Origin = 'NBFDADOS.PARAMETRO.PAR_ENDERECO_BAIRRO'
      FixedChar = True
      Size = 40
    end
    object Q_PARPAR_UF_SIGLA: TStringField
      FieldName = 'PAR_UF_SIGLA'
      Origin = 'NBFDADOS.PARAMETRO.PAR_UF_SIGLA'
      FixedChar = True
      Size = 2
    end
    object Q_PARPAR_CEP: TStringField
      FieldName = 'PAR_CEP'
      Origin = 'NBFDADOS.PARAMETRO.PAR_CEP'
      FixedChar = True
      Size = 8
    end
    object Q_PARPAR_TEL: TStringField
      FieldName = 'PAR_TEL'
      Origin = 'NBFDADOS.PARAMETRO.PAR_TEL'
      FixedChar = True
      Size = 11
    end
    object Q_PARPAR_FAX: TStringField
      FieldName = 'PAR_FAX'
      Origin = 'NBFDADOS.PARAMETRO.PAR_FAX'
      FixedChar = True
      Size = 11
    end
    object Q_PARPAR_EMAIL: TStringField
      FieldName = 'PAR_EMAIL'
      Origin = 'NBFDADOS.PARAMETRO.PAR_EMAIL'
      FixedChar = True
      Size = 60
    end
    object Q_PARAR_ID: TIntegerField
      FieldName = 'AR_ID'
      Origin = 'NBFDADOS.PARAMETRO.AR_ID'
    end
    object Q_PARMUN_ID: TIntegerField
      FieldName = 'MUN_ID'
      Origin = 'NBFDADOS.PARAMETRO.MUN_ID'
    end
    object Q_PARAR_ID_OPER: TIntegerField
      FieldName = 'AR_ID_OPER'
      Origin = 'NBFDADOS.PARAMETRO.AR_ID_OPER'
    end
    object Q_PARULT_TAG: TIntegerField
      FieldName = 'ULT_TAG'
      Origin = 'NBFDADOS.PARAMETRO.ULT_TAG'
    end
    object Q_PARPALLET_M2: TFloatField
      FieldName = 'PALLET_M2'
      Origin = 'NBFDADOS.PARAMETRO.PALLET_M2'
    end
    object Q_PARCO_SER_ID: TIntegerField
      FieldName = 'CO_SER_ID'
      Origin = 'NBFDADOS.PARAMETRO.CO_SER_ID'
    end
    object Q_PAREN_SER_ID: TIntegerField
      FieldName = 'EN_SER_ID'
      Origin = 'NBFDADOS.PARAMETRO.EN_SER_ID'
    end
    object Q_PARFLAGTELA: TStringField
      FieldName = 'FLAGTELA'
      Origin = 'NBFDADOS.PARAMETRO.FLAGTELA'
      FixedChar = True
      Size = 1
    end
    object Q_PARFLAGTELA2: TStringField
      FieldName = 'FLAGTELA2'
      Origin = 'NBFDADOS.PARAMETRO.FLAGTELA2'
      FixedChar = True
      Size = 1
    end
    object Q_PARFLAGTELA3: TStringField
      FieldName = 'FLAGTELA3'
      Origin = 'NBFDADOS.PARAMETRO.FLAGTELA3'
      FixedChar = True
      Size = 1
    end
    object Q_PARCLIN_ID: TIntegerField
      FieldName = 'CLIN_ID'
      Origin = 'NBFDADOS.PARAMETRO.CLIN_ID'
    end
    object Q_PARVERSAO: TStringField
      FieldName = 'VERSAO'
      Origin = 'NBFDADOS.PARAMETRO.VERSAO'
      FixedChar = True
      Size = 50
    end
    object Q_PARFLAGTELA_USUARIO: TStringField
      FieldName = 'FLAGTELA_USUARIO'
      Origin = 'NBFDADOS.PARAMETRO.FLAGTELA_USUARIO'
      FixedChar = True
    end
    object Q_PARFLAGTELA_DATA: TDateTimeField
      FieldName = 'FLAGTELA_DATA'
      Origin = 'NBFDADOS.PARAMETRO.FLAGTELA_DATA'
    end
    object Q_PARFLAGTELA2_USUARIO: TStringField
      FieldName = 'FLAGTELA2_USUARIO'
      Origin = 'NBFDADOS.PARAMETRO.FLAGTELA2_USUARIO'
      FixedChar = True
    end
    object Q_PARFLAGTELA2_DATA: TDateTimeField
      FieldName = 'FLAGTELA2_DATA'
      Origin = 'NBFDADOS.PARAMETRO.FLAGTELA2_DATA'
    end
    object Q_PARPORTA: TIntegerField
      FieldName = 'PORTA'
      Origin = 'NBFDADOS.PARAMETRO.PORTA'
    end
    object Q_PARHOST: TStringField
      FieldName = 'HOST'
      Origin = 'NBFDADOS.PARAMETRO.HOST'
      FixedChar = True
      Size = 30
    end
    object Q_PARCAMINHO: TStringField
      FieldName = 'CAMINHO'
      Origin = 'NBFDADOS.PARAMETRO.CAMINHO'
      FixedChar = True
      Size = 40
    end
    object Q_PARULT_FATURA: TIntegerField
      FieldName = 'ULT_FATURA'
      Origin = 'NBFDADOS.PARAMETRO.ULT_FATURA'
    end
    object Q_PARULT_NF: TIntegerField
      FieldName = 'ULT_NF'
      Origin = 'NBFDADOS.PARAMETRO.ULT_NF'
    end
    object Q_PARULT_CONH: TIntegerField
      FieldName = 'ULT_CONH'
      Origin = 'NBFDADOS.PARAMETRO.ULT_CONH'
    end
    object Q_PARAR_ID_AVARIA: TIntegerField
      FieldName = 'AR_ID_AVARIA'
      Origin = 'NBFDADOS.PARAMETRO.ULT_CONH'
    end
    object Q_PARULT_MINUTA: TIntegerField
      FieldName = 'ULT_MINUTA'
      Origin = 'NBFDADOS.PARAMETRO.ULT_CONH'
    end
    object Q_PARULT_NFPROV: TIntegerField
      FieldName = 'ULT_NFPROV'
      Origin = 'NBFDADOS.PARAMETRO.ULT_CONH'
    end
    object Q_PARULT_CONHPROV: TIntegerField
      FieldName = 'ULT_CONHPROV'
      Origin = 'NBFDADOS.PARAMETRO.ULT_CONH'
    end
    object Q_PARULT_MINUTAPROV: TIntegerField
      FieldName = 'ULT_MINUTAPROV'
      Origin = 'NBFDADOS.PARAMETRO.ULT_CONH'
    end
    object Q_PARCAMINHO_MATRICIAL: TStringField
      FieldName = 'CAMINHO_MATRICIAL'
      Origin = 'NBFDADOS.PARAMETRO.ULT_CONH'
      FixedChar = True
      Size = 40
    end
    object Q_PARCAMINHO_MATRICIAL_FATURA: TStringField
      FieldName = 'CAMINHO_MATRICIAL_FATURA'
      Origin = 'NBFDADOS.PARAMETRO.PAR_ID'
      FixedChar = True
      Size = 40
    end
  end
  object Q_AUX1: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    ValidateWithMask = True
    Left = 608
    Top = 60
  end
  object Q_CLIN: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select  *  from CLIENTENBF where'
      '(CLIN_CONTRATO <> '#39'I'#39' and CLIN_CONTRATO <> '#39'R'#39') '
      'and clin_id = :clin_id'
      'order by CLIN_RAZA ')
    ValidateWithMask = True
    Left = 506
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'clin_id'
        ParamType = ptUnknown
      end>
    object Q_CLINCLIN_DESCONTO: TFloatField
      FieldName = 'CLIN_DESCONTO'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_DESCONTO'
    end
  end
  object qrBuscaOS: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <
      item
        Name = 'numfat1'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'numfat2'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT A.OS_ID '
      'FROM OS A INNER JOIN FATURA B ON A.FAT_ID = B.FAT_ID'
      'WHERE B.FAT_NUM >= :numfat1'
      'AND B.FAT_NUM <= :numfat2')
    Left = 113
    Top = 201
    object qrBuscaOSOS_ID: TAutoIncField
      FieldName = 'OS_ID'
      ReadOnly = True
    end
  end
  object STP_CORRIGE_OCE: TADOStoredProc
    Connection = FMenu.ADOConnection
    ProcedureName = 'CORRIGE_OCE_OS;1'
    Parameters = <
      item
        Name = '@OS_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Prepared = True
    Left = 113
    Top = 145
  end
end
