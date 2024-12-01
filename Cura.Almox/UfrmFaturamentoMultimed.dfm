object frmFaturamentoMultimed: TfrmFaturamentoMultimed
  Left = 355
  Top = 108
  Width = 1072
  Height = 652
  Caption = 'Faturamento Multimed'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1056
    Height = 65
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 6
      Width = 98
      Height = 13
      Caption = 'Data                    até'
    end
    object Label2: TLabel
      Left = 160
      Top = 6
      Width = 99
      Height = 13
      Caption = 'N° Faturamento   Até'
    end
    object Label3: TLabel
      Left = 480
      Top = 6
      Width = 76
      Height = 13
      Caption = 'Nome Convenio'
    end
    object lbAgrupar: TLabel
      Left = 264
      Top = 48
      Width = 6
      Height = 13
      Caption = '0'
      Visible = False
    end
    object Label4: TLabel
      Left = 320
      Top = 6
      Width = 102
      Height = 13
      Caption = 'NSU de                Até'
    end
    object MaskEdit1: TMaskEdit
      Left = 8
      Top = 22
      Width = 65
      Height = 21
      EditMask = '99/99/9999'
      MaxLength = 10
      TabOrder = 0
      Text = '  /  /    '
    end
    object MaskEdit2: TMaskEdit
      Left = 88
      Top = 22
      Width = 65
      Height = 21
      EditMask = '99/99/9999'
      MaxLength = 10
      TabOrder = 1
      Text = '  /  /    '
    end
    object edtFatDe: TEdit
      Left = 160
      Top = 22
      Width = 73
      Height = 21
      TabOrder = 2
    end
    object edtFatAte: TEdit
      Left = 240
      Top = 22
      Width = 73
      Height = 21
      TabOrder = 3
    end
    object cboConvenio: TwwDBLookupCombo
      Left = 480
      Top = 22
      Width = 313
      Height = 21
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'NOMECONVENIO'#9'40'#9'NOMECONVENIO'#9#9)
      LookupTable = qrConvenio
      LookupField = 'NOMECONVENIO'
      TabOrder = 4
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnCloseUp = cboConvenioCloseUp
    end
    object Button1: TButton
      Left = 802
      Top = 18
      Width = 75
      Height = 25
      Caption = 'Buscar'
      TabOrder = 5
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 882
      Top = 18
      Width = 75
      Height = 25
      Caption = 'Imprimir'
      TabOrder = 6
      OnClick = Button2Click
    end
    object edtNSUIni: TEdit
      Left = 320
      Top = 22
      Width = 73
      Height = 21
      TabOrder = 7
    end
    object edtNSUFim: TEdit
      Left = 400
      Top = 22
      Width = 73
      Height = 21
      TabOrder = 8
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 572
    Width = 1056
    Height = 42
    Align = alBottom
    TabOrder = 1
    object lbSoma: TLabel
      Left = 315
      Top = 13
      Width = 158
      Height = 16
      Caption = 'Total Seleção: R$ 0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Button3: TButton
      Left = 8
      Top = 8
      Width = 145
      Height = 25
      Caption = 'Agrupar e Lançar'
      TabOrder = 0
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 160
      Top = 8
      Width = 145
      Height = 25
      Caption = 'Lançar Faturamento'
      TabOrder = 1
      OnClick = Button4Click
    end
  end
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 65
    Width = 1056
    Height = 507
    ControlType.Strings = (
      'Lancar;CheckBox;S;N'
      'Agrupar;CheckBox;S;N')
    Selected.Strings = (
      'Lancar'#9'1'#9'Lancar'#9#9
      'Agrupar'#9'1'#9'Agrupar'#9#9
      'NRFATURAMENTO'#9'18'#9'NR FATURAMENTO'#9'F'#9
      'DTFATURA'#9'18'#9'DT FATURA'#9'F'#9
      'NSU'#9'12'#9'NSU'#9'F'#9
      'MES'#9'8'#9'MES'#9'F'
      'ANO'#9'8'#9'ANO'#9'F'
      'NOMECONVENIO'#9'65'#9'NOME CONVENIO'#9'F'
      'VALORFATURADO'#9'19'#9'VALOR FATURADO'#9'T'#9)
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
  end
  object qrConvenio: TADOQuery
    Connection = FMenu.ADOConnection1
    Parameters = <>
    SQL.Strings = (
      
        'SELECT DISTINCT NOMECONVENIO FROM TAB_FATURAMENTO_MMED ORDER BY ' +
        'NOMECONVENIO')
    Left = 616
    Top = 192
    object qrConvenioNOMECONVENIO: TStringField
      DisplayWidth = 40
      FieldName = 'NOMECONVENIO'
      Size = 40
    end
  end
  object qrBusca: TADOQuery
    Connection = FMenu.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM TAB_FATURAMENTO_MMED')
    Left = 368
    Top = 264
    object qrBuscaLancar: TStringField
      DisplayWidth = 1
      FieldName = 'Lancar'
      ProviderFlags = [pfInUpdate]
      OnChange = qrBuscaLancarChange
      Size = 1
    end
    object qrBuscaAgrupar: TStringField
      DisplayWidth = 1
      FieldName = 'Agrupar'
      ProviderFlags = [pfInUpdate]
      OnChange = qrBuscaAgruparChange
      Size = 1
    end
    object qrBuscaNRFATURAMENTO: TWideStringField
      DisplayLabel = 'NR FATURAMENTO'
      DisplayWidth = 18
      FieldName = 'NRFATURAMENTO'
      ProviderFlags = []
      Size = 384
    end
    object qrBuscaDTFATURA: TDateTimeField
      DisplayLabel = 'DT FATURA'
      DisplayWidth = 18
      FieldName = 'DTFATURA'
      ProviderFlags = []
    end
    object qrBuscaNSU: TStringField
      DisplayWidth = 12
      FieldName = 'NSU'
      Size = 50
    end
    object qrBuscaMES: TWideStringField
      DisplayWidth = 8
      FieldName = 'MES'
      ProviderFlags = []
      Size = 384
    end
    object qrBuscaANO: TWideStringField
      DisplayWidth = 8
      FieldName = 'ANO'
      ProviderFlags = []
      Size = 384
    end
    object qrBuscaNOMECONVENIO: TStringField
      DisplayLabel = 'NOME CONVENIO'
      DisplayWidth = 65
      FieldName = 'NOMECONVENIO'
      ProviderFlags = []
      Size = 40
    end
    object qrBuscaVALORFATURADO: TBCDField
      DisplayLabel = 'VALOR FATURADO'
      DisplayWidth = 19
      FieldName = 'VALORFATURADO'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object qrBuscaCLI_CODI_FINANC: TBCDField
      DisplayWidth = 39
      FieldName = 'CLI_CODI_FINANC'
      ProviderFlags = []
      Visible = False
      Precision = 32
      Size = 0
    end
    object qrBuscaCLI_CGC_FINANC: TStringField
      DisplayWidth = 15
      FieldName = 'CLI_CGC_FINANC'
      ProviderFlags = []
      Visible = False
      Size = 15
    end
    object qrBuscaId: TAutoIncField
      DisplayWidth = 10
      FieldName = 'Id'
      ProviderFlags = [pfInWhere]
      ReadOnly = True
      Visible = False
    end
  end
  object DataSource1: TDataSource
    DataSet = qrBusca
    OnDataChange = DataSource1DataChange
    Left = 472
    Top = 176
  end
  object qrSoma: TADOQuery
    Connection = FMenu.ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'SELECT SUM(VALORFATURADO) AS SOMA FROM TAB_FATURAMENTO_MMED')
    Left = 200
    Top = 184
    object qrSomaSOMA: TBCDField
      FieldName = 'SOMA'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
  end
  object qrLimpaSelecao: TADOQuery
    Connection = FMenu.ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'UPDATE TAB_FATURAMENTO_MMED SET Lancar = '#39'N'#39', Agrupar = '#39'N'#39)
    Left = 488
    Top = 136
  end
  object qrProc: TADOQuery
    Connection = FMenu.ADOConnection1
    Parameters = <>
    Left = 280
    Top = 360
  end
end
