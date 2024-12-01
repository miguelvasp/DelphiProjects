object frmSelEmpresa: TfrmSelEmpresa
  Left = 256
  Top = 159
  BorderIcons = []
  BorderStyle = bsDialog
  ClientHeight = 169
  ClientWidth = 436
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
  object RzGroupBox1: TRzGroupBox
    Left = 16
    Top = 16
    Width = 409
    Height = 89
    Caption = 'Selecione a empresa para continuar'
    TabOrder = 0
    object wwDBLookupCombo1: TwwDBLookupCombo
      Left = 8
      Top = 32
      Width = 385
      Height = 22
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'FIL_DESC'#9'20'#9'FIL_DESC'#9'F')
      LookupTable = ADOQuery1
      LookupField = 'FIL_CODI'
      Style = csDropDownList
      TabOrder = 0
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
    end
  end
  object BitBtn1: TBitBtn
    Left = 16
    Top = 136
    Width = 97
    Height = 25
    Caption = 'Confirmar'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 120
    Top = 136
    Width = 97
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 2
    OnClick = BitBtn2Click
  end
  object ADOQuery1: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT FIL_CODI, FIL_DESC FROM CPAFILI'
      'order by FIL_DESC')
    Left = 280
    Top = 112
    object ADOQuery1FIL_DESC: TStringField
      DisplayWidth = 20
      FieldName = 'FIL_DESC'
      FixedChar = True
    end
    object ADOQuery1FIL_CODI: TStringField
      DisplayWidth = 3
      FieldName = 'FIL_CODI'
      Visible = False
      FixedChar = True
      Size = 3
    end
  end
end
