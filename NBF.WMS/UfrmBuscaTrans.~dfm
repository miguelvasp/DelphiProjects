object frmBuscaTrans: TfrmBuscaTrans
  Left = 406
  Top = 205
  Width = 540
  Height = 453
  Caption = 'frmBuscaTrans'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 14
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 83
    Height = 14
    Caption = 'Transportadora'
  end
  object Edit1: TEdit
    Left = 8
    Top = 24
    Width = 505
    Height = 22
    TabOrder = 0
    OnChange = Edit1Change
  end
  object wwDBGrid1: TwwDBGrid
    Left = 8
    Top = 56
    Width = 505
    Height = 313
    Selected.Strings = (
      'TRANS_FANTASIA'#9'40'#9'Nome'
      'TRANS_CNPJ'#9'15'#9'CNPJ')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DataSource1
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ReadOnly = True
    TabOrder = 1
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnDblClick = wwDBGrid1DblClick
    IndicatorColor = icBlack
  end
  object Button1: TButton
    Left = 8
    Top = 384
    Width = 105
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 2
    OnClick = Button1Click
  end
  object qrTrans: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT '
      #9'A.TRANS_ID,'
      #9'A.TRANS_FANTASIA,'
      #9'A.TRANS_CNPJ'
      'FROM TRANSPORTADORA A')
    Left = 224
    Top = 152
    object qrTransTRANS_FANTASIA: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 40
      FieldName = 'TRANS_FANTASIA'
      Size = 40
    end
    object qrTransTRANS_CNPJ: TStringField
      DisplayLabel = 'CNPJ'
      DisplayWidth = 15
      FieldName = 'TRANS_CNPJ'
      Size = 15
    end
    object qrTransTRANS_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'TRANS_ID'
      ReadOnly = True
      Visible = False
    end
  end
  object DataSource1: TDataSource
    DataSet = qrTrans
    Left = 152
    Top = 248
  end
end
