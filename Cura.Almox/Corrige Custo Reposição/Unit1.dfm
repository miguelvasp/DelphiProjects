object Form1: TForm1
  Left = 192
  Top = 124
  Width = 1074
  Height = 480
  Caption = 'Corre'#231#227'o de Custos'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 65
    Width = 1058
    Height = 377
    DittoAttributes.ShortCutDittoField = 0
    DittoAttributes.ShortCutDittoRecord = 0
    DittoAttributes.Options = []
    DisableThemesInTitle = False
    Selected.Strings = (
      'MATDESC'#9'40'#9'Material'
      'MARCADESC'#9'20'#9'Marca'
      'For_Codi'#9'15'#9'Fornecedor'
      'N_Lote'#9'15'#9'Lote'
      'Valid'#9'10'#9'Validade'
      'Qtde'#9'10'#9'Qtde'
      'Uni_Sigla'#9'2'#9'Un.'
      'Data'#9'10'#9'Data'
      'Custo'#9'10'#9'Custo'
      'REPOSICAO'#9'10'#9'C. Reposi'#231#227'o')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 8
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = DataSource1
    TabOrder = 0
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1058
    Height = 65
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 41
      Height = 14
      Caption = 'Material'
    end
    object wwDBLookupCombo1: TwwDBLookupCombo
      Left = 8
      Top = 24
      Width = 681
      Height = 22
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'MAT_DESC'#9'100'#9'MAT_DESC'#9#9)
      LookupTable = qrMat
      LookupField = 'MAT_ID'
      TabOrder = 0
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
    end
    object Button1: TButton
      Left = 696
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Filtrar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 776
      Top = 24
      Width = 241
      Height = 25
      Caption = 'Atualizar valores com base na nota'
      TabOrder = 2
      OnClick = Button2Click
    end
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 'FILE NAME=C:\ALMOX.udl'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 472
    Top = 272
  end
  object qrMat: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'SELECT MAT_ID, MAT_DESC FROM MATERIAIS'
      'ORDER BY MAT_DESC')
    Left = 424
    Top = 272
    object qrMatMAT_DESC: TStringField
      DisplayWidth = 100
      FieldName = 'MAT_DESC'
      Size = 100
    end
    object qrMatMAT_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'MAT_ID'
      ReadOnly = True
      Visible = False
    end
  end
  object qrBusca: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Mat_ID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select  * from Almox'
      'where isnull(Qtde_Retirada, 0 ) = 0'
      'and Mat_ID = :Mat_ID'
      'ORDER BY Almox_ID DESC')
    Left = 256
    Top = 200
    object qrBuscaMATDESC: TStringField
      DisplayLabel = 'Material'
      DisplayWidth = 40
      FieldKind = fkLookup
      FieldName = 'MATDESC'
      LookupDataSet = qrMatAux
      LookupKeyFields = 'MAT_ID'
      LookupResultField = 'MAT_DESC'
      KeyFields = 'Mat_ID'
      Size = 100
      Lookup = True
    end
    object qrBuscaMARCADESC: TStringField
      DisplayLabel = 'Marca'
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = 'MARCADESC'
      LookupDataSet = qrMarcas
      LookupKeyFields = 'MARCA_ID'
      LookupResultField = 'MARCA_DESC'
      KeyFields = 'Marca_ID'
      Size = 70
      Lookup = True
    end
    object qrBuscaFor_Codi: TStringField
      DisplayLabel = 'Fornecedor'
      DisplayWidth = 15
      FieldName = 'For_Codi'
      FixedChar = True
      Size = 15
    end
    object qrBuscaN_Lote: TWideStringField
      DisplayLabel = 'Lote'
      DisplayWidth = 15
      FieldName = 'N_Lote'
    end
    object qrBuscaValid: TDateTimeField
      DisplayLabel = 'Validade'
      DisplayWidth = 10
      FieldName = 'Valid'
    end
    object qrBuscaQtde: TFloatField
      DisplayWidth = 10
      FieldName = 'Qtde'
    end
    object qrBuscaUni_Sigla: TStringField
      DisplayLabel = 'Un.'
      DisplayWidth = 2
      FieldName = 'Uni_Sigla'
      Size = 2
    end
    object qrBuscaData: TDateTimeField
      DisplayWidth = 10
      FieldName = 'Data'
    end
    object qrBuscaCusto: TFloatField
      DisplayWidth = 10
      FieldName = 'Custo'
    end
    object qrBuscaREPOSICAO: TFloatField
      DisplayLabel = 'C. Reposi'#231#227'o'
      DisplayWidth = 10
      FieldName = 'REPOSICAO'
    end
    object qrBuscaMat_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'Mat_ID'
      Visible = False
    end
    object qrBuscaLocal_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'Local_ID'
      Visible = False
    end
    object qrBuscaMarca_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'Marca_ID'
      Visible = False
    end
    object qrBuscaQtde_Retirada: TFloatField
      DisplayWidth = 10
      FieldName = 'Qtde_Retirada'
      Visible = False
    end
    object qrBuscaQtde_Input: TFloatField
      DisplayWidth = 10
      FieldName = 'Qtde_Input'
      Visible = False
    end
    object qrBuscaTipo: TStringField
      DisplayWidth = 1
      FieldName = 'Tipo'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object qrBuscaMot_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'Mot_ID'
      Visible = False
    end
    object qrBuscaUni_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'Uni_ID'
      Visible = False
    end
    object qrBuscaObs: TMemoField
      DisplayWidth = 10
      FieldName = 'Obs'
      Visible = False
      BlobType = ftMemo
    end
    object qrBuscaUsuario: TWideStringField
      DisplayWidth = 50
      FieldName = 'Usuario'
      Visible = False
      Size = 50
    end
    object qrBuscaTD_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'TD_ID'
      Visible = False
    end
    object qrBuscaDocto: TStringField
      DisplayWidth = 20
      FieldName = 'Docto'
      Visible = False
    end
    object qrBuscaRec_Item_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'Rec_Item_ID'
      Visible = False
    end
    object qrBuscaAlmox_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'Almox_ID'
      ReadOnly = True
      Visible = False
    end
    object qrBuscaAlmox_ID_Mestre: TIntegerField
      DisplayWidth = 10
      FieldName = 'Almox_ID_Mestre'
      Visible = False
    end
  end
  object DataSource1: TDataSource
    DataSet = qrBusca
    Left = 312
    Top = 176
  end
  object qrMatAux: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM MATERIAIS')
    Left = 584
    Top = 264
    object qrMatAuxMAT_ID: TAutoIncField
      FieldName = 'MAT_ID'
      ReadOnly = True
    end
    object qrMatAuxMAT_DESC: TStringField
      FieldName = 'MAT_DESC'
      Size = 100
    end
    object qrMatAuxGRU_ID: TIntegerField
      FieldName = 'GRU_ID'
    end
    object qrMatAuxUNI_ID: TIntegerField
      FieldName = 'UNI_ID'
    end
    object qrMatAuxMAT_IPI: TFloatField
      FieldName = 'MAT_IPI'
    end
    object qrMatAuxMAT_CONTROLA: TStringField
      FieldName = 'MAT_CONTROLA'
      FixedChar = True
      Size = 1
    end
    object qrMatAuxMAT_ESTMIN: TFloatField
      FieldName = 'MAT_ESTMIN'
    end
    object qrMatAuxMAT_LOTEPED: TFloatField
      FieldName = 'MAT_LOTEPED'
    end
    object qrMatAuxMAT_LOCACAO: TStringField
      FieldName = 'MAT_LOCACAO'
      Size = 10
    end
    object qrMatAuxCusto_Medio: TFloatField
      FieldName = 'Custo_Medio'
    end
    object qrMatAuxGENERICO: TStringField
      FieldName = 'GENERICO'
      FixedChar = True
      Size = 1
    end
    object qrMatAuxMAT_ATIVO: TStringField
      FieldName = 'MAT_ATIVO'
      FixedChar = True
      Size = 1
    end
    object qrMatAuxMAT_ESTMAX: TFloatField
      FieldName = 'MAT_ESTMAX'
    end
    object qrMatAuxCONTROLA_GRUPO: TStringField
      FieldName = 'CONTROLA_GRUPO'
      Size = 1
    end
  end
  object qrMarcas: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM MARCAS')
    Left = 464
    Top = 224
    object qrMarcasMARCA_ID: TAutoIncField
      FieldName = 'MARCA_ID'
      ReadOnly = True
    end
    object qrMarcasMARCA_DESC: TStringField
      FieldName = 'MARCA_DESC'
    end
  end
  object ADOStoredProc1: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'ACERTA_CUSTO_ESTOQUE;1'
    Parameters = <
      item
        Name = '@REC_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
      end>
    Left = 512
    Top = 120
  end
  object qrAux: TADOQuery
    Connection = ADOConnection1
    Parameters = <
      item
        Name = 'Mat_ID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT'
      #9'REC_ID,'
      #9'ROUND(Preco_Unit / CASE WHEN MATMARCA_CONVERSAO = NULL THEN 1'
      #9#9#9#9#9'  WHEN MATMARCA_CONVERSAO = 0 THEN 1 '
      #9#9#9'     ELSE MATMARCA_CONVERSAO END'#9', 2) AS VALOR'
      'FROM Rec_Item A INNER JOIN MATERIAL_MARCA B'
      'ON A.MatMarca_ID = B.MATMARCA_ID'
      'WHERE (MATMARCA_CONVERSAO IS NOT NULL OR MATMARCA_CONVERSAO > 0)'
      'AND A.MAT_ID = :MAT_ID'
      'ORDER BY Rec_ID DESC')
    Left = 152
    Top = 176
    object qrAuxREC_ID: TIntegerField
      FieldName = 'REC_ID'
    end
    object qrAuxVALOR: TFloatField
      FieldName = 'VALOR'
      ReadOnly = True
    end
  end
end
