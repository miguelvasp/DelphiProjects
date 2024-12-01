object FRomaneio: TFRomaneio
  Left = 312
  Top = 19
  Width = 796
  Height = 568
  AutoSize = True
  BorderIcons = []
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 780
    Height = 45
    BevelInner = bvLowered
    Color = clMenu
    TabOrder = 0
    object SpeedButton3: TSpeedButton
      Left = 747
      Top = 10
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
      Left = 16
      Top = 5
      Width = 128
      Height = 29
      Caption = 'Romaneio'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -24
      Font.Name = 'Georgia'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 49
    Width = 780
    Height = 481
    BevelInner = bvLowered
    TabOrder = 1
    object Label8: TLabel
      Left = 57
      Top = 44
      Width = 23
      Height = 15
      Caption = 'O.S.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText7: TDBText
      Left = 84
      Top = 43
      Width = 500
      Height = 17
      DataField = 'OS_ID'
      DataSource = DS_ROM
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 54
      Top = 67
      Width = 26
      Height = 15
      Caption = 'Data'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 84
      Top = 66
      Width = 82
      Height = 17
      DataField = 'ROM_DATA'
      DataSource = DS_ROM
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 7
      Top = 16
      Width = 72
      Height = 15
      Caption = 'Romaneio Nº'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBG_INFI: TwwDBGrid
      Left = 3
      Top = 90
      Width = 774
      Height = 343
      Selected.Strings = (
        'PRO_COD'#9'13'#9'Cód. do Produto'#9'F'
        'PRO_DESC'#9'46'#9'Descrição do Produto'
        'IROM_QTDE'#9'10'#9'Qtde.'
        'UVENdesc'#9'9'#9'Unidade de Venda')
      IniAttributes.Delimiter = ';;'
      TitleColor = clLime
      FixedCols = 0
      ShowHorzScrollBar = True
      Color = clWhite
      DataSource = DS_IROM
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      KeyOptions = [dgEnterToTab, dgAllowInsert]
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      ParentFont = False
      TabOrder = 0
      TitleAlignment = taCenter
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clNavy
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = [fsBold]
      TitleLines = 1
      TitleButtons = False
      FooterColor = clInactiveCaption
      FooterCellColor = clGrayText
    end
    object Panel5: TPanel
      Left = 83
      Top = 3
      Width = 126
      Height = 38
      BevelInner = bvLowered
      TabOrder = 1
      object DBText2: TDBText
        Left = 13
        Top = 2
        Width = 99
        Height = 28
        Alignment = taCenter
        Color = clMenu
        DataField = 'ROM_ID'
        DataSource = DS_ROM
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -24
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
    end
    object BitBtn1: TBitBtn
      Left = 616
      Top = 32
      Width = 145
      Height = 41
      Caption = 'Itens do Romaneio'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = BitBtn1Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        55555555FFFFFFFF5555555000000005555555577777777FF555550999999900
        55555575555555775F55509999999901055557F55555557F75F5001111111101
        105577FFFFFFFF7FF75F00000000000011057777777777775F755070FFFFFF0F
        01105777F555557F7FF75500FFFFFF0F00105577F555FF7F77575550FF70000F
        0F0055575FF777757F775555000FFFFF0F005555777555FF7F77555550FF7000
        0F055555575FF777757F555555000FFFFF05555555777555FF7F55555550FF70
        0005555555575FF7777555555555000555555555555577755555555555555555
        5555555555555555555555555555555555555555555555555555}
      NumGlyphs = 2
    end
    object BitBtn2: TBitBtn
      Left = 312
      Top = 440
      Width = 185
      Height = 33
      Caption = 'Confirmar Romaneio ?'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = BitBtn2Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
        000333FFF3777777777F3000330FFFFFFF033777FF7F3FF3FF7F07B7030F00F0
        0F0377777F7F7737737F0BBB030FFFFFFF0377777F7F3FFFF37F07B7030F0000
        FF037777737F7777337F3000330FFFFFFF033777337F3FF3FF7F3333330F00F0
        00033333337F7737777F3333330FFFF0FF033FFFFF7F3FF7F3730000030F08F0
        F03377777F7F7737F7330999030FFFF0033377777F7FFFF77333099903000000
        333377777F7777773333099903333333333377777F33FFFFFFF3000003300000
        00337777733777777733333333330CCC033333333333777773333333333330C0
        3333333333333777333333333333330333333333333333733333}
      NumGlyphs = 2
    end
    object BitBtn3: TBitBtn
      Left = 552
      Top = 32
      Width = 49
      Height = 41
      Hint = 'EXCLUIR Romaneio'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = BitBtn3Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
        3333333777777777F3333330F777777033333337F3F3F3F7F3333330F0808070
        33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
        33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
        333333F7F7F7F7F7F3F33030F080707030333737F7F7F7F7F7333300F0808070
        03333377F7F7F7F773333330F080707033333337F7F7F7F7F333333070707070
        33333337F7F7F7F7FF3333000000000003333377777777777F33330F88877777
        0333337FFFFFFFFF7F3333000000000003333377777777777333333330777033
        3333333337FFF7F3333333333000003333333333377777333333}
      NumGlyphs = 2
    end
  end
  object Q_ROM: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    DataSource = FOS.DS_TDOC
    SQL.Strings = (
      'select * from ROMANEIO where '
      'OS_ID = :OS_ID and'
      'TDOC_ID = :TDOC_ID '
      'order by ROM_ID')
    ControlType.Strings = (
      'AR_CONTROL_POS;CustomEdit;wwDBComboBox1')
    ValidateWithMask = True
    Left = 295
    Top = 216
    ParamData = <
      item
        DataType = ftInteger
        Name = 'OS_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'TDOC_ID'
        ParamType = ptUnknown
      end>
    object Q_ROMROM_ID: TAutoIncField
      FieldName = 'ROM_ID'
      Origin = 'NBFDADOS.ROMANEIO.ROM_ID'
    end
    object Q_ROMTDOC_ID: TIntegerField
      FieldName = 'TDOC_ID'
      Origin = 'NBFDADOS.ROMANEIO.TDOC_ID'
    end
    object Q_ROMOS_ID: TIntegerField
      FieldName = 'OS_ID'
      Origin = 'NBFDADOS.ROMANEIO.OS_ID'
    end
    object Q_ROMROM_DATA: TDateTimeField
      FieldName = 'ROM_DATA'
      Origin = 'NBFDADOS.ROMANEIO.ROM_DATA'
    end
    object Q_ROMROM_GEROU_ITENS: TStringField
      FieldName = 'ROM_GEROU_ITENS'
      Origin = 'NBFDADOS.ROMANEIO.ROM_GEROU_ITENS'
      FixedChar = True
      Size = 1
    end
    object Q_ROMROM_CONFIRMA: TStringField
      FieldName = 'ROM_CONFIRMA'
      Origin = 'NBFDADOS.ROMANEIO.ROM_CONFIRMA'
      FixedChar = True
      Size = 1
    end
  end
  object DS_ROM: TwwDataSource
    DataSet = Q_ROM
    OnDataChange = DS_ROMDataChange
    Left = 295
    Top = 268
  end
  object Q_IROM: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    DataSource = DS_ROM
    SQL.Strings = (
      'Select * from ROMANEIO_ITENS where'
      'ROM_ID = :ROM_ID '
      'order by PRO_COD')
    ValidateWithMask = True
    Left = 383
    Top = 216
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'ROM_ID'
        ParamType = ptUnknown
      end>
    object Q_IROMPRO_COD: TStringField
      DisplayLabel = 'Cód. do Produto'
      DisplayWidth = 13
      FieldName = 'PRO_COD'
      Origin = 'NBFDADOS.ROMANEIO_ITENS.PRO_COD'
      FixedChar = True
      Size = 16
    end
    object Q_IROMPRO_DESC: TStringField
      DisplayLabel = 'Descrição do Produto'
      DisplayWidth = 46
      FieldName = 'PRO_DESC'
      Origin = 'NBFDADOS.ROMANEIO_ITENS.PRO_DESC'
      FixedChar = True
      Size = 40
    end
    object Q_IROMIROM_QTDE: TFloatField
      DisplayLabel = 'Qtde.'
      DisplayWidth = 10
      FieldName = 'IROM_QTDE'
      Origin = 'NBFDADOS.ROMANEIO_ITENS.IROM_QTDE'
      DisplayFormat = '0.0000'
      EditFormat = '0.000'
    end
    object Q_IROMUVENdesc: TStringField
      DisplayLabel = 'Unidade de Venda'
      DisplayWidth = 9
      FieldKind = fkLookup
      FieldName = 'UVENdesc'
      LookupDataSet = Q_UNIDVEND
      LookupKeyFields = 'UVEN_ID'
      LookupResultField = 'UVEN_NOME'
      KeyFields = 'UVEN_ID'
      Size = 40
      Lookup = True
    end
    object Q_IROMUVEN_ID: TIntegerField
      DisplayLabel = 'Unidade de Venda'
      DisplayWidth = 10
      FieldName = 'UVEN_ID'
      Origin = 'NBFDADOS.ROMANEIO_ITENS.UVEN_ID'
      Visible = False
    end
    object Q_IROMIROM_ID: TAutoIncField
      FieldName = 'IROM_ID'
      Origin = 'NBFDADOS.ROMANEIO_ITENS.IROM_ID'
      Visible = False
    end
    object Q_IROMROM_ID: TIntegerField
      FieldName = 'ROM_ID'
      Origin = 'NBFDADOS.ROMANEIO_ITENS.ROM_ID'
      Visible = False
    end
  end
  object DS_IROM: TwwDataSource
    DataSet = Q_IROM
    Left = 384
    Top = 272
  end
  object STP_ROM: TwwStoredProc
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    StoredProcName = 'dbo.STP_ROMANEIO_NFE'
    ValidateWithMask = True
    Left = 501
    Top = 340
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Result'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = '@OS'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@TDOC'
        ParamType = ptInput
      end>
  end
  object Q_UNIDVEND: TwwQuery
    Active = True
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select * from UNIDVENDA')
    ValidateWithMask = True
    Left = 384
    Top = 392
    object Q_UNIDVENDUVEN_NOME: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 40
      FieldName = 'UVEN_NOME'
      Origin = 'NBFDADOS.UNIDVENDA.UVEN_NOME'
      FixedChar = True
      Size = 40
    end
    object Q_UNIDVENDUVEN_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'UVEN_ID'
      Origin = 'NBFDADOS.UNIDVENDA.UVEN_ID'
      Visible = False
    end
  end
  object Q_ROMaux: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    ValidateWithMask = True
    Left = 384
    Top = 328
  end
  object STP_ROMITENS: TwwStoredProc
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    StoredProcName = 'dbo.STP_ROMANEIO_NFE_POSICAO'
    ValidateWithMask = True
    Left = 653
    Top = 340
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Result'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = '@ROMID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@OSID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@EMP'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@ARID2'
        ParamType = ptInput
      end>
  end
  object Q_QTDEaux: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    ValidateWithMask = True
    Left = 661
    Top = 210
  end
  object STP_KARDEXENTRADA: TwwStoredProc
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    StoredProcName = 'dbo.STP_KARDEXENTRADA'
    ValidateWithMask = True
    Left = 436
    Top = 160
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Result'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = '@ROM'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@PAR_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@USUARIO'
        ParamType = ptInput
      end>
  end
  object Q_PAR: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'select PAR_ID,PAR_NOME,PAR_RAZA ,AR_ID from parametro  ')
    ValidateWithMask = True
    Left = 615
    Top = 274
    object Q_PARPAR_NOME: TStringField
      DisplayWidth = 30
      FieldName = 'PAR_NOME'
      Origin = 'NBFDADOS.parametro.PAR_NOME'
      FixedChar = True
      Size = 30
    end
    object Q_PARPAR_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'PAR_ID'
      Origin = 'NBFDADOS.parametro.PAR_ID'
      Visible = False
    end
    object Q_PARPAR_RAZA: TStringField
      DisplayWidth = 50
      FieldName = 'PAR_RAZA'
      Origin = 'NBFDADOS.parametro.PAR_RAZA'
      Visible = False
      FixedChar = True
      Size = 50
    end
    object Q_PARAR_ID: TIntegerField
      FieldName = 'AR_ID'
      Origin = 'NBFDADOS.parametro.AR_ID'
    end
  end
  object Q_AUX: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    ValidateWithMask = True
    Left = 584
    Top = 164
  end
end
