object frmLiberaOS: TfrmLiberaOS
  Left = 196
  Top = 124
  Width = 440
  Height = 337
  Caption = 'Libera OS'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 14
  object Label1: TLabel
    Left = 24
    Top = 8
    Width = 16
    Height = 14
    Caption = 'OS'
  end
  object Edit1: TEdit
    Left = 24
    Top = 24
    Width = 121
    Height = 22
    TabOrder = 0
  end
  object CheckBox1: TCheckBox
    Left = 24
    Top = 64
    Width = 217
    Height = 17
    Caption = 'Liberar OS conclu�da'
    Checked = True
    State = cbChecked
    TabOrder = 1
  end
  object CheckBox2: TCheckBox
    Left = 24
    Top = 88
    Width = 225
    Height = 17
    Caption = 'Liberar valor dos conhecimentos'
    Checked = True
    State = cbChecked
    TabOrder = 2
  end
  object Button1: TButton
    Left = 24
    Top = 120
    Width = 75
    Height = 25
    Caption = 'Confirmar'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 112
    Top = 120
    Width = 193
    Height = 25
    Caption = 'Concluir OS'
    TabOrder = 4
    OnClick = Button2Click
  end
  object ADOQuery1: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    Left = 184
    Top = 16
  end
end
