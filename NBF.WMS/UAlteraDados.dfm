object frmAlteraDados: TfrmAlteraDados
  Left = 192
  Top = 122
  Width = 800
  Height = 500
  Caption = 'Alteração de dados'
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel5: TPanel
    Left = 0
    Top = 0
    Width = 784
    Height = 462
    Align = alClient
    Caption = 'Panel5'
    TabOrder = 0
    object Label1: TLabel
      Left = 13
      Top = 437
      Width = 488
      Height = 20
      Caption = 'Esta tela permite alterar dados de Lote, Batch e vencimento '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 14
      Top = 121
      Width = 51
      Height = 15
      Caption = 'Empresa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object GroupBox6: TGroupBox
      Left = 12
      Top = 1
      Width = 757
      Height = 110
      Caption = 'Filtros'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Label15: TLabel
        Left = 57
        Top = 48
        Width = 45
        Height = 15
        Caption = 'Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label20: TLabel
        Left = 38
        Top = 18
        Width = 64
        Height = 15
        Caption = 'Cliente NBF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label16: TLabel
        Left = 72
        Top = 74
        Width = 27
        Height = 15
        Caption = 'Área'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object SpeedButton2: TSpeedButton
        Left = 636
        Top = 75
        Width = 109
        Height = 24
        Hint = 'Filtrar Estoque'
        Caption = 'Buscar'
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333333333FF33333333333330003FF3FFFFF3333777003000003333
          300077F777773F333777E00BFBFB033333337773333F7F33333FE0BFBF000333
          330077F3337773F33377E0FBFBFBF033330077F3333FF7FFF377E0BFBF000000
          333377F3337777773F3FE0FBFBFBFBFB039977F33FFFFFFF7377E0BF00000000
          339977FF777777773377000BFB03333333337773FF733333333F333000333333
          3300333777333333337733333333333333003333333333333377333333333333
          333333333333333333FF33333333333330003333333333333777333333333333
          3000333333333333377733333333333333333333333333333333}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton2Click
      end
      object DBText3: TDBText
        Left = 259
        Top = 46
        Width = 380
        Height = 17
        DataField = 'PRO_DESC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object wwDBLookupCombo3: TwwDBLookupCombo
        Tag = 1
        Left = 105
        Top = 43
        Width = 152
        Height = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        CharCase = ecUpperCase
        BorderStyle = bsNone
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'PRO_COD'#9'16'#9'PRO_COD'#9'F'
          'PRO_DESC'#9'40'#9'PRO_DESC'#9'F')
        LookupTable = Q_PROD3
        LookupField = 'PRO_ID'
        DropDownCount = 15
        Enabled = False
        ParentFont = False
        TabOrder = 1
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = True
      end
      object wwDBLookupCombo4: TwwDBLookupCombo
        Left = 105
        Top = 13
        Width = 484
        Height = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        CharCase = ecUpperCase
        BorderStyle = bsNone
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'CLIN_RAZA'#9'50'#9'CLIN_RAZA'#9'F')
        LookupTable = Q_CLIN2
        LookupField = 'CLIN_ID'
        DropDownCount = 16
        ParentFont = False
        TabOrder = 0
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = True
        OnCloseUp = wwDBLookupCombo4CloseUp
      end
      object wwDBLookupCombo5: TwwDBLookupCombo
        Tag = 2
        Left = 105
        Top = 72
        Width = 339
        Height = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        CharCase = ecUpperCase
        BorderStyle = bsNone
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'AR_NOME'#9'40'#9'AR_NOME'#9'F')
        LookupTable = Q_AR2
        LookupField = 'AR_ID'
        DropDownCount = 15
        ParentFont = False
        TabOrder = 2
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = True
      end
      object RadioGroup2: TRadioGroup
        Left = 471
        Top = 68
        Width = 152
        Height = 33
        Caption = 'Mantém Posição ?'
        Columns = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ItemIndex = 0
        Items.Strings = (
          'Sim'
          'Não')
        ParentFont = False
        TabOrder = 3
        Visible = False
      end
    end
    object GRID: TwwDBGrid
      Left = 12
      Top = 152
      Width = 757
      Height = 281
      Selected.Strings = (
        'PRO_COD'#9'16'#9'Cód.Produto'
        'PRO_DESC'#9'40'#9'Descrição do Produto'
        'ESTQ_QTDE'#9'10'#9'Qtde.Original'
        'ESTQ_QTDE_RETIRA'#9'10'#9'Qtde.Retirada'
        'UVEN_NOME'#9'10'#9'Unidade de Venda'
        'AR_NOME'#9'15'#9'Área'
        'ESTQ_TAG'#9'10'#9'Pallet TAG'
        'ESTQ_LOTE'#9'50'#9'Lote'
        'ROM_DTBATCH'#9'11'#9'Batch'
        'ROM_DTVENCTO'#9'11'#9'Vencimento')
      IniAttributes.FileName = 'delphi32.ini'
      IniAttributes.SectionName = 'FRomRemanejaGRID'
      IniAttributes.Delimiter = ';;'
      TitleColor = clLime
      FixedCols = 0
      ShowHorzScrollBar = True
      Color = clWhite
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      KeyOptions = [dgEnterToTab, dgAllowInsert]
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      ParentFont = False
      TabOrder = 1
      TitleAlignment = taCenter
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clNavy
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = [fsBold]
      TitleLines = 1
      TitleButtons = False
      FooterColor = clInactiveCaption
      FooterCellColor = clGrayText
    end
    object wwDBLookupCombo10: TwwDBLookupCombo
      Left = 88
      Top = 120
      Width = 306
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      BorderStyle = bsNone
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'PAR_NOME'#9'30'#9'PAR_NOME'#9'F')
      DataField = 'PAR_ID'
      LookupTable = Q_PAR
      LookupField = 'PAR_ID'
      ParentFont = False
      TabOrder = 2
      AutoDropDown = True
      ShowButton = True
      SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
      PreciseEditRegion = False
      AllowClearKey = False
    end
  end
  object Q_CLIN2: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select CLIN_RAZA,CLIN_ID from CLIENTENBF where'
      '(CLIN_CONTRATO <> '#39'I'#39' and CLIN_CONTRATO <> '#39'R'#39') '
      'order by CLIN_RAZA ')
    ValidateWithMask = True
    Left = 438
    Top = 216
    object Q_CLIN2CLIN_RAZA: TStringField
      DisplayWidth = 50
      FieldName = 'CLIN_RAZA'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_RAZA'
      FixedChar = True
      Size = 50
    end
    object Q_CLIN2CLIN_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'CLIN_ID'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_ID'
      Visible = False
    end
  end
  object Q_PROD3: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'select PRO_ID, PRO_COD,PRO_DESC ,CLIN_ID from PRODUTO '
      'where CLIN_ID = :CLIN_ID and'
      'PRO_DESCONTINUA = '#39'N'#39
      'order by PRO_COD'
      '')
    ValidateWithMask = True
    Left = 492
    Top = 213
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'CLIN_ID'
        ParamType = ptUnknown
      end>
    object Q_PROD3PRO_COD: TStringField
      DisplayWidth = 16
      FieldName = 'PRO_COD'
      Origin = 'NBFDADOS.PRODUTO.PRO_COD'
      FixedChar = True
      Size = 16
    end
    object Q_PROD3PRO_DESC: TStringField
      DisplayWidth = 40
      FieldName = 'PRO_DESC'
      Origin = 'NBFDADOS.PRODUTO.PRO_DESC'
      FixedChar = True
      Size = 40
    end
    object Q_PROD3PRO_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'PRO_ID'
      Origin = 'NBFDADOS.PRODUTO.PRO_ID'
      Visible = False
    end
    object Q_PROD3CLIN_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'CLIN_ID'
      Origin = 'NBFDADOS.PRODUTO.CLIN_ID'
      Visible = False
    end
  end
  object Q_AR2: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select *'
      'from'
      'AREA '
      'where'
      'PAR_ID = :PAR_ID'
      'order by AR_NOME'
      '')
    ValidateWithMask = True
    Left = 544
    Top = 211
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'PAR_ID'
        ParamType = ptUnknown
      end>
    object Q_AR2AR_NOME: TStringField
      DisplayWidth = 40
      FieldName = 'AR_NOME'
      Origin = 'NBFDADOS.AREA.AR_NOME'
      FixedChar = True
      Size = 40
    end
    object Q_AR2AR_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'AR_ID'
      Origin = 'NBFDADOS.AREA.AR_ID'
      Visible = False
    end
    object Q_AR2AR_CONTROL_POS: TStringField
      DisplayWidth = 1
      FieldName = 'AR_CONTROL_POS'
      Origin = 'NBFDADOS.AREA.AR_CONTROL_POS'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_AR2AR_EMPILHA_LIVRE: TStringField
      DisplayWidth = 1
      FieldName = 'AR_EMPILHA_LIVRE'
      Origin = 'NBFDADOS.AREA.AR_EMPILHA_LIVRE'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_AR2AR_EMPILHA_MAX: TIntegerField
      DisplayWidth = 10
      FieldName = 'AR_EMPILHA_MAX'
      Origin = 'NBFDADOS.AREA.AR_EMPILHA_MAX'
      Visible = False
    end
    object Q_AR2AR_DISPONIVEL: TStringField
      DisplayWidth = 1
      FieldName = 'AR_DISPONIVEL'
      Origin = 'NBFDADOS.AREA.AR_DISPONIVEL'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_AR2PAR_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'PAR_ID'
      Origin = 'NBFDADOS.AREA.PAR_ID'
      Visible = False
    end
  end
  object Q_ESTQ: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    DataSource = dspar
    Parameters = <
      item
        Name = 'PAR_ID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'Select A.*,'
      'B.PRO_DESC,'
      'B.PRO_COD,'
      'C.UVEN_NOME,'
      'D.AR_NOME,'
      'F.CLIN_ID'
      ' from '
      'ESTOQUE A,PRODUTO B,UNIDVENDA C,'
      'AREA D,OS F'
      'where'
      'A.PRO_ID = B.PRO_ID and'
      'A.UVEN_ID = C.UVEN_ID and'
      'A.AR_ID = D.AR_ID and'
      'A.OS_ID_ORIG = F.OS_ID and'
      'A.PAR_ID = :PAR_ID and'
      'A.ESTQ_QTDE_RETIRA = 0 and'
      'A.ESTQ_DT_ENTRADA <> NULL    order by'
      'A.PRO_ID,A.AR_ID,A.POS_ID,A.ESTQ_QTDE desc')
    Left = 229
    Top = 164
    object Q_ESTQPRO_COD: TStringField
      DisplayLabel = 'Cód.Produto'
      DisplayWidth = 16
      FieldName = 'PRO_COD'
      Size = 16
    end
    object Q_ESTQPRO_DESC: TStringField
      DisplayLabel = 'Descrição do Produto'
      DisplayWidth = 40
      FieldName = 'PRO_DESC'
      Size = 40
    end
    object Q_ESTQESTQ_QTDE: TFloatField
      DisplayLabel = 'Qtde.Original'
      DisplayWidth = 10
      FieldName = 'ESTQ_QTDE'
    end
    object Q_ESTQESTQ_QTDE_RETIRA: TFloatField
      DisplayLabel = 'Qtde.Retirada'
      DisplayWidth = 10
      FieldName = 'ESTQ_QTDE_RETIRA'
    end
    object Q_ESTQUVEN_NOME: TStringField
      DisplayLabel = 'Unidade de Venda'
      DisplayWidth = 10
      FieldName = 'UVEN_NOME'
      Size = 40
    end
    object Q_ESTQAR_NOME: TStringField
      DisplayLabel = 'Área'
      DisplayWidth = 15
      FieldName = 'AR_NOME'
      Size = 40
    end
    object Q_ESTQESTQ_TAG: TIntegerField
      DisplayLabel = 'Pallet TAG'
      DisplayWidth = 10
      FieldName = 'ESTQ_TAG'
    end
    object Q_ESTQESTQ_LOTE: TStringField
      DisplayLabel = 'Lote'
      DisplayWidth = 50
      FieldName = 'ESTQ_LOTE'
      Size = 50
    end
    object Q_ESTQROM_DTBATCH: TDateTimeField
      DisplayLabel = 'Batch'
      DisplayWidth = 11
      FieldName = 'ROM_DTBATCH'
    end
    object Q_ESTQROM_DTVENCTO: TDateTimeField
      DisplayLabel = 'Vencimento'
      DisplayWidth = 11
      FieldName = 'ROM_DTVENCTO'
    end
    object Q_ESTQESTQ_ID: TAutoIncField
      FieldName = 'ESTQ_ID'
      ReadOnly = True
      Visible = False
    end
    object Q_ESTQAR_ID: TIntegerField
      FieldName = 'AR_ID'
      Visible = False
    end
    object Q_ESTQPOS_ID: TIntegerField
      FieldName = 'POS_ID'
      Visible = False
    end
    object Q_ESTQOS_ID_ORIG: TIntegerField
      FieldName = 'OS_ID_ORIG'
      Visible = False
    end
    object Q_ESTQPRO_ID: TIntegerField
      FieldName = 'PRO_ID'
      Visible = False
    end
    object Q_ESTQMANI_ID: TIntegerField
      FieldName = 'MANI_ID'
      Visible = False
    end
    object Q_ESTQESTQ_PESO: TFloatField
      FieldName = 'ESTQ_PESO'
      Visible = False
    end
    object Q_ESTQOS_ID_DEST: TIntegerField
      FieldName = 'OS_ID_DEST'
      Visible = False
    end
    object Q_ESTQESTQ_DT_ENTRADA: TDateTimeField
      FieldName = 'ESTQ_DT_ENTRADA'
      Visible = False
    end
    object Q_ESTQESTQ_DT_SAIDA: TDateTimeField
      FieldName = 'ESTQ_DT_SAIDA'
      Visible = False
    end
    object Q_ESTQROM_ID_ENT: TIntegerField
      FieldName = 'ROM_ID_ENT'
      Visible = False
    end
    object Q_ESTQROM_ID_SAIDA: TIntegerField
      FieldName = 'ROM_ID_SAIDA'
      Visible = False
    end
    object Q_ESTQUVEN_ID: TIntegerField
      FieldName = 'UVEN_ID'
      Visible = False
    end
    object Q_ESTQAR_ID_ANTERIOR: TIntegerField
      FieldName = 'AR_ID_ANTERIOR'
      Visible = False
    end
    object Q_ESTQPOS_ID_ANTERIOR: TIntegerField
      FieldName = 'POS_ID_ANTERIOR'
      Visible = False
    end
    object Q_ESTQESTQ_DT_ULMOV: TDateTimeField
      FieldName = 'ESTQ_DT_ULMOV'
      Visible = False
    end
    object Q_ESTQPAR_ID: TIntegerField
      FieldName = 'PAR_ID'
      Visible = False
    end
    object Q_ESTQGEROU_OPER_ROMSAIDA: TStringField
      FieldName = 'GEROU_OPER_ROMSAIDA'
      Visible = False
      Size = 1
    end
    object Q_ESTQMARCADOR: TStringField
      FieldName = 'MARCADOR'
      Visible = False
      Size = 1
    end
    object Q_ESTQESTQ_ESCOLHEULOTE: TStringField
      FieldName = 'ESTQ_ESCOLHEULOTE'
      Visible = False
      Size = 1
    end
    object Q_ESTQCLIN_ID: TIntegerField
      FieldName = 'CLIN_ID'
      Visible = False
    end
  end
  object DataSource1: TDataSource
    DataSet = Q_ESTQ
    Left = 280
    Top = 168
  end
  object Q_PAR: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'select '
      'PAR_ID,PAR_NOME,ULT_TAG ,par_RAZA  from parametro  ')
    ValidateWithMask = True
    Left = 423
    Top = 146
    object Q_PARPAR_NOME: TStringField
      DisplayWidth = 30
      FieldName = 'PAR_NOME'
      Origin = 'NBFDADOS.parametro.PAR_NOME'
      FixedChar = True
      Size = 30
    end
    object Q_PARPAR_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'PAR_ID'
      Origin = 'NBFDADOS.parametro.PAR_ID'
      Visible = False
    end
    object Q_PARPAR_RAZA: TStringField
      DisplayWidth = 50
      FieldName = 'PAR_RAZA'
      Origin = 'NBFDADOS.parametro.PAR_RAZA'
      Visible = False
      FixedChar = True
      Size = 50
    end
    object Q_PARULT_TAG: TIntegerField
      FieldName = 'ULT_TAG'
      Origin = 'NBFDADOS.parametro.ULT_TAG'
    end
  end
  object dspar: TDataSource
    DataSet = Q_PAR
    Left = 168
    Top = 352
  end
end
