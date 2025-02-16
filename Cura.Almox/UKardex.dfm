object FKardex: TFKardex
  Left = 182
  Top = 104
  Width = 1300
  Height = 780
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Relat�rio de Kardex'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1284
    Height = 742
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 0
    object wwDBGrid1: TwwDBGrid
      Left = 4
      Top = 259
      Width = 1412
      Height = 523
      Hint = 'Visualiza��o dos Registros'
      Selected.Strings = (
        'DATA'#9'9'#9'Data'
        'QTDE'#9'11'#9'Quantidade'
        'SALDO'#9'11'#9'Saldo'
        'UNIDADE_ID'#9'4'#9'Un.'
        'DESCRICAO'#9'34'#9'Tipo Docto.'
        'DOCTO'#9'10'#9'N�Docto')
      IniAttributes.Delimiter = ';;'
      TitleColor = clLime
      FixedCols = 0
      ShowHorzScrollBar = True
      Anchors = [akLeft, akTop, akRight, akBottom]
      Color = clInfoBk
      DataSource = DS_KDXsint
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -15
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      KeyOptions = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      TitleAlignment = taCenter
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clBlue
      TitleFont.Height = -11
      TitleFont.Name = 'Comic Sans MS'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
      Visible = False
      OnCalcCellColors = wwDBGrid1CalcCellColors
      FooterColor = clCaptionText
      FooterCellColor = clCaptionText
    end
    object DBG_RAAT: TwwDBGrid
      Left = 5
      Top = 260
      Width = 1412
      Height = 522
      Hint = 'Visualiza��o dos Registros'
      Selected.Strings = (
        'DATA'#9'17'#9'Data'#9'F'#9
        'N_LOTE'#9'13'#9'N�mero Lote'#9'F'#9
        'MATERIAL'#9'30'#9'MATERIAL'#9'F'#9
        'QTDE'#9'10'#9'Quantidade'#9'F'#9
        'SALDO'#9'10'#9'Saldo'#9'F'#9
        'VALID'#9'12'#9'Validade'#9'F'#9
        'MARCA_DESC'#9'10'#9'Marca'#9'F'#9
        'LOCAL'#9'10'#9'Local'#9'F'#9
        'DESCRICAO'#9'17'#9'Tipo Docto.'#9'F'#9
        'DOCTO'#9'14'#9'N�Docto'#9'F'#9
        'FOR_RAZA'#9'50'#9'Fornecedor'#9'F'#9
        'USUARIO'#9'8'#9'Usu�rio'#9'F'#9)
      IniAttributes.Delimiter = ';;'
      TitleColor = clLime
      FixedCols = 0
      ShowHorzScrollBar = True
      Anchors = [akLeft, akTop, akRight, akBottom]
      Color = clInfoBk
      DataSource = DS_KDX
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      KeyOptions = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      TitleAlignment = taCenter
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clBlue
      TitleFont.Height = -11
      TitleFont.Name = 'Comic Sans MS'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
      Visible = False
      OnCalcCellColors = DBG_RAATCalcCellColors
      FooterColor = clCaptionText
      FooterCellColor = clCaptionText
    end
    object GroupBox6: TGroupBox
      Left = 2
      Top = 2
      Width = 1280
      Height = 231
      Align = alTop
      Caption = 'Sele��o de Filtros'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object SBT_VISU: TSpeedButton
        Left = 130
        Top = 194
        Width = 103
        Height = 26
        Hint = 'Visualiza Estoque'
        Caption = 'Pesquisar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Glyph.Data = {
          76060000424D7606000000000000360400002800000018000000180000000100
          08000000000040020000E30E0000E30E00000001000000010000212121000018
          290029292900393939005A39390042424200181852005252520073635200315A
          5A005A5A5A0094735A000039630063636300736B63004A6B6B006B6B6B007B73
          6B00735A73007373730073737B007B7B7B0094847B00A5847B00BD9C7B006384
          84008C8C8C009C948C00AD948C0094949400A59C940084849C009C9C9C00B5AD
          9C00CEBD9C00849CA500A5A5A5009494AD00ADADAD00D6BDAD00FFE7AD00B59C
          B500E7CEB500BDBDBD00D6C6BD009CADC600ADC6C600C6C6C600EFD6C600C6C6
          CE00CECECE00FFDECE00D6D6D600F7E7D600DEDEDE00EFE7DE00D6DEE700DEE7
          E700E7E7E700EFE7E700F7EFE700DEE7EF00EFEFEF00F7F7F700FFF7F700FFFF
          F700FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00424242424242
          4242424242424242424242424242424242424242424242424242424242424242
          4242424242424242424242424242424242424242424242424224000A42424242
          42424242424242424242424242424242240210101A4242424242424242424242
          424242424242422002152B241A4242424242424242424242424242424242420A
          0A2B2B1A42424242424242424242424242420D1A1A4242030A1D1A4242424242
          42424242424242424202110B080300241A2042424242424242424242201F1F20
          07223335271B0705201F1F1F241F1F2B42424242010101020E241B1B1B201B03
          010101010101010142424242090A1E07222B1C17182C2A0D060109141A1E0A04
          424242420919370A2A2C2C2C2C2C2A1613201D262F37191242424242091F4313
          22283C3E412A2A152636434343432509424242421F09432B1B28333C352A211A
          4343413F43430F1F4242424223094340241D2A302A211A3E3F3E3E3E40430929
          42424242230C433F3E2F24202020243F3E3E3E3E3E430929424242422E06413E
          3A3A3A3A3E24243E3A3A3A3A3E410629424242422E063F3A3636363A3A24243A
          3A3636363A3F0629424242422E0C2D322F2F2F2F322020322F2F2F2F322F0C2B
          42424242422E24242B2B2B2B2B20202B2B2B2B2B24242B424242424242424242
          2B242424242020242424242B4242424242424242424242424242424242424242
          4242424242424242424242424242424242424242424242424242424242424242
          4242424242424242424242424242424242424242424242424242}
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = SBT_VISUClick
      end
      object Label8: TLabel
        Left = 30
        Top = 81
        Width = 93
        Height = 18
        Caption = 'Lote de Compra'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 72
        Top = 23
        Width = 51
        Height = 18
        Caption = 'Material'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 59
        Top = 52
        Width = 65
        Height = 18
        Caption = 'Per�odo de'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 232
        Top = 52
        Width = 19
        Height = 18
        Caption = 'at�'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 53
        Top = 109
        Width = 70
        Height = 18
        Caption = 'Fornecedor'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 363
        Top = 53
        Width = 34
        Height = 18
        Caption = 'Valid.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object Label22: TLabel
        Left = 85
        Top = 139
        Width = 38
        Height = 18
        Caption = 'Marca'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object Label23: TLabel
        Left = 91
        Top = 168
        Width = 32
        Height = 18
        Caption = 'Local'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object SpeedButton1: TSpeedButton
        Left = 236
        Top = 194
        Width = 99
        Height = 27
        Caption = 'Imprimir'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Glyph.Data = {
          8A040000424D8A040000000000004A0200002800000018000000180000000100
          08000000000040020000F40E0000F40E000085000000850000002A0B11002A11
          110031111100311616001C1C1C00381C1C00401C1C0023231C001C2323002323
          23002ACA2A0031313100603138006A3138003138380038383800403838003831
          4000733140003838400048484800584848006048480050504800585048006050
          4800504050006A405000604850006A485000505050006A505000735050007348
          58006A505800735058008450580058585800605858006A585800607B58008F50
          60008F58600058606000606060006A606000846060008F60600098606000606A
          60008F6A60006AC0600073FF60006A606A0073606A007B606A00AB606A00586A
          6A006A6A6A008F6A6A00986A6A00A16A6A00846A73006A737300737373007B73
          730084737300AB737300B67373006A7B7300AB737B00B6737B006A7B7B00737B
          7B007B7B7B00847B7B0073847B007BD47B0098608400736A8400737B84007B7B
          8400987B8400738484007B848400848484008F848400A18F840084EA84008F60
          8F008F8F8F00988F8F00A18F8F0098849800848F9800AB8F98008F9898009898
          9800A198980098A1A100A1A1A100A1A1AB00ABA1AB00A1ABAB00ABABAB00ABCA
          AB00B6B6B600C0B6B600B6B6C000B6C0C000C0C0C000CAC0C000C0CAC000CAC0
          CA00C0CACA00CACACA00D4CACA00CAD4D400D4D4D400D4E0D400E0CAE000D4E0
          E000E0E0E000EAE0E000E0EAE000E0EAEA00EAEAEA00F4EAEA00EAF4F400F4F4
          F400FF00FF00F4FFFF00FFFFFF00828282828282828282828282828282828282
          82828282828282828282828282825A555555555555555A828282828282828282
          828282825564737A7D7E7E7E7C7668625682828282828282828282820B2B7E81
          6D676A6470846A260B658282828282828282820F0B1E7E81736B6F6A73846C17
          0B0F648282828282821E140B0B3A81807671746F768472310B0B0B1E82828282
          1E0B0B0B0B3F7972543F40645E7E6D3A0B0B0B0B1782822C0B102D0F0B1E5561
          63636464605A51170B13390E0B1E820F142D3A14140B0B0B0B0B0B0B0B0B0B0B
          14116411110B820F355448534C49544A544031454C4954504F6434531A09820F
          55686661412D221F1F1D1B1C19202137595364645D0B821461755B23243B2F43
          4447464643442A3C29162869640B82256472360D383C2F2F30302E2E302F323C
          3D124E7861148240646E370C0D060B0B0B0B0B0B0B0B0B060D0C3E6C613A8268
          646E52000B03151616151516161618050902566E64618282646F5F010B578484
          848484848484845C0B025C6E648282826863644B274184848484848484848341
          1C42676368828282827D7A7E7B737A8383838484848075737A7F7B7C82828282
          828282828277768184846E6464646472828282828282828282828282826F7683
          847E64646B6A6E73828282828282828282828282826A6E818176646484847E6E
          828282828282828282828282826A6E81816E6476847A6E828282828282828282
          82828282826864737364647E7A6E8282828282828282828282828282826A6164
          6464686E6E828282828282828282}
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton1Click
      end
      object SpeedButton2: TSpeedButton
        Left = 340
        Top = 194
        Width = 99
        Height = 27
        Caption = 'Excel'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton2Click
      end
      object btnExportEmMassa: TSpeedButton
        Left = 444
        Top = 194
        Width = 125
        Height = 27
        Caption = 'Excel em Massa'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = btnExportEmMassaClick
      end
      object Panel10: TPanel
        Left = 496
        Top = 152
        Width = 281
        Height = 36
        BevelInner = bvLowered
        BevelOuter = bvSpace
        Color = 12615680
        TabOrder = 9
        object Totais: TDBText
          Left = 211
          Top = 2
          Width = 57
          Height = 27
          AutoSize = True
          DataField = 'QTDE'
          DataSource = DS_TOT
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -19
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label46: TLabel
          Left = 10
          Top = 2
          Width = 107
          Height = 27
          Caption = 'Saldo Atual'
          Color = 12615680
          Font.Charset = ANSI_CHARSET
          Font.Color = clYellow
          Font.Height = -19
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
      end
      object RadioGroup1: TRadioGroup
        Left = 496
        Top = 93
        Width = 281
        Height = 59
        Columns = 2
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ItemIndex = 1
        Items.Strings = (
          'Sint�tico'
          'Anal�tico')
        ParentFont = False
        TabOrder = 8
        OnClick = RadioGroup1Click
      end
      object txtLote: TwwDBEdit
        Left = 128
        Top = 78
        Width = 223
        Height = 25
        CharCase = ecUpperCase
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnEnter = txtLoteEnter
        OnExit = txtLoteExit
        OnKeyPress = mkDiniKeyPress
        OnKeyUp = txtLoteKeyUp
      end
      object cboProd: TwwDBLookupCombo
        Left = 128
        Top = 20
        Width = 641
        Height = 25
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'MAT_DESC'#9'60'#9'MAT_DESC'#9'F')
        LookupTable = Q_MAT
        LookupField = 'MAT_ID'
        ParentFont = False
        TabOrder = 0
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        ShowMatchText = True
        OnCloseUp = cboProdCloseUp
        OnEnter = cboProdEnter
        OnExit = cboProdExit
        OnKeyUp = cboProdKeyUp
      end
      object mkDini: TMaskEdit
        Left = 129
        Top = 49
        Width = 98
        Height = 25
        EditMask = '!99/99/9999;1;_'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 1
        Text = '  /  /    '
        OnEnter = mkDiniEnter
        OnExit = mkDiniExit
        OnKeyPress = mkDiniKeyPress
        OnKeyUp = mkDiniKeyUp
      end
      object mkDfim: TMaskEdit
        Left = 258
        Top = 49
        Width = 93
        Height = 25
        EditMask = '!99/99/9999;1;_'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 2
        Text = '  /  /    '
        OnEnter = mkDfimEnter
        OnExit = mkDfimExit
        OnKeyPress = mkDiniKeyPress
        OnKeyUp = mkDfimKeyUp
      end
      object cboForn: TwwDBLookupCombo
        Left = 128
        Top = 106
        Width = 354
        Height = 25
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'FOR_RAZA'#9'50'#9'FOR_RAZA'#9'F')
        LookupTable = Q_FORN
        LookupField = 'FOR_CODI'
        ParentFont = False
        TabOrder = 5
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        ShowMatchText = True
        OnCloseUp = cboProdCloseUp
        OnEnter = cboProdEnter
        OnExit = cboProdExit
        OnKeyUp = cboProdKeyUp
      end
      object MaskEdit1: TMaskEdit
        Left = 400
        Top = 49
        Width = 98
        Height = 25
        EditMask = '99/99/9999'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 3
        Text = '  /  /    '
        OnEnter = MaskEdit1Enter
        OnExit = MaskEdit1Exit
        OnKeyPress = MaskEdit1KeyPress
      end
      object wwDBLookupCombo4: TwwDBLookupCombo
        Left = 128
        Top = 135
        Width = 354
        Height = 25
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'MARCA_DESC'#9'20'#9'MARCA_DESC'#9'F')
        LookupTable = Q_MARCA_FILT
        LookupField = 'MARCA_ID'
        ParentFont = False
        TabOrder = 6
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        OnCloseUp = wwDBLookupCombo4CloseUp
        OnEnter = wwDBLookupCombo4Enter
        OnExit = wwDBLookupCombo4Exit
        OnKeyUp = wwDBLookupCombo4KeyUp
      end
      object wwDBLookupCombo3: TwwDBLookupCombo
        Left = 128
        Top = 164
        Width = 354
        Height = 25
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'Descricao'#9'50'#9'Descricao'#9'F')
        LookupTable = Q_LOCAL_FILT
        LookupField = 'Local_ID'
        ParentFont = False
        TabOrder = 7
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        OnCloseUp = wwDBLookupCombo3CloseUp
        OnEnter = wwDBLookupCombo3Enter
        OnExit = wwDBLookupCombo3Exit
        OnKeyUp = wwDBLookupCombo3KeyUp
      end
      object chkExcelEmMassa: TCheckBox
        Left = 840
        Top = 24
        Width = 97
        Height = 17
        Caption = 'chkExcelEmMassa'
        TabOrder = 10
      end
      object btnGetMaterial: TBitBtn
        Left = 770
        Top = 18
        Width = 32
        Height = 28
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
        OnClick = btnGetMaterialClick
        Glyph.Data = {
          76060000424D7606000000000000360400002800000018000000180000000100
          08000000000040020000E30E0000E30E00000001000000010000212121000018
          290029292900393939005A39390042424200181852005252520073635200315A
          5A005A5A5A0094735A000039630063636300736B63004A6B6B006B6B6B007B73
          6B00735A73007373730073737B007B7B7B0094847B00A5847B00BD9C7B006384
          84008C8C8C009C948C00AD948C0094949400A59C940084849C009C9C9C00B5AD
          9C00CEBD9C00849CA500A5A5A5009494AD00ADADAD00D6BDAD00FFE7AD00B59C
          B500E7CEB500BDBDBD00D6C6BD009CADC600ADC6C600C6C6C600EFD6C600C6C6
          CE00CECECE00FFDECE00D6D6D600F7E7D600DEDEDE00EFE7DE00D6DEE700DEE7
          E700E7E7E700EFE7E700F7EFE700DEE7EF00EFEFEF00F7F7F700FFF7F700FFFF
          F700FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00424242424242
          4242424242424242424242424242424242424242424242424242424242424242
          4242424242424242424242424242424242424242424242424224000A42424242
          42424242424242424242424242424242240210101A4242424242424242424242
          424242424242422002152B241A4242424242424242424242424242424242420A
          0A2B2B1A42424242424242424242424242420D1A1A4242030A1D1A4242424242
          42424242424242424202110B080300241A2042424242424242424242201F1F20
          07223335271B0705201F1F1F241F1F2B42424242010101020E241B1B1B201B03
          010101010101010142424242090A1E07222B1C17182C2A0D060109141A1E0A04
          424242420919370A2A2C2C2C2C2C2A1613201D262F37191242424242091F4313
          22283C3E412A2A152636434343432509424242421F09432B1B28333C352A211A
          4343413F43430F1F4242424223094340241D2A302A211A3E3F3E3E3E40430929
          42424242230C433F3E2F24202020243F3E3E3E3E3E430929424242422E06413E
          3A3A3A3A3E24243E3A3A3A3A3E410629424242422E063F3A3636363A3A24243A
          3A3636363A3F0629424242422E0C2D322F2F2F2F322020322F2F2F2F322F0C2B
          42424242422E24242B2B2B2B2B20202B2B2B2B2B24242B424242424242424242
          2B242424242020242424242B4242424242424242424242424242424242424242
          4242424242424242424242424242424242424242424242424242424242424242
          4242424242424242424242424242424242424242424242424242}
      end
    end
    object Panel2: TPanel
      Left = 2
      Top = 697
      Width = 1280
      Height = 43
      Align = alBottom
      TabOrder = 3
      object Label48: TLabel
        Left = 78
        Top = 7
        Width = 53
        Height = 16
        Caption = 'Entradas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 210
        Top = 7
        Width = 38
        Height = 16
        Caption = 'Baixas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Panel3: TPanel
        Left = 1049
        Top = 7
        Width = 68
        Height = 18
        Anchors = [akRight, akBottom]
        BevelInner = bvLowered
        BevelOuter = bvSpace
        Color = 16777170
        TabOrder = 0
      end
      object Panel4: TPanel
        Left = 1181
        Top = 7
        Width = 68
        Height = 18
        Anchors = [akRight, akBottom]
        BevelInner = bvLowered
        BevelOuter = bvSpace
        Color = 10329599
        TabOrder = 1
      end
    end
  end
  object Q_KDX: TwwQuery
    AutoCalcFields = False
    AfterOpen = Q_KDXAfterOpen
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'SELECT '#9#9'A.*,'
      #9#9'B.DESCRICAO,'
      #9#9'FORN.FOR_RAZA,'
      #9#9'MAT.MAT_DESC AS MATERIAL,'
      #9#9'LOC.DESCRICAO LOCAL,'
      #9#9'MAC.MARCA_DESC,'
      #9#9'dbo.fnGetCustoMedio(A.MAT_ID, A.DATA) as CustoMedio,'
      
        #9#9'dbo.fnGetValorReposicao(A.MAT_ID, A.MARCA_ID, A.DATA) as Repos' +
        'icao,'
      
        'A.Qtde * dbo.fnGetValorReposicaoPelaEntrada(A.ALMOX_ID)  as Tota' +
        'lReposicao'
      'FROM '#9#9'KARDEX A LEFT OUTER JOIN  TIPO_DOCUMENTO B ON '
      #9#9'A.TD_ID = B.TD_ID ,'
      #9#9'CPAFORN FORN,'
      #9#9'MATERIAIS MAT,'
      #9#9'LOCAL LOC,'
      #9#9'MARCAS MAC'
      'WHERE'#9#9'A.FOR_CODI = FORN.FOR_CODI'
      'AND             A.MAT_ID = MAT.MAT_ID'
      'AND             A.MARCA_ID = MAC.MARCA_ID'
      'AND             A.LOCAL_ID = LOC.LOCAL_ID'
      'ORDER BY '#9'A.N_LOTE,'
      #9#9'CONVERT(CHAR(10),DATA,112) DESC'
      ''
      ''
      ''
      ''
      '')
    ValidateWithMask = True
    Left = 50
    Top = 674
    object Q_KDXDATA: TDateTimeField
      DisplayLabel = 'Data'
      DisplayWidth = 17
      FieldName = 'DATA'
      Origin = 'BANCODADOS.KARDEX.DATA'
    end
    object Q_KDXN_LOTE: TStringField
      DisplayLabel = 'N�mero Lote'
      DisplayWidth = 13
      FieldName = 'N_LOTE'
      Origin = 'BANCODADOS.KARDEX.N_LOTE'
      FixedChar = True
    end
    object Q_KDXMATERIAL: TStringField
      DisplayWidth = 30
      FieldName = 'MATERIAL'
      FixedChar = True
      Size = 120
    end
    object Q_KDXQTDE: TFloatField
      DisplayLabel = 'Quantidade'
      DisplayWidth = 10
      FieldName = 'QTDE'
      Origin = 'BANCODADOS.KARDEX.QTDE'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_KDXSALDO: TFloatField
      DisplayLabel = 'Saldo'
      DisplayWidth = 10
      FieldName = 'SALDO'
      Origin = 'BANCODADOS.KARDEX.SALDO'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_KDXVALID: TDateTimeField
      DisplayLabel = 'Validade'
      DisplayWidth = 12
      FieldName = 'VALID'
      DisplayFormat = 'DD/MM/YY'
    end
    object Q_KDXMARCA_DESC: TStringField
      DisplayLabel = 'Marca'
      DisplayWidth = 10
      FieldName = 'MARCA_DESC'
      FixedChar = True
    end
    object Q_KDXLOCAL: TStringField
      DisplayLabel = 'Local'
      DisplayWidth = 10
      FieldName = 'LOCAL'
      FixedChar = True
      Size = 50
    end
    object Q_KDXDESCRICAO: TStringField
      DisplayLabel = 'Tipo Docto.'
      DisplayWidth = 17
      FieldName = 'DESCRICAO'
      FixedChar = True
      Size = 40
    end
    object Q_KDXDOCTO: TStringField
      DisplayLabel = 'N�Docto'
      DisplayWidth = 14
      FieldName = 'DOCTO'
      FixedChar = True
    end
    object Q_KDXFOR_RAZA: TStringField
      DisplayLabel = 'Fornecedor'
      DisplayWidth = 50
      FieldName = 'FOR_RAZA'
      FixedChar = True
      Size = 50
    end
    object Q_KDXUSUARIO: TStringField
      DisplayLabel = 'Usu�rio'
      DisplayWidth = 8
      FieldName = 'USUARIO'
      Origin = 'BANCODADOS.KARDEX.USUARIO'
      FixedChar = True
    end
    object Q_KDXTIPO: TStringField
      FieldName = 'TIPO'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_KDXCustoMedio: TFloatField
      FieldName = 'CustoMedio'
    end
    object Q_KDXReposicao: TFloatField
      FieldName = 'Reposicao'
    end
    object Q_KDXTotalReposicao: TFloatField
      FieldName = 'TotalReposicao'
    end
  end
  object DS_KDX: TwwDataSource
    DataSet = Q_KDX
    Left = 410
    Top = 322
  end
  object Q_MAT: TwwQuery
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'SELECT'#9#9#9'MAT_ID,'
      #9#9#9'CodigoMaterial + '#39' '#39' + MAT_DESC AS MAT_DESC'
      'FROM'#9#9#9'MATERIAIS'
      'WHERE GENERICO NOT IN ('#39'S'#39')'
      'ORDER BY'#9#9'MAT_DESC')
    ValidateWithMask = True
    Left = 281
    Top = 322
    object Q_MATMAT_DESC: TStringField
      DisplayWidth = 60
      FieldName = 'MAT_DESC'
      Origin = 'CURA.MATERIAIS.MAT_DESC'
      FixedChar = True
      Size = 60
    end
    object Q_MATMAT_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'MAT_ID'
      Origin = 'CURA.MATERIAIS.MAT_ID'
      Visible = False
    end
  end
  object STP_CONSULTAKARDEX: TwwStoredProc
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    StoredProcName = 'dbo.STP_CONSULTAKARDEX'
    ValidateWithMask = True
    Left = 698
    Top = 314
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Result'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = '@MAT_ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@USUARIO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@LOTE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@FOR_CODI'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@MARCA_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@LOCAL_ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@VALID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@TIPOKARDEX'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = '@SALDOINICIAL'
        ParamType = ptInput
      end>
  end
  object Q_AUX: TwwQuery
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    ValidateWithMask = True
    Left = 452
    Top = 379
  end
  object Q_KDXsint: TwwQuery
    AfterOpen = Q_KDXsintAfterOpen
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      
        'SELECT A.*,B.DESCRICAO FROM KARDEX A LEFT OUTER JOIN  TIPO_DOCUM' +
        'ENTO B ON '
      'A.TD_ID = B.TD_ID '
      'ORDER BY KAR_ID  DESC'
      ''
      ''
      '')
    ValidateWithMask = True
    Left = 97
    Top = 362
    object Q_KDXsintDATA: TDateTimeField
      DisplayLabel = 'Data'
      DisplayWidth = 9
      FieldName = 'DATA'
      DisplayFormat = 'DD/MM/YY'
    end
    object Q_KDXsintQTDE: TFloatField
      DisplayLabel = 'Quantidade'
      DisplayWidth = 11
      FieldName = 'QTDE'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_KDXsintSALDO: TFloatField
      DisplayLabel = 'Saldo'
      DisplayWidth = 11
      FieldName = 'SALDO'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_KDXsintDESCRICAO: TStringField
      DisplayLabel = 'Tipo Docto.'
      DisplayWidth = 34
      FieldName = 'DESCRICAO'
      FixedChar = True
      Size = 40
    end
    object Q_KDXsintDOCTO: TStringField
      DisplayLabel = 'N�Docto'
      DisplayWidth = 10
      FieldName = 'DOCTO'
      FixedChar = True
    end
    object Q_KDXsintUSUARIO: TStringField
      DisplayLabel = 'Usu�rio'
      DisplayWidth = 7
      FieldName = 'USUARIO'
      Visible = False
      FixedChar = True
    end
    object Q_KDXsintN_LOTE: TStringField
      DisplayLabel = 'N�mero Lote'
      DisplayWidth = 16
      FieldName = 'N_LOTE'
      Visible = False
      FixedChar = True
    end
    object Q_KDXsintKAR_ID: TAutoIncField
      FieldName = 'KAR_ID'
      Visible = False
    end
    object Q_KDXsintTIPO: TStringField
      FieldName = 'TIPO'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_KDXsintUSUARIOATIVO: TStringField
      FieldName = 'USUARIOATIVO'
      Visible = False
      FixedChar = True
    end
    object Q_KDXsintTD_ID: TIntegerField
      FieldName = 'TD_ID'
      Visible = False
    end
    object Q_KDXsintMAT_ID: TIntegerField
      FieldName = 'MAT_ID'
      Visible = False
    end
    object Q_KDXsintMARCA_ID: TIntegerField
      FieldName = 'MARCA_ID'
      Visible = False
    end
    object Q_KDXsintLOCAL_ID: TIntegerField
      FieldName = 'LOCAL_ID'
      Visible = False
    end
    object Q_KDXsintVALID: TDateTimeField
      FieldName = 'VALID'
      Visible = False
    end
    object Q_KDXsintFOR_CODI: TStringField
      FieldName = 'FOR_CODI'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object Q_KDXsintalmox_id: TIntegerField
      FieldName = 'almox_id'
      Visible = False
    end
    object Q_KDXsintUNI_ID: TIntegerField
      FieldName = 'UNI_ID'
    end
  end
  object DS_KDXsint: TwwDataSource
    DataSet = Q_KDXsint
    Left = 473
    Top = 442
  end
  object Q_FORN: TwwQuery
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'SELECT'#9#9'FOR_CODI,'
      #9#9'FOR_RAZA'
      'FROM'#9#9'CPAFORN'
      'WHERE F_ALMOX = '#39'S'#39
      'ORDER BY'#9'FOR_RAZA'
      '')
    ValidateWithMask = True
    Left = 161
    Top = 314
    object Q_FORNFOR_RAZA: TStringField
      DisplayWidth = 50
      FieldName = 'FOR_RAZA'
      Origin = 'CURA.CPAFORN.FOR_RAZA'
      FixedChar = True
      Size = 50
    end
    object Q_FORNFOR_CODI: TStringField
      DisplayWidth = 15
      FieldName = 'FOR_CODI'
      Origin = 'CURA.CPAFORN.FOR_CODI'
      Visible = False
      FixedChar = True
      Size = 15
    end
  end
  object Q_TOT: TwwQuery
    BeforeOpen = Q_TOTBeforeOpen
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'SELECT'#9#9'QTDE'
      'FROM'#9#9'ALMOX')
    ValidateWithMask = True
    Left = 541
    Top = 370
    object Q_TOTQTDE: TFloatField
      FieldName = 'QTDE'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object DS_TOT: TwwDataSource
    DataSet = Q_TOT
    Left = 605
    Top = 314
  end
  object Q_MARCA_FILT: TwwQuery
    DatabaseName = 'Cura'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'SELECT        *'
      'FROM           MARCAS'
      ''
      'ORDER BY MARCA_DESC')
    ValidateWithMask = True
    Left = 490
    Top = 312
    object StringField4: TStringField
      DisplayWidth = 20
      FieldName = 'MARCA_DESC'
      Origin = 'CURA.MARCAS.MARCA_DESC'
      FixedChar = True
    end
    object AutoIncField3: TAutoIncField
      DisplayWidth = 10
      FieldName = 'MARCA_ID'
      Origin = 'CURA.MARCAS.MARCA_ID'
      Visible = False
    end
  end
  object Q_LOCAL_FILT: TwwQuery
    DatabaseName = 'Cura'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'SELECT * FROM LOCAL ORDER BY DESCRICAO')
    ValidateWithMask = True
    Left = 346
    Top = 304
    object StringField7: TStringField
      DisplayWidth = 50
      FieldName = 'Descricao'
      Origin = 'CURA.LOCAL.Descricao'
      FixedChar = True
      Size = 50
    end
    object AutoIncField4: TAutoIncField
      DisplayWidth = 10
      FieldName = 'Local_ID'
      Origin = 'CURA.LOCAL.Local_ID'
      Visible = False
    end
    object StringField8: TStringField
      DisplayWidth = 1
      FieldName = 'DisponivelSN'
      Origin = 'CURA.LOCAL.DisponivelSN'
      Visible = False
      FixedChar = True
      Size = 1
    end
  end
  object Q_UNI: TwwQuery
    Active = True
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'SELECT * FROM UNIDADES')
    ValidateWithMask = True
    Left = 628
    Top = 419
    object Q_UNIUNI_ID: TAutoIncField
      FieldName = 'UNI_ID'
      Origin = 'CURA.UNIDADES.UNI_ID'
    end
    object Q_UNIUNI_SIGLA: TStringField
      FieldName = 'UNI_SIGLA'
      Origin = 'CURA.UNIDADES.UNI_SIGLA'
      FixedChar = True
      Size = 2
    end
  end
  object qrTotal: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <
      item
        Name = 'mat_id'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT'#9
      'SUM(CASE WHEN ALM.QTDE IS NULL THEN 0.0 ELSE ALM.QTDE END) QTDE'
      'FROM'#9#9
      'ALMOX'#9#9'ALM  '
      'WHERE'#9#9
      #9#9'ALM.TIPO = '#39'E'#39' '
      'AND'#9#9'ALM.QTDE_RETIRADA IS NULL  '
      'AND alm.MAT_ID = :mat_id')
    Left = 170
    Top = 433
    object qrTotalQTDE: TFloatField
      FieldName = 'QTDE'
      ReadOnly = True
    end
  end
  object qrExec: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <
      item
        Name = 'usuario'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'saldo'
        Attributes = [paSigned, paNullable]
        DataType = ftFloat
        NumericScale = 255
        Precision = 15
        Size = 8
        Value = Null
      end>
    SQL.Strings = (
      'Exec SALDO_KARDEX :usuario, :saldo')
    Left = 290
    Top = 473
  end
  object dsExcel: TDataSource
    Left = 490
    Top = 226
  end
  object qrExportLocal: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM LOCAL ORDER BY DESCRICAO')
    Left = 48
    Top = 296
    object qrExportLocalDescricao: TStringField
      DisplayWidth = 50
      FieldName = 'Descricao'
      Size = 50
    end
    object qrExportLocalLocal_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'Local_ID'
      ReadOnly = True
      Visible = False
    end
    object qrExportLocalDisponivelSN: TStringField
      DisplayWidth = 1
      FieldName = 'DisponivelSN'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object qrExportLocalCONSUMO: TStringField
      DisplayWidth = 1
      FieldName = 'CONSUMO'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object qrExportLocalCONTROLA_ESTOQUE: TStringField
      DisplayWidth = 1
      FieldName = 'CONTROLA_ESTOQUE'
      Visible = False
      FixedChar = True
      Size = 1
    end
  end
  object qrExportGrupo: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    SQL.Strings = (
      'SELECT GRU_ID, GRU_DESC FROM GRUPO_MATERIAL'
      'ORDER BY GRU_DESC')
    Left = 56
    Top = 240
    object qrExportGrupoGRU_DESC: TStringField
      DisplayWidth = 40
      FieldName = 'GRU_DESC'
      Size = 40
    end
    object qrExportGrupoGRU_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'GRU_ID'
      ReadOnly = True
      Visible = False
    end
  end
  object qrGrupo: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT GRU_ID, GRU_DESC FROM GRUPO_MATERIAL'
      'ORDER BY GRU_DESC')
    Left = 224
    Top = 272
  end
  object qrExportMateriais: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <
      item
        Name = 'local'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT DISTINCT MAT_ID, MAT_DESC'
      'FROM vwEstoque'
      'WHERE LOCAL_ID = :local'
      'AND QTDE > 0')
    Left = 120
    Top = 552
    object qrExportMateriaisMAT_ID: TAutoIncField
      FieldName = 'MAT_ID'
      ReadOnly = True
    end
    object qrExportMateriaisMAT_DESC: TStringField
      FieldName = 'MAT_DESC'
      Size = 100
    end
  end
end
