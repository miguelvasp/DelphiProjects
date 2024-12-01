object frmConfereRequisicao: TfrmConfereRequisicao
  Left = 176
  Top = 132
  BorderStyle = bsDialog
  Caption = 'Conferência da Requisição de Materiais'
  ClientHeight = 532
  ClientWidth = 1079
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 14
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 74
    Height = 14
    Caption = 'Requisição N°'
  end
  object Label2: TLabel
    Left = 120
    Top = 8
    Width = 74
    Height = 14
    Caption = 'Solicitação N°'
  end
  object Edit1: TEdit
    Left = 16
    Top = 24
    Width = 89
    Height = 22
    TabOrder = 0
    OnChange = Edit1Change
  end
  object Button1: TButton
    Left = 675
    Top = 20
    Width = 76
    Height = 25
    Caption = 'Pesquisar'
    TabOrder = 1
    OnClick = Button1Click
  end
  object RadioGroup1: TRadioGroup
    Left = 312
    Top = 6
    Width = 353
    Height = 41
    Columns = 3
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemIndex = 0
    Items.Strings = (
      'Por aprovar'
      'Aprovados'
      'Todos')
    ParentFont = False
    TabOrder = 2
  end
  object wwDBGrid1: TwwDBGrid
    Left = 16
    Top = 56
    Width = 1049
    Height = 433
    ControlType.Strings = (
      'SEL;CheckBox;S;N')
    Selected.Strings = (
      'SEL'#9'1'#9'    '#9#9
      'MAT_DESC'#9'70'#9'Material'#9#9
      'N_Lote'#9'20'#9'Lote'#9#9
      'Valid'#9'18'#9'Validade'#9#9
      'Qtde'#9'10'#9'Qtde'#9#9
      'DT_APROVACAO'#9'18'#9'Data de Aprovação'#9'F'#9)
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DataSource1
    TabOrder = 3
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
  end
  object Button2: TButton
    Left = 16
    Top = 496
    Width = 169
    Height = 25
    Caption = 'Aprovar itens selecionados'
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 760
    Top = 20
    Width = 75
    Height = 25
    Caption = 'Imprimir'
    TabOrder = 5
    OnClick = Button3Click
  end
  object QuickRep1: TQuickRep
    Left = 80
    Top = 656
    Width = 1056
    Height = 816
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = qrBusca
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
    Page.PaperSize = Letter
    Page.Values = (
      100
      2159
      100
      2794
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
      Width = 980
      Height = 152
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
        402.166666666667
        2592.91666666667)
      BandType = rbPageHeader
      object QRLabel1: TQRLabel
        Left = -22
        Top = 8
        Width = 1024
        Height = 26
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          68.7916666666667
          -58.2083333333333
          21.1666666666667
          2709.33333333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Relatório de de Conferência da Requisição de Materiais'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Verdana'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRShape2: TQRShape
        Left = 0
        Top = 113
        Width = 1041
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.5
          0
          298.979166666667
          2754.3125)
        Shape = qrsHorLine
      end
      object QRLabel2: TQRLabel
        Left = 872
        Top = 8
        Width = 34
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2307.16666666667
          21.1666666666667
          89.9583333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Data:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel3: TQRLabel
        Left = 872
        Top = 32
        Width = 34
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2307.16666666667
          84.6666666666667
          89.9583333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Hora:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel4: TQRLabel
        Left = 878
        Top = 56
        Width = 28
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2323.04166666667
          148.166666666667
          74.0833333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Pág:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRSysData1: TQRSysData
        Left = 912
        Top = 8
        Width = 36
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2413
          21.1666666666667
          95.25)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsDate
        Transparent = False
        FontSize = 10
      end
      object QRSysData3: TQRSysData
        Left = 912
        Top = 32
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2413
          84.6666666666667
          97.8958333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsTime
        Transparent = False
        FontSize = 10
      end
      object QRSysData4: TQRSysData
        Left = 912
        Top = 56
        Width = 46
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2413
          148.166666666667
          121.708333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsPageNumber
        Transparent = False
        FontSize = 10
      end
      object lbRequisicao: TQRLabel
        Left = 360
        Top = 48
        Width = 52
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          952.5
          127
          137.583333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'FILTROS:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRShape1: TQRShape
        Left = 0
        Top = 144
        Width = 1041
        Height = 8
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          21.1666666666667
          0
          381
          2754.3125)
        Shape = qrsHorLine
      end
      object QRLabel6: TQRLabel
        Left = 496
        Top = 128
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1312.33333333333
          338.666666666667
          76.7291666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Lote'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel8: TQRLabel
        Left = 592
        Top = 128
        Width = 52
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1566.33333333333
          338.666666666667
          137.583333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Validade'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel11: TQRLabel
        Left = 688
        Top = 128
        Width = 35
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1820.33333333333
          338.666666666667
          92.6041666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Qtde.'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel12: TQRLabel
        Left = 848
        Top = 128
        Width = 116
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2243.66666666667
          338.666666666667
          306.916666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Data de aprovação'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel17: TQRLabel
        Left = 8
        Top = 128
        Width = 50
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          21.1666666666667
          338.666666666667
          132.291666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Material'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBImage1: TQRDBImage
        Left = 16
        Top = 8
        Width = 113
        Height = 65
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          171.979166666667
          42.3333333333333
          21.1666666666667
          298.979166666667)
        Center = False
        DataField = 'Foto'
        DataSet = FMenu.qrFoto
      end
    end
    object QRBand2: TQRBand
      Left = 38
      Top = 190
      Width = 980
      Height = 21
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
        55.5625
        2592.91666666667)
      BandType = rbDetail
      object QRDBText1: TQRDBText
        Left = 8
        Top = 1
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          21.1666666666667
          2.64583333333333
          171.979166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrBusca
        DataField = 'MAT_DESC'
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
        Left = 496
        Top = 1
        Width = 41
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1312.33333333333
          2.64583333333333
          108.479166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrBusca
        DataField = 'N_Lote'
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
        Left = 592
        Top = 1
        Width = 28
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1566.33333333333
          2.64583333333333
          74.0833333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrBusca
        DataField = 'Valid'
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
        Left = 696
        Top = 1
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1841.5
          2.64583333333333
          71.4375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrBusca
        DataField = 'Qtde'
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
        Left = 848
        Top = 1
        Width = 96
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2243.66666666667
          2.64583333333333
          254)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrBusca
        DataField = 'DT_APROVACAO'
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
  end
  object edtSol: TEdit
    Left = 120
    Top = 24
    Width = 105
    Height = 22
    TabOrder = 7
    OnChange = edtSolChange
  end
  object Button4: TButton
    Left = 192
    Top = 496
    Width = 265
    Height = 25
    Caption = 'Aviso de divergência dos itens selecionados'
    TabOrder = 8
    OnClick = Button4Click
  end
  object qrBusca: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT A.REQ_ID,'
      #9'B.RR_ID,'
      #9'M.MAT_DESC,'
      #9'B.N_Lote,'
      #9'B.Valid,'
      #9'B.Qtde,'
      #9'B.SEL,'
      #9'B.DT_APROVACAO'
      'FROM Req_Item A INNER JOIN Req_Lote B'
      'ON A.Req_Item_ID = B.Req_Item_ID INNER JOIN MATERIAIS M'
      'ON A.Mat_ID = M.MAT_ID')
    Left = 584
    Top = 192
    object qrBuscaSEL: TStringField
      DisplayLabel = '    '
      DisplayWidth = 1
      FieldName = 'SEL'
      OnChange = qrBuscaSELChange
      Size = 1
    end
    object qrBuscaMAT_DESC: TStringField
      DisplayLabel = 'Material'
      DisplayWidth = 70
      FieldName = 'MAT_DESC'
      Size = 100
    end
    object qrBuscaN_Lote: TWideStringField
      DisplayLabel = 'Lote'
      DisplayWidth = 20
      FieldName = 'N_Lote'
    end
    object qrBuscaValid: TDateTimeField
      DisplayLabel = 'Validade'
      DisplayWidth = 18
      FieldName = 'Valid'
    end
    object qrBuscaQtde: TFloatField
      DisplayWidth = 10
      FieldName = 'Qtde'
    end
    object qrBuscaDT_APROVACAO: TDateTimeField
      DisplayLabel = 'Data de Aprovação'
      DisplayWidth = 18
      FieldName = 'DT_APROVACAO'
    end
    object qrBuscaRR_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'RR_ID'
      ReadOnly = True
      Visible = False
    end
  end
  object DataSource1: TDataSource
    DataSet = qrBusca
    Left = 256
    Top = 216
  end
  object qrAux: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    Left = 664
    Top = 208
  end
  object qrLocal: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    SQL.Strings = (
      'select * from local')
    Left = 400
    Top = 176
    object qrLocalLocal_ID: TAutoIncField
      FieldName = 'Local_ID'
      ReadOnly = True
    end
    object qrLocalDescricao: TStringField
      FieldName = 'Descricao'
      Size = 50
    end
    object qrLocalDisponivelSN: TStringField
      FieldName = 'DisponivelSN'
      FixedChar = True
      Size = 1
    end
    object qrLocalCONSUMO: TStringField
      FieldName = 'CONSUMO'
      FixedChar = True
      Size = 1
    end
    object qrLocalCONTROLA_ESTOQUE: TStringField
      FieldName = 'CONTROLA_ESTOQUE'
      FixedChar = True
      Size = 1
    end
  end
end
