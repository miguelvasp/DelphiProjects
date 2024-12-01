object frmTransferencia: TfrmTransferencia
  Left = 271
  Top = 69
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Relatório de Transferência'
  ClientHeight = 409
  ClientWidth = 518
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object SpeedButton1: TSpeedButton
    Left = 152
    Top = 353
    Width = 225
    Height = 37
    Caption = ' Visualizar Relatório'
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
    OnClick = SpeedButton1Click
  end
  object GroupBox1: TGroupBox
    Left = 16
    Top = 8
    Width = 489
    Height = 52
    Caption = 'Período'
    TabOrder = 0
    object Label1: TLabel
      Left = 64
      Top = 21
      Width = 23
      Height = 16
      Caption = 'De:'
    end
    object Label2: TLabel
      Left = 240
      Top = 21
      Width = 23
      Height = 16
      Caption = 'Até'
    end
    object MaskEdit1: TMaskEdit
      Left = 96
      Top = 19
      Width = 121
      Height = 24
      EditMask = '99/99/9999'
      MaxLength = 10
      TabOrder = 0
      Text = '  /  /    '
    end
    object MaskEdit2: TMaskEdit
      Left = 288
      Top = 19
      Width = 121
      Height = 24
      EditMask = '99/99/9999'
      MaxLength = 10
      TabOrder = 1
      Text = '  /  /    '
    end
  end
  object GroupBox2: TGroupBox
    Left = 16
    Top = 63
    Width = 489
    Height = 133
    Caption = 'Origem'
    TabOrder = 1
    object Label3: TLabel
      Left = 33
      Top = 65
      Width = 90
      Height = 16
      Caption = 'Banco/Conta '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 16
      Top = 98
      Width = 104
      Height = 16
      Caption = 'Conta Gerencial'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 62
      Top = 33
      Width = 55
      Height = 16
      Caption = 'Empresa'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object cboBan: TwwDBLookupCombo
      Left = 124
      Top = 60
      Width = 337
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'BAN_NOME'#9'25'#9'BAN_NOME'#9'F'
        'BAN_CODI'#9'14'#9'BAN_CODI'#9'F'
        'FIL_DESC'#9'20'#9'FIL_DESC'#9'F')
      LookupTable = Q_Banc
      LookupField = 'BAN_CODI'
      ParentFont = False
      TabOrder = 1
      AutoDropDown = True
      ShowButton = True
      AllowClearKey = False
    end
    object cboContaOrigem: TwwDBLookupCombo
      Left = 124
      Top = 91
      Width = 337
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'DS'#9'91'#9'DS'#9'F')
      LookupTable = Q_Cont
      LookupField = 'CON_CODI'
      ParentFont = False
      TabOrder = 2
      AutoDropDown = True
      ShowButton = True
      AllowClearKey = False
    end
    object cboEmpOrigem: TwwDBLookupCombo
      Left = 124
      Top = 28
      Width = 337
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'FIL_DESC'#9'20'#9'Empresa'#9'F')
      LookupTable = qrEmpresa
      LookupField = 'FIL_CODI'
      ParentFont = False
      TabOrder = 0
      AutoDropDown = True
      ShowButton = True
      AllowClearKey = False
    end
  end
  object GroupBox3: TGroupBox
    Left = 16
    Top = 199
    Width = 489
    Height = 133
    Caption = 'Destino'
    TabOrder = 2
    object Label5: TLabel
      Left = 33
      Top = 65
      Width = 90
      Height = 16
      Caption = 'Banco/Conta '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 16
      Top = 98
      Width = 104
      Height = 16
      Caption = 'Conta Gerencial'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 62
      Top = 33
      Width = 55
      Height = 16
      Caption = 'Empresa'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object cboBancDest: TwwDBLookupCombo
      Left = 124
      Top = 60
      Width = 337
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'BAN_NOME'#9'25'#9'BAN_NOME'#9'F'
        'BAN_CODI'#9'14'#9'BAN_CODI'#9'F'
        'FIL_DESC'#9'20'#9'FIL_DESC'#9'F')
      LookupTable = Q_Banc
      LookupField = 'BAN_CODI'
      ParentFont = False
      TabOrder = 1
      AutoDropDown = True
      ShowButton = True
      AllowClearKey = False
    end
    object cboCGerencialDest: TwwDBLookupCombo
      Left = 124
      Top = 91
      Width = 337
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'DS'#9'91'#9'DS'#9'F')
      LookupTable = Q_Cont
      LookupField = 'CON_CODI'
      ParentFont = False
      TabOrder = 2
      AutoDropDown = True
      ShowButton = True
      AllowClearKey = False
    end
    object cboEmpDest: TwwDBLookupCombo
      Left = 124
      Top = 28
      Width = 337
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'FIL_DESC'#9'20'#9'Empresa'#9'F')
      LookupTable = qrEmpresa
      LookupField = 'FIL_CODI'
      ParentFont = False
      TabOrder = 0
      AutoDropDown = True
      ShowButton = True
      AllowClearKey = False
    end
  end
  object Q_Banc: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'SELECT '#9' BAN.BAN_CODI,'
      #9' BAN.BAN_NOME,'
      #9' FIL.FIL_DESC, BAN_CODEMPR'
      'FROM '#9' CPABANC BAN,'
      #9' CPAFILI FIL'
      'WHERE'#9' BAN.BAN_CODEMPR = FIL.FIL_CODI'
      'ORDER BY '
      #9' FIL.FIL_DESC,'
      #9' BAN.BAN_NOME,'
      #9' BAN.BAN_CODI')
    ValidateWithMask = True
    Left = 312
    Top = 320
    object Q_BancBAN_NOME: TStringField
      DisplayWidth = 25
      FieldName = 'BAN_NOME'
      Origin = 'CPABANC.BAN_NOME'
      Size = 25
    end
    object Q_BancBAN_CODI: TStringField
      DisplayWidth = 14
      FieldName = 'BAN_CODI'
      Origin = 'CPABANC.BAN_CODI'
      Size = 14
    end
    object Q_BancFIL_DESC: TStringField
      DisplayWidth = 20
      FieldName = 'FIL_DESC'
      Origin = 'FINANCEIRO.CPAFILI.FIL_DESC'
      FixedChar = True
    end
    object Q_BancBAN_CODEMPR: TStringField
      FieldName = 'BAN_CODEMPR'
      Origin = 'FINANCEIRO.CPABANC.BAN_CODEMPR'
      FixedChar = True
    end
  end
  object Q_Cont: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'SELECT '#9#9'CON_CODI,'
      #9#9'CON_DESC,'
      #9#9'LTRIM(RTRIM(CON_CODI)) + '#39' '#39' + CON_DESC DS'
      'FROM '#9#9'CPACONT '
      'ORDER BY '#9'CON_CODI'
      ''
      '')
    ValidateWithMask = True
    Left = 360
    Top = 312
    object Q_ContDS: TStringField
      DisplayWidth = 91
      FieldName = 'DS'
      FixedChar = True
      Size = 91
    end
    object Q_ContCON_DESC: TStringField
      DisplayWidth = 25
      FieldName = 'CON_DESC'
      Origin = 'CPACONT.CON_DESC'
      Visible = False
      Size = 25
    end
    object Q_ContCON_CODI: TStringField
      DisplayWidth = 6
      FieldName = 'CON_CODI'
      Origin = 'CPACONT.CON_CODI'
      Visible = False
      Size = 6
    end
  end
  object qrRelatorio: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'SELECT '
      #9'A.NUMERO,'
      #9'A.DATA,'
      #9'A.DOCUMENTO,'
      #9'A.HISTORICO,'
      #9'A.VALOR, '
      
        #9'(SELECT FIL_DESC FROM CPAFILI WHERE FIL_CODI = A.FILIALORIGEM) ' +
        'AS EMP_ORIGEM,'
      
        #9'(SELECT FIL_DESC FROM CPAFILI WHERE FIL_CODI = A.FILIALDESTINO)' +
        ' AS EMP_DESTINO,'
      
        #9'(SELECT BAN_NOME FROM CPABANC WHERE BAN_CODI = A.BANCOORIGEM) A' +
        'S BANCO_ORIGEM , '
      
        #9'(SELECT BAN_NOME FROM CPABANC WHERE BAN_CODI = A.BANCODESTINO) ' +
        'AS BANCO_DESTINO,'
      
        #9'(SELECT CON_DESC FROM CPACONT WHERE CON_CODI = A.CTAGERENCIALOR' +
        'IG) AS CONTA_ORIGEM,'
      
        #9'(SELECT CON_DESC FROM CPACONT WHERE CON_CODI = A.CTAGERENCIALDE' +
        'ST) AS CONTA_DESTINO'
      'FROM CPATRAN A')
    ValidateWithMask = True
    Left = 448
    Top = 312
    object qrRelatorioNUMERO: TAutoIncField
      FieldName = 'NUMERO'
    end
    object qrRelatorioDATA: TDateTimeField
      FieldName = 'DATA'
      DisplayFormat = 'dd/MM/yyyy'
    end
    object qrRelatorioDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      FixedChar = True
      Size = 15
    end
    object qrRelatorioHISTORICO: TStringField
      FieldName = 'HISTORICO'
      FixedChar = True
      Size = 40
    end
    object qrRelatorioVALOR: TFloatField
      FieldName = 'VALOR'
      DisplayFormat = '###,###,##0.00'
    end
    object qrRelatorioEMP_ORIGEM: TStringField
      FieldName = 'EMP_ORIGEM'
      FixedChar = True
    end
    object qrRelatorioEMP_DESTINO: TStringField
      FieldName = 'EMP_DESTINO'
      FixedChar = True
    end
    object qrRelatorioBANCO_ORIGEM: TStringField
      FieldName = 'BANCO_ORIGEM'
      FixedChar = True
      Size = 25
    end
    object qrRelatorioBANCO_DESTINO: TStringField
      FieldName = 'BANCO_DESTINO'
      FixedChar = True
      Size = 25
    end
    object qrRelatorioCONTA_ORIGEM: TStringField
      FieldName = 'CONTA_ORIGEM'
      FixedChar = True
      Size = 25
    end
    object qrRelatorioCONTA_DESTINO: TStringField
      FieldName = 'CONTA_DESTINO'
      FixedChar = True
      Size = 25
    end
  end
  object qrEmpresa: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'SELECT FIL_CODI, FIL_DESC FROM CPAFILI'
      'ORDER BY FIL_DESC')
    ValidateWithMask = True
    Left = 400
    Top = 312
    object qrEmpresaFIL_DESC: TStringField
      DisplayLabel = 'Empresa'
      DisplayWidth = 20
      FieldName = 'FIL_DESC'
      Origin = 'FINANCEIRO.CPAFILI.FIL_DESC'
      FixedChar = True
    end
    object qrEmpresaFIL_CODI: TStringField
      DisplayWidth = 3
      FieldName = 'FIL_CODI'
      Origin = 'FINANCEIRO.CPAFILI.FIL_CODI'
      Visible = False
      FixedChar = True
      Size = 3
    end
  end
end
