object FConsOCE: TFConsOCE
  Left = 322
  Top = 87
  Width = 796
  Height = 659
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 780
    Height = 35
    Align = alTop
    BevelInner = bvLowered
    Color = clMenu
    TabOrder = 0
    object SpeedButton3: TSpeedButton
      Left = 754
      Top = 4
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
    object Label51: TLabel
      Left = 16
      Top = 0
      Width = 150
      Height = 23
      Caption = 'CTRC Genérico'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Georgia'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      Visible = False
      OnDblClick = Label51DblClick
    end
    object Label4: TLabel
      Left = 16
      Top = 5
      Width = 303
      Height = 23
      Caption = 'Consulta de Ordem de Entrega'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Georgia'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      OnDblClick = Label4DblClick
    end
    object CheckBox1: TCheckBox
      Left = 624
      Top = 8
      Width = 97
      Height = 17
      Caption = 'txt'
      Checked = True
      State = cbChecked
      TabOrder = 1
      Visible = False
    end
    object DBNavigator1: TDBNavigator
      Left = 573
      Top = 4
      Width = 180
      Height = 25
      DataSource = DS_OCE
      VisibleButtons = [nbInsert, nbPost, nbCancel]
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
      OnClick = DBNavigator1Click
    end
  end
  object Panel8: TPanel
    Left = 0
    Top = 35
    Width = 780
    Height = 586
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object TabbedNotebook1: TTabbedNotebook
      Left = 2
      Top = 2
      Width = 776
      Height = 582
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TabFont.Charset = ANSI_CHARSET
      TabFont.Color = clRed
      TabFont.Height = -11
      TabFont.Name = 'Arial Narrow'
      TabFont.Style = [fsBold]
      TabOrder = 0
      object TTabPage
        Left = 4
        Top = 26
        Caption = '   Principal   '
        object Label49: TLabel
          Left = 310
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
        object DBText24: TDBText
          Left = 337
          Top = 4
          Width = 144
          Height = 17
          DataField = 'OS_ID'
          DataSource = DS_OCE
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label50: TLabel
          Left = 10
          Top = 0
          Width = 62
          Height = 15
          Caption = 'Conhcto.Nº'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText25: TDBText
          Left = 76
          Top = -1
          Width = 65
          Height = 17
          DataField = 'ORD_CONH'
          DataSource = DS_OCE
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label45: TLabel
          Left = 649
          Top = 5
          Width = 31
          Height = 15
          Caption = 'CFOP'
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object DBText26: TDBText
          Left = 686
          Top = 4
          Width = 51
          Height = 15
          Alignment = taCenter
          DataField = 'cfa_codi'
          DataSource = dsCFOP
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label18: TLabel
          Left = 18
          Top = 15
          Width = 53
          Height = 15
          Caption = 'Minuta Nº'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText14: TDBText
          Left = 76
          Top = 14
          Width = 65
          Height = 17
          DataField = 'ORD_MINUTA'
          DataSource = DS_OCE
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Panel1: TPanel
          Left = 8
          Top = 31
          Width = 742
          Height = 514
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = clSilver
          TabOrder = 1
          object Label63: TLabel
            Left = 22
            Top = 2
            Width = 62
            Height = 15
            Caption = 'Remetente'
            Font.Charset = ANSI_CHARSET
            Font.Color = clMaroon
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object Label1: TLabel
            Left = 391
            Top = 2
            Width = 69
            Height = 15
            Caption = 'Destinatário'
            Font.Charset = ANSI_CHARSET
            Font.Color = clMaroon
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object Label2: TLabel
            Left = 7
            Top = 23
            Width = 79
            Height = 15
            Caption = 'Consignatário'
            Font.Charset = ANSI_CHARSET
            Font.Color = clMaroon
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object Label46: TLabel
            Left = 323
            Top = 23
            Width = 71
            Height = 15
            Caption = 'Redespacho'
            Font.Charset = ANSI_CHARSET
            Font.Color = clMaroon
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object Label47: TLabel
            Left = 652
            Top = 15
            Width = 29
            Height = 15
            Caption = 'Pago'
            Font.Charset = ANSI_CHARSET
            Font.Color = clMaroon
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object DBText2: TDBText
            Left = 88
            Top = 2
            Width = 299
            Height = 17
            DataField = 'CLINraza'
            DataSource = DS_OCE
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object DBText5: TDBText
            Left = 464
            Top = 2
            Width = 270
            Height = 17
            DataField = 'CLIFraza'
            DataSource = DS_OCE
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object DBText7: TDBText
            Left = 396
            Top = 22
            Width = 253
            Height = 17
            DataField = 'TRANSRaza'
            DataSource = DS_OCE
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label48: TLabel
            Left = 11
            Top = 493
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
          object Label54: TLabel
            Left = 86
            Top = 492
            Width = 260
            Height = 15
            Caption = 'Manifesto de Entrega / Coleta  não confirmada'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBText6: TDBText
            Left = 88
            Top = 22
            Width = 230
            Height = 17
            DataField = 'CLIN_NOME'
            DataSource = DS_PAR
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object SpeedButton1: TSpeedButton
            Left = 699
            Top = 339
            Width = 30
            Height = 25
            Hint = 'Confirmar CTe'
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
          object DBText28: TDBText
            Left = 91
            Top = 316
            Width = 86
            Height = 17
            DataField = 'MANI_ID'
            DataSource = DS_OCE
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label76: TLabel
            Left = 11
            Top = 316
            Width = 61
            Height = 16
            Caption = 'Manifesto:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lblNFSE: TLabel
            Left = 11
            Top = 295
            Width = 46
            Height = 16
            Hint = 'Clique duas vezes para consultar as notas fiscais de serviçõ'
            Caption = 'NFSEs:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            OnDblClick = lblNFSEDblClick
          end
          object wwDBComboBox5: TwwDBComboBox
            Left = 416
            Top = 341
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
            TabOrder = 13
            UnboundDataType = wwDefault
            Visible = False
          end
          object GroupBox1: TGroupBox
            Left = 9
            Top = 38
            Width = 632
            Height = 49
            Caption = 'Mercadorias Transportadas'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            object Label3: TLabel
              Left = 23
              Top = 14
              Width = 49
              Height = 15
              Caption = 'Qtde. UV'
              Font.Charset = ANSI_CHARSET
              Font.Color = clMaroon
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label5: TLabel
              Left = 109
              Top = 14
              Width = 55
              Height = 15
              Caption = 'Peso (Kg)'
              Font.Charset = ANSI_CHARSET
              Font.Color = clMaroon
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label6: TLabel
              Left = 191
              Top = 14
              Width = 70
              Height = 15
              Caption = 'Volume (M3)'
              Font.Charset = ANSI_CHARSET
              Font.Color = clMaroon
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label7: TLabel
              Left = 279
              Top = 14
              Width = 72
              Height = 15
              Caption = 'NF'#39's Número'
              Font.Charset = ANSI_CHARSET
              Font.Color = clMaroon
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label21: TLabel
              Left = 597
              Top = 14
              Width = 29
              Height = 15
              Caption = 'Valor'
              Font.Charset = ANSI_CHARSET
              Font.Color = clMaroon
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object DBText8: TDBText
              Left = 8
              Top = 30
              Width = 65
              Height = 17
              Alignment = taRightJustify
              DataField = 'ORD_QTDE_UV'
              DataSource = DS_OCE
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object DBText9: TDBText
              Left = 78
              Top = 30
              Width = 86
              Height = 17
              Alignment = taRightJustify
              DataField = 'ORD_PESO_TOTAL'
              DataSource = DS_OCE
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object DBText10: TDBText
              Left = 174
              Top = 30
              Width = 86
              Height = 17
              Alignment = taRightJustify
              DataField = 'ORD_VOLUME'
              DataSource = DS_OCE
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object DBText11: TDBText
              Left = 278
              Top = 30
              Width = 291
              Height = 17
              DataField = 'ORD_NOTAS'
              DataSource = DS_OCE
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object DBText12: TDBText
              Left = 541
              Top = 30
              Width = 86
              Height = 17
              Alignment = taRightJustify
              DataField = 'ORD_VALORTOTAL'
              DataSource = DS_OCE
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
          end
          object GroupBox4: TGroupBox
            Left = 642
            Top = 38
            Width = 87
            Height = 49
            Caption = 'Veículo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            object Label31: TLabel
              Left = 7
              Top = 13
              Width = 32
              Height = 15
              Caption = 'Placa'
              Font.Charset = ANSI_CHARSET
              Font.Color = clMaroon
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object DBText13: TDBText
              Left = 7
              Top = 30
              Width = 65
              Height = 16
              DataField = 'ORD_PLACA'
              DataSource = DS_OCE
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
          end
          object GroupBox5: TGroupBox
            Left = 9
            Top = 87
            Width = 720
            Height = 206
            Caption = 'Composição de Frete'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
            object Label32: TLabel
              Left = 11
              Top = 30
              Width = 79
              Height = 15
              Caption = 'Valor Frete R$'
              Font.Charset = ANSI_CHARSET
              Font.Color = clMaroon
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label33: TLabel
              Left = 33
              Top = 52
              Width = 59
              Height = 15
              Caption = 'SEC. / CAT.'
              Font.Charset = ANSI_CHARSET
              Font.Color = clMaroon
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label36: TLabel
              Left = 34
              Top = 77
              Width = 57
              Height = 15
              Caption = 'Despacho'
              Font.Charset = ANSI_CHARSET
              Font.Color = clMaroon
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label37: TLabel
              Left = 45
              Top = 104
              Width = 46
              Height = 15
              Caption = 'Pedágio'
              Font.Charset = ANSI_CHARSET
              Font.Color = clMaroon
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label38: TLabel
              Left = 52
              Top = 127
              Width = 39
              Height = 15
              Caption = 'Outros'
              Font.Charset = ANSI_CHARSET
              Font.Color = clMaroon
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label26: TLabel
              Left = 38
              Top = 163
              Width = 124
              Height = 15
              Caption = 'Total da Prestação R$'
              Font.Charset = ANSI_CHARSET
              Font.Color = clMaroon
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label39: TLabel
              Left = 72
              Top = 179
              Width = 91
              Height = 15
              Caption = 'Base de Cálculo'
              Font.Charset = ANSI_CHARSET
              Font.Color = clMaroon
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label40: TLabel
              Left = 271
              Top = 179
              Width = 46
              Height = 15
              Caption = 'Alíquota'
              Font.Charset = ANSI_CHARSET
              Font.Color = clMaroon
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label43: TLabel
              Left = 394
              Top = 179
              Width = 29
              Height = 15
              Caption = 'ICMS'
              Font.Charset = ANSI_CHARSET
              Font.Color = clMaroon
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object DBText15: TDBText
              Left = 114
              Top = 34
              Width = 55
              Height = 17
              Alignment = taRightJustify
              DataField = 'ORD_VLR_SECCAT'
              DataSource = DS_OCE
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object DBText16: TDBText
              Left = 114
              Top = 67
              Width = 55
              Height = 17
              Alignment = taRightJustify
              DataField = 'ORD_VLR_DESPACHO'
              DataSource = DS_OCE
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object DBText17: TDBText
              Left = 114
              Top = 89
              Width = 55
              Height = 17
              Alignment = taRightJustify
              DataField = 'ORD_VLR_PEDAGIO'
              DataSource = DS_OCE
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object DBText19: TDBText
              Left = 194
              Top = 163
              Width = 55
              Height = 17
              Alignment = taRightJustify
              DataField = 'ORD_TOTALPREST'
              DataSource = DS_OCE
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object DBText20: TDBText
              Left = 194
              Top = 179
              Width = 55
              Height = 17
              Alignment = taRightJustify
              DataField = 'ORD_TOTALPREST'
              DataSource = DS_OCE
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object DBText22: TDBText
              Left = 425
              Top = 179
              Width = 97
              Height = 17
              DataField = 'ORD_VLR_ICMS'
              DataSource = DS_OCE
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object DBText4: TDBText
              Left = 321
              Top = 179
              Width = 25
              Height = 17
              DataField = 'ORD_ALIQ'
              DataSource = DS_OCE
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label52: TLabel
              Left = 336
              Top = 166
              Width = 11
              Height = 15
              Caption = '%'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object SpeedButton2: TSpeedButton
              Left = 474
              Top = 23
              Width = 25
              Height = 25
              Hint = 'Trocar pelo Município do Remetente'
              Flat = True
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000120B0000120B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
                333333777777777F33333330B00000003333337F7777777F3333333000000000
                333333777777777F333333330EEEEEE033333337FFFFFF7F3333333300000000
                333333377777777F3333333330BFBFB03333333373333373F33333330BFBFBFB
                03333337F33333F7F33333330FBFBF0F03333337F33337F7F33333330BFBFB0B
                03333337F3F3F7F7333333330F0F0F0033333337F7F7F773333333330B0B0B03
                3333333737F7F7F333333333300F0F03333333337737F7F33333333333300B03
                333333333377F7F33333333333330F03333333333337F7F33333333333330B03
                3333333333373733333333333333303333333333333373333333}
              NumGlyphs = 2
              ParentShowHint = False
              ShowHint = True
              OnClick = SpeedButton2Click
            end
            object Label77: TLabel
              Left = 188
              Top = 31
              Width = 75
              Height = 15
              Caption = 'tx de Entrega'
              Font.Charset = ANSI_CHARSET
              Font.Color = clMaroon
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label78: TLabel
              Left = 220
              Top = 55
              Width = 41
              Height = 15
              Caption = 'Seguro'
              Font.Charset = ANSI_CHARSET
              Font.Color = clMaroon
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object DBText29: TDBText
              Left = 192
              Top = 104
              Width = 90
              Height = 22
              AutoSize = True
              DataField = 'NFI_REENTREGA'
              DataSource = DS_OCE
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -19
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object GroupBox6: TGroupBox
              Left = 500
              Top = 8
              Width = 212
              Height = 49
              Caption = 'Município - Coleta'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              object DBText21: TDBText
                Left = 9
                Top = 19
                Width = 192
                Height = 17
                DataField = 'MUNIdesc'
                DataSource = DS_OCE
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
            end
            object GroupBox7: TGroupBox
              Left = 500
              Top = 59
              Width = 212
              Height = 49
              Caption = 'Município - Entrega'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 5
              object DBText23: TDBText
                Left = 9
                Top = 19
                Width = 192
                Height = 17
                DataField = 'MUNIdescENT'
                DataSource = DS_OCE
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
            end
            object wwDBEdit38: TwwDBEdit
              Left = 103
              Top = 27
              Width = 77
              Height = 23
              Color = clWhite
              DataField = 'ORD_VLR_FRETE'
              DataSource = DS_OCE
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object BitBtn3: TBitBtn
              Left = 367
              Top = 64
              Width = 82
              Height = 25
              Caption = 'Recalcular'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 6
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
            object RadioGroup1: TRadioGroup
              Left = 500
              Top = 109
              Width = 212
              Height = 41
              Caption = ' Tipo de Impressão'
              Columns = 2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ItemIndex = 0
              Items.Strings = (
                'Conhecimento'
                'Minuta')
              ParentFont = False
              TabOrder = 9
            end
            object wwDBEdit6: TwwDBEdit
              Left = 103
              Top = 124
              Width = 77
              Height = 23
              Color = clWhite
              DataField = 'ORD_VLR_OUTROS'
              DataSource = DS_OCE
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 10
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object wwDBEdit31: TwwDBEdit
              Left = 103
              Top = 49
              Width = 77
              Height = 23
              Color = clWhite
              DataField = 'ORD_VLR_SECCAT'
              DataSource = DS_OCE
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object wwDBEdit32: TwwDBEdit
              Left = 103
              Top = 73
              Width = 77
              Height = 23
              Color = clWhite
              DataField = 'ORD_VLR_DESPACHO'
              DataSource = DS_OCE
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 7
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object wwDBEdit33: TwwDBEdit
              Left = 103
              Top = 97
              Width = 77
              Height = 23
              Color = clWhite
              DataField = 'ORD_VLR_PEDAGIO'
              DataSource = DS_OCE
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 8
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object wwDBEdit34: TwwDBEdit
              Left = 269
              Top = 28
              Width = 77
              Height = 23
              Color = clWhite
              DataField = 'ORD_TXENTREGA'
              DataSource = DS_OCE
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object wwDBEdit35: TwwDBEdit
              Left = 269
              Top = 52
              Width = 77
              Height = 23
              Color = clWhite
              DataField = 'ORD_SEGURO'
              DataSource = DS_OCE
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object btnComplementar: TButton
              Left = 520
              Top = 168
              Width = 195
              Height = 25
              Caption = 'Conhecimento Complementar'
              TabOrder = 11
              OnClick = btnComplementarClick
            end
          end
          object wwDBComboBox3: TwwDBComboBox
            Left = 687
            Top = 13
            Width = 46
            Height = 23
            ShowButton = True
            Style = csDropDown
            MapList = True
            AllowClearKey = False
            AutoDropDown = True
            ButtonStyle = cbsEllipsis
            Color = clSilver
            DataField = 'ORD_PAGO'
            DataSource = DS_OCE
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
            TabOrder = 0
            UnboundDataType = wwDefault
          end
          object wwDBGrid3: TwwDBGrid
            Left = 10
            Top = 364
            Width = 719
            Height = 122
            ControlType.Strings = (
              'MARCADOR;CheckBox;*;'
              'ORD_STATUS;CustomEdit;DBCB_CLI_PESS')
            Selected.Strings = (
              'MARCADOR'#9'1'#9'***'#9'F'
              'ORD_STATUS'#9'1'#9'Situação'#9'F'
              'ORD_CONH'#9'10'#9'Conhcto.Nº'#9'F'
              'ORD_MINUTA'#9'10'#9'Minuta Nº'#9'F'
              'OS_ID'#9'10'#9'OS'#9'F'
              'VEICNOME'#9'19'#9'Veículo Cobrar'#9'F'
              'REGNOME'#9'18'#9'Região Cobrar'#9'F'
              'CLIFraza'#9'40'#9'Destinatário'#9'F')
            IniAttributes.FileName = 'delphi32.ini'
            IniAttributes.SectionName = 'FNFDBG_INFI'
            IniAttributes.Delimiter = ';;'
            TitleColor = clNavy
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
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
            ParentFont = False
            TabOrder = 14
            TitleAlignment = taCenter
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clYellow
            TitleFont.Height = -11
            TitleFont.Name = 'Arial'
            TitleFont.Style = [fsBold]
            TitleLines = 1
            TitleButtons = False
            OnCalcCellColors = wwDBGrid3CalcCellColors
            FooterColor = clInactiveCaption
            FooterCellColor = clGrayText
          end
          object BitBtn4: TBitBtn
            Left = 10
            Top = 339
            Width = 30
            Height = 24
            Hint = 'Selecionar Todos'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 6
            OnClick = BitBtn4Click
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
          object btNem: TBitBtn
            Left = 40
            Top = 339
            Width = 30
            Height = 24
            Hint = 'Desmarcar Todos'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 7
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
          object BitBtn1: TBitBtn
            Left = 667
            Top = 339
            Width = 30
            Height = 24
            Hint = 'Cancelar Conhecimento'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 11
            OnClick = BitBtn1Click
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              333333333333333333FF33333333333330003333333333333777333333333333
              300033FFFFFF3333377739999993333333333777777F3333333F399999933333
              3300377777733333337733333333333333003333333333333377333333333333
              3333333333333333333F333333333333330033333F33333333773333C3333333
              330033337F3333333377333CC3333333333333F77FFFFFFF3FF33CCCCCCCCCC3
              993337777777777F77F33CCCCCCCCCC399333777777777737733333CC3333333
              333333377F33333333FF3333C333333330003333733333333777333333333333
              3000333333333333377733333333333333333333333333333333}
            NumGlyphs = 2
          end
          object DBCB_CLI_PESS: TwwDBComboBox
            Left = 102
            Top = 341
            Width = 104
            Height = 21
            ShowButton = True
            Style = csDropDown
            MapList = True
            AllowClearKey = False
            AutoDropDown = True
            BorderStyle = bsNone
            ButtonStyle = cbsEllipsis
            DataField = 'ORD_STATUS'
            DataSource = DS_OCE
            DropDownCount = 8
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ItemHeight = 0
            Items.Strings = (
              'Aberto'#9'A'
              'Emitido'#9'E'
              'Cancelado'#9'C')
            ParentFont = False
            Sorted = False
            TabOrder = 12
            UnboundDataType = wwDefault
            Visible = False
          end
          object BitBtn6: TBitBtn
            Left = 375
            Top = 128
            Width = 82
            Height = 25
            Caption = 'OBS.'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 4
            OnClick = BitBtn6Click
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
          end
          object Panel3: TPanel
            Left = 732
            Top = 140
            Width = 490
            Height = 201
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Caption = 'Panel2'
            Color = clBlue
            TabOrder = 5
            Visible = False
            object Panel4: TPanel
              Left = 12
              Top = 12
              Width = 469
              Height = 177
              BevelInner = bvLowered
              TabOrder = 0
              object Label44: TLabel
                Left = 182
                Top = 38
                Width = 95
                Height = 18
                Caption = 'Observações'
                Font.Charset = ANSI_CHARSET
                Font.Color = clMaroon
                Font.Height = -15
                Font.Name = 'Arial'
                Font.Style = [fsBold, fsUnderline]
                ParentFont = False
              end
              object BitBtn7: TBitBtn
                Left = 180
                Top = 114
                Width = 100
                Height = 24
                Hint = 'Confirmar'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 1
                OnClick = BitBtn7Click
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
              object wwDBEdit10: TwwDBEdit
                Left = 56
                Top = 67
                Width = 369
                Height = 25
                Color = clWhite
                DataField = 'ORD_OBS'
                DataSource = DS_OCE
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -15
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                UnboundDataType = wwDefault
                WantReturns = False
                WordWrap = False
                OnEnter = wwDBEdit10Enter
                OnExit = wwDBEdit10Exit
              end
            end
          end
          object Button1: TButton
            Left = 88
            Top = 331
            Width = 75
            Height = 25
            Caption = 'Button1'
            TabOrder = 8
            Visible = False
            OnClick = SpeedButton1Click
          end
          object btnConfirmaValores: TButton
            Left = 568
            Top = 339
            Width = 97
            Height = 25
            Caption = 'Confirmar Valores'
            TabOrder = 10
            OnClick = btnConfirmaValoresClick
          end
          object Button2: TButton
            Left = 472
            Top = 339
            Width = 89
            Height = 25
            Caption = 'Alterar Valores'
            TabOrder = 9
            Visible = False
            OnClick = Button2Click
          end
          object btnGerarNFSE: TButton
            Left = 368
            Top = 339
            Width = 97
            Height = 25
            Caption = 'Gerar NFSE'
            TabOrder = 16
            OnClick = btnGerarNFSEClick
          end
          object pnlComplementar: TPanel
            Left = 672
            Top = 136
            Width = 729
            Height = 185
            TabOrder = 15
            Visible = False
            object Label79: TLabel
              Left = 6
              Top = 2
              Width = 545
              Height = 16
              Caption = 
                'Para gerar o Conhecimento complementar preencha as seguintes inf' +
                'ormações:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Microsoft Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label80: TLabel
              Left = 24
              Top = 32
              Width = 66
              Height = 13
              Caption = 'Valor do Frete'
            end
            object Label81: TLabel
              Left = 152
              Top = 32
              Width = 81
              Height = 13
              Caption = 'Valor do Pedagio'
            end
            object Label82: TLabel
              Left = 280
              Top = 32
              Width = 106
              Height = 13
              Caption = 'Valor da Taxa Entrega'
            end
            object Label83: TLabel
              Left = 408
              Top = 32
              Width = 91
              Height = 13
              Caption = 'Valor do Despacho'
            end
            object Label84: TLabel
              Left = 536
              Top = 32
              Width = 76
              Height = 13
              Caption = 'Valor do Seguro'
            end
            object Label85: TLabel
              Left = 24
              Top = 72
              Width = 49
              Height = 13
              Caption = 'Aliq. ICMS'
            end
            object Label87: TLabel
              Left = 152
              Top = 72
              Width = 68
              Height = 13
              Caption = 'Valor do ICMS'
            end
            object Label88: TLabel
              Left = 280
              Top = 72
              Width = 90
              Height = 13
              Caption = 'Total da Prestação'
            end
            object edtVFrete: TEdit
              Left = 24
              Top = 48
              Width = 121
              Height = 21
              TabOrder = 0
              Text = '0,00'
            end
            object edtVPedagio: TEdit
              Left = 152
              Top = 48
              Width = 121
              Height = 21
              TabOrder = 1
              Text = '0,00'
            end
            object edtVTxEntrega: TEdit
              Left = 280
              Top = 48
              Width = 121
              Height = 21
              TabOrder = 2
              Text = '0,00'
            end
            object edtVDespacho: TEdit
              Left = 408
              Top = 48
              Width = 121
              Height = 21
              TabOrder = 3
              Text = '0,00'
            end
            object edtSeguro: TEdit
              Left = 536
              Top = 48
              Width = 121
              Height = 21
              TabOrder = 4
              Text = '0,00'
            end
            object Button3: TButton
              Left = 19
              Top = 120
              Width = 97
              Height = 25
              Caption = 'Confirmar'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Microsoft Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
              OnClick = Button3Click
            end
            object Button4: TButton
              Left = 128
              Top = 120
              Width = 97
              Height = 25
              Caption = 'Cancelar'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Microsoft Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 6
              OnClick = Button4Click
            end
            object edtVAliqICMS: TEdit
              Left = 24
              Top = 88
              Width = 121
              Height = 21
              TabOrder = 7
              Text = '0,00'
            end
            object edtValorICMS: TEdit
              Left = 152
              Top = 88
              Width = 121
              Height = 21
              TabOrder = 8
              Text = '0,00'
            end
            object edtTotalPresta: TEdit
              Left = 280
              Top = 88
              Width = 121
              Height = 21
              TabOrder = 9
              Text = '0,00'
            end
          end
          object btnClonar: TButton
            Left = 280
            Top = 339
            Width = 81
            Height = 25
            Caption = 'Clonar OCE'
            TabOrder = 17
            OnClick = btnClonarClick
          end
        end
        object Panel5: TPanel
          Left = 93
          Top = 81
          Width = 553
          Height = 200
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Caption = 'Panel2'
          Color = clBlue
          TabOrder = 0
          Visible = False
          object Panel6: TPanel
            Left = 13
            Top = 12
            Width = 530
            Height = 177
            BevelInner = bvLowered
            TabOrder = 0
            object BitBtn2: TBitBtn
              Left = 192
              Top = 138
              Width = 100
              Height = 24
              Hint = 'Confirmar'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
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
            object BitBtn5: TBitBtn
              Left = 296
              Top = 138
              Width = 36
              Height = 24
              Hint = 'fechar janela sem nada fazer'
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
            object RadioGroup2: TRadioGroup
              Left = 122
              Top = 24
              Width = 319
              Height = 97
              Caption = 'Selecione'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -19
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ItemIndex = 0
              Items.Strings = (
                'Somente Cancelar'
                'Renumerar para Reimprimir')
              ParentFont = False
              TabOrder = 0
            end
          end
        end
      end
      object TTabPage
        Left = 4
        Top = 26
        Caption = '   Endereços     '
        object Label9: TLabel
          Left = 10
          Top = 5
          Width = 27
          Height = 15
          Caption = 'OC/E'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText1: TDBText
          Left = 40
          Top = 4
          Width = 137
          Height = 17
          DataField = 'ORD_ID'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label16: TLabel
          Left = 190
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
        object DBText3: TDBText
          Left = 217
          Top = 4
          Width = 59
          Height = 17
          DataField = 'OS_ID'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object TabbedNotebook2: TTabbedNotebook
          Left = 13
          Top = 72
          Width = 722
          Height = 290
          TabFont.Charset = ANSI_CHARSET
          TabFont.Color = clRed
          TabFont.Height = -11
          TabFont.Name = 'Arial'
          TabFont.Style = [fsBold]
          TabOrder = 0
          Visible = False
          object TTabPage
            Left = 4
            Top = 24
            Caption = '   Endereço de Origem     '
            object GroupBox2: TGroupBox
              Left = 45
              Top = 7
              Width = 661
              Height = 231
              Color = clActiveBorder
              Enabled = False
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
                Top = 21
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
                Top = 44
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
                Top = 92
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
                Top = 143
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
                Top = 167
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
                Top = 192
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
                Top = 167
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
                Top = 165
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
                Top = 116
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
                Top = 68
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
                Top = 192
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
                Top = 18
                Width = 69
                Height = 21
                BorderStyle = bsNone
                DataField = 'ORD_COL_CEP'
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
              end
              object wwDBEdit3: TwwDBEdit
                Left = 90
                Top = 42
                Width = 236
                Height = 21
                BorderStyle = bsNone
                DataField = 'ORD_COL_ENDERECO'
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
              end
              object wwDBEdit4: TwwDBEdit
                Left = 90
                Top = 90
                Width = 164
                Height = 21
                BorderStyle = bsNone
                DataField = 'ORD_COL_ENDERECO_BAIRRO'
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
              object wwDBLookupCombo6: TwwDBLookupCombo
                Left = 90
                Top = 140
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
                LookupTable = Q_UF1
                LookupField = 'UF_SIGLA'
                ParentFont = False
                TabOrder = 5
                AutoDropDown = True
                ShowButton = True
                SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
                PreciseEditRegion = False
                AllowClearKey = False
              end
              object wwDBEdit5: TwwDBEdit
                Left = 90
                Top = 165
                Width = 128
                Height = 21
                BorderStyle = bsNone
                DataField = 'ORD_COL_TEL1'
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
              end
              object wwDBEdit7: TwwDBEdit
                Left = 90
                Top = 190
                Width = 128
                Height = 21
                BorderStyle = bsNone
                DataField = 'ORD_COL_FAX'
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
              end
              object wwDBEdit8: TwwDBEdit
                Left = 396
                Top = 165
                Width = 217
                Height = 21
                BorderStyle = bsNone
                DataField = 'ORD_COL_EMAIL'
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
              end
              object wwDBEdit9: TwwDBEdit
                Left = 231
                Top = 165
                Width = 128
                Height = 21
                BorderStyle = bsNone
                DataField = 'ORD_COL_TEL2'
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
              end
              object wwDBEdit11: TwwDBEdit
                Left = 90
                Top = 66
                Width = 232
                Height = 21
                BorderStyle = bsNone
                DataField = 'ORD_COL_ENDERECO_COMPL'
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
              object wwDBEdit13: TwwDBEdit
                Left = 396
                Top = 190
                Width = 217
                Height = 21
                BorderStyle = bsNone
                DataField = 'ORD_COL_CONTATO'
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
              object wwDBLookupCombo14: TwwDBLookupCombo
                Left = 90
                Top = 115
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
                LookupTable = Q_MUNI
                LookupField = 'MUN_ID'
                DropDownCount = 5
                ParentFont = False
                TabOrder = 4
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
            Caption = '   Endereço de Destino    '
            object GroupBox3: TGroupBox
              Left = 45
              Top = 7
              Width = 660
              Height = 231
              Color = clActiveBorder
              Enabled = False
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
                Top = 48
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
                Top = 96
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
                Top = 145
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
                Top = 170
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
                Top = 194
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
                Top = 170
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
                Top = 170
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
                Top = 120
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
                Top = 72
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
                Top = 194
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
                Top = 25
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
                Top = 46
                Width = 236
                Height = 21
                BorderStyle = bsNone
                DataField = 'ORD_ENT_ENDERECO'
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
              end
              object wwDBEdit18: TwwDBEdit
                Left = 93
                Top = 94
                Width = 164
                Height = 21
                BorderStyle = bsNone
                DataField = 'ORD_ENT_ENDERECO_BAIRRO'
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
              object DBLC_DBE_FEST: TwwDBLookupCombo
                Left = 93
                Top = 144
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
                LookupTable = Q_UF2
                LookupField = 'UF_SIGLA'
                ParentFont = False
                TabOrder = 5
                AutoDropDown = True
                ShowButton = True
                SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
                PreciseEditRegion = False
                AllowClearKey = False
              end
              object DBE_CLI_FFAX: TwwDBEdit
                Left = 93
                Top = 168
                Width = 128
                Height = 21
                BorderStyle = bsNone
                DataField = 'ORD_ENT_TEL1'
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
              end
              object DBE_CLI_FTEL: TwwDBEdit
                Left = 93
                Top = 192
                Width = 128
                Height = 21
                BorderStyle = bsNone
                DataField = 'ORD_ENT_FAX'
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
              end
              object DBE_CLI_FEMA: TwwDBEdit
                Left = 405
                Top = 168
                Width = 217
                Height = 21
                BorderStyle = bsNone
                DataField = 'ORD_ENT_EMAIL'
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
              end
              object DBE_CLI_FTE2: TwwDBEdit
                Left = 234
                Top = 168
                Width = 128
                Height = 21
                BorderStyle = bsNone
                DataField = 'ORD_ENT_TEL2'
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
              end
              object wwDBEdit16: TwwDBEdit
                Left = 93
                Top = 70
                Width = 232
                Height = 21
                BorderStyle = bsNone
                DataField = 'ORD_ENT_ENDERECO_COMPL'
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
              object wwDBEdit1: TwwDBEdit
                Left = 405
                Top = 192
                Width = 217
                Height = 21
                BorderStyle = bsNone
                DataField = 'ORD_ENT_CONTATO'
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
              object DBE_CLI_FCEP: TwwDBEdit
                Left = 93
                Top = 22
                Width = 69
                Height = 21
                BorderStyle = bsNone
                DataField = 'ORD_ENT_CEP'
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
              end
              object wwDBLookupCombo15: TwwDBLookupCombo
                Left = 93
                Top = 119
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
                LookupTable = Q_MUNI2
                LookupField = 'MUN_ID'
                ParentFont = False
                TabOrder = 4
                AutoDropDown = True
                ShowButton = True
                SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
                PreciseEditRegion = False
                AllowClearKey = False
              end
            end
          end
        end
      end
    end
    object Panel7: TPanel
      Left = 78
      Top = 2
      Width = 183
      Height = 23
      BevelOuter = bvNone
      TabOrder = 1
      Visible = False
    end
  end
  object Panel9: TPanel
    Left = 754
    Top = 152
    Width = 785
    Height = 495
    BevelInner = bvLowered
    TabOrder = 2
    Visible = False
    object Label53: TLabel
      Left = 97
      Top = 7
      Width = 62
      Height = 15
      Caption = 'Remetente'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object Label73: TLabel
      Left = 90
      Top = 37
      Width = 69
      Height = 15
      Caption = 'Destinatário'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object Label74: TLabel
      Left = 88
      Top = 109
      Width = 71
      Height = 15
      Caption = 'Redespacho'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object DBText27: TDBText
      Left = 165
      Top = 5
      Width = 405
      Height = 20
      DataField = 'CLINraza'
      DataSource = DS_OCE
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object GroupBox8: TGroupBox
      Left = 36
      Top = 135
      Width = 733
      Height = 114
      Caption = 'Mercadorias Transportadas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      object Label56: TLabel
        Left = 39
        Top = 14
        Width = 49
        Height = 15
        Caption = 'Qtde. UV'
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object Label57: TLabel
        Left = 136
        Top = 14
        Width = 55
        Height = 15
        Caption = 'Peso (Kg)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object Label58: TLabel
        Left = 225
        Top = 14
        Width = 70
        Height = 15
        Caption = 'Volume (M3)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object Label59: TLabel
        Left = 7
        Top = 66
        Width = 72
        Height = 15
        Caption = 'NF'#39's Número'
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object Label60: TLabel
        Left = 440
        Top = 14
        Width = 47
        Height = 15
        Caption = 'Valor R$'
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object DBText18: TDBText
        Left = 8
        Top = 30
        Width = 65
        Height = 17
        Alignment = taRightJustify
        DataField = 'ORD_QTDE_UV'
        DataSource = DS_OCE
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object SpeedButton5: TSpeedButton
        Left = 85
        Top = 58
        Width = 36
        Height = 22
        Hint = 'Incluir NF'#39's'
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
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton5Click
      end
      object Label75: TLabel
        Left = 328
        Top = 14
        Width = 65
        Height = 15
        Caption = 'Qtde. Pallet'
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object wwDBEdit20: TwwDBEdit
        Left = 5
        Top = 32
        Width = 84
        Height = 21
        BorderStyle = bsNone
        DataField = 'ORD_QTDE_UV'
        DataSource = DS_OCE
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
        OnEnter = wwDBEdit20Enter
        OnExit = wwDBEdit20Exit
      end
      object wwDBEdit15: TwwDBEdit
        Left = 101
        Top = 32
        Width = 92
        Height = 21
        BorderStyle = bsNone
        DataField = 'ORD_PESO_TOTAL'
        DataSource = DS_OCE
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
        OnEnter = wwDBEdit15Enter
        OnExit = wwDBEdit15Exit
      end
      object wwDBEdit17: TwwDBEdit
        Left = 205
        Top = 32
        Width = 92
        Height = 21
        BorderStyle = bsNone
        DataField = 'ORD_VOLUME'
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
        OnEnter = wwDBEdit17Enter
        OnExit = wwDBEdit17Exit
      end
      object wwDBEdit21: TwwDBEdit
        Left = 408
        Top = 32
        Width = 80
        Height = 21
        BorderStyle = bsNone
        DataField = 'ORD_VALORTOTAL'
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
        OnEnter = wwDBEdit21Enter
        OnExit = wwDBEdit21Exit
      end
      object wwDBEdit19: TwwDBEdit
        Left = 5
        Top = 84
        Width = 332
        Height = 21
        BorderStyle = bsNone
        DataField = 'ORD_NOTAS'
        DataSource = DS_OCE
        Enabled = False
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
        OnEnter = wwDBEdit17Enter
        OnExit = wwDBEdit17Exit
      end
      object wwDBEdit30: TwwDBEdit
        Left = 309
        Top = 32
        Width = 84
        Height = 21
        BorderStyle = bsNone
        DataField = 'ORD_QTDE_PALLET'
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
        OnEnter = wwDBEdit20Enter
        OnExit = wwDBEdit20Exit
      end
    end
    object GroupBox9: TGroupBox
      Left = 36
      Top = 254
      Width = 141
      Height = 59
      Caption = 'Veículo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      object Label61: TLabel
        Left = 52
        Top = 13
        Width = 32
        Height = 15
        Caption = 'Placa'
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object wwDBEdit29: TwwDBEdit
        Left = 50
        Top = 32
        Width = 84
        Height = 21
        BorderStyle = bsNone
        DataField = 'ORD_PLACA'
        DataSource = DS_OCE
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
        OnEnter = wwDBEdit29Enter
        OnExit = wwDBEdit29Exit
      end
    end
    object GroupBox10: TGroupBox
      Left = 180
      Top = 254
      Width = 589
      Height = 230
      Caption = 'Composição de Frete'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      object Label62: TLabel
        Left = 84
        Top = 14
        Width = 79
        Height = 15
        Caption = 'Valor Frete R$'
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object Label64: TLabel
        Left = 103
        Top = 37
        Width = 59
        Height = 15
        Caption = 'SEC. / CAT.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object Label65: TLabel
        Left = 107
        Top = 61
        Width = 57
        Height = 15
        Caption = 'Despacho'
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object Label66: TLabel
        Left = 118
        Top = 85
        Width = 46
        Height = 15
        Caption = 'Pedágio'
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object Label67: TLabel
        Left = 125
        Top = 109
        Width = 39
        Height = 15
        Caption = 'Outros'
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object Label68: TLabel
        Left = 39
        Top = 132
        Width = 124
        Height = 15
        Caption = 'Total da Prestação R$'
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object Label69: TLabel
        Left = 73
        Top = 156
        Width = 91
        Height = 15
        Caption = 'Base de Cálculo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object Label70: TLabel
        Left = 120
        Top = 180
        Width = 46
        Height = 15
        Caption = 'Alíquota'
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object Label71: TLabel
        Left = 138
        Top = 205
        Width = 29
        Height = 15
        Caption = 'ICMS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object Label72: TLabel
        Left = 254
        Top = 181
        Width = 11
        Height = 15
        Caption = '%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object GroupBox11: TGroupBox
        Left = 264
        Top = 19
        Width = 317
        Height = 49
        Caption = 'Município - Coleta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object wwDBLookupCombo3: TwwDBLookupCombo
          Left = 35
          Top = 17
          Width = 274
          Height = 24
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
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
          ParentFont = False
          TabOrder = 0
          AutoDropDown = True
          ShowButton = True
          SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
          PreciseEditRegion = False
          AllowClearKey = False
          OnEnter = wwDBLookupCombo3Enter
          OnExit = wwDBLookupCombo3Exit
        end
      end
      object GroupBox12: TGroupBox
        Left = 264
        Top = 75
        Width = 317
        Height = 49
        Caption = 'Município - Entrega'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        object wwDBLookupCombo5: TwwDBLookupCombo
          Left = 35
          Top = 17
          Width = 274
          Height = 24
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          BorderStyle = bsNone
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'MUN_NOME'#9'40'#9'MUN_NOME'#9'F')
          DataField = 'MUN_ID_ENT'
          DataSource = DS_OCE
          LookupTable = Q_MUNI2
          LookupField = 'MUN_ID'
          ParentFont = False
          TabOrder = 0
          AutoDropDown = True
          ShowButton = True
          SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
          PreciseEditRegion = False
          AllowClearKey = False
          OnEnter = wwDBLookupCombo5Enter
          OnExit = wwDBLookupCombo5Exit
        end
      end
      object wwDBEdit22: TwwDBEdit
        Left = 169
        Top = 11
        Width = 80
        Height = 21
        BorderStyle = bsNone
        DataField = 'ORD_VLR_FRETE'
        DataSource = DS_OCE
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
        OnEnter = wwDBEdit22Enter
        OnExit = wwDBEdit22Exit
      end
      object wwDBEdit23: TwwDBEdit
        Left = 169
        Top = 35
        Width = 80
        Height = 21
        BorderStyle = bsNone
        DataField = 'ORD_VLR_SECCAT'
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
        OnEnter = wwDBEdit23Enter
        OnExit = wwDBEdit23Exit
      end
      object wwDBEdit24: TwwDBEdit
        Left = 169
        Top = 59
        Width = 80
        Height = 21
        BorderStyle = bsNone
        DataField = 'ORD_VLR_DESPACHO'
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
        OnEnter = wwDBEdit24Enter
        OnExit = wwDBEdit24Exit
      end
      object wwDBEdit25: TwwDBEdit
        Left = 169
        Top = 83
        Width = 80
        Height = 21
        BorderStyle = bsNone
        DataField = 'ORD_VLR_PEDAGIO'
        DataSource = DS_OCE
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
        OnEnter = wwDBEdit25Enter
        OnExit = wwDBEdit25Exit
      end
      object wwDBEdit12: TwwDBEdit
        Left = 169
        Top = 107
        Width = 80
        Height = 21
        BorderStyle = bsNone
        DataField = 'ORD_VLR_OUTROS'
        DataSource = DS_OCE
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
        OnEnter = wwDBEdit12Enter
        OnExit = wwDBEdit12Exit
      end
      object wwDBEdit26: TwwDBEdit
        Left = 169
        Top = 131
        Width = 80
        Height = 21
        BorderStyle = bsNone
        DataField = 'ORD_TOTALPREST'
        DataSource = DS_OCE
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
        OnEnter = wwDBEdit26Enter
        OnExit = wwDBEdit26Exit
      end
      object wwDBEdit27: TwwDBEdit
        Left = 169
        Top = 155
        Width = 80
        Height = 21
        BorderStyle = bsNone
        DataField = 'ORD_TOTALPREST'
        DataSource = DS_OCE
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
        OnEnter = wwDBEdit27Enter
        OnExit = wwDBEdit27Exit
      end
      object wwDBEdit14: TwwDBEdit
        Left = 169
        Top = 179
        Width = 80
        Height = 21
        BorderStyle = bsNone
        DataField = 'ORD_ALIQ'
        DataSource = DS_OCE
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
        OnEnter = wwDBEdit14Enter
        OnExit = wwDBEdit14Exit
      end
      object wwDBEdit28: TwwDBEdit
        Left = 169
        Top = 203
        Width = 80
        Height = 21
        BorderStyle = bsNone
        DataField = 'ORD_VLR_ICMS'
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
        OnEnter = wwDBEdit28Enter
        OnExit = wwDBEdit28Exit
      end
    end
    object wwDBLookupCombo1: TwwDBLookupCombo
      Left = 164
      Top = 35
      Width = 349
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      BorderStyle = bsNone
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'CLIF_RAZA'#9'50'#9'CLIF_RAZA'#9'F')
      DataField = 'CLIF_ID'
      DataSource = DS_OCE
      LookupTable = Q_CLIF3
      LookupField = 'CLIF_ID'
      ParentFont = False
      TabOrder = 0
      AutoDropDown = True
      ShowButton = True
      SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
      PreciseEditRegion = False
      AllowClearKey = False
      OnEnter = wwDBLookupCombo1Enter
    end
    object wwDBLookupCombo4: TwwDBLookupCombo
      Left = 164
      Top = 107
      Width = 349
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      BorderStyle = bsNone
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'TRANS_RAZA'#9'60'#9'TRANS_RAZA'#9'F')
      DataField = 'TRANS_ID_REDES'
      DataSource = DS_OCE
      LookupTable = cdsTrans
      LookupField = 'TRANS_ID'
      ParentFont = False
      TabOrder = 2
      AutoDropDown = True
      ShowButton = True
      SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
      PreciseEditRegion = False
      AllowClearKey = False
      OnEnter = wwDBLookupCombo4Enter
      OnExit = wwDBLookupCombo4Exit
    end
    object RadioGroup3: TRadioGroup
      Left = 259
      Top = 61
      Width = 152
      Height = 40
      Caption = ' Consignatário ?'
      Columns = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Items.Strings = (
        'Sim'
        'Não')
      ParentFont = False
      TabOrder = 1
      OnClick = RadioGroup3Click
    end
  end
  object Panel10: TPanel
    Left = 769
    Top = 342
    Width = 266
    Height = 295
    BevelInner = bvLowered
    TabOrder = 3
    Visible = False
    object Label55: TLabel
      Left = 10
      Top = 9
      Width = 167
      Height = 15
      Caption = 'Informe o Manifesto de Carga'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object SpeedButton4: TSpeedButton
      Left = 226
      Top = 195
      Width = 31
      Height = 33
      Hint = 'Cancelar'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      Glyph.Data = {
        B60C0000424DB60C000000000000360000002800000021000000200000000100
        180000000000800C00000000000000000000000000000000000080FFFF80FFFF
        80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FF
        FF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80
        FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF0080FF
        FF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80
        FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF
        80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FF
        FF0080FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF
        80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FF
        FF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80
        FFFF80FFFF0080FFFF80FFFF80FFFF80FFFF80FFFF80FFFFE9E9E9E7E7E7E7E7
        E7F3F3F380FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80
        FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFFFEFEFEF3F3F3EDEDED80FFFF
        80FFFF80FFFF80FFFF0080FFFF80FFFF80FFFF80FFFF80FFFFE7E7E776767659
        5959646464A2A2A2F3F3F380FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF
        80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFFF8F8F8D8D8D8A4A4A49494
        94EDEDED80FFFF80FFFF80FFFF0080FFFF80FFFF80FFFF80FFFFFEFEFE340EDE
        2900DF2900DF352191707070E1E1E180FFFF80FFFF80FFFF80FFFF80FFFF80FF
        FF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFFEDEDEDB0AEBB4E3AAA33
        15BC717171E7E7E780FFFF80FFFF80FFFF0080FFFF80FFFF80FFFF80FFFFF0EE
        FC2900DF2900DF2900DF2B08CA525252ADADADF5F5F580FFFF80FFFF80FFFF80
        FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFFE4E4E48177AF300CCF
        2900DF2900DFC2C2C2FBFBFB80FFFF80FFFF80FFFF0080FFFF80FFFF80FFFF80
        FFFFF1EFFC502FE42900DF2900DF2900DF38297C6B6B6BD1D1D1FEFEFE80FFFF
        80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFFFEFEFEDDDDDD5E4AB92900
        DF2900DF3C1BD0B6AFD9F9F9F980FFFF80FFFF80FFFF80FFFF0080FFFF80FFFF
        80FFFF80FFFF80FFFFD6CFF8350FDF2900DF2900DF2A04D5454351868686E0E0
        E080FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFFFCFCFCD2D2D24930BA29
        00DF2900DF553CC7D8D6E3FEFEFE80FFFF80FFFF80FFFF80FFFF80FFFF0080FF
        FF80FFFF80FFFF80FFFF80FFFF80FFFFD6CFF8350FDF2900DF2900DF2E10B650
        50509A9A9AE9E9E980FFFF80FFFF80FFFF80FFFF80FFFFFCFCFCC7C5D23918CD
        2900DF2900DF6955C5EAEAEA80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FF
        FF0080FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFFC9BFF62900DF2900DF
        2900DF331C99595959ABABABF0F0F080FFFF80FFFF80FFFFFCFCFCC7C5D23918
        CD2900DF2900DF7A6BBEEDEDED80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80
        FFFF80FFFF0080FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFFAE9F
        F22900DF2900DF2900DF37287C616161B9B9B9F5F5F580FFFFFCFCFCC7C5D239
        18CD2900DF2900DF7A6BBEEDEDED80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF
        80FFFF80FFFF80FFFF0080FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80
        FFFF80FFFFAE9FF22900DF2900DF2900DF3B31686B6B6BC0C0C0F3F3F3C7C5D2
        3918CD2900DF2900DF7A6BBEEDEDED80FFFF80FFFF80FFFF80FFFF80FFFF80FF
        FF80FFFF80FFFF80FFFF80FFFF0080FFFF80FFFF80FFFF80FFFF80FFFF80FFFF
        80FFFF80FFFF80FFFF80FFFFAE9FF22900DF2900DF2C06D63E37606B6B6B9D9B
        A93817CC2900DF2900DF7A6BBEEDEDED80FFFF80FFFF80FFFF80FFFF80FFFF80
        FFFF80FFFF80FFFF80FFFF80FFFF80FFFF0080FFFF80FFFF80FFFF80FFFF80FF
        FF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFFAE9FF22900DF2900DF2D07D83C
        326A2F0FC32900DF2900DF7A6BBEEDEDED80FFFF80FFFF80FFFF80FFFF80FFFF
        80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF0080FFFF80FFFF80FFFF80
        FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFFD6CFF8350FDF
        2900DF2900DF2900DF2900DF554699DBDBDB80FFFF80FFFF80FFFF80FFFF80FF
        FF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF0080FFFF80FFFF
        80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFFFCFC
        FC9081D52900DF2900DF2900DF2F11B8555555ABABABE9E9E980FFFF80FFFF80
        FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF0080FF
        FF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFFFC
        FCFCC7C5D22E08D92900DF2900DF2900DF2900DF3F30835959599A9A9AE3E3E3
        FEFEFE80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FF
        FF0080FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF
        FCFCFCC7C5D23918CD2900DF2900DF5138C24B2ADF2900DF2900DF3D27A45353
        53929292D7D7D7FBFBFB80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80
        FFFF80FFFF0080FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FF
        FFFCFCFCC7C5D23918CD2900DF2900DF5138C2E1E1E180FFFF7960EB2900DF29
        00DF3E25B04C4A587D7D7DC9C9C9F5F5F580FFFF80FFFF80FFFF80FFFF80FFFF
        80FFFF80FFFF80FFFF0080FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80
        FFFFFCFCFCC7C5D23918CD2900DF2900DF4B32BDDEDEDE80FFFF80FFFF80FFFF
        AE9FF22900DF2900DF3615CA48435F6B6B6BB3B3B3EAEAEA80FFFF80FFFF80FF
        FF80FFFF80FFFF80FFFF80FFFF0080FFFF80FFFF80FFFF80FFFF80FFFF80FFFF
        80FFFFFCFCFCC7C5D23918CD2900DF2900DF3E20C7D4D4D4FEFEFE80FFFF80FF
        FF80FFFF80FFFFD6CFF83610E12900DF2E08D945387E5B5B5B9A9A9AE0E0E0FE
        FEFE80FFFF80FFFF80FFFF80FFFF80FFFF0080FFFF80FFFF80FFFF80FFFF80FF
        FF80FFFFF8F8F8C6C4D13918CD2900DF2900DF3615CAC4C2D0FCFCFC80FFFF80
        FFFF80FFFF80FFFF80FFFF80FFFFF1EFFC5E40E72900DF2900DF3E28A5525252
        868686E1E1E1FEFEFE80FFFF80FFFF80FFFF80FFFF0080FFFF80FFFF80FFFF80
        FFFF80FFFFF5F5F5B2B0BD3616CB2900DF2900DF2D07D8B6B4C1F9F9F980FFFF
        80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF8670ED2900DF2900
        DF391BC263616FCECECEF9F9F980FFFF80FFFF80FFFF80FFFF0080FFFF80FFFF
        80FFFF80FFFFFBFBFB9C92C9310DD02900DF2900DF2C06D6938CB5F2F2F280FF
        FF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFFBB
        AFF4350FDF2900DF9B91C8F0F0F080FFFF80FFFF80FFFF80FFFF80FFFF0080FF
        FF80FFFF80FFFF80FFFFC7C0EA2E08D92900DF2900DF2900DF6F60B4E9E9E980
        FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF
        80FFFF80FFFFF1EFFCAD9EF1F6F6F680FFFF80FFFF80FFFF80FFFF80FFFF80FF
        FF0080FFFF80FFFF80FFFF80FFFF4C2BE02900DF2900DF2900DF523BB8E0E0E0
        80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FF
        FF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80
        FFFF80FFFF0080FFFF80FFFF80FFFF80FFFF2900DF2900DF2900DF3D1FC5D2D2
        D2FEFEFE80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80
        FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF
        80FFFF80FFFF80FFFF0080FFFF80FFFF80FFFF80FFFF7960EB350FDF411DDFDD
        DBE8FEFEFE80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF
        80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FF
        FF80FFFF80FFFF80FFFF80FFFF0080FFFF80FFFF80FFFF80FFFF80FFFF80FFFF
        80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FF
        FF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80
        FFFF80FFFF80FFFF80FFFF80FFFF80FFFF0080FFFF80FFFF80FFFF80FFFF80FF
        FF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80
        FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF
        80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF0080FFFF80FFFF80FFFF80
        FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF
        80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FF
        FF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF00}
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton4Click
    end
    object Grid: TwwDBGrid
      Left = 14
      Top = 80
      Width = 203
      Height = 201
      Selected.Strings = (
        'NFI_MARCADOR_CTRCGEN'#9'1'#9'Marcador'
        'NFI_NUMERO'#9'13'#9'NF Número'#9'F')
      IniAttributes.FileName = 'delphi32.ini'
      IniAttributes.SectionName = 'FPcPGrid'
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      EditControlOptions = [ecoCheckboxSingleClick, ecoSearchOwnerForm]
      Color = clWhite
      DataSource = DS_NF99
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
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
    object BitBtn8: TBitBtn
      Left = 226
      Top = 152
      Width = 31
      Height = 33
      Hint = 'Confirmar'
      Default = True
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
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
    object wwDBLookupCombo7: TwwDBLookupCombo
      Left = 10
      Top = 26
      Width = 119
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      BorderStyle = bsNone
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'MANI_ID'#9'10'#9'MANI_ID'#9'F')
      LookupTable = cdsMani
      LookupField = 'MANI_ID'
      ParentFont = False
      TabOrder = 0
      AutoDropDown = True
      ShowButton = True
      SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
      PreciseEditRegion = False
      AllowClearKey = False
      OnCloseUp = wwDBLookupCombo7CloseUp
      OnEnter = wwDBLookupCombo7Enter
      OnExit = wwDBLookupCombo7Exit
    end
  end
  object Q_VEIC3: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select * from TPVEICULO order by VEIC_NOME')
    ValidateWithMask = True
    Left = 410
    Top = 144
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
    SQL.Strings = (
      'select * from REGIAO'
      ''
      ''
      '')
    ValidateWithMask = True
    Left = 364
    Top = 136
    object Q_REG2REG_ID: TAutoIncField
      FieldName = 'REG_ID'
      Origin = 'NBFDADOS.REGIAO.REG_ID'
    end
    object Q_REG2REG_NOME: TStringField
      FieldName = 'REG_NOME'
      Origin = 'NBFDADOS.REGIAO.REG_NOME'
      FixedChar = True
      Size = 40
    end
  end
  object Q_UF1: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select *  from UF order by UF_NOME'
      ''
      '')
    ValidateWithMask = True
    Left = 428
    Top = 184
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
  object Q_MUNI: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select * from MUNICIPIO order by MUN_NOME')
    ValidateWithMask = True
    Left = 258
    Top = 137
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
  object Q_MUNI2: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select * from MUNICIPIO order by MUN_NOME')
    ValidateWithMask = True
    Left = 308
    Top = 124
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
  object Q_UF2: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select *  from UF order by UF_NOME'
      ''
      '')
    ValidateWithMask = True
    Left = 508
    Top = 59
    object Q_UF2UF_SIGLA: TStringField
      FieldName = 'UF_SIGLA'
      Origin = 'NBFDADOS.UF.UF_SIGLA'
      FixedChar = True
      Size = 2
    end
    object Q_UF2UF_NOME: TStringField
      FieldName = 'UF_NOME'
      Origin = 'NBFDADOS.UF.UF_NOME'
      FixedChar = True
      Size = 30
    end
    object Q_UF2UF_ALIQUOTA: TFloatField
      FieldName = 'UF_ALIQUOTA'
      Origin = 'NBFDADOS.UF.UF_ALIQUOTA'
    end
  end
  object Q_AUX: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    ValidateWithMask = True
    Left = 422
    Top = 312
  end
  object Q_CLIF3: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      
        'Select CLIF_ID,CLIF_RAZA,UF_SIGLA  from CLIENTEFINAL order by CL' +
        'IF_RAZA ')
    ValidateWithMask = True
    Left = 614
    Top = 34
    object Q_CLIF3CLIF_RAZA: TStringField
      DisplayWidth = 50
      FieldName = 'CLIF_RAZA'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_RAZA'
      FixedChar = True
      Size = 50
    end
    object Q_CLIF3CLIF_ID: TAutoIncField
      FieldName = 'CLIF_ID'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_ID'
      Visible = False
    end
    object Q_CLIF3UF_SIGLA: TStringField
      FieldName = 'UF_SIGLA'
      Origin = 'NBFDADOS.CLIENTEFINAL.UF_SIGLA'
      FixedChar = True
      Size = 2
    end
  end
  object Q_CLIN: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select CLIN_ID,CLIN_RAZA,UF_SIGLA ,mun_ID from '
      'CLIENTENBF')
    ValidateWithMask = True
    Left = 598
    Top = 157
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
    object Q_CLINUF_SIGLA: TStringField
      DisplayWidth = 2
      FieldName = 'UF_SIGLA'
      Origin = 'NBFDADOS.CLIENTENBF.UF_SIGLA'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object Q_CLINmun_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'mun_ID'
      Visible = False
    end
  end
  object Q_TRANS: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select'
      'TRANS_ID,TRANS_RAZA,TRANS_ENDERECO,'
      'TRANS_ENDERECO_COMPL,TRANS_CNPJ,TRANS_PESSOA,MUN_ID'
      ' from TRANSPORTADORA')
    ValidateWithMask = True
    Left = 446
    Top = 159
    object Q_TRANSTRANS_RAZA: TStringField
      DisplayWidth = 60
      FieldName = 'TRANS_RAZA'
      Origin = 'NBFDADOS.TRANSPORTADORA.TRANS_RAZA'
      FixedChar = True
      Size = 60
    end
    object Q_TRANSTRANS_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'TRANS_ID'
      Origin = 'NBFDADOS.TRANSPORTADORA.TRANS_ID'
      Visible = False
    end
    object Q_TRANSTRANS_ENDERECO: TStringField
      DisplayWidth = 50
      FieldName = 'TRANS_ENDERECO'
      Origin = 'NBFDADOS.TRANSPORTADORA.TRANS_ENDERECO'
      Visible = False
      FixedChar = True
      Size = 50
    end
    object Q_TRANSTRANS_ENDERECO_COMPL: TStringField
      DisplayWidth = 20
      FieldName = 'TRANS_ENDERECO_COMPL'
      Origin = 'NBFDADOS.TRANSPORTADORA.TRANS_ENDERECO_COMPL'
      Visible = False
      FixedChar = True
    end
    object Q_TRANSTRANS_CNPJ: TStringField
      DisplayWidth = 15
      FieldName = 'TRANS_CNPJ'
      Origin = 'NBFDADOS.TRANSPORTADORA.TRANS_CNPJ'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object Q_TRANSTRANS_PESSOA: TStringField
      DisplayWidth = 1
      FieldName = 'TRANS_PESSOA'
      Origin = 'NBFDADOS.TRANSPORTADORA.TRANS_PESSOA'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_TRANSMUN_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'MUN_ID'
      Origin = 'NBFDADOS.TRANSPORTADORA.MUN_ID'
      Visible = False
    end
  end
  object Q_PAR: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select  A.PAR_ID,A.CLIN_ID,A.DATA,B.CLIN_NOME,'
      'B.CLIN_ENDERECO,B.CLIN_ENDERECO_COMPL,A.MUN_ID,'
      'A.CAMINHO_MATRICIAL_CONH, A.*'
      'from PARAMETRO A,CLIENTENBF B where'
      ' A.CLIN_ID = B.CLIN_ID'
      '')
    ValidateWithMask = True
    Left = 290
    Top = 141
    object Q_PARPAR_ID: TAutoIncField
      FieldName = 'PAR_ID'
      Origin = 'NBFDADOS.PARAMETRO.PAR_ID'
    end
    object Q_PARCLIN_ID: TIntegerField
      FieldName = 'CLIN_ID'
      Origin = 'NBFDADOS.PARAMETRO.CLIN_ID'
    end
    object Q_PARCLIN_NOME: TStringField
      FieldName = 'CLIN_NOME'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_NOME'
      FixedChar = True
      Size = 30
    end
    object Q_PARCLIN_ENDERECO: TStringField
      FieldName = 'CLIN_ENDERECO'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_ENDERECO'
      FixedChar = True
      Size = 50
    end
    object Q_PARCLIN_ENDERECO_COMPL: TStringField
      FieldName = 'CLIN_ENDERECO_COMPL'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_ENDERECO_COMPL'
      FixedChar = True
      Size = 35
    end
    object Q_PARMUN_ID: TIntegerField
      FieldName = 'MUN_ID'
      Origin = 'NBFDADOS.PARAMETRO.MUN_ID'
    end
    object Q_PARDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object Q_PARCAMINHO_MATRICIAL_CONH: TStringField
      FieldName = 'CAMINHO_MATRICIAL_CONH'
      FixedChar = True
      Size = 40
    end
    object Q_PARPAR_ID_1: TAutoIncField
      FieldName = 'PAR_ID_1'
      Origin = 'NBFDADOS.PARAMETRO.PAR_UF_SIGLA'
    end
    object Q_PARPAR_NOME: TStringField
      FieldName = 'PAR_NOME'
      Origin = 'NBFDADOS.PARAMETRO.PAR_CEP'
      FixedChar = True
      Size = 30
    end
    object Q_PARPAR_RAZA: TStringField
      FieldName = 'PAR_RAZA'
      Origin = 'NBFDADOS.PARAMETRO.PAR_TEL'
      FixedChar = True
      Size = 50
    end
    object Q_PARPAR_CNPJ: TStringField
      FieldName = 'PAR_CNPJ'
      Origin = 'NBFDADOS.PARAMETRO.PAR_FAX'
      FixedChar = True
      Size = 15
    end
    object Q_PARPAR_INSC: TStringField
      FieldName = 'PAR_INSC'
      Origin = 'NBFDADOS.PARAMETRO.PAR_EMAIL'
      FixedChar = True
      Size = 15
    end
    object Q_PARPAR_ENDERECO: TStringField
      FieldName = 'PAR_ENDERECO'
      Origin = 'NBFDADOS.PARAMETRO.AR_ID'
      FixedChar = True
      Size = 50
    end
    object Q_PARPAR_ENDERECO_COMPL: TStringField
      FieldName = 'PAR_ENDERECO_COMPL'
      Origin = 'NBFDADOS.PARAMETRO.MUN_ID'
      FixedChar = True
    end
    object Q_PARPAR_ENDERECO_BAIRRO: TStringField
      FieldName = 'PAR_ENDERECO_BAIRRO'
      Origin = 'NBFDADOS.PARAMETRO.AR_ID_OPER'
      FixedChar = True
      Size = 40
    end
    object Q_PARPAR_UF_SIGLA: TStringField
      FieldName = 'PAR_UF_SIGLA'
      Origin = 'NBFDADOS.PARAMETRO.ULT_TAG'
      FixedChar = True
      Size = 2
    end
    object Q_PARPAR_CEP: TStringField
      FieldName = 'PAR_CEP'
      Origin = 'NBFDADOS.PARAMETRO.PALLET_M2'
      FixedChar = True
      Size = 8
    end
    object Q_PARPAR_TEL: TStringField
      FieldName = 'PAR_TEL'
      Origin = 'NBFDADOS.PARAMETRO.CO_SER_ID'
      FixedChar = True
      Size = 11
    end
    object Q_PARPAR_FAX: TStringField
      FieldName = 'PAR_FAX'
      Origin = 'NBFDADOS.PARAMETRO.EN_SER_ID'
      FixedChar = True
      Size = 11
    end
    object Q_PARPAR_EMAIL: TStringField
      FieldName = 'PAR_EMAIL'
      Origin = 'NBFDADOS.PARAMETRO.FLAGTELA'
      FixedChar = True
      Size = 60
    end
    object Q_PARAR_ID: TIntegerField
      FieldName = 'AR_ID'
      Origin = 'NBFDADOS.PARAMETRO.FLAGTELA2'
    end
    object Q_PARMUN_ID_1: TIntegerField
      FieldName = 'MUN_ID_1'
      Origin = 'NBFDADOS.PARAMETRO.FLAGTELA3'
    end
    object Q_PARAR_ID_OPER: TIntegerField
      FieldName = 'AR_ID_OPER'
      Origin = 'NBFDADOS.PARAMETRO.CLIN_ID'
    end
    object Q_PARULT_TAG: TIntegerField
      FieldName = 'ULT_TAG'
      Origin = 'NBFDADOS.PARAMETRO.VERSAO'
    end
    object Q_PARPALLET_M2: TFloatField
      FieldName = 'PALLET_M2'
      Origin = 'NBFDADOS.PARAMETRO.FLAGTELA_USUARIO'
    end
    object Q_PARCO_SER_ID: TIntegerField
      FieldName = 'CO_SER_ID'
      Origin = 'NBFDADOS.PARAMETRO.FLAGTELA_DATA'
    end
    object Q_PAREN_SER_ID: TIntegerField
      FieldName = 'EN_SER_ID'
      Origin = 'NBFDADOS.PARAMETRO.FLAGTELA2_USUARIO'
    end
    object Q_PARFLAGTELA: TStringField
      FieldName = 'FLAGTELA'
      Origin = 'NBFDADOS.PARAMETRO.FLAGTELA2_DATA'
      FixedChar = True
      Size = 1
    end
    object Q_PARFLAGTELA2: TStringField
      FieldName = 'FLAGTELA2'
      Origin = 'NBFDADOS.PARAMETRO.PORTA'
      FixedChar = True
      Size = 1
    end
    object Q_PARFLAGTELA3: TStringField
      FieldName = 'FLAGTELA3'
      Origin = 'NBFDADOS.PARAMETRO.HOST'
      FixedChar = True
      Size = 1
    end
    object Q_PARCLIN_ID_1: TIntegerField
      FieldName = 'CLIN_ID_1'
      Origin = 'NBFDADOS.PARAMETRO.CAMINHO'
    end
    object Q_PARVERSAO: TStringField
      FieldName = 'VERSAO'
      Origin = 'NBFDADOS.PARAMETRO.ULT_FATURA'
      FixedChar = True
      Size = 50
    end
    object Q_PARFLAGTELA_USUARIO: TStringField
      FieldName = 'FLAGTELA_USUARIO'
      Origin = 'NBFDADOS.PARAMETRO.ULT_NF'
      FixedChar = True
    end
    object Q_PARFLAGTELA_DATA: TDateTimeField
      FieldName = 'FLAGTELA_DATA'
      Origin = 'NBFDADOS.PARAMETRO.ULT_CONH'
    end
    object Q_PARFLAGTELA2_USUARIO: TStringField
      FieldName = 'FLAGTELA2_USUARIO'
      Origin = 'NBFDADOS.PARAMETRO.AR_ID_AVARIA'
      FixedChar = True
    end
    object Q_PARFLAGTELA2_DATA: TDateTimeField
      FieldName = 'FLAGTELA2_DATA'
      Origin = 'NBFDADOS.PARAMETRO.ULT_MINUTA'
    end
    object Q_PARPORTA: TIntegerField
      FieldName = 'PORTA'
      Origin = 'NBFDADOS.PARAMETRO.ULT_NFPROV'
    end
    object Q_PARHOST: TStringField
      FieldName = 'HOST'
      Origin = 'NBFDADOS.PARAMETRO.ULT_CONHPROV'
      FixedChar = True
      Size = 30
    end
    object Q_PARCAMINHO: TStringField
      FieldName = 'CAMINHO'
      Origin = 'NBFDADOS.PARAMETRO.ULT_MINUTAPROV'
      FixedChar = True
      Size = 40
    end
    object Q_PARULT_FATURA: TIntegerField
      FieldName = 'ULT_FATURA'
      Origin = 'NBFDADOS.PARAMETRO.CAMINHO_MATRICIAL'
    end
    object Q_PARULT_NF: TIntegerField
      FieldName = 'ULT_NF'
      Origin = 'NBFDADOS.PARAMETRO.CAMINHO_MATRICIAL_FATURA'
    end
    object Q_PARULT_CONH: TIntegerField
      FieldName = 'ULT_CONH'
      Origin = 'NBFDADOS.PARAMETRO.CAMINHO_MATRICIAL_CONH'
    end
    object Q_PARAR_ID_AVARIA: TIntegerField
      FieldName = 'AR_ID_AVARIA'
      Origin = 'NBFDADOS.PARAMETRO.DATA'
    end
    object Q_PARULT_MINUTA: TIntegerField
      FieldName = 'ULT_MINUTA'
      Origin = 'NBFDADOS.PARAMETRO.ConnectionString'
    end
    object Q_PARULT_NFPROV: TIntegerField
      FieldName = 'ULT_NFPROV'
      Origin = 'NBFDADOS.PARAMETRO.IBGE_ID'
    end
    object Q_PARULT_CONHPROV: TIntegerField
      FieldName = 'ULT_CONHPROV'
      Origin = 'NBFDADOS.PARAMETRO.PAR_ID'
    end
    object Q_PARULT_MINUTAPROV: TIntegerField
      FieldName = 'ULT_MINUTAPROV'
      Origin = 'NBFDADOS.PARAMETRO.CLIN_ID'
    end
    object Q_PARCAMINHO_MATRICIAL: TStringField
      FieldName = 'CAMINHO_MATRICIAL'
      Origin = 'NBFDADOS.PARAMETRO.DATA'
      FixedChar = True
      Size = 40
    end
    object Q_PARCAMINHO_MATRICIAL_FATURA: TStringField
      FieldName = 'CAMINHO_MATRICIAL_FATURA'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_NOME'
      FixedChar = True
      Size = 40
    end
    object Q_PARCAMINHO_MATRICIAL_CONH_1: TStringField
      FieldName = 'CAMINHO_MATRICIAL_CONH_1'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_ENDERECO'
      FixedChar = True
      Size = 40
    end
    object Q_PARDATA_1: TDateTimeField
      FieldName = 'DATA_1'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_ENDERECO_COMPL'
    end
    object Q_PARConnectionString: TStringField
      FieldName = 'ConnectionString'
      Origin = 'NBFDADOS.PARAMETRO.MUN_ID'
      FixedChar = True
      Size = 255
    end
    object Q_PARIBGE_ID: TIntegerField
      FieldName = 'IBGE_ID'
      Origin = 'NBFDADOS.PARAMETRO.CAMINHO_MATRICIAL_CONH'
    end
  end
  object Q_UF: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    DataSource = DS_CLIN
    SQL.Strings = (
      'Select * from uf where UF_SIGLA = :UF_SIGLA')
    ValidateWithMask = True
    Left = 440
    Top = 45
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'UF_SIGLA'
        ParamType = ptUnknown
      end>
    object Q_UFUF_SIGLA: TStringField
      FieldName = 'UF_SIGLA'
      Origin = 'NBFDADOS.uf.UF_SIGLA'
      FixedChar = True
      Size = 2
    end
    object Q_UFUF_NOME: TStringField
      FieldName = 'UF_NOME'
      Origin = 'NBFDADOS.uf.UF_NOME'
      FixedChar = True
      Size = 30
    end
    object Q_UFUF_ALIQUOTA: TFloatField
      FieldName = 'UF_ALIQUOTA'
      Origin = 'NBFDADOS.uf.UF_ALIQUOTA'
    end
  end
  object DS_CLIN: TwwDataSource
    DataSet = Q_CLIN
    Left = 488
    Top = 120
  end
  object DS_UF: TwwDataSource
    DataSet = Q_UF
    Left = 173
    Top = 160
  end
  object DS_PAR: TwwDataSource
    DataSet = Q_PAR
    Left = 382
    Top = 160
  end
  object T_ACEN: TwwTable
    DatabaseName = 'NBF'
    TableName = 'Acentuacao.DB'
    SyncSQLByRange = True
    NarrowSearch = False
    ValidateWithMask = True
    Left = 536
    Top = 64
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
  object Q_AUX1: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    ValidateWithMask = True
    Left = 704
    Top = 95
  end
  object Q_CFA: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select CFA_ID,CFA_CODI from faturamento   where CFA_ID = :CFA_ID')
    ValidateWithMask = True
    Left = 506
    Top = 38
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CFA_ID'
        ParamType = ptInput
      end>
    object Q_CFACFA_ID: TAutoIncField
      FieldName = 'CFA_ID'
      Origin = 'NBFDADOS.faturamento.CFA_ID'
    end
    object Q_CFACFA_CODI: TStringField
      FieldName = 'CFA_CODI'
      Origin = 'NBFDADOS.faturamento.CFA_CODI'
      FixedChar = True
      Size = 4
    end
  end
  object STP_CALC: TwwStoredProc
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    StoredProcName = 'dbo.STP_OSCALCULO'
    ValidateWithMask = True
    Left = 245
    Top = 74
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
  object Q_OCE: TwwQuery
    CachedUpdates = True
    BeforeInsert = Q_OCEBeforeInsert
    BeforePost = Q_OCEBeforePost
    AfterPost = Q_OCEAfterPost
    OnNewRecord = Q_OCENewRecord
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    RequestLive = True
    SQL.Strings = (
      'Select '
      'A.*'
      ' from ORDEM_COLETA_ENTREGA A'
      'where A.OS_ID = :OS_ID'
      '')
    UpdateObject = UPD_OCE
    ControlType.Strings = (
      'ORD_TPCARGA;CustomEdit;wwDBComboBox5'
      'MARCADOR;CheckBox;*;'
      'ORD_STATUS;CustomEdit;DBCB_CLI_PESS')
    ValidateWithMask = True
    Left = 56
    Top = 248
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'OS_ID'
        ParamType = ptUnknown
      end>
    object Q_OCEMARCADOR: TStringField
      DisplayLabel = '***'
      DisplayWidth = 1
      FieldName = 'MARCADOR'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.MARCADOR'
      ProviderFlags = [pfInUpdate]
      OnChange = Q_OCEMARCADORChange
      FixedChar = True
      Size = 1
    end
    object Q_OCEORD_STATUS: TStringField
      Alignment = taCenter
      DisplayLabel = 'Situação'
      DisplayWidth = 1
      FieldName = 'ORD_STATUS'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_STATUS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object Q_OCEORD_CONH: TStringField
      DisplayLabel = 'Conhcto.Nº'
      DisplayWidth = 10
      FieldName = 'ORD_CONH'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_CONH'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 10
    end
    object Q_OCEORD_MINUTA: TStringField
      DisplayLabel = 'Minuta Nº'
      DisplayWidth = 10
      FieldName = 'ORD_MINUTA'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_MINUTA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 10
    end
    object Q_OCEOS_ID: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'OS'
      DisplayWidth = 10
      FieldName = 'OS_ID'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.OS_ID'
      ProviderFlags = [pfInUpdate]
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
      ProviderFlags = [pfInUpdate]
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
      ProviderFlags = [pfInUpdate]
      Size = 30
      Lookup = True
    end
    object Q_OCECLIFraza: TStringField
      DisplayLabel = 'Destinatário'
      DisplayWidth = 40
      FieldKind = fkLookup
      FieldName = 'CLIFraza'
      LookupDataSet = Q_CLIF3
      LookupKeyFields = 'CLIF_ID'
      LookupResultField = 'CLIF_RAZA'
      KeyFields = 'CLIF_ID'
      ProviderFlags = [pfInUpdate]
      Size = 40
      Lookup = True
    end
    object Q_OCEORD_ID: TAutoIncField
      Alignment = taCenter
      DisplayLabel = 'OC/E'
      DisplayWidth = 10
      FieldName = 'ORD_ID'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
      Visible = False
    end
    object Q_OCECFACODI: TStringField
      DisplayWidth = 4
      FieldKind = fkLookup
      FieldName = 'CFACODI'
      LookupDataSet = Q_CFA
      LookupKeyFields = 'CFA_ID'
      LookupResultField = 'CFA_CODI'
      KeyFields = 'CFA_ID'
      ProviderFlags = [pfInUpdate]
      Visible = False
      Size = 4
      Lookup = True
    end
    object Q_OCEORD_CONSIGN: TStringField
      DisplayWidth = 1
      FieldName = 'ORD_CONSIGN'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_CONSIGN'
      ProviderFlags = [pfInUpdate]
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_OCEORD_PESO_TOTAL: TFloatField
      DisplayLabel = 'Peso (Kg)'
      DisplayWidth = 18
      FieldName = 'ORD_PESO_TOTAL'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_PESO_TOTAL'
      ProviderFlags = [pfInUpdate]
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      EditFormat = '###,###,##0.0000'
    end
    object Q_OCEORD_VOLUME: TFloatField
      DisplayLabel = 'Volume (M3)'
      DisplayWidth = 18
      FieldName = 'ORD_VOLUME'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_VOLUME'
      ProviderFlags = [pfInUpdate]
      Visible = False
      DisplayFormat = '###,###,##0.000000'
      EditFormat = '###,###,##0.000000'
    end
    object Q_OCEORD_QTDE_PALLET: TFloatField
      DisplayLabel = 'Qtde Pallet'
      DisplayWidth = 10
      FieldName = 'ORD_QTDE_PALLET'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_QTDE_PALLET'
      ProviderFlags = [pfInUpdate]
      Visible = False
    end
    object Q_OCEORD_VALORTOTAL: TFloatField
      DisplayLabel = 'Valor'
      DisplayWidth = 15
      FieldName = 'ORD_VALORTOTAL'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_VALORTOTAL'
      ProviderFlags = [pfInUpdate]
      Visible = False
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_OCEORD_TPCARGA: TStringField
      DisplayLabel = 'Tp. Carga'
      DisplayWidth = 1
      FieldName = 'ORD_TPCARGA'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_TPCARGA'
      ProviderFlags = [pfInUpdate]
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_OCEORD_QTDE_UV: TFloatField
      DisplayLabel = 'Qtde.UV'
      DisplayWidth = 10
      FieldName = 'ORD_QTDE_UV'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_QTDE_UV'
      ProviderFlags = [pfInUpdate]
      Visible = False
      DisplayFormat = '0.000'
      EditFormat = '0.000'
    end
    object Q_OCEORD_PLACA: TStringField
      DisplayWidth = 8
      FieldName = 'ORD_PLACA'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_PLACA'
      ProviderFlags = [pfInUpdate]
      Visible = False
      FixedChar = True
      Size = 8
    end
    object Q_OCEORD_TOTALPREST: TFloatField
      DisplayWidth = 10
      FieldName = 'ORD_TOTALPREST'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_TOTALPREST'
      ProviderFlags = [pfInUpdate]
      Visible = False
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_OCEORD_VLR_ICMS: TFloatField
      DisplayWidth = 10
      FieldName = 'ORD_VLR_ICMS'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_VLR_ICMS'
      ProviderFlags = [pfInUpdate]
      Visible = False
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_OCEORD_NOTAS: TStringField
      DisplayWidth = 50
      FieldName = 'ORD_NOTAS'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_NOTAS'
      ProviderFlags = [pfInUpdate]
      Visible = False
      FixedChar = True
      Size = 50
    end
    object Q_OCETRANS_ID_REDES: TIntegerField
      DisplayWidth = 10
      FieldName = 'TRANS_ID_REDES'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.TRANS_ID_REDES'
      ProviderFlags = [pfInUpdate]
      Visible = False
    end
    object Q_OCEORD_PAGO: TStringField
      DisplayWidth = 1
      FieldName = 'ORD_PAGO'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_PAGO'
      ProviderFlags = [pfInUpdate]
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_OCECLIN_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'CLIN_ID'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.CLIN_ID'
      ProviderFlags = [pfInUpdate]
      Visible = False
    end
    object Q_OCEORD_VLR_FRETE: TFloatField
      DisplayWidth = 10
      FieldName = 'ORD_VLR_FRETE'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_VLR_FRETE'
      ProviderFlags = [pfInUpdate]
      Visible = False
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_OCEORD_VLR_SECCAT: TFloatField
      DisplayWidth = 10
      FieldName = 'ORD_VLR_SECCAT'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_VLR_SECCAT'
      ProviderFlags = [pfInUpdate]
      Visible = False
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_OCEORD_VLR_DESPACHO: TFloatField
      DisplayWidth = 10
      FieldName = 'ORD_VLR_DESPACHO'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_VLR_DESPACHO'
      ProviderFlags = [pfInUpdate]
      Visible = False
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_OCEORD_VLR_PEDAGIO: TFloatField
      DisplayWidth = 10
      FieldName = 'ORD_VLR_PEDAGIO'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_VLR_PEDAGIO'
      ProviderFlags = [pfInUpdate]
      Visible = False
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_OCEORD_VLR_OUTROS: TFloatField
      DisplayWidth = 10
      FieldName = 'ORD_VLR_OUTROS'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_VLR_OUTROS'
      ProviderFlags = [pfInUpdate]
      Visible = False
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_OCEVEIC_ID_RECEB: TIntegerField
      DisplayWidth = 10
      FieldName = 'VEIC_ID_RECEB'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.VEIC_ID_RECEB'
      ProviderFlags = [pfInUpdate]
      Visible = False
    end
    object Q_OCEREG_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'REG_ID'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.REG_ID'
      ProviderFlags = [pfInUpdate]
      Visible = False
    end
    object Q_OCEMANI_ID: TIntegerField
      FieldName = 'MANI_ID'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.MANI_ID'
      ProviderFlags = [pfInUpdate]
      Visible = False
    end
    object Q_OCETRANS_ID: TIntegerField
      FieldName = 'TRANS_ID'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.TRANS_ID'
      ProviderFlags = [pfInUpdate]
      Visible = False
    end
    object Q_OCEVEIC_ID: TIntegerField
      FieldName = 'VEIC_ID'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.VEIC_ID'
      ProviderFlags = [pfInUpdate]
      Visible = False
    end
    object Q_OCEORD_COLETA_ENTREGA: TStringField
      FieldName = 'ORD_COLETA_ENTREGA'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_COLETA_ENTREGA'
      ProviderFlags = [pfInUpdate]
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_OCEORD_COL_ENDERECO: TStringField
      FieldName = 'ORD_COL_ENDERECO'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_COL_ENDERECO'
      ProviderFlags = [pfInUpdate]
      Visible = False
      FixedChar = True
      Size = 50
    end
    object Q_OCEORD_COL_ENDERECO_COMPL: TStringField
      FieldName = 'ORD_COL_ENDERECO_COMPL'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_COL_ENDERECO_COMPL'
      ProviderFlags = [pfInUpdate]
      Visible = False
      FixedChar = True
    end
    object Q_OCEORD_COL_ENDERECO_BAIRRO: TStringField
      FieldName = 'ORD_COL_ENDERECO_BAIRRO'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_COL_ENDERECO_BAIRRO'
      ProviderFlags = [pfInUpdate]
      Visible = False
      FixedChar = True
    end
    object Q_OCEMUN_ID_COL: TIntegerField
      FieldName = 'MUN_ID_COL'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.MUN_ID_COL'
      ProviderFlags = [pfInUpdate]
      Visible = False
    end
    object Q_OCEORD_COL_MUNICIPIO: TStringField
      FieldName = 'ORD_COL_MUNICIPIO'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_COL_MUNICIPIO'
      ProviderFlags = [pfInUpdate]
      Visible = False
      FixedChar = True
      Size = 40
    end
    object Q_OCEUF_SIGLA_COL: TStringField
      FieldName = 'UF_SIGLA_COL'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.UF_SIGLA_COL'
      ProviderFlags = [pfInUpdate]
      Visible = False
      FixedChar = True
      Size = 2
    end
    object Q_OCEORD_COL_CEP: TStringField
      FieldName = 'ORD_COL_CEP'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_COL_CEP'
      ProviderFlags = [pfInUpdate]
      Visible = False
      EditMask = '99999-999;0;_'
      FixedChar = True
      Size = 8
    end
    object Q_OCEORD_COL_TEL1: TStringField
      FieldName = 'ORD_COL_TEL1'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_COL_TEL1'
      ProviderFlags = [pfInUpdate]
      Visible = False
      EditMask = '!\(999\)#999-9999;0; '
      FixedChar = True
      Size = 11
    end
    object Q_OCEORD_COL_TEL2: TStringField
      FieldName = 'ORD_COL_TEL2'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_COL_TEL2'
      ProviderFlags = [pfInUpdate]
      Visible = False
      EditMask = '!\(999\)#999-9999;0; '
      FixedChar = True
      Size = 11
    end
    object Q_OCEORD_COL_FAX: TStringField
      FieldName = 'ORD_COL_FAX'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_COL_FAX'
      ProviderFlags = [pfInUpdate]
      Visible = False
      EditMask = '!\(999\)#999-9999;0; '
      FixedChar = True
      Size = 11
    end
    object Q_OCEORD_COL_EMAIL: TStringField
      FieldName = 'ORD_COL_EMAIL'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_COL_EMAIL'
      ProviderFlags = [pfInUpdate]
      Visible = False
      FixedChar = True
      Size = 60
    end
    object Q_OCEORD_COL_CONTATO: TStringField
      FieldName = 'ORD_COL_CONTATO'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_COL_CONTATO'
      ProviderFlags = [pfInUpdate]
      Visible = False
      FixedChar = True
      Size = 50
    end
    object Q_OCEORD_ENT_ENDERECO: TStringField
      FieldName = 'ORD_ENT_ENDERECO'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_ENT_ENDERECO'
      ProviderFlags = [pfInUpdate]
      Visible = False
      FixedChar = True
      Size = 50
    end
    object Q_OCEORD_ENT_ENDERECO_COMPL: TStringField
      FieldName = 'ORD_ENT_ENDERECO_COMPL'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_ENT_ENDERECO_COMPL'
      ProviderFlags = [pfInUpdate]
      Visible = False
      FixedChar = True
    end
    object Q_OCEORD_ENT_ENDERECO_BAIRRO: TStringField
      FieldName = 'ORD_ENT_ENDERECO_BAIRRO'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_ENT_ENDERECO_BAIRRO'
      ProviderFlags = [pfInUpdate]
      Visible = False
      FixedChar = True
    end
    object Q_OCEMUN_ID_ENT: TIntegerField
      FieldName = 'MUN_ID_ENT'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.MUN_ID_ENT'
      ProviderFlags = [pfInUpdate]
      Visible = False
    end
    object Q_OCEORD_ENT_MUNICIPIO: TStringField
      FieldName = 'ORD_ENT_MUNICIPIO'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_ENT_MUNICIPIO'
      ProviderFlags = [pfInUpdate]
      Visible = False
      FixedChar = True
      Size = 40
    end
    object Q_OCEUF_SIGLA_ENT: TStringField
      FieldName = 'UF_SIGLA_ENT'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.UF_SIGLA_ENT'
      ProviderFlags = [pfInUpdate]
      Visible = False
      FixedChar = True
      Size = 2
    end
    object Q_OCEORD_ENT_CEP: TStringField
      FieldName = 'ORD_ENT_CEP'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_ENT_CEP'
      ProviderFlags = [pfInUpdate]
      Visible = False
      EditMask = '99999-999;0;_'
      FixedChar = True
      Size = 8
    end
    object Q_OCEORD_ENT_TEL1: TStringField
      FieldName = 'ORD_ENT_TEL1'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_ENT_TEL1'
      ProviderFlags = [pfInUpdate]
      Visible = False
      EditMask = '!\(999\)#999-9999;0; '
      FixedChar = True
      Size = 11
    end
    object Q_OCEORD_ENT_TEL2: TStringField
      FieldName = 'ORD_ENT_TEL2'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_ENT_TEL2'
      ProviderFlags = [pfInUpdate]
      Visible = False
      EditMask = '!\(999\)#999-9999;0; '
      FixedChar = True
      Size = 11
    end
    object Q_OCEORD_ENT_FAX: TStringField
      FieldName = 'ORD_ENT_FAX'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_ENT_FAX'
      ProviderFlags = [pfInUpdate]
      Visible = False
      EditMask = '!\(999\)#999-9999;0; '
      FixedChar = True
      Size = 11
    end
    object Q_OCEORD_ENT_EMAIL: TStringField
      FieldName = 'ORD_ENT_EMAIL'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_ENT_EMAIL'
      ProviderFlags = [pfInUpdate]
      Visible = False
      FixedChar = True
      Size = 60
    end
    object Q_OCEORD_ENT_CONTATO: TStringField
      FieldName = 'ORD_ENT_CONTATO'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_ENT_CONTATO'
      ProviderFlags = [pfInUpdate]
      Visible = False
      FixedChar = True
      Size = 50
    end
    object Q_OCECLIF_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'CLIF_ID'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.CLIF_ID'
      ProviderFlags = [pfInUpdate]
      Visible = False
    end
    object Q_OCECLINraza: TStringField
      DisplayWidth = 40
      FieldKind = fkLookup
      FieldName = 'CLINraza'
      LookupDataSet = Q_CLIN
      LookupKeyFields = 'CLIN_ID'
      LookupResultField = 'CLIN_RAZA'
      KeyFields = 'CLIN_ID'
      ProviderFlags = [pfInUpdate]
      Visible = False
      Size = 40
      Lookup = True
    end
    object Q_OCETRANSRaza: TStringField
      DisplayWidth = 40
      FieldKind = fkLookup
      FieldName = 'TRANSRaza'
      LookupDataSet = Q_TRANS
      LookupKeyFields = 'TRANS_ID'
      LookupResultField = 'TRANS_RAZA'
      KeyFields = 'TRANS_ID_REDES'
      ProviderFlags = [pfInUpdate]
      Visible = False
      Size = 40
      Lookup = True
    end
    object Q_OCEMUNIdesc: TStringField
      FieldKind = fkLookup
      FieldName = 'MUNIdesc'
      LookupDataSet = Q_MUNI
      LookupKeyFields = 'MUN_ID'
      LookupResultField = 'MUN_NOME'
      KeyFields = 'MUN_ID_COL'
      ProviderFlags = [pfInUpdate]
      Visible = False
      Size = 30
      Lookup = True
    end
    object Q_OCEMUNIdescENT: TStringField
      FieldKind = fkLookup
      FieldName = 'MUNIdescENT'
      LookupDataSet = Q_MUNI2
      LookupKeyFields = 'MUN_ID'
      LookupResultField = 'MUN_NOME'
      KeyFields = 'MUN_ID_ENT'
      ProviderFlags = [pfInUpdate]
      Visible = False
      Size = 40
      Lookup = True
    end
    object Q_OCETransEND: TStringField
      FieldKind = fkLookup
      FieldName = 'TransEND'
      LookupDataSet = Q_TRANS
      LookupKeyFields = 'TRANS_ID'
      LookupResultField = 'TRANS_ENDERECO'
      KeyFields = 'TRANS_ID_REDES'
      ProviderFlags = [pfInUpdate]
      Visible = False
      Size = 40
      Lookup = True
    end
    object Q_OCETransENDCOMPL: TStringField
      FieldKind = fkLookup
      FieldName = 'TransENDCOMPL'
      LookupDataSet = Q_TRANS
      LookupKeyFields = 'TRANS_ID'
      LookupResultField = 'TRANS_ENDERECO_COMPL'
      KeyFields = 'TRANS_ID_REDES'
      ProviderFlags = [pfInUpdate]
      Visible = False
      Lookup = True
    end
    object Q_OCETransCNPJ: TStringField
      FieldKind = fkLookup
      FieldName = 'TransCNPJ'
      LookupDataSet = Q_TRANS
      LookupKeyFields = 'TRANS_ID'
      LookupResultField = 'TRANS_CNPJ'
      KeyFields = 'TRANS_ID_REDES'
      ProviderFlags = [pfInUpdate]
      Visible = False
      Size = 15
      Lookup = True
    end
    object Q_OCETransPESSOA: TStringField
      FieldKind = fkLookup
      FieldName = 'TransPESSOA'
      LookupDataSet = Q_TRANS
      LookupKeyFields = 'TRANS_ID'
      LookupResultField = 'TRANS_PESSOA'
      KeyFields = 'TRANS_ID_REDES'
      ProviderFlags = [pfInUpdate]
      Visible = False
      Size = 1
      Lookup = True
    end
    object Q_OCETransMUN_ID: TIntegerField
      FieldKind = fkLookup
      FieldName = 'TransMUN_ID'
      LookupDataSet = Q_TRANS
      LookupKeyFields = 'TRANS_ID'
      LookupResultField = 'MUN_ID'
      KeyFields = 'TRANS_ID_REDES'
      ProviderFlags = [pfInUpdate]
      Visible = False
      Lookup = True
    end
    object Q_OCEORD_ALIQ: TFloatField
      FieldName = 'ORD_ALIQ'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_ID'
      ProviderFlags = [pfInUpdate]
      Visible = False
    end
    object Q_OCEORD_REDESPACHO: TStringField
      FieldName = 'ORD_REDESPACHO'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_REDESPACHO'
      ProviderFlags = [pfInUpdate]
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_OCECFA_ID: TIntegerField
      FieldName = 'CFA_ID'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.CFA_ID'
      ProviderFlags = [pfInUpdate]
      Visible = False
    end
    object Q_OCEUFCli: TStringField
      FieldKind = fkLookup
      FieldName = 'UFCli'
      LookupDataSet = Q_CLIN
      LookupKeyFields = 'CLIN_ID'
      LookupResultField = 'UF_SIGLA'
      KeyFields = 'CLIN_ID'
      ProviderFlags = [pfInUpdate]
      Visible = False
      Size = 2
      Lookup = True
    end
    object Q_OCEORD_OBS: TStringField
      FieldName = 'ORD_OBS'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_OBS'
      ProviderFlags = [pfInUpdate]
      Visible = False
      FixedChar = True
      Size = 50
    end
    object Q_OCEORD_GENERICO: TStringField
      FieldName = 'ORD_GENERICO'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_GENERICO'
      ProviderFlags = [pfInUpdate]
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_OCEORD_TXENTREGA: TFloatField
      FieldName = 'ORD_TXENTREGA'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_TXENTREGA'
    end
    object Q_OCEORD_SEGURO: TFloatField
      FieldName = 'ORD_SEGURO'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_SEGURO'
    end
    object Q_OCENFI_REENTREGA: TIntegerField
      FieldName = 'NFI_REENTREGA'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.NFI_REENTREGA'
    end
    object Q_OCEGEROU_NFSE: TStringField
      FieldName = 'GEROU_NFSE'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.GEROU_NFSE'
      FixedChar = True
      Size = 1
    end
    object Q_OCEORD_DATA: TDateTimeField
      FieldName = 'ORD_DATA'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_DATA'
    end
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
      '  CLIF_ID = :CLIF_ID,'
      '  ORD_TPCARGA = :ORD_TPCARGA,'
      '  ORD_QTDE_UV = :ORD_QTDE_UV,'
      '  ORD_REDESPACHO = :ORD_REDESPACHO,'
      '  ORD_PLACA = :ORD_PLACA,'
      '  CFA_ID = :CFA_ID,'
      '  ORD_TOTALPREST = :ORD_TOTALPREST,'
      '  ORD_VLR_ICMS = :ORD_VLR_ICMS,'
      '  ORD_NOTAS = :ORD_NOTAS,'
      '  TRANS_ID_REDES = :TRANS_ID_REDES,'
      '  ORD_PAGO = :ORD_PAGO,'
      '  CLIN_ID = :CLIN_ID,'
      '  ORD_CONSIGN = :ORD_CONSIGN,'
      '  ORD_VLR_FRETE = :ORD_VLR_FRETE,'
      '  ORD_VLR_SECCAT = :ORD_VLR_SECCAT,'
      '  ORD_VLR_DESPACHO = :ORD_VLR_DESPACHO,'
      '  ORD_VLR_PEDAGIO = :ORD_VLR_PEDAGIO,'
      '  ORD_VLR_OUTROS = :ORD_VLR_OUTROS,'
      '  ORD_CONH = :ORD_CONH,'
      '  ORD_ALIQ = :ORD_ALIQ,'
      '  MARCADOR = :MARCADOR,'
      '  ORD_MINUTA = :ORD_MINUTA,'
      '  ORD_STATUS = :ORD_STATUS,'
      '  ORD_OBS = :ORD_OBS,'
      '  ORD_GENERICO = :ORD_GENERICO,'
      '  ORD_TXENTREGA = :ORD_TXENTREGA,'
      '  ORD_SEGURO = :ORD_SEGURO,'
      '  GEROU_NFSE = :GEROU_NFSE,'
      '  ORD_DATA = :ORD_DATA'
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
      
        '   ORD_ENT_CONTATO, CLIF_ID, ORD_TPCARGA, ORD_QTDE_UV, ORD_REDES' +
        'PACHO, '
      
        '   ORD_PLACA, CFA_ID, ORD_TOTALPREST, ORD_VLR_ICMS, ORD_NOTAS, T' +
        'RANS_ID_REDES, '
      
        '   ORD_PAGO, CLIN_ID, ORD_CONSIGN, ORD_VLR_FRETE, ORD_VLR_SECCAT' +
        ', ORD_VLR_DESPACHO, '
      
        '   ORD_VLR_PEDAGIO, ORD_VLR_OUTROS, ORD_CONH, ORD_ALIQ, MARCADOR' +
        ', ORD_MINUTA, '
      '   ORD_STATUS, ORD_OBS, ORD_GENERICO)'
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
      
        '   :ORD_ENT_EMAIL, :ORD_ENT_CONTATO, :CLIF_ID, :ORD_TPCARGA, :OR' +
        'D_QTDE_UV, '
      
        '   :ORD_REDESPACHO, :ORD_PLACA, :CFA_ID, :ORD_TOTALPREST, :ORD_V' +
        'LR_ICMS, '
      
        '   :ORD_NOTAS, :TRANS_ID_REDES, :ORD_PAGO, :CLIN_ID, :ORD_CONSIG' +
        'N, :ORD_VLR_FRETE, '
      
        '   :ORD_VLR_SECCAT, :ORD_VLR_DESPACHO, :ORD_VLR_PEDAGIO, :ORD_VL' +
        'R_OUTROS, '
      
        '   :ORD_CONH, :ORD_ALIQ, :MARCADOR, :ORD_MINUTA, :ORD_STATUS, :O' +
        'RD_OBS, '
      '   :ORD_GENERICO)')
    DeleteSQL.Strings = (
      'delete from ORDEM_COLETA_ENTREGA'
      'where'
      '  ORD_ID = :OLD_ORD_ID')
    Left = 183
    Top = 405
  end
  object DS_OCE: TwwDataSource
    DataSet = cdsOCE
    OnDataChange = DS_OCEDataChange
    Left = 440
    Top = 480
  end
  object DS_CFA: TwwDataSource
    DataSet = Q_CFA
    Left = 35
    Top = 11
  end
  object Q_AUX2: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    ValidateWithMask = True
    Left = 592
    Top = 38
  end
  object DS_CLIF3: TwwDataSource
    DataSet = Q_CLIF3
    OnDataChange = DS_OCEDataChange
    Left = 418
    Top = 56
  end
  object Q_NF99: TwwQuery
    CachedUpdates = True
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    DataSource = DS_MANI
    RequestLive = True
    SQL.Strings = (
      ' Select  A.NFI_CODI,A.NFI_NUMERO ,A.NFI_MARCADOR_CTRCGEN,'
      ' A.NFI_TOTA,A.NFI_PBRU,A.NFI_VOL'
      ' from NF A '
      ' where  A.MANI_ID = :MANI_ID'
      ' order by A.NFI_NUMERO')
    UpdateObject = UPD_NF99
    ControlType.Strings = (
      'NFI_MARCADOR_CTRCGEN;CheckBox;*;')
    ValidateWithMask = True
    Left = 707
    Top = 129
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'MANI_ID'
        ParamType = ptUnknown
      end>
    object Q_NF99NFI_MARCADOR_CTRCGEN: TStringField
      DisplayLabel = 'Marcador'
      DisplayWidth = 1
      FieldName = 'NFI_MARCADOR_CTRCGEN'
      Origin = 'NBFDADOS.NF.NFI_MARCADOR_CTRCGEN'
      OnChange = Q_NF99NFI_MARCADOR_CTRCGENChange
      FixedChar = True
      Size = 1
    end
    object Q_NF99NFI_NUMERO: TStringField
      DisplayLabel = 'NF Número'
      DisplayWidth = 13
      FieldName = 'NFI_NUMERO'
      Origin = 'NBFDADOS.NF.NFI_NUMERO'
      FixedChar = True
      Size = 10
    end
    object Q_NF99NFI_CODI: TAutoIncField
      FieldName = 'NFI_CODI'
      Origin = 'NBFDADOS.NF.NFI_CODI'
      Visible = False
    end
    object Q_NF99NFI_TOTA: TFloatField
      FieldName = 'NFI_TOTA'
      Origin = 'NBFDADOS.NF.NFI_TOTA'
      Visible = False
    end
    object Q_NF99NFI_PBRU: TFloatField
      FieldName = 'NFI_PBRU'
      Origin = 'NBFDADOS.NF.NFI_PBRU'
      Visible = False
    end
    object Q_NF99NFI_VOL: TFloatField
      FieldName = 'NFI_VOL'
      Origin = 'NBFDADOS.NF.NFI_VOL'
      Visible = False
    end
  end
  object DS_NF99: TwwDataSource
    DataSet = Q_NF99
    OnDataChange = DS_OCEDataChange
    Left = 122
    Top = 11
  end
  object Q_MANI: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'select MANI_ID,TRANS_ID,VEIC_ID,MANI_TIPOCARGA,'
      'PAR_ID,REG_ID,VEIC_ID_FRETE,MOT_ID'
      ' from manifesto'
      'where  CONFIRMA_MANI = '#39'S'#39
      'and    MANI_ID in('
      ' Select  A.MANI_ID'
      ' from NF A,MUNICIPIO C, OS D, CONTRATO E '
      ' where A.MUN_ID = C.MUN_ID '
      ' and  A.OS_ID = D.OS_ID'
      ' and D.CTT_ID = E.CTT_ID '
      ' and (A.TDOC_ID = 1 or A.TDOC_ID = 3) '
      ' and ( A.NFI_STATUS is null or A.NFI_STATUS <> '#39'C'#39' ) '
      ' and A.NFI_TRANS = '#39'S'#39
      ' and E.PAR_ID  = 2'
      ' AND (A.ORD_ID is null or A.ORD_ID = '#39#39')'
      ' and A.NFI_EMIT_CLI = 267'
      ' and A.OS_ID = 21617 )')
    ControlType.Strings = (
      'NFI_MARCADOR_CTRCGEN;CheckBox;*;')
    ValidateWithMask = True
    Left = 683
    Top = 177
    object Q_MANIMANI_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'MANI_ID'
    end
    object Q_MANITRANS_ID: TIntegerField
      FieldName = 'TRANS_ID'
    end
    object Q_MANIVEIC_ID: TIntegerField
      FieldName = 'VEIC_ID'
    end
    object Q_MANIMANI_TIPOCARGA: TStringField
      FieldName = 'MANI_TIPOCARGA'
      FixedChar = True
      Size = 1
    end
    object Q_MANIPAR_ID: TIntegerField
      FieldName = 'PAR_ID'
    end
    object Q_MANIREG_ID: TIntegerField
      FieldName = 'REG_ID'
    end
    object Q_MANIVEIC_ID_FRETE: TIntegerField
      FieldName = 'VEIC_ID_FRETE'
    end
    object Q_MANIMOT_ID: TIntegerField
      FieldName = 'MOT_ID'
    end
  end
  object DS_MANI: TwwDataSource
    DataSet = Q_MANI
    OnDataChange = DS_OCEDataChange
    Left = 666
    Top = 251
  end
  object UPD_NF99: TUpdateSQL
    ModifySQL.Strings = (
      'update NF'
      'set'
      '  NFI_NUMERO = :NFI_NUMERO,'
      '  NFI_MARCADOR_CTRCGEN = :NFI_MARCADOR_CTRCGEN,'
      '  NFI_TOTA = :NFI_TOTA,'
      '  NFI_PBRU = :NFI_PBRU,'
      '  NFI_VOL = :NFI_VOL'
      'where'
      '  NFI_CODI = :OLD_NFI_CODI')
    InsertSQL.Strings = (
      'insert into NF'
      
        '  (NFI_NUMERO, NFI_MARCADOR_CTRCGEN, NFI_TOTA, NFI_PBRU, NFI_VOL' +
        ')'
      'values'
      
        '  (:NFI_NUMERO, :NFI_MARCADOR_CTRCGEN, :NFI_TOTA, :NFI_PBRU, :NF' +
        'I_VOL)')
    DeleteSQL.Strings = (
      'delete from NF'
      'where'
      '  NFI_CODI = :OLD_NFI_CODI')
    Left = 179
    Top = 152
  end
  object qrCFOP: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select cfa_codi from faturamento'
      'where cfa_id = :cfa_id')
    ValidateWithMask = True
    Left = 520
    Top = 38
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cfa_id'
        ParamType = ptUnknown
      end>
    object qrCFOPcfa_codi: TStringField
      FieldName = 'cfa_codi'
      FixedChar = True
      Size = 4
    end
  end
  object dsCFOP: TDataSource
    DataSet = qrCFOP
    Left = 75
    Top = 11
  end
  object qrDesconto: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'select clin_desconto, uf_sigla from clientenbf'
      'where clin_id = :clin_id')
    ValidateWithMask = True
    Left = 640
    Top = 70
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'clin_id'
        ParamType = ptUnknown
      end>
    object qrDescontoclin_desconto: TFloatField
      FieldName = 'clin_desconto'
    end
    object qrDescontouf_sigla: TStringField
      FieldName = 'uf_sigla'
      FixedChar = True
      Size = 2
    end
  end
  object qrLoad: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select nfi_load from nf where ord_id = :ord')
    ValidateWithMask = True
    Left = 248
    Top = 142
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ord'
        ParamType = ptUnknown
      end>
    object qrLoadnfi_load: TStringField
      FieldName = 'nfi_load'
      FixedChar = True
      Size = 15
    end
  end
  object qrConfirma: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'SELECT A.* FROM OEC_AUX A '
      'INNER JOIN ORDEM_COLETA_ENTREGA B ON A.ORD_ID = B.ORD_ID'
      'WHERE B.OS_ID = :OS_ID')
    ValidateWithMask = True
    Left = 344
    Top = 302
    ParamData = <
      item
        DataType = ftInteger
        Name = 'OS_ID'
        ParamType = ptInput
      end>
    object qrConfirmaORD_ID: TIntegerField
      FieldName = 'ORD_ID'
      Origin = 'NBFDADOS.OEC_AUX.ORD_ID'
    end
    object qrConfirmaVLR_FRETE: TFloatField
      FieldName = 'VLR_FRETE'
      Origin = 'NBFDADOS.OEC_AUX.VLR_FRETE'
    end
    object qrConfirmaTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'NBFDADOS.OEC_AUX.TOTAL'
    end
  end
  object dspOCE: TDataSetProvider
    DataSet = Q_OCE
    Constraints = True
    UpdateMode = upWhereKeyOnly
    Left = 546
    Top = 143
  end
  object cdsOCE: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOCE'
    BeforeInsert = cdsOCEBeforeInsert
    BeforePost = cdsOCEBeforePost
    AfterPost = cdsOCEAfterPost
    OnNewRecord = cdsOCENewRecord
    Left = 698
    Top = 463
    object cdsOCEMARCADOR: TStringField
      DisplayLabel = '***'
      DisplayWidth = 1
      FieldName = 'MARCADOR'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.MARCADOR'
      OnChange = cdsOCEMARCADORChange
      FixedChar = True
      Size = 1
    end
    object cdsOCEORD_STATUS: TStringField
      DisplayLabel = 'Situação'
      DisplayWidth = 1
      FieldName = 'ORD_STATUS'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_STATUS'
      FixedChar = True
      Size = 1
    end
    object cdsOCEORD_CONH: TStringField
      DisplayLabel = 'Conhcto.Nº'
      DisplayWidth = 10
      FieldName = 'ORD_CONH'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_CONH'
      FixedChar = True
      Size = 10
    end
    object cdsOCEORD_MINUTA: TStringField
      DisplayLabel = 'Minuta Nº'
      DisplayWidth = 10
      FieldName = 'ORD_MINUTA'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_MINUTA'
      FixedChar = True
      Size = 10
    end
    object cdsOCEOS_ID: TIntegerField
      DisplayLabel = 'OS'
      DisplayWidth = 10
      FieldName = 'OS_ID'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.OS_ID'
    end
    object cdsOCEVEICNOME: TStringField
      DisplayLabel = 'Veículo Cobrar'
      DisplayWidth = 19
      FieldName = 'VEICNOME'
      ReadOnly = True
      Size = 30
    end
    object cdsOCEREGNOME: TStringField
      DisplayLabel = 'Região Cobrar'
      DisplayWidth = 18
      FieldName = 'REGNOME'
      ReadOnly = True
      Size = 30
    end
    object cdsOCECLIFraza: TStringField
      DisplayLabel = 'Destinatário'
      DisplayWidth = 40
      FieldName = 'CLIFraza'
      ReadOnly = True
      Size = 40
    end
    object cdsOCECFACODI: TStringField
      FieldName = 'CFACODI'
      ReadOnly = True
      Visible = False
      Size = 4
    end
    object cdsOCEORD_ID: TAutoIncField
      FieldName = 'ORD_ID'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_ID'
      ReadOnly = True
      Visible = False
    end
    object cdsOCEORD_CONSIGN: TStringField
      FieldName = 'ORD_CONSIGN'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_CONSIGN'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object cdsOCEORD_PESO_TOTAL: TFloatField
      FieldName = 'ORD_PESO_TOTAL'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_PESO_TOTAL'
      Visible = False
    end
    object cdsOCEORD_VOLUME: TFloatField
      FieldName = 'ORD_VOLUME'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_VOLUME'
      Visible = False
    end
    object cdsOCEORD_QTDE_PALLET: TFloatField
      FieldName = 'ORD_QTDE_PALLET'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_QTDE_PALLET'
      Visible = False
      DisplayFormat = '###,##0.00'
    end
    object cdsOCEORD_VALORTOTAL: TFloatField
      FieldName = 'ORD_VALORTOTAL'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_VALORTOTAL'
      Visible = False
    end
    object cdsOCEORD_TPCARGA: TStringField
      FieldName = 'ORD_TPCARGA'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_TPCARGA'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object cdsOCEORD_QTDE_UV: TFloatField
      FieldName = 'ORD_QTDE_UV'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_QTDE_UV'
      Visible = False
    end
    object cdsOCEORD_PLACA: TStringField
      FieldName = 'ORD_PLACA'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_PLACA'
      Visible = False
      FixedChar = True
      Size = 8
    end
    object cdsOCEORD_TOTALPREST: TFloatField
      FieldName = 'ORD_TOTALPREST'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_TOTALPREST'
      Visible = False
      DisplayFormat = '###,##0.00'
    end
    object cdsOCEORD_VLR_ICMS: TFloatField
      FieldName = 'ORD_VLR_ICMS'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_VLR_ICMS'
      Visible = False
      DisplayFormat = '###,##0.00'
    end
    object cdsOCEORD_NOTAS: TStringField
      FieldName = 'ORD_NOTAS'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_NOTAS'
      Visible = False
      FixedChar = True
      Size = 50
    end
    object cdsOCETRANS_ID_REDES: TIntegerField
      FieldName = 'TRANS_ID_REDES'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.TRANS_ID_REDES'
      Visible = False
    end
    object cdsOCEORD_PAGO: TStringField
      FieldName = 'ORD_PAGO'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_PAGO'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object cdsOCECLIN_ID: TIntegerField
      FieldName = 'CLIN_ID'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.CLIN_ID'
      Visible = False
    end
    object cdsOCEORD_VLR_FRETE: TFloatField
      FieldName = 'ORD_VLR_FRETE'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_VLR_FRETE'
      Visible = False
      DisplayFormat = '###,##0.00'
    end
    object cdsOCEORD_VLR_SECCAT: TFloatField
      FieldName = 'ORD_VLR_SECCAT'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_VLR_SECCAT'
      Visible = False
      DisplayFormat = '###,##0.00'
    end
    object cdsOCEORD_VLR_DESPACHO: TFloatField
      FieldName = 'ORD_VLR_DESPACHO'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_VLR_DESPACHO'
      Visible = False
      DisplayFormat = '###,##0.00'
    end
    object cdsOCEORD_VLR_PEDAGIO: TFloatField
      FieldName = 'ORD_VLR_PEDAGIO'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_VLR_PEDAGIO'
      Visible = False
      DisplayFormat = '###,##0.00'
    end
    object cdsOCEORD_VLR_OUTROS: TFloatField
      FieldName = 'ORD_VLR_OUTROS'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_VLR_OUTROS'
      Visible = False
      DisplayFormat = '###,##0.00'
    end
    object cdsOCEVEIC_ID_RECEB: TIntegerField
      FieldName = 'VEIC_ID_RECEB'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.VEIC_ID_RECEB'
      Visible = False
    end
    object cdsOCEREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.REG_ID'
      Visible = False
    end
    object cdsOCEMANI_ID: TIntegerField
      FieldName = 'MANI_ID'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.MANI_ID'
      Visible = False
    end
    object cdsOCETRANS_ID: TIntegerField
      FieldName = 'TRANS_ID'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.TRANS_ID'
      Visible = False
    end
    object cdsOCEVEIC_ID: TIntegerField
      FieldName = 'VEIC_ID'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.VEIC_ID'
      Visible = False
    end
    object cdsOCEORD_COLETA_ENTREGA: TStringField
      FieldName = 'ORD_COLETA_ENTREGA'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_COLETA_ENTREGA'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object cdsOCEORD_COL_ENDERECO: TStringField
      FieldName = 'ORD_COL_ENDERECO'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_COL_ENDERECO'
      Visible = False
      FixedChar = True
      Size = 50
    end
    object cdsOCEORD_COL_ENDERECO_COMPL: TStringField
      FieldName = 'ORD_COL_ENDERECO_COMPL'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_COL_ENDERECO_COMPL'
      Visible = False
      FixedChar = True
    end
    object cdsOCEORD_COL_ENDERECO_BAIRRO: TStringField
      FieldName = 'ORD_COL_ENDERECO_BAIRRO'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_COL_ENDERECO_BAIRRO'
      Visible = False
      FixedChar = True
    end
    object cdsOCEMUN_ID_COL: TIntegerField
      FieldName = 'MUN_ID_COL'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.MUN_ID_COL'
      Visible = False
    end
    object cdsOCEORD_COL_MUNICIPIO: TStringField
      FieldName = 'ORD_COL_MUNICIPIO'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_COL_MUNICIPIO'
      Visible = False
      FixedChar = True
      Size = 40
    end
    object cdsOCEUF_SIGLA_COL: TStringField
      FieldName = 'UF_SIGLA_COL'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.UF_SIGLA_COL'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object cdsOCEORD_COL_CEP: TStringField
      FieldName = 'ORD_COL_CEP'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_COL_CEP'
      Visible = False
      FixedChar = True
      Size = 8
    end
    object cdsOCEORD_COL_TEL1: TStringField
      FieldName = 'ORD_COL_TEL1'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_COL_TEL1'
      Visible = False
      FixedChar = True
      Size = 11
    end
    object cdsOCEORD_COL_TEL2: TStringField
      FieldName = 'ORD_COL_TEL2'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_COL_TEL2'
      Visible = False
      FixedChar = True
      Size = 11
    end
    object cdsOCEORD_COL_FAX: TStringField
      FieldName = 'ORD_COL_FAX'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_COL_FAX'
      Visible = False
      FixedChar = True
      Size = 11
    end
    object cdsOCEORD_COL_EMAIL: TStringField
      FieldName = 'ORD_COL_EMAIL'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_COL_EMAIL'
      Visible = False
      FixedChar = True
      Size = 60
    end
    object cdsOCEORD_COL_CONTATO: TStringField
      FieldName = 'ORD_COL_CONTATO'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_COL_CONTATO'
      Visible = False
      FixedChar = True
      Size = 50
    end
    object cdsOCEORD_ENT_ENDERECO: TStringField
      FieldName = 'ORD_ENT_ENDERECO'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_ENT_ENDERECO'
      Visible = False
      FixedChar = True
      Size = 50
    end
    object cdsOCEORD_ENT_ENDERECO_COMPL: TStringField
      FieldName = 'ORD_ENT_ENDERECO_COMPL'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_ENT_ENDERECO_COMPL'
      Visible = False
      FixedChar = True
    end
    object cdsOCEORD_ENT_ENDERECO_BAIRRO: TStringField
      FieldName = 'ORD_ENT_ENDERECO_BAIRRO'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_ENT_ENDERECO_BAIRRO'
      Visible = False
      FixedChar = True
    end
    object cdsOCEMUN_ID_ENT: TIntegerField
      FieldName = 'MUN_ID_ENT'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.MUN_ID_ENT'
      Visible = False
    end
    object cdsOCEORD_ENT_MUNICIPIO: TStringField
      FieldName = 'ORD_ENT_MUNICIPIO'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_ENT_MUNICIPIO'
      Visible = False
      FixedChar = True
      Size = 40
    end
    object cdsOCEUF_SIGLA_ENT: TStringField
      FieldName = 'UF_SIGLA_ENT'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.UF_SIGLA_ENT'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object cdsOCEORD_ENT_CEP: TStringField
      FieldName = 'ORD_ENT_CEP'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_ENT_CEP'
      Visible = False
      FixedChar = True
      Size = 8
    end
    object cdsOCEORD_ENT_TEL1: TStringField
      FieldName = 'ORD_ENT_TEL1'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_ENT_TEL1'
      Visible = False
      FixedChar = True
      Size = 11
    end
    object cdsOCEORD_ENT_TEL2: TStringField
      FieldName = 'ORD_ENT_TEL2'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_ENT_TEL2'
      Visible = False
      FixedChar = True
      Size = 11
    end
    object cdsOCEORD_ENT_FAX: TStringField
      FieldName = 'ORD_ENT_FAX'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_ENT_FAX'
      Visible = False
      FixedChar = True
      Size = 11
    end
    object cdsOCEORD_ENT_EMAIL: TStringField
      FieldName = 'ORD_ENT_EMAIL'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_ENT_EMAIL'
      Visible = False
      FixedChar = True
      Size = 60
    end
    object cdsOCEORD_ENT_CONTATO: TStringField
      FieldName = 'ORD_ENT_CONTATO'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_ENT_CONTATO'
      Visible = False
      FixedChar = True
      Size = 50
    end
    object cdsOCECLIF_ID: TIntegerField
      FieldName = 'CLIF_ID'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.CLIF_ID'
      Visible = False
    end
    object cdsOCECLINraza: TStringField
      FieldName = 'CLINraza'
      ReadOnly = True
      Visible = False
      Size = 40
    end
    object cdsOCETRANSRaza: TStringField
      FieldName = 'TRANSRaza'
      ReadOnly = True
      Visible = False
      Size = 40
    end
    object cdsOCEMUNIdesc: TStringField
      FieldName = 'MUNIdesc'
      ReadOnly = True
      Visible = False
      Size = 30
    end
    object cdsOCEMUNIdescENT: TStringField
      FieldName = 'MUNIdescENT'
      ReadOnly = True
      Visible = False
      Size = 40
    end
    object cdsOCETransEND: TStringField
      FieldName = 'TransEND'
      ReadOnly = True
      Visible = False
      Size = 40
    end
    object cdsOCETransENDCOMPL: TStringField
      FieldName = 'TransENDCOMPL'
      ReadOnly = True
      Visible = False
    end
    object cdsOCETransCNPJ: TStringField
      FieldName = 'TransCNPJ'
      ReadOnly = True
      Visible = False
      Size = 15
    end
    object cdsOCETransPESSOA: TStringField
      FieldName = 'TransPESSOA'
      ReadOnly = True
      Visible = False
      Size = 1
    end
    object cdsOCETransMUN_ID: TIntegerField
      FieldName = 'TransMUN_ID'
      ReadOnly = True
      Visible = False
    end
    object cdsOCEORD_ALIQ: TFloatField
      FieldName = 'ORD_ALIQ'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_ID'
      Visible = False
      DisplayFormat = '###,##0.00'
    end
    object cdsOCEORD_REDESPACHO: TStringField
      FieldName = 'ORD_REDESPACHO'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_REDESPACHO'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object cdsOCECFA_ID: TIntegerField
      FieldName = 'CFA_ID'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.CFA_ID'
      Visible = False
    end
    object cdsOCEUFCli: TStringField
      FieldName = 'UFCli'
      ReadOnly = True
      Visible = False
      Size = 2
    end
    object cdsOCEORD_OBS: TStringField
      FieldName = 'ORD_OBS'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_OBS'
      Visible = False
      FixedChar = True
      Size = 50
    end
    object cdsOCEORD_GENERICO: TStringField
      FieldName = 'ORD_GENERICO'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_GENERICO'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object cdsOCEORD_TXENTREGA: TFloatField
      FieldName = 'ORD_TXENTREGA'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsOCEORD_SEGURO: TFloatField
      FieldName = 'ORD_SEGURO'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsOCENFI_REENTREGA: TIntegerField
      FieldName = 'NFI_REENTREGA'
      OnGetText = cdsOCENFI_REENTREGAGetText
    end
    object cdsOCEGEROU_NFSE: TStringField
      FieldName = 'GEROU_NFSE'
      FixedChar = True
      Size = 1
    end
    object cdsOCEORD_DATA: TDateTimeField
      FieldName = 'ORD_DATA'
    end
  end
  object dspAUX1: TDataSetProvider
    DataSet = Q_AUX1
    Constraints = True
    Left = 666
    Top = 103
  end
  object cdsAUX1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAUX1'
    Left = 610
    Top = 127
  end
  object dspClin: TDataSetProvider
    DataSet = Q_CLIN
    Constraints = True
    Left = 578
    Top = 103
  end
  object cdsClin: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspClin'
    Left = 610
    Top = 31
    object cdsClinCLIN_RAZA: TStringField
      FieldName = 'CLIN_RAZA'
      FixedChar = True
      Size = 50
    end
    object cdsClinCLIN_ID: TAutoIncField
      FieldName = 'CLIN_ID'
      ReadOnly = True
    end
    object cdsClinUF_SIGLA: TStringField
      FieldName = 'UF_SIGLA'
      FixedChar = True
      Size = 2
    end
    object cdsClinmun_ID: TIntegerField
      FieldName = 'mun_ID'
    end
    object cdsClinQ_UF: TDataSetField
      FieldName = 'Q_UF'
      IncludeObjectField = False
    end
  end
  object dspMani: TDataSetProvider
    DataSet = Q_MANI
    Constraints = True
    Left = 674
    Top = 199
  end
  object cdsMani: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMani'
    Left = 642
    Top = 199
    object cdsManiMANI_ID: TAutoIncField
      FieldName = 'MANI_ID'
      ReadOnly = True
    end
    object cdsManiTRANS_ID: TIntegerField
      FieldName = 'TRANS_ID'
    end
    object cdsManiVEIC_ID: TIntegerField
      FieldName = 'VEIC_ID'
    end
    object cdsManiMANI_TIPOCARGA: TStringField
      FieldName = 'MANI_TIPOCARGA'
      FixedChar = True
      Size = 1
    end
    object cdsManiPAR_ID: TIntegerField
      FieldName = 'PAR_ID'
    end
    object cdsManiREG_ID: TIntegerField
      FieldName = 'REG_ID'
    end
    object cdsManiVEIC_ID_FRETE: TIntegerField
      FieldName = 'VEIC_ID_FRETE'
    end
    object cdsManiMOT_ID: TIntegerField
      FieldName = 'MOT_ID'
    end
    object cdsManiQ_NF99: TDataSetField
      FieldName = 'Q_NF99'
      IncludeObjectField = False
    end
  end
  object dspNF99: TDataSetProvider
    DataSet = Q_NF99
    Constraints = True
    Left = 674
    Top = 143
  end
  object cdsNF99: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNF99'
    Left = 618
    Top = 159
    object cdsNF99NFI_MARCADOR_CTRCGEN: TStringField
      FieldName = 'NFI_MARCADOR_CTRCGEN'
      OnChange = cdsNF99NFI_MARCADOR_CTRCGENChange
      FixedChar = True
      Size = 1
    end
    object cdsNF99NFI_NUMERO: TStringField
      FieldName = 'NFI_NUMERO'
      FixedChar = True
      Size = 10
    end
    object cdsNF99NFI_CODI: TAutoIncField
      FieldName = 'NFI_CODI'
      ReadOnly = True
    end
    object cdsNF99NFI_TOTA: TFloatField
      FieldName = 'NFI_TOTA'
    end
    object cdsNF99NFI_PBRU: TFloatField
      FieldName = 'NFI_PBRU'
    end
    object cdsNF99NFI_VOL: TFloatField
      FieldName = 'NFI_VOL'
    end
  end
  object dspTrans: TDataSetProvider
    DataSet = Q_TRANS
    Constraints = True
    Left = 634
    Top = 135
  end
  object cdsTrans: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTrans'
    Left = 666
    Top = 135
    object cdsTransTRANS_RAZA: TStringField
      FieldName = 'TRANS_RAZA'
      FixedChar = True
      Size = 60
    end
    object cdsTransTRANS_ID: TAutoIncField
      FieldName = 'TRANS_ID'
      ReadOnly = True
    end
    object cdsTransTRANS_ENDERECO: TStringField
      FieldName = 'TRANS_ENDERECO'
      FixedChar = True
      Size = 50
    end
    object cdsTransTRANS_ENDERECO_COMPL: TStringField
      FieldName = 'TRANS_ENDERECO_COMPL'
      FixedChar = True
    end
    object cdsTransTRANS_CNPJ: TStringField
      FieldName = 'TRANS_CNPJ'
      FixedChar = True
      Size = 15
    end
    object cdsTransTRANS_PESSOA: TStringField
      FieldName = 'TRANS_PESSOA'
      FixedChar = True
      Size = 1
    end
    object cdsTransMUN_ID: TIntegerField
      FieldName = 'MUN_ID'
    end
  end
  object dspAux: TDataSetProvider
    DataSet = Q_AUX
    Constraints = True
    Left = 698
    Top = 39
  end
  object cdsAux: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAux'
    Left = 706
    Top = 55
  end
  object dspConfirma: TDataSetProvider
    DataSet = qrConfirma
    Constraints = True
    Left = 634
    Top = 47
  end
  object cdsConfirma: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConfirma'
    Left = 674
    Top = 31
    object cdsConfirmaORD_ID: TIntegerField
      FieldName = 'ORD_ID'
    end
    object cdsConfirmaVLR_FRETE: TFloatField
      FieldName = 'VLR_FRETE'
    end
    object cdsConfirmaTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
  end
  object qrAux: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    ValidateWithMask = True
    Left = 382
    Top = 40
  end
  object qrConsManifesto: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      
        'select A.MANI_ID , count(*) as qtde   from ORDEM_COLETA_ENTREGA ' +
        'A,MANIFESTO B '
      'WHERE  B.MANI_ID = A.MANI_ID '
      'and B.CONFIRMA_MANI <> '#39'S'#39
      'and A.OS_ID = :OS_ID'
      'GROUP BY A.MANI_ID')
    ValidateWithMask = True
    Left = 70
    Top = 152
    ParamData = <
      item
        DataType = ftInterface
        Name = 'OS_ID'
        ParamType = ptInput
      end>
    object qrConsManifestoMANI_ID: TIntegerField
      FieldName = 'MANI_ID'
    end
    object qrConsManifestoqtde: TIntegerField
      FieldName = 'qtde'
    end
  end
  object DSPConsManifesto: TDataSetProvider
    DataSet = qrConsManifesto
    Constraints = True
    Left = 378
    Top = 495
  end
  object cdsConsManifesto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPConsManifesto'
    Left = 178
    Top = 471
    object cdsConsManifestoMANI_ID: TIntegerField
      FieldName = 'MANI_ID'
    end
    object cdsConsManifestoqtde: TIntegerField
      FieldName = 'qtde'
    end
  end
  object dspMuni: TDataSetProvider
    DataSet = Q_MUNI
    Constraints = True
    Left = 330
    Top = 485
  end
  object cdsMuni: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMuni'
    Left = 282
    Top = 141
    object cdsMuniMUN_NOME: TStringField
      FieldName = 'MUN_NOME'
      FixedChar = True
      Size = 40
    end
    object cdsMuniDIPAM: TStringField
      FieldName = 'DIPAM'
      FixedChar = True
      Size = 10
    end
    object cdsMuniMUN_ID: TAutoIncField
      FieldName = 'MUN_ID'
      ReadOnly = True
    end
    object cdsMuniUF_SIGLA: TStringField
      FieldName = 'UF_SIGLA'
      FixedChar = True
      Size = 2
    end
  end
  object qrLiberaConh: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'DELETE FROM OEC_AUX WHERE ORD_ID = :ORD_ID')
    ValidateWithMask = True
    Left = 430
    Top = 168
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ORD_ID'
        ParamType = ptUnknown
      end>
  end
  object qrUpdateNF: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'UPDATE NF SET ORD_ID = :ORD_ID'
      'WHERE NFI_CODI = :NFI_CODI')
    ValidateWithMask = True
    Left = 174
    Top = 96
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ORD_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NFI_CODI'
        ParamType = ptUnknown
      end>
  end
  object wwQuery1: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    ValidateWithMask = True
    Left = 606
    Top = 264
  end
  object qrUpdateStatus: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <
      item
        Name = 'ORD_ID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'UPDATE ORDEM_COLETA_ENTREGA'
      'SET ORD_STATUS = '#39'E'#39','
      'ORD_DATA = GETDATE()'
      'WHERE ORD_ID = :ORD_ID')
    Left = 479
    Top = 252
  end
  object qrOCEAux: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <
      item
        Name = 'ORD_ID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM OEC_Aux'
      'WHERE ORD_ID = :ORD_ID')
    Left = 575
    Top = 300
    object qrOCEAuxORD_ID: TIntegerField
      FieldName = 'ORD_ID'
    end
    object qrOCEAuxVLR_FRETE: TFloatField
      FieldName = 'VLR_FRETE'
    end
    object qrOCEAuxTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object qrOCEAuxSEC_CAT: TFloatField
      FieldName = 'SEC_CAT'
    end
    object qrOCEAuxDESPACHO: TFloatField
      FieldName = 'DESPACHO'
    end
    object qrOCEAuxPEDAGIO: TFloatField
      FieldName = 'PEDAGIO'
    end
    object qrOCEAuxOUTROS: TFloatField
      FieldName = 'OUTROS'
    end
    object qrOCEAuxALIQ: TFloatField
      FieldName = 'ALIQ'
    end
    object qrOCEAuxICMS: TFloatField
      FieldName = 'ICMS'
    end
  end
  object qrAuxMun: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <
      item
        Name = 'Param1'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end>
    SQL.Strings = (
      'SELECT * FROM MUNICIPIO WHERE MUN_ID = :MUN_ID')
    Left = 419
    Top = 159
    object qrAuxMunMUN_ID: TAutoIncField
      FieldName = 'MUN_ID'
      ReadOnly = True
    end
    object qrAuxMunDIPAM: TStringField
      FieldName = 'DIPAM'
      Size = 10
    end
    object qrAuxMunMUN_NOME: TStringField
      FieldName = 'MUN_NOME'
      Size = 40
    end
    object qrAuxMunUF_SIGLA: TStringField
      FieldName = 'UF_SIGLA'
      Size = 2
    end
    object qrAuxMunREG_ID: TIntegerField
      FieldName = 'REG_ID'
    end
    object qrAuxMunIBGE_ID: TIntegerField
      FieldName = 'IBGE_ID'
    end
  end
  object STP_CTRC_COMPLEMENTAR: TADOStoredProc
    Connection = FMenu.ADOConnection
    ProcedureName = 'GERA_CONHECIMENTO_COMPLEMENTAR;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
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
    Prepared = True
    Left = 606
    Top = 470
  end
  object qrAuxMun2: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    Left = 808
    Top = 90
  end
  object qryAux: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    Left = 240
    Top = 188
  end
  object qryNotasServicoDivididas: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'ORD_ID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT NFI_NUMERO FROM NF'
      'WHERE ORD_ID = :ORD_ID'
      'and tdoc_id = 16'
      'ORDER BY NFI_NUMERO')
    Left = 583
    Top = 541
    object qryNotasServicoDivididasNFI_NUMERO: TStringField
      FieldName = 'NFI_NUMERO'
      Size = 10
    end
  end
  object qrExecClone: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    ValidateWithMask = True
    Left = 510
    Top = 384
  end
end
