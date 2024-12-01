object FDevas: TFDevas
  Left = 1
  Top = 0
  Width = 802
  Height = 545
  Caption = 'Devolução a Fornecedores'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Comic Sans MS'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 17
  object Tb1: TTabbedNotebook
    Left = 0
    Top = 49
    Width = 786
    Height = 458
    Align = alClient
    PageIndex = 1
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    TabFont.Charset = ANSI_CHARSET
    TabFont.Color = clNavy
    TabFont.Height = -13
    TabFont.Name = 'Comic Sans MS'
    TabFont.Style = [fsBold]
    TabOrder = 0
    OnClick = Tb1Click
    OnChange = Tb1Change
    object TTabPage
      Left = 4
      Top = 30
      Caption = '           &Capa          '
      object Panel1: TPanel
        Left = 0
        Top = 3
        Width = 782
        Height = 416
        BevelInner = bvLowered
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label3: TLabel
          Left = 277
          Top = 7
          Width = 61
          Height = 17
          Caption = 'Fornecedor'
          Color = clNavy
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label2: TLabel
          Left = 7
          Top = 7
          Width = 41
          Height = 17
          Caption = 'N. Dev.'
          Color = clNavy
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label1: TLabel
          Left = 138
          Top = 7
          Width = 54
          Height = 17
          Caption = 'Num. N.F.'
          Color = clNavy
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label9: TLabel
          Left = 138
          Top = 53
          Width = 27
          Height = 17
          Caption = 'Data'
          Color = clNavy
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label10: TLabel
          Left = 277
          Top = 53
          Width = 38
          Height = 17
          Caption = 'Motivo'
          Color = clNavy
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label16: TLabel
          Left = 8
          Top = 112
          Width = 203
          Height = 21
          Caption = 'Itens - Visualização Apenas'
          Color = clNavy
          Font.Charset = ANSI_CHARSET
          Font.Color = 13472539
          Font.Height = -15
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object wwDBGrid1: TwwDBGrid
          Left = 5
          Top = 135
          Width = 772
          Height = 273
          TabStop = False
          Selected.Strings = (
            'DSMAT'#9'27'#9'Material'
            'N_Lote'#9'9'#9'Lote'
            'MARCA_DESC'#9'14'#9'Marca'
            'For_Codi'#9'15'#9'Fornecedor'
            'Valid'#9'10'#9'Valid'
            'Qtde'#9'12'#9'Qtde'
            'UNI_DESC'#9'13'#9'Unidade'
            'DS_LOC'#9'18'#9'Local'
            'Usuario'#9'13'#9'Usuario'
            'Data'#9'19'#9'Data')
          IniAttributes.FileName = 'delphi32.ini'
          IniAttributes.SectionName = 'FPcPwwDBGrid3'
          IniAttributes.Delimiter = ';;'
          TitleColor = clLime
          FixedCols = 0
          ShowHorzScrollBar = True
          Color = clInfoBk
          DataSource = DS_DVI
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = 12517376
          Font.Height = -12
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          KeyOptions = [dgEnterToTab]
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
          ParentFont = False
          RowHeightPercent = 110
          TabOrder = 4
          TitleAlignment = taLeftJustify
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clBlue
          TitleFont.Height = -11
          TitleFont.Name = 'Comic Sans MS'
          TitleFont.Style = []
          TitleLines = 1
          TitleButtons = False
          OnCalcCellColors = GridYCalcCellColors
        end
        object cboForn: TwwDBLookupCombo
          Left = 277
          Top = 26
          Width = 500
          Height = 26
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'FOR_CODI'#9'15'#9'FOR_CODI'#9'F')
          DataField = 'For_Codi'
          DataSource = DS_DVC
          LookupTable = Q_FORN
          LookupField = 'FOR_CODI'
          TabOrder = 2
          AutoDropDown = True
          ShowButton = True
          PreciseEditRegion = False
          AllowClearKey = False
          OnClick = cboFornClick
          OnEnter = cboFornEnter
          OnExit = cboFornExit
        end
        object dbCod: TwwDBEdit
          Left = 7
          Top = 26
          Width = 94
          Height = 26
          BiDiMode = bdRightToLeft
          ParentBiDiMode = False
          DataField = 'Dev_ID'
          DataSource = DS_DVC
          Enabled = False
          TabOrder = 0
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object txtNF: TwwDBEdit
          Left = 138
          Top = 26
          Width = 111
          Height = 26
          BiDiMode = bdRightToLeft
          ParentBiDiMode = False
          DataField = 'NFIS'
          DataSource = DS_DVC
          TabOrder = 1
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnEnter = txtNFEnter
          OnExit = txtNFExit
        end
        object wwDBEdit4: TwwDBEdit
          Left = 138
          Top = 72
          Width = 111
          Height = 26
          BiDiMode = bdRightToLeft
          ParentBiDiMode = False
          DataField = 'Data'
          DataSource = DS_DVC
          Enabled = False
          TabOrder = 5
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnEnter = txtNFEnter
          OnExit = txtNFExit
        end
        object cboMotc: TwwDBLookupCombo
          Left = 277
          Top = 72
          Width = 500
          Height = 26
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'MOT_DESC'#9'20'#9'MOT_DESC'#9'F')
          DataField = 'Mot_ID'
          DataSource = DS_DVC
          LookupTable = Q_MOT
          LookupField = 'MOT_ID'
          TabOrder = 3
          AutoDropDown = True
          ShowButton = True
          PreciseEditRegion = False
          AllowClearKey = False
          OnClick = cboFornClick
          OnEnter = cboFornEnter
          OnExit = cboMotcExit
        end
      end
    end
    object TTabPage
      Left = 4
      Top = 30
      Caption = '        &Itens         '
      object Panel2: TPanel
        Left = 0
        Top = 3
        Width = 785
        Height = 422
        BevelInner = bvLowered
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label4: TLabel
          Left = 7
          Top = 8
          Width = 41
          Height = 17
          Caption = 'N. Dev.'
          Color = clNavy
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label6: TLabel
          Left = 138
          Top = 8
          Width = 54
          Height = 17
          Caption = 'Num. N.F.'
          Color = clNavy
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label7: TLabel
          Left = 277
          Top = 8
          Width = 61
          Height = 17
          Caption = 'Fornecedor'
          Color = clNavy
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label41: TLabel
          Left = 7
          Top = 53
          Width = 45
          Height = 17
          Caption = 'Formato'
          Color = clSilver
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
          Visible = False
        end
        object Label42: TLabel
          Left = 7
          Top = 98
          Width = 48
          Height = 17
          Caption = 'Material'
          Color = clSilver
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
          Visible = False
        end
        object Label37: TLabel
          Left = 546
          Top = 98
          Width = 32
          Height = 17
          Caption = 'Qtde.'
          Color = clSilver
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
          Visible = False
        end
        object Label8: TLabel
          Left = 8
          Top = 141
          Width = 38
          Height = 17
          Caption = 'Motivo'
          Color = 15129045
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
          Visible = False
        end
        object Label30: TLabel
          Left = 444
          Top = 141
          Width = 43
          Height = 17
          Caption = 'Usuário'
          Color = clNavy
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label5: TLabel
          Left = 681
          Top = 141
          Width = 27
          Height = 17
          Caption = 'Data'
          Color = clNavy
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Sp_OC: TSpeedButton
          Left = 33
          Top = 337
          Width = 125
          Height = 29
          Caption = 'Itens da NF'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            0400000000000001000000000000000000001000000010000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555000000
            000055555F77777777775555000FFFFFFFF0555F777F5FFFF55755000F0F0000
            FFF05F777F7F77775557000F0F0FFFFFFFF0777F7F7F5FFFFFF70F0F0F0F0000
            00F07F7F7F7F777777570F0F0F0FFFFFFFF07F7F7F7F5FFFFFF70F0F0F0F0000
            00F07F7F7F7F777777570F0F0F0FFFFFFFF07F7F7F7F5FFF55570F0F0F0F000F
            FFF07F7F7F7F77755FF70F0F0F0FFFFF00007F7F7F7F5FF577770F0F0F0F00FF
            0F057F7F7F7F77557F750F0F0F0FFFFF00557F7F7F7FFFFF77550F0F0F000000
            05557F7F7F77777775550F0F0000000555557F7F7777777555550F0000000555
            55557F7777777555555500000005555555557777777555555555}
          NumGlyphs = 2
          ParentFont = False
          OnClick = Sp_OCClick
        end
        object Sp_Conf: TSpeedButton
          Left = 163
          Top = 337
          Width = 223
          Height = 29
          Caption = 'Confirmar e Atualizar Estoques'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
            555555555555555555555555555555555555555555FF55555555555559055555
            55555555577FF5555555555599905555555555557777F5555555555599905555
            555555557777FF5555555559999905555555555777777F555555559999990555
            5555557777777FF5555557990599905555555777757777F55555790555599055
            55557775555777FF5555555555599905555555555557777F5555555555559905
            555555555555777FF5555555555559905555555555555777FF55555555555579
            05555555555555777FF5555555555557905555555555555777FF555555555555
            5990555555555555577755555555555555555555555555555555}
          NumGlyphs = 2
          ParentFont = False
          OnClick = Sp_ConfClick
        end
        object Label34: TLabel
          Left = 392
          Top = 345
          Width = 24
          Height = 13
          AutoSize = False
          Color = clRed
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clAqua
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label33: TLabel
          Left = 651
          Top = 343
          Width = 92
          Height = 16
          Caption = 'Item sem baixa'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label29: TLabel
          Left = 622
          Top = 345
          Width = 24
          Height = 13
          AutoSize = False
          Color = clBlue
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clAqua
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label11: TLabel
          Left = 422
          Top = 343
          Width = 192
          Height = 16
          Caption = 'Item que já deu baixa no Almox.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object GridY: TwwDBGrid
          Left = 5
          Top = 56
          Width = 772
          Height = 273
          TabStop = False
          Selected.Strings = (
            'DSMAT'#9'27'#9'Material'
            'N_Lote'#9'9'#9'Lote'
            'MARCA_DESC'#9'14'#9'Marca'
            'For_Codi'#9'15'#9'Fornecedor'
            'Valid'#9'10'#9'Valid'
            'Qtde'#9'12'#9'Qtde'
            'UNI_DESC'#9'13'#9'Unidade'
            'DS_LOC'#9'18'#9'Local'
            'Usuario'#9'13'#9'Usuario'
            'Data'#9'19'#9'Data')
          IniAttributes.FileName = 'delphi32.ini'
          IniAttributes.SectionName = 'FPcPwwDBGrid3'
          IniAttributes.Delimiter = ';;'
          TitleColor = clLime
          FixedCols = 0
          ShowHorzScrollBar = True
          Color = clInfoBk
          DataSource = DS_DVI
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          KeyOptions = [dgEnterToTab]
          ParentFont = False
          RowHeightPercent = 110
          TabOrder = 7
          TitleAlignment = taLeftJustify
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clBlue
          TitleFont.Height = -12
          TitleFont.Name = 'Comic Sans MS'
          TitleFont.Style = []
          TitleLines = 1
          TitleButtons = False
          OnCalcCellColors = GridYCalcCellColors
        end
        object Panel5: TPanel
          Left = 5
          Top = 57
          Width = 774
          Height = 272
          BevelInner = bvRaised
          BevelOuter = bvLowered
          BorderStyle = bsSingle
          Color = clWhite
          TabOrder = 9
          Visible = False
          object btCancx: TSpeedButton
            Left = 266
            Top = 236
            Width = 114
            Height = 25
            Caption = 'Cancela'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Comic Sans MS'
            Font.Style = []
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
            Layout = blGlyphRight
            NumGlyphs = 2
            ParentFont = False
            OnClick = btCancxClick
          end
          object btConfx: TSpeedButton
            Left = 156
            Top = 236
            Width = 104
            Height = 25
            Caption = '&Confirma'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              0400000000000001000000000000000000001000000010000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
              555555555555555555555555555555555555555555FF55555555555559055555
              55555555577FF5555555555599905555555555557777F5555555555599905555
              555555557777FF5555555559999905555555555777777F555555559999990555
              5555557777777FF5555557990599905555555777757777F55555790555599055
              55557775555777FF5555555555599905555555555557777F5555555555559905
              555555555555777FF5555555555559905555555555555777FF55555555555579
              05555555555555777FF5555555555557905555555555555777FF555555555555
              5990555555555555577755555555555555555555555555555555}
            Layout = blGlyphRight
            NumGlyphs = 2
            ParentFont = False
            OnClick = btConfxClick
          end
          object bt_Selx: TSpeedButton
            Left = 26
            Top = 236
            Width = 126
            Height = 25
            Caption = '&Seleciona Tudo'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500000000055
              555557777777775F55550FFFFFFFFF0555557F5555555F7FFF5F0FEEEEEE0000
              05007F555555777775770FFFFFF0BFBFB00E7F5F5557FFF557770F0EEEE000FB
              FB0E7F75FF57775555770FF00F0FBFBFBF0E7F57757FFFF555770FE0B00000FB
              FB0E7F575777775555770FFF0FBFBFBFBF0E7F5575FFFFFFF5770FEEE0000000
              FB0E7F555777777755770FFFFF0B00BFB0007F55557577FFF7770FEEEEE0B000
              05557F555557577775550FFFFFFF0B0555557FF5F5F57575F55500F0F0F0F0B0
              555577F7F7F7F7F75F5550707070700B055557F7F7F7F7757FF5507070707050
              9055575757575757775505050505055505557575757575557555}
            Layout = blGlyphRight
            NumGlyphs = 2
            ParentFont = False
            OnClick = bt_SelxClick
          end
          object Label12: TLabel
            Left = 383
            Top = 241
            Width = 24
            Height = 13
            AutoSize = False
            Color = clRed
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clAqua
            Font.Height = -19
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label13: TLabel
            Left = 413
            Top = 238
            Width = 200
            Height = 16
            Caption = 'Item de NF COM baixa no Almox.'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Comic Sans MS'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label14: TLabel
            Left = 645
            Top = 238
            Width = 123
            Height = 16
            Caption = 'Item da NF s/ baixa'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Comic Sans MS'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label15: TLabel
            Left = 616
            Top = 241
            Width = 24
            Height = 13
            AutoSize = False
            Color = clBlue
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clAqua
            Font.Height = -19
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Grid2: TwwDBGrid
            Left = 5
            Top = 3
            Width = 761
            Height = 222
            Hint = 'Pressione Duplo Clique para Selecionar'
            Selected.Strings = (
              'ALTERAR'#9'1'#9'**'
              'DSMAT'#9'20'#9'Material'
              'MARCA_DESC'#9'16'#9'Marca'
              'N_LOTE'#9'10'#9'Lote'
              'FOR_CODI'#9'12'#9'Fornecedor'
              'VALID'#9'11'#9'Valid'
              'QTDE'#9'9'#9'Qtde.'
              'UNI_DESC'#9'7'#9'Unidade'
              'MATMARCA_CONVERSAO'#9'10'#9'Convers.')
            IniAttributes.Delimiter = ';;'
            TitleColor = clLime
            FixedCols = 0
            ShowHorzScrollBar = True
            Color = clInfoBk
            Ctl3D = True
            DataSource = DS_IT
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -12
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            KeyOptions = []
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            TitleAlignment = taLeftJustify
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clBlue
            TitleFont.Height = -12
            TitleFont.Name = 'Comic Sans MS'
            TitleFont.Style = []
            TitleLines = 1
            TitleButtons = False
            OnCalcCellColors = Grid2CalcCellColors
          end
        end
        object wwDBEdit1: TwwDBEdit
          Left = 7
          Top = 27
          Width = 94
          Height = 26
          BiDiMode = bdRightToLeft
          ParentBiDiMode = False
          DataField = 'Dev_ID'
          DataSource = DS_DVC
          Enabled = False
          TabOrder = 0
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBEdit2: TwwDBEdit
          Left = 138
          Top = 27
          Width = 94
          Height = 26
          BiDiMode = bdRightToLeft
          ParentBiDiMode = False
          DataField = 'NFIS'
          DataSource = DS_DVC
          Enabled = False
          TabOrder = 1
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnEnter = txtNFEnter
          OnExit = txtNFExit
        end
        object wwDBLookupCombo1: TwwDBLookupCombo
          Left = 277
          Top = 27
          Width = 394
          Height = 26
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'FANTASIA'#9'60'#9'FANTASIA'#9'F')
          DataField = 'For_Codi'
          DataSource = DS_DVC
          LookupTable = Q_FORN
          LookupField = 'FOR_CODI'
          Enabled = False
          TabOrder = 2
          AutoDropDown = True
          ShowButton = True
          PreciseEditRegion = False
          AllowClearKey = False
          OnEnter = cboFornEnter
          OnExit = cboFornExit
        end
        object cboForm: TwwDBLookupCombo
          Left = 13
          Top = 222
          Width = 663
          Height = 25
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'DSTXT'#9'255'#9'DSTXT'#9'F')
          DataSource = DS_DVI
          LookupTable = Q_MATX
          LookupField = 'M_F_ID'
          Color = clWhite
          ParentFont = False
          TabOrder = 3
          Visible = False
          AutoDropDown = True
          ShowButton = True
          PreciseEditRegion = False
          AllowClearKey = False
          OnEnter = cboFormEnter
          OnExit = cboFormExit
        end
        object cboMat: TwwDBLookupCombo
          Left = 13
          Top = 115
          Width = 407
          Height = 25
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'DESCRICAO'#9'80'#9'DESCRICAO'#9'F')
          DataField = 'Mat_ID'
          DataSource = DS_DVI
          LookupTable = Q_MAT
          LookupField = 'MAT_ID'
          Color = clWhite
          ParentFont = False
          TabOrder = 4
          Visible = False
          AutoDropDown = True
          ShowButton = True
          PreciseEditRegion = False
          AllowClearKey = False
          OnEnter = cboMatEnter
          OnExit = cboMatExit
        end
        object txtQ: TwwDBEdit
          Left = 547
          Top = 115
          Width = 124
          Height = 25
          Color = clWhite
          DataField = 'Qtde'
          DataSource = DS_DVI
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          UnboundDataType = wwDefault
          Visible = False
          WantReturns = False
          WordWrap = False
          OnEnter = txtQEnter
          OnExit = txtQExit
        end
        object cboMot: TwwDBLookupCombo
          Left = 14
          Top = 166
          Width = 407
          Height = 26
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'Descricao'#9'40'#9'Descricao'#9'F')
          DataField = 'Mot_ID'
          DataSource = DS_DVI
          LookupTable = Q_MOT3
          LookupField = 'MOT_ID'
          Color = clWhite
          TabOrder = 6
          Visible = False
          AutoDropDown = True
          ShowButton = True
          PreciseEditRegion = False
          AllowClearKey = False
          OnEnter = cboFornEnter
          OnExit = cboMotExit
        end
        object cboStIt: TwwDBComboBox
          Left = 270
          Top = 271
          Width = 122
          Height = 26
          ShowButton = True
          Style = csDropDown
          MapList = True
          AllowClearKey = False
          AutoDropDown = True
          ButtonStyle = cbsEllipsis
          DataField = 'STORD'
          DropDownCount = 8
          Enabled = False
          ItemHeight = 0
          Items.Strings = (
            'Aberto'#9'A'
            'Parcial'#9'P'
            'Total'#9'T')
          Sorted = False
          TabOrder = 8
          UnboundDataType = wwDefault
          OnEnter = DBCB_CFA_TICMEnter
          OnExit = DBCB_CFA_TICMExit
        end
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 786
    Height = 49
    Align = alTop
    Alignment = taLeftJustify
    BevelInner = bvLowered
    TabOrder = 1
    object Bt_IncluirY: TSpeedButton
      Left = 107
      Top = 3
      Width = 54
      Height = 43
      Hint = 'Incluir'
      Caption = 'Adicionar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FF097711097711097711097711FF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FF06770CFFFFFF0EA41B0EA51C0EA51C097711FF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF06770CFFFFFF0EA41B0EA5
        1C0EA51C097711FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF06770C
        FFFFFF0EA41B0EA51C0EA51C097711FF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FF06770DFFFFFF0EA41B0EA51C0EA51C097711FF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FF08780EFFFFFF10A61F0EA51B0EA51B097711FF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF08780EFFFFFF17AB2911A8
        2111A821097711FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FF09771109771109771109771109771109771108780E
        FFFFFF1DB13218AD2A18AD2A08780E0977110977110977110977110977110977
        11FF00FFFF00FFFF00FFFF00FFFF00FF097711FFFFFF52DD7E4CD87546D46D41
        CF663CCC5F36C65529BA4324B53B1FB13319AC2B1BB02F17AC2812A8210EA51C
        0EA51B0EA51B0EA51B097711FF00FFFF00FFFF00FFFF00FF097711FFFFFF52DD
        7E4CD87546D46D41CF663CCC5F36C65530BE4C2BBA4426B63D20B2361BB02F17
        AC2812A8210EA51C0EA51B0EA51C0EA51C097711FF00FFFF00FFFF00FFFF00FF
        097711FFFFFF56E08551DA7C4CD67546D26D42CE663CC95E37C55631C04F2CBC
        4827B74022B4381EB03219AC2B13A8230FA41D0EA31B0EA41B097711FF00FFFF
        00FFFF00FFFF00FF097711FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF38C55833C1512EBE4AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF097711FF00FFFF00FFFF00FFFF00FFFF00FF09771109771109771109771109
        771109771108780EFFFFFF3FCC633BC95C3BC95C08780E097711097711097711
        097711097711097711FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FF097711FFFFFF46D36E42D06842D068097711FF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF097711FFFFFF4DD87749D5
        7149D571097711FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF097711
        FFFFFF54DD8150DB7B50DB7B097711FF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FF097711FFFFFF59E28957E1855EE890097711FF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FF097711FFFFFF5AE38A5CE58C5EE890097711FF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF097711FFFFFFFFFFFFFFFF
        FFFFFFFF097711FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        097711097711097711097711FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      Layout = blGlyphTop
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Spacing = 0
      OnClick = Bt_IncluirYClick
    end
    object bt_gravarY: TSpeedButton
      Left = 163
      Top = 3
      Width = 52
      Height = 43
      Hint = 'Gravar'
      Caption = 'Gravar'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
        AE746C9F52529A4D4E9C4E4F994748A37374B7B8B8B8B6B6B9B7B7BAB8B7BAB7
        B7B9B7B7B8B6B6B7B6B6B8B8B8A47171984546994A4B994B4C9A4D4E9A4D4EFF
        00FFFF00FFB48176C36E6BC96464C96464CB6565B757579A696AB0B1B1CDCDCB
        E5E3E1F2EFEDF9F5F2F9F5F1EEEBEAE3E2E0DEDFDFB67676952C2C9835359E3A
        3AC15B5BC060619A4C4DFF00FFB48176C36E6BCD6565CD6666CE6767BA58599B
        6C6CA18D8DB58180CFAFACDFCCCAF9F5F1FFFCF9FBF7F5EFEDEBE8E9E8B97677
        942A299833339E3939C25C5CC262629A4C4DFF00FFB48176C36E6BCC6565CB66
        66CE6767B858589E7171A17D7E9E3D3CB4706EC9A09DECE8E5FBF7F5FEFAF7F9
        F5F2F0F0EFBB7978942A2A9833339E3939C25C5CC262629A4C4DFF00FFB48176
        C36E6BCC6565CB6666CE6767B85858A27474A78484972F2F9F3F3FB57573DED8
        D7F2EFEDFBF7F5FEFBF8FAFAF7BE7C7C94292A9833339E3939C25C5CC262629A
        4C4DFF00FFB48176C36E6BCC6565CB6666CE6767B85858A57676AD8988983232
        972F2FA04848C9C2C1E5E3E1F3F0EDFDF9F6FFFFFDC27F7E9329299833339E39
        39C25C5CC262629A4C4DFF00FFB48176C36E6BCC6565CB6666CE6767B75757AB
        7A79B58C8B972B2B972B2B973232ADA6A6CFCFCEE6E3E0F6F3F0FFFFFDC48280
        9329299833339E3939C25C5CC262629A4C4DFF00FFB48176C36E6BCC6565CB66
        66CE6767B55656AE7C7BC5AAA8A66565A160609D64649E9F9FB4B9B8D3D6D4EC
        EFECFFFFFFC382819026269530309C3737C15B5BC262629A4C4DFF00FFB48176
        C36E6BCC6565CB6666CE6767BD5C5CB97172D3A7A5C9A0A0BF9999B89494B18D
        8DB18D8DC39F9ED8B2B1E6C2C0C57776A73F3FAA4545AE4949C66060C261629A
        4C4DFF00FFB48176C36E6BCD6666CD6666CD6666CC6565CC6363CB6161CB6262
        CB6262CC6162CC6162CB6161CA5F5FCA5F5FC95F5FCB6262CC6565CC6363CD66
        66CE6767C060619A4C4DFF00FFB48176C36E6BC66060C15D5CC46361C86C6BCB
        7272CD7776CD7776CD7776CD7776CD7776CD7776CD7776CD7776CD7776CD7776
        CD7776CD7978CD6F6FCD6666C060619A4C4DFF00FFB48276C46F6CB04E4AA549
        44B56C68C48F8CD0ABA9D7BCBBD8BFBED8BEBDD8BEBDD8BEBDD8BEBDD8BEBDD8
        BEBDD8BEBDD8BEBDD8BEBDD8C3C2D19090CC6161C060619A4C4DFF00FFB48276
        C46E6BAC4541CE9E9AFAF5F3F6EDECF7EFEEF8F1F0F8F1F0F8F1F0F8F1F0F8F1
        F0F8F1F0F8F1F0F8F1F0F8F1F0F8F1F0FAF3F2EEE5E4CD8E8DC35959C060619A
        4D4EFF00FFB48276C46E6BAC4541D2A6A3FFFFFFFBF5F4FBF5F4FBF5F4FBF5F4
        FBF5F4FBF5F4FBF5F4FBF5F4FBF5F4FBF5F4FBF5F4FBF5F4FDF7F6EFE7E6CC8D
        8CC15757C060619A4D4EFF00FFB48276C46E6BAC4541D1A4A1FFFFFDF8F2F1F8
        F1F0F8F2F1F8F2F1F8F2F1F8F2F1F8F2F1F8F2F1F8F2F1F8F2F1F8F2F1F8F1F0
        FBF5F4EFE6E5CC8D8CC15757C060619A4D4EFF00FFB48276C46E6BAC4541D1A4
        A1FFFFFEE9E4E3CCCACACDCCCCCDCCCCCDCCCCCDCCCCCDCCCCCDCCCCCDCCCCCD
        CCCCCDCCCCCAC9C8E6E2E2F2E8E7CC8D8CC15757C060619A4D4EFF00FFB48276
        C46E6BAC4541D1A4A1FFFFFEF5EEEEEDE8E7EDE8E7EDE8E7EDE8E7EDE8E7EDE8
        E7EDE8E7EDE8E7EDE8E7EDE8E7ECE7E6F5F0F0F1E7E6CC8D8CC15757C060619A
        4D4EFF00FFB48276C46E6BAC4541D1A4A1FFFFFEECE7E6D4D1D1D5D2D2D5D2D2
        D5D2D2D5D2D2D5D2D2D5D2D2D5D2D2D5D2D2D5D2D2D2D0D0E9E5E5F1E8E7CC8D
        8CC15757C060619A4D4EFF00FFB48276C46E6BAC4541D1A4A1FFFFFEF2ECEBE5
        E0DFE5E1E0E5E1E0E5E1E0E5E1E0E5E1E0E5E1E0E5E1E0E5E1E0E5E1E0E4DFDF
        F2EDECF1E7E6CC8D8CC15757C060619A4D4EFF00FFB48276C46E6BAC4541D1A4
        A1FFFFFEF2ECEBE5E0DFE5E1E0E5E1E0E5E1E0E5E1E0E5E1E0E5E1E0E5E1E0E5
        E1E0E5E1E0E4DFDFF2EDECF1E7E6CC8D8CC15757C060619A4D4EFF00FFB48276
        C46E6BAC4541D1A4A1FFFFFEEBE5E5D2CFCFD3D1D0D3D1D0D3D1D0D3D1D0D3D1
        D0D3D1D0D3D1D0D3D1D0D3D1D0D0CECEE9E4E3F2E8E7CC8D8CC15757C060619A
        4D4EFF00FFB48276C46E6BAC4541D2A5A2FFFFFFFCF5F4FDF6F5FDF6F5FDF6F5
        FDF6F5FDF6F5FDF6F5FDF6F5FDF6F5FDF6F5FDF6F5FDF6F5FFF8F7F1E7E6CC8D
        8CC35959C161629A4D4EFF00FFB48276BF6F6BAA4541CB9E9BF3F3F2EFE9E8EF
        E9E8EFE9E8EFE9E8EFE9E8EFE9E8EFE9E8EFE9E8EFE9E8EFE9E8EFE9E8EFE9E8
        F0ECEBE8E0DFC88B8AB85353B85C5D9A4D4EFF00FFFF00FFAD736CA14540B689
        87C6CBCBC4C3C3C4C3C3C4C3C3C4C3C3C4C3C3C4C3C3C4C3C3C4C3C3C4C3C3C4
        C3C3C4C3C3C4C3C3C3C3C3CFC9C8B884849644459A4C4DFF00FF}
      Layout = blGlyphTop
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Spacing = 0
      OnClick = bt_gravarYClick
    end
    object Bt_cancelarY: TSpeedButton
      Left = 216
      Top = 3
      Width = 58
      Height = 43
      Hint = 'Cancelar'
      Caption = 'Cancelar'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000EB0A0000EB0A00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFDFDFEFEFE
        FEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAE0E0D9CACABCCACABD
        CACABDCBCBBDCACABDCACABDCACABCCECEBEE9E9E3FDFDFEFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFBD3D3CB68
        68913F3F9B4444994545994646984646974646964646953D3D92707091E4E4DA
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFD
        FDD4D4C96565902B2BCD2C2CE92626E92323E72525E82626E92525E92B2BEC31
        31ED1C1CB66B6B89E6E6DBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFEFEFDD5D5CC6363912C2CD03535E92B2BE13636C14646BD3D3DC23D3D
        C34242BF3333CA3232E83D3DF01C1CB76A6A89E7E7DDFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFDFDFAD5D5C96363932B2BD33535ED2C2CDF6060B1C2C2C1
        D2D2D0C6C6CAC6C6CACECECCB8B8BC5050C03232EB3D3DF51B1BB96A6A87E7E7
        DAFFFFFFFFFFFFFFFFFFFFFFFFFDFDFCD6D6CB6363952C2CD43636EC2E2EE84C
        4CBFD9D9CDEBEBEEE0E0EAE2E2E9E2E2E9E1E1EAEEEEEBC4C4C73B3BD33939F1
        4040F61E1EBA6A6A86E7E7DBFFFFFFFFFFFFFFFFFFE3E3DF66669B2B2BD43737
        EB3939E72C2CE29292C1EEEEE9DBDBE9DBDBE8DCDCE8DCDCE8DBDBE8DDDDEAEC
        ECE58282C53131EB4141ED4141F81F1FB870708FF2F2EDFFFFFFFFFFFFADADC4
        2626C73636F03B3BE63A3AEB3535E1B2B2CEEFEFEFDEDEEBDFDFEBDFDFECDFDF
        ECDFDFEBDEDEEBEAEAF1CBCBD44343DF3E3EF24343ED3C3CF73333C1CFCFDBFF
        FFFFFFFFFFA7A7C92B2BD33B3BED3E3EEB3D3DF03A3AE4B4B4CFF2F2F3E2E2EF
        E4E4F0E4E4F1E4E4F1E3E3F0E3E3EFE7E7F5EBEBE56868D63D3DF84646F14141
        F54747E3CCCCE2FFFFFFFFFFFFA9A9CA2E2ED33E3EF24242F04343F63F3FE9B6
        B6D1F8F8FAE9E9F6E8E8F5E9E9F5E9E9F5E9E9F5EAEAF5EBEBF2F5F5F49292D5
        3D3DFB4B4BF64343F94747DECECEE1FFFFFFFFFFFFA9A9C93131D64242F74747
        F44848FC4444EEBBBBD7FCFCFCEAEAF7EFEFFCF0F0FCEFEFFCF2F2FEE1E1F1A9
        A9D2FFFFFEC6C6DA4444E64E4EFE4848FE4A4AE0CDCDE0FFFFFFFFFFFFA9A9C9
        3434DA4848FD4D4DFB4E4EFF4949EFC5C5DFE0E0E6C9C9D8FFFFFFF7F7FFF7F7
        FFFBFBFFE7E7F26868DCD0D0F1FFFFF28E8ECF4646FD4D4DFF4B4BE2CDCDDFFF
        FFFFFFFFFFA9A9CB3737DE4D4DFF5252FF5454FF5050F0C9C9E1DADAE2CDCDD9
        E5E5ECD3D3DEE9E9EFCFCFDBF7F7F46B6BEB6464F7B6B6F49595F34F4FFC5151
        FF4C4CE3CCCCDFFFFFFFFFFFFFA9A9CA3A3AE15353FF5959FF5C5CFF5858F0CB
        CBE3DADADDD1D1D8D5D5E0C2C2CFE0E0EABABACFFBFBF47B7BE95F5FFF5757FE
        5A5AFF5F5FFF5656FF4F4FE2CBCBDEFFFFFFFFFFFFA6A6CC3B3BE35A5AFF5F5F
        FF6363FF5F5FF0D2D2E2E3E3DDD1D1D6DADAE7C8C8D7E2E2EBC1C1D4FBFBF481
        81E97070FF6E6EFF6868FF6565FF5D5DFF4F4FE2CACADEFFFFFFFFFFFFC2C2DF
        3D3DDD5D5DFF6666FF6B6BFF6A6AF9B4B4EDC0C0E4D2D2E1DADAE6C7C7D6E2E2
        EAC0C0D2F9F9F58787E97878FF7777FF7171FF6B6BFF5F5FFF5A5AE6DDDDEAFF
        FFFFFFFFFFFCFCFD9F9FE04646E66E6EFF7676FF7A7AFF7E7EFE7777ECD9D9E3
        DCDCE4C8C8D4E2E2E9C2C2D1FBFBF58F8FE78282FF7F7FFF7A7AFF6F6FFF5D5D
        EFBDBDECFEFEFEFFFFFFFFFFFFFFFFFFFFFFFF9C9CDD4F4FE78181FF8585FF89
        89FF8383F2DBDBE2E0E0E6CCCCDAE2E2ECC3C3D2FFFFF49797EC8A8AFF8989FF
        8080FF6161F0BBBBE9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9999
        DE5959E89191FF9393FF9595FEAFAFF8ACACEDD3D3E2F2F2F3AAAAE5B6B6F99B
        9BFE9696FF8F8FFF6868EFB8B8E8FFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFE9898DF6161E7A2A2FFAAAAFFA8A8FFA6A6FFC5C5F1D7D7
        F5AEAEFEA5A5FFABABFFA0A0FF6C6CEEB5B5E7FFFFFEFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9898E16868E89898FC9B9BFC
        9F9FFC9C9CFD9999FC9F9FFC9D9DFC9797FC7272EDB5B5E7FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF
        AFEA8C8CEA9393EA9494EA9595EB9595EA9494EA9393EB8C8CEAC0C0ECFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFAFAFAFAFAFAFAFAFBFAFAFAFAFAFAFAFAFAF9F9FAFB
        FBFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Layout = blGlyphTop
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Spacing = 0
      OnClick = Bt_cancelarYClick
    end
    object SBT_SAIRY: TSpeedButton
      Left = 331
      Top = 3
      Width = 58
      Height = 43
      Hint = 'Sair'
      Caption = 'Fechar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        6E030000424D6E030000000000002E0100002800000018000000180000000100
        08000000000040020000110F0000110F00003E0000003E000000A1400000B640
        0000C0400000C0480000C0500000CA500000CA580000D4580000D4600000E060
        0000EA600000F4600000F46A0000FF6A00008F3803002A2A2A001C5031001C58
        3100405038001C603800236038004860380016584000166040001C6040003160
        4000166A4000236A400073484800985048002A604800116A4800166A48001673
        48002A6A5000117350001673500023735000117B50007B7B5000FFAB50000B7B
        5800117B58000B84580011845800A18458000B846000068F60000B8F60006A6A
        6A0006986A00F4A16A00F4B68F00FFCA8F00EAC0AB00F4C0AB00FFE0B600F4CA
        C000FFD4C000FFE0D400FF00FF00FFFFFF003C3C3C3C3C3C3C3C3C3C3C3C3C3C
        3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C
        3C3C3C3C3C3C3C3C3C3C1C0F0F3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C1C
        0F0F00000F1C1C1C1C1C1C1C1C1C3C3C3C3C3C3C3C1C0F00000E00010F323232
        32323232321C3C3C3C3C3C3C1C000000010101010F32323232323030301C3C3C
        3C3C3C3C1C010101010103030F323030302E2B2A251C3C3C3C3C3C3C1C010303
        030303030F202A2A2A262324221C3C3C3C3C3C3C1C030303040404030F162324
        21242020241C3C3C3C3C3C3C1C030404040404060F24201A1813181B1E1C3C3C
        3C3C3C3C1C040404060628060F10141411141912121C3C3C3C3C3C3C1C060606
        063538280F1212111515272D331C3C3C3C3C3C3C1C060606060635060F333333
        33333333331C3C3C3C3C3C3C1C060608080808080F33333333333333331C3C3C
        3C3C3C3C1C080808080808080F33333B3B3B3A33331C3C3C3C3C3C3C1C080909
        08080A0A0F363B3B3A39363B331C3C3C3C3C3C3C1C0D0A0A0A0A0A0A0F333437
        3B393734331C3C3C3C3C3C3C1C060D0D0C0B0A0A0F33333336363633331C3C3C
        3C3C3C3C3C1D1D060D0A0C0D0F33333333333333331C3C3C3C3C3C3C3C3C3C1D
        1D060D0D0F3131313131313131313C3C3C3C3C3C3C3C3C3C3C1D1D1D1D3C3C3C
        3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C
        3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C
        3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C}
      Layout = blGlyphTop
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Spacing = 0
      OnClick = SBT_SAIRYClick
    end
    object Bt_excluir: TSpeedButton
      Left = 276
      Top = 3
      Width = 53
      Height = 43
      Hint = 'Excluir'
      Caption = 'Excluir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFEDA463EDA463EDA463EDA463EDA463EDA463FF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFEDA463FBDAAAFEDAB0FED1A7FAC291F3B47BEEA667EDA360EDA4
        63EDA463FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFEDA463FCE7B8FFF2C7FEDEB2FCCFA4FAC090F3B47B
        EEA768EDA462EDA462EDA463FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFEDA463FFFACFFEEEC2FEDCB2FC
        CFA4FAC191F3B47BEEA768EDA463EDA463EDA463FF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFEDA463FFFC
        D1FEEEC2FEDEB4FCD0A5FAC292F3B57DEEA769EDA462EDA463EDA463EDA463FF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        EDA463FAE0AAFFFFD3FEEEC2FEDEB4FCD0A5FAC292F3B57EEEA969EDA462EDA4
        63EDA463EDA463FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFEDA463FCEDBBFFFFD4FFEEC2FEE0B4FCD1A6FAC493F3B67F
        EFA96AEDA463EDA463EDA463EDA463FF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFF0B779FEF7CAFFFFD4FFF3C7FFE3BAFE
        D4ABFBC597F4B781EFA96BEDA462EDA463EDA463EDA463EDA463FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFEDA463F4CA92FFFFDCFFFA
        CCFBDEABF6C590F3B77FF2B177F0AC6EEEA667EDA462EDA362EDA463EDA463ED
        A463FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFEDA463
        F7D39AF2C78CE1954CDC843ADE863CE28F46E79C55EAA965EDB06EEEB170EEAC
        6AEDA564EDA463EDA463FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFEDA665D98135C2540AC5570CD06C1FDC8339E59750EAAB67EFBB7B
        F2C78AF3CA8FF2C486EEB573EAA663EDA360FF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFDE8941B74401BA4802CA6316D7782BE28E44E9
        A15CEFB675F3C98FF7DCA5FAE2ACF4D59DF0C284EAAB69EAA05DFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFE3934CC1530ABB4A03CA63
        16D77A2DE39047E9A45FEFBA7AF4D097FBE9B6FEF2C2F7E0AAF2C78CEDB16DEA
        A35FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        E59650D16F24CC671AD57529E18C43E2A05A015703015703FAE0ABFBE5B2F6D5
        9FF0BB7DEDA767FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFE79954E3914AE5934D0157031E9A3540DC72
        025905F0BA7BEFAD6EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FF8B58588B58588B5858FF00FFFF00FFFF00FFFF00FFFF00FF01570318
        902D43E17836D56318A32C015703FF00FFFF00FFFF00FFFF00FFFF00FF925B56
        8B5858C69A7FC6997DC4957A8B5858EEBC76BB8154FF00FFFF00FFFF00FFFF00
        FF0157030B7B1419902D27B24722B63D1299220F951D015703FF00FFFF00FFFF
        00FF9E6D6AE1C6AF8B5858E7BA7DE7BA7DE7BA7D8B5858A35D2CAD6F448B5858
        FF00FFFF00FFFF00FF0157030157030157030C7F1815A5280157030157030157
        03FF00FFFF00FFFF00FFA47674F0E3CAE7BA7DAA68388B58588B5858D9B2928B
        5858CC9A738B5858FF00FFFF00FFFF00FFFF00FFFF00FF01570310841C0A9616
        015703FF00FFFF00FFFF00FFFF00FFFF00FF8B58588B5858C5813AAC5305A46B
        4EE2C4B0E5BC93C78A53B87B468B5858FF00FFFF00FFFF00FFFF00FFFF00FF01
        57030A8313037408015703FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF8B5858
        8B5858A75817CA8842D1A0738B58588B58589F6A54FF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FF015703036F07015703FF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FF90523CAC5B16AF66288B5858E7BA7DE7BA7D8B5858FF00FF
        FF00FFFF00FFFF00FFFF00FF05730A047F0A015703FF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF8B58588B5858E7BA7DE7BA7D8B
        5858FF00FFFF00FFFF00FFFF00FF015703015703015703015703FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF8B58
        588B58588B58588B5858FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      Layout = blGlyphTop
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Spacing = 0
      OnClick = Bt_excluirClick
    end
    object BitBtn20: TBitBtn
      Left = 8
      Top = 3
      Width = 97
      Height = 43
      Hint = 'Busca Integrada'
      Caption = 'Busca Integrada'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = BitBtn20Click
      Glyph.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        08000000000040020000D30E0000D30E000000010000000100008C3100009431
        00009C3100009C390000AD420000AD4A0000CE630000CE6B0000D66B0000D673
        0000DE730000DE7B0000E77B0000E7840000EF840000EF8C0000F78C0000F794
        0000FF940000FF9C0000522108007B310800A5390800A5420800B5520800B55A
        0800D6730800FF9C080063311000BD5A1000D6731000FF9C1000FFA51000A54A
        1800D66B1800CE731800D67B1800FFA5180073392100D67B2100FFA52100FFAD
        21005A392900633929007B422900844A29008C4A29008C522900945229009C5A
        2900D6842900FFA52900FFAD29006B423100A5633100D6843100F7A53100FFA5
        3100FFAD3100AD633900BD6B3900D6843900DE8C3900E7943900EF9C3900FFB5
        3900735242008C5A4200D6844200D68C4200F7A54200FFB54200B56B4A00FFBD
        4A00A56B5200BD735200BD7B5200FFBD5200A5735A00B5735A00BD7B5A00C684
        5A00E7A55A00FFBD5A00BD7B6300BD846300C6846300C68C6300CE8C63009C7B
        6B00B5846B00C6846B00C68C6B00CE946B00D6946B00DE9C6B008C7B7300C68C
        7300D69C7300DEA57300CE8C7B00C6947B00CE947B00D6A57B00DEAD7B00E7AD
        7B00FFCE7B00AD948400BD948400C6948400CE9C84009C948C00A5948C00B594
        8C00C69C8C00CE9C8C00D6A58C00E7B58C00FFCE8C007B8494009C949400D6A5
        9400DEA59400D6AD9400E7B59400E7BD9400EFBD9400FFCE940021639C008494
        9C00D6AD9C00DEAD9C00D6B59C00DEB59C00FFD69C006384A500C6ADA500DEB5
        A500DEBDA500E7BDA500E7C6A500EFC6A500EFCEA500F7CEA500F7D6A5002973
        AD00297BAD00638CAD007394AD00DEBDAD00E7C6AD00F7CEAD00FFD6AD007B9C
        B500849CB500DEC6B500E7C6B500F7D6B500D6C6BD00DEC6BD00E7C6BD00E7CE
        BD00EFCEBD00F7D6BD00FFDEBD00E7CEC600E7D6C600EFD6C600F7D6C600F7DE
        C600FFDEC60084ADCE00D6CECE00EFD6CE00EFDECE00FFE7CE00E7D6D600EFDE
        D600F7DED600EFDEDE00EFE7DE00F7E7DE00F7E7E700F7EFE700FFEFE700FFF7
        E700F7EFEF00F7F7EF00FFF7EF00FFF7F700FFFFF700FF00FF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BFBFBFBFBFBF
        BF714F4E5970BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF6B0503020200152C
        426071BFBFBFBFBFBFBFBFBFBFBFBF710508033BA56E4C210200152C426FBFBF
        BFBFBFBFBFBF71180A09174BAEA6A19B89614821022671BFBFBFBFBFBF71190C
        0B091750B1ADA5A09B8A847B6E5A4BBFBFBFBFBFBF1D0D0D0B0A1754B4B1A6A1
        89848282746E4BBFBFBFBFBFBF060E0D0C0B1755B4B1AD73747B6E6E7B744BBF
        BFBFBFBFBF070F0E0D0C175CB7B4B0929180876182794BBFBFBFBFBFBF07100F
        0D0D0343BAB6B1ADA59E9A88847B4BBFBFBFBFBFBF07110F0E0D012ABBB7B4B1
        ADA59B9589824BBFBFBFBFBFBF0811100F0E0135BABAB6B3AEA6A19B95894BBF
        BFBFBFBFBF1A1211100F3C977D67757D8D8B959B95894BBFBFBFBFBFBF1A1B12
        1138B8BCA9A99D8D8F51141C2B4A71BFBFBFBFBFBF1E1F131238B8C0B8A3A3A3
        795B65573C2DBFBFBFBFBFBFBF24251B121145B7BCA7A8826E7B7B74572DBFBF
        BFBFBFBFBF2733251B123DA78C527479828482795D2FBFBFBFBFBFBFBF273A28
        1F133EB6B19E8177786C82825D2FBFBFBFBFBFBFBF324134251B3FB7B4ACAB99
        949389826230BFBFBFBFBFBFBF37473A332540BAB6B4AEA6A19B95896330BFBF
        BFBFBFBFBF3D4D473A2846BBB7B4B1ADA5A09B896831BFBFBFBFBFBFBF445349
        413A3376768F8E8EA1969C956836BFBFBFBFBFBFBF456A8690AEB1ADA5968B85
        685F44232255BFBFBFBFBFBFBF746E6E6E6E6D6161616561617271BFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF}
      Layout = blGlyphTop
      Spacing = 0
    end
    object DBN: TwwDBNavigator
      Left = 464
      Top = 16
      Width = 350
      Height = 25
      RepeatInterval.InitialDelay = 500
      RepeatInterval.Interval = 100
      Visible = False
      object DBNFirst: TwwNavButton
        Left = 0
        Top = 0
        Width = 25
        Height = 25
        Hint = 'Move to first record'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'DBNFirst'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 0
        Style = nbsFirst
      end
      object DBNPriorPage: TwwNavButton
        Left = 25
        Top = 0
        Width = 25
        Height = 25
        Hint = 'Move backward 10 records'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'DBNPriorPage'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 1
        Style = nbsPriorPage
      end
      object DBNPrior: TwwNavButton
        Left = 50
        Top = 0
        Width = 25
        Height = 25
        Hint = 'Move to prior record'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'DBNPrior'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 2
        Style = nbsPrior
      end
      object DBNNext: TwwNavButton
        Left = 75
        Top = 0
        Width = 25
        Height = 25
        Hint = 'Move to next record'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'DBNNext'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 3
        Style = nbsNext
      end
      object DBNNextPage: TwwNavButton
        Left = 100
        Top = 0
        Width = 25
        Height = 25
        Hint = 'Move forward 10 records'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'DBNNextPage'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 4
        Style = nbsNextPage
      end
      object DBNLast: TwwNavButton
        Left = 125
        Top = 0
        Width = 25
        Height = 25
        Hint = 'Move to last record'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'DBNLast'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 5
        Style = nbsLast
      end
      object DBNInsert: TwwNavButton
        Left = 150
        Top = 0
        Width = 25
        Height = 25
        Hint = 'Insert new record'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'DBNInsert'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 6
        Style = nbsInsert
      end
      object DBNDelete: TwwNavButton
        Left = 175
        Top = 0
        Width = 25
        Height = 25
        Hint = 'Delete current record'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'DBNDelete'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 7
        Style = nbsDelete
      end
      object DBNEdit: TwwNavButton
        Left = 200
        Top = 0
        Width = 25
        Height = 25
        Hint = 'Edit current record'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'DBNEdit'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 8
        Style = nbsEdit
      end
      object DBNPost: TwwNavButton
        Left = 225
        Top = 0
        Width = 25
        Height = 25
        Hint = 'Post changes of current record'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'DBNPost'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 9
        Style = nbsPost
      end
      object DBNCancel: TwwNavButton
        Left = 250
        Top = 0
        Width = 25
        Height = 25
        Hint = 'Cancel changes made to current record'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'DBNCancel'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 10
        Style = nbsCancel
      end
      object DBNRefresh: TwwNavButton
        Left = 275
        Top = 0
        Width = 25
        Height = 25
        Hint = 'Refresh the contents of the dataset'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'DBNRefresh'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 11
        Style = nbsRefresh
      end
      object DBNSaveBookmark: TwwNavButton
        Left = 300
        Top = 0
        Width = 25
        Height = 25
        Hint = 'Bookmark current record'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'DBNSaveBookmark'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 12
        Style = nbsSaveBookmark
      end
      object DBNRestoreBookmark: TwwNavButton
        Left = 325
        Top = 0
        Width = 25
        Height = 25
        Hint = 'Go back to saved bookmark'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'DBNRestoreBookmark'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 13
        Style = nbsRestoreBookmark
      end
    end
  end
  object Q_FORN: TwwQuery
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'SELECT'#9#9'FOR_CODI,'
      #9#9'FOR_RAZA'
      'FROM'#9#9'CPAFORN'
      'WHERE F_ALMOX = '#39'S'#39
      'ORDER BY'#9'FOR_CODI')
    ValidateWithMask = True
    Left = 546
    Top = 305
    object Q_FORNFOR_CODI: TStringField
      DisplayWidth = 15
      FieldName = 'FOR_CODI'
      Origin = 'CURA.CPAFORN.FOR_CODI'
      FixedChar = True
      Size = 15
    end
    object Q_FORNFOR_RAZA: TStringField
      FieldName = 'FOR_RAZA'
      Origin = 'CURA.CPAFORN.FOR_RAZA'
      Visible = False
      FixedChar = True
      Size = 50
    end
  end
  object Q_MAT: TwwQuery
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    DataSource = DS_DVC
    SQL.Strings = (
      'SELECT'#9#9'MAT_ID,'
      #9#9'MAT_DESC'
      'FROM'#9#9'MATERIAIS MAT'
      'WHERE GENERICO NOT IN ('#39'S'#39')'
      'AND MAT_ATIVO = '#39'S'#39
      'ORDER BY'#9'MAT_DESC')
    ValidateWithMask = True
    Left = 163
    Top = 336
    object Q_MATMAT_ID: TAutoIncField
      FieldName = 'MAT_ID'
      Origin = 'CURA.MATERIAIS.MAT_ID'
    end
    object Q_MATMAT_DESC: TStringField
      FieldName = 'MAT_DESC'
      Origin = 'CURA.MATERIAIS.MAT_DESC'
      FixedChar = True
      Size = 60
    end
  end
  object Q_MAT2: TwwQuery
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'SELECT'#9#9'MAT_ID,'
      #9#9'MAT_DESC'
      'FROM'#9#9'MATERIAIS MAT'
      'WHERE GENERICO NOT IN ('#39'S'#39')'
      'AND MAT_ATIVO = '#39'S'#39
      'ORDER BY'#9'MAT_DESC')
    ValidateWithMask = True
    Left = 210
    Top = 336
    object Q_MAT2MAT_ID: TAutoIncField
      FieldName = 'MAT_ID'
      Origin = 'CURA.MATERIAIS.MAT_ID'
    end
    object Q_MAT2MAT_DESC: TStringField
      FieldName = 'MAT_DESC'
      Origin = 'CURA.MATERIAIS.MAT_DESC'
      FixedChar = True
      Size = 60
    end
  end
  object Q_AUX: TwwQuery
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    ValidateWithMask = True
    Left = 114
    Top = 337
  end
  object Q_MATX: TwwQuery
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    DataSource = DS_DVC
    SQL.Strings = (
      'SELECT'#9#9'MAT.MATERIAL_ID,'
      #9#9'MF.M_F_ID,'
      ''
      #9#9'MAT.DESCRICAO DSMAT,'
      #9#9'MF.COD_MATERIAL_FORN,'
      #9#9'MF.DESCRICAO DSFORM,'
      ''
      #9#9'DBO.RDIR(MAT.DESCRICAO,50) +'
      #9#9'DBO.RDIR(MF.COD_MATERIAL_FORN,40) +'
      #9#9'DBO.RDIR(MF.DESCRICAO,40) DSTXT'
      ''
      'FROM'#9#9'MATERIAIS '#9#9'MAT,'
      #9#9'MATERIAIS_FORNECEDOR  MF'
      'WHERE'#9#9'MF.MATERIAL_ID = MAT.MATERIAL_ID'
      'AND'#9#9'MF.FORNECEDOR_ID = :FORNECEDOR_ID'
      'ORDER BY'#9'MAT.DESCRICAO,'
      #9#9'MF.COD_MATERIAL_FORN,'
      #9#9'MF.DESCRICAO')
    ValidateWithMask = True
    Left = 477
    Top = 392
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Fornecedor_ID'
        ParamType = ptUnknown
      end>
    object Q_MATXDSTXT: TStringField
      DisplayWidth = 255
      FieldName = 'DSTXT'
      FixedChar = True
      Size = 255
    end
    object Q_MATXDSMAT: TStringField
      DisplayWidth = 50
      FieldName = 'DSMAT'
      Visible = False
      FixedChar = True
      Size = 80
    end
    object Q_MATXDSFORM: TStringField
      DisplayWidth = 40
      FieldName = 'DSFORM'
      Visible = False
      FixedChar = True
      Size = 40
    end
    object Q_MATXCOD_MATERIAL_FORN: TStringField
      DisplayWidth = 40
      FieldName = 'COD_MATERIAL_FORN'
      Visible = False
      FixedChar = True
      Size = 40
    end
    object Q_MATXMATERIAL_ID: TAutoIncField
      FieldName = 'MATERIAL_ID'
      Visible = False
    end
    object Q_MATXM_F_ID: TAutoIncField
      FieldName = 'M_F_ID'
      Visible = False
    end
  end
  object Q_DVC: TwwQuery
    CachedUpdates = True
    BeforePost = Q_DVCBeforePost
    AfterPost = Q_DVCAfterPost
    BeforeDelete = Q_DVCBeforeDelete
    AfterDelete = Q_DVCAfterDelete
    AfterScroll = Q_DVCAfterScroll
    OnNewRecord = Q_DVCNewRecord
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    RequestLive = True
    SQL.Strings = (
      'SELECT'#9#9'*'
      'FROM'#9#9'DEV_CAPA')
    UpdateObject = UPD_DVC
    ValidateWithMask = True
    Left = 163
    Top = 240
    object Q_DVCDev_ID: TAutoIncField
      FieldName = 'Dev_ID'
      Origin = 'CURA.DEV_CAPA.Dev_ID'
    end
    object Q_DVCRec_ID: TIntegerField
      FieldName = 'Rec_ID'
      Origin = 'CURA.DEV_CAPA.Rec_ID'
    end
    object Q_DVCNFIS: TIntegerField
      FieldName = 'NFIS'
      Origin = 'CURA.DEV_CAPA.NFIS'
    end
    object Q_DVCFor_Codi: TStringField
      FieldName = 'For_Codi'
      Origin = 'CURA.DEV_CAPA.For_Codi'
      OnChange = Q_DVCFor_CodiChange
      FixedChar = True
      Size = 15
    end
    object Q_DVCData: TDateTimeField
      FieldName = 'Data'
      Origin = 'CURA.DEV_CAPA.Data'
    end
    object Q_DVCMot_ID: TIntegerField
      FieldName = 'Mot_ID'
      Origin = 'CURA.DEV_CAPA.Motivo_ID'
    end
  end
  object Q_DVI: TwwQuery
    CachedUpdates = True
    BeforePost = Q_DVIBeforePost
    AfterPost = Q_DVIAfterPost
    BeforeDelete = Q_DVIBeforeDelete
    AfterDelete = Q_DVIAfterDelete
    AfterScroll = Q_DVIAfterScroll
    OnCalcFields = Q_DVICalcFields
    OnNewRecord = Q_DVINewRecord
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    DataSource = DS_DVC
    RequestLive = True
    SQL.Strings = (
      'SELECT'#9#9'D.*,'
      #9#9'MAT.MAT_DESC DSMAT,'
      #9#9'M.MARCA_DESC,'
      #9#9'U.UNI_DESC,'
      #9#9'L.DESCRICAO DS_LOC'
      'FROM'#9#9'DEV_ITEM D,'
      #9#9'MARCAS M,'
      #9#9'MATERIAIS MAT,'
      #9#9'UNIDADES U,'
      #9#9'LOCAL L'
      'WHERE'#9#9'D.DEV_ID = :DEV_ID'
      'AND'#9#9'D.MAT_ID = MAT.MAT_ID'
      'AND'#9#9'D.MARCA_ID = M.MARCA_ID'
      'AND'#9#9'D.UNI_ID = U.UNI_ID'
      'AND'#9#9'D.LOCAL_ID = L.LOCAL_ID')
    UpdateObject = UPD_DVI
    ValidateWithMask = True
    Left = 163
    Top = 288
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'Dev_ID'
        ParamType = ptUnknown
      end>
    object Q_DVIDSMAT: TStringField
      DisplayLabel = 'Material'
      DisplayWidth = 27
      FieldName = 'DSMAT'
      Origin = 'CURA.MATERIAIS.MAT_DESC'
      FixedChar = True
      Size = 60
    end
    object Q_DVIN_Lote: TStringField
      DisplayLabel = 'Lote'
      DisplayWidth = 9
      FieldName = 'N_Lote'
      Origin = 'CURA.DEV_ITEM.N_Lote'
      FixedChar = True
    end
    object Q_DVIMARCA_DESC: TStringField
      DisplayLabel = 'Marca'
      DisplayWidth = 14
      FieldName = 'MARCA_DESC'
      Origin = 'CURA.MARCAS.MARCA_DESC'
      FixedChar = True
    end
    object Q_DVIFor_Codi: TStringField
      DisplayLabel = 'Fornecedor'
      DisplayWidth = 15
      FieldName = 'For_Codi'
      Origin = 'CURA.DEV_ITEM.For_Codi'
      FixedChar = True
      Size = 15
    end
    object Q_DVIValid: TDateTimeField
      DisplayWidth = 10
      FieldName = 'Valid'
      Origin = 'CURA.DEV_ITEM.Valid'
    end
    object Q_DVIQtde: TFloatField
      DisplayWidth = 12
      FieldName = 'Qtde'
      Origin = 'CURA.DEV_ITEM.Qtde'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_DVIUNI_DESC: TStringField
      DisplayLabel = 'Unidade'
      DisplayWidth = 13
      FieldName = 'UNI_DESC'
      Origin = 'CURA.UNIDADES.UNI_DESC'
      FixedChar = True
      Size = 10
    end
    object Q_DVIDS_LOC: TStringField
      DisplayLabel = 'Local'
      DisplayWidth = 18
      FieldName = 'DS_LOC'
      FixedChar = True
      Size = 50
    end
    object Q_DVIUsuario: TStringField
      DisplayWidth = 13
      FieldName = 'Usuario'
      Origin = 'CURA.DEV_ITEM.Usuario'
      FixedChar = True
    end
    object Q_DVIData: TDateTimeField
      DisplayWidth = 19
      FieldName = 'Data'
      Origin = 'CURA.DEV_ITEM.Data'
    end
    object Q_DVIMarca_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'Marca_ID'
      Origin = 'CURA.DEV_ITEM.Marca_ID'
      Visible = False
    end
    object Q_DVILocal_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'Local_ID'
      Origin = 'CURA.DEV_ITEM.Local_ID'
      Visible = False
    end
    object Q_DVIDevit_ID: TAutoIncField
      FieldName = 'Devit_ID'
      Origin = 'CURA.DEV_ITEM.Devit_ID'
      Visible = False
    end
    object Q_DVIDev_ID: TIntegerField
      FieldName = 'Dev_ID'
      Origin = 'CURA.DEV_ITEM.Dev_ID'
      Visible = False
    end
    object Q_DVIMat_ID: TIntegerField
      FieldName = 'Mat_ID'
      Origin = 'CURA.DEV_ITEM.Mat_ID'
      Visible = False
    end
    object Q_DVIMot_ID: TIntegerField
      FieldName = 'Mot_ID'
      Origin = 'CURA.DEV_ITEM.Mot_ID'
      Visible = False
    end
    object Q_DVIStatus: TStringField
      FieldName = 'Status'
      Origin = 'CURA.DEV_ITEM.Status'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_DVIRec_Item_ID: TIntegerField
      FieldName = 'Rec_Item_ID'
      Origin = 'CURA.DEV_ITEM.Rec_Item_ID'
      Visible = False
    end
    object Q_DVIRec_Lote_ID: TIntegerField
      FieldName = 'Rec_Lote_ID'
      Origin = 'CURA.DEV_ITEM.Rec_Lote_ID'
      Visible = False
    end
    object Q_DVIUNI_ID: TIntegerField
      FieldName = 'UNI_ID'
      Origin = 'CURA.MATERIAIS.UNI_ID'
      Visible = False
    end
  end
  object DS_DVC: TwwDataSource
    DataSet = Q_DVC
    OnStateChange = DS_DVCStateChange
    Left = 210
    Top = 240
  end
  object DS_DVI: TwwDataSource
    DataSet = Q_DVI
    OnStateChange = DS_DVIStateChange
    Left = 210
    Top = 287
  end
  object UPD_DVC: TUpdateSQL
    ModifySQL.Strings = (
      'update DEV_CAPA'
      'set'
      '  Rec_ID = :Rec_ID,'
      '  NFIS = :NFIS,'
      '  For_Codi = :For_Codi,'
      '  Mot_ID = :Mot_ID,'
      '  Data = :Data'
      'where'
      '  Dev_ID = :OLD_Dev_ID')
    InsertSQL.Strings = (
      'insert into DEV_CAPA'
      '  (Rec_ID, NFIS, For_Codi, Mot_ID, Data)'
      'values'
      '  (:Rec_ID, :NFIS, :For_Codi, :Mot_ID, :Data)')
    DeleteSQL.Strings = (
      'delete from DEV_CAPA'
      'where'
      '  Dev_ID = :OLD_Dev_ID')
    Left = 261
    Top = 239
  end
  object UPD_DVI: TUpdateSQL
    ModifySQL.Strings = (
      'update DEV_ITEM'
      'set'
      '  Qtde = :Qtde,'
      '  Status = :Status'
      'where'
      '  Devit_ID = :OLD_Devit_ID')
    InsertSQL.Strings = (
      'insert into DEV_ITEM'
      '  (Qtde, Status)'
      'values'
      '  (:Qtde, :Status)')
    DeleteSQL.Strings = (
      'delete from DEV_ITEM'
      'where'
      '  Devit_ID = :OLD_Devit_ID')
    Left = 261
    Top = 288
  end
  object Q_MOT: TwwQuery
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'SELECT'#9#9'*'
      'FROM'#9#9'MOTIVOS'
      'WHERE'#9#9'TP_MOT = '#39'D'#39)
    ValidateWithMask = True
    Left = 114
    Top = 289
    object Q_MOTMOT_DESC: TStringField
      DisplayWidth = 20
      FieldName = 'MOT_DESC'
      Origin = 'CURA.MOTIVOS.MOT_DESC'
      FixedChar = True
    end
    object Q_MOTMOT_ID: TAutoIncField
      FieldName = 'MOT_ID'
      Origin = 'CURA.MOTIVOS.MOT_ID'
      Visible = False
    end
    object Q_MOTTP_MOT: TStringField
      FieldName = 'TP_MOT'
      Origin = 'CURA.MOTIVOS.TP_MOT'
      Visible = False
      FixedChar = True
      Size = 1
    end
  end
  object Q_IT: TwwQuery
    AutoCalcFields = False
    CachedUpdates = True
    AfterPost = Q_ITAfterPost
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    DataSource = DS_DVC
    RequestLive = True
    SQL.Strings = (
      'SELECT'#9#9'RI.REC_ITEM_ID,'
      #9#9'RL.ALTERAR,'
      #9#9'RI.MAT_ID,'
      #9#9'RL.QTDE,'
      #9#9'RL.STATUS,'
      #9#9'RI.ORD_ID,'
      #9#9'M.MARCA_DESC,'
      #9#9'MAT.MAT_DESC DSMAT,'
      #9#9'RL.N_LOTE,'
      #9#9'RL.REC_LOTE_ID,'
      
        #9#9'CASE WHEN DIT.REC_LOTE_ID IS NULL THEN '#39'N'#39' ELSE '#39'S'#39' END AS HA_' +
        'DEV,'
      #9#9'RI.MARCA_ID,'
      #9'                RL.VALID,'
      #9'                RN.LOCAL_ID,'
      #9'                RN.FOR_CODI,'
      #9#9'MM.UNI_ID,'
      #9#9'MM.MATMARCA_CONVERSAO'
      'FROM'#9#9'REC_LOTE RL '
      #9#9#9'LEFT OUTER JOIN '
      #9#9#9#9'(SELECT DISTINCT REC_LOTE_ID '
      #9#9#9#9' FROM '#9'DEV_ITEM) DIT '
      #9#9#9#9' ON '#9'RL.REC_LOTE_ID = DIT.REC_LOTE_ID,'
      #9#9'REC_ITEM RI LEFT OUTER JOIN'
      #9#9#9'MATERIAL_MARCA '#9'MC '
      #9#9#9'ON '#9#9#9'RI.MARCA_ID = MC.MARCA_ID'
      #9#9#9'LEFT OUTER JOIN '
      #9#9#9#9'MATERIAIS '#9'MAT '
      #9#9#9#9'ON '#9#9'MC.MAT_ID = MAT.MAT_ID'
      #9#9#9'LEFT OUTER JOIN'
      #9#9#9#9'MARCAS'#9#9'M'
      #9#9#9#9'ON'#9#9'MC.MARCA_ID = M.MARCA_ID,'
      #9#9'REC_NF RN,'
      #9#9'MATERIAL_MARCA MM'
      'WHERE'#9#9'RN.REC_ID = :REC_ID'
      'AND'#9#9'RI.REC_ID = RN.REC_ID'
      'AND'#9#9'RL.REC_ITEM_ID = RI.REC_ITEM_ID'
      'AND'#9#9'RI.MATMARCA_ID = MM.MATMARCA_ID'
      'AND'#9#9'RI.MAT_ID = MAT.MAT_ID'
      'ORDER BY'#9'RI.REC_ID,'
      #9#9'RL.N_LOTE')
    UpdateObject = UPD_IT
    ControlType.Strings = (
      'STATUS;CustomEdit;cboStIt'
      'ALTERAR;CheckBox;S;N')
    ValidateWithMask = True
    Left = 113
    Top = 190
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Rec_ID'
        ParamType = ptUnknown
      end>
    object Q_ITALTERAR: TStringField
      DisplayLabel = '**'
      DisplayWidth = 1
      FieldName = 'ALTERAR'
      FixedChar = True
      Size = 1
    end
    object Q_ITDSMAT: TStringField
      DisplayLabel = 'Material'
      DisplayWidth = 20
      FieldName = 'DSMAT'
      FixedChar = True
      Size = 60
    end
    object Q_ITMARCA_DESC: TStringField
      DisplayLabel = 'Marca'
      DisplayWidth = 16
      FieldName = 'MARCA_DESC'
      FixedChar = True
    end
    object Q_ITN_LOTE: TStringField
      DisplayLabel = 'Lote'
      DisplayWidth = 10
      FieldName = 'N_LOTE'
      FixedChar = True
      Size = 40
    end
    object Q_ITFOR_CODI: TStringField
      DisplayLabel = 'Fornecedor'
      DisplayWidth = 12
      FieldName = 'FOR_CODI'
      FixedChar = True
      Size = 15
    end
    object Q_ITVALID: TDateTimeField
      DisplayLabel = 'Valid'
      DisplayWidth = 11
      FieldName = 'VALID'
    end
    object Q_ITQTDE: TFloatField
      DisplayLabel = 'Qtde.'
      DisplayWidth = 9
      FieldName = 'QTDE'
      DisplayFormat = '###,###,##0.00'
    end
    object Q_ITUNI_DESC: TStringField
      DisplayLabel = 'Unidade'
      DisplayWidth = 7
      FieldKind = fkLookup
      FieldName = 'UNI_DESC'
      LookupDataSet = Q_UNI
      LookupKeyFields = 'UNI_ID'
      LookupResultField = 'UNI_DESC'
      KeyFields = 'UNI_ID'
      Size = 30
      Lookup = True
    end
    object Q_ITMATMARCA_CONVERSAO: TFloatField
      DisplayLabel = 'Convers.'
      DisplayWidth = 10
      FieldName = 'MATMARCA_CONVERSAO'
      DisplayFormat = '###,###,##0.00'
    end
    object Q_ITREC_ITEM_ID: TAutoIncField
      FieldName = 'REC_ITEM_ID'
      Visible = False
    end
    object Q_ITMAT_ID: TIntegerField
      FieldName = 'MAT_ID'
      Visible = False
    end
    object Q_ITSTATUS: TStringField
      FieldName = 'STATUS'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_ITORD_ID: TIntegerField
      FieldName = 'ORD_ID'
      Visible = False
    end
    object Q_ITREC_LOTE_ID: TAutoIncField
      FieldName = 'REC_LOTE_ID'
      Visible = False
    end
    object Q_ITHA_DEV: TStringField
      FieldName = 'HA_DEV'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_ITMARCA_ID: TIntegerField
      FieldName = 'MARCA_ID'
      Visible = False
    end
    object Q_ITLOCAL_ID: TIntegerField
      FieldName = 'LOCAL_ID'
      Visible = False
    end
    object Q_ITUNI_ID: TIntegerField
      FieldName = 'UNI_ID'
      Visible = False
    end
  end
  object DS_IT: TDataSource
    DataSet = Q_IT
    Left = 162
    Top = 190
  end
  object UPD_IT: TUpdateSQL
    ModifySQL.Strings = (
      'update REC_LOTE'
      'set'
      '  ALTERAR = :ALTERAR'
      'where'
      '  REC_LOTE_ID = :OLD_REC_LOTE_ID')
    InsertSQL.Strings = (
      'insert into REC_LOTE'
      '  (ALTERAR)'
      'values'
      '  (:ALTERAR)')
    DeleteSQL.Strings = (
      'delete from REC_LOTE'
      'where'
      '  REC_LOTE_ID = :OLD_REC_LOTE_ID')
    Left = 206
    Top = 190
  end
  object Q_MOT2: TwwQuery
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'SELECT'#9#9'*'
      'FROM'#9#9'MOTIVOS'
      'WHERE'#9#9'TP_MOT = '#39'D'#39)
    ValidateWithMask = True
    Left = 190
    Top = 378
    object Q_MOT2MOT_ID: TAutoIncField
      FieldName = 'MOT_ID'
      Origin = 'CURA.MOTIVOS.MOT_ID'
    end
    object Q_MOT2MOT_DESC: TStringField
      FieldName = 'MOT_DESC'
      Origin = 'CURA.MOTIVOS.MOT_DESC'
      FixedChar = True
    end
    object Q_MOT2TP_MOT: TStringField
      FieldName = 'TP_MOT'
      Origin = 'CURA.MOTIVOS.TP_MOT'
      FixedChar = True
      Size = 1
    end
  end
  object Q_MOT3: TwwQuery
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'SELECT'#9#9'*'
      'FROM'#9#9'MOTIVOS'
      'WHERE'#9#9'TP_MOT = '#39'D'#39)
    ValidateWithMask = True
    Left = 326
    Top = 410
    object Q_MOT3MOT_ID: TAutoIncField
      FieldName = 'MOT_ID'
      Origin = 'CURA.MOTIVOS.MOT_ID'
    end
    object Q_MOT3MOT_DESC: TStringField
      FieldName = 'MOT_DESC'
      Origin = 'CURA.MOTIVOS.MOT_DESC'
      FixedChar = True
    end
    object Q_MOT3TP_MOT: TStringField
      FieldName = 'TP_MOT'
      Origin = 'CURA.MOTIVOS.TP_MOT'
      FixedChar = True
      Size = 1
    end
  end
  object Q_EXEC: TwwQuery
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    ValidateWithMask = True
    Left = 357
    Top = 313
  end
  object Q_UNI: TwwQuery
    Active = True
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'SELECT * FROM UNIDADES')
    ValidateWithMask = True
    Left = 358
    Top = 233
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
    object Q_UNIUNI_DESC: TStringField
      FieldName = 'UNI_DESC'
      Origin = 'CURA.UNIDADES.UNI_DESC'
      FixedChar = True
      Size = 10
    end
  end
  object SP_AJALM: TwwStoredProc
    DatabaseName = 'Cura'
    SessionName = 'Sec_BaseFin'
    StoredProcName = 'dbo.SP_ATUAL_LOTE'
    ValidateWithMask = True
    Left = 484
    Top = 200
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Result'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = '@N_LOTE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = '@QTDE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@MAT_ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@FOR_CODI'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@MOT_ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@TIPO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@USUARIO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@MSG'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = '@TD_ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@DOCTO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@REC_ITEM_ID'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = '@DATAX'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@MARCA_ID'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = '@VALID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@LOCAL_ID'
        ParamType = ptInput
      end>
  end
end
