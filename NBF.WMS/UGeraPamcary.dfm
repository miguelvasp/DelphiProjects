object FGeraPamcary: TFGeraPamcary
  Left = 275
  Top = 45
  BorderIcons = []
  BorderStyle = bsSingle
  ClientHeight = 589
  ClientWidth = 821
  Color = clGray
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
  object Panel1: TPanel
    Left = 4
    Top = 4
    Width = 813
    Height = 49
    BevelInner = bvLowered
    TabOrder = 0
    object Label4: TLabel
      Left = 9
      Top = 9
      Width = 226
      Height = 29
      Caption = 'Gera��o Pamcary'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -24
      Font.Name = 'Georgia'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object btnFechar: TSpeedButton
      Left = 751
      Top = 11
      Width = 48
      Height = 30
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
    Width = 813
    Height = 529
    BevelInner = bvLowered
    TabOrder = 1
    object Label3: TLabel
      Left = 9
      Top = 317
      Width = 53
      Height = 15
      Caption = 'Gerar em'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 65
      Top = 318
      Width = 416
      Height = 15
      AutoSize = False
      Caption = 'D:\sources\NBF D7'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 9
      Top = 68
      Width = 29
      Height = 15
      Caption = 'Data:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SpeedButton1: TSpeedButton
      Left = 123
      Top = 63
      Width = 121
      Height = 24
      Hint = 'Apresenta os manifestos da data digitada'
      Caption = '&Filtrar Manifestos'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00370777033333
        3330337F3F7F33333F3787070003333707303F737773333373F7007703333330
        700077337F3333373777887007333337007733F773F333337733700070333333
        077037773733333F7F37703707333300080737F373333377737F003333333307
        78087733FFF3337FFF7F33300033330008073F3777F33F777F73073070370733
        078073F7F7FF73F37FF7700070007037007837773777F73377FF007777700730
        70007733FFF77F37377707700077033707307F37773F7FFF7337080777070003
        3330737F3F7F777F333778080707770333333F7F737F3F7F3333080787070003
        33337F73FF737773333307800077033333337337773373333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton1Click
    end
    object Label5: TLabel
      Left = 9
      Top = 95
      Width = 66
      Height = 15
      Caption = 'Manifestos:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 343
      Top = 95
      Width = 100
      Height = 15
      Caption = 'NFs do Manifesto:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SpeedButton2: TSpeedButton
      Left = 301
      Top = 87
      Width = 37
      Height = 22
      Hint = 'Desmarca todos os manifestos'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        55555FFFFFFF5F55FFF5777777757559995777777775755777F7555555555550
        305555555555FF57F7F555555550055BB0555555555775F777F55555550FB000
        005555555575577777F5555550FB0BF0F05555555755755757F555550FBFBF0F
        B05555557F55557557F555550BFBF0FB005555557F55575577F555500FBFBFB0
        B05555577F555557F7F5550E0BFBFB00B055557575F55577F7F550EEE0BFB0B0
        B05557FF575F5757F7F5000EEE0BFBF0B055777FF575FFF7F7F50000EEE00000
        B0557777FF577777F7F500000E055550805577777F7555575755500000555555
        05555777775555557F5555000555555505555577755555557555}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton2Click
    end
    object SpeedButton3: TSpeedButton
      Left = 263
      Top = 87
      Width = 37
      Height = 22
      Hint = 'Marca todos os manifestos'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555775777777
        57705557757777775FF7555555555555000755555555555F777F555555555550
        87075555555555F7577F5555555555088805555555555F755F75555555555033
        805555555555F755F75555555555033B05555555555F755F75555555555033B0
        5555555555F755F75555555555033B05555555555F755F75555555555033B055
        55555555F755F75555555555033B05555555555F755F75555555555033B05555
        555555F75FF75555555555030B05555555555F7F7F75555555555000B0555555
        5555F777F7555555555501900555555555557777755555555555099055555555
        5555777755555555555550055555555555555775555555555555}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton3Click
    end
    object Label6: TLabel
      Left = 9
      Top = 12
      Width = 51
      Height = 15
      Caption = 'Empresa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BitBtn1: TBitBtn
      Left = 363
      Top = 393
      Width = 154
      Height = 89
      Hint = 'Gera arquivo Pamcary'
      Caption = '&Gerar Arquivo'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
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
      Top = 336
      Width = 329
      Height = 19
      Color = clWhite
      DirList = DirectoryListBox1
      TabOrder = 1
      TextCase = tcUpperCase
    end
    object DirectoryListBox1: TDirectoryListBox
      Left = 8
      Top = 362
      Width = 328
      Height = 160
      DirLabel = Label1
      ItemHeight = 16
      TabOrder = 2
    end
    object MaskEdit1: TMaskEdit
      Left = 43
      Top = 65
      Width = 70
      Height = 21
      EditMask = '!99/99/9999;1;_'
      MaxLength = 10
      TabOrder = 3
      Text = '  /  /    '
      OnKeyUp = MaskEdit1KeyUp
    end
    object wwDBGrid1: TwwDBGrid
      Left = 8
      Top = 111
      Width = 331
      Height = 202
      Selected.Strings = (
        'FLAG'#9'2'#9' '#9'F'
        'MANI_ID'#9'8'#9'N�'#9'F'
        'MANI_PESO'#9'10'#9'Peso Tot. (kg)'#9'F'
        'MANI_VOLUME'#9'10'#9'Vol. Tot. (M3)'#9'F'
        'TOTAL'#9'10'#9'Total (R$)'#9'F')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DS_MOSTRAMANI
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      TitleAlignment = taLeftJustify
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = [fsBold]
      TitleLines = 1
      TitleButtons = False
    end
    object wwDBGrid2: TwwDBGrid
      Left = 342
      Top = 111
      Width = 336
      Height = 202
      Selected.Strings = (
        'NFI_NUMERO'#9'9'#9'N�'
        'NFI_TOTA'#9'10'#9'Total da NF'
        'CLIN_NOME'#9'28'#9'Cliente NBF'#9'F')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DS_MOSTRANFS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      TitleLines = 1
      TitleButtons = False
    end
    object wwDBLookupCombo1: TwwDBLookupCombo
      Left = 64
      Top = 8
      Width = 361
      Height = 21
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'PAR_NOME'#9'30'#9'PAR_NOME'#9'F')
      LookupTable = qrParamentro
      LookupField = 'PAR_ID'
      TabOrder = 6
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
    end
  end
  object Q_TP10: TwwQuery
    DatabaseName = 'NBFDADOS'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'SELECT * FROM MANIFESTO')
    ValidateWithMask = True
    Left = 557
    Top = 454
    object Q_TP10MANI_ID: TAutoIncField
      FieldName = 'MANI_ID'
      Origin = 'NBFDADOS.MANIFESTO.MANI_ID'
    end
    object Q_TP10MANI_DATA: TDateTimeField
      FieldName = 'MANI_DATA'
      Origin = 'NBFDADOS.MANIFESTO.MANI_DATA'
      DisplayFormat = 'DD/MM/YYYY'
    end
    object Q_TP10TRANS_ID: TIntegerField
      FieldName = 'TRANS_ID'
      Origin = 'NBFDADOS.MANIFESTO.TRANS_ID'
    end
    object Q_TP10MOT_ID: TIntegerField
      FieldName = 'MOT_ID'
      Origin = 'NBFDADOS.MANIFESTO.MOT_ID'
    end
    object Q_TP10MANI_ENT_COL: TStringField
      FieldName = 'MANI_ENT_COL'
      Origin = 'NBFDADOS.MANIFESTO.MANI_ENT_COL'
      FixedChar = True
      Size = 2
    end
  end
  object Q_NBF: TwwQuery
    DatabaseName = 'NBFDADOS'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'SELECT A.*, B.MUN_NOME, B.UF_SIGLA '
      'FROM PARAMETRO A, MUNICIPIO B '
      'WHERE A.MUN_ID = B.MUN_ID AND PAR_ID = :par_id')
    ValidateWithMask = True
    Left = 572
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'par_id'
        ParamType = ptUnknown
      end>
    object Q_NBFPAR_UF_SIGLA: TStringField
      FieldName = 'PAR_UF_SIGLA'
      Origin = 'NBFDADOS.PARAMETRO.PAR_UF_SIGLA'
      FixedChar = True
      Size = 2
    end
    object Q_NBFPAR_CNPJ: TStringField
      FieldName = 'PAR_CNPJ'
      Origin = 'NBFDADOS.PARAMETRO.PAR_CNPJ'
      FixedChar = True
      Size = 15
    end
    object Q_NBFMUN_NOME: TStringField
      FieldName = 'MUN_NOME'
      Origin = 'NBFDADOS.MUNICIPIO.MUN_NOME'
      FixedChar = True
      Size = 40
    end
    object Q_NBFPAR_INSC: TStringField
      FieldName = 'PAR_INSC'
      Origin = 'NBFDADOS.PARAMETRO.PAR_INSC'
      FixedChar = True
      Size = 15
    end
    object Q_NBFPAR_RAZA: TStringField
      FieldName = 'PAR_RAZA'
      Origin = 'NBFDADOS.PARAMETRO.PAR_RAZA'
      FixedChar = True
      Size = 50
    end
    object Q_NBFPAR_ENDERECO: TStringField
      FieldName = 'PAR_ENDERECO'
      Origin = 'NBFDADOS.PARAMETRO.PAR_ENDERECO'
      FixedChar = True
      Size = 50
    end
    object Q_NBFPAR_ENDERECO_BAIRRO: TStringField
      FieldName = 'PAR_ENDERECO_BAIRRO'
      Origin = 'NBFDADOS.PARAMETRO.PAR_ENDERECO_BAIRRO'
      FixedChar = True
      Size = 40
    end
    object Q_NBFPAR_CEP: TStringField
      FieldName = 'PAR_CEP'
      Origin = 'NBFDADOS.PARAMETRO.PAR_CEP'
      FixedChar = True
      Size = 8
    end
    object Q_NBFUF_SIGLA: TStringField
      FieldName = 'UF_SIGLA'
      Origin = 'NBFDADOS.MUNICIPIO.UF_SIGLA'
      FixedChar = True
      Size = 2
    end
    object Q_NBFPAR_TEL: TStringField
      FieldName = 'PAR_TEL'
      Origin = 'NBFDADOS.PARAMETRO.PAR_TEL'
      FixedChar = True
      Size = 11
    end
  end
  object Q_AUX: TwwQuery
    DatabaseName = 'NBFDADOS'
    SessionName = 'Sec_BaseDados'
    ValidateWithMask = True
    Left = 459
    Top = 208
  end
  object Q_TP20: TwwQuery
    DatabaseName = 'NBFDADOS'
    SessionName = 'Sec_BaseDados'
    DataSource = DS_TP10
    SQL.Strings = (
      'SELECT * FROM vwPAMCARY_NOTAS_ITENS'
      'WHERE MANI_ID = :MANI_ID'
      'ORDER BY 2')
    ValidateWithMask = True
    Left = 755
    Top = 488
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'MANI_ID'
        ParamType = ptUnknown
      end>
    object Q_TP20NFI_DEST_UF_SIGLA: TStringField
      FieldName = 'NFI_DEST_UF_SIGLA'
      FixedChar = True
      Size = 2
    end
    object Q_TP20NFI_NUMERO: TStringField
      FieldName = 'NFI_NUMERO'
      FixedChar = True
      Size = 10
    end
    object Q_TP20NFI_VMER: TFloatField
      FieldName = 'NFI_VMER'
    end
    object Q_TP20NFI_CODI: TAutoIncField
      FieldName = 'NFI_CODI'
    end
    object Q_TP20NFI_PBRU: TFloatField
      FieldName = 'NFI_PBRU'
    end
    object Q_TP20NFI_VOl: TFloatField
      FieldName = 'NFI_VOl'
    end
    object Q_TP20NFI_DEMI: TDateTimeField
      FieldName = 'NFI_DEMI'
    end
    object Q_TP20NFI_DEST_CLI: TIntegerField
      FieldName = 'NFI_DEST_CLI'
    end
    object Q_TP20NFI_EMIT_CLI: TIntegerField
      FieldName = 'NFI_EMIT_CLI'
    end
    object Q_TP20MUN_ID: TIntegerField
      FieldName = 'MUN_ID'
    end
    object Q_TP20MUN_NOME: TStringField
      FieldName = 'MUN_NOME'
      FixedChar = True
      Size = 40
    end
    object Q_TP20PRO_ISENCAO: TStringField
      FieldName = 'PRO_ISENCAO'
      FixedChar = True
      Size = 1
    end
    object Q_TP20PRO_DESC: TStringField
      FieldName = 'PRO_DESC'
      FixedChar = True
      Size = 40
    end
    object Q_TP20PRO_COD: TStringField
      FieldName = 'PRO_COD'
      FixedChar = True
      Size = 16
    end
    object Q_TP20INF_TOTA: TFloatField
      FieldName = 'INF_TOTA'
    end
    object Q_TP20MANI_ID: TIntegerField
      FieldName = 'MANI_ID'
    end
  end
  object DS_TP10: TwwDataSource
    DataSet = Q_TP10
    Left = 437
    Top = 86
  end
  object Q_TP1112: TwwQuery
    DatabaseName = 'NBFDADOS'
    SessionName = 'Sec_BaseDados'
    DataSource = DS_TP10
    SQL.Strings = (
      'SELECT * FROM TRANSPORTADORA_MOTORISTA'
      'WHERE TRANS_ID = :TRANS_ID'
      'AND MOT_ID = :MOT_ID')
    ValidateWithMask = True
    Left = 636
    Top = 462
    ParamData = <
      item
        DataType = ftInteger
        Name = 'TRANS_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'MOT_ID'
        ParamType = ptUnknown
      end>
    object Q_TP1112MOT_ID: TAutoIncField
      FieldName = 'MOT_ID'
      Origin = 'NBFDADOS.TRANSPORTADORA_MOTORISTA.MOT_ID'
    end
    object Q_TP1112TRANS_ID: TIntegerField
      FieldName = 'TRANS_ID'
      Origin = 'NBFDADOS.TRANSPORTADORA_MOTORISTA.TRANS_ID'
    end
    object Q_TP1112MOT_NOME: TStringField
      FieldName = 'MOT_NOME'
      Origin = 'NBFDADOS.TRANSPORTADORA_MOTORISTA.MOT_NOME'
      FixedChar = True
      Size = 40
    end
    object Q_TP1112MOT_CPF: TStringField
      FieldName = 'MOT_CPF'
      Origin = 'NBFDADOS.TRANSPORTADORA_MOTORISTA.MOT_CPF'
      FixedChar = True
      Size = 15
    end
    object Q_TP1112MOT_PAMC_NUM: TStringField
      FieldName = 'MOT_PAMC_NUM'
      Origin = 'NBFDADOS.TRANSPORTADORA_MOTORISTA.MOT_PAMC_NUM'
      FixedChar = True
      Size = 15
    end
    object Q_TP1112MOT_VEIC_PLACA: TStringField
      FieldName = 'MOT_VEIC_PLACA'
      Origin = 'NBFDADOS.TRANSPORTADORA_MOTORISTA.MOT_VEIC_PLACA'
      FixedChar = True
      Size = 8
    end
    object Q_TP1112VEIC_ID: TIntegerField
      FieldName = 'VEIC_ID'
      Origin = 'NBFDADOS.TRANSPORTADORA_MOTORISTA.VEIC_ID'
    end
    object Q_TP1112MOT_CARRETA_PLACA: TStringField
      FieldName = 'MOT_CARRETA_PLACA'
      Origin = 'NBFDADOS.TRANSPORTADORA_MOTORISTA.MOT_CARRETA_PLACA'
      FixedChar = True
      Size = 8
    end
  end
  object Q_TP21: TwwQuery
    DatabaseName = 'NBFDADOS'
    SessionName = 'Sec_BaseDados'
    DataSource = DS_TP20
    SQL.Strings = (
      'SELECT A.*, B.MUN_NOME, B.UF_SIGLA '
      'FROM CLIENTEFINAL A, MUNICIPIO B'
      ' WHERE       A.CLIF_ID = :NFI_DEST_CLI '
      '       AND       A.MUN_ID = B.MUN_ID')
    ValidateWithMask = True
    Left = 724
    Top = 422
    ParamData = <
      item
        DataType = ftInteger
        Name = 'NFI_DEST_CLI'
        ParamType = ptUnknown
      end>
    object Q_TP21CLIF_PESSOA: TStringField
      FieldName = 'CLIF_PESSOA'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_PESSOA'
      FixedChar = True
      Size = 1
    end
    object Q_TP21CLIF_RAZA: TStringField
      FieldName = 'CLIF_RAZA'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_RAZA'
      FixedChar = True
      Size = 50
    end
    object Q_TP21CLIF_NOME: TStringField
      FieldName = 'CLIF_NOME'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_NOME'
      FixedChar = True
      Size = 30
    end
    object Q_TP21CLIF_CGCCPF: TStringField
      FieldName = 'CLIF_CGCCPF'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_CGCCPF'
      FixedChar = True
      Size = 15
    end
    object Q_TP21CLIF_INSCRG: TStringField
      FieldName = 'CLIF_INSCRG'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_INSCRG'
      FixedChar = True
      Size = 15
    end
    object Q_TP21CLIF_ENDERECO: TStringField
      FieldName = 'CLIF_ENDERECO'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_ENDERECO'
      FixedChar = True
      Size = 50
    end
    object Q_TP21CLIF_ENDERECO_BAIRRO: TStringField
      FieldName = 'CLIF_ENDERECO_BAIRRO'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_ENDERECO_BAIRRO'
      FixedChar = True
      Size = 40
    end
    object Q_TP21CLIF_CEP: TStringField
      FieldName = 'CLIF_CEP'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_CEP'
      FixedChar = True
      Size = 8
    end
    object Q_TP21CLIF_TEL1: TStringField
      FieldName = 'CLIF_TEL1'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_TEL1'
      FixedChar = True
      Size = 11
    end
    object Q_TP21MUN_NOME: TStringField
      FieldName = 'MUN_NOME'
      Origin = 'NBFDADOS.MUNICIPIO.MUN_NOME'
      FixedChar = True
      Size = 40
    end
    object Q_TP21UF_SIGLA_1: TStringField
      FieldName = 'UF_SIGLA_1'
      Origin = 'NBFDADOS.MUNICIPIO.UF_SIGLA'
      FixedChar = True
      Size = 2
    end
  end
  object DS_TP20: TwwDataSource
    DataSet = Q_TP20
    Left = 250
    Top = 14
  end
  object Q_CONHEC: TwwQuery
    DatabaseName = 'NBFDADOS'
    SessionName = 'Sec_BaseDados'
    DataSource = DS_TP10
    SQL.Strings = (
      'SELECT * FROM ORDEM_COLETA_ENTREGA '
      'WHERE MANI_ID = :MANI_ID')
    ValidateWithMask = True
    Left = 371
    Top = 342
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'MANI_ID'
        ParamType = ptUnknown
      end>
    object Q_CONHECORD_ID: TAutoIncField
      FieldName = 'ORD_ID'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_ID'
    end
    object Q_CONHECORD_CONH: TStringField
      FieldName = 'ORD_CONH'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_CONH'
      FixedChar = True
      Size = 10
    end
    object Q_CONHECMANI_ID: TIntegerField
      FieldName = 'MANI_ID'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.MANI_ID'
    end
  end
  object Q_MOSTRAMANI: TwwQuery
    CachedUpdates = True
    AfterOpen = Q_MOSTRAMANIAfterOpen
    AfterClose = Q_MOSTRAMANIAfterClose
    AfterPost = Q_MOSTRAMANIAfterPost
    AutoRefresh = True
    DatabaseName = 'NBFDADOS'
    SessionName = 'Sec_BaseDados'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM vwPAMCARY_MANIFESTO')
    UpdateObject = UPD_MOSTRAMANI
    ControlType.Strings = (
      'FLAG;CheckBox;S;N')
    ValidateWithMask = True
    Left = 124
    Top = 216
    object Q_MOSTRAMANIFLAG: TStringField
      DisplayLabel = ' '
      DisplayWidth = 2
      FieldName = 'FLAG'
      Origin = 'NBFDADOS.MANIFESTO.FLAG'
      OnChange = Q_MOSTRAMANIFLAGChange
      FixedChar = True
      Size = 1
    end
    object Q_MOSTRAMANIMANI_ID: TAutoIncField
      DisplayLabel = 'N�'
      DisplayWidth = 8
      FieldName = 'MANI_ID'
      Origin = 'NBFDADOS.MANIFESTO.MANI_ID'
      ReadOnly = True
    end
    object Q_MOSTRAMANIMANI_PESO: TFloatField
      DisplayLabel = 'Peso Tot. (kg)'
      DisplayWidth = 10
      FieldName = 'MANI_PESO'
      Origin = 'NBFDADOS.MANIFESTO.MANI_PESO'
      ReadOnly = True
      DisplayFormat = '###,###,##0.000'
    end
    object Q_MOSTRAMANIMANI_VOLUME: TFloatField
      DisplayLabel = 'Vol. Tot. (M3)'
      DisplayWidth = 10
      FieldName = 'MANI_VOLUME'
      Origin = 'NBFDADOS.MANIFESTO.MANI_VOLUME'
      ReadOnly = True
      DisplayFormat = '###,###,##0.000'
    end
    object Q_MOSTRAMANITOTAL: TFloatField
      DisplayLabel = 'Total (R$)'
      DisplayWidth = 10
      FieldName = 'TOTAL'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
    end
  end
  object DS_MOSTRAMANI: TwwDataSource
    DataSet = Q_MOSTRAMANI
    Left = 493
    Top = 25
  end
  object Q_MOSTRANFS: TwwQuery
    DatabaseName = 'NBFDADOS'
    SessionName = 'Sec_BaseDados'
    DataSource = DS_MOSTRAMANI
    SQL.Strings = (
      'SELECT  NFI_NUMERO, '
      #9'NFI_TOTA,'
      #9'CLIN_NOME '
      'FROM '#9'vwPAMCARY_NOTAS'
      'WHERE '#9'  MANI_ID = :MANI_ID')
    ValidateWithMask = True
    Left = 100
    Top = 354
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'MANI_ID'
        ParamType = ptUnknown
      end>
    object Q_MOSTRANFSNFI_NUMERO: TStringField
      DisplayLabel = 'N�'
      DisplayWidth = 9
      FieldName = 'NFI_NUMERO'
      Origin = 'NBFDADOS.NF.NFI_NUMERO'
      FixedChar = True
      Size = 10
    end
    object Q_MOSTRANFSNFI_TOTA: TFloatField
      DisplayLabel = 'Total da NF'
      DisplayWidth = 10
      FieldName = 'NFI_TOTA'
      Origin = 'NBFDADOS.NF.NFI_TOTA'
      DisplayFormat = '###,###,##0.00'
    end
    object Q_MOSTRANFSCLIN_NOME: TStringField
      DisplayLabel = 'Cliente NBF'
      DisplayWidth = 28
      FieldName = 'CLIN_NOME'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_NOME'
      FixedChar = True
      Size = 30
    end
  end
  object DS_MOSTRANFS: TwwDataSource
    DataSet = Q_MOSTRANFS
    Left = 285
    Top = 265
  end
  object UPD_MOSTRAMANI: TUpdateSQL
    ModifySQL.Strings = (
      'update MANIFESTO'
      'set'
      '  FLAG = :FLAG'
      'where'
      '  MANI_ID = :OLD_MANI_ID')
    InsertSQL.Strings = (
      'insert into MANIFESTO'
      '  (FLAG)'
      'values'
      '  (:FLAG)')
    DeleteSQL.Strings = (
      'delete from MANIFESTO'
      'where'
      '  MANI_ID = :OLD_MANI_ID')
    Left = 372
    Top = 208
  end
  object Q_AUX3: TwwQuery
    DatabaseName = 'NBFDADOS'
    SessionName = 'Sec_BaseDados'
    ValidateWithMask = True
    Left = 537
    Top = 208
  end
  object qrParamentro: TwwQuery
    DatabaseName = 'NBFDADOS'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'SELECT A.*'
      'FROM PARAMETRO A')
    ValidateWithMask = True
    Left = 707
    Top = 104
    object qrParamentroPAR_NOME: TStringField
      DisplayWidth = 30
      FieldName = 'PAR_NOME'
      Origin = 'NBFDADOS.PARAMETRO.PAR_NOME'
      FixedChar = True
      Size = 30
    end
    object qrParamentroPAR_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'PAR_ID'
      Origin = 'NBFDADOS.PARAMETRO.PAR_ID'
      Visible = False
    end
    object qrParamentroPAR_RAZA: TStringField
      DisplayWidth = 50
      FieldName = 'PAR_RAZA'
      Origin = 'NBFDADOS.PARAMETRO.PAR_RAZA'
      Visible = False
      FixedChar = True
      Size = 50
    end
    object qrParamentroPAR_CNPJ: TStringField
      DisplayWidth = 15
      FieldName = 'PAR_CNPJ'
      Origin = 'NBFDADOS.PARAMETRO.PAR_CNPJ'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object qrParamentroPAR_INSC: TStringField
      DisplayWidth = 15
      FieldName = 'PAR_INSC'
      Origin = 'NBFDADOS.PARAMETRO.PAR_INSC'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object qrParamentroPAR_ENDERECO: TStringField
      DisplayWidth = 50
      FieldName = 'PAR_ENDERECO'
      Origin = 'NBFDADOS.PARAMETRO.PAR_ENDERECO'
      Visible = False
      FixedChar = True
      Size = 50
    end
    object qrParamentroPAR_ENDERECO_COMPL: TStringField
      DisplayWidth = 20
      FieldName = 'PAR_ENDERECO_COMPL'
      Origin = 'NBFDADOS.PARAMETRO.PAR_ENDERECO_COMPL'
      Visible = False
      FixedChar = True
    end
    object qrParamentroPAR_ENDERECO_BAIRRO: TStringField
      DisplayWidth = 40
      FieldName = 'PAR_ENDERECO_BAIRRO'
      Origin = 'NBFDADOS.PARAMETRO.PAR_ENDERECO_BAIRRO'
      Visible = False
      FixedChar = True
      Size = 40
    end
    object qrParamentroPAR_UF_SIGLA: TStringField
      DisplayWidth = 2
      FieldName = 'PAR_UF_SIGLA'
      Origin = 'NBFDADOS.PARAMETRO.PAR_UF_SIGLA'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object qrParamentroPAR_CEP: TStringField
      DisplayWidth = 8
      FieldName = 'PAR_CEP'
      Origin = 'NBFDADOS.PARAMETRO.PAR_CEP'
      Visible = False
      FixedChar = True
      Size = 8
    end
    object qrParamentroPAR_TEL: TStringField
      DisplayWidth = 11
      FieldName = 'PAR_TEL'
      Origin = 'NBFDADOS.PARAMETRO.PAR_TEL'
      Visible = False
      FixedChar = True
      Size = 11
    end
    object qrParamentroPAR_FAX: TStringField
      DisplayWidth = 11
      FieldName = 'PAR_FAX'
      Origin = 'NBFDADOS.PARAMETRO.PAR_FAX'
      Visible = False
      FixedChar = True
      Size = 11
    end
    object qrParamentroPAR_EMAIL: TStringField
      DisplayWidth = 60
      FieldName = 'PAR_EMAIL'
      Origin = 'NBFDADOS.PARAMETRO.PAR_EMAIL'
      Visible = False
      FixedChar = True
      Size = 60
    end
    object qrParamentroAR_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'AR_ID'
      Origin = 'NBFDADOS.PARAMETRO.AR_ID'
      Visible = False
    end
    object qrParamentroMUN_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'MUN_ID'
      Origin = 'NBFDADOS.PARAMETRO.MUN_ID'
      Visible = False
    end
    object qrParamentroAR_ID_OPER: TIntegerField
      DisplayWidth = 10
      FieldName = 'AR_ID_OPER'
      Origin = 'NBFDADOS.PARAMETRO.AR_ID_OPER'
      Visible = False
    end
    object qrParamentroULT_TAG: TIntegerField
      DisplayWidth = 10
      FieldName = 'ULT_TAG'
      Origin = 'NBFDADOS.PARAMETRO.ULT_TAG'
      Visible = False
    end
    object qrParamentroPALLET_M2: TFloatField
      DisplayWidth = 10
      FieldName = 'PALLET_M2'
      Origin = 'NBFDADOS.PARAMETRO.PALLET_M2'
      Visible = False
    end
    object qrParamentroCO_SER_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'CO_SER_ID'
      Origin = 'NBFDADOS.PARAMETRO.CO_SER_ID'
      Visible = False
    end
    object qrParamentroEN_SER_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'EN_SER_ID'
      Origin = 'NBFDADOS.PARAMETRO.EN_SER_ID'
      Visible = False
    end
    object qrParamentroFLAGTELA: TStringField
      DisplayWidth = 1
      FieldName = 'FLAGTELA'
      Origin = 'NBFDADOS.PARAMETRO.FLAGTELA'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object qrParamentroFLAGTELA2: TStringField
      DisplayWidth = 1
      FieldName = 'FLAGTELA2'
      Origin = 'NBFDADOS.PARAMETRO.FLAGTELA2'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object qrParamentroFLAGTELA3: TStringField
      DisplayWidth = 1
      FieldName = 'FLAGTELA3'
      Origin = 'NBFDADOS.PARAMETRO.FLAGTELA3'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object qrParamentroCLIN_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'CLIN_ID'
      Origin = 'NBFDADOS.PARAMETRO.CLIN_ID'
      Visible = False
    end
    object qrParamentroVERSAO: TStringField
      DisplayWidth = 50
      FieldName = 'VERSAO'
      Origin = 'NBFDADOS.PARAMETRO.VERSAO'
      Visible = False
      FixedChar = True
      Size = 50
    end
    object qrParamentroFLAGTELA_USUARIO: TStringField
      DisplayWidth = 20
      FieldName = 'FLAGTELA_USUARIO'
      Origin = 'NBFDADOS.PARAMETRO.FLAGTELA_USUARIO'
      Visible = False
      FixedChar = True
    end
    object qrParamentroFLAGTELA_DATA: TDateTimeField
      DisplayWidth = 18
      FieldName = 'FLAGTELA_DATA'
      Origin = 'NBFDADOS.PARAMETRO.FLAGTELA_DATA'
      Visible = False
    end
    object qrParamentroFLAGTELA2_USUARIO: TStringField
      DisplayWidth = 20
      FieldName = 'FLAGTELA2_USUARIO'
      Origin = 'NBFDADOS.PARAMETRO.FLAGTELA2_USUARIO'
      Visible = False
      FixedChar = True
    end
    object qrParamentroFLAGTELA2_DATA: TDateTimeField
      DisplayWidth = 18
      FieldName = 'FLAGTELA2_DATA'
      Origin = 'NBFDADOS.PARAMETRO.FLAGTELA2_DATA'
      Visible = False
    end
    object qrParamentroPORTA: TIntegerField
      DisplayWidth = 10
      FieldName = 'PORTA'
      Origin = 'NBFDADOS.PARAMETRO.PORTA'
      Visible = False
    end
    object qrParamentroHOST: TStringField
      DisplayWidth = 30
      FieldName = 'HOST'
      Origin = 'NBFDADOS.PARAMETRO.HOST'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object qrParamentroCAMINHO: TStringField
      DisplayWidth = 40
      FieldName = 'CAMINHO'
      Origin = 'NBFDADOS.PARAMETRO.CAMINHO'
      Visible = False
      FixedChar = True
      Size = 40
    end
    object qrParamentroULT_FATURA: TIntegerField
      DisplayWidth = 10
      FieldName = 'ULT_FATURA'
      Origin = 'NBFDADOS.PARAMETRO.ULT_FATURA'
      Visible = False
    end
    object qrParamentroULT_NF: TIntegerField
      DisplayWidth = 10
      FieldName = 'ULT_NF'
      Origin = 'NBFDADOS.PARAMETRO.ULT_NF'
      Visible = False
    end
    object qrParamentroULT_CONH: TIntegerField
      DisplayWidth = 10
      FieldName = 'ULT_CONH'
      Origin = 'NBFDADOS.PARAMETRO.ULT_CONH'
      Visible = False
    end
    object qrParamentroAR_ID_AVARIA: TIntegerField
      DisplayWidth = 10
      FieldName = 'AR_ID_AVARIA'
      Origin = 'NBFDADOS.PARAMETRO.AR_ID_AVARIA'
      Visible = False
    end
    object qrParamentroULT_MINUTA: TIntegerField
      DisplayWidth = 10
      FieldName = 'ULT_MINUTA'
      Origin = 'NBFDADOS.PARAMETRO.ULT_MINUTA'
      Visible = False
    end
    object qrParamentroULT_NFPROV: TIntegerField
      DisplayWidth = 10
      FieldName = 'ULT_NFPROV'
      Origin = 'NBFDADOS.PARAMETRO.ULT_NFPROV'
      Visible = False
    end
    object qrParamentroULT_CONHPROV: TIntegerField
      DisplayWidth = 10
      FieldName = 'ULT_CONHPROV'
      Origin = 'NBFDADOS.PARAMETRO.ULT_CONHPROV'
      Visible = False
    end
    object qrParamentroULT_MINUTAPROV: TIntegerField
      DisplayWidth = 10
      FieldName = 'ULT_MINUTAPROV'
      Origin = 'NBFDADOS.PARAMETRO.ULT_MINUTAPROV'
      Visible = False
    end
    object qrParamentroCAMINHO_MATRICIAL: TStringField
      DisplayWidth = 40
      FieldName = 'CAMINHO_MATRICIAL'
      Origin = 'NBFDADOS.PARAMETRO.CAMINHO_MATRICIAL'
      Visible = False
      FixedChar = True
      Size = 40
    end
    object qrParamentroCAMINHO_MATRICIAL_FATURA: TStringField
      DisplayWidth = 40
      FieldName = 'CAMINHO_MATRICIAL_FATURA'
      Origin = 'NBFDADOS.PARAMETRO.CAMINHO_MATRICIAL_FATURA'
      Visible = False
      FixedChar = True
      Size = 40
    end
    object qrParamentroCAMINHO_MATRICIAL_CONH: TStringField
      DisplayWidth = 40
      FieldName = 'CAMINHO_MATRICIAL_CONH'
      Origin = 'NBFDADOS.PARAMETRO.CAMINHO_MATRICIAL_CONH'
      Visible = False
      FixedChar = True
      Size = 40
    end
    object qrParamentroDATA: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DATA'
      Origin = 'NBFDADOS.PARAMETRO.DATA'
      Visible = False
    end
    object qrParamentroConnectionString: TStringField
      DisplayWidth = 255
      FieldName = 'ConnectionString'
      Origin = 'NBFDADOS.PARAMETRO.ConnectionString'
      Visible = False
      FixedChar = True
      Size = 255
    end
  end
end
