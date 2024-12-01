object FRelPagtos: TFRelPagtos
  Left = 3
  Top = 3
  Width = 931
  Height = 610
  Caption = 'Relatório de Contas a Pagar'
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
  object RelPagtos: TQuickRep
    Left = 0
    Top = 8
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    BeforePrint = RelPagtosBeforePrint
    DataSet = Q_RECE
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
      Height = 154
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
        407.458333333333
        1899.70833333333)
      BandType = rbPageHeader
      object QRShape1: TQRShape
        Left = 0
        Top = 0
        Width = 718
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.8125
          0
          0
          1899.70833333333)
        Pen.Width = 2
        Shape = qrsHorLine
      end
      object QRLabel1: TQRLabel
        Left = 239
        Top = 13
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
          34.3958333333333
          635)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
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
        Left = 118
        Top = 38
        Width = 490
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.8541666666667
          312.208333333333
          100.541666666667
          1296.45833333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Relatório de Contas a Pagar'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        OnPrint = QRLabel2Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel5: TQRLabel
        Left = 628
        Top = 68
        Width = 36
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1661.58333333333
          179.916666666667
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
      object QRLabel4: TQRLabel
        Left = 628
        Top = 51
        Width = 36
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1661.58333333333
          134.9375
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
      object QRLabel3: TQRLabel
        Left = 628
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
          1661.58333333333
          92.6041666666667
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
      object QRSysData1: TQRSysData
        Left = 668
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
          1767.41666666667
          92.6041666666667
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
        Left = 668
        Top = 51
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1767.41666666667
          134.9375
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
        Left = 668
        Top = 68
        Width = 46
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1767.41666666667
          179.916666666667
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
        Top = 129
        Width = 718
        Height = 8
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          21.1666666666667
          0
          341.3125
          1899.70833333333)
        Pen.Width = 2
        Shape = qrsHorLine
      end
      object QRLabel8: TQRLabel
        Left = 3
        Top = 135
        Width = 218
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          7.9375
          357.1875
          576.791666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Razão Social - Histórico - Descrição Opc.'
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
      object QRLabel11: TQRLabel
        Left = 291
        Top = 135
        Width = 46
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          769.9375
          357.1875
          121.708333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Nº Título'
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
      object QRLabel15: TQRLabel
        Left = 351
        Top = 135
        Width = 48
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          928.6875
          357.1875
          127)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Emissão'
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
      object QRShape3: TQRShape
        Left = 0
        Top = 149
        Width = 718
        Height = 8
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          21.1666666666667
          0
          394.229166666667
          1899.70833333333)
        Pen.Width = 2
        Shape = qrsHorLine
      end
      object QRLabel14: TQRLabel
        Left = 610
        Top = 85
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1613.95833333333
          224.895833333333
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
      object QRLabel20: TQRLabel
        Left = 668
        Top = 85
        Width = 47
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1767.41666666667
          224.895833333333
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
        OnPrint = QRLabel20Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel12: TQRLabel
        Left = 485
        Top = 135
        Width = 74
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1283.22916666667
          357.1875
          195.791666666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Valor Líquido'
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
      object QRLabel6: TQRLabel
        Left = 586
        Top = 135
        Width = 60
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1550.45833333333
          357.1875
          158.75)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Valor Pago'
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
      object QRLabel10: TQRLabel
        Left = 684
        Top = 135
        Width = 31
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1809.75
          357.1875
          82.0208333333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Saldo'
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
      object QRMemo1: TQRMemo
        Left = 118
        Top = 64
        Width = 490
        Height = 65
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          171.979166666667
          312.208333333333
          169.333333333333
          1296.45833333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBImage1: TQRDBImage
        Left = 0
        Top = 6
        Width = 116
        Height = 54
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          142.875
          0
          15.875
          306.916666666667)
        DataField = 'FOTO'
        DataSet = FMenu.Q_FOTO
        Stretch = True
      end
      object QRLabel7: TQRLabel
        Left = 416
        Top = 135
        Width = 54
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1100.66666666667
          357.1875
          142.875)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Vlr. Título'
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
    end
    object QRGroup1: TQRGroup
      Left = 38
      Top = 192
      Width = 718
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clSilver
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        44.9791666666667
        1899.70833333333)
      Expression = 'Q_RECE.VENCIMENTO'
      FooterBand = QRBand3
      Master = RelPagtos
      ReprintOnNewPage = False
      object QRDBText9: TQRDBText
        Left = 2
        Top = 0
        Width = 71
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          5.29166666666667
          0
          187.854166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clSilver
        DataSet = Q_RECE
        DataField = 'VENCIMENTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
    end
    object QRBand3: TQRBand
      Left = 38
      Top = 258
      Width = 718
      Height = 20
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AfterPrint = QRBand3AfterPrint
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        52.9166666666667
        1899.70833333333)
      BandType = rbGroupFooter
      object QRLabel16: TQRLabel
        Left = 319
        Top = 3
        Width = 162
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          844.020833333333
          7.9375
          428.625)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Totais na data de vencimento'
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
      object QRLabel17: TQRLabel
        Left = 484
        Top = 3
        Width = 75
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1280.58333333333
          7.9375
          198.4375)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Totais na data'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        OnPrint = QRLabel17Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel18: TQRLabel
        Left = 561
        Top = 3
        Width = 84
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1484.3125
          7.9375
          222.25)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Totais na data'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        OnPrint = QRLabel18Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel19: TQRLabel
        Left = 647
        Top = 3
        Width = 70
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1711.85416666667
          7.9375
          185.208333333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Totais na data'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        OnPrint = QRLabel19Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
    object QRBand4: TQRBand
      Left = 38
      Top = 278
      Width = 718
      Height = 22
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = QRBand4BeforePrint
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        58.2083333333333
        1899.70833333333)
      BandType = rbSummary
      object QRDBText15: TQRDBText
        Left = 647
        Top = 6
        Width = 70
        Height = 16
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          1711.85416666667
          15.875
          185.208333333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Q_TOTS
        DataField = 'TOTSAL'
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
      object QRDBText14: TQRDBText
        Left = 561
        Top = 6
        Width = 84
        Height = 16
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          1484.3125
          15.875
          222.25)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Q_TOTS
        DataField = 'TOTPAG'
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
      object QRDBText13: TQRDBText
        Left = 484
        Top = 6
        Width = 75
        Height = 16
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          1280.58333333333
          15.875
          198.4375)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Q_TOTS
        DataField = 'TOTLIQ'
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
        Left = 0
        Top = -1
        Width = 718
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
          1899.70833333333)
        Pen.Width = 2
        Shape = qrsHorLine
      end
      object QRLabel21: TQRLabel
        Left = 408
        Top = 6
        Width = 73
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1079.5
          15.875
          193.145833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Totais gerais'
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
      object QRLabel22: TQRLabel
        Left = 484
        Top = 6
        Width = 75
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1280.58333333333
          15.875
          198.4375)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Totais na data'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        OnPrint = QRLabel22Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel23: TQRLabel
        Left = 561
        Top = 6
        Width = 84
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1484.3125
          15.875
          222.25)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Totais na data'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        OnPrint = QRLabel23Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel24: TQRLabel
        Left = 647
        Top = 6
        Width = 70
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1711.85416666667
          15.875
          185.208333333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Totais na data'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        OnPrint = QRLabel24Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
    object QRSubDetail1: TQRSubDetail
      Left = 38
      Top = 242
      Width = 718
      Height = 16
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
        42.3333333333333
        1899.70833333333)
      Master = RelPagtos
      DataSet = Q_IREC
      PrintBefore = False
      PrintIfEmpty = True
      object QRDBText2: TQRDBText
        Left = 187
        Top = 1
        Width = 63
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.0416666666667
          494.770833333333
          2.64583333333333
          166.6875)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Q_IREC
        DataField = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRDBText3: TQRDBText
        Left = 267
        Top = 1
        Width = 68
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.0416666666667
          706.4375
          2.64583333333333
          179.916666666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Q_IREC
        DataField = 'DataDebito'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRDBText10: TQRDBText
        Left = 386
        Top = 1
        Width = 97
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.0416666666667
          1021.29166666667
          2.64583333333333
          256.645833333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Q_IREC
        DataField = 'Abater'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRDBText11: TQRDBText
        Left = 515
        Top = 1
        Width = 61
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.0416666666667
          1362.60416666667
          2.64583333333333
          161.395833333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Q_IREC
        DataField = 'DescAcresc'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRDBText12: TQRDBText
        Left = 587
        Top = 1
        Width = 92
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.0416666666667
          1553.10416666667
          2.64583333333333
          243.416666666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Q_IREC
        DataField = 'ValorPago'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
    end
    object QRGroup2: TQRGroup
      Left = 38
      Top = 209
      Width = 718
      Height = 33
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AfterPrint = QRGroup2AfterPrint
      AlignToBottom = False
      BeforePrint = QRGroup2BeforePrint
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        87.3125
        1899.70833333333)
      Expression = 'Q_RECE.NUMERO'
      Master = RelPagtos
      ReprintOnNewPage = False
      object QRLabel9: TQRLabel
        Left = 3
        Top = 1
        Width = 278
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          7.9375
          2.64583333333333
          735.541666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Razão Social / Histórico / Descrição Opcional'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = QRLabel9Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel13: TQRLabel
        Left = 43
        Top = 17
        Width = 103
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          113.770833333333
          44.9791666666667
          272.520833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Detalhes da(s) baixa(s)'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRLabel25: TQRLabel
        Left = 187
        Top = 17
        Width = 63
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          494.770833333333
          44.9791666666667
          166.6875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Data da Baixa'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRLabel26: TQRLabel
        Left = 267
        Top = 17
        Width = 68
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          706.4375
          44.9791666666667
          179.916666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Data de Débito'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRLabel27: TQRLabel
        Left = 416
        Top = 17
        Width = 67
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1100.66666666667
          44.9791666666667
          177.270833333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Valor da Baixa'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRLabel28: TQRLabel
        Left = 515
        Top = 17
        Width = 61
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1362.60416666667
          44.9791666666667
          161.395833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Desc./Acrésc.'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRLabel29: TQRLabel
        Left = 628
        Top = 17
        Width = 51
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1661.58333333333
          44.9791666666667
          134.9375)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Valor Final'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRDBText8: TQRDBText
        Left = 647
        Top = 1
        Width = 70
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1711.85416666667
          2.64583333333333
          185.208333333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Q_RECE
        DataField = 'SALDO'
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
      object QRDBText7: TQRDBText
        Left = 561
        Top = 1
        Width = 84
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1484.3125
          2.64583333333333
          222.25)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Q_RECE
        DataField = 'VPAGO'
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
      object QRDBText6: TQRDBText
        Left = 484
        Top = 1
        Width = 75
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1280.58333333333
          2.64583333333333
          198.4375)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Q_RECE
        DataField = 'VALORLIQUIDO'
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
      object QRDBText5: TQRDBText
        Left = 351
        Top = 1
        Width = 47
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          928.6875
          2.64583333333333
          124.354166666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Q_RECE
        DataField = 'EMISSAO'
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
      object QRDBText4: TQRDBText
        Left = 289
        Top = 1
        Width = 55
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          764.645833333333
          2.64583333333333
          145.520833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Q_RECE
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
      object QRDBText1: TQRDBText
        Left = 398
        Top = 1
        Width = 73
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1053.04166666667
          2.64583333333333
          193.145833333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Q_RECE
        DataField = 'VALORTITULO'
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
  end
  object Q_RECE: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'SELECT  A.VENCIMENTO,'
      #9'A.NUMERO,'
      #9'A.RAZAO,'
      #9'A.HISTORICO,'
      #9'A.DOCUMENTO,'
      #9'A.EMISSAO,'
      #9'A.VALORLIQUIDO,'
      #9'A.SALDO,'
      '                A.CONTAGERENCIAL,'
      #9'A.VALORTITULO,'
      #9'A.DESCRICAO2,'
      
        #9'(SELECT SUM(ABATER) FROM CPAIPAG WHERE NUMERO = A.NUMERO) AS VP' +
        'AGO,'
      
        '                B.FOR_RAZA, CONVERT(CHAR(10),C.DATA,103) AS DATA' +
        ','
      '                D.CON_DESC, C.SEQUENCIA'
      'FROM CPAPAGA A, CPAFORN B, CPAIPAG C, CPACONT D'
      '')
    ValidateWithMask = True
    Left = 376
    Top = 280
    object Q_RECEVENCIMENTO: TDateTimeField
      FieldName = 'VENCIMENTO'
      DisplayFormat = 'DD/MM/YYYY'
    end
    object Q_RECENUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object Q_RECERAZAO: TStringField
      FieldName = 'RAZAO'
      FixedChar = True
      Size = 40
    end
    object Q_RECEHISTORICO: TStringField
      FieldName = 'HISTORICO'
      FixedChar = True
      Size = 50
    end
    object Q_RECEDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      FixedChar = True
      Size = 15
    end
    object Q_RECEEMISSAO: TDateTimeField
      FieldName = 'EMISSAO'
      DisplayFormat = 'DD/MM/YY'
    end
    object Q_RECEVALORLIQUIDO: TFloatField
      FieldName = 'VALORLIQUIDO'
      DisplayFormat = '###,###,##0.00'
    end
    object Q_RECESALDO: TFloatField
      FieldName = 'SALDO'
      DisplayFormat = '###,###,##0.00'
    end
    object Q_RECECONTAGERENCIAL: TStringField
      FieldName = 'CONTAGERENCIAL'
      FixedChar = True
      Size = 50
    end
    object Q_RECEVPAGO: TFloatField
      FieldName = 'VPAGO'
      DisplayFormat = '###,###,##0.00'
    end
    object Q_RECEFOR_RAZA: TStringField
      FieldName = 'FOR_RAZA'
      FixedChar = True
      Size = 40
    end
    object Q_RECECON_DESC: TStringField
      FieldName = 'CON_DESC'
      FixedChar = True
      Size = 25
    end
    object Q_RECEDATA: TStringField
      FieldName = 'DATA'
      FixedChar = True
      Size = 10
    end
    object Q_RECESEQUENCIA: TAutoIncField
      FieldName = 'SEQUENCIA'
    end
    object Q_RECEDESCRICAO2: TStringField
      FieldName = 'DESCRICAO2'
      FixedChar = True
      Size = 25
    end
    object Q_RECEVALORTITULO: TFloatField
      FieldName = 'VALORTITULO'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object Q_IREC: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    DataSource = DS_RECE
    SQL.Strings = (
      'SELECT * FROM CPAIPAG WHERE NUMERO = :NUMERO'
      'AND SEQUENCIA = :SEQUENCIA')
    ValidateWithMask = True
    Left = 472
    Top = 384
    ParamData = <
      item
        DataType = ftInteger
        Name = 'NUMERO'
        ParamType = ptUnknown
      end
      item
        DataType = ftAutoInc
        Name = 'SEQUENCIA'
        ParamType = ptUnknown
      end>
    object Q_IRECNumero: TIntegerField
      FieldName = 'Numero'
      Origin = 'FINANCEIRO.CPAIPAG.Numero'
    end
    object Q_IRECSequencia: TAutoIncField
      FieldName = 'Sequencia'
      Origin = 'FINANCEIRO.CPAIPAG.Sequencia'
    end
    object Q_IRECData: TDateTimeField
      FieldName = 'Data'
      Origin = 'FINANCEIRO.CPAIPAG.Data'
      DisplayFormat = 'DD/MM/YY'
    end
    object Q_IRECDocumento: TStringField
      FieldName = 'Documento'
      Origin = 'FINANCEIRO.CPAIPAG.Documento'
      FixedChar = True
      Size = 15
    end
    object Q_IRECAbater: TFloatField
      FieldName = 'Abater'
      Origin = 'FINANCEIRO.CPAIPAG.Abater'
      DisplayFormat = '###,###,##0.00'
    end
    object Q_IRECDescAcresc: TFloatField
      FieldName = 'DescAcresc'
      Origin = 'FINANCEIRO.CPAIPAG.DescAcresc'
      DisplayFormat = '###,###,##0.00'
    end
    object Q_IRECValorPago: TFloatField
      FieldName = 'ValorPago'
      Origin = 'FINANCEIRO.CPAIPAG.ValorPago'
      DisplayFormat = '###,###,##0.00'
    end
    object Q_IRECDataDebito: TDateTimeField
      FieldName = 'DataDebito'
      Origin = 'FINANCEIRO.CPAIPAG.DataDebito'
      DisplayFormat = 'DD/MM/YY'
    end
    object Q_IRECTipoBaixa: TStringField
      FieldName = 'TipoBaixa'
      Origin = 'FINANCEIRO.CPAIPAG.TipoBaixa'
      FixedChar = True
      Size = 1
    end
    object Q_IRECHistorico: TStringField
      FieldName = 'Historico'
      Origin = 'FINANCEIRO.CPAIPAG.Historico'
      FixedChar = True
      Size = 35
    end
    object Q_IRECBancoConta: TStringField
      FieldName = 'BancoConta'
      Origin = 'FINANCEIRO.CPAIPAG.BancoConta'
      FixedChar = True
      Size = 14
    end
    object Q_IRECPrepCheque: TStringField
      FieldName = 'PrepCheque'
      Origin = 'FINANCEIRO.CPAIPAG.PrepCheque'
      FixedChar = True
      Size = 1
    end
  end
  object DS_RECE: TwwDataSource
    DataSet = Q_RECE
    Left = 304
    Top = 320
  end
  object Q_TOTS: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'SELECT 2.1 AS TOTLIQ, 2.1 AS TOTPAG, 2.1 AS TOTSAL')
    ValidateWithMask = True
    Left = 544
    Top = 336
    object Q_TOTSTOTLIQ: TFloatField
      FieldName = 'TOTLIQ'
      DisplayFormat = '###,###,##0.00'
    end
    object Q_TOTSTOTPAG: TFloatField
      FieldName = 'TOTPAG'
      DisplayFormat = '###,###,##0.00'
    end
    object Q_TOTSTOTSAL: TFloatField
      FieldName = 'TOTSAL'
      DisplayFormat = '###,###,##0.00'
    end
  end
end
