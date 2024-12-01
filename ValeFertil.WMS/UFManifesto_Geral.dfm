object FManifesto_Geral: TFManifesto_Geral
  Left = 235
  Top = 123
  BorderStyle = bsSingle
  Caption = 'FManifesto_Geral'
  ClientHeight = 534
  ClientWidth = 886
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 886
    Height = 63
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 52
      Height = 14
      Caption = 'Manifesto'
    end
    object Label2: TLabel
      Left = 120
      Top = 8
      Width = 15
      Height = 14
      Caption = 'De'
    end
    object Label3: TLabel
      Left = 216
      Top = 8
      Width = 20
      Height = 14
      Caption = 'At'#233
    end
    object Edit1: TEdit
      Left = 8
      Top = 24
      Width = 97
      Height = 22
      TabOrder = 0
    end
    object MaskEdit1: TMaskEdit
      Left = 120
      Top = 24
      Width = 89
      Height = 22
      EditMask = '99/99/9999'
      MaxLength = 10
      TabOrder = 1
      Text = '  /  /    '
    end
    object MaskEdit2: TMaskEdit
      Left = 216
      Top = 24
      Width = 89
      Height = 22
      EditMask = '99/99/9999'
      MaxLength = 10
      TabOrder = 2
      Text = '  /  /    '
    end
    object RzBitBtn1: TRzBitBtn
      Left = 320
      Top = 22
      Caption = 'Buscar'
      TabOrder = 3
      OnClick = RzBitBtn1Click
    end
    object RzBitBtn2: TRzBitBtn
      Left = 408
      Top = 22
      Caption = 'Imprimir'
      TabOrder = 4
      OnClick = RzBitBtn2Click
    end
    object Button1: TButton
      Left = 512
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 5
      Visible = False
      OnClick = Button1Click
    end
  end
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 63
    Width = 886
    Height = 146
    DittoAttributes.ShortCutDittoField = 0
    DittoAttributes.ShortCutDittoRecord = 0
    DittoAttributes.Options = []
    DisableThemesInTitle = False
    Selected.Strings = (
      'MANI_ID'#9'10'#9'Manifesto'
      'MANI_DATA'#9'18'#9'Data'
      'MANI_PESO'#9'10'#9'Peso'
      'MANI_VOLUME'#9'10'#9'Volume'
      'MANI_QTDEPALLET'#9'10'#9'Pallets'
      'MANI_QTDEUV'#9'10'#9'Qtde UV')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alTop
    DataSource = dsMani
    ReadOnly = True
    TabOrder = 1
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
  end
  object Panel2: TPanel
    Left = 0
    Top = 209
    Width = 886
    Height = 24
    Align = alTop
    Caption = 'ROMANEIO'
    TabOrder = 2
  end
  object GRID: TwwDBGrid
    Left = 0
    Top = 233
    Width = 886
    Height = 200
    DittoAttributes.ShortCutDittoField = 0
    DittoAttributes.ShortCutDittoRecord = 0
    DittoAttributes.Options = []
    DisableThemesInTitle = False
    Selected.Strings = (
      'ESTQ_TAG'#9'10'#9'Pallet TAG'
      'ESTQ_QTDE'#9'10'#9'Qtde.MAX'
      'ESTQ_QTDE_RETIRA'#9'10'#9'Qtde. Retirada'
      'PROcod'#9'8'#9'C'#243'd.Prod'
      'PROdesc'#9'38'#9'Descri'#231#227'o'
      'UVENdesc'#9'12'#9'UV'
      'AreaDESC'#9'7'#9#193'rea'
      'POSdesc'#9'10'#9'Posi'#231#227'o'
      'ESTQ_LOTE'#9'10'#9'Lote'
      'ROM_DTBATCH'#9'10'#9'Batch'
      'ROM_DTVENCTO'#9'10'#9'Vencimento')
    IniAttributes.FileName = 'delphi32.ini'
    IniAttributes.SectionName = 'FManifestoGRID'
    IniAttributes.Delimiter = ';;'
    TitleColor = clLime
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alTop
    Color = clWhite
    DataSource = DS_ESTQ
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    KeyOptions = [dgEnterToTab, dgAllowInsert]
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    TabOrder = 3
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
  object Panel3: TPanel
    Left = 0
    Top = 433
    Width = 886
    Height = 24
    Align = alTop
    Caption = 'NOTAS FISCAIS'
    TabOrder = 4
  end
  object DBMemo1: TDBMemo
    Left = 0
    Top = 457
    Width = 886
    Height = 77
    Align = alClient
    DataField = 'NFS_GERAL'
    DataSource = dsMani
    ReadOnly = True
    TabOrder = 5
  end
  object qrMani: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT '
      '    MANI_ID,'
      'MANI_PESO,MANI_VOLUME  ,                        '
      #9'            MANI_DATA,'
      '                MANI_QTDEPALLET,'
      '                MANI_QTDEUV, NFS_GERAL'
      'FROM MANIFESTO'
      'WHERE MANI_ENT_COL = '#39'G'#39)
    Left = 536
    Top = 240
    object qrManiMANI_ID: TAutoIncField
      DisplayLabel = 'Manifesto'
      DisplayWidth = 10
      FieldName = 'MANI_ID'
      ReadOnly = True
    end
    object qrManiMANI_DATA: TDateTimeField
      DisplayLabel = 'Data'
      DisplayWidth = 18
      FieldName = 'MANI_DATA'
    end
    object qrManiMANI_PESO: TFloatField
      DisplayLabel = 'Peso'
      DisplayWidth = 10
      FieldName = 'MANI_PESO'
      DisplayFormat = '###,##0.000'
    end
    object qrManiMANI_VOLUME: TFloatField
      DisplayLabel = 'Volume'
      DisplayWidth = 10
      FieldName = 'MANI_VOLUME'
      DisplayFormat = '###,##0.000'
    end
    object qrManiMANI_QTDEPALLET: TIntegerField
      DisplayLabel = 'Pallets'
      DisplayWidth = 10
      FieldName = 'MANI_QTDEPALLET'
    end
    object qrManiMANI_QTDEUV: TFloatField
      DisplayLabel = 'Qtde UV'
      DisplayWidth = 10
      FieldName = 'MANI_QTDEUV'
    end
    object qrManiNFS_GERAL: TStringField
      FieldName = 'NFS_GERAL'
      Size = 4000
    end
  end
  object dsMani: TDataSource
    DataSet = qrMani
    OnDataChange = dsManiDataChange
    Left = 592
    Top = 240
  end
  object DS_ESTQ: TwwDataSource
    DataSet = Q_ESTQ
    Left = 318
    Top = 376
  end
  object Q_PROD: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'select PRO_ID, PRO_COD,PRO_DESC from PRODUTO'
      ''
      '')
    ValidateWithMask = True
    Left = 238
    Top = 376
    object Q_PRODPRO_ID: TAutoIncField
      FieldName = 'PRO_ID'
      Origin = 'NBFDADOS.PRODUTO.PRO_ID'
    end
    object Q_PRODPRO_COD: TStringField
      FieldName = 'PRO_COD'
      Origin = 'NBFDADOS.PRODUTO.PRO_COD'
      FixedChar = True
      Size = 16
    end
    object Q_PRODPRO_DESC: TStringField
      FieldName = 'PRO_DESC'
      Origin = 'NBFDADOS.PRODUTO.PRO_DESC'
      FixedChar = True
      Size = 40
    end
  end
  object Q_AREAux: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select AR_ID,AR_NOME from AREA')
    ValidateWithMask = True
    Left = 558
    Top = 376
    object Q_AREAuxAR_ID: TAutoIncField
      FieldName = 'AR_ID'
      Origin = 'NBFDADOS.AREA.AR_ID'
    end
    object Q_AREAuxAR_NOME: TStringField
      FieldName = 'AR_NOME'
      Origin = 'NBFDADOS.AREA.AR_NOME'
      FixedChar = True
      Size = 40
    end
  end
  object Q_POS2: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'select A.POS_COD,A.AR_ID,A.POS_UTILIZADO,A.POS_ID'
      'from AREA_POSICOES A order by A.POS_COD')
    ValidateWithMask = True
    Left = 422
    Top = 352
    object Q_POS2POS_COD: TStringField
      FieldName = 'POS_COD'
      Origin = 'NBFDADOS.AREA_POSICOES.POS_COD'
      FixedChar = True
      Size = 5
    end
    object Q_POS2AR_ID: TIntegerField
      FieldName = 'AR_ID'
      Origin = 'NBFDADOS.AREA_POSICOES.AR_ID'
    end
    object Q_POS2POS_UTILIZADO: TStringField
      FieldName = 'POS_UTILIZADO'
      Origin = 'NBFDADOS.AREA_POSICOES.POS_UTILIZADO'
      FixedChar = True
      Size = 1
    end
    object Q_POS2POS_ID: TAutoIncField
      FieldName = 'POS_ID'
      Origin = 'NBFDADOS.AREA_POSICOES.POS_ID'
    end
  end
  object Q_ESTQ: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select A.*,B.PRO_COD'
      'from ESTOQUE_geral A,PRODUTO B '
      'where A.MANI_ID = :MANI_ID '
      'and  A.PRO_ID = B.PRO_ID'
      '/*order by PRO_ID,AR_ID,POS_ID,ESTQ_QTDE desc*/'
      'order by B.PRO_COD')
    ValidateWithMask = True
    Left = 656
    Top = 312
    ParamData = <
      item
        DataType = ftInteger
        Name = 'MANI_ID'
        ParamType = ptInput
      end>
    object Q_ESTQESTQ_TAG: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Pallet TAG'
      DisplayWidth = 10
      FieldName = 'ESTQ_TAG'
      Origin = 'NBFDADOS.ESTOQUE.ESTQ_TAG'
    end
    object Q_ESTQESTQ_QTDE: TFloatField
      DisplayLabel = 'Qtde.MAX'
      DisplayWidth = 10
      FieldName = 'ESTQ_QTDE'
      Origin = 'NBFDADOS.ESTOQUE.ESTQ_QTDE'
      DisplayFormat = '0.000'
      EditFormat = '0.000'
    end
    object Q_ESTQESTQ_QTDE_RETIRA: TFloatField
      DisplayLabel = 'Qtde. Retirada'
      DisplayWidth = 10
      FieldName = 'ESTQ_QTDE_RETIRA'
      Origin = 'NBFDADOS.ESTOQUE.ESTQ_QTDE_RETIRA'
      DisplayFormat = '0.000'
      EditFormat = '0.000'
    end
    object Q_ESTQPROcod: TStringField
      DisplayLabel = 'C'#243'd.Prod'
      DisplayWidth = 8
      FieldKind = fkLookup
      FieldName = 'PROcod'
      LookupDataSet = Q_PROD
      LookupKeyFields = 'PRO_ID'
      LookupResultField = 'PRO_COD'
      KeyFields = 'PRO_ID'
      Size = 16
      Lookup = True
    end
    object Q_ESTQPROdesc: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 38
      FieldKind = fkLookup
      FieldName = 'PROdesc'
      LookupDataSet = Q_PROD
      LookupKeyFields = 'PRO_ID'
      LookupResultField = 'PRO_DESC'
      KeyFields = 'PRO_ID'
      Size = 40
      Lookup = True
    end
    object Q_ESTQUVENdesc: TStringField
      Alignment = taCenter
      DisplayLabel = 'UV'
      DisplayWidth = 12
      FieldKind = fkLookup
      FieldName = 'UVENdesc'
      LookupDataSet = Q_UNIDVEND2
      LookupKeyFields = 'UVEN_ID'
      LookupResultField = 'UVEN_NOME'
      KeyFields = 'UVEN_ID'
      Size = 40
      Lookup = True
    end
    object Q_ESTQAreaDESC: TStringField
      DisplayLabel = #193'rea'
      DisplayWidth = 7
      FieldKind = fkLookup
      FieldName = 'AreaDESC'
      LookupDataSet = Q_AREAux
      LookupKeyFields = 'AR_ID'
      LookupResultField = 'AR_NOME'
      KeyFields = 'AR_ID'
      Size = 40
      Lookup = True
    end
    object Q_ESTQPOSdesc: TStringField
      Alignment = taCenter
      DisplayLabel = 'Posi'#231#227'o'
      DisplayWidth = 10
      FieldKind = fkLookup
      FieldName = 'POSdesc'
      LookupDataSet = Q_POS2
      LookupKeyFields = 'POS_ID'
      LookupResultField = 'POS_COD'
      KeyFields = 'POS_ID'
      Size = 10
      Lookup = True
    end
    object Q_ESTQESTQ_LOTE: TStringField
      Alignment = taCenter
      DisplayLabel = 'Lote'
      DisplayWidth = 10
      FieldName = 'ESTQ_LOTE'
      Origin = 'NBFDADOS.ESTOQUE.ESTQ_ID'
      FixedChar = True
      Size = 10
    end
    object Q_ESTQROM_DTBATCH: TDateTimeField
      Alignment = taCenter
      DisplayLabel = 'Batch'
      DisplayWidth = 10
      FieldName = 'ROM_DTBATCH'
      Origin = 'NBFDADOS.ESTOQUE.ROM_DTBATCH'
    end
    object Q_ESTQROM_DTVENCTO: TDateTimeField
      DisplayLabel = 'Vencimento'
      DisplayWidth = 10
      FieldName = 'ROM_DTVENCTO'
      Origin = 'NBFDADOS.ESTOQUE.ROM_DTVENCTO'
    end
    object Q_ESTQESTQ_ID: TAutoIncField
      FieldName = 'ESTQ_ID'
      Origin = 'NBFDADOS.ESTOQUE.ESTQ_ID'
      Visible = False
    end
    object Q_ESTQAR_ID: TIntegerField
      FieldName = 'AR_ID'
      Origin = 'NBFDADOS.ESTOQUE.AR_ID'
      Visible = False
    end
    object Q_ESTQPOS_ID: TIntegerField
      Alignment = taCenter
      FieldName = 'POS_ID'
      Origin = 'NBFDADOS.ESTOQUE.POS_ID'
      Visible = False
    end
    object Q_ESTQOS_ID_ORIG: TIntegerField
      FieldName = 'OS_ID_ORIG'
      Origin = 'NBFDADOS.ESTOQUE.OS_ID_ORIG'
      Visible = False
    end
    object Q_ESTQPRO_ID: TIntegerField
      FieldName = 'PRO_ID'
      Origin = 'NBFDADOS.ESTOQUE.PRO_ID'
      Visible = False
    end
    object Q_ESTQESTQ_PESO: TFloatField
      FieldName = 'ESTQ_PESO'
      Origin = 'NBFDADOS.ESTOQUE.ESTQ_PESO'
      Visible = False
    end
    object Q_ESTQOS_ID_DEST: TIntegerField
      FieldName = 'OS_ID_DEST'
      Origin = 'NBFDADOS.ESTOQUE.OS_ID_DEST'
      Visible = False
    end
    object Q_ESTQESTQ_DT_ENTRADA: TDateTimeField
      FieldName = 'ESTQ_DT_ENTRADA'
      Origin = 'NBFDADOS.ESTOQUE.ESTQ_DT_ENTRADA'
      Visible = False
      EditMask = '!99/99/9999;1;_'
    end
    object Q_ESTQESTQ_DT_SAIDA: TDateTimeField
      FieldName = 'ESTQ_DT_SAIDA'
      Origin = 'NBFDADOS.ESTOQUE.ESTQ_DT_SAIDA'
      Visible = False
      EditMask = '!99/99/9999;1;_'
    end
    object Q_ESTQESTQ_DT_ULMOV: TDateTimeField
      FieldName = 'ESTQ_DT_ULMOV'
      Origin = 'NBFDADOS.ESTOQUE.ESTQ_DT_ULMOV'
      Visible = False
      EditMask = '!99/99/9999;1;_'
    end
    object Q_ESTQROM_ID_ENT: TIntegerField
      FieldName = 'ROM_ID_ENT'
      Origin = 'NBFDADOS.ESTOQUE.ROM_ID_ENT'
      Visible = False
    end
    object Q_ESTQROM_ID_SAIDA: TIntegerField
      FieldName = 'ROM_ID_SAIDA'
      Origin = 'NBFDADOS.ESTOQUE.ROM_ID_SAIDA'
      Visible = False
    end
    object Q_ESTQUVEN_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'UVEN_ID'
      Origin = 'NBFDADOS.ESTOQUE.ESTQ_ID'
      Visible = False
    end
    object Q_ESTQMANI_ID: TIntegerField
      FieldName = 'MANI_ID'
      Origin = 'NBFDADOS.ESTOQUE.MANI_ID'
      Visible = False
    end
    object Q_ESTQAR_ID_ANTERIOR: TIntegerField
      FieldName = 'AR_ID_ANTERIOR'
      Origin = 'NBFDADOS.ESTOQUE.AR_ID_ANTERIOR'
      Visible = False
    end
    object Q_ESTQPOS_ID_ANTERIOR: TIntegerField
      FieldName = 'POS_ID_ANTERIOR'
      Origin = 'NBFDADOS.ESTOQUE.POS_ID_ANTERIOR'
      Visible = False
    end
    object Q_ESTQPAR_ID: TIntegerField
      FieldName = 'PAR_ID'
      Origin = 'NBFDADOS.ESTOQUE.PAR_ID'
      Visible = False
    end
  end
  object Q_UNIDVEND2: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select UVEN_ID,UVEN_NOME from UNIDVENDA'
      'order by UVEN_NOME'
      ''
      '')
    ValidateWithMask = True
    Left = 198
    Top = 432
    object Q_UNIDVEND2UVEN_ID: TAutoIncField
      FieldName = 'UVEN_ID'
      Origin = 'NBFDADOS.UNIDVENDA.UVEN_ID'
    end
    object Q_UNIDVEND2UVEN_NOME: TStringField
      FieldName = 'UVEN_NOME'
      Origin = 'NBFDADOS.UNIDVENDA.UVEN_NOME'
      FixedChar = True
      Size = 40
    end
  end
end
