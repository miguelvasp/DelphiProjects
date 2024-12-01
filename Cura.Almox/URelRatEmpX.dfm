object FRelRatEmpX: TFRelRatEmpX
  Left = 1
  Top = 7
  Width = 810
  Height = 610
  Caption = 
    'Sistema de Controle Financeiro - Relatório de Rateios por Empres' +
    'as - Pagos'
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
  object QuickRep1: TQuickRep
    Left = 0
    Top = 4
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
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        362.479166666667
        1899.70833333333)
      BandType = rbPageHeader
      object QRShape1: TQRShape
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
      object QRLabel1: TQRLabel
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
      object QRLabel2: TQRLabel
        Left = 195
        Top = 34
        Width = 328
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          515.9375
          89.9583333333333
          867.833333333333)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'Relatório de Rateios por Empresas - Pagos'
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
      object QRLabel4: TQRLabel
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
      object QRLabel5: TQRLabel
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
      object QRSysData1: TQRSysData
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
      object QRSysData2: TQRSysData
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
      object QRSysData3: TQRSysData
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
      object QRMemo1: TQRMemo
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
      object QRDBImage1: TQRDBImage
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
      object QRShape2: TQRShape
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
      object QRDBText7: TQRDBText
        Left = 128
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
          338.666666666667
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
      object QRLabel15: TQRLabel
        Left = 56
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
          148.166666666667
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
      object QRShape3: TQRShape
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
      object Q1: TQRLabel
        Left = 20
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
          52.9166666666667
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
      object Q2: TQRDBText
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
      object Q3: TQRLabel
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
      object Q4: TQRDBText
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
      object Q5: TQRLabel
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
      object Q6: TQRDBText
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
      object QRSha: TQRShape
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
      object QR1: TQRLabel
        Left = 57
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
          150.8125
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
      object QR2: TQRLabel
        Left = 131
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
          346.604166666667
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
      object QR3: TQRLabel
        Left = 165
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
          436.5625
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
      object QR4: TQRLabel
        Left = 220
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
          582.083333333333
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
      object QR5: TQRLabel
        Left = 400
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
          1058.33333333333
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
      object QR6: TQRLabel
        Left = 666
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
          1762.125
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
      object QQ1: TQRDBText
        Left = 56
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
          148.166666666667
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
      object QQ2: TQRDBText
        Left = 131
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
          346.604166666667
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
      object QQ3: TQRDBText
        Left = 164
        Top = 42
        Width = 49
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          433.916666666667
          111.125
          129.645833333333)
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
      object QQ4: TQRDBText
        Left = 218
        Top = 42
        Width = 179
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          576.791666666667
          111.125
          473.604166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Q_CON
        DataField = 'FORNECEDOR'
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
      object QQ5: TQRDBText
        Left = 399
        Top = 42
        Width = 183
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1055.6875
          111.125
          484.1875)
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
      object QQ7: TQRDBText
        Left = 615
        Top = 43
        Width = 82
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1627.1875
          113.770833333333
          216.958333333333)
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
      object QQ6: TQRDBText
        Left = 586
        Top = 42
        Width = 26
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1550.45833333333
          111.125
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
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
    object QRBand3: TQRBand
      Left = 38
      Top = 261
      Width = 718
      Height = 22
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clSilver
      ForceNewColumn = False
      ForceNewPage = False
      LinkBand = QRGroup1
      Size.Values = (
        58.2083333333333
        1899.70833333333)
      BandType = rbGroupFooter
      object QRLabel20: TQRLabel
        Left = 524
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
          1386.41666666667
          5.29166666666667
          158.75)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Valor Total'
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
      object QRExpr2: TQRExpr
        Left = 599
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
          1584.85416666667
          5.29166666666667
          269.875)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Color = clSilver
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'Q_TOT.VALOR'
        Mask = '###,###,##0.00'
        FontSize = 8
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
    Left = 189
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
      '(SELECT'#9#9'CP.CON_CODI,'
      #9#9'CP.CON_DESC,'
      #9#9'CASE WHEN CP.CON_OPER = '#39'F'#39' THEN '#39'FINANCEIRA'#39
      #9'     '#9'WHEN CP.CON_OPER = '#39'O'#39' THEN '#39'OPERACIONAL'#39
      #9'     '#9'WHEN CP.CON_OPER = '#39'N'#39' THEN '#39'NÃO OPERACIONAL'#39
      #9#9'END  CLASS,'
      #9#9'CSU.VALOR,'
      #9#9'IPA.DATADEBITO,'
      #9#9'IPA.DOCUMENTO,'
      #9#9'CPG.HISTORICO,'
      #9#9'CPG.DESCRICAO2,'
      #9#9'CPG.FORNECEDOR,'
      #9#9'BAN.BAN_CODEMPR FIL_CODI,'
      #9#9#39'-'#39' SINAL,'
      #9#9'CPG.CONTAGERENCIAL CON_CODI_FIL'
      'FROM'#9#9'CPAPAGA  CPG,'
      #9#9'CPAIPAG  IPA,'
      #9#9'CPACONT  CP,'
      #9#9'CPABANC  BAN ,'
      #9#9'CPAIPACON CSU'
      'WHERE'#9#9'CPG.NUMERO = IPA.NUMERO'
      'AND'#9#9'CSU.NUMERO = CPG.NUMERO'
      'AND'#9#9'CSU.CON_CODI = CP.CON_CODI'
      'AND'#9#9'CPG.BANCOCONTA = BAN.BAN_CODI'
      'AND'#9#9'BAN.BAN_CODEMPR = :FIL_CODI'
      'UNION'
      'SELECT'#9#9'CP.CON_CODI,'
      #9#9'CP.CON_DESC,'
      #9#9#39'RECEBIMENTO'#39'   CLASS,'
      #9#9'CPM.MOV_VALOR /100 * CSU.PERCENTUAL'#9'VALOR,'
      #9#9'CPM.MOV_DATA '#9'DATADEBITO,'
      #9#9'CPM.MOV_DCTO '#9'DOCUMENTO,'
      #9#9'CPM.MOV_HIST'#9'HISTORICO,'
      #9#9'NULL'#9#9'DESCRICAO2,'
      #9#9'CPM.MOV_DESC'#9'FORNECEDOR,'
      #9#9'BAN.BAN_CODEMPR FIL_CODI,'
      #9#9'CPM.MOV_SINAL'#9'SINAL,'
      #9#9'CPM.MOV_CONT'#9'CON_CODI_FIL'#9#9
      ''
      'FROM '#9#9'CPAMOVI  CPM,'
      #9#9'CPACONTG CSU,'
      #9#9'CPACONT  CP,'
      #9#9'CPABANC'#9' BAN'
      ''
      'WHERE'#9#9'CPM.MOV_CONT '#9'  = CSU.CON_CODI_ORIG'
      'AND'#9#9'CSU.CON_CODI_DEST = CP.CON_CODI'
      'AND'#9#9'CPM.MOV_BANC'#9'  = BAN.BAN_CODI'
      'AND'#9#9'CPM.MOV_ORIG = 0'
      'AND'#9#9'BAN.BAN_CODEMPR'#9'  = :FIL_CODI) T')
    ValidateWithMask = True
    Left = 301
    Top = 353
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'FIL_CODI'
        ParamType = ptUnknown
      end
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
    object Q_CONCLASS: TStringField
      FieldName = 'CLASS'
      FixedChar = True
      Size = 15
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
    object Q_CONFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
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
      '(SELECT '#9'CASE WHEN SUM(CSU.VALOR) IS NULL THEN 0 '
      #9#9'ELSE      -1 * SUM(CSU.VALOR) END     VALOR'
      'FROM '#9#9'CPAPAGA'#9'CPG,'
      #9#9'CPAIPAG  '#9'IPA,'
      #9#9'CPABANC  '#9'BAN,'
      #9#9'CPAIPACON'#9'CSU'
      'WHERE'#9#9'CPG.NUMERO = IPA.NUMERO'
      'AND'#9#9'CSU.NUMERO = CPG.NUMERO'
      'AND'#9#9'CPG.BANCOCONTA = BAN.BAN_CODI'
      'AND'#9#9'BAN.BAN_CODEMPR = :FIL_CODI'
      'UNION'
      
        'SELECT'#9#9'CASE WHEN SUM(CPM.MOV_VALOR/100*CSU.PERCENTUAL) IS NULL ' +
        'THEN 0'
      #9#9'ELSE'#9'  SUM(CPM.MOV_VALOR/100*CSU.PERCENTUAL) END VALOR'
      'FROM '#9#9'CPAMOVI  CPM,'
      #9#9'CPACONTG CSU,'
      #9#9'CPACONT  CP,'
      #9#9'CPABANC'#9' BAN'
      ''
      'WHERE'#9#9'CPM.MOV_CONT '#9'  = CSU.CON_CODI_ORIG'
      'AND'#9#9'CSU.CON_CODI_DEST = CP.CON_CODI'
      'AND'#9#9'CPM.MOV_BANC'#9'  = BAN.BAN_CODI'
      'AND'#9#9'CPM.MOV_SINAL = '#39'+'#39
      'AND'#9#9'BAN.BAN_CODEMPR'#9'  = :FIL_CODI) T')
    ValidateWithMask = True
    Left = 189
    Top = 401
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'FIL_CODI'
        ParamType = ptUnknown
      end
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
end
