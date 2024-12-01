object FRelRatEmp: TFRelRatEmp
  Left = 0
  Top = 7
  Width = 800
  Height = 529
  Caption = 
    'Sistema de Controle Financeiro - Relatório de Rateios por Empres' +
    'as'
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
    Left = -8
    Top = 16
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
    object QRSCont: TQRSubDetail
      Left = 38
      Top = 175
      Width = 718
      Height = 26
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
        68.7916666666667
        1899.70833333333)
      Master = QuickRep1
      DataSet = Q_CON
      PrintBefore = False
      PrintIfEmpty = True
      object QRLabel26: TQRLabel
        Left = 7
        Top = 3
        Width = 108
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          18.5208333333333
          7.9375
          285.75)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Conta Gerencial:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText21: TQRDBText
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
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel27: TQRLabel
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
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText22: TQRDBText
        Left = 204
        Top = 4
        Width = 71
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
          187.854166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Q_CON
        DataField = 'CON_DESC'
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
      object QRLabel28: TQRLabel
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
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText23: TQRDBText
        Left = 420
        Top = 4
        Width = 45
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
          119.0625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Q_CON
        DataField = 'CLASS'
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
      object QRShape4: TQRShape
        Left = 0
        Top = 24
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
          63.5
          1957.91666666667)
        Pen.Width = 2
        Shape = qrsHorLine
      end
    end
    object QRSSub: TQRSubDetail
      Left = 38
      Top = 201
      Width = 718
      Height = 45
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
        119.0625
        1899.70833333333)
      Master = QRSCont
      DataSet = Q_SUB
      PrintBefore = False
      PrintIfEmpty = True
      object QRLabel29: TQRLabel
        Left = 56
        Top = 4
        Width = 71
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          148.166666666667
          10.5833333333333
          187.854166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Sub Conta:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel30: TQRLabel
        Left = 57
        Top = 23
        Width = 55
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          150.8125
          60.8541666666667
          145.520833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Dt. Débito'
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
      object QRDBText31: TQRDBText
        Left = 139
        Top = 3
        Width = 77
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          367.770833333333
          7.9375
          203.729166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Q_SUB
        DataField = 'DESCRICAO'
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
      object QRLabel31: TQRLabel
        Left = 131
        Top = 23
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
          60.8541666666667
          42.3333333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Fil.'
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
      object QRLabel32: TQRLabel
        Left = 165
        Top = 23
        Width = 40
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          436.5625
          60.8541666666667
          105.833333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Ordem'
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
      object QRLabel33: TQRLabel
        Left = 220
        Top = 23
        Width = 59
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          582.083333333333
          60.8541666666667
          156.104166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Descrição'
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
      object QRLabel34: TQRLabel
        Left = 400
        Top = 23
        Width = 69
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          1058.33333333333
          60.8541666666667
          182.5625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Descrição 2'
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
      object QRLabel35: TQRLabel
        Left = 584
        Top = 23
        Width = 10
        Height = 16
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          1545.16666666667
          60.8541666666667
          26.4583333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '%'
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
      object QRLabel36: TQRLabel
        Left = 624
        Top = 23
        Width = 31
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          1651
          60.8541666666667
          82.0208333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Valor'
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
      object QRShape5: TQRShape
        Left = 0
        Top = 19
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
          50.2708333333333
          1957.91666666667)
        Shape = qrsHorLine
      end
    end
    object QRSIte: TQRSubDetail
      Left = 38
      Top = 246
      Width = 718
      Height = 24
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
        63.5
        1899.70833333333)
      Master = QRSSub
      DataSet = Q_ITE
      PrintBefore = False
      PrintIfEmpty = True
      object QRDBText1: TQRDBText
        Left = 131
        Top = 3
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
          7.9375
          50.2708333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Q_ITE
        DataField = 'FILIAL'
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
      object QRDBText2: TQRDBText
        Left = 219
        Top = 3
        Width = 175
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          579.4375
          7.9375
          463.020833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Q_ITE
        DataField = 'HISTORICO'
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
        Left = 400
        Top = 3
        Width = 179
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1058.33333333333
          7.9375
          473.604166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Q_ITE
        DataField = 'DESCRICAO2'
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
        Left = 56
        Top = 3
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
          7.9375
          166.6875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Q_ITE
        DataField = 'DATADEBITO'
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
        Left = 164
        Top = 3
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
          7.9375
          129.645833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Q_ITE
        DataField = 'DOCUMENTO'
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
        Left = 584
        Top = 3
        Width = 26
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1545.16666666667
          7.9375
          68.7916666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Q_ITE
        DataField = 'PERCENTUAL'
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
        Left = 623
        Top = 3
        Width = 82
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1648.35416666667
          7.9375
          216.958333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Q_ITE
        DataField = 'VALOR'
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
      Top = 311
      Width = 718
      Height = 26
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
        68.7916666666667
        1899.70833333333)
      BandType = rbGroupHeader
      object QRLabel15: TQRLabel
        Left = 56
        Top = 3
        Width = 60
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          148.166666666667
          7.9375
          158.75)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Empresa:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText7: TQRDBText
        Left = 128
        Top = 4
        Width = 139
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          338.666666666667
          10.5833333333333
          367.770833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Q_EMP
        DataField = 'FIL_DESC'
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
      object QRShape3: TQRShape
        Left = 0
        Top = 23
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
          60.8541666666667
          1957.91666666667)
        Shape = qrsHorLine
      end
    end
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
        Left = 226
        Top = 34
        Width = 266
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          597.958333333333
          89.9583333333333
          703.791666666667)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'Relatório de Rateios por Empresas'
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
    object QRBand3: TQRBand
      Left = 38
      Top = 270
      Width = 718
      Height = 41
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clScrollBar
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        108.479166666667
        1899.70833333333)
      BandType = rbSummary
      object QRLabel20: TQRLabel
        Left = 623
        Top = 2
        Width = 71
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1648.35416666667
          5.29166666666667
          187.854166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Valor Total'
        Color = clScrollBar
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
      object QRExpr2: TQRExpr
        Left = 623
        Top = 20
        Width = 102
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1648.35416666667
          52.9166666666667
          269.875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clScrollBar
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'Q_TOT.VALOR'
        Mask = '###,###,##0.00'
        FontSize = 10
      end
    end
  end
  object Q_SUB: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    DataSource = DS_CON
    SQL.Strings = (
      'SELECT '#9#9'DISTINCT '
      #9#9'SUB.CON_DESC,'
      #9#9'CSU.CON_CODI,'
      #9#9'BAN.BAN_CODEMPR FIL_CODI'
      'FROM '#9#9'CPAIPACON  '#9'CSU,'
      #9#9'CPAPAGA'#9'CPG,'
      #9#9'CPAIPAG'#9#9'IPA,'
      #9#9'CPABANC'#9'BAN,'
      #9#9'CPACONT'#9'SUB'
      'WHERE'#9#9'CSU.CON_CODI = SUB.CON_CODI'
      'AND'#9#9'CPG.NUMERO'#9'= IPA.NUMERO'
      'AND'#9#9'CPG.NUMERO     = CSU.NUMERO'
      'AND'#9#9'CPG.CONTAGERENCIAL    = :CON_CODI'
      'AND'#9#9' BAN.BAN_CODEMPR = :FIL_CODI'
      'AND'#9#9' CPG.BANCOCONTA = BAN.BAN_CODI')
    ValidateWithMask = True
    Left = 413
    Top = 353
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CON_CODI'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'FIL_CODI'
        ParamType = ptUnknown
      end>
    object Q_SUBCON_DESC: TStringField
      FieldName = 'CON_DESC'
      Origin = 'FINANCEIRO.CPACONT.CON_DESC'
      FixedChar = True
      Size = 40
    end
    object Q_SUBFIL_CODI: TStringField
      FieldName = 'FIL_CODI'
      Origin = 'FINANCEIRO.CPABANC.BAN_CODEMPR'
      FixedChar = True
    end
    object Q_SUBCON_CODI: TStringField
      FieldName = 'CON_CODI'
      Origin = 'FINANCEIRO.CPAIPACON.CON_CODI'
      FixedChar = True
      Size = 50
    end
  end
  object DS_SUB: TwwDataSource
    DataSet = Q_SUB
    Left = 461
    Top = 353
  end
  object Q_CON: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    DataSource = DS_EMP
    SQL.Strings = (
      'SELECT'#9'DISTINCT CP.CON_CODI,'
      #9#9' CP.CON_DESC,'
      #9#9' CASE WHEN CP.CON_OPER = '#39'F'#39' THEN '#39'FINANCEIRA'#39
      #9'     '#9' WHEN CP.CON_OPER = '#39'O'#39' THEN '#39'OPERACIONAL'#39
      #9'     '#9' WHEN CP.CON_OPER = '#39'N'#39' THEN '#39'NÃO OPERACIONAL'#39
      #9#9' END  CLASS,'
      #9#9' BAN.BAN_CODEMPR FIL_CODI'
      'FROM'#9#9' CPAPAGA  CPG,'
      #9#9' CPAIPAG  IPA,'
      #9#9' CPACONT  CP,'
      #9#9' CPABANC  BAN ,'
      #9#9' CPAIPACON CSU'
      'WHERE'#9#9' CPG.NUMERO = IPA.NUMERO'
      'AND'#9#9' CSU.NUMERO = CPG.NUMERO'
      'AND'#9#9' CPG.CONTAGERENCIAL = CP.CON_CODI'
      'AND'#9#9' CPG.BANCOCONTA = BAN.BAN_CODI'
      'AND'#9#9' BAN.BAN_CODEMPR = :FIL_CODI')
    ValidateWithMask = True
    Left = 301
    Top = 353
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'FIL_CODI'
        ParamType = ptUnknown
      end>
    object Q_CONCON_DESC: TStringField
      FieldName = 'CON_DESC'
      Origin = 'FINANCEIRO.CPACONT.CON_DESC'
      FixedChar = True
      Size = 40
    end
    object Q_CONCLASS: TStringField
      FieldName = 'CLASS'
      FixedChar = True
      Size = 15
    end
    object Q_CONCON_CODI: TStringField
      FieldName = 'CON_CODI'
      FixedChar = True
      Size = 50
    end
    object Q_CONFIL_CODI: TStringField
      FieldName = 'FIL_CODI'
      FixedChar = True
    end
  end
  object DS_CON: TwwDataSource
    DataSet = Q_CON
    Left = 349
    Top = 353
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
  object Q_ITE: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    DataSource = DS_SUB
    SQL.Strings = (
      'SELECT '#9#9'CSU.VALOR,'
      #9#9'IPA.DATADEBITO,'
      #9#9'IPA.DOCUMENTO,'
      #9#9'CPG.HISTORICO,'
      #9#9'CPG.DESCRICAO2,'
      #9#9'CPG.FILIAL,'
      #9#9'BAN.BAN_CODEMPR FIL_CODI'
      'FROM '#9#9'CPAPAGA'#9'CPG,'
      #9#9'CPAIPAG '#9'IPA,'
      #9#9'CPAIPACON  '#9'CSU,'
      #9#9'CPABANC'#9'BAN'
      'WHERE'#9#9'CPG.NUMERO = IPA.NUMERO'
      'AND'#9#9'CPG.NUMERO = CSU.NUMERO'
      'AND'#9#9'CSU.CON_CODI = :CON_CODI'
      'AND'#9#9'BAN.BAN_CODEMPR = :FIL_CODI'
      'AND'#9#9'CPG.BANCOCONTA = BAN.BAN_CODI')
    ValidateWithMask = True
    Left = 533
    Top = 353
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CON_CODI'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'FIL_CODI'
        ParamType = ptUnknown
      end>
    object Q_ITEDATADEBITO: TDateTimeField
      FieldName = 'DATADEBITO'
    end
    object Q_ITEDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      FixedChar = True
      Size = 15
    end
    object Q_ITEFILIAL: TStringField
      FieldName = 'FILIAL'
      FixedChar = True
      Size = 3
    end
    object Q_ITEHISTORICO: TStringField
      FieldName = 'HISTORICO'
      FixedChar = True
      Size = 50
    end
    object Q_ITEDESCRICAO2: TStringField
      FieldName = 'DESCRICAO2'
      FixedChar = True
      Size = 25
    end
    object Q_ITEFIL_CODI: TStringField
      FieldName = 'FIL_CODI'
      FixedChar = True
    end
    object Q_ITEVALOR: TFloatField
      FieldName = 'VALOR'
    end
  end
  object Q_TOT: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    DataSource = DS_EMP
    SQL.Strings = (
      'SELECT '#9#9'SUM(CSU.VALOR) VALOR'
      'FROM '#9#9'CPAPAGA'#9'CPG,'
      #9#9'CPAIPAG  '#9'IPA,'
      #9#9'CPABANC  '#9'BAN,'
      #9#9'CPAIPACON'#9'CSU'
      'WHERE'#9#9'CPG.NUMERO = IPA.NUMERO'
      'AND'#9#9'CSU.NUMERO = CPG.NUMERO'
      'AND'#9#9'CPG.BANCOCONTA = BAN.BAN_CODI'
      'AND'#9#9'BAN.BAN_CODEMPR = :FIL_CODI')
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
end
