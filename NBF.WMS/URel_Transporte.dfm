object frmRel_Transporte: TfrmRel_Transporte
  Left = 436
  Top = 57
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Relatório de Controle de Transporte'
  ClientHeight = 465
  ClientWidth = 462
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Verdana'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
  object GroupBox1: TGroupBox
    Left = 16
    Top = 8
    Width = 427
    Height = 57
    Caption = 'Emissão da Nota Fiscal'
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 23
      Height = 14
      Caption = 'De:'
    end
    object Label2: TLabel
      Left = 208
      Top = 24
      Width = 27
      Height = 14
      Caption = 'Até:'
    end
    object MaskEdit1: TMaskEdit
      Left = 48
      Top = 21
      Width = 121
      Height = 22
      EditMask = '99/99/9999'
      MaxLength = 10
      TabOrder = 0
      Text = '  /  /    '
      OnExit = MaskEdit1Exit
    end
    object MaskEdit2: TMaskEdit
      Left = 256
      Top = 21
      Width = 121
      Height = 22
      EditMask = '99/99/9999'
      MaxLength = 10
      TabOrder = 1
      Text = '  /  /    '
      OnExit = MaskEdit2Exit
    end
  end
  object GroupBox2: TGroupBox
    Left = 16
    Top = 113
    Width = 427
    Height = 64
    Caption = 'Cliente NBF'
    TabOrder = 1
    object cbocliente: TwwDBLookupCombo
      Left = 48
      Top = 24
      Width = 329
      Height = 22
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'clin_nome'#9'30'#9'Cliente'#9'F')
      LookupTable = qrClienteNBF
      LookupField = 'clin_id'
      TabOrder = 0
      AutoDropDown = True
      ShowButton = True
      AllowClearKey = False
      OnCloseUp = cboclienteCloseUp
      OnExit = cboclienteExit
    end
    object cboClienteRemetente: TwwDBLookupCombo
      Left = 48
      Top = 24
      Width = 329
      Height = 22
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'clin_nome'#9'30'#9'Cliente'#9'F')
      LookupTable = qrClienteRemetente
      LookupField = 'clin_id'
      TabOrder = 1
      Visible = False
      AutoDropDown = True
      ShowButton = True
      AllowClearKey = False
      OnCloseUp = cboclienteCloseUp
      OnExit = cboclienteExit
    end
  end
  object RadioGroup1: TRadioGroup
    Left = 16
    Top = 289
    Width = 425
    Height = 56
    Caption = 'Produto'
    TabOrder = 3
  end
  object cboProduto: TwwDBLookupCombo
    Left = 64
    Top = 307
    Width = 329
    Height = 22
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'pro_cod'#9'16'#9'pro_cod'#9'F'
      'pro_desc'#9'40'#9'pro_desc'#9'F')
    LookupTable = qrProduto
    LookupField = 'pro_id'
    TabOrder = 4
    AutoDropDown = True
    ShowButton = True
    AllowClearKey = False
  end
  object rgTransportador: TRadioGroup
    Left = 16
    Top = 241
    Width = 425
    Height = 49
    Caption = 'Transportador'
    Columns = 3
    ItemIndex = 0
    Items.Strings = (
      'Todos'
      'NBF'
      'Retira')
    TabOrder = 5
  end
  object BitBtn1: TBitBtn
    Left = 160
    Top = 411
    Width = 137
    Height = 33
    Caption = '     Visualizar'
    TabOrder = 8
    OnClick = BitBtn1Click
    Glyph.Data = {
      76060000424D7606000000000000360400002800000018000000180000000100
      08000000000040020000330B0000330B00000001000000010000000000003131
      3100FFB552007B5A5A008C636300FFCE6300FFCE6B00FFD66B008C637300A573
      7300B5847300FFD673009C7B7B00FFD67B00FFDE7B00B5848400FFDE8400A58C
      8C00AD8C8C00B58C8C00CE948C00FFDE8C00FFE78C00B5949400BD949400FFE7
      9400BD9C9C00CE9C9C00FFE79C00FFEF9C00C6A5A500CEA5A500FFEFA500C6AD
      AD00CEADAD00FFEFAD00FFF7AD00CEB5B500FFF7B500DEC6BD00FFF7BD00D6B5
      C600FFFFC600F7E7CE00FFEFD600DEDEDE00FFEFDE00FFEFE700FFF7EF00FFF7
      F700FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
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
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00323232323232
      3232323232323232323232323232323232323232220F04040404040404040404
      040404030303013232323232222D1E1A1A1A181A181A181A181317170C030132
      32323232322229221E1E1E1E1E1E1A1A18131312080132323232323232322222
      0F0F0F0F0F0F0404040403030132323232323200000000000000000000000000
      0000000000000000323222222222222222220F0F0F0F0F0F0F0F0F0F0F0F0F0F
      0432221B1B1B1B1B1B1B1B1B11111111111111111111110F0432221B04040404
      04040404040404040404040404042D0F0432221B050505050505050505050505
      050505050505050F0432221B05050505050F0F0F0F0F0F0F0F0F05050505050F
      0932221B0506060B0B14312F2F2B2B2B2B0F0B060605050F0932221B050B0B0D
      0D143331302F2E2B2B0F0D0B0B0605220932221B0B0D0D101014333331312F2E
      2B0F0D0D0D0B05220932221B10101010151433333333302F2B0F1515100D0522
      0932221B1010151519143333333331302F0F1510151010220932221B10101519
      1C143333333333312F0F1915151510220932221B1015191C1C14333333330A0A
      0A0F1919151010220932221B10151C202014333333330A020F201C1C19101022
      0932221B101920202314333333330A0F2323201C1C1C10220F32221B0D202323
      2614272727270F23232323201C1C0D220F32221B20282628282A2A2A2A2A2A2A
      28282626262A20220F32221B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B22
      0F32322222222222222222222222222222222222222222223232}
  end
  object rgGrupo: TRadioGroup
    Left = 16
    Top = 345
    Width = 425
    Height = 49
    Caption = 'Agrupar por'
    Color = clBtnFace
    Columns = 3
    ItemIndex = 0
    Items.Strings = (
      'Produto'
      'Nota Fiscal')
    ParentColor = False
    TabOrder = 6
  end
  object GroupBox3: TGroupBox
    Left = 16
    Top = 176
    Width = 425
    Height = 65
    Caption = 'Tipo de Produto'
    TabOrder = 2
    object cbotpProduto: TwwDBLookupCombo
      Left = 48
      Top = 24
      Width = 329
      Height = 22
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'TPRO_NOME'#9'40'#9'Tipo'#9'F')
      LookupTable = qrTPProduto
      LookupField = 'TPRO_ID'
      TabOrder = 0
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
    end
  end
  object GroupBox4: TGroupBox
    Left = 16
    Top = 400
    Width = 129
    Height = 49
    Caption = 'Fator de Cálculo'
    TabOrder = 7
    object edtFator: TEdit
      Left = 23
      Top = 18
      Width = 89
      Height = 22
      TabOrder = 0
      Text = '0,00'
    end
  end
  object BitBtn2: TBitBtn
    Left = 304
    Top = 411
    Width = 137
    Height = 33
    Caption = '     Excel'
    TabOrder = 9
    OnClick = BitBtn2Click
    Glyph.Data = {
      36090000424D3609000000000000360000002800000018000000180000000100
      20000000000000090000F00A0000F00A00000000000000000000FFFFFF00FFFF
      FF000C4C208073BD89CD44CB6B680068001BFFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003D774F4F1863
      30B204591FF68BC89DFEBDE4CAF69AD6ACDE89D39EB581C49590C7CCCDADBDC0
      C0869FA3A2566B6F6F2B0000000BFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF001C6433C1176B
      32FF0C732EFF88C99CFFA4D3B8FF8AD2A9FF99DBB5FFABDABFFFFEFFFFFFFFFF
      FFFFFFFCFFFFF7F4F7FFEBE9ECE4D5D7D7BBBFC2C289A1A4A456626868280000
      0006FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0011612BB01B75
      3AFE14833AFF88CA9CFF95CEADFF7FD6A6FF80E2ACFF99E1BBFFFDFCFDFFBBE1
      CAFFC8E9D5FFD6ECDDFFE2F4E7FFFBFFFCFFFFFFFFFFFFFBFDFFF7F3F6FDEAE8
      EBDED1D5D4B2BAC1C080969F9E4B4755531FFFFFFF00FFFFFF0015652FAE1E79
      3CFE18883EFF8DCDA0FF8ECAA6FF77D09DFF7ADBA5FFA0DFBEFFFDFBFDFF80CB
      A3FF82D5AAFF77C799FF54B275FFD6EBDBFFD5ECDFFFBAE4CCFFCDE9D7FFDFF3
      E5FFFFFFFFFFFDFEFEFFFBF9FBFFF5F3F6F8D2DCDBC7839B9634166630AB1F7A
      3EFE1A8A41FF90CFA3FF87C59FFF6EC994FF6ED39AFFA2DDBEFFFCFCFCFF82D2
      AAFF86D7ADFF7FD0A2FF62B681FFE5EEE6FFB0DFC6FF76D0A2FF6EC492FF62B6
      7FFFF5F9F6FFB0E0C5FFB1DFC4FFBFE4CBFFEEF8F4F5ABBCBE45186731A8217A
      3FFE1C8C42FF92D0A5FF7FBF98FF65C18AFF62CA8DFFA4DABDFFFAFDFBFFBFE9
      D2FFBCE5CDFFBCE6CCFFB7E0C4FFF4F7F4FFADE2C8FF87D8AEFF85D2A5FF88C6
      9DFFF8F9F8FF89D5AFFF75CF9FFF5AB47BFFD7E9E0E7BDC2CF34196733A7237C
      41FE1F8C45FF94D1A7FF77B990FF5BB980FF56BF80FFA5D8BBFFFFFFFFFFFFFF
      FFFFFFFFFFFFFEFDFDFFF7FAF8FFFDFEFDFFE9F8F0FFE1F5E9FFD9F1E1FFD9EE
      DFFFF8FBF9FFA5E0C3FF9EDDBAFF9ED6B2FFDEEDE8E39AA7AF281A6834A6247D
      42FE208E46FF95D2A8FF70B288FF52B076FF4BB574FFACD8BFFFFDFEFDFFF6FB
      F7FFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4EFE6FFF0F2F0FFF5F7
      F6FFFDFEFDFFFCFCFBFFFBFCFAFFFAFDFCFFE8F4F3DE5676711D1C6935A5267E
      44FD239048FF98D4ABFF69AD82FF4DAA70FF44AC6BFFB5DBC6FFFCFDFCFFB6E0
      C6FFA7DCBEFF8ECBA8FF9DD1B3FFABD3BAFF59A571FF117F35FF33874FFF9FC5
      A8FFF4F9F6FFABDEC2FFB0DEC3FFB2DEC1FFDCEEE9D8414D59131D6A37A6287F
      46FD26914BFF9AD4ADFF63A77BFF4DA76EFF45A86AFFBEDDCCFFFFFFFFFFF0F7
      F3FFA2DBBBFF8ADBB2FF6EC898FF247F43FF0A6E2CFF257E45FF7AAD89FFFFFE
      FEFFECF7F2FF78CFA3FF72CC9BFF62B780FFD2E7E0D32914330A1F6B39A72A80
      48FE28934EFF9CD5AEFF5CA175FF4DA46CFF45A467FFC9E1D4FFFFFFFFFFFFFF
      FFFFE8F3ECFFA0DBBAFF3A9059FF1E7C3DFF378B54FF53986AFF54AD71FFDDF0
      E2FFEFF9F4FF9EDFBDFFA1DEBAFFAADBBBFFD8EAE6CC00000001216C3AA92D81
      49FE2B9550FF9CD6AFFF589F71FF50A56EFF4AA36AFFD2E6DCFFFFFFFFFFFFFF
      FFFFFFFFFFFF519566FF0A732EFF207F41FF4E9364FFDAE9DFFFD3EBDAFFDDEE
      E2FFFFFFFFFFFEFEFDFFFDFDFCFFFCFDFCFFDEEDEBC5FFFFFF00236D3BAE2F83
      4CFE2D9652FF9BD6AEFF559D6FFF58AB76FF53A872FFDCEBE3FFFFFFFFFFFDFC
      FDFF61A074FF0D7731FF1F8241FF41915CFF5DB480FF9DCDAEFFFFFFFFFFFFFF
      FFFFE6F3EBFFA7DDBEFFA3D7B8FFA4D7B5FFDDECE9BFFFFFFF00246F3DB23184
      4EFE2F9854FF9BD6AEFF55A271FF66B785FF64B383FFE9F2EFFFF4F8F5FF72B1
      84FF298747FF399E5BFF63AC7AFF9FCBAEFF56B37BFF3CA061FFAAD5B7FFFFFF
      FFFFD7EDE1FF72CD9FFF6DC794FF78C091FFE0ECEBB8FFFFFF00266F3FB43385
      50FE309A55FF9EDAB0FF55A874FF77C597FF7AC299FFF2F8F6FFEEF4EFFFBAD8
      C1FFC1DAC8FFB4D9BFFFEEF7F0FFFFFFFFFFADD2B9FFA3D0B2FFA2D4B0FFFAFB
      FAFFDEF4E9FF97DDB9FFA4DDBBFFBFE4CBFFDEE9E9B0FFFFFF00277140B83486
      50FE339A58FFA3DEB6FF5CB27BFF82D0A5FF93CFB1FFF6F9FAFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFAFCFBFFF8FBF9FFD4E4E1B3FFFFFF00276F3FB83989
      55FE419E63FF98D9ACFF84CA9CFF74D09DFFAADEC7FFCAE6DBFFCFEADCFFC8E6
      D5FFC2E2CFFFBCDFCAFFB7DDC6FFB2DAC2FFABD7BCFFA4D3B6FF9ACDADFF8DC5
      A2FF74B38CFFA1CDB2FFD6F3E195E8F2F25CBCD0CD35FFFFFF002A6E418D3F8A
      59FD429B63FF64BD82FFCCEFD6FF6DCF95FFBCEED9FFA0DFBEFF8ED2ABFF7CC6
      99FF6FBD8BFF6ABA87FF65B782FF5DB37CFF54AE74FF4CA96DFF41A364FF2C95
      52FF06782EFF5BA574FF7DE0984AFFFFFF00FFFFFF00FFFFFF001E5E332C2F7B
      49EB419760FF41A365FFAEE4BFFFBFECCFFF8CDAAEFFB9E7CFFFA6DCBDFF92CF
      A9FF85C69CFF7FC398FF7AC094FF73BC8DFF6BB786FF62B27FFF57AC75FF439E
      63FF187F3DFF63A87BFF90E1A860FFFFFF00FFFFFF00FFFFFF00FFFFFF002B72
      4391398755FF449C65FF4BAA6DFFBCEBCAFFC2E8CFFF92CFAAFF92CBA8FF89C5
      9FFF7FBE95FF7CBD93FF78BA90FF71B78AFF69B283FF60AD7CFF55A672FF3C95
      5BFF08702DFF61A478FF97E4AE66FFFFFF00FFFFFF00FFFFFF00FFFFFF001C57
      2F0B2E7547CD3A8855FF419560FF44A265FF88D09FFFB5E5C4FFB3E0C2FFB0DA
      BEFFAFD9BDFFADD6BBFFADD5BBFFAAD4B8FFA6D2B5FFA1CEB0FF9DCBADFF91C4
      A3FF7EB692FFABD2B8FFA8E9BB76FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00134725072D724582347D4DDB398554F93E8D5BFF3A9358FF429E60FF4AA4
      67FF4DA66AFF50A86CFF53AA6FFF57AC72FF59AD74FF5AAF76FF5BAF76FF5CAD
      76FF60AD78FD7CBB8FDA98D9AB49FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF001350261B35764B7F3A7D51CB2E7446E32F7347E52D72
      46EA2D7245F02C7145F32A7144F6297142F7287142F7277040F9297142FC3273
      49FF2C6740C40000001EFFFFFF00FFFFFF00FFFFFF00FFFFFF00}
  end
  object rgTpDoc: TRadioGroup
    Left = 16
    Top = 64
    Width = 425
    Height = 49
    Caption = 'Tipo de Nota Fiscal'
    Columns = 3
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Verdana'
    Font.Style = []
    ItemIndex = 0
    Items.Strings = (
      'Saída'
      'Entrada'
      'Remetente')
    ParentFont = False
    TabOrder = 10
    OnClick = rgTpDocClick
  end
  object qrClienteNBF: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select  CLIN_ID,CLIN_RAZA as clin_nome from CLIENTENBF where'
      '(CLIN_CONTRATO <> '#39'I'#39' and CLIN_CONTRATO <> '#39'R'#39') '
      'order by CLIN_RAZA ')
    ValidateWithMask = True
    Left = 400
    Top = 142
    object qrClienteNBFclin_nome: TStringField
      DisplayLabel = 'Cliente'
      DisplayWidth = 30
      FieldName = 'clin_nome'
      FixedChar = True
      Size = 30
    end
    object qrClienteNBFclin_id: TAutoIncField
      DisplayWidth = 10
      FieldName = 'clin_id'
      Visible = False
    end
  end
  object qrProduto: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'select pro_id, pro_cod, pro_desc from produto'
      'order by pro_cod')
    ValidateWithMask = True
    Left = 248
    Top = 134
    object qrProdutopro_cod: TStringField
      DisplayWidth = 16
      FieldName = 'pro_cod'
      FixedChar = True
      Size = 16
    end
    object qrProdutopro_desc: TStringField
      DisplayWidth = 40
      FieldName = 'pro_desc'
      FixedChar = True
      Size = 40
    end
    object qrProdutopro_id: TAutoIncField
      DisplayWidth = 10
      FieldName = 'pro_id'
      Visible = False
    end
  end
  object qrExecConsulta: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      
        'EXEC REL_TRANSPORTE2 :USUARIO, :DE, :ATE, :CLIN_ID, :PRO_ID, :TR' +
        'ANS, :GRUPO, :FATOR, :TPDOC')
    ValidateWithMask = True
    Left = 328
    Top = 358
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'USUARIO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CLIN_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PRO_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TRANS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'GRUPO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FATOR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TPDOC'
        ParamType = ptUnknown
      end>
  end
  object qrTPProduto: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'SELECT TPRO_ID, TPRO_NOME FROM TPPRODUTO_CLINBF')
    ValidateWithMask = True
    Left = 408
    Top = 198
    object qrTPProdutoTPRO_NOME: TStringField
      DisplayLabel = 'Tipo'
      DisplayWidth = 40
      FieldName = 'TPRO_NOME'
      Origin = 'NBFDADOS.TPPRODUTO_CLINBF.TPRO_NOME'
      FixedChar = True
      Size = 40
    end
    object qrTPProdutoTPRO_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'TPRO_ID'
      Origin = 'NBFDADOS.TPPRODUTO_CLINBF.TPRO_ID'
      Visible = False
    end
  end
  object qrRel: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select * from REL_TRANSPORTE'
      'where ch = :ch')
    ValidateWithMask = True
    Left = 400
    Top = 310
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ch'
        ParamType = ptUnknown
      end>
    object qrRelDATA: TDateTimeField
      FieldName = 'DATA'
      Origin = 'NBFDADOS.REL_TRANSPORTE.DATA'
      DisplayFormat = 'DD/MM/YYYY'
    end
    object qrRelNOTA_FISCAL: TStringField
      FieldName = 'NOTA_FISCAL'
      Origin = 'NBFDADOS.REL_TRANSPORTE.NOTA_FISCAL'
      FixedChar = True
      Size = 10
    end
    object qrRelPESO: TFloatField
      FieldName = 'PESO'
      Origin = 'NBFDADOS.REL_TRANSPORTE.PESO'
      DisplayFormat = '###,##0.00'
    end
    object qrRelOBS: TStringField
      FieldName = 'OBS'
      Origin = 'NBFDADOS.REL_TRANSPORTE.OBS'
      FixedChar = True
      Size = 1
    end
    object qrRelCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'NBFDADOS.REL_TRANSPORTE.CODIGO'
      FixedChar = True
    end
    object qrRelPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Origin = 'NBFDADOS.REL_TRANSPORTE.PRODUTO'
      FixedChar = True
      Size = 50
    end
    object qrRelFATURA: TFloatField
      FieldName = 'FATURA'
      Origin = 'NBFDADOS.REL_TRANSPORTE.FATURA'
      DisplayFormat = '###,##0.00'
    end
    object qrRelUV: TFloatField
      FieldName = 'UV'
      Origin = 'NBFDADOS.REL_TRANSPORTE.UV'
    end
    object qrRelUE: TFloatField
      FieldName = 'UE'
      Origin = 'NBFDADOS.REL_TRANSPORTE.UE'
    end
  end
  object qrFiltraProduto: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'SELECT DISTINCT CODIGO FROM REL_TRANSPORTE'
      'ORDER BY CODIGO')
    ValidateWithMask = True
    Left = 104
    Top = 270
    object qrFiltraProdutoCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'NBFDADOS.REL_TRANSPORTE.CODIGO'
      FixedChar = True
    end
  end
  object qrFiltraNotaFiscal: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'SELECT DISTINCT NOTA_FISCAL FROM REL_TRANSPORTE'
      'ORDER BY NOTA_FISCAL')
    ValidateWithMask = True
    Left = 208
    Top = 270
    object qrFiltraNotaFiscalNOTA_FISCAL: TStringField
      FieldName = 'NOTA_FISCAL'
      Origin = 'NBFDADOS.REL_TRANSPORTE.NOTA_FISCAL'
      FixedChar = True
      Size = 10
    end
  end
  object qrDetalhe: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'SELECT *, round(fatura, 2) as fat FROM REL_TRANSPORTE')
    ValidateWithMask = True
    Left = 312
    Top = 270
    object qrDetalheDATA: TDateTimeField
      FieldName = 'DATA'
      Origin = 'NBFDADOS.REL_TRANSPORTE.DATA'
      DisplayFormat = 'DD/MM/YYYY'
    end
    object qrDetalheNOTA_FISCAL: TStringField
      FieldName = 'NOTA_FISCAL'
      Origin = 'NBFDADOS.REL_TRANSPORTE.NOTA_FISCAL'
      FixedChar = True
      Size = 10
    end
    object qrDetalhePESO: TFloatField
      FieldName = 'PESO'
      Origin = 'NBFDADOS.REL_TRANSPORTE.PESO'
    end
    object qrDetalheOBS: TStringField
      FieldName = 'OBS'
      Origin = 'NBFDADOS.REL_TRANSPORTE.OBS'
      FixedChar = True
      Size = 8
    end
    object qrDetalheCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'NBFDADOS.REL_TRANSPORTE.CODIGO'
      FixedChar = True
    end
    object qrDetalhePRODUTO: TStringField
      FieldName = 'PRODUTO'
      Origin = 'NBFDADOS.REL_TRANSPORTE.PRODUTO'
      FixedChar = True
      Size = 50
    end
    object qrDetalheFATURA: TFloatField
      FieldName = 'FATURA'
      Origin = 'NBFDADOS.REL_TRANSPORTE.FATURA'
    end
    object qrDetalheCH: TIntegerField
      FieldName = 'CH'
      Origin = 'NBFDADOS.REL_TRANSPORTE.CH'
    end
    object qrDetalhefat: TFloatField
      FieldName = 'fat'
    end
    object qrDetalheUV: TFloatField
      FieldName = 'UV'
    end
    object qrDetalheUE: TFloatField
      FieldName = 'UE'
    end
  end
  object qrTotais: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'SELECT '
      'round(SUM(PESO), 2)  AS TPESO, '
      'ROUND(SUM(FATURA), 2) AS TFATURA,'
      'SUM(UV) AS TUV,'
      'SUM(UE) AS TUE'
      'FROM REL_TRANSPORTE')
    ValidateWithMask = True
    Left = 328
    Top = 222
    object qrTotaisTPESO: TFloatField
      FieldName = 'TPESO'
    end
    object qrTotaisTFATURA: TFloatField
      FieldName = 'TFATURA'
    end
    object qrTotaisTUV: TFloatField
      FieldName = 'TUV'
    end
    object qrTotaisTUE: TFloatField
      FieldName = 'TUE'
    end
  end
  object qrCount: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'select count(*) as achei from  rel_transporte')
    ValidateWithMask = True
    Left = 248
    Top = 222
    object qrCountachei: TIntegerField
      FieldName = 'achei'
    end
  end
  object qrClienteRemetente: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select  CLIN_ID,CLIN_RAZA as clin_nome from CLIENTENBF where'
      '(CLIN_CONTRATO <> '#39'I'#39' and CLIN_CONTRATO = '#39'R'#39') '
      'order by CLIN_RAZA ')
    ValidateWithMask = True
    Left = 408
    Top = 254
    object qrClienteRemetenteCLIN_ID: TAutoIncField
      FieldName = 'CLIN_ID'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_ID'
    end
    object qrClienteRemetenteclin_nome: TStringField
      FieldName = 'clin_nome'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_RAZA'
      FixedChar = True
      Size = 50
    end
  end
end
