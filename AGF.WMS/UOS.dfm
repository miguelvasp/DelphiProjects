object FOS: TFOS
  Left = 119
  Top = 2
  Width = 836
  Height = 593
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
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
      Hint = 'Visualizar Romaneio de Entr. Cross Docking'
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
      Width = 221
      Height = 29
      Caption = 'Ordem de Servi�o'
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
      Hint = 'Pesquisar Ordem de Servi�o'
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
    object DBNavigator1: TDBNavigator
      Left = 516
      Top = 9
      Width = 192
      Height = 25
      DataSource = DS_OS
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
      ConfirmDelete = False
      ShowHint = True
      TabOrder = 0
      OnClick = DBNavigator1Click
    end
    object Button1: TButton
      Left = 368
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 1
      Visible = False
      OnClick = Button1Click
    end
    object CheckBox1: TCheckBox
      Left = 280
      Top = 16
      Width = 97
      Height = 17
      Caption = 'OS ABRIU'
      Checked = True
      State = cbChecked
      TabOrder = 2
      Visible = False
    end
  end
  object TabbedNotebook1: TTabbedNotebook
    Left = 0
    Top = 51
    Width = 813
    Height = 491
    Anchors = [akLeft, akTop, akRight]
    TabFont.Charset = ANSI_CHARSET
    TabFont.Color = clRed
    TabFont.Height = -11
    TabFont.Name = 'Arial'
    TabFont.Style = [fsBold]
    TabOrder = 1
    OnClick = TabbedNotebook1Click
    OnChange = TabbedNotebook1Change
    object TTabPage
      Left = 4
      Top = 24
      Caption = '   Principal   '
      object Panel1: TPanel
        Left = 12
        Top = 9
        Width = 756
        Height = 440
        BevelInner = bvSpace
        BevelOuter = bvLowered
        BevelWidth = 3
        TabOrder = 0
        object Label2: TLabel
          Left = 60
          Top = 90
          Width = 64
          Height = 15
          Caption = 'Cliente NBF'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 633
          Top = 60
          Width = 26
          Height = 15
          Caption = 'Data'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 75
          Top = 120
          Width = 49
          Height = 15
          Caption = 'Contrato'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 101
          Top = 59
          Width = 23
          Height = 15
          Caption = 'O.S.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object DBText2: TDBText
          Left = 129
          Top = 179
          Width = 608
          Height = 17
          DataField = 'TOS_NOME'
          DataSource = DS_TOS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label19: TLabel
          Left = 57
          Top = 178
          Width = 67
          Height = 15
          Caption = 'Tipo de O.S.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 12
          Top = 12
          Width = 733
          Height = 24
          Alignment = taCenter
          AutoSize = False
          Caption = 'Ordem de Servi�o n�o conclu�da'
          Color = clRed
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label38: TLabel
          Left = 46
          Top = 149
          Width = 78
          Height = 15
          Caption = 'Tipo de Carga'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object wwDBLookupCombo1: TwwDBLookupCombo
          Left = 128
          Top = 90
          Width = 313
          Height = 23
          BiDiMode = bdRightToLeft
          ParentBiDiMode = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          CharCase = ecUpperCase
          BorderStyle = bsNone
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'CLIN_RAZA'#9'50'#9'CLIN_RAZA'#9'F')
          DataField = 'CLIN_ID'
          DataSource = DS_OS
          LookupTable = cdsClin
          LookupField = 'CLIN_ID'
          ParentFont = False
          TabOrder = 0
          AutoDropDown = True
          ShowButton = True
          SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
          PreciseEditRegion = False
          AllowClearKey = False
          OnCloseUp = wwDBLookupCombo1CloseUp
          OnEnter = wwDBLookupCombo1Enter
          OnExit = wwDBLookupCombo1Exit
        end
        object wwDBEdit3: TwwDBEdit
          Left = 665
          Top = 58
          Width = 75
          Height = 23
          BorderStyle = bsNone
          DataField = 'OS_DATA'
          DataSource = DS_OS
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnEnter = wwDBEdit3Enter
          OnExit = wwDBEdit3Exit
        end
        object wwDBLookupCombo6: TwwDBLookupCombo
          Left = 128
          Top = 119
          Width = 313
          Height = 23
          BiDiMode = bdLeftToRight
          ParentBiDiMode = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          BorderStyle = bsNone
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'CTT_NOME'#9'40'#9'Nome do Contrato'#9'F')
          DataField = 'CTT_ID'
          DataSource = DS_OS
          LookupTable = cdsCTT
          LookupField = 'CTT_ID'
          ParentFont = False
          TabOrder = 1
          AutoDropDown = True
          ShowButton = True
          SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
          PreciseEditRegion = False
          AllowClearKey = False
          OnCloseUp = wwDBLookupCombo6CloseUp
          OnEnter = wwDBLookupCombo6Enter
          OnExit = wwDBLookupCombo6Exit
        end
        object Panel4: TPanel
          Left = 440
          Top = 206
          Width = 304
          Height = 204
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = clNavy
          TabOrder = 3
          object BitBtn1: TBitBtn
            Left = 11
            Top = 11
            Width = 284
            Height = 41
            Caption = ' Gerar  Servi�os / Especifica��es'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = False
            TabOrder = 0
            OnClick = BitBtn1Click
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
              000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
              00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
              F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
              0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
              FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
              FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
              0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
              00333377737FFFFF773333303300000003333337337777777333}
            NumGlyphs = 2
          end
          object BitBtn2: TBitBtn
            Left = 11
            Top = 108
            Width = 284
            Height = 41
            Caption = ' Concluir Ordem de Servi�o'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = False
            TabOrder = 2
            OnClick = BitBtn2Click
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
          end
          object BitBtn3: TBitBtn
            Left = 11
            Top = 60
            Width = 284
            Height = 41
            Caption = ' Gerar Valores'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = False
            TabOrder = 1
            OnClick = BitBtn3Click
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              333333333333333333333333333333333333333FFFFFFFFFFF33330000000000
              03333377777777777F33333003333330033333377FF333377F33333300333333
              0333333377FF33337F3333333003333303333333377FF3337333333333003333
              333333333377FF3333333333333003333333333333377FF33333333333330033
              3333333333337733333333333330033333333333333773333333333333003333
              33333333337733333F3333333003333303333333377333337F33333300333333
              03333333773333337F33333003333330033333377FFFFFF77F33330000000000
              0333337777777777733333333333333333333333333333333333}
            NumGlyphs = 2
          end
          object BitBtn7: TBitBtn
            Left = 11
            Top = 157
            Width = 284
            Height = 41
            Caption = 'Importa��o de NF'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = False
            TabOrder = 3
            OnClick = BitBtn7Click
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
              555555FFFFFFFFFF55555000000000055555577777777775FFFF00B8B8B8B8B0
              0000775F5555555777770B0B8B8B8B8B0FF07F75F555555575F70FB0B8B8B8B8
              B0F07F575FFFFFFFF7F70BFB0000000000F07F557777777777570FBFBF0FFFFF
              FFF07F55557F5FFFFFF70BFBFB0F000000F07F55557F777777570FBFBF0FFFFF
              FFF075F5557F5FFFFFF750FBFB0F000000F0575FFF7F777777575700000FFFFF
              FFF05577777F5FF55FF75555550F00FF00005555557F775577775555550FFFFF
              0F055555557F55557F755555550FFFFF00555555557FFFFF7755555555000000
              0555555555777777755555555555555555555555555555555555}
            NumGlyphs = 2
          end
        end
        object Panel5: TPanel
          Left = 128
          Top = 46
          Width = 145
          Height = 38
          BevelInner = bvLowered
          Caption = 'Panel5'
          TabOrder = 6
          object DBText5: TDBText
            Left = 13
            Top = 2
            Width = 114
            Height = 28
            Alignment = taCenter
            Color = clMenu
            DataField = 'OS_ID'
            DataSource = DS_OS
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -24
            Font.Name = 'Comic Sans MS'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
        end
        object Panel6: TPanel
          Left = 58
          Top = 206
          Width = 377
          Height = 206
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Caption = 'Panel5'
          Color = clNavy
          TabOrder = 4
          object wwDBGrid2: TwwDBGrid
            Left = 12
            Top = 14
            Width = 353
            Height = 184
            Hint = 'Visualiza��o dos Registros'
            Selected.Strings = (
              'TDOC_NOME'#9'39'#9'Tipos de Documentos')
            IniAttributes.FileName = 'delphi32.ini'
            IniAttributes.SectionName = 'FOSwwDBGrid2'
            IniAttributes.Delimiter = ';;'
            TitleColor = clBtnFace
            FixedCols = 0
            ShowHorzScrollBar = True
            Color = clWhite
            DataSource = DS_TDOC
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
            KeyOptions = []
            Options = [dgAlwaysShowEditor, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgWordWrap]
            ParentFont = False
            ParentShowHint = False
            ReadOnly = True
            ShowHint = True
            TabOrder = 0
            TitleAlignment = taCenter
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clNavy
            TitleFont.Height = -13
            TitleFont.Name = 'Arial'
            TitleFont.Style = [fsBold]
            TitleLines = 1
            TitleButtons = False
            OnDblClick = wwDBGrid2DblClick
            FooterColor = clNavy
            FooterCellColor = clRed
            object wwIButton2: TwwIButton
              Left = 0
              Top = 0
              Width = 13
              Height = 22
              AllowAllUp = True
            end
          end
        end
        object wwDBComboBox1: TwwDBComboBox
          Left = 128
          Top = 148
          Width = 100
          Height = 21
          ShowButton = True
          Style = csDropDown
          MapList = True
          AllowClearKey = False
          AutoDropDown = True
          BorderStyle = bsNone
          ButtonStyle = cbsEllipsis
          CharCase = ecUpperCase
          DataField = 'TPCARGA'
          DataSource = DS_OS
          DropDownCount = 8
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ItemHeight = 0
          Items.Strings = (
            'PALLETIZADA'#9'P'
            'GRANEL'#9'G')
          ParentFont = False
          Sorted = False
          TabOrder = 2
          UnboundDataType = wwDefault
          OnEnter = DBCB_CLI_PESSEnter
          OnExit = DBCB_CLI_PESSExit
        end
        object Panel12: TPanel
          Left = 233
          Top = 147
          Width = 289
          Height = 145
          BevelInner = bvLowered
          TabOrder = 7
          Visible = False
          object Label40: TLabel
            Left = 44
            Top = 36
            Width = 83
            Height = 19
            Caption = 'Per�odo de'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label41: TLabel
            Left = 103
            Top = 66
            Width = 23
            Height = 19
            Caption = 'at�'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label42: TLabel
            Left = 36
            Top = 20
            Width = 3
            Height = 15
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object SBT_VISU: TSpeedButton
            Left = 107
            Top = 102
            Width = 46
            Height = 27
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
            ParentShowHint = False
            ShowHint = True
            OnClick = SBT_VISUClick
          end
          object SpeedButton6: TSpeedButton
            Left = 157
            Top = 102
            Width = 46
            Height = 27
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
            OnClick = SpeedButton6Click
          end
          object Data1: TMaskEdit
            Left = 133
            Top = 34
            Width = 104
            Height = 22
            AutoSize = False
            BorderStyle = bsNone
            CharCase = ecUpperCase
            EditMask = '!99/99/9999;1;_'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -19
            Font.Name = 'Arial'
            Font.Style = []
            MaxLength = 10
            ParentFont = False
            TabOrder = 0
            Text = '  /  /    '
          end
          object Data2: TMaskEdit
            Left = 133
            Top = 66
            Width = 104
            Height = 22
            BorderStyle = bsNone
            CharCase = ecUpperCase
            EditMask = '!99/99/9999;1;_'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -19
            Font.Name = 'Arial'
            Font.Style = []
            MaxLength = 10
            ParentFont = False
            TabOrder = 1
            Text = '  /  /    '
          end
        end
      end
    end
    object TTabPage
      Left = 4
      Top = 24
      Caption = '   Servi�os por O.S.   '
      object Label15: TLabel
        Left = 93
        Top = 5
        Width = 64
        Height = 15
        Caption = 'Cliente NBF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText3: TDBText
        Left = 163
        Top = 4
        Width = 310
        Height = 17
        DataField = 'CLIN_RAZA'
        DataSource = DS_OS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 475
        Top = 5
        Width = 102
        Height = 15
        Caption = 'Nome do Contrato'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText1: TDBText
        Left = 580
        Top = 4
        Width = 198
        Height = 17
        DataField = 'CTT_NOME'
        DataSource = DS_OS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label18: TLabel
        Left = 6
        Top = 5
        Width = 23
        Height = 15
        Caption = 'O.S.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText4: TDBText
        Left = 33
        Top = 4
        Width = 59
        Height = 17
        DataField = 'OS_ID'
        DataSource = DS_OS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object TabbedNotebook2: TTabbedNotebook
        Left = 1
        Top = 22
        Width = 774
        Height = 432
        PageIndex = 1
        TabFont.Charset = ANSI_CHARSET
        TabFont.Color = clRed
        TabFont.Height = -11
        TabFont.Name = 'Arial'
        TabFont.Style = [fsBold]
        TabOrder = 0
        OnClick = TabbedNotebook2Click
        OnChange = TabbedNotebook2Change
        object TTabPage
          Left = 4
          Top = 24
          Caption = '   Servi�os   '
          object wwDBComboBox3: TwwDBComboBox
            Left = 416
            Top = 380
            Width = 56
            Height = 21
            ShowButton = True
            Style = csDropDown
            MapList = True
            AllowClearKey = False
            AutoDropDown = True
            BorderStyle = bsNone
            ButtonStyle = cbsEllipsis
            DataField = 'OS_SERVICO_COBRA'
            DataSource = DS_OSSERV
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
          end
          object Panel8: TPanel
            Left = 13
            Top = 21
            Width = 742
            Height = 363
            BevelInner = bvSpace
            BevelOuter = bvLowered
            BevelWidth = 3
            Color = clSilver
            TabOrder = 1
            object Label11: TLabel
              Left = 38
              Top = 90
              Width = 109
              Height = 15
              Caption = 'Tipo de Documento'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label10: TLabel
              Left = 98
              Top = 67
              Width = 49
              Height = 15
              Caption = 'Cobrar ?'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label1: TLabel
              Left = 60
              Top = 42
              Width = 87
              Height = 15
              Caption = 'Tipo de Servi�o'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label12: TLabel
              Left = 152
              Top = 41
              Width = 100
              Height = 17
              Caption = 'Tipo de Servi�o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -15
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label6: TLabel
              Left = 104
              Top = 15
              Width = 43
              Height = 15
              Caption = 'Servi�o'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object wwDBGrid1: TwwDBGrid
              Left = 24
              Top = 124
              Width = 703
              Height = 197
              Hint = 'Visualiza��o dos Registros'
              Selected.Strings = (
                'TSER_NOME'#9'40'#9'Tipo de Servi�o'
                'SER_NOME'#9'40'#9'Servi�o'
                'OS_SERVICO_COBRA'#9'1'#9'Cobrar ?'
                'TDOC_NOME'#9'40'#9'Tipo de Documento')
              IniAttributes.FileName = 'delphi32.ini'
              IniAttributes.SectionName = 'FOSwwDBGrid1'
              IniAttributes.Delimiter = ';;'
              TitleColor = clBtnFace
              FixedCols = 0
              ShowHorzScrollBar = True
              DataSource = DS_OSSERV
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial Narrow'
              Font.Style = []
              KeyOptions = []
              Options = [dgAlwaysShowEditor, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgWordWrap]
              ParentFont = False
              ParentShowHint = False
              ReadOnly = True
              ShowHint = True
              TabOrder = 0
              TitleAlignment = taCenter
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clNavy
              TitleFont.Height = -11
              TitleFont.Name = 'Arial'
              TitleFont.Style = [fsBold]
              TitleLines = 1
              TitleButtons = False
              object wwIButton1: TwwIButton
                Left = 0
                Top = 0
                Width = 13
                Height = 22
                AllowAllUp = True
              end
            end
            object wwDBLookupCombo4: TwwDBLookupCombo
              Left = 152
              Top = 90
              Width = 232
              Height = 21
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              BorderStyle = bsNone
              DropDownAlignment = taLeftJustify
              Selected.Strings = (
                'TDOC_NOME'#9'40'#9'Tipo de Documento'#9'F')
              DataField = 'TDOC_ID'
              DataSource = DS_OSSERV
              LookupTable = cdsTDTO
              LookupField = 'TDOC_ID'
              ParentFont = False
              TabOrder = 1
              AutoDropDown = True
              ShowButton = True
              SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
              PreciseEditRegion = False
              AllowClearKey = False
              OnEnter = wwDBLookupCombo4Enter
              OnExit = wwDBLookupCombo4Exit
            end
            object DBCB_CLI_PESS: TwwDBComboBox
              Left = 152
              Top = 66
              Width = 56
              Height = 21
              ShowButton = True
              Style = csDropDown
              MapList = True
              AllowClearKey = False
              AutoDropDown = True
              BorderStyle = bsNone
              ButtonStyle = cbsEllipsis
              DataField = 'OS_SERVICO_COBRA'
              DataSource = DS_OSSERV
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
              TabOrder = 2
              UnboundDataType = wwDefault
              OnEnter = DBCB_CLI_PESSEnter
              OnExit = DBCB_CLI_PESSExit
            end
            object wwDBLookupCombo2: TwwDBLookupCombo
              Left = 152
              Top = 13
              Width = 233
              Height = 21
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              BorderStyle = bsNone
              DropDownAlignment = taLeftJustify
              Selected.Strings = (
                'SER_NOME'#9'40'#9'Servi�o'#9'F'
                'TSER_NOME'#9'40'#9'Tipo de Servi�o'#9'F')
              DataField = 'SER_ID'
              DataSource = DS_OSSERV
              LookupTable = cdsSERV
              LookupField = 'SER_ID'
              DropDownCount = 20
              ParentFont = False
              TabOrder = 3
              AutoDropDown = True
              ShowButton = True
              SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
              PreciseEditRegion = False
              AllowClearKey = True
              OnCloseUp = wwDBLookupCombo2CloseUp
              OnEnter = wwDBLookupCombo2Enter
              OnExit = wwDBLookupCombo2Exit
            end
          end
        end
        object TTabPage
          Left = 4
          Top = 24
          Caption = '   Especifica��es por Servi�os   '
          object Label47: TLabel
            Left = 12
            Top = 11
            Width = 43
            Height = 15
            Caption = 'Servi�o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBText11: TDBText
            Left = 61
            Top = 9
            Width = 280
            Height = 17
            DataField = 'SER_NOME'
            DataSource = DS_OSSERV
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label48: TLabel
            Left = 374
            Top = 11
            Width = 87
            Height = 15
            Caption = 'Tipo de Servi�o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBText12: TDBText
            Left = 464
            Top = 9
            Width = 280
            Height = 17
            DataField = 'TSER_NOME'
            DataSource = DS_OSSERV
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Panel3: TPanel
            Left = 1
            Top = 32
            Width = 765
            Height = 363
            BevelInner = bvSpace
            BevelOuter = bvLowered
            BevelWidth = 3
            Color = clSilver
            TabOrder = 0
            object Label14: TLabel
              Left = 57
              Top = 12
              Width = 39
              Height = 15
              Caption = 'Ordem'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label22: TLabel
              Left = 16
              Top = 36
              Width = 80
              Height = 15
              Caption = 'M�nimo em R$'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label23: TLabel
              Left = 18
              Top = 59
              Width = 78
              Height = 15
              Caption = 'Tipo de Carga'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label25: TLabel
              Left = 28
              Top = 84
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
            object Label26: TLabel
              Left = 57
              Top = 108
              Width = 39
              Height = 15
              Caption = 'Regi�o'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label27: TLabel
              Left = 10
              Top = 132
              Width = 85
              Height = 15
              Caption = 'Tipo de Ve�culo'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label28: TLabel
              Left = 7
              Top = 157
              Width = 89
              Height = 15
              Caption = 'Tipo de Produto'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label21: TLabel
              Left = 147
              Top = 12
              Width = 29
              Height = 15
              Caption = 'Fator'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label13: TLabel
              Left = 484
              Top = 12
              Width = 121
              Height = 15
              Caption = 'Unidade de Cobran�a'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label16: TLabel
              Left = 455
              Top = 84
              Width = 144
              Height = 15
              Caption = 'Faixa de Qtde.(Pallets) de'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label30: TLabel
              Left = 480
              Top = 108
              Width = 119
              Height = 15
              Caption = 'Faixa de �rea(M2) de'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label24: TLabel
              Left = 474
              Top = 132
              Width = 127
              Height = 15
              Caption = 'Faixa de Peso(Ton.) de'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label32: TLabel
              Left = 467
              Top = 157
              Width = 134
              Height = 15
              Caption = 'Faixa de Volume(M3) de'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label33: TLabel
              Left = 659
              Top = 157
              Width = 18
              Height = 15
              Caption = 'at�'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label29: TLabel
              Left = 659
              Top = 132
              Width = 18
              Height = 15
              Caption = 'at�'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label31: TLabel
              Left = 659
              Top = 108
              Width = 18
              Height = 15
              Caption = 'at�'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label17: TLabel
              Left = 659
              Top = 84
              Width = 18
              Height = 15
              Caption = 'at�'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object wwDBGrid3: TwwDBGrid
              Left = 11
              Top = 184
              Width = 745
              Height = 169
              Hint = 'Visualiza��o dos Registros'
              Selected.Strings = (
                'OS_ESPEC_ORDEM'#9'10'#9'Ordem'
                'OS_ESPEC_FATOR'#9'10'#9'Fator'
                'UCOB_NOME'#9'40'#9'Unidade de Cobran�a'
                'OS_ESPEC_MINIMA'#9'10'#9'M�nimo'
                'OS_ESPEC_TPCARGA'#9'1'#9'Tipo de Carga'
                'REG_NOME'#9'40'#9'Regi�o'
                'VEIC_NOME'#9'40'#9'Tipo de Ve�culo'
                'TPRO_NOME'#9'40'#9'Tipo de Produto'
                'OS_ESPEC_AREA_DE'#9'10'#9'Faixa de �rea(M2) de'
                'OS_ESPEC_AREA_ATE'#9'10'#9'Faixa de �rea(M2) at�'
                'OS_ESPEC_QTDEPALLET_DE'#9'10'#9'Faixa de Qtde.(Pallets) de'
                'OS_ESPEC_QTDEPALLET_ATE'#9'10'#9'Faixa de Qtde.(Pallets) at�'
                'OS_ESPEC_PESO_DE'#9'10'#9'Faixa de Peso(Ton.) de'
                'OS_ESPEC_PESO_ATE'#9'10'#9'Faixa de Peso(Ton.) at�'
                'OS_ESPEC_VOL_DE'#9'10'#9'Faixa de Volume(M3) de'
                'OS_ESPEC_VOL_ATE'#9'10'#9'Faixa de Volume(M3) at�')
              IniAttributes.FileName = 'delphi32.ini'
              IniAttributes.SectionName = 'FOSwwDBGrid3'
              IniAttributes.Delimiter = ';;'
              TitleColor = clBtnFace
              FixedCols = 0
              ShowHorzScrollBar = True
              DataSource = DS_OSESPEC
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial Narrow'
              Font.Style = []
              KeyOptions = []
              Options = [dgAlwaysShowEditor, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgWordWrap]
              ParentFont = False
              ParentShowHint = False
              ReadOnly = True
              ShowHint = True
              TabOrder = 17
              TitleAlignment = taCenter
              TitleFont.Charset = ANSI_CHARSET
              TitleFont.Color = clNavy
              TitleFont.Height = -11
              TitleFont.Name = 'Arial Narrow'
              TitleFont.Style = [fsBold]
              TitleLines = 1
              TitleButtons = False
              object wwIButton3: TwwIButton
                Left = 0
                Top = 0
                Width = 13
                Height = 22
                AllowAllUp = True
              end
            end
            object wwDBComboBox2: TwwDBComboBox
              Left = 259
              Top = 236
              Width = 132
              Height = 21
              ShowButton = True
              Style = csDropDown
              MapList = True
              AllowClearKey = False
              AutoDropDown = True
              BorderStyle = bsNone
              ButtonStyle = cbsEllipsis
              DataField = 'OS_ESPEC_TPCARGA'
              DataSource = DS_OSESPEC
              DropDownCount = 8
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ItemHeight = 0
              Items.Strings = (
                'Pallets'#9'P'
                'Granel'#9'G'
                'N�o se Aplica'#9'N')
              ParentFont = False
              Sorted = False
              TabOrder = 18
              UnboundDataType = wwDefault
              Visible = False
            end
            object wwDBEdit5: TwwDBEdit
              Left = 99
              Top = 10
              Width = 37
              Height = 21
              BorderStyle = bsNone
              DataField = 'OS_ESPEC_ORDEM'
              DataSource = DS_OSESPEC
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
              OnEnter = wwDBEdit5Enter
              OnExit = wwDBEdit5Exit
            end
            object wwDBEdit7: TwwDBEdit
              Left = 99
              Top = 35
              Width = 64
              Height = 21
              BorderStyle = bsNone
              DataField = 'OS_ESPEC_MINIMA'
              DataSource = DS_OSESPEC
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
              OnEnter = wwDBEdit7Enter
              OnExit = wwDBEdit7Exit
            end
            object wwDBComboBox4: TwwDBComboBox
              Left = 99
              Top = 59
              Width = 132
              Height = 21
              ShowButton = True
              Style = csDropDown
              MapList = True
              AllowClearKey = False
              AutoDropDown = True
              BorderStyle = bsNone
              ButtonStyle = cbsEllipsis
              DataField = 'OS_ESPEC_TPCARGA'
              DataSource = DS_OSESPEC
              DropDownCount = 8
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ItemHeight = 0
              Items.Strings = (
                'Pallets'#9'P'
                'Granel'#9'G'
                'N�o se Aplica'#9'N')
              ParentFont = False
              Sorted = False
              TabOrder = 4
              UnboundDataType = wwDefault
              OnEnter = wwDBComboBox4Enter
              OnExit = wwDBComboBox4Exit
            end
            object wwDBLookupCombo8: TwwDBLookupCombo
              Left = 99
              Top = 83
              Width = 326
              Height = 21
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              BorderStyle = bsNone
              DropDownAlignment = taLeftJustify
              Selected.Strings = (
                'CLIF_RAZA'#9'50'#9'CLIF_RAZA'#9'F'
                'clif_endereco'#9'50'#9'clif_endereco'#9'F')
              DataField = 'CLIF_ID'
              DataSource = DS_OSESPEC
              LookupTable = cdsCLIF
              LookupField = 'CLIF_ID'
              ParentFont = False
              TabOrder = 5
              AutoDropDown = True
              ShowButton = True
              SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
              PreciseEditRegion = False
              AllowClearKey = False
              OnEnter = wwDBLookupCombo8Enter
              OnExit = wwDBLookupCombo8Exit
            end
            object wwDBLookupCombo9: TwwDBLookupCombo
              Left = 99
              Top = 108
              Width = 232
              Height = 21
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              BorderStyle = bsNone
              DropDownAlignment = taLeftJustify
              Selected.Strings = (
                'REG_NOME'#9'40'#9'REG_NOME'#9'F')
              DataField = 'REG_ID'
              DataSource = DS_OSESPEC
              LookupTable = cdsREG
              LookupField = 'REG_ID'
              ParentFont = False
              TabOrder = 6
              AutoDropDown = True
              ShowButton = True
              SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
              PreciseEditRegion = False
              AllowClearKey = True
              OnEnter = wwDBLookupCombo9Enter
              OnExit = wwDBLookupCombo9Exit
            end
            object wwDBLookupCombo10: TwwDBLookupCombo
              Left = 99
              Top = 133
              Width = 232
              Height = 21
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              BorderStyle = bsNone
              DropDownAlignment = taLeftJustify
              Selected.Strings = (
                'VEIC_NOME'#9'40'#9'VEIC_NOME'#9'F')
              DataField = 'VEIC_ID'
              DataSource = DS_OSESPEC
              LookupTable = cdsVEIC
              LookupField = 'VEIC_ID'
              ParentFont = False
              TabOrder = 7
              AutoDropDown = True
              ShowButton = True
              SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
              PreciseEditRegion = False
              AllowClearKey = False
              OnEnter = wwDBLookupCombo10Enter
              OnExit = wwDBLookupCombo10Exit
            end
            object wwDBLookupCombo11: TwwDBLookupCombo
              Left = 99
              Top = 158
              Width = 232
              Height = 21
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              BorderStyle = bsNone
              DropDownAlignment = taLeftJustify
              Selected.Strings = (
                'TPRO_NOME'#9'40'#9'TPRO_NOME'#9'F')
              DataField = 'TPRO_ID'
              DataSource = DS_OSESPEC
              LookupTable = cdsTPROD
              LookupField = 'TPRO_ID'
              ParentFont = False
              TabOrder = 8
              AutoDropDown = True
              ShowButton = True
              SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
              PreciseEditRegion = False
              AllowClearKey = False
              OnEnter = wwDBLookupCombo11Enter
              OnExit = wwDBLookupCombo11Exit
            end
            object wwDBEdit6: TwwDBEdit
              Left = 179
              Top = 10
              Width = 64
              Height = 21
              BorderStyle = bsNone
              DataField = 'OS_ESPEC_FATOR'
              DataSource = DS_OSESPEC
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
              OnEnter = wwDBEdit6Enter
              OnExit = wwDBEdit6Exit
            end
            object wwDBLookupCombo5: TwwDBLookupCombo
              Left = 247
              Top = 10
              Width = 232
              Height = 21
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              BorderStyle = bsNone
              DropDownAlignment = taLeftJustify
              Selected.Strings = (
                'UCOB_NOME'#9'40'#9'UCOB_NOME'#9'F')
              DataField = 'UCOB_ID'
              DataSource = DS_OSESPEC
              LookupTable = cdsUCOB
              LookupField = 'UCOB_ID'
              ParentFont = False
              TabOrder = 2
              AutoDropDown = True
              ShowButton = True
              SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
              PreciseEditRegion = False
              AllowClearKey = False
              OnEnter = wwDBLookupCombo5Enter
              OnExit = wwDBLookupCombo5Exit
            end
            object wwDBEdit14: TwwDBEdit
              Left = 605
              Top = 158
              Width = 46
              Height = 21
              BorderStyle = bsNone
              DataField = 'OS_ESPEC_VOL_DE'
              DataSource = DS_OSESPEC
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 15
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
              OnEnter = wwDBEdit14Enter
              OnExit = wwDBEdit14Exit
            end
            object wwDBEdit10: TwwDBEdit
              Left = 605
              Top = 133
              Width = 46
              Height = 21
              BorderStyle = bsNone
              DataField = 'OS_ESPEC_PESO_DE'
              DataSource = DS_OSESPEC
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
              OnEnter = wwDBEdit10Enter
              OnExit = wwDBEdit10Exit
            end
            object wwDBEdit12: TwwDBEdit
              Left = 605
              Top = 108
              Width = 46
              Height = 21
              BorderStyle = bsNone
              DataField = 'OS_ESPEC_AREA_DE'
              DataSource = DS_OSESPEC
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 11
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
              OnEnter = wwDBEdit12Enter
              OnExit = wwDBEdit12Exit
            end
            object wwDBEdit8: TwwDBEdit
              Left = 605
              Top = 83
              Width = 46
              Height = 21
              BorderStyle = bsNone
              DataField = 'OS_ESPEC_QTDEPALLET_DE'
              DataSource = DS_OSESPEC
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
              OnEnter = wwDBEdit8Enter
              OnExit = wwDBEdit8Exit
            end
            object wwDBEdit9: TwwDBEdit
              Left = 685
              Top = 83
              Width = 46
              Height = 21
              BorderStyle = bsNone
              DataField = 'OS_ESPEC_QTDEPALLET_ATE'
              DataSource = DS_OSESPEC
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 10
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
              OnEnter = wwDBEdit9Enter
              OnExit = wwDBEdit9Exit
            end
            object wwDBEdit13: TwwDBEdit
              Left = 685
              Top = 108
              Width = 46
              Height = 21
              BorderStyle = bsNone
              DataField = 'OS_ESPEC_AREA_ATE'
              DataSource = DS_OSESPEC
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 12
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
              OnEnter = wwDBEdit13Enter
              OnExit = wwDBEdit13Exit
            end
            object wwDBEdit11: TwwDBEdit
              Left = 685
              Top = 133
              Width = 46
              Height = 21
              BorderStyle = bsNone
              DataField = 'OS_ESPEC_PESO_ATE'
              DataSource = DS_OSESPEC
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 14
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
              OnEnter = wwDBEdit11Enter
              OnExit = wwDBEdit11Exit
            end
            object wwDBEdit15: TwwDBEdit
              Left = 685
              Top = 158
              Width = 46
              Height = 21
              BorderStyle = bsNone
              DataField = 'OS_ESPEC_VOL_ATE'
              DataSource = DS_OSESPEC
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 16
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
              OnEnter = wwDBEdit15Enter
              OnExit = wwDBEdit15Exit
            end
          end
        end
      end
      object Panel7: TPanel
        Left = 83
        Top = 18
        Width = 183
        Height = 25
        BevelOuter = bvNone
        TabOrder = 1
        Visible = False
      end
    end
    object TTabPage
      Left = 4
      Top = 24
      Caption = '   Valores    '
      object Label20: TLabel
        Left = 6
        Top = 5
        Width = 23
        Height = 15
        Caption = 'O.S.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText6: TDBText
        Left = 33
        Top = 4
        Width = 59
        Height = 17
        DataField = 'OS_ID'
        DataSource = DS_OS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label34: TLabel
        Left = 93
        Top = 5
        Width = 64
        Height = 15
        Caption = 'Cliente NBF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText7: TDBText
        Left = 163
        Top = 4
        Width = 310
        Height = 17
        DataField = 'CLIN_RAZA'
        DataSource = DS_OS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label35: TLabel
        Left = 475
        Top = 5
        Width = 102
        Height = 15
        Caption = 'Nome do Contrato'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText8: TDBText
        Left = 580
        Top = 4
        Width = 198
        Height = 17
        DataField = 'CTT_NOME'
        DataSource = DS_OS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RzPageControl1: TRzPageControl
        Left = 5
        Top = 26
        Width = 796
        Height = 434
        ActivePage = TabSheet1
        Anchors = [akLeft, akTop, akRight]
        TabIndex = 0
        TabOrder = 0
        FixedDimension = 19
        object TabSheet1: TRzTabSheet
          Caption = 'Resumo de OEs'
          object wwDBGrid5: TwwDBGrid
            Left = 0
            Top = 41
            Width = 792
            Height = 337
            Selected.Strings = (
              'ORD_CONH'#9'8'#9'N�mero'
              'ORD_NOTAS'#9'18'#9'Notas'#9'F'
              'ORD_PESO_TOTAL'#9'10'#9'Peso'
              'ORD_VALORTOTAL'#9'9'#9'Vlr. NFs'
              'MANI_ID'#9'7'#9'Manifesto'
              'ORD_VLR_FRETE'#9'10'#9'Frete'
              'ORD_VLR_SECCAT'#9'10'#9'Sec Cat'
              'ORD_VLR_DESPACHO'#9'10'#9'Despacho'
              'ORD_VLR_PEDAGIO'#9'10'#9'Ped�gio'
              'ORD_OUTROS'#9'10'#9'Outros'
              'ORD_TXENTREGA'#9'10'#9'Tx. Entrega'
              'ORD_SEGURO'#9'10'#9'Seguro'
              'ORD_ALIQ'#9'10'#9'Aliq. ICMS'
              'ORD_VLR_ICMS'#9'10'#9'ICMS'
              'ORD_TOTALPREST'#9'10'#9'Total')
            IniAttributes.Delimiter = ';;'
            TitleColor = clBtnFace
            FixedCols = 0
            ShowHorzScrollBar = True
            Align = alClient
            DataSource = dsOEConsulta
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
            ParentFont = False
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
          object Panel13: TPanel
            Left = 0
            Top = 0
            Width = 792
            Height = 41
            Align = alTop
            TabOrder = 1
            object Button2: TButton
              Left = 8
              Top = 8
              Width = 129
              Height = 25
              Caption = 'Exportar para Excel'
              TabOrder = 0
              OnClick = Button2Click
            end
          end
          object Panel14: TPanel
            Left = 0
            Top = 378
            Width = 792
            Height = 33
            Align = alBottom
            TabOrder = 2
            object Label43: TLabel
              Left = 16
              Top = 8
              Width = 74
              Height = 20
              Caption = 'Total R$:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
        end
        object TabSheet2: TRzTabSheet
          Caption = 'Valores dos Servi�os'
          object Panel10: TPanel
            Left = 422
            Top = 376
            Width = 335
            Height = 34
            BevelInner = bvLowered
            BevelOuter = bvSpace
            Color = 12615680
            TabOrder = 0
            object Label46: TLabel
              Left = 15
              Top = 5
              Width = 81
              Height = 24
              Caption = 'Total R$'
              Color = 12615680
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clYellow
              Font.Height = -21
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object Label36: TLabel
              Left = 261
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
          object DBG_INFI: TwwDBGrid
            Left = 0
            Top = 0
            Width = 768
            Height = 361
            Selected.Strings = (
              'SER_NOME'#9'16'#9'Servi�o'#9'F'
              'MANI_ID'#9'5'#9'Manifesto'#9'F'
              'TPRODdesc'#9'15'#9'TpProduto'#9'F'
              'NFnumero'#9'5'#9'Nota Fiscal'#9'F'
              'TDOC_TIPO'#9'2'#9'Tipo'#9'F'
              'CALC_GRANDEZA'#9'10'#9'Grandeza'#9'F'
              'CALC_UNITARIO'#9'13'#9'Unit�rio'#9'F'
              'UCOB_NOME'#9'24'#9'Unidade Cobran�a'#9'F'
              'CALC_TOTAL'#9'15'#9'Total'#9'F')
            IniAttributes.FileName = 'delphi32.ini'
            IniAttributes.SectionName = 'FNFDBG_INFI'
            IniAttributes.Delimiter = ';;'
            TitleColor = clBlue
            FixedCols = 0
            ShowHorzScrollBar = True
            Align = alTop
            Color = clWhite
            DataSource = DS_CALC
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            KeyOptions = [dgEnterToTab]
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
            ParentFont = False
            TabOrder = 1
            TitleAlignment = taCenter
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWhite
            TitleFont.Height = -11
            TitleFont.Name = 'Arial'
            TitleFont.Style = [fsBold]
            TitleLines = 1
            TitleButtons = False
            FooterColor = clInactiveCaption
            FooterCellColor = clGrayText
          end
        end
      end
    end
  end
  object Panel9: TPanel
    Left = 55
    Top = 620
    Width = 789
    Height = 539
    BevelInner = bvLowered
    TabOrder = 2
    Visible = False
    object Label37: TLabel
      Left = 209
      Top = 17
      Width = 385
      Height = 24
      Caption = 'Notas Fiscais sem Manifesto de Carga'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -21
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SpeedButton2: TSpeedButton
      Left = 755
      Top = 8
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
    object wwDBGrid4: TwwDBGrid
      Left = 115
      Top = 66
      Width = 591
      Height = 447
      Selected.Strings = (
        'NFI_MARCADOR'#9'1'#9' '
        'NFI_DEMI'#9'9'#9'Dt. Emiss�o'
        'CLIF_RAZA'#9'30'#9'Cliente Final'
        'NFI_DTENTREGA'#9'9'#9'Dt. Entrega'
        'NFI_NUMERO'#9'10'#9'N�mero')
      IniAttributes.FileName = 'delphi32.ini'
      IniAttributes.SectionName = 'FNFDBG_INFI'
      IniAttributes.Delimiter = ';;'
      TitleColor = clBlue
      FixedCols = 0
      ShowHorzScrollBar = True
      Color = clWhite
      DataSource = DS_NF2
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      KeyOptions = [dgEnterToTab]
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      ParentFont = False
      TabOrder = 0
      TitleAlignment = taCenter
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWhite
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = [fsBold]
      TitleLines = 1
      TitleButtons = False
      FooterColor = clInactiveCaption
      FooterCellColor = clGrayText
    end
    object BitBtn4: TBitBtn
      Left = 729
      Top = 8
      Width = 25
      Height = 25
      Hint = 'Confirmar'
      Default = True
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = BitBtn4Click
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object BitBtn6: TBitBtn
      Left = 656
      Top = 42
      Width = 25
      Height = 24
      Hint = 'Selecionar Todas NF'#39'S'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = BitBtn6Click
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
    object BitBtn5: TBitBtn
      Left = 681
      Top = 42
      Width = 25
      Height = 24
      Hint = 'Desmarcar Todas NF'#39'S'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = BitBtn5Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        55555FFFFFFF5F55FFF5777777757559995777777775755777F7555555555550
        305555555555FF57F7F555555550055BB0555555555775F777F55555550FB000
        005555555575577777F5555550FB0BF0F05555555755755757F555550FBFBF0F
        B05555557F55557557F555550BFBF0FB005555557F55575577F555500FBFBFB0
        B05555577F555557F7F5550E0BFBFB00B055557575F55577F7F550EEE0BFB0B0
        B05557FF575F5757F7F5000EEE0BFBF0B055777FF575FFF7F7F50000EEE00000
        B0557777FF577777F7F500000E055550805577777F7555575755500000555555
        05555777775555557F5555000555555505555577755555557555}
      NumGlyphs = 2
    end
  end
  object Panel11: TPanel
    Left = 800
    Top = 3
    Width = 789
    Height = 538
    BevelInner = bvLowered
    TabOrder = 3
    Visible = False
    object SpeedButton5: TSpeedButton
      Left = 475
      Top = 448
      Width = 48
      Height = 39
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
      OnClick = SpeedButton5Click
    end
    object Label39: TLabel
      Left = 105
      Top = 41
      Width = 640
      Height = 24
      Caption = 'Selecione as NF'#39's para gerar o Rel. de Entrada de Cross Dcking'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -21
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SpeedButton7: TSpeedButton
      Left = 433
      Top = 448
      Width = 41
      Height = 39
      Hint = 'Imprimir Etiquetas de CrossDocking'
      Glyph.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        08000000000040020000320B0000320B00000001000000010000080808001818
        180021212100292921002929290031313100393939004242390042424200524A
        42005A52420042424A004A424A004A4A4A00313952004A4A52005A5A5A006363
        63006B6B6B005A637B007B7B7B008484840084C684008C8C8C009C949C009C9C
        9C00A59C9C00A5A5A500ADA5A500F7B5A500394AAD00848CAD00ADADAD00B5AD
        AD00ADB5AD00E7B5AD00FFC6AD009494B500B5B5B500BDB5B500DEB5B500E7BD
        B500F7BDB500FFC6B500FFCEB500526BBD00BDBDBD00E7C6BD00FFCEBD00314A
        C6009CA5C600C6BDC600C6C6C600CEC6C600E7C6C600E7CEC600FFD6C6004A63
        CE00CEC6CE00CECECE00EFCECE00FFDECE001842D600214AD6007384D600D6D6
        D600DED6D600F7DED600FFDED600FFE7D600D6F7D6007B94DE00DEDEDE00E7DE
        DE00EFDEDE00FFE7DE001039E7004A6BE700E7E7E700EFE7E700FFEFE7008494
        EF00EFEFEF00FFF7EF004263F700F7F7F700FFF7F700FF00FF000842FF00295A
        FF003163FF006B8CFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
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
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00575757575757
        5757575757575757575757575757575757575757575757575757203A20195757
        2041422E205757575757575757575757203455552E201011152035494E412657
        57575757575720274E5C5C5227210D0205081115203B4E481C5757575720485C
        56555652262618120D0504050811171B5757571B3B555555554E3420191B2026
        211914100604081A5757571B525552482E1C2641261B1A191A1C26261B15121A
        5757571B4E42271B2741484E4E413427201B1A191B20261B5757571B211B2E41
        4841414F5555524E413B2E261C1B1A195757571B2E41414141414E5534333B48
        4E4E030A0A0A0A0A5757571B414141414148552E22162620202E014151581E09
        575757572E4841414E4E262E5246524E2A2E0440542E4C0C5757575757263441
        342035555555524E4E4E01253B1C393F575757575757571A2E483B2034484E4E
        4E4E080808070B3E5B575757575757205555482E2E3441414141342027575757
        5A5B5757575757574A4B45444343434A4948345757575757575A575757575757
        2F4B443D38302B2B243C15151515151557575757575757572F4B443D38302B24
        1D570017571F13085757575757575757374B443D38302B241D57015757592D10
        5757575757575757374B443D38302B242A5704475A574C0F5757575757575757
        374B443D38302B2A2A57013257574D315757575757575736504B443D38302C2A
        5757040808080E4C5B57575757575737534B453D38382A2A5757575757575757
        5A5B575757572837362F2F2929232A575757575757575757575A}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton7Click
    end
    object BitBtn8: TBitBtn
      Left = 385
      Top = 448
      Width = 48
      Height = 39
      Hint = 'Confirmar'
      Default = True
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = BitBtn8Click
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object Grid: TwwDBGrid
      Left = 293
      Top = 104
      Width = 236
      Height = 336
      ControlType.Strings = (
        'NFI_MARCADOR_CROS;CheckBox;*;')
      Selected.Strings = (
        'NFI_MARCADOR_CROS'#9'1'#9'Marcador'#9'F'
        'NFI_NUMERO'#9'10'#9'Nota Fiscal N�'#9'F')
      IniAttributes.FileName = 'delphi32.ini'
      IniAttributes.SectionName = 'FPcPGrid'
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      EditControlOptions = [ecoCheckboxSingleClick, ecoSearchOwnerForm]
      Color = clWhite
      DataSource = DS_NFREL
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -24
      Font.Name = 'Arial'
      Font.Style = []
      KeyOptions = []
      Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      ParentFont = False
      TabOrder = 1
      TitleAlignment = taCenter
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clNavy
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = [fsBold]
      TitleLines = 1
      TitleButtons = False
      FooterColor = clInactiveCaption
      FooterCellColor = clGrayText
    end
    object BitBtn9: TBitBtn
      Left = 289
      Top = 448
      Width = 48
      Height = 39
      Hint = 'Marcar Todos'
      Default = True
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = BitBtn9Click
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FF92635DA46769A46769A46769A46769A46769A46769A46769A46769A467
        69A46769A46769A46769A46769A46769A46769A46769A46769A46769FF00FFFF
        00FFFF00FFFF00FFFF00FF93655EFFDCB7FFDAB5FED9B1FED8AFFED7ABFED5A7
        FED4A5FED3A3FED0A0FECF9FFECE9DFECE9AFECC98FECB96FECB96FECB96FECB
        969F6F60FF00FFFF00FFFF00FFFF00FFFF00FF93655FFEDEBCFEDDB8FFDAB5FE
        D9B2FED8AFFED7ABFED5AAFED4A6FED3A4FED0A0FECF9EFECF9DFECE9CFECE99
        FECC97FECB96FECB969F6F60FF00FFFF00FFFF00FFFF00FFFF00FF93655FFFE1
        C1FEE0BDFEDDBAFEDCB6FEDAB2FED8B0FED8ADFED5AAFED4A7FED3A4FED1A300
        8100FECF9DFFCE9CFECE99FECC98FECC979F6F60FF00FFFF00FFFF00FFFF00FF
        FF00FF93655FFFE3C5FEE1C1FFE0BDFFDEBBFEDCB7FEDAB4FED9B1FFD8ADFED5
        ABFED4A9008100008100008100FED09EFECF9DFECC99FECC989F6F60FF00FFFF
        00FFFF00FFFF00FFFF00FF936560FFE5CAFEE3C6D58127D58127D58127D58127
        D58127D58127FED8AF008100327725648E43008100548437FECF9EFECE9CFECE
        9A9F6F60FF00FFFF00FFFF00FFFF00FFFF00FF956660FFE7CEFFE5CBFFE5C7FE
        E2C4FEE0C0FEE0BCFFDDBAFEDCB6FFDAB2008100F6D3A7FFD5AAAFB174008100
        008100F8CE9CFECF9D9F6F60FF00FFFF00FFFF00FFFF00FFFF00FF986963FFEA
        D3FEE9CFFFE6CCFEE5C9FEE3C4FEE1C1FEE0BDFFDEBBFEDCB6FEDAB4FED9B1FE
        D7ADFED5ABEECE9E008100008100FFD09F9F6F60FF00FFFF00FFFF00FFFF00FF
        FF00FF9E6E64FFEBD8FEEBD4FEE9D0FEE6CEFEE5CAFEE3C6FFE1C2FEE0BFFFDE
        BCFEDCB7FEDAB5FED9B1FED7AFFED7ABFED4A9FFD4A5FED1A39F6F60FF00FFFF
        00FFFF00FFFF00FFFF00FFA37266FEEEDCFFEDD8FEEAD4FEE9D1FFE7CEFEE6CB
        FFE3C6FEE2C4FEE1C0FEDEBCFFDDB8008100FED9B2FED9AFFED7ABFED5A9FED4
        A69F6F60FF00FFFF00FFFF00FFFF00FFFF00FFA77568FFF0E0FEEEDDFEEDD9FF
        EBD5FFE9D1FFE7CFFEE6CBFFE3C7FEE3C4FEE1C1008100008100008100FFDAB2
        FED8B0FED8ADFED5AA9F6F62FF00FFFF00FFFF00FFFF00FFFF00FFAC7969FFF2
        E5FFF2E2D58127D58127D58127D58127D58127D58127FFE5C9008100327A2964
        934C00810054893EFEDAB5FED9B1FED7ADA07063FF00FFFF00FFFF00FFFF00FF
        FF00FFB17E6BFFF4E9FFF2E6FFF0E2FEEFE0FFEEDCFFEBD8FFEAD4FEE9D1FEE7
        CC008100F6E0C0FEE2C2AFBA84008100008100F8D9B1FED9B1A07264FF00FFFF
        00FFFF00FFFF00FFFF00FFB6816CFFF7EDFFF4EAFFF3E7FFF2E2FEEFE0FFEEDC
        FFEDD9FFEBD5FEEAD1FFE7CFFEE6CAFFE3C7FFE2C2EED9B5008100008100FEDC
        B69D7065FF00FFFF00FFFF00FFFF00FFFF00FFBB846EFFF8EFFEF7EEFEF6EBFF
        F3E7FEF2E5FFF0E1FFEEDEFFEDD9FEEBD7FEEAD3FEE9CFFEE6CCFFE5C7FEE3C5
        FEE1C1FEE0BDFEDDBB896A63FF00FFFF00FFFF00FFFF00FFFF00FFC0896FFFFA
        F3FFF8F2FFF7EEFFF6EAFFF4E7FEF3E6FFF2E1FFEFDEFFEDDAFFEDD7FFEAD400
        8100FEE7CCFEE5C9FFE3C6FFE1C2FEE1BF806762FF00FFFF00FFFF00FFFF00FF
        FF00FFC58C70FFFCF7FEFAF4FFF8F2FFF7EFFFF6EDFFF4E9FFF3E6FFF0E3FFF0
        DEFEEEDC008100008100008100FFE7CEFFE6CBFEE3C7FFE2C2846964FF00FFFF
        00FFFF00FFFF00FFFF00FFCB9173FFFCFAFFFBF8D58127D58127D58127D58127
        D58127D58127FEF2E3008100327D2E649956008100548F47FFE7CFFFE6CBFFE5
        C7986859FF00FFFF00FFFF00FFFF00FFFF00FFCF9674FFFEFCFFFEFBFFFBF8FF
        FAF6FEFAF3FFF8F0FFF6EEFFF4EBFEF3E7008100F7EEDAFFEFDEAFC497008100
        008100F8E6CBFFE7CBA5686BFF00FFFF00FFFF00FFFF00FFFF00FFD49875FFFE
        FFFFFEFCFFFEFAFFFBF8FFFBF6FFFAF3FFF8F2FFF8EFFFF6EBFFF4E9FFF3E5FF
        F2E2FFEFE0EFE6CF008100008100FEE9D0846964FF00FFFF00FFFF00FFFF00FF
        FF00FFD49875FFFFFFFFFFFFFFFEFEFFFEFBFFFCFAFFFBF7FFFBF4FFF8F2FFF7
        EFFFF6EBFEF4E9FFF3E6FEF2E3FFF0E0FFEFDDFEEDD9FEEBD5846964FF00FFFF
        00FFFF00FFFF00FFFF00FFD49875FFFFFFFFFFFFFFFFFFFFFFFEFFFEFBFEFEFB
        FFFBF8FFFBF4FFF8F3FEF8F0FFF7EEFFF4EAFFF4E7FEF2E5FEF0E1FEEFDDFFED
        DA846964FF00FFFF00FFFF00FFFF00FFFF00FFCF8E68CF8E68CF8E68CF8E68CF
        8E68CF8E68CF8E68CF8E68CF8E68CF8E68CF8E68CF8E68CF8E68CF8E68CF8E68
        CF8E68CF8E68CF8E68846964FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    end
    object BitBtn10: TBitBtn
      Left = 338
      Top = 448
      Width = 48
      Height = 39
      Hint = 'Desmarcar Todos'
      Default = True
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = BitBtn10Click
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FF7A2D067A2D067A2D067A2D067A2D067A2D067A2D06FF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FF7A2D061FEDFF22E2FF2ADDFF43C9D439D4E17A2D06FF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF7A2D06B2C6A0ABAC82C78F4AD475
        23C668177A2D06FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF7A2D06FCB268
        E79545E17E2BD56C18CC59067A2D06FF00FF0000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000000000FF
        00FF7A2D0628B540289327D5AC70EAA96FE3A3657A2D06FF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FF7A2D0626C45188D095FFFFFFFFFFFFFFFFFF7A2D06FF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF7A2D067A2D067A2D067A2D067A2D
        067A2D067A2D06FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FF7A2D067A2D067A2D067A2D067A2D067A2D067A2D06FF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FF7A2D061FEDFF22E2FF2ADDFF43C9D439D4E17A2D06FF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF7A2D06B2C6A0ABAC82C78F4AD475
        23C668177A2D06FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF7A2D06FCB268
        E79545E17E2BD56C18CC59067A2D06FF00FF0000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000000000FF
        00FF7A2D0628B540289327D5AC70EAA96FE3A3657A2D06FF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FF7A2D0626C45188D095FFFFFFFFFFFFFFFFFF7A2D06FF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF7A2D067A2D067A2D067A2D067A2D
        067A2D067A2D06FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FF7A2D067A2D067A2D067A2D067A2D067A2D067A2D06FF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FF7A2D061FEDFF22E2FF2ADDFF43C9D439D4E17A2D06FF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF7A2D06B2C6A0ABAC82C78F4AD475
        23C668177A2D06FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF7A2D06FCB268
        E79545E17E2BD56C18CC59067A2D06FF00FF0000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000000000FF
        00FF7A2D0628B540289327D5AC70EAA96FE3A3657A2D06FF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FF7A2D0626C45188D095FFFFFFFFFFFFFFFFFF7A2D06FF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF7A2D067A2D067A2D067A2D067A2D
        067A2D067A2D06FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    end
  end
  object Q_OS: TwwQuery
    AutoCalcFields = False
    CachedUpdates = True
    BeforeEdit = Q_OSBeforeEdit
    AfterPost = Q_OSAfterPost
    BeforeDelete = Q_OSBeforeDelete
    AfterDelete = Q_OSAfterDelete
    OnNewRecord = Q_OSNewRecord
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    RequestLive = True
    SQL.Strings = (
      'SELECT '
      #9'A.*,'
      #9'B.CTT_NOME,'
      #9'C.CLIN_CGCCPF AS CNPJ,'
      #9'C.CLIN_RAZA'
      'FROM OS A INNER JOIN CONTRATO B '
      'ON A.CTT_ID = B.CTT_ID INNER JOIN CLIENTENBF C'
      'ON A.CLIN_ID = C.CLIN_ID'
      'ORDER BY A.OS_ID')
    UpdateObject = UPD_OS
    ValidateWithMask = True
    Left = 796
    Top = 2
    object Q_OSOS_DATA: TDateTimeField
      DisplayLabel = 'Data'
      DisplayWidth = 18
      FieldName = 'OS_DATA'
      Origin = 'NBFDADOS.OS.OS_DATA'
      EditMask = '!90/90/0000;1;_'
    end
    object Q_OSOS_ID: TAutoIncField
      Alignment = taCenter
      FieldName = 'OS_ID'
      Origin = 'NBFDADOS.OS.OS_ID'
      Visible = False
    end
    object Q_OSCLIN_ID: TIntegerField
      FieldName = 'CLIN_ID'
      Origin = 'NBFDADOS.OS.CLIN_ID'
      Visible = False
    end
    object Q_OSCTT_ID: TIntegerField
      FieldName = 'CTT_ID'
      Origin = 'NBFDADOS.OS.CTT_ID'
      Visible = False
    end
    object Q_OSTOS_ID: TIntegerField
      FieldName = 'TOS_ID'
      Origin = 'NBFDADOS.OS.TOS_ID'
      Visible = False
    end
    object Q_OSOS_USUARIO: TIntegerField
      FieldName = 'OS_USUARIO'
      Origin = 'NBFDADOS.OS.OS_USUARIO'
      Visible = False
    end
    object Q_OSCTT_NOME: TStringField
      FieldName = 'CTT_NOME'
      Size = 40
    end
    object Q_OSCLIN_RAZA: TStringField
      FieldName = 'CLIN_RAZA'
      Size = 40
    end
    object Q_OSOS_GEROU: TStringField
      FieldName = 'OS_GEROU'
      Origin = 'NBFDADOS.OS.OS_GEROU'
      FixedChar = True
      Size = 1
    end
    object Q_OSOS_CONCLUIDA: TStringField
      FieldName = 'OS_CONCLUIDA'
      Origin = 'NBFDADOS.OS.OS_CONCLUIDA'
      FixedChar = True
      Size = 1
    end
    object Q_OSTPCARGA: TStringField
      FieldName = 'TPCARGA'
      Origin = 'NBFDADOS.OS.OS_ID'
      FixedChar = True
      Size = 1
    end
    object Q_OSCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 14
    end
  end
  object DS_OS: TwwDataSource
    DataSet = cdsOS
    OnDataChange = DS_OSDataChange
    Left = 800
    Top = 137
  end
  object Q_CLIN: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select *  from CLIENTENBF where'
      'CLIN_CONTRATO = '#39'S'#39
      'order by CLIN_RAZA ')
    ValidateWithMask = True
    Left = 841
    Top = 2
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
    object Q_CLINCLIN_UTIL_COD: TStringField
      FieldName = 'CLIN_UTIL_COD'
      FixedChar = True
      Size = 1
    end
    object Q_CLINCLIN_PESSOA: TStringField
      FieldName = 'CLIN_PESSOA'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_PESSOA'
      FixedChar = True
      Size = 1
    end
    object Q_CLINCLIN_NOME: TStringField
      FieldName = 'CLIN_NOME'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_NOME'
      FixedChar = True
      Size = 30
    end
    object Q_CLINCLIN_CGCCPF: TStringField
      FieldName = 'CLIN_CGCCPF'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_CGCCPF'
      FixedChar = True
      Size = 15
    end
    object Q_CLINCLIN_INSCRG: TStringField
      FieldName = 'CLIN_INSCRG'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_INSCRG'
      FixedChar = True
      Size = 15
    end
    object Q_CLINCLIN_ENDERECO: TStringField
      FieldName = 'CLIN_ENDERECO'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_ENDERECO'
      FixedChar = True
      Size = 50
    end
    object Q_CLINCLIN_ENDERECO_COMPL: TStringField
      FieldName = 'CLIN_ENDERECO_COMPL'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_ENDERECO_COMPL'
      FixedChar = True
    end
    object Q_CLINCLIN_ENDERECO_BAIRRO: TStringField
      FieldName = 'CLIN_ENDERECO_BAIRRO'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_ENDERECO_BAIRRO'
      FixedChar = True
      Size = 40
    end
    object Q_CLINCLIN_MUNICIPIO: TStringField
      FieldName = 'CLIN_MUNICIPIO'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_MUNICIPIO'
      FixedChar = True
      Size = 40
    end
    object Q_CLINUF_SIGLA: TStringField
      FieldName = 'UF_SIGLA'
      Origin = 'NBFDADOS.CLIENTENBF.UF_SIGLA'
      FixedChar = True
      Size = 2
    end
    object Q_CLINCLIN_CEP: TStringField
      FieldName = 'CLIN_CEP'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_CEP'
      FixedChar = True
      Size = 8
    end
    object Q_CLINCLIN_TEL1: TStringField
      FieldName = 'CLIN_TEL1'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_TEL1'
      FixedChar = True
      Size = 11
    end
    object Q_CLINCLIN_TEL2: TStringField
      FieldName = 'CLIN_TEL2'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_TEL2'
      FixedChar = True
      Size = 11
    end
    object Q_CLINCLIN_FAX: TStringField
      FieldName = 'CLIN_FAX'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_FAX'
      FixedChar = True
      Size = 11
    end
    object Q_CLINCLIN_EMAIL: TStringField
      FieldName = 'CLIN_EMAIL'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_EMAIL'
      FixedChar = True
      Size = 60
    end
    object Q_CLINCON_CODI: TStringField
      FieldName = 'CON_CODI'
      Origin = 'NBFDADOS.CLIENTENBF.CON_CODI'
      FixedChar = True
      Size = 6
    end
    object Q_CLINCLIN_CONTRATO: TStringField
      FieldName = 'CLIN_CONTRATO'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_CONTRATO'
      FixedChar = True
      Size = 1
    end
    object Q_CLINMUN_ID: TIntegerField
      FieldName = 'MUN_ID'
      Origin = 'NBFDADOS.CLIENTENBF.MUN_ID'
    end
    object Q_CLINCLIN_TIPOSALDO: TStringField
      FieldName = 'CLIN_TIPOSALDO'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_ID'
      FixedChar = True
      Size = 1
    end
  end
  object Q_CTT: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select CTT_ID,CTT_NOME,TOS_ID,CLIN_ID,PAR_ID,'
      'CTT_TERCEIRO from CONTRATO where'
      'CTT_ID = :CTT_ID')
    ValidateWithMask = True
    Left = 939
    Top = 2
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CTT_ID'
        ParamType = ptUnknown
      end>
    object Q_CTTCTT_NOME: TStringField
      DisplayLabel = 'Nome do Contrato'
      DisplayWidth = 40
      FieldName = 'CTT_NOME'
      Origin = 'NBFDADOS.CONTRATO.CTT_NOME'
      FixedChar = True
      Size = 40
    end
    object Q_CTTCTT_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'CTT_ID'
      Origin = 'NBFDADOS.CONTRATO.CTT_ID'
      Visible = False
    end
    object Q_CTTTOS_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'TOS_ID'
      Origin = 'NBFDADOS.CONTRATO.TOS_ID'
      Visible = False
    end
    object Q_CTTCLIN_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'CLIN_ID'
      Origin = 'NBFDADOS.CONTRATO.CLIN_ID'
      Visible = False
    end
    object Q_CTTCTT_TERCEIRO: TStringField
      FieldName = 'CTT_TERCEIRO'
      Origin = 'NBFDADOS.CONTRATO.CTT_TERCEIRO'
      FixedChar = True
      Size = 1
    end
    object Q_CTTPAR_ID: TIntegerField
      FieldName = 'PAR_ID'
      Origin = 'NBFDADOS.CONTRATO.PAR_ID'
    end
  end
  object Q_TOS: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select TOS_ID,TOS_NOME  from TPOS wherE TOS_ID = :TOS_ID '
      '')
    ValidateWithMask = True
    Left = 892
    Top = 2
    ParamData = <
      item
        DataType = ftInteger
        Name = 'TOS_ID'
        ParamType = ptUnknown
      end>
    object Q_TOSTOS_NOME: TStringField
      DisplayWidth = 40
      FieldName = 'TOS_NOME'
      Origin = 'NBFDADOS.TPOS.TOS_NOME'
      FixedChar = True
      Size = 40
    end
    object Q_TOSTOS_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'TOS_ID'
      Origin = 'NBFDADOS.TPOS.TOS_ID'
      Visible = False
    end
  end
  object STP_SERVESPEC: TwwStoredProc
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    StoredProcName = 'dbo.STP_SERV_ESPEC'
    ValidateWithMask = True
    Left = 208
    Top = 306
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Result'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = '@CTT'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@OS'
        ParamType = ptInput
      end>
  end
  object Q_OSSERV: TwwQuery
    CachedUpdates = True
    BeforeEdit = Q_OSSERVBeforeEdit
    BeforePost = Q_OSSERVBeforePost
    AfterPost = Q_OSSERVAfterPost
    BeforeDelete = Q_OSSERVBeforeDelete
    AfterDelete = Q_OSSERVAfterDelete
    OnNewRecord = Q_OSSERVNewRecord
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    DataSource = DS_OS
    RequestLive = True
    SQL.Strings = (
      'select A.*,B.SER_NOME,C.TSER_NOME '
      'from OS_SERVICO A,SERVICO B,TPSERVICO C'
      'where OS_ID = :OS_ID and'
      '           A.SER_ID = B.SER_ID and'
      '           A.TSER_ID = C.TSER_ID'
      'order by C.TSER_NOME,B.SER_NOME'
      '')
    UpdateObject = UPD_OSSERV
    ControlType.Strings = (
      'OS_SERVICO_COBRA;CustomEdit;wwDBComboBox3')
    ValidateWithMask = True
    Left = 1104
    Top = 2
    ParamData = <
      item
        DataType = ftInteger
        Name = 'OS_ID'
        ParamType = ptInput
      end>
    object Q_OSSERVTSER_NOME: TStringField
      DisplayLabel = 'Tipo de Servi�o'
      DisplayWidth = 40
      FieldName = 'TSER_NOME'
      Origin = 'NBFDADOS.TPSERVICO.TSER_NOME'
      FixedChar = True
      Size = 40
    end
    object Q_OSSERVSER_NOME: TStringField
      DisplayLabel = 'Servi�o'
      DisplayWidth = 40
      FieldName = 'SER_NOME'
      Origin = 'NBFDADOS.SERVICO.SER_NOME'
      FixedChar = True
      Size = 40
    end
    object Q_OSSERVOS_SERVICO_COBRA: TStringField
      DisplayLabel = 'Cobrar ?'
      DisplayWidth = 1
      FieldName = 'OS_SERVICO_COBRA'
      Origin = 'NBFDADOS.OS_SERVICO.OS_SERVICO_COBRA'
      FixedChar = True
      Size = 1
    end
    object Q_OSSERVTDOC_NOME: TStringField
      DisplayLabel = 'Tipo de Documento'
      DisplayWidth = 40
      FieldKind = fkLookup
      FieldName = 'TDOC_NOME'
      LookupDataSet = Q_TDOC
      LookupKeyFields = 'TDOC_ID'
      LookupResultField = 'TDOC_NOME'
      KeyFields = 'TDOC_ID'
      Size = 40
      Lookup = True
    end
    object Q_OSSERVOS_SERVICO_ID: TAutoIncField
      FieldName = 'OS_SERVICO_ID'
      Origin = 'NBFDADOS.OS_SERVICO.OS_SERVICO_ID'
      Visible = False
    end
    object Q_OSSERVOS_ID: TIntegerField
      FieldName = 'OS_ID'
      Origin = 'NBFDADOS.OS_SERVICO.OS_ID'
      Visible = False
    end
    object Q_OSSERVTSER_ID: TIntegerField
      FieldName = 'TSER_ID'
      Origin = 'NBFDADOS.OS_SERVICO.TSER_ID'
      Visible = False
    end
    object Q_OSSERVSER_ID: TIntegerField
      FieldName = 'SER_ID'
      Origin = 'NBFDADOS.OS_SERVICO.SER_ID'
      Visible = False
    end
    object Q_OSSERVTDOC_ID: TIntegerField
      FieldName = 'TDOC_ID'
      Origin = 'NBFDADOS.OS_SERVICO.TDOC_ID'
      Visible = False
    end
  end
  object DS_OSSERV: TwwDataSource
    DataSet = Q_OSSERV
    OnDataChange = DS_OSSERVDataChange
    Left = 1110
    Top = 58
  end
  object Q_TDOC: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    DataSource = DS_OS
    SQL.Strings = (
      'select *'
      'from TPDOC_TPOS_OS  where '
      'OS_ID = :OS_ID'
      'order by OTD_ORDEM'
      '')
    ValidateWithMask = True
    Left = 993
    Top = 2
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'OS_ID'
        ParamType = ptInput
      end>
    object Q_TDOCTDOC_NOME: TStringField
      DisplayLabel = 'Tipos de Documentos'
      DisplayWidth = 39
      FieldName = 'TDOC_NOME'
      Origin = 'NBFDADOS.TPDOC_TPOS_OS.TDOC_ID'
      FixedChar = True
      Size = 40
    end
    object Q_TDOCOTD_ID: TAutoIncField
      FieldName = 'OTD_ID'
      Origin = 'NBFDADOS.TPDOC_TPOS_OS.OTD_ID'
      Visible = False
    end
    object Q_TDOCOS_ID: TIntegerField
      FieldName = 'OS_ID'
      Origin = 'NBFDADOS.TPDOC_TPOS_OS.TDTO_ID'
      Visible = False
    end
    object Q_TDOCTDOC_ID: TIntegerField
      FieldName = 'TDOC_ID'
      Origin = 'NBFDADOS.TPDOC_TPOS_OS.TOS_ID'
      Visible = False
    end
    object Q_TDOCOTD_ORDEM: TIntegerField
      FieldName = 'OTD_ORDEM'
      Origin = 'NBFDADOS.TPDOC_TPOS_OS.OTD_ORDEM'
      Visible = False
    end
    object Q_TDOCOTD_CATEGORIA: TStringField
      FieldName = 'OTD_CATEGORIA'
      Origin = 'NBFDADOS.TPDOC_TPOS_OS.OTD_CATEGORIA'
      Visible = False
      FixedChar = True
      Size = 1
    end
  end
  object Q_CTT2: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select CTT_ID,CTT_NOME from CONTRATO')
    ValidateWithMask = True
    Left = 1162
    Top = 2
    object Q_CTT2CTT_ID: TAutoIncField
      FieldName = 'CTT_ID'
      Origin = 'NBFDADOS.CONTRATO.CTT_ID'
    end
    object Q_CTT2CTT_NOME: TStringField
      FieldName = 'CTT_NOME'
      Origin = 'NBFDADOS.CONTRATO.CTT_NOME'
      FixedChar = True
      Size = 40
    end
  end
  object Q_OSESPEC: TwwQuery
    CachedUpdates = True
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    RequestLive = True
    SQL.Strings = (
      'Select *'
      'from OS_ESPECIFICACOES'
      'where '
      '       OS_ID = :OS_ID and'
      '       SER_ID = :SER_ID '
      ' order BY OS_ESPEC_ORDEM')
    UpdateObject = UPD_OSESPEC
    ControlType.Strings = (
      'OS_ESPEC_TPCARGA;CustomEdit;wwDBComboBox2')
    ValidateWithMask = True
    Left = 1225
    Top = 2
    ParamData = <
      item
        DataType = ftInteger
        Name = 'OS_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SER_ID'
        ParamType = ptInput
      end>
    object Q_OSESPECOS_ESPEC_ORDEM: TIntegerField
      DisplayLabel = 'Ordem'
      DisplayWidth = 10
      FieldName = 'OS_ESPEC_ORDEM'
      Origin = 'NBFDADOS.OS_ESPECIFICACOEs.OS_ESPEC_ORDEM'
    end
    object Q_OSESPECOS_ESPEC_FATOR: TFloatField
      DisplayLabel = 'Fator'
      DisplayWidth = 10
      FieldName = 'OS_ESPEC_FATOR'
      Origin = 'NBFDADOS.OS_ESPECIFICACOEs.OS_ESPEC_FATOR'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_OSESPECUCOB_NOME: TStringField
      DisplayLabel = 'Unidade de Cobran�a'
      DisplayWidth = 40
      FieldKind = fkLookup
      FieldName = 'UCOB_NOME'
      LookupDataSet = Q_UCOB
      LookupKeyFields = 'UCOB_ID'
      LookupResultField = 'UCOB_NOME'
      KeyFields = 'UCOB_ID'
      Size = 40
      Lookup = True
    end
    object Q_OSESPECOS_ESPEC_MINIMA: TFloatField
      DisplayLabel = 'M�nimo'
      DisplayWidth = 10
      FieldName = 'OS_ESPEC_MINIMA'
      Origin = 'NBFDADOS.OS_ESPECIFICACOEs.OS_ESPEC_MINIMA'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_OSESPECOS_ESPEC_TPCARGA: TStringField
      DisplayLabel = 'Tipo de Carga'
      DisplayWidth = 1
      FieldName = 'OS_ESPEC_TPCARGA'
      Origin = 'NBFDADOS.OS_ESPECIFICACOEs.OS_ESPEC_TPCARGA'
      FixedChar = True
      Size = 1
    end
    object Q_OSESPECREG_NOME: TStringField
      DisplayLabel = 'Regi�o'
      DisplayWidth = 40
      FieldKind = fkLookup
      FieldName = 'REG_NOME'
      LookupDataSet = Q_REG
      LookupKeyFields = 'REG_ID'
      LookupResultField = 'REG_NOME'
      KeyFields = 'REG_ID'
      Size = 40
      Lookup = True
    end
    object Q_OSESPECVEIC_NOME: TStringField
      DisplayLabel = 'Tipo de Ve�culo'
      DisplayWidth = 40
      FieldKind = fkLookup
      FieldName = 'VEIC_NOME'
      LookupDataSet = Q_VEIC
      LookupKeyFields = 'VEIC_ID'
      LookupResultField = 'VEIC_NOME'
      KeyFields = 'VEIC_ID'
      Size = 40
      Lookup = True
    end
    object Q_OSESPECTPRO_NOME: TStringField
      DisplayLabel = 'Tipo de Produto'
      DisplayWidth = 40
      FieldKind = fkLookup
      FieldName = 'TPRO_NOME'
      LookupDataSet = Q_TPROD
      LookupKeyFields = 'TPRO_ID'
      LookupResultField = 'TPRO_NOME'
      KeyFields = 'TPRO_ID'
      Size = 40
      Lookup = True
    end
    object Q_OSESPECOS_ESPEC_AREA_DE: TFloatField
      DisplayLabel = 'Faixa de �rea(M2) de'
      DisplayWidth = 10
      FieldName = 'OS_ESPEC_AREA_DE'
      Origin = 'NBFDADOS.OS_ESPECIFICACOES.OS_ESPEC_AREA_DE'
      DisplayFormat = '###,###,##0.0'
      EditFormat = '###,###,##0.0'
    end
    object Q_OSESPECOS_ESPEC_AREA_ATE: TFloatField
      DisplayLabel = 'Faixa de �rea(M2) at�'
      DisplayWidth = 10
      FieldName = 'OS_ESPEC_AREA_ATE'
      Origin = 'NBFDADOS.OS_ESPECIFICACOES.OS_ESPEC_AREA_ATE'
      DisplayFormat = '###,###,##0.0'
      EditFormat = '###,###,##0.0'
    end
    object Q_OSESPECOS_ESPEC_QTDEPALLET_DE: TIntegerField
      DisplayLabel = 'Faixa de Qtde.(Pallets) de'
      DisplayWidth = 10
      FieldName = 'OS_ESPEC_QTDEPALLET_DE'
      Origin = 'NBFDADOS.OS_ESPECIFICACOEs.OS_ESPEC_QTDEPALLET_DE'
    end
    object Q_OSESPECOS_ESPEC_QTDEPALLET_ATE: TIntegerField
      DisplayLabel = 'Faixa de Qtde.(Pallets) at�'
      DisplayWidth = 10
      FieldName = 'OS_ESPEC_QTDEPALLET_ATE'
      Origin = 'NBFDADOS.OS_ESPECIFICACOEs.OS_ESPEC_QTDEPALLET_ATE'
    end
    object Q_OSESPECOS_ESPEC_PESO_DE: TFloatField
      DisplayLabel = 'Faixa de Peso(Ton.) de'
      DisplayWidth = 10
      FieldName = 'OS_ESPEC_PESO_DE'
      Origin = 'NBFDADOS.OS_ESPECIFICACOES.OS_ESPEC_PESO_DE'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_OSESPECOS_ESPEC_PESO_ATE: TFloatField
      DisplayLabel = 'Faixa de Peso(Ton.) at�'
      DisplayWidth = 10
      FieldName = 'OS_ESPEC_PESO_ATE'
      Origin = 'NBFDADOS.OS_ESPECIFICACOES.OS_ESPEC_PESO_ATE'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_OSESPECOS_ESPEC_VOL_DE: TFloatField
      DisplayLabel = 'Faixa de Volume(M3) de'
      DisplayWidth = 10
      FieldName = 'OS_ESPEC_VOL_DE'
      Origin = 'NBFDADOS.OS_ESPECIFICACOES.OS_ESPEC_VOL_DE'
      DisplayFormat = '###,###,##0.0'
      EditFormat = '###,###,##0.0'
    end
    object Q_OSESPECOS_ESPEC_VOL_ATE: TFloatField
      DisplayLabel = 'Faixa de Volume(M3) at�'
      DisplayWidth = 10
      FieldName = 'OS_ESPEC_VOL_ATE'
      Origin = 'NBFDADOS.OS_ESPECIFICACOES.OS_ESPEC_VOL_ATE'
      DisplayFormat = '###,###,##0.0'
      EditFormat = '###,###,##0.0'
    end
    object Q_OSESPECOS_ESPEC_ID: TAutoIncField
      FieldName = 'OS_ESPEC_ID'
      Origin = 'NBFDADOS.OS_ESPECIFICACOEs.OS_ESPEC_ID'
      Visible = False
    end
    object Q_OSESPECOS_ID: TIntegerField
      FieldName = 'OS_ID'
      Origin = 'NBFDADOS.OS_ESPECIFICACOEs.OS_ID'
      Visible = False
    end
    object Q_OSESPECOS_SERVICO_ID: TIntegerField
      FieldName = 'OS_SERVICO_ID'
      Origin = 'NBFDADOS.OS_ESPECIFICACOEs.OS_SERVICO_ID'
      Visible = False
    end
    object Q_OSESPECTSER_ID: TIntegerField
      FieldName = 'TSER_ID'
      Origin = 'NBFDADOS.OS_ESPECIFICACOEs.TSER_ID'
      Visible = False
    end
    object Q_OSESPECSER_ID: TIntegerField
      FieldName = 'SER_ID'
      Origin = 'NBFDADOS.OS_ESPECIFICACOEs.SER_ID'
      Visible = False
    end
    object Q_OSESPECUCOB_ID: TIntegerField
      FieldName = 'UCOB_ID'
      Origin = 'NBFDADOS.OS_ESPECIFICACOEs.UCOB_ID'
      Visible = False
    end
    object Q_OSESPECCLIF_ID: TIntegerField
      FieldName = 'CLIF_ID'
      Origin = 'NBFDADOS.OS_ESPECIFICACOEs.CLIF_ID'
      Visible = False
    end
    object Q_OSESPECVEIC_ID: TIntegerField
      FieldName = 'VEIC_ID'
      Origin = 'NBFDADOS.OS_ESPECIFICACOEs.VEIC_ID'
      Visible = False
    end
    object Q_OSESPECREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'NBFDADOS.OS_ESPECIFICACOEs.REG_ID'
      Visible = False
    end
    object Q_OSESPECTPRO_ID: TIntegerField
      FieldName = 'TPRO_ID'
      Origin = 'NBFDADOS.OS_ESPECIFICACOEs.TPRO_ID'
      Visible = False
    end
    object Q_OSESPECCLIF_NOME: TStringField
      FieldKind = fkLookup
      FieldName = 'CLIF_NOME'
      LookupDataSet = Q_CLIF
      LookupKeyFields = 'CLIF_ID'
      LookupResultField = 'CLIF_RAZA'
      KeyFields = 'CLIF_ID'
      Visible = False
      Size = 40
      Lookup = True
    end
    object Q_OSESPECOS_ESPEC_ORIGEM: TStringField
      FieldName = 'OS_ESPEC_ORIGEM'
      Origin = 'NBFDADOS.OS_ESPECIFICACOES.OS_ESPEC_ORIGEM'
      Visible = False
      FixedChar = True
      Size = 1
    end
  end
  object DS_OSESPEC: TwwDataSource
    DataSet = cdsOSESPEC
    Left = 1224
    Top = 146
  end
  object UPD_OSSERV: TUpdateSQL
    ModifySQL.Strings = (
      'update OS_SERVICO'
      'set'
      '  TSER_ID = :TSER_ID,'
      '  SER_ID = :SER_ID,'
      '  OS_SERVICO_COBRA = :OS_SERVICO_COBRA,'
      '  TDOC_ID = :TDOC_ID'
      'where'
      '  OS_SERVICO_ID = :OLD_OS_SERVICO_ID')
    InsertSQL.Strings = (
      'insert into OS_SERVICO'
      '  (OS_ID,TSER_ID, SER_ID, OS_SERVICO_COBRA, TDOC_ID)'
      'values'
      '  (:OS_ID, :TSER_ID, :SER_ID, :OS_SERVICO_COBRA, :TDOC_ID)')
    DeleteSQL.Strings = (
      'delete from OS_SERVICO'
      'where'
      '  OS_SERVICO_ID = :OLD_OS_SERVICO_ID')
    Left = 800
    Top = 562
  end
  object DS_CLIN: TwwDataSource
    DataSet = cdsClin
    OnDataChange = DS_CLINDataChange
    Left = 846
    Top = 137
  end
  object DS_TOS: TwwDataSource
    DataSet = cdsTOS
    Left = 894
    Top = 137
  end
  object Q_SERV: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      
        'Select A.*,B.TSER_NOME from SERVICO A,TPSERVICO B where A.TSER_I' +
        'D = B.TSER_ID'
      'order by B.TSER_NOME,A.SER_NOME')
    ValidateWithMask = True
    Left = 800
    Top = 202
    object Q_SERVSER_NOME: TStringField
      DisplayLabel = 'Servi�o'
      DisplayWidth = 40
      FieldName = 'SER_NOME'
      Origin = 'NBFDADOS.SERVICO.SER_NOME'
      FixedChar = True
      Size = 40
    end
    object Q_SERVTSER_NOME: TStringField
      DisplayLabel = 'Tipo de Servi�o'
      DisplayWidth = 40
      FieldName = 'TSER_NOME'
      Origin = 'NBFDADOS.TPSERVICO.TSER_NOME'
      FixedChar = True
      Size = 40
    end
    object Q_SERVSER_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'SER_ID'
      Origin = 'NBFDADOS.SERVICO.SER_ID'
      Visible = False
    end
    object Q_SERVTSER_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'TSER_ID'
      Origin = 'NBFDADOS.SERVICO.TSER_ID'
      Visible = False
    end
  end
  object Q_TSERV: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select * from TPSERVICO ')
    ValidateWithMask = True
    Left = 1046
    Top = 2
    object Q_TSERVTSER_ID: TAutoIncField
      FieldName = 'TSER_ID'
      Origin = 'NBFDADOS.TPSERVICO.TSER_ID'
    end
    object Q_TSERVTSER_NOME: TStringField
      FieldName = 'TSER_NOME'
      Origin = 'NBFDADOS.TPSERVICO.TSER_NOME'
      FixedChar = True
      Size = 40
    end
    object Q_TSERVTSER_CONCEITO: TMemoField
      FieldName = 'TSER_CONCEITO'
      Origin = 'NBFDADOS.TPSERVICO.TSER_CONCEITO'
      BlobType = ftMemo
    end
  end
  object Q_GERAESPEC: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    ValidateWithMask = True
    Left = 312
    Top = 418
  end
  object Q_VEIC: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select * from TPVEICULO order by veic_nome')
    ValidateWithMask = True
    Left = 1003
    Top = 202
    object Q_VEICVEIC_NOME: TStringField
      DisplayWidth = 40
      FieldName = 'VEIC_NOME'
      Origin = 'NBFDADOS.TPVEICULO.VEIC_NOME'
      FixedChar = True
      Size = 40
    end
    object Q_VEICVEIC_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'VEIC_ID'
      Origin = 'NBFDADOS.TPVEICULO.VEIC_ID'
      Visible = False
    end
    object Q_VEICVEIC_ORDEM: TIntegerField
      FieldName = 'VEIC_ORDEM'
    end
  end
  object Q_UCOB: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select * from UnidCOBRANCA order by UCOB_NOME')
    ValidateWithMask = True
    Left = 950
    Top = 202
    object Q_UCOBUCOB_NOME: TStringField
      DisplayWidth = 40
      FieldName = 'UCOB_NOME'
      Origin = 'NBFDADOS.UnidCOBRANCA.UCOB_NOME'
      FixedChar = True
      Size = 40
    end
    object Q_UCOBUCOB_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'UCOB_ID'
      Origin = 'NBFDADOS.UnidCOBRANCA.UCOB_ID'
      Visible = False
    end
  end
  object Q_REG: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select * from regiao order by reg_NOME')
    ValidateWithMask = True
    Left = 848
    Top = 202
    object Q_REGREG_NOME: TStringField
      DisplayWidth = 40
      FieldName = 'REG_NOME'
      Origin = 'NBFDADOS.regiao.REG_NOME'
      FixedChar = True
      Size = 40
    end
    object Q_REGREG_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'REG_ID'
      Origin = 'NBFDADOS.regiao.REG_ID'
      Visible = False
    end
  end
  object Q_TPROD: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'select * from TPPRODUTO_CLINBF where'
      'CLIN_ID = :CLIN_ID ')
    ValidateWithMask = True
    Left = 897
    Top = 202
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'CLIN_ID'
        ParamType = ptUnknown
      end>
    object Q_TPRODTPRO_NOME: TStringField
      DisplayWidth = 40
      FieldName = 'TPRO_NOME'
      Origin = 'NBFDADOS.TPPRODUTO_CLINBF.TPRO_NOME'
      FixedChar = True
      Size = 40
    end
    object Q_TPRODTPRO_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'TPRO_ID'
      Origin = 'NBFDADOS.TPPRODUTO_CLINBF.TPRO_ID'
      Visible = False
    end
    object Q_TPRODCLIN_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'CLIN_ID'
      Origin = 'NBFDADOS.TPPRODUTO_CLINBF.CLIN_ID'
      Visible = False
    end
  end
  object Q_CLIF: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'select CLIF_ID,CLIF_RAZA,clif_endereco  from ClienteFINAL '
      'order by CLIF_RAZA')
    ValidateWithMask = True
    Left = 1051
    Top = 202
    object Q_CLIFCLIF_RAZA: TStringField
      DisplayWidth = 50
      FieldName = 'CLIF_RAZA'
      Origin = 'NBFDADOS.ClienteFINAL.CLIF_RAZA'
      FixedChar = True
      Size = 50
    end
    object Q_CLIFclif_endereco: TStringField
      DisplayWidth = 50
      FieldName = 'clif_endereco'
      FixedChar = True
      Size = 50
    end
    object Q_CLIFCLIF_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'CLIF_ID'
      Origin = 'NBFDADOS.ClienteFINAL.CLIF_ID'
      Visible = False
    end
  end
  object UPD_OS: TUpdateSQL
    ModifySQL.Strings = (
      'update OS'
      'set'
      '  CLIN_ID = :CLIN_ID,'
      '  CTT_ID = :CTT_ID,'
      '  TOS_ID = :TOS_ID,'
      '  OS_DATA = :OS_DATA,'
      '  OS_USUARIO = :OS_USUARIO,'
      '  OS_GEROU = :OS_GEROU,'
      '  OS_CONCLUIDA = :OS_CONCLUIDA,'
      '  TPCARGA = :TPCARGA'
      'where'
      '  OS_ID = :OLD_OS_ID')
    InsertSQL.Strings = (
      'insert into OS'
      
        '  (CLIN_ID, CTT_ID, TOS_ID, OS_DATA, OS_USUARIO, OS_GEROU, OS_CO' +
        'NCLUIDA, '
      '   TPCARGA)'
      'values'
      
        '  (:CLIN_ID, :CTT_ID, :TOS_ID, :OS_DATA, :OS_USUARIO, :OS_GEROU,' +
        ' :OS_CONCLUIDA, '
      '   :TPCARGA)')
    DeleteSQL.Strings = (
      'delete from OS'
      'where'
      '  OS_ID = :OLD_OS_ID')
    Left = 944
    Top = 560
  end
  object UPD_OSESPEC: TUpdateSQL
    ModifySQL.Strings = (
      'update OS_ESPECIFICACOES'
      'set'
      '  OS_ID = :OS_ID,'
      '  OS_SERVICO_ID = :OS_SERVICO_ID,'
      '  TSER_ID = :TSER_ID,'
      '  SER_ID = :SER_ID,'
      '  OS_ESPEC_FATOR = :OS_ESPEC_FATOR,'
      '  UCOB_ID = :UCOB_ID,'
      '  OS_ESPEC_MINIMA = :OS_ESPEC_MINIMA,'
      '  OS_ESPEC_TPCARGA = :OS_ESPEC_TPCARGA,'
      '  CLIF_ID = :CLIF_ID,'
      '  VEIC_ID = :VEIC_ID,'
      '  REG_ID = :REG_ID,'
      '  TPRO_ID = :TPRO_ID,'
      '  OS_ESPEC_PESO_DE = :OS_ESPEC_PESO_DE,'
      '  OS_ESPEC_PESO_ATE = :OS_ESPEC_PESO_ATE,'
      '  OS_ESPEC_AREA_DE = :OS_ESPEC_AREA_DE,'
      '  OS_ESPEC_AREA_ATE = :OS_ESPEC_AREA_ATE,'
      '  OS_ESPEC_QTDEPALLET_DE = :OS_ESPEC_QTDEPALLET_DE,'
      '  OS_ESPEC_QTDEPALLET_ATE = :OS_ESPEC_QTDEPALLET_ATE,'
      '  OS_ESPEC_VOL_DE = :OS_ESPEC_VOL_DE,'
      '  OS_ESPEC_VOL_ATE = :OS_ESPEC_VOL_ATE,'
      '  OS_ESPEC_ORDEM = :OS_ESPEC_ORDEM,'
      '  OS_ESPEC_ORIGEM = :OS_ESPEC_ORIGEM'
      'where'
      '  OS_ESPEC_ID = :OLD_OS_ESPEC_ID')
    InsertSQL.Strings = (
      'insert into OS_ESPECIFICACOES'
      
        '  (OS_ID, OS_SERVICO_ID, TSER_ID, SER_ID, OS_ESPEC_FATOR, UCOB_I' +
        'D, '
      'OS_ESPEC_MINIMA, '
      '   OS_ESPEC_TPCARGA, CLIF_ID, VEIC_ID, REG_ID, TPRO_ID, '
      'OS_ESPEC_PESO_DE, '
      '   OS_ESPEC_PESO_ATE, OS_ESPEC_AREA_DE, OS_ESPEC_AREA_ATE, '
      'OS_ESPEC_QTDEPALLET_DE, '
      '   OS_ESPEC_QTDEPALLET_ATE, OS_ESPEC_VOL_DE, OS_ESPEC_VOL_ATE, '
      'OS_ESPEC_ORDEM, '
      '   OS_ESPEC_ORIGEM)'
      'values'
      
        '  (:OS_ID, :OS_SERVICO_ID, :TSER_ID, :SER_ID, :OS_ESPEC_FATOR, :' +
        'UCOB_ID, '
      
        '   :OS_ESPEC_MINIMA, :OS_ESPEC_TPCARGA, :CLIF_ID, :VEIC_ID, :REG' +
        '_ID, '
      ':TPRO_ID, '
      '   :OS_ESPEC_PESO_DE, :OS_ESPEC_PESO_ATE, :OS_ESPEC_AREA_DE, '
      ':OS_ESPEC_AREA_ATE, '
      '   :OS_ESPEC_QTDEPALLET_DE, :OS_ESPEC_QTDEPALLET_ATE, '
      ':OS_ESPEC_VOL_DE, '
      '   :OS_ESPEC_VOL_ATE, :OS_ESPEC_ORDEM, :OS_ESPEC_ORIGEM)')
    DeleteSQL.Strings = (
      'delete from OS_ESPECIFICACOES'
      'where'
      '  OS_ESPEC_ID = :OLD_OS_ESPEC_ID')
    Left = 1016
    Top = 563
  end
  object DS_TDOC: TwwDataSource
    DataSet = Q_TDOC
    Left = 992
    Top = 49
  end
  object Q_ESPECdel: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    ValidateWithMask = True
    Left = 400
    Top = 418
  end
  object Q_SERVdel: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    ValidateWithMask = True
    Left = 296
    Top = 362
  end
  object Q_ORDEMdel: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    ValidateWithMask = True
    Left = 32
    Top = 314
  end
  object Q_AUX: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    ValidateWithMask = True
    Left = 1072
    Top = 354
  end
  object DS_CTT: TwwDataSource
    DataSet = cdsCTT
    Left = 940
    Top = 137
  end
  object STP_RESUMO_CROS: TwwStoredProc
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    StoredProcName = 'dbo.STP_RESUMO_CROS'
    ValidateWithMask = True
    Left = 104
    Top = 370
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Result'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = '@OS_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@CH'
        ParamType = ptInput
      end>
  end
  object STP_TPDO_TPOS_OS: TwwStoredProc
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    StoredProcName = 'dbo.STP_TPDOC_TPOS_OS'
    ValidateWithMask = True
    Left = 208
    Top = 426
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
        Name = '@TOS'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@ADMITE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@PROCEDENCIA'
        ParamType = ptInput
      end>
  end
  object Q_AUX2: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    ValidateWithMask = True
    Left = 1008
    Top = 354
  end
  object STP_CALC: TwwStoredProc
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    StoredProcName = 'dbo.STP_OSCALCULO'
    ValidateWithMask = True
    Left = 101
    Top = 426
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
        Name = '@CTT_ID'
        ParamType = ptInput
      end>
  end
  object Q_CALC: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    DataSource = DS_OS
    SQL.Strings = (
      'Select A.*,B.SER_NOME, C.UCOB_NOME, NF.NFI_NUMERO AS NFnumero'
      'from OS_CALCULO A INNER JOIN SERVICO  B '
      'ON A.SER_ID = B.SER_ID INNER JOIN UNIDCOBRANCA C'
      'ON A.UCOB_ID = C.UCOB_ID left outer JOIN NF NF '
      'ON A.NFI_CODI = NF.NFI_CODI'
      'where '
      '      A.OS_ID = :OS_ID')
    ValidateWithMask = True
    Left = 1097
    Top = 202
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'OS_ID'
        ParamType = ptUnknown
      end>
    object Q_CALCSER_NOME: TStringField
      DisplayLabel = 'Servi�o'
      DisplayWidth = 16
      FieldName = 'SER_NOME'
      Origin = 'NBFDADOS.SERVICO.SER_NOME'
      FixedChar = True
      Size = 40
    end
    object Q_CALCMANI_ID: TIntegerField
      DisplayLabel = 'Manifesto'
      DisplayWidth = 5
      FieldName = 'MANI_ID'
      Origin = 'NBFDADOS.OS_CALCULO.MANI_ID'
    end
    object Q_CALCTPRODdesc: TStringField
      DisplayLabel = 'TpProduto'
      DisplayWidth = 15
      FieldKind = fkLookup
      FieldName = 'TPRODdesc'
      LookupDataSet = Q_TPROD2
      LookupKeyFields = 'TPRO_ID'
      LookupResultField = 'TPRO_NOME'
      KeyFields = 'TPRO_ID'
      Size = 30
      Lookup = True
    end
    object Q_CALCNFnumero: TStringField
      DisplayLabel = 'Nota Fiscal'
      DisplayWidth = 5
      FieldName = 'NFnumero'
      Size = 10
    end
    object Q_CALCTDOC_TIPO: TStringField
      DisplayLabel = 'Tipo'
      DisplayWidth = 2
      FieldName = 'TDOC_TIPO'
      Origin = 'NBFDADOS.OS_CALCULO.TDOC_TIPO'
      FixedChar = True
      Size = 2
    end
    object Q_CALCCALC_GRANDEZA: TFloatField
      DisplayLabel = 'Grandeza'
      DisplayWidth = 10
      FieldName = 'CALC_GRANDEZA'
      Origin = 'NBFDADOS.OS_CALCULO.CALC_GRANDEZA'
      DisplayFormat = '###,###,##0.000'
      EditFormat = '###,###,##0.000'
    end
    object Q_CALCCALC_UNITARIO: TFloatField
      DisplayLabel = 'Unit�rio'
      DisplayWidth = 13
      FieldName = 'CALC_UNITARIO'
      Origin = 'NBFDADOS.OS_CALCULO.CALC_UNITARIO'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_CALCUCOB_NOME: TStringField
      DisplayLabel = 'Unidade Cobran�a'
      DisplayWidth = 24
      FieldName = 'UCOB_NOME'
      Origin = 'NBFDADOS.UNIDCOBRANCA.UCOB_NOME'
      FixedChar = True
      Size = 40
    end
    object Q_CALCCALC_TOTAL: TFloatField
      DisplayLabel = 'Total'
      DisplayWidth = 15
      FieldName = 'CALC_TOTAL'
      Origin = 'NBFDADOS.OS_CALCULO.CALC_TOTAL'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_CALCNFI_CODI: TIntegerField
      DisplayWidth = 10
      FieldName = 'NFI_CODI'
      Origin = 'NBFDADOS.OS_CALCULO.NFI_CODI'
      Visible = False
    end
    object Q_CALCSER_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'SER_ID'
      Origin = 'NBFDADOS.OS_CALCULO.SER_ID'
      Visible = False
    end
    object Q_CALCUCOB_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'UCOB_ID'
      Origin = 'NBFDADOS.OS_CALCULO.UCOB_ID'
      Visible = False
    end
    object Q_CALCCALC_ID: TAutoIncField
      FieldName = 'CALC_ID'
      Origin = 'NBFDADOS.OS_CALCULO.CALC_ID'
      Visible = False
    end
    object Q_CALCOS_ID: TIntegerField
      DisplayWidth = 6
      FieldName = 'OS_ID'
      Origin = 'NBFDADOS.OS_CALCULO.OS_ID'
      Visible = False
    end
    object Q_CALCOS_SERVICO_ID: TIntegerField
      FieldName = 'OS_SERVICO_ID'
      Origin = 'NBFDADOS.OS_CALCULO.OS_SERVICO_ID'
      Visible = False
    end
    object Q_CALCOS_ESPEC_ID: TIntegerField
      FieldName = 'OS_ESPEC_ID'
      Origin = 'NBFDADOS.OS_CALCULO.OS_ESPEC_ID'
      Visible = False
    end
    object Q_CALCCTT_ID: TIntegerField
      FieldName = 'CTT_ID'
      Origin = 'NBFDADOS.OS_CALCULO.CTT_ID'
      Visible = False
    end
    object Q_CALCTDOC_ID: TIntegerField
      FieldName = 'TDOC_ID'
      Origin = 'NBFDADOS.OS_CALCULO.TDOC_ID'
      Visible = False
    end
    object Q_CALCORD_ID: TIntegerField
      FieldName = 'ORD_ID'
      Origin = 'NBFDADOS.OS_CALCULO.ORD_ID'
      Visible = False
    end
    object Q_CALCNFTPROD_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'NFTPROD_ID'
      Origin = 'NBFDADOS.OS_CALCULO.NFTPROD_ID'
      Visible = False
    end
    object Q_CALCTPRO_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'TPRO_ID'
      Origin = 'NBFDADOS.OS_CALCULO.TPRO_ID'
      Visible = False
    end
  end
  object DS_CALC: TwwDataSource
    DataSet = Q_CALC
    OnDataChange = DS_OSDataChange
    Left = 1056
    Top = 154
  end
  object Q_NF: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select '
      'NFI_NUMERO ,NFI_CODI'
      'from NF'
      '')
    ValidateWithMask = True
    Left = 1144
    Top = 202
    object Q_NFNFI_NUMERO: TStringField
      FieldName = 'NFI_NUMERO'
      Origin = 'NBFDADOS.NF.NFI_NUMERO'
      FixedChar = True
      Size = 10
    end
    object Q_NFNFI_CODI: TAutoIncField
      FieldName = 'NFI_CODI'
      Origin = 'NBFDADOS.NF.NFI_CODI'
    end
  end
  object Q_TDTO: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'select A.*,B.TDOC_NOME from TPDOC_TPOS A,TPDOC B  where '
      'TOS_ID = :TOS_ID and'
      'B.TDOC_ID = A.TDOC_ID and'
      '(B.TDOC_ID = 1 or'
      'B.TDOC_ID = 2 or'
      'B.TDOC_ID = 8 or'
      'B.TDOC_ID = 13 or '
      'B.TDOC_ID = 9 or'
      'B.TDOC_ID = 17 or'
      'B.TDOC_ID = 19 or'
      'B.TDOC_ID = 20 or'
      'B.TDOC_ID = 3 ) '
      'order by  B.TDOC_NOME')
    ValidateWithMask = True
    Left = 1193
    Top = 202
    ParamData = <
      item
        DataType = ftInteger
        Name = 'TOS_ID'
        ParamType = ptUnknown
      end>
    object Q_TDTOTDOC_NOME: TStringField
      DisplayLabel = 'Tipo de Documento'
      DisplayWidth = 40
      FieldName = 'TDOC_NOME'
      Origin = 'NBFDADOS.TPDOC.TDOC_NOME'
      FixedChar = True
      Size = 40
    end
    object Q_TDTOTDTO_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'TDTO_ID'
      Origin = 'NBFDADOS.TPDOC_TPOS.TDTO_ID'
      Visible = False
    end
    object Q_TDTOTOS_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'TOS_ID'
      Origin = 'NBFDADOS.TPDOC_TPOS.TOS_ID'
      Visible = False
    end
    object Q_TDTOTDOC_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'TDOC_ID'
      Origin = 'NBFDADOS.TPDOC_TPOS.TDOC_ID'
      Visible = False
    end
    object Q_TDTOTDTO_ORDEM: TIntegerField
      DisplayWidth = 10
      FieldName = 'TDTO_ORDEM'
      Origin = 'NBFDADOS.TPDOC_TPOS.TDTO_ORDEM'
      Visible = False
    end
  end
  object Q_TPROD2: TwwQuery
    AutoCalcFields = False
    CachedUpdates = True
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    RequestLive = True
    SQL.Strings = (
      'select * from TPPRODUTO_CLINBF  '
      '')
    ValidateWithMask = True
    Left = 797
    Top = 354
    object StringField1: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 41
      FieldName = 'TPRO_NOME'
      Origin = 'NBFDADOS.TPPRODUTO_CLINBF.TPRO_NOME'
      FixedChar = True
      Size = 40
    end
    object AutoIncField1: TAutoIncField
      DisplayWidth = 10
      FieldName = 'TPRO_ID'
      Origin = 'NBFDADOS.TPPRODUTO_CLINBF.TPRO_ID'
      Visible = False
    end
    object IntegerField1: TIntegerField
      DisplayWidth = 10
      FieldName = 'CLIN_ID'
      Origin = 'NBFDADOS.TPPRODUTO_CLINBF.CLIN_ID'
      Visible = False
    end
  end
  object Q_NF2: TwwQuery
    CachedUpdates = True
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    RequestLive = True
    SQL.Strings = (
      'SELECT A.NFI_DEMI,A.NFI_DTENTREGA,'
      'A.NFI_CODI,'
      'A.NFI_DEST_CLI,'
      'A.NFI_NUMERO,'
      'A.NFI_MARCADOR,'
      'C.CLIF_RAZA'
      ' FROM  NF A,OS B,CLIENTEFINAL C where A.OS_ID = B.OS_ID and'
      ' A.TDOC_ID = 1 and '
      'A.MANI_ID is  null and '
      ' B.CLIN_ID = :CLIN_ID and'
      ' B.CTT_ID = :CTT_ID and '
      'A.NFI_DEST_CLI = C.CLIF_ID')
    UpdateObject = UPD_NF2
    ControlType.Strings = (
      'NFI_MARCADOR;CheckBox;*;')
    ValidateWithMask = True
    Left = 940
    Top = 352
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CLIN_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'CTT_ID'
        ParamType = ptUnknown
      end>
    object Q_NF2NFI_MARCADOR: TStringField
      DisplayLabel = ' '
      DisplayWidth = 1
      FieldName = 'NFI_MARCADOR'
      Origin = 'NBFDADOS.NF.NFI_MARCADOR'
      FixedChar = True
      Size = 1
    end
    object Q_NF2NFI_DEMI: TDateTimeField
      DisplayLabel = 'Dt. Emiss�o'
      DisplayWidth = 9
      FieldName = 'NFI_DEMI'
      Origin = 'NBFDADOS.NF.NFI_DEMI'
    end
    object Q_NF2CLIF_RAZA: TStringField
      DisplayLabel = 'Cliente Final'
      DisplayWidth = 30
      FieldName = 'CLIF_RAZA'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_RAZA'
      FixedChar = True
      Size = 50
    end
    object Q_NF2NFI_DTENTREGA: TDateTimeField
      DisplayLabel = 'Dt. Entrega'
      DisplayWidth = 9
      FieldName = 'NFI_DTENTREGA'
      Origin = 'NBFDADOS.NF.NFI_DTENTREGA'
    end
    object Q_NF2NFI_NUMERO: TStringField
      Alignment = taRightJustify
      DisplayLabel = 'N�mero'
      DisplayWidth = 10
      FieldName = 'NFI_NUMERO'
      Origin = 'NBFDADOS.NF.NFI_NUMERO'
      FixedChar = True
      Size = 10
    end
    object Q_NF2NFI_DEST_CLI: TIntegerField
      FieldName = 'NFI_DEST_CLI'
      Origin = 'NBFDADOS.NF.NFI_DEST_CLI'
      Visible = False
    end
    object Q_NF2NFI_CODI: TAutoIncField
      FieldName = 'NFI_CODI'
      Origin = 'NBFDADOS.NF.NFI_CODI'
      Visible = False
    end
  end
  object DS_NF2: TwwDataSource
    DataSet = cdsNF2
    OnDataChange = DS_OSDataChange
    Left = 944
    Top = 498
  end
  object UPD_NF2: TUpdateSQL
    ModifySQL.Strings = (
      'update NF'
      'set'
      '  NFI_NUMERO = :NFI_NUMERO,'
      '  NFI_DEST_CLI = :NFI_DEST_CLI,'
      '  NFI_DEMI = :NFI_DEMI,'
      '  NFI_MARCADOR = :NFI_MARCADOR,'
      '  NFI_DTENTREGA = :NFI_DTENTREGA'
      'where'
      '  NFI_CODI = :OLD_NFI_CODI')
    InsertSQL.Strings = (
      'insert into NF'
      
        '  (NFI_NUMERO, NFI_DEST_CLI, NFI_DEMI, NFI_MARCADOR, NFI_DTENTRE' +
        'GA)'
      'values'
      '  (:NFI_NUMERO, :NFI_DEST_CLI, :NFI_DEMI, :NFI_MARCADOR, '
      ':NFI_DTENTREGA)')
    DeleteSQL.Strings = (
      'delete from NF'
      'where'
      '  NFI_CODI = :OLD_NFI_CODI')
    Left = 1108
    Top = 564
  end
  object STP_ESTQPERANT: TwwStoredProc
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    StoredProcName = 'dbo.STP_ESTQPERANT'
    ValidateWithMask = True
    Left = 208
    Top = 367
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Result'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = '@CLINBF'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@CLIN_TIPOSALDO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@OS_ID'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = '@DATAINI'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = '@DATAFIM'
        ParamType = ptInput
      end>
  end
  object Q_AUX4: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    ValidateWithMask = True
    Left = 1134
    Top = 353
  end
  object Q_AUX6: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    ValidateWithMask = True
    Left = 1206
    Top = 353
  end
  object Q_NFREL: TwwQuery
    AutoCalcFields = False
    CachedUpdates = True
    AfterPost = Q_NFRELAfterPost
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    RequestLive = True
    SQL.Strings = (
      'SELECT  NFI_CODI,NFI_MARCADOR_CROS,NFI_NUMERO, OS_ID'
      'FROM NF '
      'where OS_ID= :OS_ID'
      'order by NFI_NUMERO')
    UpdateObject = UPD_NFREL
    ControlType.Strings = (
      'NFI_MARCADOR_CROS;CheckBox;*;')
    ValidateWithMask = True
    Left = 863
    Top = 352
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'OS_ID'
        ParamType = ptInput
      end>
    object Q_NFRELNFI_MARCADOR_CROS: TStringField
      DisplayLabel = 'Marcador'
      DisplayWidth = 1
      FieldName = 'NFI_MARCADOR_CROS'
      Origin = 'NBFDADOS.NF.NFI_MARCADOR_CROS'
      FixedChar = True
      Size = 1
    end
    object Q_NFRELNFI_NUMERO: TStringField
      DisplayLabel = 'Nota Fiscal N�'
      DisplayWidth = 10
      FieldName = 'NFI_NUMERO'
      Origin = 'NBFDADOS.NF.NFI_NUMERO'
      FixedChar = True
      Size = 10
    end
    object Q_NFRELNFI_CODI: TAutoIncField
      FieldName = 'NFI_CODI'
      Origin = 'NBFDADOS.NF.NFI_CODI'
      Visible = False
    end
    object Q_NFRELOS_ID: TIntegerField
      FieldName = 'OS_ID'
      Origin = 'NBFDADOS.NF.OS_ID'
    end
  end
  object UPD_NFREL: TUpdateSQL
    ModifySQL.Strings = (
      'update NF'
      'set'
      '  NFI_MARCADOR_CROS = :NFI_MARCADOR_CROS'
      'where'
      '  NFI_CODI = :OLD_NFI_CODI')
    InsertSQL.Strings = (
      'insert into NF'
      '  (NFI_MARCADOR_CROS)'
      'values'
      '  (:NFI_MARCADOR_CROS)')
    DeleteSQL.Strings = (
      'delete from NF'
      'where'
      '  NFI_CODI = :OLD_NFI_CODI')
    Left = 870
    Top = 560
  end
  object DS_NFREL: TwwDataSource
    DataSet = cdsNFREL
    Left = 868
    Top = 498
  end
  object qrRecalculoCTRC: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'EXEC RECALCULO_CTRC :OS')
    ValidateWithMask = True
    Left = 112
    Top = 314
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'OS'
        ParamType = ptUnknown
      end>
  end
  object dspOs: TDataSetProvider
    DataSet = Q_OS
    Constraints = True
    UpdateMode = upWhereKeyOnly
    Left = 800
    Top = 47
  end
  object cdsOS: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOs'
    BeforeEdit = cdsOSBeforeEdit
    BeforePost = cdsOSBeforePost
    AfterPost = cdsOSAfterPost
    AfterDelete = cdsOSAfterDelete
    OnNewRecord = cdsOSNewRecord
    Left = 800
    Top = 92
    object cdsOSOS_ID: TAutoIncField
      FieldName = 'OS_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
    end
    object cdsOSOS_DATA: TDateTimeField
      FieldName = 'OS_DATA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsOSCLIN_ID: TIntegerField
      FieldName = 'CLIN_ID'
      ProviderFlags = [pfInUpdate]
    end
    object cdsOSCTT_ID: TIntegerField
      FieldName = 'CTT_ID'
      ProviderFlags = [pfInUpdate]
    end
    object cdsOSTOS_ID: TIntegerField
      FieldName = 'TOS_ID'
      ProviderFlags = [pfInUpdate]
    end
    object cdsOSOS_USUARIO: TIntegerField
      FieldName = 'OS_USUARIO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsOSCTT_NOME: TStringField
      FieldName = 'CTT_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object cdsOSCLIN_RAZA: TStringField
      FieldName = 'CLIN_RAZA'
      LookupDataSet = cdsClin
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object cdsOSOS_GEROU: TStringField
      FieldName = 'OS_GEROU'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsOSOS_CONCLUIDA: TStringField
      FieldName = 'OS_CONCLUIDA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsOSTPCARGA: TStringField
      FieldName = 'TPCARGA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsOSCNPJ: TStringField
      FieldName = 'CNPJ'
      LookupDataSet = cdsClin
      ProviderFlags = []
      ReadOnly = True
      Size = 14
    end
  end
  object dspClin: TDataSetProvider
    DataSet = Q_CLIN
    Constraints = True
    Left = 844
    Top = 47
  end
  object cdsClin: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspClin'
    Left = 844
    Top = 92
    object cdsClinCLIN_RAZA: TStringField
      FieldName = 'CLIN_RAZA'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_RAZA'
      FixedChar = True
      Size = 50
    end
    object cdsClinCLIN_ID: TAutoIncField
      FieldName = 'CLIN_ID'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_ID'
      ReadOnly = True
    end
    object cdsClinCLIN_UTIL_COD: TStringField
      FieldName = 'CLIN_UTIL_COD'
      FixedChar = True
      Size = 1
    end
    object cdsClinCLIN_PESSOA: TStringField
      FieldName = 'CLIN_PESSOA'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_PESSOA'
      FixedChar = True
      Size = 1
    end
    object cdsClinCLIN_NOME: TStringField
      FieldName = 'CLIN_NOME'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_NOME'
      FixedChar = True
      Size = 30
    end
    object cdsClinCLIN_CGCCPF: TStringField
      FieldName = 'CLIN_CGCCPF'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_CGCCPF'
      FixedChar = True
      Size = 15
    end
    object cdsClinCLIN_INSCRG: TStringField
      FieldName = 'CLIN_INSCRG'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_INSCRG'
      FixedChar = True
      Size = 15
    end
    object cdsClinCLIN_ENDERECO: TStringField
      FieldName = 'CLIN_ENDERECO'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_ENDERECO'
      FixedChar = True
      Size = 50
    end
    object cdsClinCLIN_ENDERECO_COMPL: TStringField
      FieldName = 'CLIN_ENDERECO_COMPL'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_ENDERECO_COMPL'
      FixedChar = True
    end
    object cdsClinCLIN_ENDERECO_BAIRRO: TStringField
      FieldName = 'CLIN_ENDERECO_BAIRRO'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_ENDERECO_BAIRRO'
      FixedChar = True
      Size = 40
    end
    object cdsClinCLIN_MUNICIPIO: TStringField
      FieldName = 'CLIN_MUNICIPIO'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_MUNICIPIO'
      FixedChar = True
      Size = 40
    end
    object cdsClinUF_SIGLA: TStringField
      FieldName = 'UF_SIGLA'
      Origin = 'NBFDADOS.CLIENTENBF.UF_SIGLA'
      FixedChar = True
      Size = 2
    end
    object cdsClinCLIN_CEP: TStringField
      FieldName = 'CLIN_CEP'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_CEP'
      FixedChar = True
      Size = 8
    end
    object cdsClinCLIN_TEL1: TStringField
      FieldName = 'CLIN_TEL1'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_TEL1'
      FixedChar = True
      Size = 11
    end
    object cdsClinCLIN_TEL2: TStringField
      FieldName = 'CLIN_TEL2'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_TEL2'
      FixedChar = True
      Size = 11
    end
    object cdsClinCLIN_FAX: TStringField
      FieldName = 'CLIN_FAX'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_FAX'
      FixedChar = True
      Size = 11
    end
    object cdsClinCLIN_EMAIL: TStringField
      FieldName = 'CLIN_EMAIL'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_EMAIL'
      FixedChar = True
      Size = 60
    end
    object cdsClinCON_CODI: TStringField
      FieldName = 'CON_CODI'
      Origin = 'NBFDADOS.CLIENTENBF.CON_CODI'
      FixedChar = True
      Size = 6
    end
    object cdsClinCLIN_CONTRATO: TStringField
      FieldName = 'CLIN_CONTRATO'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_CONTRATO'
      FixedChar = True
      Size = 1
    end
    object cdsClinMUN_ID: TIntegerField
      FieldName = 'MUN_ID'
      Origin = 'NBFDADOS.CLIENTENBF.MUN_ID'
    end
    object cdsClinCLIN_TIPOSALDO: TStringField
      FieldName = 'CLIN_TIPOSALDO'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_ID'
      FixedChar = True
      Size = 1
    end
  end
  object dspTOS: TDataSetProvider
    DataSet = Q_TOS
    Constraints = True
    Left = 892
    Top = 47
  end
  object cdsTOS: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTOS'
    Left = 892
    Top = 92
    object cdsTOSTOS_NOME: TStringField
      FieldName = 'TOS_NOME'
      FixedChar = True
      Size = 40
    end
    object cdsTOSTOS_ID: TAutoIncField
      FieldName = 'TOS_ID'
      ReadOnly = True
    end
  end
  object dspCTT: TDataSetProvider
    DataSet = Q_CTT
    Constraints = True
    Left = 939
    Top = 47
  end
  object cdsCTT: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCTT'
    Left = 939
    Top = 92
    object cdsCTTCTT_NOME: TStringField
      FieldName = 'CTT_NOME'
      Origin = 'NBFDADOS.CONTRATO.CTT_NOME'
      FixedChar = True
      Size = 40
    end
    object cdsCTTCTT_ID: TAutoIncField
      FieldName = 'CTT_ID'
      Origin = 'NBFDADOS.CONTRATO.CTT_ID'
      ReadOnly = True
    end
    object cdsCTTTOS_ID: TIntegerField
      FieldName = 'TOS_ID'
      Origin = 'NBFDADOS.CONTRATO.TOS_ID'
    end
    object cdsCTTCLIN_ID: TIntegerField
      FieldName = 'CLIN_ID'
      Origin = 'NBFDADOS.CONTRATO.CLIN_ID'
    end
    object cdsCTTCTT_TERCEIRO: TStringField
      FieldName = 'CTT_TERCEIRO'
      Origin = 'NBFDADOS.CONTRATO.CTT_TERCEIRO'
      FixedChar = True
      Size = 1
    end
    object cdsCTTPAR_ID: TIntegerField
      FieldName = 'PAR_ID'
      Origin = 'NBFDADOS.CONTRATO.PAR_ID'
    end
  end
  object dspTServ: TDataSetProvider
    DataSet = Q_TSERV
    Constraints = True
    Left = 1046
    Top = 48
  end
  object cdsTServ: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTServ'
    Left = 1046
    Top = 94
    object cdsTServTSER_ID: TAutoIncField
      FieldName = 'TSER_ID'
      ReadOnly = True
    end
    object cdsTServTSER_NOME: TStringField
      FieldName = 'TSER_NOME'
      FixedChar = True
      Size = 40
    end
    object cdsTServTSER_CONCEITO: TMemoField
      FieldName = 'TSER_CONCEITO'
      BlobType = ftMemo
    end
  end
  object dspCTT2: TDataSetProvider
    DataSet = Q_CTT2
    Constraints = True
    Left = 1160
    Top = 48
  end
  object cdsCTT2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCTT2'
    Left = 1160
    Top = 96
    object cdsCTT2CTT_ID: TAutoIncField
      FieldName = 'CTT_ID'
      ReadOnly = True
    end
    object cdsCTT2CTT_NOME: TStringField
      FieldName = 'CTT_NOME'
      FixedChar = True
      Size = 40
    end
  end
  object dspOSESPEC: TDataSetProvider
    DataSet = Q_OSESPEC
    Constraints = True
    Left = 1224
    Top = 48
  end
  object cdsOSESPEC: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOSESPEC'
    BeforeEdit = cdsOSESPECBeforeEdit
    BeforePost = cdsOSESPECBeforePost
    AfterPost = cdsOSESPECAfterPost
    BeforeDelete = cdsOSESPECBeforeDelete
    AfterDelete = cdsOSESPECAfterDelete
    OnNewRecord = cdsOSESPECNewRecord
    Left = 1227
    Top = 96
    object cdsOSESPECOS_ESPEC_ORDEM: TIntegerField
      FieldName = 'OS_ESPEC_ORDEM'
    end
    object cdsOSESPECOS_ESPEC_FATOR: TFloatField
      FieldName = 'OS_ESPEC_FATOR'
    end
    object cdsOSESPECUCOB_NOME: TStringField
      FieldKind = fkLookup
      FieldName = 'UCOB_NOME'
      LookupDataSet = cdsUCOB
      LookupKeyFields = 'UCOB_ID'
      LookupResultField = 'UCOB_NOME'
      KeyFields = 'UCOB_ID'
      ReadOnly = True
      Size = 40
      Lookup = True
    end
    object cdsOSESPECOS_ESPEC_MINIMA: TFloatField
      FieldName = 'OS_ESPEC_MINIMA'
    end
    object cdsOSESPECOS_ESPEC_TPCARGA: TStringField
      FieldName = 'OS_ESPEC_TPCARGA'
      FixedChar = True
      Size = 1
    end
    object cdsOSESPECREG_NOME: TStringField
      FieldKind = fkLookup
      FieldName = 'REG_NOME'
      LookupDataSet = cdsREG
      LookupKeyFields = 'REG_ID'
      LookupResultField = 'REG_NOME'
      KeyFields = 'REG_ID'
      ReadOnly = True
      Size = 40
      Lookup = True
    end
    object cdsOSESPECVEIC_NOME: TStringField
      FieldKind = fkLookup
      FieldName = 'VEIC_NOME'
      LookupDataSet = cdsVEIC
      LookupKeyFields = 'VEIC_ID'
      LookupResultField = 'VEIC_NOME'
      KeyFields = 'VEIC_ID'
      ReadOnly = True
      Size = 40
      Lookup = True
    end
    object cdsOSESPECTPRO_NOME: TStringField
      FieldKind = fkLookup
      FieldName = 'TPRO_NOME'
      LookupDataSet = cdsTPROD
      LookupKeyFields = 'TPRO_ID'
      LookupResultField = 'TPRO_NOME'
      KeyFields = 'TPRO_ID'
      ReadOnly = True
      Size = 40
      Lookup = True
    end
    object cdsOSESPECOS_ESPEC_AREA_DE: TFloatField
      FieldName = 'OS_ESPEC_AREA_DE'
    end
    object cdsOSESPECOS_ESPEC_AREA_ATE: TFloatField
      FieldName = 'OS_ESPEC_AREA_ATE'
    end
    object cdsOSESPECOS_ESPEC_QTDEPALLET_DE: TIntegerField
      FieldName = 'OS_ESPEC_QTDEPALLET_DE'
    end
    object cdsOSESPECOS_ESPEC_QTDEPALLET_ATE: TIntegerField
      FieldName = 'OS_ESPEC_QTDEPALLET_ATE'
    end
    object cdsOSESPECOS_ESPEC_PESO_DE: TFloatField
      FieldName = 'OS_ESPEC_PESO_DE'
    end
    object cdsOSESPECOS_ESPEC_PESO_ATE: TFloatField
      FieldName = 'OS_ESPEC_PESO_ATE'
    end
    object cdsOSESPECOS_ESPEC_VOL_DE: TFloatField
      FieldName = 'OS_ESPEC_VOL_DE'
    end
    object cdsOSESPECOS_ESPEC_VOL_ATE: TFloatField
      FieldName = 'OS_ESPEC_VOL_ATE'
    end
    object cdsOSESPECOS_ESPEC_ID: TAutoIncField
      FieldName = 'OS_ESPEC_ID'
      ReadOnly = True
    end
    object cdsOSESPECOS_ID: TIntegerField
      FieldName = 'OS_ID'
    end
    object cdsOSESPECOS_SERVICO_ID: TIntegerField
      FieldName = 'OS_SERVICO_ID'
    end
    object cdsOSESPECTSER_ID: TIntegerField
      FieldName = 'TSER_ID'
    end
    object cdsOSESPECSER_ID: TIntegerField
      FieldName = 'SER_ID'
    end
    object cdsOSESPECUCOB_ID: TIntegerField
      FieldName = 'UCOB_ID'
    end
    object cdsOSESPECCLIF_ID: TIntegerField
      FieldName = 'CLIF_ID'
    end
    object cdsOSESPECVEIC_ID: TIntegerField
      FieldName = 'VEIC_ID'
    end
    object cdsOSESPECREG_ID: TIntegerField
      FieldName = 'REG_ID'
    end
    object cdsOSESPECTPRO_ID: TIntegerField
      FieldName = 'TPRO_ID'
    end
    object cdsOSESPECCLIF_NOME: TStringField
      FieldKind = fkLookup
      FieldName = 'CLIF_NOME'
      LookupDataSet = cdsCLIF
      LookupKeyFields = 'CLIF_ID'
      LookupResultField = 'CLIF_RAZA'
      KeyFields = 'CLIF_ID'
      ReadOnly = True
      Size = 40
      Lookup = True
    end
    object cdsOSESPECOS_ESPEC_ORIGEM: TStringField
      FieldName = 'OS_ESPEC_ORIGEM'
      FixedChar = True
      Size = 1
    end
  end
  object dspSERV: TDataSetProvider
    DataSet = Q_SERV
    Constraints = True
    Left = 800
    Top = 248
  end
  object cdsSERV: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSERV'
    Left = 800
    Top = 296
    object cdsSERVSER_NOME: TStringField
      FieldName = 'SER_NOME'
      FixedChar = True
      Size = 40
    end
    object cdsSERVTSER_NOME: TStringField
      FieldName = 'TSER_NOME'
      FixedChar = True
      Size = 40
    end
    object cdsSERVSER_ID: TAutoIncField
      FieldName = 'SER_ID'
      ReadOnly = True
    end
    object cdsSERVTSER_ID: TIntegerField
      FieldName = 'TSER_ID'
    end
  end
  object dspREG: TDataSetProvider
    DataSet = Q_REG
    Constraints = True
    Left = 848
    Top = 248
  end
  object cdsREG: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspREG'
    BeforeOpen = cdsREGBeforeOpen
    Left = 848
    Top = 296
    object cdsREGREG_NOME: TStringField
      FieldName = 'REG_NOME'
      FixedChar = True
      Size = 40
    end
    object cdsREGREG_ID: TAutoIncField
      FieldName = 'REG_ID'
      ReadOnly = True
    end
  end
  object dspTPROD: TDataSetProvider
    DataSet = Q_TPROD
    Constraints = True
    Left = 896
    Top = 248
  end
  object cdsTPROD: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTPROD'
    Left = 896
    Top = 296
    object cdsTPRODTPRO_NOME: TStringField
      FieldName = 'TPRO_NOME'
      FixedChar = True
      Size = 40
    end
    object cdsTPRODTPRO_ID: TAutoIncField
      FieldName = 'TPRO_ID'
      ReadOnly = True
    end
    object cdsTPRODCLIN_ID: TIntegerField
      FieldName = 'CLIN_ID'
    end
  end
  object dspUCOB: TDataSetProvider
    DataSet = Q_UCOB
    Constraints = True
    Left = 952
    Top = 248
  end
  object cdsUCOB: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspUCOB'
    Left = 952
    Top = 296
    object cdsUCOBUCOB_NOME: TStringField
      FieldName = 'UCOB_NOME'
      FixedChar = True
      Size = 40
    end
    object cdsUCOBUCOB_ID: TAutoIncField
      FieldName = 'UCOB_ID'
      ReadOnly = True
    end
  end
  object dspVEIC: TDataSetProvider
    DataSet = Q_VEIC
    Constraints = True
    Left = 1003
    Top = 249
  end
  object cdsVEIC: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVEIC'
    Left = 1007
    Top = 296
    object cdsVEICVEIC_NOME: TStringField
      FieldName = 'VEIC_NOME'
      FixedChar = True
      Size = 40
    end
    object cdsVEICVEIC_ID: TAutoIncField
      FieldName = 'VEIC_ID'
      ReadOnly = True
    end
    object cdsVEICVEIC_ORDEM: TIntegerField
      FieldName = 'VEIC_ORDEM'
    end
  end
  object dspCLIF: TDataSetProvider
    DataSet = Q_CLIF
    Constraints = True
    Left = 1053
    Top = 248
  end
  object cdsCLIF: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCLIF'
    Left = 1056
    Top = 296
    object cdsCLIFCLIF_RAZA: TStringField
      FieldName = 'CLIF_RAZA'
      FixedChar = True
      Size = 50
    end
    object cdsCLIFclif_endereco: TStringField
      FieldName = 'clif_endereco'
      FixedChar = True
      Size = 50
    end
    object cdsCLIFCLIF_ID: TAutoIncField
      FieldName = 'CLIF_ID'
      ReadOnly = True
    end
  end
  object dspNF: TDataSetProvider
    DataSet = Q_NF
    Constraints = True
    Left = 1144
    Top = 248
  end
  object cdsNF: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNF'
    Left = 1144
    Top = 296
    object cdsNFNFI_NUMERO: TStringField
      FieldName = 'NFI_NUMERO'
      Origin = 'NBFDADOS.NF.NFI_NUMERO'
      FixedChar = True
      Size = 10
    end
    object cdsNFNFI_CODI: TAutoIncField
      FieldName = 'NFI_CODI'
      Origin = 'NBFDADOS.NF.NFI_CODI'
      ReadOnly = True
    end
  end
  object dspTDTO: TDataSetProvider
    DataSet = Q_TDTO
    Constraints = True
    Left = 1192
    Top = 248
  end
  object cdsTDTO: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTDTO'
    Left = 1192
    Top = 296
    object cdsTDTOTDOC_NOME: TStringField
      FieldName = 'TDOC_NOME'
      FixedChar = True
      Size = 40
    end
    object cdsTDTOTDTO_ID: TAutoIncField
      FieldName = 'TDTO_ID'
      ReadOnly = True
    end
    object cdsTDTOTOS_ID: TIntegerField
      FieldName = 'TOS_ID'
    end
    object cdsTDTOTDOC_ID: TIntegerField
      FieldName = 'TDOC_ID'
    end
    object cdsTDTOTDTO_ORDEM: TIntegerField
      FieldName = 'TDTO_ORDEM'
    end
  end
  object dspTPROD2: TDataSetProvider
    DataSet = Q_TPROD2
    Constraints = True
    Left = 799
    Top = 401
  end
  object cdsTPROD2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTPROD2'
    Left = 800
    Top = 448
    object cdsTPROD2TPRO_NOME: TStringField
      FieldName = 'TPRO_NOME'
      Origin = 'NBFDADOS.TPPRODUTO_CLINBF.TPRO_NOME'
      FixedChar = True
      Size = 40
    end
    object cdsTPROD2TPRO_ID: TAutoIncField
      FieldName = 'TPRO_ID'
      Origin = 'NBFDADOS.TPPRODUTO_CLINBF.TPRO_ID'
      ReadOnly = True
    end
    object cdsTPROD2CLIN_ID: TIntegerField
      FieldName = 'CLIN_ID'
      Origin = 'NBFDADOS.TPPRODUTO_CLINBF.CLIN_ID'
    end
  end
  object dspNFREL: TDataSetProvider
    DataSet = Q_NFREL
    Constraints = True
    Left = 864
    Top = 400
  end
  object cdsNFREL: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'OS_ID'
    MasterFields = 'OS_ID'
    MasterSource = DS_OS
    PacketRecords = 0
    Params = <>
    ProviderName = 'dspNFREL'
    AfterPost = cdsNFRELAfterPost
    Left = 864
    Top = 448
    object cdsNFRELNFI_MARCADOR_CROS: TStringField
      DisplayLabel = 'Marcador'
      DisplayWidth = 1
      FieldName = 'NFI_MARCADOR_CROS'
      Origin = 'NBFDADOS.NF.NFI_MARCADOR_CROS'
      OnChange = cdsNFRELNFI_MARCADOR_CROSChange
      FixedChar = True
      Size = 1
    end
    object cdsNFRELNFI_NUMERO: TStringField
      DisplayLabel = 'Nota Fiscal N�'
      DisplayWidth = 10
      FieldName = 'NFI_NUMERO'
      Origin = 'NBFDADOS.NF.NFI_NUMERO'
      FixedChar = True
      Size = 10
    end
    object cdsNFRELNFI_CODI: TAutoIncField
      FieldName = 'NFI_CODI'
      Origin = 'NBFDADOS.NF.NFI_CODI'
      ReadOnly = True
      Visible = False
    end
    object cdsNFRELOS_ID: TIntegerField
      FieldName = 'OS_ID'
      Origin = 'NBFDADOS.NF.OS_ID'
      Visible = False
    end
  end
  object dspNF2: TDataSetProvider
    DataSet = Q_NF2
    Constraints = True
    Left = 944
    Top = 400
  end
  object cdsNF2: TClientDataSet
    Aggregates = <>
    MasterSource = DS_OS
    PacketRecords = 0
    Params = <>
    ProviderName = 'dspNF2'
    AfterPost = cdsNF2AfterPost
    Left = 944
    Top = 443
    object cdsNF2NFI_MARCADOR: TStringField
      FieldName = 'NFI_MARCADOR'
      FixedChar = True
      Size = 1
    end
    object cdsNF2NFI_DEMI: TDateTimeField
      FieldName = 'NFI_DEMI'
    end
    object cdsNF2CLIF_RAZA: TStringField
      FieldName = 'CLIF_RAZA'
      FixedChar = True
      Size = 50
    end
    object cdsNF2NFI_DTENTREGA: TDateTimeField
      FieldName = 'NFI_DTENTREGA'
    end
    object cdsNF2NFI_NUMERO: TStringField
      FieldName = 'NFI_NUMERO'
      FixedChar = True
      Size = 10
    end
    object cdsNF2NFI_DEST_CLI: TIntegerField
      FieldName = 'NFI_DEST_CLI'
    end
    object cdsNF2NFI_CODI: TAutoIncField
      FieldName = 'NFI_CODI'
      ReadOnly = True
    end
  end
  object dspAUX6: TDataSetProvider
    DataSet = Q_AUX6
    Constraints = True
    Left = 1208
    Top = 405
  end
  object cdsAUX6: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAUX6'
    Left = 1208
    Top = 451
  end
  object dspAUX2: TDataSetProvider
    DataSet = Q_AUX2
    Constraints = True
    Left = 1008
    Top = 408
  end
  object cdsAUX2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAUX2'
    Left = 1008
    Top = 459
  end
  object dspAux: TDataSetProvider
    DataSet = Q_AUX
    Constraints = True
    Left = 1072
    Top = 408
  end
  object cdsAux: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAux'
    Left = 1080
    Top = 459
  end
  object qrOEConsulta: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'OS_ID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT '
      #9'ORD_CONH,'
      #9'ORD_NOTAS,'
      #9'ORD_PESO_TOTAL,'
      #9'ORD_VALORTOTAL,'
      #9'MANI_ID,'
      #9'ORD_VLR_FRETE,'
      #9'ORD_VLR_SECCAT,'
      #9'ORD_VLR_DESPACHO,'
      #9'ORD_VLR_PEDAGIO,'
      #9'CASE WHEN'
      
        #9'   ISNULL(ORD_VLR_OUTROS, 0) - ISNULL(ORD_TXENTREGA, 0) - ISNUL' +
        'L(ORD_SEGURO, 0) < 0 THEN 0'
      #9'ELSE'
      
        #9'   ISNULL(ORD_VLR_OUTROS, 0) - ISNULL(ORD_TXENTREGA, 0) - ISNUL' +
        'L(ORD_SEGURO, 0) END AS ORD_OUTROS,'
      #9'ORD_TXENTREGA,'
      #9'ORD_SEGURO,'
      #9'ORD_TOTALPREST,'
      #9'ORD_ALIQ,'
      #9'ORD_VLR_ICMS'
      'FROM ORDEM_COLETA_ENTREGA WHERE OS_ID = :OS_ID'
      'ORDER BY ORD_CONH')
    Left = 370
    Top = 186
    object qrOEConsultaORD_CONH: TStringField
      DisplayLabel = 'N�mero'
      DisplayWidth = 8
      FieldName = 'ORD_CONH'
      Size = 10
    end
    object qrOEConsultaORD_NOTAS: TStringField
      DisplayLabel = 'Notas'
      DisplayWidth = 18
      FieldName = 'ORD_NOTAS'
      Size = 50
    end
    object qrOEConsultaORD_PESO_TOTAL: TFloatField
      DisplayLabel = 'Peso'
      DisplayWidth = 10
      FieldName = 'ORD_PESO_TOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qrOEConsultaORD_VALORTOTAL: TFloatField
      DisplayLabel = 'Vlr. NFs'
      DisplayWidth = 9
      FieldName = 'ORD_VALORTOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qrOEConsultaMANI_ID: TIntegerField
      DisplayLabel = 'Manifesto'
      DisplayWidth = 7
      FieldName = 'MANI_ID'
    end
    object qrOEConsultaORD_VLR_FRETE: TFloatField
      DisplayLabel = 'Frete'
      DisplayWidth = 10
      FieldName = 'ORD_VLR_FRETE'
      DisplayFormat = '###,###,##0.00'
    end
    object qrOEConsultaORD_VLR_SECCAT: TFloatField
      DisplayLabel = 'Sec Cat'
      DisplayWidth = 10
      FieldName = 'ORD_VLR_SECCAT'
      DisplayFormat = '###,###,##0.00'
    end
    object qrOEConsultaORD_VLR_DESPACHO: TFloatField
      DisplayLabel = 'Despacho'
      DisplayWidth = 10
      FieldName = 'ORD_VLR_DESPACHO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrOEConsultaORD_VLR_PEDAGIO: TFloatField
      DisplayLabel = 'Ped�gio'
      DisplayWidth = 10
      FieldName = 'ORD_VLR_PEDAGIO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrOEConsultaORD_OUTROS: TFloatField
      DisplayLabel = 'Outros'
      DisplayWidth = 10
      FieldName = 'ORD_OUTROS'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
    end
    object qrOEConsultaORD_TXENTREGA: TFloatField
      DisplayLabel = 'Tx. Entrega'
      DisplayWidth = 10
      FieldName = 'ORD_TXENTREGA'
      DisplayFormat = '###,###,##0.00'
    end
    object qrOEConsultaORD_SEGURO: TFloatField
      DisplayLabel = 'Seguro'
      DisplayWidth = 10
      FieldName = 'ORD_SEGURO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrOEConsultaORD_ALIQ: TFloatField
      DisplayLabel = 'Aliq. ICMS'
      DisplayWidth = 10
      FieldName = 'ORD_ALIQ'
      DisplayFormat = '###,###,##0.00'
    end
    object qrOEConsultaORD_VLR_ICMS: TFloatField
      DisplayLabel = 'ICMS'
      DisplayWidth = 10
      FieldName = 'ORD_VLR_ICMS'
      DisplayFormat = '###,###,##0.00'
    end
    object qrOEConsultaORD_TOTALPREST: TFloatField
      DisplayLabel = 'Total'
      DisplayWidth = 10
      FieldName = 'ORD_TOTALPREST'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object dsOEConsulta: TDataSource
    DataSet = qrOEConsulta
    Left = 370
    Top = 242
  end
  object dsExcel: TDataSource
    Left = 602
    Top = 298
  end
  object qrOEAux: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <
      item
        Name = 'OS_ID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT '
      #9
      #9'sum(ORD_TOTALPREST) as Total'
      'FROM ORDEM_COLETA_ENTREGA WHERE OS_ID = :OS_ID'
      '')
    Left = 434
    Top = 290
    object qrOEAuxTotal: TFloatField
      FieldName = 'Total'
      ReadOnly = True
    end
  end
  object dsqrOEAux: TDataSource
    DataSet = qrOEAux
    OnDataChange = dsqrOEAuxDataChange
    Left = 490
    Top = 274
  end
  object Q_PAR: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'select * from parametro')
    ValidateWithMask = True
    Left = 598
    Top = 161
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
      Origin = 'NBFDADOS.PARAMETRO.AR_ID_AVARIA'
    end
    object Q_PARULT_MINUTA: TIntegerField
      FieldName = 'ULT_MINUTA'
      Origin = 'NBFDADOS.PARAMETRO.ULT_MINUTA'
    end
    object Q_PARULT_NFPROV: TIntegerField
      FieldName = 'ULT_NFPROV'
      Origin = 'NBFDADOS.PARAMETRO.ULT_NFPROV'
    end
    object Q_PARULT_CONHPROV: TIntegerField
      FieldName = 'ULT_CONHPROV'
      Origin = 'NBFDADOS.PARAMETRO.ULT_CONHPROV'
    end
    object Q_PARULT_MINUTAPROV: TIntegerField
      FieldName = 'ULT_MINUTAPROV'
      Origin = 'NBFDADOS.PARAMETRO.ULT_MINUTAPROV'
    end
    object Q_PARCAMINHO_MATRICIAL: TStringField
      FieldName = 'CAMINHO_MATRICIAL'
      Origin = 'NBFDADOS.PARAMETRO.CAMINHO_MATRICIAL'
      FixedChar = True
      Size = 40
    end
    object Q_PARCAMINHO_MATRICIAL_FATURA: TStringField
      FieldName = 'CAMINHO_MATRICIAL_FATURA'
      Origin = 'NBFDADOS.PARAMETRO.CAMINHO_MATRICIAL_FATURA'
      FixedChar = True
      Size = 40
    end
    object Q_PARCAMINHO_MATRICIAL_CONH: TStringField
      FieldName = 'CAMINHO_MATRICIAL_CONH'
      Origin = 'NBFDADOS.PARAMETRO.CAMINHO_MATRICIAL_CONH'
      FixedChar = True
      Size = 40
    end
    object Q_PARDATA: TDateTimeField
      FieldName = 'DATA'
      Origin = 'NBFDADOS.PARAMETRO.DATA'
    end
    object Q_PARConnectionString: TStringField
      FieldName = 'ConnectionString'
      Origin = 'NBFDADOS.PARAMETRO.ConnectionString'
      FixedChar = True
      Size = 255
    end
    object Q_PARIBGE_ID: TIntegerField
      FieldName = 'IBGE_ID'
      Origin = 'NBFDADOS.PARAMETRO.IBGE_ID'
    end
    object Q_PARNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NBFDADOS.PARAMETRO.NUMERO'
    end
    object Q_PARLOGO: TBlobField
      FieldName = 'LOGO'
      Origin = 'NBFDADOS.PARAMETRO.LOGO'
      BlobType = ftBlob
    end
    object Q_PARNF_SERVICO: TIntegerField
      FieldName = 'NF_SERVICO'
      Origin = 'NBFDADOS.PARAMETRO.NF_SERVICO'
    end
    object Q_PARALIQ_ISS: TFloatField
      FieldName = 'ALIQ_ISS'
      Origin = 'NBFDADOS.PARAMETRO.ALIQ_ISS'
    end
    object Q_PARNF_SERVICO_PROV: TIntegerField
      FieldName = 'NF_SERVICO_PROV'
      Origin = 'NBFDADOS.PARAMETRO.NF_SERVICO_PROV'
    end
    object Q_PARALIQ_ISS_NFS_OE: TFloatField
      FieldName = 'ALIQ_ISS_NFS_OE'
      Origin = 'NBFDADOS.PARAMETRO.ALIQ_ISS_NFS_OE'
    end
    object Q_PARDATA_FRETE_FECHAMENTO: TDateTimeField
      FieldName = 'DATA_FRETE_FECHAMENTO'
      Origin = 'NBFDADOS.PARAMETRO.DATA_FRETE_FECHAMENTO'
    end
    object Q_PARRodapeFrete: TStringField
      FieldName = 'RodapeFrete'
      Origin = 'NBFDADOS.PARAMETRO.RodapeFrete'
      FixedChar = True
      Size = 250
    end
    object Q_PARESTOQUE_INVENTARIO: TStringField
      FieldName = 'ESTOQUE_INVENTARIO'
      Origin = 'NBFDADOS.PARAMETRO.ESTOQUE_INVENTARIO'
      FixedChar = True
      Size = 1
    end
  end
end
