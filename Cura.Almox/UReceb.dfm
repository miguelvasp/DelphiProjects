object FReceb: TFReceb
  Left = 857
  Top = 533
  Width = 1036
  Height = 626
  Caption = 'Recebimento de NFs - Sistema de Almoxarifado'
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
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 17
  object Tb1: TTabbedNotebook
    Left = 0
    Top = 52
    Width = 1020
    Height = 536
    Align = alClient
    PageIndex = 1
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    TabFont.Charset = ANSI_CHARSET
    TabFont.Color = clNavy
    TabFont.Height = -13
    TabFont.Name = 'Comic Sans MS'
    TabFont.Style = [fsBold]
    TabOrder = 1
    OnChange = Tb1Change
    object TTabPage
      Left = 4
      Top = 30
      Caption = '    &Lançamento    '
      object Panel1: TPanel
        Left = 2
        Top = -1
        Width = 1007
        Height = 498
        BevelInner = bvLowered
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label3: TLabel
          Left = 317
          Top = 8
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
          Left = 46
          Top = 8
          Width = 53
          Height = 17
          Caption = 'Num. Rec.'
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
        object Label1: TLabel
          Left = 154
          Top = 8
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
        object Label4: TLabel
          Left = 281
          Top = 8
          Width = 30
          Height = 17
          Caption = 'Série'
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
        object Label5: TLabel
          Left = 46
          Top = 53
          Width = 44
          Height = 17
          Caption = 'Entrada'
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
        object Label6: TLabel
          Left = 46
          Top = 102
          Width = 33
          Height = 17
          Caption = 'C.F.O.'
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
        object Label7: TLabel
          Left = 154
          Top = 53
          Width = 44
          Height = 17
          Caption = 'Emissão'
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
        object Label8: TLabel
          Left = 255
          Top = 53
          Width = 65
          Height = 17
          Caption = 'Cond. Pagto.'
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
          Left = 495
          Top = 53
          Width = 29
          Height = 17
          Caption = 'Local'
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
        object Label13: TLabel
          Left = 615
          Top = 252
          Width = 81
          Height = 17
          Caption = 'Valor do Frete'
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
        object Label14: TLabel
          Left = 59
          Top = 326
          Width = 103
          Height = 17
          Caption = 'Valor Desp. Acess.'
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
        object Label15: TLabel
          Left = 202
          Top = 326
          Width = 88
          Height = 17
          Caption = 'Valor do Seguro'
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
        object Label19: TLabel
          Left = 439
          Top = 326
          Width = 112
          Height = 17
          Caption = 'Valor Total da Nota'
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
        object Label30: TLabel
          Left = 327
          Top = 326
          Width = 87
          Height = 17
          Caption = 'Vl. Mercadorias'
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
        object Label31: TLabel
          Left = 565
          Top = 327
          Width = 38
          Height = 17
          Caption = 'Status'
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
        object Label62: TLabel
          Left = 497
          Top = 104
          Width = 29
          Height = 17
          Caption = 'Filial'
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
        object Label65: TLabel
          Left = 59
          Top = 382
          Width = 87
          Height = 17
          Caption = 'Conta Gerencial'
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
        object cboDiv: TwwDBLookupCombo
          Left = 317
          Top = 27
          Width = 620
          Height = 26
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'FOR_RAZA'#9'50'#9'FOR_RAZA'#9'F'#9
            'FOR_CGC'#9'15'#9'FOR_CGC'#9'F'#9)
          DataField = 'FOR_CODI'
          DataSource = DS_REC
          LookupTable = Q_FORN
          LookupField = 'FOR_CODI'
          TabOrder = 3
          AutoDropDown = True
          ShowButton = True
          PreciseEditRegion = False
          AllowClearKey = False
          OnCloseUp = cboDivCloseUp
          OnEnter = cboDivEnter
          OnExit = cboDivExit
        end
        object dbCod: TwwDBEdit
          Left = 46
          Top = 27
          Width = 94
          Height = 26
          BiDiMode = bdRightToLeft
          ParentBiDiMode = False
          DataField = 'Rec_ID'
          DataSource = DS_REC
          Enabled = False
          TabOrder = 0
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object txtNF: TwwDBEdit
          Left = 154
          Top = 27
          Width = 94
          Height = 26
          BiDiMode = bdRightToLeft
          ParentBiDiMode = False
          DataField = 'NFIS'
          DataSource = DS_REC
          TabOrder = 1
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnChange = txtNFChange
          OnEnter = txtNFEnter
          OnExit = txtNFExit
        end
        object wwDBEdit2: TwwDBEdit
          Left = 275
          Top = 27
          Width = 39
          Height = 26
          BiDiMode = bdRightToLeft
          CharCase = ecUpperCase
          ParentBiDiMode = False
          DataField = 'Serie'
          DataSource = DS_REC
          TabOrder = 2
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnEnter = wwDBEdit2Enter
          OnExit = wwDBEdit2Exit
        end
        object wwDBEdit3: TwwDBEdit
          Left = 46
          Top = 72
          Width = 94
          Height = 26
          BiDiMode = bdRightToLeft
          ParentBiDiMode = False
          DataField = 'Dt_Entrada'
          DataSource = DS_REC
          TabOrder = 4
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnEnter = wwDBEdit2Enter
          OnExit = wwDBEdit2Exit
        end
        object wwDBLookupCombo1: TwwDBLookupCombo
          Left = 46
          Top = 120
          Width = 446
          Height = 26
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'DSCFO'#9'120'#9'DSCFO'#9'F')
          DataField = 'Cfa_Sequ'
          DataSource = DS_REC
          LookupTable = Q_CFO
          LookupField = 'CFA_SEQU'
          TabOrder = 8
          AutoDropDown = True
          ShowButton = True
          PreciseEditRegion = False
          AllowClearKey = False
          OnEnter = cboDivEnter
          OnExit = wwDBLookupCombo1Exit
        end
        object wwDBEdit4: TwwDBEdit
          Left = 154
          Top = 72
          Width = 94
          Height = 26
          BiDiMode = bdRightToLeft
          ParentBiDiMode = False
          DataField = 'Dt_Emiss'
          DataSource = DS_REC
          TabOrder = 5
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnEnter = wwDBEdit2Enter
          OnExit = wwDBEdit2Exit
        end
        object wwDBLookupCombo2: TwwDBLookupCombo
          Left = 254
          Top = 72
          Width = 239
          Height = 26
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'Descricao'#9'30'#9'Descricao'#9'F')
          DataField = 'Cond_Pgto_ID'
          DataSource = DS_REC
          LookupTable = Q_COND
          LookupField = 'Cond_Pgto_ID'
          TabOrder = 6
          AutoDropDown = True
          ShowButton = True
          PreciseEditRegion = False
          AllowClearKey = False
          OnEnter = cboDivEnter
          OnExit = wwDBLookupCombo2Exit
        end
        object cboLoc: TwwDBLookupCombo
          Left = 496
          Top = 72
          Width = 441
          Height = 26
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'Descricao'#9'50'#9'Descricao'#9'F')
          DataField = 'Local_ID'
          DataSource = DS_REC
          LookupTable = Q_LOC
          LookupField = 'local_id'
          TabOrder = 7
          AutoDropDown = True
          ShowButton = True
          PreciseEditRegion = False
          AllowClearKey = False
          OnEnter = cboLocEnter
          OnExit = cboLocExit
        end
        object GroupBox1: TGroupBox
          Left = 47
          Top = 233
          Width = 450
          Height = 85
          Caption = 'IPI'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          TabOrder = 11
          object Label16: TLabel
            Left = 14
            Top = 22
            Width = 77
            Height = 17
            Caption = 'Cod. Trib. IPI'
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
          object Label17: TLabel
            Left = 275
            Top = 22
            Width = 80
            Height = 17
            Caption = 'Base Calc. IPI'
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
          object Label18: TLabel
            Left = 366
            Top = 22
            Width = 70
            Height = 17
            Caption = 'Valor do IPI'
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
          object Label29: TLabel
            Left = 136
            Top = 14
            Width = 49
            Height = 17
            Caption = 'Aliq. IPI'
            Color = clNavy
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
          object wwDBEdit10: TwwDBEdit
            Left = 275
            Top = 40
            Width = 87
            Height = 25
            BiDiMode = bdRightToLeft
            ParentBiDiMode = False
            DataField = 'Base_IPI'
            DataSource = DS_REC
            TabOrder = 2
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnEnter = wwDBEdit2Enter
            OnExit = wwDBEdit2Exit
          end
          object wwDBEdit11: TwwDBEdit
            Left = 365
            Top = 40
            Width = 79
            Height = 25
            BiDiMode = bdRightToLeft
            ParentBiDiMode = False
            DataField = 'Vl_IPI'
            DataSource = DS_REC
            TabOrder = 3
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnEnter = wwDBEdit2Enter
            OnExit = wwDBEdit2Exit
          end
          object DBCB_CFA_TIPI: TwwDBComboBox
            Left = 14
            Top = 40
            Width = 256
            Height = 25
            ShowButton = True
            Style = csDropDown
            MapList = True
            AllowClearKey = False
            AutoDropDown = True
            ButtonStyle = cbsEllipsis
            DataField = 'CodIPI'
            DataSource = DS_REC
            DropDownCount = 8
            ItemHeight = 0
            Items.Strings = (
              'Isentas'#9'I'
              'Outras'#9'O'
              'Tributado'#9'T')
            Sorted = True
            TabOrder = 1
            UnboundDataType = wwDefault
            OnEnter = DBCB_CFA_TICMEnter
            OnExit = DBCB_CFA_TICMExit
          end
          object wwDBEdit1: TwwDBEdit
            Left = 189
            Top = 11
            Width = 79
            Height = 25
            BiDiMode = bdRightToLeft
            ParentBiDiMode = False
            DataField = 'IPI'
            DataSource = DS_REC
            TabOrder = 0
            UnboundDataType = wwDefault
            Visible = False
            WantReturns = False
            WordWrap = False
            OnEnter = wwDBEdit2Enter
            OnExit = wwDBEdit2Exit
          end
        end
        object GroupBox2: TGroupBox
          Left = 46
          Top = 149
          Width = 663
          Height = 81
          Caption = 'ICMS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
          object Label10: TLabel
            Left = 6
            Top = 21
            Width = 61
            Height = 17
            Caption = 'Alíq. ICMS'
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
          object Label34: TLabel
            Left = 74
            Top = 22
            Width = 89
            Height = 17
            Caption = 'Cod. Trib. ICMS'
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
          object Label11: TLabel
            Left = 493
            Top = 21
            Width = 76
            Height = 17
            Caption = 'Base C. ICMS'
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
          object Label12: TLabel
            Left = 579
            Top = 21
            Width = 51
            Height = 17
            Caption = 'Vl. ICMS'
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
          object wwDBEdit5: TwwDBEdit
            Left = 6
            Top = 40
            Width = 66
            Height = 25
            BiDiMode = bdRightToLeft
            ParentBiDiMode = False
            DataField = 'ICMS'
            DataSource = DS_REC
            TabOrder = 0
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnEnter = wwDBEdit2Enter
            OnExit = wwDBEdit2Exit
          end
          object wwDBEdit6: TwwDBEdit
            Left = 493
            Top = 40
            Width = 84
            Height = 25
            BiDiMode = bdRightToLeft
            ParentBiDiMode = False
            DataField = 'Base_ICMS'
            DataSource = DS_REC
            TabOrder = 2
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnEnter = wwDBEdit2Enter
            OnExit = wwDBEdit2Exit
          end
          object wwDBEdit7: TwwDBEdit
            Left = 579
            Top = 40
            Width = 80
            Height = 25
            BiDiMode = bdRightToLeft
            ParentBiDiMode = False
            DataField = 'Vl_ICMS'
            DataSource = DS_REC
            TabOrder = 3
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnEnter = wwDBEdit2Enter
            OnExit = wwDBEdit2Exit
          end
          object DBCB_CFA_TICM: TwwDBComboBox
            Left = 74
            Top = 40
            Width = 415
            Height = 25
            ShowButton = True
            Style = csDropDown
            MapList = True
            AllowClearKey = False
            AutoDropDown = True
            ButtonStyle = cbsEllipsis
            DataField = 'CodICMS'
            DataSource = DS_REC
            DropDownCount = 8
            ItemHeight = 0
            Items.Strings = (
              'Tributado Integralmente'#9'0'
              'Tributado e ICMS por Substituição Tributária'#9'1'
              'Com Redução de Base de Cálculo'#9'2'
              'Isento ou Não Tributado e ICMS por Substituição Tributária'#9'3'
              'Isento ou Não Tributado'#9'4'
              'Com Suspensão ou Diferimento'#9'5'
              'ICMS Cobrado Anteriormente por Substituição Tributária'#9'6'
              
                'Com Redução de Base de Cálculo e ICMS por Substituição Tributári' +
                'a'#9'7'
              'Outros'#9'9')
            Sorted = False
            TabOrder = 1
            UnboundDataType = wwDefault
            OnEnter = DBCB_CFA_TICMEnter
            OnExit = DBCB_CFA_TICMExit
          end
        end
        object dbRad: TDBRadioGroup
          Left = 504
          Top = 233
          Width = 103
          Height = 85
          Caption = 'Tipo de Frete'
          Columns = 2
          DataField = 'Frete'
          DataSource = DS_REC
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          Items.Strings = (
            'Cif'
            'Fob')
          ParentFont = False
          TabOrder = 12
          Values.Strings = (
            'C'
            'F')
        end
        object wwDBEdit8: TwwDBEdit
          Left = 614
          Top = 271
          Width = 95
          Height = 26
          BiDiMode = bdRightToLeft
          ParentBiDiMode = False
          DataField = 'Vl_Frete'
          DataSource = DS_REC
          TabOrder = 13
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnEnter = wwDBEdit2Enter
          OnExit = wwDBEdit2Exit
        end
        object wwDBEdit9: TwwDBEdit
          Left = 58
          Top = 345
          Width = 115
          Height = 26
          BiDiMode = bdRightToLeft
          ParentBiDiMode = False
          DataField = 'Vl_OutrasDesp'
          DataSource = DS_REC
          TabOrder = 14
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnEnter = wwDBEdit2Enter
          OnExit = wwDBEdit2Exit
        end
        object wwDBEdit12: TwwDBEdit
          Left = 202
          Top = 345
          Width = 105
          Height = 26
          BiDiMode = bdRightToLeft
          ParentBiDiMode = False
          DataField = 'Vl_Seguro'
          DataSource = DS_REC
          TabOrder = 15
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnEnter = wwDBEdit2Enter
          OnExit = wwDBEdit2Exit
        end
        object wwDBEdit13: TwwDBEdit
          Left = 438
          Top = 345
          Width = 122
          Height = 26
          BiDiMode = bdRightToLeft
          ParentBiDiMode = False
          DataField = 'Vl_TotNF'
          DataSource = DS_REC
          TabOrder = 17
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnEnter = wwDBEdit2Enter
          OnExit = wwDBEdit2Exit
        end
        object wwDBEdit20: TwwDBEdit
          Left = 326
          Top = 345
          Width = 105
          Height = 26
          BiDiMode = bdRightToLeft
          ParentBiDiMode = False
          DataField = 'Vl_TotMer'
          DataSource = DS_REC
          TabOrder = 16
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnEnter = wwDBEdit2Enter
          OnExit = wwDBEdit2Exit
        end
        object wwDBComboBox1: TwwDBComboBox
          Left = 565
          Top = 345
          Width = 142
          Height = 26
          ShowButton = True
          Style = csDropDown
          MapList = True
          AllowClearKey = False
          AutoDropDown = True
          ButtonStyle = cbsEllipsis
          DataField = 'Status'
          DataSource = DS_REC
          DropDownCount = 8
          Enabled = False
          ItemHeight = 0
          Items.Strings = (
            'Aberto'#9'A'
            'Parcial'#9'P'
            'Finalizado'#9'F')
          Sorted = False
          TabOrder = 18
          UnboundDataType = wwDefault
          OnEnter = DBCB_CFA_TICMEnter
          OnExit = DBCB_CFA_TICMExit
        end
        object wwDBLookupCombo5: TwwDBLookupCombo
          Left = 496
          Top = 120
          Width = 441
          Height = 26
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'FIL_DESC'#9'20'#9'FIL_DESC'#9'F')
          DataField = 'FIL_CODI'
          DataSource = DS_REC
          LookupTable = ADOQuery1
          LookupField = 'FIL_CODI'
          Style = csDropDownList
          TabOrder = 9
          AutoDropDown = True
          ShowButton = True
          PreciseEditRegion = False
          AllowClearKey = False
          OnEnter = wwDBLookupCombo5Enter
        end
        object wwDBLookupCombo7: TwwDBLookupCombo
          Left = 59
          Top = 400
          Width = 646
          Height = 26
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'CON_DESC'#9'78'#9'CON_DESC'#9'F'#9)
          DataField = 'CON_CODI'
          DataSource = DS_REC
          LookupTable = qrContaGerencial
          LookupField = 'CON_CODI'
          TabOrder = 19
          AutoDropDown = True
          ShowButton = True
          PreciseEditRegion = False
          AllowClearKey = False
          OnEnter = cboDivEnter
          OnExit = wwDBLookupCombo1Exit
        end
      end
    end
    object TTabPage
      Left = 4
      Top = 30
      Caption = '        &Itens         '
      object Panel2: TPanel
        Left = -1
        Top = 10
        Width = 1002
        Height = 442
        BevelInner = bvLowered
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label20: TLabel
          Left = 73
          Top = 5
          Width = 58
          Height = 18
          Caption = 'Num. Rec.'
          Color = clBtnHighlight
          Enabled = False
          ParentColor = False
          Transparent = True
        end
        object Label21: TLabel
          Left = 207
          Top = 5
          Width = 57
          Height = 18
          Caption = 'Num. N.F.'
          Color = clBtnHighlight
          Enabled = False
          ParentColor = False
          Transparent = True
        end
        object Label22: TLabel
          Left = 334
          Top = 5
          Width = 33
          Height = 18
          Caption = 'Série'
          Color = clBtnHighlight
          Enabled = False
          ParentColor = False
          Transparent = True
        end
        object Label23: TLabel
          Left = 370
          Top = 5
          Width = 70
          Height = 18
          Caption = 'Fornecedor'
          Color = clBtnHighlight
          Enabled = False
          ParentColor = False
          Transparent = True
        end
        object GroupBox3: TGroupBox
          Left = 5
          Top = 46
          Width = 988
          Height = 394
          Caption = 'Itens'
          TabOrder = 4
          object Label36: TLabel
            Left = 657
            Top = 350
            Width = 102
            Height = 16
            Caption = 'Atende Totalmente'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label33: TLabel
            Left = 657
            Top = 364
            Width = 109
            Height = 16
            Caption = 'Atende Parcialmente'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Sp_OC: TSpeedButton
            Left = 8
            Top = 358
            Width = 89
            Height = 32
            Caption = 'OC'
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
            Left = 99
            Top = 358
            Width = 215
            Height = 32
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
          object Label32: TLabel
            Left = 629
            Top = 369
            Width = 24
            Height = 10
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
          object Label35: TLabel
            Left = 629
            Top = 356
            Width = 24
            Height = 10
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
          object Label37: TLabel
            Left = 634
            Top = 57
            Width = 32
            Height = 17
            Caption = 'Qtde.'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object Label39: TLabel
            Left = 467
            Top = 94
            Width = 41
            Height = 17
            Caption = 'P. Unit.'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object Label41: TLabel
            Left = 19
            Top = 57
            Width = 34
            Height = 17
            Caption = 'Marca'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object Label42: TLabel
            Left = 17
            Top = 19
            Width = 48
            Height = 17
            Caption = 'Material'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object Label43: TLabel
            Left = 33
            Top = 94
            Width = 32
            Height = 17
            Caption = 'ICMS'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object Label44: TLabel
            Left = 265
            Top = 94
            Width = 20
            Height = 17
            Caption = 'IPI'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object Label45: TLabel
            Left = 624
            Top = 94
            Width = 42
            Height = 17
            Caption = 'Vl. Tot.'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -12
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object Label38: TLabel
            Left = 337
            Top = 94
            Width = 39
            Height = 17
            Caption = 'Vl. IPI'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object Label40: TLabel
            Left = 118
            Top = 94
            Width = 51
            Height = 17
            Caption = 'Vl. ICMS'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object SpeedButton1: TSpeedButton
            Left = 315
            Top = 358
            Width = 124
            Height = 32
            Caption = 'Consulta Lotes'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              33033333333333333F7F3333333333333000333333333333F777333333333333
              000333333333333F777333333333333000333333333333F77733333333333300
              033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
              33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
              3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
              33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
              333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
              333333773FF77333333333370007333333333333777333333333}
            NumGlyphs = 2
            ParentFont = False
            OnClick = SpeedButton1Click
          end
          object Label46: TLabel
            Left = 170
            Top = 328
            Width = 66
            Height = 18
            Caption = 'Merc. Item'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -13
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object Label47: TLabel
            Left = 376
            Top = 328
            Width = 59
            Height = 18
            Caption = 'Merc. Tot'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -13
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object Label48: TLabel
            Left = 577
            Top = 328
            Width = 68
            Height = 18
            Caption = 'Valor Total'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -13
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object Label63: TLabel
            Left = 629
            Top = 381
            Width = 24
            Height = 10
            AutoSize = False
            Color = clYellow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clAqua
            Font.Height = -19
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label64: TLabel
            Left = 658
            Top = 377
            Width = 106
            Height = 16
            Caption = 'Conversão diferente'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object SpeedButton5: TSpeedButton
            Left = 442
            Top = 358
            Width = 135
            Height = 32
            Caption = 'Atualiza Conversão'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            NumGlyphs = 2
            ParentFont = False
            OnClick = SpeedButton5Click
          end
          object Label66: TLabel
            Left = 809
            Top = 352
            Width = 106
            Height = 16
            Caption = 'Conversão diferente'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label67: TLabel
            Left = 781
            Top = 356
            Width = 24
            Height = 10
            AutoSize = False
            Color = clFuchsia
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clAqua
            Font.Height = -19
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object GridY: TwwDBGrid
            Left = 5
            Top = 126
            Width = 972
            Height = 193
            TabStop = False
            Selected.Strings = (
              'Alterar'#9'2'#9'**'#9#9
              'MAT_DESC2'#9'37'#9'Material'#9#9
              'DSMarca'#9'18'#9'Marca'#9#9
              'Preco_Unit'#9'10'#9'P.U. (R$)'#9#9
              'STORD'#9'15'#9'St. Item O.C.'#9#9
              'ORD_ID'#9'11'#9'N.O.C.'#9#9
              'Qtde_OC'#9'12'#9'Qtde O.C.'#9'F'
              'Qtde'#9'12'#9'Qtde'#9'F'
              'CONVERSAO'#9'10'#9'Conversão'#9'F'#9
              'ICMS'#9'8'#9'Al. ICM'#9#9
              'Vl_ICMS'#9'14'#9'Vl. ICM (R$)'#9#9
              'IPI'#9'6'#9'Al. IPI'#9#9
              'Vl_IPI'#9'16'#9'Vl. IPI (R$)'#9#9
              'Vl_Total'#9'12'#9'Vl. Total (R$)'#9#9
              'GENERICO'#9'1'#9'GENERICO'#9'F'#9
              'MAT_DESC'#9'60'#9'MAT_DESC'#9'F'#9
              'ControlaConversao'#9'10'#9'ControlaConversao'#9'F'#9)
            IniAttributes.FileName = 'delphi32.ini'
            IniAttributes.SectionName = 'FPcPwwDBGrid3'
            IniAttributes.Delimiter = ';;'
            TitleColor = clSilver
            OnRowChanged = GridYRowChanged
            FixedCols = 0
            ShowHorzScrollBar = True
            Color = clInfoBk
            DataSource = DS_RECIT
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -12
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            KeyOptions = [dgEnterToTab]
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
            ParentFont = False
            RowHeightPercent = 110
            TabOrder = 12
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
          object Panel5: TPanel
            Left = 556
            Top = 133
            Width = 765
            Height = 195
            BevelInner = bvRaised
            BevelOuter = bvLowered
            BorderStyle = bsSingle
            Color = 13538330
            TabOrder = 11
            Visible = False
            object SpeedButton4: TSpeedButton
              Left = 262
              Top = 156
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
              OnClick = SpeedButton4Click
            end
            object SpeedButton2: TSpeedButton
              Left = 154
              Top = 156
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
              OnClick = SpeedButton2Click
            end
            object Btn_seleciona: TSpeedButton
              Left = 20
              Top = 156
              Width = 125
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
              OnClick = Btn_selecionaClick
            end
            object Grid1: TwwDBGrid
              Left = 3
              Top = 10
              Width = 199
              Height = 130
              Hint = 'Pressione Duplo Clique para Selecionar'
              IniAttributes.Delimiter = ';;'
              TitleColor = clLime
              FixedCols = 0
              ShowHorzScrollBar = True
              Color = clInfoBk
              Ctl3D = True
              DataSource = DS_OC
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -12
              Font.Name = 'Comic Sans MS'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              TitleAlignment = taLeftJustify
              TitleFont.Charset = ANSI_CHARSET
              TitleFont.Color = clBlue
              TitleFont.Height = -12
              TitleFont.Name = 'Comic Sans MS'
              TitleFont.Style = []
              TitleLines = 1
              TitleButtons = False
            end
            object Grid2: TwwDBGrid
              Left = 206
              Top = 9
              Width = 550
              Height = 131
              Hint = 'Pressione Duplo Clique para Selecionar'
              Selected.Strings = (
                'ALTERAR'#9'2'#9'***'
                'MAT_DESC'#9'25'#9'Material'
                'QTDE_COMP'#9'9'#9'Qtde. O.C.'
                'MATMARCA_EMBALAGEM'#9'13'#9'Emb.'
                'PRECO_UNIT'#9'10'#9'Pr. Unit.'
                'VALOR'#9'10'#9'Valor')
              IniAttributes.Delimiter = ';;'
              TitleColor = clLime
              FixedCols = 0
              ShowHorzScrollBar = True
              Color = clInfoBk
              Ctl3D = True
              DataSource = DS_IOC
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -12
              Font.Name = 'Comic Sans MS'
              Font.Style = []
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
            end
          end
          object wwDBEdit23: TwwDBEdit
            Left = 652
            Top = 326
            Width = 109
            Height = 25
            DataField = 'VL_TOTNF'
            DataSource = DS_SALDO
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            TabOrder = 17
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object wwDBEdit22: TwwDBEdit
            Left = 444
            Top = 326
            Width = 109
            Height = 25
            DataField = 'VL_TOT_MERC'
            DataSource = DS_SALDO
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            TabOrder = 16
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object wwDBEdit21: TwwDBEdit
            Left = 243
            Top = 326
            Width = 110
            Height = 25
            DataField = 'VL_TOT_ITEM'
            DataSource = DS_SALDO_ITEM
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            TabOrder = 15
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object cboStIt: TwwDBComboBox
            Left = 221
            Top = 202
            Width = 124
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
            TabOrder = 13
            UnboundDataType = wwDefault
            OnEnter = DBCB_CFA_TICMEnter
            OnExit = DBCB_CFA_TICMExit
          end
          object txtQ: TwwDBEdit
            Left = 667
            Top = 53
            Width = 87
            Height = 25
            DataField = 'Qtde'
            DataSource = DS_RECIT
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnEnter = txtQEnter
            OnExit = txtQExit
          end
          object txtP: TwwDBEdit
            Left = 510
            Top = 90
            Width = 109
            Height = 25
            DataField = 'Preco_Unit'
            DataSource = DS_RECIT
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            TabOrder = 9
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnEnter = txtPEnter
            OnExit = txtPExit
          end
          object cboForm: TwwDBLookupCombo
            Left = 67
            Top = 53
            Width = 551
            Height = 25
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'MARCA_DESC'#9'20'#9'MARCA_DESC'#9'F')
            DataField = 'Marca_ID'
            DataSource = DS_RECIT
            LookupTable = Q_MARCA2
            LookupField = 'MARCA_ID'
            Enabled = False
            ParentFont = False
            TabOrder = 3
            AutoDropDown = True
            ShowButton = True
            PreciseEditRegion = False
            AllowClearKey = False
            OnEnter = cboFormEnter
            OnExit = cboFormExit
          end
          object cboMat: TwwDBLookupCombo
            Left = 67
            Top = 15
            Width = 553
            Height = 25
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'MAT_DESC'#9'60'#9'Material'#9'F'
              'MARCA_DESC'#9'20'#9'Marca'#9'F'
              'MATMARCA_CONVERSAO'#9'10'#9'Conversão'#9'F'
              'MATMARCA_EMBALAGEM'#9'15'#9'Embalagem'#9'F')
            DataField = 'MATMARCA_ID'
            DataSource = DS_RECIT
            LookupTable = qrMaterialMarca
            LookupField = 'MATMARCA_ID'
            Options = [loColLines, loRowLines, loTitles]
            ParentFont = False
            TabOrder = 0
            AutoDropDown = True
            ShowButton = True
            PreciseEditRegion = False
            AllowClearKey = False
            OnCloseUp = cboMatCloseUp
            OnEnter = cboMatEnter
            OnExit = cboMatExit
          end
          object txtICM: TwwDBEdit
            Left = 67
            Top = 90
            Width = 41
            Height = 25
            DataField = 'ICMS'
            DataSource = DS_RECIT
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnEnter = txtICMEnter
            OnExit = txtICMExit
          end
          object txtIPI: TwwDBEdit
            Left = 292
            Top = 90
            Width = 41
            Height = 25
            DataField = 'IPI'
            DataSource = DS_RECIT
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnEnter = txtICMEnter
            OnExit = txtICMExit
          end
          object txtVTot: TwwDBEdit
            Left = 669
            Top = 90
            Width = 88
            Height = 25
            DataField = 'Vl_Total'
            DataSource = DS_RECIT
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            TabOrder = 10
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnEnter = txtICMEnter
            OnExit = txtICMExit
          end
          object txtVIPI: TwwDBEdit
            Left = 379
            Top = 90
            Width = 84
            Height = 25
            DataField = 'Vl_IPI'
            DataSource = DS_RECIT
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            TabOrder = 8
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnEnter = txtICMEnter
            OnExit = txtICMExit
          end
          object txtVICM: TwwDBEdit
            Left = 174
            Top = 90
            Width = 84
            Height = 25
            DataField = 'Vl_ICMS'
            DataSource = DS_RECIT
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnEnter = txtICMEnter
            OnExit = txtICMExit
          end
          object btnEliminaItem: TBitBtn
            Left = 8
            Top = 320
            Width = 121
            Height = 33
            Hint = 'Elimina o item selecionado da lista'
            Caption = 'Elimina Item'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 14
            OnClick = btnEliminaItemClick
            Glyph.Data = {
              F6060000424DF606000000000000360000002800000018000000180000000100
              180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
              FF00FF92635DA46769A46769A46769A46769A46769A46769A46769A46769A467
              69A46769A46769A46769A46769A46769A46769A46769A46769A46769FF00FFFF
              00FFFF00FFFF00FFFF00FF93655EF2D9B0F2D7ABF0D4A9F0D1A5EFD1A1F0CF9E
              EFCE9CEFCB98EECA95EDC992EDC78FEDC68EEDC58BEBC488EBC286EBC184EBC0
              829F6F60FF00FFFF00FFFF00FFFF00FFFF00FF93655FF3DAB5F2D8B0F2D7ADF2
              D5AAF0D3A5EFD1A3EFD09FEFCE9DEFCC99EFCB97EDCA93EEC991EDC68EEBC58B
              EBC489EBC287EBC2869F6F60FF00FFFF00FFFF00FFFF00FFFF00FF93655FF4DD
              BAF3DAB6008100008100F2D5AAF0D4A7811E00811E00811E00811E00811E0081
              1E00811E00811E00811E00EDC58AEDC4889F6F60FF00FFFF00FFFF00FFFF00FF
              FF00FF93655FF4E0BDF3DEBB008100008100F3D8B0F2D5ACF0D4A9F2D3A4F0D1
              A1EFCF9FEFCE9CEECC98EECA96EEC992EDC990EDC68CEDC58B9F6F60FF00FFFF
              00FFFF00FFFF00FFFF00FF654441A79A86A69882A6977FA5967EA5957BA59378
              A59276A59173A59072A48F6EA48E6CA38C6AA38B68A18A66A18965A18862A188
              606C4C41FF00FFFF00FFFF00FF00008200008200008200008200008200008200
              0082000082000082000082000082000082000082000082000082000082000082
              000082000082000082000082000082000082FF00FF000082FF00FF986963F7E6
              CCF7E5C9F6E2C5F6E1C1F4DEBFF4DDBAF3DCB6F3D9B2F2D7AFF2D5ABF0D4A9F0
              D3A4F0D0A1EFCF9EEFCE9AEFCB98EECB969F6F60FF00FF000082FF00FF000082
              FF00FF9E6E64F8E9D0F7E6CE000082000082F6E2C2F4E0BF0000820000820000
              82000082000082000082000082000082000082EFCE9CEECC999F6F60FF00FF00
              0082FF00FF000082FF00FFA37266FAEBD7F8EAD3000082000082F6E3C7F6E2C4
              F4E0C0F4DEBCF3DCB8F3DCB5F2D8B1F2D7ADF2D4AAF0D3A6F0D1A4F0D0A0EFCE
              9D9F6F60FF00FF000082FF00FF000082FF00FF724F46AAA195AAA092A99F90A9
              9E8EA99D8BA79A89A79A86A79983A79881A6977FA6967BA59379A59377A59175
              A59072A48F70A48F6D6C4C42FF00FF000082FF00FF0000820000820000820000
              8200008200008200008200008200008200008200008200008200008200008200
              0082000082000082000082000082000082000082000082000082FF00FFFF00FF
              FF00FFB17E6BFBF2E3FAF0E0FAEEDCF8EDD9F8EBD5F7E9D1F7E9CFF7E6CAF6E3
              C7F4E2C4F4E0C0F4DEBCF4DCB8F3DCB5F3D9B1F2D7ADF0D5AAA07264FF00FFFF
              00FFFF00FFFF00FFFF00FFB5806BFBF3E7FAF0E3008000008000F8EBD9F7EAD5
              811E00811E00811E00811E00811E00811E00811E00811E00811E00F3D9B2F3D8
              AFA07264FF00FFFF00FFFF00FFFF00FFFF00FFB47F6AF2EBE2F0EAE0007B0000
              7B00EFE5D5F0E3D3F0E5D1F6E7D1F6E7D0F7E6CEF7E5CAF6E3C6F6E1C2F4E0BF
              F3DEBBF4DCB6F3D9B4A07264FF00FFFF00FFFF00FFFF00FFFF00FFA0735DD3CF
              C9D1CEC7D1CCC4D1CBC0D1C9BFD4CBC0DDD4C2EBE1CEF6E9D3F8EAD3F7E7CEF7
              E6CBF6E3C6F6E1C4F6E0C0F4DEBCF3DDB8A07264FF00FFFF00FFFF00FFFF00FF
              FF00FF805B49A5A39EA5A19DA5A19CA4A098A49E97AAA499BFB6AADDD4C4F2E6
              D4F8EBD7F8EAD3F8E9D0F7E6CCF6E5C9F6E2C5F4E1C1F4E0BDA07264FF00FFFF
              00FF000082000082000082000082000082000082000082000082000082000082
              ABA59CD5CCC1F0E6D7F8EDD9FAEDD8F8EAD5F8E9D1F7E6CCF6E5CAF6E3C6F6E1
              C1A07264FF00FFFF00FF000082305DFF2450FF1641FF0931FF0123FF0019F700
              12E0010CC40000825814006E19007D1D00801E00811E00811E00811E00811E00
              811E00F7E6CAF6E3C6A07264FF00FFFF00FF000082315EFF2B58FF1E4AFF103A
              FF042BFF001FFF0016EF000FD4000082BFBBB4DEDAD0F3EDE0FBF2E3FBF0E1FA
              EFDDF8EDDAF8EBD7F8EAD3F7E9CFF7E6CBA07264FF00FFFF00FF000082000082
              000082000082000082000082000082000082000082000082E0DCD7EFEAE2FAF3
              E9FBF4E9FBF2E5FAF2E2FBEFE0FAEEDAF8EBD8F8EAD4F7E7D0A07264FF00FFFF
              00FFFF00FFFF00FFFF00FFD49875FFFFFFFFFFFFFEFEFEFFFCFBFEFCF8FEFBF7
              F6F2EDFAF6EFFBF6EEFCF6EDFCF4E9FBF2E6FAF0E2FAEFE0FAEEDDFAEDD8F8EA
              D4A07264FF00FFFF00FFFF00FFFF00FFFF00FFCE8C67CE8C67CE8C67CE8C67CE
              8C67CE8C67CE8C67CF8E68CF8E68CF8E68CF8E68CF8E68CF8E68CF8E68CF8E68
              CF8E68CF8E68CF8E68CF8E68FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          end
          object chkProd: TCheckBox
            Left = 669
            Top = 19
            Width = 137
            Height = 17
            Caption = 'Produto sem Cadastro'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnClick = chkProdClick
          end
          object edtMAterial: TEdit
            Left = 67
            Top = 15
            Width = 537
            Height = 26
            TabOrder = 1
            Visible = False
          end
          object btnGetMaterial: TBitBtn
            Left = 619
            Top = 13
            Width = 32
            Height = 28
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 18
            OnClick = btnGetMaterialClick
            Glyph.Data = {
              76060000424D7606000000000000360400002800000018000000180000000100
              08000000000040020000E30E0000E30E00000001000000010000212121000018
              290029292900393939005A39390042424200181852005252520073635200315A
              5A005A5A5A0094735A000039630063636300736B63004A6B6B006B6B6B007B73
              6B00735A73007373730073737B007B7B7B0094847B00A5847B00BD9C7B006384
              84008C8C8C009C948C00AD948C0094949400A59C940084849C009C9C9C00B5AD
              9C00CEBD9C00849CA500A5A5A5009494AD00ADADAD00D6BDAD00FFE7AD00B59C
              B500E7CEB500BDBDBD00D6C6BD009CADC600ADC6C600C6C6C600EFD6C600C6C6
              CE00CECECE00FFDECE00D6D6D600F7E7D600DEDEDE00EFE7DE00D6DEE700DEE7
              E700E7E7E700EFE7E700F7EFE700DEE7EF00EFEFEF00F7F7F700FFF7F700FFFF
              F700FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
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
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00424242424242
              4242424242424242424242424242424242424242424242424242424242424242
              4242424242424242424242424242424242424242424242424224000A42424242
              42424242424242424242424242424242240210101A4242424242424242424242
              424242424242422002152B241A4242424242424242424242424242424242420A
              0A2B2B1A42424242424242424242424242420D1A1A4242030A1D1A4242424242
              42424242424242424202110B080300241A2042424242424242424242201F1F20
              07223335271B0705201F1F1F241F1F2B42424242010101020E241B1B1B201B03
              010101010101010142424242090A1E07222B1C17182C2A0D060109141A1E0A04
              424242420919370A2A2C2C2C2C2C2A1613201D262F37191242424242091F4313
              22283C3E412A2A152636434343432509424242421F09432B1B28333C352A211A
              4343413F43430F1F4242424223094340241D2A302A211A3E3F3E3E3E40430929
              42424242230C433F3E2F24202020243F3E3E3E3E3E430929424242422E06413E
              3A3A3A3A3E24243E3A3A3A3A3E410629424242422E063F3A3636363A3A24243A
              3A3636363A3F0629424242422E0C2D322F2F2F2F322020322F2F2F2F322F0C2B
              42424242422E24242B2B2B2B2B20202B2B2B2B2B24242B424242424242424242
              2B242424242020242424242B4242424242424242424242424242424242424242
              4242424242424242424242424242424242424242424242424242424242424242
              4242424242424242424242424242424242424242424242424242}
          end
        end
        object wwDBEdit14: TwwDBEdit
          Left = 73
          Top = 24
          Width = 94
          Height = 26
          BiDiMode = bdRightToLeft
          ParentBiDiMode = False
          DataField = 'Rec_ID'
          DataSource = DS_REC
          Enabled = False
          TabOrder = 0
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBEdit15: TwwDBEdit
          Left = 207
          Top = 24
          Width = 94
          Height = 26
          BiDiMode = bdRightToLeft
          ParentBiDiMode = False
          DataField = 'NFIS'
          DataSource = DS_REC
          Enabled = False
          TabOrder = 1
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnEnter = txtNFEnter
          OnExit = txtNFExit
        end
        object wwDBEdit16: TwwDBEdit
          Left = 328
          Top = 24
          Width = 39
          Height = 26
          BiDiMode = bdRightToLeft
          CharCase = ecUpperCase
          ParentBiDiMode = False
          DataField = 'Serie'
          DataSource = DS_REC
          Enabled = False
          TabOrder = 2
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnEnter = wwDBEdit2Enter
          OnExit = wwDBEdit2Exit
        end
        object wwDBLookupCombo3: TwwDBLookupCombo
          Left = 370
          Top = 24
          Width = 392
          Height = 26
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'FOR_RAZA'#9'50'#9'FOR_RAZA'#9'F'#9
            'FOR_CGC'#9'15'#9'FOR_CGC'#9'F'#9)
          DataField = 'FOR_CODI'
          DataSource = DS_REC
          LookupTable = Q_FORN
          LookupField = 'FOR_CODI'
          Enabled = False
          TabOrder = 3
          AutoDropDown = True
          ShowButton = True
          PreciseEditRegion = False
          AllowClearKey = False
          OnEnter = cboDivEnter
          OnExit = cboDivExit
        end
      end
    end
    object TTabPage
      Left = 4
      Top = 30
      Caption = '    &Vencimentos    '
      object Panel3: TPanel
        Left = -1
        Top = 10
        Width = 1010
        Height = 487
        BevelInner = bvLowered
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label24: TLabel
          Left = 54
          Top = 34
          Width = 58
          Height = 18
          Caption = 'Num. Rec.'
          Color = clBtnHighlight
          Enabled = False
          ParentColor = False
          Transparent = True
        end
        object Label25: TLabel
          Left = 162
          Top = 34
          Width = 57
          Height = 18
          Caption = 'Num. N.F.'
          Color = clBtnHighlight
          Enabled = False
          ParentColor = False
          Transparent = True
        end
        object Label26: TLabel
          Left = 289
          Top = 34
          Width = 33
          Height = 18
          Caption = 'Série'
          Color = clBtnHighlight
          Enabled = False
          ParentColor = False
          Transparent = True
        end
        object Label27: TLabel
          Left = 325
          Top = 34
          Width = 70
          Height = 18
          Caption = 'Fornecedor'
          Color = clBtnHighlight
          Enabled = False
          ParentColor = False
          Transparent = True
        end
        object SpeedButton3: TSpeedButton
          Left = 339
          Top = 329
          Width = 198
          Height = 53
          Hint = 'Apagar'
          Caption = 'Gerar Contas a Pagar'
          Glyph.Data = {
            360C0000424D360C000000000000360000002800000020000000200000000100
            180000000000000C0000EB0A0000EB0A00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
            CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
            CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFE1D0C6B59C8DB59C8DB59C8DB59C8DB59C8DB59C
            8DB59C8DB59C8DB59C8DB59C8DB59C8DB59C8DB59C8DB59C8DB59C8DB59C8DB5
            9C8DB59C8DB59C8DB59C8DB59C8DB59C8DCCCCCCFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFE1D0C6FEF5EEFEFEFEFEFAF9FCF6F2FCF6F2FBF5
            F1FBF4F0FAF2EEFAF2EEF9F1ECF8F0EBF7EFEAF6EDE8F5EBE5F4EAE5F2E8E2F2
            E7E0F1E5DFF1E5DFF0E4DEF4E5DDB59C8DCCCCCCFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFE1D0C6FEF8F4FEFEFEFEFAF9FCF6F2FCF6F2FBF5
            F1FBF4F0FAF2EEFAF2EEF9F1ECF8F0EBF7EFEAF6EDE8F5EBE5F4EAE5F2E8E2F2
            E7E0F1E5DFF1E5DFF0E4DEF4E5DDB59C8DCCCCCCFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFE1D0C6FEF8F4FEFEFEFEFAF9FCF6F2FCF6F2FBF5
            F1FBF4F0FAF2EEFAF2EEF9F1ECF8F0EBF7EFEAF6EDE8F5EBE5F4EAE5F2E8E2F2
            E7E0F1E5DFF1E5DFF0E4DEF4E5DDB59C8DCCCCCCFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFE1D0C6FEF8F4FEFEFEFEFEFCD1BDB1FCF6F2FBF5
            F1FBF4F0FAF2EED1BDB1F8F0ECF8F0EBF7EFEAF6EDE8D1BDB1F4EAE5F2E9E3F2
            E8E2F1E6E0D1BDB1F0E5DEF3E5DDB59C8DCCCCCCFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFE1D0C6FEF8F4FEFEFE9C8271FEF9F6D1BDB1FCF6
            F2FBF5F19C8271FAF2EED1BDB1F8F0EBF7EFEA9C8271F5ECE6D1BDB1F2E9E3F2
            E8E29C8271F1E5DFD1BDB1F2E5DCB59C8DCCCCCCFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFE1D0C65F965B005B002C752A927F69FCF6F2FCF6
            F2FBF5F1EEE6E29C8271F9F1EDF8F0EBF7EFEAEEE6E29C8271F4EAE5F2E9E3F2
            E8E2EEE6E29C8271F1E5DFF3E5DDB59C8DCCCCCCFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFF54874A006A0000A5000079002F782EEDECE3FCF6
            F2FAF5F0FAF4F0FAF2EEF9F1EDF9F1ECF7EFEAF7EEE9F6ECE7F4EAE5F4E9E4F2
            E8E2F2E7E0F0E5DEF1E5DFF3E5DDB59C8DCCCCCCFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF609960006D0000B00000B60000B600007E002F782DECEC
            E2FBF5F1FAF3EFFAF2EEF9F1EDF8F0ECF7EFEAF6EDE8F5ECE6F4EAE5F2E9E3F2
            E8E2F1E6E0F1E5DFF1E5DEF2E5DCB59C8DCCCCCCFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF5F995F00700000BB0000C20000C20000C20000C2000083002F7A
            2DECECE2FAF3EFD1BDB1F9F1ECF8F0EBF7EFEAF6EEE9F5EBE6F4E9E5F2E8E2F2
            E7E0F2E6E0D1BDB1F0E3DCF2E5DCB59C8DCCCCCCFFFFFFFFFFFFFFFFFFFFFFFF
            FEFEFE5E9D5E00780000C70000CE0000CE0000CE0000CE0000CE0000CE00008C
            002F802D928069FAF2EED1BDB1F8EFEAF6EEE9F6EDE6F4EAE5F3E9E4F3E8E2F2
            E7E09C8271F0E4DDD1BDB1F2E4DBB59C8DCCCCCCFFFFFFFFFFFFFFFFFFFBFBFB
            5B9F5B00800000D30000DA0000DA0000DA0000DA0000DA0000DA0000DA0000DA
            000095005999559C8271F8F0EBF7EEE9F6EDE8F5EBE6F4E9E4F3E9E3F2E7E1F2
            E6E0EEE6E29C8271EFE3DCF1E2DAB59C8DCCCCCCFFFFFFFFFFFFFFFFFF579F57
            00890000DE0000E60000E60000E60000E60000E60000E60000E60000E60000E6
            0000E600009E005DA258F6EEE9F6EEE9F5ECE7F4EAE5F3E9E3F2E6E0F1E6E0F1
            E5DFF0E3DCEEE2DBEEE2DBF0E1D9B59C8DCCCCCCFFFFFFFFFFFFFFFFFF007A00
            00CC0000D30000D30000F10000EE0000EE0000F20000F20000F20000F20000D3
            0000D30000D300008100F6EEE8F6ECE7F4EBE5F3E9E3F2E7E0F1E5DFF1E5DEEE
            E2DBEEE2DBEEE1DAEDE0D8EFE0D7B59C8DCCCCCCFFFFFFFFFFFFFFFFFF70B870
            40A04040A04000810003FB0300F40000F40000F50001FB0104FD0404FD040081
            003F9F3F3F9E3D5B9A4DF5EBE6F4E9E4F2E8E2F2E8E1D1BDB1F0E5DEEEE2DBEE
            E1DBEDE0D9D1BDB1EBDED6EEDDD4B59C8DCCCCCCFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF00880023FF2301FE0101FE0101FE0101FE0113FF132FFF2F0088
            00FEFEFB9C8271FEFAF6D1BDB1F4EAE5F2E7E09C8271EFE3DCD1BDB1EDE0D9ED
            DFD79C8271EADBD3D1BDB1ECDBD1B59C8DCCCCCCFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF008F0059FF593CFF3C3CFF3C3CFF3C3CFF3C3CFF3C59FF59008F
            00FEFEFDEEE6E29C8271FEF7F4F9F1EDF4E9E5EEE6E29C8271EDE0D8EBDDD6EA
            DCD4EEE6E29C8271E8D9D0EAD8CEB59C8DCCCCCCFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF00970096FF9696FF9696FF9696FF9696FF9696FF9696FF960097
            00FEFEFEFEFEFEFEFEFDFEFDFAFEF8F5FAF2EEF5EAE5EEE1DAEBDDD5E9DBD2E8
            D9D0E7D7CEE5D6CCE5D6CCE7D4C9B59C8DCCCCCCFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF009E00D3FFD3E9FFE9E9FFE9E9FFE9E9FFE9E9FFE9D3FFD3009E
            00FEFEFEFEFEFEFEFEFDFEFDFAFEFAF8FEF8F5FAF2EEF4EAE5ECDFD8E8D8D0E5
            D6CCE5D3CAE3D1C8E2D1C7E4D0C5B59C8DCCCCCCFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF10AD1999E0A0BDEBC2BEEBC3BEEBC3BEEBC3BDEBC2A9E5AF0FAC
            19FEFEFEFEFEFED1BDB1FEFCFAFEF9F6FDF6F2FAF2EDF7EEE9F3E9E3E9DCD4E4
            D2C8E2D1C6E1CFC4E0CDC3E1CCC0B59C8DCCCCCCFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF38C45006B34806B34806B34806B34806B34806B34806B34837C3
            4FFEFEFE9C8271FEFEFCD1BDB1FEF9F6FCF5F1F9F2EDF6EDE7F2E8E1EFE3DCE5
            D5CCDFCBC0DDCABEDCC7BCDDC6B9B59C8DCCCCCCFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFE1D0C6FEF8F4FEFEFEEEE6E29C8271FEFEFEFEFE
            FEFEFEFEEEE6E29C8271FEFBF9FEF8F5FBF4F1F8EFEBF6EBE6F2E8E1F0E5DEEB
            DDD6E0CEC3DBC6BADAC5B8D9C0B3B59C8DCCCCCCFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFE1D0C6FEF8F4FEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFCFEFBF8FDF7F4FBF3F0F7EFEAF4E9E4E3D3C9C6AE9FC6
            AE9FC6AE9FC6AE9FC6AE9FC6AE9FC6AE9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFE1D0C6FEF8F4FEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFDFEFDFAFEFAF8FDF6F4FAF2EEF6EDE8F2E6E0DECCC0F3EEEDF2
            ECE7F0E6E0EADED6EBDAD0C2B1A5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFE1D0C6FEF8F4FEFEFEFEFEFED1BDB1FEFEFEFEFE
            FEFEFEFEFEFEFDD1BDB1FEF9F6FDF6F2F9F2EDF5EBE6EFE3DCE1D1C7FEFEFEFE
            F8F5F5ECE7F3E5DBC5B6ACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFE1D0C6FEF8F4FEFEFE9C8271FEFEFED1BDB1FEFE
            FEFEFEFE9C8271FEFBF9D1BDB1FBF4F1F8F0EBF4E9E5EEE1DAE2D0C6FEF9F6F3
            E9E4F2E1D9C5B5AAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFE1D0C6FEF8F4FEFEFEEEE6E29C8271FEFEFEFEFE
            FEFEFEFEEEE6E29C8271FEF6F3FAF2EEF6EEE8F2E8E2ECDFD7E1CEC4F8EFEAF2
            E3DAC3B4ABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFE1D0C6FEF8F4FEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFDFAFEFAF6FCF5F1F8F0ECF5EBE5F0E5DEEADCD4E0CCC1FAEEE6C3
            B3ABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFE1D0C6FEF7F3FEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFDFAFEF8F6FAF2EEF6EDE8F2E6E0ECDED6E5D0C4C5B7AFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFE1D0C6E1D0C6E1D0C6E1D0C6E1D0C6E1D0C6E1D0
            C6E1D0C6E1D0C6E1D0C6E1D0C6E1D0C6E1D0C6E1D0C6E1D0C6C8B7ADFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          ParentShowHint = False
          ShowHint = True
          Spacing = 10
          OnClick = SpeedButton3Click
        end
        object GroupBox4: TGroupBox
          Left = 53
          Top = 96
          Width = 268
          Height = 285
          Caption = 'Vencimentos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          object wwDBGrid1: TwwDBGrid
            Left = 14
            Top = 29
            Width = 241
            Height = 231
            TabStop = False
            Selected.Strings = (
              'Dt_Vcto'#9'13'#9'Data'
              'Valor'#9'15'#9'Valor')
            IniAttributes.FileName = 'delphi32.ini'
            IniAttributes.SectionName = 'FPcPwwDBGrid3'
            IniAttributes.Delimiter = ';;'
            TitleColor = clLime
            FixedCols = 0
            ShowHorzScrollBar = True
            Color = clInfoBk
            DataSource = DS_RVCT
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -12
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            KeyOptions = [dgEnterToTab]
            ParentFont = False
            RowHeightPercent = 120
            TabOrder = 0
            TitleAlignment = taLeftJustify
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clBlue
            TitleFont.Height = -12
            TitleFont.Name = 'Comic Sans MS'
            TitleFont.Style = []
            TitleLines = 1
            TitleButtons = False
          end
        end
        object wwDBEdit17: TwwDBEdit
          Left = 54
          Top = 53
          Width = 94
          Height = 26
          BiDiMode = bdRightToLeft
          ParentBiDiMode = False
          DataField = 'Rec_ID'
          DataSource = DS_REC
          Enabled = False
          TabOrder = 0
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBEdit18: TwwDBEdit
          Left = 162
          Top = 53
          Width = 94
          Height = 26
          BiDiMode = bdRightToLeft
          ParentBiDiMode = False
          DataField = 'NFIS'
          DataSource = DS_REC
          Enabled = False
          TabOrder = 1
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnEnter = txtNFEnter
          OnExit = txtNFExit
        end
        object wwDBEdit19: TwwDBEdit
          Left = 283
          Top = 53
          Width = 39
          Height = 26
          BiDiMode = bdRightToLeft
          CharCase = ecUpperCase
          ParentBiDiMode = False
          DataField = 'Serie'
          DataSource = DS_REC
          Enabled = False
          TabOrder = 2
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnEnter = wwDBEdit2Enter
          OnExit = wwDBEdit2Exit
        end
        object wwDBLookupCombo4: TwwDBLookupCombo
          Left = 325
          Top = 53
          Width = 392
          Height = 26
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'FOR_RAZA'#9'50'#9'FOR_RAZA'#9'F')
          DataField = 'FOR_CODI'
          DataSource = DS_REC
          LookupTable = Q_FORN
          LookupField = 'FOR_CODI'
          Enabled = False
          TabOrder = 3
          AutoDropDown = True
          ShowButton = True
          PreciseEditRegion = False
          AllowClearKey = False
          OnEnter = cboDivEnter
          OnExit = cboDivExit
        end
      end
    end
    object TTabPage
      Left = 4
      Top = 30
      Caption = '     Verificação de Recebimento    '
      object Label51: TLabel
        Left = 25
        Top = 85
        Width = 275
        Height = 17
        Caption = 'Cumprimento de horário padrão para recebimento: '
      end
      object Label52: TLabel
        Left = 155
        Top = 170
        Width = 142
        Height = 17
        Caption = 'Temperatura do Material:'
      end
      object Label53: TLabel
        Left = 107
        Top = 113
        Width = 192
        Height = 17
        Caption = 'Condições das caixas de embarque: '
      end
      object Label54: TLabel
        Left = 68
        Top = 141
        Width = 231
        Height = 17
        Caption = 'Conferir número do lote quando aplicável: '
      end
      object Label55: TLabel
        Left = 115
        Top = 198
        Width = 181
        Height = 17
        Caption = 'Registro no Ministério da Saúde:'
      end
      object Label56: TLabel
        Left = 220
        Top = 373
        Width = 74
        Height = 17
        Caption = 'Observações:'
      end
      object Label57: TLabel
        Left = 474
        Top = 166
        Width = 7
        Height = 23
        Caption = '°'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object Label58: TLabel
        Left = 228
        Top = 250
        Width = 66
        Height = 17
        Caption = 'Ocorrência:'
      end
      object Label59: TLabel
        Left = 220
        Top = 282
        Width = 75
        Height = 17
        Caption = 'Consequência:'
      end
      object Label60: TLabel
        Left = 206
        Top = 314
        Width = 87
        Height = 17
        Caption = 'Ação Corretiva:'
      end
      object Label61: TLabel
        Left = 223
        Top = 346
        Width = 69
        Height = 17
        Caption = 'Responsável:'
      end
      object GroupBox5: TGroupBox
        Left = 8
        Top = 0
        Width = 769
        Height = 76
        Caption = 'Confere com Ordem de compra: (Quantidade, lote e validade)'
        TabOrder = 0
        object Label28: TLabel
          Left = 16
          Top = 24
          Width = 63
          Height = 17
          Caption = 'Quantidade'
        end
        object Label49: TLabel
          Left = 160
          Top = 24
          Width = 46
          Height = 17
          Caption = 'Validade'
        end
        object Label50: TLabel
          Left = 296
          Top = 24
          Width = 25
          Height = 17
          Caption = 'Lote'
        end
        object wwDBComboBox2: TwwDBComboBox
          Left = 16
          Top = 40
          Width = 121
          Height = 25
          ShowButton = True
          Style = csDropDown
          MapList = True
          AllowClearKey = False
          DataField = 'CONFERE_QTDE'
          DataSource = DS_REC
          DropDownCount = 8
          ItemHeight = 0
          Items.Strings = (
            'Conforme'#9'C'
            'Não Conforme'#9'N')
          Sorted = False
          TabOrder = 0
          UnboundDataType = wwDefault
        end
        object wwDBComboBox3: TwwDBComboBox
          Left = 160
          Top = 40
          Width = 121
          Height = 25
          ShowButton = True
          Style = csDropDown
          MapList = True
          AllowClearKey = False
          DataField = 'CONFERE_VALIDADE'
          DataSource = DS_REC
          DropDownCount = 8
          ItemHeight = 0
          Items.Strings = (
            'Conforme'#9'C'
            'Não Conforme'#9'N')
          Sorted = False
          TabOrder = 1
          UnboundDataType = wwDefault
        end
        object wwDBComboBox4: TwwDBComboBox
          Left = 296
          Top = 40
          Width = 121
          Height = 25
          ShowButton = True
          Style = csDropDown
          MapList = True
          AllowClearKey = False
          DataField = 'CONFERE_LOTE'
          DataSource = DS_REC
          DropDownCount = 8
          ItemHeight = 0
          Items.Strings = (
            'Conforme'#9'C'
            'Não Conforme'#9'N')
          Sorted = False
          TabOrder = 2
          UnboundDataType = wwDefault
        end
      end
      object wwDBComboBox5: TwwDBComboBox
        Left = 300
        Top = 82
        Width = 121
        Height = 25
        ShowButton = True
        Style = csDropDown
        MapList = True
        AllowClearKey = False
        DataField = 'CONFERE_HORARIO'
        DataSource = DS_REC
        DropDownCount = 8
        ItemHeight = 0
        Items.Strings = (
          'Sim'#9'S'
          'Não'#9'N')
        Sorted = False
        TabOrder = 1
        UnboundDataType = wwDefault
      end
      object wwDBComboBox6: TwwDBComboBox
        Left = 299
        Top = 167
        Width = 121
        Height = 25
        ShowButton = True
        Style = csDropDown
        MapList = True
        AllowClearKey = False
        DataField = 'CONFERE_TEMPERATURA'
        DataSource = DS_REC
        DropDownCount = 8
        ItemHeight = 0
        Items.Strings = (
          'Conforme'#9'C'
          'Não Conforme'#9'N')
        Sorted = False
        TabOrder = 2
        UnboundDataType = wwDefault
      end
      object wwDBComboBox7: TwwDBComboBox
        Left = 300
        Top = 111
        Width = 121
        Height = 25
        ShowButton = True
        Style = csDropDown
        MapList = True
        AllowClearKey = False
        DataField = 'CONFERE_CONDICAO'
        DataSource = DS_REC
        DropDownCount = 8
        ItemHeight = 0
        Items.Strings = (
          'Satisfatória'#9'S'
          'Insatisfatória'#9'I')
        Sorted = False
        TabOrder = 3
        UnboundDataType = wwDefault
      end
      object DBEdit1: TDBEdit
        Left = 299
        Top = 139
        Width = 310
        Height = 25
        DataField = 'CONFERE_NUMERO_LOTE'
        DataSource = DS_REC
        TabOrder = 4
      end
      object wwDBComboBox8: TwwDBComboBox
        Left = 299
        Top = 195
        Width = 121
        Height = 25
        ShowButton = True
        Style = csDropDown
        MapList = True
        AllowClearKey = False
        DataField = 'CONFERE_REGISTRO'
        DataSource = DS_REC
        DropDownCount = 8
        ItemHeight = 0
        Items.Strings = (
          'Conforme'#9'C'
          'Não Conforme'#9'N')
        Sorted = False
        TabOrder = 5
        UnboundDataType = wwDefault
      end
      object DBMemo1: TDBMemo
        Left = 300
        Top = 372
        Width = 309
        Height = 58
        DataField = 'CONFERE_OBS'
        DataSource = DS_REC
        TabOrder = 6
      end
      object Button2: TButton
        Left = 620
        Top = 404
        Width = 153
        Height = 25
        Caption = 'Imprimir'
        TabOrder = 7
        OnClick = Button2Click
      end
      object DBEdit2: TDBEdit
        Left = 425
        Top = 166
        Width = 49
        Height = 25
        DataField = 'CONFERE_GRAUS'
        DataSource = DS_REC
        TabOrder = 8
      end
      object DBCheckBox1: TDBCheckBox
        Left = 300
        Top = 226
        Width = 377
        Height = 17
        Caption = 'A entrega apresentou não conformidade'
        DataField = 'CONFERE_NC'
        DataSource = DS_REC
        TabOrder = 9
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBEdit3: TDBEdit
        Left = 299
        Top = 247
        Width = 310
        Height = 25
        DataField = 'CONFERE_OCORRENCIA'
        DataSource = DS_REC
        TabOrder = 10
      end
      object DBEdit5: TDBEdit
        Left = 299
        Top = 311
        Width = 310
        Height = 25
        DataField = 'CONFERE_ACAO'
        DataSource = DS_REC
        TabOrder = 12
      end
      object DBEdit6: TDBEdit
        Left = 299
        Top = 343
        Width = 310
        Height = 25
        DataField = 'CONFERE_RESPONSAVEL'
        DataSource = DS_REC
        TabOrder = 13
      end
      object Button1: TButton
        Left = 620
        Top = 377
        Width = 153
        Height = 25
        Caption = 'Salvar Informações'
        TabOrder = 14
        OnClick = Button1Click
      end
      object wwDBLookupCombo6: TwwDBLookupCombo
        Left = 298
        Top = 280
        Width = 312
        Height = 25
        DropDownAlignment = taLeftJustify
        DataField = 'CONFERE_CONSEQUENCIA'
        DataSource = DS_REC
        LookupTable = qrConseq
        LookupField = 'CONSEQUENCIA'
        Style = csDropDownList
        TabOrder = 11
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 1020
    Height = 52
    Align = alTop
    Alignment = taLeftJustify
    BevelInner = bvLowered
    TabOrder = 0
    object DBNx: TDBNavigator
      Left = 740
      Top = 5
      Width = 116
      Height = 44
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Flat = True
      Hints.Strings = (
        'Primeiro Registro'
        'Registro Anterior'
        'Próximo Registro'
        'Último Registro'
        'Insert record'
        'Delete record'
        'Edit record'
        'Post edit'
        'Cancel edit'
        'Refresh data')
      TabOrder = 1
      Visible = False
    end
    object DBN: TwwDBNavigator
      Left = 8
      Top = 4
      Width = 545
      Height = 43
      AutosizeStyle = asSizeNavButtons
      DataSource = DS_REC
      Flat = False
      ImageList = ImageList1
      RepeatInterval.InitialDelay = 500
      RepeatInterval.Interval = 100
      object fonteFirst: TwwNavButton
        Left = 0
        Top = 0
        Width = 61
        Height = 43
        Hint = 'Move to first record'
        ImageIndex = 9
        NumGlyphs = 1
        ShowText = True
        Spacing = 4
        Transparent = False
        Caption = 'Primeiro'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 0
        Style = nbsFirst
      end
      object fontePrior: TwwNavButton
        Left = 61
        Top = 0
        Width = 61
        Height = 43
        Hint = 'Move to prior record'
        ImageIndex = 8
        NumGlyphs = 1
        ShowText = True
        Spacing = 4
        Transparent = False
        Caption = 'Anterior'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 1
        Style = nbsPrior
      end
      object fonteNext: TwwNavButton
        Left = 122
        Top = 0
        Width = 61
        Height = 43
        Hint = 'Move to next record'
        ImageIndex = 11
        NumGlyphs = 1
        ShowText = True
        Spacing = 4
        Transparent = False
        Caption = 'Próximo'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 2
        Style = nbsNext
      end
      object fonteLast: TwwNavButton
        Left = 183
        Top = 0
        Width = 61
        Height = 43
        Hint = 'Move to last record'
        ImageIndex = 10
        NumGlyphs = 1
        ShowText = True
        Spacing = 4
        Transparent = False
        Caption = 'Último'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 3
        Style = nbsLast
      end
      object fonteInsert: TwwNavButton
        Left = 244
        Top = 0
        Width = 61
        Height = 43
        Hint = 'Insert new record'
        ImageIndex = 2
        NumGlyphs = 1
        ShowText = True
        Spacing = 4
        Transparent = False
        Caption = 'Novo'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        OnClick = fonteInsertClick
        Index = 4
        Style = nbsInsert
      end
      object fonteDelete: TwwNavButton
        Left = 305
        Top = 0
        Width = 60
        Height = 43
        Hint = 'Delete current record'
        ImageIndex = 7
        NumGlyphs = 1
        ShowText = True
        Spacing = 4
        Transparent = False
        Caption = 'Apagar'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        OnClick = fonteDeleteClick
        Index = 5
        Style = nbsCustom
      end
      object fonteEdit: TwwNavButton
        Left = 365
        Top = 0
        Width = 60
        Height = 43
        Hint = 'Edit current record'
        ImageIndex = 4
        NumGlyphs = 1
        ShowText = True
        Spacing = 4
        Transparent = False
        Caption = 'Editar'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 6
        Style = nbsEdit
      end
      object fontePost: TwwNavButton
        Left = 425
        Top = 0
        Width = 60
        Height = 43
        Hint = 'Post changes of current record'
        ImageIndex = 3
        NumGlyphs = 1
        ShowText = True
        Spacing = 4
        Transparent = False
        Caption = 'Salvar'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        OnClick = fontePostClick
        Index = 7
        Style = nbsPost
      end
      object fonteCancel: TwwNavButton
        Left = 485
        Top = 0
        Width = 60
        Height = 43
        Hint = 'Cancel changes made to current record'
        ImageIndex = 6
        NumGlyphs = 1
        ShowText = True
        Spacing = 4
        Transparent = False
        Caption = 'Cancelar'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 8
        Style = nbsCancel
      end
    end
    object Button3: TButton
      Left = 560
      Top = 5
      Width = 153
      Height = 42
      Caption = 'Gerar Nota Devolução'
      TabOrder = 2
      OnClick = Button3Click
    end
  end
  object Q_COND: TwwQuery
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'SELECT'#9#9'COND_PGTO_ID,'
      #9#9'DESCRICAO'
      'FROM'#9#9'CONDICAO_PAGTO')
    ValidateWithMask = True
    Left = 256
    Top = 544
    object Q_CONDDescricao: TStringField
      DisplayWidth = 30
      FieldName = 'Descricao'
      Origin = 'BANCODADOS.Condicao_Pagto.Descricao'
      FixedChar = True
      Size = 30
    end
    object Q_CONDCond_Pgto_ID: TAutoIncField
      FieldName = 'Cond_Pgto_ID'
      Origin = 'BANCODADOS.Condicao_Pagto.Cond_Pgto_ID'
      Visible = False
    end
  end
  object Q_CFO: TwwQuery
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'SELECT'#9#9'CFA_CODI,'
      #9#9'CFA_SEQU,'
      #9#9'CFA_DCFO,'
      #9#9'CFA_DCCF'
      'FROM'#9#9'SIACFAT'
      'ORDER BY'#9'CFA_CODI,'
      #9#9'CFA_DCFO,'
      #9#9'CFA_DCCF')
    ValidateWithMask = True
    Left = 1180
    Top = 120
    object Q_CFODSCFO: TStringField
      DisplayWidth = 120
      FieldKind = fkLookup
      FieldName = 'DSCFO'
      LookupDataSet = Q_DSCFO
      LookupKeyFields = 'CFA_SEQU'
      LookupResultField = 'DSCFO'
      KeyFields = 'CFA_SEQU'
      Size = 120
      Lookup = True
    end
    object Q_CFOCFA_CODI: TStringField
      DisplayWidth = 4
      FieldName = 'CFA_CODI'
      Origin = 'BANCODADOS.SIACFAT.CFA_CODI'
      Visible = False
      FixedChar = True
      Size = 4
    end
    object Q_CFOCFA_DCFO: TStringField
      DisplayWidth = 30
      FieldName = 'CFA_DCFO'
      Origin = 'BANCODADOS.SIACFAT.CFA_DCFO'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object Q_CFOCFA_DCCF: TStringField
      DisplayWidth = 30
      FieldName = 'CFA_DCCF'
      Origin = 'BANCODADOS.SIACFAT.CFA_DCCF'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object Q_CFOCFA_SEQU: TAutoIncField
      FieldName = 'CFA_SEQU'
      Origin = 'BANCODADOS.SIACFAT.CFA_SEQU'
      Visible = False
    end
  end
  object Q_FORN: TwwQuery
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'SELECT FOR_CODI, FOR_RAZA, FOR_CGC'
      'FROM CPAFORN'
      'WHERE F_ALMOX = '#39'S'#39
      'ORDER BY FOR_RAZA'
      '')
    ValidateWithMask = True
    Left = 850
    Top = 184
    object Q_FORNFOR_RAZA: TStringField
      DisplayWidth = 50
      FieldName = 'FOR_RAZA'
      Origin = 'CURA.CPAFORN.FOR_RAZA'
      FixedChar = True
      Size = 50
    end
    object Q_FORNFOR_CGC: TStringField
      DisplayWidth = 15
      FieldName = 'FOR_CGC'
      Origin = 'CURA.CPAFORN.FOR_CGC'
      FixedChar = True
      Size = 15
    end
    object Q_FORNFOR_CODI: TStringField
      FieldName = 'FOR_CODI'
      Origin = 'CURA.CPAFORN.FOR_CODI'
      Visible = False
      FixedChar = True
      Size = 15
    end
  end
  object Q_LOC: TwwQuery
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'SELECT'#9#9'*'
      'FROM'#9#9'LOCAL'
      'WHERE CONTROLA_ESTOQUE = '#39'S'#39
      'ORDER BY'#9'DESCRICAO')
    ValidateWithMask = True
    Left = 1129
    Top = 120
    object Q_LOCLocal_ID: TAutoIncField
      FieldName = 'Local_ID'
      Origin = 'BANCODADOS.Local.Local_ID'
    end
    object Q_LOCDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'BANCODADOS.Local.Descricao'
      FixedChar = True
      Size = 50
    end
    object Q_LOCDisponivelSN: TStringField
      FieldName = 'DisponivelSN'
      Origin = 'BANCODADOS.Local.DisponivelSN'
      FixedChar = True
      Size = 1
    end
  end
  object Q_OC: TwwQuery
    CachedUpdates = True
    AfterOpen = Q_OCAfterScroll
    AfterPost = Q_OCAfterPost
    AfterScroll = Q_OCAfterScroll
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    DataSource = DS_REC
    RequestLive = True
    SQL.Strings = (
      'SELECT'#9#9'OCX.ALTERAR,'
      #9#9'OCX.ORD_ID,'
      #9#9'F.FOR_CODI'
      'FROM'#9#9'ORDEM_COMPRA OCX,'
      #9#9'CPAFORN F'
      'WHERE'#9#9'OCX.STATUS <> '#39'T'#39
      'AND             '#9'OCX.STATUS <> '#39'C'#39'  '
      'AND             '#9'F.FOR_CODI = OCX.FOR_CODI '
      'AND EXISTS     '#9'(SELECT'#9#9'1'
      #9#9'FROM'#9#9'ORDEM_COMPRAITEM OI,'
      #9#9#9#9'ORDEM_COMPRA     OC'
      #9#9'WHERE'#9#9'OC.ORD_ID = OI.ORD_ID'
      
        #9#9'AND'#9#9'(OI.QTDE_COMP - QTDE_COMP_REC > 0.001 OR (OI.QTDE_COMP IS' +
        ' NOT NULL AND OI.QTDE_COMP_REC IS NULL))'
      #9#9'AND'#9#9'OI.STATUS <> '#39'T'#39
      #9#9'AND'#9#9'OC.ORD_ID = OCX.ORD_ID'
      #9#9'AND'#9#9'OC.FOR_CODI = :FOR_CODI)')
    UpdateObject = UPD_OC
    ControlType.Strings = (
      'ALTERAR;CheckBox;S;')
    ValidateWithMask = True
    Left = 1075
    Top = 120
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'FOR_CODI'
        ParamType = ptUnknown
      end>
    object Q_OCALTERAR: TStringField
      DisplayLabel = '**'
      DisplayWidth = 1
      FieldName = 'ALTERAR'
      OnChange = Q_OCALTERARChange
      FixedChar = True
      Size = 1
    end
    object Q_OCFOR_CODI: TStringField
      DisplayLabel = 'Fornecedor'
      DisplayWidth = 10
      FieldName = 'FOR_CODI'
      FixedChar = True
      Size = 15
    end
    object Q_OCORD_ID: TAutoIncField
      DisplayLabel = 'N.O.C.'
      DisplayWidth = 10
      FieldName = 'ORD_ID'
    end
  end
  object Q_IOC: TwwQuery
    AutoCalcFields = False
    CachedUpdates = True
    AfterPost = Q_IOCAfterPost
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    DataSource = DS_OC
    RequestLive = True
    SQL.Strings = (
      'SELECT'#9#9'OI.ALTERAR,'
      
        #9#9'OI.QTDE_COMP - CASE WHEN OI.QTDE_COMP_REC IS NULL THEN 0 ELSE ' +
        'OI.QTDE_COMP_REC END QTDE_COMP ,'#9#9
      #9#9'OI.PRECO_UNIT,'
      #9#9'OI.VALOR,'
      #9#9'OI.UNI_COMP_ID,'
      #9#9'OI.QTDE,'
      #9#9'OI.QTDE_REC,'
      #9#9'OI.UNI_ESTQ_ID,'
      #9#9'OI.QTDE_COMP_REC,'
      #9#9'OI.MAT_ID,'
      #9#9'OI.IORD_ID,'
      #9#9'OI.ORD_ID,'
      #9#9'OI.QTDE_ESTQ_COMP,'
      #9#9'MM.MATMARCA_EMBALAGEM,'
      
        #9#9'CASE WHEN OI.GENERICO = '#39'S'#39' THEN OI.MAT_DESC ELSE MAT.MAT_DESC' +
        ' END AS MAT_DESC'
      'FROM'#9#9'ORDEM_COMPRAITEM OI,'
      #9#9'MATERIAL_MARCA MM,'
      #9#9'MATERIAIS MAT'
      'WHERE'#9#9'OI.REC_ID IS NULL'
      'AND'#9#9'OI.ORD_ID = :ORD_ID'
      'AND'#9#9'OI.MATMARCA_ID = MM.MATMARCA_ID'
      'AND                         OI.MAT_ID = MAT.MAT_ID')
    UpdateObject = UPD_IOC
    ControlType.Strings = (
      'ALTERAR;CheckBox;S;')
    ValidateWithMask = True
    Left = 945
    Top = 64
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'ORD_ID'
        ParamType = ptUnknown
      end>
    object Q_IOCALTERAR: TStringField
      DisplayLabel = '***'
      DisplayWidth = 2
      FieldName = 'ALTERAR'
      FixedChar = True
      Size = 1
    end
    object Q_IOCMAT_DESC: TStringField
      DisplayLabel = 'Material'
      DisplayWidth = 25
      FieldName = 'MAT_DESC'
      FixedChar = True
      Size = 60
    end
    object Q_IOCQTDE_COMP: TFloatField
      DisplayLabel = 'Qtde. O.C.'
      DisplayWidth = 9
      FieldName = 'QTDE_COMP'
      DisplayFormat = '###,###,##0.00'
    end
    object Q_IOCMATMARCA_EMBALAGEM: TStringField
      DisplayLabel = 'Emb.'
      DisplayWidth = 13
      FieldName = 'MATMARCA_EMBALAGEM'
      FixedChar = True
      Size = 15
    end
    object Q_IOCPRECO_UNIT: TFloatField
      DisplayLabel = 'Pr. Unit.'
      DisplayWidth = 10
      FieldName = 'PRECO_UNIT'
      currency = True
    end
    object Q_IOCVALOR: TFloatField
      DisplayLabel = 'Valor'
      DisplayWidth = 10
      FieldName = 'VALOR'
      currency = True
    end
    object Q_IOCDSMat: TStringField
      DisplayLabel = 'Material'
      DisplayWidth = 25
      FieldKind = fkLookup
      FieldName = 'DSMat'
      LookupDataSet = Q_MAT2
      LookupKeyFields = 'MAT_ID'
      LookupResultField = 'MAT_DESC'
      KeyFields = 'MAT_ID'
      Visible = False
      Size = 50
      Lookup = True
    end
    object Q_IOCUNI_COMP_ID: TIntegerField
      DisplayLabel = 'Un.'
      DisplayWidth = 3
      FieldName = 'UNI_COMP_ID'
      Visible = False
    end
    object Q_IOCQTDE: TFloatField
      FieldName = 'QTDE'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object Q_IOCQTDE_REC: TFloatField
      FieldName = 'QTDE_REC'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object Q_IOCQTDE_COMP_REC: TFloatField
      FieldName = 'QTDE_COMP_REC'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object Q_IOCMAT_ID: TIntegerField
      FieldName = 'MAT_ID'
      Visible = False
    end
    object Q_IOCIORD_ID: TAutoIncField
      FieldName = 'IORD_ID'
      Visible = False
    end
    object Q_IOCORD_ID: TIntegerField
      FieldName = 'ORD_ID'
      Visible = False
    end
    object Q_IOCQTDE_ESTQ_COMP: TFloatField
      FieldName = 'QTDE_ESTQ_COMP'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object Q_IOCUNI_ESTQ_ID: TIntegerField
      FieldName = 'UNI_ESTQ_ID'
      Visible = False
    end
  end
  object DS_OC: TwwDataSource
    DataSet = Q_OC
    Left = 916
    Top = 184
  end
  object DS_IOC: TwwDataSource
    DataSet = Q_IOC
    Left = 1019
    Top = 120
  end
  object Q_MAT: TwwQuery
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
    Left = 890
    Top = 64
    object Q_MATMAT_DESC: TStringField
      DisplayWidth = 60
      FieldName = 'MAT_DESC'
      Origin = 'CURA.MATERIAIS.MAT_DESC'
      FixedChar = True
      Size = 60
    end
    object Q_MATMAT_ID: TAutoIncField
      FieldName = 'MAT_ID'
      Origin = 'CURA.MATERIAIS.MAT_ID'
      Visible = False
    end
  end
  object UPD_OC: TUpdateSQL
    ModifySQL.Strings = (
      'update ORDEM_COMPRA'
      'set'
      '  ALTERAR = :ALTERAR'
      'where'
      '  ORD_ID = :OLD_ORD_ID')
    InsertSQL.Strings = (
      'insert into ORDEM_COMPRA'
      '  (ALTERAR)'
      'values'
      '  (:ALTERAR)')
    DeleteSQL.Strings = (
      'delete from ORDEM_COMPRA'
      'where'
      '  ORD_ID = :OLD_ORD_ID')
    Left = 959
    Top = 120
  end
  object UPD_IOC: TUpdateSQL
    ModifySQL.Strings = (
      'update ORDEM_COMPRAITEM'
      'set'
      '  ALTERAR = :ALTERAR,'
      '  PRECO_UNIT = :PRECO_UNIT,'
      '  VALOR = :VALOR,'
      '  UNI_COMP_ID = :UNI_COMP_ID,'
      '  QTDE = :QTDE,'
      '  QTDE_REC = :QTDE_REC,'
      '  UNI_ESTQ_ID = :UNI_ESTQ_ID,'
      '  QTDE_COMP_REC = :QTDE_COMP_REC,'
      '  MAT_ID = :MAT_ID,'
      '  ORD_ID = :ORD_ID,'
      '  QTDE_ESTQ_COMP = :QTDE_ESTQ_COMP'
      'where'
      '  IORD_ID = :OLD_IORD_ID')
    InsertSQL.Strings = (
      'insert into ORDEM_COMPRAITEM'
      
        '  (ALTERAR, PRECO_UNIT, VALOR, UNI_COMP_ID, QTDE, QTDE_REC, UNI_' +
        'ESTQ_ID, '
      '   QTDE_COMP_REC, MAT_ID, ORD_ID, QTDE_ESTQ_COMP)'
      'values'
      
        '  (:ALTERAR, :PRECO_UNIT, :VALOR, :UNI_COMP_ID, :QTDE, :QTDE_REC' +
        ', :UNI_ESTQ_ID, '
      '   :QTDE_COMP_REC, :MAT_ID, :ORD_ID, :QTDE_ESTQ_COMP)')
    DeleteSQL.Strings = (
      'delete from ORDEM_COMPRAITEM'
      'where'
      '  IORD_ID = :OLD_IORD_ID')
    Left = 839
    Top = 64
  end
  object Q_AUX: TwwQuery
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'SELECT'#9#9'MAT_ID,'
      #9#9'MAT_DESC'
      'FROM'#9#9'MATERIAIS'
      'ORDER BY'#9'MAT_DESC')
    ValidateWithMask = True
    Left = 898
    Top = 113
  end
  object Q_DSCFO: TwwQuery
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'SELECT'#9#9'CFA_SEQU,'
      #9#9'LTRIM(RTRIM(STR(CFA_CODI)))  + '#39' '#39' +'
      #9#9'CFA_DCFO + '
      #9#9'CFA_DCCF DSCFO'
      'FROM'#9#9'SIACFAT'
      'ORDER BY'#9'2')
    ValidateWithMask = True
    Left = 1225
    Top = 8
    object Q_DSCFOCFA_SEQU: TAutoIncField
      FieldName = 'CFA_SEQU'
    end
    object Q_DSCFODSCFO: TStringField
      FieldName = 'DSCFO'
      FixedChar = True
      Size = 71
    end
  end
  object SP_Venc: TStoredProc
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    StoredProcName = 'DBO.SP_GERA_VCTO_REC'
    Left = 168
    Top = 552
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Result'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = '@REC_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@CD_PG_ID'
        ParamType = ptInput
      end>
  end
  object SrchDlg_Pesq: TwwSearchDialog
    Selected.Strings = (
      'NFIS'#9'10'#9'NFIS'#9'F')
    GridTitleAlignment = taLeftJustify
    GridColor = clWhite
    GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
    SearchTable = Q_PSQRECB
    Caption = 'Search'
    MaxWidth = 0
    MaxHeight = 209
    CharCase = ecNormal
    OnCloseDialog = SrchDlg_PesqCloseDialog
    Left = 1159
    Top = 6
  end
  object Q_AUX1: TwwQuery
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    ValidateWithMask = True
    Left = 1090
    Top = 9
  end
  object DS_SALDO_ITEM: TwwDataSource
    DataSet = Q_SALDO_ITEM
    Left = 1008
    Top = 8
  end
  object DS_SALDO: TwwDataSource
    DataSet = Q_SALDO
    Left = 1016
    Top = 64
  end
  object Q_SALDO: TwwQuery
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    DataSource = DS_REC
    SQL.Strings = (
      'SELECT SUM(QTDE*PRECO_UNIT) VL_TOT_MERC,'
      '       SUM(VL_TOTAL) VL_TOTNF  FROM REC_ITEM'
      'WHERE  REC_ID = :REC_ID')
    ValidateWithMask = True
    Left = 993
    Top = 181
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Rec_ID'
        ParamType = ptUnknown
      end>
    object Q_SALDOVL_TOT_MERC: TFloatField
      FieldName = 'VL_TOT_MERC'
      DisplayFormat = '###,###,##0.00'
    end
    object Q_SALDOVL_TOTNF: TFloatField
      FieldName = 'VL_TOTNF'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object Q_SALDO_ITEM: TwwQuery
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    DataSource = DS_RECIT
    SQL.Strings = (
      'SELECT SUM(QTDE*PRECO_UNIT) VL_TOT_ITEM FROM REC_ITEM'
      'WHERE  REC_ITEM_ID = :REC_ITEM_ID')
    ValidateWithMask = True
    Left = 841
    Top = 117
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'Rec_Item_ID'
        ParamType = ptUnknown
      end>
    object Q_SALDO_ITEMVL_TOT_ITEM: TFloatField
      FieldName = 'VL_TOT_ITEM'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object Q_REC: TwwQuery
    CachedUpdates = True
    AfterOpen = Q_RECAfterOpen
    BeforePost = Q_RECBeforePost
    AfterPost = Q_RECAfterPost
    BeforeDelete = Q_RECBeforeDelete
    AfterDelete = Q_RECAfterDelete
    OnNewRecord = Q_RECNewRecord
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    RequestLive = True
    SQL.Strings = (
      'SELECT'#9#9'*'
      'FROM'#9#9'REC_NF'
      'WHERE REC_ID = :REC_ID')
    UpdateObject = UPD_REC
    ValidateWithMask = True
    Left = 1064
    Top = 320
    ParamData = <
      item
        DataType = ftInteger
        Name = 'REC_ID'
        ParamType = ptInput
        Value = '0'
      end>
    object Q_RECRec_ID: TAutoIncField
      FieldName = 'Rec_ID'
      Origin = 'CURA.REC_NF.Rec_ID'
    end
    object Q_RECNFIS: TIntegerField
      FieldName = 'NFIS'
      Origin = 'CURA.REC_NF.NFIS'
    end
    object Q_RECSerie: TStringField
      FieldName = 'Serie'
      Origin = 'CURA.REC_NF.Serie'
      FixedChar = True
      Size = 3
    end
    object Q_RECDt_Entrada: TDateTimeField
      FieldName = 'Dt_Entrada'
      Origin = 'CURA.REC_NF.Dt_Entrada'
      DisplayFormat = 'DD/MM/YY'
      EditMask = '!99/99/00;1;_'
    end
    object Q_RECCFO: TStringField
      FieldName = 'CFO'
      Origin = 'CURA.REC_NF.CFO'
      FixedChar = True
      Size = 10
    end
    object Q_RECCfa_Sequ: TIntegerField
      FieldName = 'Cfa_Sequ'
      Origin = 'CURA.REC_NF.Cfa_Sequ'
    end
    object Q_RECDt_Emiss: TDateTimeField
      FieldName = 'Dt_Emiss'
      Origin = 'CURA.REC_NF.Dt_Emiss'
      DisplayFormat = 'DD/MM/YY'
      EditMask = '!99/99/00;1;_'
    end
    object Q_RECCond_Pgto_ID: TIntegerField
      FieldName = 'Cond_Pgto_ID'
      Origin = 'CURA.REC_NF.Cond_Pgto_ID'
    end
    object Q_RECLocal_ID: TIntegerField
      FieldName = 'Local_ID'
      Origin = 'CURA.REC_NF.Local_ID'
    end
    object Q_RECICMS: TFloatField
      FieldName = 'ICMS'
      Origin = 'CURA.REC_NF.ICMS'
    end
    object Q_RECIPI: TFloatField
      FieldName = 'IPI'
      Origin = 'CURA.REC_NF.IPI'
    end
    object Q_RECCodICMS: TStringField
      FieldName = 'CodICMS'
      Origin = 'CURA.REC_NF.CodICMS'
      FixedChar = True
      Size = 1
    end
    object Q_RECCodIPI: TStringField
      FieldName = 'CodIPI'
      Origin = 'CURA.REC_NF.CodIPI'
      FixedChar = True
      Size = 1
    end
    object Q_RECVl_ICMS: TFloatField
      FieldName = 'Vl_ICMS'
      Origin = 'CURA.REC_NF.Vl_ICMS'
      DisplayFormat = '###,###,##0.00'
    end
    object Q_RECVl_IPI: TFloatField
      FieldName = 'Vl_IPI'
      Origin = 'CURA.REC_NF.Vl_IPI'
      DisplayFormat = '###,###,##0.00'
    end
    object Q_RECBase_ICMS: TFloatField
      FieldName = 'Base_ICMS'
      Origin = 'CURA.REC_NF.Base_ICMS'
      DisplayFormat = '###,###,##0.00'
    end
    object Q_RECBase_IPI: TFloatField
      FieldName = 'Base_IPI'
      Origin = 'CURA.REC_NF.Base_IPI'
      DisplayFormat = '###,###,##0.00'
    end
    object Q_RECFrete: TStringField
      FieldName = 'Frete'
      Origin = 'CURA.REC_NF.Frete'
      FixedChar = True
      Size = 1
    end
    object Q_RECVl_Frete: TFloatField
      FieldName = 'Vl_Frete'
      Origin = 'CURA.REC_NF.Vl_Frete'
      DisplayFormat = '###,###,##0.00'
    end
    object Q_RECVl_Seguro: TFloatField
      FieldName = 'Vl_Seguro'
      Origin = 'CURA.REC_NF.Vl_Seguro'
      DisplayFormat = '###,###,##0.00'
    end
    object Q_RECVl_OutrasDesp: TFloatField
      FieldName = 'Vl_OutrasDesp'
      Origin = 'CURA.REC_NF.Vl_OutrasDesp'
      DisplayFormat = '###,###,##0.00'
    end
    object Q_RECVl_TotMer: TFloatField
      FieldName = 'Vl_TotMer'
      Origin = 'CURA.REC_NF.Vl_TotMer'
      DisplayFormat = '###,###,##0.00'
    end
    object Q_RECVl_TotNF: TFloatField
      FieldName = 'Vl_TotNF'
      Origin = 'CURA.REC_NF.Vl_TotNF'
      DisplayFormat = '###,###,##0.00'
    end
    object Q_RECStatus: TStringField
      FieldName = 'Status'
      Origin = 'CURA.REC_NF.Status'
      FixedChar = True
      Size = 1
    end
    object Q_RECFOR_CODI: TStringField
      FieldName = 'FOR_CODI'
      Origin = 'CURA.REC_NF.FOR_CODI'
      FixedChar = True
      Size = 15
    end
    object Q_RECFIL_CODI: TStringField
      FieldName = 'FIL_CODI'
      Origin = 'CURA.Rec_NF.FIL_CODI'
      Required = True
      FixedChar = True
      Size = 3
    end
    object Q_RECCONFERE_QTDE: TStringField
      FieldName = 'CONFERE_QTDE'
      Origin = 'CURA.Rec_NF.CONFERE_QTDE'
      FixedChar = True
      Size = 1
    end
    object Q_RECCONFERE_VALIDADE: TStringField
      FieldName = 'CONFERE_VALIDADE'
      Origin = 'CURA.Rec_NF.CONFERE_VALIDADE'
      FixedChar = True
      Size = 1
    end
    object Q_RECCONFERE_LOTE: TStringField
      FieldName = 'CONFERE_LOTE'
      Origin = 'CURA.Rec_NF.CONFERE_LOTE'
      FixedChar = True
      Size = 1
    end
    object Q_RECCONFERE_HORARIO: TStringField
      FieldName = 'CONFERE_HORARIO'
      Origin = 'CURA.Rec_NF.CONFERE_HORARIO'
      FixedChar = True
      Size = 1
    end
    object Q_RECCONFERE_TEMPERATURA: TStringField
      FieldName = 'CONFERE_TEMPERATURA'
      Origin = 'CURA.Rec_NF.CONFERE_TEMPERATURA'
      FixedChar = True
      Size = 1
    end
    object Q_RECCONFERE_CONDICAO: TStringField
      FieldName = 'CONFERE_CONDICAO'
      Origin = 'CURA.Rec_NF.CONFERE_CONDICAO'
      FixedChar = True
      Size = 1
    end
    object Q_RECCONFERE_NUMERO_LOTE: TStringField
      FieldName = 'CONFERE_NUMERO_LOTE'
      Origin = 'CURA.Rec_NF.CONFERE_NUMERO_LOTE'
      FixedChar = True
      Size = 50
    end
    object Q_RECCONFERE_REGISTRO: TStringField
      FieldName = 'CONFERE_REGISTRO'
      Origin = 'CURA.Rec_NF.CONFERE_REGISTRO'
      FixedChar = True
      Size = 1
    end
    object Q_RECCONFERE_OBS: TStringField
      FieldName = 'CONFERE_OBS'
      Origin = 'CURA.Rec_NF.CONFERE_OBS'
      FixedChar = True
      Size = 150
    end
    object Q_RECCONFERE_NC: TStringField
      FieldName = 'CONFERE_NC'
      Origin = 'CURA.Rec_NF.CONFERE_NC'
      FixedChar = True
      Size = 1
    end
    object Q_RECCONFERE_OCORRENCIA: TStringField
      FieldName = 'CONFERE_OCORRENCIA'
      Origin = 'CURA.Rec_NF.CONFERE_OCORRENCIA'
      FixedChar = True
      Size = 50
    end
    object Q_RECCONFERE_CONSEQUENCIA: TStringField
      FieldName = 'CONFERE_CONSEQUENCIA'
      Origin = 'CURA.Rec_NF.CONFERE_CONSEQUENCIA'
      FixedChar = True
      Size = 50
    end
    object Q_RECCONFERE_ACAO: TStringField
      FieldName = 'CONFERE_ACAO'
      Origin = 'CURA.Rec_NF.CONFERE_ACAO'
      FixedChar = True
      Size = 50
    end
    object Q_RECCONFERE_RESPONSAVEL: TStringField
      FieldName = 'CONFERE_RESPONSAVEL'
      Origin = 'CURA.Rec_NF.CONFERE_RESPONSAVEL'
      FixedChar = True
      Size = 50
    end
    object Q_RECCONFERE_GRAUS: TFloatField
      FieldName = 'CONFERE_GRAUS'
      Origin = 'CURA.Rec_NF.CONFERE_GRAUS'
    end
    object Q_RECCON_CODI: TStringField
      FieldName = 'CON_CODI'
      Origin = 'CURA.Rec_NF.CON_CODI'
      FixedChar = True
      Size = 50
    end
  end
  object DS_REC: TwwDataSource
    DataSet = Q_REC
    OnStateChange = DS_RECStateChange
    OnDataChange = DS_RECDataChange
    Left = 1064
    Top = 176
  end
  object UPD_REC: TUpdateSQL
    ModifySQL.Strings = (
      'update REC_NF'
      'set'
      '  NFIS = :NFIS,'
      '  Serie = :Serie,'
      '  Dt_Entrada = :Dt_Entrada,'
      '  CFO = :CFO,'
      '  Cfa_Sequ = :Cfa_Sequ,'
      '  Dt_Emiss = :Dt_Emiss,'
      '  Cond_Pgto_ID = :Cond_Pgto_ID,'
      '  Local_ID = :Local_ID,'
      '  ICMS = :ICMS,'
      '  IPI = :IPI,'
      '  CodICMS = :CodICMS,'
      '  CodIPI = :CodIPI,'
      '  Vl_ICMS = :Vl_ICMS,'
      '  Vl_IPI = :Vl_IPI,'
      '  Base_ICMS = :Base_ICMS,'
      '  Base_IPI = :Base_IPI,'
      '  Frete = :Frete,'
      '  Vl_Frete = :Vl_Frete,'
      '  Vl_Seguro = :Vl_Seguro,'
      '  Vl_OutrasDesp = :Vl_OutrasDesp,'
      '  Vl_TotMer = :Vl_TotMer,'
      '  Vl_TotNF = :Vl_TotNF,'
      '  Status = :Status,'
      '  FOR_CODI = :FOR_CODI,'
      '  FIL_CODI = :FIL_CODI'
      ',CONFERE_QTDE = :CONFERE_QTDE'
      '      ,CONFERE_VALIDADE = :CONFERE_VALIDADE'
      '      ,CONFERE_LOTE = :CONFERE_LOTE'
      '      ,CONFERE_HORARIO = :CONFERE_HORARIO'
      '      ,CONFERE_TEMPERATURA = :CONFERE_TEMPERATURA'
      '      ,CONFERE_CONDICAO = :CONFERE_CONDICAO'
      '      ,CONFERE_NUMERO_LOTE = :CONFERE_NUMERO_LOTE'
      '      ,CONFERE_REGISTRO = :CONFERE_REGISTRO'
      '      ,CONFERE_OBS = :CONFERE_OBS'
      '      ,CONFERE_GRAUS = :CONFERE_GRAUS'
      ',CONFERE_NC = :CONFERE_NC'
      ',CONFERE_OCORRENCIA = :CONFERE_OCORRENCIA'
      ',CONFERE_CONSEQUENCIA = :CONFERE_CONSEQUENCIA'
      ',CONFERE_ACAO = :CONFERE_ACAO'
      ',CONFERE_RESPONSAVEL = :CONFERE_RESPONSAVEL'
      ',CON_CODI = :CON_CODI'
      'where'
      '  Rec_ID = :OLD_Rec_ID')
    InsertSQL.Strings = (
      'insert into REC_NF'
      
        '  (NFIS, Serie, Dt_Entrada, CFO, Cfa_Sequ, Dt_Emiss, Cond_Pgto_I' +
        'D, Local_ID, '
      
        '   ICMS, IPI, CodICMS, CodIPI, Vl_ICMS, Vl_IPI, Base_ICMS, Base_' +
        'IPI, Frete, '
      
        '   Vl_Frete, Vl_Seguro, Vl_OutrasDesp, Vl_TotMer, Vl_TotNF, Stat' +
        'us, FOR_CODI, '
      'FIL_CODI,CONFERE_QTDE'
      '      ,CONFERE_VALIDADE'
      '      ,CONFERE_LOTE'
      '      ,CONFERE_HORARIO'
      '      ,CONFERE_TEMPERATURA'
      '      ,CONFERE_CONDICAO'
      '      ,CONFERE_NUMERO_LOTE'
      '      ,CONFERE_REGISTRO'
      '      ,CONFERE_OBS'
      ',CONFERE_GRAUS'
      ',CONFERE_NC'
      ',CONFERE_OCORRENCIA'
      ',CONFERE_CONSEQUENCIA'
      ',CONFERE_ACAO'
      ',CONFERE_RESPONSAVEL'
      ',CON_CODI'
      ')'
      'values'
      
        '  (:NFIS, :Serie, :Dt_Entrada, :CFO, :Cfa_Sequ, :Dt_Emiss, :Cond' +
        '_Pgto_ID, '
      
        '   :Local_ID, :ICMS, :IPI, :CodICMS, :CodIPI, :Vl_ICMS, :Vl_IPI,' +
        ' :Base_ICMS, '
      
        '   :Base_IPI, :Frete, :Vl_Frete, :Vl_Seguro, :Vl_OutrasDesp, :Vl' +
        '_TotMer, '
      '   :Vl_TotNF, :Status, :FOR_CODI, :FIL_CODI,:CONFERE_QTDE'
      '      ,:CONFERE_VALIDADE'
      '      ,:CONFERE_LOTE'
      '      ,:CONFERE_HORARIO'
      '      ,:CONFERE_TEMPERATURA'
      '      ,:CONFERE_CONDICAO'
      '      ,:CONFERE_NUMERO_LOTE'
      '      ,:CONFERE_REGISTRO'
      '      ,:CONFERE_OBS'
      ',:CONFERE_GRAUS'
      ',:CONFERE_NC'
      ',:CONFERE_OCORRENCIA'
      ',:CONFERE_CONSEQUENCIA'
      ',:CONFERE_ACAO'
      ',:CONFERE_RESPONSAVEL'
      ',:CON_CODI'
      ')')
    DeleteSQL.Strings = (
      'delete from REC_NF'
      'where'
      '  Rec_ID = :OLD_Rec_ID')
    Left = 896
    Top = 320
  end
  object UPD_RECIT: TUpdateSQL
    ModifySQL.Strings = (
      'update REC_ITEM'
      'set'
      '  Rec_ID = :Rec_ID,'
      '  Mat_ID = :Mat_ID,'
      '  Qtde = :Qtde,'
      '  Preco_Unit = :Preco_Unit,'
      '  ICMS = :ICMS,'
      '  IPI = :IPI,'
      '  Vl_ICMS = :Vl_ICMS,'
      '  Vl_IPI = :Vl_IPI,'
      '  Vl_Total = :Vl_Total,'
      '  Alterar = :Alterar,'
      '  Marca_ID = :Marca_ID,'
      '  Status = :Status,'
      '  MATMARCA_ID = :MATMARCA_ID,'
      ' GENERICO = :GENERICO,'
      ' MAT_DESC = :MAT_DESC,'
      ' CONVERSAO = :CONVERSAO,'
      ' ControlaConversao = :ControlaConversao'
      'where'
      '  Rec_Item_ID = :OLD_Rec_Item_ID')
    InsertSQL.Strings = (
      'insert into REC_ITEM'
      
        '  (Rec_ID, Mat_ID, Qtde, Preco_Unit, ICMS, IPI, Vl_ICMS, Vl_IPI,' +
        ' Vl_Total, '
      
        '   Alterar, Marca_ID, Status, MATMARCA_ID, GENERICO, MAT_DESC, c' +
        'onversao, '
      'ControlaConversao)'
      'values'
      
        '  (:Rec_ID, :Mat_ID, :Qtde, :Preco_Unit, :ICMS, :IPI, :Vl_ICMS, ' +
        ':Vl_IPI, '
      
        '   :Vl_Total, :Alterar, :Marca_ID, :Status, :MATMARCA_ID, :GENER' +
        'ICO, :MAT_DESC, '
      ':conversao, :ControlaConversao)')
    DeleteSQL.Strings = (
      'delete from REC_ITEM'
      'where'
      '  Rec_Item_ID = :OLD_Rec_Item_ID')
    Left = 104
    Top = 543
  end
  object DS_RECIT: TwwDataSource
    DataSet = Q_RECIT
    OnStateChange = DS_RECITStateChange
    OnDataChange = DS_RECITDataChange
    Left = 1125
    Top = 239
  end
  object Q_RECIT: TwwQuery
    CachedUpdates = True
    AfterOpen = Q_RECITAfterOpen
    BeforePost = Q_RECITBeforePost
    AfterPost = Q_RECITAfterPost
    BeforeDelete = Q_RECITBeforeDelete
    AfterDelete = Q_RECITAfterDelete
    OnNewRecord = Q_RECITNewRecord
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    DataSource = DS_REC
    RequestLive = True
    SQL.Strings = (
      'SELECT'#9#9'RI.*,'
      #9#9'MAT.MAT_CONTROLA,'
      #9#9'OI.STATUS STORD,'
      
        #9#9'CASE WHEN RI.GENERICO = '#39'S'#39' THEN RI.MAT_DESC ELSE MAT.CodigoMa' +
        'terial + '#39' '#39' + MAT.MAT_DESC  END AS MAT_DESC2,'
      
        #9#9'dbo.fnGetUltimaConversao(ri.Mat_ID,  RI.Rec_ID, RI.MARCA_ID) A' +
        's UltimaConversao'
      'FROM'#9#9'REC_ITEM '#9'RI LEFT OUTER JOIN'
      #9#9#9#9'ORDEM_COMPRAITEM OI ON'
      #9#9#9'RI.IORD_ID = OI.IORD_ID,'
      #9#9'MATERIAIS '#9'MAT'
      'WHERE'#9#9'RI.REC_ID = :REC_ID'
      'AND'#9#9'RI.MAT_ID = MAT.MAT_ID')
    UpdateObject = UPD_RECIT
    ControlType.Strings = (
      'Alterar;CheckBox;S;'
      'Status;CustomEdit;cboStIt'
      'STORD;CustomEdit;cboStIt')
    ValidateWithMask = True
    Left = 152
    Top = 392
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'REC_ID'
        ParamType = ptUnknown
      end>
    object Q_RECITAlterar: TStringField
      DisplayLabel = '**'
      DisplayWidth = 2
      FieldName = 'Alterar'
      Origin = 'CURA.REC_ITEM.Alterar'
      FixedChar = True
      Size = 1
    end
    object Q_RECITMAT_DESC2: TStringField
      DisplayLabel = 'Material'
      DisplayWidth = 37
      FieldName = 'MAT_DESC2'
      FixedChar = True
      Size = 60
    end
    object Q_RECITDSMarca: TStringField
      DisplayLabel = 'Marca'
      DisplayWidth = 18
      FieldKind = fkLookup
      FieldName = 'DSMarca'
      LookupDataSet = Q_MARCA
      LookupKeyFields = 'MARCA_ID'
      LookupResultField = 'MARCA_DESC'
      KeyFields = 'Marca_ID'
      Size = 50
      Lookup = True
    end
    object Q_RECITPreco_Unit: TFloatField
      DisplayLabel = 'P.U. (R$)'
      DisplayWidth = 10
      FieldName = 'Preco_Unit'
      Origin = 'CURA.REC_ITEM.Preco_Unit'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      currency = True
    end
    object Q_RECITSTORD: TStringField
      DisplayLabel = 'St. Item O.C.'
      DisplayWidth = 15
      FieldName = 'STORD'
      Origin = 'CURA.ORDEM_COMPRAITEM.STATUS'
      FixedChar = True
      Size = 1
    end
    object Q_RECITORD_ID: TIntegerField
      DisplayLabel = 'N.O.C.'
      DisplayWidth = 11
      FieldName = 'ORD_ID'
      Origin = 'CURA.REC_ITEM.ORD_ID'
    end
    object Q_RECITQtde_OC: TFloatField
      DisplayLabel = 'Qtde O.C.'
      DisplayWidth = 12
      FieldName = 'Qtde_OC'
      Origin = 'CURA.REC_ITEM.Qtde_OC'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '########0.00'
    end
    object Q_RECITQtde: TFloatField
      DisplayWidth = 12
      FieldName = 'Qtde'
      Origin = 'CURA.REC_ITEM.Qtde'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '########0.00'
    end
    object Q_RECITCONVERSAO: TFloatField
      DisplayLabel = 'Conversão'
      DisplayWidth = 10
      FieldName = 'CONVERSAO'
    end
    object Q_RECITICMS: TFloatField
      DisplayLabel = 'Al. ICM'
      DisplayWidth = 8
      FieldName = 'ICMS'
      Origin = 'CURA.REC_ITEM.ICMS'
    end
    object Q_RECITVl_ICMS: TFloatField
      DisplayLabel = 'Vl. ICM (R$)'
      DisplayWidth = 14
      FieldName = 'Vl_ICMS'
      Origin = 'CURA.REC_ITEM.Vl_ICMS'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      currency = True
    end
    object Q_RECITIPI: TFloatField
      DisplayLabel = 'Al. IPI'
      DisplayWidth = 6
      FieldName = 'IPI'
      Origin = 'CURA.REC_ITEM.IPI'
    end
    object Q_RECITVl_IPI: TFloatField
      DisplayLabel = 'Vl. IPI (R$)'
      DisplayWidth = 16
      FieldName = 'Vl_IPI'
      Origin = 'CURA.REC_ITEM.Vl_IPI'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      currency = True
    end
    object Q_RECITVl_Total: TFloatField
      DisplayLabel = 'Vl. Total (R$)'
      DisplayWidth = 12
      FieldName = 'Vl_Total'
      Origin = 'CURA.REC_ITEM.Vl_Total'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      currency = True
    end
    object Q_RECITGENERICO: TStringField
      DisplayWidth = 1
      FieldName = 'GENERICO'
      FixedChar = True
      Size = 1
    end
    object Q_RECITMAT_DESC: TStringField
      DisplayWidth = 60
      FieldName = 'MAT_DESC'
      FixedChar = True
      Size = 60
    end
    object Q_RECITControlaConversao: TIntegerField
      DisplayWidth = 10
      FieldName = 'ControlaConversao'
    end
    object Q_RECITDSMAT: TStringField
      DisplayLabel = 'Material'
      DisplayWidth = 37
      FieldKind = fkLookup
      FieldName = 'DSMAT'
      LookupDataSet = Q_MAT
      LookupKeyFields = 'MAT_ID'
      LookupResultField = 'MAT_DESC'
      KeyFields = 'Mat_ID'
      Visible = False
      Size = 50
      Lookup = True
    end
    object Q_RECITMarca_ID: TIntegerField
      DisplayWidth = 13
      FieldName = 'Marca_ID'
      Origin = 'CURA.REC_ITEM.Marca_ID'
      Visible = False
    end
    object Q_RECITMat_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'Mat_ID'
      Origin = 'CURA.REC_ITEM.Mat_ID'
      Visible = False
      OnChange = Q_RECITMat_IDChange
    end
    object Q_RECITStatus: TStringField
      DisplayWidth = 5
      FieldName = 'Status'
      Origin = 'CURA.REC_ITEM.Status'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_RECITRec_Item_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'Rec_Item_ID'
      Origin = 'CURA.REC_ITEM.Rec_Item_ID'
      Visible = False
    end
    object Q_RECITRec_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'Rec_ID'
      Origin = 'CURA.REC_ITEM.Rec_ID'
      Visible = False
    end
    object Q_RECITIORD_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'IORD_ID'
      Origin = 'CURA.REC_ITEM.IORD_ID'
      Visible = False
    end
    object Q_RECITMAT_CONTROLA: TStringField
      DisplayWidth = 1
      FieldName = 'MAT_CONTROLA'
      Origin = 'CURA.MATERIAIS.MAT_CONTROLA'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_RECITMATMARCA_ID: TIntegerField
      FieldName = 'MATMARCA_ID'
      Origin = 'CURA.REC_ITEM.MATMARCA_ID'
      Visible = False
    end
    object Q_RECITDevolucao: TFloatField
      FieldName = 'Devolucao'
    end
    object Q_RECITQtdeConferencia: TFloatField
      FieldName = 'QtdeConferencia'
    end
    object Q_RECITUltimaConversao: TIntegerField
      FieldName = 'UltimaConversao'
    end
  end
  object Q_RVCT: TwwQuery
    CachedUpdates = True
    AfterPost = Q_RVCTAfterPost
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    DataSource = DS_REC
    RequestLive = True
    SQL.Strings = (
      'SELECT'#9#9'*'
      'FROM'#9#9'REC_VCTO'
      'WHERE'#9#9'REC_ID = :REC_ID')
    UpdateObject = UPD_RVCT
    ValidateWithMask = True
    Left = 952
    Top = 7
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'Rec_ID'
        ParamType = ptUnknown
      end>
    object Q_RVCTDt_Vcto: TDateTimeField
      DisplayLabel = 'Data'
      DisplayWidth = 13
      FieldName = 'Dt_Vcto'
      Origin = 'BANCODADOS.Rec_Vcto.Dt_Vcto'
      DisplayFormat = 'DD/MM/YY'
    end
    object Q_RVCTValor: TFloatField
      DisplayWidth = 15
      FieldName = 'Valor'
      Origin = 'BANCODADOS.Rec_Vcto.Valor'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '########0.00'
    end
    object Q_RVCTRec_Vcto_ID: TAutoIncField
      FieldName = 'Rec_Vcto_ID'
      Origin = 'BANCODADOS.Rec_Vcto.Rec_Vcto_ID'
      Visible = False
    end
    object Q_RVCTRec_ID: TIntegerField
      FieldName = 'Rec_ID'
      Origin = 'BANCODADOS.Rec_Vcto.Rec_ID'
      Visible = False
    end
  end
  object DS_RVCT: TwwDataSource
    DataSet = Q_RVCT
    Left = 312
    Top = 543
  end
  object UPD_RVCT: TUpdateSQL
    ModifySQL.Strings = (
      'update REC_VCTO'
      'set'
      '  Rec_ID = :Rec_ID,'
      '  Dt_Vcto = :Dt_Vcto,'
      '  Valor = :Valor'
      'where'
      '  Rec_Vcto_ID = :OLD_Rec_Vcto_ID')
    InsertSQL.Strings = (
      'insert into REC_VCTO'
      '  (Rec_ID, Dt_Vcto, Valor)'
      'values'
      '  (:Rec_ID, :Dt_Vcto, :Valor)')
    DeleteSQL.Strings = (
      'delete from REC_VCTO'
      'where'
      '  Rec_Vcto_ID = :OLD_Rec_Vcto_ID')
    Left = 888
    Top = 7
  end
  object Q_SQL: TwwQuery
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    ValidateWithMask = True
    Left = 833
    Top = 5
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
    Left = 1130
    Top = 176
    object Q_MAT2StringField1: TStringField
      DisplayWidth = 60
      FieldName = 'MAT_DESC'
      Origin = 'CURA.MATERIAIS.MAT_DESC'
      FixedChar = True
      Size = 60
    end
    object Q_MAT2AutoIncField1: TAutoIncField
      FieldName = 'MAT_ID'
      Origin = 'CURA.MATERIAIS.MAT_ID'
      Visible = False
    end
  end
  object Q_MAT3: TwwQuery
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
    Left = 1138
    Top = 320
    object StringField3: TStringField
      DisplayWidth = 60
      FieldName = 'MAT_DESC'
      Origin = 'CURA.MATERIAIS.MAT_DESC'
      FixedChar = True
      Size = 60
    end
    object AutoIncField3: TAutoIncField
      FieldName = 'MAT_ID'
      Origin = 'CURA.MATERIAIS.MAT_ID'
      Visible = False
    end
  end
  object Q_MARCA: TwwQuery
    Active = True
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'SELECT'#9#9'MARCA_ID,'
      #9#9'MARCA_DESC'
      'FROM '#9#9'MARCAS'
      'ORDER BY'#9'MARCA_DESC')
    ValidateWithMask = True
    Left = 26
    Top = 544
    object Q_MARCAMARCA_DESC: TStringField
      DisplayWidth = 20
      FieldName = 'MARCA_DESC'
      Origin = 'CURA.MARCAS.MARCA_DESC'
      FixedChar = True
    end
    object Q_MARCAMARCA_ID: TAutoIncField
      FieldName = 'MARCA_ID'
      Origin = 'CURA.MARCAS.MARCA_ID'
      Visible = False
    end
  end
  object Q_MARCA2: TwwQuery
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    DataSource = DS_RECIT
    SQL.Strings = (
      'SELECT'#9#9'M.MARCA_ID,'
      #9#9'M.MARCA_DESC'
      'FROM '#9#9'MARCAS M,'
      #9#9'MATERIAL_MARCA MM'
      'WHERE'#9#9'M.MARCA_ID = MM.MARCA_ID'
      'AND'#9#9'MM.MAT_ID = :MAT_ID'
      'ORDER BY'#9'M.MARCA_DESC')
    ValidateWithMask = True
    Left = 1146
    Top = 64
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Mat_ID'
        ParamType = ptUnknown
      end>
    object StringField4: TStringField
      DisplayWidth = 20
      FieldName = 'MARCA_DESC'
      Origin = 'CURA.MARCAS.MARCA_DESC'
      FixedChar = True
    end
    object AutoIncField4: TAutoIncField
      FieldName = 'MARCA_ID'
      Origin = 'CURA.MARCAS.MARCA_ID'
      Visible = False
    end
  end
  object Q_PSQRECB: TwwQuery
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'SELECT REC_ID, NFIS FROM REC_NF ORDER BY NFIS')
    ValidateWithMask = True
    Left = 1184
    Top = 181
    object Q_PSQRECBNFIS: TIntegerField
      DisplayWidth = 10
      FieldName = 'NFIS'
    end
    object Q_PSQRECBREC_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'REC_ID'
      Visible = False
    end
  end
  object qrAux: TwwQuery
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    DataSource = DS_REC
    SQL.Strings = (
      'SELECT SUM(QTDE*PRECO_UNIT) VL_TOT_MERC,'
      '       SUM(VL_TOTAL) VL_TOTNF  FROM REC_ITEM'
      'WHERE  REC_ID = :REC_ID')
    ValidateWithMask = True
    Left = 1225
    Top = 61
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Rec_ID'
        ParamType = ptUnknown
      end>
  end
  object SP_GERA_CPAPAGA: TwwStoredProc
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    StoredProcName = 'dbo.SP_GERA_CPAPAGA'
    ValidateWithMask = True
    Left = 884
    Top = 256
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Result'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = '@REC_ID'
        ParamType = ptInput
      end>
  end
  object qrAux2: TwwQuery
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    DataSource = DS_REC
    SQL.Strings = (
      'Select count(*) as Registros from cpapaga')
    ValidateWithMask = True
    Left = 1065
    Top = 245
    object qrAux2Registros: TIntegerField
      FieldName = 'Registros'
    end
  end
  object ImageList1: TImageList
    Height = 24
    Width = 24
    Left = 780
    Top = 6
    Bitmap = {
      494C01010D000E00040018001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000600000006000000001002000000000000090
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
      0000000000000000000000000000000000008F8F8F0084848400848484008484
      8400848484008484840084848400848484008F8F8F0000000000000000000000
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
      0000000000000000000084848400A1A1A100CACACA00E0E0E000E0EAEA00EAEA
      EA00EAEAEA00EAEAEA00E0EAE000D4D4D400ABABAB00A19898008F8484000000
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
      000000000000000000003131310058606000EAEAEA00F4F4F400B6C0C000A1AB
      AB00B6B6B600A1A1A100C0CAC000FFFFFF00B6B6B6006058580031313100A1A1
      AB00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000383838003131310050505000EAEAEA00F4F4F400CACACA00C0B6
      B600CAC0C000B6B6B600CACACA00FFFFFF00B6B6C00050504800313131003838
      3800A1A1A1000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005050
      50004848480031313100313131006A6A6A00F4F4F400EAF4F400D4D4D400CAC0
      CA00D4CACA00CAC0C000D4D4D400FFFFFF00C0CACA00606A6000313131003131
      3100313131005050500000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000505050003131
      31003131310031313100313131006A737300D4E0E000C0CACA007B8484006A73
      730073737300A1A1A100848F9800EAEAEA00B6C0C0006A6A6A00313131003131
      3100313131003131310050504800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000060606000313131004038
      38006A606000383838003131310050505000848484009898980098A1A10098A1
      A100A1A1A100A1A1A1008F9898008F8F8F007B7B840050504800313131003838
      4000586A6A003138380031313100505050000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000038383800484848006A60
      60006A6A6A004848480048484800313131003131310031313100313131003131
      3100313131003131310031313100313131003131310031313100484848003831
      4000A1A1A1003831400038314000313131000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000383838006A606A007B84
      84006A7B7B007384840073847B00737B7B007B8484007B7B7B007B8484007373
      7300606A60006A7B730073847B00737B7B007B848400737B8400736A8400A1A1
      A10073FF60007384840050405000232323000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003838380084848400ABAB
      AB00ABA1AB00989898007B7373006A6060006A5058006A5050006A5050006A48
      50006A405000604850006050480073505000734858007B606A008F608F007384
      8400A1A1A100A1A1A10098849800313131000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004848480098989800CAD4
      D400988F8F0073505800845058008F6A6A008F606000AB737300B6737300B673
      7B00AB737B00AB737B00AB737300B67373008F586000986A6A008F5060006048
      4800607B5800ABCAAB00A1A1A100313131000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000058585800A1A1A100C0CA
      CA0073606A006A313800AB606A00986A6A008F6060008F606000986060009860
      60008460600084606000986060008F6060008F6A6000986A6A00A16A6A007331
      400098608400E0CAE00098989800484848000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000073737300A1A1A100C0C0
      C0007B606A00603138006A313800401C1C003131310031313100313131003131
      31003131310031313100313131003131310031313100401C1C006A3138006031
      3800846A7300B6B6C000989898006A6A6A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000ABABAB00A1A1A100C0C0
      C000987B84002A0B110031313100311616005848480060484800604848005848
      48005848480060484800604848006048480058504800381C1C00232323003111
      11008F848400C0C0C000A1A1A100989898000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A1A1A100CAC0
      C000AB8F98002A11110031313100A18F8400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A18F8F00313131003111
      1100A18F8F00C0C0C000A1A1A100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000ABABAB0098A1
      A100A1A1A100847B7B006A5858007B737300FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F4FFFF007B737300604850008473
      7300A1ABAB0098A1A100ABABAB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E0EA
      EA00E0E0E000EAEAEA00EAE0E000CACACA00E0E0E000F4FFFF00F4FFFF00F4FF
      FF00FFFFFF00FFFFFF00FFFFFF00EAF4F400CAD4D400CACACA00E0E0E000F4EA
      EA00EAE0E000E0EAE00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D4E0D400D4D4D400F4F4F400FFFFFF00FFFF
      FF00C0C0C000A1A1A100A1A1A100A1A1A100A1A1A100C0CACA00000000000000
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
      0000000000000000000000000000CAC0C000D4D4D400F4FFFF00FFFFFF00EAEA
      EA00A1A1A100A1A1A100C0B6B600B6B6B600C0C0C000CACACA00000000000000
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
      0000000000000000000000000000B6B6B600C0C0C000F4F4F400F4F4F400D4D4
      D400A1A1A100A1A1A100FFFFFF00FFFFFF00EAEAEA00C0C0C000000000000000
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
      0000000000000000000000000000B6B6B600C0C0C000F4F4F400F4F4F400C0C0
      C000A1A1A100D4D4D400FFFFFF00E0E0E000C0C0C00000000000000000000000
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
      0000000000000000000000000000ABABAB00A1A1A100CACACA00CACACA00A1A1
      A100A1A1A100EAEAEA00E0E0E000C0C0C0000000000000000000000000000000
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
      0000000000000000000000000000B6B6B60098989800A1A1A100A1A1A100A1A1
      A100ABABAB00C0C0C000C0C0C000000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000073BD73002973
      290021632100216B2100216B2100216B2100216B2100216B2100216B21002163
      210021632100216B210021632100216B210021632100216321002163210073BD
      7300000000000000000000000000000000000000000000000000FFAD6B00B563
      18008C521000A55A1800A55A1800A55A1800A55A1800A55A1800A55A18009C52
      10009C521000A55A18009C521000A55A18009C5210008C5210009C521000FFAD
      6B00000000000000000000000000000000000000000000000000FFAD6B00B563
      18008C521000A55A1800A55A1800A55A1800A55A1800A55A1800A55A18009C52
      10009C521000A55A18009C521000A55A18009C5210008C5210009C521000FFAD
      6B0000000000000000000000000000000000000000000000000073BD73002973
      290021632100216B2100216B2100216B2100216B2100216B2100216B21002163
      210021632100216B210021632100216B210021632100216321002163210073BD
      7300000000000000000000000000000000000000000000000000318431003184
      3100318C3100319C3100319C3100319C3100319C3100319C3100319C3100318C
      3100318C3100318C3100318C31003184310029842900297B290029732900216B
      2100000000000000000000000000000000000000000000000000CE6B1800CE6B
      1800D6731800DE732100DE732100DE732100DE732100DE732100DE732100D673
      1800DE732100D6731800D6731800CE6B1800BD6B1800B5631800AD5A1800A55A
      1800000000000000000000000000000000000000000000000000CE6B1800CE6B
      1800D6731800DE732100DE732100DE732100DE732100DE732100DE732100D673
      1800DE732100D6731800D6731800CE6B1800BD6B1800B5631800AD5A1800A55A
      1800000000000000000000000000000000000000000000000000318431003184
      3100318C3100319C3100319C3100319C3100319C3100319C3100319C3100318C
      3100318C3100318C3100318C31003184310029842900297B290029732900216B
      21000000000000000000000000000000000000000000000000002984290039A5
      390039A539004AAD4A004AAD4A004AAD4A004AAD4A004AAD4A0039A5390039A5
      390039A5390039A5390039A5390039A53900319C310031843100298429002163
      2100000000000000000000000000000000000000000000000000BD6B1800EF7B
      2100EF842900F7843100F7843100F7843100F7843100F7843100EF7B2900EF84
      2900EF842900EF7B2900EF7B2100EF7B2100DE732100CE6B1800BD6B18008C52
      1000000000000000000000000000000000000000000000000000BD6B1800EF7B
      2100EF842900F7843100F7843100F7843100F7843100F7843100EF7B2900EF84
      2900EF842900EF7B2900EF7B2100EF7B2100DE732100CE6B1800BD6B18008C52
      10000000000000000000000000000000000000000000000000002984290039A5
      390039A539004AAD4A004AAD4A004AAD4A004AAD4A004AAD4A0039A5390039A5
      390039A5390039A5390039A5390039A53900319C310031843100298429002163
      2100000000000000000000000000000000000000000000000000318C310039A5
      390039A5390052AD520052AD52005AB55A0052AD520052AD52004AAD4A0039A5
      390039A5390039A5390039A5390039A53900318C3100319C3100298429002163
      2100000000000000000000000000000000000000000000000000D6731800EF7B
      2900EF842900F78C3900F78C3900F79C4A00F78C3900F78C3900F78C3900EF84
      2900EF842900EF7B2900EF7B2900EF7B2100D6731800DE732100BD6B18008C52
      1000000000000000000000000000000000000000000000000000D6731800EF7B
      2900EF842900F78C3900F78C3900F79C4A00F78C3900F78C3900F78C3900EF84
      2900EF842900EF7B2900EF7B2900EF7B2100D6731800DE732100BD6B18008C52
      1000000000000000000000000000000000000000000000000000318C310039A5
      390039A5390052AD520052AD52005AB55A0052AD520052AD52004AAD4A0039A5
      390039A5390039A5390039A5390039A53900318C3100319C3100298429002163
      2100000000000000000000000000000000000000000000000000318C310039A5
      39004AAD4A005AB55A005AB55A005AB55A0052AD52004AAD4A004AAD4A008CCE
      8C00EFF7EF00EFF7EF0039A5390039A5390039A53900319C3100318431002163
      2100000000000000000000000000000000000000000000000000DE732100EF84
      2900F78C3900FFBD8400FFBD8400F79C4A00F78C3900F78C3900F78C3900F784
      3100FFBD8400FFF7DE00FFF7DE00EF7B2900EF7B2100DE732100CE6B18008C52
      1000000000000000000000000000000000000000000000000000DE732100EF84
      2900F78C3900F79C4A00F79C4A00FFF7DE00FFF7DE00FFBD8400F78C3900F784
      3100EF842900EF7B2900EF7B2900FFBD8400FFBD8400DE732100CE6B18008C52
      1000000000000000000000000000000000000000000000000000318C310039A5
      39004AAD4A005AB55A005AB55A00EFF7EF00EFF7EF008CCE8C004AAD4A004AAD
      4A0039A5390039A5390039A5390039A5390039A53900319C3100318431002163
      210000000000000000000000000000000000000000000000000039A539004AAD
      4A005AB55A005AB55A005AB55A005AB55A005AB55A0052AD52008CCE8C00EFF7
      EF00FFFFFF00EFF7EF0039A5390039A53900319C310039A5390031843100216B
      2100000000000000000000000000000000000000000000000000EF7B2100F78C
      3900F79C4A00FFFFFF00FFBD8400F79C4A00F79C4A00F78C3900F78C3900FFBD
      8400FFF7DE00FFFFFF00FFF7DE00EF7B2100DE732100EF7B2100CE6B1800A55A
      1800000000000000000000000000000000000000000000000000EF7B2100F78C
      3900F79C4A00F79C4A00F79C4A00FFF7DE00FFFFFF00FFF7DE00FFBD8400F784
      3100EF842900EF842900EF7B2900FFBD8400FFFFFF00EF7B2100CE6B1800A55A
      180000000000000000000000000000000000000000000000000039A539004AAD
      4A005AB55A005AB55A005AB55A00EFF7EF00FFFFFF00EFF7EF008CCE8C004AAD
      4A0039A5390039A5390039A5390039A53900319C310039A5390031843100216B
      210000000000000000000000000000000000000000000000000039A5390052AD
      52005AB55A005AB55A005AB55A005AB55A005AB55A008CCE8C00EFF7EF00FFFF
      FF00FFFFFF00EFF7EF0039A5390039A5390039A5390039A53900318C3100216B
      2100000000000000000000000000000000000000000000000000EF7B2100F78C
      3900F79C5200FFFFFF00FFBD8400F79C4A00F79C4A00F79C4A00FFBD8400FFF7
      DE00FFFFFF00FFFFFF00FFF7DE00EF7B2100EF7B2100EF7B2100D6731800A55A
      1800000000000000000000000000000000000000000000000000EF7B2100F78C
      3900F79C5200F79C5200F79C5200FFF7DE00FFFFFF00FFFFFF00FFF7DE00FFBD
      8400F7843100EF842900EF7B2900FFBD8400FFFFFF00EF7B2100D6731800A55A
      180000000000000000000000000000000000000000000000000039A5390052AD
      52005AB55A005AB55A005AB55A00EFF7EF00FFFFFF00FFFFFF00EFF7EF008CCE
      8C004AAD4A0039A5390039A5390039A5390039A5390039A53900318C3100216B
      210000000000000000000000000000000000000000000000000039A539005AB5
      5A005AB55A005AB55A005AB55A005AB55A008CCE8C00EFF7EF00FFFFFF00FFFF
      FF00FFFFFF00EFF7EF0039A5390039A53900319C310039A53900318C31002973
      2900000000000000000000000000000000000000000000000000EF7B2900F79C
      5200F79C5200FFFFFF00FFBD8400F79C5200F79C4A00FFBD8400FFF7DE00FFFF
      FF00FFFFFF00FFFFFF00FFF7DE00EF7B2100DE732100EF7B2900DE732100AD5A
      1800000000000000000000000000000000000000000000000000EF7B2900F79C
      5200F79C5200F79C5200F79C5200FFF7DE00FFFFFF00FFFFFF00FFFFFF00FFF7
      DE00FFBD8400EF842900EF7B2900FFBD8400FFFFFF00EF7B2900DE732100AD5A
      180000000000000000000000000000000000000000000000000039A539005AB5
      5A005AB55A005AB55A005AB55A00EFF7EF00FFFFFF00FFFFFF00FFFFFF00EFF7
      EF008CCE8C0039A5390039A5390039A53900319C310039A53900318C31002973
      29000000000000000000000000000000000000000000000000004AAD4A0063B5
      63005AB55A0063B563005AB55A008CCE8C00EFF7EF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00EFF7EF0039A5390039A5390039A5390039A53900318C3100216B
      2100000000000000000000000000000000000000000000000000F7843100F7A5
      5A00F79C5200FFFFFF00FFBD8400F79C5200FFBD8400FFF7DE00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF7DE00EF7B2100EF7B2900EF842900DE732100A55A
      1800000000000000000000000000000000000000000000000000F7843100F7A5
      5A00F79C5200F7A55A00F79C5200FFF7DE00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFF7DE00FFBD8400EF7B2900FFBD8400FFFFFF00EF842900DE732100A55A
      18000000000000000000000000000000000000000000000000004AAD4A0063B5
      63005AB55A0063B563005AB55A00EFF7EF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00EFF7EF008CCE8C0039A5390039A5390039A5390039A53900318C3100216B
      21000000000000000000000000000000000000000000000000005AB55A005AB5
      5A0063B5630063B563008CCE8C00EFF7EF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00EFF7EF0039A5390039A5390039A5390039A5390039A539002973
      2900000000000000000000000000000000000000000000000000F79C4A00F79C
      5200F7A55A00FFFFFF00FFBD8400FFBD8400FFF7DE00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF7DE00EF842900EF7B2900EF7B2900EF7B2100AD5A
      1800000000000000000000000000000000000000000000000000F79C4A00F79C
      5200F7A55A00F7A55A00F7A55A00FFF7DE00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFF7DE00FFBD8400FFBD8400FFFFFF00EF7B2900EF7B2100AD5A
      18000000000000000000000000000000000000000000000000005AB55A005AB5
      5A0063B5630063B5630063B56300EFF7EF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00EFF7EF008CCE8C0039A5390039A5390039A5390039A539002973
      290000000000000000000000000000000000000000000000000052AD52006BBD
      6B0063B5630063B563005AB55A008CCE8C00EFF7EF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00EFF7EF0039A5390039A53900318C310039A5390039A539002973
      2900000000000000000000000000000000000000000000000000F78C3900F7A5
      5A00F7A55A00FFFFFF00FFBD8400F79C4A00FFBD8400FFF7DE00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF7DE00EF7B2900DE732100EF7B2900EF7B2100AD5A
      1800000000000000000000000000000000000000000000000000F78C3900F7A5
      5A00F7A55A00F7A55A00F79C5200FFF7DE00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFF7DE00FFBD8400EF7B2900FFBD8400FFFFFF00EF7B2900EF7B2100AD5A
      180000000000000000000000000000000000000000000000000052AD52006BBD
      6B0063B5630063B563005AB55A00EFF7EF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00EFF7EF008CCE8C0039A5390039A53900318C310039A5390039A539002973
      29000000000000000000000000000000000000000000000000005AB55A006BBD
      6B006BBD6B006BBD6B0063B563005AB55A008CCE8C00EFF7EF00FFFFFF00FFFF
      FF00FFFFFF00EFF7EF0039A5390039A5390039A5390039A5390039A53900216B
      2100000000000000000000000000000000000000000000000000F79C4A00FFAD
      6300F7A55A00FFFFFF00FFBD8400F79C5200F79C4A00FFBD8400FFF7DE00FFFF
      FF00FFFFFF00FFFFFF00FFF7DE00EF7B2900EF7B2900EF842900EF7B2900A55A
      1800000000000000000000000000000000000000000000000000F79C4A00FFAD
      6300F7A55A00F7A55A00F7A55A00FFF7DE00FFFFFF00FFFFFF00FFFFFF00FFF7
      DE00FFBD8400EF7B2900EF7B2900FFBD8400FFFFFF00EF842900EF7B2900A55A
      18000000000000000000000000000000000000000000000000005AB55A006BBD
      6B006BBD6B006BBD6B0063B56300EFF7EF00FFFFFF00FFFFFF00FFFFFF00EFF7
      EF008CCE8C0039A5390039A5390039A5390039A5390039A5390039A53900216B
      21000000000000000000000000000000000000000000000000005AB55A0073BD
      73007BBD7B006BBD6B006BBD6B005AB55A005AB55A008CCE8C00EFF7EF00FFFF
      FF00FFFFFF00EFF7EF0039A5390039A539004AAD4A0039A5390039A539002973
      2900000000000000000000000000000000000000000000000000F79C4A00FFAD
      6B00FFB57300FFFFFF00FFBD8400F79C5200F79C4A00F79C5200FFBD8400FFF7
      DE00FFFFFF00FFFFFF00FFF7DE00EF842900F7843100EF842900EF7B2100AD5A
      1800000000000000000000000000000000000000000000000000F79C4A00FFAD
      6B00FFB57300FFAD6300F7A55A00FFF7DE00FFFFFF00FFFFFF00FFF7DE00FFBD
      8400F7843100EF842900EF7B2900FFBD8400FFFFFF00EF842900EF7B2100AD5A
      18000000000000000000000000000000000000000000000000005AB55A0073BD
      73007BBD7B006BBD6B006BBD6B00EFF7EF00FFFFFF00FFFFFF00EFF7EF008CCE
      8C004AAD4A0039A5390039A5390039A539004AAD4A0039A5390039A539002973
      29000000000000000000000000000000000000000000000000005AB55A007BBD
      7B007BBD7B0073BD73006BBD6B0063B563005AB55A005AB55A008CCE8C00EFF7
      EF00FFFFFF00EFF7EF004AAD4A0039A5390039A5390039A5390039A539002973
      2900000000000000000000000000000000000000000000000000F79C5200FFB5
      7B00FFB57300FFFFFF00FFBD8400F7A55A00F79C5200F79C4A00F78C3900FFBD
      8400FFF7DE00FFFFFF00FFF7DE00EF7B2900EF7B2900EF842900EF7B2900B563
      1800000000000000000000000000000000000000000000000000F79C5200FFB5
      7B00FFB57300FFAD6B00F7A55A00FFF7DE00FFFFFF00FFF7DE00FFBD8400F78C
      3900F78C3900F7843100F7843100FFBD8400FFFFFF00EF842900EF7B2900B563
      18000000000000000000000000000000000000000000000000005AB55A007BBD
      7B007BBD7B0073BD73006BBD6B00EFF7EF00FFFFFF00EFF7EF008CCE8C004AAD
      4A004AAD4A004AAD4A004AAD4A0039A5390039A5390039A5390039A539002973
      290000000000000000000000000000000000000000000000000063B563008CCE
      8C0084CE84007BBD7B0073BD73006BBD6B006BBD6B0063B563005AB55A008CCE
      8C00EFF7EF00EFF7EF005AB55A004AAD4A004AAD4A004AAD4A0039A539002973
      2900000000000000000000000000000000000000000000000000F7A55A00FFCE
      8C00FFBD8400FFBD8400FFBD8400FFAD6300F7A55A00F7A55A00F79C5200F79C
      4A00FFBD8400FFF7DE00FFF7DE00F78C3900F78C3900F7843100EF7B2100AD5A
      1800000000000000000000000000000000000000000000000000F7A55A00FFCE
      8C00FFBD8400FFB57300FFAD6B00FFF7DE00FFF7DE00FFBD8400F79C5200F79C
      4A00F79C4A00F78C3900F79C4A00FFBD8400FFBD8400F7843100EF7B2100AD5A
      180000000000000000000000000000000000000000000000000063B563008CCE
      8C0084CE84007BBD7B0073BD7300EFF7EF00EFF7EF008CCE8C005AB55A005AB5
      5A005AB55A0052AD52005AB55A004AAD4A004AAD4A004AAD4A0039A539002973
      29000000000000000000000000000000000000000000000000006BBD6B009CD6
      9C009CD69C0084CE84007BBD7B007BBD7B0073BD73006BBD6B006BBD6B006BBD
      6B006BBD6B0063B563005AB55A005AB55A005AB55A004AAD4A0039A53900216B
      2100000000000000000000000000000000000000000000000000F7A55A00FFCE
      9C00FFCE9C00FFBD8400FFB57300FFB57300FFAD6B00FFAD6300F7A55A00F7A5
      5A00F7A55A00F7A55A00F79C5200F79C4A00F79C4A00F78C3900EF7B2900A55A
      1800000000000000000000000000000000000000000000000000F7A55A00FFCE
      9C00FFCE9C00FFBD8400FFB57300FFB57300FFAD6B00FFAD6300F7A55A00F7A5
      5A00F7A55A00F7A55A00F79C5200F79C4A00F79C4A00F78C3900EF7B2900A55A
      18000000000000000000000000000000000000000000000000006BBD6B009CD6
      9C009CD69C0084CE84007BBD7B007BBD7B0073BD73006BBD6B006BBD6B006BBD
      6B006BBD6B0063B563005AB55A005AB55A005AB55A004AAD4A0039A53900216B
      210000000000000000000000000000000000000000000000000073BD73009CD6
      9C009CD69C0084CE84007BBD7B006BBD6B006BBD6B006BBD6B006BBD6B006BBD
      6B006BBD6B0063B563005AB55A005AB55A0052AD52004AAD4A00319C3100297B
      2900000000000000000000000000000000000000000000000000FFAD6B00FFCE
      9C00FFCE9C00FFBD8400FFB57300FFAD6300FFAD6300F7A55A00F7A55A00F7A5
      5A00F7A55A00F7A55A00F79C5200F79C4A00F78C3900F7843100DE732100B563
      1800000000000000000000000000000000000000000000000000FFAD6B00FFCE
      9C00FFCE9C00FFBD8400FFB57300FFAD6300FFAD6300F7A55A00F7A55A00F7A5
      5A00F7A55A00F7A55A00F79C5200F79C4A00F78C3900F7843100DE732100B563
      180000000000000000000000000000000000000000000000000073BD73009CD6
      9C009CD69C0084CE84007BBD7B006BBD6B006BBD6B006BBD6B006BBD6B006BBD
      6B006BBD6B0063B563005AB55A005AB55A0052AD52004AAD4A00319C3100297B
      290000000000000000000000000000000000000000000000000073BD730073BD
      73006BBD6B005AB55A005AB55A005AB55A0052AD520052AD520052AD52005AB5
      5A004AAD4A0039A539004AAD4A004AAD4A0039A5390039A53900318C310073BD
      7300000000000000000000000000000000000000000000000000FFAD6B00FFAD
      6B00F7A55A00F79C5200F79C4A00F79C4A00F78C3900F78C3900F78C3900F79C
      4A00F78C3900EF842900F7843100F7843100EF7B2100EF7B2100D6731800FFAD
      6B00000000000000000000000000000000000000000000000000FFAD6B00FFAD
      6B00F7A55A00F79C5200F79C4A00F79C4A00F78C3900F78C3900F78C3900F79C
      4A00F78C3900EF842900F7843100F7843100EF7B2100EF7B2100D6731800FFAD
      6B0000000000000000000000000000000000000000000000000073BD730073BD
      73006BBD6B005AB55A005AB55A005AB55A0052AD520052AD520052AD52005AB5
      5A004AAD4A0039A539004AAD4A004AAD4A0039A5390039A53900318C310073BD
      7300000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009860
      6000A16A6A00A16A6A00A16A6A00A16A6A00A16A6A00A16A6A00A16A6A00A16A
      6A00A16A6A00A16A6A00A16A6A00A16A6A00A16A6A00A16A6A00A16A6A00A16A
      6A00A16A6A00A16A6A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009858
      6A00EAD4B600F4E0B600F4D4AB00F4D4A100F4CAA100F4CA9800F4CA8F00EAC0
      8400EAC08400EAC07B00EAC07B00EAC07B00EAC07B00EAC07B00EAC07B00EAC0
      7B00EAC07B00A16A6A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000662800006628
      00005F25000059230000532000004D1E0000471C0000451B0000451B0000451B
      0000451B0000451B0000451B0000451B0000451B0000451B0000451B0000431A
      00003C1700003C17000000000000000000000000000000000000000000000000
      00000000000000000000EEAA6B00F0B47700F0BA7F00F0B77B00EFB27600F0AD
      6E00EEAC6D00EFAF6F00EEAC6D00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009858
      6A00EAD4B600F4E0B600F4D4B600F4D4AB00F4CAA100F4CA9800F4CA9800EAC0
      8F00EAC08400EAC08400EAC07B00EAC07B00EAC07B00EAC07B00EAC07B00EAC0
      7B00EAC07B00A16A6A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084340000792F00008935
      0000843400007E310000772E0000702C00006A29000068280000682800006828
      00006828000068280000682800006828000068280000682800006A2900006A29
      000053200000361600003C170000000000000000000000000000000000000000
      000000000000F6CE9700FAE2B100FAE2B100F8D7A300F4CA9200F0BC8100EFB0
      7300EFAF6F00F2B77A00F3C08600F4C58B00F2BF8400EFAF7200EEAC6D000000
      0000000000000000000000000000000000000000000000000000000000009858
      6A00F4D4C000F4E0C000F4D4B600F4D4B600F4D4AB00F4CAA100F4CA9800F4CA
      9800EAC08F00EAC08400EAC08400EAC07B00EAC07B00EAC07B00EAC07B00EAC0
      7B00EAC07B00A16A6A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084340000C24C0000CF51
      0000C74E0000C04B0000BB490000B6470000B1450000AC430000AA420000AA42
      0000AA420000AA420000AA420000AA420000AA420000AA420000AA420000AF44
      0000A03F0000532000003C170000000000000000000000000000000000000000
      0000FAE2B100FFFCD400FEF7CE00FBE5B600F8D7A300F3C99100F7BF8600F4B1
      7500F0AD6E00FFBF8B00FFCC9F00FFD9AD00FFE2B400FBE5B600F3C18700EEAC
      6D00000000000000000000000000000000000000000000000000000000009858
      6A00F4E0C000F4E0CA00F4E0C000F4D4B600F4D4AB00F4D4AB00F4CAA100F4CA
      9800F4CA9800EAC08F00EAC08400EAC08400EAC07B00EAC07B00EAC07B00EAC0
      7B00EAC07B00A16A6A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009E3E0000D9550000D955
      0000CF510000CA4F0000C54D0000C04B0000B8480000B4460000AF440000AA42
      0000AA420000AA420000AA420000AA420000AA420000AA420000AA420000AF44
      0000AF4400006A290000431A0000000000000000000000000000000000000000
      0000FCF2C600FFFFD800FEF3C900FBE5B500F8D7A300F8CB9500D0C28400E2C1
      8A00F4C08F007EAD550058A5410082B76300E9E1B400FFF7CF00FFF6CA00F2BC
      8200EEAC6D000000000000000000000000000000000000000000000000009858
      6A00F4E0CA00D4D4D400848484008484840084848400848484001C1C1C003848
      5000848484008484840084848400848484008484840084848400848484008484
      8400EAC07B00A16A6A0000000000000000000000000084401600844016008440
      1600844016008440160084401600844016008440160084401600844016008440
      1600844016008440160000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A7410000DE570000DC56
      0000D4530000CF510000C74E0000C54D0000BD4A0000B8480000B4460000AC43
      0000AA420000A7410000A7410000A7410000A7410000A7410000A7410000AA42
      0000AA4200006A290000451B0000000000000000000000000000000000000000
      0000F6D09A00FFFFD900FEF7CE00FAE5B600F7D7A400FFCE9C00A4BB6F003199
      28003C9C2D00007B000000790000007800001F931B00D3E5B400FFFFE000F8DA
      A900EEAC6D000000000000000000000000000000000000000000000000009860
      6A00F4E0D400F4EAD400F4E0CA00F4E0C000F4E0C000F4D4B600604031002316
      0B001648600038485000F4CA9800EAC08F00EAC08400EAC08400EAC07B00EAC0
      7B00EAC07B00A16A6A0000000000000000000000000084401600E0C0A100A158
      1600A1581600A1581600A1581600A1581600A1581600A1581600A1581600F4E0
      CA0084401600A158160084401600000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B1450000E65C0000E35B
      0000DC580000D7560000D1540000CC500000CC631300CC6A1E00C7691E00C467
      1E00C0661E00B4520B00A7410000A7410000A7410000A7410000A7410000AA42
      0000AA42000068280000451B000000000000000000000000000000000000EEAB
      6C00EEA96900F4CA9200FEF2C600FCEFC200F7DAA600FFCB9700BAC07B000180
      0200007B0000017F0100048103000D890B000076000033A02E00FBFCE000FAD4
      A000EEAC6D00000000000000000000000000000000000000000000000000A160
      6A00F4EAE000F4EAE000F4EAD400F4E0CA00F4E0C000F4E0C000CACACA0073A1
      B60073F4FF001658F40011385000F4CA9800EAC08F00EAC08400EAC08400EAC0
      7B00EAC07B00A16A6A0000000000000000000000000084401600E0C0A100AB60
      3100AB603100AB603100AB603100AB603100AB603100AB603100AB603100F4E0
      CA0084401600A1581600A1581600844016000000000000000000000000000000
      00000000000000000000000000000000000000000000B6470000EB630400EB63
      0400E35D0300DE5A0100D9570000D1540000EFC69F00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00F6EADE00C9864B00A7410000A7410000A7410000AA42
      0000AA42000068280000451B000000000000000000000000000000000000EEAB
      6C00EEAA6B00EDA66700EFB47600F6D39E00FAE2B100FFDEB000C9CE91000683
      0500007B00000A860900B1DAAB00EBF6E900EEAC6D000281030099C17400FEB7
      8100EEAC6D00EEAC6D000000000000000000000000000000000000000000A16A
      6A00F4EAE000D4D4D400848484008484840084848400848484008484840050B6
      FF0073F4FF001658F4001658F400032A48008484840084848400848484008484
      8400EAC07B00A16A6A0000000000000000000000000084401600E0C0A100AB60
      3100AB603100AB603100AB603100AB603100AB603100AB603100AB603100F4E0
      CA0084401600A1581600A1581600A15816008440160000000000000000000000
      00000000000000000000000000000000000000000000B6470000EF6A0A00F26B
      0A00ED660700E6600400E15C0200DC580000EBAD7600F4D8BC00F3D7BC00F2D7
      BC00F0D7BC00F6E6D700FEFEFE00FEFEFE00DDB08700A7410000A7410000AA42
      0000AA42000068280000451B000000000000000000000000000000000000EEAD
      6F00EFAF7200EEAD6F00EEAA6B00EEA96900EFAF6F00F8BD8600D3CC93000281
      030000780000007900006DBD6A00FBFEFA00FFFFFF007DC579004A9A2F00FAB5
      7E00EEAA6B00EEAC6D000000000000000000000000000000000000000000AB6A
      6A00F4EAEA00FFF4EA00F4EAE000F4EAE000F4EAD400F4E0CA00F4E0C000F4E0
      C000068FCA002AE0F4001658F4001658F40011385000F4CA9800EAC08F00EAC0
      8400EAC07B00A16A6A00000000000000000000000000844016007B7B7B00E0C0
      A100D4845800D4845800D4845800D4845800D4845800D4845800D4845800F4E0
      CA007B7B7B0084401600A1581600A1581600A158160023317B00000000000000
      00000000000000000000000000000000000000000000B6470000F0751700F376
      1700F06E0F00EE660600E9620400E15B0100DC580000D7540000D1520000CC50
      0000C74E0000C04B0000CA6E2500F8EFE600FEFEFE00C1702F00A7410000AA42
      0000AA42000068280000451B000000000000000000000000000000000000F2B5
      7A00F3B78000F2B67E00F2B57B00F2B27800F0B17600F4AD7200E3BC870045A7
      410045A942004FAF4C0067B76000E7F3E200FFFFFF00FFFFFF00B1CC9500E5B1
      7400EEAA6B00EEAC6D000000000000000000000000000000000000000000AB6A
      7300FFF4F400FFFFF400FFF4EA00F4EAE000F4EAE000F4EAD400F4E0CA00F4E0
      C000F4E0C000068FCA002AE0F4001658F4001658F4000B2A4000F4CA9800EAC0
      8F00EAC08400A16A6A000000000000000000000000000000000084401600E0C0
      A100E0C0A100E0C0A100E0C0A100E0C0A100E0C0A100F4E0CA00F4E0CA00E0E0
      E000E0C0A10084401600A1581600A1581600A15816003150840023317B000000
      00000000000000000000000000000000000000000000B6470000F2832B00F484
      2B00F0751700EE670700EE670700EB600300E65C0000DE570000D9550000D453
      0000CF510000CA4F0000C54D0000D78B4B00FEFEFE00E1B28700AF440000AC43
      0000AA42000068280000451B0000000000000000000000000000EEAC6D00F6C0
      8C00F7C19000F7C08E00F6BF8B00F6BD8900F4BC8700F7BB8400E2C69300FAF6
      ED00FFFFFF00FFFFFF00EEF4E900CAE6C500C0E2BC00B1DCAD00C7D3A300F3B6
      7D00EEAB6C00EEAC6D000000000000000000000000000000000000000000B673
      7300FFF4F400D4D4D40084848400848484008484840084848400848484008484
      84008484840084848400068FCA002AE0F4001658F4001658F400113850008484
      8400EAC08F00A16A6A0000000000000000000000000000000000000000008440
      1600E08F5800E08F5800E08F5800E08F5800E08F5800E08F5800E08F5800E08F
      5800E08F5800E08F580084401600A1581600A1581600607BB600315084002331
      7B000000000000000000000000000000000000000000B6470000F3913F00F492
      3F00F27E2200EF6A0A00EF6A0A00EE640400EB5E0000FEFEFE00E1580000DC56
      0000D7540000D1520000CC500000D1702300FEFEFE00EAC6A300B6470000B446
      0000AF4400006A290000451B0000000000000000000000000000F2B27800FBCB
      A100FBCBA100FBC99E00FAC99C00FAC69900F8C59800FFC69800CBC48B0062B6
      5B00FFFFFF00FFFFFF00A3D59E000D880C0003800300007B0000429D3000FEC2
      9500F0B07300F0B073000000000000000000000000000000000000000000B673
      7300FFF4F400FFFFFF00FFFFFF00FFF4F400FFF4EA00F4EAE000F4EAE000F4EA
      D400F4E0CA00F4E0C000F4E0C000068FCA002AE0F4001658F4001658F400032A
      4800EAC08F00A16A6A0000000000000000000000000000000000000000000000
      000084401600E08F5800E08F5800E08F5800E08F5800E08F5800E08F5800E08F
      5800E08F5800E08F5800E08F580084401600A1581600607BB600607BB6003150
      840023317B0000000000000000000000000000000000B6470000F4994C00F79C
      4E00F2832B00F06D0E00F06C0D00EE660600FEFEFE00FEFEFE00EB5E0100E359
      0000DE570000D9550000D1520000E2985700FEFEFE00E6B18000BD4A0000BB49
      0000B4460000732D00004D1E0000000000000000000000000000F4C08B00FED8
      B200FCD4AD00FCD3AB00FCD0A900FCD0A900FCD0A900FFCEA600F7D5B2002192
      1A0066BA6300FFFFFF00FFFFFF0083C67E00007B0000007B0000379C2C00FECC
      A400F4B57D00F4B57D000000000000000000000000000000000000000000B673
      7300FFF4F400FFFFFF00FFFFFF00FFFFFF00FFF4F400FFF4EA00F4EAE000F4EA
      E000F4EAD400F4E0CA00F4E0C000F4E0C000068FCA002AE0F4001658F4001C23
      AB001C1C1C00A16A6A0000000000000000000000000000000000000000000000
      00000000000084401600E08F5800E08F5800E08F5800E08F5800E08F5800E08F
      5800E08F5800E08F5800E08F5800E08F58008440160031508400607BB600607B
      B6003150840023317B00000000000000000000000000B6470000F49F5500F7A1
      5800F2883100F06F1100F06E1000FEFEFE00FEFEFE00FEFEFE00EF660600EB5C
      0000E65A0000DE570000E5883A00FBF4EE00FEFBFA00D46F2000C24C0000C24C
      0000BB490000792F000057220000000000000000000000000000FAD1A300FFE2
      BC00FEDEB700FEDDB600FEDCB500FEDAB400FED9B200FED7AF00FFDEC2008BBF
      72000079000038A1340062B75E001F951E00017E0100007B00002F992700FCD5
      B400F8BD8A00F8BD8A00EEAC6D0000000000000000000000000000000000C07B
      7300FFF4F400D4D4D40084848400848484008484840084848400848484008484
      84008484840084848400848484008484840084848400068FCA002A8FD400736A
      60006A6A60001C1C1C0000000000000000000000000000000000000000000000
      0000000000000000000084401600E08F5800E08F5800E08F5800E08F5800E08F
      5800E08F5800E08F5800E08F5800E08F5800E08F580023317B0031508400607B
      B600607BB6003150840023317B000000000000000000B6470000F4A35B00F7A6
      5E00F38C3700F6B57800FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00EAA46600D1520000CC500000CA4F
      0000C24C000082330000622600000000000000000000EFB27400FEE7BF00FEED
      C500FEEAC200FEE9C000FEE7BF00FEE5BD00FEE5BD00FEE3BB00FFE2BC00FBE9
      CB0039A031000073000000760000007B0000007B00000A87090026972100F8DD
      BC00FCC99A00FCC99A00EEAC6D0000000000000000000000000000000000C07B
      7300FFF4F400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF4F400FFF4
      EA00F4EAE000F4EAE000F4EAD400F4E0CA00F4E0C000F4E0C0006A504000FFFF
      FF00F4EAE0005848380011113100000000000000000000000000000000000000
      000000000000000000000000000023317B0098C0E00098C0E00098C0E00098C0
      E00098C0E00098C0E00098C0E00098C0E00098C0E00098C0E00023317B003150
      8400607BB600607BB60023317B000000000000000000B6470000F6A55F00F7AA
      6600F4914000F7B77D00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFBFA00FAD8B800EB893700DE570000D9550000D4530000D152
      0000CA4F00008B3600006A2900000000000000000000F3BF8400FFF7CF00FFF7
      CF00FFF6CC00FFF2CA00FFF2C900FFF0C700FFEFC700FFEEC600FEEDC400FFED
      CA00E9E9C20052AD4800138B1100098608003FA43600CADEB1007EBF6C00EEE2
      BA00FFD7AB00FFD7AB00EEAC6D0000000000000000000000000000000000CA84
      7B00FFF4F400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF4
      F400FFF4EA00F4EAE000F4EAD400F4EAD400F4EAD400E0D4C000C0AB9800847B
      7300E0C0A100164860001658F4001C23AB000000000000000000000000000000
      00000000000000000000000000000000000023317B0098C0E00098C0E00098C0
      E00098C0E00098C0E00098C0E00098C0E00098C0E00098C0E00098C0E0002331
      7B0031508400607BB60023317B000000000000000000B6470000F6A96400F7B0
      6F00F4994B00F07B2000F2842D00FEFEFE00FEFEFE00FEFEFE00F0721300EE67
      0700EE650500EE620300EE5F0100EB5E0000E65C0000E1580000DC560000D955
      0000D1520000953A0000752D00000000000000000000F6D09A00FFFFD900FFFB
      D300FFFBD300FFFBD300FFFBD300FFF8D100FFF8D000FFF8D000FFF7CF00FFF6
      CC00FFF8D100FFF8DA00F0F0CC00EAEEC600FFF3D400FFF2D000FFF2D000FCED
      C700FCE6BB00FCE6BB00EEAC6D0000000000000000000000000000000000CA84
      7B00FFF4F400D4D4D40084848400848484008484840084848400848484008484
      8400848484008484840084848400EAD4CA00A16A5800986A5800986058009860
      5800315084001684EA001658F4001C23AB000000000000000000000000000000
      0000000000000000000000000000000000000000000023317B0098C0E00098C0
      E00098C0E00098C0E00098C0E00098C0E00098C0E00098C0E00098C0E00098C0
      E00023317B003150840023317B000000000000000000B6470000F6AA6600F8B5
      7900F6A45D00F27E2200F2842D00F2802600FEFEFE00FEFEFE00F0731400F06C
      0D00F06C0D00EE670700EE640400EE600100EE5F0000E95B0000E3590000DE57
      0000D9550000A03F00007E3100000000000000000000FAE2B100FFFFD900FFFB
      D300FFFBD300FFFBD300FFFBD300FFFBD300FFFBD300FFFBD300FFFBD300FFFC
      D400FFFED500FFFFD900FFFFDC00FFFFD900FFFFD900FFFCD400FFF8D000FFF7
      CF00FEF3C900FEF3C900F2B77A0000000000000000000000000000000000D48F
      7B00FFF4F400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF400FFF4F400FFF4EA00E0C0B600A16A5800E0A16A00E0985000EA8F
      3800EA8F23000006E0000006E000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000023317B0098C0
      E00098C0E00098C0E00098C0E00098C0E00098C0E00098C0E00098C0E00098C0
      E00098C0E00023317B0023317B000000000000000000B6470000F6AA6600F8B8
      7F00F7B57900F3913F00F38C3700F2872F00F2802600FEFEFE00F0761800F072
      1300F0761800F06E0F00EE670700EE620300EE5F0100EE5F0000EB5C0000E95B
      0000E1580000A5410000873500000000000000000000FBEABD00FFFFD900FFFB
      D300FFFBD300FFFBD300FFFBD300FFFCD400FFFCD400FFFED500FFFFD900FFFF
      D900FCF2C600F7D49900F4C48100F4C48100F6D09500FBE6B600FFF6CC00FFFF
      D800FFFED500FFFED500F3C0860000000000000000000000000000000000D48F
      7B00FFF4F400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFF400E0C0B600A16A5800EAB67300F4AB5000FFA1
      3800A16A6A000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002331
      7B0098C0E00098C0E00098C0E00098C0E00098C0E00098C0E00098C0E00098C0
      E00098C0E00098C0E00023317B000000000000000000B6470000F4A35B00F8B6
      7A00F7BD8800F7B88000F7B47700F6AF6F00F6A76300F49F5500F4964600F38C
      3700F2822900F0761800F06B0C00EE650500EE600100EE5F0000EE5D0000F05E
      0000E95B0000B1450000923900000000000000000000F4CA9200FEFBD300FFFF
      D900FFFFD800FFFED500FFFCD400FFFBD300FEF7CE00FBEBBB00F8D9A100F3C0
      7E00EEA75C00EB9D4E00EB9D4E00EB9D4E00EBA15900EFAF6F00F8C18800FCD9
      A700FFF2C900FFF2C900F3C9910000000000000000000000000000000000D48F
      7B00FFF4F400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E0CAC000A16A5800EAB67300F4AB5000A16A
      6A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003150840023317B0023317B0023317B0023317B0023317B0023317B002331
      7B0023317B0031508400000000000000000000000000B8480000F6984900F8AB
      6700F8B67A00F8BB8300F8BB8300F8B87F00F8B27500F7AC6900F7A35900F697
      4800F4893300F37D1F00F36F1000F0670600F0630200F0600000F05E0000F35F
      0000F35F0000BB4900009C3D0000000000000000000000000000F0BA7F00F6CE
      9700F4CB9500F4C68F00F3C28A00F2BD8300EFB27400EEA96500EDA45C00EDA0
      5800EDA15500EDA15400EDA15400EDA35900EEAA6900F3B57900F8BD8600FABC
      8400FBC48C00F7BF8600F8BD860000000000000000000000000000000000D48F
      7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E0CACA00A16A5800EAB67300A16A6A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B8480000DE570000F697
      4800F4A15900F6AA6600F6AB6900F6AA6700F6A56000F4A05800F4994B00F38F
      3C00F2832C00F0781B00F06C0D00EE660600EE620200EE5F0000EE5D0000F05E
      0000E3590000AC4300009C3D0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EDA35500EEA76200F0B07300F8BC8300FAC08900FAC0
      8800FABF8700FABF8700F8BD860000000000000000000000000000000000D48F
      7300E0C0AB00EACAAB00EACAAB00EAC0B600E0C0AB00E0C0AB00E0C0AB00E0C0
      AB00D4B6AB00D4B6AB00D4B6AB00C0988F00A16A5800A16A6A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B6470000B647
      0000B6470000B6470000B6470000B6470000B6470000B6470000B6470000B647
      0000B6470000B6470000B6470000B6470000B6470000B6490000B6470000B647
      0000A7410000A741000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F4B67A00FAC08800FAC08800FAC0
      8800FAC08800FAC08800FAC08900000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000FAC08800FAC0
      8800FAC08800FAC0880000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00FEFEFE00FDFD
      FE00FEFEFE00FEFEFE00FEFEFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000995951008838
      38008234350084353500812E2F008C585900A4A5A500A5A3A300A6A4A400A7A5
      A400A7A4A400A6A4A400A5A3A300A4A3A300A5A5A5008E565600802D2D008131
      3200813233008234350082343500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FAFAFA00E0E0D900CACABC00CACABD00CACABD00CBCB
      BD00CACABD00CACABD00CACABC00CECEBE00E9E9E300FDFDFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A0675B00B2535000BA49
      4900BA494900BC4A4A00A43D3D00824E4F009C9D9D00BFBFBC00DDDAD800EEEA
      E700F7F2EE00F7F2ED00E9E5E300DAD9D700D4D5D500A35B5B007D181800801F
      1F0087232300B0414100AF454600823334000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FCFCFB00D3D3CB00686891003F3F9B0044449900454599004646
      98004646970046469600464695003D3D920070709100E4E4DA00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000035C0700035C
      0700035C0700035C070000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A0675B00B2535000BF4A
      4A00BF4B4B00C04C4C00A73E3F00835151008A747400A1676600C19A9700D5BD
      BB00F7F2ED00FFFBF700FAF4F200EAE7E500E1E2E100A65B5C007B171600801E
      1E0087232300B1414100B1474700823334000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDFDFD00D4D4C900656590002B2BCD002C2CE9002626E9002323E7002525
      E8002626E9002525E9002B2BEC003131ED001C1CB6006B6B8900E6E6DB000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000025C0400FFFFFF00058E
      0D00058F0D00058F0D00035C0700000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A0675B00B2535000BD4A
      4A00BC4B4B00C04C4C00A53E3E00875656008A63640087262500A0555300BA89
      8600E6E1DD00FAF4F200FEF8F400F7F2EE00EBEBEA00A95E5D007B171700801E
      1E0087232300B1414100B1474700823334000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FD00D5D5CC00636391002C2CD0003535E9002B2BE1003636C1004646BD003D3D
      C2003D3DC3004242BF003333CA003232E8003D3DF0001C1CB7006A6A8900E7E7
      DD00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000025C0400FFFFFF00058E
      0D00058F0D00058F0D00035C0700000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A0675B00B2535000BD4A
      4A00BC4B4B00C04C4C00A53E3E008B595900916A6A007F1B1B0088282800A15A
      5800D4CCCB00EEEAE700FAF4F200FEFAF600F8F8F400AC6262007B161700801E
      1E0087232300B1414100B1474700823334000000000084401600844016008440
      1600844016008440160084401600844016008440160084401600844016008440
      1600844016008440160000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFDFA00D5D5
      C900636393002B2BD3003535ED002C2CDF006060B100C2C2C100D2D2D000C6C6
      CA00C6C6CA00CECECC00B8B8BC005050C0003232EB003D3DF5001B1BB9006A6A
      8700E7E7DA000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000025C0400FFFFFF00058E
      0D00058F0D00058F0D00035C0700000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A0675B00B2535000BD4A
      4A00BC4B4B00C04C4C00A53E3E008F5B5B00986F6E00801D1D007F1B1B00892F
      2F00BAB1B000DDDAD800EFEBE700FCF7F300FFFFFC00B16564007A161600801E
      1E0087232300B1414100B1474700823334000000000084401600E0C0A100A158
      1600A1581600A1581600A1581600A1581600A1581600A1581600A1581600F4E0
      CA0084401600A158160084401600000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFC00D6D6CB006363
      95002C2CD4003636EC002E2EE8004C4CBF00D9D9CD00EBEBEE00E0E0EA00E2E2
      E900E2E2E900E1E1EA00EEEEEB00C4C4C7003B3BD3003939F1004040F6001E1E
      BA006A6A8600E7E7DB0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000025C0500FFFFFF00058E
      0D00058F0D00058F0D00035C0700000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A0675B00B2535000BD4A
      4A00BC4B4B00C04C4C00A43D3D00965F5E00A17372007F1818007F1818007F1D
      1D0098909000C1C1C000DEDAD700F3EFEB00FFFFFC00B46866007A161600801E
      1E0087232300B1414100B1474700823334000000000084401600E0C0A100AB60
      3100AB603100AB603100AB603100AB603100AB603100AB603100AB603100F4E0
      CA0084401600A1581600A1581600844016000000000000000000000000000000
      00000000000000000000000000000000000000000000E3E3DF0066669B002B2B
      D4003737EB003939E7002C2CE2009292C100EEEEE900DBDBE900DBDBE800DCDC
      E800DCDCE800DBDBE800DDDDEA00ECECE5008282C5003131EB004141ED004141
      F8001F1FB80070708F00F2F2ED00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000035D0500FFFFFF000690
      0F00058F0D00058F0D00035C0700000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A0675B00B2535000BD4A
      4A00BC4B4B00C04C4C00A13C3C0099626000B5959200904A4A008A4545008649
      490087888800A0A6A500C6CAC700E6EAE600FFFFFF00B2686700771414007D1C
      1C0084212100B0414100B1474700823334000000000084401600E0C0A100AB60
      3100AB603100AB603100AB603100AB603100AB603100AB603100AB603100F4E0
      CA0084401600A1581600A1581600A15816008440160000000000000000000000
      00000000000000000000000000000000000000000000ADADC4002626C7003636
      F0003B3BE6003A3AEB003535E100B2B2CE00EFEFEF00DEDEEB00DFDFEB00DFDF
      EC00DFDFEC00DFDFEB00DEDEEB00EAEAF100CBCBD4004343DF003E3EF2004343
      ED003C3CF7003333C100CFCFDB00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000035D0500FFFFFF000A96
      16000792110007921100035C0700000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A0675B00B2535000BD4A
      4A00BC4B4B00C04C4C00AB414100A6565700C6918F00BA898900AD818100A57B
      7B009D7474009D747400B2888700CC9E9D00DEB1AF00B55C5B0091282800952D
      2D0099303000B6454500B14647008233340000000000844016007B7B7B00E0C0
      A100D4845800D4845800D4845800D4845800D4845800D4845800D4845800F4E0
      CA007B7B7B0084401600A1581600A1581600A158160023317B00000000000000
      00000000000000000000000000000000000000000000A7A7C9002B2BD3003B3B
      ED003E3EEB003D3DF0003A3AE400B4B4CF00F2F2F300E2E2EF00E4E4F000E4E4
      F100E4E4F100E3E3F000E3E3EF00E7E7F500EBEBE5006868D6003D3DF8004646
      F1004141F5004747E300CCCCE20000000000000000000000000000000000035C
      0700035C0700035C0700035C0700035C0700035C0700035D0500FFFFFF000E9D
      1D000B9817000B981700035D0500035C0700035C0700035C0700035C0700035C
      0700035C070000000000000000000000000000000000A0675B00B2535000BF4B
      4B00BF4B4B00BF4B4B00BD4A4A00BD484800BC464600BC474700BC474700BD46
      4700BD464700BC464600BB444400BB444400BA444400BC474700BD4A4A00BD48
      4800BF4B4B00C04C4C00AF45460082333400000000000000000084401600E0C0
      A100E0C0A100E0C0A100E0C0A100E0C0A100E0C0A100F4E0CA00F4E0CA00E0E0
      E000E0C0A10084401600A1581600A1581600A15816003150840023317B000000
      00000000000000000000000000000000000000000000A9A9CA002E2ED3003E3E
      F2004242F0004343F6003F3FE900B6B6D100F8F8FA00E9E9F600E8E8F500E9E9
      F500E9E9F500E9E9F500EAEAF500EBEBF200F5F5F4009292D5003D3DFB004B4B
      F6004343F9004747DE00CECEE100000000000000000000000000035C0700FFFF
      FF0038D3640033CC5A002DC7520029C14B0025BD440020B63B0016A72B0013A1
      24000F9D1E000C9718000D9C1B000A97160007921100058F0D00058F0D00058F
      0D00058F0D00035C0700000000000000000000000000A0675B00B2535000B645
      4500B0424100B4484600B8515000BC575700BF5C5B00BF5C5B00BF5C5B00BF5C
      5B00BF5C5B00BF5C5B00BF5C5B00BF5C5B00BF5C5B00BF5C5B00BF5C5B00BF5E
      5D00BF545400BF4B4B00AF454600823334000000000000000000000000008440
      1600E08F5800E08F5800E08F5800E08F5800E08F5800E08F5800E08F5800E08F
      5800E08F5800E08F580084401600A1581600A1581600607BB600315084002331
      7B000000000000000000000000000000000000000000A9A9C9003131D6004242
      F7004747F4004848FC004444EE00BBBBD700FCFCFC00EAEAF700EFEFFC00F0F0
      FC00EFEFFC00F2F2FE00E1E1F100A9A9D200FFFFFE00C6C6DA004444E6004E4E
      FE004848FE004A4AE000CDCDE000000000000000000000000000035C0700FFFF
      FF0038D3640033CC5A002DC7520029C14B0025BD440020B63B001CAC330018A7
      2C0014A32600109E20000D9C1B000A97160007921100058F0D00058F0D00058F
      0D00058F0D00035C0700000000000000000000000000A0685B00B45451009C35
      31008F302C00A1514D00B4767300C2969300CBAAA900CCADAC00CCACAB00CCAC
      AB00CCACAB00CCACAB00CCACAB00CCACAB00CCACAB00CCACAB00CCACAB00CCB2
      B100C4777700BD464600AF454600823334000000000000000000000000000000
      000084401600E08F5800E08F5800E08F5800E08F5800E08F5800E08F5800E08F
      5800E08F5800E08F5800E08F580084401600A1581600607BB600607BB6003150
      840023317B0000000000000000000000000000000000A9A9C9003434DA004848
      FD004D4DFB004E4EFF004949EF00C5C5DF00E0E0E600C9C9D80000000000F7F7
      FF00F7F7FF00FBFBFF00E7E7F2006868DC00D0D0F100FFFFF2008E8ECF004646
      FD004D4DFF004B4BE200CDCDDF00000000000000000000000000035C0700FFFF
      FF003CD76B0037CF620033CA5A002DC552002AC04B0025BA430021B53C001CAF
      350018AA2F0015A4280011A022000F9C1D000C97180008921200068E0E00058C
      0D00058E0D00035C0700000000000000000000000000A0685B00B4535000972D
      2900C0878200F8F2EF00F3E7E600F4EAE900F6EDEB00F6EDEB00F6EDEB00F6ED
      EB00F6EDEB00F6EDEB00F6EDEB00F6EDEB00F6EDEB00F6EDEB00F8EFEE00E9DD
      DC00BF757400B23F3F00AF454600823435000000000000000000000000000000
      00000000000084401600E08F5800E08F5800E08F5800E08F5800E08F5800E08F
      5800E08F5800E08F5800E08F5800E08F58008440160031508400607BB600607B
      B6003150840023317B00000000000000000000000000A9A9CB003737DE004D4D
      FF005252FF005454FF005050F000C9C9E100DADAE200CDCDD900E5E5EC00D3D3
      DE00E9E9EF00CFCFDB00F7F7F4006B6BEB006464F700B6B6F4009595F3004F4F
      FC005151FF004C4CE300CCCCDF00000000000000000000000000035C0700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0022B5
      3E001EB037001AAC3100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00035C0700000000000000000000000000A0685B00B4535000972D
      2900C5908C00FFFFFF00FAF2F000FAF2F000FAF2F000FAF2F000FAF2F000FAF2
      F000FAF2F000FAF2F000FAF2F000FAF2F000FAF2F000FAF2F000FCF4F300EAE0
      DE00BD747300B03D3D00AF454600823435000000000000000000000000000000
      0000000000000000000084401600E08F5800E08F5800E08F5800E08F5800E08F
      5800E08F5800E08F5800E08F5800E08F5800E08F580023317B0031508400607B
      B600607BB6003150840023317B000000000000000000A9A9CA003A3AE1005353
      FF005959FF005C5CFF005858F000CBCBE300DADADD00D1D1D800D5D5E000C2C2
      CF00E0E0EA00BABACF00FBFBF4007B7BE9005F5FFF005757FE005A5AFF005F5F
      FF005656FF004F4FE200CBCBDE0000000000000000000000000000000000035C
      0700035C0700035C0700035C0700035C0700035C0700035D0500FFFFFF0028BD
      480024BA410024BA4100035D0500035C0700035C0700035C0700035C0700035C
      0700035C070000000000000000000000000000000000A0685B00B4535000972D
      2900C48E8A00FFFFFC00F6EEED00F6EDEB00F6EEED00F6EEED00F6EEED00F6EE
      ED00F6EEED00F6EEED00F6EEED00F6EEED00F6EEED00F6EDEB00FAF2F000EADE
      DD00BD747300B03D3D00AF454600823435000000000000000000000000000000
      000000000000000000000000000023317B0098C0E00098C0E00098C0E00098C0
      E00098C0E00098C0E00098C0E00098C0E00098C0E00098C0E00023317B003150
      8400607BB600607BB60023317B000000000000000000A6A6CC003B3BE3005A5A
      FF005F5FFF006363FF005F5FF000D2D2E200E3E3DD00D1D1D600DADAE700C8C8
      D700E2E2EB00C1C1D400FBFBF4008181E9007070FF006E6EFF006868FF006565
      FF005D5DFF004F4FE200CACADE00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000035C0700FFFFFF002DC6
      53002AC24D002AC24D00035C0700000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A0685B00B4535000972D
      2900C48E8A00FFFFFE00E2DCDA00BDBBBB00BFBDBD00BFBDBD00BFBDBD00BFBD
      BD00BFBDBD00BFBDBD00BFBDBD00BFBDBD00BFBDBD00BBBAB800DED9D900EEE1
      E000BD747300B03D3D00AF454600823435000000000000000000000000000000
      00000000000000000000000000000000000023317B0098C0E00098C0E00098C0
      E00098C0E00098C0E00098C0E00098C0E00098C0E00098C0E00098C0E0002331
      7B0031508400607BB60023317B000000000000000000C2C2DF003D3DDD005D5D
      FF006666FF006B6BFF006A6AF900B4B4ED00C0C0E400D2D2E100DADAE600C7C7
      D600E2E2EA00C0C0D200F9F9F5008787E9007878FF007777FF007171FF006B6B
      FF005F5FFF005A5AE600DDDDEA00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000035C0700FFFFFF0034CC
      5C0030C9560030C95600035C0700000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A0685B00B4535000972D
      2900C48E8A00FFFFFE00F2E9E900E7E1E000E7E1E000E7E1E000E7E1E000E7E1
      E000E7E1E000E7E1E000E7E1E000E7E1E000E7E1E000E6E0DE00F2EBEB00EDE0
      DE00BD747300B03D3D00AF454600823435000000000000000000000000000000
      0000000000000000000000000000000000000000000023317B0098C0E00098C0
      E00098C0E00098C0E00098C0E00098C0E00098C0E00098C0E00098C0E00098C0
      E00023317B003150840023317B000000000000000000FCFCFD009F9FE0004646
      E6006E6EFF007676FF007A7AFF007E7EFE007777EC00D9D9E300DCDCE400C8C8
      D400E2E2E900C2C2D100FBFBF5008F8FE7008282FF007F7FFF007A7AFF006F6F
      FF005D5DEF00BDBDEC00FEFEFE00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000035C0700FFFFFF003AD3
      670036D0600036D06000035C0700000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A0685B00B4535000972D
      2900C48E8A00FFFFFE00E6E0DE00C7C4C400C9C5C500C9C5C500C9C5C500C9C5
      C500C9C5C500C9C5C500C9C5C500C9C5C500C9C5C500C5C2C200E2DDDD00EDE1
      E000BD747300B03D3D00AF454600823435000000000000000000000000000000
      000000000000000000000000000000000000000000000000000023317B0098C0
      E00098C0E00098C0E00098C0E00098C0E00098C0E00098C0E00098C0E00098C0
      E00098C0E00023317B0023317B00000000000000000000000000000000009C9C
      DD004F4FE7008181FF008585FF008989FF008383F200DBDBE200E0E0E600CCCC
      DA00E2E2EC00C3C3D200FFFFF4009797EC008A8AFF008989FF008080FF006161
      F000BBBBE9000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000035C0700FFFFFF003FD9
      6F003DD86B0043E17700035C0700000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A0685B00B4535000972D
      2900C48E8A00FFFFFE00EEE6E500DDD7D500DDD8D700DDD8D700DDD8D700DDD8
      D700DDD8D700DDD8D700DDD8D700DDD8D700DDD8D700DCD5D500EEE7E600EDE0
      DE00BD747300B03D3D00AF454600823435000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002331
      7B0098C0E00098C0E00098C0E00098C0E00098C0E00098C0E00098C0E00098C0
      E00098C0E00098C0E00023317B0000000000000000000000000000000000FFFF
      FE009999DE005959E8009191FF009393FF009595FE00AFAFF800ACACED00D3D3
      E200F2F2F300AAAAE500B6B6F9009B9BFE009696FF008F8FFF006868EF00B8B8
      E800FFFFFE000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000035C0700FFFFFF0040DA
      700041DD730043E17700035C0700000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A0685B00B4535000972D
      2900C48E8A00FFFFFE00EEE6E500DDD7D500DDD8D700DDD8D700DDD8D700DDD8
      D700DDD8D700DDD8D700DDD8D700DDD8D700DDD8D700DCD5D500EEE7E600EDE0
      DE00BD747300B03D3D00AF454600823435000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003150840023317B0023317B0023317B0023317B0023317B0023317B002331
      7B0023317B003150840000000000000000000000000000000000000000000000
      0000FFFFFE009898DF006161E700A2A2FF00AAAAFF00A8A8FF00A6A6FF00C5C5
      F100D7D7F500AEAEFE00A5A5FF00ABABFF00A0A0FF006C6CEE00B5B5E700FFFF
      FE00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000035C0700FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00035C0700000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A0685B00B4535000972D
      2900C48E8A00FFFFFE00E5DDDD00C5C1C100C6C4C200C6C4C200C6C4C200C6C4
      C200C6C4C200C6C4C200C6C4C200C6C4C200C6C4C200C2C0C000E2DCDA00EEE1
      E000BD747300B03D3D00AF454600823435000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009898E1006868E8009898FC009B9BFC009F9FFC009C9C
      FD009999FC009F9FFC009D9DFC009797FC007272ED00B5B5E700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000035C0700035C
      0700035C0700035C070000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A0685B00B4535000972D
      2900C58F8B00FFFFFF00FBF2F000FCF3F200FCF3F200FCF3F200FCF3F200FCF3
      F200FCF3F200FCF3F200FCF3F200FCF3F200FCF3F200FCF3F200FFF6F400EDE0
      DE00BD747300B23F3F00B0464700823435000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000AFAFEA008C8CEA009393EA009494EA009595
      EB009595EA009494EA009393EB008C8CEA00C0C0EC0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A0685B00AD545000952D
      2900BC878300EFEFEE00EAE2E100EAE2E100EAE2E100EAE2E100EAE2E100EAE2
      E100EAE2E100EAE2E100EAE2E100EAE2E100EAE2E100EAE2E100EBE6E500E1D7
      D500B8727000A5393900A5414200823435000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FAFAFA00FAFAFA00FAFAFB00FAFA
      FA00FAFAFA00FAFAFA00F9F9FA00FBFBFA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000985851008A2D
      2800A36F6D00B6BCBC00B4B2B200B4B2B200B4B2B200B4B2B200B4B2B200B4B2
      B200B4B2B200B4B2B200B4B2B200B4B2B200B4B2B200B4B2B200B2B2B200C1BA
      B800A56A6A007E2C2D008233340000000000424D3E000000000000003E000000
      2800000060000000600000000100010000000000800400000000000000000000
      000000000000000000000000FFFFFF00FFFFFF000000000000000000FF007F00
      0000000000000000FC001F000000000000000000FC000F000000000000000000
      F80007000000000000000000E00003000000000000000000C000010000000000
      0000000080000000000000000000000080000000000000000000000080000000
      0000000000000000800000000000000000000000800000000000000000000000
      8000000000000000000000008000000000000000000000008000000000000000
      00000000C00001000000000000000000C00001000000000000000000E0000300
      0000000000000000FE003F000000000000000000FE003F000000000000000000
      FE003F000000000000000000FE007F000000000000000000FE00FF0000000000
      00000000FE01FF000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000FC0000FC0000FC0000F
      C0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC000
      0FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0
      000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000F
      C0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC000
      0FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0
      000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000F
      C0000FC0000FC0000FC0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00003FFFFFFFFFFFFFFFFFFE00003FF
      FFFFC00003FC01FFE00003FFFFFF800001F8001FE00003FFFFFF800001F0000F
      E00003FFFFFF800001F00007E000038003FF800001F00007E000038001FF8000
      01E00007E000038000FF800001E00003E0000380007F800001E00003E0000380
      003F800001E00003E00003C0001F800001C00003E00003E0000F800001C00003
      E00003F00007800001C00003E00003F80003800001C00001E00003FC00018000
      01800001E00001FE0001800001800001E00000FF0001800001800001E00000FF
      8001800001800001E00001FFC001800001800001E00007FFE001800001800001
      E0000FFFF003800001C00001E0001FFFFFFF800001FFFC01E0003FFFFFFFC000
      03FFFF01FFFFFFFFFFFFFFFFFFFFFFC3FFFFFFFF81FFFFFFFFC00001FFFFFFFC
      003FFFFFFF800000FFFFFFF8003FFFC3FF800000FFFFFFF0001FFF81FF800000
      FFFFFFE0000FFF81FF8000008003FFC00007FF81FF8000008001FF800003FF81
      FF8000008000FF800001FF81FF80000080007F800001FF81FF80000080003F80
      0001E00007800000C0001F800001C00003800000E0000F800001C00003800000
      F00007802001C00003800000F80003800001C00003800000FC0001800001E000
      07800000FE0001800001FF81FF800000FF0001800001FF81FF800000FF800180
      0001FF81FF800000FFC001E00007FF81FF800000FFE001E00007FF81FF800000
      FFF003F0000FFF81FF800000FFFFFFFC003FFFC3FF800000FFFFFFFE007FFFFF
      FF800000FFFFFFFF00FFFFFFFFC0000100000000000000000000000000000000
      000000000000}
  end
  object qrAuxConv: TwwQuery
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    DataSource = DS_REC
    ValidateWithMask = True
    Left = 1081
    Top = 69
  end
  object qrMaterialMarca: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT '
      #9'B.MATMARCA_ID,'
      #9'B.MARCA_ID,'
      #9'B.MAT_ID,'
      #9'A.CodigoMaterial + '#39' '#39' + A.MAT_DESC AS MAT_DESC,'
      #9'C.MARCA_DESC,'
      #9'B.MATMARCA_CONVERSAO,'
      #9'b.MATMARCA_EMBALAGEM'
      'FROM MATERIAIS A INNER JOIN MATERIAL_MARCA B'
      'ON A.MAT_ID = B.MAT_ID INNER JOIN MARCAS C'
      'ON B.MARCA_ID = C.MARCA_ID'
      'ORDER BY A.MAT_DESC, C.MARCA_DESC')
    Left = 510
    Top = 329
    object qrMaterialMarcaMAT_DESC: TStringField
      DisplayLabel = 'Material'
      DisplayWidth = 60
      FieldName = 'MAT_DESC'
      Size = 60
    end
    object qrMaterialMarcaMARCA_DESC: TStringField
      DisplayLabel = 'Marca'
      DisplayWidth = 20
      FieldName = 'MARCA_DESC'
    end
    object qrMaterialMarcaMATMARCA_CONVERSAO: TFloatField
      DisplayLabel = 'Conversão'
      DisplayWidth = 10
      FieldName = 'MATMARCA_CONVERSAO'
    end
    object qrMaterialMarcaMATMARCA_EMBALAGEM: TStringField
      DisplayLabel = 'Embalagem'
      DisplayWidth = 15
      FieldName = 'MATMARCA_EMBALAGEM'
      Size = 15
    end
    object qrMaterialMarcaMATMARCA_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'MATMARCA_ID'
      ReadOnly = True
      Visible = False
    end
    object qrMaterialMarcaMARCA_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'MARCA_ID'
      Visible = False
    end
    object qrMaterialMarcaMAT_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'MAT_ID'
      Visible = False
    end
  end
  object ADOQuery1: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT FIL_CODI, FIL_DESC FROM CPAFILI'
      'order by FIL_DESC')
    Left = 376
    Top = 544
    object ADOQuery1FIL_DESC: TStringField
      DisplayWidth = 20
      FieldName = 'FIL_DESC'
      FixedChar = True
    end
    object ADOQuery1FIL_CODI: TStringField
      DisplayWidth = 3
      FieldName = 'FIL_CODI'
      Visible = False
      FixedChar = True
      Size = 3
    end
  end
  object qrConseq: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM CONSEQUENCIAS'
      'ORDER BY CONSEQUENCIA')
    Left = 1200
    Top = 320
    object qrConseqCONSEQUENCIA: TStringField
      FieldName = 'CONSEQUENCIA'
      Size = 50
    end
  end
  object qrControlaConversao: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT TOP 5 CONVERSAO'
      'FROM REC_ITEM'
      'WHERE REC_ID < 1'
      'AND MAT_ID = 1'
      'AND MARCA_ID = 1'
      'ORDER BY REC_ID DESC')
    Left = 456
    Top = 522
    object qrControlaConversaoCONVERSAO: TFloatField
      FieldName = 'CONVERSAO'
    end
  end
  object qrContaGerencial: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    SQL.Strings = (
      'Select '#9#9'CON_CODI, '
      #9#9'CON_CODI + '#39' - '#39' + CON_DESC CON_DESC '
      'from '#9#9'CPACONT '
      'order by '#9#9'CON_CODI')
    Left = 948
    Top = 386
    object qrContaGerencialCON_DESC: TStringField
      DisplayWidth = 78
      FieldName = 'CON_DESC'
      ReadOnly = True
      Size = 78
    end
    object qrContaGerencialCON_CODI: TStringField
      DisplayWidth = 50
      FieldName = 'CON_CODI'
      Visible = False
      Size = 50
    end
  end
  object qrAux3: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    Left = 460
    Top = 426
  end
  object qrContaGerenciaEntrada: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    SQL.Strings = (
      'select * FROM [dbo].[ContaGerencialEntrada]')
    Left = 532
    Top = 546
    object qrContaGerenciaEntradaId: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object qrContaGerenciaEntradaContaGerencial: TStringField
      FieldName = 'ContaGerencial'
      Size = 50
    end
  end
  object SP_GERA_DEVOLUCAO: TADOStoredProc
    Connection = FMenu.ADOConnection
    ProcedureName = 'SP_GERA_NOTA_DEVOLUCAO;1'
    Parameters = <
      item
        Name = '@REC_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@IdNotaDevolucao'
        Attributes = [paNullable]
        DataType = ftInteger
        Direction = pdInputOutput
        Precision = 10
        Value = Null
      end>
    Left = 726
    Top = 303
  end
  object qrConsultaTotaisNF: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <
      item
        Name = 'reqid'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT'
      #9'N.Vl_TotNF AS NOTA, SUM(I.Qtde * I.Preco_Unit)'#9'AS ITENS'
      'FROM Rec_NF N'
      'INNER JOIN Rec_Item I ON N.Rec_ID = I.Rec_ID'
      'WHERE N.Rec_ID = :reqid'
      'GROUP BY N.Vl_TotNF')
    Left = 320
    Top = 360
    object qrConsultaTotaisNFNOTA: TFloatField
      FieldName = 'NOTA'
    end
    object qrConsultaTotaisNFITENS: TFloatField
      FieldName = 'ITENS'
      ReadOnly = True
    end
  end
  object qrRateiaNota: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    Left = 448
    Top = 360
  end
end
