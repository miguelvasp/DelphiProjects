object FEmissaoCopia: TFEmissaoCopia
  Left = 207
  Top = 99
  Width = 1054
  Height = 578
  Caption = 'Emiss�o de C�pia'
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
  object QR_CPDECHEQUE: TQuickRep
    Left = -16
    Top = 0
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    AfterPrint = QR_CPDECHEQUEAfterPrint
    BeforePrint = QR_CPDECHEQUEBeforePrint
    DataSet = Q_LOTEPAGA
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
      0
      2970
      0
      2100
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
      Top = 0
      Width = 756
      Height = 258
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
        682.625
        2000.25)
      BandType = rbGroupHeader
      object qrdbtext1: TQRDBText
        Left = 40
        Top = 63
        Width = 71
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.1458333333333
          105.833333333333
          166.6875
          187.854166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Q_LOTEPAGA
        DataField = 'Numero'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold, fsItalic]
        OnPrint = qrdbtext1Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 16
      end
      object QRLabel18: TQRLabel
        Left = 603
        Top = 37
        Width = 25
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.8541666666667
          1595.4375
          97.8958333333333
          66.1458333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'R$'
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
      object QRDBText5: TQRDBText
        Left = 630
        Top = 37
        Width = 45
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.8541666666667
          1666.875
          97.8958333333333
          119.0625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Q_LOTEPAGA
        DataField = 'Valor'
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
      object QRDBText12: TQRDBText
        Left = 25
        Top = 93
        Width = 650
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.1458333333333
          66.1458333333333
          246.0625
          1719.79166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Q_LOTEPAGA
        DataField = 'Numero'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold, fsItalic]
        OnPrint = QRDBText12Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 16
      end
      object QRDBText4: TQRDBText
        Left = 46
        Top = 142
        Width = 95
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.5
          121.708333333333
          375.708333333333
          251.354166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Q_LOTEPAGA
        DataField = 'Favorecido'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Times New Roman'
        Font.Style = []
        OnPrint = QRDBText4Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 16
      end
      object QRDBText3: TQRDBText
        Left = 360
        Top = 206
        Width = 41
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          952.5
          545.041666666667
          108.479166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Q_LOTEPAGA
        DataField = 'Banco'
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
      object QRLabel2: TQRLabel
        Left = 262
        Top = 206
        Width = 95
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          693.208333333333
          545.041666666667
          251.354166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Bco/Ag/Conta :'
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
      object QRDBText2: TQRDBText
        Left = 152
        Top = 208
        Width = 100
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          402.166666666667
          550.333333333333
          264.583333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Q_LOTEPAGA
        DataField = 'ChequeNumero'
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
      object QRLabel1: TQRLabel
        Left = 22
        Top = 208
        Width = 126
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          58.2083333333333
          550.333333333333
          333.375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'C�pia de cheque n�'
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
      object QRLabel3: TQRLabel
        Left = 6
        Top = 237
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          15.875
          627.0625
          97.8958333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'T�tulo'
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
      object QRLabel5: TQRLabel
        Left = 86
        Top = 237
        Width = 44
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          227.541666666667
          627.0625
          116.416666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Credor'
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
        Left = 202
        Top = 237
        Width = 63
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          534.458333333333
          627.0625
          166.6875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Descri��o'
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
      object QRShape6: TQRShape
        Left = 5
        Top = 250
        Width = 748
        Height = 11
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          29.1041666666667
          13.2291666666667
          661.458333333333
          1979.08333333333)
        Brush.Color = clBlack
        Pen.Width = 2
        Shape = qrsHorLine
      end
      object QRLabel7: TQRLabel
        Left = 327
        Top = 166
        Width = 144
        Height = 37
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          97.8958333333333
          865.1875
          439.208333333333
          381)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'PlanConsult'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clSilver
        Font.Height = -27
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 20
      end
      object QRLabel9: TQRLabel
        Left = 280
        Top = 122
        Width = 394
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          740.833333333333
          322.791666666667
          1042.45833333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Bco/Ag/Conta :'
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
      object QRLabel10: TQRLabel
        Left = 719
        Top = 237
        Width = 35
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1902.35416666667
          627.0625
          92.6041666666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Valor'
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
      object QRDBText9: TQRDBText
        Left = 362
        Top = 131
        Width = 139
        Height = 23
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.8541666666667
          957.791666666667
          346.604166666667
          367.770833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataField = 'Emp_MunFiscal'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRDBText13: TQRDBText
        Left = 511
        Top = 130
        Width = 38
        Height = 23
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.8541666666667
          1352.02083333333
          343.958333333333
          100.541666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Q_LOTEPAGA
        DataField = 'Tipo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold, fsItalic]
        OnPrint = QRDBText13Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRLabel11: TQRLabel
        Left = 482
        Top = 237
        Width = 104
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1275.29166666667
          627.0625
          275.166666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Conta Gerencial'
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
      object QRLabel12: TQRLabel
        Left = 602
        Top = 237
        Width = 77
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1592.79166666667
          627.0625
          203.729166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Desc/Acr�sc'
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
      object QRLabel13: TQRLabel
        Left = 464
        Top = 206
        Width = 70
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1227.66666666667
          545.041666666667
          185.208333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRLabel13'
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
    end
    object QRBand2: TQRBand
      Left = 19
      Top = 326
      Width = 756
      Height = 118
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
        312.208333333333
        2000.25)
      BandType = rbGroupFooter
      object QRShape10: TQRShape
        Left = 409
        Top = 71
        Width = 279
        Height = 11
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          29.1041666666667
          1082.14583333333
          187.854166666667
          738.1875)
        Brush.Color = clBlack
        Shape = qrsHorLine
      end
      object QRShape12: TQRShape
        Left = 409
        Top = 43
        Width = 279
        Height = 11
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          29.1041666666667
          1082.14583333333
          113.770833333333
          738.1875)
        Brush.Color = clBlack
        Shape = qrsHorLine
      end
      object QRLabel8: TQRLabel
        Left = 487
        Top = 13
        Width = 147
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1288.52083333333
          34.3958333333333
          388.9375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Cheque assinado por : '
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
      object QRShape8: TQRShape
        Left = 24
        Top = 8
        Width = 281
        Height = 77
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          203.729166666667
          63.5
          21.1666666666667
          743.479166666667)
        Shape = qrsRectangle
      end
      object QRShape9: TQRShape
        Left = 25
        Top = 29
        Width = 279
        Height = 11
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          29.1041666666667
          66.1458333333333
          76.7291666666667
          738.1875)
        Brush.Color = clBlack
        Shape = qrsHorLine
      end
      object QRShape4: TQRShape
        Left = 121
        Top = 34
        Width = 6
        Height = 50
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          132.291666666667
          320.145833333333
          89.9583333333333
          15.875)
        Brush.Color = clBlack
        Shape = qrsVertLine
      end
      object QRLabel4: TQRLabel
        Left = 144
        Top = 14
        Width = 38
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          381
          37.0416666666667
          100.541666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Vistos'
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
      object QRShape1: TQRShape
        Left = 209
        Top = 34
        Width = 6
        Height = 50
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          132.291666666667
          552.979166666667
          89.9583333333333
          15.875)
        Brush.Color = clBlack
        Shape = qrsVertLine
      end
    end
    object QRSubDetail1: TQRSubDetail
      Left = 19
      Top = 258
      Width = 756
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = QRSubDetail1BeforePrint
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        44.9791666666667
        2000.25)
      Master = QR_CPDECHEQUE
      DataSet = Q_CPAPAGA
      FooterBand = QRSubDetail2
      HeaderBand = QRBand1
      PrintBefore = False
      PrintIfEmpty = True
      object QRDBText6: TQRDBText
        Left = 6
        Top = 1
        Width = 67
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          15.875
          2.64583333333333
          177.270833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Q_CPAPAGA
        DataField = 'Documento'
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
      object QRDBText8: TQRDBText
        Left = 85
        Top = 1
        Width = 108
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          224.895833333333
          2.64583333333333
          285.75)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Q_CPAPAGA
        DataField = 'Fornecedor'
        Font.Charset = DEFAULT_CHARSET
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
      object QRDBText10: TQRDBText
        Left = 203
        Top = 1
        Width = 270
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          537.104166666667
          2.64583333333333
          714.375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Q_CPAPAGA
        DataField = 'Historico'
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
      object QRDBText11: TQRDBText
        Left = 727
        Top = 1
        Width = 27
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1923.52083333333
          2.64583333333333
          71.4375)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Q_CPAPAGA
        DataField = 'Valor'
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
      object lbDesconto: TQRLabel
        Left = 624
        Top = 0
        Width = 55
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1651
          0
          145.520833333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'lbDesconto'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText7: TQRDBText
        Left = 483
        Top = 1
        Width = 126
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1277.9375
          2.64583333333333
          333.375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Q_CPAPAGA
        DataField = 'CGerDesc'
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
      Left = 19
      Top = 275
      Width = 756
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = QRSubDetail2BeforePrint
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        44.9791666666667
        2000.25)
      Master = QR_CPDECHEQUE
      FooterBand = QRSubDetail3
      PrintBefore = False
      PrintIfEmpty = True
    end
    object QRSubDetail3: TQRSubDetail
      Left = 19
      Top = 292
      Width = 756
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = QRSubDetail3BeforePrint
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        44.9791666666667
        2000.25)
      Master = QR_CPDECHEQUE
      FooterBand = QRSubDetail4
      PrintBefore = False
      PrintIfEmpty = True
    end
    object QRSubDetail4: TQRSubDetail
      Left = 19
      Top = 309
      Width = 756
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = QRSubDetail4BeforePrint
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        44.9791666666667
        2000.25)
      Master = QR_CPDECHEQUE
      FooterBand = QRBand2
      PrintBefore = False
      PrintIfEmpty = True
    end
    object QRBand3: TQRBand
      Left = 19
      Top = 444
      Width = 756
      Height = 40
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
        105.833333333333
        2000.25)
      BandType = rbSummary
    end
  end
  object Q_LOTEPAGA: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'SELECT * FROM CPACHEQ '
      'where MARCADOR = '#39'*'#39' ORDER BY CHEQUENUMERO')
    ValidateWithMask = True
    Left = 550
    Top = 451
    object Q_LOTEPAGANumero: TIntegerField
      FieldName = 'Numero'
      Origin = 'FINANCEIRO.CPACHEQ.Numero'
    end
    object Q_LOTEPAGAChequeNumero: TStringField
      FieldName = 'ChequeNumero'
      Origin = 'FINANCEIRO.CPACHEQ.ChequeNumero'
      FixedChar = True
      Size = 10
    end
    object Q_LOTEPAGADataEmissao: TDateTimeField
      FieldName = 'DataEmissao'
      Origin = 'FINANCEIRO.CPACHEQ.DataEmissao'
    end
    object Q_LOTEPAGAFavorecido: TStringField
      FieldName = 'Favorecido'
      Origin = 'FINANCEIRO.CPACHEQ.Favorecido'
      FixedChar = True
      Size = 15
    end
    object Q_LOTEPAGANome: TStringField
      FieldName = 'Nome'
      Origin = 'FINANCEIRO.CPACHEQ.Nome'
      FixedChar = True
      Size = 50
    end
    object Q_LOTEPAGAValor: TFloatField
      DisplayWidth = 10
      FieldName = 'Valor'
      Origin = 'FINANCEIRO.CPACHEQ.Valor'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_LOTEPAGABanco: TStringField
      FieldName = 'Banco'
      Origin = 'FINANCEIRO.CPACHEQ.Banco'
      FixedChar = True
      Size = 50
    end
    object Q_LOTEPAGATipo: TStringField
      FieldName = 'Tipo'
      Origin = 'FINANCEIRO.CPACHEQ.Tipo'
      FixedChar = True
      Size = 1
    end
    object Q_LOTEPAGAEmitido: TStringField
      FieldName = 'Emitido'
      Origin = 'FINANCEIRO.CPACHEQ.Emitido'
      FixedChar = True
      Size = 1
    end
    object Q_LOTEPAGAMarcador: TStringField
      FieldName = 'Marcador'
      Origin = 'FINANCEIRO.CPACHEQ.Marcador'
      FixedChar = True
      Size = 1
    end
  end
  object Q_ITEMLOTEPAGA: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'select * from itemlotepaga')
    ValidateWithMask = True
    Left = 670
    Top = 459
    object Q_ITEMLOTEPAGATitulo: TStringField
      FieldName = 'Titulo'
      Origin = 'FINANCEIRO.itemlotepaga.Titulo'
      FixedChar = True
      Size = 10
    end
    object Q_ITEMLOTEPAGASequencia: TAutoIncField
      FieldName = 'Sequencia'
      Origin = 'FINANCEIRO.itemlotepaga.Sequencia'
    end
    object Q_ITEMLOTEPAGASeqLotePaga: TIntegerField
      FieldName = 'SeqLotePaga'
      Origin = 'FINANCEIRO.itemlotepaga.SeqLotePaga'
    end
    object Q_ITEMLOTEPAGAValorPago: TFloatField
      FieldName = 'ValorPago'
      Origin = 'FINANCEIRO.itemlotepaga.ValorPago'
    end
    object Q_ITEMLOTEPAGAValorDescAcresc: TFloatField
      FieldName = 'ValorDescAcresc'
      Origin = 'FINANCEIRO.itemlotepaga.ValorDescAcresc'
    end
  end
  object DS_LOTEPAGA: TwwDataSource
    DataSet = Q_LOTEPAGA
    Left = 486
    Top = 454
  end
  object DS_ITEMLOTEPAGA: TwwDataSource
    DataSet = Q_ITEMLOTEPAGA
    Left = 222
    Top = 451
  end
  object Q_CPAPAGA: TwwQuery
    AfterScroll = Q_CPAPAGAAfterScroll
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    DataSource = DS_LOTEPAGA
    SQL.Strings = (
      'SELECT '#9'A.NUMERO,'
      #9'A.DOCUMENTO,'
      
        #9'CASE WHEN (A.FORNECEDOR = '#39#39') OR (A.FORNECEDOR IS NULL) THEN RA' +
        'ZAO ELSE A.FORNECEDOR  END AS FORNECEDOR,'
      #9'A.RAZAO,'
      #9'A.CONTAGERENCIAL,'
      #9'A.VALORTITULO,'
      #9'A.DESCACRESC,'
      #9'A.VALORLIQUIDO,'
      #9'A.VENCIMENTO,'
      #9'A.BANCOCONTA,'
      #9'A.EMISSAO,'
      #9'A.MOEDA,'
      #9'A.DATAMOEDA,'
      #9'A.MOEDAORIGINAL,'
      #9'A.DATAMOEDAORIGINAL,'
      #9'A.VALORORIGINAL,'
      #9'A.VENCIMENTOPREVISTO,'
      #9'A.HISTORICO,'
      #9'A.FLAG,'
      #9'A.SITUACAO,'
      #9'A.SALDO,'
      #9'A.FILIAL,'
      #9'A.CONFERENCIA,'
      #9'B.Valor'
      'FROM   '#9'CPAPAGA A , '
      #9'CPAICHE  B'
      'where       A.NUMERO = B.NUMEROCP  '
      'and           B.Numero = :Numero '
      'ORDER BY A.VENCIMENTO, A.RAZAO, A.DOCUMENTO')
    ValidateWithMask = True
    Left = 414
    Top = 348
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Numero'
        ParamType = ptUnknown
      end>
    object Q_CPAPAGANumero: TIntegerField
      FieldName = 'Numero'
      Origin = 'FINANCEIRO.CPAPAGA.Numero'
    end
    object Q_CPAPAGADocumento: TStringField
      FieldName = 'Documento'
      Origin = 'FINANCEIRO.CPAPAGA.Documento'
      FixedChar = True
      Size = 15
    end
    object Q_CPAPAGAFornecedor: TStringField
      FieldName = 'Fornecedor'
      Origin = 'FINANCEIRO.CPAPAGA.Fornecedor'
      FixedChar = True
      Size = 15
    end
    object Q_CPAPAGARazao: TStringField
      FieldName = 'Razao'
      Origin = 'FINANCEIRO.CPAPAGA.Razao'
      FixedChar = True
      Size = 40
    end
    object Q_CPAPAGAContaGerencial: TStringField
      FieldName = 'ContaGerencial'
      Origin = 'FINANCEIRO.CPAPAGA.ContaGerencial'
      FixedChar = True
      Size = 50
    end
    object Q_CPAPAGAValorTitulo: TFloatField
      FieldName = 'ValorTitulo'
      Origin = 'FINANCEIRO.CPAPAGA.ValorTitulo'
    end
    object Q_CPAPAGADescAcresc: TFloatField
      FieldName = 'DescAcresc'
      Origin = 'FINANCEIRO.CPAPAGA.DescAcresc'
    end
    object Q_CPAPAGAValorLiquido: TFloatField
      FieldName = 'ValorLiquido'
      Origin = 'FINANCEIRO.CPAPAGA.ValorLiquido'
    end
    object Q_CPAPAGAVencimento: TDateTimeField
      FieldName = 'Vencimento'
      Origin = 'FINANCEIRO.CPAPAGA.Vencimento'
    end
    object Q_CPAPAGABancoConta: TStringField
      FieldName = 'BancoConta'
      Origin = 'FINANCEIRO.CPAPAGA.BancoConta'
      FixedChar = True
      Size = 14
    end
    object Q_CPAPAGAEmissao: TDateTimeField
      FieldName = 'Emissao'
      Origin = 'FINANCEIRO.CPAPAGA.Emissao'
    end
    object Q_CPAPAGAMoeda: TStringField
      FieldName = 'Moeda'
      Origin = 'FINANCEIRO.CPAPAGA.Moeda'
      FixedChar = True
      Size = 50
    end
    object Q_CPAPAGADataMoeda: TDateTimeField
      FieldName = 'DataMoeda'
      Origin = 'FINANCEIRO.CPAPAGA.DataMoeda'
    end
    object Q_CPAPAGAMoedaOriginal: TStringField
      FieldName = 'MoedaOriginal'
      Origin = 'FINANCEIRO.CPAPAGA.MoedaOriginal'
      FixedChar = True
      Size = 50
    end
    object Q_CPAPAGADataMoedaOriginal: TDateTimeField
      FieldName = 'DataMoedaOriginal'
      Origin = 'FINANCEIRO.CPAPAGA.DataMoedaOriginal'
    end
    object Q_CPAPAGAValorOriginal: TFloatField
      FieldName = 'ValorOriginal'
      Origin = 'FINANCEIRO.CPAPAGA.ValorOriginal'
    end
    object Q_CPAPAGAVencimentoPrevisto: TDateTimeField
      FieldName = 'VencimentoPrevisto'
      Origin = 'FINANCEIRO.CPAPAGA.VencimentoPrevisto'
    end
    object Q_CPAPAGAHistorico: TStringField
      FieldName = 'Historico'
      Origin = 'FINANCEIRO.CPAPAGA.Historico'
      FixedChar = True
      Size = 50
    end
    object Q_CPAPAGAFlag: TStringField
      FieldName = 'Flag'
      Origin = 'FINANCEIRO.CPAPAGA.Flag'
      FixedChar = True
      Size = 1
    end
    object Q_CPAPAGASituacao: TStringField
      FieldName = 'Situacao'
      Origin = 'FINANCEIRO.CPAPAGA.Situacao'
      FixedChar = True
      Size = 1
    end
    object Q_CPAPAGASaldo: TFloatField
      FieldName = 'Saldo'
      Origin = 'FINANCEIRO.CPAPAGA.Saldo'
    end
    object Q_CPAPAGAFilial: TStringField
      FieldName = 'Filial'
      Origin = 'FINANCEIRO.CPAPAGA.Filial'
      FixedChar = True
      Size = 3
    end
    object Q_CPAPAGAConferencia: TStringField
      FieldName = 'Conferencia'
      Origin = 'FINANCEIRO.CPAPAGA.Conferencia'
      FixedChar = True
      Size = 1
    end
    object Q_CPAPAGAValor: TFloatField
      FieldName = 'Valor'
      Origin = 'FINANCEIRO.CPAICHE.Valor'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_CPAPAGACGerDesc: TStringField
      FieldKind = fkLookup
      FieldName = 'CGerDesc'
      LookupDataSet = qrContaGerencial
      LookupKeyFields = 'CON_CODI'
      LookupResultField = 'CON_DESC'
      KeyFields = 'ContaGerencial'
      Size = 30
      Lookup = True
    end
  end
  object DS_CPAPAGA: TwwDataSource
    DataSet = Q_CPAPAGA
    Left = 86
    Top = 452
  end
  object Q_Auxiliar: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    ValidateWithMask = True
    Left = 344
    Top = 348
  end
  object Q_AUXI2: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    ValidateWithMask = True
    Left = 431
    Top = 452
  end
  object Q_AUXI: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    ValidateWithMask = True
    Left = 615
    Top = 454
  end
  object qrDesconto: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'Select sum(descAcresc) as desconto from CPADTPA'
      'where numerocp = :numerocp')
    ValidateWithMask = True
    Left = 631
    Top = 180
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'numerocp'
        ParamType = ptUnknown
      end>
    object qrDescontodesconto: TFloatField
      FieldName = 'desconto'
    end
  end
  object qrContaGerencial: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'Select '#9#9'CON_CODI, '
      #9#9'CON_DESC CON_DESC '
      'from '#9#9'CPACONT '
      'order by '#9#9'CON_CODI')
    ValidateWithMask = True
    Left = 552
    Top = 188
  end
end
