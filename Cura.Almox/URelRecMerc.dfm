object FRelRecMerc: TFRelRecMerc
  Left = 238
  Top = 109
  Width = 1318
  Height = 475
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
    Left = 24
    Top = 16
    Width = 1123
    Height = 794
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = Q_RECMER
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
      Height = 155
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
        410.104166666667
        2770.1875)
      BandType = rbTitle
      object QRLabel2: TQRLabel
        Left = 234
        Top = 45
        Width = 507
        Height = 36
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          95.25
          619.125
          119.0625
          1341.4375)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Relat�rio de Recebimento de Mercadorias'
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
      object QRShape1: TQRShape
        Left = 0
        Top = 122
        Width = 1048
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.8125
          0
          322.791666666667
          2772.83333333333)
        Pen.Width = 2
        Shape = qrsHorLine
      end
      object QRLabel11: TQRLabel
        Left = 8
        Top = 131
        Width = 22
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          21.1666666666667
          346.604166666667
          58.2083333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Nf.'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel1: TQRLabel
        Left = 82
        Top = 131
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          216.958333333333
          346.604166666667
          171.979166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Fornecedor'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel3: TQRLabel
        Left = 229
        Top = 131
        Width = 51
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          605.895833333333
          346.604166666667
          134.9375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Material'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel5: TQRLabel
        Left = 481
        Top = 131
        Width = 57
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1272.64583333333
          346.604166666667
          150.8125)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Dt. Emis.'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel4: TQRLabel
        Left = 584
        Top = 131
        Width = 57
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1545.16666666667
          346.604166666667
          150.8125)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Dt. Entr.'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel6: TQRLabel
        Left = 664
        Top = 131
        Width = 66
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1756.83333333333
          346.604166666667
          174.625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Pre�o Unit.'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel7: TQRLabel
        Left = 749
        Top = 131
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1981.72916666667
          346.604166666667
          97.8958333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Qtde.'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel8: TQRLabel
        Left = 826
        Top = 131
        Width = 61
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2185.45833333333
          346.604166666667
          161.395833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Valor Tot.'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel9: TQRLabel
        Left = 912
        Top = 131
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2413
          346.604166666667
          105.833333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Status'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRSysData3: TQRSysData
        Left = 925
        Top = 51
        Width = 50
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          2447.39583333333
          134.9375
          132.291666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsPageNumber
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Transparent = False
        FontSize = 10
      end
      object QRSysData2: TQRSysData
        Left = 926
        Top = 30
        Width = 40
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          2450.04166666667
          79.375
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
        Left = 920
        Top = 8
        Width = 39
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          2434.16666666667
          21.1666666666667
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
      object QRShape2: TQRShape
        Left = 0
        Top = 148
        Width = 1048
        Height = 6
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          15.875
          0
          391.583333333333
          2772.83333333333)
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
    object QRSubDetail1: TQRSubDetail
      Left = 38
      Top = 193
      Width = 1047
      Height = 24
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = QRSubDetail1BeforePrint
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        63.5
        2770.1875)
      Master = QuickRep1
      DataSet = Q_RECMER
      PrintBefore = False
      PrintIfEmpty = True
      object QRDBText10: TQRDBText
        Left = 6
        Top = 3
        Width = 72
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
          190.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Q_RECMER
        DataField = 'NFIS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRDBText1: TQRDBText
        Left = 83
        Top = 3
        Width = 138
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          219.604166666667
          7.9375
          365.125)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Q_RECMER
        DataField = 'FOR_CODI'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRDBText2: TQRDBText
        Left = 230
        Top = 3
        Width = 245
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          608.541666666667
          7.9375
          648.229166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Q_RECMER
        DataField = 'MAT_DESC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRDBText3: TQRDBText
        Left = 480
        Top = 3
        Width = 96
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          1270
          7.9375
          254)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Q_RECMER
        DataField = 'Dt_Emiss'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRDBText4: TQRDBText
        Left = 584
        Top = 3
        Width = 68
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          1545.16666666667
          7.9375
          179.916666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Q_RECMER
        DataField = 'Dt_Entrada'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRDBText5: TQRDBText
        Left = 664
        Top = 3
        Width = 68
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          1756.83333333333
          7.9375
          179.916666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Q_RECMER
        DataField = 'Preco_Unit'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRDBText6: TQRDBText
        Left = 748
        Top = 3
        Width = 68
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          1979.08333333333
          7.9375
          179.916666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Q_RECMER
        DataField = 'Qtde'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRDBText7: TQRDBText
        Left = 826
        Top = 3
        Width = 68
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          2185.45833333333
          7.9375
          179.916666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Q_RECMER
        DataField = 'Vl_TotNF'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRLabel10: TQRLabel
        Left = 912
        Top = 3
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2413
          7.9375
          76.7291666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Status'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -9
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
    end
  end
  object DS_RECMER: TwwDataSource
    DataSet = Q_RECMER
    Left = 272
    Top = 320
  end
  object Q_RECMER: TwwQuery
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'SELECT '#9'FORN.FOR_CODI,'
      #9'MAT.MAT_DESC ,'
      #9'REC.*,'
      #9'ITEM.*'
      'FROM '#9'REC_NF REC,'
      #9'REC_ITEM ITEM,'
      #9'CPAFORN FORN,'
      #9'MATERIAIS MAT'
      'WHERE   REC.REC_ID = ITEM.REC_ID'
      'AND     REC.FOR_CODI = FORN.FOR_CODI'
      'AND     MAT.MAT_ID = ITEM.MAT_ID')
    ValidateWithMask = True
    Left = 376
    Top = 320
    object Q_RECMERFOR_CODI: TStringField
      FieldName = 'FOR_CODI'
      Origin = 'CURA.REC_NF.Rec_ID'
      FixedChar = True
      Size = 15
    end
    object Q_RECMERMAT_DESC: TStringField
      FieldName = 'MAT_DESC'
      Origin = 'CURA.REC_NF.NFIS'
      FixedChar = True
      Size = 60
    end
    object Q_RECMERRec_ID: TAutoIncField
      FieldName = 'Rec_ID'
      Origin = 'CURA.REC_NF.Serie'
    end
    object Q_RECMERNFIS: TIntegerField
      FieldName = 'NFIS'
      Origin = 'CURA.REC_NF.Dt_Entrada'
    end
    object Q_RECMERSerie: TStringField
      FieldName = 'Serie'
      Origin = 'CURA.REC_NF.CFO'
      FixedChar = True
      Size = 3
    end
    object Q_RECMERDt_Entrada: TDateTimeField
      FieldName = 'Dt_Entrada'
      Origin = 'CURA.REC_NF.Cfa_Sequ'
    end
    object Q_RECMERCFO: TStringField
      FieldName = 'CFO'
      Origin = 'CURA.REC_NF.Dt_Emiss'
      FixedChar = True
      Size = 10
    end
    object Q_RECMERCfa_Sequ: TIntegerField
      FieldName = 'Cfa_Sequ'
      Origin = 'CURA.REC_NF.Cond_Pgto_ID'
    end
    object Q_RECMERDt_Emiss: TDateTimeField
      FieldName = 'Dt_Emiss'
      Origin = 'CURA.REC_NF.Local_ID'
    end
    object Q_RECMERCond_Pgto_ID: TIntegerField
      FieldName = 'Cond_Pgto_ID'
      Origin = 'CURA.REC_NF.ICMS'
    end
    object Q_RECMERLocal_ID: TIntegerField
      FieldName = 'Local_ID'
      Origin = 'CURA.REC_NF.IPI'
    end
    object Q_RECMERICMS: TFloatField
      FieldName = 'ICMS'
      Origin = 'CURA.REC_NF.CodICMS'
    end
    object Q_RECMERIPI: TFloatField
      FieldName = 'IPI'
      Origin = 'CURA.REC_NF.CodIPI'
    end
    object Q_RECMERCodICMS: TStringField
      FieldName = 'CodICMS'
      Origin = 'CURA.REC_NF.Vl_ICMS'
      FixedChar = True
      Size = 1
    end
    object Q_RECMERCodIPI: TStringField
      FieldName = 'CodIPI'
      Origin = 'CURA.REC_NF.Vl_IPI'
      FixedChar = True
      Size = 1
    end
    object Q_RECMERVl_ICMS: TFloatField
      FieldName = 'Vl_ICMS'
      Origin = 'CURA.REC_NF.Base_ICMS'
      currency = True
    end
    object Q_RECMERVl_IPI: TFloatField
      FieldName = 'Vl_IPI'
      Origin = 'CURA.REC_NF.Base_IPI'
      currency = True
    end
    object Q_RECMERBase_ICMS: TFloatField
      FieldName = 'Base_ICMS'
      Origin = 'CURA.REC_NF.Frete'
      currency = True
    end
    object Q_RECMERBase_IPI: TFloatField
      FieldName = 'Base_IPI'
      Origin = 'CURA.REC_NF.Vl_Frete'
      currency = True
    end
    object Q_RECMERFrete: TStringField
      FieldName = 'Frete'
      Origin = 'CURA.REC_NF.Vl_Seguro'
      FixedChar = True
      Size = 1
    end
    object Q_RECMERVl_Frete: TFloatField
      FieldName = 'Vl_Frete'
      Origin = 'CURA.REC_NF.Vl_OutrasDesp'
      currency = True
    end
    object Q_RECMERVl_Seguro: TFloatField
      FieldName = 'Vl_Seguro'
      Origin = 'CURA.REC_NF.Vl_TotMer'
      currency = True
    end
    object Q_RECMERVl_OutrasDesp: TFloatField
      FieldName = 'Vl_OutrasDesp'
      Origin = 'CURA.REC_NF.Vl_TotNF'
      currency = True
    end
    object Q_RECMERVl_TotMer: TFloatField
      FieldName = 'Vl_TotMer'
      Origin = 'CURA.REC_NF.Status'
      currency = True
    end
    object Q_RECMERVl_TotNF: TFloatField
      FieldName = 'Vl_TotNF'
      Origin = 'CURA.REC_NF.FOR_CODI'
      currency = True
    end
    object Q_RECMERStatus: TStringField
      FieldName = 'Status'
      Origin = 'CURA.REC_ITEM.Rec_Item_ID'
      FixedChar = True
      Size = 1
    end
    object Q_RECMERFOR_CODI_1: TStringField
      FieldName = 'FOR_CODI_1'
      Origin = 'CURA.REC_ITEM.Rec_ID'
      FixedChar = True
      Size = 15
    end
    object Q_RECMERRec_Item_ID: TAutoIncField
      FieldName = 'Rec_Item_ID'
      Origin = 'CURA.REC_ITEM.Mat_ID'
    end
    object Q_RECMERRec_ID_1: TIntegerField
      FieldName = 'Rec_ID_1'
      Origin = 'CURA.REC_ITEM.Qtde'
    end
    object Q_RECMERMat_ID: TIntegerField
      FieldName = 'Mat_ID'
      Origin = 'CURA.REC_ITEM.Qtde_OC'
    end
    object Q_RECMERQtde: TFloatField
      FieldName = 'Qtde'
      Origin = 'CURA.REC_ITEM.Preco_Unit'
      DisplayFormat = '###,###,##0.00'
    end
    object Q_RECMERQtde_OC: TFloatField
      FieldName = 'Qtde_OC'
      Origin = 'CURA.REC_ITEM.ICMS'
      DisplayFormat = '###,###,##0.00'
    end
    object Q_RECMERPreco_Unit: TFloatField
      FieldName = 'Preco_Unit'
      Origin = 'CURA.REC_ITEM.IPI'
      currency = True
    end
    object Q_RECMERICMS_1: TFloatField
      FieldName = 'ICMS_1'
      Origin = 'CURA.REC_ITEM.Vl_ICMS'
    end
    object Q_RECMERIPI_1: TFloatField
      FieldName = 'IPI_1'
      Origin = 'CURA.REC_ITEM.Vl_IPI'
    end
    object Q_RECMERVl_ICMS_1: TFloatField
      FieldName = 'Vl_ICMS_1'
      Origin = 'CURA.REC_ITEM.Vl_Total'
      currency = True
    end
    object Q_RECMERVl_IPI_1: TFloatField
      FieldName = 'Vl_IPI_1'
      Origin = 'CURA.REC_ITEM.Alterar'
      currency = True
    end
    object Q_RECMERVl_Total: TFloatField
      FieldName = 'Vl_Total'
      Origin = 'CURA.REC_ITEM.Marca_ID'
      currency = True
    end
    object Q_RECMERAlterar: TStringField
      FieldName = 'Alterar'
      Origin = 'CURA.REC_ITEM.Status'
      FixedChar = True
      Size = 1
    end
    object Q_RECMERMarca_ID: TIntegerField
      FieldName = 'Marca_ID'
      Origin = 'CURA.REC_ITEM.IORD_ID'
    end
    object Q_RECMERStatus_1: TStringField
      FieldName = 'Status_1'
      Origin = 'CURA.REC_ITEM.ORD_ID'
      FixedChar = True
      Size = 1
    end
    object Q_RECMERIORD_ID: TIntegerField
      FieldName = 'IORD_ID'
      Origin = 'CURA.REC_ITEM.MATMARCA_ID'
    end
    object Q_RECMERORD_ID: TIntegerField
      FieldName = 'ORD_ID'
      Origin = 'CURA.CPAFORN.FOR_CODI'
    end
    object Q_RECMERMATMARCA_ID: TIntegerField
      FieldName = 'MATMARCA_ID'
      Origin = 'CURA.MATERIAIS.MAT_DESC'
    end
  end
end
