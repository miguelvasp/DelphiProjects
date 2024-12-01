object FEtiqueta: TFEtiqueta
  Left = 1
  Top = 1
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Emissão de Etiquetas'
  ClientHeight = 543
  ClientWidth = 792
  Color = clBtnFace
  Constraints.MaxHeight = 579
  Constraints.MaxWidth = 800
  Constraints.MinHeight = 572
  Constraints.MinWidth = 800
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 160
    Width = 792
    Height = 383
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 0
    object wwDBGrid1: TwwDBGrid
      Left = 10
      Top = 10
      Width = 770
      Height = 360
      Hint = 'Pressione Duplo Clique para Atualização de Conjuntos'
      Selected.Strings = (
        'Etiqueta'#9'2'#9'     '
        'REC_CODI'#9'12'#9'No. Cr.'
        'REC_NFIS'#9'14'#9'Documento'
        'REC_RAZA'#9'46'#9'Cliente'
        'REC_VENC'#9'13'#9'Vcto'
        'REC_VALO'#9'15'#9'Valor'
        'REC_SALD'#9'14'#9'Saldo')
      IniAttributes.Delimiter = ';;'
      TitleColor = clActiveCaption
      FixedCols = 0
      ShowHorzScrollBar = True
      Color = clMenu
      DataSource = DS_Etiq
      Font.Charset = ANSI_CHARSET
      Font.Color = clMenuText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      KeyOptions = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 0
      TitleAlignment = taLeftJustify
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clYellow
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = [fsBold]
      TitleLines = 1
      TitleButtons = False
      IndicatorColor = icBlack
      object wwDBGrid1IButton: TwwIButton
        Left = 0
        Top = 0
        Width = 13
        Height = 25
        AllowAllUp = True
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 792
    Height = 160
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 1
    object SBT_SELE: TSpeedButton
      Left = 665
      Top = 67
      Width = 117
      Height = 31
      Hint = 'Imprime Etiquetas'
      Caption = '&Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
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
      NumGlyphs = 2
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SBT_SELEClick
    end
    object SBT_PESQ: TSpeedButton
      Left = 663
      Top = 23
      Width = 119
      Height = 31
      Hint = 'Executa as pesquisas de acordo com os filtros.'
      Caption = '&Pesquisa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000010000000000000000000
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
      OnClick = SBT_PESQClick
    end
    object SBT_SAIR: TSpeedButton
      Left = 665
      Top = 111
      Width = 117
      Height = 31
      Hint = 'Retorna a tela anterior.'
      Caption = '&Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
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
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SBT_SAIRClick
    end
    object Label2: TLabel
      Left = 6
      Top = 45
      Width = 80
      Height = 14
      Caption = 'Nome Fantasia'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 104
      Top = 101
      Width = 18
      Height = 15
      Caption = 'até'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 6
      Top = 83
      Width = 67
      Height = 14
      Caption = 'Vencimento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 254
      Top = 45
      Width = 46
      Height = 14
      Caption = 'Situação'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 6
      Top = 120
      Width = 87
      Height = 14
      Caption = 'Endereçamento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Memo1: TMemo
      Left = 6
      Top = 6
      Width = 490
      Height = 37
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Lines.Strings = (
        
          'Preencha os filtros que forem úteis para a pesquisa e clique no ' +
          'botão de pesquisa.'
        'Selecione os Títulos para emissão das Etiquetas.')
      ParentFont = False
      TabOrder = 0
    end
    object DBLC_FOR_FEST: TwwDBLookupCombo
      Left = 6
      Top = 61
      Width = 217
      Height = 21
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'CLI_APELIDO'#9'20'#9'Nome Fantasia'#9'F')
      LookupTable = Q_CLIE
      LookupField = 'CLI_APELIDO'
      TabOrder = 1
      AutoDropDown = True
      ShowButton = True
      SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
      AllowClearKey = False
    end
    object MaskEdit3: TMaskEdit
      Left = 6
      Top = 97
      Width = 88
      Height = 23
      EditMask = '!99/99/99;1;_'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      MaxLength = 8
      ParentFont = False
      TabOrder = 2
      Text = '  /  /  '
    end
    object MaskEdit4: TMaskEdit
      Left = 135
      Top = 97
      Width = 88
      Height = 23
      EditMask = '!99/99/99;1;_'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      MaxLength = 8
      ParentFont = False
      TabOrder = 3
      Text = '  /  /  '
    end
    object ComboBox1: TComboBox
      Left = 254
      Top = 61
      Width = 239
      Height = 21
      ItemHeight = 13
      TabOrder = 4
      Text = 'A Pagar'
      Items.Strings = (
        'A Pagar'
        'Pagos'
        'Todos')
    end
    object Edit1: TEdit
      Left = 6
      Top = 134
      Width = 487
      Height = 21
      TabOrder = 5
    end
    object GroupBox1: TGroupBox
      Left = 255
      Top = 87
      Width = 238
      Height = 40
      Caption = 'Endereço'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      object CheckBox1: TCheckBox
        Left = 16
        Top = 16
        Width = 97
        Height = 17
        Caption = 'Cobrança'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = CheckBox1Click
      end
      object CheckBox2: TCheckBox
        Left = 120
        Top = 16
        Width = 97
        Height = 17
        Caption = 'Faturamento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = CheckBox2Click
      end
    end
  end
  object Q_CLIE: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'select CLI_APELIDO,CLI_CODI, CLI_RAZA,'
      'CLI_CEND,CLI_CMUN,CLI_CCEP,CLI_CEST,'
      'CLI_FEND,CLI_FMUN,CLI_FCEP,CLI_FEST'
      ' from CPACLIE '
      'order by CLI_APELIDO')
    ValidateWithMask = True
    Left = 476
    Top = 225
    object Q_CLIECLI_APELIDO: TStringField
      DisplayLabel = 'Nome Fantasia'
      DisplayWidth = 20
      FieldName = 'CLI_APELIDO'
      Origin = 'FINANCEIRO.CPACLIE.CLI_APELIDO'
      FixedChar = True
    end
    object Q_CLIECLI_CODI: TAutoIncField
      FieldName = 'CLI_CODI'
      Origin = 'FINANCEIRO.CPACLIE.CLI_CODI'
      Visible = False
    end
    object Q_CLIECLI_RAZA: TStringField
      FieldName = 'CLI_RAZA'
      Origin = 'FINANCEIRO.CPACLIE.CLI_RAZA'
      FixedChar = True
      Size = 50
    end
    object Q_CLIECLI_CEND: TStringField
      FieldName = 'CLI_CEND'
      Origin = 'FINANCEIRO.CPACLIE.CLI_CEND'
      FixedChar = True
      Size = 60
    end
    object Q_CLIECLI_CMUN: TStringField
      FieldName = 'CLI_CMUN'
      Origin = 'FINANCEIRO.CPACLIE.CLI_CMUN'
      FixedChar = True
      Size = 30
    end
    object Q_CLIECLI_CCEP: TStringField
      FieldName = 'CLI_CCEP'
      Origin = 'FINANCEIRO.CPACLIE.CLI_CCEP'
      FixedChar = True
      Size = 8
    end
    object Q_CLIECLI_CEST: TStringField
      FieldName = 'CLI_CEST'
      Origin = 'FINANCEIRO.CPACLIE.CLI_CEST'
      FixedChar = True
      Size = 2
    end
    object Q_CLIECLI_FEND: TStringField
      FieldName = 'CLI_FEND'
      Origin = 'FINANCEIRO.CPACLIE.CLI_FEND'
      FixedChar = True
      Size = 60
    end
    object Q_CLIECLI_FMUN: TStringField
      FieldName = 'CLI_FMUN'
      Origin = 'FINANCEIRO.CPACLIE.CLI_FMUN'
      FixedChar = True
      Size = 30
    end
    object Q_CLIECLI_FCEP: TStringField
      FieldName = 'CLI_FCEP'
      Origin = 'FINANCEIRO.CPACLIE.CLI_FCEP'
      FixedChar = True
      Size = 8
    end
    object Q_CLIECLI_FEST: TStringField
      FieldName = 'CLI_FEST'
      Origin = 'FINANCEIRO.CPACLIE.CLI_FEST'
      FixedChar = True
      Size = 2
    end
  end
  object Q_ETIQ: TwwQuery
    CachedUpdates = True
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    RequestLive = True
    SQL.Strings = (
      'select REC_CODI,REC_NFIS,REC_VENC,REC_VALO,REC_RAZA,Etiqueta,'
      'REC_SALD, REC_CLIE '
      'from CPARECE   '
      ' Where  REC_VENC  >= '#39'20001002'#39
      'and  REC_VENC  <= '#39'20001002'#39)
    ControlType.Strings = (
      'Etiqueta;CheckBox;S;N')
    ValidateWithMask = True
    Left = 404
    Top = 225
    object Q_ETIQEtiqueta: TStringField
      DisplayLabel = '     '
      DisplayWidth = 2
      FieldName = 'Etiqueta'
      Origin = 'FINANCEIRO.CPARECE.Etiqueta'
      FixedChar = True
      Size = 1
    end
    object Q_ETIQREC_CODI: TIntegerField
      DisplayLabel = 'No. Cr.'
      DisplayWidth = 12
      FieldName = 'REC_CODI'
      Origin = 'FINANCEIRO.CPARECE.REC_CODI'
    end
    object Q_ETIQREC_NFIS: TStringField
      DisplayLabel = 'Documento'
      DisplayWidth = 14
      FieldName = 'REC_NFIS'
      Origin = 'FINANCEIRO.CPARECE.REC_NFIS'
      FixedChar = True
      Size = 10
    end
    object Q_ETIQREC_RAZA: TStringField
      DisplayLabel = 'Cliente'
      DisplayWidth = 46
      FieldName = 'REC_RAZA'
      Origin = 'FINANCEIRO.CPARECE.REC_RAZA'
      FixedChar = True
      Size = 40
    end
    object Q_ETIQREC_VENC: TDateTimeField
      DisplayLabel = 'Vcto'
      DisplayWidth = 13
      FieldName = 'REC_VENC'
      Origin = 'FINANCEIRO.CPARECE.REC_VENC'
      EditMask = 'dd/mm/yy'
    end
    object Q_ETIQREC_VALO: TFloatField
      DisplayLabel = 'Valor'
      DisplayWidth = 15
      FieldName = 'REC_VALO'
      Origin = 'FINANCEIRO.CPARECE.REC_VALO'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_ETIQREC_SALD: TFloatField
      DisplayLabel = 'Saldo'
      DisplayWidth = 14
      FieldName = 'REC_SALD'
      Origin = 'FINANCEIRO.CPARECE.REC_SALD'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_ETIQREC_CLIE: TIntegerField
      FieldName = 'REC_CLIE'
      Origin = 'FINANCEIRO.CPARECE.REC_CLIE'
      Visible = False
    end
  end
  object DS_Etiq: TwwDataSource
    DataSet = Q_ETIQ
    Left = 324
    Top = 225
  end
end
