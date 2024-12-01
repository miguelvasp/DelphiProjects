object FPag_For: TFPag_For
  Left = 1
  Top = 4
  Width = 801
  Height = 552
  Caption = 'Pagamento Automático de Fornecedores'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 793
    Height = 37
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 13
      Top = 8
      Width = 360
      Height = 23
      Caption = 'Pagamento Automático de Fornecedores'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -20
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object SBT_SAIR: TSpeedButton
      Left = 761
      Top = 6
      Width = 24
      Height = 25
      Hint = 'Sair'
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
      OnClick = SBT_SAIRClick
    end
    object DBNavigator1: TDBNavigator
      Left = 521
      Top = 6
      Width = 240
      Height = 25
      DataSource = DS_PARA
      ConfirmDelete = False
      TabOrder = 0
      OnClick = DBNavigator1Click
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 41
    Width = 793
    Height = 482
    BevelInner = bvLowered
    TabOrder = 1
    object Label13: TLabel
      Left = 16
      Top = 354
      Width = 65
      Height = 14
      Caption = 'Observação'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 16
      Top = 15
      Width = 36
      Height = 14
      Caption = 'Tabela'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SBT_CONS: TSpeedButton
      Left = 342
      Top = 13
      Width = 75
      Height = 22
      Hint = 'Limpar'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
        555557777F777555F55500000000555055557777777755F75555005500055055
        555577F5777F57555555005550055555555577FF577F5FF55555500550050055
        5555577FF77577FF555555005050110555555577F757777FF555555505099910
        555555FF75777777FF555005550999910555577F5F77777775F5500505509990
        3055577F75F77777575F55005055090B030555775755777575755555555550B0
        B03055555F555757575755550555550B0B335555755555757555555555555550
        BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
        50BB555555555555575F555555555555550B5555555555555575}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SBT_CONSClick
    end
    object DBG_TXPA: TwwDBGrid
      Left = 15
      Top = 47
      Width = 763
      Height = 298
      Hint = 'Visualização dos Registros'
      Selected.Strings = (
        'Ordem'#9'3'#9'Ord.'
        'Descricao'#9'25'#9'Descrição'
        'Qtde_Dig'#9'3'#9'Dig.'
        'Tabela'#9'22'#9'Tabela'
        'Campo'#9'22'#9'Campo'
        'Fixo'#9'14'#9'Fixo'
        'Tipo'#9'9'#9'Tipo '
        'POS_INI'#9'8'#9'P.Ini.'
        'POS_FIM'#9'7'#9'P. Fim')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DS_PARA
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      KeyOptions = [dgEnterToTab, dgAllowInsert]
      Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgWordWrap, dgTabExitsOnLastCol]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      TitleAlignment = taCenter
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clNavy
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = [fsBold]
      TitleLines = 1
      TitleButtons = False
      OnColExit = DBG_TXPAColExit
      IndicatorColor = icBlack
    end
    object wwDBLookupCombo4: TwwDBLookupCombo
      Left = 34
      Top = 229
      Width = 271
      Height = 21
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'NAME'#9'255'#9'NAME'#9'F')
      DataField = 'Tabela'
      DataSource = DS_PARA
      LookupTable = Q_DIFE
      LookupField = 'NAME'
      TabOrder = 1
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
    end
    object wwDBLookupCombo1: TwwDBLookupCombo
      Left = 342
      Top = 237
      Width = 250
      Height = 21
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'NAME'#9'255'#9'NAME'#9'F')
      DataField = 'Campo'
      DataSource = DS_PARA
      LookupTable = Q_CAMPO
      LookupField = 'NAME'
      TabOrder = 2
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
    end
    object DBMemo1: TDBMemo
      Left = 15
      Top = 372
      Width = 762
      Height = 97
      DataField = 'Obs'
      DataSource = DS_PARA
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object cboStat: TwwDBComboBox
      Left = 136
      Top = 156
      Width = 259
      Height = 25
      ShowButton = True
      Style = csDropDown
      MapList = True
      AllowClearKey = False
      AutoDropDown = True
      ButtonStyle = cbsEllipsis
      DropDownCount = 8
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ItemHeight = 0
      Items.Strings = (
        'Numérico'#9'N'
        'Alfa'#9'A')
      ParentFont = False
      Sorted = False
      TabOrder = 4
      UnboundDataType = wwDefault
    end
    object wwDBLookupCombo2: TwwDBLookupCombo
      Left = 56
      Top = 13
      Width = 271
      Height = 21
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'NAME'#9'255'#9'NAME'#9'F')
      LookupTable = Q_TABELA
      LookupField = 'NAME'
      TabOrder = 5
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
    end
  end
  object Q_PARA: TwwQuery
    CachedUpdates = True
    AfterPost = Q_PARAAfterPost
    BeforeDelete = Q_PARABeforeDelete
    AfterDelete = Q_PARAAfterDelete
    OnCalcFields = Q_PARACalcFields
    OnNewRecord = Q_PARANewRecord
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    RequestLive = True
    SQL.Strings = (
      'Select * from PAG_FOR order by ordem')
    UpdateObject = UPD_PARA
    ControlType.Strings = (
      'Tabela;CustomEdit;wwDBLookupCombo4'
      'Campo;CustomEdit;wwDBLookupCombo1'
      'Tipo;CustomEdit;cboStat')
    ValidateWithMask = True
    Left = 97
    Top = 308
    object Q_PARAOrdem: TIntegerField
      DisplayLabel = 'Ord.'
      DisplayWidth = 3
      FieldName = 'Ordem'
      Origin = 'FINANCEIRO.PAG_FOR.Ordem'
    end
    object Q_PARADescricao: TStringField
      DisplayLabel = 'Descrição'
      DisplayWidth = 25
      FieldName = 'Descricao'
      Origin = 'FINANCEIRO.PAG_FOR.Descricao'
      FixedChar = True
      Size = 50
    end
    object Q_PARAQtde_Dig: TIntegerField
      DisplayLabel = 'Dig.'
      DisplayWidth = 3
      FieldName = 'Qtde_Dig'
      Origin = 'FINANCEIRO.PAG_FOR.Qtde_Dig'
    end
    object Q_PARATabela: TStringField
      DisplayWidth = 22
      FieldName = 'Tabela'
      Origin = 'FINANCEIRO.PAG_FOR.Tabela'
      OnChange = Q_PARATabelaChange
      FixedChar = True
      Size = 40
    end
    object Q_PARACampo: TStringField
      DisplayWidth = 22
      FieldName = 'Campo'
      Origin = 'FINANCEIRO.PAG_FOR.Campo'
      FixedChar = True
      Size = 40
    end
    object Q_PARAFixo: TStringField
      DisplayWidth = 14
      FieldName = 'Fixo'
      Origin = 'FINANCEIRO.PAG_FOR.Fixo'
      FixedChar = True
      Size = 100
    end
    object Q_PARATipo: TStringField
      DisplayLabel = 'Tipo '
      DisplayWidth = 9
      FieldName = 'Tipo'
      Origin = 'FINANCEIRO.PAG_FOR.Tipo'
      FixedChar = True
      Size = 1
    end
    object Q_PARAPOS_INI: TStringField
      DisplayLabel = 'P.Ini.'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'POS_INI'
      Size = 5
      Calculated = True
    end
    object Q_PARAPOS_FIM: TStringField
      DisplayLabel = 'P. Fim'
      DisplayWidth = 7
      FieldKind = fkCalculated
      FieldName = 'POS_FIM'
      Size = 5
      Calculated = True
    end
    object Q_PARAPag_For_ID: TAutoIncField
      DisplayLabel = 'Ord.'
      DisplayWidth = 3
      FieldName = 'Pag_For_ID'
      Origin = 'FINANCEIRO.PAG_FOR.Pag_For_ID'
      Visible = False
    end
    object Q_PARAObs: TMemoField
      DisplayWidth = 10
      FieldName = 'Obs'
      Origin = 'FINANCEIRO.PAG_FOR.Obs'
      Visible = False
      BlobType = ftMemo
    end
  end
  object DS_PARA: TwwDataSource
    DataSet = Q_PARA
    Left = 289
    Top = 316
  end
  object UPD_PARA: TUpdateSQL
    ModifySQL.Strings = (
      'update PAG_FOR'
      'set'
      '  Descricao = :Descricao,'
      '  Qtde_Dig = :Qtde_Dig,'
      '  Obs = :Obs,'
      '  Tipo = :Tipo,'
      '  Tabela = :Tabela,'
      '  Campo = :Campo,'
      '  Fixo = :Fixo,'
      '  Ordem = :Ordem'
      'where'
      '  Pag_For_ID = :OLD_Pag_For_ID')
    InsertSQL.Strings = (
      'insert into PAG_FOR'
      '  (Descricao, Qtde_Dig, Obs, Tipo, Tabela, Campo, Fixo, Ordem)'
      'values'
      
        '  (:Descricao, :Qtde_Dig, :Obs, :Tipo, :Tabela, :Campo, :Fixo, :' +
        'Ordem)')
    DeleteSQL.Strings = (
      'delete from PAG_FOR'
      'where'
      '  Pag_For_ID = :OLD_Pag_For_ID')
    Left = 433
    Top = 308
  end
  object Q_DIFE: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      ' '
      'SELECT  NAME, ID'
      'FROM   SYSOBJECTS'
      'WHERE  XTYPE = '#39'U'#39)
    ValidateWithMask = True
    Left = 137
    Top = 160
    object Q_DIFENAME: TStringField
      DisplayWidth = 255
      FieldName = 'NAME'
      FixedChar = True
      Size = 255
    end
    object Q_DIFEID: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID'
      Visible = False
    end
  end
  object Q_CAMPO: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    DataSource = DS_DIFE
    SQL.Strings = (
      ' '
      'SELECT  NAME, ID'
      'FROM   SYSCOLUMNS'
      'WHERE   ID = :ID')
    ValidateWithMask = True
    Left = 473
    Top = 136
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptUnknown
      end>
    object StringField1: TStringField
      DisplayWidth = 255
      FieldName = 'NAME'
      FixedChar = True
      Size = 255
    end
    object IntegerField1: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID'
      Visible = False
    end
  end
  object DS_DIFE: TwwDataSource
    DataSet = Q_DIFE
    Left = 609
    Top = 212
  end
  object Q_TABELA: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      ' SELECT  NAME, ID'
      'FROM   SYSOBJECTS'
      'WHERE  XTYPE = '#39'U'#39
      'ORDER BY NAME')
    ValidateWithMask = True
    Left = 313
    Top = 136
    object Q_TABELANAME: TStringField
      FieldName = 'NAME'
      FixedChar = True
      Size = 255
    end
    object Q_TABELAID: TIntegerField
      FieldName = 'ID'
    end
  end
  object Q_AUX: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    DataSource = DS_PARA
    SQL.Strings = (
      'SELECT'#9#9'CASE WHEN SUM(QTDE_DIG) IS NULL THEN 0'
      #9#9'ELSE SUM(QTDE_DIG) END + 1 QT'
      'FROM'#9#9'PAG_FOR'
      'WHERE'#9#9'ORDEM < :ORDEM')
    ValidateWithMask = True
    Left = 553
    Top = 160
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Ordem'
        ParamType = ptUnknown
      end>
    object Q_AUXQT: TIntegerField
      FieldName = 'QT'
    end
  end
end
