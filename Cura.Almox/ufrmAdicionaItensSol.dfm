object frmAdicionaItensSol: TfrmAdicionaItensSol
  Left = 220
  Top = 168
  Width = 746
  Height = 486
  Caption = 'Seleção de materiais'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 168
    Height = 14
    Caption = 'Selecione o grupo de materiais'
  end
  object Label2: TLabel
    Left = 16
    Top = 64
    Width = 265
    Height = 14
    Caption = 'Informe a quantidade de cada material do grupo'
  end
  object wwDBLookupCombo1: TwwDBLookupCombo
    Left = 16
    Top = 32
    Width = 473
    Height = 22
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'GRU_DESC'#9'40'#9'GRU_DESC'#9#9)
    LookupTable = qrGrupos
    LookupField = 'GRU_ID'
    TabOrder = 0
    AutoDropDown = False
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
  end
  object Button1: TButton
    Left = 496
    Top = 30
    Width = 75
    Height = 25
    Caption = 'Buscar'
    TabOrder = 1
    OnClick = Button1Click
  end
  object wwDBGrid1: TwwDBGrid
    Left = 16
    Top = 80
    Width = 705
    Height = 329
    Selected.Strings = (
      'MAT_DESC'#9'70'#9'Material'
      'UNI_SIGLA'#9'10'#9'Unidade'
      'QTDE'#9'10'#9'Qtde')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 2
    ShowHorzScrollBar = True
    DataSource = DataSource1
    TabOrder = 2
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
  end
  object Button2: TButton
    Left = 16
    Top = 416
    Width = 105
    Height = 25
    Caption = 'Adicionar'
    TabOrder = 3
    OnClick = Button2Click
  end
  object qrGrupos: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      '*'
      'FROM GRUPO_MATERIAL'
      'ORDER BY GRU_DESC')
    Left = 648
    Top = 48
    object qrGruposGRU_DESC: TStringField
      DisplayWidth = 40
      FieldName = 'GRU_DESC'
      Size = 40
    end
    object qrGruposGRU_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'GRU_ID'
      ReadOnly = True
      Visible = False
    end
  end
  object qrAux: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <
      item
        Name = 'CH'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'GRUPO'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'exec MATERIAIS_SOLICITACAO_TEMP :CH, :GRUPO')
    Left = 320
    Top = 224
  end
  object qrBusca: TADOQuery
    Active = True
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CH'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM ITEM_SOLMATERIAL_TEMP'
      'WHERE CH = :CH')
    Left = 112
    Top = 128
    object qrBuscaMAT_DESC: TStringField
      DisplayLabel = 'Material'
      DisplayWidth = 70
      FieldName = 'MAT_DESC'
      Size = 150
    end
    object qrBuscaUNI_SIGLA: TStringField
      DisplayLabel = 'Unidade'
      DisplayWidth = 10
      FieldName = 'UNI_SIGLA'
      Size = 2
    end
    object qrBuscaQTDE: TFloatField
      DisplayLabel = 'Qtde'
      DisplayWidth = 10
      FieldName = 'QTDE'
    end
    object qrBuscaID: TLargeintField
      DisplayWidth = 15
      FieldName = 'ID'
      ReadOnly = True
      Visible = False
    end
    object qrBuscaCH: TIntegerField
      DisplayWidth = 10
      FieldName = 'CH'
      Visible = False
    end
    object qrBuscaMAT_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'MAT_ID'
      Visible = False
    end
  end
  object DataSource1: TDataSource
    DataSet = qrBusca
    Left = 224
    Top = 136
  end
end
