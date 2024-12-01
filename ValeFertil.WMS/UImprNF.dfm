object FImprNF: TFImprNF
  Left = 427
  Top = 202
  Width = 805
  Height = 580
  BorderIcons = [biSystemMenu, biMinimize, biMaximize, biHelp]
  Caption = 'Impressão / Cancelamento de Notas Fiscais'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 789
    Height = 523
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 0
    object wwDBGrid3: TwwDBGrid
      Left = 2
      Top = 157
      Width = 785
      Height = 364
      ControlType.Strings = (
        'NFI_MARCAIMP;CheckBox;*;')
      Selected.Strings = (
        'NFI_MARCAIMP'#9'1'#9'***'#9'F'
        'NFI_NUMERO'#9'10'#9'NF Nº'#9'F'
        'NFI_DEMI'#9'9'#9'Dt.Emissão'#9'F'
        'NFI_DEST_NOME'#9'38'#9'Destinatário'#9'F'
        'NFI_DISCRIM'#9'255'#9'NFI_DISCRIM'#9'F')
      IniAttributes.FileName = 'delphi32.ini'
      IniAttributes.SectionName = 'FNFDBG_INFI'
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      Align = alClient
      Color = clWhite
      DataSource = DS_NF
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Verdana'
      Font.Style = []
      KeyOptions = [dgEnterToTab]
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      ParentFont = False
      TabOrder = 0
      TitleAlignment = taCenter
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -15
      TitleFont.Name = 'Verdana'
      TitleFont.Style = [fsBold]
      TitleLines = 1
      TitleButtons = False
      FooterColor = clInactiveCaption
      FooterCellColor = clGrayText
    end
    object Panel2: TPanel
      Left = 2
      Top = 2
      Width = 785
      Height = 155
      Align = alTop
      TabOrder = 1
      object BitBtn2: TBitBtn
        Left = 88
        Top = 116
        Width = 137
        Height = 25
        Hint = 'Confirmar'
        Caption = 'Executar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
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
      object RadioGroup1: TRadioGroup
        Left = 431
        Top = 4
        Width = 234
        Height = 141
        Caption = 'Tipo de Nota Fiscal'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ItemIndex = 0
        Items.Strings = (
          'Retorno Simbólico'
          'Retorno de Armazém'
          'Remessa Conta e Ordem Terceiros'
          'Genérica'
          'Industrialização efetuada'
          'Retorno de Industrialização')
        ParentFont = False
        TabOrder = 0
        OnClick = RadioGroup1Click
      end
      object RadioGroup2: TRadioGroup
        Left = 671
        Top = 4
        Width = 106
        Height = 141
        Caption = 'O que deseja ?'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ItemIndex = 0
        Items.Strings = (
          'Imprimir'
          'Reimprimir'
          'Cancelar')
        ParentFont = False
        TabOrder = 1
        OnClick = RadioGroup2Click
      end
      object BitBtn4: TBitBtn
        Left = 10
        Top = 76
        Width = 30
        Height = 33
        Hint = 'Selecionar Todas'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = BitBtn4Click
        Glyph.Data = {
          76060000424D7606000000000000360400002800000018000000180000000100
          08000000000040020000430B0000430B0000000100000001000000399C00004A
          A500004AAD000052B5000052BD00005ACE000063D6000063DE00006BEF00006B
          F700FF00FF000073FF00007BFF00087BFF001084FF00188CFF00218CFF00299C
          FF00319CFF00399CFF0039A5FF004AA5FF0052ADFF005AB5FF0063B5FF006BB5
          FF0073BDFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
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
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000A0A0A0A0A0A
          0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A
          0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A
          0A0A0A0A1304000202020202020101020102010001130A0A0A0A0A0A07070809
          09090909090809080807060503020A0A0A0A0A0A060B0D0D0D0D0D0D0B0D0D0B
          0B0B090706000A0A0A0A0A0A080B0D0E0E0F0E0E0E0D0D0B0B0B080906000A0A
          0A0A0A0A080D0E0F0F0F0E190E0D0D0B0B0B0B0907000A0A0A0A0A0A080E0F0F
          0F0F191B190D0D0D0B0B090B07020A0A0A0A0A0A0D0E101010191B191B190D0D
          0B0B0B0B08020A0A0A0A0A0A0D101010191B190F0E1B190D0B0B090B09030A0A
          0A0A0A0A0D1110191B190F0F0E0D1B190B0B0B0D09020A0A0A0A0A0A0F101111
          190F0F0F0E0D0D1B190D0B0B0B030A0A0A0A0A0A0E121111100F0F0F0E0D0D0D
          1B19090B0B030A0A0A0A0A0A0F13121211100F0F0E0D0D0B0B1B190D0B020A0A
          0A0A0A0A0F14151312100F100E0E0D0D0B0D1B0D0B030A0A0A0A0A0A10161514
          1211100F0E0E0E0D0D0B0B0D0B040A0A0A0A0A0A1118171514131211100F0F0E
          0F0E0E0D0B030A0A0A0A0A0A121A1A171515141312121211100F0F0E0B020A0A
          0A0A0A0A14191A171513131212121211100F0E0D09050A0A0A0A0A0A14141210
          0F0F0E0E0E0F0E0D0D0D080808130A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A
          0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A
          0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A}
      end
      object btNem: TBitBtn
        Left = 43
        Top = 76
        Width = 30
        Height = 33
        Hint = 'Desmarcar Todas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
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
      object GroupBox1: TGroupBox
        Left = 8
        Top = 4
        Width = 417
        Height = 61
        Caption = 'Período de Pesquisa'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        object Label1: TLabel
          Left = 10
          Top = 27
          Width = 16
          Height = 13
          Caption = 'De'
        end
        object Label2: TLabel
          Left = 186
          Top = 27
          Width = 19
          Height = 13
          Caption = 'Até'
        end
        object MaskEdit1: TMaskEdit
          Left = 34
          Top = 22
          Width = 121
          Height = 24
          EditMask = '99/99/9999'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          MaxLength = 10
          ParentFont = False
          TabOrder = 0
          Text = '  /  /    '
        end
        object MaskEdit2: TMaskEdit
          Left = 242
          Top = 22
          Width = 121
          Height = 24
          EditMask = '99/99/9999'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          MaxLength = 10
          ParentFont = False
          TabOrder = 1
          Text = '  /  /    '
        end
      end
      object btnImprimir: TButton
        Left = 208
        Top = 76
        Width = 97
        Height = 33
        Caption = 'Executar'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        OnClick = btnImprimirClick
      end
      object RzBitBtn1: TRzBitBtn
        Left = 75
        Top = 76
        Width = 129
        Height = 33
        Caption = 'Pesquisar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
        OnClick = RzBitBtn1Click
        Glyph.Data = {
          76060000424D7606000000000000360400002800000018000000180000000100
          08000000000040020000E30E0000E30E00000001000000000000212121000018
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
      object chkImprime: TCheckBox
        Left = 8
        Top = 126
        Width = 73
        Height = 17
        Caption = 'imprime txt'
        Checked = True
        State = cbChecked
        TabOrder = 8
        Visible = False
      end
      object btn1: TButton
        Left = 309
        Top = 76
        Width = 117
        Height = 33
        Caption = 'Transportador'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 9
        OnClick = btn1Click
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 523
    Width = 789
    Height = 19
    Panels = <
      item
        Width = 390
      end
      item
        Width = 50
      end>
    SimplePanel = False
  end
  object Q_NF: TwwQuery
    CachedUpdates = True
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    RequestLive = True
    SQL.Strings = (
      ''
      'Select TOP 10 A.*,B.CLIN_RAZA,B.CLIN_ENDERECO,  '
      'B.CLIN_ENDERECO_COMPL, B.CLIN_ENDERECO_BAIRRO,'
      'B.CLIN_INSCRG,B.UF_SIGLA,C.MUN_NOME,D.CLIF_RAZA'
      'from NF A LEFT OUTER JOIN CLIENTEFINAL D'
      '     ON A.NFI_DEST_CLI = D.CLIF_ID,'
      '     ClienteNBF B,municipio C     '
      'where A.NFI_EMIT_CLI = B.CLIN_ID'
      'and A.MUN_ID = C.MUN_ID '
      'and A.TDOC_ID in (15,17)')
    UpdateObject = UPD_NF
    ControlType.Strings = (
      'NFI_MARCAIMP;CheckBox;*;')
    ValidateWithMask = True
    Left = 19
    Top = 172
    object Q_NFNFI_MARCAIMP: TStringField
      DisplayLabel = '***'
      DisplayWidth = 1
      FieldName = 'NFI_MARCAIMP'
      Origin = 'NBFDADOS.nf.NFI_MARCAIMP'
      OnChange = Q_NFNFI_MARCAIMPChange
      FixedChar = True
      Size = 1
    end
    object Q_NFNFI_NUMERO: TStringField
      Alignment = taCenter
      DisplayLabel = 'NF Nº'
      DisplayWidth = 10
      FieldName = 'NFI_NUMERO'
      Origin = 'NBFDADOS.nf.NFI_NUMERO'
      FixedChar = True
      Size = 10
    end
    object Q_NFNFI_DEMI: TDateTimeField
      DisplayLabel = 'Dt.Emissão'
      DisplayWidth = 9
      FieldName = 'NFI_DEMI'
      Origin = 'NBFDADOS.nf.NFI_DEMI'
    end
    object Q_NFNFI_DEST_NOME: TStringField
      DisplayLabel = 'Destinatário'
      DisplayWidth = 38
      FieldName = 'NFI_DEST_NOME'
      Origin = 'NBFDADOS.nf.NFI_DEST_NOME'
      FixedChar = True
      Size = 30
    end
    object Q_NFNFI_DISCRIM: TStringField
      DisplayWidth = 255
      FieldName = 'NFI_DISCRIM'
      FixedChar = True
      Size = 255
    end
    object Q_NFCLIF_RAZA: TStringField
      DisplayLabel = 'Destinatário'
      DisplayWidth = 38
      FieldName = 'CLIF_RAZA'
      Visible = False
      FixedChar = True
      Size = 50
    end
    object Q_NFCLIN_RAZA: TStringField
      DisplayLabel = 'Emitente'
      DisplayWidth = 38
      FieldName = 'CLIN_RAZA'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_RAZA'
      Visible = False
      FixedChar = True
      Size = 50
    end
    object Q_NFNFI_CODI: TAutoIncField
      FieldName = 'NFI_CODI'
      Origin = 'NBFDADOS.nf.NFI_CODI'
      Visible = False
    end
    object Q_NFTDOC_ID: TIntegerField
      FieldName = 'TDOC_ID'
      Origin = 'NBFDADOS.nf.TDOC_ID'
      Visible = False
    end
    object Q_NFNFI_EMIT_ORIG: TStringField
      FieldName = 'NFI_EMIT_ORIG'
      Origin = 'NBFDADOS.nf.NFI_EMIT_ORIG'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_NFNFI_EMIT_CLI: TIntegerField
      FieldName = 'NFI_EMIT_CLI'
      Origin = 'NBFDADOS.nf.NFI_EMIT_CLI'
      Visible = False
    end
    object Q_NFNFI_DEST_ORIG: TStringField
      FieldName = 'NFI_DEST_ORIG'
      Origin = 'NBFDADOS.nf.NFI_DEST_ORIG'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_NFNFI_DEST_CLI: TIntegerField
      FieldName = 'NFI_DEST_CLI'
      Origin = 'NBFDADOS.nf.NFI_DEST_CLI'
      Visible = False
    end
    object Q_NFNFI_DEST_RAZA: TStringField
      FieldName = 'NFI_DEST_RAZA'
      Origin = 'NBFDADOS.nf.NFI_DEST_RAZA'
      Visible = False
      FixedChar = True
      Size = 50
    end
    object Q_NFNFI_DEST_ENDERECO: TStringField
      FieldName = 'NFI_DEST_ENDERECO'
      Origin = 'NBFDADOS.nf.NFI_DEST_ENDERECO'
      Visible = False
      FixedChar = True
      Size = 50
    end
    object Q_NFNFI_DEST_COMPL: TStringField
      FieldName = 'NFI_DEST_COMPL'
      Origin = 'NBFDADOS.nf.NFI_DEST_COMPL'
      Visible = False
      FixedChar = True
    end
    object Q_NFNFI_DEST_BAIRRO: TStringField
      FieldName = 'NFI_DEST_BAIRRO'
      Origin = 'NBFDADOS.nf.NFI_DEST_BAIRRO'
      Visible = False
      FixedChar = True
      Size = 40
    end
    object Q_NFNFI_DEST_UF_SIGLA: TStringField
      FieldName = 'NFI_DEST_UF_SIGLA'
      Origin = 'NBFDADOS.nf.NFI_DEST_UF_SIGLA'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object Q_NFNFI_DEST_CEP: TStringField
      FieldName = 'NFI_DEST_CEP'
      Origin = 'NBFDADOS.nf.NFI_DEST_CEP'
      Visible = False
      FixedChar = True
      Size = 8
    end
    object Q_NFNFI_DEST_TEL: TStringField
      FieldName = 'NFI_DEST_TEL'
      Origin = 'NBFDADOS.nf.NFI_DEST_TEL'
      Visible = False
      FixedChar = True
      Size = 11
    end
    object Q_NFNFI_DEST_FAX: TStringField
      FieldName = 'NFI_DEST_FAX'
      Origin = 'NBFDADOS.nf.NFI_DEST_FAX'
      Visible = False
      FixedChar = True
      Size = 11
    end
    object Q_NFNFI_DEST_CGC: TStringField
      FieldName = 'NFI_DEST_CGC'
      Origin = 'NBFDADOS.nf.NFI_DEST_CGC'
      Visible = False
      FixedChar = True
      Size = 14
    end
    object Q_NFNFI_DEST_INSCRG: TStringField
      FieldName = 'NFI_DEST_INSCRG'
      Origin = 'NBFDADOS.nf.NFI_DEST_INSCRG'
      Visible = False
      FixedChar = True
    end
    object Q_NFNFI_DEST_INSCTRB: TStringField
      FieldName = 'NFI_DEST_INSCTRB'
      Origin = 'NBFDADOS.nf.NFI_DEST_INSCTRB'
      Visible = False
      FixedChar = True
    end
    object Q_NFNFI_DEST_PESS: TStringField
      FieldName = 'NFI_DEST_PESS'
      Origin = 'NBFDADOS.nf.NFI_DEST_PESS'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_NFNFI_VDES: TFloatField
      FieldName = 'NFI_VDES'
      Origin = 'NBFDADOS.nf.NFI_VDES'
      Visible = False
    end
    object Q_NFNFI_VFRE: TFloatField
      FieldName = 'NFI_VFRE'
      Origin = 'NBFDADOS.nf.NFI_VFRE'
      Visible = False
    end
    object Q_NFNFI_VSEG: TFloatField
      FieldName = 'NFI_VSEG'
      Origin = 'NBFDADOS.nf.NFI_VSEG'
      Visible = False
    end
    object Q_NFNFI_BIPI: TFloatField
      FieldName = 'NFI_BIPI'
      Origin = 'NBFDADOS.nf.NFI_BIPI'
      Visible = False
    end
    object Q_NFNFI_VIPI: TFloatField
      FieldName = 'NFI_VIPI'
      Origin = 'NBFDADOS.nf.NFI_VIPI'
      Visible = False
    end
    object Q_NFNFI_BICM: TFloatField
      FieldName = 'NFI_BICM'
      Origin = 'NBFDADOS.nf.NFI_BICM'
      Visible = False
    end
    object Q_NFNFI_VICM: TFloatField
      FieldName = 'NFI_VICM'
      Origin = 'NBFDADOS.nf.NFI_VICM'
      Visible = False
    end
    object Q_NFNFI_VMER: TFloatField
      FieldName = 'NFI_VMER'
      Origin = 'NBFDADOS.nf.NFI_VMER'
      Visible = False
    end
    object Q_NFNFI_TOTA: TFloatField
      FieldName = 'NFI_TOTA'
      Origin = 'NBFDADOS.nf.NFI_TOTA'
      Visible = False
    end
    object Q_NFNFI_DSAI: TDateTimeField
      FieldName = 'NFI_DSAI'
      Origin = 'NBFDADOS.nf.NFI_DSAI'
      Visible = False
    end
    object Q_NFNFI_HSAI: TDateTimeField
      FieldName = 'NFI_HSAI'
      Origin = 'NBFDADOS.nf.NFI_HSAI'
      Visible = False
    end
    object Q_NFNFI_TRAN: TStringField
      FieldName = 'NFI_TRAN'
      Origin = 'NBFDADOS.nf.NFI_TRAN'
      Visible = False
      FixedChar = True
      Size = 50
    end
    object Q_NFNFI_PLAC: TStringField
      FieldName = 'NFI_PLAC'
      Origin = 'NBFDADOS.nf.NFI_PLAC'
      Visible = False
      FixedChar = True
      Size = 50
    end
    object Q_NFNFI_UF_SIGLA: TStringField
      FieldName = 'NFI_UF_SIGLA'
      Origin = 'NBFDADOS.nf.NFI_UF_SIGLA'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object Q_NFNFI_MARC: TStringField
      FieldName = 'NFI_MARC'
      Origin = 'NBFDADOS.nf.NFI_MARC'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object Q_NFNFI_QTDE: TIntegerField
      FieldName = 'NFI_QTDE'
      Origin = 'NBFDADOS.nf.NFI_QTDE'
      Visible = False
    end
    object Q_NFNFI_ESPE: TStringField
      FieldName = 'NFI_ESPE'
      Origin = 'NBFDADOS.nf.NFI_ESPE'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object Q_NFNFI_PLIQ: TFloatField
      FieldName = 'NFI_PLIQ'
      Origin = 'NBFDADOS.nf.NFI_PLIQ'
      Visible = False
    end
    object Q_NFNFI_PBRU: TFloatField
      FieldName = 'NFI_PBRU'
      Origin = 'NBFDADOS.nf.NFI_PBRU'
      Visible = False
    end
    object Q_NFNFI_VOL: TFloatField
      FieldName = 'NFI_VOL'
      Origin = 'NBFDADOS.nf.NFI_VOL'
      Visible = False
    end
    object Q_NFNFI_TFRE: TStringField
      FieldName = 'NFI_TFRE'
      Origin = 'NBFDADOS.nf.NFI_TFRE'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_NFCFA_ID: TIntegerField
      FieldName = 'CFA_ID'
      Origin = 'NBFDADOS.nf.CFA_ID'
      Visible = False
    end
    object Q_NFOS_ID: TIntegerField
      FieldName = 'OS_ID'
      Origin = 'NBFDADOS.nf.OS_ID'
      Visible = False
    end
    object Q_NFMUN_ID: TIntegerField
      FieldName = 'MUN_ID'
      Origin = 'NBFDADOS.nf.MUN_ID'
      Visible = False
    end
    object Q_NFNFI_MARCADOR: TStringField
      FieldName = 'NFI_MARCADOR'
      Origin = 'NBFDADOS.nf.NFI_MARCADOR'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_NFNFI_DTENTREGA: TDateTimeField
      FieldName = 'NFI_DTENTREGA'
      Origin = 'NBFDADOS.nf.NFI_DTENTREGA'
      Visible = False
    end
    object Q_NFMANI_ID: TIntegerField
      FieldName = 'MANI_ID'
      Origin = 'NBFDADOS.nf.MANI_ID'
      Visible = False
    end
    object Q_NFMANI_ORDEM: TIntegerField
      FieldName = 'MANI_ORDEM'
      Origin = 'NBFDADOS.nf.MANI_ORDEM'
      Visible = False
    end
    object Q_NFNFI_MOVESTQ: TStringField
      FieldName = 'NFI_MOVESTQ'
      Origin = 'NBFDADOS.nf.NFI_MOVESTQ'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_NFNFI_TRANS: TStringField
      FieldName = 'NFI_TRANS'
      Origin = 'NBFDADOS.nf.NFI_TRANS'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_NFTEXTO_LIVRE: TMemoField
      FieldName = 'TEXTO_LIVRE'
      Origin = 'NBFDADOS.nf.TEXTO_LIVRE'
      Visible = False
      BlobType = ftMemo
    end
    object Q_NFNFI_DTENTREGA_FIM: TDateTimeField
      FieldName = 'NFI_DTENTREGA_FIM'
      Origin = 'NBFDADOS.nf.NFI_DTENTREGA_FIM'
      Visible = False
    end
    object Q_NFNFI_ENTREGA: TStringField
      FieldName = 'NFI_ENTREGA'
      Origin = 'NBFDADOS.nf.NFI_ENTREGA'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_NFNFI_COBRAR: TStringField
      FieldName = 'NFI_COBRAR'
      Origin = 'NBFDADOS.nf.NFI_COBRAR'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_NFNFI_CLONE: TStringField
      FieldName = 'NFI_CLONE'
      Origin = 'NBFDADOS.nf.NFI_CLONE'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_NFNFI_QTDEPALLET: TIntegerField
      FieldName = 'NFI_QTDEPALLET'
      Origin = 'NBFDADOS.nf.NFI_QTDEPALLET'
      Visible = False
    end
    object Q_NFNFI_QTDEUV: TFloatField
      FieldName = 'NFI_QTDEUV'
      Origin = 'NBFDADOS.nf.NFI_QTDEUV'
      Visible = False
    end
    object Q_NFTPRO_ID: TIntegerField
      FieldName = 'TPRO_ID'
      Origin = 'NBFDADOS.nf.TPRO_ID'
      Visible = False
    end
    object Q_NFNFI_MARCADOR_NFRS: TStringField
      FieldName = 'NFI_MARCADOR_NFRS'
      Origin = 'NBFDADOS.nf.NFI_MARCADOR_NFRS'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_NFNFI_NFRS_REJEITADA: TStringField
      FieldName = 'NFI_NFRS_REJEITADA'
      Origin = 'NBFDADOS.nf.NFI_NFRS_REJEITADA'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_NFNFI_RETORNADA: TStringField
      FieldName = 'NFI_RETORNADA'
      Origin = 'NBFDADOS.nf.NFI_RETORNADA'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_NFNFI_GEROUNFE: TStringField
      FieldName = 'NFI_GEROUNFE'
      Origin = 'NBFDADOS.nf.NFI_GEROUNFE'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_NFNFI_REDESPACHO: TStringField
      FieldName = 'NFI_REDESPACHO'
      Origin = 'NBFDADOS.nf.NFI_REDESPACHO'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_NFORD_ID: TIntegerField
      FieldName = 'ORD_ID'
      Origin = 'NBFDADOS.nf.ORD_ID'
      Visible = False
    end
    object Q_NFTRANS_ID: TIntegerField
      FieldName = 'TRANS_ID'
      Origin = 'NBFDADOS.nf.TRANS_ID'
      Visible = False
    end
    object Q_NFNFI_PRESTSERV: TStringField
      FieldName = 'NFI_PRESTSERV'
      Origin = 'NBFDADOS.nf.NFI_PRESTSERV'
      Visible = False
      FixedChar = True
      Size = 25
    end
    object Q_NFNFI_FATURADA: TStringField
      FieldName = 'NFI_FATURADA'
      Origin = 'NBFDADOS.nf.NFI_FATURADA'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object Q_NFFAT_ID: TIntegerField
      FieldName = 'FAT_ID'
      Origin = 'NBFDADOS.nf.FAT_ID'
      Visible = False
    end
    object Q_NFNFI_MARCAREEN: TStringField
      FieldName = 'NFI_MARCAREEN'
      Origin = 'NBFDADOS.nf.NFI_MARCAREEN'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_NFNFI_STATUS: TStringField
      FieldName = 'NFI_STATUS'
      Origin = 'NBFDADOS.nf.NFI_STATUS'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_NFNFI_CODI_ORIGINOUNFRS: TIntegerField
      FieldName = 'NFI_CODI_ORIGINOUNFRS'
      Origin = 'NBFDADOS.nf.NFI_CODI_ORIGINOUNFRS'
      Visible = False
    end
    object Q_NFCLIN_ENDERECO: TStringField
      FieldName = 'CLIN_ENDERECO'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_ENDERECO'
      Visible = False
      FixedChar = True
      Size = 50
    end
    object Q_NFCLIN_ENDERECO_COMPL: TStringField
      FieldName = 'CLIN_ENDERECO_COMPL'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_ENDERECO_COMPL'
      Visible = False
      FixedChar = True
      Size = 35
    end
    object Q_NFCLIN_ENDERECO_BAIRRO: TStringField
      FieldName = 'CLIN_ENDERECO_BAIRRO'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_ENDERECO_BAIRRO'
      Visible = False
      FixedChar = True
      Size = 40
    end
    object Q_NFMUN_NOME: TStringField
      FieldName = 'MUN_NOME'
      Origin = 'NBFDADOS.municipio.MUN_NOME'
      Visible = False
      FixedChar = True
      Size = 40
    end
    object Q_NFCLIN_INSCRG: TStringField
      FieldName = 'CLIN_INSCRG'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_INSCRG'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object Q_NFUF_SIGLA: TStringField
      FieldName = 'UF_SIGLA'
      Origin = 'NBFDADOS.CLIENTENBF.UF_SIGLA'
      Visible = False
      FixedChar = True
      Size = 2
    end
  end
  object DS_NF: TwwDataSource
    DataSet = cdsNF
    Left = 27
    Top = 324
  end
  object Q_AUX: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    ValidateWithMask = True
    Left = 168
    Top = 172
  end
  object Q_FAT: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    DataSource = DS_NF
    SQL.Strings = (
      'select * from FATURAMENTO where '
      'CFA_ID = :CFA_ID order by CFA_COdi')
    PictureMasks.Strings = (
      'CFA_CODI'#9'#[#][#]'#9'T'#9'T')
    ValidateWithMask = True
    Left = 311
    Top = 176
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CFA_ID'
        ParamType = ptUnknown
      end>
    object Q_FATCFA_CODI: TStringField
      DisplayLabel = 'CFO'
      DisplayWidth = 10
      FieldName = 'CFA_CODI'
      Origin = 'NBFDADOS.FATURAMENTO.CFA_CODI'
      EditMask = '9.999;0;_'
      FixedChar = True
      Size = 4
    end
    object Q_FATCFA_DCFO: TStringField
      DisplayLabel = 'Descrição'
      DisplayWidth = 40
      FieldName = 'CFA_DCFO'
      Origin = 'NBFDADOS.FATURAMENTO.CFA_DCFO'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object Q_FATCFA_DCCF: TStringField
      DisplayLabel = 'Descrição Complementar'
      DisplayWidth = 40
      FieldName = 'CFA_DCCF'
      Origin = 'NBFDADOS.FATURAMENTO.CFA_DCCF'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object Q_FATTDOC_ID: TIntegerField
      FieldName = 'TDOC_ID'
      Origin = 'NBFDADOS.FATURAMENTO.TDOC_ID'
      Visible = False
    end
    object Q_FATCFA_TPA1: TStringField
      FieldName = 'CFA_TPA1'
      Origin = 'NBFDADOS.FATURAMENTO.CFA_TPA1'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object Q_FATCFA_TPA2: TStringField
      FieldName = 'CFA_TPA2'
      Origin = 'NBFDADOS.FATURAMENTO.CFA_TPA2'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object Q_FATCFA_TPA3: TStringField
      FieldName = 'CFA_TPA3'
      Origin = 'NBFDADOS.FATURAMENTO.CFA_TPA3'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object Q_FATCFA_TICM: TStringField
      FieldName = 'CFA_TICM'
      Origin = 'NBFDADOS.FATURAMENTO.CFA_TICM'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_FATCFA_RICM: TFloatField
      FieldName = 'CFA_RICM'
      Origin = 'NBFDADOS.FATURAMENTO.CFA_RICM'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_FATCFA_FICM: TStringField
      FieldName = 'CFA_FICM'
      Origin = 'NBFDADOS.FATURAMENTO.CFA_FICM'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_FATCFA_IIPI: TStringField
      FieldName = 'CFA_IIPI'
      Origin = 'NBFDADOS.FATURAMENTO.CFA_IIPI'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_FATCFA_TIPI: TStringField
      FieldName = 'CFA_TIPI'
      Origin = 'NBFDADOS.FATURAMENTO.CFA_TIPI'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_FATCFA_FISS: TStringField
      FieldName = 'CFA_FISS'
      Origin = 'NBFDADOS.FATURAMENTO.CFA_FISS'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_FATCFA_AISS: TFloatField
      FieldName = 'CFA_AISS'
      Origin = 'NBFDADOS.FATURAMENTO.CFA_AISS'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_FATCFA_GDUP: TStringField
      FieldName = 'CFA_GDUP'
      Origin = 'NBFDADOS.FATURAMENTO.CFA_GDUP'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_FATCFA_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'CFA_ID'
      Origin = 'NBFDADOS.FATURAMENTO.CFA_ID'
      Visible = False
    end
  end
  object UPD_NF: TUpdateSQL
    ModifySQL.Strings = (
      'update NF'
      'set'
      '  NFI_NUMERO = :NFI_NUMERO,'
      '  TDOC_ID = :TDOC_ID,'
      '  NFI_EMIT_ORIG = :NFI_EMIT_ORIG,'
      '  NFI_EMIT_CLI = :NFI_EMIT_CLI,'
      '  NFI_DEST_ORIG = :NFI_DEST_ORIG,'
      '  NFI_DEST_CLI = :NFI_DEST_CLI,'
      '  NFI_DEST_NOME = :NFI_DEST_NOME,'
      '  NFI_DEST_RAZA = :NFI_DEST_RAZA,'
      '  NFI_DEST_ENDERECO = :NFI_DEST_ENDERECO,'
      '  NFI_DEST_COMPL = :NFI_DEST_COMPL,'
      '  NFI_DEST_BAIRRO = :NFI_DEST_BAIRRO,'
      '  NFI_DEST_UF_SIGLA = :NFI_DEST_UF_SIGLA,'
      '  NFI_DEST_CEP = :NFI_DEST_CEP,'
      '  NFI_DEST_TEL = :NFI_DEST_TEL,'
      '  NFI_DEST_FAX = :NFI_DEST_FAX,'
      '  NFI_DEST_CGC = :NFI_DEST_CGC,'
      '  NFI_DEST_INSCRG = :NFI_DEST_INSCRG,'
      '  NFI_DEST_INSCTRB = :NFI_DEST_INSCTRB,'
      '  NFI_DEST_PESS = :NFI_DEST_PESS,'
      '  NFI_VDES = :NFI_VDES,'
      '  NFI_VFRE = :NFI_VFRE,'
      '  NFI_VSEG = :NFI_VSEG,'
      '  NFI_BIPI = :NFI_BIPI,'
      '  NFI_VIPI = :NFI_VIPI,'
      '  NFI_BICM = :NFI_BICM,'
      '  NFI_VICM = :NFI_VICM,'
      '  NFI_VMER = :NFI_VMER,'
      '  NFI_TOTA = :NFI_TOTA,'
      '  NFI_DSAI = :NFI_DSAI,'
      '  NFI_HSAI = :NFI_HSAI,'
      '  NFI_TRAN = :NFI_TRAN,'
      '  NFI_PLAC = :NFI_PLAC,'
      '  NFI_UF_SIGLA = :NFI_UF_SIGLA,'
      '  NFI_MARC = :NFI_MARC,'
      '  NFI_QTDE = :NFI_QTDE,'
      '  NFI_ESPE = :NFI_ESPE,'
      '  NFI_PLIQ = :NFI_PLIQ,'
      '  NFI_PBRU = :NFI_PBRU,'
      '  NFI_VOL = :NFI_VOL,'
      '  NFI_TFRE = :NFI_TFRE,'
      '  NFI_DEMI = :NFI_DEMI,'
      '  CFA_ID = :CFA_ID,'
      '  OS_ID = :OS_ID,'
      '  MUN_ID = :MUN_ID,'
      '  NFI_MARCADOR = :NFI_MARCADOR,'
      '  NFI_DTENTREGA = :NFI_DTENTREGA,'
      '  MANI_ID = :MANI_ID,'
      '  MANI_ORDEM = :MANI_ORDEM,'
      '  NFI_MOVESTQ = :NFI_MOVESTQ,'
      '  NFI_TRANS = :NFI_TRANS,'
      '  TEXTO_LIVRE = :TEXTO_LIVRE,'
      '  NFI_DTENTREGA_FIM = :NFI_DTENTREGA_FIM,'
      '  NFI_ENTREGA = :NFI_ENTREGA,'
      '  NFI_COBRAR = :NFI_COBRAR,'
      '  NFI_CLONE = :NFI_CLONE,'
      '  NFI_QTDEPALLET = :NFI_QTDEPALLET,'
      '  NFI_QTDEUV = :NFI_QTDEUV,'
      '  TPRO_ID = :TPRO_ID,'
      '  NFI_MARCADOR_NFRS = :NFI_MARCADOR_NFRS,'
      '  NFI_NFRS_REJEITADA = :NFI_NFRS_REJEITADA,'
      '  NFI_RETORNADA = :NFI_RETORNADA,'
      '  NFI_GEROUNFE = :NFI_GEROUNFE,'
      '  NFI_REDESPACHO = :NFI_REDESPACHO,'
      '  ORD_ID = :ORD_ID,'
      '  TRANS_ID = :TRANS_ID,'
      '  NFI_PRESTSERV = :NFI_PRESTSERV,'
      '  NFI_FATURADA = :NFI_FATURADA,'
      '  NFI_DISCRIM = :NFI_DISCRIM,'
      '  FAT_ID = :FAT_ID,'
      '  NFI_MARCAREEN = :NFI_MARCAREEN,'
      '  NFI_STATUS = :NFI_STATUS,'
      '  NFI_MARCAIMP = :NFI_MARCAIMP,'
      '  NFI_CODI_ORIGINOUNFRS = :NFI_CODI_ORIGINOUNFRS,'
      '  CLIN_RAZA = :CLIN_RAZA,'
      '  CLIN_ENDERECO = :CLIN_ENDERECO,'
      '  CLIN_ENDERECO_COMPL = :CLIN_ENDERECO_COMPL,'
      '  CLIN_ENDERECO_BAIRRO = :CLIN_ENDERECO_BAIRRO,'
      '  CLIN_INSCRG = :CLIN_INSCRG,'
      '  UF_SIGLA = :UF_SIGLA,'
      '  MUN_NOME = :MUN_NOME,'
      '  CLIF_RAZA = :CLIF_RAZA'
      'where'
      '  NFI_CODI = :OLD_NFI_CODI')
    InsertSQL.Strings = (
      'insert into NF'
      
        '  (NFI_NUMERO, TDOC_ID, NFI_EMIT_ORIG, NFI_EMIT_CLI, NFI_DEST_OR' +
        'IG, NFI_DEST_CLI, '
      
        '   NFI_DEST_NOME, NFI_DEST_RAZA, NFI_DEST_ENDERECO, NFI_DEST_COM' +
        'PL, NFI_DEST_BAIRRO, '
      
        '   NFI_DEST_UF_SIGLA, NFI_DEST_CEP, NFI_DEST_TEL, NFI_DEST_FAX, ' +
        'NFI_DEST_CGC, '
      
        '   NFI_DEST_INSCRG, NFI_DEST_INSCTRB, NFI_DEST_PESS, NFI_VDES, N' +
        'FI_VFRE, '
      
        '   NFI_VSEG, NFI_BIPI, NFI_VIPI, NFI_BICM, NFI_VICM, NFI_VMER, N' +
        'FI_TOTA, '
      
        '   NFI_DSAI, NFI_HSAI, NFI_TRAN, NFI_PLAC, NFI_UF_SIGLA, NFI_MAR' +
        'C, NFI_QTDE, '
      
        '   NFI_ESPE, NFI_PLIQ, NFI_PBRU, NFI_VOL, NFI_TFRE, NFI_DEMI, CF' +
        'A_ID, OS_ID, '
      
        '   MUN_ID, NFI_MARCADOR, NFI_DTENTREGA, MANI_ID, MANI_ORDEM, NFI' +
        '_MOVESTQ, '
      
        '   NFI_TRANS, TEXTO_LIVRE, NFI_DTENTREGA_FIM, NFI_ENTREGA, NFI_C' +
        'OBRAR, '
      
        '   NFI_CLONE, NFI_QTDEPALLET, NFI_QTDEUV, TPRO_ID, NFI_MARCADOR_' +
        'NFRS, NFI_NFRS_REJEITADA, '
      
        '   NFI_RETORNADA, NFI_GEROUNFE, NFI_REDESPACHO, ORD_ID, TRANS_ID' +
        ', NFI_PRESTSERV, '
      
        '   NFI_FATURADA, NFI_DISCRIM, FAT_ID, NFI_MARCAREEN, NFI_STATUS,' +
        ' NFI_MARCAIMP, '
      
        '   NFI_CODI_ORIGINOUNFRS, CLIN_RAZA, CLIN_ENDERECO, CLIN_ENDEREC' +
        'O_COMPL, '
      
        '   CLIN_ENDERECO_BAIRRO, CLIN_INSCRG, UF_SIGLA, MUN_NOME, CLIF_R' +
        'AZA)'
      'values'
      
        '  (:NFI_NUMERO, :TDOC_ID, :NFI_EMIT_ORIG, :NFI_EMIT_CLI, :NFI_DE' +
        'ST_ORIG, '
      
        '   :NFI_DEST_CLI, :NFI_DEST_NOME, :NFI_DEST_RAZA, :NFI_DEST_ENDE' +
        'RECO, :NFI_DEST_COMPL, '
      
        '   :NFI_DEST_BAIRRO, :NFI_DEST_UF_SIGLA, :NFI_DEST_CEP, :NFI_DES' +
        'T_TEL, '
      
        '   :NFI_DEST_FAX, :NFI_DEST_CGC, :NFI_DEST_INSCRG, :NFI_DEST_INS' +
        'CTRB, :NFI_DEST_PESS, '
      
        '   :NFI_VDES, :NFI_VFRE, :NFI_VSEG, :NFI_BIPI, :NFI_VIPI, :NFI_B' +
        'ICM, :NFI_VICM, '
      
        '   :NFI_VMER, :NFI_TOTA, :NFI_DSAI, :NFI_HSAI, :NFI_TRAN, :NFI_P' +
        'LAC, :NFI_UF_SIGLA, '
      
        '   :NFI_MARC, :NFI_QTDE, :NFI_ESPE, :NFI_PLIQ, :NFI_PBRU, :NFI_V' +
        'OL, :NFI_TFRE, '
      
        '   :NFI_DEMI, :CFA_ID, :OS_ID, :MUN_ID, :NFI_MARCADOR, :NFI_DTEN' +
        'TREGA, '
      
        '   :MANI_ID, :MANI_ORDEM, :NFI_MOVESTQ, :NFI_TRANS, :TEXTO_LIVRE' +
        ', :NFI_DTENTREGA_FIM, '
      
        '   :NFI_ENTREGA, :NFI_COBRAR, :NFI_CLONE, :NFI_QTDEPALLET, :NFI_' +
        'QTDEUV, '
      
        '   :TPRO_ID, :NFI_MARCADOR_NFRS, :NFI_NFRS_REJEITADA, :NFI_RETOR' +
        'NADA, :NFI_GEROUNFE, '
      
        '   :NFI_REDESPACHO, :ORD_ID, :TRANS_ID, :NFI_PRESTSERV, :NFI_FAT' +
        'URADA, '
      
        '   :NFI_DISCRIM, :FAT_ID, :NFI_MARCAREEN, :NFI_STATUS, :NFI_MARC' +
        'AIMP, :NFI_CODI_ORIGINOUNFRS, '
      
        '   :CLIN_RAZA, :CLIN_ENDERECO, :CLIN_ENDERECO_COMPL, :CLIN_ENDER' +
        'ECO_BAIRRO, '
      '   :CLIN_INSCRG, :UF_SIGLA, :MUN_NOME, :CLIF_RAZA)')
    DeleteSQL.Strings = (
      'delete from NF'
      'where'
      '  NFI_CODI = :OLD_NFI_CODI')
    Left = 491
    Top = 172
  end
  object T_ACEN: TwwTable
    DatabaseName = 'NBF'
    TableName = 'Acentuacao.DB'
    SyncSQLByRange = True
    NarrowSearch = False
    ValidateWithMask = True
    Left = 624
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
  object Q_AUX2: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    ValidateWithMask = True
    Left = 694
    Top = 476
  end
  object Q_CLI: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      ' Select A.NFI_NUMERO,B.CLIN_RAZA,B.CLIN_ENDERECO,  A.NFI_SERIE,'
      ' CLIN_ENDERECO_COMPL, CLIN_ENDERECO_BAIRRO,'
      ' B.CLIN_INSCRG,B.UF_SIGLA,'
      'B.CLIN_CGCCPF,C.MUN_NOME'
      ' from nf A,CLIENTENBF B, municipio C'
      ' where A.NFI_EMIT_CLI = B.CLIN_ID'
      ' and     A.MUN_ID = C.MUN_ID')
    PictureMasks.Strings = (
      'CFA_CODI'#9'#[#][#]'#9'T'#9'T')
    ValidateWithMask = True
    Left = 239
    Top = 176
    object Q_CLICLIN_RAZA: TStringField
      FieldName = 'CLIN_RAZA'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_RAZA'
      FixedChar = True
      Size = 50
    end
    object Q_CLICLIN_ENDERECO: TStringField
      FieldName = 'CLIN_ENDERECO'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_ENDERECO'
      FixedChar = True
      Size = 50
    end
    object Q_CLICLIN_ENDERECO_COMPL: TStringField
      FieldName = 'CLIN_ENDERECO_COMPL'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_ENDERECO_COMPL'
      FixedChar = True
      Size = 35
    end
    object Q_CLICLIN_ENDERECO_BAIRRO: TStringField
      FieldName = 'CLIN_ENDERECO_BAIRRO'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_ENDERECO_BAIRRO'
      FixedChar = True
      Size = 40
    end
    object Q_CLICLIN_INSCRG: TStringField
      FieldName = 'CLIN_INSCRG'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_INSCRG'
      FixedChar = True
      Size = 15
    end
    object Q_CLIUF_SIGLA: TStringField
      FieldName = 'UF_SIGLA'
      Origin = 'NBFDADOS.CLIENTENBF.UF_SIGLA'
      FixedChar = True
      Size = 2
    end
    object Q_CLIMUN_NOME: TStringField
      FieldName = 'MUN_NOME'
      Origin = 'NBFDADOS.municipio.MUN_NOME'
      FixedChar = True
      Size = 40
    end
    object Q_CLINFI_NUMERO: TStringField
      FieldName = 'NFI_NUMERO'
      Origin = 'NBFDADOS.nf.NFI_NUMERO'
      FixedChar = True
      Size = 10
    end
    object Q_CLICLIN_CGCCPF: TStringField
      FieldName = 'CLIN_CGCCPF'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_CGCCPF'
      FixedChar = True
      Size = 15
    end
    object Q_CLINFI_SERIE: TStringField
      FieldName = 'NFI_SERIE'
      Origin = 'NBFDADOS.NF.NFI_SERIE'
      FixedChar = True
      Size = 2
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
    Left = 567
    Top = 223
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
  end
  object qrFormularios: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select count(PRO_ID) as items'
      'from NF_ITENS'
      'WHERE NFI_CODI = :NFI_CODI')
    ValidateWithMask = True
    Left = 395
    Top = 180
    ParamData = <
      item
        DataType = ftInteger
        Name = 'NFI_CODI'
        ParamType = ptInput
      end>
    object qrFormulariositems: TIntegerField
      FieldName = 'items'
      Origin = 'NBFDADOS.NF_ITENS.PRO_ID'
    end
  end
  object Q_AUX3: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    ValidateWithMask = True
    Left = 539
    Top = 452
  end
  object ADOQuery1: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    SQL.Strings = (
      'Select nfi_discrim'
      'from nf'
      'where nfi_codi = :codigo')
    Left = 523
    Top = 356
    object ADOQuery1nfi_discrim: TStringField
      FieldName = 'nfi_discrim'
      Size = 2000
    end
  end
  object qrRetornaEstoque: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      
        'SELECT      NF_ITENS.PRO_ID, NF.NFI_EMIT_CLI, NF_ITENS.INF_QTDER' +
        'ETORNADA'
      'FROM         NF, NF_ITENS'
      'where NF_ITENS.NFI_CODI = :nfi_codi'
      'and  NF.NFI_CODI = NF_ITENS.NFI_CODI')
    ValidateWithMask = True
    Left = 704
    Top = 164
    ParamData = <
      item
        DataType = ftInteger
        Name = 'nfi_codi'
        ParamType = ptInput
        Value = '0'
      end>
    object qrRetornaEstoquePRO_ID: TIntegerField
      FieldName = 'PRO_ID'
      Origin = 'NBFDADOS.NF_ITENS.PRO_ID'
    end
    object qrRetornaEstoqueNFI_EMIT_CLI: TIntegerField
      FieldName = 'NFI_EMIT_CLI'
      Origin = 'NBFDADOS.NF.NFI_EMIT_CLI'
    end
    object qrRetornaEstoqueINF_QTDERETORNADA: TFloatField
      FieldName = 'INF_QTDERETORNADA'
      Origin = 'NBFDADOS.NF_ITENS.INF_QTDERETORNADA'
    end
  end
  object qrExec: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'UPDATE NF_ITEN SET QTDERETORNADA = :QTDE'
      'WHERE NFI_CODI = :NFI_CODI'
      'AND PROD_ID = :PROD_ID')
    ValidateWithMask = True
    Left = 696
    Top = 228
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'QTDE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NFI_CODI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PROD_ID'
        ParamType = ptUnknown
      end>
  end
  object qrTotal: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'SELECT     sum(dbo.NF_ITENS.INF_QTDERETORNADA) as Total'
      'FROM         dbo.NF INNER JOIN'
      
        '                      dbo.NF_ITENS ON dbo.NF.NFI_CODI = dbo.NF_I' +
        'TENS.NFI_CODI'
      
        'WHERE     (dbo.NF_ITENS.NFI_CODI > :nota) AND (dbo.NF.NFI_DEST_R' +
        'AZA = :cliente) AND (dbo.NF_ITENS.PRO_ID = :produto)')
    ValidateWithMask = True
    Left = 728
    Top = 276
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nota'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cliente'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'produto'
        ParamType = ptUnknown
      end>
  end
  object qrNotasEntrada: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      
        'SELECT   dbo.NF.NFI_CODI, dbo.NF_ITENS.PRO_ID, dbo.NF_ITENS.INF_' +
        'QTDERETORNADA'
      'FROM         dbo.NF LEFT OUTER JOIN'
      
        '                      dbo.NF_ITENS ON dbo.NF.NFI_CODI = dbo.NF_I' +
        'TENS.NFI_CODI'
      
        'WHERE     (dbo.NF.TDOC_ID = 2) AND (dbo.NF_ITENS.INF_QTDERETORNA' +
        'DA > 0)'
      
        'and (NFI_EMIT_CLI = :CLIN_ID) and (dbo.NF_ITENS.PRO_ID = :prod_i' +
        'd)'
      'order by dbo.NF.NFI_CODi desc')
    ValidateWithMask = True
    Left = 528
    Top = 260
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CLIN_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'prod_id'
        ParamType = ptUnknown
      end>
  end
  object qrCancelaNota: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Exec ApagaNota :Nfi_codi')
    ValidateWithMask = True
    Left = 688
    Top = 348
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Nfi_codi'
        ParamType = ptUnknown
      end>
  end
  object Q_PARAMETRO: TwwQuery
    DatabaseName = 'NBFDADOS'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'SELECT CONNECTIONSTRING, PAR_RAZA,PAR_CNPJ FROM PARAMETRO'
      'WHERE PAR_ID = 2')
    ValidateWithMask = True
    Left = 564
    Top = 164
    object Q_PARAMETROPAR_RAZA: TStringField
      FieldName = 'PAR_RAZA'
      Origin = 'NBFDADOS.PARAMETRO.PAR_RAZA'
      FixedChar = True
      Size = 50
    end
    object Q_PARAMETROPAR_CNPJ: TStringField
      FieldName = 'PAR_CNPJ'
      Origin = 'NBFDADOS.PARAMETRO.PAR_CNPJ'
      FixedChar = True
      Size = 15
    end
    object Q_PARAMETROCONNECTIONSTRING: TStringField
      FieldName = 'CONNECTIONSTRING'
      FixedChar = True
      Size = 255
    end
  end
  object dsNF: TDataSetProvider
    DataSet = Q_NF
    Constraints = True
    UpdateMode = upWhereKeyOnly
    Left = 16
    Top = 224
  end
  object cdsNF: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsNF'
    AfterPost = cdsNFAfterPost
    Left = 24
    Top = 272
    object cdsNFNFI_MARCAIMP: TStringField
      DisplayLabel = '***'
      DisplayWidth = 1
      FieldName = 'NFI_MARCAIMP'
      Origin = 'NBFDADOS.nf.NFI_MARCAIMP'
      OnChange = cdsNFNFI_MARCAIMPChange
      FixedChar = True
      Size = 1
    end
    object cdsNFNFI_NUMERO: TStringField
      DisplayLabel = 'NF Nº'
      DisplayWidth = 10
      FieldName = 'NFI_NUMERO'
      Origin = 'NBFDADOS.nf.NFI_NUMERO'
      ProviderFlags = [pfInWhere]
      FixedChar = True
      Size = 10
    end
    object cdsNFNFI_DEMI: TDateTimeField
      DisplayLabel = 'Dt.Emissão'
      DisplayWidth = 9
      FieldName = 'NFI_DEMI'
      Origin = 'NBFDADOS.nf.NFI_DEMI'
      ProviderFlags = [pfInWhere]
      DisplayFormat = 'DD/MM/YY'
    end
    object cdsNFNFI_DEST_NOME: TStringField
      DisplayLabel = 'Destinatário'
      DisplayWidth = 38
      FieldName = 'NFI_DEST_NOME'
      Origin = 'NBFDADOS.nf.NFI_DEST_NOME'
      ProviderFlags = [pfInWhere]
      FixedChar = True
      Size = 30
    end
    object cdsNFNFI_DISCRIM: TStringField
      DisplayWidth = 255
      FieldName = 'NFI_DISCRIM'
      ProviderFlags = [pfInWhere]
      FixedChar = True
      Size = 255
    end
    object cdsNFCLIF_RAZA: TStringField
      FieldName = 'CLIF_RAZA'
      ProviderFlags = [pfInWhere]
      Visible = False
      FixedChar = True
      Size = 50
    end
    object cdsNFCLIN_RAZA: TStringField
      DisplayLabel = 'Emitente'
      FieldName = 'CLIN_RAZA'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_RAZA'
      ProviderFlags = [pfInWhere]
      Visible = False
      FixedChar = True
      Size = 50
    end
    object cdsNFNFI_CODI: TAutoIncField
      FieldName = 'NFI_CODI'
      Origin = 'NBFDADOS.nf.NFI_CODI'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      Visible = False
    end
    object cdsNFTDOC_ID: TIntegerField
      FieldName = 'TDOC_ID'
      Origin = 'NBFDADOS.nf.TDOC_ID'
      ProviderFlags = [pfInWhere]
      Visible = False
    end
    object cdsNFNFI_EMIT_ORIG: TStringField
      FieldName = 'NFI_EMIT_ORIG'
      Origin = 'NBFDADOS.nf.NFI_EMIT_ORIG'
      ProviderFlags = [pfInWhere]
      Visible = False
      FixedChar = True
      Size = 1
    end
    object cdsNFNFI_EMIT_CLI: TIntegerField
      FieldName = 'NFI_EMIT_CLI'
      Origin = 'NBFDADOS.nf.NFI_EMIT_CLI'
      ProviderFlags = [pfInWhere]
      Visible = False
    end
    object cdsNFNFI_DEST_ORIG: TStringField
      FieldName = 'NFI_DEST_ORIG'
      Origin = 'NBFDADOS.nf.NFI_DEST_ORIG'
      ProviderFlags = [pfInWhere]
      Visible = False
      FixedChar = True
      Size = 1
    end
    object cdsNFNFI_DEST_CLI: TIntegerField
      FieldName = 'NFI_DEST_CLI'
      Origin = 'NBFDADOS.nf.NFI_DEST_CLI'
      ProviderFlags = [pfInWhere]
      Visible = False
    end
    object cdsNFNFI_DEST_RAZA: TStringField
      FieldName = 'NFI_DEST_RAZA'
      Origin = 'NBFDADOS.nf.NFI_DEST_RAZA'
      ProviderFlags = [pfInWhere]
      Visible = False
      FixedChar = True
      Size = 50
    end
    object cdsNFNFI_DEST_ENDERECO: TStringField
      FieldName = 'NFI_DEST_ENDERECO'
      Origin = 'NBFDADOS.nf.NFI_DEST_ENDERECO'
      ProviderFlags = [pfInWhere]
      Visible = False
      FixedChar = True
      Size = 50
    end
    object cdsNFNFI_DEST_COMPL: TStringField
      FieldName = 'NFI_DEST_COMPL'
      Origin = 'NBFDADOS.nf.NFI_DEST_COMPL'
      ProviderFlags = [pfInWhere]
      Visible = False
      FixedChar = True
    end
    object cdsNFNFI_DEST_BAIRRO: TStringField
      FieldName = 'NFI_DEST_BAIRRO'
      Origin = 'NBFDADOS.nf.NFI_DEST_BAIRRO'
      ProviderFlags = [pfInWhere]
      Visible = False
      FixedChar = True
      Size = 40
    end
    object cdsNFNFI_DEST_UF_SIGLA: TStringField
      FieldName = 'NFI_DEST_UF_SIGLA'
      Origin = 'NBFDADOS.nf.NFI_DEST_UF_SIGLA'
      ProviderFlags = [pfInWhere]
      Visible = False
      FixedChar = True
      Size = 2
    end
    object cdsNFNFI_DEST_CEP: TStringField
      FieldName = 'NFI_DEST_CEP'
      Origin = 'NBFDADOS.nf.NFI_DEST_CEP'
      ProviderFlags = [pfInWhere]
      Visible = False
      FixedChar = True
      Size = 8
    end
    object cdsNFNFI_DEST_TEL: TStringField
      FieldName = 'NFI_DEST_TEL'
      Origin = 'NBFDADOS.nf.NFI_DEST_TEL'
      ProviderFlags = [pfInWhere]
      Visible = False
      FixedChar = True
      Size = 11
    end
    object cdsNFNFI_DEST_FAX: TStringField
      FieldName = 'NFI_DEST_FAX'
      Origin = 'NBFDADOS.nf.NFI_DEST_FAX'
      ProviderFlags = [pfInWhere]
      Visible = False
      FixedChar = True
      Size = 11
    end
    object cdsNFNFI_DEST_CGC: TStringField
      FieldName = 'NFI_DEST_CGC'
      Origin = 'NBFDADOS.nf.NFI_DEST_CGC'
      ProviderFlags = [pfInWhere]
      Visible = False
      FixedChar = True
      Size = 14
    end
    object cdsNFNFI_DEST_INSCRG: TStringField
      FieldName = 'NFI_DEST_INSCRG'
      Origin = 'NBFDADOS.nf.NFI_DEST_INSCRG'
      ProviderFlags = [pfInWhere]
      Visible = False
      FixedChar = True
    end
    object cdsNFNFI_DEST_INSCTRB: TStringField
      FieldName = 'NFI_DEST_INSCTRB'
      Origin = 'NBFDADOS.nf.NFI_DEST_INSCTRB'
      ProviderFlags = [pfInWhere]
      Visible = False
      FixedChar = True
    end
    object cdsNFNFI_DEST_PESS: TStringField
      FieldName = 'NFI_DEST_PESS'
      Origin = 'NBFDADOS.nf.NFI_DEST_PESS'
      ProviderFlags = [pfInWhere]
      Visible = False
      FixedChar = True
      Size = 1
    end
    object cdsNFNFI_VDES: TFloatField
      FieldName = 'NFI_VDES'
      Origin = 'NBFDADOS.nf.NFI_VDES'
      ProviderFlags = [pfInWhere]
      Visible = False
    end
    object cdsNFNFI_VFRE: TFloatField
      FieldName = 'NFI_VFRE'
      Origin = 'NBFDADOS.nf.NFI_VFRE'
      ProviderFlags = [pfInWhere]
      Visible = False
    end
    object cdsNFNFI_VSEG: TFloatField
      FieldName = 'NFI_VSEG'
      Origin = 'NBFDADOS.nf.NFI_VSEG'
      ProviderFlags = [pfInWhere]
      Visible = False
    end
    object cdsNFNFI_BIPI: TFloatField
      FieldName = 'NFI_BIPI'
      Origin = 'NBFDADOS.nf.NFI_BIPI'
      ProviderFlags = [pfInWhere]
      Visible = False
    end
    object cdsNFNFI_VIPI: TFloatField
      FieldName = 'NFI_VIPI'
      Origin = 'NBFDADOS.nf.NFI_VIPI'
      ProviderFlags = [pfInWhere]
      Visible = False
    end
    object cdsNFNFI_BICM: TFloatField
      FieldName = 'NFI_BICM'
      Origin = 'NBFDADOS.nf.NFI_BICM'
      ProviderFlags = [pfInWhere]
      Visible = False
    end
    object cdsNFNFI_VICM: TFloatField
      FieldName = 'NFI_VICM'
      Origin = 'NBFDADOS.nf.NFI_VICM'
      ProviderFlags = [pfInWhere]
      Visible = False
    end
    object cdsNFNFI_VMER: TFloatField
      FieldName = 'NFI_VMER'
      Origin = 'NBFDADOS.nf.NFI_VMER'
      ProviderFlags = [pfInWhere]
      Visible = False
    end
    object cdsNFNFI_TOTA: TFloatField
      FieldName = 'NFI_TOTA'
      Origin = 'NBFDADOS.nf.NFI_TOTA'
      ProviderFlags = [pfInWhere]
      Visible = False
    end
    object cdsNFNFI_DSAI: TDateTimeField
      FieldName = 'NFI_DSAI'
      Origin = 'NBFDADOS.nf.NFI_DSAI'
      ProviderFlags = [pfInWhere]
      Visible = False
    end
    object cdsNFNFI_HSAI: TDateTimeField
      FieldName = 'NFI_HSAI'
      Origin = 'NBFDADOS.nf.NFI_HSAI'
      ProviderFlags = [pfInWhere]
      Visible = False
    end
    object cdsNFNFI_TRAN: TStringField
      FieldName = 'NFI_TRAN'
      Origin = 'NBFDADOS.nf.NFI_TRAN'
      ProviderFlags = [pfInWhere]
      Visible = False
      FixedChar = True
      Size = 50
    end
    object cdsNFNFI_PLAC: TStringField
      FieldName = 'NFI_PLAC'
      Origin = 'NBFDADOS.nf.NFI_PLAC'
      ProviderFlags = [pfInWhere]
      Visible = False
      FixedChar = True
      Size = 50
    end
    object cdsNFNFI_UF_SIGLA: TStringField
      FieldName = 'NFI_UF_SIGLA'
      Origin = 'NBFDADOS.nf.NFI_UF_SIGLA'
      ProviderFlags = [pfInWhere]
      Visible = False
      FixedChar = True
      Size = 2
    end
    object cdsNFNFI_MARC: TStringField
      FieldName = 'NFI_MARC'
      Origin = 'NBFDADOS.nf.NFI_MARC'
      ProviderFlags = [pfInWhere]
      Visible = False
      FixedChar = True
      Size = 15
    end
    object cdsNFNFI_QTDE: TIntegerField
      FieldName = 'NFI_QTDE'
      Origin = 'NBFDADOS.nf.NFI_QTDE'
      ProviderFlags = [pfInWhere]
      Visible = False
    end
    object cdsNFNFI_ESPE: TStringField
      FieldName = 'NFI_ESPE'
      Origin = 'NBFDADOS.nf.NFI_ESPE'
      ProviderFlags = [pfInWhere]
      Visible = False
      FixedChar = True
      Size = 15
    end
    object cdsNFNFI_PLIQ: TFloatField
      FieldName = 'NFI_PLIQ'
      Origin = 'NBFDADOS.nf.NFI_PLIQ'
      ProviderFlags = [pfInWhere]
      Visible = False
    end
    object cdsNFNFI_PBRU: TFloatField
      FieldName = 'NFI_PBRU'
      Origin = 'NBFDADOS.nf.NFI_PBRU'
      ProviderFlags = [pfInWhere]
      Visible = False
    end
    object cdsNFNFI_VOL: TFloatField
      FieldName = 'NFI_VOL'
      Origin = 'NBFDADOS.nf.NFI_VOL'
      ProviderFlags = [pfInWhere]
      Visible = False
    end
    object cdsNFNFI_TFRE: TStringField
      FieldName = 'NFI_TFRE'
      Origin = 'NBFDADOS.nf.NFI_TFRE'
      ProviderFlags = [pfInWhere]
      Visible = False
      FixedChar = True
      Size = 1
    end
    object cdsNFCFA_ID: TIntegerField
      FieldName = 'CFA_ID'
      Origin = 'NBFDADOS.nf.CFA_ID'
      ProviderFlags = [pfInWhere]
      Visible = False
    end
    object cdsNFOS_ID: TIntegerField
      FieldName = 'OS_ID'
      Origin = 'NBFDADOS.nf.OS_ID'
      ProviderFlags = [pfInWhere]
      Visible = False
    end
    object cdsNFMUN_ID: TIntegerField
      FieldName = 'MUN_ID'
      Origin = 'NBFDADOS.nf.MUN_ID'
      ProviderFlags = [pfInWhere]
      Visible = False
    end
    object cdsNFNFI_MARCADOR: TStringField
      FieldName = 'NFI_MARCADOR'
      Origin = 'NBFDADOS.nf.NFI_MARCADOR'
      ProviderFlags = [pfInWhere]
      Visible = False
      FixedChar = True
      Size = 1
    end
    object cdsNFNFI_DTENTREGA: TDateTimeField
      FieldName = 'NFI_DTENTREGA'
      Origin = 'NBFDADOS.nf.NFI_DTENTREGA'
      ProviderFlags = [pfInWhere]
      Visible = False
    end
    object cdsNFMANI_ID: TIntegerField
      FieldName = 'MANI_ID'
      Origin = 'NBFDADOS.nf.MANI_ID'
      ProviderFlags = [pfInWhere]
      Visible = False
    end
    object cdsNFMANI_ORDEM: TIntegerField
      FieldName = 'MANI_ORDEM'
      Origin = 'NBFDADOS.nf.MANI_ORDEM'
      ProviderFlags = [pfInWhere]
      Visible = False
    end
    object cdsNFNFI_MOVESTQ: TStringField
      FieldName = 'NFI_MOVESTQ'
      Origin = 'NBFDADOS.nf.NFI_MOVESTQ'
      ProviderFlags = [pfInWhere]
      Visible = False
      FixedChar = True
      Size = 1
    end
    object cdsNFNFI_TRANS: TStringField
      FieldName = 'NFI_TRANS'
      Origin = 'NBFDADOS.nf.NFI_TRANS'
      ProviderFlags = [pfInWhere]
      Visible = False
      FixedChar = True
      Size = 1
    end
    object cdsNFTEXTO_LIVRE: TMemoField
      FieldName = 'TEXTO_LIVRE'
      Origin = 'NBFDADOS.nf.TEXTO_LIVRE'
      ProviderFlags = [pfInWhere]
      Visible = False
      BlobType = ftMemo
    end
    object cdsNFNFI_DTENTREGA_FIM: TDateTimeField
      FieldName = 'NFI_DTENTREGA_FIM'
      Origin = 'NBFDADOS.nf.NFI_DTENTREGA_FIM'
      ProviderFlags = [pfInWhere]
      Visible = False
    end
    object cdsNFNFI_ENTREGA: TStringField
      FieldName = 'NFI_ENTREGA'
      Origin = 'NBFDADOS.nf.NFI_ENTREGA'
      ProviderFlags = [pfInWhere]
      Visible = False
      FixedChar = True
      Size = 1
    end
    object cdsNFNFI_COBRAR: TStringField
      FieldName = 'NFI_COBRAR'
      Origin = 'NBFDADOS.nf.NFI_COBRAR'
      ProviderFlags = [pfInWhere]
      Visible = False
      FixedChar = True
      Size = 1
    end
    object cdsNFNFI_CLONE: TStringField
      FieldName = 'NFI_CLONE'
      Origin = 'NBFDADOS.nf.NFI_CLONE'
      ProviderFlags = [pfInWhere]
      Visible = False
      FixedChar = True
      Size = 1
    end
    object cdsNFNFI_QTDEPALLET: TIntegerField
      FieldName = 'NFI_QTDEPALLET'
      Origin = 'NBFDADOS.nf.NFI_QTDEPALLET'
      ProviderFlags = [pfInWhere]
      Visible = False
    end
    object cdsNFNFI_QTDEUV: TFloatField
      FieldName = 'NFI_QTDEUV'
      Origin = 'NBFDADOS.nf.NFI_QTDEUV'
      ProviderFlags = [pfInWhere]
      Visible = False
    end
    object cdsNFTPRO_ID: TIntegerField
      FieldName = 'TPRO_ID'
      Origin = 'NBFDADOS.nf.TPRO_ID'
      ProviderFlags = [pfInWhere]
      Visible = False
    end
    object cdsNFNFI_MARCADOR_NFRS: TStringField
      FieldName = 'NFI_MARCADOR_NFRS'
      Origin = 'NBFDADOS.nf.NFI_MARCADOR_NFRS'
      ProviderFlags = [pfInWhere]
      Visible = False
      FixedChar = True
      Size = 1
    end
    object cdsNFNFI_NFRS_REJEITADA: TStringField
      FieldName = 'NFI_NFRS_REJEITADA'
      Origin = 'NBFDADOS.nf.NFI_NFRS_REJEITADA'
      ProviderFlags = [pfInWhere]
      Visible = False
      FixedChar = True
      Size = 1
    end
    object cdsNFNFI_RETORNADA: TStringField
      FieldName = 'NFI_RETORNADA'
      Origin = 'NBFDADOS.nf.NFI_RETORNADA'
      ProviderFlags = [pfInWhere]
      Visible = False
      FixedChar = True
      Size = 1
    end
    object cdsNFNFI_GEROUNFE: TStringField
      FieldName = 'NFI_GEROUNFE'
      Origin = 'NBFDADOS.nf.NFI_GEROUNFE'
      ProviderFlags = [pfInWhere]
      Visible = False
      FixedChar = True
      Size = 1
    end
    object cdsNFNFI_REDESPACHO: TStringField
      FieldName = 'NFI_REDESPACHO'
      Origin = 'NBFDADOS.nf.NFI_REDESPACHO'
      ProviderFlags = [pfInWhere]
      Visible = False
      FixedChar = True
      Size = 1
    end
    object cdsNFORD_ID: TIntegerField
      FieldName = 'ORD_ID'
      Origin = 'NBFDADOS.nf.ORD_ID'
      ProviderFlags = [pfInWhere]
      Visible = False
    end
    object cdsNFTRANS_ID: TIntegerField
      FieldName = 'TRANS_ID'
      Origin = 'NBFDADOS.nf.TRANS_ID'
      ProviderFlags = [pfInWhere]
      Visible = False
    end
    object cdsNFNFI_PRESTSERV: TStringField
      FieldName = 'NFI_PRESTSERV'
      Origin = 'NBFDADOS.nf.NFI_PRESTSERV'
      ProviderFlags = [pfInWhere]
      Visible = False
      FixedChar = True
      Size = 25
    end
    object cdsNFNFI_FATURADA: TStringField
      FieldName = 'NFI_FATURADA'
      Origin = 'NBFDADOS.nf.NFI_FATURADA'
      ProviderFlags = [pfInWhere]
      Visible = False
      FixedChar = True
      Size = 10
    end
    object cdsNFFAT_ID: TIntegerField
      FieldName = 'FAT_ID'
      Origin = 'NBFDADOS.nf.FAT_ID'
      ProviderFlags = [pfInWhere]
      Visible = False
    end
    object cdsNFNFI_MARCAREEN: TStringField
      FieldName = 'NFI_MARCAREEN'
      Origin = 'NBFDADOS.nf.NFI_MARCAREEN'
      ProviderFlags = [pfInWhere]
      Visible = False
      FixedChar = True
      Size = 1
    end
    object cdsNFNFI_STATUS: TStringField
      FieldName = 'NFI_STATUS'
      Origin = 'NBFDADOS.nf.NFI_STATUS'
      ProviderFlags = [pfInWhere]
      Visible = False
      FixedChar = True
      Size = 1
    end
    object cdsNFNFI_CODI_ORIGINOUNFRS: TIntegerField
      FieldName = 'NFI_CODI_ORIGINOUNFRS'
      Origin = 'NBFDADOS.nf.NFI_CODI_ORIGINOUNFRS'
      ProviderFlags = [pfInWhere]
      Visible = False
    end
    object cdsNFCLIN_ENDERECO: TStringField
      FieldName = 'CLIN_ENDERECO'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_ENDERECO'
      ProviderFlags = [pfInWhere]
      Visible = False
      FixedChar = True
      Size = 50
    end
    object cdsNFCLIN_ENDERECO_COMPL: TStringField
      FieldName = 'CLIN_ENDERECO_COMPL'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_ENDERECO_COMPL'
      ProviderFlags = [pfInWhere]
      Visible = False
      FixedChar = True
      Size = 35
    end
    object cdsNFCLIN_ENDERECO_BAIRRO: TStringField
      FieldName = 'CLIN_ENDERECO_BAIRRO'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_ENDERECO_BAIRRO'
      ProviderFlags = [pfInWhere]
      Visible = False
      FixedChar = True
      Size = 40
    end
    object cdsNFMUN_NOME: TStringField
      FieldName = 'MUN_NOME'
      Origin = 'NBFDADOS.municipio.MUN_NOME'
      ProviderFlags = [pfInWhere]
      Visible = False
      FixedChar = True
      Size = 40
    end
    object cdsNFCLIN_INSCRG: TStringField
      FieldName = 'CLIN_INSCRG'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_INSCRG'
      ProviderFlags = [pfInWhere]
      Visible = False
      FixedChar = True
      Size = 15
    end
    object cdsNFUF_SIGLA: TStringField
      FieldName = 'UF_SIGLA'
      Origin = 'NBFDADOS.CLIENTENBF.UF_SIGLA'
      ProviderFlags = [pfInWhere]
      Visible = False
      FixedChar = True
      Size = 2
    end
  end
  object qrMunicipio: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select MUN_ID, MUN_NOME from MUNICIPIO')
    ValidateWithMask = True
    Left = 96
    Top = 172
    object qrMunicipioMUN_ID: TAutoIncField
      FieldName = 'MUN_ID'
      Origin = 'NBFDADOS.MUNICIPIO.MUN_ID'
    end
    object qrMunicipioMUN_NOME: TStringField
      FieldName = 'MUN_NOME'
      Origin = 'NBFDADOS.MUNICIPIO.MUN_NOME'
      FixedChar = True
      Size = 40
    end
  end
  object dsMunicipio: TDataSetProvider
    DataSet = qrMunicipio
    Constraints = True
    Left = 96
    Top = 224
  end
  object cdsMunicipio: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsMunicipio'
    Left = 96
    Top = 280
    object cdsMunicipioMUN_ID: TAutoIncField
      FieldName = 'MUN_ID'
      ReadOnly = True
    end
    object cdsMunicipioMUN_NOME: TStringField
      FieldName = 'MUN_NOME'
      FixedChar = True
      Size = 40
    end
  end
  object dsAux: TDataSetProvider
    DataSet = Q_AUX
    Constraints = True
    Left = 168
    Top = 224
  end
  object cdsAux: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsAux'
    Left = 168
    Top = 280
  end
  object dspCli: TDataSetProvider
    DataSet = Q_CLI
    Constraints = True
    Left = 240
    Top = 232
  end
  object cdsCli: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCli'
    Left = 240
    Top = 288
    object cdsCliCLIN_RAZA: TStringField
      FieldName = 'CLIN_RAZA'
      FixedChar = True
      Size = 50
    end
    object cdsCliCLIN_ENDERECO: TStringField
      FieldName = 'CLIN_ENDERECO'
      FixedChar = True
      Size = 50
    end
    object cdsCliCLIN_ENDERECO_COMPL: TStringField
      FieldName = 'CLIN_ENDERECO_COMPL'
      FixedChar = True
      Size = 35
    end
    object cdsCliCLIN_ENDERECO_BAIRRO: TStringField
      FieldName = 'CLIN_ENDERECO_BAIRRO'
      FixedChar = True
      Size = 40
    end
    object cdsCliCLIN_INSCRG: TStringField
      FieldName = 'CLIN_INSCRG'
      FixedChar = True
      Size = 15
    end
    object cdsCliUF_SIGLA: TStringField
      FieldName = 'UF_SIGLA'
      FixedChar = True
      Size = 2
    end
    object cdsCliMUN_NOME: TStringField
      FieldName = 'MUN_NOME'
      FixedChar = True
      Size = 40
    end
    object cdsCliNFI_NUMERO: TStringField
      FieldName = 'NFI_NUMERO'
      FixedChar = True
      Size = 10
    end
    object cdsCliCLIN_CGCCPF: TStringField
      FieldName = 'CLIN_CGCCPF'
      FixedChar = True
      Size = 15
    end
    object cdsCliNFI_SERIE: TStringField
      FieldName = 'NFI_SERIE'
      FixedChar = True
      Size = 2
    end
  end
  object qrAux: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    Left = 368
    Top = 296
  end
end
