object FAjusEstq: TFAjusEstq
  Left = 0
  Top = 0
  Width = 800
  Height = 566
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
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 1
    Top = 37
    Width = 795
    Height = 461
    BevelInner = bvLowered
    TabOrder = 0
    object wwDBGrid1: TwwDBGrid
      Left = 6
      Top = 184
      Width = 779
      Height = 273
      Selected.Strings = (
        'AJUS_ID'#9'10'#9'Número'#9'F'
        'AJUS_DATA'#9'10'#9'Data'#9'F'
        'local'#9'20'#9'Local'#9'F'
        'material'#9'25'#9'Material'#9'F'
        'marca'#9'20'#9'Marca'#9'F'
        'AJUS_LOTE'#9'15'#9'Lote'#9'F'
        'AJUS_VALIDADE'#9'18'#9'Validade'#9'F'
        'AJUS_QUANT'#9'10'#9'Qtde'#9'F'
        'AJUS_SOMASUBTRAI'#9'12'#9'Movimentação'#9'F'
        'motivo'#9'20'#9'Motivo'#9'F'
        'USUARIO'#9'20'#9'Usuario'#9'F')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DS_AJUS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      KeyOptions = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      ParentFont = False
      TabOrder = 1
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clNavy
      TitleFont.Height = -12
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
      IndicatorColor = icBlack
    end
    object Panel4: TPanel
      Left = 7
      Top = 5
      Width = 777
      Height = 177
      BevelInner = bvLowered
      BevelOuter = bvLowered
      BorderWidth = 1
      TabOrder = 0
      object Label2: TLabel
        Left = 15
        Top = 19
        Width = 50
        Height = 16
        Caption = 'Número'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label3: TLabel
        Left = 14
        Top = 66
        Width = 52
        Height = 16
        Caption = 'Material'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label7: TLabel
        Left = 138
        Top = 119
        Width = 74
        Height = 16
        Caption = 'Quantidade'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label8: TLabel
        Left = 252
        Top = 120
        Width = 42
        Height = 16
        Caption = 'Motivo'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label10: TLabel
        Left = 622
        Top = 67
        Width = 28
        Height = 16
        Caption = 'Lote'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label9: TLabel
        Left = 152
        Top = 19
        Width = 29
        Height = 16
        Caption = 'Data'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label5: TLabel
        Left = 523
        Top = 18
        Width = 35
        Height = 16
        Caption = 'Local'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label6: TLabel
        Left = 318
        Top = 16
        Width = 93
        Height = 16
        Caption = 'Movimentação'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label11: TLabel
        Left = 526
        Top = 118
        Width = 48
        Height = 16
        Caption = 'Usuário'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label4: TLabel
        Left = 353
        Top = 67
        Width = 39
        Height = 16
        Caption = 'Marca'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label12: TLabel
        Left = 14
        Top = 119
        Width = 57
        Height = 16
        Caption = 'Validade'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object DBE_AJUS_NUM: TwwDBEdit
        Left = 14
        Top = 33
        Width = 53
        Height = 24
        Color = clSilver
        DataField = 'AJUS_ID'
        DataSource = DS_AJUS
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object DBLC_AJUS_MAT: TwwDBLookupCombo
        Left = 14
        Top = 81
        Width = 301
        Height = 24
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'MAT_DESC'#9'60'#9'MAT_DESC'#9'F')
        DataField = 'MAT_ID'
        DataSource = DS_AJUS
        LookupTable = Q_MAT
        LookupField = 'MAT_ID'
        ParentFont = False
        TabOrder = 2
        AutoDropDown = True
        ShowButton = True
        AllowClearKey = True
        OnCloseUp = DBLC_AJUS_MATCloseUp
        OnEnter = DBLC_AJUS_LOCALEnter
        OnExit = DBLC_AJUS_MATExit
      end
      object DBE_AJUS_QTDE: TwwDBEdit
        Left = 139
        Top = 134
        Width = 61
        Height = 24
        DataField = 'AJUS_QUANT'
        DataSource = DS_AJUS
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnEnter = DBE_AJUS_DATAEnter
        OnExit = DBE_AJUS_DATAExit
      end
      object DBLC_AJUS_MOTIVO: TwwDBLookupCombo
        Left = 252
        Top = 134
        Width = 233
        Height = 24
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        CharCase = ecUpperCase
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'MOT_DESC'#9'20'#9'MOT_DESC'#9'F')
        DataField = 'MOT_ID'
        DataSource = DS_AJUS
        LookupTable = Q_MOT
        LookupField = 'MOT_ID'
        ParentFont = False
        TabOrder = 7
        AutoDropDown = True
        ShowButton = True
        AllowClearKey = True
        OnEnter = DBLC_AJUS_LOCALEnter
        OnExit = DBLC_AJUS_MOTIVOExit
      end
      object DBE_AJUS_LOTE: TwwDBEdit
        Left = 621
        Top = 81
        Width = 112
        Height = 24
        DataField = 'AJUS_LOTE'
        DataSource = DS_AJUS
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnEnter = DBE_AJUS_DATAEnter
        OnExit = DBE_AJUS_DATAExit
      end
      object DBE_AJUS_DATA: TwwDBEdit
        Left = 151
        Top = 33
        Width = 85
        Height = 24
        Color = clSilver
        DataField = 'AJUS_DATA'
        DataSource = DS_AJUS
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnEnter = DBE_AJUS_DATAEnter
        OnExit = DBE_AJUS_DATAExit
      end
      object DBLC_AJUS_LOCAL: TwwDBLookupCombo
        Left = 522
        Top = 33
        Width = 213
        Height = 24
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        CharCase = ecUpperCase
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'LOC_DESC'#9'20'#9'LOC_DESC'#9'F')
        DataField = 'LOC_ID'
        DataSource = DS_AJUS
        LookupTable = Q_LOC
        LookupField = 'LOC_ID'
        ParentFont = False
        TabOrder = 1
        AutoDropDown = True
        ShowButton = True
        AllowClearKey = True
        OnEnter = DBLC_AJUS_LOCALEnter
        OnExit = DBLC_AJUS_LOCALExit
      end
      object DBCB_AJUS_SOMASUB: TwwDBComboBox
        Left = 318
        Top = 32
        Width = 116
        Height = 24
        ShowButton = True
        Style = csDropDown
        MapList = True
        AllowClearKey = True
        AutoDropDown = True
        ButtonStyle = cbsEllipsis
        DataField = 'AJUS_SOMASUBTRAI'
        DataSource = DS_AJUS
        DropDownCount = 8
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ItemHeight = 0
        Items.Strings = (
          'Entrada'#9'1'
          'Saída'#9'-1')
        ParentFont = False
        Sorted = False
        TabOrder = 0
        UnboundDataType = wwDefault
        OnCloseUp = DBCB_AJUS_SOMASUBCloseUp
        OnEnter = DBCB_AJUS_SOMASUBEnter
        OnExit = DBCB_AJUS_SOMASUBExit
      end
      object wwDBEdit2: TwwDBEdit
        Left = 526
        Top = 133
        Width = 209
        Height = 24
        Color = clSilver
        DataField = 'USUARIO'
        DataSource = DS_AJUS
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object wwDBLookupCombo1: TwwDBLookupCombo
        Left = 353
        Top = 81
        Width = 233
        Height = 24
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        CharCase = ecUpperCase
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'MARCA_DESC'#9'20'#9'MARCA_DESC'#9'F')
        DataField = 'MARCA_ID'
        DataSource = DS_AJUS
        LookupTable = Q_MARC2
        LookupField = 'MARCA_ID'
        ParentFont = False
        TabOrder = 3
        AutoDropDown = True
        ShowButton = True
        AllowClearKey = True
        OnEnter = DBLC_AJUS_LOCALEnter
        OnExit = wwDBLookupCombo1Exit
      end
      object DBE_AJUS_VAL: TwwDBEdit
        Left = 13
        Top = 133
        Width = 84
        Height = 24
        Color = clWhite
        DataField = 'AJUS_VALIDADE'
        DataSource = DS_AJUS
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnEnter = DBE_AJUS_DATAEnter
        OnExit = DBE_AJUS_DATAExit
      end
    end
  end
  object Panel1: TPanel
    Left = 1
    Top = 0
    Width = 794
    Height = 37
    BevelInner = bvLowered
    TabOrder = 1
    object Label1: TLabel
      Left = 9
      Top = 8
      Width = 156
      Height = 22
      Caption = 'Ajuste de Estoque'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object SBT_SAIR: TSpeedButton
      Left = 753
      Top = 6
      Width = 26
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
    object SpeedButton7: TSpeedButton
      Left = 676
      Top = 7
      Width = 76
      Height = 24
      Hint = 'Confirma Atualização Estoque'
      Caption = 'Estoque'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333303
        333333333333337FF3333333333333903333333333333377FF33333333333399
        03333FFFFFFFFF777FF3000000999999903377777777777777FF0FFFF0999999
        99037F3337777777777F0FFFF099999999907F3FF777777777770F00F0999999
        99037F773777777777730FFFF099999990337F3FF777777777330F00FFFFF099
        03337F773333377773330FFFFFFFF09033337F3FF3FFF77733330F00F0000003
        33337F773777777333330FFFF0FF033333337F3FF7F3733333330F08F0F03333
        33337F7737F7333333330FFFF003333333337FFFF77333333333000000333333
        3333777777333333333333333333333333333333333333333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton7Click
    end
    object Fonte: TDBNavigator
      Left = 485
      Top = 7
      Width = 192
      Height = 24
      DataSource = DS_AJUS
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbCancel]
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
  object Panel3: TPanel
    Left = 1
    Top = 495
    Width = 795
    Height = 31
    BevelInner = bvLowered
    TabOrder = 2
    object LBL_STATUS: TLabel
      Left = 366
      Top = 10
      Width = 15
      Height = 13
      Alignment = taCenter
      Caption = '     '
    end
  end
  object Q_AJUS: TwwQuery
    CachedUpdates = True
    BeforeInsert = Q_AJUSBeforeInsert
    BeforePost = Q_AJUSBeforePost
    AfterPost = Q_AJUSAfterPost
    BeforeDelete = Q_AJUSBeforeDelete
    AfterDelete = Q_AJUSAfterDelete
    OnNewRecord = Q_AJUSNewRecord
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM AJUSTE'
      'ORDER BY AJUS_ID DESC')
    UpdateObject = UPD_AJUS
    ValidateWithMask = True
    Left = 128
    Top = 254
    object Q_AJUSAJUS_ID: TAutoIncField
      DisplayLabel = 'Número'
      DisplayWidth = 10
      FieldName = 'AJUS_ID'
      Origin = 'CURA.AJUSTE.AJUS_ID'
    end
    object Q_AJUSAJUS_DATA: TDateTimeField
      DisplayLabel = 'Data'
      DisplayWidth = 10
      FieldName = 'AJUS_DATA'
      Origin = 'CURA.AJUSTE.AJUS_DATA'
      DisplayFormat = 'DD/MM/YYYY'
      EditMask = '!99/99/9999;1;_'
    end
    object Q_AJUSlocal: TStringField
      DisplayLabel = 'Local'
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = 'local'
      LookupDataSet = Q_LOC
      LookupKeyFields = 'LOC_ID'
      LookupResultField = 'LOC_DESC'
      KeyFields = 'LOC_ID'
      Lookup = True
    end
    object Q_AJUSmaterial: TStringField
      DisplayLabel = 'Material'
      DisplayWidth = 25
      FieldKind = fkLookup
      FieldName = 'material'
      LookupDataSet = Q_MAT
      LookupKeyFields = 'MAT_ID'
      LookupResultField = 'MAT_DESC'
      KeyFields = 'MAT_ID'
      Size = 25
      Lookup = True
    end
    object Q_AJUSmarca: TStringField
      DisplayLabel = 'Marca'
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = 'marca'
      LookupDataSet = Q_MARC
      LookupKeyFields = 'MARCA_ID'
      LookupResultField = 'MARCA_DESC'
      KeyFields = 'MARCA_ID'
      Lookup = True
    end
    object Q_AJUSAJUS_LOTE: TStringField
      DisplayLabel = 'Lote'
      DisplayWidth = 15
      FieldName = 'AJUS_LOTE'
      Origin = 'CURA.AJUSTE.AJUS_LOTE'
      FixedChar = True
      Size = 15
    end
    object Q_AJUSAJUS_VALIDADE: TDateTimeField
      DisplayLabel = 'Validade'
      DisplayWidth = 18
      FieldName = 'AJUS_VALIDADE'
      Origin = 'CURA.AJUSTE.AJUS_VALIDADE'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '99/99/9999'
    end
    object Q_AJUSAJUS_QUANT: TIntegerField
      DisplayLabel = 'Qtde'
      DisplayWidth = 10
      FieldName = 'AJUS_QUANT'
      Origin = 'CURA.AJUSTE.AJUS_QUANT'
      DisplayFormat = '###,###,##0.0'
      EditFormat = '###,###,##0.0'
    end
    object Q_AJUSAJUS_SOMASUBTRAI: TIntegerField
      DisplayLabel = 'Movimentação'
      DisplayWidth = 12
      FieldName = 'AJUS_SOMASUBTRAI'
      Origin = 'CURA.AJUSTE.AJUS_SOMASUBTRAI'
      OnGetText = Q_AJUSAJUS_SOMASUBTRAIGetText
    end
    object Q_AJUSmotivo: TStringField
      DisplayLabel = 'Motivo'
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = 'motivo'
      LookupDataSet = Q_MOT
      LookupKeyFields = 'MOT_ID'
      LookupResultField = 'MOT_DESC'
      KeyFields = 'MOT_ID'
      Lookup = True
    end
    object Q_AJUSUSUARIO: TStringField
      DisplayLabel = 'Usuario'
      DisplayWidth = 20
      FieldName = 'USUARIO'
      Origin = 'CURA.AJUSTE.USUARIO'
      FixedChar = True
    end
    object Q_AJUSLOC_ID: TIntegerField
      DisplayLabel = 'Local'
      DisplayWidth = 10
      FieldName = 'LOC_ID'
      Origin = 'CURA.AJUSTE.LOC_ID'
      Visible = False
    end
    object Q_AJUSMAT_ID: TIntegerField
      DisplayLabel = 'Material'
      DisplayWidth = 10
      FieldName = 'MAT_ID'
      Origin = 'CURA.AJUSTE.MAT_ID'
      Visible = False
    end
    object Q_AJUSMOT_ID: TIntegerField
      DisplayLabel = 'Motivo'
      DisplayWidth = 10
      FieldName = 'MOT_ID'
      Origin = 'CURA.AJUSTE.MOT_ID'
      Visible = False
    end
    object Q_AJUSAJUS_ATUALIZA: TStringField
      DisplayWidth = 1
      FieldName = 'AJUS_ATUALIZA'
      Origin = 'CURA.AJUSTE.AJUS_ATUALIZA'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_AJUSESTQ_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'ESTQ_ID'
      Origin = 'CURA.AJUSTE.ESTQ_ID'
      Visible = False
    end
    object Q_AJUSMARCA_ID: TIntegerField
      FieldName = 'MARCA_ID'
      Origin = 'CURA.AJUSTE.MARCA_ID'
    end
  end
  object DS_AJUS: TwwDataSource
    DataSet = Q_AJUS
    OnStateChange = DS_AJUSStateChange
    OnDataChange = DS_AJUSDataChange
    Left = 120
    Top = 318
  end
  object UPD_AJUS: TUpdateSQL
    ModifySQL.Strings = (
      'update AJUSTE'
      'set'
      '  LOC_ID = :LOC_ID,'
      '  MAT_ID = :MAT_ID,'
      '  ESTQ_ID = :ESTQ_ID,'
      '  AJUS_SOMASUBTRAI = :AJUS_SOMASUBTRAI,'
      '  AJUS_QUANT = :AJUS_QUANT,'
      '  MOT_ID = :MOT_ID,'
      '  AJUS_DATA = :AJUS_DATA,'
      '  AJUS_ATUALIZA = :AJUS_ATUALIZA,'
      '  AJUS_LOTE = :AJUS_LOTE,'
      '  USUARIO = :USUARIO,'
      '  AJUS_VALIDADE = :AJUS_VALIDADE,'
      '  MARCA_ID = :MARCA_ID'
      'where'
      '  AJUS_ID = :OLD_AJUS_ID')
    InsertSQL.Strings = (
      'insert into AJUSTE'
      
        '  (LOC_ID, MAT_ID, ESTQ_ID, AJUS_SOMASUBTRAI, AJUS_QUANT, MOT_ID' +
        ', AJUS_DATA, '
      '   AJUS_ATUALIZA, AJUS_LOTE, USUARIO, AJUS_VALIDADE, MARCA_ID)'
      'values'
      
        '  (:LOC_ID, :MAT_ID, :ESTQ_ID, :AJUS_SOMASUBTRAI, :AJUS_QUANT, :' +
        'MOT_ID, '
      
        '   :AJUS_DATA, :AJUS_ATUALIZA, :AJUS_LOTE, :USUARIO, :AJUS_VALID' +
        'ADE, :MARCA_ID)')
    DeleteSQL.Strings = (
      'delete from AJUSTE'
      'where'
      '  AJUS_ID = :OLD_AJUS_ID')
    Left = 272
    Top = 222
  end
  object Q_PSQAJUS: TwwQuery
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'SELECT * FROM AJUSTE'
      'ORDER BY AJUS_DATA')
    ValidateWithMask = True
    Left = 472
    Top = 214
    object Q_PSQAJUSAJUS_DATA: TDateTimeField
      DisplayLabel = 'Data Ajuste'
      DisplayWidth = 18
      FieldName = 'AJUS_DATA'
      Origin = 'CURA.AJUSTE.AJUS_DATA'
    end
    object Q_PSQAJUSAJUS_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'AJUS_ID'
      Origin = 'CURA.AJUSTE.AJUS_ID'
      Visible = False
    end
    object Q_PSQAJUSLOC_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'LOC_ID'
      Origin = 'CURA.AJUSTE.LOC_ID'
      Visible = False
    end
    object Q_PSQAJUSMAT_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'MAT_ID'
      Origin = 'CURA.AJUSTE.MAT_ID'
      Visible = False
    end
    object Q_PSQAJUSESTQ_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'ESTQ_ID'
      Origin = 'CURA.AJUSTE.ESTQ_ID'
      Visible = False
    end
    object Q_PSQAJUSAJUS_SOMASUBTRAI: TIntegerField
      DisplayWidth = 10
      FieldName = 'AJUS_SOMASUBTRAI'
      Origin = 'CURA.AJUSTE.AJUS_SOMASUBTRAI'
      Visible = False
    end
    object Q_PSQAJUSAJUS_QUANT: TIntegerField
      DisplayWidth = 10
      FieldName = 'AJUS_QUANT'
      Origin = 'CURA.AJUSTE.AJUS_QUANT'
      Visible = False
    end
    object Q_PSQAJUSMOT_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'MOT_ID'
      Origin = 'CURA.AJUSTE.MOT_ID'
      Visible = False
    end
    object Q_PSQAJUSAJUS_ATUALIZA: TStringField
      DisplayWidth = 1
      FieldName = 'AJUS_ATUALIZA'
      Origin = 'CURA.AJUSTE.AJUS_ATUALIZA'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_PSQAJUSAJUS_LOTE: TStringField
      DisplayWidth = 15
      FieldName = 'AJUS_LOTE'
      Origin = 'CURA.AJUSTE.AJUS_LOTE'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object Q_PSQAJUSUSUARIO: TStringField
      DisplayWidth = 20
      FieldName = 'USUARIO'
      Origin = 'CURA.AJUSTE.USUARIO'
      Visible = False
      FixedChar = True
    end
  end
  object PESQ_AJUS: TwwSearchDialog
    Selected.Strings = (
      'AJUS_DATA'#9'18'#9'Data Ajuste'#9'F')
    GridTitleAlignment = taLeftJustify
    GridColor = clWhite
    GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
    SearchTable = Q_PSQAJUS
    Caption = 'Pesquisa de Ajuste de Estoque'
    MaxWidth = 0
    MaxHeight = 209
    CharCase = ecNormal
    Left = 544
    Top = 214
  end
  object Q_LOC: TwwQuery
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'SELECT * FROM LOCAIS'
      'ORDER BY LOC_DESC')
    ValidateWithMask = True
    Left = 369
    Top = 317
    object Q_LOCLOC_DESC: TStringField
      DisplayWidth = 20
      FieldName = 'LOC_DESC'
      Origin = 'CURA.LOCAIS.LOC_DESC'
      FixedChar = True
    end
    object Q_LOCLOC_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'LOC_ID'
      Origin = 'CURA.LOCAIS.LOC_ID'
      Visible = False
    end
  end
  object Q_MAT: TwwQuery
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'SELECT MAT_ID, MAT_DESC, MAT_CONTROLA FROM MATERIAIS'
      'ORDER BY MAT_DESC')
    ValidateWithMask = True
    Left = 441
    Top = 317
    object Q_MATMAT_DESC: TStringField
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
    object Q_MATMAT_CONTROLA: TStringField
      FieldName = 'MAT_CONTROLA'
      Origin = 'CURA.MATERIAIS.MAT_CONTROLA'
      FixedChar = True
      Size = 1
    end
  end
  object Q_MOT: TwwQuery
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'SELECT * FROM MOTIVOS'
      'ORDER BY MOT_DESC')
    ValidateWithMask = True
    Left = 497
    Top = 317
    object Q_MOTMOT_DESC: TStringField
      DisplayWidth = 20
      FieldName = 'MOT_DESC'
      Origin = 'CURA.MOTIVOS.MOT_DESC'
      FixedChar = True
    end
    object Q_MOTMOT_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'MOT_ID'
      Origin = 'CURA.MOTIVOS.MOT_ID'
      Visible = False
    end
  end
  object STP_ATUALIZAESTOQUE: TwwStoredProc
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    StoredProcName = 'dbo.STP_ATUALIZAESTOQUE'
    ValidateWithMask = True
    Left = 409
    Top = 269
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Result'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = '@Lote'
        ParamType = ptInput
      end>
  end
  object Q_MARC: TwwQuery
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'select * from marcas')
    ValidateWithMask = True
    Left = 417
    Top = 448
    object Q_MARCMARCA_ID: TAutoIncField
      FieldName = 'MARCA_ID'
      Origin = 'CURA.marcas.MARCA_ID'
    end
    object Q_MARCMARCA_DESC: TStringField
      FieldName = 'MARCA_DESC'
      Origin = 'CURA.marcas.MARCA_DESC'
      FixedChar = True
    end
  end
  object DS_MAT: TwwDataSource
    DataSet = Q_MAT
    Left = 432
    Top = 378
  end
  object Q_ESTQ: TwwQuery
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    DataSource = DS_AJUS
    SQL.Strings = (
      'SELECT QUANTIDADE FROM ESTOQUE'
      'WHERE LOC_ID = :LOC_ID'
      'AND MAT_ID = :MAT_ID')
    ValidateWithMask = True
    Left = 249
    Top = 341
    ParamData = <
      item
        DataType = ftInteger
        Name = 'LOC_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'MAT_ID'
        ParamType = ptUnknown
      end>
    object Q_ESTQQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
      Origin = 'CURA.ESTOQUE.QUANTIDADE'
    end
  end
  object Q_MARC2: TwwQuery
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'SELECT A.MAT_ID, A.MARCA_ID, A.UNI_ID , B.MARCA_DESC'
      'FROM MATERIAL_MARCA A,'
      '           MARCAS B'
      'WHERE A.MARCA_ID = B.MARCA_ID'
      'GROUP BY  A.MARCA_ID,B.MARCA_DESC,A.MAT_ID,A.UNI_ID         ')
    ValidateWithMask = True
    Left = 579
    Top = 344
    object Q_MARC2MARCA_DESC: TStringField
      DisplayWidth = 20
      FieldName = 'MARCA_DESC'
      Origin = 'CURA.MARCAS.MARCA_DESC'
      FixedChar = True
    end
    object AutoIncField1: TAutoIncField
      DisplayWidth = 10
      FieldName = 'MARCA_ID'
      Origin = 'CURA.MARCAS.MARCA_ID'
      Visible = False
    end
    object IntegerField1: TIntegerField
      DisplayWidth = 10
      FieldName = 'MAT_ID'
      Origin = 'CURA.MATERIAL_MARCA.MAT_ID'
      Visible = False
    end
  end
  object Q_AUX: TwwQuery
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    ValidateWithMask = True
    Left = 633
    Top = 253
  end
end
