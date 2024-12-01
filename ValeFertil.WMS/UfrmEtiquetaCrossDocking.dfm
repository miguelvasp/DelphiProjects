object frmEtiquetaCrossDocking: TfrmEtiquetaCrossDocking
  Left = 207
  Top = 134
  BorderStyle = bsSingle
  Caption = 'Etiqueta CrossDoking'
  ClientHeight = 482
  ClientWidth = 707
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  Scaled = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 111
    Height = 14
    Caption = 'Ordem de Serviço'
  end
  object edtOS: TEdit
    Left = 16
    Top = 24
    Width = 121
    Height = 22
    TabOrder = 0
  end
  object Button1: TButton
    Left = 152
    Top = 22
    Width = 153
    Height = 25
    Caption = 'Buscar Informações'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 312
    Top = 22
    Width = 129
    Height = 25
    Caption = 'Imprimir'
    TabOrder = 2
    OnClick = Button2Click
  end
  object wwDBGrid1: TwwDBGrid
    Left = 16
    Top = 56
    Width = 681
    Height = 417
    ControlType.Strings = (
      'MARCADOR;CheckBox;*;N')
    Selected.Strings = (
      'MARCADOR'#9'1'#9'***'#9'F'
      'PRO_COD'#9'16'#9'Código'
      'PRO_DESC'#9'40'#9'Produto'
      'NETIQ'#9'10'#9'Etiquetas')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DataSource1
    TabOrder = 3
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Verdana'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
  end
  object Report: TQuickRep
    Left = 470
    Top = 481
    Width = 567
    Height = 283
    Frame.Color = clBlack
    Frame.DrawTop = True
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = qrEtiqueta
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
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
    Page.Orientation = poLandscape
    Page.PaperSize = Custom
    Page.Values = (
      0
      750
      0
      1500
      0
      300
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
      Left = 0
      Top = 0
      Width = 454
      Height = 569
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = QRBand1BeforePrint
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = True
      Size.Values = (
        1505.47916666667
        1201.20833333333)
      BandType = rbDetail
      object QRLabel1: TQRLabel
        Left = 16
        Top = 42
        Width = 42
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.8541666666667
          42.3333333333333
          111.125
          111.125)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Cód:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRDBText1: TQRDBText
        Left = 51
        Top = 42
        Width = 97
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.8541666666667
          134.9375
          111.125
          256.645833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrEtiqueta
        DataField = 'PRO_COD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRMemo1: TQRMemo
        Left = 16
        Top = 70
        Width = 417
        Height = 51
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          134.9375
          42.3333333333333
          185.208333333333
          1103.3125)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object lbOS: TQRLabel
        Left = 16
        Top = 127
        Width = 212
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          79.375
          42.3333333333333
          336.020833333333
          560.916666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Ordem de Serviço:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 18
      end
      object QRLabel3: TQRLabel
        Left = 24
        Top = 206
        Width = 79
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.8541666666667
          63.5
          545.041666666667
          209.020833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Pallet N°:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRSysData1: TQRSysData
        Left = 92
        Top = 206
        Width = 32
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.8541666666667
          243.416666666667
          545.041666666667
          84.6666666666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        Data = qrsPageNumber
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        FontSize = 14
      end
      object QRLabel4: TQRLabel
        Left = 24
        Top = 231
        Width = 48
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.8541666666667
          63.5
          611.1875
          127)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Qtde:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRDBText3: TQRDBText
        Left = 72
        Top = 231
        Width = 55
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.8541666666667
          190.5
          611.1875
          145.520833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrEtiqueta
        DataField = 'QTDE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object lbLastrox: TQRLabel
        Left = 24
        Top = 159
        Width = 59
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.8541666666667
          63.5
          420.6875
          156.104166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Lastro:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRLabel2: TQRLabel
        Left = 16
        Top = 8
        Width = 171
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          79.375
          42.3333333333333
          21.1666666666667
          452.4375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Cross-Docking'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 18
      end
      object lbAlturax: TQRLabel
        Left = 24
        Top = 183
        Width = 54
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.8541666666667
          63.5
          484.1875
          142.875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Altura:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object lbTotalPage: TQRLabel
        Left = 126
        Top = 206
        Width = 103
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.8541666666667
          333.375
          545.041666666667
          272.520833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'lbTotalPage'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRDBText2: TQRDBText
        Left = 80
        Top = 160
        Width = 79
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.8541666666667
          211.666666666667
          423.333333333333
          209.020833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrEtiqueta
        DataField = 'LASTRO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRDBText4: TQRDBText
        Left = 80
        Top = 183
        Width = 77
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.8541666666667
          211.666666666667
          484.1875
          203.729166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrEtiqueta
        DataField = 'ALTURA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
    end
  end
  object qrOs: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <
      item
        Name = 'OS_ID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT OS_ID FROM OS'
      'WHERE OS_ID = :OS_ID'
      'AND TOS_ID = 5')
    Left = 352
    Top = 88
    object qrOsOS_ID: TAutoIncField
      FieldName = 'OS_ID'
      ReadOnly = True
    end
  end
  object qrAux: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    Left = 352
    Top = 144
  end
  object STP_RESUMO_CROS: TADOStoredProc
    Connection = FMenu.ADOConnection
    ProcedureName = 'STP_RESUMO_CROS;1'
    Parameters = <
      item
        Name = '@OS_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@CH'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 352
    Top = 256
  end
  object Q_RMP: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <
      item
        Name = 'OS_ID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'Select * from '
      'OS_RESUMOPRODUTO where OS_ID = :OS_ID'
      'order by  PRO_COD')
    Left = 352
    Top = 200
    object Q_RMPMRP_ID: TAutoIncField
      FieldName = 'MRP_ID'
      ReadOnly = True
    end
    object Q_RMPOS_ID: TIntegerField
      FieldName = 'OS_ID'
    end
    object Q_RMPPRO_ID: TIntegerField
      FieldName = 'PRO_ID'
    end
    object Q_RMPPRO_COD: TStringField
      FieldName = 'PRO_COD'
      Size = 16
    end
    object Q_RMPPRO_DESC: TStringField
      FieldName = 'PRO_DESC'
      Size = 40
    end
    object Q_RMPMRP_VOLUME: TFloatField
      FieldName = 'MRP_VOLUME'
    end
    object Q_RMPMRP_PESO: TFloatField
      FieldName = 'MRP_PESO'
    end
    object Q_RMPMRP_QTDEPALLET: TIntegerField
      FieldName = 'MRP_QTDEPALLET'
    end
    object Q_RMPMRP_QTDE: TFloatField
      FieldName = 'MRP_QTDE'
    end
    object Q_RMPCH: TIntegerField
      FieldName = 'CH'
    end
    object Q_RMPPAL_ID: TIntegerField
      FieldName = 'PAL_ID'
    end
  end
  object Q_PROD: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <
      item
        Name = 'PRO_ID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select PRO_ID,UVEN_ID_EXP,QTDE_UVUE,'
      
        'PRO_QTDE_PALLET,PRO_QTDE_PALLETUV ,PRO_COD, PRO_LASTRO,PRO_ALTUR' +
        'A'
      ' from PRODUTO where'
      'PRO_ID = :PRO_ID')
    Left = 280
    Top = 88
    object Q_PRODPRO_ID: TAutoIncField
      FieldName = 'PRO_ID'
      ReadOnly = True
    end
    object Q_PRODUVEN_ID_EXP: TIntegerField
      FieldName = 'UVEN_ID_EXP'
    end
    object Q_PRODQTDE_UVUE: TFloatField
      FieldName = 'QTDE_UVUE'
    end
    object Q_PRODPRO_QTDE_PALLET: TIntegerField
      FieldName = 'PRO_QTDE_PALLET'
    end
    object Q_PRODPRO_QTDE_PALLETUV: TFloatField
      FieldName = 'PRO_QTDE_PALLETUV'
    end
    object Q_PRODPRO_COD: TStringField
      FieldName = 'PRO_COD'
      Size = 16
    end
    object Q_PRODPRO_LASTRO: TIntegerField
      FieldName = 'PRO_LASTRO'
    end
    object Q_PRODPRO_ALTURA: TIntegerField
      FieldName = 'PRO_ALTURA'
    end
  end
  object qrProEspecifico: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <
      item
        Name = 'PALE_ID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select * from PRODUTO_ESPECIFICO'
      'WHERE PALE_ID = :PALE_ID')
    Left = 352
    Top = 312
    object qrProEspecificoPALE_ID: TAutoIncField
      FieldName = 'PALE_ID'
      ReadOnly = True
    end
    object qrProEspecificoCLIN_ID: TIntegerField
      FieldName = 'CLIN_ID'
    end
    object qrProEspecificoPRO_ID: TIntegerField
      FieldName = 'PRO_ID'
    end
    object qrProEspecificoCLIF_ID: TIntegerField
      FieldName = 'CLIF_ID'
    end
    object qrProEspecificoPALE_LASTRO: TIntegerField
      FieldName = 'PALE_LASTRO'
    end
    object qrProEspecificoPALE_ALTURA: TIntegerField
      FieldName = 'PALE_ALTURA'
    end
    object qrProEspecificoPALE_QTDE_PALLET: TIntegerField
      FieldName = 'PALE_QTDE_PALLET'
    end
    object qrProEspecificoPALE_QTDE_PALLETUV: TFloatField
      FieldName = 'PALE_QTDE_PALLETUV'
    end
  end
  object qrBusca: TADOQuery
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
      'SELECT '
      '   MARCADOR,'
      '   PRO_ID,'
      '   PRO_COD,'
      '   PRO_DESC,'
      '   COUNT(PRO_ID) AS NETIQ'
      'FROM ETIQUETA_CROSSDOCKING'
      'WHERE CH = :CH'
      'GROUP BY '
      '   MARCADOR,'
      '   PRO_ID,'
      '   PRO_COD,'
      '   PRO_DESC'
      'ORDER BY PRO_COD')
    Left = 224
    Top = 384
    object qrBuscaMARCADOR: TStringField
      DisplayLabel = '***'
      DisplayWidth = 1
      FieldName = 'MARCADOR'
      FixedChar = True
      Size = 1
    end
    object qrBuscaPRO_COD: TStringField
      DisplayLabel = 'Código'
      DisplayWidth = 16
      FieldName = 'PRO_COD'
      Size = 16
    end
    object qrBuscaPRO_DESC: TStringField
      DisplayLabel = 'Produto'
      DisplayWidth = 40
      FieldName = 'PRO_DESC'
      Size = 40
    end
    object qrBuscaNETIQ: TIntegerField
      DisplayLabel = 'Etiquetas'
      DisplayWidth = 10
      FieldName = 'NETIQ'
      ReadOnly = True
    end
    object qrBuscaPRO_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'PRO_ID'
      Visible = False
    end
  end
  object DataSource1: TDataSource
    DataSet = cdsBusca
    Left = 352
    Top = 424
  end
  object cdsBusca: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspBusca'
    Left = 104
    Top = 384
    object cdsBuscaMARCADOR: TStringField
      FieldName = 'MARCADOR'
      OnChange = cdsBuscaMARCADORChange
      FixedChar = True
      Size = 1
    end
    object cdsBuscaPRO_COD: TStringField
      FieldName = 'PRO_COD'
      Size = 16
    end
    object cdsBuscaPRO_DESC: TStringField
      FieldName = 'PRO_DESC'
      Size = 40
    end
    object cdsBuscaNETIQ: TIntegerField
      FieldName = 'NETIQ'
      ReadOnly = True
    end
    object cdsBuscaPRO_ID: TIntegerField
      FieldName = 'PRO_ID'
    end
  end
  object dspBusca: TDataSetProvider
    DataSet = qrBusca
    Constraints = True
    Left = 168
    Top = 384
  end
  object qrEtiqueta: TADOQuery
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
      'SELECT * FROM ETIQUETA_CROSSDOCKING'
      'WHERE MARCADOR = '#39'*'#39
      'AND CH = :CH'
      'ORDER BY PRO_COD')
    Left = 296
    Top = 384
    object qrEtiquetaID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object qrEtiquetaCH: TIntegerField
      FieldName = 'CH'
    end
    object qrEtiquetaPRO_ID: TIntegerField
      FieldName = 'PRO_ID'
    end
    object qrEtiquetaPRO_COD: TStringField
      FieldName = 'PRO_COD'
      Size = 16
    end
    object qrEtiquetaPRO_DESC: TStringField
      FieldName = 'PRO_DESC'
      Size = 40
    end
    object qrEtiquetaOS_ID: TIntegerField
      FieldName = 'OS_ID'
    end
    object qrEtiquetaNPALLET: TIntegerField
      FieldName = 'NPALLET'
    end
    object qrEtiquetaQTDE: TFloatField
      FieldName = 'QTDE'
    end
    object qrEtiquetaMARCADOR: TStringField
      FieldName = 'MARCADOR'
      FixedChar = True
      Size = 1
    end
    object qrEtiquetaLASTRO: TIntegerField
      FieldName = 'LASTRO'
    end
    object qrEtiquetaALTURA: TIntegerField
      FieldName = 'ALTURA'
    end
  end
end
