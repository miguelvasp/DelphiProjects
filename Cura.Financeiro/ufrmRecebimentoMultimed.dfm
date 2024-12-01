object frmRecebimentoMultimed: TfrmRecebimentoMultimed
  Left = 192
  Top = 124
  Width = 1037
  Height = 563
  Caption = 'Recebimentos Multimed'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1021
    Height = 121
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 23
      Height = 13
      Caption = 'Data'
    end
    object Label2: TLabel
      Left = 104
      Top = 8
      Width = 16
      Height = 13
      Caption = 'Até'
    end
    object Label3: TLabel
      Left = 200
      Top = 8
      Width = 41
      Height = 13
      Caption = 'N Fatura'
    end
    object Label4: TLabel
      Left = 16
      Top = 56
      Width = 45
      Height = 13
      Caption = 'Convênio'
    end
    object MaskEdit1: TMaskEdit
      Left = 16
      Top = 24
      Width = 81
      Height = 21
      EditMask = '99/99/9999'
      MaxLength = 10
      TabOrder = 0
      Text = '  /  /    '
    end
    object MaskEdit2: TMaskEdit
      Left = 104
      Top = 24
      Width = 81
      Height = 21
      EditMask = '99/99/9999'
      MaxLength = 10
      TabOrder = 1
      Text = '  /  /    '
    end
    object MaskEdit3: TMaskEdit
      Left = 200
      Top = 24
      Width = 145
      Height = 21
      TabOrder = 2
    end
    object rbGerado: TRadioButton
      Left = 352
      Top = 8
      Width = 145
      Height = 17
      Caption = 'Recebimento Gerado'
      TabOrder = 3
    end
    object RadioButton1: TRadioButton
      Left = 352
      Top = 24
      Width = 137
      Height = 17
      Caption = 'Gerar Recebimento'
      Checked = True
      TabOrder = 4
      TabStop = True
    end
    object Button1: TButton
      Left = 352
      Top = 69
      Width = 75
      Height = 25
      Caption = 'Buscar'
      TabOrder = 5
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 432
      Top = 69
      Width = 75
      Height = 25
      Caption = 'Imprimir'
      TabOrder = 6
      OnClick = Button2Click
    end
    object ComboBox1: TComboBox
      Left = 16
      Top = 72
      Width = 329
      Height = 21
      ItemHeight = 13
      TabOrder = 7
    end
    object CheckBox1: TCheckBox
      Left = 3
      Top = 101
      Width = 142
      Height = 17
      Caption = 'Marcar/Desmarcar'
      TabOrder = 8
      OnClick = CheckBox1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 484
    Width = 1021
    Height = 41
    Align = alBottom
    TabOrder = 1
    object Label5: TLabel
      Left = 840
      Top = 20
      Width = 173
      Height = 16
      Caption = 'CLIENTE NÃO LOCALIZADO'
      Color = clRed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object lbTotal: TLabel
      Left = 168
      Top = 9
      Width = 89
      Height = 20
      Caption = 'TOTAL R$ '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnGerar: TButton
      Left = 16
      Top = 8
      Width = 137
      Height = 25
      Caption = 'Gerar Recebimentos'
      Enabled = False
      TabOrder = 0
      OnClick = btnGerarClick
    end
  end
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 121
    Width = 1021
    Height = 363
    Selected.Strings = (
      'SEL'#9'1'#9'SEL'#9#9
      'REC_CODI'#9'10'#9'Receb.'#9#9
      'NUMERO_FATURAMENTO'#9'12'#9'N Fat.'#9#9
      'NOTA_FIS'#9'10'#9'NOTA_FIS'#9#9
      'DATA_FATURAMENTO'#9'18'#9'DATA_FATURAMENTO'#9#9
      'NOMECONVENIO'#9'40'#9'NOMECONVENIO'#9#9
      'CNPJ'#9'16'#9'CNPJ'#9#9
      'ValorNF'#9'15'#9'ValorNF'#9#9
      'VALOR'#9'10'#9'VALOR'#9'F'#9)
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = DataSource1
    TabOrder = 2
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnCalcCellColors = wwDBGrid1CalcCellColors
  end
  object DataSource1: TDataSource
    DataSet = Q_NFAT
    Left = 216
    Top = 128
  end
  object Q_AUX: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    ValidateWithMask = True
    Left = 448
    Top = 160
  end
  object UPD_NFAT: TUpdateSQL
    ModifySQL.Strings = (
      'update N_FAT_MULTIMED'
      'set '
      ''
      '  NOTA_FIS = :NOTA_FIS,'
      '  DATA_FATURAMENTO = :DATA_FATURAMENTO,'
      '  VENCIMENTO = :VENCIMENTO,'
      '  NOMECONVENIO = :NOMECONVENIO,'
      '  CNPJ = :CNPJ,'
      '  SEL = :SEL'
      'where'
      '  ID = :OLD_ID')
    DeleteSQL.Strings = (
      '')
    Left = 425
    Top = 319
  end
  object Q_NFAT: TwwQuery
    CachedUpdates = True
    OnCalcFields = Q_NFATCalcFields
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    RequestLive = True
    SQL.Strings = (
      'select * from N_FAT_MULTIMED')
    UpdateMode = upWhereKeyOnly
    UpdateObject = UPD_NFAT
    ControlType.Strings = (
      'SEL;CheckBox;S;N')
    ValidateWithMask = True
    Left = 328
    Top = 240
    object Q_NFATSEL: TStringField
      DisplayWidth = 1
      FieldName = 'SEL'
      OnChange = Q_NFATSELChange
      FixedChar = True
      Size = 1
    end
    object Q_NFATREC_CODI: TIntegerField
      DisplayLabel = 'Receb.'
      DisplayWidth = 10
      FieldName = 'REC_CODI'
    end
    object Q_NFATNUMERO_FATURAMENTO: TStringField
      DisplayLabel = 'N Fat.'
      DisplayWidth = 12
      FieldName = 'NUMERO_FATURAMENTO'
      FixedChar = True
      Size = 255
    end
    object Q_NFATNOTA_FIS: TStringField
      DisplayWidth = 10
      FieldName = 'NOTA_FIS'
      FixedChar = True
      Size = 10
    end
    object Q_NFATDATA_FATURAMENTO: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DATA_FATURAMENTO'
    end
    object Q_NFATNOMECONVENIO: TStringField
      DisplayWidth = 40
      FieldName = 'NOMECONVENIO'
      FixedChar = True
      Size = 80
    end
    object Q_NFATCNPJ: TStringField
      DisplayWidth = 16
      FieldName = 'CNPJ'
      FixedChar = True
      Size = 36
    end
    object Q_NFATValorNF: TFloatField
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'ValorNF'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object Q_NFATVENCIMENTO: TDateTimeField
      DisplayWidth = 18
      FieldName = 'VENCIMENTO'
      Visible = False
    end
    object Q_NFATFINANC_VALOR: TFloatField
      DisplayWidth = 10
      FieldName = 'FINANC_VALOR'
      Visible = False
    end
    object Q_NFATCLI_CODI: TIntegerField
      DisplayWidth = 10
      FieldName = 'CLI_CODI'
      Visible = False
    end
    object Q_NFATId: TAutoIncField
      DisplayWidth = 10
      FieldName = 'Id'
      Visible = False
    end
    object Q_NFATVALOR: TFloatField
      DisplayWidth = 10
      FieldName = 'VALOR'
    end
  end
end
