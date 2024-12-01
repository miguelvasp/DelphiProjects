object FManifesto: TFManifesto
  Left = 813
  Top = 80
  Width = 823
  Height = 623
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
    Left = 0
    Top = 3
    Width = 790
    Height = 45
    BevelInner = bvLowered
    TabOrder = 0
    object SpeedButton3: TSpeedButton
      Left = 752
      Top = 8
      Width = 28
      Height = 26
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
      Width = 368
      Height = 29
      Caption = 'Manifesto de Carga - Entrega'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -24
      Font.Name = 'Georgia'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object SpeedButton1: TSpeedButton
      Left = 723
      Top = 8
      Width = 28
      Height = 26
      Hint = 'Relatório de Manifesto de Carga'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
        8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
        8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
        8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton7: TSpeedButton
      Left = 697
      Top = 8
      Width = 25
      Height = 26
      Hint = 'Pesquisar Manifesto de Carga - Entrega'
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
      OnClick = SpeedButton7Click
    end
    object SpeedButton8: TSpeedButton
      Left = 668
      Top = 8
      Width = 28
      Height = 26
      Hint = 'Excluir Manifesto'
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
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton8Click
    end
    object DBNavigator1: TDBNavigator
      Left = 482
      Top = 8
      Width = 186
      Height = 26
      DataSource = DS_MANIF
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbPost, nbCancel]
      Hints.Strings = (
        'Posiciona no primeiro registro | Posiciona no primeiro registro'
        'Retorna ao registro anterior | Retorna ao registro anterior '
        'Avança para o próximo registro | Avança para o próximo registro '
        'Posiciona no último registro | Posiciona no último registro '
        'Incluir  '
        'Excluir'
        ''
        'Confirmar'
        'Cancelar')
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
    end
    object ComboPROD: TwwDBLookupCombo
      Left = 5
      Top = 7
      Width = 60
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'ESTQ_TAG'#9'10'#9'Pallet TAG'#9'F'
        'ESTQ_QTDE'#9'8'#9'Qtde.'#9'F'
        'PRO_COD'#9'14'#9'Código Produto'#9'F'
        'PRO_DESC'#9'40'#9'Descrição do Produto'#9'F'
        'AR_NOME'#9'40'#9'Área'#9'F'
        'POS_COD'#9'5'#9'Posição'#9'F'
        'ESTQ_LOTE'#9'10'#9'Lote'#9'F'
        'ROM_DTBATCH'#9'9'#9'Batch'#9'F'
        'ROM_DTVENCTO'#9'9'#9'Vencimento'#9'F')
      Options = [loColLines, loRowLines, loTitles]
      Color = clWhite
      DropDownCount = 10
      ParentFont = False
      TabOrder = 1
      Visible = False
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnCloseUp = ComboPRODCloseUp
      OnExit = ComboPRODExit
    end
    object BitBtn2: TBitBtn
      Left = 389
      Top = 8
      Width = 36
      Height = 26
      Hint = 'Incluir NF'#39's Reentrega'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      Visible = False
      OnClick = BitBtn2Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333303
        333333333333337FF3333333333333903333333333333377FF33333333333399
        03333FFFFFFFFF777FF3000000999999903377777777777777FF0FFFF0999999
        99037F3337777777777F0FFFF099999999907F3FF777777777770F00F0999999
        99037F773777777777730FFFF099999990337F3FF777777777330F00FFFFF099
        03337F773333377773330FFFFFFFF09033337F3FF3FFF77733330F00F0000003
        33337F773777777333330FFFF0FF033333337F3FF7F3733333330F08F0F03333
        33337F7737F7333333330FFFF003333333337FFFF77333333333000000333333
        3333777777333333333333333333333333333333333333333333}
      NumGlyphs = 2
      Style = bsNew
    end
  end
  object TabbedNotebook1: TTabbedNotebook
    Left = 0
    Top = 49
    Width = 791
    Height = 528
    TabFont.Charset = ANSI_CHARSET
    TabFont.Color = clBtnText
    TabFont.Height = -11
    TabFont.Name = 'Arial'
    TabFont.Style = [fsBold]
    TabOrder = 1
    OnClick = TabbedNotebook1Click
    object TTabPage
      Left = 4
      Top = 25
      Caption = '   Principal   '
      object Label65: TLabel
        Left = 256
        Top = 465
        Width = 82
        Height = 13
        Caption = 'Recebedor CT-e:'
      end
      object Panel1: TPanel
        Left = -1
        Top = 2
        Width = 784
        Height = 449
        BevelInner = bvLowered
        TabOrder = 0
        object Label1: TLabel
          Left = 312
          Top = 8
          Width = 343
          Height = 23
          Caption = 
            '                                        Notas Fiscais de Saída  ' +
            ' '
          Color = clBlue
          Font.Charset = ANSI_CHARSET
          Font.Color = clYellow
          Font.Height = -19
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label2: TLabel
          Left = 7
          Top = 9
          Width = 107
          Height = 15
          Caption = 'Manifesto Número '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label47: TLabel
          Left = 344
          Top = 379
          Width = 68
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
        object Label48: TLabel
          Left = 415
          Top = 378
          Width = 280
          Height = 15
          Caption = 'Notas Fiscais com Observação na pasta Valores !'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 3
          Top = 35
          Width = 307
          Height = 19
          Alignment = taCenter
          AutoSize = False
          Caption = 'Manifesto em aberto'
          Color = clGreen
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object DBG_RAAT: TwwDBGrid
          Left = 311
          Top = 35
          Width = 471
          Height = 338
          Hint = 'Visualização dos Registros'
          Selected.Strings = (
            'MANI_ORDEM'#9'5'#9'Ordem'#9'F'
            'NFI_NUMERO'#9'8'#9'NF'#9'F'
            'CLIN_RAZA'#9'23'#9'Emitente'#9'F'
            'NFI_DTENTREGA'#9'10'#9'Entrega'#9'F'
            'NFI_DEST_RAZA'#9'35'#9'Destinatário'#9'F'
            'NFI_DEST_ENDERECO'#9'50'#9'Endereço'#9'F'
            'NFI_DEST_CEP'#9'8'#9'CEP'#9'F'
            'MUN_NOME'#9'40'#9'Município'#9'F'
            'REG_NOME'#9'40'#9'Região'#9'F')
          IniAttributes.FileName = 'delphi32.ini'
          IniAttributes.SectionName = 'FManifestoDBG_RAAT'
          IniAttributes.Delimiter = ';;'
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          DataSource = DS_NF
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          KeyOptions = []
          Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgWordWrap]
          ParentFont = False
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 1
          TitleAlignment = taCenter
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clNavy
          TitleFont.Height = -11
          TitleFont.Name = 'Arial Narrow'
          TitleFont.Style = [fsBold]
          TitleLines = 1
          TitleButtons = False
          OnCalcCellColors = DBG_RAATCalcCellColors
          OnDblClick = DBG_RAATDblClick
          object DBG_RAATIButton: TwwIButton
            Left = 0
            Top = 0
            Width = 13
            Height = 22
            AllowAllUp = True
          end
        end
        object Panel5: TPanel
          Left = 115
          Top = 4
          Width = 126
          Height = 30
          BevelInner = bvLowered
          TabOrder = 2
          object DBText2: TDBText
            Left = 13
            Top = 2
            Width = 99
            Height = 26
            Alignment = taCenter
            Color = clMenu
            DataField = 'MANI_ID'
            DataSource = DS_MANIF
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -19
            Font.Name = 'Comic Sans MS'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
        end
        object Panel3: TPanel
          Left = 2
          Top = 55
          Width = 309
          Height = 391
          BevelInner = bvLowered
          TabOrder = 0
          object Label37: TLabel
            Left = 11
            Top = 7
            Width = 94
            Height = 15
            Caption = 'Data de Inclusão'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object Label21: TLabel
            Left = 3
            Top = 30
            Width = 102
            Height = 15
            Caption = 'Veículo Transportador'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial Narrow'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object Label3: TLabel
            Left = 27
            Top = 53
            Width = 78
            Height = 15
            Caption = 'Tipo da Carga'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object Label5: TLabel
            Left = 16
            Top = 78
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
          object Label6: TLabel
            Left = 51
            Top = 102
            Width = 54
            Height = 15
            Caption = 'Motorista'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object Label44: TLabel
            Left = 16
            Top = 126
            Width = 89
            Height = 15
            Caption = 'Veículo Pagto.Frete'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial Narrow'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object Label45: TLabel
            Left = 15
            Top = 150
            Width = 90
            Height = 15
            Caption = 'Região Pagto. Frete'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial Narrow'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object Label51: TLabel
            Left = 7
            Top = 175
            Width = 97
            Height = 15
            Caption = 'Vlr. Frete a Pagar'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object Label43: TLabel
            Left = 4
            Top = 373
            Width = 301
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Outros Transportadores'
            Color = clBtnShadow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clAqua
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label62: TLabel
            Left = 63
            Top = 198
            Width = 39
            Height = 15
            Caption = 'Km Ida'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object Label63: TLabel
            Left = 177
            Top = 198
            Width = 49
            Height = 15
            Caption = 'Km Total'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object Label64: TLabel
            Left = 39
            Top = 222
            Width = 64
            Height = 15
            Caption = 'Rastreador'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object wwDBEdit19: TwwDBEdit
            Left = 109
            Top = 4
            Width = 68
            Height = 21
            BorderStyle = bsNone
            DataField = 'MANI_DATA'
            DataSource = DS_MANIF
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
            OnEnter = wwDBEdit19Enter
            OnExit = wwDBEdit19Exit
          end
          object wwDBComboBox1: TwwDBComboBox
            Left = 109
            Top = 52
            Width = 133
            Height = 21
            ShowButton = True
            Style = csDropDown
            MapList = True
            AllowClearKey = False
            AutoDropDown = True
            BorderStyle = bsNone
            ButtonStyle = cbsEllipsis
            DataField = 'MANI_TIPOCARGA'
            DataSource = DS_MANIF
            DropDownCount = 8
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ItemHeight = 0
            Items.Strings = (
              'Palletizada'#9'P'
              'Granel'#9'G')
            ParentFont = False
            Sorted = False
            TabOrder = 2
            UnboundDataType = wwDefault
            OnEnter = wwDBComboBox1Enter
            OnExit = wwDBComboBox1Exit
          end
          object wwDBLookupCombo2: TwwDBLookupCombo
            Left = 109
            Top = 76
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
              'TRANS_FANTASIA'#9'40'#9'TRANS_FANTASIA'#9'F')
            DataField = 'TRANS_ID'
            DataSource = DS_MANIF
            LookupTable = Q_TRANS
            LookupField = 'TRANS_ID'
            ParentFont = False
            TabOrder = 3
            AutoDropDown = True
            ShowButton = True
            SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
            PreciseEditRegion = False
            AllowClearKey = False
            OnCloseUp = wwDBLookupCombo2CloseUp
            OnEnter = wwDBLookupCombo2Enter
            OnExit = wwDBLookupCombo2Exit
          end
          object wwDBLookupCombo4: TwwDBLookupCombo
            Left = 109
            Top = 100
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
              'MOT_NOME'#9'40'#9'MOT_NOME'#9'F')
            DataField = 'MOT_ID'
            DataSource = DS_MANIF
            LookupTable = Q_TRMOT
            LookupField = 'MOT_ID'
            ParentFont = False
            TabOrder = 4
            AutoDropDown = True
            ShowButton = True
            SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
            PreciseEditRegion = False
            AllowClearKey = False
            OnCloseUp = wwDBLookupCombo4CloseUp
            OnEnter = wwDBLookupCombo4Enter
            OnExit = wwDBLookupCombo4Exit
          end
          object wwDBLookupCombo10: TwwDBLookupCombo
            Left = 109
            Top = 124
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
              'VEIC_NOME'#9'40'#9'VEIC_NOME'#9'F')
            DataField = 'VEIC_ID_FRETE'
            DataSource = DS_MANIF
            LookupTable = Q_VEIC2
            LookupField = 'VEIC_ID'
            Enabled = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 5
            AutoDropDown = True
            ShowButton = True
            SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
            PreciseEditRegion = False
            AllowClearKey = False
            OnEnter = wwDBLookupCombo10Enter
            OnExit = wwDBLookupCombo10Exit
          end
          object wwDBLookupCombo11: TwwDBLookupCombo
            Left = 109
            Top = 148
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
              'REG_NOME'#9'40'#9'Região'#9'F')
            DataField = 'REG_ID'
            DataSource = DS_MANIF
            LookupTable = Q_REG
            LookupField = 'REG_ID'
            ParentFont = False
            TabOrder = 6
            AutoDropDown = True
            ShowButton = True
            SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
            PreciseEditRegion = False
            AllowClearKey = False
            OnEnter = wwDBLookupCombo11Enter
            OnExit = wwDBLookupCombo11Exit
          end
          object wwDBEdit20: TwwDBEdit
            Left = 109
            Top = 172
            Width = 92
            Height = 21
            BorderStyle = bsNone
            DataField = 'MANI_VFRETEPAG'
            DataSource = DS_MANIF
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
            OnEnter = wwDBEdit20Enter
            OnExit = wwDBEdit20Exit
          end
          object GroupBox1: TGroupBox
            Left = 9
            Top = 242
            Width = 289
            Height = 131
            Caption = 'Resumo por Manifesto '
            Color = clScrollBar
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 8
            object Label31: TLabel
              Left = 15
              Top = 17
              Width = 59
              Height = 15
              Caption = 'Peso Total'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label16: TLabel
              Left = 209
              Top = 16
              Width = 15
              Height = 15
              Caption = 'Kg'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label26: TLabel
              Left = 3
              Top = 41
              Width = 72
              Height = 15
              Caption = 'Qtde. Pallets'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label32: TLabel
              Left = 32
              Top = 65
              Width = 42
              Height = 15
              Caption = 'Volume'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label33: TLabel
              Left = 26
              Top = 88
              Width = 49
              Height = 15
              Caption = 'Qtde. UV'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label39: TLabel
              Left = 182
              Top = 64
              Width = 17
              Height = 15
              Caption = 'M3'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label56: TLabel
              Left = 19
              Top = 112
              Width = 55
              Height = 15
              Caption = 'Valor (R$)'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label57: TLabel
              Left = 153
              Top = 113
              Width = 25
              Height = 16
              Alignment = taRightJustify
              Caption = '0,00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clRed
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object wwDBEdit12: TwwDBEdit
              Left = 79
              Top = 14
              Width = 126
              Height = 21
              BorderStyle = bsNone
              DataField = 'MANI_PESO'
              DataSource = DS_MANIF
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
              OnEnter = wwDBEdit12Enter
              OnExit = wwDBEdit12Exit
            end
            object wwDBEdit6: TwwDBEdit
              Left = 79
              Top = 38
              Width = 54
              Height = 21
              BorderStyle = bsNone
              DataField = 'MANI_QTDEPALLET'
              DataSource = DS_MANIF
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
            object wwDBEdit14: TwwDBEdit
              Left = 79
              Top = 62
              Width = 98
              Height = 21
              BorderStyle = bsNone
              DataField = 'MANI_VOLUME'
              DataSource = DS_MANIF
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
              OnEnter = wwDBEdit14Enter
              OnExit = wwDBEdit14Exit
            end
            object wwDBEdit15: TwwDBEdit
              Left = 79
              Top = 86
              Width = 98
              Height = 21
              BorderStyle = bsNone
              DataField = 'MANI_QTDEUV'
              DataSource = DS_MANIF
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
              OnEnter = wwDBEdit15Enter
              OnExit = wwDBEdit15Exit
            end
          end
          object wwDBLookupCombo1: TwwDBLookupCombo
            Left = 109
            Top = 28
            Width = 196
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
            DataSource = DS_MANIF
            LookupTable = Q_VEIC
            LookupField = 'VEIC_ID'
            ParentFont = False
            TabOrder = 1
            AutoDropDown = True
            ShowButton = True
            SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
            PreciseEditRegion = False
            AllowClearKey = False
            OnCloseUp = wwDBLookupCombo1CloseUp
            OnEnter = wwDBLookupCombo1Enter
            OnExit = wwDBLookupCombo1Exit
          end
          object wwDBEdit21: TwwDBEdit
            Left = 109
            Top = 196
            Width = 66
            Height = 21
            BorderStyle = bsNone
            DataField = 'MANI_KM_IDA'
            DataSource = DS_MANIF
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
            OnEnter = wwDBEdit6Enter
            OnExit = wwDBEdit6Exit
          end
          object wwDBEdit22: TwwDBEdit
            Left = 231
            Top = 196
            Width = 66
            Height = 21
            BorderStyle = bsNone
            DataField = 'MANI_KM_TOTAL'
            DataSource = DS_MANIF
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
            OnEnter = wwDBEdit6Enter
            OnExit = wwDBEdit6Exit
          end
          object wwDBEdit23: TwwDBEdit
            Left = 109
            Top = 220
            Width = 188
            Height = 21
            BorderStyle = bsNone
            DataField = 'MOT_EQUIP'
            DataSource = DS_MANIF
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
            OnEnter = wwDBEdit6Enter
            OnExit = wwDBEdit6Exit
          end
        end
        object GroupBox4: TGroupBox
          Left = 316
          Top = 400
          Width = 464
          Height = 46
          Caption = 'Observação'
          Color = clScrollBar
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 3
          object wwDBEdit10: TwwDBEdit
            Left = 8
            Top = 16
            Width = 450
            Height = 21
            BorderStyle = bsNone
            DataField = 'MANI_OBS'
            DataSource = DS_MANIF
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
            OnEnter = wwDBEdit12Enter
            OnExit = wwDBEdit12Exit
          end
        end
      end
      object Button2: TButton
        Left = 8
        Top = 456
        Width = 161
        Height = 25
        Caption = 'Gerar OE'#39's do Manifesto'
        TabOrder = 1
        OnClick = Button2Click
      end
      object wwDBLookupCombo18: TwwDBLookupCombo
        Left = 344
        Top = 460
        Width = 393
        Height = 23
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'TRANS_CNPJ'#9'15'#9'TRANS_CNPJ'#9'F'#9
          'TRANS_RAZA'#9'60'#9'TRANS_RAZA'#9#9
          'TRANS_FANTASIA'#9'40'#9'TRANS_FANTASIA'#9#9)
        DataField = 'CLI_RECEBEDOR'
        DataSource = DS_MANIF
        LookupTable = qrRecebedor
        LookupField = 'TRANS_ID'
        ParentFont = False
        TabOrder = 2
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
      end
    end
    object TTabPage
      Left = 4
      Top = 25
      Caption = '   Resumo por Produtos   '
      object Label9: TLabel
        Left = 5
        Top = 8
        Width = 107
        Height = 15
        Caption = 'Manifesto Número '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText10: TDBText
        Left = 120
        Top = 8
        Width = 272
        Height = 17
        DataField = 'MANI_ID'
        DataSource = DS_MANIF
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object wwDBGrid1: TwwDBGrid
        Left = 0
        Top = 32
        Width = 786
        Height = 414
        Hint = 'Visualização dos Registros'
        Selected.Strings = (
          'PRO_COD'#9'16'#9'Código Produto'
          'PRO_DESC'#9'43'#9'Descrição'
          'MRP_PESO'#9'10'#9'Peso'
          'MRP_VOLUME'#9'10'#9'Volume'
          'MRP_QTDEPALLET'#9'10'#9'Qtde. Pallets'
          'MRP_QTDE'#9'14'#9'Qtde. UV'#9'F')
        IniAttributes.FileName = 'delphi32.ini'
        IniAttributes.SectionName = 'FManifestowwDBGrid1'
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        DataSource = DS_RMP
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
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
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clNavy
        TitleFont.Height = -11
        TitleFont.Name = 'Arial Narrow'
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
      object btn: TButton
        Left = 648
        Top = 0
        Width = 131
        Height = 25
        Caption = 'Imprimir Etiquetas'
        TabOrder = 1
        OnClick = btnClick
      end
    end
    object TTabPage
      Left = 4
      Top = 25
      Caption = '   Romaneio de Saída   '
      object Label61: TLabel
        Left = 5
        Top = 8
        Width = 107
        Height = 15
        Caption = 'Manifesto Número '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText3: TDBText
        Left = 116
        Top = 6
        Width = 509
        Height = 17
        DataField = 'MANI_ID'
        DataSource = DS_MANIF
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object SpeedButton2: TSpeedButton
        Left = 755
        Top = 3
        Width = 25
        Height = 25
        Hint = 'Visualizar Relatório'
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
      object Label58: TLabel
        Left = 2
        Top = 83
        Width = 777
        Height = 24
        Alignment = taCenter
        AutoSize = False
        BiDiMode = bdRightToLeft
        Caption = 'Cross Docking e/ou Reentrega  '
        Color = clBtnShadow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clAqua
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentBiDiMode = False
        ParentColor = False
        ParentFont = False
      end
      object GRID: TwwDBGrid
        Left = 1
        Top = 32
        Width = 783
        Height = 419
        Selected.Strings = (
          'ESTQ_TAG'#9'10'#9'Pallet TAG'
          'ESTQ_QTDE'#9'10'#9'Qtde.MAX'
          'ESTQ_QTDE_RETIRA'#9'10'#9'Qtde. Retirada'
          'PROcod'#9'8'#9'Cód.Prod'
          'PROdesc'#9'38'#9'Descrição'
          'ESTQ_LOTE'#9'10'#9'Lote'
          'ROM_DTBATCH'#9'10'#9'Batch'
          'ROM_DTVENCTO'#9'10'#9'Vencimento'
          'UVENdesc'#9'12'#9'UV'
          'AreaDESC'#9'7'#9'Área'
          'POSdesc'#9'10'#9'Posição')
        IniAttributes.FileName = 'delphi32.ini'
        IniAttributes.SectionName = 'FManifestoGRID'
        IniAttributes.Delimiter = ';;'
        TitleColor = clLime
        FixedCols = 0
        ShowHorzScrollBar = True
        Color = clWhite
        DataSource = DS_ESTQ
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        KeyOptions = [dgEnterToTab, dgAllowInsert]
        Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
        ParentFont = False
        TabOrder = 0
        TitleAlignment = taCenter
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clNavy
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = [fsBold]
        TitleLines = 1
        TitleButtons = False
        OnDblClick = GRIDDblClick
        FooterColor = clInactiveCaption
        FooterCellColor = clGrayText
      end
      object BitBtn3: TBitBtn
        Left = 567
        Top = 3
        Width = 185
        Height = 26
        Caption = 'Confirmar Romaneio ?'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = BitBtn3Click
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
          000333FFF3777777777F3000330FFFFFFF033777FF7F3FF3FF7F07B7030F00F0
          0F0377777F7F7737737F0BBB030FFFFFFF0377777F7F3FFFF37F07B7030F0000
          FF037777737F7777337F3000330FFFFFFF033777337F3FF3FF7F3333330F00F0
          00033333337F7737777F3333330FFFF0FF033FFFFF7F3FF7F3730000030F08F0
          F03377777F7F7737F7330999030FFFF0033377777F7FFFF77333099903000000
          333377777F7777773333099903333333333377777F33FFFFFFF3000003300000
          00337777733777777733333333330CCC033333333333777773333333333330C0
          3333333333333777333333333333330333333333333333733333}
        NumGlyphs = 2
      end
      object Button1: TButton
        Left = 280
        Top = 0
        Width = 75
        Height = 25
        Caption = 'Button1'
        TabOrder = 2
        Visible = False
        OnClick = Button1Click
      end
    end
    object TTabPage
      Left = 4
      Top = 25
      Caption = '   Geração Ordem Entrega   '
      object DBText4: TDBText
        Left = 116
        Top = 6
        Width = 509
        Height = 17
        DataField = 'MANI_ID'
        DataSource = DS_MANIF
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label46: TLabel
        Left = 5
        Top = 8
        Width = 107
        Height = 15
        Caption = 'Manifesto Número '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object SBT_VISU: TSpeedButton
        Left = 672
        Top = 0
        Width = 105
        Height = 27
        Caption = 'Gerar OE '
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
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
        ParentShowHint = False
        ShowHint = False
        OnClick = SBT_VISUClick
      end
      object Label53: TLabel
        Left = 514
        Top = 6
        Width = 122
        Height = 24
        Caption = 'OE - Gerada'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object Label49: TLabel
        Left = 2
        Top = 83
        Width = 777
        Height = 24
        Alignment = taCenter
        AutoSize = False
        Caption = 'Outros Transportadores'
        Color = clBtnShadow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clAqua
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label54: TLabel
        Left = 2
        Top = 32
        Width = 48
        Height = 13
        AutoSize = False
        Color = clGreen
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clAqua
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label55: TLabel
        Left = 54
        Top = 31
        Width = 194
        Height = 15
        Caption = 'Notas Fiscais do Tipo Redespacho'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object wwDBGrid2: TwwDBGrid
        Left = 0
        Top = 81
        Width = 779
        Height = 336
        Selected.Strings = (
          'CLIN_RAZA'#9'30'#9'Emitente'#9'F'#9
          'NFI_DEST_RAZA'#9'31'#9'Destinatário'#9'F'#9
          'NFI_NUMERO'#9'10'#9'NF Nº'#9'F'#9
          'NFI_ENTREGA'#9'11'#9'Entregue (S/R/D)'#9'F'#9
          'NFI_DTENTREGA_FIM'#9'13'#9'Data Entrega'#9'F'#9
          'NFI_COBRAR'#9'9'#9'Cobrar (S/N)'#9'F'#9
          'COD_EDI'#9'8'#9'EDI'#9'F'#9)
        IniAttributes.FileName = 'delphi32.ini'
        IniAttributes.SectionName = 'FNFDBG_INFI'
        IniAttributes.Delimiter = ';;'
        TitleColor = 14540032
        FixedCols = 3
        ShowHorzScrollBar = True
        Color = clWhite
        DataSource = DS_NF55
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        KeyOptions = [dgEnterToTab]
        ParentFont = False
        TabOrder = 0
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = [fsBold]
        TitleLines = 1
        TitleButtons = False
        OnCalcCellColors = wwDBGrid2CalcCellColors
        FooterColor = clInactiveCaption
        FooterCellColor = clGrayText
      end
      object wwDBComboBox2: TwwDBComboBox
        Left = 628
        Top = 148
        Width = 62
        Height = 21
        ShowButton = True
        Style = csDropDown
        MapList = True
        AllowClearKey = False
        AutoDropDown = True
        BorderStyle = bsNone
        ButtonStyle = cbsEllipsis
        DataField = 'NFI_ENTREGA'
        DataSource = DS_NF55
        DropDownCount = 8
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ItemHeight = 0
        Items.Strings = (
          'Sim'#9'S'
          'Reentrega'#9'R'
          'Devolução'#9'D')
        ParentFont = False
        Sorted = False
        TabOrder = 1
        UnboundDataType = wwDefault
      end
      object wwDBComboBox3: TwwDBComboBox
        Left = 694
        Top = 147
        Width = 62
        Height = 21
        ShowButton = True
        Style = csDropDown
        MapList = True
        AllowClearKey = False
        AutoDropDown = True
        BorderStyle = bsNone
        ButtonStyle = cbsEllipsis
        DataField = 'NFI_COBRAR'
        DataSource = DS_NF55
        DropDownCount = 8
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ItemHeight = 0
        Items.Strings = (
          'Sim'#9'S'
          'Não'#9'N')
        ParentFont = False
        Sorted = False
        TabOrder = 2
        UnboundDataType = wwDefault
      end
      object wwDBComboBox4: TwwDBComboBox
        Left = 540
        Top = 148
        Width = 62
        Height = 21
        ShowButton = True
        Style = csDropDown
        MapList = True
        AllowClearKey = False
        AutoFillDate = False
        AutoSelect = False
        BorderStyle = bsNone
        ButtonStyle = cbsEllipsis
        DataField = 'MANI_ENT_COL'
        DataSource = DS_NF55
        DropDownCount = 8
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ButtonWidth = 1
        ItemHeight = 0
        Items.Strings = (
          'Entrega'#9'E'
          'Coleta'#9'C')
        ParentFont = False
        Sorted = False
        TabOrder = 3
        UnboundDataType = wwDefault
      end
      object Panel8: TPanel
        Left = 0
        Top = 56
        Width = 778
        Height = 25
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Color = 14540032
        TabOrder = 4
        object SpeedButton9: TSpeedButton
          Left = 525
          Top = 3
          Width = 28
          Height = 19
          Hint = 'Mover SIM para todos'
          Caption = 'S'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          NumGlyphs = 2
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton9Click
        end
        object SpeedButton10: TSpeedButton
          Left = 554
          Top = 3
          Width = 28
          Height = 19
          Hint = 'Mover REENTREGA para todos'
          Caption = 'R'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          NumGlyphs = 2
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton10Click
        end
        object SpeedButton11: TSpeedButton
          Left = 583
          Top = 3
          Width = 28
          Height = 19
          Hint = 'Mover DEVOLUÇÃO para todos'
          Caption = 'D'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          NumGlyphs = 2
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton11Click
        end
        object SpeedButton12: TSpeedButton
          Left = 615
          Top = 3
          Width = 73
          Height = 19
          Hint = 'Mover (Data Atual + 1)'
          Caption = 'Data'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          NumGlyphs = 2
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton12Click
        end
      end
      object btnGeraReentrega: TBitBtn
        Left = 672
        Top = 30
        Width = 105
        Height = 25
        Caption = 'Gerar Reentrega'
        TabOrder = 5
        OnClick = btnGeraReentregaClick
      end
      object cboEDIOcorrem: TwwDBLookupCombo
        Left = 24
        Top = 312
        Width = 441
        Height = 21
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'CODIGO'#9'2'#9'Código'#9'F'
          'OCORRENCIA'#9'100'#9'Ocorrência'#9'F')
        DataField = 'COD_EDI'
        DataSource = DS_NF55
        LookupTable = qrEDi
        LookupField = 'CODIGO'
        Options = [loColLines, loRowLines, loTitles]
        TabOrder = 6
        Visible = False
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
      end
    end
    object TTabPage
      Left = 4
      Top = 25
      Caption = '   Ordem de Entrega   '
      object Label52: TLabel
        Left = 5
        Top = 8
        Width = 107
        Height = 15
        Caption = 'Manifesto Número '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText8: TDBText
        Left = 116
        Top = 6
        Width = 509
        Height = 17
        DataField = 'MANI_ID'
        DataSource = DS_MANIF
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object SpeedButton6: TSpeedButton
        Left = 648
        Top = 0
        Width = 120
        Height = 27
        Caption = 'Baixar Manifesto'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333333333333333333FFF333333333333000333333333
          3333777FFF3FFFFF33330B000300000333337F777F777773F333000E00BFBFB0
          3333777F773333F7F333000E0BFBF0003333777F7F3337773F33000E0FBFBFBF
          0333777F7F3333FF7FFF000E0BFBF0000003777F7F3337777773000E0FBFBFBF
          BFB0777F7F33FFFFFFF7000E0BF000000003777F7FF777777773000000BFB033
          33337777773FF733333333333300033333333333337773333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333}
        NumGlyphs = 2
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        OnClick = SpeedButton6Click
      end
      object Label50: TLabel
        Left = 2
        Top = 83
        Width = 780
        Height = 24
        Alignment = taCenter
        AutoSize = False
        Caption = 'Outros Transportadores'
        Color = clBtnShadow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clAqua
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object btn2: TSpeedButton
        Left = 335
        Top = 0
        Width = 113
        Height = 27
        Caption = 'Baixar Manifesto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333333333333333333FFF333333333333000333333333
          3333777FFF3FFFFF33330B000300000333337F777F777773F333000E00BFBFB0
          3333777F773333F7F333000E0BFBF0003333777F7F3337773F33000E0FBFBFBF
          0333777F7F3333FF7FFF000E0BFBF0000003777F7F3337777773000E0FBFBFBF
          BFB0777F7F33FFFFFFF7000E0BF000000003777F7FF777777773000000BFB033
          33337777773FF733333333333300033333333333337773333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333}
        NumGlyphs = 2
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        Visible = False
        OnClick = SpeedButton6Click
      end
      object wwDBLookupCombo12: TwwDBLookupCombo
        Left = 312
        Top = 88
        Width = 73
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
        DataField = 'VEIC_ID_RECEB'
        DataSource = DS_OCE
        LookupTable = Q_VEIC3
        LookupField = 'VEIC_ID'
        DropDownCount = 15
        ParentFont = False
        TabOrder = 0
        AutoDropDown = True
        ShowButton = True
        SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
        PreciseEditRegion = False
        AllowClearKey = True
        OnEnter = wwDBLookupCombo1Enter
        OnExit = wwDBLookupCombo1Exit
      end
      object wwDBLookupCombo13: TwwDBLookupCombo
        Left = 432
        Top = 88
        Width = 73
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
        DataSource = DS_OCE
        LookupTable = Q_REG2
        LookupField = 'REG_ID'
        DropDownCount = 15
        ParentFont = False
        TabOrder = 1
        AutoDropDown = True
        ShowButton = True
        SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
        PreciseEditRegion = False
        AllowClearKey = True
        OnEnter = wwDBLookupCombo1Enter
        OnExit = wwDBLookupCombo1Exit
      end
      object wwDBGrid3: TwwDBGrid
        Left = 1
        Top = 29
        Width = 783
        Height = 292
        Selected.Strings = (
          'ORD_ID'#9'10'#9'OC/E'#9'F'
          'OS_ID'#9'10'#9'OS'#9'F'
          'VEICNOME'#9'19'#9'Veículo Cobrar'#9'F'
          'REGNOME'#9'18'#9'Região Cobrar'#9'F'
          'ORD_PESO_TOTAL'#9'18'#9'Peso (Kg)'#9'F'
          'ORD_VOLUME'#9'18'#9'Volume (M3)'#9'F'
          'ORD_QTDE_PALLET'#9'10'#9'Qtde Pallet'#9'F'
          'ORD_VALORTOTAL'#9'15'#9'Valor'#9'F'
          'ORD_TPCARGA'#9'1'#9'Tp.Carga'#9'F'
          'ORD_QTDE_UV'#9'10'#9'Qtde.UV'#9'F'
          'CLIFraza'#9'40'#9'Cliente Final'#9'F'
          'TRANSFANTASIA'#9'40'#9'Redespacho'#9'F')
        IniAttributes.FileName = 'delphi32.ini'
        IniAttributes.SectionName = 'FNFDBG_INFI'
        IniAttributes.Delimiter = ';;'
        TitleColor = clTeal
        FixedCols = 0
        ShowHorzScrollBar = True
        Color = clWhite
        DataSource = DS_OCE
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = []
        KeyOptions = [dgEnterToTab]
        ParentFont = False
        TabOrder = 2
        TitleAlignment = taCenter
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clYellow
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = [fsBold]
        TitleLines = 1
        TitleButtons = False
        FooterColor = clInactiveCaption
        FooterCellColor = clGrayText
      end
      object TabbedNotebook2: TTabbedNotebook
        Left = 728
        Top = 437
        Width = 782
        Height = 331
        PageIndex = 1
        TabFont.Charset = ANSI_CHARSET
        TabFont.Color = clRed
        TabFont.Height = -11
        TabFont.Name = 'Arial'
        TabFont.Style = [fsBold]
        TabOrder = 3
        Visible = False
        object TTabPage
          Left = 4
          Top = 24
          Caption = '   Endereço da Coleta   '
          object GroupBox2: TGroupBox
            Left = 71
            Top = -1
            Width = 661
            Height = 300
            Color = clActiveBorder
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 0
            object Label20: TLabel
              Left = 68
              Top = 86
              Width = 19
              Height = 15
              Caption = 'CEP'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial Narrow'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label22: TLabel
              Left = 44
              Top = 109
              Width = 43
              Height = 15
              Caption = 'Endereço'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial Narrow'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label23: TLabel
              Left = 58
              Top = 157
              Width = 29
              Height = 15
              Caption = 'Bairro'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial Narrow'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label24: TLabel
              Left = 56
              Top = 208
              Width = 31
              Height = 15
              Caption = 'Estado'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial Narrow'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label25: TLabel
              Left = 44
              Top = 232
              Width = 43
              Height = 15
              Caption = 'Telefones'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial Narrow'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label27: TLabel
              Left = 71
              Top = 257
              Width = 16
              Height = 15
              Caption = 'Fax'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial Narrow'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label28: TLabel
              Left = 365
              Top = 232
              Width = 28
              Height = 15
              Caption = 'E-Mail'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial Narrow'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label29: TLabel
              Left = 220
              Top = 230
              Width = 9
              Height = 15
              Caption = ' / '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label30: TLabel
              Left = 41
              Top = 181
              Width = 46
              Height = 15
              Caption = 'Município'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial Narrow'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label34: TLabel
              Left = 4
              Top = 133
              Width = 83
              Height = 15
              Caption = 'Nº,bloco,conjunto'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial Narrow'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label35: TLabel
              Left = 357
              Top = 257
              Width = 36
              Height = 15
              Caption = 'Contato'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial Narrow'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object wwDBEdit2: TwwDBEdit
              Left = 90
              Top = 83
              Width = 69
              Height = 21
              BorderStyle = bsNone
              DataField = 'ORD_COL_CEP'
              DataSource = DS_OCE
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              MaxLength = 9
              ParentFont = False
              TabOrder = 1
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object wwDBEdit3: TwwDBEdit
              Left = 90
              Top = 107
              Width = 236
              Height = 21
              BorderStyle = bsNone
              DataField = 'ORD_COL_ENDERECO'
              DataSource = DS_OCE
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
            end
            object wwDBEdit4: TwwDBEdit
              Left = 90
              Top = 155
              Width = 164
              Height = 21
              BorderStyle = bsNone
              DataField = 'ORD_COL_ENDERECO_BAIRRO'
              DataSource = DS_OCE
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
            end
            object wwDBLookupCombo6: TwwDBLookupCombo
              Left = 90
              Top = 205
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
              DataField = 'UF_SIGLA_COL'
              DataSource = DS_OCE
              LookupTable = Q_UF1
              LookupField = 'UF_SIGLA'
              ParentFont = False
              TabOrder = 6
              AutoDropDown = True
              ShowButton = True
              SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
              PreciseEditRegion = False
              AllowClearKey = False
            end
            object wwDBEdit5: TwwDBEdit
              Left = 90
              Top = 230
              Width = 128
              Height = 21
              BorderStyle = bsNone
              DataField = 'ORD_COL_TEL1'
              DataSource = DS_OCE
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
            end
            object wwDBEdit7: TwwDBEdit
              Left = 90
              Top = 255
              Width = 128
              Height = 21
              BorderStyle = bsNone
              DataField = 'ORD_COL_FAX'
              DataSource = DS_OCE
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              MaxLength = 14
              ParentFont = False
              TabOrder = 9
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object wwDBEdit8: TwwDBEdit
              Left = 396
              Top = 230
              Width = 217
              Height = 21
              BorderStyle = bsNone
              DataField = 'ORD_COL_EMAIL'
              DataSource = DS_OCE
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
            end
            object wwDBEdit9: TwwDBEdit
              Left = 231
              Top = 230
              Width = 128
              Height = 21
              BorderStyle = bsNone
              DataField = 'ORD_COL_TEL2'
              DataSource = DS_OCE
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              MaxLength = 14
              ParentFont = False
              TabOrder = 8
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object wwDBEdit11: TwwDBEdit
              Left = 90
              Top = 131
              Width = 232
              Height = 21
              BorderStyle = bsNone
              DataField = 'ORD_COL_ENDERECO_COMPL'
              DataSource = DS_OCE
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
            end
            object wwDBEdit13: TwwDBEdit
              Left = 396
              Top = 255
              Width = 217
              Height = 21
              BorderStyle = bsNone
              DataField = 'ORD_COL_CONTATO'
              DataSource = DS_OCE
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
            end
            object RadioGroup2: TRadioGroup
              Left = 95
              Top = 26
              Width = 418
              Height = 65
              Caption = 'Aproveitar Endereço'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Items.Strings = (
                'Clientes NBF'
                'Clientes Finais')
              ParentFont = False
              TabOrder = 0
            end
            object wwDBLookupCombo9: TwwDBLookupCombo
              Left = 124
              Top = 40
              Width = 281
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
              LookupTable = Q_CLIF
              LookupField = 'CLIF_ID'
              ParentFont = False
              TabOrder = 13
              Visible = False
              AutoDropDown = True
              ShowButton = True
              SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
              PreciseEditRegion = False
              AllowClearKey = False
            end
            object wwDBLookupCombo7: TwwDBLookupCombo
              Left = 124
              Top = 40
              Width = 281
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
              LookupTable = Q_CLIN
              LookupField = 'CLIN_ID'
              ParentFont = False
              TabOrder = 12
              Visible = False
              AutoDropDown = True
              ShowButton = True
              SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
              PreciseEditRegion = False
              AllowClearKey = False
            end
            object wwDBLookupCombo14: TwwDBLookupCombo
              Left = 90
              Top = 180
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
                'MUN_NOME'#9'40'#9'MUN_NOME'#9'F')
              DataField = 'MUN_ID_COL'
              DataSource = DS_OCE
              LookupTable = Q_MUNI
              LookupField = 'MUN_ID'
              DropDownCount = 5
              ParentFont = False
              TabOrder = 5
              AutoDropDown = True
              ShowButton = True
              SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
              PreciseEditRegion = False
              AllowClearKey = False
            end
          end
        end
        object TTabPage
          Left = 4
          Top = 24
          Caption = '   Endereço da Entrega   '
          object GroupBox3: TGroupBox
            Left = 69
            Top = 0
            Width = 660
            Height = 299
            Color = clActiveBorder
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 0
            object Label8: TLabel
              Left = 47
              Top = 109
              Width = 43
              Height = 15
              Caption = 'Endereço'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial Narrow'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label42: TLabel
              Left = 61
              Top = 157
              Width = 29
              Height = 15
              Caption = 'Bairro'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial Narrow'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label12: TLabel
              Left = 59
              Top = 206
              Width = 31
              Height = 15
              Caption = 'Estado'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial Narrow'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label10: TLabel
              Left = 47
              Top = 231
              Width = 43
              Height = 15
              Caption = 'Telefones'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial Narrow'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label11: TLabel
              Left = 74
              Top = 255
              Width = 16
              Height = 15
              Caption = 'Fax'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial Narrow'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label13: TLabel
              Left = 374
              Top = 231
              Width = 28
              Height = 15
              Caption = 'E-Mail'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial Narrow'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label14: TLabel
              Left = 223
              Top = 231
              Width = 9
              Height = 15
              Caption = ' / '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label17: TLabel
              Left = 44
              Top = 181
              Width = 46
              Height = 15
              Caption = 'Município'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial Narrow'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label41: TLabel
              Left = 7
              Top = 133
              Width = 83
              Height = 15
              Caption = 'Nº,bloco,conjunto'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial Narrow'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label19: TLabel
              Left = 366
              Top = 255
              Width = 36
              Height = 15
              Caption = 'Contato'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial Narrow'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label15: TLabel
              Left = 71
              Top = 86
              Width = 19
              Height = 15
              Caption = 'CEP'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial Narrow'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object DBE_CLI_FEND: TwwDBEdit
              Left = 93
              Top = 107
              Width = 236
              Height = 21
              BorderStyle = bsNone
              DataField = 'ORD_ENT_ENDERECO'
              DataSource = DS_OCE
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
            end
            object wwDBEdit18: TwwDBEdit
              Left = 93
              Top = 155
              Width = 164
              Height = 21
              BorderStyle = bsNone
              DataField = 'ORD_ENT_ENDERECO_BAIRRO'
              DataSource = DS_OCE
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
            end
            object DBLC_DBE_FEST: TwwDBLookupCombo
              Left = 93
              Top = 205
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
                'UF_NOME'#9'30'#9'UF_NOME'#9'F')
              DataField = 'UF_SIGLA_ENT'
              DataSource = DS_OCE
              LookupTable = Q_UF2
              LookupField = 'UF_SIGLA'
              ParentFont = False
              TabOrder = 6
              AutoDropDown = True
              ShowButton = True
              SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
              PreciseEditRegion = False
              AllowClearKey = False
            end
            object DBE_CLI_FFAX: TwwDBEdit
              Left = 93
              Top = 229
              Width = 128
              Height = 21
              BorderStyle = bsNone
              DataField = 'ORD_ENT_TEL1'
              DataSource = DS_OCE
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
            end
            object DBE_CLI_FTEL: TwwDBEdit
              Left = 93
              Top = 253
              Width = 128
              Height = 21
              BorderStyle = bsNone
              DataField = 'ORD_ENT_FAX'
              DataSource = DS_OCE
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              MaxLength = 14
              ParentFont = False
              TabOrder = 9
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object DBE_CLI_FEMA: TwwDBEdit
              Left = 405
              Top = 229
              Width = 217
              Height = 21
              BorderStyle = bsNone
              DataField = 'ORD_ENT_EMAIL'
              DataSource = DS_OCE
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
            end
            object DBE_CLI_FTE2: TwwDBEdit
              Left = 234
              Top = 229
              Width = 128
              Height = 21
              BorderStyle = bsNone
              DataField = 'ORD_ENT_TEL2'
              DataSource = DS_OCE
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              MaxLength = 14
              ParentFont = False
              TabOrder = 8
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object wwDBEdit16: TwwDBEdit
              Left = 93
              Top = 131
              Width = 232
              Height = 21
              BorderStyle = bsNone
              DataField = 'ORD_ENT_ENDERECO_COMPL'
              DataSource = DS_OCE
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
            end
            object wwDBEdit1: TwwDBEdit
              Left = 405
              Top = 253
              Width = 217
              Height = 21
              BorderStyle = bsNone
              DataField = 'ORD_ENT_CONTATO'
              DataSource = DS_OCE
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
            end
            object RadioGroup1: TRadioGroup
              Left = 7
              Top = 14
              Width = 418
              Height = 65
              Caption = 'Aproveitar Endereço'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Items.Strings = (
                'Clientes NBF'
                'Clientes Finais')
              ParentFont = False
              TabOrder = 0
            end
            object wwDBLookupCombo8: TwwDBLookupCombo
              Left = 128
              Top = 40
              Width = 281
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
              LookupTable = Q_CLIF
              LookupField = 'CLIF_ID'
              ParentFont = False
              TabOrder = 12
              Visible = False
              AutoDropDown = True
              ShowButton = True
              SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
              PreciseEditRegion = False
              AllowClearKey = False
            end
            object wwDBLookupCombo5: TwwDBLookupCombo
              Left = 128
              Top = 40
              Width = 281
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
              LookupTable = Q_CLIN
              LookupField = 'CLIN_ID'
              ParentFont = False
              TabOrder = 13
              Visible = False
              AutoDropDown = True
              ShowButton = True
              SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
              PreciseEditRegion = False
              AllowClearKey = False
            end
            object DBE_CLI_FCEP: TwwDBEdit
              Left = 93
              Top = 83
              Width = 69
              Height = 21
              BorderStyle = bsNone
              DataField = 'ORD_ENT_CEP'
              DataSource = DS_OCE
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              MaxLength = 9
              ParentFont = False
              TabOrder = 1
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object wwDBLookupCombo15: TwwDBLookupCombo
              Left = 93
              Top = 180
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
              DataField = 'MUN_ID_ENT'
              DataSource = DS_OCE
              LookupTable = Q_MUNI2
              LookupField = 'MUN_ID'
              ParentFont = False
              TabOrder = 5
              AutoDropDown = True
              ShowButton = True
              SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
              PreciseEditRegion = False
              AllowClearKey = False
            end
          end
        end
      end
      object wwDBComboBox5: TwwDBComboBox
        Left = 140
        Top = 60
        Width = 62
        Height = 21
        ShowButton = True
        Style = csDropDown
        MapList = True
        AllowClearKey = False
        AutoFillDate = False
        AutoSelect = False
        BorderStyle = bsNone
        ButtonStyle = cbsEllipsis
        DataField = 'ORD_TPCARGA'
        DataSource = DS_OCE
        DropDownCount = 8
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ButtonWidth = 1
        ItemHeight = 0
        Items.Strings = (
          'Granel'#9'G'
          'Palletizada'#9'P')
        ParentFont = False
        Sorted = False
        TabOrder = 4
        UnboundDataType = wwDefault
      end
      object wwDBLookupCombo16: TwwDBLookupCombo
        Left = 109
        Top = 343
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
        DataField = 'TRANS_ID_REDES'
        DataSource = DS_OCE
        LookupTable = Q_TRANS2
        LookupField = 'TRANS_ID'
        Enabled = False
        ParentFont = False
        TabOrder = 5
        AutoDropDown = True
        ShowButton = True
        SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
        PreciseEditRegion = False
        AllowClearKey = False
        OnCloseUp = wwDBLookupCombo2CloseUp
        OnEnter = wwDBLookupCombo2Enter
        OnExit = wwDBLookupCombo2Exit
      end
      object btnApagaOCE: TRzBitBtn
        Left = 0
        Top = 328
        Width = 153
        Height = 33
        Caption = 'Cancela OE'
        TabOrder = 6
        Visible = False
        OnClick = btnApagaOCEClick
        Glyph.Data = {
          76060000424D7606000000000000360400002800000018000000180000000100
          08000000000040020000210B0000210B00000001000000000000001CD400FF00
          FF00001CFF00FFFFFF0000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000010101010101
          0101010101010101010101010101010101010101010101010101010101010101
          0101010101010100000101010101010101010101010101010101010101010000
          0001010100000001010101010101010101010101010000000101010100000000
          0101010101010101010101000000000101010101000000000001010101010101
          0101000000000101010101010100000000000101010101010100000000010101
          0101010101010200000000010101010100000000010101010101010101010101
          0000000001010000000000010101010101010101010101010100000000000000
          0000010101010101010101010101010101010000020002000001010101010101
          0101010101010101010101000000020001010101010101010101010101010101
          0101000002000002020101010101010101010101010101010100000200020202
          0002010101010101010101010101010102020200020101020202020101010101
          0101010101010102020002020101010102020202010101010101010101010202
          0202020101010101010102020201010101010101010202020202010101010101
          0101010202020101010101010202020202010101010101010101010101020101
          0101010202020202010101010101010101010101010101010101010202020201
          0101010101010101010101010101010101010102020201010101010101010101
          0101010101010101010101010101010101010101010101010101010101010101
          0101010101010101010101010101010101010101010101010101}
      end
    end
  end
  object Panel4: TPanel
    Left = 747
    Top = 341
    Width = 782
    Height = 476
    BevelInner = bvLowered
    TabOrder = 2
    Visible = False
    object Label18: TLabel
      Left = 269
      Top = 9
      Width = 70
      Height = 15
      Caption = 'Cód.Produto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label38: TLabel
      Left = 259
      Top = 30
      Width = 80
      Height = 15
      Caption = 'Desc. Produto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label40: TLabel
      Left = 477
      Top = 9
      Width = 16
      Height = 15
      Caption = 'UV'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText5: TDBText
      Left = 343
      Top = 7
      Width = 122
      Height = 22
      DataField = 'PRO_COD'
      DataSource = DS_PROD2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object DBText6: TDBText
      Left = 343
      Top = 28
      Width = 346
      Height = 22
      DataField = 'PRO_DESC'
      DataSource = DS_PROD2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object DBText7: TDBText
      Left = 496
      Top = 7
      Width = 140
      Height = 22
      DataField = 'UVEN_NOME'
      DataSource = DS_UNIDVEND
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label36: TLabel
      Left = 7
      Top = 11
      Width = 235
      Height = 19
      Caption = 'Pallets disponíveis no Estoque'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object SpeedButton14: TSpeedButton
      Left = 8
      Top = 48
      Width = 28
      Height = 27
      Hint = 'Selecionar Todos'
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000130B0000130B00000001000000010000840000008C29
        0000BD4A0000FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
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
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00030303030303
        0303030303030303030303030300000000000000000000030303030303020101
        0101010101010003030303030302010101010101010100030303030303020101
        0104040101010003030303030302010104040404010100030303030303020104
        0404040404010003030303030302010101040401010100030303030303020101
        0104040101010003030303030302010101040401010100030303030303020101
        0104040101010003030303030302010101010101010100030303030303020202
        0202020202020003030303030302040404040404040400030303030303020404
        0404040404040003030303030302020202020202020200030303}
      ParentShowHint = False
      ShowHint = True
      Visible = False
    end
    object Label60: TLabel
      Left = 376
      Top = 440
      Width = 38
      Height = 13
      Caption = 'Label60'
      Color = 13528064
      ParentColor = False
      Visible = False
    end
    object SpeedButton15: TSpeedButton
      Left = 700
      Top = 44
      Width = 31
      Height = 30
      Flat = True
      Glyph.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        08000000000040020000D30E0000D30E00000001000000010000181810001818
        18002929290031313100313931004A39310039393900423939004A423900524A
        3900424242004A4A42004A4A4A00524A4A0052524A00735A4A00525252005A5A
        5A007B6B5A00846B5A00636363006B6363006B6B6B0094846B00737373009484
        73009C8C7300737B7B007B7B7B0094947B00A5947B00848484009C948400A594
        8400AD94840084848C008C8C8C0094948C00A59C8C00AD9C8C00ADA58C00EFBD
        8C0094949400A59C9400B5A59400BDB59400C6B59400DEBD9400EFBD9400F7BD
        9400EFC6940094949C009C9C9C00A5A59C00B5AD9C00EFBD9C00E7C69C00EFC6
        9C00E7CE9C009CA5A500A5A5A500A5ADA500B5ADA500B5B5A500C6BDA500CEBD
        A500D6BDA500E7C6A500F7CEA500EFD6A500FFD6A500ADADAD00B5ADAD00B5B5
        AD00DEC6AD00EFC6AD00DECEAD00EFCEAD00F7CEAD00F7D6AD00FFD6AD00F7DE
        AD00B5B5B500CEC6B500E7CEB500F7D6B500FFD6B500FFDEB500BDBDBD00EFD6
        BD00F7D6BD00FFD6BD00F7DEBD00FFDEBD00FFE7BD00BDBDC600BDC6C600C6C6
        C600F7D6C600F7DEC600FFDEC600FFF7C600C6C6CE00CECECE00D6D6CE00EFDE
        CE00FFDECE00F7E7CE00FFE7CE00FFEFCE00D6D6D600DEDED600FFDED600FFE7
        D600FFEFD600DEDEDE00FFF7DE00FFFFDE00E7E7E700EFE7E700FFEFE700FFF7
        E700FFFFE700EFEFEF00FFF7EF00FFFFEF00F7F7F700FFFFF700FF00FF00F7FF
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
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00808080808080
        8080808080808080808080808080808080808080808080808080808080808080
        80808080800616808080808080808080808080808080808080808080110A103C
        808080808080808080808080808080808080800C0C2A241C5280808080808080
        808080808080808080800A0C2A6E582452808080808080808080808080808080
        8006102A676734528080808080808080808080808080808002113461612A3C80
        80808080808080808080808080808016013452612A3C80808080808080808080
        80808080808080110624472A4780808080808080808080808080808080801601
        0C161F3C8080808080808080808017030D0C0A173C140616342A678080808080
        808080802A090F203E36211305010E4780808080808080808080803308176B7D
        7974747121081680808080808080808080808007207974544A4A596C7F2B1580
        808080808080808080803319697843293737322F7872121B8080808080808080
        8080262E6C714B29303029386B751A188080808080808080808034426C71634E
        44444B646C6D271F8080808080808080808026415D64635A555A5A645C6D2C24
        8080808080808080808026405556647274746C5A56651E238080808080808080
        808080264E507181817F7F7056451D3C80808080808080808080802536446C81
        81827C64572834808080808080808080808080803B2D4F727A745E4541348080
        808080808080808080808080803C3F4C453A4A53358080808080808080808080
        8080808080803F3F3F3F3F3F8080808080808080808080808080}
      OnClick = SpeedButton15Click
    end
    object BitBtn1: TBitBtn
      Left = 741
      Top = 8
      Width = 36
      Height = 25
      Hint = 'Cancelar'
      Cancel = True
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = BitBtn1Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
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
      Style = bsNew
    end
    object DBG_INFI: TwwDBGrid
      Left = 4
      Top = 78
      Width = 762
      Height = 339
      Selected.Strings = (
        'MARCADOR'#9'1'#9'Marcador'#9'F'
        'ESTQ_TAG'#9'10'#9'Pallet TAG'#9'F'
        'AR_NOME'#9'13'#9'Area'#9'F'
        'POS_COD'#9'16'#9'Posição'#9'F'
        'ESTQ_QTDE'#9'10'#9'Qtde.Original'#9'F'
        'ESTQ_QTDE_RETIRA'#9'10'#9'Qtde. a Retirar'#9'F'
        'ESTQ_LOTE'#9'20'#9'Lote'#9'F'
        'ROM_DTBATCH'#9'18'#9'Batch'#9'F'
        'ROM_DTVENCTO'#9'13'#9'Vencimento'#9'F')
      IniAttributes.FileName = 'delphi32.ini'
      IniAttributes.SectionName = 'FNFDBG_INFI'
      IniAttributes.Delimiter = ';;'
      TitleColor = clLime
      FixedCols = 0
      ShowHorzScrollBar = True
      Color = clWhite
      DataSource = DS_ESTQ2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      KeyOptions = [dgEnterToTab]
      ParentFont = False
      TabOrder = 1
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clNavy
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = [fsBold]
      TitleLines = 1
      TitleButtons = False
      OnCalcCellColors = DBG_INFICalcCellColors
      FooterColor = clInactiveCaption
      FooterCellColor = clGrayText
    end
    object DBLC_INF_PROD: TwwDBLookupCombo
      Left = 77
      Top = 169
      Width = 76
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'AR_NOME'#9'40'#9'AR_NOME'#9'F')
      DataField = 'AR_ID'
      DataSource = DS_ESTQ2
      LookupTable = Q_AREA
      LookupField = 'AR_ID'
      Enabled = False
      ParentFont = False
      TabOrder = 2
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
    end
    object wwDBLookupCombo3: TwwDBLookupCombo
      Left = 61
      Top = 281
      Width = 76
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'POS_COD'#9'16'#9'POS_COD'#9'F')
      DataField = 'POS_ID'
      DataSource = DS_ESTQ2
      LookupTable = Q_POS
      LookupField = 'POS_ID'
      Enabled = False
      ParentFont = False
      TabOrder = 3
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
    end
    object wwDBEdit17: TwwDBEdit
      Left = 48
      Top = 224
      Width = 89
      Height = 21
      CharCase = ecUpperCase
      DataField = 'MARCADOR'
      DataSource = DS_ESTQ2
      TabOrder = 4
      UnboundDataType = wwDefault
      UnboundAlignment = taCenter
      Visible = False
      WantReturns = False
      WordWrap = False
      OnDblClick = wwDBEdit17DblClick
    end
    object RadioGroup4: TRadioGroup
      Left = 106
      Top = 43
      Width = 591
      Height = 33
      Caption = 'Ordenação'
      Columns = 6
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ItemIndex = 0
      Items.Strings = (
        'Pallet TAG'
        'Área'
        'Posição'
        'Vencimento'
        'Batch'
        'Lote')
      ParentFont = False
      TabOrder = 5
      OnClick = RadioGroup4Click
    end
    object GroupBox5: TGroupBox
      Left = 8
      Top = 420
      Width = 145
      Height = 35
      Caption = 'Qtde Solicitada:'
      TabOrder = 6
      object lbQtdeSolicitada: TLabel
        Left = 8
        Top = 16
        Width = 129
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = '0'
      end
    end
    object GroupBox6: TGroupBox
      Left = 160
      Top = 420
      Width = 145
      Height = 35
      Caption = 'Qtde Selecionada:'
      TabOrder = 7
      object lbSelecionada: TLabel
        Left = 8
        Top = 16
        Width = 129
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = '0'
      end
    end
    object pnlLote: TPanel
      Left = 540
      Top = 76
      Width = 225
      Height = 165
      TabOrder = 8
      Visible = False
      object SpeedButton17: TSpeedButton
        Left = 9
        Top = 125
        Width = 104
        Height = 30
        Caption = 'Fechar'
        Flat = True
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FF0732DE0732DEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FF0732DE0732DE0732DEFF00FFFF00FFFF00FF0732DE0732DE0732
          DEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FF0732DE0732DE0732DEFF00FFFF00FFFF00FFFF00FF
          0732DE0732DE0732DE0732DEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FF0732DE0732DE0732DE0732DEFF00FFFF00FFFF
          00FFFF00FFFF00FF0732DE0732DE0732DE0732DE0732DEFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0732DE0732DE0732DE0732DEFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0732DE0732DE0732DE0732DE07
          32DEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0732DE0732DE0732DE
          0732DEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0335
          FB0732DE0732DE0732DE0732DEFF00FFFF00FFFF00FFFF00FFFF00FF0732DE07
          32DE0732DE0732DEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FF0732DE0732DE0732DE0732DEFF00FFFF00FF0732
          DE0732DE0732DE0732DE0732DEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0732DE0732DE0732DE
          0732DE0732DE0732DE0732DE0732DE0732DEFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FF0732DE0732DE0335FB0732DE0335FB0732DE0732DEFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FF0732DE0732DE0732DE0335FB0732DEFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0732DE0732DE0335FB0732DE0732
          DE0335FB0335FBFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0732DE0732DE0335FB
          0732DE0335FB0335FB0335FB0732DE0335FBFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0335FB03
          35FB0335FB0732DE0335FBFF00FFFF00FF0335FB0335FB0335FB0335FBFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FF0335FB0335FB0732DE0335FB0335FBFF00FFFF00FFFF00FFFF00FF0335FB03
          35FB0335FB0335FBFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FF0335FB0335FB0335FB0335FB0335FBFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FF0335FB0335FB0335FBFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FF0335FB0335FB0335FB0335FB0335FBFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0335FB0335FB0335FBFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FF0335FB0335FB0335FB0335FB0335FBFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FF0335FBFF00FFFF00FFFF00FFFF00FFFF00FF0335FB0335FB0335FB0335
          FB0335FBFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0335FB
          0335FB0335FB0335FBFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FF0335FB0335FB0335FBFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        OnClick = SpeedButton17Click
      end
      object GroupBox7: TGroupBox
        Left = 8
        Top = 8
        Width = 185
        Height = 50
        Caption = 'Informe o lote'
        TabOrder = 0
        object SpeedButton16: TSpeedButton
          Left = 146
          Top = 13
          Width = 31
          Height = 30
          Flat = True
          Glyph.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000D30E0000D30E00000001000000010000181810001818
            18002929290031313100313931004A39310039393900423939004A423900524A
            3900424242004A4A42004A4A4A00524A4A0052524A00735A4A00525252005A5A
            5A007B6B5A00846B5A00636363006B6363006B6B6B0094846B00737373009484
            73009C8C7300737B7B007B7B7B0094947B00A5947B00848484009C948400A594
            8400AD94840084848C008C8C8C0094948C00A59C8C00AD9C8C00ADA58C00EFBD
            8C0094949400A59C9400B5A59400BDB59400C6B59400DEBD9400EFBD9400F7BD
            9400EFC6940094949C009C9C9C00A5A59C00B5AD9C00EFBD9C00E7C69C00EFC6
            9C00E7CE9C009CA5A500A5A5A500A5ADA500B5ADA500B5B5A500C6BDA500CEBD
            A500D6BDA500E7C6A500F7CEA500EFD6A500FFD6A500ADADAD00B5ADAD00B5B5
            AD00DEC6AD00EFC6AD00DECEAD00EFCEAD00F7CEAD00F7D6AD00FFD6AD00F7DE
            AD00B5B5B500CEC6B500E7CEB500F7D6B500FFD6B500FFDEB500BDBDBD00EFD6
            BD00F7D6BD00FFD6BD00F7DEBD00FFDEBD00FFE7BD00BDBDC600BDC6C600C6C6
            C600F7D6C600F7DEC600FFDEC600FFF7C600C6C6CE00CECECE00D6D6CE00EFDE
            CE00FFDECE00F7E7CE00FFE7CE00FFEFCE00D6D6D600DEDED600FFDED600FFE7
            D600FFEFD600DEDEDE00FFF7DE00FFFFDE00E7E7E700EFE7E700FFEFE700FFF7
            E700FFFFE700EFEFEF00FFF7EF00FFFFEF00F7F7F700FFFFF700FF00FF00F7FF
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
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00808080808080
            8080808080808080808080808080808080808080808080808080808080808080
            80808080800616808080808080808080808080808080808080808080110A103C
            808080808080808080808080808080808080800C0C2A241C5280808080808080
            808080808080808080800A0C2A6E582452808080808080808080808080808080
            8006102A676734528080808080808080808080808080808002113461612A3C80
            80808080808080808080808080808016013452612A3C80808080808080808080
            80808080808080110624472A4780808080808080808080808080808080801601
            0C161F3C8080808080808080808017030D0C0A173C140616342A678080808080
            808080802A090F203E36211305010E4780808080808080808080803308176B7D
            7974747121081680808080808080808080808007207974544A4A596C7F2B1580
            808080808080808080803319697843293737322F7872121B8080808080808080
            8080262E6C714B29303029386B751A188080808080808080808034426C71634E
            44444B646C6D271F8080808080808080808026415D64635A555A5A645C6D2C24
            8080808080808080808026405556647274746C5A56651E238080808080808080
            808080264E507181817F7F7056451D3C80808080808080808080802536446C81
            81827C64572834808080808080808080808080803B2D4F727A745E4541348080
            808080808080808080808080803C3F4C453A4A53358080808080808080808080
            8080808080803F3F3F3F3F3F8080808080808080808080808080}
          OnClick = SpeedButton16Click
        end
        object edtLote: TEdit
          Left = 8
          Top = 19
          Width = 129
          Height = 21
          TabOrder = 0
        end
      end
      object GroupBox8: TGroupBox
        Left = 8
        Top = 64
        Width = 185
        Height = 49
        Caption = 'Informe o Vencimento'
        TabOrder = 1
        object SpeedButton18: TSpeedButton
          Left = 146
          Top = 13
          Width = 31
          Height = 30
          Flat = True
          Glyph.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000D30E0000D30E00000001000000010000181810001818
            18002929290031313100313931004A39310039393900423939004A423900524A
            3900424242004A4A42004A4A4A00524A4A0052524A00735A4A00525252005A5A
            5A007B6B5A00846B5A00636363006B6363006B6B6B0094846B00737373009484
            73009C8C7300737B7B007B7B7B0094947B00A5947B00848484009C948400A594
            8400AD94840084848C008C8C8C0094948C00A59C8C00AD9C8C00ADA58C00EFBD
            8C0094949400A59C9400B5A59400BDB59400C6B59400DEBD9400EFBD9400F7BD
            9400EFC6940094949C009C9C9C00A5A59C00B5AD9C00EFBD9C00E7C69C00EFC6
            9C00E7CE9C009CA5A500A5A5A500A5ADA500B5ADA500B5B5A500C6BDA500CEBD
            A500D6BDA500E7C6A500F7CEA500EFD6A500FFD6A500ADADAD00B5ADAD00B5B5
            AD00DEC6AD00EFC6AD00DECEAD00EFCEAD00F7CEAD00F7D6AD00FFD6AD00F7DE
            AD00B5B5B500CEC6B500E7CEB500F7D6B500FFD6B500FFDEB500BDBDBD00EFD6
            BD00F7D6BD00FFD6BD00F7DEBD00FFDEBD00FFE7BD00BDBDC600BDC6C600C6C6
            C600F7D6C600F7DEC600FFDEC600FFF7C600C6C6CE00CECECE00D6D6CE00EFDE
            CE00FFDECE00F7E7CE00FFE7CE00FFEFCE00D6D6D600DEDED600FFDED600FFE7
            D600FFEFD600DEDEDE00FFF7DE00FFFFDE00E7E7E700EFE7E700FFEFE700FFF7
            E700FFFFE700EFEFEF00FFF7EF00FFFFEF00F7F7F700FFFFF700FF00FF00F7FF
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
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00808080808080
            8080808080808080808080808080808080808080808080808080808080808080
            80808080800616808080808080808080808080808080808080808080110A103C
            808080808080808080808080808080808080800C0C2A241C5280808080808080
            808080808080808080800A0C2A6E582452808080808080808080808080808080
            8006102A676734528080808080808080808080808080808002113461612A3C80
            80808080808080808080808080808016013452612A3C80808080808080808080
            80808080808080110624472A4780808080808080808080808080808080801601
            0C161F3C8080808080808080808017030D0C0A173C140616342A678080808080
            808080802A090F203E36211305010E4780808080808080808080803308176B7D
            7974747121081680808080808080808080808007207974544A4A596C7F2B1580
            808080808080808080803319697843293737322F7872121B8080808080808080
            8080262E6C714B29303029386B751A188080808080808080808034426C71634E
            44444B646C6D271F8080808080808080808026415D64635A555A5A645C6D2C24
            8080808080808080808026405556647274746C5A56651E238080808080808080
            808080264E507181817F7F7056451D3C80808080808080808080802536446C81
            81827C64572834808080808080808080808080803B2D4F727A745E4541348080
            808080808080808080808080803C3F4C453A4A53358080808080808080808080
            8080808080803F3F3F3F3F3F8080808080808080808080808080}
          OnClick = SpeedButton18Click
        end
        object edtVenc: TMaskEdit
          Left = 16
          Top = 16
          Width = 121
          Height = 21
          EditMask = '00/00/0000'
          MaxLength = 10
          TabOrder = 0
          Text = '  /  /    '
        end
      end
    end
  end
  object Panel13: TPanel
    Left = -359
    Top = 25
    Width = 387
    Height = 21
    BevelOuter = bvNone
    TabOrder = 3
    Visible = False
  end
  object Panel7: TPanel
    Left = 21
    Top = 31
    Width = 388
    Height = 23
    BevelOuter = bvNone
    TabOrder = 4
    Visible = False
  end
  object Panel6: TPanel
    Left = 353
    Top = 148
    Width = 319
    Height = 237
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = 16762705
    TabOrder = 5
    Visible = False
    object SpeedButton4: TSpeedButton
      Left = 113
      Top = 168
      Width = 28
      Height = 26
      Hint = 'Visualizar'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
        8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
        8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
        8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton4Click
    end
    object SpeedButton5: TSpeedButton
      Left = 161
      Top = 168
      Width = 28
      Height = 26
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
    object RadioGroup3: TRadioGroup
      Left = 62
      Top = 55
      Width = 184
      Height = 65
      Caption = ' Tipo de Relatório'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ItemIndex = 0
      Items.Strings = (
        'Por Produto'
        'Por Nota Fiscal')
      ParentFont = False
      TabOrder = 0
    end
  end
  object Panel9: TPanel
    Left = -548
    Top = -39
    Width = 553
    Height = 440
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Caption = 'Panel2'
    Color = clBlue
    TabOrder = 6
    Visible = False
    OnClick = FormCreate
    object Panel10: TPanel
      Left = 13
      Top = 12
      Width = 530
      Height = 77
      BevelInner = bvLowered
      TabOrder = 0
      object Label59: TLabel
        Left = 8
        Top = 8
        Width = 91
        Height = 19
        Caption = 'Cliente NBF'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object SpeedButton13: TSpeedButton
        Left = 350
        Top = 38
        Width = 58
        Height = 32
        Hint = 'Pesquisar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Glyph.Data = {
          12090000424D120900000000000036000000280000001C0000001B0000000100
          180000000000DC08000000000000000000000000000000000000C8D0D4C8D0D4
          C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
          D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
          D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
          C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
          D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
          D0D4C8D0D4C8D0D4C8D0D4C2C9CCC3C4C7C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
          C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
          D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4A2A6A869
          6C80B28E9DCBBCBEC8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
          C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
          D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D495B9CE4194EC6975ACB08E9DCAB9BAC8
          D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
          C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
          D4C8D0D4B0CADD5CBCFC4194EC6573ADA88A9FA37875A37875A37875A37875A3
          7875A37875A37875A37875A37875A37875A37875A37875A37875A37875A37875
          A37875A37875C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4B0CADD5CBC
          FC4296EC6573ADA4899FE4CEC8F6EFE4F5EEE1F4ECDDF4EBDBF3E9D6F2E8D4F1
          E6D0F0E3CCF0E2CAEEE0C5EEE0C4EDDEC0EDDDBDECDBBBA37875C8D0D4C8D0D4
          C8D0D4C8D0D4C8D0D4C8D0D4A37875A37875A3787562BDFC4699EC6573ADA58C
          A1EDE2D9DCC5BAC9A79CC7A296CEAB9FDBC2B4E9D9C7F2E7D3F1E4CEF0E3CCEF
          E2C8EEE0C4EEDFC2EDDEBEA37875C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
          A37875FFDBD0FFD9CCA87C7773C5F863A4E39A8F90BD9891CFA48DE0C4A7FEFA
          CEEADABED4B6A3C19C93CEC1BAD6D3CEEAE1CFF0E3CDF0E3CBEFE1C6EEE0C4A3
          7875C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4A37875FFEBD6FFE9D2AD8179
          DBE1E7DAD7DAB48D85ECC7A4FFF2C5FFFDCCFFFDD6FFFFE0FFFFF0E9DCD2C099
          8FE1D5C8F0E7D4F2E8D4F1E5CFF0E3CCEFE2C9A37875C8D0D4C8D0D4C8D0D4C8
          D0D4C8D0D4C8D0D4A57A76FFEEDCFFEBD6B4867AEBEBEBDFC8C4DBAD94FFF4C6
          FFECBAFFFFD3FFFFE5FFFFF3FFFFFFFFFFFCCFB49ED0B7ADF1EADBF3EAD8F2E8
          D4F2E7D2F0E4CDA37875C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4A87D77FF
          F0E1FFEEDCBB8D7DEFEFEFCDA6A0F7E3B7FFE5B3FFEAB8FFFFD3FFFFE5FFFFF3
          FFFFF5FFFFE2F7F1C8B58E88EDE7DCF4ECDDF4EBDBF2E9D6F2E8D4A37875C8D0
          D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4AD8078FFF4E9FFF0E1C39380F4F4F4C9
          A299FEEEBFFFDDAAFFE1AEFFFCCBFFFFDAFFFFE3FFFFE3FFFFDAFEFDD1BB9289
          EDE7DCF4ECDDF4EBDBF2E9D6F2E8D4A37875C8D0D4C8D0D4C8D0D4C8D0D4C8D0
          D4C8D0D4B08379FFF6EDFFF4E9CB9A81F8F8F8CDA6A0F7E9BAFFF1C7FFE8B9FF
          F5C2FFFECDFFFFD3FFFFD3FFFECDF7E5BABE968FF8F4ECF8F4EC5752754A7EDC
          F8F4ECA37875C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4B5877BFFFAF4FFF6
          EDD2A084FBFBFBDDC4C0E0C5A9FFFDF5FFF3E4FFDBACFFF0BDFFEAB8FFEFBCFF
          F8C6D4AB8FD3B8B1FAF7F0FAF7F03259BA578FF5FAF7F0A37875C8D0D4C8D0D4
          C8D0D4C8D0D4C8D0D4C8D0D4BB8C7CFFFBF7FFFAF4D8A685FFFFFFF4EDEBC8A0
          96F4ECE5FFFFFEFFEFC9FFE5B4FFE4B1FFF5C2F2D1A9BE958CEEE6E2F7F4F1F7
          F4F1F7F4F1F7F4F1F7F4F1A37875C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
          BF907FFFFFFEFFFBF7DCA987DCA987DCA987D3A083C4978BD7BAA5F7EAC0FEF1
          BFF7E4B7D8AE95BF8F83D3A083DCA987DCA987DCA987DCA987DCA987DCA987DC
          A987C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C59580FFFFFFFFFFFEFFFFFE
          FFFFFEFFFFFEFFFFFEF4EDEAD9B8AAC0948AC39289CB948DC48D81C6C6C7C8D0
          D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
          D0D4C8D0D4C8D0D4C99981FFFFFFFFFFFFFFFFFFFFFCF9FFFAF4FFF6EDFFF5EA
          FFF1E2FFE4D7FFB5B5FF9F9FD39383C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
          D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4CF9D83FF
          FFFFFFFFFFFFFFFFFFFFFFFFFCF9FFFAF4FFF6EDFFF5EAB28074B28074B28074
          C6937EC8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
          D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4D2A184FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFCF9FFFAF4FFF6EDB28074F7B66ED29C7DCABCB5C8D0D4C8D0D4C8D0D4
          C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
          D4C8D0D4D6A485FEFEFEFCFCFCF9F9F9F7F7F7F5F5F5F2F2F2F0EEEBEEEBE8B2
          8074D9A98BCDBFB6C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
          C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4D9A786DCA987DCA9
          87DCA987DCA987DCA987DCA987DCA987DCA987B28074CCCAC6C8D0D4C8D0D4C8
          D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
          C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
          D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
          D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
          C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
          D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
          D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
          C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
          D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
          D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
          C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
          D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4}
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton13Click
      end
      object wwDBLookupCombo17: TwwDBLookupCombo
        Left = 109
        Top = 7
        Width = 324
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
          'CLIN_RAZA'#9'50'#9'Razão Social'#9'F')
        LookupTable = Q_CLINBF
        LookupField = 'CLIN_ID'
        Options = [loTitles]
        ParentFont = False
        TabOrder = 0
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = True
        OnCloseUp = wwDBLookupCombo17CloseUp
        OnExit = wwDBLookupCombo17Exit
      end
      object BitBtn5: TBitBtn
        Left = 408
        Top = 38
        Width = 58
        Height = 32
        Hint = 'Cancelar'
        Cancel = True
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
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
      object BitBtn4: TBitBtn
        Left = 466
        Top = 38
        Width = 58
        Height = 32
        Hint = 'Confirmar'
        Cancel = True
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
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
      object RadioGroup5: TRadioGroup
        Left = 110
        Top = 36
        Width = 226
        Height = 33
        Caption = 'Incluir NF'#39's no próprio Manifesto ?'
        Columns = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ItemIndex = 0
        Items.Strings = (
          'Sim'
          'Não')
        ParentFont = False
        TabOrder = 3
      end
    end
    object wwDBGrid4: TwwDBGrid
      Left = 13
      Top = 100
      Width = 530
      Height = 327
      Selected.Strings = (
        'NFI_MARCAREEN'#9'1'#9'***'
        'NFI_NUMERO'#9'10'#9'NF Num.'
        'NFI_DEST_RAZA'#9'56'#9'Cliente Final'#9'F')
      IniAttributes.FileName = 'DELPHI32.ini'
      IniAttributes.SectionName = 'FPrepNotawwDBGrid1'
      IniAttributes.Delimiter = ';;'
      TitleColor = clBlue
      FixedCols = 0
      ShowHorzScrollBar = True
      Color = 10789888
      DataSource = DS_NFReen
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Century Gothic'
      Font.Style = []
      KeyOptions = []
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgMultiSelect]
      ParentFont = False
      TabOrder = 1
      TitleAlignment = taCenter
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clYellow
      TitleFont.Height = -12
      TitleFont.Name = 'Arial'
      TitleFont.Style = [fsBold]
      TitleLines = 1
      TitleButtons = False
      OnCalcCellColors = wwDBGrid2CalcCellColors
      object wwDBGrid2IButton: TwwIButton
        Left = 0
        Top = 0
        Width = 13
        Height = 22
        AllowAllUp = True
      end
    end
  end
  object pnlErroRomaneio: TPanel
    Left = 806
    Top = 138
    Width = 481
    Height = 273
    Color = clBlack
    TabOrder = 7
    Visible = False
    object pnl1: TPanel
      Left = 1
      Top = 1
      Width = 479
      Height = 41
      Align = alTop
      Caption = 'ERRO DE QUANTIDADE NO ROMANEIO!!!!'
      Color = clRed
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object StringGrid1: TStringGrid
      Left = 1
      Top = 42
      Width = 479
      Height = 183
      Align = alTop
      ColCount = 4
      TabOrder = 1
      ColWidths = (
        64
        117
        114
        129)
    end
    object btn1: TBitBtn
      Left = 152
      Top = 240
      Width = 153
      Height = 25
      Caption = 'Fechar Janela'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = btn1Click
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00388888888877
        F7F787F8888888888333333F00004444400888FFF444448888888888F333FF8F
        000033334D5007FFF4333388888888883338888F0000333345D50FFFF4333333
        338F888F3338F33F000033334D5D0FFFF43333333388788F3338F33F00003333
        45D50FEFE4333333338F878F3338F33F000033334D5D0FFFF43333333388788F
        3338F33F0000333345D50FEFE4333333338F878F3338F33F000033334D5D0FFF
        F43333333388788F3338F33F0000333345D50FEFE4333333338F878F3338F33F
        000033334D5D0EFEF43333333388788F3338F33F0000333345D50FEFE4333333
        338F878F3338F33F000033334D5D0EFEF43333333388788F3338F33F00003333
        4444444444333333338F8F8FFFF8F33F00003333333333333333333333888888
        8888333F00003333330000003333333333333FFFFFF3333F00003333330AAAA0
        333333333333888888F3333F00003333330000003333333333338FFFF8F3333F
        0000}
      NumGlyphs = 2
    end
  end
  object Q_MANIF: TwwQuery
    CachedUpdates = True
    BeforeInsert = Q_MANIFBeforeInsert
    BeforePost = Q_MANIFBeforePost
    AfterPost = Q_MANIFAfterPost
    BeforeDelete = Q_MANIFBeforeDelete
    AfterDelete = Q_MANIFAfterDelete
    OnNewRecord = Q_MANIFNewRecord
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    RequestLive = True
    SQL.Strings = (
      'Select MANI_ID,MANI_OBS,'
      'MANI_TIPOCARGA,'
      'MANI_PESO,'
      'MANI_QTDEPALLET,'
      'MANI_VOLUME,'
      'MANI_QTDEUV,'
      'TRANS_ID,'
      'MOT_ID,'
      'VEIC_ID,'
      'MANI_DATA,'
      'PAR_ID,'
      'CONFIRMA,'
      'NFI_TRANS,'
      'VEIC_ID_FRETE,'
      'REG_ID,'
      'MANI_ENT_COL,'
      'MANI_VFRETEPAG,'
      'CONFIRMA_MANI,'
      'CLIN_ID,'
      'CTT_ID,'
      'VEIC_ID_COBRA,'
      'REG_ID_COBRA,'
      'MANI_KM_IDA,MANI_KM_TOTAL, MOT_EQUIP, CLI_RECEBEDOR'
      ' from MANIFESTO '
      'ORDER BY MANI_ID')
    UpdateObject = UPD_MANIF
    ValidateWithMask = True
    Left = 176
    Top = 515
    object Q_MANIFMANI_ID: TAutoIncField
      Alignment = taCenter
      FieldName = 'MANI_ID'
      Origin = 'NBFDADOS.MANIFESTO.MANI_ID'
    end
    object Q_MANIFMANI_TIPOCARGA: TStringField
      FieldName = 'MANI_TIPOCARGA'
      Origin = 'NBFDADOS.MANIFESTO.MANI_TIPOCARGA'
      FixedChar = True
      Size = 1
    end
    object Q_MANIFMANI_PESO: TFloatField
      FieldName = 'MANI_PESO'
      Origin = 'NBFDADOS.MANIFESTO.MANI_PESO'
      DisplayFormat = '###,###,##0.0000'
      EditFormat = '###,###,##0.0000'
    end
    object Q_MANIFMANI_QTDEPALLET: TIntegerField
      FieldName = 'MANI_QTDEPALLET'
      Origin = 'NBFDADOS.MANIFESTO.MANI_QTDEPALLET'
    end
    object Q_MANIFMANI_VOLUME: TFloatField
      FieldName = 'MANI_VOLUME'
      Origin = 'NBFDADOS.MANIFESTO.MANI_VOLUME'
      DisplayFormat = '###,###,##0.000000'
      EditFormat = '###,###,##0.000000'
    end
    object Q_MANIFTRANS_ID: TIntegerField
      FieldName = 'TRANS_ID'
      Origin = 'NBFDADOS.MANIFESTO.TRANS_ID'
      DisplayFormat = '0.000'
      EditFormat = '0.000'
    end
    object Q_MANIFMOT_ID: TIntegerField
      FieldName = 'MOT_ID'
      Origin = 'NBFDADOS.MANIFESTO.MOT_ID'
    end
    object Q_MANIFVEIC_ID: TIntegerField
      FieldName = 'VEIC_ID'
      Origin = 'NBFDADOS.MANIFESTO.VEIC_ID'
    end
    object Q_MANIFMANI_DATA: TDateTimeField
      FieldName = 'MANI_DATA'
      Origin = 'NBFDADOS.MANIFESTO.MANI_DATA'
      EditMask = '!90/90/9999;1;_'
    end
    object Q_MANIFPAR_ID: TIntegerField
      FieldName = 'PAR_ID'
      Origin = 'NBFDADOS.MANIFESTO.PAR_ID'
    end
    object Q_MANIFMANI_QTDEUV: TFloatField
      FieldName = 'MANI_QTDEUV'
      Origin = 'NBFDADOS.MANIFESTO.MANI_QTDEUV'
      DisplayFormat = '0.000'
      EditFormat = '0.000'
    end
    object Q_MANIFCONFIRMA: TStringField
      FieldName = 'CONFIRMA'
      Origin = 'NBFDADOS.MANIFESTO.CONFIRMA'
      FixedChar = True
      Size = 1
    end
    object Q_MANIFNFI_TRANS: TStringField
      FieldName = 'NFI_TRANS'
      Origin = 'NBFDADOS.MANIFESTO.NFI_TRANS'
      FixedChar = True
      Size = 1
    end
    object Q_MANIFVEIC_ID_FRETE: TIntegerField
      FieldName = 'VEIC_ID_FRETE'
      Origin = 'NBFDADOS.MANIFESTO.VEIC_ID_FRETE'
    end
    object Q_MANIFREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'NBFDADOS.MANIFESTO.REG_ID'
    end
    object Q_MANIFMANI_VFRETEPAG: TFloatField
      FieldName = 'MANI_VFRETEPAG'
      Origin = 'NBFDADOS.MANIFESTO.MANI_VFRETEPAG'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_MANIFMANI_ENT_COL: TStringField
      FieldName = 'MANI_ENT_COL'
      Origin = 'NBFDADOS.MANIFESTO.MANI_ENT_COL'
      FixedChar = True
      Size = 2
    end
    object Q_MANIFCONFIRMA_MANI: TStringField
      FieldName = 'CONFIRMA_MANI'
      Origin = 'NBFDADOS.MANIFESTO.MANI_ID'
      FixedChar = True
      Size = 1
    end
    object Q_MANIFMANI_OBS: TStringField
      FieldName = 'MANI_OBS'
      Origin = 'NBFDADOS.MANIFESTO.MANI_OBS'
      FixedChar = True
      Size = 60
    end
    object Q_MANIFMANI_KM_IDA: TIntegerField
      FieldName = 'MANI_KM_IDA'
      Origin = 'NBFDADOS.MANIFESTO.MANI_KM_IDA'
    end
    object Q_MANIFMANI_KM_TOTAL: TIntegerField
      FieldName = 'MANI_KM_TOTAL'
      Origin = 'NBFDADOS.MANIFESTO.MANI_KM_TOTAL'
    end
    object Q_MANIFMOT_EQUIP: TStringField
      FieldName = 'MOT_EQUIP'
      Origin = 'NBFDADOS.MANIFESTO.MOT_EQUIP'
      FixedChar = True
      Size = 50
    end
    object Q_MANIFCLIN_ID: TIntegerField
      FieldName = 'CLIN_ID'
      Origin = 'NBFDADOS.MANIFESTO.CLIN_ID'
    end
    object Q_MANIFCTT_ID: TIntegerField
      FieldName = 'CTT_ID'
      Origin = 'NBFDADOS.MANIFESTO.CTT_ID'
    end
    object Q_MANIFVEIC_ID_COBRA: TIntegerField
      FieldName = 'VEIC_ID_COBRA'
      Origin = 'NBFDADOS.MANIFESTO.VEIC_ID_COBRA'
    end
    object Q_MANIFREG_ID_COBRA: TIntegerField
      FieldName = 'REG_ID_COBRA'
      Origin = 'NBFDADOS.MANIFESTO.REG_ID_COBRA'
    end
    object Q_MANIFCLI_RECEBEDOR: TIntegerField
      FieldName = 'CLI_RECEBEDOR'
      Origin = 'NBFDADOS.MANIFESTO.CLI_RECEBEDOR'
    end
  end
  object DS_MANIF: TwwDataSource
    DataSet = Q_MANIF
    OnDataChange = DS_MANIFDataChange
    Left = 838
    Top = 72
  end
  object Q_VEIC: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select * from TPVEICULO'
      ' order by VEIC_ORDEM')
    ValidateWithMask = True
    Left = 1131
    Top = 456
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
  end
  object Q_TRANS: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'select A.TRANS_ID,A.TRANS_FANTASIA from'
      'TRANSPORTADORA A, TRANSPORTADORA_MOTORISTA B'
      'where    A.TRANS_FLAG = '#39'S'#39
      'and   A.TRANS_ID = B.TRANS_ID'
      'GROUP BY'
      'A.TRANS_ID,A.TRANS_FANTASIA'
      'order by A.TRANS_FANTASIA '
      ''
      ''
      ' '
      ''
      '')
    ValidateWithMask = True
    Left = 662
    Top = 451
    object Q_TRANSTRANS_FANTASIA: TStringField
      DisplayWidth = 40
      FieldName = 'TRANS_FANTASIA'
      Origin = 'NBFDADOS.TRANSPORTADORA.TRANS_FANTASIA'
      FixedChar = True
      Size = 40
    end
    object Q_TRANSTRANS_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'TRANS_ID'
      Origin = 'NBFDADOS.TRANSPORTADORA.TRANS_ID'
      Visible = False
    end
  end
  object Q_TRMOT: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'select MOT_ID,MOT_NOME,TRANS_ID , MOT_EQUIP'
      'from TRANSPORTADORA_MOTORISTA '
      'order by MOT_NOME')
    ValidateWithMask = True
    Left = 971
    Top = 16
    object Q_TRMOTMOT_NOME: TStringField
      DisplayWidth = 40
      FieldName = 'MOT_NOME'
      Origin = 'NBFDADOS.TRANSPORTADORA_MOTORISTA.MOT_NOME'
      FixedChar = True
      Size = 40
    end
    object Q_TRMOTMOT_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'MOT_ID'
      Origin = 'NBFDADOS.TRANSPORTADORA_MOTORISTA.MOT_ID'
      Visible = False
    end
    object Q_TRMOTTRANS_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'TRANS_ID'
      Origin = 'NBFDADOS.TRANSPORTADORA_MOTORISTA.TRANS_ID'
      Visible = False
    end
    object Q_TRMOTMOT_EQUIP: TStringField
      FieldName = 'MOT_EQUIP'
      Origin = 'NBFDADOS.TRANSPORTADORA_MOTORISTA.MOT_EQUIP'
      FixedChar = True
      Size = 50
    end
  end
  object Q_NF: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    DataSource = DS_MANIF
    SQL.Strings = (
      'Select '
      'A.NFI_NUMERO, '
      'A.NFI_DTENTREGA, '
      'A.NFI_DEST_RAZA ,'
      'A.NFI_EMIT_CLI, '
      'A.MANI_ORDEM,'
      'A.TEXTO_LIVRE,'
      'A.NFI_DEST_ENDERECO,'
      'A.NFI_DEST_CEP,'
      'C.MUN_NOME,'
      'D.REG_NOME,'
      'B.CLIN_RAZA,'
      'A.NFI_CODI'
      'from NF A,CLIENTENBF B, MUNICIPIO C,REGIAO D'
      'where MANI_ID = :MANI_ID and'
      '           MANI_ID is not null and '
      '           A.NFI_EMIT_CLI = B.CLIN_ID and'
      '           A.MUN_ID = C.MUN_ID and '
      '           C.REG_ID = D.REG_ID '
      '           order by NFI_NUMERO')
    ValidateWithMask = True
    Left = 1294
    Top = 23
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'MANI_ID'
        ParamType = ptUnknown
      end>
    object Q_NFMANI_ORDEM: TIntegerField
      DisplayLabel = 'Ordem'
      DisplayWidth = 5
      FieldName = 'MANI_ORDEM'
      Origin = 'NBFDADOS.NF.MANI_ORDEM'
    end
    object Q_NFNFI_NUMERO: TStringField
      DisplayLabel = 'NF'
      DisplayWidth = 8
      FieldName = 'NFI_NUMERO'
      Origin = 'NBFDADOS.NF.NFI_NUMERO'
      FixedChar = True
      Size = 10
    end
    object Q_NFCLIN_RAZA: TStringField
      DisplayLabel = 'Emitente'
      DisplayWidth = 23
      FieldName = 'CLIN_RAZA'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_RAZA'
      FixedChar = True
      Size = 50
    end
    object Q_NFNFI_DTENTREGA: TDateTimeField
      Alignment = taCenter
      DisplayLabel = 'Entrega'
      DisplayWidth = 10
      FieldName = 'NFI_DTENTREGA'
      Origin = 'NBFDADOS.NF.NFI_DTENTREGA'
    end
    object Q_NFNFI_DEST_RAZA: TStringField
      DisplayLabel = 'Destinatário'
      DisplayWidth = 35
      FieldName = 'NFI_DEST_RAZA'
      Origin = 'NBFDADOS.NF.NFI_DEST_RAZA'
      FixedChar = True
      Size = 50
    end
    object Q_NFNFI_DEST_ENDERECO: TStringField
      DisplayLabel = 'Endereço'
      DisplayWidth = 50
      FieldName = 'NFI_DEST_ENDERECO'
      Origin = 'NBFDADOS.NF.NFI_DEST_ENDERECO'
      FixedChar = True
      Size = 50
    end
    object Q_NFNFI_DEST_CEP: TStringField
      DisplayLabel = 'CEP'
      DisplayWidth = 8
      FieldName = 'NFI_DEST_CEP'
      Origin = 'NBFDADOS.NF.NFI_DEST_CEP'
      FixedChar = True
      Size = 8
    end
    object Q_NFMUN_NOME: TStringField
      DisplayLabel = 'Município'
      DisplayWidth = 40
      FieldName = 'MUN_NOME'
      Origin = 'NBFDADOS.MUNICIPIO.MUN_NOME'
      FixedChar = True
      Size = 40
    end
    object Q_NFREG_NOME: TStringField
      DisplayLabel = 'Região'
      DisplayWidth = 40
      FieldName = 'REG_NOME'
      Origin = 'NBFDADOS.REGIAO.REG_NOME'
      FixedChar = True
      Size = 40
    end
    object Q_NFNFI_EMIT_CLI: TIntegerField
      FieldName = 'NFI_EMIT_CLI'
      Origin = 'NBFDADOS.NF.NFI_EMIT_CLI'
      Visible = False
    end
    object Q_NFNFI_CODI: TAutoIncField
      FieldName = 'NFI_CODI'
      Origin = 'NBFDADOS.NF.NFI_CODI'
      Visible = False
    end
    object Q_NFTEXTO_LIVRE: TMemoField
      FieldName = 'TEXTO_LIVRE'
      Origin = 'NBFDADOS.NF.TEXTO_LIVRE'
      Visible = False
      BlobType = ftMemo
    end
  end
  object DS_NF: TwwDataSource
    DataSet = Q_NF
    OnDataChange = DS_NFDataChange
    Left = 453
    Top = 168
  end
  object Q_AUX: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    ValidateWithMask = True
    Left = 598
    Top = 32
  end
  object DS_RMP: TwwDataSource
    DataSet = Q_RMP
    Left = 1006
    Top = 456
  end
  object Q_RMP: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    DataSource = DS_MANIF
    SQL.Strings = (
      'Select * from '
      'MANIFESTO_RESUMOPRODUTO'
      'where MANI_ID = :MANI_ID  order by '
      'PRO_COD')
    ValidateWithMask = True
    Left = 669
    Top = 392
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'MANI_ID'
        ParamType = ptUnknown
      end>
    object Q_RMPPRO_COD: TStringField
      DisplayLabel = 'Código Produto'
      DisplayWidth = 16
      FieldName = 'PRO_COD'
      Origin = 'NBFDADOS.PRODUTO.PRO_COD'
      FixedChar = True
      Size = 16
    end
    object Q_RMPPRO_DESC: TStringField
      DisplayLabel = 'Descrição'
      DisplayWidth = 43
      FieldName = 'PRO_DESC'
      Origin = 'NBFDADOS.PRODUTO.PRO_DESC'
      FixedChar = True
      Size = 40
    end
    object Q_RMPMRP_PESO: TFloatField
      DisplayLabel = 'Peso'
      DisplayWidth = 10
      FieldName = 'MRP_PESO'
      Origin = 'NBFDADOS.MANIFESTO_RESUMOPRODUTO.MRP_PESO'
      DisplayFormat = '###,###,##0.0000'
      EditFormat = '###,###,##0.0000'
    end
    object Q_RMPMRP_VOLUME: TFloatField
      DisplayLabel = 'Volume'
      DisplayWidth = 10
      FieldName = 'MRP_VOLUME'
      Origin = 'NBFDADOS.MANIFESTO_RESUMOPRODUTO.MRP_VOLUME'
      DisplayFormat = '###,###,##0.000000'
      EditFormat = '###,###,##0.000000'
    end
    object Q_RMPMRP_QTDEPALLET: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Qtde. Pallets'
      DisplayWidth = 10
      FieldName = 'MRP_QTDEPALLET'
      Origin = 'NBFDADOS.MANIFESTO_RESUMOPRODUTO.MRP_QTDEPALLET'
    end
    object Q_RMPMRP_QTDE: TFloatField
      DisplayLabel = 'Qtde. UV'
      DisplayWidth = 14
      FieldName = 'MRP_QTDE'
      Origin = 'NBFDADOS.MANIFESTO_RESUMOPRODUTO.MRP_QTDE'
      DisplayFormat = '0.000'
      EditFormat = '0.000'
    end
    object Q_RMPMRP_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'MRP_ID'
      Origin = 'NBFDADOS.MANIFESTO_RESUMOPRODUTO.MRP_ID'
      Visible = False
    end
    object Q_RMPMANI_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'MANI_ID'
      Origin = 'NBFDADOS.MANIFESTO_RESUMOPRODUTO.MANI_ID'
      Visible = False
    end
    object Q_RMPPRO_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'PRO_ID'
      Origin = 'NBFDADOS.MANIFESTO_RESUMOPRODUTO.PRO_ID'
      Visible = False
    end
  end
  object Q_CLIF: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select * from CLIENTEFINAL (nolock) order by CLIF_RAZA ')
    ValidateWithMask = True
    Left = 902
    Top = 128
    object Q_CLIFCLIF_ID: TAutoIncField
      FieldName = 'CLIF_ID'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_ID'
    end
    object Q_CLIFCLIF_RAZA: TStringField
      FieldName = 'CLIF_RAZA'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_RAZA'
      FixedChar = True
      Size = 50
    end
    object Q_CLIFCLIF_PESSOA: TStringField
      FieldName = 'CLIF_PESSOA'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_PESSOA'
      FixedChar = True
      Size = 1
    end
    object Q_CLIFCLIF_NOME: TStringField
      FieldName = 'CLIF_NOME'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_NOME'
      FixedChar = True
      Size = 30
    end
    object Q_CLIFCLIF_CGCCPF: TStringField
      FieldName = 'CLIF_CGCCPF'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_CGCCPF'
      FixedChar = True
      Size = 15
    end
    object Q_CLIFCLIF_INSCRG: TStringField
      FieldName = 'CLIF_INSCRG'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_INSCRG'
      FixedChar = True
      Size = 15
    end
    object Q_CLIFCLIF_ENDERECO: TStringField
      FieldName = 'CLIF_ENDERECO'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_ENDERECO'
      FixedChar = True
      Size = 50
    end
    object Q_CLIFCLIF_ENDERECO_COMPL: TStringField
      FieldName = 'CLIF_ENDERECO_COMPL'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_ENDERECO_COMPL'
      FixedChar = True
    end
    object Q_CLIFCLIF_ENDERECO_BAIRRO: TStringField
      FieldName = 'CLIF_ENDERECO_BAIRRO'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_ENDERECO_BAIRRO'
      FixedChar = True
      Size = 40
    end
    object Q_CLIFCLIF_MUNICIPIO: TStringField
      FieldName = 'CLIF_MUNICIPIO'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_MUNICIPIO'
      FixedChar = True
      Size = 40
    end
    object Q_CLIFCLIF_MUNICIPIO2: TStringField
      FieldName = 'CLIF_MUNICIPIO2'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_MUNICIPIO2'
      FixedChar = True
      Size = 40
    end
    object Q_CLIFUF_SIGLA: TStringField
      FieldName = 'UF_SIGLA'
      Origin = 'NBFDADOS.CLIENTEFINAL.UF_SIGLA'
      FixedChar = True
      Size = 2
    end
    object Q_CLIFCLIF_CEP: TStringField
      FieldName = 'CLIF_CEP'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_CEP'
      FixedChar = True
      Size = 8
    end
    object Q_CLIFCLIF_TEL1: TStringField
      FieldName = 'CLIF_TEL1'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_TEL1'
      FixedChar = True
      Size = 11
    end
    object Q_CLIFCLIF_TEL2: TStringField
      FieldName = 'CLIF_TEL2'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_TEL2'
      FixedChar = True
      Size = 11
    end
    object Q_CLIFCLIF_FAX: TStringField
      FieldName = 'CLIF_FAX'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_FAX'
      FixedChar = True
      Size = 11
    end
    object Q_CLIFCLIF_EMAIL: TStringField
      FieldName = 'CLIF_EMAIL'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_EMAIL'
      FixedChar = True
      Size = 60
    end
    object Q_CLIFCLIF_CONTATO: TStringField
      FieldName = 'CLIF_CONTATO'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_CONTATO'
      FixedChar = True
      Size = 50
    end
    object Q_CLIFMUN_ID: TIntegerField
      FieldName = 'MUN_ID'
      Origin = 'NBFDADOS.CLIENTEFINAL.MUN_ID'
    end
    object Q_CLIFCLIF_CARGAPALLET: TStringField
      FieldName = 'CLIF_CARGAPALLET'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_CARGAPALLET'
      FixedChar = True
      Size = 1
    end
  end
  object Q_CLIN: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select * from CLIENTENBF (nolock) order by CLIN_RAZA ')
    ValidateWithMask = True
    Left = 1242
    Top = 456
    object Q_CLINCLIN_ID: TAutoIncField
      FieldName = 'CLIN_ID'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_ID'
    end
    object Q_CLINCLIN_RAZA: TStringField
      FieldName = 'CLIN_RAZA'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_RAZA'
      FixedChar = True
      Size = 50
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
    object Q_CLINCLIN_UTIL_COD: TStringField
      FieldName = 'CLIN_UTIL_COD'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_UTIL_COD'
      FixedChar = True
      Size = 1
    end
    object Q_CLINMUN_ID: TIntegerField
      FieldName = 'MUN_ID'
      Origin = 'NBFDADOS.CLIENTENBF.MUN_ID'
    end
  end
  object Q_CEP: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    ValidateWithMask = True
    Left = 398
    Top = 280
  end
  object UPD_MANIF: TUpdateSQL
    ModifySQL.Strings = (
      'update MANIFESTO'
      'set'
      '  MANI_OBS = :MANI_OBS,'
      '  MANI_TIPOCARGA = :MANI_TIPOCARGA,'
      '  MANI_PESO = :MANI_PESO,'
      '  MANI_QTDEPALLET = :MANI_QTDEPALLET,'
      '  MANI_VOLUME = :MANI_VOLUME,'
      '  MANI_QTDEUV = :MANI_QTDEUV,'
      '  TRANS_ID = :TRANS_ID,'
      '  MOT_ID = :MOT_ID,'
      '  VEIC_ID = :VEIC_ID,'
      '  MANI_DATA = :MANI_DATA,'
      '  PAR_ID = :PAR_ID,'
      '  CONFIRMA = :CONFIRMA,'
      '  NFI_TRANS = :NFI_TRANS,'
      '  VEIC_ID_FRETE = :VEIC_ID_FRETE,'
      '  REG_ID = :REG_ID,'
      '  MANI_VFRETEPAG = :MANI_VFRETEPAG,'
      'MANI_KM_IDA = :MANI_KM_IDA,'
      'MANI_KM_TOTAL = :MANI_KM_TOTAL,'
      'MOT_EQUIP = :MOT_EQUIP,'
      'CLI_RECEBEDOR = :CLI_RECEBEDOR'
      'where'
      '  MANI_ID = :OLD_MANI_ID')
    InsertSQL.Strings = (
      'insert into MANIFESTO'
      '  (MANI_OBS, MANI_TIPOCARGA, MANI_PESO, MANI_QTDEPALLET, '
      'MANI_VOLUME, MANI_QTDEUV, '
      
        '   TRANS_ID, MOT_ID, VEIC_ID, MANI_DATA, PAR_ID, CONFIRMA, NFI_T' +
        'RANS, '
      'VEIC_ID_FRETE, '
      
        '   REG_ID, MANI_VFRETEPAG, MANI_KM_IDA, MANI_KM_TOTAL, MOT_EQUIP' +
        ', '
      'CLI_RECEBEDOR)'
      'values'
      '  (:MANI_OBS, :MANI_TIPOCARGA, :MANI_PESO, :MANI_QTDEPALLET, '
      ':MANI_VOLUME, '
      
        '   :MANI_QTDEUV, :TRANS_ID, :MOT_ID, :VEIC_ID, :MANI_DATA, :PAR_' +
        'ID, '
      ':CONFIRMA, '
      
        '   :NFI_TRANS, :VEIC_ID_FRETE, :REG_ID, :MANI_VFRETEPAG, :MANI_K' +
        'M_IDA, '
      ':MANI_KM_TOTAL, :MOT_EQUIP, :CLI_RECEBEDOR)')
    DeleteSQL.Strings = (
      'delete from MANIFESTO'
      'where'
      '  MANI_ID = :OLD_MANI_ID')
    Left = 316
    Top = 302
  end
  object Q_UF1: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select *  from UF order by UF_NOME'
      ''
      '')
    ValidateWithMask = True
    Left = 1230
    Top = 24
    object Q_UF1UF_NOME: TStringField
      DisplayLabel = 'Estado'
      DisplayWidth = 30
      FieldName = 'UF_NOME'
      Origin = 'NBFDADOS.UF.UF_NOME'
      FixedChar = True
      Size = 30
    end
    object Q_UF1UF_SIGLA: TStringField
      DisplayWidth = 2
      FieldName = 'UF_SIGLA'
      Origin = 'NBFDADOS.UF.UF_SIGLA'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object Q_UF1UF_ALIQUOTA: TFloatField
      DisplayWidth = 10
      FieldName = 'UF_ALIQUOTA'
      Origin = 'NBFDADOS.UF.UF_ALIQUOTA'
      Visible = False
    end
  end
  object Q_UF2: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select *  from UF order by UF_NOME'
      ''
      '')
    ValidateWithMask = True
    Left = 902
    Top = 72
    object Q_UF2UF_NOME: TStringField
      DisplayWidth = 30
      FieldName = 'UF_NOME'
      Origin = 'NBFDADOS.UF.UF_NOME'
      FixedChar = True
      Size = 30
    end
    object Q_UF2UF_SIGLA: TStringField
      DisplayWidth = 2
      FieldName = 'UF_SIGLA'
      Origin = 'NBFDADOS.UF.UF_SIGLA'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object Q_UF2UF_ALIQUOTA: TFloatField
      DisplayWidth = 10
      FieldName = 'UF_ALIQUOTA'
      Origin = 'NBFDADOS.UF.UF_ALIQUOTA'
      Visible = False
    end
  end
  object Q_ESTQ: TwwQuery
    BeforeInsert = Q_ESTQBeforeInsert
    AfterPost = Q_ESTQAfterPost
    AfterCancel = Q_ESTQAfterCancel
    BeforeDelete = Q_ESTQBeforeDelete
    AfterDelete = Q_ESTQAfterDelete
    OnNewRecord = Q_ESTQNewRecord
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    DataSource = DS_MANIF
    SQL.Strings = (
      'Select A.*,B.PRO_COD'
      'from ESTOQUE A,PRODUTO B '
      'where A.MANI_ID = :MANI_ID '
      'and  A.PRO_ID = B.PRO_ID'
      '/*order by PRO_ID,AR_ID,POS_ID,ESTQ_QTDE desc*/'
      'order by B.PRO_COD')
    ValidateWithMask = True
    Left = 934
    Top = 136
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'MANI_ID'
        ParamType = ptUnknown
      end>
    object Q_ESTQESTQ_TAG: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Pallet TAG'
      DisplayWidth = 10
      FieldName = 'ESTQ_TAG'
      Origin = 'NBFDADOS.ESTOQUE.ESTQ_TAG'
    end
    object Q_ESTQESTQ_QTDE: TFloatField
      DisplayLabel = 'Qtde.MAX'
      DisplayWidth = 10
      FieldName = 'ESTQ_QTDE'
      Origin = 'NBFDADOS.ESTOQUE.ESTQ_QTDE'
      DisplayFormat = '0.000'
      EditFormat = '0.000'
    end
    object Q_ESTQESTQ_QTDE_RETIRA: TFloatField
      DisplayLabel = 'Qtde. Retirada'
      DisplayWidth = 10
      FieldName = 'ESTQ_QTDE_RETIRA'
      Origin = 'NBFDADOS.ESTOQUE.ESTQ_QTDE_RETIRA'
      DisplayFormat = '0.000'
      EditFormat = '0.000'
    end
    object Q_ESTQPROcod: TStringField
      DisplayLabel = 'Cód.Prod'
      DisplayWidth = 8
      FieldKind = fkLookup
      FieldName = 'PROcod'
      LookupDataSet = Q_PROD
      LookupKeyFields = 'PRO_ID'
      LookupResultField = 'PRO_COD'
      KeyFields = 'PRO_ID'
      Size = 16
      Lookup = True
    end
    object Q_ESTQPROdesc: TStringField
      DisplayLabel = 'Descrição'
      DisplayWidth = 38
      FieldKind = fkLookup
      FieldName = 'PROdesc'
      LookupDataSet = Q_PROD
      LookupKeyFields = 'PRO_ID'
      LookupResultField = 'PRO_DESC'
      KeyFields = 'PRO_ID'
      Size = 40
      Lookup = True
    end
    object Q_ESTQESTQ_LOTE: TStringField
      Alignment = taCenter
      DisplayLabel = 'Lote'
      DisplayWidth = 10
      FieldName = 'ESTQ_LOTE'
      Origin = 'NBFDADOS.ESTOQUE.ESTQ_ID'
      FixedChar = True
    end
    object Q_ESTQROM_DTBATCH: TDateTimeField
      Alignment = taCenter
      DisplayLabel = 'Batch'
      DisplayWidth = 10
      FieldName = 'ROM_DTBATCH'
      Origin = 'NBFDADOS.ESTOQUE.ROM_DTBATCH'
    end
    object Q_ESTQROM_DTVENCTO: TDateTimeField
      DisplayLabel = 'Vencimento'
      DisplayWidth = 10
      FieldName = 'ROM_DTVENCTO'
      Origin = 'NBFDADOS.ESTOQUE.ROM_DTVENCTO'
    end
    object Q_ESTQUVENdesc: TStringField
      Alignment = taCenter
      DisplayLabel = 'UV'
      DisplayWidth = 12
      FieldKind = fkLookup
      FieldName = 'UVENdesc'
      LookupDataSet = Q_UNIDVEND2
      LookupKeyFields = 'UVEN_ID'
      LookupResultField = 'UVEN_NOME'
      KeyFields = 'UVEN_ID'
      Size = 40
      Lookup = True
    end
    object Q_ESTQAreaDESC: TStringField
      DisplayLabel = 'Área'
      DisplayWidth = 7
      FieldKind = fkLookup
      FieldName = 'AreaDESC'
      LookupDataSet = Q_AREAux
      LookupKeyFields = 'AR_ID'
      LookupResultField = 'AR_NOME'
      KeyFields = 'AR_ID'
      Size = 40
      Lookup = True
    end
    object Q_ESTQPOSdesc: TStringField
      Alignment = taCenter
      DisplayLabel = 'Posição'
      DisplayWidth = 10
      FieldKind = fkLookup
      FieldName = 'POSdesc'
      LookupDataSet = Q_POS2
      LookupKeyFields = 'POS_ID'
      LookupResultField = 'POS_COD'
      KeyFields = 'POS_ID'
      Size = 10
      Lookup = True
    end
    object Q_ESTQESTQ_ID: TAutoIncField
      FieldName = 'ESTQ_ID'
      Origin = 'NBFDADOS.ESTOQUE.ESTQ_ID'
      Visible = False
    end
    object Q_ESTQAR_ID: TIntegerField
      FieldName = 'AR_ID'
      Origin = 'NBFDADOS.ESTOQUE.AR_ID'
      Visible = False
    end
    object Q_ESTQPOS_ID: TIntegerField
      Alignment = taCenter
      FieldName = 'POS_ID'
      Origin = 'NBFDADOS.ESTOQUE.POS_ID'
      Visible = False
    end
    object Q_ESTQOS_ID_ORIG: TIntegerField
      FieldName = 'OS_ID_ORIG'
      Origin = 'NBFDADOS.ESTOQUE.OS_ID_ORIG'
      Visible = False
    end
    object Q_ESTQPRO_ID: TIntegerField
      FieldName = 'PRO_ID'
      Origin = 'NBFDADOS.ESTOQUE.PRO_ID'
      Visible = False
    end
    object Q_ESTQESTQ_PESO: TFloatField
      FieldName = 'ESTQ_PESO'
      Origin = 'NBFDADOS.ESTOQUE.ESTQ_PESO'
      Visible = False
    end
    object Q_ESTQOS_ID_DEST: TIntegerField
      FieldName = 'OS_ID_DEST'
      Origin = 'NBFDADOS.ESTOQUE.OS_ID_DEST'
      Visible = False
    end
    object Q_ESTQESTQ_DT_ENTRADA: TDateTimeField
      FieldName = 'ESTQ_DT_ENTRADA'
      Origin = 'NBFDADOS.ESTOQUE.ESTQ_DT_ENTRADA'
      Visible = False
      EditMask = '!99/99/9999;1;_'
    end
    object Q_ESTQESTQ_DT_SAIDA: TDateTimeField
      FieldName = 'ESTQ_DT_SAIDA'
      Origin = 'NBFDADOS.ESTOQUE.ESTQ_DT_SAIDA'
      Visible = False
      EditMask = '!99/99/9999;1;_'
    end
    object Q_ESTQESTQ_DT_ULMOV: TDateTimeField
      FieldName = 'ESTQ_DT_ULMOV'
      Origin = 'NBFDADOS.ESTOQUE.ESTQ_DT_ULMOV'
      Visible = False
      EditMask = '!99/99/9999;1;_'
    end
    object Q_ESTQROM_ID_ENT: TIntegerField
      FieldName = 'ROM_ID_ENT'
      Origin = 'NBFDADOS.ESTOQUE.ROM_ID_ENT'
      Visible = False
    end
    object Q_ESTQROM_ID_SAIDA: TIntegerField
      FieldName = 'ROM_ID_SAIDA'
      Origin = 'NBFDADOS.ESTOQUE.ROM_ID_SAIDA'
      Visible = False
    end
    object Q_ESTQUVEN_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'UVEN_ID'
      Origin = 'NBFDADOS.ESTOQUE.ESTQ_ID'
      Visible = False
    end
    object Q_ESTQMANI_ID: TIntegerField
      FieldName = 'MANI_ID'
      Origin = 'NBFDADOS.ESTOQUE.MANI_ID'
      Visible = False
    end
    object Q_ESTQAR_ID_ANTERIOR: TIntegerField
      FieldName = 'AR_ID_ANTERIOR'
      Origin = 'NBFDADOS.ESTOQUE.AR_ID_ANTERIOR'
      Visible = False
    end
    object Q_ESTQPOS_ID_ANTERIOR: TIntegerField
      FieldName = 'POS_ID_ANTERIOR'
      Origin = 'NBFDADOS.ESTOQUE.POS_ID_ANTERIOR'
      Visible = False
    end
    object Q_ESTQPAR_ID: TIntegerField
      FieldName = 'PAR_ID'
      Origin = 'NBFDADOS.ESTOQUE.PAR_ID'
      Visible = False
    end
  end
  object DS_ESTQ: TwwDataSource
    DataSet = Q_ESTQ
    OnDataChange = DS_ESTQDataChange
    Left = 342
    Top = 136
  end
  object Q_PROD2: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    DataSource = DS_ESTQ2
    SQL.Strings = (
      'select PRO_ID, PRO_COD,PRO_DESC,UVEN_ID from PRODUTO where'
      'PRO_ID = :PRO_Id'
      ''
      '')
    ValidateWithMask = True
    Left = 1190
    Top = 80
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PRO_ID'
        ParamType = ptUnknown
      end>
    object Q_PROD2PRO_COD: TStringField
      DisplayWidth = 16
      FieldName = 'PRO_COD'
      Origin = 'NBFDADOS.PRODUTO.PRO_COD'
      FixedChar = True
      Size = 16
    end
    object Q_PROD2PRO_ID: TAutoIncField
      FieldName = 'PRO_ID'
      Origin = 'NBFDADOS.PRODUTO.PRO_ID'
    end
    object Q_PROD2PRO_DESC: TStringField
      FieldName = 'PRO_DESC'
      Origin = 'NBFDADOS.PRODUTO.PRO_DESC'
      FixedChar = True
      Size = 40
    end
    object Q_PROD2UVEN_ID: TIntegerField
      FieldName = 'UVEN_ID'
      Origin = 'NBFDADOS.PRODUTO.UVEN_ID'
    end
  end
  object DS_ESTQ2: TwwDataSource
    DataSet = Q_ESTQ2
    OnDataChange = DS_ESTQ2DataChange
    Left = 462
    Top = 320
  end
  object Q_POS2: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'select A.POS_COD,A.AR_ID,A.POS_UTILIZADO,A.POS_ID'
      'from AREA_POSICOES A order by A.POS_COD')
    ValidateWithMask = True
    Left = 1190
    Top = 456
    object Q_POS2POS_COD: TStringField
      FieldName = 'POS_COD'
      Origin = 'NBFDADOS.AREA_POSICOES.POS_COD'
      FixedChar = True
      Size = 5
    end
    object Q_POS2AR_ID: TIntegerField
      FieldName = 'AR_ID'
      Origin = 'NBFDADOS.AREA_POSICOES.AR_ID'
    end
    object Q_POS2POS_UTILIZADO: TStringField
      FieldName = 'POS_UTILIZADO'
      Origin = 'NBFDADOS.AREA_POSICOES.POS_UTILIZADO'
      FixedChar = True
      Size = 1
    end
    object Q_POS2POS_ID: TAutoIncField
      FieldName = 'POS_ID'
      Origin = 'NBFDADOS.AREA_POSICOES.POS_ID'
    end
  end
  object Q_AREAux: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select AR_ID,AR_NOME from AREA')
    ValidateWithMask = True
    Left = 790
    Top = 128
    object Q_AREAuxAR_ID: TAutoIncField
      FieldName = 'AR_ID'
      Origin = 'NBFDADOS.AREA.AR_ID'
    end
    object Q_AREAuxAR_NOME: TStringField
      FieldName = 'AR_NOME'
      Origin = 'NBFDADOS.AREA.AR_NOME'
      FixedChar = True
      Size = 40
    end
  end
  object Q_UNIDVEND: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    DataSource = DS_ESTQ2
    SQL.Strings = (
      'Select UVEN_ID,UVEN_NOME from UNIDVENDA'
      'where UVEN_ID = :UVEN_ID'
      'order by UVEN_NOME'
      ''
      '')
    ValidateWithMask = True
    Left = 1158
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'UVEN_ID'
        ParamType = ptUnknown
      end>
    object Q_UNIDVENDUVEN_ID: TAutoIncField
      FieldName = 'UVEN_ID'
      Origin = 'NBFDADOS.UNIDVENDA.UVEN_ID'
    end
    object Q_UNIDVENDUVEN_NOME: TStringField
      FieldName = 'UVEN_NOME'
      Origin = 'NBFDADOS.UNIDVENDA.UVEN_NOME'
      FixedChar = True
      Size = 40
    end
  end
  object Q_ESTQ2: TwwQuery
    CachedUpdates = True
    BeforeEdit = Q_ESTQ2BeforeEdit
    BeforePost = Q_ESTQ2BeforePost
    AfterPost = Q_ESTQ2AfterPost
    AfterCancel = Q_ESTQ2AfterCancel
    OnNewRecord = Q_ESTQ2NewRecord
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    DataSource = DS_ESTQ
    RequestLive = True
    SQL.Strings = (
      'Select A.*,B.POS_COD,C.AR_NOME from '
      '     ESTOQUE A  LEFT OUTER JOIN'
      '     AREA_POSICOES B ON A.POS_ID = B.POS_ID,'
      '    AREA C'
      ' Where A.ESTQ_DT_ENTRADA is not null '
      'and A.ESTQ_dt_SAIDA is  null'
      'and A.ESTQ_ID = :ESTQ_ID and'
      ' A.AR_ID = C.AR_ID '
      'order by '
      'A.PRO_ID,A.AR_ID,A.POS_ID,A.ESTQ_QTDE desc'
      '')
    UpdateObject = UPD_ESTQ2
    ControlType.Strings = (
      'AR_ID;CustomEdit;DBLC_INF_PROD'
      'AREANOME;CustomEdit;DBLC_INF_PROD'
      'POSCOD;CustomEdit;wwDBLookupCombo3'
      'MARCADOR;CheckBox;*;'
      'AR_NOME;CustomEdit;DBLC_INF_PROD'
      'POS_COD;CustomEdit;wwDBLookupCombo3')
    ValidateWithMask = True
    Left = 950
    Top = 128
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'ESTQ_ID'
        ParamType = ptUnknown
      end>
    object Q_ESTQ2MARCADOR: TStringField
      DisplayLabel = 'Marcador'
      DisplayWidth = 1
      FieldName = 'MARCADOR'
      Origin = 'NBFDADOS.Estoque.MARCADOR'
      FixedChar = True
      Size = 1
    end
    object Q_ESTQ2ESTQ_TAG: TIntegerField
      DisplayLabel = 'Pallet TAG'
      DisplayWidth = 10
      FieldName = 'ESTQ_TAG'
      Origin = 'NBFDADOS.Estoque.ESTQ_TAG'
      ReadOnly = True
    end
    object Q_ESTQ2AR_NOME: TStringField
      DisplayLabel = 'Area'
      DisplayWidth = 13
      FieldName = 'AR_NOME'
      Origin = 'NBFDADOS.AREA.AR_NOME'
      FixedChar = True
      Size = 40
    end
    object Q_ESTQ2POS_COD: TStringField
      DisplayLabel = 'Posição'
      DisplayWidth = 16
      FieldName = 'POS_COD'
      Origin = 'NBFDADOS.AREA_POSICOES.POS_COD'
      FixedChar = True
      Size = 6
    end
    object Q_ESTQ2ESTQ_QTDE: TFloatField
      DisplayLabel = 'Qtde.Original'
      DisplayWidth = 10
      FieldName = 'ESTQ_QTDE'
      Origin = 'NBFDADOS.Estoque.ESTQ_QTDE'
      ReadOnly = True
      DisplayFormat = '0.000'
      EditFormat = '0.000'
    end
    object Q_ESTQ2ESTQ_QTDE_RETIRA: TFloatField
      DisplayLabel = 'Qtde. a Retirar'
      DisplayWidth = 10
      FieldName = 'ESTQ_QTDE_RETIRA'
      Origin = 'NBFDADOS.Estoque.ESTQ_QTDE_RETIRA'
      DisplayFormat = '0.000'
      EditFormat = '0.000'
    end
    object Q_ESTQ2ESTQ_LOTE: TStringField
      DisplayLabel = 'Lote'
      DisplayWidth = 20
      FieldName = 'ESTQ_LOTE'
      Origin = 'NBFDADOS.Estoque.ESTQ_LOTE'
      ReadOnly = True
      FixedChar = True
    end
    object Q_ESTQ2ROM_DTBATCH: TDateTimeField
      DisplayLabel = 'Batch'
      DisplayWidth = 18
      FieldName = 'ROM_DTBATCH'
      Origin = 'NBFDADOS.Estoque.ROM_DTBATCH'
      ReadOnly = True
    end
    object Q_ESTQ2ROM_DTVENCTO: TDateTimeField
      DisplayLabel = 'Vencimento'
      DisplayWidth = 13
      FieldName = 'ROM_DTVENCTO'
      Origin = 'NBFDADOS.Estoque.ROM_DTVENCTO'
      ReadOnly = True
    end
    object Q_ESTQ2POSCOD: TStringField
      Alignment = taCenter
      DisplayLabel = 'Posição'
      DisplayWidth = 16
      FieldKind = fkLookup
      FieldName = 'POSCOD'
      LookupDataSet = Q_POS
      LookupKeyFields = 'POS_ID'
      LookupResultField = 'POS_COD'
      KeyFields = 'POS_ID'
      ReadOnly = True
      Visible = False
      Size = 6
      Lookup = True
    end
    object Q_ESTQ2AREANOME: TStringField
      DisplayLabel = 'Área'
      DisplayWidth = 13
      FieldKind = fkLookup
      FieldName = 'AREANOME'
      LookupDataSet = Q_AREA
      LookupKeyFields = 'AR_ID'
      LookupResultField = 'AR_NOME'
      KeyFields = 'AR_ID'
      ReadOnly = True
      Visible = False
      Size = 40
      Lookup = True
    end
    object Q_ESTQ2POS_ID: TIntegerField
      DisplayLabel = 'Posição'
      DisplayWidth = 13
      FieldName = 'POS_ID'
      Origin = 'NBFDADOS.Estoque.POS_ID'
      ReadOnly = True
      Visible = False
    end
    object Q_ESTQ2AR_ID: TIntegerField
      DisplayLabel = 'Área'
      DisplayWidth = 13
      FieldName = 'AR_ID'
      Origin = 'NBFDADOS.Estoque.AR_ID'
      ReadOnly = True
      Visible = False
    end
    object Q_ESTQ2ESTQ_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'ESTQ_ID'
      Origin = 'NBFDADOS.Estoque.ESTQ_ID'
      ReadOnly = True
      Visible = False
    end
    object Q_ESTQ2OS_ID_ORIG: TIntegerField
      DisplayWidth = 10
      FieldName = 'OS_ID_ORIG'
      Origin = 'NBFDADOS.Estoque.OS_ID_ORIG'
      ReadOnly = True
      Visible = False
    end
    object Q_ESTQ2PRO_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'PRO_ID'
      Origin = 'NBFDADOS.Estoque.PRO_ID'
      ReadOnly = True
      Visible = False
    end
    object Q_ESTQ2MANI_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'MANI_ID'
      Origin = 'NBFDADOS.Estoque.MANI_ID'
      ReadOnly = True
      Visible = False
    end
    object Q_ESTQ2ESTQ_PESO: TFloatField
      DisplayWidth = 10
      FieldName = 'ESTQ_PESO'
      Origin = 'NBFDADOS.Estoque.ESTQ_PESO'
      ReadOnly = True
      Visible = False
    end
    object Q_ESTQ2OS_ID_DEST: TIntegerField
      DisplayWidth = 10
      FieldName = 'OS_ID_DEST'
      Origin = 'NBFDADOS.Estoque.OS_ID_DEST'
      ReadOnly = True
      Visible = False
    end
    object Q_ESTQ2ESTQ_DT_ENTRADA: TDateTimeField
      DisplayWidth = 18
      FieldName = 'ESTQ_DT_ENTRADA'
      Origin = 'NBFDADOS.Estoque.ESTQ_DT_ENTRADA'
      ReadOnly = True
      Visible = False
    end
    object Q_ESTQ2ESTQ_DT_SAIDA: TDateTimeField
      DisplayWidth = 18
      FieldName = 'ESTQ_DT_SAIDA'
      Origin = 'NBFDADOS.Estoque.ESTQ_DT_SAIDA'
      ReadOnly = True
      Visible = False
    end
    object Q_ESTQ2ROM_ID_ENT: TIntegerField
      DisplayWidth = 10
      FieldName = 'ROM_ID_ENT'
      Origin = 'NBFDADOS.Estoque.ROM_ID_ENT'
      ReadOnly = True
      Visible = False
    end
    object Q_ESTQ2ROM_ID_SAIDA: TIntegerField
      DisplayWidth = 10
      FieldName = 'ROM_ID_SAIDA'
      Origin = 'NBFDADOS.Estoque.ROM_ID_SAIDA'
      ReadOnly = True
      Visible = False
    end
    object Q_ESTQ2UVEN_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'UVEN_ID'
      Origin = 'NBFDADOS.Estoque.UVEN_ID'
      ReadOnly = True
      Visible = False
    end
    object Q_ESTQ2AR_ID_ANTERIOR: TIntegerField
      DisplayWidth = 10
      FieldName = 'AR_ID_ANTERIOR'
      Origin = 'NBFDADOS.Estoque.AR_ID_ANTERIOR'
      ReadOnly = True
      Visible = False
    end
    object Q_ESTQ2POS_ID_ANTERIOR: TIntegerField
      DisplayWidth = 10
      FieldName = 'POS_ID_ANTERIOR'
      Origin = 'NBFDADOS.Estoque.POS_ID_ANTERIOR'
      ReadOnly = True
      Visible = False
    end
    object Q_ESTQ2ESTQ_DT_ULMOV: TDateTimeField
      DisplayWidth = 18
      FieldName = 'ESTQ_DT_ULMOV'
      Origin = 'NBFDADOS.Estoque.ESTQ_DT_ULMOV'
      ReadOnly = True
      Visible = False
    end
    object Q_ESTQ2PAR_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'PAR_ID'
      Origin = 'NBFDADOS.Estoque.PAR_ID'
      ReadOnly = True
      Visible = False
    end
    object Q_ESTQ2GEROU_OPER_ROMSAIDA: TStringField
      DisplayWidth = 1
      FieldName = 'GEROU_OPER_ROMSAIDA'
      Origin = 'NBFDADOS.Estoque.GEROU_OPER_ROMSAIDA'
      ReadOnly = True
      Visible = False
      FixedChar = True
      Size = 1
    end
  end
  object Q_PAR: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'select AR_ID_OPER from parametro  ')
    ValidateWithMask = True
    Left = 1374
    Top = 160
    object Q_PARAR_ID_OPER: TIntegerField
      FieldName = 'AR_ID_OPER'
      Origin = 'NBFDADOS.parametro.AR_ID_OPER'
    end
  end
  object STP_ROMSAI: TwwStoredProc
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    StoredProcName = 'dbo.STP_ROMANEIO_SAIDA'
    ValidateWithMask = True
    Left = 318
    Top = 484
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Result'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = '@MANID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@EMP'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@CH'
        ParamType = ptInput
      end>
  end
  object UPD_ESTQ2: TUpdateSQL
    ModifySQL.Strings = (
      'update Estoque'
      'set'
      '  AR_ID = :AR_ID,'
      '  POS_ID = :POS_ID,'
      '  OS_ID_ORIG = :OS_ID_ORIG,'
      '  PRO_ID = :PRO_ID,'
      '  ESTQ_QTDE_RETIRA = :ESTQ_QTDE_RETIRA,'
      '  MANI_ID = :MANI_ID,'
      '  ESTQ_PESO = :ESTQ_PESO,'
      '  OS_ID_DEST = :OS_ID_DEST,'
      '  ESTQ_DT_ENTRADA = :ESTQ_DT_ENTRADA,'
      '  ESTQ_DT_SAIDA = :ESTQ_DT_SAIDA,'
      '  ROM_ID_ENT = :ROM_ID_ENT,'
      '  ROM_ID_SAIDA = :ROM_ID_SAIDA,'
      '  ROM_DTBATCH = :ROM_DTBATCH,'
      '  ROM_DTVENCTO = :ROM_DTVENCTO,'
      '  ESTQ_LOTE = :ESTQ_LOTE,'
      '  UVEN_ID = :UVEN_ID,'
      '  ESTQ_TAG = :ESTQ_TAG,'
      '  AR_ID_ANTERIOR = :AR_ID_ANTERIOR,'
      '  POS_ID_ANTERIOR = :POS_ID_ANTERIOR,'
      '  ESTQ_DT_ULMOV = :ESTQ_DT_ULMOV,'
      '  PAR_ID = :PAR_ID,'
      '  GEROU_OPER_ROMSAIDA = :GEROU_OPER_ROMSAIDA,'
      '  MARCADOR = :MARCADOR'
      'where'
      '  ESTQ_ID = :OLD_ESTQ_ID')
    InsertSQL.Strings = (
      'insert into Estoque'
      
        '  (AR_ID, POS_ID, OS_ID_ORIG, PRO_ID, ESTQ_QTDE, ESTQ_QTDE_RETIR' +
        'A, MANI_ID, '
      
        '   ESTQ_PESO, OS_ID_DEST, ESTQ_DT_ENTRADA, ESTQ_DT_SAIDA, ROM_ID' +
        '_ENT, ROM_ID_SAIDA, '
      
        '   ROM_DTBATCH, ROM_DTVENCTO, ESTQ_LOTE, UVEN_ID, ESTQ_TAG, AR_I' +
        'D_ANTERIOR, '
      
        '   POS_ID_ANTERIOR, ESTQ_DT_ULMOV, PAR_ID, GEROU_OPER_ROMSAIDA, ' +
        'MARCADOR)'
      'values'
      
        '  (:AR_ID, :POS_ID, :OS_ID_ORIG, :PRO_ID, :ESTQ_QTDE, :ESTQ_QTDE' +
        '_RETIRA, '
      
        '   :MANI_ID, :ESTQ_PESO, :OS_ID_DEST, :ESTQ_DT_ENTRADA, :ESTQ_DT' +
        '_SAIDA, '
      
        '   :ROM_ID_ENT, :ROM_ID_SAIDA, :ROM_DTBATCH, :ROM_DTVENCTO, :EST' +
        'Q_LOTE, '
      
        '   :UVEN_ID, :ESTQ_TAG, :AR_ID_ANTERIOR, :POS_ID_ANTERIOR, :ESTQ' +
        '_DT_ULMOV, '
      '   :PAR_ID, :GEROU_OPER_ROMSAIDA, :MARCADOR)')
    DeleteSQL.Strings = (
      'delete from Estoque'
      'where'
      '  ESTQ_ID = :OLD_ESTQ_ID')
    Left = 1430
    Top = 200
  end
  object Q_AREA: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    DataSource = DS_ESTQ
    SQL.Strings = (
      'select AR_ID,AR_NOME,AR_EMPILHA_MAX from AREA'
      'where '
      'exists (Select AR_ID from PRODUTO_AREA '
      'where PRO_ID = :PRO_ID and'
      'PRODUTO_AREA.AR_ID = AREA.AR_ID )'
      'order by AR_NOME')
    ValidateWithMask = True
    Left = 1406
    Top = 280
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PRO_ID'
        ParamType = ptUnknown
      end>
    object Q_AREAAR_NOME: TStringField
      DisplayWidth = 40
      FieldName = 'AR_NOME'
      FixedChar = True
      Size = 40
    end
    object Q_AREAAR_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'AR_ID'
      Visible = False
    end
    object Q_AREAAR_EMPILHA_MAX: TIntegerField
      DisplayWidth = 10
      FieldName = 'AR_EMPILHA_MAX'
      Visible = False
    end
  end
  object DS_AREA: TwwDataSource
    DataSet = Q_AREA
    Left = 1310
    Top = 168
  end
  object Q_AREA_2: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select'
      ' AR_ID ,'
      ' AR_EMPILHA_MAX'
      'from '
      'AREA ')
    ValidateWithMask = True
    Left = 1318
    Top = 216
    object Q_AREA_2AR_ID: TAutoIncField
      FieldName = 'AR_ID'
      Origin = 'NBFDADOS.AREA.AR_ID'
    end
    object Q_AREA_2AR_EMPILHA_MAX: TIntegerField
      FieldName = 'AR_EMPILHA_MAX'
      Origin = 'NBFDADOS.AREA.AR_EMPILHA_MAX'
    end
  end
  object Q_POS: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    DataSource = DS_ESTQ
    SQL.Strings = (
      'select A.*'
      'from AREA_POSICOES A'
      'where exists'
      '(select * from produto_AREA where PRO_ID = :PRO_ID and'
      ' A.AR_ID = AR_ID ) and POS_UTILIZADO = '#39'S'#39' '
      'order by POS_COD'
      ''
      '')
    ValidateWithMask = True
    Left = 1358
    Top = 200
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PRO_ID'
        ParamType = ptUnknown
      end>
    object Q_POSAR_ID: TIntegerField
      FieldName = 'AR_ID'
      Origin = 'NBFDADOS.AREA_POSICOES.AR_ID'
      Visible = False
    end
    object Q_POSPOS_UTILIZADO: TStringField
      FieldName = 'POS_UTILIZADO'
      Origin = 'NBFDADOS.AREA_POSICOES.POS_UTILIZADO'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_POSPOS_ID: TAutoIncField
      FieldName = 'POS_ID'
      Origin = 'NBFDADOS.AREA_POSICOES.POS_ID'
      Visible = False
    end
    object Q_POSPOS_COD: TStringField
      FieldName = 'POS_COD'
      FixedChar = True
      Size = 6
    end
  end
  object Q_AREA3: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select AR_ID,AR_NOME from AREA')
    ValidateWithMask = True
    Left = 1182
    Top = 160
    object AutoIncField1: TAutoIncField
      FieldName = 'AR_ID'
      Origin = 'NBFDADOS.AREA.AR_ID'
    end
    object StringField1: TStringField
      FieldName = 'AR_NOME'
      Origin = 'NBFDADOS.AREA.AR_NOME'
      FixedChar = True
      Size = 40
    end
  end
  object Q_POS3: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'select A.POS_COD,A.AR_ID,A.POS_UTILIZADO,A.POS_ID'
      'from AREA_POSICOES A order by A.POS_COD')
    ValidateWithMask = True
    Left = 1326
    Top = 96
    object StringField2: TStringField
      FieldName = 'POS_COD'
      Origin = 'NBFDADOS.AREA_POSICOES.POS_COD'
      FixedChar = True
      Size = 5
    end
    object IntegerField1: TIntegerField
      FieldName = 'AR_ID'
      Origin = 'NBFDADOS.AREA_POSICOES.AR_ID'
    end
    object StringField3: TStringField
      FieldName = 'POS_UTILIZADO'
      Origin = 'NBFDADOS.AREA_POSICOES.POS_UTILIZADO'
      FixedChar = True
      Size = 1
    end
    object AutoIncField2: TAutoIncField
      FieldName = 'POS_ID'
      Origin = 'NBFDADOS.AREA_POSICOES.POS_ID'
    end
  end
  object STP_KARDEXSAIDA: TwwStoredProc
    ObjectView = True
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    StoredProcName = 'dbo.STP_KARDEXSAIDA'
    ValidateWithMask = True
    Left = 1430
    Top = 32
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Result'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = '@MANI'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@PAR_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@USUARIO'
        ParamType = ptInput
      end>
  end
  object DS_PROD2: TwwDataSource
    DataSet = Q_PROD2
    Left = 86
    Top = 240
  end
  object DS_UNIDVEND: TwwDataSource
    DataSet = Q_UNIDVEND
    Left = 30
    Top = 136
  end
  object Q_PROD: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'select PRO_ID, PRO_COD,PRO_DESC from PRODUTO'
      ''
      '')
    ValidateWithMask = True
    Left = 150
    Top = 152
    object Q_PRODPRO_ID: TAutoIncField
      FieldName = 'PRO_ID'
      Origin = 'NBFDADOS.PRODUTO.PRO_ID'
    end
    object Q_PRODPRO_COD: TStringField
      FieldName = 'PRO_COD'
      Origin = 'NBFDADOS.PRODUTO.PRO_COD'
      FixedChar = True
      Size = 16
    end
    object Q_PRODPRO_DESC: TStringField
      FieldName = 'PRO_DESC'
      Origin = 'NBFDADOS.PRODUTO.PRO_DESC'
      FixedChar = True
      Size = 40
    end
  end
  object Q_UNIDVEND2: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select UVEN_ID,UVEN_NOME from UNIDVENDA'
      'order by UVEN_NOME'
      ''
      '')
    ValidateWithMask = True
    Left = 150
    Top = 240
    object Q_UNIDVEND2UVEN_ID: TAutoIncField
      FieldName = 'UVEN_ID'
      Origin = 'NBFDADOS.UNIDVENDA.UVEN_ID'
    end
    object Q_UNIDVEND2UVEN_NOME: TStringField
      FieldName = 'UVEN_NOME'
      Origin = 'NBFDADOS.UNIDVENDA.UVEN_NOME'
      FixedChar = True
      Size = 40
    end
  end
  object Q_VEIC2: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select * from TPVEICULO order by VEIC_ORDEM')
    ValidateWithMask = True
    Left = 62
    Top = 240
    object Q_VEIC2VEIC_ID: TAutoIncField
      FieldName = 'VEIC_ID'
      Origin = 'NBFDADOS.TPVEICULO.VEIC_ID'
    end
    object Q_VEIC2VEIC_NOME: TStringField
      FieldName = 'VEIC_NOME'
      Origin = 'NBFDADOS.TPVEICULO.VEIC_NOME'
      FixedChar = True
      Size = 40
    end
  end
  object Q_REG: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    DataSource = DS_VEIC
    SQL.Strings = (
      'select A.*,B.REG_NOME from FRETE A,REGIAO B'
      'where VEIC_ID = :VEIC_ID '
      'and '
      'A.REG_ID = B.REG_ID  order by REG_NOME'
      ''
      '')
    ValidateWithMask = True
    Left = 78
    Top = 128
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'VEIC_ID'
        ParamType = ptUnknown
      end>
    object Q_REGFRET_ID: TAutoIncField
      FieldName = 'FRET_ID'
      Origin = 'NBFDADOS.FRETE.FRET_ID'
    end
    object Q_REGVEIC_ID: TIntegerField
      FieldName = 'VEIC_ID'
      Origin = 'NBFDADOS.FRETE.VEIC_ID'
    end
    object Q_REGREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'NBFDADOS.FRETE.REG_ID'
    end
    object Q_REGFRET_VALOR: TFloatField
      FieldName = 'FRET_VALOR'
      Origin = 'NBFDADOS.FRETE.FRET_VALOR'
    end
    object Q_REGFRET_VALOR_GRANEL: TFloatField
      FieldName = 'FRET_VALOR_GRANEL'
      Origin = 'NBFDADOS.FRETE.FRET_VALOR_GRANEL'
    end
    object Q_REGREG_NOME: TStringField
      FieldName = 'REG_NOME'
      Origin = 'NBFDADOS.REGIAO.REG_NOME'
      FixedChar = True
      Size = 40
    end
  end
  object DS_VEIC2: TwwDataSource
    DataSet = Q_VEIC2
    OnDataChange = DS_MANIFDataChange
    Left = 1238
    Top = 80
  end
  object DS_NF55: TwwDataSource
    DataSet = Q_NF55
    OnDataChange = DS_NF55DataChange
    Left = 1094
    Top = 16
  end
  object UPD_NF55: TUpdateSQL
    ModifySQL.Strings = (
      'update NF'
      'set'
      '  NFI_EMIT_CLi = :NFI_EMIT_CLi,'
      '  NFI_DEST_CLI = :NFI_DEST_CLI,'
      '  NFI_ENTREGA = :NFI_ENTREGA,'
      '  NFI_DTENTREGA_FIM = :NFI_DTENTREGA_FIM,'
      '  NFI_COBRAR = :NFI_COBRAR,'
      '  NFI_DEST_RAZA = :NFI_DEST_RAZA,'
      '  NFI_NUMERO = :NFI_NUMERO,'
      '  COD_EDI = :COD_EDI'
      'where'
      '  NFI_CODI = :OLD_NFI_CODI')
    InsertSQL.Strings = (
      'insert into NF'
      '  (NFI_EMIT_CLi, NFI_DEST_CLI, NFI_ENTREGA, NFI_DTENTREGA_FIM, '
      'NFI_COBRAR, '
      '   NFI_DEST_RAZA, NFI_NUMERO, COD_EDI)'
      'values'
      
        '  (:NFI_EMIT_CLi, :NFI_DEST_CLI, :NFI_ENTREGA, :NFI_DTENTREGA_FI' +
        'M, '
      ':NFI_COBRAR, '
      '   :NFI_DEST_RAZA, :NFI_NUMERO, :COD_EDI)')
    DeleteSQL.Strings = (
      'delete from NF'
      'where'
      '  NFI_CODI = :OLD_NFI_CODI')
    Left = 838
    Top = 16
  end
  object Q_NF55: TwwQuery
    CachedUpdates = True
    BeforePost = Q_NF55BeforePost
    AfterPost = Q_NF55AfterPost
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    DataSource = DS_MANIF
    RequestLive = True
    SQL.Strings = (
      'Select '
      'A.NFI_CODI,'
      'A.NFI_EMIT_CLi,'
      'A.NFI_DEST_CLI,'
      'A.NFI_ENTREGA,'
      'A.NFI_DTENTREGA_FIM,'
      'A.NFI_COBRAR, A.NFI_DEST_RAZA,'
      'A.NFI_NUMERO,A.OS_ID,A.NFI_REDESPACHO,'
      'B.CLIN_RAZA,C.MANI_ENT_COL, COD_EDI'
      'from NF A,CLIENTENBF B,MANIFESTO C'
      'where A.NFI_EMIT_CLi = B.CLIN_ID and A.MANI_ID = :MANI_ID and'
      'A.MANI_ID = C.MANI_Id'
      ''
      ''
      ''
      '')
    UpdateObject = UPD_NF55
    ControlType.Strings = (
      'NFI_ENTREGA;CustomEdit;wwDBComboBox2'
      'NFI_COBRAR;CustomEdit;wwDBComboBox3'
      'MANI_ENT_COL;CustomEdit;wwDBComboBox4'
      'COD_EDI;CustomEdit;cboEDIOcorrem')
    ValidateWithMask = True
    Left = 696
    Top = 305
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'MANI_ID'
        ParamType = ptUnknown
      end>
    object Q_NF55CLIN_RAZA: TStringField
      DisplayLabel = 'Emitente'
      DisplayWidth = 30
      FieldName = 'CLIN_RAZA'
      ReadOnly = True
      FixedChar = True
      Size = 50
    end
    object Q_NF55NFI_DEST_RAZA: TStringField
      DisplayLabel = 'Destinatário'
      DisplayWidth = 31
      FieldName = 'NFI_DEST_RAZA'
      ReadOnly = True
      FixedChar = True
      Size = 50
    end
    object Q_NF55NFI_NUMERO: TStringField
      DisplayLabel = 'NF Nº'
      DisplayWidth = 10
      FieldName = 'NFI_NUMERO'
      FixedChar = True
      Size = 10
    end
    object Q_NF55NFI_ENTREGA: TStringField
      DisplayLabel = 'Entregue (S/R/D)'
      DisplayWidth = 11
      FieldName = 'NFI_ENTREGA'
      FixedChar = True
      Size = 1
    end
    object Q_NF55NFI_DTENTREGA_FIM: TDateTimeField
      DisplayLabel = 'Data Entrega'
      DisplayWidth = 13
      FieldName = 'NFI_DTENTREGA_FIM'
    end
    object Q_NF55NFI_COBRAR: TStringField
      DisplayLabel = 'Cobrar (S/N)'
      DisplayWidth = 9
      FieldName = 'NFI_COBRAR'
      FixedChar = True
      Size = 1
    end
    object Q_NF55COD_EDI: TStringField
      DisplayLabel = 'EDI'
      DisplayWidth = 8
      FieldName = 'COD_EDI'
      FixedChar = True
      Size = 2
    end
    object Q_NF55MANI_ENT_COL: TStringField
      DisplayLabel = 'Tipo        '
      DisplayWidth = 2
      FieldName = 'MANI_ENT_COL'
      ReadOnly = True
      Visible = False
      FixedChar = True
      Size = 2
    end
    object Q_NF55NFI_CODI: TAutoIncField
      FieldName = 'NFI_CODI'
      Visible = False
    end
    object Q_NF55NFI_EMIT_CLi: TIntegerField
      FieldName = 'NFI_EMIT_CLi'
      Visible = False
    end
    object Q_NF55NFI_DEST_CLI: TIntegerField
      FieldName = 'NFI_DEST_CLI'
      Visible = False
    end
    object Q_NF55OS_ID: TIntegerField
      FieldName = 'OS_ID'
      Visible = False
    end
    object Q_NF55NFI_REDESPACHO: TStringField
      FieldName = 'NFI_REDESPACHO'
      Visible = False
      FixedChar = True
      Size = 1
    end
  end
  object STP_OCE: TwwStoredProc
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    StoredProcName = 'dbo.STP_OCE'
    ValidateWithMask = True
    Left = 592
    Top = 259
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Result'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = '@MANI_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@TRANSP'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@VEIC'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@EMP'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@TPCARGA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@REGCOBRA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@VEICCOBRA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@MOT_ID'
        ParamType = ptInput
      end>
  end
  object Q_OCE: TwwQuery
    CachedUpdates = True
    BeforePost = Q_OCEBeforePost
    AfterPost = Q_OCEAfterPost
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    DataSource = DS_MANIF
    RequestLive = True
    SQL.Strings = (
      'Select '
      '*'
      ' from ORDEM_COLETA_ENTREGA'
      'where MANI_ID = :MANI_ID'
      '')
    UpdateObject = UPD_OCE
    ControlType.Strings = (
      'VEICNOME;CustomEdit;wwDBLookupCombo12'
      'REGNOME;CustomEdit;wwDBLookupCombo13'
      'ORD_TPCARGA;CustomEdit;wwDBComboBox5'
      'TRANSFANTASIA;CustomEdit;wwDBLookupCombo16')
    ValidateWithMask = True
    Left = 723
    Top = 440
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'MANI_ID'
        ParamType = ptUnknown
      end>
    object Q_OCEORD_ID: TAutoIncField
      Alignment = taCenter
      DisplayLabel = 'OC/E'
      DisplayWidth = 10
      FieldName = 'ORD_ID'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_ID'
      ReadOnly = True
    end
    object Q_OCEOS_ID: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'OS'
      DisplayWidth = 10
      FieldName = 'OS_ID'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.OS_ID'
      ReadOnly = True
    end
    object Q_OCEVEICNOME: TStringField
      DisplayLabel = 'Veículo Cobrar'
      DisplayWidth = 19
      FieldKind = fkLookup
      FieldName = 'VEICNOME'
      LookupDataSet = Q_VEIC3
      LookupKeyFields = 'VEIC_ID'
      LookupResultField = 'VEIC_NOME'
      KeyFields = 'VEIC_ID_RECEB'
      Size = 30
      Lookup = True
    end
    object Q_OCEREGNOME: TStringField
      DisplayLabel = 'Região Cobrar'
      DisplayWidth = 18
      FieldKind = fkLookup
      FieldName = 'REGNOME'
      LookupDataSet = Q_REG2
      LookupKeyFields = 'REG_ID'
      LookupResultField = 'REG_NOME'
      KeyFields = 'REG_ID'
      Size = 30
      Lookup = True
    end
    object Q_OCEORD_PESO_TOTAL: TFloatField
      DisplayLabel = 'Peso (Kg)'
      DisplayWidth = 18
      FieldName = 'ORD_PESO_TOTAL'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_PESO_TOTAL'
      ReadOnly = True
      DisplayFormat = '###,###,##0.0000'
      EditFormat = '###,###,##0.0000'
    end
    object Q_OCEORD_VOLUME: TFloatField
      DisplayLabel = 'Volume (M3)'
      DisplayWidth = 18
      FieldName = 'ORD_VOLUME'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_VOLUME'
      ReadOnly = True
      DisplayFormat = '###,###,##0.000000'
      EditFormat = '###,###,##0.000000'
    end
    object Q_OCEORD_QTDE_PALLET: TFloatField
      DisplayLabel = 'Qtde Pallet'
      DisplayWidth = 10
      FieldName = 'ORD_QTDE_PALLET'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_QTDE_PALLET'
      ReadOnly = True
    end
    object Q_OCEORD_VALORTOTAL: TFloatField
      DisplayLabel = 'Valor'
      DisplayWidth = 15
      FieldName = 'ORD_VALORTOTAL'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_VALORTOTAL'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_OCEORD_TPCARGA: TStringField
      DisplayLabel = 'Tp.Carga'
      DisplayWidth = 1
      FieldName = 'ORD_TPCARGA'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_TPCARGA'
      FixedChar = True
      Size = 1
    end
    object Q_OCEORD_QTDE_UV: TFloatField
      DisplayLabel = 'Qtde.UV'
      DisplayWidth = 10
      FieldName = 'ORD_QTDE_UV'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_QTDE_UV'
      ReadOnly = True
      DisplayFormat = '0.000'
      EditFormat = '0.000'
    end
    object Q_OCECLIFraza: TStringField
      DisplayLabel = 'Cliente Final'
      DisplayWidth = 40
      FieldKind = fkLookup
      FieldName = 'CLIFraza'
      LookupDataSet = Q_CLIF2
      LookupKeyFields = 'CLIF_ID'
      LookupResultField = 'CLIF_RAZA'
      KeyFields = 'CLIF_ID'
      Size = 40
      Lookup = True
    end
    object Q_OCETRANSFANTASIA: TStringField
      DisplayLabel = 'Redespacho'
      DisplayWidth = 40
      FieldKind = fkLookup
      FieldName = 'TRANSFANTASIA'
      LookupDataSet = Q_TRANS2
      LookupKeyFields = 'TRANS_ID'
      LookupResultField = 'TRANS_FANTASIA'
      KeyFields = 'TRANS_ID_REDES'
      Size = 40
      Lookup = True
    end
    object Q_OCEVEIC_ID_RECEB: TIntegerField
      DisplayWidth = 10
      FieldName = 'VEIC_ID_RECEB'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.VEIC_ID_RECEB'
      Visible = False
    end
    object Q_OCEREG_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'REG_ID'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.REG_ID'
      Visible = False
    end
    object Q_OCEMANI_ID: TIntegerField
      FieldName = 'MANI_ID'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.MANI_ID'
      Visible = False
    end
    object Q_OCETRANS_ID: TIntegerField
      FieldName = 'TRANS_ID'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.TRANS_ID'
      Visible = False
    end
    object Q_OCEVEIC_ID: TIntegerField
      FieldName = 'VEIC_ID'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.VEIC_ID'
      Visible = False
    end
    object Q_OCEORD_COLETA_ENTREGA: TStringField
      FieldName = 'ORD_COLETA_ENTREGA'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_COLETA_ENTREGA'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_OCEORD_COL_ENDERECO: TStringField
      FieldName = 'ORD_COL_ENDERECO'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_COL_ENDERECO'
      Visible = False
      FixedChar = True
      Size = 50
    end
    object Q_OCEORD_COL_ENDERECO_COMPL: TStringField
      FieldName = 'ORD_COL_ENDERECO_COMPL'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_COL_ENDERECO_COMPL'
      Visible = False
      FixedChar = True
    end
    object Q_OCEORD_COL_ENDERECO_BAIRRO: TStringField
      FieldName = 'ORD_COL_ENDERECO_BAIRRO'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_COL_ENDERECO_BAIRRO'
      Visible = False
      FixedChar = True
    end
    object Q_OCEMUN_ID_COL: TIntegerField
      FieldName = 'MUN_ID_COL'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.MUN_ID_COL'
      Visible = False
    end
    object Q_OCEORD_COL_MUNICIPIO: TStringField
      FieldName = 'ORD_COL_MUNICIPIO'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_COL_MUNICIPIO'
      Visible = False
      FixedChar = True
      Size = 40
    end
    object Q_OCEUF_SIGLA_COL: TStringField
      FieldName = 'UF_SIGLA_COL'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.UF_SIGLA_COL'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object Q_OCEORD_COL_CEP: TStringField
      FieldName = 'ORD_COL_CEP'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_COL_CEP'
      Visible = False
      EditMask = '99999-999;0;_'
      FixedChar = True
      Size = 8
    end
    object Q_OCEORD_COL_TEL1: TStringField
      FieldName = 'ORD_COL_TEL1'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_COL_TEL1'
      Visible = False
      EditMask = '!\(999\)#999-9999;0; '
      FixedChar = True
      Size = 11
    end
    object Q_OCEORD_COL_TEL2: TStringField
      FieldName = 'ORD_COL_TEL2'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_COL_TEL2'
      Visible = False
      EditMask = '!\(999\)#999-9999;0; '
      FixedChar = True
      Size = 11
    end
    object Q_OCEORD_COL_FAX: TStringField
      FieldName = 'ORD_COL_FAX'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_COL_FAX'
      Visible = False
      EditMask = '!\(999\)#999-9999;0; '
      FixedChar = True
      Size = 11
    end
    object Q_OCEORD_COL_EMAIL: TStringField
      FieldName = 'ORD_COL_EMAIL'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_COL_EMAIL'
      Visible = False
      FixedChar = True
      Size = 60
    end
    object Q_OCEORD_COL_CONTATO: TStringField
      FieldName = 'ORD_COL_CONTATO'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_COL_CONTATO'
      Visible = False
      FixedChar = True
      Size = 50
    end
    object Q_OCEORD_ENT_ENDERECO: TStringField
      FieldName = 'ORD_ENT_ENDERECO'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_ENT_ENDERECO'
      Visible = False
      FixedChar = True
      Size = 50
    end
    object Q_OCEORD_ENT_ENDERECO_COMPL: TStringField
      FieldName = 'ORD_ENT_ENDERECO_COMPL'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_ENT_ENDERECO_COMPL'
      Visible = False
      FixedChar = True
    end
    object Q_OCEORD_ENT_ENDERECO_BAIRRO: TStringField
      FieldName = 'ORD_ENT_ENDERECO_BAIRRO'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_ENT_ENDERECO_BAIRRO'
      Visible = False
      FixedChar = True
    end
    object Q_OCEMUN_ID_ENT: TIntegerField
      FieldName = 'MUN_ID_ENT'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.MUN_ID_ENT'
      Visible = False
    end
    object Q_OCEORD_ENT_MUNICIPIO: TStringField
      FieldName = 'ORD_ENT_MUNICIPIO'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_ENT_MUNICIPIO'
      Visible = False
      FixedChar = True
      Size = 40
    end
    object Q_OCEUF_SIGLA_ENT: TStringField
      FieldName = 'UF_SIGLA_ENT'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.UF_SIGLA_ENT'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object Q_OCEORD_ENT_CEP: TStringField
      FieldName = 'ORD_ENT_CEP'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_ENT_CEP'
      Visible = False
      EditMask = '99999-999;0;_'
      FixedChar = True
      Size = 8
    end
    object Q_OCEORD_ENT_TEL1: TStringField
      FieldName = 'ORD_ENT_TEL1'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_ENT_TEL1'
      Visible = False
      EditMask = '!\(999\)#999-9999;0; '
      FixedChar = True
      Size = 11
    end
    object Q_OCEORD_ENT_TEL2: TStringField
      FieldName = 'ORD_ENT_TEL2'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_ENT_TEL2'
      Visible = False
      EditMask = '!\(999\)#999-9999;0; '
      FixedChar = True
      Size = 11
    end
    object Q_OCEORD_ENT_FAX: TStringField
      FieldName = 'ORD_ENT_FAX'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_ENT_FAX'
      Visible = False
      EditMask = '!\(999\)#999-9999;0; '
      FixedChar = True
      Size = 11
    end
    object Q_OCEORD_ENT_EMAIL: TStringField
      FieldName = 'ORD_ENT_EMAIL'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_ENT_EMAIL'
      Visible = False
      FixedChar = True
      Size = 60
    end
    object Q_OCEORD_ENT_CONTATO: TStringField
      FieldName = 'ORD_ENT_CONTATO'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_ENT_CONTATO'
      Visible = False
      FixedChar = True
      Size = 50
    end
    object Q_OCECLIF_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'CLIF_ID'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.CLIF_ID'
      Visible = False
    end
    object Q_OCETRANS_ID_REDES: TIntegerField
      DisplayWidth = 10
      FieldName = 'TRANS_ID_REDES'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.TRANS_ID_REDES'
      Visible = False
    end
    object Q_OCEORD_REDESPACHO: TStringField
      DisplayWidth = 1
      FieldName = 'ORD_REDESPACHO'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_REDESPACHO'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_OCEORD_STATUS: TStringField
      FieldName = 'ORD_STATUS'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_STATUS'
      FixedChar = True
      Size = 1
    end
  end
  object DS_OCE: TwwDataSource
    DataSet = Q_OCE
    OnDataChange = DS_OCEDataChange
    Left = 1390
    Top = 104
  end
  object UPD_OCE: TUpdateSQL
    ModifySQL.Strings = (
      'update ORDEM_COLETA_ENTREGA'
      'set'
      '  OS_ID = :OS_ID,'
      '  MANI_ID = :MANI_ID,'
      '  TRANS_ID = :TRANS_ID,'
      '  VEIC_ID = :VEIC_ID,'
      '  VEIC_ID_RECEB = :VEIC_ID_RECEB,'
      '  REG_ID = :REG_ID,'
      '  ORD_PESO_TOTAL = :ORD_PESO_TOTAL,'
      '  ORD_QTDE_PALLET = :ORD_QTDE_PALLET,'
      '  ORD_VOLUME = :ORD_VOLUME,'
      '  ORD_VALORTOTAL = :ORD_VALORTOTAL,'
      '  ORD_COLETA_ENTREGA = :ORD_COLETA_ENTREGA,'
      '  ORD_COL_ENDERECO = :ORD_COL_ENDERECO,'
      '  ORD_COL_ENDERECO_COMPL = :ORD_COL_ENDERECO_COMPL,'
      '  ORD_COL_ENDERECO_BAIRRO = :ORD_COL_ENDERECO_BAIRRO,'
      '  MUN_ID_COL = :MUN_ID_COL,'
      '  ORD_COL_MUNICIPIO = :ORD_COL_MUNICIPIO,'
      '  UF_SIGLA_COL = :UF_SIGLA_COL,'
      '  ORD_COL_CEP = :ORD_COL_CEP,'
      '  ORD_COL_TEL1 = :ORD_COL_TEL1,'
      '  ORD_COL_TEL2 = :ORD_COL_TEL2,'
      '  ORD_COL_FAX = :ORD_COL_FAX,'
      '  ORD_COL_EMAIL = :ORD_COL_EMAIL,'
      '  ORD_COL_CONTATO = :ORD_COL_CONTATO,'
      '  ORD_ENT_ENDERECO = :ORD_ENT_ENDERECO,'
      '  ORD_ENT_ENDERECO_COMPL = :ORD_ENT_ENDERECO_COMPL,'
      '  ORD_ENT_ENDERECO_BAIRRO = :ORD_ENT_ENDERECO_BAIRRO,'
      '  MUN_ID_ENT = :MUN_ID_ENT,'
      '  ORD_ENT_MUNICIPIO = :ORD_ENT_MUNICIPIO,'
      '  UF_SIGLA_ENT = :UF_SIGLA_ENT,'
      '  ORD_ENT_CEP = :ORD_ENT_CEP,'
      '  ORD_ENT_TEL1 = :ORD_ENT_TEL1,'
      '  ORD_ENT_TEL2 = :ORD_ENT_TEL2,'
      '  ORD_ENT_FAX = :ORD_ENT_FAX,'
      '  ORD_ENT_EMAIL = :ORD_ENT_EMAIL,'
      '  ORD_ENT_CONTATO = :ORD_ENT_CONTATO,'
      '  TRANS_ID_REDES = :TRANS_ID_REDES'
      'where'
      '  ORD_ID = :OLD_ORD_ID')
    InsertSQL.Strings = (
      'insert into ORDEM_COLETA_ENTREGA'
      
        '  (OS_ID, MANI_ID, TRANS_ID, VEIC_ID, VEIC_ID_RECEB, REG_ID, ORD' +
        '_PESO_TOTAL, '
      
        '   ORD_QTDE_PALLET, ORD_VOLUME, ORD_VALORTOTAL, ORD_COLETA_ENTRE' +
        'GA, ORD_COL_ENDERECO, '
      
        '   ORD_COL_ENDERECO_COMPL, ORD_COL_ENDERECO_BAIRRO, MUN_ID_COL, ' +
        'ORD_COL_MUNICIPIO, '
      
        '   UF_SIGLA_COL, ORD_COL_CEP, ORD_COL_TEL1, ORD_COL_TEL2, ORD_CO' +
        'L_FAX, '
      
        '   ORD_COL_EMAIL, ORD_COL_CONTATO, ORD_ENT_ENDERECO, ORD_ENT_END' +
        'ERECO_COMPL, '
      
        '   ORD_ENT_ENDERECO_BAIRRO, MUN_ID_ENT, ORD_ENT_MUNICIPIO, UF_SI' +
        'GLA_ENT, '
      
        '   ORD_ENT_CEP, ORD_ENT_TEL1, ORD_ENT_TEL2, ORD_ENT_FAX, ORD_ENT' +
        '_EMAIL, '
      '   ORD_ENT_CONTATO, TRANS_ID_REDES)'
      'values'
      
        '  (:OS_ID, :MANI_ID, :TRANS_ID, :VEIC_ID, :VEIC_ID_RECEB, :REG_I' +
        'D, :ORD_PESO_TOTAL, '
      
        '   :ORD_QTDE_PALLET, :ORD_VOLUME, :ORD_VALORTOTAL, :ORD_COLETA_E' +
        'NTREGA, '
      
        '   :ORD_COL_ENDERECO, :ORD_COL_ENDERECO_COMPL, :ORD_COL_ENDERECO' +
        '_BAIRRO, '
      
        '   :MUN_ID_COL, :ORD_COL_MUNICIPIO, :UF_SIGLA_COL, :ORD_COL_CEP,' +
        ' :ORD_COL_TEL1, '
      
        '   :ORD_COL_TEL2, :ORD_COL_FAX, :ORD_COL_EMAIL, :ORD_COL_CONTATO' +
        ', :ORD_ENT_ENDERECO, '
      
        '   :ORD_ENT_ENDERECO_COMPL, :ORD_ENT_ENDERECO_BAIRRO, :MUN_ID_EN' +
        'T, :ORD_ENT_MUNICIPIO, '
      
        '   :UF_SIGLA_ENT, :ORD_ENT_CEP, :ORD_ENT_TEL1, :ORD_ENT_TEL2, :O' +
        'RD_ENT_FAX, '
      '   :ORD_ENT_EMAIL, :ORD_ENT_CONTATO, :TRANS_ID_REDES)')
    DeleteSQL.Strings = (
      'delete from ORDEM_COLETA_ENTREGA'
      'where'
      '  ORD_ID = :OLD_ORD_ID')
    Left = 566
    Top = 72
  end
  object Q_VEIC3: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select * from TPVEICULO order by VEIC_ORDEM')
    ValidateWithMask = True
    Left = 1046
    Top = 72
    object Q_VEIC3VEIC_NOME: TStringField
      DisplayWidth = 40
      FieldName = 'VEIC_NOME'
      Origin = 'NBFDADOS.TPVEICULO.VEIC_NOME'
      FixedChar = True
      Size = 40
    end
    object Q_VEIC3VEIC_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'VEIC_ID'
      Origin = 'NBFDADOS.TPVEICULO.VEIC_ID'
      Visible = False
    end
  end
  object Q_REG2: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    DataSource = DS_VEIC2
    SQL.Strings = (
      'select A.*,B.REG_NOME from FRETE A,REGIAO B'
      'where VEIC_ID = :VEIC_ID '
      'and '
      'A.REG_ID = B.REG_ID  order by REG_NOME'
      ''
      '')
    ValidateWithMask = True
    Left = 902
    Top = 16
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'VEIC_ID'
        ParamType = ptUnknown
      end>
    object Q_REG2REG_NOME: TStringField
      DisplayWidth = 40
      FieldName = 'REG_NOME'
      Origin = 'NBFDADOS.REGIAO.REG_NOME'
      FixedChar = True
      Size = 40
    end
    object Q_REG2FRET_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'FRET_ID'
      Origin = 'NBFDADOS.FRETE.FRET_ID'
      Visible = False
    end
    object Q_REG2VEIC_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'VEIC_ID'
      Origin = 'NBFDADOS.FRETE.VEIC_ID'
      Visible = False
    end
    object Q_REG2REG_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'REG_ID'
      Origin = 'NBFDADOS.FRETE.REG_ID'
      Visible = False
    end
    object Q_REG2FRET_VALOR: TFloatField
      DisplayWidth = 10
      FieldName = 'FRET_VALOR'
      Origin = 'NBFDADOS.FRETE.FRET_VALOR'
      Visible = False
    end
    object Q_REG2FRET_VALOR_GRANEL: TFloatField
      DisplayWidth = 10
      FieldName = 'FRET_VALOR_GRANEL'
      Origin = 'NBFDADOS.FRETE.FRET_VALOR_GRANEL'
      Visible = False
    end
  end
  object DS_VEIC3: TwwDataSource
    DataSet = Q_VEIC3
    OnDataChange = DS_MANIFDataChange
    Left = 838
    Top = 128
  end
  object Q_MUNI: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select * from MUNICIPIO order by MUN_NOME')
    ValidateWithMask = True
    Left = 1038
    Top = 128
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
      Visible = False
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
      Visible = False
      FixedChar = True
      Size = 2
    end
  end
  object DS_MUNI: TwwDataSource
    DataSet = Q_MUNI
    Left = 790
    Top = 24
  end
  object Q_MUNI2: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select * from MUNICIPIO order by MUN_NOME')
    ValidateWithMask = True
    Left = 982
    Top = 136
    object Q_MUNI2MUN_ID: TAutoIncField
      FieldName = 'MUN_ID'
      Origin = 'NBFDADOS.MUNICIPIO.MUN_ID'
    end
    object Q_MUNI2DIPAM: TStringField
      FieldName = 'DIPAM'
      Origin = 'NBFDADOS.MUNICIPIO.DIPAM'
      FixedChar = True
      Size = 10
    end
    object Q_MUNI2MUN_NOME: TStringField
      FieldName = 'MUN_NOME'
      Origin = 'NBFDADOS.MUNICIPIO.MUN_NOME'
      FixedChar = True
      Size = 40
    end
    object Q_MUNI2UF_SIGLA: TStringField
      FieldName = 'UF_SIGLA'
      Origin = 'NBFDADOS.MUNICIPIO.UF_SIGLA'
      FixedChar = True
      Size = 2
    end
    object Q_MUNI2REG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'NBFDADOS.MUNICIPIO.REG_ID'
    end
  end
  object DS_MUNI2: TwwDataSource
    DataSet = Q_MUNI2
    Left = 510
    Top = 88
  end
  object DS_VEIC: TwwDataSource
    DataSet = Q_VEIC
    OnDataChange = DS_MANIFDataChange
    Left = 1070
    Top = 456
  end
  object Q_OS: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'select * from OS'
      'order by OS_ID')
    ValidateWithMask = True
    Left = 582
    Top = 326
    object Q_OSOS_ID: TAutoIncField
      FieldName = 'OS_ID'
      Origin = 'NBFDADOS.OS.OS_ID'
    end
    object Q_OSCLIN_ID: TIntegerField
      FieldName = 'CLIN_ID'
      Origin = 'NBFDADOS.OS.CLIN_ID'
    end
    object Q_OSCTT_ID: TIntegerField
      FieldName = 'CTT_ID'
      Origin = 'NBFDADOS.OS.CTT_ID'
    end
    object Q_OSTOS_ID: TIntegerField
      FieldName = 'TOS_ID'
      Origin = 'NBFDADOS.OS.TOS_ID'
    end
    object Q_OSOS_DATA: TDateTimeField
      FieldName = 'OS_DATA'
      Origin = 'NBFDADOS.OS.OS_DATA'
    end
    object Q_OSOS_USUARIO: TIntegerField
      FieldName = 'OS_USUARIO'
      Origin = 'NBFDADOS.OS.OS_USUARIO'
    end
    object Q_OSOS_GEROU: TStringField
      FieldName = 'OS_GEROU'
      Origin = 'NBFDADOS.OS.OS_GEROU'
      FixedChar = True
      Size = 1
    end
    object Q_OSTPCARGA: TStringField
      FieldName = 'TPCARGA'
      Origin = 'NBFDADOS.OS.OS_ID'
      FixedChar = True
      Size = 1
    end
  end
  object STP_REENTREGA: TwwStoredProc
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    StoredProcName = 'dbo.STP_REENTREGA'
    ValidateWithMask = True
    Left = 534
    Top = 375
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Result'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = '@MANI'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@CLIN_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@CTT_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@TOS_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@OSNOVA'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = '@TPCARGA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@NOVOID'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = '@CFO'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = '@OS_ID_ORIG'
        ParamType = ptInput
      end>
  end
  object STP_TPDO_TPOS_OS: TwwStoredProc
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    StoredProcName = 'dbo.STP_TPDOC_TPOS_OS'
    ValidateWithMask = True
    Left = 494
    Top = 459
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
  object Q_CTT: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select '
      'CTT_TERCEIRO,CTT_ID from CONTRATO '
      '')
    ValidateWithMask = True
    Left = 790
    Top = 72
    object Q_CTTCTT_TERCEIRO: TStringField
      FieldName = 'CTT_TERCEIRO'
      FixedChar = True
      Size = 1
    end
    object Q_CTTCTT_ID: TAutoIncField
      FieldName = 'CTT_ID'
      Origin = 'NBFDADOS.CONTRATO.CTT_ID'
    end
  end
  object Q_MANIF2: TwwQuery
    BeforePost = Q_MANIFBeforePost
    OnNewRecord = Q_MANIFNewRecord
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select MANI_ID,MANI_DATA,'
      ' case when confirma_MANI = '#39'S'#39'  then '#39'Baixado'#39
      '         when confirma_MANI = '#39'N'#39'  then '#39'Aberto'#39' '
      ' end from MANIFESTO where MANI_ENT_COL = '#39'E'#39
      '')
    ValidateWithMask = True
    Left = 454
    Top = 263
    object Q_MANIF2MANI_ID: TAutoIncField
      Alignment = taCenter
      DisplayLabel = 'Manifesto Nº'
      DisplayWidth = 30
      FieldName = 'MANI_ID'
      Origin = 'NBFDADOS.MANIFESTO.MANI_ID'
    end
    object Q_MANIF2MANI_DATA: TDateTimeField
      DisplayLabel = 'Data'
      DisplayWidth = 10
      FieldName = 'MANI_DATA'
      Origin = 'NBFDADOS.MANIFESTO.MANI_DATA'
    end
    object Q_MANIF2COLUMN3: TStringField
      DisplayLabel = 'Status'
      DisplayWidth = 7
      FieldName = 'COLUMN3'
      FixedChar = True
      Size = 7
    end
  end
  object wwSearchDialog1: TwwSearchDialog
    Selected.Strings = (
      'MANI_ID'#9'30'#9'Manifesto Nº'#9'F'
      'MANI_DATA'#9'10'#9'Data'#9'F'
      'COLUMN3'#9'7'#9'Status'#9'F')
    GridTitleAlignment = taCenter
    GridColor = clAqua
    GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
    SearchTable = Q_MANIF2
    Caption = 'Pesquisa de Manifesto de Carga - Entrega'
    MaxWidth = 600
    MaxHeight = 350
    CharCase = ecUpperCase
    Left = 1359
    Top = 26
  end
  object Q_AUX2: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    ValidateWithMask = True
    Left = 942
    Top = 456
  end
  object Q_CLIF2: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      
        'Select CLIF_ID,CLIF_RAZA  from CLIENTEFINAL (nolock) order by CL' +
        'IF_RAZA ')
    ValidateWithMask = True
    Left = 350
    Top = 136
    object Q_CLIF2CLIF_ID: TAutoIncField
      FieldName = 'CLIF_ID'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_ID'
    end
    object Q_CLIF2CLIF_RAZA: TStringField
      FieldName = 'CLIF_RAZA'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_RAZA'
      FixedChar = True
      Size = 50
    end
  end
  object STP_DELETAMANIFESTO: TwwStoredProc
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    StoredProcName = 'dbo.STP_DELETAMANIFESTO'
    ValidateWithMask = True
    Left = 1102
    Top = 72
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Result'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = '@MANI_ID'
        ParamType = ptInput
      end>
  end
  object Q_AUX3: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    ValidateWithMask = True
    Left = 558
    Top = 146
  end
  object Q_TRANS2: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'select TRANS_ID,TRANS_FANTASIA,MUN_ID from'
      'TRANSPORTADORA'
      'where    TRANS_FLAG = '#39'S'#39
      ''
      ' '
      ''
      '')
    ValidateWithMask = True
    Left = 974
    Top = 72
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
  end
  object STP_REENTREGADEVOLUCAO: TwwStoredProc
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    StoredProcName = 'dbo.STP_REENTREGADEVOLUCAO'
    ValidateWithMask = True
    Left = 390
    Top = 344
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Result'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = '@MANI_ID'
        ParamType = ptInput
      end>
  end
  object Q_NFReen: TwwQuery
    CachedUpdates = True
    AfterPost = Q_NFReenAfterPost
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    DataSource = DS_MANIF
    RequestLive = True
    SQL.Strings = (
      'Select *'
      'from NF '
      'where NFI_CLONE = '#39'S'#39
      'order by NFI_NUMERO')
    UpdateObject = UPD_NFReen
    ControlType.Strings = (
      'NFI_MARCAREEN;CheckBox;*;')
    ValidateWithMask = True
    Left = 630
    Top = 447
    object Q_NFReenNFI_MARCAREEN: TStringField
      DisplayLabel = '***'
      DisplayWidth = 1
      FieldName = 'NFI_MARCAREEN'
      Origin = 'NBFDADOS.NF.NFI_MARCAREEN'
      FixedChar = True
      Size = 1
    end
    object Q_NFReenNFI_NUMERO: TStringField
      DisplayLabel = 'NF Num.'
      DisplayWidth = 10
      FieldName = 'NFI_NUMERO'
      Origin = 'NBFDADOS.NF.NFI_NUMERO'
      FixedChar = True
      Size = 10
    end
    object Q_NFReenNFI_DEST_RAZA: TStringField
      DisplayLabel = 'Cliente Final'
      DisplayWidth = 56
      FieldName = 'NFI_DEST_RAZA'
      Origin = 'NBFDADOS.NF.NFI_DEST_RAZA'
      FixedChar = True
      Size = 50
    end
    object Q_NFReenNFI_TOTA: TFloatField
      DisplayLabel = 'Vlr.'
      DisplayWidth = 10
      FieldName = 'NFI_TOTA'
      Origin = 'NBFDADOS.NF.NFI_TOTA'
      Visible = False
    end
    object Q_NFReenNFI_CODI: TAutoIncField
      FieldName = 'NFI_CODI'
      Origin = 'NBFDADOS.NF.NFI_CODI'
      Visible = False
    end
    object Q_NFReenTDOC_ID: TIntegerField
      FieldName = 'TDOC_ID'
      Origin = 'NBFDADOS.NF.TDOC_ID'
      Visible = False
    end
    object Q_NFReenNFI_EMIT_ORIG: TStringField
      FieldName = 'NFI_EMIT_ORIG'
      Origin = 'NBFDADOS.NF.NFI_EMIT_ORIG'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_NFReenNFI_EMIT_CLI: TIntegerField
      FieldName = 'NFI_EMIT_CLI'
      Origin = 'NBFDADOS.NF.NFI_EMIT_CLI'
      Visible = False
    end
    object Q_NFReenNFI_DEST_ORIG: TStringField
      FieldName = 'NFI_DEST_ORIG'
      Origin = 'NBFDADOS.NF.NFI_DEST_ORIG'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_NFReenNFI_DEST_CLI: TIntegerField
      FieldName = 'NFI_DEST_CLI'
      Origin = 'NBFDADOS.NF.NFI_DEST_CLI'
      Visible = False
    end
    object Q_NFReenNFI_DEST_NOME: TStringField
      FieldName = 'NFI_DEST_NOME'
      Origin = 'NBFDADOS.NF.NFI_DEST_NOME'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object Q_NFReenNFI_DEST_ENDERECO: TStringField
      FieldName = 'NFI_DEST_ENDERECO'
      Origin = 'NBFDADOS.NF.NFI_DEST_ENDERECO'
      Visible = False
      FixedChar = True
      Size = 50
    end
    object Q_NFReenNFI_DEST_COMPL: TStringField
      FieldName = 'NFI_DEST_COMPL'
      Origin = 'NBFDADOS.NF.NFI_DEST_COMPL'
      Visible = False
      FixedChar = True
    end
    object Q_NFReenNFI_DEST_BAIRRO: TStringField
      FieldName = 'NFI_DEST_BAIRRO'
      Origin = 'NBFDADOS.NF.NFI_DEST_BAIRRO'
      Visible = False
      FixedChar = True
      Size = 40
    end
    object Q_NFReenNFI_DEST_UF_SIGLA: TStringField
      FieldName = 'NFI_DEST_UF_SIGLA'
      Origin = 'NBFDADOS.NF.NFI_DEST_UF_SIGLA'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object Q_NFReenNFI_DEST_CEP: TStringField
      FieldName = 'NFI_DEST_CEP'
      Origin = 'NBFDADOS.NF.NFI_DEST_CEP'
      Visible = False
      FixedChar = True
      Size = 8
    end
    object Q_NFReenNFI_DEST_TEL: TStringField
      FieldName = 'NFI_DEST_TEL'
      Origin = 'NBFDADOS.NF.NFI_DEST_TEL'
      Visible = False
      FixedChar = True
      Size = 11
    end
    object Q_NFReenNFI_DEST_FAX: TStringField
      FieldName = 'NFI_DEST_FAX'
      Origin = 'NBFDADOS.NF.NFI_DEST_FAX'
      Visible = False
      FixedChar = True
      Size = 11
    end
    object Q_NFReenNFI_DEST_CGC: TStringField
      FieldName = 'NFI_DEST_CGC'
      Origin = 'NBFDADOS.NF.NFI_DEST_CGC'
      Visible = False
      FixedChar = True
      Size = 14
    end
    object Q_NFReenNFI_DEST_INSCRG: TStringField
      FieldName = 'NFI_DEST_INSCRG'
      Origin = 'NBFDADOS.NF.NFI_DEST_INSCRG'
      Visible = False
      FixedChar = True
    end
    object Q_NFReenNFI_DEST_INSCTRB: TStringField
      FieldName = 'NFI_DEST_INSCTRB'
      Origin = 'NBFDADOS.NF.NFI_DEST_INSCTRB'
      Visible = False
      FixedChar = True
    end
    object Q_NFReenNFI_DEST_PESS: TStringField
      FieldName = 'NFI_DEST_PESS'
      Origin = 'NBFDADOS.NF.NFI_DEST_PESS'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_NFReenNFI_VDES: TFloatField
      FieldName = 'NFI_VDES'
      Origin = 'NBFDADOS.NF.NFI_VDES'
      Visible = False
    end
    object Q_NFReenNFI_VFRE: TFloatField
      FieldName = 'NFI_VFRE'
      Origin = 'NBFDADOS.NF.NFI_VFRE'
      Visible = False
    end
    object Q_NFReenNFI_VSEG: TFloatField
      FieldName = 'NFI_VSEG'
      Origin = 'NBFDADOS.NF.NFI_VSEG'
      Visible = False
    end
    object Q_NFReenNFI_BIPI: TFloatField
      FieldName = 'NFI_BIPI'
      Origin = 'NBFDADOS.NF.NFI_BIPI'
      Visible = False
    end
    object Q_NFReenNFI_VIPI: TFloatField
      FieldName = 'NFI_VIPI'
      Origin = 'NBFDADOS.NF.NFI_VIPI'
      Visible = False
    end
    object Q_NFReenNFI_BICM: TFloatField
      FieldName = 'NFI_BICM'
      Origin = 'NBFDADOS.NF.NFI_BICM'
      Visible = False
    end
    object Q_NFReenNFI_VICM: TFloatField
      FieldName = 'NFI_VICM'
      Origin = 'NBFDADOS.NF.NFI_VICM'
      Visible = False
    end
    object Q_NFReenNFI_VMER: TFloatField
      FieldName = 'NFI_VMER'
      Origin = 'NBFDADOS.NF.NFI_VMER'
      Visible = False
    end
    object Q_NFReenNFI_DSAI: TDateTimeField
      FieldName = 'NFI_DSAI'
      Origin = 'NBFDADOS.NF.NFI_DSAI'
      Visible = False
    end
    object Q_NFReenNFI_HSAI: TDateTimeField
      FieldName = 'NFI_HSAI'
      Origin = 'NBFDADOS.NF.NFI_HSAI'
      Visible = False
    end
    object Q_NFReenNFI_TRAN: TStringField
      FieldName = 'NFI_TRAN'
      Origin = 'NBFDADOS.NF.NFI_TRAN'
      Visible = False
      FixedChar = True
      Size = 50
    end
    object Q_NFReenNFI_PLAC: TStringField
      FieldName = 'NFI_PLAC'
      Origin = 'NBFDADOS.NF.NFI_PLAC'
      Visible = False
      FixedChar = True
      Size = 50
    end
    object Q_NFReenNFI_UF_SIGLA: TStringField
      FieldName = 'NFI_UF_SIGLA'
      Origin = 'NBFDADOS.NF.NFI_UF_SIGLA'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object Q_NFReenNFI_MARC: TStringField
      FieldName = 'NFI_MARC'
      Origin = 'NBFDADOS.NF.NFI_MARC'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object Q_NFReenNFI_QTDE: TIntegerField
      FieldName = 'NFI_QTDE'
      Origin = 'NBFDADOS.NF.NFI_QTDE'
      Visible = False
    end
    object Q_NFReenNFI_ESPE: TStringField
      FieldName = 'NFI_ESPE'
      Origin = 'NBFDADOS.NF.NFI_ESPE'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object Q_NFReenNFI_PLIQ: TFloatField
      FieldName = 'NFI_PLIQ'
      Origin = 'NBFDADOS.NF.NFI_PLIQ'
      Visible = False
    end
    object Q_NFReenNFI_PBRU: TFloatField
      FieldName = 'NFI_PBRU'
      Origin = 'NBFDADOS.NF.NFI_PBRU'
      Visible = False
    end
    object Q_NFReenNFI_VOL: TFloatField
      FieldName = 'NFI_VOL'
      Origin = 'NBFDADOS.NF.NFI_VOL'
      Visible = False
    end
    object Q_NFReenNFI_TFRE: TStringField
      FieldName = 'NFI_TFRE'
      Origin = 'NBFDADOS.NF.NFI_TFRE'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_NFReenNFI_DEMI: TDateTimeField
      FieldName = 'NFI_DEMI'
      Origin = 'NBFDADOS.NF.NFI_DEMI'
      Visible = False
    end
    object Q_NFReenCFA_ID: TIntegerField
      FieldName = 'CFA_ID'
      Origin = 'NBFDADOS.NF.CFA_ID'
      Visible = False
    end
    object Q_NFReenOS_ID: TIntegerField
      FieldName = 'OS_ID'
      Origin = 'NBFDADOS.NF.OS_ID'
      Visible = False
    end
    object Q_NFReenMUN_ID: TIntegerField
      FieldName = 'MUN_ID'
      Origin = 'NBFDADOS.NF.MUN_ID'
      Visible = False
    end
    object Q_NFReenNFI_MARCADOR: TStringField
      FieldName = 'NFI_MARCADOR'
      Origin = 'NBFDADOS.NF.NFI_MARCADOR'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_NFReenNFI_DTENTREGA: TDateTimeField
      FieldName = 'NFI_DTENTREGA'
      Origin = 'NBFDADOS.NF.NFI_DTENTREGA'
      Visible = False
    end
    object Q_NFReenMANI_ID: TIntegerField
      FieldName = 'MANI_ID'
      Origin = 'NBFDADOS.NF.MANI_ID'
      Visible = False
    end
    object Q_NFReenMANI_ORDEM: TIntegerField
      FieldName = 'MANI_ORDEM'
      Origin = 'NBFDADOS.NF.MANI_ORDEM'
      Visible = False
    end
    object Q_NFReenNFI_MOVESTQ: TStringField
      FieldName = 'NFI_MOVESTQ'
      Origin = 'NBFDADOS.NF.NFI_MOVESTQ'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_NFReenNFI_TRANS: TStringField
      FieldName = 'NFI_TRANS'
      Origin = 'NBFDADOS.NF.NFI_TRANS'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_NFReenTEXTO_LIVRE: TMemoField
      FieldName = 'TEXTO_LIVRE'
      Origin = 'NBFDADOS.NF.TEXTO_LIVRE'
      Visible = False
      BlobType = ftMemo
    end
    object Q_NFReenNFI_DTENTREGA_FIM: TDateTimeField
      FieldName = 'NFI_DTENTREGA_FIM'
      Origin = 'NBFDADOS.NF.NFI_DTENTREGA_FIM'
      Visible = False
    end
    object Q_NFReenNFI_ENTREGA: TStringField
      FieldName = 'NFI_ENTREGA'
      Origin = 'NBFDADOS.NF.NFI_ENTREGA'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_NFReenNFI_COBRAR: TStringField
      FieldName = 'NFI_COBRAR'
      Origin = 'NBFDADOS.NF.NFI_COBRAR'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_NFReenNFI_CLONE: TStringField
      FieldName = 'NFI_CLONE'
      Origin = 'NBFDADOS.NF.NFI_CLONE'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_NFReenNFI_QTDEPALLET: TIntegerField
      FieldName = 'NFI_QTDEPALLET'
      Origin = 'NBFDADOS.NF.NFI_QTDEPALLET'
      Visible = False
    end
    object Q_NFReenNFI_QTDEUV: TFloatField
      FieldName = 'NFI_QTDEUV'
      Origin = 'NBFDADOS.NF.NFI_QTDEUV'
      Visible = False
    end
    object Q_NFReenTPRO_ID: TIntegerField
      FieldName = 'TPRO_ID'
      Origin = 'NBFDADOS.NF.TPRO_ID'
      Visible = False
    end
    object Q_NFReenNFI_MARCADOR_NFRS: TStringField
      FieldName = 'NFI_MARCADOR_NFRS'
      Origin = 'NBFDADOS.NF.NFI_MARCADOR_NFRS'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_NFReenNFI_NFRS_REJEITADA: TStringField
      FieldName = 'NFI_NFRS_REJEITADA'
      Origin = 'NBFDADOS.NF.NFI_NFRS_REJEITADA'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_NFReenNFI_RETORNADA: TStringField
      FieldName = 'NFI_RETORNADA'
      Origin = 'NBFDADOS.NF.NFI_RETORNADA'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_NFReenNFI_GEROUNFE: TStringField
      FieldName = 'NFI_GEROUNFE'
      Origin = 'NBFDADOS.NF.NFI_GEROUNFE'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_NFReenNFI_REDESPACHO: TStringField
      FieldName = 'NFI_REDESPACHO'
      Origin = 'NBFDADOS.NF.NFI_REDESPACHO'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_NFReenORD_ID: TIntegerField
      FieldName = 'ORD_ID'
      Origin = 'NBFDADOS.NF.ORD_ID'
      Visible = False
    end
    object Q_NFReenTRANS_ID: TIntegerField
      FieldName = 'TRANS_ID'
      Origin = 'NBFDADOS.NF.TRANS_ID'
      Visible = False
    end
    object Q_NFReenNFI_PRESTSERV: TStringField
      FieldName = 'NFI_PRESTSERV'
      Origin = 'NBFDADOS.NF.NFI_PRESTSERV'
      Visible = False
      FixedChar = True
      Size = 25
    end
    object Q_NFReenNFI_FATURADA: TStringField
      FieldName = 'NFI_FATURADA'
      Origin = 'NBFDADOS.NF.NFI_FATURADA'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object Q_NFReenNFI_DISCRIM: TStringField
      FieldName = 'NFI_DISCRIM'
      Origin = 'NBFDADOS.NF.NFI_DISCRIM'
      Visible = False
      FixedChar = True
      Size = 70
    end
    object Q_NFReenFAT_ID: TIntegerField
      FieldName = 'FAT_ID'
      Origin = 'NBFDADOS.NF.FAT_ID'
      Visible = False
    end
  end
  object DS_NFReen: TwwDataSource
    DataSet = Q_NFReen
    OnDataChange = DS_NFDataChange
    Left = 1101
    Top = 112
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
    Left = 362
    Top = 200
    object Q_CLINBFCLIN_RAZA: TStringField
      DisplayLabel = 'Razão Social'
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
  object UPD_NFReen: TUpdateSQL
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
      '  NFI_MARCAREEN = :NFI_MARCAREEN'
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
      '   NFI_CLONE, NFI_QTDEPALLET, NFI_QTDEUV, TPRO_ID, '
      'NFI_MARCADOR_NFRS, NFI_NFRS_REJEITADA, '
      
        '   NFI_RETORNADA, NFI_GEROUNFE, NFI_REDESPACHO, ORD_ID, TRANS_ID' +
        ', '
      'NFI_PRESTSERV, '
      '   NFI_FATURADA, NFI_DISCRIM, FAT_ID, NFI_MARCAREEN)'
      'values'
      
        '  (:NFI_NUMERO, :TDOC_ID, :NFI_EMIT_ORIG, :NFI_EMIT_CLI, :NFI_DE' +
        'ST_ORIG, '
      
        '   :NFI_DEST_CLI, :NFI_DEST_NOME, :NFI_DEST_RAZA, :NFI_DEST_ENDE' +
        'RECO, '
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
      '   :NFI_ENTREGA, :NFI_COBRAR, :NFI_CLONE, :NFI_QTDEPALLET, '
      ':NFI_QTDEUV, '
      '   :TPRO_ID, :NFI_MARCADOR_NFRS, :NFI_NFRS_REJEITADA, '
      ':NFI_RETORNADA, :NFI_GEROUNFE, '
      '   :NFI_REDESPACHO, :ORD_ID, :TRANS_ID, :NFI_PRESTSERV, '
      ':NFI_FATURADA, '
      '   :NFI_DISCRIM, :FAT_ID, :NFI_MARCAREEN)')
    DeleteSQL.Strings = (
      'delete from NF'
      'where'
      '  NFI_CODI = :OLD_NFI_CODI')
    Left = 591
    Top = 73
  end
  object STP_NF: TwwStoredProc
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    StoredProcName = 'dbo.STP_CALCNOTA'
    ValidateWithMask = True
    Left = 526
    Top = 116
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
  object Q_AUX4: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    ValidateWithMask = True
    Left = 558
    Top = 97
  end
  object qrAux: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    ValidateWithMask = True
    Left = 590
    Top = 441
  end
  object qrAux2: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    ValidateWithMask = True
    Left = 1046
    Top = 17
  end
  object qrUpdateEstoque: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'update estoque set mani_id = null'
      'where estq_qtde_retira = 0'
      'and mani_id = :mani_id')
    ValidateWithMask = True
    Left = 1302
    Top = 457
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'mani_id'
        ParamType = ptUnknown
      end>
  end
  object qrManif_produto: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      
        'SELECT PRO_COD, PRO_ID , sum(MRP_QTDE) as QTDE FROM MANIFESTO_RE' +
        'SUMOPRODUTO '
      'WHERE MANI_ID = :MANI_ID'
      'group by PRO_COD, pro_id')
    ValidateWithMask = True
    Left = 318
    Top = 360
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'MANI_ID'
        ParamType = ptUnknown
      end>
    object qrManif_produtoPRO_ID: TIntegerField
      FieldName = 'PRO_ID'
      Origin = 'NBFDADOS.MANIFESTO_RESUMOPRODUTO.PRO_ID'
    end
    object qrManif_produtoQTDE: TFloatField
      FieldName = 'QTDE'
      Origin = 'NBFDADOS.MANIFESTO_RESUMOPRODUTO.MRP_QTDE'
    end
    object qrManif_produtoPRO_COD: TStringField
      FieldName = 'PRO_COD'
      Origin = 'NBFDADOS.MANIFESTO_RESUMOPRODUTO.PRO_COD'
      FixedChar = True
      Size = 16
    end
  end
  object qrManifEstoque: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      
        'select pro_id,  sum(ESTQ_QTDE_RETIRA) as qtderetira from estoque' +
        ' '
      'where mani_id = :mani_id'
      'and pro_id = :pro_id'
      'group by pro_id')
    ValidateWithMask = True
    Left = 38
    Top = 392
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'mani_id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pro_id'
        ParamType = ptUnknown
      end>
    object qrManifEstoquepro_id: TIntegerField
      FieldName = 'pro_id'
    end
    object qrManifEstoqueqtderetira: TFloatField
      FieldName = 'qtderetira'
    end
  end
  object qrApagaOE: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    Left = 428
    Top = 266
  end
  object qrEDi: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM EDI_OCORRENCIAS')
    Left = 268
    Top = 418
  end
  object STP_GERA_CONHECIMENTO_REENTREGANF: TADOStoredProc
    Connection = FMenu.ADOConnection
    ProcedureName = 'GERA_CONHECIMENTO_REENTREGA_NF;1'
    Parameters = <
      item
        Name = '@MANI_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@TRANSP'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@VEIC'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@EMP'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@TPCARGA'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = Null
      end
      item
        Name = '@REGCOBRA'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@VEICCOBRA'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@MOT_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 140
    Top = 313
  end
  object qrPgtoFrete: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    SQL.Strings = (
      'select top 1 * from PGTO_FRETE')
    Left = 156
    Top = 458
    object qrPgtoFreteID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object qrPgtoFreteMANI_ID: TIntegerField
      FieldName = 'MANI_ID'
    end
    object qrPgtoFreteLANC_MANUAL: TIntegerField
      FieldName = 'LANC_MANUAL'
    end
    object qrPgtoFreteTRANS_ID: TIntegerField
      FieldName = 'TRANS_ID'
    end
    object qrPgtoFreteDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object qrPgtoFreteREG_ID: TIntegerField
      FieldName = 'REG_ID'
    end
    object qrPgtoFreteVLR_FRETE: TFloatField
      FieldName = 'VLR_FRETE'
    end
    object qrPgtoFreteSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object qrPgtoFreteOBS: TStringField
      FieldName = 'OBS'
      Size = 250
    end
    object qrPgtoFreteDATA_FECHAMENTO: TDateTimeField
      FieldName = 'DATA_FECHAMENTO'
    end
    object qrPgtoFreteRECIBO: TStringField
      FieldName = 'RECIBO'
      Size = 10
    end
    object qrPgtoFreteMOT_ID: TIntegerField
      FieldName = 'MOT_ID'
    end
  end
  object qrClinAux: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <
      item
        Name = 'CLIN_ID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM CLIENTENBF'
      'WHERE CLIN_ID = :CLIN_ID')
    Left = 52
    Top = 466
    object qrClinAuxCLIN_ID: TAutoIncField
      FieldName = 'CLIN_ID'
      ReadOnly = True
    end
    object qrClinAuxCLIN_PESSOA: TStringField
      FieldName = 'CLIN_PESSOA'
      Size = 1
    end
    object qrClinAuxCLIN_RAZA: TStringField
      FieldName = 'CLIN_RAZA'
      Size = 50
    end
    object qrClinAuxCLIN_NOME: TStringField
      FieldName = 'CLIN_NOME'
      Size = 30
    end
    object qrClinAuxCLIN_CGCCPF: TStringField
      FieldName = 'CLIN_CGCCPF'
      Size = 15
    end
    object qrClinAuxCLIN_INSCRG: TStringField
      FieldName = 'CLIN_INSCRG'
      Size = 15
    end
    object qrClinAuxCLIN_ENDERECO: TStringField
      FieldName = 'CLIN_ENDERECO'
      Size = 50
    end
    object qrClinAuxCLIN_ENDERECO_COMPL: TStringField
      FieldName = 'CLIN_ENDERECO_COMPL'
      Size = 35
    end
    object qrClinAuxCLIN_ENDERECO_BAIRRO: TStringField
      FieldName = 'CLIN_ENDERECO_BAIRRO'
      Size = 40
    end
    object qrClinAuxCLIN_MUNICIPIO: TStringField
      FieldName = 'CLIN_MUNICIPIO'
      Size = 40
    end
    object qrClinAuxUF_SIGLA: TStringField
      FieldName = 'UF_SIGLA'
      Size = 2
    end
    object qrClinAuxCLIN_CEP: TStringField
      FieldName = 'CLIN_CEP'
      Size = 8
    end
    object qrClinAuxCLIN_TEL1: TStringField
      FieldName = 'CLIN_TEL1'
      Size = 11
    end
    object qrClinAuxCLIN_TEL2: TStringField
      FieldName = 'CLIN_TEL2'
      Size = 11
    end
    object qrClinAuxCLIN_FAX: TStringField
      FieldName = 'CLIN_FAX'
      Size = 11
    end
    object qrClinAuxCLIN_EMAIL: TStringField
      FieldName = 'CLIN_EMAIL'
      Size = 60
    end
    object qrClinAuxCON_CODI: TStringField
      FieldName = 'CON_CODI'
      Size = 6
    end
    object qrClinAuxCLIN_CONTRATO: TStringField
      FieldName = 'CLIN_CONTRATO'
      Size = 1
    end
    object qrClinAuxCLIN_UTIL_COD: TStringField
      FieldName = 'CLIN_UTIL_COD'
      Size = 1
    end
    object qrClinAuxMUN_ID: TIntegerField
      FieldName = 'MUN_ID'
    end
    object qrClinAuxCLIN_WEB: TStringField
      FieldName = 'CLIN_WEB'
      FixedChar = True
      Size = 60
    end
    object qrClinAuxCLIN_ENDC: TStringField
      FieldName = 'CLIN_ENDC'
      Size = 50
    end
    object qrClinAuxCLIN_END_COMPLC: TStringField
      FieldName = 'CLIN_END_COMPLC'
      Size = 35
    end
    object qrClinAuxCLIN_END_BAIRC: TStringField
      FieldName = 'CLIN_END_BAIRC'
      Size = 40
    end
    object qrClinAuxCLIN_MUNICC: TStringField
      FieldName = 'CLIN_MUNICC'
      Size = 40
    end
    object qrClinAuxUF_SIGLAC: TStringField
      FieldName = 'UF_SIGLAC'
      Size = 2
    end
    object qrClinAuxCLIN_CEPC: TStringField
      FieldName = 'CLIN_CEPC'
      Size = 8
    end
    object qrClinAuxCLIN_TELC: TStringField
      FieldName = 'CLIN_TELC'
      Size = 11
    end
    object qrClinAuxCLIN_FAXC: TStringField
      FieldName = 'CLIN_FAXC'
      Size = 11
    end
    object qrClinAuxCLIN_EMAILC: TStringField
      FieldName = 'CLIN_EMAILC'
      Size = 60
    end
    object qrClinAuxMUN_IDC: TIntegerField
      FieldName = 'MUN_IDC'
    end
    object qrClinAuxCLIN_TIPOSALDO: TStringField
      FieldName = 'CLIN_TIPOSALDO'
      Size = 1
    end
    object qrClinAuxCLIN_VLRSALDO: TFloatField
      FieldName = 'CLIN_VLRSALDO'
    end
    object qrClinAuxCLIN_TPMERC: TStringField
      FieldName = 'CLIN_TPMERC'
      Size = 50
    end
    object qrClinAuxCLIN_LOTE: TStringField
      FieldName = 'CLIN_LOTE'
      Size = 1
    end
    object qrClinAuxCLIN_ISS: TFloatField
      FieldName = 'CLIN_ISS'
    end
    object qrClinAuxCLIN_DESCONTO: TFloatField
      FieldName = 'CLIN_DESCONTO'
    end
    object qrClinAuxRemanejaSN: TStringField
      FieldName = 'RemanejaSN'
      Size = 1
    end
    object qrClinAuxIBGE_ID: TIntegerField
      FieldName = 'IBGE_ID'
    end
    object qrClinAuxCLIN_LOGRADOURO: TStringField
      FieldName = 'CLIN_LOGRADOURO'
      Size = 50
    end
    object qrClinAuxCLIN_NUMERO: TStringField
      FieldName = 'CLIN_NUMERO'
      Size = 15
    end
    object qrClinAuxCLIN_ISENCAO: TStringField
      FieldName = 'CLIN_ISENCAO'
      Size = 1
    end
    object qrClinAuxCLIN_COBRAFRETEDEV: TStringField
      FieldName = 'CLIN_COBRAFRETEDEV'
      Size = 1
    end
    object qrClinAuxCLIN_PAGAFRETEDEV: TStringField
      FieldName = 'CLIN_PAGAFRETEDEV'
      Size = 1
    end
    object qrClinAuxCLIN_FRETEADICIONAL: TFloatField
      FieldName = 'CLIN_FRETEADICIONAL'
    end
  end
  object dsRecebedor: TDataSource
    DataSet = qrRecebedor
    Left = 967
    Top = 315
  end
  object qrRecebedor: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT A.TRANS_ID,A.TRANS_RAZA, A.TRANS_FANTASIA, A.TRANS_CNPJ  ' +
        'FROM TRANSPORTADORA A'
      'ORDER BY TRANS_RAZA')
    Left = 1051
    Top = 317
    object qrRecebedorTRANS_CNPJ: TStringField
      DisplayWidth = 15
      FieldName = 'TRANS_CNPJ'
      Size = 15
    end
    object StringField4: TStringField
      DisplayWidth = 60
      FieldName = 'TRANS_RAZA'
      Size = 60
    end
    object StringField5: TStringField
      DisplayWidth = 40
      FieldName = 'TRANS_FANTASIA'
      Size = 40
    end
    object AutoIncField3: TAutoIncField
      DisplayWidth = 10
      FieldName = 'TRANS_ID'
      ReadOnly = True
      Visible = False
    end
  end
end
