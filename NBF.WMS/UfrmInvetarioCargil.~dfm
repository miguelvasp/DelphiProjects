object frmInventarioCargil: TfrmInventarioCargil
  Left = 352
  Top = 227
  Width = 528
  Height = 263
  Caption = 'Inventário'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
  object Label1: TLabel
    Left = 32
    Top = 16
    Width = 47
    Height = 14
    Caption = 'CLIENTE'
  end
  object Label2: TLabel
    Left = 32
    Top = 72
    Width = 56
    Height = 14
    Caption = 'PRODUTO'
  end
  object Label3: TLabel
    Left = 32
    Top = 120
    Width = 30
    Height = 14
    Caption = 'LOTE'
  end
  object wwDBLookupCombo1: TwwDBLookupCombo
    Left = 32
    Top = 32
    Width = 449
    Height = 22
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'CLIN_RAZA'#9'50'#9'CLIN_RAZA'#9'F')
    LookupTable = qrClientes
    LookupField = 'CLIN_ID'
    TabOrder = 0
    AutoDropDown = True
    ShowButton = True
    AllowClearKey = False
    OnCloseUp = wwDBLookupCombo1CloseUp
  end
  object wwDBLookupCombo2: TwwDBLookupCombo
    Left = 32
    Top = 88
    Width = 449
    Height = 22
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'PRO_COD'#9'16'#9'PRO_COD'#9'F'
      'PRO_DESC'#9'40'#9'PRO_DESC'#9'F')
    LookupTable = qrProdutos
    LookupField = 'PRO_ID'
    TabOrder = 1
    AutoDropDown = True
    ShowButton = True
    AllowClearKey = False
  end
  object Button1: TButton
    Left = 32
    Top = 176
    Width = 161
    Height = 25
    Caption = 'Expotar Excel'
    TabOrder = 2
    OnClick = Button1Click
  end
  object edtLote: TEdit
    Left = 32
    Top = 136
    Width = 209
    Height = 22
    TabOrder = 3
  end
  object ProgressBar1: TProgressBar
    Left = 0
    Top = 208
    Width = 512
    Height = 17
    Align = alBottom
    Min = 0
    Max = 100
    TabOrder = 4
  end
  object qrClientes: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select CLIN_ID, CLIN_RAZA FROM CLIENTENBF'
      'ORDER BY CLIN_RAZA')
    Left = 416
    Top = 128
    object qrClientesCLIN_RAZA: TStringField
      DisplayWidth = 50
      FieldName = 'CLIN_RAZA'
      Size = 50
    end
    object qrClientesCLIN_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'CLIN_ID'
      ReadOnly = True
      Visible = False
    end
  end
  object qrProdutos: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CLIN_ID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT PRO_ID, PRO_COD, PRO_DESC FROM PRODUTO'
      'WHERE CLIN_ID = :CLIN_ID'
      'ORDER BY PRO_COD')
    Left = 472
    Top = 128
    object qrProdutosPRO_COD: TStringField
      DisplayWidth = 16
      FieldName = 'PRO_COD'
      Size = 16
    end
    object qrProdutosPRO_DESC: TStringField
      DisplayWidth = 40
      FieldName = 'PRO_DESC'
      Size = 40
    end
    object qrProdutosPRO_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'PRO_ID'
      ReadOnly = True
      Visible = False
    end
  end
  object qrEstoque: TADOQuery
    Active = True
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select  TOP 10'
      #9'*'
      'from ESTOQUE  A (NOLOCK)INNER JOIN PRODUTO B (NOLOCK)'
      'ON A.PRO_ID = B.PRO_ID')
    Left = 352
    Top = 136
    object qrEstoqueESTQ_ID: TAutoIncField
      FieldName = 'ESTQ_ID'
      ReadOnly = True
    end
    object qrEstoqueAR_ID: TIntegerField
      FieldName = 'AR_ID'
    end
    object qrEstoquePOS_ID: TIntegerField
      FieldName = 'POS_ID'
    end
    object qrEstoqueOS_ID_ORIG: TIntegerField
      FieldName = 'OS_ID_ORIG'
    end
    object qrEstoquePRO_ID: TIntegerField
      FieldName = 'PRO_ID'
    end
    object qrEstoqueESTQ_QTDE: TFloatField
      FieldName = 'ESTQ_QTDE'
    end
    object qrEstoqueESTQ_QTDE_RETIRA: TFloatField
      FieldName = 'ESTQ_QTDE_RETIRA'
    end
    object qrEstoqueMANI_ID: TIntegerField
      FieldName = 'MANI_ID'
    end
    object qrEstoqueESTQ_PESO: TFloatField
      FieldName = 'ESTQ_PESO'
    end
    object qrEstoqueOS_ID_DEST: TIntegerField
      FieldName = 'OS_ID_DEST'
    end
    object qrEstoqueESTQ_DT_ENTRADA: TDateTimeField
      FieldName = 'ESTQ_DT_ENTRADA'
    end
    object qrEstoqueESTQ_DT_SAIDA: TDateTimeField
      FieldName = 'ESTQ_DT_SAIDA'
    end
    object qrEstoqueROM_ID_ENT: TIntegerField
      FieldName = 'ROM_ID_ENT'
    end
    object qrEstoqueROM_ID_SAIDA: TIntegerField
      FieldName = 'ROM_ID_SAIDA'
    end
    object qrEstoqueROM_DTBATCH: TDateTimeField
      FieldName = 'ROM_DTBATCH'
    end
    object qrEstoqueROM_DTVENCTO: TDateTimeField
      FieldName = 'ROM_DTVENCTO'
    end
    object qrEstoqueESTQ_LOTE: TStringField
      FieldName = 'ESTQ_LOTE'
    end
    object qrEstoqueUVEN_ID: TIntegerField
      FieldName = 'UVEN_ID'
    end
    object qrEstoqueESTQ_TAG: TIntegerField
      FieldName = 'ESTQ_TAG'
    end
    object qrEstoqueAR_ID_ANTERIOR: TIntegerField
      FieldName = 'AR_ID_ANTERIOR'
    end
    object qrEstoquePOS_ID_ANTERIOR: TIntegerField
      FieldName = 'POS_ID_ANTERIOR'
    end
    object qrEstoqueESTQ_DT_ULMOV: TDateTimeField
      FieldName = 'ESTQ_DT_ULMOV'
    end
    object qrEstoquePAR_ID: TIntegerField
      FieldName = 'PAR_ID'
    end
    object qrEstoqueGEROU_OPER_ROMSAIDA: TStringField
      FieldName = 'GEROU_OPER_ROMSAIDA'
      Size = 1
    end
    object qrEstoqueMARCADOR: TStringField
      FieldName = 'MARCADOR'
      Size = 1
    end
    object qrEstoqueESTQ_ESCOLHEULOTE: TStringField
      FieldName = 'ESTQ_ESCOLHEULOTE'
      Size = 1
    end
    object qrEstoqueQTDE_GERAL: TFloatField
      FieldName = 'QTDE_GERAL'
    end
    object qrEstoquePRO_ID_1: TAutoIncField
      FieldName = 'PRO_ID_1'
      ReadOnly = True
    end
    object qrEstoqueCLIN_ID: TIntegerField
      FieldName = 'CLIN_ID'
    end
    object qrEstoquePRO_DESC: TStringField
      FieldName = 'PRO_DESC'
      Size = 40
    end
    object qrEstoqueTPRO_ID: TIntegerField
      FieldName = 'TPRO_ID'
    end
    object qrEstoquePRO_COD: TStringField
      FieldName = 'PRO_COD'
      Size = 16
    end
    object qrEstoquePRO_ORIGEM: TStringField
      FieldName = 'PRO_ORIGEM'
      Size = 1
    end
    object qrEstoqueUVEN_ID_1: TIntegerField
      FieldName = 'UVEN_ID_1'
    end
    object qrEstoqueUVEN_ID_EXP: TIntegerField
      FieldName = 'UVEN_ID_EXP'
    end
    object qrEstoqueQTDE_UVUE: TFloatField
      FieldName = 'QTDE_UVUE'
    end
    object qrEstoquePRO_QTDE_PALLET: TIntegerField
      FieldName = 'PRO_QTDE_PALLET'
    end
    object qrEstoquePRO_QTDE_PALLETUV: TFloatField
      FieldName = 'PRO_QTDE_PALLETUV'
    end
    object qrEstoquePRO_PESO: TFloatField
      FieldName = 'PRO_PESO'
    end
    object qrEstoquePRO_VOLUME: TFloatField
      FieldName = 'PRO_VOLUME'
    end
    object qrEstoquePRO_VOLUME_PALLET: TFloatField
      FieldName = 'PRO_VOLUME_PALLET'
    end
    object qrEstoquePRO_ALTURA: TIntegerField
      FieldName = 'PRO_ALTURA'
    end
    object qrEstoquePRO_LASTRO: TIntegerField
      FieldName = 'PRO_LASTRO'
    end
    object qrEstoquePRO_VALIDDIAS: TIntegerField
      FieldName = 'PRO_VALIDDIAS'
    end
    object qrEstoqueMARCADOR_1: TStringField
      FieldName = 'MARCADOR_1'
      Size = 1
    end
    object qrEstoquePRO_PESO_LIQ: TFloatField
      FieldName = 'PRO_PESO_LIQ'
    end
    object qrEstoquePRO_DESCONTINUA: TStringField
      FieldName = 'PRO_DESCONTINUA'
      Size = 1
    end
    object qrEstoquePRO_COMPR: TFloatField
      FieldName = 'PRO_COMPR'
    end
    object qrEstoquePRO_LARG: TFloatField
      FieldName = 'PRO_LARG'
    end
    object qrEstoquePRO_ALT: TFloatField
      FieldName = 'PRO_ALT'
    end
    object qrEstoquePRO_REDUZICMS: TFloatField
      FieldName = 'PRO_REDUZICMS'
    end
    object qrEstoquePRO_ISENCAO: TStringField
      FieldName = 'PRO_ISENCAO'
      Size = 1
    end
    object qrEstoquePRO_ICMS: TFloatField
      FieldName = 'PRO_ICMS'
    end
    object qrEstoquePRO_CST1: TStringField
      FieldName = 'PRO_CST1'
      Size = 7
    end
    object qrEstoquePRO_CST2: TStringField
      FieldName = 'PRO_CST2'
      Size = 7
    end
    object qrEstoquePRO_CST3: TStringField
      FieldName = 'PRO_CST3'
      Size = 7
    end
    object qrEstoquePRO_CST4: TStringField
      FieldName = 'PRO_CST4'
      Size = 7
    end
    object qrEstoquePRO_CST5: TStringField
      FieldName = 'PRO_CST5'
      Size = 7
    end
    object qrEstoquePRO_CST6: TStringField
      FieldName = 'PRO_CST6'
      Size = 7
    end
    object qrEstoqueULTIMO_PRECO: TFloatField
      FieldName = 'ULTIMO_PRECO'
    end
    object qrEstoqueSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 10
    end
    object qrEstoqueEMBALAGEM: TStringField
      FieldName = 'EMBALAGEM'
      Size = 50
    end
    object qrEstoqueTIPO_PRODUTO: TStringField
      FieldName = 'TIPO_PRODUTO'
      Size = 10
    end
  end
  object qrAux: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    Left = 288
    Top = 152
  end
end
