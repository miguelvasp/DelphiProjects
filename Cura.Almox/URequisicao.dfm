object FRequisicao: TFRequisicao
  Left = 587
  Top = 628
  Width = 1076
  Height = 682
  Caption = 'Requisi��o - Sistema de Almoxarifado'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object TabbedNotebook1: TTabbedNotebook
    Left = 0
    Top = 54
    Width = 1057
    Height = 571
    PageIndex = 1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    TabFont.Charset = ANSI_CHARSET
    TabFont.Color = clBtnText
    TabFont.Height = -13
    TabFont.Name = 'Comic Sans MS'
    TabFont.Style = [fsBold]
    TabOrder = 1
    OnClick = TabbedNotebook1Click
    OnChange = TabbedNotebook1Change
    object TTabPage
      Left = 4
      Top = 30
      Caption = '        Requisi��o       '
      object Panel2: TPanel
        Left = 2
        Top = 0
        Width = 1039
        Height = 529
        BevelInner = bvLowered
        TabOrder = 0
        object Label21: TLabel
          Left = 160
          Top = 13
          Width = 115
          Height = 18
          Caption = 'Data da Requisi��o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 409
          Top = 68
          Width = 96
          Height = 18
          Caption = 'Centro de Custo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object Label1: TLabel
          Left = 23
          Top = 13
          Width = 102
          Height = 18
          Caption = 'N� da Requisi��o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object Label12: TLabel
          Left = 25
          Top = 69
          Width = 32
          Height = 18
          Caption = 'Local'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object lbDestino: TLabel
          Left = 401
          Top = 453
          Width = 99
          Height = 18
          Caption = 'Local de destino'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object Label13: TLabel
          Left = 728
          Top = 13
          Width = 114
          Height = 18
          Caption = 'Tipo de Requisi��o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object Label15: TLabel
          Left = 857
          Top = 5
          Width = 27
          Height = 18
          Caption = 'Tipo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object lbCancelada: TLabel
          Left = 232
          Top = 148
          Width = 153
          Height = 23
          Caption = 'Requisi��o Cancelada'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object lbSolicitacao: TLabel
          Left = 231
          Top = 125
          Width = 145
          Height = 18
          Caption = 'Solicita��es atendidas: '
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object Label18: TLabel
          Left = 304
          Top = 13
          Width = 97
          Height = 18
          Caption = 'Meu Local Atual'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object DBText1: TDBText
          Left = 304
          Top = 32
          Width = 537
          Height = 33
          DataField = 'Descricao'
          DataSource = FMenu.dsLocal
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label20: TLabel
          Left = 23
          Top = 125
          Width = 90
          Height = 18
          Caption = 'Solicitado por:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object Label22: TLabel
          Left = 23
          Top = 253
          Width = 242
          Height = 18
          Caption = 'Observa��o da Solicita��o de Materiais'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object Label23: TLabel
          Left = 23
          Top = 197
          Width = 99
          Height = 18
          Caption = 'Tipo Solicita��o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object Label24: TLabel
          Left = 231
          Top = 197
          Width = 131
          Height = 18
          Caption = 'Motivo da Solicita��o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object txData: TwwDBEdit
          Left = 161
          Top = 34
          Width = 121
          Height = 26
          DataField = 'Data'
          DataSource = DS_REQ
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnEnter = txDataEnter
          OnExit = txDataExit
        end
        object wwDBEdit2: TwwDBEdit
          Left = 23
          Top = 34
          Width = 112
          Height = 26
          DataField = 'Req_ID'
          DataSource = DS_REQ
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBGrid1: TwwDBGrid
          Left = 14
          Top = 408
          Width = 891
          Height = 113
          TabStop = False
          Selected.Strings = (
            'Req_ID'#9'10'#9'N�'
            'Data'#9'19'#9'Data da Requisi��o'
            'CC_Desc'#9'35'#9'Centro Custo'
            'Data_Sist'#9'15'#9'Data '
            'Usuario'#9'19'#9'Usu�rio'
            'TipoSolicitacao'#9'50'#9'TipoSolicitacao'
            'MotivoSolicitacao'#9'250'#9'MotivoSolicitacao')
          IniAttributes.FileName = 'delphi32.ini'
          IniAttributes.SectionName = 'FPcPGridx'
          IniAttributes.Delimiter = ';;'
          TitleColor = clLime
          FixedCols = 0
          ShowHorzScrollBar = True
          Color = clInfoBk
          DataSource = DS_REQ
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          KeyOptions = [dgEnterToTab]
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
          ParentFont = False
          TabOrder = 5
          TitleAlignment = taLeftJustify
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clBlue
          TitleFont.Height = -11
          TitleFont.Name = 'Comic Sans MS'
          TitleFont.Style = []
          TitleLines = 1
          TitleButtons = False
          Visible = False
          IndicatorIconColor = clYellow
        end
        object wwDBLookupCombo1: TwwDBLookupCombo
          Left = 407
          Top = 89
          Width = 490
          Height = 26
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'CC_Desc'#9'40'#9'CC_Desc'#9'F')
          DataField = 'CC_ID'
          DataSource = DS_REQ
          LookupTable = Q_CC
          LookupField = 'CC_ID'
          ParentFont = False
          TabOrder = 4
          AutoDropDown = True
          ShowButton = True
          PreciseEditRegion = False
          AllowClearKey = False
          OnEnter = cboMatEnter
          OnExit = cboMatExit
        end
        object cboLocal: TwwDBLookupCombo
          Left = 22
          Top = 90
          Width = 377
          Height = 26
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'Descricao'#9'50'#9'Descricao'#9'F'
            'Local_ID'#9'10'#9'Local_ID'#9'F')
          DataField = 'LOCAL_ID'
          DataSource = DS_REQ
          LookupTable = qrLocal
          LookupField = 'LOCAL_ID'
          ParentFont = False
          TabOrder = 3
          AutoDropDown = False
          ShowButton = True
          PreciseEditRegion = False
          AllowClearKey = False
        end
        object cboDestino: TwwDBLookupCombo
          Left = 398
          Top = 474
          Width = 377
          Height = 26
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'Descricao'#9'50'#9'Descricao'#9'F'
            'Local_ID'#9'10'#9'Local_ID'#9'F')
          DataField = 'LOCAL_DESTINO'
          DataSource = DS_REQ
          LookupTable = qrLocalDest
          LookupField = 'LOCAL_ID'
          ParentFont = False
          TabOrder = 6
          Visible = False
          AutoDropDown = False
          ShowButton = True
          PreciseEditRegion = False
          AllowClearKey = False
        end
        object wwDBComboBox1: TwwDBComboBox
          Left = 720
          Top = 33
          Width = 313
          Height = 31
          ShowButton = True
          Style = csDropDown
          MapList = True
          AllowClearKey = False
          DataField = 'TIPO'
          DataSource = DS_REQ
          DropDownCount = 8
          ItemHeight = 0
          Items.Strings = (
            'Requisi��o de Materiais'#9'R'
            'Transfer�ncia de Materiais'#9'T')
          Sorted = False
          TabOrder = 2
          UnboundDataType = wwDefault
          Visible = False
          OnChange = wwDBComboBox1Change
        end
        object wwDBEdit4: TwwDBEdit
          Left = 855
          Top = 26
          Width = 210
          Height = 27
          DataField = 'TIPO_REQUISICAO'
          DataSource = DS_REQ
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 7
          UnboundDataType = wwDefault
          Visible = False
          WantReturns = False
          WordWrap = False
        end
        object wwDBEdit5: TwwDBEdit
          Left = 23
          Top = 146
          Width = 194
          Height = 26
          DataField = 'UsuarioSolicitacao'
          DataSource = DS_REQ
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 8
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object DBMemo1: TDBMemo
          Left = 24
          Top = 280
          Width = 1009
          Height = 193
          DataField = 'ObservacaoSolicitacao'
          DataSource = DS_REQ
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 9
        end
        object cboTipo: TwwDBComboBox
          Left = 24
          Top = 216
          Width = 201
          Height = 26
          ShowButton = True
          Style = csDropDown
          MapList = True
          AllowClearKey = False
          AutoDropDown = True
          DataField = 'TipoSolicitacao'
          DataSource = DS_REQ
          DropDownCount = 8
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ItemHeight = 0
          Items.Strings = (
            'NORMAL'#9'N'
            'URGENTE'#9'U')
          ParentFont = False
          ReadOnly = True
          Sorted = False
          TabOrder = 10
          UnboundDataType = wwDefault
        end
        object edtMotivoSolicitacao: TwwDBEdit
          Left = 231
          Top = 216
          Width = 794
          Height = 26
          DataField = 'MotivoSolicitacao'
          DataSource = DS_REQ
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 11
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
      end
    end
    object TTabPage
      Left = 4
      Top = 30
      Caption = '        Itens          '
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 1049
        Height = 537
        BevelInner = bvLowered
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label19: TLabel
          Left = 10
          Top = 46
          Width = 51
          Height = 18
          Caption = 'Material'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 17
          Top = 9
          Width = 44
          Height = 18
          Caption = 'N� Req.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 27
          Top = 83
          Width = 34
          Height = 18
          Caption = 'Qtde.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 10
          Top = 366
          Width = 256
          Height = 18
          Caption = 'Lotes para atender aos itens da requisi��o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 426
          Top = 20
          Width = 143
          Height = 18
          Caption = 'Prefer�ncia pela Marca'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object btSimul: TSpeedButton
          Left = 224
          Top = 79
          Width = 116
          Height = 26
          Hint = 'Simular Aloca��o de Materiais'
          Caption = 'Simular Baixas'
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = btSimulClick
        end
        object btConf: TSpeedButton
          Left = 587
          Top = 79
          Width = 201
          Height = 26
          Caption = 'Confirmar Baixas Simuladas'
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            33333FF3333333333333447333333333333377FFF33333333333744473333333
            333337773FF3333333333444447333333333373F773FF3333333334444447333
            33333373F3773FF3333333744444447333333337F333773FF333333444444444
            733333373F3333773FF333334444444444733FFF7FFFFFFF77FF999999999999
            999977777777777733773333CCCCCCCCCC3333337333333F7733333CCCCCCCCC
            33333337F3333F773333333CCCCCCC3333333337333F7733333333CCCCCC3333
            333333733F77333333333CCCCC333333333337FF7733333333333CCC33333333
            33333777333333333333CC333333333333337733333333333333}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = btConfClick
        end
        object Label7: TLabel
          Left = 8
          Top = 496
          Width = 42
          Height = 18
          Caption = 'Aberta'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 61
          Top = 496
          Width = 63
          Height = 18
          Caption = 'Finalizada'
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clGreen
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label9: TLabel
          Left = 714
          Top = 512
          Width = 82
          Height = 18
          Caption = 'Em Simula��o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 816
          Top = 512
          Width = 63
          Height = 18
          Caption = 'Finalizada'
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clGreen
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label11: TLabel
          Left = 133
          Top = 83
          Width = 20
          Height = 18
          Caption = 'Un.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 8
          Top = 516
          Width = 219
          Height = 18
          Caption = 'Materiais que precisam de libera��o'
          Color = clRed
          ParentColor = False
        end
        object Label16: TLabel
          Left = 232
          Top = 516
          Width = 207
          Height = 18
          Caption = 'Material acima do Estoque m�ximo'
          Color = clYellow
          ParentColor = False
          Visible = False
        end
        object Label17: TLabel
          Left = 192
          Top = 16
          Width = 10
          Height = 18
          Caption = 'N'
          Visible = False
        end
        object btnTransferencia: TButton
          Left = 764
          Top = 64
          Width = 169
          Height = 25
          Caption = 'Transferir Materiais'
          TabOrder = 7
          Visible = False
        end
        object cboMat: TwwDBLookupCombo
          Left = 65
          Top = 41
          Width = 312
          Height = 26
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'MAT_DESC'#9'60'#9'MAT_DESC'#9'F')
          DataField = 'Mat_ID'
          DataSource = DS_REQ_ITEM
          LookupTable = Q_MAT
          LookupField = 'MAT_ID'
          Color = 15794175
          ParentFont = False
          TabOrder = 2
          AutoDropDown = True
          ShowButton = True
          PreciseEditRegion = False
          AllowClearKey = False
          OnCloseUp = cboMatCloseUp
          OnEnter = cboMatEnter
          OnExit = cboMatExit
        end
        object Grid: TwwDBGrid
          Left = 9
          Top = 111
          Width = 1024
          Height = 255
          TabStop = False
          Selected.Strings = (
            'Req_ID'#9'10'#9'N�'#9#9
            'DSMAT'#9'19'#9'Material'#9#9
            'Qtde'#9'13'#9'Quantidade'#9#9
            'Uni_Sigla'#9'3'#9'Un.'#9#9
            'LocalArmazem'#9'20'#9'LocalArmazem'#9#9
            'DS_Marca'#9'34'#9'Marca Pref.'#9#9
            'InformacaoAdicional'#9'100'#9'Informa��o Adicional'#9#9)
          IniAttributes.FileName = 'delphi32.ini'
          IniAttributes.SectionName = 'FPcPGridx'
          IniAttributes.Delimiter = ';;'
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          Color = 15794175
          DataSource = DS_REQ_ITEM
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          KeyOptions = [dgEnterToTab]
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
          ParentFont = False
          TabOrder = 8
          TitleAlignment = taLeftJustify
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clBlue
          TitleFont.Height = -11
          TitleFont.Name = 'Comic Sans MS'
          TitleFont.Style = []
          TitleLines = 1
          TitleButtons = False
          OnCalcCellColors = GridCalcCellColors
          IndicatorIconColor = clYellow
        end
        object wwDBEdit3: TwwDBEdit
          Left = 65
          Top = 7
          Width = 75
          Height = 26
          Color = 15794175
          DataField = 'Req_ID'
          DataSource = DS_REQ
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object txQt: TwwDBEdit
          Left = 65
          Top = 78
          Width = 64
          Height = 26
          BiDiMode = bdRightToLeft
          CharCase = ecUpperCase
          Color = 15794175
          ParentBiDiMode = False
          DataField = 'Qtde'
          DataSource = DS_REQ_ITEM
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnEnter = txQtEnter
          OnExit = txQtExit
        end
        object wwDBGrid2: TwwDBGrid
          Left = 8
          Top = 384
          Width = 1025
          Height = 113
          TabStop = False
          Selected.Strings = (
            'MARCA_DESC'#9'9'#9'Marca'
            'N_LOTE'#9'9'#9'Lote'
            'VALID'#9'9'#9'Valid.'
            'QTDE'#9'8'#9'Qtde.'
            'FOR_CODI'#9'11'#9'Fornecedor'
            'LOC_DESC'#9'13'#9'Local')
          IniAttributes.FileName = 'delphi32.ini'
          IniAttributes.SectionName = 'FPcPGridx'
          IniAttributes.Delimiter = ';;'
          TitleColor = 9961471
          FixedCols = 0
          ShowHorzScrollBar = True
          Color = clInfoBk
          DataSource = DS_RQL
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          KeyOptions = [dgEnterToTab]
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
          ParentFont = False
          TabOrder = 9
          TitleAlignment = taLeftJustify
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clBlue
          TitleFont.Height = -11
          TitleFont.Name = 'Comic Sans MS'
          TitleFont.Style = []
          TitleLines = 1
          TitleButtons = False
          OnCalcCellColors = wwDBGrid2CalcCellColors
          IndicatorIconColor = clYellow
        end
        object cboMarca: TwwDBLookupCombo
          Left = 426
          Top = 41
          Width = 342
          Height = 26
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'MARCA_DESC'#9'20'#9'MARCA_DESC'#9'F')
          DataField = 'marca_id'
          DataSource = DS_REQ_ITEM
          LookupTable = Q_MARCA
          LookupField = 'MARCA_ID'
          Color = clInfoBk
          ParentFont = False
          TabOrder = 3
          AutoDropDown = True
          ShowButton = True
          PreciseEditRegion = False
          AllowClearKey = False
          OnEnter = cboMatEnter
          OnExit = cboMarcaExit
        end
        object wwDBEdit1: TwwDBEdit
          Left = 161
          Top = 78
          Width = 51
          Height = 26
          BiDiMode = bdRightToLeft
          CharCase = ecUpperCase
          Color = 15794175
          ParentBiDiMode = False
          DataField = 'Uni_Sigla'
          DataSource = DS_REQ_ITEM
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnEnter = txQtEnter
          OnExit = txQtExit
        end
        object Button1: TButton
          Left = 888
          Top = 504
          Width = 137
          Height = 25
          Caption = 'Substituir Lote'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
          OnClick = Button1Click
        end
        object Button4: TButton
          Left = 348
          Top = 80
          Width = 233
          Height = 25
          Caption = 'Usar Leitor de C�digo de barras'
          TabOrder = 6
          OnClick = Button4Click
        end
        object btnGetMaterial: TBitBtn
          Left = 378
          Top = 39
          Width = 32
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 11
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
        object Panel1: TPanel
          Left = 752
          Top = -14
          Width = 1035
          Height = 527
          Caption = 'Panel1'
          TabOrder = 0
          Visible = False
          object Button2: TButton
            Left = 8
            Top = 488
            Width = 129
            Height = 25
            Caption = 'Adicionar Itens'
            TabOrder = 1
            OnClick = Button2Click
          end
          object Button3: TButton
            Left = 144
            Top = 488
            Width = 89
            Height = 25
            Caption = 'Cancelar'
            TabOrder = 2
            OnClick = Button3Click
          end
          object wwDBGrid3: TwwDBGrid
            Left = 1
            Top = 1
            Width = 1033
            Height = 480
            ControlType.Strings = (
              'IMG;ImageIndex;Shrink To Fit')
            Selected.Strings = (
              'MAT_DESC'#9'50'#9'Material'
              'QTDE'#9'9'#9'Estoque'
              'LOTE'#9'20'#9'N� Lote'
              'VALIDADE'#9'18'#9'Validade'
              'QTDE_SOL'#9'11'#9'Adicionar Qtde')
            IniAttributes.Delimiter = ';;'
            TitleColor = clBtnFace
            FixedCols = 0
            ShowHorzScrollBar = True
            Align = alTop
            DataSource = dsDadosOrigem
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            TitleAlignment = taLeftJustify
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            TitleLines = 1
            TitleButtons = False
          end
        end
      end
    end
    object TTabPage
      Left = 4
      Top = 30
      Caption = '       Itens Devolvidos        '
      object wwDBGrid4: TwwDBGrid
        Left = 9
        Top = 15
        Width = 904
        Height = 514
        TabStop = False
        Selected.Strings = (
          'MAT_DESC'#9'40'#9'Material'
          'N_Lote'#9'15'#9'Lote'
          'Valid'#9'13'#9'Validade'
          'Qtde'#9'12'#9'Qtde'
          'Devolucao'#9'12'#9'Devoluc�o')
        IniAttributes.FileName = 'delphi32.ini'
        IniAttributes.SectionName = 'FPcPGridx'
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Color = 15794175
        DataSource = dsDevolucao
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        KeyOptions = [dgEnterToTab]
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleAlignment = taLeftJustify
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clBlue
        TitleFont.Height = -11
        TitleFont.Name = 'Comic Sans MS'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
        OnCalcCellColors = GridCalcCellColors
        IndicatorIconColor = clYellow
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 1049
    Height = 56
    BevelInner = bvLowered
    Color = clWhite
    TabOrder = 0
    object SpeedButton1: TSpeedButton
      Left = 814
      Top = 3
      Width = 61
      Height = 50
      Hint = 'Sair'
      Caption = 'Fechar'
      Flat = True
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C0000232E0000232E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFAFBFBDFE0E0D3D3D3DFDFDFE2E2E2ECECECEFEFEFF6F6F6FBFBFBFC
        FCFCFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFA7C5D6226C9724678D366D8C47748E5D7E92748B998A98A0A2A9ACB5
        B7B8C7C7C7D4D4D4E0E0E0E3E3E3EEEEEEF8F8F8FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBED6E48CB6CF8CB6CF8CB6
        CF8CB6CF478BB302619B04629E03629B0161980060960060960260950660940C
        619118638F26678D386E8C49758F648191C0C0C1FBFBFBFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBCD5E3166B9C005D93005D93005D
        93005D93005E950B66AD1B76C91D7BCB1B79C81977C41673BF1270B9106DB40C
        6AAD0967A80665A304629D02619A0060977C8F9AF2F2F2FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA4C5D9005D930E436E103E67103E
        67103E670653850F6CB22180CE2487D22487D22385D12284D12183CF2081CF1F
        80CE1E7FCE1D7DCD1C7BCB1872C60863A66B8798EEEEEEFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7EADC9005D93123B621339601339
        601339600653841371B72689D4298FD8278DD5288ED6288DD6278CD5258BD425
        8AD42489D32387D22286D11E7ECD0B68AA628395EBEBEBFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF639CBD005D93133A611339601339
        601339600555871775BC298DD62C93D9268DD62C93D92B92D92990D8258CD529
        90D8288FD7268CD5258CD52286D10F6DB1597D93E8E8E8FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF70A4C3005D921339601339601339
        6013396004588A1B79C02C90D92E94DA288FD72E96DB2E95DB2C93D9278DD62C
        93D92B92D9288FD7278DD6258AD31170B4507991EAEAEAFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF639CBD03578B1339601339601339
        6013396003598D1E7DC52E93DA2F95DC2A91D83198DD3097DC2E95DA2990D72F
        95DB2E94DB2A91D9288FD7288DD51372B5487590E6E6E6FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5090B50456881339601339601339
        60133961035A8F2181C93296DC3097DD2D94DA349ADF339ADE3097DC2A91D831
        98DD3197DC2E94DA2990D82B90D81675BB40728FE1E1E1FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5291B60555871339601339601339
        60133A62025C912686CE3599DD3196D92E8ED03599D9369DE0339ADE2C92D934
        9BDE349ADE3298DD2A91D92E93DA1A78BF3A6F8EDDDDDDFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5492B70547671133551339601339
        60123B63025D932B8AD33392D31C649E145288205D87338DC8369CDF2D94DA37
        9EE0379DE0359CDF2C93D93297DC1D7CC1336D8DD7D7D7FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF478CA604710B082F29102F4F1339
        5F123C64025E952E8ED61965AC166DB81771BC10579C23618A379BDB2F96DB3A
        A1E23AA0E2389FE12D93DA359ADE2080C52B698CD9D9D9FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFBFBFBEBEBEBD3D4D329666F32A33D2A96340639210E2B
        48113C640260982B86CF1366B11E83CE1F85D01771BC1956893798D63198DD3D
        A4E53DA3E43CA2E32E94DA389EE02686CC25678CD8D8D8FFFFFFFFFFFFFFFFFF
        FFFFFFFCFCFCEEEFEE97B497438C44258F2B2AA03555C26770D38543AC500749
        1A0A2F4B04639B2D88D02070B658A4DB59A5DD3282C41D60963A9DDC339ADD40
        A7E63FA6E53FA5E52F95DB3BA1E3298ACF20658DD3D3D3FFFFFFFFFFFFFFFFFF
        FDFDFDD8E3D83D943E1FA4293BC04E4BC85F57CB6C64D07970D3867BD7925EBE
        6E0B633205649D3A9BE13378B7B9D6EDBBD8EF568CC03388C03FA5E4349BDE43
        AAE843A9E742A9E72F96DB3FA4E52C8DD31A638DCDCDCDFFFFFFFFFFFFFFFFFF
        E1EAE12D943023B63431BF443EC3514AC75E57CC6C64D07970D3867AD79184DA
        9B5EB5930867A13EA0E53FA0DF3881C0488BC43791CF47ADE942A8E7369DDF46
        ACEA45ACE945ACE93097DC42A8E73294D9146290C7C8C8FFFFFFFFFFFFFAFBFA
        4DA24F19B22926BC3832BF443EC3514BC75E57CC6C64CF7970D3857AD79174CE
        88167A4B0B6AA540A3E74AB0EC3198DC4BB1EC4AB1ED4AB1EC44AAE8379EE149
        AFEB48AFEB49AEEB3198DD46AAE93799DE0F6291C0C1C1FEFEFEFFFFFFB3D4B3
        0D9E161CB82D26BC3826B13522A12C269B301E93334BB95B6FD4865BC06D0E67
        250B486A0E6DA844A7E94DB3EE3198DC4EB4EF4DB4EE4DB3EE46ACE93AA0E24C
        B2ED4BB2ED4CB2ED3298DD49AEEC3B9EE10C6192BABCBCFEFEFEFFFFFF439D43
        12B12214A821309A348EC28ECAE2CA99BED1005F8735A54041AE4E0A572C1339
        5D0C48751272AD46A9EB51B6EF3A9ADA5CB9ED5FB9EC62BAEA61B5E55BACDD71
        BDE675BEE579C0E469ADD674BBE23FA2E5086196B3B5B6FDFDFDFFFFFF138E16
        0B9C147CB27DF1F5F1FEFEFEFFFFFF689FBF005F880C81110C4B3A13395F1339
        600B4A781676B24FAEEBE4DBCAF7EAD7FAEDDAFBEFDCFCEFDDFEEFDEFFF2E0FF
        F3E1FEF2E3FFF1E4F9F0E5FEE8D058ACE309649BABAFB1FCFCFCFFFFFF0D860E
        659E66F6F6F6FFFFFFFFFFFFFFFFFF83B0CB025B8F1140561339601339601339
        60094C7B1B7BB769B5E5D9CDDB746FEF6762EF8681F29F9CF3C9C6F77570F247
        41EF605AF1F3F2FC5853F0FFF5E766B2E308659DA2A8ACFAFAFAFFFFFF309330
        D9DDD9FEFEFEFFFFFFFFFFFFFFFFFF6EA3C203588B1339601339601339601339
        60084E7E207FBC72B9E5BFB8E34D48F1B1AEF9D7D6FC3F39F0534DF1C5C3FB7C
        78F5B4B2F9F3F3FE4F4AF1FFF7EC6FB7E40867A098A1A6F7F7F7FFFFFFADD4AD
        FCFCFCFFFFFFFFFFFFFFFFFFFFFFFF5191B60456891339601339601339601339
        600850812484C27ABEE6BFB9E6443FF08480F5E4E2FD8A85F5463FF0FEFEFF83
        7EF5B9B6F9F3F3FE4F4AF1FFF8EE77BCE50F6EA88F9CA4F5F5F5FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3780AA0555871339601339601339601339
        600653852889C781C0E5BFB9E6453FF09A98F7EBEBFE5750F13931EFDEDDFD80
        7BF5AEABF8C9C7FB4C44D2B3A9A365B0DE1170AB8697A0F6F6F6FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2574A30554871339601339601339601339
        600456892C8DCC89C4E4BEB9E8342DEF5751F28C88F65852F2B6B3F9706AF44B
        44F0706AF46A64F3DFCCCDB8CFD951B5F21372AC7A8F9CF4F4F4FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF166B9C084F7F1339601339601339601339
        6003588C3193D191C7E3E7DFE9B9B6F8CECBF9E2E0FAF3F0FAFFFCFAFBF8F8FE
        FAF7FFFAF5FFF9F3E7DBCF66C0F151B5F11878B46E8998F1F1F1FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF096397094C7B1339601339601339601339
        60025A8F3497D696C7DFFFECDBFFF4EBFFF3E9FFF1E6FFF0E3FFEFDFFFECDBFC
        EAD8F8E8D6EDE3D691C3DF53B8F34AAEEE1878B6648495EDEDEDFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF076196055587094C7A094C7A094C7A094C
        7A015D923597D964B8EBD1D6CFC3D5D9B0D0DCA1CBDF8EC5E27DC0E76EBCEB5C
        B7EF52B3F248AEF146A9EB3FA2E23191D40F6EAB678A9DF1F1F1FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5E99BB066196045F95045F95045F95045F
        95025F963193DA47AAEF45ACEF42A7E83B9EDE3494D42C8CCA2381BE1C79B513
        71AB0B69A206639B025F96015E960662982576A5C8D5DDFAFAFAFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF0A669A08669F08659E046098015F95005F95026096186EA03682AC5393B841
        88B168A0C05996BA91BAD19EC0D4F7F9FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF5E9BBD3480AC5B98BC4489B17FAECAB9D2E1E3EDF2FEFEFEFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Layout = blGlyphTop
      ParentShowHint = False
      ShowHint = True
      Spacing = 0
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 666
      Top = 3
      Width = 60
      Height = 50
      Hint = 'Relat�rio'
      Caption = 'Imprimir'
      Flat = True
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C0000EB0A0000EB0A00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCF0F0F0D0B1AAC19A93C1C1C1CCCC
        CCDDDDDDEDEDEDF4F4F4EDEDEDD0BBAEC48F6FBC8F75B8A9A0C2C2C2D1D1D1E3
        E3E3F2F2F2FBFBFBFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFCFCFCEEEEEECCA097C1624FBF5D4AB85D4EB68F
        88BFBFBFCCCCCCD6D6D6CAAD9BD0A38AFBF5F4EDDAD2C99C81B48469B6AAA3C4
        C4C4D4D4D4E5E5E5F3F3F3FBFBFBFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFCFCFCEEEEEEC98B7DC46752F6DCD5FFD6CDDF9588C169
        5BB76052B58D87C5A493DFBDAAFCF7F5FEF9F9FBF6F6F9F3F3E9D5CCB9805EAF
        866CB9B0ABC5C5C5D4D4D4E6E6E6F4F4F4FCFCFCFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFBFBFBEDEDEDCA8E7FC66B55F6D8D2FFF6F3FFE2DAFFDAD1E9C0
        BCCD9B99CB8F77E1C1AFFFFFFFFFFCFCFEF9F9FBF6F6F9F2F2F7EFEFF5EDEDDD
        BFB0B57B58AF856CB9B0ABC6C6C6D8D8D8E9E9E9F5F5F5FDFDFDFFFFFFFFFFFF
        FFFFFFFAFAFAEAEAEACB9180C96F58F7D6CFFFF2EFFFF3F0FFE3DCFFDDD5EBC4
        BFD4A48FE9D1C3FFFFFFFFFFFFFFFCFCFEF9F9FBF6F6F9F2F2F7EFEFF5EBEBF3
        E7E7F3E8E8CFA894B0714CB08E7ABBB7B4C9C9C9DEDEDEF6F6F6FFFFFFFFFFFF
        FBFBFBE7E1DFCC8772D4836DFBDDD5FFEEE9FFEFEAFFF0EBFFE4DEFFE0D8EEC8
        C2D8AC96E9D1C3FFFCFAFFFFFFFFFCFCFEF9F9FBF6F6F9F2F2F7EFEFF5EBEBF3
        E7E7F1E4E4EFE1E1EFE0DED2AD99B17653B3917DD4D4D4F3F3F3FFFFFFFFFFFF
        F0EAE9D0866FD6866FFFE1DAFFEAE4FFEBE6FFEDE7FCE3DFF5D2CDFFE3DCFBDA
        D5E3C0BED3A79DD0A18AE5C9BBFBF6F4FEF9F9FBF6F6F9F2F2F7EFEFF5EBEBF3
        E7E7F1E4E4EFE1E1EFE1E1EFE1E1DCBFB3AD6F48E6E6E6F9F9F9FFFFFFFFFFFF
        D78F76D88B71FFDED5FFE6E0FFE7E1FFE8E2FADDD8E4BDB9E7C0BDE2B6B3F4D1
        CBFFE5DEF7D7D2DEB7B5CC9C90C8957CDFC0B0F7EFEDF9F2F2F7EFEFF5EBEBF3
        E7E7F1E4E4EFE1E1EFE1E1D5B3A4B58265DCD0C8F9F9F9FEFEFEFFFFFFFFFFFF
        D27B5CFFDAD1FFE2DAFFE3DCFFE4DDF7D4D0E6BEB9FCDED8FFE9E3F9DAD6E6BF
        BBE1B5B2F4D1CDFFE6E1F6D6D1D9AFAEC59083C18A6ED8B6A5F3E7E5F5EBEBF3
        E7E7F1E4E4EAD9D7C4957CB2886ED5D0CEF5F5F5FFFFFFFFFFFFFFFFFFFFFFFF
        D37D5DFFDED5FFDFD7FFE0D8F4CFC8E9C1BDFFE1D9FFE7E1FFEBE7FFEBE6FFEA
        E6F9DCD7E5BEBBE0B4B1F3D2CDFFE8E3F4D4D0D4A6A5BE8478B97F60CEA590E9
        D8D3E3CDC5B37753B05840B3817DD9D9D9F6F6F6FFFFFFFFFFFFFFFFFFFFFFFF
        D57F5FFFDAD2FFDCD3F1C8C3EAC2BEFFDDD5FFE0D8FFEBE6FFEFEAFFEEE9FFEE
        E9FFEEE8FFEDE8FEE5E0E9C4C1DEB3B0EEC9C6FFE6E1F3D3CFD09F9EB7796BAE
        6C48B1714EF2D0C4C1665CB37A75D9D9D9F5F5F5FFFFFFFFFFFFFFFFFFFFFFFF
        D68160FFD6CDF1C7C1F2C7C2FFDAD2FFDCD3FFE3DCFFF2EFFFF2EEFFF1EDFFF1
        EDFFF0EDFFF0EBFFEFEBFFEFEAFEE6E2E8C4C1DAAEABEDCBC6FFE8E3F1D2CECC
        9695B47272FFEAE6C2685EB47C75D9D9D9F5F5F5FFFFFFFFFFFFFFFFFFFFFFFF
        D78361EFC4BFF3C7C1FFD7CDFFD8CFFFD9D0FFF0EDFFF0DFFFF4F1FFF4F1FFF3
        F0FFF3F0FFF3EFFFF2EFFFF2EEFFF1EEFFF1EDFEE7E4E7C4C1D9ACAAEDCBC7FF
        EAE5F0D0CD9ED88EB0624FB57D77D9D9D9F5F5F5FFFFFFFFFFFFFFFFFFFFFFFF
        D88563F6C5BCFFD3C8FFD4C9FFD5CBFFE7DEFFEDC2FFD28EFFD296FFE7CCFFF6
        F4FFF6F3FFF5F2FFF5F2FFF4F2FFF4F1FFF4F1FFF3F0FFF3F0FEE9E6E6C4C1D7
        ABA8EBCBC789E67BB16851B67E78DADADAF6F6F6FFFFFFFFFFFFFFFFFFFFFFFF
        DD9677F1AF9AFFD0C4FFD1C6FFE7DDFFF6D2FFEEBDFFD28FFFC984FCBE79FCC1
        7DFFD8B2FFF5EEFFF8F5FFF7F5FFF7F4FFF6F4FFF6F3FFF5F3FFF5F2FFF5F2FE
        EAE8E6C3C1D6A8A7BC6056B78079E0E0E0F9F9F9FFFFFFFFFFFFFFFFFFFFFFFF
        F1D2C4D98864E39B7EFEEADAFFFFDFFFF8CFFFF1C2FFDFA4FFCD89FEC27CF9B6
        70F6AB63F6AC67FED2AAFFF6EFFFF9F8FFF9F7FFF9F7FFF8F6FFF8F6FFF7F5FF
        F7F5FFF6F4FCEDE9BE6156BE9C98E7E7E7FCFCFCFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFF9EFEBE5B19CDE9472EED4B3FFFBD5FFF3C7FFEBBBFFDDA1FFC682FAB9
        74F7AE68F3A25CF0974FF09952F9C092FFF2E4FFFBFAFFFBF9FFFAF9FFFAF8FF
        FAF8FFF9F7FEEEEBB34839CABDBBF0F0F0FEFEFEFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFEDE1DBCC9C7FFFFAF6FFF5DEFFEFC2FFE7B2FFDFA3FFCB
        89F8B36EF4A660F09B53ED8F48E8833BE87F31F6B27BFFF2E4FFFEFCFFFEFCFF
        FCFBFFFCFBDDA49BB66053DEDEDEF8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFDFDFDDABFAFE7CFC1FEF9F9FAF5F5F9F1EFFCEBD1FFE3AEFFDC
        9DFFD28EFEBF78F5A75FEE924BE9883FE67C34E27027E1681CEFA06CFFEFE2FF
        FFFFFFF4F2BC5A4AC8A099EFEFEFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF8F8F8CA9C81FCF7F5FEF9F9FAF5F5F8F2F2F6EEEEF5E9E6F9E2
        C7FFD89FFFD089FFC87BFEB667F1964BE67F37E3732BDF681FDC5D13D95709FC
        D6B5C87466BE7163EAEAEAFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFEFEFEE2CEC4DFBDAAFFFCFCFEF9F9FAF5F5F8F2F2F6EEEEF4EAEAF2E6
        E6F0E3E3F6DCC1FFCE8CFFC473FFBD66F09245E4772FE06B23E1681AF3AC77CB
        7968C16F5EE7E0DFFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFBFBFBD2AA95F7EDE7FFFCFCFEF9F9FAF5F5F8F2F2F6EEEEF4EAEAF2E6
        E6F0E3E3EFE1E1EFE1E1F6D6B8F8BD78FCAC57E67E35E68444D8825BC15E48CA
        8677EEE8E6FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFEFE9E5DAB39EFFFFFFFFFCFCFEF9F9FAF5F5F8F2F2F6EEEEF4EAEAF2E6
        E6F0E3E3EFE1E1EFE1E1EAD8D3AE6D48D27852CF7250C77057D49889E8CFCAFA
        FAFAFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FDFDFDDABBA9EFDCD1FFFFFFFFFCFCFEF9F9FAF5F5F8F2F2F6EEEEF4EAEAF2E6
        E6F0E3E3EFE1E1EFE1E1CDA38DBDA494EAEAEAFDFDFDFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        F5F2F0D4A991FFFFFFFFFFFFFFFCFCFEF9F9FAF5F5F8F2F2F6EEEEF4EAEAF2E6
        E6F0E3E3EFE1E1F1E5E5B27753D5D0CEF4F4F4FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        E6D3C9EAD2C4FFFFFFFFFFFFFFFCFCFEF9F9FAF5F5F8F2F2F6EEEEF4EAEAF2E6
        E6F0E3E3EFE1E1DABCADB69079E5E5E5FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        D8AF98FCF7F3FFFFFFFFFFFFFFFCFCFEF9F9FAF5F5F8F2F2F6EEEEF4EAEAF2E6
        E6F0E3E3F0E3E3B98262CBC3BEF1F1F1FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        DAB19AE7CBBCFCF6F2FFFFFFFFFCFCFEF9F9FAF5F5F8F2F2F6EEEEF4EAEAF2E6
        E6F0E3E3E0C7BDB07E5FDFDFDFF9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFEDDACFD7B09AD3A78FE9D4C8FAF4F2FAF5F5F8F2F2F6EEEEF4EAEAF2E6
        E6F0E3E3C99E84C2ACA0EDEDEDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFF7F0ECDFC3B3C69377D5AF9AEBD9D0F7F0F0F4EAEAF2E6
        E6F0E1DFAD734FDADADAF7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9D6CBCBA289BD8564D6B3A0EEDE
        D8D1AC97C1A491EBEBEBFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF6F4D9BDACB47A
        56AB683FEDE9E6FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Layout = blGlyphTop
      ParentShowHint = False
      ShowHint = True
      Spacing = 0
      OnClick = SpeedButton2Click
    end
    object btOc: TSpeedButton
      Left = 600
      Top = 3
      Width = 63
      Height = 50
      Hint = 'Devolu��o'
      Caption = 'Ajuste'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C0000EB0A0000EB0A00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCF9F9F9F7F7F7F5F5F5F2F2
        F2F0F0F0EEEEEEEDEDEDEDEDEDEDEDEDEFEFEFF0F0F0F3F3F3F5F5F5F8F8F8FB
        FBFBFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFBFBFBF6F6F6F2F2F2ECECECE9E9E9E5E5E5E2E2E2DFDF
        DFDDDDDDDBDBDBDADADADADADADADADADCDCDCDDDDDDDFDFDFE2E2E2E5E5E5E9
        E9E9EEEEEEF3F3F3F8F8F8FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFCFCFCF9F9F9F0F0F0EAEAEAE5E5E5E0E0E0DBDBDBD7D7D7D3D3D3D0D0
        D0CCCCCCCECECED2D2D2D2D2D2D1D1D1D3D3D3D5D5D5D9D9D9DEDEDEDFDFDFDD
        DDDDE0E0E0E5E5E5EAEAEAF0F0F0F6F6F6FDFDFDFFFFFFFFFFFFFFFFFFFFFFFF
        FBFBFBF4F3F3ECEAE9EDEDEDE1E1E1DCDCDCD6D6D6D1D1D1CCCCCCC5C5C5C8C8
        C8CBCBCBB8B5B5B4A8A0AF9E90AF9681B1937CB2937BB69E8BBCADA2C6BFB9DE
        DEDEDFDFDFDCDCDCE2E2E2E8E8E8EEEEEEF4F4F4FCFCFCFFFFFFFFFFFFFEFEFE
        F7F7F7F1F1F0C09B7EE0DBD7E6E6E6D7D7D7D1D1D1CCCCCCCECECEC9C9C9B2A7
        9FAA8A71AF8360B98253BF895AC28C5DC38D5CC38C59BE8654BA7F4CB37D4EB4
        9073CCC2BBE7E7E7E0E0E0E4E4E4EAEAEAF1F1F1F7F7F7FFFFFFFFFFFFFFFFFF
        F7F7F7F9F9F9B0784EBC9576E6E6E6DBDBDBD6D6D6DADADABCAFA6B18868B885
        5ACC9A6DD09E70D09E6ECF9B6ACD9765CC9662CB9460CB9460CB9460C9915CC3
        8953B27949C4AA96EBEBEBE6E6E6EBEBEBF1F1F1F8F8F8FFFFFFFFFFFFFFFFFF
        FCFCFCFEFEFEC19673D3AE8EBE9C82F5F5F5D6D2D2B69377BC895FD0A279D5A8
        7CCE9C6CCB9664CA9562CA9462C8925FC8915EC8915DC8905CC88F5AC78F59C8
        905AC99159B57844C6AB96F7F7F7F2F2F2F6F6F6FCFCFCFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFC19571ECD6C1C99E7BBF9B7FBC9271CEA37CD7AC82D19F70CB97
        66CC9766CB9766CA9562CA9562CD9968CF9C6BCE9B6BCC9967CB9764CB9562CA
        935EC88F5AC98F59B27542DDCDC2FFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFC39776E4C9AFE2C6AACDA483DCBA9DE1C0A1CF9F71CB9867CC98
        68CB9766CF9C6CD2A274CE9F72C59365BB8558B57C4CB57A49B57B49B57C4CB8
        7D4BC18752CA925CC58A55BB8B64FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFC39775E4C7ADDCB998E6C9AEDFBD9DDBB795DAB592D1A377CE9C
        6CD5A87ECC9E75BC885CBF9371CFB098DBCBBFE5DAD0DCBAA0CC9366D5AA86D0
        A988B98459B57946CA925CB87C4BE9DACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFC39875E4C9AFDBB794DBB896DCB897DBB795DBB795E2C4A6D8B3
        92BC885CC7A082E2D1C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF9F9DBAD88ED
        D9C6F6EBE0D0AC8FB37743BE8450D2B39BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFC29876E4C9B0DBB795DCB998DCB998DDBA99E0C2A5D1AD8EC397
        76E4D2C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2E1D4E4
        C6AAF7EFE8FFFDF9D4B398B27744CCA78AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFC39977E5CBB1DBB795DCB998DCB897E0C1A3DDC0A6B38158FDFD
        FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF6F2ED
        D8C6F7EFE8FCF7F4FDF9F7B17A4EC39977FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFC39977E5CAB1DBB795DCB997DCB997DCB897E2C5A9CDA585D5B8
        A2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFBFBF5
        EAE1FAF5F0FDFBF9FFFFFFC49B7BBF9371FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFC49A79EBD4BFE2C2A4E2C4A6E2C3A5E2C2A4E2C3A3EBD4BCC9A1
        7FE0CBBBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFC
        F9F6FEFCFBFFFFFFFFFFFFD0B097C59D7EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFB8865ECFAA8BD0AA8CCFAA8BCFAA8BCFAA8ACFA98AD1AD8ECFAA
        8AAD7345E2CEC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFF1E8E1E6D5C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFE7D6C9DEC8B7DEC9B8DEC8B7DDC7B6DCC6B4DCC4B2DBC3B1DCC4
        B2DDC5B3E7D7CAFFFFFFFFFFFFF5EEE9C19675C49A79C59C7CC59C7DC59D7DC5
        9E7EC59E7FC69E7FC69E7FC69F80E2CEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFCCA98DF6EEE8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFCD2B59DBF8F68DEBEA0D7B290D7B290D7
        B190D7B190D7B290D9B594D1AC8BCAA58AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFBF8F6AF774DD2B095E7D3C3EAD8CAE5D0C0EBDDD1FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD2B39BC79B75DAB490D0A175D0
        A074CF9E71CE9C6ECE9D6ED3AD8BCEAC93FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFF6EFEAA96E40BF8F69D9B89FDCBFA7C9A181DCC4B1FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCEAD93CCA381D8B18BD0
        A377D0A276CF9F73D0A073D3AC8BCEAC92FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFF7F1EDB5835BB1794EC5926CCCA07DBB865DD6BBA6FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6BAA5BB8961DDBB9BD1
        A57AD0A276D0A175D0A073D2AB89CDAC92FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFBF9F9C39976C59A78AA6B3ABA8156B87F53C39A7AFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6D7CAC59D7DC69B75DBB595D4A981D2
        A57CD1A378D0A175D0A074D1AB88CDAC92FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFC59D7DE2C9B2BF916CA46432AB6D3DAA6C3DD8BEAAFDFBFBFFFF
        FFFFFFFFFFFFFFF7F5F5E5D3C6C7A182C0926BD4AF8DDCB894D4A87FD3A77ED2
        A57BD1A478D0A176D1A174D1A986CDAB91FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFD8BDA9D3B093F1E1D0CAA382B17A4FA36232A1602EB7845DD4B7
        A0D5BAA4D0B097C89F7FC89F7DDEC0A5E6CBB2E2C3A7DBB694D5AB84D3A67CD3
        A77DDAB693DBB693D2A275D1A984CEAC91FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF3EBE7BD8F69EAD4C0F0DDCCE6CEBADABBA1D2AF91CFAA8ACEA8
        89D3AF91DCBDA2E5CBB4EAD2BCE4C9B0E2C4A9E2C5AAE2C4A9DEBD9FDFBD9DDD
        B99AC08F67C1936CDCB692D1A985CCAA90FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFDBC3B0C79C7AEEDAC7ECD7C5ECD7C4ECD6C2EAD4C0EAD4
        BFE9D3BDE8D0B8E5CBB3E4C8AFE3C7ADE2C5ABE2C4A9E4C7ADE7CFB6D7B599BF
        8E6BDEC8B7D4B7A1C59872D7B292CDAB8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFD1B29BC89D7BE9D4C1EDDBC8E9D2BCE7CFB9E6CE
        B7E5CDB5E5CCB3E4CAB0E4C9AFE4C9B0E8D0B8E7CDB6DABA9DC2966FC7A082F1
        E8E4FFFFFFFFFFFFD0B198BD8B62CDAA8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCC4B1C49976D3B092E6CEB8EAD4C0EAD3
        BDE9D1BCE8D0BAE8CFBAE8CFB9E1C5ABCFAA89C1936DC8A183E5D3C5FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFC09472C59E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3EBE9D8BCA7C39875C69D7BCCA4
        85CEA787CCA685C8A07EC19470C59B7AD9BEAAEDE2DCFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFAF6F3E9DACEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F3F3EADB
        D0E5D4C6E8D8CCEEE3DBFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Layout = blGlyphTop
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Spacing = 0
      OnClick = btOcClick
    end
    object SpeedButton3: TSpeedButton
      Left = 536
      Top = 4
      Width = 63
      Height = 50
      Hint = 'Devolu��o'
      Caption = 'Devolu��o'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Glyph.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        08000000000040020000D30E0000D30E000000010000000100008C3100009431
        00009C3100009C390000AD420000AD4A0000CE630000CE6B0000D66B0000D673
        0000DE730000DE7B0000E77B0000E7840000EF840000EF8C0000F78C0000F794
        0000FF940000FF9C0000522108007B310800A5390800A5420800B5520800B55A
        0800D6730800FF9C080063311000BD5A1000D6731000FF9C1000FFA51000A54A
        1800D66B1800CE731800D67B1800FFA5180073392100D67B2100FFA52100FFAD
        21005A392900633929007B422900844A29008C4A29008C522900945229009C5A
        2900D6842900FFA52900FFAD29006B423100A5633100D6843100F7A53100FFA5
        3100FFAD3100AD633900BD6B3900D6843900DE8C3900E7943900EF9C3900FFB5
        3900735242008C5A4200D6844200D68C4200F7A54200FFB54200B56B4A00FFBD
        4A00A56B5200BD735200BD7B5200FFBD5200A5735A00B5735A00BD7B5A00C684
        5A00E7A55A00FFBD5A00BD7B6300BD846300C6846300C68C6300CE8C63009C7B
        6B00B5846B00C6846B00C68C6B00CE946B00D6946B00DE9C6B008C7B7300C68C
        7300D69C7300DEA57300CE8C7B00C6947B00CE947B00D6A57B00DEAD7B00E7AD
        7B00FFCE7B00AD948400BD948400C6948400CE9C84009C948C00A5948C00B594
        8C00C69C8C00CE9C8C00D6A58C00E7B58C00FFCE8C007B8494009C949400D6A5
        9400DEA59400D6AD9400E7B59400E7BD9400EFBD9400FFCE940021639C008494
        9C00D6AD9C00DEAD9C00D6B59C00DEB59C00FFD69C006384A500C6ADA500DEB5
        A500DEBDA500E7BDA500E7C6A500EFC6A500EFCEA500F7CEA500F7D6A5002973
        AD00297BAD00638CAD007394AD00DEBDAD00E7C6AD00F7CEAD00FFD6AD007B9C
        B500849CB500DEC6B500E7C6B500F7D6B500D6C6BD00DEC6BD00E7C6BD00E7CE
        BD00EFCEBD00F7D6BD00FFDEBD00E7CEC600E7D6C600EFD6C600F7D6C600F7DE
        C600FFDEC60084ADCE00D6CECE00EFD6CE00EFDECE00FFE7CE00E7D6D600EFDE
        D600F7DED600EFDEDE00EFE7DE00F7E7DE00F7E7E700F7EFE700FFEFE700FFF7
        E700F7EFEF00F7F7EF00FFF7EF00FFF7F700FFFFF700FF00FF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BFBFBFBFBFBF
        BF714F4E5970BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF6B0503020200152C
        426071BFBFBFBFBFBFBFBFBFBFBFBF710508033BA56E4C210200152C426FBFBF
        BFBFBFBFBFBF71180A09174BAEA6A19B89614821022671BFBFBFBFBFBF71190C
        0B091750B1ADA5A09B8A847B6E5A4BBFBFBFBFBFBF1D0D0D0B0A1754B4B1A6A1
        89848282746E4BBFBFBFBFBFBF060E0D0C0B1755B4B1AD73747B6E6E7B744BBF
        BFBFBFBFBF070F0E0D0C175CB7B4B0929180876182794BBFBFBFBFBFBF07100F
        0D0D0343BAB6B1ADA59E9A88847B4BBFBFBFBFBFBF07110F0E0D012ABBB7B4B1
        ADA59B9589824BBFBFBFBFBFBF0811100F0E0135BABAB6B3AEA6A19B95894BBF
        BFBFBFBFBF1A1211100F3C977D67757D8D8B959B95894BBFBFBFBFBFBF1A1B12
        1138B8BCA9A99D8D8F51141C2B4A71BFBFBFBFBFBF1E1F131238B8C0B8A3A3A3
        795B65573C2DBFBFBFBFBFBFBF24251B121145B7BCA7A8826E7B7B74572DBFBF
        BFBFBFBFBF2733251B123DA78C527479828482795D2FBFBFBFBFBFBFBF273A28
        1F133EB6B19E8177786C82825D2FBFBFBFBFBFBFBF324134251B3FB7B4ACAB99
        949389826230BFBFBFBFBFBFBF37473A332540BAB6B4AEA6A19B95896330BFBF
        BFBFBFBFBF3D4D473A2846BBB7B4B1ADA5A09B896831BFBFBFBFBFBFBF445349
        413A3376768F8E8EA1969C956836BFBFBFBFBFBFBF456A8690AEB1ADA5968B85
        685F44232255BFBFBFBFBFBFBF746E6E6E6E6D6161616561617271BFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF}
      Layout = blGlyphTop
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton3Click
    end
    object SpeedButton4: TSpeedButton
      Left = 408
      Top = 3
      Width = 121
      Height = 50
      Hint = 'Devolu��o'
      Caption = 'Copiar Requisi��o'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Glyph.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        08000000000040020000D30E0000D30E000000010000000100008C3100009431
        00009C3100009C390000AD420000AD4A0000CE630000CE6B0000D66B0000D673
        0000DE730000DE7B0000E77B0000E7840000EF840000EF8C0000F78C0000F794
        0000FF940000FF9C0000522108007B310800A5390800A5420800B5520800B55A
        0800D6730800FF9C080063311000BD5A1000D6731000FF9C1000FFA51000A54A
        1800D66B1800CE731800D67B1800FFA5180073392100D67B2100FFA52100FFAD
        21005A392900633929007B422900844A29008C4A29008C522900945229009C5A
        2900D6842900FFA52900FFAD29006B423100A5633100D6843100F7A53100FFA5
        3100FFAD3100AD633900BD6B3900D6843900DE8C3900E7943900EF9C3900FFB5
        3900735242008C5A4200D6844200D68C4200F7A54200FFB54200B56B4A00FFBD
        4A00A56B5200BD735200BD7B5200FFBD5200A5735A00B5735A00BD7B5A00C684
        5A00E7A55A00FFBD5A00BD7B6300BD846300C6846300C68C6300CE8C63009C7B
        6B00B5846B00C6846B00C68C6B00CE946B00D6946B00DE9C6B008C7B7300C68C
        7300D69C7300DEA57300CE8C7B00C6947B00CE947B00D6A57B00DEAD7B00E7AD
        7B00FFCE7B00AD948400BD948400C6948400CE9C84009C948C00A5948C00B594
        8C00C69C8C00CE9C8C00D6A58C00E7B58C00FFCE8C007B8494009C949400D6A5
        9400DEA59400D6AD9400E7B59400E7BD9400EFBD9400FFCE940021639C008494
        9C00D6AD9C00DEAD9C00D6B59C00DEB59C00FFD69C006384A500C6ADA500DEB5
        A500DEBDA500E7BDA500E7C6A500EFC6A500EFCEA500F7CEA500F7D6A5002973
        AD00297BAD00638CAD007394AD00DEBDAD00E7C6AD00F7CEAD00FFD6AD007B9C
        B500849CB500DEC6B500E7C6B500F7D6B500D6C6BD00DEC6BD00E7C6BD00E7CE
        BD00EFCEBD00F7D6BD00FFDEBD00E7CEC600E7D6C600EFD6C600F7D6C600F7DE
        C600FFDEC60084ADCE00D6CECE00EFD6CE00EFDECE00FFE7CE00E7D6D600EFDE
        D600F7DED600EFDEDE00EFE7DE00F7E7DE00F7E7E700F7EFE700FFEFE700FFF7
        E700F7EFEF00F7F7EF00FFF7EF00FFF7F700FFFFF700FF00FF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BFBFBFBFBFBF
        BF714F4E5970BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF6B0503020200152C
        426071BFBFBFBFBFBFBFBFBFBFBFBF710508033BA56E4C210200152C426FBFBF
        BFBFBFBFBFBF71180A09174BAEA6A19B89614821022671BFBFBFBFBFBF71190C
        0B091750B1ADA5A09B8A847B6E5A4BBFBFBFBFBFBF1D0D0D0B0A1754B4B1A6A1
        89848282746E4BBFBFBFBFBFBF060E0D0C0B1755B4B1AD73747B6E6E7B744BBF
        BFBFBFBFBF070F0E0D0C175CB7B4B0929180876182794BBFBFBFBFBFBF07100F
        0D0D0343BAB6B1ADA59E9A88847B4BBFBFBFBFBFBF07110F0E0D012ABBB7B4B1
        ADA59B9589824BBFBFBFBFBFBF0811100F0E0135BABAB6B3AEA6A19B95894BBF
        BFBFBFBFBF1A1211100F3C977D67757D8D8B959B95894BBFBFBFBFBFBF1A1B12
        1138B8BCA9A99D8D8F51141C2B4A71BFBFBFBFBFBF1E1F131238B8C0B8A3A3A3
        795B65573C2DBFBFBFBFBFBFBF24251B121145B7BCA7A8826E7B7B74572DBFBF
        BFBFBFBFBF2733251B123DA78C527479828482795D2FBFBFBFBFBFBFBF273A28
        1F133EB6B19E8177786C82825D2FBFBFBFBFBFBFBF324134251B3FB7B4ACAB99
        949389826230BFBFBFBFBFBFBF37473A332540BAB6B4AEA6A19B95896330BFBF
        BFBFBFBFBF3D4D473A2846BBB7B4B1ADA5A09B896831BFBFBFBFBFBFBF445349
        413A3376768F8E8EA1969C956836BFBFBFBFBFBFBF456A8690AEB1ADA5968B85
        685F44232255BFBFBFBFBFBFBF746E6E6E6E6D6161616561617271BFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF}
      Layout = blGlyphTop
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton4Click
    end
    object SpeedButton6: TSpeedButton
      Left = 728
      Top = 3
      Width = 85
      Height = 50
      Hint = 'Relat�rio'
      Caption = 'Confer�ncia'
      Flat = True
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FF92635DA46769A46769A46769A46769A46769A46769A46769A46769A467
        69A46769A46769A46769A46769A46769A46769A46769A46769A46769FF00FFFF
        00FFFF00FFFF00FFFF00FF93655EEFD3B4F6DAB6F3D5ADF2D1A5F0CE9EEFCB97
        EFC791EEC589EBC182EBC080EBC080EBC080EBC080EBC080EBC080EDC180EABF
        7F9F6F60FF00FFFF00FFFF00FFFF00FFFF00FF93655FEED4B8F4DABCF2D4B1F0
        D1AAEFCEA3EECB9CEDC796EDC58FEBC188EABF82E9BD7FE9BD7FE9BD7FE9BD7F
        E9BD7FEABF7FE7BC7E9F6F60FF00FFFF00FFFF00FFFF00FFFF00FF93655FEED7
        C0F6E0C1F2D9B8F2D4B1F0D1AAEFCFA4EECB9CEDC796EDC58FEBC189EABF82E9
        BD7FE9BD7FE9BD7FE9BD7FEABF7FE7BC7E9F6F60FF00FFFF00FFFF00FFFF00FF
        FF00FF93655FEFDAC5F7E2C7F3DCBDF2D8B7F2D4B0F0D1AAEFCEA3EECB9CEDC7
        96EDC58FEBC189E9BD81E9BD7FE9BD7FE9BD7FEABF7FE7BC7E9F6F60FF00FFFF
        00FFFF00FFFF00FFFF00FF93655FF0DECCFAE7D0F6E0C6F3DCBDF2D8B7F2D4B1
        F0D1AAEFCEA3EECB9CEDC796EDC590EBC189EABF82E9BD7FE9BD7FEABF7FE7BC
        7E9F6F60FF00FFFF00FFFF00FFFF00FFFF00FF956660F2E3D4FAEAD7F6E3CEF4
        DEC5F3DCBDF2D8B8F2D4B1F0D1AAEFCEA3EECB9CEDC797EDC590EBC189E9BD81
        E9BD7FEABF7FE7BC7E9F6F60FF00FFFF00FFFF00FFFF00FFFF00FF986963F2E6
        DAFAEEDE17161340382E40382E40382E40382E40382EEFD0A7EFCEA3EECB9CED
        C796EDC58FEBC189E9BD81EABF7FE7BC7E9F6F60FF00FFFF00FFFF00FFFF00FF
        FF00FF9E6E64F4EAE1FBF2E70D0D0CCCC1BF6D7FE2052BFC23359A3B352DF2D4
        B0F0D1AAEFCEA3EDCB9CEDC796EDC58FEBC188EABF82E7BC7E9F6F60FF00FFFF
        00FFFF00FFFF00FFFF00FFA37266F6EEE9FBF3EB161616596BC5294CF38B96DE
        0725E02F2E34F3D8B6F2D4B0F0D1AAEFCEA3EECB9CEDC796EBC48EEBC288E7BC
        809F6F60FF00FFFF00FFFF00FFFF00FFFF00FFA77568F8F3F0FEFBF60B0A0A78
        7B9CB4B0BCCCC2BC2F46BD1530C4F0D9BDF2D8B7F2D4B1F0D1A9EFCEA3EDCB9C
        EDC796EDC58FE9BF879F6F62FF00FFFF00FFFF00FFFF00FFFF00FFAC7969FAF6
        F4FFFFFE2E2D2C2A28282C29282927242B2B310F2AC95C73E3696969F2D8B7F2
        D4B0F0D1AAEFCEA3EECB9CEEC996EAC18EA07063FF00FFFF00FFFF00FFFF00FF
        FF00FFB17E6BFAF6F4FFFFFFFAF8F6F4EEE7F2EAE1F0E6DCF2E3D4D0C7C72C4E
        F0334FEA828AD4F3D8B6F2D4B0F0D1A9EFCEA1EECB9CEBC592A07264FF00FFFF
        00FFFF00FFFF00FFFF00FFB6816CFAF6F4FFFFFFFFFFFFFFFCFBFEF7F2FBF3EB
        F8EEE3F8EBDCEFE1D37B8AE1475FE5F3DCBDF3D8B6F2D4B0F0D1A9F0CFA3EDC9
        999D7065FF00FFFF00FFFF00FFFF00FFFF00FFBB846EFAF6F4FFFFFF69696969
        6969696969696969696969696969F8EADAF7E6D3F6E2CBF6DEC4F4DABCF3D8B6
        F2D4B0EFD0A7CEB491896A63FF00FFFF00FFFF00FFFF00FFFF00FFC0896FFBF7
        F4FFFFFF0505057070709A9CA16B759841465F2D2B2AF8EDE1F8EBDAF7E6D3F6
        E2CBF6DEC4F3DCBDE5CEAFC4B096A1927F806762FF00FFFF00FFFF00FFFF00FF
        FF00FFC58C70FBF7F4FFFFFF0F0F0FE5E6EABAC5F41841FF3B4EA741403EFAF2
        E9F8EEE2F8EADAF8E7D4FAE7D0E0D0BAB8AB9AA79C8BA49786846964FF00FFFF
        00FFFF00FFFF00FFFF00FFCB9173FBF7F4FFFFFF161618657AD51F47FF6683FF
        0723D7353539FCF7F0FBF2E7FBF2E5E9D3C49F675B98665B96655B96655B9665
        5B986859FF00FFFF00FFFF00FFFF00FFFF00FFCF9674FBF7F6FFFFFF0F0F0F83
        8EB6C5CBE2FAFAFC3350DC1C35B1FFFCFAFCF7F0FEF8EEDAC0B69F675BDAA16B
        DD984FE2903AEA8923A5686BFF00FFFF00FFFF00FFFF00FFFF00FFD49875FCF8
        F6FFFFFF1818182727272D2D2D2828281F24380524E0839DFFFFFCFBFFFEF7DD
        C4BC9F675BEAB474EFA952F6A036A5686BFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFD49875FCF8F6FFFFFFEDEDEDE3E3E3E2E2E2E2E2E2E9E9E9BBC2E11E44
        FF506EFCB4C1FEDDC7C29F675BEAB273EFA952A5686BFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFD49875FFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFE1E7FF5270FC2B4DFBE2D0CE9F675BEDB572A5686BFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD39570E6C2ACE7C6B0E7C6B0E6
        C4B0E3C2B0E1C0AFDEBDADDCBCACD8BAACD5B7ABD3B5ABC099909F675BA5686B
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD1926DCF8E
        68CF8E67CF8E67CF8C67CA8966C48464BF8063BA7D60B5795FAF745EAA705CA4
        6B5BA5686BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      Layout = blGlyphTop
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton6Click
    end
    object Fonte: TDBNavigator
      Left = 906
      Top = 3
      Width = 208
      Height = 50
      DataSource = DS_REQ
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbPost, nbCancel]
      Hints.Strings = (
        'Primeiro'
        'Anterior'
        'Pr�ximo'
        '�ltimo'
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
      TabOrder = 1
      Visible = False
    end
    object pnl1: TPanel
      Left = 4
      Top = -1
      Width = 388
      Height = 55
      BevelOuter = bvNone
      Color = clWhite
      TabOrder = 0
      object btnFirst: TSpeedButton
        Left = 0
        Top = 0
        Width = 49
        Height = 55
        Caption = 'Primeiro'
        Flat = True
        Glyph.Data = {
          76060000424D7606000000000000360400002800000018000000180000000100
          08000000000040020000430B0000430B000000010000000100008C5210009C52
          1000A55A1800AD5A1800B5631800BD6B1800CE6B1800D6731800DE732100EF7B
          2100EF7B2900EF842900F7843100F78C3900F79C4A00F79C5200F7A55A00FFAD
          6300FFAD6B00FFB57300FFB57B00FFBD8400FFCE8C00FFCE9C00FFF7DE00FF00
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
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00191919191919
          1919191919191919191919191919191919191919191919191919191919191919
          1919191919191919191919191919191919191919191919191919191919191919
          1919191912040002020202020201010201020100011219191919191906060708
          080808080807080707060504030219191919191905090B0C0C0C0C0C0A0B0B0A
          090908060500191919191919070A0B0D0D0E0D0D0D0B0B0A0A09070805001919
          19191919080B0D15150E0D0D0D0C1518180A09080600191919191919090D0E1A
          150E0E0D0D15181A180908090602191919191919090D0F1A150E0E0E15181A1A
          1809090907021919191919190A0F0F1A150F0E15181A1A1A1809080A08031919
          191919190C100F1A150F15181A1A1A1A18090A0B08021919191919190E0F101A
          1515181A1A1A1A1A180B0A0A09031919191919190D10101A150E15181A1A1A1A
          180A080A09031919191919190E11101A150F0E15181A1A1A180A0A0B0A021919
          191919190E12131A150F0E0F15181A1A180B0C0B09031919191919190F14131A
          15100F0E0D15181A180A0A0B0A0419191919191910161515151110100F0E1518
          180D0D0C09031919191919191017171513131211101010100F0E0E0D0A021919
          191919191217171513111110101010100F0E0D0C08041919191919191212100F
          0E0E0D0D0D0E0D0B0C0C09090712191919191919191919191919191919191919
          1919191919191919191919191919191919191919191919191919191919191919
          1919191919191919191919191919191919191919191919191919}
        Layout = blGlyphTop
        OnClick = btnFirstClick
      end
      object btnPrior: TSpeedButton
        Left = 48
        Top = 0
        Width = 49
        Height = 55
        Caption = 'Anterior'
        Flat = True
        Glyph.Data = {
          76060000424D7606000000000000360400002800000018000000180000000100
          08000000000040020000330B0000330B0000000100000001000021632100216B
          210029732900297B29002984290031843100318C3100319C310039A539004AAD
          4A0052AD52005AB55A0063B563006BBD6B0073BD73007BBD7B0084CE84008CCE
          8C009CD69C00EFF7EF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
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
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00141414141414
          1414141414141414141414141414141414141414141414141414141414141414
          1414141414141414141414141414141414141414141414141414141414141414
          141414140E020001010101010100000100010000000E14141414141405050607
          0707070707060606060504030201141414141414040808090909090908080808
          0808070504001414141414140608080A0A0B0A0A090808080808060704001414
          141414140608090B0B0B0A090911131308080807050014141414141408090B0B
          0B0B0B0A11131513080807080501141414141414080A0B0B0B0B0B1113151513
          080808080601141414141414080B0B0B0B0B1113151515130808070806021414
          14141414090C0B0C0B111315151515130808080806011414141414140B0B0C0C
          11131515151515130808080808021414141414140A0D0C0C0B11131515151513
          0808060808021414141414140B0D0D0D0C0B1113151515130808080808011414
          141414140B0E0F0D0D0B0B11131515130808090808021414141414140B0F0F0E
          0D0C0B0B111315130908080808021414141414140C11100F0E0D0D0C0B111313
          0B09090908021414141414140D1212100F0F0E0D0D0D0D0C0B0B0B0908011414
          141414140E1212100F0D0D0D0D0D0D0C0B0B0A0907031414141414140E0E0D0B
          0B0B0A0A0A0B090809090808060E141414141414141414141414141414141414
          1414141414141414141414141414141414141414141414141414141414141414
          1414141414141414141414141414141414141414141414141414}
        Layout = blGlyphTop
        OnClick = btnPriorClick
      end
      object btnNext: TSpeedButton
        Left = 96
        Top = 0
        Width = 49
        Height = 55
        Caption = 'Pr�ximo'
        Flat = True
        Glyph.Data = {
          76060000424D7606000000000000360400002800000018000000180000000100
          08000000000040020000430B0000430B0000000100000001000021632100216B
          210029732900297B29002984290031843100318C3100319C310039A539004AAD
          4A0052AD52005AB55A0063B563006BBD6B0073BD73007BBD7B0084CE84008CCE
          8C009CD69C00EFF7EF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
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
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00141414141414
          1414141414141414141414141414141414141414141414141414141414141414
          1414141414141414141414141414141414141414141414141414141414141414
          141414140E020001010101010100000100010000000E14141414141405050607
          0707070707060606060504030201141414141414040808090909090908080808
          0808070504001414141414140608080A0A0B0A0A090808080808060704001414
          141414140608090B0B1313110909080808080807050014141414141408090B0B
          0B13151311090808080807080501141414141414080A0B0B0B13151513110908
          080808080601141414141414080B0B0B0B131515151311080808070806021414
          14141414090C0B0C0B131515151513110808080806011414141414140B0B0C0C
          0C131515151515131108080808021414141414140A0D0C0C0B13151515151311
          0808060808021414141414140B0D0D0D0C131515151311080808080808011414
          141414140B0E0F0D0D131515131109080808090808021414141414140B0F0F0E
          0D131513110909090908080808021414141414140C11100F0E1313110B0B0B0A
          0B09090908021414141414140D1212100F0F0E0D0D0D0D0C0B0B0B0908011414
          141414140E1212100F0D0D0D0D0D0D0C0B0B0A0907031414141414140E0E0D0B
          0B0B0A0A0A0B090809090808060E141414141414141414141414141414141414
          1414141414141414141414141414141414141414141414141414141414141414
          1414141414141414141414141414141414141414141414141414}
        Layout = blGlyphTop
        OnClick = btnNextClick
      end
      object btnLast: TSpeedButton
        Left = 144
        Top = 0
        Width = 49
        Height = 55
        Caption = '�ltimo'
        Flat = True
        Glyph.Data = {
          76060000424D7606000000000000360400002800000018000000180000000100
          08000000000040020000430B0000430B000000010000000100008C5210009C52
          1000A55A1800AD5A1800B5631800BD6B1800CE6B1800D6731800DE732100EF7B
          2100EF7B2900EF842900F7843100F78C3900F79C4A00F79C5200F7A55A00FFAD
          6300FFAD6B00FFB57300FFB57B00FFBD8400FFCE8C00FFCE9C00FFF7DE00FF00
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
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00191919191919
          1919191919191919191919191919191919191919191919191919191919191919
          1919191919191919191919191919191919191919191919191919191919191919
          1919191912040002020202020201010201020100011219191919191906060708
          080808080807080707060504030219191919191905090B0C0C0C0C0C0A0B0B0A
          090908060500191919191919070A0B0D0D0E0D0D0D0B0B0A0A09070805001919
          19191919080B0D0E0E1818150D0C0B0A0A1515080600191919191919090D0E0E
          0E181A18150C0B0B0A151A090602191919191919090D0F0F0F181A1A18150C0B
          0A151A0907021919191919190A0F0F0F0F181A1A1A18150B0A151A0A08031919
          191919190C100F100F181A1A1A1A18150A151A0B08021919191919190E0F1010
          10181A1A1A1A1A1815151A0A09031919191919190D1010100F181A1A1A1A1815
          0A151A0A09031919191919190E11101010181A1A1A18150A0A151A0B0A021919
          191919190E12131110181A1A18150C0B0A151A0B09031919191919190F141312
          10181A18150D0D0C0C151A0B0A0419191919191910161513121818150F0E0E0D
          0E15150C09031919191919191017171513131211101010100F0E0E0D0A021919
          191919191217171513111110101010100F0E0D0C08041919191919191212100F
          0E0E0D0D0D0E0D0B0C0C09090712191919191919191919191919191919191919
          1919191919191919191919191919191919191919191919191919191919191919
          1919191919191919191919191919191919191919191919191919}
        Layout = blGlyphTop
        OnClick = btnLastClick
      end
      object btnAdd: TSpeedButton
        Left = 192
        Top = 0
        Width = 49
        Height = 55
        Caption = 'Incluir'
        Flat = True
        Glyph.Data = {
          360C0000424D360C000000000000360000002800000020000000200000000100
          180000000000000C0000120B0000120B00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBEDED
          EDD7D7D7CCCCCCD4D4D4E5E5E5F3F3F3FBFBFBFEFEFEFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAEAEAEAD08E
          60DB691DC37A4AB0A9A3C4C4C4D5D5D5E7E7E7F4F4F4FCFCFCFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAE3DEDBD6874CE487
          39F3B26BE7711DD8641ABE7C52B1A9A4C7C7C7D8D8D8E9E9E9F5F5F5FDFDFDFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF8F8F8E1DEDADB8543E58735FDB7
          66FEE5B2FE9A3DF58226E16D1FD36221B68264B5B2B0C8C8C8DADADAEBEBEBF7
          F7F7FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF7F7F7DEDBD7DB8843E98C38FDB461FEB9
          68FA9B46F5913DFB9E46FE9E40F58D35DF6D22D05E1FB58063BDBDBDCBCBCBDD
          DDDDEDEDEDF9F9F9FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFEFEFEF7F7F7DBCCBEE38632EF9F4DFDC172FEC172FDA9
          52F79945F38E3DEF8536F28C3AFBA14AFEAD55F09341D8631CC75F26AF8A76BF
          BFBFCDCDCDE0E0E0F0F0F0F9F9F9FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFDFDFDF4F4F4D9CBBDE58934F0A552FEC87CFEC87CFEB760FDA7
          50F09745ED8D3EF08838EC7E31E7742AED7F30FB9B41FEB965ED974BD5611CC5
          5B25AD968CC1C1C1D0D0D0E1E1E1F0F0F0FAFAFAFEFEFEFFFFFFFFFFFFFFFFFF
          FFFFFFFDFDFDF3F3F3D7C4B0E88F37F2A24AFED48DFECB80FEBE6CEFB877DBBF
          A5CB9D72BE8453BB7239C36B2AC96827D16423D6611FE97022FA9E48FECC80E9
          9951D15616BE6339AD978CC2C2C2D1D1D1E4E4E4F3F3F3FBFBFBFFFFFFFFFFFF
          FDFDFDF2F2F2D9BB9AEF9230F8C579FED895FED28CFEC678FEC170DEC8AEFDFD
          FDFDFDFDEFEAE9E1D9D6D5C2B9C6A189B77A55B26639AD5321B44813C85918E4
          A762F0D297E59653CE5315BB6036AFA6A3C4C4C4D6D6D6EBEBEBFFFFFFFCFCFC
          F0F0F0D7BA99F29934FAC576FEE2A6FED692FECF84FEC97CEFBE80EDE9E7FAF5
          F5F8F3F3F7F2F2F7F2F2F8F3F3F8F5F5FBFAFAECE4E1DFD1CED2BCB7BF8E76AE
          6646B46837E5A965FBEFBCE49A5AC9470DB56A4BB2A9A6D7D7D7FCFCFCEEEEEE
          DDB585F5A33FFACC7DFEEAB1FEDF9FFED692FED188FECC7FDEC5ADFBF8F8F8F3
          F3F7F2F2F5EFEFF5EDEDF3ECECF2EAEAF0E7E7F0E5E5F0E7E7F2EAEAF5EFEFE7
          D8D5B9582DCB3D09DB5716F7B870F8E2B0D87436BA5D36D1D1D1F4F4F4E4B474
          F8A941FDE5A5FEF2BFFEE7ABFEDF9FFED995FED48CEDC38AEDE5E4F8F3F3F7F0
          F0F5EFEFF3EDEDF3ECECF2E9E9F0E7E7EFE5E5EFE4E4EDE1E1ECDFDFF0E5E5BE
          7D60CC450ECB3F0AC83707C33104D55010ED964BBF6139DDDDDDF3C580FBB044
          FDEDAEFEFACBFEEFB7FEE9ADFEE2A3FEDC9AFED690DCC2ABFAF7F7F7F0F0F5EF
          EFF3EDEDF3EAEAF2E9E9EADFDFE7DCDCE7DBDBE5D8D8E4D6D6EDE1E1CEA99DC9
          5017D14910CC410BC83908C53305D55515CC5115C98466F1F1F1FDB040FEF3BF
          FEFED5FEF8C6FEF2BBFEECB1FEE5A7FEDF9EEDC993ECE2DFF7F0F0F5EFEFF3EC
          ECF2EAEAF2E9E997A9D454608CBEB2BCD1BFBFCFBCBCCFBEBEC9B2AEB4582BD2
          5115D24B11CE430CC93C09D64D0CCC4C0FCCA28EF3F3F3FDFDFDFEB241FEEAAB
          FEFED1FEFBC9FEF5BFFEEFB5FEE7ABFEE1A1DBBFAAF8F5F5F5EDEDF3ECECF2EA
          EAF0E7E7F0E5E597AED66D646F435A97BBB0B9CEBBBBD4C3C2A66141BE4E18BC
          4814C14510C8430ED95410CE5111CDA28EF2F2F2FCFCFCFFFFFFFDD79FFBB34B
          FBBF5CFDE7A3FEF7C3FEF0B9FEEAB0ECCE9EEADFDCF3EDEDF3ECECF2E9E9F0E7
          E7EFE5E5EFE4E496B4D9B7CCE1C5E1F75B77B4BEB4BCB08272BC5721C1511ABE
          4A15B94311BE541DBA501AC8A696F0F0F0F8F8F8FBFBFBFDFDFDFFFFFFFFFAF3
          FBCA86FAAA3DFBC368FDE9AAFEEDB4D9BEA9F8F3F3F3EAEAF2E9E9F0E7E7EFE5
          E5EFE2E2EDE1E195BBDCB5DCFBBBE5FE9AD1F25580C1A25833C65A20C2531BC1
          4F17BF5115B8531BBEACA5D9D8D8E2E1E1ECEBEBF5F5F5FAFAFAFFFFFFFFFFFF
          FFFFFFFDF3E6F9C278F8A339E7B16BEADCD9F2EAEAF2E9E9F0E7E7EFE4E4EDE2
          E2EDE1E1ECDFDF95C1E162C6F763D6FE5AD1FE6AC1FE585263CE6123C5581EC3
          5918BB571DC2B0A8DBDADAE0DFDFE1E0E0E0DFDFE0DFDFE9E8E8FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFCE7CCD5AB8EF8F3F3F2E9E9F0E5E5EFE4E4EDE2E2ECE1
          E1ECDEDEEADCDCBCCFDE38C9FB58DFFE4DCEFE56BFFE467FC5E2702AD4631CC1
          6B37CABDB8E0DFDFE4E2E2E3E1E1E3E1E1E1E0E0E1E0E0E1E0E0FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFD6BAB3DBC1B9E9D8D4FBF8F8F7F0F0F3ECECEFE4
          E4EADCDCE9DBDBE7D8D860C8ED50EAFE42C9FE43C2FE48A2F871544AD07639D9
          D5D3F5F5F5F2F1F1E9E7E7E6E4E4E5E3E3E3E1E1E3E1E1E8E7E7FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE4E1DEC8C3D99F70D6A27ED9B5
          A5EAD8D2F3ECEAF3EDEDA9C9DF36DCFD39D4FE34C3FE3FABFE2A62B5B7B4B3DE
          DEDEF8F8F8FFFFFFFFFFFFF7F6F6EBEAEAE6E4E4E6E4E4F8F8F8FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF8F2F6C896ED95
          3BE7913DE19F63DFAA7CD59D7638B0CE2FE4FE2ABFFE2DB2FE3190F87E85A3D0
          D0D0EFEFEFFEFEFEFFFFFFFFFFFFFFFFFFFAFAFAFAFAFAFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF8
          F2F3BE88EC8A2CF29D44FBB8648E9B7A20DFFD21C5FE1EB8FE2C96FE3766BCC2
          C2C2E2E2E2FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFBEFE3EFB279E9842AE9832A1EB2E416D9FE17B4FE1AA3FE1C78F28B
          90A6D3D3D3F2F2F2FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFF8DFC8F5DCC69CCDF50CE4FE0FB9FE0EAEFE1A83FE4A
          72BDC5C5C5E5E5E5FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF12BDF705CCFE08AAFE0C90FE0B
          5CE4A3A5ADD5D5D5F4F4F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7EC3F500DFFE03ADFE03A1FE0E
          74FE4566B1C7C7C7E8E8E8FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFF6FE0FC0F700C8FE009FFE07
          82FE135CDDB2B3B6DDDDDDF7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5EBDF300DBFE00A2FE00
          99FE0F72FE6276B0DFDFDFF7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEECFA00BFF70EC8FE70
          CFFEC9E7FE6C87C4F0F0F0FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5FC2F47FC1F096
          B9E898B0DBF6F6F6FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        Layout = blGlyphTop
        Spacing = 0
        OnClick = btnAddClick
      end
      object btnPost: TSpeedButton
        Left = 242
        Top = 0
        Width = 49
        Height = 55
        Caption = 'Salvar'
        Flat = True
        Glyph.Data = {
          360C0000424D360C000000000000360000002800000020000000200000000100
          180000000000000C0000EB0A0000EB0A00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF642F2F582020541A1A5E2A2A5C27275C27275B26265A25255A24
          24592323592323582222582121572020562020561F1F551E1E551D1D541C1C53
          1C1C531B1B3F04043F04043F0303FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF703E3EA18481825C597E5854B6AAAAB4A7A7B1A3A3AFA0A0AC9D9DAA99
          99A89696A59393A28F8FA08C8C9E89899B8686998383967F7F947C7C9179798F
          75758C72723D16123C1410350D0C3F0303FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF764744B2978D987567947163DACDCDD7C9C9D4C5C5D1C1C1CEBDBDCBB9
          B9C9B5B5C6B1B1C3ADADC0AAAABDA6A6BAA2A2B79F9FB49B9BB29797AF9393AC
          8F8FA98B8B552C1D52281B3D1411400404FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF7A4C49B69C919D7B6D997669DDD2D2D5C3C3D2C0C0CFBCBCCDB8B8CAB4
          B4C7B1B1C4ADADC1A9A9BFA6A6BCA2A2B99E9EB69B9BB39797B19494AE9090AB
          8D8DAC9090582F21562C1E411814400505FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF7F5250B9A196A281739E7C6EE1D7D7C8A8A8C5A5A5C3A3A3C09F9FBD9C
          9CBB9999B89696B69393B39090B18C8CAE8989AB8686A98484A68181A47D7DA1
          7A7AB095955D3325593022441B18410606FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF845855C0A99EA68879A38375E5DBDBE2D8D8DFD4D4DCD0D0D9CCCCD7C8
          C8D4C4C4D1C0C0CEBCBCCBB8B8C8B5B5C5B1B1C2ADADBFA9A9BCA5A5BAA2A2B7
          9E9EB49A9A6037285D3426481E1B420606FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF875D5AC8B3A7AC8E80A8897BE9E1E1D4BBBBD1B8B8CFB5B5CCB2B2C9AE
          AEC7ABABC4A8A8C2A4A4BFA1A1BC9E9EB99A9AB79797B49494B19090AF8D8DAC
          8A8AB79F9F643A2C6138294C221E430707FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF8A615FCCB7ACB69A8CAD8F81ECE6E6DDCBCBDBC8C8D8C4C4D5C1C1D3BD
          BDD0BABACDB6B6CAB3B3C8AFAFC5ACACC2A8A8BFA5A5BDA1A1BA9D9DB79A9AB4
          9797BBA4A4683F31653B2D502622440808FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF8E6663CEBAB0BDA395B5988BF0EAEAE7DBDBE4D7D7E1D4D4DED0D0DCCC
          CCD9C9C9D6C5C5D3C1C1D1BDBDCEBABACBB6B6C8B2B2C5AEAEC3ABABC0A7A7BD
          A3A3BFA8A86D4335694032542A26450909FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF916A68D0BDB3C0A79ABDA396F5F2F2D8BDBDD6B9B9D3B6B6D0B3B3CEB0
          B0CBADADC9AAAAC6A7A7C3A4A4C1A1A1BE9D9DBC9A9AB99797B79494B49191B1
          8E8EC3ADAD7048396D4436582E2A460A0AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF956F6DD2C0B6C3AB9EC1A89BFEFEFEF6F3F3F1EDEDEFE9E9ECE5E5E9E1
          E1E6DDDDE3D9D9E0D5D5DDD1D1DACDCDD8CACAD5C6C6D2C2C2CFBEBECCBABAC9
          B6B6C6B2B2754C3E71493A5C322F470B0BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF987472D4C3BAC5AEA2C3AC9FFFFFFFFFFFFFFAF8F8F2EEEEEFEAEAEDE6
          E6EAE2E2E7DEDEE4DADAE1D7D7DED2D2DBCFCFD8CBCBD6C7C7D3C3C3D0BFBFCD
          BBBBCAB7B7795143764D3F603633480C0CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF9B7876D6C6BDC8B3A7C6AFA3FFFFFFFFFFFFFFFFFFFDFCFCF6F2F2F0EB
          EBEDE7E7EAE3E3E8DFDFE5DBDBE2D8D8DFD4D4DCD0D0D9CCCCD6C8C8D3C4C4D1
          C0C0CEBCBC7D56487A5244643B37490D0DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF9F7D7BD8C9C0CBB6ABC9B3A8D5C4BBD3C2B9D2C0B6D0BEB4CFBCB1CAB5
          ABC4ADA3BCA49AB9A095B59B90B1968CAD9287AA8D83A7897FA3847A9F80769C
          7C7298786D825C4D7E574969403C4B0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFA28180DACCC4CEBAAFCBB7ACC9B4A9C7B1A5C5AEA2C3AB9EC1A89BBFA5
          97BDA294BA9F90B49889AE9182A68779A180729D7B6D997769957264926D608E
          695B8A6557866152835D4E6E45424C1010FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFA58684DCCEC7D0BEB4CEBAB0CCB8ADCAB5A9C8B2A6C6AFA3C3AC9FC2A9
          9CBFA698BDA395BBA092B99D8EB79A8BB29484A888799E7D6F9A786A96746693
          6E618F6A5C8B6658876254724B474D1111FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFA98A89DFD2CBD3C1B8D1BFB5CFBBB1CDB9AECAB5AAC8B3A7C6B0A4C4AD
          A0C2AA9DC0A799BEA496BCA193B99E8FB89B8CB59888B19383A685769B796B97
          7567947062906B5E8C675977504C4E1212FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFAC8F8EE1D4CED6C5BCD4C2B9E8DFDAE7DDD8E6DCD6E5DAD5E4D9D3E2D7
          D1E2D6D0E1D4CEDFD3CCDED2CBDDD0C9DCCFC7DBCDC5DACCC4D9CAC2D4C5BDC4
          B0A9BCA59E957163916D5F7C55524F1414FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFAF9492E2D7D1D8C9C1D6C6BDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD
          FDFDEDE7E7997769957364815B58501515FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFB39897E5DAD5DBCDC5D9CAC2FFFFFFFFFFFFB19181D0BDB3D7C7BFDFD2
          CBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFA585759A786B86615D521717FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFB69C9BE7DED8DED0C9DCCEC6FFFFFFFFFFFF7E4B30B29484BCA294C7B0
          A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFB39585A686778B6764531818FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFBAA1A0E9E0DBE1D5CEDED1CAFFFFFFFFFFFF6F3618A37E6BAD8C7BB79A
          8BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFB6998AB4968693716D541A1AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFBDA5A4EBE3DFE3D8D2E1D5CFFFFFFFFFFFFF6B31129368529D7663A785
          73FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFB99D8EB79A8BA1817D561C1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFC0AAA9EDE6E2E6DCD7E4D9D3FFFFFFFFFFFF642707743C207944287E4B
          30FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFBCA192B99E8FA78783541818FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFC4AEAEF2EDEAF0E9E6EEE7E3FFFFFFFFFFFFE3D8D2E3D8D2E3D8D2E3D8
          D2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFD2C0B6CDBAB2734241FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFC3AEADBFA9A8BCA3A3BCA4A4B9A0A0B59C9CB29797AE9393AB8E
          8EA88989A48585A180809D7B7B9A7777967272936E6E9069698C646489606085
          5B5B82565673424066302FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        Layout = blGlyphTop
        Spacing = 0
        OnClick = btnPostClick
      end
      object btnDelete: TSpeedButton
        Left = 290
        Top = 0
        Width = 49
        Height = 55
        Caption = 'Excluir'
        Flat = True
        Glyph.Data = {
          360C0000424D360C000000000000360000002800000020000000200000000100
          180000000000000C0000EB0A0000EB0A00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7D7
          D7B3B3B3A3A3A3ABABABC4C4C4E6E6E6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFACACAC5A5A5A6262
          627575757878787575756565654D4D4D4E4E4E6F6F6FAFAFAFE5E5E5FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7373737C7C7CCDCDCDCDCD
          CDBCBCBCAEAEAEAEAEAEB0B0B0B0B0B0A2A2A28888886868684D4D4D515151A4
          A4A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF606060909090EEEEEECECECEBEBE
          BEB1B1B1A5A5A5A5A5A5A5A5A5A5A5A5A6A6A6ABABABB0B0B0B7B7B7A4A4A453
          53537C7C7CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6363638E8E8EF6F6F6D9D9D9CCCCCCBEBE
          BEB1B1B1A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A4A4A4B0B0B0BFBFBFC4
          C4C43D3D3DE4E4E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFC2C2C2707070F9F9F9E1E1E1D9D9D9CCCCCCBEBE
          BEB1B1B1A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A4A4A4ADADADBBBBBBCB
          CBCB626262B9B9B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF909090ABABABEDEDEDE1E1E1D9D9D9CCCCCCBEBE
          BEB1B1B1A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A4A4A4ABABABB9B9B9C8
          C8C87E7E7E909090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF777777C3C3C3E6E6E6E1E1E1D9D9D9CCCCCCBEBE
          BEB1B1B1A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A4A4A4AAAAAAB8B8B8C4
          C4C4989898646464FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF656565DCDCDCE3E3E3E1E1E1D9D9D9CCCCCCBEBE
          BEB1B1B1A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A4A4A4A8A8A8B6B6B6C1
          C1C1B1B1B1505050FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFF3F3F3646464ECECECE1E1E1E1E1E1D9D9D9CCCCCCBEBE
          BEB1B1B1A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A4A4A4A7A7A7B6B6B6BF
          BFBFC2C2C2484848EDEDEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFCCCCCC787878F2F2F2E1E1E1E1E1E1D9D9D9CCCCCCBEBE
          BEB1B1B1A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A6A6A6B4B4B4BD
          BDBDC9C9C95B5B5BC7C7C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF9D9D9D9A9A9AEEEEEEE1E1E1E1E1E1D9D9D9CCCCCCBEBE
          BEB1B1B1A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5B2B2B2BC
          BCBCCACACA777777999999FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF727272BBBBBBE8E8E8E1E1E1E2E3E3DEDFE1D0D3D5BFC2
          C4B0B2B4A3A5A7A5A6A8A7A9ABA9ABADA8A9AAA6A6A7A5A5A5A4A4A4B0B0B0BA
          BABAC7C7C79393936A6A6AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF5F5F5FD7D7D7E4E4E4E7E9EBDBDCDEC0BBB5A99C8F9A88
          778E7A6785725F85746286786A8C837A95928F9F9FA0A6A8AAA8AAACB2B3B4BB
          BBBBC4C4C4ADADAD525252FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFF6F6F65F5F5FECEDEDE3E6E8BFB6AEB19478B38D67B18A64AA85
          619F7D5B9675569474559273548D6E50866B50836D578575658A81799C9996B1
          B2B3C3C6C8C4C6C84A4A4AF3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFD5D5D5757575F3F6F9B3A494B99169CEA175BE946CA78360987A
          5C8B715881695280685082674D886A4D9171539675569474558C6D508B6F5393
          79619A8877AEA8A0525354D0D0D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFA8A8A895979AC0B0A1BF956BC1976EB19578B9AA9CC1BBB6C3C1
          BFC2C2C2BABABAB5B5B4AFADAB9F98928C7E71816C5981674D87694C957555A7
          8360AB8662A98663594B3CA6A6A6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF77797B8C7D6FC79D71B7916CBEB3A7DEDFE1C7CACDA9ABAC9798
          98555656ACACACB8B9B9B6B7B8BDBEC0C3C5C7C0C2C3B4B2B0A099928E80738B
          755F937558AE886481664C787878FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF5A5753B8916AB6906BC9C3BDD9DDE09696978686869090909F9F
          9F3F3F3FA1A1A1EDEDEDD3D3D3C4C4C4B5B5B5B0B0B0B3B4B4BBBDBEC2C4C6BE
          C0C2B8B6B5A1958B7B644E59544FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFAFAFA5A4C3FB7926DCEC8C2CED2D4969696A8A8A8B3B3B3B1B1B1B7B7
          B76D6D6D727272FFFFFFEEEEEEE9E9E9E6E6E6DFDFDFD1D1D1C1C1C1B2B2B2B1
          B1B1929293B3B5B8C0BFBF444240FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFDBDBDB4D3F2FDED5CBBBBEC1616060C4C4C4C0C0C0BEBEBEBEBEBEC2C2
          C2A1A1A14A4A4AFEFEFEFEFEFEFAFAFAF5F5F5EFEFEFEAEAEAE6E6E6E1E1E1E4
          E4E49696963D3D3DD3D4D66B6B6CD4D4D4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFAEAEAE8B8A89E5E7E9282828A3A3A3D7D7D7CECECECECECECECECED0D0
          D0CDCDCD434343D8D8D8FFFFFFFFFFFFFFFFFFFEFEFEFCFCFCF7F7F7F3F3F3F8
          F8F8F7F7F8404040696057908E8D9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF7F7F7FADACAB5453523E4042FBFBFCE9E9E9DFDFDFDEDEDEDEDEDEDFDF
          DFE8E8E86565659A9A9AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6C2
          C3C3828384221D1A96887B828080B0B0B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF6F7070B2ACA6725D4A3D3732626262B0B2B4ECEDEEF9F9F9ECECECE6E6
          E6EFEFEF9F9F9F626262FFFFFFFFFFFFFFFFFFE4E4E4A6A6A6727272595B5C3A
          3A3A514030A4917FB2B0AD525253FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF9999998C8A89D3BFADA6886D7B644F4D4035484543828486CED0D2F7F8
          F8F6F6F6D7D7D7454545CACACA9C9D9D64656755575967696B8385878F89859A
          836FC6AE98B8B5B34A4B4CEDEDEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFAFAFA585858949291D6C8BCD7BCA4D0B092AE8F73715A464A40375D5D
          5DA6A9ABF2F3F48E8E8E545455141312807A75A39B93A99B8EA8927DB39375D5
          BAA2B7B4B2464747EDEDEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFDFDFD8686866163648A8A89B2ACA6D3C6B9EFD7C1E9CAAEAF91
          766652415049438A8B8C8B8F936C5A4ADEB998CFAB8BD5B08EDBB797EBD3BDB2
          AFAC49494AEAEAEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFF7F7F7B9B9B9787A7B61636567696A8B8A89BCB4
          AEEAD8C9E6CEB8A38F7D5F554BD9BBA1FEDDBFF7DAC0EFDAC7CDC4BB7C7C7D57
          5859F1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E9E9B5B5B5797B
          7C60636667696A8B88869A969294918E888685717272545759545658AAAAAAFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFEDEDEDCECECEB9B9B9B0B0B0B5B5B5C9C9C9EBEBEBFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        Layout = blGlyphTop
        Spacing = 0
        OnClick = btnDeleteClick
      end
      object SpeedButton5: TSpeedButton
        Left = 338
        Top = 0
        Width = 49
        Height = 55
        Caption = 'Cancelar'
        Flat = True
        Glyph.Data = {
          660F0000424D660F000000000000360000002800000024000000240000000100
          180000000000300F0000120B0000120B00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFF7C6C6D99090BAACACB3EDEDE5FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFE6E6ED8686B970709FB6B6B6FAFAF5FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCF79C9CD42828C20D0DC33333AE9797
          A4F0F0E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6E6EE5D5DBB0707A2
          0707A3494996B7B7B3FBFBF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFF89999DC1212
          CA0000C30000C20000C83030B19A9AA5F0F0E5FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          E5E5EC5B5BBC0000A100009F0000A00505A54A4A97B9B9B4FCFCF6FFFFFFFFFF
          FFFFFFFBA6A6E41717D50000CC0101C60202C20000C00000C73131B19C9CA5F1
          F1E6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFE4E4ED5858BE0000A50000A10101A20101A00000A00707
          A64D4D97BBBBB5FBFBF7FFFFFEC5C5EE2323E10000D80101D10202CE0202CA02
          02C50000C10000C83232B29B9BA5F1F1E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2E2EE5555C10000A80000A50101
          A50101A40101A20101A10000A10606A6505097C5C5C1EDEDFA5050EF0000E401
          01DB0202D80202D50202D10202CC0202C80000C40000CA3333B29D9DA4F1F1E6
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1E1ED5454
          C20000AC0000A80101A80101A80101A60101A40101A30101A10000A30A0AA486
          86AEDCDCFB2525F20000E60303E00202DF0202DB0202D70202D30202D00202CA
          0000C50000CB3333B29D9DA5F2F2E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFE0E0ED5252C40000B00000AB0101AC0101AB0101AA0101A80101A601
          01A60101A50000A10505A69D9DCCF7F7FE7575FA0000EF0000E40303E30303E1
          0303DD0202D90202D60202D10202CD0000C80000CE3333B39E9EA6F1F1E7FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFDDDDED5050C70000B40000B00202AF0202AE02
          02AD0101AC0101AA0101A80101A80000A40000A55E5EC4EEEEF4FFFFFFEDEDFE
          6565FA0000EF0000E60303E50303E20303DF0202DC0202D80202D40202CF0000
          CB0000D13333B49E9EA6F2F2E6FFFFFFFFFFFFFFFFFFDBDBEB4E4ECA0000B800
          00B40202B40202B20202B00202AF0202AE0101AC0101AB0000A70000A85555C5
          E3E3F2FFFFFFFFFFFFFFFFFFECECFE6565FA0000F10000E70303E60303E50303
          E10202DD0202DA0202D60202D20000CF0000D33434B69F9FA5F3F3E8FFFFFFDB
          DBEB4B4BCB0000BC0000B80202B70202B60202B40202B30202B20202B00202AF
          0000AA0000AB5252C7E2E2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFE6565
          FB0000F10000E80303E80303E60303E30303E00202DC0202D90202D50000D101
          01D63434B8AAAAAACECED94D4DD20000C00000BB0202BB0202BA0202B80202B7
          0202B50202B40202B20000AF0000AF4D4DC8E1E1F2FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFEFEFFE6565FA0000F10000E90303E80303E70303E403
          03E20303DF0202DB0202D70000D40101D73939BE3A3AC00000C70000BF0202BF
          0202BE0202BC0202BB0202B90202B70202B60000B30000B44A4ACADDDDF1FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDEDFE6767FA01
          01F10000E90303E90303E80303E60303E40303E00202DD0202D90000D50000D7
          0000D00000C80202C40202C20202C00202BF0202BE0202BC0202BA0000B70000
          B74646CCDBDBF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFF0F0FE6868FA0000F10000EA0303EB0303EA0303E70303E5
          0303E30303DF0202DC0101D80101D40202D00202CC0202C70202C30202C10202
          C00202BE0000BA0000BB4242CDD8D8EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0FE6969FA0000F2
          0000EA0303EB0303EA0303E90303E70303E40303E10202DE0202DA0202D60202
          D20202CF0202CA0202C50202C20101BE0000BF3E3ECED4D4EEFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFEFEFFE6B6BFB0202F20000EA0303EB0303EB0303EA0303E80303
          E60303E20202E00202DC0202D90202D60202D20202CC0101C60000C53737D2D0
          D0EDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1FD6C6CFC0505F30000
          EA0303EB0303EB0303EA0303E90303E70303E50303E20303DF0202DC0202D801
          01D30000D43838DDCCCCEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFAFAFE5E5EF20000ED0000EA0202EB0303EB0303EB0303EA0303E803
          03E60303E40303E10202DD0000DC2A2AD1C4C4E2FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFED8D8EA5D5DE41C1CF00B0BEC0000EB00
          00EB0000EA0202EB0303EB0303E90303E70303E50202E10000E62525C7A1A1A8
          F8F8EAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0D0EA5959E03E
          3EEE4E4EEE4444EE3030EE1919ED0808EB0000EB0000EA0000EA0000EA0101E8
          0202E60101E50000E61E1EBA9797A3F6F6E9FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFCFCFEA5B5BDF4141ED5050ED5252ED5757EE5A5AEF5555F04848F03636EF
          2525EC1414EC0808EC0404EB0101E90000E70000E80000ED1919BB9595A5F7F7
          EAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFD0D0EB5C5CDC4444E95555E95757E95858EC5959ED
          5B5BEE5E5EEF6262F06363F16060F15959F04F4FF04444EF3939EF3030ED2929
          EB2222EC1A1AF13434BC9898A5F7F7ECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFE85E5EDB4949E85959E8
          5B5BE75D5DE85F5FEA6060EB6161ED6262EE6262EF6464F06666F16666F16868
          F16868F16767F16464F16262F15E5EF05C5CF34C4CF84040BE9898A5F6F6EBFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCECEE9
          5F5FD94D4DE65E5EE75E5EE66060E76262E86464E96666EA6767EC6868EC6A6A
          ED6666F16363F36969F16868F16767F26767F26565F26464F16363F16060F05F
          5FF45151F94343BD9B9BA6F9F9EDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFD0D0EA6161DA5151E66060E56262E46464E66666E66868E86969
          E86B6BE96B6BE96E6EEB6969F16B6BEB7373EB6767F46E6EF16C6CF16C6CF26A
          6AF26969F26767F26464F26262F06161F55353F94545BD9D9DA9F8F8F0FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1D1EA6363D85252E46464E46464E46767
          E56A6AE66A6AE66D6DE86F6FE86F6FE97272E96A6AEE6767E9C5C5EDE5E5F786
          86F16565F47272F17070F16F6FF16D6DF26C6CF26A6AF26868F26464F16565F5
          5555FA4545BC9F9FA9F8F8EFFFFFFFFFFFFFFFFFFFFFFFFECECEE76464D75454
          E26565E36767E36969E46C6CE56E6EE66F6FE67171E87272E87575E96E6EED67
          67E7BFBFEAFFFFFDFFFFFFE6E6F88585F16767F37575F27373F17272F17070F2
          6E6EF26C6CF26969F26767F16666F65454F94646BBA2A2ABFBFBF0FFFFFFFFFF
          FFD1D1EA6262D55656E16666E16868E26B6BE36E6EE47070E57272E57373E675
          75E77878E87272ED6A6AE7BFBFEAFFFFFDFFFFFFFFFFFFFFFFFFE6E6F98787EF
          6A6AF37A7AF17676F07474F27272F27070F26D6DF26B6BF26868F16767F65454
          F94848B9A5A5ADF9F9F3E3E3F36E6EDB5656E16969E06A6AE06D6DE26F6FE371
          71E37373E57575E57676E57B7BE67474EC6C6CE6C0C0EAFFFFFDFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFE9E9F98A8AF06E6EF27B7BF07878EF7676F17474F17171
          F16E6EF26B6BF26767F16868F75353F84949B6BABABFABABE95555DC6B6BE16A
          6ADF6E6EE17070E27373E27575E37777E47878E57C7CE67575EA6D6DE5C1C1EB
          FFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E9F98C8CF06F6F
          F37D7DF07979EF7777F07575F17272F26F6FF26B6BF26768F16767FA4A4AEB83
          83BDC0C0EF5E5EDE6A6AE16F6FDF7171E07474E27776E27878E37A7AE47E7EE5
          7676EA6E6EE3C1C1EAFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFE9E9F98D8DEF7070F27E7EF07A7AEF7878F07676F17373F16F
          6FF26B6BF16969F65151F39B9BDEF7F7FC9A9AE95F5FE17272E17474DF7676E2
          7978E27A7AE27F7FE47777E87070E3C4C4E9FFFFFDFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBEBF98E8EEF6F6FF07E
          7EF07B7BEE7878F07575F07272F06F6FF35C5CF67A7AEDE7E7F7FFFFFFF1F1FA
          9494E86565E27878E17A7AE07A7AE18080E27878E77171E1C5C5EAFFFFFEFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFECECF99191EF7070F07F7FEF7A7AEE7777EF7777F16363F47979EC
          E0E0F5FFFFFFFFFFFFFFFFFFF2F2FA9797E86A6AE27D7DE38282E37777E77070
          E0C6C6EBFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDEDFA9292EE6F6FF07E7EEF
          7E7EF06969F27C7CEBE0E0F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3FA9898
          E96F70E27171E27979E3CACAEDFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFEFEFFA9696EF6F6FEE6D6DEE8181ECE0E0F4FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFF6F6FBB2B2EB9C9CE7DADAF3FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3FBABABEF9D9DECE5E5F7FFFF
          FFFFFFFFFFFFFFFFFFFF}
        Layout = blGlyphTop
        Spacing = 0
        OnClick = SpeedButton5Click
      end
    end
  end
  object chkAltera: TCheckBox
    Left = 592
    Top = 64
    Width = 97
    Height = 17
    Caption = 'chkAltera'
    TabOrder = 2
    Visible = False
  end
  object Q_REQY: TwwQuery
    CachedUpdates = True
    BeforeEdit = Q_REQYBeforeEdit
    BeforePost = Q_REQYBeforePost
    AfterPost = Q_REQYAfterPost
    BeforeDelete = Q_REQYBeforeDelete
    AfterDelete = Q_REQYAfterDelete
    OnNewRecord = Q_REQYNewRecord
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM REQ_CAPA ')
    UpdateObject = UPD_REQ
    ValidateWithMask = True
    Left = 704
    Top = 224
    object Q_REQYReq_ID: TAutoIncField
      DisplayLabel = 'N�'
      DisplayWidth = 10
      FieldName = 'Req_ID'
      Origin = 'CURA.REQ_CAPA.Req_ID'
    end
    object Q_REQYData: TDateTimeField
      DisplayLabel = 'Data da Requisi��o'
      DisplayWidth = 19
      FieldName = 'Data'
      Origin = 'CURA.REQ_CAPA.Data'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/00;1;_'
    end
    object Q_REQYCC_Desc: TStringField
      DisplayLabel = 'Centro Custo'
      DisplayWidth = 35
      FieldKind = fkLookup
      FieldName = 'CC_Desc'
      LookupDataSet = Q_CC
      LookupKeyFields = 'CC_ID'
      LookupResultField = 'CC_Desc'
      KeyFields = 'CC_ID'
      Size = 40
      Lookup = True
    end
    object Q_REQYData_Sist: TDateTimeField
      DisplayLabel = 'Data '
      DisplayWidth = 15
      FieldName = 'Data_Sist'
      Origin = 'CURA.REQ_CAPA.Data_Sist'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/00;1;_'
    end
    object Q_REQYUsuario: TStringField
      DisplayLabel = 'Usu�rio'
      DisplayWidth = 19
      FieldName = 'Usuario'
      Origin = 'CURA.REQ_CAPA.Usuario'
      FixedChar = True
    end
    object Q_REQYCC_ID: TIntegerField
      FieldName = 'CC_ID'
      Origin = 'CURA.REQ_CAPA.CC_ID'
      Visible = False
    end
    object Q_REQYLOCAL_ID: TIntegerField
      FieldName = 'LOCAL_ID'
      Origin = 'CURA.Req_Capa.LOCAL_ID'
      Visible = False
    end
    object Q_REQYLOCAL_DESTINO: TIntegerField
      FieldName = 'LOCAL_DESTINO'
      Origin = 'CURA.Req_Capa.LOCAL_DESTINO'
      Visible = False
    end
    object Q_REQYTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'CURA.Req_Capa.TIPO'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_REQYTIPO_REQUISICAO: TStringField
      FieldName = 'TIPO_REQUISICAO'
      Origin = 'CURA.Req_Capa.TIPO_REQUISICAO'
      Visible = False
      OnGetText = Q_REQYTIPO_REQUISICAOGetText
      FixedChar = True
      Size = 1
    end
    object Q_REQYUsuarioSolicitacao: TStringField
      FieldName = 'UsuarioSolicitacao'
      Origin = 'CURA.Req_Capa.UsuarioSolicitacao'
      Visible = False
      FixedChar = True
      Size = 50
    end
    object Q_REQYObservacaoSolicitacao: TStringField
      FieldName = 'ObservacaoSolicitacao'
      Origin = 'CURA.Req_Capa.ObservacaoSolicitacao'
      Visible = False
      FixedChar = True
      Size = 255
    end
    object Q_REQYTipoSolicitacao: TStringField
      FieldName = 'TipoSolicitacao'
      Origin = 'CURA.Req_Capa.Req_ID'
      FixedChar = True
      Size = 50
    end
    object Q_REQYMotivoSolicitacao: TStringField
      FieldName = 'MotivoSolicitacao'
      Origin = 'CURA.Req_Capa.Req_ID'
      FixedChar = True
      Size = 250
    end
  end
  object DS_REQ: TwwDataSource
    DataSet = Q_REQY
    OnDataChange = DS_REQDataChange
    Left = 641
    Top = 224
  end
  object UPD_REQ: TUpdateSQL
    ModifySQL.Strings = (
      'update REQ_CAPA'
      'set'
      '  Data = :Data,'
      '  Usuario = :Usuario,'
      '  CC_ID = :CC_ID,'
      '  Data_Sist = :Data_Sist,'
      '  local_id = :local_id,'
      '  LOCAL_DESTINO = :LOCAL_DESTINO,'
      '  TipoSolicitacao = :TipoSolicitacao,'
      '  MotivoSolicitacao = :MotivoSolicitacao,'
      '  ObservacaoSolicitacao = :ObservacaoSolicitacao'
      'where'
      '  Req_ID = :OLD_Req_ID')
    InsertSQL.Strings = (
      'insert into REQ_CAPA'
      
        '  (Data, Usuario, CC_ID, Data_Sist, local_id, LOCAL_DESTINO, tip' +
        'o, TipoSolicitacao, '
      'MotivoSolicitacao, ObservacaoSolicitacao'
      ')'
      'values'
      
        '  (:Data, :Usuario, :CC_ID, :Data_Sist, :local_id, :LOCAL_DESTIN' +
        'O, :tipo, '
      ':TipoSolicitacao, :MotivoSolicitacao, :ObservacaoSolicitacao'
      ')')
    DeleteSQL.Strings = (
      'delete from REQ_CAPA'
      'where'
      '  Req_ID = :OLD_Req_ID')
    Left = 565
    Top = 217
  end
  object Q_REQ_ITEM: TwwQuery
    CachedUpdates = True
    BeforeEdit = Q_REQ_ITEMBeforeEdit
    AfterPost = Q_REQ_ITEMAfterPost
    BeforeDelete = Q_REQ_ITEMBeforeDelete
    AfterDelete = Q_REQ_ITEMAfterDelete
    AfterScroll = Q_REQ_ITEMAfterScroll
    OnCalcFields = Q_REQ_ITEMCalcFields
    OnNewRecord = Q_REQ_ITEMNewRecord
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    DataSource = DS_REQ
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM REQ_ITEM WHERE REQ_ID =:REQ_ID ORDER BY REQ_ID'
      '')
    UpdateObject = UPD_REQ_ITEM
    ValidateWithMask = True
    Left = 864
    Top = 216
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'Req_ID'
        ParamType = ptUnknown
      end>
    object Q_REQ_ITEMReq_ID: TIntegerField
      DisplayLabel = 'N�'
      DisplayWidth = 10
      FieldName = 'Req_ID'
      Origin = 'CURA.REQ_ITEM.Req_ID'
    end
    object Q_REQ_ITEMDSMAT: TStringField
      DisplayLabel = 'Material'
      DisplayWidth = 19
      FieldKind = fkLookup
      FieldName = 'DSMAT'
      LookupDataSet = Q_MATGR
      LookupKeyFields = 'MAT_ID'
      LookupResultField = 'MAT_DESC'
      KeyFields = 'Mat_ID'
      Size = 50
      Lookup = True
    end
    object Q_REQ_ITEMQtde: TFloatField
      DisplayLabel = 'Quantidade'
      DisplayWidth = 13
      FieldName = 'Qtde'
      Origin = 'CURA.REQ_ITEM.Qtde'
      DisplayFormat = '###,###,##0.00'
    end
    object Q_REQ_ITEMUni_Sigla: TStringField
      DisplayLabel = 'Un.'
      DisplayWidth = 3
      FieldName = 'Uni_Sigla'
      Origin = 'CURA.REQ_ITEM.Qtde'
      FixedChar = True
      Size = 2
    end
    object Q_REQ_ITEMLocalArmazem: TStringField
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = 'LocalArmazem'
      LookupDataSet = qrLocalArmazenamento
      LookupKeyFields = 'MAT_ID'
      LookupResultField = 'LocalArmazem'
      KeyFields = 'Mat_ID'
      Size = 255
      Lookup = True
    end
    object Q_REQ_ITEMDS_Marca: TStringField
      DisplayLabel = 'Marca Pref.'
      DisplayWidth = 34
      FieldKind = fkLookup
      FieldName = 'DS_Marca'
      LookupDataSet = Q_MARCA2
      LookupKeyFields = 'MARCA_ID'
      LookupResultField = 'MARCA_DESC'
      KeyFields = 'Marca_ID'
      Size = 30
      Lookup = True
    end
    object Q_REQ_ITEMInformacaoAdicional: TStringField
      DisplayLabel = 'Informa��o Adicional'
      DisplayWidth = 100
      FieldName = 'InformacaoAdicional'
      Origin = 'CURA.Req_Item.InformacaoAdicional'
      FixedChar = True
      Size = 250
    end
    object Q_REQ_ITEMAUTORIZA: TStringField
      DisplayWidth = 1
      FieldName = 'AUTORIZA'
      Origin = 'CURA.Req_Item.Req_Item_ID'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_REQ_ITEMESTOQUEMAXIMO: TStringField
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'ESTOQUEMAXIMO'
      Visible = False
      Size = 1
      Calculated = True
    end
    object Q_REQ_ITEMReq_Item_ID: TAutoIncField
      FieldName = 'Req_Item_ID'
      Origin = 'CURA.REQ_ITEM.Req_Item_ID'
      Visible = False
    end
    object Q_REQ_ITEMMat_ID: TIntegerField
      FieldName = 'Mat_ID'
      Origin = 'CURA.REQ_ITEM.Mat_ID'
      Visible = False
      OnChange = Q_REQ_ITEMMat_IDChange
    end
    object Q_REQ_ITEMMarca_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'Marca_ID'
      Origin = 'CURA.REQ_ITEM.Marca_ID'
      Visible = False
    end
    object Q_REQ_ITEMStatus: TStringField
      DisplayWidth = 1
      FieldName = 'Status'
      Origin = 'CURA.REQ_ITEM.Status'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_REQ_ITEMCONTROLA_GRUPO: TStringField
      FieldName = 'CONTROLA_GRUPO'
      Origin = 'CURA.Req_Item.CONTROLA_GRUPO'
      Visible = False
      FixedChar = True
      Size = 1
    end
  end
  object UPD_REQ_ITEM: TUpdateSQL
    ModifySQL.Strings = (
      'update REQ_ITEM'
      'set'
      '  Req_ID = :Req_ID,'
      '  Mat_ID = :Mat_ID,'
      '  Marca_ID = :Marca_ID,'
      '  Uni_Sigla = :Uni_Sigla,'
      '  Qtde = :Qtde,'
      '  Status = :Status,'
      '  CONTROLA_GRUPO = :CONTROLA_GRUPO'
      'where'
      '  Req_Item_ID = :OLD_Req_Item_ID')
    InsertSQL.Strings = (
      'insert into REQ_ITEM'
      
        '  (Req_ID, Mat_ID, Marca_ID, Uni_Sigla, Qtde, Status, CONTROLA_G' +
        'RUPO )'
      'values'
      
        '  (:Req_ID, :Mat_ID, :Marca_ID, :Uni_Sigla, :Qtde, :Status, :CON' +
        'TROLA_GRUPO )')
    DeleteSQL.Strings = (
      'delete from REQ_ITEM'
      'where'
      '  Req_Item_ID = :OLD_Req_Item_ID')
    Left = 1031
    Top = 129
  end
  object DS_REQ_ITEM: TwwDataSource
    DataSet = Q_REQ_ITEM
    Left = 1269
    Top = 96
  end
  object Q_MAT: TwwQuery
    DatabaseName = 'Cura'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'SELECT'#9#9' *'
      'FROM'#9#9'MATERIAIS'
      'WHERE GENERICO NOT IN ('#39'S'#39')'
      'AND MAT_ATIVO = '#39'S'#39
      'ORDER BY'#9'MAT_DESC')
    ValidateWithMask = True
    Left = 1138
    Top = 208
    object Q_MATMAT_DESC: TStringField
      DisplayWidth = 60
      FieldName = 'MAT_DESC'
      Origin = 'CURA.MATERIAIS.MAT_DESC'
      FixedChar = True
      Size = 60
    end
    object Q_MATMAT_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'MAT_ID'
      Origin = 'CURA.MATERIAIS.MAT_ID'
      Visible = False
    end
    object Q_MATCONTROLA_GRUPO: TStringField
      FieldName = 'CONTROLA_GRUPO'
      FixedChar = True
      Size = 1
    end
  end
  object DS_MAT: TDataSource
    DataSet = Q_MAT
    Left = 1029
    Top = 72
  end
  object Q_MATGR: TwwQuery
    Active = True
    DatabaseName = 'Cura'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'SELECT * FROM MATERIAIS '
      'WHERE GENERICO NOT IN ('#39'S'#39')'
      'AND MAT_ATIVO = '#39'S'#39
      'ORDER BY MAT_DESC')
    ValidateWithMask = True
    Left = 1123
    Top = 136
    object StringField1: TStringField
      DisplayWidth = 60
      FieldName = 'MAT_DESC'
      Origin = 'CURA.MATERIAIS.MAT_DESC'
      FixedChar = True
      Size = 60
    end
    object AutoIncField1: TAutoIncField
      DisplayWidth = 10
      FieldName = 'MAT_ID'
      Origin = 'CURA.MATERIAIS.MAT_ID'
      Visible = False
    end
  end
  object Q_AUX: TwwQuery
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'SELECT'#9#9'MAT_ID,'
      #9#9'MAT_DESC'
      'FROM'#9#9'MATERIAIS'
      'ORDER BY'#9'MAT_DESC')
    ValidateWithMask = True
    Left = 1210
    Top = 97
  end
  object Q_CC: TwwQuery
    Active = True
    DatabaseName = 'Cura'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'SELECT * FROM CENTRO_CUSTO'
      'ORDER BY CC_DESC')
    ValidateWithMask = True
    Left = 1140
    Top = 72
    object Q_CCCC_Desc: TStringField
      DisplayWidth = 40
      FieldName = 'CC_Desc'
      Origin = 'CURA.CENTRO_CUSTO.CC_Desc'
      FixedChar = True
      Size = 40
    end
    object Q_CCCC_ID: TAutoIncField
      FieldName = 'CC_ID'
      Origin = 'CURA.CENTRO_CUSTO.CC_ID'
      Visible = False
    end
  end
  object Q_RQL: TwwQuery
    AfterPost = Q_REQYAfterPost
    AfterDelete = Q_REQYAfterDelete
    OnNewRecord = Q_REQYNewRecord
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    DataSource = DS_REQ_ITEM
    SQL.Strings = (
      'SELECT'#9#9'L.DESCRICAO LOC_DESC,'
      #9#9'M.MARCA_DESC,'
      #9#9'RL.FOR_CODI,'
      #9#9'RL.VALID,'
      #9#9'RL.QTDE,'
      #9#9'RL.STATUS,'
      #9#9'RL.N_LOTE,'
      #9#9'RL.MAT_ID,'
      #9#9'RL.MARCA_ID,'
      #9#9'RL.LOCAL_ID,'
      #9#9'RL.RR_ID,'
      '                                    RL.ALMOX_ID'
      ''
      'FROM '#9#9'REQ_LOTE RL,'
      #9#9'MARCAS    M,'
      #9#9'LOCAL    L'
      ''
      'WHERE'#9#9'RL.REQ_ITEM_ID = :REQ_ITEM_ID'
      'AND'#9#9'RL.LOCAL_ID = L.LOCAL_ID'
      'AND'#9#9'RL.MARCA_ID = M.MARCA_ID'
      ''
      'ORDER BY'#9'RL.RR_ID ')
    ValidateWithMask = True
    Left = 1095
    Top = 15
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'Req_Item_ID'
        ParamType = ptUnknown
      end>
    object Q_RQLMARCA_DESC: TStringField
      DisplayLabel = 'Marca'
      DisplayWidth = 9
      FieldName = 'MARCA_DESC'
      FixedChar = True
    end
    object Q_RQLN_LOTE: TStringField
      DisplayLabel = 'Lote'
      DisplayWidth = 9
      FieldName = 'N_LOTE'
      FixedChar = True
      Size = 40
    end
    object Q_RQLVALID: TDateTimeField
      DisplayLabel = 'Valid.'
      DisplayWidth = 9
      FieldName = 'VALID'
      DisplayFormat = 'dd/mm/yy'
    end
    object Q_RQLQTDE: TFloatField
      DisplayLabel = 'Qtde.'
      DisplayWidth = 8
      FieldName = 'QTDE'
      DisplayFormat = '###,###,##0.00'
    end
    object Q_RQLFOR_CODI: TStringField
      DisplayLabel = 'Fornecedor'
      DisplayWidth = 11
      FieldName = 'FOR_CODI'
      FixedChar = True
      Size = 15
    end
    object Q_RQLLOC_DESC: TStringField
      DisplayLabel = 'Local'
      DisplayWidth = 13
      FieldName = 'LOC_DESC'
      FixedChar = True
    end
    object Q_RQLSTATUS: TStringField
      DisplayLabel = 'Status'
      DisplayWidth = 4
      FieldName = 'STATUS'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_RQLMAT_ID: TIntegerField
      FieldName = 'MAT_ID'
      Visible = False
    end
    object Q_RQLMARCA_ID: TIntegerField
      FieldName = 'MARCA_ID'
      Visible = False
    end
    object Q_RQLLOCAL_ID: TIntegerField
      FieldName = 'LOCAL_ID'
      Visible = False
    end
    object Q_RQLRR_ID: TAutoIncField
      FieldName = 'RR_ID'
      Visible = False
    end
    object Q_RQLALMOX_ID: TIntegerField
      FieldName = 'ALMOX_ID'
    end
  end
  object DS_RQL: TwwDataSource
    DataSet = Q_RQL
    Left = 1215
    Top = 39
  end
  object Q_MARCA: TwwQuery
    AfterOpen = Q_MARCAAfterOpen
    DatabaseName = 'Cura'
    SessionName = 'Sec_BaseFin'
    DataSource = DS_REQ_ITEM
    SQL.Strings = (
      'SELECT '#9#9'M.* '
      'FROM '#9#9'MARCAS '#9'M, '
      #9#9'MATERIAL_MARCA MM'
      'WHERE '#9#9'MM.MAT_ID = :MAT_ID'
      'AND'#9#9'M.MARCA_ID = MM.MARCA_ID'
      'ORDER BY '#9'M.MARCA_DESC')
    ValidateWithMask = True
    Left = 717
    Top = 64
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Mat_ID'
        ParamType = ptUnknown
      end>
  end
  object SP_SIMULA_ALOC: TwwStoredProc
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    StoredProcName = 'dbo.SP_SIMULA_ALOC'
    ValidateWithMask = True
    Left = 860
    Top = 88
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Result'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = '@REQ_ITEM_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@MARCA_ID_PREF'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@USUARIO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@MSG'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = '@LOCAL'
        ParamType = ptInput
      end>
  end
  object Q_MARCA2: TwwQuery
    Active = True
    DatabaseName = 'Cura'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'SELECT '#9#9'M.* '
      'FROM '#9#9'MARCAS '#9'M '
      'ORDER BY '#9'M.MARCA_DESC')
    ValidateWithMask = True
    Left = 965
    Top = 440
  end
  object SP_AJALM: TwwStoredProc
    DatabaseName = 'Cura'
    SessionName = 'Sec_BaseFin'
    StoredProcName = 'dbo.SP_ATUAL_LOTE'
    ValidateWithMask = True
    Left = 900
    Top = 56
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Result'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = '@N_LOTE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = '@QTDE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@MAT_ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@FOR_CODI'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@MOT_ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@TIPO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@USUARIO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@MSG'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = '@TD_ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@DOCTO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@REC_ITEM_ID'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = '@DATAX'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@MARCA_ID'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = '@VALID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@LOCAL_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@IdRequisicaoItemLote'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@ALMOX_ID'
        ParamType = ptInput
      end>
  end
  object Q_AUX2: TwwQuery
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'SELECT'#9#9'MAT_ID,'
      #9#9'MAT_DESC'
      'FROM'#9#9'MATERIAIS'
      'ORDER BY'#9'MAT_DESC')
    ValidateWithMask = True
    Left = 1034
    Top = 9
  end
  object Q_SIG: TwwQuery
    AfterPost = Q_REQYAfterPost
    AfterDelete = Q_REQYAfterDelete
    OnNewRecord = Q_REQYNewRecord
    DatabaseName = 'CURA'
    SessionName = 'Sec_BaseFin'
    DataSource = DS_REQ_ITEM
    SQL.Strings = (
      'SELECT'#9#9'UNI.UNI_SIGLA'
      'FROM'#9#9'MATERIAIS M,'
      #9#9'UNIDADES UNI'
      'WHERE'#9#9'M.MAT_ID = :MAT_ID'
      'AND'#9#9'M.UNI_ID = UNI.UNI_ID')
    ValidateWithMask = True
    Left = 1119
    Top = 439
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Mat_ID'
        ParamType = ptUnknown
      end>
    object Q_SIGUNI_SIGLA: TStringField
      FieldName = 'UNI_SIGLA'
      Origin = 'CURA.UNIDADES.UNI_SIGLA'
      FixedChar = True
      Size = 2
    end
  end
  object dsMyNavPanel: TDataSource
    Left = 1032
    Top = 192
  end
  object qrAux: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'LOCAL_ID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM LOCAL'
      'WHERE LOCAL_ID = :LOCAL_ID')
    Left = 1094
    Top = 360
    object qrAuxLocal_ID: TAutoIncField
      FieldName = 'Local_ID'
      ReadOnly = True
    end
    object qrAuxDescricao: TStringField
      FieldName = 'Descricao'
      Size = 50
    end
    object qrAuxDisponivelSN: TStringField
      FieldName = 'DisponivelSN'
      FixedChar = True
      Size = 1
    end
    object qrAuxCONSUMO: TStringField
      FieldName = 'CONSUMO'
      FixedChar = True
      Size = 1
    end
    object qrAuxCONTROLA_ESTOQUE: TStringField
      FieldName = 'CONTROLA_ESTOQUE'
      FixedChar = True
      Size = 1
    end
  end
  object qrPreparaProdutos: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <
      item
        Name = 'USUARIO'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'LOCAL'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'MAT_ID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'EXEC PREPARA_MATERIAL :USUARIO, :LOCAL, :MAT_ID')
    Left = 965
    Top = 238
  end
  object qryDadosOrigem: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    BeforePost = qryDadosOrigemBeforePost
    Parameters = <
      item
        Name = 'MAT_ID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'USUARIO'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT '
      #9'A.ITEM, '
      #9'A.MAT_ID, '
      #9'B.MAT_DESC, '
      #9'A.QTDE - A.QTDE_SOL AS QTDE, '
      #9'A.LOTE, '
      #9'A.VALIDADE, '
      
        #9'A.QTDE_SOL, A.IMG, A.QTDE AS ESTOQUE, a.marca_id, A.FOR_CODI, A' +
        'LMOX_ID'
      'FROM MATERIAIS B INNER JOIN TRANS_TEMP A ON A.MAT_ID = B.MAT_ID'
      'WHERE A.MAT_ID = :MAT_ID'
      'AND A.USUARIO = :USUARIO')
    Left = 965
    Top = 302
    object qryDadosOrigemMAT_DESC: TStringField
      DisplayLabel = 'Material'
      DisplayWidth = 50
      FieldName = 'MAT_DESC'
      Size = 60
    end
    object qryDadosOrigemQTDE: TFloatField
      DisplayLabel = 'Estoque'
      DisplayWidth = 9
      FieldName = 'QTDE'
    end
    object qryDadosOrigemLOTE: TStringField
      DisplayLabel = 'N� Lote'
      DisplayWidth = 20
      FieldName = 'LOTE'
    end
    object qryDadosOrigemVALIDADE: TDateTimeField
      DisplayLabel = 'Validade'
      DisplayWidth = 18
      FieldName = 'VALIDADE'
    end
    object qryDadosOrigemQTDE_SOL: TFloatField
      DisplayLabel = 'Adicionar Qtde'
      DisplayWidth = 11
      FieldName = 'QTDE_SOL'
    end
    object qryDadosOrigemIMG: TIntegerField
      DisplayLabel = '****'
      DisplayWidth = 2
      FieldName = 'IMG'
      Visible = False
    end
    object qryDadosOrigemITEM: TAutoIncField
      DisplayWidth = 10
      FieldName = 'ITEM'
      ReadOnly = True
      Visible = False
    end
    object qryDadosOrigemMAT_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'MAT_ID'
      Visible = False
    end
    object qryDadosOrigemESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
      Visible = False
    end
    object qryDadosOrigemmarca_id: TIntegerField
      FieldName = 'marca_id'
    end
    object qryDadosOrigemFOR_CODI: TStringField
      FieldName = 'FOR_CODI'
      Size = 15
    end
    object qryDadosOrigemALMOX_ID: TIntegerField
      FieldName = 'ALMOX_ID'
    end
  end
  object dsDadosOrigem: TDataSource
    DataSet = qryDadosOrigem
    Left = 964
    Top = 372
  end
  object qrAddItemSelecionado: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <
      item
        Name = 'Req_Item_ID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'Mat_ID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'N_Lote'
        DataType = ftFixedChar
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'Valid'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = Null
      end
      item
        Name = 'Marca_ID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'For_Codi'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 15
        Value = Null
      end
      item
        Name = 'Local_ID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'Qtde'
        Attributes = [paSigned]
        DataType = ftFloat
        NumericScale = 255
        Precision = 15
        Size = 8
        Value = Null
      end
      item
        Name = 'Usuario'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 25
        Value = Null
      end
      item
        Name = 'Status'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end
      item
        Name = 'ALMOX_ID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'INSERT INTO Req_Lote'
      '           (Req_Item_ID'
      '           ,Mat_ID'
      '           ,N_Lote'
      '           ,Valid'
      '           ,Marca_ID'
      '           ,For_Codi'
      '           ,Local_ID'
      '           ,Qtde'
      '           ,Usuario'
      '           ,Status'
      '           ,ALMOX_ID)'
      '     VALUES'
      '           (:Req_Item_ID'
      '           ,:Mat_ID'
      '           ,:N_Lote'
      '           ,:Valid'
      '           ,:Marca_ID'
      '           ,:For_Codi'
      '           ,:Local_ID'
      '           ,:Qtde'
      '           ,:Usuario'
      '           ,:Status'
      '           ,:ALMOX_ID)')
    Left = 1260
    Top = 372
  end
  object qrApagaItem: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <
      item
        Name = 'Req_Item_ID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'DELETE FROM REQ_LOTE'
      'WHERE Req_Item_ID = :Req_Item_ID')
    Left = 956
    Top = 14
  end
  object qrAux2: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT TD_ID FROM TIPO_DOCUMENTO'
      'WHERE APELIDO = '#39'TFR'#39)
    Left = 1212
    Top = 244
    object qrAux2TD_ID: TAutoIncField
      FieldName = 'TD_ID'
      ReadOnly = True
    end
  end
  object qrLocal: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM LOCAL'
      'ORDER BY DESCRICAO')
    Left = 1174
    Top = 444
    object qrLocalDescricao: TStringField
      DisplayWidth = 50
      FieldName = 'Descricao'
      Size = 50
    end
    object qrLocalLocal_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'Local_ID'
      ReadOnly = True
    end
    object qrLocalDisponivelSN: TStringField
      DisplayWidth = 1
      FieldName = 'DisponivelSN'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object qrLocalCONSUMO: TStringField
      DisplayWidth = 1
      FieldName = 'CONSUMO'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object qrLocalCONTROLA_ESTOQUE: TStringField
      DisplayWidth = 1
      FieldName = 'CONTROLA_ESTOQUE'
      Visible = False
      FixedChar = True
      Size = 1
    end
  end
  object qrDevolucao: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'REQ_ID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT A.*, C.MAT_ID, C.MAT_DESC'
      'FROM REQ_LOTE A INNER JOIN REQ_ITEM B'
      'ON A.REQ_ITEM_ID = B.REQ_ITEM_ID INNER JOIN MATERIAIS C'
      'ON A.MAT_ID = C.MAT_ID'
      'WHERE B.REQ_ID = :REQ_ID'
      'AND B.STATUS = '#39'F'#39
      'AND (A.DEVOLUCAO IS NOT NULL AND A.DEVOLUCAO > 0)'
      'ORDER BY C.MAT_DESC')
    Left = 960
    Top = 120
    object qrDevolucaoMAT_DESC: TStringField
      DisplayLabel = 'Material'
      DisplayWidth = 40
      FieldName = 'MAT_DESC'
      Size = 60
    end
    object qrDevolucaoN_Lote: TWideStringField
      DisplayLabel = 'Lote'
      DisplayWidth = 15
      FieldName = 'N_Lote'
    end
    object qrDevolucaoValid: TDateTimeField
      DisplayLabel = 'Validade'
      DisplayWidth = 13
      FieldName = 'Valid'
      DisplayFormat = 'dd/mm/yy'
    end
    object qrDevolucaoQtde: TFloatField
      DisplayWidth = 12
      FieldName = 'Qtde'
    end
    object qrDevolucaoDevolucao: TFloatField
      DisplayLabel = 'Devoluc�o'
      DisplayWidth = 12
      FieldName = 'Devolucao'
    end
    object qrDevolucaoUsuario: TStringField
      DisplayLabel = 'Usu�rio'
      DisplayWidth = 25
      FieldName = 'Usuario'
      Visible = False
      Size = 25
    end
    object qrDevolucaoFor_Codi: TStringField
      DisplayWidth = 15
      FieldName = 'For_Codi'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object qrDevolucaoAux: TFloatField
      DisplayWidth = 10
      FieldName = 'Aux'
      Visible = False
    end
    object qrDevolucaoRR_ID: TAutoIncField
      FieldName = 'RR_ID'
      ReadOnly = True
      Visible = False
    end
    object qrDevolucaoReq_Item_ID: TIntegerField
      FieldName = 'Req_Item_ID'
      Visible = False
    end
    object qrDevolucaoMat_ID: TIntegerField
      FieldName = 'Mat_ID'
      Visible = False
    end
    object qrDevolucaoMarca_ID: TIntegerField
      FieldName = 'Marca_ID'
      Visible = False
    end
    object qrDevolucaoLocal_ID: TIntegerField
      FieldName = 'Local_ID'
      Visible = False
    end
    object qrDevolucaoStatus: TStringField
      FieldName = 'Status'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object qrDevolucaoMAT_ID_1: TAutoIncField
      DisplayWidth = 10
      FieldName = 'MAT_ID_1'
      ReadOnly = True
      Visible = False
    end
  end
  object dsDevolucao: TDataSource
    DataSet = qrDevolucao
    Left = 956
    Top = 68
  end
  object STP_COPY_REQUISICAO: TADOStoredProc
    Connection = FMenu.ADOConnection
    ProcedureName = 'COPY_REQUISICAO;1'
    Parameters = <
      item
        Name = '@REQ_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@NEW_REQ_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Direction = pdOutput
        Precision = 10
        Value = Null
      end>
    Left = 1134
    Top = 280
  end
  object qrAuxAdd: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'REQ_ID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT COUNT(*) AS ACHEI FROM REQ_ITEM'
      'WHERE REQ_ID = :REQ_ID AND STATUS = '#39'F'#39)
    Left = 1198
    Top = 152
    object qrAuxAddACHEI: TIntegerField
      FieldName = 'ACHEI'
      ReadOnly = True
    end
  end
  object qrLocalDest: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM LOCAL'
      'ORDER BY DESCRICAO')
    Left = 1054
    Top = 436
    object StringField2: TStringField
      DisplayWidth = 50
      FieldName = 'Descricao'
      Size = 50
    end
    object AutoIncField2: TAutoIncField
      DisplayWidth = 10
      FieldName = 'Local_ID'
      ReadOnly = True
    end
    object StringField3: TStringField
      DisplayWidth = 1
      FieldName = 'DisponivelSN'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object StringField4: TStringField
      DisplayWidth = 1
      FieldName = 'CONSUMO'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object StringField5: TStringField
      DisplayWidth = 1
      FieldName = 'CONTROLA_ESTOQUE'
      Visible = False
      FixedChar = True
      Size = 1
    end
  end
  object qrAux222: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    Left = 1260
    Top = 156
  end
  object qrSol: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <
      item
        Name = 'req'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select distinct SOL_ID FROM ITEM_SOLMATERIAL '
      'WHERE REQ_ID = :req')
    Left = 974
    Top = 508
    object qrSolSOL_ID: TIntegerField
      FieldName = 'SOL_ID'
    end
  end
  object STP_ConsultaEstoqueMax: TADOStoredProc
    Connection = FMenu.ADOConnection
    ProcedureName = 'CALCULA_ESTOQUE_MAXIMO;1'
    Parameters = <
      item
        Name = '@MAT_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@LOCAL_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 812
    Top = 60
    object STP_ConsultaEstoqueMaxRESULTADO: TBCDField
      FieldName = 'RESULTADO'
      ReadOnly = True
      Precision = 10
      Size = 2
    end
  end
  object qrAux_3: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    Left = 876
    Top = 44
  end
  object qrLocalArmazenamento: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT MAT_ID, LocalArmazem from materiais'
      'order by mat_id')
    Left = 1072
    Top = 496
    object qrLocalArmazenamentoMAT_ID: TAutoIncField
      FieldName = 'MAT_ID'
      ReadOnly = True
    end
    object qrLocalArmazenamentoLocalArmazem: TStringField
      FieldName = 'LocalArmazem'
      Size = 255
    end
  end
end
