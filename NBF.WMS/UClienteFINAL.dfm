object FClienteFINAL: TFClienteFINAL
  Left = 286
  Top = 53
  Width = 800
  Height = 608
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
  object TabbedNotebook1: TTabbedNotebook
    Left = 0
    Top = 30
    Width = 784
    Height = 540
    Align = alTop
    TabFont.Charset = ANSI_CHARSET
    TabFont.Color = clRed
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
        Left = 3
        Top = -3
        Width = 766
        Height = 518
        BevelInner = bvSpace
        BevelOuter = bvLowered
        BevelWidth = 3
        Color = clSilver
        TabOrder = 0
        object Label3: TLabel
          Left = 56
          Top = 17
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
        object Label1: TLabel
          Left = 16
          Top = 42
          Width = 73
          Height = 15
          Caption = 'Raz'#227'o Social'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 27
          Top = 66
          Width = 62
          Height = 15
          Caption = 'CNPJ / CPF'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 15
          Top = 91
          Width = 74
          Height = 20
          AutoSize = False
          Caption = 'Insc.Est. / RG'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 55
          Top = 433
          Width = 34
          Height = 15
          Caption = 'E-Mail'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 381
          Top = 409
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
        object Label9: TLabel
          Left = 224
          Top = 409
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
        object Label10: TLabel
          Left = 33
          Top = 408
          Width = 55
          Height = 15
          Caption = 'Telefones'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 325
          Top = 433
          Width = 44
          Height = 15
          Caption = 'Contato'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object Label34: TLabel
          Left = 501
          Top = 15
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
        object Label6: TLabel
          Left = 458
          Top = 39
          Width = 163
          Height = 15
          Caption = 'Somente Carga Palletizada ?'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object Label26: TLabel
          Left = 458
          Top = 66
          Width = 140
          Height = 15
          Caption = 'Horario de Recebimento:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object Label27: TLabel
          Left = 61
          Top = 462
          Width = 26
          Height = 15
          Caption = 'Obs.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object Label28: TLabel
          Left = 266
          Top = 92
          Width = 133
          Height = 15
          Caption = 'Cobran'#231'a de Descarga:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object Label29: TLabel
          Left = 522
          Top = 92
          Width = 76
          Height = 15
          Caption = 'Un. Cobran'#231'a'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object wwDBEdit3: TwwDBEdit
          Left = 93
          Top = 13
          Width = 281
          Height = 21
          BorderStyle = bsNone
          DataField = 'CLIF_NOME'
          DataSource = DS_CLIFINAL
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
          OnEnter = wwDBEdit3Enter
          OnExit = wwDBEdit3Exit
        end
        object wwDBEdit1: TwwDBEdit
          Left = 93
          Top = 38
          Width = 281
          Height = 21
          BorderStyle = bsNone
          DataField = 'CLIF_RAZA'
          DataSource = DS_CLIFINAL
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
        object DBE_CLI_CGC: TwwDBEdit
          Left = 93
          Top = 63
          Width = 165
          Height = 21
          BorderStyle = bsNone
          DataField = 'CLIF_CGCCPF'
          DataSource = DS_CLIFINAL
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
          OnEnter = DBE_CLI_CGCEnter
          OnExit = DBE_CLI_CGCExit
        end
        object DBE_CLI_INSC: TwwDBEdit
          Left = 93
          Top = 88
          Width = 164
          Height = 21
          BorderStyle = bsNone
          DataField = 'CLIF_INSCRG'
          DataSource = DS_CLIFINAL
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
          OnEnter = DBE_CLI_INSCEnter
          OnExit = DBE_CLI_INSCExit
          OnKeyPress = DBE_CLI_INSCKeyPress
        end
        object DBE_CLI_FEMA: TwwDBEdit
          Left = 93
          Top = 431
          Width = 217
          Height = 21
          BorderStyle = bsNone
          DataField = 'CLIF_EMAIL'
          DataSource = DS_CLIFINAL
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
          OnEnter = DBE_CLI_FEMAEnter
          OnExit = DBE_CLI_FEMAExit
        end
        object DBE_CLI_FFAX: TwwDBEdit
          Left = 93
          Top = 405
          Width = 128
          Height = 21
          BorderStyle = bsNone
          DataField = 'CLIF_TEL1'
          DataSource = DS_CLIFINAL
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
          OnEnter = DBE_CLI_FFAXEnter
          OnExit = DBE_CLI_FFAXExit
        end
        object DBE_CLI_FTE2: TwwDBEdit
          Left = 236
          Top = 405
          Width = 128
          Height = 21
          BorderStyle = bsNone
          DataField = 'CLIF_TEL2'
          DataSource = DS_CLIFINAL
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
          OnEnter = DBE_CLI_FTE2Enter
          OnExit = DBE_CLI_FTE2Exit
        end
        object DBE_CLI_FTEL: TwwDBEdit
          Left = 405
          Top = 406
          Width = 128
          Height = 21
          BorderStyle = bsNone
          DataField = 'CLIF_FAX'
          DataSource = DS_CLIFINAL
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
          OnEnter = DBE_CLI_FTELEnter
          OnExit = DBE_CLI_FTELExit
        end
        object wwDBEdit2: TwwDBEdit
          Left = 374
          Top = 431
          Width = 288
          Height = 21
          BorderStyle = bsNone
          DataField = 'CLIF_CONTATO'
          DataSource = DS_CLIFINAL
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
          OnEnter = wwDBEdit2Enter
          OnExit = wwDBEdit2Exit
        end
        object DBCB_CLI_PESS: TwwDBComboBox
          Left = 577
          Top = 11
          Width = 104
          Height = 21
          ShowButton = True
          Style = csDropDown
          MapList = True
          AllowClearKey = False
          AutoDropDown = True
          BorderStyle = bsNone
          ButtonStyle = cbsEllipsis
          DataField = 'CLIF_PESSOA'
          DataSource = DS_CLIFINAL
          DropDownCount = 8
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ItemHeight = 0
          Items.Strings = (
            'F'#237'sica'#9'F'
            'Jur'#237'dica'#9'J')
          ParentFont = False
          Sorted = False
          TabOrder = 0
          UnboundDataType = wwDefault
          OnEnter = DBCB_CLI_PESSEnter
          OnExit = DBCB_CLI_PESSExit
        end
        object wwDBComboBox1: TwwDBComboBox
          Left = 627
          Top = 36
          Width = 55
          Height = 21
          ShowButton = True
          Style = csDropDown
          MapList = True
          AllowClearKey = False
          AutoDropDown = True
          BorderStyle = bsNone
          ButtonStyle = cbsEllipsis
          DataField = 'CLIF_CARGAPALLET'
          DataSource = DS_CLIFINAL
          DropDownCount = 8
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ItemHeight = 0
          Items.Strings = (
            'Sim'#9'S'
            'N'#227'o'#9'N')
          ParentFont = False
          Sorted = False
          TabOrder = 2
          UnboundDataType = wwDefault
          OnEnter = DBCB_CLI_PESSEnter
          OnExit = DBCB_CLI_PESSExit
        end
        object GroupBox1: TGroupBox
          Left = 29
          Top = 117
          Width = 692
          Height = 163
          Caption = 'Endere'#231'o de Faturamento'
          Color = clSilver
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 9
          object Label18: TLabel
            Left = 7
            Top = 45
            Width = 54
            Height = 15
            Caption = 'Endere'#231'o'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object Label41: TLabel
            Left = 308
            Top = 43
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
          object Label42: TLabel
            Left = 26
            Top = 70
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
          object Label12: TLabel
            Left = 22
            Top = 95
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
          object Label17: TLabel
            Left = 301
            Top = 70
            Width = 54
            Height = 15
            Caption = 'Munic'#237'pio'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object Label11: TLabel
            Left = 38
            Top = 20
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
          object Label30: TLabel
            Left = 269
            Top = 94
            Width = 81
            Height = 15
            Caption = 'Munic'#237'pio Ibge'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object Label31: TLabel
            Left = 6
            Top = 119
            Width = 66
            Height = 15
            Caption = 'Logradouro'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object Label32: TLabel
            Left = 310
            Top = 116
            Width = 45
            Height = 15
            Caption = 'N'#250'mero'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object DBE_CLI_FEND: TwwDBEdit
            Left = 64
            Top = 43
            Width = 236
            Height = 21
            BorderStyle = bsNone
            DataField = 'CLIF_ENDERECO'
            DataSource = DS_CLIFINAL
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
            OnEnter = DBE_CLI_FENDEnter
            OnExit = DBE_CLI_FENDExit
          end
          object wwDBEdit16: TwwDBEdit
            Left = 391
            Top = 40
            Width = 232
            Height = 21
            BorderStyle = bsNone
            DataField = 'CLIF_ENDERECO_COMPL'
            DataSource = DS_CLIFINAL
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
            OnEnter = wwDBEdit16Enter
            OnExit = wwDBEdit16Exit
          end
          object wwDBEdit18: TwwDBEdit
            Left = 64
            Top = 67
            Width = 164
            Height = 21
            BorderStyle = bsNone
            DataField = 'CLIF_ENDERECO_BAIRRO'
            DataSource = DS_CLIFINAL
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
            OnEnter = wwDBEdit18Enter
            OnExit = wwDBEdit18Exit
          end
          object DBLC_DBE_FEST: TwwDBLookupCombo
            Left = 64
            Top = 92
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
            DataField = 'UF_SIGLA'
            DataSource = DS_CLIFINAL
            LookupTable = Q_UF
            LookupField = 'UF_SIGLA'
            ParentFont = False
            TabOrder = 6
            AutoDropDown = True
            ShowButton = True
            SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
            PreciseEditRegion = False
            AllowClearKey = False
            OnEnter = DBLC_DBE_FESTEnter
            OnExit = DBLC_DBE_FESTExit
          end
          object wwDBLookupCombo2: TwwDBLookupCombo
            Left = 360
            Top = 67
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
            DataSource = DS_CLIFINAL
            LookupTable = Q_MUNI
            LookupField = 'MUN_ID'
            ParentFont = False
            TabOrder = 4
            AutoDropDown = True
            ShowButton = True
            SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
            PreciseEditRegion = False
            AllowClearKey = False
            OnEnter = wwDBLookupCombo2Enter
            OnExit = wwDBLookupCombo2Exit
          end
          object DBE_CLI_FCEP: TwwDBEdit
            Left = 64
            Top = 18
            Width = 91
            Height = 21
            BorderStyle = bsNone
            DataField = 'CLIF_CEP'
            DataSource = DS_CLIFINAL
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
            OnEnter = DBE_CLI_FCEPEnter
            OnExit = DBE_CLI_FCEPExit
          end
          object wwDBLookupCombo14: TwwDBLookupCombo
            Left = 360
            Top = 91
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
              'MUNICIPIO'#9'40'#9'MUNICIPIO'#9'F'
              'UF'#9'2'#9'UF'#9'F')
            DataField = 'IBGE_ID'
            DataSource = DS_CLIFINAL
            LookupTable = qrIbge
            LookupField = 'ID'
            Options = [loColLines, loRowLines, loTitles]
            ParentFont = False
            TabOrder = 5
            AutoDropDown = True
            ShowButton = True
            SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
            PreciseEditRegion = False
            AllowClearKey = False
            OnEnter = wwDBLookupCombo6Enter
            OnExit = wwDBLookupCombo6Exit
          end
          object wwDBLookupCombo7: TwwDBLookupCombo
            Left = 80
            Top = 116
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
              'LOGRADOURO'#9'50'#9'LOGRADOURO'#9'F')
            DataField = 'CLIF_LOGRADOURO'
            DataSource = DS_CLIFINAL
            LookupTable = qrLog
            LookupField = 'LOGRADOURO'
            ParentFont = False
            TabOrder = 8
            AutoDropDown = True
            ShowButton = True
            SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
            PreciseEditRegion = False
            AllowClearKey = False
            OnEnter = DBLC_DBE_FESTEnter
            OnExit = DBLC_DBE_FESTExit
          end
          object wwDBEdit8: TwwDBEdit
            Left = 360
            Top = 114
            Width = 91
            Height = 21
            BorderStyle = bsNone
            DataField = 'CLIF_NUMERO'
            DataSource = DS_CLIFINAL
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
            OnEnter = DBE_CLI_FCEPEnter
            OnExit = DBE_CLI_FCEPExit
          end
        end
        object GroupBox2: TGroupBox
          Left = 29
          Top = 282
          Width = 692
          Height = 120
          Caption = 'Endere'#231'o de Entrega'
          Color = clSilver
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 10
          object Label19: TLabel
            Left = 7
            Top = 45
            Width = 54
            Height = 15
            Caption = 'Endere'#231'o'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object Label21: TLabel
            Left = 308
            Top = 43
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
          object Label22: TLabel
            Left = 26
            Top = 70
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
          object Label23: TLabel
            Left = 22
            Top = 95
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
          object Label24: TLabel
            Left = 245
            Top = 70
            Width = 54
            Height = 15
            Caption = 'Munic'#237'pio'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object Label25: TLabel
            Left = 38
            Top = 20
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
          object wwDBEdit4: TwwDBEdit
            Left = 64
            Top = 43
            Width = 236
            Height = 21
            BorderStyle = bsNone
            DataField = 'CLIE_ENDERECO'
            DataSource = DS_CLIFINAL
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
            OnEnter = wwDBEdit4Enter
            OnExit = wwDBEdit4Exit
          end
          object wwDBEdit5: TwwDBEdit
            Left = 391
            Top = 40
            Width = 232
            Height = 21
            BorderStyle = bsNone
            DataField = 'CLIE_ENDERECO_COMPL'
            DataSource = DS_CLIFINAL
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
            OnEnter = wwDBEdit5Enter
            OnExit = wwDBEdit5Exit
          end
          object wwDBEdit6: TwwDBEdit
            Left = 64
            Top = 67
            Width = 164
            Height = 21
            BorderStyle = bsNone
            DataField = 'CLIE_ENDERECO_BAIRRO'
            DataSource = DS_CLIFINAL
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
          object wwDBLookupCombo5: TwwDBLookupCombo
            Left = 64
            Top = 92
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
            DataField = 'CLIE_UF_SIGLA'
            DataSource = DS_CLIFINAL
            LookupTable = Q_UF2
            LookupField = 'UF_SIGLA'
            ParentFont = False
            TabOrder = 5
            AutoDropDown = True
            ShowButton = True
            SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
            PreciseEditRegion = False
            AllowClearKey = False
            OnEnter = wwDBLookupCombo5Enter
            OnExit = wwDBLookupCombo5Exit
          end
          object wwDBLookupCombo6: TwwDBLookupCombo
            Left = 312
            Top = 67
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
            DataField = 'CLIE_MUN_ID'
            DataSource = DS_CLIFINAL
            LookupTable = Q_MUNI2
            LookupField = 'MUN_ID'
            ParentFont = False
            TabOrder = 4
            AutoDropDown = True
            ShowButton = True
            SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
            PreciseEditRegion = False
            AllowClearKey = False
            OnEnter = wwDBLookupCombo6Enter
            OnExit = wwDBLookupCombo6Exit
          end
          object wwDBEdit7: TwwDBEdit
            Left = 64
            Top = 18
            Width = 91
            Height = 21
            BorderStyle = bsNone
            DataField = 'CLIE_CEP'
            DataSource = DS_CLIFINAL
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
            OnEnter = wwDBEdit7Enter
            OnExit = wwDBEdit7Exit
          end
        end
        object DBEdit1: TDBEdit
          Left = 603
          Top = 63
          Width = 77
          Height = 23
          DataField = 'CLI_HORARIO'
          DataSource = DS_CLIFINAL
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object DBMemo1: TDBMemo
          Left = 92
          Top = 461
          Width = 629
          Height = 49
          DataField = 'CLI_OBS'
          DataSource = DS_CLIFINAL
          TabOrder = 16
        end
        object DBEdit2: TDBEdit
          Left = 403
          Top = 89
          Width = 77
          Height = 23
          DataField = 'CLI_VL_DESCARGA'
          DataSource = DS_CLIFINAL
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
        object DBEdit3: TDBEdit
          Left = 603
          Top = 89
          Width = 77
          Height = 23
          DataField = 'CLI_UNCOBRACA'
          DataSource = DS_CLIFINAL
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
        end
      end
    end
    object TTabPage
      Left = 4
      Top = 24
      Caption = '   Clientes NBF   '
      object DBText4: TDBText
        Left = 76
        Top = 12
        Width = 349
        Height = 17
        DataField = 'CLIF_RAZA'
        DataSource = DS_CLIFINAL
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label15: TLabel
        Left = 36
        Top = 13
        Width = 33
        Height = 15
        Caption = 'Nome'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Panel6: TPanel
        Left = 7
        Top = 36
        Width = 701
        Height = 315
        BevelInner = bvSpace
        BevelOuter = bvLowered
        BevelWidth = 3
        Color = clSilver
        TabOrder = 0
        object Label35: TLabel
          Left = 76
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
        object Label36: TLabel
          Left = 18
          Top = 44
          Width = 123
          Height = 15
          Caption = 'C'#243'digo no Cliente NBF'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object Label37: TLabel
          Left = 446
          Top = 19
          Width = 94
          Height = 15
          Caption = 'Data de Inclus'#227'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object wwDBEdit17: TwwDBEdit
          Left = 144
          Top = 45
          Width = 73
          Height = 21
          BorderStyle = bsNone
          DataField = 'NBFINAL_COD_CLIN'
          DataSource = DS_NBFIN
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
        object wwDBEdit19: TwwDBEdit
          Left = 545
          Top = 18
          Width = 70
          Height = 21
          AutoSelect = False
          BorderStyle = bsNone
          DataField = 'NBFINAL_DT_INCL'
          DataSource = DS_NBFIN
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
          OnEnter = wwDBEdit19Enter
          OnExit = wwDBEdit19Exit
        end
        object wwDBGrid3: TwwDBGrid
          Left = 105
          Top = 76
          Width = 522
          Height = 213
          Hint = 'Visualiza'#231#227'o dos Registros'
          DittoAttributes.ShortCutDittoField = 0
          DittoAttributes.ShortCutDittoRecord = 0
          DittoAttributes.Options = []
          DisableThemesInTitle = False
          Selected.Strings = (
            'CLIN_RAZA'#9'40'#9'Cliente NBF'
            'NBFINAL_DT_INCL'#9'18'#9'Data Inclus'#227'o'
            'NBFINAL_COD_CLIN'#9'10'#9'C'#243'digo no Cliente NBF')
          IniAttributes.FileName = 'delphi32.ini'
          IniAttributes.SectionName = 'FClienteFINALwwDBGrid3'
          IniAttributes.Delimiter = ';;'
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          DataSource = DS_NBFIN
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          KeyOptions = []
          Options = [dgAlwaysShowEditor, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgWordWrap]
          ParentFont = False
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 3
          TitleAlignment = taCenter
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clNavy
          TitleFont.Height = -12
          TitleFont.Name = 'Arial'
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
        object wwDBLookupCombo1: TwwDBLookupCombo
          Left = 143
          Top = 18
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
            'CLIN_RAZA'#9'50'#9'Cliente NBF'#9'F')
          DataField = 'CLIN_ID'
          DataSource = DS_NBFIN
          LookupTable = Q_CLIN
          LookupField = 'CLIN_ID'
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
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 784
    Height = 30
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object SpeedButton3: TSpeedButton
      Left = 748
      Top = 1
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
    object Label16: TLabel
      Left = 16
      Top = 2
      Width = 185
      Height = 29
      Caption = 'Clientes Finais'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -24
      Font.Name = 'Georgia'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object SpeedButton4: TSpeedButton
      Left = 722
      Top = 1
      Width = 25
      Height = 25
      Hint = 'Pesquisar Clientes Finais'
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
    object SpeedButton1: TSpeedButton
      Left = 695
      Top = 1
      Width = 27
      Height = 25
      Hint = 'Visualizar Relat'#243'rio'
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
    object DBNavigator1: TDBNavigator
      Left = 503
      Top = 1
      Width = 192
      Height = 25
      DataSource = DS_CLIFINAL
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbPost, nbCancel]
      Hints.Strings = (
        'Posiciona no primeiro registro | Posiciona no primeiro registro'
        'Retorna ao registro anterior | Retorna ao registro anterior '
        'Avan'#231'a para o pr'#243'ximo registro | Avan'#231'a para o pr'#243'ximo registro '
        'Posiciona no '#250'ltimo registro | Posiciona no '#250'ltimo registro '
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
  object Panel2: TPanel
    Left = 743
    Top = 139
    Width = 553
    Height = 366
    BevelOuter = bvLowered
    Caption = 'Panel2'
    Color = clBlue
    TabOrder = 2
    Visible = False
    object Panel4: TPanel
      Left = 13
      Top = 11
      Width = 530
      Height = 344
      TabOrder = 0
      object SBT_VISU: TSpeedButton
        Left = 73
        Top = 256
        Width = 101
        Height = 27
        Hint = 'Visualiza relat'#243'rio na tela'
        Caption = '&Visualiza'
        Glyph.Data = {
          42010000424D4201000000000000760000002800000013000000110000000100
          040000000000CC00000000000000000000001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
          8888888880008880000000000000888880008880FFFFFFFFFFF0888880008880
          FFFFFFFFFFF0888880008880F77F777F77F0888880008880FFFFFFFFFFF08888
          80008880F7F77F7F77F0888880008880FFFFFFFFFFF0888880008880F77F7F7F
          77F0888880008880FFFFFFFFFFF0888880008880F7777F77F7F0888880008880
          FFFFFFFFFFF0888880008880F77F77F777F0888880008880FFFFFFFFFFF08888
          80038880FFFFFFFFFFF08880000F88800000000000008880000F888888888888
          88888880000F}
        ParentShowHint = False
        ShowHint = True
        OnClick = SBT_VISUClick
      end
      object SBT_SAIR: TSpeedButton
        Left = 385
        Top = 256
        Width = 101
        Height = 27
        Hint = 'Sair da tela atual'
        Caption = '&Sair'
        Glyph.Data = {
          76020000424D7602000000000000760000002800000040000000100000000100
          0400000000000002000000000000000000001000000010000000000000000000
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
        OnClick = SBT_SAIRClick
      end
      object Label13: TLabel
        Left = 112
        Top = 5
        Width = 288
        Height = 16
        Caption = 'Filtros para Relat'#243'rio de Clientes Finais '
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Georgia'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object Label14: TLabel
        Left = 53
        Top = 97
        Width = 68
        Height = 15
        Caption = 'Cliente Final'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label20: TLabel
        Left = 57
        Top = 169
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
      object wwDBLookupCombo3: TwwDBLookupCombo
        Left = 129
        Top = 92
        Width = 352
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
          'CLIF_RAZA'#9'60'#9'Raz'#227'o Social'#9'F')
        LookupTable = Q_CLIENTEFINAL_FILTRO
        LookupField = 'CLIF_ID'
        ParentFont = False
        TabOrder = 0
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = True
      end
      object wwDBLookupCombo4: TwwDBLookupCombo
        Left = 129
        Top = 164
        Width = 352
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
          'CLIN_RAZA'#9'50'#9'Cliente NBF'#9'F')
        LookupTable = Q_CLIENTENBF_FILTRO
        LookupField = 'CLIN_ID'
        ParentFont = False
        TabOrder = 1
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = True
      end
    end
  end
  object Q_CLIFINAL: TwwQuery
    AutoCalcFields = False
    CachedUpdates = True
    BeforePost = Q_CLIFINALBeforePost
    AfterPost = Q_CLIFINALAfterPost
    AfterDelete = Q_CLIFINALAfterDelete
    OnNewRecord = Q_CLIFINALNewRecord
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    RequestLive = True
    SQL.Strings = (
      'select * from CLIENTEFINAL order by CLIF_NOME')
    UpdateObject = UPD_CLIFINAL
    ValidateWithMask = True
    Left = 400
    Top = 8
    object Q_CLIFINALCLIF_CGCCPF: TStringField
      DisplayLabel = 'CNPJ / CPF'
      DisplayWidth = 20
      FieldName = 'CLIF_CGCCPF'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_CGCCPF'
      EditMask = '!999.999.999\/9999\-99;0; '
      FixedChar = True
      Size = 15
    end
    object Q_CLIFINALCLIF_NOME: TStringField
      DisplayLabel = 'Fantasia'
      DisplayWidth = 50
      FieldName = 'CLIF_NOME'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_NOME'
      FixedChar = True
      Size = 30
    end
    object Q_CLIFINALCLIF_RAZA: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      DisplayWidth = 60
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
    object Q_CLIFINALCLIF_PESSOA: TStringField
      DisplayWidth = 1
      FieldName = 'CLIF_PESSOA'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_PESSOA'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_CLIFINALCLIF_INSCRG: TStringField
      DisplayWidth = 15
      FieldName = 'CLIF_INSCRG'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_INSCRG'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object Q_CLIFINALCLIF_ENDERECO: TStringField
      DisplayWidth = 50
      FieldName = 'CLIF_ENDERECO'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_ENDERECO'
      Visible = False
      FixedChar = True
      Size = 50
    end
    object Q_CLIFINALCLIF_MUNICIPIO: TStringField
      DisplayWidth = 40
      FieldName = 'CLIF_MUNICIPIO'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_MUNICIPIO'
      Visible = False
      FixedChar = True
      Size = 40
    end
    object Q_CLIFINALUF_SIGLA: TStringField
      DisplayWidth = 2
      FieldName = 'UF_SIGLA'
      Origin = 'NBFDADOS.CLIENTEFINAL.UF_SIGLA'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object Q_CLIFINALCLIF_CEP: TStringField
      DisplayWidth = 8
      FieldName = 'CLIF_CEP'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_CEP'
      Visible = False
      EditMask = '99999-999;0;_'
      FixedChar = True
      Size = 8
    end
    object Q_CLIFINALCLIF_TEL1: TStringField
      DisplayWidth = 11
      FieldName = 'CLIF_TEL1'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_TEL1'
      Visible = False
      EditMask = '!\(999\)#999-9999;0; '
      FixedChar = True
      Size = 11
    end
    object Q_CLIFINALCLIF_TEL2: TStringField
      DisplayWidth = 11
      FieldName = 'CLIF_TEL2'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_TEL2'
      Visible = False
      EditMask = '!\(999\)#999-9999;0; '
      FixedChar = True
      Size = 11
    end
    object Q_CLIFINALCLIF_FAX: TStringField
      DisplayWidth = 11
      FieldName = 'CLIF_FAX'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_FAX'
      Visible = False
      EditMask = '!\(999\)#999-9999;0; '
      FixedChar = True
      Size = 11
    end
    object Q_CLIFINALCLIF_EMAIL: TStringField
      DisplayWidth = 60
      FieldName = 'CLIF_EMAIL'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_EMAIL'
      Visible = False
      FixedChar = True
      Size = 60
    end
    object Q_CLIFINALCLIF_CONTATO: TStringField
      DisplayWidth = 50
      FieldName = 'CLIF_CONTATO'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_CONTATO'
      Visible = False
      FixedChar = True
      Size = 50
    end
    object Q_CLIFINALCLIF_ENDERECO_COMPL: TStringField
      DisplayWidth = 20
      FieldName = 'CLIF_ENDERECO_COMPL'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_ENDERECO_COMPL'
      Visible = False
      FixedChar = True
    end
    object Q_CLIFINALCLIF_ENDERECO_BAIRRO: TStringField
      DisplayWidth = 40
      FieldName = 'CLIF_ENDERECO_BAIRRO'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_ENDERECO_BAIRRO'
      Visible = False
      FixedChar = True
      Size = 40
    end
    object Q_CLIFINALMUN_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'MUN_ID'
      Origin = 'NBFDADOS.CLIENTEFINAL.MUN_ID'
      Visible = False
    end
    object Q_CLIFINALCLIF_CARGAPALLET: TStringField
      DisplayWidth = 1
      FieldName = 'CLIF_CARGAPALLET'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_CARGAPALLET'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_CLIFINALCLIF_MUNICIPIO2: TStringField
      FieldName = 'CLIF_MUNICIPIO2'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_MUNICIPIO2'
      FixedChar = True
      Size = 40
    end
    object Q_CLIFINALCLIE_ENDERECO: TStringField
      FieldName = 'CLIE_ENDERECO'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIE_ENDERECO'
      FixedChar = True
      Size = 50
    end
    object Q_CLIFINALCLIE_ENDERECO_COMPL: TStringField
      FieldName = 'CLIE_ENDERECO_COMPL'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIE_ENDERECO_COMPL'
      FixedChar = True
    end
    object Q_CLIFINALCLIE_ENDERECO_BAIRRO: TStringField
      FieldName = 'CLIE_ENDERECO_BAIRRO'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIE_ENDERECO_BAIRRO'
      FixedChar = True
      Size = 40
    end
    object Q_CLIFINALCLIE_MUNICIPIO: TStringField
      FieldName = 'CLIE_MUNICIPIO'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIE_MUNICIPIO'
      FixedChar = True
      Size = 40
    end
    object Q_CLIFINALCLIE_MUN_ID: TIntegerField
      FieldName = 'CLIE_MUN_ID'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIE_MUN_ID'
    end
    object Q_CLIFINALCLIE_UF_SIGLA: TStringField
      FieldName = 'CLIE_UF_SIGLA'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIE_UF_SIGLA'
      FixedChar = True
      Size = 2
    end
    object Q_CLIFINALCLIE_CEP: TStringField
      FieldName = 'CLIE_CEP'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIE_CEP'
      EditMask = '99999-999;0;_'
      FixedChar = True
      Size = 8
    end
    object Q_CLIFINALCLI_HORARIO: TStringField
      FieldName = 'CLI_HORARIO'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLI_HORARIO'
      FixedChar = True
      Size = 5
    end
    object Q_CLIFINALCLI_VL_DESCARGA: TFloatField
      FieldName = 'CLI_VL_DESCARGA'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLI_VL_DESCARGA'
      DisplayFormat = '###,###,##0.00'
    end
    object Q_CLIFINALCLI_OBS: TStringField
      FieldName = 'CLI_OBS'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLI_OBS'
      FixedChar = True
      Size = 255
    end
    object Q_CLIFINALCLI_UNCOBRACA: TStringField
      FieldName = 'CLI_UNCOBRACA'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLI_UNCOBRACA'
      FixedChar = True
      Size = 50
    end
    object Q_CLIFINALIBGE_ID: TIntegerField
      FieldName = 'IBGE_ID'
      Origin = 'NBFDADOS.CLIENTEFINAL.IBGE_ID'
    end
    object Q_CLIFINALCLIF_LOGRADOURO: TStringField
      FieldName = 'CLIF_LOGRADOURO'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_LOGRADOURO'
      FixedChar = True
      Size = 50
    end
    object Q_CLIFINALCLIF_NUMERO: TStringField
      FieldName = 'CLIF_NUMERO'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_NUMERO'
      FixedChar = True
      Size = 15
    end
  end
  object DS_CLIFINAL: TwwDataSource
    DataSet = Q_CLIFINAL
    Left = 183
  end
  object UPD_CLIFINAL: TUpdateSQL
    ModifySQL.Strings = (
      'update CLIENTEFINAL'
      'set'
      '  CLIF_PESSOA = :CLIF_PESSOA,'
      '  CLIF_RAZA = :CLIF_RAZA,'
      '  CLIF_NOME = :CLIF_NOME,'
      '  CLIF_CGCCPF = :CLIF_CGCCPF,'
      '  CLIF_INSCRG = :CLIF_INSCRG,'
      '  CLIF_ENDERECO = :CLIF_ENDERECO,'
      '  CLIF_ENDERECO_COMPL = :CLIF_ENDERECO_COMPL,'
      '  CLIF_ENDERECO_BAIRRO = :CLIF_ENDERECO_BAIRRO,'
      '  CLIF_MUNICIPIO = :CLIF_MUNICIPIO,'
      '  CLIF_MUNICIPIO2 = :CLIF_MUNICIPIO2,'
      '  UF_SIGLA = :UF_SIGLA,'
      '  CLIF_CEP = :CLIF_CEP,'
      '  CLIF_TEL1 = :CLIF_TEL1,'
      '  CLIF_TEL2 = :CLIF_TEL2,'
      '  CLIF_FAX = :CLIF_FAX,'
      '  CLIF_EMAIL = :CLIF_EMAIL,'
      '  CLIF_CONTATO = :CLIF_CONTATO,'
      '  MUN_ID = :MUN_ID,'
      '  CLIF_CARGAPALLET = :CLIF_CARGAPALLET,'
      '  CLIE_ENDERECO = :CLIE_ENDERECO,'
      '  CLIE_ENDERECO_COMPL = :CLIE_ENDERECO_COMPL,'
      '  CLIE_ENDERECO_BAIRRO = :CLIE_ENDERECO_BAIRRO,'
      '  CLIE_MUNICIPIO = :CLIE_MUNICIPIO,'
      '  CLIE_MUN_ID = :CLIE_MUN_ID,'
      '  CLIE_UF_SIGLA = :CLIE_UF_SIGLA,'
      '  CLIE_CEP = :CLIE_CEP,'
      'CLI_HORARIO = :CLI_HORARIO,'
      'CLI_VL_DESCARGA = :CLI_VL_DESCARGA,'
      'CLI_OBS = :CLI_OBS,'
      'CLI_UNCOBRACA = :CLI_UNCOBRACA,'
      'IBGE_ID = :IBGE_ID,'
      'CLIF_LOGRADOURO = :CLIF_LOGRADOURO,'
      'CLIF_NUMERO = :CLIF_NUMERO'
      'where'
      '  CLIF_ID = :OLD_CLIF_ID')
    InsertSQL.Strings = (
      'insert into CLIENTEFINAL'
      '  (CLIF_PESSOA, CLIF_RAZA, CLIF_NOME, CLIF_CGCCPF, CLIF_INSCRG, '
      'CLIF_ENDERECO, '
      '   CLIF_ENDERECO_COMPL, CLIF_ENDERECO_BAIRRO, CLIF_MUNICIPIO, '
      'CLIF_MUNICIPIO2, '
      
        '   UF_SIGLA, CLIF_CEP, CLIF_TEL1, CLIF_TEL2, CLIF_FAX, CLIF_EMAI' +
        'L, '
      'CLIF_CONTATO, '
      
        '   MUN_ID, CLIF_CARGAPALLET, CLIE_ENDERECO, CLIE_ENDERECO_COMPL,' +
        ' '
      'CLIE_ENDERECO_BAIRRO, '
      '   CLIE_MUNICIPIO, CLIE_MUN_ID, CLIE_UF_SIGLA, CLIE_CEP,'
      'CLI_HORARIO, '
      'CLI_VL_DESCARGA,'
      'CLI_OBS,'
      'CLI_UNCOBRACA, IBGE_ID,'
      'CLIF_LOGRADOURO, CLIF_NUMERO'
      ''
      ')'
      'values'
      
        '  (:CLIF_PESSOA, :CLIF_RAZA, :CLIF_NOME, :CLIF_CGCCPF, :CLIF_INS' +
        'CRG, '
      ':CLIF_ENDERECO, '
      
        '   :CLIF_ENDERECO_COMPL, :CLIF_ENDERECO_BAIRRO, :CLIF_MUNICIPIO,' +
        ' '
      ':CLIF_MUNICIPIO2, '
      
        '   :UF_SIGLA, :CLIF_CEP, :CLIF_TEL1, :CLIF_TEL2, :CLIF_FAX, :CLI' +
        'F_EMAIL, '
      '   :CLIF_CONTATO, :MUN_ID, :CLIF_CARGAPALLET, :CLIE_ENDERECO, '
      ':CLIE_ENDERECO_COMPL, '
      '   :CLIE_ENDERECO_BAIRRO, :CLIE_MUNICIPIO, :CLIE_MUN_ID, '
      ':CLIE_UF_SIGLA, '
      '   :CLIE_CEP,'
      ':CLI_HORARIO, '
      ':CLI_VL_DESCARGA,'
      ':CLI_OBS,'
      ':CLI_UNCOBRACA, :IBGE_ID,'
      ':CLIF_LOGRADOURO, :CLIF_NUMERO'
      ')')
    DeleteSQL.Strings = (
      'delete from CLIENTEFINAL'
      'where'
      '  CLIF_ID = :OLD_CLIF_ID')
    Left = 551
    Top = 184
  end
  object Q_NBFIN: TwwQuery
    AutoCalcFields = False
    CachedUpdates = True
    BeforePost = Q_NBFINBeforePost
    AfterPost = Q_NBFINAfterPost
    AfterDelete = Q_NBFINAfterDelete
    OnNewRecord = Q_NBFINNewRecord
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    DataSource = DS_CLIFINAL
    RequestLive = True
    SQL.Strings = (
      'select'
      ' A.*,B.CLIN_RAZA'
      ' from '
      'CLIENTE_NBFINAL A, CLIENTENBF B'
      'where '
      'A.CLIF_ID = :CLIF_ID'
      'and'
      'A.CLIN_ID = B.CLIN_ID  order by  B.CLIN_RAZA'
      '')
    UpdateObject = UPD_NBFIN
    ValidateWithMask = True
    Left = 351
    Top = 32
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'CLIF_ID'
        ParamType = ptUnknown
      end>
    object Q_NBFINCLIN_RAZA: TStringField
      DisplayLabel = 'Cliente NBF'
      DisplayWidth = 40
      FieldName = 'CLIN_RAZA'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_RAZA'
      FixedChar = True
      Size = 50
    end
    object Q_NBFINNBFINAL_DT_INCL: TDateTimeField
      DisplayLabel = 'Data Inclus'#227'o'
      DisplayWidth = 18
      FieldName = 'NBFINAL_DT_INCL'
      Origin = 'NBFDADOS.CLIENTE_NBFINAL.NBFINAL_DT_INCL'
      EditMask = '!99/99/9999;1;_'
    end
    object Q_NBFINNBFINAL_COD_CLIN: TStringField
      DisplayLabel = 'C'#243'digo no Cliente NBF'
      DisplayWidth = 10
      FieldName = 'NBFINAL_COD_CLIN'
      Origin = 'NBFDADOS.CLIENTE_NBFINAL.NBFINAL_COD_CLIN'
      FixedChar = True
      Size = 10
    end
    object Q_NBFINNBFINAL_ID: TAutoIncField
      FieldName = 'NBFINAL_ID'
      Origin = 'NBFDADOS.CLIENTE_NBFINAL.NBFINAL_ID'
      Visible = False
    end
    object Q_NBFINCLIF_ID: TIntegerField
      FieldName = 'CLIF_ID'
      Origin = 'NBFDADOS.CLIENTE_NBFINAL.CLIF_ID'
      Visible = False
    end
    object Q_NBFINCLIN_ID: TIntegerField
      FieldName = 'CLIN_ID'
      Origin = 'NBFDADOS.CLIENTE_NBFINAL.CLIN_ID'
      Visible = False
    end
  end
  object DS_NBFIN: TwwDataSource
    DataSet = Q_NBFIN
    Left = 447
    Top = 160
  end
  object UPD_NBFIN: TUpdateSQL
    ModifySQL.Strings = (
      'update CLIENTE_NBFINAL'
      'set'
      '  CLIF_ID = :CLIF_ID,'
      '  CLIN_ID = :CLIN_ID,'
      '  NBFINAL_DT_INCL = :NBFINAL_DT_INCL,'
      '  NBFINAL_COD_CLIN = :NBFINAL_COD_CLIN'
      'where'
      '  NBFINAL_ID = :OLD_NBFINAL_ID')
    InsertSQL.Strings = (
      'insert into CLIENTE_NBFINAL'
      '  (CLIF_ID, CLIN_ID, NBFINAL_DT_INCL, NBFINAL_COD_CLIN)'
      'values'
      '  (:CLIF_ID, :CLIN_ID, :NBFINAL_DT_INCL, :NBFINAL_COD_CLIN)')
    DeleteSQL.Strings = (
      'delete from CLIENTE_NBFINAL'
      'where'
      '  NBFINAL_ID = :OLD_NBFINAL_ID')
    Left = 487
    Top = 8
  end
  object Q_UF: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select *  from UF '
      'order by UF_NOME'
      ''
      '')
    ValidateWithMask = True
    Left = 648
    Top = 15
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
  object Q_CLIN: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'select CLIN_ID,CLIN_RAZA from CLIENTENBF '
      'where  '
      '(CLIN_CONTRATO <> '#39'I'#39' and CLIN_CONTRATO <> '#39'R'#39') '
      'order by CLIN_RAZA')
    ValidateWithMask = True
    Left = 608
    Top = 9
    object Q_CLINCLIN_RAZA: TStringField
      DisplayLabel = 'Cliente NBF'
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
  object Q_CEP: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    ValidateWithMask = True
    Left = 392
    Top = 92
  end
  object Q_MUNI: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select * from MUNICIPIO order by MUN_NOME')
    ValidateWithMask = True
    Left = 288
    Top = 6
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
    Left = 560
    Top = 14
  end
  object wwSearchDialog1: TwwSearchDialog
    Selected.Strings = (
      'CLIF_NOME'#9'50'#9'Fantasia'#9'F'
      'CLIF_RAZA'#9'60'#9'Raz'#227'o Social'#9'F'
      'CLIF_CGCCPF'#9'20'#9'CNPJ / CPF'#9'F')
    GridTitleAlignment = taCenter
    GridColor = clAqua
    GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
    SearchTable = Q_CLIFINAL
    Caption = 'Pesquisa de Clientes Finais'
    MaxWidth = 0
    MaxHeight = 350
    CharCase = ecUpperCase
    Left = 248
    Top = 8
  end
  object Q_CLIENTEFINAL_FILTRO: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'select CLIF_ID,CLIF_RAZA from CLIENTEFINAL order by CLIF_raza')
    ValidateWithMask = True
    Left = 655
    Top = 160
    object Q_CLIENTEFINAL_FILTROCLIF_ID: TAutoIncField
      FieldName = 'CLIF_ID'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_ID'
    end
    object Q_CLIENTEFINAL_FILTROCLIF_RAZA: TStringField
      FieldName = 'CLIF_RAZA'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_RAZA'
      FixedChar = True
      Size = 50
    end
  end
  object Q_CLIENTENBF_FILTRO: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'select CLIN_ID,CLIN_RAZA from CLIENTENBF order by CLIN_RAZA')
    ValidateWithMask = True
    Left = 335
    Top = 161
    object StringField18: TStringField
      DisplayLabel = 'Cliente NBF'
      DisplayWidth = 50
      FieldName = 'CLIN_RAZA'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_RAZA'
      FixedChar = True
      Size = 50
    end
    object AutoIncField2: TAutoIncField
      DisplayWidth = 10
      FieldName = 'CLIN_ID'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_ID'
      Visible = False
    end
  end
  object Q_MUNI2: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select * from MUNICIPIO order by MUN_NOME')
    ValidateWithMask = True
    Left = 747
    Top = 38
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
      'Select *  from UF '
      'order by UF_NOME'
      ''
      '')
    ValidateWithMask = True
    Left = 685
    Top = 23
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
  object Q_AUX2: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    ValidateWithMask = True
    Left = 400
    Top = 96
  end
  object qrIbge: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM TB_IBGE'
      'order by municipio')
    Left = 53
    Top = 357
    object qrIbgeMUNICIPIO: TStringField
      DisplayWidth = 40
      FieldName = 'MUNICIPIO'
      Size = 250
    end
    object qrIbgeUF: TStringField
      DisplayWidth = 2
      FieldName = 'UF'
      Size = 2
    end
    object qrIbgeID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'ID'
      ReadOnly = True
      Visible = False
    end
    object qrIbgeCOD_UF: TIntegerField
      DisplayWidth = 10
      FieldName = 'COD_UF'
      Visible = False
    end
    object qrIbgeCOD_MUN: TIntegerField
      DisplayWidth = 10
      FieldName = 'COD_MUN'
      Visible = False
    end
  end
  object qrLog: TADOQuery
    Active = True
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM TP_LOGRADOURO'
      'ORDER BY LOGRADOURO')
    Left = 557
    Top = 277
    object qrLogLOGRADOURO: TStringField
      DisplayWidth = 50
      FieldName = 'LOGRADOURO'
      Size = 50
    end
  end
end
