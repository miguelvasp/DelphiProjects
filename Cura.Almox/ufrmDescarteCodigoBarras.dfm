object frmDescarteCodigoBarras: TfrmDescarteCodigoBarras
  Left = 192
  Top = 124
  BorderIcons = []
  BorderStyle = bsDialog
  ClientHeight = 131
  ClientWidth = 645
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Comic Sans MS'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 17
  object Label1: TLabel
    Left = 24
    Top = 16
    Width = 93
    Height = 17
    Caption = 'C�digo de Barras'
  end
  object Button1: TButton
    Left = 512
    Top = 80
    Width = 121
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 24
    Top = 40
    Width = 609
    Height = 25
    TabOrder = 1
  end
end
