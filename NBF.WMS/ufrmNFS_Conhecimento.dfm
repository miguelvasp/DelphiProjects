object frmNFS_Conhecimento: TfrmNFS_Conhecimento
  Left = 216
  Top = 87
  Width = 900
  Height = 600
  Caption = 'Nota Fiscal de Servi�os x Ordem Conhecimento'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 884
    Height = 155
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 48
      Width = 62
      Height = 14
      Caption = 'Cliente NBF'
    end
    object Label2: TLabel
      Left = 552
      Top = 48
      Width = 25
      Height = 14
      Caption = 'Data'
      FocusControl = DBEdit1
    end
    object Label3: TLabel
      Left = 8
      Top = 96
      Width = 74
      Height = 14
      Caption = 'Valor das OEs'
      FocusControl = DBEdit2
    end
    object Label4: TLabel
      Left = 112
      Top = 96
      Width = 45
      Height = 14
      Caption = 'Aliq. ISS'
      FocusControl = DBEdit3
    end
    object Label5: TLabel
      Left = 208
      Top = 96
      Width = 67
      Height = 14
      Caption = 'Valor do ISS'
      FocusControl = DBEdit4
    end
    object Label6: TLabel
      Left = 313
      Top = 96
      Width = 59
      Height = 14
      Caption = 'Valor Total'
      FocusControl = DBEdit5
    end
    object Label7: TLabel
      Left = 442
      Top = 96
      Width = 61
      Height = 14
      Caption = 'Numero NF'
      FocusControl = DBEdit6
    end
    object Label9: TLabel
      Left = 552
      Top = 96
      Width = 34
      Height = 14
      Caption = 'Fatura'
    end
    object Button2: TButton
      Left = 89
      Top = 8
      Width = 185
      Height = 25
      Caption = 'Excluir e liberar OEs'
      TabOrder = 0
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 276
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Imprimir'
      TabOrder = 1
      OnClick = Button3Click
    end
    object cboClienteRemetente: TwwDBLookupCombo
      Left = 8
      Top = 64
      Width = 537
      Height = 22
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'clin_nome'#9'30'#9'Cliente'#9'F')
      DataField = 'CLIN_ID'
      DataSource = DataSource1
      LookupTable = qrClienteNBF
      LookupField = 'clin_id'
      Enabled = False
      TabOrder = 2
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
    end
    object DBEdit1: TDBEdit
      Left = 552
      Top = 64
      Width = 130
      Height = 22
      DataField = 'NFSO_DATA'
      DataSource = DataSource1
      Enabled = False
      TabOrder = 3
    end
    object DBEdit2: TDBEdit
      Left = 8
      Top = 112
      Width = 97
      Height = 22
      DataField = 'VALOR_OE'
      DataSource = DataSource1
      Enabled = False
      TabOrder = 4
    end
    object DBEdit3: TDBEdit
      Left = 112
      Top = 112
      Width = 89
      Height = 22
      DataField = 'ALIQ_ISS'
      DataSource = DataSource1
      Enabled = False
      TabOrder = 5
    end
    object DBEdit4: TDBEdit
      Left = 208
      Top = 112
      Width = 97
      Height = 22
      DataField = 'VALOR_ISS'
      DataSource = DataSource1
      Enabled = False
      TabOrder = 6
    end
    object DBEdit5: TDBEdit
      Left = 312
      Top = 112
      Width = 120
      Height = 22
      DataField = 'TOTAL'
      DataSource = DataSource1
      Enabled = False
      TabOrder = 7
    end
    object DBEdit6: TDBEdit
      Left = 440
      Top = 112
      Width = 106
      Height = 22
      DataField = 'NFSO_NUMERO'
      DataSource = DataSource1
      TabOrder = 8
    end
    object Button4: TButton
      Left = 12
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Salvar'
      TabOrder = 9
      OnClick = Button4Click
    end
    object Button1: TButton
      Left = 460
      Top = 8
      Width = 103
      Height = 25
      Caption = 'Gerar Fatura'
      TabOrder = 10
      OnClick = Button1Click
    end
    object edtFatura: TEdit
      Left = 552
      Top = 112
      Width = 129
      Height = 22
      Enabled = False
      TabOrder = 12
    end
    object Button7: TButton
      Left = 353
      Top = 8
      Width = 103
      Height = 25
      Caption = 'Gerar Excel'
      TabOrder = 13
      OnClick = Button7Click
    end
    object Panel2: TPanel
      Left = 5
      Top = 45
      Width = 865
      Height = 144
      TabOrder = 11
      Visible = False
      object Label8: TLabel
        Left = 40
        Top = 16
        Width = 354
        Height = 14
        Caption = 'Para gerar a fatura por favor selecione a condi��o de pagamento'
      end
      object cboCondPgto: TwwDBLookupCombo
        Left = 40
        Top = 42
        Width = 505
        Height = 22
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'Descricao'#9'25'#9'Descri��o'#9'F'
          'Num_Parcelas'#9'28'#9'N�mero de Parcelas'#9'F')
        LookupTable = Q_COND
        LookupField = 'Cond_Pgto_ID'
        TabOrder = 0
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
      end
      object Button5: TButton
        Left = 560
        Top = 40
        Width = 137
        Height = 25
        Caption = 'Confirmar'
        TabOrder = 1
        OnClick = Button5Click
      end
      object Button6: TButton
        Left = 704
        Top = 40
        Width = 137
        Height = 25
        Caption = 'Cancelar'
        TabOrder = 2
        OnClick = Button6Click
      end
    end
  end
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 155
    Width = 884
    Height = 407
    ActivePage = TabSheet1
    Align = alClient
    TabIndex = 0
    TabOrder = 1
    FixedDimension = 20
    object TabSheet1: TRzTabSheet
      Caption = 'OEs vinculadas a esta nota de servi�os'
      object wwDBGrid1: TwwDBGrid
        Left = 0
        Top = 0
        Width = 880
        Height = 383
        Selected.Strings = (
          'ORD_CONH'#9'10'#9'CTRC'
          'CLIF_RAZA'#9'30'#9'Destinat�rio'
          'ORD_NOTAS'#9'15'#9'Notas'
          'MANI_ID'#9'10'#9'Manifesto'
          'ORD_QTDE_UV'#9'7'#9'Qtde'
          'ORD_PESO_TOTAL'#9'10'#9'Peso'
          'ORD_VALORTOTAL'#9'10'#9'Valor'
          'ORD_PLACA'#9'8'#9'Placa'
          'ORD_VLR_FRETE'#9'10'#9'Frete'
          'ORD_VLR_SECCAT'#9'10'#9'Vlr. SECCAT'
          'ORD_VLR_DESPACHO'#9'10'#9'Vlr. Despacho'
          'ORD_VLR_PEDAGIO'#9'10'#9'Vlr. Ped�gio'
          'ORD_TXENTREGA'#9'10'#9'Vlr. Entrega'
          'ORD_SEGURO'#9'10'#9'Vlr. Seguro'
          'VLR_ISS'#9'10'#9'Vlr. ISS'
          'VLR_NFS'#9'10'#9'Vlr. Geral'
          'OS'#9'10'#9'OS')
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alClient
        DataSource = DataSource2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
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
    end
  end
  object qrNFSO: TADOQuery
    Active = True
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM NFS_Conhecimento')
    Left = 769
    Top = 246
    object qrNFSONFSO_ID: TAutoIncField
      FieldName = 'NFSO_ID'
      ReadOnly = True
    end
    object qrNFSONFSO_DATA: TDateTimeField
      FieldName = 'NFSO_DATA'
    end
    object qrNFSOCLIN_ID: TIntegerField
      FieldName = 'CLIN_ID'
    end
    object qrNFSOALIQ_ISS: TFloatField
      FieldName = 'ALIQ_ISS'
      DisplayFormat = '###,###,##0.00'
    end
    object qrNFSOVALOR_OE: TFloatField
      FieldName = 'VALOR_OE'
      DisplayFormat = '###,###,##0.00'
    end
    object qrNFSOVALOR_ISS: TFloatField
      FieldName = 'VALOR_ISS'
      DisplayFormat = '###,###,##0.00'
    end
    object qrNFSOTOTAL: TFloatField
      FieldName = 'TOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qrNFSOSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object qrNFSONFSO_NUMERO: TIntegerField
      FieldName = 'NFSO_NUMERO'
    end
    object qrNFSOFAT_ID: TIntegerField
      FieldName = 'FAT_ID'
    end
  end
  object qrClienteNBF: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select  CLIN_ID,CLIN_RAZA as clin_nome from CLIENTENBF where'
      '(CLIN_CONTRATO <> '#39'I'#39' and CLIN_CONTRATO <> '#39'R'#39') '
      'order by CLIN_RAZA ')
    ValidateWithMask = True
    Left = 664
    Top = 238
    object qrClienteNBFclin_nome: TStringField
      DisplayLabel = 'Cliente'
      DisplayWidth = 30
      FieldName = 'clin_nome'
      FixedChar = True
      Size = 30
    end
    object qrClienteNBFclin_id: TAutoIncField
      DisplayWidth = 10
      FieldName = 'clin_id'
      Visible = False
    end
  end
  object DataSource1: TDataSource
    DataSet = qrNFSO
    OnDataChange = DataSource1DataChange
    Left = 560
    Top = 272
  end
  object qrItens: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    OnCalcFields = qrItensCalcFields
    Parameters = <
      item
        Name = 'NFSO_ID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT '
      #9'ORD_ID,'
      '                ORD_CONH,'
      #9'C.CLIF_RAZA,'
      #9'B.ORD_NOTAS,'
      #9'B.MANI_ID,'
      #9'B.ORD_QTDE_UV,'
      #9'B.ORD_PESO_TOTAL,'
      #9'B.ORD_VALORTOTAL,'
      #9'B.ORD_PLACA,'
      #9'B.ORD_VLR_FRETE,'
      #9'B.ORD_VLR_DESPACHO,'
      #9'B.ORD_VLR_PEDAGIO,'
      #9'B.ORD_VLR_SECCAT,'
      #9'B.ORD_SEGURO,'
      #9'B.ORD_TXENTREGA,'
      #9'B.VLR_ISS,'
      #9'B.VLR_NFS'
      'FROM NFS_Conhecimento A INNER JOIN ORDEM_COLETA_ENTREGA B'
      'ON A.NFSO_ID = B.NFSO_ID INNER JOIN CLIENTEFINAL C'
      'ON B.CLIF_ID = C.CLIF_ID'
      'where a.NFSO_ID = :NFSO_ID'
      'ordeR by ORD_CONH')
    Left = 337
    Top = 336
    object qrItensORD_CONH: TStringField
      DisplayLabel = 'CTRC'
      DisplayWidth = 10
      FieldName = 'ORD_CONH'
      Size = 10
    end
    object qrItensCLIF_RAZA: TStringField
      DisplayLabel = 'Destinat�rio'
      DisplayWidth = 30
      FieldName = 'CLIF_RAZA'
      Size = 50
    end
    object qrItensORD_NOTAS: TStringField
      DisplayLabel = 'Notas'
      DisplayWidth = 15
      FieldName = 'ORD_NOTAS'
      Size = 50
    end
    object qrItensMANI_ID: TIntegerField
      DisplayLabel = 'Manifesto'
      DisplayWidth = 10
      FieldName = 'MANI_ID'
    end
    object qrItensORD_QTDE_UV: TFloatField
      DisplayLabel = 'Qtde'
      DisplayWidth = 7
      FieldName = 'ORD_QTDE_UV'
      DisplayFormat = '###,###,##0.00'
    end
    object qrItensORD_PESO_TOTAL: TFloatField
      DisplayLabel = 'Peso'
      DisplayWidth = 10
      FieldName = 'ORD_PESO_TOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qrItensORD_VALORTOTAL: TFloatField
      DisplayLabel = 'Valor'
      DisplayWidth = 10
      FieldName = 'ORD_VALORTOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qrItensORD_PLACA: TStringField
      DisplayLabel = 'Placa'
      DisplayWidth = 8
      FieldName = 'ORD_PLACA'
      Size = 8
    end
    object qrItensORD_VLR_FRETE: TFloatField
      DisplayLabel = 'Frete'
      DisplayWidth = 10
      FieldName = 'ORD_VLR_FRETE'
      DisplayFormat = '###,###,##0.00'
    end
    object qrItensORD_VLR_SECCAT: TFloatField
      DisplayLabel = 'Vlr. SECCAT'
      DisplayWidth = 10
      FieldName = 'ORD_VLR_SECCAT'
      DisplayFormat = '###,###,##0.00'
    end
    object qrItensORD_VLR_DESPACHO: TFloatField
      DisplayLabel = 'Vlr. Despacho'
      DisplayWidth = 10
      FieldName = 'ORD_VLR_DESPACHO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrItensORD_VLR_PEDAGIO: TFloatField
      DisplayLabel = 'Vlr. Ped�gio'
      DisplayWidth = 10
      FieldName = 'ORD_VLR_PEDAGIO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrItensORD_TXENTREGA: TFloatField
      DisplayLabel = 'Vlr. Entrega'
      DisplayWidth = 10
      FieldName = 'ORD_TXENTREGA'
      DisplayFormat = '###,###,##0.00'
    end
    object qrItensORD_SEGURO: TFloatField
      DisplayLabel = 'Vlr. Seguro'
      DisplayWidth = 10
      FieldName = 'ORD_SEGURO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrItensVLR_ISS: TFloatField
      DisplayLabel = 'Vlr. ISS'
      DisplayWidth = 10
      FieldName = 'VLR_ISS'
      DisplayFormat = '###,###,##0.00'
    end
    object qrItensVLR_NFS: TFloatField
      DisplayLabel = 'Vlr. Geral'
      DisplayWidth = 10
      FieldName = 'VLR_NFS'
      DisplayFormat = '###,###,##0.00'
    end
    object qrItensORD_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'ORD_ID'
      ReadOnly = True
      Visible = False
    end
    object qrItensOS: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'OS'
      Calculated = True
    end
  end
  object DataSource2: TDataSource
    DataSet = qrItens
    Left = 137
    Top = 192
  end
  object qrAux: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    Left = 513
    Top = 224
  end
  object Q_COND: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'SELECT * from CONDICAO_PAGTO'
      'order by descricao')
    ValidateWithMask = True
    Left = 508
    Top = 200
    object Q_CONDDescricao: TStringField
      DisplayLabel = 'Descri��o'
      DisplayWidth = 25
      FieldName = 'Descricao'
      Origin = 'NBFDADOS.CONDICAO_PAGTO.Descricao'
      FixedChar = True
      Size = 30
    end
    object Q_CONDNum_Parcelas: TFloatField
      DisplayLabel = 'N�mero de Parcelas'
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
  object ADOStoredProc1: TADOStoredProc
    Connection = FMenu.ADOConnection
    ProcedureName = 'STP_GERAFATURA_NFS_OE;1'
    Parameters = <
      item
        Name = '@VALORCHEIO'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@CLIN_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@COND_PGTO_ID'
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
        Name = '@NFSO_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 145
    Top = 272
  end
  object qrAux2: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    Left = 249
    Top = 304
  end
end
