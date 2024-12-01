object frmRPA: TfrmRPA
  Left = 192
  Top = 124
  Width = 1011
  Height = 583
  Caption = 'frmRPA'
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
    Tag = 1
    Left = 88
    Top = 16
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = frmConciliacaoFrete.cdsConcilia
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
      Height = 1026
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
        2714.625
        1899.70833333333)
      BandType = rbPageHeader
      object QRLabel48: TQRLabel
        Left = 600
        Top = 378
        Width = 97
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1587.5
          1000.125
          256.645833333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'R$'
        Color = clWhite
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
      object QRShape1: TQRShape
        Left = 32
        Top = 48
        Width = 673
        Height = 865
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2288.64583333333
          84.6666666666667
          127
          1780.64583333333)
        Pen.Width = 2
        Shape = qrsRectangle
      end
      object QRShape2: TQRShape
        Left = 32
        Top = 48
        Width = 433
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          171.979166666667
          84.6666666666667
          127
          1145.64583333333)
        Pen.Width = 2
        Shape = qrsRectangle
      end
      object QRShape4: TQRShape
        Left = 477
        Top = 49
        Width = 106
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.3125
          1262.0625
          129.645833333333
          280.458333333333)
        Pen.Width = 2
        Shape = qrsRectangle
      end
      object QRShape5: TQRShape
        Left = 477
        Top = 80
        Width = 106
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.3125
          1262.0625
          211.666666666667
          280.458333333333)
        Pen.Width = 2
        Shape = qrsRectangle
      end
      object QRShape6: TQRShape
        Left = 582
        Top = 49
        Width = 122
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.3125
          1539.875
          129.645833333333
          322.791666666667)
        Pen.Width = 2
        Shape = qrsRectangle
      end
      object QRShape7: TQRShape
        Left = 582
        Top = 80
        Width = 122
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.3125
          1539.875
          211.666666666667
          322.791666666667)
        Pen.Width = 2
        Shape = qrsRectangle
      end
      object QRLabel1: TQRLabel
        Left = 483
        Top = 56
        Width = 91
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1277.9375
          148.166666666667
          240.770833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'N° DO RECIBO'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel2: TQRLabel
        Left = 598
        Top = 56
        Width = 84
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1582.20833333333
          148.166666666667
          222.25)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'N° DO TALÃO'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel3: TQRLabel
        Left = 86
        Top = 88
        Width = 335
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          227.541666666667
          232.833333333333
          886.354166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'RECIBO DE PAGAMENTO A AUTÔNOMO - RPA'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRShape3: TQRShape
        Left = 33
        Top = 131
        Width = 445
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          76.7291666666667
          87.3125
          346.604166666667
          1177.39583333333)
        Pen.Width = 2
        Shape = qrsRectangle
      end
      object QRLabel4: TQRLabel
        Left = 36
        Top = 136
        Width = 253
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          95.25
          359.833333333333
          669.395833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'NOME OU RAZÃO SOCIAL DA EMPRESA'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape8: TQRShape
        Left = 477
        Top = 131
        Width = 227
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          76.7291666666667
          1262.0625
          346.604166666667
          600.604166666667)
        Pen.Width = 2
        Shape = qrsRectangle
      end
      object QRLabel5: TQRLabel
        Left = 501
        Top = 136
        Width = 176
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1325.5625
          359.833333333333
          465.666666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'MATRICULA (CNPJ OU INSS)'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape9: TQRShape
        Left = 33
        Top = 159
        Width = 445
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          76.7291666666667
          87.3125
          420.6875
          1177.39583333333)
        Pen.Width = 2
        Shape = qrsRectangle
      end
      object QRShape10: TQRShape
        Left = 477
        Top = 159
        Width = 227
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          76.7291666666667
          1262.0625
          420.6875
          600.604166666667)
        Pen.Width = 2
        Shape = qrsRectangle
      end
      object QRDBText2: TQRDBText
        Left = 38
        Top = 165
        Width = 435
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          100.541666666667
          436.5625
          1150.9375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qrParametro
        DataField = 'PAR_RAZA'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText3: TQRDBText
        Left = 488
        Top = 165
        Width = 200
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1291.16666666667
          436.5625
          529.166666666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qrParametro
        DataField = 'PAR_CNPJ'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel6: TQRLabel
        Left = 231
        Top = 208
        Width = 451
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          611.1875
          550.333333333333
          1193.27083333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 
          'RECEBI DA EMPRESA ACIMA IDENTIFICADA, PELA PRESTAÇÃO DOS SERVIÇO' +
          'S'
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
      object QRLabel7: TQRLabel
        Left = 37
        Top = 230
        Width = 127
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          97.8958333333333
          608.541666666667
          336.020833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'SERVIÇO DE FRETE'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel8: TQRLabel
        Left = 413
        Top = 232
        Width = 152
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1092.72916666667
          613.833333333333
          402.166666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = ', A IMPORTÂNCIA DE R$'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape11: TQRShape
        Left = 32
        Top = 246
        Width = 377
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.8125
          84.6666666666667
          650.875
          997.479166666667)
        Shape = qrsHorLine
      end
      object QRShape12: TQRShape
        Left = 568
        Top = 246
        Width = 131
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.8125
          1502.83333333333
          650.875
          346.604166666667)
        Shape = qrsHorLine
      end
      object lbValorExtenso: TQRLabel
        Left = 37
        Top = 264
        Width = 96
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          97.8958333333333
          698.5
          254)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'SERVIÇO DE FRETE'
        Color = clWhite
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
      object QRShape13: TQRShape
        Left = 32
        Top = 280
        Width = 377
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.8125
          84.6666666666667
          740.833333333333
          997.479166666667)
        Shape = qrsHorLine
      end
      object QRLabel10: TQRLabel
        Left = 413
        Top = 266
        Width = 245
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1092.72916666667
          703.791666666667
          648.229166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = ', CONFORME DISCRIMINAÇÃO ABAIXO:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape14: TQRShape
        Left = 33
        Top = 299
        Width = 101
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          76.7291666666667
          87.3125
          791.104166666667
          267.229166666667)
        Pen.Width = 2
        Shape = qrsRectangle
      end
      object QRLabel9: TQRLabel
        Left = 38
        Top = 306
        Width = 86
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          100.541666666667
          809.625
          227.541666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'SALÁRIO-BASE'
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
      object QRShape15: TQRShape
        Left = 133
        Top = 299
        Width = 60
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          76.7291666666667
          351.895833333333
          791.104166666667
          158.75)
        Pen.Width = 2
        Shape = qrsRectangle
      end
      object QRLabel11: TQRLabel
        Left = 146
        Top = 306
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          386.291666666667
          809.625
          76.7291666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'TAXA'
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
      object QRShape16: TQRShape
        Left = 192
        Top = 299
        Width = 185
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          76.7291666666667
          508
          791.104166666667
          489.479166666667)
        Pen.Width = 2
        Shape = qrsRectangle
      end
      object QRLabel12: TQRLabel
        Left = 760
        Top = 1157
        Width = 168
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2010.83333333333
          3061.22916666667
          444.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'VALOR MÁXIMO P/REMBOLSO'
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
      object QRShape17: TQRShape
        Left = 33
        Top = 327
        Width = 344
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          76.7291666666667
          87.3125
          865.1875
          910.166666666667)
        Pen.Width = 2
        Shape = qrsRectangle
      end
      object QRLabel13: TQRLabel
        Left = 202
        Top = 306
        Width = 168
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          534.458333333333
          809.625
          444.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'VALOR MÁXIMO P/REMBOLSO'
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
      object QRShape18: TQRShape
        Left = 32
        Top = 379
        Width = 211
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          76.7291666666667
          84.6666666666667
          1002.77083333333
          558.270833333333)
        Pen.Width = 2
        Shape = qrsRectangle
      end
      object QRLabel14: TQRLabel
        Left = 37
        Top = 386
        Width = 199
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          97.8958333333333
          1021.29166666667
          526.520833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'VALOR JÁ REEMBOLSADO NO MÊS'
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
      object QRShape19: TQRShape
        Left = 242
        Top = 379
        Width = 135
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          76.7291666666667
          640.291666666667
          1002.77083333333
          357.1875)
        Pen.Width = 2
        Shape = qrsRectangle
      end
      object QRLabel15: TQRLabel
        Left = 286
        Top = 386
        Width = 41
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          756.708333333333
          1021.29166666667
          108.479166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'SALDO'
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
      object QRShape20: TQRShape
        Left = 32
        Top = 406
        Width = 211
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          76.7291666666667
          84.6666666666667
          1074.20833333333
          558.270833333333)
        Pen.Width = 2
        Shape = qrsRectangle
      end
      object QRShape21: TQRShape
        Left = 242
        Top = 406
        Width = 135
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          76.7291666666667
          640.291666666667
          1074.20833333333
          357.1875)
        Pen.Width = 2
        Shape = qrsRectangle
      end
      object QRShape22: TQRShape
        Left = 32
        Top = 462
        Width = 345
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          76.7291666666667
          84.6666666666667
          1222.375
          912.8125)
        Pen.Width = 2
        Shape = qrsRectangle
      end
      object QRLabel16: TQRLabel
        Left = 51
        Top = 468
        Width = 301
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          134.9375
          1238.25
          796.395833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'CARRETEIRO CALCULO DO VALOR DO REEMBOLSO'
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
      object QRShape23: TQRShape
        Left = 32
        Top = 490
        Width = 345
        Height = 102
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          269.875
          84.6666666666667
          1296.45833333333
          912.8125)
        Pen.Width = 2
        Shape = qrsRectangle
      end
      object QRMemo1: TQRMemo
        Left = 38
        Top = 500
        Width = 329
        Height = 89
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          235.479166666667
          100.541666666667
          1322.91666666667
          870.479166666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Lines.Strings = (
          'Aplicar 10% sobre o valor da mão-de-obra  (11,71 % do FRETE)'
          ''
          'O resultado correpondenrá ao REEMBOLSO,respeitado como limite'
          ''
          'máximo o valor registrado no campo SALDO')
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape24: TQRShape
        Left = 32
        Top = 630
        Width = 345
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          76.7291666666667
          84.6666666666667
          1666.875
          912.8125)
        Pen.Width = 2
        Shape = qrsRectangle
      end
      object QRLabel17: TQRLabel
        Left = 465
        Top = 2404
        Width = 143
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1230.3125
          6360.58333333333
          378.354166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'NÚMERO DE INSCRIÇÃO'
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
      object QRShape25: TQRShape
        Left = 32
        Top = 658
        Width = 345
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          76.7291666666667
          84.6666666666667
          1740.95833333333
          912.8125)
        Pen.Width = 2
        Shape = qrsRectangle
      end
      object QRShape26: TQRShape
        Left = 32
        Top = 686
        Width = 345
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          76.7291666666667
          84.6666666666667
          1815.04166666667
          912.8125)
        Pen.Width = 2
        Shape = qrsRectangle
      end
      object QRLabel18: TQRLabel
        Left = 38
        Top = 664
        Width = 53
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          100.541666666667
          1756.83333333333
          140.229166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'NO INSS:'
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
      object QRLabel19: TQRLabel
        Left = 38
        Top = 691
        Width = 49
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          100.541666666667
          1828.27083333333
          129.645833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'NO CPF:'
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
      object QRShape27: TQRShape
        Left = 32
        Top = 750
        Width = 345
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          76.7291666666667
          84.6666666666667
          1984.375
          912.8125)
        Pen.Width = 2
        Shape = qrsRectangle
      end
      object QRLabel20: TQRLabel
        Left = 114
        Top = 757
        Width = 174
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          301.625
          2002.89583333333
          460.375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'DOCUMENTO DE IDENTIDADE'
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
      object QRShape28: TQRShape
        Left = 32
        Top = 779
        Width = 169
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          76.7291666666667
          84.6666666666667
          2061.10416666667
          447.145833333333)
        Pen.Width = 2
        Shape = qrsRectangle
      end
      object QRShape29: TQRShape
        Left = 200
        Top = 779
        Width = 177
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          76.7291666666667
          529.166666666667
          2061.10416666667
          468.3125)
        Pen.Width = 2
        Shape = qrsRectangle
      end
      object QRShape30: TQRShape
        Left = 32
        Top = 807
        Width = 169
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          76.7291666666667
          84.6666666666667
          2135.1875
          447.145833333333)
        Pen.Width = 2
        Shape = qrsRectangle
      end
      object QRShape31: TQRShape
        Left = 200
        Top = 807
        Width = 177
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          76.7291666666667
          529.166666666667
          2135.1875
          468.3125)
        Pen.Width = 2
        Shape = qrsRectangle
      end
      object QRLabel21: TQRLabel
        Left = 84
        Top = 785
        Width = 54
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          222.25
          2076.97916666667
          142.875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'NÚMERO'
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
        Left = 236
        Top = 785
        Width = 101
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          624.416666666667
          2076.97916666667
          267.229166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'ORGÃO EMISSOR'
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
      object QRShape32: TQRShape
        Left = 392
        Top = 751
        Width = 312
        Height = 86
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          227.541666666667
          1037.16666666667
          1987.02083333333
          825.5)
        Pen.Width = 2
        Shape = qrsRectangle
      end
      object QRLabel23: TQRLabel
        Left = 514
        Top = 754
        Width = 68
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1359.95833333333
          1994.95833333333
          179.916666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'ASSINATURA'
        Color = clWhite
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
      object QRShape33: TQRShape
        Left = 392
        Top = 855
        Width = 312
        Height = 58
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          153.458333333333
          1037.16666666667
          2262.1875
          825.5)
        Pen.Width = 2
        Shape = qrsRectangle
      end
      object QRLabel24: TQRLabel
        Left = 500
        Top = 859
        Width = 88
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1322.91666666667
          2272.77083333333
          232.833333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'NOME COMPLETO'
        Color = clWhite
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
      object QRShape34: TQRShape
        Left = 32
        Top = 856
        Width = 209
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          76.7291666666667
          84.6666666666667
          2264.83333333333
          552.979166666667)
        Pen.Width = 2
        Shape = qrsRectangle
      end
      object QRShape35: TQRShape
        Left = 240
        Top = 856
        Width = 137
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          76.7291666666667
          635
          2264.83333333333
          362.479166666667)
        Pen.Width = 2
        Shape = qrsRectangle
      end
      object QRShape36: TQRShape
        Left = 32
        Top = 884
        Width = 209
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          76.7291666666667
          84.6666666666667
          2338.91666666667
          552.979166666667)
        Pen.Width = 2
        Shape = qrsRectangle
      end
      object QRShape37: TQRShape
        Left = 240
        Top = 884
        Width = 137
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          76.7291666666667
          635
          2338.91666666667
          362.479166666667)
        Pen.Width = 2
        Shape = qrsRectangle
      end
      object QRLabel25: TQRLabel
        Left = 96
        Top = 863
        Width = 76
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          254
          2283.35416666667
          201.083333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'LOCALIDADE'
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
      object QRLabel26: TQRLabel
        Left = 289
        Top = 863
        Width = 31
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          764.645833333333
          2283.35416666667
          82.0208333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'DATA'
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
      object QRLabel27: TQRLabel
        Left = 386
        Top = 338
        Width = 96
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1021.29166666667
          894.291666666667
          254)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'ESPECIFICAÇÃO'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsUnderline]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel28: TQRLabel
        Left = 386
        Top = 378
        Width = 181
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1021.29166666667
          1000.125
          478.895833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'I  Valor do ServiçoPrestado................'
        Color = clWhite
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
      object QRLabel29: TQRLabel
        Left = 584
        Top = 378
        Width = 14
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1545.16666666667
          1000.125
          37.0416666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'R$'
        Color = clWhite
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
      object QRLabel30: TQRLabel
        Left = 546
        Top = 402
        Width = 14
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1444.625
          1063.625
          37.0416666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'R$'
        Color = clWhite
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
      object QRLabel31: TQRLabel
        Left = 386
        Top = 402
        Width = 61
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1021.29166666667
          1063.625
          161.395833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'II Reembolso'
        Color = clWhite
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
      object QRLabel32: TQRLabel
        Left = 450
        Top = 404
        Width = 118
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.3958333333333
          1190.625
          1068.91666666667
          312.208333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '(10%  de até o salário-base)'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRLabel33: TQRLabel
        Left = 584
        Top = 402
        Width = 14
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1545.16666666667
          1063.625
          37.0416666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'R$'
        Color = clWhite
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
      object QRLabel34: TQRLabel
        Left = 492
        Top = 426
        Width = 74
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1301.75
          1127.125
          195.791666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'SOMA..............'
        Color = clWhite
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
      object QRLabel35: TQRLabel
        Left = 584
        Top = 426
        Width = 14
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1545.16666666667
          1127.125
          37.0416666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'R$'
        Color = clWhite
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
      object QRLabel36: TQRLabel
        Left = 386
        Top = 474
        Width = 77
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1021.29166666667
          1254.125
          203.729166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'DESCONTOS'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsUnderline]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel37: TQRLabel
        Left = 386
        Top = 498
        Width = 66
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1021.29166666667
          1317.625
          174.625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'III            Adto'
        Color = clWhite
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
      object QRLabel38: TQRLabel
        Left = 496
        Top = 498
        Width = 14
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1312.33333333333
          1317.625
          37.0416666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'R$'
        Color = clWhite
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
      object QRLabel39: TQRLabel
        Left = 386
        Top = 522
        Width = 71
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1021.29166666667
          1381.125
          187.854166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'IV         Outros'
        Color = clWhite
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
      object QRLabel40: TQRLabel
        Left = 496
        Top = 522
        Width = 14
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1312.33333333333
          1381.125
          37.0416666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'R$'
        Color = clWhite
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
      object QRLabel41: TQRLabel
        Left = 386
        Top = 546
        Width = 67
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1021.29166666667
          1444.625
          177.270833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'V            IRRF'
        Color = clWhite
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
      object QRLabel42: TQRLabel
        Left = 496
        Top = 546
        Width = 14
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1312.33333333333
          1444.625
          37.0416666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'R$'
        Color = clWhite
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
      object QRLabel43: TQRLabel
        Left = 386
        Top = 570
        Width = 86
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1021.29166666667
          1508.125
          227.541666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'VI    SEST/SENAT'
        Color = clWhite
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
      object QRLabel44: TQRLabel
        Left = 386
        Top = 594
        Width = 66
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1021.29166666667
          1571.625
          174.625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'VII          INSS'
        Color = clWhite
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
      object QRLabel45: TQRLabel
        Left = 496
        Top = 570
        Width = 14
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1312.33333333333
          1508.125
          37.0416666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'R$'
        Color = clWhite
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
      object QRLabel46: TQRLabel
        Left = 496
        Top = 594
        Width = 14
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1312.33333333333
          1571.625
          37.0416666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'R$'
        Color = clWhite
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
      object QRLabel47: TQRLabel
        Left = 386
        Top = 618
        Width = 222
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1021.29166666667
          1635.125
          587.375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'VALOR LÍQUIDO...............................................'
        Color = clWhite
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
      object QRShape46: TQRShape
        Left = 510
        Top = 630
        Width = 100
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.8125
          1349.375
          1666.875
          264.583333333333)
        Shape = qrsHorLine
      end
      object lbTotal1: TQRLabel
        Left = 576
        Top = 232
        Width = 113
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1524
          613.833333333333
          298.979166666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '0,00'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object lbValorPrestado: TQRLabel
        Left = 600
        Top = 378
        Width = 97
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1587.5
          1000.125
          256.645833333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'R$'
        Color = clWhite
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
      object QRShape38: TQRShape
        Left = 598
        Top = 389
        Width = 100
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.8125
          1582.20833333333
          1029.22916666667
          264.583333333333)
        Shape = qrsHorLine
      end
      object QRLabel50: TQRLabel
        Left = 600
        Top = 402
        Width = 97
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1587.5
          1063.625
          256.645833333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'R$'
        Color = clWhite
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
      object QRShape39: TQRShape
        Left = 598
        Top = 414
        Width = 100
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.8125
          1582.20833333333
          1095.375
          264.583333333333)
        Shape = qrsHorLine
      end
      object lbValorPrestado2: TQRLabel
        Left = 600
        Top = 426
        Width = 97
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1587.5
          1127.125
          256.645833333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'R$'
        Color = clWhite
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
      object QRShape40: TQRShape
        Left = 598
        Top = 438
        Width = 100
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.8125
          1582.20833333333
          1158.875
          264.583333333333)
        Shape = qrsHorLine
      end
      object lbVlrAdiantamento: TQRLabel
        Left = 512
        Top = 498
        Width = 97
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1354.66666666667
          1317.625
          256.645833333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'R$'
        Color = clWhite
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
      object QRShape41: TQRShape
        Left = 510
        Top = 510
        Width = 100
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.8125
          1349.375
          1349.375
          264.583333333333)
        Shape = qrsHorLine
      end
      object lbVlrOutros: TQRLabel
        Left = 512
        Top = 522
        Width = 97
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1354.66666666667
          1381.125
          256.645833333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'R$'
        Color = clWhite
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
      object QRShape42: TQRShape
        Left = 510
        Top = 534
        Width = 100
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.8125
          1349.375
          1412.875
          264.583333333333)
        Shape = qrsHorLine
      end
      object lbIRRF: TQRLabel
        Left = 512
        Top = 546
        Width = 97
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1354.66666666667
          1444.625
          256.645833333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'R$'
        Color = clWhite
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
      object QRShape43: TQRShape
        Left = 510
        Top = 558
        Width = 100
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.8125
          1349.375
          1476.375
          264.583333333333)
        Shape = qrsHorLine
      end
      object lbSESTSENAT: TQRLabel
        Left = 512
        Top = 570
        Width = 97
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1354.66666666667
          1508.125
          256.645833333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'R$'
        Color = clWhite
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
      object QRShape44: TQRShape
        Left = 510
        Top = 582
        Width = 100
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.8125
          1349.375
          1539.875
          264.583333333333)
        Shape = qrsHorLine
      end
      object lbINSS: TQRLabel
        Left = 512
        Top = 594
        Width = 97
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1354.66666666667
          1571.625
          256.645833333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'R$'
        Color = clWhite
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
      object QRShape45: TQRShape
        Left = 510
        Top = 606
        Width = 100
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.8125
          1349.375
          1603.375
          264.583333333333)
        Shape = qrsHorLine
      end
      object lbTotal2: TQRLabel
        Left = 615
        Top = 618
        Width = 85
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1627.1875
          1635.125
          224.895833333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'R$'
        Color = clWhite
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
      object QRShape47: TQRShape
        Left = 616
        Top = 630
        Width = 84
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.8125
          1629.83333333333
          1666.875
          222.25)
        Shape = qrsHorLine
      end
      object QRDBText4: TQRDBText
        Left = 400
        Top = 884
        Width = 297
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1058.33333333333
          2338.91666666667
          785.8125)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qrTransp
        DataField = 'MOT_NOME'
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
        Left = 40
        Top = 892
        Width = 193
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          105.833333333333
          2360.08333333333
          510.645833333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qrParametro
        DataField = 'MUNICIPIO'
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
      object lbData: TQRLabel
        Left = 248
        Top = 892
        Width = 121
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          656.166666666667
          2360.08333333333
          320.145833333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'lbData'
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
      object QRDBText6: TQRDBText
        Left = 40
        Top = 812
        Width = 153
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          105.833333333333
          2148.41666666667
          404.8125)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qrTransp
        DataField = 'MOT_RG'
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
        Left = 208
        Top = 812
        Width = 153
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          550.333333333333
          2148.41666666667
          404.8125)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qrTransp
        DataField = 'MOT_RG_ORGAO'
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
      object QRDBText8: TQRDBText
        Left = 152
        Top = 664
        Width = 153
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          402.166666666667
          1756.83333333333
          404.8125)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qrTransp
        DataField = 'PIS'
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
      object QRDBText9: TQRDBText
        Left = 152
        Top = 692
        Width = 153
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          402.166666666667
          1830.91666666667
          404.8125)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qrTransp
        DataField = 'MOT_CPF'
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
      Top = 1064
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
      BandType = rbDetail
      object QRDBText1: TQRDBText
        Left = 32
        Top = 8
        Width = 61
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          84.6666666666667
          21.1666666666667
          161.395833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = frmConciliacaoFrete.cdsConcilia
        DataField = 'ADIANT_T'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
  end
  object qrParametro: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select * from parametro A INNER JOIN TB_IBGE B ON A.IBGE_ID = B.' +
        'ID')
    Left = 854
    Top = 46
    object qrParametroPAR_ID: TAutoIncField
      FieldName = 'PAR_ID'
      ReadOnly = True
    end
    object qrParametroPAR_NOME: TStringField
      FieldName = 'PAR_NOME'
      Size = 30
    end
    object qrParametroPAR_RAZA: TStringField
      FieldName = 'PAR_RAZA'
      Size = 50
    end
    object qrParametroPAR_CNPJ: TStringField
      FieldName = 'PAR_CNPJ'
      FixedChar = True
      Size = 15
      Transliterate = False
    end
    object qrParametroPAR_INSC: TStringField
      FieldName = 'PAR_INSC'
      Size = 15
    end
    object qrParametroPAR_ENDERECO: TStringField
      FieldName = 'PAR_ENDERECO'
      Size = 50
    end
    object qrParametroPAR_ENDERECO_COMPL: TStringField
      FieldName = 'PAR_ENDERECO_COMPL'
    end
    object qrParametroPAR_ENDERECO_BAIRRO: TStringField
      FieldName = 'PAR_ENDERECO_BAIRRO'
      Size = 40
    end
    object qrParametroPAR_UF_SIGLA: TStringField
      FieldName = 'PAR_UF_SIGLA'
      Size = 2
    end
    object qrParametroPAR_CEP: TStringField
      FieldName = 'PAR_CEP'
      Size = 8
    end
    object qrParametroPAR_TEL: TStringField
      FieldName = 'PAR_TEL'
      Size = 11
    end
    object qrParametroPAR_FAX: TStringField
      FieldName = 'PAR_FAX'
      Size = 11
    end
    object qrParametroPAR_EMAIL: TStringField
      FieldName = 'PAR_EMAIL'
      Size = 60
    end
    object qrParametroAR_ID: TIntegerField
      FieldName = 'AR_ID'
    end
    object qrParametroMUN_ID: TIntegerField
      FieldName = 'MUN_ID'
    end
    object qrParametroAR_ID_OPER: TIntegerField
      FieldName = 'AR_ID_OPER'
    end
    object qrParametroULT_TAG: TIntegerField
      FieldName = 'ULT_TAG'
    end
    object qrParametroPALLET_M2: TFloatField
      FieldName = 'PALLET_M2'
    end
    object qrParametroCO_SER_ID: TIntegerField
      FieldName = 'CO_SER_ID'
    end
    object qrParametroEN_SER_ID: TIntegerField
      FieldName = 'EN_SER_ID'
    end
    object qrParametroFLAGTELA: TStringField
      FieldName = 'FLAGTELA'
      Size = 1
    end
    object qrParametroFLAGTELA2: TStringField
      FieldName = 'FLAGTELA2'
      Size = 1
    end
    object qrParametroFLAGTELA3: TStringField
      FieldName = 'FLAGTELA3'
      Size = 1
    end
    object qrParametroCLIN_ID: TIntegerField
      FieldName = 'CLIN_ID'
    end
    object qrParametroVERSAO: TStringField
      FieldName = 'VERSAO'
      Size = 50
    end
    object qrParametroFLAGTELA_USUARIO: TStringField
      FieldName = 'FLAGTELA_USUARIO'
    end
    object qrParametroFLAGTELA_DATA: TDateTimeField
      FieldName = 'FLAGTELA_DATA'
    end
    object qrParametroFLAGTELA2_USUARIO: TStringField
      FieldName = 'FLAGTELA2_USUARIO'
    end
    object qrParametroFLAGTELA2_DATA: TDateTimeField
      FieldName = 'FLAGTELA2_DATA'
    end
    object qrParametroPORTA: TIntegerField
      FieldName = 'PORTA'
    end
    object qrParametroHOST: TStringField
      FieldName = 'HOST'
      Size = 30
    end
    object qrParametroCAMINHO: TStringField
      FieldName = 'CAMINHO'
      Size = 40
    end
    object qrParametroULT_FATURA: TIntegerField
      FieldName = 'ULT_FATURA'
    end
    object qrParametroULT_NF: TIntegerField
      FieldName = 'ULT_NF'
    end
    object qrParametroULT_CONH: TIntegerField
      FieldName = 'ULT_CONH'
    end
    object qrParametroAR_ID_AVARIA: TIntegerField
      FieldName = 'AR_ID_AVARIA'
    end
    object qrParametroULT_MINUTA: TIntegerField
      FieldName = 'ULT_MINUTA'
    end
    object qrParametroULT_NFPROV: TIntegerField
      FieldName = 'ULT_NFPROV'
    end
    object qrParametroULT_CONHPROV: TIntegerField
      FieldName = 'ULT_CONHPROV'
    end
    object qrParametroULT_MINUTAPROV: TIntegerField
      FieldName = 'ULT_MINUTAPROV'
    end
    object qrParametroCAMINHO_MATRICIAL: TStringField
      FieldName = 'CAMINHO_MATRICIAL'
      Size = 40
    end
    object qrParametroCAMINHO_MATRICIAL_FATURA: TStringField
      FieldName = 'CAMINHO_MATRICIAL_FATURA'
      Size = 40
    end
    object qrParametroCAMINHO_MATRICIAL_CONH: TStringField
      FieldName = 'CAMINHO_MATRICIAL_CONH'
      Size = 40
    end
    object qrParametroDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object qrParametroConnectionString: TStringField
      FieldName = 'ConnectionString'
      Size = 1000
    end
    object qrParametroIBGE_ID: TIntegerField
      FieldName = 'IBGE_ID'
    end
    object qrParametroNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object qrParametroLOGO: TBlobField
      FieldName = 'LOGO'
      BlobType = ftBlob
    end
    object qrParametroNF_SERVICO: TIntegerField
      FieldName = 'NF_SERVICO'
    end
    object qrParametroALIQ_ISS: TFloatField
      FieldName = 'ALIQ_ISS'
    end
    object qrParametroNF_SERVICO_PROV: TIntegerField
      FieldName = 'NF_SERVICO_PROV'
    end
    object qrParametroALIQ_ISS_NFS_OE: TFloatField
      FieldName = 'ALIQ_ISS_NFS_OE'
    end
    object qrParametroDATA_FRETE_FECHAMENTO: TDateTimeField
      FieldName = 'DATA_FRETE_FECHAMENTO'
    end
    object qrParametroID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object qrParametroCOD_UF: TIntegerField
      FieldName = 'COD_UF'
    end
    object qrParametroUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object qrParametroCOD_MUN: TIntegerField
      FieldName = 'COD_MUN'
    end
    object qrParametroMUNICIPIO: TStringField
      FieldName = 'MUNICIPIO'
      Size = 250
    end
  end
  object qrTransp: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <
      item
        Name = 'TRANS_ID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select '
      #9'*'
      'from TRANSPORTADORA a inner join TRANSPORTADORA_MOTORISTA b'
      'on a.TRANS_ID = b.TRANS_ID'
      'WHERE a.TRANS_ID = :TRANS_ID')
    Left = 848
    Top = 136
    object qrTranspTRANS_ID: TAutoIncField
      FieldName = 'TRANS_ID'
      ReadOnly = True
    end
    object qrTranspTRANS_FANTASIA: TStringField
      FieldName = 'TRANS_FANTASIA'
      Size = 40
    end
    object qrTranspTRANS_RAZA: TStringField
      FieldName = 'TRANS_RAZA'
      Size = 60
    end
    object qrTranspTRANS_CNPJ: TStringField
      FieldName = 'TRANS_CNPJ'
      Size = 15
    end
    object qrTranspTRANS_INSCRICAO: TStringField
      FieldName = 'TRANS_INSCRICAO'
      Size = 15
    end
    object qrTranspTRANS_ENDERECO: TStringField
      FieldName = 'TRANS_ENDERECO'
      Size = 50
    end
    object qrTranspTRANS_ENDERECO_COMPL: TStringField
      FieldName = 'TRANS_ENDERECO_COMPL'
    end
    object qrTranspTRANS_ENDERECO_BAIRRO: TStringField
      FieldName = 'TRANS_ENDERECO_BAIRRO'
      Size = 40
    end
    object qrTranspTRANS_MUNICIPIO: TStringField
      FieldName = 'TRANS_MUNICIPIO'
      Size = 40
    end
    object qrTranspTRANS_CEP: TStringField
      FieldName = 'TRANS_CEP'
      Size = 8
    end
    object qrTranspUF_SIGLA: TStringField
      FieldName = 'UF_SIGLA'
      Size = 2
    end
    object qrTranspTRANS_TEL: TStringField
      FieldName = 'TRANS_TEL'
      Size = 11
    end
    object qrTranspTRANS_TEL2: TStringField
      FieldName = 'TRANS_TEL2'
      Size = 11
    end
    object qrTranspTRANS_FAX: TStringField
      FieldName = 'TRANS_FAX'
      Size = 11
    end
    object qrTranspTRANS_EMAIL: TStringField
      FieldName = 'TRANS_EMAIL'
      Size = 60
    end
    object qrTranspTRANS_CONTATO: TStringField
      FieldName = 'TRANS_CONTATO'
      Size = 30
    end
    object qrTranspTRANS_FLAG: TStringField
      FieldName = 'TRANS_FLAG'
      Size = 1
    end
    object qrTranspCON_CODI: TStringField
      FieldName = 'CON_CODI'
      Size = 6
    end
    object qrTranspMUN_ID: TIntegerField
      FieldName = 'MUN_ID'
    end
    object qrTranspTRANS_PESSOA: TStringField
      FieldName = 'TRANS_PESSOA'
      FixedChar = True
      Size = 1
    end
    object qrTranspTRANS_REDES: TStringField
      FieldName = 'TRANS_REDES'
      Size = 1
    end
    object qrTranspPIS: TStringField
      FieldName = 'PIS'
      Size = 50
    end
    object qrTranspIBGE_ID: TIntegerField
      FieldName = 'IBGE_ID'
    end
    object qrTranspMOT_ID: TAutoIncField
      FieldName = 'MOT_ID'
      ReadOnly = True
    end
    object qrTranspTRANS_ID_1: TIntegerField
      FieldName = 'TRANS_ID_1'
    end
    object qrTranspMOT_NOME: TStringField
      FieldName = 'MOT_NOME'
      Size = 40
    end
    object qrTranspMOT_ENDERECO: TStringField
      FieldName = 'MOT_ENDERECO'
      Size = 50
    end
    object qrTranspMOT_MUNICIPIO: TStringField
      FieldName = 'MOT_MUNICIPIO'
      Size = 40
    end
    object qrTranspMOT_CEP: TStringField
      FieldName = 'MOT_CEP'
      Size = 8
    end
    object qrTranspUF_SIGLA_1: TStringField
      FieldName = 'UF_SIGLA_1'
      Size = 2
    end
    object qrTranspMOT_CPF: TStringField
      FieldName = 'MOT_CPF'
      Size = 15
    end
    object qrTranspMOT_RG: TStringField
      FieldName = 'MOT_RG'
      Size = 15
    end
    object qrTranspMOT_DT_NASC: TDateTimeField
      FieldName = 'MOT_DT_NASC'
    end
    object qrTranspMOT_RG_ORGAO: TStringField
      FieldName = 'MOT_RG_ORGAO'
      Size = 6
    end
    object qrTranspMOT_CNH: TStringField
      FieldName = 'MOT_CNH'
      Size = 15
    end
    object qrTranspMOT_CNH_CATEG: TStringField
      FieldName = 'MOT_CNH_CATEG'
      Size = 3
    end
    object qrTranspMOT_CNH_VALID: TDateTimeField
      FieldName = 'MOT_CNH_VALID'
    end
    object qrTranspMOT_PAI: TStringField
      FieldName = 'MOT_PAI'
      Size = 40
    end
    object qrTranspMOT_MAE: TStringField
      FieldName = 'MOT_MAE'
      Size = 40
    end
    object qrTranspMOT_TEL_PESS: TStringField
      FieldName = 'MOT_TEL_PESS'
      Size = 11
    end
    object qrTranspMOT_TEL_COM: TStringField
      FieldName = 'MOT_TEL_COM'
      Size = 11
    end
    object qrTranspMOT_PAMCARD: TStringField
      FieldName = 'MOT_PAMCARD'
      Size = 1
    end
    object qrTranspMOT_PAMCARD_VIG: TDateTimeField
      FieldName = 'MOT_PAMCARD_VIG'
    end
    object qrTranspMOT_ENDERECO_COMPL: TStringField
      FieldName = 'MOT_ENDERECO_COMPL'
    end
    object qrTranspMOT_ENDERECO_BAIRRO: TStringField
      FieldName = 'MOT_ENDERECO_BAIRRO'
      Size = 40
    end
    object qrTranspVEIC_ID: TIntegerField
      FieldName = 'VEIC_ID'
    end
    object qrTranspMOT_VEIC_PLACA: TStringField
      FieldName = 'MOT_VEIC_PLACA'
      Size = 8
    end
    object qrTranspMOT_VEIC_CIDADE: TStringField
      FieldName = 'MOT_VEIC_CIDADE'
      Size = 50
    end
    object qrTranspMOT_VEIC_UF_SIGLA: TStringField
      FieldName = 'MOT_VEIC_UF_SIGLA'
      Size = 2
    end
    object qrTranspMOT_VEIC_MARCA: TStringField
      FieldName = 'MOT_VEIC_MARCA'
      Size = 50
    end
    object qrTranspMOT_VEIC_ANO: TStringField
      FieldName = 'MOT_VEIC_ANO'
      Size = 4
    end
    object qrTranspMOT_VEIC_MODELO: TStringField
      FieldName = 'MOT_VEIC_MODELO'
      Size = 40
    end
    object qrTranspMOT_VEIC_COR: TStringField
      FieldName = 'MOT_VEIC_COR'
    end
    object qrTranspMOT_VEIC_CHASSI: TStringField
      FieldName = 'MOT_VEIC_CHASSI'
      Size = 60
    end
    object qrTranspMOT_CARRETA_PLACA: TStringField
      FieldName = 'MOT_CARRETA_PLACA'
      Size = 8
    end
    object qrTranspMOT_CARRETA_CIDADE: TStringField
      FieldName = 'MOT_CARRETA_CIDADE'
      Size = 50
    end
    object qrTranspMOT_CARRETA_UF_SIGLA: TStringField
      FieldName = 'MOT_CARRETA_UF_SIGLA'
      Size = 2
    end
    object qrTranspMOT_CARRETA_MARCA: TStringField
      FieldName = 'MOT_CARRETA_MARCA'
      Size = 50
    end
    object qrTranspMOT_CARRETA_ANO: TStringField
      FieldName = 'MOT_CARRETA_ANO'
      Size = 4
    end
    object qrTranspMOT_CARRETA_MODELO: TStringField
      FieldName = 'MOT_CARRETA_MODELO'
      Size = 40
    end
    object qrTranspMOT_CARRETA_COR: TStringField
      FieldName = 'MOT_CARRETA_COR'
    end
    object qrTranspMOT_CARRETA_CHASSI: TStringField
      FieldName = 'MOT_CARRETA_CHASSI'
      Size = 60
    end
    object qrTranspMOT_PAMC_NUM: TStringField
      FieldName = 'MOT_PAMC_NUM'
      Size = 15
    end
    object qrTranspMOT_NUMPIS: TStringField
      FieldName = 'MOT_NUMPIS'
      Size = 15
    end
    object qrTranspMOT_CARRETA_COMPR: TFloatField
      FieldName = 'MOT_CARRETA_COMPR'
    end
    object qrTranspMOT_CARRETA_LARG: TFloatField
      FieldName = 'MOT_CARRETA_LARG'
    end
    object qrTranspMOT_CARRETA_ALT: TFloatField
      FieldName = 'MOT_CARRETA_ALT'
    end
    object qrTranspMOT_CARRETA_M3: TFloatField
      FieldName = 'MOT_CARRETA_M3'
    end
    object qrTranspMOT_NEXTEL: TStringField
      FieldName = 'MOT_NEXTEL'
      Size = 50
    end
    object qrTranspMOT_EQUIP: TStringField
      FieldName = 'MOT_EQUIP'
      Size = 50
    end
    object qrTranspRENAVAN: TStringField
      FieldName = 'RENAVAN'
      Size = 15
    end
    object qrTranspRNTRC: TStringField
      FieldName = 'RNTRC'
      Size = 10
    end
  end
end
