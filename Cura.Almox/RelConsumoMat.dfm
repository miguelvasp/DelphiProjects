object Form1: TForm1
  Left = 239
  Top = 114
  Width = 696
  Height = 480
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = 8
    Top = 24
    Width = 816
    Height = 1056
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = qrCentroCusto
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
    Page.PaperSize = Letter
    Page.Values = (
      100
      2794
      100
      2159
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
      Width = 740
      Height = 97
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
        256.645833333333
        1957.91666666667)
      BandType = rbPageHeader
      object QRLabel1: TQRLabel
        Left = 16
        Top = 8
        Width = 689
        Height = 26
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          68.7916666666667
          42.3333333333333
          21.1666666666667
          1822.97916666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Relatório de Consumo de Materiais'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Verdana'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 16
      end
      object lblPeriodo: TQRLabel
        Left = 72
        Top = 44
        Width = 583
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          190.5
          116.416666666667
          1542.52083333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'lblPeriodo'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object lblData: TQRLabel
        Left = 72
        Top = 68
        Width = 583
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          190.5
          179.916666666667
          1542.52083333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'lblPeriodo'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object QRGroup1: TQRGroup
      Left = 38
      Top = 135
      Width = 740
      Height = 43
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
        113.770833333333
        1957.91666666667)
      Expression = 'qrCentroCusto.Data'
      Master = QuickRep1
      ReprintOnNewPage = False
      object QRShape1: TQRShape
        Left = 8
        Top = 28
        Width = 694
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.5
          21.1666666666667
          74.0833333333333
          1836.20833333333)
        Shape = qrsHorLine
      end
      object QRLabel4: TQRLabel
        Left = 136
        Top = 23
        Width = 60
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          359.833333333333
          60.8541666666667
          158.75)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Material'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel6: TQRLabel
        Left = 632
        Top = 23
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
          60.8541666666667
          95.25)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Qtde'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel8: TQRLabel
        Left = 674
        Top = 23
        Width = 25
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          1783.29166666667
          60.8541666666667
          66.1458333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Un.'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBText1: TQRDBText
        Left = 16
        Top = 23
        Width = 35
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          42.3333333333333
          60.8541666666667
          92.6041666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrCentroCusto
        DataField = 'Data'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
    end
    object QRBand2: TQRBand
      Left = 38
      Top = 178
      Width = 740
      Height = 18
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      LinkBand = QRGroup1
      Size.Values = (
        47.625
        1957.91666666667)
      BandType = rbDetail
      object QRDBText2: TQRDBText
        Left = 136
        Top = 1
        Width = 68
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          359.833333333333
          2.64583333333333
          179.916666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrCentroCusto
        DataField = 'MAT_DESC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText3: TQRDBText
        Left = 636
        Top = 1
        Width = 32
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1682.75
          2.64583333333333
          84.6666666666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrCentroCusto
        DataField = 'Qtde'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText4: TQRDBText
        Left = 676
        Top = 1
        Width = 59
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1788.58333333333
          2.64583333333333
          156.104166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrCentroCusto
        DataField = 'Uni_Sigla'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
    end
  end
  object qrCentroCusto: TwwQuery
    Active = True
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'SELECT '
      'dbo.Req_Capa.Data, '
      'dbo.Req_Item.Mat_ID, '
      'dbo.Req_Item.Qtde, '
      'dbo.Req_Item.Uni_Sigla, '
      'dbo.MATERIAIS.MAT_DESC, '
      'dbo.Req_Capa.Req_ID, '
      'dbo.Req_Capa.CC_ID, '
      'dbo.UNIDADES.UNI_sigla'
      ''
      'FROM         '
      'dbo.Req_Capa '
      'INNER JOIN'
      'dbo.Req_Item '
      'ON '
      'dbo.Req_Capa.Req_ID = dbo.Req_Item.Req_ID '
      'INNER JOIN'
      'dbo.MATERIAIS '
      'ON '
      
        'dbo.Req_Item.Mat_ID = dbo.MATERIAIS.MAT_ID AND dbo.Req_Item.Mat_' +
        'ID = dbo.MATERIAIS.MAT_ID '
      'INNER JOIN'
      'dbo.UNIDADES ON dbo.MATERIAIS.UNI_ID = dbo.UNIDADES.UNI_ID'
      ''
      ''
      'ORDER BY dbo.Req_Capa.Data')
    ValidateWithMask = True
    Left = 424
    Top = 264
    object qrCentroCustoData: TDateTimeField
      FieldName = 'Data'
    end
    object qrCentroCustoMat_ID: TIntegerField
      FieldName = 'Mat_ID'
    end
    object qrCentroCustoQtde: TFloatField
      FieldName = 'Qtde'
    end
    object qrCentroCustoUni_Sigla: TStringField
      FieldName = 'Uni_Sigla'
      FixedChar = True
      Size = 2
    end
    object qrCentroCustoMAT_DESC: TStringField
      FieldName = 'MAT_DESC'
      FixedChar = True
      Size = 60
    end
    object qrCentroCustoReq_ID: TAutoIncField
      FieldName = 'Req_ID'
    end
    object qrCentroCustoCC_ID: TIntegerField
      FieldName = 'CC_ID'
    end
    object qrCentroCustoUNI_sigla_1: TStringField
      FieldName = 'UNI_sigla_1'
      FixedChar = True
      Size = 2
    end
  end
end
