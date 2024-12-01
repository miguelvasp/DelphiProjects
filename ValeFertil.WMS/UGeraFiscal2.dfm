object FGeraFiscal2: TFGeraFiscal2
  Left = 362
  Top = 144
  Width = 556
  Height = 346
  BorderIcons = []
  Color = clGray
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
  object Panel1: TPanel
    Left = 0
    Top = 45
    Width = 540
    Height = 265
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 0
    object Gauge1: TGauge
      Left = 58
      Top = 208
      Width = 414
      Height = 25
      Color = clNavy
      ForeColor = clMenuText
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Progress = 0
      Visible = False
    end
    object Label3: TLabel
      Left = 141
      Top = 139
      Width = 61
      Height = 15
      Caption = 'Período de'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 289
      Top = 139
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
    object Label2: TLabel
      Left = 62
      Top = 100
      Width = 39
      Height = 15
      Caption = 'Cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BitBtn1: TBitBtn
      Left = 181
      Top = 171
      Width = 167
      Height = 25
      Caption = 'Gerar Arquivos Fiscais'
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
    object Animate1: TAnimate
      Left = 93
      Top = 20
      Width = 343
      Height = 53
      Active = False
      AutoSize = False
      Color = clMenu
      CommonAVI = aviCopyFiles
      ParentColor = False
      Repetitions = 777777777
      StopFrame = 31
      Visible = False
    end
    object MaskEdit1: TMaskEdit
      Left = 209
      Top = 136
      Width = 74
      Height = 20
      BorderStyle = bsNone
      EditMask = '!99/99/0000;1;_'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 2
      Text = '  /  /    '
      OnEnter = MaskEdit1Enter
      OnExit = MaskEdit1Exit
    end
    object MaskEdit2: TMaskEdit
      Left = 313
      Top = 136
      Width = 75
      Height = 20
      BorderStyle = bsNone
      EditMask = '!99/99/0000;1;_'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 3
      Text = '  /  /    '
      OnEnter = MaskEdit2Enter
      OnExit = MaskEdit2Exit
    end
    object wwDBLookupCombo1: TwwDBLookupCombo
      Left = 107
      Top = 96
      Width = 361
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      BorderStyle = bsNone
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'CLIN_RAZA'#9'50'#9'Cliente'#9'F')
      LookupTable = Q_CLIENTE
      LookupField = 'CLIN_ID'
      ParentFont = False
      TabOrder = 4
      AutoDropDown = True
      ShowButton = True
      AllowClearKey = False
      OnEnter = wwDBLookupCombo1Enter
      OnExit = wwDBLookupCombo1Exit
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 540
    Height = 45
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 1
    object SpeedButton3: TSpeedButton
      Left = 496
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
    object Label4: TLabel
      Left = 15
      Top = 8
      Width = 285
      Height = 29
      Caption = 'Geração Fiscal/Cliente'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -24
      Font.Name = 'Georgia'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
  end
  object Q_CLIENTE: TwwQuery
    DatabaseName = 'NBFdados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'SELECT * FROM CLIENTENBF '
      'where  (CLIN_CONTRATO <> '#39'I'#39' and CLIN_CONTRATO <> '#39'R'#39') '
      ''
      ''
      'ORDER BY CLIN_RAZA')
    ValidateWithMask = True
    Left = 484
    Top = 232
    object Q_CLIENTECLIN_RAZA: TStringField
      DisplayLabel = 'Cliente'
      DisplayWidth = 50
      FieldName = 'CLIN_RAZA'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_RAZA'
      FixedChar = True
      Size = 50
    end
    object Q_CLIENTECLIN_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'CLIN_ID'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_ID'
      Visible = False
    end
    object Q_CLIENTECLIN_CGCCPF: TStringField
      FieldName = 'CLIN_CGCCPF'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_CGCCPF'
      FixedChar = True
      Size = 15
    end
  end
  object Q_NF: TwwQuery
    DatabaseName = 'NBFDADOS'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'SELECT B.CFA_CODI,'
      '                A.NFI_DEMI,'
      #9'A.NFI_NUMERO,'
      #9'NFI_TOTA'
      'FROM NF A,'
      #9'FATURAMENTO B '
      'WHERE A.TDOC_ID IN (3,14) AND'
      #9'A.CFA_ID = B.CFA_ID')
    ValidateWithMask = True
    Left = 356
    Top = 80
    object Q_NFCFA_CODI: TStringField
      FieldName = 'CFA_CODI'
      FixedChar = True
      Size = 4
    end
    object Q_NFNFI_NUMERO: TStringField
      FieldName = 'NFI_NUMERO'
      FixedChar = True
      Size = 10
    end
    object Q_NFNFI_TOTA: TFloatField
      FieldName = 'NFI_TOTA'
    end
    object Q_NFNFI_DEMI: TDateTimeField
      FieldName = 'NFI_DEMI'
      DisplayFormat = 'DDMMYYYY'
    end
  end
  object Q_CONHEC: TwwQuery
    DatabaseName = 'NBFDADOS'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'SELECT C.CFA_CODI,'
      #9'B.OS_DATA,'
      #9'A.MANI_ID,'
      #9'A.ORD_VALORTOTAL,A.ORD_CONH,A.ORD_TOTALPREST,'
      '     A.ORD_DATA, A.ORD_ALIQ, A.ORD_VLR_ICMS'
      'FROM ORDEM_COLETA_ENTREGA A '
      'LEFT OUTER JOIN FATURAMENTO C ON A.CFA_ID = C.CFA_ID,'
      #9'OS B'
      'WHERE A.OS_ID = B.OS_ID')
    ValidateWithMask = True
    Left = 132
    Top = 72
    object Q_CONHECCFA_CODI: TStringField
      FieldName = 'CFA_CODI'
      Origin = 'NBFDADOS.FATURAMENTO.CFA_CODI'
      FixedChar = True
      Size = 4
    end
    object Q_CONHECOS_DATA: TDateTimeField
      FieldName = 'OS_DATA'
      Origin = 'NBFDADOS.OS.OS_DATA'
      DisplayFormat = 'DDMMYYYY'
    end
    object Q_CONHECMANI_ID: TIntegerField
      FieldName = 'MANI_ID'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.MANI_ID'
    end
    object Q_CONHECORD_VALORTOTAL: TFloatField
      FieldName = 'ORD_VALORTOTAL'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_VALORTOTAL'
    end
    object Q_CONHECORD_CONH: TStringField
      FieldName = 'ORD_CONH'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_CONH'
      FixedChar = True
      Size = 10
    end
    object Q_CONHECORD_TOTALPREST: TFloatField
      FieldName = 'ORD_TOTALPREST'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_TOTALPREST'
    end
    object Q_CONHECORD_DATA: TDateTimeField
      FieldName = 'ORD_DATA'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_DATA'
    end
    object Q_CONHECORD_ALIQ: TFloatField
      FieldName = 'ORD_ALIQ'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_ALIQ'
    end
    object Q_CONHECORD_VLR_ICMS: TFloatField
      FieldName = 'ORD_VLR_ICMS'
      Origin = 'NBFDADOS.ORDEM_COLETA_ENTREGA.ORD_VLR_ICMS'
    end
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '*.txt'
    Filter = 'Arquivo Texto|*.txt'
    Left = 452
    Top = 92
  end
  object Q_AUX1: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    ValidateWithMask = True
    Left = 256
    Top = 77
  end
end
