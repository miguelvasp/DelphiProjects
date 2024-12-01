object FFRelProdutos: TFFRelProdutos
  Left = 287
  Top = 133
  Width = 682
  Height = 414
  BorderIcons = []
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 2
    Top = 2
    Width = 649
    Height = 45
    BevelInner = bvLowered
    TabOrder = 0
    object SpeedButton3: TSpeedButton
      Left = 616
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
    object Label16: TLabel
      Left = 9
      Top = 5
      Width = 274
      Height = 29
      Caption = 'Relatório de Produtos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -24
      Font.Name = 'Georgia'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 2
    Top = 50
    Width = 649
    Height = 311
    BevelInner = bvLowered
    TabOrder = 1
    object SBT_VISU: TSpeedButton
      Left = 12
      Top = 272
      Width = 101
      Height = 27
      Hint = 'Visualiza relatório na tela'
      Caption = '&Visualiza'
      Glyph.Data = {
        42010000424D4201000000000000760000002800000013000000110000000100
        040000000000CC00000000000000000000001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888880008880000000000000888880008880FFFFFFFFFFF0888880008880
        FFFFFFFFFFF0888880008880F77F777F77F0888880008880FFFFFFFFFFF08888
        80008880F7F77F7F77F0888880008880FFFFFFFFFFF0888880008880F77F7F7F
        77F0888880008880FFFFFFFFFFF0888880008880F7777F77F7F0888880008880
        FFFFFFFFFFF0888880008880F77F77F777F0888880008880FFFFFFFFFFF08888
        80038880FFFFFFFFFFF08880000F88800000000000008880000F888888888888
        88888880000F}
      ParentShowHint = False
      ShowHint = True
      OnClick = SBT_VISUClick
    end
    object SpeedButton1: TSpeedButton
      Left = 116
      Top = 272
      Width = 141
      Height = 27
      Hint = 'Visualiza relatório na tela'
      Caption = 'Exportar para Excel'
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton1Click
    end
    object GroupBox6: TGroupBox
      Left = 6
      Top = 10
      Width = 638
      Height = 247
      Caption = 'Seleção de Filtros'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Label20: TLabel
        Left = 5
        Top = 59
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
      object Label2: TLabel
        Left = 24
        Top = 91
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
      object DBText3: TDBText
        Left = 226
        Top = 90
        Width = 406
        Height = 17
        DataField = 'PRO_DESC'
        DataSource = DS_PROD
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object wwDBLookupCombo4: TwwDBLookupCombo
        Left = 70
        Top = 54
        Width = 352
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
          'CLIN_RAZA'#9'50'#9'Razão Social'#9'F')
        LookupTable = Q_CLINBF
        LookupField = 'CLIN_ID'
        DropDownCount = 16
        ParentFont = False
        TabOrder = 0
        AutoDropDown = True
        ShowButton = True
        AllowClearKey = True
        OnEnter = wwDBLookupCombo4Enter
        OnExit = wwDBLookupCombo4Exit
      end
      object wwDBLookupCombo1: TwwDBLookupCombo
        Left = 70
        Top = 88
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
          'PRO_COD'#9'16'#9'Código'#9'F'
          'PRO_DESC'#9'40'#9'Descrição'#9'F')
        LookupTable = Q_PROD
        LookupField = 'PRO_ID'
        DropDownCount = 15
        Enabled = False
        ParentFont = False
        TabOrder = 1
        AutoDropDown = True
        ShowButton = True
        AllowClearKey = True
        OnCloseUp = wwDBLookupCombo1CloseUp
        OnEnter = wwDBLookupCombo1Enter
        OnExit = wwDBLookupCombo1Exit
      end
      object RadioGroup1: TRadioGroup
        Left = 251
        Top = 142
        Width = 152
        Height = 65
        Caption = 'Produto Descontinuado ?'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ItemIndex = 1
        Items.Strings = (
          'Sim'
          'Não')
        ParentFont = False
        TabOrder = 2
      end
      object Panel12: TPanel
        Left = 224
        Top = 84
        Width = 410
        Height = 31
        BevelOuter = bvNone
        TabOrder = 3
        Visible = False
      end
    end
    object ProgressBar1: TProgressBar
      Left = 272
      Top = 280
      Width = 150
      Height = 17
      Min = 0
      Max = 100
      TabOrder = 1
    end
  end
  object Q_CLINBF: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'select CLIN_ID,CLIN_RAZA from CLIENTENBF '
      ' where'
      '(CLIN_CONTRATO <> '#39'I'#39' and CLIN_CONTRATO <> '#39'R'#39') '
      'order by CLIN_RAZA')
    ValidateWithMask = True
    Left = 474
    Top = 216
    object Q_CLINBFCLIN_RAZA: TStringField
      DisplayLabel = 'Razão Social'
      DisplayWidth = 50
      FieldName = 'CLIN_RAZA'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_RAZA'
      FixedChar = True
      Size = 50
    end
    object Q_CLINBFCLIN_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'CLIN_ID'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_ID'
      Visible = False
    end
  end
  object Q_PROD: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    DataSource = DS_CLINBF
    SQL.Strings = (
      'select * from PRODUTO where'
      'CLIN_ID = :CLIN_ID'
      'order by PRO_DESC'
      '')
    ValidateWithMask = True
    Left = 479
    Top = 264
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'CLIN_ID'
        ParamType = ptUnknown
      end>
    object Q_PRODPRO_COD: TStringField
      DisplayLabel = 'Código'
      DisplayWidth = 16
      FieldName = 'PRO_COD'
      Origin = 'NBFDADOS.PRODUTO.PRO_COD'
      FixedChar = True
      Size = 16
    end
    object Q_PRODPRO_DESC: TStringField
      DisplayLabel = 'Descrição'
      DisplayWidth = 40
      FieldName = 'PRO_DESC'
      Origin = 'NBFDADOS.PRODUTO.PRO_DESC'
      FixedChar = True
      Size = 40
    end
    object Q_PRODPRO_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'PRO_ID'
      Origin = 'NBFDADOS.PRODUTO.PRO_ID'
      Visible = False
    end
    object Q_PRODCLIN_ID: TIntegerField
      FieldName = 'CLIN_ID'
      Origin = 'NBFDADOS.PRODUTO.CLIN_ID'
    end
    object Q_PRODTPRO_ID: TIntegerField
      FieldName = 'TPRO_ID'
      Origin = 'NBFDADOS.PRODUTO.TPRO_ID'
    end
    object Q_PRODPRO_ORIGEM: TStringField
      FieldName = 'PRO_ORIGEM'
      Origin = 'NBFDADOS.PRODUTO.PRO_ORIGEM'
      FixedChar = True
      Size = 1
    end
    object Q_PRODUVEN_ID: TIntegerField
      FieldName = 'UVEN_ID'
      Origin = 'NBFDADOS.PRODUTO.UVEN_ID'
    end
    object Q_PRODUVEN_ID_EXP: TIntegerField
      FieldName = 'UVEN_ID_EXP'
      Origin = 'NBFDADOS.PRODUTO.UVEN_ID_EXP'
    end
    object Q_PRODPRO_QTDE_PALLET: TIntegerField
      FieldName = 'PRO_QTDE_PALLET'
      Origin = 'NBFDADOS.PRODUTO.PRO_QTDE_PALLET'
    end
    object Q_PRODPRO_PESO: TFloatField
      FieldName = 'PRO_PESO'
      Origin = 'NBFDADOS.PRODUTO.PRO_PESO'
      DisplayFormat = '###,###,##0.0000'
      EditFormat = '###,###,##0.0000'
    end
    object Q_PRODPRO_VOLUME: TFloatField
      FieldName = 'PRO_VOLUME'
      Origin = 'NBFDADOS.PRODUTO.PRO_VOLUME'
      DisplayFormat = '###,###,##0.000000'
      EditFormat = '###,###,##0.000000'
    end
    object Q_PRODPRO_VOLUME_PALLET: TFloatField
      FieldName = 'PRO_VOLUME_PALLET'
      Origin = 'NBFDADOS.PRODUTO.PRO_VOLUME_PALLET'
      DisplayFormat = '###,###,##0.000000'
      EditFormat = '###,###,##0.000000'
    end
    object Q_PRODPRO_ALTURA: TIntegerField
      FieldName = 'PRO_ALTURA'
      Origin = 'NBFDADOS.PRODUTO.PRO_ALTURA'
    end
    object Q_PRODPRO_LASTRO: TIntegerField
      FieldName = 'PRO_LASTRO'
      Origin = 'NBFDADOS.PRODUTO.PRO_LASTRO'
    end
    object Q_PRODPRO_VALIDDIAS: TAutoIncField
      FieldName = 'PRO_VALIDDIAS'
      Origin = 'NBFDADOS.PRODUTO.PRO_VALIDDIAS'
    end
    object Q_PRODMARCADOR: TStringField
      FieldName = 'MARCADOR'
      Origin = 'NBFDADOS.PRODUTO.MARCADOR'
      FixedChar = True
      Size = 1
    end
    object Q_PRODPRO_PESO_LIQ: TFloatField
      FieldName = 'PRO_PESO_LIQ'
      Origin = 'NBFDADOS.PRODUTO.PRO_PESO_LIQ'
      DisplayFormat = '###,###,##0.0000'
      EditFormat = '###,###,##0.0000'
    end
    object Q_PRODPRO_DESCONTINUA: TStringField
      FieldName = 'PRO_DESCONTINUA'
      Origin = 'NBFDADOS.PRODUTO.PRO_DESCONTINUA'
      FixedChar = True
      Size = 1
    end
    object Q_PRODPRO_COMPR: TFloatField
      FieldName = 'PRO_COMPR'
      Origin = 'NBFDADOS.PRODUTO.PRO_COMPR'
      DisplayFormat = '###,###,##0.000'
      EditFormat = '###,###,##0.000'
    end
    object Q_PRODPRO_LARG: TFloatField
      FieldName = 'PRO_LARG'
      Origin = 'NBFDADOS.PRODUTO.PRO_LARG'
      DisplayFormat = '###,###,##0.000'
      EditFormat = '###,###,##0.000'
    end
    object Q_PRODPRO_ALT: TFloatField
      FieldName = 'PRO_ALT'
      Origin = 'NBFDADOS.PRODUTO.PRO_ALT'
      DisplayFormat = '###,###,##0.000'
      EditFormat = '###,###,##0.000'
    end
    object Q_PRODQTDE_UVUE: TFloatField
      FieldName = 'QTDE_UVUE'
      Origin = 'NBFDADOS.PRODUTO.QTDE_UVUE'
      DisplayFormat = '0.000'
      EditFormat = '0.000'
    end
    object Q_PRODPRO_QTDE_PALLETUV: TFloatField
      FieldName = 'PRO_QTDE_PALLETUV'
      Origin = 'NBFDADOS.PRODUTO.PRO_QTDE_PALLETUV'
      DisplayFormat = '0.000'
      EditFormat = '0.000'
    end
  end
  object DS_CLINBF: TwwDataSource
    DataSet = Q_CLINBF
    Left = 538
    Top = 210
  end
  object DS_PROD: TwwDataSource
    DataSet = Q_PROD
    Left = 546
    Top = 268
  end
  object qrProdutos: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    OnCalcFields = qrProdutosCalcFields
    Parameters = <>
    SQL.Strings = (
      'select '
      #9'A.*,'
      #9'B.TPRO_NOME,'
      
        #9'(SELECT TOP 1 UVEN_NOME FROM UNIDVENDA WHERE UVEN_ID = A.UVEN_I' +
        'D) UNIDADE_VENDA,'
      
        #9'(SELECT TOP 1 UVEN_NOME FROM UNIDVENDA WHERE UVEN_ID = A.UVEN_I' +
        'D_EXP) UNIDADE_EXPEDICAO'
      'from PRODUTO A LEFT OUTER JOIN TPPRODUTO_CLINBF B'
      'ON A.TPRO_ID = B.TPRO_ID'
      'ORDER BY A.PRO_COD')
    Left = 88
    Top = 212
    object qrProdutosCLIENTE_NBF: TStringField
      DisplayLabel = 'CCliente NBF'
      FieldKind = fkCalculated
      FieldName = 'CLIENTE_NBF'
      Size = 100
      Calculated = True
    end
    object qrProdutosPRO_COD: TStringField
      DisplayLabel = 'Código'
      FieldName = 'PRO_COD'
      Size = 16
    end
    object qrProdutosPRO_DESC: TStringField
      DisplayLabel = 'Descrição'
      FieldName = 'PRO_DESC'
      Size = 40
    end
    object qrProdutosTIPO_ORIGEM: TStringField
      DisplayLabel = 'Origem'
      FieldKind = fkCalculated
      FieldName = 'TIPO_ORIGEM'
      Size = 100
      Calculated = True
    end
    object qrProdutosQTDE_UVUE: TFloatField
      DisplayLabel = 'Qtde. UV / UE'
      FieldName = 'QTDE_UVUE'
    end
    object qrProdutosPRO_QTDE_PALLET: TIntegerField
      DisplayLabel = 'Qtde Pallet'
      FieldName = 'PRO_QTDE_PALLET'
    end
    object qrProdutosPRO_QTDE_PALLETUV: TFloatField
      DisplayLabel = 'Qtde por Pallet'
      FieldName = 'PRO_QTDE_PALLETUV'
    end
    object qrProdutosPRO_PESO: TFloatField
      DisplayLabel = 'Peso'
      FieldName = 'PRO_PESO'
    end
    object qrProdutosPRO_VOLUME: TFloatField
      DisplayLabel = 'Volume'
      FieldName = 'PRO_VOLUME'
    end
    object qrProdutosPRO_VOLUME_PALLET: TFloatField
      DisplayLabel = 'Volume Pallet'
      FieldName = 'PRO_VOLUME_PALLET'
    end
    object qrProdutosPRO_ALTURA: TIntegerField
      DisplayLabel = 'Altura'
      FieldName = 'PRO_ALTURA'
    end
    object qrProdutosPRO_LASTRO: TIntegerField
      DisplayLabel = 'Lastro'
      FieldName = 'PRO_LASTRO'
    end
    object qrProdutosPRO_VALIDDIAS: TIntegerField
      DisplayLabel = 'Validade dias'
      FieldName = 'PRO_VALIDDIAS'
    end
    object qrProdutosPRO_PESO_LIQ: TFloatField
      DisplayLabel = 'Peso Liq.'
      FieldName = 'PRO_PESO_LIQ'
    end
    object qrProdutosPRO_DESCONTINUA: TStringField
      DisplayLabel = 'Produto descontinuado'
      FieldName = 'PRO_DESCONTINUA'
      Size = 1
    end
    object qrProdutosPRO_COMPR: TFloatField
      DisplayLabel = 'Comprimento'
      FieldName = 'PRO_COMPR'
    end
    object qrProdutosPRO_LARG: TFloatField
      DisplayLabel = 'Largura'
      FieldName = 'PRO_LARG'
    end
    object qrProdutosPRO_ALT: TFloatField
      DisplayLabel = 'Altura'
      FieldName = 'PRO_ALT'
    end
    object qrProdutosPRO_REDUZICMS: TFloatField
      DisplayLabel = 'Redução de ICMS'
      FieldName = 'PRO_REDUZICMS'
    end
    object qrProdutosTIPO_SEGURO: TStringField
      DisplayLabel = 'Isenção'
      FieldKind = fkCalculated
      FieldName = 'TIPO_SEGURO'
      Size = 100
      Calculated = True
    end
    object qrProdutosPRO_ICMS: TFloatField
      DisplayLabel = 'ICMS'
      FieldName = 'PRO_ICMS'
    end
    object qrProdutosPRO_CST1: TStringField
      FieldName = 'PRO_CST1'
      Size = 7
    end
    object qrProdutosPRO_CST2: TStringField
      FieldName = 'PRO_CST2'
      Size = 7
    end
    object qrProdutosPRO_CST3: TStringField
      FieldName = 'PRO_CST3'
      Size = 7
    end
    object qrProdutosPRO_CST4: TStringField
      FieldName = 'PRO_CST4'
      Size = 7
    end
    object qrProdutosPRO_CST5: TStringField
      FieldName = 'PRO_CST5'
      Size = 7
    end
    object qrProdutosPRO_CST6: TStringField
      FieldName = 'PRO_CST6'
      Size = 7
    end
    object qrProdutosEMBALAGEM: TStringField
      FieldName = 'EMBALAGEM'
      Size = 50
    end
    object qrProdutosTPRO_NOME: TStringField
      DisplayLabel = 'Tipo Produto'
      FieldName = 'TPRO_NOME'
      Size = 40
    end
    object qrProdutosUNIDADE_VENDA: TStringField
      DisplayLabel = 'Un. Venda'
      FieldName = 'UNIDADE_VENDA'
      ReadOnly = True
      Size = 40
    end
    object qrProdutosUNIDADE_EXPEDICAO: TStringField
      DisplayLabel = 'Unidade Expedição'
      FieldName = 'UNIDADE_EXPEDICAO'
      ReadOnly = True
      Size = 40
    end
    object qrProdutosPRO_ORIGEM: TStringField
      FieldName = 'PRO_ORIGEM'
      Size = 1
    end
    object qrProdutosPRO_ISENCAO: TStringField
      DisplayLabel = 'Isenção'
      FieldName = 'PRO_ISENCAO'
      Size = 1
    end
  end
  object dsExcel: TDataSource
    DataSet = qrProdutos
    Left = 168
    Top = 212
  end
end
