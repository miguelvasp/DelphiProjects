object FKardex: TFKardex
  Left = 212
  Top = 75
  Width = 800
  Height = 579
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
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label48: TLabel
    Left = 103
    Top = 516
    Width = 51
    Height = 15
    Caption = 'Entradas'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 395
    Top = 517
    Width = 39
    Height = 15
    Caption = 'Sa'#237'das'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 687
    Top = 517
    Width = 56
    Height = 15
    Caption = 'Invent'#225'rio'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBG_INFI: TwwDBGrid
    Left = 1
    Top = 192
    Width = 791
    Height = 315
    DittoAttributes.ShortCutDittoField = 0
    DittoAttributes.ShortCutDittoRecord = 0
    DittoAttributes.Options = []
    DisableThemesInTitle = False
    Selected.Strings = (
      'KAR_DTMOV'#9'9'#9'Data'#9'F'
      'KAR_TPDOC'#9'16'#9'Tipo Docto.'#9'F'
      'KAR_NDOC'#9'8'#9'Docto. N'#186#9'F'
      'KAR_QTDE'#9'13'#9'Qtde. UV'#9'F'
      'KAR_SALDO'#9'14'#9'Saldo'#9'F'
      'KAR_TAG'#9'6'#9'TAG'#9'F'
      'AREAdesc'#9'12'#9#193'rea'#9'F'
      'POSdesc'#9'6'#9'Posi'#231#227'o'#9'F'
      'CHdesc'#9'12'#9'Usu'#225'rio'#9'F'
      'KAR_LOTE'#9'10'#9'Lote'#9'F'
      'KAR_BATCH'#9'9'#9'Batch'#9'F'
      'KAR_VCTO'#9'9'#9'Vencimento'#9'F')
    IniAttributes.FileName = 'delphi32.ini'
    IniAttributes.SectionName = 'FNFDBG_INFI'
    IniAttributes.Delimiter = ';;'
    TitleColor = 12615680
    FixedCols = 0
    ShowHorzScrollBar = True
    Color = 14024703
    DataSource = DS_KDX
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    KeyOptions = [dgEnterToTab]
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
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
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 792
    Height = 55
    Align = alTop
    BevelInner = bvLowered
    Color = clWhite
    TabOrder = 0
    object SpeedButton3: TSpeedButton
      Left = 739
      Top = 2
      Width = 50
      Height = 53
      Hint = 'Sair'
      Caption = 'Fechar'
      Flat = True
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C0000232E0000232E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFAFBFBDFE0E0D3D3D3DFDFDFE2E2E2ECECECEFEFEFF6F6F6FBFBFBFC
        FCFCFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFA7C5D6226C9724678D366D8C47748E5D7E92748B998A98A0A2A9ACB5
        B7B8C7C7C7D4D4D4E0E0E0E3E3E3EEEEEEF8F8F8FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBED6E48CB6CF8CB6CF8CB6
        CF8CB6CF478BB302619B04629E03629B0161980060960060960260950660940C
        619118638F26678D386E8C49758F648191C0C0C1FBFBFBFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBCD5E3166B9C005D93005D93005D
        93005D93005E950B66AD1B76C91D7BCB1B79C81977C41673BF1270B9106DB40C
        6AAD0967A80665A304629D02619A0060977C8F9AF2F2F2FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA4C5D9005D930E436E103E67103E
        67103E670653850F6CB22180CE2487D22487D22385D12284D12183CF2081CF1F
        80CE1E7FCE1D7DCD1C7BCB1872C60863A66B8798EEEEEEFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7EADC9005D93123B621339601339
        601339600653841371B72689D4298FD8278DD5288ED6288DD6278CD5258BD425
        8AD42489D32387D22286D11E7ECD0B68AA628395EBEBEBFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF639CBD005D93133A611339601339
        601339600555871775BC298DD62C93D9268DD62C93D92B92D92990D8258CD529
        90D8288FD7268CD5258CD52286D10F6DB1597D93E8E8E8FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF70A4C3005D921339601339601339
        6013396004588A1B79C02C90D92E94DA288FD72E96DB2E95DB2C93D9278DD62C
        93D92B92D9288FD7278DD6258AD31170B4507991EAEAEAFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF639CBD03578B1339601339601339
        6013396003598D1E7DC52E93DA2F95DC2A91D83198DD3097DC2E95DA2990D72F
        95DB2E94DB2A91D9288FD7288DD51372B5487590E6E6E6FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5090B50456881339601339601339
        60133961035A8F2181C93296DC3097DD2D94DA349ADF339ADE3097DC2A91D831
        98DD3197DC2E94DA2990D82B90D81675BB40728FE1E1E1FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5291B60555871339601339601339
        60133A62025C912686CE3599DD3196D92E8ED03599D9369DE0339ADE2C92D934
        9BDE349ADE3298DD2A91D92E93DA1A78BF3A6F8EDDDDDDFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5492B70547671133551339601339
        60123B63025D932B8AD33392D31C649E145288205D87338DC8369CDF2D94DA37
        9EE0379DE0359CDF2C93D93297DC1D7CC1336D8DD7D7D7FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF478CA604710B082F29102F4F1339
        5F123C64025E952E8ED61965AC166DB81771BC10579C23618A379BDB2F96DB3A
        A1E23AA0E2389FE12D93DA359ADE2080C52B698CD9D9D9FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFBFBFBEBEBEBD3D4D329666F32A33D2A96340639210E2B
        48113C640260982B86CF1366B11E83CE1F85D01771BC1956893798D63198DD3D
        A4E53DA3E43CA2E32E94DA389EE02686CC25678CD8D8D8FFFFFFFFFFFFFFFFFF
        FFFFFFFCFCFCEEEFEE97B497438C44258F2B2AA03555C26770D38543AC500749
        1A0A2F4B04639B2D88D02070B658A4DB59A5DD3282C41D60963A9DDC339ADD40
        A7E63FA6E53FA5E52F95DB3BA1E3298ACF20658DD3D3D3FFFFFFFFFFFFFFFFFF
        FDFDFDD8E3D83D943E1FA4293BC04E4BC85F57CB6C64D07970D3867BD7925EBE
        6E0B633205649D3A9BE13378B7B9D6EDBBD8EF568CC03388C03FA5E4349BDE43
        AAE843A9E742A9E72F96DB3FA4E52C8DD31A638DCDCDCDFFFFFFFFFFFFFFFFFF
        E1EAE12D943023B63431BF443EC3514AC75E57CC6C64D07970D3867AD79184DA
        9B5EB5930867A13EA0E53FA0DF3881C0488BC43791CF47ADE942A8E7369DDF46
        ACEA45ACE945ACE93097DC42A8E73294D9146290C7C8C8FFFFFFFFFFFFFAFBFA
        4DA24F19B22926BC3832BF443EC3514BC75E57CC6C64CF7970D3857AD79174CE
        88167A4B0B6AA540A3E74AB0EC3198DC4BB1EC4AB1ED4AB1EC44AAE8379EE149
        AFEB48AFEB49AEEB3198DD46AAE93799DE0F6291C0C1C1FEFEFEFFFFFFB3D4B3
        0D9E161CB82D26BC3826B13522A12C269B301E93334BB95B6FD4865BC06D0E67
        250B486A0E6DA844A7E94DB3EE3198DC4EB4EF4DB4EE4DB3EE46ACE93AA0E24C
        B2ED4BB2ED4CB2ED3298DD49AEEC3B9EE10C6192BABCBCFEFEFEFFFFFF439D43
        12B12214A821309A348EC28ECAE2CA99BED1005F8735A54041AE4E0A572C1339
        5D0C48751272AD46A9EB51B6EF3A9ADA5CB9ED5FB9EC62BAEA61B5E55BACDD71
        BDE675BEE579C0E469ADD674BBE23FA2E5086196B3B5B6FDFDFDFFFFFF138E16
        0B9C147CB27DF1F5F1FEFEFEFFFFFF689FBF005F880C81110C4B3A13395F1339
        600B4A781676B24FAEEBE4DBCAF7EAD7FAEDDAFBEFDCFCEFDDFEEFDEFFF2E0FF
        F3E1FEF2E3FFF1E4F9F0E5FEE8D058ACE309649BABAFB1FCFCFCFFFFFF0D860E
        659E66F6F6F6FFFFFFFFFFFFFFFFFF83B0CB025B8F1140561339601339601339
        60094C7B1B7BB769B5E5D9CDDB746FEF6762EF8681F29F9CF3C9C6F77570F247
        41EF605AF1F3F2FC5853F0FFF5E766B2E308659DA2A8ACFAFAFAFFFFFF309330
        D9DDD9FEFEFEFFFFFFFFFFFFFFFFFF6EA3C203588B1339601339601339601339
        60084E7E207FBC72B9E5BFB8E34D48F1B1AEF9D7D6FC3F39F0534DF1C5C3FB7C
        78F5B4B2F9F3F3FE4F4AF1FFF7EC6FB7E40867A098A1A6F7F7F7FFFFFFADD4AD
        FCFCFCFFFFFFFFFFFFFFFFFFFFFFFF5191B60456891339601339601339601339
        600850812484C27ABEE6BFB9E6443FF08480F5E4E2FD8A85F5463FF0FEFEFF83
        7EF5B9B6F9F3F3FE4F4AF1FFF8EE77BCE50F6EA88F9CA4F5F5F5FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3780AA0555871339601339601339601339
        600653852889C781C0E5BFB9E6453FF09A98F7EBEBFE5750F13931EFDEDDFD80
        7BF5AEABF8C9C7FB4C44D2B3A9A365B0DE1170AB8697A0F6F6F6FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2574A30554871339601339601339601339
        600456892C8DCC89C4E4BEB9E8342DEF5751F28C88F65852F2B6B3F9706AF44B
        44F0706AF46A64F3DFCCCDB8CFD951B5F21372AC7A8F9CF4F4F4FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF166B9C084F7F1339601339601339601339
        6003588C3193D191C7E3E7DFE9B9B6F8CECBF9E2E0FAF3F0FAFFFCFAFBF8F8FE
        FAF7FFFAF5FFF9F3E7DBCF66C0F151B5F11878B46E8998F1F1F1FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF096397094C7B1339601339601339601339
        60025A8F3497D696C7DFFFECDBFFF4EBFFF3E9FFF1E6FFF0E3FFEFDFFFECDBFC
        EAD8F8E8D6EDE3D691C3DF53B8F34AAEEE1878B6648495EDEDEDFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF076196055587094C7A094C7A094C7A094C
        7A015D923597D964B8EBD1D6CFC3D5D9B0D0DCA1CBDF8EC5E27DC0E76EBCEB5C
        B7EF52B3F248AEF146A9EB3FA2E23191D40F6EAB678A9DF1F1F1FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5E99BB066196045F95045F95045F95045F
        95025F963193DA47AAEF45ACEF42A7E83B9EDE3494D42C8CCA2381BE1C79B513
        71AB0B69A206639B025F96015E960662982576A5C8D5DDFAFAFAFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF0A669A08669F08659E046098015F95005F95026096186EA03682AC5393B841
        88B168A0C05996BA91BAD19EC0D4F7F9FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF5E9BBD3480AC5B98BC4489B17FAECAB9D2E1E3EDF2FEFEFEFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Layout = blGlyphTop
      ParentShowHint = False
      ShowHint = True
      Spacing = 0
      OnClick = SpeedButton3Click
    end
    object Label16: TLabel
      Left = 9
      Top = 11
      Width = 216
      Height = 29
      Caption = 'Consulta  Kardex'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -24
      Font.Name = 'Georgia'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
  end
  object GroupBox6: TGroupBox
    Left = 0
    Top = 55
    Width = 792
    Height = 137
    Align = alTop
    Caption = 'Sele'#231#227'o de Filtros'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Label2: TLabel
      Left = 66
      Top = 44
      Width = 45
      Height = 15
      Caption = 'Produto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label20: TLabel
      Left = 47
      Top = 17
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
    object DBText3: TDBText
      Left = 315
      Top = 45
      Width = 414
      Height = 17
      DataField = 'PRO_DESC'
      DataSource = DS_PROD
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object SBT_VISU: TSpeedButton
      Left = 293
      Top = 104
      Width = 142
      Height = 27
      Hint = 'Visualiza Estoque'
      Caption = 'Visualizar Kardex'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
        033333777777777773333330777777703333333773F333773333333330888033
        33333FFFF7FFF7FFFFFF0000000000000003777777777777777F0FFFFFFFFFF9
        FF037F3333333337337F0F78888888887F037F33FFFFFFFFF37F0F7000000000
        8F037F3777777777F37F0F70AAAAAAA08F037F37F3333337F37F0F70ADDDDDA0
        8F037F37F3333337F37F0F70A99A99A08F037F37F3333337F37F0F70A99A99A0
        8F037F37F3333337F37F0F70AAAAAAA08F037F37FFFFFFF7F37F0F7000000000
        8F037F3777777777337F0F77777777777F037F3333333333337F0FFFFFFFFFFF
        FF037FFFFFFFFFFFFF7F00000000000000037777777777777773}
      NumGlyphs = 2
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SBT_VISUClick
    end
    object Label3: TLabel
      Left = 67
      Top = 75
      Width = 44
      Height = 15
      Caption = 'Per'#237'odo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 195
      Top = 75
      Width = 18
      Height = 15
      Caption = 'at'#233
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SpeedButton1: TSpeedButton
      Left = 8
      Top = 104
      Width = 129
      Height = 27
      Caption = 'Visualizar Estoque'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
        033333777777777773333330777777703333333773F333773333333330888033
        33333FFFF7FFF7FFFFFF0000000000000003777777777777777F0FFFFFFFFFF9
        FF037F3333333337337F0F78888888887F037F33FFFFFFFFF37F0F7000000000
        8F037F3777777777F37F0F70AAAAAAA08F037F37F3333337F37F0F70ADDDDDA0
        8F037F37F3333337F37F0F70A99A99A08F037F37F3333337F37F0F70A99A99A0
        8F037F37F3333337F37F0F70AAAAAAA08F037F37FFFFFFF7F37F0F7000000000
        8F037F3777777777337F0F77777777777F037F3333333333337F0FFFFFFFFFFF
        FF037FFFFFFFFFFFFF7F00000000000000037777777777777773}
      NumGlyphs = 2
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      OnClick = SpeedButton1Click
    end
    object wwDBLookupCombo1: TwwDBLookupCombo
      Left = 114
      Top = 41
      Width = 152
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
        'PRO_COD'#9'16'#9'C'#243'digo'#9'F'
        'PRO_DESC'#9'40'#9'Descri'#231#227'o'#9'F')
      LookupTable = Q_PROD
      LookupField = 'PRO_ID'
      DropDownCount = 15
      Enabled = False
      ParentFont = False
      TabOrder = 1
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = True
      OnCloseUp = wwDBLookupCombo1CloseUp
      OnEnter = wwDBLookupCombo1Enter
      OnExit = wwDBLookupCombo1Exit
    end
    object wwDBLookupCombo4: TwwDBLookupCombo
      Left = 114
      Top = 12
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
        'CLIN_RAZA'#9'50'#9'Raz'#227'o Social'#9'F')
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
    object Panel12: TPanel
      Left = 265
      Top = 38
      Width = 336
      Height = 27
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      Visible = False
      object lbExcel: TLabel
        Left = 112
        Top = 16
        Width = 3
        Height = 14
      end
    end
    object RadioGroup2: TRadioGroup
      Left = 143
      Top = 98
      Width = 146
      Height = 37
      Caption = 'Produto Descontinuado ?'
      Columns = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ItemIndex = 1
      Items.Strings = (
        'Sim'
        'N'#227'o')
      ParentFont = False
      TabOrder = 4
    end
    object Data1: TMaskEdit
      Left = 114
      Top = 70
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
      Left = 219
      Top = 70
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
    object Panel10: TPanel
      Left = 494
      Top = 99
      Width = 291
      Height = 34
      BevelInner = bvLowered
      BevelOuter = bvSpace
      Color = 12615680
      TabOrder = 6
      object Label46: TLabel
        Left = 11
        Top = 5
        Width = 114
        Height = 24
        Caption = 'Saldo Atual'
        Color = 12615680
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clYellow
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label47: TLabel
        Left = 226
        Top = 4
        Width = 60
        Height = 24
        Alignment = taRightJustify
        Caption = 'Totais'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RadioGroup1: TRadioGroup
      Left = 601
      Top = 60
      Width = 184
      Height = 37
      Caption = ' Sele'#231#227'o '
      Columns = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ItemIndex = 1
      Items.Strings = (
        'Sint'#233'tico'
        'Anal'#237'tico')
      ParentFont = False
      TabOrder = 7
      OnClick = RadioGroup1Click
    end
    object rbFiltro: TRadioGroup
      Left = 600
      Top = 7
      Width = 182
      Height = 52
      Caption = 'Filtro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ItemIndex = 0
      Items.Strings = (
        'Todos'
        'Entradas/Sa'#237'das')
      ParentFont = False
      TabOrder = 8
    end
    object Button1: TButton
      Left = 440
      Top = 104
      Width = 52
      Height = 28
      Caption = 'Excel'
      Enabled = False
      TabOrder = 9
      OnClick = Button1Click
    end
  end
  object DBCB_CLI_PESS: TwwDBComboBox
    Left = 70
    Top = 242
    Width = 104
    Height = 21
    ShowButton = False
    Style = csDropDown
    MapList = True
    AllowClearKey = False
    AutoDropDown = True
    BorderStyle = bsNone
    ButtonStyle = cbsEllipsis
    Color = 14024703
    DataField = 'KAR_TIPO'
    DataSource = DS_KDX
    DropDownCount = 8
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ButtonEffects.Transparent = True
    ButtonWidth = -1
    ItemHeight = 0
    Items.Strings = (
      'Entrada'#9'E'
      'Sa'#237'da'#9'S')
    ParentFont = False
    Sorted = False
    TabOrder = 3
    UnboundDataType = wwDefault
  end
  object wwDBComboBox1: TwwDBComboBox
    Left = 244
    Top = 278
    Width = 104
    Height = 21
    ShowButton = False
    Style = csDropDown
    MapList = True
    AllowClearKey = False
    AutoDropDown = True
    BorderStyle = bsNone
    ButtonStyle = cbsEllipsis
    Color = 14024703
    DataField = 'KAR_TPDOC'
    DataSource = DS_KDX
    DropDownCount = 8
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ButtonEffects.Transparent = True
    ButtonWidth = -1
    ItemHeight = 0
    Items.Strings = (
      'Remanejamento'#9'RR'
      'Rom.Sa'#237'da'#9'RS'
      'Rom.Entrada'#9'RE'
      'Invent'#225'rio'#9'IV'
      'Entr.Operacional'#9'EO'
      'Transf.Operacional'#9'TO'
      'Reentrega Devol.'#9'RD'
      'Exclus'#227'oManifesto'#9'EM')
    ParentFont = False
    Sorted = False
    TabOrder = 4
    UnboundDataType = wwDefault
  end
  object Panel1: TPanel
    Left = 32
    Top = 514
    Width = 68
    Height = 18
    BevelInner = bvLowered
    BevelOuter = bvSpace
    Color = 16777128
    TabOrder = 5
  end
  object Panel2: TPanel
    Left = 324
    Top = 515
    Width = 68
    Height = 18
    BevelInner = bvLowered
    BevelOuter = bvSpace
    Color = 6447871
    TabOrder = 6
  end
  object Panel4: TPanel
    Left = 617
    Top = 515
    Width = 68
    Height = 18
    BevelInner = bvLowered
    BevelOuter = bvSpace
    Color = 12615680
    TabOrder = 7
  end
  object wwDBGrid1: TwwDBGrid
    Left = 64
    Top = 192
    Width = 675
    Height = 315
    DittoAttributes.ShortCutDittoField = 0
    DittoAttributes.ShortCutDittoRecord = 0
    DittoAttributes.Options = []
    DisableThemesInTitle = False
    IniAttributes.FileName = 'delphi32.ini'
    IniAttributes.SectionName = 'FNFDBG_INFI'
    IniAttributes.Delimiter = ';;'
    TitleColor = 12615680
    FixedCols = 0
    ShowHorzScrollBar = True
    Color = 14024703
    DataSource = DS_KDX_SINT
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = []
    KeyOptions = [dgEnterToTab]
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
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
    Visible = False
    OnCalcCellColors = wwDBGrid1CalcCellColors
    FooterColor = clInactiveCaption
    FooterCellColor = clGrayText
  end
  object Q_CLINBF: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select  CLIN_ID,CLIN_RAZA  from CLIENTENBF where'
      '(CLIN_CONTRATO <> '#39'I'#39' and CLIN_CONTRATO <> '#39'R'#39') '
      'order by CLIN_RAZA ')
    ValidateWithMask = True
    Left = 458
    Top = 344
    object Q_CLINBFCLIN_RAZA: TStringField
      DisplayLabel = 'Raz'#227'o Social'
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
  end
  object DS_CLINBF: TwwDataSource
    DataSet = Q_CLINBF
    Left = 458
    Top = 394
  end
  object DS_PROD: TwwDataSource
    DataSet = Q_PROD
    Left = 586
    Top = 402
  end
  object Q_PROD: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    DataSource = DS_CLINBF
    SQL.Strings = (
      'select PRO_ID,PRO_COD,PRO_DESC from PRODUTO where'
      'CLIN_ID = :CLIN_ID'
      'order by PRO_DESC'
      '')
    ValidateWithMask = True
    Left = 583
    Top = 352
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'CLIN_ID'
        ParamType = ptUnknown
      end>
    object Q_PRODPRO_COD: TStringField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 16
      FieldName = 'PRO_COD'
      Origin = 'NBFDADOS.PRODUTO.PRO_COD'
      FixedChar = True
      Size = 16
    end
    object Q_PRODPRO_DESC: TStringField
      DisplayLabel = 'Descri'#231#227'o'
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
  end
  object Q_KDX: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'select * FROM KARDEX order by KAR_DTMOV DESC'
      ''
      ''
      '')
    ControlType.Strings = (
      'KAR_TIPO;CustomEdit;DBCB_CLI_PESS'
      'KAR_TPDOC;CustomEdit;wwDBComboBox1')
    ValidateWithMask = True
    Left = 282
    Top = 344
    object Q_KDXKAR_DTMOV: TDateTimeField
      DisplayLabel = 'Data'
      DisplayWidth = 9
      FieldName = 'KAR_DTMOV'
      Origin = 'NBFDADOS.KARDEX.KAR_DTMOV'
      ReadOnly = True
    end
    object Q_KDXKAR_TPDOC: TStringField
      DisplayLabel = 'Tipo Docto.'
      DisplayWidth = 16
      FieldName = 'KAR_TPDOC'
      Origin = 'NBFDADOS.KARDEX.KAR_TPDOC'
      FixedChar = True
      Size = 2
    end
    object Q_KDXKAR_NDOC: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Docto. N'#186
      DisplayWidth = 8
      FieldName = 'KAR_NDOC'
      Origin = 'NBFDADOS.KARDEX.KAR_NDOC'
    end
    object Q_KDXKAR_QTDE: TFloatField
      DisplayLabel = 'Qtde. UV'
      DisplayWidth = 13
      FieldName = 'KAR_QTDE'
      Origin = 'NBFDADOS.KARDEX.KAR_QTDE'
      DisplayFormat = '0.000'
      EditFormat = '0.000'
    end
    object Q_KDXKAR_SALDO: TFloatField
      DisplayLabel = 'Saldo'
      DisplayWidth = 14
      FieldName = 'KAR_SALDO'
      Origin = 'NBFDADOS.KARDEX.KAR_SALDO'
      DisplayFormat = '0.000'
      EditFormat = '0.000'
    end
    object Q_KDXKAR_TAG: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'TAG'
      DisplayWidth = 6
      FieldName = 'KAR_TAG'
      Origin = 'NBFDADOS.KARDEX.KAR_TAG'
    end
    object Q_KDXAREAdesc: TStringField
      DisplayLabel = #193'rea'
      DisplayWidth = 12
      FieldKind = fkLookup
      FieldName = 'AREAdesc'
      LookupDataSet = Q_AREA
      LookupKeyFields = 'AR_ID'
      LookupResultField = 'AR_NOME'
      KeyFields = 'AR_ID'
      Size = 40
      Lookup = True
    end
    object Q_KDXPOSdesc: TStringField
      Alignment = taCenter
      DisplayLabel = 'Posi'#231#227'o'
      DisplayWidth = 6
      FieldKind = fkLookup
      FieldName = 'POSdesc'
      LookupDataSet = Q_POS
      LookupKeyFields = 'POS_Id'
      LookupResultField = 'POS_COD'
      KeyFields = 'POS_ID'
      Size = 6
      Lookup = True
    end
    object Q_KDXCHdesc: TStringField
      DisplayLabel = 'Usu'#225'rio'
      DisplayWidth = 12
      FieldKind = fkLookup
      FieldName = 'CHdesc'
      LookupDataSet = Q_USU
      LookupKeyFields = 'CH'
      LookupResultField = 'NOME'
      KeyFields = 'CH'
      Lookup = True
    end
    object Q_KDXKAR_LOTE: TStringField
      DisplayLabel = 'Lote'
      DisplayWidth = 10
      FieldName = 'KAR_LOTE'
      Origin = 'NBFDADOS.KARDEX.KAR_LOTE'
      FixedChar = True
      Size = 10
    end
    object Q_KDXKAR_BATCH: TDateTimeField
      DisplayLabel = 'Batch'
      DisplayWidth = 9
      FieldName = 'KAR_BATCH'
      Origin = 'NBFDADOS.KARDEX.KAR_BATCH'
    end
    object Q_KDXKAR_VCTO: TDateTimeField
      DisplayLabel = 'Vencimento'
      DisplayWidth = 9
      FieldName = 'KAR_VCTO'
      Origin = 'NBFDADOS.KARDEX.KAR_VCTO'
    end
    object Q_KDXOS_ID: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'OS'
      DisplayWidth = 7
      FieldName = 'OS_ID'
      Origin = 'NBFDADOS.KARDEX.OS_ID'
      Visible = False
    end
    object Q_KDXKAR_TIPO: TStringField
      Alignment = taCenter
      DisplayLabel = 'Ent / Sai'
      DisplayWidth = 7
      FieldName = 'KAR_TIPO'
      Origin = 'NBFDADOS.KARDEX.KAR_TIPO'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_KDXPOS_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'POS_ID'
      Origin = 'NBFDADOS.KARDEX.POS_ID'
      Visible = False
    end
    object Q_KDXCH: TIntegerField
      DisplayWidth = 10
      FieldName = 'CH'
      Origin = 'NBFDADOS.KARDEX.CH'
      Visible = False
    end
    object Q_KDXAR_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'AR_ID'
      Origin = 'NBFDADOS.KARDEX.AR_ID'
      Visible = False
    end
    object Q_KDXKAR_ID: TAutoIncField
      FieldName = 'KAR_ID'
      Origin = 'NBFDADOS.KARDEX.KAR_ID'
      Visible = False
    end
    object Q_KDXESTQ_ID: TIntegerField
      FieldName = 'ESTQ_ID'
      Origin = 'NBFDADOS.KARDEX.ESTQ_ID'
      Visible = False
    end
    object Q_KDXPRO_ID: TIntegerField
      FieldName = 'PRO_ID'
      Origin = 'NBFDADOS.KARDEX.PRO_ID'
      Visible = False
    end
    object Q_KDXPAR_ID: TIntegerField
      FieldName = 'PAR_ID'
      Origin = 'NBFDADOS.KARDEX.PAR_ID'
      Visible = False
    end
  end
  object DS_KDX: TwwDataSource
    DataSet = Q_KDX
    Left = 282
    Top = 398
  end
  object Q_POS: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'select POS_Id,POS_COD'
      'from AREA_POSICOES')
    ValidateWithMask = True
    Left = 508
    Top = 208
    object Q_POSPOS_Id: TAutoIncField
      FieldName = 'POS_Id'
    end
    object Q_POSPOS_COD: TStringField
      FieldName = 'POS_COD'
      FixedChar = True
      Size = 6
    end
  end
  object Q_AREA: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'select AR_ID,AR_NOME from AREA')
    ValidateWithMask = True
    Left = 414
    Top = 215
    object Q_AREAAR_ID: TAutoIncField
      FieldName = 'AR_ID'
      Origin = 'NBFDADOS.AREA.AR_ID'
    end
    object Q_AREAAR_NOME: TStringField
      FieldName = 'AR_NOME'
      Origin = 'NBFDADOS.AREA.AR_NOME'
      FixedChar = True
      Size = 40
    end
  end
  object Q_USU: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'select CH,NOME from usuarios')
    ValidateWithMask = True
    Left = 358
    Top = 347
    object Q_USUCH: TAutoIncField
      FieldName = 'CH'
      Origin = 'NBFDADOS.usuarios.CH'
    end
    object Q_USUNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NBFDADOS.usuarios.NOME'
      FixedChar = True
    end
  end
  object Q_AUX: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    ValidateWithMask = True
    Left = 318
    Top = 216
  end
  object STP_CONSULTAKARDEX: TwwStoredProc
    ObjectView = True
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    StoredProcName = 'dbo.STP_CONSULTAKARDEX'
    ValidateWithMask = True
    Left = 496
    Top = 290
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Result'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = '@PRO_ID'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = '@DATAINICIO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = '@QTDEINV'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@INVMAIORMENOR'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = '@DATAINVENTARIO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = '@SALDOINICIAL'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = '@ID_INVENTARIO'
        ParamType = ptInput
      end>
  end
  object T_KDX_SINT: TwwTable
    DatabaseName = 'NBF'
    TableName = 'KARDEX_SINTETICO.db'
    SyncSQLByRange = False
    NarrowSearch = False
    ValidateWithMask = True
    Left = 608
    Top = 192
    object T_KDX_SINTKAR_DATA: TDateField
      DisplayLabel = 'Data'
      DisplayWidth = 9
      FieldName = 'KAR_DATA'
    end
    object T_KDX_SINTKAR_QTDE: TFloatField
      DisplayLabel = 'Quantidade UV'
      DisplayWidth = 13
      FieldName = 'KAR_QTDE'
      DisplayFormat = '0.000'
      EditFormat = '0.000'
    end
    object T_KDX_SINTKAR_SALDO: TFloatField
      DisplayLabel = 'Saldo'
      DisplayWidth = 13
      FieldName = 'KAR_SALDO'
      DisplayFormat = '0.000'
      EditFormat = '0.000'
    end
    object T_KDX_SINTKAR_NDOC: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Docto. N'#186
      DisplayWidth = 10
      FieldName = 'KAR_NDOC'
    end
    object T_KDX_SINTCHdesc: TStringField
      DisplayLabel = 'Usu'#225'rio'
      DisplayWidth = 11
      FieldKind = fkLookup
      FieldName = 'CHdesc'
      LookupDataSet = Q_USU2
      LookupKeyFields = 'CH'
      LookupResultField = 'NOME'
      KeyFields = 'CH'
      Lookup = True
    end
    object T_KDX_SINTOS_ID: TIntegerField
      DisplayLabel = 'OS'
      DisplayWidth = 10
      FieldName = 'OS_ID'
      Visible = False
    end
    object T_KDX_SINTCH: TIntegerField
      DisplayLabel = 'Usu'#225'rio'
      DisplayWidth = 10
      FieldName = 'CH'
      Visible = False
    end
    object T_KDX_SINTKAR_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'KAR_ID'
      Visible = False
    end
    object T_KDX_SINTKAR_TIPO: TStringField
      DisplayWidth = 1
      FieldName = 'KAR_TIPO'
      Visible = False
      Size = 1
    end
  end
  object DS_KDX_SINT: TwwDataSource
    DataSet = T_KDX_SINT
    Left = 610
    Top = 247
  end
  object Q_USU2: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'select CH,NOME from usuarios')
    ValidateWithMask = True
    Left = 341
    Top = 291
    object Q_USU2CH: TAutoIncField
      FieldName = 'CH'
      Origin = 'NBFDADOS.usuarios.CH'
    end
    object Q_USU2NOME: TStringField
      FieldName = 'NOME'
      Origin = 'NBFDADOS.usuarios.NOME'
      FixedChar = True
    end
  end
end
