object frmRequisicaoConferencia: TfrmRequisicaoConferencia
  Left = 541
  Top = 224
  Width = 910
  Height = 614
  ActiveControl = edtEAN
  Caption = 'Conferência'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object lbRequisicao: TLabel
    Left = 138
    Top = 8
    Width = 10
    Height = 18
    Caption = '0'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 10
    Top = 8
    Width = 119
    Height = 18
    Caption = 'Requisição Nro:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 11
    Top = 51
    Width = 71
    Height = 16
    Caption = 'Código EAN:'
  end
  object lbMaterial: TLabel
    Left = 11
    Top = 104
    Width = 6
    Height = 18
    Caption = '-'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 246
    Top = 51
    Width = 65
    Height = 16
    Caption = 'Quantidade'
    Visible = False
  end
  object wwDBGrid1: TwwDBGrid
    Left = 8
    Top = 136
    Width = 880
    Height = 425
    Selected.Strings = (
      'MAT_DESC'#9'70'#9'Material'#9'F'
      'Uni_Sigla'#9'2'#9'Un.'#9'F'#9
      'EAN'#9'15'#9'EAN'#9'F'#9
      'Qtde'#9'10'#9'Qtde'#9#9
      'QtdeConferencia'#9'10'#9'Qtde Conferencia'#9'F'#9)
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 0
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
  end
  object edtEAN: TEdit
    Left = 11
    Top = 69
    Width = 225
    Height = 24
    TabOrder = 1
    OnKeyPress = edtEANKeyPress
  end
  object edtQtde: TEdit
    Left = 248
    Top = 69
    Width = 73
    Height = 24
    TabOrder = 2
    Text = '1'
    Visible = False
  end
  object RadioGroup1: TRadioGroup
    Left = 568
    Top = 1
    Width = 321
    Height = 41
    Caption = 'Tipo de Leitura'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'Por Unidade'
      'Informar Quantidade')
    TabOrder = 3
    OnClick = RadioGroup1Click
  end
  object Button1: TButton
    Left = 328
    Top = 68
    Width = 75
    Height = 25
    Caption = 'Ok'
    TabOrder = 4
    Visible = False
    OnClick = Button1Click
  end
  object qrMateriais: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <
      item
        Name = 'REQ'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT Req_Item_ID,'
      #9'M.MAT_DESC,'
      #9'U.Uni_Sigla,'
      #9'M.EAN,'
      #9'RI.Qtde,'
      #9'RI.QtdeConferencia'
      'FROM Req_Item RI'
      'INNER JOIN MATERIAIS M ON RI.Mat_ID = M.MAT_ID'
      'INNER JOIN UNIDADES U ON M.UNI_ID = U.UNI_ID'
      'WHERE RI.Req_ID = :REQ'
      'ORDER BY M.MAT_DESC')
    Left = 576
    Top = 232
    object qrMateriaisMAT_DESC: TStringField
      DisplayLabel = 'Material'
      DisplayWidth = 70
      FieldName = 'MAT_DESC'
      Size = 100
    end
    object qrMateriaisUni_Sigla: TStringField
      DisplayLabel = 'Un.'
      DisplayWidth = 2
      FieldName = 'Uni_Sigla'
      Size = 2
    end
    object qrMateriaisEAN: TStringField
      DisplayWidth = 15
      FieldName = 'EAN'
      Size = 50
    end
    object qrMateriaisQtde: TFloatField
      DisplayWidth = 10
      FieldName = 'Qtde'
    end
    object qrMateriaisQtdeConferencia: TFloatField
      DisplayLabel = 'Qtde Conferencia'
      DisplayWidth = 10
      FieldName = 'QtdeConferencia'
    end
    object qrMateriaisReq_Item_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'Req_Item_ID'
      ReadOnly = True
      Visible = False
    end
  end
  object qrConsultaEAN: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <
      item
        Name = 'REQ'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'EAN'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'SELECT Req_Item_ID,'
      #9'M.MAT_DESC,'
      #9'U.Uni_Sigla,'
      #9'M.EAN,'
      #9'RI.Qtde,'
      #9'RI.QtdeConferencia'
      'FROM Req_Item RI'
      'INNER JOIN MATERIAIS M ON RI.Mat_ID = M.MAT_ID'
      'INNER JOIN UNIDADES U ON M.UNI_ID = U.UNI_ID'
      'WHERE RI.Req_ID = :REQ'
      'AND ISNULL(EAN, '#39#39') <> '#39#39
      'AND M.EAN = :EAN'
      'ORDER BY M.MAT_DESC')
    Left = 336
    Top = 288
    object qrConsultaEANReq_Item_ID: TAutoIncField
      FieldName = 'Req_Item_ID'
      ReadOnly = True
    end
    object qrConsultaEANMAT_DESC: TStringField
      FieldName = 'MAT_DESC'
      Size = 100
    end
    object qrConsultaEANUni_Sigla: TStringField
      FieldName = 'Uni_Sigla'
      Size = 2
    end
    object qrConsultaEANEAN: TStringField
      FieldName = 'EAN'
      Size = 50
    end
    object qrConsultaEANQtde: TFloatField
      FieldName = 'Qtde'
    end
    object qrConsultaEANQtdeConferencia: TFloatField
      FieldName = 'QtdeConferencia'
    end
  end
  object qrAux: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    Left = 536
    Top = 344
  end
  object DataSource1: TDataSource
    DataSet = qrMateriais
    Left = 416
    Top = 168
  end
end
