object frmEstoque: TfrmEstoque
  Left = 203
  Top = 111
  BorderStyle = bsSingle
  Caption = 'Consulta de Estoque'
  ClientHeight = 513
  ClientWidth = 1017
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
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 0
    Width = 1017
    Height = 193
    ActivePage = TabSheet1
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabIndex = 0
    TabOrder = 0
    FixedDimension = 22
    object TabSheet1: TRzTabSheet
      Caption = 'Filtros de Pesquisa'
      object Label1: TLabel
        Left = 152
        Top = 14
        Width = 51
        Height = 16
        Caption = 'Material:'
      end
      object Label2: TLabel
        Left = 160
        Top = 77
        Width = 41
        Height = 16
        Caption = 'Marca:'
      end
      object Label3: TLabel
        Left = 162
        Top = 107
        Width = 40
        Height = 16
        Caption = 'Grupo:'
      end
      object Label4: TLabel
        Left = 166
        Top = 135
        Width = 36
        Height = 16
        Caption = 'Local:'
      end
      object Label5: TLabel
        Left = 153
        Top = 48
        Width = 51
        Height = 16
        Caption = 'Material:'
      end
      object cboMateriais: TwwDBLookupCombo
        Left = 208
        Top = 11
        Width = 361
        Height = 24
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'MAT_DESC'#9'60'#9'MAT_DESC'#9'F')
        LookupTable = qrMateriais
        LookupField = 'MAT_ID'
        TabOrder = 1
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        OnExit = cboMateriaisExit
      end
      object rgStatus: TRzRadioGroup
        Left = 16
        Top = 0
        Width = 121
        Height = 89
        Caption = 'Status'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 20
        ItemIndex = 2
        Items.Strings = (
          'Sem Saldo'
          'Com Saldo'
          'Todos')
        ParentFont = False
        TabOrder = 0
      end
      object cboMarca: TwwDBLookupCombo
        Left = 208
        Top = 74
        Width = 401
        Height = 24
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'MARCA_DESC'#9'20'#9'MARCA_DESC'#9'F')
        LookupTable = qrMarcasCombo
        LookupField = 'MARCA_ID'
        TabOrder = 3
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
      end
      object cboGrupo: TwwDBLookupCombo
        Left = 208
        Top = 103
        Width = 401
        Height = 24
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'GRU_DESC'#9'40'#9'GRU_DESC'#9'F')
        LookupTable = qrGrupo
        LookupField = 'GRU_ID'
        TabOrder = 4
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
      end
      object cboLocal: TwwDBLookupCombo
        Left = 208
        Top = 131
        Width = 401
        Height = 24
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'DESCRICAO'#9'50'#9'DESCRICAO'#9'F')
        LookupTable = qrLocal
        LookupField = 'LOCAL_ID'
        TabOrder = 6
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
      end
      object BitBtn1: TBitBtn
        Left = 904
        Top = 48
        Width = 105
        Height = 33
        Caption = 'Pesquisar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = BitBtn1Click
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
      object BitBtn2: TBitBtn
        Left = 904
        Top = 86
        Width = 105
        Height = 33
        Caption = 'Relatório'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnClick = BitBtn2Click
        Glyph.Data = {
          76060000424D7606000000000000360400002800000018000000180000000100
          08000000000040020000330B0000330B00000001000000010000000000003131
          3100FFB552007B5A5A008C636300FFCE6300FFCE6B00FFD66B008C637300A573
          7300B5847300FFD673009C7B7B00FFD67B00FFDE7B00B5848400FFDE8400A58C
          8C00AD8C8C00B58C8C00CE948C00FFDE8C00FFE78C00B5949400BD949400FFE7
          9400BD9C9C00CE9C9C00FFE79C00FFEF9C00C6A5A500CEA5A500FFEFA500C6AD
          AD00CEADAD00FFEFAD00FFF7AD00CEB5B500FFF7B500DEC6BD00FFF7BD00D6B5
          C600FFFFC600F7E7CE00FFEFD600DEDEDE00FFEFDE00FFEFE700FFF7EF00FFF7
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
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00323232323232
          3232323232323232323232323232323232323232220F04040404040404040404
          040404030303013232323232222D1E1A1A1A181A181A181A181317170C030132
          32323232322229221E1E1E1E1E1E1A1A18131312080132323232323232322222
          0F0F0F0F0F0F0404040403030132323232323200000000000000000000000000
          0000000000000000323222222222222222220F0F0F0F0F0F0F0F0F0F0F0F0F0F
          0432221B1B1B1B1B1B1B1B1B11111111111111111111110F0432221B04040404
          04040404040404040404040404042D0F0432221B050505050505050505050505
          050505050505050F0432221B05050505050F0F0F0F0F0F0F0F0F05050505050F
          0932221B0506060B0B14312F2F2B2B2B2B0F0B060605050F0932221B050B0B0D
          0D143331302F2E2B2B0F0D0B0B0605220932221B0B0D0D101014333331312F2E
          2B0F0D0D0D0B05220932221B10101010151433333333302F2B0F1515100D0522
          0932221B1010151519143333333331302F0F1510151010220932221B10101519
          1C143333333333312F0F1915151510220932221B1015191C1C14333333330A0A
          0A0F1919151010220932221B10151C202014333333330A020F201C1C19101022
          0932221B101920202314333333330A0F2323201C1C1C10220F32221B0D202323
          2614272727270F23232323201C1C0D220F32221B20282628282A2A2A2A2A2A2A
          28282626262A20220F32221B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B22
          0F32322222222222222222222222222222222222222222223232}
      end
      object Edit1: TEdit
        Left = 208
        Top = 43
        Width = 400
        Height = 24
        TabOrder = 7
      end
      object RzRadioGroup1: TRzRadioGroup
        Left = 16
        Top = 91
        Width = 121
        Height = 65
        Caption = 'Tipo de Consulta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 20
        ItemIndex = 0
        Items.Strings = (
          'Sintético'
          'Analítico')
        ParentFont = False
        TabOrder = 8
      end
      object RzRadioGroup2: TRzRadioGroup
        Left = 632
        Top = 95
        Width = 217
        Height = 62
        Caption = 'Ordenar Por'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 20
        ItemIndex = 0
        Items.Strings = (
          'Grupo de Materiais -> Material'
          'Material')
        ParentFont = False
        TabOrder = 9
      end
      object btnExcel: TButton
        Left = 904
        Top = 126
        Width = 105
        Height = 33
        Caption = 'Excel'
        TabOrder = 10
        OnClick = btnExcelClick
      end
      object rzImobilizado: TRzRadioGroup
        Left = 632
        Top = 9
        Width = 217
        Height = 73
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 20
        ItemIndex = 0
        Items.Strings = (
          'Todos os Materiais'
          'Desconsiderar Materiais do Imobilizado'
          'Somente Materiais do Imobilizado')
        ParentFont = False
        TabOrder = 11
      end
      object btnGetMaterial: TBitBtn
        Left = 575
        Top = 8
        Width = 32
        Height = 28
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 12
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
  end
  object gridSintetico: TwwDBGrid
    Left = 408
    Top = 304
    Width = 382
    Height = 199
    Selected.Strings = (
      'DS_LOC'#9'35'#9'LOCAL'#9'F'#9
      'GRU_DESC'#9'27'#9'GRUPO'#9'F'#9
      'MAT_DESC'#9'80'#9'MATERIAL'#9'F'#9
      'MARCA_DESC'#9'20'#9'MARCA'#9#9
      'LocalArmazem'#9'30'#9'LocalArmazem'#9'F'#9
      'UNI_SIGLA'#9'2'#9'UN.'#9#9
      'QTDE'#9'10'#9'QTDE'#9#9
      'REPOSICAO'#9'10'#9'VALOR REPOSICAO'#9#9)
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 1
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    Visible = False
  end
  object gridAnalitico: TwwDBGrid
    Left = 0
    Top = 409
    Width = 1017
    Height = 326
    Selected.Strings = (
      'DS_LOC'#9'30'#9'LOCAL'#9#9
      'GRU_DESC'#9'30'#9'GRUPO'#9#9
      'MAT_DESC'#9'70'#9'MATERIAL'#9#9
      'MARCA_DESC'#9'20'#9'MARCA'#9#9
      'UNI_SIGLA'#9'2'#9'UN.'#9#9
      'N_Lote'#9'20'#9'LOTE'#9#9
      'Valid'#9'13'#9'VALIDADE'#9#9
      'QTDE'#9'10'#9'QTDE'#9#9
      'REPOSICAO'#9'10'#9'REPOSIÇÃO'#9#9
      'LocalArmazem'#9'20'#9'LocalArmazem'#9'F'#9
      'EstoqueMinimo'#9'10'#9'EstoqueMinimo'#9'F'
      'EstoqueMaximo'#9'10'#9'EstoqueMaximo'#9'F')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = dsAnaliico
    ReadOnly = True
    TabOrder = 2
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    Visible = False
  end
  object Qrbusca: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    OnCalcFields = QrbuscaCalcFields
    Parameters = <>
    SQL.Strings = (
      'SELECT TOP 1 '
      #9'DS_LOC,'
      #9'GRU_DESC,'
      #9'MAT_DESC,'
      #9'UNI_SIGLA,'
      #9'MARCA_DESC, LocalArmazem,'
      #9'SUM(ISNULL(QTDE, 0.00)) QTDE, '
      #9'SUM(ISNULL(QTDE, 0.00) * ISNULL(REPOSICAO, 0.00)) AS REPOSICAO'
      'FROM vwEstoque'
      'GROUP BY DS_LOC,'
      #9'GRU_DESC,'
      #9'MAT_DESC,'
      #9'UNI_SIGLA,'
      #9'MARCA_DESC, LocalArmazem')
    Left = 272
    Top = 360
    object QrbuscaDS_LOC: TStringField
      DisplayLabel = 'LOCAL'
      DisplayWidth = 35
      FieldName = 'DS_LOC'
      Size = 50
    end
    object QrbuscaGRU_DESC: TStringField
      DisplayLabel = 'GRUPO'
      DisplayWidth = 27
      FieldName = 'GRU_DESC'
      Size = 40
    end
    object QrbuscaMAT_DESC: TStringField
      DisplayLabel = 'MATERIAL'
      DisplayWidth = 80
      FieldName = 'MAT_DESC'
      Size = 100
    end
    object QrbuscaMARCA_DESC: TStringField
      DisplayLabel = 'MARCA'
      DisplayWidth = 20
      FieldName = 'MARCA_DESC'
    end
    object QrbuscaLocalArmazem: TStringField
      DisplayWidth = 30
      FieldName = 'LocalArmazem'
      Size = 255
    end
    object QrbuscaUNI_SIGLA: TStringField
      DisplayLabel = 'UN.'
      DisplayWidth = 2
      FieldName = 'UNI_SIGLA'
      Size = 2
    end
    object QrbuscaQTDE: TFloatField
      DisplayWidth = 10
      FieldName = 'QTDE'
      ReadOnly = True
    end
    object QrbuscaREPOSICAO: TFloatField
      DisplayLabel = 'VALOR REPOSICAO'
      DisplayWidth = 10
      FieldName = 'REPOSICAO'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
    end
  end
  object qrunidades: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select uni_id, uni_SIGLA from unidades')
    Left = 136
    Top = 312
    object qrunidadesuni_id: TAutoIncField
      FieldName = 'uni_id'
      ReadOnly = True
    end
    object qrunidadesuni_SIGLA: TStringField
      FieldName = 'uni_SIGLA'
      Size = 2
    end
  end
  object QRMARCA: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT MARCA_ID, MARCA_DESC FROM MARCAS')
    Left = 344
    Top = 256
    object QRMARCAMARCA_DESC: TStringField
      DisplayWidth = 20
      FieldName = 'MARCA_DESC'
    end
    object QRMARCAMARCA_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'MARCA_ID'
      ReadOnly = True
      Visible = False
    end
  end
  object DataSource1: TDataSource
    DataSet = Qrbusca
    Left = 440
    Top = 368
  end
  object qrCusto: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <
      item
        Name = 'mat_id'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'MARCA_ID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT TOP 1 Preco_Unit / ISNULL(Conversao, 1) AS Preco_Unit FRO' +
        'M ORDEM_COMPRAITEM'
      'WHERE MAT_ID = :mat_id'
      'AND MARCA_ID = :MARCA_ID'
      'ORDER BY ORD_ID DESC')
    Left = 208
    Top = 352
    object qrCustoPRECO_UNIT: TFloatField
      FieldName = 'PRECO_UNIT'
    end
  end
  object qrMateriais: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT MAT_ID, CodigoMaterial + '#39' '#39' + MAT_DESC AS MAT_DESC FROM ' +
        'MATERIAIS'
      'WHERE GENERICO NOT IN ('#39'S'#39')'
      'AND MAT_ATIVO = '#39'S'#39
      'ORDER BY MAT_DESC')
    Left = 208
    Top = 280
    object qrMateriaisMAT_DESC: TStringField
      DisplayWidth = 60
      FieldName = 'MAT_DESC'
      Size = 60
    end
    object qrMateriaisMAT_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'MAT_ID'
      ReadOnly = True
      Visible = False
    end
  end
  object qrMarcasCombo: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    SQL.Strings = (
      'select marca_id, marca_desc from marcas'
      'order by marca_desc')
    Left = 128
    Top = 392
  end
  object qrGrupo: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT GRU_ID, GRU_DESC FROM GRUPO_MATERIAL'
      'ORDER BY GRU_DESC')
    Left = 216
    Top = 224
  end
  object qrLocal: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select LOCAL_ID, DESCRICAO FROM LOCAL')
    Left = 136
    Top = 240
    object qrLocalDESCRICAO: TStringField
      DisplayWidth = 50
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object qrLocalLOCAL_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'LOCAL_ID'
      ReadOnly = True
      Visible = False
    end
  end
  object qrBuscaAnalitico: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'Select top 1 *, 0.00 AS EstoqueMinimo, 0.00 as EstoqueMaximo fro' +
        'm vwEstoque ')
    Left = 576
    Top = 288
    object qrBuscaAnaliticoDS_LOC: TStringField
      DisplayLabel = 'LOCAL'
      DisplayWidth = 30
      FieldName = 'DS_LOC'
      Size = 50
    end
    object qrBuscaAnaliticoGRU_DESC: TStringField
      DisplayLabel = 'GRUPO'
      DisplayWidth = 30
      FieldName = 'GRU_DESC'
      Size = 40
    end
    object qrBuscaAnaliticoMAT_DESC: TStringField
      DisplayLabel = 'MATERIAL'
      DisplayWidth = 70
      FieldName = 'MAT_DESC'
      Size = 100
    end
    object qrBuscaAnaliticoMARCA_DESC: TStringField
      DisplayLabel = 'MARCA'
      DisplayWidth = 20
      FieldName = 'MARCA_DESC'
    end
    object qrBuscaAnaliticoUNI_SIGLA: TStringField
      DisplayLabel = 'UN.'
      DisplayWidth = 2
      FieldName = 'UNI_SIGLA'
      Size = 2
    end
    object qrBuscaAnaliticoN_Lote: TWideStringField
      DisplayLabel = 'LOTE'
      DisplayWidth = 20
      FieldName = 'N_Lote'
    end
    object qrBuscaAnaliticoValid: TDateTimeField
      DisplayLabel = 'VALIDADE'
      DisplayWidth = 13
      FieldName = 'Valid'
      DisplayFormat = 'dd/mm/yy'
    end
    object qrBuscaAnaliticoQTDE: TFloatField
      DisplayWidth = 10
      FieldName = 'QTDE'
      ReadOnly = True
    end
    object qrBuscaAnaliticoREPOSICAO: TFloatField
      DisplayLabel = 'REPOSIÇÃO'
      DisplayWidth = 10
      FieldName = 'REPOSICAO'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
    end
    object qrBuscaAnaliticoLocalArmazem: TStringField
      DisplayWidth = 20
      FieldName = 'LocalArmazem'
      Size = 255
    end
    object qrBuscaAnaliticoEstoqueMinimo: TBCDField
      DisplayWidth = 10
      FieldName = 'EstoqueMinimo'
      ReadOnly = True
      Precision = 2
      Size = 2
    end
    object qrBuscaAnaliticoEstoqueMaximo: TBCDField
      DisplayWidth = 10
      FieldName = 'EstoqueMaximo'
      ReadOnly = True
      Precision = 2
      Size = 2
    end
  end
  object dsAnaliico: TDataSource
    DataSet = qrBuscaAnalitico
    Left = 448
    Top = 216
  end
  object dsExcel: TDataSource
    DataSet = Qrbusca
    Left = 720
    Top = 400
  end
end
