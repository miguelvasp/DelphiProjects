object FConsultaPosicao: TFConsultaPosicao
  Left = 141
  Top = 47
  Width = 823
  Height = 595
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
  object Label1: TLabel
    Left = 0
    Top = 46
    Width = 793
    Height = 19
    Alignment = taCenter
    AutoSize = False
    Caption = 'Posições Ocupadas'
    Color = clYellow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label48: TLabel
    Left = 360
    Top = 530
    Width = 51
    Height = 15
    Caption = 'Ocupada'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 493
    Top = 530
    Width = 28
    Height = 15
    Caption = 'Livre'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 624
    Top = 530
    Width = 60
    Height = 15
    Caption = 'Bloqueada'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 794
    Height = 45
    BevelInner = bvLowered
    TabOrder = 0
    object SpeedButton3: TSpeedButton
      Left = 760
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
      Width = 277
      Height = 29
      Caption = 'Consultas por Posição'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -24
      Font.Name = 'Georgia'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object SBT_VISU: TSpeedButton
      Left = 730
      Top = 9
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
    object BitBtn1: TBitBtn
      Left = 504
      Top = 8
      Width = 129
      Height = 33
      Caption = 'Liberar Posição'
      TabOrder = 0
      OnClick = BitBtn1Click
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
        056593056593056593FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FF056593AFF2FEAAEFFFA5F0FE056593FF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FF066795056593FFFFFF95EAFF93EBFF8EE9FB056593FF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0F729E84E2FB056593FFFFFF7FE5
        FF82EAFF6CD7F4056593FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0668972A93BB
        7AE6FE056593FFFFFF6CE1FF70E7FF35A9CF056593FF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FF025F8F2896BF67E2FF056593FFFFFF5BDEFF54D9FC1079A7FF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FF066897269AC555E1FF056593FFFFFF4B
        DEFF1A8FBBFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF04639123A1
        CC43DDFF056593FFFFFF27B5E0066796FF00FFFF00FF056695FF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF0464921EA4D032D7FF056593FFFFFF1AABDA05669505669514CB
        FF056695FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FF04639116A3D122D3FF056593FFFFFF
        19CCFF16CBFF14CBFF12CEFF0566950566950566950566950566950566950668
        97FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF05679611
        ABDE13CFFF056593FFFFFF0CC6FF0AC5FF09C5FE09C5FF0AC7FF0DC7FF11C9FE
        16CAFE1BCEFF1FCBFB056695FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FF05699909ADE209CBFF0565930BC5FE0DC6FE12C9FE17CAFE1C
        CCFE20CEFE26CFFE2AD0FE2FD1FE36D7FF3AD3FB056695FF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF056A9A0FAFE21ACFFF21D1FF22CE
        FE28CFFE2DD0FE33D3FE38D4FE3FD5FE43D7FE49D8FF50DAFE57E0FF57D8FA05
        6695FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF046391
        27CAF735D4FF3AD4FE40D5FE45D8FE4BD9FF52DAFF58DDFF5DDDFF65E0FF6EE3
        FF75E5FF66D3F0066897FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FF04639145D7FC4DDAFF52DAFF58DCFF5EDEFF66E0FF6CE1FF73E2FF
        78E3FF87EAFF7DDDF891EBFE91EBFE066897FF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FF04639168E6FF69E0FF6FE2FF76E3FF7DE5FF83
        E6FF8BE7FF92EAFFA5F3FFFFFFFF056593B5F3FEB5F3FE066897FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0E73A06DD9F782E7FF86E7FF8CE9
        FF95EAFF9CEBFFA3EEFFABEFFFBFF8FFFFFFFF056593056593CCFEFFCCFEFF06
        6897FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0463919EF0FF
        A0EEFFA4EDFFABEFFFB1F0FFB6F0FFBAF2FFC9FBFFFFFFFF056593FF00FF0565
        93C6FBFFC6FBFF066897FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FF06689755ADCCFFFFFFBBF3FFBBF2FFBBF2FFBBF2FFC6FAFFFFFFFF056593
        FF00FFFF00FF056593BCF4FFBCF4FF066897FF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FF04649269BAD5FFFFFFBBF2FFBAF2FFC0F6FF7B
        C7DE056593056593056593056593056593BCF4FFBCF4FF066897FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF05669570C0DAFFFF
        FFBFF4FFBDF4FF8CD3E98FD5EAA0E2F3ACEAFABCF4FFD3FFFFB7F0FBB7F0FB06
        6897FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF06689772C1DAFFFFFFB7F0FBB7F0FBB7F0FBB7F0FBB7F0FBB7F0FBB7F0
        FBB7F0FB066897FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FF066897066897066897066897066897066897
        066897066897066897066897FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    end
  end
  object Panel7: TPanel
    Left = 0
    Top = 66
    Width = 794
    Height = 60
    BevelInner = bvLowered
    BevelOuter = bvSpace
    TabOrder = 1
    object Label4: TLabel
      Left = 48
      Top = 32
      Width = 63
      Height = 15
      Caption = 'Posição de'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label20: TLabel
      Left = 85
      Top = 8
      Width = 27
      Height = 15
      Caption = 'Área'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 116
      Top = 32
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
      Left = 115
      Top = 8
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
    object Label2: TLabel
      Left = 213
      Top = 32
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
    object Label5: TLabel
      Left = 241
      Top = 32
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
  object GRID2: TwwDBGrid
    Left = -8
    Top = 128
    Width = 793
    Height = 397
    Selected.Strings = (
      'AR_NOME'#9'9'#9'Área'#9'F'
      'POS_COD'#9'9'#9'Cód.Posição'#9'F'
      'ESTQ_TAG'#9'8'#9'Pallet TAG'#9'F'
      'PRO_COD'#9'5'#9'Cód.Produto'#9'F'
      'PRO_DESC'#9'37'#9'Produto Descrição'#9'F'
      'ESTQ_QTDE'#9'10'#9'Qtde. UV'#9'F')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBlue
    FixedCols = 0
    ShowHorzScrollBar = True
    Color = clWhite
    DataSource = DS_POS
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    KeyOptions = []
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
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
    OnCalcCellColors = GRID2CalcCellColors
    OnDblClick = GRID2DblClick
    IndicatorIconColor = clYellow
  end
  object Panel1: TPanel
    Left = 289
    Top = 528
    Width = 68
    Height = 18
    BevelInner = bvLowered
    BevelOuter = bvSpace
    Color = 4892159
    TabOrder = 3
  end
  object Panel2: TPanel
    Left = 422
    Top = 528
    Width = 68
    Height = 18
    BevelInner = bvLowered
    BevelOuter = bvSpace
    Color = 16761152
    TabOrder = 4
  end
  object Panel4: TPanel
    Left = 545
    Top = 528
    Width = 68
    Height = 18
    BevelInner = bvLowered
    BevelOuter = bvSpace
    Color = clRed
    TabOrder = 5
  end
  object Q_ESTQ: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    DataSource = DS_POS
    SQL.Strings = (
      'Select A.POS_ID,A.ESTQ_TAG,A.ESTQ_QTDE,B.POS_COD,C.PRO_COD'
      ',C.PRO_DESC'
      'from'
      'ESTOQUE A,AREA_POSICOES B,PRODUTO C'
      'Where A.POS_ID = B.POS_ID and A.PRO_Id = C.PRO_ID'
      'and A.POS_ID = :POS_ID'
      '')
    ValidateWithMask = True
    Left = 688
    Top = 304
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'POS_ID'
        ParamType = ptUnknown
      end>
    object Q_ESTQPOS_COD: TStringField
      DisplayLabel = 'Cód.Posição'
      DisplayWidth = 6
      FieldName = 'POS_COD'
      Origin = 'NBFDADOS.AREA_POSICOES.POS_COD'
      FixedChar = True
      Size = 6
    end
    object Q_ESTQESTQ_TAG: TIntegerField
      DisplayLabel = 'Pallet TAG'
      DisplayWidth = 8
      FieldName = 'ESTQ_TAG'
      Origin = 'NBFDADOS.ESTOQUE.ESTQ_TAG'
    end
    object Q_ESTQPRO_COD: TStringField
      DisplayLabel = 'Cód.Produto'
      DisplayWidth = 8
      FieldName = 'PRO_COD'
      Origin = 'NBFDADOS.PRODUTO.PRO_COD'
      FixedChar = True
      Size = 16
    end
    object Q_ESTQPRO_DESC: TStringField
      DisplayLabel = 'Descrição Produto'
      DisplayWidth = 40
      FieldName = 'PRO_DESC'
      Origin = 'NBFDADOS.PRODUTO.PRO_DESC'
      FixedChar = True
      Size = 40
    end
    object Q_ESTQESTQ_QTDE: TFloatField
      DisplayLabel = 'Qtde. UV'
      DisplayWidth = 10
      FieldName = 'ESTQ_QTDE'
      Origin = 'NBFDADOS.ESTOQUE.ESTQ_QTDE'
      DisplayFormat = '0.000'
      EditFormat = '0.000'
    end
  end
  object DS_ESTQ: TwwDataSource
    DataSet = Q_ESTQ
    Left = 690
    Top = 359
  end
  object Q_POS: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'SELECT A.*,B.AR_NOME,C.ESTQ_TAG,C.ESTQ_QTDE,D.PRO_COD,D.PRO_DESC'
      ' FROM  AREA_POSICOES A,AREA B,ESTOQUE C,PRODUTO D '
      'where A.AR_ID = B.AR_ID'
      'and A.POS_Id = C.POS_ID'
      'and C.PRO_ID = D.PRO_ID'
      ' order by A.POS_COD'
      '')
    ValidateWithMask = True
    Left = 685
    Top = 168
    object Q_POSAR_NOME: TStringField
      DisplayLabel = 'Área'
      DisplayWidth = 9
      FieldName = 'AR_NOME'
      Origin = 'NBFDADOS.AREA.AR_NOME'
      FixedChar = True
      Size = 40
    end
    object Q_POSPOS_COD: TStringField
      Alignment = taCenter
      DisplayLabel = 'Cód.Posição'
      DisplayWidth = 9
      FieldName = 'POS_COD'
      Origin = 'NBFDADOS.AREA_POSICOES.POS_COD'
      FixedChar = True
      Size = 6
    end
    object Q_POSESTQ_TAG: TIntegerField
      DisplayLabel = 'Pallet TAG'
      DisplayWidth = 8
      FieldName = 'ESTQ_TAG'
      Origin = 'NBFDADOS.ESTOQUE.ESTQ_TAG'
    end
    object Q_POSPRO_COD: TStringField
      DisplayLabel = 'Cód.Produto'
      DisplayWidth = 5
      FieldName = 'PRO_COD'
      Origin = 'NBFDADOS.PRODUTO.PRO_COD'
      FixedChar = True
      Size = 16
    end
    object Q_POSPRO_DESC: TStringField
      DisplayLabel = 'Produto Descrição'
      DisplayWidth = 37
      FieldName = 'PRO_DESC'
      Origin = 'NBFDADOS.PRODUTO.PRO_DESC'
      FixedChar = True
      Size = 40
    end
    object Q_POSESTQ_QTDE: TFloatField
      DisplayLabel = 'Qtde. UV'
      DisplayWidth = 10
      FieldName = 'ESTQ_QTDE'
      Origin = 'NBFDADOS.ESTOQUE.ESTQ_QTDE'
      DisplayFormat = '0.000'
      EditFormat = '0.000'
    end
    object Q_POSPOS_PESOMAX: TFloatField
      Alignment = taCenter
      DisplayLabel = 'Peso Máximo'
      DisplayWidth = 30
      FieldName = 'POS_PESOMAX'
      Origin = 'NBFDADOS.AREA_POSICOES.POS_PESOMAX'
      Visible = False
      DisplayFormat = '0.0000'
      EditFormat = '0.0000'
    end
    object Q_POSPOS_ID: TAutoIncField
      FieldName = 'POS_ID'
      Origin = 'NBFDADOS.AREA_POSICOES.POS_ID'
      Visible = False
    end
    object Q_POSAR_ID: TIntegerField
      FieldName = 'AR_ID'
      Origin = 'NBFDADOS.AREA_POSICOES.AR_ID'
      Visible = False
    end
    object Q_POSPOS_UTILIZADO: TStringField
      FieldName = 'POS_UTILIZADO'
      Origin = 'NBFDADOS.AREA_POSICOES.POS_UTILIZADO'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_POSSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'NBFDADOS.AREA_POSICOES.STATUS'
      FixedChar = True
      Size = 1
    end
  end
  object DS_POS: TwwDataSource
    DataSet = Q_POS
    OnDataChange = DS_POSDataChange
    Left = 687
    Top = 223
  end
  object qrLibera: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    DataSource = DS_POS
    SQL.Strings = (
      'UPDATE AREA_POSICOES SET POS_UTILIZADO = '#39'N'#39
      'WHERE POS_ID = :POS_ID')
    ValidateWithMask = True
    Left = 488
    Top = 296
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'POS_ID'
        ParamType = ptUnknown
      end>
  end
end
