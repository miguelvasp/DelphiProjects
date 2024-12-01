object FTpVeiculo: TFTpVeiculo
  Left = 461
  Top = 162
  Width = 762
  Height = 521
  BorderIcons = []
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 7
    Top = 3
    Width = 610
    Height = 45
    BevelInner = bvLowered
    TabOrder = 0
    object SpeedButton1: TSpeedButton
      Left = 549
      Top = 9
      Width = 25
      Height = 25
      Hint = 'Visualizar Relatório'
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
    end
    object SpeedButton3: TSpeedButton
      Left = 575
      Top = 9
      Width = 25
      Height = 25
      Hint = 'Sair'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000010000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
        03333377777777777F333301111111110333337F333333337F33330111111111
        0333337F333333337F333301111111110333337F333333337F33330111111111
        0333337F333333337F333301111111110333337F333333337F33330111111111
        0333337F3333333F7F333301111111B10333337F333333737F33330111111111
        0333337F333333337F333301111111110333337F33FFFFF37F3333011EEEEE11
        0333337F377777F37F3333011EEEEE110333337F37FFF7F37F3333011EEEEE11
        0333337F377777337F333301111111110333337F333333337F33330111111111
        0333337FFFFFFFFF7F3333000000000003333377777777777333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton3Click
    end
    object Label4: TLabel
      Left = 16
      Top = 5
      Width = 214
      Height = 29
      Caption = 'Tipos de Veículos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -24
      Font.Name = 'Georgia'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object DBNavigator1: TDBNavigator
      Left = 357
      Top = 9
      Width = 192
      Height = 25
      DataSource = DS_VEIC
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbPost, nbCancel]
      Hints.Strings = (
        'Posiciona no primeiro registro | Posiciona no primeiro registro'
        'Retorna ao registro anterior | Retorna ao registro anterior '
        'Avança para o próximo registro | Avança para o próximo registro '
        'Posiciona no último registro | Posiciona no último registro '
        'Incluir  '
        'Excluir'
        ''
        'Confirmar'
        'Cancelar')
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = DBNavigator1Click
    end
  end
  object TabbedNotebook1: TTabbedNotebook
    Left = 7
    Top = 53
    Width = 706
    Height = 412
    TabFont.Charset = ANSI_CHARSET
    TabFont.Color = clRed
    TabFont.Height = -11
    TabFont.Name = 'Arial'
    TabFont.Style = [fsBold]
    TabOrder = 1
    OnClick = TabbedNotebook1Click
    object TTabPage
      Left = 4
      Top = 25
      Caption = '   Tipos de Veículos   '
      object Panel6: TPanel
        Left = 32
        Top = 21
        Width = 657
        Height = 348
        BevelInner = bvSpace
        BevelOuter = bvLowered
        BevelWidth = 3
        Color = clSilver
        TabOrder = 0
        object Label3: TLabel
          Left = 67
          Top = 42
          Width = 36
          Height = 15
          Caption = 'Nome '
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 65
          Top = 18
          Width = 39
          Height = 15
          Caption = 'Ordem'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object Label9: TLabel
          Left = 43
          Top = 74
          Width = 55
          Height = 15
          Caption = 'Categoria'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object lbl1: TLabel
          Left = 41
          Top = 106
          Width = 60
          Height = 15
          Caption = 'Código EDI'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object Label10: TLabel
          Left = 241
          Top = 106
          Width = 84
          Height = 15
          Caption = 'Valor Adicional'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object wwDBEdit3: TwwDBEdit
          Left = 107
          Top = 42
          Width = 281
          Height = 21
          BorderStyle = bsNone
          DataField = 'VEIC_NOME'
          DataSource = DS_VEIC
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnEnter = wwDBEdit3Enter
          OnExit = wwDBEdit3Exit
        end
        object DBG_RAAT: TwwDBGrid
          Left = 107
          Top = 144
          Width = 360
          Height = 193
          Hint = 'Visualização dos Registros'
          Selected.Strings = (
            'VEIC_ORDEM'#9'5'#9'Ordem'
            'VEIC_NOME'#9'46'#9'Nome'#9'F')
          IniAttributes.Delimiter = ';;'
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          DataSource = DS_VEIC
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          KeyOptions = []
          Options = [dgAlwaysShowEditor, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgWordWrap]
          ParentFont = False
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 2
          TitleAlignment = taCenter
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clNavy
          TitleFont.Height = -11
          TitleFont.Name = 'Arial'
          TitleFont.Style = [fsBold]
          TitleLines = 1
          TitleButtons = False
          object DBG_RAATIButton: TwwIButton
            Left = 0
            Top = 0
            Width = 13
            Height = 22
            AllowAllUp = True
          end
        end
        object wwDBEdit4: TwwDBEdit
          Left = 107
          Top = 16
          Width = 40
          Height = 21
          BorderStyle = bsNone
          DataField = 'VEIC_ORDEM'
          DataSource = DS_VEIC
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnEnter = wwDBEdit4Enter
          OnExit = wwDBEdit4Exit
        end
        object wwDBComboBox1: TwwDBComboBox
          Left = 107
          Top = 72
          Width = 534
          Height = 23
          ShowButton = True
          Style = csDropDown
          MapList = True
          AllowClearKey = False
          AutoDropDown = True
          DataField = 'CATEGORIA'
          DataSource = DS_VEIC
          DropDownCount = 8
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ItemHeight = 0
          Items.Strings = (
            
              'AUTOMOVEL, CAMINHONETE, CAMIONETA, FURGAO ( 2 EIXOS - ROD. SIMPL' +
              'ES ) '#9'1'
            
              'CAMINHAO LEVE, CAMINHAO-TRATOR, FURGAO ( 2 EIXOS - ROD. DUPLA ) ' +
              #9'2'
            'ONIBUS ( 2 EIXOS - ROD. DUPLA ) '#9'2A'
            
              'AUTOMOVEL, CAMIONETA OU CAMINHONETE COM SEMI-REBOQUE ( 3 EIXOS -' +
              ' ROD. SIMPLES ) '#9'3'
            
              'CAMINHAO, CAMINHAO-TRATOR, CAMINHAO-TRATOR C/ SEMI-REBOQUE ( 3 E' +
              'IXOS - ROD. DUPLA ) '#9'4'
            'ONIBUS ( 3 EIXOS - ROD. DUPLA ) '#9'4A'
            
              'AUTOMOVEL, CAMIONETA OU CAMINHONETE COM REBOQUE ( 4 EIXOS – ROD.' +
              ' SIMPLES) '#9'5'
            
              'CAMINHAO E/OU CAMINHAO-TRATOR, C/ SEMI-REBOQUE ( 4 EIXOS – ROD. ' +
              'DUPLA) '#9'6'
            'CAMINHAO C/ REBOQUE, CAMINHAO-TRATOR ( 5 EIXOS - ROD. DUPLA ) '#9'7'
            
              'CAMINHAO C/ REBOQUE, CAMINHAO-TRATOR C/ SEMI-REBOQUE ( 6 EIXOS –' +
              ' ROD. DUPLA ) '#9'8'
            
              'MOTOCICLETA, MOTONETA, BICICLETAS A MOTOR ( 2 EIXOS – ROD. SIMPL' +
              'ES) '#9'9'
            
              'CAMINHAO C/ REBOQUE, CAMINHAO-TRATOR C/ SEMI-REBOQUE ( 7 EIXOS -' +
              ' ROD. DUPLA ) '#9'10'
            
              'CAMINHAO C/ REBOQUE, CAMINHAO-TRATOR C/ SEMI-REBOQUE ( 8 EIXOS -' +
              ' ROD. DUPLA ) '#9'11'
            
              'CAMINHAO C/ REBOQUE, CAMINHAO-TRATOR C/ SEMI-REBOQUE ( 9 EIXOS -' +
              ' ROD. DUPLA ) '#9'12'
            
              'CAMINHAO C/ REBOQUE, CAMINHAO-TRATOR C/ SEMI-REBOQUE ( 10 EIXOS ' +
              '- ROD. DUPLA ) '#9'13')
          ParentFont = False
          Sorted = False
          TabOrder = 3
          UnboundDataType = wwDefault
        end
        object wwDBEdit7: TwwDBEdit
          Left = 107
          Top = 104
          Width = 110
          Height = 21
          BorderStyle = bsNone
          DataField = 'CodigoEDI'
          DataSource = DS_VEIC
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnEnter = wwDBEdit4Enter
          OnExit = wwDBEdit4Exit
        end
        object wwDBEdit8: TwwDBEdit
          Left = 339
          Top = 104
          Width = 110
          Height = 21
          BorderStyle = bsNone
          DataField = 'ValorAdicional'
          DataSource = DS_VEIC
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnEnter = wwDBEdit4Enter
          OnExit = wwDBEdit4Exit
        end
      end
    end
    object TTabPage
      Left = 4
      Top = 25
      Caption = '   Preços por Região   '
      object Label15: TLabel
        Left = 36
        Top = 13
        Width = 85
        Height = 15
        Caption = 'Tipo de Veículo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText3: TDBText
        Left = 129
        Top = 12
        Width = 349
        Height = 17
        DataField = 'VEIC_NOME'
        DataSource = DS_VEIC
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Panel4: TPanel
        Left = 9
        Top = 37
        Width = 680
        Height = 260
        BevelInner = bvSpace
        BevelOuter = bvLowered
        BevelWidth = 3
        Color = clSilver
        TabOrder = 0
        object Label6: TLabel
          Left = 119
          Top = 15
          Width = 39
          Height = 15
          Caption = 'Região'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object Label1: TLabel
          Left = 59
          Top = 39
          Width = 99
          Height = 15
          Caption = 'Carga Palletizada'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 74
          Top = 64
          Width = 84
          Height = 15
          Caption = 'Carga à Granel'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 275
          Top = 39
          Width = 60
          Height = 15
          Caption = 'Tara Pallet'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 269
          Top = 63
          Width = 65
          Height = 15
          Caption = 'Tara Granel'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object wwDBGrid2: TwwDBGrid
          Left = 20
          Top = 90
          Width = 651
          Height = 158
          Hint = 'Visualização dos Registros'
          Selected.Strings = (
            'REG_DESC'#9'40'#9'Região'
            'FRET_VALOR'#9'18'#9'Carga Palletizada'
            'FRET_VALOR_GRANEL'#9'14'#9'Carga à Granel'
            'TARA_GRANEL'#9'10'#9'Tara Granel'
            'TARA_PALLET'#9'10'#9'Tara Pallet'#9'F')
          IniAttributes.Delimiter = ';;'
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          DataSource = DS_FRETE
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          KeyOptions = []
          Options = [dgAlwaysShowEditor, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgWordWrap]
          ParentFont = False
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 3
          TitleAlignment = taCenter
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clNavy
          TitleFont.Height = -11
          TitleFont.Name = 'Arial'
          TitleFont.Style = [fsBold]
          TitleLines = 1
          TitleButtons = False
          object wwIButton2: TwwIButton
            Left = 0
            Top = 0
            Width = 13
            Height = 22
            AllowAllUp = True
          end
        end
        object wwDBLookupCombo2: TwwDBLookupCombo
          Left = 161
          Top = 13
          Width = 272
          Height = 21
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          BorderStyle = bsNone
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'REG_NOME'#9'40'#9'Região'#9'F')
          DataField = 'REG_ID'
          DataSource = DS_FRETE
          LookupTable = Q_REG
          LookupField = 'REG_ID'
          ParentFont = False
          TabOrder = 0
          AutoDropDown = True
          ShowButton = True
          SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
          PreciseEditRegion = False
          AllowClearKey = False
          OnEnter = wwDBLookupCombo2Enter
          OnExit = wwDBLookupCombo2Exit
        end
        object wwDBEdit1: TwwDBEdit
          Left = 161
          Top = 38
          Width = 89
          Height = 21
          BorderStyle = bsNone
          DataField = 'FRET_VALOR'
          DataSource = DS_FRETE
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnEnter = wwDBEdit1Enter
          OnExit = wwDBEdit1Exit
        end
        object wwDBEdit2: TwwDBEdit
          Left = 161
          Top = 64
          Width = 89
          Height = 21
          BorderStyle = bsNone
          DataField = 'FRET_VALOR_GRANEL'
          DataSource = DS_FRETE
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnEnter = wwDBEdit2Enter
          OnExit = wwDBEdit2Exit
        end
        object wwDBEdit5: TwwDBEdit
          Left = 345
          Top = 38
          Width = 89
          Height = 21
          BorderStyle = bsNone
          DataField = 'TARA_PALLET'
          DataSource = DS_FRETE
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnEnter = wwDBEdit1Enter
          OnExit = wwDBEdit1Exit
        end
        object wwDBEdit6: TwwDBEdit
          Left = 345
          Top = 63
          Width = 89
          Height = 21
          BorderStyle = bsNone
          DataField = 'TARA_GRANEL'
          DataSource = DS_FRETE
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnEnter = wwDBEdit1Enter
          OnExit = wwDBEdit1Exit
        end
      end
    end
  end
  object UPD_VEIC: TUpdateSQL
    ModifySQL.Strings = (
      'update TPVEICULO'
      'set'
      '  VEIC_NOME = :VEIC_NOME,'
      '  VEIC_ORDEM = :VEIC_ORDEM,'
      '  CATEGORIA = :CATEGORIA,'
      '  CodigoEDI = :CodigoEDI,'
      'ValorAdicional = :ValorAdicional'
      'where'
      '  VEIC_ID = :OLD_VEIC_ID')
    InsertSQL.Strings = (
      'insert into TPVEICULO'
      '  (VEIC_NOME, VEIC_ORDEM, CATEGORIA, CodigoEDI, ValorAdicional)'
      'values'
      
        '  (:VEIC_NOME, :VEIC_ORDEM, :CATEGORIA, :CodigoEDI, :ValorAdicio' +
        'nal)')
    DeleteSQL.Strings = (
      'delete from TPVEICULO'
      'where'
      '  VEIC_ID = :OLD_VEIC_ID')
    Left = 31
    Top = 248
  end
  object Q_VEIC: TwwQuery
    AutoCalcFields = False
    CachedUpdates = True
    AfterPost = Q_VEICAfterPost
    AfterDelete = Q_VEICAfterDelete
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    RequestLive = True
    SQL.Strings = (
      'select * from TPVEICULO  order by VEIC_ORDEM')
    UpdateObject = UPD_VEIC
    ValidateWithMask = True
    Left = 31
    Top = 192
    object Q_VEICVEIC_ORDEM: TIntegerField
      DisplayLabel = 'Ordem'
      DisplayWidth = 5
      FieldName = 'VEIC_ORDEM'
      Origin = 'NBFDADOS.TPVEICULO.VEIC_ORDEM'
    end
    object Q_VEICVEIC_NOME: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 46
      FieldName = 'VEIC_NOME'
      Origin = 'NBFDADOS.TPVEICULO.VEIC_NOME'
      FixedChar = True
      Size = 40
    end
    object Q_VEICVEIC_ID: TAutoIncField
      FieldName = 'VEIC_ID'
      Origin = 'NBFDADOS.TPVEICULO.VEIC_ID'
      Visible = False
    end
    object Q_VEICCATEGORIA: TStringField
      FieldName = 'CATEGORIA'
      Origin = 'NBFDADOS.TPVEICULO.CATEGORIA'
      FixedChar = True
      Size = 5
    end
    object Q_VEICCodigoEDI: TStringField
      FieldName = 'CodigoEDI'
      Origin = 'NBFDADOS.TPVEICULO.CodigoEDI'
      FixedChar = True
      Size = 50
    end
    object Q_VEICValorAdicional: TFloatField
      FieldName = 'ValorAdicional'
      Origin = 'NBFDADOS.TPVEICULO.ValorAdicional'
    end
  end
  object DS_VEIC: TwwDataSource
    DataSet = Q_VEIC
    Left = 31
    Top = 304
  end
  object Q_FRETE: TwwQuery
    AutoCalcFields = False
    CachedUpdates = True
    BeforePost = Q_FRETEBeforePost
    AfterPost = Q_FRETEAfterPost
    AfterDelete = Q_FRETEAfterDelete
    OnNewRecord = Q_FRETENewRecord
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    DataSource = DS_VEIC
    RequestLive = True
    SQL.Strings = (
      'select * from FRETE where VEIC_ID = :VEIC_ID order by REG_ID')
    UpdateObject = UPD_FRETE
    ValidateWithMask = True
    Left = 543
    Top = 160
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'VEIC_ID'
        ParamType = ptUnknown
      end>
    object Q_FRETEREG_DESC: TStringField
      DisplayLabel = 'Região'
      DisplayWidth = 40
      FieldKind = fkLookup
      FieldName = 'REG_DESC'
      LookupDataSet = Q_REG
      LookupKeyFields = 'REG_ID'
      LookupResultField = 'REG_NOME'
      KeyFields = 'REG_ID'
      Size = 40
      Lookup = True
    end
    object Q_FRETEFRET_VALOR: TFloatField
      DisplayLabel = 'Carga Palletizada'
      DisplayWidth = 18
      FieldName = 'FRET_VALOR'
      Origin = 'NBFDADOS.FRETE.FRET_VALOR'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_FRETEFRET_VALOR_GRANEL: TFloatField
      DisplayLabel = 'Carga à Granel'
      DisplayWidth = 14
      FieldName = 'FRET_VALOR_GRANEL'
      Origin = 'NBFDADOS.FRETE.FRET_VALOR_GRANEL'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_FRETETARA_GRANEL: TFloatField
      DisplayLabel = 'Tara Granel'
      DisplayWidth = 10
      FieldName = 'TARA_GRANEL'
      Origin = 'NBFDADOS.FRETE.TARA_GRANEL'
    end
    object Q_FRETETARA_PALLET: TFloatField
      DisplayLabel = 'Tara Pallet'
      DisplayWidth = 10
      FieldName = 'TARA_PALLET'
      Origin = 'NBFDADOS.FRETE.TARA_PALLET'
    end
    object Q_FRETEFRET_ID: TAutoIncField
      FieldName = 'FRET_ID'
      Origin = 'NBFDADOS.FRETE.FRET_ID'
      Visible = False
    end
    object Q_FRETEVEIC_ID: TIntegerField
      FieldName = 'VEIC_ID'
      Origin = 'NBFDADOS.FRETE.VEIC_ID'
      Visible = False
    end
    object Q_FRETEREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'NBFDADOS.FRETE.REG_ID'
      Visible = False
    end
  end
  object UPD_FRETE: TUpdateSQL
    ModifySQL.Strings = (
      'update FRETE'
      'set'
      '  '
      '  VEIC_ID = :VEIC_ID,'
      '  REG_ID = :REG_ID,'
      '  FRET_VALOR = :FRET_VALOR,'
      '  FRET_VALOR_GRANEL = :FRET_VALOR_GRANEL,'
      '  TARA_PALLET = :TARA_PALLET,'
      '  TARA_GRANEL = :TARA_GRANEL'
      'where'
      '  FRET_ID = :OLD_FRET_ID')
    InsertSQL.Strings = (
      'insert into FRETE'
      '  (VEIC_ID, REG_ID, FRET_VALOR, FRET_VALOR_GRANEL, TARA_PALLET, '
      'TARA_GRANEL)'
      'values'
      
        '  (:VEIC_ID, :REG_ID, :FRET_VALOR, :FRET_VALOR_GRANEL, :TARA_PAL' +
        'LET, '
      ':TARA_GRANEL)')
    DeleteSQL.Strings = (
      'delete from FRETE'
      'where'
      '  FRET_ID = :OLD_FRET_ID')
    Left = 535
    Top = 248
  end
  object DS_FRETE: TwwDataSource
    DataSet = Q_FRETE
    Left = 535
    Top = 304
  end
  object Q_REG: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select * from REGIAO order by REG_NOME')
    ValidateWithMask = True
    Left = 84
    Top = 304
    object Q_REGREG_NOME: TStringField
      DisplayLabel = 'Região'
      DisplayWidth = 40
      FieldName = 'REG_NOME'
      Origin = 'NBFDADOS.REGIAO.REG_NOME'
      FixedChar = True
      Size = 40
    end
    object Q_REGREG_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'REG_ID'
      Origin = 'NBFDADOS.REGIAO.REG_ID'
      Visible = False
    end
  end
end
