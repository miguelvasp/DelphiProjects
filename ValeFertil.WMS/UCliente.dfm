object FCliente: TFCliente
  Left = 263
  Top = 126
  Width = 779
  Height = 630
  BorderIcons = []
  Color = clMenu
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
  object Label50: TLabel
    Left = 220
    Top = 261
    Width = 29
    Height = 15
    Caption = 'Peso'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object TabbedNotebook1: TTabbedNotebook
    Left = 5
    Top = 50
    Width = 749
    Height = 527
    PageIndex = 3
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    TabFont.Charset = ANSI_CHARSET
    TabFont.Color = clBlack
    TabFont.Height = -11
    TabFont.Name = 'Arial'
    TabFont.Style = [fsBold]
    TabOrder = 2
    OnClick = TabbedNotebook1Click
    OnChange = TabbedNotebook1Change
    object TTabPage
      Left = 4
      Top = 25
      Caption = '   Principal   '
      object Panel1: TPanel
        Left = 20
        Top = 2
        Width = 701
        Height = 496
        BevelInner = bvSpace
        BevelOuter = bvLowered
        BevelWidth = 3
        Color = clSilver
        TabOrder = 0
        object Label3: TLabel
          Left = 41
          Top = 17
          Width = 48
          Height = 15
          Caption = 'Fantasia'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object Label1: TLabel
          Left = 16
          Top = 46
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
        object Label2: TLabel
          Left = 30
          Top = 75
          Width = 59
          Height = 15
          Caption = 'CNPJ/ CPF'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 15
          Top = 104
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
        object Label18: TLabel
          Left = 35
          Top = 163
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
        object Label11: TLabel
          Left = 66
          Top = 133
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
        object Label12: TLabel
          Left = 50
          Top = 259
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
        object Label7: TLabel
          Left = 431
          Top = 394
          Width = 34
          Height = 15
          Caption = 'E-Mail'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
          Visible = False
        end
        object Label8: TLabel
          Left = 69
          Top = 317
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
          Top = 289
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
          Top = 288
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
        object Label34: TLabel
          Left = 386
          Top = 46
          Width = 87
          Height = 15
          Caption = 'Tipo de Pessoa'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object Label41: TLabel
          Left = 362
          Top = 163
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
          Left = 54
          Top = 230
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
        object Label43: TLabel
          Left = 302
          Top = 75
          Width = 90
          Height = 15
          Caption = 'Conta Gerencial'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object Label45: TLabel
          Left = 379
          Top = 17
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
        object Label46: TLabel
          Left = 501
          Top = 17
          Width = 123
          Height = 15
          Caption = 'Usar C�d.Cliente Final'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object Label17: TLabel
          Left = 386
          Top = 230
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
        object Label54: TLabel
          Left = 315
          Top = 346
          Width = 113
          Height = 15
          Caption = 'Endere�o da P�gina'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object Label90: TLabel
          Left = 308
          Top = 417
          Width = 242
          Height = 15
          Caption = 'Descri��o de Mercadorias (Tipo de Carga):'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object Label93: TLabel
          Left = 458
          Top = 104
          Width = 176
          Height = 15
          Caption = 'Controla Itens de NF por Lote ? '
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object Label102: TLabel
          Left = 426
          Top = 133
          Width = 204
          Height = 15
          Caption = 'Porcent�gem de desconto no CTRC:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object Label103: TLabel
          Left = 356
          Top = 262
          Width = 83
          Height = 15
          Caption = 'Munic�pio IBGE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object Label107: TLabel
          Left = 18
          Top = 198
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
        object Label108: TLabel
          Left = 394
          Top = 197
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
        object Label109: TLabel
          Left = 322
          Top = 315
          Width = 106
          Height = 15
          Caption = 'Isen��o de Seguro'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object Label110: TLabel
          Left = 317
          Top = 373
          Width = 113
          Height = 15
          Caption = 'Valor frete adicional'
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
          DataField = 'CLIN_NOME'
          DataSource = DS_CLINBF
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
          Top = 42
          Width = 281
          Height = 21
          BorderStyle = bsNone
          DataField = 'CLIN_RAZA'
          DataSource = DS_CLINBF
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
          OnEnter = wwDBEdit1Enter
          OnExit = wwDBEdit1Exit
        end
        object DBE_CLI_CGC: TwwDBEdit
          Left = 93
          Top = 72
          Width = 165
          Height = 21
          BorderStyle = bsNone
          DataField = 'CLIN_CGCCPF'
          DataSource = DS_CLINBF
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
          OnEnter = DBE_CLI_CGCEnter
          OnExit = DBE_CLI_CGCExit
          OnKeyPress = DBE_CLI_CGCKeyPress
        end
        object DBE_CLI_INSC: TwwDBEdit
          Left = 93
          Top = 101
          Width = 203
          Height = 21
          BorderStyle = bsNone
          DataField = 'CLIN_INSCRG'
          DataSource = DS_CLINBF
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
          OnEnter = DBE_CLI_INSCEnter
          OnExit = DBE_CLI_INSCExit
          OnKeyPress = DBE_CLI_INSCKeyPress
        end
        object DBE_CLI_FEND: TwwDBEdit
          Left = 93
          Top = 160
          Width = 236
          Height = 21
          BorderStyle = bsNone
          DataField = 'CLIN_ENDERECO'
          DataSource = DS_CLINBF
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
          OnEnter = DBE_CLI_FENDEnter
          OnExit = DBE_CLI_FENDExit
        end
        object DBE_CLI_FCEP: TwwDBEdit
          Left = 93
          Top = 130
          Width = 91
          Height = 21
          BorderStyle = bsNone
          DataField = 'CLIN_CEP'
          DataSource = DS_CLINBF
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
          OnEnter = DBE_CLI_FCEPEnter
          OnExit = DBE_CLI_FCEPExit
        end
        object DBLC_DBE_FEST: TwwDBLookupCombo
          Left = 93
          Top = 256
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
          DataSource = DS_CLINBF
          LookupTable = Q_UF
          LookupField = 'UF_SIGLA'
          ParentFont = False
          TabOrder = 18
          AutoDropDown = True
          ShowButton = True
          SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
          PreciseEditRegion = False
          AllowClearKey = False
          OnEnter = DBLC_DBE_FESTEnter
          OnExit = DBLC_DBE_FESTExit
        end
        object DBE_CLI_FEMA: TwwDBEdit
          Left = 469
          Top = 392
          Width = 217
          Height = 21
          BorderStyle = bsNone
          DataField = 'CLIN_EMAIL'
          DataSource = DS_CLINBF
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 23
          UnboundDataType = wwDefault
          Visible = False
          WantReturns = False
          WordWrap = False
          OnEnter = DBE_CLI_FEMAEnter
          OnExit = DBE_CLI_FEMAExit
        end
        object DBE_CLI_FFAX: TwwDBEdit
          Left = 93
          Top = 285
          Width = 128
          Height = 21
          BorderStyle = bsNone
          DataField = 'CLIN_TEL1'
          DataSource = DS_CLINBF
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 20
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnEnter = DBE_CLI_FFAXEnter
          OnExit = DBE_CLI_FFAXExit
        end
        object DBE_CLI_FTE2: TwwDBEdit
          Left = 236
          Top = 285
          Width = 128
          Height = 21
          BorderStyle = bsNone
          DataField = 'CLIN_TEL2'
          DataSource = DS_CLINBF
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 21
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnEnter = DBE_CLI_FTE2Enter
          OnExit = DBE_CLI_FTE2Exit
        end
        object DBE_CLI_FTEL: TwwDBEdit
          Left = 93
          Top = 314
          Width = 128
          Height = 21
          BorderStyle = bsNone
          DataField = 'CLIN_FAX'
          DataSource = DS_CLINBF
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 22
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnEnter = DBE_CLI_FTELEnter
          OnExit = DBE_CLI_FTELExit
        end
        object DBCB_CLI_PESS: TwwDBComboBox
          Left = 478
          Top = 42
          Width = 104
          Height = 21
          ShowButton = True
          Style = csDropDown
          MapList = True
          AllowClearKey = False
          AutoDropDown = True
          BorderStyle = bsNone
          ButtonStyle = cbsEllipsis
          DataField = 'CLIN_PESSOA'
          DataSource = DS_CLINBF
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
          OnEnter = DBCB_CLI_PESSEnter
          OnExit = DBCB_CLI_PESSExit
        end
        object wwDBEdit16: TwwDBEdit
          Left = 446
          Top = 160
          Width = 232
          Height = 21
          BorderStyle = bsNone
          DataField = 'CLIN_ENDERECO_COMPL'
          DataSource = DS_CLINBF
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
          OnEnter = wwDBEdit16Enter
          OnExit = wwDBEdit16Exit
        end
        object wwDBEdit18: TwwDBEdit
          Left = 93
          Top = 227
          Width = 164
          Height = 21
          BorderStyle = bsNone
          DataField = 'CLIN_ENDERECO_BAIRRO'
          DataSource = DS_CLINBF
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
          OnEnter = wwDBEdit18Enter
          OnExit = wwDBEdit18Exit
        end
        object wwDBLookupCombo5: TwwDBLookupCombo
          Left = 397
          Top = 72
          Width = 294
          Height = 21
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          BorderStyle = bsNone
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'CON_DESC'#9'25'#9'Descri��o'#9'F')
          DataField = 'CON_CODI'
          DataSource = DS_CLINBF
          LookupTable = Q_CG
          LookupField = 'CON_CODI'
          ParentFont = False
          TabOrder = 7
          AutoDropDown = True
          ShowButton = True
          SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
          PreciseEditRegion = False
          AllowClearKey = False
          OnEnter = wwDBLookupCombo5Enter
          OnExit = wwDBLookupCombo5Exit
        end
        object wwDBComboBox1: TwwDBComboBox
          Left = 432
          Top = 13
          Width = 62
          Height = 21
          ShowButton = True
          Style = csDropDown
          MapList = True
          AllowClearKey = False
          AutoDropDown = True
          BorderStyle = bsNone
          ButtonStyle = cbsEllipsis
          DataField = 'CLIN_CONTRATO'
          DataSource = DS_CLINBF
          DropDownCount = 8
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ItemHeight = 0
          Items.Strings = (
            'Sim'#9'S'
            'N�o'#9'N'
            'Inativo'#9'I')
          ParentFont = False
          Sorted = False
          TabOrder = 2
          UnboundDataType = wwDefault
          OnEnter = wwDBComboBox1Enter
          OnExit = wwDBComboBox1Exit
        end
        object wwDBComboBox2: TwwDBComboBox
          Left = 629
          Top = 13
          Width = 62
          Height = 21
          ShowButton = True
          Style = csDropDown
          MapList = True
          AllowClearKey = False
          AutoDropDown = True
          BorderStyle = bsNone
          ButtonStyle = cbsEllipsis
          DataField = 'CLIN_UTIL_COD'
          DataSource = DS_CLINBF
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
          TabOrder = 3
          UnboundDataType = wwDefault
          OnEnter = wwDBComboBox1Enter
          OnExit = wwDBComboBox1Exit
        end
        object wwDBLookupCombo6: TwwDBLookupCombo
          Left = 445
          Top = 227
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
            'MUN_NOME'#9'40'#9'MUN_NOME'#9'F'
            'DIPAM'#9'10'#9'DIPAM'#9'F')
          DataField = 'MUN_ID'
          DataSource = DS_CLINBF
          LookupTable = Q_MUNI
          LookupField = 'MUN_ID'
          ParentFont = False
          TabOrder = 17
          AutoDropDown = True
          ShowButton = True
          SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
          PreciseEditRegion = False
          AllowClearKey = False
          OnEnter = wwDBLookupCombo6Enter
          OnExit = wwDBLookupCombo6Exit
        end
        object wwDBEdit22: TwwDBEdit
          Left = 433
          Top = 344
          Width = 243
          Height = 21
          BorderStyle = bsNone
          DataField = 'CLIN_WEB'
          DataSource = DS_CLINBF
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 24
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnEnter = wwDBEdit22Enter
          OnExit = wwDBEdit22Exit
        end
        object Panel12: TPanel
          Left = 379
          Top = 10
          Width = 313
          Height = 31
          BevelOuter = bvNone
          Color = clSilver
          TabOrder = 0
          Visible = False
        end
        object DBMemo1: TDBMemo
          Left = 310
          Top = 434
          Width = 373
          Height = 53
          DataField = 'CLIN_TPMERC'
          DataSource = DS_CLINBF
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 25
        end
        object wwDBComboBox8: TwwDBComboBox
          Left = 640
          Top = 101
          Width = 51
          Height = 21
          ShowButton = True
          Style = csDropDown
          MapList = True
          AllowClearKey = False
          AutoDropDown = True
          BorderStyle = bsNone
          ButtonStyle = cbsEllipsis
          CharCase = ecUpperCase
          DataField = 'CLIN_LOTE'
          DataSource = DS_CLINBF
          DropDownCount = 8
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ItemHeight = 0
          Items.Strings = (
            'SIM'#9'S'
            'N�O'#9'N')
          ParentFont = False
          Sorted = False
          TabOrder = 9
          UnboundDataType = wwDefault
          OnEnter = wwDBComboBox8Enter
          OnExit = wwDBComboBox8Exit
        end
        object edtDesconto: TDBEdit
          Left = 640
          Top = 128
          Width = 49
          Height = 22
          DataField = 'CLIN_DESCONTO'
          DataSource = DS_CLINBF
          TabOrder = 10
        end
        object wwDBLookupCombo14: TwwDBLookupCombo
          Left = 445
          Top = 259
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
          DataSource = DS_CLINBF
          LookupTable = qrIbge
          LookupField = 'ID'
          Options = [loColLines, loRowLines, loTitles]
          ParentFont = False
          TabOrder = 19
          AutoDropDown = True
          ShowButton = True
          SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
          PreciseEditRegion = False
          AllowClearKey = False
          OnEnter = wwDBLookupCombo6Enter
          OnExit = wwDBLookupCombo6Exit
        end
        object wwDBLookupCombo15: TwwDBLookupCombo
          Left = 93
          Top = 195
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
            'LOGRADOURO'#9'50'#9'LOGRADOURO'#9'F')
          DataField = 'CLIN_LOGRADOURO'
          DataSource = DS_CLINBF
          LookupTable = qrLog
          LookupField = 'LOGRADOURO'
          ParentFont = False
          TabOrder = 15
          AutoDropDown = True
          ShowButton = True
          SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
          PreciseEditRegion = False
          AllowClearKey = False
          OnEnter = wwDBLookupCombo6Enter
          OnExit = wwDBLookupCombo6Exit
        end
        object wwDBEdit47: TwwDBEdit
          Left = 445
          Top = 194
          Width = 91
          Height = 21
          BorderStyle = bsNone
          DataField = 'CLIN_NUMERO'
          DataSource = DS_CLINBF
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
          OnEnter = DBE_CLI_FCEPEnter
          OnExit = DBE_CLI_FCEPExit
        end
        object wwDBComboBox10: TwwDBComboBox
          Left = 433
          Top = 315
          Width = 250
          Height = 21
          ShowButton = True
          Style = csDropDown
          MapList = True
          AllowClearKey = False
          AutoDropDown = True
          BorderStyle = bsNone
          ButtonStyle = cbsEllipsis
          DataField = 'CLIN_ISENCAO'
          DataSource = DS_CLINBF
          DropDownCount = 8
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ItemHeight = 0
          Items.Strings = (
            'Sem Isen��o'#9'1'
            'Averbado Anteriormente'#9'2'
            'Redespacho'#9'3'
            'Tr�fego M�tuo'#9'4'
            'Seguro Proprio'#9'5'
            'Outras Isen��es'#9'6'
            'Isen��o RCFDC'#9'7')
          ParentFont = False
          Sorted = False
          TabOrder = 26
          UnboundDataType = wwDefault
          OnEnter = wwDBComboBox3Enter
          OnExit = wwDBComboBox3Exit
        end
        object DBCheckBox3: TDBCheckBox
          Left = 20
          Top = 353
          Width = 201
          Height = 17
          Caption = 'Cobra frete de devolu��o'
          DataField = 'CLIN_COBRAFRETEDEV'
          DataSource = DS_CLINBF
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 27
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox4: TDBCheckBox
          Left = 20
          Top = 377
          Width = 209
          Height = 17
          Caption = 'Paga frete de devolu��o'
          DataField = 'CLIN_PAGAFRETEDEV'
          DataSource = DS_CLINBF
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 28
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object wwDBEdit48: TwwDBEdit
          Left = 433
          Top = 370
          Width = 128
          Height = 21
          BorderStyle = bsNone
          DataField = 'CLIN_FRETEADICIONAL'
          DataSource = DS_CLINBF
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 29
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnEnter = DBE_CLI_FTELEnter
          OnExit = DBE_CLI_FTELExit
        end
        object GroupBox5: TGroupBox
          Left = 40
          Top = 421
          Width = 241
          Height = 64
          Caption = 'Cobran�a por permanencia Cross docking'
          TabOrder = 30
          object Label111: TLabel
            Left = 8
            Top = 16
            Width = 59
            Height = 14
            Caption = 'Dias Isentos'
            FocusControl = DBEdit1
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label112: TLabel
            Left = 96
            Top = 16
            Width = 88
            Height = 14
            Caption = 'Valor por tonelada'
            FocusControl = DBEdit2
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object DBEdit1: TDBEdit
            Left = 8
            Top = 32
            Width = 64
            Height = 22
            DataField = 'CLIN_PERMANENCIAISENTA'
            DataSource = DS_CLINBF
            TabOrder = 0
          end
          object DBEdit2: TDBEdit
            Left = 96
            Top = 32
            Width = 129
            Height = 22
            DataField = 'CLIN_PERMANENCIAVALOR'
            DataSource = DS_CLINBF
            TabOrder = 1
          end
        end
        object dbchk1: TDBCheckBox
          Left = 20
          Top = 401
          Width = 341
          Height = 17
          Caption = 'Aloca restante do produto na mesma posi��o na Sa�da'
          DataField = 'DeixaRestoNaPosicao'
          DataSource = DS_CLINBF
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 31
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
      end
    end
    object TTabPage
      Left = 4
      Top = 25
      Caption = '   Contatos   '
      object Label5: TLabel
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
      object DBText3: TDBText
        Left = 76
        Top = 12
        Width = 349
        Height = 17
        DataField = 'CLIN_RAZA'
        DataSource = DS_CLINBF
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Panel2: TPanel
        Left = 15
        Top = 44
        Width = 724
        Height = 359
        BevelInner = bvSpace
        BevelOuter = bvLowered
        BevelWidth = 3
        Color = clSilver
        TabOrder = 0
        object Label6: TLabel
          Left = 77
          Top = 47
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
        object Label21: TLabel
          Left = 19
          Top = 19
          Width = 91
          Height = 15
          Caption = 'Tipo de Contato '
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object Label22: TLabel
          Left = 76
          Top = 131
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
        object Label23: TLabel
          Left = 74
          Top = 103
          Width = 36
          Height = 15
          Caption = 'Ramal'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object Label25: TLabel
          Left = 54
          Top = 75
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
        object Label44: TLabel
          Left = 242
          Top = 79
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
        object wwDBEdit2: TwwDBEdit
          Left = 113
          Top = 46
          Width = 281
          Height = 21
          BorderStyle = bsNone
          DataField = 'CONT_NOME'
          DataSource = DS_CONTA
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
          OnEnter = wwDBEdit2Enter
          OnExit = wwDBEdit2Exit
        end
        object wwDBLookupCombo1: TwwDBLookupCombo
          Left = 113
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
            'TCONT_DESCRICAO'#9'40'#9'Descri��o'#9'F')
          DataField = 'TCONT_ID'
          DataSource = DS_CONTA
          LookupTable = Q_TCONT
          LookupField = 'TCONT_ID'
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
        object wwDBEdit10: TwwDBEdit
          Left = 113
          Top = 130
          Width = 217
          Height = 21
          BorderStyle = bsNone
          DataField = 'CONT_EMAIL'
          DataSource = DS_CONTA
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
          OnEnter = wwDBEdit10Enter
          OnExit = wwDBEdit10Exit
        end
        object wwDBEdit11: TwwDBEdit
          Left = 113
          Top = 74
          Width = 128
          Height = 21
          BorderStyle = bsNone
          DataField = 'CONT_TEL1'
          DataSource = DS_CONTA
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
          OnEnter = wwDBEdit11Enter
          OnExit = wwDBEdit11Exit
        end
        object wwDBEdit13: TwwDBEdit
          Left = 113
          Top = 102
          Width = 128
          Height = 21
          BorderStyle = bsNone
          DataField = 'CONT_RAMAL'
          DataSource = DS_CONTA
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
          OnEnter = wwDBEdit13Enter
          OnExit = wwDBEdit13Exit
        end
        object DBG_RAAT: TwwDBGrid
          Left = 12
          Top = 156
          Width = 679
          Height = 189
          Hint = 'Visualiza��o dos Registros'
          Selected.Strings = (
            'TCONT_DESC'#9'24'#9'Tipo de Contato'#9'F'
            'CONT_NOME'#9'33'#9'Nome'
            'CONT_TEL1'#9'13'#9'Telefone'
            'CONT_RAMAL'#9'8'#9'Ramal'
            'CONT_EMAIL'#9'25'#9'E-Mail')
          IniAttributes.FileName = 'delphi32.ini'
          IniAttributes.SectionName = 'FClienteDBG_RAAT'
          IniAttributes.Delimiter = ';;'
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          DataSource = DS_CONTA
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
          TabOrder = 6
          TitleAlignment = taCenter
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clNavy
          TitleFont.Height = -11
          TitleFont.Name = 'Arial Narrow'
          TitleFont.Style = [fsBold]
          TitleLines = 1
          TitleButtons = False
          object DBG_RAATIButton: TwwIButton
            Left = 0
            Top = 0
            Width = 13
            Height = 22
            AllowAllUp = True
          end
        end
        object wwDBEdit20: TwwDBEdit
          Left = 253
          Top = 74
          Width = 128
          Height = 21
          BorderStyle = bsNone
          DataField = 'CONT_TEL2'
          DataSource = DS_CONTA
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
    end
    object TTabPage
      Left = 4
      Top = 25
      Caption = '   Tipos de Produtos   '
      object DBText1: TDBText
        Left = 76
        Top = 12
        Width = 349
        Height = 17
        DataField = 'CLIN_RAZA'
        DataSource = DS_CLINBF
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label13: TLabel
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
      object Panel4: TPanel
        Left = 7
        Top = 36
        Width = 724
        Height = 359
        BevelInner = bvSpace
        BevelOuter = bvLowered
        BevelWidth = 3
        Color = clSilver
        TabOrder = 0
        object Label19: TLabel
          Left = 19
          Top = 24
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
        object wwDBEdit4: TwwDBEdit
          Left = 57
          Top = 21
          Width = 281
          Height = 21
          BorderStyle = bsNone
          DataField = 'TPRO_NOME'
          DataSource = DS_TPROD
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
          OnEnter = wwDBEdit4Enter
          OnExit = wwDBEdit4Exit
        end
        object wwDBGrid1: TwwDBGrid
          Left = 55
          Top = 49
          Width = 286
          Height = 151
          Hint = 'Visualiza��o dos Registros'
          Selected.Strings = (
            'TPRO_NOME'#9'41'#9'Nome')
          IniAttributes.FileName = 'delphi32.ini'
          IniAttributes.SectionName = 'FClientewwDBGrid1'
          IniAttributes.Delimiter = ';;'
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          DataSource = DS_TPROD
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
          TabOrder = 1
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
      end
    end
    object TTabPage
      Left = 4
      Top = 25
      Caption = '   Produtos   '
      object DBText2: TDBText
        Left = 76
        Top = 1
        Width = 349
        Height = 17
        DataField = 'CLIN_RAZA'
        DataSource = DS_CLINBF
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object Label14: TLabel
        Left = 36
        Top = 2
        Width = 33
        Height = 15
        Caption = 'Nome'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object TabbedNotebook2: TTabbedNotebook
        Left = 1
        Top = 23
        Width = 739
        Height = 442
        TabFont.Charset = ANSI_CHARSET
        TabFont.Color = clRed
        TabFont.Height = -11
        TabFont.Name = 'Arial'
        TabFont.Style = [fsBold]
        TabOrder = 0
        Visible = False
        OnClick = TabbedNotebook2Click
        OnChange = TabbedNotebook2Change
        object TTabPage
          Left = 4
          Top = 25
          Caption = '   Produtos   '
          object Panel5: TPanel
            Left = 1
            Top = 1
            Width = 729
            Height = 413
            BevelInner = bvSpace
            BevelOuter = bvLowered
            BevelWidth = 3
            Color = clSilver
            TabOrder = 0
            object Label20: TLabel
              Left = 87
              Top = 37
              Width = 58
              Height = 15
              Caption = 'Descri��o'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label24: TLabel
              Left = 43
              Top = 88
              Width = 101
              Height = 15
              Caption = 'Unidade de Venda'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label27: TLabel
              Left = 56
              Top = 61
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
            object Label28: TLabel
              Left = 106
              Top = 13
              Width = 39
              Height = 15
              Caption = 'C�digo'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label31: TLabel
              Left = 82
              Top = 239
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
            object Label38: TLabel
              Left = 223
              Top = 239
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
            object Label48: TLabel
              Left = 103
              Top = 160
              Width = 42
              Height = 15
              Caption = 'Origem'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label52: TLabel
              Left = 43
              Top = 213
              Width = 101
              Height = 15
              Caption = 'Prazo de Validade'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label53: TLabel
              Left = 196
              Top = 213
              Width = 25
              Height = 15
              Caption = 'Dias'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label67: TLabel
              Left = 72
              Top = 263
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
            object Label68: TLabel
              Left = 223
              Top = 263
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
            object Label69: TLabel
              Left = 20
              Top = 113
              Width = 125
              Height = 15
              Caption = 'Unidade de Expedi��o'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label70: TLabel
              Left = 72
              Top = 136
              Width = 73
              Height = 15
              Caption = 'Qtde. UV / UE'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label72: TLabel
              Left = 200
              Top = 136
              Width = 73
              Height = 15
              Caption = 'Qtde. UV / UE'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label75: TLabel
              Left = 290
              Top = 13
              Width = 85
              Height = 15
              Caption = 'Descontinuado'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label87: TLabel
              Left = 51
              Top = 289
              Width = 94
              Height = 15
              Caption = 'Redu��o ICMS %'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label91: TLabel
              Left = 37
              Top = 187
              Width = 106
              Height = 15
              Caption = 'Isen��o de Seguro'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label92: TLabel
              Left = 89
              Top = 314
              Width = 56
              Height = 15
              Caption = 'Al�q. ICMS'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label104: TLabel
              Left = 78
              Top = 339
              Width = 67
              Height = 15
              Alignment = taRightJustify
              Caption = 'Embalagem'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label105: TLabel
              Left = 56
              Top = 363
              Width = 89
              Height = 15
              Alignment = taRightJustify
              Caption = 'Tipo de Produto'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label106: TLabel
              Left = 342
              Top = 363
              Width = 147
              Height = 15
              Alignment = taRightJustify
              Caption = 'Classifica��o Fiscal(NCM)'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object wwDBEdit5: TwwDBEdit
              Left = 148
              Top = 35
              Width = 281
              Height = 21
              BorderStyle = bsNone
              DataField = 'PRO_DESC'
              DataSource = DS_PROD
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
            object wwDBLookupCombo2: TwwDBLookupCombo
              Left = 148
              Top = 60
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
                'TPRO_NOME'#9'41'#9'Nome'#9'F')
              DataField = 'TPRO_ID'
              DataSource = DS_PROD
              LookupTable = Q_TPROD
              LookupField = 'TPRO_ID'
              ParentFont = False
              TabOrder = 5
              AutoDropDown = True
              ShowButton = True
              SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
              PreciseEditRegion = False
              AllowClearKey = False
              OnEnter = wwDBLookupCombo2Enter
              OnExit = wwDBLookupCombo2Exit
            end
            object wwDBEdit7: TwwDBEdit
              Left = 148
              Top = 10
              Width = 128
              Height = 21
              BorderStyle = bsNone
              DataField = 'PRO_COD'
              DataSource = DS_PROD
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
            object wwDBGrid2: TwwDBGrid
              Left = 618
              Top = 17
              Width = 31
              Height = 32
              Hint = 'Visualiza��o dos Registros'
              Selected.Strings = (
                'PRO_COD'#9'13'#9'C�digo'
                'PRO_DESC'#9'34'#9'Descri��o'
                'TPRO_DESC'#9'30'#9'Tipo de Produto'
                'UVEN_DESC'#9'30'#9'Unidade de Venda'
                'PRO_QTDE_PALLET'#9'6'#9'Qtde.PALLET'
                'PRO_PESO'#9'6'#9'Peso'
                'PRO_VOLUME'#9'10'#9'Volume'
                'PRO_VOLUME_PALLET'#9'10'#9'Volume PALLET'
                'INSUMO'#9'1'#9'INSUMO')
              IniAttributes.FileName = 'delphi32.ini'
              IniAttributes.SectionName = 'FClientewwDBGrid2'
              IniAttributes.Delimiter = ';;'
              TitleColor = clBtnFace
              FixedCols = 0
              ShowHorzScrollBar = True
              DataSource = DS_PROD
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
              TitleFont.Height = -11
              TitleFont.Name = 'Arial Narrow'
              TitleFont.Style = [fsBold]
              TitleLines = 1
              TitleButtons = False
              Visible = False
              object wwIButton2: TwwIButton
                Left = 0
                Top = 0
                Width = 13
                Height = 22
                AllowAllUp = True
              end
            end
            object wwDBLookupCombo3: TwwDBLookupCombo
              Left = 148
              Top = 86
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
                'UVEN_NOME'#9'40'#9'Nome'#9'F')
              DataField = 'UVEN_ID'
              DataSource = DS_PROD
              LookupTable = Q_UNIDVEND
              LookupField = 'UVEN_ID'
              ParentFont = False
              TabOrder = 6
              AutoDropDown = True
              ShowButton = True
              SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
              PreciseEditRegion = False
              AllowClearKey = False
              OnEnter = wwDBLookupCombo3Enter
              OnExit = wwDBLookupCombo3Exit
            end
            object wwDBEdit12: TwwDBEdit
              Left = 148
              Top = 237
              Width = 73
              Height = 21
              BorderStyle = bsNone
              DataField = 'PRO_PESO'
              DataSource = DS_PROD
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
              OnEnter = wwDBEdit12Enter
              OnExit = wwDBEdit12Exit
            end
            object GroupBox6: TGroupBox
              Left = 479
              Top = 17
              Width = 220
              Height = 95
              Caption = 'Palletiza��o - Unidade de Expedi��o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 2
              object Label26: TLabel
                Left = 127
                Top = 22
                Width = 87
                Height = 15
                Caption = 'Qtde. por Pallet'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = [fsBold, fsUnderline]
                ParentFont = False
              end
              object Label29: TLabel
                Left = 39
                Top = 57
                Width = 34
                Height = 15
                Caption = 'Altura'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = [fsBold, fsUnderline]
                ParentFont = False
              end
              object Label47: TLabel
                Left = 36
                Top = 25
                Width = 37
                Height = 15
                Caption = 'Lastro'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = [fsBold, fsUnderline]
                ParentFont = False
              end
              object DBText5: TDBText
                Left = 139
                Top = 41
                Width = 62
                Height = 28
                Alignment = taCenter
                Color = clMenu
                DataField = 'PRO_QTDE_PALLET'
                DataSource = DS_PROD
                Font.Charset = ANSI_CHARSET
                Font.Color = clRed
                Font.Height = -24
                Font.Name = 'Comic Sans MS'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
              end
              object wwDBEdit6: TwwDBEdit
                Left = 76
                Top = 54
                Width = 42
                Height = 21
                BorderStyle = bsNone
                DataField = 'PRO_ALTURA'
                DataSource = DS_PROD
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
              object wwDBEdit8: TwwDBEdit
                Left = 76
                Top = 22
                Width = 42
                Height = 21
                BorderStyle = bsNone
                DataField = 'PRO_LASTRO'
                DataSource = DS_PROD
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
                OnEnter = wwDBEdit8Enter
                OnExit = wwDBEdit8Exit
              end
            end
            object wwDBComboBox3: TwwDBComboBox
              Left = 148
              Top = 160
              Width = 252
              Height = 21
              ShowButton = True
              Style = csDropDown
              MapList = True
              AllowClearKey = False
              AutoDropDown = True
              BorderStyle = bsNone
              ButtonStyle = cbsEllipsis
              DataField = 'PRO_ORIGEM'
              DataSource = DS_PROD
              DropDownCount = 8
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ItemHeight = 0
              Items.Strings = (
                'Nacional'#9'0'
                'Importado'#9'1'
                'Importado adquirido no Mercado Interno'#9'2')
              ParentFont = False
              Sorted = False
              TabOrder = 10
              UnboundDataType = wwDefault
              OnEnter = wwDBComboBox3Enter
              OnExit = wwDBComboBox3Exit
            end
            object wwDBEdit21: TwwDBEdit
              Left = 148
              Top = 212
              Width = 45
              Height = 21
              BorderStyle = bsNone
              DataField = 'PRO_VALIDDIAS'
              DataSource = DS_PROD
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
              OnEnter = wwDBEdit12Enter
              OnExit = wwDBEdit12Exit
            end
            object wwDBEdit30: TwwDBEdit
              Left = 148
              Top = 262
              Width = 73
              Height = 21
              BorderStyle = bsNone
              DataField = 'PRO_PESO_LIQ'
              DataSource = DS_PROD
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
              OnEnter = wwDBEdit30Enter
              OnExit = wwDBEdit30Exit
            end
            object wwDBLookupCombo10: TwwDBLookupCombo
              Left = 148
              Top = 111
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
                'UVEN_NOME'#9'40'#9'Nome'#9'F')
              DataField = 'UVEN_ID_EXP'
              DataSource = DS_PROD
              LookupTable = Q_UNIDVEND2
              LookupField = 'UVEN_ID'
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
            object wwDBEdit31: TwwDBEdit
              Left = 148
              Top = 135
              Width = 45
              Height = 21
              BorderStyle = bsNone
              DataField = 'QTDE_UVUE'
              DataSource = DS_PROD
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
              OnEnter = wwDBEdit12Enter
              OnExit = wwDBEdit12Exit
            end
            object GroupBox1: TGroupBox
              Left = 479
              Top = 136
              Width = 220
              Height = 81
              Caption = 'Palletiza��o - Unidade de Venda'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 9
              object Label71: TLabel
                Left = 127
                Top = 22
                Width = 87
                Height = 15
                Caption = 'Qtde. por Pallet'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = [fsBold, fsUnderline]
                ParentFont = False
              end
              object DBText9: TDBText
                Left = 80
                Top = 41
                Width = 134
                Height = 31
                Alignment = taCenter
                Color = clMenu
                DataField = 'PRO_QTDE_PALLETUV'
                DataSource = DS_PROD
                Font.Charset = ANSI_CHARSET
                Font.Color = clRed
                Font.Height = -24
                Font.Name = 'Comic Sans MS'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
              end
            end
            object wwDBComboBox6: TwwDBComboBox
              Left = 377
              Top = 10
              Width = 53
              Height = 21
              ShowButton = True
              Style = csDropDown
              MapList = True
              AllowClearKey = False
              AutoDropDown = True
              BorderStyle = bsNone
              ButtonStyle = cbsEllipsis
              CharCase = ecUpperCase
              DataField = 'PRO_DESCONTINUA'
              DataSource = DS_PROD
              DropDownCount = 8
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ItemHeight = 0
              Items.Strings = (
                'SIM'#9'S'
                'N�O'#9'N')
              ParentFont = False
              Sorted = False
              TabOrder = 1
              UnboundDataType = wwDefault
            end
            object GroupBox2: TGroupBox
              Left = 306
              Top = 219
              Width = 393
              Height = 105
              Caption = 'Metros C�bicos'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 13
              object Label77: TLabel
                Left = 7
                Top = 23
                Width = 77
                Height = 15
                Caption = 'Comprimento'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = [fsBold, fsUnderline]
                ParentFont = False
              end
              object Label78: TLabel
                Left = 39
                Top = 47
                Width = 45
                Height = 15
                Caption = 'Largura'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = [fsBold, fsUnderline]
                ParentFont = False
              end
              object Label79: TLabel
                Left = 50
                Top = 71
                Width = 34
                Height = 15
                Caption = 'Altura'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = [fsBold, fsUnderline]
                ParentFont = False
              end
              object Label32: TLabel
                Left = 190
                Top = 23
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
                Left = 155
                Top = 47
                Width = 77
                Height = 15
                Caption = 'Volume Pallet'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = [fsBold, fsUnderline]
                ParentFont = False
              end
              object Label40: TLabel
                Left = 367
                Top = 47
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
              object Label39: TLabel
                Left = 367
                Top = 23
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
              object DBText10: TDBText
                Left = 235
                Top = 22
                Width = 130
                Height = 21
                Alignment = taRightJustify
                Color = clMenu
                DataField = 'PRO_VOLUME'
                DataSource = DS_PROD
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object DBText11: TDBText
                Left = 235
                Top = 48
                Width = 130
                Height = 21
                Alignment = taRightJustify
                Color = clMenu
                DataField = 'PRO_VOLUME_PALLET'
                DataSource = DS_PROD
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object wwDBEdit32: TwwDBEdit
                Left = 88
                Top = 22
                Width = 55
                Height = 21
                BorderStyle = bsNone
                DataField = 'PRO_COMPR'
                DataSource = DS_PROD
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
                OnEnter = wwDBEdit32Enter
                OnExit = wwDBEdit32Exit
              end
              object wwDBEdit33: TwwDBEdit
                Left = 88
                Top = 48
                Width = 55
                Height = 21
                BorderStyle = bsNone
                DataField = 'PRO_LARG'
                DataSource = DS_PROD
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
                OnEnter = wwDBEdit33Enter
                OnExit = wwDBEdit33Exit
              end
              object wwDBEdit34: TwwDBEdit
                Left = 88
                Top = 73
                Width = 55
                Height = 21
                BorderStyle = bsNone
                DataField = 'PRO_ALT'
                DataSource = DS_PROD
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
                OnEnter = wwDBEdit34Enter
                OnExit = wwDBEdit34Exit
              end
            end
            object DBE_CFA_RICM: TwwDBEdit
              Left = 148
              Top = 287
              Width = 58
              Height = 21
              BorderStyle = bsNone
              DataField = 'PRO_REDUZICMS'
              DataSource = DS_PROD
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
              OnEnter = DBE_CFA_RICMEnter
              OnExit = DBE_CFA_RICMExit
            end
            object wwDBComboBox9: TwwDBComboBox
              Left = 148
              Top = 187
              Width = 250
              Height = 21
              ShowButton = True
              Style = csDropDown
              MapList = True
              AllowClearKey = False
              AutoDropDown = True
              BorderStyle = bsNone
              ButtonStyle = cbsEllipsis
              DataField = 'PRO_ISENCAO'
              DataSource = DS_PROD
              DropDownCount = 8
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ItemHeight = 0
              Items.Strings = (
                'Sem Isen��o'#9'1'
                'Averbado Anteriormente'#9'2'
                'Redespacho'#9'3'
                'Tr�fego M�tuo'#9'4'
                'Seguro Proprio'#9'5'
                'Outras Isen��es'#9'6'
                'Isen��o RCFDC'#9'7')
              ParentFont = False
              Sorted = False
              TabOrder = 11
              UnboundDataType = wwDefault
              OnEnter = wwDBComboBox3Enter
              OnExit = wwDBComboBox3Exit
            end
            object wwDBEdit36: TwwDBEdit
              Left = 148
              Top = 312
              Width = 58
              Height = 21
              BorderStyle = bsNone
              DataField = 'PRO_ICMS'
              DataSource = DS_PROD
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 17
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
              OnEnter = DBE_CFA_RICMEnter
              OnExit = DBE_CFA_RICMExit
            end
            object wwDBEdit44: TwwDBEdit
              Left = 148
              Top = 337
              Width = 413
              Height = 21
              BorderStyle = bsNone
              DataField = 'EMBALAGEM'
              DataSource = DS_PROD
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 18
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
              OnEnter = DBE_CFA_RICMEnter
              OnExit = DBE_CFA_RICMExit
            end
            object wwDBEdit45: TwwDBEdit
              Left = 148
              Top = 361
              Width = 173
              Height = 21
              BorderStyle = bsNone
              DataField = 'TIPO_PRODUTO'
              DataSource = DS_PROD
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 19
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
              OnEnter = DBE_CFA_RICMEnter
              OnExit = DBE_CFA_RICMExit
            end
            object wwDBEdit46: TwwDBEdit
              Left = 492
              Top = 361
              Width = 117
              Height = 21
              BorderStyle = bsNone
              DataField = 'NCM'
              DataSource = DS_PROD
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 20
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
              OnEnter = DBE_CFA_RICMEnter
              OnExit = DBE_CFA_RICMExit
            end
            object DBCheckBox2: TDBCheckBox
              Left = 148
              Top = 387
              Width = 241
              Height = 17
              Caption = 'Este produto � insumo'
              DataField = 'INSUMO'
              DataSource = DS_PROD
              Font.Charset = ANSI_CHARSET
              Font.Color = clRed
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 21
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
          end
        end
        object TTabPage
          Left = 4
          Top = 25
          Caption = '   �reas de Armazenamento   '
          object Label49: TLabel
            Left = 20
            Top = 12
            Width = 45
            Height = 15
            Caption = 'Produto'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBText6: TDBText
            Left = 72
            Top = 11
            Width = 577
            Height = 17
            DataField = 'PRO_DESC'
            DataSource = DS_PROD
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Panel7: TPanel
            Left = 122
            Top = 38
            Width = 505
            Height = 323
            BevelInner = bvSpace
            BevelOuter = bvLowered
            BevelWidth = 3
            Color = clSilver
            TabOrder = 0
            object Label51: TLabel
              Left = 17
              Top = 34
              Width = 141
              Height = 15
              Caption = '�rea de Armazenamento'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label61: TLabel
              Left = 108
              Top = 82
              Width = 50
              Height = 15
              Caption = 'Situa��o'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label30: TLabel
              Left = 119
              Top = 11
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
            object SpeedButton5: TSpeedButton
              Left = 468
              Top = 13
              Width = 25
              Height = 25
              Hint = 'Copiar �rea de um Produto '
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000130B0000130B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                3333333333333333FF3333333333333003333333333333377F33333333333307
                733333FFF333337773333C003333307733333777FF333777FFFFC0CC03330770
                000077777FF377777777C033C03077FFFFF077FF77F777FFFFF7CC00000F7777
                777077777777777777773CCCCC00000000003777777777777777333330030FFF
                FFF03333F77F7F3FF3F7333C0C030F00F0F03337777F7F77373733C03C030FFF
                FFF03377F77F7F3F333733C03C030F0FFFF03377F7737F733FF733C000330FFF
                0000337777F37F3F7777333CCC330F0F0FF0333777337F737F37333333330FFF
                0F03333333337FFF7F7333333333000000333333333377777733}
              NumGlyphs = 2
              ParentShowHint = False
              ShowHint = True
              OnClick = SpeedButton5Click
            end
            object Label74: TLabel
              Left = 162
              Top = 60
              Width = 161
              Height = 17
              Caption = '�rea de Armazenamento'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -15
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object wwDBGrid4: TwwDBGrid
              Left = 16
              Top = 108
              Width = 477
              Height = 203
              Hint = 'Visualiza��o dos Registros'
              Selected.Strings = (
                'PROAREA_ORDEM'#9'10'#9'Ordem'
                'AR_NOME'#9'45'#9'�rea de Armazenamento'#9'F'
                'PROAREA_SITU'#9'16'#9'Situa��o')
              IniAttributes.FileName = 'delphi32.ini'
              IniAttributes.SectionName = 'FClientewwDBGrid4'
              IniAttributes.Delimiter = ';;'
              TitleColor = clBtnFace
              FixedCols = 0
              ShowHorzScrollBar = True
              DataSource = DS_PROAREA
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
              TabOrder = 4
              TitleAlignment = taCenter
              TitleFont.Charset = ANSI_CHARSET
              TitleFont.Color = clNavy
              TitleFont.Height = -13
              TitleFont.Name = 'Arial Narrow'
              TitleFont.Style = [fsBold]
              TitleLines = 1
              TitleButtons = False
              object wwIButton4: TwwIButton
                Left = 0
                Top = 0
                Width = 13
                Height = 22
                AllowAllUp = True
              end
            end
            object wwDBLookupCombo7: TwwDBLookupCombo
              Left = 162
              Top = 33
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
              DataSource = DS_PROAREA
              LookupTable = Q_AR
              LookupField = 'AR_ID'
              ParentFont = False
              TabOrder = 2
              AutoDropDown = True
              ShowButton = True
              SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
              PreciseEditRegion = False
              AllowClearKey = False
              OnEnter = wwDBLookupCombo7Enter
              OnExit = wwDBLookupCombo7Exit
            end
            object wwDBComboBox4: TwwDBComboBox
              Left = 162
              Top = 82
              Width = 127
              Height = 21
              ShowButton = True
              Style = csDropDown
              MapList = True
              AllowClearKey = False
              AutoDropDown = True
              BorderStyle = bsNone
              ButtonStyle = cbsEllipsis
              DataField = 'PROAREA_SITU'
              DataSource = DS_PROAREA
              DropDownCount = 8
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ItemHeight = 0
              Items.Strings = (
                'Preferencial'#9'P'
                'Evitar'#9'E')
              ParentFont = False
              Sorted = False
              TabOrder = 3
              UnboundDataType = wwDefault
              OnEnter = wwDBComboBox4Enter
              OnExit = wwDBComboBox4Exit
            end
            object wwDBComboBox5: TwwDBComboBox
              Left = 194
              Top = 134
              Width = 127
              Height = 21
              ShowButton = True
              Style = csDropDown
              MapList = True
              AllowClearKey = False
              AutoDropDown = True
              BorderStyle = bsNone
              ButtonStyle = cbsEllipsis
              CharCase = ecUpperCase
              DataField = 'PROAREA_SITU'
              DataSource = DS_PROAREA
              DropDownCount = 8
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ItemHeight = 0
              Items.Strings = (
                'Preferencial'#9'P'
                'Evitar'#9'E')
              ParentFont = False
              Sorted = False
              TabOrder = 5
              UnboundDataType = wwDefault
              OnEnter = DBCB_CLI_PESSEnter
              OnExit = DBCB_CLI_PESSExit
            end
            object wwDBEdit9: TwwDBEdit
              Left = 162
              Top = 8
              Width = 39
              Height = 21
              BorderStyle = bsNone
              DataField = 'PROAREA_ORDEM'
              DataSource = DS_PROAREA
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
            object Panel10: TPanel
              Left = 16
              Top = 8
              Width = 478
              Height = 153
              BevelInner = bvLowered
              Color = clBlue
              TabOrder = 0
              Visible = False
              object Label73: TLabel
                Left = 12
                Top = 45
                Width = 44
                Height = 14
                Caption = 'Produto'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object BitBtn2: TBitBtn
                Left = 425
                Top = 26
                Width = 34
                Height = 25
                Hint = 'Confirmar'
                ParentShowHint = False
                ShowHint = True
                TabOrder = 0
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
              object BitBtn1: TBitBtn
                Left = 425
                Top = 66
                Width = 34
                Height = 25
                Hint = 'Confirmar'
                Cancel = True
                ParentShowHint = False
                ShowHint = True
                TabOrder = 2
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
              object wwDBLookupCombo11: TwwDBLookupCombo
                Left = 61
                Top = 43
                Width = 348
                Height = 21
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = []
                BorderStyle = bsNone
                DropDownAlignment = taLeftJustify
                Selected.Strings = (
                  'PRO_DESC'#9'40'#9'Descri��o'#9'F')
                LookupTable = Q_PROD2
                LookupField = 'PRO_ID'
                ParentFont = False
                TabOrder = 1
                AutoDropDown = True
                ShowButton = True
                SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
                PreciseEditRegion = False
                AllowClearKey = False
                OnEnter = wwDBLookupCombo2Enter
                OnExit = wwDBLookupCombo2Exit
              end
            end
          end
        end
        object TTabPage
          Left = 4
          Top = 25
          Caption = '   Palletiza��o Espec�fica   '
          object Label80: TLabel
            Left = 20
            Top = 12
            Width = 45
            Height = 15
            Caption = 'Produto'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBText12: TDBText
            Left = 72
            Top = 11
            Width = 577
            Height = 17
            DataField = 'PRO_DESC'
            DataSource = DS_PROD
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Panel14: TPanel
            Left = 16
            Top = 38
            Width = 699
            Height = 323
            BevelInner = bvSpace
            BevelOuter = bvLowered
            BevelWidth = 3
            Color = clSilver
            TabOrder = 0
            object Label81: TLabel
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
            object DBText15: TDBText
              Left = 96
              Top = 41
              Width = 489
              Height = 17
              Color = clSilver
              DataField = 'CLIFende'
              DataSource = DS_PALE
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -15
              Font.Name = 'Arial'
              Font.Style = []
              ParentColor = False
              ParentFont = False
            end
            object Label86: TLabel
              Left = 36
              Top = 41
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
            object wwDBGrid6: TwwDBGrid
              Left = 50
              Top = 160
              Width = 619
              Height = 152
              Hint = 'Visualiza��o dos Registros'
              Selected.Strings = (
                'CLIFraza'#9'40'#9'Cliente Final'#9'F'
                'PALE_ALTURA'#9'12'#9'Altura'#9'F'
                'PALE_LASTRO'#9'12'#9'Lastro'#9'F'
                'PALE_QTDE_PALLET'#9'12'#9'Qtde. UE'#9'F'
                'PALE_QTDE_PALLETUV'#9'17'#9'Qtde. UV'#9'F')
              IniAttributes.FileName = 'delphi32.ini'
              IniAttributes.SectionName = 'FClientewwDBGrid4'
              IniAttributes.Delimiter = ';;'
              TitleColor = clBtnFace
              FixedCols = 0
              ShowHorzScrollBar = True
              DataSource = DS_PALE
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
              TitleFont.Height = -13
              TitleFont.Name = 'Arial Narrow'
              TitleFont.Style = [fsBold]
              TitleLines = 1
              TitleButtons = False
              object wwIButton6: TwwIButton
                Left = 0
                Top = 0
                Width = 13
                Height = 22
                AllowAllUp = True
              end
            end
            object wwDBLookupCombo13: TwwDBLookupCombo
              Left = 96
              Top = 13
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
                'CLIF_RAZA'#9'50'#9'CLIF_RAZA'#9'F'
                'CLIF_ENDERECO'#9'33'#9'CLIF_ENDERECO'#9'F')
              DataField = 'CLIF_ID'
              DataSource = DS_PALE
              LookupTable = Q_CLIF2
              LookupField = 'CLIF_ID'
              DropDownCount = 18
              ParentFont = False
              TabOrder = 0
              AutoDropDown = True
              ShowButton = True
              SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
              PreciseEditRegion = False
              AllowClearKey = False
              OnCloseUp = wwDBLookupCombo13CloseUp
              OnEnter = wwDBLookupCombo13Enter
              OnExit = wwDBLookupCombo13Exit
            end
            object GroupBox3: TGroupBox
              Left = 98
              Top = 73
              Width = 220
              Height = 81
              Caption = 'Palletiza��o - Unidade de Expedi��o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
              object Label82: TLabel
                Left = 127
                Top = 22
                Width = 87
                Height = 15
                Caption = 'Qtde. por Pallet'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = [fsBold, fsUnderline]
                ParentFont = False
              end
              object Label83: TLabel
                Left = 39
                Top = 57
                Width = 34
                Height = 15
                Caption = 'Altura'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = [fsBold, fsUnderline]
                ParentFont = False
              end
              object Label84: TLabel
                Left = 36
                Top = 25
                Width = 37
                Height = 15
                Caption = 'Lastro'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = [fsBold, fsUnderline]
                ParentFont = False
              end
              object DBText13: TDBText
                Left = 139
                Top = 41
                Width = 62
                Height = 28
                Alignment = taCenter
                Color = clMenu
                DataField = 'PALE_QTDE_PALLET'
                DataSource = DS_PALE
                Font.Charset = ANSI_CHARSET
                Font.Color = clRed
                Font.Height = -24
                Font.Name = 'Comic Sans MS'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
              end
              object wwDBEdit14: TwwDBEdit
                Left = 76
                Top = 54
                Width = 42
                Height = 21
                BorderStyle = bsNone
                DataField = 'PALE_ALTURA'
                DataSource = DS_PALE
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
                Left = 76
                Top = 22
                Width = 42
                Height = 21
                BorderStyle = bsNone
                DataField = 'PALE_LASTRO'
                DataSource = DS_PALE
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
                OnEnter = wwDBEdit15Enter
                OnExit = wwDBEdit15Exit
              end
            end
            object GroupBox4: TGroupBox
              Left = 325
              Top = 73
              Width = 220
              Height = 81
              Caption = 'Palletiza��o - Unidade de Venda'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 2
              object Label85: TLabel
                Left = 127
                Top = 22
                Width = 87
                Height = 15
                Caption = 'Qtde. por Pallet'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = [fsBold, fsUnderline]
                ParentFont = False
              end
              object DBText14: TDBText
                Left = 80
                Top = 41
                Width = 134
                Height = 31
                Alignment = taCenter
                Color = clMenu
                DataField = 'PALE_QTDE_PALLETUV'
                DataSource = DS_PALE
                Font.Charset = ANSI_CHARSET
                Font.Color = clRed
                Font.Height = -24
                Font.Name = 'Comic Sans MS'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
              end
            end
          end
        end
        object TTabPage
          Left = 4
          Top = 25
          Caption = '   C.S.T.   '
          object Label94: TLabel
            Left = 20
            Top = 12
            Width = 45
            Height = 15
            Caption = 'Produto'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBText16: TDBText
            Left = 72
            Top = 11
            Width = 577
            Height = 17
            DataField = 'PRO_DESC'
            DataSource = DS_PROD
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Panel15: TPanel
            Left = 16
            Top = 38
            Width = 699
            Height = 323
            BevelInner = bvSpace
            BevelOuter = bvLowered
            BevelWidth = 3
            Color = clSilver
            TabOrder = 0
            object Label95: TLabel
              Left = 90
              Top = 31
              Width = 49
              Height = 15
              Caption = 'C.S.T. (1)'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label96: TLabel
              Left = 90
              Top = 63
              Width = 49
              Height = 15
              Caption = 'C.S.T. (2)'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label97: TLabel
              Left = 90
              Top = 95
              Width = 49
              Height = 15
              Caption = 'C.S.T. (3)'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label98: TLabel
              Left = 90
              Top = 191
              Width = 49
              Height = 15
              Caption = 'C.S.T. (6)'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label99: TLabel
              Left = 90
              Top = 159
              Width = 49
              Height = 15
              Caption = 'C.S.T. (5)'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label100: TLabel
              Left = 90
              Top = 127
              Width = 49
              Height = 15
              Caption = 'C.S.T. (4)'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object wwDBEdit37: TwwDBEdit
              Left = 148
              Top = 29
              Width = 71
              Height = 24
              BorderStyle = bsNone
              DataField = 'PRO_CST1'
              DataSource = DS_PROD
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
              OnEnter = DBE_CFA_RICMEnter
              OnExit = DBE_CFA_RICMExit
            end
            object wwDBEdit38: TwwDBEdit
              Left = 148
              Top = 61
              Width = 71
              Height = 24
              BorderStyle = bsNone
              DataField = 'PRO_CST2'
              DataSource = DS_PROD
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
              OnEnter = DBE_CFA_RICMEnter
              OnExit = DBE_CFA_RICMExit
            end
            object wwDBEdit39: TwwDBEdit
              Left = 148
              Top = 93
              Width = 71
              Height = 24
              BorderStyle = bsNone
              DataField = 'PRO_CST3'
              DataSource = DS_PROD
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
              OnEnter = DBE_CFA_RICMEnter
              OnExit = DBE_CFA_RICMExit
            end
            object wwDBEdit40: TwwDBEdit
              Left = 148
              Top = 157
              Width = 71
              Height = 24
              BorderStyle = bsNone
              DataField = 'PRO_CST5'
              DataSource = DS_PROD
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
              OnEnter = DBE_CFA_RICMEnter
              OnExit = DBE_CFA_RICMExit
            end
            object wwDBEdit41: TwwDBEdit
              Left = 148
              Top = 189
              Width = 71
              Height = 24
              BorderStyle = bsNone
              DataField = 'PRO_CST6'
              DataSource = DS_PROD
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
              OnEnter = DBE_CFA_RICMEnter
              OnExit = DBE_CFA_RICMExit
            end
            object wwDBEdit42: TwwDBEdit
              Left = 148
              Top = 125
              Width = 71
              Height = 24
              BorderStyle = bsNone
              DataField = 'PRO_CST4'
              DataSource = DS_PROD
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
              OnEnter = DBE_CFA_RICMEnter
              OnExit = DBE_CFA_RICMExit
            end
          end
        end
        object TTabPage
          Left = 4
          Top = 25
          Caption = '   Industrializa��o  '
          object DBCheckBox1: TDBCheckBox
            Left = 16
            Top = 8
            Width = 193
            Height = 17
            Caption = 'Este produto � box'
            DataField = 'KIT'
            DataSource = DS_PROD
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object wwDBGrid7: TwwDBGrid
            Left = 192
            Top = 64
            Width = 320
            Height = 313
            ControlType.Strings = (
              'PRO_COD;CustomEdit;cboProKit')
            Selected.Strings = (
              'PRO_COD'#9'16'#9'Produto'#9'F'
              'QTDE'#9'20'#9'QTDE'#9'F')
            IniAttributes.Delimiter = ';;'
            TitleColor = clBtnFace
            FixedCols = 0
            ShowHorzScrollBar = True
            DataSource = dsInd
            TabOrder = 1
            TitleAlignment = taLeftJustify
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clRed
            TitleFont.Height = -11
            TitleFont.Name = 'Arial'
            TitleFont.Style = []
            TitleLines = 1
            TitleButtons = False
          end
          object DBNavigator2: TDBNavigator
            Left = 192
            Top = 32
            Width = 240
            Height = 25
            DataSource = dsInd
            TabOrder = 2
          end
          object cboProKit: TwwDBLookupCombo
            Left = 216
            Top = 120
            Width = 121
            Height = 22
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'PRO_COD'#9'16'#9'PRO_COD'#9'F'
              'PRO_DESC'#9'40'#9'PRO_DESC'#9'F')
            DataField = 'PRO_COD'
            DataSource = dsInd
            LookupTable = qrProdutosKit
            LookupField = 'PRO_COD'
            Options = [loColLines, loRowLines]
            TabOrder = 3
            AutoDropDown = True
            ShowButton = True
            PreciseEditRegion = False
            AllowClearKey = False
            OnExit = cboProKitExit
          end
        end
      end
    end
    object TTabPage
      Left = 4
      Top = 25
      Caption = '   Clientes Finais   '
      object DBText4: TDBText
        Left = 76
        Top = 12
        Width = 349
        Height = 17
        DataField = 'CLIN_RAZA'
        DataSource = DS_CLINBF
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
        Width = 724
        Height = 359
        BevelInner = bvSpace
        BevelOuter = bvLowered
        BevelWidth = 3
        Color = clSilver
        TabOrder = 0
        object Label35: TLabel
          Left = 72
          Top = 19
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
          Left = 18
          Top = 44
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
        object Label37: TLabel
          Left = 472
          Top = 19
          Width = 94
          Height = 15
          Caption = 'Data de Inclus�o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object wwDBLookupCombo4: TwwDBLookupCombo
          Left = 145
          Top = 18
          Width = 296
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
          DataField = 'CLIF_ID'
          DataSource = DS_NBFIN
          LookupTable = Q_CLIF
          LookupField = 'CLIF_ID'
          ParentFont = False
          TabOrder = 0
          AutoDropDown = True
          ShowButton = True
          SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
          PreciseEditRegion = False
          AllowClearKey = False
          OnEnter = wwDBLookupCombo4Enter
          OnExit = wwDBLookupCombo4Exit
        end
        object wwDBEdit17: TwwDBEdit
          Left = 145
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
          Left = 571
          Top = 18
          Width = 68
          Height = 21
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
          Left = 93
          Top = 76
          Width = 523
          Height = 261
          Hint = 'Visualiza��o dos Registros'
          Selected.Strings = (
            'CLIF_RAZA'#9'40'#9'Nome'#9'F'
            'NBFINAL_DT_INCL'#9'18'#9'Data Inclus�o'
            'NBFINAL_COD_CLIN'#9'10'#9'C�digo no Cliente NBF')
          IniAttributes.FileName = 'delphi32.ini'
          IniAttributes.SectionName = 'FClientewwDBGrid3'
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
          OnDblClick = wwDBGrid3DblClick
          object wwIButton3: TwwIButton
            Left = 0
            Top = 0
            Width = 13
            Height = 22
            AllowAllUp = True
          end
        end
      end
    end
    object TTabPage
      Left = 4
      Top = 25
      Caption = '   Cobran�a   '
      object Label55: TLabel
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
      object DBText7: TDBText
        Left = 76
        Top = 12
        Width = 349
        Height = 17
        DataField = 'CLIN_RAZA'
        DataSource = DS_CLINBF
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Panel8: TPanel
        Left = 7
        Top = 36
        Width = 724
        Height = 359
        BevelInner = bvSpace
        BevelOuter = bvLowered
        BevelWidth = 3
        Color = clSilver
        TabOrder = 0
        object Label56: TLabel
          Left = 99
          Top = 27
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
        object Label57: TLabel
          Left = 68
          Top = 57
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
        object Label58: TLabel
          Left = 87
          Top = 86
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
        object Label59: TLabel
          Left = 83
          Top = 115
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
        object Label60: TLabel
          Left = 66
          Top = 144
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
        object Label62: TLabel
          Left = 102
          Top = 173
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
        object Label63: TLabel
          Left = 88
          Top = 205
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
        object Label64: TLabel
          Left = 339
          Top = 86
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
        object Label65: TLabel
          Left = 378
          Top = 57
          Width = 98
          Height = 15
          Caption = 'N�,bloco,conjunto'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object Label88: TLabel
          Left = 14
          Top = 287
          Width = 108
          Height = 15
          Caption = 'Tipo Saldo Estoque'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
          Visible = False
        end
        object Label89: TLabel
          Left = 14
          Top = 313
          Width = 152
          Height = 15
          Caption = 'Saldo Atual em Estoque R$'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
          Visible = False
        end
        object Label101: TLabel
          Left = 54
          Top = 229
          Width = 68
          Height = 15
          Caption = 'Imposto ISS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object wwDBEdit23: TwwDBEdit
          Left = 126
          Top = 24
          Width = 91
          Height = 21
          BorderStyle = bsNone
          DataField = 'CLIN_CEPC'
          DataSource = DS_CLINBF
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
          OnEnter = wwDBEdit23Enter
          OnExit = wwDBEdit23Exit
        end
        object wwDBEdit24: TwwDBEdit
          Left = 126
          Top = 54
          Width = 236
          Height = 21
          BorderStyle = bsNone
          DataField = 'CLIN_ENDC'
          DataSource = DS_CLINBF
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
          OnEnter = wwDBEdit24Enter
          OnExit = wwDBEdit24Exit
        end
        object wwDBEdit25: TwwDBEdit
          Left = 126
          Top = 83
          Width = 164
          Height = 21
          BorderStyle = bsNone
          DataField = 'CLIN_END_BAIRC'
          DataSource = DS_CLINBF
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
          OnEnter = wwDBEdit25Enter
          OnExit = wwDBEdit25Exit
        end
        object wwDBLookupCombo8: TwwDBLookupCombo
          Left = 126
          Top = 112
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
          DataField = 'UF_SIGLAC'
          DataSource = DS_CLINBF
          LookupTable = Q_UF_COBR
          LookupField = 'UF_SIGLA'
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
        object wwDBEdit26: TwwDBEdit
          Left = 126
          Top = 141
          Width = 128
          Height = 21
          BorderStyle = bsNone
          DataField = 'CLIN_TELC'
          DataSource = DS_CLINBF
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
          OnEnter = wwDBEdit26Enter
          OnExit = wwDBEdit26Exit
        end
        object wwDBEdit27: TwwDBEdit
          Left = 126
          Top = 170
          Width = 128
          Height = 21
          BorderStyle = bsNone
          DataField = 'CLIN_FAXC'
          DataSource = DS_CLINBF
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
          OnEnter = wwDBEdit27Enter
          OnExit = wwDBEdit27Exit
        end
        object wwDBEdit28: TwwDBEdit
          Left = 126
          Top = 199
          Width = 217
          Height = 21
          BorderStyle = bsNone
          DataField = 'CLIN_EMAILC'
          DataSource = DS_CLINBF
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
          OnEnter = wwDBEdit28Enter
          OnExit = wwDBEdit28Exit
        end
        object wwDBLookupCombo9: TwwDBLookupCombo
          Left = 398
          Top = 83
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
          DataField = 'MUN_IDC'
          DataSource = DS_CLINBF
          LookupTable = Q_MUNI_COBR
          LookupField = 'MUN_ID'
          ParentFont = False
          TabOrder = 4
          AutoDropDown = True
          ShowButton = True
          SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
          PreciseEditRegion = False
          AllowClearKey = False
          OnEnter = wwDBLookupCombo9Enter
          OnExit = wwDBLookupCombo9Exit
        end
        object wwDBEdit29: TwwDBEdit
          Left = 479
          Top = 54
          Width = 232
          Height = 21
          BorderStyle = bsNone
          DataField = 'CLIN_END_COMPLC'
          DataSource = DS_CLINBF
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
          OnEnter = wwDBEdit29Enter
          OnExit = wwDBEdit29Exit
        end
        object wwDBComboBox7: TwwDBComboBox
          Left = 126
          Top = 283
          Width = 104
          Height = 21
          ShowButton = True
          Style = csDropDown
          MapList = True
          AllowClearKey = False
          AutoDropDown = True
          BorderStyle = bsNone
          ButtonStyle = cbsEllipsis
          DataField = 'CLIN_TIPOSALDO'
          DataSource = DS_CLINBF
          DropDownCount = 8
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ItemHeight = 0
          Items.Strings = (
            'Kilogramas'#9'K'
            'Reais'#9'R'
            'Pallets'#9'P')
          ParentFont = False
          Sorted = False
          TabOrder = 10
          UnboundDataType = wwDefault
          Visible = False
          OnEnter = wwDBComboBox7Enter
          OnExit = wwDBComboBox7Exit
        end
        object wwDBEdit35: TwwDBEdit
          Left = 172
          Top = 312
          Width = 147
          Height = 21
          BorderStyle = bsNone
          DataField = 'CLIN_VLRSALDO'
          DataSource = DS_CLINBF
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 11
          UnboundDataType = wwDefault
          Visible = False
          WantReturns = False
          WordWrap = False
          OnEnter = wwDBEdit35Enter
          OnExit = wwDBEdit35Exit
        end
        object wwDBEdit43: TwwDBEdit
          Left = 126
          Top = 227
          Width = 58
          Height = 21
          BorderStyle = bsNone
          DataField = 'CLIN_ISS'
          DataSource = DS_CLINBF
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
          OnEnter = DBE_CFA_RICMEnter
          OnExit = DBE_CFA_RICMExit
        end
      end
    end
    object TTabPage
      Left = 4
      Top = 25
      Caption = '   Contratos   '
      object Label66: TLabel
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
      object DBText8: TDBText
        Left = 76
        Top = 12
        Width = 349
        Height = 17
        DataField = 'CLIN_RAZA'
        DataSource = DS_CLINBF
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Panel9: TPanel
        Left = 7
        Top = 36
        Width = 722
        Height = 461
        BevelInner = bvSpace
        BevelOuter = bvLowered
        BevelWidth = 3
        Color = clSilver
        TabOrder = 0
        object SpeedButton6: TSpeedButton
          Left = 684
          Top = 29
          Width = 25
          Height = 25
          Hint = 'Copiar Contrato'
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3333333333333333FF3333333333333003333333333333377F33333333333307
            733333FFF333337773333C003333307733333777FF333777FFFFC0CC03330770
            000077777FF377777777C033C03077FFFFF077FF77F777FFFFF7CC00000F7777
            777077777777777777773CCCCC00000000003777777777777777333330030FFF
            FFF03333F77F7F3FF3F7333C0C030F00F0F03337777F7F77373733C03C030FFF
            FFF03377F77F7F3F333733C03C030F0FFFF03377F7737F733FF733C000330FFF
            0000337777F37F3F7777333CCC330F0F0FF0333777337F737F37333333330FFF
            0F03333333337FFF7F7333333333000000333333333377777733}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton6Click
        end
        object wwDBGrid5: TwwDBGrid
          Left = 34
          Top = 16
          Width = 637
          Height = 425
          Hint = 'Visualiza��o dos Registros'
          Selected.Strings = (
            'cTT_NOME'#9'40'#9'Nome do Contrato'
            'TOS_NOME'#9'40'#9'Tipo de OS'
            'CTT_DT_FINAL'#9'18'#9'In�cio'
            'CTT_DT_INICIO'#9'18'#9'T�rmino')
          IniAttributes.FileName = 'delphi32.ini'
          IniAttributes.SectionName = 'FClientewwDBGrid5'
          IniAttributes.Delimiter = ';;'
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          DataSource = DS_CTT
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          KeyOptions = []
          Options = [dgAlwaysShowEditor, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgWordWrap]
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
          OnDblClick = wwDBGrid5DblClick
          object wwIButton5: TwwIButton
            Left = 0
            Top = 0
            Width = 13
            Height = 22
            AllowAllUp = True
          end
        end
        object Panel11: TPanel
          Left = 34
          Top = 16
          Width = 638
          Height = 153
          BevelInner = bvLowered
          Color = clBlue
          TabOrder = 0
          Visible = False
          object Label76: TLabel
            Left = 12
            Top = 46
            Width = 55
            Height = 14
            Caption = 'Contratos'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object BitBtn3: TBitBtn
            Left = 561
            Top = 40
            Width = 34
            Height = 25
            Hint = 'Confirmar'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            OnClick = BitBtn3Click
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
          object BitBtn4: TBitBtn
            Left = 561
            Top = 74
            Width = 34
            Height = 25
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
          object wwDBLookupCombo12: TwwDBLookupCombo
            Left = 72
            Top = 44
            Width = 412
            Height = 21
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            BorderStyle = bsNone
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'CLIN_RAZA'#9'50'#9'Cliente NBF'#9'F'
              'CTT_NOME'#9'40'#9'Nome do Contrato'#9'F')
            LookupTable = Q_CTT_COPIA
            LookupField = 'CTT_ID'
            Options = [loTitles]
            DropDownCount = 14
            ParentFont = False
            TabOrder = 1
            AutoDropDown = True
            ShowButton = True
            SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
            PreciseEditRegion = False
            AllowClearKey = False
            OnEnter = wwDBLookupCombo2Enter
            OnExit = wwDBLookupCombo2Exit
          end
        end
      end
    end
  end
  object Panel3: TPanel
    Left = 4
    Top = 2
    Width = 752
    Height = 45
    BevelInner = bvLowered
    TabOrder = 0
    object SpeedButton1: TSpeedButton
      Left = 419
      Top = 9
      Width = 25
      Height = 25
      Hint = 'Contratos'
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
      ParentShowHint = False
      ShowHint = True
      Visible = False
      OnClick = SpeedButton1Click
    end
    object SpeedButton3: TSpeedButton
      Left = 720
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
    object Label16: TLabel
      Left = 16
      Top = 5
      Width = 160
      Height = 29
      Caption = 'Clientes NBF'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -24
      Font.Name = 'Georgia'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object SpeedButton4: TSpeedButton
      Left = 370
      Top = 9
      Width = 25
      Height = 25
      Hint = 'Pesquisar Clientes NBF'
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
      Visible = False
      OnClick = SpeedButton4Click
    end
    object SpeedButton2: TSpeedButton
      Left = 694
      Top = 9
      Width = 25
      Height = 25
      Hint = 'Pesquisar Clientes NBF'
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
      OnClick = SpeedButton2Click
      OnMouseMove = SpeedButton2MouseMove
    end
    object DBNavigator1: TDBNavigator
      Left = 502
      Top = 9
      Width = 192
      Height = 25
      DataSource = DS_CLINBF
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
    object btn1: TButton
      Left = 280
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Emails'
      TabOrder = 1
      OnClick = btn1Click
    end
  end
  object Panel13: TPanel
    Left = 164
    Top = 48
    Width = 506
    Height = 23
    BevelOuter = bvNone
    TabOrder = 1
    Visible = False
  end
  object Q_CLINBF: TwwQuery
    AutoCalcFields = False
    CachedUpdates = True
    BeforePost = Q_CLINBFBeforePost
    AfterPost = Q_CLINBFAfterPost
    AfterDelete = Q_CLINBFAfterDelete
    OnNewRecord = Q_CLINBFNewRecord
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    RequestLive = True
    SQL.Strings = (
      'select * from CLIENTENBF order by CLIN_RAZA')
    UpdateObject = UPD_CLINBF
    ValidateWithMask = True
    Left = 680
    Top = 265
    object Q_CLINBFCLIN_NOME: TStringField
      DisplayLabel = 'Fantasia'
      DisplayWidth = 40
      FieldName = 'CLIN_NOME'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_NOME'
      FixedChar = True
      Size = 30
    end
    object Q_CLINBFCLIN_RAZA: TStringField
      DisplayLabel = 'Raz�o Social'
      DisplayWidth = 50
      FieldName = 'CLIN_RAZA'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_RAZA'
      FixedChar = True
      Size = 50
    end
    object Q_CLINBFCLIN_CGCCPF: TStringField
      DisplayLabel = 'CNPJ / CPF'
      DisplayWidth = 20
      FieldName = 'CLIN_CGCCPF'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_CGCCPF'
      EditMask = '!999.999.999\/9999\-99;0; '
      FixedChar = True
      Size = 15
    end
    object Q_CLINBFCLIN_CEP: TStringField
      DisplayWidth = 8
      FieldName = 'CLIN_CEP'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_CEP'
      Visible = False
      EditMask = '99999-999;0;_'
      FixedChar = True
      Size = 8
    end
    object Q_CLINBFCLIN_ENDERECO: TStringField
      DisplayWidth = 50
      FieldName = 'CLIN_ENDERECO'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_ENDERECO'
      Visible = False
      FixedChar = True
      Size = 50
    end
    object Q_CLINBFCLIN_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'CLIN_ID'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_ID'
      Visible = False
    end
    object Q_CLINBFCLIN_PESSOA: TStringField
      DisplayWidth = 1
      FieldName = 'CLIN_PESSOA'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_PESSOA'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_CLINBFCLIN_MUNICIPIO: TStringField
      DisplayWidth = 40
      FieldName = 'CLIN_MUNICIPIO'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_MUNICIPIO'
      Visible = False
      FixedChar = True
      Size = 40
    end
    object Q_CLINBFCLIN_INSCRG: TStringField
      DisplayWidth = 15
      FieldName = 'CLIN_INSCRG'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_INSCRG'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object Q_CLINBFCLIN_TEL1: TStringField
      DisplayWidth = 11
      FieldName = 'CLIN_TEL1'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_TEL1'
      Visible = False
      EditMask = '!\(999\)#999-9999;0; '
      FixedChar = True
      Size = 11
    end
    object Q_CLINBFCLIN_TEL2: TStringField
      DisplayWidth = 11
      FieldName = 'CLIN_TEL2'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_TEL2'
      Visible = False
      EditMask = '!\(999\)#999-9999;0; '
      FixedChar = True
      Size = 11
    end
    object Q_CLINBFCLIN_FAX: TStringField
      DisplayWidth = 11
      FieldName = 'CLIN_FAX'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_FAX'
      Visible = False
      EditMask = '!\(999\)#999-9999;0; '
      FixedChar = True
      Size = 11
    end
    object Q_CLINBFCLIN_EMAIL: TStringField
      DisplayWidth = 60
      FieldName = 'CLIN_EMAIL'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_EMAIL'
      Visible = False
      FixedChar = True
      Size = 60
    end
    object Q_CLINBFUF_SIGLA: TStringField
      DisplayWidth = 2
      FieldName = 'UF_SIGLA'
      Origin = 'NBFDADOS.CLIENTENBF.UF_SIGLA'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object Q_CLINBFCLIN_ENDERECO_COMPL: TStringField
      DisplayWidth = 35
      FieldName = 'CLIN_ENDERECO_COMPL'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_ENDERECO_COMPL'
      Visible = False
      FixedChar = True
      Size = 35
    end
    object Q_CLINBFCLIN_ENDERECO_BAIRRO: TStringField
      DisplayWidth = 40
      FieldName = 'CLIN_ENDERECO_BAIRRO'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_ENDERECO_BAIRRO'
      Visible = False
      FixedChar = True
      Size = 40
    end
    object Q_CLINBFCON_CODI: TStringField
      DisplayWidth = 6
      FieldName = 'CON_CODI'
      Origin = 'NBFDADOS.CLIENTENBF.CON_CODI'
      Visible = False
      FixedChar = True
      Size = 6
    end
    object Q_CLINBFCLIN_CONTRATO: TStringField
      DisplayWidth = 1
      FieldName = 'CLIN_CONTRATO'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_CONTRATO'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_CLINBFCLIN_UTIL_COD: TStringField
      DisplayWidth = 1
      FieldName = 'CLIN_UTIL_COD'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_ID'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_CLINBFMUN_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayWidth = 10
      FieldName = 'MUN_ID'
      Origin = 'NBFDADOS.CLIENTENBF.MUN_ID'
      Visible = False
    end
    object Q_CLINBFCLIN_WEB: TStringField
      DisplayWidth = 60
      FieldName = 'CLIN_WEB'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_WEB'
      Visible = False
      FixedChar = True
      Size = 60
    end
    object Q_CLINBFCLIN_ENDC: TStringField
      FieldName = 'CLIN_ENDC'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_ENDC'
      FixedChar = True
      Size = 50
    end
    object Q_CLINBFCLIN_END_COMPLC: TStringField
      FieldName = 'CLIN_END_COMPLC'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_END_COMPLC'
      FixedChar = True
      Size = 35
    end
    object Q_CLINBFCLIN_END_BAIRC: TStringField
      FieldName = 'CLIN_END_BAIRC'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_END_BAIRC'
      FixedChar = True
      Size = 40
    end
    object Q_CLINBFCLIN_MUNICC: TStringField
      FieldName = 'CLIN_MUNICC'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_MUNICC'
      FixedChar = True
      Size = 40
    end
    object Q_CLINBFUF_SIGLAC: TStringField
      FieldName = 'UF_SIGLAC'
      Origin = 'NBFDADOS.CLIENTENBF.UF_SIGLAC'
      FixedChar = True
      Size = 2
    end
    object Q_CLINBFCLIN_CEPC: TStringField
      FieldName = 'CLIN_CEPC'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_CEPC'
      EditMask = '99999-999;0;_'
      FixedChar = True
      Size = 8
    end
    object Q_CLINBFCLIN_TELC: TStringField
      FieldName = 'CLIN_TELC'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_TELC'
      EditMask = '!\(999\)#999-9999;0; '
      FixedChar = True
      Size = 11
    end
    object Q_CLINBFCLIN_FAXC: TStringField
      FieldName = 'CLIN_FAXC'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_FAXC'
      EditMask = '!\(999\)#999-9999;0; '
      FixedChar = True
      Size = 11
    end
    object Q_CLINBFCLIN_EMAILC: TStringField
      FieldName = 'CLIN_EMAILC'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_EMAILC'
      FixedChar = True
      Size = 60
    end
    object Q_CLINBFMUN_IDC: TIntegerField
      FieldName = 'MUN_IDC'
      Origin = 'NBFDADOS.CLIENTENBF.MUN_IDC'
    end
    object Q_CLINBFCLIN_TIPOSALDO: TStringField
      FieldName = 'CLIN_TIPOSALDO'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_ID'
      FixedChar = True
      Size = 1
    end
    object Q_CLINBFCLIN_VLRSALDO: TFloatField
      FieldName = 'CLIN_VLRSALDO'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_ID'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_CLINBFCLIN_TPMERC: TStringField
      FieldName = 'CLIN_TPMERC'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_TPMERC'
      FixedChar = True
      Size = 50
    end
    object Q_CLINBFCLIN_LOTE: TStringField
      FieldName = 'CLIN_LOTE'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_LOTE'
      FixedChar = True
      Size = 1
    end
    object Q_CLINBFCLIN_ISS: TFloatField
      FieldName = 'CLIN_ISS'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_ISS'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_CLINBFCLIN_DESCONTO: TFloatField
      FieldName = 'CLIN_DESCONTO'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_DESCONTO'
    end
    object Q_CLINBFIBGE_ID: TIntegerField
      FieldName = 'IBGE_ID'
      Origin = 'NBFDADOS.CLIENTENBF.IBGE_ID'
    end
    object Q_CLINBFRemanejaSN: TStringField
      FieldName = 'RemanejaSN'
      Origin = 'NBFDADOS.CLIENTENBF.RemanejaSN'
      FixedChar = True
      Size = 1
    end
    object Q_CLINBFCLIN_LOGRADOURO: TStringField
      FieldName = 'CLIN_LOGRADOURO'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_LOGRADOURO'
      FixedChar = True
      Size = 50
    end
    object Q_CLINBFCLIN_NUMERO: TStringField
      FieldName = 'CLIN_NUMERO'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_NUMERO'
      FixedChar = True
      Size = 15
    end
    object Q_CLINBFCLIN_ISENCAO: TStringField
      FieldName = 'CLIN_ISENCAO'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_ISENCAO'
      FixedChar = True
      Size = 1
    end
    object Q_CLINBFCLIN_COBRAFRETEDEV: TStringField
      FieldName = 'CLIN_COBRAFRETEDEV'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_COBRAFRETEDEV'
      FixedChar = True
      Size = 1
    end
    object Q_CLINBFCLIN_PAGAFRETEDEV: TStringField
      FieldName = 'CLIN_PAGAFRETEDEV'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_PAGAFRETEDEV'
      FixedChar = True
      Size = 1
    end
    object Q_CLINBFCLIN_FRETEADICIONAL: TFloatField
      FieldName = 'CLIN_FRETEADICIONAL'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_FRETEADICIONAL'
      DisplayFormat = '###,###,##0.00'
    end
    object Q_CLINBFCLIN_FRETEADICIONA: TFloatField
      FieldName = 'CLIN_FRETEADICIONA�'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_FRETEADICIONA�'
    end
    object Q_CLINBFCLIN_PERMANENCIAISENTA: TIntegerField
      FieldName = 'CLIN_PERMANENCIAISENTA'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_PERMANENCIAISENTA'
    end
    object Q_CLINBFCLIN_PERMANENCIAVALOR: TFloatField
      FieldName = 'CLIN_PERMANENCIAVALOR'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_PERMANENCIAVALOR'
      DisplayFormat = '###,###,##0.00'
    end
    object Q_CLINBFDeixaRestoNaPosicao: TStringField
      FieldName = 'DeixaRestoNaPosicao'
      Origin = 'NBFDADOS.CLIENTENBF.DeixaRestoNaPosicao'
      FixedChar = True
      Size = 1
    end
  end
  object DS_CLINBF: TwwDataSource
    DataSet = Q_CLINBF
    OnDataChange = DS_CLINBFDataChange
    Left = 408
    Top = 258
  end
  object Q_CONTA: TwwQuery
    AutoCalcFields = False
    CachedUpdates = True
    BeforePost = Q_CONTABeforePost
    AfterPost = Q_CONTAAfterPost
    AfterDelete = Q_CONTAAfterDelete
    OnNewRecord = Q_CONTANewRecord
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    DataSource = DS_CLINBF
    RequestLive = True
    SQL.Strings = (
      'select * from CONTATO where'
      'CLIN_ID = :CLIN_ID'
      ' order by CONT_NOME')
    UpdateObject = UPD_CONTA
    ValidateWithMask = True
    Left = 256
    Top = 248
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'CLIN_ID'
        ParamType = ptUnknown
      end>
    object Q_CONTATCONT_DESC: TStringField
      DisplayLabel = 'Tipo de Contato'
      DisplayWidth = 24
      FieldKind = fkLookup
      FieldName = 'TCONT_DESC'
      LookupDataSet = Q_TCONT
      LookupKeyFields = 'TCONT_ID'
      LookupResultField = 'TCONT_DESCRICAO'
      KeyFields = 'TCONT_ID'
      Size = 40
      Lookup = True
    end
    object Q_CONTACONT_NOME: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 33
      FieldName = 'CONT_NOME'
      Origin = 'NBFDADOS.CONTATO.CONT_NOME'
      FixedChar = True
      Size = 40
    end
    object Q_CONTACONT_TEL1: TStringField
      DisplayLabel = 'Telefone'
      DisplayWidth = 13
      FieldName = 'CONT_TEL1'
      Origin = 'NBFDADOS.CONTATO.CONT_TEL1'
      EditMask = '!\(999\)#999-9999;0; '
      FixedChar = True
      Size = 11
    end
    object Q_CONTACONT_RAMAL: TStringField
      DisplayLabel = 'Ramal'
      DisplayWidth = 8
      FieldName = 'CONT_RAMAL'
      Origin = 'NBFDADOS.CONTATO.CONT_RAMAL'
      FixedChar = True
      Size = 15
    end
    object Q_CONTACONT_EMAIL: TStringField
      DisplayLabel = 'E-Mail'
      DisplayWidth = 25
      FieldName = 'CONT_EMAIL'
      Origin = 'NBFDADOS.CONTATO.CONT_EMAIL'
      FixedChar = True
      Size = 50
    end
    object Q_CONTACONT_ID: TAutoIncField
      FieldName = 'CONT_ID'
      Origin = 'NBFDADOS.CONTATO.CONT_ID'
      Visible = False
    end
    object Q_CONTACLIN_ID: TIntegerField
      FieldName = 'CLIN_ID'
      Origin = 'NBFDADOS.CONTATO.CLIN_ID'
      Visible = False
    end
    object Q_CONTATCONT_ID: TIntegerField
      FieldName = 'TCONT_ID'
      Origin = 'NBFDADOS.CONTATO.TCONT_ID'
      Visible = False
    end
    object Q_CONTACONT_TEL2: TStringField
      FieldName = 'CONT_TEL2'
      Origin = 'NBFDADOS.CONTATO.CONT_TEL2'
      EditMask = '!\(999\)#999-9999;0; '
      FixedChar = True
      Size = 11
    end
  end
  object UPD_CONTA: TUpdateSQL
    ModifySQL.Strings = (
      'update CONTATO'
      'set'
      '  CLIN_ID = :CLIN_ID,'
      '  CONT_NOME = :CONT_NOME,'
      '  CONT_TEL1 = :CONT_TEL1,'
      '  CONT_RAMAL = :CONT_RAMAL,'
      '  CONT_EMAIL = :CONT_EMAIL,'
      '  TCONT_ID = :TCONT_ID,'
      '  CONT_TEL2  = :CONT_TEL2'
      'where'
      '  CONT_ID = :OLD_CONT_ID')
    InsertSQL.Strings = (
      'insert into CONTATO'
      
        '  (CLIN_ID, CONT_NOME, CONT_TEL1, CONT_RAMAL, CONT_EMAIL, TCONT_' +
        'ID,'
      ' CONT_TEL2)'
      'values'
      '  (:CLIN_ID, :CONT_NOME, :CONT_TEL1, :CONT_RAMAL, :CONT_EMAIL, '
      '   :TCONT_ID,  :CONT_TEL2)')
    DeleteSQL.Strings = (
      'delete from CONTATO'
      'where'
      '  CONT_ID = :OLD_CONT_ID')
    Left = 400
    Top = 128
  end
  object DS_CONTA: TwwDataSource
    DataSet = Q_CONTA
    Left = 480
    Top = 152
  end
  object Q_PROD: TwwQuery
    AutoCalcFields = False
    CachedUpdates = True
    BeforePost = Q_PRODBeforePost
    AfterPost = Q_PRODAfterPost
    AfterDelete = Q_PRODAfterDelete
    OnNewRecord = Q_PRODNewRecord
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    DataSource = DS_CLINBF
    RequestLive = True
    SQL.Strings = (
      'select * from PRODUTO WHERE CLIN_Id = :CLIN_ID'
      '  order by PRO_DESC'
      '')
    UpdateObject = UPD_PROD
    ValidateWithMask = True
    Left = 864
    Top = 252
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'CLIN_ID'
        ParamType = ptUnknown
      end>
    object Q_PRODPRO_COD: TStringField
      DisplayLabel = 'C�digo'
      DisplayWidth = 13
      FieldName = 'PRO_COD'
      Origin = 'NBFDADOS.PRODUTO.PRO_COD'
      FixedChar = True
      Size = 16
    end
    object Q_PRODPRO_DESC: TStringField
      DisplayLabel = 'Descri��o'
      DisplayWidth = 255
      FieldName = 'PRO_DESC'
      Origin = 'NBFDADOS.PRODUTO.PRO_DESC'
      FixedChar = True
      Size = 255
    end
    object Q_PRODTPRO_DESC: TStringField
      DisplayLabel = 'Tipo de Produto'
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'TPRO_DESC'
      LookupDataSet = Q_TPROD
      LookupKeyFields = 'TPRO_ID'
      LookupResultField = 'TPRO_NOME'
      KeyFields = 'TPRO_ID'
      Size = 40
      Lookup = True
    end
    object Q_PRODUVEN_DESC: TStringField
      DisplayLabel = 'Unidade de Venda'
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'UVEN_DESC'
      LookupDataSet = Q_UNIDVEND
      LookupKeyFields = 'UVEN_ID'
      LookupResultField = 'UVEN_NOME'
      KeyFields = 'UVEN_ID'
      Size = 40
      Lookup = True
    end
    object Q_PRODPRO_QTDE_PALLET: TIntegerField
      DisplayLabel = 'Qtde.PALLET'
      DisplayWidth = 6
      FieldName = 'PRO_QTDE_PALLET'
      Origin = 'NBFDADOS.PRODUTO.PRO_QTDE_PALLET'
    end
    object Q_PRODPRO_PESO: TFloatField
      DisplayLabel = 'Peso'
      DisplayWidth = 6
      FieldName = 'PRO_PESO'
      Origin = 'NBFDADOS.PRODUTO.PRO_PESO'
      DisplayFormat = '###,###,##0.0000'
      EditFormat = '###,###,##0.0000'
    end
    object Q_PRODPRO_VOLUME: TFloatField
      DisplayLabel = 'Volume'
      DisplayWidth = 10
      FieldName = 'PRO_VOLUME'
      Origin = 'NBFDADOS.PRODUTO.PRO_VOLUME'
      DisplayFormat = '###,###,##0.000000'
      EditFormat = '###,###,##0.000000'
    end
    object Q_PRODPRO_VOLUME_PALLET: TFloatField
      DisplayLabel = 'Volume PALLET'
      DisplayWidth = 10
      FieldName = 'PRO_VOLUME_PALLET'
      Origin = 'NBFDADOS.PRODUTO.PRO_VOLUME_PALLET'
      DisplayFormat = '###,###,##0.000000'
      EditFormat = '###,###,##0.000000'
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
    object Q_PRODPRO_ORIGEM: TStringField
      FieldName = 'PRO_ORIGEM'
      Origin = 'NBFDADOS.PRODUTO.PRO_ORIGEM'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_PRODPRO_VALIDDIAS: TIntegerField
      FieldName = 'PRO_VALIDDIAS'
      Origin = 'NBFDADOS.PRODUTO.PRO_VALIDDIAS'
      Visible = False
    end
    object Q_PRODPRO_ALTURA: TIntegerField
      Alignment = taCenter
      FieldName = 'PRO_ALTURA'
      Origin = 'NBFDADOS.PRODUTO.PRO_ALTURA'
      Visible = False
    end
    object Q_PRODPRO_LASTRO: TIntegerField
      Alignment = taCenter
      FieldName = 'PRO_LASTRO'
      Origin = 'NBFDADOS.PRODUTO.PRO_LASTRO'
      Visible = False
    end
    object Q_PRODPRO_PESO_LIQ: TFloatField
      FieldName = 'PRO_PESO_LIQ'
      Origin = 'NBFDADOS.PRODUTO.PRO_PESO_LIQ'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      EditFormat = '###,###,##0.0000'
    end
    object Q_PRODMARCADOR: TStringField
      FieldName = 'MARCADOR'
      Origin = 'NBFDADOS.PRODUTO.MARCADOR'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_PRODUVEN_ID_EXP: TIntegerField
      FieldName = 'UVEN_ID_EXP'
      Origin = 'NBFDADOS.PRODUTO.UVEN_ID_EXP'
      Visible = False
    end
    object Q_PRODPRO_DESCONTINUA: TStringField
      FieldName = 'PRO_DESCONTINUA'
      Origin = 'NBFDADOS.PRODUTO.PRO_DESCONTINUA'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_PRODPRO_COMPR: TFloatField
      FieldName = 'PRO_COMPR'
      Origin = 'NBFDADOS.PRODUTO.PRO_COMPR'
      Visible = False
      DisplayFormat = '###,###,##0.000'
      EditFormat = '###,###,##0.000'
    end
    object Q_PRODPRO_LARG: TFloatField
      FieldName = 'PRO_LARG'
      Origin = 'NBFDADOS.PRODUTO.PRO_LARG'
      Visible = False
      DisplayFormat = '###,###,##0.000'
      EditFormat = '###,###,##0.000'
    end
    object Q_PRODPRO_ALT: TFloatField
      FieldName = 'PRO_ALT'
      Origin = 'NBFDADOS.PRODUTO.PRO_ALT'
      Visible = False
      DisplayFormat = '###,###,##0.000'
      EditFormat = '###,###,##0.000'
    end
    object Q_PRODQTDE_UVUE: TFloatField
      FieldName = 'QTDE_UVUE'
      Origin = 'NBFDADOS.PRODUTO.QTDE_UVUE'
      Visible = False
      DisplayFormat = '0.000'
      EditFormat = '0.000'
    end
    object Q_PRODPRO_QTDE_PALLETUV: TFloatField
      FieldName = 'PRO_QTDE_PALLETUV'
      Origin = 'NBFDADOS.PRODUTO.PRO_QTDE_PALLETUV'
      Visible = False
      DisplayFormat = '0.000'
      EditFormat = '0.000'
    end
    object Q_PRODPRO_REDUZICMS: TFloatField
      FieldName = 'PRO_REDUZICMS'
      Origin = 'NBFDADOS.PRODUTO.PRO_REDUZICMS'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_PRODPRO_ISENCAO: TStringField
      FieldName = 'PRO_ISENCAO'
      Origin = 'NBFDADOS.PRODUTO.PRO_ISENCAO'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_PRODPRO_ICMS: TFloatField
      FieldName = 'PRO_ICMS'
      Origin = 'NBFDADOS.PRODUTO.PRO_ICMS'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_PRODPRO_CST1: TStringField
      FieldName = 'PRO_CST1'
      Origin = 'NBFDADOS.PRODUTO.PRO_CST1'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object Q_PRODPRO_CST2: TStringField
      FieldName = 'PRO_CST2'
      Origin = 'NBFDADOS.PRODUTO.PRO_CST2'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object Q_PRODPRO_CST3: TStringField
      FieldName = 'PRO_CST3'
      Origin = 'NBFDADOS.PRODUTO.PRO_CST3'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object Q_PRODPRO_CST4: TStringField
      FieldName = 'PRO_CST4'
      Origin = 'NBFDADOS.PRODUTO.PRO_CST4'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object Q_PRODPRO_CST5: TStringField
      FieldName = 'PRO_CST5'
      Origin = 'NBFDADOS.PRODUTO.PRO_CST5'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object Q_PRODPRO_CST6: TStringField
      FieldName = 'PRO_CST6'
      Origin = 'NBFDADOS.PRODUTO.PRO_CST6'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object Q_PRODULTIMO_PRECO: TFloatField
      FieldName = 'ULTIMO_PRECO'
      Origin = 'NBFDADOS.PRODUTO.ULTIMO_PRECO'
      Visible = False
    end
    object Q_PRODEMBALAGEM: TStringField
      FieldName = 'EMBALAGEM'
      Origin = 'NBFDADOS.PRODUTO.EMBALAGEM'
      Visible = False
      FixedChar = True
      Size = 50
    end
    object Q_PRODTIPO_PRODUTO: TStringField
      FieldName = 'TIPO_PRODUTO'
      Origin = 'NBFDADOS.PRODUTO.TIPO_PRODUTO'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object Q_PRODNCM: TStringField
      FieldName = 'NCM'
      Origin = 'NBFDADOS.PRODUTO.NCM'
      Visible = False
      FixedChar = True
      Size = 8
    end
    object Q_PRODKIT: TStringField
      FieldName = 'KIT'
      Origin = 'NBFDADOS.PRODUTO.KIT'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_PRODESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
      Origin = 'NBFDADOS.PRODUTO.ESTOQUE'
      Visible = False
    end
    object Q_PRODESTOQUE_2008: TFloatField
      FieldName = 'ESTOQUE_2008'
      Origin = 'NBFDADOS.PRODUTO.ESTOQUE_2008'
      Visible = False
    end
    object Q_PRODVALOR_2008: TFloatField
      FieldName = 'VALOR_2008'
      Origin = 'NBFDADOS.PRODUTO.VALOR_2008'
      Visible = False
    end
    object Q_PRODINSUMO: TStringField
      FieldName = 'INSUMO'
      Origin = 'NBFDADOS.PRODUTO.INSUMO'
      FixedChar = True
      Size = 1
    end
  end
  object DS_PROD: TwwDataSource
    DataSet = Q_PROD
    OnDataChange = DS_PRODDataChange
    Left = 491
    Top = 240
  end
  object UPD_PROD: TUpdateSQL
    ModifySQL.Strings = (
      'update PRODUTO'
      'set'
      '  CLIN_ID = :CLIN_ID,'
      '  PRO_DESC = :PRO_DESC,'
      '  TPRO_ID = :TPRO_ID,'
      '  PRO_COD = :PRO_COD,'
      '  PRO_ORIGEM = :PRO_ORIGEM,'
      '  UVEN_ID = :UVEN_ID,'
      '  UVEN_ID_EXP = :UVEN_ID_EXP,'
      '  QTDE_UVUE = :QTDE_UVUE,'
      '  PRO_QTDE_PALLET = :PRO_QTDE_PALLET,'
      '  PRO_QTDE_PALLETUV = :PRO_QTDE_PALLETUV,'
      '  PRO_PESO = :PRO_PESO,'
      '  PRO_VOLUME = :PRO_VOLUME,'
      '  PRO_VOLUME_PALLET = :PRO_VOLUME_PALLET,'
      '  PRO_ALTURA = :PRO_ALTURA,'
      '  PRO_LASTRO = :PRO_LASTRO,'
      '  PRO_VALIDDIAS = :PRO_VALIDDIAS,'
      '  MARCADOR = :MARCADOR,'
      '  PRO_PESO_LIQ = :PRO_PESO_LIQ,'
      '  PRO_DESCONTINUA = :PRO_DESCONTINUA,'
      '  PRO_COMPR = :PRO_COMPR,'
      '  PRO_LARG = :PRO_LARG,'
      '  PRO_ALT = :PRO_ALT,'
      '  PRO_REDUZICMS = :PRO_REDUZICMS,'
      '  PRO_ISENCAO = :PRO_ISENCAO,'
      '  PRO_ICMS = :PRO_ICMS,'
      '  PRO_CST1 = :PRO_CST1,'
      '  PRO_CST2 = :PRO_CST2,'
      '  PRO_CST3 = :PRO_CST3,'
      '  PRO_CST4 = :PRO_CST4,'
      '  PRO_CST5 = :PRO_CST5,'
      '  PRO_CST6 = :PRO_CST6,'
      '  EMBALAGEM = :EMBALAGEM,'
      '  TIPO_PRODUTO = :TIPO_PRODUTO,'
      '  NCM = :NCM,'
      '  KIT = :KIT,'
      '  INSUMO = :INSUMO'
      'where'
      '  PRO_ID = :OLD_PRO_ID')
    InsertSQL.Strings = (
      'insert into PRODUTO'
      '  (CLIN_ID, PRO_DESC, TPRO_ID, PRO_COD, PRO_ORIGEM, UVEN_ID, '
      'UVEN_ID_EXP, '
      '   QTDE_UVUE, PRO_QTDE_PALLET, PRO_QTDE_PALLETUV, PRO_PESO, '
      'PRO_VOLUME, '
      '   PRO_VOLUME_PALLET, PRO_ALTURA, PRO_LASTRO, PRO_VALIDDIAS, '
      'MARCADOR, '
      '   PRO_PESO_LIQ, PRO_DESCONTINUA, PRO_COMPR, PRO_LARG, PRO_ALT, '
      'PRO_REDUZICMS, '
      
        '   PRO_ISENCAO, PRO_ICMS, PRO_CST1, PRO_CST2, PRO_CST3, PRO_CST4' +
        ', '
      'PRO_CST5, '
      '   PRO_CST6, EMBALAGEM, TIPO_PRODUTO, NCM, KIT, INSUMO)'
      'values'
      
        '  (:CLIN_ID, :PRO_DESC, :TPRO_ID, :PRO_COD, :PRO_ORIGEM, :UVEN_I' +
        'D, '
      ':UVEN_ID_EXP, '
      '   :QTDE_UVUE, :PRO_QTDE_PALLET, :PRO_QTDE_PALLETUV, :PRO_PESO, '
      ':PRO_VOLUME, '
      
        '   :PRO_VOLUME_PALLET, :PRO_ALTURA, :PRO_LASTRO, :PRO_VALIDDIAS,' +
        ' '
      ':MARCADOR, '
      '   :PRO_PESO_LIQ, :PRO_DESCONTINUA, :PRO_COMPR, :PRO_LARG, '
      ':PRO_ALT, :PRO_REDUZICMS, '
      '   :PRO_ISENCAO, :PRO_ICMS, :PRO_CST1, :PRO_CST2, :PRO_CST3, '
      ':PRO_CST4, '
      '   :PRO_CST5, :PRO_CST6, :EMBALAGEM, :TIPO_PRODUTO, :NCM, :KIT, '
      ':INSUMO)')
    DeleteSQL.Strings = (
      'delete from PRODUTO'
      'where'
      '  PRO_ID = :OLD_PRO_ID')
    Left = 648
    Top = 248
  end
  object Q_TPROD: TwwQuery
    AutoCalcFields = False
    CachedUpdates = True
    BeforePost = Q_TPRODBeforePost
    AfterPost = Q_TPRODAfterPost
    AfterDelete = Q_TPRODAfterDelete
    OnNewRecord = Q_TPRODNewRecord
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    DataSource = DS_CLINBF
    RequestLive = True
    SQL.Strings = (
      'select * from TPPRODUTO_CLINBF  where'
      'CLIN_ID = :CLIN_ID'
      'order by TPRO_NOME')
    UpdateObject = UPD_TPROD
    ValidateWithMask = True
    Left = 435
    Top = 58
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'CLIN_ID'
        ParamType = ptUnknown
      end>
    object Q_TPRODTPRO_NOME: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 41
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
  object DS_TPROD: TwwDataSource
    DataSet = Q_TPROD
    Left = 512
    Top = 264
  end
  object UPD_TPROD: TUpdateSQL
    ModifySQL.Strings = (
      'update TPPRODUTO_CLINBF'
      'set'
      '  TPRO_NOME = :TPRO_NOME,'
      '  CLIN_ID = :CLIN_ID'
      'where'
      '  TPRO_ID = :OLD_TPRO_ID')
    InsertSQL.Strings = (
      'insert into TPPRODUTO_CLINBF'
      '  (TPRO_NOME, CLIN_ID)'
      'values'
      '  (:TPRO_NOME, :CLIN_ID)')
    DeleteSQL.Strings = (
      'delete from TPPRODUTO_CLINBF'
      'where'
      '  TPRO_ID = :OLD_TPRO_ID')
    Left = 344
    Top = 197
  end
  object Q_TCONT: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select * from TPCONTATO order by TCONT_DESCRICAO'
      ''
      '')
    ValidateWithMask = True
    Left = 840
    Top = 32
    object Q_TCONTTCONT_DESCRICAO: TStringField
      DisplayLabel = 'Descri��o'
      DisplayWidth = 40
      FieldName = 'TCONT_DESCRICAO'
      Origin = 'NBFDADOS.TPCONTATO.TCONT_DESCRICAO'
      FixedChar = True
      Size = 40
    end
    object Q_TCONTTCONT_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'TCONT_ID'
      Origin = 'NBFDADOS.TPCONTATO.TCONT_ID'
      Visible = False
    end
  end
  object Q_UNIDVEND: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select * from UNIDVENDA  order by UVEN_NOME'
      ''
      '')
    ValidateWithMask = True
    Left = 631
    Top = 136
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
  object Q_CLIF: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select CLIF_ID,CLIF_RAZA from CLIENTEFINAL order by CLIF_raza'
      ''
      '')
    ValidateWithMask = True
    Left = 264
    Top = 259
    object Q_CLIFCLIF_RAZA: TStringField
      DisplayWidth = 50
      FieldName = 'CLIF_RAZA'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_RAZA'
      FixedChar = True
      Size = 50
    end
    object Q_CLIFCLIF_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'CLIF_ID'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_ID'
      Visible = False
    end
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
    DataSource = DS_CLINBF
    RequestLive = True
    SQL.Strings = (
      'select A.*,B.CLIF_RAZA '
      'from '
      'CLIENTE_NBFINAL A,'
      ' CLIENTEFINAL B'
      ' where '
      'A.CLIN_ID = :CLIN_ID and'
      'A.CLIF_ID = B.CLIF_ID order by  B.CLIF_RAZA')
    UpdateObject = UPD_NBFIN
    ValidateWithMask = True
    Left = 464
    Top = 368
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'CLIN_ID'
        ParamType = ptUnknown
      end>
    object Q_NBFINCLIF_RAZA: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 40
      FieldName = 'CLIF_RAZA'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_RAZA'
      FixedChar = True
      Size = 50
    end
    object Q_NBFINNBFINAL_DT_INCL: TDateTimeField
      DisplayLabel = 'Data Inclus�o'
      DisplayWidth = 18
      FieldName = 'NBFINAL_DT_INCL'
      Origin = 'NBFDADOS.CLIENTE_NBFINAL.NBFINAL_DT_INCL'
      EditMask = '!99/99/9999;1;_'
    end
    object Q_NBFINNBFINAL_COD_CLIN: TStringField
      DisplayLabel = 'C�digo no Cliente NBF'
      DisplayWidth = 10
      FieldName = 'NBFINAL_COD_CLIN'
      Origin = 'NBFDADOS.CLIENTE_NBFINAL.NBFINAL_COD_CLIN'
      FixedChar = True
      Size = 10
    end
    object Q_NBFINNBFINAL_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'NBFINAL_ID'
      Origin = 'NBFDADOS.CLIENTE_NBFINAL.NBFINAL_ID'
      Visible = False
    end
    object Q_NBFINCLIF_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'CLIF_ID'
      Origin = 'NBFDADOS.CLIENTE_NBFINAL.CLIF_ID'
      Visible = False
    end
    object Q_NBFINCLIN_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'CLIN_ID'
      Origin = 'NBFDADOS.CLIENTE_NBFINAL.CLIN_ID'
      Visible = False
    end
  end
  object DS_NBFIN: TwwDataSource
    DataSet = Q_NBFIN
    Left = 536
    Top = 240
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
    Left = 584
    Top = 64
  end
  object Q_UF: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select *  from UF order by UF_NOME'
      ''
      '')
    ValidateWithMask = True
    Left = 272
    Top = 256
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
  object Q_TPROD_AUX: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    ValidateWithMask = True
    Left = 448
    Top = 144
  end
  object Q_CEP: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    ValidateWithMask = True
    Left = 296
    Top = 152
  end
  object STP_CEP: TwwStoredProc
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    StoredProcName = 'dbo.STP_CEP'
    ValidateWithMask = True
    Left = 560
    Top = 200
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Result'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = '@CEPDIGITADO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@RUA'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = '@CIDADE'
        ParamType = ptOutput
      end>
  end
  object Q_CG: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'select * from CPACONT order by CON_CODI')
    ValidateWithMask = True
    Left = 600
    Top = 304
    object Q_CGCON_DESC: TStringField
      DisplayLabel = 'Descri��o'
      DisplayWidth = 25
      FieldName = 'CON_DESC'
      Origin = 'NBFDADOS.conta_gerencial.CON_DESC'
      FixedChar = True
      Size = 40
    end
    object Q_CGCON_CODI: TStringField
      DisplayWidth = 6
      FieldName = 'CON_CODI'
      Origin = 'NBFDADOS.conta_gerencial.CON_CODI'
      Visible = False
      FixedChar = True
      Size = 6
    end
    object Q_CGCON_ENSA: TStringField
      DisplayWidth = 1
      FieldName = 'CON_ENSA'
      Origin = 'NBFDADOS.conta_gerencial.CON_ENSA'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_CGCON_OPER: TStringField
      DisplayWidth = 1
      FieldName = 'CON_OPER'
      Origin = 'NBFDADOS.conta_gerencial.CON_OPER'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_CGCON_FLOA: TFloatField
      DisplayWidth = 10
      FieldName = 'CON_FLOA'
      Origin = 'NBFDADOS.conta_gerencial.CON_FLOA'
      Visible = False
    end
    object Q_CGCON_FLUX: TStringField
      DisplayWidth = 1
      FieldName = 'CON_FLUX'
      Origin = 'NBFDADOS.conta_gerencial.CON_FLUX'
      Visible = False
      FixedChar = True
      Size = 1
    end
  end
  object Q_AUX: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    ValidateWithMask = True
    Left = 360
    Top = 152
  end
  object Q_PROAREA: TwwQuery
    AutoCalcFields = False
    CachedUpdates = True
    AfterPost = Q_PROAREAAfterPost
    AfterDelete = Q_PROAREAAfterDelete
    OnNewRecord = Q_PROAREANewRecord
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    DataSource = DS_PROD
    RequestLive = True
    SQL.Strings = (
      'select * from PRODUTO_AREA '
      'where '
      'PRO_ID = :PRO_ID '
      'order by PROAREA_ORDEM'
      '')
    ControlType.Strings = (
      'PROAREA_SITU;CustomEdit;wwDBComboBox5')
    ValidateWithMask = True
    Left = 320
    Top = 200
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'PRO_ID'
        ParamType = ptUnknown
      end>
    object Q_PROAREAPROAREA_ORDEM: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Ordem'
      DisplayWidth = 10
      FieldName = 'PROAREA_ORDEM'
    end
    object Q_PROAREAAR_NOME: TStringField
      DisplayLabel = '�rea de Armazenamento'
      DisplayWidth = 45
      FieldKind = fkLookup
      FieldName = 'AR_NOME'
      LookupDataSet = Q_AR
      LookupKeyFields = 'AR_ID'
      LookupResultField = 'AR_NOME'
      KeyFields = 'AR_ID'
      Size = 40
      Lookup = True
    end
    object Q_PROAREAPROAREA_SITU: TStringField
      DisplayLabel = 'Situa��o'
      DisplayWidth = 16
      FieldName = 'PROAREA_SITU'
      FixedChar = True
      Size = 1
    end
    object Q_PROAREAPROAREA_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'PROAREA_ID'
      Visible = False
    end
    object Q_PROAREAPRO_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'PRO_ID'
      Visible = False
    end
    object Q_PROAREAAR_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'AR_ID'
      Visible = False
    end
  end
  object UPD_PROAREA: TUpdateSQL
    ModifySQL.Strings = (
      'update PRODUTO_AREA'
      'set'
      '  PRO_ID = :PRO_ID,'
      '  AR_ID = :AR_ID,'
      '  PROAREA_SITU = :PROAREA_SITU,'
      '  PROAREA_ORDEM = :PROAREA_ORDEM'
      'where'
      '  PROAREA_ID = :OLD_PROAREA_ID')
    InsertSQL.Strings = (
      'insert into PRODUTO_AREA'
      '  (PRO_ID, AR_ID, PROAREA_SITU,PROAREA_ORDEM)'
      'values'
      '  (:PRO_ID, :AR_ID, :PROAREA_SITU, :PROAREA_ORDEM)')
    DeleteSQL.Strings = (
      'delete from PRODUTO_AREA'
      'where'
      '  PROAREA_ID = :OLD_PROAREA_ID')
    Left = 544
    Top = 200
  end
  object DS_PROAREA: TwwDataSource
    DataSet = Q_PROAREA
    OnDataChange = DS_PROAREADataChange
    Left = 528
    Top = 208
  end
  object Q_AR: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      ' Select A.*,B.PAR_NOME '
      ' from'
      ' AREA A,PARAMETRO B'
      ' where'
      'A.AR_ID not in(Select AR_ID from PARAMETRO) and'
      'A.PAR_ID = B.PAR_ID'
      'order by B.PAR_NOME,A.AR_NOME')
    ValidateWithMask = True
    Left = 520
    Top = 160
    object Q_ARAR_NOME: TStringField
      DisplayWidth = 40
      FieldName = 'AR_NOME'
      Origin = 'NBFDADOS.AREA.AR_NOME'
      FixedChar = True
      Size = 40
    end
    object Q_ARPAR_NOME: TStringField
      DisplayWidth = 30
      FieldName = 'PAR_NOME'
      FixedChar = True
      Size = 30
    end
    object Q_ARAR_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'AR_ID'
      Origin = 'NBFDADOS.AREA.AR_ID'
      Visible = False
    end
    object Q_ARAR_CONTROL_POS: TStringField
      DisplayWidth = 1
      FieldName = 'AR_CONTROL_POS'
      Origin = 'NBFDADOS.AREA.AR_CONTROL_POS'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_ARPAR_ID: TIntegerField
      FieldName = 'PAR_ID'
      Visible = False
    end
  end
  object Q_PAR: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select AR_ID FROM PARAMETRO')
    ValidateWithMask = True
    Left = 488
    Top = 184
    object Q_PARAR_ID: TIntegerField
      FieldName = 'AR_ID'
      Origin = 'NBFDADOS.PARAMETRO.AR_ID'
    end
  end
  object Q_MUNI: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select * from MUNICIPIO order by MUN_NOME')
    ValidateWithMask = True
    Left = 520
    Top = 176
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
    Left = 536
    Top = 216
  end
  object Q_CTT: TwwQuery
    AutoCalcFields = False
    BeforePost = Q_CTTBeforePost
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    DataSource = DS_CLINBF
    SQL.Strings = (
      'select A.CLIN_ID,'
      'A.CTT_ID,'
      'A.CTT_NOME,'
      'A.CTT_DT_INICIO,'
      'A.CTT_DT_FINAL, B.TOS_NOME'
      'from CONTRATO A,TPOS B'
      'where A.CLIN_ID = :CLIN_ID and '
      'A.TOS_ID = B.TOS_ID order by A.CTT_NOME')
    ValidateWithMask = True
    Left = 568
    Top = 224
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'CLIN_ID'
        ParamType = ptUnknown
      end>
    object Q_CTTcTT_NOME: TStringField
      DisplayLabel = 'Nome do Contrato'
      DisplayWidth = 40
      FieldName = 'cTT_NOME'
      FixedChar = True
      Size = 40
    end
    object Q_CTTTOS_NOME: TStringField
      DisplayLabel = 'Tipo de OS'
      DisplayWidth = 40
      FieldName = 'TOS_NOME'
      Origin = 'NBFDADOS.TPOS.TOS_NOME'
      FixedChar = True
      Size = 40
    end
    object Q_CTTCTT_DT_FINAL: TDateTimeField
      Alignment = taCenter
      DisplayLabel = 'In�cio'
      DisplayWidth = 18
      FieldName = 'CTT_DT_FINAL'
    end
    object Q_CTTCTT_DT_INICIO: TDateTimeField
      Alignment = taCenter
      DisplayLabel = 'T�rmino'
      DisplayWidth = 18
      FieldName = 'CTT_DT_INICIO'
    end
    object Q_CTTCTT_ID: TAutoIncField
      FieldName = 'CTT_ID'
      Origin = 'NBFDADOS.CONTRATO.CTT_ID'
      Visible = False
    end
    object Q_CTTCLIN_ID: TIntegerField
      FieldName = 'CLIN_ID'
      Origin = 'NBFDADOS.CONTRATO.CLIN_ID'
      Visible = False
    end
  end
  object wwSearchDialog1: TwwSearchDialog
    Selected.Strings = (
      'CLIN_NOME'#9'40'#9'Fantasia'#9'F'
      'CLIN_RAZA'#9'50'#9'Raz�o Social'#9'F'
      'CLIN_CGCCPF'#9'20'#9'CNPJ / CPF'#9'F')
    GridTitleAlignment = taCenter
    GridColor = clAqua
    GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
    SearchTable = Q_CLINBF
    Caption = 'Pesquisa de Clientes NBF'
    MaxWidth = 0
    MaxHeight = 350
    CharCase = ecUpperCase
    Left = 488
    Top = 208
  end
  object Q_MUNI_COBR: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select * from MUNICIPIO order by MUN_NOME')
    ValidateWithMask = True
    Left = 520
    Top = 168
    object Q_MUNI_COBRMUN_ID: TAutoIncField
      FieldName = 'MUN_ID'
      Origin = 'NBFDADOS.MUNICIPIO.MUN_ID'
    end
    object Q_MUNI_COBRDIPAM: TStringField
      FieldName = 'DIPAM'
      Origin = 'NBFDADOS.MUNICIPIO.DIPAM'
      FixedChar = True
      Size = 10
    end
    object Q_MUNI_COBRMUN_NOME: TStringField
      FieldName = 'MUN_NOME'
      Origin = 'NBFDADOS.MUNICIPIO.MUN_NOME'
      FixedChar = True
      Size = 40
    end
    object Q_MUNI_COBRUF_SIGLA: TStringField
      FieldName = 'UF_SIGLA'
      Origin = 'NBFDADOS.MUNICIPIO.UF_SIGLA'
      FixedChar = True
      Size = 2
    end
    object Q_MUNI_COBRREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'NBFDADOS.MUNICIPIO.REG_ID'
    end
  end
  object DS_MUNI_COBR: TwwDataSource
    DataSet = Q_MUNI_COBR
    Left = 400
    Top = 248
  end
  object Q_UF_COBR: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select *  from UF order by UF_NOME'
      ''
      '')
    ValidateWithMask = True
    Left = 600
    Top = 144
    object Q_UF_COBRUF_SIGLA: TStringField
      FieldName = 'UF_SIGLA'
      Origin = 'NBFDADOS.UF.UF_SIGLA'
      FixedChar = True
      Size = 2
    end
    object Q_UF_COBRUF_NOME: TStringField
      FieldName = 'UF_NOME'
      Origin = 'NBFDADOS.UF.UF_NOME'
      FixedChar = True
      Size = 30
    end
    object Q_UF_COBRUF_ALIQUOTA: TFloatField
      FieldName = 'UF_ALIQUOTA'
      Origin = 'NBFDADOS.UF.UF_ALIQUOTA'
    end
  end
  object UPD_CLINBF: TUpdateSQL
    ModifySQL.Strings = (
      'update CLIENTENBF'
      'set'
      '  CLIN_PESSOA = :CLIN_PESSOA,'
      '  CLIN_RAZA = :CLIN_RAZA,'
      '  CLIN_NOME = :CLIN_NOME,'
      '  CLIN_CGCCPF = :CLIN_CGCCPF,'
      '  CLIN_INSCRG = :CLIN_INSCRG,'
      '  CLIN_ENDERECO = :CLIN_ENDERECO,'
      '  CLIN_ENDERECO_COMPL = :CLIN_ENDERECO_COMPL,'
      '  CLIN_ENDERECO_BAIRRO = :CLIN_ENDERECO_BAIRRO,'
      '  CLIN_MUNICIPIO = :CLIN_MUNICIPIO,'
      '  UF_SIGLA = :UF_SIGLA,'
      '  CLIN_CEP = :CLIN_CEP,'
      '  CLIN_TEL1 = :CLIN_TEL1,'
      '  CLIN_TEL2 = :CLIN_TEL2,'
      '  CLIN_FAX = :CLIN_FAX,'
      '  CLIN_EMAIL = :CLIN_EMAIL,'
      '  CON_CODI = :CON_CODI,'
      '  CLIN_CONTRATO = :CLIN_CONTRATO,'
      '  CLIN_UTIL_COD = :CLIN_UTIL_COD,'
      '  MUN_ID = :MUN_ID,'
      '  CLIN_WEB = :CLIN_WEB,'
      '  CLIN_ENDC = :CLIN_ENDC,'
      '  CLIN_END_COMPLC = :CLIN_END_COMPLC,'
      '  CLIN_END_BAIRC = :CLIN_END_BAIRC,'
      '  CLIN_MUNICC = :CLIN_MUNICC,'
      '  UF_SIGLAC = :UF_SIGLAC,'
      '  CLIN_CEPC = :CLIN_CEPC,'
      '  CLIN_TELC = :CLIN_TELC,'
      '  CLIN_FAXC = :CLIN_FAXC,'
      '  CLIN_EMAILC = :CLIN_EMAILC,'
      '  MUN_IDC = :MUN_IDC,'
      '  CLIN_TIPOSALDO = :CLIN_TIPOSALDO,'
      '  CLIN_VLRSALDO = :CLIN_VLRSALDO,'
      '  CLIN_TPMERC = :CLIN_TPMERC,'
      '  CLIN_LOTE = :CLIN_LOTE,'
      '  CLIN_ISS = :CLIN_ISS,'
      '  CLIN_DESCONTO  = :CLIN_DESCONTO,'
      '  ibge_id = :IBGE_ID,'
      '  CLIN_LOGRADOURO = :CLIN_LOGRADOURO,'
      '  CLIN_NUMERO = :CLIN_NUMERO,'
      '  CLIN_ISENCAO = :CLIN_ISENCAO,'
      'CLIN_COBRAFRETEDEV= :CLIN_COBRAFRETEDEV,'
      'CLIN_PAGAFRETEDEV = :CLIN_PAGAFRETEDEV,'
      'CLIN_FRETEADICIONAL = :CLIN_FRETEADICIONAL,'
      'CLIN_PERMANENCIAISENTA = :CLIN_PERMANENCIAISENTA,'
      'CLIN_PERMANENCIAVALOR = :CLIN_PERMANENCIAVALOR,'
      'DeixaRestoNaPosicao = :DeixaRestoNaPosicao'
      'where'
      '  CLIN_ID = :OLD_CLIN_ID')
    InsertSQL.Strings = (
      'insert into CLIENTENBF'
      '  (CLIN_PESSOA, CLIN_RAZA, CLIN_NOME, CLIN_CGCCPF, CLIN_INSCRG, '
      'CLIN_ENDERECO, '
      '   CLIN_ENDERECO_COMPL, CLIN_ENDERECO_BAIRRO, CLIN_MUNICIPIO, '
      'UF_SIGLA, '
      
        '   CLIN_CEP, CLIN_TEL1, CLIN_TEL2, CLIN_FAX, CLIN_EMAIL, CON_COD' +
        'I, '
      'CLIN_CONTRATO, '
      '   CLIN_UTIL_COD, MUN_ID, CLIN_WEB, CLIN_ENDC, CLIN_END_COMPLC, '
      'CLIN_END_BAIRC, '
      '   CLIN_MUNICC, UF_SIGLAC, CLIN_CEPC, CLIN_TELC, CLIN_FAXC, '
      'CLIN_EMAILC, '
      
        '   MUN_IDC, CLIN_TIPOSALDO, CLIN_VLRSALDO, CLIN_TPMERC, CLIN_LOT' +
        'E, '
      'CLIN_ISS, CLIN_DESCONTO, IBGE_ID, CLIN_LOGRADOURO, CLIN_NUMERO, '
      'CLIN_ISENCAO, CLIN_COBRAFRETEDEV, CLIN_PAGAFRETEDEV, '
      'CLIN_FRETEADICIONAL, CLIN_PERMANENCIAISENTA, '
      'CLIN_PERMANENCIAVALOR, DeixaRestoNaPosicao)'
      'values'
      
        '  (:CLIN_PESSOA, :CLIN_RAZA, :CLIN_NOME, :CLIN_CGCCPF, :CLIN_INS' +
        'CRG, '
      ':CLIN_ENDERECO, '
      
        '   :CLIN_ENDERECO_COMPL, :CLIN_ENDERECO_BAIRRO, :CLIN_MUNICIPIO,' +
        ' '
      ':UF_SIGLA, '
      
        '   :CLIN_CEP, :CLIN_TEL1, :CLIN_TEL2, :CLIN_FAX, :CLIN_EMAIL, :C' +
        'ON_CODI, '
      
        '   :CLIN_CONTRATO, :CLIN_UTIL_COD, :MUN_ID, :CLIN_WEB, :CLIN_END' +
        'C, '
      ':CLIN_END_COMPLC, '
      
        '   :CLIN_END_BAIRC, :CLIN_MUNICC, :UF_SIGLAC, :CLIN_CEPC, :CLIN_' +
        'TELC, '
      ':CLIN_FAXC, '
      '   :CLIN_EMAILC, :MUN_IDC, :CLIN_TIPOSALDO, :CLIN_VLRSALDO, '
      ':CLIN_TPMERC, '
      
        '   :CLIN_LOTE, :CLIN_ISS, :CLIN_DESCONTO, :IBGE_ID, :CLIN_LOGRAD' +
        'OURO, '
      ':CLIN_NUMERO, :CLIN_ISENCAO, :CLIN_COBRAFRETEDEV, '
      ':CLIN_PAGAFRETEDEV, :CLIN_FRETEADICIONAL, '
      ':CLIN_PERMANENCIAISENTA, :CLIN_PERMANENCIAVALOR, '
      ':DeixaRestoNaPosicao)')
    DeleteSQL.Strings = (
      'delete from CLIENTENBF'
      'where'
      '  CLIN_ID = :OLD_CLIN_ID')
    Left = 65
    Top = 320
  end
  object DS_CTT: TwwDataSource
    DataSet = Q_CTT
    Left = 464
    Top = 192
  end
  object wwSearchDialog2: TwwSearchDialog
    Selected.Strings = (
      'CLIF_RAZA'#9'50'#9'Nome'#9'F')
    GridTitleAlignment = taCenter
    GridColor = clAqua
    GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
    SearchTable = Q_NBFIN2
    Caption = 'Pesquisa de Clientes Finais'
    MaxWidth = 0
    MaxHeight = 350
    CharCase = ecUpperCase
    Left = 520
    Top = 160
  end
  object Q_NBFIN2: TwwQuery
    AutoCalcFields = False
    OnNewRecord = Q_NBFINNewRecord
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    DataSource = DS_CLINBF
    SQL.Strings = (
      'select A.*,B.CLIF_RAZA '
      'from '
      'CLIENTE_NBFINAL A,'
      ' CLIENTEFINAL B'
      ' where '
      'A.CLIN_ID = :CLIN_ID and'
      'A.CLIF_ID = B.CLIF_ID order by  B.CLIF_RAZA')
    ValidateWithMask = True
    Left = 280
    Top = 248
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'CLIN_ID'
        ParamType = ptUnknown
      end>
    object Q_NBFIN2CLIF_RAZA: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 50
      FieldName = 'CLIF_RAZA'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_RAZA'
      FixedChar = True
      Size = 50
    end
    object Q_NBFIN2NBFINAL_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'NBFINAL_ID'
      Origin = 'NBFDADOS.CLIENTE_NBFINAL.NBFINAL_ID'
      Visible = False
    end
    object Q_NBFIN2CLIF_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'CLIF_ID'
      Origin = 'NBFDADOS.CLIENTE_NBFINAL.CLIF_ID'
      Visible = False
    end
    object Q_NBFIN2CLIN_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'CLIN_ID'
      Origin = 'NBFDADOS.CLIENTE_NBFINAL.CLIN_ID'
      Visible = False
    end
    object Q_NBFIN2NBFINAL_DT_INCL: TDateTimeField
      DisplayWidth = 18
      FieldName = 'NBFINAL_DT_INCL'
      Origin = 'NBFDADOS.CLIENTE_NBFINAL.NBFINAL_DT_INCL'
      Visible = False
    end
    object Q_NBFIN2NBFINAL_COD_CLIN: TStringField
      DisplayWidth = 10
      FieldName = 'NBFINAL_COD_CLIN'
      Origin = 'NBFDADOS.CLIENTE_NBFINAL.NBFINAL_COD_CLIN'
      Visible = False
      FixedChar = True
      Size = 10
    end
  end
  object Q_PROD2: TwwQuery
    AutoCalcFields = False
    OnNewRecord = Q_PRODNewRecord
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    DataSource = DS_CLINBF
    SQL.Strings = (
      'select PRO_ID,PRO_COD,PRO_DESC,CLIN_ID'
      'from PRODUTO where'
      'CLIN_ID = :CLIN_ID'
      'order by PRO_DESC')
    ValidateWithMask = True
    Left = 768
    Top = 376
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'CLIN_ID'
        ParamType = ptUnknown
      end>
    object Q_PROD2PRO_DESC: TStringField
      DisplayLabel = 'Descri��o'
      DisplayWidth = 255
      FieldName = 'PRO_DESC'
      Origin = 'NBFDADOS.PRODUTO.PRO_DESC'
      FixedChar = True
      Size = 255
    end
    object Q_PROD2PRO_COD: TStringField
      DisplayLabel = 'C�digo'
      DisplayWidth = 16
      FieldName = 'PRO_COD'
      Origin = 'NBFDADOS.PRODUTO.PRO_COD'
      Visible = False
      FixedChar = True
      Size = 16
    end
    object Q_PROD2PRO_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'PRO_ID'
      Origin = 'NBFDADOS.PRODUTO.PRO_ID'
      Visible = False
    end
  end
  object wwSearchDialog3: TwwSearchDialog
    Selected.Strings = (
      'PRO_COD'#9'16'#9'C�digo'#9'F'
      'PRO_DESC'#9'40'#9'Descri��o'#9'F')
    GridTitleAlignment = taCenter
    GridColor = clAqua
    GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
    SearchTable = Q_PROD2
    Caption = 'Pesquisa de Produtos'
    MaxWidth = 0
    MaxHeight = 350
    CharCase = ecUpperCase
    Left = 472
    Top = 512
  end
  object Q_UNIDVEND2: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select * from UNIDVENDA  order by UVEN_NOME'
      ''
      '')
    ValidateWithMask = True
    Left = 416
    Top = 208
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
  object Q_PROAREA2: TwwQuery
    AutoCalcFields = False
    AfterPost = Q_PROAREAAfterPost
    AfterDelete = Q_PROAREAAfterDelete
    OnNewRecord = Q_PROAREANewRecord
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    DataSource = DS_PROD2
    SQL.Strings = (
      'select * from PRODUTO_AREA '
      'where '
      'PRO_ID = :PRO_ID '
      'order by PROAREA_ORDEM'
      '')
    ControlType.Strings = (
      'PROAREA_SITU;CustomEdit;wwDBComboBox5')
    ValidateWithMask = True
    Left = 656
    Top = 126
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'PRO_ID'
        ParamType = ptUnknown
      end>
    object Q_PROAREA2PROAREA_ID: TAutoIncField
      FieldName = 'PROAREA_ID'
      Origin = 'NBFDADOS.PRODUTO_AREA.PROAREA_ID'
    end
    object Q_PROAREA2PRO_ID: TIntegerField
      FieldName = 'PRO_ID'
      Origin = 'NBFDADOS.PRODUTO_AREA.PRO_ID'
    end
    object Q_PROAREA2AR_ID: TIntegerField
      FieldName = 'AR_ID'
      Origin = 'NBFDADOS.PRODUTO_AREA.AR_ID'
    end
    object Q_PROAREA2PROAREA_SITU: TStringField
      FieldName = 'PROAREA_SITU'
      Origin = 'NBFDADOS.PRODUTO_AREA.PROAREA_SITU'
      FixedChar = True
      Size = 1
    end
    object Q_PROAREA2PROAREA_ORDEM: TIntegerField
      FieldName = 'PROAREA_ORDEM'
      Origin = 'NBFDADOS.PRODUTO_AREA.PROAREA_ORDEM'
    end
  end
  object DS_PROD2: TwwDataSource
    DataSet = Q_PROD2
    Left = 464
    Top = 288
  end
  object Q_PAR2: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    DataSource = DS_AR
    SQL.Strings = (
      'select PAR_ID,PAR_NOME,PAR_RAZA from parametro  where'
      'PAR_ID = :PAR_ID')
    ValidateWithMask = True
    Left = 904
    Top = 80
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PAR_ID'
        ParamType = ptUnknown
      end>
    object Q_PAR2PAR_ID: TAutoIncField
      FieldName = 'PAR_ID'
      Origin = 'NBFDADOS.parametro.PAR_ID'
    end
    object Q_PAR2PAR_NOME: TStringField
      FieldName = 'PAR_NOME'
      Origin = 'NBFDADOS.parametro.PAR_NOME'
      FixedChar = True
      Size = 30
    end
    object Q_PAR2PAR_RAZA: TStringField
      FieldName = 'PAR_RAZA'
      Origin = 'NBFDADOS.parametro.PAR_RAZA'
      FixedChar = True
      Size = 50
    end
  end
  object DS_AR: TwwDataSource
    DataSet = Q_AR
    OnDataChange = DS_PROAREADataChange
    Left = 872
    Top = 32
  end
  object Q_CTT_COPIA: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'select A.*,'
      'B.CLIN_RAZA from CONTRATO A,'
      'CLIENTENBF B'
      'where A.CLIN_ID = B.CLIN_ID'
      'order by '
      'B.CLIN_RAZA,'
      'A.CTT_NOME')
    ValidateWithMask = True
    Left = 768
    Top = 24
    object Q_CTT_COPIACLIN_RAZA: TStringField
      DisplayLabel = 'Cliente NBF'
      DisplayWidth = 50
      FieldName = 'CLIN_RAZA'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_RAZA'
      FixedChar = True
      Size = 50
    end
    object Q_CTT_COPIACTT_NOME: TStringField
      DisplayLabel = 'Nome do Contrato'
      DisplayWidth = 40
      FieldName = 'CTT_NOME'
      Origin = 'NBFDADOS.CONTRATO.CTT_NOME'
      FixedChar = True
      Size = 40
    end
    object Q_CTT_COPIACTT_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'CTT_ID'
      Origin = 'NBFDADOS.CONTRATO.CTT_ID'
      Visible = False
    end
    object Q_CTT_COPIACLIN_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'CLIN_ID'
      Origin = 'NBFDADOS.CONTRATO.CLIN_ID'
      Visible = False
    end
    object Q_CTT_COPIATOS_ID: TIntegerField
      FieldName = 'TOS_ID'
      Origin = 'NBFDADOS.CONTRATO.TOS_ID'
    end
    object Q_CTT_COPIACTT_DT_INICIO: TDateTimeField
      FieldName = 'CTT_DT_INICIO'
      Origin = 'NBFDADOS.CONTRATO.CTT_DT_INICIO'
    end
    object Q_CTT_COPIACTT_DT_FINAL: TDateTimeField
      FieldName = 'CTT_DT_FINAL'
      Origin = 'NBFDADOS.CONTRATO.CTT_DT_FINAL'
    end
    object Q_CTT_COPIAEMP_ID: TIntegerField
      FieldName = 'EMP_ID'
      Origin = 'NBFDADOS.CONTRATO.EMP_ID'
    end
    object Q_CTT_COPIACTT_TERCEIRO: TStringField
      FieldName = 'CTT_TERCEIRO'
      Origin = 'NBFDADOS.CONTRATO.CTT_TERCEIRO'
      FixedChar = True
      Size = 1
    end
    object Q_CTT_COPIAPAR_ID: TIntegerField
      FieldName = 'PAR_ID'
      Origin = 'NBFDADOS.CONTRATO.PAR_ID'
    end
  end
  object Q_CTTxSERV: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    DataSource = DS_CTT_COPIA
    SQL.Strings = (
      'select * from CONTRATO_SERVICO where CTT_ID = :CTT_ID')
    ControlType.Strings = (
      'CTTSERV_COBRADO;CustomEdit;wwDBComboBox1')
    ValidateWithMask = True
    Left = 472
    Top = 160
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'CTT_ID'
        ParamType = ptUnknown
      end>
    object Q_CTTxSERVCTTSERV_ID: TAutoIncField
      FieldName = 'CTTSERV_ID'
      Origin = 'NBFDADOS.CONTRATO_SERVICO.CTTSERV_ID'
    end
    object Q_CTTxSERVCTT_ID: TIntegerField
      FieldName = 'CTT_ID'
      Origin = 'NBFDADOS.CONTRATO_SERVICO.CTT_ID'
    end
    object Q_CTTxSERVSER_ID: TIntegerField
      FieldName = 'SER_ID'
      Origin = 'NBFDADOS.CONTRATO_SERVICO.SER_ID'
    end
    object Q_CTTxSERVTSER_ID: TIntegerField
      FieldName = 'TSER_ID'
      Origin = 'NBFDADOS.CONTRATO_SERVICO.TSER_ID'
    end
    object Q_CTTxSERVCTTSERV_COBRADO: TStringField
      FieldName = 'CTTSERV_COBRADO'
      Origin = 'NBFDADOS.CONTRATO_SERVICO.CTTSERV_COBRADO'
      FixedChar = True
      Size = 1
    end
    object Q_CTTxSERVTDOC_ID: TIntegerField
      FieldName = 'TDOC_ID'
      Origin = 'NBFDADOS.CONTRATO_SERVICO.TDOC_ID'
    end
  end
  object DS_CTT_COPIA: TDataSource
    DataSet = Q_CTT_COPIA
    Left = 576
    Top = 192
  end
  object Q_CTTxESPEC: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    DataSource = DS_CTTxSERV
    SQL.Strings = (
      'select * from CONTRATO_ESPECIFICACOES '
      'where'
      'CTTSERV_ID = :CTTSERV_ID'
      '')
    ControlType.Strings = (
      'CTTESPEC_TPCARGA;CustomEdit;wwDBComboBox2')
    ValidateWithMask = True
    Left = 176
    Top = 208
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'CTTSERV_ID'
        ParamType = ptUnknown
      end>
    object Q_CTTxESPECCTTESPEC_ID: TAutoIncField
      FieldName = 'CTTESPEC_ID'
      Origin = 'NBFDADOS.CONTRATO_ESPECIFICACOES.CTTESPEC_ID'
    end
    object Q_CTTxESPECCTT_ID: TIntegerField
      FieldName = 'CTT_ID'
      Origin = 'NBFDADOS.CONTRATO_ESPECIFICACOES.CTT_ID'
    end
    object Q_CTTxESPECCTTSERV_ID: TIntegerField
      FieldName = 'CTTSERV_ID'
      Origin = 'NBFDADOS.CONTRATO_ESPECIFICACOES.CTTSERV_ID'
    end
    object Q_CTTxESPECCTTESPEC_ORDEM: TIntegerField
      FieldName = 'CTTESPEC_ORDEM'
      Origin = 'NBFDADOS.CONTRATO_ESPECIFICACOES.CTTESPEC_ORDEM'
    end
    object Q_CTTxESPECSER_ID: TIntegerField
      FieldName = 'SER_ID'
      Origin = 'NBFDADOS.CONTRATO_ESPECIFICACOES.SER_ID'
    end
    object Q_CTTxESPECTSER_ID: TIntegerField
      FieldName = 'TSER_ID'
      Origin = 'NBFDADOS.CONTRATO_ESPECIFICACOES.TSER_ID'
    end
    object Q_CTTxESPECCTTESPEC_FATOR: TFloatField
      FieldName = 'CTTESPEC_FATOR'
      Origin = 'NBFDADOS.CONTRATO_ESPECIFICACOES.CTTESPEC_FATOR'
    end
    object Q_CTTxESPECCTTESPEC_MINIMA: TIntegerField
      FieldName = 'CTTESPEC_MINIMA'
      Origin = 'NBFDADOS.CONTRATO_ESPECIFICACOES.CTTESPEC_MINIMA'
    end
    object Q_CTTxESPECUCOB_ID: TIntegerField
      FieldName = 'UCOB_ID'
      Origin = 'NBFDADOS.CONTRATO_ESPECIFICACOES.UCOB_ID'
    end
    object Q_CTTxESPECCTTESPEC_TPCARGA: TStringField
      FieldName = 'CTTESPEC_TPCARGA'
      Origin = 'NBFDADOS.CONTRATO_ESPECIFICACOES.CTTESPEC_TPCARGA'
      FixedChar = True
      Size = 1
    end
    object Q_CTTxESPECCLIF_ID: TIntegerField
      FieldName = 'CLIF_ID'
      Origin = 'NBFDADOS.CONTRATO_ESPECIFICACOES.CLIF_ID'
    end
    object Q_CTTxESPECVEIC_ID: TIntegerField
      FieldName = 'VEIC_ID'
      Origin = 'NBFDADOS.CONTRATO_ESPECIFICACOES.VEIC_ID'
    end
    object Q_CTTxESPECREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'NBFDADOS.CONTRATO_ESPECIFICACOES.REG_ID'
    end
    object Q_CTTxESPECTPRO_ID: TIntegerField
      FieldName = 'TPRO_ID'
      Origin = 'NBFDADOS.CONTRATO_ESPECIFICACOES.TPRO_ID'
    end
    object Q_CTTxESPECCTTESPEC_PESO_DE: TFloatField
      FieldName = 'CTTESPEC_PESO_DE'
      Origin = 'NBFDADOS.CONTRATO_ESPECIFICACOES.CTTESPEC_PESO_DE'
    end
    object Q_CTTxESPECCTTESPEC_PESO_ATE: TFloatField
      FieldName = 'CTTESPEC_PESO_ATE'
      Origin = 'NBFDADOS.CONTRATO_ESPECIFICACOES.CTTESPEC_PESO_ATE'
    end
    object Q_CTTxESPECCTTESPEC_AREA_DE: TFloatField
      FieldName = 'CTTESPEC_AREA_DE'
      Origin = 'NBFDADOS.CONTRATO_ESPECIFICACOES.CTTESPEC_AREA_DE'
    end
    object Q_CTTxESPECCTTESPEC_AREA_ATE: TFloatField
      FieldName = 'CTTESPEC_AREA_ATE'
      Origin = 'NBFDADOS.CONTRATO_ESPECIFICACOES.CTTESPEC_AREA_ATE'
    end
    object Q_CTTxESPECCTTESPEC_QTDEPALLET_DE: TIntegerField
      FieldName = 'CTTESPEC_QTDEPALLET_DE'
      Origin = 'NBFDADOS.CONTRATO_ESPECIFICACOES.CTTESPEC_QTDEPALLET_DE'
    end
    object Q_CTTxESPECCTTESPEC_QTDEPALLET_ATE: TIntegerField
      FieldName = 'CTTESPEC_QTDEPALLET_ATE'
      Origin = 'NBFDADOS.CONTRATO_ESPECIFICACOES.CTTESPEC_QTDEPALLET_ATE'
    end
    object Q_CTTxESPECCTTESPEC_VOL_DE: TFloatField
      FieldName = 'CTTESPEC_VOL_DE'
      Origin = 'NBFDADOS.CONTRATO_ESPECIFICACOES.CTTESPEC_VOL_DE'
    end
    object Q_CTTxESPECCTTESPEC_VOL_ATE: TFloatField
      FieldName = 'CTTESPEC_VOL_ATE'
      Origin = 'NBFDADOS.CONTRATO_ESPECIFICACOES.CTTESPEC_VOL_ATE'
    end
  end
  object DS_CTTxSERV: TDataSource
    DataSet = Q_CTTxSERV
    Left = 232
    Top = 248
  end
  object Q_CTTxSERV2: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'select * from CONTRATO_SERVICO')
    ControlType.Strings = (
      'CTTSERV_COBRADO;CustomEdit;wwDBComboBox1')
    ValidateWithMask = True
    Left = 328
    Top = 280
    object Q_CTTxSERV2CTTSERV_ID: TAutoIncField
      FieldName = 'CTTSERV_ID'
      Origin = 'NBFDADOS.CONTRATO_SERVICO.CTTSERV_ID'
    end
    object Q_CTTxSERV2CTT_ID: TIntegerField
      FieldName = 'CTT_ID'
      Origin = 'NBFDADOS.CONTRATO_SERVICO.CTT_ID'
    end
    object Q_CTTxSERV2SER_ID: TIntegerField
      FieldName = 'SER_ID'
      Origin = 'NBFDADOS.CONTRATO_SERVICO.SER_ID'
    end
    object Q_CTTxSERV2TSER_ID: TIntegerField
      FieldName = 'TSER_ID'
      Origin = 'NBFDADOS.CONTRATO_SERVICO.TSER_ID'
    end
    object Q_CTTxSERV2CTTSERV_COBRADO: TStringField
      FieldName = 'CTTSERV_COBRADO'
      Origin = 'NBFDADOS.CONTRATO_SERVICO.CTTSERV_COBRADO'
      FixedChar = True
      Size = 1
    end
    object Q_CTTxSERV2TDOC_ID: TIntegerField
      FieldName = 'TDOC_ID'
      Origin = 'NBFDADOS.CONTRATO_SERVICO.TDOC_ID'
    end
  end
  object Q_PALE: TwwQuery
    AutoCalcFields = False
    CachedUpdates = True
    BeforePost = Q_PALEBeforePost
    AfterPost = Q_PALEAfterPost
    AfterDelete = Q_PALEAfterDelete
    OnNewRecord = Q_PALENewRecord
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    DataSource = DS_PROD
    RequestLive = True
    SQL.Strings = (
      'select * from PRODUTO_ESPECIFICO where PRO_ID = :PRO_ID')
    UpdateObject = UPD_PALE
    ValidateWithMask = True
    Left = 500
    Top = 265
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'PRO_ID'
        ParamType = ptUnknown
      end>
    object Q_PALECLIFraza: TStringField
      DisplayLabel = 'Cliente Final'
      DisplayWidth = 40
      FieldKind = fkLookup
      FieldName = 'CLIFraza'
      LookupDataSet = Q_CLIF2
      LookupKeyFields = 'CLIF_ID'
      LookupResultField = 'CLIF_RAZA'
      KeyFields = 'CLIF_ID'
      Size = 30
      Lookup = True
    end
    object Q_PALEPALE_ALTURA: TIntegerField
      DisplayLabel = 'Altura'
      DisplayWidth = 12
      FieldName = 'PALE_ALTURA'
      Origin = 'NBFDADOS.PRODUTO_ESPECIFICO.PALE_ALTURA'
    end
    object Q_PALEPALE_LASTRO: TIntegerField
      DisplayLabel = 'Lastro'
      DisplayWidth = 12
      FieldName = 'PALE_LASTRO'
      Origin = 'NBFDADOS.PRODUTO_ESPECIFICO.PALE_LASTRO'
    end
    object Q_PALEPALE_QTDE_PALLET: TIntegerField
      DisplayLabel = 'Qtde. UE'
      DisplayWidth = 12
      FieldName = 'PALE_QTDE_PALLET'
      Origin = 'NBFDADOS.PRODUTO_ESPECIFICO.PALE_QTDE_PALLET'
    end
    object Q_PALEPALE_QTDE_PALLETUV: TFloatField
      DisplayLabel = 'Qtde. UV'
      DisplayWidth = 17
      FieldName = 'PALE_QTDE_PALLETUV'
      Origin = 'NBFDADOS.PRODUTO_ESPECIFICO.PALE_QTDE_PALLETUV'
      DisplayFormat = '0.000'
      EditFormat = '0.000'
    end
    object Q_PALEPALE_ID: TAutoIncField
      FieldName = 'PALE_ID'
      Origin = 'NBFDADOS.PRODUTO_ESPECIFICO.PALE_ID'
      Visible = False
    end
    object Q_PALECLIN_ID: TIntegerField
      FieldName = 'CLIN_ID'
      Origin = 'NBFDADOS.PRODUTO_ESPECIFICO.CLIN_ID'
      Visible = False
    end
    object Q_PALEPRO_ID: TIntegerField
      FieldName = 'PRO_ID'
      Origin = 'NBFDADOS.PRODUTO_ESPECIFICO.PRO_ID'
      Visible = False
    end
    object Q_PALECLIF_ID: TIntegerField
      FieldName = 'CLIF_ID'
      Origin = 'NBFDADOS.PRODUTO_ESPECIFICO.CLIF_ID'
      Visible = False
    end
    object Q_PALECLIFende: TStringField
      FieldKind = fkLookup
      FieldName = 'CLIFende'
      LookupDataSet = Q_CLIF2
      LookupKeyFields = 'CLIF_ID'
      LookupResultField = 'CLIF_ENDERECO'
      KeyFields = 'CLIF_ID'
      Size = 30
      Lookup = True
    end
  end
  object DS_PALE: TwwDataSource
    DataSet = Q_PALE
    OnDataChange = DS_CLINBFDataChange
    Left = 560
    Top = 146
  end
  object UPD_PALE: TUpdateSQL
    ModifySQL.Strings = (
      'update PRODUTO_ESPECIFICO'
      'set'
      '  CLIN_ID = :CLIN_ID,'
      '  PRO_ID = :PRO_ID,'
      '  CLIF_ID = :CLIF_ID,'
      '  PALE_LASTRO = :PALE_LASTRO,'
      '  PALE_ALTURA = :PALE_ALTURA,'
      '  PALE_QTDE_PALLET = :PALE_QTDE_PALLET,'
      '  PALE_QTDE_PALLETUV = :PALE_QTDE_PALLETUV'
      'where'
      '  PALE_ID = :OLD_PALE_ID')
    InsertSQL.Strings = (
      'insert into PRODUTO_ESPECIFICO'
      
        '  (CLIN_ID, PRO_ID, CLIF_ID, PALE_LASTRO, PALE_ALTURA, PALE_QTDE' +
        '_PALLET, '
      '   PALE_QTDE_PALLETUV)'
      'values'
      
        '  (:CLIN_ID, :PRO_ID, :CLIF_ID, :PALE_LASTRO, :PALE_ALTURA, :PAL' +
        'E_QTDE_PALLET, '
      '   :PALE_QTDE_PALLETUV)')
    DeleteSQL.Strings = (
      'delete from PRODUTO_ESPECIFICO'
      'where'
      '  PALE_ID = :OLD_PALE_ID')
    Left = 472
    Top = 148
  end
  object Q_CLIF2: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    DataSource = DS_CLINBF
    SQL.Strings = (
      'select B.CLIF_ID,B.CLIF_RAZA ,B.CLIF_ENDERECO'
      'from '
      'CLIENTE_NBFINAL A,'
      'CLIENTEFINAL B'
      'where '
      'A.CLIN_ID = :CLIN_ID and'
      'A.CLIF_ID = B.CLIF_ID order by  B.CLIF_RAZA')
    ValidateWithMask = True
    Left = 370
    Top = 59
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'CLIN_ID'
        ParamType = ptUnknown
      end>
    object Q_CLIF2CLIF_RAZA: TStringField
      DisplayWidth = 50
      FieldName = 'CLIF_RAZA'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_RAZA'
      FixedChar = True
      Size = 50
    end
    object Q_CLIF2CLIF_ENDERECO: TStringField
      DisplayWidth = 33
      FieldName = 'CLIF_ENDERECO'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_ENDERECO'
      FixedChar = True
      Size = 50
    end
    object Q_CLIF2CLIF_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'CLIF_ID'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_ID'
      Visible = False
    end
  end
  object Q_AUX2: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    ValidateWithMask = True
    Left = 416
    Top = 192
  end
  object qrIbge: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM TB_IBGE'
      'order by municipio')
    Left = 949
    Top = 237
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
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM TP_LOGRADOURO'
      'ORDER BY LOGRADOURO')
    Left = 557
    Top = 165
    object qrLogLOGRADOURO: TStringField
      DisplayWidth = 50
      FieldName = 'LOGRADOURO'
      Size = 50
    end
  end
  object qrInd: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    OnNewRecord = qrIndNewRecord
    Parameters = <
      item
        Name = 'PRO_ID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM PRODUTO_KIT'
      'where PRO_ID = :PRO_ID'
      'ORDER BY PRO_COD')
    Left = 94
    Top = 203
    object qrIndPRO_COD: TStringField
      DisplayLabel = 'Produto'
      DisplayWidth = 16
      FieldName = 'PRO_COD'
      Size = 16
    end
    object qrIndQTDE: TBCDField
      DisplayWidth = 20
      FieldName = 'QTDE'
      DisplayFormat = '###,###,##0.0000'
      Precision = 12
    end
    object qrIndPRO_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'PRO_ID'
      Visible = False
    end
    object qrIndPRO_ID_KIT: TIntegerField
      DisplayLabel = 'Produto'
      DisplayWidth = 10
      FieldName = 'PRO_ID_KIT'
      Visible = False
    end
  end
  object dsInd: TDataSource
    DataSet = qrInd
    Left = 78
    Top = 203
  end
  object qrProdutosKit: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CLIN_ID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT '
      #9'A.PRO_ID, '
      #9'A.PRO_COD,'
      #9'A.PRO_DESC'
      'FROM PRODUTO A'
      'WHERE CLIN_ID = :CLIN_ID'
      'ORDER BY A.PRO_COD')
    Left = 54
    Top = 243
    object qrProdutosKitPRO_COD: TStringField
      DisplayWidth = 16
      FieldName = 'PRO_COD'
      Size = 16
    end
    object qrProdutosKitPRO_DESC: TStringField
      DisplayWidth = 255
      FieldName = 'PRO_DESC'
      Size = 255
    end
    object qrProdutosKitPRO_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'PRO_ID'
      ReadOnly = True
      Visible = False
    end
  end
end
