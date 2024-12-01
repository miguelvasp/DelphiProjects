object frmRelFreteCargil: TfrmRelFreteCargil
  Left = 186
  Top = 84
  BorderStyle = bsSingle
  Caption = 'Relatório de Frete'
  ClientHeight = 516
  ClientWidth = 619
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
    Left = 304
    Top = 24
    Width = 79
    Height = 14
    Caption = 'Conhecimento'
  end
  object Label2: TLabel
    Left = 304
    Top = 80
    Width = 43
    Height = 14
    Caption = 'Data de'
  end
  object Label3: TLabel
    Left = 456
    Top = 80
    Width = 20
    Height = 14
    Caption = 'Até'
  end
  object Label4: TLabel
    Left = 304
    Top = 134
    Width = 57
    Height = 14
    Caption = 'Nota Fiscal'
  end
  object Label5: TLabel
    Left = 304
    Top = 184
    Width = 34
    Height = 14
    Caption = 'Fatura'
  end
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 0
    Width = 282
    Height = 516
    ActivePage = TabSheet1
    Align = alLeft
    TabIndex = 0
    TabOrder = 0
    FixedDimension = 20
    object TabSheet1: TRzTabSheet
      Caption = 'Selecione os Clientes da pesquisa'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 278
        Height = 81
        Align = alTop
        TabOrder = 0
        object CheckBox1: TCheckBox
          Left = 8
          Top = 8
          Width = 265
          Height = 17
          Caption = 'Ver somente clientes selecionados'
          TabOrder = 0
          OnClick = CheckBox1Click
        end
        object Button1: TButton
          Left = 8
          Top = 32
          Width = 161
          Height = 25
          Caption = 'Desmarcar todos'
          TabOrder = 1
          OnClick = Button1Click
        end
      end
      object wwDBGrid1: TwwDBGrid
        Left = 0
        Top = 81
        Width = 278
        Height = 411
        ControlType.Strings = (
          'SEL;CheckBox;S;N')
        Selected.Strings = (
          'SEL'#9'1'#9'***'
          'CLIN_NOME'#9'30'#9'CLIENTE')
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alClient
        DataSource = dsClientes
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
    end
  end
  object edtConh: TEdit
    Left = 304
    Top = 40
    Width = 121
    Height = 22
    TabOrder = 1
  end
  object edtIni: TMaskEdit
    Left = 304
    Top = 96
    Width = 121
    Height = 22
    EditMask = '99/99/9999'
    MaxLength = 10
    TabOrder = 2
    Text = '  /  /    '
  end
  object edtFim: TMaskEdit
    Left = 456
    Top = 96
    Width = 121
    Height = 22
    EditMask = '99/99/9999'
    MaxLength = 10
    TabOrder = 3
    Text = '  /  /    '
  end
  object edtNF: TEdit
    Left = 304
    Top = 150
    Width = 121
    Height = 22
    TabOrder = 4
  end
  object edtFat: TEdit
    Left = 304
    Top = 200
    Width = 121
    Height = 22
    TabOrder = 5
  end
  object BitBtn1: TBitBtn
    Left = 304
    Top = 240
    Width = 145
    Height = 25
    Caption = 'Gerar Planilha Excel'
    TabOrder = 6
    OnClick = BitBtn1Click
  end
  object ProgressBar1: TProgressBar
    Left = 304
    Top = 272
    Width = 305
    Height = 17
    Min = 0
    Max = 100
    TabOrder = 7
  end
  object qrClientes: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      #9'A.CLIN_ID,'
      #9'A.CLIN_NOME,'
      #9#39#39' AS SEL'#9#9#9
      'FROM CLIENTENBF A ')
    Left = 113
    Top = 149
    object qrClientesCLIN_ID: TAutoIncField
      FieldName = 'CLIN_ID'
      ReadOnly = True
    end
    object qrClientesCLIN_NOME: TStringField
      FieldName = 'CLIN_NOME'
      Size = 30
    end
    object qrClientesSEL: TStringField
      FieldName = 'SEL'
      ReadOnly = True
      Size = 1
    end
  end
  object cdsClientes: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspClientes'
    Left = 113
    Top = 253
    object cdsClientesSEL: TStringField
      DisplayLabel = '***'
      DisplayWidth = 1
      FieldName = 'SEL'
      OnChange = cdsClientesSELChange
      Size = 1
    end
    object cdsClientesCLIN_NOME: TStringField
      DisplayLabel = 'CLIENTE'
      DisplayWidth = 30
      FieldName = 'CLIN_NOME'
      Size = 30
    end
    object cdsClientesCLIN_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'CLIN_ID'
      ReadOnly = True
      Visible = False
    end
  end
  object dspClientes: TDataSetProvider
    DataSet = qrClientes
    Constraints = True
    Left = 113
    Top = 205
  end
  object dsClientes: TDataSource
    DataSet = cdsClientes
    Left = 105
    Top = 325
  end
  object qrAux: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    Left = 104
    Top = 392
  end
  object qrBusca: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    SQL.Strings = (
      'SELECT top 1'
      '    B.CLIN_CGCCPF,'
      #9'C.CLIF_NOME,'
      #9'D.MUN_NOME,'
      #9'D.UF_SIGLA,'
      #9'A.ORD_CONH, ORD_DATA,'
      #9'A.ORD_NOTAS,'
      #9'A.ORD_QTDE_UV,'
      #9'a.ORD_PESO_TOTAL,'
      #9'A.ORD_TOTALPREST,'
      #9'A.ORD_VLR_ICMS,'
      #9't.TRANS_RAZA'
      'FROM ORDEM_COLETA_ENTREGA A INNER JOIN CLIENTENBF B'
      'ON A.CLIN_ID = B.CLIN_ID INNER JOIN CLIENTEFINAL C'
      'ON A.CLIF_ID = C.CLIF_ID inner join MUNICIPIO D'
      'ON A.MUN_ID_ENT = D.MUN_ID LEFT OUTER JOIN NF E'
      'ON A.ORD_ID = E.ORD_ID LEFT OUTER JOIN TRANSPORTADORA T'
      'ON A.TRANS_ID = T.TRANS_ID LEFT OUTER JOIN FATURA F'
      'ON A.FAT_ID = F.FAT_ID'
      'where 1 = 1')
    Left = 328
    Top = 384
    object qrBuscaCLIN_CGCCPF: TStringField
      FieldName = 'CLIN_CGCCPF'
      Size = 15
    end
    object qrBuscaCLIF_NOME: TStringField
      FieldName = 'CLIF_NOME'
      Size = 30
    end
    object qrBuscaMUN_NOME: TStringField
      FieldName = 'MUN_NOME'
      Size = 40
    end
    object qrBuscaUF_SIGLA: TStringField
      FieldName = 'UF_SIGLA'
      Size = 2
    end
    object qrBuscaORD_CONH: TStringField
      FieldName = 'ORD_CONH'
      Size = 10
    end
    object qrBuscaORD_NOTAS: TStringField
      FieldName = 'ORD_NOTAS'
      Size = 50
    end
    object qrBuscaORD_QTDE_UV: TFloatField
      FieldName = 'ORD_QTDE_UV'
    end
    object qrBuscaORD_PESO_TOTAL: TFloatField
      FieldName = 'ORD_PESO_TOTAL'
    end
    object qrBuscaORD_TOTALPREST: TFloatField
      FieldName = 'ORD_TOTALPREST'
    end
    object qrBuscaORD_VLR_ICMS: TFloatField
      FieldName = 'ORD_VLR_ICMS'
    end
    object qrBuscaTRANS_RAZA: TStringField
      FieldName = 'TRANS_RAZA'
      Size = 60
    end
    object qrBuscaORD_DATA: TDateTimeField
      FieldName = 'ORD_DATA'
    end
  end
end
