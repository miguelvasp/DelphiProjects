object fPesqNfServico: TfPesqNfServico
  Left = 264
  Top = 42
  BorderStyle = bsSingle
  Caption = 'Pesquisa de Notas Fiscas de Serviço'
  ClientHeight = 565
  ClientWidth = 837
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
    Left = 16
    Top = 72
    Width = 62
    Height = 14
    Caption = 'Cliente NBF'
  end
  object Label2: TLabel
    Left = 16
    Top = 16
    Width = 43
    Height = 14
    Caption = 'Numero'
  end
  object cboCliente: TwwDBLookupCombo
    Left = 16
    Top = 88
    Width = 569
    Height = 22
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'CLIF_NOME'#9'30'#9'CLIF_NOME'#9'F')
    LookupTable = qrCliente
    LookupField = 'CLIF_ID'
    TabOrder = 6
    AutoDropDown = True
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
  end
  object edtNumero: TEdit
    Left = 16
    Top = 32
    Width = 73
    Height = 22
    TabOrder = 1
  end
  object MaskEdit1: TMaskEdit
    Left = 96
    Top = 32
    Width = 81
    Height = 22
    EditMask = '99/99/9999'
    MaxLength = 10
    TabOrder = 2
    Text = '  /  /    '
  end
  object MaskEdit2: TMaskEdit
    Left = 184
    Top = 32
    Width = 81
    Height = 22
    EditMask = '99/99/9999'
    MaxLength = 10
    TabOrder = 3
    Text = '  /  /    '
  end
  object BitBtn1: TBitBtn
    Left = 688
    Top = 4
    Width = 137
    Height = 25
    Caption = 'Buscar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 688
    Top = 32
    Width = 137
    Height = 25
    Caption = 'Visualizar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = BitBtn2Click
  end
  object wwDBGrid1: TwwDBGrid
    Left = 8
    Top = 128
    Width = 817
    Height = 385
    ControlType.Strings = (
      'NF_SERVICO_SEL;CheckBox;S;N')
    Selected.Strings = (
      'NF_SERVICO_SEL'#9'1'#9'***'#9'F'
      'NFI_NUMERO'#9'10'#9'Nota Fiscal'#9'F'
      'NFI_DEST_RAZA'#9'50'#9'Cliente'#9'F'
      'NFI_TOTA'#9'10'#9'Valor Total'#9'F'
      'NFI_DEMI'#9'18'#9'Emissão'#9'F'
      'STATUS_NF'#9'9'#9'Status'#9'F')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DataSource1
    TabOrder = 7
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
  end
  object BitBtn3: TBitBtn
    Left = 688
    Top = 60
    Width = 137
    Height = 25
    Caption = 'Nova NF'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = BitBtn3Click
  end
  object RadioGroup1: TRadioGroup
    Left = 272
    Top = 8
    Width = 393
    Height = 49
    Caption = 'Status'
    Columns = 3
    ItemIndex = 0
    Items.Strings = (
      'Todas'
      'A Emitir'
      'Emitidas'
      'Canceladas'
      'Faturadas'
      'A Faturar')
    TabOrder = 8
  end
  object BitBtn4: TBitBtn
    Left = 688
    Top = 88
    Width = 137
    Height = 25
    Caption = 'Relatório'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
    OnClick = BitBtn4Click
  end
  object Panel1: TPanel
    Left = 0
    Top = 524
    Width = 837
    Height = 41
    Align = alBottom
    TabOrder = 10
    Visible = False
    object Label3: TLabel
      Left = 24
      Top = 14
      Width = 137
      Height = 14
      Caption = 'Condição de Pagamento:'
    end
    object btnFatura: TButton
      Left = 312
      Top = 8
      Width = 177
      Height = 25
      Caption = 'Emitir Fatura'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btnFaturaClick
    end
    object cbocondicao: TwwDBLookupCombo
      Left = 176
      Top = 9
      Width = 121
      Height = 22
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'Descricao'#9'30'#9'Descricao'#9'F')
      LookupTable = qrCondPgto
      LookupField = 'Cond_Pgto_ID'
      TabOrder = 1
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
    end
  end
  object edtOrdID: TEdit
    Left = 592
    Top = 88
    Width = 73
    Height = 22
    TabOrder = 11
    Text = 'edtOrdID'
    Visible = False
  end
  object qrCliente: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select '
      #9'A.CLIN_RAZA, A.CLIN_ID, B.CLIF_ID, B.CLIF_NOME'
      'from CLIENTENBF a (nolock) INNER join CLIENTEFINAL b (nolock)'
      'on a.CLIN_CGCCPF = b.CLIF_CGCCPF'
      'WHERE (CLIN_CONTRATO <> '#39'I'#39' and CLIN_CONTRATO <> '#39'R'#39') '
      'GROUP BY A.CLIN_RAZA, A.CLIN_ID, B.CLIF_ID, B.CLIF_NOME'
      'ORDER BY B.CLIF_NOME')
    Left = 472
    Top = 304
    object qrClienteCLIF_NOME: TStringField
      DisplayWidth = 30
      FieldName = 'CLIF_NOME'
      Size = 30
    end
    object qrClienteCLIN_RAZA: TStringField
      DisplayWidth = 50
      FieldName = 'CLIN_RAZA'
      Visible = False
      Size = 50
    end
    object qrClienteCLIF_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'CLIF_ID'
      ReadOnly = True
      Visible = False
    end
    object qrClienteCLIN_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'CLIN_ID'
      ReadOnly = True
      Visible = False
    end
  end
  object qrBusca: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT TOP 1 A.NFI_CODI,'
      #9'A.NFI_NUMERO, '
      #9'A.NFI_DEST_RAZA,'
      #9'A.NFI_DEMI, A.NFI_TOTA, A.NFI_ALIQISS, A.NFI_ISS, A.NFI_VDES,'
      'ISNULL(NF_SERVICO_SEL, '#39'N'#39') NF_SERVICO_SEL,'
      #9'CASE '
      #9#9'WHEN NFI_STATUS = '#39'A'#39' THEN '#39'A EMITIR'#39
      #9#9'WHEN NFI_STATUS = '#39'E'#39' THEN '#39'EMITIDA'#39
      #9#9'WHEN NFI_STATUS = '#39'C'#39' THEN '#39'CANCELADA'#39
      #9'END AS STATUS_NF'
      'FROM NF A')
    Left = 472
    Top = 376
    object qrBuscaNF_SERVICO_SEL: TStringField
      DisplayLabel = '***'
      DisplayWidth = 1
      FieldName = 'NF_SERVICO_SEL'
      ProviderFlags = [pfInUpdate]
      OnChange = qrBuscaNF_SERVICO_SELChange
      Size = 1
    end
    object qrBuscaNFI_NUMERO: TStringField
      DisplayLabel = 'Nota Fiscal'
      DisplayWidth = 10
      FieldName = 'NFI_NUMERO'
      ProviderFlags = [pfInWhere]
      ReadOnly = True
      Size = 10
    end
    object qrBuscaNFI_DEST_RAZA: TStringField
      DisplayLabel = 'Cliente'
      DisplayWidth = 50
      FieldName = 'NFI_DEST_RAZA'
      ProviderFlags = [pfInWhere]
      ReadOnly = True
      Size = 50
    end
    object qrBuscaNFI_TOTA: TFloatField
      DisplayLabel = 'Valor Total'
      DisplayWidth = 10
      FieldName = 'NFI_TOTA'
      ProviderFlags = [pfInWhere]
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
    end
    object qrBuscaNFI_DEMI: TDateTimeField
      DisplayLabel = 'Emissão'
      DisplayWidth = 18
      FieldName = 'NFI_DEMI'
      ProviderFlags = [pfInWhere]
      ReadOnly = True
      DisplayFormat = 'dd/MM/yyyy'
    end
    object qrBuscaSTATUS_NF: TStringField
      DisplayLabel = 'Status'
      DisplayWidth = 9
      FieldName = 'STATUS_NF'
      ProviderFlags = [pfInWhere]
      ReadOnly = True
      Size = 9
    end
    object qrBuscaNFI_ALIQISS: TFloatField
      DisplayWidth = 10
      FieldName = 'NFI_ALIQISS'
      ProviderFlags = [pfInWhere]
      ReadOnly = True
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrBuscaNFI_ISS: TFloatField
      DisplayWidth = 10
      FieldName = 'NFI_ISS'
      ProviderFlags = [pfInWhere]
      ReadOnly = True
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrBuscaNFI_VDES: TFloatField
      DisplayWidth = 10
      FieldName = 'NFI_VDES'
      ProviderFlags = [pfInWhere]
      ReadOnly = True
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrBuscaNFI_CODI: TAutoIncField
      DisplayWidth = 10
      FieldName = 'NFI_CODI'
      ProviderFlags = [pfInWhere]
      ReadOnly = True
      Visible = False
    end
  end
  object DataSource1: TDataSource
    DataSet = qrBusca
    Left = 472
    Top = 248
  end
  object qrCondPgto: TADOQuery
    Active = True
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from CONDICAO_PAGTO'
      'order by Descricao')
    Left = 312
    Top = 360
    object qrCondPgtoDescricao: TStringField
      DisplayWidth = 30
      FieldName = 'Descricao'
      Size = 30
    end
    object qrCondPgtoCond_Pgto_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'Cond_Pgto_ID'
      ReadOnly = True
      Visible = False
    end
    object qrCondPgtoNum_Parcelas: TFloatField
      DisplayWidth = 10
      FieldName = 'Num_Parcelas'
      Visible = False
    end
    object qrCondPgtoPagamento: TStringField
      DisplayWidth = 2
      FieldName = 'Pagamento'
      Visible = False
      Size = 2
    end
    object qrCondPgtoFora: TStringField
      DisplayWidth = 1
      FieldName = 'Fora'
      Visible = False
      FixedChar = True
      Size = 1
    end
  end
  object STP_GERAFATURA: TADOStoredProc
    Connection = FMenu.ADOConnection
    ProcedureName = 'STP_GERAFATURA_SERVICOS;1'
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
      end>
    Left = 584
    Top = 384
  end
  object qrAux: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    Left = 232
    Top = 256
  end
end
