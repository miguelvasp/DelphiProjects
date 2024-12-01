object frmDespesasFreteLote: TfrmDespesasFreteLote
  Left = 271
  Top = 55
  BorderStyle = bsDialog
  Caption = 'Despesas por frete - Lançamento em Lote'
  ClientHeight = 566
  ClientWidth = 824
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 14
  object rgQuinzena: TRadioGroup
    Left = 8
    Top = 8
    Width = 153
    Height = 65
    Caption = 'Quinzena'
    ItemIndex = 0
    Items.Strings = (
      '1° Quinzena'
      '2° Quinzena')
    TabOrder = 0
  end
  object rgMes: TRadioGroup
    Left = 168
    Top = 8
    Width = 641
    Height = 65
    BiDiMode = bdLeftToRight
    Caption = 'Mês'
    Columns = 6
    ItemIndex = 0
    Items.Strings = (
      'Janeiro'
      'Fevereiro'
      'Março'
      'Abril'
      'Maio'
      'Junho'
      'Julho'
      'Agosto'
      'Setembro'
      'Outubro'
      'Novembro'
      'Dezembro')
    ParentBiDiMode = False
    TabOrder = 1
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 80
    Width = 153
    Height = 65
    Caption = 'Ano'
    TabOrder = 2
    object cboAno: TComboBox
      Left = 12
      Top = 27
      Width = 131
      Height = 22
      Style = csDropDownList
      ItemHeight = 14
      TabOrder = 0
      Items.Strings = (
        '2013'
        '2014'
        '2015'
        '2016'
        '2017'
        '2018'
        '2019'
        '2020')
    end
  end
  object RadioGroup3: TRadioGroup
    Left = 168
    Top = 80
    Width = 641
    Height = 65
    Caption = 'Tipo de despesa'
    TabOrder = 3
  end
  object cboTipoDespesa: TwwDBLookupCombo
    Left = 184
    Top = 107
    Width = 609
    Height = 22
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'TIPO'#9'50'#9'TIPO'#9'F')
    LookupTable = qrTipo
    LookupField = 'ID'
    TabOrder = 4
    AutoDropDown = True
    ShowButton = True
    AllowClearKey = False
    OnCloseUp = cboTipoDespesaCloseUp
    OnExit = cboTipoDespesaExit
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 152
    Width = 801
    Height = 65
    Caption = 'Informações do transportador / valor da despesa'
    TabOrder = 5
    object cboTransportador: TwwDBLookupCombo
      Left = 23
      Top = 25
      Width = 497
      Height = 22
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'TRANS_FANTASIA'#9'40'#9'TRANS_FANTASIA'#9'F')
      LookupTable = qrTrans
      LookupField = 'TRANS_ID'
      TabOrder = 0
      AutoDropDown = True
      ShowButton = True
      AllowClearKey = False
    end
    object edtValor: TEdit
      Left = 535
      Top = 25
      Width = 121
      Height = 22
      TabOrder = 1
    end
    object Button1: TButton
      Left = 682
      Top = 23
      Width = 98
      Height = 25
      Caption = 'Adicionar'
      TabOrder = 2
      OnClick = Button1Click
    end
  end
  object wwDBGrid1: TwwDBGrid
    Left = 8
    Top = 224
    Width = 809
    Height = 307
    Selected.Strings = (
      'DATA'#9'10'#9'DATA'
      'VALOR'#9'10'#9'VALOR'
      'TRANS_FANTASIA'#9'40'#9'TRANSPORTADOR'
      'TIPO_1'#9'45'#9'TIPO DE DESPESA'#9'F')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 6
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
  object Button2: TButton
    Left = 16
    Top = 536
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 7
    OnClick = Button2Click
  end
  object qrTrans: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT TRANS_ID, TRANS_FANTASIA'
      'FROM TRANSPORTADORA'
      'ORDER BY TRANS_FANTASIA')
    Left = 392
    Top = 152
    object qrTransTRANS_FANTASIA: TStringField
      DisplayWidth = 40
      FieldName = 'TRANS_FANTASIA'
      Size = 40
    end
    object qrTransTRANS_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'TRANS_ID'
      ReadOnly = True
      Visible = False
    end
  end
  object qrTipo: TADOQuery
    Active = True
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from TP_DESPESA_FRETE'
      'order by tipo')
    Left = 632
    Top = 112
    object qrTipoTIPO: TStringField
      DisplayWidth = 50
      FieldName = 'TIPO'
      Size = 50
    end
    object qrTipoID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'ID'
      ReadOnly = True
      Visible = False
    end
  end
  object qrDespesas: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      #9'A.*, B.TRANS_FANTASIA, C.TIPO'
      'FROM DESPESAS_FRETE A INNER JOIN TRANSPORTADORA B'
      'ON A.TRANS_ID = B.TRANS_ID INNER JOIN TP_DESPESA_FRETE C'
      'ON A.TIPO = C.ID')
    Left = 720
    Top = 312
    object qrDespesasDATA: TDateTimeField
      DisplayWidth = 10
      FieldName = 'DATA'
    end
    object qrDespesasVALOR: TFloatField
      DisplayWidth = 10
      FieldName = 'VALOR'
      DisplayFormat = '###,###,##0.00'
    end
    object qrDespesasTRANS_FANTASIA: TStringField
      DisplayLabel = 'TRANSPORTADOR'
      DisplayWidth = 40
      FieldName = 'TRANS_FANTASIA'
      Size = 40
    end
    object qrDespesasTIPO_1: TStringField
      DisplayLabel = 'TIPO DE DESPESA'
      DisplayWidth = 45
      FieldName = 'TIPO_1'
      Size = 50
    end
    object qrDespesasTIPO: TIntegerField
      DisplayWidth = 10
      FieldName = 'TIPO'
      Visible = False
    end
    object qrDespesasDE_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'DE_ID'
      ReadOnly = True
      Visible = False
    end
    object qrDespesasTRANS_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'TRANS_ID'
      Visible = False
    end
  end
  object DataSource1: TDataSource
    DataSet = qrDespesas
    Left = 344
    Top = 304
  end
  object qrAdd: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    SQL.Strings = (
      'SELECT TOP 0 * FROM DESPESAS_FRETE')
    Left = 160
    Top = 400
    object qrAddDE_ID: TAutoIncField
      FieldName = 'DE_ID'
      ReadOnly = True
    end
    object qrAddTRANS_ID: TIntegerField
      FieldName = 'TRANS_ID'
    end
    object qrAddDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object qrAddTIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object qrAddVALOR: TFloatField
      FieldName = 'VALOR'
    end
  end
  object qrAux: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    Left = 256
    Top = 288
  end
end
