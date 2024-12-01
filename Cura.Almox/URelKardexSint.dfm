object FRelKardexSint: TFRelKardexSint
  Left = 1
  Top = 81
  Width = 798
  Height = 489
  Caption = 'Relatório'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = -3
    Top = 17
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = Q_KDXSINT
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
    Page.PaperSize = A4Small
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
      Height = 148
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
        391.583333333333
        1899.70833333333)
      BandType = rbTitle
      object QRLabel2: TQRLabel
        Left = 174
        Top = 12
        Width = 379
        Height = 36
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          95.25
          460.375
          31.75
          1002.77083333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Relatório de Kardex'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 18
      end
      object QRSysData3: TQRSysData
        Left = 645
        Top = 51
        Width = 66
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          1706.5625
          134.9375
          174.625)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsPageNumber
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Text = 'Pág: '
        Transparent = False
        FontSize = 8
      end
      object QRSysData2: TQRSysData
        Left = 645
        Top = 30
        Width = 65
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          1706.5625
          79.375
          171.979166666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Text = 'Hora: '
        Transparent = False
        FontSize = 8
      end
      object QRSysData1: TQRSysData
        Left = 648
        Top = 8
        Width = 63
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          1714.5
          21.1666666666667
          166.6875)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsDate
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Text = 'Data: '
        Transparent = False
        FontSize = 8
      end
      object QRShape1: TQRShape
        Left = 0
        Top = 140
        Width = 720
        Height = 7
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          18.5208333333333
          0
          370.416666666667
          1905)
        Pen.Width = 2
        Shape = qrsHorLine
      end
      object QRLabel1: TQRLabel
        Left = 318
        Top = 51
        Width = 82
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          76.7291666666667
          841.375
          134.9375
          216.958333333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Sintético'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRMemo1: TQRMemo
        Left = 8
        Top = 83
        Width = 700
        Height = 38
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          100.541666666667
          21.1666666666667
          219.604166666667
          1852.08333333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRShape5: TQRShape
        Left = 0
        Top = 118
        Width = 720
        Height = 7
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          18.5208333333333
          0
          312.208333333333
          1905)
        Pen.Width = 2
        Shape = qrsHorLine
      end
      object QRLabel11: TQRLabel
        Left = 10
        Top = 123
        Width = 30
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          26.4583333333333
          325.4375
          79.375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Data'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel4: TQRLabel
        Left = 122
        Top = 123
        Width = 75
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          322.791666666667
          325.4375
          198.4375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Quantidade'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel6: TQRLabel
        Left = 266
        Top = 123
        Width = 38
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          703.791666666667
          325.4375
          100.541666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Saldo'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel8: TQRLabel
        Left = 410
        Top = 123
        Width = 61
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1084.79166666667
          325.4375
          161.395833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Tipo Doc.'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel7: TQRLabel
        Left = 594
        Top = 123
        Width = 43
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1571.625
          325.4375
          113.770833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'N° Doc'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBImage1: TQRDBImage
        Left = 8
        Top = 8
        Width = 113
        Height = 73
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          193.145833333333
          21.1666666666667
          21.1666666666667
          298.979166666667)
        DataField = 'Foto'
        DataSet = FMenu.qrFoto
      end
    end
    object QRSubDetail1: TQRSubDetail
      Left = 38
      Top = 222
      Width = 718
      Height = 22
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AfterPrint = QRSubDetail1AfterPrint
      AlignToBottom = False
      BeforePrint = QRSubDetail1BeforePrint
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        58.2083333333333
        1899.70833333333)
      Master = QuickRep1
      DataSet = Q_KDXSINT
      PrintBefore = False
      PrintIfEmpty = True
      object QRDBText2: TQRDBText
        Left = 9
        Top = 2
        Width = 73
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          23.8125
          5.29166666666667
          193.145833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Q_KDXSINT
        DataField = 'DATA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText4: TQRDBText
        Left = 593
        Top = 2
        Width = 44
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1568.97916666667
          5.29166666666667
          116.416666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Q_KDXSINT
        DataField = 'DOCTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText5: TQRDBText
        Left = 410
        Top = 2
        Width = 72
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1084.79166666667
          5.29166666666667
          190.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Q_KDXSINT
        DataField = 'DESCRICAO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText7: TQRDBText
        Left = 263
        Top = 2
        Width = 41
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          695.854166666667
          5.29166666666667
          108.479166666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Q_KDXSINT
        DataField = 'SALDO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRShape4: TQRShape
        Left = 0
        Top = 16
        Width = 719
        Height = 5
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          13.2291666666667
          0
          42.3333333333333
          1902.35416666667)
        Shape = qrsHorLine
      end
      object QRDBText9: TQRDBText
        Left = 654
        Top = 2
        Width = 28
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1730.375
          5.29166666666667
          74.0833333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Q_KDXSINT
        DataField = 'TIPO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText3: TQRDBText
        Left = 156
        Top = 2
        Width = 34
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          412.75
          5.29166666666667
          89.9583333333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Q_KDXSINT
        DataField = 'QTDE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
    end
    object QRBand2: TQRBand
      Left = 38
      Top = 186
      Width = 718
      Height = 36
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AfterPrint = QRBand2AfterPrint
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        95.25
        1899.70833333333)
      BandType = rbDetail
      object QRShape3: TQRShape
        Left = 521
        Top = 3
        Width = 193
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.4375
          1378.47916666667
          7.9375
          510.645833333333)
        Shape = qrsRectangle
      end
      object QRDBText1: TQRDBText
        Left = 73
        Top = 9
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          193.145833333333
          23.8125
          140.229166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Q_KDXSINT
        DataField = 'Material'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel3: TQRLabel
        Left = 4
        Top = 7
        Width = 62
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.2083333333333
          10.5833333333333
          18.5208333333333
          164.041666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Material:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRShape2: TQRShape
        Left = 0
        Top = 30
        Width = 719
        Height = 7
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          18.5208333333333
          0
          79.375
          1902.35416666667)
        Shape = qrsHorLine
      end
      object QRDBText8: TQRDBText
        Left = 363
        Top = 9
        Width = 91
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          960.4375
          23.8125
          240.770833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Q_KDXSINT
        DataField = 'SALDO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel10: TQRLabel
        Left = 526
        Top = 7
        Width = 79
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          1391.70833333333
          18.5208333333333
          209.020833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Saldo Atual:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel5: TQRLabel
        Left = 611
        Top = 7
        Width = 79
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          1616.60416666667
          18.5208333333333
          209.020833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Saldo Atual:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
  end
  object DS_KDXSINT: TwwDataSource
    DataSet = Q_KDXSINT
    Left = 286
    Top = 330
  end
  object Q_KDXSINT: TwwQuery
    DatabaseName = 'Cura'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      
        'SELECT A.*,B.DESCRICAO FROM KARDEX A LEFT OUTER JOIN  TIPO_DOCUM' +
        'ENTO B ON '
      'A.TD_ID = B.TD_ID '
      '')
    ValidateWithMask = True
    Left = 166
    Top = 290
    object Q_KDXSINTKAR_ID: TAutoIncField
      FieldName = 'KAR_ID'
    end
    object Q_KDXSINTMAT_ID: TIntegerField
      FieldName = 'MAT_ID'
    end
    object Q_KDXSINTMARCA_ID: TIntegerField
      FieldName = 'MARCA_ID'
    end
    object Q_KDXSINTLOCAL_ID: TIntegerField
      FieldName = 'LOCAL_ID'
    end
    object Q_KDXSINTN_LOTE: TStringField
      FieldName = 'N_LOTE'
      FixedChar = True
    end
    object Q_KDXSINTVALID: TDateTimeField
      FieldName = 'VALID'
    end
    object Q_KDXSINTDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object Q_KDXSINTTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object Q_KDXSINTQTDE: TFloatField
      FieldName = 'QTDE'
      DisplayFormat = '###,###,##0.00'
    end
    object Q_KDXSINTSALDO: TFloatField
      FieldName = 'SALDO'
      DisplayFormat = '###,###,##0.00'
    end
    object Q_KDXSINTUSUARIO: TStringField
      FieldName = 'USUARIO'
      FixedChar = True
    end
    object Q_KDXSINTUSUARIOATIVO: TStringField
      FieldName = 'USUARIOATIVO'
      FixedChar = True
    end
    object Q_KDXSINTTD_ID: TIntegerField
      FieldName = 'TD_ID'
    end
    object Q_KDXSINTDOCTO: TStringField
      FieldName = 'DOCTO'
      FixedChar = True
    end
    object Q_KDXSINTFOR_CODI: TStringField
      FieldName = 'FOR_CODI'
      FixedChar = True
      Size = 15
    end
    object Q_KDXSINTalmox_id: TIntegerField
      FieldName = 'almox_id'
    end
    object Q_KDXSINTDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      FixedChar = True
      Size = 40
    end
    object Q_KDXSINTMaterial: TStringField
      FieldKind = fkLookup
      FieldName = 'Material'
      LookupDataSet = Q_MAT
      LookupKeyFields = 'MAT_ID'
      LookupResultField = 'MAT_DESC'
      KeyFields = 'MAT_ID'
      Size = 50
      Lookup = True
    end
    object Q_KDXSINTUNI_ID: TIntegerField
      FieldName = 'UNI_ID'
    end
  end
  object Q_TOT: TwwQuery
    DatabaseName = 'Cura'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'SELECT'#9'SUM(A.QTDE)  QTDE'
      #9#9' FROM'#9#9'ALMOX  A'
      #9#9' WHERE'#9#9'A.TIPO =  '#39'E'#39' '
      #9#9' AND'#9#9'A.QTDE_RETIRADA IS NULL ')
    ValidateWithMask = True
    Left = 541
    Top = 320
    object Q_TOTQTDE: TFloatField
      FieldName = 'QTDE'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object Q_MAT: TwwQuery
    DatabaseName = 'Cura'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'SELECT MAT_ID, MAT_DESC FROM MATERIAIS ')
    ValidateWithMask = True
    Left = 432
    Top = 312
    object Q_MATMAT_ID: TAutoIncField
      FieldName = 'MAT_ID'
      Origin = 'CURA.MATERIAIS.MAT_ID'
    end
    object Q_MATMAT_DESC: TStringField
      FieldName = 'MAT_DESC'
      Origin = 'CURA.MATERIAIS.MAT_DESC'
      FixedChar = True
      Size = 60
    end
  end
end
