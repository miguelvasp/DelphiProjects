object FConsultaNF: TFConsultaNF
  Left = 115
  Top = 66
  Width = 813
  Height = 572
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
  object Label48: TLabel
    Left = 252
    Top = 233
    Width = 67
    Height = 15
    Caption = 'Canceladas'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label27: TLabel
    Left = 560
    Top = 233
    Width = 61
    Height = 15
    Caption = 'Impressas'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label28: TLabel
    Left = 396
    Top = 233
    Width = 86
    Height = 15
    Caption = 'Não impressas'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 797
    Height = 40
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object SpeedButton3: TSpeedButton
      Left = 753
      Top = 3
      Width = 33
      Height = 32
      Hint = 'Sair'
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF824B4B4E1E
        1FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF824B4B824B4B
        8C4B4B914B4B4E1E1FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF824B4B824B4B89
        4B4B9C4B4CB64B4CBD4B4C9F4B4C4E1E1FFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF824B4B824B
        4B9A4D4EAF4E4FC14E4FC04D4EBF4C4DBF4C4D9F4B4C4E1E1F994B4B824B4B82
        4B4B824B4B824B4B824B4B824B4B824B4B824B4BFF00FFFF00FFFF00FFFF00FF
        FF00FF824B4BC55455C95455C75354C65253C55152C45051C24F50A04C4D4E1E
        1FFE8B8CFC9293FB9A9CFAA3A4F8AAABF7B1B1F7B5B6F7B5B6824B4BFF00FFFF
        00FFFF00FFFF00FFFF00FF824B4BCE5859CC5758CB5657CA5556C95455C75354
        C65253A34E4F4E1E1F3F9E4C1EBC4C1EBC4C1EBC4C1EBC4C1EBC4C1EBC4CF7B5
        B6824B4BFF00FFFF00FFFF00FFFF00FFFF00FF824B4BD15B5CD05A5BCF595ACE
        5859CC5758CB5657CA5556A550504E1E1F3F9E4C1EBC4C1EBC4C1EBC4C1EBC4C
        1EBC4C1EBC4CF7B5B6824B4BFF00FFFF00FFFF00FFFF00FFFF00FF824B4BD55E
        5FD55E5FD45D5ED35C5DD15B5CD05A5BCF595AA651524E1E1F3F9E4C1EBC4C1E
        BC4C1EBC4C1EBC4C1EBC4C1EBC4CF7B5B6824B4BFF00FFFF00FFFF00FFFF00FF
        FF00FF824B4BDA6364D96263D86062D75F60D55E5FD45D5ED35C5DA953544E1E
        1F3F9E4C1EBC4C1EBC4C1EBC4C1EBC4C1EBC4C1EBC4CF7B5B6824B4BFF00FFFF
        00FFFF00FFFF00FFFF00FF824B4BDE6667DD6566DC6465DA6364D96263D86062
        D75F60AB55554E1E1F3F9E4C1EBC4C1EBC4C1EBC4C1EBC4C1EBC4C1EBC4CF7B5
        B6824B4BFF00FFFF00FFFF00FFFF00FFFF00FF824B4BE2696AE16869E06768DE
        6667E06D6EE69091DC6465AC56574E1E1F58A55B1EBC4C1EBC4C1EBC4C1EBC4C
        1EBC4C1EBC4CF7B5B6824B4BFF00FFFF00FFFF00FFFF00FFFF00FF824B4BE76D
        6EE66C6DE56B6CE36A6BEEA6A7FFFFFFEB9C9CAF58594E1E1FEECEAFB7EBAA5E
        D3775ED37745CA6745CA6745CA67F7B5B6824B4BFF00FFFF00FFFF00FFFF00FF
        FF00FF824B4BEB7072EA6F70E96E6FE76D6EF2A9AAFFFFFFEB9596B15A5A4E1E
        1FEECEAFFFFFD3FFFFD3FFFFD3FFFFD3D9F6BDD9F6BDF7B5B6824B4BFF00FFFF
        00FFFF00FFFF00FFFF00FF824B4BEF7475EE7374ED7273EB7072EA6F70EF9091
        E76D6EB25B5C4E1E1FEECEAFFFFFD3FFFFD3FFFFD3FFFFD3FFFFD3FFFFD3F7B5
        B6824B4BFF00FFFF00FFFF00FFFF00FFFF00FF824B4BF37778F37778F27677F0
        7576EF7475EE7374ED7273B55D5D4E1E1FEECEAFFFFFD3FFFFD3FFFFD3FFFFD3
        FFFFD3FFFFD3F7B5B6824B4BFF00FFFF00FFFF00FFFF00FFFF00FF824B4BF87B
        7DF77A7BF6797AF47879F37778F27677F07576B75F5F4E1E1FEECEAFFFFFD3FF
        FFD3FFFFD3FFFFD3FFFFD3FFFFD3F7B5B6824B4BFF00FFFF00FFFF00FFFF00FF
        FF00FF824B4BFC7F80FB7E7FFA7D7EF87B7DF77A7BF6797AF47879B860624E1E
        1FEECEAFFFFFD3FFFFD3FFFFD3FFFFD3FFFFD3FFFFD3F7B5B6824B4BFF00FFFF
        00FFFF00FFFF00FFFF00FF824B4BFF8182FF8182FE8081FC7F80FC7F80FB7E7F
        FA7D7EBB63634E1E1FEECEAFFFFFD3FFFFD3FFFFD3FFFFD3FFFFD3FFFFD3F7B5
        B6824B4BFF00FFFF00FFFF00FFFF00FFFF00FF824B4BFF8182FF8182FF8182FF
        8182FF8182FE8081FE8081BD65654E1E1FEECEAFFFFFD3FFFFD3FFFFD3FFFFD3
        FFFFD3FFFFD3F7B5B6824B4BFF00FFFF00FFFF00FFFF00FFFF00FF824B4BF77E
        7FFF8182FF8182FF8182FF8182FF8182FF8182BF66664E1E1FEECEAFFFFFD3FF
        FFD3FFFFD3FFFFD3FFFFD3FFFFD3F7B5B6824B4BFF00FFFF00FFFF00FFFF00FF
        FF00FF824B4B824B4BAF5E5FD56F70FF8182FF8182FF8182FF8182BF66664E1E
        1FEECEAFFFFFD3FFFFD3FFFFD3FFFFD3FFFFD3FFFFD3F7B5B6824B4BFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FF824B4B824B4B915152B66263EE7A7B
        FF8182BF66664E1E1F914B4B824B4B824B4B824B4B824B4B824B4B824B4B824B
        4B824B4BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FF824B4B824B4B9855559F58584E1E1FFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF824B4B4E1E1FFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton3Click
    end
    object Label16: TLabel
      Left = 9
      Top = 2
      Width = 322
      Height = 29
      Caption = 'Consultas por Nota Fiscal'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -24
      Font.Name = 'Georgia'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object SBT_VISU: TSpeedButton
      Left = 722
      Top = 3
      Width = 32
      Height = 32
      Hint = 'Visualizar Relatório'
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
      ParentShowHint = False
      ShowHint = True
      OnClick = SBT_VISUClick
    end
    object SpeedButton1: TSpeedButton
      Left = 689
      Top = 3
      Width = 33
      Height = 32
      Hint = 'Enviar Email (Nota Fiscal)'
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA47874A47874A47874A47874A478
        74A47874A47874A47874A47874A47874A47874A47874A47874A47874A47874A4
        7874A47874A47874A47874A47874A47874A47874A47874A47874A47874FEFDFC
        FDFBF9FBF9F6FAF6F3F9F4EFF7F2ECF6EFE9F4EDE5F3EBE2F2E8DEF0E6DBEFE4
        D8F0E2D3F2E0CEF3DEC9F4DCC4F5DABEF7D8B9F8D6B3F9D4AEFBD2A8FCCFA2A4
        7874A47874FEFDFCFDFBF9FBF9F6FAF6F3F9F4EFF7F2ECF6EFE9F4EDE5F3EBE2
        F2E8DEF0E6DBEFE4D8F0E2D3F2E0CEF3DEC9F4DCC4F5DABEF7D8B9F8D6B3F9D4
        AEFBD2A8FCCFA2A47874A47874FEFDFCFDFBF9FBF9F6FAF6F3F9F4EFF7F2ECF6
        EFE9F4EDE5F3EBE2F2E8DEF0E6DBEFE4D8F0E2D3F2E0CEF3DEC9F4DCC4F5DABE
        F7D8B9F8D6B3F9D4AEFBD2A8FCCFA2A47874A47874FEFDFCFDFBF9FBF9F6FAF6
        F3FAF6F3F9F4F0F9F2EDFAF1E8F9EEE4F9EBDEF8E9D9F9E6D3F8E3CEF8E0C9F7
        DEC4F7DCC0F7DABCF7D8B9F8D6B3F9D4AEFBD2A8FCCFA2A47874A47874FEFDFC
        FDFBF9FBF9F6FAF6F3DF993EDF993EDF993EDF993EDF993EDF993EDF993EDF99
        3EDF993EDF993EDF993EDF993EDF993EF7D8B9F8D6B3F9D4AEFBD2A8FCCFA2A4
        7874A47874FEFDFCFDFBF9FBF9F6FAF6F3FAF4F0F9F3EDF9F1E9FAEFE5F9EDE1
        F9EADCF8E8D8F8E5D3F8E3CDF8E1C9F7DEC5F7DCC1F7DABEF7D8B9F8D6B3F9D4
        AEFBD2A8FCCFA2A47874A47874FEFDFCFDFBF9FBF9F6FAF6F3DF993EDF993EDF
        993EDF993EDF993EDF993EDF993EDF993EDF993EDF993EDF993EDF993EDF993E
        F7D8B9F8D6B3F9D4AEFBD2A8FCCFA2A47874A47874FEFDFCFDFBF9FBF9F6FAF6
        F3FAF6F2FAF4EFF9F3EDFAF1E8F9EEE4F9ECE0F9EADBF8E7D6F8E5D2F8E2CDF8
        E0C8F8DDC4F8DBC0F7D8B9F8D6B3F9D4AEFBD2A8FCCFA2A47874A47874FEFDFC
        FDFBF9FBF9F6FAF6F3DF993EDF993EDF993EDF993EDF993EDF993EDF993EDF99
        3EDF993EDF993EDF993EDF993EDF993EF7D8B9F8D6B3F9D4AEFBD2A8FCCFA2A4
        7874A47874FEFDFCFDFBF9FBF9F6FAF6F3FAF6F3FAF4F0FAF3ECFAF0E8F9EEE3
        F9EBDFF9E9D9F9E5D4F8E2CEF8E0C8F7DEC4F8DCC0F7D9BCF7D8B9F8D6B3F9D4
        AEFBD2A8FCCFA2A47874A47874FEFDFCFDFBF9FBF9F6FAF6F3F9F4EFF7F2ECF6
        EFE9F4EDE5F3EBE2F2E8DEF0E6DBEFE4D8F0E2D3F2E0CEF3DEC9B06A42AD704C
        B96735B86531B8632EB8622BFCCFA2A47874A47874FEFDFCFDFBF9FBF9F6FAF6
        F3F9F4EFF7F2ECF6EFE9F4EDE5F3EBE2F2E8DEF0E6DBEFE4D8F0E2D3F2E0CEF3
        DEC99E694781CEE6DE9C55E0903EDB862FB75710FCCFA2A47874A47874FEFDFC
        FDFBF9FBF9F6FAF6F3F9F4EFF7F2ECF6EFE9F4EDE5F3EBE2F2E8DEF0E6DBEFE4
        D8F0E2D3F2E0CEF3DEC9AC714EBAE4F2E6B782E6B27DCB9D73A3613EFCCFA2A4
        7874A47874FEFDFCFDFBF9FBF9F6FAF6F3F9F4EFF7F2ECF6EFE9F4EDE5F3EBE2
        F2E8DEF0E6DBEFE4D8F0E2D3F2E0CEF3DEC998675699CDFE99B0C7F1F0F2C7C2
        C79E664EF9D4AEA47874A47874FEFDFCFDFBF9FBF9F6FAF6F3F9F4EFF7F2ECF6
        EFE9F4EDE5F3EBE2F2E8DEF0E6DBEFE4D8F0E2D3F2E0CEF3DEC985645F8C7C7F
        766F7F6D697F7D6F7C776976F7D8B9A47874A47874FEFDFCFDFBF9FBF9F6FAF6
        F3F9F4EFF7F2ECF6EFE9F4EDE5F3EBE2F2E8DEF0E6DBEFE4D8F0E2D3F2E0CEF3
        DEC9F3DEC9F3DEC9F3DEC9F3DEC9F3DEC9F3DEC9F3DEC9A47874A47874A47874
        A47874A47874A47874A47874A47874A47874A47874A47874A47874A47874A478
        74A47874A47874A47874A47874A47874A47874A47874A47874A47874A47874A4
        7874FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 653
      Top = 3
      Width = 33
      Height = 32
      Hint = 'Exportar Excel'
      Glyph.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        08000000000040020000120B0000120B000000010000F50000000D562700E100
        E100D2E6DC0062CA8D0063447400D55BDF004BB5740053A87200A1CEB000534C
        650085268F00F6FBF700E02FE200339A580091C4A300326D4B008E98A000DCAC
        E3003A935800B4D9BF00EDD0EE0072B1840085C69C00FF00FF00E09EE2002C6D
        4400208E46009A3BA50063A77B0044675A00D98ADD00DBD3E300BEDDCC00EEF7
        F00093CFB1007EB6920085D2A500EC0DEF00A5D8BB00E620EA001C753B00DFF3
        E50045A86A0077C7990069AD820029874700B86FC30062B67F00C325C800A7BA
        B700F0F2F0001A8A4100C2E2CF00664E770008702D00DDF0E200F757FA0095D2
        A800378B54004E936400A6DCBD004DAA700076D0A200B353C300AB96BA003273
        49008FA09F00F701F70063527500D941E10053986A0097DDB900FCFCFB003F71
        570084CA9C00AADBBB005AB47B00B9E7CF0064BD8200893D9600F5F7F6000A6E
        2C00E608E8005D4F6C00429B6300A2D4B00095CEAD0077C59700D6ECDD0089D5
        AF00B6E0C600DABFE50072CC9B00227A4000F12BF500CDE9D700589F7100E78E
        ED008641940041895A0014833A0059AD7400396B5000BFECCF002D965200AAD5
        B70056BF80004AA36A00D76CE0007FD6A60028934E00D555DE003484510082D0
        A5009CD5AE0006782E00E9F8F000516B6600E8A1F000B0DFC6006A447B006BB7
        86006DC7940073B59400DAE9DF0062647400D810DC00E6B1EF00E833ED007AAD
        8900176B320041956000C2E8CF009EDFBD008BC79D0092D0A5001F82410053AA
        6F003E82580065C18A005B436D005BA574008CDEAD006C487C0041A36400FFFB
        FD00B5E5C4001F793D00F7F1F6009DCDAE00A3DEB600BFE9D200FAFDFC006ED3
        9A0086D7AD00F106F30074B38C00DEEFDE0063AC7A00F2F8F6000A732E00E5EE
        E60064B383004BAA6D00E1CAEC00DC65DE003CA0610052B57B0052946B009ED6
        B2002A7E4700B5DEBD00EBD4F5005DB48000E610E7002B955000DF95E100E23E
        E700943AA0008ECAA600FFFFFF00A5E0C300C1DAC800287D4500ADD6BB007CBD
        93009CDEAD00A4D7B500BCE5CD00398755008DC5A2006DCF950080E2AC003A6B
        4A0054AE74008DCDA000AEE4BF0073BC8D00C8E6D500A3D0B200E6B7F00094D6
        AD0050A56E006B427300DF37E00030824D000D7731007CC6990078CFA3004191
        5C0044AC6B00BCEED900E9F2EF0054B27500399E5B009FC5A800BAD8C100E1A0
        EA002C70440021944A009DD1B300EF1AF200187F3D00EFEEF400C9E1D400664D
        78005195660099DBB5006ABA8700575E6B007BC59400E0BBEB00CCEFD60061A0
        7400426B5200309A5500DD68DE007ADBA500117F3500DEE6DE001F8C45006BBD
        8C008ADBB200E2D3EB0000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000017170A103F52
        171717171717171717171717171717171717308C00862031402E1EA5CCAE4317
        171717171717171717170982A086BB24E34BB4B4B4941418ECCCAE4317171717
        17178C28644A566DC04748BCC6582998B4B49414B0A50C521717049333C3B33E
        ED859171712BD55858BC5F29B4B448941127045D3387167A993C48719A712FA1
        773E7A2F507777BCDF80045D3387B98B033C9897BCBC5A50779A24160B593E4C
        1F5E785DF039C5AD6A26B4B4B4B40B48742929580BB585A9F3DD78B71A3915D5
        06B8480BB4B4B4B4B4A1325048484848AC2578B71A392C3DD25A485A3CB3DC69
        8DEE70D750B57777A49B78AA6E721C3D2A20B42126F27AB751B781B421D05C2F
        5B438FAA6E728D6B6BE0B4B4D48512933A46C2379F85854BE7178FCDAF7260CA
        6B02B4B4B4E2A0883B7C7C37B4B4B4B4C817E1CD68726065077CB4B4E9CE88D1
        AD95B4B4D43CBBBB7F17E170EB7260A2A2D450152DD69E954CA669B4585C7AB9
        7F173570EBA90757579F32D8B61321B4B8C7C74829473CBC761744700D964C71
        220BB4B4B4B4B4B4B4B4B4B4B4B49898D91744BD54C94A5C775F5FC634205A13
        B8BB95BE9C0861385E174F63544EE8BFD38559CFF1E4E44CC2A39068738D4517
        17177E498390C4678E4D3C871616B9C5792F6554DE1C6F1717171762BD54A367
        67565686B9B9B99C2C9E0712361C051717171743E5BD8390C3929213B8B8B8B8
        C7C7950E23696C171717171743B2758A8A12546B6BCA8965656565659E42B117
        171717171717521B7D1D1D1D66660F0F0F191941530117171717}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton2Click
    end
  end
  object GRID1: TwwDBGrid
    Left = 1
    Top = 253
    Width = 789
    Height = 278
    Selected.Strings = (
      'OS_ID'#9'6'#9'OS'
      'MANI_ID'#9'10'#9'Manifesto'
      'NFI_NUMERO'#9'9'#9'NF'
      'DESC_CLI'#9'25'#9'Emitente'
      'NFI_DEMI'#9'8'#9'Data'
      'NFI_DEST_RAZA'#9'30'#9'Destinatário'
      'QTDEUV'#9'10'#9'Qtde. UV'
      'PESOBRU'#9'11'#9'Peso Bruto'
      'NFI_TOTA'#9'10'#9'Vlr. da Nota'
      'QTDEPALLET'#9'9'#9'Qtd Pallet'
      'DT_ENTREGA'#9'10'#9'Dt. Entrega')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBlue
    FixedCols = 0
    ShowHorzScrollBar = True
    Color = clWhite
    DataSource = DS_CONSUL
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial Narrow'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    TabOrder = 7
    TitleAlignment = taCenter
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWhite
    TitleFont.Height = -11
    TitleFont.Name = 'Arial'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    Visible = False
    OnCalcCellColors = GRID1CalcCellColors
    OnDblClick = GRID1DblClick
  end
  object Panel7: TPanel
    Left = 0
    Top = 40
    Width = 797
    Height = 106
    Align = alTop
    BevelInner = bvLowered
    BevelOuter = bvSpace
    TabOrder = 1
    object Label1: TLabel
      Left = 5
      Top = 4
      Width = 776
      Height = 19
      Alignment = taCenter
      AutoSize = False
      Caption = 'Nota Fiscal de Retorno Simbólico'
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label4: TLabel
      Left = 580
      Top = 25
      Width = 80
      Height = 15
      Caption = 'Nº Nota Fiscal '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 3
      Top = 42
      Width = 104
      Height = 15
      Caption = 'Cliente Remetente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label20: TLabel
      Left = 43
      Top = 25
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
    object Label2: TLabel
      Left = 62
      Top = 74
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
    object Label8: TLabel
      Left = 37
      Top = 58
      Width = 68
      Height = 15
      Caption = 'Cliente Final'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 545
      Top = 42
      Width = 113
      Height = 15
      Caption = 'Período Emissão de'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 660
      Top = 25
      Width = 80
      Height = 15
      Caption = 'Nº Nota Fiscal '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 109
      Top = 41
      Width = 80
      Height = 15
      Caption = 'Nº Nota Fiscal '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 109
      Top = 57
      Width = 80
      Height = 15
      Caption = 'Nº Nota Fiscal '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 109
      Top = 25
      Width = 80
      Height = 15
      Caption = 'Nº Nota Fiscal '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 109
      Top = 73
      Width = 80
      Height = 15
      Caption = 'Nº Nota Fiscal '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 660
      Top = 41
      Width = 80
      Height = 15
      Caption = 'Nº Nota Fiscal '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 639
      Top = 58
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
    object Label14: TLabel
      Left = 661
      Top = 57
      Width = 80
      Height = 15
      Caption = 'Nº Nota Fiscal '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object Label15: TLabel
      Left = 212
      Top = 73
      Width = 80
      Height = 15
      Caption = 'Nº Nota Fiscal '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object Label17: TLabel
      Left = 200
      Top = 73
      Width = 4
      Height = 15
      Caption = '-'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label18: TLabel
      Left = 568
      Top = 74
      Width = 89
      Height = 15
      Caption = 'Tipo de Produto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label19: TLabel
      Left = 661
      Top = 73
      Width = 80
      Height = 15
      Caption = 'Nº Nota Fiscal '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object Label21: TLabel
      Left = 74
      Top = 89
      Width = 33
      Height = 15
      Caption = 'Batch'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label22: TLabel
      Left = 109
      Top = 89
      Width = 80
      Height = 15
      Caption = 'Nº Nota Fiscal '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object Label23: TLabel
      Left = 632
      Top = 89
      Width = 25
      Height = 15
      Caption = 'Lote'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label24: TLabel
      Left = 661
      Top = 89
      Width = 80
      Height = 15
      Caption = 'Nº Nota Fiscal '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object Label25: TLabel
      Left = 203
      Top = 89
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
    object Label26: TLabel
      Left = 225
      Top = 89
      Width = 80
      Height = 15
      Caption = 'Nº Nota Fiscal '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsItalic]
      ParentFont = False
    end
  end
  object RadioGroup1: TRadioGroup
    Left = 0
    Top = 182
    Width = 797
    Height = 36
    Align = alTop
    Caption = 'Ordenação'
    Columns = 4
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ItemIndex = 0
    Items.Strings = (
      'OS'
      'Manifesto'
      'NF'
      'Data')
    ParentFont = False
    TabOrder = 3
    OnClick = RadioGroup1Click
  end
  object Panel1: TPanel
    Left = 181
    Top = 231
    Width = 68
    Height = 18
    BevelInner = bvLowered
    BevelOuter = bvSpace
    Color = 7308539
    TabOrder = 4
  end
  object Panel2: TPanel
    Left = 489
    Top = 231
    Width = 68
    Height = 18
    BevelInner = bvLowered
    BevelOuter = bvSpace
    Color = 8316074
    TabOrder = 6
  end
  object Panel4: TPanel
    Left = 325
    Top = 231
    Width = 68
    Height = 18
    BevelInner = bvLowered
    BevelOuter = bvSpace
    Color = clWhite
    TabOrder = 5
  end
  object RadioGroup2: TRadioGroup
    Left = 0
    Top = 146
    Width = 797
    Height = 36
    Align = alTop
    Caption = 'Tipo de Nota Fiscal'
    Columns = 4
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ItemIndex = 0
    Items.Strings = (
      'Todas'
      'Impressas'
      'Por Imprimir'
      'Canceladas')
    ParentFont = False
    TabOrder = 2
    OnClick = RadioGroup2Click
  end
  object Q_CONSULTA: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'SELECT   SUM(B.INF_QTDE) as QTDEUV,'
      ' SUM(B.INF_PESO*B.INF_QTDE) as PESOBRU,'
      ' A.OS_ID, A.NFI_NUMERO, A.NFI_EMIT_CLI, A.NFI_DEST_RAZA,'
      ' A.NFI_DEMI ,A.NFI_CODI, A.NFI_TOTA'
      ' FROM NF A , NF_ITENS B'
      ' WHERE '
      ' A.NFI_CODI = B.NFI_CODI '
      ' group by A.OS_ID, A.NFI_NUMERO,'
      ' A.NFI_EMIT_CLI, '
      ' A.NFI_DEST_RAZA, A.NFI_DEMI ,A.NFI_CODI,A.NFI_TOTA   '
      ' order by A.NFI_CODI'
      '')
    ValidateWithMask = True
    Left = 144
    Top = 64
    object Q_CONSULTAOS_ID: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'OS'
      DisplayWidth = 6
      FieldName = 'OS_ID'
      Origin = 'NBFDADOS.NF.OS_ID'
    end
    object Q_CONSULTANFI_NUMERO: TStringField
      Alignment = taRightJustify
      DisplayLabel = 'NF'
      DisplayWidth = 10
      FieldName = 'NFI_NUMERO'
      Origin = 'NBFDADOS.NF.NFI_NUMERO'
      FixedChar = True
      Size = 10
    end
    object Q_CONSULTADESC_CLI: TStringField
      DisplayLabel = 'Emitente'
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'DESC_CLI'
      LookupDataSet = Q_CLINBF
      LookupKeyFields = 'CLIN_ID'
      LookupResultField = 'CLIN_RAZA'
      KeyFields = 'NFI_EMIT_CLI'
      Size = 50
      Lookup = True
    end
    object Q_CONSULTANFI_DEMI: TDateTimeField
      DisplayLabel = 'Data'
      DisplayWidth = 9
      FieldName = 'NFI_DEMI'
      Origin = 'NBFDADOS.NF.NFI_DEMI'
    end
    object Q_CONSULTANFI_DEST_RAZA: TStringField
      DisplayLabel = 'Destinatário'
      DisplayWidth = 34
      FieldName = 'NFI_DEST_RAZA'
      Origin = 'NBFDADOS.NF.NFI_DEST_RAZA'
      FixedChar = True
      Size = 50
    end
    object Q_CONSULTAQTDEUV: TFloatField
      DisplayLabel = 'Qtde. UV'
      DisplayWidth = 10
      FieldName = 'QTDEUV'
      DisplayFormat = '0.000'
      EditFormat = '0.000'
    end
    object Q_CONSULTAPESOBRU: TFloatField
      DisplayLabel = 'Peso Bruto'
      DisplayWidth = 11
      FieldName = 'PESOBRU'
      DisplayFormat = '###,###,##0.0000'
      EditFormat = '###,###,##0.0000'
    end
    object Q_CONSULTANFI_TOTA: TFloatField
      DisplayLabel = 'Vlr. da Nota'
      DisplayWidth = 10
      FieldName = 'NFI_TOTA'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_CONSULTANFI_EMIT_CLI: TIntegerField
      DisplayWidth = 10
      FieldName = 'NFI_EMIT_CLI'
      Origin = 'NBFDADOS.NF.NFI_EMIT_CLI'
      Visible = False
    end
    object Q_CONSULTANFI_CODI: TAutoIncField
      FieldName = 'NFI_CODI'
      Origin = 'NBFDADOS.NF.NFI_CODI'
      Visible = False
    end
  end
  object DS_CONSULTA: TwwDataSource
    DataSet = Q_CONSULTA
    Left = 80
    Top = 80
  end
  object Q_CLINBF: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select CLIN_ID,CLIN_RAZA  from clientenbf'
      ''
      '')
    ValidateWithMask = True
    Left = 302
    Top = 68
    object Q_CLINBFCLIN_ID: TAutoIncField
      FieldName = 'CLIN_ID'
      Origin = 'NBFDADOS.clientenbf.CLIN_ID'
    end
    object Q_CLINBFCLIN_RAZA: TStringField
      FieldName = 'CLIN_RAZA'
      Origin = 'NBFDADOS.clientenbf.CLIN_RAZA'
      FixedChar = True
      Size = 50
    end
  end
  object Q_CONSUL: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    DataSource = FMenu.DS_Usuario
    SQL.Strings = (
      'Select * from CONSULTA_NF where CH = :CH'
      '')
    ValidateWithMask = True
    Left = 656
    Top = 177
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'CH'
        ParamType = ptUnknown
      end>
    object Q_CONSULOS_ID: TIntegerField
      Tag = 1
      DisplayLabel = 'OS'
      DisplayWidth = 6
      FieldName = 'OS_ID'
      Origin = 'NBFDADOS.CONSULTA_NF.OS_ID'
    end
    object Q_CONSULMANI_ID: TIntegerField
      Tag = 1
      DisplayLabel = 'Manifesto'
      DisplayWidth = 10
      FieldName = 'MANI_ID'
      Origin = 'NBFDADOS.CONSULTA_NF.MANI_ID'
    end
    object Q_CONSULNFI_NUMERO: TStringField
      Tag = 1
      Alignment = taRightJustify
      DisplayLabel = 'NF'
      DisplayWidth = 9
      FieldName = 'NFI_NUMERO'
      Origin = 'NBFDADOS.CONSULTA_NF.NFI_NUMERO'
      FixedChar = True
      Size = 10
    end
    object Q_CONSULDESC_CLI: TStringField
      Tag = 1
      DisplayLabel = 'Emitente'
      DisplayWidth = 25
      FieldKind = fkLookup
      FieldName = 'DESC_CLI'
      LookupDataSet = Q_CLINBF
      LookupKeyFields = 'CLIN_ID'
      LookupResultField = 'CLIN_RAZA'
      KeyFields = 'NFI_EMIT_CLI'
      Size = 40
      Lookup = True
    end
    object Q_CONSULNFI_DEMI: TDateTimeField
      Tag = 1
      DisplayLabel = 'Data'
      DisplayWidth = 8
      FieldName = 'NFI_DEMI'
      Origin = 'NBFDADOS.CONSULTA_NF.NFI_DEMI'
      DisplayFormat = 'dd/MM/YY'
    end
    object Q_CONSULNFI_DEST_RAZA: TStringField
      Tag = 1
      DisplayLabel = 'Destinatário'
      DisplayWidth = 30
      FieldName = 'NFI_DEST_RAZA'
      Origin = 'NBFDADOS.CONSULTA_NF.NFI_DEST_RAZA'
      FixedChar = True
      Size = 40
    end
    object Q_CONSULQTDEUV: TFloatField
      Tag = 1
      DisplayLabel = 'Qtde. UV'
      DisplayWidth = 10
      FieldName = 'QTDEUV'
      Origin = 'NBFDADOS.CONSULTA_NF.QTDEUV'
      DisplayFormat = '0.000'
      EditFormat = '0.000'
    end
    object Q_CONSULPESOBRU: TFloatField
      Tag = 1
      DisplayLabel = 'Peso Bruto'
      DisplayWidth = 11
      FieldName = 'PESOBRU'
      Origin = 'NBFDADOS.CONSULTA_NF.PESOBRU'
      DisplayFormat = '#0.000'
      EditFormat = '#0.000'
    end
    object Q_CONSULNFI_TOTA: TFloatField
      Tag = 1
      DisplayLabel = 'Vlr. da Nota'
      DisplayWidth = 10
      FieldName = 'NFI_TOTA'
      Origin = 'NBFDADOS.CONSULTA_NF.NFI_TOTA'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object Q_CONSULQTDEPALLET: TIntegerField
      Tag = 1
      DisplayLabel = 'Qtd Pallet'
      DisplayWidth = 9
      FieldName = 'QTDEPALLET'
      Origin = 'NBFDADOS.CONSULTA_NF.QTDEPALLET'
    end
    object Q_CONSULDT_ENTREGA: TDateTimeField
      DisplayLabel = 'Dt. Entrega'
      DisplayWidth = 10
      FieldName = 'DT_ENTREGA'
      Origin = 'NBFDADOS.CONSULTA_NF.DT_ENTREGA'
    end
    object Q_CONSULCH: TIntegerField
      DisplayWidth = 10
      FieldName = 'CH'
      Origin = 'NBFDADOS.CONSULTA_NF.CH'
      Visible = False
    end
    object Q_CONSULNFI_LOAD: TStringField
      Tag = 1
      DisplayLabel = 'Load'
      DisplayWidth = 10
      FieldName = 'NFI_LOAD'
      Origin = 'NBFDADOS.CONSULTA_NF.NFI_LOAD'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object Q_CONSULNFI_EMIT_CLI: TIntegerField
      FieldName = 'NFI_EMIT_CLI'
      Origin = 'NBFDADOS.CONSULTA_NF.NFI_EMIT_CLI'
      Visible = False
    end
    object Q_CONSULNFI_DEST_CLI: TIntegerField
      FieldName = 'NFI_DEST_CLI'
      Origin = 'NBFDADOS.CONSULTA_NF.NFI_DEST_CLI'
      Visible = False
    end
    object Q_CONSULNFI_CODI: TIntegerField
      FieldName = 'NFI_CODI'
      Origin = 'NBFDADOS.CONSULTA_NF.NFI_CODI'
      Visible = False
    end
    object Q_CONSULSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'NBFDADOS.CONSULTA_NF.STATUS'
      Visible = False
      FixedChar = True
      Size = 1
    end
  end
  object DS_CONSUL: TwwDataSource
    DataSet = Q_CONSUL
    Left = 400
    Top = 73
  end
  object STP_CONSULTANF: TwwStoredProc
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    StoredProcName = 'dbo.STP_CONSULTANF;1'
    ValidateWithMask = True
    Left = 235
    Top = 72
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Result'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = '@NF'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@CLIN_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@CLIN_REMET'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@PRO_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@CLIF_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@TPRO_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@TIPO_NF'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@DATAI'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@DATAF'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@CALCPALLET'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@LOTE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@BATCH'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@BATCHF'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@CH'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@LOAD_IN'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@ENTREGA_INI'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@ENTREGA_FIM'
        ParamType = ptInput
      end>
  end
  object Q_AUX: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    ValidateWithMask = True
    Left = 463
    Top = 62
  end
  object dsExcel: TDataSource
    Left = 368
    Top = 296
  end
end
