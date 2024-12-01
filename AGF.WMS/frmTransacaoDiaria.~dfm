object FTransacaoDiaria: TFTransacaoDiaria
  Left = 331
  Top = 136
  BorderStyle = bsSingle
  Caption = 'Transaçaõ diaria'
  ClientHeight = 284
  ClientWidth = 533
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
  object Label1: TLabel
    Left = 24
    Top = 16
    Width = 53
    Height = 14
    Caption = 'CLIENTE'
  end
  object Label2: TLabel
    Left = 24
    Top = 72
    Width = 22
    Height = 14
    Caption = 'De:'
  end
  object Label3: TLabel
    Left = 184
    Top = 72
    Width = 21
    Height = 14
    Caption = 'Até'
  end
  object Label4: TLabel
    Left = 336
    Top = 128
    Width = 104
    Height = 14
    Caption = 'Nota de Entrada'
    Visible = False
  end
  object Label5: TLabel
    Left = 24
    Top = 128
    Width = 78
    Height = 14
    Caption = 'Nota de NBF'
  end
  object cboCliente: TwwDBLookupCombo
    Left = 24
    Top = 32
    Width = 401
    Height = 22
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'CLIN_RAZA'#9'50'#9'CLIN_RAZA'#9'F'
      'CLIN_ID'#9'10'#9'CLIN_ID'#9'F')
    LookupTable = qrClin
    LookupField = 'CLIN_ID'
    TabOrder = 0
    AutoDropDown = True
    ShowButton = True
    AllowClearKey = False
  end
  object MaskEdit1: TMaskEdit
    Left = 24
    Top = 88
    Width = 121
    Height = 22
    EditMask = '99/99/9999'
    MaxLength = 10
    TabOrder = 1
    Text = '  /  /    '
  end
  object MaskEdit2: TMaskEdit
    Left = 184
    Top = 88
    Width = 121
    Height = 22
    EditMask = '99/99/9999'
    MaxLength = 10
    TabOrder = 2
    Text = '  /  /    '
  end
  object Button1: TButton
    Left = 24
    Top = 240
    Width = 177
    Height = 25
    Caption = 'Visualizar'
    TabOrder = 3
    OnClick = Button1Click
  end
  object QuickRep1: TQuickRep
    Left = 40
    Top = 288
    Width = 1123
    Height = 794
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = qrRel
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
      Height = 117
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
        309.5625
        2770.1875)
      BandType = rbPageHeader
      object gtQRLabel1: TgtQRLabel
        Left = 8
        Top = 8
        Width = 347
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          21.1666666666667
          21.1666666666667
          918.104166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Relatório de Transação diária de notas fiscais'
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
      object gtQRSysData1: TgtQRSysData
        Left = 968
        Top = 8
        Width = 74
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2561.16666666667
          21.1666666666667
          195.791666666667)
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
        Text = 'Página:'
        Transparent = False
        FontSize = 8
      end
      object lbCliente: TgtQRLabel
        Left = 8
        Top = 32
        Width = 51
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          21.1666666666667
          84.6666666666667
          134.9375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'lbCliente'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object lbData: TgtQRLabel
        Left = 8
        Top = 50
        Width = 38
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          21.1666666666667
          132.291666666667
          100.541666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'lbData'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object gtQRLabel2: TgtQRLabel
        Left = 3
        Top = 96
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          7.9375
          254
          97.8958333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'NF NBF'
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
      object gtQRLabel3: TgtQRLabel
        Left = 83
        Top = 96
        Width = 48
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          219.604166666667
          254
          127)
        Alignment = taLeftJustify
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
      object gtQRLabel4: TgtQRLabel
        Left = 171
        Top = 96
        Width = 52
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          452.4375
          254
          137.583333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'NF Venda'
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
      object gtQRLabel5: TgtQRLabel
        Left = 251
        Top = 96
        Width = 30
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          664.104166666667
          254
          79.375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'CFOP'
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
      object gtQRLabel6: TgtQRLabel
        Left = 315
        Top = 96
        Width = 45
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          833.4375
          254
          119.0625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Produto'
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
      object gtQRLabel7: TgtQRLabel
        Left = 403
        Top = 96
        Width = 55
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1066.27083333333
          254
          145.520833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Descrição'
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
      object gtQRLabel8: TgtQRLabel
        Left = 827
        Top = 96
        Width = 30
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2188.10416666667
          254
          79.375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Qtde.'
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
      object gtQRLabel9: TgtQRLabel
        Left = 955
        Top = 96
        Width = 58
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2526.77083333333
          254
          153.458333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'NF Entrada'
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
      object gtQRShape1: TgtQRShape
        Left = 0
        Top = 88
        Width = 1047
        Height = 5
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          13.2291666666667
          0
          232.833333333333
          2770.1875)
        Shape = qrsHorLine
      end
      object gtQRShape2: TgtQRShape
        Left = 0
        Top = 113
        Width = 1047
        Height = 5
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          13.2291666666667
          0
          298.979166666667
          2770.1875)
        Shape = qrsHorLine
      end
    end
    object QRBand2: TQRBand
      Left = 38
      Top = 155
      Width = 1047
      Height = 19
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
        50.2708333333333
        2770.1875)
      BandType = rbDetail
      object gtQRDBText1: TgtQRDBText
        Left = 3
        Top = 1
        Width = 69
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          7.9375
          2.64583333333333
          182.5625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrRel
        DataField = 'NF_RETORNO'
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
      object gtQRDBText2: TgtQRDBText
        Left = 83
        Top = 1
        Width = 43
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          219.604166666667
          2.64583333333333
          113.770833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrRel
        DataField = 'NF_DEMI'
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
      object gtQRDBText3: TgtQRDBText
        Left = 171
        Top = 1
        Width = 52
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          452.4375
          2.64583333333333
          137.583333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrRel
        DataField = 'NF_SAIDA'
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
      object gtQRDBText4: TgtQRDBText
        Left = 251
        Top = 1
        Width = 52
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          664.104166666667
          2.64583333333333
          137.583333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrRel
        DataField = 'CFA_CODI'
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
      object gtQRDBText5: TgtQRDBText
        Left = 315
        Top = 1
        Width = 50
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          833.4375
          2.64583333333333
          132.291666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrRel
        DataField = 'PRO_COD'
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
      object gtQRDBText6: TgtQRDBText
        Left = 403
        Top = 1
        Width = 55
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1066.27083333333
          2.64583333333333
          145.520833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrRel
        DataField = 'PRO_DESC'
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
      object gtQRDBText7: TgtQRDBText
        Left = 827
        Top = 1
        Width = 49
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2188.10416666667
          2.64583333333333
          129.645833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrRel
        DataField = 'INF_QTDE'
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
      object gtQRDBText8: TgtQRDBText
        Left = 955
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
          2526.77083333333
          2.64583333333333
          108.479166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrRel
        DataField = 'INF_NFE'
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
  object edtNFE: TEdit
    Left = 336
    Top = 144
    Width = 121
    Height = 22
    TabOrder = 5
    Visible = False
  end
  object edtNFNbf: TEdit
    Left = 24
    Top = 144
    Width = 121
    Height = 22
    TabOrder = 6
  end
  object CheckBox1: TCheckBox
    Left = 24
    Top = 184
    Width = 321
    Height = 17
    Caption = 'Desconsiderar nota fiscal de saída'
    TabOrder = 7
    Visible = False
  end
  object CheckBox2: TCheckBox
    Left = 24
    Top = 208
    Width = 225
    Height = 17
    Caption = 'Exportar para Excel'
    TabOrder = 8
  end
  object ProgressBar1: TProgressBar
    Left = 208
    Top = 248
    Width = 225
    Height = 17
    Min = 0
    Max = 100
    TabOrder = 9
    Visible = False
  end
  object qrClin: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select  CLIN_ID,CLIN_RAZA,CLIN_CGCCPF,UF_SIGLA'
      '  from CLIENTENBF where'
      '(CLIN_CONTRATO <> '#39'I'#39' and CLIN_CONTRATO <> '#39'R'#39') '
      'order by CLIN_RAZA ')
    Left = 520
    Top = 120
    object qrClinCLIN_RAZA: TStringField
      DisplayWidth = 50
      FieldName = 'CLIN_RAZA'
      Size = 50
    end
    object qrClinCLIN_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'CLIN_ID'
      ReadOnly = True
    end
    object qrClinCLIN_CGCCPF: TStringField
      DisplayWidth = 15
      FieldName = 'CLIN_CGCCPF'
      Visible = False
      Size = 15
    end
    object qrClinUF_SIGLA: TStringField
      DisplayWidth = 2
      FieldName = 'UF_SIGLA'
      Visible = False
      Size = 2
    end
  end
  object qrRel: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    SQL.Strings = (
      
        '  SELECT DISTINCT       (SELECT NFI_NUMERO FROM NF WHERE NFI_COD' +
        'I = A.NFI_CODI_SIMB) AS NF_RETORNO,       (SELECT NFI_DEMI FROM ' +
        'NF WHERE NFI_CODI = A.NFI_CODI_SIMB) AS NF_DEMI, '
      ' '#39#39' as NF_SAIDA, '
      
        '          C.CFA_CODI,           B.PRO_COD,            B.PRO_DESC' +
        ',           B.INF_QTDE,           (SELECT NFI_NUMERO FROM NF WHE' +
        'RE NFI_CODI = B.INF_NFE) AS INF_NFE,            b.INF_QTDE * B.I' +
        'NF_PUNI AS TOTAL_ITEM , A.NFI_CODI_SIMB,           (SELECT INF_Q' +
        'TDE * INF_PUNI FROM NF_ITENS WHERE NFI_CODI = B.INF_NFE AND PRO_' +
        'ID = B.PRO_ID) as TOTAL_ENTRADA  FROM NF A INNER JOIN NF_ITENS B' +
        ' ON A.NFI_CODI_SIMB = B.NFI_CODI   INNER JOIN FATURAMENTO C ON  ' +
        'C.CFA_ID = (SELECT CFA_ID FROM NF WHERE NFI_CODI = A.NFI_CODI_SI' +
        'MB)   WHERE A.TDOC_ID = 1   AND A.NFI_CODI_SIMB IS NOT NULL   AN' +
        'D (SELECT NFI_STATUS FROM NF WHERE NFI_CODI = A.NFI_CODI_SIMB) =' +
        ' '#39'E'#39' '
      'and A.NFI_EMIT_CLI = 395'
      'and convert(char(10), A.NFI_DEMI, 112) >= '#39'20110401'#39
      'and convert(char(10), A.NFI_DEMI, 112) <= '#39'20110415'#39
      
        ' UNION ALL  SELECT DISTINCT           A.NFI_NUMERO,           A.' +
        'NFI_DEMI,           '#39#39',            F.CFA_CODI,           P.PRO_C' +
        'OD,           P.PRO_DESC,           INF_QTDE,           (SELECT ' +
        'NFI_NUMERO FROM NF WHERE NFI_CODI = B.INF_NFE),           b.INF_' +
        'QTDE * B.INF_PUNI AS TOTAL_ITEM, A.NFI_CODI_SIMB,             (S' +
        'ELECT INF_QTDE * INF_PUNI FROM NF_ITENS WHERE NFI_CODI = B.INF_N' +
        'FE AND PRO_ID = B.PRO_ID) as TOTAL_ENTRADA FROM NF A INNER JOIN ' +
        'NF_ITENS B    ON A.NFI_CODI = B.NFI_CODI INNER JOIN FATURAMENTO ' +
        'F     ON A.CFA_ID = F.CFA_ID INNER JOIN PRODUTO P   ON B.PRO_ID ' +
        '= P.PRO_ID   WHERE NFI_STATUS = '#39'E'#39'      AND A.TDOC_ID = 3      ' +
        '    '
      'and A.NFI_DEST_CLI = 60943'
      'and convert(char(10), A.NFI_DEMI, 112) >= '#39'20110401'#39
      'and convert(char(10), A.NFI_DEMI, 112) <= '#39'20110415'#39
      'order by 1, 5')
    Left = 472
    Top = 120
    object qrRelNF_RETORNO: TStringField
      FieldName = 'NF_RETORNO'
      ReadOnly = True
      Size = 10
    end
    object qrRelNF_DEMI: TDateTimeField
      FieldName = 'NF_DEMI'
      ReadOnly = True
      DisplayFormat = 'dd/MM/yyyy'
    end
    object qrRelNF_SAIDA: TStringField
      FieldName = 'NF_SAIDA'
      Size = 10
    end
    object qrRelCFA_CODI: TStringField
      FieldName = 'CFA_CODI'
      Size = 4
    end
    object qrRelPRO_COD: TStringField
      FieldName = 'PRO_COD'
      Size = 16
    end
    object qrRelPRO_DESC: TStringField
      FieldName = 'PRO_DESC'
      Size = 60
    end
    object qrRelINF_QTDE: TFloatField
      FieldName = 'INF_QTDE'
    end
    object qrRelNFI_CODI_SIMB: TIntegerField
      FieldName = 'NFI_CODI_SIMB'
    end
    object qrRelINF_NFE: TStringField
      FieldName = 'INF_NFE'
      ReadOnly = True
      Size = 10
    end
    object qrRelTOTAL_ITEM: TFloatField
      FieldName = 'TOTAL_ITEM'
      ReadOnly = True
    end
    object qrRelTOTAL_ENTRADA: TFloatField
      FieldName = 'TOTAL_ENTRADA'
      ReadOnly = True
    end
  end
  object gtQRExcelExport1: TgtQRExcelExport
    About = 'Gnostice QuickReport Export (www.gnostice.com)'
    Visible = True
    RestrictToPages = True
    Version = '3.01'
    ShowSetupDialog = True
    BackgroundImageDisplayType = dtTile
    ImagePixelFormat = pf24bit
    ImageDPI = -1
    RichTextDPI = -1
    RichTextEncodingType = rtPlainText
    Formatting.DefaultGridDimension.Height = 12.7
    Formatting.DefaultGridDimension.Width = 8.43
    IncludedItems = [ikText, ikRichText]
    ExportImageFormat = ifBMP
    Left = 528
    Top = 408
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
    Left = 672
    Top = 416
  end
  object qrAux: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    Left = 368
    Top = 72
  end
  object STP_GERANOTAS: TADOStoredProc
    Connection = FMenu.ADOConnection
    ProcedureName = 'TRANSACAO_DIARIA_BUSCA;1'
    Parameters = <
      item
        Name = '@NFI_EMIT_CLI'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
      end
      item
        Name = '@DE'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
      end
      item
        Name = '@ATE'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
      end
      item
        Name = '@NOTA'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
      end
      item
        Name = '@CH'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
      end>
    Left = 280
    Top = 144
  end
end
