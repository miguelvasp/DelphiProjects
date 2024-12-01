object frmEstoqueNF: TfrmEstoqueNF
  Left = 196
  Top = 124
  Width = 526
  Height = 320
  Caption = 'Consulta de Estoque x Nota de Entrada'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 510
    Height = 282
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 0
    object GroupBox6: TGroupBox
      Left = 2
      Top = 2
      Width = 506
      Height = 271
      Align = alTop
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Label5: TLabel
        Left = 220
        Top = 116
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
      object Label7: TLabel
        Left = 305
        Top = 116
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
      object Label6: TLabel
        Left = 121
        Top = 116
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
      object Label3: TLabel
        Left = 10
        Top = 116
        Width = 96
        Height = 15
        Caption = 'Data Vencimento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 248
        Top = 65
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
      object Label20: TLabel
        Left = 141
        Top = 17
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
      object Label14: TLabel
        Left = 10
        Top = 17
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
      object Label8: TLabel
        Left = 9
        Top = 65
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
      object Label10: TLabel
        Left = 388
        Top = 116
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
      object Batch1: TMaskEdit
        Left = 224
        Top = 132
        Width = 76
        Height = 22
        AutoSize = False
        BorderStyle = bsNone
        CharCase = ecUpperCase
        EditMask = '!99/99/9999;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 6
        Text = '  /  /    '
      end
      object Batch2: TMaskEdit
        Left = 305
        Top = 132
        Width = 76
        Height = 22
        BorderStyle = bsNone
        CharCase = ecUpperCase
        EditMask = '!99/99/9999;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 7
        Text = '  /  /    '
      end
      object Data2: TMaskEdit
        Left = 120
        Top = 132
        Width = 88
        Height = 22
        BorderStyle = bsNone
        CharCase = ecUpperCase
        EditMask = '!99/99/9999;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 5
        Text = '  /  /    '
      end
      object Data1: TMaskEdit
        Left = 9
        Top = 132
        Width = 91
        Height = 22
        AutoSize = False
        BorderStyle = bsNone
        CharCase = ecUpperCase
        EditMask = '!99/99/9999;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 4
        Text = '  /  /    '
      end
      object cboProduto: TwwDBLookupCombo
        Left = 248
        Top = 81
        Width = 241
        Height = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        CharCase = ecUpperCase
        BorderStyle = bsNone
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'PRO_COD'#9'16'#9'Código'#9'F'
          'PRO_DESC'#9'40'#9'Descrição'#9'F')
        LookupTable = Q_PROD
        LookupField = 'PRO_ID'
        DropDownCount = 15
        Enabled = False
        ParentFont = False
        TabOrder = 3
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = True
      end
      object cboCliente: TwwDBLookupCombo
        Left = 142
        Top = 33
        Width = 347
        Height = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        CharCase = ecUpperCase
        BorderStyle = bsNone
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'CLIN_RAZA'#9'50'#9'Razão Social'#9'F')
        LookupTable = Q_CLINBF
        LookupField = 'CLIN_ID'
        DropDownCount = 16
        ParentFont = False
        TabOrder = 1
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = True
      end
      object cboArea: TwwDBLookupCombo
        Left = 9
        Top = 33
        Width = 120
        Height = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        CharCase = ecUpperCase
        BorderStyle = bsNone
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'AR_NOME'#9'42'#9'Nome'#9'F')
        LookupTable = Q_AREA
        LookupField = 'AR_ID'
        DropDownCount = 15
        ParentFont = False
        TabOrder = 0
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = True
      end
      object rdDescontinuado: TRadioGroup
        Left = 10
        Top = 164
        Width = 167
        Height = 37
        Caption = 'Produto Descontinuado ?'
        Columns = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ItemIndex = 1
        Items.Strings = (
          'Sim'
          'Não')
        ParentFont = False
        TabOrder = 9
      end
      object cboTipo: TwwDBLookupCombo
        Left = 9
        Top = 81
        Width = 225
        Height = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        CharCase = ecUpperCase
        BorderStyle = bsNone
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'TPRO_NOME'#9'41'#9'Nome'#9'F')
        LookupTable = Q_TPROD
        LookupField = 'TPRO_ID'
        DropDownCount = 15
        Enabled = False
        ParentFont = False
        TabOrder = 2
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = True
      end
      object edtLote: TwwDBEdit
        Left = 392
        Top = 132
        Width = 96
        Height = 23
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 8
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object rgAvaria: TRadioGroup
        Left = 184
        Top = 164
        Width = 305
        Height = 37
        Caption = 'Produtos'
        Columns = 3
        ItemIndex = 0
        Items.Strings = (
          'Com Avaria'
          'Sem Avaria'
          'Só Avarias')
        TabOrder = 10
      end
      object BitBtn1: TBitBtn
        Left = 8
        Top = 223
        Width = 161
        Height = 35
        Hint = 'Exportar Excel'
        Caption = 'Gerar Excel'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 11
        OnClick = SBT_VISUClick
        Glyph.Data = {
          76060000424D7606000000000000360400002800000018000000180000000100
          08000000000040020000120B0000120B000000010000F50000000D562700E100
          E100D2E6DC0062CA8D0063447400D55BDF004BB5740053A87200A1CEB000534C
          650085268F00F6FBF700E02FE200339A580091C4A300326D4B008E98A000DCAC
          E3003A935800B4D9BF00EDD0EE0072B1840085C69C00FF00FF00E09EE2002C6D
          4400208E46009A3BA50063A77B0044675A00D98ADD00DBD3E300BEDDCC00EEF7
          F00093CFB1007EB6920085D2A500EC0DEF00A5D8BB00E620EA001C753B00DFF3
          E50045A86A0077C7990069AD820029874700B86FC30062B67F00C325C800A7BA
          B700F0F2F0001A8A4100C2E2CF00664E770008702D00DDF0E200F757FA0095D2
          A800378B54004E936400A6DCBD004DAA700076D0A200B353C300AB96BA003273
          49008FA09F00F701F70063527500D941E10053986A0097DDB900FCFCFB003F71
          570084CA9C00AADBBB005AB47B00B9E7CF0064BD8200893D9600F5F7F6000A6E
          2C00E608E8005D4F6C00429B6300A2D4B00095CEAD0077C59700D6ECDD0089D5
          AF00B6E0C600DABFE50072CC9B00227A4000F12BF500CDE9D700589F7100E78E
          ED008641940041895A0014833A0059AD7400396B5000BFECCF002D965200AAD5
          B70056BF80004AA36A00D76CE0007FD6A60028934E00D555DE003484510082D0
          A5009CD5AE0006782E00E9F8F000516B6600E8A1F000B0DFC6006A447B006BB7
          86006DC7940073B59400DAE9DF0062647400D810DC00E6B1EF00E833ED007AAD
          8900176B320041956000C2E8CF009EDFBD008BC79D0092D0A5001F82410053AA
          6F003E82580065C18A005B436D005BA574008CDEAD006C487C0041A36400FFFB
          FD00B5E5C4001F793D00F7F1F6009DCDAE00A3DEB600BFE9D200FAFDFC006ED3
          9A0086D7AD00F106F30074B38C00DEEFDE0063AC7A00F2F8F6000A732E00E5EE
          E60064B383004BAA6D00E1CAEC00DC65DE003CA0610052B57B0052946B009ED6
          B2002A7E4700B5DEBD00EBD4F5005DB48000E610E7002B955000DF95E100E23E
          E700943AA0008ECAA600FFFFFF00A5E0C300C1DAC800287D4500ADD6BB007CBD
          93009CDEAD00A4D7B500BCE5CD00398755008DC5A2006DCF950080E2AC003A6B
          4A0054AE74008DCDA000AEE4BF0073BC8D00C8E6D500A3D0B200E6B7F00094D6
          AD0050A56E006B427300DF37E00030824D000D7731007CC6990078CFA3004191
          5C0044AC6B00BCEED900E9F2EF0054B27500399E5B009FC5A800BAD8C100E1A0
          EA002C70440021944A009DD1B300EF1AF200187F3D00EFEEF400C9E1D400664D
          78005195660099DBB5006ABA8700575E6B007BC59400E0BBEB00CCEFD60061A0
          7400426B5200309A5500DD68DE007ADBA500117F3500DEE6DE001F8C45006BBD
          8C008ADBB200E2D3EB0000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000017170A103F52
          171717171717171717171717171717171717308C00862031402E1EA5CCAE4317
          171717171717171717170982A086BB24E34BB4B4B4941418ECCCAE4317171717
          17178C28644A566DC04748BCC6582998B4B49414B0A50C521717049333C3B33E
          ED859171712BD55858BC5F29B4B448941127045D3387167A993C48719A712FA1
          773E7A2F507777BCDF80045D3387B98B033C9897BCBC5A50779A24160B593E4C
          1F5E785DF039C5AD6A26B4B4B4B40B48742929580BB585A9F3DD78B71A3915D5
          06B8480BB4B4B4B4B4A1325048484848AC2578B71A392C3DD25A485A3CB3DC69
          8DEE70D750B57777A49B78AA6E721C3D2A20B42126F27AB751B781B421D05C2F
          5B438FAA6E728D6B6BE0B4B4D48512933A46C2379F85854BE7178FCDAF7260CA
          6B02B4B4B4E2A0883B7C7C37B4B4B4B4C817E1CD68726065077CB4B4E9CE88D1
          AD95B4B4D43CBBBB7F17E170EB7260A2A2D450152DD69E954CA669B4585C7AB9
          7F173570EBA90757579F32D8B61321B4B8C7C74829473CBC761744700D964C71
          220BB4B4B4B4B4B4B4B4B4B4B4B49898D91744BD54C94A5C775F5FC634205A13
          B8BB95BE9C0861385E174F63544EE8BFD38559CFF1E4E44CC2A39068738D4517
          17177E498390C4678E4D3C871616B9C5792F6554DE1C6F1717171762BD54A367
          67565686B9B9B99C2C9E0712361C051717171743E5BD8390C3929213B8B8B8B8
          C7C7950E23696C171717171743B2758A8A12546B6BCA8965656565659E42B117
          171717171717521B7D1D1D1D66660F0F0F191941530117171717}
      end
    end
  end
  object DS_PROD: TwwDataSource
    DataSet = Q_PROD
    Left = 458
    Top = 210
  end
  object Q_AREA: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'select AR_ID,AR_NOMe from AREA order by AR_NOME')
    ControlType.Strings = (
      'AR_CONTROL_POS;CustomEdit;wwDBComboBox1'
      'AR_EMPILHA_LIVRE;CustomEdit;wwDBComboBox2'
      'PAR_ID;CustomEdit;wwDBLookupCombo2')
    ValidateWithMask = True
    Left = 403
    Top = 216
    object Q_AREAAR_ID: TAutoIncField
      FieldName = 'AR_ID'
    end
    object Q_AREAAR_NOMe: TStringField
      FieldName = 'AR_NOMe'
      FixedChar = True
      Size = 40
    end
  end
  object Q_CLINBF: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select  CLIN_ID,CLIN_RAZA  from CLIENTENBF where'
      '(CLIN_CONTRATO <> '#39'I'#39' and CLIN_CONTRATO <> '#39'R'#39') '
      'order by CLIN_RAZA ')
    ValidateWithMask = True
    Left = 314
    Top = 16
    object Q_CLINBFCLIN_RAZA: TStringField
      DisplayLabel = 'Razão Social'
      DisplayWidth = 50
      FieldName = 'CLIN_RAZA'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_RAZA'
      FixedChar = True
      Size = 50
    end
    object Q_CLINBFCLIN_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'CLIN_ID'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_ID'
      Visible = False
    end
  end
  object Q_PROD: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    DataSource = DS_CLINBF
    SQL.Strings = (
      'select * from PRODUTO where'
      'CLIN_ID = :CLIN_ID'
      'order by PRO_DESC'
      '')
    ValidateWithMask = True
    Left = 415
    Top = 136
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'CLIN_ID'
        ParamType = ptUnknown
      end>
    object Q_PRODPRO_COD: TStringField
      DisplayLabel = 'Código'
      DisplayWidth = 16
      FieldName = 'PRO_COD'
      Origin = 'NBFDADOS.PRODUTO.PRO_COD'
      FixedChar = True
      Size = 16
    end
    object Q_PRODPRO_DESC: TStringField
      DisplayLabel = 'Descrição'
      DisplayWidth = 40
      FieldName = 'PRO_DESC'
      Origin = 'NBFDADOS.PRODUTO.PRO_DESC'
      FixedChar = True
      Size = 40
    end
    object Q_PRODPRO_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'PRO_ID'
      Origin = 'NBFDADOS.PRODUTO.PRO_ID'
      Visible = False
    end
    object Q_PRODCLIN_ID: TIntegerField
      FieldName = 'CLIN_ID'
      Origin = 'NBFDADOS.PRODUTO.CLIN_ID'
    end
    object Q_PRODTPRO_ID: TIntegerField
      FieldName = 'TPRO_ID'
      Origin = 'NBFDADOS.PRODUTO.TPRO_ID'
    end
    object Q_PRODPRO_ORIGEM: TStringField
      FieldName = 'PRO_ORIGEM'
      Origin = 'NBFDADOS.PRODUTO.PRO_ORIGEM'
      FixedChar = True
      Size = 1
    end
    object Q_PRODUVEN_ID: TIntegerField
      FieldName = 'UVEN_ID'
      Origin = 'NBFDADOS.PRODUTO.UVEN_ID'
    end
    object Q_PRODUVEN_ID_EXP: TIntegerField
      FieldName = 'UVEN_ID_EXP'
      Origin = 'NBFDADOS.PRODUTO.UVEN_ID_EXP'
    end
    object Q_PRODQTDE_UVUE: TFloatField
      FieldName = 'QTDE_UVUE'
      Origin = 'NBFDADOS.PRODUTO.QTDE_UVUE'
    end
    object Q_PRODPRO_QTDE_PALLET: TIntegerField
      FieldName = 'PRO_QTDE_PALLET'
      Origin = 'NBFDADOS.PRODUTO.PRO_QTDE_PALLET'
    end
    object Q_PRODPRO_QTDE_PALLETUV: TFloatField
      FieldName = 'PRO_QTDE_PALLETUV'
      Origin = 'NBFDADOS.PRODUTO.PRO_QTDE_PALLETUV'
    end
    object Q_PRODPRO_PESO: TFloatField
      FieldName = 'PRO_PESO'
      Origin = 'NBFDADOS.PRODUTO.PRO_PESO'
    end
    object Q_PRODPRO_VOLUME: TFloatField
      FieldName = 'PRO_VOLUME'
      Origin = 'NBFDADOS.PRODUTO.PRO_VOLUME'
    end
    object Q_PRODPRO_VOLUME_PALLET: TFloatField
      FieldName = 'PRO_VOLUME_PALLET'
      Origin = 'NBFDADOS.PRODUTO.PRO_VOLUME_PALLET'
    end
    object Q_PRODPRO_ALTURA: TIntegerField
      FieldName = 'PRO_ALTURA'
      Origin = 'NBFDADOS.PRODUTO.PRO_ALTURA'
    end
    object Q_PRODPRO_LASTRO: TIntegerField
      FieldName = 'PRO_LASTRO'
      Origin = 'NBFDADOS.PRODUTO.PRO_LASTRO'
    end
    object Q_PRODPRO_VALIDDIAS: TIntegerField
      FieldName = 'PRO_VALIDDIAS'
      Origin = 'NBFDADOS.PRODUTO.PRO_VALIDDIAS'
    end
    object Q_PRODMARCADOR: TStringField
      FieldName = 'MARCADOR'
      Origin = 'NBFDADOS.PRODUTO.MARCADOR'
      FixedChar = True
      Size = 1
    end
    object Q_PRODPRO_PESO_LIQ: TFloatField
      FieldName = 'PRO_PESO_LIQ'
      Origin = 'NBFDADOS.PRODUTO.PRO_PESO_LIQ'
    end
    object Q_PRODPRO_DESCONTINUA: TStringField
      FieldName = 'PRO_DESCONTINUA'
      Origin = 'NBFDADOS.PRODUTO.PRO_DESCONTINUA'
      FixedChar = True
      Size = 1
    end
    object Q_PRODPRO_COMPR: TFloatField
      FieldName = 'PRO_COMPR'
      Origin = 'NBFDADOS.PRODUTO.PRO_COMPR'
    end
    object Q_PRODPRO_LARG: TFloatField
      FieldName = 'PRO_LARG'
      Origin = 'NBFDADOS.PRODUTO.PRO_LARG'
    end
    object Q_PRODPRO_ALT: TFloatField
      FieldName = 'PRO_ALT'
      Origin = 'NBFDADOS.PRODUTO.PRO_ALT'
    end
    object Q_PRODPRO_REDUZICMS: TFloatField
      FieldName = 'PRO_REDUZICMS'
      Origin = 'NBFDADOS.PRODUTO.PRO_REDUZICMS'
    end
    object Q_PRODPRO_ISENCAO: TStringField
      FieldName = 'PRO_ISENCAO'
      Origin = 'NBFDADOS.PRODUTO.PRO_ISENCAO'
      FixedChar = True
      Size = 1
    end
    object Q_PRODPRO_ICMS: TFloatField
      FieldName = 'PRO_ICMS'
      Origin = 'NBFDADOS.PRODUTO.PRO_ICMS'
    end
    object Q_PRODPRO_CST1: TStringField
      FieldName = 'PRO_CST1'
      Origin = 'NBFDADOS.PRODUTO.PRO_CST1'
      FixedChar = True
      Size = 7
    end
    object Q_PRODPRO_CST2: TStringField
      FieldName = 'PRO_CST2'
      Origin = 'NBFDADOS.PRODUTO.PRO_CST2'
      FixedChar = True
      Size = 7
    end
    object Q_PRODPRO_CST3: TStringField
      FieldName = 'PRO_CST3'
      Origin = 'NBFDADOS.PRODUTO.PRO_CST3'
      FixedChar = True
      Size = 7
    end
    object Q_PRODPRO_CST4: TStringField
      FieldName = 'PRO_CST4'
      Origin = 'NBFDADOS.PRODUTO.PRO_CST4'
      FixedChar = True
      Size = 7
    end
    object Q_PRODPRO_CST5: TStringField
      FieldName = 'PRO_CST5'
      Origin = 'NBFDADOS.PRODUTO.PRO_CST5'
      FixedChar = True
      Size = 7
    end
    object Q_PRODPRO_CST6: TStringField
      FieldName = 'PRO_CST6'
      Origin = 'NBFDADOS.PRODUTO.PRO_CST6'
      FixedChar = True
      Size = 7
    end
    object Q_PRODULTIMO_PRECO: TFloatField
      FieldName = 'ULTIMO_PRECO'
      Origin = 'NBFDADOS.PRODUTO.ULTIMO_PRECO'
    end
    object Q_PRODEMBALAGEM: TStringField
      FieldName = 'EMBALAGEM'
      Origin = 'NBFDADOS.PRODUTO.EMBALAGEM'
      FixedChar = True
      Size = 50
    end
    object Q_PRODTIPO_PRODUTO: TStringField
      FieldName = 'TIPO_PRODUTO'
      Origin = 'NBFDADOS.PRODUTO.TIPO_PRODUTO'
      FixedChar = True
      Size = 10
    end
    object Q_PRODNCM: TStringField
      FieldName = 'NCM'
      Origin = 'NBFDADOS.PRODUTO.NCM'
      FixedChar = True
      Size = 8
    end
    object Q_PRODESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
      Origin = 'NBFDADOS.PRODUTO.ESTOQUE'
    end
    object Q_PRODESTOQUE_2008: TFloatField
      FieldName = 'ESTOQUE_2008'
      Origin = 'NBFDADOS.PRODUTO.ESTOQUE_2008'
    end
    object Q_PRODKIT: TStringField
      FieldName = 'KIT'
      Origin = 'NBFDADOS.PRODUTO.KIT'
      FixedChar = True
      Size = 1
    end
    object Q_PRODINSUMO: TStringField
      FieldName = 'INSUMO'
      Origin = 'NBFDADOS.PRODUTO.INSUMO'
      FixedChar = True
      Size = 1
    end
    object Q_PRODvalor_2008: TFloatField
      FieldName = 'valor_2008'
      Origin = 'NBFDADOS.PRODUTO.valor_2008'
    end
  end
  object Q_TPROD: TwwQuery
    AutoCalcFields = False
    CachedUpdates = True
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    DataSource = DS_CLINBF
    RequestLive = True
    SQL.Strings = (
      'select * from TPPRODUTO_CLINBF  where'
      'CLIN_ID = :CLIN_ID'
      'order by TPRO_NOME')
    ValidateWithMask = True
    Left = 339
    Top = 218
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'CLIN_ID'
        ParamType = ptUnknown
      end>
    object Q_TPRODTPRO_NOME: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 41
      FieldName = 'TPRO_NOME'
      Origin = 'NBFDADOS.TPPRODUTO_CLINBF.TPRO_NOME'
      FixedChar = True
      Size = 40
    end
    object Q_TPRODTPRO_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'TPRO_ID'
      Origin = 'NBFDADOS.TPPRODUTO_CLINBF.TPRO_ID'
      Visible = False
    end
    object Q_TPRODCLIN_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'CLIN_ID'
      Origin = 'NBFDADOS.TPPRODUTO_CLINBF.CLIN_ID'
      Visible = False
    end
  end
  object DS_CLINBF: TwwDataSource
    DataSet = Q_CLINBF
    OnDataChange = DS_CLINBFDataChange
    Left = 266
    Top = 90
  end
  object qrBusca: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select top 100'
      #9'A.*,'
      #9'B.POS_COD,'
      #9'C.AR_NOME,'
      #9'D.PRO_COD,'
      #9'D.PRO_DESC,'
      #9'E.CLIN_RAZA,'
      
        #9'(SELECT TOP 1 NFI_NUMERO FROM NF WHERE OS_ID = A.OS_ID_ORIG AND' +
        ' TDOC_ID IN (2, 4)) AS NOTA,'
      
        #9'(SELECT TOP 1 NFI_DEMI FROM NF WHERE OS_ID = A.OS_ID_ORIG AND T' +
        'DOC_ID IN (2, 4)) AS DATANOTA'
      'from '
      'ESTOQUE A  LEFT OUTER JOIN AREA_POSICOES B '
      'ON A.POS_ID = B.POS_ID,'
      'AREA C , PRODUTO D, CLIENTENBF E '
      'where A.PRO_ID = D.PRO_ID '
      'and  D.CLIN_ID = E.CLIN_ID '
      'and  A.AR_ID = C.AR_ID '
      'and D.PRO_DESCONTINUA = '#39'N'#39
      'and A.ESTQ_QTDE_RETIRA=0'
      'and A.ESTQ_DT_ENTRADA is not null '
      'and D.CLIN_ID = 396'
      '')
    Left = 280
    Top = 216
    object qrBuscaESTQ_QTDE: TFloatField
      FieldName = 'ESTQ_QTDE'
    end
    object qrBuscaESTQ_TAG: TIntegerField
      FieldName = 'ESTQ_TAG'
    end
    object qrBuscaPOS_COD: TStringField
      FieldName = 'POS_COD'
      Size = 6
    end
    object qrBuscaAR_NOME: TStringField
      FieldName = 'AR_NOME'
      Size = 40
    end
    object qrBuscaPRO_COD: TStringField
      FieldName = 'PRO_COD'
      Size = 16
    end
    object qrBuscaPRO_DESC: TStringField
      FieldName = 'PRO_DESC'
      Size = 40
    end
    object qrBuscaCLIN_RAZA: TStringField
      FieldName = 'CLIN_RAZA'
      Size = 50
    end
    object qrBuscaESTQ_ID: TAutoIncField
      FieldName = 'ESTQ_ID'
      ReadOnly = True
    end
    object qrBuscaAR_ID: TIntegerField
      FieldName = 'AR_ID'
    end
    object qrBuscaPOS_ID: TIntegerField
      FieldName = 'POS_ID'
    end
    object qrBuscaOS_ID_ORIG: TIntegerField
      FieldName = 'OS_ID_ORIG'
    end
    object qrBuscaPRO_ID: TIntegerField
      FieldName = 'PRO_ID'
    end
    object qrBuscaESTQ_QTDE_RETIRA: TFloatField
      FieldName = 'ESTQ_QTDE_RETIRA'
    end
    object qrBuscaMANI_ID: TIntegerField
      FieldName = 'MANI_ID'
    end
    object qrBuscaESTQ_PESO: TFloatField
      FieldName = 'ESTQ_PESO'
    end
    object qrBuscaOS_ID_DEST: TIntegerField
      FieldName = 'OS_ID_DEST'
    end
    object qrBuscaESTQ_DT_ENTRADA: TDateTimeField
      FieldName = 'ESTQ_DT_ENTRADA'
    end
    object qrBuscaESTQ_DT_SAIDA: TDateTimeField
      FieldName = 'ESTQ_DT_SAIDA'
    end
    object qrBuscaROM_ID_ENT: TIntegerField
      FieldName = 'ROM_ID_ENT'
    end
    object qrBuscaROM_ID_SAIDA: TIntegerField
      FieldName = 'ROM_ID_SAIDA'
    end
    object qrBuscaROM_DTBATCH: TDateTimeField
      FieldName = 'ROM_DTBATCH'
    end
    object qrBuscaROM_DTVENCTO: TDateTimeField
      FieldName = 'ROM_DTVENCTO'
    end
    object qrBuscaESTQ_LOTE: TStringField
      FieldName = 'ESTQ_LOTE'
    end
    object qrBuscaUVEN_ID: TIntegerField
      FieldName = 'UVEN_ID'
    end
    object qrBuscaAR_ID_ANTERIOR: TIntegerField
      FieldName = 'AR_ID_ANTERIOR'
    end
    object qrBuscaPOS_ID_ANTERIOR: TIntegerField
      FieldName = 'POS_ID_ANTERIOR'
    end
    object qrBuscaESTQ_DT_ULMOV: TDateTimeField
      FieldName = 'ESTQ_DT_ULMOV'
    end
    object qrBuscaPAR_ID: TIntegerField
      FieldName = 'PAR_ID'
    end
    object qrBuscaGEROU_OPER_ROMSAIDA: TStringField
      FieldName = 'GEROU_OPER_ROMSAIDA'
      Size = 1
    end
    object qrBuscaMARCADOR: TStringField
      FieldName = 'MARCADOR'
      Size = 1
    end
    object qrBuscaESTQ_ESCOLHEULOTE: TStringField
      FieldName = 'ESTQ_ESCOLHEULOTE'
      Size = 1
    end
    object qrBuscaQTDE_GERAL: TFloatField
      FieldName = 'QTDE_GERAL'
    end
    object qrBuscaSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 10
    end
    object qrBuscaNOTA: TStringField
      FieldName = 'NOTA'
      ReadOnly = True
      Size = 10
    end
    object qrBuscaDATANOTA: TDateTimeField
      FieldName = 'DATANOTA'
      ReadOnly = True
    end
  end
  object DataSource1: TDataSource
    DataSet = qrBusca
    Left = 216
    Top = 216
  end
end
