object frmContaGerencialEntrada: TfrmContaGerencialEntrada
  Left = 191
  Top = 150
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Conta Gerencial - Entrada'
  ClientHeight = 132
  ClientWidth = 694
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
    Left = 40
    Top = 32
    Width = 210
    Height = 17
    Caption = 'Selecione a conta gerencial de destino'
  end
  object wwDBLookupCombo1: TwwDBLookupCombo
    Left = 40
    Top = 56
    Width = 505
    Height = 25
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'CON_CODI'#9'50'#9'CON_CODI'#9#9
      'CON_DESC'#9'25'#9'CON_DESC'#9#9)
    DataField = 'ContaGerencial'
    DataSource = DataSource1
    LookupTable = qrContas
    LookupField = 'CON_CODI'
    TabOrder = 0
    AutoDropDown = False
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
  end
  object Button1: TButton
    Left = 576
    Top = 56
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 1
    OnClick = Button1Click
  end
  object qrContas: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    SQL.Strings = (
      'select CON_CODI, CON_DESC from CPACONT ORDER BY CON_CODI')
    Left = 560
    Top = 88
    object qrContasCON_CODI: TStringField
      DisplayWidth = 50
      FieldName = 'CON_CODI'
      Size = 50
    end
    object qrContasCON_DESC: TStringField
      DisplayWidth = 25
      FieldName = 'CON_DESC'
      FixedChar = True
      Size = 25
    end
  end
  object qrAux: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    Left = 584
    Top = 8
  end
  object qrCad: TADOQuery
    Active = True
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * FROM [dbo].[ContaGerencialEntrada]')
    Left = 288
    Top = 8
    object qrCadContaGerencial: TStringField
      FieldName = 'ContaGerencial'
      Size = 50
    end
    object qrCadId: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
  end
  object DataSource1: TDataSource
    DataSet = qrCad
    Left = 32
    Top = 24
  end
end
