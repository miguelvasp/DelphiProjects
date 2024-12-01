object frmTrocaLocal: TfrmTrocaLocal
  Left = 291
  Top = 250
  Width = 808
  Height = 163
  BorderIcons = [biSystemMenu]
  Caption = 'Troca de Local'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 19
  object Label1: TLabel
    Left = 24
    Top = 32
    Width = 36
    Height = 19
    Caption = 'Local'
  end
  object cboLocal: TwwDBLookupCombo
    Left = 24
    Top = 56
    Width = 545
    Height = 27
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'Descricao'#9'50'#9'Descricao'#9#9)
    LookupTable = QRLOCAL
    LookupField = 'Local_ID'
    TabOrder = 0
    AutoDropDown = False
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
  end
  object Button1: TButton
    Left = 592
    Top = 54
    Width = 177
    Height = 35
    Caption = 'Mudar de Local'
    TabOrder = 1
    OnClick = Button1Click
  end
  object QRLOCAL: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    SQL.Strings = (
      'SELECT L.Local_ID, L.Descricao '
      'FROM UsuariosAlmoxLocais U'
      'INNER JOIN Local L ON U.LOCAL_ID = L.Local_ID'
      'WHERE U.CH = 1'
      'ORDER BY L.Descricao')
    Left = 520
    Top = 32
    object QRLOCALDescricao: TStringField
      DisplayWidth = 50
      FieldName = 'Descricao'
      Size = 50
    end
    object QRLOCALLocal_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'Local_ID'
      ReadOnly = True
      Visible = False
    end
  end
  object qraux: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    Left = 288
    Top = 16
  end
end
