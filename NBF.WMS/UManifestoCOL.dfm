object FManifestoCOL: TFManifestoCOL
  Left = 155
  Top = 77
  Width = 1203
  Height = 613
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
    Top = 4
    Width = 905
    Height = 45
    BevelInner = bvLowered
    TabOrder = 0
    object SpeedButton3: TSpeedButton
      Left = 864
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
      Left = 12
      Top = 6
      Width = 346
      Height = 29
      Caption = 'Manifesto de Carga - Coleta'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -24
      Font.Name = 'Georgia'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object SpeedButton1: TSpeedButton
      Left = 811
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
      Left = 839
      Top = 8
      Width = 25
      Height = 26
      Hint = 'Pesquisar Manifesto de Carga - Coleta'
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
    object DBNavigator1: TDBNavigator
      Left = 619
      Top = 8
      Width = 192
      Height = 26
      DataSource = DS_MANIF
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbPost, nbCancel]
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
  end
  object TabbedNotebook1: TTabbedNotebook
    Left = 0
    Top = 57
    Width = 905
    Height = 512
    PageIndex = 1
    TabFont.Charset = ANSI_CHARSET
    TabFont.Color = clBtnText
    TabFont.Height = -11
    TabFont.Name = 'Arial'
    TabFont.Style = [fsBold]
    TabOrder = 1
    OnClick = TabbedNotebook1Click
    object TTabPage
      Left = 4
      Top = 24
      Caption = '   Principal   '
      object Panel1: TPanel
        Left = -1
        Top = 2
        Width = 890
        Height = 479
        BevelInner = bvLowered
        TabOrder = 0
        object Label2: TLabel
          Left = 7
          Top = 16
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
        object Label7: TLabel
          Left = 245
          Top = 11
          Width = 533
          Height = 24
          Alignment = taCenter
          AutoSize = False
          Caption = 'Manifesto em aberto'
          Color = clGreen
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Panel5: TPanel
          Left = 115
          Top = 3
          Width = 126
          Height = 38
          BevelInner = bvLowered
          TabOrder = 0
          object DBText2: TDBText
            Left = 13
            Top = 2
            Width = 99
            Height = 28
            Alignment = taCenter
            Color = clMenu
            DataField = 'MANI_ID'
            DataSource = DS_MANIF
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -24
            Font.Name = 'Comic Sans MS'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
        end
        object Panel3: TPanel
          Left = 6
          Top = 43
          Width = 875
          Height = 430
          BevelInner = bvLowered
          TabOrder = 1
          object Label50: TLabel
            Left = 14
            Top = 390
            Width = 69
            Height = 15
            Caption = 'Observação'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object GroupBox1: TGroupBox
            Left = 10
            Top = 301
            Width = 758
            Height = 67
            Caption = 'Resumo por Manifesto '
            Color = clScrollBar
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 3
            object Label31: TLabel
              Left = 61
              Top = 14
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
              Left = 255
              Top = 14
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
              Left = 49
              Top = 38
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
              Left = 310
              Top = 14
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
              Left = 304
              Top = 38
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
              Left = 459
              Top = 14
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
            object Label43: TLabel
              Left = 518
              Top = 14
              Width = 45
              Height = 15
              Caption = 'Vlr.Total'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object wwDBEdit12: TwwDBEdit
              Left = 125
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
              Left = 125
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
              TabOrder = 3
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
              OnEnter = wwDBEdit6Enter
              OnExit = wwDBEdit6Exit
            end
            object wwDBEdit14: TwwDBEdit
              Left = 357
              Top = 14
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
              TabOrder = 1
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
              OnEnter = wwDBEdit14Enter
              OnExit = wwDBEdit14Exit
            end
            object wwDBEdit15: TwwDBEdit
              Left = 357
              Top = 38
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
              TabOrder = 4
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
              OnEnter = wwDBEdit15Enter
              OnExit = wwDBEdit15Exit
            end
            object wwDBEdit17: TwwDBEdit
              Left = 569
              Top = 14
              Width = 98
              Height = 21
              BorderStyle = bsNone
              DataField = 'VLR_TOTAL'
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
            end
          end
          object GroupBox4: TGroupBox
            Left = 10
            Top = 255
            Width = 757
            Height = 42
            Caption = 'Agendamento'
            Color = clScrollBar
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 2
            object Label46: TLabel
              Left = 96
              Top = 18
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
            object Label48: TLabel
              Left = 208
              Top = 18
              Width = 27
              Height = 15
              Caption = 'Hora'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label47: TLabel
              Left = 294
              Top = 18
              Width = 60
              Height = 15
              Caption = 'Solicitante'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label49: TLabel
              Left = 587
              Top = 18
              Width = 80
              Height = 15
              Caption = 'Ajudante (S/N)'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object wwDBEdit22: TwwDBEdit
              Left = 126
              Top = 15
              Width = 66
              Height = 21
              BorderStyle = bsNone
              DataField = 'MANI_DTAGENDA'
              DataSource = DS_MANIF
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              MaxLength = 10
              ParentFont = False
              TabOrder = 0
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
              OnEnter = wwDBEdit22Enter
              OnExit = wwDBEdit22Exit
            end
            object wwDBEdit21: TwwDBEdit
              Left = 238
              Top = 15
              Width = 37
              Height = 21
              BorderStyle = bsNone
              DataField = 'MANI_HORAGENDA'
              DataSource = DS_MANIF
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              MaxLength = 5
              ParentFont = False
              TabOrder = 1
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
              OnEnter = wwDBEdit21Enter
              OnExit = wwDBEdit21Exit
            end
            object wwDBEdit23: TwwDBEdit
              Left = 357
              Top = 15
              Width = 212
              Height = 21
              BorderStyle = bsNone
              DataField = 'MANI_SOLICITANTE'
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
              OnEnter = wwDBEdit23Enter
              OnExit = wwDBEdit23Exit
            end
            object wwDBComboBox3: TwwDBComboBox
              Left = 669
              Top = 15
              Width = 68
              Height = 21
              ShowButton = True
              Style = csDropDown
              MapList = True
              AllowClearKey = False
              AutoDropDown = True
              BorderStyle = bsNone
              ButtonStyle = cbsEllipsis
              DataField = 'MANI_AJUDANTE'
              DataSource = DS_MANIF
              DropDownCount = 8
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ItemHeight = 0
              Items.Strings = (
                'SIM'#9'S'
                'NÃO'#9'N')
              ParentFont = False
              Sorted = False
              TabOrder = 3
              UnboundDataType = wwDefault
              OnEnter = wwDBComboBox3Enter
              OnExit = wwDBComboBox3Exit
            end
          end
          object GroupBox5: TGroupBox
            Left = 10
            Top = 3
            Width = 344
            Height = 238
            Caption = 'Dados p/ Transporte'
            Color = clScrollBar
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 0
            object Label21: TLabel
              Left = 19
              Top = 20
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
              Left = 43
              Top = 45
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
              Left = 32
              Top = 71
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
            object Label44: TLabel
              Left = 11
              Top = 123
              Width = 109
              Height = 15
              Caption = 'Veículo Pagto.Frete'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label45: TLabel
              Left = 11
              Top = 148
              Width = 110
              Height = 15
              Caption = 'Região Pagto. Frete'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label51: TLabel
              Left = 23
              Top = 174
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
            object Label6: TLabel
              Left = 67
              Top = 96
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
            object Label11: TLabel
              Left = 55
              Top = 204
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
            object wwDBLookupCombo1: TwwDBLookupCombo
              Left = 125
              Top = 18
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
              DataField = 'VEIC_ID'
              DataSource = DS_MANIF
              LookupTable = Q_VEIC
              LookupField = 'VEIC_ID'
              ParentFont = False
              TabOrder = 0
              AutoDropDown = True
              ShowButton = True
              SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
              PreciseEditRegion = False
              AllowClearKey = False
              OnEnter = wwDBLookupCombo1Enter
              OnExit = wwDBLookupCombo1Exit
            end
            object wwDBComboBox1: TwwDBComboBox
              Left = 125
              Top = 44
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
              ItemIndex = 1
              ParentFont = False
              Sorted = False
              TabOrder = 1
              UnboundDataType = wwDefault
              OnEnter = wwDBComboBox1Enter
              OnExit = wwDBComboBox1Exit
            end
            object wwDBLookupCombo2: TwwDBLookupCombo
              Left = 125
              Top = 70
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
              TabOrder = 2
              AutoDropDown = True
              ShowButton = True
              SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
              PreciseEditRegion = False
              AllowClearKey = False
              OnCloseUp = wwDBLookupCombo2CloseUp
              OnEnter = wwDBLookupCombo2Enter
              OnExit = wwDBLookupCombo2Exit
            end
            object wwDBLookupCombo11: TwwDBLookupCombo
              Left = 125
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
              TabOrder = 5
              AutoDropDown = True
              ShowButton = True
              SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
              PreciseEditRegion = False
              AllowClearKey = False
              OnEnter = wwDBLookupCombo11Enter
              OnExit = wwDBLookupCombo11Exit
            end
            object wwDBLookupCombo10: TwwDBLookupCombo
              Left = 125
              Top = 122
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
            object wwDBEdit20: TwwDBEdit
              Left = 125
              Top = 174
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
              TabOrder = 6
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
              OnEnter = wwDBEdit20Enter
              OnExit = wwDBEdit20Exit
            end
            object wwDBLookupCombo4: TwwDBLookupCombo
              Left = 125
              Top = 96
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
              TabOrder = 3
              AutoDropDown = True
              ShowButton = True
              SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
              PreciseEditRegion = False
              AllowClearKey = False
              OnCloseUp = wwDBLookupCombo4CloseUp
              OnEnter = wwDBLookupCombo4Enter
              OnExit = wwDBLookupCombo4Exit
            end
            object wwDBEdit1: TwwDBEdit
              Left = 125
              Top = 202
              Width = 204
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
              TabOrder = 7
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
              OnEnter = wwDBEdit20Enter
              OnExit = wwDBEdit20Exit
            end
          end
          object GroupBox6: TGroupBox
            Left = 430
            Top = 3
            Width = 435
            Height = 238
            Caption = 'Dados p/ Cobrança'
            Color = clScrollBar
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 1
            object Label18: TLabel
              Left = 32
              Top = 72
              Width = 93
              Height = 15
              Caption = 'Veículo a Cobrar'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label36: TLabel
              Left = 35
              Top = 99
              Width = 91
              Height = 15
              Caption = 'Região a Cobrar'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label38: TLabel
              Left = 34
              Top = 126
              Width = 92
              Height = 15
              Caption = 'Frete Negociado'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label40: TLabel
              Left = 220
              Top = 126
              Width = 92
              Height = 15
              Caption = 'Vlr. Frete Cobrar'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
              Visible = False
            end
            object Label57: TLabel
              Left = 17
              Top = 151
              Width = 108
              Height = 15
              Caption = 'Data do Transporte'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label9: TLabel
              Left = 77
              Top = 44
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
            object Label1: TLabel
              Left = 62
              Top = 19
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
            object wwDBLookupCombo17: TwwDBLookupCombo
              Left = 130
              Top = 70
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
              DataField = 'VEIC_ID_COBRA'
              DataSource = DS_MANIF
              LookupTable = Q_VEIC3
              LookupField = 'VEIC_ID'
              ParentFont = False
              TabOrder = 2
              AutoDropDown = True
              ShowButton = True
              SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
              PreciseEditRegion = False
              AllowClearKey = False
              OnEnter = wwDBLookupCombo17Enter
              OnExit = wwDBLookupCombo17Exit
            end
            object wwDBLookupCombo18: TwwDBLookupCombo
              Left = 130
              Top = 96
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
                'REG_NOME'#9'40'#9'REG_NOME'#9'F')
              DataField = 'REG_ID_COBRA'
              DataSource = DS_MANIF
              LookupTable = Q_REG2
              LookupField = 'REG_ID'
              ParentFont = False
              TabOrder = 3
              AutoDropDown = True
              ShowButton = True
              SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
              PreciseEditRegion = False
              AllowClearKey = False
              OnEnter = wwDBLookupCombo18Enter
              OnExit = wwDBLookupCombo18Exit
            end
            object wwDBComboBox2: TwwDBComboBox
              Left = 130
              Top = 123
              Width = 68
              Height = 21
              ShowButton = True
              Style = csDropDown
              MapList = True
              AllowClearKey = False
              AutoDropDown = True
              BorderStyle = bsNone
              ButtonStyle = cbsEllipsis
              DataField = 'FRETE_NEGOCIA'
              DataSource = DS_MANIF
              DropDownCount = 8
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ItemHeight = 0
              Items.Strings = (
                'SIM'#9'S'
                'NÃO'#9'N')
              ItemIndex = 1
              ParentFont = False
              Sorted = False
              TabOrder = 4
              UnboundDataType = wwDefault
              OnEnter = wwDBComboBox2Enter
              OnExit = wwDBComboBox2Exit
            end
            object wwDBEdit10: TwwDBEdit
              Left = 315
              Top = 123
              Width = 75
              Height = 21
              BorderStyle = bsNone
              DataField = 'VLR_NEGOCIA'
              DataSource = DS_MANIF
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
              UnboundDataType = wwDefault
              Visible = False
              WantReturns = False
              WordWrap = False
              OnEnter = wwDBEdit10Enter
              OnExit = wwDBEdit10Exit
            end
            object wwDBEdit25: TwwDBEdit
              Left = 130
              Top = 149
              Width = 66
              Height = 21
              BorderStyle = bsNone
              DataField = 'MANI_DT_TRANSP'
              DataSource = DS_MANIF
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              MaxLength = 10
              ParentFont = False
              TabOrder = 6
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
              OnEnter = wwDBEdit22Enter
              OnExit = wwDBEdit22Exit
            end
            object wwDBLookupCombo12: TwwDBLookupCombo
              Left = 130
              Top = 44
              Width = 260
              Height = 21
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              BorderStyle = bsNone
              DropDownAlignment = taLeftJustify
              Selected.Strings = (
                'CTT_NOME'#9'40'#9'Nome do Contrato'#9'F')
              DataField = 'CTT_ID'
              DataSource = DS_MANIF
              LookupTable = Q_CTT
              LookupField = 'CTT_ID'
              ParentFont = False
              TabOrder = 1
              AutoDropDown = True
              ShowButton = True
              SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
              PreciseEditRegion = False
              AllowClearKey = False
              OnEnter = wwDBLookupCombo12Enter
              OnExit = wwDBLookupCombo12Exit
            end
            object wwDBLookupCombo3: TwwDBLookupCombo
              Left = 130
              Top = 18
              Width = 260
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
              DataField = 'CLIN_ID'
              DataSource = DS_MANIF
              LookupTable = Q_CLINctt
              LookupField = 'CLIN_ID'
              ParentFont = False
              TabOrder = 0
              AutoDropDown = True
              ShowButton = True
              SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
              PreciseEditRegion = False
              AllowClearKey = False
              OnCloseUp = wwDBLookupCombo3CloseUp
              OnEnter = wwDBLookupCombo3Enter
              OnExit = wwDBLookupCombo3Exit
            end
            object DBCheckBox1: TDBCheckBox
              Left = 32
              Top = 216
              Width = 353
              Height = 17
              Caption = 'O tomador do serviço é o destinatário?'
              DataField = 'TOMADOR'
              DataSource = DS_MANIF
              TabOrder = 7
              ValueChecked = '3'
              ValueUnchecked = '0'
            end
            object DBCheckBox2: TDBCheckBox
              Left = 32
              Top = 184
              Width = 185
              Height = 17
              Caption = 'Cliente paga valor adicional'
              DataField = 'PAGA_ADICIONAL'
              DataSource = DS_MANIF
              TabOrder = 8
              ValueChecked = 'S'
              ValueUnchecked = 'N'
              OnClick = DBCheckBox2Click
            end
            object edtValorAdicional: TDBEdit
              Left = 212
              Top = 180
              Width = 121
              Height = 22
              DataField = 'VALOR_ADICIONAL'
              DataSource = DS_MANIF
              ReadOnly = True
              TabOrder = 9
            end
          end
          object wwDBEdit26: TwwDBEdit
            Left = 90
            Top = 389
            Width = 775
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
            TabOrder = 4
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnEnter = wwDBEdit26Enter
            OnExit = wwDBEdit26Exit
          end
        end
      end
    end
    object TTabPage
      Left = 4
      Top = 24
      Caption = '   End.Origem    '
      object Label53: TLabel
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
      object DBText1: TDBText
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
      object Panel4: TPanel
        Left = 5
        Top = 30
        Width = 884
        Height = 451
        BevelInner = bvLowered
        TabOrder = 0
        object TabbedNotebook2: TTabbedNotebook
          Left = 2
          Top = 2
          Width = 880
          Height = 447
          Align = alClient
          TabFont.Charset = ANSI_CHARSET
          TabFont.Color = clRed
          TabFont.Height = -11
          TabFont.Name = 'Arial'
          TabFont.Style = [fsBold]
          TabOrder = 0
          object TTabPage
            Left = 4
            Top = 24
            Caption = '    (Remetente Ct-e)  '
            object lbRemetente: TLabel
              Left = 8
              Top = 3
              Width = 72
              Height = 15
              Caption = 'lbRemetente'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object GroupBox2: TGroupBox
              Left = 0
              Top = 32
              Width = 872
              Height = 279
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
                Left = 70
                Top = 126
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
                Left = 46
                Top = 149
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
                Left = 60
                Top = 197
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
                Left = 58
                Top = 248
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
                Left = 342
                Top = 128
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
                Left = 369
                Top = 153
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
                Left = 357
                Top = 178
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
                Left = 518
                Top = 126
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
                Left = 43
                Top = 221
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
                Left = 6
                Top = 173
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
                Left = 349
                Top = 203
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
                Left = 92
                Top = 123
                Width = 69
                Height = 21
                BorderStyle = bsNone
                DataField = 'MANI_CCEP'
                DataSource = DS_MANIF
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
                OnEnter = wwDBEdit2Enter
                OnExit = wwDBEdit2Exit
              end
              object wwDBEdit3: TwwDBEdit
                Left = 92
                Top = 147
                Width = 236
                Height = 21
                BorderStyle = bsNone
                DataField = 'MANI_CENDERECO'
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
                OnEnter = wwDBEdit3Enter
                OnExit = wwDBEdit3Exit
              end
              object wwDBEdit4: TwwDBEdit
                Left = 92
                Top = 195
                Width = 164
                Height = 21
                BorderStyle = bsNone
                DataField = 'MANI_CENDERECOBAIRRO'
                DataSource = DS_MANIF
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
                OnEnter = wwDBEdit4Enter
                OnExit = wwDBEdit4Exit
              end
              object wwDBLookupCombo6: TwwDBLookupCombo
                Left = 92
                Top = 245
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
                DataField = 'MANI_CUF_SIGLA'
                DataSource = DS_MANIF
                LookupTable = Q_UF1
                LookupField = 'UF_SIGLA'
                ParentFont = False
                TabOrder = 6
                AutoDropDown = True
                ShowButton = True
                SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
                PreciseEditRegion = False
                AllowClearKey = False
                OnEnter = wwDBLookupCombo6Enter
                OnExit = wwDBLookupCombo6Exit
              end
              object wwDBEdit5: TwwDBEdit
                Left = 388
                Top = 126
                Width = 128
                Height = 21
                BorderStyle = bsNone
                DataField = 'MANI_CTEL1'
                DataSource = DS_MANIF
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
                OnEnter = wwDBEdit5Enter
                OnExit = wwDBEdit5Exit
              end
              object wwDBEdit7: TwwDBEdit
                Left = 388
                Top = 151
                Width = 128
                Height = 21
                BorderStyle = bsNone
                DataField = 'MANI_CFAX'
                DataSource = DS_MANIF
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
                OnEnter = wwDBEdit7Enter
                OnExit = wwDBEdit7Exit
              end
              object wwDBEdit8: TwwDBEdit
                Left = 388
                Top = 176
                Width = 217
                Height = 21
                BorderStyle = bsNone
                DataField = 'MANI_CEMAIL'
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
                OnEnter = wwDBEdit8Enter
                OnExit = wwDBEdit8Exit
              end
              object wwDBEdit9: TwwDBEdit
                Left = 529
                Top = 126
                Width = 128
                Height = 21
                BorderStyle = bsNone
                DataField = 'MANI_CTEL2'
                DataSource = DS_MANIF
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
                OnEnter = wwDBEdit9Enter
                OnExit = wwDBEdit9Exit
              end
              object wwDBEdit11: TwwDBEdit
                Left = 92
                Top = 171
                Width = 232
                Height = 21
                BorderStyle = bsNone
                DataField = 'MANI_CENDERECOCOMPL'
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
                OnEnter = wwDBEdit11Enter
                OnExit = wwDBEdit11Exit
              end
              object wwDBEdit13: TwwDBEdit
                Left = 388
                Top = 201
                Width = 217
                Height = 21
                BorderStyle = bsNone
                DataField = 'MANI_CCONTATO'
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
                OnEnter = wwDBEdit13Enter
                OnExit = wwDBEdit13Exit
              end
              object RadioGroup2: TRadioGroup
                Left = 7
                Top = 14
                Width = 490
                Height = 100
                Caption = 'Aproveitar Endereço'
                Font.Charset = ANSI_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                Items.Strings = (
                  'Clientes NBF'
                  'Clientes Finais'
                  'NBF'
                  'Cliente Remetente')
                ParentFont = False
                TabOrder = 0
                OnClick = RadioGroup2Click
              end
              object wwDBLookupCombo9: TwwDBLookupCombo
                Left = 188
                Top = 32
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
                LookupTable = Q_CLIF2
                LookupField = 'CLIF_ID'
                ParentFont = False
                TabOrder = 13
                Visible = False
                AutoDropDown = True
                ShowButton = True
                SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
                PreciseEditRegion = False
                AllowClearKey = False
                OnEnter = wwDBLookupCombo9Enter
                OnExit = wwDBLookupCombo9Exit
              end
              object wwDBLookupCombo7: TwwDBLookupCombo
                Left = 188
                Top = 32
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
                OnEnter = wwDBLookupCombo7Enter
                OnExit = wwDBLookupCombo7Exit
              end
              object wwDBLookupCombo14: TwwDBLookupCombo
                Left = 92
                Top = 220
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
                DataField = 'MANI_MUN_IDC'
                DataSource = DS_MANIF
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
                OnEnter = wwDBLookupCombo14Enter
                OnExit = wwDBLookupCombo14Exit
              end
              object cboClienteRemetente: TwwDBLookupCombo
                Left = 190
                Top = 31
                Width = 278
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
                LookupTable = Q_REM
                LookupField = 'CLIN_ID'
                DropDownCount = 13
                ParentFont = False
                TabOrder = 14
                Visible = False
                AutoDropDown = True
                ShowButton = True
                PreciseEditRegion = False
                AllowClearKey = True
                OnExit = cboClienteRemetenteExit
              end
            end
            object TabbedNotebook3: TTabbedNotebook
              Left = 0
              Top = 317
              Width = 444
              Height = 103
              TabFont.Charset = ANSI_CHARSET
              TabFont.Color = clBtnText
              TabFont.Height = -12
              TabFont.Name = 'Arial'
              TabFont.Style = []
              TabOrder = 1
              object TTabPage
                Left = 4
                Top = 24
                Caption = 'Expedidor (CT-e)'
                object DBText4: TDBText
                  Left = 16
                  Top = 40
                  Width = 45
                  Height = 15
                  AutoSize = True
                  DataField = 'TRANS_RAZA'
                  DataSource = dsExpedidor
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -12
                  Font.Name = 'Arial'
                  Font.Style = []
                  ParentFont = False
                end
                object wwDBLookupCombo5: TwwDBLookupCombo
                  Left = 16
                  Top = 4
                  Width = 401
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
                  DataField = 'CLI_EXPEDIDOR'
                  DataSource = DS_MANIF
                  LookupTable = qrExpedidor
                  LookupField = 'TRANS_ID'
                  ParentFont = False
                  TabOrder = 0
                  AutoDropDown = True
                  ShowButton = True
                  PreciseEditRegion = False
                  AllowClearKey = False
                end
              end
            end
            object TabbedNotebook4: TTabbedNotebook
              Left = 443
              Top = 317
              Width = 430
              Height = 103
              TabFont.Charset = ANSI_CHARSET
              TabFont.Color = clBtnText
              TabFont.Height = -12
              TabFont.Name = 'Arial'
              TabFont.Style = []
              TabOrder = 2
              object TTabPage
                Left = 4
                Top = 24
                Caption = 'Recebedor (CT-e)'
                object DBText5: TDBText
                  Left = 16
                  Top = 40
                  Width = 45
                  Height = 15
                  AutoSize = True
                  DataField = 'TRANS_RAZA'
                  DataSource = dsRecebedor
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -12
                  Font.Name = 'Arial'
                  Font.Style = []
                  ParentFont = False
                end
                object wwDBLookupCombo8: TwwDBLookupCombo
                  Left = 16
                  Top = 4
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
                  TabOrder = 0
                  AutoDropDown = True
                  ShowButton = True
                  PreciseEditRegion = False
                  AllowClearKey = False
                end
              end
            end
          end
        end
      end
    end
    object TTabPage
      Left = 4
      Top = 24
      Caption = '   NF'#39's Coletadas   '
      object Label8: TLabel
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
      object Panel6: TPanel
        Left = 0
        Top = 30
        Width = 897
        Height = 419
        BevelInner = bvLowered
        TabOrder = 0
        object SBT_VISU: TSpeedButton
          Left = 656
          Top = 5
          Width = 169
          Height = 27
          Caption = 'Gerar OE e Baixar Manifesto'
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
        object Label10: TLabel
          Left = 438
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
        object DBG_INFI: TwwDBGrid
          Left = 4
          Top = 37
          Width = 893
          Height = 364
          Selected.Strings = (
            'CNF_NF'#9'10'#9'Nº NF'#39's'#9#9
            'EMISSAO'#9'10'#9'Emissão'#9#9
            'SERIE'#9'3'#9'Serie'#9#9
            'CNF_UV'#9'8'#9'Qtde UV'#9#9
            'CNF_PESO'#9'10'#9'Peso'#9#9
            'CNF_PALLETS'#9'5'#9'Pallets'#9#9
            'CNF_VALOR'#9'10'#9'Valor'#9#9
            'VOLUME'#9'10'#9'VOLUME'#9#9
            'clifRAZA'#9'30'#9'Cliente Final'#9#9
            'CFOP'#9'4'#9'CFOP'#9#9
            'DESCRICAO'#9'50'#9'Produto'#9#9
            'NUMEROVIAGEM'#9'20'#9'N° Viagem'#9'F'
            'NFE'#9'50'#9'NFe Chave'#9'F')
          IniAttributes.Delimiter = ';;'
          TitleColor = clBlue
          FixedCols = 0
          ShowHorzScrollBar = True
          Color = clWhite
          DataSource = DS_COLETANF
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          KeyOptions = [dgEnterToTab, dgAllowInsert]
          ParentFont = False
          TabOrder = 0
          TitleAlignment = taCenter
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWhite
          TitleFont.Height = -13
          TitleFont.Name = 'Arial'
          TitleFont.Style = [fsBold]
          TitleLines = 1
          TitleButtons = False
          FooterColor = clInactiveCaption
          FooterCellColor = clGrayText
        end
        object DBLC_INF_PROD: TwwDBLookupCombo
          Left = 277
          Top = 241
          Width = 164
          Height = 23
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          DropDownAlignment = taRightJustify
          Selected.Strings = (
            'CLIF_RAZA'#9'50'#9'Razão'#9'F'
            'CLIF_ENDERECO'#9'50'#9'Endereço'#9'F'
            'NBFINAL_COD_CLIN'#9'10'#9'Cod. Cliente'#9'F')
          DataField = 'CLIF_ID'
          DataSource = DS_COLETANF
          LookupTable = Q_CLIF
          LookupField = 'CLIF_ID'
          Options = [loColLines, loRowLines, loTitles]
          ParentFont = False
          TabOrder = 1
          AutoDropDown = True
          ShowButton = True
          PreciseEditRegion = False
          AllowClearKey = False
        end
        object cboProdutoColeta: TwwDBLookupCombo
          Left = 656
          Top = 192
          Width = 121
          Height = 21
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'DESCRICAO'#9'100'#9'Produto'#9'F')
          LookupTable = qrProdColeta
          LookupField = 'DESCRICAO'
          Style = csDropDownList
          TabOrder = 2
          AutoDropDown = True
          ShowButton = True
          PreciseEditRegion = False
          AllowClearKey = False
          OnCloseUp = cboProdutoColetaCloseUp
        end
      end
    end
    object TTabPage
      Left = 4
      Top = 24
      Caption = '   Ordem Coleta      '
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
        Left = 655
        Top = 0
        Width = 113
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
        Visible = False
        OnClick = SpeedButton6Click
      end
      object wwDBGrid3: TwwDBGrid
        Left = 0
        Top = 30
        Width = 881
        Height = 403
        Selected.Strings = (
          'ORD_ID'#9'13'#9'OC/E'#9'F'
          'VEICNOME'#9'19'#9'Veículo Cobrar'#9'F'
          'REGNOME'#9'18'#9'Região Cobrar'#9'F'
          'ORD_PESO_TOTAL'#9'18'#9'Peso (Kg)'#9'F'
          'ORD_VOLUME'#9'18'#9'Volume (M3)'#9'F'
          'ORD_QTDE_PALLET'#9'13'#9'Qtde Pallet'#9'F'
          'ORD_VALORTOTAL'#9'20'#9'Valor'#9'F'
          'ORD_TPCARGA'#9'1'#9'Tp.Carga'#9'F'
          'ORD_QTDE_UV'#9'10'#9'Qtde.UV'#9'F'
          'CLIFraza'#9'40'#9'Cliente Final'#9'F')
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
        TabOrder = 0
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
      object wwDBComboBox5: TwwDBComboBox
        Left = 396
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
        TabOrder = 1
        UnboundDataType = wwDefault
      end
    end
  end
  object Q_MANIF: TwwQuery
    CachedUpdates = True
    BeforeEdit = Q_MANIFBeforeEdit
    BeforePost = Q_MANIFBeforePost
    AfterPost = Q_MANIFAfterPost
    BeforeDelete = Q_MANIFBeforeDelete
    AfterDelete = Q_MANIFAfterDelete
    OnNewRecord = Q_MANIFNewRecord
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    RequestLive = True
    SQL.Strings = (
      'Select * from MANIFESTO ')
    UpdateObject = UPD_MANIF
    ValidateWithMask = True
    Left = 1087
    Top = 8
    object Q_MANIFMANI_ID: TAutoIncField
      FieldName = 'MANI_ID'
      Origin = 'NBFDADOS.MANIFESTO.MANI_ID'
    end
    object Q_MANIFMANI_TIPOCARGA: TStringField
      FieldName = 'MANI_TIPOCARGA'
      Origin = 'NBFDADOS.MANIFESTO.MANI_TIPOCARGA'
      FixedChar = True
      Size = 1
    end
    object Q_MANIFMANI_QTDEPALLET: TIntegerField
      FieldName = 'MANI_QTDEPALLET'
      Origin = 'NBFDADOS.MANIFESTO.MANI_QTDEPALLET'
    end
    object Q_MANIFMANI_PESO: TFloatField
      FieldName = 'MANI_PESO'
      Origin = 'NBFDADOS.MANIFESTO.MANI_PESO'
      DisplayFormat = '###,###,##0.0000'
      EditFormat = '###,###,##0.0000'
    end
    object Q_MANIFMANI_VOLUME: TFloatField
      FieldName = 'MANI_VOLUME'
      Origin = 'NBFDADOS.MANIFESTO.MANI_VOLUME'
      DisplayFormat = '###,###,##0.000000'
      EditFormat = '###,###,##0.000000'
    end
    object Q_MANIFTRANS_ID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'TRANS_ID'
      Origin = 'NBFDADOS.MANIFESTO.TRANS_ID'
      DisplayFormat = '0.000'
      EditFormat = '0.000'
    end
    object Q_MANIFMOT_ID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'MOT_ID'
      Origin = 'NBFDADOS.MANIFESTO.MOT_ID'
    end
    object Q_MANIFVEIC_ID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'VEIC_ID'
      Origin = 'NBFDADOS.MANIFESTO.VEIC_ID'
    end
    object Q_MANIFMANI_DATA: TDateTimeField
      FieldName = 'MANI_DATA'
      Origin = 'NBFDADOS.MANIFESTO.MANI_DATA'
      EditMask = '!90/90/9999;1;_'
    end
    object Q_MANIFMANI_CENDERECO: TStringField
      FieldName = 'MANI_CENDERECO'
      Origin = 'NBFDADOS.MANIFESTO.MANI_CENDERECO'
      FixedChar = True
      Size = 50
    end
    object Q_MANIFMANI_CENDERECOCOMPL: TStringField
      FieldName = 'MANI_CENDERECOCOMPL'
      Origin = 'NBFDADOS.MANIFESTO.MANI_CENDERECOCOMPL'
      FixedChar = True
    end
    object Q_MANIFMANI_CENDERECOBAIRRO: TStringField
      FieldName = 'MANI_CENDERECOBAIRRO'
      Origin = 'NBFDADOS.MANIFESTO.MANI_CENDERECOBAIRRO'
      FixedChar = True
    end
    object Q_MANIFMANI_CMUNICIPIO: TStringField
      FieldName = 'MANI_CMUNICIPIO'
      Origin = 'NBFDADOS.MANIFESTO.MANI_CMUNICIPIO'
      FixedChar = True
      Size = 40
    end
    object Q_MANIFMANI_CUF_SIGLA: TStringField
      FieldName = 'MANI_CUF_SIGLA'
      Origin = 'NBFDADOS.MANIFESTO.MANI_CUF_SIGLA'
      FixedChar = True
      Size = 2
    end
    object Q_MANIFMANI_CCEP: TStringField
      FieldName = 'MANI_CCEP'
      Origin = 'NBFDADOS.MANIFESTO.MANI_CCEP'
      EditMask = '99999-999;0;_'
      FixedChar = True
      Size = 8
    end
    object Q_MANIFMANI_CTEL1: TStringField
      FieldName = 'MANI_CTEL1'
      Origin = 'NBFDADOS.MANIFESTO.MANI_CTEL1'
      EditMask = '!\(999\)#999-9999;0; '
      FixedChar = True
      Size = 11
    end
    object Q_MANIFMANI_CTEL2: TStringField
      FieldName = 'MANI_CTEL2'
      Origin = 'NBFDADOS.MANIFESTO.MANI_CTEL2'
      EditMask = '!\(999\)#999-9999;0; '
      FixedChar = True
      Size = 11
    end
    object Q_MANIFMANI_CFAX: TStringField
      FieldName = 'MANI_CFAX'
      Origin = 'NBFDADOS.MANIFESTO.MANI_CFAX'
      EditMask = '!\(999\)#999-9999;0; '
      FixedChar = True
      Size = 11
    end
    object Q_MANIFMANI_CEMAIL: TStringField
      FieldName = 'MANI_CEMAIL'
      Origin = 'NBFDADOS.MANIFESTO.MANI_CEMAIL'
      FixedChar = True
      Size = 60
    end
    object Q_MANIFMANI_CCONTATO: TStringField
      FieldName = 'MANI_CCONTATO'
      Origin = 'NBFDADOS.MANIFESTO.MANI_CCONTATO'
      FixedChar = True
      Size = 50
    end
    object Q_MANIFMANI_EENDERECO: TStringField
      FieldName = 'MANI_EENDERECO'
      Origin = 'NBFDADOS.MANIFESTO.MANI_EENDERECO'
      FixedChar = True
      Size = 50
    end
    object Q_MANIFMANI_EENDERECOCOMPL: TStringField
      FieldName = 'MANI_EENDERECOCOMPL'
      Origin = 'NBFDADOS.MANIFESTO.MANI_EENDERECOCOMPL'
      FixedChar = True
    end
    object Q_MANIFMANI_EENDERECOBAIRRO: TStringField
      FieldName = 'MANI_EENDERECOBAIRRO'
      Origin = 'NBFDADOS.MANIFESTO.MANI_EENDERECOBAIRRO'
      FixedChar = True
    end
    object Q_MANIFMANI_EMUNICIPIO: TStringField
      FieldName = 'MANI_EMUNICIPIO'
      Origin = 'NBFDADOS.MANIFESTO.MANI_EMUNICIPIO'
      FixedChar = True
      Size = 40
    end
    object Q_MANIFMANI_EUF_SIGLA: TStringField
      FieldName = 'MANI_EUF_SIGLA'
      Origin = 'NBFDADOS.MANIFESTO.MANI_EUF_SIGLA'
      FixedChar = True
      Size = 2
    end
    object Q_MANIFMANI_ECEP: TStringField
      FieldName = 'MANI_ECEP'
      Origin = 'NBFDADOS.MANIFESTO.MANI_ECEP'
      EditMask = '99999-999;0;_'
      FixedChar = True
      Size = 8
    end
    object Q_MANIFMANI_ETEL1: TStringField
      FieldName = 'MANI_ETEL1'
      Origin = 'NBFDADOS.MANIFESTO.MANI_ETEL1'
      EditMask = '!\(999\)#999-9999;0; '
      FixedChar = True
      Size = 11
    end
    object Q_MANIFMANI_ETEL2: TStringField
      FieldName = 'MANI_ETEL2'
      Origin = 'NBFDADOS.MANIFESTO.MANI_ETEL2'
      EditMask = '!\(999\)#999-9999;0; '
      FixedChar = True
      Size = 11
    end
    object Q_MANIFMANI_EFAX: TStringField
      FieldName = 'MANI_EFAX'
      Origin = 'NBFDADOS.MANIFESTO.MANI_EFAX'
      EditMask = '!\(999\)#999-9999;0; '
      FixedChar = True
      Size = 11
    end
    object Q_MANIFMANI_EEMAIL: TStringField
      FieldName = 'MANI_EEMAIL'
      Origin = 'NBFDADOS.MANIFESTO.MANI_EEMAIL'
      FixedChar = True
      Size = 60
    end
    object Q_MANIFMANI_ECONTATO: TStringField
      FieldName = 'MANI_ECONTATO'
      Origin = 'NBFDADOS.MANIFESTO.MANI_ECONTATO'
      FixedChar = True
      Size = 50
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
      Alignment = taLeftJustify
      FieldName = 'VEIC_ID_FRETE'
      Origin = 'NBFDADOS.MANIFESTO.VEIC_ID_FRETE'
    end
    object Q_MANIFREG_ID: TIntegerField
      Alignment = taLeftJustify
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
    object Q_MANIFCLIN_ID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'CLIN_ID'
      Origin = 'NBFDADOS.MANIFESTO.MANI_ID'
    end
    object Q_MANIFCTT_ID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'CTT_ID'
      Origin = 'NBFDADOS.MANIFESTO.MANI_ID'
    end
    object Q_MANIFVEIC_ID_COBRA: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'VEIC_ID_COBRA'
      Origin = 'NBFDADOS.MANIFESTO.MANI_ID'
    end
    object Q_MANIFREG_ID_COBRA: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'REG_ID_COBRA'
      Origin = 'NBFDADOS.MANIFESTO.MANI_ID'
    end
    object Q_MANIFFRETE_NEGOCIA: TStringField
      FieldName = 'FRETE_NEGOCIA'
      Origin = 'NBFDADOS.MANIFESTO.MANI_ID'
      FixedChar = True
      Size = 1
    end
    object Q_MANIFVLR_NEGOCIA: TFloatField
      FieldName = 'VLR_NEGOCIA'
      Origin = 'NBFDADOS.MANIFESTO.MANI_ID'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_MANIFVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      Origin = 'NBFDADOS.MANIFESTO.MANI_ID'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_MANIFMANI_DTAGENDA: TDateTimeField
      FieldName = 'MANI_DTAGENDA'
      Origin = 'NBFDADOS.MANIFESTO.MANI_DTAGENDA'
      EditMask = '90/90/9999;1;_'
    end
    object Q_MANIFMANI_HORAGENDA: TStringField
      FieldName = 'MANI_HORAGENDA'
      Origin = 'NBFDADOS.MANIFESTO.MANI_HORAGENDA'
      EditMask = '!90:99;0;_'
      FixedChar = True
      Size = 4
    end
    object Q_MANIFMANI_SOLICITANTE: TStringField
      FieldName = 'MANI_SOLICITANTE'
      Origin = 'NBFDADOS.MANIFESTO.MANI_SOLICITANTE'
      FixedChar = True
      Size = 30
    end
    object Q_MANIFMANI_AJUDANTE: TStringField
      FieldName = 'MANI_AJUDANTE'
      Origin = 'NBFDADOS.MANIFESTO.MANI_AJUDANTE'
      FixedChar = True
      Size = 1
    end
    object Q_MANIFCLIF_ID: TIntegerField
      FieldName = 'CLIF_ID'
      Origin = 'NBFDADOS.MANIFESTO.CLIF_ID'
    end
    object Q_MANIFMANI_NF: TStringField
      Alignment = taRightJustify
      DisplayWidth = 30
      FieldName = 'MANI_NF'
      Origin = 'NBFDADOS.MANIFESTO.MANI_NF'
      FixedChar = True
      Size = 30
    end
    object Q_MANIFMANI_DT_TRANSP: TDateTimeField
      FieldName = 'MANI_DT_TRANSP'
      Origin = 'NBFDADOS.MANIFESTO.MANI_DT_TRANSP'
      EditMask = '90/90/9999;1;_'
    end
    object Q_MANIFMANI_OBS: TStringField
      FieldName = 'MANI_OBS'
      Origin = 'NBFDADOS.MANIFESTO.MANI_OBS'
      FixedChar = True
      Size = 60
    end
    object Q_MANIFMANI_MUN_IDC: TIntegerField
      FieldName = 'MANI_MUN_IDC'
      Origin = 'NBFDADOS.MANIFESTO.MANI_MUN_IDC'
    end
    object Q_MANIFMOT_EQUIP: TStringField
      FieldName = 'MOT_EQUIP'
      Origin = 'NBFDADOS.MANIFESTO.MOT_EQUIP'
      FixedChar = True
      Size = 50
    end
    object Q_MANIFTOMADOR: TStringField
      FieldName = 'TOMADOR'
      Origin = 'NBFDADOS.MANIFESTO.TOMADOR'
      FixedChar = True
      Size = 1
    end
    object Q_MANIFPAGA_ADICIONAL: TStringField
      FieldName = 'PAGA_ADICIONAL'
      Origin = 'NBFDADOS.MANIFESTO.PAGA_ADICIONAL'
      FixedChar = True
      Size = 1
    end
    object Q_MANIFVALOR_ADICIONAL: TFloatField
      FieldName = 'VALOR_ADICIONAL'
      Origin = 'NBFDADOS.MANIFESTO.VALOR_ADICIONAL'
      DisplayFormat = '###,###,##0.00'
    end
    object Q_MANIFCLI_EXPEDIDOR: TIntegerField
      FieldName = 'CLI_EXPEDIDOR'
      Origin = 'NBFDADOS.MANIFESTO.CLI_EXPEDIDOR'
    end
    object Q_MANIFCLI_RECEBEDOR: TIntegerField
      FieldName = 'CLI_RECEBEDOR'
      Origin = 'NBFDADOS.MANIFESTO.CLI_RECEBEDOR'
    end
    object Q_MANIFCLI_REMETENTE: TIntegerField
      FieldName = 'CLI_REMETENTE'
      Origin = 'NBFDADOS.MANIFESTO.CLI_REMETENTE'
    end
    object Q_MANIFCLI_REMETENTE_TIPO: TStringField
      FieldName = 'CLI_REMETENTE_TIPO'
      Origin = 'NBFDADOS.MANIFESTO.CLI_REMETENTE_TIPO'
      FixedChar = True
      Size = 1
    end
  end
  object DS_MANIF: TwwDataSource
    DataSet = Q_MANIF
    OnDataChange = DS_MANIFDataChange
    Left = 566
    Top = 208
  end
  object Q_VEIC: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select * from TPVEICULO order by VEIC_ORDEM')
    ValidateWithMask = True
    Left = 14
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
    DataSource = DS_MANIF
    SQL.Strings = (
      'select A.TRANS_ID,A.TRANS_FANTASIA'
      'from TRANSPORTADORA A, TRANSPORTADORA_MOTORISTA B'
      'where'
      ' A.TRANS_ID = B.TRANS_ID and'
      ' A.TRANS_FLAG = '#39'S'#39'  and '
      ' B.VEIC_ID = :VEIC_ID   '
      ' order by TRANS_FANTASIA ')
    ValidateWithMask = True
    Left = 926
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'VEIC_ID'
        ParamType = ptUnknown
      end>
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
      'select MOT_ID,MOT_NOME,TRANS_ID ,MOT_VEIC_PLACA, MOT_EQUIP'
      'from TRANSPORTADORA_MOTORISTA '
      ' order by MOT_NOME')
    ValidateWithMask = True
    Left = 962
    Top = 368
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
    object Q_TRMOTMOT_VEIC_PLACA: TStringField
      FieldName = 'MOT_VEIC_PLACA'
      Origin = 'NBFDADOS.TRANSPORTADORA_MOTORISTA.MOT_VEIC_PLACA'
      FixedChar = True
      Size = 8
    end
    object Q_TRMOTMOT_EQUIP: TStringField
      FieldName = 'MOT_EQUIP'
      Origin = 'NBFDADOS.TRANSPORTADORA_MOTORISTA.MOT_EQUIP'
      FixedChar = True
      Size = 50
    end
  end
  object Q_AUX: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    ValidateWithMask = True
    Left = 958
    Top = 382
  end
  object Q_CLIF: TwwQuery
    AfterOpen = Q_CLIFAfterOpen
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    DataSource = DS_MANIF
    SQL.Strings = (
      'select A.*,B.CLIF_RAZA,B.CLIF_ENDERECO'
      'from Cliente_NBFinal A,ClienteFINAL B'
      'where'
      'CLIN_ID = :CLIN_ID and'
      'B.CLIF_ID = A.CLIF_ID'
      'order by B.CLIF_RAZA'
      ''
      '')
    ValidateWithMask = True
    Left = 962
    Top = 180
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CLIN_ID'
        ParamType = ptUnknown
      end>
    object Q_CLIFCLIF_RAZA: TStringField
      DisplayLabel = 'Razão'
      DisplayWidth = 50
      FieldName = 'CLIF_RAZA'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_RAZA'
      FixedChar = True
      Size = 50
    end
    object Q_CLIFCLIF_ENDERECO: TStringField
      DisplayLabel = 'Endereço'
      DisplayWidth = 50
      FieldName = 'CLIF_ENDERECO'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_ENDERECO'
      FixedChar = True
      Size = 50
    end
    object Q_CLIFNBFINAL_COD_CLIN: TStringField
      DisplayLabel = 'Cod. Cliente'
      DisplayWidth = 10
      FieldName = 'NBFINAL_COD_CLIN'
      Origin = 'NBFDADOS.Cliente_NBFinal.NBFINAL_COD_CLIN'
      FixedChar = True
      Size = 10
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
  end
  object Q_CLIN: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select * from CLIENTENBF'
      'where'
      '(CLIN_CONTRATO <> '#39'I'#39' and CLIN_CONTRATO <> '#39'R'#39') '
      ' order by CLIN_RAZA ')
    ValidateWithMask = True
    Left = 14
    Top = 65534
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
    Left = 14
  end
  object UPD_MANIF: TUpdateSQL
    ModifySQL.Strings = (
      'update MANIFESTO'
      'set'
      '  MANI_TIPOCARGA = :MANI_TIPOCARGA,'
      '  MANI_PESO = :MANI_PESO,'
      '  MANI_QTDEPALLET = :MANI_QTDEPALLET,'
      '  MANI_VOLUME = :MANI_VOLUME,'
      '  MANI_QTDEUV = :MANI_QTDEUV,'
      '  TRANS_ID = :TRANS_ID,'
      '  MOT_ID = :MOT_ID,'
      '  VEIC_ID = :VEIC_ID,'
      '  MANI_DATA = :MANI_DATA,'
      '  MANI_CENDERECO = :MANI_CENDERECO,'
      '  MANI_CENDERECOCOMPL = :MANI_CENDERECOCOMPL,'
      '  MANI_CENDERECOBAIRRO = :MANI_CENDERECOBAIRRO,'
      '  MANI_CMUNICIPIO = :MANI_CMUNICIPIO,'
      '  MANI_CUF_SIGLA = :MANI_CUF_SIGLA,'
      '  MANI_CCEP = :MANI_CCEP,'
      '  MANI_CTEL1 = :MANI_CTEL1,'
      '  MANI_CTEL2 = :MANI_CTEL2,'
      '  MANI_CFAX = :MANI_CFAX,'
      '  MANI_CEMAIL = :MANI_CEMAIL,'
      '  MANI_CCONTATO = :MANI_CCONTATO,'
      '  MANI_EENDERECO = :MANI_EENDERECO,'
      '  MANI_EENDERECOCOMPL = :MANI_EENDERECOCOMPL,'
      '  MANI_EENDERECOBAIRRO = :MANI_EENDERECOBAIRRO,'
      '  MANI_EMUNICIPIO = :MANI_EMUNICIPIO,'
      '  MANI_EUF_SIGLA = :MANI_EUF_SIGLA,'
      '  MANI_ECEP = :MANI_ECEP,'
      '  MANI_ETEL1 = :MANI_ETEL1,'
      '  MANI_ETEL2 = :MANI_ETEL2,'
      '  MANI_EFAX = :MANI_EFAX,'
      '  MANI_EEMAIL = :MANI_EEMAIL,'
      '  MANI_ECONTATO = :MANI_ECONTATO,'
      '  PAR_ID = :PAR_ID,'
      '  CONFIRMA = :CONFIRMA,'
      '  NFI_TRANS = :NFI_TRANS,'
      '  VEIC_ID_FRETE = :VEIC_ID_FRETE,'
      '  REG_ID = :REG_ID,'
      '  MANI_ENT_COL = :MANI_ENT_COL,'
      '  MANI_VFRETEPAG = :MANI_VFRETEPAG,'
      '  CONFIRMA_MANI = :CONFIRMA_MANI,'
      '  CLIN_ID = :CLIN_ID,'
      '  CTT_ID = :CTT_ID,'
      '  VEIC_ID_COBRA = :VEIC_ID_COBRA,'
      '  REG_ID_COBRA = :REG_ID_COBRA,'
      '  FRETE_NEGOCIA = :FRETE_NEGOCIA,'
      '  VLR_NEGOCIA = :VLR_NEGOCIA,'
      '  VLR_TOTAL = :VLR_TOTAL,'
      '  MANI_DTAGENDA = :MANI_DTAGENDA,'
      '  MANI_HORAGENDA = :MANI_HORAGENDA,'
      '  MANI_SOLICITANTE = :MANI_SOLICITANTE,'
      '  MANI_AJUDANTE = :MANI_AJUDANTE,'
      '  MANI_OBS = :MANI_OBS,'
      '  CLIF_ID = :CLIF_ID,'
      '  MANI_NF = :MANI_NF,'
      '  MANI_DT_TRANSP = :MANI_DT_TRANSP,'
      '  MANI_MUN_IDC = :MANI_MUN_IDC,'
      '  MOT_EQUIP = :MOT_EQUIP,'
      '  TOMADOR = :TOMADOR,'
      '  PAGA_ADICIONAL = :PAGA_ADICIONAL,'
      'VALOR_ADICIONAL = :VALOR_ADICIONAL,'
      'CLI_EXPEDIDOR = :CLI_EXPEDIDOR,'
      'CLI_RECEBEDOR = :CLI_RECEBEDOR,'
      'CLI_REMETENTE = :CLI_REMETENTE,'
      'CLI_REMETENTE_TIPO = :CLI_REMETENTE_TIPO'
      'where'
      '  MANI_ID = :OLD_MANI_ID')
    InsertSQL.Strings = (
      'insert into MANIFESTO'
      '  (MANI_TIPOCARGA, MANI_PESO, MANI_QTDEPALLET, MANI_VOLUME, '
      'MANI_QTDEUV, '
      '   TRANS_ID, MOT_ID, VEIC_ID, MANI_DATA, MANI_CENDERECO, '
      'MANI_CENDERECOCOMPL, '
      '   MANI_CENDERECOBAIRRO, MANI_CMUNICIPIO, MANI_CUF_SIGLA, '
      'MANI_CCEP, MANI_CTEL1, '
      '   MANI_CTEL2, MANI_CFAX, MANI_CEMAIL, MANI_CCONTATO, '
      'MANI_EENDERECO, MANI_EENDERECOCOMPL, '
      '   MANI_EENDERECOBAIRRO, MANI_EMUNICIPIO, MANI_EUF_SIGLA, '
      'MANI_ECEP, MANI_ETEL1, '
      '   MANI_ETEL2, MANI_EFAX, MANI_EEMAIL, MANI_ECONTATO, PAR_ID, '
      'CONFIRMA, '
      
        '   NFI_TRANS, VEIC_ID_FRETE, REG_ID, MANI_ENT_COL, MANI_VFRETEPA' +
        'G, '
      'CONFIRMA_MANI, '
      '   CLIN_ID, CTT_ID, VEIC_ID_COBRA, REG_ID_COBRA, FRETE_NEGOCIA, '
      'VLR_NEGOCIA, '
      '   VLR_TOTAL, MANI_DTAGENDA, MANI_HORAGENDA, MANI_SOLICITANTE, '
      'MANI_AJUDANTE, '
      '   MANI_OBS, CLIF_ID, MANI_NF, MANI_DT_TRANSP, MANI_MUN_IDC, '
      'MOT_EQUIP, TOMADOR, PAGA_ADICIONAL, VALOR_ADICIONAL, '
      'CLI_EXPEDIDOR, CLI_RECEBEDOR, CLI_REMETENTE, CLI_REMETENTE_TIPO)'
      'values'
      '  (:MANI_TIPOCARGA, :MANI_PESO, :MANI_QTDEPALLET, :MANI_VOLUME, '
      ':MANI_QTDEUV, '
      '   :TRANS_ID, :MOT_ID, :VEIC_ID, :MANI_DATA, :MANI_CENDERECO, '
      ':MANI_CENDERECOCOMPL, '
      '   :MANI_CENDERECOBAIRRO, :MANI_CMUNICIPIO, :MANI_CUF_SIGLA, '
      ':MANI_CCEP, '
      
        '   :MANI_CTEL1, :MANI_CTEL2, :MANI_CFAX, :MANI_CEMAIL, :MANI_CCO' +
        'NTATO, '
      '   :MANI_EENDERECO, :MANI_EENDERECOCOMPL, '
      ':MANI_EENDERECOBAIRRO, :MANI_EMUNICIPIO, '
      
        '   :MANI_EUF_SIGLA, :MANI_ECEP, :MANI_ETEL1, :MANI_ETEL2, :MANI_' +
        'EFAX, '
      ':MANI_EEMAIL, '
      
        '   :MANI_ECONTATO, :PAR_ID, :CONFIRMA, :NFI_TRANS, :VEIC_ID_FRET' +
        'E, '
      ':REG_ID, '
      
        '   :MANI_ENT_COL, :MANI_VFRETEPAG, :CONFIRMA_MANI, :CLIN_ID, :CT' +
        'T_ID, '
      ':VEIC_ID_COBRA, '
      '   :REG_ID_COBRA, :FRETE_NEGOCIA, :VLR_NEGOCIA, :VLR_TOTAL, '
      ':MANI_DTAGENDA, '
      
        '   :MANI_HORAGENDA, :MANI_SOLICITANTE, :MANI_AJUDANTE, :MANI_OBS' +
        ', '
      ':CLIF_ID, '
      
        '   :MANI_NF, :MANI_DT_TRANSP, :MANI_MUN_IDC, :MOT_EQUIP, :TOMADO' +
        'R, '
      
        ':PAGA_ADICIONAL, :VALOR_ADICIONAL, :CLI_EXPEDIDOR, :CLI_RECEBEDO' +
        'R, '
      ':CLI_REMETENTE, :CLI_REMETENTE_TIPO )')
    DeleteSQL.Strings = (
      'delete from MANIFESTO'
      'where'
      '  MANI_ID = :OLD_MANI_ID')
    Left = 944
    Top = 19
  end
  object Q_UF1: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select *  from UF order by UF_NOME'
      ''
      '')
    ValidateWithMask = True
    Left = 14
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
    Left = 14
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
  object Q_VEIC2: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select * from TPVEICULO order by VEIC_ORDEM')
    ValidateWithMask = True
    Left = 14
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
    DataSource = DS_VEIC2
    SQL.Strings = (
      'select A.*,B.REG_NOME from FRETE A,REGIAO B'
      'where VEIC_ID = :VEIC_ID '
      'and '
      'A.REG_ID = B.REG_ID  order by REG_NOME'
      ''
      '')
    ValidateWithMask = True
    Left = 14
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
    Left = 918
    Top = 192
  end
  object Q_OCE: TwwQuery
    BeforePost = Q_OCEBeforePost
    AfterPost = Q_OCEAfterPost
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    DataSource = DS_MANIF
    SQL.Strings = (
      'Select '
      '*'
      ' from ORDEM_COLETA_ENTREGA'
      'where MANI_ID = :MANI_ID'
      '')
    ControlType.Strings = (
      'ORD_TPCARGA;CustomEdit;wwDBComboBox5')
    ValidateWithMask = True
    Left = 866
    Top = 160
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'MANI_ID'
        ParamType = ptUnknown
      end>
    object Q_OCEORD_ID: TAutoIncField
      Alignment = taCenter
      DisplayLabel = 'OC/E'
      DisplayWidth = 13
      FieldName = 'ORD_ID'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_ID'
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
      LookupDataSet = Q_REG3
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
      DisplayFormat = '###,###,##0.0000'
      EditFormat = '###,###,##0.0000'
    end
    object Q_OCEORD_VOLUME: TFloatField
      DisplayLabel = 'Volume (M3)'
      DisplayWidth = 18
      FieldName = 'ORD_VOLUME'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_VOLUME'
      DisplayFormat = '###,###,##0.000000'
      EditFormat = '###,###,##0.000000'
    end
    object Q_OCEORD_QTDE_PALLET: TFloatField
      DisplayLabel = 'Qtde Pallet'
      DisplayWidth = 13
      FieldName = 'ORD_QTDE_PALLET'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_QTDE_PALLET'
    end
    object Q_OCEORD_VALORTOTAL: TFloatField
      DisplayLabel = 'Valor'
      DisplayWidth = 20
      FieldName = 'ORD_VALORTOTAL'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_VALORTOTAL'
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
      DisplayFormat = '0.000'
      EditFormat = '0.000'
    end
    object Q_OCECLIFraza: TStringField
      DisplayLabel = 'Cliente Final'
      DisplayWidth = 40
      FieldKind = fkLookup
      FieldName = 'CLIFraza'
      LookupDataSet = Q_CLIF3
      LookupKeyFields = 'CLIF_ID'
      LookupResultField = 'CLIF_RAZA'
      KeyFields = 'CLIF_ID'
      Size = 40
      Lookup = True
    end
    object Q_OCEOS_ID: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'OS'
      DisplayWidth = 10
      FieldName = 'OS_ID'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.OS_ID'
      Visible = False
    end
    object Q_OCEVEIC_ID_RECEB: TIntegerField
      Alignment = taLeftJustify
      DisplayWidth = 10
      FieldName = 'VEIC_ID_RECEB'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.VEIC_ID_RECEB'
      Visible = False
    end
    object Q_OCEREG_ID: TIntegerField
      Alignment = taLeftJustify
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
      Alignment = taLeftJustify
      FieldName = 'TRANS_ID'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.TRANS_ID'
      Visible = False
    end
    object Q_OCEVEIC_ID: TIntegerField
      Alignment = taLeftJustify
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
      Alignment = taLeftJustify
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
      Alignment = taLeftJustify
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
    object Q_OCEORD_VLR_FRETE: TFloatField
      FieldName = 'ORD_VLR_FRETE'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_VLR_FRETE'
    end
    object Q_OCEORD_VLR_SECCAT: TFloatField
      FieldName = 'ORD_VLR_SECCAT'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_VLR_SECCAT'
    end
    object Q_OCEORD_VLR_DESPACHO: TFloatField
      FieldName = 'ORD_VLR_DESPACHO'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_VLR_DESPACHO'
    end
    object Q_OCEORD_VLR_PEDAGIO: TFloatField
      FieldName = 'ORD_VLR_PEDAGIO'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_VLR_PEDAGIO'
    end
    object Q_OCEORD_VLR_OUTROS: TFloatField
      FieldName = 'ORD_VLR_OUTROS'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_VLR_OUTROS'
    end
    object Q_OCEORD_CONH: TStringField
      FieldName = 'ORD_CONH'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_CONH'
      FixedChar = True
      Size = 10
    end
    object Q_OCEORD_ALIQ: TFloatField
      FieldName = 'ORD_ALIQ'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_ALIQ'
    end
    object Q_OCEORD_VLR_ICMS: TFloatField
      FieldName = 'ORD_VLR_ICMS'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_VLR_ICMS'
    end
  end
  object DS_OCE: TwwDataSource
    DataSet = Q_OCE
    OnDataChange = DS_OCEDataChange
    Left = 1055
    Top = 144
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
      '  ORD_ENT_CONTATO = :ORD_ENT_CONTATO'
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
      '   ORD_ENT_CONTATO)'
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
      '   :ORD_ENT_EMAIL, :ORD_ENT_CONTATO)')
    DeleteSQL.Strings = (
      'delete from ORDEM_COLETA_ENTREGA'
      'where'
      '  ORD_ID = :OLD_ORD_ID')
    Left = 942
    Top = 120
  end
  object Q_VEIC3: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select * from TPVEICULO order by VEIC_ORDEM')
    ValidateWithMask = True
    Left = 822
    Top = 352
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
    Left = 1120
    Top = 160
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
    Left = 1022
    Top = 304
  end
  object Q_MUNI: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select * from MUNICIPIO order by MUN_NOME')
    ValidateWithMask = True
    Left = 971
    Top = 240
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
    Left = 1014
    Top = 264
  end
  object Q_MUNI2: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select * from MUNICIPIO order by MUN_NOME')
    ValidateWithMask = True
    Left = 1070
    Top = 296
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
    Left = 1030
    Top = 376
  end
  object Q_CTT: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    DataSource = DS_MANIF
    SQL.Strings = (
      'Select CTT_ID,CTT_NOME,TOS_ID,CLIN_ID,PAR_ID,'
      'CTT_TERCEIRO from CONTRATO  where CTT_Id = :CTT_ID')
    ValidateWithMask = True
    Left = 1016
    Top = 368
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
      DisplayWidth = 1
      FieldName = 'CTT_TERCEIRO'
      Origin = 'NBFDADOS.CONTRATO.CTT_TERCEIRO'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_CTTPAR_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'PAR_ID'
      Origin = 'NBFDADOS.CONTRATO.PAR_ID'
      Visible = False
    end
  end
  object DS_CTT: TwwDataSource
    DataSet = Q_CTT
    Left = 909
    Top = 288
  end
  object Q_CLINctt: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select CLIN_ID,CLIN_RAZA from CLIENTENBF where'
      'CLIN_CONTRATO = '#39'S'#39
      'order by CLIN_RAZA ')
    ValidateWithMask = True
    Left = 981
    Top = 428
    object Q_CLINcttCLIN_ID: TAutoIncField
      FieldName = 'CLIN_ID'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_ID'
    end
    object Q_CLINcttCLIN_RAZA: TStringField
      FieldName = 'CLIN_RAZA'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_RAZA'
      FixedChar = True
      Size = 50
    end
  end
  object DS_CLINctt: TwwDataSource
    DataSet = Q_CLINctt
    Left = 957
    Top = 400
  end
  object Q_REG3: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'select * from REGIAO'
      '')
    ValidateWithMask = True
    Left = 893
    Top = 72
    object Q_REG3REG_ID: TAutoIncField
      FieldName = 'REG_ID'
      Origin = 'NBFDADOS.REGIAO.REG_ID'
    end
    object Q_REG3REG_NOME: TStringField
      FieldName = 'REG_NOME'
      Origin = 'NBFDADOS.REGIAO.REG_NOME'
      FixedChar = True
      Size = 40
    end
  end
  object Q_PAR: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    DataSource = DS_CTT
    SQL.Strings = (
      'Select *  from PARAMETRO where PAR_ID =:PAR_ID'
      ''
      '')
    ValidateWithMask = True
    Left = 1076
    Top = 252
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
    object Q_PARCO_SER_ID: TIntegerField
      FieldName = 'CO_SER_ID'
      Origin = 'NBFDADOS.PARAMETRO.CO_SER_ID'
    end
    object Q_PAREN_SER_ID: TIntegerField
      FieldName = 'EN_SER_ID'
      Origin = 'NBFDADOS.PARAMETRO.EN_SER_ID'
    end
  end
  object DS_PAR: TwwDataSource
    DataSet = Q_PAR
    Left = 824
    Top = 288
  end
  object Q_OS: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'select * from OS '
      'order by OS_ID')
    ValidateWithMask = True
    Left = 951
    Top = 224
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
    object Q_OSOS_GEROU: TStringField
      FieldName = 'OS_GEROU'
      Origin = 'NBFDADOS.OS.OS_GEROU'
      FixedChar = True
      Size = 1
    end
  end
  object STP_SERVESPEC: TwwStoredProc
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    StoredProcName = 'dbo.STP_SERV_ESPEC'
    ValidateWithMask = True
    Left = 704
    Top = 476
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
  object STP_TPDO_TPOS_OS: TwwStoredProc
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    StoredProcName = 'dbo.STP_TPDOC_TPOS_OS'
    ValidateWithMask = True
    Left = 1048
    Top = 392
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
  object DS_VEIC: TwwDataSource
    DataSet = Q_VEIC
    OnDataChange = DS_MANIFDataChange
    Left = 971
    Top = 296
  end
  object Q_CLIF2: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select * from CLIENTEFINAL order by CLIF_RAZA ')
    ValidateWithMask = True
    Left = 976
    Top = 196
    object Q_CLIF2CLIF_ID: TAutoIncField
      FieldName = 'CLIF_ID'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_ID'
    end
    object Q_CLIF2CLIF_PESSOA: TStringField
      FieldName = 'CLIF_PESSOA'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_PESSOA'
      FixedChar = True
      Size = 1
    end
    object Q_CLIF2CLIF_RAZA: TStringField
      FieldName = 'CLIF_RAZA'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_RAZA'
      FixedChar = True
      Size = 50
    end
    object Q_CLIF2CLIF_NOME: TStringField
      FieldName = 'CLIF_NOME'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_NOME'
      FixedChar = True
      Size = 30
    end
    object Q_CLIF2CLIF_CGCCPF: TStringField
      FieldName = 'CLIF_CGCCPF'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_CGCCPF'
      FixedChar = True
      Size = 15
    end
    object Q_CLIF2CLIF_INSCRG: TStringField
      FieldName = 'CLIF_INSCRG'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_INSCRG'
      FixedChar = True
      Size = 15
    end
    object Q_CLIF2CLIF_ENDERECO: TStringField
      FieldName = 'CLIF_ENDERECO'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_ENDERECO'
      FixedChar = True
      Size = 50
    end
    object Q_CLIF2CLIF_ENDERECO_COMPL: TStringField
      FieldName = 'CLIF_ENDERECO_COMPL'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_ENDERECO_COMPL'
      FixedChar = True
    end
    object Q_CLIF2CLIF_ENDERECO_BAIRRO: TStringField
      FieldName = 'CLIF_ENDERECO_BAIRRO'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_ENDERECO_BAIRRO'
      FixedChar = True
      Size = 40
    end
    object Q_CLIF2CLIF_MUNICIPIO: TStringField
      FieldName = 'CLIF_MUNICIPIO'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_MUNICIPIO'
      FixedChar = True
      Size = 40
    end
    object Q_CLIF2CLIF_MUNICIPIO2: TStringField
      FieldName = 'CLIF_MUNICIPIO2'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_MUNICIPIO2'
      FixedChar = True
      Size = 40
    end
    object Q_CLIF2UF_SIGLA: TStringField
      FieldName = 'UF_SIGLA'
      Origin = 'NBFDADOS.CLIENTEFINAL.UF_SIGLA'
      FixedChar = True
      Size = 2
    end
    object Q_CLIF2CLIF_CEP: TStringField
      FieldName = 'CLIF_CEP'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_CEP'
      FixedChar = True
      Size = 8
    end
    object Q_CLIF2CLIF_TEL1: TStringField
      FieldName = 'CLIF_TEL1'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_TEL1'
      FixedChar = True
      Size = 11
    end
    object Q_CLIF2CLIF_TEL2: TStringField
      FieldName = 'CLIF_TEL2'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_TEL2'
      FixedChar = True
      Size = 11
    end
    object Q_CLIF2CLIF_FAX: TStringField
      FieldName = 'CLIF_FAX'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_FAX'
      FixedChar = True
      Size = 11
    end
    object Q_CLIF2CLIF_EMAIL: TStringField
      FieldName = 'CLIF_EMAIL'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_EMAIL'
      FixedChar = True
      Size = 60
    end
    object Q_CLIF2CLIF_CONTATO: TStringField
      FieldName = 'CLIF_CONTATO'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_CONTATO'
      FixedChar = True
      Size = 50
    end
    object Q_CLIF2MUN_ID: TIntegerField
      FieldName = 'MUN_ID'
      Origin = 'NBFDADOS.CLIENTEFINAL.MUN_ID'
    end
    object Q_CLIF2CLIF_CARGAPALLET: TStringField
      FieldName = 'CLIF_CARGAPALLET'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_CARGAPALLET'
      FixedChar = True
      Size = 1
    end
    object Q_CLIF2CLIE_ENDERECO: TStringField
      FieldName = 'CLIE_ENDERECO'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIE_ENDERECO'
      FixedChar = True
      Size = 50
    end
    object Q_CLIF2CLIE_ENDERECO_COMPL: TStringField
      FieldName = 'CLIE_ENDERECO_COMPL'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIE_ENDERECO_COMPL'
      FixedChar = True
    end
    object Q_CLIF2CLIE_ENDERECO_BAIRRO: TStringField
      FieldName = 'CLIE_ENDERECO_BAIRRO'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIE_ENDERECO_BAIRRO'
      FixedChar = True
      Size = 40
    end
    object Q_CLIF2CLIE_MUNICIPIO: TStringField
      FieldName = 'CLIE_MUNICIPIO'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIE_MUNICIPIO'
      FixedChar = True
      Size = 40
    end
    object Q_CLIF2CLIE_MUN_ID: TIntegerField
      FieldName = 'CLIE_MUN_ID'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIE_MUN_ID'
    end
    object Q_CLIF2CLIE_UF_SIGLA: TStringField
      FieldName = 'CLIE_UF_SIGLA'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIE_UF_SIGLA'
      FixedChar = True
      Size = 2
    end
    object Q_CLIF2CLIE_CEP: TStringField
      FieldName = 'CLIE_CEP'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIE_CEP'
      FixedChar = True
      Size = 8
    end
  end
  object Q_CLIF3: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select CLIF_ID,CLIF_RAZA  from CLIENTEFINAL order by CLIF_RAZA ')
    ValidateWithMask = True
    Left = 1103
    Top = 481
    object Q_CLIF3CLIF_ID: TAutoIncField
      FieldName = 'CLIF_ID'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_ID'
    end
    object Q_CLIF3CLIF_RAZA: TStringField
      FieldName = 'CLIF_RAZA'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_RAZA'
      FixedChar = True
      Size = 50
    end
  end
  object Q_COLETANF: TwwQuery
    CachedUpdates = True
    BeforeEdit = Q_COLETANFBeforeEdit
    BeforePost = Q_COLETANFBeforePost
    AfterPost = Q_COLETANFAfterPost
    AfterDelete = Q_COLETANFAfterDelete
    OnNewRecord = Q_COLETANFNewRecord
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    DataSource = DS_MANIF
    RequestLive = True
    SQL.Strings = (
      'select * from coleta_NF'
      'where MANI_ID = :MANI_ID')
    UpdateObject = UPD_COLETANF
    ControlType.Strings = (
      'CLIF_ID;CustomEdit;DBLC_INF_PROD'
      'clifRAZA;CustomEdit;DBLC_INF_PROD;F'
      'DESCRICAO;CustomEdit;cboProdutoColeta;F')
    ValidateWithMask = True
    Left = 282
    Top = 240
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'MANI_ID'
        ParamType = ptUnknown
      end>
    object Q_COLETANFCNF_NF: TStringField
      DisplayLabel = 'Nº NF'#39's'
      DisplayWidth = 10
      FieldName = 'CNF_NF'
      Origin = 'NBFDADOS.coleta_NF.CNF_NF'
      FixedChar = True
      Size = 30
    end
    object Q_COLETANFEMISSAO: TDateTimeField
      DisplayLabel = 'Emissão'
      DisplayWidth = 10
      FieldName = 'EMISSAO'
      Origin = 'NBFDADOS.COLETA_NF.EMISSAO'
    end
    object Q_COLETANFSERIE: TStringField
      DisplayLabel = 'Serie'
      DisplayWidth = 3
      FieldName = 'SERIE'
      Origin = 'NBFDADOS.COLETA_NF.SERIE'
      FixedChar = True
      Size = 3
    end
    object Q_COLETANFCNF_UV: TFloatField
      DisplayLabel = 'Qtde UV'
      DisplayWidth = 8
      FieldName = 'CNF_UV'
      Origin = 'NBFDADOS.coleta_NF.CNF_UV'
      DisplayFormat = '0.000'
      EditFormat = '0.000'
    end
    object Q_COLETANFCNF_PESO: TFloatField
      DisplayLabel = 'Peso'
      DisplayWidth = 10
      FieldName = 'CNF_PESO'
      Origin = 'NBFDADOS.coleta_NF.CNF_PESO'
      DisplayFormat = '###,###,##0.0000'
      EditFormat = '###,###,##0.0000'
    end
    object Q_COLETANFCNF_PALLETS: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Pallets'
      DisplayWidth = 5
      FieldName = 'CNF_PALLETS'
      Origin = 'NBFDADOS.coleta_NF.CNF_PALLETS'
    end
    object Q_COLETANFCNF_VALOR: TFloatField
      DisplayLabel = 'Valor'
      DisplayWidth = 10
      FieldName = 'CNF_VALOR'
      Origin = 'NBFDADOS.coleta_NF.CNF_VALOR'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_COLETANFVOLUME: TFloatField
      DisplayWidth = 10
      FieldName = 'VOLUME'
      Origin = 'NBFDADOS.COLETA_NF.VOLUME'
    end
    object Q_COLETANFclifRAZA: TStringField
      DisplayLabel = 'Cliente Final'
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'clifRAZA'
      LookupDataSet = Q_CLIF
      LookupKeyFields = 'CLIF_ID'
      LookupResultField = 'CLIF_RAZA'
      KeyFields = 'CLIF_ID'
      Size = 50
      Lookup = True
    end
    object Q_COLETANFCFOP: TStringField
      DisplayWidth = 4
      FieldName = 'CFOP'
      Origin = 'NBFDADOS.COLETA_NF.CFOP'
      Required = True
      FixedChar = True
      Size = 4
    end
    object Q_COLETANFDESCRICAO: TStringField
      DisplayLabel = 'Produto'
      DisplayWidth = 50
      FieldName = 'DESCRICAO'
      Origin = 'NBFDADOS.COLETA_NF.DESCRICAO'
      FixedChar = True
      Size = 200
    end
    object Q_COLETANFNUMEROVIAGEM: TStringField
      DisplayLabel = 'N° Viagem'
      DisplayWidth = 20
      FieldName = 'NUMEROVIAGEM'
      Origin = 'NBFDADOS.COLETA_NF.NUMEROVIAGEM'
      FixedChar = True
      Size = 255
    end
    object Q_COLETANFNFE: TStringField
      DisplayLabel = 'NFe Chave'
      DisplayWidth = 50
      FieldName = 'NFE'
      Origin = 'NBFDADOS.COLETA_NF.NFE'
      FixedChar = True
      Size = 50
    end
    object Q_COLETANFCNF_QTDENF: TIntegerField
      DisplayWidth = 10
      FieldName = 'CNF_QTDENF'
      Origin = 'NBFDADOS.COLETA_NF.CNF_QTDENF'
      Visible = False
    end
    object Q_COLETANFCLIF_ID: TIntegerField
      DisplayLabel = 'Cliente Final'
      DisplayWidth = 10
      FieldName = 'CLIF_ID'
      Origin = 'NBFDADOS.coleta_NF.CLIF_ID'
      Visible = False
    end
    object Q_COLETANFCNF_ID: TAutoIncField
      FieldName = 'CNF_ID'
      Origin = 'NBFDADOS.coleta_NF.CNF_ID'
      Visible = False
    end
    object Q_COLETANFMANI_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'MANI_ID'
      Origin = 'NBFDADOS.coleta_NF.MANI_ID'
      Visible = False
    end
    object Q_COLETANFCODIGO: TStringField
      DisplayWidth = 50
      FieldName = 'CODIGO'
      Origin = 'NBFDADOS.COLETA_NF.CODIGO'
      Visible = False
      FixedChar = True
      Size = 50
    end
  end
  object DS_COLETANF: TwwDataSource
    DataSet = Q_COLETANF
    Left = 906
    Top = 296
  end
  object UPD_COLETANF: TUpdateSQL
    ModifySQL.Strings = (
      'update coleta_NF'
      'set'
      '  MANI_ID = :MANI_ID,'
      '  CNF_NF = :CNF_NF,'
      '  CNF_UV = :CNF_UV,'
      '  CNF_PESO = :CNF_PESO,'
      '  CNF_PALLETS = :CNF_PALLETS,'
      '  CNF_VALOR = :CNF_VALOR,'
      '  CLIF_ID = :CLIF_ID,'
      '  SERIE = :SERIE,'
      '  EMISSAO = :EMISSAO,'
      '  CFOP = :CFOP,'
      '  CNF_QTDENF = :CNF_QTDENF,'
      '  CODIGO = :CODIGO,'
      '  DESCRICAO = :DESCRICAO,'
      '  VOLUME = :VOLUME,'
      ' NUMEROVIAGEM = :NUMEROVIAGEM,'
      ' NFE = :NFE'
      'where'
      '  CNF_ID = :OLD_CNF_ID')
    InsertSQL.Strings = (
      'insert into coleta_NF'
      
        '  (MANI_ID, CNF_NF, CNF_UV, CNF_PESO, CNF_PALLETS, CNF_VALOR, CL' +
        'IF_ID, '
      'SERIE, EMISSAO, CFOP, CNF_QTDENF, CODIGO, DESCRICAO, VOLUME, '
      'NUMEROVIAGEM, NFE)'
      'values'
      
        '  (:MANI_ID, :CNF_NF, :CNF_UV, :CNF_PESO, :CNF_PALLETS, :CNF_VAL' +
        'OR, '
      
        ':CLIF_ID, :SERIE, :EMISSAO, :CFOP, :CNF_QTDENF, :CODIGO, :DESCRI' +
        'CAO, '
      ':VOLUME, :NUMEROVIAGEM, :NFE)')
    DeleteSQL.Strings = (
      'delete from coleta_NF'
      'where'
      '  CNF_ID = :OLD_CNF_ID')
    Left = 162
    Top = 192
  end
  object DS_CLIF: TwwDataSource
    DataSet = Q_CLIF
    Left = 978
    Top = 304
  end
  object STP_OCE: TwwStoredProc
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    StoredProcName = 'dbo.STP_OCE2'
    ValidateWithMask = True
    Left = 172
    Top = 303
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
      end
      item
        DataType = ftInteger
        Name = '@REMETENTE'
        ParamType = ptInput
      end>
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
      ' end from MANIFESTO where MANI_ENT_COL = '#39'C'#39)
    ValidateWithMask = True
    Left = 918
    Top = 423
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
    Left = 983
    Top = 330
  end
  object Q_AUX2: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    ValidateWithMask = True
    Left = 1050
    Top = 78
  end
  object qrAuxClin: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'SELECT CLIN_UTIL_COD FROM CLIENTENBF'
      'WHERE CLIN_ID = :CLIN_ID')
    ValidateWithMask = True
    Left = 910
    Top = 366
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CLIN_ID'
        ParamType = ptUnknown
      end>
    object qrAuxClinCLIN_UTIL_COD: TStringField
      FieldName = 'CLIN_UTIL_COD'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_UTIL_COD'
      FixedChar = True
      Size = 1
    end
  end
  object qrAuxRateio: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    ValidateWithMask = True
    Left = 1014
    Top = 14
  end
  object STP_ADD_OS: TwwStoredProc
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    StoredProcName = 'dbo.ADD_OD;1'
    ValidateWithMask = True
    Left = 1072
    Top = 388
    ParamData = <
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
        DataType = ftDateTime
        Name = '@DATA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@OS_GEROU'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@TP_CARGA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@OS_FATURADA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@OS_ID'
        ParamType = ptOutput
      end>
  end
  object qrProdColeta: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM TP_PROD_COLETA ORDER BY DESCRICAO')
    Left = 652
    Top = 272
    object qrProdColetaDESCRICAO: TStringField
      DisplayLabel = 'Produto'
      DisplayWidth = 100
      FieldName = 'DESCRICAO'
      Size = 200
    end
    object qrProdColetaCODIGO: TStringField
      DisplayWidth = 50
      FieldName = 'CODIGO'
      Visible = False
      Size = 50
    end
  end
  object qrAux: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    Left = 944
    Top = 496
  end
  object STP_GERA_CONHECIMENTO_COMPLEMENTAR: TADOStoredProc
    Connection = FMenu.ADOConnection
    ProcedureName = 'GERA_CONHECIMENTO_COMPLEMENTAR;1'
    Parameters = <
      item
        Name = '@ORD_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@FRETE'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@PEDAGIO'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@TX_ENTREGA'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@DESPACHO'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@SEGURO'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@ALIQ_ICMS'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@VALOR_ICMS'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@TOTAL'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@BASE_ICMS'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end>
    Left = 901
    Top = 181
  end
  object qrPgtoFrete: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    SQL.Strings = (
      'select top 1 * from PGTO_FRETE')
    Left = 772
    Top = 98
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
  object Q_REM: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select * from clientenbf where'
      '(CLIN_CONTRATO <> '#39'I'#39' and CLIN_CONTRATO = '#39'R'#39') '
      'order by CLIN_RAZA '
      '')
    ValidateWithMask = True
    Left = 690
    Top = 70
    object Q_REMCLIN_ID: TAutoIncField
      FieldName = 'CLIN_ID'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_ID'
    end
    object Q_REMCLIN_PESSOA: TStringField
      FieldName = 'CLIN_PESSOA'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_PESSOA'
      FixedChar = True
      Size = 1
    end
    object Q_REMCLIN_RAZA: TStringField
      FieldName = 'CLIN_RAZA'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_RAZA'
      FixedChar = True
      Size = 50
    end
    object Q_REMCLIN_NOME: TStringField
      FieldName = 'CLIN_NOME'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_NOME'
      FixedChar = True
      Size = 30
    end
    object Q_REMCLIN_CGCCPF: TStringField
      FieldName = 'CLIN_CGCCPF'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_CGCCPF'
      FixedChar = True
      Size = 15
    end
    object Q_REMCLIN_INSCRG: TStringField
      FieldName = 'CLIN_INSCRG'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_INSCRG'
      FixedChar = True
      Size = 15
    end
    object Q_REMCLIN_ENDERECO: TStringField
      FieldName = 'CLIN_ENDERECO'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_ENDERECO'
      FixedChar = True
      Size = 50
    end
    object Q_REMCLIN_ENDERECO_COMPL: TStringField
      FieldName = 'CLIN_ENDERECO_COMPL'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_ENDERECO_COMPL'
      FixedChar = True
      Size = 35
    end
    object Q_REMCLIN_ENDERECO_BAIRRO: TStringField
      FieldName = 'CLIN_ENDERECO_BAIRRO'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_ENDERECO_BAIRRO'
      FixedChar = True
      Size = 40
    end
    object Q_REMCLIN_MUNICIPIO: TStringField
      FieldName = 'CLIN_MUNICIPIO'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_MUNICIPIO'
      FixedChar = True
      Size = 40
    end
    object Q_REMUF_SIGLA: TStringField
      FieldName = 'UF_SIGLA'
      Origin = 'NBFDADOS.CLIENTENBF.UF_SIGLA'
      FixedChar = True
      Size = 2
    end
    object Q_REMCLIN_CEP: TStringField
      FieldName = 'CLIN_CEP'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_CEP'
      FixedChar = True
      Size = 8
    end
    object Q_REMCLIN_TEL1: TStringField
      FieldName = 'CLIN_TEL1'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_TEL1'
      FixedChar = True
      Size = 11
    end
    object Q_REMCLIN_TEL2: TStringField
      FieldName = 'CLIN_TEL2'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_TEL2'
      FixedChar = True
      Size = 11
    end
    object Q_REMCLIN_FAX: TStringField
      FieldName = 'CLIN_FAX'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_FAX'
      FixedChar = True
      Size = 11
    end
    object Q_REMCLIN_EMAIL: TStringField
      FieldName = 'CLIN_EMAIL'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_EMAIL'
      FixedChar = True
      Size = 60
    end
    object Q_REMCON_CODI: TStringField
      FieldName = 'CON_CODI'
      Origin = 'NBFDADOS.CLIENTENBF.CON_CODI'
      FixedChar = True
      Size = 6
    end
    object Q_REMCLIN_CONTRATO: TStringField
      FieldName = 'CLIN_CONTRATO'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_CONTRATO'
      FixedChar = True
      Size = 1
    end
    object Q_REMCLIN_UTIL_COD: TStringField
      FieldName = 'CLIN_UTIL_COD'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_UTIL_COD'
      FixedChar = True
      Size = 1
    end
    object Q_REMMUN_ID: TIntegerField
      FieldName = 'MUN_ID'
      Origin = 'NBFDADOS.CLIENTENBF.MUN_ID'
    end
    object Q_REMCLIN_WEB: TStringField
      FieldName = 'CLIN_WEB'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_WEB'
      FixedChar = True
      Size = 60
    end
    object Q_REMCLIN_ENDC: TStringField
      FieldName = 'CLIN_ENDC'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_ENDC'
      FixedChar = True
      Size = 50
    end
    object Q_REMCLIN_END_COMPLC: TStringField
      FieldName = 'CLIN_END_COMPLC'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_END_COMPLC'
      FixedChar = True
      Size = 35
    end
    object Q_REMCLIN_END_BAIRC: TStringField
      FieldName = 'CLIN_END_BAIRC'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_END_BAIRC'
      FixedChar = True
      Size = 40
    end
    object Q_REMCLIN_MUNICC: TStringField
      FieldName = 'CLIN_MUNICC'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_MUNICC'
      FixedChar = True
      Size = 40
    end
    object Q_REMUF_SIGLAC: TStringField
      FieldName = 'UF_SIGLAC'
      Origin = 'NBFDADOS.CLIENTENBF.UF_SIGLAC'
      FixedChar = True
      Size = 2
    end
    object Q_REMCLIN_CEPC: TStringField
      FieldName = 'CLIN_CEPC'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_CEPC'
      FixedChar = True
      Size = 8
    end
    object Q_REMCLIN_TELC: TStringField
      FieldName = 'CLIN_TELC'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_TELC'
      FixedChar = True
      Size = 11
    end
    object Q_REMCLIN_FAXC: TStringField
      FieldName = 'CLIN_FAXC'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_FAXC'
      FixedChar = True
      Size = 11
    end
    object Q_REMCLIN_EMAILC: TStringField
      FieldName = 'CLIN_EMAILC'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_EMAILC'
      FixedChar = True
      Size = 60
    end
    object Q_REMMUN_IDC: TIntegerField
      FieldName = 'MUN_IDC'
      Origin = 'NBFDADOS.CLIENTENBF.MUN_IDC'
    end
    object Q_REMCLIN_TIPOSALDO: TStringField
      FieldName = 'CLIN_TIPOSALDO'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_TIPOSALDO'
      FixedChar = True
      Size = 1
    end
    object Q_REMCLIN_VLRSALDO: TFloatField
      FieldName = 'CLIN_VLRSALDO'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_VLRSALDO'
    end
    object Q_REMCLIN_TPMERC: TStringField
      FieldName = 'CLIN_TPMERC'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_TPMERC'
      FixedChar = True
      Size = 50
    end
    object Q_REMCLIN_LOTE: TStringField
      FieldName = 'CLIN_LOTE'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_LOTE'
      FixedChar = True
      Size = 1
    end
    object Q_REMCLIN_ISS: TFloatField
      FieldName = 'CLIN_ISS'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_ISS'
    end
    object Q_REMCLIN_DESCONTO: TFloatField
      FieldName = 'CLIN_DESCONTO'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_DESCONTO'
    end
    object Q_REMRemanejaSN: TStringField
      FieldName = 'RemanejaSN'
      Origin = 'NBFDADOS.CLIENTENBF.RemanejaSN'
      FixedChar = True
      Size = 1
    end
    object Q_REMIBGE_ID: TIntegerField
      FieldName = 'IBGE_ID'
      Origin = 'NBFDADOS.CLIENTENBF.IBGE_ID'
    end
    object Q_REMCLIN_LOGRADOURO: TStringField
      FieldName = 'CLIN_LOGRADOURO'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_LOGRADOURO'
      FixedChar = True
      Size = 50
    end
    object Q_REMCLIN_NUMERO: TStringField
      FieldName = 'CLIN_NUMERO'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_NUMERO'
      FixedChar = True
      Size = 15
    end
    object Q_REMCLIN_ISENCAO: TStringField
      FieldName = 'CLIN_ISENCAO'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_ISENCAO'
      FixedChar = True
      Size = 1
    end
    object Q_REMCLIN_COBRAFRETEDEV: TStringField
      FieldName = 'CLIN_COBRAFRETEDEV'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_COBRAFRETEDEV'
      FixedChar = True
      Size = 1
    end
    object Q_REMCLIN_PAGAFRETEDEV: TStringField
      FieldName = 'CLIN_PAGAFRETEDEV'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_PAGAFRETEDEV'
      FixedChar = True
      Size = 1
    end
    object Q_REMCLIN_FRETEADICIONAL: TFloatField
      FieldName = 'CLIN_FRETEADICIONAL'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_FRETEADICIONAL'
    end
  end
  object qrExpedidor: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT A.TRANS_ID,A.TRANS_RAZA, A.TRANS_FANTASIA, A.TRANS_CNPJ  ' +
        'FROM TRANSPORTADORA A'
      'ORDER BY TRANS_RAZA')
    Left = 427
    Top = 405
    object qrExpedidorTRANS_CNPJ: TStringField
      DisplayWidth = 15
      FieldName = 'TRANS_CNPJ'
      Size = 15
    end
    object qrExpedidorTRANS_RAZA: TStringField
      DisplayWidth = 60
      FieldName = 'TRANS_RAZA'
      Size = 60
    end
    object qrExpedidorTRANS_FANTASIA: TStringField
      DisplayWidth = 40
      FieldName = 'TRANS_FANTASIA'
      Size = 40
    end
    object qrExpedidorTRANS_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'TRANS_ID'
      ReadOnly = True
      Visible = False
    end
  end
  object qrRecebedor: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT A.TRANS_ID,A.TRANS_RAZA, A.TRANS_FANTASIA, A.TRANS_CNPJ  ' +
        'FROM TRANSPORTADORA A'
      'ORDER BY TRANS_RAZA')
    Left = 707
    Top = 365
    object qrRecebedorTRANS_CNPJ: TStringField
      DisplayWidth = 15
      FieldName = 'TRANS_CNPJ'
      Size = 15
    end
    object StringField2: TStringField
      DisplayWidth = 60
      FieldName = 'TRANS_RAZA'
      Size = 60
    end
    object StringField3: TStringField
      DisplayWidth = 40
      FieldName = 'TRANS_FANTASIA'
      Size = 40
    end
    object AutoIncField2: TAutoIncField
      DisplayWidth = 10
      FieldName = 'TRANS_ID'
      ReadOnly = True
      Visible = False
    end
  end
  object qrRemetenteAux: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    Left = 655
    Top = 219
  end
  object dsExpedidor: TDataSource
    DataSet = qrExpedidor
    Left = 367
    Top = 411
  end
  object dsRecebedor: TDataSource
    DataSet = qrRecebedor
    Left = 663
    Top = 371
  end
end
