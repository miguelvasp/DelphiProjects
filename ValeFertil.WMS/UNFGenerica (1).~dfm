object FNFGenerica: TFNFGenerica
  Left = 245
  Top = 125
  Width = 815
  Height = 582
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
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
      Hint = 'Visualizar Relatório'
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
      Width = 261
      Height = 29
      Caption = 'Nota Fiscal Genérica'
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
    object DBNavigator1: TDBNavigator
      Left = 516
      Top = 9
      Width = 192
      Height = 25
      DataSource = DS_NF
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
        object Label10: TLabel
          Left = 596
          Top = 14
          Width = 62
          Height = 15
          Caption = 'Número NF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText2: TDBText
          Left = 664
          Top = 13
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
        object Label1: TLabel
          Left = 16
          Top = 24
          Width = 51
          Height = 14
          Caption = 'Tipo de NF'
        end
        object GroupBox2: TGroupBox
          Left = 9
          Top = 50
          Width = 755
          Height = 386
          Caption = 'Destinatário'
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
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
            Caption = 'Inscrição Estadual/RG'
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
            Caption = 'Inscr. Est. Subst.Tributário'
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
            Caption = 'Código de Faturamento'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object Label3: TLabel
            Left = 122
            Top = 14
            Width = 33
            Height = 15
            Caption = 'Nome'
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
            Caption = 'Razão Social'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object DBText15: TDBText
            Left = 159
            Top = 164
            Width = 66
            Height = 17
            DataField = 'CFA_CODI'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object SpeedButton2: TSpeedButton
            Left = 696
            Top = 8
            Width = 33
            Height = 33
            Hint = 'Buscar Cliente'
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
            ParentShowHint = False
            ShowHint = True
            OnClick = SpeedButton2Click
          end
          object DBText3: TDBText
            Left = 448
            Top = 40
            Width = 65
            Height = 17
            DataField = 'NFI_DEST_CLI'
            DataSource = DS_NF
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
              'Física'#9'F'
              'Jurídica'#9'J')
            ParentFont = False
            Sorted = False
            TabOrder = 2
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
            TabOrder = 3
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
            TabOrder = 4
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
            TabOrder = 5
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
              'CFA_CODI'#9'10'#9'CFO'#9'F'
              'CFA_DCCF'#9'40'#9'Descrição Complementar'#9'F')
            DataField = 'CFA_ID'
            DataSource = DS_NF
            LookupTable = Q_FAT
            LookupField = 'CFA_ID'
            ParentFont = False
            TabOrder = 6
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
            Width = 522
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
            ReadOnly = True
            TabOrder = 0
            UnboundDataType = wwDefault
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
            ReadOnly = True
            TabOrder = 1
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
            Caption = 'Endereço'
            TabOrder = 7
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
              Caption = 'Endereço'
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
              Caption = 'Município'
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
              Top = 89
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
        end
        object wwDBComboBox1: TwwDBComboBox
          Left = 76
          Top = 19
          Width = 197
          Height = 22
          ShowButton = True
          Style = csDropDown
          MapList = True
          AllowClearKey = False
          DataField = 'DIRECAO_CFOP'
          DataSource = DS_NF
          DropDownCount = 8
          ItemHeight = 0
          Items.Strings = (
            'Saída'#9'1'
            'Entrada'#9'0')
          Sorted = False
          TabOrder = 1
          UnboundDataType = wwDefault
        end
      end
    end
    object TTabPage
      Left = 4
      Top = 25
      Caption = '   Itens   '
      object Label2: TLabel
        Left = 610
        Top = 6
        Width = 62
        Height = 15
        Caption = 'Número NF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText1: TDBText
        Left = 677
        Top = 5
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
      object DBG_INFI: TwwDBGrid
        Left = 0
        Top = 30
        Width = 781
        Height = 401
        Selected.Strings = (
          'INF_ITEM'#9'3'#9'Item'
          'PRO_COD'#9'9'#9'Código'
          'PRO_DESC'#9'40'#9'Descrição'
          'UVenDesc'#9'10'#9'Unidade'
          'INF_QTDE'#9'13'#9' Qtde. UV'
          'INF_PUNI'#9'10'#9'Preço Unit.'
          'INF_AIPI'#9'5'#9'% Ipi'
          'INF_VIPI'#9'9'#9'   Valor IPI'
          'INF_TOTA'#9'11'#9'  Valor Total'
          'INF_AICM'#9'7'#9'ICMS %'
          'NCM'#9'10'#9'NCM')
        IniAttributes.FileName = 'delphi32.ini'
        IniAttributes.SectionName = 'FNFDBG_INFI'
        IniAttributes.Delimiter = ';;'
        TitleColor = clWindow
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
        TitleAlignment = taCenter
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
        Width = 140
        Height = 23
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'UVEN_NOME'#9'2'#9'Nome'#9'F')
        DataField = 'UVEN_ID'
        DataSource = DS_INF
        LookupTable = Q_UNIDVEND
        LookupField = 'UVEN_ID'
        ParentFont = False
        TabOrder = 1
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
      end
      object btn1: TButton
        Left = 8
        Top = 2
        Width = 233
        Height = 25
        Caption = 'Selecionar Nota de Entrada'
        TabOrder = 2
        OnClick = btn1Click
      end
    end
    object TTabPage
      Left = 4
      Top = 25
      Caption = '   Valores   '
      object Label20: TLabel
        Left = 610
        Top = 13
        Width = 62
        Height = 15
        Caption = 'Número NF'
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
          Top = 232
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
          Caption = 'Valor Desp. Acessórias'
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
        object Label7: TLabel
          Left = 16
          Top = 328
          Width = 66
          Height = 14
          Caption = 'Observações'
          FocusControl = DBMemo1
        end
        object GroupBox5: TGroupBox
          Left = 10
          Top = 169
          Width = 758
          Height = 49
          Caption = 'ICMS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
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
          Top = 220
          Width = 478
          Height = 54
          Caption = 'IPI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
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
          end
        end
        object DBEdit5: TDBEdit
          Left = 521
          Top = 248
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
          TabOrder = 3
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
          TabOrder = 4
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
          TabOrder = 5
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
          TabOrder = 6
          OnEnter = DBEdit3Enter
          OnExit = DBEdit3Exit
        end
        object GroupBox10: TGroupBox
          Left = 10
          Top = 27
          Width = 759
          Height = 134
          Caption = ' Transportador/Volumes  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          object Label78: TLabel
            Left = 8
            Top = 14
            Width = 171
            Height = 15
            Caption = 'Transportadora - Razão Social'
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
            Caption = 'Data de Saída'
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
            Caption = 'Espécie'
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
            Caption = 'Peso Líquido'
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
          object SpeedButton5: TSpeedButton
            Left = 392
            Top = 24
            Width = 33
            Height = 33
            Hint = 'Buscar Cliente'
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
            ParentShowHint = False
            ShowHint = True
            OnClick = SpeedButton5Click
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
              'Destinatário'#9'2')
            ParentFont = False
            Sorted = False
            TabOrder = 7
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
            TabOrder = 6
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
            Width = 378
            Height = 21
            BorderStyle = bsNone
            DataField = 'NFI_TRAN'
            DataSource = DS_NF
            Enabled = False
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
        end
        object DBMemo1: TDBMemo
          Left = 16
          Top = 344
          Width = 745
          Height = 57
          DataField = 'OBS_DANFE'
          DataSource = DS_NF
          TabOrder = 7
        end
      end
    end
  end
  object pnlBusca: TPanel
    Left = 744
    Top = 312
    Width = 769
    Height = 457
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Visible = False
    object RadioGroup1: TRadioGroup
      Left = 6
      Top = -1
      Width = 393
      Height = 33
      Columns = 2
      Enabled = False
      ItemIndex = 1
      Items.Strings = (
        'Cliente NBF'
        'Cliente Final')
      TabOrder = 0
      OnClick = RadioGroup1Click
    end
    object edtBusca: TEdit
      Left = 8
      Top = 40
      Width = 417
      Height = 22
      TabOrder = 1
      OnChange = edtBuscaChange
    end
    object gClienteNBF: TwwDBGrid
      Left = 8
      Top = 72
      Width = 753
      Height = 345
      Selected.Strings = (
        'CLIN_ID'#9'10'#9'CLIN_ID'
        'CLIN_PESSOA'#9'1'#9'CLIN_PESSOA'
        'CLIN_RAZA'#9'50'#9'CLIN_RAZA'
        'CLIN_NOME'#9'30'#9'CLIN_NOME'
        'CLIN_CGCCPF'#9'15'#9'CLIN_CGCCPF'
        'CLIN_INSCRG'#9'15'#9'CLIN_INSCRG'
        'CLIN_ENDERECO'#9'50'#9'CLIN_ENDERECO'
        'CLIN_ENDERECO_COMPL'#9'35'#9'CLIN_ENDERECO_COMPL'
        'CLIN_ENDERECO_BAIRRO'#9'40'#9'CLIN_ENDERECO_BAIRRO'
        'CLIN_MUNICIPIO'#9'40'#9'CLIN_MUNICIPIO'
        'UF_SIGLA'#9'2'#9'UF_SIGLA'
        'CLIN_CEP'#9'8'#9'CLIN_CEP'
        'CLIN_TEL1'#9'11'#9'CLIN_TEL1'
        'CLIN_TEL2'#9'11'#9'CLIN_TEL2'
        'CLIN_FAX'#9'11'#9'CLIN_FAX'
        'CLIN_EMAIL'#9'60'#9'CLIN_EMAIL'
        'CON_CODI'#9'6'#9'CON_CODI'
        'CLIN_CONTRATO'#9'1'#9'CLIN_CONTRATO'
        'CLIN_UTIL_COD'#9'1'#9'CLIN_UTIL_COD'
        'MUN_ID'#9'10'#9'MUN_ID'
        'CLIN_WEB'#9'60'#9'CLIN_WEB'
        'CLIN_ENDC'#9'50'#9'CLIN_ENDC'
        'CLIN_END_COMPLC'#9'35'#9'CLIN_END_COMPLC'
        'CLIN_END_BAIRC'#9'40'#9'CLIN_END_BAIRC'
        'CLIN_MUNICC'#9'40'#9'CLIN_MUNICC'
        'UF_SIGLAC'#9'2'#9'UF_SIGLAC'
        'CLIN_CEPC'#9'8'#9'CLIN_CEPC'
        'CLIN_TELC'#9'11'#9'CLIN_TELC'
        'CLIN_FAXC'#9'11'#9'CLIN_FAXC'
        'CLIN_EMAILC'#9'60'#9'CLIN_EMAILC'
        'MUN_IDC'#9'10'#9'MUN_IDC'
        'CLIN_TIPOSALDO'#9'1'#9'CLIN_TIPOSALDO'
        'CLIN_VLRSALDO'#9'10'#9'CLIN_VLRSALDO'
        'CLIN_TPMERC'#9'50'#9'CLIN_TPMERC'
        'CLIN_LOTE'#9'1'#9'CLIN_LOTE'
        'CLIN_ISS'#9'10'#9'CLIN_ISS'
        'CLIN_DESCONTO'#9'10'#9'CLIN_DESCONTO'
        'RemanejaSN'#9'1'#9'RemanejaSN')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = dsClienteNBF
      ReadOnly = True
      TabOrder = 2
      TitleAlignment = taLeftJustify
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
      OnDblClick = gClienteNBFDblClick
    end
    object gClienteFinal: TwwDBGrid
      Left = 8
      Top = 72
      Width = 689
      Height = 345
      Selected.Strings = (
        'CLIF_RAZA'#9'50'#9'Cliente Final'
        'CLIF_NOME'#9'30'#9'Fantasia'
        'CLIF_CGCCPF'#9'15'#9'CNPJ'
        'CLIF_INSCRG'#9'15'#9'Inscrição')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = dsClienteFinal
      ReadOnly = True
      TabOrder = 3
      TitleAlignment = taLeftJustify
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
      Visible = False
      OnDblClick = gClienteFinalDblClick
    end
    object Button1: TButton
      Left = 16
      Top = 424
      Width = 129
      Height = 25
      Caption = 'Fechar janela'
      TabOrder = 4
      OnClick = Button1Click
    end
  end
  object Q_MUNI: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select * from MUNICIPIO order by MUN_NOME')
    ValidateWithMask = True
    Left = 448
    Top = 174
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
  object Q_NF: TwwQuery
    CachedUpdates = True
    BeforePost = Q_NFBeforePost
    AfterPost = Q_NFAfterPost
    AfterDelete = Q_NFAfterDelete
    OnNewRecord = Q_NFNewRecord
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    RequestLive = True
    SQL.Strings = (
      'Select top 100 * from NF where'
      'TDOC_ID =17'
      'order by NFI_CODI desc')
    UpdateObject = UPD_NF
    ValidateWithMask = True
    Left = 576
    Top = 153
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
    object Q_NFNFI_PRESTSERV: TStringField
      FieldName = 'NFI_PRESTSERV'
      Origin = 'NBFDADOS.NF.NFI_PRESTSERV'
      FixedChar = True
      Size = 25
    end
    object Q_NFNFI_FATURADA: TStringField
      FieldName = 'NFI_FATURADA'
      Origin = 'NBFDADOS.NF.NFI_FATURADA'
      FixedChar = True
      Size = 10
    end
    object Q_NFFAT_ID: TIntegerField
      FieldName = 'FAT_ID'
      Origin = 'NBFDADOS.NF.FAT_ID'
    end
    object Q_NFNFI_MARCAREEN: TStringField
      FieldName = 'NFI_MARCAREEN'
      Origin = 'NBFDADOS.NF.NFI_MARCAREEN'
      FixedChar = True
      Size = 1
    end
    object Q_NFNFI_STATUS: TStringField
      FieldName = 'NFI_STATUS'
      Origin = 'NBFDADOS.NF.NFI_STATUS'
      FixedChar = True
      Size = 1
    end
    object Q_NFNFI_MARCAIMP: TStringField
      FieldName = 'NFI_MARCAIMP'
      Origin = 'NBFDADOS.NF.NFI_MARCAIMP'
      FixedChar = True
      Size = 1
    end
    object Q_NFNFI_CODI_ORIGINOUNFRS: TIntegerField
      FieldName = 'NFI_CODI_ORIGINOUNFRS'
      Origin = 'NBFDADOS.NF.NFI_CODI_ORIGINOUNFRS'
    end
    object Q_NFDIRECAO_CFOP: TIntegerField
      FieldName = 'DIRECAO_CFOP'
    end
    object Q_NFOBS_DANFE: TMemoField
      FieldName = 'OBS_DANFE'
      BlobType = ftMemo
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
      '  DIRECAO_CFOP = :DIRECAO_CFOP,'
      '  OBS_DANFE = :OBS_DANFE'
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
      
        '   NFI_FATURADA, NFI_DISCRIM, FAT_ID, NFI_MARCAREEN, NFI_STATUS,' +
        ' '
      'NFI_MARCAIMP, '
      '   NFI_CODI_ORIGINOUNFRS, DIRECAO_CFOP, OBS_DANFE)'
      'values'
      
        '  (:NFI_NUMERO, :TDOC_ID, :NFI_EMIT_ORIG, :NFI_EMIT_CLI, :NFI_DE' +
        'ST_ORIG, '
      '   :NFI_DEST_CLI, :NFI_DEST_NOME, :NFI_DEST_RAZA, '
      ':NFI_DEST_ENDERECO, :NFI_DEST_COMPL, '
      
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
      
        '   :NFI_DISCRIM, :FAT_ID, :NFI_MARCAREEN, :NFI_STATUS, :NFI_MARC' +
        'AIMP, '
      ':NFI_CODI_ORIGINOUNFRS, :DIRECAO_CFOP, :OBS_DANFE)')
    DeleteSQL.Strings = (
      'delete from NF'
      'where'
      '  NFI_CODI = :OLD_NFI_CODI')
    Left = 578
    Top = 206
  end
  object DS_NF: TwwDataSource
    DataSet = Q_NF
    Left = 577
    Top = 256
  end
  object Q_UF: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select *  from UF order by UF_NOME'
      ''
      '')
    ValidateWithMask = True
    Left = 656
    Top = 171
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
    Left = 447
    Top = 288
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
    object Q_FATCFA_DCCF: TStringField
      DisplayLabel = 'Descrição Complementar'
      DisplayWidth = 40
      FieldName = 'CFA_DCCF'
      Origin = 'NBFDADOS.FATURAMENTO.CFA_DCCF'
      FixedChar = True
      Size = 30
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
    Top = 88
  end
  object Q_CEP: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    ValidateWithMask = True
    Left = 656
    Top = 225
  end
  object Q_AUX: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    ValidateWithMask = True
    Left = 728
    Top = 212
  end
  object Q_PAR: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select *  from PARAMETRO')
    ValidateWithMask = True
    Left = 728
    Top = 268
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
    object Q_PARCLIN_ID: TIntegerField
      FieldName = 'CLIN_ID'
      Origin = 'NBFDADOS.PARAMETRO.CLIN_ID'
    end
  end
  object DS_INF: TwwDataSource
    DataSet = Q_INF
    Left = 528
    Top = 216
  end
  object UPD_INF: TUpdateSQL
    ModifySQL.Strings = (
      'update NF_ITENS'
      'set'
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
      '  INF_ITEM = :INF_ITEM,'
      '  NCM = :NCM,'
      '  INF_NFE = :INF_NFE,'
      '  UNIDADE = :UNIDADE'
      'where'
      '  INF_CODI = :OLD_INF_CODI')
    InsertSQL.Strings = (
      'insert into NF_ITENS'
      
        '  (NFI_CODI, PRO_ID, PRO_COD, PRO_DESC, INF_QTDE, INF_PUNI, INF_' +
        'AIPI, '
      'INF_VIPI, '
      
        '   INF_TOTA, INF_PESOLIQ, INF_PESO, INF_VOL, INF_AICM, INF_BICM,' +
        ' '
      'INF_VICM, '
      '   UVEN_ID, INF_QTDERETORNADA, INF_ITEM, NCM, INF_NFE, UNIDADE)'
      'values'
      
        '  (:NFI_CODI, :PRO_ID, :PRO_COD, :PRO_DESC, :INF_QTDE, :INF_PUNI' +
        ', '
      ':INF_AIPI, '
      
        '   :INF_VIPI, :INF_TOTA, :INF_PESOLIQ, :INF_PESO, :INF_VOL, :INF' +
        '_AICM, '
      
        '   :INF_BICM, :INF_VICM, :UVEN_ID, :INF_QTDERETORNADA, :INF_ITEM' +
        ', :NCM, '
      ':INF_NFE, :UNIDADE)')
    DeleteSQL.Strings = (
      'delete from NF_ITENS'
      'where'
      '  INF_CODI = :OLD_INF_CODI')
    Left = 512
    Top = 120
  end
  object Q_INF: TwwQuery
    CachedUpdates = True
    BeforePost = Q_INFBeforePost
    AfterPost = Q_INFAfterPost
    BeforeDelete = Q_INFBeforeDelete
    AfterDelete = Q_INFAfterDelete
    OnNewRecord = Q_INFNewRecord
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    DataSource = DS_NF
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM NF_ITENS where'
      'NFI_CODI = :NFI_CODI '
      'order by INF_CODI')
    UpdateObject = UPD_INF
    ControlType.Strings = (
      'UVenDesc;CustomEdit;DBLC_INF_PROD')
    ValidateWithMask = True
    Left = 344
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
      DisplayLabel = 'Código'
      DisplayWidth = 9
      FieldName = 'PRO_COD'
      Origin = 'NBFDADOS.NF_ITENS.PRO_COD'
      FixedChar = True
      Size = 16
    end
    object Q_INFPRO_DESC: TStringField
      DisplayLabel = 'Descrição'
      DisplayWidth = 40
      FieldName = 'PRO_DESC'
      Origin = 'NBFDADOS.NF_ITENS.PRO_ID'
      FixedChar = True
      Size = 60
    end
    object Q_INFUVenDesc: TStringField
      DisplayLabel = 'Unidade'
      DisplayWidth = 10
      FieldKind = fkLookup
      FieldName = 'UVenDesc'
      LookupDataSet = Q_UNIDVEND
      LookupKeyFields = 'UVEN_ID'
      LookupResultField = 'UVEN_NOME'
      KeyFields = 'UVEN_ID'
      Size = 40
      Lookup = True
    end
    object Q_INFINF_QTDE: TFloatField
      DisplayLabel = ' Qtde. UV'
      DisplayWidth = 13
      FieldName = 'INF_QTDE'
      Origin = 'NBFDADOS.NF_ITENS.PRO_DESC'
      DisplayFormat = '0.000'
      EditFormat = '0.000'
    end
    object Q_INFINF_PUNI: TFloatField
      DisplayLabel = 'Preço Unit.'
      DisplayWidth = 10
      FieldName = 'INF_PUNI'
      Origin = 'NBFDADOS.NF_ITENS.INF_QTDE'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
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
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_INFINF_AICM: TFloatField
      DisplayLabel = 'ICMS %'
      DisplayWidth = 7
      FieldName = 'INF_AICM'
      Origin = 'NBFDADOS.NF_ITENS.INF_PESO'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_INFNCM: TStringField
      DisplayWidth = 10
      FieldName = 'NCM'
      Origin = 'NBFDADOS.NF_ITENS.NCM'
      FixedChar = True
      Size = 10
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
    object Q_INFINF_NFE: TIntegerField
      FieldName = 'INF_NFE'
      Origin = 'NBFDADOS.NF_ITENS.INF_NFE'
    end
    object Q_INFINF_QTDERETORNADASALDO: TFloatField
      FieldName = 'INF_QTDERETORNADASALDO'
      Origin = 'NBFDADOS.NF_ITENS.INF_QTDERETORNADASALDO'
    end
    object Q_INFINF_CST: TStringField
      FieldName = 'INF_CST'
      Origin = 'NBFDADOS.NF_ITENS.INF_CST'
      FixedChar = True
      Size = 3
    end
    object Q_INFUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'NBFDADOS.NF_ITENS.UNIDADE'
      FixedChar = True
      Size = 5
    end
  end
  object STP_NF: TwwStoredProc
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    StoredProcName = 'dbo.STP_CALCNOTA'
    ValidateWithMask = True
    Left = 598
    Top = 404
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
  object wwSearchDialog1: TwwSearchDialog
    Selected.Strings = (
      'NFI_NUMERO'#9'10'#9'NF Nº'#9'F')
    GridTitleAlignment = taCenter
    GridColor = clAqua
    GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
    SearchTable = Q_NF55
    Caption = 'Pesquisa de Manifesto de Carga - Entrega'
    MaxWidth = 600
    MaxHeight = 350
    CharCase = ecUpperCase
    Left = 454
    Top = 434
  end
  object Q_NF55: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select '
      'A.NFI_NUMERO,A.NFI_CODI'
      'from NF A'
      'where  A.TDOC_ID = 17  order by'
      'A.NFI_NUMERO '
      ''
      ''
      '')
    ControlType.Strings = (
      'NFI_ENTREGA;CustomEdit;wwDBComboBox2'
      'NFI_COBRAR;CustomEdit;wwDBComboBox3'
      'MANI_ENT_COL;CustomEdit;wwDBComboBox4')
    ValidateWithMask = True
    Left = 590
    Top = 345
    object Q_NF55NFI_NUMERO: TStringField
      FieldName = 'NFI_NUMERO'
      Origin = 'NBFDADOS.NF.NFI_NUMERO'
      FixedChar = True
      Size = 10
    end
    object Q_NF55NFI_CODI: TAutoIncField
      FieldName = 'NFI_CODI'
      Origin = 'NBFDADOS.NF.NFI_CODI'
    end
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
    Left = 288
    Top = 144
    object Q_UNIDVENDUVEN_NOME: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 2
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
  object qrClienteNBF: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CLIENTE+'#39'%'#39
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM CLIENTENBF'
      'WHERE CLIN_RAZA LIKE '#39'%'#39'+:CLIENTE+'#39'%'#39
      'ORDER BY CLIN_RAZA')
    Left = 56
    Top = 176
    object qrClienteNBFCLIN_ID: TAutoIncField
      FieldName = 'CLIN_ID'
      ReadOnly = True
    end
    object qrClienteNBFCLIN_PESSOA: TStringField
      FieldName = 'CLIN_PESSOA'
      Size = 1
    end
    object qrClienteNBFCLIN_RAZA: TStringField
      FieldName = 'CLIN_RAZA'
      Size = 50
    end
    object qrClienteNBFCLIN_NOME: TStringField
      FieldName = 'CLIN_NOME'
      Size = 30
    end
    object qrClienteNBFCLIN_CGCCPF: TStringField
      FieldName = 'CLIN_CGCCPF'
      Size = 15
    end
    object qrClienteNBFCLIN_INSCRG: TStringField
      FieldName = 'CLIN_INSCRG'
      Size = 15
    end
    object qrClienteNBFCLIN_ENDERECO: TStringField
      FieldName = 'CLIN_ENDERECO'
      Size = 50
    end
    object qrClienteNBFCLIN_ENDERECO_COMPL: TStringField
      FieldName = 'CLIN_ENDERECO_COMPL'
      Size = 35
    end
    object qrClienteNBFCLIN_ENDERECO_BAIRRO: TStringField
      FieldName = 'CLIN_ENDERECO_BAIRRO'
      Size = 40
    end
    object qrClienteNBFCLIN_MUNICIPIO: TStringField
      FieldName = 'CLIN_MUNICIPIO'
      Size = 40
    end
    object qrClienteNBFUF_SIGLA: TStringField
      FieldName = 'UF_SIGLA'
      Size = 2
    end
    object qrClienteNBFCLIN_CEP: TStringField
      FieldName = 'CLIN_CEP'
      Size = 8
    end
    object qrClienteNBFCLIN_TEL1: TStringField
      FieldName = 'CLIN_TEL1'
      Size = 11
    end
    object qrClienteNBFCLIN_TEL2: TStringField
      FieldName = 'CLIN_TEL2'
      Size = 11
    end
    object qrClienteNBFCLIN_FAX: TStringField
      FieldName = 'CLIN_FAX'
      Size = 11
    end
    object qrClienteNBFCLIN_EMAIL: TStringField
      FieldName = 'CLIN_EMAIL'
      Size = 60
    end
    object qrClienteNBFCON_CODI: TStringField
      FieldName = 'CON_CODI'
      Size = 6
    end
    object qrClienteNBFCLIN_CONTRATO: TStringField
      FieldName = 'CLIN_CONTRATO'
      Size = 1
    end
    object qrClienteNBFCLIN_UTIL_COD: TStringField
      FieldName = 'CLIN_UTIL_COD'
      Size = 1
    end
    object qrClienteNBFMUN_ID: TIntegerField
      FieldName = 'MUN_ID'
    end
    object qrClienteNBFCLIN_WEB: TStringField
      FieldName = 'CLIN_WEB'
      FixedChar = True
      Size = 60
    end
    object qrClienteNBFCLIN_ENDC: TStringField
      FieldName = 'CLIN_ENDC'
      Size = 50
    end
    object qrClienteNBFCLIN_END_COMPLC: TStringField
      FieldName = 'CLIN_END_COMPLC'
      Size = 35
    end
    object qrClienteNBFCLIN_END_BAIRC: TStringField
      FieldName = 'CLIN_END_BAIRC'
      Size = 40
    end
    object qrClienteNBFCLIN_MUNICC: TStringField
      FieldName = 'CLIN_MUNICC'
      Size = 40
    end
    object qrClienteNBFUF_SIGLAC: TStringField
      FieldName = 'UF_SIGLAC'
      Size = 2
    end
    object qrClienteNBFCLIN_CEPC: TStringField
      FieldName = 'CLIN_CEPC'
      Size = 8
    end
    object qrClienteNBFCLIN_TELC: TStringField
      FieldName = 'CLIN_TELC'
      Size = 11
    end
    object qrClienteNBFCLIN_FAXC: TStringField
      FieldName = 'CLIN_FAXC'
      Size = 11
    end
    object qrClienteNBFCLIN_EMAILC: TStringField
      FieldName = 'CLIN_EMAILC'
      Size = 60
    end
    object qrClienteNBFMUN_IDC: TIntegerField
      FieldName = 'MUN_IDC'
    end
    object qrClienteNBFCLIN_TIPOSALDO: TStringField
      FieldName = 'CLIN_TIPOSALDO'
      Size = 1
    end
    object qrClienteNBFCLIN_VLRSALDO: TFloatField
      FieldName = 'CLIN_VLRSALDO'
    end
    object qrClienteNBFCLIN_TPMERC: TStringField
      FieldName = 'CLIN_TPMERC'
      Size = 50
    end
    object qrClienteNBFCLIN_LOTE: TStringField
      FieldName = 'CLIN_LOTE'
      Size = 1
    end
    object qrClienteNBFCLIN_ISS: TFloatField
      FieldName = 'CLIN_ISS'
    end
    object qrClienteNBFCLIN_DESCONTO: TFloatField
      FieldName = 'CLIN_DESCONTO'
    end
    object qrClienteNBFRemanejaSN: TStringField
      FieldName = 'RemanejaSN'
      Size = 1
    end
  end
  object qrClienteFinal: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CLIENTE+'#39'%'#39
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM CLIENTEFINAL'
      'WHERE CLIF_RAZA LIKE '#39'%'#39' + :CLIENTE+'#39'%'#39
      'ORDER BY CLIF_RAZA')
    Left = 56
    Top = 320
    object qrClienteFinalCLIF_RAZA: TStringField
      DisplayLabel = 'Cliente Final'
      DisplayWidth = 50
      FieldName = 'CLIF_RAZA'
      Size = 50
    end
    object qrClienteFinalCLIF_NOME: TStringField
      DisplayLabel = 'Fantasia'
      DisplayWidth = 30
      FieldName = 'CLIF_NOME'
      Size = 30
    end
    object qrClienteFinalCLIF_CGCCPF: TStringField
      DisplayLabel = 'CNPJ'
      DisplayWidth = 15
      FieldName = 'CLIF_CGCCPF'
      Size = 15
    end
    object qrClienteFinalCLIF_INSCRG: TStringField
      DisplayLabel = 'Inscrição'
      DisplayWidth = 15
      FieldName = 'CLIF_INSCRG'
      Size = 15
    end
    object qrClienteFinalCLIF_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'CLIF_ID'
      ReadOnly = True
      Visible = False
    end
    object qrClienteFinalCLIF_PESSOA: TStringField
      DisplayWidth = 1
      FieldName = 'CLIF_PESSOA'
      Visible = False
      Size = 1
    end
    object qrClienteFinalCLIF_ENDERECO: TStringField
      DisplayWidth = 50
      FieldName = 'CLIF_ENDERECO'
      Visible = False
      Size = 50
    end
    object qrClienteFinalCLIF_ENDERECO_COMPL: TStringField
      DisplayWidth = 20
      FieldName = 'CLIF_ENDERECO_COMPL'
      Visible = False
    end
    object qrClienteFinalCLIF_ENDERECO_BAIRRO: TStringField
      DisplayWidth = 40
      FieldName = 'CLIF_ENDERECO_BAIRRO'
      Visible = False
      Size = 40
    end
    object qrClienteFinalCLIF_MUNICIPIO: TStringField
      DisplayWidth = 40
      FieldName = 'CLIF_MUNICIPIO'
      Visible = False
      Size = 40
    end
    object qrClienteFinalCLIF_MUNICIPIO2: TStringField
      DisplayWidth = 40
      FieldName = 'CLIF_MUNICIPIO2'
      Visible = False
      Size = 40
    end
    object qrClienteFinalUF_SIGLA: TStringField
      DisplayWidth = 2
      FieldName = 'UF_SIGLA'
      Visible = False
      Size = 2
    end
    object qrClienteFinalCLIF_CEP: TStringField
      DisplayWidth = 8
      FieldName = 'CLIF_CEP'
      Visible = False
      Size = 8
    end
    object qrClienteFinalCLIF_TEL1: TStringField
      DisplayWidth = 11
      FieldName = 'CLIF_TEL1'
      Visible = False
      Size = 11
    end
    object qrClienteFinalCLIF_TEL2: TStringField
      DisplayWidth = 11
      FieldName = 'CLIF_TEL2'
      Visible = False
      Size = 11
    end
    object qrClienteFinalCLIF_FAX: TStringField
      DisplayWidth = 11
      FieldName = 'CLIF_FAX'
      Visible = False
      Size = 11
    end
    object qrClienteFinalCLIF_EMAIL: TStringField
      DisplayWidth = 60
      FieldName = 'CLIF_EMAIL'
      Visible = False
      Size = 60
    end
    object qrClienteFinalCLIF_CONTATO: TStringField
      DisplayWidth = 50
      FieldName = 'CLIF_CONTATO'
      Visible = False
      Size = 50
    end
    object qrClienteFinalMUN_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'MUN_ID'
      Visible = False
    end
    object qrClienteFinalCLIF_CARGAPALLET: TStringField
      DisplayWidth = 1
      FieldName = 'CLIF_CARGAPALLET'
      Visible = False
      Size = 1
    end
    object qrClienteFinalCLIE_ENDERECO: TStringField
      DisplayWidth = 50
      FieldName = 'CLIE_ENDERECO'
      Visible = False
      Size = 50
    end
    object qrClienteFinalCLIE_ENDERECO_COMPL: TStringField
      DisplayWidth = 20
      FieldName = 'CLIE_ENDERECO_COMPL'
      Visible = False
    end
    object qrClienteFinalCLIE_ENDERECO_BAIRRO: TStringField
      DisplayWidth = 40
      FieldName = 'CLIE_ENDERECO_BAIRRO'
      Visible = False
      Size = 40
    end
    object qrClienteFinalCLIE_MUNICIPIO: TStringField
      DisplayWidth = 40
      FieldName = 'CLIE_MUNICIPIO'
      Visible = False
      Size = 40
    end
    object qrClienteFinalCLIE_MUN_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'CLIE_MUN_ID'
      Visible = False
    end
    object qrClienteFinalCLIE_UF_SIGLA: TStringField
      DisplayWidth = 2
      FieldName = 'CLIE_UF_SIGLA'
      Visible = False
      Size = 2
    end
    object qrClienteFinalCLIE_CEP: TStringField
      DisplayWidth = 8
      FieldName = 'CLIE_CEP'
      Visible = False
      Size = 8
    end
    object qrClienteFinalCLI_HORARIO: TStringField
      DisplayWidth = 5
      FieldName = 'CLI_HORARIO'
      Visible = False
      Size = 5
    end
    object qrClienteFinalCLI_VL_DESCARGA: TFloatField
      DisplayWidth = 10
      FieldName = 'CLI_VL_DESCARGA'
      Visible = False
    end
    object qrClienteFinalCLI_OBS: TStringField
      DisplayWidth = 4000
      FieldName = 'CLI_OBS'
      Visible = False
      Size = 4000
    end
    object qrClienteFinalCLI_UNCOBRACA: TStringField
      DisplayWidth = 50
      FieldName = 'CLI_UNCOBRACA'
      Visible = False
      Size = 50
    end
  end
  object dsClienteNBF: TDataSource
    DataSet = qrClienteNBF
    Left = 128
    Top = 304
  end
  object dsClienteFinal: TDataSource
    DataSet = qrClienteFinal
    Left = 144
    Top = 320
  end
end
