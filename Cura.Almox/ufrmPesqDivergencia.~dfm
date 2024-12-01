object frmPesqDivergencia: TfrmPesqDivergencia
  Left = 243
  Top = 91
  BorderStyle = bsDialog
  Caption = 'Divergências'
  ClientHeight = 551
  ClientWidth = 840
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
    Top = 8
    Width = 25
    Height = 14
    Caption = 'Data'
  end
  object Label2: TLabel
    Left = 152
    Top = 8
    Width = 20
    Height = 14
    Caption = 'Até'
  end
  object Label3: TLabel
    Left = 16
    Top = 56
    Width = 27
    Height = 14
    Caption = 'Local'
  end
  object Label4: TLabel
    Left = 16
    Top = 104
    Width = 41
    Height = 14
    Caption = 'Material'
  end
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 160
    Width = 840
    Height = 391
    Selected.Strings = (
      'Data'#9'10'#9'Data'
      'Solicitante'#9'30'#9'Solicitante'
      'LOCAL'#9'30'#9'LOCAL'
      'Material'#9'30'#9'Material'
      'status'#9'10'#9'status')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alBottom
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 0
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnCalcCellColors = wwDBGrid1CalcCellColors
    OnDblClick = Button3Click
  end
  object MaskEdit1: TMaskEdit
    Left = 16
    Top = 24
    Width = 121
    Height = 22
    EditMask = '99/99/9999'
    MaxLength = 10
    TabOrder = 1
    Text = '  /  /    '
  end
  object MaskEdit2: TMaskEdit
    Left = 152
    Top = 24
    Width = 121
    Height = 22
    EditMask = '99/99/9999'
    MaxLength = 10
    TabOrder = 2
    Text = '  /  /    '
  end
  object Edit1: TEdit
    Left = 16
    Top = 72
    Width = 673
    Height = 22
    TabOrder = 3
  end
  object Edit2: TEdit
    Left = 16
    Top = 120
    Width = 673
    Height = 22
    TabOrder = 4
  end
  object Button1: TButton
    Left = 720
    Top = 82
    Width = 113
    Height = 25
    Caption = 'Buscar'
    TabOrder = 5
    OnClick = Button1Click
  end
  object Button3: TButton
    Left = 719
    Top = 114
    Width = 113
    Height = 25
    Caption = 'Visualizar'
    TabOrder = 6
    OnClick = Button3Click
  end
  object qrBusca: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT  a.divid,'
      #9'A.Solicitante,'
      #9'A.LOCAL,'
      #9'A.Data,'
      #9'B.Material,'
      #9'a.status'
      'FROM DIVERGENCIA A INNER JOIN DIVERGENCIAITEM B'
      'ON A.divId = B.divId ')
    Left = 600
    Top = 288
    object qrBuscaData: TDateTimeField
      DisplayWidth = 10
      FieldName = 'Data'
    end
    object qrBuscaSolicitante: TStringField
      DisplayWidth = 30
      FieldName = 'Solicitante'
      Size = 255
    end
    object qrBuscaLOCAL: TStringField
      DisplayWidth = 30
      FieldName = 'LOCAL'
      Size = 255
    end
    object qrBuscaMaterial: TStringField
      DisplayWidth = 30
      FieldName = 'Material'
      Size = 255
    end
    object qrBuscastatus: TStringField
      DisplayWidth = 10
      FieldName = 'status'
      Size = 50
    end
    object qrBuscadivid: TAutoIncField
      FieldName = 'divid'
      ReadOnly = True
    end
  end
  object DataSource1: TDataSource
    DataSet = qrBusca
    Left = 648
    Top = 368
  end
end
