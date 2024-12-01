object frmGeraNFSE: TfrmGeraNFSE
  Left = 379
  Top = 252
  BorderStyle = bsDialog
  Caption = 'Geração de documentos'
  ClientHeight = 485
  ClientWidth = 914
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 14
  object lbl1: TLabel
    Left = 16
    Top = 13
    Width = 222
    Height = 14
    Caption = 'Valores a serem gerados por documento'
  end
  object lblOrdId: TLabel
    Left = 784
    Top = 8
    Width = 42
    Height = 14
    Caption = 'lblOrdId'
  end
  object wwDBGrid1: TwwDBGrid
    Left = 16
    Top = 32
    Width = 889
    Height = 401
    Selected.Strings = (
      'DOCUMENTO'#9'12'#9'Documento'
      'Item'#9'100'#9'Item'
      'VALOR'#9'15'#9'Valor'#9'F')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = ds1
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
  object btn1: TButton
    Left = 16
    Top = 448
    Width = 105
    Height = 25
    Caption = 'Confirmar'
    TabOrder = 1
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 128
    Top = 448
    Width = 105
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 2
    OnClick = btn2Click
  end
  object qrygera: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'ord_id'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select * from CTE_NFSE_Geracao'
      'where ord_id = :ord_id'
      'order by Documento')
    Left = 400
    Top = 208
    object qrygeraDOCUMENTO: TStringField
      DisplayLabel = 'Documento'
      DisplayWidth = 12
      FieldName = 'DOCUMENTO'
      Size = 50
    end
    object qrygeraItem: TStringField
      DisplayWidth = 100
      FieldName = 'Item'
      Size = 150
    end
    object qrygeraVALOR: TFloatField
      DisplayLabel = 'Valor'
      DisplayWidth = 15
      FieldName = 'VALOR'
      DisplayFormat = '###,###,##0.00'
    end
    object qrygeraID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'ID'
      ReadOnly = True
      Visible = False
    end
    object qrygeraORD_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'ORD_ID'
      Visible = False
    end
    object qrygeraSTATUS: TStringField
      DisplayWidth = 1
      FieldName = 'STATUS'
      Visible = False
      Size = 1
    end
  end
  object ds1: TDataSource
    DataSet = qrygera
    Left = 256
    Top = 176
  end
  object qryApaga: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <
      item
        Name = 'ord_id'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'delete from CTE_NFSE_Geracao'
      'where ord_id = :ord_id')
    Left = 336
    Top = 280
  end
  object qryConfig: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <
      item
        Name = 'dest'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'select * from CTE_NFSE_Configuracao'
      'where uf_destino = :dest')
    Left = 160
    Top = 204
    object qryConfigid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object qryConfigUF_ORIGEM: TStringField
      FieldName = 'UF_ORIGEM'
      Size = 50
    end
    object qryConfigUF_DESTINO: TStringField
      FieldName = 'UF_DESTINO'
      Size = 50
    end
    object qryConfigFRETE: TStringField
      FieldName = 'FRETE'
      Size = 50
    end
    object qryConfigSEGURO: TStringField
      FieldName = 'SEGURO'
      Size = 50
    end
    object qryConfigPEDAGIO: TStringField
      FieldName = 'PEDAGIO'
      Size = 50
    end
    object qryConfigDESPACHO: TStringField
      FieldName = 'DESPACHO'
      Size = 50
    end
    object qryConfigDESCARGA: TStringField
      FieldName = 'DESCARGA'
      Size = 50
    end
  end
  object sp1: TADOStoredProc
    Connection = FMenu.ADOConnection
    ProcedureName = 'GERA_NFSE_POR_TIPO;1'
    Parameters = <
      item
        Name = '@ORD_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@DOCUMENTO'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end>
    Left = 568
    Top = 184
  end
end
