object FCadOrca: TFCadOrca
  Left = 66
  Top = 181
  BorderStyle = bsSingle
  Caption = 'Ordem de Compra'
  ClientHeight = 159
  ClientWidth = 672
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 1
    Top = 4
    Width = 665
    Height = 46
    BevelInner = bvLowered
    Color = 13538330
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -12
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object bt_gravar: TSpeedButton
      Left = 495
      Top = 5
      Width = 34
      Height = 35
      Hint = 'Gravar'
      Enabled = False
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333330070
        7700333333337777777733333333008088003333333377F73377333333330088
        88003333333377FFFF7733333333000000003FFFFFFF77777777000000000000
        000077777777777777770FFFFFFF0FFFFFF07F3333337F3333370FFFFFFF0FFF
        FFF07F3FF3FF7FFFFFF70F00F0080CCC9CC07F773773777777770FFFFFFFF039
        99337F3FFFF3F7F777F30F0000F0F09999937F7777373777777F0FFFFFFFF999
        99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
        99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
        93337FFFF7737777733300000033333333337777773333333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = bt_gravarClick
    end
    object Bt_Incluir: TSpeedButton
      Left = 461
      Top = 5
      Width = 34
      Height = 35
      Hint = 'Incluir'
      Enabled = False
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
        333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
        0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
        07333337F33333337F333330FFFFFFFF07333337F33333337F333330FFFFFFFF
        07333FF7F33333337FFFBBB0FFFFFFFF0BB37777F3333333777F3BB0FFFFFFFF
        0BBB3777F3333FFF77773330FFFF000003333337F333777773333330FFFF0FF0
        33333337F3337F37F3333330FFFF0F0B33333337F3337F77FF333330FFFF003B
        B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
        3BB33773333773333773B333333B3333333B7333333733333337}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = Bt_IncluirClick
    end
    object Bt_excluir: TSpeedButton
      Left = 563
      Top = 5
      Width = 34
      Height = 35
      Hint = 'Cancelar Pedido'
      Enabled = False
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
        3333333777777777F3333330F777777033333337F3F3F3F7F3333330F0808070
        33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
        33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
        333333F7F7F7F7F7F3F33030F080707030333737F7F7F7F7F7333300F0808070
        03333377F7F7F7F773333330F080707033333337F7F7F7F7F333333070707070
        33333337F7F7F7F7FF3333000000000003333377777777777F33330F88877777
        0333337FFFFFFFFF7F3333000000000003333377777777777333333330777033
        3333333337FFF7F3333333333000003333333333377777333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = Bt_excluirClick
    end
    object SBT_SAIR: TSpeedButton
      Left = 609
      Top = 5
      Width = 48
      Height = 35
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
    object Label1: TLabel
      Left = 7
      Top = 9
      Width = 158
      Height = 26
      Caption = 'Ordem de Compra'
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clAqua
      Font.Height = -19
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Bt_cancelar: TSpeedButton
      Left = 529
      Top = 5
      Width = 34
      Height = 35
      Hint = 'Cancelar'
      Enabled = False
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
      OnClick = Bt_cancelarClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 52
    Width = 666
    Height = 106
    BevelInner = bvLowered
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -12
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label7: TLabel
      Left = 45
      Top = 14
      Width = 23
      Height = 17
      Caption = 'O.C.'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 7
      Top = 44
      Width = 61
      Height = 17
      Caption = 'Fornecedor'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 160
      Top = 75
      Width = 43
      Height = 17
      Caption = 'Usuário'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 163
      Top = 14
      Width = 71
      Height = 17
      Caption = 'Dt. Cadastro'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 329
      Top = 14
      Width = 66
      Height = 17
      Caption = 'Dt. Entrega'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 503
      Top = 14
      Width = 57
      Height = 17
      Caption = 'Dt. Emiss.'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 399
      Top = 44
      Width = 28
      Height = 17
      Caption = 'Cond.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 38
      Top = 75
      Width = 30
      Height = 17
      Caption = 'Valor'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 391
      Top = 75
      Width = 38
      Height = 17
      Caption = 'Status'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object cboForn: TwwDBLookupCombo
      Left = 71
      Top = 40
      Width = 319
      Height = 25
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'FANTASIA'#9'60'#9'FANTASIA'#9'F')
      DataField = 'FORNECEDOR_ID'
      DataSource = DS_OC
      LookupTable = Q_FORN
      LookupField = 'FORNECEDOR_ID'
      ParentFont = False
      TabOrder = 1
      AutoDropDown = True
      ShowButton = True
      AllowClearKey = False
      OnEnter = cboFornEnter
      OnExit = cboFornExit
    end
    object txtOC: TwwDBEdit
      Left = 71
      Top = 10
      Width = 87
      Height = 25
      DataField = 'NUM_OCOM'
      DataSource = DS_OC
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnEnter = txtOCEnter
      OnExit = txtOCExit
    end
    object txtUser: TwwDBEdit
      Left = 205
      Top = 71
      Width = 183
      Height = 25
      DataField = 'USUARIO'
      DataSource = DS_OC
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnEnter = txtOCEnter
      OnExit = txtOCExit
    end
    object txtDtCad: TwwDBEdit
      Left = 237
      Top = 10
      Width = 87
      Height = 25
      DataField = 'DT_CADASTRO'
      DataSource = DS_OC
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnEnter = txtOCEnter
      OnExit = txtOCExit
    end
    object txtDtEntr: TwwDBEdit
      Left = 400
      Top = 10
      Width = 90
      Height = 25
      DataField = 'DT_ENTREGA'
      DataSource = DS_OC
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnEnter = txtOCEnter
      OnExit = txtOCExit
    end
    object txtDtEmiss: TwwDBEdit
      Left = 567
      Top = 10
      Width = 87
      Height = 25
      DataField = 'DT_EMISSAO'
      DataSource = DS_OC
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnEnter = txtOCEnter
      OnExit = txtOCExit
    end
    object cboCond: TwwDBLookupCombo
      Left = 430
      Top = 40
      Width = 226
      Height = 25
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'DESCRICAO'#9'80'#9'DESCRICAO'#9'F')
      DataField = 'COND_PGTO_ID'
      DataSource = DS_OC
      LookupTable = Q_COND
      LookupField = 'Cond_Pgto_ID'
      ParentFont = False
      TabOrder = 2
      AutoDropDown = True
      ShowButton = True
      AllowClearKey = False
      OnEnter = cboFornEnter
      OnExit = cboFornExit
    end
    object txtVal: TwwDBEdit
      Left = 70
      Top = 71
      Width = 87
      Height = 25
      DataField = 'VALOR'
      DataSource = DS_OC
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnEnter = txtOCEnter
      OnExit = txtOCExit
    end
    object cboStat: TwwDBComboBox
      Left = 430
      Top = 71
      Width = 226
      Height = 25
      ShowButton = True
      Style = csDropDown
      MapList = True
      AllowClearKey = False
      AutoDropDown = True
      ButtonStyle = cbsEllipsis
      DataField = 'STATUS'
      DataSource = DS_OC
      DropDownCount = 8
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ItemHeight = 0
      Items.Strings = (
        'Parcialmente Atendida'#9'P'
        'Totalmente Atendida'#9'T'
        'Em Aberto'#9'A')
      ParentFont = False
      Sorted = False
      TabOrder = 8
      UnboundDataType = wwDefault
    end
  end
  object DS_OC: TwwDataSource
    DataSet = Q_OC
    OnStateChange = DS_OCStateChange
    Left = 216
    Top = 7
  end
  object Q_OC: TwwQuery
    CachedUpdates = True
    BeforePost = Q_OCBeforePost
    AfterPost = Q_OCAfterPost
    BeforeDelete = Q_OCBeforeDelete
    AfterDelete = Q_OCAfterDelete
    OnNewRecord = Q_OCNewRecord
    DatabaseName = 'Bancodados'
    SessionName = 'Sec_BaseDados'
    RequestLive = True
    SQL.Strings = (
      'SELECT'#9#9'NUM_OCOM,'
      #9#9'DT_CADASTRO,'
      #9#9'DT_ENTREGA,'
      #9#9'DT_EMISSAO,'
      #9#9'FORNECEDOR_ID,'
      #9#9'COND_PGTO_ID,'
      #9#9'USUARIO,'
      #9#9'VALOR,'
      #9#9'STATUS,'
      #9#9'ORD_CAPA_ID'
      'FROM'#9#9'ORDEM_CAPA'
      'WHERE'#9#9'1 = 0')
    UpdateObject = UPD_OC
    ValidateWithMask = True
    Left = 162
    Top = 7
    object Q_OCDT_CADASTRO: TDateTimeField
      FieldName = 'DT_CADASTRO'
      Origin = 'BANCODADOS.ORDEM_CAPA.DT_CADASTRO'
      DisplayFormat = 'DD/MM/YY'
      EditMask = '!99/99/00;1;_'
    end
    object Q_OCUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'BANCODADOS.ORDEM_CAPA.USUARIO'
      FixedChar = True
      Size = 50
    end
    object Q_OCFORNECEDOR_ID: TIntegerField
      FieldName = 'FORNECEDOR_ID'
      Origin = 'BANCODADOS.ORDEM_CAPA.FORNECEDOR_ID'
    end
    object Q_OCNUM_OCOM: TIntegerField
      FieldName = 'NUM_OCOM'
      Origin = 'BANCODADOS.ORDEM_CAPA.NUM_OCOM'
    end
    object Q_OCCOND_PGTO_ID: TIntegerField
      FieldName = 'COND_PGTO_ID'
      Origin = 'BANCODADOS.ORDEM_CAPA.COND_PGTO_ID'
    end
    object Q_OCDT_EMISSAO: TDateTimeField
      FieldName = 'DT_EMISSAO'
      Origin = 'BANCODADOS.ORDEM_CAPA.DT_EMISSAO'
      DisplayFormat = 'DD/MM/YY'
      EditMask = '!99/99/00;1;_'
    end
    object Q_OCDT_ENTREGA: TDateTimeField
      FieldName = 'DT_ENTREGA'
      Origin = 'BANCODADOS.ORDEM_CAPA.DT_ENTREGA'
      DisplayFormat = 'DD/MM/YY'
      EditMask = '!99/99/00;1;_'
    end
    object Q_OCSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'BANCODADOS.ORDEM_CAPA.BAIXA'
      FixedChar = True
      Size = 1
    end
    object Q_OCVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = 'BANCODADOS.ORDEM_CAPA.BAIXA'
    end
    object Q_OCORD_CAPA_ID: TAutoIncField
      FieldName = 'ORD_CAPA_ID'
    end
  end
  object Q_COND: TwwQuery
    DatabaseName = 'Bancodados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'SELECT'#9#9'*'
      'FROM'#9#9'CONDICAO_PAGTO')
    ValidateWithMask = True
    Left = 266
    Top = 65527
    object Q_CONDDescricao: TStringField
      DisplayLabel = 'DESCRICAO'
      DisplayWidth = 80
      FieldName = 'Descricao'
      Origin = 'BANCODADOS.Condicao_Pagto.Descricao'
      FixedChar = True
      Size = 30
    end
    object Q_CONDCond_Pgto_ID: TAutoIncField
      FieldName = 'Cond_Pgto_ID'
      Origin = 'BANCODADOS.Condicao_Pagto.Cond_Pgto_ID'
      Visible = False
    end
    object Q_CONDNum_Parcelas: TFloatField
      FieldName = 'Num_Parcelas'
      Origin = 'BANCODADOS.Condicao_Pagto.Num_Parcelas'
      Visible = False
    end
    object Q_CONDPagamento: TStringField
      FieldName = 'Pagamento'
      Origin = 'BANCODADOS.Condicao_Pagto.Pagamento'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object Q_CONDFora: TStringField
      FieldName = 'Fora'
      Origin = 'BANCODADOS.Condicao_Pagto.Fora'
      Visible = False
      FixedChar = True
      Size = 1
    end
  end
  object UPD_OC: TUpdateSQL
    ModifySQL.Strings = (
      'update ORDEM_CAPA'
      'set'
      '  NUM_OCOM = :NUM_OCOM,'
      '  DT_CADASTRO = :DT_CADASTRO,'
      '  DT_ENTREGA = :DT_ENTREGA,'
      '  DT_EMISSAO = :DT_EMISSAO,'
      '  FORNECEDOR_ID = :FORNECEDOR_ID,'
      '  COND_PGTO_ID = :COND_PGTO_ID,'
      '  USUARIO = :USUARIO,'
      '  VALOR = :VALOR,'
      '  STATUS = :STATUS'
      'where'
      '  ORD_CAPA_ID = :OLD_ORD_CAPA_ID')
    InsertSQL.Strings = (
      'insert into ORDEM_CAPA'
      
        '  (NUM_OCOM, DT_CADASTRO, DT_ENTREGA, DT_EMISSAO, FORNECEDOR_ID,' +
        ' COND_PGTO_ID, '
      '   USUARIO, VALOR, STATUS)'
      'values'
      
        '  (:NUM_OCOM, :DT_CADASTRO, :DT_ENTREGA, :DT_EMISSAO, :FORNECEDO' +
        'R_ID, :COND_PGTO_ID, '
      '   :USUARIO, :VALOR, :STATUS)')
    DeleteSQL.Strings = (
      'delete from ORDEM_CAPA'
      'where'
      '  ORD_CAPA_ID = :OLD_ORD_CAPA_ID')
    Left = 247
    Top = 7
  end
  object Q_AUX: TwwQuery
    DatabaseName = 'Bancodados'
    SessionName = 'Sec_BaseDados'
    ValidateWithMask = True
    Left = 384
    Top = 7
  end
  object Q_FORN: TwwQuery
    DatabaseName = 'Bancodados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'SELECT'#9#9'FORNECEDOR_ID,'
      #9#9'FANTASIA'
      'FROM'#9#9'FORNECEDORES'
      'ORDER BY'#9'FANTASIA')
    ValidateWithMask = True
    Left = 319
    Top = 7
    object Q_FORNFANTASIA: TStringField
      DisplayWidth = 60
      FieldName = 'FANTASIA'
      FixedChar = True
      Size = 60
    end
    object Q_FORNFORNECEDOR_ID: TAutoIncField
      FieldName = 'FORNECEDOR_ID'
      Visible = False
    end
  end
end
