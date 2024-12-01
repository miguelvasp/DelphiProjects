object frmAcertaDestConh: TfrmAcertaDestConh
  Left = 219
  Top = 141
  Width = 675
  Height = 500
  Caption = 'Acerto de Destinatário'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
  object Label1: TLabel
    Left = 16
    Top = 72
    Width = 64
    Height = 14
    Caption = 'Cliente Final'
  end
  object wwDBLookupCombo1: TwwDBLookupCombo
    Left = 16
    Top = 88
    Width = 529
    Height = 22
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'CLIF_RAZA'#9'50'#9'CLIF_RAZA'#9'F')
    LookupTable = qrCLFIN
    LookupField = 'CLIF_ID'
    TabOrder = 0
    AutoDropDown = True
    ShowButton = True
    AllowClearKey = False
  end
  object GroupBox1: TGroupBox
    Left = 16
    Top = 8
    Width = 625
    Height = 57
    Caption = 'Periódo de Pesquisa'
    TabOrder = 1
    object MaskEdit1: TMaskEdit
      Left = 24
      Top = 24
      Width = 121
      Height = 22
      EditMask = '99/99/9999'
      MaxLength = 10
      TabOrder = 0
      Text = '  /  /    '
    end
    object MaskEdit2: TMaskEdit
      Left = 168
      Top = 24
      Width = 121
      Height = 22
      EditMask = '99/99/9999'
      MaxLength = 10
      TabOrder = 1
      Text = '  /  /    '
    end
    object BitBtn1: TBitBtn
      Left = 304
      Top = 22
      Width = 105
      Height = 25
      Caption = 'Buscar'
      TabOrder = 2
      OnClick = BitBtn1Click
    end
  end
  object wwDBGrid1: TwwDBGrid
    Left = 16
    Top = 136
    Width = 617
    Height = 297
    Selected.Strings = (
      'ORD_CONH'#9'10'#9'CONHECIMENTO'
      'ORD_DATA'#9'18'#9'DATA'#9'F')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DataSource1
    ReadOnly = True
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
  object Button1: TButton
    Left = 568
    Top = 88
    Width = 75
    Height = 25
    Caption = 'Vincular'
    TabOrder = 3
    OnClick = Button1Click
  end
  object qrCLFIN: TwwQuery
    Active = True
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'SELECT CLIF_ID, CLIF_RAZA FROM CLIENTEFINAL'
      'ORDER BY CLIF_RAZA')
    ValidateWithMask = True
    Left = 376
    Top = 174
  end
  object qrBusca: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'SELECT ORD_ID, ORD_CONH, ORD_DATA FROM ORDEM_COLETA_ENTREGA'
      'WHERE ORD_ID NOT IN ('
      'SELECT A.ORD_ID FROM ORDEM_COLETA_ENTREGA A'
      'INNER JOIN CLIENTEFINAL B ON A.CLIF_ID = B.CLIF_ID'
      ')'
      'and ORD_STATUS = '#39'E'#39
      ''
      ''
      'AND CONVERT(CHAR(10), ORD_DATA, 112) >= :DATA1'
      'AND CONVERT(CHAR(10), ORD_DATA, 112) <= :DATA2')
    ValidateWithMask = True
    Left = 288
    Top = 254
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DATA1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DATA2'
        ParamType = ptUnknown
      end>
    object qrBuscaORD_CONH: TStringField
      DisplayLabel = 'CONHECIMENTO'
      DisplayWidth = 10
      FieldName = 'ORD_CONH'
      FixedChar = True
      Size = 10
    end
    object qrBuscaORD_DATA: TDateTimeField
      DisplayLabel = 'DATA'
      DisplayWidth = 18
      FieldName = 'ORD_DATA'
    end
    object qrBuscaORD_ID: TAutoIncField
      FieldName = 'ORD_ID'
      Visible = False
    end
  end
  object DataSource1: TDataSource
    DataSet = qrBusca
    Left = 176
    Top = 240
  end
  object qrAux: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    ValidateWithMask = True
    Left = 504
    Top = 246
  end
end
