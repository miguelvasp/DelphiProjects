object FRomRemaneja: TFRomRemaneja
  Left = 223
  Top = 115
  Width = 805
  Height = 577
  AutoSize = True
  BorderIcons = []
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 789
    Height = 45
    BevelInner = bvLowered
    Color = clMenu
    TabOrder = 0
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
      Width = 297
      Height = 23
      Caption = 'Romaneio de Remanejamento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Georgia'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object DBNavigator1: TDBNavigator
      Left = 565
      Top = 9
      Width = 192
      Height = 25
      DataSource = DS_ROM
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
    object BitBtn3: TBitBtn
      Left = 440
      Top = 9
      Width = 121
      Height = 25
      Caption = 'Alterara��o de Dados'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Visible = False
      OnClick = BitBtn3Click
    end
    object btnConsulta: TButton
      Left = 363
      Top = 10
      Width = 75
      Height = 25
      Caption = 'Consulta'
      TabOrder = 2
      OnClick = btnConsultaClick
    end
  end
  object TabbedNotebook1: TTabbedNotebook
    Left = 0
    Top = 50
    Width = 787
    Height = 489
    PageIndex = 1
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
        Top = 10
        Width = 777
        Height = 437
        BevelInner = bvSpace
        BevelOuter = bvLowered
        BevelWidth = 3
        Color = clSilver
        TabOrder = 0
        object Label6: TLabel
          Left = 24
          Top = 14
          Width = 45
          Height = 15
          Caption = 'N�mero'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object Label24: TLabel
          Left = 18
          Top = 41
          Width = 51
          Height = 15
          Caption = 'Empresa'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object Label28: TLabel
          Left = 493
          Top = 14
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
        object wwDBEdit6: TwwDBEdit
          Left = 72
          Top = 13
          Width = 91
          Height = 23
          Color = clInactiveBorder
          DataField = 'RREM_ID'
          DataSource = DS_ROM
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
          OnEnter = wwDBEdit6Enter
          OnExit = wwDBEdit6Exit
        end
        object wwDBLookupCombo10: TwwDBLookupCombo
          Left = 72
          Top = 40
          Width = 306
          Height = 21
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          BorderStyle = bsNone
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'PAR_NOME'#9'30'#9'PAR_NOME'#9'F')
          DataField = 'PAR_ID'
          DataSource = DS_ROM
          LookupTable = Q_PAR
          LookupField = 'PAR_ID'
          ParentFont = False
          TabOrder = 0
          AutoDropDown = True
          ShowButton = True
          SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
          PreciseEditRegion = False
          AllowClearKey = False
          OnEnter = wwDBLookupCombo10Enter
          OnExit = wwDBLookupCombo10Exit
        end
        object wwDBEdit11: TwwDBEdit
          Left = 523
          Top = 13
          Width = 65
          Height = 21
          BorderStyle = bsNone
          DataField = 'RREM_DATA'
          DataSource = DS_ROM
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
          OnEnter = wwDBEdit11Enter
          OnExit = wwDBEdit11Exit
        end
        object BitBtn2: TBitBtn
          Left = 296
          Top = 188
          Width = 185
          Height = 33
          Caption = 'Confirmar Romaneio ?'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          OnClick = BitBtn2Click
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
      end
    end
    object TTabPage
      Left = 4
      Top = 25
      Caption = '   Itens   '
      object Label18: TLabel
        Left = 18
        Top = 9
        Width = 45
        Height = 15
        Caption = 'N�mero'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText4: TDBText
        Left = 66
        Top = 8
        Width = 60
        Height = 17
        DataField = 'RREM_ID'
        DataSource = DS_ROM
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label17: TLabel
        Left = 131
        Top = 9
        Width = 51
        Height = 15
        Caption = 'Empresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText10: TDBText
        Left = 187
        Top = 8
        Width = 272
        Height = 17
        DataField = 'PAR_NOME'
        DataSource = DS_PAR
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Panel3: TPanel
        Left = 5
        Top = 34
        Width = 771
        Height = 423
        BevelInner = bvSpace
        BevelOuter = bvLowered
        BevelWidth = 3
        Color = clSilver
        TabOrder = 0
        object Label75: TLabel
          Left = 18
          Top = 20
          Width = 32
          Height = 18
          Caption = 'Tipo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object Panel4: TPanel
          Left = 14
          Top = 56
          Width = 742
          Height = 291
          TabOrder = 2
          Visible = False
          object DBText1: TDBText
            Left = 272
            Top = 38
            Width = 448
            Height = 17
            DataField = 'PROdesc'
            DataSource = DS_IROM
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label2: TLabel
            Left = 95
            Top = 37
            Width = 45
            Height = 15
            Caption = 'Produto'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object Label3: TLabel
            Left = 82
            Top = 123
            Width = 57
            Height = 15
            Caption = 'Pallet TAG'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object Label5: TLabel
            Left = 115
            Top = 150
            Width = 25
            Height = 15
            Caption = 'Lote'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object Label7: TLabel
            Left = 107
            Top = 179
            Width = 33
            Height = 15
            Caption = 'Batch'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object Label8: TLabel
            Left = 72
            Top = 208
            Width = 67
            Height = 15
            Caption = 'Vencimento'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object Label9: TLabel
            Left = 31
            Top = 260
            Width = 109
            Height = 15
            Caption = 'Qtde. Movimentada'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object Label1: TLabel
            Left = 254
            Top = 93
            Width = 77
            Height = 15
            Caption = 'Nova Posi��o'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object Label51: TLabel
            Left = 113
            Top = 65
            Width = 27
            Height = 15
            Caption = '�rea'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object Label10: TLabel
            Left = 76
            Top = 9
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
          object Label11: TLabel
            Left = 245
            Top = 260
            Width = 83
            Height = 15
            Caption = 'Movimenta��o'
            Color = clBtnFace
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentColor = False
            ParentFont = False
          end
          object Label12: TLabel
            Left = 49
            Top = 234
            Width = 91
            Height = 15
            Caption = 'Qtde. Dispon�vel'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object DBText2: TDBText
            Left = 144
            Top = 233
            Width = 65
            Height = 17
            DataField = 'DISPONIVEL'
            DataSource = DS_IROM
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object DBText5: TDBText
            Left = 145
            Top = 10
            Width = 576
            Height = 17
            DataField = 'CLIN_RAZA'
            DataSource = DS_CLIN2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Visible = False
          end
          object Label13: TLabel
            Left = 46
            Top = 93
            Width = 93
            Height = 15
            Caption = 'Posi��o Original'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object Label14: TLabel
            Left = 143
            Top = 93
            Width = 90
            Height = 17
            Caption = 'Nova Posi��o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label19: TLabel
            Left = 143
            Top = 118
            Width = 127
            Height = 22
            Caption = 'Nova Posi��o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -19
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object wwDBLookupCombo2: TwwDBLookupCombo
            Left = 143
            Top = 36
            Width = 128
            Height = 21
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            BorderStyle = bsNone
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'PRO_COD'#9'16'#9'PRO_COD'#9'F'
              'PRO_DESC'#9'40'#9'PRO_DESC'#9'F')
            DataField = 'PRO_ID'
            DataSource = DS_IROM
            LookupTable = Q_PROD
            LookupField = 'PRO_ID'
            Enabled = False
            ParentFont = False
            TabOrder = 1
            AutoDropDown = True
            ShowButton = True
            SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
            PreciseEditRegion = False
            AllowClearKey = False
            OnCloseUp = wwDBLookupCombo2CloseUp
            OnEnter = wwDBLookupCombo2Enter
            OnExit = wwDBLookupCombo2Exit
          end
          object wwDBEdit1: TwwDBEdit
            Left = 143
            Top = 149
            Width = 474
            Height = 21
            BorderStyle = bsNone
            DataField = 'LOTE'
            DataSource = DS_IROM
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
            OnEnter = wwDBEdit11Enter
            OnExit = wwDBEdit11Exit
          end
          object wwDBEdit2: TwwDBEdit
            Left = 143
            Top = 178
            Width = 65
            Height = 21
            BorderStyle = bsNone
            DataField = 'BATCH'
            DataSource = DS_IROM
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
            OnEnter = wwDBEdit11Enter
            OnExit = wwDBEdit11Exit
          end
          object wwDBEdit3: TwwDBEdit
            Left = 143
            Top = 207
            Width = 65
            Height = 21
            BorderStyle = bsNone
            DataField = 'VENCIMENTO'
            DataSource = DS_IROM
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
            OnEnter = wwDBEdit11Enter
            OnExit = wwDBEdit11Exit
          end
          object wwDBEdit4: TwwDBEdit
            Left = 143
            Top = 259
            Width = 92
            Height = 21
            BorderStyle = bsNone
            DataField = 'QTDE'
            DataSource = DS_IROM
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
            OnEnter = wwDBEdit11Enter
            OnExit = wwDBEdit11Exit
          end
          object wwDBLookupCombo1: TwwDBLookupCombo
            Left = 335
            Top = 92
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
              'POS_COD'#9'15'#9'POS_COD'#9'F')
            DataField = 'POS_ID'
            DataSource = DS_IROM
            LookupTable = Q_POS
            LookupField = 'POS_ID'
            Enabled = False
            ParentFont = False
            TabOrder = 3
            AutoDropDown = True
            ShowButton = True
            SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
            PreciseEditRegion = False
            AllowClearKey = False
            OnEnter = wwDBLookupCombo1Enter
            OnExit = wwDBLookupCombo1Exit
          end
          object wwDBLookupCombo7: TwwDBLookupCombo
            Left = 143
            Top = 64
            Width = 287
            Height = 21
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            BorderStyle = bsNone
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'AR_NOME'#9'40'#9'AR_NOME'#9'F'
              'PAR_NOME'#9'30'#9'PAR_NOME'#9'F')
            DataField = 'AR_ID'
            DataSource = DS_IROM
            LookupTable = Q_AR
            LookupField = 'AR_ID'
            ParentFont = False
            TabOrder = 2
            AutoDropDown = True
            ShowButton = True
            SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
            PreciseEditRegion = False
            AllowClearKey = False
            OnCloseUp = wwDBLookupCombo7CloseUp
            OnEnter = wwDBLookupCombo7Enter
            OnExit = wwDBLookupCombo7Exit
          end
          object DBCB_CFA_CANA: TwwDBComboBox
            Left = 332
            Top = 259
            Width = 82
            Height = 21
            ShowButton = True
            Style = csDropDown
            MapList = True
            AllowClearKey = False
            AutoDropDown = True
            BorderStyle = bsNone
            ButtonStyle = cbsEllipsis
            DataField = 'SOMASUBTRAI'
            DataSource = DS_IROM
            DropDownCount = 8
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ItemHeight = 0
            Items.Strings = (
              'Soma'#9'1'
              'Subtrai'#9'-1')
            ParentFont = False
            Sorted = False
            TabOrder = 8
            UnboundDataType = wwDefault
            OnEnter = DBCB_CFA_CANAEnter
            OnExit = DBCB_CFA_CANAExit
          end
          object Panel6: TPanel
            Left = 29
            Top = 228
            Width = 465
            Height = 31
            BevelOuter = bvNone
            TabOrder = 9
            Visible = False
          end
          object Panel7: TPanel
            Left = 21
            Top = 252
            Width = 465
            Height = 31
            BevelOuter = bvNone
            TabOrder = 10
            Visible = False
          end
          object wwDBLookupCombo6: TwwDBLookupCombo
            Left = 143
            Top = 8
            Width = 290
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
            DataSource = DS_IROM
            LookupTable = Q_CLIN
            LookupField = 'CLIN_ID'
            ParentFont = False
            TabOrder = 0
            AutoDropDown = True
            ShowButton = True
            SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
            PreciseEditRegion = False
            AllowClearKey = False
            OnCloseUp = wwDBLookupCombo6CloseUp
            OnEnter = wwDBLookupCombo6Enter
            OnExit = wwDBLookupCombo6Exit
          end
        end
        object Panel5: TPanel
          Left = 13
          Top = 52
          Width = 744
          Height = 360
          Caption = 'Panel5'
          TabOrder = 1
          Visible = False
          object GroupBox6: TGroupBox
            Left = 12
            Top = 1
            Width = 726
            Height = 110
            Caption = 'Filtros'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            object Label15: TLabel
              Left = 57
              Top = 48
              Width = 45
              Height = 15
              Caption = 'Produto'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label20: TLabel
              Left = 38
              Top = 18
              Width = 64
              Height = 15
              Caption = 'Cliente NBF'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label16: TLabel
              Left = 72
              Top = 74
              Width = 27
              Height = 15
              Caption = '�rea'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object SpeedButton2: TSpeedButton
              Left = 644
              Top = 40
              Width = 36
              Height = 24
              Hint = 'Filtrar Estoque'
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
              ParentShowHint = False
              ShowHint = True
              OnClick = SpeedButton2Click
            end
            object DBText3: TDBText
              Left = 259
              Top = 46
              Width = 380
              Height = 17
              DataField = 'PRO_DESC'
              DataSource = DS_PROD3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -15
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object wwDBLookupCombo3: TwwDBLookupCombo
              Tag = 1
              Left = 105
              Top = 43
              Width = 152
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
                'PRO_COD'#9'16'#9'PRO_COD'#9'F'
                'PRO_DESC'#9'40'#9'PRO_DESC'#9'F')
              LookupTable = Q_PROD3
              LookupField = 'PRO_ID'
              DropDownCount = 15
              Enabled = False
              ParentFont = False
              TabOrder = 1
              AutoDropDown = True
              ShowButton = True
              PreciseEditRegion = False
              AllowClearKey = True
              OnEnter = wwDBLookupCombo3Enter
              OnExit = wwDBLookupCombo3Exit
            end
            object wwDBLookupCombo4: TwwDBLookupCombo
              Left = 105
              Top = 13
              Width = 484
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
                'CLIN_RAZA'#9'50'#9'CLIN_RAZA'#9'F')
              LookupTable = Q_CLIN2
              LookupField = 'CLIN_ID'
              DropDownCount = 16
              ParentFont = False
              TabOrder = 0
              AutoDropDown = True
              ShowButton = True
              PreciseEditRegion = False
              AllowClearKey = True
              OnCloseUp = wwDBLookupCombo4CloseUp
              OnEnter = wwDBLookupCombo4Enter
              OnExit = wwDBLookupCombo4Exit
            end
            object wwDBLookupCombo5: TwwDBLookupCombo
              Tag = 2
              Left = 105
              Top = 72
              Width = 339
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
                'AR_NOME'#9'40'#9'AR_NOME'#9'F')
              LookupTable = Q_AR2
              LookupField = 'AR_ID'
              DropDownCount = 15
              ParentFont = False
              TabOrder = 2
              AutoDropDown = True
              ShowButton = True
              PreciseEditRegion = False
              AllowClearKey = True
              OnEnter = wwDBLookupCombo5Enter
              OnExit = wwDBLookupCombo5Exit
            end
            object BitBtn1: TBitBtn
              Left = 683
              Top = 40
              Width = 36
              Height = 24
              Hint = 'Cancelar'
              Cancel = True
              ParentShowHint = False
              ShowHint = True
              TabOrder = 4
              OnClick = BitBtn1Click
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
              Left = 471
              Top = 68
              Width = 152
              Height = 33
              Caption = 'Mant�m Posi��o ?'
              Columns = 2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ItemIndex = 0
              Items.Strings = (
                'Sim'
                'N�o')
              ParentFont = False
              TabOrder = 3
              Visible = False
            end
          end
          object GRID: TwwDBGrid
            Left = 12
            Top = 114
            Width = 725
            Height = 240
            Selected.Strings = (
              'PRO_COD'#9'16'#9'C�d.Produto'
              'PRO_DESC'#9'40'#9'Descri��o do Produto'
              'ESTQ_QTDE'#9'10'#9'Qtde.Original'
              'ESTQ_QTDE_RETIRA'#9'10'#9'Qtde.Retirada'
              'ESTQ_LOTE'#9'10'#9'Lote'
              'ROM_DTVENCTO'#9'11'#9'Vencimento'
              'ROM_DTBATCH'#9'11'#9'Batch'
              'UVEN_NOME'#9'10'#9'Unidade de Venda'
              'AR_NOME'#9'15'#9'�rea'
              'POSCOD'#9'9'#9'Posi��o'
              'ESTQ_TAG'#9'10'#9'Pallet TAG')
            IniAttributes.FileName = 'delphi32.ini'
            IniAttributes.SectionName = 'FRomRemanejaGRID'
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
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
            ParentFont = False
            TabOrder = 1
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
        end
        object wwDBComboBox1: TwwDBComboBox
          Left = 59
          Top = 16
          Width = 505
          Height = 30
          ShowButton = True
          Style = csDropDown
          MapList = True
          AllowClearKey = False
          AutoDropDown = True
          BorderStyle = bsNone
          ButtonStyle = cbsEllipsis
          DataField = 'TIPO'
          DataSource = DS_IROM
          DropDownCount = 8
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          ItemHeight = 0
          Items.Strings = (
            'Entrada (Novo Pallet) '#9'E'
            'Altera��o Quantidade'#9'A'
            'Transfer�ncia'#9'T')
          ParentFont = False
          Sorted = False
          TabOrder = 0
          UnboundDataType = wwDefault
          OnCloseUp = wwDBComboBox1CloseUp
          OnEnter = wwDBComboBox1Enter
          OnExit = wwDBComboBox1Exit
        end
      end
    end
  end
  object pnlAlteraDado: TPanel
    Left = 103
    Top = 173
    Width = 586
    Height = 284
    TabOrder = 2
    Visible = False
    object GroupBox1: TGroupBox
      Left = 24
      Top = 32
      Width = 537
      Height = 225
      Caption = 'Datos por alterar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Label21: TLabel
        Left = 42
        Top = 39
        Width = 42
        Height = 16
        Caption = 'Batch'
        FocusControl = DBEdit1
      end
      object Label22: TLabel
        Left = 165
        Top = 38
        Width = 87
        Height = 16
        Caption = 'Vencimento'
        FocusControl = DBEdit2
      end
      object Label23: TLabel
        Left = 298
        Top = 37
        Width = 32
        Height = 16
        Caption = 'Lote'
        FocusControl = DBEdit3
      end
      object Label25: TLabel
        Left = 42
        Top = 95
        Width = 47
        Height = 16
        Caption = 'Status'
        FocusControl = DBEdit1
      end
      object DBEdit1: TDBEdit
        Left = 42
        Top = 55
        Width = 112
        Height = 24
        DataField = 'ROM_DTBATCH'
        DataSource = DataSource1
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 165
        Top = 54
        Width = 112
        Height = 24
        DataField = 'ROM_DTVENCTO'
        DataSource = DataSource1
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 298
        Top = 53
        Width = 231
        Height = 24
        DataField = 'ESTQ_LOTE'
        DataSource = DataSource1
        TabOrder = 2
      end
      object BitBtn4: TBitBtn
        Left = 31
        Top = 171
        Width = 179
        Height = 32
        Caption = 'Alterar Informa��es'
        TabOrder = 3
        OnClick = BitBtn4Click
      end
      object BitBtn5: TBitBtn
        Left = 239
        Top = 171
        Width = 179
        Height = 32
        Caption = 'Cancelar'
        TabOrder = 4
        OnClick = BitBtn5Click
      end
      object DBEdit4: TDBEdit
        Left = 41
        Top = 110
        Width = 228
        Height = 24
        DataField = 'STATUS'
        DataSource = DataSource1
        TabOrder = 5
      end
    end
  end
  object Q_ESTQ: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    DataSource = DS_PAR
    SQL.Strings = (
      'Select A.*,'
      'B.PRO_DESC,'
      'B.PRO_COD,'
      'C.UVEN_NOME,'
      'D.AR_NOME,'
      'F.CLIN_ID'
      ' from '
      'ESTOQUE A,PRODUTO B,UNIDVENDA C,'
      'AREA D,OS F'
      'where'
      'A.PRO_ID = B.PRO_ID and'
      'A.UVEN_ID = C.UVEN_ID and'
      'A.AR_ID = D.AR_ID and'
      'A.OS_ID_ORIG = F.OS_ID and'
      'A.PAR_ID = :PAR_ID and'
      'A.ESTQ_QTDE_RETIRA = 0 and'
      'A.ESTQ_DT_ENTRADA <> NULL    order by'
      'A.PRO_ID,A.AR_ID,A.POS_ID,A.ESTQ_QTDE desc')
    ValidateWithMask = True
    Left = 400
    Top = 74
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'PAR_ID'
        ParamType = ptUnknown
      end>
    object Q_ESTQPRO_COD: TStringField
      DisplayLabel = 'C�d.Produto'
      DisplayWidth = 16
      FieldName = 'PRO_COD'
      Origin = 'NBFDADOS.PRODUTO.PRO_COD'
      FixedChar = True
      Size = 16
    end
    object Q_ESTQPRO_DESC: TStringField
      DisplayLabel = 'Descri��o do Produto'
      DisplayWidth = 40
      FieldName = 'PRO_DESC'
      Origin = 'NBFDADOS.PRODUTO.PRO_DESC'
      FixedChar = True
      Size = 40
    end
    object Q_ESTQESTQ_QTDE: TFloatField
      DisplayLabel = 'Qtde.Original'
      DisplayWidth = 10
      FieldName = 'ESTQ_QTDE'
      Origin = 'NBFDADOS.ESTOQUE.ESTQ_QTDE'
      DisplayFormat = '0.000'
      EditFormat = '0.000'
    end
    object Q_ESTQESTQ_QTDE_RETIRA: TFloatField
      DisplayLabel = 'Qtde.Retirada'
      DisplayWidth = 10
      FieldName = 'ESTQ_QTDE_RETIRA'
      Origin = 'NBFDADOS.ESTOQUE.ESTQ_QTDE_RETIRA'
      DisplayFormat = '0.000'
      EditFormat = '0.000'
    end
    object Q_ESTQESTQ_LOTE: TStringField
      DisplayLabel = 'Lote'
      DisplayWidth = 50
      FieldName = 'ESTQ_LOTE'
      Origin = 'NBFDADOS.ESTOQUE.ESTQ_LOTE'
      FixedChar = True
      Size = 50
    end
    object Q_ESTQROM_DTVENCTO: TDateTimeField
      Alignment = taCenter
      DisplayLabel = 'Vencimento'
      DisplayWidth = 11
      FieldName = 'ROM_DTVENCTO'
      Origin = 'NBFDADOS.ESTOQUE.ROM_DTVENCTO'
    end
    object Q_ESTQROM_DTBATCH: TDateTimeField
      Alignment = taCenter
      DisplayLabel = 'Batch'
      DisplayWidth = 11
      FieldName = 'ROM_DTBATCH'
      Origin = 'NBFDADOS.ESTOQUE.ROM_DTBATCH'
    end
    object Q_ESTQUVEN_NOME: TStringField
      DisplayLabel = 'Unidade de Venda'
      DisplayWidth = 10
      FieldName = 'UVEN_NOME'
      Origin = 'NBFDADOS.UNIDVENDA.UVEN_NOME'
      FixedChar = True
      Size = 40
    end
    object Q_ESTQAR_NOME: TStringField
      DisplayLabel = '�rea'
      DisplayWidth = 15
      FieldName = 'AR_NOME'
      Origin = 'NBFDADOS.AREA.AR_NOME'
      FixedChar = True
      Size = 40
    end
    object Q_ESTQPOSCOD: TStringField
      DisplayLabel = 'Posi��o'
      DisplayWidth = 9
      FieldKind = fkLookup
      FieldName = 'POSCOD'
      LookupDataSet = Q_POS2
      LookupKeyFields = 'POS_ID'
      LookupResultField = 'POS_COD'
      KeyFields = 'POS_ID'
      Size = 6
      Lookup = True
    end
    object Q_ESTQESTQ_TAG: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Pallet TAG'
      DisplayWidth = 10
      FieldName = 'ESTQ_TAG'
      Origin = 'NBFDADOS.ESTOQUE.ESTQ_TAG'
    end
    object Q_ESTQPOS_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'POS_ID'
      Origin = 'NBFDADOS.ESTOQUE.POS_ID'
      Visible = False
    end
    object Q_ESTQPRO_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'PRO_ID'
      Origin = 'NBFDADOS.ESTOQUE.PRO_ID'
      Visible = False
    end
    object Q_ESTQESTQ_DT_ENTRADA: TDateTimeField
      DisplayWidth = 18
      FieldName = 'ESTQ_DT_ENTRADA'
      Origin = 'NBFDADOS.ESTOQUE.ESTQ_DT_ENTRADA'
      Visible = False
    end
    object Q_ESTQESTQ_DT_SAIDA: TDateTimeField
      DisplayWidth = 18
      FieldName = 'ESTQ_DT_SAIDA'
      Origin = 'NBFDADOS.ESTOQUE.ESTQ_DT_SAIDA'
      Visible = False
    end
    object Q_ESTQROM_ID_ENT: TIntegerField
      DisplayWidth = 10
      FieldName = 'ROM_ID_ENT'
      Origin = 'NBFDADOS.ESTOQUE.ROM_ID_ENT'
      Visible = False
    end
    object Q_ESTQROM_ID_SAIDA: TIntegerField
      DisplayWidth = 10
      FieldName = 'ROM_ID_SAIDA'
      Origin = 'NBFDADOS.ESTOQUE.ROM_ID_SAIDA'
      Visible = False
    end
    object Q_ESTQESTQ_DT_ULMOV: TDateTimeField
      DisplayWidth = 18
      FieldName = 'ESTQ_DT_ULMOV'
      Origin = 'NBFDADOS.ESTOQUE.ESTQ_DT_ULMOV'
      Visible = False
    end
    object Q_ESTQPAR_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'PAR_ID'
      Origin = 'NBFDADOS.ESTOQUE.PAR_ID'
      Visible = False
    end
    object Q_ESTQAR_ID: TIntegerField
      FieldName = 'AR_ID'
      Origin = 'NBFDADOS.ESTOQUE.AR_ID'
      Visible = False
    end
    object Q_ESTQCLIN_ID: TIntegerField
      FieldName = 'CLIN_ID'
      Origin = 'NBFDADOS.OS.CLIN_ID'
      Visible = False
    end
    object Q_ESTQESTQ_ID: TAutoIncField
      FieldName = 'ESTQ_ID'
      Origin = 'NBFDADOS.ESTOQUE.ESTQ_ID'
      Visible = False
    end
    object Q_ESTQOS_ID_ORIG: TIntegerField
      FieldName = 'OS_ID_ORIG'
      Origin = 'NBFDADOS.ESTOQUE.OS_ID_ORIG'
      Visible = False
    end
    object Q_ESTQMANI_ID: TIntegerField
      FieldName = 'MANI_ID'
      Origin = 'NBFDADOS.ESTOQUE.MANI_ID'
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
    object Q_ESTQUVEN_ID: TIntegerField
      FieldName = 'UVEN_ID'
      Origin = 'NBFDADOS.ESTOQUE.UVEN_ID'
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
    object Q_ESTQGEROU_OPER_ROMSAIDA: TStringField
      FieldName = 'GEROU_OPER_ROMSAIDA'
      Origin = 'NBFDADOS.ESTOQUE.GEROU_OPER_ROMSAIDA'
      Visible = False
      FixedChar = True
      Size = 1
    end
  end
  object DS_ESTQ: TwwDataSource
    DataSet = Q_ESTQ
    Left = 384
    Top = 138
  end
  object Q_ROM: TwwQuery
    CachedUpdates = True
    BeforeInsert = Q_ROMBeforeInsert
    AfterPost = Q_ROMAfterPost
    AfterCancel = Q_ROMAfterCancel
    AfterDelete = Q_ROMAfterDelete
    OnNewRecord = Q_ROMNewRecord
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    RequestLive = True
    SQL.Strings = (
      'select * from romaneio_remaneja')
    UpdateObject = UPD_ROM
    ValidateWithMask = True
    Left = 464
    Top = 80
    object Q_ROMRREM_ID: TAutoIncField
      Alignment = taCenter
      FieldName = 'RREM_ID'
      Origin = 'NBFDADOS.romaneio_remaneja.RREM_ID'
    end
    object Q_ROMPAR_ID: TIntegerField
      FieldName = 'PAR_ID'
      Origin = 'NBFDADOS.romaneio_remaneja.PAR_ID'
    end
    object Q_ROMRREM_DATA: TDateTimeField
      FieldName = 'RREM_DATA'
      Origin = 'NBFDADOS.romaneio_remaneja.RREM_DATA'
      EditMask = '!99/99/9999;1;_'
    end
    object Q_ROMCONFIRMA: TStringField
      FieldName = 'CONFIRMA'
      Origin = 'NBFDADOS.romaneio_remaneja.CONFIRMA'
      FixedChar = True
      Size = 1
    end
  end
  object DS_ROM: TwwDataSource
    DataSet = Q_ROM
    OnDataChange = DS_ROMDataChange
    Left = 208
    Top = 40
  end
  object Q_PAR: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'select '
      'PAR_ID,PAR_NOME,ULT_TAG ,par_RAZA  from parametro  ')
    ValidateWithMask = True
    Left = 559
    Top = 74
    object Q_PARPAR_NOME: TStringField
      DisplayWidth = 30
      FieldName = 'PAR_NOME'
      Origin = 'NBFDADOS.parametro.PAR_NOME'
      FixedChar = True
      Size = 30
    end
    object Q_PARPAR_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'PAR_ID'
      Origin = 'NBFDADOS.parametro.PAR_ID'
      Visible = False
    end
    object Q_PARPAR_RAZA: TStringField
      DisplayWidth = 50
      FieldName = 'PAR_RAZA'
      Origin = 'NBFDADOS.parametro.PAR_RAZA'
      Visible = False
      FixedChar = True
      Size = 50
    end
    object Q_PARULT_TAG: TIntegerField
      FieldName = 'ULT_TAG'
      Origin = 'NBFDADOS.parametro.ULT_TAG'
    end
  end
  object UPD_ROM: TUpdateSQL
    ModifySQL.Strings = (
      'update romaneio_remaneja'
      'set'
      '  PAR_ID = :PAR_ID,'
      '  RREM_DATA = :RREM_DATA,'
      '  CONFIRMA = :CONFIRMA'
      'where'
      '  RREM_ID = :OLD_RREM_ID')
    InsertSQL.Strings = (
      'insert into romaneio_remaneja'
      '  (PAR_ID, RREM_DATA, CONFIRMA)'
      'values'
      '  (:PAR_ID, :RREM_DATA, :CONFIRMA)')
    DeleteSQL.Strings = (
      'delete from romaneio_remaneja'
      'where'
      '  RREM_ID = :OLD_RREM_ID')
    Left = 208
    Top = 72
  end
  object DS_PAR: TwwDataSource
    DataSet = Q_PAR
    Left = 151
    Top = 48
  end
  object Q_IROM: TwwQuery
    CachedUpdates = True
    BeforePost = Q_IROMBeforePost
    AfterPost = Q_IROMAfterPost
    AfterDelete = Q_IROMAfterDelete
    BeforeScroll = Q_IROMBeforeScroll
    OnNewRecord = Q_IROMNewRecord
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    DataSource = DS_ROM
    RequestLive = True
    SQL.Strings = (
      'select * from romaneio_remanejaitens where RREM_ID =:RREM_ID')
    UpdateObject = UPD_IROM
    ValidateWithMask = True
    Left = 496
    Top = 112
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'RREM_ID'
        ParamType = ptUnknown
      end>
    object Q_IROMRREMI_ID: TAutoIncField
      FieldName = 'RREMI_ID'
      Origin = 'NBFDADOS.romaneio_remanejaitens.RREMI_ID'
    end
    object Q_IROMRREM_ID: TIntegerField
      FieldName = 'RREM_ID'
      Origin = 'NBFDADOS.romaneio_remanejaitens.RREM_ID'
    end
    object Q_IROMTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'NBFDADOS.romaneio_remanejaitens.TIPO'
      FixedChar = True
      Size = 1
    end
    object Q_IROMESTQ_ID: TIntegerField
      FieldName = 'ESTQ_ID'
      Origin = 'NBFDADOS.romaneio_remanejaitens.ESTQ_ID'
    end
    object Q_IROMAR_ID: TIntegerField
      FieldName = 'AR_ID'
      Origin = 'NBFDADOS.romaneio_remanejaitens.AR_ID'
    end
    object Q_IROMPOS_ID: TIntegerField
      FieldName = 'POS_ID'
      Origin = 'NBFDADOS.romaneio_remanejaitens.POS_ID'
    end
    object Q_IROMPRO_ID: TIntegerField
      FieldName = 'PRO_ID'
      Origin = 'NBFDADOS.romaneio_remanejaitens.PRO_ID'
    end
    object Q_IROMPALLET_TAG: TIntegerField
      FieldName = 'PALLET_TAG'
      Origin = 'NBFDADOS.romaneio_remanejaitens.PALLET_TAG'
    end
    object Q_IROMLOTE: TStringField
      DisplayWidth = 50
      FieldName = 'LOTE'
      Origin = 'NBFDADOS.romaneio_remanejaitens.LOTE'
      FixedChar = True
      Size = 50
    end
    object Q_IROMBATCH: TDateTimeField
      FieldName = 'BATCH'
      Origin = 'NBFDADOS.romaneio_remanejaitens.BATCH'
      EditMask = '!99/99/9999;1;_'
    end
    object Q_IROMVENCIMENTO: TDateTimeField
      FieldName = 'VENCIMENTO'
      Origin = 'NBFDADOS.romaneio_remanejaitens.VENCIMENTO'
      EditMask = '!99/99/9999;1;_'
    end
    object Q_IROMCLIN_ID: TIntegerField
      FieldName = 'CLIN_ID'
      Origin = 'NBFDADOS.romaneio_remanejaitens.PRO_ID'
    end
    object Q_IROMSOMASUBTRAI: TIntegerField
      FieldName = 'SOMASUBTRAI'
      Origin = 'NBFDADOS.romaneio_remanejaitens.SOMASUBTRAI'
    end
    object Q_IROMPROdesc: TStringField
      FieldKind = fkLookup
      FieldName = 'PROdesc'
      LookupDataSet = Q_PROD2
      LookupKeyFields = 'PRO_ID'
      LookupResultField = 'PRO_DESC'
      KeyFields = 'PRO_ID'
      Size = 40
      Lookup = True
    end
    object Q_IROMDISPONIVEL: TFloatField
      FieldName = 'DISPONIVEL'
      Origin = 'NBFDADOS.romaneio_remanejaitens.DISPONIVEL'
      DisplayFormat = '0.000'
      EditFormat = '0.000'
    end
    object Q_IROMQTDE: TFloatField
      FieldName = 'QTDE'
      Origin = 'NBFDADOS.romaneio_remanejaitens.QTDE'
      DisplayFormat = '0.000'
      EditFormat = '0.000'
    end
    object Q_IROMPOS_ID_ANTERIOR: TIntegerField
      FieldName = 'POS_ID_ANTERIOR'
      Origin = 'NBFDADOS.romaneio_remanejaitens.POS_ID_ANTERIOR'
    end
  end
  object DS_IROM: TwwDataSource
    DataSet = Q_IROM
    OnDataChange = DS_IROMDataChange
    Left = 280
    Top = 40
  end
  object UPD_IROM: TUpdateSQL
    ModifySQL.Strings = (
      'update romaneio_remanejaitens'
      'set'
      '  RREM_ID = :RREM_ID,'
      '  TIPO = :TIPO,'
      '  ESTQ_ID = :ESTQ_ID,'
      '  AR_ID = :AR_ID,'
      '  POS_ID = :POS_ID,'
      '  CLIN_ID = :CLIN_ID,'
      '  PRO_ID = :PRO_ID,'
      '  PALLET_TAG = :PALLET_TAG,'
      '  DISPONIVEL = :DISPONIVEL,'
      '  QTDE = :QTDE,'
      '  LOTE = :LOTE,'
      '  BATCH = :BATCH,'
      '  VENCIMENTO = :VENCIMENTO,'
      '  SOMASUBTRAI = :SOMASUBTRAI,'
      '  POS_ID_ANTERIOR = :POS_ID_ANTERIOR'
      'where'
      '  RREMI_ID = :OLD_RREMI_ID')
    InsertSQL.Strings = (
      'insert into romaneio_remanejaitens'
      
        '  (RREM_ID, TIPO, ESTQ_ID, AR_ID, POS_ID, CLIN_ID, PRO_ID, PALLE' +
        'T_TAG, '
      
        '   DISPONIVEL, QTDE, LOTE, BATCH, VENCIMENTO, SOMASUBTRAI, POS_I' +
        'D_ANTERIOR)'
      'values'
      
        '  (:RREM_ID, :TIPO, :ESTQ_ID, :AR_ID, :POS_ID, :CLIN_ID, :PRO_ID' +
        ', :PALLET_TAG, '
      
        '   :DISPONIVEL, :QTDE, :LOTE, :BATCH, :VENCIMENTO, :SOMASUBTRAI,' +
        ' :POS_ID_ANTERIOR)')
    DeleteSQL.Strings = (
      'delete from romaneio_remanejaitens'
      'where'
      '  RREMI_ID = :OLD_RREMI_ID')
    Left = 285
    Top = 80
  end
  object Q_AR: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    DataSource = DS_PAR
    SQL.Strings = (
      'Select *'
      'from'
      'AREA '
      'where'
      'PAR_ID = :PAR_ID'
      'order by AR_NOME'
      '')
    ValidateWithMask = True
    Left = 600
    Top = 168
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'PAR_ID'
        ParamType = ptUnknown
      end>
    object Q_ARAR_ID: TAutoIncField
      FieldName = 'AR_ID'
      Origin = 'NBFDADOS.AREA.AR_ID'
    end
    object Q_ARAR_NOME: TStringField
      FieldName = 'AR_NOME'
      Origin = 'NBFDADOS.AREA.AR_NOME'
      FixedChar = True
      Size = 40
    end
    object Q_ARAR_CONTROL_POS: TStringField
      FieldName = 'AR_CONTROL_POS'
      Origin = 'NBFDADOS.AREA.AR_CONTROL_POS'
      FixedChar = True
      Size = 1
    end
    object Q_ARAR_EMPILHA_LIVRE: TStringField
      FieldName = 'AR_EMPILHA_LIVRE'
      Origin = 'NBFDADOS.AREA.AR_EMPILHA_LIVRE'
      FixedChar = True
      Size = 1
    end
    object Q_ARAR_EMPILHA_MAX: TIntegerField
      FieldName = 'AR_EMPILHA_MAX'
      Origin = 'NBFDADOS.AREA.AR_EMPILHA_MAX'
    end
    object Q_ARAR_DISPONIVEL: TStringField
      FieldName = 'AR_DISPONIVEL'
      Origin = 'NBFDADOS.AREA.AR_DISPONIVEL'
      FixedChar = True
      Size = 1
    end
    object Q_ARPAR_ID: TIntegerField
      FieldName = 'PAR_ID'
      Origin = 'NBFDADOS.AREA.PAR_ID'
    end
  end
  object Q_POS: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    DataSource = DS_AR
    SQL.Strings = (
      'select POS_COD,AR_ID,POS_UTILIZADO,POS_ID'
      'from AREA_POSICOES '
      'where  '
      'AR_ID = :AR_ID'
      'order by POS_COD'
      ''
      '')
    ValidateWithMask = True
    Left = 441
    Top = 112
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'AR_ID'
        ParamType = ptUnknown
      end>
    object Q_POSPOS_COD: TStringField
      DisplayWidth = 15
      FieldName = 'POS_COD'
      Origin = 'NBFDADOS.AREA_POSICOES.POS_COD'
      FixedChar = True
      Size = 5
    end
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
  end
  object DS_AR: TwwDataSource
    DataSet = Q_AR
    Left = 654
    Top = 178
  end
  object Q_PROD: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    DataSource = DS_CLIN
    SQL.Strings = (
      'select PRO_ID, PRO_COD,PRO_DESC ,CLIN_ID from PRODUTO '
      'where CLIN_ID = :CLIN_ID'
      'order by PRO_COD'
      '')
    ValidateWithMask = True
    Left = 572
    Top = 136
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'CLIN_ID'
        ParamType = ptUnknown
      end>
    object Q_PRODPRO_COD: TStringField
      DisplayWidth = 16
      FieldName = 'PRO_COD'
      Origin = 'NBFDADOS.PRODUTO.PRO_COD'
      FixedChar = True
      Size = 16
    end
    object Q_PRODPRO_DESC: TStringField
      DisplayWidth = 40
      FieldName = 'PRO_DESC'
      Origin = 'NBFDADOS.PRODUTO.PRO_DESC'
      FixedChar = True
      Size = 40
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
  end
  object DS_PROD: TwwDataSource
    DataSet = Q_PROD
    Left = 637
    Top = 60
  end
  object Q_CLIN: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select CLIN_RAZA,CLIN_ID from CLIENTENBF where'
      '(CLIN_CONTRATO <> '#39'I'#39' and CLIN_CONTRATO <> '#39'R'#39') '
      'order by CLIN_RAZA ')
    ValidateWithMask = True
    Left = 656
    Top = 144
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
  object DS_CLIN: TwwDataSource
    DataSet = Q_CLIN
    Left = 584
    Top = 58
  end
  object Q_AUX: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    ValidateWithMask = True
    Left = 736
    Top = 56
  end
  object Q_PROD2: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'select PRO_ID, PRO_COD,PRO_DESC from PRODUTO '
      ''
      ''
      '')
    ValidateWithMask = True
    Left = 710
    Top = 152
    object Q_PROD2PRO_ID: TAutoIncField
      FieldName = 'PRO_ID'
      Origin = 'NBFDADOS.PRODUTO.PRO_ID'
    end
    object Q_PROD2PRO_COD: TStringField
      FieldName = 'PRO_COD'
      Origin = 'NBFDADOS.PRODUTO.PRO_COD'
      FixedChar = True
      Size = 16
    end
    object Q_PROD2PRO_DESC: TStringField
      FieldName = 'PRO_DESC'
      Origin = 'NBFDADOS.PRODUTO.PRO_DESC'
      FixedChar = True
      Size = 40
    end
  end
  object Q_CLIN2: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select CLIN_RAZA,CLIN_ID from CLIENTENBF where'
      '(CLIN_CONTRATO <> '#39'I'#39' and CLIN_CONTRATO <> '#39'R'#39') '
      'order by CLIN_RAZA ')
    ValidateWithMask = True
    Left = 470
    Top = 56
    object Q_CLIN2CLIN_RAZA: TStringField
      DisplayWidth = 50
      FieldName = 'CLIN_RAZA'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_RAZA'
      FixedChar = True
      Size = 50
    end
    object Q_CLIN2CLIN_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'CLIN_ID'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_ID'
      Visible = False
    end
  end
  object Q_PROD3: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    DataSource = DS_CLIN2
    SQL.Strings = (
      'select PRO_ID, PRO_COD,PRO_DESC ,CLIN_ID from PRODUTO '
      'where CLIN_ID = :CLIN_ID and'
      'PRO_DESCONTINUA = '#39'N'#39
      'order by PRO_COD'
      '')
    ValidateWithMask = True
    Left = 348
    Top = 53
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'CLIN_ID'
        ParamType = ptUnknown
      end>
    object Q_PROD3PRO_COD: TStringField
      DisplayWidth = 16
      FieldName = 'PRO_COD'
      Origin = 'NBFDADOS.PRODUTO.PRO_COD'
      FixedChar = True
      Size = 16
    end
    object Q_PROD3PRO_DESC: TStringField
      DisplayWidth = 40
      FieldName = 'PRO_DESC'
      Origin = 'NBFDADOS.PRODUTO.PRO_DESC'
      FixedChar = True
      Size = 40
    end
    object Q_PROD3PRO_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'PRO_ID'
      Origin = 'NBFDADOS.PRODUTO.PRO_ID'
      Visible = False
    end
    object Q_PROD3CLIN_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'CLIN_ID'
      Origin = 'NBFDADOS.PRODUTO.CLIN_ID'
      Visible = False
    end
  end
  object Q_AR2: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    DataSource = DS_PAR
    SQL.Strings = (
      'Select *'
      'from'
      'AREA '
      'where'
      'PAR_ID = :PAR_ID'
      'order by AR_NOME'
      '')
    ValidateWithMask = True
    Left = 624
    Top = 347
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'PAR_ID'
        ParamType = ptUnknown
      end>
    object Q_AR2AR_NOME: TStringField
      DisplayWidth = 40
      FieldName = 'AR_NOME'
      Origin = 'NBFDADOS.AREA.AR_NOME'
      FixedChar = True
      Size = 40
    end
    object Q_AR2AR_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'AR_ID'
      Origin = 'NBFDADOS.AREA.AR_ID'
      Visible = False
    end
    object Q_AR2AR_CONTROL_POS: TStringField
      DisplayWidth = 1
      FieldName = 'AR_CONTROL_POS'
      Origin = 'NBFDADOS.AREA.AR_CONTROL_POS'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_AR2AR_EMPILHA_LIVRE: TStringField
      DisplayWidth = 1
      FieldName = 'AR_EMPILHA_LIVRE'
      Origin = 'NBFDADOS.AREA.AR_EMPILHA_LIVRE'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_AR2AR_EMPILHA_MAX: TIntegerField
      DisplayWidth = 10
      FieldName = 'AR_EMPILHA_MAX'
      Origin = 'NBFDADOS.AREA.AR_EMPILHA_MAX'
      Visible = False
    end
    object Q_AR2AR_DISPONIVEL: TStringField
      DisplayWidth = 1
      FieldName = 'AR_DISPONIVEL'
      Origin = 'NBFDADOS.AREA.AR_DISPONIVEL'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_AR2PAR_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'PAR_ID'
      Origin = 'NBFDADOS.AREA.PAR_ID'
      Visible = False
    end
  end
  object STP_REMANEJA: TwwStoredProc
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    StoredProcName = 'dbo.STP_REMANEJA'
    ValidateWithMask = True
    Left = 676
    Top = 304
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Result'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = '@RREM'
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
  object DS_CLIN2: TwwDataSource
    DataSet = Q_CLIN2
    Left = 632
    Top = 110
  end
  object Q_POS2: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'select POS_COD,POS_ID'
      'from AREA_POSICOES ')
    ValidateWithMask = True
    Left = 529
    Top = 64
    object Q_POS2POS_COD: TStringField
      FieldName = 'POS_COD'
      Origin = 'NBFDADOS.AREA_POSICOES.POS_COD'
      FixedChar = True
      Size = 6
    end
    object Q_POS2POS_ID: TAutoIncField
      FieldName = 'POS_ID'
      Origin = 'NBFDADOS.AREA_POSICOES.POS_ID'
    end
  end
  object DS_PROD3: TwwDataSource
    DataSet = Q_PROD3
    Left = 650
    Top = 278
  end
  object qrAltera: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <
      item
        Name = 'ESTQ_ID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT ESTQ_ID, ROM_DTBATCH, ROM_DTVENCTO, ESTQ_LOTE, STATUS FRO' +
        'M ESTOQUE'
      'WHERE ESTQ_ID = :ESTQ_ID')
    Left = 464
    Top = 184
    object qrAlteraESTQ_ID: TAutoIncField
      FieldName = 'ESTQ_ID'
      ReadOnly = True
    end
    object qrAlteraROM_DTBATCH: TDateTimeField
      FieldName = 'ROM_DTBATCH'
      EditMask = '99/99/9999'
    end
    object qrAlteraROM_DTVENCTO: TDateTimeField
      FieldName = 'ROM_DTVENCTO'
      EditMask = '99/99/9999'
    end
    object qrAlteraESTQ_LOTE: TStringField
      DisplayWidth = 50
      FieldName = 'ESTQ_LOTE'
      Size = 50
    end
    object qrAlteraSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 10
    end
  end
  object DataSource1: TDataSource
    DataSet = qrAltera
    Left = 304
    Top = 176
  end
end
