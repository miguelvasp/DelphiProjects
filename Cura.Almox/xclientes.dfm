object Cliente: TCliente
  Left = -3
  Top = -3
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Lista de Materiais - Durawall v.1.0'
  ClientHeight = 545
  ClientWidth = 791
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnKeyUp = FormKeyUp
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton3: TSpeedButton
    Left = 408
    Top = 104
    Width = 23
    Height = 22
  end
  object TabbedNotebook1: TTabbedNotebook
    Left = 1
    Top = 61
    Width = 789
    Height = 485
    PageIndex = 2
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    TabFont.Charset = ANSI_CHARSET
    TabFont.Color = clBlack
    TabFont.Height = -16
    TabFont.Name = 'Arial'
    TabFont.Style = []
    TabOrder = 0
    OnClick = TabbedNotebook1Click
    object TTabPage
      Left = 4
      Top = 29
      Caption = '         Clientes         '
      object Panel6: TPanel
        Left = 8
        Top = 1
        Width = 761
        Height = 448
        BevelInner = bvLowered
        TabOrder = 0
        object Label2: TLabel
          Left = 20
          Top = 21
          Width = 98
          Height = 18
          Caption = 'Simulação Nº:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 195
          Top = 23
          Width = 38
          Height = 18
          Caption = 'Data:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 73
          Top = 65
          Width = 46
          Height = 18
          Caption = 'Nome:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 530
          Top = 67
          Width = 64
          Height = 18
          Caption = 'Telefone:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object wwDBEdit1: TwwDBEdit
          Left = 120
          Top = 19
          Width = 39
          Height = 23
          BorderStyle = bsNone
          DataField = 'Simul_ID'
          DataSource = DS_Simulacao
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBEdit2: TwwDBEdit
          Left = 239
          Top = 20
          Width = 74
          Height = 23
          BorderStyle = bsNone
          DataField = 'Data_Simul'
          DataSource = DS_Simulacao
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnEnter = wwDBEdit2Enter
          OnExit = wwDBEdit2Exit
        end
        object txtnome: TwwDBEdit
          Left = 120
          Top = 62
          Width = 400
          Height = 23
          BorderStyle = bsNone
          DataField = 'Nome_Cliente'
          DataSource = DS_Simulacao
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnEnter = txtnomeEnter
          OnExit = txtnomeExit
        end
        object wwDBEdit4: TwwDBEdit
          Left = 646
          Top = 64
          Width = 80
          Height = 23
          BorderStyle = bsNone
          DataField = 'Tel_Cliente'
          DataSource = DS_Simulacao
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnEnter = wwDBEdit4Enter
          OnExit = wwDBEdit4Exit
          OnKeyPress = wwDBEdit4KeyPress
        end
        object wwDBGrid1: TwwDBGrid
          Left = 11
          Top = 104
          Width = 740
          Height = 329
          Selected.Strings = (
            'Data_Simul'#9'12'#9'Data'#9'F'
            'Nome_Cliente'#9'50'#9'Cliente'#9'F'
            'DDD'#9'4'#9'DDD'#9'F'
            'Tel_Cliente'#9'10'#9'Telefone'#9'F')
          IniAttributes.Delimiter = ';;'
          TitleColor = clTeal
          FixedCols = 0
          ShowHorzScrollBar = True
          DataSource = DS_Simulacao
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
          ParentFont = False
          TabOrder = 4
          TitleAlignment = taLeftJustify
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWhite
          TitleFont.Height = -19
          TitleFont.Name = 'Arial'
          TitleFont.Style = []
          TitleLines = 1
          TitleButtons = False
          IndicatorColor = icBlack
        end
        object wwDBEdit9: TwwDBEdit
          Left = 598
          Top = 64
          Width = 39
          Height = 23
          BorderStyle = bsNone
          DataField = 'DDD'
          DataSource = DS_Simulacao
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          MaxLength = 2
          ParentFont = False
          TabOrder = 2
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnEnter = wwDBEdit9Enter
          OnExit = txtnomeExit
          OnKeyPress = wwDBEdit9KeyPress
          OnKeyUp = wwDBEdit9KeyUp
        end
        object DBNavigator1: TDBNavigator
          Left = 675
          Top = 7
          Width = 232
          Height = 33
          DataSource = DS_Simulacao
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbPost, nbCancel]
          ConfirmDelete = False
          TabOrder = 6
          Visible = False
          OnClick = DBNavigator1Click
        end
      end
    end
    object TTabPage
      Left = 4
      Top = 29
      Caption = '         Áreas       '
      object Panel3: TPanel
        Left = 2
        Top = 1
        Width = 775
        Height = 449
        BevelInner = bvLowered
        TabOrder = 0
        object Label8: TLabel
          Left = 25
          Top = 230
          Width = 152
          Height = 18
          Caption = 'Paginação da Régua:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 36
          Top = 258
          Width = 141
          Height = 18
          Caption = 'Tamanho da Régua:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label13: TLabel
          Left = 22
          Top = 6
          Width = 53
          Height = 18
          Caption = 'Cliente:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object DBText2: TDBText
          Left = 79
          Top = 6
          Width = 61
          Height = 18
          AutoSize = True
          DataField = 'Nome_Cliente'
          DataSource = DS_Simulacao
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label19: TLabel
          Left = 43
          Top = 422
          Width = 158
          Height = 22
          Caption = 'Total da Área m²:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object Label20: TLabel
          Left = 29
          Top = 56
          Width = 98
          Height = 18
          Caption = '%Filete Estreito'
        end
        object Label22: TLabel
          Left = 432
          Top = 72
          Width = 91
          Height = 26
          Caption = 'Resultado:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -19
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object SpeedButton2: TSpeedButton
          Left = 472
          Top = 40
          Width = 97
          Height = 25
          Caption = '&Calcular'
          Visible = False
        end
        object Label23: TLabel
          Left = 712
          Top = 8
          Width = 49
          Height = 18
          Caption = 'Label23'
          Visible = False
        end
        object DBText15: TDBText
          Left = 556
          Top = 6
          Width = 145
          Height = 25
          DataField = 'Simul_ID'
          DataSource = DS_Simulacao
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label32: TLabel
          Left = 451
          Top = 6
          Width = 98
          Height = 18
          Caption = 'Simulação Nº:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 121
          Top = 201
          Width = 56
          Height = 18
          Caption = 'Padrão:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object GroupBox1: TGroupBox
          Left = 27
          Top = 33
          Width = 373
          Height = 162
          Caption = 'Área'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          object Label7: TLabel
            Left = 46
            Top = 16
            Width = 131
            Height = 18
            Caption = 'Tipo de Instalação:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label10: TLabel
            Left = 48
            Top = 81
            Width = 95
            Height = 18
            Caption = 'Comprimento'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label12: TLabel
            Left = 139
            Top = 135
            Width = 38
            Height = 18
            Caption = 'Área:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label16: TLabel
            Left = 284
            Top = 81
            Width = 13
            Height = 18
            Caption = 'm'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label17: TLabel
            Left = 284
            Top = 108
            Width = 13
            Height = 18
            Caption = 'm'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label18: TLabel
            Left = 284
            Top = 135
            Width = 18
            Height = 18
            Caption = 'm²'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label40: TLabel
            Left = 92
            Top = 108
            Width = 54
            Height = 18
            Alignment = taRightJustify
            Caption = 'Largura'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label31: TLabel
            Left = 145
            Top = 77
            Width = 31
            Height = 22
            Caption = '(C):'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -19
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label39: TLabel
            Left = 148
            Top = 104
            Width = 28
            Height = 22
            Caption = '(L):'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -19
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label41: TLabel
            Left = 7
            Top = 48
            Width = 234
            Height = 18
            Caption = 'Sarrafo ou Perfil Metálico F 530 ?'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object cbotipo: TwwDBComboBox
            Left = 180
            Top = 14
            Width = 178
            Height = 26
            ShowButton = True
            Style = csDropDown
            MapList = True
            AllowClearKey = False
            AutoDropDown = True
            AutoFillDate = False
            AutoSelect = False
            AutoSize = False
            BorderStyle = bsNone
            DataField = 'Tipo_Area'
            DataSource = DS_AreaSimul
            DropDownCount = 8
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
            ItemHeight = 0
            Items.Strings = (
              'Teto'#9'1'
              'Parede Inteira'#9'2'
              'Parede não Inteira'#9'3')
            ParentFont = False
            Sorted = False
            TabOrder = 0
            UnboundDataType = wwDefault
            OnCloseUp = cbotipoCloseUp
            OnEnter = cbotipoEnter
            OnExit = cbotipoExit
          end
          object wwDBEdit6: TwwDBEdit
            Left = 180
            Top = 78
            Width = 97
            Height = 23
            BorderStyle = bsNone
            DataField = 'Comprimento'
            DataSource = DS_AreaSimul
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnEnter = wwDBEdit6Enter
            OnExit = wwDBEdit6Exit
            OnKeyPress = wwDBEdit6KeyPress
          end
          object wwDBEdit7: TwwDBEdit
            Left = 180
            Top = 105
            Width = 97
            Height = 23
            BorderStyle = bsNone
            DataField = 'Largura'
            DataSource = DS_AreaSimul
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnEnter = wwDBEdit7Enter
            OnExit = wwDBEdit7Exit
            OnKeyPress = wwDBEdit6KeyPress
          end
          object wwDBEdit8: TwwDBEdit
            Left = 180
            Top = 132
            Width = 97
            Height = 23
            BorderStyle = bsNone
            DataField = 'Area'
            DataSource = DS_AreaSimul
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnKeyPress = wwDBEdit6KeyPress
          end
          object wwDBComboBox6: TwwDBComboBox
            Left = 244
            Top = 46
            Width = 59
            Height = 23
            ShowButton = True
            Style = csDropDown
            MapList = True
            AllowClearKey = False
            AutoDropDown = True
            BorderStyle = bsNone
            CharCase = ecUpperCase
            DataField = 'COMSARRAFOS'
            DataSource = DS_AREASARRA
            DropDownCount = 8
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
            ItemHeight = 0
            Items.Strings = (
              'SIM'#9'S'
              'NÃO'#9'N')
            ParentFont = False
            Sorted = False
            TabOrder = 1
            UnboundDataType = wwDefault
            OnCloseUp = wwDBComboBox6CloseUp
            OnExit = wwDBComboBox6Exit
          end
          object Panel23: TPanel
            Left = 244
            Top = 43
            Width = 123
            Height = 29
            Alignment = taLeftJustify
            BevelOuter = bvNone
            Caption = 'Sim - Registro antigo'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            Visible = False
          end
          object Panel9: TPanel
            Left = 242
            Top = 46
            Width = 71
            Height = 23
            BevelOuter = bvNone
            Caption = 'Sim'
            Color = clActiveBorder
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            Visible = False
          end
        end
        object cboRegua: TwwDBLookupCombo
          Left = 184
          Top = 254
          Width = 180
          Height = 26
          AutoSize = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          BorderStyle = bsNone
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'Descricao'#9'15'#9'Descricao'#9'F')
          DataField = 'Regua_id'
          DataSource = DS_AreaSimul
          LookupTable = T_Regua
          LookupField = 'Regua_ID'
          AutoSelect = False
          Enabled = False
          ParentFont = False
          TabOrder = 3
          AutoDropDown = False
          ShowButton = True
          AllowClearKey = False
          OnCloseUp = cboReguaCloseUp
          OnEnter = cboReguaEnter
          OnExit = cboReguaExit
        end
        object GroupBox2: TGroupBox
          Left = 425
          Top = 38
          Width = 331
          Height = 116
          TabOrder = 5
          object Label6: TLabel
            Left = 16
            Top = 56
            Width = 111
            Height = 18
            Caption = '%Filete Estreito'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label14: TLabel
            Left = 16
            Top = 88
            Width = 98
            Height = 18
            Caption = '%Filete Largo'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object wwDBEdit3: TwwDBEdit
            Left = 144
            Top = 49
            Width = 81
            Height = 23
            BorderStyle = bsNone
            DataField = 'Fil_Est'
            DataSource = DS_AreaSimul
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnEnter = wwDBEdit6Enter
            OnExit = wwDBEdit3Exit
            OnKeyPress = wwDBEdit3KeyPress
          end
          object wwDBEdit5: TwwDBEdit
            Left = 144
            Top = 84
            Width = 81
            Height = 23
            BorderStyle = bsNone
            DataField = 'Fil_Lar'
            DataSource = DS_AreaSimul
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnEnter = wwDBEdit6Enter
            OnExit = wwDBEdit6Exit
            OnKeyPress = wwDBEdit3KeyPress
          end
        end
        object Grid: TwwDBGrid
          Left = 4
          Top = 282
          Width = 642
          Height = 135
          Selected.Strings = (
            'Tipo_Area'#9'12'#9'Tipo da Área'#9'F'
            'Comprimento'#9'7'#9'Comp.'#9'F'
            'Largura'#9'10'#9'Largura'#9'F'
            'Area'#9'10'#9'Área'#9'F'
            'PDRdesc'#9'15'#9'Padrão'#9'F'
            'Regua'#9'14'#9'Régua'#9'F'
            'DescTpFil'#9'13'#9'Tipo Filete'#9'F')
          IniAttributes.Delimiter = ';;'
          TitleColor = clTeal
          FixedCols = 0
          ShowHorzScrollBar = True
          DataSource = DS_AreaSimul
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          KeyOptions = []
          Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgPerfectRowFit]
          ParentFont = False
          TabOrder = 7
          TitleAlignment = taLeftJustify
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWhite
          TitleFont.Height = -19
          TitleFont.Name = 'Arial'
          TitleFont.Style = []
          TitleLines = 1
          TitleButtons = False
          IndicatorColor = icBlack
        end
        object cboOrientGrid: TwwDBComboBox
          Left = 349
          Top = 325
          Width = 204
          Height = 26
          ShowButton = True
          Style = csDropDown
          MapList = True
          AllowClearKey = False
          AutoDropDown = True
          AutoFillDate = False
          AutoSelect = False
          AutoSize = False
          DataField = 'Orientacao'
          DataSource = DS_AreaSimul
          DropDownCount = 8
          ItemHeight = 0
          Items.Strings = (
            'Vertical'#9'V'
            'Horizontal'#9'H'
            'Diagonal'#9'D')
          Sorted = False
          TabOrder = 6
          UnboundDataType = wwDefault
        end
        object wwDBComboBox3: TwwDBComboBox
          Left = 93
          Top = 275
          Width = 175
          Height = 26
          ShowButton = True
          Style = csDropDown
          MapList = True
          AllowClearKey = False
          AutoDropDown = True
          AutoFillDate = False
          AutoSelect = False
          AutoSize = False
          DataField = 'Tipo_Area'
          DataSource = DS_AreaSimul
          DropDownCount = 8
          ItemHeight = 0
          Items.Strings = (
            'Teto'#9'1'
            'Parede Inteira'#9'2'
            'Parede não Inteira'#9'3')
          Sorted = False
          TabOrder = 8
          UnboundDataType = wwDefault
        end
        object RadioGroup1: TDBRadioGroup
          Left = 425
          Top = 33
          Width = 331
          Height = 49
          Caption = 'Tipo de Filete'
          Columns = 3
          DataField = 'Tipo_Fil'
          DataSource = DS_AreaSimul
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Items.Strings = (
            'Estreito'
            'Largo'
            'Misto')
          ParentFont = False
          TabOrder = 4
          Values.Strings = (
            'E'
            'L'
            'M')
          OnChange = RadioGroup1Change
          OnClick = RadioGroup1Click
        end
        object wwDBComboBox1: TwwDBComboBox
          Left = 301
          Top = 303
          Width = 127
          Height = 26
          ShowButton = True
          Style = csDropDown
          MapList = True
          AllowClearKey = False
          AutoDropDown = True
          AutoFillDate = False
          AutoSelect = False
          AutoSize = False
          DataField = 'Tipo_Fil'
          DataSource = DS_AreaSimul
          DropDownCount = 8
          ItemHeight = 0
          Items.Strings = (
            'Estreito'#9'E'
            'Largo'#9'L'
            'Misto'#9'M')
          Sorted = False
          TabOrder = 9
          UnboundDataType = wwDefault
          OnEnter = cbotipoEnter
          OnExit = cbotipoExit
        end
        object dbTot: TwwDBEdit
          Left = 207
          Top = 420
          Width = 106
          Height = 26
          DataField = 'TOTAREA'
          DataSource = DS_TOTAREA
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBEdit10: TwwDBEdit
          Left = 488
          Top = 296
          Width = 81
          Height = 26
          DataField = 'Num_Fil_Est'
          DataSource = DS_AreaSimul
          TabOrder = 11
          UnboundDataType = wwDefault
          Visible = False
          WantReturns = False
          WordWrap = False
        end
        object wwDBLookupCombo1: TwwDBLookupCombo
          Left = 184
          Top = 197
          Width = 180
          Height = 26
          AutoSize = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          BorderStyle = bsNone
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'PDR_DESCRICAO'#9'15'#9'PDR_DESCRICAO'#9'F')
          DataField = 'Pdr_Id'
          DataSource = DS_AreaSimul
          LookupTable = T_PADRAO
          LookupField = 'PDR_ID'
          AutoSelect = False
          ParentFont = False
          TabOrder = 1
          AutoDropDown = False
          ShowButton = True
          AllowClearKey = False
          OnEnter = cboReguaEnter
          OnExit = cboReguaExit
        end
        object cboorientacao: TwwDBLookupCombo
          Left = 184
          Top = 227
          Width = 180
          Height = 23
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          BorderStyle = bsNone
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'DESCRICAO'#9'15'#9'DESCRICAO'#9'F')
          DataField = 'Orientacao'
          DataSource = DS_AreaSimul
          LookupTable = T_PAG
          LookupField = 'ORIENTACAO'
          AutoSelect = False
          DropDownWidth = 50
          Enabled = False
          ParentFont = False
          TabOrder = 2
          Visible = False
          AutoDropDown = False
          ShowButton = True
          UseTFields = False
          AllowClearKey = False
          OnCloseUp = cboorientacaoCloseUp
          OnEnter = cboorientacaoEnter
          OnExit = cboorientacaoExit
        end
        object DBImage1: TDBImage
          Left = 426
          Top = 166
          Width = 129
          Height = 113
          DataField = 'FIGURA'
          DataSource = DS_PAG
          TabOrder = 12
          Visible = False
        end
        object DBImage2: TDBImage
          Left = 426
          Top = 166
          Width = 129
          Height = 113
          DataField = 'FIGURA'
          DataSource = DS_PAG2
          TabOrder = 13
          Visible = False
        end
        object wwDBLookupCombo2: TwwDBLookupCombo
          Left = 184
          Top = 227
          Width = 180
          Height = 23
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          BorderStyle = bsNone
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'DESCRICAO'#9'15'#9'DESCRICAO'#9'F')
          DataField = 'Orientacao'
          DataSource = DS_AreaSimul
          LookupTable = T_PAG2
          LookupField = 'ORIENTACAO'
          AutoSelect = False
          DropDownWidth = 50
          Enabled = False
          ParentFont = False
          TabOrder = 14
          Visible = False
          AutoDropDown = False
          ShowButton = True
          UseTFields = False
          AllowClearKey = False
          OnCloseUp = wwDBLookupCombo2CloseUp
          OnEnter = wwDBLookupCombo2Enter
          OnExit = wwDBLookupCombo2Exit
        end
        object wwDBComboBox4: TwwDBComboBox
          Left = 700
          Top = 254
          Width = 59
          Height = 23
          ShowButton = True
          Style = csDropDown
          MapList = True
          AllowClearKey = False
          AutoDropDown = True
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'COMSARRAFOS'
          DataSource = DS_AREASARRA
          DropDownCount = 8
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          ItemHeight = 0
          Items.Strings = (
            'SIM'#9'S'
            'NÃO'#9'N')
          ParentFont = False
          Sorted = False
          TabOrder = 15
          UnboundDataType = wwDefault
          OnExit = wwDBComboBox6Exit
        end
        object wwDBGrid2: TwwDBGrid
          Left = 647
          Top = 282
          Width = 125
          Height = 68
          Selected.Strings = (
            'COMSARRAFOS'#9'1'#9'Sarrafo ou Perfil Metálico F 530? ')
          IniAttributes.Delimiter = ';;'
          TitleColor = clTeal
          FixedCols = 0
          ShowHorzScrollBar = True
          DataSource = DS_AREASARRAgrid
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          KeyOptions = []
          Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgPerfectRowFit]
          ParentFont = False
          TabOrder = 16
          TitleAlignment = taLeftJustify
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWhite
          TitleFont.Height = -11
          TitleFont.Name = 'Arial Narrow'
          TitleFont.Style = []
          TitleLines = 1
          TitleButtons = False
          IndicatorColor = icBlack
        end
      end
    end
    object TTabPage
      Left = 4
      Top = 29
      Caption = '         Acabamento         '
      object Panel2: TPanel
        Left = 0
        Top = 1
        Width = 781
        Height = 441
        BevelInner = bvLowered
        TabOrder = 0
        object Label21: TLabel
          Left = 12
          Top = 6
          Width = 53
          Height = 18
          Caption = 'Cliente:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object DBText1: TDBText
          Left = 69
          Top = 6
          Width = 61
          Height = 18
          AutoSize = True
          DataField = 'Nome_Cliente'
          DataSource = DS_Simulacao
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object DBText14: TDBText
          Left = 647
          Top = 6
          Width = 129
          Height = 25
          DataField = 'Simul_ID'
          DataSource = DS_Simulacao
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label30: TLabel
          Left = 542
          Top = 6
          Width = 98
          Height = 18
          Caption = 'Simulação Nº:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label37: TLabel
          Left = 12
          Top = 32
          Width = 131
          Height = 18
          Caption = 'Tipo de Instalação:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label38: TLabel
          Left = 148
          Top = 32
          Width = 95
          Height = 18
          Caption = 'Tipo de Área:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label42: TLabel
          Left = 288
          Top = 7
          Width = 200
          Height = 16
          Caption = 'Sarrafo ou Perfil Metálico F 530'
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object wwDBGrid3: TwwDBGrid
          Left = 4
          Top = 79
          Width = 528
          Height = 284
          Selected.Strings = (
            'desAcab'#9'35'#9'Acabamento'#9'F'
            'Perimetro'#9'8'#9'Mt.Lineares'#9'F'
            'Quant_Barras'#9'6'#9'Qt.Barras'#9'F'
            'PDRdesc'#9'15'#9'Padrão'#9'F')
          IniAttributes.Delimiter = ';;'
          TitleColor = clTeal
          FixedCols = 0
          ShowHorzScrollBar = True
          DataSource = DS_AcabSimul
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          KeyOptions = [dgEnterToTab, dgAllowDelete, dgAllowInsert]
          Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
          ParentFont = False
          TabOrder = 1
          TitleAlignment = taLeftJustify
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWhite
          TitleFont.Height = -13
          TitleFont.Name = 'Arial'
          TitleFont.Style = []
          TitleLines = 1
          TitleButtons = False
          UseTFields = False
          OnColExit = wwDBGrid3ColExit
          OnKeyPress = wwDBGrid3KeyPress
          IndicatorColor = icBlack
        end
        object cboDescAca: TwwDBLookupCombo
          Left = 21
          Top = 160
          Width = 321
          Height = 26
          AutoSize = False
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'Descricao'#9'40'#9'Descricao'#9'F')
          DataField = 'Acab_ID'
          DataSource = DS_AcabSimul
          LookupTable = Q_TPAC
          LookupField = 'Acab_ID'
          TabOrder = 0
          AutoDropDown = False
          ShowButton = True
          AllowClearKey = False
          OnCloseUp = cboDescAcaCloseUp
        end
        object txtperimetro: TwwDBEdit
          Left = 240
          Top = 200
          Width = 105
          Height = 26
          DataField = 'Perimetro'
          DataSource = DS_AcabSimul
          TabOrder = 2
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnEnter = txtperimetroEnter
          OnExit = txtperimetroExit
          OnKeyPress = txtperimetroKeyPress
        end
        object DBImage3: TDBImage
          Left = 535
          Top = 79
          Width = 241
          Height = 283
          BorderStyle = bsNone
          DataField = 'FIGURA'
          DataSource = DS_TPAC
          TabOrder = 3
          OnDblClick = DBImage3DblClick
        end
        object wwDBLookupCombo3: TwwDBLookupCombo
          Left = 69
          Top = 248
          Width = 321
          Height = 26
          AutoSize = False
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'PDR_DESCRICAO'#9'25'#9'PDR_DESCRICAO'#9'F')
          DataField = 'PDR_ID'
          DataSource = DS_AcabSimul
          LookupTable = T_PADRAO2
          LookupField = 'PDR_ID'
          TabOrder = 4
          AutoDropDown = False
          ShowButton = True
          AllowClearKey = False
          OnCloseUp = cboDescAcaCloseUp
        end
      end
    end
    object TTabPage
      Left = 4
      Top = 29
      Caption = '         Simulação         '
      object Panel4: TPanel
        Left = 1
        Top = 2
        Width = 779
        Height = 444
        BevelInner = bvLowered
        TabOrder = 0
        object DBText4: TDBText
          Left = 647
          Top = 6
          Width = 127
          Height = 25
          DataField = 'Simul_ID'
          DataSource = DS_Simulacao
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label25: TLabel
          Left = 542
          Top = 6
          Width = 98
          Height = 18
          Caption = 'Simulação Nº:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label24: TLabel
          Left = 22
          Top = 6
          Width = 53
          Height = 18
          Caption = 'Cliente:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object DBText3: TDBText
          Left = 79
          Top = 6
          Width = 61
          Height = 18
          AutoSize = True
          DataField = 'Nome_Cliente'
          DataSource = DS_Simulacao
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object wwDBComboBox2: TwwDBComboBox
          Left = 333
          Top = 79
          Width = 178
          Height = 26
          ShowButton = True
          Style = csDropDown
          MapList = True
          AllowClearKey = False
          AutoDropDown = True
          AutoFillDate = False
          AutoSelect = False
          AutoSize = False
          BorderStyle = bsNone
          DataField = 'TIPO_AREA'
          DataSource = DS_TOTREGUA
          DropDownCount = 8
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          ItemHeight = 0
          Items.Strings = (
            'Teto'#9'1'
            'Parede Inteira'#9'2'
            'Parede não Inteira'#9'3')
          ParentFont = False
          Sorted = False
          TabOrder = 0
          UnboundDataType = wwDefault
          UnboundAlignment = taCenter
          OnCloseUp = cbotipoCloseUp
          OnEnter = cbotipoEnter
          OnExit = cbotipoExit
        end
        object wwDBGrid4: TwwDBGrid
          Left = 4
          Top = 27
          Width = 633
          Height = 87
          Selected.Strings = (
            'DESCRICAO'#9'25'#9'Régua'
            'PDR_DESCRICAO'#9'18'#9'Padrão'
            'TIPO_AREA'#9'17'#9'Tipo'
            'TotRegua2'#9'5'#9'Qtde.'
            'CAIXAINT'#9'5'#9'Caixas'
            'LARGURA'#9'10'#9'.'
            'COMPRIMENTO'#9'10'#9'.')
          IniAttributes.Delimiter = ';;'
          TitleColor = clTeal
          FixedCols = 0
          ShowHorzScrollBar = True
          DataSource = DS_TOTREGUA
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          KeyOptions = []
          Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
          ParentFont = False
          TabOrder = 1
          TitleAlignment = taCenter
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWhite
          TitleFont.Height = -15
          TitleFont.Name = 'Arial'
          TitleFont.Style = [fsBold]
          TitleLines = 1
          TitleButtons = False
          IndicatorColor = icBlack
        end
        object Panel5: TPanel
          Left = 487
          Top = 29
          Width = 150
          Height = 23
          BevelInner = bvLowered
          BevelOuter = bvSpace
          Caption = 'Dimensões (Larg/Alt por Comp.)'
          Color = clTeal
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object Panel7: TPanel
          Left = 533
          Top = 52
          Width = 25
          Height = 19
          BevelInner = bvLowered
          BevelOuter = bvSpace
          Caption = 'X'
          Color = clTeal
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          Visible = False
        end
        object Panel15: TPanel
          Left = 533
          Top = 72
          Width = 25
          Height = 19
          BevelInner = bvLowered
          BevelOuter = bvSpace
          Caption = 'X'
          Color = clTeal
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          Visible = False
        end
        object Panel16: TPanel
          Left = 533
          Top = 92
          Width = 25
          Height = 19
          BevelInner = bvLowered
          BevelOuter = bvSpace
          Caption = 'X'
          Color = clTeal
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          Visible = False
        end
        object Panel11: TPanel
          Left = 24
          Top = 167
          Width = 716
          Height = 28
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = clWhite
          TabOrder = 6
          object Label26: TLabel
            Left = 156
            Top = 4
            Width = 32
            Height = 16
            Caption = 'Largo'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label28: TLabel
            Left = 466
            Top = 5
            Width = 150
            Height = 18
            Alignment = taCenter
            AutoSize = False
            Caption = 'Label15'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Panel21: TPanel
            Left = 0
            Top = 0
            Width = 716
            Height = 28
            BevelInner = bvSpace
            BevelOuter = bvLowered
            Color = clWhite
            TabOrder = 0
          end
        end
        object Panel10: TPanel
          Left = 24
          Top = 195
          Width = 716
          Height = 28
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = clWhite
          TabOrder = 7
          object Label27: TLabel
            Left = 156
            Top = 4
            Width = 45
            Height = 16
            Caption = 'Estreito'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label29: TLabel
            Left = 466
            Top = 4
            Width = 150
            Height = 18
            Alignment = taCenter
            AutoSize = False
            Caption = 'Label15'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Panel13: TPanel
            Left = 0
            Top = 0
            Width = 716
            Height = 28
            BevelInner = bvSpace
            BevelOuter = bvLowered
            Color = clWhite
            TabOrder = 0
          end
        end
        object Panel8: TPanel
          Left = 24
          Top = 122
          Width = 353
          Height = 44
          BevelInner = bvLowered
          BevelOuter = bvSpace
          Caption = 'Tipo do Filete'
          Color = clTeal
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
        end
        object Panel20: TPanel
          Left = 375
          Top = 122
          Width = 365
          Height = 44
          BevelInner = bvLowered
          BevelOuter = bvSpace
          Caption = 'Padrão'
          Color = clTeal
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
        end
        object Panel12: TPanel
          Left = 24
          Top = 222
          Width = 715
          Height = 44
          BevelInner = bvLowered
          BevelOuter = bvSpace
          Caption = 'Qtde. de Sarrafos (em Metros Lineares)'
          Color = clTeal
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
        end
        object Panel14: TPanel
          Left = 24
          Top = 267
          Width = 716
          Height = 28
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = clWhite
          TabOrder = 11
          object DBText7: TDBText
            Left = 286
            Top = 5
            Width = 150
            Height = 18
            Alignment = taCenter
            DataField = 'TOTSARAFO'
            DataSource = DS_FIL
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label36: TLabel
            Left = 287
            Top = 5
            Width = 154
            Height = 20
            Alignment = taCenter
            AutoSize = False
            Caption = 'Label15'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Visible = False
          end
        end
        object wwDBGrid5: TwwDBGrid
          Left = 23
          Top = 309
          Width = 715
          Height = 131
          Selected.Strings = (
            'DESCRICAO'#9'46'#9'Acabamento'
            'PDR_DESCRICAO'#9'22'#9'Padrão '#9'F'
            'QTDEBARRA'#9'27'#9'Quantidade Unitária')
          IniAttributes.Delimiter = ';;'
          TitleColor = clTeal
          FixedCols = 0
          ShowHorzScrollBar = True
          DataSource = DS_ACABTOT
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          KeyOptions = []
          Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
          ParentFont = False
          TabOrder = 12
          TitleAlignment = taCenter
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWhite
          TitleFont.Height = -19
          TitleFont.Name = 'Arial'
          TitleFont.Style = []
          TitleLines = 1
          TitleButtons = False
          IndicatorColor = icBlack
        end
        object Panel22: TPanel
          Left = 23
          Top = 222
          Width = 719
          Height = 86
          BevelOuter = bvNone
          TabOrder = 13
        end
        object wwDBGrid6: TwwDBGrid
          Left = 636
          Top = 27
          Width = 140
          Height = 62
          Selected.Strings = (
            'COMSARRAFOS'#9'1'#9'Sarrafo ou Perfil Metálico F 530'#9'F')
          IniAttributes.Delimiter = ';;'
          TitleColor = clTeal
          FixedCols = 0
          ShowHorzScrollBar = True
          DataSource = DS_AREASARRAgrid2
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          KeyOptions = []
          Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgPerfectRowFit]
          ParentFont = False
          TabOrder = 14
          TitleAlignment = taLeftJustify
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWhite
          TitleFont.Height = -11
          TitleFont.Name = 'Arial Narrow'
          TitleFont.Style = []
          TitleLines = 1
          TitleButtons = False
          IndicatorColor = icBlack
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 5
    Top = 6
    Width = 783
    Height = 48
    BevelInner = bvLowered
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 107
      Height = 32
      Caption = 'Clientes'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -27
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SBT_SAIR: TSpeedButton
      Left = 689
      Top = 10
      Width = 80
      Height = 30
      Hint = 'Sair'
      Caption = '&Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
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
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SBT_SAIRClick
    end
    object SpeedButton1: TSpeedButton
      Left = 609
      Top = 10
      Width = 80
      Height = 30
      Hint = 'Localização Rápida de Produtos'
      Caption = '&Pesquisa'
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
      OnClick = SpeedButton1Click
    end
    object Bt_Incluir: TSpeedButton
      Left = 211
      Top = 10
      Width = 80
      Height = 30
      Hint = 'Incluir'
      Caption = '&Incluir'
      Enabled = False
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
        333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
        0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
        07333337F33333337F333330FFFFFFFF07333337F33333337F333330FFFFFFFF
        07333FF7F33333337FFFBBB0FFFFFFFF0BB37777F3333333777F3BB0FFFFFFFF
        0BBB3777F3333FFF77773330FFFF000003333337F333777773333330FFFF0FF0
        33333337F3337F37F3333330FFFF0F0B33333337F3337F77FF333330FFFF003B
        B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
        3BB33773333773333773B333333B3333333B7333333733333337}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = Bt_IncluirClick
    end
    object bt_gravar: TSpeedButton
      Left = 372
      Top = 10
      Width = 82
      Height = 30
      Hint = 'Gravar'
      Caption = '&Gravar'
      Enabled = False
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333330070
        7700333333337777777733333333008088003333333377F73377333333330088
        88003333333377FFFF7733333333000000003FFFFFFF77777777000000000000
        000077777777777777770FFFFFFF0FFFFFF07F3333337F3333370FFFFFFF0FFF
        FFF07F3FF3FF7FFFFFF70F00F0080CCC9CC07F773773777777770FFFFFFFF039
        99337F3FFFF3F7F777F30F0000F0F09999937F7777373777777F0FFFFFFFF999
        99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
        99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
        93337FFFF7737777733300000033333333337777773333333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = bt_gravarClick
    end
    object Bt_excluir: TSpeedButton
      Left = 292
      Top = 10
      Width = 80
      Height = 30
      Hint = 'Excluir'
      Caption = '&Excluir'
      Enabled = False
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
        3333333777777777F3333330F777777033333337F3F3F3F7F3333330F0808070
        33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
        33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
        333333F7F7F7F7F7F3F33030F080707030333737F7F7F7F7F7333300F0808070
        03333377F7F7F7F773333330F080707033333337F7F7F7F7F333333070707070
        33333337F7F7F7F7FF3333000000000003333377777777777F33330F88877777
        0333337FFFFFFFFF7F3333000000000003333377777777777333333330777033
        3333333337FFF7F3333333333000003333333333377777333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = Bt_excluirClick
    end
    object Bt_cancelar: TSpeedButton
      Left = 455
      Top = 10
      Width = 80
      Height = 30
      Hint = 'Cancelar'
      Caption = '&Cancelar'
      Enabled = False
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
      OnClick = Bt_cancelarClick
    end
    object SpeedButton4: TSpeedButton
      Left = 536
      Top = 10
      Width = 73
      Height = 30
      Caption = '&Relatorio'
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
      OnClick = SpeedButton4Click
    end
  end
  object DS_Simulacao: TwwDataSource
    DataSet = T_Simulacao
    OnStateChange = DS_SimulacaoStateChange
    OnDataChange = DS_SimulacaoDataChange
    Left = 356
    Top = 328
  end
  object T_Simulacao: TwwTable
    AutoCalcFields = False
    BeforeInsert = T_SimulacaoBeforeInsert
    BeforePost = T_SimulacaoBeforePost
    AfterPost = T_SimulacaoAfterPost
    BeforeDelete = T_SimulacaoBeforeDelete
    AfterDelete = T_SimulacaoAfterDelete
    OnNewRecord = T_SimulacaoNewRecord
    DatabaseName = 'Duratex'
    Filtered = True
    FilterOptions = [foNoPartialCompare]
    DefaultIndex = False
    IndexName = 'Simulacao_Simul_IDx'
    TableName = 'Simulacao.DB'
    PictureMasks.Strings = (
      'Data_Simul'#9'#[#]/#[#]/##[##]'#9'T'#9'F')
    SyncSQLByRange = False
    NarrowSearch = False
    ValidateWithMask = True
    Left = 420
    Top = 264
    object T_SimulacaoSimul_ID: TAutoIncField
      FieldName = 'Simul_ID'
      ReadOnly = True
    end
    object T_SimulacaoData_Simul: TDateField
      FieldName = 'Data_Simul'
    end
    object T_SimulacaoNome_Cliente: TStringField
      FieldName = 'Nome_Cliente'
      Size = 50
    end
    object T_SimulacaoTel_Cliente: TStringField
      FieldName = 'Tel_Cliente'
      EditMask = '!#999-9999;0; '
      Size = 10
    end
    object T_SimulacaoDDD: TFloatField
      FieldName = 'DDD'
    end
  end
  object SBusca: TwwSearchDialog
    Selected.Strings = (
      'Simul_ID'#9'7'#9'Simulação'#9'F'
      'Data_Simul'#9'12'#9'Data'#9'F'
      'Nome_Cliente'#9'37'#9'Cliente'#9'F'
      'Tel_Cliente'#9'20'#9'Telefone'#9'F')
    GridTitleAlignment = taLeftJustify
    GridColor = clWhite
    GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
    SearchTable = T_Simulacao
    Caption = 'Pesquisa de Clientes'
    MaxWidth = 0
    MaxHeight = 209
    CharCase = ecNormal
    Left = 132
    Top = 424
  end
  object T_AreaSimul: TwwTable
    AutoCalcFields = False
    BeforePost = T_AreaSimulBeforePost
    AfterPost = T_AreaSimulAfterPost
    BeforeDelete = T_AreaSimulBeforeDelete
    AfterDelete = T_AreaSimulAfterDelete
    OnCalcFields = T_AreaSimulCalcFields
    OnNewRecord = T_AreaSimulNewRecord
    DatabaseName = 'Duratex'
    TableName = 'Area_Simul.DB'
    ControlType.Strings = (
      'Orientacao;CustomEdit;cboOrientGrid'
      'Tipo_Fil;CustomEdit;wwDBComboBox1'
      'Tipo_Area;CustomEdit;wwDBComboBox3')
    SyncSQLByRange = False
    NarrowSearch = False
    ValidateWithMask = True
    Left = 180
    Top = 350
    object T_AreaSimulTipo_Area: TStringField
      DisplayLabel = 'Tipo da Área'
      DisplayWidth = 12
      FieldName = 'Tipo_Area'
      Size = 4
    end
    object T_AreaSimulComprimento: TFloatField
      DisplayLabel = 'Comp.'
      DisplayWidth = 7
      FieldName = 'Comprimento'
      OnChange = T_AreaSimulComprimentoChange
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object T_AreaSimulLargura: TFloatField
      DisplayWidth = 10
      FieldName = 'Largura'
      OnChange = T_AreaSimulComprimentoChange
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object T_AreaSimulArea: TFloatField
      DisplayLabel = 'Área'
      DisplayWidth = 10
      FieldName = 'Area'
      OnChange = T_AreaSimulAreaChange
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object T_AreaSimulPDRdesc: TStringField
      DisplayLabel = 'Padrão'
      DisplayWidth = 15
      FieldKind = fkLookup
      FieldName = 'PDRdesc'
      LookupDataSet = T_PADRAO
      LookupKeyFields = 'PDR_ID'
      LookupResultField = 'PDR_DESCRICAO'
      KeyFields = 'Pdr_Id'
      Size = 18
      Lookup = True
    end
    object T_AreaSimulRegua: TStringField
      DisplayLabel = 'Régua'
      DisplayWidth = 14
      FieldKind = fkLookup
      FieldName = 'Regua'
      LookupDataSet = T_Regua
      LookupKeyFields = 'Regua_ID'
      LookupResultField = 'Descricao'
      KeyFields = 'Regua_id'
      Size = 40
      Lookup = True
    end
    object T_AreaSimulDescTpFil: TStringField
      DisplayLabel = 'Tipo Filete'
      DisplayWidth = 13
      FieldKind = fkCalculated
      FieldName = 'DescTpFil'
      Size = 30
      Calculated = True
    end
    object T_AreaSimulOrientacao: TStringField
      DisplayLabel = 'Orientação'
      DisplayWidth = 10
      FieldName = 'Orientacao'
      Visible = False
      Size = 1
    end
    object T_AreaSimulArea_Simul_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'Area_Simul_ID'
      ReadOnly = True
      Visible = False
    end
    object T_AreaSimulSimul_ID: TFloatField
      DisplayWidth = 10
      FieldName = 'Simul_ID'
      Visible = False
    end
    object T_AreaSimulTipo_Fil: TStringField
      DisplayLabel = 'Tipo Filete'
      DisplayWidth = 12
      FieldName = 'Tipo_Fil'
      Visible = False
      Size = 1
    end
    object T_AreaSimulFil_Est: TFloatField
      DisplayLabel = '%Fil Estreito'
      DisplayWidth = 10
      FieldName = 'Fil_Est'
      Visible = False
    end
    object T_AreaSimulFil_Lar: TFloatField
      DisplayLabel = '%Fil Largo'
      DisplayWidth = 8
      FieldName = 'Fil_Lar'
      Visible = False
    end
    object T_AreaSimulNum_Sarrafos: TFloatField
      DisplayLabel = 'Sarrafos'
      DisplayWidth = 7
      FieldName = 'Num_Sarrafos'
      Visible = False
    end
    object T_AreaSimulNum_Reguas: TFloatField
      DisplayLabel = 'Régua'
      DisplayWidth = 11
      FieldName = 'Num_Reguas'
      Visible = False
    end
    object T_AreaSimulNum_Fil_Est: TFloatField
      DisplayLabel = 'Fil Est'
      DisplayWidth = 7
      FieldName = 'Num_Fil_Est'
      Visible = False
    end
    object T_AreaSimulNum_Fil_Lar: TFloatField
      DisplayLabel = 'Fil Lar'
      DisplayWidth = 10
      FieldName = 'Num_Fil_Lar'
      Visible = False
    end
    object T_AreaSimulRegua_id: TFloatField
      DisplayLabel = 'Regua'
      DisplayWidth = 10
      FieldName = 'Regua_id'
      Visible = False
    end
    object T_AreaSimulNum_Pres_Fil_Lar: TIntegerField
      FieldName = 'Num_Pres_Fil_Lar'
      Visible = False
    end
    object T_AreaSimulNum_Pres_Fil_Est: TIntegerField
      FieldName = 'Num_Pres_Fil_Est'
      Visible = False
    end
    object T_AreaSimulPdr_Id: TIntegerField
      FieldName = 'Pdr_Id'
      Visible = False
    end
  end
  object DS_AreaSimul: TwwDataSource
    DataSet = T_AreaSimul
    OnStateChange = DS_AreaSimulStateChange
    OnDataChange = DS_AreaSimulDataChange
    Left = 188
    Top = 300
  end
  object T_Regua: TwwTable
    DatabaseName = 'Duratex'
    TableName = 'Regua.db'
    SyncSQLByRange = False
    NarrowSearch = False
    ValidateWithMask = True
    Left = 372
    Top = 462
    object T_ReguaDescricao: TStringField
      DisplayWidth = 15
      FieldName = 'Descricao'
      Size = 40
    end
    object T_ReguaRegua_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'Regua_ID'
      ReadOnly = True
      Visible = False
    end
    object T_ReguaComprimento: TFloatField
      DisplayWidth = 10
      FieldName = 'Comprimento'
      Visible = False
    end
    object T_ReguaLargura: TFloatField
      DisplayWidth = 10
      FieldName = 'Largura'
      Visible = False
    end
    object T_ReguaQuant_Caixa: TFloatField
      DisplayWidth = 10
      FieldName = 'Quant_Caixa'
      Visible = False
    end
  end
  object DS_Acab: TwwDataSource
    DataSet = T_Acab
    Left = 125
    Top = 424
  end
  object T_Acab: TwwTable
    DatabaseName = 'Duratex'
    IndexFieldNames = 'Acab_ID'
    TableName = 'Acabamento.DB'
    ControlType.Strings = (
      'FIGURA;Bitmap;Original Size;Source Copy')
    SyncSQLByRange = False
    NarrowSearch = False
    ValidateWithMask = True
    Left = 132
    Top = 424
    object T_AcabDescricao: TStringField
      DisplayWidth = 40
      FieldName = 'Descricao'
      Size = 40
    end
    object T_AcabFIGURA: TGraphicField
      DisplayWidth = 41
      FieldName = 'FIGURA'
      BlobType = ftGraphic
    end
    object T_AcabAcab_ID: TAutoIncField
      FieldName = 'Acab_ID'
      ReadOnly = True
      Visible = False
    end
    object T_AcabQuant_Unitaria: TFloatField
      FieldName = 'Quant_Unitaria'
      Visible = False
    end
    object T_AcabUnidade: TStringField
      FieldName = 'Unidade'
      Visible = False
      Size = 10
    end
    object T_AcabComprimento: TFloatField
      FieldName = 'Comprimento'
      Visible = False
    end
  end
  object DS_AcabSimul: TwwDataSource
    DataSet = T_AcabSimul
    OnStateChange = DS_AcabSimulStateChange
    OnDataChange = DS_AcabSimulDataChange
    Left = 132
    Top = 424
  end
  object T_AcabSimul: TwwTable
    AfterInsert = T_AcabSimulAfterInsert
    AfterDelete = T_AcabSimulAfterDelete
    OnNewRecord = T_AcabSimulNewRecord
    DatabaseName = 'Duratex'
    IndexName = 'AreaSimul_ID_idx'
    MasterFields = 'Area_Simul_ID'
    MasterSource = DS_AreaSimul
    TableName = 'Acab_Simul.DB'
    ControlType.Strings = (
      'Acab_ID;CustomEdit;cboDescAca'
      'desAcab;CustomEdit;cboDescAca'
      'Perimetro;CustomEdit;txtperimetro'
      'PDRdesc;CustomEdit;wwDBLookupCombo3')
    SyncSQLByRange = False
    NarrowSearch = False
    ValidateWithMask = True
    Left = 268
    Top = 320
    object T_AcabSimuldesAcab: TStringField
      DisplayWidth = 36
      FieldKind = fkLookup
      FieldName = 'desAcab'
      LookupDataSet = T_Acab
      LookupKeyFields = 'Acab_ID'
      LookupResultField = 'Descricao'
      KeyFields = 'Acab_ID'
      Size = 80
      Lookup = True
    end
    object T_AcabSimulAcab_Simul_ID: TAutoIncField
      FieldName = 'Acab_Simul_ID'
      ReadOnly = True
      Visible = False
    end
    object T_AcabSimulArea_Simul_ID: TFloatField
      FieldName = 'Area_Simul_ID'
      Visible = False
    end
    object T_AcabSimulSimul_ID: TFloatField
      DisplayLabel = 'Cod'
      DisplayWidth = 4
      FieldName = 'Simul_ID'
      Visible = False
    end
    object T_AcabSimulQuant_Unidade: TIntegerField
      DisplayWidth = 12
      FieldKind = fkLookup
      FieldName = 'Quant_Unidade'
      LookupDataSet = T_Acab
      LookupKeyFields = 'Acab_ID'
      LookupResultField = 'Quant_Unitaria'
      KeyFields = 'Acab_ID'
      Visible = False
      Lookup = True
    end
    object T_AcabSimulAcab_ID: TFloatField
      FieldName = 'Acab_ID'
      Visible = False
    end
    object T_AcabSimulUNIDADE: TStringField
      FieldKind = fkLookup
      FieldName = 'UNIDADE'
      LookupDataSet = T_Acab
      LookupKeyFields = 'Acab_ID'
      LookupResultField = 'Unidade'
      KeyFields = 'Acab_ID'
      Visible = False
      Lookup = True
    end
    object T_AcabSimulComprimento: TStringField
      FieldKind = fkLookup
      FieldName = 'Comprimento'
      LookupDataSet = T_Acab1
      LookupKeyFields = 'Acab_ID'
      LookupResultField = 'Comprimento'
      KeyFields = 'Acab_ID'
      Visible = False
      Size = 10
      Lookup = True
    end
    object T_AcabSimulQuant_Barras: TFloatField
      FieldName = 'Quant_Barras'
      Visible = False
    end
    object T_AcabSimulPerimetro: TFloatField
      FieldName = 'Perimetro'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object T_AcabSimulPDR_ID: TIntegerField
      FieldName = 'PDR_ID'
    end
    object T_AcabSimulPDRdesc: TStringField
      FieldKind = fkLookup
      FieldName = 'PDRdesc'
      LookupDataSet = T_PADRAO2
      LookupKeyFields = 'PDR_ID'
      LookupResultField = 'PDR_DESCRICAO'
      KeyFields = 'PDR_ID'
      Size = 25
      Lookup = True
    end
  end
  object T_Acab1: TwwTable
    AutoCalcFields = False
    DatabaseName = 'Duratex'
    TableName = 'Acabamento.DB'
    SyncSQLByRange = False
    NarrowSearch = False
    ValidateWithMask = True
    Left = 125
    Top = 424
    object StringField1: TStringField
      DisplayWidth = 40
      FieldName = 'Descricao'
      Size = 40
    end
    object AutoIncField1: TAutoIncField
      DisplayWidth = 10
      FieldName = 'Acab_ID'
      ReadOnly = True
      Visible = False
    end
    object FloatField1: TFloatField
      DisplayWidth = 10
      FieldName = 'Quant_Unitaria'
      Visible = False
    end
    object StringField2: TStringField
      DisplayWidth = 10
      FieldName = 'Unidade'
      Visible = False
      Size = 10
    end
    object FloatField2: TFloatField
      DisplayWidth = 10
      FieldName = 'Comprimento'
      Visible = False
    end
  end
  object T_TOTAREA: TwwTable
    DatabaseName = 'Duratex'
    TableType = ttParadox
    SyncSQLByRange = False
    NarrowSearch = False
    Query.Strings = (
      'SELECT '#9'SUM(AREA) TOTAREA'
      'FROM '#9#9'AREA_SIMUL')
    ValidateWithMask = True
    Left = 131
    Top = 424
    object T_TOTAREATOTAREA: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTAREA'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
  end
  object DS_TOTAREA: TwwDataSource
    DataSet = T_TOTAREA
    OnDataChange = DS_AreaSimulDataChange
    Left = 128
    Top = 424
  end
  object DS_Regua: TwwDataSource
    DataSet = T_Regua
    Left = 125
    Top = 424
  end
  object T_Parametros: TwwTable
    DatabaseName = 'Duratex'
    TableName = 'Parametros.DB'
    SyncSQLByRange = False
    NarrowSearch = False
    ValidateWithMask = True
    Left = 132
    Top = 424
    object T_ParametrosParam_ID: TAutoIncField
      FieldName = 'Param_ID'
      ReadOnly = True
    end
    object T_ParametrosKTeto: TFloatField
      FieldName = 'KTeto'
    end
    object T_ParametrosKParede: TFloatField
      FieldName = 'KParede'
    end
    object T_ParametrosMarSegFil_Est: TFloatField
      FieldName = 'MarSegFil_Est'
    end
    object T_ParametrosMarSegFil_Lar: TFloatField
      FieldName = 'MarSegFil_Lar'
    end
    object T_ParametrosFil_Caixa: TIntegerField
      FieldName = 'Fil_Caixa'
    end
    object T_ParametrosKComprimento12: TFloatField
      FieldName = 'KComprimento1/2'
    end
    object T_ParametrosKComprimento23: TFloatField
      FieldName = 'KComprimento2/3'
    end
    object T_ParametrosQtdePresilha_Metro: TFloatField
      FieldName = 'QtdePresilha_Metro'
    end
    object T_ParametrosFILETE_LARGO: TFloatField
      FieldName = 'FILETE_LARGO'
    end
    object T_ParametrosFILETE_ESTREITO: TFloatField
      FieldName = 'FILETE_ESTREITO'
    end
  end
  object DS_Parametros: TwwDataSource
    DataSet = T_Parametros
    Left = 125
    Top = 424
  end
  object Q_TOTREGUA: TwwQuery
    AutoCalcFields = False
    OnCalcFields = Q_TOTREGUACalcFields
    DatabaseName = 'DURATEX'
    DataSource = DS_Simulacao
    SQL.Strings = (
      'SELECT A.AREA_SIMUL_ID,SUM(A.num_reguas) AS TOTREGUA,A.REGUA_ID,'
      '              SUM(A.num_reguas/B.QUANT_CAIXA) as TOTCAIXA,'
      '              B.DESCRICAO, A.SIMUL_ID,C.PDR_DESCRICAO,'
      '              A.TIPO_AREA, A.COMPRIMENTO,A.LARGURa,A.ORIENTACAO '
      '          '
      '               '
      'FROM    AREA_SIMUL A,REGUA B, PADRAO C'
      'where  '
      '   A.REGUA_Id = B.REGUA_ID and'
      '   C.PDR_Id = A.PDR_ID and '
      '   SIMUL_ID = :SIMUL_ID '
      ''
      '   GROUP BY  A.AREA_SIMUL_ID, A.REGUA_ID,B.DESCRICAO,'
      '   A.SIMUL_ID,C.PDR_DESCRICAO, A.TIPO_AREA,'
      '    A.COMPRIMENTO,A.LARGURA,A.ORIENTACAO'
      ''
      '')
    ControlType.Strings = (
      'TIPO_AREA;CustomEdit;wwDBComboBox2')
    ValidateWithMask = True
    Left = 60
    Top = 339
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'Simul_ID'
        ParamType = ptUnknown
      end>
    object Q_TOTREGUADESCRICAO: TStringField
      DisplayLabel = 'Régua'
      DisplayWidth = 25
      FieldName = 'DESCRICAO'
      Size = 40
    end
    object Q_TOTREGUAPDR_DESCRICAO: TStringField
      DisplayLabel = 'Padrão'
      DisplayWidth = 18
      FieldName = 'PDR_DESCRICAO'
      Size = 25
    end
    object Q_TOTREGUATIPO_AREA: TStringField
      DisplayLabel = 'Tipo'
      DisplayWidth = 17
      FieldName = 'TIPO_AREA'
      Size = 4
    end
    object Q_TOTREGUATotRegua2: TFloatField
      DisplayLabel = 'Qtde.'
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'TotRegua2'
      Calculated = True
    end
    object Q_TOTREGUACAIXAINT: TIntegerField
      DisplayLabel = 'Caixas'
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'CAIXAINT'
      Calculated = True
    end
    object Q_TOTREGUALARGURA: TFloatField
      Alignment = taCenter
      DisplayLabel = '.'
      DisplayWidth = 10
      FieldName = 'LARGURA'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_TOTREGUACOMPRIMENTO: TFloatField
      Alignment = taCenter
      DisplayLabel = '.'
      DisplayWidth = 10
      FieldName = 'COMPRIMENTO'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_TOTREGUAAREA_SIMUL_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'AREA_SIMUL_ID'
      Visible = False
    end
    object Q_TOTREGUATOTREGUA: TFloatField
      DisplayLabel = 'Quantidade erra'
      DisplayWidth = 18
      FieldName = 'TOTREGUA'
      Visible = False
    end
    object Q_TOTREGUATOTCAIXA: TFloatField
      DisplayLabel = 'Caixas'
      DisplayWidth = 23
      FieldName = 'TOTCAIXA'
      Visible = False
    end
    object Q_TOTREGUAREGUA_ID: TFloatField
      DisplayWidth = 10
      FieldName = 'REGUA_ID'
      Visible = False
    end
    object Q_TOTREGUASIMUL_ID: TFloatField
      FieldName = 'SIMUL_ID'
      Visible = False
    end
    object Q_TOTREGUAORIENTACAO: TStringField
      FieldName = 'ORIENTACAO'
      Visible = False
      Size = 1
    end
  end
  object DS_TOTREGUA: TwwDataSource
    DataSet = Q_TOTREGUA
    OnDataChange = DS_TOTREGUADataChange
    Left = 60
    Top = 337
  end
  object Q_FIL: TwwQuery
    AfterOpen = Q_FILAfterOpen
    OnCalcFields = Q_FILCalcFields
    DatabaseName = 'DURATEX'
    DataSource = DS_Simulacao
    SQL.Strings = (
      'select    sum(A.Num_Fil_LAR) as TOTLARGO,'
      '             sum(A.Num_Fil_Est) as TOTEST,'
      '             sum(A.NUM_SARRAFOS) as TOTSARAFO,'
      '             A.SIMUL_ID,'
      '             SUM(A.Num_FIL_LAR)/MIN(B.FIL_CAIXA) as CAIXALARGO,'
      
        '             SUM(A.Num_FIL_EST)/MIN(B.FIL_CAIXA_Est) as CAIXAEST' +
        ','
      '             sum(A.Num_pres_Fil_LAR) as TOTPRESLAR, '
      '             sum(A.Num_pres_Fil_EST) as TOTPRESEST,'
      
        '             sum(A.Num_pres_Fil_LAR) / MIN(B.NUMPRESILHACX_LAR) ' +
        'as TOTCXPRESLAR,'
      
        '             sum(A.Num_pres_Fil_EST)/ MIN(B.NUMPRESILHACX_EST) a' +
        's TOTCXPRESEST,'
      '             B.PARAM_ID'
      'from      area_SIMUL A,PARAMETROS B'
      'where   A.SIMUL_ID = :SIMUL_ID'
      'group by A.SIMUL_ID,B.PARAM_ID'
      '')
    ValidateWithMask = True
    Left = 132
    Top = 425
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'Simul_ID'
        ParamType = ptUnknown
      end>
    object Q_FILTOTLARGO: TFloatField
      FieldName = 'TOTLARGO'
      Origin = 'DURATEX."Area_Simul.DB".Num_Fil_Lar'
      DisplayFormat = '###,###,###'
      EditFormat = '#.###'
    end
    object Q_FILTOTEST: TFloatField
      FieldName = 'TOTEST'
      Origin = 'DURATEX."Area_Simul.DB".Num_Fil_Est'
      DisplayFormat = '###,###,###'
      EditFormat = '#.###'
    end
    object Q_FILTOTSARAFO: TFloatField
      FieldName = 'TOTSARAFO'
      Origin = 'DURATEX."Area_Simul.DB".Num_Sarrafos'
      DisplayFormat = '###,###,###'
      EditFormat = '#.###'
    end
    object Q_FILSIMUL_ID: TFloatField
      FieldName = 'SIMUL_ID'
      Origin = 'DURATEX."Area_Simul.DB".Simul_ID'
    end
    object Q_FILPARAM_ID: TIntegerField
      FieldName = 'PARAM_ID'
    end
    object Q_FILCAIXALARGO2: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'CAIXALARGO2'
      DisplayFormat = '###,###,###'
      EditFormat = '#.###'
      Calculated = True
    end
    object Q_FILCAIXAESTT2: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'CAIXAESTT2'
      DisplayFormat = '###,###,###'
      EditFormat = '#.###'
      Calculated = True
    end
    object Q_FILTOTPRESLAR: TFloatField
      FieldName = 'TOTPRESLAR'
      DisplayFormat = '###,###,###'
      EditFormat = '#.###'
    end
    object Q_FILTOTPRESEST: TFloatField
      FieldName = 'TOTPRESEST'
      DisplayFormat = '###,###,###'
      EditFormat = '#.###'
    end
    object Q_FILTOTCXPRESLAR2: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'TOTCXPRESLAR2'
      DisplayFormat = '###,###,###'
      EditFormat = '#.###'
      Calculated = True
    end
    object Q_FILTOTCXPRESEST2: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'TOTCXPRESEST2'
      DisplayFormat = '###,###,###'
      EditFormat = '#.###'
      Calculated = True
    end
    object Q_FILCAIXALARGO: TFloatField
      FieldName = 'CAIXALARGO'
      DisplayFormat = '###,###,###'
      EditFormat = '#.###'
    end
    object Q_FILCAIXAEST: TFloatField
      FieldName = 'CAIXAEST'
      DisplayFormat = '###,###,###'
      EditFormat = '#.###'
    end
    object Q_FILTOTCXPRESLAR: TFloatField
      FieldName = 'TOTCXPRESLAR'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '#.###'
    end
    object Q_FILTOTCXPRESEST: TFloatField
      FieldName = 'TOTCXPRESEST'
      DisplayFormat = '###,###,###'
      EditFormat = '#.###'
    end
  end
  object DS_FIL: TwwDataSource
    DataSet = Q_FIL
    Left = 125
    Top = 424
  end
  object Q_ACABTOT: TwwQuery
    OnCalcFields = Q_FILCalcFields
    DatabaseName = 'DURATEX'
    DataSource = DS_Simulacao
    SQL.Strings = (
      'select         SUM(A.QUANT_BARRAS) as QTDEBARRA,A.ACAB_Id,'
      '                  A.SIMUL_ID,'
      '                  B.DESCRICAO,C.PDR_DESCRICAO'
      'from           acab_simul A,'
      '                  ACABAMENTO B,PADRAO C'
      'where         A.SIMUL_ID = :SIMUL_ID'
      'and             A.ACAB_Id = B.ACAB_ID'
      'and A.PDR_ID = C.PDR_ID'
      'group by      A.ACAB_Id,'
      '                   A.SIMUL_ID,'
      '                   B.DESCRICAO,C.PDR_DESCRICAO'
      '')
    ValidateWithMask = True
    Left = 397
    Top = 400
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'Simul_ID'
        ParamType = ptUnknown
      end>
    object Q_ACABTOTDESCRICAO: TStringField
      DisplayLabel = 'Acabamento'
      DisplayWidth = 37
      FieldName = 'DESCRICAO'
      Origin = 'DURATEX."ACABAMENTO.DB".Descricao'
      Size = 40
    end
    object Q_ACABTOTPDR_DESCRICAO: TStringField
      DisplayLabel = 'Padrão '
      DisplayWidth = 15
      FieldName = 'PDR_DESCRICAO'
      Origin = 'DURATEX."Padrao.DB".PDR_DESCRICAO'
      Size = 25
    end
    object Q_ACABTOTQTDEBARRA: TFloatField
      DisplayLabel = 'Quantidade Unitária'
      DisplayWidth = 22
      FieldName = 'QTDEBARRA'
      Origin = 'DURATEX."acab_simul.DB".Quant_Barras'
    end
    object Q_ACABTOTACAB_Id: TFloatField
      FieldName = 'ACAB_Id'
      Origin = 'DURATEX."acab_simul.DB".Acab_ID'
      Visible = False
    end
    object Q_ACABTOTSIMUL_ID: TFloatField
      FieldName = 'SIMUL_ID'
      Origin = 'DURATEX."acab_simul.DB".Simul_ID'
      Visible = False
    end
  end
  object DS_ACABTOT: TwwDataSource
    DataSet = Q_ACABTOT
    Left = 125
    Top = 424
  end
  object T_AREASIMULaux: TwwTable
    AutoCalcFields = False
    DatabaseName = 'Duratex'
    IndexFieldNames = 'Area_Simul_ID'
    MasterFields = 'Area_Simul_ID'
    MasterSource = DS_AreaSimul
    TableName = 'Area_Simul.DB'
    ControlType.Strings = (
      'Orientacao;CustomEdit;cboOrientGrid'
      'Tipo_Fil;CustomEdit;wwDBComboBox1'
      'Tipo_Area;CustomEdit;wwDBComboBox3')
    SyncSQLByRange = False
    NarrowSearch = False
    ValidateWithMask = True
    Left = 125
    Top = 424
    object T_AREASIMULauxArea_Simul_ID: TAutoIncField
      FieldName = 'Area_Simul_ID'
      ReadOnly = True
    end
    object T_AREASIMULauxSimul_ID: TFloatField
      FieldName = 'Simul_ID'
    end
    object T_AREASIMULauxTipo_Area: TStringField
      FieldName = 'Tipo_Area'
      Size = 4
    end
    object T_AREASIMULauxComprimento: TFloatField
      FieldName = 'Comprimento'
    end
    object T_AREASIMULauxLargura: TFloatField
      FieldName = 'Largura'
    end
    object T_AREASIMULauxArea: TFloatField
      FieldName = 'Area'
    end
    object T_AREASIMULauxRegua_id: TFloatField
      FieldName = 'Regua_id'
    end
    object T_AREASIMULauxFil_Est: TFloatField
      FieldName = 'Fil_Est'
    end
    object T_AREASIMULauxFil_Lar: TFloatField
      FieldName = 'Fil_Lar'
    end
    object T_AREASIMULauxOrientacao: TStringField
      FieldName = 'Orientacao'
      Size = 1
    end
    object T_AREASIMULauxTipo_Fil: TStringField
      FieldName = 'Tipo_Fil'
      Size = 1
    end
    object T_AREASIMULauxNum_Sarrafos: TFloatField
      FieldName = 'Num_Sarrafos'
    end
    object T_AREASIMULauxNum_Reguas: TFloatField
      FieldName = 'Num_Reguas'
    end
    object T_AREASIMULauxNum_Caixas_Regua: TFloatField
      FieldName = 'Num_Caixas_Regua'
    end
    object T_AREASIMULauxNum_Fil_Lar: TFloatField
      FieldName = 'Num_Fil_Lar'
    end
    object T_AREASIMULauxNum_Caixas_Fil_Lar: TFloatField
      FieldName = 'Num_Caixas_Fil_Lar'
    end
    object T_AREASIMULauxNum_Fil_Est: TFloatField
      FieldName = 'Num_Fil_Est'
    end
    object T_AREASIMULauxNum_Caixas_Fil_Est: TFloatField
      FieldName = 'Num_Caixas_Fil_Est'
    end
    object T_AREASIMULauxNum_Caixas_Pres_Fil_Lar: TFloatField
      FieldName = 'Num_Caixas_Pres_Fil_Lar'
    end
    object T_AREASIMULauxNum_Pres_Parede: TFloatField
      FieldName = 'Num_Pres_Parede'
    end
    object T_AREASIMULauxNum_Caixas_Pres_Parede: TFloatField
      FieldName = 'Num_Caixas_Pres_Parede'
    end
    object T_AREASIMULauxNum_Pres_Fil_Lar: TIntegerField
      FieldName = 'Num_Pres_Fil_Lar'
    end
    object T_AREASIMULauxNum_Pres_Fil_Est: TIntegerField
      FieldName = 'Num_Pres_Fil_Est'
    end
  end
  object Timer1: TTimer
    Interval = 500
    OnTimer = Timer1Timer
    Left = 128
    Top = 424
  end
  object Q_TPAC: TwwQuery
    DatabaseName = 'DURATEX'
    SQL.Strings = (
      'SELECT * FROM ACABAMENTO '
      'ORDER BY DESCRICAO')
    ValidateWithMask = True
    Left = 444
    Top = 310
    object Q_TPACDescricao: TStringField
      DisplayWidth = 40
      FieldName = 'Descricao'
      Origin = 'DURATEX."Acabamento.DB".Descricao'
      Size = 40
    end
    object Q_TPACAcab_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'Acab_ID'
      Origin = 'DURATEX."Acabamento.DB".Acab_ID'
      Visible = False
    end
    object Q_TPACQuant_Unitaria: TFloatField
      DisplayWidth = 10
      FieldName = 'Quant_Unitaria'
      Origin = 'DURATEX."Acabamento.DB".Quant_Unitaria'
      Visible = False
    end
    object Q_TPACUnidade: TStringField
      DisplayWidth = 10
      FieldName = 'Unidade'
      Origin = 'DURATEX."Acabamento.DB".Unidade'
      Visible = False
      Size = 10
    end
    object Q_TPACComprimento: TFloatField
      DisplayWidth = 10
      FieldName = 'Comprimento'
      Origin = 'DURATEX."Acabamento.DB".Comprimento'
      Visible = False
    end
    object Q_TPACFIGURA: TGraphicField
      FieldName = 'FIGURA'
      Origin = 'DURATEX."Acabamento.DB".FIGURA'
      BlobType = ftGraphic
    end
    object Q_TPACTIPO_AREA1: TStringField
      FieldName = 'TIPO_AREA1'
      Origin = 'DURATEX."Acabamento.DB".TIPO_AREA1'
      Size = 1
    end
    object Q_TPACTIPO_AREA2: TStringField
      FieldName = 'TIPO_AREA2'
      Origin = 'DURATEX."Acabamento.DB".TIPO_AREA2'
      Size = 1
    end
    object Q_TPACTIPO_AREA3: TStringField
      FieldName = 'TIPO_AREA3'
      Origin = 'DURATEX."Acabamento.DB".TIPO_AREA3'
      Size = 1
    end
    object Q_TPACCOMSARRAFO: TStringField
      FieldName = 'COMSARRAFO'
      Origin = 'DURATEX."Acabamento.DB".COMSARRAFO'
      Size = 1
    end
  end
  object DS_TPAC: TwwDataSource
    DataSet = Q_TPAC
    Left = 499
    Top = 344
  end
  object T_PADRAO: TwwTable
    DatabaseName = 'DURATEX'
    TableName = 'Padrao.db'
    SyncSQLByRange = False
    NarrowSearch = False
    ValidateWithMask = True
    Left = 124
    Top = 424
    object T_PADRAOPDR_DESCRICAO: TStringField
      DisplayWidth = 15
      FieldName = 'PDR_DESCRICAO'
      Size = 25
    end
    object T_PADRAOPDR_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'PDR_ID'
      ReadOnly = True
      Visible = False
    end
  end
  object DS_PADRAO: TwwDataSource
    DataSet = T_PADRAO
    Left = 124
    Top = 424
  end
  object T_PAG: TwwTable
    DatabaseName = 'DURATEX'
    Filter = 'TIPO_AREA = '#39'2'#39
    Filtered = True
    TableName = 'Paginacao.DB'
    ControlType.Strings = (
      'FIGURA;Bitmap;Original Size;Source Copy')
    SyncSQLByRange = False
    NarrowSearch = False
    ValidateWithMask = True
    Left = 500
    Top = 392
    object T_PAGDESCRICAO: TStringField
      DisplayLabel = 'Descricao'
      DisplayWidth = 40
      FieldName = 'DESCRICAO'
      Size = 15
    end
    object T_PAGFIGURA: TGraphicField
      DisplayWidth = 41
      FieldName = 'FIGURA'
      BlobType = ftGraphic
    end
    object T_PAGTIPO_AREA: TStringField
      DisplayWidth = 4
      FieldName = 'TIPO_AREA'
      Visible = False
      Size = 4
    end
    object T_PAGORIENTACAO: TStringField
      FieldName = 'ORIENTACAO'
      Visible = False
      Size = 1
    end
    object T_PAGPERDA: TFloatField
      FieldName = 'PERDA'
    end
  end
  object DS_PAG: TwwDataSource
    DataSet = T_PAG
    Left = 124
    Top = 424
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Filter = 
      'Todos (*.bmp;*.ico;*.emf;*.wmf,*.gif)|*.bmp;*.ico;*.emf;*.wmf,*.' +
      'gif|Bitmaps (*.bmp)|*.bmp|Ícones (*.ico)|*.ico|Metafiles avançad' +
      'os (*.emf)|*.emf|Metafiles (*.wmf)|*.wmf'
    Left = 124
    Top = 424
  end
  object T_PAG2: TwwTable
    DatabaseName = 'DURATEX'
    Filter = 'TIPO_AREA = '#39'1'#39
    Filtered = True
    TableName = 'Paginacao.DB'
    ControlType.Strings = (
      'FIGURA;Bitmap;Original Size;Source Copy')
    SyncSQLByRange = False
    NarrowSearch = False
    ValidateWithMask = True
    Left = 505
    Top = 440
    object StringField3: TStringField
      DisplayWidth = 15
      FieldName = 'DESCRICAO'
      Size = 15
    end
    object GraphicField1: TGraphicField
      DisplayWidth = 50
      FieldName = 'FIGURA'
      BlobType = ftGraphic
    end
    object StringField4: TStringField
      DisplayWidth = 4
      FieldName = 'TIPO_AREA'
      Visible = False
      Size = 4
    end
    object StringField5: TStringField
      FieldName = 'ORIENTACAO'
      Visible = False
      Size = 1
    end
    object T_PAG2PERDA: TFloatField
      FieldName = 'PERDA'
    end
  end
  object DS_PAG2: TwwDataSource
    DataSet = T_PAG2
    Left = 124
    Top = 424
  end
  object T_PADRAO2: TwwTable
    DatabaseName = 'DURATEX'
    TableName = 'Padrao.db'
    SyncSQLByRange = False
    NarrowSearch = False
    ValidateWithMask = True
    Left = 124
    Top = 424
    object T_PADRAO2PDR_DESCRICAO: TStringField
      DisplayWidth = 25
      FieldName = 'PDR_DESCRICAO'
      Size = 25
    end
    object T_PADRAO2PDR_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'PDR_ID'
      ReadOnly = True
      Visible = False
    end
  end
  object DS_PADRAO2: TwwDataSource
    DataSet = T_PADRAO2
    Left = 132
    Top = 480
  end
  object Q_AUX: TwwQuery
    DatabaseName = 'DURATEX'
    SQL.Strings = (
      ''
      'SELECT SQRT (Square(3))')
    ValidateWithMask = True
    Left = 256
    Top = 439
  end
  object T_TESTE: TwwTable
    DatabaseName = 'Duratex'
    TableName = 'Acabamento.DB'
    SyncSQLByRange = False
    NarrowSearch = False
    ValidateWithMask = True
    Left = 491
    Top = 320
    object T_TESTEAcab_ID: TAutoIncField
      FieldName = 'Acab_ID'
      ReadOnly = True
    end
    object T_TESTEDescricao: TStringField
      FieldName = 'Descricao'
      Size = 60
    end
    object T_TESTEQuant_Unitaria: TFloatField
      FieldName = 'Quant_Unitaria'
    end
    object T_TESTEUnidade: TStringField
      FieldName = 'Unidade'
      Size = 10
    end
    object T_TESTEComprimento: TFloatField
      FieldName = 'Comprimento'
    end
    object T_TESTEFIGURA: TGraphicField
      FieldName = 'FIGURA'
      BlobType = ftGraphic
    end
    object T_TESTETIPO_AREA1: TStringField
      FieldName = 'TIPO_AREA1'
      Size = 1
    end
    object T_TESTETIPO_AREA2: TStringField
      FieldName = 'TIPO_AREA2'
      Size = 1
    end
    object T_TESTETIPO_AREA3: TStringField
      FieldName = 'TIPO_AREA3'
      Size = 1
    end
    object T_TESTECOMSARRAFO: TStringField
      FieldName = 'COMSARRAFO'
      Size = 1
    end
  end
  object Q_AUX2: TwwQuery
    DatabaseName = 'Duratex'
    SessionName = 'Default'
    ValidateWithMask = True
    Left = 406
    Top = 357
  end
  object T_ULT: TwwTable
    DatabaseName = 'Duratex'
    TableName = 'Ultimos.db'
    SyncSQLByRange = False
    NarrowSearch = False
    ValidateWithMask = True
    Left = 567
    Top = 379
    object T_ULTULT_ACAB_SIMUL_ID: TIntegerField
      FieldName = 'ULT_ACAB_SIMUL_ID'
    end
    object T_ULTULT_AREA_SIMUL_ID: TIntegerField
      FieldName = 'ULT_AREA_SIMUL_ID'
    end
  end
  object T_AREASARRA: TwwTable
    DatabaseName = 'Duratex'
    IndexFieldNames = 'SIMUL_ID;AREA_SIMUL_ID'
    MasterFields = 'Simul_ID;Area_Simul_ID'
    MasterSource = DS_AreaSimul
    TableName = 'AREA_SARRAFO.db'
    ControlType.Strings = (
      'COMSARRAFOS;CustomEdit;wwDBComboBox4')
    SyncSQLByRange = False
    NarrowSearch = False
    ValidateWithMask = True
    Left = 264
    Top = 323
    object T_AREASARRACOMSARRAFOS: TStringField
      DisplayLabel = 'Sarrafos?'
      DisplayWidth = 1
      FieldName = 'COMSARRAFOS'
      Size = 1
    end
    object T_AREASARRAAREA_SIMUL_ID: TIntegerField
      FieldName = 'AREA_SIMUL_ID'
      Visible = False
    end
    object T_AREASARRASIMUL_ID: TIntegerField
      FieldName = 'SIMUL_ID'
      Visible = False
    end
  end
  object DS_AREASARRA: TwwDataSource
    DataSet = T_AREASARRA
    Left = 636
    Top = 340
  end
  object Q_AREASARRAgrid: TwwQuery
    DatabaseName = 'DURATEX'
    DataSource = DS_AreaSimul
    SQL.Strings = (
      'SELECT * FROM AREA_SARRAFO'
      'where SIMUL_ID = :SIMUL_ID '
      'and    AREA_SIMUL_ID = :AREA_SIMUL_ID')
    ControlType.Strings = (
      'COMSARRAFOS;CustomEdit;wwDBComboBox4')
    ValidateWithMask = True
    Left = 679
    Top = 318
    ParamData = <
      item
        DataType = ftFloat
        Name = 'Simul_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftAutoInc
        Name = 'Area_Simul_ID'
        ParamType = ptUnknown
      end>
    object Q_AREASARRAgridCOMSARRAFOS: TStringField
      DisplayLabel = 'Sarrafo ou Perfil Metálico F 530? '
      DisplayWidth = 1
      FieldName = 'COMSARRAFOS'
      Origin = 'DURATEX."AREA_SARRAFO.DB".COMSARRAFOS'
      Size = 1
    end
    object Q_AREASARRAgridSIMUL_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'SIMUL_ID'
      Origin = 'DURATEX."AREA_SARRAFO.DB".SIMUL_ID'
      Visible = False
    end
    object Q_AREASARRAgridAREA_SIMUL_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'AREA_SIMUL_ID'
      Origin = 'DURATEX."AREA_SARRAFO.DB".AREA_SIMUL_ID'
      Visible = False
    end
  end
  object DS_AREASARRAgrid: TwwDataSource
    DataSet = Q_AREASARRAgrid
    OnStateChange = DS_AreaSimulStateChange
    OnDataChange = DS_AreaSimulDataChange
    Left = 729
    Top = 372
  end
  object Q_AREASARRAgrid2: TwwQuery
    DatabaseName = 'DURATEX'
    DataSource = DS_TOTREGUA
    SQL.Strings = (
      'SELECT * FROM AREA_SARRAFO'
      'where SIMUL_ID = :SIMUL_ID '
      'and    AREA_SIMUL_ID = :AREA_SIMUL_ID')
    ControlType.Strings = (
      'COMSARRAFOS;CustomEdit;wwDBComboBox4')
    ValidateWithMask = True
    Left = 575
    Top = 318
    ParamData = <
      item
        DataType = ftFloat
        Name = 'SIMUL_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'AREA_SIMUL_ID'
        ParamType = ptUnknown
      end>
    object StringField6: TStringField
      DisplayLabel = 'Sarrafo ou Perfil Metálico F 530'
      DisplayWidth = 1
      FieldName = 'COMSARRAFOS'
      Origin = 'DURATEX."AREA_SARRAFO.DB".COMSARRAFOS'
      Size = 1
    end
    object IntegerField1: TIntegerField
      DisplayWidth = 10
      FieldName = 'SIMUL_ID'
      Origin = 'DURATEX."AREA_SARRAFO.DB".SIMUL_ID'
      Visible = False
    end
    object IntegerField2: TIntegerField
      DisplayWidth = 10
      FieldName = 'AREA_SIMUL_ID'
      Origin = 'DURATEX."AREA_SARRAFO.DB".AREA_SIMUL_ID'
      Visible = False
    end
  end
  object DS_AREASARRAgrid2: TwwDataSource
    DataSet = Q_AREASARRAgrid2
    OnStateChange = DS_AreaSimulStateChange
    OnDataChange = DS_AreaSimulDataChange
    Left = 545
    Top = 284
  end
  object T_AreaSimul2: TwwTable
    AutoCalcFields = False
    BeforePost = T_AreaSimulBeforePost
    AfterPost = T_AreaSimulAfterPost
    BeforeDelete = T_AreaSimulBeforeDelete
    AfterDelete = T_AreaSimulAfterDelete
    OnCalcFields = T_AreaSimulCalcFields
    OnNewRecord = T_AreaSimulNewRecord
    DatabaseName = 'Duratex'
    TableName = 'Area_Simul.DB'
    ControlType.Strings = (
      'Orientacao;CustomEdit;cboOrientGrid'
      'Tipo_Fil;CustomEdit;wwDBComboBox1'
      'Tipo_Area;CustomEdit;wwDBComboBox3')
    SyncSQLByRange = False
    NarrowSearch = False
    ValidateWithMask = True
    Left = 356
    Top = 231
    object T_AreaSimul2Area_Simul_ID: TAutoIncField
      FieldName = 'Area_Simul_ID'
      ReadOnly = True
    end
    object T_AreaSimul2Simul_ID: TFloatField
      FieldName = 'Simul_ID'
    end
    object T_AreaSimul2Tipo_Area: TStringField
      FieldName = 'Tipo_Area'
      Size = 4
    end
    object T_AreaSimul2Comprimento: TFloatField
      FieldName = 'Comprimento'
    end
    object T_AreaSimul2Largura: TFloatField
      FieldName = 'Largura'
    end
    object T_AreaSimul2Area: TFloatField
      FieldName = 'Area'
    end
    object T_AreaSimul2Regua_id: TFloatField
      FieldName = 'Regua_id'
    end
    object T_AreaSimul2Fil_Est: TFloatField
      FieldName = 'Fil_Est'
    end
    object T_AreaSimul2Fil_Lar: TFloatField
      FieldName = 'Fil_Lar'
    end
    object T_AreaSimul2Orientacao: TStringField
      FieldName = 'Orientacao'
      Size = 1
    end
    object T_AreaSimul2Tipo_Fil: TStringField
      FieldName = 'Tipo_Fil'
      Size = 1
    end
    object T_AreaSimul2Num_Sarrafos: TFloatField
      FieldName = 'Num_Sarrafos'
    end
    object T_AreaSimul2Num_Reguas: TFloatField
      FieldName = 'Num_Reguas'
    end
    object T_AreaSimul2Num_Caixas_Regua: TFloatField
      FieldName = 'Num_Caixas_Regua'
    end
    object T_AreaSimul2Num_Fil_Lar: TFloatField
      FieldName = 'Num_Fil_Lar'
    end
    object T_AreaSimul2Num_Caixas_Fil_Lar: TFloatField
      FieldName = 'Num_Caixas_Fil_Lar'
    end
    object T_AreaSimul2Num_Fil_Est: TFloatField
      FieldName = 'Num_Fil_Est'
    end
    object T_AreaSimul2Num_Caixas_Fil_Est: TFloatField
      FieldName = 'Num_Caixas_Fil_Est'
    end
    object T_AreaSimul2Num_Caixas_Pres_Fil_Lar: TFloatField
      FieldName = 'Num_Caixas_Pres_Fil_Lar'
    end
    object T_AreaSimul2Num_Pres_Parede: TFloatField
      FieldName = 'Num_Pres_Parede'
    end
    object T_AreaSimul2Num_Caixas_Pres_Parede: TFloatField
      FieldName = 'Num_Caixas_Pres_Parede'
    end
    object T_AreaSimul2Num_Pres_Fil_Lar: TIntegerField
      FieldName = 'Num_Pres_Fil_Lar'
    end
    object T_AreaSimul2Num_Pres_Fil_Est: TIntegerField
      FieldName = 'Num_Pres_Fil_Est'
    end
    object T_AreaSimul2Pdr_Id: TIntegerField
      FieldName = 'Pdr_Id'
    end
  end
end
