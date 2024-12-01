object FConsultaProduto: TFConsultaProduto
  Left = 186
  Top = 48
  Width = 812
  Height = 581
  AutoSize = True
  BorderIcons = []
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 795
    Height = 31
    BevelInner = bvLowered
    TabOrder = 0
    object SpeedButton3: TSpeedButton
      Left = 761
      Top = 3
      Width = 25
      Height = 25
      Hint = 'Sair'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000010000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
        03333377777777777F333301111111110333337F333333337F33330111111111
        0333337F333333337F333301111111110333337F333333337F33330111111111
        0333337F333333337F333301111111110333337F333333337F33330111111111
        0333337F3333333F7F333301111111B10333337F333333737F33330111111111
        0333337F333333337F333301111111110333337F33FFFFF37F3333011EEEEE11
        0333337F377777F37F3333011EEEEE110333337F37FFF7F37F3333011EEEEE11
        0333337F377777337F333301111111110333337F333333337F33330111111111
        0333337FFFFFFFFF7F3333000000000003333377777777777333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton3Click
    end
    object Label16: TLabel
      Left = 9
      Top = 2
      Width = 282
      Height = 29
      Caption = 'Consultas por Produto'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -24
      Font.Name = 'Georgia'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object SBT_VISU: TSpeedButton
      Left = 730
      Top = 3
      Width = 25
      Height = 25
      Hint = 'Visualizar Relatório'
      Glyph.Data = {
        42010000424D4201000000000000760000002800000013000000110000000100
        040000000000CC00000000000000000000001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888880008880000000000000888880008880FFFFFFFFFFF0888880008880
        FFFFFFFFFFF0888880008880F77F777F77F0888880008880FFFFFFFFFFF08888
        80008880F7F77F7F77F0888880008880FFFFFFFFFFF0888880008880F77F7F7F
        77F0888880008880FFFFFFFFFFF0888880008880F7777F77F7F0888880008880
        FFFFFFFFFFF0888880008880F77F77F777F0888880008880FFFFFFFFFFF08888
        80038880FFFFFFFFFFF08880000F88800000000000008880000F888888888888
        88888880000F}
      ParentShowHint = False
      ShowHint = True
      OnClick = SBT_VISUClick
    end
    object SpeedButton1: TSpeedButton
      Left = 699
      Top = 3
      Width = 25
      Height = 25
      Hint = 'Enviar Email (Nota Fiscal)'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333FFFFFFFFFFFFFFF000000000000
        000077777777777777770FFFFFFFFFFFFFF07F3333FFF33333370FFFF777FFFF
        FFF07F333777333333370FFFFFFFFFFFFFF07F3333FFFFFF33370FFFF777777F
        FFF07F33377777733FF70FFFFFFFFFFF99907F3FFF33333377770F777FFFFFFF
        9CA07F77733333337F370FFFFFFFFFFF9A907FFFFFFFFFFF7FF7000000000000
        0000777777777777777733333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      Visible = False
      OnClick = SpeedButton1Click
    end
  end
  object GRID1: TwwDBGrid
    Left = 0
    Top = 175
    Width = 796
    Height = 368
    Selected.Strings = (
      'OS_ID'#9'6'#9'OS'#9'F'
      'MANI_ID'#9'10'#9'Manifesto'#9'F'
      'NFI_NUMERO'#9'9'#9'NF'#9'F'
      'DESC_CLI'#9'25'#9'Emitente'#9'F'
      'NFI_DEMI'#9'9'#9'Data'#9'F'
      'NFI_DEST_RAZA'#9'35'#9'Destinatário'#9'F'
      'QTDEUV'#9'10'#9'Qtde. UV'#9'F'
      'PESOBRU'#9'11'#9'Peso Bruto'#9'F'
      'NFI_TOTA'#9'10'#9'Vlr. da Nota'#9'F'
      'QTDEPALLET'#9'10'#9'Qtde.Pallet'#9'F'
      'CH'#9'10'#9'CH'#9'F'
      'LOTE'#9'15'#9'LOTE'#9'F')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBlue
    FixedCols = 0
    ShowHorzScrollBar = True
    Color = clWhite
    DataSource = DS_CONSUL
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Arial Narrow'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    TabOrder = 1
    TitleAlignment = taCenter
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWhite
    TitleFont.Height = -11
    TitleFont.Name = 'Arial'
    TitleFont.Style = [fsBold]
    TitleLines = 1
    TitleButtons = False
    Visible = False
    OnDblClick = GRID1DblClick
  end
  object Panel7: TPanel
    Left = 0
    Top = 31
    Width = 795
    Height = 106
    BevelInner = bvLowered
    BevelOuter = bvSpace
    TabOrder = 2
    object Label1: TLabel
      Left = 5
      Top = 4
      Width = 785
      Height = 19
      Alignment = taCenter
      AutoSize = False
      Caption = 'Nota Fiscal de Retorno Simbólico'
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label4: TLabel
      Left = 580
      Top = 25
      Width = 80
      Height = 15
      Caption = 'Nº Nota Fiscal '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 3
      Top = 42
      Width = 104
      Height = 15
      Caption = 'Cliente Remetente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label20: TLabel
      Left = 43
      Top = 25
      Width = 64
      Height = 15
      Caption = 'Cliente NBF'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 62
      Top = 74
      Width = 45
      Height = 15
      Caption = 'Produto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 37
      Top = 58
      Width = 68
      Height = 15
      Caption = 'Cliente Final'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 545
      Top = 42
      Width = 113
      Height = 15
      Caption = 'Período Emissão de'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 660
      Top = 25
      Width = 80
      Height = 15
      Caption = 'Nº Nota Fiscal '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 109
      Top = 41
      Width = 80
      Height = 15
      Caption = 'Nº Nota Fiscal '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 109
      Top = 57
      Width = 80
      Height = 15
      Caption = 'Nº Nota Fiscal '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 109
      Top = 25
      Width = 80
      Height = 15
      Caption = 'Nº Nota Fiscal '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 109
      Top = 73
      Width = 80
      Height = 15
      Caption = 'Nº Nota Fiscal '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 660
      Top = 41
      Width = 80
      Height = 15
      Caption = 'Nº Nota Fiscal '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 639
      Top = 58
      Width = 18
      Height = 15
      Caption = 'até'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label14: TLabel
      Left = 661
      Top = 57
      Width = 80
      Height = 15
      Caption = 'Nº Nota Fiscal '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object Label15: TLabel
      Left = 212
      Top = 73
      Width = 80
      Height = 15
      Caption = 'Nº Nota Fiscal '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object Label17: TLabel
      Left = 200
      Top = 73
      Width = 4
      Height = 15
      Caption = '-'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label18: TLabel
      Left = 568
      Top = 74
      Width = 89
      Height = 15
      Caption = 'Tipo de Produto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label19: TLabel
      Left = 661
      Top = 73
      Width = 80
      Height = 15
      Caption = 'Nº Nota Fiscal '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object Label21: TLabel
      Left = 74
      Top = 89
      Width = 33
      Height = 15
      Caption = 'Batch'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label22: TLabel
      Left = 109
      Top = 89
      Width = 80
      Height = 15
      Caption = 'Nº Nota Fiscal '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object Label23: TLabel
      Left = 632
      Top = 89
      Width = 25
      Height = 15
      Caption = 'Lote'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label24: TLabel
      Left = 661
      Top = 89
      Width = 80
      Height = 15
      Caption = 'Nº Nota Fiscal '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object Label25: TLabel
      Left = 203
      Top = 89
      Width = 18
      Height = 15
      Caption = 'até'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label26: TLabel
      Left = 225
      Top = 89
      Width = 80
      Height = 15
      Caption = 'Nº Nota Fiscal '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsItalic]
      ParentFont = False
    end
  end
  object RadioGroup1: TRadioGroup
    Left = 0
    Top = 137
    Width = 796
    Height = 36
    Caption = 'Ordenação'
    Columns = 4
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ItemIndex = 0
    Items.Strings = (
      'OS'
      'Manifesto'
      'NF'
      'Data')
    ParentFont = False
    TabOrder = 3
    OnClick = RadioGroup1Click
  end
  object Q_CLINBF: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select CLIN_ID,CLIN_RAZA  from clientenbf'
      ''
      '')
    ValidateWithMask = True
    Left = 318
    Top = 212
    object Q_CLINBFCLIN_ID: TAutoIncField
      FieldName = 'CLIN_ID'
      Origin = 'NBFDADOS.clientenbf.CLIN_ID'
    end
    object Q_CLINBFCLIN_RAZA: TStringField
      FieldName = 'CLIN_RAZA'
      Origin = 'NBFDADOS.clientenbf.CLIN_RAZA'
      FixedChar = True
      Size = 50
    end
  end
  object Q_CONSUL: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    DataSource = FMenu.DS_Usuario
    SQL.Strings = (
      'Select A.*, C.os_DATA'
      'from CONSULTA_PRODUTO A '
      'INNER JOIN NF B ON A.NFI_CODI = B.NFI_CODI '
      'INNER JOIN OS C ON A.OS_ID = C.OS_ID'
      'where CH = :CH'
      '')
    ValidateWithMask = True
    Left = 232
    Top = 185
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'CH'
        ParamType = ptUnknown
      end>
    object Q_CONSULOS_ID: TIntegerField
      DisplayLabel = 'OS'
      DisplayWidth = 6
      FieldName = 'OS_ID'
      Origin = 'NBFDADOS.CONSULTA_NF.OS_ID'
    end
    object Q_CONSULMANI_ID: TIntegerField
      DisplayLabel = 'Manifesto'
      DisplayWidth = 10
      FieldName = 'MANI_ID'
      Origin = 'NBFDADOS.CONSULTA_NF.MANI_ID'
    end
    object Q_CONSULNFI_NUMERO: TStringField
      Alignment = taRightJustify
      DisplayLabel = 'NF'
      DisplayWidth = 9
      FieldName = 'NFI_NUMERO'
      Origin = 'NBFDADOS.CONSULTA_NF.NFI_NUMERO'
      FixedChar = True
      Size = 10
    end
    object Q_CONSULDESC_CLI: TStringField
      DisplayLabel = 'Emitente'
      DisplayWidth = 25
      FieldKind = fkLookup
      FieldName = 'DESC_CLI'
      LookupDataSet = Q_CLINBF
      LookupKeyFields = 'CLIN_ID'
      LookupResultField = 'CLIN_RAZA'
      KeyFields = 'NFI_EMIT_CLI'
      Size = 40
      Lookup = True
    end
    object Q_CONSULNFI_DEMI: TDateTimeField
      DisplayLabel = 'Data'
      DisplayWidth = 9
      FieldName = 'NFI_DEMI'
      Origin = 'NBFDADOS.CONSULTA_NF.NFI_DEMI'
    end
    object Q_CONSULNFI_DEST_RAZA: TStringField
      DisplayLabel = 'Destinatário'
      DisplayWidth = 35
      FieldName = 'NFI_DEST_RAZA'
      Origin = 'NBFDADOS.CONSULTA_NF.NFI_DEST_RAZA'
      FixedChar = True
      Size = 40
    end
    object Q_CONSULQTDEUV: TFloatField
      DisplayLabel = 'Qtde. UV'
      DisplayWidth = 10
      FieldName = 'QTDEUV'
      Origin = 'NBFDADOS.CONSULTA_NF.QTDEUV'
      DisplayFormat = '0.000'
      EditFormat = '0.000'
    end
    object Q_CONSULPESOBRU: TFloatField
      DisplayLabel = 'Peso Bruto'
      DisplayWidth = 11
      FieldName = 'PESOBRU'
      Origin = 'NBFDADOS.CONSULTA_NF.PESOBRU'
      DisplayFormat = '###,###,##0.0000'
      EditFormat = '###,###,##0.0000'
    end
    object Q_CONSULNFI_TOTA: TFloatField
      DisplayLabel = 'Vlr. da Nota'
      DisplayWidth = 10
      FieldName = 'NFI_TOTA'
      Origin = 'NBFDADOS.CONSULTA_NF.NFI_TOTA'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_CONSULQTDEPALLET: TIntegerField
      DisplayLabel = 'Qtde.Pallet'
      DisplayWidth = 10
      FieldName = 'QTDEPALLET'
      Origin = 'NBFDADOS.CONSULTA_NF.QTDEPALLET'
    end
    object Q_CONSULCH: TIntegerField
      DisplayWidth = 10
      FieldName = 'CH'
    end
    object Q_CONSULLOTE: TStringField
      DisplayWidth = 50
      FieldName = 'LOTE'
      FixedChar = True
      Size = 50
    end
    object Q_CONSULNFI_EMIT_CLI: TIntegerField
      FieldName = 'NFI_EMIT_CLI'
      Origin = 'NBFDADOS.CONSULTA_NF.NFI_EMIT_CLI'
      Visible = False
    end
    object Q_CONSULNFI_DEST_CLI: TIntegerField
      FieldName = 'NFI_DEST_CLI'
      Origin = 'NBFDADOS.CONSULTA_NF.NFI_DEST_CLI'
      Visible = False
    end
    object Q_CONSULNFI_CODI: TIntegerField
      FieldName = 'NFI_CODI'
      Origin = 'NBFDADOS.CONSULTA_NF.NFI_CODI'
      Visible = False
    end
    object Q_CONSULos_DATA: TDateTimeField
      FieldName = 'os_DATA'
      Visible = False
      DisplayFormat = 'dd/MM/yy'
    end
    object Q_CONSULVENCIMENTO: TDateTimeField
      FieldName = 'VENCIMENTO'
      Visible = False
      DisplayFormat = 'DD/MM/YYYY'
    end
  end
  object DS_CONSUL: TwwDataSource
    DataSet = Q_CONSUL
    Left = 232
    Top = 233
  end
end
