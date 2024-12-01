object frmTBIBGE: TfrmTBIBGE
  Left = 192
  Top = 124
  Width = 909
  Height = 480
  Caption = 'Municipios IBGE'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 57
    Width = 893
    Height = 385
    Selected.Strings = (
      'COD_MUN'#9'12'#9'Código IBGE'#9'F'
      'MUNICIPIO'#9'100'#9'MUNICIPIO'
      'UF'#9'8'#9'UF')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alBottom
    DataSource = DataSource1
    TabOrder = 0
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    IndicatorColor = icBlack
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM TB_IBGE'
      'ORDER BY MUNICIPIO')
    Left = 656
    Top = 16
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 240
    Top = 216
  end
end
