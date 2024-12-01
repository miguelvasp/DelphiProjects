object FRelChequePreFilt: TFRelChequePreFilt
  Left = 54
  Top = 25
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Relatório de Cheques Pré'
  ClientHeight = 233
  ClientWidth = 408
  Color = clBtnFace
  Constraints.MaxHeight = 269
  Constraints.MaxWidth = 416
  Constraints.MinHeight = 262
  Constraints.MinWidth = 416
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 6
    Top = 5
    Width = 395
    Height = 181
    Shape = bsFrame
  end
  object SpeedButton1: TSpeedButton
    Left = 66
    Top = 197
    Width = 85
    Height = 31
    Hint = 'Visualiza relatório na tela'
    Caption = '&Visualiza'
    Glyph.Data = {
      42010000424D4201000000000000760000002800000013000000110000000100
      040000000000CC00000000000000000000001000000010000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      8888888880008880000000000000888880008880FFFFFFFFFFF0888880008880
      FFFFFFFFFFF0888880008880F77F777F77F0888880008880FFFFFFFFFFF08888
      80008880F7F77F7F77F0888880008880FFFFFFFFFFF0888880008880F77F7F7F
      77F0888880008880FFFFFFFFFFF0888880008880F7777F77F7F0888880008880
      FFFFFFFFFFF0888880008880F77F77F777F0888880008880FFFFFFFFFFF08888
      80038880FFFFFFFFFFF08880000F88800000000000008880000F888888888888
      88888880000F}
    ParentShowHint = False
    ShowHint = True
    OnClick = SpeedButton1Click
  end
  object SpeedButton2: TSpeedButton
    Left = 151
    Top = 197
    Width = 85
    Height = 31
    Hint = 'Imprime relatório'
    Caption = '&Imprime'
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      0400000000000001000000000000000000001000000010000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
      0003377777777777777308888888888888807F33333333333337088888888888
      88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
      8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
      8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
      03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
      03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
      33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
      33333337FFFF7733333333300000033333333337777773333333}
    NumGlyphs = 2
    ParentShowHint = False
    ShowHint = True
    OnClick = SpeedButton2Click
  end
  object SpeedButton3: TSpeedButton
    Left = 236
    Top = 197
    Width = 85
    Height = 31
    Hint = 'Sair da tela atual'
    Caption = '&Sair'
    Glyph.Data = {
      76020000424D7602000000000000760000002800000040000000100000000100
      0400000000000002000000000000000000001000000010000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
      03333388888888888F3333000000000003333388888888888F33330111111111
      0333338F333333338F333301BBBBBBBB033333883F3333338F33330111111111
      0333338F333333338F3333011BBBBBBB0333338F83F333338F33330111111111
      0333338F333333338F33330111BBBBBB0333338F383F33338F33330111111111
      0333338F333333338F333301110BBBBB0333338F338F33338F33330111111111
      0333338F333333338F333301110BBBBB0333338F338F33338F33330111111111
      0333338F3333333F8F333301110BBBBB0333338F338F33338F333301111111B1
      0333338F333333838F333301110BBBBB0333338F338F33338F33330111111111
      0333338F333333338F333301110BBBBB0333338F338F33338F33330111111111
      0333338F33FFFFF38F333301110BBBBB0333338F338FF3338F3333011EEEEE11
      0333338F388888F38F33330111B0BBBB0333338F338833338F3333011EEEEE11
      0333338F38FFF8F38F333301110BBBBB0333338F338F33338F3333011EEEEE11
      0333338F388888338F333301110BBBBB0333338F3F8F33338F33330111111111
      0333338F333333338F333301E10BBBBB0333338F8F8F33338F33330111111111
      0333338FFFFFFFFF8F333301EE0BBBBB0333338F888FFFFF8F33330000000000
      0333338888888888833333000000000003333388888888888333}
    NumGlyphs = 4
    ParentShowHint = False
    ShowHint = True
    OnClick = SpeedButton3Click
  end
  object Label1: TLabel
    Left = 53
    Top = 18
    Width = 52
    Height = 14
    Caption = 'No. CP de'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 239
    Top = 18
    Width = 17
    Height = 14
    Caption = 'até'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 239
    Top = 45
    Width = 17
    Height = 14
    Caption = 'até'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 24
    Top = 45
    Width = 81
    Height = 14
    Caption = 'Fornecedor de'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label10: TLabel
    Left = 19
    Top = 70
    Width = 88
    Height = 14
    Caption = 'Banco/Conta de '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label15: TLabel
    Left = 239
    Top = 70
    Width = 17
    Height = 14
    Caption = 'até'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 23
    Top = 100
    Width = 80
    Height = 14
    Caption = 'Cheque No. de'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 239
    Top = 100
    Width = 17
    Height = 14
    Caption = 'até'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 43
    Top = 126
    Width = 60
    Height = 14
    Caption = 'Período de'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label13: TLabel
    Left = 239
    Top = 126
    Width = 17
    Height = 14
    Caption = 'até'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 55
    Top = 153
    Width = 48
    Height = 14
    Caption = 'Título de'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel
    Left = 239
    Top = 153
    Width = 17
    Height = 14
    Caption = 'até'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object wwDBLookupCombo1: TwwDBLookupCombo
    Left = 112
    Top = 42
    Width = 121
    Height = 22
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'FOR_CODI'#9'15'#9'Código')
    LookupTable = Q_FORN
    LookupField = 'FOR_CODI'
    ParentFont = False
    TabOrder = 2
    AutoDropDown = True
    ShowButton = True
    AllowClearKey = False
  end
  object wwDBLookupCombo2: TwwDBLookupCombo
    Left = 264
    Top = 42
    Width = 121
    Height = 22
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'FOR_CODI'#9'15'#9'Código')
    LookupTable = Q_FORN
    LookupField = 'FOR_CODI'
    ParentFont = False
    TabOrder = 3
    AutoDropDown = True
    ShowButton = True
    AllowClearKey = False
  end
  object wwDBLookupCombo7: TwwDBLookupCombo
    Left = 112
    Top = 69
    Width = 121
    Height = 22
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'BAN_NOME'#9'25'#9'BAN_NOME'#9'F')
    LookupTable = Q_BANC
    LookupField = 'BAN_CODI'
    ParentFont = False
    TabOrder = 4
    AutoDropDown = True
    ShowButton = True
    AllowClearKey = False
  end
  object wwDBLookupCombo8: TwwDBLookupCombo
    Left = 264
    Top = 69
    Width = 121
    Height = 22
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'BAN_NOME'#9'25'#9'BAN_NOME'#9'F')
    LookupTable = Q_BANC
    LookupField = 'BAN_CODI'
    ParentFont = False
    TabOrder = 5
    AutoDropDown = True
    ShowButton = True
    AllowClearKey = False
  end
  object Edit2: TEdit
    Left = 264
    Top = 15
    Width = 121
    Height = 22
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object Edit1: TEdit
    Left = 112
    Top = 15
    Width = 121
    Height = 22
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object Edit3: TEdit
    Left = 112
    Top = 97
    Width = 121
    Height = 22
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
  end
  object Edit4: TEdit
    Left = 264
    Top = 97
    Width = 121
    Height = 22
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
  end
  object MaskEdit1: TMaskEdit
    Left = 112
    Top = 124
    Width = 65
    Height = 22
    EditMask = '!99/99/9999;1;_'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    MaxLength = 10
    ParentFont = False
    TabOrder = 8
    Text = '  /  /    '
  end
  object MaskEdit4: TMaskEdit
    Left = 264
    Top = 124
    Width = 65
    Height = 22
    EditMask = '!99/99/9999;1;_'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    MaxLength = 10
    ParentFont = False
    TabOrder = 9
    Text = '  /  /    '
  end
  object Edit5: TEdit
    Left = 112
    Top = 151
    Width = 121
    Height = 22
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
  end
  object Edit6: TEdit
    Left = 264
    Top = 151
    Width = 121
    Height = 22
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
  end
  object Q_BANC: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'Select BAN_CODI,BAN_NOME from CPABANC order by BAN_CODI')
    ValidateWithMask = True
    Left = 8
    Top = 186
    object Q_BANCBAN_NOME: TStringField
      DisplayWidth = 25
      FieldName = 'BAN_NOME'
      Origin = 'CPABANC.BAN_NOME'
      Size = 25
    end
    object Q_BANCBAN_CODI: TStringField
      DisplayWidth = 14
      FieldName = 'BAN_CODI'
      Origin = 'CPABANC.BAN_CODI'
      Visible = False
      Size = 14
    end
  end
  object Q_FORN: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'select FOR_CODI FROm CPAFORN'
      'ORDER By FOR_CODI')
    ValidateWithMask = True
    Left = 8
    Top = 136
    object Q_FORNFOR_CODI: TStringField
      DisplayLabel = 'Código'
      DisplayWidth = 15
      FieldName = 'FOR_CODI'
      Origin = 'FINANCEIRO.CPAFORN.FOR_CODI'
      FixedChar = True
      Size = 15
    end
  end
end
