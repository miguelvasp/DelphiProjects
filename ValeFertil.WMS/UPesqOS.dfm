object FPesqOS: TFPesqOS
  Left = 294
  Top = 149
  Width = 747
  Height = 432
  AutoSize = True
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 49
    Width = 731
    Height = 345
    BevelInner = bvLowered
    TabOrder = 0
    object Label7: TLabel
      Left = 101
      Top = 12
      Width = 23
      Height = 15
      Caption = 'O.S.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 60
      Top = 38
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
    object SpeedButton1: TSpeedButton
      Left = 599
      Top = 25
      Width = 98
      Height = 25
      Hint = 'Visualizar Relatório'
      Caption = 'Pesquisar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
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
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton1Click
    end
    object DBG_RAAT: TwwDBGrid
      Left = 7
      Top = 65
      Width = 722
      Height = 270
      Hint = 'Visualização dos Registros'
      Selected.Strings = (
        'OS_ID'#9'7'#9'O.S.'
        'CLIN_RAZA'#9'30'#9'Cliente NBF'
        'CTT_NOME'#9'28'#9'Nome do Contrato'#9'F'
        'TOS_NOME'#9'30'#9'Tipo de O.S.')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DS_OS
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
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
      OnDblClick = DBG_RAATDblClick
      IndicatorColor = icBlack
      object DBG_RAATIButton: TwwIButton
        Left = 0
        Top = 0
        Width = 13
        Height = 22
        AllowAllUp = True
      end
    end
    object wwDBEdit2: TwwDBEdit
      Left = 128
      Top = 10
      Width = 73
      Height = 21
      BorderStyle = bsNone
      DataField = 'OS_NUMERO'
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
    object wwDBLookupCombo1: TwwDBLookupCombo
      Left = 128
      Top = 36
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
        'CLIN_RAZA'#9'50'#9'CLIN_RAZA'#9'F')
      LookupTable = Q_CLIN
      LookupField = 'CLIN_ID'
      ParentFont = False
      TabOrder = 1
      AutoDropDown = True
      ShowButton = True
      SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
      AllowClearKey = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 731
    Height = 45
    BevelInner = bvLowered
    TabOrder = 1
    object SpeedButton3: TSpeedButton
      Left = 694
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
      Width = 373
      Height = 29
      Caption = 'Pesquisa de Ordem de Serviço'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -24
      Font.Name = 'Georgia'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
  end
  object Q_OS: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select A.*,B.CLIN_RAZA,C.CTT_NOME,D.TOS_NOME from OS A,'
      'ClienteNBF B,Contrato C,TpOS D where'
      'A.CLIN_ID = B.CLIN_ID and'
      'A.CTT_ID = C.CTT_ID and'
      'A.TOS_ID = D.TOS_ID'
      'order by A.OS_ID')
    ValidateWithMask = True
    Left = 46
    Top = 208
    object Q_OSOS_ID: TAutoIncField
      Alignment = taCenter
      DisplayLabel = 'O.S.'
      DisplayWidth = 7
      FieldName = 'OS_ID'
      Origin = 'NBFDADOS.OS.OS_ID'
    end
    object Q_OSCLIN_RAZA: TStringField
      DisplayLabel = 'Cliente NBF'
      DisplayWidth = 30
      FieldName = 'CLIN_RAZA'
      Origin = 'NBFDADOS.ClienteNBF.CLIN_RAZA'
      FixedChar = True
      Size = 50
    end
    object Q_OSCTT_NOME: TStringField
      DisplayLabel = 'Nome do Contrato'
      DisplayWidth = 28
      FieldName = 'CTT_NOME'
      Origin = 'NBFDADOS.Contrato.CTT_NOME'
      FixedChar = True
      Size = 40
    end
    object Q_OSTOS_NOME: TStringField
      DisplayLabel = 'Tipo de O.S.'
      DisplayWidth = 30
      FieldName = 'TOS_NOME'
      Origin = 'NBFDADOS.TpOS.TOS_NOME'
      FixedChar = True
      Size = 40
    end
    object Q_OSCLIN_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'CLIN_ID'
      Origin = 'NBFDADOS.OS.CLIN_ID'
      Visible = False
    end
    object Q_OSCTT_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'CTT_ID'
      Origin = 'NBFDADOS.OS.CTT_ID'
      Visible = False
    end
    object Q_OSTOS_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'TOS_ID'
      Origin = 'NBFDADOS.OS.TOS_ID'
      Visible = False
    end
    object Q_OSOS_DATA: TDateTimeField
      DisplayWidth = 18
      FieldName = 'OS_DATA'
      Origin = 'NBFDADOS.OS.OS_DATA'
      Visible = False
    end
    object Q_OSOS_USUARIO: TIntegerField
      DisplayWidth = 10
      FieldName = 'OS_USUARIO'
      Origin = 'NBFDADOS.OS.OS_USUARIO'
      Visible = False
    end
  end
  object DS_OS: TwwDataSource
    DataSet = Q_OS
    Left = 46
    Top = 272
  end
  object Q_CLIN: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select CLIN_RAZA,CLIN_ID from CLIENTENBF order by CLIN_RAZA ')
    ValidateWithMask = True
    Left = 172
    Top = 232
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
end
