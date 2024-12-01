object frmCadEmail: TfrmCadEmail
  Left = 391
  Top = 123
  Width = 749
  Height = 455
  Caption = 'Cadastro de Email'
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
  object lbl1: TLabel
    Left = 24
    Top = 0
    Width = 18
    Height = 14
    Caption = 'lbl1'
    Visible = False
  end
  object wwDBGrid1: TwwDBGrid
    Left = 16
    Top = 24
    Width = 705
    Height = 353
    Selected.Strings = (
      'EMAIL'#9'90'#9'EMAIL'#9'F'#9)
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = ds1
    TabOrder = 0
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
  end
  object btn2: TButton
    Left = 16
    Top = 384
    Width = 75
    Height = 25
    Caption = 'Remover'
    TabOrder = 1
    OnClick = btn2Click
  end
  object qry1: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    BeforePost = qry1BeforePost
    Parameters = <
      item
        Name = 'CLIN_ID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM CLIENTENBF_EMAIL'
      'where clin_id = :CLIN_ID'
      'ORDER BY EMAIL')
    Left = 240
    Top = 144
    object qry1EMAIL: TStringField
      DisplayWidth = 90
      FieldName = 'EMAIL'
      Size = 255
    end
    object qry1CLIN_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'CLIN_ID'
      Visible = False
    end
    object qry1ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'ID'
      ReadOnly = True
      Visible = False
    end
  end
  object ds1: TDataSource
    DataSet = qry1
    Left = 368
    Top = 168
  end
end
