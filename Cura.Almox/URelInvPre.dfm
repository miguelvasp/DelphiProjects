object FRelInvPre: TFRelInvPre
  Left = 210
  Top = 105
  Width = 1155
  Height = 510
  Caption = 'Relatório de Inventário de Almoxarifado'
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
    Top = 24
    Width = 1123
    Height = 794
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = Q_INV
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
    Page.PaperSize = A4Small
    Page.Values = (
      100
      2100
      100
      2970
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
      Width = 1047
      Height = 238
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
        629.708333333333
        2770.1875)
      BandType = rbPageHeader
      object QRLabel2: TQRLabel
        Left = 322
        Top = 10
        Width = 379
        Height = 36
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          95.25
          851.958333333333
          26.4583333333333
          1002.77083333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Relatório de Inventário'
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
      object QRSysData2: TQRSysData
        Left = 935
        Top = 42
        Width = 40
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          2473.85416666667
          111.125
          105.833333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Transparent = False
        FontSize = 10
      end
      object QRSysData1: TQRSysData
        Left = 936
        Top = 14
        Width = 39
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          2476.5
          37.0416666666667
          103.1875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsDate
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Transparent = False
        FontSize = 10
      end
      object QRShape1: TQRShape
        Left = 1
        Top = 131
        Width = 1041
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.5833333333333
          2.64583333333333
          346.604166666667
          2754.3125)
        Pen.Width = 2
        Shape = qrsHorLine
      end
      object QRSysData4: TQRSysData
        Left = 935
        Top = 65
        Width = 46
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2473.85416666667
          171.979166666667
          121.708333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsPageNumber
        Transparent = False
        FontSize = 10
      end
      object QRLabel1: TQRLabel
        Left = 5
        Top = 135
        Width = 168
        Height = 28
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          74.0833333333333
          13.2291666666667
          357.1875
          444.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Nº do Inventário:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRDBText8: TQRDBText
        Left = 167
        Top = 135
        Width = 82
        Height = 28
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          74.0833333333333
          441.854166666667
          357.1875
          216.958333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Q_INV
        DataField = 'Num_Inv'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRLabel7: TQRLabel
        Left = 6
        Top = 166
        Width = 122
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          15.875
          439.208333333333
          322.791666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Data do Inventário:'
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
      object QRDBText1: TQRDBText
        Left = 132
        Top = 166
        Width = 78
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          349.25
          439.208333333333
          206.375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Q_INV
        DataField = 'Data'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel3: TQRLabel
        Left = 6
        Top = 188
        Width = 39
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          15.875
          497.416666666667
          103.1875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Todos'
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
      object QRShape17: TQRShape
        Left = 0
        Top = 235
        Width = 1041
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.5833333333333
          0
          621.770833333333
          2754.3125)
        Shape = qrsHorLine
      end
      object QRLabel5: TQRLabel
        Left = 6
        Top = 216
        Width = 47
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          15.875
          571.5
          124.354166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Material'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel10: TQRLabel
        Left = 492
        Top = 216
        Width = 66
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          1301.75
          571.5
          174.625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Fornecedor'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel9: TQRLabel
        Left = 409
        Top = 216
        Width = 26
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          1082.14583333333
          571.5
          68.7916666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Lote'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel8: TQRLabel
        Left = 759
        Top = 216
        Width = 31
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          2008.1875
          571.5
          82.0208333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Qtde.'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel6: TQRLabel
        Left = 817
        Top = 216
        Width = 50
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          2161.64583333333
          571.5
          132.291666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Qtde Inv.'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRShape18: TQRShape
        Left = 1
        Top = 211
        Width = 1041
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.5833333333333
          2.64583333333333
          558.270833333333
          2754.3125)
        Pen.Width = 2
        Shape = qrsHorLine
      end
      object QRShape19: TQRShape
        Left = 486
        Top = 213
        Width = 5
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.5
          1285.875
          563.5625
          13.2291666666667)
        Shape = qrsVertLine
      end
      object QRShape20: TQRShape
        Left = 596
        Top = 213
        Width = 5
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.5
          1576.91666666667
          563.5625
          13.2291666666667)
        Shape = qrsVertLine
      end
      object QRShape21: TQRShape
        Left = 753
        Top = 213
        Width = 5
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.5
          1992.3125
          563.5625
          13.2291666666667)
        Shape = qrsVertLine
      end
      object QRShape22: TQRShape
        Left = 809
        Top = 213
        Width = 5
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.5
          2140.47916666667
          563.5625
          13.2291666666667)
        Shape = qrsVertLine
      end
      object QRLabel11: TQRLabel
        Left = 887
        Top = 216
        Width = 90
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          2346.85416666667
          571.5
          238.125)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Local Armazem'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRShape23: TQRShape
        Left = 881
        Top = 213
        Width = 5
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.5
          2330.97916666667
          563.5625
          13.2291666666667)
        Shape = qrsVertLine
      end
      object QRMemo1: TQRMemo
        Left = 181
        Top = 95
        Width = 705
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          76.7291666666667
          478.895833333333
          251.354166666667
          1865.3125)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel13: TQRLabel
        Left = 603
        Top = 216
        Width = 37
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          1595.4375
          571.5
          97.8958333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Marca'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel14: TQRLabel
        Left = 689
        Top = 216
        Width = 32
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          1822.97916666667
          571.5
          84.6666666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Valid.'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRShape29: TQRShape
        Left = 404
        Top = 213
        Width = 5
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.5
          1068.91666666667
          563.5625
          13.2291666666667)
        Shape = qrsVertLine
      end
      object QRShape26: TQRShape
        Left = 681
        Top = 214
        Width = 5
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.5
          1801.8125
          566.208333333333
          13.2291666666667)
        Shape = qrsVertLine
      end
      object QRLabel4: TQRLabel
        Left = 369
        Top = 47
        Width = 267
        Height = 36
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          95.25
          976.3125
          124.354166666667
          706.4375)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Almoxarifado - Preenchimento'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
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
    object QRGroup1: TQRGroup
      Left = 38
      Top = 276
      Width = 1047
      Height = 0
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AfterPrint = QRGroup1AfterPrint
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = True
      Size.Values = (
        0
        2770.1875)
      Expression = 'Q_INV.NUM_INV'
      Master = QuickRep1
      ReprintOnNewPage = False
      object QRShape8: TQRShape
        Left = 1
        Top = 75
        Width = 716
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.5833333333333
          2.64583333333333
          198.4375
          1894.41666666667)
        Pen.Width = 2
        Shape = qrsHorLine
      end
    end
    object QRSubDetail1: TQRSubDetail
      Left = 38
      Top = 276
      Width = 1047
      Height = 25
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AfterPrint = QRSubDetail1AfterPrint
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
        66.1458333333333
        2770.1875)
      Master = QuickRep1
      DataSet = Q_ITENS
      PrintBefore = False
      PrintIfEmpty = True
      object QRDBText3: TQRDBText
        Left = 6
        Top = 3
        Width = 395
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          15.875
          7.9375
          1045.10416666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Q_ITENS
        DataField = 'MAT_DESC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText2: TQRDBText
        Left = 494
        Top = 3
        Width = 99
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          1307.04166666667
          7.9375
          261.9375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Q_ITENS
        DataField = 'For_Codi'
        Font.Charset = ANSI_CHARSET
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
        Left = 410
        Top = 3
        Width = 71
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          1084.79166666667
          7.9375
          187.854166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Q_ITENS
        DataField = 'N_Lote'
        Font.Charset = ANSI_CHARSET
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
        Left = 759
        Top = 3
        Width = 42
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          2008.1875
          7.9375
          111.125)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Q_ITENS
        DataField = 'Qtde_Almox'
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
      object QRShape2: TQRShape
        Left = 486
        Top = -2
        Width = 5
        Height = 26
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          68.7916666666667
          1285.875
          -5.29166666666667
          13.2291666666667)
        Shape = qrsVertLine
      end
      object QRShape4: TQRShape
        Left = 596
        Top = -2
        Width = 5
        Height = 26
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          68.7916666666667
          1576.91666666667
          -5.29166666666667
          13.2291666666667)
        Shape = qrsVertLine
      end
      object QRShape5: TQRShape
        Left = 753
        Top = -2
        Width = 5
        Height = 26
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          68.7916666666667
          1992.3125
          -5.29166666666667
          13.2291666666667)
        Shape = qrsVertLine
      end
      object QRShape6: TQRShape
        Left = 809
        Top = -2
        Width = 5
        Height = 26
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          68.7916666666667
          2140.47916666667
          -5.29166666666667
          13.2291666666667)
        Shape = qrsVertLine
      end
      object QRShape7: TQRShape
        Left = 1
        Top = 43
        Width = 716
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          171.979166666667
          2.64583333333333
          113.770833333333
          1894.41666666667)
        Shape = qrsHorLine
      end
      object QRShape3: TQRShape
        Left = -3
        Top = 20
        Width = 1041
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.5833333333333
          -7.9375
          52.9166666666667
          2754.3125)
        Shape = qrsHorLine
      end
      object QRDBText4: TQRDBText
        Left = 888
        Top = 3
        Width = 153
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          2349.5
          7.9375
          404.8125)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Q_ITENS
        DataField = 'LocalArmazem'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape24: TQRShape
        Left = 881
        Top = -1
        Width = 5
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.1458333333333
          2330.97916666667
          -2.64583333333333
          13.2291666666667)
        Shape = qrsVertLine
      end
      object QRDBText10: TQRDBText
        Left = 602
        Top = 3
        Width = 60
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          1592.79166666667
          7.9375
          158.75)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Q_ITENS
        DataField = 'MARCA_DESC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape30: TQRShape
        Left = 404
        Top = -2
        Width = 5
        Height = 26
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          68.7916666666667
          1068.91666666667
          -5.29166666666667
          13.2291666666667)
        Shape = qrsVertLine
      end
      object QRDBText11: TQRDBText
        Left = 689
        Top = 3
        Width = 60
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          1822.97916666667
          7.9375
          158.75)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Q_ITENS
        DataField = 'Valid'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape27: TQRShape
        Left = 681
        Top = -2
        Width = 5
        Height = 26
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          68.7916666666667
          1801.8125
          -5.29166666666667
          13.2291666666667)
        Shape = qrsVertLine
      end
      object QRDBText5: TQRDBText
        Left = 815
        Top = 3
        Width = 58
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          2156.35416666667
          7.9375
          153.458333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Q_ITENS
        DataField = 'Qtde_Inv'
        Font.Charset = ANSI_CHARSET
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
    object QRBand2: TQRBand
      Left = 38
      Top = 387
      Width = 1047
      Height = 107
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
        283.104166666667
        2770.1875)
      BandType = rbPageFooter
      object QRLabel42: TQRLabel
        Left = 5
        Top = 10
        Width = 40
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.5625
          13.2291666666667
          26.4583333333333
          105.833333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Visto:'
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
      object QRLabel43: TQRLabel
        Left = 48
        Top = 8
        Width = 643
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          127
          21.1666666666667
          1701.27083333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 
          '________________________________________________________________' +
          '_______'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel46: TQRLabel
        Left = 6
        Top = 38
        Width = 88
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.5625
          15.875
          100.541666666667
          232.833333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Conferente:'
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
      object QRLabel47: TQRLabel
        Left = 94
        Top = 36
        Width = 597
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          248.708333333333
          95.25
          1579.5625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 
          '________________________________________________________________' +
          '_________'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel49: TQRLabel
        Left = 3
        Top = 81
        Width = 688
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.5625
          7.9375
          214.3125
          1820.33333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 
          '________________________________________________________________' +
          '____________'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel48: TQRLabel
        Left = 4
        Top = 58
        Width = 687
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.8541666666667
          10.5833333333333
          153.458333333333
          1817.6875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 
          '________________________________________________________________' +
          '____________'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
    end
    object QRBand3: TQRBand
      Left = 38
      Top = 301
      Width = 1047
      Height = 86
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
        227.541666666667
        2770.1875)
      BandType = rbSummary
      object QRShape9: TQRShape
        Left = 1
        Top = 60
        Width = 1041
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.5833333333333
          2.64583333333333
          158.75
          2754.3125)
        Shape = qrsHorLine
      end
      object QRShape10: TQRShape
        Left = 1
        Top = 80
        Width = 1041
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.5833333333333
          2.64583333333333
          211.666666666667
          2754.3125)
        Shape = qrsHorLine
      end
      object QRShape11: TQRShape
        Left = 1
        Top = 20
        Width = 1041
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.5833333333333
          2.64583333333333
          52.9166666666667
          2754.3125)
        Shape = qrsHorLine
      end
      object QRShape13: TQRShape
        Left = 1
        Top = 40
        Width = 1041
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.5833333333333
          2.64583333333333
          105.833333333333
          2754.3125)
        Shape = qrsHorLine
      end
      object QRShape12: TQRShape
        Left = 486
        Top = -2
        Width = 5
        Height = 85
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          224.895833333333
          1285.875
          -5.29166666666667
          13.2291666666667)
        Shape = qrsVertLine
      end
      object QRShape14: TQRShape
        Left = 809
        Top = -10
        Width = 5
        Height = 85
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          224.895833333333
          2140.47916666667
          -26.4583333333333
          13.2291666666667)
        Shape = qrsVertLine
      end
      object QRShape15: TQRShape
        Left = 753
        Top = -10
        Width = 5
        Height = 85
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          224.895833333333
          1992.3125
          -26.4583333333333
          13.2291666666667)
        Shape = qrsVertLine
      end
      object QRShape16: TQRShape
        Left = 596
        Top = -2
        Width = 5
        Height = 85
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          224.895833333333
          1576.91666666667
          -5.29166666666667
          13.2291666666667)
        Shape = qrsVertLine
      end
      object QRShape25: TQRShape
        Left = 881
        Top = -4
        Width = 5
        Height = 85
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          224.895833333333
          2330.97916666667
          -10.5833333333333
          13.2291666666667)
        Shape = qrsVertLine
      end
      object QRShape31: TQRShape
        Left = 404
        Top = -2
        Width = 5
        Height = 85
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          224.895833333333
          1068.91666666667
          -5.29166666666667
          13.2291666666667)
        Shape = qrsVertLine
      end
      object QRShape28: TQRShape
        Left = 681
        Top = -2
        Width = 5
        Height = 85
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          224.895833333333
          1801.8125
          -5.29166666666667
          13.2291666666667)
        Shape = qrsVertLine
      end
    end
  end
  object DS_INV: TwwDataSource
    DataSet = Q_INV
    Left = 210
    Top = 47
  end
  object Q_ITENS: TwwQuery
    OnCalcFields = Q_ITENSCalcFields
    DatabaseName = 'Cura'
    SessionName = 'Sec_BaseFin'
    DataSource = DS_INV
    SQL.Strings = (
      'SELECT   I.*,'
      '         MAT.MAT_DESC,'
      #9' FORN.FOR_CODI,'
      #9'MC.MARCA_DESC, MAT.LocalArmazem'
      'FROM       INV I,'
      #9' MATERIAIS MAT,'
      #9' CPAFORN FORN,'
      #9' MARCAS MC'
      'WHERE   I.MAT_ID = MAT.MAT_ID'
      'AND         I.FOR_CODI = FORN.FOR_CODI'
      'AND         I.NUM_INV = :NUM_INV'
      'AND      I.MARCA_ID = MC.MARCA_ID'
      'ORDER BY MAT.MAT_DESC')
    ValidateWithMask = True
    Left = 760
    Top = 109
    ParamData = <
      item
        DataType = ftInteger
        Name = 'NUM_INV'
        ParamType = ptUnknown
      end>
    object Q_ITENSInv_ID: TAutoIncField
      FieldName = 'Inv_ID'
    end
    object Q_ITENSNum_Inv: TIntegerField
      FieldName = 'Num_Inv'
    end
    object Q_ITENSData: TDateTimeField
      FieldName = 'Data'
    end
    object Q_ITENSN_Lote: TStringField
      FieldName = 'N_Lote'
      FixedChar = True
    end
    object Q_ITENSQtde_Almox: TFloatField
      FieldName = 'Qtde_Almox'
      DisplayFormat = '###,###,##0.00'
    end
    object Q_ITENSQtde_Inv: TFloatField
      FieldName = 'Qtde_Inv'
      DisplayFormat = '###,###,##0.00'
    end
    object Q_ITENSTipo: TStringField
      FieldName = 'Tipo'
      FixedChar = True
      Size = 1
    end
    object Q_ITENSUsuario: TStringField
      FieldName = 'Usuario'
      FixedChar = True
    end
    object Q_ITENSDt_Alt: TDateTimeField
      FieldName = 'Dt_Alt'
    end
    object Q_ITENSStatus: TStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 1
    end
    object Q_ITENSQtdeCalc: TFloatField
      FieldKind = fkCalculated
      FieldName = 'QtdeCalc'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object Q_ITENSMat_ID: TIntegerField
      FieldName = 'Mat_ID'
      Origin = 'CURA.INV.Mat_ID'
    end
    object Q_ITENSFor_Codi: TStringField
      FieldName = 'For_Codi'
      Origin = 'CURA.INV.For_Codi'
      FixedChar = True
      Size = 15
    end
    object Q_ITENSValid: TDateTimeField
      FieldName = 'Valid'
      Origin = 'CURA.INV.Valid'
      DisplayFormat = 'dd/mm/yy'
    end
    object Q_ITENSMAT_DESC: TStringField
      FieldName = 'MAT_DESC'
      Origin = 'CURA.MATERIAIS.MAT_DESC'
      FixedChar = True
      Size = 60
    end
    object Q_ITENSMARCA_DESC: TStringField
      FieldName = 'MARCA_DESC'
      Origin = 'CURA.MARCAS.MARCA_DESC'
      FixedChar = True
    end
    object Q_ITENSLocalArmazem: TStringField
      FieldName = 'LocalArmazem'
      Origin = 'CURA.MATERIAIS.LocalArmazem'
      FixedChar = True
      Size = 255
    end
  end
  object DS_ITEMS: TwwDataSource
    DataSet = Q_ITENS
    Left = 384
    Top = 21
  end
  object Q_INV: TwwQuery
    DatabaseName = 'Cura'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'SELECT  MIN(DATA)    DATA,'
      #9'MIN(NUM_INV) NUM_INV'
      'FROM      INV'
      ' '
      'ORDER BY NUM_INV')
    ValidateWithMask = True
    Left = 464
    Top = 17
    object Q_INVDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object Q_INVNUM_INV: TIntegerField
      FieldName = 'NUM_INV'
    end
  end
end
