object frmEmissCheque2: TfrmEmissCheque2
  Left = 92
  Top = 117
  Width = 872
  Height = 480
  Caption = 'frmEmissCheque2'
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
    Left = 24
    Top = 11
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
      100
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
    object QRGroup1: TQRGroup
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
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        682.625
        2000.25)
      Master = QR_CPDECHEQUE
      ReprintOnNewPage = False
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
        Left = 346
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
          915.458333333333
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
      object QRLabel10: TQRLabel
        Left = 686
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
          1815.04166666667
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
      object QRShape6: TQRShape
        Left = 5
        Top = 250
        Width = 732
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
          1936.75)
        Brush.Color = clBlack
        Pen.Width = 2
        Shape = qrsHorLine
      end
    end
    object QRGroup2: TQRGroup
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
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      LinkBand = QRGroup1
      Size.Values = (
        44.9791666666667
        2000.25)
      Master = QR_CPDECHEQUE
      ReprintOnNewPage = False
      object QRDBText6: TQRDBText
        Left = 6
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
          15.875
          2.64583333333333
          145.520833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
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
        Width = 57
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
          150.8125)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Q_CPAPAGA
        DataField = 'Fornecedor'
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
      object QRDBText10: TQRDBText
        Left = 347
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
          918.104166666667
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
        Left = 693
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
          1833.5625
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
    end
  end
  object DS_ITEMLOTEPAGA: TwwDataSource
    DataSet = Q_ITEMLOTEPAGA
    Left = 246
    Top = 59
  end
  object DS_LOTEPAGA: TwwDataSource
    DataSet = Q_LOTEPAGA
    Left = 342
    Top = 62
  end
  object Q_LOTEPAGA: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'SELECT * FROM CPACHEQ '
      'where MARCADOR = '#39'*'#39' ORDER BY CHEQUENUMERO')
    ValidateWithMask = True
    Left = 414
    Top = 67
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
  object Q_AUXI: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    ValidateWithMask = True
    Left = 487
    Top = 70
  end
  object Q_ITEMLOTEPAGA: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'select * from itemlotepaga')
    ValidateWithMask = True
    Left = 550
    Top = 75
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
  object DS_CPAPAGA: TwwDataSource
    DataSet = Q_CPAPAGA
    Left = 438
    Top = 132
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
      'and           B.Numero = :Numero ')
    ValidateWithMask = True
    Left = 358
    Top = 116
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
  end
  object Q_AUXI2: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    ValidateWithMask = True
    Left = 303
    Top = 116
  end
  object Q_Auxiliar: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    ValidateWithMask = True
    Left = 232
    Top = 108
  end
  object Q_Det: TwwQuery
    CachedUpdates = True
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    DataSource = DS_LOTEPAGA
    RequestLive = True
    SQL.Strings = (
      'Select * from CPADTPA where NumeroCp = :Numero')
    ValidateWithMask = True
    Left = 552
    Top = 134
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Numero'
        ParamType = ptInput
      end>
    object Q_DetNumeroCp: TIntegerField
      DisplayLabel = 'No. do CP'
      DisplayWidth = 10
      FieldName = 'NumeroCp'
      Origin = 'CPADTPA.NumeroCp'
    end
    object Q_DetCodDescAcres: TStringField
      DisplayLabel = 'C�digo Desconto/Acr�scimo'
      DisplayWidth = 3
      FieldName = 'CodDescAcres'
      Origin = 'CPADTPA.CodDescAcres'
      Size = 3
    end
    object Q_DetData: TDateTimeField
      DisplayWidth = 10
      FieldName = 'Data'
      Origin = 'CPADTPA.Data'
      EditMask = '!99/99/00;1;_'
    end
    object Q_DetDescAcresc: TFloatField
      DisplayLabel = 'Desconto/Acr�scimo '
      DisplayWidth = 10
      FieldName = 'DescAcresc'
      Origin = 'CPADTPA.DescAcresc'
      DisplayFormat = '###,###,##0.00'
    end
    object Q_DetHistorico: TStringField
      DisplayLabel = 'Hist�rico'
      DisplayWidth = 35
      FieldName = 'Historico'
      Origin = 'CPADTPA.Historico'
      Size = 35
    end
    object Q_DetSequencia: TIntegerField
      DisplayWidth = 10
      FieldName = 'Sequencia'
      Origin = 'CPADTPA.Sequencia'
      Visible = False
    end
  end
end
