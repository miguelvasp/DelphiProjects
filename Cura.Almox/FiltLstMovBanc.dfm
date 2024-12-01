object FFiltLstMovBanc: TFFiltLstMovBanc
  Left = 506
  Top = 262
  BiDiMode = bdLeftToRight
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Relatório de Movimentação Bancária'
  ClientHeight = 203
  ClientWidth = 389
  Color = clBtnFace
  Constraints.MaxHeight = 262
  Constraints.MaxWidth = 405
  Constraints.MinWidth = 397
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poScreenCenter
  Scaled = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton2: TSpeedButton
    Left = 83
    Top = 166
    Width = 85
    Height = 27
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
    Visible = False
    OnClick = SpeedButton2Click
  end
  object SpeedButton1: TSpeedButton
    Left = 83
    Top = 166
    Width = 85
    Height = 27
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
  object SpeedButton3: TSpeedButton
    Left = 253
    Top = 166
    Width = 85
    Height = 27
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
  object SpeedButton4: TSpeedButton
    Left = 168
    Top = 166
    Width = 85
    Height = 27
    Hint = 'Limpar Filtros'
    Caption = 'Limpar'
    NumGlyphs = 2
    ParentShowHint = False
    ShowHint = True
    OnClick = SpeedButton4Click
  end
  object GRB_FILT: TGroupBox
    Left = 0
    Top = 0
    Width = 389
    Height = 151
    Align = alTop
    Caption = ' Filtros '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label10: TLabel
      Left = 41
      Top = 59
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
    object Label19: TLabel
      Left = 22
      Top = 87
      Width = 107
      Height = 14
      Caption = 'Data de Emissão de'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label20: TLabel
      Left = 204
      Top = 87
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
    object Label1: TLabel
      Left = 80
      Top = 29
      Width = 49
      Height = 14
      Caption = 'Empresa'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cboBan: TwwDBLookupCombo
      Left = 133
      Top = 55
      Width = 207
      Height = 22
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'BAN_NOME'#9'25'#9'Descrição'#9'F'
        'BAN_CODI'#9'14'#9'Código'#9'F')
      LookupTable = Q_BANC
      LookupField = 'BAN_CODI'
      ParentFont = False
      TabOrder = 1
      AutoDropDown = True
      ShowButton = True
      AllowClearKey = False
    end
    object MaskEdit1: TMaskEdit
      Left = 133
      Top = 83
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
      TabOrder = 2
      Text = '  /  /    '
    end
    object MaskEdit2: TMaskEdit
      Left = 228
      Top = 83
      Width = 64
      Height = 22
      EditMask = '!99/99/9999;1;_'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 3
      Text = '  /  /    '
    end
    object cboEmp: TwwDBLookupCombo
      Left = 132
      Top = 25
      Width = 207
      Height = 22
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'FIL_DESC'#9'20'#9'FIL_DESC'#9'F')
      LookupTable = Q_EMP
      LookupField = 'FIL_CODI'
      ParentFont = False
      TabOrder = 0
      AutoDropDown = True
      ShowButton = True
      AllowClearKey = False
    end
    object rdS: TRadioButton
      Left = 96
      Top = 120
      Width = 113
      Height = 17
      Caption = 'Sintético'
      TabOrder = 4
      Visible = False
    end
    object rdA: TRadioButton
      Left = 224
      Top = 120
      Width = 113
      Height = 17
      Caption = 'Analítico'
      Checked = True
      TabOrder = 5
      TabStop = True
      Visible = False
    end
  end
  object Q_BANC: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      
        'Select BAN_CODI,BAN_NOME , BAN_DATA from CPABANC order by BAN_no' +
        'me')
    ValidateWithMask = True
    Left = 16
    Top = 120
    object Q_BANCBAN_NOME: TStringField
      DisplayLabel = 'Descrição'
      DisplayWidth = 25
      FieldName = 'BAN_NOME'
      Origin = 'FINANCEIRO.CPABANC.BAN_NOME'
      FixedChar = True
      Size = 25
    end
    object Q_BANCBAN_CODI: TStringField
      DisplayLabel = 'Código'
      DisplayWidth = 14
      FieldName = 'BAN_CODI'
      Origin = 'FINANCEIRO.CPABANC.BAN_CODI'
      FixedChar = True
      Size = 14
    end
    object Q_BANCBAN_DATA: TDateTimeField
      DisplayWidth = 18
      FieldName = 'BAN_DATA'
      Origin = 'FINANCEIRO.CPABANC.BAN_DATA'
      Visible = False
    end
  end
  object Q_EMP: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'SELECT'#9#9'FIL_CODI,'
      #9#9'FIL_DESC'
      'FROM'#9#9'CPAFILI'
      'ORDER BY'#9'FIL_DESC')
    ValidateWithMask = True
    Left = 68
    Top = 120
    object Q_EMPFIL_DESC: TStringField
      DisplayWidth = 20
      FieldName = 'FIL_DESC'
      Origin = 'FINANCEIRO.CPAFILI.FIL_DESC'
      FixedChar = True
    end
    object Q_EMPFIL_CODI: TStringField
      FieldName = 'FIL_CODI'
      Origin = 'FINANCEIRO.CPAFILI.FIL_CODI'
      Visible = False
      FixedChar = True
      Size = 3
    end
  end
end
