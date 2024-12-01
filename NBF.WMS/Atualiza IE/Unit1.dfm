object Form1: TForm1
  Left = 285
  Top = 182
  Width = 646
  Height = 500
  Caption = 'Form1'
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
    Left = 32
    Top = 88
    Width = 561
    Height = 337
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 32
    Top = 32
    Width = 75
    Height = 25
    Caption = 'ATUALIZAR'
    TabOrder = 1
    OnClick = Button1Click
  end
  object qrExcel: TADOQuery
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Password="";Data Source=C:\IE.m' +
      'db;Persist Security Info=True'
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM OK')
    Left = 160
    Top = 24
    object qrExcelCLIENTE: TWideStringField
      FieldName = 'CLIENTE'
      Size = 255
    end
    object qrExcelCNPJ: TFloatField
      FieldName = 'CNPJ'
    end
    object qrExcelIE: TFloatField
      FieldName = 'IE'
    end
    object qrExcelF4: TWideStringField
      FieldName = 'F4'
      Size = 255
    end
  end
  object qrAux: TADOQuery
    ConnectionString = 'FILE NAME=C:\NBF.udl'
    Parameters = <>
    Left = 240
    Top = 24
  end
  object DataSource1: TDataSource
    DataSet = qrExcel
    Left = 328
    Top = 160
  end
end
