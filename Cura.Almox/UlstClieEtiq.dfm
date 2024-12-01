object List_ClieEtiq: TList_ClieEtiq
  Left = -2
  Top = -2
  Width = 624
  Height = 481
  Caption = 'List_ClieEtiq'
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
  object QR_CLIE: TQuickRep
    Left = 6
    Top = 3
    Width = 635
    Height = 898
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = Q_CLIE
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
    PrinterSettings.OutputBin = First
    PrintIfEmpty = False
    SnapToGrid = True
    Units = MM
    Zoom = 80
    object QRBand1: TQRBand
      Left = 30
      Top = 30
      Width = 575
      Height = 74
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
        244.739583333333
        1901.69270833333)
      BandType = rbDetail
      object QRDBText1: TQRDBText
        Left = 10
        Top = 8
        Width = 50
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.9947916666667
          33.0729166666667
          26.4583333333333
          165.364583333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Q_CLIE
        DataField = 'CLI_RAZA'
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
        Left = 10
        Top = 24
        Width = 50
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.9947916666667
          33.0729166666667
          79.375
          165.364583333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Q_CLIE
        DataField = 'CLI_FEND'
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
      object QRDBText3: TQRDBText
        Left = 10
        Top = 40
        Width = 53
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.9947916666667
          33.0729166666667
          132.291666666667
          175.286458333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Q_CLIE
        DataField = 'CLI_FMUN'
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
      object QRDBText4: TQRDBText
        Left = 170
        Top = 40
        Width = 50
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.9947916666667
          562.239583333333
          132.291666666667
          165.364583333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Q_CLIE
        DataField = 'CLI_FEST'
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
      object QRDBText5: TQRDBText
        Left = 258
        Top = 40
        Width = 119
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.9947916666667
          853.28125
          132.291666666667
          393.567708333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Q_CLIE
        DataField = 'CLI_FCEP'
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
        Left = 10
        Top = 58
        Width = 50
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.9947916666667
          33.0729166666667
          191.822916666667
          165.364583333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRLabel1'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        OnPrint = QRLabel1Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
  end
  object DS_CLIE: TwwDataSource
    DataSet = Q_CLIE
    Left = 324
    Top = 120
  end
  object Q_CLIE: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'SELECT CLI_RAZA,CLI_FEND,CLI_FMUN,CLI_FCEP,CLI_FEST FROM CPACLIE')
    ValidateWithMask = True
    Left = 369
    Top = 83
    object Q_CLIECLI_RAZA: TStringField
      FieldName = 'CLI_RAZA'
      Origin = 'FINANCEIRO.CPACLIE.CLI_RAZA'
      FixedChar = True
      Size = 50
    end
    object Q_CLIECLI_FEND: TStringField
      FieldName = 'CLI_FEND'
      Origin = 'FINANCEIRO.CPACLIE.CLI_FEND'
      FixedChar = True
      Size = 60
    end
    object Q_CLIECLI_FMUN: TStringField
      FieldName = 'CLI_FMUN'
      Origin = 'FINANCEIRO.CPACLIE.CLI_FMUN'
      FixedChar = True
      Size = 30
    end
    object Q_CLIECLI_FCEP: TStringField
      FieldName = 'CLI_FCEP'
      Origin = 'FINANCEIRO.CPACLIE.CLI_FCEP'
      EditMask = '99999-999;0;_'
      FixedChar = True
      Size = 8
    end
    object Q_CLIECLI_FEST: TStringField
      FieldName = 'CLI_FEST'
      Origin = 'FINANCEIRO.CPACLIE.CLI_FEST'
      FixedChar = True
      Size = 2
    end
  end
end
