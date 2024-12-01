object frmCadConsequencias: TfrmCadConsequencias
  Left = 192
  Top = 124
  Width = 613
  Height = 515
  Caption = 'Cadastro de consequências no recebimento'
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
    Left = 24
    Top = 56
    Width = 89
    Height = 14
    Caption = 'CONSEQUENCIA'
    FocusControl = DBEdit1
  end
  object DBEdit1: TDBEdit
    Left = 24
    Top = 72
    Width = 553
    Height = 22
    DataField = 'CONSEQUENCIA'
    DataSource = DataSource1
    TabOrder = 0
  end
  object wwDBGrid1: TwwDBGrid
    Left = 24
    Top = 120
    Width = 553
    Height = 337
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DataSource1
    TabOrder = 1
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
  object DBNavigator1: TDBNavigator
    Left = 16
    Top = 8
    Width = 320
    Height = 33
    DataSource = DataSource1
    TabOrder = 2
  end
  object qrConseq: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM CONSEQUENCIAS'
      'ORDER BY CONSEQUENCIA')
    Left = 256
    Top = 128
    object qrConseqCONSEQUENCIA: TStringField
      FieldName = 'CONSEQUENCIA'
      Size = 50
    end
  end
  object DataSource1: TDataSource
    DataSet = qrConseq
    Left = 432
    Top = 248
  end
end
