object frmDevolucaoMaterialRequisicaoNovaCad: TfrmDevolucaoMaterialRequisicaoNovaCad
  Left = 540
  Top = 224
  Width = 1009
  Height = 656
  Caption = 'Devolução de Materiais'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 993
    Height = 65
    Align = alTop
    TabOrder = 0
    object Label12: TLabel
      Left = 16
      Top = 10
      Width = 50
      Height = 16
      Caption = 'Material'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 552
      Top = 11
      Width = 26
      Height = 16
      Caption = 'Lote'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cboMatPesq: TwwDBLookupCombo
      Left = 16
      Top = 26
      Width = 489
      Height = 21
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'MAT_DESC'#9'60'#9'MAT_DESC'#9'F')
      LookupTable = qrMaterial
      LookupField = 'MAT_ID'
      TabOrder = 0
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
    end
    object edtLote: TEdit
      Left = 552
      Top = 26
      Width = 209
      Height = 21
      TabOrder = 1
    end
    object Button1: TButton
      Left = 832
      Top = 8
      Width = 147
      Height = 25
      Caption = 'Buscar'
      TabOrder = 2
      OnClick = Button1Click
    end
    object btnGetMaterial: TBitBtn
      Left = 506
      Top = 21
      Width = 32
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = btnGetMaterialClick
      Glyph.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        08000000000040020000E30E0000E30E00000001000000010000212121000018
        290029292900393939005A39390042424200181852005252520073635200315A
        5A005A5A5A0094735A000039630063636300736B63004A6B6B006B6B6B007B73
        6B00735A73007373730073737B007B7B7B0094847B00A5847B00BD9C7B006384
        84008C8C8C009C948C00AD948C0094949400A59C940084849C009C9C9C00B5AD
        9C00CEBD9C00849CA500A5A5A5009494AD00ADADAD00D6BDAD00FFE7AD00B59C
        B500E7CEB500BDBDBD00D6C6BD009CADC600ADC6C600C6C6C600EFD6C600C6C6
        CE00CECECE00FFDECE00D6D6D600F7E7D600DEDEDE00EFE7DE00D6DEE700DEE7
        E700E7E7E700EFE7E700F7EFE700DEE7EF00EFEFEF00F7F7F700FFF7F700FFFF
        F700FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00424242424242
        4242424242424242424242424242424242424242424242424242424242424242
        4242424242424242424242424242424242424242424242424224000A42424242
        42424242424242424242424242424242240210101A4242424242424242424242
        424242424242422002152B241A4242424242424242424242424242424242420A
        0A2B2B1A42424242424242424242424242420D1A1A4242030A1D1A4242424242
        42424242424242424202110B080300241A2042424242424242424242201F1F20
        07223335271B0705201F1F1F241F1F2B42424242010101020E241B1B1B201B03
        010101010101010142424242090A1E07222B1C17182C2A0D060109141A1E0A04
        424242420919370A2A2C2C2C2C2C2A1613201D262F37191242424242091F4313
        22283C3E412A2A152636434343432509424242421F09432B1B28333C352A211A
        4343413F43430F1F4242424223094340241D2A302A211A3E3F3E3E3E40430929
        42424242230C433F3E2F24202020243F3E3E3E3E3E430929424242422E06413E
        3A3A3A3A3E24243E3A3A3A3A3E410629424242422E063F3A3636363A3A24243A
        3A3636363A3F0629424242422E0C2D322F2F2F2F322020322F2F2F2F322F0C2B
        42424242422E24242B2B2B2B2B20202B2B2B2B2B24242B424242424242424242
        2B242424242020242424242B4242424242424242424242424242424242424242
        4242424242424242424242424242424242424242424242424242424242424242
        4242424242424242424242424242424242424242424242424242}
    end
  end
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 65
    Width = 993
    Height = 511
    Selected.Strings = (
      'MAT_DESC'#9'80'#9'Material'
      'N_Lote'#9'20'#9'Lote'
      'Valid'#9'18'#9'Validade'#9'F'
      'Qtde'#9'10'#9'Qtde'
      'Devolucao'#9'10'#9'Qtde Devolvida'
      'Aux'#9'10'#9'Qtde Devolver')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 5
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = DataSource1
    TabOrder = 1
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
  end
  object Panel2: TPanel
    Left = 0
    Top = 576
    Width = 993
    Height = 42
    Align = alBottom
    TabOrder = 2
    object Button3: TButton
      Left = 800
      Top = 8
      Width = 177
      Height = 25
      Caption = 'Confirmar baixa no Estoque'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = Button3Click
    end
  end
  object qrLocal: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT Local_ID, Descricao FROM Local'
      'ORDER BY Descricao')
    Left = 780
    Top = 264
    object qrLocalDescricao: TStringField
      DisplayWidth = 50
      FieldName = 'Descricao'
      Size = 50
    end
    object qrLocalLocal_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'Local_ID'
      ReadOnly = True
      Visible = False
    end
  end
  object qrBuscaListagem: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT RR_ID, R.Req_ID, R.Data, C.MAT_DESC, A.N_Lote, A.Valid, L' +
        '.Descricao, A.Devolucao, Aux, A.Qtde, For_Codi, A.Marca_id, A.Ma' +
        't_ID, tipoConsumo, R.LOCAL_ID AS LOCAL_DESTINO,  A.Local_ID AS L' +
        'OCAL_ORIGEM'
      'FROM REQ_LOTE A '
      'INNER JOIN REQ_ITEM B ON A.REQ_ITEM_ID = B.REQ_ITEM_ID '
      'INNER JOIN MATERIAIS C ON A.MAT_ID = C.MAT_ID'
      'INNER JOIN Req_Capa R ON B.Req_ID = R.Req_ID'
      'INNER JOIN LOCAL L ON A.Local_ID = L.Local_ID'
      'WHERE B.REQ_ID = 174844'
      'AND B.STATUS = '#39'F'#39
      
        'and A.QTDE > case when A.DEVOLUCAO is null then 0 else A.DEVOLUC' +
        'AO END'
      'ORDER BY C.MAT_DESC')
    Left = 336
    Top = 296
    object qrBuscaListagemMAT_DESC: TStringField
      DisplayLabel = 'Material'
      DisplayWidth = 80
      FieldName = 'MAT_DESC'
      ProviderFlags = []
      Size = 100
    end
    object qrBuscaListagemN_Lote: TWideStringField
      DisplayLabel = 'Lote'
      DisplayWidth = 20
      FieldName = 'N_Lote'
      ProviderFlags = []
    end
    object qrBuscaListagemValid: TDateTimeField
      DisplayLabel = 'Validade'
      DisplayWidth = 18
      FieldName = 'Valid'
      ProviderFlags = []
    end
    object qrBuscaListagemQtde: TFloatField
      DisplayWidth = 10
      FieldName = 'Qtde'
    end
    object qrBuscaListagemDevolucao: TFloatField
      DisplayLabel = 'Qtde Devolvida'
      DisplayWidth = 10
      FieldName = 'Devolucao'
      ProviderFlags = [pfInUpdate]
    end
    object qrBuscaListagemAux: TFloatField
      DisplayLabel = 'Qtde Devolver'
      DisplayWidth = 10
      FieldName = 'Aux'
      ProviderFlags = [pfInUpdate]
    end
    object qrBuscaListagemDescricao: TStringField
      DisplayWidth = 50
      FieldName = 'Descricao'
      ProviderFlags = []
      Visible = False
      Size = 50
    end
    object qrBuscaListagemRR_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'RR_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
      Visible = False
    end
    object qrBuscaListagemReq_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'Req_ID'
      ProviderFlags = []
      Visible = False
    end
    object qrBuscaListagemData: TDateTimeField
      DisplayWidth = 18
      FieldName = 'Data'
      ProviderFlags = []
      Visible = False
    end
    object qrBuscaListagemFor_Codi: TStringField
      FieldName = 'For_Codi'
      FixedChar = True
      Size = 15
    end
    object qrBuscaListagemMarca_id: TIntegerField
      FieldName = 'Marca_id'
    end
    object qrBuscaListagemMat_ID: TIntegerField
      FieldName = 'Mat_ID'
    end
    object qrBuscaListagemtipoConsumo: TStringField
      FieldName = 'tipoConsumo'
      FixedChar = True
      Size = 1
    end
    object qrBuscaListagemLOCAL_DESTINO: TIntegerField
      FieldName = 'LOCAL_DESTINO'
    end
    object qrBuscaListagemLOCAL_ORIGEM: TIntegerField
      FieldName = 'LOCAL_ORIGEM'
    end
  end
  object DataSource1: TDataSource
    DataSet = qrBuscaListagem
    Left = 304
    Top = 224
  end
  object STP_ATUAL_ESTOQUE: TADOStoredProc
    Connection = FMenu.ADOConnection
    ProcedureName = 'SP_ATUAL_LOTE;1'
    Parameters = <
      item
        Name = '@N_LOTE'
        Attributes = [paNullable]
        DataType = ftFixedChar
        Size = 20
        Value = Null
      end
      item
        Name = '@QTDE'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@MAT_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@FOR_CODI'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
        Value = Null
      end
      item
        Name = '@MOT_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@TIPO'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = Null
      end
      item
        Name = '@USUARIO'
        Attributes = [paNullable]
        DataType = ftFixedChar
        Size = 50
        Value = Null
      end
      item
        Name = '@MSG'
        Attributes = [paNullable]
        DataType = ftString
        Direction = pdInputOutput
        Size = 400
        Value = Null
      end
      item
        Name = '@TD_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@DOCTO'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@REC_ITEM_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@DATAX'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@MARCA_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@VALID'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@LOCAL_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Prepared = True
    Left = 250
    Top = 158
  end
  object qrAux: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    Left = 464
    Top = 128
  end
  object qrEstoque: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <
      item
        Name = 'local'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'MAT_ID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'LOTE'
        DataType = ftFixedChar
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      'SELECT MAT_ID, N_Lote, SUM(QTDE) AS QTDE FROM vwEstoque '
      'WHERE LOCAL_ID = :local'
      'AND MAT_ID = :MAT_ID'
      'AND N_Lote = :LOTE'
      'GROUP BY MAT_ID, N_Lote')
    Left = 536
    Top = 264
    object qrEstoqueMAT_ID: TIntegerField
      FieldName = 'MAT_ID'
    end
    object qrEstoqueN_Lote: TWideStringField
      FieldName = 'N_Lote'
    end
    object qrEstoqueQTDE: TFloatField
      FieldName = 'QTDE'
      ReadOnly = True
    end
  end
  object qrMaterial: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT MAT_ID, CodigoMaterial + '#39' '#39' + MAT_DESC AS MAT_DESC FROM ' +
        'MATERIAIS'
      'WHERE GENERICO NOT IN ('#39'S'#39')'
      'AND MAT_ATIVO = '#39'S'#39
      'ORDER BY MAT_DESC')
    Left = 633
    Top = 263
    object qrMaterialMAT_DESC: TStringField
      DisplayWidth = 60
      FieldName = 'MAT_DESC'
      Size = 60
    end
    object qrMaterialMAT_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'MAT_ID'
      ReadOnly = True
      Visible = False
    end
  end
end
