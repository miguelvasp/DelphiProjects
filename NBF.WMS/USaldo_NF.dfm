object FSaldo_NF: TFSaldo_NF
  Left = 270
  Top = 48
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Saldo de Notas Fiscais'
  ClientHeight = 567
  ClientWidth = 859
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
  PixelsPerInch = 96
  TextHeight = 13
  object wwDBGrid2: TwwDBGrid
    Left = 113
    Top = 162
    Width = 746
    Height = 405
    Selected.Strings = (
      'INF_ITEM'#9'4'#9'Item'
      'PRO_COD'#9'8'#9'Cód.'
      'PRO_DESC'#9'30'#9'Produto'
      'INF_QTDE'#9'9'#9'Qtde.'
      'INF_QTDERETORNADA'#9'10'#9'Retornada'
      'INF_QTDERETORNADASALDO'#9'9'#9'Saldo')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = DS_NF_ITENS
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
  end
  object SALDO: TwwDBEdit
    Left = 679
    Top = 184
    Width = 74
    Height = 21
    DataField = 'SALDO'
    DataSource = DS_NF_ITENS
    TabOrder = 1
    UnboundDataType = wwDefault
    Visible = False
    WantReturns = False
    WordWrap = False
    OnEnter = SALDOEnter
    OnExit = SALDOExit
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 859
    Height = 58
    Align = alTop
    BevelInner = bvLowered
    Color = clWindow
    TabOrder = 2
    object SpeedButton3: TSpeedButton
      Left = 731
      Top = 3
      Width = 57
      Height = 54
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
      Top = 10
      Width = 279
      Height = 29
      Caption = 'Saldo de Notas Fiscais'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -24
      Font.Name = 'Georgia'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object SpeedButton1: TSpeedButton
      Left = 668
      Top = 3
      Width = 57
      Height = 54
      Hint = 'Visualizar Relatório'
      Caption = 'Impressão'
      Flat = True
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C0000EB0A0000EB0A00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCF0F0F0D0B1AAC19A93C1C1C1CCCC
        CCDDDDDDEDEDEDF4F4F4EDEDEDD0BBAEC48F6FBC8F75B8A9A0C2C2C2D1D1D1E3
        E3E3F2F2F2FBFBFBFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFCFCFCEEEEEECCA097C1624FBF5D4AB85D4EB68F
        88BFBFBFCCCCCCD6D6D6CAAD9BD0A38AFBF5F4EDDAD2C99C81B48469B6AAA3C4
        C4C4D4D4D4E5E5E5F3F3F3FBFBFBFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFCFCFCEEEEEEC98B7DC46752F6DCD5FFD6CDDF9588C169
        5BB76052B58D87C5A493DFBDAAFCF7F5FEF9F9FBF6F6F9F3F3E9D5CCB9805EAF
        866CB9B0ABC5C5C5D4D4D4E6E6E6F4F4F4FCFCFCFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFBFBFBEDEDEDCA8E7FC66B55F6D8D2FFF6F3FFE2DAFFDAD1E9C0
        BCCD9B99CB8F77E1C1AFFFFFFFFFFCFCFEF9F9FBF6F6F9F2F2F7EFEFF5EDEDDD
        BFB0B57B58AF856CB9B0ABC6C6C6D8D8D8E9E9E9F5F5F5FDFDFDFFFFFFFFFFFF
        FFFFFFFAFAFAEAEAEACB9180C96F58F7D6CFFFF2EFFFF3F0FFE3DCFFDDD5EBC4
        BFD4A48FE9D1C3FFFFFFFFFFFFFFFCFCFEF9F9FBF6F6F9F2F2F7EFEFF5EBEBF3
        E7E7F3E8E8CFA894B0714CB08E7ABBB7B4C9C9C9DEDEDEF6F6F6FFFFFFFFFFFF
        FBFBFBE7E1DFCC8772D4836DFBDDD5FFEEE9FFEFEAFFF0EBFFE4DEFFE0D8EEC8
        C2D8AC96E9D1C3FFFCFAFFFFFFFFFCFCFEF9F9FBF6F6F9F2F2F7EFEFF5EBEBF3
        E7E7F1E4E4EFE1E1EFE0DED2AD99B17653B3917DD4D4D4F3F3F3FFFFFFFFFFFF
        F0EAE9D0866FD6866FFFE1DAFFEAE4FFEBE6FFEDE7FCE3DFF5D2CDFFE3DCFBDA
        D5E3C0BED3A79DD0A18AE5C9BBFBF6F4FEF9F9FBF6F6F9F2F2F7EFEFF5EBEBF3
        E7E7F1E4E4EFE1E1EFE1E1EFE1E1DCBFB3AD6F48E6E6E6F9F9F9FFFFFFFFFFFF
        D78F76D88B71FFDED5FFE6E0FFE7E1FFE8E2FADDD8E4BDB9E7C0BDE2B6B3F4D1
        CBFFE5DEF7D7D2DEB7B5CC9C90C8957CDFC0B0F7EFEDF9F2F2F7EFEFF5EBEBF3
        E7E7F1E4E4EFE1E1EFE1E1D5B3A4B58265DCD0C8F9F9F9FEFEFEFFFFFFFFFFFF
        D27B5CFFDAD1FFE2DAFFE3DCFFE4DDF7D4D0E6BEB9FCDED8FFE9E3F9DAD6E6BF
        BBE1B5B2F4D1CDFFE6E1F6D6D1D9AFAEC59083C18A6ED8B6A5F3E7E5F5EBEBF3
        E7E7F1E4E4EAD9D7C4957CB2886ED5D0CEF5F5F5FFFFFFFFFFFFFFFFFFFFFFFF
        D37D5DFFDED5FFDFD7FFE0D8F4CFC8E9C1BDFFE1D9FFE7E1FFEBE7FFEBE6FFEA
        E6F9DCD7E5BEBBE0B4B1F3D2CDFFE8E3F4D4D0D4A6A5BE8478B97F60CEA590E9
        D8D3E3CDC5B37753B05840B3817DD9D9D9F6F6F6FFFFFFFFFFFFFFFFFFFFFFFF
        D57F5FFFDAD2FFDCD3F1C8C3EAC2BEFFDDD5FFE0D8FFEBE6FFEFEAFFEEE9FFEE
        E9FFEEE8FFEDE8FEE5E0E9C4C1DEB3B0EEC9C6FFE6E1F3D3CFD09F9EB7796BAE
        6C48B1714EF2D0C4C1665CB37A75D9D9D9F5F5F5FFFFFFFFFFFFFFFFFFFFFFFF
        D68160FFD6CDF1C7C1F2C7C2FFDAD2FFDCD3FFE3DCFFF2EFFFF2EEFFF1EDFFF1
        EDFFF0EDFFF0EBFFEFEBFFEFEAFEE6E2E8C4C1DAAEABEDCBC6FFE8E3F1D2CECC
        9695B47272FFEAE6C2685EB47C75D9D9D9F5F5F5FFFFFFFFFFFFFFFFFFFFFFFF
        D78361EFC4BFF3C7C1FFD7CDFFD8CFFFD9D0FFF0EDFFF0DFFFF4F1FFF4F1FFF3
        F0FFF3F0FFF3EFFFF2EFFFF2EEFFF1EEFFF1EDFEE7E4E7C4C1D9ACAAEDCBC7FF
        EAE5F0D0CD9ED88EB0624FB57D77D9D9D9F5F5F5FFFFFFFFFFFFFFFFFFFFFFFF
        D88563F6C5BCFFD3C8FFD4C9FFD5CBFFE7DEFFEDC2FFD28EFFD296FFE7CCFFF6
        F4FFF6F3FFF5F2FFF5F2FFF4F2FFF4F1FFF4F1FFF3F0FFF3F0FEE9E6E6C4C1D7
        ABA8EBCBC789E67BB16851B67E78DADADAF6F6F6FFFFFFFFFFFFFFFFFFFFFFFF
        DD9677F1AF9AFFD0C4FFD1C6FFE7DDFFF6D2FFEEBDFFD28FFFC984FCBE79FCC1
        7DFFD8B2FFF5EEFFF8F5FFF7F5FFF7F4FFF6F4FFF6F3FFF5F3FFF5F2FFF5F2FE
        EAE8E6C3C1D6A8A7BC6056B78079E0E0E0F9F9F9FFFFFFFFFFFFFFFFFFFFFFFF
        F1D2C4D98864E39B7EFEEADAFFFFDFFFF8CFFFF1C2FFDFA4FFCD89FEC27CF9B6
        70F6AB63F6AC67FED2AAFFF6EFFFF9F8FFF9F7FFF9F7FFF8F6FFF8F6FFF7F5FF
        F7F5FFF6F4FCEDE9BE6156BE9C98E7E7E7FCFCFCFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFF9EFEBE5B19CDE9472EED4B3FFFBD5FFF3C7FFEBBBFFDDA1FFC682FAB9
        74F7AE68F3A25CF0974FF09952F9C092FFF2E4FFFBFAFFFBF9FFFAF9FFFAF8FF
        FAF8FFF9F7FEEEEBB34839CABDBBF0F0F0FEFEFEFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFEDE1DBCC9C7FFFFAF6FFF5DEFFEFC2FFE7B2FFDFA3FFCB
        89F8B36EF4A660F09B53ED8F48E8833BE87F31F6B27BFFF2E4FFFEFCFFFEFCFF
        FCFBFFFCFBDDA49BB66053DEDEDEF8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFDFDFDDABFAFE7CFC1FEF9F9FAF5F5F9F1EFFCEBD1FFE3AEFFDC
        9DFFD28EFEBF78F5A75FEE924BE9883FE67C34E27027E1681CEFA06CFFEFE2FF
        FFFFFFF4F2BC5A4AC8A099EFEFEFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF8F8F8CA9C81FCF7F5FEF9F9FAF5F5F8F2F2F6EEEEF5E9E6F9E2
        C7FFD89FFFD089FFC87BFEB667F1964BE67F37E3732BDF681FDC5D13D95709FC
        D6B5C87466BE7163EAEAEAFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFEFEFEE2CEC4DFBDAAFFFCFCFEF9F9FAF5F5F8F2F2F6EEEEF4EAEAF2E6
        E6F0E3E3F6DCC1FFCE8CFFC473FFBD66F09245E4772FE06B23E1681AF3AC77CB
        7968C16F5EE7E0DFFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFBFBFBD2AA95F7EDE7FFFCFCFEF9F9FAF5F5F8F2F2F6EEEEF4EAEAF2E6
        E6F0E3E3EFE1E1EFE1E1F6D6B8F8BD78FCAC57E67E35E68444D8825BC15E48CA
        8677EEE8E6FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFEFE9E5DAB39EFFFFFFFFFCFCFEF9F9FAF5F5F8F2F2F6EEEEF4EAEAF2E6
        E6F0E3E3EFE1E1EFE1E1EAD8D3AE6D48D27852CF7250C77057D49889E8CFCAFA
        FAFAFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FDFDFDDABBA9EFDCD1FFFFFFFFFCFCFEF9F9FAF5F5F8F2F2F6EEEEF4EAEAF2E6
        E6F0E3E3EFE1E1EFE1E1CDA38DBDA494EAEAEAFDFDFDFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        F5F2F0D4A991FFFFFFFFFFFFFFFCFCFEF9F9FAF5F5F8F2F2F6EEEEF4EAEAF2E6
        E6F0E3E3EFE1E1F1E5E5B27753D5D0CEF4F4F4FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        E6D3C9EAD2C4FFFFFFFFFFFFFFFCFCFEF9F9FAF5F5F8F2F2F6EEEEF4EAEAF2E6
        E6F0E3E3EFE1E1DABCADB69079E5E5E5FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        D8AF98FCF7F3FFFFFFFFFFFFFFFCFCFEF9F9FAF5F5F8F2F2F6EEEEF4EAEAF2E6
        E6F0E3E3F0E3E3B98262CBC3BEF1F1F1FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        DAB19AE7CBBCFCF6F2FFFFFFFFFCFCFEF9F9FAF5F5F8F2F2F6EEEEF4EAEAF2E6
        E6F0E3E3E0C7BDB07E5FDFDFDFF9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFEDDACFD7B09AD3A78FE9D4C8FAF4F2FAF5F5F8F2F2F6EEEEF4EAEAF2E6
        E6F0E3E3C99E84C2ACA0EDEDEDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFF7F0ECDFC3B3C69377D5AF9AEBD9D0F7F0F0F4EAEAF2E6
        E6F0E1DFAD734FDADADAF7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9D6CBCBA289BD8564D6B3A0EEDE
        D8D1AC97C1A491EBEBEBFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF6F4D9BDACB47A
        56AB683FEDE9E6FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Layout = blGlyphTop
      ParentShowHint = False
      ShowHint = True
      Spacing = 0
      OnClick = SpeedButton1Click
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 58
    Width = 859
    Height = 104
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 96
      Top = 38
      Width = 69
      Height = 19
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Cliente : '
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 472
      Top = 37
      Width = 93
      Height = 19
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Nº da Nota : '
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 68
      Top = 8
      Width = 93
      Height = 19
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Período de:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 272
      Top = 8
      Width = 41
      Height = 19
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Até:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl1: TLabel
      Left = 60
      Top = 70
      Width = 101
      Height = 19
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Tipo de NF:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object NFvvvvvv: TwwDBLookupCombo
      Left = 632
      Top = 13
      Width = 164
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      BorderStyle = bsNone
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'NFI_NUMERO'#9'10'#9'NFI_NUMERO'#9'F')
      LookupTable = Q_NF
      LookupField = 'NFI_CODI'
      ParentFont = False
      TabOrder = 3
      Visible = False
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnCloseUp = NFvvvvvvCloseUp
      OnEnter = NFvvvvvvEnter
      OnExit = NFvvvvvvExit
    end
    object CLIENTE: TwwDBLookupCombo
      Left = 168
      Top = 36
      Width = 291
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      CharCase = ecUpperCase
      BorderStyle = bsNone
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'CLIN_RAZA'#9'40'#9'Nome'#9'F')
      LookupTable = Q_CLIENTENBF
      LookupField = 'CLIN_ID'
      ParentFont = False
      TabOrder = 2
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnEnter = CLIENTEEnter
      OnExit = CLIENTEExit
    end
    object MaskEdit1: TMaskEdit
      Left = 168
      Top = 8
      Width = 97
      Height = 21
      BorderStyle = bsNone
      EditMask = '99/99/9999'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 0
      Text = '  /  /    '
      OnExit = MaskEdit1Exit
    end
    object MaskEdit2: TMaskEdit
      Left = 328
      Top = 8
      Width = 97
      Height = 21
      BorderStyle = bsNone
      EditMask = '99/99/9999'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 1
      Text = '  /  /    '
      OnExit = MaskEdit2Exit
    end
    object Button1: TButton
      Left = 484
      Top = 65
      Width = 75
      Height = 25
      Caption = 'Buscar'
      TabOrder = 4
      OnClick = Button1Click
    end
    object edtNF: TEdit
      Left = 568
      Top = 34
      Width = 121
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object cboTipoNF: TwwDBComboBox
      Left = 168
      Top = 68
      Width = 293
      Height = 24
      ShowButton = True
      Style = csDropDown
      MapList = True
      AllowClearKey = False
      DropDownCount = 8
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 0
      Items.Strings = (
        'Nota Fiscal de Entrada'#9'2'
        'Nota Fiscal Entrada Industrialização'#9'23'
        'Nota Fiscal Entrada Reprocesso'#9'28')
      ItemIndex = 0
      ParentFont = False
      Sorted = False
      TabOrder = 6
      UnboundDataType = wwDefault
    end
  end
  object Panel6: TPanel
    Left = 0
    Top = 162
    Width = 113
    Height = 405
    Align = alLeft
    Caption = 'Panel6'
    TabOrder = 4
    object wwDBGrid1: TwwDBGrid
      Left = 1
      Top = 1
      Width = 111
      Height = 403
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      Align = alClient
      DataSource = DS_NF
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      ReadOnly = True
      TabOrder = 0
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
    end
  end
  object Panel2: TPanel
    Left = 121
    Top = 173
    Width = 537
    Height = 273
    BevelInner = bvRaised
    TabOrder = 3
    Visible = False
    object Panel4: TPanel
      Left = 8
      Top = 11
      Width = 521
      Height = 33
      BevelInner = bvLowered
      TabOrder = 0
      object Label3: TLabel
        Left = 9
        Top = 2
        Width = 119
        Height = 29
        Caption = 'Relatório'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -24
        Font.Name = 'Georgia'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object SpeedButton4: TSpeedButton
        Left = 488
        Top = 4
        Width = 25
        Height = 25
        Hint = 'Voltar'
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333333333FF3333333333333744333333333333F773333333333337
          44473333333333F777F3333333333744444333333333F7733733333333374444
          4433333333F77333733333333744444447333333F7733337F333333744444444
          433333F77333333733333744444444443333377FFFFFFF7FFFFF999999999999
          9999733777777777777333CCCCCCCCCC33333773FF333373F3333333CCCCCCCC
          C333333773FF3337F333333333CCCCCCC33333333773FF373F3333333333CCCC
          CC333333333773FF73F33333333333CCCCC3333333333773F7F3333333333333
          CCC333333333333777FF33333333333333CC3333333333333773}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton4Click
      end
    end
    object Panel5: TPanel
      Left = 8
      Top = 48
      Width = 521
      Height = 217
      BevelInner = bvLowered
      TabOrder = 1
      object Label4: TLabel
        Left = 8
        Top = 17
        Width = 260
        Height = 18
        Caption = 'Selecione o relatório a ser impresso:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object SpeedButton2: TSpeedButton
        Left = 53
        Top = 180
        Width = 201
        Height = 25
        Hint = 'Visualizar Relatório'
        Caption = ' &Imprimir'
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
        OnClick = SpeedButton2Click
      end
      object SpeedButton5: TSpeedButton
        Left = 269
        Top = 180
        Width = 201
        Height = 25
        Hint = 'Visualizar Relatório'
        Caption = 'Exportar para Excel'
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton5Click
      end
      object RadioGroup1: TRadioGroup
        Left = 9
        Top = 45
        Width = 506
        Height = 68
        Caption = 'Opções'
        Columns = 2
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ItemIndex = 0
        Items.Strings = (
          'Saldo de Notas Fiscais por Cliente'
          'Saldo de Produtos por Cliente')
        ParentFont = False
        TabOrder = 0
        OnClick = RadioGroup1Click
      end
      object RadioGroup2: TRadioGroup
        Left = 81
        Top = 120
        Width = 360
        Height = 50
        Caption = 'Listagem'
        Columns = 2
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ItemIndex = 0
        Items.Strings = (
          'Agrupar por Notas Fiscais'
          'Agrupar por Produtos')
        ParentFont = False
        TabOrder = 1
        Visible = False
      end
    end
  end
  object DS_CLIENTENBF: TwwDataSource
    DataSet = Q_CLIENTENBF
    Left = 64
    Top = 248
  end
  object DS_NF: TwwDataSource
    DataSet = Q_NF
    OnDataChange = DS_NFDataChange
    Left = 64
    Top = 352
  end
  object DS_NF_ITENS: TwwDataSource
    DataSet = Q_NF_ITENS
    Left = 752
    Top = 424
  end
  object Q_CLIENTENBF: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'SELECT'#9'CLIN.CLIN_ID,'
      #9'CLIN.CLIN_RAZA'
      'FROM'#9'CLIENTENBF CLIN'
      'WHERE clin_contrato <> '#39'R'#39
      'ORDER BY CLIN.CLIN_RAZA'
      '')
    ValidateWithMask = True
    Left = 64
    Top = 144
    object Q_CLIENTENBFCLIN_ID: TAutoIncField
      FieldName = 'CLIN_ID'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_ID'
    end
    object Q_CLIENTENBFCLIN_RAZA: TStringField
      FieldName = 'CLIN_RAZA'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_RAZA'
      FixedChar = True
      Size = 50
    end
  end
  object Q_NF: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'SELECT '#9'NFI_CODI,'
      #9'NFI_EMIT_CLI,'
      #9'NFI_NUMERO'
      ''
      'FROM'#9'NF'
      ''
      'WHERE  NFI_EMIT_CLI = :CLIN_ID'
      ''
      'AND (NFI_DEMI BETWEEN :DATAI AND :DATAF)'
      'AND'#9'TDOC_ID = :tdoc_id'
      'ORDER BY NFI_CODI')
    ValidateWithMask = True
    Left = 64
    Top = 192
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'CLIN_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DATAI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DATAF'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tdoc_id'
        ParamType = ptUnknown
      end>
    object Q_NFNFI_NUMERO: TStringField
      DisplayLabel = 'Num NF'
      DisplayWidth = 10
      FieldName = 'NFI_NUMERO'
      Origin = 'NBFDADOS.NF.NFI_NUMERO'
      FixedChar = True
      Size = 10
    end
    object Q_NFNFI_EMIT_CLI: TIntegerField
      DisplayWidth = 10
      FieldName = 'NFI_EMIT_CLI'
      Origin = 'NBFDADOS.NF.NFI_EMIT_CLI'
      Visible = False
    end
    object Q_NFNFI_CODI: TAutoIncField
      DisplayWidth = 10
      FieldName = 'NFI_CODI'
      Origin = 'NBFDADOS.NF.NFI_CODI'
      Visible = False
    end
  end
  object Q_NF_ITENSx: TwwQuery
    AutoCalcFields = False
    CachedUpdates = True
    BeforePost = Q_NF_ITENSxBeforePost
    AfterPost = Q_NF_ITENSxAfterPost
    OnCalcFields = Q_NF_ITENSxCalcFields
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    RequestLive = True
    SQL.Strings = (
      'SELECT'#9'INF_CODI,'
      #9'INF_ITEM,'
      #9'NFI_CODI,'
      #9'PRO_DESC,'
      #9'PRO_COD,'
      #9'INF_QTDE,'
      #9'INF_QTDERETORNADA,'
      '                INF_QTDERETORNADASALDO'
      'INF_QTDE - INF_QTDERETORNADA as saldo'
      'FROM    NF_ITENS'
      'WHERE   NFI_CODI = :NFI_CODI'
      'ORDER BY INF_ITEM')
    UpdateMode = upWhereKeyOnly
    ControlType.Strings = (
      'INF_QTDE;CustomEdit;wwDBEdit1'
      'SALDO;CustomEdit;SALDO')
    ValidateWithMask = True
    Left = 712
    Top = 264
    ParamData = <
      item
        DataType = ftInteger
        Name = 'NFI_CODI'
        ParamType = ptInput
      end>
    object Q_NF_ITENSxINF_ITEM: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Item'
      DisplayWidth = 4
      FieldName = 'INF_ITEM'
      Origin = 'NBFDADOS.NF_ITENS.INF_ITEM'
      ProviderFlags = [pfInUpdate]
    end
    object Q_NF_ITENSxPRO_COD: TStringField
      DisplayLabel = 'Cód.'
      DisplayWidth = 8
      FieldName = 'PRO_COD'
      Origin = 'NBFDADOS.NF_ITENS.PRO_COD'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 16
    end
    object Q_NF_ITENSxPRO_DESC: TStringField
      DisplayLabel = 'Produto'
      DisplayWidth = 30
      FieldName = 'PRO_DESC'
      Origin = 'NBFDADOS.NF_ITENS.PRO_DESC'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 60
    end
    object Q_NF_ITENSxINF_QTDE: TFloatField
      DisplayLabel = 'Qtde.'
      DisplayWidth = 9
      FieldName = 'INF_QTDE'
      Origin = 'NBFDADOS.NF_ITENS.INF_QTDE'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,##0.000'
      EditFormat = '###,###,##0.000'
    end
    object Q_NF_ITENSxINF_QTDERETORNADA: TFloatField
      DisplayLabel = 'Retornada'
      DisplayWidth = 10
      FieldName = 'INF_QTDERETORNADA'
      Origin = 'NBFDADOS.NF_ITENS.INF_QTDERETORNADA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,##0.000'
      EditFormat = '###,###,##0.000'
    end
    object Q_NF_ITENSxINF_QTDERETORNADASALDO: TFloatField
      DisplayLabel = 'Saldo'
      DisplayWidth = 9
      FieldName = 'INF_QTDERETORNADASALDO'
      Origin = 'NBFDADOS.NF_ITENS.INF_QTDERETORNADASALDO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,##0.000'
      EditFormat = '###,###,##0.000'
    end
    object Q_NF_ITENSxNFI_CODI: TIntegerField
      DisplayLabel = 'Código NF'
      DisplayWidth = 10
      FieldName = 'NFI_CODI'
      Origin = 'NBFDADOS.NF_ITENS.NFI_CODI'
      ProviderFlags = [pfInUpdate]
      Visible = False
    end
    object Q_NF_ITENSxINF_CODI: TAutoIncField
      FieldName = 'INF_CODI'
      Origin = 'NBFDADOS.NF_ITENS.INF_CODI'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Visible = False
    end
    object Q_NF_ITENSxSALDO: TFloatField
      FieldName = 'SALDO'
      Origin = 'NBFDADOS.NF_ITENS.INF_QTDE'
    end
  end
  object UPD_NF_ITENS: TUpdateSQL
    ModifySQL.Strings = (
      'update NF_ITENS'
      'set'
      '  INF_ITEM = :INF_ITEM,'
      '  NFI_CODI = :NFI_CODI,'
      '  PRO_DESC = :PRO_DESC,'
      '  INF_QTDE = :INF_QTDE,'
      '  INF_QTDERETORNADA = :INF_QTDERETORNADA,'
      '  INF_QTDERETORNADASALDO = :INF_QTDERETORNADASALDO'
      'where'
      '  INF_CODI = :OLD_INF_CODI')
    InsertSQL.Strings = (
      'insert into NF_ITENS'
      
        '  (INF_ITEM, NFI_CODI, PRO_DESC, INF_QTDE, INF_QTDERETORNADA, IN' +
        'F_QTDERETORNADASALDO)'
      'values'
      
        '  (:INF_ITEM, :NFI_CODI, :PRO_DESC, :INF_QTDE, :INF_QTDERETORNAD' +
        'A, :INF_QTDERETORNADASALDO)')
    DeleteSQL.Strings = (
      'delete from NF_ITENS'
      'where'
      '  INF_CODI = :OLD_INF_CODI')
    Left = 600
    Top = 256
  end
  object qrAtualizaSaldo: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      
        'update nf_itens set INF_QTDERETORNADASALDO = ROUND((INF_QTDE - c' +
        'ase when INF_QTDERETORNADA is null then 0 else INF_QTDERETORNADA' +
        ' end ) ,4)  '
      'where nfi_codi = :nfi_codi')
    ValidateWithMask = True
    Left = 432
    Top = 173
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nfi_codi'
        ParamType = ptUnknown
      end>
  end
  object qrAux: TwwQuery
    AutoCalcFields = False
    CachedUpdates = True
    BeforePost = Q_NF_ITENSxBeforePost
    AfterPost = Q_NF_ITENSxAfterPost
    OnCalcFields = Q_NF_ITENSxCalcFields
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    RequestLive = True
    SQL.Strings = (
      '')
    UpdateObject = UPD_NF_ITENS
    ControlType.Strings = (
      'INF_QTDE;CustomEdit;wwDBEdit1'
      'SALDO;CustomEdit;SALDO')
    ValidateWithMask = True
    Left = 120
    Top = 376
  end
  object Q_NF_ITENS: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    BeforePost = Q_NF_ITENSBeforePost
    AfterPost = Q_NF_ITENSAfterPost
    OnCalcFields = Q_NF_ITENSCalcFields
    Parameters = <
      item
        Name = 'Param1'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT'#9'INF_CODI,'
      #9'INF_ITEM,'
      #9'NFI_CODI,'
      #9'PRO_DESC,'
      #9'PRO_COD,'
      #9'INF_QTDE,'
      #9'INF_QTDERETORNADA,'
      '                INF_QTDERETORNADASALDO'
      'FROM    NF_ITENS'
      'WHERE   NFI_CODI = :NFI_CODI'
      'ORDER BY INF_ITEM')
    Left = 705
    Top = 343
    object Q_NF_ITENSINF_ITEM: TIntegerField
      DisplayLabel = 'Item'
      DisplayWidth = 4
      FieldName = 'INF_ITEM'
      ReadOnly = True
    end
    object Q_NF_ITENSPRO_COD: TStringField
      DisplayLabel = 'Cód.'
      DisplayWidth = 8
      FieldName = 'PRO_COD'
      ReadOnly = True
      Size = 16
    end
    object Q_NF_ITENSPRO_DESC: TStringField
      DisplayLabel = 'Produto'
      DisplayWidth = 30
      FieldName = 'PRO_DESC'
      ReadOnly = True
      Size = 60
    end
    object Q_NF_ITENSINF_QTDE: TFloatField
      DisplayLabel = 'Qtde.'
      DisplayWidth = 9
      FieldName = 'INF_QTDE'
    end
    object Q_NF_ITENSINF_QTDERETORNADA: TFloatField
      DisplayLabel = 'Retornada'
      DisplayWidth = 10
      FieldName = 'INF_QTDERETORNADA'
    end
    object Q_NF_ITENSINF_QTDERETORNADASALDO: TFloatField
      DisplayLabel = 'Saldo'
      DisplayWidth = 9
      FieldName = 'INF_QTDERETORNADASALDO'
    end
    object Q_NF_ITENSsaldo: TFloatField
      FieldKind = fkCalculated
      FieldName = 'saldo'
      ReadOnly = True
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object Q_NF_ITENSINF_CODI: TAutoIncField
      FieldName = 'INF_CODI'
      ReadOnly = True
      Visible = False
    end
    object Q_NF_ITENSNFI_CODI: TIntegerField
      FieldName = 'NFI_CODI'
      Visible = False
    end
  end
end
