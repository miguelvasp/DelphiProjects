object FConcBancaria: TFConcBancaria
  Left = 246
  Top = 65
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Sistema de Controle Financeiro'
  ClientHeight = 534
  ClientWidth = 792
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 792
    Height = 43
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object Label3: TLabel
      Left = 7
      Top = 10
      Width = 176
      Height = 22
      Caption = 'Conciliação Bancária'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object SBT_SAIR: TSpeedButton
      Left = 751
      Top = 2
      Width = 36
      Height = 38
      Cursor = crHandPoint
      Hint = 'Sair'
      Glyph.Data = {
        6E030000424D6E030000000000002E0100002800000018000000180000000100
        08000000000040020000110F0000110F00003E0000003E000000A1400000B640
        0000C0400000C0480000C0500000CA500000CA580000D4580000D4600000E060
        0000EA600000F4600000F46A0000FF6A00008F3803002A2A2A001C5031001C58
        3100405038001C603800236038004860380016584000166040001C6040003160
        4000166A4000236A400073484800985048002A604800116A4800166A48001673
        48002A6A5000117350001673500023735000117B50007B7B5000FFAB50000B7B
        5800117B58000B84580011845800A18458000B846000068F60000B8F60006A6A
        6A0006986A00F4A16A00F4B68F00FFCA8F00EAC0AB00F4C0AB00FFE0B600F4CA
        C000FFD4C000FFE0D400FF00FF00FFFFFF003C3C3C3C3C3C3C3C3C3C3C3C3C3C
        3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C
        3C3C3C3C3C3C3C3C3C3C1C0F0F3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C1C
        0F0F00000F1C1C1C1C1C1C1C1C1C3C3C3C3C3C3C3C1C0F00000E00010F323232
        32323232321C3C3C3C3C3C3C1C000000010101010F32323232323030301C3C3C
        3C3C3C3C1C010101010103030F323030302E2B2A251C3C3C3C3C3C3C1C010303
        030303030F202A2A2A262324221C3C3C3C3C3C3C1C030303040404030F162324
        21242020241C3C3C3C3C3C3C1C030404040404060F24201A1813181B1E1C3C3C
        3C3C3C3C1C040404060628060F10141411141912121C3C3C3C3C3C3C1C060606
        063538280F1212111515272D331C3C3C3C3C3C3C1C060606060635060F333333
        33333333331C3C3C3C3C3C3C1C060608080808080F33333333333333331C3C3C
        3C3C3C3C1C080808080808080F33333B3B3B3A33331C3C3C3C3C3C3C1C080909
        08080A0A0F363B3B3A39363B331C3C3C3C3C3C3C1C0D0A0A0A0A0A0A0F333437
        3B393734331C3C3C3C3C3C3C1C060D0D0C0B0A0A0F33333336363633331C3C3C
        3C3C3C3C3C1D1D060D0A0C0D0F33333333333333331C3C3C3C3C3C3C3C3C3C1D
        1D060D0D0F3131313131313131313C3C3C3C3C3C3C3C3C3C3C1D1D1D1D3C3C3C
        3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C
        3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C
        3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C}
      ParentShowHint = False
      ShowHint = True
      OnClick = SBT_SAIRClick
    end
    object Fonte: TDBNavigator
      Left = 272
      Top = 7
      Width = 208
      Height = 25
      Cursor = crHandPoint
      DataSource = DS_MOVI
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbPost, nbCancel]
      Hints.Strings = (
        'Primeiro'
        'Anterior'
        'Próximo'
        'Último'
        'Incluir'
        'Excluir'
        'Alterar'
        'Confirmar'
        'Cancelar'
        'Refresh'
        '')
      ParentShowHint = False
      ConfirmDelete = False
      ShowHint = True
      TabOrder = 0
      Visible = False
    end
    object BitBtn1: TBitBtn
      Left = 494
      Top = 3
      Width = 113
      Height = 38
      Cursor = crHandPoint
      Caption = 'Movimentação'
      TabOrder = 1
      OnClick = BitBtn1Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555550
        00555555555FFF57775F55555500050BBB0555FFF57775777775500050EEE000
        777057775777777775F709990777777770F0777775FFFFFFF7F7099990000000
        F0F07F5557777777F7F70FFFFFFFFFF0F0F07F5555555557F7F70FFFFFFFFFF0
        F0F07F5555555557F7F70FFFFFFFFFF0F0F07F5FF5FF5F57F7F70F77F77F7FF0
        F0F07F7757757557F7F70FFFFFFFFFF0F0F07F5FF5FFF557F7F70F77F777FFF0
        F0F07F7757775557F7F70FFFFFFFFFF0F0F07FF5F5F5F5F7F7F700F0F0F0F0F0
        F00577F7F7F7F7F7F77F0070707070700005777777777777777F707070707070
        55055757575757575F7555050505050500555575757575757755}
      NumGlyphs = 2
    end
    object BitBtn2: TBitBtn
      Left = 610
      Top = 3
      Width = 138
      Height = 38
      Cursor = crHandPoint
      Caption = 'Conciliar Conta'
      TabOrder = 2
      OnClick = BitBtn2Click
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0586BD28
        9FD32DA3D529A0D3219ACE1491C70787BFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FF0188BF0E92C67ACFF781D0FB7ECFF87ACEF775CBF66CC6F250B7E6289FD306
        86BFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF0489C00696CA1196C97DD3F37DD1F776CBF778CBF676CBF64DB1
        DE66C1EB81D1FB66C4EF269ED1FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FF078EC40F9FD11599CA87DDF388DAF77BD1F7
        77CCF677CCF739A6D44AB0DD7BCFFA7BCEF77DCFF841AFE0FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0B92C61BA9D81B9ECC95
        E5F393E5F788DCF783D8FB50A5CE2689B53AA6D56BC5F078CCF777CBF67BCEF8
        0B8FC2FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0F96
        CA27B2E122A0D0ACEAF4A6EEF893E6F791E5FC4C9DBD156589278EBA58BAE67A
        CEF876CBF676CBF60B8FC2FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF1399CC34BBE928A5D3C9EFF6C2F3FAA7EEF799EAF88BDEF6216D
        8F23769C72C9F477CCF776CBF676CBF60B8FC2FF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FF189DD045C7F232AAD7F4FBFCF3FFFFD5FAFE
        BCF6FBA7F0FB4190AC307E9F80D4F778CEF776CBF676CBF60B8FC2FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF189DD033B5E51A98CB83
        CEE681CEE773C5E173C7E17DD1E78BDEEF8BDDEE95E2FA88D9FA7ACFF776CBF7
        0B8FC2FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0A8C
        C22EB5D834B6D725A5CA29ACCF28B1D51CA4CE1398C71C9ECC38AFD764C9E788
        DCF792DEFE33A6D80B8FC2FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF098CC06EEBF64AB7CB0488BA1088B265DEEA54DEF032C1E018A9
        D30493C70389C01698CA5DC2E639ACD80B8FC2FF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FF0A91C5168FB80084BA087FAF7FF4F7
        70F2FB4DD7EB32C0E01392BD0486B6017FB21EA4CB0C8CC10B8FC2FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF03699C03
        89BD057BAD41C2DD65E5F360E5F349D1E91184AF0280B4057BAB1EA4CB0182BB
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FF038CC00376A7FF00FFFF00FF0B90C2139AC9097FAF0383B605
        7AAD0288C0FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FF23A5D70E83B5FF00FFFF00FFFF00FFFF00
        FF046D9D0388BB056A9AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF3BACD451CAEE076898
        FF00FFFF00FFFF00FF046B9A038ABD056796FF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF10
        77A070EAF459CFE5137DA7FF00FF066696047EB10388BBFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FF147DA55ED5E375EEF85AD1EA4BC4EB27ACDE0674A5FF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF157EA52A99BA2795
        BA0E74A1FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 43
    Width = 792
    Height = 126
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 1
    object Label1: TLabel
      Left = 70
      Top = 12
      Width = 68
      Height = 14
      Caption = 'Banco/Conta'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 435
      Top = 33
      Width = 23
      Height = 14
      Caption = 'Data'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object DBText1: TDBText
      Left = 333
      Top = 12
      Width = 48
      Height = 15
      AutoSize = True
      DataField = 'BAN_NOME'
      DataSource = DS_BANC
      Font.Charset = ANSI_CHARSET
      Font.Color = clTeal
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      Visible = False
    end
    object Label8: TLabel
      Left = 11
      Top = 49
      Width = 132
      Height = 14
      Caption = 'Data Final da Conciliação'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 550
      Top = 70
      Width = 79
      Height = 14
      Caption = 'Saldo Anterior'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 714
      Top = 69
      Width = 24
      Height = 15
      Alignment = taRightJustify
      Caption = '0,00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object MaskEdit1: TMaskEdit
      Left = 471
      Top = 30
      Width = 73
      Height = 21
      EditMask = '!99/99/9999;1;_'
      MaxLength = 10
      TabOrder = 1
      Text = '  /  /    '
      Visible = False
      OnEnter = MaskEdit1Enter
    end
    object wwDBLookupCombo3: TwwDBLookupCombo
      Left = 150
      Top = 12
      Width = 177
      Height = 22
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'BAN_NOME'#9'25'#9'BAN_NOME'#9'F'
        'BAN_CODI'#9'14'#9'BAN_CODI'#9'F'
        'BAN_DATA'#9'18'#9'BAN_DATA'#9'F'
        'BAN_SALD'#9'10'#9'BAN_SALD'#9'F')
      LookupTable = Q_BANC
      LookupField = 'BAN_CODI'
      ParentFont = False
      TabOrder = 0
      AutoDropDown = True
      ShowButton = True
      AllowClearKey = False
      OnEnter = wwDBLookupCombo3Enter
    end
    object MaskEdit2: TMaskEdit
      Left = 151
      Top = 46
      Width = 73
      Height = 21
      EditMask = '!99/99/9999;1;_'
      MaxLength = 10
      TabOrder = 2
      Text = '  /  /    '
      OnEnter = MaskEdit1Enter
    end
    object RzRadioGroup1: TRzRadioGroup
      Left = 152
      Top = 76
      Width = 257
      Height = 41
      Caption = 'Filtrar Movimentações por'
      Columns = 3
      ItemIndex = 2
      Items.Strings = (
        'Todos'
        'Conciliados'
        'Sem Conciliar')
      TabOrder = 3
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 169
    Width = 792
    Height = 365
    Align = alClient
    BevelInner = bvLowered
    Caption = 'Panel3'
    TabOrder = 2
    object Label7: TLabel
      Left = 568
      Top = 344
      Width = 61
      Height = 14
      Caption = 'Saldo Atual'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 714
      Top = 343
      Width = 24
      Height = 15
      Alignment = taRightJustify
      Caption = '0,00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object wwDBGrid1: TwwDBGrid
      Left = 9
      Top = 8
      Width = 770
      Height = 321
      Selected.Strings = (
        'MOV_DATA'#9'11'#9'Data'
        'MOV_SINAL'#9'4'#9'D/C'
        'MOV_DCTO'#9'12'#9'Documento'
        'MOV_HIST'#9'46'#9'Histórico'
        'MOV_VALOR'#9'15'#9'Valor'
        'DescConta'#9'25'#9'Conta Gerencial')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DS_MOVI
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleAlignment = taLeftJustify
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clMaroon
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = [fsBold, fsItalic]
      TitleLines = 1
      TitleButtons = False
      OnCalcCellColors = wwDBGrid1CalcCellColors
      IndicatorColor = icBlack
    end
    object wwDBComboBox2: TwwDBComboBox
      Left = 58
      Top = 171
      Width = 37
      Height = 22
      Hint = 'Duplo Clique para Seleção de Fornecedores'
      ShowButton = True
      Style = csDropDown
      MapList = True
      AllowClearKey = False
      AutoSize = False
      DataField = 'MOV_SINAL'
      DataSource = DS_MOVI
      DropDownCount = 8
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ItemHeight = 0
      Items.Strings = (
        'D'#9'-'
        'C'#9'+')
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Sorted = False
      TabOrder = 1
      UnboundDataType = wwDefault
    end
    object wwDBLookupCombo2: TwwDBLookupCombo
      Left = 336
      Top = 56
      Width = 121
      Height = 21
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'DS'#9'91'#9'DS'#9'F')
      DataField = 'MOV_CONT'
      LookupTable = Q_CONT
      LookupField = 'CON_CODI'
      TabOrder = 2
      AutoDropDown = True
      ShowButton = True
      AllowClearKey = False
    end
  end
  object Q_BANC: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'select BAN_CODI,BAN_NOME,BAN_DATA,BAN_SALD '
      'from CPABANC order by BAN_NOME')
    ValidateWithMask = True
    Left = 432
    Top = 285
    object Q_BANCBAN_NOME: TStringField
      DisplayWidth = 25
      FieldName = 'BAN_NOME'
      Origin = 'FINANCEIRO.CPABANC.BAN_NOME'
      FixedChar = True
      Size = 25
    end
    object Q_BANCBAN_CODI: TStringField
      DisplayWidth = 14
      FieldName = 'BAN_CODI'
      Origin = 'FINANCEIRO.CPABANC.BAN_CODI'
      FixedChar = True
      Size = 14
    end
    object Q_BANCBAN_DATA: TDateTimeField
      DisplayWidth = 18
      FieldName = 'BAN_DATA'
      Origin = 'FINANCEIRO.CPABANC.BAN_DATA'
    end
    object Q_BANCBAN_SALD: TFloatField
      DisplayWidth = 10
      FieldName = 'BAN_SALD'
      Origin = 'FINANCEIRO.CPABANC.BAN_SALD'
    end
  end
  object Q_MOVI: TwwQuery
    CachedUpdates = True
    AfterPost = Q_MOVIAfterPost
    AfterDelete = Q_MOVIAfterDelete
    OnNewRecord = Q_MOVINewRecord
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    RequestLive = True
    SQL.Strings = (
      'select * from cpamovi order by mov_data ')
    UpdateObject = UPD_MOVI
    ControlType.Strings = (
      'MOV_SINAL;CustomEdit;wwDBComboBox2'
      'Sinal;CustomEdit;wwDBComboBox1'
      'DescConta;CustomEdit;wwDBLookupCombo2'
      'MOV_CHEQ;CheckBox;S;N')
    ValidateWithMask = True
    Left = 488
    Top = 136
    object Q_MOVIMOV_DATA: TDateTimeField
      DisplayLabel = 'Data'
      DisplayWidth = 11
      FieldName = 'MOV_DATA'
      Origin = 'FINANCEIRO.cpamovi.MOV_DATA'
      EditMask = '99/99/9999'
    end
    object Q_MOVIMOV_SINAL: TStringField
      DisplayLabel = 'D/C'
      DisplayWidth = 4
      FieldName = 'MOV_SINAL'
      Origin = 'FINANCEIRO.cpamovi.MOV_SINAL'
      FixedChar = True
      Size = 1
    end
    object Q_MOVIMOV_DCTO: TStringField
      DisplayLabel = 'Documento'
      DisplayWidth = 12
      FieldName = 'MOV_DCTO'
      Origin = 'FINANCEIRO.cpamovi.MOV_DCTO'
      FixedChar = True
      Size = 15
    end
    object Q_MOVIMOV_HIST: TStringField
      DisplayLabel = 'Histórico'
      DisplayWidth = 46
      FieldName = 'MOV_HIST'
      Origin = 'FINANCEIRO.cpamovi.MOV_HIST'
      FixedChar = True
      Size = 70
    end
    object Q_MOVIMOV_VALOR: TFloatField
      DisplayLabel = 'Valor'
      DisplayWidth = 15
      FieldName = 'MOV_VALOR'
      Origin = 'FINANCEIRO.cpamovi.MOV_VALOR'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_MOVIDescConta: TStringField
      DisplayLabel = 'Conta Gerencial'
      DisplayWidth = 25
      FieldKind = fkLookup
      FieldName = 'DescConta'
      LookupDataSet = Q_CONT
      LookupKeyFields = 'CON_CODI'
      LookupResultField = 'CON_DESC'
      KeyFields = 'MOV_CONT'
      Size = 25
      Lookup = True
    end
    object Q_MOVIMOV_CHEQ: TStringField
      DisplayLabel = 'Ch.'
      DisplayWidth = 1
      FieldName = 'MOV_CHEQ'
      Origin = 'FINANCEIRO.CPAMOVI.MOV_BANC'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_MOVIMOV_CONT: TStringField
      DisplayLabel = 'Conta Gerencial'
      DisplayWidth = 6
      FieldName = 'MOV_CONT'
      Origin = 'FINANCEIRO.cpamovi.MOV_CONT'
      Visible = False
      FixedChar = True
      Size = 6
    end
    object Q_MOVIMOV_BANC: TStringField
      DisplayWidth = 14
      FieldName = 'MOV_BANC'
      Origin = 'FINANCEIRO.cpamovi.MOV_BANC'
      Visible = False
      FixedChar = True
      Size = 14
    end
    object Q_MOVISinal: TStringField
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'Sinal'
      Visible = False
      Size = 10
      Calculated = True
    end
    object Q_MOVIMOV_LANC: TIntegerField
      DisplayWidth = 10
      FieldName = 'MOV_LANC'
      Origin = 'FINANCEIRO.cpamovi.MOV_LANC'
      Visible = False
    end
    object Q_MOVIMOV_CODI: TAutoIncField
      DisplayWidth = 10
      FieldName = 'MOV_CODI'
      Origin = 'FINANCEIRO.cpamovi.MOV_CODI'
      Visible = False
    end
    object Q_MOVIMOV_DESC: TStringField
      DisplayWidth = 25
      FieldName = 'MOV_DESC'
      Origin = 'FINANCEIRO.cpamovi.MOV_DESC'
      Visible = False
      FixedChar = True
      Size = 25
    end
    object Q_MOVIMOV_FILI: TStringField
      DisplayWidth = 3
      FieldName = 'MOV_FILI'
      Origin = 'FINANCEIRO.cpamovi.MOV_FILI'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object Q_MOVIMOV_ORIG: TStringField
      DisplayWidth = 1
      FieldName = 'MOV_ORIG'
      Origin = 'FINANCEIRO.cpamovi.MOV_ORIG'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_MOVIMOV_SEQU: TIntegerField
      DisplayWidth = 10
      FieldName = 'MOV_SEQU'
      Origin = 'FINANCEIRO.cpamovi.MOV_SEQU'
      Visible = False
    end
    object Q_MOVICONCILIADO: TStringField
      FieldName = 'CONCILIADO'
      Origin = 'FINANCEIRO.CPAMOVI.CONCILIADO'
      Visible = False
      FixedChar = True
      Size = 1
    end
  end
  object DS_MOVI: TwwDataSource
    DataSet = Q_MOVI
    Left = 524
    Top = 168
  end
  object DS_BANC: TwwDataSource
    DataSet = Q_BANC
    Left = 316
    Top = 240
  end
  object STP_GRAVSALD: TwwStoredProc
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    StoredProcName = 'dbo.STP_GRAVSALD'
    ValidateWithMask = True
    Left = 664
    Top = 96
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Result'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = '@Banco'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = '@DataRef'
        ParamType = ptInput
      end>
  end
  object UPD_MOVI: TUpdateSQL
    ModifySQL.Strings = (
      'update cpamovi'
      'set'
      '  MOV_BANC = :MOV_BANC,'
      '  MOV_DATA = :MOV_DATA,'
      '  MOV_SINAL = :MOV_SINAL,'
      '  MOV_DCTO = :MOV_DCTO,'
      '  MOV_LANC = :MOV_LANC,'
      '  MOV_DESC = :MOV_DESC,'
      '  MOV_HIST = :MOV_HIST,'
      '  MOV_VALOR = :MOV_VALOR,'
      '  MOV_CONT = :MOV_CONT,'
      '  MOV_FILI = :MOV_FILI,'
      '  MOV_ORIG = :MOV_ORIG,'
      '  MOV_SEQU = :MOV_SEQU,'
      '  MOV_CHEQ = :MOV_CHEQ'
      'where'
      '  MOV_CODI = :OLD_MOV_CODI ')
    InsertSQL.Strings = (
      'insert into cpamovi'
      '  (MOV_BANC, MOV_DATA, MOV_SINAL, MOV_DCTO, MOV_LANC, MOV_DESC, '
      '   MOV_HIST, MOV_VALOR, MOV_CONT, MOV_FILI, MOV_ORIG, MOV_SEQU, '
      '  MOV_CHEQ)'
      'values'
      '  (:MOV_BANC, :MOV_DATA, :MOV_SINAL, :MOV_DCTO, :MOV_LANC, '
      ':MOV_DESC, '
      
        '   :MOV_HIST, :MOV_VALOR, :MOV_CONT, :MOV_FILI, :MOV_ORIG, :MOV_' +
        'SEQU,'
      '   :MOV_CHEQ)')
    DeleteSQL.Strings = (
      'delete from cpamovi'
      'where'
      '  MOV_CODI = :OLD_MOV_CODI ')
    Left = 408
    Top = 132
  end
  object Q_PARA: TQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'select  FilialPaga , Cta_GerencialPaga from CPAPARA')
    Left = 560
    Top = 188
    object Q_PARAFilialPaga: TStringField
      FieldName = 'FilialPaga'
      Origin = 'FINANCEIRO.CPAPARA.FilialPaga'
      FixedChar = True
      Size = 3
    end
    object Q_PARACta_GerencialPaga: TStringField
      FieldName = 'Cta_GerencialPaga'
      Origin = 'FINANCEIRO.CPAPARA.Cta_GerencialPaga'
      FixedChar = True
      Size = 6
    end
  end
  object STP_CALCSALD: TwwStoredProc
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    StoredProcName = 'dbo.STP_CALCSALD'
    ValidateWithMask = True
    Left = 664
    Top = 144
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Result'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = '@Banco'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = '@Dataref'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@Final'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = '@SaldoAnt'
        ParamType = ptOutput
      end
      item
        DataType = ftFloat
        Name = '@SaldoFinal'
        ParamType = ptOutput
      end>
  end
  object Q_CONT: TwwQuery
    Active = True
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'SELECT '#9#9'CON_CODI,'
      #9#9'CON_DESC,'
      #9#9'LTRIM(RTRIM(CON_CODI)) + '#39' '#39' + CON_DESC DS'
      'FROM '#9#9'CPACONT '
      'ORDER BY '#9'CON_CODI')
    ValidateWithMask = True
    Left = 560
    Top = 136
    object Q_CONTDS: TStringField
      DisplayWidth = 91
      FieldName = 'DS'
      FixedChar = True
      Size = 91
    end
    object Q_CONTCON_DESC: TStringField
      DisplayWidth = 25
      FieldName = 'CON_DESC'
      Origin = 'CPACONT.CON_DESC'
      Visible = False
      Size = 25
    end
    object Q_CONTCON_CODI: TStringField
      DisplayWidth = 6
      FieldName = 'CON_CODI'
      Origin = 'CPACONT.CON_CODI'
      Visible = False
      Size = 6
    end
  end
  object STP_CALCSALD1: TwwStoredProc
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    StoredProcName = 'dbo.STP_CALCSALD1'
    ValidateWithMask = True
    Left = 664
    Top = 192
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Result'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = '@Banco'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = '@dataref'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = '@SaldoAnt'
        ParamType = ptOutput
      end
      item
        DataType = ftFloat
        Name = '@SaldoFinal'
        ParamType = ptOutput
      end>
  end
  object qrConciliacao: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'UPDATE CPAMOVI SET CONCILIADO = '#39'S'#39' '
      'WHERE MOV_BANC = :MOV_BANC'
      'AND CONVERT(CHAR(10), MOV_DATA, 112) <= :DATA')
    ValidateWithMask = True
    Left = 584
    Top = 285
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'MOV_BANC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DATA'
        ParamType = ptUnknown
      end>
  end
  object qrUpdateConta: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'UPDATE CPABANC SET DT_CONCILIACAO = :DT'
      'WHERE BAN_CODI = :BAN_CODI')
    ValidateWithMask = True
    Left = 584
    Top = 365
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BAN_CODI'
        ParamType = ptUnknown
      end>
  end
end
