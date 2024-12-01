object frmTipoProdColeta: TfrmTipoProdColeta
  Left = 380
  Top = 128
  Width = 651
  Height = 553
  Caption = 'Tipo de Produto Coleta'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
  object Label1: TLabel
    Left = 16
    Top = 48
    Width = 37
    Height = 14
    Caption = 'Código'
  end
  object Label2: TLabel
    Left = 16
    Top = 96
    Width = 90
    Height = 14
    Caption = 'Tipo de Produto'
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 8
    Width = 240
    Height = 25
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBEdit1: TDBEdit
    Left = 16
    Top = 64
    Width = 121
    Height = 22
    DataField = 'CODIGO'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 16
    Top = 112
    Width = 441
    Height = 22
    DataField = 'DESCRICAO'
    DataSource = DataSource1
    TabOrder = 2
  end
  object wwDBGrid1: TwwDBGrid
    Left = 16
    Top = 160
    Width = 601
    Height = 313
    Selected.Strings = (
      'CODIGO'#9'10'#9'CODIGO'
      'DESCRICAO'#9'65'#9'DESCRICAO'#9'F')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 3
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
  end
  object ADOQuery1: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    BeforePost = ADOQuery1BeforePost
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM TP_PROD_COLETA'
      'ORDER BY CODIGO')
    Left = 208
    Top = 184
    object ADOQuery1CODIGO: TStringField
      DisplayWidth = 10
      FieldName = 'CODIGO'
      Size = 50
    end
    object ADOQuery1DESCRICAO: TStringField
      DisplayWidth = 65
      FieldName = 'DESCRICAO'
      Size = 200
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 320
    Top = 184
  end
end
