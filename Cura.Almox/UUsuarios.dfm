object FUsuarios: TFUsuarios
  Left = 571
  Top = 414
  Width = 1036
  Height = 627
  Caption = 'Usu�rios - Sistema de Almoxarifado'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 52
    Width = 1009
    Height = 525
    Color = clBtnFace
    ParentColor = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 29
      Height = 17
      Caption = 'Login'
      FocusControl = edtNome
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 224
      Top = 10
      Width = 32
      Height = 17
      Caption = 'Senha'
      FocusControl = edtSenha
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 424
      Top = 55
      Width = 81
      Height = 17
      Caption = 'Local Principal'
      FocusControl = edtNome
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 8
      Top = 52
      Width = 30
      Height = 17
      Caption = 'Nome'
      FocusControl = edtNome
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object edtNome: TwwDBEdit
      Left = 8
      Top = 24
      Width = 185
      Height = 24
      CharCase = ecUpperCase
      DataField = 'NOME'
      DataSource = DSUSUARIOS
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      TabOrder = 0
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object edtSenha: TwwDBEdit
      Left = 224
      Top = 26
      Width = 177
      Height = 24
      DataField = 'SENHA'
      DataSource = DSUSUARIOS
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      PasswordChar = '*'
      TabOrder = 1
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object wwDBLookupCombo1: TwwDBLookupCombo
      Left = 424
      Top = 71
      Width = 305
      Height = 21
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'descricao'#9'50'#9'Local'#9'F')
      DataField = 'LOCAL_ID'
      DataSource = DSUSUARIOS
      LookupTable = qrLocal
      LookupField = 'Local_id'
      TabOrder = 3
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
    end
    object DBCheckBox1: TDBCheckBox
      Left = 424
      Top = 8
      Width = 201
      Height = 17
      Caption = 'Administra Requisi��o'
      DataField = 'admRequisicao'
      DataSource = DSUSUARIOS
      TabOrder = 4
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object Button1: TButton
      Left = 976
      Top = 40
      Width = 233
      Height = 25
      Caption = 'Vincular usu�rio a centro de custo'
      TabOrder = 5
      Visible = False
      OnClick = Button1Click
    end
    object DBEdit1: TDBEdit
      Left = 8
      Top = 72
      Width = 393
      Height = 25
      DataField = 'NOME_COMPLETO'
      DataSource = DSUSUARIOS
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object btn1: TButton
      Left = 976
      Top = 8
      Width = 233
      Height = 25
      Caption = 'Vincular usu�rio a Local'
      TabOrder = 6
      Visible = False
      OnClick = btn1Click
    end
    object PageControl1: TPageControl
      Left = 2
      Top = 134
      Width = 1005
      Height = 389
      ActivePage = TabSheet1
      Align = alBottom
      TabOrder = 7
      object TabSheet1: TTabSheet
        Caption = 'Permiss�es de Acesso'
        object trvMenu: TTreeView
          Left = 0
          Top = 0
          Width = 997
          Height = 361
          Align = alClient
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          Indent = 19
          ParentFont = False
          RightClickSelect = True
          TabOrder = 0
          OnDblClick = trvMenuDblClick
          Items.Data = {
            050000001B00000000000000FFFFFFFF00000000FFFFFFFF0000000000000000
            0261311B00000000000000FFFFFFFF01000000FFFFFFFF000000000200000002
            61321B00000000000000FFFFFFFF02000000FFFFFFFF00000000000000000262
            321B00000000000000FFFFFFFF03000000FFFFFFFF0000000000000000026233
            1B00000000000000FFFFFFFF04000000FFFFFFFF00000000050000000261331B
            00000000000000FFFFFFFF05000000FFFFFFFF00000000000000000262341B00
            000000000000FFFFFFFF06000000FFFFFFFF00000000000000000262351B0000
            0000000000FFFFFFFF07000000FFFFFFFF00000000000000000262361B000000
            00000000FFFFFFFF08000000FFFFFFFF00000000010000000262371B00000000
            000000FFFFFFFF09000000FFFFFFFF00000000010000000263341B0000000000
            0000FFFFFFFF0A000000FFFFFFFF00000000000000000264351B000000000000
            00FFFFFFFF0B000000FFFFFFFF00000000010000000262381B00000000000000
            FFFFFFFF0C000000FFFFFFFF00000000000000000263351B0000000000000000
            0000000D000000FFFFFFFF00000000010000000261341B000000000000000000
            00000E000000FFFFFFFF00000000000000000262391B00000000000000000000
            000F000000FFFFFFFF0000000000000000026135}
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Centros de Custo'
        ImageIndex = 1
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 997
          Height = 361
          Align = alClient
          TabOrder = 0
          object Label4: TLabel
            Left = 16
            Top = 7
            Width = 75
            Height = 13
            Caption = 'Centro de custo'
          end
          object SpeedButton1: TSpeedButton
            Left = 596
            Top = 18
            Width = 25
            Height = 25
            Hint = 'Fechar'
            Glyph.Data = {
              36050000424D3605000000000000360400002800000010000000100000000100
              08000000000000010000220B0000220B000000010000000100000031DE000031
              E7000031EF000031F700FF00FF000031FF00FFFFFF00FFFFFF00FFFFFF00FFFF
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
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00040404040404
              0404040404040404000004000004040404040404040404000004040000000404
              0404040404040000040404000000000404040404040000040404040402000000
              0404040400000404040404040404000000040000000404040404040404040400
              0101010004040404040404040404040401010204040404040404040404040400
              0201020304040404040404040404030201040403030404040404040404050203
              0404040405030404040404040303050404040404040303040404040303030404
              0404040404040403040403030304040404040404040404040404030304040404
              0404040404040404040404040404040404040404040404040404}
            ParentShowHint = False
            ShowHint = True
            Visible = False
            OnClick = SpeedButton1Click
          end
          object wwDBLookupCombo2: TwwDBLookupCombo
            Left = 16
            Top = 23
            Width = 473
            Height = 21
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'CC_Desc'#9'40'#9'CC_Desc'#9'F')
            LookupTable = qrCentro
            LookupField = 'CC_ID'
            TabOrder = 0
            AutoDropDown = True
            ShowButton = True
            PreciseEditRegion = False
            AllowClearKey = False
          end
          object Button2: TButton
            Left = 496
            Top = 19
            Width = 75
            Height = 25
            Caption = 'Adicionar'
            TabOrder = 1
            OnClick = Button2Click
          end
          object wwDBGrid1: TwwDBGrid
            Left = 16
            Top = 56
            Width = 705
            Height = 249
            Selected.Strings = (
              'CC_Desc'#9'40'#9'Centro de custo')
            IniAttributes.Delimiter = ';;'
            TitleColor = clBtnFace
            FixedCols = 0
            ShowHorzScrollBar = True
            DataSource = DataSource1
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
          end
          object Button3: TButton
            Left = 16
            Top = 312
            Width = 145
            Height = 25
            Caption = 'Remover selecionado'
            TabOrder = 3
            OnClick = Button3Click
          end
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Locais de Estoque'
        ImageIndex = 2
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 997
          Height = 361
          Align = alClient
          Caption = 'Panel3'
          TabOrder = 0
          object Label6: TLabel
            Left = 16
            Top = 8
            Width = 26
            Height = 13
            Caption = 'Local'
          end
          object cboLocal: TwwDBLookupCombo
            Left = 16
            Top = 24
            Width = 441
            Height = 21
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'Descricao'#9'50'#9'Descricao'#9#9)
            LookupTable = qryLocais
            LookupField = 'Local_ID'
            TabOrder = 0
            AutoDropDown = True
            ShowButton = True
            PreciseEditRegion = False
            AllowClearKey = False
          end
          object btn2: TButton
            Left = 472
            Top = 21
            Width = 75
            Height = 25
            Caption = 'Adicionar'
            TabOrder = 1
            OnClick = btn2Click
          end
          object wwDBGrid2: TwwDBGrid
            Left = 16
            Top = 56
            Width = 713
            Height = 257
            Selected.Strings = (
              'Descricao'#9'50'#9'Descricao')
            IniAttributes.Delimiter = ';;'
            TitleColor = clBtnFace
            FixedCols = 0
            ShowHorzScrollBar = True
            DataSource = ds1
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
          end
          object btn3: TButton
            Left = 16
            Top = 320
            Width = 97
            Height = 25
            Caption = 'Remover Local'
            TabOrder = 3
            OnClick = btn3Click
          end
          object btn4: TButton
            Left = 120
            Top = 320
            Width = 105
            Height = 25
            Caption = 'Fechar'
            TabOrder = 4
            Visible = False
            OnClick = btn4Click
          end
        end
      end
    end
    object DBCheckBox2: TDBCheckBox
      Left = 631
      Top = 8
      Width = 201
      Height = 17
      Caption = 'Usu�rio Ativo?'
      DataField = 'UsuarioAtivo'
      DataSource = DSUSUARIOS
      TabOrder = 8
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBCheckBox3: TDBCheckBox
      Left = 424
      Top = 32
      Width = 201
      Height = 17
      Caption = 'Aprova Entrega de OC Atrasada'
      DataField = 'AprovaEntregaOCAtrasada'
      DataSource = DSUSUARIOS
      TabOrder = 9
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBCheckBox4: TDBCheckBox
      Left = 632
      Top = 30
      Width = 201
      Height = 17
      Caption = 'Excluir NF de Recebimento'
      DataField = 'ExcluirNF'
      DataSource = DSUSUARIOS
      TabOrder = 10
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
  end
  object Panel10: TPanel
    Left = 368
    Top = 129
    Width = 257
    Height = 50
    BevelInner = bvLowered
    Color = 13538330
    TabOrder = 1
    Visible = False
    object Label62: TLabel
      Left = 8
      Top = 3
      Width = 43
      Height = 17
      Caption = 'Usu�rio'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton6: TSpeedButton
      Left = 189
      Top = 18
      Width = 26
      Height = 25
      Hint = 'Localizar'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000010000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33033333333333333F7F3333333333333000333333333333F777333333333333
        000333333333333F777333333333333000333333333333F77733333333333300
        033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
        33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
        3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
        33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
        333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
        333333773FF77333333333370007333333333333777333333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton6Click
    end
    object SpeedButton5: TSpeedButton
      Left = 214
      Top = 18
      Width = 26
      Height = 25
      Hint = 'Cancelar'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000010000000000000000000
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
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton5Click
    end
    object wwDBLookupCombo11: TwwDBLookupCombo
      Left = 8
      Top = 21
      Width = 161
      Height = 25
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      CharCase = ecUpperCase
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'NOME'#9'40'#9'Usu�rio'#9'F')
      LookupTable = SQLUSUARIOS
      LookupField = 'NOME'
      Options = [loColLines, loRowLines, loTitles]
      ParentFont = False
      TabOrder = 0
      AutoDropDown = True
      ShowButton = True
      SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
      PreciseEditRegion = False
      AllowClearKey = False
      OnKeyPress = wwDBLookupCombo11KeyPress
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1020
    Height = 52
    Align = alTop
    BevelInner = bvLowered
    Color = clWhite
    TabOrder = 2
    object btnRefresh: TSpeedButton
      Left = 584
      Top = 7
      Width = 33
      Height = 38
      Hint = 'Atualizar os dados.'
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
        3333333777333777FF33339993707399933333773337F3777FF3399933000339
        9933377333777F3377F3399333707333993337733337333337FF993333333333
        399377F33333F333377F993333303333399377F33337FF333373993333707333
        333377F333777F333333993333101333333377F333777F3FFFFF993333000399
        999377FF33777F77777F3993330003399993373FF3777F37777F399933000333
        99933773FF777F3F777F339993707399999333773F373F77777F333999999999
        3393333777333777337333333999993333333333377777333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      Transparent = False
      OnClick = btnRefreshClick
    end
    object btnExpand: TSpeedButton
      Left = 617
      Top = 7
      Width = 33
      Height = 38
      Hint = 'Expande a �rvore.'
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00303333333333
        333337F3333333333333303333333333333337F33FFFFF3FF3FF303300000300
        300337FF77777F77377330000BBB0333333337777F337F33333330330BB00333
        333337F373F773333333303330033333333337F3377333333333303333333333
        333337F33FFFFF3FF3FF303300000300300337FF77777F77377330000BBB0333
        333337777F337F33333330330BB00333333337F373F773333333303330033333
        333337F3377333333333303333333333333337FFFF3FF3FFF333000003003000
        333377777F77377733330BBB0333333333337F337F33333333330BB003333333
        333373F773333333333330033333333333333773333333333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      Transparent = False
      OnClick = btnExpandClick
    end
    object btnFechar: TSpeedButton
      Left = 650
      Top = 7
      Width = 33
      Height = 38
      Hint = 'Fechar cadastro.'
      Flat = True
      Glyph.Data = {
        76020000424D7602000000000000760000002800000040000000100000000100
        0400000000000002000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
        03333388888888888F3333000000000003333388888888888F33330111111111
        0333338F333333338F333301BBBBBBBB033333883F3333338F33330111111111
        0333338F333333338F3333011BBBBBBB0333338F83F333338F33330111111111
        0333338F333333338F33330111BBBBBB0333338F383F33338F33330111111111
        0333338F333333338F333301110BBBBB0333338F338F33338F33330111111111
        0333338F333333338F333301110BBBBB0333338F338F33338F33330111111111
        0333338F3333333F8F333301110BBBBB0333338F338F33338F333301111111B1
        0333338F333333838F333301110BBBBB0333338F338F33338F33330111111111
        0333338F333333338F333301110BBBBB0333338F338F33338F33330111111111
        0333338F33FFFFF38F333301110BBBBB0333338F338FF3338F3333011EEEEE11
        0333338F388888F38F33330111B0BBBB0333338F338833338F3333011EEEEE11
        0333338F38FFF8F38F333301110BBBBB0333338F338F33338F3333011EEEEE11
        0333338F388888338F333301110BBBBB0333338F3F8F33338F33330111111111
        0333338F333333338F333301E10BBBBB0333338F8F8F33338F33330111111111
        0333338FFFFFFFFF8F333301EE0BBBBB0333338F888FFFFF8F33330000000000
        0333338888888888833333000000000003333388888888888333}
      NumGlyphs = 4
      ParentShowHint = False
      ShowHint = True
      Transparent = False
      OnClick = btnFecharClick
    end
    object SpeedButton2: TSpeedButton
      Left = 552
      Top = 7
      Width = 32
      Height = 38
      Hint = 'Localiza��o R�pida de Produtos'
      Flat = True
      Glyph.Data = {
        EE000000424DEE000000000000007600000028000000100000000F0000000100
        0400000000007800000000000000000000001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        888800000888880000080F000888880F00080F000888880F0008000000080000
        000800F000000F00000800F000800F00000800F000800F000008800000000000
        0088880F00080F000888880000080000088888800088800088888880F08880F0
        888888800088800088888888888888888888}
      ParentShowHint = False
      ShowHint = True
      Transparent = False
      OnClick = SpeedButton2Click
    end
    object DN: TDBNavigator
      Left = 344
      Top = 7
      Width = 208
      Height = 38
      DataSource = DSUSUARIOS
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbPost, nbCancel]
      Flat = True
      Hints.Strings = (
        'Primeiro registro.'
        'Registro anterior.'
        'Pr�ximo registro.'
        '�ltimo registro.'
        'Incluir um novo registro.'
        'Apagar o registro.'
        'Editar o registro.'
        'Confirmar inclus�o ou altera��o.'
        'Cancelar inclus�o ou altera��o.'
        'Atualiza��o de dados.')
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      BeforeAction = DNBeforeAction
      OnClick = DNClick
    end
  end
  object DSUSUARIOS: TwwDataSource
    DataSet = SQLUSUARIOS
    OnStateChange = DSUSUARIOSStateChange
    OnDataChange = DSUSUARIOSDataChange
    Left = 951
    Top = 80
  end
  object SQLUSUARIOS: TwwQuery
    CachedUpdates = True
    BeforePost = SQLUSUARIOSBeforePost
    AfterPost = SQLUSUARIOSAfterPost
    AfterDelete = SQLUSUARIOSAfterDelete
    OnNewRecord = SQLUSUARIOSNewRecord
    DatabaseName = 'Cura'
    SessionName = 'Sec_BaseFin'
    RequestLive = True
    SQL.Strings = (
      'SELECT *'
      '  FROM [dbo].[UsuarioAlmox]')
    UpdateObject = UPD_USUARIOS
    ValidateWithMask = True
    Left = 281
    Top = 297
    object SQLUSUARIOSCH: TAutoIncField
      FieldName = 'CH'
      Origin = 'CURA.USUARIOALMOX.CH'
    end
    object SQLUSUARIOSNome: TStringField
      FieldName = 'Nome'
      Origin = 'CURA.USUARIOALMOX.NOME'
      FixedChar = True
      Size = 40
    end
    object SQLUSUARIOSSenha: TStringField
      FieldName = 'Senha'
      Origin = 'CURA.USUARIOALMOX.SENHA'
      FixedChar = True
      Size = 40
    end
    object SQLUSUARIOSAlmoxarifado: TStringField
      FieldName = 'Almoxarifado'
      Origin = 'CURA.USUARIOALMOX.SENHA'
      FixedChar = True
      Size = 1
    end
    object SQLUSUARIOSAjuste: TStringField
      FieldName = 'Ajuste'
      Origin = 'CURA.USUARIOALMOX.SENHA'
      FixedChar = True
      Size = 1
    end
    object SQLUSUARIOSInventario: TStringField
      FieldName = 'Inventario'
      Origin = 'CURA.USUARIOALMOX.SENHA'
      FixedChar = True
      Size = 1
    end
    object SQLUSUARIOSKardex: TStringField
      FieldName = 'Kardex'
      Origin = 'CURA.USUARIOALMOX.SENHA'
      FixedChar = True
      Size = 1
    end
    object SQLUSUARIOSRequisicao: TStringField
      FieldName = 'Requisicao'
      Origin = 'CURA.USUARIOALMOX.SENHA'
      FixedChar = True
      Size = 1
    end
    object SQLUSUARIOSBusca: TStringField
      FieldName = 'Busca'
      Origin = 'CURA.USUARIOALMOX.SENHA'
      FixedChar = True
      Size = 1
    end
    object SQLUSUARIOSCadastros: TStringField
      FieldName = 'Cadastros'
      Origin = 'CURA.USUARIOALMOX.SENHA'
      FixedChar = True
      Size = 1
    end
    object SQLUSUARIOSFornecedores: TStringField
      FieldName = 'Fornecedores'
      Origin = 'CURA.USUARIOALMOX.SENHA'
      FixedChar = True
      Size = 1
    end
    object SQLUSUARIOSEntradaNF: TStringField
      FieldName = 'EntradaNF'
      Origin = 'CURA.USUARIOALMOX.SENHA'
      FixedChar = True
      Size = 1
    end
    object SQLUSUARIOSDevForn: TStringField
      FieldName = 'DevForn'
      Origin = 'CURA.USUARIOALMOX.SENHA'
      FixedChar = True
      Size = 1
    end
    object SQLUSUARIOSOrdemdeCompra: TStringField
      FieldName = 'OrdemdeCompra'
      Origin = 'CURA.USUARIOALMOX.SENHA'
      FixedChar = True
      Size = 1
    end
    object SQLUSUARIOSTabelas: TStringField
      FieldName = 'Tabelas'
      Origin = 'CURA.USUARIOALMOX.SENHA'
      FixedChar = True
      Size = 1
    end
    object SQLUSUARIOSGrupodeMateriais: TStringField
      FieldName = 'GrupodeMateriais'
      Origin = 'CURA.USUARIOALMOX.SENHA'
      FixedChar = True
      Size = 1
    end
    object SQLUSUARIOSMateriais: TStringField
      FieldName = 'Materiais'
      Origin = 'CURA.USUARIOALMOX.SENHA'
      FixedChar = True
      Size = 1
    end
    object SQLUSUARIOSCondPag: TStringField
      FieldName = 'CondPag'
      Origin = 'CURA.USUARIOALMOX.SENHA'
      FixedChar = True
      Size = 1
    end
    object SQLUSUARIOSLocais: TStringField
      FieldName = 'Locais'
      Origin = 'CURA.USUARIOALMOX.SENHA'
      FixedChar = True
      Size = 1
    end
    object SQLUSUARIOSMotivos: TStringField
      FieldName = 'Motivos'
      Origin = 'CURA.USUARIOALMOX.SENHA'
      FixedChar = True
      Size = 1
    end
    object SQLUSUARIOSMarcas: TStringField
      FieldName = 'Marcas'
      Origin = 'CURA.USUARIOALMOX.SENHA'
      FixedChar = True
      Size = 1
    end
    object SQLUSUARIOSTipodeDocumento: TStringField
      FieldName = 'TipodeDocumento'
      Origin = 'CURA.USUARIOALMOX.SENHA'
      FixedChar = True
      Size = 1
    end
    object SQLUSUARIOSUnidades: TStringField
      FieldName = 'Unidades'
      Origin = 'CURA.USUARIOALMOX.SENHA'
      FixedChar = True
      Size = 1
    end
    object SQLUSUARIOSSair: TStringField
      FieldName = 'Sair'
      Origin = 'CURA.USUARIOALMOX.SENHA'
      FixedChar = True
      Size = 1
    end
    object SQLUSUARIOSUsuarios: TStringField
      FieldName = 'Usuarios'
      Origin = 'CURA.USUARIOALMOX.CH'
      FixedChar = True
      Size = 1
    end
    object SQLUSUARIOSCentrosdeCustos: TStringField
      FieldName = 'CentrosdeCustos'
      Origin = 'CURA.USUARIOALMOX.CH'
      FixedChar = True
      Size = 1
    end
    object SQLUSUARIOSCONSUMOMATERIAIS: TStringField
      FieldName = 'CONSUMOMATERIAIS'
      Origin = 'CURA.UsuarioAlmox.CONSUMOMATERIAIS'
      FixedChar = True
      Size = 1
    end
    object SQLUSUARIOSESTOQUE_MINIMO: TStringField
      FieldName = 'ESTOQUE_MINIMO'
      Origin = 'CURA.UsuarioAlmox.CH'
      FixedChar = True
      Size = 1
    end
    object SQLUSUARIOSCOMPRAS: TStringField
      FieldName = 'COMPRAS'
      Origin = 'CURA.UsuarioAlmox.COMPRAS'
      FixedChar = True
      Size = 1
    end
    object SQLUSUARIOSSOLICITACAO: TStringField
      FieldName = 'SOLICITACAO'
      Origin = 'CURA.UsuarioAlmox.SOLICITACAO'
      FixedChar = True
      Size = 1
    end
    object SQLUSUARIOSCOTACAO: TStringField
      FieldName = 'COTACAO'
      Origin = 'CURA.UsuarioAlmox.COTACAO'
      FixedChar = True
      Size = 1
    end
    object SQLUSUARIOSESTOQUE: TStringField
      FieldName = 'ESTOQUE'
      Origin = 'CURA.UsuarioAlmox.ESTOQUE'
      FixedChar = True
      Size = 1
    end
    object SQLUSUARIOSLOCAL_ID: TIntegerField
      FieldName = 'LOCAL_ID'
      Origin = 'CURA.UsuarioAlmox.LOCAL_ID'
    end
    object SQLUSUARIOSTransferencia: TStringField
      FieldName = 'Transferencia'
      Origin = 'CURA.UsuarioAlmox.Transferencia'
      FixedChar = True
      Size = 1
    end
    object SQLUSUARIOSAlteraSenha: TStringField
      FieldName = 'AlteraSenha'
      Origin = 'CURA.UsuarioAlmox.AlteraSenha'
      FixedChar = True
      Size = 1
    end
    object SQLUSUARIOSVALIDADE: TStringField
      FieldName = 'VALIDADE'
      Origin = 'CURA.UsuarioAlmox.VALIDADE'
      FixedChar = True
      Size = 1
    end
    object SQLUSUARIOSREL_CONF_REQUISICAO: TStringField
      FieldName = 'REL_CONF_REQUISICAO'
      Origin = 'CURA.UsuarioAlmox.REL_CONF_REQUISICAO'
      FixedChar = True
      Size = 1
    end
    object SQLUSUARIOSREL_OC_RECEB: TStringField
      FieldName = 'REL_OC_RECEB'
      Origin = 'CURA.UsuarioAlmox.REL_OC_RECEB'
      FixedChar = True
      Size = 1
    end
    object SQLUSUARIOSGER_COMPRAS: TStringField
      FieldName = 'GER_COMPRAS'
      Origin = 'CURA.UsuarioAlmox.GER_COMPRAS'
      FixedChar = True
      Size = 1
    end
    object SQLUSUARIOSRequisicao_Adm: TStringField
      FieldName = 'Requisicao_Adm'
      Origin = 'CURA.UsuarioAlmox.Requisicao_Adm'
      FixedChar = True
      Size = 1
    end
    object SQLUSUARIOSRequisicao_usu: TStringField
      FieldName = 'Requisicao_usu'
      Origin = 'CURA.UsuarioAlmox.Requisicao_usu'
      FixedChar = True
      Size = 1
    end
    object SQLUSUARIOSRequisicao_imp: TStringField
      FieldName = 'Requisicao_imp'
      Origin = 'CURA.UsuarioAlmox.Requisicao_imp'
      FixedChar = True
      Size = 1
    end
    object SQLUSUARIOSRequisicao_aprov: TStringField
      FieldName = 'Requisicao_aprov'
      Origin = 'CURA.UsuarioAlmox.CH'
      FixedChar = True
      Size = 1
    end
    object SQLUSUARIOSCURVA_ABC: TStringField
      FieldName = 'CURVA_ABC'
      Origin = 'CURA.UsuarioAlmox.CURVA_ABC'
      FixedChar = True
      Size = 1
    end
    object SQLUSUARIOSREL_OC: TStringField
      FieldName = 'REL_OC'
      Origin = 'CURA.UsuarioAlmox.REL_OC'
      FixedChar = True
      Size = 1
    end
    object SQLUSUARIOSDocsQualidade: TStringField
      FieldName = 'DocsQualidade'
      Origin = 'CURA.UsuarioAlmox.DocsQualidade'
      FixedChar = True
      Size = 1
    end
    object SQLUSUARIOSRelDocsFornecedor: TStringField
      FieldName = 'RelDocsFornecedor'
      Origin = 'CURA.UsuarioAlmox.RelDocsFornecedor'
      FixedChar = True
      Size = 1
    end
    object SQLUSUARIOSadmRequisicao: TStringField
      FieldName = 'admRequisicao'
      Origin = 'CURA.UsuarioAlmox.admRequisicao'
      FixedChar = True
      Size = 1
    end
    object SQLUSUARIOSConsumoFornecedor: TStringField
      FieldName = 'ConsumoFornecedor'
      Origin = 'CURA.UsuarioAlmox.ConsumoFornecedor'
      FixedChar = True
      Size = 1
    end
    object SQLUSUARIOSAnaliseCompras: TStringField
      FieldName = 'AnaliseCompras'
      Origin = 'CURA.UsuarioAlmox.AnaliseCompras'
      FixedChar = True
      Size = 1
    end
    object SQLUSUARIOSLoteValidade: TStringField
      FieldName = 'LoteValidade'
      Origin = 'CURA.UsuarioAlmox.LoteValidade'
      FixedChar = True
      Size = 1
    end
    object SQLUSUARIOSEstoqueMaximo: TStringField
      FieldName = 'EstoqueMaximo'
      Origin = 'CURA.UsuarioAlmox.EstoqueMaximo'
      FixedChar = True
      Size = 1
    end
    object SQLUSUARIOSOcorrencias: TStringField
      FieldName = 'Ocorrencias'
      Origin = 'CURA.UsuarioAlmox.Ocorrencias'
      FixedChar = True
      Size = 1
    end
    object SQLUSUARIOSCBARRAS: TStringField
      FieldName = 'CBARRAS'
      Origin = 'CURA.UsuarioAlmox.CBARRAS'
      FixedChar = True
      Size = 1
    end
    object SQLUSUARIOSRelNaoConformidades: TStringField
      FieldName = 'RelNaoConformidades'
      Origin = 'CURA.UsuarioAlmox.RelNaoConformidades'
      FixedChar = True
      Size = 1
    end
    object SQLUSUARIOSCONSEQUENCIA: TStringField
      FieldName = 'CONSEQUENCIA'
      Origin = 'CURA.UsuarioAlmox.CONSEQUENCIA'
      FixedChar = True
      Size = 1
    end
    object SQLUSUARIOSLiberaMaterial: TStringField
      FieldName = 'LiberaMaterial'
      Origin = 'CURA.UsuarioAlmox.LiberaMaterial'
      FixedChar = True
      Size = 1
    end
    object SQLUSUARIOSRelIntervalo: TStringField
      FieldName = 'RelIntervalo'
      Origin = 'CURA.UsuarioAlmox.RelIntervalo'
      FixedChar = True
      Size = 1
    end
    object SQLUSUARIOSConfereRequisicao: TStringField
      FieldName = 'ConfereRequisicao'
      Origin = 'CURA.UsuarioAlmox.ConfereRequisicao'
      FixedChar = True
      Size = 1
    end
    object SQLUSUARIOSRelTransferencia: TStringField
      FieldName = 'RelTransferencia'
      Origin = 'CURA.UsuarioAlmox.RelTransferencia'
      FixedChar = True
      Size = 1
    end
    object SQLUSUARIOSEstoqueRetro: TStringField
      FieldName = 'EstoqueRetro'
      Origin = 'CURA.UsuarioAlmox.EstoqueRetro'
      FixedChar = True
      Size = 1
    end
    object SQLUSUARIOSNOME_COMPLETO: TStringField
      FieldName = 'NOME_COMPLETO'
      Origin = 'CURA.UsuarioAlmox.NOME_COMPLETO'
      FixedChar = True
      Size = 150
    end
    object SQLUSUARIOSConsultaInvetarioMaterial: TStringField
      FieldName = 'ConsultaInvetarioMaterial'
      Origin = 'CURA.UsuarioAlmox.ConsultaInvetarioMaterial'
      FixedChar = True
      Size = 1
    end
    object SQLUSUARIOSRelTransfCustos: TStringField
      FieldName = 'RelTransfCustos'
      Origin = 'CURA.UsuarioAlmox.RelTransfCustos'
      FixedChar = True
      Size = 1
    end
    object SQLUSUARIOSDivergencias: TStringField
      FieldName = 'Divergencias'
      Origin = 'CURA.UsuarioAlmox.Divergencias'
      FixedChar = True
      Size = 1
    end
    object SQLUSUARIOSbionexoDownload: TStringField
      FieldName = 'bionexoDownload'
      Origin = 'CURA.UsuarioAlmox.bionexoDownload'
      FixedChar = True
      Size = 1
    end
    object SQLUSUARIOSbionexoUpload: TStringField
      FieldName = 'bionexoUpload'
      Origin = 'CURA.UsuarioAlmox.bionexoUpload'
      FixedChar = True
      Size = 1
    end
    object SQLUSUARIOSRelMateriaisInativos: TStringField
      FieldName = 'RelMateriaisInativos'
      Origin = 'CURA.UsuarioAlmox.RelMateriaisInativos'
      FixedChar = True
      Size = 1
    end
    object SQLUSUARIOSRelatorios1: TStringField
      FieldName = 'Relatorios1'
      Origin = 'CURA.UsuarioAlmox.Relatorios1'
      FixedChar = True
      Size = 1
    end
    object SQLUSUARIOSRequisicaoEstoqueMaxMin: TStringField
      FieldName = 'RequisicaoEstoqueMaxMin'
      Origin = 'CURA.UsuarioAlmox.RequisicaoEstoqueMaxMin'
      FixedChar = True
      Size = 1
    end
    object SQLUSUARIOSRequisicaoSimplificada: TStringField
      FieldName = 'RequisicaoSimplificada'
      Origin = 'CURA.UsuarioAlmox.RequisicaoSimplificada'
      FixedChar = True
      Size = 1
    end
    object SQLUSUARIOSNFeXML: TStringField
      FieldName = 'NFeXML'
      Origin = 'CURA.UsuarioAlmox.NFeXML'
      FixedChar = True
      Size = 1
    end
    object SQLUSUARIOSRelatriodeRastreabilidade: TStringField
      FieldName = 'RelatriodeRastreabilidade'
      Origin = 'CURA.UsuarioAlmox.RelatriodeRastreabilidade'
      FixedChar = True
      Size = 1
    end
    object SQLUSUARIOSCorrigeValoresRequisicao: TStringField
      FieldName = 'CorrigeValoresRequisicao'
      Origin = 'CURA.UsuarioAlmox.CorrigeValoresRequisicao'
      FixedChar = True
      Size = 1
    end
    object SQLUSUARIOSAtualizaEstoqueRetroativo: TStringField
      FieldName = 'AtualizaEstoqueRetroativo'
      Origin = 'CURA.UsuarioAlmox.AtualizaEstoqueRetroativo'
      FixedChar = True
      Size = 1
    end
    object SQLUSUARIOSRelatriodeControledeAcessos: TStringField
      FieldName = 'RelatriodeControledeAcessos'
      Origin = 'CURA.UsuarioAlmox.RelatriodeControledeAcessos'
      FixedChar = True
      Size = 1
    end
    object SQLUSUARIOSRelatoriodeRequisicao: TStringField
      FieldName = 'RelatoriodeRequisicao'
      Origin = 'CURA.UsuarioAlmox.RelatoriodeRequisicao'
      FixedChar = True
      Size = 1
    end
    object SQLUSUARIOSUsuarioAtivo: TStringField
      FieldName = 'UsuarioAtivo'
      Origin = 'CURA.UsuarioAlmox.UsuarioAtivo'
      FixedChar = True
      Size = 1
    end
    object SQLUSUARIOSTrocarLocaldeEstoque: TStringField
      FieldName = 'TrocarLocaldeEstoque'
      Origin = 'CURA.UsuarioAlmox.TrocarLocaldeEstoque'
      FixedChar = True
      Size = 1
    end
    object SQLUSUARIOSAnaliseEstoquesExcelNet: TStringField
      FieldName = 'AnaliseEstoquesExcelNet'
      Origin = 'CURA.UsuarioAlmox.AnaliseEstoquesExcelNet'
      FixedChar = True
      Size = 1
    end
    object SQLUSUARIOSContaGerencialEntrada: TStringField
      FieldName = 'ContaGerencialEntrada'
      Origin = 'CURA.UsuarioAlmox.ContaGerencialEntrada'
      FixedChar = True
      Size = 1
    end
    object SQLUSUARIOSNotaDevolucaoFornecedor: TStringField
      FieldName = 'NotaDevolucaoFornecedor'
      Origin = 'CURA.UsuarioAlmox.NotaDevolucaoFornecedor'
      FixedChar = True
      Size = 1
    end
    object SQLUSUARIOSAlteraValidadeLote: TStringField
      FieldName = 'AlteraValidadeLote'
      Origin = 'CURA.UsuarioAlmox.AlteraValidadeLote'
      FixedChar = True
      Size = 1
    end
    object SQLUSUARIOSMotivoDescarte: TStringField
      FieldName = 'MotivoDescarte'
      FixedChar = True
      Size = 1
    end
    object SQLUSUARIOSDescarteMateriais: TStringField
      FieldName = 'DescarteMateriais'
      FixedChar = True
      Size = 1
    end
    object SQLUSUARIOSDevolucaoMateriais: TStringField
      FieldName = 'DevolucaoMateriais'
      Origin = 'CURA.UsuarioAlmox.DevolucaoMateriais'
      FixedChar = True
      Size = 1
    end
    object SQLUSUARIOSRelatorioRecebimentoMateriais: TStringField
      FieldName = 'RelatorioRecebimentoMateriais'
      Origin = 'CURA.USUARIOALMOX.RelatorioRecebimentoMateriais'
      FixedChar = True
      Size = 1
    end
    object SQLUSUARIOSAprovaEntregaOCAtrasada: TStringField
      FieldName = 'AprovaEntregaOCAtrasada'
      Origin = 'CURA.UsuarioAlmox.AprovaEntregaOCAtrasada'
      FixedChar = True
      Size = 1
    end
    object SQLUSUARIOSRelCalculoConsumoGrace: TStringField
      FieldName = 'RelCalculoConsumoGrace'
      FixedChar = True
      Size = 1
    end
    object SQLUSUARIOSExcluirNF: TStringField
      FieldName = 'ExcluirNF'
      FixedChar = True
      Size = 1
    end
  end
  object UPD_USUARIOS: TUpdateSQL
    ModifySQL.Strings = (
      'update USUARIOALMOX'
      'set'
      '  Nome = :Nome,'
      '  Senha = :Senha,'
      '  Almoxarifado = :Almoxarifado,'
      '  Ajuste = :Ajuste,'
      '  Inventario = :Inventario,'
      '  Kardex = :Kardex,'
      '  Requisicao = :Requisicao,'
      '  Busca = :Busca,'
      '  Cadastros = :Cadastros,'
      '  Fornecedores = :Fornecedores,'
      '  EntradaNF = :EntradaNF,'
      '  DevForn = :DevForn,'
      '  OrdemdeCompra = :OrdemdeCompra,'
      '  Usuarios = :Usuarios,'
      '  Tabelas = :Tabelas,'
      '  GrupodeMateriais = :GrupodeMateriais,'
      '  Materiais = :Materiais,'
      '  CentrosdeCustos = :CentrosdeCustos,'
      '  CondPag = :CondPag,'
      '  Locais = :Locais,'
      '  Motivos = :Motivos,'
      '  Marcas = :Marcas,'
      '  TipodeDocumento = :TipodeDocumento,'
      '  Unidades = :Unidades,'
      '  Sair = :Sair,'
      '  ESTOQUE_MINIMO = :ESTOQUE_MINIMO,'
      '  COMPRAS = :COMPRAS,'
      '  SOLICITACAO = :SOLICITACAO,'
      '  COTACAO = :COTACAO,'
      '  local_id = :local_id,'
      '  Transferencia = :Transferencia,'
      '  CONSUMOMATERIAIS = :CONSUMOMATERIAIS,'
      '  estoque = :estoque,'
      '  AlteraSenha = :AlteraSenha,'
      ' VALIDADE = :VALIDADE,'
      ' REL_CONF_REQUISICAO = :REL_CONF_REQUISICAO,'
      ' REL_OC_RECEB = :REL_OC_RECEB,'
      'Requisicao_Adm = :Requisicao_Adm,'
      'Requisicao_usu = :Requisicao_usu,'
      'Requisicao_imp = :Requisicao_imp,'
      'Requisicao_aprov = :Requisicao_aprov,'
      'CURVA_ABC = :CURVA_ABC,'
      'REL_OC = :REL_OC,'
      'DocsQualidade = :DocsQualidade,'
      'RelDocsFornecedor = :RelDocsFornecedor,'
      'admRequisicao = :admRequisicao,'
      'ConsumoFornecedor = :ConsumoFornecedor,'
      'AnaliseCompras = :AnaliseCompras,'
      'Lotevalidade = :lotevalidade,'
      'Estoquemaximo = :estoquemaximo,'
      'Ocorrencias = :Ocorrencias,'
      'CBARRAS = :CBARRAS,'
      'CONSEQUENCIA = :CONSEQUENCIA,'
      'LiberaMaterial = :LiberaMaterial,'
      'RelIntervalo = :RelIntervalo,'
      'ConfereRequisicao = :ConfereRequisicao,'
      'RelTransferencia = :RelTransferencia,'
      'EstoqueRetro = :EstoqueRetro,'
      'NOME_COMPLETO = :NOME_COMPLETO,'
      'ConsultaInvetarioMaterial = :ConsultaInvetarioMaterial,'
      'RelTransfCustos = :RelTransfCustos,'
      'Divergencias = :Divergencias,'
      'bionexoDownload = :bionexoDownload,'
      'bionexoUpload = :bionexoUpload,'
      'RelMateriaisInativos = :RelMateriaisInativos,'
      'Relatorios1 = :Relatorios1,'
      'RequisicaoEstoqueMaxMin = :RequisicaoEstoqueMaxMin,'
      'RequisicaoSimplificada = :RequisicaoSimplificada,'
      'NFeXML = :NFeXML,'
      'RelatriodeRastreabilidade = :RelatriodeRastreabilidade,'
      'CorrigeValoresRequisicao = :CorrigeValoresRequisicao,'
      'AtualizaEstoqueRetroativo = :AtualizaEstoqueRetroativo,'
      'RelatriodeControledeAcessos = :RelatriodeControledeAcessos,'
      'RelatoriodeRequisicao = :RelatoriodeRequisicao,'
      'UsuarioAtivo = :UsuarioAtivo,'
      'TrocarLocaldeEstoque = :TrocarLocaldeEstoque,'
      'AnaliseEstoquesExcelNet = :AnaliseEstoquesExcelNet,'
      'ContaGerencialEntrada = :ContaGerencialEntrada,'
      'NotaDevolucaoFornecedor = :NotaDevolucaoFornecedor,'
      'AlteraValidadeLote = :AlteraValidadeLote,'
      'MotivoDescarte = :MotivoDescarte,'
      'DescarteMateriais = :DescarteMateriais,'
      'DevolucaoMateriais = :DevolucaoMateriais,'
      'RelatorioRecebimentoMateriais = :RelatorioRecebimentoMateriais,'
      'AprovaEntregaOCAtrasada = :AprovaEntregaOCAtrasada,'
      'RelCalculoConsumoGrace = :RelCalculoConsumoGrace,'
      'ExcluirNF = :ExcluirNF'
      'where'
      '  CH = :OLD_CH')
    InsertSQL.Strings = (
      'insert into USUARIOALMOX'
      
        '  (Nome, Senha, Almoxarifado, Ajuste, Inventario, Kardex, Requis' +
        'icao, Busca, '
      
        '   Cadastros, Fornecedores, EntradaNF, DevForn, OrdemdeCompra, U' +
        'suarios, '
      
        '   Tabelas, GrupodeMateriais, Materiais, CentrosdeCustos, CondPa' +
        'g, Locais, '
      
        '   Motivos, Marcas, TipodeDocumento, Unidades, Sair, ESTOQUE_MIN' +
        'IMO,'
      '  COMPRAS, SOLICITACAO, COTACAO, local_id, Transferencia, '
      'CONSUMOMATERIAIS, estoque, AlteraSenha, VALIDADE, '
      
        'REL_CONF_REQUISICAO, REL_OC_RECEB, Requisicao_Adm, Requisicao_us' +
        'u, '
      
        'Requisicao_imp, Requisicao_aprov, CURVA_ABC, REL_OC, DocsQualida' +
        'de, '
      'RelDocsFornecedor, admRequisicao,'
      
        'ConsumoFornecedor, AnaliseCompras, LoteValidade, EstoqueMaximo, ' +
        'Ocorrencias, '
      'CBARRAS,'
      
        'CONSEQUENCIA, LiberaMaterial, RelIntervalo, ConfereRequisicao, R' +
        'elTransferencia, '
      'NOME_COMPLETO, ConsultaInvetarioMaterial, NFeXML)'
      'values'
      
        '  (:Nome, :Senha, :Almoxarifado, :Ajuste, :Inventario, :Kardex, ' +
        ':Requisicao, '
      
        '   :Busca, :Cadastros, :Fornecedores, :EntradaNF, :DevForn, :Ord' +
        'emdeCompra, '
      
        '   :Usuarios, :Tabelas, :GrupodeMateriais, :Materiais, :Centrosd' +
        'eCustos, '
      
        '   :CondPag, :Locais, :Motivos, :Marcas, :TipodeDocumento, :Unid' +
        'ades, :Sair'
      ', :ESTOQUE_MINIMO, :COMPRAS, :SOLICITACAO, :COTACAO, :local_id, '
      ':Transferencia,'
      ':CONSUMOMATERIAIS, :estoque, :AlteraSenha, :VALIDADE, '
      
        ':REL_CONF_REQUISICAO, :REL_OC_RECEB, :Requisicao_Adm, :Requisica' +
        'o_usu, '
      
        ':Requisicao_imp, :Requisicao_aprov, :CURVA_ABC, :REL_OC, :DocsQu' +
        'alidade, '
      ':RelDocsFornecedor, :admRequisicao,'
      
        ':ConsumoFornecedor, :AnaliseCompras, :LoteValidade, :EstoqueMaxi' +
        'mo, '
      ':Ocorrencias, :CBARRAS,'
      
        ':CONSEQUENCIA, :LiberaMaterial, :RelIntervalo, :ConfereRequisica' +
        'o, '
      
        ':RelTransferencia, :NOME_COMPLETO, :ConsultaInvetarioMaterial, :' +
        'NFeXML)')
    DeleteSQL.Strings = (
      'delete from USUARIOALMOX'
      'where'
      '  CH = :OLD_CH')
    Left = 384
    Top = 297
  end
  object SP_ADDLOGIN: TwwStoredProc
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    StoredProcName = 'DBO.SP_CRIA_LOGIN'
    ValidateWithMask = True
    Left = 969
    Top = 9
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Result'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = '@NOME'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@PWD'
        ParamType = ptInput
      end>
  end
  object qrLocal: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select Local_id, descricao from local'
      'order by descricao')
    Left = 1154
    Top = 16
    object qrLocaldescricao: TStringField
      DisplayLabel = 'Local'
      DisplayWidth = 50
      FieldName = 'descricao'
      Size = 50
    end
    object qrLocalLocal_id: TAutoIncField
      DisplayWidth = 10
      FieldName = 'Local_id'
      ReadOnly = True
      Visible = False
    end
  end
  object qrCentro: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM CENTRO_CUSTO ORDER BY CC_Desc')
    Left = 752
    Top = 16
    object qrCentroCC_Desc: TStringField
      DisplayWidth = 40
      FieldName = 'CC_Desc'
      Size = 40
    end
    object qrCentroCC_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'CC_ID'
      ReadOnly = True
      Visible = False
    end
  end
  object qrCentrosADD: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM UsuarioAlmoxCentros')
    Left = 752
    Top = 88
    object qrCentrosADDID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object qrCentrosADDCH: TIntegerField
      FieldName = 'CH'
    end
    object qrCentrosADDCC_ID: TIntegerField
      FieldName = 'CC_ID'
    end
  end
  object qrGrid: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CH'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select  distinct'
      #9'A.*,'
      #9'B.CC_Desc'
      'from UsuarioAlmoxCentros A inner join CENTRO_CUSTO b'
      'on a.CC_ID = b.CC_ID'
      'where A.CH = :CH'
      'ORDER BY B.CC_Desc')
    Left = 752
    Top = 152
    object qrGridCC_Desc: TStringField
      DisplayLabel = 'Centro de custo'
      DisplayWidth = 40
      FieldName = 'CC_Desc'
      Size = 40
    end
    object qrGridID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'ID'
      ReadOnly = True
      Visible = False
    end
    object qrGridCH: TIntegerField
      FieldName = 'CH'
    end
    object qrGridCC_ID: TIntegerField
      FieldName = 'CC_ID'
    end
  end
  object DataSource1: TDataSource
    DataSet = qrGrid
    Left = 824
    Top = 88
  end
  object qrAux: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    Left = 816
    Top = 16
  end
  object qryLocais: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    SQL.Strings = (
      'select Local_ID, Descricao from LOCAl order by Descricao')
    Left = 592
    Top = 392
    object qryLocaisDescricao: TStringField
      DisplayWidth = 50
      FieldName = 'Descricao'
      Size = 50
    end
    object qryLocaisLocal_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'Local_ID'
      ReadOnly = True
      Visible = False
    end
  end
  object qryUsuLocal: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CH'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT '
      ' A.*, '
      ' B.Descricao'
      'FROM UsuariosAlmoxLocais A INNER JOIN LOCAL B'
      'ON A.LOCAL_ID = B.Local_ID'
      'WHERE CH = :CH'
      'ORDER BY B.Descricao')
    Left = 880
    Top = 208
    object qryUsuLocalDescricao: TStringField
      DisplayWidth = 50
      FieldName = 'Descricao'
      Size = 50
    end
    object qryUsuLocalID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'ID'
      ReadOnly = True
      Visible = False
    end
    object qryUsuLocalCH: TIntegerField
      DisplayWidth = 10
      FieldName = 'CH'
      Visible = False
    end
    object qryUsuLocalLOCAL_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'LOCAL_ID'
      Visible = False
    end
  end
  object qry1: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    Left = 944
    Top = 176
  end
  object ds1: TDataSource
    DataSet = qryUsuLocal
    Left = 920
    Top = 144
  end
end
