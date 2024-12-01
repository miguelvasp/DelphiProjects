object FMatFornecedores: TFMatFornecedores
  Left = -1
  Top = -3
  Width = 803
  Height = 578
  Caption = 'Sistema de Almoxarifado'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  WindowState = wsMaximized
  OnKeyPress = FormKeyPress
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 793
    Height = 37
    BevelInner = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 9
      Top = 8
      Width = 218
      Height = 22
      Caption = 'Materiais X Fornecedores'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object SBT_SAIR: TSpeedButton
      Left = 754
      Top = 6
      Width = 25
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
    object SBT_REL: TSpeedButton
      Left = 730
      Top = 6
      Width = 25
      Height = 25
      Hint = 'Relatório'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        5555555FFFFFFFFFF5555550000000000555557777777777F5555550FFFFFFFF
        0555557F5FFFF557F5555550F0000FFF0555557F77775557F5555550FFFFFFFF
        0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
        0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
        0555557F5FFF5557F5555550F000FFFF0555557F77755FF7F5555550FFFFF000
        0555557F5FF5777755555550F00FF0F05555557F77557F7555555550FFFFF005
        5555557FFFFF7755555555500000005555555577777775555555555555555555
        5555555555555555555555555555555555555555555555555555}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
    end
    object SBT_PES: TSpeedButton
      Left = 705
      Top = 6
      Width = 25
      Height = 25
      Hint = 'Pesquisa Consulta'
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
    end
    object Fonte: TDBNavigator
      Left = 497
      Top = 6
      Width = 208
      Height = 25
      DataSource = DS_MATFORN
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbPost, nbCancel]
      Hints.Strings = (
        'Primeiro'
        'Anterior'
        'Próximo'
        'Último'
        'Incluir'
        'Excluir'
        'Alterar'
        'Confirmar'
        'Cancelar'
        'Refresh'
        '')
      ParentShowHint = False
      ConfirmDelete = False
      ShowHint = True
      TabOrder = 0
      OnClick = FonteClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 37
    Width = 793
    Height = 300
    BevelInner = bvLowered
    TabOrder = 1
    object Label3: TLabel
      Left = 155
      Top = 67
      Width = 73
      Height = 16
      Caption = 'Fornecedor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 234
      Top = 68
      Width = 277
      Height = 16
      DataField = 'FOR_CODI'
      DataSource = DS_MATFORN
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBLC_MATFORN_FOR_CODI: TwwDBLookupCombo
      Left = 231
      Top = 62
      Width = 319
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'FOR_CODI'#9'15'#9'FOR_CODI'#9'F')
      DataField = 'FOR_CODI'
      DataSource = DS_MATFORN
      LookupTable = Q_FORN
      LookupField = 'FOR_CODI'
      ParentFont = False
      TabOrder = 0
      Visible = False
      AutoDropDown = True
      ShowButton = True
      AllowClearKey = False
    end
    object wwDBGrid1: TwwDBGrid
      Left = 152
      Top = 118
      Width = 399
      Height = 174
      Selected.Strings = (
        'MAT_DESC'#9'60'#9'MATERIAL')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DS_MAT
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = [fsBold]
      TitleLines = 1
      TitleButtons = False
      IndicatorColor = icBlack
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 526
    Width = 793
    Height = 26
    BevelInner = bvLowered
    TabOrder = 2
    object LBL_STATUS: TLabel
      Left = 289
      Top = 6
      Width = 15
      Height = 13
      Alignment = taCenter
      Caption = '     '
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 344
    Width = 793
    Height = 183
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
    TabOrder = 3
    object Label5: TLabel
      Left = 27
      Top = 77
      Width = 123
      Height = 14
      Caption = 'Data da Última Compra'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 27
      Top = 30
      Width = 64
      Height = 14
      Caption = 'Embalagem'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 316
      Top = 27
      Width = 108
      Height = 14
      Caption = 'Unidade de Compra'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 531
      Top = 25
      Width = 118
      Height = 14
      Caption = 'Unidade de Consumo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 27
      Top = 134
      Width = 123
      Height = 14
      Caption = 'Data da Última Cotação'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 230
      Top = 76
      Width = 77
      Height = 14
      Caption = 'Preço Unitário'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 231
      Top = 135
      Width = 77
      Height = 14
      Caption = 'Preço Unitário'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBE_MATFORN_CONVERSAO: TwwDBEdit
      Left = 532
      Top = 37
      Width = 96
      Height = 22
      DataField = 'MAT_DESC'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnEnter = DBE_MATFORN_CONVERSAOEnter
      OnExit = DBE_MATFORN_CONVERSAOExit
    end
    object DBE_MATFORN_DT_ULTCOMP: TwwDBEdit
      Left = 27
      Top = 89
      Width = 85
      Height = 22
      DataField = 'MAT_DESC'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnEnter = DBE_MATFORN_DT_ULTCOMPEnter
      OnExit = DBE_MATFORN_DT_ULTCOMPExit
    end
    object DBE_MATFORN_DT_ULTCOTA: TwwDBEdit
      Left = 27
      Top = 147
      Width = 85
      Height = 22
      DataField = 'MAT_DESC'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnEnter = DBE_MATFORN_DT_ULTCOTAEnter
      OnExit = DBE_MATFORN_DT_ULTCOTAExit
    end
    object DBE_MATFORN_PRE_ULTCOMP: TwwDBEdit
      Left = 226
      Top = 89
      Width = 85
      Height = 22
      DataField = 'MAT_DESC'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnEnter = DBE_MATFORN_PRE_ULTCOMPEnter
      OnExit = DBE_MATFORN_PRE_ULTCOMPExit
    end
    object DBE_MATFORN_PRE_ULTCOTA: TwwDBEdit
      Left = 227
      Top = 148
      Width = 85
      Height = 22
      DataField = 'MAT_DESC'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnEnter = DBE_MATFORN_PRE_ULTCOTAEnter
      OnExit = DBE_MATFORN_PRE_ULTCOTAExit
    end
    object wwDBEdit1: TwwDBEdit
      Left = 315
      Top = 40
      Width = 96
      Height = 22
      DataField = 'MAT_DESC'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnEnter = wwDBEdit1Enter
      OnExit = wwDBEdit1Exit
    end
    object wwDBEdit2: TwwDBEdit
      Left = 27
      Top = 43
      Width = 190
      Height = 22
      DataField = 'MAT_DESC'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnEnter = DBE_MATFORN_EMBALAGEMEnter
      OnExit = DBE_MATFORN_EMBALAGEMExit
    end
  end
  object Q_MATFORN: TwwQuery
    Active = True
    AutoCalcFields = False
    CachedUpdates = True
    AfterCancel = Q_MATFORNAfterCancel
    AfterDelete = Q_MATFORNAfterDelete
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM MATERIAL_FORNECEDOR'
      'ORDER BY FOR_CODI')
    UpdateObject = UPD_MATFORN
    ValidateWithMask = True
    Left = 352
    Top = 45
    object Q_MATFORNFOR_CODI: TStringField
      DisplayWidth = 15
      FieldName = 'FOR_CODI'
      Origin = 'CURA.MATERIAL_FORNECEDOR.FOR_CODI'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object Q_MATFORNMFOR_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'MFOR_ID'
      Origin = 'CURA.MATERIAL_FORNECEDOR.MFOR_ID'
      Visible = False
    end
    object Q_MATFORNMAT_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'MAT_ID'
      Origin = 'CURA.MATERIAL_FORNECEDOR.MAT_ID'
      Visible = False
    end
    object Q_MATFORNMFOR_EMBALAGEM: TStringField
      DisplayWidth = 15
      FieldName = 'MFOR_EMBALAGEM'
      Origin = 'CURA.MATERIAL_FORNECEDOR.MFOR_EMBALAGEM'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object Q_MATFORNUNI_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'UNI_ID'
      Origin = 'CURA.MATERIAL_FORNECEDOR.UNI_ID'
      Visible = False
    end
    object Q_MATFORNMFOR_CONVERSAO: TFloatField
      DisplayWidth = 10
      FieldName = 'MFOR_CONVERSAO'
      Origin = 'CURA.MATERIAL_FORNECEDOR.MFOR_CONVERSAO'
      Visible = False
    end
    object Q_MATFORNMFOR_DT_ULTCOMP: TDateTimeField
      DisplayWidth = 18
      FieldName = 'MFOR_DT_ULTCOMP'
      Origin = 'CURA.MATERIAL_FORNECEDOR.MFOR_DT_ULTCOMP'
      Visible = False
    end
    object Q_MATFORNMFOR_PRE_ULTCOMP: TFloatField
      DisplayWidth = 10
      FieldName = 'MFOR_PRE_ULTCOMP'
      Origin = 'CURA.MATERIAL_FORNECEDOR.MFOR_PRE_ULTCOMP'
      Visible = False
    end
    object Q_MATFORNMFOR_DT_ULTCOTA: TDateTimeField
      DisplayWidth = 18
      FieldName = 'MFOR_DT_ULTCOTA'
      Origin = 'CURA.MATERIAL_FORNECEDOR.MFOR_DT_ULTCOTA'
      Visible = False
    end
    object Q_MATFORNMFOR_PRE_ULTCOTA: TFloatField
      DisplayWidth = 10
      FieldName = 'MFOR_PRE_ULTCOTA'
      Origin = 'CURA.MATERIAL_FORNECEDOR.MFOR_PRE_ULTCOTA'
      Visible = False
    end
  end
  object DS_MATFORN: TwwDataSource
    DataSet = Q_MATFORN
    Left = 432
    Top = 45
  end
  object Q_FORN: TwwQuery
    CachedUpdates = True
    AfterPost = Q_FORNAfterPost
    AfterCancel = Q_FORNAfterCancel
    AfterDelete = Q_FORNAfterDelete
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    RequestLive = True
    SQL.Strings = (
      'SELECT '
      'FOR_CODI,FOR_RAZA,FOR_IATI,FOR_PESS,FOR_CGC,FOR_INSC,'
      'FOR_ENDE,FOR_MUNI,FOR_ESTA,FOR_CEP,FOR_TEL1,FOR_TEL2,'
      'FOR_FAX,FOR_EMAI,FOR_NCON,FOR_CONT,FOR_CGER,FOR_MARK,'
      'FOR_PENT,FOR_SEGU, FOR_UCOM,FOR_VUCO,FOR_VUCD,FOR_MCOM,'
      'FOR_VMCO,FOR_VMCD'
      'FROM CPAFORN ORDER BY FOR_CODI')
    PictureMasks.Strings = (
      'FOR_CODI'#9'![!][!][!][!][!][!][!][!][!][!][!][!][!][!]'#9'T'#9'F'
      
        'FOR_INSC'#9'![!][!][!][!][!][!][!][!][!][!][!][!][!][!][!][!][!][!]' +
        '[!]'#9'T'#9'F'
      
        'FOR_RAZA'#9'![!][!][!][!][!][!][!][!][!][!][!][!][!][!][!][!][!][!]' +
        '[!][!][!][!][!][!][!][!][!][!][!][!][!][!][!][!][!][!][!][!][!]'#9 +
        'T'#9'F'
      
        'FOR_MUNI'#9'![!][!][!][!][!][!][!][!][!][!][!][!][!][!][!][!][!][!]' +
        '[!][!][!][!][!][!][!][!][!][!][!]'#9'T'#9'F'
      
        'FOR_ENDE'#9'![!][!][!][!][!][!][!][!][!][!][!][!][!][!][!][!][!][!]' +
        '[!][!][!][!][!][!][!][!][!][!][!][!][!][!][!][!][!][!][!][!][!]'#9 +
        'T'#9'F'
      
        'FOR_EMAI'#9'@[@][@][@][@][@][@][@][@][@][@][@][@][@][@][@][@][@][@]' +
        '[@][@][@][@][@][@][@][@][@][@][@][@][@][@][@][@][@][@][@][@][@][' +
        '@][@][@][@][@][@][@][@][@][@][@][@][@][@][@][@][@][@][@][@]'#9'T'#9'F'
      
        'FOR_NCON'#9'![!][!][!][!][!][!][!][!][!][!][!][!][!][!][!][!][!][!]' +
        '[!][!][!][!][!][!][!][!][!][!][!]'#9'T'#9'F')
    ValidateWithMask = True
    Left = 22
    Top = 44
    object Q_FORNFOR_CODI: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 15
      FieldName = 'FOR_CODI'
      Origin = 'CPAFORN.FOR_CODI'
      Size = 15
    end
    object Q_FORNFOR_RAZA: TStringField
      DisplayLabel = 'Razão Social'
      DisplayWidth = 40
      FieldName = 'FOR_RAZA'
      Origin = 'CPAFORN.FOR_RAZA'
      Visible = False
      Size = 40
    end
    object Q_FORNFOR_CEP: TStringField
      DisplayWidth = 8
      FieldName = 'FOR_CEP'
      Visible = False
      EditMask = '99999-999;0;_'
      Size = 8
    end
    object Q_FORNFOR_TEL1: TStringField
      DisplayWidth = 11
      FieldName = 'FOR_TEL1'
      Visible = False
      EditMask = '!\(999\)9999-9999;0; '
      Size = 11
    end
    object Q_FORNFOR_TEL2: TStringField
      DisplayWidth = 11
      FieldName = 'FOR_TEL2'
      Visible = False
      EditMask = '!\(999\)9999-9999;0; '
      Size = 11
    end
    object Q_FORNFOR_FAX: TStringField
      DisplayWidth = 11
      FieldName = 'FOR_FAX'
      Visible = False
      EditMask = '!\(999\)9999-9999;0; '
      Size = 11
    end
    object Q_FORNFOR_CGC: TStringField
      DisplayWidth = 15
      FieldName = 'FOR_CGC'
      Origin = 'CPAFORN.FOR_CGC'
      Visible = False
      EditMask = '!999.999.999\/9999\-99;0; '
      Size = 15
    end
    object Q_FORNFOR_IATI: TDateTimeField
      DisplayWidth = 10
      FieldName = 'FOR_IATI'
      Origin = 'CPAFORN.FOR_IATI'
      Visible = False
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '99/99/9999'
    end
    object Q_FORNFOR_PESS: TStringField
      DisplayWidth = 1
      FieldName = 'FOR_PESS'
      Origin = 'CPAFORN.FOR_PESS'
      Visible = False
      Size = 1
    end
    object Q_FORNFOR_INSC: TStringField
      DisplayWidth = 20
      FieldName = 'FOR_INSC'
      Origin = 'CPAFORN.FOR_CGC'
      Visible = False
    end
    object Q_FORNFOR_ENDE: TStringField
      DisplayWidth = 40
      FieldName = 'FOR_ENDE'
      Origin = 'CPAFORN.FOR_INSC'
      Visible = False
      Size = 40
    end
    object Q_FORNFOR_MUNI: TStringField
      DisplayWidth = 30
      FieldName = 'FOR_MUNI'
      Origin = 'CPAFORN.FOR_ENDE'
      Visible = False
      Size = 30
    end
    object Q_FORNFOR_ESTA: TStringField
      DisplayWidth = 2
      FieldName = 'FOR_ESTA'
      Origin = 'CPAFORN.FOR_MUNI'
      Visible = False
      Size = 2
    end
    object Q_FORNFOR_EMAI: TStringField
      DisplayWidth = 60
      FieldName = 'FOR_EMAI'
      Origin = 'CPAFORN.FOR_ESTA'
      Visible = False
      Size = 60
    end
    object Q_FORNFOR_NCON: TStringField
      DisplayWidth = 30
      FieldName = 'FOR_NCON'
      Origin = 'CPAFORN.FOR_CEP'
      Visible = False
      Size = 30
    end
    object Q_FORNFOR_CONT: TStringField
      DisplayWidth = 6
      FieldName = 'FOR_CONT'
      Origin = 'CPAFORN.FOR_TEL1'
      Visible = False
      Size = 6
    end
    object Q_FORNFOR_CGER: TStringField
      DisplayWidth = 6
      FieldName = 'FOR_CGER'
      Origin = 'CPAFORN.FOR_TEL2'
      Visible = False
      Size = 6
    end
    object Q_FORNFOR_MARK: TFloatField
      DisplayWidth = 10
      FieldName = 'FOR_MARK'
      Origin = 'CPAFORN.FOR_FAX'
      Visible = False
    end
    object Q_FORNFOR_PENT: TFloatField
      DisplayWidth = 10
      FieldName = 'FOR_PENT'
      Origin = 'CPAFORN.FOR_EMAI'
      Visible = False
    end
    object Q_FORNFOR_SEGU: TIntegerField
      DisplayWidth = 10
      FieldName = 'FOR_SEGU'
      Visible = False
    end
    object Q_FORNFOR_UCOM: TDateTimeField
      DisplayWidth = 18
      FieldName = 'FOR_UCOM'
      Visible = False
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = 'dd/mm/yyyy'
    end
    object Q_FORNFOR_VUCO: TFloatField
      DisplayWidth = 10
      FieldName = 'FOR_VUCO'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_FORNFOR_VUCD: TFloatField
      DisplayWidth = 10
      FieldName = 'FOR_VUCD'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_FORNFOR_MCOM: TDateTimeField
      DisplayWidth = 18
      FieldName = 'FOR_MCOM'
      Visible = False
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = 'dd/mm/yyyy'
    end
    object Q_FORNFOR_VMCO: TFloatField
      DisplayWidth = 10
      FieldName = 'FOR_VMCO'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_FORNFOR_VMCD: TFloatField
      DisplayWidth = 10
      FieldName = 'FOR_VMCD'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
  end
  object DS_FORN: TwwDataSource
    DataSet = Q_FORN
    Left = 70
    Top = 36
  end
  object UPD_MATFORN: TUpdateSQL
    ModifySQL.Strings = (
      'update MATERIAL_FORNECEDOR'
      'set'
      '  MAT_ID = :MAT_ID,'
      '  FOR_CODI = :FOR_CODI,'
      '  MFOR_EMBALAGEM = :MFOR_EMBALAGEM,'
      '  UNI_ID = :UNI_ID,'
      '  MFOR_CONVERSAO = :MFOR_CONVERSAO,'
      '  MFOR_DT_ULTCOMP = :MFOR_DT_ULTCOMP,'
      '  MFOR_PRE_ULTCOMP = :MFOR_PRE_ULTCOMP,'
      '  MFOR_DT_ULTCOTA = :MFOR_DT_ULTCOTA,'
      '  MFOR_PRE_ULTCOTA = :MFOR_PRE_ULTCOTA'
      'where'
      '  MFOR_ID = :OLD_MFOR_ID')
    InsertSQL.Strings = (
      'insert into MATERIAL_FORNECEDOR'
      
        '  (MAT_ID, FOR_CODI, MFOR_EMBALAGEM, UNI_ID, MFOR_CONVERSAO, MFO' +
        'R_DT_ULTCOMP, '
      '   MFOR_PRE_ULTCOMP, MFOR_DT_ULTCOTA, MFOR_PRE_ULTCOTA)'
      'values'
      
        '  (:MAT_ID, :FOR_CODI, :MFOR_EMBALAGEM, :UNI_ID, :MFOR_CONVERSAO' +
        ', :MFOR_DT_ULTCOMP, '
      '   :MFOR_PRE_ULTCOMP, :MFOR_DT_ULTCOTA, :MFOR_PRE_ULTCOTA)')
    DeleteSQL.Strings = (
      'delete from MATERIAL_FORNECEDOR'
      'where'
      '  MFOR_ID = :OLD_MFOR_ID')
    Left = 512
    Top = 45
  end
  object Q_AUX: TwwQuery
    CachedUpdates = True
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM MATERIAL_FORNECEDOR'
      'ORDER BY MFOR_ID')
    ValidateWithMask = True
    Left = 432
    Top = 109
    object AutoIncField1: TAutoIncField
      FieldName = 'MFOR_ID'
      Origin = 'CURA.MATERIAL_FORNECEDOR.MFOR_ID'
    end
    object StringField1: TStringField
      FieldName = 'FOR_CODI'
      Origin = 'CURA.MATERIAL_FORNECEDOR.FOR_CODI'
      FixedChar = True
      Size = 15
    end
    object StringField2: TStringField
      FieldName = 'MFOR_EMBALAGEM'
      Origin = 'CURA.MATERIAL_FORNECEDOR.MFOR_EMBALAGEM'
      FixedChar = True
      Size = 15
    end
    object IntegerField1: TIntegerField
      FieldName = 'UNI_ID'
      Origin = 'CURA.MATERIAL_FORNECEDOR.UNI_ID'
    end
    object FloatField1: TFloatField
      FieldName = 'MFOR_CONVERSAO'
      Origin = 'CURA.MATERIAL_FORNECEDOR.MFOR_CONVERSAO'
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'MFOR_DT_ULTCOMP'
      Origin = 'CURA.MATERIAL_FORNECEDOR.MFOR_DT_ULTCOMP'
    end
    object FloatField2: TFloatField
      FieldName = 'MFOR_PRE_ULTCOMP'
      Origin = 'CURA.MATERIAL_FORNECEDOR.MFOR_PRE_ULTCOMP'
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'MFOR_DT_ULTCOTA'
      Origin = 'CURA.MATERIAL_FORNECEDOR.MFOR_DT_ULTCOTA'
    end
    object FloatField3: TFloatField
      FieldName = 'MFOR_PRE_ULTCOTA'
      Origin = 'CURA.MATERIAL_FORNECEDOR.MFOR_PRE_ULTCOTA'
    end
  end
  object Q_MAT: TwwQuery
    Active = True
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'select A.* from MATERIAIS A,MATERIAL_FORNECEDOR B'
      'where '
      'A.MAT_ID = B.MAT_ID '
      'ORDER BY FOR_CODI')
    ValidateWithMask = True
    Left = 608
    Top = 53
    object Q_MATMAT_DESC: TStringField
      DisplayLabel = 'MATERIAL'
      DisplayWidth = 60
      FieldName = 'MAT_DESC'
      Origin = 'CURA.MATERIAIS.MAT_DESC'
      FixedChar = True
      Size = 60
    end
    object Q_MATMAT_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'MAT_ID'
      Origin = 'CURA.MATERIAIS.MAT_ID'
      Visible = False
    end
    object Q_MATGRU_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'GRU_ID'
      Origin = 'CURA.MATERIAIS.GRU_ID'
      Visible = False
    end
    object Q_MATUNI_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'UNI_ID'
      Origin = 'CURA.MATERIAIS.UNI_ID'
      Visible = False
    end
    object Q_MATMAT_IPI: TFloatField
      DisplayWidth = 10
      FieldName = 'MAT_IPI'
      Origin = 'CURA.MATERIAIS.MAT_IPI'
      Visible = False
    end
    object Q_MATMAT_CONTROLA: TStringField
      DisplayWidth = 1
      FieldName = 'MAT_CONTROLA'
      Origin = 'CURA.MATERIAIS.MAT_CONTROLA'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_MATMAT_ESTMIN: TIntegerField
      DisplayWidth = 10
      FieldName = 'MAT_ESTMIN'
      Origin = 'CURA.MATERIAIS.MAT_ESTMIN'
      Visible = False
    end
    object Q_MATMAT_LOTEPED: TStringField
      DisplayWidth = 10
      FieldName = 'MAT_LOTEPED'
      Origin = 'CURA.MATERIAIS.MAT_LOTEPED'
      Visible = False
      FixedChar = True
      Size = 10
    end
  end
  object DS_MAT: TwwDataSource
    DataSet = Q_MAT
    Left = 648
    Top = 53
  end
end
