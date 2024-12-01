object FEMITENF: TFEMITENF
  Left = 1
  Top = 1
  AutoScroll = False
  Caption = 'Emissão de Notas Fiscais'
  ClientHeight = 531
  ClientWidth = 785
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 785
    Height = 176
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object SBT_PESQ: TSpeedButton
      Left = 648
      Top = 9
      Width = 130
      Height = 29
      Cursor = crHandPoint
      Hint = 'Executa as pesquisas de acordo com os filtros.'
      Caption = '&Pesquisa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000010000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333FF33333333333330003FF3FFFFF3333777003000003333
        300077F777773F333777E00BFBFB033333337773333F7F33333FE0BFBF000333
        330077F3337773F33377E0FBFBFBF033330077F3333FF7FFF377E0BFBF000000
        333377F3337777773F3FE0FBFBFBFBFB039977F33FFFFFFF7377E0BF00000000
        339977FF777777773377000BFB03333333337773FF733333333F333000333333
        3300333777333333337733333333333333003333333333333377333333333333
        333333333333333333FF33333333333330003333333333333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SBT_PESQClick
    end
    object SBT_SAIR: TSpeedButton
      Left = 649
      Top = 48
      Width = 129
      Height = 29
      Cursor = crHandPoint
      Hint = 'Retorna a tela anterior.'
      Caption = '&Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Glyph.Data = {
        76020000424D7602000000000000760000002800000040000000100000000100
        0400000000000002000000000000000000001000000010000000000000000000
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
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SBT_SAIRClick
    end
    object Label13: TLabel
      Left = 146
      Top = 41
      Width = 39
      Height = 14
      Caption = 'Cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label14: TLabel
      Left = 473
      Top = 41
      Width = 67
      Height = 14
      Caption = 'Vencimento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label15: TLabel
      Left = 547
      Top = 61
      Width = 17
      Height = 14
      Caption = 'até'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label16: TLabel
      Left = 9
      Top = 81
      Width = 87
      Height = 14
      Caption = 'Conta Gerencial'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label20: TLabel
      Left = 10
      Top = 123
      Width = 49
      Height = 14
      Caption = 'Empresa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 9
      Top = 41
      Width = 59
      Height = 14
      Caption = 'Ordenação'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object bt_Nem: TSpeedButton
      Left = 717
      Top = 91
      Width = 60
      Height = 29
      Cursor = crHandPoint
      Hint = 'Desmarca todas as Notas Fiscais para impressão'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33033333333333333F7F3333333333333000333333333333F777333333333333
        000333333333333F777333333333333000333333333333F77733333333333300
        033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
        333333773337777333333078F8F87033333337F3333337F33333778F8F8F8773
        333337333333373F333307F8F8F8F70333337F33FFFFF37F3333078999998703
        33337F377777337F333307F8F8F8F703333373F3333333733333778F8F8F8773
        333337F3333337F333333078F8F870333333373FF333F7333333330777770333
        333333773FF77333333333370007333333333333777333333333}
      NumGlyphs = 2
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = bt_NemClick
    end
    object SpeedButton1: TSpeedButton
      Left = 650
      Top = 91
      Width = 60
      Height = 29
      Cursor = crHandPoint
      Hint = 'Marca todas as Notas Fiscais para impressão'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33033333333333333F7F3333333333333000333333333333F777333333333333
        000333333333333F777333333333333000333333333333F77733333333333300
        033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
        33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
        3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
        33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
        333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
        333333773FF77333333333370007333333333333777333333333}
      NumGlyphs = 2
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 651
      Top = 131
      Width = 126
      Height = 29
      Cursor = crHandPoint
      Caption = 'Imprime NF'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        0003377777777777777308888888888888807F33333333333337088888888888
        88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
        8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
        8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
      OnClick = SpeedButton2Click
    end
    object Memo2: TMemo
      Left = 9
      Top = 7
      Width = 625
      Height = 34
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Lines.Strings = (
        
          'Preencha os filtros que forem úteis para a pesquisa e clique no ' +
          'botão de pesquisa.'
        
          'Utilize o botão Seleciona ou de dois cliques para selecionar o r' +
          'ecebimento.')
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object DBLC_REC_RAZA: TwwDBLookupCombo
      Left = 146
      Top = 54
      Width = 307
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      CharCase = ecUpperCase
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'CLI_RAZA'#9'50'#9'Razão'
        'CLI_CODI'#9'10'#9'Código')
      LookupTable = Q_RECCLI
      LookupField = 'CLI_CODI'
      ParentFont = False
      TabOrder = 0
      AutoDropDown = True
      ShowButton = True
      SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
      AllowClearKey = False
    end
    object DBLC_REC_CGER1: TwwDBLookupCombo
      Left = 9
      Top = 96
      Width = 296
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'DS'#9'91'#9'DS'#9'F')
      LookupTable = T_CONT
      LookupField = 'CON_CODI'
      ParentFont = False
      TabOrder = 3
      AutoDropDown = True
      ShowButton = True
      SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
      AllowClearKey = False
    end
    object ME_REC_VENC1: TMaskEdit
      Left = 475
      Top = 54
      Width = 64
      Height = 22
      EditMask = '!99/99/9999;1;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 1
      Text = '  /  /    '
    end
    object ME_REC_VENC2: TMaskEdit
      Left = 571
      Top = 54
      Width = 64
      Height = 22
      EditMask = '!99/99/9999;1;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 2
      Text = '  /  /    '
    end
    object wwDBLookupCombo2: TwwDBLookupCombo
      Left = 8
      Top = 139
      Width = 297
      Height = 21
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'FIL_DESC'#9'20'#9'FIL_DESC'#9'F')
      LookupTable = Q_EMP
      LookupField = 'FIL_CODI'
      TabOrder = 5
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
    end
    object GroupBox1: TGroupBox
      Left = 429
      Top = 79
      Width = 208
      Height = 92
      Caption = 'Visualização :'
      TabOrder = 6
      object ck_Sim: TCheckBox
        Left = 8
        Top = 22
        Width = 190
        Height = 17
        Caption = 'NF'#39's marcadas para impressão'
        Checked = True
        Color = clYellow
        ParentColor = False
        State = cbChecked
        TabOrder = 0
        OnClick = ck_SimClick
      end
      object ck_Nao: TCheckBox
        Left = 8
        Top = 45
        Width = 191
        Height = 17
        Caption = 'NF'#39's não marcadas para impressão'
        Checked = True
        Color = clInfoBk
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        State = cbChecked
        TabOrder = 1
        OnClick = ck_NaoClick
      end
      object CheckBox1: TCheckBox
        Left = 8
        Top = 68
        Width = 191
        Height = 17
        Caption = 'NF'#39's já emitidas'
        Color = clCaptionText
        ParentColor = False
        TabOrder = 2
        OnClick = CheckBox1Click
      end
    end
    object CB_ORDE: TComboBox
      Left = 9
      Top = 54
      Width = 126
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ItemHeight = 14
      ParentFont = False
      TabOrder = 7
      Text = 'No. CR.'
      Items.Strings = (
        'No. CR.'
        'Cliente'
        'Vencimento'
        'No. Documento')
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 176
    Width = 785
    Height = 355
    Align = alClient
    Alignment = taLeftJustify
    BevelInner = bvLowered
    TabOrder = 1
    object Label7: TLabel
      Left = 37
      Top = 336
      Width = 84
      Height = 16
      Caption = 'Total Líquido'
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label2: TLabel
      Left = 120
      Top = 336
      Width = 127
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label11: TLabel
      Left = 303
      Top = 336
      Width = 100
      Height = 16
      Caption = 'Total Recebido:'
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label19: TLabel
      Left = 403
      Top = 336
      Width = 127
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label4: TLabel
      Left = 583
      Top = 336
      Width = 45
      Height = 16
      Caption = 'Saldo :'
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label1: TLabel
      Left = 628
      Top = 336
      Width = 127
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object DBG_CLIE: TwwDBGrid
      Left = 7
      Top = 7
      Width = 771
      Height = 323
      Selected.Strings = (
        'REC_CODI'#9'8'#9'No. do CR'#9'F'
        'REC_RAZA'#9'35'#9'Cliente'#9'F'
        'EMITENF'#9'2'#9'NF'#9'F'
        'rec_valo'#9'20'#9'Valor Original'#9'F'
        'rec_desc'#9'14'#9'Descontos'#9'F'
        'REC_VLIQ'#9'20'#9'Valor Líquido'#9'F'
        'REC_VENC'#9'14'#9'Vencimento'#9'F')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 2
      ShowHorzScrollBar = True
      Color = clWhite
      DataSource = DS_RECE
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      KeyOptions = []
      Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgCancelOnExit, dgWordWrap]
      ParentFont = False
      TabOrder = 0
      TitleAlignment = taLeftJustify
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clMaroon
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
      OnCalcCellColors = DBG_CLIECalcCellColors
      OnDblClick = DBG_CLIEDblClick
      IndicatorColor = icYellow
      object wwDBGrid1IButton: TwwIButton
        Left = 0
        Top = 0
        Width = 35
        Height = 25
        AllowAllUp = True
        Caption = 'Itens'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object DS_RECE: TwwDataSource
    DataSet = Q_RECE
    Left = 110
    Top = 274
  end
  object Q_BANC: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'Select * from sialcob order by LCO_BANC')
    ValidateWithMask = True
    Left = 214
    Top = 262
    object Q_BANCLCO_BANC: TStringField
      DisplayLabel = 'Descrição'
      DisplayWidth = 15
      FieldName = 'LCO_BANC'
      Origin = 'sialcob.LCO_BANC'
      Size = 15
    end
    object Q_BANCLCO_CODI: TStringField
      DisplayLabel = 'Código'
      DisplayWidth = 3
      FieldName = 'LCO_CODI'
      Origin = 'sialcob.LCO_CODI'
      Size = 3
    end
  end
  object DS_FILI: TwwDataSource
    DataSet = Q_FILI
    Left = 176
    Top = 324
  end
  object Q_FILI: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'select FIL_CODI,FIL_DESC from CPAFILI')
    ValidateWithMask = True
    Left = 96
    Top = 328
    object Q_FILIFIL_DESC: TStringField
      DisplayLabel = 'Descrição'
      DisplayWidth = 20
      FieldName = 'FIL_DESC'
      Origin = 'CPAFILI.FIL_DESC'
    end
    object Q_FILIFIL_CODI: TStringField
      DisplayWidth = 3
      FieldName = 'FIL_CODI'
      Origin = 'CPAFILI.FIL_CODI'
      Visible = False
      Size = 3
    end
  end
  object Q_RECE: TwwQuery
    CachedUpdates = True
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    RequestLive = True
    SQL.Strings = (
      'SELECT  (REC_VLIQ - REC_SALD) as ValorReceber,'
      '        REC_RAZA,'
      '        REC_CODI,'
      '        REC_NFIS,'
      '        REC_VENC,'
      '        REC_VLIQ,'
      '        REC_SALD,'
      '        REC_HIST,'
      '        REC_BANC,'
      '        FLAG_FLUXO,'
      '        EMITENF,'
      '        EMITIDASN,'
      '        rec_valo,'
      '        rec_desc,'
      '        rec_vliq'
      'FROM CPARECE WHERE REC_CODI = 0'
      'ORDER BY REC_VENC'
      ' ')
    UpdateObject = U_REC
    ControlType.Strings = (
      'FLAG_FLUXO;CheckBox;S;N'
      'EMITENF;CheckBox;S;N')
    ValidateWithMask = True
    Left = 111
    Top = 392
    object Q_RECEREC_CODI: TIntegerField
      DisplayLabel = 'No. do CR'
      DisplayWidth = 8
      FieldName = 'REC_CODI'
      Origin = 'FINANCEIRO.CPARECE.REC_CODI'
    end
    object Q_RECEREC_RAZA: TStringField
      DisplayLabel = 'Cliente'
      DisplayWidth = 35
      FieldName = 'REC_RAZA'
      FixedChar = True
      Size = 40
    end
    object Q_RECEEMITENF: TStringField
      DisplayLabel = 'NF'
      DisplayWidth = 2
      FieldName = 'EMITENF'
      OnChange = Q_RECEEMITENFChange
      FixedChar = True
      Size = 1
    end
    object Q_RECErec_valo: TFloatField
      DisplayLabel = 'Valor Original'
      DisplayWidth = 20
      FieldName = 'rec_valo'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_RECErec_desc: TFloatField
      DisplayLabel = 'Descontos'
      DisplayWidth = 14
      FieldName = 'rec_desc'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_RECEREC_VLIQ: TFloatField
      DisplayLabel = 'Valor Líquido'
      DisplayWidth = 20
      FieldName = 'REC_VLIQ'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_RECEREC_VENC: TDateTimeField
      DisplayLabel = 'Vencimento'
      DisplayWidth = 14
      FieldName = 'REC_VENC'
      DisplayFormat = 'DD/MM/YYYY'
      EditMask = '99/99/9999'
    end
    object Q_RECEREC_NFIS: TStringField
      DisplayLabel = 'No. do Título'
      DisplayWidth = 10
      FieldName = 'REC_NFIS'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object Q_RECEValorReceber: TFloatField
      DisplayLabel = 'Valor Recebido'
      DisplayWidth = 13
      FieldName = 'ValorReceber'
      Origin = 'FINANCEIRO.CPARECE.REC_VLIQ'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object Q_RECEREC_SALD: TFloatField
      DisplayLabel = 'Saldo'
      DisplayWidth = 10
      FieldName = 'REC_SALD'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object Q_RECEREC_HIST: TStringField
      DisplayLabel = 'Histórico'
      DisplayWidth = 40
      FieldName = 'REC_HIST'
      Visible = False
      FixedChar = True
      Size = 40
    end
    object Q_RECEFLAG_FLUXO: TStringField
      DisplayLabel = '****'
      DisplayWidth = 1
      FieldName = 'FLAG_FLUXO'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_RECEREC_BANC: TStringField
      FieldName = 'REC_BANC'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object Q_RECEEMITIDASN: TStringField
      FieldName = 'EMITIDASN'
      FixedChar = True
      Size = 1
    end
  end
  object DS_BANC: TwwDataSource
    DataSet = Q_BANC
    Left = 178
    Top = 390
  end
  object U_REC: TUpdateSQL
    ModifySQL.Strings = (
      'update CPARECE'
      'set'
      '  EMITENF = :EMITENF'
      'where'
      '  REC_CODI = :OLD_REC_CODI')
    InsertSQL.Strings = (
      'insert into CPARECE'
      '  (EMITENF)'
      'values'
      '  (:EMITENF)')
    DeleteSQL.Strings = (
      'delete from CPARECE'
      'where'
      '  REC_CODI = :OLD_REC_CODI')
    Left = 54
    Top = 391
  end
  object Q_AUXI2: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'Select SUM(IRE_SALD) as RECEBIDO from CPAIREC')
    ValidateWithMask = True
    Left = 273
    Top = 299
  end
  object Q_AUXI: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      
        'Select SUM(REC_SALD) as XSALDO, SUM(REC_VALO) as XVALOR from CPA' +
        'RECE ')
    ValidateWithMask = True
    Left = 329
    Top = 281
  end
  object Q_VAL_REC: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      
        'Select A.REC_RAZA,A.rec_codi,A.REC_NFIS,A.REC_VENC,A.REC_VLIQ,A.' +
        'REC_SALD,'
      'A.REC_HIST,A.REC_BANC from CPARECE A'
      'order by A.REC_VENC')
    ValidateWithMask = True
    Left = 311
    Top = 362
    object IntegerField1: TIntegerField
      DisplayLabel = 'No. do CR'
      DisplayWidth = 10
      FieldName = 'rec_codi'
    end
    object StringField1: TStringField
      DisplayLabel = 'Cliente'
      DisplayWidth = 40
      FieldName = 'REC_RAZA'
      FixedChar = True
      Size = 40
    end
    object StringField2: TStringField
      DisplayLabel = 'No. do Título'
      DisplayWidth = 10
      FieldName = 'REC_NFIS'
      FixedChar = True
      Size = 10
    end
    object DateTimeField1: TDateTimeField
      DisplayLabel = 'Vencimento'
      DisplayWidth = 10
      FieldName = 'REC_VENC'
      EditMask = '99/99/9999'
    end
    object FloatField1: TFloatField
      DisplayLabel = 'Saldo'
      DisplayWidth = 10
      FieldName = 'REC_SALD'
      DisplayFormat = '###,###,##0.00'
    end
    object StringField3: TStringField
      DisplayLabel = 'Histórico'
      DisplayWidth = 40
      FieldName = 'REC_HIST'
      FixedChar = True
      Size = 40
    end
    object FloatField2: TFloatField
      FieldName = 'REC_VLIQ'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object StringField4: TStringField
      FieldName = 'REC_BANC'
      Visible = False
      FixedChar = True
      Size = 3
    end
  end
  object Q_RECCLI: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'Select CLI_CODI,CLI_RAZA  from CPACLIE  order by CLI_RAZA')
    ValidateWithMask = True
    Left = 385
    Top = 345
    object Q_RECCLICLI_RAZA: TStringField
      DisplayLabel = 'Razão'
      DisplayWidth = 50
      FieldName = 'CLI_RAZA'
      Origin = 'CPACLIE.CLI_RAZA'
      Size = 50
    end
    object Q_RECCLICLI_CODI: TAutoIncField
      DisplayLabel = 'Código'
      DisplayWidth = 10
      FieldName = 'CLI_CODI'
      Origin = 'CPACLIE.CLI_CODI'
    end
  end
  object q_NumBanc: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'Select A.REC_nban from CPARECE A '
      'where (a.rec_nban <> null) and (a.rec_nban <> '#39#39')   '
      'order by REC_NBAN'
      '')
    ValidateWithMask = True
    Left = 401
    Top = 392
    object q_NumBancREC_nban: TStringField
      DisplayLabel = 'Número Bancário'
      DisplayWidth = 20
      FieldName = 'REC_nban'
      FixedChar = True
    end
  end
  object Q_EMP: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'SELECT * FROM CPAFILI ORDER BY FIL_DESC ,FIL_CODI')
    ValidateWithMask = True
    Left = 560
    Top = 328
    object Q_EMPFIL_DESC: TStringField
      DisplayWidth = 20
      FieldName = 'FIL_DESC'
      Origin = 'FINANCEIRO.CPAFILI.FIL_DESC'
      FixedChar = True
    end
    object Q_EMPFIL_CODI: TStringField
      DisplayWidth = 3
      FieldName = 'FIL_CODI'
      Origin = 'FINANCEIRO.CPAFILI.FIL_CODI'
      Visible = False
      FixedChar = True
      Size = 3
    end
  end
  object T_CONT: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'SELECT '#9#9'CON_CODI,'
      #9#9'CON_DESC,'
      #9#9'LTRIM(RTRIM(CON_CODI)) + '#39' '#39' + CON_DESC DS,'
      #9#9'*'
      'FROM '#9#9'CPACONT '
      'ORDER BY '#9'CON_CODI')
    ValidateWithMask = True
    Left = 617
    Top = 232
    object T_CONTDS: TStringField
      DisplayWidth = 91
      FieldName = 'DS'
      FixedChar = True
      Size = 91
    end
    object T_CONTCON_DESC: TStringField
      DisplayWidth = 25
      FieldName = 'CON_DESC'
      Origin = 'FINANCEIRO.CPACONT.CON_DESC'
      Visible = False
      FixedChar = True
      Size = 25
    end
    object T_CONTCON_CODI: TStringField
      FieldName = 'CON_CODI'
      Origin = 'FINANCEIRO.CPACONT.CON_CODI'
      Visible = False
      FixedChar = True
      Size = 6
    end
    object T_CONTCON_ENSA: TStringField
      FieldName = 'CON_ENSA'
      Origin = 'FINANCEIRO.CPACONT.CON_ENSA'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object T_CONTCON_OPER: TStringField
      FieldName = 'CON_OPER'
      Origin = 'FINANCEIRO.CPACONT.CON_OPER'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object T_CONTCON_FLOA: TFloatField
      FieldName = 'CON_FLOA'
      Origin = 'FINANCEIRO.CPACONT.CON_FLOA'
      Visible = False
    end
    object T_CONTCON_FLUX: TStringField
      FieldName = 'CON_FLUX'
      Origin = 'FINANCEIRO.CPACONT.CON_FLUX'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object T_CONTCON_CTCO: TStringField
      FieldName = 'CON_CTCO'
      Origin = 'FINANCEIRO.CPACONT.CON_CTCO'
      Visible = False
      FixedChar = True
      Size = 6
    end
  end
  object Q_aux: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    ValidateWithMask = True
    Left = 432
    Top = 248
  end
  object Q_aux1: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    ValidateWithMask = True
    Left = 504
    Top = 296
  end
  object Q_aux2: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_Basefin'
    ValidateWithMask = True
    Left = 496
    Top = 432
  end
  object Q_AUX3: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_Basefin'
    ValidateWithMask = True
    Left = 616
    Top = 328
  end
  object Q_PARA: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_Basefin'
    SQL.Strings = (
      'select * from cpapara')
    ValidateWithMask = True
    Left = 600
    Top = 416
    object Q_PARAPAR_CHAV: TStringField
      FieldName = 'PAR_CHAV'
      Origin = 'FINANCEIRO.CPAPARA.PAR_CHAV'
      FixedChar = True
      Size = 1
    end
    object Q_PARAPAR_MOED: TStringField
      FieldName = 'PAR_MOED'
      Origin = 'FINANCEIRO.CPAPARA.PAR_MOED'
      FixedChar = True
      Size = 50
    end
    object Q_PARAPAR_SALD: TFloatField
      FieldName = 'PAR_SALD'
      Origin = 'FINANCEIRO.CPAPARA.PAR_SALD'
    end
    object Q_PARAPAR_DATA: TDateTimeField
      FieldName = 'PAR_DATA'
      Origin = 'FINANCEIRO.CPAPARA.PAR_DATA'
    end
    object Q_PARACtaGerencialOrig: TStringField
      FieldName = 'CtaGerencialOrig'
      Origin = 'FINANCEIRO.CPAPARA.CtaGerencialOrig'
      FixedChar = True
      Size = 6
    end
    object Q_PARACtaGerencialDest: TStringField
      FieldName = 'CtaGerencialDest'
      Origin = 'FINANCEIRO.CPAPARA.CtaGerencialDest'
      FixedChar = True
      Size = 6
    end
    object Q_PARAFilialOrigem: TStringField
      FieldName = 'FilialOrigem'
      Origin = 'FINANCEIRO.CPAPARA.FilialOrigem'
      FixedChar = True
      Size = 3
    end
    object Q_PARAFilialDestino: TStringField
      FieldName = 'FilialDestino'
      Origin = 'FINANCEIRO.CPAPARA.FilialDestino'
      FixedChar = True
      Size = 3
    end
    object Q_PARACta_GerencialPaga: TStringField
      FieldName = 'Cta_GerencialPaga'
      Origin = 'FINANCEIRO.CPAPARA.Cta_GerencialPaga'
      FixedChar = True
      Size = 6
    end
    object Q_PARAFilialPaga: TStringField
      FieldName = 'FilialPaga'
      Origin = 'FINANCEIRO.CPAPARA.FilialPaga'
      FixedChar = True
      Size = 3
    end
    object Q_PARACta_GerencialRece: TStringField
      FieldName = 'Cta_GerencialRece'
      Origin = 'FINANCEIRO.CPAPARA.Cta_GerencialRece'
      FixedChar = True
      Size = 6
    end
    object Q_PARAFilialRece: TStringField
      FieldName = 'FilialRece'
      Origin = 'FINANCEIRO.CPAPARA.FilialRece'
      FixedChar = True
      Size = 3
    end
    object Q_PARAPAR_MOVI: TStringField
      FieldName = 'PAR_MOVI'
      Origin = 'FINANCEIRO.CPAPARA.PAR_MOVI'
      FixedChar = True
      Size = 1
    end
    object Q_PARAPAR_DOLAR: TStringField
      FieldName = 'PAR_DOLAR'
      Origin = 'FINANCEIRO.CPAPARA.PAR_DOLAR'
      FixedChar = True
      Size = 4
    end
    object Q_PARAPAR_Acrescimo: TStringField
      FieldName = 'PAR_Acrescimo'
      Origin = 'FINANCEIRO.CPAPARA.PAR_Acrescimo'
      FixedChar = True
      Size = 3
    end
    object Q_PARAEmp_Nome: TStringField
      FieldName = 'Emp_Nome'
      Origin = 'FINANCEIRO.CPAPARA.Emp_Nome'
      FixedChar = True
    end
    object Q_PARAPar_impnf: TStringField
      FieldName = 'Par_impnf'
      Origin = 'FINANCEIRO.CPAPARA.Par_impnf'
      FixedChar = True
      Size = 80
    end
  end
  object T_ACEN: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_Basefin'
    SQL.Strings = (
      'SELECT * FROM ACENTUACAO')
    ValidateWithMask = True
    Left = 696
    Top = 320
    object T_ACENACE_CASC: TIntegerField
      FieldName = 'ACE_CASC'
      Origin = 'FINANCEIRO.Acentuacao.ACE_CASC'
    end
    object T_ACENACE_DESC: TStringField
      FieldName = 'ACE_DESC'
      Origin = 'FINANCEIRO.Acentuacao.ACE_DESC'
      FixedChar = True
    end
    object T_ACENACE_NOVO: TStringField
      FieldName = 'ACE_NOVO'
      Origin = 'FINANCEIRO.Acentuacao.ACE_NOVO'
      FixedChar = True
      Size = 1
    end
  end
end
