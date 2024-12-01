object frmSelecionaItensNFEntrada: TfrmSelecionaItensNFEntrada
  Left = 266
  Top = 16
  Width = 1009
  Height = 610
  Caption = 'Seleção de Notas Fiscais de Entrada'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 993
    Height = 193
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object lbl3: TLabel
      Left = 24
      Top = 93
      Width = 93
      Height = 19
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Nº da Nota : '
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl4: TLabel
      Left = 20
      Top = 16
      Width = 93
      Height = 19
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Período de:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl5: TLabel
      Left = 224
      Top = 16
      Width = 41
      Height = 19
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Até:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl1: TLabel
      Left = 48
      Top = 54
      Width = 69
      Height = 19
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Cliente : '
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl2: TLabel
      Left = 12
      Top = 134
      Width = 101
      Height = 19
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Tipo de NF:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 264
      Top = 93
      Width = 93
      Height = 19
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Produto:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object NFvvvvvv: TwwDBLookupCombo
      Left = 632
      Top = 13
      Width = 164
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      BorderStyle = bsNone
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'NFI_NUMERO'#9'10'#9'NFI_NUMERO'#9'F')
      LookupField = 'NFI_CODI'
      ParentFont = False
      TabOrder = 2
      Visible = False
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
    end
    object medt1: TMaskEdit
      Left = 120
      Top = 16
      Width = 97
      Height = 21
      BorderStyle = bsNone
      EditMask = '99/99/9999'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 0
      Text = '  /  /    '
    end
    object medt2: TMaskEdit
      Left = 280
      Top = 16
      Width = 97
      Height = 21
      BorderStyle = bsNone
      EditMask = '99/99/9999'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 1
      Text = '  /  /    '
    end
    object btn1: TButton
      Left = 508
      Top = 129
      Width = 75
      Height = 25
      Caption = 'Buscar'
      TabOrder = 3
      OnClick = btn1Click
    end
    object edtNF: TEdit
      Left = 120
      Top = 90
      Width = 121
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object CLIENTE: TwwDBLookupCombo
      Left = 120
      Top = 52
      Width = 369
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      CharCase = ecUpperCase
      BorderStyle = bsNone
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'CLIN_RAZA'#9'40'#9'Nome'#9'F')
      LookupTable = Q_CLIENTENBF
      LookupField = 'CLIN_ID'
      ParentFont = False
      TabOrder = 5
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
    end
    object cboTipoNF: TwwDBComboBox
      Left = 120
      Top = 132
      Width = 369
      Height = 24
      ShowButton = True
      Style = csDropDown
      MapList = True
      AllowClearKey = False
      DropDownCount = 8
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 0
      Items.Strings = (
        'Nota Fiscal de Entrada'#9'2'
        'Nota Fiscal Entrada Industrialização'#9'23'
        'Nota Fiscal Entrada Reprocesso'#9'28')
      ItemIndex = 0
      ParentFont = False
      Sorted = False
      TabOrder = 6
      UnboundDataType = wwDefault
    end
    object txtProduto: TEdit
      Left = 360
      Top = 90
      Width = 129
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
  end
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 193
    Width = 993
    Height = 339
    Selected.Strings = (
      'NFI_NUMERO'#9'8'#9'NF'
      'PRO_COD'#9'16'#9'Código'
      'PRO_DESC'#9'50'#9'Descrição'
      'INF_QTDE'#9'9'#9'Qtde'
      'INF_QTDERETORNADA'#9'9'#9'Qtde Retornada'
      'INF_QTDERETORNADASALDO'#9'9'#9'Saldo'
      'QTDE_SELECIONADA'#9'9'#9'Qtde Selecionada'#9'F')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 6
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = ds1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
  end
  object pnl2: TPanel
    Left = 0
    Top = 532
    Width = 993
    Height = 40
    Align = alBottom
    TabOrder = 2
    object btn2: TButton
      Left = 16
      Top = 8
      Width = 193
      Height = 25
      Caption = 'Adicionar itens selecionados'
      TabOrder = 0
      OnClick = btn2Click
    end
  end
  object qry1: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT '#9'A.NFI_NUMERO, B.*'
      'FROM'#9'NF A INNER JOIN NF_ITENS B ON A.NFI_CODI = B.NFI_CODI'
      'WHERE  TDOC_ID = 2')
    Left = 384
    Top = 280
    object qry1NFI_NUMERO: TStringField
      DisplayLabel = 'NF'
      DisplayWidth = 8
      FieldName = 'NFI_NUMERO'
      ProviderFlags = []
      Size = 10
    end
    object qry1PRO_COD: TStringField
      DisplayLabel = 'Código'
      DisplayWidth = 16
      FieldName = 'PRO_COD'
      ProviderFlags = [pfInUpdate]
      Size = 16
    end
    object qry1PRO_DESC: TStringField
      DisplayLabel = 'Descrição'
      DisplayWidth = 50
      FieldName = 'PRO_DESC'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object qry1INF_QTDE: TFloatField
      DisplayLabel = 'Qtde'
      DisplayWidth = 9
      FieldName = 'INF_QTDE'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,##0.00'
    end
    object qry1INF_QTDERETORNADA: TFloatField
      DisplayLabel = 'Qtde Retornada'
      DisplayWidth = 9
      FieldName = 'INF_QTDERETORNADA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,##0.00'
    end
    object qry1INF_QTDERETORNADASALDO: TFloatField
      DisplayLabel = 'Saldo'
      DisplayWidth = 9
      FieldName = 'INF_QTDERETORNADASALDO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,##0.00'
    end
    object qry1QTDE_SELECIONADA: TFloatField
      DisplayLabel = 'Qtde Selecionada'
      DisplayWidth = 9
      FieldName = 'QTDE_SELECIONADA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,##0.00'
    end
    object qry1INF_CODI: TAutoIncField
      DisplayWidth = 10
      FieldName = 'INF_CODI'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
      Visible = False
    end
    object qry1INF_ITEM: TIntegerField
      DisplayWidth = 10
      FieldName = 'INF_ITEM'
      ProviderFlags = [pfInUpdate]
      Visible = False
    end
    object qry1NFI_CODI: TIntegerField
      DisplayWidth = 10
      FieldName = 'NFI_CODI'
      ProviderFlags = [pfInUpdate]
      Visible = False
    end
    object qry1PRO_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'PRO_ID'
      ProviderFlags = [pfInUpdate]
      Visible = False
    end
    object qry1INF_PUNI: TFloatField
      DisplayWidth = 10
      FieldName = 'INF_PUNI'
      ProviderFlags = [pfInUpdate]
      Visible = False
    end
    object qry1INF_AIPI: TFloatField
      DisplayWidth = 10
      FieldName = 'INF_AIPI'
      ProviderFlags = [pfInUpdate]
      Visible = False
    end
    object qry1INF_VIPI: TFloatField
      DisplayWidth = 10
      FieldName = 'INF_VIPI'
      ProviderFlags = [pfInUpdate]
      Visible = False
    end
    object qry1INF_TOTA: TFloatField
      DisplayWidth = 10
      FieldName = 'INF_TOTA'
      ProviderFlags = [pfInUpdate]
      Visible = False
    end
    object qry1INF_PESOLIQ: TFloatField
      DisplayWidth = 10
      FieldName = 'INF_PESOLIQ'
      ProviderFlags = [pfInUpdate]
      Visible = False
    end
    object qry1INF_PESO: TFloatField
      DisplayWidth = 10
      FieldName = 'INF_PESO'
      ProviderFlags = [pfInUpdate]
      Visible = False
    end
    object qry1INF_VOL: TFloatField
      DisplayWidth = 10
      FieldName = 'INF_VOL'
      ProviderFlags = [pfInUpdate]
      Visible = False
    end
    object qry1INF_AICM: TFloatField
      DisplayWidth = 10
      FieldName = 'INF_AICM'
      ProviderFlags = [pfInUpdate]
      Visible = False
    end
    object qry1INF_BICM: TFloatField
      DisplayWidth = 10
      FieldName = 'INF_BICM'
      ProviderFlags = [pfInUpdate]
      Visible = False
    end
    object qry1INF_VICM: TFloatField
      DisplayWidth = 10
      FieldName = 'INF_VICM'
      ProviderFlags = [pfInUpdate]
      Visible = False
    end
    object qry1UVEN_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'UVEN_ID'
      ProviderFlags = [pfInUpdate]
      Visible = False
    end
    object qry1INF_NFE: TIntegerField
      DisplayWidth = 10
      FieldName = 'INF_NFE'
      ProviderFlags = [pfInUpdate]
      Visible = False
    end
    object qry1ESTQ_LOTE1: TStringField
      DisplayWidth = 20
      FieldName = 'ESTQ_LOTE1'
      ProviderFlags = [pfInUpdate]
      Visible = False
      Size = 50
    end
    object qry1ESTQ_LOTE1_QTDE: TFloatField
      DisplayWidth = 10
      FieldName = 'ESTQ_LOTE1_QTDE'
      ProviderFlags = [pfInUpdate]
      Visible = False
    end
    object qry1ESTQ_LOTE2: TStringField
      DisplayWidth = 20
      FieldName = 'ESTQ_LOTE2'
      ProviderFlags = [pfInUpdate]
      Visible = False
      Size = 50
    end
    object qry1ESTQ_LOTE2_QTDE: TFloatField
      DisplayWidth = 10
      FieldName = 'ESTQ_LOTE2_QTDE'
      ProviderFlags = [pfInUpdate]
      Visible = False
    end
    object qry1INF_CST: TStringField
      DisplayWidth = 3
      FieldName = 'INF_CST'
      ProviderFlags = [pfInUpdate]
      Visible = False
      Size = 3
    end
    object qry1UNIDADE: TStringField
      DisplayWidth = 5
      FieldName = 'UNIDADE'
      ProviderFlags = [pfInUpdate]
      Visible = False
      Size = 5
    end
    object qry1NCM: TStringField
      DisplayWidth = 10
      FieldName = 'NCM'
      ProviderFlags = [pfInUpdate]
      Visible = False
      Size = 10
    end
  end
  object ds1: TDataSource
    DataSet = qry1
    Left = 440
    Top = 200
  end
  object qry2: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    Left = 144
    Top = 304
  end
  object Q_CLIENTENBF: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'SELECT'#9'CLIN.CLIN_ID,'
      #9'CLIN.CLIN_RAZA'
      'FROM'#9'CLIENTENBF CLIN'
      'WHERE clin_contrato <> '#39'R'#39
      'ORDER BY CLIN.CLIN_RAZA'
      '')
    ValidateWithMask = True
    Left = 760
    Top = 56
    object Q_CLIENTENBFCLIN_ID: TAutoIncField
      FieldName = 'CLIN_ID'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_ID'
    end
    object Q_CLIENTENBFCLIN_RAZA: TStringField
      FieldName = 'CLIN_RAZA'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_RAZA'
      FixedChar = True
      Size = 50
    end
  end
end
