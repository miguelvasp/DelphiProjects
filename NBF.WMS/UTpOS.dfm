object FTpOS: TFTpOS
  Left = 53
  Top = 68
  Width = 698
  Height = 440
  BorderIcons = []
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
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 6
    Top = 7
    Width = 675
    Height = 45
    BevelInner = bvLowered
    TabOrder = 0
    object SpeedButton1: TSpeedButton
      Left = 614
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
      OnClick = SpeedButton1Click
    end
    object SpeedButton3: TSpeedButton
      Left = 640
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
      Width = 161
      Height = 29
      Caption = 'Tipos de O.S.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -24
      Font.Name = 'Georgia'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object DBNavigator1: TDBNavigator
      Left = 422
      Top = 9
      Width = 192
      Height = 25
      DataSource = DS_TOS
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
    Top = 59
    Width = 675
    Height = 346
    PageIndex = 1
    TabFont.Charset = ANSI_CHARSET
    TabFont.Color = clRed
    TabFont.Height = -11
    TabFont.Name = 'Arial'
    TabFont.Style = [fsBold]
    TabOrder = 1
    OnClick = TabbedNotebook1Click
    object TTabPage
      Left = 4
      Top = 24
      Caption = '   Tipos de O.S.   '
      object Panel6: TPanel
        Left = 8
        Top = 5
        Width = 653
        Height = 303
        BevelInner = bvSpace
        BevelOuter = bvLowered
        BevelWidth = 3
        Color = clSilver
        TabOrder = 0
        object Label5: TLabel
          Left = 62
          Top = 15
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
        object Label3: TLabel
          Left = 68
          Top = 40
          Width = 33
          Height = 15
          Caption = 'Nome'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 51
          Top = 68
          Width = 50
          Height = 15
          Caption = 'Conceito'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object wwDBEdit4: TwwDBEdit
          Left = 104
          Top = 13
          Width = 40
          Height = 21
          BorderStyle = bsNone
          DataField = 'TOS_ORDEM'
          DataSource = DS_TOS
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
        object wwDBEdit3: TwwDBEdit
          Left = 104
          Top = 39
          Width = 310
          Height = 21
          BorderStyle = bsNone
          DataField = 'TOS_NOME'
          DataSource = DS_TOS
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
        object DBMemo2: TDBMemo
          Left = 104
          Top = 66
          Width = 470
          Height = 69
          BorderStyle = bsNone
          DataField = 'TOS_CONCEITO'
          DataSource = DS_TOS
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ScrollBars = ssVertical
          TabOrder = 2
          OnEnter = DBMemo2Enter
          OnExit = DBMemo2Exit
        end
        object DBG_RAAT: TwwDBGrid
          Left = 103
          Top = 142
          Width = 469
          Height = 146
          Hint = 'Visualização dos Registros'
          Selected.Strings = (
            'TOS_ORDEM'#9'15'#9'Ordem'
            'TOS_NOME'#9'55'#9'Nome'#9'F')
          IniAttributes.Delimiter = ';;'
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          DataSource = DS_TOS
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
          object DBG_RAATIButton: TwwIButton
            Left = 0
            Top = 0
            Width = 13
            Height = 22
            AllowAllUp = True
          end
        end
      end
    end
    object TTabPage
      Left = 4
      Top = 24
      Caption = '   Tipos de Documentos Relacionados      '
      object Label15: TLabel
        Left = 36
        Top = 13
        Width = 23
        Height = 15
        Caption = 'O.S.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText3: TDBText
        Left = 68
        Top = 12
        Width = 349
        Height = 17
        DataField = 'TOS_NOME'
        DataSource = DS_TOS
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
        Width = 646
        Height = 260
        BevelInner = bvSpace
        BevelOuter = bvLowered
        BevelWidth = 3
        Color = clSilver
        TabOrder = 0
        object Label19: TLabel
          Left = 16
          Top = 41
          Width = 109
          Height = 15
          Caption = 'Tipo de Documento'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object Label1: TLabel
          Left = 86
          Top = 15
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
        object wwDBGrid1: TwwDBGrid
          Left = 127
          Top = 66
          Width = 406
          Height = 177
          Hint = 'Visualização dos Registros'
          Selected.Strings = (
            'TDTO_ORDEM'#9'10'#9'Ordem'
            'TDOC_DESC'#9'50'#9'Tipo de Documento'#9'F')
          IniAttributes.Delimiter = ';;'
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          DataSource = DS_TDTO
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
          object wwIButton1: TwwIButton
            Left = 0
            Top = 0
            Width = 13
            Height = 22
            AllowAllUp = True
          end
        end
        object wwDBEdit2: TwwDBEdit
          Left = 128
          Top = 13
          Width = 40
          Height = 21
          BorderStyle = bsNone
          DataField = 'TDTO_ORDEM'
          DataSource = DS_TDTO
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
          OnEnter = wwDBEdit2Enter
          OnExit = wwDBEdit2Exit
        end
        object wwDBLookupCombo2: TwwDBLookupCombo
          Left = 128
          Top = 39
          Width = 232
          Height = 21
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          BorderStyle = bsNone
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'TDOC_NOME'#9'40'#9'Tipo de Documento'#9'F')
          DataField = 'TDOC_ID'
          DataSource = DS_TDTO
          LookupTable = Q_TDOC
          LookupField = 'TDOC_ID'
          ParentFont = False
          TabOrder = 1
          AutoDropDown = True
          ShowButton = True
          SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
          PreciseEditRegion = False
          AllowClearKey = False
          OnEnter = wwDBLookupCombo2Enter
          OnExit = wwDBLookupCombo2Exit
        end
      end
    end
  end
  object Q_TOS: TwwQuery
    AutoCalcFields = False
    CachedUpdates = True
    AfterPost = Q_TOSAfterPost
    AfterDelete = Q_TOSAfterDelete
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    RequestLive = True
    SQL.Strings = (
      'select * from TPOS  order by  TOS_ORDEM,TOS_NOME')
    UpdateObject = UPD_TOS
    ValidateWithMask = True
    Left = 399
    Top = 152
    object Q_TOSTOS_ORDEM: TIntegerField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      DisplayLabel = 'Ordem'
      DisplayWidth = 15
      FieldName = 'TOS_ORDEM'
      Origin = 'NBFDADOS.TPOS.TOS_ORDEM'
    end
    object Q_TOSTOS_NOME: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 55
      FieldName = 'TOS_NOME'
      Origin = 'NBFDADOS.TPOS.TOS_NOME'
      FixedChar = True
      Size = 40
    end
    object Q_TOSTOS_ID: TAutoIncField
      FieldName = 'TOS_ID'
      Origin = 'NBFDADOS.TPOS.TOS_ID'
      Visible = False
    end
    object Q_TOSTOS_CONCEITO: TMemoField
      FieldName = 'TOS_CONCEITO'
      Origin = 'NBFDADOS.TPOS.TOS_CONCEITO'
      Visible = False
      BlobType = ftMemo
    end
  end
  object UPD_TOS: TUpdateSQL
    ModifySQL.Strings = (
      'update TPOS'
      'set'
      '  TOS_NOME = :TOS_NOME,'
      '  TOS_CONCEITO = :TOS_CONCEITO,'
      '  TOS_ORDEM = :TOS_ORDEM'
      'where'
      '  TOS_ID = :OLD_TOS_ID')
    InsertSQL.Strings = (
      'insert into TPOS'
      '  (TOS_NOME, TOS_CONCEITO, TOS_ORDEM)'
      'values'
      '  (:TOS_NOME, :TOS_CONCEITO, :TOS_ORDEM)')
    DeleteSQL.Strings = (
      'delete from TPOS'
      'where'
      '  TOS_ID = :OLD_TOS_ID')
    Left = 399
    Top = 200
  end
  object DS_TOS: TwwDataSource
    DataSet = Q_TOS
    Left = 391
    Top = 248
  end
  object Q_TDTO: TwwQuery
    AutoCalcFields = False
    CachedUpdates = True
    BeforePost = Q_TDTOBeforePost
    AfterPost = Q_TDTOAfterPost
    AfterDelete = Q_TDTOAfterDelete
    OnNewRecord = Q_TDTONewRecord
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    DataSource = DS_TOS
    RequestLive = True
    SQL.Strings = (
      
        'select * from TPDOC_TPOS  where TOS_ID = :TOS_ID order by  TDTO_' +
        'ORDEM')
    UpdateObject = UPD_TDTO
    ValidateWithMask = True
    Left = 519
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'TOS_ID'
        ParamType = ptUnknown
      end>
    object Q_TDTOTDTO_ORDEM: TIntegerField
      DisplayLabel = 'Ordem'
      DisplayWidth = 10
      FieldName = 'TDTO_ORDEM'
      Origin = 'NBFDADOS.TPDOC_TPOS.TDTO_ORDEM'
    end
    object Q_TDTOTDOC_DESC: TStringField
      DisplayLabel = 'Tipo de Documento'
      DisplayWidth = 50
      FieldKind = fkLookup
      FieldName = 'TDOC_DESC'
      LookupDataSet = Q_TDOC
      LookupKeyFields = 'TDOC_ID'
      LookupResultField = 'TDOC_NOME'
      KeyFields = 'TDOC_ID'
      Size = 40
      Lookup = True
    end
    object Q_TDTOTDTO_ID: TAutoIncField
      FieldName = 'TDTO_ID'
      Origin = 'NBFDADOS.TPDOC_TPOS.TDTO_ID'
      Visible = False
    end
    object Q_TDTOTOS_ID: TIntegerField
      FieldName = 'TOS_ID'
      Origin = 'NBFDADOS.TPDOC_TPOS.TOS_ID'
      Visible = False
    end
    object Q_TDTOTDOC_ID: TIntegerField
      FieldName = 'TDOC_ID'
      Origin = 'NBFDADOS.TPDOC_TPOS.TDOC_ID'
      Visible = False
    end
  end
  object UPD_TDTO: TUpdateSQL
    ModifySQL.Strings = (
      'update TPDOC_TPOS'
      'set'
      '  TOS_ID = :TOS_ID,'
      '  TDOC_ID = :TDOC_ID,'
      '  TDTO_ORDEM = :TDTO_ORDEM'
      'where'
      '  TDTO_ID = :OLD_TDTO_ID')
    InsertSQL.Strings = (
      'insert into TPDOC_TPOS'
      '  (TOS_ID, TDOC_ID, TDTO_ORDEM)'
      'values'
      '  (:TOS_ID, :TDOC_ID, :TDTO_ORDEM)')
    DeleteSQL.Strings = (
      'delete from TPDOC_TPOS'
      'where'
      '  TDTO_ID = :OLD_TDTO_ID')
    Left = 527
    Top = 200
  end
  object DS_TDTO: TwwDataSource
    DataSet = Q_TDTO
    Left = 527
    Top = 248
  end
  object Q_TDOC: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select TDOC_ID,TDOC_NOME from TPDOC order by TDOC_NOME')
    ValidateWithMask = True
    Left = 268
    Top = 238
    object Q_TDOCTDOC_NOME: TStringField
      DisplayLabel = 'Tipo de Documento'
      DisplayWidth = 40
      FieldName = 'TDOC_NOME'
      Origin = 'NBFDADOS.TPDOC.TDOC_NOME'
      FixedChar = True
      Size = 40
    end
    object Q_TDOCTDOC_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'TDOC_ID'
      Origin = 'NBFDADOS.TPDOC.TDOC_ID'
      Visible = False
    end
  end
end
