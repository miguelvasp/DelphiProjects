object FNF: TFNF
  Left = 232
  Top = 35
  Width = 799
  Height = 578
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  BorderIcons = []
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 2
    Top = 3
    Width = 789
    Height = 45
    BevelInner = bvLowered
    Color = clMenu
    TabOrder = 0
    object SpeedButton1: TSpeedButton
      Left = 732
      Top = 9
      Width = 25
      Height = 25
      Hint = 'Visualizar Relat�rio'
      Enabled = False
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
      OnClick = SpeedButton1Click
    end
    object SpeedButton3: TSpeedButton
      Left = 758
      Top = 9
      Width = 25
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
      Top = 5
      Width = 166
      Height = 29
      Caption = 'Notas Fiscais'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -24
      Font.Name = 'Georgia'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object SpeedButton4: TSpeedButton
      Left = 708
      Top = 9
      Width = 25
      Height = 25
      Hint = 'Pesquisar NF'#39's'
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
      OnClick = SpeedButton4Click
    end
    object SpeedButton5: TSpeedButton
      Left = 683
      Top = 9
      Width = 25
      Height = 25
      Hint = 'Gerar NF de Rem. por conta e ordem de Terceiros'
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
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton5Click
    end
    object LB: TLabel
      Left = 248
      Top = 16
      Width = 13
      Height = 13
      Caption = 'LB'
      Visible = False
    end
    object DBNavigator1: TDBNavigator
      Left = 492
      Top = 9
      Width = 192
      Height = 25
      DataSource = DS_NF
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbPost, nbCancel]
      Hints.Strings = (
        'Posiciona no primeiro registro | Posiciona no primeiro registro'
        'Retorna ao registro anterior | Retorna ao registro anterior '
        'Avan�a para o pr�ximo registro | Avan�a para o pr�ximo registro '
        'Posiciona no �ltimo registro | Posiciona no �ltimo registro '
        'Incluir  '
        'Excluir'
        ''
        'Confirmar'
        'Cancelar')
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = DBNavigator1Click
    end
  end
  object TabbedNotebook1: TTabbedNotebook
    Left = 1
    Top = 51
    Width = 789
    Height = 491
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    TabFont.Charset = ANSI_CHARSET
    TabFont.Color = clRed
    TabFont.Height = -11
    TabFont.Name = 'Arial'
    TabFont.Style = [fsBold]
    TabOrder = 1
    OnClick = TabbedNotebook1Click
    object TTabPage
      Left = 4
      Top = 25
      Caption = '   Principal   '
      object Panel1: TPanel
        Left = 1
        Top = 2
        Width = 777
        Height = 456
        BevelInner = bvSpace
        BevelOuter = bvLowered
        BevelWidth = 3
        Color = clSilver
        TabOrder = 0
        object Label1: TLabel
          Left = 11
          Top = 14
          Width = 39
          Height = 15
          Caption = 'C�digo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 105
          Top = 14
          Width = 112
          Height = 15
          Caption = 'Tipo de Documento '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText7: TDBText
          Left = 217
          Top = 13
          Width = 500
          Height = 17
          DataField = 'TDOC_NOME'
          DataSource = FOS.DS_TDOC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 589
          Top = 14
          Width = 14
          Height = 15
          Caption = 'NF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label51: TLabel
          Left = 702
          Top = 14
          Width = 30
          Height = 15
          Caption = 'S�rie'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBE_NFI_CODI: TwwDBEdit
          Left = 58
          Top = 12
          Width = 43
          Height = 21
          BorderStyle = bsNone
          DataField = 'NFI_CODI'
          DataSource = DS_NF
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnClick = FormCreate
        end
        object GroupBox1: TGroupBox
          Left = 8
          Top = 39
          Width = 756
          Height = 40
          Caption = 'Emitente'
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          object Label2: TLabel
            Left = 23
            Top = 15
            Width = 75
            Height = 15
            Caption = 'C�digo/Nome'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object DBText1: TDBText
            Left = 102
            Top = 15
            Width = 305
            Height = 17
            Color = clSilver
            DataField = 'CLIN_RAZA'
            DataSource = FOS.DS_OS
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Visible = False
          end
          object DBText2: TDBText
            Left = 203
            Top = 16
            Width = 316
            Height = 17
            DataField = 'CLIF_RAZA'
            DataSource = DS_CLIF2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object DBText3: TDBText
            Left = 365
            Top = 15
            Width = 291
            Height = 17
            DataField = 'NBFINAL_COD_CLIN'
            DataSource = DS_CLIF
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Visible = False
          end
          object DBText8: TDBText
            Left = 102
            Top = 15
            Width = 283
            Height = 17
            Color = clSilver
            DataField = 'PAR_RAZA'
            DataSource = DS_PAR
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Visible = False
          end
          object wwDBLookupCombo2: TwwDBLookupCombo
            Left = 104
            Top = 14
            Width = 258
            Height = 21
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            BorderStyle = bsNone
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'CLIN_RAZA'#9'50'#9'CLIN_RAZA'#9'F')
            DataField = 'NFI_EMIT_CLI'
            DataSource = DS_NF
            LookupTable = Q_CLIN
            LookupField = 'CLIN_ID'
            DropDownCount = 18
            ParentFont = False
            TabOrder = 0
            Visible = False
            AutoDropDown = True
            ShowButton = True
            SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
            PreciseEditRegion = False
            AllowClearKey = False
            OnEnter = wwDBLookupCombo2Enter
            OnExit = wwDBLookupCombo2Exit
          end
          object Panel5: TPanel
            Left = 103
            Top = 10
            Width = 649
            Height = 27
            BevelInner = bvLowered
            BevelOuter = bvSpace
            Color = clSilver
            TabOrder = 1
            Visible = False
            object DBText16: TDBText
              Left = 9
              Top = 5
              Width = 618
              Height = 17
              DataField = 'CLIN_RAZA'
              DataSource = FManifesto.DS_NF
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -15
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
          end
        end
        object GroupBox2: TGroupBox
          Left = 9
          Top = 78
          Width = 755
          Height = 367
          Caption = 'Destinat�rio'
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          object Label22: TLabel
            Left = 85
            Top = 63
            Width = 70
            Height = 15
            Caption = 'Tipo Pessoa'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object Label23: TLabel
            Left = 99
            Top = 90
            Width = 56
            Height = 15
            Caption = 'CNPJ/CPF'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object Label25: TLabel
            Left = 31
            Top = 115
            Width = 124
            Height = 15
            Caption = 'Inscri��o Estadual/RG'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object Label26: TLabel
            Left = 5
            Top = 140
            Width = 148
            Height = 15
            Caption = 'Inscr. Est. Subst.Tribut�rio'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object Label29: TLabel
            Left = 24
            Top = 164
            Width = 131
            Height = 15
            Caption = 'C�digo de Faturamento'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object Label3: TLabel
            Left = 80
            Top = 14
            Width = 75
            Height = 15
            Caption = 'C�digo/Nome'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object Label5: TLabel
            Left = 82
            Top = 39
            Width = 73
            Height = 15
            Caption = 'Raz�o Social'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object DBText5: TDBText
            Left = 258
            Top = 14
            Width = 316
            Height = 17
            DataField = 'CLIF_RAZA'
            DataSource = DS_CLIFdest2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Visible = False
          end
          object DBText6: TDBText
            Left = 258
            Top = 14
            Width = 471
            Height = 17
            DataField = 'CLIF_RAZA'
            DataSource = DS_CLIFdest
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Visible = False
          end
          object DBText9: TDBText
            Left = 158
            Top = 14
            Width = 387
            Height = 17
            DataField = 'PAR_NOME'
            DataSource = DS_PAR
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Visible = False
          end
          object Label28: TLabel
            Left = 587
            Top = 64
            Width = 86
            Height = 15
            Caption = 'Data p/ Entrega'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBText15: TDBText
            Left = 159
            Top = 188
            Width = 66
            Height = 17
            DataField = 'CFA_CODI'
            DataSource = DS_FAT
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label50: TLabel
            Left = 317
            Top = 142
            Width = 64
            Height = 15
            Caption = 'N� do LOAD'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object Label52: TLabel
            Left = 576
            Top = 40
            Width = 95
            Height = 15
            Caption = 'Data de emiss�o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbl1: TLabel
            Left = 240
            Top = 164
            Width = 21
            Height = 15
            Caption = 'NFe'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object wwDBComboBox4: TwwDBComboBox
            Left = 159
            Top = 62
            Width = 82
            Height = 21
            ShowButton = True
            Style = csDropDown
            MapList = True
            AllowClearKey = False
            AutoDropDown = True
            BorderStyle = bsNone
            ButtonStyle = cbsEllipsis
            DataField = 'NFI_DEST_PESS'
            DataSource = DS_NF
            DropDownCount = 8
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ItemHeight = 0
            Items.Strings = (
              'F�sica'#9'F'
              'Jur�dica'#9'J')
            ParentFont = False
            Sorted = False
            TabOrder = 5
            UnboundDataType = wwDefault
            OnEnter = wwDBComboBox4Enter
            OnExit = wwDBComboBox4Exit
          end
          object wwDBEdit1: TwwDBEdit
            Left = 159
            Top = 87
            Width = 151
            Height = 21
            BorderStyle = bsNone
            DataField = 'NFI_DEST_CGC'
            DataSource = DS_NF
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnEnter = wwDBEdit1Enter
            OnExit = wwDBEdit1Exit
          end
          object wwDBEdit2: TwwDBEdit
            Left = 159
            Top = 113
            Width = 148
            Height = 21
            BorderStyle = bsNone
            DataField = 'NFI_DEST_INSCRG'
            DataSource = DS_NF
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnEnter = wwDBEdit2Enter
            OnExit = wwDBEdit2Exit
          end
          object wwDBEdit3: TwwDBEdit
            Left = 159
            Top = 138
            Width = 147
            Height = 21
            BorderStyle = bsNone
            DataField = 'NFI_DEST_INSCTRB'
            DataSource = DS_NF
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 8
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnEnter = wwDBEdit3Enter
            OnExit = wwDBEdit3Exit
          end
          object wwDBLookupCombo3: TwwDBLookupCombo
            Left = 159
            Top = 164
            Width = 74
            Height = 21
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            BorderStyle = bsNone
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'CFA_CODI'#9'10'#9'CFO'#9'F')
            DataField = 'CFA_ID'
            DataSource = DS_NF
            LookupTable = Q_FAT
            LookupField = 'CFA_ID'
            ParentFont = False
            TabOrder = 9
            AutoDropDown = True
            ShowButton = True
            PreciseEditRegion = False
            AllowClearKey = False
            OnEnter = wwDBLookupCombo3Enter
            OnExit = wwDBLookupCombo3Exit
          end
          object wwDBEdit4: TwwDBEdit
            Left = 159
            Top = 11
            Width = 242
            Height = 21
            BorderStyle = bsNone
            DataField = 'NFI_DEST_NOME'
            DataSource = DS_NF
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            UnboundDataType = wwDefault
            Visible = False
            WantReturns = False
            WordWrap = False
            OnEnter = wwDBEdit4Enter
            OnExit = wwDBEdit4Exit
          end
          object wwDBEdit5: TwwDBEdit
            Left = 159
            Top = 37
            Width = 276
            Height = 21
            BorderStyle = bsNone
            DataField = 'NFI_DEST_RAZA'
            DataSource = DS_NF
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnEnter = wwDBEdit5Enter
            OnExit = wwDBEdit5Exit
          end
          object GroupBox3: TGroupBox
            Left = 45
            Top = 189
            Width = 665
            Height = 171
            Caption = 'Endere�o'
            TabOrder = 14
            object Label6: TLabel
              Left = 43
              Top = 14
              Width = 23
              Height = 15
              Caption = 'CEP'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label11: TLabel
              Left = 12
              Top = 39
              Width = 54
              Height = 15
              Caption = 'Endere�o'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label12: TLabel
              Left = 31
              Top = 65
              Width = 35
              Height = 15
              Caption = 'Bairro'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label13: TLabel
              Left = 27
              Top = 90
              Width = 39
              Height = 15
              Caption = 'Estado'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label14: TLabel
              Left = 17
              Top = 116
              Width = 48
              Height = 15
              Caption = 'Telefone'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label16: TLabel
              Left = 46
              Top = 141
              Width = 20
              Height = 15
              Caption = 'Fax'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label27: TLabel
              Left = 333
              Top = 40
              Width = 79
              Height = 15
              Caption = 'Complemento'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label24: TLabel
              Left = 284
              Top = 65
              Width = 54
              Height = 15
              Caption = 'Munic�pio'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object wwDBEdit6: TwwDBEdit
              Left = 69
              Top = 13
              Width = 91
              Height = 21
              BorderStyle = bsNone
              DataField = 'NFI_DEST_CEP'
              DataSource = DS_NF
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              MaxLength = 9
              ParentFont = False
              TabOrder = 0
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
              OnEnter = wwDBEdit6Enter
              OnExit = wwDBEdit6Exit
            end
            object wwDBEdit7: TwwDBEdit
              Left = 69
              Top = 39
              Width = 236
              Height = 21
              BorderStyle = bsNone
              DataField = 'NFI_DEST_ENDERECO'
              DataSource = DS_NF
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
              OnEnter = wwDBEdit7Enter
              OnExit = wwDBEdit7Exit
            end
            object wwDBEdit8: TwwDBEdit
              Left = 69
              Top = 64
              Width = 164
              Height = 21
              BorderStyle = bsNone
              DataField = 'NFI_DEST_BAIRRO'
              DataSource = DS_NF
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
              OnEnter = wwDBEdit8Enter
              OnExit = wwDBEdit8Exit
            end
            object wwDBLookupCombo1: TwwDBLookupCombo
              Left = 69
              Top = 90
              Width = 198
              Height = 21
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              BorderStyle = bsNone
              DropDownAlignment = taLeftJustify
              Selected.Strings = (
                'UF_NOME'#9'30'#9'Estado'#9'F')
              DataField = 'NFI_DEST_UF_SIGLA'
              DataSource = DS_NF
              LookupTable = Q_UF
              LookupField = 'UF_SIGLA'
              ParentFont = False
              TabOrder = 5
              AutoDropDown = True
              ShowButton = True
              SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
              PreciseEditRegion = False
              AllowClearKey = False
              OnEnter = wwDBLookupCombo1Enter
              OnExit = wwDBLookupCombo1Exit
            end
            object wwDBEdit9: TwwDBEdit
              Left = 69
              Top = 115
              Width = 128
              Height = 21
              BorderStyle = bsNone
              DataField = 'NFI_DEST_TEL'
              DataSource = DS_NF
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              MaxLength = 14
              ParentFont = False
              TabOrder = 6
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
              OnEnter = wwDBEdit9Enter
              OnExit = wwDBEdit9Exit
            end
            object wwDBEdit10: TwwDBEdit
              Left = 69
              Top = 141
              Width = 128
              Height = 21
              BorderStyle = bsNone
              DataField = 'NFI_DEST_FAX'
              DataSource = DS_NF
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              MaxLength = 14
              ParentFont = False
              TabOrder = 7
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
              OnEnter = wwDBEdit10Enter
              OnExit = wwDBEdit10Exit
            end
            object wwDBEdit12: TwwDBEdit
              Left = 418
              Top = 39
              Width = 232
              Height = 21
              BorderStyle = bsNone
              DataField = 'NFI_DEST_COMPL'
              DataSource = DS_NF
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
              OnEnter = wwDBEdit12Enter
              OnExit = wwDBEdit12Exit
            end
            object wwDBLookupCombo10: TwwDBLookupCombo
              Left = 343
              Top = 64
              Width = 228
              Height = 21
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              BorderStyle = bsNone
              DropDownAlignment = taLeftJustify
              Selected.Strings = (
                'MUN_NOME'#9'40'#9'MUN_NOME'#9'F'
                'DIPAM'#9'10'#9'DIPAM'#9'F')
              DataField = 'MUN_ID'
              DataSource = DS_NF
              LookupTable = Q_MUNI
              LookupField = 'MUN_ID'
              ParentFont = False
              TabOrder = 4
              AutoDropDown = True
              ShowButton = True
              SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
              PreciseEditRegion = False
              AllowClearKey = False
              OnEnter = wwDBLookupCombo10Enter
              OnExit = wwDBLookupCombo10Exit
            end
          end
          object wwDBLookupCombo4: TwwDBLookupCombo
            Left = 159
            Top = 11
            Width = 540
            Height = 21
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            BorderStyle = bsNone
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'CLIN_RAZA'#9'50'#9'CLIN_RAZA'#9'F')
            DataField = 'NFI_DEST_CLI'
            DataSource = DS_NF
            LookupTable = Q_CLINdest
            LookupField = 'CLIN_ID'
            DropDownCount = 18
            ParentFont = False
            TabOrder = 2
            Visible = False
            AutoDropDown = True
            ShowButton = True
            SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
            PreciseEditRegion = False
            AllowClearKey = False
            OnEnter = wwDBLookupCombo4Enter
            OnExit = wwDBLookupCombo4Exit
          end
          object wwDBLookupCombo6: TwwDBLookupCombo
            Left = 159
            Top = 11
            Width = 540
            Height = 21
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            BorderStyle = bsNone
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'CLIF_RAZA'#9'50'#9'Cliente Final'#9'F'
              'CNPJCPF'#9'15'#9'CNPJCPF'#9'F'
              'CLIF_ENDERECO'#9'33'#9'CLIF_ENDERECO'#9'F')
            DataField = 'NFI_DEST_CLI'
            DataSource = DS_NF
            LookupTable = Q_CLIFdest
            LookupField = 'CLIF_ID'
            Options = [loTitles]
            DropDownCount = 18
            ParentFont = False
            TabOrder = 1
            Visible = False
            AutoDropDown = True
            ShowButton = True
            SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
            PreciseEditRegion = False
            AllowClearKey = False
            OnChange = wwDBLookupCombo6Change
            OnEnter = wwDBLookupCombo6Enter
            OnExit = wwDBLookupCombo6Exit
          end
          object wwDBLookupCombo9: TwwDBLookupCombo
            Left = 159
            Top = 11
            Width = 95
            Height = 21
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            BorderStyle = bsNone
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'NBFINAL_COD_CLIN'#9'10'#9'NBFINAL_COD_CLIN'#9'F'
              'CLIF_RAZA'#9'50'#9'CLIF_RAZA'#9'F'
              'CLIE_ENDERECO'#9'33'#9'CLIE_ENDERECO'#9'F')
            DataField = 'NFI_DEST_CLI'
            DataSource = DS_NF
            LookupTable = Q_CLIFdest2
            LookupField = 'CLIF_ID'
            DropDownCount = 18
            ParentFont = False
            TabOrder = 0
            Visible = False
            AutoDropDown = True
            ShowButton = True
            SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
            PreciseEditRegion = False
            AllowClearKey = False
            OnEnter = wwDBLookupCombo9Enter
            OnExit = wwDBLookupCombo9Exit
          end
          object wwDBEdit11: TwwDBEdit
            Left = 678
            Top = 61
            Width = 65
            Height = 21
            BorderStyle = bsNone
            DataField = 'NFI_DTENTREGA'
            DataSource = DS_NF
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            MaxLength = 10
            ParentFont = False
            TabOrder = 10
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnEnter = wwDBEdit11Enter
            OnExit = wwDBEdit11Exit
          end
          object DBRadioGroup4: TDBRadioGroup
            Left = 552
            Top = 87
            Width = 193
            Height = 32
            Caption = 'Movimenta Estoque ?'
            Color = 13303754
            Columns = 2
            DataField = 'NFI_MOVESTQ'
            DataSource = DS_NF
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Items.Strings = (
              'Sim'
              'N�o')
            ParentColor = False
            ParentFont = False
            TabOrder = 11
            Values.Strings = (
              'S'
              'N')
          end
          object Panel6: TPanel
            Left = 159
            Top = 10
            Width = 591
            Height = 25
            BevelInner = bvLowered
            BevelOuter = bvSpace
            Color = clSilver
            TabOrder = 15
            Visible = False
            object DBText17: TDBText
              Left = 3
              Top = 3
              Width = 581
              Height = 17
              DataField = 'NFI_DEST_RAZA'
              DataSource = FManifesto.DS_NF
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -15
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
          end
          object DBRadioGroup1: TDBRadioGroup
            Left = 552
            Top = 123
            Width = 194
            Height = 31
            Caption = 'Transportador NBF ?'
            Color = 13303754
            Columns = 2
            DataField = 'NFI_TRANS'
            DataSource = DS_NF
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Items.Strings = (
              'Sim'
              'N�o')
            ParentColor = False
            ParentFont = False
            TabOrder = 12
            Values.Strings = (
              'S'
              'N')
          end
          object wwDBEdit15: TwwDBEdit
            Left = 384
            Top = 140
            Width = 161
            Height = 21
            BorderStyle = bsNone
            DataField = 'NFI_LOAD'
            DataSource = DS_NF
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 13
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnEnter = wwDBEdit3Enter
            OnExit = wwDBEdit3Exit
          end
          object wwDBEdit18: TwwDBEdit
            Left = 678
            Top = 37
            Width = 65
            Height = 21
            BorderStyle = bsNone
            DataField = 'NFI_DEMI'
            DataSource = DS_NF
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            MaxLength = 10
            ParentFont = False
            TabOrder = 16
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnEnter = wwDBEdit11Enter
            OnExit = wwDBEdit11Exit
          end
          object dbedt1: TDBEdit
            Left = 264
            Top = 163
            Width = 481
            Height = 22
            DataField = 'CHAVE_NFE'
            DataSource = DS_NF
            TabOrder = 17
          end
        end
        object wwDBLookupCombo5: TwwDBLookupCombo
          Left = 111
          Top = 51
          Width = 258
          Height = 21
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          BorderStyle = bsNone
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'CLIF_RAZA'#9'50'#9'Cliente Final'#9'F'
            'NBFINAL_COD_CLIN'#9'10'#9'NBFINAL_COD_CLIN'#9'F')
          DataField = 'NFI_EMIT_CLI'
          DataSource = DS_NF
          LookupTable = Q_CLIF
          LookupField = 'CLIF_ID'
          AutoSelect = False
          DropDownCount = 18
          ParentFont = False
          TabOrder = 3
          Visible = False
          AutoDropDown = True
          ShowButton = True
          SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
          PreciseEditRegion = False
          AllowClearKey = False
          OnEnter = wwDBLookupCombo5Enter
          OnExit = wwDBLookupCombo5Exit
        end
        object wwDBLookupCombo7: TwwDBLookupCombo
          Left = 111
          Top = 52
          Width = 95
          Height = 21
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          BorderStyle = bsNone
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'NBFINAL_COD_CLIN'#9'10'#9'NBFINAL_COD_CLIN'#9'F'
            'CLIF_RAZA'#9'50'#9'CLIF_RAZA'#9'F')
          DataField = 'NFI_EMIT_CLI'
          DataSource = DS_NF
          LookupTable = Q_CLIF2
          LookupField = 'CLIF_ID'
          DropDownCount = 18
          ParentFont = False
          TabOrder = 4
          Visible = False
          AutoDropDown = True
          ShowButton = True
          SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
          PreciseEditRegion = False
          AllowClearKey = False
          OnEnter = wwDBLookupCombo7Enter
          OnExit = wwDBLookupCombo7Exit
        end
        object BitBtn1: TBitBtn
          Left = 536
          Top = 13
          Width = 49
          Height = 22
          Hint = 'Selecionar Clientes Finais'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          Visible = False
          OnClick = BitBtn1Click
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
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
        end
        object wwDBEdit13: TwwDBEdit
          Left = 606
          Top = 12
          Width = 91
          Height = 21
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'NFI_NUMERO'
          DataSource = DS_NF
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnEnter = wwDBEdit13Enter
          OnExit = wwDBEdit13Exit
        end
        object Panel7: TPanel
          Left = 215
          Top = 11
          Width = 370
          Height = 25
          BevelInner = bvLowered
          BevelOuter = bvSpace
          Color = clSilver
          TabOrder = 8
          Visible = False
          object Label40: TLabel
            Left = 6
            Top = 2
            Width = 134
            Height = 17
            Caption = 'Nota Fiscal de Sa�da'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
        object wwDBEdit16: TwwDBEdit
          Left = 735
          Top = 12
          Width = 31
          Height = 21
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'NFI_SERIE'
          DataSource = DS_NF
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnEnter = wwDBEdit16Enter
          OnExit = wwDBEdit16Exit
        end
      end
    end
    object TTabPage
      Left = 4
      Top = 25
      Caption = '   Itens   '
      object Label18: TLabel
        Left = 18
        Top = 8
        Width = 39
        Height = 15
        Caption = 'C�digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText4: TDBText
        Left = 61
        Top = 7
        Width = 60
        Height = 17
        DataField = 'NFI_CODI'
        DataSource = DS_NF
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 126
        Top = 8
        Width = 112
        Height = 15
        Caption = 'Tipo de Documento '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText10: TDBText
        Left = 241
        Top = 7
        Width = 272
        Height = 17
        DataField = 'TDOC_NOME'
        DataSource = FOS.DS_TDOC
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label15: TLabel
        Left = 612
        Top = 8
        Width = 62
        Height = 15
        Caption = 'N�mero NF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText11: TDBText
        Left = 677
        Top = 7
        Width = 97
        Height = 17
        DataField = 'NFI_NUMERO'
        DataSource = DS_NF
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object DBG_INFI: TwwDBGrid
        Left = 0
        Top = 30
        Width = 781
        Height = 401
        Selected.Strings = (
          'INF_ITEM'#9'3'#9'Item'#9'F'
          'PRO_COD'#9'15'#9'C�digo'#9'F'
          'PRO_DESC'#9'40'#9'Descri��o'#9'F'
          'INF_QTDE'#9'15'#9' Quantidade UV'#9'F'
          'ESTQ_LOTE1'#9'10'#9'Lote 1'#9'F'
          'ESTQ_LOTE1_QTDE'#9'15'#9'Qtde.Lote 1'#9'F'
          'ESTQ_LOTE2'#9'10'#9'Lote 2'#9'F'
          'ESTQ_LOTE2_QTDE'#9'15'#9'Qtde.Lote 2'#9'F'
          'INF_PUNI'#9'10'#9'Pre�o Unit.'#9'F'
          'INF_AIPI'#9'5'#9'% Ipi'#9'F'
          'INF_VIPI'#9'9'#9'   Valor IPI'#9'F'
          'INF_TOTA'#9'11'#9'  Valor Total'#9'F'
          'UVEN_DESC'#9'10'#9'UV'#9'F'
          'INF_AICM'#9'7'#9'ICMS %'#9'F')
        IniAttributes.FileName = 'delphi32.ini'
        IniAttributes.SectionName = 'FNFDBG_INFI'
        IniAttributes.Delimiter = ';;'
        TitleColor = clLime
        FixedCols = 1
        ShowHorzScrollBar = True
        Color = clWhite
        DataSource = DS_INF
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        KeyOptions = [dgEnterToTab, dgAllowInsert]
        ParentFont = False
        TabOrder = 0
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clNavy
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = [fsBold]
        TitleLines = 1
        TitleButtons = False
        OnColExit = DBG_INFIColExit
        FooterColor = clInactiveCaption
        FooterCellColor = clGrayText
      end
      object DBLC_INF_PROD: TwwDBLookupCombo
        Left = 13
        Top = 89
        Width = 76
        Height = 23
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'PRO_COD'#9'13'#9'C�digo'#9'F'
          'PRO_DESC'#9'45'#9'PRO_DESC'#9'F')
        DataField = 'PRO_COD'
        DataSource = DS_INF
        LookupTable = Q_PROD
        LookupField = 'PRO_COD'
        AutoSelect = False
        ParentFont = False
        TabOrder = 1
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        OnExit = DBLC_INF_PRODExit
      end
      object Panel8: TPanel
        Left = 239
        Top = 2
        Width = 370
        Height = 25
        BevelInner = bvLowered
        BevelOuter = bvSpace
        Color = clMenu
        TabOrder = 2
        Visible = False
        object Label41: TLabel
          Left = 6
          Top = 2
          Width = 134
          Height = 17
          Caption = 'Nota Fiscal de Sa�da'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object Panel10: TPanel
        Left = 1
        Top = 433
        Width = 761
        Height = 29
        BevelInner = bvLowered
        BevelOuter = bvSpace
        Color = 12615680
        TabOrder = 3
        object Label46: TLabel
          Left = 495
          Top = 3
          Width = 81
          Height = 24
          Caption = 'Total UV'
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
          Left = 661
          Top = 2
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
        object Label44: TLabel
          Left = 7
          Top = 3
          Width = 115
          Height = 24
          Caption = 'Qtde. Pallet'
          Color = 12615680
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clYellow
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label45: TLabel
          Left = 133
          Top = 2
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
    end
    object TTabPage
      Left = 4
      Top = 25
      Caption = '   Valores   '
      object Label17: TLabel
        Left = 18
        Top = 13
        Width = 39
        Height = 15
        Caption = 'C�digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText12: TDBText
        Left = 61
        Top = 12
        Width = 57
        Height = 17
        DataField = 'NFI_CODI'
        DataSource = DS_NF
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label19: TLabel
        Left = 126
        Top = 13
        Width = 112
        Height = 15
        Caption = 'Tipo de Documento '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText13: TDBText
        Left = 241
        Top = 12
        Width = 272
        Height = 17
        DataField = 'TDOC_NOME'
        DataSource = FOS.DS_TDOC
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label20: TLabel
        Left = 610
        Top = 13
        Width = 62
        Height = 15
        Caption = 'N�mero NF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText14: TDBText
        Left = 677
        Top = 12
        Width = 103
        Height = 17
        DataField = 'NFI_NUMERO'
        DataSource = DS_NF
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Panel4: TPanel
        Left = 1
        Top = 37
        Width = 777
        Height = 422
        BevelInner = bvSpace
        BevelOuter = bvLowered
        BevelWidth = 3
        Color = clSilver
        TabOrder = 0
        object Label35: TLabel
          Left = 521
          Top = 236
          Width = 108
          Height = 15
          Caption = 'Valor Total do Frete'
          FocusControl = DBEdit5
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object Label37: TLabel
          Left = 19
          Top = 281
          Width = 132
          Height = 15
          Caption = 'Valor Desp. Acess�rias'
          FocusControl = DBEdit1
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object Label38: TLabel
          Left = 165
          Top = 281
          Width = 90
          Height = 15
          Caption = 'Valor do Seguro'
          FocusControl = DBEdit2
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object Label39: TLabel
          Left = 281
          Top = 281
          Width = 105
          Height = 15
          Caption = 'Valor Total da Nota'
          FocusControl = DBEdit3
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object Label43: TLabel
          Left = 10
          Top = 326
          Width = 69
          Height = 15
          Caption = 'Observa��o'
          FocusControl = DBEdit1
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object GroupBox5: TGroupBox
          Left = 10
          Top = 175
          Width = 758
          Height = 49
          Caption = 'ICMS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          object Label30: TLabel
            Left = 453
            Top = 8
            Width = 92
            Height = 15
            Caption = 'Base Calc. ICMS'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object Label31: TLabel
            Left = 598
            Top = 8
            Width = 78
            Height = 15
            Caption = 'Valor do ICMS'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object Label21: TLabel
            Left = 8
            Top = 23
            Width = 45
            Height = 16
            Caption = '*********'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object DBEdit9: TDBEdit
            Left = 453
            Top = 23
            Width = 129
            Height = 21
            BorderStyle = bsNone
            Color = clBtnHighlight
            DataField = 'NFI_BICM'
            DataSource = DS_NF
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnEnter = DBEdit9Enter
            OnExit = DBEdit9Exit
          end
          object DBEdit14: TDBEdit
            Left = 598
            Top = 23
            Width = 129
            Height = 21
            BorderStyle = bsNone
            Color = clBtnHighlight
            DataField = 'NFI_VICM'
            DataSource = DS_NF
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnEnter = DBEdit14Enter
            OnExit = DBEdit14Exit
          end
        end
        object GroupBox6: TGroupBox
          Left = 10
          Top = 224
          Width = 478
          Height = 54
          Caption = 'IPI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          object Label32: TLabel
            Left = 9
            Top = 12
            Width = 53
            Height = 15
            Caption = 'Cd.Trb.IPI'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object Label33: TLabel
            Left = 143
            Top = 12
            Width = 77
            Height = 15
            Caption = 'Base Calc. IPI'
            FocusControl = DBEdit10
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object Label34: TLabel
            Left = 312
            Top = 12
            Width = 63
            Height = 15
            Caption = 'Valor do IPI'
            FocusControl = DBEdit11
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object DBEdit10: TDBEdit
            Left = 143
            Top = 27
            Width = 151
            Height = 21
            BorderStyle = bsNone
            Color = clWhite
            DataField = 'NFI_BIPI'
            DataSource = DS_NF
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnEnter = DBEdit10Enter
            OnExit = DBEdit10Exit
          end
          object DBEdit11: TDBEdit
            Left = 312
            Top = 27
            Width = 156
            Height = 21
            BorderStyle = bsNone
            Color = clWhite
            DataField = 'NFI_VIPI'
            DataSource = DS_NF
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnEnter = DBEdit11Enter
            OnExit = DBEdit11Exit
          end
          object DBCB_CFA_TIPI: TwwDBComboBox
            Left = 9
            Top = 27
            Width = 118
            Height = 21
            ShowButton = True
            Style = csDropDown
            MapList = True
            AllowClearKey = False
            BorderStyle = bsNone
            ButtonStyle = cbsEllipsis
            DataField = 'RecNf_CodTribIPI'
            DropDownCount = 8
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ItemHeight = 0
            Items.Strings = (
              'Isentas'#9'I'
              'Outras'#9'O'
              'Tributado'#9'T')
            ParentFont = False
            Sorted = True
            TabOrder = 0
            UnboundDataType = wwDefault
            OnEnter = DBCB_CFA_TIPIEnter
            OnExit = DBCB_CFA_TIPIExit
          end
        end
        object DBEdit5: TDBEdit
          Left = 521
          Top = 252
          Width = 127
          Height = 21
          BorderStyle = bsNone
          DataField = 'NFI_VFRE'
          DataSource = DS_NF
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnEnter = DBEdit5Enter
          OnExit = DBEdit5Exit
        end
        object DBEdit1: TDBEdit
          Left = 19
          Top = 297
          Width = 130
          Height = 21
          BorderStyle = bsNone
          DataField = 'NFI_VDES'
          DataSource = DS_NF
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnEnter = DBEdit1Enter
          OnExit = DBEdit1Exit
        end
        object DBEdit2: TDBEdit
          Left = 165
          Top = 297
          Width = 104
          Height = 21
          BorderStyle = bsNone
          DataField = 'NFI_VSEG'
          DataSource = DS_NF
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          OnEnter = DBEdit2Enter
          OnExit = DBEdit2Exit
        end
        object DBEdit3: TDBEdit
          Left = 281
          Top = 297
          Width = 129
          Height = 21
          BorderStyle = bsNone
          DataField = 'NFI_TOTA'
          DataSource = DS_NF
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          OnEnter = DBEdit3Enter
          OnExit = DBEdit3Exit
        end
        object GroupBox10: TGroupBox
          Left = 10
          Top = 43
          Width = 759
          Height = 134
          Caption = ' Transportador/Volumes  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          object Label78: TLabel
            Left = 8
            Top = 14
            Width = 171
            Height = 15
            Caption = 'Transportadora - Raz�o Social'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object Label79: TLabel
            Left = 429
            Top = 14
            Width = 32
            Height = 15
            Caption = 'Placa'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object Label80: TLabel
            Left = 514
            Top = 14
            Width = 39
            Height = 15
            Caption = 'Estado'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object Label81: TLabel
            Left = 106
            Top = 90
            Width = 73
            Height = 15
            Caption = 'Tipo de Frete'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object Label82: TLabel
            Left = 8
            Top = 53
            Width = 78
            Height = 15
            Caption = 'Data de Sa�da'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object Label87: TLabel
            Left = 101
            Top = 53
            Width = 36
            Height = 15
            Caption = 'Marca'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object Label88: TLabel
            Left = 198
            Top = 53
            Width = 65
            Height = 15
            Caption = 'Quantidade'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object Label89: TLabel
            Left = 8
            Top = 90
            Width = 45
            Height = 15
            Caption = 'Esp�cie'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object Label92: TLabel
            Left = 368
            Top = 90
            Width = 73
            Height = 15
            Caption = 'Peso L�quido'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object Label93: TLabel
            Left = 248
            Top = 90
            Width = 63
            Height = 15
            Caption = 'Peso Bruto'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object DBE_NFI_PLAC: TwwDBEdit
            Left = 428
            Top = 30
            Width = 82
            Height = 21
            BorderStyle = bsNone
            DataField = 'NFI_PLAC'
            DataSource = DS_NF
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnEnter = DBE_NFI_PLACEnter
            OnExit = DBE_NFI_PLACExit
          end
          object DBLC_NFI_UFVE: TwwDBLookupCombo
            Left = 514
            Top = 30
            Width = 198
            Height = 21
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            BorderStyle = bsNone
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'UF_NOME'#9'30'#9'Estado'#9'F')
            DataField = 'NFI_UF_SIGLA'
            DataSource = DS_NF
            LookupTable = Q_UF
            LookupField = 'UF_SIGLA'
            ParentFont = False
            TabOrder = 2
            AutoDropDown = True
            ShowButton = True
            SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
            PreciseEditRegion = False
            AllowClearKey = False
            OnEnter = DBLC_NFI_UFVEEnter
            OnExit = DBLC_NFI_UFVEExit
          end
          object DBCB_NFI_TFRE: TwwDBComboBox
            Left = 106
            Top = 106
            Width = 133
            Height = 20
            ShowButton = True
            Style = csDropDown
            MapList = True
            AllowClearKey = False
            BorderStyle = bsNone
            ButtonStyle = cbsEllipsis
            DataField = 'NFI_TFRE'
            DataSource = DS_NF
            DropDownCount = 8
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ItemHeight = 0
            Items.Strings = (
              'Emitente'#9'1'
              'Destinat�rio'#9'2')
            ParentFont = False
            Sorted = False
            TabOrder = 10
            UnboundDataType = wwDefault
            OnEnter = DBCB_NFI_TFREEnter
            OnExit = DBCB_NFI_TFREExit
          end
          object DBE_NFI_DSAI: TwwDBEdit
            Left = 8
            Top = 68
            Width = 81
            Height = 21
            BorderStyle = bsNone
            DataField = 'NFI_DSAI'
            DataSource = DS_NF
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            MaxLength = 10
            ParentFont = False
            TabOrder = 3
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnEnter = DBE_NFI_DSAIEnter
            OnExit = DBE_NFI_DSAIExit
          end
          object DBE_NFI_MARC: TwwDBEdit
            Left = 98
            Top = 68
            Width = 88
            Height = 21
            BorderStyle = bsNone
            DataField = 'NFI_MARC'
            DataSource = DS_NF
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnEnter = DBE_NFI_MARCEnter
            OnExit = DBE_NFI_MARCExit
          end
          object DBE_NFI_QTDE: TwwDBEdit
            Left = 197
            Top = 68
            Width = 68
            Height = 21
            BorderStyle = bsNone
            DataField = 'NFI_QTDE'
            DataSource = DS_NF
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnEnter = DBE_NFI_QTDEEnter
            OnExit = DBE_NFI_QTDEExit
          end
          object DBE_NFI_ESPE: TwwDBEdit
            Left = 8
            Top = 105
            Width = 94
            Height = 21
            BorderStyle = bsNone
            DataField = 'NFI_ESPE'
            DataSource = DS_NF
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnEnter = DBE_NFI_ESPEEnter
            OnExit = DBE_NFI_ESPEExit
          end
          object DBE_NFI_PLIQ: TwwDBEdit
            Left = 368
            Top = 105
            Width = 112
            Height = 21
            BorderStyle = bsNone
            DataField = 'NFI_PLIQ'
            DataSource = DS_NF
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 9
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnEnter = DBE_NFI_PLIQEnter
            OnExit = DBE_NFI_PLIQExit
          end
          object DBE_NFI_PBRU: TwwDBEdit
            Left = 248
            Top = 105
            Width = 112
            Height = 21
            BorderStyle = bsNone
            DataField = 'NFI_PBRU'
            DataSource = DS_NF
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 8
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnEnter = DBE_NFI_PBRUEnter
            OnExit = DBE_NFI_PBRUExit
          end
          object wwDBEdit14: TwwDBEdit
            Left = 7
            Top = 30
            Width = 417
            Height = 21
            BorderStyle = bsNone
            DataField = 'NFI_TRAN'
            DataSource = DS_NF
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnEnter = wwDBEdit14Enter
            OnExit = wwDBEdit14Exit
          end
          object DBCheckBox1: TDBCheckBox
            Left = 504
            Top = 104
            Width = 169
            Height = 17
            Caption = 'BLOQUEAR RECALCULO'
            DataField = 'BLOQUEIO'
            DataSource = DS_NF
            TabOrder = 6
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
        end
        object BitBtn3: TBitBtn
          Left = 624
          Top = 341
          Width = 121
          Height = 33
          Caption = 'Recalcular NF'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 9
          OnClick = BitBtn3Click
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333300000000
            0EEE333377777777777733330FF00FBFB0EE33337F37733F377733330F0BFB0B
            FB0E33337F73FF73337733330FF000BFBFB033337F377733333733330FFF0BFB
            FBF033337FFF733F333733300000BF0FBFB03FF77777F3733F37000FBFB0F0FB
            0BF077733FF7F7FF7337E0FB00000000BF0077F377777777F377E0BFBFBFBFB0
            F0F077F3333FFFF7F737E0FBFB0000000FF077F3337777777337E0BFBFBFBFB0
            FFF077F3333FFFF73FF7E0FBFB00000F000077FF337777737777E00FBFBFB0FF
            0FF07773FFFFF7337F37003000000FFF0F037737777773337F7333330FFFFFFF
            003333337FFFFFFF773333330000000003333333777777777333}
          NumGlyphs = 2
        end
        object DBMemo2: TDBMemo
          Left = 10
          Top = 346
          Width = 558
          Height = 61
          BorderStyle = bsNone
          DataField = 'TEXTO_LIVRE'
          DataSource = DS_NF
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ScrollBars = ssVertical
          TabOrder = 8
          OnEnter = DBMemo2Enter
          OnExit = DBMemo2Exit
        end
        object GroupBox4: TGroupBox
          Left = 9
          Top = 6
          Width = 760
          Height = 39
          Caption = 'Redespacho'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          object Label48: TLabel
            Left = 129
            Top = 16
            Width = 88
            Height = 15
            Caption = 'Transportadora'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object wwDBComboBox1: TwwDBComboBox
            Left = 10
            Top = 14
            Width = 67
            Height = 21
            ShowButton = True
            Style = csDropDown
            MapList = True
            AllowClearKey = False
            BorderStyle = bsNone
            ButtonStyle = cbsEllipsis
            DataField = 'NFI_REDESPACHO'
            DataSource = DS_NF
            DropDownCount = 8
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ItemHeight = 0
            Items.Strings = (
              'Sim'#9'S'
              'N�o'#9'N')
            ParentFont = False
            Sorted = False
            TabOrder = 0
            UnboundDataType = wwDefault
            OnEnter = wwDBComboBox1Enter
            OnExit = wwDBComboBox1Exit
          end
          object wwDBLookupCombo16: TwwDBLookupCombo
            Left = 221
            Top = 14
            Width = 276
            Height = 21
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            BorderStyle = bsNone
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'TRANS_FANTASIA'#9'40'#9'TRANS_FANTASIA'#9'F')
            DataField = 'TRANS_ID'
            DataSource = DS_NF
            LookupTable = Q_TRANS2
            LookupField = 'TRANS_ID'
            ParentFont = False
            TabOrder = 1
            AutoDropDown = True
            ShowButton = True
            SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
            PreciseEditRegion = False
            AllowClearKey = False
            OnEnter = wwDBLookupCombo16Enter
            OnExit = wwDBLookupCombo16Exit
          end
        end
      end
      object Panel9: TPanel
        Left = 239
        Top = 7
        Width = 368
        Height = 25
        BevelInner = bvLowered
        BevelOuter = bvSpace
        Color = clMenu
        TabOrder = 1
        Visible = False
        object Label42: TLabel
          Left = 6
          Top = 2
          Width = 134
          Height = 17
          Caption = 'Nota Fiscal de Sa�da'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
    end
  end
  object Panel3: TPanel
    Left = 462
    Top = 474
    Width = 377
    Height = 233
    BevelInner = bvSpace
    BevelOuter = bvLowered
    BevelWidth = 3
    TabOrder = 2
    Visible = False
    object Label7: TLabel
      Left = 22
      Top = 15
      Width = 68
      Height = 15
      Caption = 'Cliente Final'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object Label36: TLabel
      Left = 22
      Top = 58
      Width = 123
      Height = 15
      Caption = 'C�digo no Cliente NBF'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object SpeedButton2: TSpeedButton
      Left = 200
      Top = 153
      Width = 25
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
      OnClick = SpeedButton2Click
    end
    object wwDBLookupCombo8: TwwDBLookupCombo
      Left = 20
      Top = 33
      Width = 258
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      BorderStyle = bsNone
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'CLIF_RAZA'#9'50'#9'CLIF_RAZA'#9'F')
      LookupTable = Q_CLIFINAL
      LookupField = 'CLIF_ID'
      DropDownCount = 18
      ParentFont = False
      TabOrder = 0
      AutoDropDown = True
      ShowButton = True
      SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
      PreciseEditRegion = False
      AllowClearKey = False
      OnEnter = wwDBLookupCombo8Enter
      OnExit = wwDBLookupCombo8Exit
    end
    object BitBtn2: TBitBtn
      Left = 160
      Top = 153
      Width = 25
      Height = 25
      Hint = 'Confirmar'
      Caption = ' '
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
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
    object wwdbedit17: TEdit
      Left = 22
      Top = 77
      Width = 73
      Height = 23
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnEnter = wwDBEdit17Enter
      OnExit = wwDBEdit17Exit
    end
  end
  object Panel11: TPanel
    Left = 107
    Top = 503
    Width = 553
    Height = 160
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Caption = 'Panel2'
    Color = clBlue
    TabOrder = 3
    Visible = False
    object Panel12: TPanel
      Left = 13
      Top = 12
      Width = 530
      Height = 137
      BevelInner = bvLowered
      TabOrder = 0
      object Label49: TLabel
        Left = 96
        Top = 21
        Width = 343
        Height = 19
        Caption = 'Nota sem Redu��o de ICMS, escolha o CFOP'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object wwDBLookupCombo11: TwwDBLookupCombo
        Left = 93
        Top = 52
        Width = 352
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        CharCase = ecUpperCase
        BorderStyle = bsNone
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'CFA_CODI'#9'4'#9'C�digo'#9'F'
          'CFA_DCFO'#9'40'#9'Descri��o'#9'F'
          'TIPO DE TRIB'#9'25'#9'TIPO DE TRIB'#9'F')
        LookupTable = Q_FAT60
        LookupField = 'CFA_ID'
        ParentFont = False
        TabOrder = 0
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = True
      end
      object BitBtn4: TBitBtn
        Left = 184
        Top = 90
        Width = 100
        Height = 24
        Hint = 'Confirmar'
        Caption = 'Gerar '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = BitBtn4Click
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
      object BitBtn5: TBitBtn
        Left = 288
        Top = 90
        Width = 36
        Height = 24
        Hint = 'Cancelar'
        Cancel = True
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = BitBtn5Click
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333333333333333000033338833333333333333333F333333333333
          0000333911833333983333333388F333333F3333000033391118333911833333
          38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
          911118111118333338F3338F833338F3000033333911111111833333338F3338
          3333F8330000333333911111183333333338F333333F83330000333333311111
          8333333333338F3333383333000033333339111183333333333338F333833333
          00003333339111118333333333333833338F3333000033333911181118333333
          33338333338F333300003333911183911183333333383338F338F33300003333
          9118333911183333338F33838F338F33000033333913333391113333338FF833
          38F338F300003333333333333919333333388333338FFF830000333333333333
          3333333333333333333888330000333333333333333333333333333333333333
          0000}
        NumGlyphs = 2
        Style = bsNew
      end
    end
  end
  object Q_NF: TwwQuery
    CachedUpdates = True
    BeforeInsert = Q_NFBeforeInsert
    BeforeEdit = Q_NFBeforeEdit
    BeforePost = Q_NFBeforePost
    AfterPost = Q_NFAfterPost
    BeforeDelete = Q_NFBeforeDelete
    AfterDelete = Q_NFAfterDelete
    BeforeScroll = Q_NFBeforeScroll
    OnNewRecord = Q_NFNewRecord
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    DataSource = FOS.DS_TDOC
    RequestLive = True
    SQL.Strings = (
      'Select * from NF where'
      'TDOC_ID = :TDOC_ID and'
      'OS_ID = :OS_ID'
      'order by NFI_CODI')
    UpdateObject = UPD_NF
    ValidateWithMask = True
    Left = 464
    Top = 393
    ParamData = <
      item
        DataType = ftInteger
        Name = 'TDOC_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'OS_ID'
        ParamType = ptUnknown
      end>
    object Q_NFNFI_TFRE: TStringField
      FieldName = 'NFI_TFRE'
      Origin = 'NBFDADOS.NF.NFI_TFRE'
      FixedChar = True
      Size = 1
    end
    object Q_NFNFI_CODI: TAutoIncField
      FieldName = 'NFI_CODI'
      Origin = 'NBFDADOS.NF.NFI_CODI'
    end
    object Q_NFTDOC_ID: TIntegerField
      FieldName = 'TDOC_ID'
      Origin = 'NBFDADOS.NF.TDOC_ID'
    end
    object Q_NFNFI_EMIT_ORIG: TStringField
      FieldName = 'NFI_EMIT_ORIG'
      Origin = 'NBFDADOS.NF.NFI_EMIT_ORIG'
      FixedChar = True
      Size = 1
    end
    object Q_NFNFI_EMIT_CLI: TIntegerField
      FieldName = 'NFI_EMIT_CLI'
      Origin = 'NBFDADOS.NF.NFI_EMIT_CLI'
    end
    object Q_NFNFI_DEST_ORIG: TStringField
      FieldName = 'NFI_DEST_ORIG'
      Origin = 'NBFDADOS.NF.NFI_DEST_ORIG'
      FixedChar = True
      Size = 1
    end
    object Q_NFNFI_DEST_CLI: TIntegerField
      FieldName = 'NFI_DEST_CLI'
      Origin = 'NBFDADOS.NF.NFI_DEST_CLI'
    end
    object Q_NFNFI_DEST_NOME: TStringField
      FieldName = 'NFI_DEST_NOME'
      Origin = 'NBFDADOS.NF.NFI_DEST_NOME'
      FixedChar = True
      Size = 30
    end
    object Q_NFNFI_DEST_RAZA: TStringField
      FieldName = 'NFI_DEST_RAZA'
      Origin = 'NBFDADOS.NF.NFI_DEST_RAZA'
      FixedChar = True
      Size = 50
    end
    object Q_NFNFI_DEST_ENDERECO: TStringField
      FieldName = 'NFI_DEST_ENDERECO'
      Origin = 'NBFDADOS.NF.NFI_DEST_ENDERECO'
      FixedChar = True
      Size = 50
    end
    object Q_NFNFI_DEST_COMPL: TStringField
      FieldName = 'NFI_DEST_COMPL'
      Origin = 'NBFDADOS.NF.NFI_DEST_COMPL'
      FixedChar = True
    end
    object Q_NFNFI_DEST_BAIRRO: TStringField
      FieldName = 'NFI_DEST_BAIRRO'
      Origin = 'NBFDADOS.NF.NFI_DEST_BAIRRO'
      FixedChar = True
      Size = 40
    end
    object Q_NFNFI_DEST_UF_SIGLA: TStringField
      FieldName = 'NFI_DEST_UF_SIGLA'
      Origin = 'NBFDADOS.NF.NFI_DEST_UF_SIGLA'
      FixedChar = True
      Size = 2
    end
    object Q_NFNFI_DEST_CEP: TStringField
      FieldName = 'NFI_DEST_CEP'
      Origin = 'NBFDADOS.NF.NFI_DEST_CEP'
      EditMask = '99999-999;0;_'
      FixedChar = True
      Size = 8
    end
    object Q_NFNFI_DEST_TEL: TStringField
      FieldName = 'NFI_DEST_TEL'
      Origin = 'NBFDADOS.NF.NFI_DEST_TEL'
      EditMask = '!\(999\)#999-9999;0; '
      FixedChar = True
      Size = 11
    end
    object Q_NFNFI_DEST_FAX: TStringField
      FieldName = 'NFI_DEST_FAX'
      Origin = 'NBFDADOS.NF.NFI_DEST_FAX'
      EditMask = '!\(999\)#999-9999;0; '
      FixedChar = True
      Size = 11
    end
    object Q_NFNFI_DEST_CGC: TStringField
      FieldName = 'NFI_DEST_CGC'
      Origin = 'NBFDADOS.NF.NFI_DEST_CGC'
      FixedChar = True
      Size = 14
    end
    object Q_NFNFI_DEST_INSCRG: TStringField
      FieldName = 'NFI_DEST_INSCRG'
      Origin = 'NBFDADOS.NF.NFI_DEST_INSCRG'
      FixedChar = True
    end
    object Q_NFNFI_DEST_INSCTRB: TStringField
      FieldName = 'NFI_DEST_INSCTRB'
      Origin = 'NBFDADOS.NF.NFI_DEST_INSCTRB'
      FixedChar = True
    end
    object Q_NFNFI_DEST_PESS: TStringField
      FieldName = 'NFI_DEST_PESS'
      Origin = 'NBFDADOS.NF.NFI_DEST_PESS'
      FixedChar = True
      Size = 1
    end
    object Q_NFNFI_VFRE: TFloatField
      FieldName = 'NFI_VFRE'
      Origin = 'NBFDADOS.NF.NFI_VFRE'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_NFNFI_VSEG: TFloatField
      FieldName = 'NFI_VSEG'
      Origin = 'NBFDADOS.NF.NFI_VSEG'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_NFNFI_BIPI: TFloatField
      FieldName = 'NFI_BIPI'
      Origin = 'NBFDADOS.NF.NFI_BIPI'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_NFNFI_VIPI: TFloatField
      FieldName = 'NFI_VIPI'
      Origin = 'NBFDADOS.NF.NFI_VIPI'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_NFNFI_BICM: TFloatField
      FieldName = 'NFI_BICM'
      Origin = 'NBFDADOS.NF.NFI_BICM'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_NFNFI_VICM: TFloatField
      FieldName = 'NFI_VICM'
      Origin = 'NBFDADOS.NF.NFI_VICM'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_NFNFI_VMER: TFloatField
      FieldName = 'NFI_VMER'
      Origin = 'NBFDADOS.NF.NFI_VMER'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_NFNFI_TOTA: TFloatField
      FieldName = 'NFI_TOTA'
      Origin = 'NBFDADOS.NF.NFI_TOTA'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_NFNFI_DSAI: TDateTimeField
      FieldName = 'NFI_DSAI'
      Origin = 'NBFDADOS.NF.NFI_DSAI'
      EditMask = '!99/99/9999;1;_'
    end
    object Q_NFNFI_HSAI: TDateTimeField
      FieldName = 'NFI_HSAI'
      Origin = 'NBFDADOS.NF.NFI_HSAI'
      EditMask = '!90:00:00>LL;1;_'
    end
    object Q_NFNFI_TRAN: TStringField
      FieldName = 'NFI_TRAN'
      Origin = 'NBFDADOS.NF.NFI_TRAN'
      FixedChar = True
      Size = 50
    end
    object Q_NFNFI_PLAC: TStringField
      FieldName = 'NFI_PLAC'
      Origin = 'NBFDADOS.NF.NFI_PLAC'
      FixedChar = True
      Size = 50
    end
    object Q_NFNFI_UF_SIGLA: TStringField
      FieldName = 'NFI_UF_SIGLA'
      Origin = 'NBFDADOS.NF.NFI_UF_SIGLA'
      FixedChar = True
      Size = 2
    end
    object Q_NFNFI_MARC: TStringField
      FieldName = 'NFI_MARC'
      Origin = 'NBFDADOS.NF.NFI_MARC'
      FixedChar = True
      Size = 15
    end
    object Q_NFNFI_QTDE: TIntegerField
      FieldName = 'NFI_QTDE'
      Origin = 'NBFDADOS.NF.NFI_QTDE'
    end
    object Q_NFNFI_ESPE: TStringField
      FieldName = 'NFI_ESPE'
      Origin = 'NBFDADOS.NF.NFI_ESPE'
      FixedChar = True
      Size = 15
    end
    object Q_NFNFI_PLIQ: TFloatField
      FieldName = 'NFI_PLIQ'
      Origin = 'NBFDADOS.NF.NFI_PLIQ'
      DisplayFormat = '###,###,##0.0000'
      EditFormat = '###,###,##0.0000'
    end
    object Q_NFNFI_PBRU: TFloatField
      FieldName = 'NFI_PBRU'
      Origin = 'NBFDADOS.NF.NFI_PBRU'
      DisplayFormat = '###,###,##0.0000'
      EditFormat = '###,###,##0.0000'
    end
    object Q_NFNFI_DEMI: TDateTimeField
      FieldName = 'NFI_DEMI'
      Origin = 'NBFDADOS.NF.NFI_DEMI'
      EditMask = '!99/99/9999;1;_'
    end
    object Q_NFNFI_VDES: TFloatField
      FieldName = 'NFI_VDES'
      Origin = 'NBFDADOS.NF.NFI_VDES'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_NFCFA_ID: TIntegerField
      FieldName = 'CFA_ID'
      Origin = 'NBFDADOS.NF.CFA_ID'
    end
    object Q_NFOS_ID: TIntegerField
      FieldName = 'OS_ID'
      Origin = 'NBFDADOS.NF.OS_ID'
    end
    object Q_NFMUN_ID: TIntegerField
      FieldName = 'MUN_ID'
      Origin = 'NBFDADOS.NF.MUN_ID'
    end
    object Q_NFNFI_DTENTREGA: TDateTimeField
      FieldName = 'NFI_DTENTREGA'
      Origin = 'NBFDADOS.NF.NFI_DTENTREGA'
      EditMask = '!99/99/9999;1;_'
    end
    object Q_NFNFI_MOVESTQ: TStringField
      FieldName = 'NFI_MOVESTQ'
      Origin = 'NBFDADOS.NF.NFI_MOVESTQ'
      FixedChar = True
      Size = 1
    end
    object Q_NFNFI_MARCADOR: TStringField
      FieldName = 'NFI_MARCADOR'
      Origin = 'NBFDADOS.NF.NFI_MARCADOR'
      FixedChar = True
      Size = 1
    end
    object Q_NFMANI_ID: TIntegerField
      FieldName = 'MANI_ID'
      Origin = 'NBFDADOS.NF.MANI_ID'
    end
    object Q_NFMANI_ORDEM: TIntegerField
      FieldName = 'MANI_ORDEM'
      Origin = 'NBFDADOS.NF.MANI_ORDEM'
    end
    object Q_NFNFI_VOL: TFloatField
      FieldName = 'NFI_VOL'
      Origin = 'NBFDADOS.NF.NFI_VOL'
    end
    object Q_NFCFACODI: TStringField
      FieldKind = fkLookup
      FieldName = 'CFACODI'
      LookupDataSet = Q_FAT
      LookupKeyFields = 'CFA_ID'
      LookupResultField = 'CFA_CODI'
      KeyFields = 'CFA_ID'
      EditMask = '9.999;0;_'
      Size = 4
      Lookup = True
    end
    object Q_NFNFI_TRANS: TStringField
      FieldName = 'NFI_TRANS'
      Origin = 'NBFDADOS.NF.NFI_TRANS'
      FixedChar = True
      Size = 1
    end
    object Q_NFTEXTO_LIVRE: TMemoField
      FieldName = 'TEXTO_LIVRE'
      Origin = 'NBFDADOS.NF.TEXTO_LIVRE'
      BlobType = ftMemo
    end
    object Q_NFNFI_COBRAR: TStringField
      FieldName = 'NFI_COBRAR'
      Origin = 'NBFDADOS.NF.NFI_COBRAR'
      FixedChar = True
      Size = 1
    end
    object Q_NFNFI_DTENTREGA_FIM: TDateTimeField
      FieldName = 'NFI_DTENTREGA_FIM'
      Origin = 'NBFDADOS.NF.NFI_DTENTREGA_FIM'
    end
    object Q_NFNFI_ENTREGA: TStringField
      FieldName = 'NFI_ENTREGA'
      Origin = 'NBFDADOS.NF.NFI_ENTREGA'
      FixedChar = True
      Size = 1
    end
    object Q_NFNFI_NUMERO: TStringField
      FieldName = 'NFI_NUMERO'
      Origin = 'NBFDADOS.NF.NFI_NUMERO'
      FixedChar = True
      Size = 10
    end
    object Q_NFNFI_CLONE: TStringField
      FieldName = 'NFI_CLONE'
      Origin = 'NBFDADOS.NF.NFI_CLONE'
      FixedChar = True
      Size = 1
    end
    object Q_NFNFI_QTDEPALLET: TIntegerField
      FieldName = 'NFI_QTDEPALLET'
      Origin = 'NBFDADOS.NF.NFI_QTDEPALLET'
    end
    object Q_NFNFI_RETORNADA: TStringField
      FieldName = 'NFI_RETORNADA'
      Origin = 'NBFDADOS.NF.NFI_RETORNADA'
      FixedChar = True
      Size = 1
    end
    object Q_NFNFI_NFRS_REJEITADA: TStringField
      FieldName = 'NFI_NFRS_REJEITADA'
      Origin = 'NBFDADOS.NF.NFI_NFRS_REJEITADA'
      FixedChar = True
      Size = 1
    end
    object Q_NFNFI_GEROUNFE: TStringField
      FieldName = 'NFI_GEROUNFE'
      Origin = 'NBFDADOS.NF.NFI_GEROUNFE'
      FixedChar = True
      Size = 1
    end
    object Q_NFNFI_REDESPACHO: TStringField
      FieldName = 'NFI_REDESPACHO'
      Origin = 'NBFDADOS.NF.NFI_REDESPACHO'
      FixedChar = True
      Size = 1
    end
    object Q_NFNFI_QTDEUV: TFloatField
      FieldName = 'NFI_QTDEUV'
      Origin = 'NBFDADOS.NF.NFI_QTDEUV'
    end
    object Q_NFTPRO_ID: TIntegerField
      FieldName = 'TPRO_ID'
      Origin = 'NBFDADOS.NF.TPRO_ID'
    end
    object Q_NFNFI_MARCADOR_NFRS: TStringField
      FieldName = 'NFI_MARCADOR_NFRS'
      Origin = 'NBFDADOS.NF.NFI_MARCADOR_NFRS'
      FixedChar = True
      Size = 1
    end
    object Q_NFORD_ID: TIntegerField
      FieldName = 'ORD_ID'
      Origin = 'NBFDADOS.NF.ORD_ID'
    end
    object Q_NFTRANS_ID: TIntegerField
      FieldName = 'TRANS_ID'
      Origin = 'NBFDADOS.NF.TRANS_ID'
    end
    object Q_NFNFI_DISCRIM: TStringField
      FieldName = 'NFI_DISCRIM'
      Origin = 'NBFDADOS.NF.NFI_DISCRIM'
      FixedChar = True
      Size = 70
    end
    object Q_NFNFI_LOAD: TStringField
      DisplayWidth = 15
      FieldName = 'NFI_LOAD'
      Origin = 'NBFDADOS.NF.NFI_LOAD'
      FixedChar = True
      Size = 15
    end
    object Q_NFNFI_SERIE: TStringField
      Alignment = taCenter
      FieldName = 'NFI_SERIE'
      Origin = 'NBFDADOS.NF.NFI_SERIE'
      FixedChar = True
      Size = 2
    end
    object Q_NFNFI_STATUS: TStringField
      FieldName = 'NFI_STATUS'
      Origin = 'NBFDADOS.NF.NFI_STATUS'
      FixedChar = True
      Size = 1
    end
    object Q_NFBLOQUEIO: TStringField
      FieldName = 'BLOQUEIO'
      Origin = 'NBFDADOS.NF.BLOQUEIO'
      FixedChar = True
      Size = 1
    end
    object Q_NFCHAVE_NFE: TStringField
      FieldName = 'CHAVE_NFE'
      Origin = 'NBFDADOS.NF.CHAVE_NFE'
      FixedChar = True
      Size = 50
    end
  end
  object DS_NF: TwwDataSource
    DataSet = Q_NF
    OnDataChange = DS_NFDataChange
    Left = 601
    Top = 464
  end
  object Q_TDOC: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    DataSource = FOS.DS_TDOC
    SQL.Strings = (
      'Select TDOC_EMIT,TDOC_DEST from TPDOC where'
      'TDOC_ID = :TDOC_ID ')
    ValidateWithMask = True
    Left = 360
    Top = 5
    ParamData = <
      item
        DataType = ftInteger
        Name = 'TDOC_ID'
        ParamType = ptUnknown
      end>
    object Q_TDOCTDOC_EMIT: TStringField
      FieldName = 'TDOC_EMIT'
      Origin = 'NBFDADOS.TPDOC.TDOC_EMIT'
      FixedChar = True
      Size = 1
    end
    object Q_TDOCTDOC_DEST: TStringField
      FieldName = 'TDOC_DEST'
      Origin = 'NBFDADOS.TPDOC.TDOC_DEST'
      FixedChar = True
      Size = 1
    end
  end
  object Q_CLIN: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select CLIN_RAZA,CLIN_ID from CLIENTENBF where'
      'CLIN_CONTRATO = '#39'R'#39
      'order by CLIN_RAZA ')
    ValidateWithMask = True
    Left = 568
    Top = 23
    object Q_CLINCLIN_RAZA: TStringField
      DisplayWidth = 50
      FieldName = 'CLIN_RAZA'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_RAZA'
      FixedChar = True
      Size = 50
    end
    object Q_CLINCLIN_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'CLIN_ID'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_ID'
      Visible = False
    end
  end
  object Q_CLIF: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    DataSource = FOS.DS_OS
    SQL.Strings = (
      'select A.*,B.CLIF_RAZA'
      '  from Cliente_NBFinal A,ClienteFINAL B'
      'where'
      'CLIN_ID = :CLIN_ID and'
      'B.CLIF_ID = A.CLIF_ID'
      'order by B.CLIF_RAZA'
      '')
    ValidateWithMask = True
    Left = 672
    Top = 361
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CLIN_ID'
        ParamType = ptUnknown
      end>
    object Q_CLIFCLIF_RAZA: TStringField
      DisplayLabel = 'Cliente Final'
      DisplayWidth = 50
      FieldName = 'CLIF_RAZA'
      Origin = 'NBFDADOS.ClienteFINAL.CLIF_RAZA'
      FixedChar = True
      Size = 50
    end
    object Q_CLIFNBFINAL_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'NBFINAL_ID'
      Origin = 'NBFDADOS.Cliente_NBFinal.NBFINAL_ID'
      Visible = False
    end
    object Q_CLIFCLIF_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'CLIF_ID'
      Origin = 'NBFDADOS.Cliente_NBFinal.CLIF_ID'
      Visible = False
    end
    object Q_CLIFCLIN_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'CLIN_ID'
      Origin = 'NBFDADOS.Cliente_NBFinal.CLIN_ID'
      Visible = False
    end
    object Q_CLIFNBFINAL_DT_INCL: TDateTimeField
      DisplayWidth = 18
      FieldName = 'NBFINAL_DT_INCL'
      Origin = 'NBFDADOS.Cliente_NBFinal.NBFINAL_DT_INCL'
      Visible = False
    end
    object Q_CLIFNBFINAL_COD_CLIN: TStringField
      FieldName = 'NBFINAL_COD_CLIN'
      Origin = 'NBFDADOS.Cliente_NBFinal.NBFINAL_COD_CLIN'
      FixedChar = True
      Size = 10
    end
  end
  object Q_CLINdest: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select CLIN_RAZA,CLIN_ID from CLIENTENBF where'
      'CLIN_CONTRATO = '#39'S'#39
      'order by CLIN_RAZA ')
    ValidateWithMask = True
    Left = 512
    Top = 48
    object Q_CLINdestCLIN_RAZA: TStringField
      DisplayWidth = 50
      FieldName = 'CLIN_RAZA'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_RAZA'
      FixedChar = True
      Size = 50
    end
    object Q_CLINdestCLIN_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'CLIN_ID'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_ID'
      Visible = False
    end
  end
  object Q_CLIFdest: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    DataSource = FOS.DS_OS
    SQL.Strings = (
      'select A.*,B.CLIF_RAZA,B.CLIF_ENDERECO, B.CLIF_CGCCPF AS CNPJCPF'
      '  from Cliente_NBFinal A,ClienteFINAL B'
      'where'
      'CLIN_ID = :CLIN_ID and'
      'B.CLIF_ID = A.CLIF_ID'
      'order by  B.CLIF_CGCCPF'
      ''
      '')
    ValidateWithMask = True
    Left = 456
    Top = 85
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CLIN_ID'
        ParamType = ptUnknown
      end>
    object Q_CLIFdestCLIF_RAZA: TStringField
      DisplayLabel = 'Cliente Final'
      DisplayWidth = 50
      FieldName = 'CLIF_RAZA'
      Origin = 'NBFDADOS.ClienteFINAL.CLIF_RAZA'
      FixedChar = True
      Size = 50
    end
    object Q_CLIFdestCNPJCPF: TStringField
      DisplayWidth = 15
      FieldName = 'CNPJCPF'
      Origin = 'NBFDADOS.ClienteFINAL.CLIF_CGCCPF'
      FixedChar = True
      Size = 15
    end
    object Q_CLIFdestCLIF_ENDERECO: TStringField
      DisplayWidth = 33
      FieldName = 'CLIF_ENDERECO'
      Origin = 'NBFDADOS.ClienteFINAL.CLIF_ENDERECO'
      FixedChar = True
      Size = 50
    end
    object Q_CLIFdestNBFINAL_COD_CLIN: TStringField
      DisplayWidth = 10
      FieldName = 'NBFINAL_COD_CLIN'
      Origin = 'NBFDADOS.Cliente_NBFinal.NBFINAL_COD_CLIN'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object Q_CLIFdestNBFINAL_ID: TAutoIncField
      FieldName = 'NBFINAL_ID'
      Origin = 'NBFDADOS.Cliente_NBFinal.NBFINAL_ID'
      Visible = False
    end
    object Q_CLIFdestCLIF_ID: TIntegerField
      FieldName = 'CLIF_ID'
      Origin = 'NBFDADOS.Cliente_NBFinal.CLIF_ID'
      Visible = False
    end
    object Q_CLIFdestCLIN_ID: TIntegerField
      FieldName = 'CLIN_ID'
      Origin = 'NBFDADOS.Cliente_NBFinal.CLIN_ID'
      Visible = False
    end
    object Q_CLIFdestNBFINAL_DT_INCL: TDateTimeField
      FieldName = 'NBFINAL_DT_INCL'
      Origin = 'NBFDADOS.Cliente_NBFinal.NBFINAL_DT_INCL'
      Visible = False
    end
  end
  object Q_CLIFINAL: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select CLIF_ID,CLIF_RAZA from CLIENTEFINAL '
      ' order by CLIF_raza')
    ValidateWithMask = True
    Left = 606
    Top = 104
    object Q_CLIFINALCLIF_RAZA: TStringField
      DisplayWidth = 50
      FieldName = 'CLIF_RAZA'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_RAZA'
      FixedChar = True
      Size = 50
    end
    object Q_CLIFINALCLIF_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'CLIF_ID'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_ID'
      Visible = False
    end
  end
  object Q_CLIF2: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    DataSource = FOS.DS_OS
    SQL.Strings = (
      
        'select A.*,B.CLIF_RAZA  from Cliente_NBFinal A,ClienteFINAL B wh' +
        'ere'
      'CLIN_ID = :CLIN_ID  and'
      'B.CLIF_ID = A.CLIF_ID'
      'order by A.NBFINAL_COD_CLIN'
      '')
    ValidateWithMask = True
    Left = 728
    Top = 445
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CLIN_ID'
        ParamType = ptUnknown
      end>
    object Q_CLIF2CLIF_RAZA: TStringField
      DisplayWidth = 50
      FieldName = 'CLIF_RAZA'
      Origin = 'NBFDADOS.ClienteFINAL.CLIF_RAZA'
      FixedChar = True
      Size = 50
    end
    object Q_CLIF2NBFINAL_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'NBFINAL_ID'
      Origin = 'NBFDADOS.Cliente_NBFinal.NBFINAL_ID'
      Visible = False
    end
    object Q_CLIF2CLIF_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'CLIF_ID'
      Origin = 'NBFDADOS.Cliente_NBFinal.CLIF_ID'
      Visible = False
    end
    object Q_CLIF2CLIN_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'CLIN_ID'
      Origin = 'NBFDADOS.Cliente_NBFinal.CLIN_ID'
      Visible = False
    end
    object Q_CLIF2NBFINAL_DT_INCL: TDateTimeField
      Alignment = taCenter
      DisplayWidth = 18
      FieldName = 'NBFINAL_DT_INCL'
      Origin = 'NBFDADOS.Cliente_NBFinal.NBFINAL_DT_INCL'
      Visible = False
    end
    object Q_CLIF2NBFINAL_COD_CLIN: TStringField
      FieldName = 'NBFINAL_COD_CLIN'
      Origin = 'NBFDADOS.Cliente_NBFinal.NBFINAL_COD_CLIN'
      FixedChar = True
      Size = 10
    end
  end
  object DS_CLIF2: TwwDataSource
    DataSet = Q_CLIF2
    Left = 144
  end
  object DS_CLIF: TwwDataSource
    DataSet = Q_CLIF
    Left = 72
  end
  object Q_UF: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select *  from UF order by UF_NOME'
      ''
      '')
    ValidateWithMask = True
    Left = 472
    Top = 51
    object Q_UFUF_NOME: TStringField
      DisplayLabel = 'Estado'
      DisplayWidth = 30
      FieldName = 'UF_NOME'
      Origin = 'NBFDADOS.UF.UF_NOME'
      FixedChar = True
      Size = 30
    end
    object Q_UFUF_SIGLA: TStringField
      DisplayWidth = 2
      FieldName = 'UF_SIGLA'
      Origin = 'NBFDADOS.UF.UF_SIGLA'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object Q_UFUF_ALIQUOTA: TFloatField
      DisplayWidth = 10
      FieldName = 'UF_ALIQUOTA'
      Origin = 'NBFDADOS.UF.UF_ALIQUOTA'
      Visible = False
    end
  end
  object Q_AUX: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    ValidateWithMask = True
    Left = 416
    Top = 52
  end
  object Q_CLIFdest2: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    DataSource = FOS.DS_OS
    SQL.Strings = (
      'select A.*,B.* from Cliente_NBFinal A,ClienteFINAL B where'
      'CLIN_ID = :CLIN_ID  and'
      'B.CLIF_ID = A.CLIF_ID'
      'order by A.NBFINAL_COD_CLIN'
      '')
    ValidateWithMask = True
    Left = 397
    Top = 64
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CLIN_ID'
        ParamType = ptUnknown
      end>
    object Q_CLIFdest2NBFINAL_COD_CLIN: TStringField
      DisplayWidth = 10
      FieldName = 'NBFINAL_COD_CLIN'
      Origin = 'NBFDADOS.Cliente_NBFinal.NBFINAL_COD_CLIN'
      FixedChar = True
      Size = 10
    end
    object Q_CLIFdest2CLIF_RAZA: TStringField
      DisplayWidth = 50
      FieldName = 'CLIF_RAZA'
      Origin = 'NBFDADOS.ClienteFINAL.CLIF_RAZA'
      FixedChar = True
      Size = 50
    end
    object Q_CLIFdest2CLIE_ENDERECO: TStringField
      DisplayWidth = 33
      FieldName = 'CLIE_ENDERECO'
      Origin = 'NBFDADOS.ClienteFINAL.CLIE_ENDERECO'
      FixedChar = True
      Size = 50
    end
    object Q_CLIFdest2NBFINAL_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'NBFINAL_ID'
      Origin = 'NBFDADOS.Cliente_NBFinal.NBFINAL_ID'
      Visible = False
    end
    object Q_CLIFdest2CLIF_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'CLIF_ID'
      Origin = 'NBFDADOS.Cliente_NBFinal.CLIF_ID'
      Visible = False
    end
    object Q_CLIFdest2CLIN_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'CLIN_ID'
      Origin = 'NBFDADOS.Cliente_NBFinal.CLIN_ID'
      Visible = False
    end
    object Q_CLIFdest2NBFINAL_DT_INCL: TDateTimeField
      DisplayWidth = 18
      FieldName = 'NBFINAL_DT_INCL'
      Origin = 'NBFDADOS.Cliente_NBFinal.NBFINAL_DT_INCL'
      Visible = False
    end
    object Q_CLIFdest2CLIF_ID_1: TAutoIncField
      FieldName = 'CLIF_ID_1'
      Origin = 'NBFDADOS.ClienteFINAL.CLIF_ID'
      Visible = False
    end
    object Q_CLIFdest2CLIF_PESSOA: TStringField
      FieldName = 'CLIF_PESSOA'
      Origin = 'NBFDADOS.ClienteFINAL.CLIF_PESSOA'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_CLIFdest2CLIF_NOME: TStringField
      FieldName = 'CLIF_NOME'
      Origin = 'NBFDADOS.ClienteFINAL.CLIF_NOME'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object Q_CLIFdest2CLIF_CGCCPF: TStringField
      FieldName = 'CLIF_CGCCPF'
      Origin = 'NBFDADOS.ClienteFINAL.CLIF_CGCCPF'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object Q_CLIFdest2CLIF_INSCRG: TStringField
      FieldName = 'CLIF_INSCRG'
      Origin = 'NBFDADOS.ClienteFINAL.CLIF_INSCRG'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object Q_CLIFdest2CLIF_ENDERECO: TStringField
      FieldName = 'CLIF_ENDERECO'
      Origin = 'NBFDADOS.ClienteFINAL.CLIF_ENDERECO'
      Visible = False
      FixedChar = True
      Size = 50
    end
    object Q_CLIFdest2CLIF_ENDERECO_COMPL: TStringField
      FieldName = 'CLIF_ENDERECO_COMPL'
      Origin = 'NBFDADOS.ClienteFINAL.CLIF_ENDERECO_COMPL'
      Visible = False
      FixedChar = True
    end
    object Q_CLIFdest2CLIF_ENDERECO_BAIRRO: TStringField
      FieldName = 'CLIF_ENDERECO_BAIRRO'
      Origin = 'NBFDADOS.ClienteFINAL.CLIF_ENDERECO_BAIRRO'
      Visible = False
      FixedChar = True
      Size = 40
    end
    object Q_CLIFdest2CLIF_MUNICIPIO: TStringField
      FieldName = 'CLIF_MUNICIPIO'
      Origin = 'NBFDADOS.ClienteFINAL.CLIF_MUNICIPIO'
      Visible = False
      FixedChar = True
      Size = 40
    end
    object Q_CLIFdest2UF_SIGLA: TStringField
      FieldName = 'UF_SIGLA'
      Origin = 'NBFDADOS.ClienteFINAL.UF_SIGLA'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object Q_CLIFdest2CLIF_CEP: TStringField
      FieldName = 'CLIF_CEP'
      Origin = 'NBFDADOS.ClienteFINAL.CLIF_CEP'
      Visible = False
      FixedChar = True
      Size = 8
    end
    object Q_CLIFdest2CLIF_TEL1: TStringField
      FieldName = 'CLIF_TEL1'
      Origin = 'NBFDADOS.ClienteFINAL.CLIF_TEL1'
      Visible = False
      FixedChar = True
      Size = 11
    end
    object Q_CLIFdest2CLIF_TEL2: TStringField
      FieldName = 'CLIF_TEL2'
      Origin = 'NBFDADOS.ClienteFINAL.CLIF_TEL2'
      Visible = False
      FixedChar = True
      Size = 11
    end
    object Q_CLIFdest2CLIF_FAX: TStringField
      FieldName = 'CLIF_FAX'
      Origin = 'NBFDADOS.ClienteFINAL.CLIF_FAX'
      Visible = False
      FixedChar = True
      Size = 11
    end
    object Q_CLIFdest2CLIF_EMAIL: TStringField
      FieldName = 'CLIF_EMAIL'
      Origin = 'NBFDADOS.ClienteFINAL.CLIF_EMAIL'
      Visible = False
      FixedChar = True
      Size = 60
    end
    object Q_CLIFdest2CLIF_CONTATO: TStringField
      FieldName = 'CLIF_CONTATO'
      Origin = 'NBFDADOS.ClienteFINAL.CLIF_CONTATO'
      Visible = False
      FixedChar = True
      Size = 50
    end
    object Q_CLIFdest2MUN_ID: TIntegerField
      FieldName = 'MUN_ID'
      Origin = 'NBFDADOS.ClienteFINAL.MUN_ID'
      Visible = False
    end
    object Q_CLIFdest2CLIF_MUNICIPIO2: TStringField
      FieldName = 'CLIF_MUNICIPIO2'
      Origin = 'NBFDADOS.ClienteFINAL.CLIF_MUNICIPIO2'
      Visible = False
      FixedChar = True
      Size = 40
    end
    object Q_CLIFdest2CLIF_CARGAPALLET: TStringField
      FieldName = 'CLIF_CARGAPALLET'
      Origin = 'NBFDADOS.ClienteFINAL.CLIF_CARGAPALLET'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_CLIFdest2CLIE_ENDERECO_COMPL: TStringField
      FieldName = 'CLIE_ENDERECO_COMPL'
      Origin = 'NBFDADOS.ClienteFINAL.CLIE_ENDERECO_COMPL'
      Visible = False
      FixedChar = True
    end
    object Q_CLIFdest2CLIE_ENDERECO_BAIRRO: TStringField
      FieldName = 'CLIE_ENDERECO_BAIRRO'
      Origin = 'NBFDADOS.ClienteFINAL.CLIE_ENDERECO_BAIRRO'
      Visible = False
      FixedChar = True
      Size = 40
    end
    object Q_CLIFdest2CLIE_MUNICIPIO: TStringField
      FieldName = 'CLIE_MUNICIPIO'
      Origin = 'NBFDADOS.ClienteFINAL.CLIE_MUNICIPIO'
      Visible = False
      FixedChar = True
      Size = 40
    end
    object Q_CLIFdest2CLIE_MUN_ID: TIntegerField
      FieldName = 'CLIE_MUN_ID'
      Origin = 'NBFDADOS.ClienteFINAL.CLIE_MUN_ID'
      Visible = False
    end
    object Q_CLIFdest2CLIE_UF_SIGLA: TStringField
      FieldName = 'CLIE_UF_SIGLA'
      Origin = 'NBFDADOS.ClienteFINAL.CLIE_UF_SIGLA'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object Q_CLIFdest2CLIE_CEP: TStringField
      FieldName = 'CLIE_CEP'
      Origin = 'NBFDADOS.ClienteFINAL.CLIE_CEP'
      Visible = False
      FixedChar = True
      Size = 8
    end
  end
  object DS_CLIFdest: TwwDataSource
    DataSet = Q_CLIFdest
    Left = 200
    Top = 16
  end
  object DS_CLIFdest2: TwwDataSource
    DataSet = Q_CLIFdest2
    Left = 288
    Top = 432
  end
  object Q_CEP: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    ValidateWithMask = True
    Left = 304
    Top = 41
  end
  object Q_PAR: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    DataSource = FOS.DS_CTT
    SQL.Strings = (
      'Select *  from PARAMETRO where PAR_ID =:PAR_ID'
      ''
      '')
    ValidateWithMask = True
    Left = 680
    Top = 44
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PAR_ID'
        ParamType = ptUnknown
      end>
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
    object Q_PARMUN_ID: TIntegerField
      FieldName = 'MUN_ID'
      Origin = 'NBFDADOS.PARAMETRO.MUN_ID'
    end
    object Q_PARPAR_ID: TAutoIncField
      FieldName = 'PAR_ID'
      Origin = 'NBFDADOS.PARAMETRO.PAR_ID'
    end
    object Q_PARULT_NF: TIntegerField
      FieldName = 'ULT_NF'
      Origin = 'NBFDADOS.PARAMETRO.ULT_NF'
    end
  end
  object DS_PAR: TwwDataSource
    DataSet = Q_PAR
    Left = 624
    Top = 48
  end
  object Q_INF: TwwQuery
    CachedUpdates = True
    BeforeEdit = Q_INFBeforeEdit
    BeforePost = Q_INFBeforePost
    AfterPost = Q_INFAfterPost
    BeforeDelete = Q_INFBeforeDelete
    AfterDelete = Q_INFAfterDelete
    BeforeScroll = Q_INFBeforeScroll
    OnNewRecord = Q_INFNewRecord
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    DataSource = DS_NF
    RequestLive = True
    SQL.Strings = (
      'SELECT '
      #9'A.* , B.PRO_COD AS PRODUTOCODIGO'
      'FROM NF_ITENS A LEFT OUTER JOIN PRODUTO B'
      'ON A.PRO_ID = B.PRO_ID'
      'WHERE A.NFI_CODI = :NFI_CODI'
      'order by INF_CODI')
    UpdateObject = UPD_INF
    ControlType.Strings = (
      'PRO_COD;CustomEdit;DBLC_INF_PROD'
      'PRODUTOCODIGO;CustomEdit;DBLC_INF_PROD')
    ValidateWithMask = True
    Left = 312
    Top = 157
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'NFI_CODI'
        ParamType = ptUnknown
      end>
    object Q_INFINF_ITEM: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Item'
      DisplayWidth = 3
      FieldName = 'INF_ITEM'
      Origin = 'NBFDADOS.NF_ITENS.INF_ITEM'
    end
    object Q_INFPRO_cod: TStringField
      DisplayLabel = 'C�digo'
      DisplayWidth = 15
      FieldName = 'PRO_COD'
      Origin = 'NBFDADOS.NF_ITENS.PRO_COD'
      FixedChar = True
      Size = 16
    end
    object Q_INFPRO_DESC: TStringField
      DisplayLabel = 'Descri��o'
      DisplayWidth = 40
      FieldName = 'PRO_DESC'
      Origin = 'NBFDADOS.NF_ITENS.PRO_ID'
      FixedChar = True
      Size = 60
    end
    object Q_INFINF_QTDE: TFloatField
      DisplayLabel = ' Quantidade UV'
      DisplayWidth = 15
      FieldName = 'INF_QTDE'
      Origin = 'NBFDADOS.NF_ITENS.PRO_DESC'
      DisplayFormat = '0.000'
      EditFormat = '0.000'
    end
    object Q_INFESTQ_LOTE1: TStringField
      DisplayLabel = 'Lote 1'
      DisplayWidth = 10
      FieldName = 'ESTQ_LOTE1'
      Origin = 'NBFDADOS.NF_ITENS.INF_CODI'
      FixedChar = True
    end
    object Q_INFESTQ_LOTE1_QTDE: TFloatField
      DisplayLabel = 'Qtde.Lote 1'
      DisplayWidth = 15
      FieldName = 'ESTQ_LOTE1_QTDE'
      Origin = 'NBFDADOS.NF_ITENS.INF_CODI'
      DisplayFormat = '0.000'
      EditFormat = '0.000'
    end
    object Q_INFESTQ_LOTE2: TStringField
      DisplayLabel = 'Lote 2'
      DisplayWidth = 10
      FieldName = 'ESTQ_LOTE2'
      Origin = 'NBFDADOS.NF_ITENS.INF_CODI'
      FixedChar = True
    end
    object Q_INFESTQ_LOTE2_QTDE: TFloatField
      DisplayLabel = 'Qtde.Lote 2'
      DisplayWidth = 15
      FieldName = 'ESTQ_LOTE2_QTDE'
      Origin = 'NBFDADOS.NF_ITENS.INF_CODI'
      DisplayFormat = '0.000'
      EditFormat = '0.000'
    end
    object Q_INFINF_PUNI: TFloatField
      DisplayLabel = 'Pre�o Unit.'
      DisplayWidth = 10
      FieldName = 'INF_PUNI'
      Origin = 'NBFDADOS.NF_ITENS.INF_QTDE'
      DisplayFormat = '###,###,##0.0000'
      EditFormat = '###,###,##0.0000'
    end
    object Q_INFINF_AIPI: TFloatField
      DisplayLabel = '% Ipi'
      DisplayWidth = 5
      FieldName = 'INF_AIPI'
      Origin = 'NBFDADOS.NF_ITENS.INF_PUNI'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_INFINF_VIPI: TFloatField
      DisplayLabel = '   Valor IPI'
      DisplayWidth = 9
      FieldName = 'INF_VIPI'
      Origin = 'NBFDADOS.NF_ITENS.INF_AIPI'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_INFINF_TOTA: TFloatField
      DisplayLabel = '  Valor Total'
      DisplayWidth = 11
      FieldName = 'INF_TOTA'
      Origin = 'NBFDADOS.NF_ITENS.INF_VIPI'
      DisplayFormat = '###,###,##0.0000'
      EditFormat = '###,###,##0.0000'
    end
    object Q_INFUVEN_DESC: TStringField
      DisplayLabel = 'UV'
      DisplayWidth = 10
      FieldKind = fkLookup
      FieldName = 'UVEN_DESC'
      LookupDataSet = Q_UNIDVEND
      LookupKeyFields = 'UVEN_ID'
      LookupResultField = 'UVEN_NOME'
      KeyFields = 'UVEN_ID'
      Size = 40
      Lookup = True
    end
    object Q_INFINF_AICM: TFloatField
      DisplayLabel = 'ICMS %'
      DisplayWidth = 7
      FieldName = 'INF_AICM'
      Origin = 'NBFDADOS.NF_ITENS.INF_PESO'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_INFPRO_ID: TIntegerField
      FieldName = 'PRO_ID'
      Origin = 'NBFDADOS.NF_ITENS.PRO_ID'
      Visible = False
    end
    object Q_INFINF_PESO: TFloatField
      DisplayLabel = 'Peso'
      DisplayWidth = 9
      FieldName = 'INF_PESO'
      Origin = 'NBFDADOS.NF_ITENS.INF_TOTA'
      Visible = False
      DisplayFormat = '###,###,##0.0'
      EditFormat = '###,###,##0.0'
    end
    object Q_INFINF_VICM: TFloatField
      DisplayLabel = 'Valor ICMS'
      DisplayWidth = 10
      FieldName = 'INF_VICM'
      Origin = 'NBFDADOS.NF_ITENS.INF_AICM'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_INFINF_CODI: TAutoIncField
      FieldName = 'INF_CODI'
      Origin = 'NBFDADOS.NF_ITENS.INF_CODI'
      Visible = False
    end
    object Q_INFNFI_CODI: TIntegerField
      FieldName = 'NFI_CODI'
      Origin = 'NBFDADOS.NF_ITENS.NFI_CODI'
      Visible = False
    end
    object Q_INFUVEN_ID: TIntegerField
      FieldName = 'UVEN_ID'
      Origin = 'NBFDADOS.NF_ITENS.INF_VICM'
      Visible = False
    end
    object Q_INFINF_VOL: TFloatField
      FieldName = 'INF_VOL'
      Origin = 'NBFDADOS.NF_ITENS.INF_VOL'
      Visible = False
    end
    object Q_INFINF_PESOLIQ: TFloatField
      FieldName = 'INF_PESOLIQ'
      Origin = 'NBFDADOS.NF_ITENS.INF_PESOLIQ'
      Visible = False
      DisplayFormat = '###,###,##0.0'
      EditFormat = '###,###,##0.0'
    end
    object Q_INFINF_BICM: TFloatField
      FieldName = 'INF_BICM'
      Origin = 'NBFDADOS.NF_ITENS.INF_BICM'
      Visible = False
    end
    object Q_INFINF_QTDERETORNADA: TFloatField
      FieldName = 'INF_QTDERETORNADA'
      Origin = 'NBFDADOS.NF_ITENS.INF_QTDERETORNADA'
      Visible = False
    end
    object Q_INFINF_CST: TStringField
      FieldName = 'INF_CST'
      Origin = 'NBFDADOS.NF_ITENS.INF_CST'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object Q_INFPRODUTOCODIGO: TStringField
      FieldName = 'PRODUTOCODIGO'
      Origin = 'NBFDADOS.PRODUTO.PRO_COD'
      Visible = False
      FixedChar = True
      Size = 16
    end
  end
  object DS_INF: TwwDataSource
    DataSet = Q_INF
    Left = 536
    Top = 96
  end
  object Q_PROD: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    DataSource = FOS.DS_OS
    SQL.Strings = (
      'select * from PRODUTO where'
      'CLIN_ID = :CLIN_ID and PRO_DESCONTINUA = '#39'N'#39
      'order by PRO_DESC'
      '')
    ValidateWithMask = True
    Left = 480
    Top = 464
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CLIN_ID'
        ParamType = ptUnknown
      end>
    object Q_PRODPRO_COD: TStringField
      DisplayLabel = 'C�digo'
      DisplayWidth = 15
      FieldName = 'PRO_COD'
      Origin = 'NBFDADOS.PRODUTO.PRO_COD'
      FixedChar = True
      Size = 16
    end
    object Q_PRODPRO_DESC: TStringField
      DisplayWidth = 45
      FieldName = 'PRO_DESC'
      Origin = 'NBFDADOS.PRODUTO.PRO_DESC'
      FixedChar = True
      Size = 40
    end
    object Q_PRODPRO_PESO_LIQ: TFloatField
      DisplayWidth = 10
      FieldName = 'PRO_PESO_LIQ'
      Origin = 'NBFDADOS.PRODUTO.PRO_PESO_LIQ'
      Visible = False
    end
    object Q_PRODPRO_QTDE_PALLET: TIntegerField
      DisplayLabel = 'Qtde.PALLET'
      DisplayWidth = 6
      FieldName = 'PRO_QTDE_PALLET'
      Origin = 'NBFDADOS.PRODUTO.PRO_QTDE_PALLET'
      Visible = False
    end
    object Q_PRODPRO_PESO: TFloatField
      DisplayLabel = 'Peso'
      DisplayWidth = 6
      FieldName = 'PRO_PESO'
      Origin = 'NBFDADOS.PRODUTO.PRO_PESO'
      Visible = False
    end
    object Q_PRODPRO_VOLUME: TFloatField
      DisplayLabel = 'Volume'
      DisplayWidth = 10
      FieldName = 'PRO_VOLUME'
      Origin = 'NBFDADOS.PRODUTO.PRO_VOLUME'
      Visible = False
    end
    object Q_PRODPRO_VOLUME_PALLET: TFloatField
      DisplayLabel = 'Volume PALLET'
      DisplayWidth = 10
      FieldName = 'PRO_VOLUME_PALLET'
      Origin = 'NBFDADOS.PRODUTO.PRO_VOLUME_PALLET'
      Visible = False
    end
    object Q_PRODPRO_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'PRO_ID'
      Origin = 'NBFDADOS.PRODUTO.PRO_ID'
      Visible = False
    end
    object Q_PRODCLIN_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'CLIN_ID'
      Origin = 'NBFDADOS.PRODUTO.CLIN_ID'
      Visible = False
    end
    object Q_PRODTPRO_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'TPRO_ID'
      Origin = 'NBFDADOS.PRODUTO.TPRO_ID'
      Visible = False
    end
    object Q_PRODUVEN_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'UVEN_ID'
      Origin = 'NBFDADOS.PRODUTO.UVEN_ID'
      Visible = False
    end
  end
  object DS_PROD: TwwDataSource
    DataSet = Q_PROD
    Left = 432
  end
  object Q_UNIDVEND: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select * from UNIDVENDA  '
      'order by UVEN_NOME'
      ''
      '')
    ValidateWithMask = True
    Left = 256
    Top = 56
    object Q_UNIDVENDUVEN_NOME: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 40
      FieldName = 'UVEN_NOME'
      Origin = 'NBFDADOS.UNIDVENDA.UVEN_NOME'
      FixedChar = True
      Size = 40
    end
    object Q_UNIDVENDUVEN_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'UVEN_ID'
      Origin = 'NBFDADOS.UNIDVENDA.UVEN_ID'
      Visible = False
    end
  end
  object UPD_INF: TUpdateSQL
    ModifySQL.Strings = (
      'update NF_ITENS'
      'set'
      '  INF_ITEM = :INF_ITEM,'
      '  NFI_CODI = :NFI_CODI,'
      '  PRO_ID = :PRO_ID,'
      '  PRO_COD = :PRO_COD,'
      '  PRO_DESC = :PRO_DESC,'
      '  INF_QTDE = :INF_QTDE,'
      '  INF_PUNI = :INF_PUNI,'
      '  INF_AIPI = :INF_AIPI,'
      '  INF_VIPI = :INF_VIPI,'
      '  INF_TOTA = :INF_TOTA,'
      '  INF_PESOLIQ = :INF_PESOLIQ,'
      '  INF_PESO = :INF_PESO,'
      '  INF_VOL = :INF_VOL,'
      '  INF_AICM = :INF_AICM,'
      '  INF_BICM = :INF_BICM,'
      '  INF_VICM = :INF_VICM,'
      '  UVEN_ID = :UVEN_ID,'
      '  INF_QTDERETORNADA = :INF_QTDERETORNADA,'
      ''
      '  ESTQ_LOTE1 = :ESTQ_LOTE1,'
      '  ESTQ_LOTE1_QTDE = :ESTQ_LOTE1_QTDE,'
      '  ESTQ_LOTE2 = :ESTQ_LOTE2,'
      '  ESTQ_LOTE2_QTDE = :ESTQ_LOTE2_QTDE,'
      '  INF_CST = :INF_CST'
      'where'
      '  INF_CODI = :OLD_INF_CODI')
    InsertSQL.Strings = (
      'insert into NF_ITENS'
      
        '  (INF_ITEM, NFI_CODI, PRO_ID, PRO_COD, PRO_DESC, INF_QTDE, INF_' +
        'PUNI, '
      'INF_AIPI, '
      
        '   INF_VIPI, INF_TOTA, INF_PESOLIQ, INF_PESO, INF_VOL, INF_AICM,' +
        ' INF_BICM, '
      '   INF_VICM, UVEN_ID, INF_QTDERETORNADA,  '
      '   ESTQ_LOTE1, ESTQ_LOTE1_QTDE, ESTQ_LOTE2, ESTQ_LOTE2_QTDE,'
      ' INF_CST)'
      'values'
      
        '  (:INF_ITEM, :NFI_CODI, :PRO_ID, :PRO_COD, :PRO_DESC, :INF_QTDE' +
        ', '
      ':INF_PUNI, '
      
        '   :INF_AIPI, :INF_VIPI, :INF_TOTA, :INF_PESOLIQ, :INF_PESO, :IN' +
        'F_VOL, '
      
        '   :INF_AICM, :INF_BICM, :INF_VICM, :UVEN_ID, :INF_QTDERETORNADA' +
        ', '
      ' :ESTQ_LOTE1, :ESTQ_LOTE1_QTDE, '
      ':ESTQ_LOTE2, '
      '   :ESTQ_LOTE2_QTDE, :INF_CST)')
    DeleteSQL.Strings = (
      'delete from NF_ITENS'
      'where'
      '  INF_CODI = :OLD_INF_CODI')
    Left = 64
    Top = 416
  end
  object Q_FAT: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    DataSource = DS_NF
    SQL.Strings = (
      'select * from FATURAMENTO where '
      'TDOC_ID = :TDOC_ID order by CFA_COdi')
    PictureMasks.Strings = (
      'CFA_CODI'#9'#[#][#]'#9'T'#9'T')
    ValidateWithMask = True
    Left = 63
    Top = 296
    ParamData = <
      item
        DataType = ftInteger
        Name = 'TDOC_ID'
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
      DisplayLabel = 'Descri��o'
      DisplayWidth = 40
      FieldName = 'CFA_DCFO'
      Origin = 'NBFDADOS.FATURAMENTO.CFA_DCFO'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object Q_FATCFA_DCCF: TStringField
      DisplayLabel = 'Descri��o Complementar'
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
  object DS_FAT: TwwDataSource
    DataSet = Q_FAT
    Left = 439
    Top = 160
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
      '  NFI_NFRS_REJEITADA = :NFI_NFRS_REJEITADA,'
      '  NFI_RETORNADA = :NFI_RETORNADA,'
      '  NFI_GEROUNFE = :NFI_GEROUNFE,'
      '  NFI_REDESPACHO = :NFI_REDESPACHO,'
      '  TRANS_ID = :TRANS_ID,'
      '  NFI_LOAD = :NFI_LOAD,'
      '  NFI_SERIE = :NFI_SERIE,'
      '  NFI_STATUS = :NFI_STATUS,'
      '  BLOQUEIO = :BLOQUEIO,'
      '  CHAVE_NFE = :CHAVE_NFE'
      'where'
      '  NFI_CODI = :OLD_NFI_CODI')
    InsertSQL.Strings = (
      'insert into NF'
      
        '  (NFI_NUMERO, TDOC_ID, NFI_EMIT_ORIG, NFI_EMIT_CLI, NFI_DEST_OR' +
        'IG, '
      'NFI_DEST_CLI, '
      '   NFI_DEST_NOME, NFI_DEST_RAZA, NFI_DEST_ENDERECO, '
      'NFI_DEST_COMPL, NFI_DEST_BAIRRO, '
      '   NFI_DEST_UF_SIGLA, NFI_DEST_CEP, NFI_DEST_TEL, NFI_DEST_FAX, '
      'NFI_DEST_CGC, '
      '   NFI_DEST_INSCRG, NFI_DEST_INSCTRB, NFI_DEST_PESS, NFI_VDES, '
      'NFI_VFRE, '
      
        '   NFI_VSEG, NFI_BIPI, NFI_VIPI, NFI_BICM, NFI_VICM, NFI_VMER, N' +
        'FI_TOTA, '
      
        '   NFI_DSAI, NFI_HSAI, NFI_TRAN, NFI_PLAC, NFI_UF_SIGLA, NFI_MAR' +
        'C, '
      'NFI_QTDE, '
      
        '   NFI_ESPE, NFI_PLIQ, NFI_PBRU, NFI_VOL, NFI_TFRE, NFI_DEMI, CF' +
        'A_ID, '
      'OS_ID, '
      '   MUN_ID, NFI_MARCADOR, NFI_DTENTREGA, MANI_ID, MANI_ORDEM, '
      'NFI_MOVESTQ, '
      '   NFI_TRANS, TEXTO_LIVRE, NFI_DTENTREGA_FIM, NFI_ENTREGA, '
      'NFI_COBRAR, '
      '   NFI_CLONE, NFI_NFRS_REJEITADA, NFI_RETORNADA, NFI_GEROUNFE, '
      'NFI_REDESPACHO, '
      
        '   TRANS_ID, NFI_LOAD, NFI_SERIE, NFI_STATUS, BLOQUEIO, CHAVE_NF' +
        'E)'
      'values'
      
        '  (:NFI_NUMERO, :TDOC_ID, :NFI_EMIT_ORIG, :NFI_EMIT_CLI, :NFI_DE' +
        'ST_ORIG, '
      '   :NFI_DEST_CLI, :NFI_DEST_NOME, :NFI_DEST_RAZA, '
      ':NFI_DEST_ENDERECO, '
      ':NFI_DEST_COMPL, '
      
        '   :NFI_DEST_BAIRRO, :NFI_DEST_UF_SIGLA, :NFI_DEST_CEP, :NFI_DES' +
        'T_TEL, '
      
        '   :NFI_DEST_FAX, :NFI_DEST_CGC, :NFI_DEST_INSCRG, :NFI_DEST_INS' +
        'CTRB, '
      ':NFI_DEST_PESS, '
      
        '   :NFI_VDES, :NFI_VFRE, :NFI_VSEG, :NFI_BIPI, :NFI_VIPI, :NFI_B' +
        'ICM, :NFI_VICM, '
      
        '   :NFI_VMER, :NFI_TOTA, :NFI_DSAI, :NFI_HSAI, :NFI_TRAN, :NFI_P' +
        'LAC, '
      ':NFI_UF_SIGLA, '
      
        '   :NFI_MARC, :NFI_QTDE, :NFI_ESPE, :NFI_PLIQ, :NFI_PBRU, :NFI_V' +
        'OL, '
      ':NFI_TFRE, '
      
        '   :NFI_DEMI, :CFA_ID, :OS_ID, :MUN_ID, :NFI_MARCADOR, :NFI_DTEN' +
        'TREGA, '
      
        '   :MANI_ID, :MANI_ORDEM, :NFI_MOVESTQ, :NFI_TRANS, :TEXTO_LIVRE' +
        ', '
      ':NFI_DTENTREGA_FIM, '
      '   :NFI_ENTREGA, :NFI_COBRAR, :NFI_CLONE, :NFI_NFRS_REJEITADA, '
      ':NFI_RETORNADA, '
      
        '   :NFI_GEROUNFE, :NFI_REDESPACHO, :TRANS_ID, :NFI_LOAD, :NFI_SE' +
        'RIE, '
      ':NFI_STATUS, :BLOQUEIO, :CHAVE_NFE)')
    DeleteSQL.Strings = (
      'delete from NF'
      'where'
      '  NFI_CODI = :OLD_NFI_CODI')
    Left = 556
    Top = 425
  end
  object Q_MUNI: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select * from MUNICIPIO order by MUN_NOME')
    ValidateWithMask = True
    Left = 728
    Top = 374
    object Q_MUNIMUN_NOME: TStringField
      DisplayWidth = 40
      FieldName = 'MUN_NOME'
      Origin = 'NBFDADOS.MUNICIPIO.MUN_NOME'
      FixedChar = True
      Size = 40
    end
    object Q_MUNIDIPAM: TStringField
      DisplayWidth = 10
      FieldName = 'DIPAM'
      Origin = 'NBFDADOS.MUNICIPIO.DIPAM'
      FixedChar = True
      Size = 10
    end
    object Q_MUNIMUN_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'MUN_ID'
      Origin = 'NBFDADOS.MUNICIPIO.MUN_ID'
      Visible = False
    end
    object Q_MUNIUF_SIGLA: TStringField
      FieldName = 'UF_SIGLA'
      Origin = 'NBFDADOS.MUNICIPIO.UF_SIGLA'
      FixedChar = True
      Size = 2
    end
  end
  object DS_MUNI: TwwDataSource
    DataSet = Q_MUNI
    Left = 608
    Top = 390
  end
  object Q_AUX2: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    ValidateWithMask = True
    Left = 352
    Top = 477
  end
  object STP_NFExNFR: TwwStoredProc
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    StoredProcName = 'dbo.STP_NFE_X_NFR'
    ValidateWithMask = True
    Left = 390
    Top = 46
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Result'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = '@OS'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@NFI_EMIT_CLI'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@NFI_DEST_CLI'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@NFI_DEST_NOME'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@NFI_DEST_RAZA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@NFI_DEST_ENDERECO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@NFI_DEST_COMPL'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@NFI_DEST_BAIRRO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@NFI_DEST_UF_SIGLA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@NFI_DEST_CEP'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@NFI_DEST_TEL'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@NFI_DEST_FAX'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@NFI_DEST_CGC'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@NFI_DEST_INSCRG'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@NFI_DEST_PESS'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@MUN_ID'
        ParamType = ptInput
      end>
  end
  object STP_NFRCOT: TwwStoredProc
    ObjectView = True
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    StoredProcName = 'dbo.STP_NF_TERCEIRo'
    ValidateWithMask = True
    Left = 487
    Top = 123
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Result'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = '@NFI_CODI'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@CFA_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@CLIN_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@NFI_CODINOVO'
        ParamType = ptOutput
      end>
  end
  object Q_TRANS2: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'select TRANS_ID,TRANS_FANTASIA,MUN_ID,TRANS_RAZA from'
      'TRANSPORTADORA'
      'where    TRANS_FLAG = '#39'S'#39
      'and      TRANS_REDES = '#39'S'#39
      'order by TRANS_RAZA'
      ''
      ' '
      ''
      '')
    ValidateWithMask = True
    Left = 411
    Top = 450
    object Q_TRANS2TRANS_FANTASIA: TStringField
      DisplayWidth = 40
      FieldName = 'TRANS_FANTASIA'
      Origin = 'NBFDADOS.TRANSPORTADORA.TRANS_FANTASIA'
      FixedChar = True
      Size = 40
    end
    object Q_TRANS2TRANS_ID: TAutoIncField
      FieldName = 'TRANS_ID'
      Origin = 'NBFDADOS.TRANSPORTADORA.TRANS_ID'
      Visible = False
    end
    object Q_TRANS2MUN_ID: TIntegerField
      FieldName = 'MUN_ID'
      Origin = 'NBFDADOS.TRANSPORTADORA.MUN_ID'
    end
    object Q_TRANS2TRANS_RAZA: TStringField
      FieldName = 'TRANS_RAZA'
      Origin = 'NBFDADOS.TRANSPORTADORA.TRANS_RAZA'
      FixedChar = True
      Size = 60
    end
  end
  object T_ACEN: TwwTable
    DatabaseName = 'NBF'
    TableName = 'Acentuacao.DB'
    SyncSQLByRange = True
    NarrowSearch = False
    ValidateWithMask = True
    Left = 256
    Top = 360
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
  object STP_NF: TwwStoredProc
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    StoredProcName = 'dbo.STP_CALCNOTA'
    ValidateWithMask = True
    Left = 510
    Top = 44
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Result'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = '@NF'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@CFO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@CLIN_ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@GERATPROD'
        ParamType = ptInput
      end>
  end
  object Q_NF55: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    DataSource = FOS.DS_OS
    SQL.Strings = (
      'Select '
      'A.NFI_CODI,'
      'A.NFI_EMIT_CLi,'
      'A.NFI_DEST_CLI,'
      'A.NFI_ENTREGA,'
      'A.NFI_DTENTREGA_FIM,'
      'A.NFI_COBRAR, A.NFI_DEST_RAZA,'
      'A.NFI_NUMERO,A.OS_ID,A.NFI_REDESPACHO,'
      'B.CLIN_RAZA'
      'from NF A,CLIENTENBF B'
      'where A.NFI_EMIT_CLi = B.CLIN_ID and A.OS_ID = :OS_ID'
      'and A.TDOC_ID <> 15  order by'
      'A.NFI_NUMERO '
      ''
      ''
      '')
    ControlType.Strings = (
      'NFI_ENTREGA;CustomEdit;wwDBComboBox2'
      'NFI_COBRAR;CustomEdit;wwDBComboBox3'
      'MANI_ENT_COL;CustomEdit;wwDBComboBox4')
    ValidateWithMask = True
    Left = 62
    Top = 169
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'OS_ID'
        ParamType = ptUnknown
      end>
    object Q_NF55NFI_CODI: TAutoIncField
      FieldName = 'NFI_CODI'
    end
    object Q_NF55NFI_EMIT_CLi: TIntegerField
      FieldName = 'NFI_EMIT_CLi'
    end
    object Q_NF55NFI_DEST_CLI: TIntegerField
      FieldName = 'NFI_DEST_CLI'
    end
    object Q_NF55NFI_ENTREGA: TStringField
      FieldName = 'NFI_ENTREGA'
      FixedChar = True
      Size = 1
    end
    object Q_NF55NFI_DTENTREGA_FIM: TDateTimeField
      FieldName = 'NFI_DTENTREGA_FIM'
    end
    object Q_NF55NFI_COBRAR: TStringField
      FieldName = 'NFI_COBRAR'
      FixedChar = True
      Size = 1
    end
    object Q_NF55NFI_DEST_RAZA: TStringField
      FieldName = 'NFI_DEST_RAZA'
      FixedChar = True
      Size = 50
    end
    object Q_NF55NFI_NUMERO: TStringField
      FieldName = 'NFI_NUMERO'
      FixedChar = True
      Size = 10
    end
    object Q_NF55OS_ID: TIntegerField
      FieldName = 'OS_ID'
    end
    object Q_NF55NFI_REDESPACHO: TStringField
      FieldName = 'NFI_REDESPACHO'
      FixedChar = True
      Size = 1
    end
    object Q_NF55CLIN_RAZA: TStringField
      FieldName = 'CLIN_RAZA'
      FixedChar = True
      Size = 50
    end
  end
  object wwSearchDialog1: TwwSearchDialog
    Selected.Strings = (
      'NFI_NUMERO'#9'10'#9'NF N�'#9'F')
    GridTitleAlignment = taCenter
    GridColor = clAqua
    GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
    SearchTable = Q_NF55
    Caption = 'Pesquisa de Manifesto de Carga - Entrega'
    MaxWidth = 600
    MaxHeight = 350
    CharCase = ecUpperCase
    Left = 478
    Top = 146
  end
  object Q_FAT60: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'select CFA_ID,CFA_CODI,CFA_DCFO,CFA_RICM,'
      #9'CASE                      '
      #9' WHEN  CFA_TICM = '#39'0'#39' THEN '#39'TRIBUTADO INTEGRALMENTE'#39
      #9' WHEN  CFA_TICM ='#39'4'#39' THEN '#39'ISENTO OU N�O TRIBUTADO'#39
      #9' WHEN  CFA_TICM ='#39'5'#39' THEN '#39'COM SUSPENS�O OU DIFERIMENTO'#39
      #9'ELSE '#39'DESCONHECIDO'#39' END as '#39'TIPO DE TRIB'#39
      ' from faturamento '
      ' where TDOC_ID  = 15'
      ' and   CFA_RICM = 0 '
      ' ')
    PictureMasks.Strings = (
      'CFA_CODI'#9'#[#][#]'#9'T'#9'T')
    ValidateWithMask = True
    Left = 63
    Top = 352
    object Q_FAT60CFA_CODI: TStringField
      DisplayLabel = 'C�digo'
      DisplayWidth = 4
      FieldName = 'CFA_CODI'
      FixedChar = True
      Size = 4
    end
    object Q_FAT60CFA_DCFO: TStringField
      DisplayLabel = 'Descri��o'
      DisplayWidth = 40
      FieldName = 'CFA_DCFO'
      FixedChar = True
      Size = 50
    end
    object Q_FAT60TIPODETRIB: TStringField
      DisplayWidth = 25
      FieldName = 'TIPO DE TRIB'
      FixedChar = True
      Size = 28
    end
    object Q_FAT60CFA_ID: TAutoIncField
      FieldName = 'CFA_ID'
      Visible = False
    end
    object Q_FAT60CFA_RICM: TFloatField
      FieldName = 'CFA_RICM'
      Visible = False
    end
  end
  object Q_CNPJ: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'SELECT CLIF_ID FROM CLIENTEFINAL'
      'WHERE CLIF_CGCCPF = :CNPJ ')
    ValidateWithMask = True
    Left = 408
    Top = 204
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object Q_CNPJCLIF_ID: TAutoIncField
      FieldName = 'CLIF_ID'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_ID'
    end
  end
  object ds1: TDataSource
    DataSet = Q_CLIFdest
    OnDataChange = ds1DataChange
    Left = 558
    Top = 50
  end
end
