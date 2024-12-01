object frmRelatorioRecebimentoMateriais: TfrmRelatorioRecebimentoMateriais
  Left = 365
  Top = 254
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Relatório de Recebimento'
  ClientHeight = 312
  ClientWidth = 789
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Comic Sans MS'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 17
  object lbl6: TLabel
    Left = 75
    Top = 28
    Width = 78
    Height = 17
    Caption = 'PERÍODO DE'
  end
  object lbl7: TLabel
    Left = 304
    Top = 28
    Width = 24
    Height = 17
    Caption = 'ATÉ'
  end
  object Label2: TLabel
    Left = 20
    Top = 68
    Width = 140
    Height = 17
    Caption = 'GRUPO DE MATERIAIS:'
  end
  object Label1: TLabel
    Left = 94
    Top = 108
    Width = 67
    Height = 17
    Caption = 'MATERIAL:'
  end
  object Label4: TLabel
    Left = 118
    Top = 148
    Width = 43
    Height = 17
    Caption = 'LOCAL:'
  end
  object medt1: TMaskEdit
    Left = 168
    Top = 25
    Width = 121
    Height = 25
    EditMask = '99/99/9999'
    MaxLength = 10
    TabOrder = 0
    Text = '  /  /    '
  end
  object medt2: TMaskEdit
    Left = 352
    Top = 25
    Width = 121
    Height = 25
    EditMask = '99/99/9999'
    MaxLength = 10
    TabOrder = 1
    Text = '  /  /    '
  end
  object cboGrupoMaterial: TwwDBLookupCombo
    Left = 168
    Top = 65
    Width = 441
    Height = 25
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'GRU_DESC'#9'40'#9'GRU_DESC'#9'F')
    DataField = 'gru_desc'
    LookupTable = qrGrupoMat
    LookupField = 'GRU_ID'
    TabOrder = 2
    AutoDropDown = False
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
  end
  object cboMaterial: TwwDBLookupCombo
    Left = 168
    Top = 105
    Width = 441
    Height = 25
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'Mat_desc'#9'60'#9'MATERIAL'#9'F'#9)
    DataField = 'mat_desc'
    LookupTable = qrMaterial
    LookupField = 'Mat_id'
    TabOrder = 3
    AutoDropDown = False
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
  end
  object cboLocal: TwwDBLookupCombo
    Left = 168
    Top = 144
    Width = 441
    Height = 25
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'Descricao'#9'50'#9'Descricao'#9'F')
    LookupTable = qrLocal
    LookupField = 'Local_ID'
    TabOrder = 4
    AutoDropDown = False
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
  end
  object Button1: TButton
    Left = 480
    Top = 248
    Width = 121
    Height = 25
    Caption = 'Exportar Excel'
    TabOrder = 5
    OnClick = Button1Click
  end
  object ProgressBar1: TProgressBar
    Left = 0
    Top = 298
    Width = 789
    Height = 14
    Align = alBottom
    Min = 0
    Max = 100
    TabOrder = 6
  end
  object rzImobilizado: TRzRadioGroup
    Left = 168
    Top = 191
    Width = 217
    Height = 73
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 20
    ItemIndex = 0
    Items.Strings = (
      'Todos os Materiais'
      'Desconsiderar Materiais do Imobilizado'
      'Somente Materiais do Imobilizado')
    ParentFont = False
    TabOrder = 7
  end
  object btnGetMaterial: TBitBtn
    Left = 618
    Top = 102
    Width = 32
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    OnClick = btnGetMaterialClick
    Glyph.Data = {
      76060000424D7606000000000000360400002800000018000000180000000100
      08000000000040020000E30E0000E30E00000001000000010000212121000018
      290029292900393939005A39390042424200181852005252520073635200315A
      5A005A5A5A0094735A000039630063636300736B63004A6B6B006B6B6B007B73
      6B00735A73007373730073737B007B7B7B0094847B00A5847B00BD9C7B006384
      84008C8C8C009C948C00AD948C0094949400A59C940084849C009C9C9C00B5AD
      9C00CEBD9C00849CA500A5A5A5009494AD00ADADAD00D6BDAD00FFE7AD00B59C
      B500E7CEB500BDBDBD00D6C6BD009CADC600ADC6C600C6C6C600EFD6C600C6C6
      CE00CECECE00FFDECE00D6D6D600F7E7D600DEDEDE00EFE7DE00D6DEE700DEE7
      E700E7E7E700EFE7E700F7EFE700DEE7EF00EFEFEF00F7F7F700FFF7F700FFFF
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
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00424242424242
      4242424242424242424242424242424242424242424242424242424242424242
      4242424242424242424242424242424242424242424242424224000A42424242
      42424242424242424242424242424242240210101A4242424242424242424242
      424242424242422002152B241A4242424242424242424242424242424242420A
      0A2B2B1A42424242424242424242424242420D1A1A4242030A1D1A4242424242
      42424242424242424202110B080300241A2042424242424242424242201F1F20
      07223335271B0705201F1F1F241F1F2B42424242010101020E241B1B1B201B03
      010101010101010142424242090A1E07222B1C17182C2A0D060109141A1E0A04
      424242420919370A2A2C2C2C2C2C2A1613201D262F37191242424242091F4313
      22283C3E412A2A152636434343432509424242421F09432B1B28333C352A211A
      4343413F43430F1F4242424223094340241D2A302A211A3E3F3E3E3E40430929
      42424242230C433F3E2F24202020243F3E3E3E3E3E430929424242422E06413E
      3A3A3A3A3E24243E3A3A3A3A3E410629424242422E063F3A3636363A3A24243A
      3A3636363A3F0629424242422E0C2D322F2F2F2F322020322F2F2F2F322F0C2B
      42424242422E24242B2B2B2B2B20202B2B2B2B2B24242B424242424242424242
      2B242424242020242424242B4242424242424242424242424242424242424242
      4242424242424242424242424242424242424242424242424242424242424242
      4242424242424242424242424242424242424242424242424242}
  end
  object qrLocal: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM LOCAL'
      'ORDER BY DESCRICAO')
    Left = 16
    Top = 13
    object qrLocalLocal_ID: TAutoIncField
      FieldName = 'Local_ID'
      ReadOnly = True
    end
    object qrLocalDescricao: TStringField
      FieldName = 'Descricao'
      Size = 50
    end
    object qrLocalDisponivelSN: TStringField
      FieldName = 'DisponivelSN'
      FixedChar = True
      Size = 1
    end
    object qrLocalCONSUMO: TStringField
      FieldName = 'CONSUMO'
      FixedChar = True
      Size = 1
    end
    object qrLocalCONTROLA_ESTOQUE: TStringField
      FieldName = 'CONTROLA_ESTOQUE'
      FixedChar = True
      Size = 1
    end
  end
  object qrMaterial: TwwQuery
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'Select Mat_id, Mat_desc from Materiais'
      'WHERE GENERICO NOT IN ('#39'S'#39')'
      'AND MAT_ATIVO = '#39'S'#39
      'order by mat_desc')
    ValidateWithMask = True
    Left = 16
    Top = 112
    object qrMaterialMat_desc: TStringField
      DisplayLabel = 'MATERIAL'
      DisplayWidth = 60
      FieldName = 'Mat_desc'
      FixedChar = True
      Size = 60
    end
    object qrMaterialMat_id: TAutoIncField
      DisplayWidth = 10
      FieldName = 'Mat_id'
      Visible = False
    end
  end
  object qrGrupoMat: TwwQuery
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'SELECT * FROM GRUPO_MATERIAL')
    ValidateWithMask = True
    Left = 16
    Top = 64
    object qrGrupoMatGRU_DESC: TStringField
      DisplayWidth = 40
      FieldName = 'GRU_DESC'
      Origin = 'CURA.GRUPO_MATERIAL.GRU_DESC'
      FixedChar = True
      Size = 40
    end
    object qrGrupoMatGRU_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'GRU_ID'
      Origin = 'CURA.GRUPO_MATERIAL.GRU_ID'
      Visible = False
    end
  end
  object dsExcel: TDataSource
    Left = 608
    Top = 24
  end
  object qrBusca: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    Left = 680
    Top = 16
  end
end
