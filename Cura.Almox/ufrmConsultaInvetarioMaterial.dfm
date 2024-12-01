object frmConsultaInvetarioMaterial: TfrmConsultaInvetarioMaterial
  Left = 181
  Top = 32
  Width = 720
  Height = 591
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  Caption = 'Consulta de Materiais inventariados'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  Scaled = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
  object Label2: TLabel
    Left = 12
    Top = 51
    Width = 128
    Height = 14
    Caption = 'GRUPO DE MATERIAIS:'
  end
  object Label4: TLabel
    Left = 14
    Top = 5
    Width = 40
    Height = 14
    Caption = 'LOCAL:'
  end
  object cboGrupoMaterial: TwwDBLookupCombo
    Left = 13
    Top = 69
    Width = 441
    Height = 22
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'GRU_DESC'#9'40'#9'GRU_DESC'#9'F'
      'GRU_ID'#9'10'#9'GRU_ID'#9'F')
    DataField = 'gru_desc'
    LookupTable = qrGrupoMat
    LookupField = 'GRU_ID'
    TabOrder = 0
    AutoDropDown = False
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
  end
  object cboLocal: TwwDBLookupCombo
    Left = 13
    Top = 22
    Width = 441
    Height = 22
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'Descricao'#9'50'#9'Descricao'#9'F')
    LookupTable = qrLocal
    LookupField = 'Local_ID'
    TabOrder = 1
    AutoDropDown = False
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
  end
  object Button1: TButton
    Left = 584
    Top = 7
    Width = 97
    Height = 25
    Caption = 'Buscar'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 584
    Top = 39
    Width = 97
    Height = 25
    Caption = 'Excel'
    Enabled = False
    TabOrder = 3
    OnClick = Button2Click
  end
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 128
    Width = 665
    Height = 401
    Selected.Strings = (
      'MAT_DESC'#9'50'#9'Material'#9'F'
      'INV'#9'10'#9'N°Inv. '#9'F'
      'DATA'#9'18'#9'Data'#9'F')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = dsExcel
    ReadOnly = True
    TabOrder = 4
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
  end
  object RadioGroup1: TRadioGroup
    Left = 13
    Top = 90
    Width = 436
    Height = 33
    Caption = 'Ordenar por'
    Columns = 3
    ItemIndex = 0
    Items.Strings = (
      'Material'
      'Inventário'
      'Data')
    TabOrder = 5
  end
  object CheckBox1: TCheckBox
    Left = 464
    Top = 104
    Width = 137
    Height = 17
    Caption = 'Sem inventário'
    TabOrder = 6
  end
  object Panel1: TPanel
    Left = 184
    Top = 296
    Width = 297
    Height = 41
    Caption = 'Por favor aguarde'
    Color = clBlack
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    Visible = False
  end
  object Button3: TButton
    Left = 584
    Top = 72
    Width = 97
    Height = 25
    Caption = 'Visualizar'
    TabOrder = 8
    OnClick = Button3Click
  end
  object QuickRep1: TQuickRep
    Left = 864
    Top = 424
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = qrBusca
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = A4
    Page.Values = (
      100
      2970
      100
      2100
      100
      100
      0)
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.OutputBin = Auto
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    object QRBand1: TQRBand
      Left = 38
      Top = 38
      Width = 718
      Height = 67
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        177.270833333333
        1899.70833333333)
      BandType = rbPageHeader
      object QRLabel1: TQRLabel
        Left = 6
        Top = 3
        Width = 334
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.8541666666667
          15.875
          7.9375
          883.708333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Consulta de Materiais Inventariados'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRLabel2: TQRLabel
        Left = 8
        Top = 40
        Width = 47
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          21.1666666666667
          105.833333333333
          124.354166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Material'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel3: TQRLabel
        Left = 528
        Top = 40
        Width = 38
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1397
          105.833333333333
          100.541666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'N° Inv.'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel4: TQRLabel
        Left = 600
        Top = 40
        Width = 28
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1587.5
          105.833333333333
          74.0833333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Data'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape1: TQRShape
        Left = 0
        Top = 57
        Width = 718
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.8125
          0
          150.8125
          1899.70833333333)
        Shape = qrsHorLine
      end
    end
    object QRBand2: TQRBand
      Left = 38
      Top = 105
      Width = 718
      Height = 20
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        52.9166666666667
        1899.70833333333)
      BandType = rbDetail
      object QRDBText1: TQRDBText
        Left = 8
        Top = 1
        Width = 71
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          21.1666666666667
          2.64583333333333
          187.854166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrBusca
        DataField = 'MAT_DESC'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText2: TQRDBText
        Left = 528
        Top = 1
        Width = 22
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1397
          2.64583333333333
          58.2083333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrBusca
        DataField = 'INV'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText3: TQRDBText
        Left = 600
        Top = 1
        Width = 35
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1587.5
          2.64583333333333
          92.6041666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrBusca
        DataField = 'DATA'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
  end
  object qrGrupoMat: TwwQuery
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'SELECT * FROM GRUPO_MATERIAL')
    ValidateWithMask = True
    Left = 360
    Top = 376
    object qrGrupoMatGRU_DESC: TStringField
      DisplayWidth = 40
      FieldName = 'GRU_DESC'
      Origin = 'CURA.GRUPO_MATERIAL.GRU_DESC'
      FixedChar = True
      Size = 40
    end
    object qrGrupoMatGRU_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'GRU_ID'
      Origin = 'CURA.GRUPO_MATERIAL.GRU_ID'
    end
  end
  object qrLocal: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM LOCAL'
      'ORDER BY DESCRICAO')
    Left = 536
    Top = 53
    object qrLocalLocal_ID: TAutoIncField
      FieldName = 'Local_ID'
      ReadOnly = True
    end
    object qrLocalDescricao: TStringField
      FieldName = 'Descricao'
      Size = 50
    end
    object qrLocalDisponivelSN: TStringField
      FieldName = 'DisponivelSN'
      FixedChar = True
      Size = 1
    end
    object qrLocalCONSUMO: TStringField
      FieldName = 'CONSUMO'
      FixedChar = True
      Size = 1
    end
    object qrLocalCONTROLA_ESTOQUE: TStringField
      FieldName = 'CONTROLA_ESTOQUE'
      FixedChar = True
      Size = 1
    end
  end
  object ADOStoredProc1: TADOStoredProc
    Connection = FMenu.ADOConnection
    ProcedureName = 'LISTA_MATERIAL_INV;1'
    Parameters = <
      item
        Name = '@LOCAL'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@GRUPO'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 240
    Top = 128
  end
  object qrBusca: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT '
      #9'M.MAT_DESC,'
      #9'A.INV,'
      #9'A.DATA'
      'FROM INVENTARIO_CONFERENCIA A INNER JOIN MATERIAIS M'
      'ON A.MAT_ID = M.MAT_ID')
    Left = 256
    Top = 296
    object qrBuscaMAT_DESC: TStringField
      DisplayLabel = 'Material'
      DisplayWidth = 50
      FieldName = 'MAT_DESC'
      Size = 100
    end
    object qrBuscaINV: TIntegerField
      DisplayLabel = 'N°Inv. '
      DisplayWidth = 10
      FieldName = 'INV'
    end
    object qrBuscaDATA: TDateTimeField
      DisplayLabel = 'Data'
      DisplayWidth = 18
      FieldName = 'DATA'
    end
  end
  object dsExcel: TDataSource
    DataSet = qrBusca
    Left = 744
    Top = 64
  end
end
