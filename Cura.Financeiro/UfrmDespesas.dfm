object frmDespesas: TfrmDespesas
  Left = 192
  Top = 124
  Width = 589
  Height = 571
  Caption = 'Despesas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 48
    Width = 28
    Height = 13
    Caption = 'Nome'
    FocusControl = DBEdit1
  end
  object DBEdit1: TDBEdit
    Left = 16
    Top = 64
    Width = 545
    Height = 21
    DataField = 'Nome'
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBNavigator1: TDBNavigator
    Left = 16
    Top = 8
    Width = 240
    Height = 25
    DataSource = DataSource1
    TabOrder = 1
  end
  object wwDBGrid1: TwwDBGrid
    Left = 16
    Top = 104
    Width = 545
    Height = 401
    Selected.Strings = (
      'Nome'#9'255'#9'Nome'#9#9)
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
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
  object ADOQuery1: TADOQuery
    Connection = FMenu.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM DESPESAS ORDER BY NOME')
    Left = 200
    Top = 120
    object ADOQuery1Nome: TStringField
      DisplayWidth = 255
      FieldName = 'Nome'
      Size = 255
    end
    object ADOQuery1IdDespesa: TAutoIncField
      DisplayWidth = 10
      FieldName = 'IdDespesa'
      ReadOnly = True
      Visible = False
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 216
    Top = 216
  end
end
