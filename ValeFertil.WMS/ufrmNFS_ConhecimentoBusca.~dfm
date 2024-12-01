object frmNFS_ConhecimentoBusca: TfrmNFS_ConhecimentoBusca
  Left = 260
  Top = 76
  Width = 900
  Height = 600
  Caption = 'Nota Fiscal de Serviços x Ordem Conhecimento'
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
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 0
    Width = 884
    Height = 201
    ActivePage = TabSheet1
    Align = alTop
    TabIndex = 0
    TabOrder = 0
    FixedDimension = 20
    object TabSheet1: TRzTabSheet
      Caption = 'Filtros de Pesquisa'
      object Label1: TLabel
        Left = 16
        Top = 16
        Width = 62
        Height = 14
        Caption = 'Cliente NBF'
      end
      object Label2: TLabel
        Left = 16
        Top = 64
        Width = 43
        Height = 14
        Caption = 'Data de'
      end
      object Label3: TLabel
        Left = 152
        Top = 64
        Width = 20
        Height = 14
        Caption = 'Até'
      end
      object Label4: TLabel
        Left = 288
        Top = 64
        Width = 16
        Height = 14
        Caption = 'OS'
      end
      object Label5: TLabel
        Left = 16
        Top = 112
        Width = 118
        Height = 14
        Caption = 'Nota Fiscal de Serviço'
      end
      object Label6: TLabel
        Left = 152
        Top = 112
        Width = 63
        Height = 14
        Caption = 'Nota da OE'
      end
      object Label7: TLabel
        Left = 288
        Top = 112
        Width = 52
        Height = 14
        Caption = 'Manifesto'
      end
      object Label8: TLabel
        Left = 424
        Top = 64
        Width = 16
        Height = 14
        Caption = 'OE'
      end
      object Label9: TLabel
        Left = 424
        Top = 112
        Width = 34
        Height = 14
        Caption = 'Fatura'
      end
      object cboClienteRemetente: TwwDBLookupCombo
        Left = 16
        Top = 32
        Width = 537
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
      end
      object MaskEdit1: TMaskEdit
        Left = 16
        Top = 80
        Width = 121
        Height = 22
        EditMask = '99/99/9999'
        MaxLength = 10
        TabOrder = 1
        Text = '  /  /    '
      end
      object MaskEdit2: TMaskEdit
        Left = 152
        Top = 80
        Width = 121
        Height = 22
        EditMask = '99/99/9999'
        MaxLength = 10
        TabOrder = 2
        Text = '  /  /    '
      end
      object edtOS: TEdit
        Left = 288
        Top = 80
        Width = 121
        Height = 22
        TabOrder = 3
      end
      object edtNotaServico: TEdit
        Left = 16
        Top = 128
        Width = 121
        Height = 22
        TabOrder = 4
      end
      object NotaOE: TEdit
        Left = 152
        Top = 128
        Width = 121
        Height = 22
        TabOrder = 5
      end
      object EdtManifesto: TEdit
        Left = 288
        Top = 128
        Width = 121
        Height = 22
        TabOrder = 6
      end
      object Button1: TButton
        Left = 728
        Top = 8
        Width = 113
        Height = 25
        Caption = 'Pesquisar'
        TabOrder = 7
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 728
        Top = 39
        Width = 113
        Height = 25
        Caption = 'Ver detalhes'
        TabOrder = 8
        OnClick = Button2Click
      end
      object Button3: TButton
        Left = 728
        Top = 71
        Width = 113
        Height = 25
        Caption = 'Novo'
        TabOrder = 9
        OnClick = Button3Click
      end
      object Button4: TButton
        Left = 728
        Top = 105
        Width = 113
        Height = 25
        Caption = 'Imprimir'
        TabOrder = 10
        OnClick = Button4Click
      end
      object RadioGroup1: TRadioGroup
        Left = 568
        Top = 16
        Width = 129
        Height = 105
        Caption = 'Ordenar por'
        ItemIndex = 0
        Items.Strings = (
          'Nota Serviço'
          'Cliente NBF'
          'OS'
          'Manifesto'
          'Data')
        TabOrder = 11
      end
      object edtOE: TEdit
        Left = 424
        Top = 80
        Width = 121
        Height = 22
        TabOrder = 12
      end
      object edtFatura: TEdit
        Left = 424
        Top = 128
        Width = 121
        Height = 22
        TabOrder = 13
      end
      object CheckBox1: TCheckBox
        Left = 568
        Top = 144
        Width = 169
        Height = 17
        Caption = 'Notas Fiscais a faturar'
        TabOrder = 14
      end
      object Button5: TButton
        Left = 728
        Top = 137
        Width = 113
        Height = 25
        Caption = 'Gerar Excel'
        TabOrder = 15
        OnClick = Button5Click
      end
    end
  end
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 201
    Width = 884
    Height = 361
    Selected.Strings = (
      'NFSO_ID'#9'7'#9'Prep.'
      'NFSO_NUMERO'#9'10'#9'Nf Serviço'
      'ORD_CONH'#9'10'#9'OE'
      'MANI_ID'#9'10'#9'Manifesto'
      'OS_ID'#9'8'#9'OS'
      'FAT_NUM'#9'10'#9'Fatura'
      'CLIN_RAZA'#9'32'#9'Cliente NBF'
      'NFSO_DATA'#9'10'#9'Data'
      'ORD_VLR_FRETE'#9'10'#9'Vlr. Frete'
      'ORD_VLR_SECCAT'#9'10'#9'Vlr SECCAT'
      'ORD_VLR_DESPACHO'#9'10'#9'Vlr. Despacho'
      'ORD_VLR_PEDAGIO'#9'10'#9'Vlr. Pedágio'
      'ORD_TXENTREGA'#9'10'#9'Vlr. Entrega'
      'ORD_SEGURO'#9'10'#9'Vlr. Seguro'
      'VALOR_ISS'#9'10'#9'Valor ISS'
      'TOTAL'#9'10'#9'Total'
      'DEST'#9'50'#9'Destinatário')
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
    Left = 448
    Top = 14
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
  object qrConsulta: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT DISTINCT'
      #9'A.NFSO_ID,'
      #9'B.MANI_ID,'
      #9'B.OS_ID,'
      #9'A.NFSO_DATA,'
      #9'A.NFSO_NUMERO,'
      #9'A.VALOR_ISS,'
      #9'B.ORD_VLR_FRETE,'
      #9'B.ORD_VLR_DESPACHO,'
      #9'B.ORD_VLR_PEDAGIO,'
      #9'B.ORD_VLR_SECCAT,'
      #9'B.ORD_SEGURO,'
      #9'B.ORD_TXENTREGA,'
      #9'A.TOTAL,'
      #9'C.CLIN_RAZA,'
      #9'F.FAT_NUM, B.ORD_CONH'
      
        ',(SELECT CLIF_RAZA FROM CLIENTEFINAL WHERE CLIF_ID = B.CLIF_ID) ' +
        'DEST'
      'FROM NFS_Conhecimento A INNER JOIN ORDEM_COLETA_ENTREGA B'
      'ON A.NFSO_ID = B.NFSO_ID INNER JOIN CLIENTENBF C'
      'ON A.CLIN_ID = C.CLIN_ID '
      'LEFT OUTER JOIN FATURA F'
      'ON F.FAT_ID = A.FAT_ID')
    Left = 312
    Top = 296
    object qrConsultaNFSO_ID: TAutoIncField
      DisplayLabel = 'Prep.'
      DisplayWidth = 7
      FieldName = 'NFSO_ID'
      ReadOnly = True
    end
    object qrConsultaNFSO_NUMERO: TIntegerField
      DisplayLabel = 'Nf Serviço'
      DisplayWidth = 10
      FieldName = 'NFSO_NUMERO'
    end
    object qrConsultaORD_CONH: TStringField
      DisplayLabel = 'OE'
      DisplayWidth = 10
      FieldName = 'ORD_CONH'
      Size = 10
    end
    object qrConsultaMANI_ID: TIntegerField
      DisplayLabel = 'Manifesto'
      DisplayWidth = 10
      FieldName = 'MANI_ID'
    end
    object qrConsultaOS_ID: TIntegerField
      DisplayLabel = 'OS'
      DisplayWidth = 8
      FieldName = 'OS_ID'
    end
    object qrConsultaFAT_NUM: TIntegerField
      DisplayLabel = 'Fatura'
      DisplayWidth = 10
      FieldName = 'FAT_NUM'
    end
    object qrConsultaCLIN_RAZA: TStringField
      DisplayLabel = 'Cliente NBF'
      DisplayWidth = 32
      FieldName = 'CLIN_RAZA'
      Size = 50
    end
    object qrConsultaNFSO_DATA: TDateTimeField
      DisplayLabel = 'Data'
      DisplayWidth = 10
      FieldName = 'NFSO_DATA'
      DisplayFormat = 'dd/MM/yyyy'
    end
    object qrConsultaORD_VLR_FRETE: TFloatField
      DisplayLabel = 'Vlr. Frete'
      DisplayWidth = 10
      FieldName = 'ORD_VLR_FRETE'
      DisplayFormat = '###,###,##0.00'
    end
    object qrConsultaORD_VLR_SECCAT: TFloatField
      DisplayLabel = 'Vlr SECCAT'
      DisplayWidth = 10
      FieldName = 'ORD_VLR_SECCAT'
      DisplayFormat = '###,###,##0.00'
    end
    object qrConsultaORD_VLR_DESPACHO: TFloatField
      DisplayLabel = 'Vlr. Despacho'
      DisplayWidth = 10
      FieldName = 'ORD_VLR_DESPACHO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrConsultaORD_VLR_PEDAGIO: TFloatField
      DisplayLabel = 'Vlr. Pedágio'
      DisplayWidth = 10
      FieldName = 'ORD_VLR_PEDAGIO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrConsultaORD_TXENTREGA: TFloatField
      DisplayLabel = 'Vlr. Entrega'
      DisplayWidth = 10
      FieldName = 'ORD_TXENTREGA'
      DisplayFormat = '###,###,##0.00'
    end
    object qrConsultaORD_SEGURO: TFloatField
      DisplayLabel = 'Vlr. Seguro'
      DisplayWidth = 10
      FieldName = 'ORD_SEGURO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrConsultaVALOR_ISS: TFloatField
      DisplayLabel = 'Valor ISS'
      DisplayWidth = 10
      FieldName = 'VALOR_ISS'
      DisplayFormat = '###,###,##0.00'
    end
    object qrConsultaTOTAL: TFloatField
      DisplayLabel = 'Total'
      DisplayWidth = 10
      FieldName = 'TOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qrConsultaDEST: TStringField
      DisplayLabel = 'Destinatário'
      DisplayWidth = 50
      FieldName = 'DEST'
      ReadOnly = True
      Size = 50
    end
  end
  object DataSource1: TDataSource
    DataSet = qrConsulta
    Left = 224
    Top = 320
  end
end
