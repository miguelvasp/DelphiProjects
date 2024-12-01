object FRelMovAnual_Pagamento: TFRelMovAnual_Pagamento
  Left = 0
  Top = -1
  Width = 803
  Height = 552
  HorzScrollBar.Position = 345
  Caption = 'Faturamento'
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
    Left = -345
    Top = 3
    Width = 1123
    Height = 794
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = Q_RELA
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
    Page.Orientation = poLandscape
    Page.PaperSize = A4
    Page.Values = (
      100
      2100
      100
      2970
      50
      50
      0)
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.OutputBin = First
    PrintIfEmpty = True
    SnapToGrid = True
    Units = Native
    Zoom = 100
    object QRBand1: TQRBand
      Left = 19
      Top = 38
      Width = 1085
      Height = 208
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
        550.333333333333
        2870.72916666667)
      BandType = rbPageHeader
      object QRShape56: TQRShape
        Left = 952
        Top = 160
        Width = 132
        Height = 42
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          111.125
          2518.83333333333
          423.333333333333
          349.25)
        Shape = qrsRectangle
      end
      object QRSDez: TQRShape
        Left = 890
        Top = 160
        Width = 63
        Height = 42
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          111.125
          2354.79166666667
          423.333333333333
          166.6875)
        Shape = qrsRectangle
      end
      object QRSNov: TQRShape
        Left = 826
        Top = 160
        Height = 42
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          111.125
          2185.45833333333
          423.333333333333
          171.979166666667)
        Shape = qrsRectangle
      end
      object QRSOut: TQRShape
        Left = 764
        Top = 160
        Width = 63
        Height = 42
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          111.125
          2021.41666666667
          423.333333333333
          166.6875)
        Shape = qrsRectangle
      end
      object QRSSet: TQRShape
        Left = 698
        Top = 160
        Width = 67
        Height = 42
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          111.125
          1846.79166666667
          423.333333333333
          177.270833333333)
        Shape = qrsRectangle
      end
      object QRSAgo: TQRShape
        Left = 634
        Top = 160
        Height = 42
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          111.125
          1677.45833333333
          423.333333333333
          171.979166666667)
        Shape = qrsRectangle
      end
      object QRSJul: TQRShape
        Left = 570
        Top = 160
        Height = 42
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          111.125
          1508.125
          423.333333333333
          171.979166666667)
        Shape = qrsRectangle
      end
      object QRSJun: TQRShape
        Left = 505
        Top = 160
        Width = 66
        Height = 42
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          111.125
          1336.14583333333
          423.333333333333
          174.625)
        Shape = qrsRectangle
      end
      object QRSMai: TQRShape
        Left = 441
        Top = 160
        Height = 42
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          111.125
          1166.8125
          423.333333333333
          171.979166666667)
        Shape = qrsRectangle
      end
      object QRSAbr: TQRShape
        Left = 377
        Top = 160
        Height = 42
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          111.125
          997.479166666667
          423.333333333333
          171.979166666667)
        Shape = qrsRectangle
      end
      object QRSMar: TQRShape
        Left = 313
        Top = 160
        Height = 42
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          111.125
          828.145833333333
          423.333333333333
          171.979166666667)
        Shape = qrsRectangle
      end
      object QRSFev: TQRShape
        Left = 249
        Top = 160
        Height = 42
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          111.125
          658.8125
          423.333333333333
          171.979166666667)
        Shape = qrsRectangle
      end
      object QRSJan: TQRShape
        Left = 185
        Top = 160
        Height = 42
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          111.125
          489.479166666667
          423.333333333333
          171.979166666667)
        Shape = qrsRectangle
      end
      object QRShape2: TQRShape
        Left = 0
        Top = 213
        Width = 1085
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          171.979166666667
          0
          563.5625
          2870.72916666667)
        Shape = qrsHorLine
      end
      object QRLabel23: TQRLabel
        Left = 4
        Top = 164
        Width = 177
        Height = 42
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          111.125
          10.5833333333333
          433.916666666667
          468.3125)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Operacional/Não Operacional/Financeira'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel35: TQRLabel
        Left = 957
        Top = 170
        Width = 60
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.5625
          2532.0625
          449.791666666667
          158.75)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Total R$:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRShape4: TQRShape
        Left = 0
        Top = 152
        Width = 1085
        Height = 8
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          21.1666666666667
          0
          402.166666666667
          2870.72916666667)
        Shape = qrsHorLine
      end
      object QRShape17: TQRShape
        Left = 0
        Top = 206
        Width = 1085
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.29166666666667
          0
          545.041666666667
          2870.72916666667)
        Shape = qrsHorLine
      end
      object QRLabel19: TQRLabel
        Left = 1030
        Top = 169
        Width = 45
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.5625
          2725.20833333333
          447.145833333333
          119.0625)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '%'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRShape31: TQRShape
        Left = 1019
        Top = 160
        Width = 8
        Height = 41
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          108.479166666667
          2696.10416666667
          423.333333333333
          21.1666666666667)
        Pen.Mode = pmBlack
        Shape = qrsVertLine
      end
      object QRLabel20: TQRLabel
        Left = 194
        Top = 173
        Width = 48
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          513.291666666667
          457.729166666667
          127)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'JAN/2006'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel31: TQRLabel
        Left = 256
        Top = 173
        Width = 48
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          677.333333333333
          457.729166666667
          127)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'JAN/2006'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel37: TQRLabel
        Left = 321
        Top = 173
        Width = 48
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          849.3125
          457.729166666667
          127)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'JAN/2006'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel38: TQRLabel
        Left = 385
        Top = 173
        Width = 48
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          1018.64583333333
          457.729166666667
          127)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'JAN/2006'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel39: TQRLabel
        Left = 450
        Top = 173
        Width = 48
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          1190.625
          457.729166666667
          127)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'JAN/2006'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel40: TQRLabel
        Left = 514
        Top = 173
        Width = 48
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          1359.95833333333
          457.729166666667
          127)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'JAN/2006'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel41: TQRLabel
        Left = 578
        Top = 173
        Width = 48
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          1529.29166666667
          457.729166666667
          127)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'JAN/2006'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel42: TQRLabel
        Left = 642
        Top = 173
        Width = 48
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          1698.625
          457.729166666667
          127)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'JAN/2006'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel43: TQRLabel
        Left = 706
        Top = 173
        Width = 48
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          1867.95833333333
          457.729166666667
          127)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'JAN/2006'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel44: TQRLabel
        Left = 772
        Top = 173
        Width = 48
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          2042.58333333333
          457.729166666667
          127)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'JAN/2006'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel45: TQRLabel
        Left = 834
        Top = 173
        Width = 48
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          2206.625
          457.729166666667
          127)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'JAN/2006'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel46: TQRLabel
        Left = 898
        Top = 173
        Width = 48
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          2375.95833333333
          457.729166666667
          127)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'DEZ/2006'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel1: TQRLabel
        Left = 112
        Top = 5
        Width = 845
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          82.0208333333333
          296.333333333333
          13.2291666666667
          2235.72916666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Sistema de Controle  Financeiro'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Courier New'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRLabel2: TQRLabel
        Left = 112
        Top = 39
        Width = 845
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          82.0208333333333
          296.333333333333
          103.1875
          2235.72916666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Relatório Gerencial de Movimentação Anual(Saída)'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Courier New'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object gtQRShape1: TgtQRShape
        Left = 2
        Top = 105
        Width = 1082
        Height = 42
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          111.125
          5.29166666666667
          277.8125
          2862.79166666667)
        Shape = qrsRectangle
      end
      object gtQRLabel3: TgtQRLabel
        Left = 4
        Top = 118
        Width = 53
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.5625
          10.5833333333333
          312.208333333333
          140.229166666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Ordenação:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object gtQRLabel2: TgtQRLabel
        Left = 290
        Top = 118
        Width = 62
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          767.291666666667
          312.208333333333
          164.041666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Nº Nota Fiscal'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsItalic]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object gtQRLabel9: TgtQRLabel
        Left = 739
        Top = 118
        Width = 62
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1955.27083333333
          312.208333333333
          164.041666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Nº Nota Fiscal'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsItalic]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object gtQRLabel8: TgtQRLabel
        Left = 660
        Top = 118
        Width = 77
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.5625
          1746.25
          312.208333333333
          203.729166666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Conta Gerencial:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object gtQRLabel12: TgtQRLabel
        Left = 966
        Top = 118
        Width = 50
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.5625
          2555.875
          312.208333333333
          132.291666666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Data Final:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object gtQRLabel13: TgtQRLabel
        Left = 1019
        Top = 118
        Width = 62
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2696.10416666667
          312.208333333333
          164.041666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Nº Nota Fiscal'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsItalic]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel22: TQRLabel
        Left = 981
        Top = 1
        Width = 36
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.2083333333333
          2595.5625
          2.64583333333333
          95.25)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Data:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel4: TQRLabel
        Left = 981
        Top = 18
        Width = 36
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.2083333333333
          2595.5625
          47.625
          95.25)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Hora:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel24: TQRLabel
        Left = 981
        Top = 35
        Width = 36
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2595.5625
          92.6041666666667
          95.25)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Pag.:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRSysData6: TQRSysData
        Left = 1020
        Top = 35
        Width = 21
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          2698.75
          92.6041666666667
          55.5625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        Data = qrsPageNumber
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        FontSize = 8
      end
      object QRSysData5: TQRSysData
        Left = 1020
        Top = 17
        Width = 43
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          2698.75
          44.9791666666667
          113.770833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        FontSize = 8
      end
      object QRSysData4: TQRSysData
        Left = 1020
        Top = 2
        Width = 43
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          2698.75
          5.29166666666667
          113.770833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsDate
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        FontSize = 8
      end
      object gtQRLabel4: TgtQRLabel
        Left = 59
        Top = 118
        Width = 62
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          156.104166666667
          312.208333333333
          164.041666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Nº Nota Fiscal'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsItalic]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object gtQRLabel5: TgtQRLabel
        Left = 230
        Top = 118
        Width = 57
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.5625
          608.541666666667
          312.208333333333
          150.8125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Fornecedor:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object gtQRLabel6: TgtQRLabel
        Left = 3
        Top = 87
        Width = 1081
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          7.9375
          230.1875
          2860.14583333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'F I L T R O S'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBImage1: TQRDBImage
        Left = 36
        Top = 5
        Width = 105
        Height = 70
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          185.208333333333
          95.25
          13.2291666666667
          277.8125)
        DataField = 'FOTO'
        DataSet = FMenu.Q_FOTO
        Stretch = True
      end
    end
    object QRBand3: TQRBand
      Left = 19
      Top = 246
      Width = 1085
      Height = 25
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      BeforePrint = QRBand3BeforePrint
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        66.1458333333333
        2870.72916666667)
      BandType = rbDetail
      object QRDBText1: TQRDBText
        Left = 192
        Top = 4
        Width = 55
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          508
          10.5833333333333
          145.520833333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Q_RELA
        DataField = 'Valor1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText26: TQRDBText
        Left = 5
        Top = 5
        Width = 166
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          13.2291666666667
          13.2291666666667
          439.208333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Q_RELA
        DataField = 'Campo1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText2: TQRDBText
        Left = 254
        Top = 4
        Width = 57
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          672.041666666667
          10.5833333333333
          150.8125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Q_RELA
        DataField = 'VALOR2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText4: TQRDBText
        Left = 318
        Top = 4
        Width = 57
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          841.375
          10.5833333333333
          150.8125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Q_RELA
        DataField = 'VALOR3'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText6: TQRDBText
        Left = 383
        Top = 4
        Width = 57
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1013.35416666667
          10.5833333333333
          150.8125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Q_RELA
        DataField = 'VALOR4'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText8: TQRDBText
        Left = 447
        Top = 4
        Width = 57
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1182.6875
          10.5833333333333
          150.8125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Q_RELA
        DataField = 'VALOR5'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText10: TQRDBText
        Left = 511
        Top = 4
        Width = 57
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1352.02083333333
          10.5833333333333
          150.8125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Q_RELA
        DataField = 'VALOR6'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText12: TQRDBText
        Left = 575
        Top = 4
        Width = 57
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1521.35416666667
          10.5833333333333
          150.8125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Q_RELA
        DataField = 'VALOR7'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText15: TQRDBText
        Left = 639
        Top = 4
        Width = 57
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1690.6875
          10.5833333333333
          150.8125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Q_RELA
        DataField = 'VALOR8'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText17: TQRDBText
        Left = 703
        Top = 4
        Width = 57
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1860.02083333333
          10.5833333333333
          150.8125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Q_RELA
        DataField = 'VALOR9'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText19: TQRDBText
        Left = 772
        Top = 4
        Width = 52
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2042.58333333333
          10.5833333333333
          137.583333333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Q_RELA
        DataField = 'VALOR10'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText21: TQRDBText
        Left = 832
        Top = 4
        Width = 57
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2201.33333333333
          10.5833333333333
          150.8125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Q_RELA
        DataField = 'VALOR11'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText23: TQRDBText
        Left = 898
        Top = 4
        Width = 53
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          2375.95833333333
          10.5833333333333
          140.229166666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Q_RELA
        DataField = 'VALOR12'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText52: TQRDBText
        Left = 961
        Top = 4
        Width = 60
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2542.64583333333
          10.5833333333333
          158.75)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Q_RELA
        DataField = 'Total_Meses'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape1: TQRShape
        Left = 182
        Top = 1
        Width = 6
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.8541666666667
          481.541666666667
          2.64583333333333
          15.875)
        Shape = qrsVertLine
      end
      object QRShape5: TQRShape
        Left = 247
        Top = -1
        Width = 4
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.4375
          653.520833333333
          -2.64583333333333
          10.5833333333333)
        Shape = qrsVertLine
      end
      object QRShape6: TQRShape
        Left = 311
        Top = -1
        Width = 4
        Height = 28
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          74.0833333333333
          822.854166666667
          -2.64583333333333
          10.5833333333333)
        Shape = qrsVertLine
      end
      object QRShape7: TQRShape
        Left = 375
        Top = -1
        Width = 6
        Height = 28
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          74.0833333333333
          992.1875
          -2.64583333333333
          15.875)
        Shape = qrsVertLine
      end
      object QRShape8: TQRShape
        Left = 440
        Top = -1
        Width = 4
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          76.7291666666667
          1164.16666666667
          -2.64583333333333
          10.5833333333333)
        Shape = qrsVertLine
      end
      object QRShape9: TQRShape
        Left = 504
        Top = 0
        Width = 4
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.5
          1333.5
          0
          10.5833333333333)
        Shape = qrsVertLine
      end
      object QRShape10: TQRShape
        Left = 568
        Top = 0
        Width = 4
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.4375
          1502.83333333333
          0
          10.5833333333333)
        Shape = qrsVertLine
      end
      object QRShape11: TQRShape
        Left = 632
        Top = 0
        Width = 4
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.5
          1672.16666666667
          0
          10.5833333333333)
        Shape = qrsVertLine
      end
      object QRShape12: TQRShape
        Left = 696
        Top = 1
        Width = 4
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.5
          1841.5
          2.64583333333333
          10.5833333333333)
        Shape = qrsVertLine
      end
      object QRShape13: TQRShape
        Left = 762
        Top = 0
        Width = 4
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.5
          2016.125
          0
          10.5833333333333)
        Shape = qrsVertLine
      end
      object QRShape14: TQRShape
        Left = 825
        Top = -1
        Width = 4
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.5
          2182.8125
          -2.64583333333333
          10.5833333333333)
        Shape = qrsVertLine
      end
      object QRShape15: TQRShape
        Left = 889
        Top = 0
        Width = 4
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.5
          2352.14583333333
          0
          10.5833333333333)
        Shape = qrsVertLine
      end
      object QRShape16: TQRShape
        Left = 950
        Top = 0
        Width = 4
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.5
          2513.54166666667
          0
          10.5833333333333)
        Shape = qrsVertLine
      end
      object QRDBText3: TQRDBText
        Left = 1033
        Top = 4
        Width = 30
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2733.14583333333
          10.5833333333333
          79.375)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Q_RELA
        DataField = 'Percentual'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape30: TQRShape
        Left = 1019
        Top = 0
        Width = 8
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.5
          2696.10416666667
          0
          21.1666666666667)
        Pen.Mode = pmBlack
        Shape = qrsVertLine
      end
    end
    object QRBand4: TQRBand
      Left = 19
      Top = 271
      Width = 1085
      Height = 37
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      BeforePrint = QRBand4BeforePrint
      Color = clScrollBar
      ForceNewColumn = False
      ForceNewPage = False
      LinkBand = QRBand3
      Size.Values = (
        97.8958333333333
        2870.72916666667)
      BandType = rbSummary
      object QRLabel3: TQRLabel
        Left = 52
        Top = 9
        Width = 117
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.5625
          137.583333333333
          23.8125
          309.5625)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Total------>>>>>>'
        Color = clScrollBar
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRShape3: TQRShape
        Left = 185
        Top = 1
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.6041666666667
          489.479166666667
          2.64583333333333
          171.979166666667)
        Brush.Color = clScrollBar
        Shape = qrsRectangle
      end
      object QRShape18: TQRShape
        Left = 249
        Top = 1
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.6041666666667
          658.8125
          2.64583333333333
          171.979166666667)
        Brush.Color = clScrollBar
        Shape = qrsRectangle
      end
      object QRShape19: TQRShape
        Left = 313
        Top = 1
        Width = 66
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.6041666666667
          828.145833333333
          2.64583333333333
          174.625)
        Brush.Color = clScrollBar
        Shape = qrsRectangle
      end
      object QRShape20: TQRShape
        Left = 378
        Top = 1
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.6041666666667
          1000.125
          2.64583333333333
          171.979166666667)
        Brush.Color = clScrollBar
        Shape = qrsRectangle
      end
      object QRShape21: TQRShape
        Left = 442
        Top = 1
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.6041666666667
          1169.45833333333
          2.64583333333333
          171.979166666667)
        Brush.Color = clScrollBar
        Shape = qrsRectangle
      end
      object QRShape22: TQRShape
        Left = 506
        Top = 1
        Width = 66
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.6041666666667
          1338.79166666667
          2.64583333333333
          174.625)
        Brush.Color = clScrollBar
        Shape = qrsRectangle
      end
      object QRShape23: TQRShape
        Left = 570
        Top = 1
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.6041666666667
          1508.125
          2.64583333333333
          171.979166666667)
        Brush.Color = clScrollBar
        Shape = qrsRectangle
      end
      object QRShape24: TQRShape
        Left = 634
        Top = 1
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.6041666666667
          1677.45833333333
          2.64583333333333
          171.979166666667)
        Brush.Color = clScrollBar
        Shape = qrsRectangle
      end
      object QRShape25: TQRShape
        Left = 698
        Top = 1
        Width = 67
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.6041666666667
          1846.79166666667
          2.64583333333333
          177.270833333333)
        Brush.Color = clScrollBar
        Shape = qrsRectangle
      end
      object QRShape26: TQRShape
        Left = 764
        Top = 1
        Width = 63
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.6041666666667
          2021.41666666667
          2.64583333333333
          166.6875)
        Brush.Color = clScrollBar
        Shape = qrsRectangle
      end
      object QRShape27: TQRShape
        Left = 826
        Top = 1
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.6041666666667
          2185.45833333333
          2.64583333333333
          171.979166666667)
        Brush.Color = clScrollBar
        Shape = qrsRectangle
      end
      object QRShape28: TQRShape
        Left = 890
        Top = 1
        Width = 63
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.6041666666667
          2354.79166666667
          2.64583333333333
          166.6875)
        Brush.Color = clScrollBar
        Shape = qrsRectangle
      end
      object QRShape29: TQRShape
        Left = 952
        Top = 1
        Width = 72
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.6041666666667
          2518.83333333333
          2.64583333333333
          190.5)
        Brush.Color = clScrollBar
        Shape = qrsRectangle
      end
      object QRDBText5: TQRDBText
        Left = 961
        Top = 10
        Width = 60
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2542.64583333333
          26.4583333333333
          158.75)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clScrollBar
        DataSet = Q_RELA
        DataField = 'Total_Geral'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText27: TQRDBText
        Left = 893
        Top = 10
        Width = 60
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2362.72916666667
          26.4583333333333
          158.75)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clScrollBar
        DataSet = Q_RELA
        DataField = 'Total_Mes12'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText25: TQRDBText
        Left = 830
        Top = 10
        Width = 60
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2196.04166666667
          26.4583333333333
          158.75)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clScrollBar
        DataSet = Q_RELA
        DataField = 'Total_Mes11'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText24: TQRDBText
        Left = 765
        Top = 9
        Width = 60
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2024.0625
          23.8125
          158.75)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clScrollBar
        DataSet = Q_RELA
        DataField = 'Total_Mes10'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText22: TQRDBText
        Left = 701
        Top = 10
        Width = 60
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1854.72916666667
          26.4583333333333
          158.75)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clScrollBar
        DataSet = Q_RELA
        DataField = 'Total_Mes9'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText20: TQRDBText
        Left = 637
        Top = 10
        Width = 60
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1685.39583333333
          26.4583333333333
          158.75)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clScrollBar
        DataSet = Q_RELA
        DataField = 'Total_Mes8'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText18: TQRDBText
        Left = 573
        Top = 10
        Width = 60
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1516.0625
          26.4583333333333
          158.75)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clScrollBar
        DataSet = Q_RELA
        DataField = 'Total_Mes7'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText16: TQRDBText
        Left = 508
        Top = 10
        Width = 60
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1344.08333333333
          26.4583333333333
          158.75)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clScrollBar
        DataSet = Q_RELA
        DataField = 'Total_Mes6'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText14: TQRDBText
        Left = 444
        Top = 10
        Width = 60
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1174.75
          26.4583333333333
          158.75)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clScrollBar
        DataSet = Q_RELA
        DataField = 'Total_Mes5'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText13: TQRDBText
        Left = 380
        Top = 10
        Width = 60
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1005.41666666667
          26.4583333333333
          158.75)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clScrollBar
        DataSet = Q_RELA
        DataField = 'Total_Mes4'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText11: TQRDBText
        Left = 315
        Top = 10
        Width = 60
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          833.4375
          26.4583333333333
          158.75)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clScrollBar
        DataSet = Q_RELA
        DataField = 'Total_Mes3'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText9: TQRDBText
        Left = 258
        Top = 10
        Width = 46
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          682.625
          26.4583333333333
          121.708333333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clScrollBar
        DataSet = Q_RELA
        DataField = 'Total_Mes2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText7: TQRDBText
        Left = 191
        Top = 10
        Width = 54
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          505.354166666667
          26.4583333333333
          142.875)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clScrollBar
        DataSet = Q_RELA
        DataField = 'Total_Mes1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRShape33: TQRShape
        Left = 0
        Top = 34
        Width = 1084
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.29166666666667
          0
          89.9583333333333
          2868.08333333333)
        Pen.Width = 2
        Shape = qrsHorLine
      end
      object QRShape34: TQRShape
        Left = 0
        Top = 0
        Width = 1084
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
          2868.08333333333)
        Pen.Width = 2
        Shape = qrsHorLine
      end
      object QRLabel5: TQRLabel
        Left = 1033
        Top = 9
        Width = 27
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.5625
          2733.14583333333
          23.8125
          71.4375)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '100'
        Color = clScrollBar
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRExpr1: TQRExpr
        Left = 187
        Top = 9
        Width = 61
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          494.770833333333
          23.8125
          161.395833333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Color = clScrollBar
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'SUM(Q_RELA.Valor1)'
        Mask = '###,###,##0.00'
        FontSize = 7
      end
      object QRExpr2: TQRExpr
        Left = 250
        Top = 9
        Width = 62
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          661.458333333333
          23.8125
          164.041666666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Color = clScrollBar
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'SUM(Q_RELA.Valor2)'
        Mask = '###,###,##0.00'
        FontSize = 7
      end
      object QRExpr3: TQRExpr
        Left = 315
        Top = 9
        Width = 62
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          833.4375
          23.8125
          164.041666666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Color = clScrollBar
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'SUM(Q_RELA.Valor3)'
        Mask = '###,###,##0.00'
        FontSize = 7
      end
      object QRExpr4: TQRExpr
        Left = 380
        Top = 9
        Width = 62
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          1005.41666666667
          23.8125
          164.041666666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Color = clScrollBar
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'SUM(Q_RELA.Valor4)'
        Mask = '###,###,##0.00'
        FontSize = 7
      end
      object QRExpr5: TQRExpr
        Left = 444
        Top = 9
        Width = 62
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          1174.75
          23.8125
          164.041666666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Color = clScrollBar
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'SUM(Q_RELA.Valor5)'
        Mask = '###,###,##0.00'
        FontSize = 7
      end
      object QRExpr6: TQRExpr
        Left = 508
        Top = 9
        Width = 61
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          1344.08333333333
          23.8125
          161.395833333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Color = clScrollBar
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'SUM(Q_RELA.Valor6)'
        Mask = '###,###,##0.00'
        FontSize = 7
      end
      object QRExpr7: TQRExpr
        Left = 571
        Top = 9
        Width = 62
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          1510.77083333333
          23.8125
          164.041666666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Color = clScrollBar
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'SUM(Q_RELA.Valor7)'
        Mask = '###,###,##0.00'
        FontSize = 7
      end
      object QRExpr8: TQRExpr
        Left = 635
        Top = 9
        Width = 62
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          1680.10416666667
          23.8125
          164.041666666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Color = clScrollBar
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'SUM(Q_RELA.Valor8)'
        Mask = '###,###,##0.00'
        FontSize = 7
      end
      object QRExpr9: TQRExpr
        Left = 700
        Top = 9
        Width = 62
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          1852.08333333333
          23.8125
          164.041666666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Color = clScrollBar
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'SUM(Q_RELA.Valor9)'
        Mask = '###,###,##0.00'
        FontSize = 7
      end
      object QRExpr10: TQRExpr
        Left = 766
        Top = 9
        Width = 60
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          2026.70833333333
          23.8125
          158.75)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Color = clScrollBar
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'SUM(Q_RELA.Valor10)'
        Mask = '###,###,##0.00'
        FontSize = 7
      end
      object QRExpr11: TQRExpr
        Left = 828
        Top = 9
        Width = 61
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          2190.75
          23.8125
          161.395833333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Color = clScrollBar
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'SUM(Q_RELA.Valor11)'
        Mask = '###,###,##0.00'
        FontSize = 7
      end
      object QRExpr12: TQRExpr
        Left = 892
        Top = 9
        Width = 60
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          2360.08333333333
          23.8125
          158.75)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Color = clScrollBar
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'SUM(Q_RELA.Valor12)'
        Mask = '###,###,##0.00'
        FontSize = 7
      end
      object QRExpr13: TQRExpr
        Left = 954
        Top = 9
        Width = 68
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          2524.125
          23.8125
          179.916666666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Color = clScrollBar
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'SUM(Q_RELA.Total_Meses)'
        Mask = '###,###,##0.00'
        FontSize = 7
      end
    end
  end
  object DS_RELA: TwwDataSource
    DataSet = Q_RELA
    Left = 250
    Top = 339
  end
  object Q_RELA: TwwQuery
    DatabaseName = 'FINANCEIRO'
    SessionName = 'Sec_Basefin'
    SQL.Strings = (
      'SELECT * FROM RELATORIO order by campo2,campo1'
      '')
    ValidateWithMask = True
    Left = 178
    Top = 329
    object Q_RELACampo1: TStringField
      FieldName = 'Campo1'
      Origin = 'FINANCEIRO.RELATORIO.Campo1'
      FixedChar = True
      Size = 80
    end
    object Q_RELACampo2: TStringField
      FieldName = 'Campo2'
      Origin = 'FINANCEIRO.RELATORIO.Campo2'
      FixedChar = True
      Size = 80
    end
    object Q_RELAUSUARIO: TIntegerField
      FieldName = 'USUARIO'
      Origin = 'FINANCEIRO.RELATORIO.USUARIO'
    end
    object Q_RELAValor1: TFloatField
      FieldName = 'Valor1'
      Origin = 'FINANCEIRO.RELATORIO.Valor1'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_RELAValor2: TFloatField
      FieldName = 'Valor2'
      Origin = 'FINANCEIRO.RELATORIO.Valor2'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_RELAValor3: TFloatField
      FieldName = 'Valor3'
      Origin = 'FINANCEIRO.RELATORIO.Valor3'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_RELAValor4: TFloatField
      FieldName = 'Valor4'
      Origin = 'FINANCEIRO.RELATORIO.Valor4'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_RELAValor5: TFloatField
      FieldName = 'Valor5'
      Origin = 'FINANCEIRO.RELATORIO.Valor5'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_RELAValor6: TFloatField
      FieldName = 'Valor6'
      Origin = 'FINANCEIRO.RELATORIO.Valor6'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_RELAValor7: TFloatField
      FieldName = 'Valor7'
      Origin = 'FINANCEIRO.RELATORIO.Valor7'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_RELAValor8: TFloatField
      FieldName = 'Valor8'
      Origin = 'FINANCEIRO.RELATORIO.Valor8'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_RELAValor9: TFloatField
      FieldName = 'Valor9'
      Origin = 'FINANCEIRO.RELATORIO.Valor9'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_RELAValor10: TFloatField
      FieldName = 'Valor10'
      Origin = 'FINANCEIRO.RELATORIO.Valor10'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_RELAValor11: TFloatField
      FieldName = 'Valor11'
      Origin = 'FINANCEIRO.RELATORIO.Valor11'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_RELAValor12: TFloatField
      FieldName = 'Valor12'
      Origin = 'FINANCEIRO.RELATORIO.Valor12'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_RELATotal_Meses: TFloatField
      FieldName = 'Total_Meses'
      Origin = 'FINANCEIRO.RELATORIO.Total_Meses'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_RELATotal_Geral: TFloatField
      FieldName = 'Total_Geral'
      Origin = 'FINANCEIRO.RELATORIO.Total_Geral'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_RELAPercentual: TFloatField
      FieldName = 'Percentual'
      Origin = 'FINANCEIRO.RELATORIO.Percentual'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_RELATotal_Mes1: TFloatField
      FieldName = 'Total_Mes1'
      Origin = 'FINANCEIRO.RELATORIO.Total_Mes1'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_RELATotal_Mes2: TFloatField
      FieldName = 'Total_Mes2'
      Origin = 'FINANCEIRO.RELATORIO.Total_Mes2'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_RELATotal_Mes3: TFloatField
      FieldName = 'Total_Mes3'
      Origin = 'FINANCEIRO.RELATORIO.Total_Mes3'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_RELATotal_Mes4: TFloatField
      FieldName = 'Total_Mes4'
      Origin = 'FINANCEIRO.RELATORIO.Total_Mes4'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_RELATotal_Mes5: TFloatField
      FieldName = 'Total_Mes5'
      Origin = 'FINANCEIRO.RELATORIO.Total_Mes5'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_RELATotal_Mes6: TFloatField
      FieldName = 'Total_Mes6'
      Origin = 'FINANCEIRO.RELATORIO.Total_Mes6'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_RELATotal_Mes7: TFloatField
      FieldName = 'Total_Mes7'
      Origin = 'FINANCEIRO.RELATORIO.Total_Mes7'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_RELATotal_Mes8: TFloatField
      FieldName = 'Total_Mes8'
      Origin = 'FINANCEIRO.RELATORIO.Total_Mes8'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_RELATotal_Mes9: TFloatField
      FieldName = 'Total_Mes9'
      Origin = 'FINANCEIRO.RELATORIO.Total_Mes9'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_RELATotal_Mes10: TFloatField
      FieldName = 'Total_Mes10'
      Origin = 'FINANCEIRO.RELATORIO.Total_Mes10'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_RELATotal_Mes11: TFloatField
      FieldName = 'Total_Mes11'
      Origin = 'FINANCEIRO.RELATORIO.Total_Mes11'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_RELATotal_Mes12: TFloatField
      FieldName = 'Total_Mes12'
      Origin = 'FINANCEIRO.RELATORIO.Total_Mes12'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
  end
end
