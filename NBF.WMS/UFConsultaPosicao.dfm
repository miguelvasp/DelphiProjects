object FFConsultaPosicao: TFFConsultaPosicao
  Left = 325
  Top = 124
  Width = 783
  Height = 364
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
  object Label1: TLabel
    Left = 101
    Top = 210
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
  object Panel3: TPanel
    Left = -1
    Top = 0
    Width = 764
    Height = 45
    BevelInner = bvLowered
    TabOrder = 0
    object SpeedButton3: TSpeedButton
      Left = 728
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
      Left = 9
      Top = 5
      Width = 277
      Height = 29
      Caption = 'Consultas por Posição'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -24
      Font.Name = 'Georgia'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = -1
    Top = 48
    Width = 764
    Height = 273
    BevelInner = bvLowered
    TabOrder = 1
    object SBT_VISU: TSpeedButton
      Left = 320
      Top = 237
      Width = 145
      Height = 24
      Hint = 'Visualiza Estoque'
      Caption = '&Visualizar'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
        033333777777777773333330777777703333333773F333773333333330888033
        33333FFFF7FFF7FFFFFF0000000000000003777777777777777F0FFFFFFFFFF9
        FF037F3333333337337F0F78888888887F037F33FFFFFFFFF37F0F7000000000
        8F037F3777777777F37F0F70AAAAAAA08F037F37F3333337F37F0F70ADDDDDA0
        8F037F37F3333337F37F0F70A99A99A08F037F37F3333337F37F0F70A99A99A0
        8F037F37F3333337F37F0F70AAAAAAA08F037F37FFFFFFF7F37F0F7000000000
        8F037F3777777777337F0F77777777777F037F3333333333337F0FFFFFFFFFFF
        FF037FFFFFFFFFFFFF7F00000000000000037777777777777773}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SBT_VISUClick
    end
    object GroupBox6: TGroupBox
      Left = 10
      Top = 10
      Width = 744
      Height = 215
      Caption = 'Seleção de Filtros'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Label4: TLabel
        Left = 237
        Top = 80
        Width = 27
        Height = 15
        Caption = 'Área'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 202
        Top = 112
        Width = 63
        Height = 15
        Caption = 'Posição de'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 378
        Top = 112
        Width = 18
        Height = 15
        Caption = 'até'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object wwDBLookupCombo7: TwwDBLookupCombo
        Left = 271
        Top = 77
        Width = 287
        Height = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        BorderStyle = bsNone
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'AR_NOME'#9'40'#9'AR_NOME'#9'F'
          'PAR_NOME'#9'30'#9'PAR_NOME'#9'F')
        LookupTable = Q_AR
        LookupField = 'AR_ID'
        ParentFont = False
        TabOrder = 0
        AutoDropDown = True
        ShowButton = True
        SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
        PreciseEditRegion = False
        AllowClearKey = False
        OnChange = wwDBLookupCombo7Change
        OnEnter = wwDBLookupCombo7Enter
        OnExit = wwDBLookupCombo7Exit
      end
      object wwDBLookupCombo1: TwwDBLookupCombo
        Left = 271
        Top = 108
        Width = 95
        Height = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        BorderStyle = bsNone
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'POS_COD'#9'6'#9'POS_COD'#9'F')
        LookupTable = Q_POSI
        LookupField = 'POS_ID'
        Enabled = False
        ParentFont = False
        TabOrder = 1
        AutoDropDown = True
        ShowButton = True
        SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
        PreciseEditRegion = False
        AllowClearKey = False
        OnEnter = wwDBLookupCombo1Enter
        OnExit = wwDBLookupCombo1Exit
      end
      object wwDBLookupCombo2: TwwDBLookupCombo
        Left = 407
        Top = 108
        Width = 95
        Height = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        BorderStyle = bsNone
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'POS_COD'#9'6'#9'POS_COD'#9'F')
        LookupTable = Q_POSF
        LookupField = 'POS_ID'
        Enabled = False
        ParentFont = False
        TabOrder = 2
        AutoDropDown = True
        ShowButton = True
        SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
        PreciseEditRegion = False
        AllowClearKey = False
        OnEnter = wwDBLookupCombo1Enter
        OnExit = wwDBLookupCombo1Exit
      end
      object RadioGroup1: TRadioGroup
        Left = 273
        Top = 19
        Width = 285
        Height = 49
        Caption = 'Situação'
        Columns = 3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ItemIndex = 0
        Items.Strings = (
          'Ambas'
          'Ocupadas'
          'Livres')
        ParentFont = False
        TabOrder = 3
      end
      object CheckBox1: TCheckBox
        Left = 272
        Top = 152
        Width = 241
        Height = 17
        Caption = 'Somente Posições Bloqueadas'
        TabOrder = 4
      end
      object chk1: TCheckBox
        Left = 272
        Top = 176
        Width = 241
        Height = 17
        Caption = 'Desconsiderar Posições Bloqueadas'
        TabOrder = 5
      end
    end
  end
  object Q_AR: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select *'
      'from'
      'AREA '
      'order by AR_NOME'
      '')
    ValidateWithMask = True
    Left = 640
    Top = 32
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
  object Q_POSI: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    DataSource = DS_AR
    SQL.Strings = (
      'select *'
      'from AREA_POSICOES '
      'where  '
      'AR_ID = :AR_ID'
      'order by POS_COD'
      ''
      '')
    ValidateWithMask = True
    Left = 585
    Top = 160
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'AR_ID'
        ParamType = ptUnknown
      end>
    object Q_POSIPOS_COD: TStringField
      DisplayWidth = 6
      FieldName = 'POS_COD'
      Origin = 'NBFDADOS.AREA_POSICOES.POS_COD'
      FixedChar = True
      Size = 6
    end
    object Q_POSIPOS_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'POS_ID'
      Origin = 'NBFDADOS.AREA_POSICOES.POS_ID'
      Visible = False
    end
    object Q_POSIAR_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'AR_ID'
      Origin = 'NBFDADOS.AREA_POSICOES.AR_ID'
      Visible = False
    end
    object Q_POSIPOS_PESOMAX: TFloatField
      DisplayWidth = 10
      FieldName = 'POS_PESOMAX'
      Origin = 'NBFDADOS.AREA_POSICOES.POS_PESOMAX'
      Visible = False
    end
    object Q_POSIPOS_UTILIZADO: TStringField
      DisplayWidth = 1
      FieldName = 'POS_UTILIZADO'
      Origin = 'NBFDADOS.AREA_POSICOES.POS_UTILIZADO'
      Visible = False
      FixedChar = True
      Size = 1
    end
  end
  object Q_POSF: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    DataSource = DS_AR
    SQL.Strings = (
      'select *'
      'from AREA_POSICOES '
      'where  '
      'AR_ID = :AR_ID'
      'order by POS_COD'
      ''
      '')
    ValidateWithMask = True
    Left = 657
    Top = 160
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'AR_ID'
        ParamType = ptUnknown
      end>
    object Q_POSFPOS_COD: TStringField
      DisplayWidth = 6
      FieldName = 'POS_COD'
      Origin = 'NBFDADOS.AREA_POSICOES.POS_COD'
      FixedChar = True
      Size = 6
    end
    object Q_POSFPOS_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'POS_ID'
      Origin = 'NBFDADOS.AREA_POSICOES.POS_ID'
      Visible = False
    end
    object Q_POSFAR_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'AR_ID'
      Origin = 'NBFDADOS.AREA_POSICOES.AR_ID'
      Visible = False
    end
    object Q_POSFPOS_PESOMAX: TFloatField
      DisplayWidth = 10
      FieldName = 'POS_PESOMAX'
      Origin = 'NBFDADOS.AREA_POSICOES.POS_PESOMAX'
      Visible = False
    end
    object Q_POSFPOS_UTILIZADO: TStringField
      DisplayWidth = 1
      FieldName = 'POS_UTILIZADO'
      Origin = 'NBFDADOS.AREA_POSICOES.POS_UTILIZADO'
      Visible = False
      FixedChar = True
      Size = 1
    end
  end
  object DS_AR: TwwDataSource
    DataSet = Q_AR
    Left = 642
    Top = 79
  end
end
