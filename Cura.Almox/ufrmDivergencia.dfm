object frmDivergencia: TfrmDivergencia
  Left = 218
  Top = 102
  Width = 1120
  Height = 583
  Caption = 'Divergências'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 14
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1104
    Height = 113
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 37
      Height = 14
      Caption = 'Código'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 88
      Top = 8
      Width = 56
      Height = 14
      Caption = 'Solicitante'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 688
      Top = 8
      Width = 25
      Height = 14
      Caption = 'Data'
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 8
      Top = 56
      Width = 27
      Height = 14
      Caption = 'Local'
      FocusControl = DBEdit4
    end
    object Label5: TLabel
      Left = 552
      Top = 56
      Width = 35
      Height = 14
      Caption = 'Status'
      FocusControl = DBEdit5
    end
    object DBEdit1: TDBEdit
      Left = 8
      Top = 24
      Width = 64
      Height = 22
      DataField = 'divId'
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 88
      Top = 24
      Width = 585
      Height = 22
      DataField = 'Solicitante'
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 688
      Top = 24
      Width = 112
      Height = 22
      DataField = 'Data'
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 8
      Top = 72
      Width = 529
      Height = 22
      DataField = 'LOCAL'
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 552
      Top = 72
      Width = 249
      Height = 22
      DataField = 'STATUS'
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 4
    end
  end
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 113
    Width = 1104
    Height = 383
    Selected.Strings = (
      'Material'#9'50'#9'Material'
      'Lote'#9'16'#9'Lote'#9'F'
      'Validade'#9'12'#9'Validade'
      'Qtde'#9'7'#9'Qtde'
      'Motivo'#9'200'#9'Motivo')
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
    TabOrder = 1
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
  end
  object Panel2: TPanel
    Left = 0
    Top = 496
    Width = 1104
    Height = 49
    Align = alBottom
    TabOrder = 2
    object Button1: TButton
      Left = 12
      Top = 12
      Width = 117
      Height = 25
      Caption = 'Concluir'
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object qrDivergencia: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <
      item
        Name = 'divid'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM DIVERGENCIA'
      'where divId = :divid')
    Left = 544
    Top = 256
    object qrDivergenciadivId: TAutoIncField
      FieldName = 'divId'
      ReadOnly = True
    end
    object qrDivergenciaSolicitante: TStringField
      FieldName = 'Solicitante'
      Size = 255
    end
    object qrDivergenciaData: TDateTimeField
      FieldName = 'Data'
    end
    object qrDivergenciaLOCAL: TStringField
      FieldName = 'LOCAL'
      Size = 255
    end
    object qrDivergenciaSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 50
    end
  end
  object DataSource1: TDataSource
    DataSet = qrDivergencia
    OnDataChange = DataSource1DataChange
    Left = 640
    Top = 248
  end
  object qrItens: TADOQuery
    Active = True
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'divid'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM DIVERGENCIAITEM'
      'where divid = :divid')
    Left = 304
    Top = 256
    object qrItensMaterial: TStringField
      DisplayWidth = 50
      FieldName = 'Material'
      Size = 255
    end
    object qrItensLote: TStringField
      DisplayWidth = 16
      FieldName = 'Lote'
      Size = 50
    end
    object qrItensValidade: TDateTimeField
      DisplayWidth = 12
      FieldName = 'Validade'
    end
    object qrItensQtde: TFloatField
      DisplayWidth = 7
      FieldName = 'Qtde'
    end
    object qrItensMotivo: TStringField
      DisplayWidth = 200
      FieldName = 'Motivo'
      Size = 255
    end
    object qrItensitem: TAutoIncField
      DisplayWidth = 10
      FieldName = 'item'
      ReadOnly = True
      Visible = False
    end
    object qrItensdivId: TIntegerField
      DisplayWidth = 10
      FieldName = 'divId'
      Visible = False
    end
  end
  object DataSource2: TDataSource
    DataSet = qrItens
    Left = 168
    Top = 232
  end
end
