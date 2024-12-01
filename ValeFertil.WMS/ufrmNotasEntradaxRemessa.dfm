object frmNotasEntradaxRemessa: TfrmNotasEntradaxRemessa
  Left = 244
  Top = 174
  Width = 644
  Height = 267
  Caption = 'NOTAS FISCAIS REMESSA P/ ARMAZÉM GERAL X RETORNOS'
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
    Left = 24
    Top = 64
    Width = 37
    Height = 14
    Caption = 'Cliente'
  end
  object Label2: TLabel
    Left = 24
    Top = 16
    Width = 43
    Height = 14
    Caption = 'Data de'
  end
  object Label3: TLabel
    Left = 168
    Top = 16
    Width = 18
    Height = 14
    Caption = 'até'
  end
  object Label4: TLabel
    Left = 24
    Top = 112
    Width = 26
    Height = 14
    Caption = 'Nota'
  end
  object wwDBLookupCombo1: TwwDBLookupCombo
    Left = 24
    Top = 80
    Width = 577
    Height = 22
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'CLIN_RAZA'#9'50'#9'CLIN_RAZA'#9'F')
    LookupTable = qrClientes
    LookupField = 'CLIN_ID'
    TabOrder = 2
    AutoDropDown = True
    ShowButton = True
    AllowClearKey = False
  end
  object MaskEdit1: TMaskEdit
    Left = 24
    Top = 32
    Width = 121
    Height = 22
    EditMask = '99/99/9999'
    MaxLength = 10
    TabOrder = 0
    Text = '  /  /    '
  end
  object MaskEdit2: TMaskEdit
    Left = 168
    Top = 32
    Width = 121
    Height = 22
    EditMask = '99/99/9999'
    MaxLength = 10
    TabOrder = 1
    Text = '  /  /    '
  end
  object Button1: TButton
    Left = 24
    Top = 176
    Width = 153
    Height = 25
    Caption = 'Exportar para Excel'
    TabOrder = 3
    OnClick = Button1Click
  end
  object edtNota: TEdit
    Left = 24
    Top = 128
    Width = 121
    Height = 22
    TabOrder = 4
  end
  object ProgressBar1: TProgressBar
    Left = 190
    Top = 181
    Width = 411
    Height = 17
    Min = 0
    Max = 100
    TabOrder = 5
  end
  object qrClientes: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select  CLIN_ID,CLIN_RAZA  from CLIENTENBF where'
      '(CLIN_CONTRATO <> '#39'I'#39' and CLIN_CONTRATO <> '#39'R'#39') '
      'order by CLIN_RAZA '
      '')
    Left = 480
    Top = 24
    object qrClientesCLIN_RAZA: TStringField
      DisplayWidth = 50
      FieldName = 'CLIN_RAZA'
      Size = 50
    end
    object qrClientesCLIN_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'CLIN_ID'
      ReadOnly = True
      Visible = False
    end
  end
  object qrNFE: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    SQL.Strings = (
      'SELECT '
      '    A.NFI_CODI,'
      #9'A.NFI_NUMERO,'
      #9'A.NFI_SERIE,'
      #9'A.NFI_DEMI,'
      
        #9'(SELECT SUM(INF_QTDE) FROM NF_ITENS WHERE NFI_CODI = A.NFI_CODI' +
        ') QTDE_TOTAL,'
      
        #9'(SELECT SUM(INF_QTDE * INF_PUNI) FROM NF_ITENS WHERE NFI_CODI =' +
        ' A.NFI_CODI) VALOR_TOTAL,'
      #9'P.PRO_COD, p.pro_id,'
      #9'P.PRO_DESC,'
      #9'B.INF_QTDE,'
      #9'B.INF_PUNI'
      'FROM NF A INNER JOIN NF_ITENS B '
      'ON A.NFI_CODI = B.NFI_CODI INNER JOIN PRODUTO P'
      'ON B.PRO_ID = P.PRO_ID'
      'WHERE TDOC_ID = 2 '
      'AND A.NFI_EMIT_CLI = 395'
      'AND A.NFI_NUMERO = '#39'55'#39
      'ORDER BY B.PRO_COD')
    Left = 560
    Top = 24
    object qrNFENFI_CODI: TAutoIncField
      FieldName = 'NFI_CODI'
      ReadOnly = True
    end
    object qrNFENFI_NUMERO: TStringField
      FieldName = 'NFI_NUMERO'
      Size = 10
    end
    object qrNFENFI_SERIE: TStringField
      FieldName = 'NFI_SERIE'
      Size = 2
    end
    object qrNFENFI_DEMI: TDateTimeField
      FieldName = 'NFI_DEMI'
    end
    object qrNFEQTDE_TOTAL: TFloatField
      FieldName = 'QTDE_TOTAL'
      ReadOnly = True
    end
    object qrNFEVALOR_TOTAL: TFloatField
      FieldName = 'VALOR_TOTAL'
      ReadOnly = True
    end
    object qrNFEPRO_COD: TStringField
      FieldName = 'PRO_COD'
      Size = 16
    end
    object qrNFEPRO_DESC: TStringField
      FieldName = 'PRO_DESC'
      Size = 40
    end
    object qrNFEINF_QTDE: TFloatField
      FieldName = 'INF_QTDE'
    end
    object qrNFEINF_PUNI: TFloatField
      FieldName = 'INF_PUNI'
    end
    object qrNFEpro_id: TAutoIncField
      FieldName = 'pro_id'
      ReadOnly = True
    end
  end
  object qrItensRetornados: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <
      item
        Name = 'NFI_CODI'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'PRO_ID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT'
      #9'A.NFI_NUMERO,'
      #9'A.NFI_DEMI,'
      #9'C.CFA_CODI,'
      #9'B.INF_QTDE,'
      #9'B.INF_PUNI'
      #9
      'FROM NF A INNER JOIN NF_ITENS B'
      'ON A.NFI_CODI = B.NFI_CODI INNER JOIN FATURAMENTO C'
      'ON A.CFA_ID = C.CFA_ID'
      'WHERE B.INF_NFE = :NFI_CODI'
      'AND B.PRO_ID = :PRO_ID')
    Left = 440
    Top = 136
    object qrItensRetornadosNFI_NUMERO: TStringField
      FieldName = 'NFI_NUMERO'
      Size = 10
    end
    object qrItensRetornadosNFI_DEMI: TDateTimeField
      FieldName = 'NFI_DEMI'
    end
    object qrItensRetornadosCFA_CODI: TStringField
      FieldName = 'CFA_CODI'
      Size = 4
    end
    object qrItensRetornadosINF_QTDE: TFloatField
      FieldName = 'INF_QTDE'
    end
    object qrItensRetornadosINF_PUNI: TFloatField
      FieldName = 'INF_PUNI'
    end
  end
end
