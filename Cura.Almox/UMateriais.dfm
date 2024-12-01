object FMateriais: TFMateriais
  Left = 68
  Top = 23
  Width = 897
  Height = 650
  Caption = 'Materiais - Sistema de Almoxarifado'
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
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object Label17: TLabel
    Left = 11
    Top = 298
    Width = 101
    Height = 16
    Caption = 'Estoque Mínimo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 881
    Height = 52
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object SBT_PES: TSpeedButton
      Left = 470
      Top = 3
      Width = 49
      Height = 43
      Hint = 'Pesquisa Consulta'
      Caption = 'Buscar'
      Glyph.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        08000000000040020000440B0000440B000000010000000100000063000000AD
        000029FF290042424200394A52006B525200845252004A525A008C5A5A008C63
        5A009C6B63009C736B00A5736B00EFAD6B00AD737300AD847300B5847300F7AD
        7300F7B573005A6B7B00636B7B006B6B7B00B57B7B00B5847B00C6847B00AD8C
        7B00C68C7B00F7B57B00F7C67B0084848400AD848400C6848400C68C8400F7C6
        8400215A8C00B58C8C009C9C8C00CE9C8C00CEA58C00CEAD8C00F7CE8C00B59C
        9C00CEB59C00E7B59C00E7C69C00F7CE9C00F7D69C00105AA5004A7BA500EFCE
        A500EFD6A500F7D6A500FFE7A500E7CEAD00F7D6AD00F7E7AD00FFE7AD00FFEF
        AD00EFD6B500FFEFB500FFF7C600186BCE00FFFFCE00B5C6D600F7EFD600FFFF
        D600EFEFE700FFF7E700FFFFE7001073EF00FFFFEF00FFFFF700FF00FF00188C
        FF00218CFF00298CFF0031A5FF0039ADFF0042ADFF0063B5FF00FFFFFF00FFFF
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
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00480307174848
        48484848484848484848484848484848484824222F1318484848484848484848
        48484848480000484848304A452F141848484848484848484848484848000000
        48484C4E4B452F14184848484848484848480000000001000048494D4E4B452F
        14184848484848484848000000000101000048494D4E4B452F15184848484848
        484800020202010102004848494D4E4B452F1518484848484848000000000102
        0048484848494D4E4B452F15484848484848484848000200484848484848494D
        4E4A3D044848060C2026251F1600004848484848484848494D4F3F1D050B353C
        3E413E3E3A2048484848484848484848484842291A3C3E413E3E3E4141412608
        48484848484848484848291A38383C3E3E3E4141445050234848484848484848
        48480E32342D3C3E3E4144444750504009484848484848484848263821283C3E
        3E41444750474441194848484848484848162C3812213B3E3E41444747444141
        2A1648484848484848162C340D12333E3E41444444444141350F484848484848
        48162C38110D213B3E41414141413E41350F48484848484848162C38210D1B28
        3B3E413E3E3E3E412A1648484848484848482538382E212128373C3E3E3E3E3E
        0F4848484848484848480E32414440211C1B2D37373B3E3A0848484848484848
        48484810435050361B0D111B2D383B0F4848484848484848484848481E42443C
        342E2E343837174848484848484848484848484848092737383838372B164848
        4848484848484848484848484848480A10202017484848484848}
      Layout = blGlyphTop
      Margin = 0
      ParentShowHint = False
      ShowHint = True
      Spacing = -2
      OnClick = SBT_PESClick
    end
    object SBT_REL: TSpeedButton
      Left = 520
      Top = 3
      Width = 49
      Height = 43
      Hint = 'Relatório'
      Caption = 'Imprimir'
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
      Layout = blGlyphTop
      Margin = 0
      ParentShowHint = False
      ShowHint = True
      Spacing = -2
      OnClick = SBT_RELClick
    end
    object SBT_SAIR: TSpeedButton
      Left = 572
      Top = 3
      Width = 45
      Height = 43
      Hint = 'Sair'
      Caption = 'Fechar'
      Glyph.Data = {
        56080000424D560800000000000036000000280000001A0000001A0000000100
        18000000000020080000202E0000202E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FBFBCCD6
        D9BDC4C7CCCFD0DADAD9E7E3E2F6EEEBFFF8F3FFFEFAFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFF6F9FCF2F7FAF4F8FABED5E23078A01E668E306D8E417590547F966A8C9E
        809BA895AAB3A9B8C0BAC3C8CACDCDE7E4E3FFFEFEFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFF8FAFC96BED33685B0428CB74791B82F7FAC0562
        A10966AF0A69AF0767AB0464A60662A20B619C0F5F9613609117608C2564886B
        8D9FEFE9E8FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBECF547
        83AD00356E003E6C00416F004C7E0968AD1E7ECF1F83D31D80CF187DCC1578C8
        1375C40F72C00C70BB0368B70059A4326D93DCD9D6FFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFC0DDEC246E9F002C5F102E520B32590645721070
        B3278BD82990DB2A8FD82A8ED8278CD8268BD72589D72589D61B85D7086EBF30
        6E9AD2D2CFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB8D9E91D
        6D9D0033621B315414385C0B4B771375B82A90D92A91D92991D72C94DA2990D8
        288FD72A90D82A90D8248DD91278C331709DCDCDCEFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFB8D7E81D6A9A00326019335612385D094C7B1779
        BE2D92DB2C92DA2B93DA2F96DC2B93D82B91D82C94DA2B92DA268FDB157BC52B
        6F9CC6CBCDFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB1D2E417
        659600346219335612365D0A4D7C1A7DC43298E1319CE434A0E8349EE42D95DA
        2C93DA3097DC2E94DB2891DD187EC9276E9DBEC6C8FFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFAED1E3135D90002D6119355B12375D094F7E1F85
        CB369ADF2C88C92F89C4379CDC319ADF2E95DC359BDE3399DD2C95DE1C82CE25
        6EA1B5BFC1FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB4D3E612
        5B6C002333142A591339630853832388CF2C84C81561A11453892C7AAE3398D9
        339CE238A0E0379DE02F98DF1F88D02370A3AEB9BDFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFDFBFDEFF1EE94BABB15783B0D5B0C0B263E0D2C5A0953872182
        C81868B41275C40C5EAA1B5A8D308BC538A5EB3CA3E43A9FE2339AE0238CD321
        71A6A9B7BEFFFFFF0000FFFFFFFFFFFFFFFFFFF3F7F3C5D5C481AD803A8B4C3C
        AD5458CC60257230032930074F851E80CA2578C04BA2E13589CF1F66A12E89C7
        3DA6EA41A8E63DA2E3379DE22890D82172AAA3B3BAFFFFFF0000FFFFFFFFFFFF
        FAF7FA86B8862B9D331CA72D39BF4861D1737FE19673D57D3288470256732688
        D94A8EC9B2D4EC7AA6D03887BF3297D73DA6E744ABE83FA6E5389FE42C94DB1F
        74AB9BAEB6FFFFFE0000FFFFFFFFFFFF84BB8519A3241EB93143CC5A5AD47067
        D47B74D58A8DE69C74D191187A8B2B8DDD429FDF5095CB4997D047A9E53EA5E5
        3CA3E348AFEB43A9E73BA2E5319AE01F76B194A7B1FFFFFC0000FFFFFFC0D9BF
        22A82E10B92419B82E1CAC2934B3395AC7687DE19476D77F2F8B51056087379B
        E541ABEC36A0E445AFEE49B3F139A3E735A1E643B0EF3CA9EA32A0E7309DE520
        7AB58CA2ABFFFFFA0000F4F5F25DB66300A70806A1145DBA5A86C2903B8E7924
        9E5455C95129784402374C0C5D9A3AA4E73FADEE43AEE35BC2EF58BDEE4AACE1
        5AB9E16DCAE963BBE35BB2E044A7E31B7BBA849CA8FFFDF80000E0EEDF0D9312
        1E9C269ECCA0E1EFDDDAE4F34488B0036A3C196C230D31520832661065A04BAB
        E4BDD6D9C2D0DBB8C8E0DCECE2DEEBE1C3CEDFC2CCE2D4DCE4E2E6E3A1C6DA18
        7DBD7B96A6FFFAF40000CCE7CC168517A3C5A3FFFAFFFFFFFFE8F1FF488BB500
        3C590E3147112E600B3E6B126CA466B5E2C9BEDE9888ECA698EFAB9FEEBDB0F1
        8A7CEE9487EFC8BBF6D2BDF4BCCDE52788BC708FA2FDF5F00000D7EBD787B986
        F4F3F4FFFFFFFFFFFFD6E9F23B81A900306B172E5E13375C093E691772AB75BC
        E59B98EA5853F6C1BFFF6A65F7736FF78F8CFAB7B6FCB8B8FF988FFCB4C8ED38
        95BF668AA1F7F0EB0000F6FAF6F0F7F0FEFFFEFFFFFFFFFFFFC1DCEA2872A000
        346417345813365B0A3F6C1A78B17CC0E8918FEA4741F0CFCEFD5F59F2635EF3
        9E9CF8B6B4FCA29FFA8F81E0A6B6CB3595C56189A1F3EDE80000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFB3D3E41D689900336317345812355B09416E1B7DB787C6
        E7A3A0EC4F47F39491FA837EF79792F8908AF77D79FC9F90F1BCABCE8ABACB25
        90CF5F869EEEE9E50000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA7CCE0135E9000
        315E19355712335807426F1D82BE91CAE5E0D7E7BDB3F4C4BAF4F1E8F6FFF9F6
        ECDFF2D9CFF5F6E0E9DEEAE565CBFE2492D8537E98E4E1DE0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF9EC7DC08538600295D0A335E05305C0041722087C589C8
        EDF4F4E0FFFFEAF6FDE9E9F7E7DEEEE4DBF1E2D9F3E1C4E3DE72BDE8269EED1B
        80C5497B9AE1E0DE0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB6D4E3326F9D16
        498116578A1654850F568B1C81C155B2F383BFE178B8DC63ADD74EA0D43A96D0
        288DCD1683CA0B7DC7127CBF1574B31C6FA87AA2BAF2F3F00000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFF9FBFBCBE0EBADD0E1B8D6E7B3D3E373A8C6005F9D197A
        B90872B60971B10A6EAC1874AD3584B34086B04183AC4A89AC5F95B487AEC5BF
        D6E1F0F6F9FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFCBDFEA1E709F387FA83A7FA772A2BFAEC9D7D5E3E9E7EFF2
        EBF2F4EDF3F6F3F7FAFBFCFEFFFFFFFFFFFFFFFFFFFFFFFF0000}
      Layout = blGlyphTop
      Margin = 0
      ParentShowHint = False
      ShowHint = True
      Spacing = -2
      OnClick = SBT_SAIRClick
    end
    object SpeedButton2: TSpeedButton
      Left = 428
      Top = 3
      Width = 41
      Height = 43
      Hint = 'Alterar'
      Caption = 'Alterar'
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FF8E5D598E5D598E5D598E5D598E5D598E5D598E5D598E
        5D598E5D598E5D598E5D598E5D598E5D598E5D59734241FF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF8E5D59E6D4C4F7EBD7F3E5CFF2E3
        CEF2E2CAF0E1C7F0E1C6F0E1C6F0E1C7F0E1C7F0E1C7F3E6CBE7D5BD734241FF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF8E5D59E3D0C2
        F4E7D5EFE0CEEEE0CCEEDECAEDDCC7EBDAC4EBDAC4EBD9C2EBDAC2EBD9C2EEDE
        C5E3CFB8734241FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FF8E5D59E5D1C6F4EADAEFE3D4EFE2D1EEE1CFEEDECCEDDDCAEBDCC6EADAC4
        EADAC4EBD9C2EEDDC5E3CFB8734241FF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFA0675BE6D4CBF7EEE1F7D4B1F2B87FF2BA81F2B880F2
        BA80F2B880F0B87FF2B77BF2CFABEDE0C7E3CFB8734241FF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA0675BE6D8CFF7EFE5F6DCC1F8D1
        AFF7D3B0F7D1AFF6D1ACF6D1ABF4D0AAF4CEA5EFD3B4EDDDC6E2CEB7734241FF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA0675BE9DAD1
        F8F2E9F3E9D9F2E2D1F2E2D0F0E0CEF2E0CCF2DECAEFDCC6EAD7C0E5D4BDE7D9
        C4DECCB77F4F4AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFA7756BEBDED7FAF4EEF7D1ACEFB173EDB175EFB476F2B476F2B476EDB074
        E0A56BD1B293CCC2B4CFBDAC7A4D48FF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFA7756BEEE1D9FAF4EEEDE1D3E1D0C0D8C9B8DECEBDEA
        D8C4E9D7C1DAC6B4BCAB99A195889F968AADA092704641FF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBC8268EEE3DCF7F6F0E2D3C4C2B0
        9DB1A08FBBAA98D0BCA5D1BCA6B7A4909583737B70667A746C898076694541FF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBC8268F2E7E2
        F6F7F65974A4AF8154926D48956F4AA57B52A67D528F6B463B57813246743E3D
        546F6962513533FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFD1926DF4EBE6FAFAFA648BBC5974A487828886807D827D787975733B5781
        5EA4CE58AADA1F2550413F4D412B29FF00FFFF00FFFF00FFFF00FFFF00FF413D
        3D2D2A2A2D2A2A2D2A2AD1926DF6EEEAFCFCFC445281BCEAF38298B58280897D
        7A793B57816FC5E53B578159A1D3478AC21E214B372A38FF00FFFF00FF767677
        3A3A3A3A3A3A413D3D2423251F1F21413B3BDA9D75F7EFEAFEFEFE9F9FB5555E
        82BCEAF388B0C93B578177D4EE3B57816CCEF43B57815097D03B73B01B1C451B
        1C451B1C45767677ACACADACACAD413D3D383435413B3B413B3BDA9D75F8EFEA
        FFFFFFFEFEFEA3A3B858698BA5E6F25778A33B57816FCBEB3B578160BFEF3B57
        814BA1E64193E13686DD2D77D8767677A7A7A7A7A7A7413D3D413D3D44404044
        4040E7AB79FAF2EDFFFFFFFFFFFFFEFEFEA6A6BB50678A8FE2F04C6F9F3B5781
        67C0E93B578155B0EB4BA1E64193E13686DD2D77D8767677B7B8B8B7B8B8413D
        3D504C4C504C4C504C4CE7AB79FAF3EEFFFFFFFFFFFFFFFFFFFEFEFEA9A9BC49
        668A7BD9ED4A6C9C67C0E960BFEF55B0EB4BA1E64193E13686DD2D77D8767677
        EDEDEDEAEAEA413D3D5B59595B59595B5959E7AB79D1926DD1926DD1926DD192
        6DD1926DD0916C8F6A64436489B4E5F36CCEF460BFEF55B0EB4BA1E64193E136
        86DD2D77D8767677EDEDEDEDEDED413D3D676666676666676666FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF3B5781B2E6FAABDEF755B0
        EB4BA1E64193E13686DD244283767677EDEDEDEDEDED413D3D72727272727272
        7272FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF4F7EAF4C82BA467DBA4074B73B528EFF00FF767677767677767677413D
        3D737373626262626262FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF413D3D413D3D413D3D413D3DFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      Layout = blGlyphTop
      Margin = 0
      ParentShowHint = False
      ShowHint = True
      Spacing = -2
      OnClick = SpeedButton2Click
    end
    object Fonte2: TDBNavigator
      Left = 782
      Top = 11
      Width = 208
      Height = 34
      DataSource = DS_MAT
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbPost, nbCancel]
      Hints.Strings = (
        'Primeiro'
        'Anterior'
        'Próximo'
        'Último'
        'Incluir'
        'Excluir'
        'Alterar'
        'Confirmar'
        'Cancelar'
        'Refresh'
        '')
      ParentShowHint = False
      ConfirmDelete = False
      ShowHint = True
      TabOrder = 1
      Visible = False
      OnClick = Fonte2Click
    end
    object FONTE: TwwDBNavigator
      Left = 3
      Top = 3
      Width = 424
      Height = 43
      AutosizeStyle = asSizeNavButtons
      DataSource = DS_MAT
      Flat = False
      ImageList = ImageList1
      RepeatInterval.InitialDelay = 500
      RepeatInterval.Interval = 100
      object fonteFirst: TwwNavButton
        Left = 0
        Top = 0
        Width = 48
        Height = 43
        Hint = 'Move to first record'
        ImageIndex = 9
        NumGlyphs = 1
        ShowText = True
        Spacing = 6
        Transparent = False
        Caption = 'Primeiro'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 0
        Style = nbsFirst
      end
      object fontePrior: TwwNavButton
        Left = 48
        Top = 0
        Width = 47
        Height = 43
        Hint = 'Move to prior record'
        ImageIndex = 8
        NumGlyphs = 1
        ShowText = True
        Spacing = 6
        Transparent = False
        Caption = 'Anterior'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 1
        Style = nbsPrior
      end
      object fonteNext: TwwNavButton
        Left = 95
        Top = 0
        Width = 47
        Height = 43
        Hint = 'Move to next record'
        ImageIndex = 11
        NumGlyphs = 1
        ShowText = True
        Spacing = 6
        Transparent = False
        Caption = 'Próximo'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 2
        Style = nbsNext
      end
      object fonteLast: TwwNavButton
        Left = 142
        Top = 0
        Width = 47
        Height = 43
        Hint = 'Move to last record'
        ImageIndex = 10
        NumGlyphs = 1
        ShowText = True
        Spacing = 6
        Transparent = False
        Caption = 'Último'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 3
        Style = nbsLast
      end
      object fonteInsert: TwwNavButton
        Left = 189
        Top = 0
        Width = 47
        Height = 43
        Hint = 'Insert new record'
        ImageIndex = 2
        NumGlyphs = 1
        ShowText = True
        Spacing = 6
        Transparent = False
        Caption = 'Novo'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 4
        Style = nbsInsert
      end
      object fonteDelete: TwwNavButton
        Left = 236
        Top = 0
        Width = 47
        Height = 43
        Hint = 'Delete current record'
        ImageIndex = 7
        NumGlyphs = 1
        ShowText = True
        Spacing = 6
        Transparent = False
        Caption = 'Apagar'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 5
        Style = nbsDelete
      end
      object fonteEdit: TwwNavButton
        Left = 283
        Top = 0
        Width = 47
        Height = 43
        Hint = 'Edit current record'
        ImageIndex = 4
        NumGlyphs = 1
        ShowText = True
        Spacing = 6
        Transparent = False
        Caption = 'Editar'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 6
        Style = nbsEdit
      end
      object fontePost: TwwNavButton
        Left = 330
        Top = 0
        Width = 47
        Height = 43
        Hint = 'Post changes of current record'
        ImageIndex = 3
        NumGlyphs = 1
        ShowText = True
        Spacing = 6
        Transparent = False
        Caption = 'Salvar'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 7
        Style = nbsPost
      end
      object fonteCancel: TwwNavButton
        Left = 377
        Top = 0
        Width = 47
        Height = 43
        Hint = 'Cancel changes made to current record'
        ImageIndex = 6
        NumGlyphs = 1
        ShowText = True
        Spacing = 6
        Transparent = False
        Caption = 'Cancelar'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 8
        Style = nbsCancel
      end
    end
    object CheckBox1: TCheckBox
      Left = 664
      Top = 32
      Width = 97
      Height = 17
      Caption = 'CheckBox1'
      TabOrder = 2
      Visible = False
    end
  end
  object TabbedNotebook1: TTabbedNotebook
    Left = 0
    Top = 52
    Width = 881
    Height = 560
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    TabFont.Charset = ANSI_CHARSET
    TabFont.Color = clBtnText
    TabFont.Height = -13
    TabFont.Name = 'Comic Sans MS'
    TabFont.Style = [fsBold]
    TabOrder = 1
    OnClick = TabbedNotebook1Click
    object TTabPage
      Left = 4
      Top = 34
      Caption = '        Materiais        '
      object Panel2: TPanel
        Left = 1
        Top = 0
        Width = 864
        Height = 513
        BevelInner = bvLowered
        TabOrder = 0
        object Label2: TLabel
          Left = 13
          Top = 73
          Width = 60
          Height = 18
          Caption = 'Descrição'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 13
          Top = 123
          Width = 36
          Height = 18
          Caption = 'Grupo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object DBText3: TDBText
          Left = 14
          Top = 96
          Width = 757
          Height = 22
          DataField = 'MAT_DESC'
          DataSource = DS_MAT
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Century Gothic'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label15: TLabel
          Left = 482
          Top = 126
          Width = 125
          Height = 18
          Caption = 'Unidade de Consumo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 647
          Top = 125
          Width = 46
          Height = 18
          Caption = 'IPI (%)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 703
          Top = 122
          Width = 148
          Height = 18
          Caption = 'Controla Validade (S/N)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 13
          Top = 181
          Width = 93
          Height = 18
          Caption = 'Estoque Mínimo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object Label21: TLabel
          Left = 117
          Top = 181
          Width = 97
          Height = 18
          Caption = 'Estoque Máximo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 227
          Top = 181
          Width = 90
          Height = 18
          Caption = 'Lote de Pedido'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object Label18: TLabel
          Left = 667
          Top = 176
          Width = 49
          Height = 18
          Caption = 'Locação'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object Label1: TLabel
          Left = 332
          Top = 180
          Width = 74
          Height = 18
          Caption = 'Custo Médio'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object Label20: TLabel
          Left = 489
          Top = 180
          Width = 138
          Height = 18
          Caption = 'Valor da última compra'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object Label26: TLabel
          Left = 14
          Top = 241
          Width = 27
          Height = 18
          Caption = 'EAN'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object Label27: TLabel
          Left = 334
          Top = 240
          Width = 130
          Height = 18
          Caption = 'Local Armazenamento'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object Label28: TLabel
          Left = 14
          Top = 297
          Width = 88
          Height = 18
          Caption = 'Valor Contrato'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object Label29: TLabel
          Left = 334
          Top = 297
          Width = 115
          Height = 18
          Caption = 'Código Fornecedor'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object Label34: TLabel
          Left = 12
          Top = 11
          Width = 130
          Height = 20
          Caption = 'Código do Material'
          FocusControl = DBEdit3
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object DBE_MAT_DESC: TwwDBEdit
          Left = 13
          Top = 93
          Width = 836
          Height = 26
          DataField = 'MAT_DESC'
          DataSource = DS_MAT
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnEnter = DBE_MAT_DESCEnter
          OnExit = DBE_MAT_DESCExit
        end
        object DBLC_MAT_GRU_ID: TwwDBLookupCombo
          Left = 13
          Top = 146
          Width = 460
          Height = 26
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'GRU_DESC'#9'50'#9'GRU_DESC'#9'F')
          DataField = 'GRU_ID'
          DataSource = DS_MAT
          LookupTable = Q_GRMAT
          LookupField = 'GRU_ID'
          ParentFont = False
          TabOrder = 1
          AutoDropDown = True
          ShowButton = True
          PreciseEditRegion = False
          AllowClearKey = True
          OnEnter = DBLC_MAT_GRU_IDEnter
          OnExit = DBLC_MAT_GRU_IDExit
        end
        object DBCheckBox1: TDBCheckBox
          Left = 16
          Top = 386
          Width = 137
          Height = 17
          Caption = 'Material Genérico'
          DataField = 'GENERICO'
          DataSource = DS_MAT
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          Visible = False
        end
        object DBCheckBox2: TDBCheckBox
          Left = 16
          Top = 410
          Width = 137
          Height = 17
          Caption = 'Material Ativo'
          DataField = 'MAT_ATIVO'
          DataSource = DS_MAT
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox3: TDBCheckBox
          Left = 16
          Top = 434
          Width = 177
          Height = 17
          Caption = 'Material controlado'
          DataField = 'CONTROLA_GRUPO'
          DataSource = DS_MAT
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox4: TDBCheckBox
          Left = 16
          Top = 458
          Width = 177
          Height = 17
          Caption = 'Relatório de Consumo'
          DataField = 'RelConsumo'
          DataSource = DS_MAT
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object dbchk1: TDBCheckBox
          Left = 16
          Top = 482
          Width = 177
          Height = 17
          Caption = 'Material Crítico'
          DataField = 'Critico'
          DataSource = DS_MAT
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          ValueChecked = 'C'
          ValueUnchecked = 'N'
        end
        object DBCheckBox5: TDBCheckBox
          Left = 384
          Top = 413
          Width = 177
          Height = 17
          Caption = 'Material do Laboratório'
          DataField = 'MatLaboratorio'
          DataSource = DS_MAT
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBLC_MAT_UNI_ID: TwwDBLookupCombo
          Left = 481
          Top = 145
          Width = 160
          Height = 26
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'UNI_DESC'#9'10'#9'UNI_DESC'#9'F')
          DataField = 'UNI_ID'
          DataSource = DS_MAT
          LookupTable = Q_UNI
          LookupField = 'UNI_ID'
          ParentFont = False
          TabOrder = 8
          AutoDropDown = True
          ShowButton = True
          PreciseEditRegion = False
          AllowClearKey = True
          OnEnter = DBLC_MAT_GRU_IDEnter
          OnExit = DBLC_MAT_UNI_IDExit
        end
        object DBE_MAT_IPI: TwwDBEdit
          Left = 647
          Top = 144
          Width = 46
          Height = 26
          DataField = 'MAT_IPI'
          DataSource = DS_MAT
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnEnter = DBE_MAT_IPIEnter
          OnExit = DBE_MAT_IPIExit
        end
        object DBCB_MAT_CONTROLA: TwwDBComboBox
          Left = 703
          Top = 143
          Width = 146
          Height = 26
          ShowButton = True
          Style = csDropDown
          MapList = True
          AllowClearKey = True
          AutoDropDown = True
          ButtonStyle = cbsEllipsis
          DataField = 'MAT_CONTROLA'
          DataSource = DS_MAT
          DropDownCount = 8
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ItemHeight = 0
          Items.Strings = (
            'Sim'#9'S'
            'Não'#9'N')
          ItemIndex = 0
          ParentFont = False
          Sorted = False
          TabOrder = 10
          UnboundDataType = wwDefault
          OnEnter = DBCB_MAT_CONTROLAEnter
          OnExit = DBCB_MAT_CONTROLAExit
        end
        object DBE_MAT_ESTMIN: TwwDBEdit
          Left = 14
          Top = 201
          Width = 88
          Height = 26
          DataField = 'MAT_ESTMIN'
          DataSource = DS_MAT
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          TabOrder = 11
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnEnter = DBE_MAT_ESTMINEnter
          OnExit = DBE_MAT_ESTMINExit
        end
        object wwDBEdit2: TwwDBEdit
          Left = 118
          Top = 201
          Width = 99
          Height = 26
          DataField = 'MAT_ESTMAX'
          DataSource = DS_MAT
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          TabOrder = 12
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnEnter = DBE_MAT_ESTMINEnter
          OnExit = DBE_MAT_ESTMINExit
        end
        object DBE_MAT_LOTEPED: TwwDBEdit
          Left = 227
          Top = 200
          Width = 102
          Height = 26
          DataField = 'MAT_LOTEPED'
          DataSource = DS_MAT
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          TabOrder = 13
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object DBE_MAT_LOCACAO: TwwDBEdit
          Left = 666
          Top = 196
          Width = 183
          Height = 26
          DataField = 'MAT_LOCACAO'
          DataSource = DS_MAT
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          TabOrder = 14
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBEdit1: TwwDBEdit
          Left = 332
          Top = 199
          Width = 149
          Height = 26
          DataField = 'Custo_Medio'
          DataSource = DS_MAT
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 15
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBEdit6: TwwDBEdit
          Left = 16
          Top = 260
          Width = 310
          Height = 26
          DataField = 'EAN'
          DataSource = DS_MAT
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          TabOrder = 16
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBEdit7: TwwDBEdit
          Left = 336
          Top = 259
          Width = 513
          Height = 26
          DataField = 'LocalArmazem'
          DataSource = DS_MAT
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          TabOrder = 17
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBEdit8: TwwDBEdit
          Left = 16
          Top = 316
          Width = 310
          Height = 26
          DataField = 'ValorContrato'
          DataSource = DS_MAT
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          TabOrder = 18
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBEdit9: TwwDBEdit
          Left = 336
          Top = 316
          Width = 310
          Height = 26
          DataField = 'CodigoFornecedor'
          DataSource = DS_MAT
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          TabOrder = 19
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object DBCheckBox6: TDBCheckBox
          Left = 384
          Top = 437
          Width = 209
          Height = 17
          Caption = 'Entrega em Pacote Fechado'
          DataField = 'EntregaEmPacote'
          DataSource = DS_MAT
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          TabOrder = 20
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox7: TDBCheckBox
          Left = 384
          Top = 461
          Width = 209
          Height = 17
          Caption = 'Material Bonificado'
          DataField = 'MAT_BONIFICADO'
          DataSource = DS_MAT
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          TabOrder = 21
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object wwDBEdit10: TwwDBEdit
          Left = 492
          Top = 199
          Width = 149
          Height = 26
          DataField = 'REPOSICAO'
          DataSource = DS_MAT
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 22
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object DBCheckBox8: TDBCheckBox
          Left = 384
          Top = 485
          Width = 209
          Height = 17
          Caption = 'Material do Estoque Imobilizado'
          DataField = 'MAT_IMOBILIZADO'
          DataSource = DS_MAT
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          TabOrder = 23
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBEdit3: TDBEdit
          Left = 12
          Top = 35
          Width = 304
          Height = 28
          DataField = 'CodigoMaterial'
          DataSource = DS_MAT
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          TabOrder = 24
        end
      end
    end
    object TTabPage
      Left = 4
      Top = 34
      Caption = '   Materiais X Marca   '
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 782
        Height = 521
        BevelInner = bvLowered
        TabOrder = 0
        object Label8: TLabel
          Left = 56
          Top = 38
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
        object Label19: TLabel
          Left = 42
          Top = 12
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
        object DBText2: TDBText
          Left = 108
          Top = 9
          Width = 659
          Height = 21
          DataField = 'MAT_DESC'
          DataSource = DS_MAT
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'Century Gothic'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBLC_MATFORN_FOR_RAZA: TwwDBLookupCombo
          Left = 104
          Top = 36
          Width = 369
          Height = 26
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'MARCA_DESC'#9'20'#9'MARCA_DESC'#9'F')
          DataField = 'MARCA_ID'
          DataSource = DS_MATMARC
          LookupTable = Q_MARC
          LookupField = 'MARCA_ID'
          ParentFont = False
          TabOrder = 0
          AutoDropDown = True
          ShowButton = True
          PreciseEditRegion = False
          AllowClearKey = True
          OnEnter = DBLC_MATFORN_FOR_RAZAEnter
          OnExit = DBLC_MATFORN_FOR_RAZAExit
        end
        object GroupBox2: TGroupBox
          Left = 41
          Top = 60
          Width = 700
          Height = 157
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
          TabOrder = 1
          object Label10: TLabel
            Left = 22
            Top = 12
            Width = 66
            Height = 18
            Caption = 'Embalagem'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object Label9: TLabel
            Left = 271
            Top = 14
            Width = 118
            Height = 18
            Caption = 'Unidade de Compra'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object Label12: TLabel
            Left = 22
            Top = 59
            Width = 138
            Height = 18
            Caption = 'Data da Última Compra'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object Label13: TLabel
            Left = 271
            Top = 56
            Width = 88
            Height = 18
            Caption = 'Preço Unitário'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object Label14: TLabel
            Left = 22
            Top = 103
            Width = 142
            Height = 18
            Caption = 'Data da Última Cotação'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object Label16: TLabel
            Left = 271
            Top = 103
            Width = 88
            Height = 18
            Caption = 'Preço Unitário'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object DBText1: TDBText
            Left = 486
            Top = 36
            Width = 61
            Height = 17
            Alignment = taCenter
            DataField = 'uni_desc'
            DataSource = DS_MAT
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object Label11: TLabel
            Left = 431
            Top = 15
            Width = 61
            Height = 18
            Caption = 'Conversão'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object Label22: TLabel
            Left = 437
            Top = 104
            Width = 93
            Height = 18
            Caption = 'Código Bionexo'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object DBE_MATFORN_EMBALAGEM: TwwDBEdit
            Left = 21
            Top = 32
            Width = 190
            Height = 26
            CharCase = ecUpperCase
            DataField = 'MATMARCA_EMBALAGEM'
            DataSource = DS_MATMARC
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnEnter = DBE_MATFORN_EMBALAGEMEnter
            OnExit = DBE_MATFORN_EMBALAGEMExit
          end
          object DBE_MATFORN_CONVERSAO: TwwDBEdit
            Left = 432
            Top = 33
            Width = 53
            Height = 26
            DataField = 'MATMARCA_CONVERSAO'
            DataSource = DS_MATMARC
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnEnter = DBE_MATFORN_EMBALAGEMEnter
            OnExit = DBE_MATFORN_EMBALAGEMExit
          end
          object DBE_MATFORN_DT_ULTCOMP: TwwDBEdit
            Left = 23
            Top = 79
            Width = 84
            Height = 26
            DataField = 'DT_CADASTRO'
            DataSource = dsComprasUltimaCompra
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnEnter = DBE_MATFORN_EMBALAGEMEnter
            OnExit = DBE_MATFORN_EMBALAGEMExit
          end
          object DBE_MATFORN_PRE_ULTCOMP: TwwDBEdit
            Left = 447
            Top = 69
            Width = 84
            Height = 26
            DataField = 'Preco_Unit'
            DataSource = dsComprasUltimaCompra
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            UnboundDataType = wwDefault
            Visible = False
            WantReturns = False
            WordWrap = False
            OnEnter = DBE_MATFORN_EMBALAGEMEnter
            OnExit = DBE_MATFORN_EMBALAGEMExit
          end
          object DBE_MATFORN_DT_ULTCOTA: TwwDBEdit
            Left = 22
            Top = 123
            Width = 84
            Height = 26
            DataField = 'MATMARCA_DT_ULTCOTA'
            DataSource = DS_MATMARC
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnEnter = DBE_MATFORN_EMBALAGEMEnter
            OnExit = DBE_MATFORN_EMBALAGEMExit
          end
          object DBE_MATFORN_PRE_ULTCOTA: TwwDBEdit
            Left = 272
            Top = 124
            Width = 84
            Height = 26
            DataField = 'MATMARCA_PRE_ULTCOTA'
            DataSource = DS_MATMARC
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnChange = DBE_MATFORN_PRE_ULTCOTAChange
            OnEnter = DBE_MATFORN_EMBALAGEMEnter
            OnExit = DBE_MATFORN_EMBALAGEMExit
          end
          object wwDBLookupCombo1: TwwDBLookupCombo
            Left = 271
            Top = 32
            Width = 137
            Height = 26
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'UNI_DESC'#9'10'#9'UNI_DESC'#9'F')
            DataField = 'UNI_ID'
            DataSource = DS_MATMARC
            LookupTable = Q_UNI
            LookupField = 'UNI_ID'
            ParentFont = False
            TabOrder = 1
            AutoDropDown = True
            ShowButton = True
            PreciseEditRegion = False
            AllowClearKey = True
            OnCloseUp = wwDBLookupCombo1CloseUp
            OnEnter = DBLC_MATFORN_FOR_RAZAEnter
            OnExit = wwDBLookupCombo1Exit
          end
          object wwDBEdit3: TwwDBEdit
            Left = 437
            Top = 124
            Width = 188
            Height = 26
            DataField = 'CodBionexo'
            DataSource = DS_MATMARC
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnEnter = DBE_MAT_DESCEnter
            OnExit = DBE_MAT_DESCExit
          end
          object Edit2: TEdit
            Left = 272
            Top = 72
            Width = 121
            Height = 27
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Comic Sans MS'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 8
          end
        end
        object GRID_MATFORN: TwwDBGrid
          Left = 40
          Top = 220
          Width = 700
          Height = 285
          Selected.Strings = (
            'marca'#9'38'#9'Descrição'#9'F'
            'MATMARCA_EMBALAGEM'#9'18'#9'Embalagem'
            'unidade'#9'11'#9'Unidade'
            'MATMARCA_CONVERSAO'#9'14'#9'Conversão')
          IniAttributes.Delimiter = ';;'
          TitleColor = clLime
          FixedCols = 0
          ShowHorzScrollBar = True
          Color = clInfoBk
          DataSource = DS_MATMARC
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          KeyOptions = [dgEnterToTab]
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
          ParentFont = False
          TabOrder = 2
          TitleAlignment = taLeftJustify
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlue
          TitleFont.Height = -12
          TitleFont.Name = 'Arial'
          TitleFont.Style = []
          TitleLines = 1
          TitleButtons = False
        end
      end
    end
    object TTabPage
      Left = 4
      Top = 34
      Caption = '    Estoque x Área   '
      object Label23: TLabel
        Left = 16
        Top = 6
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
      object Label24: TLabel
        Left = 327
        Top = 6
        Width = 93
        Height = 18
        Caption = 'Estoque Mínimo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object Label25: TLabel
        Left = 455
        Top = 6
        Width = 97
        Height = 18
        Caption = 'Estoque Máximo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object wwDBLookupCombo2: TwwDBLookupCombo
        Left = 16
        Top = 28
        Width = 297
        Height = 26
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'Descricao'#9'50'#9'Descricao'#9'F'#9)
        DataField = 'Local_ID'
        DataSource = dsMaterialArea
        LookupTable = qrLocal
        LookupField = 'Local_ID'
        ParentFont = False
        TabOrder = 0
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = True
        OnEnter = DBLC_MATFORN_FOR_RAZAEnter
        OnExit = DBLC_MATFORN_FOR_RAZAExit
      end
      object wwDBEdit4: TwwDBEdit
        Left = 327
        Top = 27
        Width = 122
        Height = 26
        DataField = 'EstoqueMinimo'
        DataSource = dsMaterialArea
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnEnter = DBE_MATFORN_EMBALAGEMEnter
        OnExit = DBE_MATFORN_EMBALAGEMExit
      end
      object wwDBEdit5: TwwDBEdit
        Left = 455
        Top = 27
        Width = 122
        Height = 26
        DataField = 'EstoqueMaximo'
        DataSource = dsMaterialArea
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnEnter = DBE_MATFORN_EMBALAGEMEnter
        OnExit = DBE_MATFORN_EMBALAGEMExit
      end
      object wwDBGrid1: TwwDBGrid
        Left = 8
        Top = 72
        Width = 761
        Height = 433
        Selected.Strings = (
          'NmLocal'#9'50'#9'Local'#9'F'
          'EstoqueMinimo'#9'10'#9'Estoque Mínimo'#9'F'
          'EstoqueMaximo'#9'10'#9'Estoque Máximo'#9'F')
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        DataSource = dsMaterialArea
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
        TitleAlignment = taLeftJustify
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Comic Sans MS'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
      end
    end
    object TTabPage
      Left = 4
      Top = 34
      Caption = '     Historico de Valores     '
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 873
        Height = 522
        Align = alClient
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label30: TLabel
          Left = 288
          Top = 504
          Width = 401
          Height = 16
          Caption = 'LINHAS GERADAS PELO HISTÓRICO DE NOTAS SEM CALCULO PRÉVIO'
          Color = clYellow
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object wwDBGrid2: TwwDBGrid
          Left = 1
          Top = 1
          Width = 871
          Height = 480
          Selected.Strings = (
            'DATA'#9'10'#9'DATA'
            'NFIS'#9'8'#9'NF'
            'For_Codi'#9'15'#9'Fornecedor'
            'QuantidadeNF'#9'10'#9'Qtde NF'
            'Conversao'#9'10'#9'Conv.'
            'QuantidadeEntrada'#9'10'#9'Qtde Conv.'
            'EstoqueAnterior'#9'10'#9'Estoque'
            'QtdeEstoqueTotal'#9'10'#9'Qtde Total'
            'ValorEntrada'#9'10'#9'Vlr. Ent.'
            'ValorEstoqueTotal'#9'10'#9'Vlr. Total'
            'NovoCustoMedio'#9'10'#9'Custo Médio'
            'Reposicao'#9'10'#9'Reposição')
          IniAttributes.Delimiter = ';;'
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          Align = alTop
          DataSource = dsHist
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
          ReadOnly = True
          TabOrder = 0
          TitleAlignment = taLeftJustify
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          TitleLines = 1
          TitleButtons = False
          OnCalcCellColors = wwDBGrid2CalcCellColors
          OnDblClick = wwDBGrid2DblClick
        end
        object Button1: TButton
          Left = 8
          Top = 496
          Width = 265
          Height = 25
          Caption = 'Recalcular a partir da linha selecionada'
          TabOrder = 1
          OnClick = Button1Click
        end
      end
    end
    object TTabPage
      Left = 4
      Top = 34
      Caption = '    Codigo XML    '
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 873
        Height = 73
        Align = alTop
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label31: TLabel
          Left = 8
          Top = 8
          Width = 70
          Height = 18
          Caption = 'Fornecedor'
        end
        object Label32: TLabel
          Left = 368
          Top = 8
          Width = 115
          Height = 18
          Caption = 'Código Fornecedor'
        end
        object Label33: TLabel
          Left = 560
          Top = 8
          Width = 27
          Height = 18
          Caption = 'EAN'
        end
        object cboFornecedor: TwwDBLookupCombo
          Left = 8
          Top = 28
          Width = 345
          Height = 26
          DropDownAlignment = taLeftJustify
          DataField = 'FOR_CODI'
          DataSource = dsCodigoXML
          LookupTable = qrForn
          LookupField = 'FOR_CODI'
          TabOrder = 0
          AutoDropDown = False
          ShowButton = True
          PreciseEditRegion = False
          AllowClearKey = False
        end
        object DBEdit1: TDBEdit
          Left = 368
          Top = 27
          Width = 185
          Height = 26
          DataField = 'Codigo'
          DataSource = dsCodigoXML
          TabOrder = 1
        end
        object DBEdit2: TDBEdit
          Left = 560
          Top = 27
          Width = 185
          Height = 26
          DataField = 'EAN'
          DataSource = dsCodigoXML
          TabOrder = 2
        end
      end
      object wwDBGrid3: TwwDBGrid
        Left = 0
        Top = 73
        Width = 873
        Height = 449
        Selected.Strings = (
          'FOR_CODI'#9'35'#9'Fornecedor'
          'Codigo'#9'35'#9'Código Fornecedor'
          'EAN'#9'35'#9'EAN'#9'F')
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alClient
        DataSource = dsCodigoXML
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        TitleAlignment = taLeftJustify
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'Comic Sans MS'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
      end
    end
  end
  object Q_MAT: TwwQuery
    CachedUpdates = True
    AfterOpen = Q_MATAfterOpen
    BeforePost = Q_MATBeforePost
    AfterPost = Q_MATAfterPost
    BeforeDelete = Q_MATBeforeDelete
    AfterDelete = Q_MATAfterDelete
    OnNewRecord = Q_MATNewRecord
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'SELECT * FROM MATERIAIS ORDER BY MAT_DESC')
    UpdateObject = UPD_MAT
    ValidateWithMask = True
    Left = 880
    Top = 416
    object Q_MATMAT_DESC: TStringField
      DisplayWidth = 100
      FieldName = 'MAT_DESC'
      Origin = 'CURA.MATERIAIS.MAT_DESC'
      FixedChar = True
      Size = 100
    end
    object Q_MATGRU_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'GRU_ID'
      Origin = 'CURA.MATERIAIS.GRU_ID'
    end
    object Q_MATUNI_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'UNI_ID'
      Origin = 'CURA.MATERIAIS.UNI_ID'
    end
    object Q_MATMAT_IPI: TFloatField
      DisplayWidth = 10
      FieldName = 'MAT_IPI'
      Origin = 'CURA.MATERIAIS.MAT_IPI'
      DisplayFormat = '###,###,##0.0'
      EditFormat = '###,###,##0.0'
    end
    object Q_MATMAT_CONTROLA: TStringField
      DisplayWidth = 1
      FieldName = 'MAT_CONTROLA'
      Origin = 'CURA.MATERIAIS.MAT_CONTROLA'
      FixedChar = True
      Size = 1
    end
    object Q_MATMAT_ESTMIN: TFloatField
      DisplayWidth = 10
      FieldName = 'MAT_ESTMIN'
      Origin = 'CURA.MATERIAIS.MAT_ESTMIN'
    end
    object Q_MATuni_desc: TStringField
      DisplayWidth = 10
      FieldKind = fkLookup
      FieldName = 'uni_desc'
      LookupDataSet = Q_UNI
      LookupKeyFields = 'UNI_ID'
      LookupResultField = 'UNI_DESC'
      KeyFields = 'UNI_ID'
      Visible = False
      Size = 10
      Lookup = True
    end
    object Q_MATMAT_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'MAT_ID'
      Origin = 'CURA.MATERIAIS.MAT_ID'
      Visible = False
    end
    object Q_MATMAT_LOTEPED: TFloatField
      FieldName = 'MAT_LOTEPED'
      Origin = 'CURA.MATERIAIS.MAT_LOTEPED'
    end
    object Q_MATMAT_LOCACAO: TStringField
      FieldName = 'MAT_LOCACAO'
      Origin = 'CURA.MATERIAIS.MAT_LOCACAO'
      FixedChar = True
      Size = 10
    end
    object Q_MATCusto_Medio: TFloatField
      FieldName = 'Custo_Medio'
      Origin = 'CURA.MATERIAIS.Custo_Medio'
      DisplayFormat = '###,##0.00'
    end
    object Q_MATGENERICO: TStringField
      FieldName = 'GENERICO'
      Origin = 'CURA.MATERIAIS.GENERICO'
      FixedChar = True
      Size = 1
    end
    object Q_MATMAT_ATIVO: TStringField
      FieldName = 'MAT_ATIVO'
      Origin = 'CURA.MATERIAIS.MAT_ATIVO'
      FixedChar = True
      Size = 1
    end
    object Q_MATMAT_ESTMAX: TFloatField
      FieldName = 'MAT_ESTMAX'
      Origin = 'CURA.MATERIAIS.MAT_ESTMAX'
    end
    object Q_MATCONTROLA_GRUPO: TStringField
      FieldName = 'CONTROLA_GRUPO'
      Origin = 'CURA.MATERIAIS.CONTROLA_GRUPO'
      FixedChar = True
      Size = 1
    end
    object Q_MATCOD_BIONEXO: TStringField
      FieldName = 'COD_BIONEXO'
      Origin = 'CURA.MATERIAIS.COD_BIONEXO'
      FixedChar = True
      Size = 255
    end
    object Q_MATRelConsumo: TStringField
      FieldName = 'RelConsumo'
      Origin = 'CURA.MATERIAIS.RelConsumo'
      FixedChar = True
      Size = 1
    end
    object Q_MATCritico: TStringField
      FieldName = 'Critico'
      Origin = 'CURA.MATERIAIS.Critico'
      FixedChar = True
      Size = 1
    end
    object Q_MATMatLaboratorio: TStringField
      FieldName = 'MatLaboratorio'
      Origin = 'CURA.MATERIAIS.MatLaboratorio'
      FixedChar = True
      Size = 2
    end
    object Q_MATEAN: TStringField
      FieldName = 'EAN'
      Origin = 'CURA.MATERIAIS.EAN'
      FixedChar = True
      Size = 50
    end
    object Q_MATLocalArmazem: TStringField
      FieldName = 'LocalArmazem'
      Origin = 'CURA.MATERIAIS.LocalArmazem'
      FixedChar = True
      Size = 255
    end
    object Q_MATValorContrato: TFloatField
      FieldName = 'ValorContrato'
      Origin = 'CURA.MATERIAIS.ValorContrato'
    end
    object Q_MATCodigoFornecedor: TStringField
      FieldName = 'CodigoFornecedor'
      Origin = 'CURA.MATERIAIS.CodigoFornecedor'
      FixedChar = True
      Size = 255
    end
    object Q_MATEntregaEmPacote: TStringField
      FieldName = 'EntregaEmPacote'
      Origin = 'CURA.MATERIAIS.EntregaEmPacote'
      FixedChar = True
      Size = 1
    end
    object Q_MATMAT_BONIFICADO: TStringField
      FieldName = 'MAT_BONIFICADO'
      Origin = 'CURA.MATERIAIS.MAT_BONIFICADO'
      FixedChar = True
      Size = 1
    end
    object Q_MATREPOSICAO: TFloatField
      FieldName = 'REPOSICAO'
      Origin = 'CURA.MATERIAIS.REPOSICAO'
      DisplayFormat = '###,###,##0.00'
    end
    object Q_MATMAT_IMOBILIZADO: TStringField
      FieldName = 'MAT_IMOBILIZADO'
      Origin = 'CURA.MATERIAIS.MAT_IMOBILIZADO'
      FixedChar = True
      Size = 1
    end
    object Q_MATCodigoMaterial: TStringField
      FieldName = 'CodigoMaterial'
      Origin = 'CURA.MATERIAIS.CodigoMaterial'
      FixedChar = True
      Size = 50
    end
  end
  object UPD_MAT: TUpdateSQL
    ModifySQL.Strings = (
      'update MATERIAIS'
      'set'
      '  MAT_DESC = :MAT_DESC,'
      '  GRU_ID = :GRU_ID,'
      '  UNI_ID = :UNI_ID,'
      '  MAT_IPI = :MAT_IPI,'
      '  MAT_CONTROLA = :MAT_CONTROLA,'
      '  MAT_ESTMIN = :MAT_ESTMIN,'
      '  MAT_LOTEPED = :MAT_LOTEPED,'
      '  MAT_LOCACAO = :MAT_LOCACAO,'
      '  GENERICO = :GENERICO,'
      '  MAT_ATIVO = :MAT_ATIVO,'
      '  MAT_ESTMAX = :MAT_ESTMAX,'
      '  CONTROLA_GRUPO = :CONTROLA_GRUPO,'
      '  COD_BIONEXO = :COD_BIONEXO,'
      '  RelConsumo = :RelConsumo,'
      '  Critico = :Critico,'
      'MatLaboratorio = :MatLaboratorio,'
      'EAN = :EAN,'
      'LocalArmazem = :LocalArmazem,'
      'ValorContrato = :ValorContrato,'
      'CodigoFornecedor = :CodigoFornecedor,'
      'EntregaEmPacote = :EntregaEmPacote,'
      'MAT_BONIFICADO = :MAT_BONIFICADO,'
      'MAT_IMOBILIZADO = :MAT_IMOBILIZADO'
      'where'
      '  MAT_ID = :OLD_MAT_ID')
    InsertSQL.Strings = (
      'insert into MATERIAIS'
      '  (MAT_DESC, GRU_ID, UNI_ID, MAT_IPI, MAT_CONTROLA, MAT_ESTMIN, '
      'MAT_LOTEPED, '
      
        '   MAT_LOCACAO, GENERICO, MAT_ATIVO, MAT_ESTMAX, CONTROLA_GRUPO,' +
        ' '
      
        'COD_BIONEXO, RelConsumo, Critico, MatLaboratorio, EAN, LocalArma' +
        'zem, '
      
        'ValorContrato, CodigoFornecedor, EntregaEmPacote, MAT_BONIFICADO' +
        ', '
      'MAT_IMOBILIZADO)'
      'values'
      
        '  (:MAT_DESC, :GRU_ID, :UNI_ID, :MAT_IPI, :MAT_CONTROLA, :MAT_ES' +
        'TMIN, '
      ':MAT_LOTEPED, '
      '   :MAT_LOCACAO, :GENERICO, :MAT_ATIVO, :MAT_ESTMAX, '
      
        ':CONTROLA_GRUPO, :COD_BIONEXO, :RelConsumo, :Critico, :MatLabora' +
        'torio, '
      
        ':EAN, :LocalArmazem, :ValorContrato, :CodigoFornecedor, :Entrega' +
        'EmPacote, '
      ':MAT_BONIFICADO, :MAT_IMOBILIZADO)')
    DeleteSQL.Strings = (
      'delete from MATERIAIS'
      'where'
      '  MAT_ID = :OLD_MAT_ID')
    Left = 944
    Top = 541
  end
  object DS_MAT: TwwDataSource
    DataSet = Q_MAT
    OnStateChange = DS_MATStateChange
    OnDataChange = DS_MATDataChange
    Left = 896
    Top = 288
  end
  object PESQ_MAT: TwwSearchDialog
    Selected.Strings = (
      'MAT_DESC'#9'60'#9'DESCRIÇÃO'#9'F')
    GridTitleAlignment = taLeftJustify
    GridColor = clWhite
    GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
    SearchTable = Q_PSQMAT
    Caption = 'Pesquisa de Materiais'
    MaxWidth = 0
    MaxHeight = 209
    CharCase = ecNormal
    Left = 1081
    Top = 160
  end
  object Q_PSQMAT: TwwQuery
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'SELECT * FROM MATERIAIS'
      'ORDER BY MAT_DESC')
    ValidateWithMask = True
    Left = 712
    Top = 120
    object Q_PSQMATMAT_DESC: TStringField
      DisplayLabel = 'DESCRIÇÃO'
      DisplayWidth = 60
      FieldName = 'MAT_DESC'
      Origin = 'FINANCEIRO.MATERIAIS.MAT_DESC'
      FixedChar = True
      Size = 60
    end
    object Q_PSQMATMAT_ESTMIN: TFloatField
      DisplayWidth = 10
      FieldName = 'MAT_ESTMIN'
      Origin = 'CURA.MATERIAIS.MAT_ESTMIN'
      Visible = False
    end
    object Q_PSQMATGRU_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'GRU_ID'
      Origin = 'FINANCEIRO.MATERIAIS.GRU_ID'
      Visible = False
    end
    object Q_PSQMATMAT_CONTROLA: TStringField
      DisplayWidth = 1
      FieldName = 'MAT_CONTROLA'
      Origin = 'FINANCEIRO.MATERIAIS.MAT_CONTROLA'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_PSQMATMAT_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'MAT_ID'
      Origin = 'FINANCEIRO.MATERIAIS.MAT_ID'
      Visible = False
    end
    object Q_PSQMATMAT_IPI: TFloatField
      DisplayWidth = 10
      FieldName = 'MAT_IPI'
      Origin = 'FINANCEIRO.MATERIAIS.MAT_IPI'
      Visible = False
    end
    object Q_PSQMATUNI_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'UNI_ID'
      Origin = 'FINANCEIRO.MATERIAIS.UNI_ID'
      Visible = False
    end
    object Q_PSQMATMAT_LOTEPED: TFloatField
      FieldName = 'MAT_LOTEPED'
      Origin = 'CURA.MATERIAIS.MAT_LOTEPED'
    end
  end
  object Q_GRMAT: TwwQuery
    CachedUpdates = True
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'SELECT * FROM GRUPO_MATERIAL'
      'ORDER BY GRU_DESC')
    ValidateWithMask = True
    Left = 1036
    Top = 101
    object Q_GRMATGRU_DESC: TStringField
      DisplayWidth = 50
      FieldName = 'GRU_DESC'
      Origin = 'CURA.GRUPO_MATERIAL.GRU_DESC'
      FixedChar = True
      Size = 40
    end
    object Q_GRMATGRU_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'GRU_ID'
      Origin = 'CURA.GRUPO_MATERIAL.GRU_ID'
      Visible = False
    end
  end
  object DS_GRMAT: TwwDataSource
    DataSet = Q_GRMAT
    Left = 940
    Top = 102
  end
  object Q_UNI: TwwQuery
    CachedUpdates = True
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'SELECT * FROM UNIDADES'
      'ORDER BY UNI_SIGLA')
    ValidateWithMask = True
    Left = 1088
    Top = 101
    object Q_UNIUNI_DESC: TStringField
      DisplayWidth = 10
      FieldName = 'UNI_DESC'
      Origin = 'CURA.UNIDADES.UNI_DESC'
      FixedChar = True
      Size = 10
    end
    object Q_UNIUNI_SIGLA: TStringField
      DisplayWidth = 2
      FieldName = 'UNI_SIGLA'
      Origin = 'CURA.UNIDADES.UNI_SIGLA'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object Q_UNIUNI_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'UNI_ID'
      Origin = 'CURA.UNIDADES.UNI_ID'
      Visible = False
    end
  end
  object DS_UNI: TwwDataSource
    AutoEdit = False
    DataSet = Q_UNI
    Left = 1096
    Top = 221
  end
  object Q_FORN: TwwQuery
    CachedUpdates = True
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'SELECT '
      'FOR_CODI,FOR_RAZA,FOR_IATI,FOR_PESS,FOR_CGC,FOR_INSC,'
      'FOR_ENDE,FOR_MUNI,FOR_ESTA,FOR_CEP,FOR_TEL1,FOR_TEL2,'
      'FOR_FAX,FOR_EMAI,FOR_NCON,FOR_CONT,FOR_CGER,FOR_MARK,'
      'FOR_PENT,FOR_SEGU, FOR_UCOM,FOR_VUCO,FOR_VUCD,FOR_MCOM,'
      'FOR_VMCO,FOR_VMCD'
      'FROM CPAFORN ORDER BY FOR_RAZA')
    PictureMasks.Strings = (
      'FOR_CODI'#9'![!][!][!][!][!][!][!][!][!][!][!][!][!][!]'#9'T'#9'F'
      
        'FOR_INSC'#9'![!][!][!][!][!][!][!][!][!][!][!][!][!][!][!][!][!][!]' +
        '[!]'#9'T'#9'F'
      
        'FOR_RAZA'#9'![!][!][!][!][!][!][!][!][!][!][!][!][!][!][!][!][!][!]' +
        '[!][!][!][!][!][!][!][!][!][!][!][!][!][!][!][!][!][!][!][!][!]'#9 +
        'T'#9'F'
      
        'FOR_MUNI'#9'![!][!][!][!][!][!][!][!][!][!][!][!][!][!][!][!][!][!]' +
        '[!][!][!][!][!][!][!][!][!][!][!]'#9'T'#9'F'
      
        'FOR_ENDE'#9'![!][!][!][!][!][!][!][!][!][!][!][!][!][!][!][!][!][!]' +
        '[!][!][!][!][!][!][!][!][!][!][!][!][!][!][!][!][!][!][!][!][!]'#9 +
        'T'#9'F'
      
        'FOR_EMAI'#9'@[@][@][@][@][@][@][@][@][@][@][@][@][@][@][@][@][@][@]' +
        '[@][@][@][@][@][@][@][@][@][@][@][@][@][@][@][@][@][@][@][@][@][' +
        '@][@][@][@][@][@][@][@][@][@][@][@][@][@][@][@][@][@][@][@]'#9'T'#9'F'
      
        'FOR_NCON'#9'![!][!][!][!][!][!][!][!][!][!][!][!][!][!][!][!][!][!]' +
        '[!][!][!][!][!][!][!][!][!][!][!]'#9'T'#9'F')
    ValidateWithMask = True
    Left = 966
    Top = 343
    object Q_FORNFOR_RAZA: TStringField
      DisplayLabel = 'Razão Social'
      DisplayWidth = 40
      FieldName = 'FOR_RAZA'
      Origin = 'CPAFORN.FOR_RAZA'
      Size = 40
    end
    object Q_FORNFOR_CODI: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 15
      FieldName = 'FOR_CODI'
      Origin = 'CPAFORN.FOR_CODI'
      Visible = False
      Size = 15
    end
    object Q_FORNFOR_CEP: TStringField
      DisplayWidth = 8
      FieldName = 'FOR_CEP'
      Visible = False
      EditMask = '99999-999;0;_'
      Size = 8
    end
    object Q_FORNFOR_TEL1: TStringField
      DisplayWidth = 11
      FieldName = 'FOR_TEL1'
      Visible = False
      EditMask = '!\(999\)9999-9999;0; '
      Size = 11
    end
    object Q_FORNFOR_TEL2: TStringField
      DisplayWidth = 11
      FieldName = 'FOR_TEL2'
      Visible = False
      EditMask = '!\(999\)9999-9999;0; '
      Size = 11
    end
    object Q_FORNFOR_FAX: TStringField
      DisplayWidth = 11
      FieldName = 'FOR_FAX'
      Visible = False
      EditMask = '!\(999\)9999-9999;0; '
      Size = 11
    end
    object Q_FORNFOR_CGC: TStringField
      DisplayWidth = 15
      FieldName = 'FOR_CGC'
      Origin = 'CPAFORN.FOR_CGC'
      Visible = False
      EditMask = '!999.999.999\/9999\-99;0; '
      Size = 15
    end
    object Q_FORNFOR_IATI: TDateTimeField
      DisplayWidth = 10
      FieldName = 'FOR_IATI'
      Origin = 'CPAFORN.FOR_IATI'
      Visible = False
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '99/99/9999'
    end
    object Q_FORNFOR_PESS: TStringField
      DisplayWidth = 1
      FieldName = 'FOR_PESS'
      Origin = 'CPAFORN.FOR_PESS'
      Visible = False
      Size = 1
    end
    object Q_FORNFOR_INSC: TStringField
      DisplayWidth = 20
      FieldName = 'FOR_INSC'
      Origin = 'CPAFORN.FOR_CGC'
      Visible = False
    end
    object Q_FORNFOR_ENDE: TStringField
      DisplayWidth = 40
      FieldName = 'FOR_ENDE'
      Origin = 'CPAFORN.FOR_INSC'
      Visible = False
      Size = 40
    end
    object Q_FORNFOR_MUNI: TStringField
      DisplayWidth = 30
      FieldName = 'FOR_MUNI'
      Origin = 'CPAFORN.FOR_ENDE'
      Visible = False
      Size = 30
    end
    object Q_FORNFOR_ESTA: TStringField
      DisplayWidth = 2
      FieldName = 'FOR_ESTA'
      Origin = 'CPAFORN.FOR_MUNI'
      Visible = False
      Size = 2
    end
    object Q_FORNFOR_EMAI: TStringField
      DisplayWidth = 60
      FieldName = 'FOR_EMAI'
      Origin = 'CPAFORN.FOR_ESTA'
      Visible = False
      Size = 60
    end
    object Q_FORNFOR_NCON: TStringField
      DisplayWidth = 30
      FieldName = 'FOR_NCON'
      Origin = 'CPAFORN.FOR_CEP'
      Visible = False
      Size = 30
    end
    object Q_FORNFOR_CONT: TStringField
      DisplayWidth = 6
      FieldName = 'FOR_CONT'
      Origin = 'CPAFORN.FOR_TEL1'
      Visible = False
      Size = 6
    end
    object Q_FORNFOR_CGER: TStringField
      DisplayWidth = 6
      FieldName = 'FOR_CGER'
      Origin = 'CPAFORN.FOR_TEL2'
      Visible = False
      Size = 6
    end
    object Q_FORNFOR_MARK: TFloatField
      DisplayWidth = 10
      FieldName = 'FOR_MARK'
      Origin = 'CPAFORN.FOR_FAX'
      Visible = False
    end
    object Q_FORNFOR_PENT: TFloatField
      DisplayWidth = 10
      FieldName = 'FOR_PENT'
      Origin = 'CPAFORN.FOR_EMAI'
      Visible = False
    end
    object Q_FORNFOR_SEGU: TIntegerField
      DisplayWidth = 10
      FieldName = 'FOR_SEGU'
      Visible = False
    end
    object Q_FORNFOR_UCOM: TDateTimeField
      DisplayWidth = 18
      FieldName = 'FOR_UCOM'
      Visible = False
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = 'dd/mm/yyyy'
    end
    object Q_FORNFOR_VUCO: TFloatField
      DisplayWidth = 10
      FieldName = 'FOR_VUCO'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_FORNFOR_VUCD: TFloatField
      DisplayWidth = 10
      FieldName = 'FOR_VUCD'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_FORNFOR_MCOM: TDateTimeField
      DisplayWidth = 18
      FieldName = 'FOR_MCOM'
      Visible = False
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = 'dd/mm/yyyy'
    end
    object Q_FORNFOR_VMCO: TFloatField
      DisplayWidth = 10
      FieldName = 'FOR_VMCO'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_FORNFOR_VMCD: TFloatField
      DisplayWidth = 10
      FieldName = 'FOR_VMCD'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
  end
  object DS_FORN: TwwDataSource
    DataSet = Q_FORN
    Left = 894
    Top = 166
  end
  object Q_MATFORN: TwwQuery
    CachedUpdates = True
    BeforeInsert = Q_MATFORNBeforeInsert
    BeforePost = Q_MATFORNBeforePost
    BeforeDelete = Q_MATFORNBeforeDelete
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    DataSource = DS_MAT
    SQL.Strings = (
      'SELECT A.*'
      'FROM MATERIAL_FORNECEDOR A,'
      '           MATERIAIS B'
      'WHERE A.MAT_ID =B.MAT_ID'
      'AND A.MAT_ID = :MAT_ID '
      'ORDER BY FOR_CODI'
      '')
    UpdateObject = UPD_MATFORN
    ValidateWithMask = True
    Left = 960
    Top = 285
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'MAT_ID'
        ParamType = ptUnknown
      end>
    object Q_MATFORNcodi_raza: TStringField
      DisplayLabel = 'Descrição'
      DisplayWidth = 52
      FieldKind = fkLookup
      FieldName = 'codi_raza'
      LookupDataSet = Q_FORN
      LookupKeyFields = 'FOR_CODI'
      LookupResultField = 'FOR_RAZA'
      KeyFields = 'FOR_CODI'
      Size = 50
      Lookup = True
    end
    object Q_MATFORNMFOR_EMBALAGEM: TStringField
      DisplayLabel = 'Embalagem'
      DisplayWidth = 17
      FieldName = 'MFOR_EMBALAGEM'
      FixedChar = True
      Size = 15
    end
    object Q_MATFORNMFOR_CONVERSAO: TFloatField
      DisplayLabel = 'Conversão'
      DisplayWidth = 17
      FieldName = 'MFOR_CONVERSAO'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_MATFORNuni_desc: TStringField
      DisplayLabel = 'Unidade de Compra'
      DisplayWidth = 10
      FieldKind = fkLookup
      FieldName = 'uni_desc'
      LookupDataSet = Q_UNI
      LookupKeyFields = 'UNI_ID'
      LookupResultField = 'UNI_DESC'
      KeyFields = 'UNI_ID'
      Size = 10
      Lookup = True
    end
    object Q_MATFORNFOR_CODI: TStringField
      DisplayWidth = 15
      FieldName = 'FOR_CODI'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object Q_MATFORNMFOR_ID: TAutoIncField
      FieldName = 'MFOR_ID'
      Visible = False
    end
    object Q_MATFORNMAT_ID: TIntegerField
      FieldName = 'MAT_ID'
      Visible = False
    end
    object Q_MATFORNUNI_ID: TIntegerField
      FieldName = 'UNI_ID'
      Visible = False
    end
    object Q_MATFORNMFOR_DT_ULTCOMP: TDateTimeField
      DisplayWidth = 10
      FieldName = 'MFOR_DT_ULTCOMP'
      Visible = False
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '99/99/9999'
    end
    object Q_MATFORNMFOR_PRE_ULTCOMP: TFloatField
      FieldName = 'MFOR_PRE_ULTCOMP'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_MATFORNMFOR_DT_ULTCOTA: TDateTimeField
      FieldName = 'MFOR_DT_ULTCOTA'
      Visible = False
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '99/99/9999'
    end
    object Q_MATFORNMFOR_PRE_ULTCOTA: TFloatField
      FieldName = 'MFOR_PRE_ULTCOTA'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
  end
  object DS_MATFORN: TwwDataSource
    DataSet = Q_MATFORN
    Left = 1032
    Top = 405
  end
  object UPD_MATFORN: TUpdateSQL
    ModifySQL.Strings = (
      'update MATERIAL_FORNECEDOR'
      'set'
      '  MAT_ID = :MAT_ID,'
      '  FOR_CODI = :FOR_CODI,'
      '  MFOR_EMBALAGEM = :MFOR_EMBALAGEM,'
      '  UNI_ID = :UNI_ID,'
      '  MFOR_CONVERSAO = :MFOR_CONVERSAO,'
      '  MFOR_DT_ULTCOMP = :MFOR_DT_ULTCOMP,'
      '  MFOR_PRE_ULTCOMP = :MFOR_PRE_ULTCOMP,'
      '  MFOR_DT_ULTCOTA = :MFOR_DT_ULTCOTA,'
      '  MFOR_PRE_ULTCOTA = :MFOR_PRE_ULTCOTA'
      'where'
      '  MFOR_ID = :OLD_MFOR_ID')
    InsertSQL.Strings = (
      'insert into MATERIAL_FORNECEDOR'
      
        '  (MAT_ID, FOR_CODI, MFOR_EMBALAGEM, UNI_ID, MFOR_CONVERSAO, MFO' +
        'R_DT_ULTCOMP, '
      '   MFOR_PRE_ULTCOMP, MFOR_DT_ULTCOTA, MFOR_PRE_ULTCOTA)'
      'values'
      
        '  (:MAT_ID, :FOR_CODI, :MFOR_EMBALAGEM, :UNI_ID, :MFOR_CONVERSAO' +
        ', :MFOR_DT_ULTCOMP, '
      '   :MFOR_PRE_ULTCOMP, :MFOR_DT_ULTCOTA, :MFOR_PRE_ULTCOTA)')
    DeleteSQL.Strings = (
      'delete from MATERIAL_FORNECEDOR'
      'where'
      '  MFOR_ID = :OLD_MFOR_ID')
    Left = 1096
    Top = 405
  end
  object PESQ_MATMARC: TwwSearchDialog
    Selected.Strings = (
      'marca'#9'15'#9'Marca'#9'F')
    GridTitleAlignment = taLeftJustify
    GridColor = clWhite
    GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
    SearchTable = Q_PSQMATMARC
    Caption = 'Pesquisa de Marcas'
    MaxWidth = 0
    MaxHeight = 209
    CharCase = ecNormal
    Left = 973
    Top = 157
  end
  object Q_PSQMATMARC: TwwQuery
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    DataSource = DS_MAT
    SQL.Strings = (
      'SELECT A.*'
      'FROM MATERIAL_MARCA A,'
      '           MATERIAIS B,'
      '           MARCAS C'
      'WHERE A.MAT_ID =B.MAT_ID'
      'AND A.MAT_ID = :MAT_ID '
      'AND   A.MARCA_ID = C.MARCA_ID'
      'ORDER BY C.MARCA_DESC')
    ValidateWithMask = True
    Left = 893
    Top = 228
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'MAT_ID'
        ParamType = ptUnknown
      end>
    object Q_PSQMATMARCmarca: TStringField
      DisplayLabel = 'Marca'
      DisplayWidth = 15
      FieldKind = fkLookup
      FieldName = 'marca'
      LookupDataSet = Q_MARC
      LookupKeyFields = 'MARCA_ID'
      LookupResultField = 'MARCA_DESC'
      KeyFields = 'MARCA_ID'
      Size = 15
      Lookup = True
    end
    object Q_PSQMATMARCMATMARCA_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'MATMARCA_ID'
      Origin = 'CURA.MATERIAL_MARCA.MATMARCA_ID'
      Visible = False
    end
    object Q_PSQMATMARCMAT_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'MAT_ID'
      Origin = 'CURA.MATERIAL_MARCA.MAT_ID'
      Visible = False
    end
    object Q_PSQMATMARCMARCA_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'MARCA_ID'
      Origin = 'CURA.MATERIAL_MARCA.MARCA_ID'
      Visible = False
    end
    object Q_PSQMATMARCMATMARCA_EMBALAGEM: TStringField
      DisplayWidth = 15
      FieldName = 'MATMARCA_EMBALAGEM'
      Origin = 'CURA.MATERIAL_MARCA.MATMARCA_EMBALAGEM'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object Q_PSQMATMARCUNI_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'UNI_ID'
      Origin = 'CURA.MATERIAL_MARCA.UNI_ID'
      Visible = False
    end
    object Q_PSQMATMARCMATMARCA_CONVERSAO: TFloatField
      DisplayWidth = 10
      FieldName = 'MATMARCA_CONVERSAO'
      Origin = 'CURA.MATERIAL_MARCA.MATMARCA_CONVERSAO'
      Visible = False
    end
    object Q_PSQMATMARCMATMARCA_DT_ULTCOMP: TDateTimeField
      DisplayWidth = 18
      FieldName = 'MATMARCA_DT_ULTCOMP'
      Origin = 'CURA.MATERIAL_MARCA.MATMARCA_DT_ULTCOMP'
      Visible = False
    end
    object Q_PSQMATMARCMATMARCA_PRE_ULTCOMP: TFloatField
      DisplayWidth = 10
      FieldName = 'MATMARCA_PRE_ULTCOMP'
      Origin = 'CURA.MATERIAL_MARCA.MATMARCA_PRE_ULTCOMP'
      Visible = False
    end
    object Q_PSQMATMARCMATMARCA_DT_ULTCOTA: TDateTimeField
      DisplayWidth = 18
      FieldName = 'MATMARCA_DT_ULTCOTA'
      Origin = 'CURA.MATERIAL_MARCA.MATMARCA_DT_ULTCOTA'
      Visible = False
    end
    object Q_PSQMATMARCMATMARCA_PRE_ULTCOTA: TFloatField
      DisplayWidth = 10
      FieldName = 'MATMARCA_PRE_ULTCOTA'
      Origin = 'CURA.MATERIAL_MARCA.MATMARCA_PRE_ULTCOTA'
      Visible = False
    end
  end
  object Q_AUX: TwwQuery
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    ValidateWithMask = True
    Left = 896
    Top = 344
  end
  object Q_MARC: TwwQuery
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'SELECT * FROM MARCAS'
      'ORDER BY MARCA_DESC')
    ValidateWithMask = True
    Left = 1028
    Top = 219
    object Q_MARCMARCA_DESC: TStringField
      DisplayWidth = 20
      FieldName = 'MARCA_DESC'
      Origin = 'CURA.MARCAS.MARCA_DESC'
      FixedChar = True
    end
    object Q_MARCMARCA_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'MARCA_ID'
      Origin = 'CURA.MARCAS.MARCA_ID'
      Visible = False
    end
  end
  object DS_MARC: TwwDataSource
    DataSet = Q_MARC
    Left = 1029
    Top = 157
  end
  object UPD_MATMARC: TUpdateSQL
    ModifySQL.Strings = (
      'update MATERIAL_MARCA'
      'set'
      '  MAT_ID = :MAT_ID,'
      '  MARCA_ID = :MARCA_ID,'
      '  MATMARCA_EMBALAGEM = :MATMARCA_EMBALAGEM,'
      '  UNI_ID = :UNI_ID,'
      '  MATMARCA_CONVERSAO = :MATMARCA_CONVERSAO,'
      '  MATMARCA_DT_ULTCOMP = :MATMARCA_DT_ULTCOMP,'
      '  MATMARCA_PRE_ULTCOMP = :MATMARCA_PRE_ULTCOMP,'
      '  MATMARCA_DT_ULTCOTA = :MATMARCA_DT_ULTCOTA,'
      '  MATMARCA_PRE_ULTCOTA = :MATMARCA_PRE_ULTCOTA,'
      '  CodBionexo = :CodBionexo'
      'where'
      '  MATMARCA_ID = :OLD_MATMARCA_ID')
    InsertSQL.Strings = (
      'insert into MATERIAL_MARCA'
      '  (MAT_ID, MARCA_ID, MATMARCA_EMBALAGEM, UNI_ID, '
      'MATMARCA_CONVERSAO, MATMARCA_DT_ULTCOMP, '
      '   MATMARCA_PRE_ULTCOMP, MATMARCA_DT_ULTCOTA, '
      'MATMARCA_PRE_ULTCOTA, CodBionexo)'
      'values'
      '  (:MAT_ID, :MARCA_ID, :MATMARCA_EMBALAGEM, :UNI_ID, '
      ':MATMARCA_CONVERSAO, '
      '   :MATMARCA_DT_ULTCOMP, :MATMARCA_PRE_ULTCOMP, '
      ':MATMARCA_DT_ULTCOTA, :MATMARCA_PRE_ULTCOTA, :CodBionexo)')
    DeleteSQL.Strings = (
      'delete from MATERIAL_MARCA'
      'where'
      '  MATMARCA_ID = :OLD_MATMARCA_ID')
    Left = 1086
    Top = 469
  end
  object Q_MATMARC: TwwQuery
    CachedUpdates = True
    BeforePost = Q_MATMARCBeforePost
    AfterPost = Q_MATMARCAfterPost
    AfterDelete = Q_MATMARCAfterDelete
    OnNewRecord = Q_MATMARCNewRecord
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    DataSource = DS_MAT
    RequestLive = True
    SQL.Strings = (
      'SELECT A.*'
      'FROM MATERIAL_MARCA A,'
      '           MATERIAIS B,'
      '           MARCAS C'
      'WHERE A.MAT_ID =B.MAT_ID'
      'AND A.MAT_ID = :MAT_ID '
      'ORDER BY C.MARCA_DESC')
    UpdateObject = UPD_MATMARC
    ValidateWithMask = True
    Left = 1108
    Top = 35
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'MAT_ID'
        ParamType = ptUnknown
      end>
    object Q_MATMARCmarca: TStringField
      DisplayLabel = 'Descrição'
      DisplayWidth = 38
      FieldKind = fkLookup
      FieldName = 'marca'
      LookupDataSet = Q_MARC
      LookupKeyFields = 'MARCA_ID'
      LookupResultField = 'MARCA_DESC'
      KeyFields = 'MARCA_ID'
      Lookup = True
    end
    object Q_MATMARCMATMARCA_EMBALAGEM: TStringField
      DisplayLabel = 'Embalagem'
      DisplayWidth = 18
      FieldName = 'MATMARCA_EMBALAGEM'
      Origin = 'CURA.MATERIAL_MARCA.MATMARCA_EMBALAGEM'
      FixedChar = True
      Size = 15
    end
    object Q_MATMARCunidade: TStringField
      DisplayLabel = 'Unidade'
      DisplayWidth = 11
      FieldKind = fkLookup
      FieldName = 'unidade'
      LookupDataSet = Q_UNI
      LookupKeyFields = 'UNI_ID'
      LookupResultField = 'UNI_DESC'
      KeyFields = 'UNI_ID'
      Size = 10
      Lookup = True
    end
    object Q_MATMARCMATMARCA_CONVERSAO: TFloatField
      DisplayLabel = 'Conversão'
      DisplayWidth = 14
      FieldName = 'MATMARCA_CONVERSAO'
      Origin = 'CURA.MATERIAL_MARCA.MATMARCA_CONVERSAO'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_MATMARCMATMARCA_DT_ULTCOMP: TDateTimeField
      DisplayLabel = 'Dt. da Última Compra'
      DisplayWidth = 13
      FieldName = 'MATMARCA_DT_ULTCOMP'
      Origin = 'CURA.MATERIAL_MARCA.MATMARCA_DT_ULTCOMP'
      Visible = False
      DisplayFormat = 'DD/MM/YYYY'
      EditMask = '99/99/9999'
    end
    object Q_MATMARCMATMARCA_PRE_ULTCOMP: TFloatField
      DisplayWidth = 26
      FieldName = 'MATMARCA_PRE_ULTCOMP'
      Origin = 'CURA.MATERIAL_MARCA.MATMARCA_PRE_ULTCOMP'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_MATMARCMATMARCA_DT_ULTCOTA: TDateTimeField
      DisplayWidth = 24
      FieldName = 'MATMARCA_DT_ULTCOTA'
      Origin = 'CURA.MATERIAL_MARCA.MATMARCA_DT_ULTCOTA'
      Visible = False
      DisplayFormat = 'DD/MM/YYYY'
      EditMask = '99/99/9999'
    end
    object Q_MATMARCMATMARCA_PRE_ULTCOTA: TFloatField
      DisplayWidth = 26
      FieldName = 'MATMARCA_PRE_ULTCOTA'
      Origin = 'CURA.MATERIAL_MARCA.MATMARCA_PRE_ULTCOTA'
      Visible = False
    end
    object Q_MATMARCUNI_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'UNI_ID'
      Origin = 'CURA.MATERIAL_MARCA.UNI_ID'
      Visible = False
    end
    object Q_MATMARCMATMARCA_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'MATMARCA_ID'
      Origin = 'CURA.MATERIAL_MARCA.MATMARCA_ID'
      Visible = False
    end
    object Q_MATMARCMAT_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'MAT_ID'
      Origin = 'CURA.MATERIAL_MARCA.MAT_ID'
      Visible = False
    end
    object Q_MATMARCMARCA_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'MARCA_ID'
      Origin = 'CURA.MATERIAL_MARCA.MARCA_ID'
      Visible = False
    end
    object Q_MATMARCCodBionexo: TStringField
      FieldName = 'CodBionexo'
      Origin = 'CURA.MATERIAL_MARCA.CodBionexo'
      FixedChar = True
      Size = 50
    end
  end
  object DS_MATMARC: TwwDataSource
    DataSet = Q_MATMARC
    OnStateChange = DS_MATMARCStateChange
    OnDataChange = DS_MATMARCDataChange
    Left = 956
    Top = 411
  end
  object wwQuery1: TwwQuery
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    ValidateWithMask = True
    Left = 992
    Top = 101
  end
  object ImageList1: TImageList
    Height = 24
    Width = 24
    Left = 1092
    Top = 278
    Bitmap = {
      494C01010C000E00040018001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000600000006000000001002000000000000090
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
      000000000000000000000000000000000000000000000000000073BD73002973
      290021632100216B2100216B2100216B2100216B2100216B2100216B21002163
      210021632100216B210021632100216B210021632100216321002163210073BD
      7300000000000000000000000000000000000000000000000000FFAD6B00B563
      18008C521000A55A1800A55A1800A55A1800A55A1800A55A1800A55A18009C52
      10009C521000A55A18009C521000A55A18009C5210008C5210009C521000FFAD
      6B00000000000000000000000000000000000000000000000000FFAD6B00B563
      18008C521000A55A1800A55A1800A55A1800A55A1800A55A1800A55A18009C52
      10009C521000A55A18009C521000A55A18009C5210008C5210009C521000FFAD
      6B0000000000000000000000000000000000000000000000000073BD73002973
      290021632100216B2100216B2100216B2100216B2100216B2100216B21002163
      210021632100216B210021632100216B210021632100216321002163210073BD
      7300000000000000000000000000000000000000000000000000318431003184
      3100318C3100319C3100319C3100319C3100319C3100319C3100319C3100318C
      3100318C3100318C3100318C31003184310029842900297B290029732900216B
      2100000000000000000000000000000000000000000000000000CE6B1800CE6B
      1800D6731800DE732100DE732100DE732100DE732100DE732100DE732100D673
      1800DE732100D6731800D6731800CE6B1800BD6B1800B5631800AD5A1800A55A
      1800000000000000000000000000000000000000000000000000CE6B1800CE6B
      1800D6731800DE732100DE732100DE732100DE732100DE732100DE732100D673
      1800DE732100D6731800D6731800CE6B1800BD6B1800B5631800AD5A1800A55A
      1800000000000000000000000000000000000000000000000000318431003184
      3100318C3100319C3100319C3100319C3100319C3100319C3100319C3100318C
      3100318C3100318C3100318C31003184310029842900297B290029732900216B
      21000000000000000000000000000000000000000000000000002984290039A5
      390039A539004AAD4A004AAD4A004AAD4A004AAD4A004AAD4A0039A5390039A5
      390039A5390039A5390039A5390039A53900319C310031843100298429002163
      2100000000000000000000000000000000000000000000000000BD6B1800EF7B
      2100EF842900F7843100F7843100F7843100F7843100F7843100EF7B2900EF84
      2900EF842900EF7B2900EF7B2100EF7B2100DE732100CE6B1800BD6B18008C52
      1000000000000000000000000000000000000000000000000000BD6B1800EF7B
      2100EF842900F7843100F7843100F7843100F7843100F7843100EF7B2900EF84
      2900EF842900EF7B2900EF7B2100EF7B2100DE732100CE6B1800BD6B18008C52
      10000000000000000000000000000000000000000000000000002984290039A5
      390039A539004AAD4A004AAD4A004AAD4A004AAD4A004AAD4A0039A5390039A5
      390039A5390039A5390039A5390039A53900319C310031843100298429002163
      2100000000000000000000000000000000000000000000000000318C310039A5
      390039A5390052AD520052AD52005AB55A0052AD520052AD52004AAD4A0039A5
      390039A5390039A5390039A5390039A53900318C3100319C3100298429002163
      2100000000000000000000000000000000000000000000000000D6731800EF7B
      2900EF842900F78C3900F78C3900F79C4A00F78C3900F78C3900F78C3900EF84
      2900EF842900EF7B2900EF7B2900EF7B2100D6731800DE732100BD6B18008C52
      1000000000000000000000000000000000000000000000000000D6731800EF7B
      2900EF842900F78C3900F78C3900F79C4A00F78C3900F78C3900F78C3900EF84
      2900EF842900EF7B2900EF7B2900EF7B2100D6731800DE732100BD6B18008C52
      1000000000000000000000000000000000000000000000000000318C310039A5
      390039A5390052AD520052AD52005AB55A0052AD520052AD52004AAD4A0039A5
      390039A5390039A5390039A5390039A53900318C3100319C3100298429002163
      2100000000000000000000000000000000000000000000000000318C310039A5
      39004AAD4A005AB55A005AB55A005AB55A0052AD52004AAD4A004AAD4A008CCE
      8C00EFF7EF00EFF7EF0039A5390039A5390039A53900319C3100318431002163
      2100000000000000000000000000000000000000000000000000DE732100EF84
      2900F78C3900FFBD8400FFBD8400F79C4A00F78C3900F78C3900F78C3900F784
      3100FFBD8400FFF7DE00FFF7DE00EF7B2900EF7B2100DE732100CE6B18008C52
      1000000000000000000000000000000000000000000000000000DE732100EF84
      2900F78C3900F79C4A00F79C4A00FFF7DE00FFF7DE00FFBD8400F78C3900F784
      3100EF842900EF7B2900EF7B2900FFBD8400FFBD8400DE732100CE6B18008C52
      1000000000000000000000000000000000000000000000000000318C310039A5
      39004AAD4A005AB55A005AB55A00EFF7EF00EFF7EF008CCE8C004AAD4A004AAD
      4A0039A5390039A5390039A5390039A5390039A53900319C3100318431002163
      210000000000000000000000000000000000000000000000000039A539004AAD
      4A005AB55A005AB55A005AB55A005AB55A005AB55A0052AD52008CCE8C00EFF7
      EF00FFFFFF00EFF7EF0039A5390039A53900319C310039A5390031843100216B
      2100000000000000000000000000000000000000000000000000EF7B2100F78C
      3900F79C4A00FFFFFF00FFBD8400F79C4A00F79C4A00F78C3900F78C3900FFBD
      8400FFF7DE00FFFFFF00FFF7DE00EF7B2100DE732100EF7B2100CE6B1800A55A
      1800000000000000000000000000000000000000000000000000EF7B2100F78C
      3900F79C4A00F79C4A00F79C4A00FFF7DE00FFFFFF00FFF7DE00FFBD8400F784
      3100EF842900EF842900EF7B2900FFBD8400FFFFFF00EF7B2100CE6B1800A55A
      180000000000000000000000000000000000000000000000000039A539004AAD
      4A005AB55A005AB55A005AB55A00EFF7EF00FFFFFF00EFF7EF008CCE8C004AAD
      4A0039A5390039A5390039A5390039A53900319C310039A5390031843100216B
      210000000000000000000000000000000000000000000000000039A5390052AD
      52005AB55A005AB55A005AB55A005AB55A005AB55A008CCE8C00EFF7EF00FFFF
      FF00FFFFFF00EFF7EF0039A5390039A5390039A5390039A53900318C3100216B
      2100000000000000000000000000000000000000000000000000EF7B2100F78C
      3900F79C5200FFFFFF00FFBD8400F79C4A00F79C4A00F79C4A00FFBD8400FFF7
      DE00FFFFFF00FFFFFF00FFF7DE00EF7B2100EF7B2100EF7B2100D6731800A55A
      1800000000000000000000000000000000000000000000000000EF7B2100F78C
      3900F79C5200F79C5200F79C5200FFF7DE00FFFFFF00FFFFFF00FFF7DE00FFBD
      8400F7843100EF842900EF7B2900FFBD8400FFFFFF00EF7B2100D6731800A55A
      180000000000000000000000000000000000000000000000000039A5390052AD
      52005AB55A005AB55A005AB55A00EFF7EF00FFFFFF00FFFFFF00EFF7EF008CCE
      8C004AAD4A0039A5390039A5390039A5390039A5390039A53900318C3100216B
      210000000000000000000000000000000000000000000000000039A539005AB5
      5A005AB55A005AB55A005AB55A005AB55A008CCE8C00EFF7EF00FFFFFF00FFFF
      FF00FFFFFF00EFF7EF0039A5390039A53900319C310039A53900318C31002973
      2900000000000000000000000000000000000000000000000000EF7B2900F79C
      5200F79C5200FFFFFF00FFBD8400F79C5200F79C4A00FFBD8400FFF7DE00FFFF
      FF00FFFFFF00FFFFFF00FFF7DE00EF7B2100DE732100EF7B2900DE732100AD5A
      1800000000000000000000000000000000000000000000000000EF7B2900F79C
      5200F79C5200F79C5200F79C5200FFF7DE00FFFFFF00FFFFFF00FFFFFF00FFF7
      DE00FFBD8400EF842900EF7B2900FFBD8400FFFFFF00EF7B2900DE732100AD5A
      180000000000000000000000000000000000000000000000000039A539005AB5
      5A005AB55A005AB55A005AB55A00EFF7EF00FFFFFF00FFFFFF00FFFFFF00EFF7
      EF008CCE8C0039A5390039A5390039A53900319C310039A53900318C31002973
      29000000000000000000000000000000000000000000000000004AAD4A0063B5
      63005AB55A0063B563005AB55A008CCE8C00EFF7EF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00EFF7EF0039A5390039A5390039A5390039A53900318C3100216B
      2100000000000000000000000000000000000000000000000000F7843100F7A5
      5A00F79C5200FFFFFF00FFBD8400F79C5200FFBD8400FFF7DE00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF7DE00EF7B2100EF7B2900EF842900DE732100A55A
      1800000000000000000000000000000000000000000000000000F7843100F7A5
      5A00F79C5200F7A55A00F79C5200FFF7DE00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFF7DE00FFBD8400EF7B2900FFBD8400FFFFFF00EF842900DE732100A55A
      18000000000000000000000000000000000000000000000000004AAD4A0063B5
      63005AB55A0063B563005AB55A00EFF7EF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00EFF7EF008CCE8C0039A5390039A5390039A5390039A53900318C3100216B
      21000000000000000000000000000000000000000000000000005AB55A005AB5
      5A0063B5630063B563008CCE8C00EFF7EF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00EFF7EF0039A5390039A5390039A5390039A5390039A539002973
      2900000000000000000000000000000000000000000000000000F79C4A00F79C
      5200F7A55A00FFFFFF00FFBD8400FFBD8400FFF7DE00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF7DE00EF842900EF7B2900EF7B2900EF7B2100AD5A
      1800000000000000000000000000000000000000000000000000F79C4A00F79C
      5200F7A55A00F7A55A00F7A55A00FFF7DE00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFF7DE00FFBD8400FFBD8400FFFFFF00EF7B2900EF7B2100AD5A
      18000000000000000000000000000000000000000000000000005AB55A005AB5
      5A0063B5630063B5630063B56300EFF7EF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00EFF7EF008CCE8C0039A5390039A5390039A5390039A539002973
      290000000000000000000000000000000000000000000000000052AD52006BBD
      6B0063B5630063B563005AB55A008CCE8C00EFF7EF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00EFF7EF0039A5390039A53900318C310039A5390039A539002973
      2900000000000000000000000000000000000000000000000000F78C3900F7A5
      5A00F7A55A00FFFFFF00FFBD8400F79C4A00FFBD8400FFF7DE00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF7DE00EF7B2900DE732100EF7B2900EF7B2100AD5A
      1800000000000000000000000000000000000000000000000000F78C3900F7A5
      5A00F7A55A00F7A55A00F79C5200FFF7DE00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFF7DE00FFBD8400EF7B2900FFBD8400FFFFFF00EF7B2900EF7B2100AD5A
      180000000000000000000000000000000000000000000000000052AD52006BBD
      6B0063B5630063B563005AB55A00EFF7EF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00EFF7EF008CCE8C0039A5390039A53900318C310039A5390039A539002973
      29000000000000000000000000000000000000000000000000005AB55A006BBD
      6B006BBD6B006BBD6B0063B563005AB55A008CCE8C00EFF7EF00FFFFFF00FFFF
      FF00FFFFFF00EFF7EF0039A5390039A5390039A5390039A5390039A53900216B
      2100000000000000000000000000000000000000000000000000F79C4A00FFAD
      6300F7A55A00FFFFFF00FFBD8400F79C5200F79C4A00FFBD8400FFF7DE00FFFF
      FF00FFFFFF00FFFFFF00FFF7DE00EF7B2900EF7B2900EF842900EF7B2900A55A
      1800000000000000000000000000000000000000000000000000F79C4A00FFAD
      6300F7A55A00F7A55A00F7A55A00FFF7DE00FFFFFF00FFFFFF00FFFFFF00FFF7
      DE00FFBD8400EF7B2900EF7B2900FFBD8400FFFFFF00EF842900EF7B2900A55A
      18000000000000000000000000000000000000000000000000005AB55A006BBD
      6B006BBD6B006BBD6B0063B56300EFF7EF00FFFFFF00FFFFFF00FFFFFF00EFF7
      EF008CCE8C0039A5390039A5390039A5390039A5390039A5390039A53900216B
      21000000000000000000000000000000000000000000000000005AB55A0073BD
      73007BBD7B006BBD6B006BBD6B005AB55A005AB55A008CCE8C00EFF7EF00FFFF
      FF00FFFFFF00EFF7EF0039A5390039A539004AAD4A0039A5390039A539002973
      2900000000000000000000000000000000000000000000000000F79C4A00FFAD
      6B00FFB57300FFFFFF00FFBD8400F79C5200F79C4A00F79C5200FFBD8400FFF7
      DE00FFFFFF00FFFFFF00FFF7DE00EF842900F7843100EF842900EF7B2100AD5A
      1800000000000000000000000000000000000000000000000000F79C4A00FFAD
      6B00FFB57300FFAD6300F7A55A00FFF7DE00FFFFFF00FFFFFF00FFF7DE00FFBD
      8400F7843100EF842900EF7B2900FFBD8400FFFFFF00EF842900EF7B2100AD5A
      18000000000000000000000000000000000000000000000000005AB55A0073BD
      73007BBD7B006BBD6B006BBD6B00EFF7EF00FFFFFF00FFFFFF00EFF7EF008CCE
      8C004AAD4A0039A5390039A5390039A539004AAD4A0039A5390039A539002973
      29000000000000000000000000000000000000000000000000005AB55A007BBD
      7B007BBD7B0073BD73006BBD6B0063B563005AB55A005AB55A008CCE8C00EFF7
      EF00FFFFFF00EFF7EF004AAD4A0039A5390039A5390039A5390039A539002973
      2900000000000000000000000000000000000000000000000000F79C5200FFB5
      7B00FFB57300FFFFFF00FFBD8400F7A55A00F79C5200F79C4A00F78C3900FFBD
      8400FFF7DE00FFFFFF00FFF7DE00EF7B2900EF7B2900EF842900EF7B2900B563
      1800000000000000000000000000000000000000000000000000F79C5200FFB5
      7B00FFB57300FFAD6B00F7A55A00FFF7DE00FFFFFF00FFF7DE00FFBD8400F78C
      3900F78C3900F7843100F7843100FFBD8400FFFFFF00EF842900EF7B2900B563
      18000000000000000000000000000000000000000000000000005AB55A007BBD
      7B007BBD7B0073BD73006BBD6B00EFF7EF00FFFFFF00EFF7EF008CCE8C004AAD
      4A004AAD4A004AAD4A004AAD4A0039A5390039A5390039A5390039A539002973
      290000000000000000000000000000000000000000000000000063B563008CCE
      8C0084CE84007BBD7B0073BD73006BBD6B006BBD6B0063B563005AB55A008CCE
      8C00EFF7EF00EFF7EF005AB55A004AAD4A004AAD4A004AAD4A0039A539002973
      2900000000000000000000000000000000000000000000000000F7A55A00FFCE
      8C00FFBD8400FFBD8400FFBD8400FFAD6300F7A55A00F7A55A00F79C5200F79C
      4A00FFBD8400FFF7DE00FFF7DE00F78C3900F78C3900F7843100EF7B2100AD5A
      1800000000000000000000000000000000000000000000000000F7A55A00FFCE
      8C00FFBD8400FFB57300FFAD6B00FFF7DE00FFF7DE00FFBD8400F79C5200F79C
      4A00F79C4A00F78C3900F79C4A00FFBD8400FFBD8400F7843100EF7B2100AD5A
      180000000000000000000000000000000000000000000000000063B563008CCE
      8C0084CE84007BBD7B0073BD7300EFF7EF00EFF7EF008CCE8C005AB55A005AB5
      5A005AB55A0052AD52005AB55A004AAD4A004AAD4A004AAD4A0039A539002973
      29000000000000000000000000000000000000000000000000006BBD6B009CD6
      9C009CD69C0084CE84007BBD7B007BBD7B0073BD73006BBD6B006BBD6B006BBD
      6B006BBD6B0063B563005AB55A005AB55A005AB55A004AAD4A0039A53900216B
      2100000000000000000000000000000000000000000000000000F7A55A00FFCE
      9C00FFCE9C00FFBD8400FFB57300FFB57300FFAD6B00FFAD6300F7A55A00F7A5
      5A00F7A55A00F7A55A00F79C5200F79C4A00F79C4A00F78C3900EF7B2900A55A
      1800000000000000000000000000000000000000000000000000F7A55A00FFCE
      9C00FFCE9C00FFBD8400FFB57300FFB57300FFAD6B00FFAD6300F7A55A00F7A5
      5A00F7A55A00F7A55A00F79C5200F79C4A00F79C4A00F78C3900EF7B2900A55A
      18000000000000000000000000000000000000000000000000006BBD6B009CD6
      9C009CD69C0084CE84007BBD7B007BBD7B0073BD73006BBD6B006BBD6B006BBD
      6B006BBD6B0063B563005AB55A005AB55A005AB55A004AAD4A0039A53900216B
      210000000000000000000000000000000000000000000000000073BD73009CD6
      9C009CD69C0084CE84007BBD7B006BBD6B006BBD6B006BBD6B006BBD6B006BBD
      6B006BBD6B0063B563005AB55A005AB55A0052AD52004AAD4A00319C3100297B
      2900000000000000000000000000000000000000000000000000FFAD6B00FFCE
      9C00FFCE9C00FFBD8400FFB57300FFAD6300FFAD6300F7A55A00F7A55A00F7A5
      5A00F7A55A00F7A55A00F79C5200F79C4A00F78C3900F7843100DE732100B563
      1800000000000000000000000000000000000000000000000000FFAD6B00FFCE
      9C00FFCE9C00FFBD8400FFB57300FFAD6300FFAD6300F7A55A00F7A55A00F7A5
      5A00F7A55A00F7A55A00F79C5200F79C4A00F78C3900F7843100DE732100B563
      180000000000000000000000000000000000000000000000000073BD73009CD6
      9C009CD69C0084CE84007BBD7B006BBD6B006BBD6B006BBD6B006BBD6B006BBD
      6B006BBD6B0063B563005AB55A005AB55A0052AD52004AAD4A00319C3100297B
      290000000000000000000000000000000000000000000000000073BD730073BD
      73006BBD6B005AB55A005AB55A005AB55A0052AD520052AD520052AD52005AB5
      5A004AAD4A0039A539004AAD4A004AAD4A0039A5390039A53900318C310073BD
      7300000000000000000000000000000000000000000000000000FFAD6B00FFAD
      6B00F7A55A00F79C5200F79C4A00F79C4A00F78C3900F78C3900F78C3900F79C
      4A00F78C3900EF842900F7843100F7843100EF7B2100EF7B2100D6731800FFAD
      6B00000000000000000000000000000000000000000000000000FFAD6B00FFAD
      6B00F7A55A00F79C5200F79C4A00F79C4A00F78C3900F78C3900F78C3900F79C
      4A00F78C3900EF842900F7843100F7843100EF7B2100EF7B2100D6731800FFAD
      6B0000000000000000000000000000000000000000000000000073BD730073BD
      73006BBD6B005AB55A005AB55A005AB55A0052AD520052AD520052AD52005AB5
      5A004AAD4A0039A539004AAD4A004AAD4A0039A5390039A53900318C310073BD
      7300000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009860
      6000A16A6A00A16A6A00A16A6A00A16A6A00A16A6A00A16A6A00A16A6A00A16A
      6A00A16A6A00A16A6A00A16A6A00A16A6A00A16A6A00A16A6A00A16A6A00A16A
      6A00A16A6A00A16A6A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009858
      6A00EAD4B600F4E0B600F4D4AB00F4D4A100F4CAA100F4CA9800F4CA8F00EAC0
      8400EAC08400EAC07B00EAC07B00EAC07B00EAC07B00EAC07B00EAC07B00EAC0
      7B00EAC07B00A16A6A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000662800006628
      00005F25000059230000532000004D1E0000471C0000451B0000451B0000451B
      0000451B0000451B0000451B0000451B0000451B0000451B0000451B0000431A
      00003C1700003C17000000000000000000000000000000000000000000000000
      00000000000000000000EEAA6B00F0B47700F0BA7F00F0B77B00EFB27600F0AD
      6E00EEAC6D00EFAF6F00EEAC6D00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009858
      6A00EAD4B600F4E0B600F4D4B600F4D4AB00F4CAA100F4CA9800F4CA9800EAC0
      8F00EAC08400EAC08400EAC07B00EAC07B00EAC07B00EAC07B00EAC07B00EAC0
      7B00EAC07B00A16A6A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084340000792F00008935
      0000843400007E310000772E0000702C00006A29000068280000682800006828
      00006828000068280000682800006828000068280000682800006A2900006A29
      000053200000361600003C170000000000000000000000000000000000000000
      000000000000F6CE9700FAE2B100FAE2B100F8D7A300F4CA9200F0BC8100EFB0
      7300EFAF6F00F2B77A00F3C08600F4C58B00F2BF8400EFAF7200EEAC6D000000
      0000000000000000000000000000000000000000000000000000000000009858
      6A00F4D4C000F4E0C000F4D4B600F4D4B600F4D4AB00F4CAA100F4CA9800F4CA
      9800EAC08F00EAC08400EAC08400EAC07B00EAC07B00EAC07B00EAC07B00EAC0
      7B00EAC07B00A16A6A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084340000C24C0000CF51
      0000C74E0000C04B0000BB490000B6470000B1450000AC430000AA420000AA42
      0000AA420000AA420000AA420000AA420000AA420000AA420000AA420000AF44
      0000A03F0000532000003C170000000000000000000000000000000000000000
      0000FAE2B100FFFCD400FEF7CE00FBE5B600F8D7A300F3C99100F7BF8600F4B1
      7500F0AD6E00FFBF8B00FFCC9F00FFD9AD00FFE2B400FBE5B600F3C18700EEAC
      6D00000000000000000000000000000000000000000000000000000000009858
      6A00F4E0C000F4E0CA00F4E0C000F4D4B600F4D4AB00F4D4AB00F4CAA100F4CA
      9800F4CA9800EAC08F00EAC08400EAC08400EAC07B00EAC07B00EAC07B00EAC0
      7B00EAC07B00A16A6A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009E3E0000D9550000D955
      0000CF510000CA4F0000C54D0000C04B0000B8480000B4460000AF440000AA42
      0000AA420000AA420000AA420000AA420000AA420000AA420000AA420000AF44
      0000AF4400006A290000431A0000000000000000000000000000000000000000
      0000FCF2C600FFFFD800FEF3C900FBE5B500F8D7A300F8CB9500D0C28400E2C1
      8A00F4C08F007EAD550058A5410082B76300E9E1B400FFF7CF00FFF6CA00F2BC
      8200EEAC6D000000000000000000000000000000000000000000000000009858
      6A00F4E0CA00D4D4D400848484008484840084848400848484001C1C1C003848
      5000848484008484840084848400848484008484840084848400848484008484
      8400EAC07B00A16A6A0000000000000000000000000084401600844016008440
      1600844016008440160084401600844016008440160084401600844016008440
      1600844016008440160000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A7410000DE570000DC56
      0000D4530000CF510000C74E0000C54D0000BD4A0000B8480000B4460000AC43
      0000AA420000A7410000A7410000A7410000A7410000A7410000A7410000AA42
      0000AA4200006A290000451B0000000000000000000000000000000000000000
      0000F6D09A00FFFFD900FEF7CE00FAE5B600F7D7A400FFCE9C00A4BB6F003199
      28003C9C2D00007B000000790000007800001F931B00D3E5B400FFFFE000F8DA
      A900EEAC6D000000000000000000000000000000000000000000000000009860
      6A00F4E0D400F4EAD400F4E0CA00F4E0C000F4E0C000F4D4B600604031002316
      0B001648600038485000F4CA9800EAC08F00EAC08400EAC08400EAC07B00EAC0
      7B00EAC07B00A16A6A0000000000000000000000000084401600E0C0A100A158
      1600A1581600A1581600A1581600A1581600A1581600A1581600A1581600F4E0
      CA0084401600A158160084401600000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B1450000E65C0000E35B
      0000DC580000D7560000D1540000CC500000CC631300CC6A1E00C7691E00C467
      1E00C0661E00B4520B00A7410000A7410000A7410000A7410000A7410000AA42
      0000AA42000068280000451B000000000000000000000000000000000000EEAB
      6C00EEA96900F4CA9200FEF2C600FCEFC200F7DAA600FFCB9700BAC07B000180
      0200007B0000017F0100048103000D890B000076000033A02E00FBFCE000FAD4
      A000EEAC6D00000000000000000000000000000000000000000000000000A160
      6A00F4EAE000F4EAE000F4EAD400F4E0CA00F4E0C000F4E0C000CACACA0073A1
      B60073F4FF001658F40011385000F4CA9800EAC08F00EAC08400EAC08400EAC0
      7B00EAC07B00A16A6A0000000000000000000000000084401600E0C0A100AB60
      3100AB603100AB603100AB603100AB603100AB603100AB603100AB603100F4E0
      CA0084401600A1581600A1581600844016000000000000000000000000000000
      00000000000000000000000000000000000000000000B6470000EB630400EB63
      0400E35D0300DE5A0100D9570000D1540000EFC69F00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00F6EADE00C9864B00A7410000A7410000A7410000AA42
      0000AA42000068280000451B000000000000000000000000000000000000EEAB
      6C00EEAA6B00EDA66700EFB47600F6D39E00FAE2B100FFDEB000C9CE91000683
      0500007B00000A860900B1DAAB00EBF6E900EEAC6D000281030099C17400FEB7
      8100EEAC6D00EEAC6D000000000000000000000000000000000000000000A16A
      6A00F4EAE000D4D4D400848484008484840084848400848484008484840050B6
      FF0073F4FF001658F4001658F400032A48008484840084848400848484008484
      8400EAC07B00A16A6A0000000000000000000000000084401600E0C0A100AB60
      3100AB603100AB603100AB603100AB603100AB603100AB603100AB603100F4E0
      CA0084401600A1581600A1581600A15816008440160000000000000000000000
      00000000000000000000000000000000000000000000B6470000EF6A0A00F26B
      0A00ED660700E6600400E15C0200DC580000EBAD7600F4D8BC00F3D7BC00F2D7
      BC00F0D7BC00F6E6D700FEFEFE00FEFEFE00DDB08700A7410000A7410000AA42
      0000AA42000068280000451B000000000000000000000000000000000000EEAD
      6F00EFAF7200EEAD6F00EEAA6B00EEA96900EFAF6F00F8BD8600D3CC93000281
      030000780000007900006DBD6A00FBFEFA00FFFFFF007DC579004A9A2F00FAB5
      7E00EEAA6B00EEAC6D000000000000000000000000000000000000000000AB6A
      6A00F4EAEA00FFF4EA00F4EAE000F4EAE000F4EAD400F4E0CA00F4E0C000F4E0
      C000068FCA002AE0F4001658F4001658F40011385000F4CA9800EAC08F00EAC0
      8400EAC07B00A16A6A00000000000000000000000000844016007B7B7B00E0C0
      A100D4845800D4845800D4845800D4845800D4845800D4845800D4845800F4E0
      CA007B7B7B0084401600A1581600A1581600A158160023317B00000000000000
      00000000000000000000000000000000000000000000B6470000F0751700F376
      1700F06E0F00EE660600E9620400E15B0100DC580000D7540000D1520000CC50
      0000C74E0000C04B0000CA6E2500F8EFE600FEFEFE00C1702F00A7410000AA42
      0000AA42000068280000451B000000000000000000000000000000000000F2B5
      7A00F3B78000F2B67E00F2B57B00F2B27800F0B17600F4AD7200E3BC870045A7
      410045A942004FAF4C0067B76000E7F3E200FFFFFF00FFFFFF00B1CC9500E5B1
      7400EEAA6B00EEAC6D000000000000000000000000000000000000000000AB6A
      7300FFF4F400FFFFF400FFF4EA00F4EAE000F4EAE000F4EAD400F4E0CA00F4E0
      C000F4E0C000068FCA002AE0F4001658F4001658F4000B2A4000F4CA9800EAC0
      8F00EAC08400A16A6A000000000000000000000000000000000084401600E0C0
      A100E0C0A100E0C0A100E0C0A100E0C0A100E0C0A100F4E0CA00F4E0CA00E0E0
      E000E0C0A10084401600A1581600A1581600A15816003150840023317B000000
      00000000000000000000000000000000000000000000B6470000F2832B00F484
      2B00F0751700EE670700EE670700EB600300E65C0000DE570000D9550000D453
      0000CF510000CA4F0000C54D0000D78B4B00FEFEFE00E1B28700AF440000AC43
      0000AA42000068280000451B0000000000000000000000000000EEAC6D00F6C0
      8C00F7C19000F7C08E00F6BF8B00F6BD8900F4BC8700F7BB8400E2C69300FAF6
      ED00FFFFFF00FFFFFF00EEF4E900CAE6C500C0E2BC00B1DCAD00C7D3A300F3B6
      7D00EEAB6C00EEAC6D000000000000000000000000000000000000000000B673
      7300FFF4F400D4D4D40084848400848484008484840084848400848484008484
      84008484840084848400068FCA002AE0F4001658F4001658F400113850008484
      8400EAC08F00A16A6A0000000000000000000000000000000000000000008440
      1600E08F5800E08F5800E08F5800E08F5800E08F5800E08F5800E08F5800E08F
      5800E08F5800E08F580084401600A1581600A1581600607BB600315084002331
      7B000000000000000000000000000000000000000000B6470000F3913F00F492
      3F00F27E2200EF6A0A00EF6A0A00EE640400EB5E0000FEFEFE00E1580000DC56
      0000D7540000D1520000CC500000D1702300FEFEFE00EAC6A300B6470000B446
      0000AF4400006A290000451B0000000000000000000000000000F2B27800FBCB
      A100FBCBA100FBC99E00FAC99C00FAC69900F8C59800FFC69800CBC48B0062B6
      5B00FFFFFF00FFFFFF00A3D59E000D880C0003800300007B0000429D3000FEC2
      9500F0B07300F0B073000000000000000000000000000000000000000000B673
      7300FFF4F400FFFFFF00FFFFFF00FFF4F400FFF4EA00F4EAE000F4EAE000F4EA
      D400F4E0CA00F4E0C000F4E0C000068FCA002AE0F4001658F4001658F400032A
      4800EAC08F00A16A6A0000000000000000000000000000000000000000000000
      000084401600E08F5800E08F5800E08F5800E08F5800E08F5800E08F5800E08F
      5800E08F5800E08F5800E08F580084401600A1581600607BB600607BB6003150
      840023317B0000000000000000000000000000000000B6470000F4994C00F79C
      4E00F2832B00F06D0E00F06C0D00EE660600FEFEFE00FEFEFE00EB5E0100E359
      0000DE570000D9550000D1520000E2985700FEFEFE00E6B18000BD4A0000BB49
      0000B4460000732D00004D1E0000000000000000000000000000F4C08B00FED8
      B200FCD4AD00FCD3AB00FCD0A900FCD0A900FCD0A900FFCEA600F7D5B2002192
      1A0066BA6300FFFFFF00FFFFFF0083C67E00007B0000007B0000379C2C00FECC
      A400F4B57D00F4B57D000000000000000000000000000000000000000000B673
      7300FFF4F400FFFFFF00FFFFFF00FFFFFF00FFF4F400FFF4EA00F4EAE000F4EA
      E000F4EAD400F4E0CA00F4E0C000F4E0C000068FCA002AE0F4001658F4001C23
      AB001C1C1C00A16A6A0000000000000000000000000000000000000000000000
      00000000000084401600E08F5800E08F5800E08F5800E08F5800E08F5800E08F
      5800E08F5800E08F5800E08F5800E08F58008440160031508400607BB600607B
      B6003150840023317B00000000000000000000000000B6470000F49F5500F7A1
      5800F2883100F06F1100F06E1000FEFEFE00FEFEFE00FEFEFE00EF660600EB5C
      0000E65A0000DE570000E5883A00FBF4EE00FEFBFA00D46F2000C24C0000C24C
      0000BB490000792F000057220000000000000000000000000000FAD1A300FFE2
      BC00FEDEB700FEDDB600FEDCB500FEDAB400FED9B200FED7AF00FFDEC2008BBF
      72000079000038A1340062B75E001F951E00017E0100007B00002F992700FCD5
      B400F8BD8A00F8BD8A00EEAC6D0000000000000000000000000000000000C07B
      7300FFF4F400D4D4D40084848400848484008484840084848400848484008484
      84008484840084848400848484008484840084848400068FCA002A8FD400736A
      60006A6A60001C1C1C0000000000000000000000000000000000000000000000
      0000000000000000000084401600E08F5800E08F5800E08F5800E08F5800E08F
      5800E08F5800E08F5800E08F5800E08F5800E08F580023317B0031508400607B
      B600607BB6003150840023317B000000000000000000B6470000F4A35B00F7A6
      5E00F38C3700F6B57800FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00EAA46600D1520000CC500000CA4F
      0000C24C000082330000622600000000000000000000EFB27400FEE7BF00FEED
      C500FEEAC200FEE9C000FEE7BF00FEE5BD00FEE5BD00FEE3BB00FFE2BC00FBE9
      CB0039A031000073000000760000007B0000007B00000A87090026972100F8DD
      BC00FCC99A00FCC99A00EEAC6D0000000000000000000000000000000000C07B
      7300FFF4F400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF4F400FFF4
      EA00F4EAE000F4EAE000F4EAD400F4E0CA00F4E0C000F4E0C0006A504000FFFF
      FF00F4EAE0005848380011113100000000000000000000000000000000000000
      000000000000000000000000000023317B0098C0E00098C0E00098C0E00098C0
      E00098C0E00098C0E00098C0E00098C0E00098C0E00098C0E00023317B003150
      8400607BB600607BB60023317B000000000000000000B6470000F6A55F00F7AA
      6600F4914000F7B77D00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFBFA00FAD8B800EB893700DE570000D9550000D4530000D152
      0000CA4F00008B3600006A2900000000000000000000F3BF8400FFF7CF00FFF7
      CF00FFF6CC00FFF2CA00FFF2C900FFF0C700FFEFC700FFEEC600FEEDC400FFED
      CA00E9E9C20052AD4800138B1100098608003FA43600CADEB1007EBF6C00EEE2
      BA00FFD7AB00FFD7AB00EEAC6D0000000000000000000000000000000000CA84
      7B00FFF4F400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF4
      F400FFF4EA00F4EAE000F4EAD400F4EAD400F4EAD400E0D4C000C0AB9800847B
      7300E0C0A100164860001658F4001C23AB000000000000000000000000000000
      00000000000000000000000000000000000023317B0098C0E00098C0E00098C0
      E00098C0E00098C0E00098C0E00098C0E00098C0E00098C0E00098C0E0002331
      7B0031508400607BB60023317B000000000000000000B6470000F6A96400F7B0
      6F00F4994B00F07B2000F2842D00FEFEFE00FEFEFE00FEFEFE00F0721300EE67
      0700EE650500EE620300EE5F0100EB5E0000E65C0000E1580000DC560000D955
      0000D1520000953A0000752D00000000000000000000F6D09A00FFFFD900FFFB
      D300FFFBD300FFFBD300FFFBD300FFF8D100FFF8D000FFF8D000FFF7CF00FFF6
      CC00FFF8D100FFF8DA00F0F0CC00EAEEC600FFF3D400FFF2D000FFF2D000FCED
      C700FCE6BB00FCE6BB00EEAC6D0000000000000000000000000000000000CA84
      7B00FFF4F400D4D4D40084848400848484008484840084848400848484008484
      8400848484008484840084848400EAD4CA00A16A5800986A5800986058009860
      5800315084001684EA001658F4001C23AB000000000000000000000000000000
      0000000000000000000000000000000000000000000023317B0098C0E00098C0
      E00098C0E00098C0E00098C0E00098C0E00098C0E00098C0E00098C0E00098C0
      E00023317B003150840023317B000000000000000000B6470000F6AA6600F8B5
      7900F6A45D00F27E2200F2842D00F2802600FEFEFE00FEFEFE00F0731400F06C
      0D00F06C0D00EE670700EE640400EE600100EE5F0000E95B0000E3590000DE57
      0000D9550000A03F00007E3100000000000000000000FAE2B100FFFFD900FFFB
      D300FFFBD300FFFBD300FFFBD300FFFBD300FFFBD300FFFBD300FFFBD300FFFC
      D400FFFED500FFFFD900FFFFDC00FFFFD900FFFFD900FFFCD400FFF8D000FFF7
      CF00FEF3C900FEF3C900F2B77A0000000000000000000000000000000000D48F
      7B00FFF4F400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF400FFF4F400FFF4EA00E0C0B600A16A5800E0A16A00E0985000EA8F
      3800EA8F23000006E0000006E000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000023317B0098C0
      E00098C0E00098C0E00098C0E00098C0E00098C0E00098C0E00098C0E00098C0
      E00098C0E00023317B0023317B000000000000000000B6470000F6AA6600F8B8
      7F00F7B57900F3913F00F38C3700F2872F00F2802600FEFEFE00F0761800F072
      1300F0761800F06E0F00EE670700EE620300EE5F0100EE5F0000EB5C0000E95B
      0000E1580000A5410000873500000000000000000000FBEABD00FFFFD900FFFB
      D300FFFBD300FFFBD300FFFBD300FFFCD400FFFCD400FFFED500FFFFD900FFFF
      D900FCF2C600F7D49900F4C48100F4C48100F6D09500FBE6B600FFF6CC00FFFF
      D800FFFED500FFFED500F3C0860000000000000000000000000000000000D48F
      7B00FFF4F400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFF400E0C0B600A16A5800EAB67300F4AB5000FFA1
      3800A16A6A000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002331
      7B0098C0E00098C0E00098C0E00098C0E00098C0E00098C0E00098C0E00098C0
      E00098C0E00098C0E00023317B000000000000000000B6470000F4A35B00F8B6
      7A00F7BD8800F7B88000F7B47700F6AF6F00F6A76300F49F5500F4964600F38C
      3700F2822900F0761800F06B0C00EE650500EE600100EE5F0000EE5D0000F05E
      0000E95B0000B1450000923900000000000000000000F4CA9200FEFBD300FFFF
      D900FFFFD800FFFED500FFFCD400FFFBD300FEF7CE00FBEBBB00F8D9A100F3C0
      7E00EEA75C00EB9D4E00EB9D4E00EB9D4E00EBA15900EFAF6F00F8C18800FCD9
      A700FFF2C900FFF2C900F3C9910000000000000000000000000000000000D48F
      7B00FFF4F400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E0CAC000A16A5800EAB67300F4AB5000A16A
      6A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003150840023317B0023317B0023317B0023317B0023317B0023317B002331
      7B0023317B0031508400000000000000000000000000B8480000F6984900F8AB
      6700F8B67A00F8BB8300F8BB8300F8B87F00F8B27500F7AC6900F7A35900F697
      4800F4893300F37D1F00F36F1000F0670600F0630200F0600000F05E0000F35F
      0000F35F0000BB4900009C3D0000000000000000000000000000F0BA7F00F6CE
      9700F4CB9500F4C68F00F3C28A00F2BD8300EFB27400EEA96500EDA45C00EDA0
      5800EDA15500EDA15400EDA15400EDA35900EEAA6900F3B57900F8BD8600FABC
      8400FBC48C00F7BF8600F8BD860000000000000000000000000000000000D48F
      7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E0CACA00A16A5800EAB67300A16A6A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B8480000DE570000F697
      4800F4A15900F6AA6600F6AB6900F6AA6700F6A56000F4A05800F4994B00F38F
      3C00F2832C00F0781B00F06C0D00EE660600EE620200EE5F0000EE5D0000F05E
      0000E3590000AC4300009C3D0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EDA35500EEA76200F0B07300F8BC8300FAC08900FAC0
      8800FABF8700FABF8700F8BD860000000000000000000000000000000000D48F
      7300E0C0AB00EACAAB00EACAAB00EAC0B600E0C0AB00E0C0AB00E0C0AB00E0C0
      AB00D4B6AB00D4B6AB00D4B6AB00C0988F00A16A5800A16A6A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B6470000B647
      0000B6470000B6470000B6470000B6470000B6470000B6470000B6470000B647
      0000B6470000B6470000B6470000B6470000B6470000B6490000B6470000B647
      0000A7410000A741000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F4B67A00FAC08800FAC08800FAC0
      8800FAC08800FAC08800FAC08900000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000FAC08800FAC0
      8800FAC08800FAC0880000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00FEFEFE00FDFD
      FE00FEFEFE00FEFEFE00FEFEFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000995951008838
      38008234350084353500812E2F008C585900A4A5A500A5A3A300A6A4A400A7A5
      A400A7A4A400A6A4A400A5A3A300A4A3A300A5A5A5008E565600802D2D008131
      3200813233008234350082343500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FAFAFA00E0E0D900CACABC00CACABD00CACABD00CBCB
      BD00CACABD00CACABD00CACABC00CECEBE00E9E9E300FDFDFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A0675B00B2535000BA49
      4900BA494900BC4A4A00A43D3D00824E4F009C9D9D00BFBFBC00DDDAD800EEEA
      E700F7F2EE00F7F2ED00E9E5E300DAD9D700D4D5D500A35B5B007D181800801F
      1F0087232300B0414100AF454600823334000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FCFCFB00D3D3CB00686891003F3F9B0044449900454599004646
      98004646970046469600464695003D3D920070709100E4E4DA00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000035C0700035C
      0700035C0700035C070000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A0675B00B2535000BF4A
      4A00BF4B4B00C04C4C00A73E3F00835151008A747400A1676600C19A9700D5BD
      BB00F7F2ED00FFFBF700FAF4F200EAE7E500E1E2E100A65B5C007B171600801E
      1E0087232300B1414100B1474700823334000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDFDFD00D4D4C900656590002B2BCD002C2CE9002626E9002323E7002525
      E8002626E9002525E9002B2BEC003131ED001C1CB6006B6B8900E6E6DB000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000025C0400FFFFFF00058E
      0D00058F0D00058F0D00035C0700000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A0675B00B2535000BD4A
      4A00BC4B4B00C04C4C00A53E3E00875656008A63640087262500A0555300BA89
      8600E6E1DD00FAF4F200FEF8F400F7F2EE00EBEBEA00A95E5D007B171700801E
      1E0087232300B1414100B1474700823334000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FD00D5D5CC00636391002C2CD0003535E9002B2BE1003636C1004646BD003D3D
      C2003D3DC3004242BF003333CA003232E8003D3DF0001C1CB7006A6A8900E7E7
      DD00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000025C0400FFFFFF00058E
      0D00058F0D00058F0D00035C0700000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A0675B00B2535000BD4A
      4A00BC4B4B00C04C4C00A53E3E008B595900916A6A007F1B1B0088282800A15A
      5800D4CCCB00EEEAE700FAF4F200FEFAF600F8F8F400AC6262007B161700801E
      1E0087232300B1414100B1474700823334000000000084401600844016008440
      1600844016008440160084401600844016008440160084401600844016008440
      1600844016008440160000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFDFA00D5D5
      C900636393002B2BD3003535ED002C2CDF006060B100C2C2C100D2D2D000C6C6
      CA00C6C6CA00CECECC00B8B8BC005050C0003232EB003D3DF5001B1BB9006A6A
      8700E7E7DA000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000025C0400FFFFFF00058E
      0D00058F0D00058F0D00035C0700000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A0675B00B2535000BD4A
      4A00BC4B4B00C04C4C00A53E3E008F5B5B00986F6E00801D1D007F1B1B00892F
      2F00BAB1B000DDDAD800EFEBE700FCF7F300FFFFFC00B16564007A161600801E
      1E0087232300B1414100B1474700823334000000000084401600E0C0A100A158
      1600A1581600A1581600A1581600A1581600A1581600A1581600A1581600F4E0
      CA0084401600A158160084401600000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFC00D6D6CB006363
      95002C2CD4003636EC002E2EE8004C4CBF00D9D9CD00EBEBEE00E0E0EA00E2E2
      E900E2E2E900E1E1EA00EEEEEB00C4C4C7003B3BD3003939F1004040F6001E1E
      BA006A6A8600E7E7DB0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000025C0500FFFFFF00058E
      0D00058F0D00058F0D00035C0700000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A0675B00B2535000BD4A
      4A00BC4B4B00C04C4C00A43D3D00965F5E00A17372007F1818007F1818007F1D
      1D0098909000C1C1C000DEDAD700F3EFEB00FFFFFC00B46866007A161600801E
      1E0087232300B1414100B1474700823334000000000084401600E0C0A100AB60
      3100AB603100AB603100AB603100AB603100AB603100AB603100AB603100F4E0
      CA0084401600A1581600A1581600844016000000000000000000000000000000
      00000000000000000000000000000000000000000000E3E3DF0066669B002B2B
      D4003737EB003939E7002C2CE2009292C100EEEEE900DBDBE900DBDBE800DCDC
      E800DCDCE800DBDBE800DDDDEA00ECECE5008282C5003131EB004141ED004141
      F8001F1FB80070708F00F2F2ED00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000035D0500FFFFFF000690
      0F00058F0D00058F0D00035C0700000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A0675B00B2535000BD4A
      4A00BC4B4B00C04C4C00A13C3C0099626000B5959200904A4A008A4545008649
      490087888800A0A6A500C6CAC700E6EAE600FFFFFF00B2686700771414007D1C
      1C0084212100B0414100B1474700823334000000000084401600E0C0A100AB60
      3100AB603100AB603100AB603100AB603100AB603100AB603100AB603100F4E0
      CA0084401600A1581600A1581600A15816008440160000000000000000000000
      00000000000000000000000000000000000000000000ADADC4002626C7003636
      F0003B3BE6003A3AEB003535E100B2B2CE00EFEFEF00DEDEEB00DFDFEB00DFDF
      EC00DFDFEC00DFDFEB00DEDEEB00EAEAF100CBCBD4004343DF003E3EF2004343
      ED003C3CF7003333C100CFCFDB00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000035D0500FFFFFF000A96
      16000792110007921100035C0700000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A0675B00B2535000BD4A
      4A00BC4B4B00C04C4C00AB414100A6565700C6918F00BA898900AD818100A57B
      7B009D7474009D747400B2888700CC9E9D00DEB1AF00B55C5B0091282800952D
      2D0099303000B6454500B14647008233340000000000844016007B7B7B00E0C0
      A100D4845800D4845800D4845800D4845800D4845800D4845800D4845800F4E0
      CA007B7B7B0084401600A1581600A1581600A158160023317B00000000000000
      00000000000000000000000000000000000000000000A7A7C9002B2BD3003B3B
      ED003E3EEB003D3DF0003A3AE400B4B4CF00F2F2F300E2E2EF00E4E4F000E4E4
      F100E4E4F100E3E3F000E3E3EF00E7E7F500EBEBE5006868D6003D3DF8004646
      F1004141F5004747E300CCCCE20000000000000000000000000000000000035C
      0700035C0700035C0700035C0700035C0700035C0700035D0500FFFFFF000E9D
      1D000B9817000B981700035D0500035C0700035C0700035C0700035C0700035C
      0700035C070000000000000000000000000000000000A0675B00B2535000BF4B
      4B00BF4B4B00BF4B4B00BD4A4A00BD484800BC464600BC474700BC474700BD46
      4700BD464700BC464600BB444400BB444400BA444400BC474700BD4A4A00BD48
      4800BF4B4B00C04C4C00AF45460082333400000000000000000084401600E0C0
      A100E0C0A100E0C0A100E0C0A100E0C0A100E0C0A100F4E0CA00F4E0CA00E0E0
      E000E0C0A10084401600A1581600A1581600A15816003150840023317B000000
      00000000000000000000000000000000000000000000A9A9CA002E2ED3003E3E
      F2004242F0004343F6003F3FE900B6B6D100F8F8FA00E9E9F600E8E8F500E9E9
      F500E9E9F500E9E9F500EAEAF500EBEBF200F5F5F4009292D5003D3DFB004B4B
      F6004343F9004747DE00CECEE100000000000000000000000000035C0700FFFF
      FF0038D3640033CC5A002DC7520029C14B0025BD440020B63B0016A72B0013A1
      24000F9D1E000C9718000D9C1B000A97160007921100058F0D00058F0D00058F
      0D00058F0D00035C0700000000000000000000000000A0675B00B2535000B645
      4500B0424100B4484600B8515000BC575700BF5C5B00BF5C5B00BF5C5B00BF5C
      5B00BF5C5B00BF5C5B00BF5C5B00BF5C5B00BF5C5B00BF5C5B00BF5C5B00BF5E
      5D00BF545400BF4B4B00AF454600823334000000000000000000000000008440
      1600E08F5800E08F5800E08F5800E08F5800E08F5800E08F5800E08F5800E08F
      5800E08F5800E08F580084401600A1581600A1581600607BB600315084002331
      7B000000000000000000000000000000000000000000A9A9C9003131D6004242
      F7004747F4004848FC004444EE00BBBBD700FCFCFC00EAEAF700EFEFFC00F0F0
      FC00EFEFFC00F2F2FE00E1E1F100A9A9D200FFFFFE00C6C6DA004444E6004E4E
      FE004848FE004A4AE000CDCDE000000000000000000000000000035C0700FFFF
      FF0038D3640033CC5A002DC7520029C14B0025BD440020B63B001CAC330018A7
      2C0014A32600109E20000D9C1B000A97160007921100058F0D00058F0D00058F
      0D00058F0D00035C0700000000000000000000000000A0685B00B45451009C35
      31008F302C00A1514D00B4767300C2969300CBAAA900CCADAC00CCACAB00CCAC
      AB00CCACAB00CCACAB00CCACAB00CCACAB00CCACAB00CCACAB00CCACAB00CCB2
      B100C4777700BD464600AF454600823334000000000000000000000000000000
      000084401600E08F5800E08F5800E08F5800E08F5800E08F5800E08F5800E08F
      5800E08F5800E08F5800E08F580084401600A1581600607BB600607BB6003150
      840023317B0000000000000000000000000000000000A9A9C9003434DA004848
      FD004D4DFB004E4EFF004949EF00C5C5DF00E0E0E600C9C9D80000000000F7F7
      FF00F7F7FF00FBFBFF00E7E7F2006868DC00D0D0F100FFFFF2008E8ECF004646
      FD004D4DFF004B4BE200CDCDDF00000000000000000000000000035C0700FFFF
      FF003CD76B0037CF620033CA5A002DC552002AC04B0025BA430021B53C001CAF
      350018AA2F0015A4280011A022000F9C1D000C97180008921200068E0E00058C
      0D00058E0D00035C0700000000000000000000000000A0685B00B4535000972D
      2900C0878200F8F2EF00F3E7E600F4EAE900F6EDEB00F6EDEB00F6EDEB00F6ED
      EB00F6EDEB00F6EDEB00F6EDEB00F6EDEB00F6EDEB00F6EDEB00F8EFEE00E9DD
      DC00BF757400B23F3F00AF454600823435000000000000000000000000000000
      00000000000084401600E08F5800E08F5800E08F5800E08F5800E08F5800E08F
      5800E08F5800E08F5800E08F5800E08F58008440160031508400607BB600607B
      B6003150840023317B00000000000000000000000000A9A9CB003737DE004D4D
      FF005252FF005454FF005050F000C9C9E100DADAE200CDCDD900E5E5EC00D3D3
      DE00E9E9EF00CFCFDB00F7F7F4006B6BEB006464F700B6B6F4009595F3004F4F
      FC005151FF004C4CE300CCCCDF00000000000000000000000000035C0700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0022B5
      3E001EB037001AAC3100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00035C0700000000000000000000000000A0685B00B4535000972D
      2900C5908C00FFFFFF00FAF2F000FAF2F000FAF2F000FAF2F000FAF2F000FAF2
      F000FAF2F000FAF2F000FAF2F000FAF2F000FAF2F000FAF2F000FCF4F300EAE0
      DE00BD747300B03D3D00AF454600823435000000000000000000000000000000
      0000000000000000000084401600E08F5800E08F5800E08F5800E08F5800E08F
      5800E08F5800E08F5800E08F5800E08F5800E08F580023317B0031508400607B
      B600607BB6003150840023317B000000000000000000A9A9CA003A3AE1005353
      FF005959FF005C5CFF005858F000CBCBE300DADADD00D1D1D800D5D5E000C2C2
      CF00E0E0EA00BABACF00FBFBF4007B7BE9005F5FFF005757FE005A5AFF005F5F
      FF005656FF004F4FE200CBCBDE0000000000000000000000000000000000035C
      0700035C0700035C0700035C0700035C0700035C0700035D0500FFFFFF0028BD
      480024BA410024BA4100035D0500035C0700035C0700035C0700035C0700035C
      0700035C070000000000000000000000000000000000A0685B00B4535000972D
      2900C48E8A00FFFFFC00F6EEED00F6EDEB00F6EEED00F6EEED00F6EEED00F6EE
      ED00F6EEED00F6EEED00F6EEED00F6EEED00F6EEED00F6EDEB00FAF2F000EADE
      DD00BD747300B03D3D00AF454600823435000000000000000000000000000000
      000000000000000000000000000023317B0098C0E00098C0E00098C0E00098C0
      E00098C0E00098C0E00098C0E00098C0E00098C0E00098C0E00023317B003150
      8400607BB600607BB60023317B000000000000000000A6A6CC003B3BE3005A5A
      FF005F5FFF006363FF005F5FF000D2D2E200E3E3DD00D1D1D600DADAE700C8C8
      D700E2E2EB00C1C1D400FBFBF4008181E9007070FF006E6EFF006868FF006565
      FF005D5DFF004F4FE200CACADE00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000035C0700FFFFFF002DC6
      53002AC24D002AC24D00035C0700000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A0685B00B4535000972D
      2900C48E8A00FFFFFE00E2DCDA00BDBBBB00BFBDBD00BFBDBD00BFBDBD00BFBD
      BD00BFBDBD00BFBDBD00BFBDBD00BFBDBD00BFBDBD00BBBAB800DED9D900EEE1
      E000BD747300B03D3D00AF454600823435000000000000000000000000000000
      00000000000000000000000000000000000023317B0098C0E00098C0E00098C0
      E00098C0E00098C0E00098C0E00098C0E00098C0E00098C0E00098C0E0002331
      7B0031508400607BB60023317B000000000000000000C2C2DF003D3DDD005D5D
      FF006666FF006B6BFF006A6AF900B4B4ED00C0C0E400D2D2E100DADAE600C7C7
      D600E2E2EA00C0C0D200F9F9F5008787E9007878FF007777FF007171FF006B6B
      FF005F5FFF005A5AE600DDDDEA00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000035C0700FFFFFF0034CC
      5C0030C9560030C95600035C0700000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A0685B00B4535000972D
      2900C48E8A00FFFFFE00F2E9E900E7E1E000E7E1E000E7E1E000E7E1E000E7E1
      E000E7E1E000E7E1E000E7E1E000E7E1E000E7E1E000E6E0DE00F2EBEB00EDE0
      DE00BD747300B03D3D00AF454600823435000000000000000000000000000000
      0000000000000000000000000000000000000000000023317B0098C0E00098C0
      E00098C0E00098C0E00098C0E00098C0E00098C0E00098C0E00098C0E00098C0
      E00023317B003150840023317B000000000000000000FCFCFD009F9FE0004646
      E6006E6EFF007676FF007A7AFF007E7EFE007777EC00D9D9E300DCDCE400C8C8
      D400E2E2E900C2C2D100FBFBF5008F8FE7008282FF007F7FFF007A7AFF006F6F
      FF005D5DEF00BDBDEC00FEFEFE00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000035C0700FFFFFF003AD3
      670036D0600036D06000035C0700000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A0685B00B4535000972D
      2900C48E8A00FFFFFE00E6E0DE00C7C4C400C9C5C500C9C5C500C9C5C500C9C5
      C500C9C5C500C9C5C500C9C5C500C9C5C500C9C5C500C5C2C200E2DDDD00EDE1
      E000BD747300B03D3D00AF454600823435000000000000000000000000000000
      000000000000000000000000000000000000000000000000000023317B0098C0
      E00098C0E00098C0E00098C0E00098C0E00098C0E00098C0E00098C0E00098C0
      E00098C0E00023317B0023317B00000000000000000000000000000000009C9C
      DD004F4FE7008181FF008585FF008989FF008383F200DBDBE200E0E0E600CCCC
      DA00E2E2EC00C3C3D200FFFFF4009797EC008A8AFF008989FF008080FF006161
      F000BBBBE9000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000035C0700FFFFFF003FD9
      6F003DD86B0043E17700035C0700000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A0685B00B4535000972D
      2900C48E8A00FFFFFE00EEE6E500DDD7D500DDD8D700DDD8D700DDD8D700DDD8
      D700DDD8D700DDD8D700DDD8D700DDD8D700DDD8D700DCD5D500EEE7E600EDE0
      DE00BD747300B03D3D00AF454600823435000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002331
      7B0098C0E00098C0E00098C0E00098C0E00098C0E00098C0E00098C0E00098C0
      E00098C0E00098C0E00023317B0000000000000000000000000000000000FFFF
      FE009999DE005959E8009191FF009393FF009595FE00AFAFF800ACACED00D3D3
      E200F2F2F300AAAAE500B6B6F9009B9BFE009696FF008F8FFF006868EF00B8B8
      E800FFFFFE000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000035C0700FFFFFF0040DA
      700041DD730043E17700035C0700000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A0685B00B4535000972D
      2900C48E8A00FFFFFE00EEE6E500DDD7D500DDD8D700DDD8D700DDD8D700DDD8
      D700DDD8D700DDD8D700DDD8D700DDD8D700DDD8D700DCD5D500EEE7E600EDE0
      DE00BD747300B03D3D00AF454600823435000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003150840023317B0023317B0023317B0023317B0023317B0023317B002331
      7B0023317B003150840000000000000000000000000000000000000000000000
      0000FFFFFE009898DF006161E700A2A2FF00AAAAFF00A8A8FF00A6A6FF00C5C5
      F100D7D7F500AEAEFE00A5A5FF00ABABFF00A0A0FF006C6CEE00B5B5E700FFFF
      FE00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000035C0700FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00035C0700000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A0685B00B4535000972D
      2900C48E8A00FFFFFE00E5DDDD00C5C1C100C6C4C200C6C4C200C6C4C200C6C4
      C200C6C4C200C6C4C200C6C4C200C6C4C200C6C4C200C2C0C000E2DCDA00EEE1
      E000BD747300B03D3D00AF454600823435000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009898E1006868E8009898FC009B9BFC009F9FFC009C9C
      FD009999FC009F9FFC009D9DFC009797FC007272ED00B5B5E700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000035C0700035C
      0700035C0700035C070000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A0685B00B4535000972D
      2900C58F8B00FFFFFF00FBF2F000FCF3F200FCF3F200FCF3F200FCF3F200FCF3
      F200FCF3F200FCF3F200FCF3F200FCF3F200FCF3F200FCF3F200FFF6F400EDE0
      DE00BD747300B23F3F00B0464700823435000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000AFAFEA008C8CEA009393EA009494EA009595
      EB009595EA009494EA009393EB008C8CEA00C0C0EC0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A0685B00AD545000952D
      2900BC878300EFEFEE00EAE2E100EAE2E100EAE2E100EAE2E100EAE2E100EAE2
      E100EAE2E100EAE2E100EAE2E100EAE2E100EAE2E100EAE2E100EBE6E500E1D7
      D500B8727000A5393900A5414200823435000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FAFAFA00FAFAFA00FAFAFB00FAFA
      FA00FAFAFA00FAFAFA00F9F9FA00FBFBFA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000985851008A2D
      2800A36F6D00B6BCBC00B4B2B200B4B2B200B4B2B200B4B2B200B4B2B200B4B2
      B200B4B2B200B4B2B200B4B2B200B4B2B200B4B2B200B4B2B200B2B2B200C1BA
      B800A56A6A007E2C2D008233340000000000424D3E000000000000003E000000
      2800000060000000600000000100010000000000800400000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000FC0000FC0000FC0000F
      C0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC000
      0FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0
      000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000F
      C0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC000
      0FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0
      000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000F
      C0000FC0000FC0000FC0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00003FFFFFFFFFFFFFFFFFFE00003FF
      FFFFC00003FC01FFE00003FFFFFF800001F8001FE00003FFFFFF800001F0000F
      E00003FFFFFF800001F00007E000038003FF800001F00007E000038001FF8000
      01E00007E000038000FF800001E00003E0000380007F800001E00003E0000380
      003F800001E00003E00003C0001F800001C00003E00003E0000F800001C00003
      E00003F00007800001C00003E00003F80003800001C00001E00003FC00018000
      01800001E00001FE0001800001800001E00000FF0001800001800001E00000FF
      8001800001800001E00001FFC001800001800001E00007FFE001800001800001
      E0000FFFF003800001C00001E0001FFFFFFF800001FFFC01E0003FFFFFFFC000
      03FFFF01FFFFFFFFFFFFFFFFFFFFFFC3FFFFFFFF81FFFFFFFFC00001FFFFFFFC
      003FFFFFFF800000FFFFFFF8003FFFC3FF800000FFFFFFF0001FFF81FF800000
      FFFFFFE0000FFF81FF8000008003FFC00007FF81FF8000008001FF800003FF81
      FF8000008000FF800001FF81FF80000080007F800001FF81FF80000080003F80
      0001E00007800000C0001F800001C00003800000E0000F800001C00003800000
      F00007802001C00003800000F80003800001C00003800000FC0001800001E000
      07800000FE0001800001FF81FF800000FF0001800001FF81FF800000FF800180
      0001FF81FF800000FFC001E00007FF81FF800000FFE001E00007FF81FF800000
      FFF003F0000FFF81FF800000FFFFFFFC003FFFC3FF800000FFFFFFFE007FFFFF
      FF800000FFFFFFFF00FFFFFFFFC0000100000000000000000000000000000000
      000000000000}
  end
  object qrUltimaCompra: TwwQuery
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'SELECT TOP 1 '
      #9#9'A.Preco_Unit  / CASE WHEN A.Conversao IS NULL THEN 1 '
      #9#9#9#9#9#9'  WHEN A.Conversao = 0 THEN 1 '
      #9#9#9#9#9#9'  ELSE A.Conversao '
      #9#9#9#9#9' END AS PRECO_UNIT'
      #9'FROM Ordem_Compra O'
      #9'INNER JOIN ORDEM_COMPRAITEM A ON O.ORD_ID = A.Ord_ID'
      #9'WHERE A.MAT_ID = :MAT_ID'
      #9'ORDER BY O.DT_CADASTRO DESC')
    ValidateWithMask = True
    Left = 1096
    Top = 344
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'MAT_ID'
        ParamType = ptUnknown
      end>
    object qrUltimaCompraPRECO_UNIT: TFloatField
      FieldName = 'PRECO_UNIT'
    end
  end
  object qrAuxiliar: TwwQuery
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    ValidateWithMask = True
    Left = 1024
    Top = 280
  end
  object qrCompasUltimaCompra: TwwQuery
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'SELECT TOP 1'
      #9'A.DT_CADASTRO,'
      #9'B.Preco_Unit '
      'FROM Ordem_Compra A INNER JOIN Ordem_CompraItem B'
      'ON A.ORD_ID = B.Ord_ID'
      'WHERE Mat_ID = 1'
      'AND Marca_ID = 1'
      'ORDER BY A.ORD_ID DESC')
    ValidateWithMask = True
    Left = 1088
    Top = 536
    object qrCompasUltimaCompraPreco_Unit: TFloatField
      FieldName = 'Preco_Unit'
      DisplayFormat = '###,###,##0.00'
    end
    object qrCompasUltimaCompraDT_CADASTRO: TDateTimeField
      FieldName = 'DT_CADASTRO'
    end
  end
  object dsComprasUltimaCompra: TDataSource
    DataSet = qrCompasUltimaCompra
    Left = 1164
    Top = 230
  end
  object ADOQuery1: TADOQuery
    Parameters = <>
    Left = 1156
    Top = 90
  end
  object qrMaterialArea: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    BeforePost = qrMaterialAreaBeforePost
    AfterPost = qrMaterialAreaAfterPost
    Parameters = <
      item
        Name = 'MAT_ID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT MA.*, L.Descricao AS NmLocal'
      'FROM MATERIAL_AREA MA'
      'INNER JOIN Local L ON MA.Local_ID = L.Local_ID'
      'WHERE MAT_ID = :MAT_ID')
    Left = 932
    Top = 474
    object qrMaterialAreaNmLocal: TStringField
      DisplayLabel = 'Local'
      DisplayWidth = 50
      FieldName = 'NmLocal'
      ProviderFlags = []
      Size = 50
    end
    object qrMaterialAreaEstoqueMinimo: TFloatField
      DisplayLabel = 'Estoque Mínimo'
      DisplayWidth = 10
      FieldName = 'EstoqueMinimo'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object qrMaterialAreaEstoqueMaximo: TFloatField
      DisplayLabel = 'Estoque Máximo'
      DisplayWidth = 10
      FieldName = 'EstoqueMaximo'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object qrMaterialAreaIdMaterialArea: TAutoIncField
      DisplayWidth = 10
      FieldName = 'IdMaterialArea'
      ReadOnly = True
      Visible = False
    end
    object qrMaterialAreaMAT_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'MAT_ID'
      ProviderFlags = [pfInUpdate]
      Visible = False
    end
    object qrMaterialAreaLocal_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'Local_ID'
      ProviderFlags = [pfInUpdate]
      Required = True
      Visible = False
    end
  end
  object dsMaterialArea: TDataSource
    DataSet = qrMaterialArea
    Left = 1204
    Top = 354
  end
  object qrLocal: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    SQL.Strings = (
      
        'SELECT * FROM Local WHERE CONTROLA_ESTOQUE = '#39'S'#39' ORDER BY Descri' +
        'cao')
    Left = 1004
    Top = 466
    object qrLocalDescricao: TStringField
      DisplayWidth = 50
      FieldName = 'Descricao'
      Size = 50
    end
    object qrLocalLocal_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'Local_ID'
      ReadOnly = True
      Visible = False
    end
    object qrLocalDisponivelSN: TStringField
      DisplayWidth = 1
      FieldName = 'DisponivelSN'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object qrLocalCONSUMO: TStringField
      DisplayWidth = 1
      FieldName = 'CONSUMO'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object qrLocalCONTROLA_ESTOQUE: TStringField
      DisplayWidth = 1
      FieldName = 'CONTROLA_ESTOQUE'
      Visible = False
      FixedChar = True
      Size = 1
    end
  end
  object qrHist: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'MAT_ID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT CM.*, N.NFIS, N.For_Codi, N.Rec_ID'
      'FROM MATERIAIS_CustoMedioHistorico CM'
      'INNER JOIN Rec_Item I ON CM.ID = I.Rec_Item_ID'
      'INNER JOIN Rec_NF N ON I.Rec_ID = N.Rec_ID'
      'WHERE CM.MAT_ID = :MAT_ID'
      'ORDER BY CM.ID DESC')
    Left = 788
    Top = 490
    object qrHistDATA: TDateTimeField
      DisplayWidth = 10
      FieldName = 'DATA'
      DisplayFormat = 'dd/MM/yyyy'
    end
    object qrHistNFIS: TIntegerField
      DisplayLabel = 'NF'
      DisplayWidth = 8
      FieldName = 'NFIS'
    end
    object qrHistFor_Codi: TStringField
      DisplayLabel = 'Fornecedor'
      DisplayWidth = 15
      FieldName = 'For_Codi'
      FixedChar = True
      Size = 15
    end
    object qrHistQuantidadeNF: TIntegerField
      DisplayLabel = 'Qtde NF'
      DisplayWidth = 10
      FieldName = 'QuantidadeNF'
    end
    object qrHistConversao: TIntegerField
      DisplayLabel = 'Conv.'
      DisplayWidth = 10
      FieldName = 'Conversao'
    end
    object qrHistQuantidadeEntrada: TIntegerField
      DisplayLabel = 'Qtde Conv.'
      DisplayWidth = 10
      FieldName = 'QuantidadeEntrada'
    end
    object qrHistEstoqueAnterior: TIntegerField
      DisplayLabel = 'Estoque'
      DisplayWidth = 10
      FieldName = 'EstoqueAnterior'
    end
    object qrHistQtdeEstoqueTotal: TIntegerField
      DisplayLabel = 'Qtde Total'
      DisplayWidth = 10
      FieldName = 'QtdeEstoqueTotal'
    end
    object qrHistValorEntrada: TFloatField
      DisplayLabel = 'Vlr. Ent.'
      DisplayWidth = 10
      FieldName = 'ValorEntrada'
      DisplayFormat = '###,###,##0.00'
    end
    object qrHistValorEstoqueTotal: TFloatField
      DisplayLabel = 'Vlr. Total'
      DisplayWidth = 10
      FieldName = 'ValorEstoqueTotal'
      DisplayFormat = '###,###,##0.00'
    end
    object qrHistNovoCustoMedio: TFloatField
      DisplayLabel = 'Custo Médio'
      DisplayWidth = 10
      FieldName = 'NovoCustoMedio'
      DisplayFormat = '###,###,##0.00'
    end
    object qrHistReposicao: TFloatField
      DisplayLabel = 'Reposição'
      DisplayWidth = 10
      FieldName = 'Reposicao'
      DisplayFormat = '###,###,##0.00'
    end
    object qrHistCustoGeradoPorHistorico: TStringField
      DisplayWidth = 1
      FieldName = 'CustoGeradoPorHistorico'
      Visible = False
      Size = 1
    end
    object qrHistId: TIntegerField
      DisplayWidth = 10
      FieldName = 'Id'
      Visible = False
    end
    object qrHistMAT_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'MAT_ID'
      Visible = False
    end
    object qrHistCustoMedioAnterior: TFloatField
      DisplayWidth = 10
      FieldName = 'CustoMedioAnterior'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrHistValorEstoqueAnterior: TFloatField
      DisplayWidth = 10
      FieldName = 'ValorEstoqueAnterior'
      Visible = False
    end
    object qrHistRec_ID: TAutoIncField
      FieldName = 'Rec_ID'
      ReadOnly = True
    end
  end
  object dsHist: TDataSource
    DataSet = qrHist
    Left = 692
    Top = 490
  end
  object qrRecalcula: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    Left = 740
    Top = 490
  end
  object qrCodigoXML: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM MateriaisCodigoXML')
    Left = 644
    Top = 546
    object qrCodigoXMLFOR_CODI: TStringField
      DisplayLabel = 'Fornecedor'
      DisplayWidth = 35
      FieldName = 'FOR_CODI'
      Size = 50
    end
    object qrCodigoXMLCodigo: TStringField
      DisplayLabel = 'Código Fornecedor'
      DisplayWidth = 35
      FieldName = 'Codigo'
      Size = 50
    end
    object qrCodigoXMLEAN: TStringField
      DisplayWidth = 35
      FieldName = 'EAN'
      Size = 50
    end
    object qrCodigoXMLId: TAutoIncField
      DisplayWidth = 10
      FieldName = 'Id'
      ReadOnly = True
      Visible = False
    end
    object qrCodigoXMLMAT_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'MAT_ID'
      Visible = False
    end
  end
  object qrForn: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    SQL.Strings = (
      'SELECT FOR_CODI FROM CPAFORN ORDER BY FOR_CODI')
    Left = 644
    Top = 490
    object qrFornFOR_CODI: TStringField
      FieldName = 'FOR_CODI'
      FixedChar = True
      Size = 15
    end
  end
  object dsCodigoXML: TDataSource
    DataSet = qrCodigoXML
    Left = 836
    Top = 490
  end
end
