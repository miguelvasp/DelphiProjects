object FPrepInvCa: TFPrepInvCa
  Left = 340
  Top = 103
  Width = 759
  Height = 429
  Caption = 'Inventário'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label10: TLabel
    Left = 429
    Top = 162
    Width = 24
    Height = 17
    Caption = 'Tipo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -12
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
  end
  object Label12: TLabel
    Left = 6
    Top = 270
    Width = 31
    Height = 18
    Caption = 'Obs:.'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
  end
  object SpeedButton4: TSpeedButton
    Left = 6
    Top = 243
    Width = 32
    Height = 45
    Hint = 'Salvar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Comic Sans MS'
    Font.Style = []
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
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
  end
  object Panel1: TPanel
    Left = 1
    Top = 4
    Width = 717
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
      Left = 556
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
      Left = 522
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
      Left = 624
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
      Left = 662
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
      Width = 90
      Height = 26
      Caption = 'Inventário'
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
      Left = 590
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
    Left = 1
    Top = 52
    Width = 718
    Height = 317
    BevelInner = bvLowered
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -12
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label2: TLabel
      Left = 13
      Top = 78
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
    object Label9: TLabel
      Left = 26
      Top = 47
      Width = 48
      Height = 17
      Caption = 'Material'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 493
      Top = 47
      Width = 25
      Height = 17
      Caption = 'Lote'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 20
      Top = 14
      Width = 54
      Height = 17
      Caption = 'Nº Ivent.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 171
      Top = 13
      Width = 62
      Height = 17
      Caption = 'Dt. Invent.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 5
      Top = 174
      Width = 69
      Height = 17
      Caption = 'Qtde Almox.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 229
      Top = 174
      Width = 55
      Height = 17
      Caption = 'Qtde Inv.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 494
      Top = 78
      Width = 24
      Height = 17
      Caption = 'Tipo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 480
      Top = 108
      Width = 38
      Height = 17
      Caption = 'Status'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label46: TLabel
      Left = 6
      Top = 222
      Width = 31
      Height = 18
      Caption = 'Obs:.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label22: TLabel
      Left = 36
      Top = 109
      Width = 38
      Height = 18
      Caption = 'Marca'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label23: TLabel
      Left = 42
      Top = 140
      Width = 32
      Height = 18
      Caption = 'Local'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label13: TLabel
      Left = 485
      Top = 140
      Width = 34
      Height = 18
      Caption = 'Valid.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object cboForn: TwwDBLookupCombo
      Left = 77
      Top = 74
      Width = 395
      Height = 25
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'FOR_CODI'#9'15'#9'FOR_CODI'#9'F')
      DataField = 'For_Codi'
      DataSource = DS_INV
      LookupTable = Q_FORN
      LookupField = 'FOR_CODI'
      ParentFont = False
      TabOrder = 1
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnEnter = cboFornEnter
      OnExit = cboFornExit
    end
    object txtOC: TwwDBEdit
      Left = 77
      Top = 10
      Width = 87
      Height = 25
      DataField = 'Num_Inv'
      DataSource = DS_INV
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnEnter = txtOCEnter
      OnExit = txtOCExit
    end
    object txtInv: TwwDBEdit
      Left = 288
      Top = 170
      Width = 121
      Height = 25
      DataField = 'Qtde_Inv'
      DataSource = DS_INV
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
      OnEnter = txtInvEnter
      OnExit = txtInvExit
    end
    object txtDtCad: TwwDBEdit
      Left = 237
      Top = 10
      Width = 64
      Height = 25
      DataField = 'Data'
      DataSource = DS_INV
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnEnter = txtDtCadEnter
      OnExit = txtDtCadExit
    end
    object cboMat: TwwDBLookupCombo
      Left = 77
      Top = 43
      Width = 394
      Height = 25
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'MAT_DESC'#9'60'#9'MAT_DESC'#9'F')
      DataField = 'Mat_ID'
      DataSource = DS_INV
      LookupTable = Q_MATERIAL
      LookupField = 'MAT_ID'
      ParentFont = False
      TabOrder = 0
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = cboMatChange
      OnEnter = cboMatEnter
      OnExit = cboMatExit
    end
    object txtVal: TwwDBEdit
      Left = 77
      Top = 170
      Width = 128
      Height = 25
      DataField = 'Qtde_Almox'
      DataSource = DS_INV
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnEnter = txtValEnter
      OnExit = txtValExit
    end
    object cboStat: TwwDBComboBox
      Left = 522
      Top = 74
      Width = 189
      Height = 25
      ShowButton = True
      Style = csDropDown
      MapList = True
      AllowClearKey = False
      AutoDropDown = True
      ButtonStyle = cbsEllipsis
      DataField = 'Tipo'
      DataSource = DS_INV
      DropDownCount = 8
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ItemHeight = 0
      Items.Strings = (
        'Automático '#9'A'
        'Manual'#9'M')
      ParentFont = False
      Sorted = False
      TabOrder = 7
      UnboundDataType = wwDefault
    end
    object txtLote: TwwDBEdit
      Left = 522
      Top = 43
      Width = 189
      Height = 25
      CharCase = ecUpperCase
      DataField = 'N_Lote'
      DataSource = DS_INV
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
      OnEnter = txtInvEnter
      OnExit = txtInvExit
    end
    object wwDBComboBox1: TwwDBComboBox
      Left = 522
      Top = 104
      Width = 190
      Height = 25
      ShowButton = True
      Style = csDropDown
      MapList = True
      AllowClearKey = False
      AutoDropDown = True
      ButtonStyle = cbsEllipsis
      DataField = 'Status'
      DataSource = DS_INV
      DropDownCount = 8
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ItemHeight = 0
      Items.Strings = (
        'Aberto'#9'A'
        'Gerado'#9'G')
      ParentFont = False
      Sorted = False
      TabOrder = 9
      UnboundDataType = wwDefault
    end
    object DBMemo1: TDBMemo
      Left = 43
      Top = 226
      Width = 669
      Height = 83
      DataField = 'Obs'
      DataSource = DS_INV
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 12
    end
    object wwDBLookupCombo4: TwwDBLookupCombo
      Left = 77
      Top = 105
      Width = 395
      Height = 25
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'MARCA_DESC'#9'20'#9'MARCA_DESC'#9'F')
      DataField = 'Marca_ID'
      DataSource = DS_INV
      LookupTable = Q_MARCA_FILT
      LookupField = 'MARCA_ID'
      ParentFont = False
      TabOrder = 2
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = wwDBLookupCombo4Change
      OnEnter = wwDBLookupCombo4Enter
      OnExit = wwDBLookupCombo4Exit
    end
    object wwDBLookupCombo3: TwwDBLookupCombo
      Left = 77
      Top = 136
      Width = 395
      Height = 25
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'Descricao'#9'50'#9'Descricao'#9'F')
      DataField = 'Local_ID'
      DataSource = DS_INV
      LookupTable = Q_LOCAL_FILT
      LookupField = 'Local_ID'
      ParentFont = False
      TabOrder = 3
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnEnter = wwDBLookupCombo3Enter
      OnExit = wwDBLookupCombo3Exit
    end
    object wwDBEdit1: TwwDBEdit
      Left = 522
      Top = 136
      Width = 121
      Height = 25
      DataField = 'Valid'
      DataSource = DS_INV
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
      OnEnter = txtInvEnter
      OnExit = txtInvExit
    end
  end
  object Q_FORN: TwwQuery
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'SELECT '#9'FOR_CODI,'
      '              '#9'FOR_RAZA'
      'FROM '#9'CPAFORN'
      'ORDER BY '#9'FOR_CODI'
      '')
    ValidateWithMask = True
    Left = 312
    Top = 7
    object Q_FORNFOR_CODI: TStringField
      DisplayWidth = 15
      FieldName = 'FOR_CODI'
      Origin = 'CURA.CPAFORN.FOR_CODI'
      FixedChar = True
      Size = 15
    end
    object Q_FORNFOR_RAZA: TStringField
      DisplayWidth = 50
      FieldName = 'FOR_RAZA'
      Origin = 'CURA.CPAFORN.FOR_RAZA'
      Visible = False
      FixedChar = True
      Size = 50
    end
  end
  object Q_MATERIAL: TwwQuery
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'SELECT MAT_ID,'
      '              MAT_DESC'
      'FROM MATERIAIS'
      'ORDER BY  MAT_DESC'
      '')
    ValidateWithMask = True
    Left = 144
    Top = 7
    object Q_MATERIALMAT_DESC: TStringField
      DisplayWidth = 60
      FieldName = 'MAT_DESC'
      Origin = 'CURA.MATERIAIS.MAT_DESC'
      FixedChar = True
      Size = 60
    end
    object Q_MATERIALMAT_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'MAT_ID'
      Origin = 'CURA.MATERIAIS.MAT_ID'
      Visible = False
    end
  end
  object DS_INV: TwwDataSource
    DataSet = Q_INV
    OnStateChange = DS_INVStateChange
    Left = 64
    Top = 44
  end
  object Q_INV: TwwQuery
    CachedUpdates = True
    BeforePost = Q_INVBeforePost
    AfterPost = Q_INVAfterPost
    BeforeDelete = Q_INVBeforeDelete
    AfterDelete = Q_INVAfterDelete
    AfterScroll = Q_INVAfterScroll
    OnCalcFields = Q_INVCalcFields
    OnNewRecord = Q_INVNewRecord
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    RequestLive = True
    SQL.Strings = (
      'SELECT  I.*,'
      '        MAT.MAT_DESC,'
      #9'FORN.FOR_CODI'
      'FROM    INV I,'
      #9'MATERIAIS MAT,'
      #9'CPAFORN FORN'
      'WHERE   I.MAT_ID = MAT.MAT_ID'
      'AND     I.FOR_CODI = FORN.FOR_CODI')
    UpdateObject = UPD_INV
    ValidateWithMask = True
    Left = 488
    Top = 28
    object Q_INVInv_ID: TAutoIncField
      FieldName = 'Inv_ID'
    end
    object Q_INVNum_Inv: TIntegerField
      FieldName = 'Num_Inv'
    end
    object Q_INVData: TDateTimeField
      FieldName = 'Data'
    end
    object Q_INVN_Lote: TStringField
      FieldName = 'N_Lote'
      FixedChar = True
    end
    object Q_INVQtde_Almox: TFloatField
      FieldName = 'Qtde_Almox'
      DisplayFormat = '###,###,##0.00'
    end
    object Q_INVQtde_Inv: TFloatField
      FieldName = 'Qtde_Inv'
      DisplayFormat = '###,###,##0.00'
    end
    object Q_INVTipo: TStringField
      FieldName = 'Tipo'
      FixedChar = True
      Size = 1
    end
    object Q_INVUsuario: TStringField
      FieldName = 'Usuario'
      FixedChar = True
    end
    object Q_INVDt_Alt: TDateTimeField
      FieldName = 'Dt_Alt'
    end
    object Q_INVStatus: TStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 1
    end
    object Q_INVObs: TMemoField
      FieldName = 'Obs'
      BlobType = ftMemo
    end
    object Q_INVMat_ID: TIntegerField
      FieldName = 'Mat_ID'
      Origin = 'CURA.INV.Mat_ID'
      OnChange = Q_INVMat_IDChange
    end
    object Q_INVMarca_ID: TIntegerField
      FieldName = 'Marca_ID'
      Origin = 'CURA.INV.Marca_ID'
    end
    object Q_INVFor_Codi: TStringField
      FieldName = 'For_Codi'
      Origin = 'CURA.INV.For_Codi'
      FixedChar = True
      Size = 15
    end
    object Q_INVValid: TDateTimeField
      FieldName = 'Valid'
      Origin = 'CURA.INV.Valid'
      DisplayFormat = 'dd/mm/yy'
      EditMask = '!99/99/00;1;_'
    end
    object Q_INVLocal_ID: TIntegerField
      FieldName = 'Local_ID'
      Origin = 'CURA.INV.Local_ID'
    end
    object Q_INVCusto_Medio_Inv: TFloatField
      FieldName = 'Custo_Medio_Inv'
      Origin = 'CURA.INV.Custo_Medio_Inv'
    end
    object Q_INVLoteSN: TStringField
      FieldKind = fkCalculated
      FieldName = 'LoteSN'
      Size = 5
      Calculated = True
    end
    object Q_INVReposicao: TFloatField
      FieldName = 'Reposicao'
      Origin = 'CURA.Inv.Reposicao'
    end
  end
  object UPD_INV: TUpdateSQL
    ModifySQL.Strings = (
      'update INV'
      'set'
      '  Num_Inv = :Num_Inv,'
      '  Data = :Data,'
      '  Mat_ID = :Mat_ID,'
      '  N_Lote = :N_Lote,'
      '  Marca_ID = :Marca_ID,'
      '  For_Codi = :For_Codi,'
      '  Valid = :Valid,'
      '  Local_ID = :Local_ID,'
      '  Qtde_Almox = :Qtde_Almox,'
      '  Qtde_Inv = :Qtde_Inv,'
      '  Tipo = :Tipo,'
      '  Usuario = :Usuario,'
      '  Dt_Alt = :Dt_Alt,'
      '  Status = :Status,'
      '  Obs = :Obs,'
      '  Custo_Medio_Inv = :Custo_Medio_Inv,'
      '  Reposicao = :Reposicao'
      'where'
      '  Inv_ID = :OLD_Inv_ID')
    InsertSQL.Strings = (
      'insert into INV'
      
        '  (Num_Inv, Data, Mat_ID, N_Lote, Marca_ID, For_Codi, Valid, Loc' +
        'al_ID, '
      
        '   Qtde_Almox, Qtde_Inv, Tipo, Usuario, Dt_Alt, Status, Obs, Cus' +
        'to_Medio_Inv, '
      'Reposicao)'
      'values'
      
        '  (:Num_Inv, :Data, :Mat_ID, :N_Lote, :Marca_ID, :For_Codi, :Val' +
        'id, :Local_ID, '
      
        '   :Qtde_Almox, :Qtde_Inv, :Tipo, :Usuario, :Dt_Alt, :Status, :O' +
        'bs, :Custo_Medio_Inv, '
      ':Reposicao)')
    DeleteSQL.Strings = (
      'delete from INV'
      'where'
      '  Inv_ID = :OLD_Inv_ID')
    Left = 232
    Top = 20
  end
  object Q_AUX: TwwQuery
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    ValidateWithMask = True
    Left = 392
    Top = 11
  end
  object Q_LOCAL_FILT: TwwQuery
    DatabaseName = 'Cura'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'SELECT * FROM LOCAL ORDER BY DESCRICAO')
    ValidateWithMask = True
    Left = 386
    Top = 296
    object StringField7: TStringField
      DisplayWidth = 50
      FieldName = 'Descricao'
      Origin = 'CURA.LOCAL.Descricao'
      FixedChar = True
      Size = 50
    end
    object AutoIncField4: TAutoIncField
      DisplayWidth = 10
      FieldName = 'Local_ID'
      Origin = 'CURA.LOCAL.Local_ID'
      Visible = False
    end
    object StringField8: TStringField
      DisplayWidth = 1
      FieldName = 'DisponivelSN'
      Origin = 'CURA.LOCAL.DisponivelSN'
      Visible = False
      FixedChar = True
      Size = 1
    end
  end
  object Q_MARCA_FILT: TwwQuery
    DatabaseName = 'Cura'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'SELECT        *'
      'FROM           MARCAS'
      ''
      'ORDER BY MARCA_DESC')
    ValidateWithMask = True
    Left = 234
    Top = 304
    object StringField4: TStringField
      DisplayWidth = 20
      FieldName = 'MARCA_DESC'
      Origin = 'CURA.MARCAS.MARCA_DESC'
      FixedChar = True
    end
    object AutoIncField3: TAutoIncField
      DisplayWidth = 10
      FieldName = 'MARCA_ID'
      Origin = 'CURA.MARCAS.MARCA_ID'
      Visible = False
    end
  end
  object qrAux2: TwwQuery
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    ValidateWithMask = True
    Left = 624
    Top = 227
  end
end
