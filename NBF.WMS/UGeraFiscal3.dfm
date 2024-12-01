object FGeraFiscal3: TFGeraFiscal3
  Left = 147
  Top = 154
  BorderIcons = []
  BorderStyle = bsSingle
  ClientHeight = 229
  ClientWidth = 497
  Color = clGray
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 4
    Top = 4
    Width = 489
    Height = 49
    BevelInner = bvLowered
    TabOrder = 0
    object Label4: TLabel
      Left = 9
      Top = 9
      Width = 200
      Height = 29
      Caption = 'Geração Cargill'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -24
      Font.Name = 'Georgia'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object btnFechar: TSpeedButton
      Left = 455
      Top = 12
      Width = 26
      Height = 25
      Hint = 'Fechar cadastro.'
      Glyph.Data = {
        76020000424D7602000000000000760000002800000040000000100000000100
        0400000000000002000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
        03333388888888888F3333000000000003333388888888888F33330111111111
        0333338F333333338F333301BBBBBBBB033333883F3333338F33330111111111
        0333338F333333338F3333011BBBBBBB0333338F83F333338F33330111111111
        0333338F333333338F33330111BBBBBB0333338F383F33338F33330111111111
        0333338F333333338F333301110BBBBB0333338F338F33338F33330111111111
        0333338F333333338F333301110BBBBB0333338F338F33338F33330111111111
        0333338F3333333F8F333301110BBBBB0333338F338F33338F333301111111B1
        0333338F333333838F333301110BBBBB0333338F338F33338F33330111111111
        0333338F333333338F333301110BBBBB0333338F338F33338F33330111111111
        0333338F33FFFFF38F333301110BBBBB0333338F338FF3338F3333011EEEEE11
        0333338F388888F38F33330111B0BBBB0333338F338833338F3333011EEEEE11
        0333338F38FFF8F38F333301110BBBBB0333338F338F33338F3333011EEEEE11
        0333338F388888338F333301110BBBBB0333338F3F8F33338F33330111111111
        0333338F333333338F333301E10BBBBB0333338F8F8F33338F33330111111111
        0333338FFFFFFFFF8F333301EE0BBBBB0333338F888FFFFF8F33330000000000
        0333338888888888833333000000000003333388888888888333}
      NumGlyphs = 4
      ParentShowHint = False
      ShowHint = True
      OnClick = btnFecharClick
    end
  end
  object Panel2: TPanel
    Left = 4
    Top = 56
    Width = 489
    Height = 169
    BevelInner = bvLowered
    TabOrder = 1
    object Label3: TLabel
      Left = 9
      Top = 4
      Width = 57
      Height = 15
      Caption = 'Salvar em'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 69
      Top = 4
      Width = 416
      Height = 15
      AutoSize = False
      Caption = 'C:\Projetos em Manuteção\NBF'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BitBtn1: TBitBtn
      Left = 350
      Top = 72
      Width = 128
      Height = 26
      Caption = 'Gerar Arquivos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003333330B7FFF
        FFB0333333777F3333773333330B7FFFFFB0333333777F3333773333330B7FFF
        FFB0333333777F3333773333330B7FFFFFB03FFFFF777FFFFF77000000000077
        007077777777777777770FFFFFFFF00077B07F33333337FFFF770FFFFFFFF000
        7BB07F3FF3FFF77FF7770F00F000F00090077F77377737777F770FFFFFFFF039
        99337F3FFFF3F7F777FF0F0000F0F09999937F7777373777777F0FFFFFFFF999
        99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
        99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
        93337FFFF7737777733300000033333333337777773333333333}
      NumGlyphs = 2
    end
    object DriveComboBox1: TDriveComboBox
      Left = 8
      Top = 22
      Width = 329
      Height = 19
      Color = clWhite
      DirList = DirectoryListBox1
      TabOrder = 1
      TextCase = tcUpperCase
    end
    object DirectoryListBox1: TDirectoryListBox
      Left = 8
      Top = 40
      Width = 329
      Height = 97
      DirLabel = Label1
      ItemHeight = 16
      TabOrder = 2
    end
    object ProgressBar1: TProgressBar
      Left = 8
      Top = 144
      Width = 472
      Height = 16
      Min = 0
      Max = 100
      TabOrder = 3
    end
  end
  object Q_AUXEST: TwwQuery
    DatabaseName = 'NBFDADOS'
    SessionName = 'Sec_BaseDados'
    DataSource = DS_ESTOQUE
    SQL.Strings = (
      'SELECT PRO_ID, '
      #9'SUM(ESTQ_QTDE) '
      'FROM ESTOQUE '
      'WHERE AR_ID IN (SELECT AR_ID_AVARIA FROM PARAMETRO) AND'
      'PRO_ID = :PRO_ID'
      'GROUP BY PRO_ID')
    ValidateWithMask = True
    Left = 444
    Top = 160
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'PRO_ID'
        ParamType = ptUnknown
      end>
  end
  object Q_ESTOQUE: TwwQuery
    DatabaseName = 'NBFDADOS'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'SELECT B.PRO_ID,'
      '        B.PRO_COD,'
      '        B.PRO_DESC,'
      '        SUM(A.ESTQ_QTDE) AS VTOT'
      'FROM ESTOQUE A,'
      #9'PRODUTO B'
      'WHERE A.AR_ID IN'
      #9'('
      #9'SELECT AR_ID_AVARIA'
      #9'FROM PARAMETRO'
      #9')'
      'AND A.PRO_ID = B.PRO_ID'
      'AND B.CLIN_ID IN('
      #9#9'SELECT CLIN_ID FROM CLIENTENBF WHERE CLIN_RAZA LIKE '#39'CARGILL%'#39
      #9#9')'
      'AND A.ESTQ_QTDE_RETIRA = 0'
      'GROUP BY B.PRO_ID, B.PRO_COD, B.PRO_DESC'
      ''
      ''
      ' '
      ' ')
    ValidateWithMask = True
    Left = 388
    Top = 176
    object Q_ESTOQUEPRO_ID: TAutoIncField
      FieldName = 'PRO_ID'
    end
    object Q_ESTOQUEPRO_COD: TStringField
      FieldName = 'PRO_COD'
      FixedChar = True
      Size = 16
    end
    object Q_ESTOQUEPRO_DESC: TStringField
      FieldName = 'PRO_DESC'
      FixedChar = True
      Size = 40
    end
    object Q_ESTOQUEVAVA: TFloatField
      FieldKind = fkLookup
      FieldName = 'VAVA'
      LookupDataSet = Q_AUXEST
      LookupKeyFields = 'PRO_ID'
      LookupResultField = 'COLUMN2'
      KeyFields = 'PRO_ID'
      Lookup = True
    end
    object Q_ESTOQUEVTOT: TFloatField
      FieldName = 'VTOT'
    end
  end
  object Q_NF: TwwQuery
    DatabaseName = 'NBFDADOS'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'SELECT A.NFI_CODI,'
      #9'A.NFI_NUMERO,'
      #9'A.NFI_DEMI,'
      #9'C.NBFINAL_COD_CLIN,'
      #9'B.CLIF_RAZA,'
      #9'A.NFI_TOTA,'
      #9'A.NFI_PBRU,'
      #9'A.NFI_VOL,'
      '        A.NFI_QTDEPALLET,'
      '        A.NFI_QTDEUV'
      'FROM NF A,'
      #9'CLIENTEFINAL B,'
      #9'CLIENTE_NBFINAL C'
      'WHERE A.NFI_DEST_CLI = B.CLIF_ID'
      'AND B.CLIF_ID = C.CLIF_ID'
      
        'AND A.NFI_EMIT_CLI IN (SELECT CLIN_ID FROM CLIENTENBF WHERE CLIN' +
        '_RAZA LIKE '#39'CARGILL%'#39')'
      
        'AND CONVERT(CHAR(10),NFI_DEMI,110) = CONVERT(CHAR(10),GETDATE(),' +
        '110)'
      'ORDER BY B.CLIF_RAZA, A.NFI_TOTA'
      ''
      ''
      ''
      ' ')
    ValidateWithMask = True
    Left = 364
    Top = 80
    object Q_NFNFI_CODI: TAutoIncField
      FieldName = 'NFI_CODI'
    end
    object Q_NFNFI_NUMERO: TStringField
      FieldName = 'NFI_NUMERO'
      FixedChar = True
      Size = 10
    end
    object Q_NFNFI_DEMI: TDateTimeField
      FieldName = 'NFI_DEMI'
      DisplayFormat = 'DD/MM/YYYY'
    end
    object Q_NFNBFINAL_COD_CLIN: TStringField
      FieldName = 'NBFINAL_COD_CLIN'
      FixedChar = True
      Size = 10
    end
    object Q_NFCLIF_RAZA: TStringField
      FieldName = 'CLIF_RAZA'
      FixedChar = True
      Size = 50
    end
    object Q_NFNFI_TOTA: TFloatField
      FieldName = 'NFI_TOTA'
    end
    object Q_NFNFI_PBRU: TFloatField
      FieldName = 'NFI_PBRU'
    end
    object Q_NFNFI_VOL: TFloatField
      FieldName = 'NFI_VOL'
    end
    object Q_NFNFI_QTDEPALLET: TIntegerField
      FieldName = 'NFI_QTDEPALLET'
    end
    object Q_NFNFI_QTDEUV: TFloatField
      FieldName = 'NFI_QTDEUV'
    end
  end
  object DS_ESTOQUE: TwwDataSource
    DataSet = Q_ESTOQUE
    Left = 436
    Top = 108
  end
end
