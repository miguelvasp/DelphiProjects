object FConsultaTAG: TFConsultaTAG
  Left = -1
  Top = 3
  Width = 800
  Height = 565
  BorderIcons = []
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 1
    Top = 0
    Width = 790
    Height = 45
    BevelInner = bvLowered
    TabOrder = 0
    object SpeedButton3: TSpeedButton
      Left = 757
      Top = 9
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
      Top = 5
      Width = 313
      Height = 29
      Caption = 'Consultas por Pallet TAG'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -24
      Font.Name = 'Georgia'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object SBT_VISU: TSpeedButton
      Left = 727
      Top = 9
      Width = 25
      Height = 25
      Hint = 'Visualizar Relat�rio'
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
  end
  object Panel7: TPanel
    Left = 1
    Top = 48
    Width = 789
    Height = 71
    BevelInner = bvLowered
    BevelOuter = bvSpace
    TabOrder = 1
    object Label20: TLabel
      Left = 73
      Top = 11
      Width = 57
      Height = 15
      Caption = 'Pallet TAG'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 133
      Top = 11
      Width = 80
      Height = 15
      Caption = 'N� Nota Fiscal '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 86
      Top = 51
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
    object Label11: TLabel
      Left = 134
      Top = 50
      Width = 80
      Height = 15
      Caption = 'N� Nota Fiscal '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object Label17: TLabel
      Left = 225
      Top = 50
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
    object Label15: TLabel
      Left = 237
      Top = 50
      Width = 80
      Height = 15
      Caption = 'N� Nota Fiscal '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 67
      Top = 31
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
    object Label7: TLabel
      Left = 133
      Top = 31
      Width = 80
      Height = 15
      Caption = 'N� Nota Fiscal '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 455
      Top = 11
      Width = 108
      Height = 15
      Caption = 'Per�odo de Entrada'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 574
      Top = 11
      Width = 80
      Height = 15
      Caption = 'N� Nota Fiscal '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 665
      Top = 10
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
    object Label6: TLabel
      Left = 677
      Top = 11
      Width = 80
      Height = 15
      Caption = 'N� Nota Fiscal '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 466
      Top = 51
      Width = 96
      Height = 15
      Caption = 'Per�odo de Sa�da'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 574
      Top = 50
      Width = 80
      Height = 15
      Caption = 'N� Nota Fiscal '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 665
      Top = 50
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
    object Label13: TLabel
      Left = 677
      Top = 50
      Width = 80
      Height = 15
      Caption = 'N� Nota Fiscal '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsItalic]
      ParentFont = False
    end
  end
  object GRID2: TwwDBGrid
    Left = 1
    Top = 120
    Width = 788
    Height = 403
    Selected.Strings = (
      'CLIN_RAZA'#9'19'#9'Cliente NBF'#9#9
      'ESTQ_DT_ENTRADA'#9'9'#9'Entrada'#9#9
      'ESTQ_DT_SAIDA'#9'9'#9'Sa�da'#9#9
      'ESTQ_TAG'#9'7'#9'TAG'#9#9
      'PRO_COD'#9'5'#9'Produto'#9#9
      'PRO_DESC'#9'42'#9'Descri��o'#9#9
      'ESTQ_QTDE'#9'10'#9'UV'#9#9
      'ESTQ_QTDE_RETIRA'#9'10'#9'UV Retirada'#9#9
      'POS_COD'#9'9'#9'C�d.Posi��o'#9#9
      'AR_NOME'#9'9'#9'�rea'#9#9)
    IniAttributes.Delimiter = ';;'
    TitleColor = clBlue
    FixedCols = 0
    ShowHorzScrollBar = True
    Color = clWhite
    DataSource = DS_ESTQ
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Arial Narrow'
    Font.Style = []
    Options = [dgAlwaysShowEditor, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    TabOrder = 2
    TitleAlignment = taCenter
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWhite
    TitleFont.Height = -11
    TitleFont.Name = 'Arial'
    TitleFont.Style = [fsBold]
    TitleLines = 1
    TitleButtons = False
    IndicatorIconColor = clYellow
  end
  object Q_ESTQ: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select A.ESTQ_DT_ENTRADA,A.ESTQ_DT_SAIDA,  '
      
        'A.ESTQ_TAG,A.ESTQ_QTDE,A.ESTQ_QTDE_RETIRA,B.POS_COD,C.PRO_COD,C.' +
        'PRO_DESC,'
      'D.AR_NOME,E.CLIN_RAZA'
      'from ESTOQUE A,'
      'AREA_POSICOES B,PRODUTO C,AREA D,CLIENTENBF E '
      'Where A.POS_ID = B.POS_ID  '
      'and   A.PRO_Id = C.PRO_ID '
      'and   B.AR_ID  = D.AR_ID  '
      'and   C.CLIN_ID = E.CLIN_ID')
    ValidateWithMask = True
    Left = 688
    Top = 304
    object Q_ESTQCLIN_RAZA: TStringField
      DisplayLabel = 'Cliente NBF'
      DisplayWidth = 19
      FieldName = 'CLIN_RAZA'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_RAZA'
      FixedChar = True
      Size = 50
    end
    object Q_ESTQESTQ_DT_ENTRADA: TDateTimeField
      DisplayLabel = 'Entrada'
      DisplayWidth = 9
      FieldName = 'ESTQ_DT_ENTRADA'
      Origin = 'NBFDADOS.ESTOQUE.ESTQ_DT_ENTRADA'
    end
    object Q_ESTQESTQ_DT_SAIDA: TDateTimeField
      DisplayLabel = 'Sa�da'
      DisplayWidth = 9
      FieldName = 'ESTQ_DT_SAIDA'
      Origin = 'NBFDADOS.ESTOQUE.ESTQ_DT_SAIDA'
    end
    object Q_ESTQESTQ_TAG: TIntegerField
      DisplayLabel = 'TAG'
      DisplayWidth = 7
      FieldName = 'ESTQ_TAG'
      Origin = 'NBFDADOS.ESTOQUE.ESTQ_TAG'
    end
    object Q_ESTQPRO_COD: TStringField
      DisplayLabel = 'Produto'
      DisplayWidth = 5
      FieldName = 'PRO_COD'
      Origin = 'NBFDADOS.PRODUTO.PRO_COD'
      FixedChar = True
      Size = 16
    end
    object Q_ESTQPRO_DESC: TStringField
      DisplayLabel = 'Descri��o'
      DisplayWidth = 42
      FieldName = 'PRO_DESC'
      Origin = 'NBFDADOS.PRODUTO.PRO_DESC'
      FixedChar = True
      Size = 40
    end
    object Q_ESTQESTQ_QTDE: TFloatField
      DisplayLabel = 'UV'
      DisplayWidth = 10
      FieldName = 'ESTQ_QTDE'
      Origin = 'NBFDADOS.ESTOQUE.ESTQ_QTDE'
      DisplayFormat = '0.000'
      EditFormat = '0.000'
    end
    object Q_ESTQESTQ_QTDE_RETIRA: TFloatField
      DisplayLabel = 'UV Retirada'
      DisplayWidth = 10
      FieldName = 'ESTQ_QTDE_RETIRA'
      Origin = 'NBFDADOS.ESTOQUE.ESTQ_QTDE_RETIRA'
      DisplayFormat = '0.000'
      EditFormat = '0.000'
    end
    object Q_ESTQPOS_COD: TStringField
      DisplayLabel = 'C�d.Posi��o'
      DisplayWidth = 9
      FieldName = 'POS_COD'
      Origin = 'NBFDADOS.AREA_POSICOES.POS_COD'
      FixedChar = True
      Size = 6
    end
    object Q_ESTQAR_NOME: TStringField
      DisplayLabel = '�rea'
      DisplayWidth = 9
      FieldName = 'AR_NOME'
      Origin = 'NBFDADOS.AREA.AR_NOME'
      FixedChar = True
      Size = 40
    end
  end
  object DS_ESTQ: TwwDataSource
    DataSet = Q_ESTQ
    Left = 690
    Top = 359
  end
end
