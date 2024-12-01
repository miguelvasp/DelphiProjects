object FRelMovDiario: TFRelMovDiario
  Left = 1
  Top = 35
  Width = 810
  Height = 610
  Caption = 'Relatório de Movimento Diário de Pagamentos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object RelMovDiario: TQuickRep
    Left = 1
    Top = 0
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    BeforePrint = RelMovDiarioBeforePrint
    DataSet = Q_BANC
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE'
      'QRSTRINGSBAND1')
    Functions.DATA = (
      '0'
      '0'
      #39#39
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
    PrinterSettings.OutputBin = First
    PrintIfEmpty = False
    SnapToGrid = True
    Units = MM
    Zoom = 100
    object QRBand1: TQRBand
      Left = 38
      Top = 38
      Width = 718
      Height = 113
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
        298.979166666667
        1899.70833333333)
      BandType = rbPageHeader
      object QRLabel1: TQRLabel
        Left = 250
        Top = 24
        Width = 240
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          661.458333333333
          63.5
          635)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Sistema de Controle Financeiro'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel2: TQRLabel
        Left = 196
        Top = 47
        Width = 330
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          518.583333333333
          124.354166666667
          873.125)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Relatório de Movimento Diário Pagamentos'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel3: TQRLabel
        Left = 597
        Top = 8
        Width = 36
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1579.5625
          21.1666666666667
          95.25)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Data ;'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel4: TQRLabel
        Left = 597
        Top = 24
        Width = 36
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1579.5625
          63.5
          95.25)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Hora :'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel5: TQRLabel
        Left = 597
        Top = 40
        Width = 36
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1579.5625
          105.833333333333
          95.25)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Pág. :'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRSysData1: TQRSysData
        Left = 638
        Top = 8
        Width = 36
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1688.04166666667
          21.1666666666667
          95.25)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsDate
        Transparent = False
        FontSize = 10
      end
      object QRSysData2: TQRSysData
        Left = 638
        Top = 24
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1688.04166666667
          63.5
          97.8958333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsTime
        Transparent = False
        FontSize = 10
      end
      object QRSysData3: TQRSysData
        Left = 638
        Top = 40
        Width = 46
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1688.04166666667
          105.833333333333
          121.708333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsPageNumber
        Transparent = False
        FontSize = 10
      end
      object QRShape2: TQRShape
        Left = 0
        Top = 0
        Width = 716
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.29166666666667
          0
          0
          1894.41666666667)
        Pen.Width = 2
        Shape = qrsHorLine
      end
      object QRLabel14: TQRLabel
        Left = 584
        Top = 57
        Width = 51
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          1545.16666666667
          150.8125
          134.9375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Usuário :'
        Color = clWhite
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
      object QRLabel20: TQRLabel
        Left = 639
        Top = 57
        Width = 45
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          1690.6875
          150.8125
          119.0625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Usuário'
        Color = clWhite
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
        Left = 1
        Top = 110
        Width = 716
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.29166666666667
          2.64583333333333
          291.041666666667
          1894.41666666667)
        Shape = qrsRectangle
      end
      object QRLabel26: TQRLabel
        Left = 260
        Top = 79
        Width = 237
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          687.916666666667
          209.020833333333
          627.0625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Data do Movimento : '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRDBImage1: TQRDBImage
        Left = 3
        Top = 2
        Width = 116
        Height = 54
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          142.875
          7.9375
          5.29166666666667
          306.916666666667)
        DataField = 'FOTO'
        DataSet = FMenu.Q_FOTO
        Stretch = True
      end
    end
    object QRGroup1: TQRGroup
      Left = 38
      Top = 151
      Width = 718
      Height = 48
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AfterPrint = QRGroup1AfterPrint
      AlignToBottom = False
      BeforePrint = QRGroup1BeforePrint
      Color = clMenu
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        127
        1899.70833333333)
      Expression = 'Q_BANC.BAN_CODI'
      Master = RelMovDiario
      ReprintOnNewPage = False
      object QRDBText1: TQRDBText
        Left = 88
        Top = 2
        Width = 60
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          232.833333333333
          5.29166666666667
          158.75)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clSilver
        DataSet = Q_BANC
        DataField = 'BAN_CODI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText2: TQRDBText
        Left = 160
        Top = 2
        Width = 66
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          423.333333333333
          5.29166666666667
          174.625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clSilver
        DataSet = Q_BANC
        DataField = 'BAN_NOME'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRShape1: TQRShape
        Left = 1
        Top = 22
        Width = 716
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.29166666666667
          2.64583333333333
          58.2083333333333
          1894.41666666667)
        Shape = qrsRectangle
      end
      object QRDBText8: TQRDBText
        Left = 408
        Top = 2
        Width = 63
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1079.5
          5.29166666666667
          166.6875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clSilver
        DataSet = Q_BANC
        DataField = 'BAN_AGEN'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText9: TQRDBText
        Left = 480
        Top = 2
        Width = 63
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1270
          5.29166666666667
          166.6875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clSilver
        DataSet = Q_BANC
        DataField = 'BAN_NAGE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel11: TQRLabel
        Left = 109
        Top = 26
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          288.395833333333
          68.7916666666667
          171.979166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'No. Cheque'
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel13: TQRLabel
        Left = 244
        Top = 26
        Width = 31
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          645.583333333333
          68.7916666666667
          82.0208333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Valor'
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel12: TQRLabel
        Left = 285
        Top = 26
        Width = 52
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          754.0625
          68.7916666666667
          137.583333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Histórico'
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel7: TQRLabel
        Left = 26
        Top = 26
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          68.7916666666667
          68.7916666666667
          71.4375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Data'
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRShape3: TQRShape
        Left = 1
        Top = 45
        Width = 718
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.29166666666667
          2.64583333333333
          119.0625
          1899.70833333333)
        Shape = qrsRectangle
      end
    end
    object QRBand2: TQRBand
      Left = 38
      Top = 151
      Width = 718
      Height = 0
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
        0
        1899.70833333333)
      BandType = rbTitle
    end
    object QRBand4: TQRBand
      Left = 38
      Top = 265
      Width = 718
      Height = 115
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = QRBand4BeforePrint
      Color = clWindow
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        304.270833333333
        1899.70833333333)
      BandType = rbGroupFooter
      object QRShape5: TQRShape
        Left = 0
        Top = 93
        Width = 716
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.29166666666667
          0
          246.0625
          1894.41666666667)
        Shape = qrsRectangle
      end
      object QRShape6: TQRShape
        Left = 225
        Top = 7
        Width = 259
        Height = 84
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          222.25
          595.3125
          18.5208333333333
          685.270833333333)
        Shape = qrsRectangle
      end
      object QRLabel15: TQRLabel
        Left = 236
        Top = 10
        Width = 100
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          624.416666666667
          26.4583333333333
          264.583333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Saldo Anterior R$'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel16: TQRLabel
        Left = 380
        Top = 11
        Width = 64
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1005.41666666667
          29.1041666666667
          169.333333333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRLabel16'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        OnPrint = QRLabel16Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel6: TQRLabel
        Left = 276
        Top = 28
        Width = 58
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          730.25
          74.0833333333333
          153.458333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Saídas R$'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel8: TQRLabel
        Left = 386
        Top = 29
        Width = 57
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1021.29166666667
          76.7291666666667
          150.8125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRLabel8'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        OnPrint = QRLabel8Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel9: TQRLabel
        Left = 264
        Top = 50
        Width = 70
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          698.5
          132.291666666667
          185.208333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Entradas R$'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel10: TQRLabel
        Left = 380
        Top = 50
        Width = 64
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          1005.41666666667
          132.291666666667
          169.333333333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRLabel10'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        OnPrint = QRLabel10Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel18: TQRLabel
        Left = 255
        Top = 71
        Width = 80
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          674.6875
          187.854166666667
          211.666666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Saldo Final R$'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel19: TQRLabel
        Left = 380
        Top = 70
        Width = 64
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1005.41666666667
          185.208333333333
          169.333333333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRLabel19'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        OnPrint = QRLabel19Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
    end
    object QRGroup2: TQRGroup
      Left = 38
      Top = 199
      Width = 718
      Height = 2
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
        5.29166666666667
        1899.70833333333)
      Expression = 'Q_MovBanc.MOV_DATA'
      FooterBand = QRBand4
      Master = RelMovDiario
      ReprintOnNewPage = False
    end
    object QRSubDetail1: TQRSubDetail
      Left = 38
      Top = 201
      Width = 718
      Height = 22
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
        58.2083333333333
        1899.70833333333)
      Master = RelMovDiario
      DataSet = Q_MovBanc
      PrintBefore = False
      PrintIfEmpty = True
      object QRDBText3: TQRDBText
        Left = 23
        Top = 1
        Width = 79
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          60.8541666666667
          2.64583333333333
          209.020833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Q_MovBanc
        DataField = 'MOV_DATA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = QRDBText3Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRDBText5: TQRDBText
        Left = 108
        Top = 1
        Width = 67
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          285.75
          2.64583333333333
          177.270833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Q_MovBanc
        DataField = 'MOV_DCTO'
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
        Left = 205
        Top = 1
        Width = 72
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          542.395833333333
          2.64583333333333
          190.5)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Q_MovBanc
        DataField = 'MOV_VALOR'
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
      object QRDBText6: TQRDBText
        Left = 286
        Top = 1
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          756.708333333333
          2.64583333333333
          140.229166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Q_MovBanc
        DataField = 'MOV_HIST'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
    object QRSubDetail2: TQRSubDetail
      Left = 38
      Top = 244
      Width = 718
      Height = 21
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
        55.5625
        1899.70833333333)
      Master = RelMovDiario
      DataSet = Q_ContaGerencial
      HeaderBand = QRBand3
      PrintBefore = False
      PrintIfEmpty = True
      object QRShape10: TQRShape
        Left = 374
        Top = 1
        Width = 331
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          989.541666666667
          2.64583333333333
          875.770833333333)
        Shape = qrsRectangle
      end
      object QRDBText4: TQRDBText
        Left = 397
        Top = 2
        Width = 69
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1050.39583333333
          5.29166666666667
          182.5625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Q_ContaGerencial
        DataField = 'CON_DESC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsItalic]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText10: TQRDBText
        Left = 603
        Top = 2
        Width = 34
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1595.4375
          5.29166666666667
          89.9583333333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Q_ContaGerencial
        DataField = 'xvalor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsItalic]
        Mask = '###,###,###,##0.00'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
    end
    object QRBand3: TQRBand
      Left = 38
      Top = 223
      Width = 718
      Height = 21
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
        55.5625
        1899.70833333333)
      BandType = rbGroupHeader
      object QRShape9: TQRShape
        Left = 374
        Top = 2
        Width = 331
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          989.541666666667
          5.29166666666667
          875.770833333333)
        Shape = qrsRectangle
      end
      object QRLabel17: TQRLabel
        Left = 469
        Top = 3
        Width = 149
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1240.89583333333
          7.9375
          394.229166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Total  por Conta Gerencial'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        OnPrint = QRLabel17Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
    end
    object QRBand5: TQRBand
      Left = 38
      Top = 380
      Width = 718
      Height = 514
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = QRBand5BeforePrint
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ForceNewColumn = False
      ForceNewPage = True
      ParentFont = False
      Size.Values = (
        1359.95833333333
        1899.70833333333)
      BandType = rbSummary
      object QRLabel21: TQRLabel
        Left = 67
        Top = 82
        Width = 142
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          177.270833333333
          216.958333333333
          375.708333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'SALDO ANTERIOR    R$'
        Color = clWhite
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
      object QRLabel22: TQRLabel
        Left = 67
        Top = 103
        Width = 142
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          177.270833333333
          272.520833333333
          375.708333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'SALDO FINAL             R$'
        Color = clWhite
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
      object QRLabel23: TQRLabel
        Left = 228
        Top = 82
        Width = 64
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          603.25
          216.958333333333
          169.333333333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRLabel23'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = QRLabel23Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel24: TQRLabel
        Left = 228
        Top = 102
        Width = 64
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          603.25
          269.875
          169.333333333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRLabel24'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = QRLabel24Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel25: TQRLabel
        Left = 20
        Top = 42
        Width = 192
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          52.9166666666667
          111.125
          508)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Total Geral do Movimento Diário  : '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object Desc1: TQRDBText
        Left = 67
        Top = 170
        Width = 69
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          177.270833333333
          449.791666666667
          182.5625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = q_contagerencialT
        DataField = 'CON_DESC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = Desc1Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object Desc2: TQRDBText
        Left = 67
        Top = 194
        Width = 69
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          177.270833333333
          513.291666666667
          182.5625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = q_contagerencialT
        DataField = 'CON_DESC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = Desc2Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object Desc3: TQRDBText
        Left = 67
        Top = 218
        Width = 69
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          177.270833333333
          576.791666666667
          182.5625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = q_contagerencialT
        DataField = 'CON_DESC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = Desc3Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object Tot1: TQRDBText
        Left = 229
        Top = 170
        Width = 65
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          605.895833333333
          449.791666666667
          171.979166666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = q_contagerencialT
        DataField = 'xvalor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = Tot1Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object Tot2: TQRDBText
        Left = 229
        Top = 194
        Width = 65
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          605.895833333333
          513.291666666667
          171.979166666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = q_contagerencialT
        DataField = 'xvalor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = Tot2Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object Tot3: TQRDBText
        Left = 229
        Top = 218
        Width = 65
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          605.895833333333
          576.791666666667
          171.979166666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = q_contagerencialT
        DataField = 'xvalor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = Tot3Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel28: TQRLabel
        Left = 21
        Top = 147
        Width = 192
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          55.5625
          388.9375
          508)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Total  Geral  por Conta Gerencial : '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        OnPrint = QRLabel17Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object Desc4: TQRDBText
        Left = 67
        Top = 242
        Width = 69
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          177.270833333333
          640.291666666667
          182.5625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = q_contagerencialT
        DataField = 'CON_DESC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = Desc4Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object Desc5: TQRDBText
        Left = 67
        Top = 266
        Width = 69
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          177.270833333333
          703.791666666667
          182.5625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = q_contagerencialT
        DataField = 'CON_DESC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = Desc5Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object Desc6: TQRDBText
        Left = 67
        Top = 290
        Width = 69
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          177.270833333333
          767.291666666667
          182.5625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = q_contagerencialT
        DataField = 'CON_DESC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = Desc6Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object Tot4: TQRDBText
        Left = 229
        Top = 242
        Width = 65
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          605.895833333333
          640.291666666667
          171.979166666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = q_contagerencialT
        DataField = 'xvalor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = Tot4Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object Tot5: TQRDBText
        Left = 229
        Top = 266
        Width = 65
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          605.895833333333
          703.791666666667
          171.979166666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = q_contagerencialT
        DataField = 'xvalor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = Tot5Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object Tot6: TQRDBText
        Left = 229
        Top = 290
        Width = 65
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          605.895833333333
          767.291666666667
          171.979166666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = q_contagerencialT
        DataField = 'xvalor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = Tot6Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object Tot12: TQRDBText
        Left = 229
        Top = 434
        Width = 65
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          605.895833333333
          1148.29166666667
          171.979166666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = q_contagerencialT
        DataField = 'xvalor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = Tot12Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object Tot11: TQRDBText
        Left = 229
        Top = 410
        Width = 65
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          605.895833333333
          1084.79166666667
          171.979166666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = q_contagerencialT
        DataField = 'xvalor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = Tot11Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object Tot10: TQRDBText
        Left = 229
        Top = 386
        Width = 65
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          605.895833333333
          1021.29166666667
          171.979166666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = q_contagerencialT
        DataField = 'xvalor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = Tot10Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object Tot9: TQRDBText
        Left = 229
        Top = 362
        Width = 65
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          605.895833333333
          957.791666666667
          171.979166666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = q_contagerencialT
        DataField = 'xvalor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = Tot9Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object Tot8: TQRDBText
        Left = 229
        Top = 338
        Width = 65
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          605.895833333333
          894.291666666667
          171.979166666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = q_contagerencialT
        DataField = 'xvalor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = Tot8Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object Tot7: TQRDBText
        Left = 229
        Top = 314
        Width = 65
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          605.895833333333
          830.791666666667
          171.979166666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = q_contagerencialT
        DataField = 'xvalor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = Tot7Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object Desc7: TQRDBText
        Left = 67
        Top = 314
        Width = 69
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          177.270833333333
          830.791666666667
          182.5625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = q_contagerencialT
        DataField = 'CON_DESC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = Desc7Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object Desc8: TQRDBText
        Left = 67
        Top = 338
        Width = 69
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          177.270833333333
          894.291666666667
          182.5625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = q_contagerencialT
        DataField = 'CON_DESC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = Desc8Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object Desc9: TQRDBText
        Left = 67
        Top = 362
        Width = 69
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          177.270833333333
          957.791666666667
          182.5625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = q_contagerencialT
        DataField = 'CON_DESC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = Desc9Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object Desc10: TQRDBText
        Left = 67
        Top = 386
        Width = 69
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          177.270833333333
          1021.29166666667
          182.5625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = q_contagerencialT
        DataField = 'CON_DESC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = Desc10Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object Desc11: TQRDBText
        Left = 67
        Top = 410
        Width = 69
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          177.270833333333
          1084.79166666667
          182.5625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = q_contagerencialT
        DataField = 'CON_DESC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = Desc11Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object Desc12: TQRDBText
        Left = 67
        Top = 434
        Width = 69
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          177.270833333333
          1148.29166666667
          182.5625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = q_contagerencialT
        DataField = 'CON_DESC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = Desc12Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
    end
  end
  object DS_MovBanc: TwwDataSource
    DataSet = Q_MovBanc
    Left = 30
    Top = 144
  end
  object Q_MovBanc: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    DataSource = DS_BANC
    SQL.Strings = (
      'select A.*, b.BAN_NOME, B.BAN_NAGE, B.BAN_AGEN, C.CON_DESC'
      ' from cpamovi A, CPABANC B, CPACONT C'
      'where A.MOV_BANC = B.BAN_CODI and A.MOV_CONT = C.CON_CODI')
    ValidateWithMask = True
    Left = 249
    Top = 14
    object Q_MovBancMOV_BANC: TStringField
      FieldName = 'MOV_BANC'
      Origin = 'FINANCEIRO.CPAMOVI.MOV_BANC'
      FixedChar = True
      Size = 14
    end
    object Q_MovBancMOV_DATA: TDateTimeField
      FieldName = 'MOV_DATA'
      Origin = 'FINANCEIRO.CPAMOVI.MOV_DATA'
      EditMask = '!99/99/00;1;_'
    end
    object Q_MovBancMOV_SINAL: TStringField
      FieldName = 'MOV_SINAL'
      Origin = 'FINANCEIRO.CPAMOVI.MOV_SINAL'
      FixedChar = True
      Size = 1
    end
    object Q_MovBancMOV_DCTO: TStringField
      FieldName = 'MOV_DCTO'
      Origin = 'FINANCEIRO.CPAMOVI.MOV_DCTO'
      FixedChar = True
      Size = 15
    end
    object Q_MovBancMOV_LANC: TIntegerField
      FieldName = 'MOV_LANC'
      Origin = 'FINANCEIRO.CPAMOVI.MOV_LANC'
    end
    object Q_MovBancMOV_CODI: TAutoIncField
      FieldName = 'MOV_CODI'
      Origin = 'FINANCEIRO.CPAMOVI.MOV_CODI'
    end
    object Q_MovBancMOV_DESC: TStringField
      FieldName = 'MOV_DESC'
      Origin = 'FINANCEIRO.CPAMOVI.MOV_DESC'
      FixedChar = True
      Size = 25
    end
    object Q_MovBancMOV_HIST: TStringField
      FieldName = 'MOV_HIST'
      Origin = 'FINANCEIRO.CPAMOVI.MOV_HIST'
      FixedChar = True
      Size = 70
    end
    object Q_MovBancMOV_VALOR: TFloatField
      FieldName = 'MOV_VALOR'
      Origin = 'FINANCEIRO.CPAMOVI.MOV_VALOR'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
    end
    object Q_MovBancMOV_CONT: TStringField
      FieldName = 'MOV_CONT'
      Origin = 'FINANCEIRO.CPAMOVI.MOV_CONT'
      FixedChar = True
      Size = 6
    end
    object Q_MovBancMOV_FILI: TStringField
      FieldName = 'MOV_FILI'
      Origin = 'FINANCEIRO.CPAMOVI.MOV_FILI'
      FixedChar = True
      Size = 3
    end
    object Q_MovBancMOV_ORIG: TStringField
      FieldName = 'MOV_ORIG'
      Origin = 'FINANCEIRO.CPAMOVI.MOV_ORIG'
      FixedChar = True
      Size = 1
    end
    object Q_MovBancMOV_SEQU: TIntegerField
      FieldName = 'MOV_SEQU'
      Origin = 'FINANCEIRO.CPAMOVI.MOV_SEQU'
    end
    object Q_MovBancMOV_CHEQ: TStringField
      FieldName = 'MOV_CHEQ'
      Origin = 'FINANCEIRO.CPAMOVI.MOV_SEQU'
      FixedChar = True
      Size = 1
    end
    object Q_MovBancCON_DESC: TStringField
      FieldName = 'CON_DESC'
      Origin = 'FINANCEIRO.CPACONT.CON_DESC'
      FixedChar = True
      Size = 25
    end
  end
  object STP_CALCSALD1: TwwStoredProc
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    StoredProcName = 'dbo.STP_CALCSALD1'
    ValidateWithMask = True
    Left = 763
    Top = 326
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Result'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = '@Banco'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = '@dataref'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = '@SaldoAnt'
        ParamType = ptOutput
      end
      item
        DataType = ftFloat
        Name = '@SaldoFinal'
        ParamType = ptOutput
      end>
  end
  object STP_SALDPERIODO: TwwStoredProc
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    StoredProcName = 'dbo.STP_SALDPERIODO'
    ValidateWithMask = True
    Left = 766
    Top = 270
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Result'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = '@Banco'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = '@DataRef'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = '@SaldoAnterior'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = '@SaldoFinal'
        ParamType = ptOutput
      end>
  end
  object Q_ContaGerencial: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    DataSource = DS_BANC
    SQL.Strings = (
      'SELECT B.CON_DESC, '
      
        'SUM( CASE MOV_SINAL WHEN '#39'+'#39' THEN MOV_VALOR ELSE (MOV_VALOR*(-1)' +
        ') END ) as xvalor '
      'from CPAMOVI A, CPACONT B'
      'where A.MOV_CONT = B.CON_CODI '
      'AND a.mov_BANC = :BAN_CODI'
      'group by CON_DESC')
    ValidateWithMask = True
    Left = 485
    Top = 19
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'BAN_CODI'
        ParamType = ptUnknown
      end>
    object Q_ContaGerencialCON_DESC: TStringField
      FieldName = 'CON_DESC'
      FixedChar = True
      Size = 25
    end
    object Q_ContaGerencialxvalor: TFloatField
      FieldName = 'xvalor'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
    end
  end
  object Q_BANC: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'select BAN_CODI,BAN_NOME,BAN_AGEN,BAN_NAGE'
      'from CPABANC')
    ValidateWithMask = True
    Left = 335
    Top = 14
    object Q_BANCBAN_CODI: TStringField
      FieldName = 'BAN_CODI'
      Origin = 'FINANCEIRO.CPABANC.BAN_CODI'
      FixedChar = True
      Size = 14
    end
    object Q_BANCBAN_NOME: TStringField
      FieldName = 'BAN_NOME'
      Origin = 'FINANCEIRO.CPABANC.BAN_NOME'
      FixedChar = True
      Size = 25
    end
    object Q_BANCBAN_AGEN: TStringField
      FieldName = 'BAN_AGEN'
      Origin = 'FINANCEIRO.CPABANC.BAN_AGEN'
      FixedChar = True
      Size = 4
    end
    object Q_BANCBAN_NAGE: TStringField
      FieldName = 'BAN_NAGE'
      Origin = 'FINANCEIRO.CPABANC.BAN_NAGE'
      FixedChar = True
    end
  end
  object DS_BANC: TwwDataSource
    DataSet = Q_BANC
    Left = 32
    Top = 96
  end
  object Q_TOTENT: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    ValidateWithMask = True
    Left = 406
    Top = 17
  end
  object Q_AUX: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'select BAN_DATA AS XDATA from CPABANC')
    ValidateWithMask = True
    Left = 559
    Top = 16
    object Q_AUXXDATA: TDateTimeField
      FieldName = 'XDATA'
      Origin = 'FINANCEIRO.CPABANC.BAN_DATA'
    end
  end
  object q_contagerencialT: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    DataSource = DS_MovBanc
    SQL.Strings = (
      'SELECT B.CON_DESC, '
      
        'SUM( CASE MOV_SINAL WHEN '#39'+'#39' THEN MOV_VALOR ELSE (MOV_VALOR*(-1)' +
        ') END ) as xvalor '
      'from CPAMOVI A, CPACONT B'
      'where A.MOV_CONT = B.CON_CODI '
      'group by CON_DESC')
    ValidateWithMask = True
    Left = 141
    Top = 14
    object q_contagerencialTCON_DESC: TStringField
      FieldName = 'CON_DESC'
      FixedChar = True
      Size = 25
    end
    object q_contagerencialTxvalor: TFloatField
      FieldName = 'xvalor'
    end
  end
end
