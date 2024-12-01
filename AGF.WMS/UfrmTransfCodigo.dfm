object frmTransfCodigo: TfrmTransfCodigo
  Left = 246
  Top = 172
  Width = 588
  Height = 234
  Caption = 'Transferência de Códigos'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Times New Roman'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel
    Left = 32
    Top = 24
    Width = 50
    Height = 15
    Caption = 'CLIENTE'
  end
  object Label2: TLabel
    Left = 32
    Top = 80
    Width = 98
    Height = 15
    Caption = 'CÓDIGO ANTIGO'
  end
  object Label3: TLabel
    Left = 32
    Top = 136
    Width = 85
    Height = 15
    Caption = 'CÓDIGO NOVO'
  end
  object wwDBLookupCombo1: TwwDBLookupCombo
    Left = 32
    Top = 40
    Width = 489
    Height = 23
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'CLIN_RAZA'#9'50'#9'CLIN_RAZA'#9'F')
    LookupTable = qrCliente
    LookupField = 'CLIN_ID'
    TabOrder = 0
    AutoDropDown = True
    ShowButton = True
    AllowClearKey = False
  end
  object edtAntigo: TEdit
    Left = 32
    Top = 96
    Width = 257
    Height = 23
    TabOrder = 1
  end
  object edtNovo: TEdit
    Left = 32
    Top = 152
    Width = 257
    Height = 23
    TabOrder = 2
  end
  object Alterar: TButton
    Left = 312
    Top = 152
    Width = 121
    Height = 25
    Caption = 'Alterar'
    TabOrder = 3
    OnClick = AlterarClick
  end
  object qrCliente: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT CLIN_ID, CLIN_RAZA FROM CLIENTENBF'
      'ORDER BY CLIN_RAZA')
    Left = 528
    Top = 32
    object qrClienteCLIN_RAZA: TStringField
      DisplayWidth = 50
      FieldName = 'CLIN_RAZA'
      Size = 50
    end
    object qrClienteCLIN_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'CLIN_ID'
      ReadOnly = True
      Visible = False
    end
  end
  object qrAux: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    Left = 352
    Top = 88
  end
end
