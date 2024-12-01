object frmConfirmaConhecimento: TfrmConfirmaConhecimento
  Left = 258
  Top = 69
  Width = 804
  Height = 601
  Caption = 'Confirmação de Conhecimentos de Transporte'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 788
    Height = 129
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 122
      Height = 14
      Caption = 'Data do manifesto de:'
    end
    object Label2: TLabel
      Left = 152
      Top = 16
      Width = 20
      Height = 14
      Caption = 'Até'
    end
    object Label3: TLabel
      Left = 296
      Top = 16
      Width = 117
      Height = 14
      Caption = 'Número de Manifesto'
    end
    object Label4: TLabel
      Left = 16
      Top = 56
      Width = 37
      Height = 14
      Caption = 'Cliente'
    end
    object Label5: TLabel
      Left = 232
      Top = 104
      Width = 379
      Height = 14
      Caption = 'OBS: É necessário que as OE'#39's tenham os valores confirmados.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object MaskEdit1: TMaskEdit
      Left = 16
      Top = 32
      Width = 121
      Height = 22
      EditMask = '99/99/9999'
      MaxLength = 10
      TabOrder = 0
      Text = '  /  /    '
    end
    object MaskEdit2: TMaskEdit
      Left = 152
      Top = 32
      Width = 121
      Height = 22
      EditMask = '99/99/9999'
      MaxLength = 10
      TabOrder = 1
      Text = '  /  /    '
    end
    object edtMani: TEdit
      Left = 296
      Top = 32
      Width = 121
      Height = 22
      TabOrder = 2
    end
    object cboCliente: TwwDBLookupCombo
      Left = 16
      Top = 72
      Width = 561
      Height = 22
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'CLIN_RAZA'#9'50'#9'CLIN_RAZA'#9'F')
      LookupTable = qrCli
      LookupField = 'CLIN_ID'
      TabOrder = 3
      AutoDropDown = True
      ShowButton = True
      AllowClearKey = False
    end
    object Button2: TButton
      Left = 584
      Top = 70
      Width = 121
      Height = 25
      Caption = 'Buscar'
      TabOrder = 4
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 8
      Top = 104
      Width = 89
      Height = 18
      Caption = 'Marcar todos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 104
      Top = 103
      Width = 113
      Height = 18
      Caption = 'Desmarcar todos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = Button4Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 522
    Width = 788
    Height = 41
    Align = alBottom
    TabOrder = 1
    object Button1: TButton
      Left = 16
      Top = 8
      Width = 233
      Height = 25
      Caption = 'Confirmar OE'#39's selecionadas'
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 129
    Width = 788
    Height = 393
    ControlType.Strings = (
      'SEL_CTRC;CheckBox;S;N')
    Selected.Strings = (
      'SEL_CTRC'#9'1'#9'***'
      'MANI_ID'#9'10'#9'Manifesto'
      'ORD_CONH'#9'10'#9'Conh. Provisorio'
      'MANI_DATA'#9'15'#9'Data'
      'CLIN_RAZA'#9'50'#9'Cliente')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = DataSource1
    TabOrder = 2
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    IndicatorColor = icBlack
  end
  object qrBusca: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT TOP 100'
      #9'A.PAMCARD_SEL,'
      #9'A.ORD_ID,'
      #9'A.ORD_CONH,'
      #9'A.MANI_ID,'
      #9'B.MANI_DATA,'
      #9'C.CLIN_RAZA'
      'FROM ORDEM_COLETA_ENTREGA A INNER JOIN MANIFESTO B'
      'ON A.MANI_ID = B.MANI_ID INNER JOIN CLIENTENBF C ON '
      'A.CLIN_ID = C.CLIN_ID'
      'WHERE A.ORD_STATUS = '#39'A'#39)
    Left = 328
    Top = 248
    object qrBuscaSEL_CTRC: TStringField
      DisplayLabel = '***'
      DisplayWidth = 1
      FieldName = 'SEL_CTRC'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object qrBuscaMANI_ID: TIntegerField
      DisplayLabel = 'Manifesto'
      DisplayWidth = 10
      FieldName = 'MANI_ID'
      ProviderFlags = []
      ReadOnly = True
    end
    object qrBuscaORD_CONH: TStringField
      DisplayLabel = 'Conh. Provisorio'
      DisplayWidth = 10
      FieldName = 'ORD_CONH'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object qrBuscaMANI_DATA: TDateTimeField
      DisplayLabel = 'Data'
      DisplayWidth = 15
      FieldName = 'MANI_DATA'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = 'dd/MM/yyyy'
    end
    object qrBuscaCLIN_RAZA: TStringField
      DisplayLabel = 'Cliente'
      DisplayWidth = 50
      FieldName = 'CLIN_RAZA'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object qrBuscaORD_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'ORD_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
      Visible = False
    end
  end
  object DataSource1: TDataSource
    DataSet = qrBusca
    Left = 328
    Top = 376
  end
  object qrAux: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    Left = 408
    Top = 240
  end
  object ADOStoredProc1: TADOStoredProc
    Connection = FMenu.ADOConnection
    ProcedureName = 'CONFIRMA_CONHECIMENTO;1'
    Parameters = <
      item
        Name = '@ORD_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Prepared = True
    Left = 144
    Top = 232
  end
  object qrCli: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select  CLIN_ID,CLIN_RAZA  from CLIENTENBF where'
      '(CLIN_CONTRATO <> '#39'I'#39' and CLIN_CONTRATO <> '#39'R'#39') '
      'order by CLIN_RAZA '
      '')
    Left = 536
    Top = 264
    object qrCliCLIN_RAZA: TStringField
      DisplayWidth = 50
      FieldName = 'CLIN_RAZA'
      Size = 50
    end
    object qrCliCLIN_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'CLIN_ID'
      ReadOnly = True
      Visible = False
    end
  end
end
