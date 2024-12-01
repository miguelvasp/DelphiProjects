object frmLiberaPosicao: TfrmLiberaPosicao
  Left = 436
  Top = 185
  Width = 336
  Height = 442
  Caption = 'Liberação de Posição'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 18
  object wwDBGrid1: TwwDBGrid
    Left = 16
    Top = 48
    Width = 289
    Height = 345
    Selected.Strings = (
      'POS_COD'#9'6'#9'Posição'
      'POS_UTILIZADO'#9'1'#9'Bloqueado')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DataSource1
    TabOrder = 0
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'Verdana'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    IndicatorColor = icBlack
  end
  object BitBtn1: TBitBtn
    Left = 16
    Top = 8
    Width = 169
    Height = 33
    Caption = 'Liberar Posições'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object ADOQuery1: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT A.*'
      'FROM  AREA_POSICOES A (NOLOCK)'
      
        'LEFT   OUTER JOIN ESTOQUE  C     ON A.POS_ID= C.POS_ID and C.EST' +
        'Q_QTDE_RETIRA = 0'
      'LEFT   OUTER JOIN PRODUTO  D     ON D.PRO_ID= C.PRO_ID ,AREA B '
      'where A.AR_ID = B.AR_ID'
      'AND ESTQ_TAG IS NULL'
      'AND POS_UTILIZADO = '#39'S'#39)
    Left = 112
    Top = 136
    object ADOQuery1POS_COD: TStringField
      DisplayLabel = 'Posição'
      DisplayWidth = 6
      FieldName = 'POS_COD'
      Size = 6
    end
    object ADOQuery1POS_UTILIZADO: TStringField
      DisplayLabel = 'Bloqueado'
      DisplayWidth = 1
      FieldName = 'POS_UTILIZADO'
      Size = 1
    end
    object ADOQuery1POS_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'POS_ID'
      ReadOnly = True
      Visible = False
    end
    object ADOQuery1AR_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'AR_ID'
      Visible = False
    end
    object ADOQuery1POS_PESOMAX: TFloatField
      DisplayWidth = 10
      FieldName = 'POS_PESOMAX'
      Visible = False
    end
    object ADOQuery1STATUS: TStringField
      DisplayWidth = 1
      FieldName = 'STATUS'
      Visible = False
      FixedChar = True
      Size = 1
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 136
    Top = 224
  end
end
