object FArea: TFArea
  Left = 225
  Top = 165
  BorderIcons = []
  BorderStyle = bsSingle
  ClientHeight = 426
  ClientWidth = 696
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
    Left = 8
    Top = 5
    Width = 671
    Height = 45
    BevelInner = bvLowered
    TabOrder = 0
    object Label4: TLabel
      Left = 16
      Top = 6
      Width = 309
      Height = 29
      Caption = #193'rea de Armazenamento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -24
      Font.Name = 'Georgia'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object SpeedButton1: TSpeedButton
      Left = 610
      Top = 10
      Width = 25
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
    object SpeedButton3: TSpeedButton
      Left = 636
      Top = 10
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
    object DBNavigator1: TDBNavigator
      Left = 418
      Top = 10
      Width = 192
      Height = 25
      DataSource = DS_AREA
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
    end
  end
  object TabbedNotebook1: TTabbedNotebook
    Left = 6
    Top = 55
    Width = 675
    Height = 362
    PageIndex = 1
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
      object Panel6: TPanel
        Left = 3
        Top = 21
        Width = 659
        Height = 284
        BevelInner = bvSpace
        BevelOuter = bvLowered
        BevelWidth = 3
        Color = clSilver
        TabOrder = 0
        object Label25: TLabel
          Left = 26
          Top = 38
          Width = 97
          Height = 15
          Caption = 'Controla Posi'#231#227'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 90
          Top = 12
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
        object Label30: TLabel
          Left = 289
          Top = 66
          Width = 113
          Height = 15
          Caption = 'Empilhamento MAX.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object Label10: TLabel
          Left = 289
          Top = 41
          Width = 112
          Height = 15
          Caption = 'Empilhamento Livre'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 65
          Top = 66
          Width = 58
          Height = 15
          Caption = 'Dispon'#237'vel'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 72
          Top = 92
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
        object wwDBEdit3: TwwDBEdit
          Left = 126
          Top = 10
          Width = 339
          Height = 21
          BorderStyle = bsNone
          DataField = 'AR_NOME'
          DataSource = DS_AREA
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
          OnEnter = wwDBEdit3Enter
          OnExit = wwDBEdit3Exit
        end
        object wwDBComboBox3: TwwDBComboBox
          Left = 126
          Top = 37
          Width = 63
          Height = 21
          Cursor = crDrag
          ShowButton = True
          Style = csDropDown
          MapList = True
          AllowClearKey = False
          AutoDropDown = True
          BorderStyle = bsNone
          ButtonStyle = cbsEllipsis
          DataField = 'AR_CONTROL_POS'
          DataSource = DS_AREA
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
          ItemIndex = 0
          ParentFont = False
          Sorted = False
          TabOrder = 1
          UnboundDataType = wwDefault
          OnEnter = wwDBComboBox3Enter
          OnExit = wwDBComboBox3Exit
        end
        object DBG_RAAT: TwwDBGrid
          Left = 13
          Top = 116
          Width = 634
          Height = 153
          Hint = 'Visualiza'#231#227'o dos Registros'
          DittoAttributes.ShortCutDittoField = 0
          DittoAttributes.ShortCutDittoRecord = 0
          DittoAttributes.Options = []
          DisableThemesInTitle = False
          Selected.Strings = (
            'AR_NOME'#9'42'#9'Nome'
            'AR_CONTROL_POS'#9'1'#9'Controla S/N'
            'AR_EMPILHA_LIVRE'#9'1'#9'Emp. Livre'
            'AR_EMPILHA_MAX'#9'1'#9'Emp. MAX.'
            'EmpNOME'#9'23'#9'Empresa')
          IniAttributes.FileName = 'delphi32.ini'
          IniAttributes.SectionName = 'FAreaDBG_RAAT'
          IniAttributes.Delimiter = ';;'
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          DataSource = DS_AREA
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
          TabOrder = 5
          TitleAlignment = taCenter
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clNavy
          TitleFont.Height = -11
          TitleFont.Name = 'Arial'
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
        object wwDBComboBox1: TwwDBComboBox
          Left = 294
          Top = 129
          Width = 63
          Height = 23
          Cursor = crDrag
          ShowButton = True
          Style = csDropDown
          MapList = True
          AllowClearKey = False
          AutoDropDown = True
          ButtonStyle = cbsEllipsis
          DataField = 'AR_CONTROL_POS'
          DataSource = DS_AREA
          DropDownCount = 8
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Georgia'
          Font.Style = []
          ItemHeight = 0
          Items.Strings = (
            'Sim'#9'S'
            'N'#227'o'#9'N')
          ItemIndex = 0
          ParentFont = False
          Sorted = False
          TabOrder = 6
          UnboundDataType = wwDefault
        end
        object wwDBEdit9: TwwDBEdit
          Left = 406
          Top = 64
          Width = 60
          Height = 21
          BorderStyle = bsNone
          DataField = 'AR_EMPILHA_MAX'
          DataSource = DS_AREA
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
          OnEnter = wwDBEdit9Enter
          OnExit = wwDBEdit9Exit
        end
        object EmpLIVRE: TwwDBComboBox
          Left = 406
          Top = 37
          Width = 60
          Height = 21
          ShowButton = True
          Style = csDropDown
          MapList = True
          AllowClearKey = False
          BorderStyle = bsNone
          ButtonStyle = cbsEllipsis
          DataField = 'AR_EMPILHA_LIVRE'
          DataSource = DS_AREA
          DropDownCount = 8
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ItemHeight = 0
          Items.Strings = (
            'Sim'#9'S'
            'N'#227'o'#9'N')
          ItemIndex = 1
          ParentFont = False
          Sorted = False
          TabOrder = 2
          UnboundDataType = wwDefault
          OnEnter = EmpLIVREEnter
          OnExit = EmpLIVREExit
        end
        object wwDBComboBox2: TwwDBComboBox
          Left = 174
          Top = 129
          Width = 63
          Height = 23
          Cursor = crDrag
          ShowButton = True
          Style = csDropDown
          MapList = True
          AllowClearKey = False
          AutoDropDown = True
          ButtonStyle = cbsEllipsis
          DataField = 'AR_EMPILHA_LIVRE'
          DataSource = DS_AREA
          DropDownCount = 8
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Georgia'
          Font.Style = []
          ItemHeight = 0
          Items.Strings = (
            'Sim'#9'S'
            'N'#227'o'#9'N')
          ItemIndex = 1
          ParentFont = False
          Sorted = False
          TabOrder = 7
          UnboundDataType = wwDefault
        end
        object wwDBComboBox4: TwwDBComboBox
          Left = 126
          Top = 64
          Width = 63
          Height = 21
          Cursor = crDrag
          ShowButton = True
          Style = csDropDown
          MapList = True
          AllowClearKey = False
          AutoDropDown = True
          BorderStyle = bsNone
          ButtonStyle = cbsEllipsis
          DataField = 'AR_DISPONIVEL'
          DataSource = DS_AREA
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
          ItemIndex = 0
          ParentFont = False
          Sorted = False
          TabOrder = 3
          UnboundDataType = wwDefault
          OnEnter = wwDBComboBox4Enter
          OnExit = wwDBComboBox4Exit
        end
        object wwDBLookupCombo1: TwwDBLookupCombo
          Left = 126
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
            'PAR_NOME'#9'30'#9'PAR_NOME'#9'F')
          DataField = 'PAR_ID'
          DataSource = DS_AREA
          LookupTable = Q_PAR
          LookupField = 'PAR_ID'
          ParentFont = False
          TabOrder = 8
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
    object TTabPage
      Left = 4
      Top = 24
      Caption = '   Posi'#231#245'es por '#193'rea     '
      object Label15: TLabel
        Left = 12
        Top = 13
        Width = 141
        Height = 15
        Caption = #193'rea de Armazenamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText3: TDBText
        Left = 159
        Top = 12
        Width = 349
        Height = 17
        DataField = 'AR_NOME'
        DataSource = DS_AREA
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Panel4: TPanel
        Left = 9
        Top = 37
        Width = 646
        Height = 284
        BevelInner = bvSpace
        BevelOuter = bvLowered
        BevelWidth = 3
        Color = clSilver
        TabOrder = 0
        Visible = False
        object Label19: TLabel
          Left = 112
          Top = 41
          Width = 77
          Height = 15
          Caption = 'Peso M'#225'ximo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 84
          Top = 15
          Width = 105
          Height = 15
          Caption = 'C'#243'digo da Posi'#231#227'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object Label1: TLabel
          Left = 263
          Top = 41
          Width = 18
          Height = 15
          Caption = 'Kg.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 148
          Top = 68
          Width = 40
          Height = 15
          Caption = 'Status:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object wwDBGrid2: TwwDBGrid
          Left = 194
          Top = 98
          Width = 270
          Height = 177
          Hint = 'Visualiza'#231#227'o dos Registros'
          DittoAttributes.ShortCutDittoField = 0
          DittoAttributes.ShortCutDittoRecord = 0
          DittoAttributes.Options = []
          DisableThemesInTitle = False
          Selected.Strings = (
            'POS_COD'#9'25'#9'C'#243'digo da Posi'#231#227'o'#9'F'
            'POS_PESOMAX'#9'10'#9'Peso M'#225'ximo')
          IniAttributes.FileName = 'delphi32.ini'
          IniAttributes.SectionName = 'FAreawwDBGrid2'
          IniAttributes.Delimiter = ';;'
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          DataSource = DS_POS
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
          TabOrder = 2
          TitleAlignment = taCenter
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clNavy
          TitleFont.Height = -11
          TitleFont.Name = 'Arial'
          TitleFont.Style = [fsBold]
          TitleLines = 1
          TitleButtons = False
          OnCalcCellColors = wwDBGrid2CalcCellColors
          object wwIButton2: TwwIButton
            Left = 0
            Top = 0
            Width = 13
            Height = 22
            AllowAllUp = True
          end
        end
        object wwDBEdit2: TwwDBEdit
          Left = 194
          Top = 13
          Width = 95
          Height = 21
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'POS_COD'
          DataSource = DS_POS
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          MaxLength = 8
          ParentFont = False
          TabOrder = 0
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBEdit1: TwwDBEdit
          Left = 194
          Top = 38
          Width = 65
          Height = 21
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'POS_PESOMAX'
          DataSource = DS_POS
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
        object wwDBComboBox5: TwwDBComboBox
          Left = 194
          Top = 64
          Width = 230
          Height = 23
          ShowButton = True
          Style = csDropDown
          MapList = True
          AllowClearKey = False
          DataField = 'STATUS'
          DataSource = DS_POS
          DropDownCount = 8
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ItemHeight = 0
          Items.Strings = (
            'Dispon'#237'vel'#9'D'
            'Bloqueado'#9'B')
          ParentFont = False
          Sorted = False
          TabOrder = 3
          UnboundDataType = wwDefault
        end
        object Panel1: TPanel
          Left = 16
          Top = 248
          Width = 145
          Height = 25
          Caption = 'Posi'#231#227'o Bloqueada'
          Color = clRed
          TabOrder = 4
        end
      end
    end
    object TTabPage
      Left = 4
      Top = 24
      Caption = 'Bloqueio de posi'#231#245'es'
      object Label8: TLabel
        Left = 40
        Top = 24
        Width = 32
        Height = 16
        Caption = 'Area:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 40
        Top = 88
        Width = 50
        Height = 16
        Caption = 'Posi'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object cboArea: TwwDBLookupCombo
        Left = 40
        Top = 40
        Width = 177
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'AR_NOME'#9'42'#9'Nome'#9'F'
          'AR_CONTROL_POS'#9'1'#9'Controla S/N'#9'F'
          'AR_EMPILHA_LIVRE'#9'1'#9'Emp. Livre'#9'F'
          'AR_EMPILHA_MAX'#9'1'#9'Emp. MAX.'#9'F'
          'EmpNOME'#9'23'#9'Empresa'#9'F')
        LookupTable = Q_AREA
        LookupField = 'AR_ID'
        ParentFont = False
        TabOrder = 0
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        OnChange = cboAreaChange
        OnCloseUp = cboAreaCloseUp
      end
      object cboPosicao: TwwDBLookupCombo
        Left = 40
        Top = 104
        Width = 177
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'POS_COD'#9'6'#9'POS_COD'#9'F')
        LookupTable = qrPos
        LookupField = 'POS_ID'
        ParentFont = False
        TabOrder = 1
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
      end
      object RzBitBtn1: TRzBitBtn
        Left = 40
        Top = 152
        Width = 145
        Caption = 'Bloquear Posi'#231#227'o'
        TabOrder = 2
        OnClick = RzBitBtn1Click
      end
    end
  end
  object Q_PAR: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'select PAR_ID,PAR_NOME,PAR_RAZA from parametro  ')
    ValidateWithMask = True
    Left = 231
    Top = 306
  end
  object Q_AREAaux: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    ValidateWithMask = True
    Left = 507
    Top = 301
  end
  object Q_POSaux: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    ValidateWithMask = True
    Left = 507
    Top = 229
  end
  object DS_POS: TwwDataSource
    DataSet = Q_POS
    OnDataChange = DS_POSDataChange
    Left = 569
    Top = 256
  end
  object UPD_POS: TUpdateSQL
    ModifySQL.Strings = (
      'update AREA_POSICOES'
      'set'
      '  POS_COD = :POS_COD,'
      '  AR_ID = :AR_ID,'
      '  POS_PESOMAX = :POS_PESOMAX,'
      '  POS_UTILIZADO = :POS_UTILIZADO,'
      '  STATUS = :STATUS'
      'where'
      '  POS_ID = :OLD_POS_ID')
    InsertSQL.Strings = (
      'insert into AREA_POSICOES'
      '  (POS_COD, AR_ID, POS_PESOMAX, POS_UTILIZADO, STATUS)'
      'values'
      '  (:POS_COD, :AR_ID, :POS_PESOMAX, :POS_UTILIZADO, :STATUS)')
    DeleteSQL.Strings = (
      'delete from AREA_POSICOES'
      'where'
      '  POS_ID = :OLD_POS_ID')
    Left = 569
    Top = 200
  end
  object UPD_AREA: TUpdateSQL
    ModifySQL.Strings = (
      'update AREA'
      'set'
      ''
      '  AR_NOME = :AR_NOME,'
      '  AR_CONTROL_POS = :AR_CONTROL_POS,'
      '  AR_EMPILHA_LIVRE = :AR_EMPILHA_LIVRE,'
      '  AR_EMPILHA_MAX = :AR_EMPILHA_MAX,'
      '  AR_DISPONIVEL = :AR_DISPONIVEL,'
      '  PAR_ID = :PAR_ID'
      'where'
      '  AR_ID = :OLD_AR_ID')
    InsertSQL.Strings = (
      'insert into AREA'
      '  (AR_NOME, AR_CONTROL_POS, AR_EMPILHA_LIVRE, AR_EMPILHA_MAX, '
      'AR_DISPONIVEL, '
      '   PAR_ID)'
      'values'
      
        '  (:AR_NOME, :AR_CONTROL_POS, :AR_EMPILHA_LIVRE, :AR_EMPILHA_MAX' +
        ', '
      '   :AR_DISPONIVEL, :PAR_ID)')
    DeleteSQL.Strings = (
      'delete from AREA'
      'where'
      '  AR_ID = :OLD_AR_ID')
    Left = 626
    Top = 192
  end
  object DS_AREA: TwwDataSource
    DataSet = Q_AREA
    OnDataChange = DS_AREADataChange
    Left = 623
    Top = 248
  end
  object Q_AREA: TwwQuery
    AutoCalcFields = False
    CachedUpdates = True
    BeforePost = Q_AREABeforePost
    AfterPost = Q_AREAAfterPost
    BeforeDelete = Q_AREABeforeDelete
    AfterDelete = Q_AREAAfterDelete
    OnNewRecord = Q_AREANewRecord
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    RequestLive = True
    SQL.Strings = (
      'select * from AREA order by AR_NOME')
    UpdateObject = UPD_AREA
    ControlType.Strings = (
      'AR_CONTROL_POS;CustomEdit;wwDBComboBox1'
      'AR_EMPILHA_LIVRE;CustomEdit;wwDBComboBox2'
      'PAR_ID;CustomEdit;wwDBLookupCombo2')
    ValidateWithMask = True
    Left = 631
    Top = 136
    object Q_AREAAR_NOME: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 42
      FieldName = 'AR_NOME'
      Origin = 'NBFDADOS.AREA.AR_NOME'
      FixedChar = True
      Size = 40
    end
    object Q_AREAAR_CONTROL_POS: TStringField
      Alignment = taCenter
      DisplayLabel = 'Controla S/N'
      DisplayWidth = 1
      FieldName = 'AR_CONTROL_POS'
      Origin = 'NBFDADOS.AREA.AR_CONTROL_POS'
      FixedChar = True
      Size = 1
    end
    object Q_AREAAR_EMPILHA_LIVRE: TStringField
      Alignment = taCenter
      DisplayLabel = 'Emp. Livre'
      DisplayWidth = 1
      FieldName = 'AR_EMPILHA_LIVRE'
      Origin = 'NBFDADOS.AREA.AR_EMPILHA_LIVRE'
      FixedChar = True
      Size = 1
    end
    object Q_AREAAR_EMPILHA_MAX: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Emp. MAX.'
      DisplayWidth = 1
      FieldName = 'AR_EMPILHA_MAX'
      Origin = 'NBFDADOS.AREA.AR_EMPILHA_MAX'
    end
    object Q_AREAEmpNOME: TStringField
      DisplayLabel = 'Empresa'
      DisplayWidth = 23
      FieldKind = fkLookup
      FieldName = 'EmpNOME'
      LookupDataSet = Q_PAR
      LookupKeyFields = 'PAR_ID'
      LookupResultField = 'PAR_NOME'
      KeyFields = 'PAR_ID'
      Size = 30
      Lookup = True
    end
    object Q_AREAPAR_ID: TIntegerField
      DisplayLabel = 'Empresa'
      DisplayWidth = 10
      FieldName = 'PAR_ID'
      Origin = 'NBFDADOS.AREA.PAR_ID'
      Visible = False
    end
    object Q_AREAAR_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'AR_ID'
      Origin = 'NBFDADOS.AREA.AR_ID'
      Visible = False
    end
    object Q_AREAAR_DISPONIVEL: TStringField
      FieldName = 'AR_DISPONIVEL'
      Origin = 'NBFDADOS.AREA.AR_DISPONIVEL'
      Visible = False
      FixedChar = True
      Size = 1
    end
  end
  object Q_POS: TwwQuery
    AutoCalcFields = False
    CachedUpdates = True
    AfterPost = Q_POSAfterPost
    AfterDelete = Q_POSAfterDelete
    OnNewRecord = Q_POSNewRecord
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    DataSource = DS_AREA
    RequestLive = True
    SQL.Strings = (
      'select * from AREA_POSICOES '
      'where'
      'AR_ID = :AR_ID'
      'order by POS_COD')
    UpdateObject = UPD_POS
    ValidateWithMask = True
    Left = 569
    Top = 136
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'AR_ID'
        ParamType = ptUnknown
      end>
    object Q_POSPOS_COD: TStringField
      DisplayLabel = 'C'#243'digo da Posi'#231#227'o'
      DisplayWidth = 25
      FieldName = 'POS_COD'
      Origin = 'NBFDADOS.AREA_POSICOES.POS_COD'
      EditMask = 'aa-999-a;0;_'
      FixedChar = True
      Size = 6
    end
    object Q_POSPOS_PESOMAX: TFloatField
      DisplayLabel = 'Peso M'#225'ximo'
      DisplayWidth = 10
      FieldName = 'POS_PESOMAX'
      Origin = 'NBFDADOS.AREA_POSICOES.POS_PESOMAX'
      DisplayFormat = '###,###,##0.0'
      EditFormat = '###,###,##0.0'
    end
    object Q_POSPOS_ID: TAutoIncField
      FieldName = 'POS_ID'
      Origin = 'NBFDADOS.AREA_POSICOES.POS_ID'
      Visible = False
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
    object Q_POSSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'NBFDADOS.AREA_POSICOES.STATUS'
      Visible = False
      FixedChar = True
      Size = 1
    end
  end
  object qrAux: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <
      item
        Name = 'POS_ID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'UPDATE AREA_POSICOES SET STATUS = '#39'B'#39' WHERE POS_ID = :POS_ID')
    Left = 234
    Top = 208
  end
  object qrPos: TADOQuery
    Active = True
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    DataSource = DS_AREA
    Parameters = <
      item
        Name = 'AR_ID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 70
      end>
    SQL.Strings = (
      'select * from AREA_POSICOES '
      'where'
      'AR_ID = :AR_ID and status = '#39'D'#39
      'order by POS_COD')
    Left = 338
    Top = 296
    object qrPosPOS_COD: TStringField
      DisplayWidth = 6
      FieldName = 'POS_COD'
      Size = 6
    end
    object qrPosPOS_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'POS_ID'
      ReadOnly = True
      Visible = False
    end
    object qrPosAR_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'AR_ID'
      Visible = False
    end
    object qrPosPOS_PESOMAX: TFloatField
      DisplayWidth = 10
      FieldName = 'POS_PESOMAX'
      Visible = False
    end
    object qrPosPOS_UTILIZADO: TStringField
      DisplayWidth = 1
      FieldName = 'POS_UTILIZADO'
      Visible = False
      Size = 1
    end
    object qrPosSTATUS: TStringField
      DisplayWidth = 1
      FieldName = 'STATUS'
      Visible = False
      FixedChar = True
      Size = 1
    end
  end
end
