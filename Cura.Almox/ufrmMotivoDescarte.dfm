object frmMotivoDescarte: TfrmMotivoDescarte
  Left = 232
  Top = 126
  BorderStyle = bsDialog
  Caption = 'Motivos de Descarte de Materiais'
  ClientHeight = 525
  ClientWidth = 655
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Comic Sans MS'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 17
  object Label1: TLabel
    Left = 16
    Top = 40
    Width = 109
    Height = 17
    Caption = 'Motivo de Descarte'
    FocusControl = DBEdit1
  end
  object wwDBGrid1: TwwDBGrid
    Left = 16
    Top = 96
    Width = 625
    Height = 417
    Selected.Strings = (
      'Descricao'#9'50'#9'Motivo'#9'F')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DataSource1
    TabOrder = 0
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Comic Sans MS'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
  end
  object DBEdit1: TDBEdit
    Left = 16
    Top = 56
    Width = 625
    Height = 25
    DataField = 'Descricao'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBNavigator1: TDBNavigator
    Left = 408
    Top = 8
    Width = 240
    Height = 25
    DataSource = DataSource1
    TabOrder = 2
  end
  object qrMotivos: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM MotivoDescarteMaterial')
    Left = 272
    Top = 248
    object qrMotivosDescricao: TStringField
      DisplayLabel = 'Motivo'
      DisplayWidth = 50
      FieldName = 'Descricao'
      Size = 250
    end
    object qrMotivosId: TAutoIncField
      DisplayWidth = 10
      FieldName = 'Id'
      ReadOnly = True
      Visible = False
    end
  end
  object DataSource1: TDataSource
    DataSet = qrMotivos
    Left = 312
    Top = 248
  end
end
