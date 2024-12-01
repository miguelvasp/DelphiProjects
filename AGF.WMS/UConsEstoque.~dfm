object FConsEstoque: TFConsEstoque
  Left = 193
  Top = 109
  Width = 802
  Height = 573
  VertScrollBar.Visible = False
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
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 786
    Height = 45
    BevelInner = bvLowered
    TabOrder = 0
    object SpeedButton3: TSpeedButton
      Left = 752
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
      Width = 252
      Height = 29
      Caption = 'Consulta de Estoque'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -24
      Font.Name = 'Georgia'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object SBT_VISU: TSpeedButton
      Left = 721
      Top = 8
      Width = 25
      Height = 26
      Hint = 'Visualizar Relatório'
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
    object SpeedButton1: TSpeedButton
      Left = 691
      Top = 9
      Width = 25
      Height = 25
      Hint = 'Enviar Email (Estoque)'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333FFFFFFFFFFFFFFF000000000000
        000077777777777777770FFFFFFFFFFFFFF07F3333FFF33333370FFFF777FFFF
        FFF07F333777333333370FFFFFFFFFFFFFF07F3333FFFFFF33370FFFF777777F
        FFF07F33377777733FF70FFFFFFFFFFF99907F3FFF33333377770F777FFFFFFF
        9CA07F77733333337F370FFFFFFFFFFF9A907FFFFFFFFFFF7FF7000000000000
        0000777777777777777733333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton1Click
    end
    object RadioGroup2: TRadioGroup
      Left = 341
      Top = 3
      Width = 184
      Height = 36
      Caption = ' Seleção '
      Columns = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ItemIndex = 0
      Items.Strings = (
        'Sintético'
        'Analítico')
      ParentFont = False
      TabOrder = 0
      OnClick = RadioGroup2Click
    end
    object Button1: TButton
      Left = 629
      Top = 10
      Width = 57
      Height = 25
      Caption = 'Excel'
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object DBG_RAAT: TwwDBGrid
    Left = 1
    Top = 86
    Width = 783
    Height = 391
    Hint = 'Visualização dos Registros'
    Selected.Strings = (
      'CLIN_RAZA'#9'30'#9'Cliente NBF'#9#9
      'PRO_COD'#9'12'#9'Cód.Produto'#9#9
      'PRO_DESC'#9'31'#9'Descr.Produto'#9#9
      'ESTQ_TAG'#9'10'#9'Pallet TAG'#9#9
      'AR_NOME'#9'10'#9'Área'#9#9
      'POS_COD'#9'7'#9'Posição'#9#9
      'ESTQ_QTDE'#9'10'#9'Qtde. UV'#9#9
      'ROM_DTBATCH'#9'9'#9'Batch'#9#9
      'ROM_DTVENCTO'#9'9'#9'Vencimento'#9#9
      'ESTQ_DT_ENTRADA'#9'18'#9'Data Entrada'#9'F')
    IniAttributes.FileName = 'delphi32.ini'
    IniAttributes.SectionName = 'FConsEstoqueDBG_RAAT'
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DS_ESTQ
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
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
    Visible = False
    object DBG_RAATIButton: TwwIButton
      Left = 0
      Top = 0
      Width = 13
      Height = 22
      AllowAllUp = True
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 480
    Width = 784
    Height = 54
    BevelInner = bvLowered
    TabOrder = 2
    object Label30: TLabel
      Left = 569
      Top = 5
      Width = 69
      Height = 20
      Caption = 'Qtde. Pallet'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 586
      Top = 27
      Width = 52
      Height = 20
      Caption = 'Qtde. UE'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 649
      Top = 2
      Width = 78
      Height = 23
      Alignment = taRightJustify
      Caption = 'Qtde. Pallet'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 649
      Top = 24
      Width = 78
      Height = 23
      Alignment = taRightJustify
      Caption = 'Qtde. Pallet'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
    end
  end
  object wwDBGrid1: TwwDBGrid
    Left = 1
    Top = 88
    Width = 784
    Height = 447
    Selected.Strings = (
      'CLIN_RAZA'#9'45'#9'Cliente NBF'#9#9
      'Pro_COD'#9'12'#9'Cód.Produto'#9#9
      'PRO_DESC'#9'38'#9'Descrição Produto'#9#9
      'XVALOR'#9'10'#9'Qtde. UV'#9#9
      'PRO_ID'#9'10'#9'PRO_ID'#9#9
      'TOTPESO'#9'15'#9'Total Peso'#9#9
      'ULTIMO_PRECO'#9'10'#9'ULTIMO_PRECO'#9#9)
    IniAttributes.FileName = 'delphi32.ini'
    IniAttributes.SectionName = 'FConsEstoquewwDBGrid1'
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DS_ESTQ2
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial Narrow'
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
    object wwIButton1: TwwIButton
      Left = 0
      Top = 0
      Width = 13
      Height = 22
      AllowAllUp = True
    end
  end
  object RadioGroup4: TRadioGroup
    Left = 1
    Top = 45
    Width = 785
    Height = 36
    Caption = 'Ordenação'
    Columns = 8
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ItemIndex = 0
    Items.Strings = (
      'Cliente NBF'
      'Código'
      'Descrição'
      'Área'
      'Posição'
      'Qtde.UV'
      'Batch'
      'Vencimento')
    ParentFont = False
    TabOrder = 4
    Visible = False
    OnClick = RadioGroup4Click
  end
  object RadioGroup1: TRadioGroup
    Left = 1
    Top = 45
    Width = 785
    Height = 36
    Caption = 'Ordenação'
    Columns = 8
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ItemIndex = 0
    Items.Strings = (
      'Cliente NBF                     '
      'Código                  '
      'Descrição                '
      'Qtde.UV                 ')
    ParentFont = False
    TabOrder = 5
    Visible = False
    OnClick = RadioGroup1Click
  end
  object Q_ESTQ: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select A.*,B.POS_COD,C.AR_NOME,D.PRO_COD,D.PRO_DESC,'
      '     E.CLIN_RAZA, D.EMBALAGEM, D.TIPO_PRODUTO  from '
      '     ESTOQUE A  LEFT OUTER JOIN'
      '     AREA_POSICOES B ON A.POS_ID = B.POS_ID,'
      '    AREA C , PRODUTO D, CLIENTENBF E'
      '    where '
      '    A.PRO_ID = D.PRO_ID and'
      '    D.CLIN_ID = E.CLIN_ID and'
      '    A.AR_ID = C.AR_ID'
      ''
      ''
      ''
      '')
    ValidateWithMask = True
    Left = 192
    Top = 186
    object Q_ESTQCLIN_RAZA: TStringField
      DisplayLabel = 'Cliente NBF'
      DisplayWidth = 30
      FieldName = 'CLIN_RAZA'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_RAZA'
      FixedChar = True
      Size = 50
    end
    object Q_ESTQPRO_COD: TStringField
      DisplayLabel = 'Cód.Produto'
      DisplayWidth = 12
      FieldName = 'PRO_COD'
      Origin = 'NBFDADOS.PRODUTO.PRO_COD'
      FixedChar = True
      Size = 16
    end
    object Q_ESTQPRO_DESC: TStringField
      DisplayLabel = 'Descr.Produto'
      DisplayWidth = 31
      FieldName = 'PRO_DESC'
      Origin = 'NBFDADOS.PRODUTO.PRO_DESC'
      FixedChar = True
      Size = 40
    end
    object Q_ESTQESTQ_TAG: TIntegerField
      DisplayLabel = 'Pallet TAG'
      DisplayWidth = 10
      FieldName = 'ESTQ_TAG'
      Origin = 'NBFDADOS.ESTOQUE.ESTQ_TAG'
    end
    object Q_ESTQAR_NOME: TStringField
      DisplayLabel = 'Área'
      DisplayWidth = 10
      FieldName = 'AR_NOME'
      Origin = 'NBFDADOS.AREA.AR_NOME'
      FixedChar = True
      Size = 40
    end
    object Q_ESTQPOS_COD: TStringField
      DisplayLabel = 'Posição'
      DisplayWidth = 7
      FieldName = 'POS_COD'
      Origin = 'NBFDADOS.AREA_POSICOES.POS_COD'
      FixedChar = True
      Size = 6
    end
    object Q_ESTQESTQ_QTDE: TFloatField
      DisplayLabel = 'Qtde. UV'
      DisplayWidth = 10
      FieldName = 'ESTQ_QTDE'
      Origin = 'NBFDADOS.ESTOQUE.ESTQ_QTDE'
      DisplayFormat = '0.000'
      EditFormat = '0.000'
    end
    object Q_ESTQROM_DTBATCH: TDateTimeField
      DisplayLabel = 'Batch'
      DisplayWidth = 9
      FieldName = 'ROM_DTBATCH'
      Origin = 'NBFDADOS.ESTOQUE.ROM_DTBATCH'
    end
    object Q_ESTQROM_DTVENCTO: TDateTimeField
      DisplayLabel = 'Vencimento'
      DisplayWidth = 9
      FieldName = 'ROM_DTVENCTO'
      Origin = 'NBFDADOS.ESTOQUE.ROM_DTVENCTO'
    end
    object Q_ESTQESTQ_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'ESTQ_ID'
      Origin = 'NBFDADOS.ESTOQUE.ESTQ_ID'
      Visible = False
    end
    object Q_ESTQAR_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'AR_ID'
      Origin = 'NBFDADOS.ESTOQUE.AR_ID'
      Visible = False
    end
    object Q_ESTQPOS_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'POS_ID'
      Origin = 'NBFDADOS.ESTOQUE.POS_ID'
      Visible = False
    end
    object Q_ESTQOS_ID_ORIG: TIntegerField
      DisplayWidth = 10
      FieldName = 'OS_ID_ORIG'
      Origin = 'NBFDADOS.ESTOQUE.OS_ID_ORIG'
      Visible = False
    end
    object Q_ESTQPRO_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'PRO_ID'
      Origin = 'NBFDADOS.ESTOQUE.PRO_ID'
      Visible = False
    end
    object Q_ESTQESTQ_QTDE_RETIRA: TFloatField
      DisplayWidth = 10
      FieldName = 'ESTQ_QTDE_RETIRA'
      Origin = 'NBFDADOS.ESTOQUE.ESTQ_QTDE_RETIRA'
      Visible = False
    end
    object Q_ESTQMANI_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'MANI_ID'
      Origin = 'NBFDADOS.ESTOQUE.MANI_ID'
      Visible = False
    end
    object Q_ESTQESTQ_PESO: TFloatField
      DisplayWidth = 10
      FieldName = 'ESTQ_PESO'
      Origin = 'NBFDADOS.ESTOQUE.ESTQ_PESO'
      Visible = False
    end
    object Q_ESTQOS_ID_DEST: TIntegerField
      DisplayWidth = 10
      FieldName = 'OS_ID_DEST'
      Origin = 'NBFDADOS.ESTOQUE.OS_ID_DEST'
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
    object Q_ESTQESTQ_LOTE: TStringField
      DisplayWidth = 20
      FieldName = 'ESTQ_LOTE'
      Origin = 'NBFDADOS.ESTOQUE.ESTQ_LOTE'
      Visible = False
      FixedChar = True
    end
    object Q_ESTQUVEN_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'UVEN_ID'
      Origin = 'NBFDADOS.ESTOQUE.UVEN_ID'
      Visible = False
    end
    object Q_ESTQAR_ID_ANTERIOR: TIntegerField
      DisplayWidth = 10
      FieldName = 'AR_ID_ANTERIOR'
      Origin = 'NBFDADOS.ESTOQUE.AR_ID_ANTERIOR'
      Visible = False
    end
    object Q_ESTQPOS_ID_ANTERIOR: TIntegerField
      DisplayWidth = 10
      FieldName = 'POS_ID_ANTERIOR'
      Origin = 'NBFDADOS.ESTOQUE.POS_ID_ANTERIOR'
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
    object Q_ESTQGEROU_OPER_ROMSAIDA: TStringField
      DisplayWidth = 1
      FieldName = 'GEROU_OPER_ROMSAIDA'
      Origin = 'NBFDADOS.ESTOQUE.GEROU_OPER_ROMSAIDA'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_ESTQMARCADOR: TStringField
      DisplayWidth = 1
      FieldName = 'MARCADOR'
      Origin = 'NBFDADOS.ESTOQUE.MARCADOR'
      Visible = False
      FixedChar = True
      Size = 1
    end
  end
  object Q_PROD: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'select PRO_ID, PRO_COD,PRO_DESC,CLIN_ID,UVEN_ID,'
      'PRO_QTDE_PALLETUV,QTDE_UVUE'
      ' from PRODUTO ')
    ValidateWithMask = True
    Left = 277
    Top = 187
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
    object Q_PRODUVEN_ID: TIntegerField
      FieldName = 'UVEN_ID'
      Origin = 'NBFDADOS.PRODUTO.UVEN_ID'
    end
    object Q_PRODPRO_QTDE_PALLETUV: TFloatField
      FieldName = 'PRO_QTDE_PALLETUV'
      Origin = 'NBFDADOS.PRODUTO.PRO_QTDE_PALLETUV'
    end
    object Q_PRODQTDE_UVUE: TFloatField
      FieldName = 'QTDE_UVUE'
      Origin = 'NBFDADOS.PRODUTO.QTDE_UVUE'
    end
  end
  object Q_AREAux: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select AR_ID,AR_NOME from AREA')
    ValidateWithMask = True
    Left = 477
    Top = 206
    object Q_AREAuxAR_ID: TAutoIncField
      FieldName = 'AR_ID'
      Origin = 'NBFDADOS.AREA.AR_ID'
    end
    object Q_AREAuxAR_NOME: TStringField
      FieldName = 'AR_NOME'
      Origin = 'NBFDADOS.AREA.AR_NOME'
      FixedChar = True
      Size = 40
    end
  end
  object Q_POS2: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'select POS_COD,POS_ID'
      'from AREA_POSICOES')
    ValidateWithMask = True
    Left = 365
    Top = 192
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
  object Q_ESTQ2: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select A.PRO_ID, '
      'SUM(A.ESTQ_QTDE) - SUM(A.ESTQ_QTDE_RETIRA)'
      'as'
      ' XVALOR,(SUM(A.ESTQ_QTDE) * B.PRO_PESO) as TOTPESO,'
      'C.CLIN_RAZA,B.Pro_COD,'
      'B.PRO_DESC, B.ULTIMO_PRECO'
      ''
      'from'
      'ESTOQUE A,'
      'PRODUTO B,'
      'CLIENTENBF C '
      'where '
      'A.PRO_ID = B.PRO_ID and'
      'B.CLIN_ID = C.CLIN_ID '
      'group by A.PRO_ID ,C.CLIN_RAZA,B.PRO_PESO,'
      'B.PRO_COD,B.PRO_DESC, B.ULTIMO_PRECO')
    ValidateWithMask = True
    Left = 104
    Top = 186
    object Q_ESTQ2CLIN_RAZA: TStringField
      DisplayLabel = 'Cliente NBF'
      DisplayWidth = 45
      FieldName = 'CLIN_RAZA'
      FixedChar = True
      Size = 50
    end
    object Q_ESTQ2Pro_COD: TStringField
      DisplayLabel = 'Cód.Produto'
      DisplayWidth = 12
      FieldName = 'Pro_COD'
      FixedChar = True
      Size = 16
    end
    object Q_ESTQ2PRO_DESC: TStringField
      DisplayLabel = 'Descrição Produto'
      DisplayWidth = 38
      FieldName = 'PRO_DESC'
      FixedChar = True
      Size = 40
    end
    object Q_ESTQ2XVALOR: TFloatField
      DisplayLabel = 'Qtde. UV'
      DisplayWidth = 10
      FieldName = 'XVALOR'
      DisplayFormat = '0.000'
      EditFormat = '0.000'
    end
    object Q_ESTQ2PRO_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'PRO_ID'
    end
    object Q_ESTQ2TOTPESO: TFloatField
      DisplayLabel = 'Total Peso'
      DisplayWidth = 15
      FieldName = 'TOTPESO'
      DisplayFormat = '###,###,##0.0000'
      EditFormat = '###,###,##0.0000'
    end
    object Q_ESTQ2ULTIMO_PRECO: TFloatField
      FieldName = 'ULTIMO_PRECO'
    end
  end
  object DS_ESTQ: TwwDataSource
    DataSet = cdsEstoque
    OnDataChange = DS_ESTQDataChange
    Left = 192
    Top = 375
  end
  object DS_ESTQ2: TwwDataSource
    DataSet = cdsEstoque2
    Left = 104
    Top = 369
  end
  object Q_AUX3: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    ValidateWithMask = True
    Left = 480
    Top = 141
  end
  object dspEstoque2: TDataSetProvider
    DataSet = Q_ESTQ2
    Constraints = True
    Left = 104
    Top = 248
  end
  object cdsEstoque2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEstoque2'
    Left = 104
    Top = 312
    object cdsEstoque2CLIN_RAZA: TStringField
      DisplayLabel = 'Cliente NBF'
      DisplayWidth = 45
      FieldName = 'CLIN_RAZA'
      FixedChar = True
      Size = 50
    end
    object cdsEstoque2Pro_COD: TStringField
      DisplayLabel = 'Cód.Produto'
      DisplayWidth = 12
      FieldName = 'Pro_COD'
      FixedChar = True
      Size = 16
    end
    object cdsEstoque2PRO_DESC: TStringField
      DisplayLabel = 'Descrição Produto'
      DisplayWidth = 38
      FieldName = 'PRO_DESC'
      FixedChar = True
      Size = 40
    end
    object cdsEstoque2XVALOR: TFloatField
      DisplayLabel = 'Qtde. UV'
      DisplayWidth = 10
      FieldName = 'XVALOR'
      DisplayFormat = '0.000'
    end
    object cdsEstoque2PRO_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'PRO_ID'
    end
    object cdsEstoque2TOTPESO: TFloatField
      DisplayLabel = 'Total Peso'
      DisplayWidth = 15
      FieldName = 'TOTPESO'
      DisplayFormat = '###,###,##0.0000'
      EditFormat = '###,###,##0.0000'
    end
    object cdsEstoque2ULTIMO_PRECO: TFloatField
      DisplayWidth = 10
      FieldName = 'ULTIMO_PRECO'
    end
  end
  object dspEstoque: TDataSetProvider
    DataSet = Q_ESTQ
    Constraints = True
    Left = 192
    Top = 248
  end
  object cdsEstoque: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEstoque'
    Left = 192
    Top = 312
    object cdsEstoqueCLIN_RAZA: TStringField
      DisplayLabel = 'Cliente NBF'
      DisplayWidth = 30
      FieldName = 'CLIN_RAZA'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_RAZA'
      FixedChar = True
      Size = 50
    end
    object cdsEstoquePRO_COD: TStringField
      DisplayLabel = 'Cód.Produto'
      DisplayWidth = 12
      FieldName = 'PRO_COD'
      Origin = 'NBFDADOS.PRODUTO.PRO_COD'
      FixedChar = True
      Size = 16
    end
    object cdsEstoquePRO_DESC: TStringField
      DisplayLabel = 'Descr.Produto'
      DisplayWidth = 31
      FieldName = 'PRO_DESC'
      Origin = 'NBFDADOS.PRODUTO.PRO_DESC'
      FixedChar = True
      Size = 40
    end
    object cdsEstoqueESTQ_TAG: TIntegerField
      DisplayLabel = 'Pallet TAG'
      DisplayWidth = 10
      FieldName = 'ESTQ_TAG'
      Origin = 'NBFDADOS.ESTOQUE.ESTQ_TAG'
    end
    object cdsEstoqueAR_NOME: TStringField
      DisplayLabel = 'Área'
      DisplayWidth = 10
      FieldName = 'AR_NOME'
      Origin = 'NBFDADOS.AREA.AR_NOME'
      FixedChar = True
      Size = 40
    end
    object cdsEstoquePOS_COD: TStringField
      DisplayLabel = 'Posição'
      DisplayWidth = 7
      FieldName = 'POS_COD'
      Origin = 'NBFDADOS.AREA_POSICOES.POS_COD'
      FixedChar = True
      Size = 6
    end
    object cdsEstoqueESTQ_QTDE: TFloatField
      DisplayLabel = 'Qtde. UV'
      DisplayWidth = 10
      FieldName = 'ESTQ_QTDE'
      Origin = 'NBFDADOS.ESTOQUE.ESTQ_QTDE'
    end
    object cdsEstoqueROM_DTBATCH: TDateTimeField
      DisplayLabel = 'Batch'
      DisplayWidth = 9
      FieldName = 'ROM_DTBATCH'
      Origin = 'NBFDADOS.ESTOQUE.ROM_DTBATCH'
      DisplayFormat = 'dd/MM/yy'
    end
    object cdsEstoqueROM_DTVENCTO: TDateTimeField
      DisplayLabel = 'Vencimento'
      DisplayWidth = 9
      FieldName = 'ROM_DTVENCTO'
      Origin = 'NBFDADOS.ESTOQUE.ROM_DTVENCTO'
      DisplayFormat = 'dd/MM/yy'
    end
    object cdsEstoqueESTQ_DT_ENTRADA: TDateTimeField
      DisplayLabel = 'Data Entrada'
      DisplayWidth = 18
      FieldName = 'ESTQ_DT_ENTRADA'
      Origin = 'NBFDADOS.ESTOQUE.ESTQ_DT_ENTRADA'
    end
    object cdsEstoqueESTQ_ID: TAutoIncField
      FieldName = 'ESTQ_ID'
      Origin = 'NBFDADOS.ESTOQUE.ESTQ_ID'
      ReadOnly = True
      Visible = False
    end
    object cdsEstoqueAR_ID: TIntegerField
      FieldName = 'AR_ID'
      Origin = 'NBFDADOS.ESTOQUE.AR_ID'
      Visible = False
    end
    object cdsEstoquePOS_ID: TIntegerField
      FieldName = 'POS_ID'
      Origin = 'NBFDADOS.ESTOQUE.POS_ID'
      Visible = False
    end
    object cdsEstoqueOS_ID_ORIG: TIntegerField
      FieldName = 'OS_ID_ORIG'
      Origin = 'NBFDADOS.ESTOQUE.OS_ID_ORIG'
      Visible = False
    end
    object cdsEstoquePRO_ID: TIntegerField
      FieldName = 'PRO_ID'
      Origin = 'NBFDADOS.ESTOQUE.PRO_ID'
      Visible = False
    end
    object cdsEstoqueESTQ_QTDE_RETIRA: TFloatField
      FieldName = 'ESTQ_QTDE_RETIRA'
      Origin = 'NBFDADOS.ESTOQUE.ESTQ_QTDE_RETIRA'
      Visible = False
    end
    object cdsEstoqueMANI_ID: TIntegerField
      FieldName = 'MANI_ID'
      Origin = 'NBFDADOS.ESTOQUE.MANI_ID'
      Visible = False
    end
    object cdsEstoqueESTQ_PESO: TFloatField
      FieldName = 'ESTQ_PESO'
      Origin = 'NBFDADOS.ESTOQUE.ESTQ_PESO'
      Visible = False
    end
    object cdsEstoqueOS_ID_DEST: TIntegerField
      FieldName = 'OS_ID_DEST'
      Origin = 'NBFDADOS.ESTOQUE.OS_ID_DEST'
      Visible = False
    end
    object cdsEstoqueESTQ_DT_SAIDA: TDateTimeField
      FieldName = 'ESTQ_DT_SAIDA'
      Origin = 'NBFDADOS.ESTOQUE.ESTQ_DT_SAIDA'
      Visible = False
    end
    object cdsEstoqueROM_ID_ENT: TIntegerField
      FieldName = 'ROM_ID_ENT'
      Origin = 'NBFDADOS.ESTOQUE.ROM_ID_ENT'
      Visible = False
    end
    object cdsEstoqueROM_ID_SAIDA: TIntegerField
      FieldName = 'ROM_ID_SAIDA'
      Origin = 'NBFDADOS.ESTOQUE.ROM_ID_SAIDA'
      Visible = False
    end
    object cdsEstoqueESTQ_LOTE: TStringField
      DisplayWidth = 20
      FieldName = 'ESTQ_LOTE'
      Origin = 'NBFDADOS.ESTOQUE.ESTQ_LOTE'
      Visible = False
      FixedChar = True
    end
    object cdsEstoqueUVEN_ID: TIntegerField
      FieldName = 'UVEN_ID'
      Origin = 'NBFDADOS.ESTOQUE.UVEN_ID'
      Visible = False
    end
    object cdsEstoqueAR_ID_ANTERIOR: TIntegerField
      FieldName = 'AR_ID_ANTERIOR'
      Origin = 'NBFDADOS.ESTOQUE.AR_ID_ANTERIOR'
      Visible = False
    end
    object cdsEstoquePOS_ID_ANTERIOR: TIntegerField
      FieldName = 'POS_ID_ANTERIOR'
      Origin = 'NBFDADOS.ESTOQUE.POS_ID_ANTERIOR'
      Visible = False
    end
    object cdsEstoqueESTQ_DT_ULMOV: TDateTimeField
      FieldName = 'ESTQ_DT_ULMOV'
      Origin = 'NBFDADOS.ESTOQUE.ESTQ_DT_ULMOV'
      Visible = False
    end
    object cdsEstoquePAR_ID: TIntegerField
      FieldName = 'PAR_ID'
      Origin = 'NBFDADOS.ESTOQUE.PAR_ID'
      Visible = False
    end
    object cdsEstoqueGEROU_OPER_ROMSAIDA: TStringField
      FieldName = 'GEROU_OPER_ROMSAIDA'
      Origin = 'NBFDADOS.ESTOQUE.GEROU_OPER_ROMSAIDA'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object cdsEstoqueMARCADOR: TStringField
      FieldName = 'MARCADOR'
      Origin = 'NBFDADOS.ESTOQUE.MARCADOR'
      Visible = False
      FixedChar = True
      Size = 1
    end
  end
  object dspProduto: TDataSetProvider
    DataSet = Q_PROD
    Constraints = True
    Left = 280
    Top = 248
  end
  object cdsProduto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProduto'
    Left = 280
    Top = 312
    object cdsProdutoPRO_COD: TStringField
      FieldName = 'PRO_COD'
      FixedChar = True
      Size = 16
    end
    object cdsProdutoPRO_DESC: TStringField
      FieldName = 'PRO_DESC'
      FixedChar = True
      Size = 40
    end
    object cdsProdutoPRO_ID: TAutoIncField
      FieldName = 'PRO_ID'
      ReadOnly = True
    end
    object cdsProdutoCLIN_ID: TIntegerField
      FieldName = 'CLIN_ID'
    end
    object cdsProdutoUVEN_ID: TIntegerField
      FieldName = 'UVEN_ID'
    end
    object cdsProdutoPRO_QTDE_PALLETUV: TFloatField
      FieldName = 'PRO_QTDE_PALLETUV'
    end
    object cdsProdutoQTDE_UVUE: TFloatField
      FieldName = 'QTDE_UVUE'
    end
  end
  object dsExcel: TDataSource
    DataSet = cdsEstoque2
    Left = 320
    Top = 120
  end
end
