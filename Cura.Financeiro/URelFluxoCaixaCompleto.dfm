object FRelFluxoCaixaCompleto: TFRelFluxoCaixaCompleto
  Left = 11
  Top = 0
  Width = 995
  Height = 714
  HorzScrollBar.Position = 166
  Caption = 'Fluxo Completo'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object FluxoCaixa: TQuickRep
    Left = -161
    Top = 4
    Width = 1123
    Height = 794
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    BeforePrint = FluxoCaixaBeforePrint
    DataSet = Q_FLUXO
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
    PrinterSettings.OutputBin = Auto
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    object QRBand1: TQRBand
      Left = 19
      Top = 38
      Width = 1085
      Height = 116
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = QRBand1BeforePrint
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        306.916666666667
        2870.72916666667)
      BandType = rbPageHeader
      object QRShape1: TgtQRShape
        Left = 0
        Top = -1
        Width = 1086
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.5833333333333
          0
          -2.64583333333333
          2873.375)
        Pen.Width = 2
        Shape = qrsHorLine
      end
      object QRLabel1: TgtQRLabel
        Left = 423
        Top = 4
        Width = 240
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          1119.1875
          10.5833333333333
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
      object QRLabel2: TgtQRLabel
        Left = 288
        Top = 22
        Width = 505
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          762
          58.2083333333333
          1336.14583333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Fluxo de Caixa Completo'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        OnPrint = QRLabel2Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel3: TgtQRLabel
        Left = 959
        Top = 4
        Width = 36
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2537.35416666667
          10.5833333333333
          95.25)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Data :'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel4: TgtQRLabel
        Left = 959
        Top = 22
        Width = 36
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2537.35416666667
          58.2083333333333
          95.25)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Hora :'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel5: TgtQRLabel
        Left = 959
        Top = 38
        Width = 36
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2537.35416666667
          100.541666666667
          95.25)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Pág. :'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRSysData1: TgtQRSysData
        Left = 1000
        Top = 4
        Width = 36
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2645.83333333333
          10.5833333333333
          95.25)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsDate
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        FontSize = 10
      end
      object QRSysData2: TgtQRSysData
        Left = 1000
        Top = 22
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2645.83333333333
          58.2083333333333
          97.8958333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        FontSize = 10
      end
      object QRSysData3: TgtQRSysData
        Left = 1000
        Top = 38
        Width = 46
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2645.83333333333
          100.541666666667
          121.708333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsPageNumber
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        FontSize = 10
      end
      object QRShape2: TgtQRShape
        Left = 4
        Top = 71
        Width = 1070
        Height = 5
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          13.2291666666667
          10.5833333333333
          187.854166666667
          2831.04166666667)
        Pen.Width = 2
        Shape = qrsHorLine
      end
      object QRLabel15: TgtQRLabel
        Left = 940
        Top = 54
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2487.08333333333
          142.875
          140.229166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Usuário :'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel20: TgtQRLabel
        Left = 1000
        Top = 54
        Width = 47
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2645.83333333333
          142.875
          124.354166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'usuario '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRMemo1: TgtQRMemo
        Left = 286
        Top = 43
        Width = 513
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          756.708333333333
          113.770833333333
          1357.3125)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape5: TgtQRShape
        Left = 0
        Top = 108
        Width = 1070
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          0
          285.75
          2831.04166666667)
        Pen.Width = 2
        Shape = qrsHorLine
      end
      object QRLabel36: TgtQRLabel
        Left = 3
        Top = 93
        Width = 88
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          7.9375
          246.0625
          232.833333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Conta Gerencial'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object data1d: TgtQRLabel
        Left = 230
        Top = 76
        Width = 67
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          608.541666666667
          201.083333333333
          177.270833333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'dd/mm/yyyy'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object data1a: TgtQRLabel
        Left = 230
        Top = 96
        Width = 67
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          608.541666666667
          254
          177.270833333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'dd/mm/yyyy'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object data2a: TgtQRLabel
        Left = 335
        Top = 96
        Width = 69
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          886.354166666667
          254
          182.5625)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'DD/MM/YYYY'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object data2d: TgtQRLabel
        Left = 335
        Top = 76
        Width = 69
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          886.354166666667
          201.083333333333
          182.5625)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'DD/MM/YYYY'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object data3a: TgtQRLabel
        Left = 430
        Top = 96
        Width = 69
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1137.70833333333
          254
          182.5625)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'DD/MM/YYYY'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object data3d: TgtQRLabel
        Left = 430
        Top = 76
        Width = 69
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1137.70833333333
          201.083333333333
          182.5625)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'DD/MM/YYYY'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object data4a: TgtQRLabel
        Left = 524
        Top = 96
        Width = 69
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1386.41666666667
          254
          182.5625)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'DD/MM/YYYY'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object data4d: TgtQRLabel
        Left = 524
        Top = 76
        Width = 69
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1386.41666666667
          201.083333333333
          182.5625)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'DD/MM/YYYY'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object data5a: TgtQRLabel
        Left = 619
        Top = 96
        Width = 69
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1637.77083333333
          254
          182.5625)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'DD/MM/YYYY'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object data5d: TgtQRLabel
        Left = 619
        Top = 76
        Width = 69
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1637.77083333333
          201.083333333333
          182.5625)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'DD/MM/YYYY'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object data6a: TgtQRLabel
        Left = 714
        Top = 96
        Width = 69
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1889.125
          254
          182.5625)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'DD/MM/YYYY'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object data6d: TgtQRLabel
        Left = 714
        Top = 76
        Width = 69
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1889.125
          201.083333333333
          182.5625)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'DD/MM/YYYY'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object data7a: TgtQRLabel
        Left = 809
        Top = 96
        Width = 69
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          2140.47916666667
          254
          182.5625)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'DD/MM/YYYY'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object data7d: TgtQRLabel
        Left = 809
        Top = 76
        Width = 69
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          2140.47916666667
          201.083333333333
          182.5625)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'DD/MM/YYYY'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object data8a: TgtQRLabel
        Left = 904
        Top = 96
        Width = 69
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          2391.83333333333
          254
          182.5625)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'DD/MM/YYYY'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object data8d: TgtQRLabel
        Left = 904
        Top = 76
        Width = 69
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          2391.83333333333
          201.083333333333
          182.5625)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'DD/MM/YYYY'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object data9a: TgtQRLabel
        Left = 997
        Top = 95
        Width = 69
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          2637.89583333333
          251.354166666667
          182.5625)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'DD/MM/YYYY'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object data9d: TgtQRLabel
        Left = 997
        Top = 76
        Width = 69
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          2637.89583333333
          201.083333333333
          182.5625)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'DD/MM/YYYY'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBImage1: TgtQRDBImage
        Left = 3
        Top = 3
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
          7.9375
          306.916666666667)
        DataField = 'FOTO'
        DataSet = FMenu.Q_FOTO
        Stretch = True
      end
    end
    object QRBand2: TQRBand
      Left = 19
      Top = 157
      Width = 1085
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = QRBand2BeforePrint
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        42.3333333333333
        2870.72916666667)
      BandType = rbDetail
      object QRDBText1: TgtQRDBText
        Left = 3
        Top = 0
        Width = 37
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          7.9375
          0
          97.8958333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Q_FLUXO
        DataField = 'CONTA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = QRDBText1Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText2: TgtQRDBText
        Left = 264
        Top = 0
        Width = 33
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          698.5
          0
          87.3125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Q_FLUXO
        DataField = 'Valor1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = QRDBText2Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText3: TgtQRDBText
        Left = 370
        Top = 0
        Width = 33
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          978.958333333333
          0
          87.3125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Q_FLUXO
        DataField = 'Valor2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = QRDBText3Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText4: TgtQRDBText
        Left = 466
        Top = 0
        Width = 33
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1232.95833333333
          0
          87.3125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Q_FLUXO
        DataField = 'Valor3'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = QRDBText4Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText5: TgtQRDBText
        Left = 560
        Top = 0
        Width = 33
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1481.66666666667
          0
          87.3125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Q_FLUXO
        DataField = 'Valor4'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = QRDBText5Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText6: TgtQRDBText
        Left = 654
        Top = 0
        Width = 33
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          1730.375
          0
          87.3125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Q_FLUXO
        DataField = 'Valor5'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = QRDBText6Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText7: TgtQRDBText
        Left = 750
        Top = 0
        Width = 33
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1984.375
          0
          87.3125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Q_FLUXO
        DataField = 'Valor6'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = QRDBText7Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText8: TgtQRDBText
        Left = 844
        Top = 0
        Width = 33
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          2233.08333333333
          0
          87.3125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Q_FLUXO
        DataField = 'Valor7'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = QRDBText8Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText9: TgtQRDBText
        Left = 940
        Top = 0
        Width = 33
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          2487.08333333333
          0
          87.3125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Q_FLUXO
        DataField = 'Valor8'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = QRDBText9Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText10: TgtQRDBText
        Left = 1032
        Top = 0
        Width = 33
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          2730.5
          0
          87.3125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Q_FLUXO
        DataField = 'Valor9'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = QRDBText10Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
    object QRBand3: TQRBand
      Left = 19
      Top = 173
      Width = 1085
      Height = 20
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = QRBand3BeforePrint
      Color = clMenu
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        52.9166666666667
        2870.72916666667)
      BandType = rbGroupFooter
      object QRExpr9: TgtQRExpr
        Left = 980
        Top = 3
        Width = 85
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          2592.91666666667
          7.9375
          224.895833333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clMenu
        OnPrint = QRExpr9Print
        ParentFont = False
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'SUM(Q_FLUXO.Valor9)'
        Mask = '###,###,##0.00'
        FontSize = 8
      end
      object QRExpr1: TgtQRExpr
        Left = 188
        Top = 3
        Width = 109
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          497.416666666667
          7.9375
          288.395833333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clMenu
        OnPrint = QRExpr1Print
        ParentFont = False
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'SUM(Q_FLUXO.Valor1)'
        Mask = '###,###,##0.00'
        FontSize = 8
      end
      object QRExpr2: TgtQRExpr
        Left = 301
        Top = 3
        Width = 103
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          796.395833333333
          7.9375
          272.520833333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clMenu
        OnPrint = QRExpr2Print
        ParentFont = False
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'SUM(Q_FLUXO.Valor2)'
        Mask = '###,###,##0.00'
        FontSize = 8
      end
      object QRExpr3: TgtQRExpr
        Left = 414
        Top = 3
        Width = 85
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          1095.375
          7.9375
          224.895833333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clMenu
        OnPrint = QRExpr3Print
        ParentFont = False
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'SUM(Q_FLUXO.Valor3)'
        Mask = '###,###,##0.00'
        FontSize = 8
      end
      object QRExpr4: TgtQRExpr
        Left = 509
        Top = 3
        Width = 85
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          1346.72916666667
          7.9375
          224.895833333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clMenu
        OnPrint = QRExpr4Print
        ParentFont = False
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'SUM(Q_FLUXO.Valor4)'
        Mask = '###,###,##0.00'
        FontSize = 8
      end
      object QRExpr5: TgtQRExpr
        Left = 602
        Top = 3
        Width = 85
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          1592.79166666667
          7.9375
          224.895833333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clMenu
        OnPrint = QRExpr5Print
        ParentFont = False
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'SUM(Q_FLUXO.Valor5)'
        Mask = '###,###,##0.00'
        FontSize = 8
      end
      object QRExpr6: TgtQRExpr
        Left = 697
        Top = 3
        Width = 85
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          1844.14583333333
          7.9375
          224.895833333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clMenu
        OnPrint = QRExpr6Print
        ParentFont = False
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'SUM(Q_FLUXO.Valor6)'
        Mask = '###,###,##0.00'
        FontSize = 8
      end
      object QRExpr7: TgtQRExpr
        Left = 790
        Top = 3
        Width = 85
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          2090.20833333333
          7.9375
          224.895833333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clMenu
        OnPrint = QRExpr7Print
        ParentFont = False
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'SUM(Q_FLUXO.Valor7)'
        Mask = '###,###,##0.00'
        FontSize = 8
      end
      object QRExpr8: TgtQRExpr
        Left = 888
        Top = 3
        Width = 85
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          2349.5
          7.9375
          224.895833333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clMenu
        OnPrint = QRExpr8Print
        ParentFont = False
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'SUM(Q_FLUXO.Valor8)'
        Mask = '###,###,##0.00'
        FontSize = 8
      end
      object QRLabel6: TgtQRLabel
        Left = 3
        Top = 3
        Width = 88
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          7.9375
          7.9375
          232.833333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Conta Gerencial'
        Color = clMenu
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        OnPrint = QRLabel6Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel7: TgtQRLabel
        Left = 1013
        Top = 3
        Width = 52
        Height = 18
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          2680.22916666667
          7.9375
          137.583333333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRLabel7'
        Color = clMenu
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape4: TQRShape
        Left = 2
        Top = 0
        Width = 1070
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.29166666666667
          5.29166666666667
          0
          2831.04166666667)
        Shape = qrsHorLine
      end
      object QRShape3: TQRShape
        Left = 2
        Top = 17
        Width = 1070
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.29166666666667
          5.29166666666667
          44.9791666666667
          2831.04166666667)
        Shape = qrsHorLine
      end
      object lbT1: TQRLabel
        Left = 273
        Top = 3
        Width = 24
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          722.3125
          7.9375
          63.5)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'lbT1'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object lbT2: TQRLabel
        Left = 379
        Top = 3
        Width = 24
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1002.77083333333
          7.9375
          63.5)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'lbT1'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object lbT3: TQRLabel
        Left = 476
        Top = 3
        Width = 24
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1259.41666666667
          7.9375
          63.5)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'lbT1'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object lbT4: TQRLabel
        Left = 568
        Top = 3
        Width = 24
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1502.83333333333
          7.9375
          63.5)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'lbT1'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object lbT5: TQRLabel
        Left = 662
        Top = 3
        Width = 24
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1751.54166666667
          7.9375
          63.5)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'lbT1'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object lbT6: TQRLabel
        Left = 758
        Top = 3
        Width = 24
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2005.54166666667
          7.9375
          63.5)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'lbT1'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object lbT7: TQRLabel
        Left = 852
        Top = 3
        Width = 24
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2254.25
          7.9375
          63.5)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'lbT1'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object lbT8: TQRLabel
        Left = 948
        Top = 3
        Width = 24
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2508.25
          7.9375
          63.5)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'lbT1'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
    end
    object mmAnalitico: TMemo
      Left = 360
      Top = 384
      Width = 569
      Height = 121
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      Lines.Strings = (
        'SELECT'#9#9
        'CONTA,'
        #9#9'SUM(VALOR1)  VALOR1,'
        #9#9'SUM(VALOR2)  VALOR2,'
        #9#9'SUM(VALOR3)  VALOR3,'
        #9#9'SUM(VALOR4)  VALOR4,'
        #9#9'SUM(VALOR5)  VALOR5,'
        #9#9'SUM(VALOR6)  VALOR6,'
        #9#9'SUM(VALOR7)  VALOR7,'
        #9#9'SUM(VALOR8)  VALOR8,'
        #9#9'SUM(VALOR9)  VALOR9,'
        #9#9'SUM(VALOR10) VALOR10,'
        #9#9'SUM(VALOR11) VALOR11,'
        #9#9'SUM(VALOR12) VALOR12,'
        #9#9'SUM(VALOR13) VALOR13,'
        #9#9'SUM(VALOR14) VALOR14,'
        #9#9'SUM(VALOR15) VALOR15,'
        #9#9'SUM(VALOR16) VALOR16,'
        #9#9'SUM(VALOR17) VALOR17,'
        #9#9'SUM(VALOR18) VALOR18,'
        #9#9'SUM(VALOR19) VALOR19,'
        #9#9'SUM(VALOR20) VALOR20,'
        #9#9'SUM(VALOR21) VALOR21,'
        #9#9'SUM(VALOR22) VALOR22,'
        #9#9'SUM(VALOR23) VALOR23,'
        #9#9'SUM(VALOR24) VALOR24,'
        #9#9'SUM(VALOR25) VALOR25,'
        #9#9'SUM(VALOR26) VALOR26,'
        #9#9'SUM(VALOR27) VALOR27,'
        #9#9'SUM(VALOR28) VALOR28,'
        #9#9'SUM(VALOR29) VALOR29,'
        #9#9'SUM(VALOR30) VALOR30,'
        #9#9'SUM(VALOR31) VALOR31,'
        ''
        #9#9'MIN(DATAI1) DATAI1,'
        #9#9'MIN(DATAI1) DATAI2,'
        #9#9'MIN(DATAI1) DATAI3,'
        #9#9'MIN(DATAI1) DATAI4,'
        #9#9'MIN(DATAI1) DATAI5,'
        #9#9'MIN(DATAI1) DATAI6,'
        #9#9'MIN(DATAI1) DATAI7,'
        #9#9'MIN(DATAI1) DATAI8,'
        #9#9'MIN(DATAI1) DATAI9,'
        #9#9'MIN(DATAI1) DATAI10,'
        #9#9'MIN(DATAI1) DATAI11,'
        #9#9'MIN(DATAI1) DATAI12,'
        #9#9'MIN(DATAI1) DATAI13,'
        #9#9'MIN(DATAI1) DATAI14,'
        #9#9'MIN(DATAI1) DATAI15,'
        #9#9'MIN(DATAI1) DATAI16,'
        #9#9'MIN(DATAI1) DATAI17,'
        #9#9'MIN(DATAI1) DATAI18,'
        #9#9'MIN(DATAI1) DATAI19,'
        #9#9'MIN(DATAI1) DATAI20,'
        #9#9'MIN(DATAI1) DATAI21,'
        #9#9'MIN(DATAI1) DATAI22,'
        #9#9'MIN(DATAI1) DATAI23,'
        #9#9'MIN(DATAI1) DATAI24,'
        #9#9'MIN(DATAI1) DATAI25,'
        #9#9'MIN(DATAI1) DATAI26,'
        #9#9'MIN(DATAI1) DATAI27,'
        #9#9'MIN(DATAI1) DATAI28,'
        #9#9'MIN(DATAI1) DATAI29,'
        #9#9'MIN(DATAI1) DATAI30,'
        #9#9'MIN(DATAI1) DATAI31,'
        ''
        #9#9'MIN(DATAI1) DATAF1,'
        #9#9'MIN(DATAI1) DATAF2,'
        #9#9'MIN(DATAI1) DATAF3,'
        #9#9'MIN(DATAI1) DATAF4,'
        #9#9'MIN(DATAI1) DATAF5,'
        #9#9'MIN(DATAI1) DATAF6,'
        #9#9'MIN(DATAI1) DATAF7,'
        #9#9'MIN(DATAI1) DATAF8,'
        #9#9'MIN(DATAI1) DATAF9,'
        #9#9'MIN(DATAI1) DATAF10,'
        #9#9'MIN(DATAI1) DATAF11,'
        #9#9'MIN(DATAI1) DATAF12,'
        #9#9'MIN(DATAI1) DATAF13,'
        #9#9'MIN(DATAI1) DATAF14,'
        #9#9'MIN(DATAI1) DATAF15,'
        #9#9'MIN(DATAI1) DATAF16,'
        #9#9'MIN(DATAI1) DATAF17,'
        #9#9'MIN(DATAI1) DATAF18,'
        #9#9'MIN(DATAI1) DATAF19,'
        #9#9'MIN(DATAI1) DATAF20,'
        #9#9'MIN(DATAI1) DATAF21,'
        #9#9'MIN(DATAI1) DATAF22,'
        #9#9'MIN(DATAI1) DATAF23,'
        #9#9'MIN(DATAI1) DATAF24,'
        #9#9'MIN(DATAI1) DATAF25,'
        #9#9'MIN(DATAI1) DATAF26,'
        #9#9'MIN(DATAI1) DATAF27,'
        #9#9'MIN(DATAI1) DATAF28,'
        #9#9'MIN(DATAI1) DATAF29,'
        #9#9'MIN(DATAI1) DATAF30,'
        #9#9'MIN(DATAI1) DATAF31,'
        #9#9
        'QUEBRA,'
        '                                Folha'
        'FROM'#9#9
        'FLUXO'
        'where folha in (1,2,3,4)'
        ''
        'GROUP BY'#9
        'CONTA,'
        #9#9
        'QUEBRA, folha'
        'ORDER BY '#9
        'FOLHA,'
        #9#9
        'QUEBRA,'
        #9#9
        'CONTA')
      ParentFont = False
      TabOrder = 3
      Visible = False
    end
    object mmSintetico: TMemo
      Left = 360
      Top = 232
      Width = 561
      Height = 129
      Lines.Strings = (
        'SELECT'#9#9
        'substring(CONTA,1,2) as '
        'CONTA,'
        'SUM(VALOR1)  VALOR1,'
        #9#9'SUM(VALOR2)  VALOR2,'
        #9#9'SUM(VALOR3)  VALOR3,'
        #9#9'SUM(VALOR4)  VALOR4,'
        #9#9'SUM(VALOR5)  VALOR5,'
        #9#9'SUM(VALOR6)  VALOR6,'
        #9#9'SUM(VALOR7)  VALOR7,'
        #9#9'SUM(VALOR8)  VALOR8,'
        #9#9'SUM(VALOR9)  VALOR9,'
        #9#9'SUM(VALOR10) VALOR10,'
        #9#9'SUM(VALOR11) VALOR11,'
        #9#9'SUM(VALOR12) VALOR12,'
        #9#9'SUM(VALOR13) VALOR13,'
        #9#9'SUM(VALOR14) VALOR14,'
        #9#9'SUM(VALOR15) VALOR15,'
        #9#9'SUM(VALOR16) VALOR16,'
        #9#9'SUM(VALOR17) VALOR17,'
        #9#9'SUM(VALOR18) VALOR18,'
        #9#9'SUM(VALOR19) VALOR19,'
        #9#9'SUM(VALOR20) VALOR20,'
        #9#9'SUM(VALOR21) VALOR21,'
        #9#9'SUM(VALOR22) VALOR22,'
        #9#9'SUM(VALOR23) VALOR23,'
        #9#9'SUM(VALOR24) VALOR24,'
        #9#9'SUM(VALOR25) VALOR25,'
        #9#9'SUM(VALOR26) VALOR26,'
        #9#9'SUM(VALOR27) VALOR27,'
        #9#9'SUM(VALOR28) VALOR28,'
        #9#9'SUM(VALOR29) VALOR29,'
        #9#9'SUM(VALOR30) VALOR30,'
        #9#9'SUM(VALOR30) VALOR31,'
        ''
        #9#9'MIN(DATAI1) DATAI1,'
        #9#9'MIN(DATAI1) DATAI2,'
        #9#9'MIN(DATAI1) DATAI3,'
        #9#9'MIN(DATAI1) DATAI4,'
        #9#9'MIN(DATAI1) DATAI5,'
        #9#9'MIN(DATAI1) DATAI6,'
        #9#9'MIN(DATAI1) DATAI7,'
        #9#9'MIN(DATAI1) DATAI8,'
        #9#9'MIN(DATAI1) DATAI9,'
        #9#9'MIN(DATAI1) DATAI10,'
        #9#9'MIN(DATAI1) DATAI11,'
        #9#9'MIN(DATAI1) DATAI12,'
        #9#9'MIN(DATAI1) DATAI13,'
        #9#9'MIN(DATAI1) DATAI14,'
        #9#9'MIN(DATAI1) DATAI15,'
        #9#9'MIN(DATAI1) DATAI16,'
        #9#9'MIN(DATAI1) DATAI17,'
        #9#9'MIN(DATAI1) DATAI18,'
        #9#9'MIN(DATAI1) DATAI19,'
        #9#9'MIN(DATAI1) DATAI20,'
        #9#9'MIN(DATAI1) DATAI21,'
        #9#9'MIN(DATAI1) DATAI22,'
        #9#9'MIN(DATAI1) DATAI23,'
        #9#9'MIN(DATAI1) DATAI24,'
        #9#9'MIN(DATAI1) DATAI25,'
        #9#9'MIN(DATAI1) DATAI26,'
        #9#9'MIN(DATAI1) DATAI27,'
        #9#9'MIN(DATAI1) DATAI28,'
        #9#9'MIN(DATAI1) DATAI29,'
        #9#9'MIN(DATAI1) DATAI30,'
        #9#9'MIN(DATAI1) DATAI31,'
        ''
        #9#9'MIN(DATAI1) DATAF1,'
        #9#9'MIN(DATAI1) DATAF2,'
        #9#9'MIN(DATAI1) DATAF3,'
        #9#9'MIN(DATAI1) DATAF4,'
        #9#9'MIN(DATAI1) DATAF5,'
        #9#9'MIN(DATAI1) DATAF6,'
        #9#9'MIN(DATAI1) DATAF7,'
        #9#9'MIN(DATAI1) DATAF8,'
        #9#9'MIN(DATAI1) DATAF9,'
        #9#9'MIN(DATAI1) DATAF10,'
        #9#9'MIN(DATAI1) DATAF11,'
        #9#9'MIN(DATAI1) DATAF12,'
        #9#9'MIN(DATAI1) DATAF13,'
        #9#9'MIN(DATAI1) DATAF14,'
        #9#9'MIN(DATAI1) DATAF15,'
        #9#9'MIN(DATAI1) DATAF16,'
        #9#9'MIN(DATAI1) DATAF17,'
        #9#9'MIN(DATAI1) DATAF18,'
        #9#9'MIN(DATAI1) DATAF19,'
        #9#9'MIN(DATAI1) DATAF20,'
        #9#9'MIN(DATAI1) DATAF21,'
        #9#9'MIN(DATAI1) DATAF22,'
        #9#9'MIN(DATAI1) DATAF23,'
        #9#9'MIN(DATAI1) DATAF24,'
        #9#9'MIN(DATAI1) DATAF25,'
        #9#9'MIN(DATAI1) DATAF26,'
        #9#9'MIN(DATAI1) DATAF27,'
        #9#9'MIN(DATAI1) DATAF28,'
        #9#9'MIN(DATAI1) DATAF29,'
        #9#9'MIN(DATAI1) DATAF30,'
        #9#9'MIN(DATAI1) DATAF31,'
        #9#9
        'QUEBRA,'
        '                                Folha'
        'FROM'#9#9
        'FLUXO'
        'where folha in (1,2,3,4)'
        ''
        'GROUP BY'#9
        'substring(CONTA,1,2),'
        #9#9
        'QUEBRA, folha'
        'ORDER BY '#9
        'FOLHA,'
        #9#9
        'QUEBRA,'
        #9#9
        'substring(CONTA,1,2)')
      TabOrder = 4
      Visible = False
    end
    object QRGroup1: TQRGroup
      Left = 19
      Top = 154
      Width = 1085
      Height = 1
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = True
      Size.Values = (
        2.64583333333333
        2870.72916666667)
      Expression = 'Q_FLUXO.Folha'
      Master = FluxoCaixa
      ReprintOnNewPage = False
    end
    object QRGroup2: TQRGroup
      Left = 19
      Top = 155
      Width = 1085
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
        2870.72916666667)
      Expression = 'Q_FLUXO.QUEBRA'
      FooterBand = QRBand3
      Master = FluxoCaixa
      ReprintOnNewPage = False
    end
  end
  object Q_FLUXO: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'SELECT'#9#9'CONTA,'
      'SUM(VALOR1)  VALOR1,'
      #9#9'SUM(VALOR2)  VALOR2,'
      #9#9'SUM(VALOR3)  VALOR3,'
      #9#9'SUM(VALOR4)  VALOR4,'
      #9#9'SUM(VALOR5)  VALOR5,'
      #9#9'SUM(VALOR6)  VALOR6,'
      #9#9'SUM(VALOR7)  VALOR7,'
      #9#9'SUM(VALOR8)  VALOR8,'
      #9#9'SUM(VALOR9)  VALOR9,'
      #9#9'SUM(VALOR10) VALOR10,'
      #9#9'SUM(VALOR11) VALOR11,'
      #9#9'SUM(VALOR12) VALOR12,'
      #9#9'SUM(VALOR13) VALOR13,'
      #9#9'SUM(VALOR14) VALOR14,'
      #9#9'SUM(VALOR15) VALOR15,'
      #9#9'SUM(VALOR16) VALOR16,'
      #9#9'SUM(VALOR17) VALOR17,'
      #9#9'SUM(VALOR18) VALOR18,'
      #9#9'SUM(VALOR19) VALOR19,'
      #9#9'SUM(VALOR20) VALOR20,'
      #9#9'SUM(VALOR21) VALOR21,'
      #9#9'SUM(VALOR22) VALOR22,'
      #9#9'SUM(VALOR23) VALOR23,'
      #9#9'SUM(VALOR24) VALOR24,'
      #9#9'SUM(VALOR25) VALOR25,'
      #9#9'SUM(VALOR26) VALOR26,'
      #9#9'SUM(VALOR27) VALOR27,'
      #9#9'SUM(VALOR28) VALOR28,'
      #9#9'SUM(VALOR29) VALOR29,'
      #9#9'SUM(VALOR30) VALOR30,'
      #9#9'SUM(VALOR30) VALOR31,'
      ''
      #9#9'MIN(DATAI1) DATAI1,'
      #9#9'MIN(DATAI1) DATAI2,'
      #9#9'MIN(DATAI1) DATAI3,'
      #9#9'MIN(DATAI1) DATAI4,'
      #9#9'MIN(DATAI1) DATAI5,'
      #9#9'MIN(DATAI1) DATAI6,'
      #9#9'MIN(DATAI1) DATAI7,'
      #9#9'MIN(DATAI1) DATAI8,'
      #9#9'MIN(DATAI1) DATAI9,'
      #9#9'MIN(DATAI1) DATAI10,'
      #9#9'MIN(DATAI1) DATAI11,'
      #9#9'MIN(DATAI1) DATAI12,'
      #9#9'MIN(DATAI1) DATAI13,'
      #9#9'MIN(DATAI1) DATAI14,'
      #9#9'MIN(DATAI1) DATAI15,'
      #9#9'MIN(DATAI1) DATAI16,'
      #9#9'MIN(DATAI1) DATAI17,'
      #9#9'MIN(DATAI1) DATAI18,'
      #9#9'MIN(DATAI1) DATAI19,'
      #9#9'MIN(DATAI1) DATAI20,'
      #9#9'MIN(DATAI1) DATAI21,'
      #9#9'MIN(DATAI1) DATAI22,'
      #9#9'MIN(DATAI1) DATAI23,'
      #9#9'MIN(DATAI1) DATAI24,'
      #9#9'MIN(DATAI1) DATAI25,'
      #9#9'MIN(DATAI1) DATAI26,'
      #9#9'MIN(DATAI1) DATAI27,'
      #9#9'MIN(DATAI1) DATAI28,'
      #9#9'MIN(DATAI1) DATAI29,'
      #9#9'MIN(DATAI1) DATAI30,'
      #9#9'MIN(DATAI1) DATAI31,'
      ''
      #9#9'MIN(DATAI1) DATAF1,'
      #9#9'MIN(DATAI1) DATAF2,'
      #9#9'MIN(DATAI1) DATAF3,'
      #9#9'MIN(DATAI1) DATAF4,'
      #9#9'MIN(DATAI1) DATAF5,'
      #9#9'MIN(DATAI1) DATAF6,'
      #9#9'MIN(DATAI1) DATAF7,'
      #9#9'MIN(DATAI1) DATAF8,'
      #9#9'MIN(DATAI1) DATAF9,'
      #9#9'MIN(DATAI1) DATAF10,'
      #9#9'MIN(DATAI1) DATAF11,'
      #9#9'MIN(DATAI1) DATAF12,'
      #9#9'MIN(DATAI1) DATAF13,'
      #9#9'MIN(DATAI1) DATAF14,'
      #9#9'MIN(DATAI1) DATAF15,'
      #9#9'MIN(DATAI1) DATAF16,'
      #9#9'MIN(DATAI1) DATAF17,'
      #9#9'MIN(DATAI1) DATAF18,'
      #9#9'MIN(DATAI1) DATAF19,'
      #9#9'MIN(DATAI1) DATAF20,'
      #9#9'MIN(DATAI1) DATAF21,'
      #9#9'MIN(DATAI1) DATAF22,'
      #9#9'MIN(DATAI1) DATAF23,'
      #9#9'MIN(DATAI1) DATAF24,'
      #9#9'MIN(DATAI1) DATAF25,'
      #9#9'MIN(DATAI1) DATAF26,'
      #9#9'MIN(DATAI1) DATAF27,'
      #9#9'MIN(DATAI1) DATAF28,'
      #9#9'MIN(DATAI1) DATAF29,'
      #9#9'MIN(DATAI1) DATAF30,'
      #9#9'MIN(DATAI1) DATAF31,'
      #9#9'QUEBRA,'
      '                                Folha'
      'FROM'#9#9'FLUXO'
      'GROUP BY'#9'CONTA,'
      #9#9'QUEBRA, folha'
      'ORDER BY '#9'FOLHA,'
      #9#9'QUEBRA,'
      #9#9'CONTA')
    ValidateWithMask = True
    Left = 235
    Top = 278
    object Q_FLUXOValor1: TFloatField
      FieldName = 'Valor1'
      Origin = 'FINANCEIRO.fluxo.Valor1'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_FLUXOValor2: TFloatField
      FieldName = 'Valor2'
      Origin = 'FINANCEIRO.fluxo.Valor2'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_FLUXOValor3: TFloatField
      FieldName = 'Valor3'
      Origin = 'FINANCEIRO.fluxo.Valor3'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_FLUXOValor4: TFloatField
      FieldName = 'Valor4'
      Origin = 'FINANCEIRO.fluxo.Valor4'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_FLUXOValor5: TFloatField
      FieldName = 'Valor5'
      Origin = 'FINANCEIRO.fluxo.Valor5'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_FLUXOValor6: TFloatField
      FieldName = 'Valor6'
      Origin = 'FINANCEIRO.fluxo.Valor6'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_FLUXOValor7: TFloatField
      FieldName = 'Valor7'
      Origin = 'FINANCEIRO.fluxo.Valor7'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_FLUXOValor8: TFloatField
      FieldName = 'Valor8'
      Origin = 'FINANCEIRO.fluxo.Valor8'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_FLUXOValor9: TFloatField
      FieldName = 'Valor9'
      Origin = 'FINANCEIRO.fluxo.Valor9'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_FLUXOValor10: TFloatField
      FieldName = 'Valor10'
      Origin = 'FINANCEIRO.fluxo.Valor10'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_FLUXOValor11: TFloatField
      FieldName = 'Valor11'
      Origin = 'FINANCEIRO.fluxo.Valor11'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_FLUXOValor12: TFloatField
      FieldName = 'Valor12'
      Origin = 'FINANCEIRO.fluxo.Valor12'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_FLUXOQUEBRA: TStringField
      FieldName = 'QUEBRA'
      Origin = 'FINANCEIRO.fluxo.QUEBRA'
      FixedChar = True
      Size = 2
    end
    object Q_FLUXOCONTA: TStringField
      FieldName = 'CONTA'
      Origin = 'FINANCEIRO.fluxo.CONTA'
      FixedChar = True
      Size = 6
    end
    object Q_FLUXOFolha: TIntegerField
      FieldName = 'Folha'
      Origin = 'FINANCEIRO.fluxo.Folha'
    end
    object Q_FLUXOVALOR13: TFloatField
      FieldName = 'VALOR13'
      DisplayFormat = '###,###,##0'
    end
    object Q_FLUXOVALOR14: TFloatField
      FieldName = 'VALOR14'
      DisplayFormat = '###,###,##0'
    end
    object Q_FLUXOVALOR15: TFloatField
      FieldName = 'VALOR15'
      DisplayFormat = '###,###,##0'
    end
    object Q_FLUXOVALOR16: TFloatField
      FieldName = 'VALOR16'
      DisplayFormat = '###,###,##0'
    end
    object Q_FLUXOVALOR17: TFloatField
      FieldName = 'VALOR17'
      DisplayFormat = '###,###,##0'
    end
    object Q_FLUXOVALOR18: TFloatField
      FieldName = 'VALOR18'
      DisplayFormat = '###,###,##0'
    end
    object Q_FLUXOVALOR19: TFloatField
      FieldName = 'VALOR19'
      DisplayFormat = '###,###,##0'
    end
    object Q_FLUXOVALOR20: TFloatField
      FieldName = 'VALOR20'
      DisplayFormat = '###,###,##0'
    end
    object Q_FLUXOVALOR21: TFloatField
      FieldName = 'VALOR21'
      DisplayFormat = '###,###,##0'
    end
    object Q_FLUXOVALOR22: TFloatField
      FieldName = 'VALOR22'
      DisplayFormat = '###,###,##0'
    end
    object Q_FLUXOVALOR23: TFloatField
      FieldName = 'VALOR23'
      DisplayFormat = '###,###,##0'
    end
    object Q_FLUXOVALOR24: TFloatField
      FieldName = 'VALOR24'
      DisplayFormat = '###,###,##0'
    end
    object Q_FLUXOVALOR25: TFloatField
      FieldName = 'VALOR25'
      DisplayFormat = '###,###,##0'
    end
    object Q_FLUXOVALOR26: TFloatField
      FieldName = 'VALOR26'
      DisplayFormat = '###,###,##0'
    end
    object Q_FLUXOVALOR27: TFloatField
      FieldName = 'VALOR27'
      DisplayFormat = '###,###,##0'
    end
    object Q_FLUXOVALOR28: TFloatField
      FieldName = 'VALOR28'
      DisplayFormat = '###,###,##0'
    end
    object Q_FLUXOVALOR29: TFloatField
      FieldName = 'VALOR29'
      DisplayFormat = '###,###,##0'
    end
    object Q_FLUXOVALOR30: TFloatField
      FieldName = 'VALOR30'
      DisplayFormat = '###,###,##0'
    end
    object Q_FLUXOVALOR31: TFloatField
      FieldName = 'VALOR31'
      DisplayFormat = '###,###,##0'
    end
  end
  object Q_AUX: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    ValidateWithMask = True
    Left = 307
    Top = 230
  end
  object Q_CMOE: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'select cmo_data, cmo_Valo from cpacmoe')
    ValidateWithMask = True
    Left = 331
    Top = 278
    object Q_CMOEcmo_data: TDateTimeField
      FieldName = 'cmo_data'
    end
    object Q_CMOEcmo_Valo: TFloatField
      FieldName = 'cmo_Valo'
    end
  end
  object gtQRPDFExport1: TgtQRPDFExport
    About = 'Gnostice QuickReport Export (www.gnostice.com)'
    Visible = True
    RestrictToPages = True
    Version = '3.01'
    ShowSetupDialog = True
    BackgroundColor = clWhite
    BackgroundImageDisplayType = dtCenter
    Compressed = True
    CompressionMethod = cmMaxCompress
    DocInfo.Creator = 'QuickReport'
    ExportImageFormat = ifBMP
    ImageDPI = -1
    ImagePixelFormat = pf24bit
    IncludedItems = [ikText, ikImage, ikLine, ikShape, ikRichText]
    JPEGQuality = 100
    OptimizeBackgroundPainting = False
    RichTextDPI = 300
    RichTextEncodingType = rtImage
    Left = 704
    Top = 284
  end
  object gtQRExcelExport1: TgtQRExcelExport
    About = 'Gnostice QuickReport Export (www.gnostice.com)'
    Visible = True
    RestrictToPages = True
    Version = '3.01'
    ShowSetupDialog = True
    BackgroundImageDisplayType = dtTile
    ImagePixelFormat = pf24bit
    ImageDPI = -1
    RichTextDPI = -1
    RichTextEncodingType = rtPlainText
    Formatting.DefaultGridDimension.Height = 12.7
    Formatting.DefaultGridDimension.Width = 8.43
    IncludedItems = [ikText, ikRichText]
    ExportImageFormat = ifBMP
    Left = 704
    Top = 340
  end
  object gtQRRTFExport1: TgtQRRTFExport
    About = 'Gnostice QuickReport Export (www.gnostice.com)'
    Visible = True
    RestrictToPages = True
    Version = '3.01'
    ShowSetupDialog = True
    BackgroundImageDisplayType = dtCenter
    DocInfo.Creator = 'QuickReport'
    ExportImageFormat = ifJPG
    IncludedItems = [ikText, ikImage, ikLine, ikShape, ikRichText]
    ImagePixelFormat = pf24bit
    ImageDPI = -1
    JPEGQuality = 100
    OptimizeBackgroundPainting = False
    RichTextDPI = -1
    RichTextEncodingType = rtImage
    Left = 704
    Top = 227
  end
  object Q_AUX2: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    ValidateWithMask = True
    Left = 299
    Top = 358
  end
  object qrTotaisTT: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    ValidateWithMask = True
    Left = 163
    Top = 342
  end
  object qrTotais: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'select '
      
        'valor1+valor2+valor3+valor4+valor5+valor6+valor7+valor8+valor9+v' +
        'alor10+valor11+valor12+valor13+valor14+valor15+'
      
        'valor16+valor17+valor18+valor19+valor20+valor21+valor22+valor23+' +
        'valor24+valor25+valor26+valor27+valor28+valor29+valor30+valor31'
      'as total from fluxo where quebra = '#39'TT'#39
      'and conta  = :conta')
    ValidateWithMask = True
    Left = 139
    Top = 390
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'conta'
        ParamType = ptUnknown
      end>
    object qrTotaistotal: TFloatField
      FieldName = 'total'
    end
  end
  object qrTotais12: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'select '
      
        'valor1+valor2+valor3+valor4+valor5+valor6+valor7+valor8+valor9+v' +
        'alor10+valor11+valor12 '
      'as total'
      'from fluxo'
      'where quebra = '#39'TT'#39
      ''
      'and conta  = :conta')
    ValidateWithMask = True
    Left = 203
    Top = 390
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'conta'
        ParamType = ptUnknown
      end>
    object qrTotais12total: TFloatField
      FieldName = 'total'
    end
  end
  object qrBuscaTotais: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'Select valor5 as valor from fluxo')
    ValidateWithMask = True
    Left = 259
    Top = 558
    object qrBuscaTotaisvalor: TFloatField
      FieldName = 'valor'
    end
  end
  object qrAux3: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    ValidateWithMask = True
    Left = 155
    Top = 486
  end
end
