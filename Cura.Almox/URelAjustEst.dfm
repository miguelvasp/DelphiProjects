object FRelAjustEst: TFRelAjustEst
  Left = 0
  Top = 0
  Width = 808
  Height = 574
  HorzScrollBar.Position = 68
  Caption = 'Relatório de Entradas e Saídas de Almoxarifado'
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
    Left = 4
    Top = 5
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = Q_ALMOX
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
      Height = 111
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
        293.6875
        1899.70833333333)
      BandType = rbTitle
      object QRLabel2: TQRLabel
        Left = 223
        Top = 5
        Width = 379
        Height = 36
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          95.25
          590.020833333333
          13.2291666666667
          1002.77083333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Relatório de Almoxarifado'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 18
      end
      object QRLabel37: TQRLabel
        Left = 350
        Top = 52
        Width = 77
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.4375
          926.041666666667
          137.583333333333
          203.729166666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Listagem'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsUnderline]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRShape1: TQRShape
        Left = 2
        Top = 103
        Width = 716
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.8125
          5.29166666666667
          272.520833333333
          1894.41666666667)
        Pen.Width = 2
        Shape = qrsHorLine
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
    object QRBand2: TQRBand
      Left = 38
      Top = 149
      Width = 718
      Height = 73
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
        193.145833333333
        1899.70833333333)
      BandType = rbDetail
      object QRLabel1: TQRLabel
        Left = 8
        Top = 5
        Width = 86
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.5
          21.1666666666667
          13.2291666666667
          227.541666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Movimentação:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel3: TQRLabel
        Left = 188
        Top = 5
        Width = 32
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.5
          497.416666666667
          13.2291666666667
          84.6666666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Lote:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText2: TQRDBText
        Left = 230
        Top = 6
        Width = 44
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.5625
          608.541666666667
          15.875
          116.416666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Q_ALMOX
        DataField = 'N_Lote'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel4: TQRLabel
        Left = 310
        Top = 5
        Width = 70
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.5
          820.208333333333
          13.2291666666667
          185.208333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Fornecedor:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText3: TQRDBText
        Left = 400
        Top = 6
        Width = 51
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.5625
          1058.33333333333
          15.875
          134.9375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Q_ALMOX
        DataField = 'For_Codi'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel5: TQRLabel
        Left = 7
        Top = 24
        Width = 56
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.5
          18.5208333333333
          63.5
          148.166666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Material:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText4: TQRDBText
        Left = 72
        Top = 26
        Width = 64
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.5625
          190.5
          68.7916666666667
          169.333333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Q_ALMOX
        DataField = 'MATERIAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel6: TQRLabel
        Left = 341
        Top = 24
        Width = 45
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.5
          902.229166666667
          63.5
          119.0625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Ajuste:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText5: TQRDBText
        Left = 399
        Top = 26
        Width = 89
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.5625
          1055.6875
          68.7916666666667
          235.479166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Q_ALMOX
        DataField = 'Qtde_Input'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel7: TQRLabel
        Left = 520
        Top = 24
        Width = 21
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.5
          1375.83333333333
          63.5
          55.5625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Un:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel8: TQRLabel
        Left = 319
        Top = 46
        Width = 62
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.5
          844.020833333333
          121.708333333333
          164.041666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Resultado:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel9: TQRLabel
        Left = 501
        Top = 46
        Width = 37
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.5
          1325.5625
          121.708333333333
          97.8958333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Saldo:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel10: TQRLabel
        Left = 7
        Top = 46
        Width = 44
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.5
          18.5208333333333
          121.708333333333
          116.416666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Motivo:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText6: TQRDBText
        Left = 398
        Top = 48
        Width = 30
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.5625
          1053.04166666667
          127
          79.375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Q_ALMOX
        DataField = 'Qtde'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText7: TQRDBText
        Left = 550
        Top = 26
        Width = 22
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.5625
          1455.20833333333
          68.7916666666667
          58.2083333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Q_ALMOX
        DataField = 'Uni_Sigla'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText8: TQRDBText
        Left = 64
        Top = 48
        Width = 54
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.5625
          169.333333333333
          127
          142.875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Q_ALMOX
        DataField = 'MOTIVO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRShape2: TQRShape
        Left = 2
        Top = 66
        Width = 716
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.8125
          5.29166666666667
          174.625
          1894.41666666667)
        Shape = qrsHorLine
      end
      object QRLabel13: TQRLabel
        Left = 99
        Top = 5
        Width = 23
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.5
          261.9375
          13.2291666666667
          60.8541666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'tipo'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel11: TQRLabel
        Left = 519
        Top = 5
        Width = 35
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.5
          1373.1875
          13.2291666666667
          92.6041666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Data:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText1: TQRDBText
        Left = 563
        Top = 6
        Width = 28
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.5625
          1489.60416666667
          15.875
          74.0833333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Q_ALMOX
        DataField = 'Data'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText9: TQRDBText
        Left = 553
        Top = 48
        Width = 30
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.5625
          1463.14583333333
          127
          79.375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Q_CALC
        DataField = 'Qtde'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
    end
  end
  object DS_ALMOX: TwwDataSource
    DataSet = Q_ALMOX
    Left = 208
    Top = 300
  end
  object Q_ALMOX: TwwQuery
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'SELECT'#9#9'MAT.MAT_DESC AS MATERIAL,'
      #9#9'AL.*,'
      #9#9'MOT.MOT_DESC AS MOTIVO'
      'FROM'#9#9'ALMOX AL LEFT '
      #9#9#9'OUTER JOIN '
      #9#9#9#9'MOTIVOS MOT '
      #9#9#9#9'ON MOT.MOT_ID = AL.MOT_ID,'
      #9#9'MATERIAIS MAT'
      'WHERE'#9#9'AL.MAT_ID = MAT.MAT_ID'
      'ORDER BY        AL.N_LOTE')
    ValidateWithMask = True
    Left = 368
    Top = 316
    object Q_ALMOXMATERIAL: TStringField
      FieldName = 'MATERIAL'
      FixedChar = True
      Size = 80
    end
    object Q_ALMOXAlmox_ID: TAutoIncField
      FieldName = 'Almox_ID'
    end
    object Q_ALMOXAlmox_ID_Mestre: TIntegerField
      FieldName = 'Almox_ID_Mestre'
    end
    object Q_ALMOXLocal_ID: TIntegerField
      FieldName = 'Local_ID'
    end
    object Q_ALMOXQtde: TFloatField
      FieldName = 'Qtde'
      DisplayFormat = '###,###,##0.00'
    end
    object Q_ALMOXQtde_Retirada: TFloatField
      FieldName = 'Qtde_Retirada'
    end
    object Q_ALMOXQtde_Input: TFloatField
      FieldName = 'Qtde_Input'
      DisplayFormat = '###,###,##0.00'
    end
    object Q_ALMOXTipo: TStringField
      FieldName = 'Tipo'
      FixedChar = True
      Size = 1
    end
    object Q_ALMOXObs: TMemoField
      FieldName = 'Obs'
      BlobType = ftMemo
    end
    object Q_ALMOXData: TDateTimeField
      FieldName = 'Data'
      EditMask = '!99/99/0000;1;_'
    end
    object Q_ALMOXUsuario: TStringField
      FieldName = 'Usuario'
      FixedChar = True
      Size = 100
    end
    object Q_ALMOXMOTIVO: TStringField
      FieldName = 'MOTIVO'
      FixedChar = True
      Size = 40
    end
    object Q_ALMOXN_Lote: TStringField
      FieldName = 'N_Lote'
      FixedChar = True
      Size = 40
    end
    object Q_ALMOXFor_Codi: TStringField
      FieldName = 'For_Codi'
      Origin = 'CURA.ALMOX.Mat_ID'
      FixedChar = True
      Size = 15
    end
    object Q_ALMOXMat_ID: TIntegerField
      FieldName = 'Mat_ID'
      Origin = 'CURA.ALMOX.Local_ID'
    end
    object Q_ALMOXMarca_ID: TIntegerField
      FieldName = 'Marca_ID'
      Origin = 'CURA.ALMOX.N_Lote'
    end
    object Q_ALMOXValid: TDateTimeField
      FieldName = 'Valid'
      Origin = 'CURA.ALMOX.Qtde'
    end
    object Q_ALMOXTD_ID: TIntegerField
      FieldName = 'TD_ID'
      Origin = 'CURA.ALMOX.Docto'
    end
    object Q_ALMOXDocto: TStringField
      FieldName = 'Docto'
      Origin = 'CURA.ALMOX.Rec_Item_ID'
      FixedChar = True
    end
    object Q_ALMOXRec_Item_ID: TIntegerField
      FieldName = 'Rec_Item_ID'
      Origin = 'CURA.MATERIAIS.MAT_DESC'
    end
    object Q_ALMOXMot_ID: TIntegerField
      FieldName = 'Mot_ID'
      Origin = 'CURA.ALMOX.Uni_ID'
    end
    object Q_ALMOXUni_Sigla: TStringField
      FieldName = 'Uni_Sigla'
      Origin = 'CURA.ALMOX.Obs'
      FixedChar = True
      Size = 2
    end
  end
  object Q_CALC: TwwQuery
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    DataSource = DS_ALMOX
    SQL.Strings = (
      'SELECT'#9#9#39#39' TEXTO,'
      #9#9'SUM(QTDE_INPUT) QTDE_INPUT,'
      #9#9'SUM(QTDE) QTDE,'
      #9#9'SUM(QTDE_RETIRADA) QTDE_RETIRADA'
      'FROM'#9#9'ALMOX'
      'WHERE                      1 = 1 '
      'AND                         QTDE_RETIRADA IS NULL '
      'AND                       TIPO = '#39'E'#39' '
      'AND'#9#9'MAT_ID = :MAT_ID')
    ValidateWithMask = True
    Left = 478
    Top = 307
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Mat_ID'
        ParamType = ptUnknown
      end>
    object Q_CALCQTDE_INPUT: TFloatField
      FieldName = 'QTDE_INPUT'
    end
    object Q_CALCQTDE: TFloatField
      FieldName = 'QTDE'
      DisplayFormat = '###,###,##0.00'
    end
    object Q_CALCQTDE_RETIRADA: TFloatField
      FieldName = 'QTDE_RETIRADA'
    end
  end
end
