object frmEDIOcoren: TfrmEDIOcoren
  Left = 192
  Top = 114
  Width = 800
  Height = 550
  Caption = 'Geração de arquivo EDI Ocoren'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 784
    Height = 95
    Align = alTop
    Caption = 'Filtros'
    TabOrder = 0
    object btnNotas: TSpeedButton
      Left = 542
      Top = 37
      Width = 121
      Height = 32
      Caption = 'Buscar Notas'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      Glyph.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        08000000000040020000D30E0000D30E00000001000000010000CE392900216B
        290021842900D64A31002973310039393900396B3900299439007B394200F794
        420039424A00394A4A00424A4A009C4A4A004A6B4A004A734A00183952002142
        5200525A52004A635200527B520039845200D69452005A5A5A005A6B5A005A7B
        5A0039A55A0063316300294A6300945A63009463630008396B00314A6B003152
        6B00EFAD6B00104273007B427300104A7300734A73004ABD7300EFBD73007B29
        7B0029527B00295A7B0042637B004A637B006B737B007B847B00AD947B0052AD
        7B008429840021528400426384006B738400847B840084848400848C84006BB5
        840021528C00215A8C0042638C008C638C00426B8C004A6B8C00947B8C008C84
        8C008C8C8C00942994002963940039639400316B94004A6B9400738494009484
        94007B8C9400848C9400948C9400949494007B9C940073BD94006BC694009C31
        9C0073849C00848C9C007B949C0094949C009C949C009C9C9C0073CE9C00396B
        A500427BA500A57BA500A58CA5008494A500949CA500A59CA50084A5A5009CA5
        A500A5A5A500AD39AD00AD42AD00AD6BAD004A84AD00949CAD00ADA5AD00ADAD
        AD004A7BB5004A84B500528CB5006B9CB500A5ADB500B5ADB500B5B5B5004A84
        BD00528CBD005A8CBD005A94BD00B5B5BD00BDB5BD00BDBDBD00C66BC6005A8C
        C6005A94C600C694C60094ADC600A5B5C600ADBDC600B5BDC600C6BDC600C6C6
        C600CE73CE00CE8CCE005A94CE006394CE006B9CCE00B5BDCE005AC6CE00CEC6
        CE00CECECE00DECECE00639CD6006B9CD6009CB5D6009CBDD600D6CED600D6D6
        D600CEDED600BDEFD6006BA5DE00DED6DE00DEDEDE007BADE7007BB5E7006BC6
        E700E7DEE70073E7E700E7E7E70084BDEF008CBDEF00EFE7EF00E7EFEF00EFEF
        EF005ADEF700F7EFF700F7FFF700FF00FF0042F7FF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A5A5A5A5A5A5
        A5A5A5170537A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A52E346B2B0C37A5
        A5A5A5A5A5A5A5A5A5A5A5A5A5A5A52E3C7A8572462B0C37A5A5A5A5A5A5A5A5
        A5A5A5A5A52E3E7A858D857246462B0C37A5A5A5A5A5A5A5A5A5A5353F79858C
        867A8C724646462B0C37A5A5A5A5A5A5A5A5A51C85857972466C8D7246464646
        2B0B37A5A5A5A5A5A5A5A51C853346461F5985725A864646462B0B37A5A5A5A5
        A5A5A51C8523253B6B8C979D7C48744646462B0B37A5A5A5A5A5A51C85336B8C
        979E8E758A367D664646462B0B37A5A5A5A5A51C858C979E8E758990914C7067
        6C4646462B0B37A5A5A5A521979E8F7F8A969595954D76694A734646462B0B2F
        A5A5A52C6A5E9A9C9C9AA195686F776F417E664646462B0CA5A5A5554555A4A1
        A092694276956F764D805D6C46464611A5A5A5A56E57A49358155F9580577095
        4D815F5373464611A5A5A5A5A514501A04188349689090766F81683787664611
        A5A5A5A5A5060112657851408B76567695776F4D8A206611A5A5A5A5A5A54D43
        51243028165F95896268954D90103B2CA5A5A5A5A5A5A526082209031E9B605F
        89958062902D3F4BA5A5A5A5A5A5A5A50D001D88A6A25491804D69958937A5A5
        A5A5A5A5A5A5A5A5A54D99A26D4E4F314C95906969A5A5A5A5A5A5A5A5A5A5A5
        A5A548133927070F7B5C68A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A519020E5B82
        643DA5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A54D32642949A5A5A5A5A5A5A5
        A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5}
      ParentFont = False
      OnClick = btnNotasClick
    end
    object btnArquivo: TSpeedButton
      Left = 664
      Top = 37
      Width = 121
      Height = 32
      Caption = 'Gerar Arquivo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      Glyph.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        08000000000040020000520B0000520B00000001000000010000EF8C2100EF8C
        3900FFA53900DE9C5200F7AD52009C635A009C6B5A00A56B5A009C6363006B6B
        6300736B63009C5A6B009C636B00A5636B00A56B6B00AD6B6B00DEA56B00AD6B
        7300B5737300847B7300BD7B7300D68C7300EFB57300CE847B00D68C7B00EFBD
        7B0084848400EFBD8400BD9C8C00EFBD8C00F7CE8C00BDAD9C00F7CE9C00DEBD
        A500F7CEA500F7D6A500D6B5AD00DEBDAD00EFCEAD00F7D6AD001052B5003963
        B500DEBDB500EFBDB500EFD6B500F7D6B500DECEBD00DED6BD00F7D6BD00F7DE
        BD00DECECE00EFD6CE00F7DECE00D6D6D600F7DED600F7EFD6002163DE00F7EF
        DE001863EF00F7EFEF00FFF7EF00005AF700FFF7F700FFFFF700FF00FF000063
        FF000073FF00007BFF000084FF00008CFF00218CFF00398CFF00009CFF00109C
        FF0000A5FF0000ADFF0000B5FF0008BDFF0000CEFF0018CEFF0000D6FF0029D6
        FF0021DEFF0000EFFF0021EFFF0031EFFF0000F7FF0018F7FF0029F7FF0000FF
        FF0008FFFF0010FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00404040080E0E
        0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E40404040400B2C29272322201E1B1B19
        191919191919190E40404040400B2C3A29282220201D1B1B191919191919190E
        40404040400B3038413D292220201D1B1B1919191919190E40404040400B3134
        444242292220201D1B1B19191919190E40404040400B34351A4A424329291A1A
        1A1A1A1A1A1A190E40404040400C363734314A4C4444292D201D1B1B1919190E
        40404040400D39393734314A4B4844292D2D1D1B1B19190E40404040400E3935
        2929294C59574B4829291A1A1A1A190E40404040400F3B3C494C53565659554D
        45292D201D1B190E4040404040113E3F464C535653505959544C292D201D1B0E
        4040404040123E351A4C5255585A5959595B291A1A1A1D0E4040404040123E5C
        5C3E3C4F5659564E4A292D2D2D20200E4040404040123E5C5C5C3E3C394F5653
        4845292D2D2D200E4040404040143E351A1A1A1A1A1A1A4F514E47291A0A090E
        4040404040143E5C5C5C5C5C3E3C3939374F47292D20200E4040404040173E5C
        5C5C5C5C5C3E3C393737372F1F13210E4040404040173E351A1A1A1A1A1A1A1A
        1A330706050E0E0E4040404040183E5C5C5C5C5C5C5C3F3E3C2A07100301000E
        4040404040183E5C5C5C5C5C5C5C5C5C3F2A071604020E404040404040183E5C
        5C5C5C5C5C5C5C5C5C2E0716040E40404040404040185C5C5C5C5C5C5C5C5C5C
        5C3207160E4040404040404040152526262B252525252424241C070E40404040
        4040404040404040404040404040404040404040404040404040}
      ParentFont = False
      OnClick = btnArquivoClick
    end
    object Gauge1: TGauge
      Left = 8
      Top = 73
      Width = 777
      Height = 15
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Progress = 0
      Visible = False
    end
    object Label1: TLabel
      Left = 9
      Top = 25
      Width = 40
      Height = 16
      Caption = 'Cliente'
    end
    object Label2: TLabel
      Left = 337
      Top = 24
      Width = 20
      Height = 16
      Caption = 'De:'
    end
    object Label3: TLabel
      Left = 448
      Top = 24
      Width = 24
      Height = 16
      Caption = 'Até:'
    end
    object MaskEdit1: TMaskEdit
      Left = 336
      Top = 43
      Width = 89
      Height = 24
      EditMask = '99/99/9999'
      MaxLength = 10
      TabOrder = 1
      Text = '  /  /    '
    end
    object MaskEdit2: TMaskEdit
      Left = 448
      Top = 43
      Width = 89
      Height = 24
      EditMask = '99/99/9999'
      MaxLength = 10
      TabOrder = 2
      Text = '  /  /    '
    end
    object cboCliente: TwwDBLookupCombo
      Left = 8
      Top = 42
      Width = 321
      Height = 26
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = []
      CharCase = ecUpperCase
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'CLIN_RAZA'#9'50'#9'CLIENTE'#9'F')
      LookupTable = qrCliente
      LookupField = 'CLIN_ID'
      ParentFont = False
      TabOrder = 0
      AutoDropDown = True
      ShowButton = True
      AllowClearKey = False
    end
  end
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 95
    Width = 784
    Height = 419
    ControlType.Strings = (
      'SELE;CheckBox;S;N'
      'OBS;CustomEdit;cboObs'
      'OCORRENCIA;CustomEdit;cboOcorrencia')
    Selected.Strings = (
      'SELE'#9'3'#9'***'#9'F'
      'NOTA'#9'10'#9'NOTA'
      'CRTC'#9'10'#9'CRTC'
      'EMISSAO'#9'10'#9'EMISSAO'
      'OBS'#9'15'#9'OBS'
      'OCORRENCIA'#9'2'#9'OCORRENCIA'
      'FILIAL'#9'10'#9'FILIAL'
      'TEXTO'#9'70'#9'TEXTO')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = dsOcoren
    KeyOptions = [dgEnterToTab, dgAllowDelete, dgAllowInsert]
    TabOrder = 1
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Arial'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnCalcCellColors = wwDBGrid1CalcCellColors
    IndicatorColor = icBlack
  end
  object cboObs: TwwDBComboBox
    Left = 432
    Top = 224
    Width = 273
    Height = 24
    ShowButton = True
    Style = csDropDownList
    MapList = True
    AllowClearKey = False
    DataField = 'OBS'
    DataSource = dsOcoren
    DropDownCount = 8
    ItemHeight = 0
    Items.Strings = (
      'Devolução/Recusa Total'#9'01'
      'Devolução/Recusa Parcial'#9'02'
      'Aceite/entrega por acordo'#9'03')
    Sorted = False
    TabOrder = 2
    UnboundDataType = wwDefault
    Visible = False
  end
  object cboOcorrencia: TwwDBLookupCombo
    Left = 424
    Top = 344
    Width = 321
    Height = 24
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'OCORRENCIA'#9'100'#9'OCORRENCIA'#9'F')
    DataField = 'OCORRENCIA'
    DataSource = dsOcoren
    LookupTable = qrOcorrencias
    LookupField = 'CODIGO'
    TabOrder = 3
    Visible = False
    AutoDropDown = False
    ShowButton = True
    AllowClearKey = False
  end
  object qrOcorrencias: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'SELECT * FROM EDI_OCORRENCIAS'
      'ORDER BY OCORRENCIA')
    ValidateWithMask = True
    Left = 472
    Top = 146
    object qrOcorrenciasOCORRENCIA: TStringField
      DisplayWidth = 100
      FieldName = 'OCORRENCIA'
      Origin = 'NBFDADOS.EDI_OCORRENCIAS.OCORRENCIA'
      FixedChar = True
      Size = 100
    end
    object qrOcorrenciasCODIGO: TStringField
      DisplayWidth = 2
      FieldName = 'CODIGO'
      Origin = 'NBFDADOS.EDI_OCORRENCIAS.CODIGO'
      Visible = False
      FixedChar = True
      Size = 2
    end
  end
  object dsOcoren: TDataSource
    DataSet = qrOcoren
    Left = 376
    Top = 224
  end
  object Q_PARAMETRO: TwwQuery
    DatabaseName = 'NBFDADOS'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'SELECT CONNECTIONSTRING, PAR_RAZA,PAR_CNPJ FROM PARAMETRO'
      'WHERE PAR_ID = 2')
    ValidateWithMask = True
    Left = 612
    Top = 148
    object Q_PARAMETROPAR_RAZA: TStringField
      FieldName = 'PAR_RAZA'
      Origin = 'NBFDADOS.PARAMETRO.PAR_RAZA'
      FixedChar = True
      Size = 50
    end
    object Q_PARAMETROPAR_CNPJ: TStringField
      FieldName = 'PAR_CNPJ'
      Origin = 'NBFDADOS.PARAMETRO.PAR_CNPJ'
      FixedChar = True
      Size = 15
    end
    object Q_PARAMETROCONNECTIONSTRING: TStringField
      FieldName = 'CONNECTIONSTRING'
      FixedChar = True
      Size = 255
    end
  end
  object qrCliente: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'SELECT CLIN_ID, CLIN_RAZA'
      'FROM CLIENTENBF'
      'ORDER BY CLIN_RAZA')
    ValidateWithMask = True
    Left = 705
    Top = 158
    object qrClienteCLIN_RAZA: TStringField
      DisplayLabel = 'CLIENTE'
      DisplayWidth = 50
      FieldName = 'CLIN_RAZA'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_RAZA'
      FixedChar = True
      Size = 50
    end
    object qrClienteCLIN_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'CLIN_ID'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_ID'
      Visible = False
    end
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '.txt'
    Filter = 'TextFile|*.txt'
    Left = 392
    Top = 272
  end
  object T_ACEN: TwwTable
    DatabaseName = 'NBF'
    TableName = 'Acentuacao.DB'
    SyncSQLByRange = True
    NarrowSearch = False
    ValidateWithMask = True
    Left = 440
    Top = 272
    object T_ACENACE_CASC: TIntegerField
      FieldName = 'ACE_CASC'
    end
    object T_ACENACE_DESC: TStringField
      FieldName = 'ACE_DESC'
    end
    object T_ACENACE_NOVO: TStringField
      FieldName = 'ACE_NOVO'
      Size = 1
    end
  end
  object UPD_OCOREN: TUpdateSQL
    ModifySQL.Strings = (
      'update OCOREN'
      'set'
      '  SELE = :SELE,'
      '  NOTA = :NOTA,'
      '  CRTC = :CRTC,'
      '  EMISSAO = :EMISSAO,'
      '  OBS = :OBS,'
      '  OCORRENCIA = :OCORRENCIA,'
      '  FILIAL = :FILIAL,'
      '  TEXTO = :TEXTO,'
      '  CNPJ = :CNPJ,'
      '  CH = :CH'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into OCOREN'
      
        '  (SELE, NOTA, CRTC, EMISSAO, OBS, OCORRENCIA, FILIAL, TEXTO, CN' +
        'PJ, CH)'
      'values'
      
        '  (:SELE, :NOTA, :CRTC, :EMISSAO, :OBS, :OCORRENCIA, :FILIAL, :T' +
        'EXTO, :CNPJ, '
      '   :CH)')
    DeleteSQL.Strings = (
      'delete from OCOREN'
      'where'
      '  ID = :OLD_ID')
    Left = 676
    Top = 273
  end
  object qrExecOcoren: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'exec STP_OCOREN :dt_ini, :dt_fim, :cliente, :ch')
    ValidateWithMask = True
    Left = 288
    Top = 210
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dt_ini'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dt_fim'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cliente'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ch'
        ParamType = ptUnknown
      end>
  end
  object qrOcoren: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM OCOREN')
    Left = 240
    Top = 136
    object qrOcorenSELE: TStringField
      DisplayLabel = '***'
      DisplayWidth = 3
      FieldName = 'SELE'
      FixedChar = True
      Size = 1
    end
    object qrOcorenNOTA: TStringField
      DisplayWidth = 10
      FieldName = 'NOTA'
      Size = 10
    end
    object qrOcorenCRTC: TStringField
      DisplayWidth = 10
      FieldName = 'CRTC'
      Size = 10
    end
    object qrOcorenEMISSAO: TDateTimeField
      DisplayWidth = 10
      FieldName = 'EMISSAO'
      DisplayFormat = 'DD/MM/YYYY'
    end
    object qrOcorenOBS: TStringField
      DisplayWidth = 15
      FieldName = 'OBS'
      Size = 2
    end
    object qrOcorenOCORRENCIA: TStringField
      DisplayWidth = 2
      FieldName = 'OCORRENCIA'
      Size = 2
    end
    object qrOcorenFILIAL: TStringField
      DisplayWidth = 10
      FieldName = 'FILIAL'
      Size = 10
    end
    object qrOcorenTEXTO: TStringField
      DisplayWidth = 70
      FieldName = 'TEXTO'
      Size = 70
    end
    object qrOcorenCNPJ: TStringField
      DisplayWidth = 15
      FieldName = 'CNPJ'
      Visible = False
      Size = 15
    end
    object qrOcorenCH: TIntegerField
      DisplayWidth = 10
      FieldName = 'CH'
      Visible = False
    end
    object qrOcorenID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'ID'
      ReadOnly = True
      Visible = False
    end
  end
  object qrAux: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select count(*) as achei from ocoren'
      'where ch = :ch'
      'and sele = '#39'S'#39)
    ValidateWithMask = True
    Left = 225
    Top = 310
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ch'
        ParamType = ptUnknown
      end>
  end
end
