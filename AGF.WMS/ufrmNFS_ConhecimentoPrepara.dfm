object frmNFS_ConhecimentoPrepara: TfrmNFS_ConhecimentoPrepara
  Left = 125
  Top = 62
  Width = 1192
  Height = 600
  Caption = 'Nota Fiscal de Serviços x Ordem Conhecimento - Preparação'
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
    Width = 1176
    Height = 185
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 62
      Height = 14
      Caption = 'Cliente NBF'
    end
    object Label2: TLabel
      Left = 8
      Top = 104
      Width = 84
      Height = 14
      Caption = 'Aliquota de ISS'
    end
    object Label3: TLabel
      Left = 144
      Top = 104
      Width = 74
      Height = 14
      Caption = 'Valor das OEs'
    end
    object Label4: TLabel
      Left = 283
      Top = 104
      Width = 49
      Height = 14
      Caption = 'Valor ISS'
    end
    object Label5: TLabel
      Left = 416
      Top = 104
      Width = 59
      Height = 14
      Caption = 'Valor Total'
    end
    object Label6: TLabel
      Left = 8
      Top = 56
      Width = 62
      Height = 14
      Caption = 'Data da OS'
    end
    object Label7: TLabel
      Left = 136
      Top = 56
      Width = 20
      Height = 14
      Caption = 'Até'
    end
    object Label48: TLabel
      Left = 44
      Top = 163
      Width = 107
      Height = 15
      Caption = 'OS não Concluídas'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 264
      Top = 56
      Width = 48
      Height = 14
      Caption = 'Contrato'
    end
    object cboClienteRemetente: TwwDBLookupCombo
      Left = 8
      Top = 24
      Width = 433
      Height = 22
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'clin_nome'#9'30'#9'Cliente'#9'F')
      LookupTable = qrClienteNBF
      LookupField = 'clin_id'
      TabOrder = 0
      AutoDropDown = True
      ShowButton = True
      AllowClearKey = False
      OnCloseUp = cboClienteRemetenteCloseUp
      OnExit = cboClienteRemetenteExit
    end
    object Button1: TButton
      Left = 456
      Top = 22
      Width = 97
      Height = 25
      Caption = 'Buscar OEs'
      TabOrder = 1
      OnClick = Button1Click
    end
    object edtAliq: TEdit
      Left = 8
      Top = 120
      Width = 121
      Height = 22
      Enabled = False
      TabOrder = 2
    end
    object edtOE: TEdit
      Left = 144
      Top = 120
      Width = 121
      Height = 22
      Enabled = False
      TabOrder = 3
    end
    object edtISS: TEdit
      Left = 280
      Top = 120
      Width = 121
      Height = 22
      Enabled = False
      TabOrder = 4
    end
    object edtTotal: TEdit
      Left = 416
      Top = 120
      Width = 121
      Height = 22
      Enabled = False
      TabOrder = 5
    end
    object RadioGroup1: TRadioGroup
      Left = 568
      Top = 16
      Width = 289
      Height = 33
      Caption = 'Ordenar por'
      Columns = 2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        'OS'
        'OE')
      ParentFont = False
      TabOrder = 6
    end
    object MaskEdit1: TMaskEdit
      Left = 8
      Top = 72
      Width = 121
      Height = 22
      EditMask = '99/99/9999'
      MaxLength = 10
      TabOrder = 7
      Text = '  /  /    '
    end
    object MaskEdit2: TMaskEdit
      Left = 136
      Top = 72
      Width = 121
      Height = 22
      EditMask = '99/99/9999'
      MaxLength = 10
      TabOrder = 8
      Text = '  /  /    '
    end
    object Panel4: TPanel
      Left = 5
      Top = 162
      Width = 37
      Height = 16
      BevelInner = bvLowered
      BevelOuter = bvSpace
      Color = 33023
      TabOrder = 9
    end
    object cboContrato: TwwDBLookupCombo
      Left = 264
      Top = 72
      Width = 273
      Height = 22
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'CTT_NOME'#9'40'#9'CTT_NOME'#9'F')
      LookupTable = qrContrato
      LookupField = 'CTT_ID'
      TabOrder = 10
      AutoDropDown = True
      ShowButton = True
      AllowClearKey = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 521
    Width = 1176
    Height = 41
    Align = alBottom
    TabOrder = 1
    object Button2: TButton
      Left = 8
      Top = 9
      Width = 145
      Height = 25
      Caption = 'Confirmar'
      TabOrder = 0
      OnClick = Button2Click
    end
  end
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 185
    Width = 1176
    Height = 336
    ControlType.Strings = (
      'NFSO_SEL;CheckBox;S;N')
    Selected.Strings = (
      'NFSO_SEL'#9'1'#9'***'
      'OS_ID'#9'10'#9'Os'
      'ORD_CONH'#9'10'#9'OE'
      'CLIF_RAZA'#9'30'#9'Destinatário'
      'ORD_NOTAS'#9'20'#9'Notas'
      'MANI_ID'#9'10'#9'Manifesto'
      'ORD_QTDE_UV'#9'8'#9'Qtde'
      'ORD_PESO_TOTAL'#9'8'#9'Peso'
      'ORD_VALORTOTAL'#9'10'#9'Valor'
      'ORD_PLACA'#9'8'#9'Placa'
      'ORD_VLR_FRETE'#9'10'#9'Vlr. Frete'
      'ORD_VLR_SECCAT'#9'10'#9'Vlr. SECCAT'
      'ORD_VLR_DESPACHO'#9'10'#9'Vlr. Despacho'
      'ORD_VLR_PEDAGIO'#9'10'#9'Vlr. Pedágio'
      'ORD_TXENTREGA'#9'10'#9'Vlr. Entrega'
      'ORD_SEGURO'#9'10'#9'Vlr. Seguro')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = DataSource1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnCalcCellColors = wwDBGrid1CalcCellColors
    IndicatorColor = icBlack
  end
  object qrClienteNBF: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select  CLIN_ID,CLIN_RAZA as clin_nome from CLIENTENBF where'
      '(CLIN_CONTRATO <> '#39'I'#39' and CLIN_CONTRATO <> '#39'R'#39') '
      'order by CLIN_RAZA ')
    ValidateWithMask = True
    Left = 816
    Top = 142
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
  object qrItens: TADOQuery
    Active = True
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
      'SELECT '
      '    B.NFSO_SEL,'
      '    D.OS_ID,'
      '    B.ORD_ID,'
      #9'ORD_CONH,'
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
      #9'B.VLR_NFS, D.OS_CONCLUIDA'
      'FROM ORDEM_COLETA_ENTREGA B INNER JOIN CLIENTEFINAL C'
      'ON B.CLIF_ID = C.CLIF_ID INNER JOIN OS D'
      'ON B.OS_ID = D.OS_ID'
      'WHERE D.CLIN_ID = :CLIN_ID'
      'AND B.ORD_STATUS = '#39'A'#39)
    Left = 272
    Top = 232
    object qrItensNFSO_SEL: TStringField
      DisplayLabel = '***'
      DisplayWidth = 1
      FieldName = 'NFSO_SEL'
      OnChange = qrItensNFSO_SELChange
      Size = 1
    end
    object qrItensOS_ID: TAutoIncField
      DisplayLabel = 'Os'
      DisplayWidth = 10
      FieldName = 'OS_ID'
      ReadOnly = True
    end
    object qrItensORD_CONH: TStringField
      DisplayLabel = 'OE'
      DisplayWidth = 10
      FieldName = 'ORD_CONH'
      ReadOnly = True
      Size = 10
    end
    object qrItensCLIF_RAZA: TStringField
      DisplayLabel = 'Destinatário'
      DisplayWidth = 30
      FieldName = 'CLIF_RAZA'
      ReadOnly = True
      Size = 50
    end
    object qrItensORD_NOTAS: TStringField
      DisplayLabel = 'Notas'
      DisplayWidth = 20
      FieldName = 'ORD_NOTAS'
      ReadOnly = True
      Size = 50
    end
    object qrItensMANI_ID: TIntegerField
      DisplayLabel = 'Manifesto'
      DisplayWidth = 10
      FieldName = 'MANI_ID'
      ReadOnly = True
    end
    object qrItensORD_QTDE_UV: TFloatField
      DisplayLabel = 'Qtde'
      DisplayWidth = 8
      FieldName = 'ORD_QTDE_UV'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
    end
    object qrItensORD_PESO_TOTAL: TFloatField
      DisplayLabel = 'Peso'
      DisplayWidth = 8
      FieldName = 'ORD_PESO_TOTAL'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
    end
    object qrItensORD_VALORTOTAL: TFloatField
      DisplayLabel = 'Valor'
      DisplayWidth = 10
      FieldName = 'ORD_VALORTOTAL'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
    end
    object qrItensORD_PLACA: TStringField
      DisplayLabel = 'Placa'
      DisplayWidth = 8
      FieldName = 'ORD_PLACA'
      ReadOnly = True
      Size = 8
    end
    object qrItensORD_VLR_FRETE: TFloatField
      DisplayLabel = 'Vlr. Frete'
      DisplayWidth = 10
      FieldName = 'ORD_VLR_FRETE'
      ReadOnly = True
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
      DisplayLabel = 'Vlr. Pedágio'
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
    object qrItensORD_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'ORD_ID'
      ReadOnly = True
      Visible = False
    end
    object qrItensVLR_ISS: TFloatField
      DisplayWidth = 10
      FieldName = 'VLR_ISS'
      ReadOnly = True
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrItensVLR_NFS: TFloatField
      DisplayWidth = 10
      FieldName = 'VLR_NFS'
      ReadOnly = True
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrItensOS_CONCLUIDA: TStringField
      FieldName = 'OS_CONCLUIDA'
      Visible = False
      Size = 1
    end
  end
  object DataSource1: TDataSource
    DataSet = qrItens
    Left = 192
    Top = 192
  end
  object qrAux: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    Left = 480
    Top = 192
  end
  object ADOStoredProc1: TADOStoredProc
    Connection = FMenu.ADOConnection
    ProcedureName = 'NFServico_OE;1'
    Parameters = <
      item
        Name = '@CLIN_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 128
    Top = 192
  end
  object qrContrato: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'clin_id'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT CTT_ID,PAR_ID,CTT_NOME,TOS_ID,CLIN_ID,CTT_TERCEIRO from C' +
        'ONTRATO'
      'where CLIN_ID = :clin_id'
      'and TOS_ID <> 1')
    Left = 616
    Top = 80
    object qrContratoCTT_NOME: TStringField
      DisplayWidth = 40
      FieldName = 'CTT_NOME'
      Size = 40
    end
    object qrContratoCTT_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'CTT_ID'
      ReadOnly = True
      Visible = False
    end
    object qrContratoPAR_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'PAR_ID'
      Visible = False
    end
    object qrContratoTOS_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'TOS_ID'
      Visible = False
    end
    object qrContratoCLIN_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'CLIN_ID'
      Visible = False
    end
    object qrContratoCTT_TERCEIRO: TStringField
      DisplayWidth = 1
      FieldName = 'CTT_TERCEIRO'
      Visible = False
      Size = 1
    end
  end
end
