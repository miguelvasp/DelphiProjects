object Form1: TForm1
  Left = 192
  Top = 122
  Width = 870
  Height = 333
  Caption = 'Parametros'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 854
    Height = 295
    Align = alClient
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM PARAMETRO')
    Left = 64
    Top = 16
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=45482;Persist Security Info=True;Us' +
      'er ID=sa;Initial Catalog=NBF;Data Source=nbfsrv-06'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 200
    Top = 40
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 96
    Top = 104
  end
end
