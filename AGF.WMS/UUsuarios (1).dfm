object FUsuarios: TFUsuarios
  Left = 269
  Top = 112
  Width = 804
  Height = 582
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object SB: TStatusBar
    Left = 0
    Top = 524
    Width = 777
    Height = 19
    Align = alNone
    Panels = <>
    ParentShowHint = False
    ShowHint = False
    SimplePanel = True
    SizeGrip = False
  end
  object GroupBox1: TGroupBox
    Left = 1
    Top = 41
    Width = 775
    Height = 488
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 33
      Height = 13
      Caption = 'Nome'
      FocusControl = edtNome
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 224
      Top = 10
      Width = 37
      Height = 13
      Caption = 'Senha'
      FocusControl = edtSenha
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtNome: TwwDBEdit
      Left = 8
      Top = 24
      Width = 185
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NOME'
      DataSource = dsUsuarios
      TabOrder = 0
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object edtSenha: TwwDBEdit
      Left = 224
      Top = 26
      Width = 177
      Height = 21
      DataField = 'SENHA'
      DataSource = dsUsuarios
      PasswordChar = '*'
      TabOrder = 1
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object trvMenu: TTreeView
      Left = 10
      Top = 128
      Width = 743
      Height = 353
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      Indent = 19
      ParentFont = False
      RightClickSelect = True
      TabOrder = 2
      OnDblClick = trvMenuDblClick
      Items.Data = {
        050000001B00000000000000FFFFFFFF00000000FFFFFFFF0000000000000000
        0261311B00000000000000FFFFFFFF01000000FFFFFFFF000000000200000002
        61321B00000000000000FFFFFFFF02000000FFFFFFFF00000000000000000262
        321B00000000000000FFFFFFFF03000000FFFFFFFF0000000000000000026233
        1B00000000000000FFFFFFFF04000000FFFFFFFF00000000050000000261331B
        00000000000000FFFFFFFF05000000FFFFFFFF00000000000000000262341B00
        000000000000FFFFFFFF06000000FFFFFFFF00000000000000000262351B0000
        0000000000FFFFFFFF07000000FFFFFFFF00000000000000000262361B000000
        00000000FFFFFFFF08000000FFFFFFFF00000000010000000262371B00000000
        000000FFFFFFFF09000000FFFFFFFF00000000010000000263341B0000000000
        0000FFFFFFFF0A000000FFFFFFFF00000000000000000264351B000000000000
        00FFFFFFFF0B000000FFFFFFFF00000000010000000262381B00000000000000
        FFFFFFFF0C000000FFFFFFFF00000000000000000263351B0000000000000000
        0000000D000000FFFFFFFF00000000010000000261341B000000000000000000
        00000E000000FFFFFFFF00000000000000000262391B00000000000000000000
        000F000000FFFFFFFF0000000000000000026135}
    end
    object DBCheckBox1: TDBCheckBox
      Left = 8
      Top = 56
      Width = 265
      Height = 17
      Caption = 'ALTERA INFORMAÇÕES NO MANIFESTO'
      DataField = 'ALTERA_MANIFESTO'
      DataSource = dsUsuarios
      TabOrder = 3
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBCheckBox2: TDBCheckBox
      Left = 8
      Top = 80
      Width = 153
      Height = 17
      Caption = 'REMANEJAMENTO'
      DataField = 'RemanejaSN'
      DataSource = dsUsuarios
      TabOrder = 4
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBCheckBox3: TDBCheckBox
      Left = 8
      Top = 104
      Width = 313
      Height = 17
      Caption = 'ALTERA CADASTRO DE CLIENTES'
      DataField = 'AlteraClientes'
      DataSource = dsUsuarios
      TabOrder = 5
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
  end
  object Panel10: TPanel
    Left = 423
    Top = 57
    Width = 257
    Height = 50
    BevelInner = bvLowered
    Color = clBlue
    TabOrder = 2
    Visible = False
    object Label62: TLabel
      Left = 12
      Top = 3
      Width = 42
      Height = 14
      Caption = 'Usuário'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SpeedButton6: TSpeedButton
      Left = 189
      Top = 18
      Width = 26
      Height = 25
      Hint = 'Localizar'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000010000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33033333333333333F7F3333333333333000333333333333F777333333333333
        000333333333333F777333333333333000333333333333F77733333333333300
        033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
        33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
        3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
        33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
        333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
        333333773FF77333333333370007333333333333777333333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton6Click
    end
    object SpeedButton5: TSpeedButton
      Left = 214
      Top = 18
      Width = 26
      Height = 25
      Hint = 'Cancelar'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000010000000000000000000
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
      OnClick = SpeedButton5Click
    end
    object wwDBLookupCombo11: TwwDBLookupCombo
      Left = 8
      Top = 21
      Width = 161
      Height = 21
      CharCase = ecUpperCase
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'NOME'#9'40'#9'Usuário'#9'F')
      LookupTable = SqlUsuarios
      LookupField = 'NOME'
      Options = [loColLines, loRowLines, loTitles]
      TabOrder = 0
      AutoDropDown = True
      ShowButton = True
      SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
      PreciseEditRegion = False
      AllowClearKey = False
      OnKeyPress = wwDBLookupCombo11KeyPress
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 788
    Height = 37
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 3
    object Label4: TLabel
      Left = 9
      Top = 4
      Width = 269
      Height = 29
      Caption = 'Cadastro de Usuários'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -24
      Font.Name = 'Georgia'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object btnRefresh: TSpeedButton
      Left = 697
      Top = 7
      Width = 26
      Height = 25
      Hint = 'Atualizar os dados.'
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
        3333333777333777FF33339993707399933333773337F3777FF3399933000339
        9933377333777F3377F3399333707333993337733337333337FF993333333333
        399377F33333F333377F993333303333399377F33337FF333373993333707333
        333377F333777F333333993333101333333377F333777F3FFFFF993333000399
        999377FF33777F77777F3993330003399993373FF3777F37777F399933000333
        99933773FF777F3F777F339993707399999333773F373F77777F333999999999
        3393333777333777337333333999993333333333377777333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = btnRefreshClick
    end
    object btnExpand: TSpeedButton
      Left = 724
      Top = 7
      Width = 26
      Height = 25
      Hint = 'Expande a árvore.'
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00303333333333
        333337F3333333333333303333333333333337F33FFFFF3FF3FF303300000300
        300337FF77777F77377330000BBB0333333337777F337F33333330330BB00333
        333337F373F773333333303330033333333337F3377333333333303333333333
        333337F33FFFFF3FF3FF303300000300300337FF77777F77377330000BBB0333
        333337777F337F33333330330BB00333333337F373F773333333303330033333
        333337F3377333333333303333333333333337FFFF3FF3FFF333000003003000
        333377777F77377733330BBB0333333333337F337F33333333330BB003333333
        333373F773333333333330033333333333333773333333333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = btnExpandClick
    end
    object btnFechar: TSpeedButton
      Left = 750
      Top = 7
      Width = 26
      Height = 25
      Hint = 'Fechar cadastro.'
      Flat = True
      Glyph.Data = {
        76020000424D7602000000000000760000002800000040000000100000000100
        0400000000000002000000000000000000001000000000000000000000000000
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
      OnClick = btnFecharClick
    end
    object SpeedButton2: TSpeedButton
      Left = 671
      Top = 7
      Width = 25
      Height = 25
      Hint = 'Localização Rápida de Produtos'
      Glyph.Data = {
        EE000000424DEE000000000000007600000028000000100000000F0000000100
        0400000000007800000000000000000000001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        888800000888880000080F000888880F00080F000888880F0008000000080000
        000800F000000F00000800F000800F00000800F000800F000008800000000000
        0088880F00080F000888880000080000088888800088800088888880F08880F0
        888888800088800088888888888888888888}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton2Click
    end
    object DN: TDBNavigator
      Left = 462
      Top = 7
      Width = 208
      Height = 25
      DataSource = dsUsuarios
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbPost, nbCancel]
      Flat = True
      Hints.Strings = (
        'Primeiro registro.'
        'Registro anterior.'
        'Próximo registro.'
        'Último registro.'
        'Incluir um novo registro.'
        'Apagar o registro.'
        'Editar o registro.'
        'Confirmar inclusão ou alteração.'
        'Cancelar inclusão ou alteração.'
        'Atualização de dados.')
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      BeforeAction = DNBeforeAction
      OnClick = DNClick
    end
  end
  object dsUsuarios: TwwDataSource
    DataSet = SqlUsuarios
    OnStateChange = dsUsuariosStateChange
    OnDataChange = dsUsuariosDataChange
    Left = 255
    Top = 288
  end
  object SqlUsuarios: TwwQuery
    CachedUpdates = True
    AfterPost = SqlUsuariosAfterPost
    AfterDelete = SqlUsuariosAfterDelete
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    RequestLive = True
    SQL.Strings = (
      'select * from usuarios')
    UpdateObject = udtUsuarios
    ValidateWithMask = True
    Left = 249
    Top = 241
    object SqlUsuariosCH: TAutoIncField
      FieldName = 'CH'
      Origin = 'NBFDADOS.usuarios.CH'
    end
    object SqlUsuariosNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NBFDADOS.usuarios.NOME'
      FixedChar = True
      Size = 40
    end
    object SqlUsuariosSENHA: TStringField
      FieldName = 'SENHA'
      Origin = 'NBFDADOS.usuarios.SENHA'
      FixedChar = True
      Size = 40
    end
    object SqlUsuariosCHAMADA1: TStringField
      FieldName = 'CHAMADA1'
      Origin = 'NBFDADOS.usuarios.CHAMADA1'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosCHAMADA1A: TStringField
      FieldName = 'CHAMADA1A'
      Origin = 'NBFDADOS.usuarios.CHAMADA1A'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosCHAMADA1B: TStringField
      FieldName = 'CHAMADA1B'
      Origin = 'NBFDADOS.usuarios.CHAMADA1B'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosCHAMADA1C: TStringField
      FieldName = 'CHAMADA1C'
      Origin = 'NBFDADOS.usuarios.CHAMADA1C'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosCHAMADA1D: TStringField
      FieldName = 'CHAMADA1D'
      Origin = 'NBFDADOS.usuarios.CHAMADA1D'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosCHAMADA1E: TStringField
      FieldName = 'CHAMADA1E'
      Origin = 'NBFDADOS.usuarios.CHAMADA1E'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosCHAMADA1F: TStringField
      FieldName = 'CHAMADA1F'
      Origin = 'NBFDADOS.usuarios.CHAMADA1F'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosCHAMADA1G: TStringField
      FieldName = 'CHAMADA1G'
      Origin = 'NBFDADOS.usuarios.CHAMADA1G'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosCHAMADA1H: TStringField
      FieldName = 'CHAMADA1H'
      Origin = 'NBFDADOS.usuarios.CHAMADA1H'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosCHAMADA1I: TStringField
      FieldName = 'CHAMADA1I'
      Origin = 'NBFDADOS.usuarios.CHAMADA1I'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosCHAMADA1J: TStringField
      FieldName = 'CHAMADA1J'
      Origin = 'NBFDADOS.usuarios.CHAMADA1J'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosCHAMADA1K: TStringField
      FieldName = 'CHAMADA1K'
      Origin = 'NBFDADOS.usuarios.CHAMADA1K'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosCHAMADA1L: TStringField
      FieldName = 'CHAMADA1L'
      Origin = 'NBFDADOS.usuarios.CHAMADA1L'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosCHAMADA1M: TStringField
      FieldName = 'CHAMADA1M'
      Origin = 'NBFDADOS.usuarios.CHAMADA1M'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosCHAMADA1N: TStringField
      FieldName = 'CHAMADA1N'
      Origin = 'NBFDADOS.usuarios.CHAMADA1N'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosCHAMADA1O: TStringField
      FieldName = 'CHAMADA1O'
      Origin = 'NBFDADOS.usuarios.CHAMADA1O'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosCHAMADA1P: TStringField
      FieldName = 'CHAMADA1P'
      Origin = 'NBFDADOS.usuarios.CHAMADA1P'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosCHAMADA2: TStringField
      FieldName = 'CHAMADA2'
      Origin = 'NBFDADOS.usuarios.CHAMADA2'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosCHAMADA2A: TStringField
      FieldName = 'CHAMADA2A'
      Origin = 'NBFDADOS.usuarios.CHAMADA2A'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosCHAMADA2B: TStringField
      FieldName = 'CHAMADA2B'
      Origin = 'NBFDADOS.usuarios.CHAMADA2B'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosCHAMADA2C: TStringField
      FieldName = 'CHAMADA2C'
      Origin = 'NBFDADOS.usuarios.CHAMADA2C'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosCHAMADA2D: TStringField
      FieldName = 'CHAMADA2D'
      Origin = 'NBFDADOS.usuarios.CHAMADA2D'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosCHAMADA2E: TStringField
      FieldName = 'CHAMADA2E'
      Origin = 'NBFDADOS.usuarios.CHAMADA2E'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosCHAMADA2F: TStringField
      FieldName = 'CHAMADA2F'
      Origin = 'NBFDADOS.usuarios.CHAMADA2F'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosCHAMADA2F1: TStringField
      FieldName = 'CHAMADA2F1'
      Origin = 'NBFDADOS.usuarios.CHAMADA2F1'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosCHAMADA2F2: TStringField
      FieldName = 'CHAMADA2F2'
      Origin = 'NBFDADOS.usuarios.CHAMADA2F2'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosCHAMADA2F3: TStringField
      FieldName = 'CHAMADA2F3'
      Origin = 'NBFDADOS.usuarios.CHAMADA2F3'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosCHAMADA3: TStringField
      FieldName = 'CHAMADA3'
      Origin = 'NBFDADOS.usuarios.CHAMADA3'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosCHAMADA3A: TStringField
      FieldName = 'CHAMADA3A'
      Origin = 'NBFDADOS.usuarios.CHAMADA3A'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosCHAMADA3B: TStringField
      FieldName = 'CHAMADA3B'
      Origin = 'NBFDADOS.usuarios.CHAMADA3B'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosCHAMADA3C: TStringField
      FieldName = 'CHAMADA3C'
      Origin = 'NBFDADOS.usuarios.CHAMADA3C'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosCHAMADA3D: TStringField
      FieldName = 'CHAMADA3D'
      Origin = 'NBFDADOS.usuarios.CHAMADA3D'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosCHAMADA3E: TStringField
      FieldName = 'CHAMADA3E'
      Origin = 'NBFDADOS.usuarios.CHAMADA3E'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosCHAMADA3F: TStringField
      FieldName = 'CHAMADA3F'
      Origin = 'NBFDADOS.usuarios.CHAMADA3F'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosCHAMADA3F1: TStringField
      FieldName = 'CHAMADA3F1'
      Origin = 'NBFDADOS.usuarios.CHAMADA3F1'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosCHAMADA4: TStringField
      FieldName = 'CHAMADA4'
      Origin = 'NBFDADOS.usuarios.CHAMADA4'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosCHAMADA4A: TStringField
      FieldName = 'CHAMADA4A'
      Origin = 'NBFDADOS.usuarios.CHAMADA4A'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosCHAMADA4B: TStringField
      FieldName = 'CHAMADA4B'
      Origin = 'NBFDADOS.usuarios.CHAMADA4B'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosSAIR: TStringField
      FieldName = 'SAIR'
      Origin = 'NBFDADOS.usuarios.SAIR'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosCHAMADA2F4: TStringField
      FieldName = 'CHAMADA2F4'
      Origin = 'NBFDADOS.usuarios.CHAMADA2F4'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosCHAMADA3G: TStringField
      FieldName = 'CHAMADA3G'
      Origin = 'NBFDADOS.usuarios.CHAMADA3G'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosCHAMADA5: TStringField
      FieldName = 'CHAMADA5'
      Origin = 'NBFDADOS.usuarios.CHAMADA5'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosCHAMADA5A: TStringField
      FieldName = 'CHAMADA5A'
      Origin = 'NBFDADOS.usuarios.CHAMADA5A'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosCHAMADA5B: TStringField
      FieldName = 'CHAMADA5B'
      Origin = 'NBFDADOS.usuarios.CHAMADA5B'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosCHAMADA3H: TStringField
      FieldName = 'CHAMADA3H'
      Origin = 'NBFDADOS.usuarios.CHAMADA3H'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosCHAMADA3I: TStringField
      FieldName = 'CHAMADA3I'
      Origin = 'NBFDADOS.usuarios.CHAMADA3I'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosCHAMADA5C: TStringField
      FieldName = 'CHAMADA5C'
      Origin = 'NBFDADOS.usuarios.CHAMADA5C'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosCHAMADA3J: TStringField
      FieldName = 'CHAMADA3J'
      Origin = 'NBFDADOS.USUARIOS.CHAMADA3J'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosCHAMADA5D: TStringField
      FieldName = 'CHAMADA5D'
      Origin = 'NBFDADOS.usuarios.CHAMADA5D'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosCHAMADA1Q: TStringField
      FieldName = 'CHAMADA1Q'
      Origin = 'NBFDADOS.usuarios.CHAMADA1Q'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosCHAMADA3G1: TStringField
      FieldName = 'CHAMADA3G1'
      Origin = 'NBFDADOS.usuarios.CHAMADA3G1'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosCHAMADA3G2: TStringField
      FieldName = 'CHAMADA3G2'
      Origin = 'NBFDADOS.usuarios.CHAMADA3G2'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosCHAMADA3G3: TStringField
      FieldName = 'CHAMADA3G3'
      Origin = 'NBFDADOS.usuarios.CHAMADA3G3'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosCHAMADA5E: TStringField
      FieldName = 'CHAMADA5E'
      Origin = 'NBFDADOS.usuarios.CHAMADA5E'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosCHAMADA5F: TStringField
      FieldName = 'CHAMADA5F'
      Origin = 'NBFDADOS.usuarios.CHAMADA5F'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosCHAMADA5G: TStringField
      FieldName = 'CHAMADA5G'
      Origin = 'NBFDADOS.usuarios.CHAMADA5G'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosCHAMADA5H: TStringField
      FieldName = 'CHAMADA5H'
      Origin = 'NBFDADOS.usuarios.CHAMADA5H'
      FixedChar = True
      Size = 50
    end
    object SqlUsuariosCHAMADA5I: TStringField
      FieldName = 'CHAMADA5I'
      Origin = 'NBFDADOS.usuarios.CHAMADA5I'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosCHAMADA5J: TStringField
      FieldName = 'CHAMADA5J'
      Origin = 'NBFDADOS.usuarios.CHAMADA5J'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosCHAMADA5K: TStringField
      FieldName = 'CHAMADA5K'
      Origin = 'NBFDADOS.usuarios.CHAMADA5K'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosSALDONF: TStringField
      FieldName = 'SALDONF'
      Origin = 'NBFDADOS.usuarios.SALDONF'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosCHAMADA4C: TStringField
      FieldName = 'CHAMADA4C'
      Origin = 'NBFDADOS.usuarios.CHAMADA4C'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosCHAMADA4D: TStringField
      FieldName = 'CHAMADA4D'
      Origin = 'NBFDADOS.usuarios.CHAMADA4D'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosCHAMADA4E: TStringField
      FieldName = 'CHAMADA4E'
      Origin = 'NBFDADOS.usuarios.CHAMADA4E'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosCHAMADA4F: TStringField
      FieldName = 'CHAMADA4F'
      Origin = 'NBFDADOS.usuarios.CHAMADA4F'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosCHAMADA4G: TStringField
      FieldName = 'CHAMADA4G'
      Origin = 'NBFDADOS.USUARIOS.CHAMADA4G'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosCHAMADA3K: TStringField
      FieldName = 'CHAMADA3K'
      Origin = 'NBFDADOS.USUARIOS.CHAMADA3K'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosCHAMADA6K: TStringField
      FieldName = 'CHAMADA6K'
      Origin = 'NBFDADOS.usuarios.CHAMADA6K'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosExcluirReentrega1: TStringField
      FieldName = 'ExcluirReentrega1'
      Origin = 'NBFDADOS.usuarios.ExcluirReentrega1'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosGeraoEDIDucco1: TStringField
      FieldName = 'GeraoEDIDucco1'
      Origin = 'NBFDADOS.usuarios.GeraoEDIDucco1'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosLivroFiscal1: TStringField
      FieldName = 'LivroFiscal1'
      Origin = 'NBFDADOS.usuarios.LivroFiscal1'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosLivroArmazem: TStringField
      FieldName = 'LivroArmazem'
      Origin = 'NBFDADOS.usuarios.LivroArmazem'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosEXPNF: TStringField
      FieldName = 'EXPNF'
      Origin = 'NBFDADOS.usuarios.EXPNF'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosREL_TRANSPORTE: TStringField
      FieldName = 'REL_TRANSPORTE'
      Origin = 'NBFDADOS.usuarios.REL_TRANSPORTE'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosREL_KARDEX: TStringField
      FieldName = 'REL_KARDEX'
      Origin = 'NBFDADOS.usuarios.REL_KARDEX'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosEDI_OCOREN: TStringField
      FieldName = 'EDI_OCOREN'
      Origin = 'NBFDADOS.usuarios.EDI_OCOREN'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosTB_OCOREN: TStringField
      FieldName = 'TB_OCOREN'
      Origin = 'NBFDADOS.usuarios.TB_OCOREN'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosREL_MANIFESTO: TStringField
      FieldName = 'REL_MANIFESTO'
      Origin = 'NBFDADOS.USUARIOS.REL_MANIFESTO'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosALTERA_MANIFESTO: TStringField
      FieldName = 'ALTERA_MANIFESTO'
      Origin = 'NBFDADOS.USUARIOS.ALTERA_MANIFESTO'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosNF_COLETA: TStringField
      FieldName = 'NF_COLETA'
      Origin = 'NBFDADOS.usuarios.NF_COLETA'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosmnuFrete: TStringField
      FieldName = 'mnuFrete'
      Origin = 'NBFDADOS.USUARIOS.mnuFrete'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosPgtoFrete: TStringField
      FieldName = 'PgtoFrete'
      Origin = 'NBFDADOS.USUARIOS.PgtoFrete'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosDescontosFrete: TStringField
      FieldName = 'DescontosFrete'
      Origin = 'NBFDADOS.USUARIOS.DescontosFrete'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosConciliaodeFrete: TStringField
      FieldName = 'ConciliaodeFrete'
      Origin = 'NBFDADOS.USUARIOS.ConciliaodeFrete'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosPRE_CARGA: TStringField
      FieldName = 'PRE_CARGA'
      Origin = 'NBFDADOS.USUARIOS.PRE_CARGA'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosMANIFESTO_RATEIA: TStringField
      FieldName = 'MANIFESTO_RATEIA'
      Origin = 'NBFDADOS.USUARIOS.MANIFESTO_RATEIA'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosFATURA_GENERICA: TStringField
      FieldName = 'FATURA_GENERICA'
      Origin = 'NBFDADOS.USUARIOS.FATURA_GENERICA'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosCTRC_GENERICO: TStringField
      FieldName = 'CTRC_GENERICO'
      Origin = 'NBFDADOS.USUARIOS.CTRC_GENERICO'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosREL_OTIMIZA_CARGA: TStringField
      FieldName = 'REL_OTIMIZA_CARGA'
      Origin = 'NBFDADOS.USUARIOS.REL_OTIMIZA_CARGA'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosRemanejaSN: TStringField
      FieldName = 'RemanejaSN'
      Origin = 'NBFDADOS.USUARIOS.RemanejaSN'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosTRANSACAODIARIA: TStringField
      FieldName = 'TRANSACAODIARIA'
      Origin = 'NBFDADOS.USUARIOS.TRANSACAODIARIA'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosMANIFESTO_GERAL: TStringField
      FieldName = 'MANIFESTO_GERAL'
      Origin = 'NBFDADOS.USUARIOS.MANIFESTO_GERAL'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosLIBERA_POSICAO: TStringField
      FieldName = 'LIBERA_POSICAO'
      Origin = 'NBFDADOS.USUARIOS.LIBERA_POSICAO'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosALTERA_NF: TStringField
      FieldName = 'ALTERA_NF'
      Origin = 'NBFDADOS.USUARIOS.ALTERA_NF'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosAdmin: TStringField
      FieldName = 'Admin'
      Origin = 'NBFDADOS.USUARIOS.Admin'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosTRANSF_CODIGO: TStringField
      FieldName = 'TRANSF_CODIGO'
      Origin = 'NBFDADOS.USUARIOS.TRANSF_CODIGO'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosRASTREABILIDADE: TStringField
      FieldName = 'RASTREABILIDADE'
      Origin = 'NBFDADOS.USUARIOS.RASTREABILIDADE'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosEXPORT_MANIFESTO: TStringField
      FieldName = 'EXPORT_MANIFESTO'
      Origin = 'NBFDADOS.USUARIOS.EXPORT_MANIFESTO'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosEstoqueInovatti: TStringField
      FieldName = 'EstoqueInovatti'
      Origin = 'NBFDADOS.USUARIOS.EstoqueInovatti'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosRELTRANSPORTE2: TStringField
      FieldName = 'RELTRANSPORTE2'
      Origin = 'NBFDADOS.USUARIOS.RELTRANSPORTE2'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosClientesNBFRel: TStringField
      FieldName = 'ClientesNBFRel'
      Origin = 'NBFDADOS.USUARIOS.ClientesNBFRel'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosClientesFinaisRel: TStringField
      FieldName = 'ClientesFinaisRel'
      Origin = 'NBFDADOS.USUARIOS.ClientesFinaisRel'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosRELFRETECARGIL: TStringField
      FieldName = 'RELFRETECARGIL'
      Origin = 'NBFDADOS.USUARIOS.RELFRETECARGIL'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosConfirmaCTRC: TStringField
      FieldName = 'ConfirmaCTRC'
      Origin = 'NBFDADOS.USUARIOS.ConfirmaCTRC'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosNotasEntradaxRemessa: TStringField
      FieldName = 'NotasEntradaxRemessa'
      Origin = 'NBFDADOS.USUARIOS.NotasEntradaxRemessa'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosNFS_Conhecimento: TStringField
      FieldName = 'NFS_Conhecimento'
      Origin = 'NBFDADOS.USUARIOS.NFS_Conhecimento'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosCorrigeCTRComplementar: TStringField
      FieldName = 'CorrigeCTRComplementar'
      Origin = 'NBFDADOS.USUARIOS.CorrigeCTRComplementar'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosFechamentodeFrete: TStringField
      FieldName = 'FechamentodeFrete'
      Origin = 'NBFDADOS.USUARIOS.FechamentodeFrete'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariostpProdColeta: TStringField
      FieldName = 'tpProdColeta'
      Origin = 'NBFDADOS.USUARIOS.tpProdColeta'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosAlteraClientes: TStringField
      FieldName = 'AlteraClientes'
      Origin = 'NBFDADOS.USUARIOS.AlteraClientes'
      FixedChar = True
      Size = 1
    end
    object SqlUsuarioseDocs: TStringField
      FieldName = 'eDocs'
      Origin = 'NBFDADOS.USUARIOS.eDocs'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosContaCorrente: TStringField
      FieldName = 'ContaCorrente'
      Origin = 'NBFDADOS.USUARIOS.ContaCorrente'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosPermanencia: TStringField
      FieldName = 'Permanencia'
      Origin = 'NBFDADOS.USUARIOS.Permanencia'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosLiberaOD: TStringField
      FieldName = 'LiberaOD'
      Origin = 'NBFDADOS.USUARIOS.LiberaOD'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosEstoqueNF: TStringField
      FieldName = 'EstoqueNF'
      Origin = 'NBFDADOS.USUARIOS.EstoqueNF'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosNFSEConfig: TStringField
      FieldName = 'NFSEConfig'
      Origin = 'NBFDADOS.USUARIOS.NFSEConfig'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosEDICafe: TStringField
      FieldName = 'EDICafe'
      Origin = 'NBFDADOS.USUARIOS.EDICafe'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosEDIConembDIAGIO: TStringField
      FieldName = 'EDIConembDIAGIO'
      Origin = 'NBFDADOS.USUARIOS.EDIConembDIAGIO'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosContratoFrete: TStringField
      FieldName = 'ContratoFrete'
      Origin = 'NBFDADOS.USUARIOS.ContratoFrete'
      FixedChar = True
      Size = 1
    end
    object SqlUsuariosRelRomaneioEntradaEstoque: TStringField
      FieldName = 'RelRomaneioEntradaEstoque'
      Origin = 'NBFDADOS.USUARIOS.RelRomaneioEntradaEstoque'
      FixedChar = True
      Size = 1
    end
  end
  object udtUsuarios: TUpdateSQL
    ModifySQL.Strings = (
      'update usuarios'
      'set'
      '  NOME = :NOME,'
      '  SENHA = :SENHA,'
      '  CHAMADA1 = :CHAMADA1,'
      '  CHAMADA1A = :CHAMADA1A,'
      '  CHAMADA1B = :CHAMADA1B,'
      '  CHAMADA1C = :CHAMADA1C,'
      '  CHAMADA1D = :CHAMADA1D,'
      '  CHAMADA1E = :CHAMADA1E,'
      '  CHAMADA1F = :CHAMADA1F,'
      '  CHAMADA1G = :CHAMADA1G,'
      '  CHAMADA1H = :CHAMADA1H,'
      '  CHAMADA1I = :CHAMADA1I,'
      '  CHAMADA1J = :CHAMADA1J,'
      '  CHAMADA1K = :CHAMADA1K,'
      '  CHAMADA1L = :CHAMADA1L,'
      '  CHAMADA1M = :CHAMADA1M,'
      '  CHAMADA1N = :CHAMADA1N,'
      '  CHAMADA1O = :CHAMADA1O,'
      '  CHAMADA1P = :CHAMADA1P,'
      '  CHAMADA1Q = :CHAMADA1Q,'
      '  CHAMADA2 = :CHAMADA2,'
      '  CHAMADA2A = :CHAMADA2A,'
      '  CHAMADA2B = :CHAMADA2B,'
      '  CHAMADA2C = :CHAMADA2C,'
      '  CHAMADA2D = :CHAMADA2D,'
      '  CHAMADA2E = :CHAMADA2E,'
      '  CHAMADA2F = :CHAMADA2F,'
      '  CHAMADA2F1 = :CHAMADA2F1,'
      '  CHAMADA2F2 = :CHAMADA2F2,'
      '  CHAMADA2F3 = :CHAMADA2F3,'
      '  CHAMADA2F4 = :CHAMADA2F4,'
      '  CHAMADA3 = :CHAMADA3,'
      '  CHAMADA3A = :CHAMADA3A,'
      '  CHAMADA3B = :CHAMADA3B,'
      '  CHAMADA3C = :CHAMADA3C,'
      '  CHAMADA3D = :CHAMADA3D,'
      '  CHAMADA3E = :CHAMADA3E,'
      '  CHAMADA3F = :CHAMADA3F,'
      '  CHAMADA3F1 = :CHAMADA3F1,'
      '  CHAMADA3G = :CHAMADA3G,'
      '  CHAMADA3G1 = :CHAMADA3G1,'
      '  CHAMADA3G2 = :CHAMADA3G2,'
      '  CHAMADA3G3 = :CHAMADA3G3,'
      '  CHAMADA3H = :CHAMADA3H,'
      '  CHAMADA3I = :CHAMADA3I,'
      '  CHAMADA3J = :CHAMADA3J,'
      '  CHAMADA4 = :CHAMADA4,'
      '  CHAMADA4A = :CHAMADA4A,'
      '  CHAMADA4B = :CHAMADA4B,'
      '  CHAMADA5 = :CHAMADA5,'
      '  CHAMADA5A = :CHAMADA5A,'
      '  CHAMADA5B = :CHAMADA5B,'
      '  CHAMADA5C = :CHAMADA5C,'
      '  CHAMADA5D = :CHAMADA5D,'
      '  CHAMADA5E = :CHAMADA5E,'
      '  CHAMADA5F = :CHAMADA5F,'
      '  CHAMADA5G = :CHAMADA5G,'
      '  CHAMADA5H = :CHAMADA5H,'
      '  CHAMADA5I = :CHAMADA5I,'
      '  CHAMADA5J = :CHAMADA5J,'
      '  CHAMADA5K = :CHAMADA5K,'
      '  SAIR = :SAIR,'
      '  SALDONF = :SALDONF,'
      '  CHAMADA4C = :CHAMADA4C,'
      '  CHAMADA4D = :CHAMADA4D,'
      '  CHAMADA4E = :CHAMADA4E,'
      '  CHAMADA4F = :CHAMADA4F,'
      '  CHAMADA4G = :CHAMADA4G,'
      '  CHAMADA3K = :CHAMADA3K,'
      '  CHAMADA6K = :CHAMADA6K,'
      '  ExcluirReentrega1 = :ExcluirReentrega1,'
      '  GeraoEDIDucco1 = :GeraoEDIDucco1,'
      '  LivroFiscal1 = :LivroFiscal1,'
      '  LivroArmazem = :LivroArmazem,'
      '  EXPNF = :EXPNF,'
      '  REL_TRANSPORTE = :REL_TRANSPORTE,'
      '  REL_KARDEX = :REL_KARDEX,'
      ' EDI_OCOREN = :EDI_OCOREN,'
      ' TB_OCOREN = :TB_OCOREN,'
      '  REL_MANIFESTO = :REL_MANIFESTO,'
      '  ALTERA_MANIFESTO = :ALTERA_MANIFESTO,'
      ' NF_COLETA = :NF_COLETA,'
      'mnuFrete = :mnuFrete,'
      'PgtoFrete = :PgtoFrete,'
      'DescontosFrete = :DescontosFrete,'
      'ConciliaodeFrete = :ConciliaodeFrete,'
      'PRE_CARGA = :PRE_CARGA,'
      'MANIFESTO_RATEIA = :MANIFESTO_RATEIA,'
      'FATURA_GENERICA = :FATURA_GENERICA,'
      'CTRC_GENERICO = :CTRC_GENERICO,'
      'REL_OTIMIZA_CARGA = :REL_OTIMIZA_CARGA,'
      'RemanejaSN = :RemanejaSN,'
      'TRANSACAODIARIA = :TRANSACAODIARIA,'
      'MANIFESTO_GERAL = :MANIFESTO_GERAL,'
      'LIBERA_POSICAO = :LIBERA_POSICAO,'
      'ALTERA_NF = :ALTERA_NF,'
      'Admin = :Admin,'
      'TRANSF_CODIGO = :TRANSF_CODIGO,'
      'RASTREABILIDADE = :RASTREABILIDADE,'
      'EXPORT_MANIFESTO = :EXPORT_MANIFESTO,'
      'EstoqueInovatti = :EstoqueInovatti,'
      'RELTRANSPORTE2 = :RELTRANSPORTE2,'
      ''
      'ClientesNBFRel = :ClientesNBFRel,'
      'ClientesFinaisRel = :ClientesFinaisRel,'
      'RELFRETECARGIL = :RELFRETECARGIL,'
      'ConfirmaCTRC = :ConfirmaCTRC,'
      'NotasEntradaxRemessa = :NotasEntradaxRemessa,'
      'NFS_Conhecimento = :NFS_Conhecimento,'
      'CorrigeCTRComplementar = :CorrigeCTRComplementar,'
      'FechamentodeFrete = :FechamentodeFrete,'
      'tpProdColeta = :tpProdColeta,'
      'AlteraClientes = :AlteraClientes,'
      'eDocs = :eDocs,'
      'ContaCorrente = :ContaCorrente,'
      'Permanencia = :Permanencia,'
      'liberaod = :liberaod,'
      'EstoqueNF = :EstoqueNF,'
      'NFSEConfig = :NFSEConfig,'
      'EDICafe = :EDICafe,'
      'EDIConembDIAGIO = :EDIConembDIAGIO,'
      'ContratoFrete = :ContratoFrete,'
      'RelRomaneioEntradaEstoque = :RelRomaneioEntradaEstoque'
      'where'
      '  CH = :OLD_CH')
    InsertSQL.Strings = (
      'insert into usuarios'
      '  (NOME, SENHA, CHAMADA1, CHAMADA1A, CHAMADA1B, CHAMADA1C, '
      'CHAMADA1D, CHAMADA1E, '
      '   CHAMADA1F, CHAMADA1G, CHAMADA1H, CHAMADA1I, CHAMADA1J, '
      'CHAMADA1K, CHAMADA1L, '
      '   CHAMADA1M, CHAMADA1N, CHAMADA1O, CHAMADA1P, CHAMADA1Q, '
      'CHAMADA2, CHAMADA2A, '
      '   CHAMADA2B, CHAMADA2C, CHAMADA2D, CHAMADA2E, CHAMADA2F, '
      'CHAMADA2F1, CHAMADA2F2, '
      '   CHAMADA2F3, CHAMADA2F4, CHAMADA3, CHAMADA3A, CHAMADA3B, '
      'CHAMADA3C, CHAMADA3D, '
      '   CHAMADA3E, CHAMADA3F, CHAMADA3F1, CHAMADA3G, CHAMADA3G1, '
      'CHAMADA3G2, '
      '   CHAMADA3G3, CHAMADA3H, CHAMADA3I, CHAMADA3J, CHAMADA4, '
      'CHAMADA4A, CHAMADA4B, '
      '   CHAMADA5, CHAMADA5A, CHAMADA5B, CHAMADA5C, CHAMADA5D, '
      'CHAMADA5E, CHAMADA5F, '
      '   CHAMADA5G, CHAMADA5H, CHAMADA5I, CHAMADA5J, CHAMADA5K, SAIR, '
      'SALDONF, '
      '   CHAMADA4C, CHAMADA4D, CHAMADA4E, CHAMADA4F, CHAMADA4G, '
      'CHAMADA3K, CHAMADA6K, '
      
        '   ExcluirReentrega1, GeraoEDIDucco1, LivroFiscal1, LivroArmazem' +
        ', expnf, '
      'REL_TRANSPORTE, REL_KARDEX, EDI_OCOREN, TB_OCOREN, '
      'REL_MANIFESTO,'
      'ALTERA_MANIFESTO,'
      'NF_COLETA,'
      'mnuFrete,'
      'PgtoFrete,'
      'DescontosFrete,'
      'ConciliaodeFrete,'
      'PRE_CARGA,'
      'MANIFESTO_RATEIA,'
      'FATURA_GENERICA,'
      'CTRC_GENERICO,'
      'REL_OTIMIZA_CARGA,'
      'RemanejaSN,'
      'TRANSACAODIARIA,'
      'MANIFESTO_GERAL,'
      'LIBERA_POSICAO,'
      'ALTERA_NF,'
      'Admin,'
      'RASTREABILIDADE,'
      'EXPORT_MANIFESTO,'
      'RELTRANSPORTE2,'
      'ConfirmaCTRC,'
      'NotasEntradaxRemessa,'
      'NFS_Conhecimento,'
      'CorrigeCTRComplementar,'
      'FechamentodeFrete,'
      'AlteraClientes,'
      'ContratoFrete'
      ')'
      'values'
      
        '  (:NOME, :SENHA, :CHAMADA1, :CHAMADA1A, :CHAMADA1B, :CHAMADA1C,' +
        ' '
      ':CHAMADA1D, '
      '   :CHAMADA1E, :CHAMADA1F, :CHAMADA1G, :CHAMADA1H, :CHAMADA1I, '
      ':CHAMADA1J, '
      '   :CHAMADA1K, :CHAMADA1L, :CHAMADA1M, :CHAMADA1N, :CHAMADA1O, '
      ':CHAMADA1P, '
      '   :CHAMADA1Q, :CHAMADA2, :CHAMADA2A, :CHAMADA2B, :CHAMADA2C, '
      ':CHAMADA2D, '
      
        '   :CHAMADA2E, :CHAMADA2F, :CHAMADA2F1, :CHAMADA2F2, :CHAMADA2F3' +
        ', '
      ':CHAMADA2F4, '
      '   :CHAMADA3, :CHAMADA3A, :CHAMADA3B, :CHAMADA3C, :CHAMADA3D, '
      ':CHAMADA3E, '
      
        '   :CHAMADA3F, :CHAMADA3F1, :CHAMADA3G, :CHAMADA3G1, :CHAMADA3G2' +
        ', '
      ':CHAMADA3G3, '
      '   :CHAMADA3H, :CHAMADA3I, :CHAMADA3J, :CHAMADA4, :CHAMADA4A, '
      ':CHAMADA4B, '
      '   :CHAMADA5, :CHAMADA5A, :CHAMADA5B, :CHAMADA5C, :CHAMADA5D, '
      ':CHAMADA5E, '
      '   :CHAMADA5F, :CHAMADA5G, :CHAMADA5H, :CHAMADA5I, :CHAMADA5J, '
      ':CHAMADA5K, '
      
        '   :SAIR, :SALDONF, :CHAMADA4C, :CHAMADA4D, :CHAMADA4E, :CHAMADA' +
        '4F, '
      ':CHAMADA4G, '
      '   :CHAMADA3K, :CHAMADA6K, :ExcluirReentrega1, :GeraoEDIDucco1, '
      
        ':LivroFiscal1, :LivroArmazem, expnf, :REL_TRANSPORTE, :REL_KARDE' +
        'X, '
      ':EDI_OCOREN, :TB_OCOREN, '
      ':REL_MANIFESTO,'
      ':ALTERA_MANIFESTO,'
      ':NF_COLETA,'
      ':mnuFrete,'
      ':PgtoFrete,'
      ':DescontosFrete,'
      ':ConciliaodeFrete,'
      ':PRE_CARGA,'
      ':MANIFESTO_RATEIA,'
      ':FATURA_GENERICA,'
      ':CTRC_GENERICO,'
      ':REL_OTIMIZA_CARGA,'
      ':RemanejaSN,'
      ':TRANSACAODIARIA,'
      ':MANIFESTO_GERAL,'
      ':LIBERA_POSICAO,'
      ':ALTERA_NF,'
      ':Admin,'
      ':RASTREABILIDADE,'
      ':EXPORT_MANIFESTO,'
      ':RELTRANSPORTE2,'
      ':ConfirmaCTRC,'
      ':NotasEntradaxRemessa,'
      ':NFS_Conhecimento,'
      ':CorrigeCTRComplementar,'
      ':FechamentodeFrete,'
      ':AlteraClientes,'
      ':ContratoFrete'
      ')')
    DeleteSQL.Strings = (
      'delete from usuarios'
      'where'
      '  CH = :OLD_CH')
    Left = 256
    Top = 337
  end
  object Q_ADDLOGIN: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'exec sp_ADDLOGIN')
    ValidateWithMask = True
    Left = 529
    Top = 129
  end
end
