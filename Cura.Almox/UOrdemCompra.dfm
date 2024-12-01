object ORDEMCOMPRA: TORDEMCOMPRA
  Left = 692
  Top = 597
  Width = 1251
  Height = 737
  VertScrollBar.Position = 25
  Caption = 'Ordens de Compra - Sistema de Almoxarifado'
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
    Left = 6
    Top = -18
    Width = 1123
    Height = 794
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    AfterPrint = QuickRep1AfterPrint
    DataSet = Q_COMPRAS
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
      100
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
    object QRBand3: TQRBand
      Left = 38
      Top = 38
      Width = 1066
      Height = 162
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AfterPrint = QRBand3AfterPrint
      AlignToBottom = False
      BeforePrint = QRBand3BeforePrint
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        428.625
        2820.45833333333)
      BandType = rbPageHeader
      object QRLabel2: TQRLabel
        Left = 700
        Top = 3
        Width = 244
        Height = 41
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          108.479166666667
          1852.08333333333
          7.9375
          645.583333333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Ordem de Compra Nº:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 16
      end
      object QRDBText8: TQRDBText
        Left = 954
        Top = 2
        Width = 79
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          82.0208333333333
          2524.125
          5.29166666666667
          209.020833333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Q_ORDEM_CAPA
        DataField = 'ORD_ID'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 16
      end
      object QRShape4: TQRShape
        Left = 0
        Top = 62
        Width = 1047
        Height = 8
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          21.1666666666667
          0
          164.041666666667
          2770.1875)
        Shape = qrsHorLine
      end
      object QRMemo1: TQRMemo
        Left = 128
        Top = 5
        Width = 299
        Height = 57
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          150.8125
          338.666666666667
          13.2291666666667
          791.104166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        Lines.Strings = (
          'End: Av. Brigadeiro Luiz Antônio, 4469 - Jd. Paulista'
          'CEP: 01401-001  São Paulo - SP'
          'Tel: 11 3056-4707'
          'Site: www.cura.com.br')
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel18: TQRLabel
        Left = 6
        Top = 69
        Width = 189
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.2083333333333
          15.875
          182.5625
          500.0625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Condição de Pagamento'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRDBText14: TQRDBText
        Left = 202
        Top = 69
        Width = 60
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.5625
          534.458333333333
          182.5625
          158.75)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Q_ORDEM_CAPA
        DataField = 'descricao'
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
      object QRLabel11: TQRLabel
        Left = 522
        Top = 69
        Width = 86
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.2083333333333
          1381.125
          182.5625
          227.541666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Dt. Entrega'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRDBText13: TQRDBText
        Left = 613
        Top = 69
        Width = 99
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.5625
          1621.89583333333
          182.5625
          261.9375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Q_ORDEM_CAPA
        DataField = 'DT_ENTREGA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRShape2: TQRShape
        Left = 0
        Top = 88
        Width = 1047
        Height = 69
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          182.5625
          0
          232.833333333333
          2770.1875)
        Shape = qrsRectangle
      end
      object QRLabel1: TQRLabel
        Left = 9
        Top = 90
        Width = 74
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.5
          23.8125
          238.125
          195.791666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Fornecedor'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel4: TQRLabel
        Left = 10
        Top = 112
        Width = 61
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.2083333333333
          26.4583333333333
          296.333333333333
          161.395833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Endereço'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
        Left = 9
        Top = 135
        Width = 71
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          23.8125
          357.1875
          187.854166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Telefone(s)'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText1: TQRDBText
        Left = 118
        Top = 91
        Width = 411
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.8541666666667
          312.208333333333
          240.770833333333
          1087.4375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Q_ORDEM_CAPA
        DataField = 'FOR_RAZA'
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
      object QRDBText2: TQRDBText
        Left = 118
        Top = 112
        Width = 411
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.8541666666667
          312.208333333333
          296.333333333333
          1087.4375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Q_ORDEM_CAPA
        DataField = 'FOR_ENDE'
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
      object QRDBText3: TQRDBText
        Left = 118
        Top = 135
        Width = 65
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          312.208333333333
          357.1875
          171.979166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Q_ORDEM_CAPA
        DataField = 'FOR_TEL1'
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
      object QRDBText6: TQRDBText
        Left = 251
        Top = 135
        Width = 65
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          664.104166666667
          357.1875
          171.979166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Q_ORDEM_CAPA
        DataField = 'FOR_TEL2'
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
        Left = 385
        Top = 135
        Width = 25
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          1018.64583333333
          357.1875
          66.1458333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Fax'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText4: TQRDBText
        Left = 419
        Top = 135
        Width = 59
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          1108.60416666667
          357.1875
          156.104166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Q_ORDEM_CAPA
        DataField = 'FOR_FAX'
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
      object QRDBText18: TQRDBText
        Left = 750
        Top = 135
        Width = 62
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          1984.375
          357.1875
          164.041666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Q_ORDEM_CAPA
        DataField = 'FOR_CEP'
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
      object QRLabel6: TQRLabel
        Left = 824
        Top = 129
        Width = 10
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.2083333333333
          2180.16666666667
          341.3125
          26.4583333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '-'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRDBText5: TQRDBText
        Left = 839
        Top = 135
        Width = 67
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          2219.85416666667
          357.1875
          177.270833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Q_ORDEM_CAPA
        DataField = 'FOR_MUNI'
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
      object QRLabel10: TQRLabel
        Left = 959
        Top = 127
        Width = 10
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.2083333333333
          2537.35416666667
          336.020833333333
          26.4583333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '-'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRDBText7: TQRDBText
        Left = 976
        Top = 135
        Width = 69
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          2582.33333333333
          357.1875
          182.5625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Q_ORDEM_CAPA
        DataField = 'FOR_ESTA'
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
      object QRSysData2: TQRSysData
        Left = 45
        Top = 39
        Width = 39
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          119.0625
          103.1875
          103.1875)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsPageNumber
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        FontSize = 8
      end
      object QRDBImage1: TQRDBImage
        Left = 8
        Top = 4
        Width = 113
        Height = 57
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          150.8125
          21.1666666666667
          10.5833333333333
          298.979166666667)
        DataField = 'Foto'
        DataSet = FMenu.qrFoto
      end
      object QRLabel32: TQRLabel
        Left = 722
        Top = 30
        Width = 123
        Height = 23
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.8541666666667
          1910.29166666667
          79.375
          325.4375)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Reimpressão'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRSysData1: TQRSysData
        Left = 843
        Top = 26
        Width = 189
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          2230.4375
          68.7916666666667
          500.0625)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        Data = qrsDate
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        OnPrint = QRSysData1Print
        ParentFont = False
        Text = 'Emissão:'
        Transparent = False
        FontSize = 8
      end
      object QRSysData3: TQRSysData
        Left = 971
        Top = 43
        Width = 60
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          2569.10416666667
          113.770833333333
          158.75)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsPageNumber
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = 'Pág '
        Transparent = False
        FontSize = 8
      end
      object QRDBText20: TQRDBText
        Left = 632
        Top = 91
        Width = 169
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.8541666666667
          1672.16666666667
          240.770833333333
          447.145833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Q_ORDEM_CAPA
        DataField = 'FOR_CGC'
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
      object QRLabel37: TQRLabel
        Left = 585
        Top = 90
        Width = 39
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.5
          1547.8125
          238.125
          103.1875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'CNPJ:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
    object QRBand1: TQRBand
      Left = 38
      Top = 234
      Width = 1066
      Height = 17
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
        44.9791666666667
        2820.45833333333)
      BandType = rbDetail
      object QRDBText10: TQRDBText
        Left = 12
        Top = 0
        Width = 225
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          31.75
          0
          595.3125)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Q_COMPRAS
        DataField = 'MAT_DESC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = QRDBText10Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText16: TQRDBText
        Left = 243
        Top = 0
        Width = 113
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          642.9375
          0
          298.979166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Q_COMPRAS
        DataField = 'MARCA_DESC'
        Font.Charset = ANSI_CHARSET
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
        Left = 478
        Top = 0
        Width = 76
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          1264.70833333333
          0
          201.083333333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Q_COMPRAS
        DataField = 'QTDE_COMP'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText12: TQRDBText
        Left = 567
        Top = 0
        Width = 26
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          1500.1875
          0
          68.7916666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Q_COMPRAS
        DataField = 'UNI_SIGLA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText17: TQRDBText
        Left = 615
        Top = 0
        Width = 41
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          1627.1875
          0
          108.479166666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Q_COMPRAS
        DataField = 'MATMARCA_CONVERSAO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object lbConversao: TQRLabel
        Left = 668
        Top = 1
        Width = 67
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          1767.41666666667
          2.64583333333333
          177.270833333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Label1'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText19: TQRDBText
        Left = 745
        Top = 0
        Width = 41
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          1971.14583333333
          0
          108.479166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Q_COMPRAS
        DataField = 'UNI_MARCA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText11: TQRDBText
        Left = 795
        Top = 0
        Width = 53
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          2103.4375
          0
          140.229166666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Q_COMPRAS
        DataField = 'PRECO_UNIT'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object Label1: TQRLabel
        Left = 860
        Top = 0
        Width = 67
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          2275.41666666667
          0
          177.270833333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Label1'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText15: TQRDBText
        Left = 940
        Top = 0
        Width = 31
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          2487.08333333333
          0
          82.0208333333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Q_COMPRAS
        DataField = 'ipi'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel28: TQRLabel
        Left = 976
        Top = 0
        Width = 54
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          2582.33333333333
          0
          142.875)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Label1'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText23: TQRDBText
        Left = 361
        Top = 0
        Width = 110
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          955.145833333333
          0
          291.041666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Q_COMPRAS
        DataField = 'CFornecedor'
        Font.Charset = ANSI_CHARSET
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
      Top = 251
      Width = 1066
      Height = 125
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AfterPrint = QRBand2AfterPrint
      AlignToBottom = False
      BeforePrint = QRBand2BeforePrint
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        330.729166666667
        2820.45833333333)
      BandType = rbSummary
      object QRShape11: TQRShape
        Left = 172
        Top = 2
        Width = 137
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.2083333333333
          455.083333333333
          5.29166666666667
          362.479166666667)
        Shape = qrsRectangle
      end
      object QRLabel22: TQRLabel
        Left = 181
        Top = 5
        Width = 34
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          478.895833333333
          13.2291666666667
          89.9583333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Frete'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel23: TQRLabel
        Left = 227
        Top = 5
        Width = 79
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          600.604166666667
          13.2291666666667
          209.020833333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeft
        ParentBiDiMode = False
        Caption = 'Qtde'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
        Left = 316
        Top = 2
        Width = 169
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.2083333333333
          836.083333333333
          5.29166666666667
          447.145833333333)
        Shape = qrsRectangle
      end
      object QRLabel19: TQRLabel
        Left = 325
        Top = 5
        Width = 59
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          859.895833333333
          13.2291666666667
          156.104166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Desconto'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel21: TQRLabel
        Left = 395
        Top = 5
        Width = 82
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1045.10416666667
          13.2291666666667
          216.958333333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeft
        ParentBiDiMode = False
        Caption = 'Qtde'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape9: TQRShape
        Left = 493
        Top = 2
        Width = 172
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.2083333333333
          1304.39583333333
          5.29166666666667
          455.083333333333)
        Shape = qrsRectangle
      end
      object QRLabel25: TQRLabel
        Left = 501
        Top = 5
        Width = 50
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1325.5625
          13.2291666666667
          132.291666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Vl Total'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel24: TQRLabel
        Left = 563
        Top = 5
        Width = 96
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1489.60416666667
          13.2291666666667
          254)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeft
        ParentBiDiMode = False
        Caption = 'Qtde'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape10: TQRShape
        Left = 670
        Top = 2
        Width = 176
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.2083333333333
          1772.70833333333
          5.29166666666667
          465.666666666667)
        Shape = qrsRectangle
      end
      object QRLabel26: TQRLabel
        Left = 677
        Top = 5
        Width = 54
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1791.22916666667
          13.2291666666667
          142.875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Total IPI'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel27: TQRLabel
        Left = 745
        Top = 5
        Width = 89
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1971.14583333333
          13.2291666666667
          235.479166666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Qtde'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape7: TQRShape
        Left = 854
        Top = 2
        Width = 175
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.2083333333333
          2259.54166666667
          5.29166666666667
          463.020833333333)
        Brush.Color = clSilver
        Shape = qrsRectangle
      end
      object QRLabel29: TQRLabel
        Left = 864
        Top = 5
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2286
          13.2291666666667
          87.3125)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Total'
        Color = clSilver
        Font.Charset = ANSI_CHARSET
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
        Left = 910
        Top = 5
        Width = 112
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2407.70833333333
          13.2291666666667
          296.333333333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeft
        ParentBiDiMode = False
        Caption = 'Qtde'
        Color = clSilver
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel20: TQRLabel
        Left = 4
        Top = 31
        Width = 77
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          10.5833333333333
          82.0208333333333
          203.729166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Observacões:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRShape14: TQRShape
        Left = -1
        Top = 25
        Width = 1040
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.5833333333333
          -2.64583333333333
          66.1458333333333
          2751.66666666667)
        Shape = qrsHorLine
      end
      object QRLBO3: TQRLabel
        Left = 5
        Top = 85
        Width = 76
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          13.2291666666667
          224.895833333333
          201.083333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Comprador:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape12: TQRShape
        Left = 84
        Top = 96
        Width = 356
        Height = 6
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          15.875
          222.25
          254
          941.916666666667)
        Shape = qrsHorLine
      end
      object QRDBText22: TQRDBText
        Left = 461
        Top = 83
        Width = 1036
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1219.72916666667
          219.604166666667
          2741.08333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Q_TXTOC
        DataField = 'QRDBText22'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object lbFaturamento: TgtQRLabel
        Left = 6
        Top = 103
        Width = 91
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          15.875
          272.520833333333
          240.770833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'lbFaturamento'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic, fsUnderline]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBRichText1: TQRDBRichText
        Left = 88
        Top = 31
        Width = 969
        Height = 49
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          129.645833333333
          232.833333333333
          82.0208333333333
          2563.8125)
        Alignment = taLeftJustify
        AutoStretch = False
        Color = clWindow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        DataField = 'OBS'
        DataSet = Q_PARAN
      end
      object QRLabel36: TQRLabel
        Left = 557
        Top = 85
        Width = 107
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1473.72916666667
          224.895833333333
          283.104166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Tipo de Compra:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText21: TQRDBText
        Left = 672
        Top = 87
        Width = 87
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1778
          230.1875
          230.1875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Q_ORDEM_CAPA
        DataField = 'TIPOCOMPRA'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object QRBand4: TQRBand
      Left = 38
      Top = 200
      Width = 1066
      Height = 34
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
        89.9583333333333
        2820.45833333333)
      BandType = rbColumnHeader
      object QRLabel9: TQRLabel
        Left = 1
        Top = 14
        Width = 63
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          2.64583333333333
          37.0416666666667
          166.6875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Descrição'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
        Left = 243
        Top = 14
        Width = 40
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          642.9375
          37.0416666666667
          105.833333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Marca'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
        Left = 524
        Top = 14
        Width = 31
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          1386.41666666667
          37.0416666666667
          82.0208333333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Qtde'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel14: TQRLabel
        Left = 570
        Top = 14
        Width = 18
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          1508.125
          37.0416666666667
          47.625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Un'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel35: TQRLabel
        Left = 511
        Top = 255
        Width = 1
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.3125
          1352.02083333333
          674.6875
          2.64583333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRLabel35'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape13: TQRShape
        Left = 598
        Top = 6
        Width = 185
        Height = 26
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          68.7916666666667
          1582.20833333333
          15.875
          489.479166666667)
        Shape = qrsRectangle
      end
      object QRLabel8: TQRLabel
        Left = 699
        Top = 14
        Width = 31
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1849.4375
          37.0416666666667
          82.0208333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Qtde'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel7: TQRLabel
        Left = 652
        Top = 0
        Width = 61
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1725.08333333333
          0
          161.395833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Conversão'
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
      object QRLabel34: TQRLabel
        Left = 747
        Top = 14
        Width = 22
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1976.4375
          37.0416666666667
          58.2083333333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Un.'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel15: TQRLabel
        Left = 806
        Top = 15
        Width = 44
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          2132.54166666667
          39.6875
          116.416666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Pr.Unit'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel16: TQRLabel
        Left = 879
        Top = 15
        Width = 51
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          2325.6875
          39.6875
          134.9375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Pr.Total'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel17: TQRLabel
        Left = 956
        Top = 15
        Width = 18
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          2529.41666666667
          39.6875
          47.625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'IPI'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
        Left = 989
        Top = 15
        Width = 39
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          2616.72916666667
          39.6875
          103.1875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Vl. IPI'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel33: TQRLabel
        Left = 618
        Top = 14
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1635.125
          37.0416666666667
          97.8958333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Conv.'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel38: TQRLabel
        Left = 359
        Top = 13
        Width = 46
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          949.854166666667
          34.3958333333333
          121.708333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Código'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape5: TQRShape
        Left = 1
        Top = 29
        Width = 1047
        Height = 5
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          13.2291666666667
          2.64583333333333
          76.7291666666667
          2770.1875)
        Shape = qrsHorLine
      end
    end
  end
  object DS_COMPRAS: TwwDataSource
    DataSet = Q_COMPRAS
    Left = 596
    Top = 441
  end
  object Q_COMPRAS: TwwQuery
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    DataSource = DS_ORDEM_CAPA
    SQL.Strings = (
      'SELECT OI.IOrd_ID'
      '      ,OI.Ord_ID'
      '      ,OI.Num_Ocom'
      '      ,OI.Mat_ID'
      '      ,OI.Marca_ID'
      '      ,OI.Uni_Comp_ID'
      '      ,OI.Uni_Estq_ID'
      '      ,OI.Qtde'
      '      ,OI.Qtde_Rec'
      '      ,OI.Qtde_Comp'
      '      ,OI.Qtde_Comp_Rec'
      '      ,OI.Qtde_Estq_Comp'
      '      ,OI.Preco_Unit'
      '      ,OI.Matmarca_ID'
      '      ,OI.Valor'
      '      ,OI.Conversao'
      '      ,OI.IPI'
      '      ,OI.VL_IPI'
      '      ,OI.Alterar'
      '      ,OI.NFIS'
      '      ,OI.Rec_ID'
      '      ,OI.Status'
      '      ,OI.Usu_Cancel'
      '      ,OI.Dt_Cancel'
      '      ,OI.Vl_Totitem'
      '      ,OI.Rec_Item_ID'
      
        '      ,CASE WHEN OI.GENERICO = '#39'S'#39' THEN OI.MAT_DESC ELSE MAT.Cod' +
        'igoMaterial + '#39' '#39' + MAT.MAT_DESC  END AS MAT_DESC '
      
        '      ,CASE WHEN OI.GENERICO IS NULL  THEN '#39'N'#39' ELSE OI.GENERICO ' +
        'END AS GENERICO,'
      '                        MAR.MARCA_DESC,'
      #9#9'MM.MATMARCA_EMBALAGEM,'
      #9#9'UN.UNI_SIGLA,'
      #9#9'MM.MATMARCA_CONVERSAO,'
      
        #9#9'(SELECT UNI_SIGLA FROM UNIDADES WHERE UNI_ID = MAT.UNI_ID) AS ' +
        'UNI_MARCA,'
      
        #9#9'dbo.fnGetCodigoFornecedor(OI.Mat_ID, OC.FOR_CODI) AS CForneced' +
        'or'
      'FROM Ordem_Compra OC,'
      '     ORDEM_COMPRAITEM OI,'
      #9#9'MATERIAIS MAT,'
      #9#9'MARCAS MAR,'
      #9#9'MATERIAL_MARCA MM,'
      #9#9'UNIDADES UN'
      'WHERE OC.ORD_ID = OI.Ord_ID'#9#9
      'AND OI.MAT_ID = MAT.MAT_ID'
      'AND   '#9#9'OI.MARCA_ID = MAR.MARCA_ID'
      'AND             OI.MATMARCA_ID = MM.MATMARCA_ID'
      'AND  '#9#9'OI.UNI_COMP_ID = UN.UNI_ID  '
      'AND OI.ORD_ID = :ORD_ID'
      ''
      'ORDER BY             OI.ORD_ID DESC')
    ValidateWithMask = True
    Left = 548
    Top = 472
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'ORD_ID'
        ParamType = ptUnknown
      end>
    object Q_COMPRASIORD_ID: TAutoIncField
      FieldName = 'IORD_ID'
      Origin = 'CURA.ORDEM_COMPRAITEM.IORD_ID'
    end
    object Q_COMPRASORD_ID: TIntegerField
      FieldName = 'ORD_ID'
      Origin = 'CURA.ORDEM_COMPRAITEM.ORD_ID'
    end
    object Q_COMPRASMAT_ID: TIntegerField
      FieldName = 'MAT_ID'
      Origin = 'CURA.ORDEM_COMPRAITEM.MAT_ID'
    end
    object Q_COMPRASMARCA_ID: TIntegerField
      FieldName = 'MARCA_ID'
      Origin = 'CURA.ORDEM_COMPRAITEM.MARCA_ID'
    end
    object Q_COMPRASQTDE: TFloatField
      FieldName = 'QTDE'
      Origin = 'CURA.ORDEM_COMPRAITEM.QTDE'
      DisplayFormat = '###,###,##0.00'
    end
    object Q_COMPRASQTDE_REC: TFloatField
      FieldName = 'QTDE_REC'
      Origin = 'CURA.ORDEM_COMPRAITEM.QTDE_REC'
      DisplayFormat = '###,###,##0.00'
    end
    object Q_COMPRASQTDE_COMP: TFloatField
      FieldName = 'QTDE_COMP'
      Origin = 'CURA.ORDEM_COMPRAITEM.QTDE_COMP'
      DisplayFormat = '###,###,##0.00'
    end
    object Q_COMPRASQTDE_COMP_REC: TFloatField
      FieldName = 'QTDE_COMP_REC'
      Origin = 'CURA.ORDEM_COMPRAITEM.QTDE_COMP_REC'
      DisplayFormat = '###,###,##0.00'
    end
    object Q_COMPRASQTDE_ESTQ_COMP: TFloatField
      FieldName = 'QTDE_ESTQ_COMP'
      Origin = 'CURA.ORDEM_COMPRAITEM.QTDE_ESTQ_COMP'
      DisplayFormat = '###,###,##0.00'
    end
    object Q_COMPRASPRECO_UNIT: TFloatField
      FieldName = 'PRECO_UNIT'
      Origin = 'CURA.ORDEM_COMPRAITEM.PRECO_UNIT'
      DisplayFormat = '###,###,##0.0000'
    end
    object Q_COMPRASMATMARCA_ID: TIntegerField
      FieldName = 'MATMARCA_ID'
      Origin = 'CURA.ORDEM_COMPRAITEM.MATMARCA_ID'
    end
    object Q_COMPRASVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = 'CURA.ORDEM_COMPRAITEM.VALOR'
      DisplayFormat = '###,###,##0.00'
    end
    object Q_COMPRASCONVERSAO: TFloatField
      FieldName = 'CONVERSAO'
      Origin = 'CURA.ORDEM_COMPRAITEM.CONVERSAO'
    end
    object Q_COMPRASIPI: TFloatField
      FieldName = 'IPI'
      Origin = 'CURA.ORDEM_COMPRAITEM.IPI'
      DisplayFormat = '###,###,##0.00'
    end
    object Q_COMPRASVL_IPI: TFloatField
      FieldName = 'VL_IPI'
      Origin = 'CURA.ORDEM_COMPRAITEM.VL_IPI'
      DisplayFormat = '###,###,##0.00'
    end
    object Q_COMPRASALTERAR: TStringField
      FieldName = 'ALTERAR'
      Origin = 'CURA.ORDEM_COMPRAITEM.ALTERAR'
      FixedChar = True
      Size = 1
    end
    object Q_COMPRASNFIS: TIntegerField
      FieldName = 'NFIS'
      Origin = 'CURA.ORDEM_COMPRAITEM.NFIS'
    end
    object Q_COMPRASREC_ID: TIntegerField
      FieldName = 'REC_ID'
      Origin = 'CURA.ORDEM_COMPRAITEM.REC_ID'
    end
    object Q_COMPRASSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'CURA.ORDEM_COMPRAITEM.STATUS'
      FixedChar = True
      Size = 1
    end
    object Q_COMPRASUSU_CANCEL: TStringField
      FieldName = 'USU_CANCEL'
      Origin = 'CURA.ORDEM_COMPRAITEM.USU_CANCEL'
      FixedChar = True
    end
    object Q_COMPRASDT_CANCEL: TDateTimeField
      FieldName = 'DT_CANCEL'
      Origin = 'CURA.ORDEM_COMPRAITEM.DT_CANCEL'
    end
    object Q_COMPRASVL_TOTITEM: TFloatField
      FieldName = 'VL_TOTITEM'
      Origin = 'CURA.ORDEM_COMPRAITEM.VL_TOTITEM'
      DisplayFormat = '###,###,##0.00'
    end
    object Q_COMPRASMAT_DESC: TStringField
      FieldName = 'MAT_DESC'
      Origin = 'CURA.MATERIAIS.MAT_DESC'
      FixedChar = True
      Size = 60
    end
    object Q_COMPRASMARCA_DESC: TStringField
      FieldName = 'MARCA_DESC'
      Origin = 'CURA.MARCAS.MARCA_DESC'
      FixedChar = True
    end
    object Q_COMPRASMATMARCA_EMBALAGEM: TStringField
      FieldName = 'MATMARCA_EMBALAGEM'
      Origin = 'CURA.MATERIAL_MARCA.MATMARCA_EMBALAGEM'
      FixedChar = True
      Size = 15
    end
    object Q_COMPRASUNI_SIGLA: TStringField
      FieldName = 'UNI_SIGLA'
      Origin = 'CURA.UNIDADES.UNI_SIGLA'
      FixedChar = True
      Size = 2
    end
    object Q_COMPRASUni_Comp_ID: TIntegerField
      FieldName = 'Uni_Comp_ID'
    end
    object Q_COMPRASUni_Estq_ID: TIntegerField
      FieldName = 'Uni_Estq_ID'
    end
    object Q_COMPRASMATMARCA_CONVERSAO: TFloatField
      FieldName = 'MATMARCA_CONVERSAO'
      DisplayFormat = '###,##0.00'
    end
    object Q_COMPRASUNI_MARCA: TStringField
      FieldName = 'UNI_MARCA'
      FixedChar = True
      Size = 2
    end
    object Q_COMPRASCFornecedor: TStringField
      FieldName = 'CFornecedor'
      FixedChar = True
      Size = 250
    end
  end
  object DS_ORDEM_CAPA: TwwDataSource
    DataSet = Q_ORDEM_CAPA
    Left = 894
    Top = 436
  end
  object Q_ORDEM_CAPA: TwwQuery
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'SELECT       A.ORD_ID,'
      ' '#9'     A.DT_ENTREGA,'
      '             B.FOR_CODI,'
      #9'     A.USUARIO,'
      '             B.FOR_RAZA,'
      '             B.FOR_ENDE,'
      '             B.FOR_CEP,'
      '             B.FOR_CGC, '#9'  '
      '             B.FOR_TEL1,'
      '             B.FOR_TEL2,'
      '             B.FOR_FAX,'
      #9'     B.FOR_ESTA,   '
      #9'     B.FOR_MUNI,'
      '             D.DESCRICAO  ,'
      '            A.DescTotal,'
      '            a.vlrFrete, DT_IMPRESSAO, A.FIL_CODI, A.TIPOCOMPRA'
      ''
      'FROM    ORDEM_COMPRA A'
      '    '
      'LEFT OUTER JOIN CPAFORN B ON A.FOR_CODI = B.FOR_CODI'
      
        'LEFT OUTER JOIN CONDICAO_PAGTO D ON D.COND_PGTO_ID = A.COND_PGTO' +
        '_ID')
    ValidateWithMask = True
    Left = 718
    Top = 384
    object Q_ORDEM_CAPAORD_ID: TAutoIncField
      FieldName = 'ORD_ID'
    end
    object Q_ORDEM_CAPADT_ENTREGA: TDateTimeField
      FieldName = 'DT_ENTREGA'
    end
    object Q_ORDEM_CAPAFOR_CODI: TStringField
      FieldName = 'FOR_CODI'
      FixedChar = True
      Size = 15
    end
    object Q_ORDEM_CAPAUSUARIO: TStringField
      FieldName = 'USUARIO'
      FixedChar = True
      Size = 50
    end
    object Q_ORDEM_CAPAFOR_RAZA: TStringField
      FieldName = 'FOR_RAZA'
      FixedChar = True
      Size = 50
    end
    object Q_ORDEM_CAPAFOR_ENDE: TStringField
      FieldName = 'FOR_ENDE'
      FixedChar = True
      Size = 40
    end
    object Q_ORDEM_CAPAFOR_CEP: TStringField
      FieldName = 'FOR_CEP'
      EditMask = '!#9999-999;0;'
      FixedChar = True
      Size = 8
    end
    object Q_ORDEM_CAPAFOR_TEL2: TStringField
      FieldName = 'FOR_TEL2'
      EditMask = '!\(99\)#999-9999;0;'
      FixedChar = True
      Size = 11
    end
    object Q_ORDEM_CAPAFOR_TEL1: TStringField
      FieldName = 'FOR_TEL1'
      EditMask = '!\(99\)#999-9999;0;'
      FixedChar = True
      Size = 11
    end
    object Q_ORDEM_CAPAFOR_FAX: TStringField
      FieldName = 'FOR_FAX'
      EditMask = '!\(99\)#999-9999;0;'
      FixedChar = True
      Size = 11
    end
    object Q_ORDEM_CAPAFOR_ESTA: TStringField
      FieldName = 'FOR_ESTA'
      FixedChar = True
      Size = 2
    end
    object Q_ORDEM_CAPAFOR_MUNI: TStringField
      FieldName = 'FOR_MUNI'
      FixedChar = True
      Size = 30
    end
    object Q_ORDEM_CAPADESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      FixedChar = True
      Size = 30
    end
    object Q_ORDEM_CAPADescTotal: TFloatField
      FieldName = 'DescTotal'
    end
    object Q_ORDEM_CAPAvlrFrete: TFloatField
      FieldName = 'vlrFrete'
    end
    object Q_ORDEM_CAPADT_IMPRESSAO: TDateTimeField
      FieldName = 'DT_IMPRESSAO'
    end
    object Q_ORDEM_CAPAFIL_CODI: TStringField
      FieldName = 'FIL_CODI'
      FixedChar = True
      Size = 3
    end
    object Q_ORDEM_CAPATIPOCOMPRA: TStringField
      FieldName = 'TIPOCOMPRA'
      FixedChar = True
      Size = 50
    end
    object Q_ORDEM_CAPAFOR_CGC: TStringField
      FieldName = 'FOR_CGC'
      EditMask = '!#99.999.999/9999-99;0;'
      FixedChar = True
      Size = 15
    end
  end
  object Q_PARAN: TwwQuery
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    DataSource = DS_ORDEM_CAPA
    SQL.Strings = (
      'select OBS from ordem_COMPRA'
      'WHERE ORD_ID= :ORD_ID'
      '')
    ValidateWithMask = True
    Left = 464
    Top = 406
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ORD_ID'
        ParamType = ptUnknown
      end>
    object Q_PARANOBS: TMemoField
      FieldName = 'OBS'
      Origin = 'BANCODADOS.ORDEM_CAPA.OBS'
      BlobType = ftMemo
    end
  end
  object DS_Paran: TwwDataSource
    DataSet = Q_PARAN
    Left = 544
    Top = 388
  end
  object DS_TXTOC: TwwDataSource
    DataSet = Q_TXTOC
    Left = 654
    Top = 587
  end
  object Q_TXTOC: TwwQuery
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    DataSource = DS_ORDEM_CAPA
    SQL.Strings = (
      'select obs '
      'from ordem_COMPRA'
      'where ORD_ID= :ORD_ID')
    ValidateWithMask = True
    Left = 870
    Top = 611
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ORD_ID'
        ParamType = ptUnknown
      end>
    object Q_TXTOCobs: TMemoField
      FieldName = 'obs'
      BlobType = ftMemo
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
    Left = 980
    Top = 478
  end
  object qrAux: TwwQuery
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    DataSource = DS_ORDEM_CAPA
    ValidateWithMask = True
    Left = 768
    Top = 446
  end
  object qrEmpresa: TwwQuery
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    DataSource = DS_ORDEM_CAPA
    SQL.Strings = (
      'SELECT * FROM CPAFILI')
    ValidateWithMask = True
    Left = 304
    Top = 470
    object qrEmpresaFIL_CODI: TStringField
      FieldName = 'FIL_CODI'
      Origin = 'CURA.CPAFILI.FIL_CODI'
      FixedChar = True
      Size = 3
    end
    object qrEmpresaFIL_DESC: TStringField
      FieldName = 'FIL_DESC'
      Origin = 'CURA.CPAFILI.FIL_DESC'
      FixedChar = True
    end
    object qrEmpresaFIL_NATOPERA: TStringField
      FieldName = 'FIL_NATOPERA'
      Origin = 'CURA.CPAFILI.FIL_NATOPERA'
      FixedChar = True
      Size = 30
    end
    object qrEmpresaFIL_DESCSERV: TStringField
      FieldName = 'FIL_DESCSERV'
      Origin = 'CURA.CPAFILI.FIL_DESCSERV'
      FixedChar = True
      Size = 30
    end
    object qrEmpresaFIL_ULTIMANF: TStringField
      FieldName = 'FIL_ULTIMANF'
      Origin = 'CURA.CPAFILI.FIL_ULTIMANF'
      FixedChar = True
    end
    object qrEmpresaRAZAO: TStringField
      FieldName = 'RAZAO'
      Origin = 'CURA.CPAFILI.RAZAO'
      FixedChar = True
      Size = 100
    end
    object qrEmpresaCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CURA.CPAFILI.CNPJ'
      FixedChar = True
      Size = 14
    end
    object qrEmpresaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'CURA.CPAFILI.ENDERECO'
      FixedChar = True
      Size = 100
    end
    object qrEmpresaCOMPL: TStringField
      FieldName = 'COMPL'
      Origin = 'CURA.CPAFILI.COMPL'
      FixedChar = True
      Size = 50
    end
    object qrEmpresaCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CURA.CPAFILI.CEP'
      FixedChar = True
      Size = 8
    end
    object qrEmpresaCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CURA.CPAFILI.CIDADE'
      FixedChar = True
      Size = 50
    end
    object qrEmpresaUF: TStringField
      FieldName = 'UF'
      Origin = 'CURA.CPAFILI.UF'
      FixedChar = True
      Size = 2
    end
    object qrEmpresaSEL: TStringField
      FieldName = 'SEL'
      Origin = 'CURA.CPAFILI.SEL'
      FixedChar = True
      Size = 1
    end
  end
end
