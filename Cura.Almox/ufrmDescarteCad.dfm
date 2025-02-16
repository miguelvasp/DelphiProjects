object frmDescarteCad: TfrmDescarteCad
  Left = 309
  Top = 154
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Descarte de Materiais'
  ClientHeight = 560
  ClientWidth = 914
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Comic Sans MS'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 17
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 113
    Width = 914
    Height = 447
    ActivePage = TabSheet1
    Align = alClient
    TabIndex = 0
    TabOrder = 0
    FixedDimension = 23
    object TabSheet1: TRzTabSheet
      Caption = 'Itens'
      object Label2: TLabel
        Left = 392
        Top = 24
        Width = 106
        Height = 17
        Caption = 'Motivo de descarte'
      end
      object RadioGroup1: TRadioGroup
        Left = 8
        Top = 0
        Width = 377
        Height = 33
        Columns = 3
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ItemIndex = 0
        Items.Strings = (
          'C�digo EAN'
          'C�digo de Barras'
          'C�digo do Material')
        ParentFont = False
        TabOrder = 0
        OnClick = RadioGroup1Click
      end
      object Button2: TButton
        Left = 776
        Top = 38
        Width = 126
        Height = 25
        Caption = 'Adicionar Material'
        Enabled = False
        TabOrder = 1
        OnClick = Button2Click
      end
      object wwDBGrid1: TwwDBGrid
        Left = 8
        Top = 72
        Width = 897
        Height = 381
        Selected.Strings = (
          'MAT_DESC'#9'50'#9'Material'
          'MARCA_DESC'#9'10'#9'Marca'
          'Quantidade'#9'10'#9'Qtde'
          'LOTE'#9'20'#9'Lote'
          'VALIDADE'#9'10'#9'Validade'
          'Status'#9'18'#9'Status'#9'F')
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        DataSource = DataSource1
        ReadOnly = True
        TabOrder = 2
        TitleAlignment = taLeftJustify
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Comic Sans MS'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
        OnCalcCellColors = wwDBGrid1CalcCellColors
      end
      object edtCodigo: TEdit
        Left = 8
        Top = 40
        Width = 377
        Height = 25
        TabOrder = 3
      end
      object cboMotivo: TwwDBLookupCombo
        Left = 392
        Top = 40
        Width = 377
        Height = 25
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'Descricao'#9'250'#9'Descricao'#9#9)
        LookupTable = qrMotivos
        LookupField = 'Id'
        Style = csDropDownList
        TabOrder = 4
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
      end
      object cboMaterialSeleciona: TwwDBLookupCombo
        Left = 8
        Top = 40
        Width = 377
        Height = 25
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'MAT_DESC'#9'100'#9'MAT_DESC'#9#9)
        LookupTable = qrMaterialEstoque
        LookupField = 'MAT_ID'
        TabOrder = 5
        Visible = False
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 914
    Height = 113
    Align = alTop
    TabOrder = 1
    object Label14: TLabel
      Left = 96
      Top = 19
      Width = 29
      Height = 17
      Caption = 'Local'
    end
    object Label9: TLabel
      Left = 440
      Top = 18
      Width = 88
      Height = 17
      Caption = 'Centro de Custo'
    end
    object Label1: TLabel
      Left = 8
      Top = 19
      Width = 35
      Height = 17
      Caption = 'C�digo'
      FocusControl = DBEdit1
    end
    object Label3: TLabel
      Left = 96
      Top = 67
      Width = 287
      Height = 17
      Caption = 'Local Referente (Local ao qual o material pertencia)'
    end
    object cboLocal: TwwDBLookupCombo
      Left = 96
      Top = 35
      Width = 337
      Height = 25
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'Descricao'#9'50'#9'Descricao'#9'F')
      DataField = 'LocalID'
      DataSource = dsDescarte
      LookupTable = qrLocal
      LookupField = 'Local_ID'
      TabOrder = 0
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
    end
    object cboCCPesq: TwwDBLookupCombo
      Left = 440
      Top = 34
      Width = 337
      Height = 25
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'CC_Desc'#9'40'#9'CC_Desc'#9'F')
      DataField = 'CC_ID'
      DataSource = dsDescarte
      LookupTable = qrCentroCusto
      LookupField = 'CC_ID'
      TabOrder = 1
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
    end
    object Button1: TButton
      Left = 792
      Top = 32
      Width = 75
      Height = 25
      Caption = 'Salvar'
      TabOrder = 2
      OnClick = Button1Click
    end
    object DBEdit1: TDBEdit
      Left = 8
      Top = 35
      Width = 64
      Height = 25
      DataField = 'Id'
      DataSource = dsCadastro
      Enabled = False
      TabOrder = 3
    end
    object cboLocalReferente: TwwDBLookupCombo
      Left = 96
      Top = 83
      Width = 337
      Height = 25
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'Descricao'#9'50'#9'Descricao'#9'F')
      DataField = 'LocalReferenteId'
      DataSource = dsDescarte
      LookupTable = qrLocalReferente
      LookupField = 'Local_ID'
      TabOrder = 4
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
    end
  end
  object dsCadastro: TDataSource
    DataSet = qrDescarte
    Left = 377
    Top = 500
  end
  object qrDescarte: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <
      item
        Name = 'ID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM DescarteMateriais'
      'WHERE ID = :ID')
    Left = 737
    Top = 500
    object qrDescarteId: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object qrDescarteLocalID: TIntegerField
      FieldName = 'LocalID'
    end
    object qrDescarteCC_ID: TIntegerField
      FieldName = 'CC_ID'
    end
    object qrDescarteData: TDateTimeField
      FieldName = 'Data'
    end
    object qrDescarteCH: TIntegerField
      FieldName = 'CH'
    end
    object qrDescarteLocalReferenteId: TIntegerField
      FieldName = 'LocalReferenteId'
    end
  end
  object qrItens: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT top 1 * FROM DescarteMateriaisItem')
    Left = 665
    Top = 500
    object qrItensId: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object qrItensIdDescarte: TIntegerField
      FieldName = 'IdDescarte'
    end
    object qrItensMAT_ID: TIntegerField
      FieldName = 'MAT_ID'
    end
    object qrItensMARCA_ID: TIntegerField
      FieldName = 'MARCA_ID'
    end
    object qrItensLOTE: TStringField
      FieldName = 'LOTE'
      Size = 250
    end
    object qrItensVALIDADE: TDateTimeField
      FieldName = 'VALIDADE'
    end
    object qrItensQuantidade: TIntegerField
      FieldName = 'Quantidade'
    end
    object qrItensReposicao: TBCDField
      FieldName = 'Reposicao'
      Precision = 18
      Size = 2
    end
    object qrItensStatus: TStringField
      FieldName = 'Status'
      Size = 1
    end
    object qrItensFornecedor: TStringField
      FieldName = 'Fornecedor'
      Size = 250
    end
    object qrItensIdMotivoDescarte: TIntegerField
      FieldName = 'IdMotivoDescarte'
    end
  end
  object qrMaterial: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select MAT_ID, MAT_DESC, U.UNI_SIGLA'
      'from MATERIAIS M inner join UNIDADES U'
      'ON M.UNI_ID = U.UNI_ID'
      
        'where case when MAT_ATIVO IS null then '#39'N'#39' else MAT_ATIVO end = ' +
        #39'S'#39
      'AND CASE WHEN GENERICO IS NULL THEN '#39'N'#39' ELSE GENERICO END = '#39'N'#39
      'AND ISNULL(CONTROLA_GRUPO, '#39'N'#39' ) = ISNULL('#39':CONTROLA'#39', '#39'N'#39')'
      'order by mat_Desc')
    Left = 449
    Top = 503
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
    object qrMaterialUNI_SIGLA: TStringField
      FieldName = 'UNI_SIGLA'
      Size = 2
    end
  end
  object qrLocal: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'LOCAL_ID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM LOCAL'
      'WHERE LOCAL_ID = :LOCAL_ID')
    Left = 592
    Top = 504
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
    object qrLocalDisponivelSN: TStringField
      FieldName = 'DisponivelSN'
      FixedChar = True
      Size = 1
    end
    object qrLocalCONSUMO: TStringField
      FieldName = 'CONSUMO'
      FixedChar = True
      Size = 1
    end
    object qrLocalCONTROLA_ESTOQUE: TStringField
      FieldName = 'CONTROLA_ESTOQUE'
      FixedChar = True
      Size = 1
    end
  end
  object qrLocalizaEAN: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <
      item
        Name = 'cf'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 255
        Value = Null
      end
      item
        Name = 'CF0'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 255
        Value = Null
      end
      item
        Name = 'EAN'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'SELECT MAT_ID'
      'FROM MATERIAIS'
      'WHERE CodigoFornecedor = :cf '
      'OR CodigoFornecedor = :CF0'
      'or EAN = :EAN')
    Left = 616
    Top = 264
    object qrLocalizaEANMAT_ID: TAutoIncField
      FieldName = 'MAT_ID'
      ReadOnly = True
    end
  end
  object qrEstoque: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <
      item
        Name = 'ch'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM DescarteMateriaisTemp'
      'where ch = :ch')
    Left = 137
    Top = 357
    object qrEstoqueId: TLargeintField
      FieldName = 'Id'
      ReadOnly = True
    end
    object qrEstoqueQtde: TBCDField
      FieldName = 'Qtde'
      Precision = 18
      Size = 2
    end
    object qrEstoqueMAT_ID: TIntegerField
      FieldName = 'MAT_ID'
    end
    object qrEstoqueMAT_DESC: TStringField
      FieldName = 'MAT_DESC'
      Size = 250
    end
    object qrEstoqueGRU_DESC: TStringField
      FieldName = 'GRU_DESC'
      Size = 250
    end
    object qrEstoqueGRU_ID: TIntegerField
      FieldName = 'GRU_ID'
    end
    object qrEstoqueUNI_ID: TIntegerField
      FieldName = 'UNI_ID'
    end
    object qrEstoqueMARCA_DESC: TStringField
      FieldName = 'MARCA_DESC'
      Size = 250
    end
    object qrEstoqueUNI_SIGLA: TStringField
      FieldName = 'UNI_SIGLA'
      Size = 250
    end
    object qrEstoqueDS_LOC: TStringField
      FieldName = 'DS_LOC'
      Size = 250
    end
    object qrEstoqueMARCA_ID: TIntegerField
      FieldName = 'MARCA_ID'
    end
    object qrEstoqueN_Lote: TStringField
      FieldName = 'N_Lote'
      Size = 250
    end
    object qrEstoqueValid: TDateTimeField
      FieldName = 'Valid'
    end
    object qrEstoqueREPOSICAO: TBCDField
      FieldName = 'REPOSICAO'
      Precision = 18
      Size = 2
    end
    object qrEstoqueEAN: TStringField
      FieldName = 'EAN'
      Size = 250
    end
    object qrEstoqueFor_Codi: TStringField
      FieldName = 'For_Codi'
      Size = 250
    end
    object qrEstoqueCH: TIntegerField
      FieldName = 'CH'
    end
    object qrEstoqueQtdeSolicitada: TIntegerField
      FieldName = 'QtdeSolicitada'
    end
  end
  object qrMateriais: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <
      item
        Name = 'MAT_ID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM MATERIAIS M'
      'INNER JOIN UNIDADES U ON M.UNI_ID = U.UNI_ID'
      'WHERE M.MAT_ID = :MAT_ID')
    Left = 320
    Top = 504
    object qrMateriaisMAT_ID: TAutoIncField
      FieldName = 'MAT_ID'
      ReadOnly = True
    end
    object qrMateriaisMAT_DESC: TStringField
      FieldName = 'MAT_DESC'
      Size = 100
    end
    object qrMateriaisGRU_ID: TIntegerField
      FieldName = 'GRU_ID'
    end
    object qrMateriaisUNI_ID: TIntegerField
      FieldName = 'UNI_ID'
    end
    object qrMateriaisMAT_IPI: TFloatField
      FieldName = 'MAT_IPI'
    end
    object qrMateriaisMAT_CONTROLA: TStringField
      FieldName = 'MAT_CONTROLA'
      FixedChar = True
      Size = 1
    end
    object qrMateriaisMAT_ESTMIN: TFloatField
      FieldName = 'MAT_ESTMIN'
    end
    object qrMateriaisMAT_LOTEPED: TFloatField
      FieldName = 'MAT_LOTEPED'
    end
    object qrMateriaisMAT_LOCACAO: TStringField
      FieldName = 'MAT_LOCACAO'
      Size = 10
    end
    object qrMateriaisCusto_Medio: TFloatField
      FieldName = 'Custo_Medio'
    end
    object qrMateriaisGENERICO: TStringField
      FieldName = 'GENERICO'
      FixedChar = True
      Size = 1
    end
    object qrMateriaisMAT_ATIVO: TStringField
      FieldName = 'MAT_ATIVO'
      FixedChar = True
      Size = 1
    end
    object qrMateriaisMAT_ESTMAX: TFloatField
      FieldName = 'MAT_ESTMAX'
    end
    object qrMateriaisCONTROLA_GRUPO: TStringField
      FieldName = 'CONTROLA_GRUPO'
      Size = 1
    end
    object qrMateriaisCOD_BIONEXO: TStringField
      FieldName = 'COD_BIONEXO'
      Size = 255
    end
    object qrMateriaisRelConsumo: TStringField
      FieldName = 'RelConsumo'
      Size = 1
    end
    object qrMateriaisCritico: TStringField
      FieldName = 'Critico'
      Size = 1
    end
    object qrMateriaisMatLaboratorio: TStringField
      FieldName = 'MatLaboratorio'
      Size = 2
    end
    object qrMateriaisEAN: TStringField
      FieldName = 'EAN'
      Size = 50
    end
    object qrMateriaisLocalArmazem: TStringField
      FieldName = 'LocalArmazem'
      Size = 255
    end
    object qrMateriaisValorContrato: TFloatField
      FieldName = 'ValorContrato'
    end
    object qrMateriaisUNI_ID_1: TAutoIncField
      FieldName = 'UNI_ID_1'
      ReadOnly = True
    end
    object qrMateriaisUNI_SIGLA: TStringField
      FieldName = 'UNI_SIGLA'
      Size = 2
    end
    object qrMateriaisUNI_DESC: TStringField
      FieldName = 'UNI_DESC'
      Size = 10
    end
  end
  object qrAux: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    Left = 401
    Top = 237
  end
  object SP_AJALM: TwwStoredProc
    DatabaseName = 'Cura'
    SessionName = 'Sec_BaseFin'
    StoredProcName = 'dbo.SP_ATUAL_LOTE'
    ValidateWithMask = True
    Left = 196
    Top = 400
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Result'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = '@N_LOTE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = '@QTDE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@MAT_ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@FOR_CODI'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@MOT_ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@TIPO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@USUARIO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@MSG'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = '@TD_ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@DOCTO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@REC_ITEM_ID'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = '@DATAX'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@MARCA_ID'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = '@VALID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@LOCAL_ID'
        ParamType = ptInput
      end>
  end
  object qrGrid: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'IdDescarte'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT'
      #9'CodigoMaterial + '#39' '#39' + M.MAT_DESC AS MAT_DESC,'
      #9'MR.MARCA_DESC,'
      #9'I.Quantidade,'
      #9'I.LOTE,'
      #9'I.VALIDADE,'
      
        #9'CASE WHEN I.Status = '#39'A'#39' THEN '#39'Em Aberto'#39' WHEN I.Status = '#39'F'#39' T' +
        'HEN '#39'Baixado'#39' End as Status'
      'FROM DescarteMateriaisItem I'
      'INNER JOIN MATERIAIS M ON I.MAT_ID = M.MAT_ID'
      'INNER JOIN MARCAS MR ON I.MARCA_ID = MR.MARCA_ID'
      'where IdDescarte = :IdDescarte')
    Left = 137
    Top = 469
    object qrGridMAT_DESC: TStringField
      DisplayLabel = 'Material'
      DisplayWidth = 50
      FieldName = 'MAT_DESC'
      Size = 100
    end
    object qrGridMARCA_DESC: TStringField
      DisplayLabel = 'Marca'
      DisplayWidth = 10
      FieldName = 'MARCA_DESC'
    end
    object qrGridQuantidade: TIntegerField
      DisplayLabel = 'Qtde'
      DisplayWidth = 10
      FieldName = 'Quantidade'
    end
    object qrGridLOTE: TStringField
      DisplayLabel = 'Lote'
      DisplayWidth = 20
      FieldName = 'LOTE'
      Size = 250
    end
    object qrGridVALIDADE: TDateTimeField
      DisplayLabel = 'Validade'
      DisplayWidth = 10
      FieldName = 'VALIDADE'
    end
    object qrGridStatus: TStringField
      DisplayWidth = 18
      FieldName = 'Status'
      ReadOnly = True
      Size = 9
    end
  end
  object DataSource1: TDataSource
    DataSet = qrGrid
    Left = 185
    Top = 469
  end
  object dsDescarte: TDataSource
    DataSet = qrDescarte
    Left = 193
    Top = 181
  end
  object qrCentroCusto: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <
      item
        Name = 'USUARIO'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM CENTRO_CUSTO'
      'WHERE CC_ID in ('
      #9'SELECT AC.CC_ID FROM UsuarioAlmoxCentros AC'
      #9'WHERE AC.CH = :USUARIO'
      ')')
    Left = 256
    Top = 392
    object qrCentroCustoCC_Desc: TStringField
      DisplayWidth = 40
      FieldName = 'CC_Desc'
      Size = 40
    end
    object qrCentroCustoCC_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'CC_ID'
      ReadOnly = True
      Visible = False
    end
    object qrCentroCustoFinancSN: TStringField
      DisplayWidth = 1
      FieldName = 'FinancSN'
      Visible = False
      Size = 1
    end
  end
  object qrMotivos: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    SQL.Strings = (
      'select * from MotivoDescarteMaterial order by Descricao')
    Left = 449
    Top = 369
    object qrMotivosDescricao: TStringField
      DisplayWidth = 250
      FieldName = 'Descricao'
      Size = 250
    end
    object qrMotivosId: TAutoIncField
      DisplayWidth = 10
      FieldName = 'Id'
      ReadOnly = True
      Visible = False
    end
  end
  object qrBarras: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <
      item
        Name = 'ID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM CODIGO_BARRAS'
      'WHERE ID = :ID')
    Left = 712
    Top = 329
    object qrBarrasID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object qrBarrasMAT_ID: TIntegerField
      FieldName = 'MAT_ID'
    end
    object qrBarrasN_LOTE: TStringField
      FieldName = 'N_LOTE'
    end
    object qrBarrasVALIDADE: TDateTimeField
      FieldName = 'VALIDADE'
    end
    object qrBarrasMARCA_ID: TIntegerField
      FieldName = 'MARCA_ID'
    end
    object qrBarrasFOR_CODI: TStringField
      FieldName = 'FOR_CODI'
      Size = 15
    end
    object qrBarrasQTDE: TIntegerField
      FieldName = 'QTDE'
    end
    object qrBarrasREC_ID: TIntegerField
      FieldName = 'REC_ID'
    end
    object qrBarrasIMPRESSAO: TStringField
      FieldName = 'IMPRESSAO'
      Size = 1
    end
    object qrBarrasQTDE_SEL: TIntegerField
      FieldName = 'QTDE_SEL'
    end
    object qrBarrasREC_NF: TStringField
      FieldName = 'REC_NF'
      Size = 10
    end
    object qrBarrasREC_DATA: TDateTimeField
      FieldName = 'REC_DATA'
    end
  end
  object qrMaterialEstoque: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <
      item
        Name = 'lote'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT DISTINCT MAT_ID, MAT_DESC '
      'FROM vwEstoque'
      'WHERE LOCAL_ID = :lote'
      'ORDER BY MAT_DESC')
    Left = 505
    Top = 305
    object qrMaterialEstoqueMAT_DESC: TStringField
      DisplayWidth = 100
      FieldName = 'MAT_DESC'
      Size = 100
    end
    object qrMaterialEstoqueMAT_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'MAT_ID'
      Visible = False
    end
  end
  object qrBuscaReposicao: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <
      item
        Name = 'matID'
        Size = -1
        Value = Null
      end
      item
        Name = 'Marca'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT DBO.fnGetValorReposicao(:matID, :Marca, GETDATE()) AS Rep' +
        'osicao')
    Left = 401
    Top = 337
    object qrBuscaReposicaoReposicao: TBCDField
      FieldName = 'Reposicao'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
  end
  object qrLocalReferente: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM LOCAL')
    Left = 592
    Top = 376
    object StringField1: TStringField
      DisplayWidth = 50
      FieldName = 'Descricao'
      Size = 50
    end
    object AutoIncField1: TAutoIncField
      DisplayWidth = 10
      FieldName = 'Local_ID'
      ReadOnly = True
      Visible = False
    end
    object StringField2: TStringField
      FieldName = 'DisponivelSN'
      FixedChar = True
      Size = 1
    end
    object StringField3: TStringField
      FieldName = 'CONSUMO'
      FixedChar = True
      Size = 1
    end
    object StringField4: TStringField
      FieldName = 'CONTROLA_ESTOQUE'
      FixedChar = True
      Size = 1
    end
  end
end
