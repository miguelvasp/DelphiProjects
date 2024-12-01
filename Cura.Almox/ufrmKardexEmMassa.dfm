object frmKardexEmMassa: TfrmKardexEmMassa
  Left = 399
  Top = 276
  Width = 510
  Height = 397
  Caption = 'Kerdex - Export em Massa'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Comic Sans MS'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 17
  object Label1: TLabel
    Left = 24
    Top = 16
    Width = 29
    Height = 17
    Caption = 'Local'
  end
  object Label2: TLabel
    Left = 24
    Top = 64
    Width = 106
    Height = 17
    Caption = 'Grupo de Materiais'
  end
  object Label3: TLabel
    Left = 24
    Top = 120
    Width = 36
    Height = 17
    Caption = 'Label3'
  end
  object cboLocal: TwwDBLookupCombo
    Left = 24
    Top = 32
    Width = 393
    Height = 25
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'Descricao'#9'50'#9'Descricao'#9#9)
    LookupTable = FKardex.qrExportLocal
    LookupField = 'Local_ID'
    TabOrder = 0
    AutoDropDown = False
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
  end
  object cboGrupo: TwwDBLookupCombo
    Left = 24
    Top = 80
    Width = 393
    Height = 25
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'GRU_DESC'#9'40'#9'GRU_DESC'#9'F'#9)
    LookupTable = FKardex.qrExportGrupo
    LookupField = 'GRU_ID'
    TabOrder = 1
    AutoDropDown = False
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
  end
  object Button1: TButton
    Left = 24
    Top = 320
    Width = 121
    Height = 25
    Caption = 'Exportar Excel'
    TabOrder = 2
    OnClick = Button1Click
  end
  object ProgressBar1: TProgressBar
    Left = 24
    Top = 136
    Width = 393
    Height = 17
    Min = 0
    Max = 100
    TabOrder = 3
  end
  object edtIni: TMaskEdit
    Left = 24
    Top = 184
    Width = 121
    Height = 25
    EditMask = '99/99/9999'
    MaxLength = 10
    TabOrder = 4
    Text = '  /  /    '
  end
  object edtFim: TMaskEdit
    Left = 168
    Top = 184
    Width = 121
    Height = 25
    EditMask = '99/99/9999'
    MaxLength = 10
    TabOrder = 5
    Text = '  /  /    '
  end
  object rzImobilizado: TRzRadioGroup
    Left = 25
    Top = 229
    Width = 217
    Height = 73
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 20
    ItemIndex = 0
    Items.Strings = (
      'Todos os Materiais'
      'Desconsiderar Materiais do Imobilizado'
      'Somente Materiais do Imobilizado')
    ParentFont = False
    TabOrder = 6
  end
  object dsExcel: TDataSource
    DataSet = FKardex.Q_KDX
    Left = 424
    Top = 136
  end
  object qrKardex: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    SQL.Strings = (
      'SELECT '#9
      #9'data as Data,'
      #9'A.N_LOTE as Lote,'
      #9'MAT.MAT_DESC as Material, '
      #9'A.QTDE as Qtde, '
      #9'A.SALDO as Saldo,'
      #9'A.VALID as Validade, '
      #9'MAC.MARCA_DESC as Marca, '
      #9'LOC.Descricao AS Local, '
      #9'B.Descricao AS TipoDocumento,'
      #9'A.DOCTO as NumeroDocumento,'
      #9'FORN.FOR_RAZA as Fornecedor,'
      #9'A.USUARIO'
      
        'FROM KARDEX A with (nolock) LEFT OUTER JOIN  TIPO_DOCUMENTO B wi' +
        'th (nolock) ON '
      #9#9'A.TD_ID = B.TD_ID ,'
      #9#9'CPAFORN FORN with (nolock),'
      #9#9'MATERIAIS MAT with (nolock), '
      #9#9'LOCAL LOC with (nolock),'
      #9#9'MARCAS MAC with (nolock)'
      'WHERE'#9#9'A.FOR_CODI = FORN.FOR_CODI'
      'AND             A.MAT_ID = MAT.MAT_ID'
      'AND             A.MARCA_ID = MAC.MARCA_ID'
      'AND             A.LOCAL_ID = LOC.LOCAL_ID'
      'ORDER BY '#9'A.N_LOTE,'
      'CONVERT(CHAR(10),DATA,112) DESC')
    Left = 320
    Top = 152
    object qrKardexData: TDateTimeField
      FieldName = 'Data'
    end
    object qrKardexLote: TStringField
      FieldName = 'Lote'
    end
    object qrKardexMaterial: TStringField
      FieldName = 'Material'
      Size = 100
    end
    object qrKardexQtde: TFloatField
      FieldName = 'Qtde'
    end
    object qrKardexSaldo: TFloatField
      FieldName = 'Saldo'
    end
    object qrKardexValidade: TDateTimeField
      FieldName = 'Validade'
    end
    object qrKardexMarca: TStringField
      FieldName = 'Marca'
    end
    object qrKardexLocal: TStringField
      FieldName = 'Local'
      Size = 50
    end
    object qrKardexTipoDocumento: TStringField
      FieldName = 'TipoDocumento'
      Size = 40
    end
    object qrKardexNumeroDocumento: TStringField
      FieldName = 'NumeroDocumento'
    end
    object qrKardexFornecedor: TStringField
      FieldName = 'Fornecedor'
      FixedChar = True
      Size = 100
    end
    object qrKardexUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object qrAux: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    Left = 288
    Top = 232
  end
end
