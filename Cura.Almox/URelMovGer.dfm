object FRelMovGer: TFRelMovGer
  Left = 1
  Top = 7
  Width = 798
  Height = 556
  Caption = 
    'Sistema de Controle Financeiro - Relatório Gerencial de Moviment' +
    'ação'
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
    Left = 0
    Top = -4
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = Q_EMP
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
      Height = 137
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = QRBand1BeforePrint
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        362.479166666667
        1899.70833333333)
      BandType = rbPageHeader
      object QRShape1: TgtQRShape
        Left = 0
        Top = 0
        Width = 740
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          4.40972222222222
          0
          0
          1957.91666666667)
        Pen.Width = 2
        Shape = qrsHorLine
      end
      object QRLabel1: TgtQRLabel
        Left = 239
        Top = 9
        Width = 240
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          632.354166666667
          23.8125
          635)
        Alignment = taCenter
        AlignToBand = True
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
        Left = 217
        Top = 34
        Width = 284
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          574.145833333333
          89.9583333333333
          751.416666666667)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'Relatório Gerencial de Movimentação'
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
      object QRLabel3: TgtQRLabel
        Left = 632
        Top = 11
        Width = 36
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          1672.16666666667
          29.1041666666667
          95.25)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Data :'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel4: TgtQRLabel
        Left = 632
        Top = 29
        Width = 36
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          1672.16666666667
          76.7291666666667
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
      object QRLabel5: TgtQRLabel
        Left = 632
        Top = 49
        Width = 36
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          1672.16666666667
          129.645833333333
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
      object QRSysData1: TgtQRSysData
        Left = 673
        Top = 11
        Width = 36
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          1780.64583333333
          29.1041666666667
          95.25)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsDate
        Transparent = False
        FontSize = 10
      end
      object QRSysData2: TgtQRSysData
        Left = 673
        Top = 29
        Width = 37
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          1780.64583333333
          76.7291666666667
          97.8958333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsTime
        Transparent = False
        FontSize = 10
      end
      object QRSysData3: TgtQRSysData
        Left = 673
        Top = 49
        Width = 46
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          1780.64583333333
          129.645833333333
          121.708333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsPageNumber
        Transparent = False
        FontSize = 10
      end
      object QRMemo1: TgtQRMemo
        Left = 67
        Top = 65
        Width = 566
        Height = 42
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          111.125
          177.270833333333
          171.979166666667
          1497.54166666667)
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
      object QRDBImage1: TgtQRDBImage
        Left = 2
        Top = 4
        Width = 116
        Height = 54
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          142.875
          5.29166666666667
          10.5833333333333
          306.916666666667)
        DataField = 'FOTO'
        DataSet = FMenu.Q_FOTO
        Stretch = True
      end
      object QRShape2: TgtQRShape
        Left = -15
        Top = 132
        Width = 753
        Height = 5
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          13.2291666666667
          -39.6875
          349.25
          1992.3125)
        Shape = qrsHorLine
      end
    end
    object QRGroup1: TQRGroup
      Left = 38
      Top = 175
      Width = 718
      Height = 23
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AfterPrint = QRGroup1AfterPrint
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        60.8541666666667
        1899.70833333333)
      Expression = 'Q_EMP.FIL_CODI'
      FooterBand = QRBand3
      Master = QuickRep1
      ReprintOnNewPage = False
      object QRDBText7: TgtQRDBText
        Left = 75
        Top = 1
        Width = 51
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          198.4375
          2.64583333333333
          134.9375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Q_EMP
        DataField = 'FIL_DESC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel15: TgtQRLabel
        Left = 18
        Top = 0
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          47.625
          0
          140.229166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Empresa:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape3: TgtQRShape
        Left = 0
        Top = 18
        Width = 740
        Height = 5
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          13.2291666666667
          0
          47.625
          1957.91666666667)
        Shape = qrsHorLine
      end
    end
    object QRSCont: TQRSubDetail
      Left = 38
      Top = 198
      Width = 718
      Height = 63
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AfterPrint = QRSContAfterPrint
      AlignToBottom = False
      BeforePrint = QRSContBeforePrint
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        166.6875
        1899.70833333333)
      Master = QuickRep1
      DataSet = Q_CON
      PrintBefore = False
      PrintIfEmpty = False
      object Q1: TgtQRLabel
        Left = 17
        Top = 3
        Width = 91
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          44.9791666666667
          7.9375
          240.770833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Conta Gerencial:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object Q2: TgtQRDBText
        Left = 126
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
          333.375
          10.5833333333333
          150.8125)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Q_CON
        DataField = 'CON_CODI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object Q3: TgtQRLabel
        Left = 190
        Top = 3
        Width = 5
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          502.708333333333
          7.9375
          13.2291666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '-'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object Q4: TgtQRDBText
        Left = 204
        Top = 4
        Width = 58
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          539.75
          10.5833333333333
          153.458333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Q_CON
        DataField = 'CON_DESC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object Q5: TgtQRLabel
        Left = 404
        Top = 3
        Width = 5
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1068.91666666667
          7.9375
          13.2291666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '-'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object Q6: TgtQRDBText
        Left = 420
        Top = 4
        Width = 38
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1111.25
          10.5833333333333
          100.541666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Q_CON
        DataField = 'CLASS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRSha: TgtQRShape
        Left = 0
        Top = 21
        Width = 740
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.64583333333333
          0
          55.5625
          1957.91666666667)
        Pen.Width = 2
        Shape = qrsHorLine
      end
      object QR1: TgtQRLabel
        Left = 17
        Top = 24
        Width = 53
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          44.9791666666667
          63.5
          140.229166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Dt. Débito'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QR2: TgtQRLabel
        Left = 88
        Top = 24
        Width = 16
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          232.833333333333
          63.5
          42.3333333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Fil.'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QR3: TgtQRLabel
        Left = 119
        Top = 24
        Width = 35
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          314.854166666667
          63.5
          92.6041666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Docto.'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QR4: TgtQRLabel
        Left = 203
        Top = 24
        Width = 55
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          537.104166666667
          63.5
          145.520833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Descrição'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QR5: TgtQRLabel
        Left = 457
        Top = 24
        Width = 64
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          1209.14583333333
          63.5
          169.333333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Descrição 2'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QR6: TgtQRLabel
        Left = 680
        Top = 25
        Width = 30
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          1799.16666666667
          66.1458333333333
          79.375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Valor'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QQ1: TgtQRDBText
        Left = 16
        Top = 42
        Width = 63
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          42.3333333333333
          111.125
          166.6875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Q_CON
        DataField = 'DATADEBITO'
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
      object QQ2: TgtQRDBText
        Left = 88
        Top = 42
        Width = 19
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          232.833333333333
          111.125
          50.2708333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Q_CON
        DataField = 'FIL_CODI'
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
      object QQ3: TgtQRDBText
        Left = 118
        Top = 42
        Width = 80
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          312.208333333333
          111.125
          211.666666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Q_CON
        DataField = 'DOCUMENTO'
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
      object QQ4: TgtQRDBText
        Left = 202
        Top = 42
        Width = 251
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          534.458333333333
          111.125
          664.104166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Q_CON
        DataField = 'HISTORICO'
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
      object QQ5: TgtQRDBText
        Left = 457
        Top = 43
        Width = 142
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1209.14583333333
          113.770833333333
          375.708333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Q_CON
        DataField = 'DESCRICAO2'
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
      object QQ7: TgtQRDBText
        Left = 629
        Top = 43
        Width = 81
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1664.22916666667
          113.770833333333
          214.3125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Q_CON
        DataField = 'VALOR'
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
      object QQ6: TgtQRDBText
        Left = 601
        Top = 43
        Width = 26
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1590.14583333333
          113.770833333333
          68.7916666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Q_CON
        DataField = 'SINAL'
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
    object QRBand3: TQRBand
      Left = 38
      Top = 281
      Width = 718
      Height = 22
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = 14540253
      ForceNewColumn = False
      ForceNewPage = False
      LinkBand = QRGroup1
      Size.Values = (
        58.2083333333333
        1899.70833333333)
      BandType = rbGroupFooter
      object QRLabel20: TgtQRLabel
        Left = 364
        Top = 2
        Width = 96
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          963.083333333333
          5.29166666666667
          254)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Total da Empresa'
        Color = 14540253
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
      object QRExpr2: TgtQRExpr
        Left = 615
        Top = 2
        Width = 102
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1627.1875
          5.29166666666667
          269.875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Color = 14540253
        OnPrint = QRExpr2Print
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'Q_TOT.VALOR'
        Mask = '###,###,##0.00'
        FontSize = 8
      end
      object QRDBText1: TgtQRDBText
        Left = 464
        Top = 2
        Width = 139
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1227.66666666667
          5.29166666666667
          367.770833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = 14540253
        DataSet = Q_EMP
        DataField = 'FIL_DESC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
    object QRS2: TQRSubDetail
      Left = 38
      Top = 261
      Width = 718
      Height = 20
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = QRS2BeforePrint
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        52.9166666666667
        1899.70833333333)
      Master = QRSCont
      DataSet = Q_SOMA
      PrintBefore = False
      PrintIfEmpty = True
      object QRDBText5: TgtQRDBText
        Left = 671
        Top = 3
        Width = 39
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1775.35416666667
          7.9375
          103.1875)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Q_SOMA
        DataField = 'VALOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel12: TgtQRLabel
        Left = 310
        Top = 2
        Width = 82
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          820.208333333333
          5.29166666666667
          216.958333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Total da Conta'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText2: TgtQRDBText
        Left = 395
        Top = 2
        Width = 54
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          1045.10416666667
          5.29166666666667
          142.875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Q_CON
        DataField = 'CON_CODI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel7: TgtQRLabel
        Left = 450
        Top = 2
        Width = 5
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1190.625
          5.29166666666667
          13.2291666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '-'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText3: TgtQRDBText
        Left = 458
        Top = 2
        Width = 58
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1211.79166666667
          5.29166666666667
          153.458333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Q_CON
        DataField = 'CON_DESC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
    object QRBand2: TQRBand
      Left = 38
      Top = 303
      Width = 718
      Height = 22
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = QRBand2BeforePrint
      Color = clSilver
      ForceNewColumn = False
      ForceNewPage = False
      LinkBand = QRBand1
      Size.Values = (
        58.2083333333333
        1899.70833333333)
      BandType = rbSummary
      object QRLabel6: TgtQRLabel
        Left = 542
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
          1434.04166666667
          5.29166666666667
          158.75)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Total Geral'
        Color = clSilver
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
      object lbTot: TgtQRLabel
        Left = 616
        Top = 2
        Width = 22
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          1629.83333333333
          5.29166666666667
          58.2083333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'xxx'
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
    end
  end
  object Q_EMP: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'SELECT'#9#9'FIL_CODI,'
      #9#9'FIL_DESC'
      'FROM'#9#9'CPAFILI'
      'WHERE'#9#9'FIL_CODI IN'
      #9#9'(SELECT'#9'DISTINCT BAN.BAN_CODEMPR'
      #9#9'FROM'#9#9' CPAPAGA  CPG,'
      #9#9#9#9' CPAIPAG  IPA,'
      #9#9#9#9' CPACONT  CP,'
      #9#9#9#9' CPABANC  BAN,'
      #9#9#9#9' CPAIPACON  '#9'CSU'
      #9#9'WHERE'#9#9' CPG.NUMERO = IPA.NUMERO'
      #9#9'AND'#9#9' CPG.NUMERO = CSU.NUMERO'
      #9#9'AND'#9#9' CSU.CON_CODI = CP.CON_CODI'
      #9#9'AND'#9#9' CPG.BANCOCONTA = BAN.BAN_CODI)'
      'ORDER BY '#9'FIL_DESC')
    ValidateWithMask = True
    Left = 181
    Top = 353
    object Q_EMPFIL_CODI: TStringField
      FieldName = 'FIL_CODI'
      Origin = 'FINANCEIRO.CPAFILI.FIL_CODI'
      FixedChar = True
      Size = 3
    end
    object Q_EMPFIL_DESC: TStringField
      FieldName = 'FIL_DESC'
      Origin = 'FINANCEIRO.CPAFILI.FIL_DESC'
      FixedChar = True
    end
  end
  object DS_EMP: TwwDataSource
    DataSet = Q_EMP
    Left = 237
    Top = 353
  end
  object Q_CON: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    DataSource = DS_EMP
    SQL.Strings = (
      'SELECT'#9#9'*'
      'FROM'
      '(SELECT'#9#9'CPM.MOV_LANC NUMERO,'
      #9#9'CP.CON_CODI,'
      #9#9'CP.CON_DESC,'
      #9#9'CPM.MOV_VALOR '#9'VALOR,'
      #9#9'CPM.MOV_DATA '#9'DATADEBITO,'
      #9#9'CPM.MOV_DCTO '#9'DOCUMENTO,'
      #9#9'CPM.MOV_HIST'#9'HISTORICO,'
      #9#9'MOV_DESC'#9'DESCRICAO2,'
      #9#9'BAN.BAN_CODEMPR FIL_CODI,'
      #9#9'CPM.MOV_SINAL'#9'SINAL,'
      #9#9'CPM.MOV_CONT'#9'CON_CODI_FIL'#9#9
      ''
      'FROM '#9#9'CPAMOVI  CPM,'
      #9#9'CPACONT  CP,'
      #9#9'CPABANC'#9' BAN'
      ''
      'WHERE'#9#9'CPM.MOV_BANC'#9'  = BAN.BAN_CODI'
      'AND'#9#9'CP.CON_CODI = CPM.MOV_CONT'
      'AND'#9#9'BAN.BAN_CODEMPR'#9'  = :FIL_CODI) T')
    ValidateWithMask = True
    Left = 301
    Top = 353
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'FIL_CODI'
        ParamType = ptUnknown
      end>
    object Q_CONCON_CODI: TStringField
      FieldName = 'CON_CODI'
      FixedChar = True
      Size = 50
    end
    object Q_CONCON_DESC: TStringField
      FieldName = 'CON_DESC'
      FixedChar = True
      Size = 40
    end
    object Q_CONVALOR: TFloatField
      FieldName = 'VALOR'
      DisplayFormat = '###,###,##0.00'
    end
    object Q_CONDATADEBITO: TDateTimeField
      FieldName = 'DATADEBITO'
    end
    object Q_CONDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      FixedChar = True
      Size = 15
    end
    object Q_CONHISTORICO: TStringField
      FieldName = 'HISTORICO'
      FixedChar = True
      Size = 70
    end
    object Q_CONDESCRICAO2: TStringField
      FieldName = 'DESCRICAO2'
      FixedChar = True
      Size = 25
    end
    object Q_CONFIL_CODI: TStringField
      FieldName = 'FIL_CODI'
      FixedChar = True
    end
    object Q_CONSINAL: TStringField
      FieldName = 'SINAL'
      FixedChar = True
      Size = 1
    end
    object Q_CONCON_CODI_FIL: TStringField
      FieldName = 'CON_CODI_FIL'
      FixedChar = True
      Size = 50
    end
    object Q_CONNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
  end
  object DS_CON: TwwDataSource
    DataSet = Q_CON
    Left = 349
    Top = 353
  end
  object Q_TOT: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    DataSource = DS_EMP
    SQL.Strings = (
      'SELECT'#9#9'SUM(T.VALOR) VALOR'
      'FROM'
      '(SELECT'#9#9'CASE WHEN SUM(CPM.MOV_VALOR) IS NULL THEN 0'
      #9#9'ELSE'#9'  '
      #9#9#9'SUM(CASE WHEN CPM.MOV_SINAL = '#39'+'#39' THEN '
      #9#9#9'CPM.MOV_VALOR ELSE'
      #9#9#9'-CPM.MOV_VALOR END) END VALOR'
      'FROM '#9#9'CPAMOVI  CPM,'
      #9#9'CPACONT  CP,'
      #9#9'CPABANC   BAN'
      ''
      'WHERE'#9#9'CPM.MOV_BANC'#9'  = BAN.BAN_CODI'
      'AND'#9#9'CP.CON_CODI = CPM.MOV_CONT'
      'AND'#9#9'BAN.BAN_CODEMPR'#9'  = :FIL_CODI) T')
    ValidateWithMask = True
    Left = 189
    Top = 401
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'FIL_CODI'
        ParamType = ptUnknown
      end>
    object Q_TOTVALOR: TFloatField
      FieldName = 'VALOR'
    end
  end
  object DS_TOT: TwwDataSource
    DataSet = Q_TOT
    Left = 237
    Top = 402
  end
  object Q_SOMA: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    DataSource = DS_CON
    SQL.Strings = (
      'SELECT'#9#9'SUM(T.VALOR) VALOR'
      'FROM'
      '(SELECT'#9#9'CASE WHEN SUM(CPM.MOV_VALOR) IS NULL THEN 0'
      #9#9'ELSE SUM(CASE WHEN CPM.MOV_SINAL = '#39'+'#39' THEN '
      #9#9#9#9'CPM.MOV_VALOR'
      #9#9' ELSE'#9'-CPM.MOV_VALOR END ) END VALOR'
      'FROM '#9#9'CPAMOVI  CPM,'
      #9#9'CPACONT  CP,'
      #9#9'CPABANC'#9' BAN'
      ''
      'WHERE'#9#9'CPM.MOV_BANC'#9'  = BAN.BAN_CODI'
      'AND'#9#9'CP.CON_CODI = CPM.MOV_CONT'
      'AND'#9#9'BAN.BAN_CODEMPR'#9'  = :FIL_CODI'
      'AND'#9#9'CPM.MOV_CONT = :CON_CODI) T')
    ValidateWithMask = True
    Left = 301
    Top = 401
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'FIL_CODI'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'CON_CODI'
        ParamType = ptUnknown
      end>
    object FloatField1: TFloatField
      FieldName = 'VALOR'
      currency = True
    end
  end
  object DS_SOMA: TwwDataSource
    DataSet = Q_SOMA
    Left = 349
    Top = 402
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
    Left = 504
    Top = 372
  end
end
