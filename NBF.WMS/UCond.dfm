object FCond: TFCond
  Left = 53
  Top = 56
  Width = 695
  Height = 445
  BorderIcons = []
  Color = clMenu
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
  PixelsPerInch = 96
  TextHeight = 13
  object Label50: TLabel
    Left = 220
    Top = 261
    Width = 29
    Height = 15
    Caption = 'Peso'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object Label23: TLabel
    Left = 71
    Top = 67
    Width = 37
    Height = 17
    Caption = 'E-Mail'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -12
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
  end
  object TabbedNotebook1: TTabbedNotebook
    Left = 2
    Top = 50
    Width = 681
    Height = 362
    TabFont.Charset = ANSI_CHARSET
    TabFont.Color = clRed
    TabFont.Height = -11
    TabFont.Name = 'Arial'
    TabFont.Style = [fsBold]
    TabOrder = 0
    OnClick = TabbedNotebook1Click
    object TTabPage
      Left = 4
      Top = 24
      Caption = '   Condição de Pagamento  '
      object Panel1: TPanel
        Left = 0
        Top = 13
        Width = 666
        Height = 308
        BevelInner = bvLowered
        TabOrder = 0
        object Label1: TLabel
          Left = 28
          Top = 20
          Width = 53
          Height = 15
          Caption = 'Condição'
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentColor = False
          ParentFont = False
        end
        object Label2: TLabel
          Left = 37
          Top = 47
          Width = 44
          Height = 15
          Caption = 'N. Parc.'
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentColor = False
          ParentFont = False
        end
        object Label4: TLabel
          Left = 213
          Top = 73
          Width = 380
          Height = 15
          Caption = 
            '(Fora a Semana, Fora a Dezena, Fora a Quinzena e Fora o Mês, DDL' +
            ')'
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentColor = False
          ParentFont = False
        end
        object TxtNome: TwwDBEdit
          Left = 83
          Top = 15
          Width = 288
          Height = 23
          BorderStyle = bsNone
          DataField = 'Descricao'
          DataSource = DS_COND
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBGrid1: TwwDBGrid
          Left = 9
          Top = 117
          Width = 643
          Height = 174
          TabStop = False
          Selected.Strings = (
            'Descricao'#9'57'#9'Descrição'
            'Num_Parcelas'#9'28'#9'Número de Parcelas')
          IniAttributes.Delimiter = ';;'
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          DataSource = DS_COND
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          KeyOptions = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
          ParentFont = False
          TabOrder = 3
          TitleAlignment = taLeftJustify
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clNavy
          TitleFont.Height = -16
          TitleFont.Name = 'Arial'
          TitleFont.Style = [fsBold]
          TitleLines = 1
          TitleButtons = False
          FooterCellColor = clWhite
        end
        object wwDBEdit1: TwwDBEdit
          Left = 83
          Top = 42
          Width = 57
          Height = 23
          BorderStyle = bsNone
          DataField = 'Num_Parcelas'
          DataSource = DS_COND
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object DBCB_NFI_PESS: TwwDBComboBox
          Left = 82
          Top = 69
          Width = 128
          Height = 23
          ShowButton = True
          Style = csDropDown
          MapList = True
          AllowClearKey = False
          BorderStyle = bsNone
          ButtonStyle = cbsEllipsis
          DataField = 'Fora'
          DataSource = DS_COND
          DropDownCount = 8
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          ItemHeight = 0
          Items.Strings = (
            'Fora a Semana'#9'S'
            'Fora a Dezena'#9'D'
            'Fora a Quinzena'#9'Q'
            'Fora o Mês'#9'M')
          ParentFont = False
          Sorted = False
          TabOrder = 2
          UnboundDataType = wwDefault
          OnEnter = DBCB_NFI_PESSEnter
          OnExit = DBCB_NFI_PESSExit
        end
      end
    end
    object TTabPage
      Left = 4
      Top = 24
      Caption = '   Detalhes  '
      object DBText1: TDBText
        Left = 166
        Top = 37
        Width = 55
        Height = 17
        AutoSize = True
        DataField = 'Descricao'
        DataSource = DS_COND
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Panel2: TPanel
        Left = 165
        Top = 69
        Width = 299
        Height = 160
        BevelInner = bvLowered
        TabOrder = 0
        object wwDBGrid2: TwwDBGrid
          Left = 5
          Top = 5
          Width = 289
          Height = 148
          Selected.Strings = (
            'Percentual'#9'13'#9'Percentual'
            'Num_dias'#9'14'#9'N º de Dias')
          IniAttributes.Delimiter = ';;'
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          Color = clWhite
          DataSource = DS_ICOND
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          KeyOptions = [dgEnterToTab, dgAllowDelete, dgAllowInsert]
          ParentFont = False
          TabOrder = 0
          TitleAlignment = taLeftJustify
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clNavy
          TitleFont.Height = -16
          TitleFont.Name = 'Arial'
          TitleFont.Style = [fsBold]
          TitleLines = 1
          TitleButtons = False
          FooterCellColor = clAqua
        end
      end
    end
  end
  object Panel3: TPanel
    Left = 3
    Top = 2
    Width = 680
    Height = 45
    BevelInner = bvLowered
    TabOrder = 1
    object Label16: TLabel
      Left = 9
      Top = 8
      Width = 312
      Height = 29
      Caption = 'Condições de Pagamento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -24
      Font.Name = 'Georgia'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object SpeedButton3: TSpeedButton
      Left = 646
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
    object DBNavigator1: TDBNavigator
      Left = 454
      Top = 9
      Width = 192
      Height = 25
      DataSource = DS_COND
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
    end
  end
  object Q_COND: TwwQuery
    CachedUpdates = True
    BeforeInsert = Q_CONDBeforeInsert
    AfterPost = Q_CONDAfterPost
    AfterDelete = Q_CONDAfterDelete
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    RequestLive = True
    SQL.Strings = (
      'SELECT * from CONDICAO_PAGTO')
    UpdateObject = UPD_COND
    ValidateWithMask = True
    Left = 476
    Top = 136
    object Q_CONDDescricao: TStringField
      DisplayLabel = 'Descrição'
      DisplayWidth = 57
      FieldName = 'Descricao'
      Origin = 'NBFDADOS.CONDICAO_PAGTO.Descricao'
      FixedChar = True
      Size = 30
    end
    object Q_CONDNum_Parcelas: TFloatField
      DisplayLabel = 'Número de Parcelas'
      DisplayWidth = 28
      FieldName = 'Num_Parcelas'
      Origin = 'NBFDADOS.CONDICAO_PAGTO.Num_Parcelas'
    end
    object Q_CONDCond_Pgto_ID: TAutoIncField
      FieldName = 'Cond_Pgto_ID'
      Origin = 'NBFDADOS.CONDICAO_PAGTO.Cond_Pgto_ID'
      Visible = False
    end
    object Q_CONDPagamento: TStringField
      FieldName = 'Pagamento'
      Origin = 'NBFDADOS.CONDICAO_PAGTO.Pagamento'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object Q_CONDFora: TStringField
      FieldName = 'Fora'
      Origin = 'NBFDADOS.CONDICAO_PAGTO.Fora'
      Visible = False
      FixedChar = True
      Size = 1
    end
  end
  object DS_COND: TwwDataSource
    DataSet = Q_COND
    Left = 480
    Top = 202
  end
  object UPD_COND: TUpdateSQL
    ModifySQL.Strings = (
      'update CONDICAO_PAGTO'
      'set'
      '  Descricao = :Descricao,'
      '  Num_Parcelas = :Num_Parcelas,'
      '  Pagamento = :Pagamento,'
      '  Fora = :Fora'
      'where'
      '  Cond_Pgto_ID = :OLD_Cond_Pgto_ID')
    InsertSQL.Strings = (
      'insert into CONDICAO_PAGTO'
      '  (Descricao, Num_Parcelas, Pagamento, Fora)'
      'values'
      '  (:Descricao, :Num_Parcelas, :Pagamento, :Fora)')
    DeleteSQL.Strings = (
      'delete from CONDICAO_PAGTO'
      'where'
      '  Cond_Pgto_ID = :OLD_Cond_Pgto_ID')
    Left = 484
    Top = 260
  end
  object Q_ICOND: TwwQuery
    CachedUpdates = True
    AfterPost = Q_ICONDAfterPost
    AfterDelete = Q_ICONDAfterDelete
    OnNewRecord = Q_ICONDNewRecord
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    DataSource = DS_COND
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM CONDICAO_PAGTO_INTERVALO where'
      'COND_PGTO_ID = :COND_PGTO_ID')
    UpdateObject = UPD_ICOND
    ValidateWithMask = True
    Left = 536
    Top = 112
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'Cond_Pgto_ID'
        ParamType = ptUnknown
      end>
    object Q_ICONDPercentual: TFloatField
      DisplayWidth = 13
      FieldName = 'Percentual'
      Origin = 'NBFDADOS.CONDICAO_PAGTO_INTERVALO.Percentual'
      DisplayFormat = '0.0'
      EditFormat = '0.0'
    end
    object Q_ICONDNum_dias: TFloatField
      DisplayLabel = 'N º de Dias'
      DisplayWidth = 14
      FieldName = 'Num_dias'
      Origin = 'NBFDADOS.CONDICAO_PAGTO_INTERVALO.Num_dias'
    end
    object Q_ICONDIntervalo_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'Intervalo_ID'
      Origin = 'NBFDADOS.CONDICAO_PAGTO_INTERVALO.Intervalo_ID'
      Visible = False
    end
    object Q_ICONDCond_Pgto_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'Cond_Pgto_ID'
      Origin = 'NBFDADOS.CONDICAO_PAGTO_INTERVALO.Cond_Pgto_ID'
      Visible = False
    end
  end
  object DS_ICOND: TwwDataSource
    DataSet = Q_ICOND
    Left = 540
    Top = 170
  end
  object UPD_ICOND: TUpdateSQL
    ModifySQL.Strings = (
      'update CONDICAO_PAGTO_INTERVALO'
      'set'
      '  Cond_Pgto_ID = :Cond_Pgto_ID,'
      '  Percentual = :Percentual,'
      '  Num_dias = :Num_dias'
      'where'
      '  Intervalo_ID = :OLD_Intervalo_ID')
    InsertSQL.Strings = (
      'insert into CONDICAO_PAGTO_INTERVALO'
      '  (Cond_Pgto_ID, Percentual, Num_dias)'
      'values'
      '  (:Cond_Pgto_ID, :Percentual, :Num_dias)')
    DeleteSQL.Strings = (
      'delete from CONDICAO_PAGTO_INTERVALO'
      'where'
      '  Intervalo_ID = :OLD_Intervalo_ID')
    Left = 544
    Top = 228
  end
end
