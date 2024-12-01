object FRelMovDiarioFilt: TFRelMovDiarioFilt
  Left = 1
  Top = 33
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Movimento Diário'
  ClientHeight = 272
  ClientWidth = 527
  Color = clBtnFace
  Constraints.MaxHeight = 308
  Constraints.MaxWidth = 535
  Constraints.MinHeight = 301
  Constraints.MinWidth = 535
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton1: TSpeedButton
    Left = 142
    Top = 238
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
  object SpeedButton2: TSpeedButton
    Left = 227
    Top = 238
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
    OnClick = SpeedButton2Click
  end
  object SpeedButton3: TSpeedButton
    Left = 312
    Top = 238
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
  object GRB_FILT: TGroupBox
    Left = 0
    Top = 0
    Width = 527
    Height = 228
    Align = alTop
    Caption = ' Filtros '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label19: TLabel
      Left = 145
      Top = 201
      Width = 105
      Height = 14
      Caption = 'Data do Movimento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object wwDBGrid1: TwwDBGrid
      Left = 8
      Top = 17
      Width = 507
      Height = 174
      Selected.Strings = (
        'BAN_Ordem'#9'5'#9'Ordem'
        'BAN_CODI'#9'7'#9'Código'
        'BAN_NOME'#9'25'#9'Nome'
        'BAN_AGEN'#9'6'#9'Agência'
        'BAN_NAGE'#9'20'#9'Nome')
      IniAttributes.Delimiter = ';;'
      TitleColor = clHighlight
      FixedCols = 0
      ShowHorzScrollBar = True
      Color = clMenu
      DataSource = DS_BANC
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      KeyOptions = []
      ParentFont = False
      TabOrder = 0
      TitleAlignment = taLeftJustify
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clYellow
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = [fsBold, fsItalic]
      TitleLines = 1
      TitleButtons = False
      IndicatorColor = icBlack
    end
    object MaskEdit1: TMaskEdit
      Left = 253
      Top = 197
      Width = 65
      Height = 22
      EditMask = '!99/99/99;1;_'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      MaxLength = 8
      ParentFont = False
      TabOrder = 1
      Text = '  /  /  '
    end
  end
  object Q_BANC: TwwQuery
    CachedUpdates = True
    AfterPost = Q_BANCAfterPost
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    RequestLive = True
    SQL.Strings = (
      'Select BAN_CODI,BAN_NOME , BAN_DATA , BAN_NAGE, '
      'BAN_AGEN,BAN_Ordem '
      'from CPABANC order by BAN_CODI')
    UpdateObject = UpdateSQL1
    ControlType.Strings = (
      'BAN_Ordem;CustomEdit;')
    ValidateWithMask = True
    Left = 176
    Top = 40
    object Q_BANCBAN_Ordem: TIntegerField
      DisplayLabel = 'Ordem'
      DisplayWidth = 5
      FieldName = 'BAN_Ordem'
      Origin = 'FINANCEIRO.CPABANC.BAN_Ordem'
    end
    object Q_BANCBAN_CODI: TStringField
      DisplayLabel = 'Código'
      DisplayWidth = 7
      FieldName = 'BAN_CODI'
      Origin = 'FINANCEIRO.CPABANC.BAN_CODI'
      FixedChar = True
      Size = 14
    end
    object Q_BANCBAN_NOME: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 25
      FieldName = 'BAN_NOME'
      Origin = 'FINANCEIRO.CPABANC.BAN_NOME'
      FixedChar = True
      Size = 25
    end
    object Q_BANCBAN_AGEN: TStringField
      DisplayLabel = 'Agência'
      DisplayWidth = 6
      FieldName = 'BAN_AGEN'
      Origin = 'FINANCEIRO.CPABANC.BAN_AGEN'
      FixedChar = True
      Size = 4
    end
    object Q_BANCBAN_NAGE: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 20
      FieldName = 'BAN_NAGE'
      Origin = 'FINANCEIRO.CPABANC.BAN_NAGE'
      FixedChar = True
    end
    object Q_BANCBAN_DATA: TDateTimeField
      FieldName = 'BAN_DATA'
      Origin = 'FINANCEIRO.CPABANC.BAN_DATA'
      Visible = False
    end
  end
  object Q_CONT: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'select * from cpacont order by con_codi')
    ValidateWithMask = True
    Left = 40
    Top = 88
    object Q_CONTCON_DESC: TStringField
      DisplayLabel = 'Descrição'
      DisplayWidth = 25
      FieldName = 'CON_DESC'
      Origin = 'FINANCEIRO.CPACONT.CON_DESC'
      FixedChar = True
      Size = 25
    end
    object Q_CONTCON_CODI: TStringField
      DisplayLabel = 'Código'
      DisplayWidth = 6
      FieldName = 'CON_CODI'
      Origin = 'FINANCEIRO.CPACONT.CON_CODI'
      FixedChar = True
      Size = 6
    end
    object Q_CONTCON_ENSA: TStringField
      DisplayWidth = 1
      FieldName = 'CON_ENSA'
      Origin = 'FINANCEIRO.CPACONT.CON_ENSA'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_CONTCON_OPER: TStringField
      DisplayWidth = 1
      FieldName = 'CON_OPER'
      Origin = 'FINANCEIRO.CPACONT.CON_OPER'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_CONTCON_FLOA: TFloatField
      DisplayWidth = 10
      FieldName = 'CON_FLOA'
      Origin = 'FINANCEIRO.CPACONT.CON_FLOA'
      Visible = False
    end
    object Q_CONTCON_FLUX: TStringField
      DisplayWidth = 1
      FieldName = 'CON_FLUX'
      Origin = 'FINANCEIRO.CPACONT.CON_FLUX'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_CONTCON_CTCO: TStringField
      DisplayWidth = 6
      FieldName = 'CON_CTCO'
      Origin = 'FINANCEIRO.CPACONT.CON_CTCO'
      Visible = False
      FixedChar = True
      Size = 6
    end
  end
  object DS_BANC: TwwDataSource
    DataSet = Q_BANC
    Left = 241
    Top = 41
  end
  object UpdateSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'update CPABANC'
      'set'
      '  BAN_Ordem = :BAN_Ordem'
      'where'
      '  BAN_CODI = :OLD_BAN_CODI ')
    InsertSQL.Strings = (
      'insert into CPABANC'
      
        '  (BAN_CODI, BAN_NOME, BAN_DATA, BAN_LCHE, BAN_NAGE, BAN_AGEN,BA' +
        'N_Ordem)'
      'values'
      
        '  (:BAN_CODI, :BAN_NOME, :BAN_DATA, :BAN_LCHE, :BAN_NAGE, :BAN_A' +
        'GEN,BAN_Ordem)')
    DeleteSQL.Strings = (
      'delete from CPABANC'
      'where'
      '  BAN_CODI = :OLD_BAN_CODI')
    Left = 177
    Top = 89
  end
  object Q_ATUALIZA: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    ValidateWithMask = True
    Left = 41
    Top = 41
  end
end
