object FRUsuarios: TFRUsuarios
  Left = 391
  Top = 100
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Usu�rios'
  ClientHeight = 543
  ClientWidth = 792
  Color = clBtnFace
  Constraints.MaxHeight = 581
  Constraints.MaxWidth = 808
  Constraints.MinHeight = 570
  Constraints.MinWidth = 800
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 37
    Width = 792
    Height = 487
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 33
      Height = 13
      Caption = '&Nome'
      FocusControl = edtNome
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 352
      Top = 16
      Width = 37
      Height = 13
      Caption = '&Senha'
      FocusControl = edtSenha
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtNome: TwwDBEdit
      Left = 16
      Top = 32
      Width = 277
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NOME'
      DataSource = dsUsuarios
      TabOrder = 0
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object edtSenha: TwwDBEdit
      Left = 352
      Top = 32
      Width = 266
      Height = 21
      DataField = 'SENHA'
      DataSource = dsUsuarios
      PasswordChar = '*'
      TabOrder = 1
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object trvMenu: TTreeView
      Left = 2
      Top = 62
      Width = 788
      Height = 423
      Align = alBottom
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      Indent = 19
      ParentFont = False
      RightClickSelect = True
      TabOrder = 2
      OnDblClick = trvMenuDblClick
      Items.Data = {
        050000001B00000000000000FFFFFFFF00000000FFFFFFFF0000000000000000
        0261311B00000000000000FFFFFFFF01000000FFFFFFFF000000000200000002
        61321B00000000000000FFFFFFFF02000000FFFFFFFF00000000000000000262
        321B00000000000000FFFFFFFF03000000FFFFFFFF0000000000000000026233
        1B00000000000000FFFFFFFF04000000FFFFFFFF00000000050000000261331B
        00000000000000FFFFFFFF05000000FFFFFFFF00000000000000000262341B00
        000000000000FFFFFFFF06000000FFFFFFFF00000000000000000262351B0000
        0000000000FFFFFFFF07000000FFFFFFFF00000000000000000262361B000000
        00000000FFFFFFFF08000000FFFFFFFF00000000020000000262371B00000000
        000000FFFFFFFF09000000FFFFFFFF00000000010000000263341B0000000000
        0000FFFFFFFF0A000000FFFFFFFF00000000000000000264351A000000000000
        00FFFFFFFF0B000000FFFFFFFF000000000000000001621B00000000000000FF
        FFFFFF0C000000FFFFFFFF00000000010000000262381B00000000000000FFFF
        FFFF0D000000FFFFFFFF00000000000000000263351B00000000000000000000
        000E000000FFFFFFFF00000000010000000261341B0000000000000000000000
        0F000000FFFFFFFF00000000000000000262391B000000000000000000000010
        000000FFFFFFFF0000000000000000026135}
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 792
    Height = 37
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 1
    object Label4: TLabel
      Left = 7
      Top = 8
      Width = 191
      Height = 23
      Caption = 'Cadastro de Usu�rios'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -20
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object btnRefresh: TSpeedButton
      Left = 704
      Top = 7
      Width = 26
      Height = 25
      Hint = 'Atualizar os dados.'
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
        3333333777333777FF33339993707399933333773337F3777FF3399933000339
        9933377333777F3377F3399333707333993337733337333337FF993333333333
        399377F33333F333377F993333303333399377F33337FF333373993333707333
        333377F333777F333333993333101333333377F333777F3FFFFF993333000399
        999377FF33777F77777F3993330003399993373FF3777F37777F399933000333
        99933773FF777F3F777F339993707399999333773F373F77777F333999999999
        3393333777333777337333333999993333333333377777333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = btnRefreshClick
    end
    object btnExpand: TSpeedButton
      Left = 731
      Top = 7
      Width = 26
      Height = 25
      Hint = 'Expande a �rvore.'
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00303333333333
        333337F3333333333333303333333333333337F33FFFFF3FF3FF303300000300
        300337FF77777F77377330000BBB0333333337777F337F33333330330BB00333
        333337F373F773333333303330033333333337F3377333333333303333333333
        333337F33FFFFF3FF3FF303300000300300337FF77777F77377330000BBB0333
        333337777F337F33333330330BB00333333337F373F773333333303330033333
        333337F3377333333333303333333333333337FFFF3FF3FFF333000003003000
        333377777F77377733330BBB0333333333337F337F33333333330BB003333333
        333373F773333333333330033333333333333773333333333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = btnExpandClick
    end
    object btnFechar: TSpeedButton
      Left = 757
      Top = 7
      Width = 26
      Height = 25
      Hint = 'Fechar cadastro.'
      Flat = True
      Glyph.Data = {
        76020000424D7602000000000000760000002800000040000000100000000100
        0400000000000002000000000000000000001000000000000000000000000000
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
      ParentShowHint = False
      ShowHint = True
      OnClick = btnFecharClick
    end
    object DN: TDBNavigator
      Left = 496
      Top = 7
      Width = 208
      Height = 25
      DataSource = dsUsuarios
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbPost, nbCancel]
      Flat = True
      Hints.Strings = (
        'Primeiro registro.'
        'Registro anterior.'
        'Pr�ximo registro.'
        '�ltimo registro.'
        'Incluir um novo registro.'
        'Apagar o registro.'
        'Editar o registro.'
        'Confirmar inclus�o ou altera��o.'
        'Cancelar inclus�o ou altera��o.'
        'Atualiza��o de dados.')
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      BeforeAction = DNBeforeAction
      OnClick = DNClick
    end
  end
  object SB: TStatusBar
    Left = 0
    Top = 524
    Width = 792
    Height = 19
    Panels = <>
    ParentShowHint = False
    ShowHint = False
    SimplePanel = True
    SizeGrip = False
  end
  object sqlUsuarios: TwwQuery
    CachedUpdates = True
    AfterPost = sqlUsuariosAfterPost
    AfterDelete = sqlUsuariosAfterPost
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'SELECT * FROM USUARIOFINANCEIRO'
      'ORDER BY NOME')
    UpdateObject = udtUsuarios
    ValidateWithMask = True
    Left = 215
    Top = 407
    object sqlUsuariosCH: TAutoIncField
      FieldName = 'CH'
      Origin = 'FINANCEIRO.USUARIOFINANCEIRO.CH'
    end
    object sqlUsuariosNOME: TStringField
      FieldName = 'NOME'
      Origin = 'FINANCEIRO.USUARIOFINANCEIRO.NOME'
      FixedChar = True
      Size = 40
    end
    object sqlUsuariosSENHA: TStringField
      FieldName = 'SENHA'
      Origin = 'FINANCEIRO.USUARIOFINANCEIRO.SENHA'
      FixedChar = True
      Size = 40
    end
    object sqlUsuariosTabelas: TStringField
      FieldName = 'Tabelas'
      Origin = 'FINANCEIRO.USUARIOFINANCEIRO.Tabelas'
      FixedChar = True
      Size = 1
    end
    object sqlUsuariosCentrosdeCusto: TStringField
      FieldName = 'CentrosdeCusto'
      Origin = 'FINANCEIRO.USUARIOFINANCEIRO.CentrosdeCusto'
      FixedChar = True
      Size = 1
    end
    object sqlUsuariosContasBancarias: TStringField
      FieldName = 'ContasBancarias'
      Origin = 'FINANCEIRO.USUARIOFINANCEIRO.ContasBancarias'
      FixedChar = True
      Size = 1
    end
    object sqlUsuariosPortadores: TStringField
      FieldName = 'Portadores'
      Origin = 'FINANCEIRO.USUARIOFINANCEIRO.Portadores'
      FixedChar = True
      Size = 1
    end
    object sqlUsuariosContasContabeis: TStringField
      FieldName = 'ContasContabeis'
      Origin = 'FINANCEIRO.USUARIOFINANCEIRO.ContasContabeis'
      FixedChar = True
      Size = 1
    end
    object sqlUsuariosContasGerencial: TStringField
      FieldName = 'ContasGerencial'
      Origin = 'FINANCEIRO.USUARIOFINANCEIRO.ContasGerencial'
      FixedChar = True
      Size = 1
    end
    object sqlUsuariosDescontoAcrescimo: TStringField
      FieldName = 'DescontoAcrescimo'
      Origin = 'FINANCEIRO.USUARIOFINANCEIRO.DescontoAcrescimo'
      FixedChar = True
      Size = 1
    end
    object sqlUsuariosMoedas: TStringField
      FieldName = 'Moedas'
      Origin = 'FINANCEIRO.USUARIOFINANCEIRO.Moedas'
      FixedChar = True
      Size = 1
    end
    object sqlUsuariosListagens: TStringField
      FieldName = 'Listagens'
      Origin = 'FINANCEIRO.USUARIOFINANCEIRO.Listagens'
      FixedChar = True
      Size = 1
    end
    object sqlUsuariosListCentrosCusto: TStringField
      FieldName = 'ListCentrosCusto'
      Origin = 'FINANCEIRO.USUARIOFINANCEIRO.ListCentrosCusto'
      FixedChar = True
      Size = 1
    end
    object sqlUsuariosListContasBancarias: TStringField
      FieldName = 'ListContasBancarias'
      Origin = 'FINANCEIRO.USUARIOFINANCEIRO.ListContasBancarias'
      FixedChar = True
      Size = 1
    end
    object sqlUsuariosListContasGerenciais: TStringField
      FieldName = 'ListContasGerenciais'
      Origin = 'FINANCEIRO.USUARIOFINANCEIRO.ListContasGerenciais'
      FixedChar = True
      Size = 1
    end
    object sqlUsuariosListDescontoAcrescimo: TStringField
      FieldName = 'ListDescontoAcrescimo'
      Origin = 'FINANCEIRO.USUARIOFINANCEIRO.ListDescontoAcrescimo'
      FixedChar = True
      Size = 1
    end
    object sqlUsuariosListFeriados: TStringField
      FieldName = 'ListFeriados'
      Origin = 'FINANCEIRO.USUARIOFINANCEIRO.ListFeriados'
      FixedChar = True
      Size = 1
    end
    object sqlUsuariosListFormaPagamento: TStringField
      FieldName = 'ListFormaPagamento'
      Origin = 'FINANCEIRO.USUARIOFINANCEIRO.ListFormaPagamento'
      FixedChar = True
      Size = 1
    end
    object sqlUsuariosListLayoCheques: TStringField
      FieldName = 'ListLayoCheques'
      Origin = 'FINANCEIRO.USUARIOFINANCEIRO.ListLayoCheques'
      FixedChar = True
      Size = 1
    end
    object sqlUsuariosListMoedas: TStringField
      FieldName = 'ListMoedas'
      Origin = 'FINANCEIRO.USUARIOFINANCEIRO.ListMoedas'
      FixedChar = True
      Size = 1
    end
    object sqlUsuariosCadastros: TStringField
      FieldName = 'Cadastros'
      Origin = 'FINANCEIRO.USUARIOFINANCEIRO.Cadastros'
      FixedChar = True
      Size = 1
    end
    object sqlUsuariosClientes: TStringField
      FieldName = 'Clientes'
      Origin = 'FINANCEIRO.USUARIOFINANCEIRO.Clientes'
      FixedChar = True
      Size = 1
    end
    object sqlUsuariosFornecedores: TStringField
      FieldName = 'Fornecedores'
      Origin = 'FINANCEIRO.USUARIOFINANCEIRO.Fornecedores'
      FixedChar = True
      Size = 1
    end
    object sqlUsuariosListagensCadastros: TStringField
      FieldName = 'ListagensCadastros'
      Origin = 'FINANCEIRO.USUARIOFINANCEIRO.ListagensCadastros'
      FixedChar = True
      Size = 1
    end
    object sqlUsuariosListClientes: TStringField
      FieldName = 'ListClientes'
      Origin = 'FINANCEIRO.USUARIOFINANCEIRO.ListClientes'
      FixedChar = True
      Size = 1
    end
    object sqlUsuariosListFornecedores: TStringField
      FieldName = 'ListFornecedores'
      Origin = 'FINANCEIRO.USUARIOFINANCEIRO.ListFornecedores'
      FixedChar = True
      Size = 1
    end
    object sqlUsuariosRecebimentos: TStringField
      FieldName = 'Recebimentos'
      Origin = 'FINANCEIRO.USUARIOFINANCEIRO.Recebimentos'
      FixedChar = True
      Size = 1
    end
    object sqlUsuariosCadastroRecebimento: TStringField
      FieldName = 'CadastroRecebimento'
      Origin = 'FINANCEIRO.USUARIOFINANCEIRO.CadastroRecebimento'
      FixedChar = True
      Size = 1
    end
    object sqlUsuariosRelatorioRecebimento: TStringField
      FieldName = 'RelatorioRecebimento'
      Origin = 'FINANCEIRO.USUARIOFINANCEIRO.RelatorioRecebimento'
      FixedChar = True
      Size = 1
    end
    object sqlUsuariosPagamentos: TStringField
      FieldName = 'Pagamentos'
      Origin = 'FINANCEIRO.USUARIOFINANCEIRO.Pagamentos'
      FixedChar = True
      Size = 1
    end
    object sqlUsuariosCadastroPagamento: TStringField
      FieldName = 'CadastroPagamento'
      Origin = 'FINANCEIRO.USUARIOFINANCEIRO.CadastroPagamento'
      FixedChar = True
      Size = 1
    end
    object sqlUsuariosRelatorioPagamento: TStringField
      FieldName = 'RelatorioPagamento'
      Origin = 'FINANCEIRO.USUARIOFINANCEIRO.RelatorioPagamento'
      FixedChar = True
      Size = 1
    end
    object sqlUsuariosMovimentacao: TStringField
      FieldName = 'Movimentacao'
      Origin = 'FINANCEIRO.USUARIOFINANCEIRO.Movimentacao'
      FixedChar = True
      Size = 1
    end
    object sqlUsuariosCadastroMovimentcao: TStringField
      FieldName = 'CadastroMovimentcao'
      Origin = 'FINANCEIRO.USUARIOFINANCEIRO.CadastroMovimentcao'
      FixedChar = True
      Size = 1
    end
    object sqlUsuariosTransAplicResg: TStringField
      FieldName = 'TransAplicResg'
      Origin = 'FINANCEIRO.USUARIOFINANCEIRO.TransAplicResg'
      FixedChar = True
      Size = 1
    end
    object sqlUsuariosDataDebitoCredito: TStringField
      FieldName = 'DataDebitoCredito'
      Origin = 'FINANCEIRO.USUARIOFINANCEIRO.DataDebitoCredito'
      FixedChar = True
      Size = 1
    end
    object sqlUsuariosConciliacaoBancaria: TStringField
      FieldName = 'ConciliacaoBancaria'
      Origin = 'FINANCEIRO.USUARIOFINANCEIRO.ConciliacaoBancaria'
      FixedChar = True
      Size = 1
    end
    object sqlUsuariosRelatorioMovimentacao: TStringField
      FieldName = 'RelatorioMovimentacao'
      Origin = 'FINANCEIRO.USUARIOFINANCEIRO.RelatorioMovimentacao'
      FixedChar = True
      Size = 1
    end
    object sqlUsuariosListMovimentacao: TStringField
      FieldName = 'ListMovimentacao'
      Origin = 'FINANCEIRO.USUARIOFINANCEIRO.ListMovimentacao'
      FixedChar = True
      Size = 1
    end
    object sqlUsuariosListTransferencia: TStringField
      FieldName = 'ListTransferencia'
      Origin = 'FINANCEIRO.USUARIOFINANCEIRO.ListTransferencia'
      FixedChar = True
      Size = 1
    end
    object sqlUsuariosCheques: TStringField
      FieldName = 'Cheques'
      Origin = 'FINANCEIRO.USUARIOFINANCEIRO.Cheques'
      FixedChar = True
      Size = 1
    end
    object sqlUsuariosCadastroCheque: TStringField
      FieldName = 'CadastroCheque'
      Origin = 'FINANCEIRO.USUARIOFINANCEIRO.CadastroCheque'
      FixedChar = True
      Size = 1
    end
    object sqlUsuariosChequesBorderos: TStringField
      FieldName = 'ChequesBorderos'
      Origin = 'FINANCEIRO.USUARIOFINANCEIRO.ChequesBorderos'
      FixedChar = True
      Size = 1
    end
    object sqlUsuariosEmissaoCheques: TStringField
      FieldName = 'EmissaoCheques'
      Origin = 'FINANCEIRO.USUARIOFINANCEIRO.EmissaoCheques'
      FixedChar = True
      Size = 1
    end
    object sqlUsuariosCancelamentos: TStringField
      FieldName = 'Cancelamentos'
      Origin = 'FINANCEIRO.USUARIOFINANCEIRO.Cancelamentos'
      FixedChar = True
      Size = 1
    end
    object sqlUsuariosRelatoriosCheques: TStringField
      FieldName = 'RelatoriosCheques'
      Origin = 'FINANCEIRO.USUARIOFINANCEIRO.RelatoriosCheques'
      FixedChar = True
      Size = 1
    end
    object sqlUsuariosConsultaCheques: TStringField
      FieldName = 'ConsultaCheques'
      Origin = 'FINANCEIRO.USUARIOFINANCEIRO.ConsultaCheques'
      FixedChar = True
      Size = 1
    end
    object sqlUsuariosUtilitarios: TStringField
      FieldName = 'Utilitarios'
      Origin = 'FINANCEIRO.USUARIOFINANCEIRO.Utilitarios'
      FixedChar = True
      Size = 1
    end
    object sqlUsuariosParametros: TStringField
      FieldName = 'Parametros'
      Origin = 'FINANCEIRO.USUARIOFINANCEIRO.Parametros'
      FixedChar = True
      Size = 1
    end
    object sqlUsuariosSair: TStringField
      FieldName = 'Sair'
      Origin = 'FINANCEIRO.USUARIOFINANCEIRO.Sair'
      FixedChar = True
      Size = 1
    end
    object sqlUsuariosUSuarios: TStringField
      FieldName = 'USuarios'
      Origin = 'FINANCEIRO.USUARIOFINANCEIRO.USuarios'
      FixedChar = True
      Size = 1
    end
    object sqlUsuariosEtiquetas: TStringField
      FieldName = 'Etiquetas'
      Origin = 'FINANCEIRO.USUARIOFINANCEIRO.Etiquetas'
      FixedChar = True
      Size = 1
    end
    object sqlUsuariosMovimentoDiario: TStringField
      FieldName = 'MovimentoDiario'
      Origin = 'FINANCEIRO.USUARIOFINANCEIRO.MovimentoDiario'
      FixedChar = True
      Size = 1
    end
    object sqlUsuariosLeituraBanco1: TStringField
      FieldName = 'LeituraBanco1'
      Origin = 'FINANCEIRO.USUARIOFINANCEIRO.LeituraBanco1'
      FixedChar = True
      Size = 1
    end
    object sqlUsuariosGeraBanco1: TStringField
      FieldName = 'GeraBanco1'
      Origin = 'FINANCEIRO.USUARIOFINANCEIRO.GeraBanco1'
      FixedChar = True
      Size = 1
    end
    object sqlUsuariosPortadores1: TStringField
      FieldName = 'Portadores1'
      Origin = 'FINANCEIRO.USUARIOFINANCEIRO.Portadores1'
      FixedChar = True
      Size = 1
    end
    object sqlUsuariosContasContabeis1: TStringField
      FieldName = 'ContasContabeis1'
      Origin = 'FINANCEIRO.USUARIOFINANCEIRO.CH'
      FixedChar = True
      Size = 1
    end
    object sqlUsuariosChequePre: TStringField
      FieldName = 'ChequePre'
      Origin = 'FINANCEIRO.USUARIOFINANCEIRO.ChequePre'
      FixedChar = True
      Size = 1
    end
    object sqlUsuariosPagamentos1: TStringField
      FieldName = 'Pagamentos1'
      Origin = 'FINANCEIRO.USUARIOFINANCEIRO.Pagamentos1'
      FixedChar = True
      Size = 1
    end
    object sqlUsuariosfluxodecaixa: TStringField
      FieldName = 'fluxodecaixa'
      Origin = 'FINANCEIRO.USUARIOFINANCEIRO.fluxodecaixa'
      FixedChar = True
      Size = 1
    end
    object sqlUsuariosUnidadesdaFederao: TStringField
      FieldName = 'UnidadesdaFederao'
      Origin = 'FINANCEIRO.USUARIOFINANCEIRO.UnidadesdaFederao'
      FixedChar = True
      Size = 1
    end
    object sqlUsuariosEmpresas: TStringField
      FieldName = 'Empresas'
      Origin = 'FINANCEIRO.USUARIOFINANCEIRO.CH'
      FixedChar = True
      Size = 1
    end
    object sqlUsuariosFeriados: TStringField
      FieldName = 'Feriados'
      Origin = 'FINANCEIRO.USUARIOFINANCEIRO.Feriados'
      FixedChar = True
      Size = 1
    end
    object sqlUsuariosFormasdePagamento: TStringField
      FieldName = 'FormasdePagamento'
      Origin = 'FINANCEIRO.USUARIOFINANCEIRO.FormasdePagamento'
      FixedChar = True
      Size = 1
    end
    object sqlUsuariosLayoutCheques: TStringField
      FieldName = 'LayoutCheques'
      Origin = 'FINANCEIRO.USUARIOFINANCEIRO.LayoutCheques'
      FixedChar = True
      Size = 1
    end
    object sqlUsuariosLoteRecebimento: TStringField
      FieldName = 'LoteRecebimento'
      Origin = 'FINANCEIRO.USUARIOFINANCEIRO.LoteRecebimento'
      FixedChar = True
      Size = 1
    end
    object sqlUsuariosLotePagamento: TStringField
      FieldName = 'LotePagamento'
      Origin = 'FINANCEIRO.USUARIOFINANCEIRO.LotePagamento'
      FixedChar = True
      Size = 1
    end
    object sqlUsuariosNotasFiscais1: TStringField
      FieldName = 'NotasFiscais1'
      Origin = 'FINANCEIRO.USUARIOFINANCEIRO.NotasFiscais1'
      FixedChar = True
      Size = 1
    end
    object sqlUsuariosSubconta: TStringField
      FieldName = 'Subconta'
      Origin = 'FINANCEIRO.USUARIOFINANCEIRO.Subconta'
      FixedChar = True
      Size = 1
    end
    object sqlUsuariosRateio: TStringField
      FieldName = 'Rateio'
      Origin = 'FINANCEIRO.USUARIOFINANCEIRO.Rateio'
      FixedChar = True
      Size = 1
    end
    object sqlUsuariosContaentreEmpresas: TStringField
      FieldName = 'ContaentreEmpresas'
      Origin = 'FINANCEIRO.USUARIOFINANCEIRO.ContaentreEmpresas'
      FixedChar = True
      Size = 1
    end
    object sqlUsuariosRelatoriodeRateios: TStringField
      FieldName = 'RelatoriodeRateios'
      Origin = 'FINANCEIRO.USUARIOFINANCEIRO.RelatoriodeRateios'
      FixedChar = True
      Size = 1
    end
    object sqlUsuariosBANCOFOR: TStringField
      FieldName = 'BANCOFOR'
      Origin = 'FINANCEIRO.USUARIOFINANCEIRO.BANCOFOR'
      FixedChar = True
      Size = 1
    end
    object sqlUsuariosRelatoriodeContas: TStringField
      FieldName = 'RelatoriodeContas'
      Origin = 'FINANCEIRO.USUARIOFINANCEIRO.RelatoriodeContas'
      FixedChar = True
      Size = 1
    end
    object sqlUsuariosGerMov: TStringField
      FieldName = 'GerMov'
      Origin = 'FINANCEIRO.USUARIOFINANCEIRO.CH'
      FixedChar = True
      Size = 1
    end
    object sqlUsuarioseminf: TStringField
      FieldName = 'eminf'
      Origin = 'FINANCEIRO.USUARIOFINANCEIRO.eminf'
      FixedChar = True
      Size = 1
    end
    object sqlUsuariosGerencialdePagamentosAnual1: TStringField
      FieldName = 'GerencialdePagamentosAnual1'
      Origin = 'FINANCEIRO.USUARIOFINANCEIRO.GerencialdePagamentosAnual1'
      FixedChar = True
      Size = 1
    end
    object sqlUsuariosGerencialdeMovimentaoAnual1: TStringField
      FieldName = 'GerencialdeMovimentaoAnual1'
      Origin = 'FINANCEIRO.USUARIOFINANCEIRO.GerencialdeMovimentaoAnual1'
      FixedChar = True
      Size = 1
    end
    object sqlUsuariosRelatrios1: TStringField
      FieldName = 'Relatrios1'
      Origin = 'FINANCEIRO.USUARIOFINANCEIRO.Relatrios1'
      FixedChar = True
      Size = 1
    end
    object sqlUsuariosRelTranferencia: TStringField
      FieldName = 'RelTranferencia'
      Origin = 'FINANCEIRO.USUARIOFINANCEIRO.RelTranferencia'
      FixedChar = True
      Size = 1
    end
    object sqlUsuariosLIBERACONCILIACAO: TStringField
      FieldName = 'LIBERACONCILIACAO'
      Origin = 'FINANCEIRO.USUARIOFINANCEIRO.LIBERACONCILIACAO'
      FixedChar = True
      Size = 1
    end
    object sqlUsuariosBaixaCartao: TStringField
      FieldName = 'BaixaCartao'
      Origin = 'FINANCEIRO.USUARIOFINANCEIRO.BaixaCartao'
      FixedChar = True
      Size = 1
    end
    object sqlUsuariosAtualizaDebito: TStringField
      FieldName = 'AtualizaDebito'
      Origin = 'FINANCEIRO.USUARIOFINANCEIRO.AtualizaDebito'
      FixedChar = True
      Size = 1
    end
    object sqlUsuariosAtualizaCredito: TStringField
      FieldName = 'AtualizaCredito'
      Origin = 'FINANCEIRO.USUARIOFINANCEIRO.AtualizaCredito'
      FixedChar = True
      Size = 1
    end
    object sqlUsuariosNF_MULTIMED: TStringField
      FieldName = 'NF_MULTIMED'
      Origin = 'FINANCEIRO.USUARIOFINANCEIRO.NF_MULTIMED'
      FixedChar = True
      Size = 1
    end
    object sqlUsuariosLancamentoCaixa: TStringField
      FieldName = 'LancamentoCaixa'
      FixedChar = True
      Size = 1
    end
    object sqlUsuariosRelReceCentroCusto: TStringField
      FieldName = 'RelReceCentroCusto'
      FixedChar = True
      Size = 1
    end
    object sqlUsuariosRelPagaCentroCusto: TStringField
      FieldName = 'RelPagaCentroCusto'
      FixedChar = True
      Size = 1
    end
    object sqlUsuariosDespesas: TStringField
      FieldName = 'Despesas'
      FixedChar = True
      Size = 1
    end
    object sqlUsuariosRetornoCNAB: TStringField
      FieldName = 'RetornoCNAB'
      FixedChar = True
      Size = 1
    end
    object sqlUsuariosFaturamentoMultimed: TStringField
      FieldName = 'FaturamentoMultimed'
      FixedChar = True
      Size = 1
    end
  end
  object dsUsuarios: TwwDataSource
    DataSet = sqlUsuarios
    OnStateChange = dsUsuariosStateChange
    OnDataChange = dsUsuariosDataChange
    Left = 288
    Top = 407
  end
  object udtUsuarios: TUpdateSQL
    ModifySQL.Strings = (
      'update USUARIOFINANCEIRO'
      'set'
      '  NOME = :NOME,'
      '  SENHA = :SENHA,'
      '  Tabelas = :Tabelas,'
      '  CentrosdeCusto = :CentrosdeCusto,'
      '  ContasBancarias = :ContasBancarias,'
      '  Portadores = :Portadores,'
      '  ContasContabeis = :ContasContabeis,'
      '  ContasGerencial = :ContasGerencial,'
      '  Feriados = :Feriados,'
      '  DescontoAcrescimo = :DescontoAcrescimo,'
      '  FormasdePagamento = :FormasdePagamento,'
      '  LayoutCheques = :LayoutCheques,'
      '  Moedas = :Moedas,'
      '  Listagens = :Listagens,'
      '  ListCentrosCusto = :ListCentrosCusto,'
      '  ListContasBancarias = :ListContasBancarias,'
      '  ListContasGerenciais = :ListContasGerenciais,'
      '  ListDescontoAcrescimo = :ListDescontoAcrescimo,'
      '  ListFeriados = :ListFeriados,'
      '  ListFormaPagamento = :ListFormaPagamento,'
      '  ListLayoCheques = :ListLayoCheques,'
      '  ListMoedas = :ListMoedas,'
      '  Cadastros = :Cadastros,'
      '  Clientes = :Clientes,'
      '  Fornecedores = :Fornecedores,'
      '  ListagensCadastros = :ListagensCadastros,'
      '  ListClientes = :ListClientes,'
      '  ListFornecedores = :ListFornecedores,'
      '  Recebimentos = :Recebimentos,'
      '  CadastroRecebimento = :CadastroRecebimento,'
      '  RelatorioRecebimento = :RelatorioRecebimento,'
      '  LoteRecebimento = :LoteRecebimento,'
      '  Pagamentos = :Pagamentos,'
      '  CadastroPagamento = :CadastroPagamento,'
      '  RelatorioPagamento = :RelatorioPagamento,'
      '  LotePagamento = :LotePagamento,'
      '  Movimentacao = :Movimentacao,'
      '  CadastroMovimentcao = :CadastroMovimentcao,'
      '  TransAplicResg = :TransAplicResg,'
      '  DataDebitoCredito = :DataDebitoCredito,'
      '  ConciliacaoBancaria = :ConciliacaoBancaria,'
      '  RelatorioMovimentacao = :RelatorioMovimentacao,'
      '  ListMovimentacao = :ListMovimentacao,'
      '  ListTransferencia = :ListTransferencia,'
      '  Cheques = :Cheques,'
      '  CadastroCheque = :CadastroCheque,'
      '  ChequesBorderos = :ChequesBorderos,'
      '  EmissaoCheques = :EmissaoCheques,'
      '  Cancelamentos = :Cancelamentos,'
      '  RelatoriosCheques = :RelatoriosCheques,'
      '  ConsultaCheques = :ConsultaCheques,'
      '  Utilitarios = :Utilitarios,'
      '  Parametros = :Parametros,'
      '  USuarios = :USuarios,'
      '  Etiquetas = :Etiquetas,'
      '  Sair = :Sair,'
      '  NotasFiscais1 = :NotasFiscais1,'
      '  MovimentoDiario = :MovimentoDiario,'
      '  LeituraBanco1 = :LeituraBanco1,'
      '  GeraBanco1 = :GeraBanco1,'
      '  Portadores1 = :Portadores1,'
      '  ContasContabeis1 = :ContasContabeis1,'
      '  Pagamentos1 = :Pagamentos1,'
      '  ChequePre = :ChequePre,'
      '  fluxodecaixa = :fluxodecaixa,'
      '  UNIDADESDAFEDERAO = :UNIDADESDAFEDERAO,'
      '  EMPRESAS = :EMPRESAS,'
      '  SUBCONTA = :SUBCONTA,'
      '  CONTAENTREEMPRESAS = :CONTAENTREEMPRESAS,'
      '  RELATORIODERATEIOS = :RELATORIODERATEIOS,'
      '  RATEIO = :RATEIO,'
      '  BANCOFOR = :BANCOFOR,'
      '  RelatoriodeContas = :RelatoriodeContas,'
      '  GerMov = :GerMov,'
      '  eminf = :eminf,'
      '  GerencialdePagamentosAnual1 = :GerencialdePagamentosAnual1,'
      '  GerencialdeMovimentaoAnual1 = :GerencialdeMovimentaoAnual1,'
      '  Relatrios1 = :Relatrios1,'
      '  LIBERACONCILIACAO = :LIBERACONCILIACAO,'
      '  BaixaCartao = :BaixaCartao,'
      '  AtualizaDebito = :atualizadebito,'
      '  atualizaCredito = :atualizacredito,'
      '  NF_MULTIMED = :NF_MULTIMED,'
      '  LancamentoCaixa = :LancamentoCaixa,'
      '  RelReceCentroCusto = :RelReceCentroCusto,'
      '  RelPagaCentroCusto = :RelPagaCentroCusto,'
      'Despesas = :Despesas,'
      'RetornoCNAB = :RetornoCNAB,'
      'FaturamentoMultimed = :FaturamentoMultimed'
      'where'
      '  CH = :OLD_CH')
    InsertSQL.Strings = (
      'insert into USUARIOFINANCEIRO'
      
        '  (NOME, SENHA, Tabelas, CentrosdeCusto, ContasBancarias, Portad' +
        'ores, '
      'ContasContabeis, '
      
        '   ContasGerencial, Feriados, DescontoAcrescimo, FormasdePagamen' +
        'to, '
      'LayoutCheques, '
      
        '   Moedas, Listagens, ListCentrosCusto, ListContasBancarias, Lis' +
        'tContasGerenciais, '
      
        '   ListDescontoAcrescimo, ListFeriados, ListFormaPagamento, List' +
        'LayoCheques, '
      
        '   ListMoedas, Cadastros, Clientes, Fornecedores, ListagensCadas' +
        'tros, ListClientes, '
      
        '   ListFornecedores, Recebimentos, CadastroRecebimento, Relatori' +
        'oRecebimento, '
      
        '   LoteRecebimento, Pagamentos, CadastroPagamento, RelatorioPaga' +
        'mento, '
      
        '   LotePagamento, Movimentacao, CadastroMovimentcao, TransAplicR' +
        'esg, '
      'DataDebitoCredito, '
      
        '   ConciliacaoBancaria, RelatorioMovimentacao, ListMovimentacao,' +
        ' ListTransferencia, '
      
        '   Cheques, CadastroCheque, ChequesBorderos, EmissaoCheques, Can' +
        'celamentos, '
      
        '   RelatoriosCheques, ConsultaCheques, Utilitarios, Parametros, ' +
        'USuarios, '
      
        '   Etiquetas, Sair, NotasFiscais1, MovimentoDiario, LeituraBanco' +
        '1, GeraBanco1, '
      
        '   Portadores1, ContasContabeis1, Pagamentos1, ChequePre, fluxod' +
        'ecaixa, '
      '   UNIDADESDAFEDERAO, EMPRESAS, SUBCONTA, CONTAENTREEMPRESAS, '
      'RELATORIODERATEIOS, '
      '   RATEIO, BANCOFOR, RelatoriodeContas, GerMov, eminf, '
      'GerencialdePagamentosAnual1, '
      '   GerencialdeMovimentaoAnual1, Relatrios1,'
      
        'LIBERACONCILIACAO, BaixaCartao, RelReceCentroCusto, RelPagaCentr' +
        'oCusto, '
      'Despesas, RetornoCNAB, FaturamentoMultimed)'
      'values'
      
        '  (:NOME, :SENHA, :Tabelas, :CentrosdeCusto, :ContasBancarias, :' +
        'Portadores, '
      
        '   :ContasContabeis, :ContasGerencial, :Feriados, :DescontoAcres' +
        'cimo, '
      ':FormasdePagamento, '
      
        '   :LayoutCheques, :Moedas, :Listagens, :ListCentrosCusto, :List' +
        'ContasBancarias, '
      
        '   :ListContasGerenciais, :ListDescontoAcrescimo, :ListFeriados,' +
        ' :ListFormaPagamento, '
      
        '   :ListLayoCheques, :ListMoedas, :Cadastros, :Clientes, :Fornec' +
        'edores, '
      
        '   :ListagensCadastros, :ListClientes, :ListFornecedores, :Receb' +
        'imentos, '
      
        '   :CadastroRecebimento, :RelatorioRecebimento, :LoteRecebimento' +
        ', :Pagamentos, '
      
        '   :CadastroPagamento, :RelatorioPagamento, :LotePagamento, :Mov' +
        'imentacao, '
      
        '   :CadastroMovimentcao, :TransAplicResg, :DataDebitoCredito, :C' +
        'onciliacaoBancaria, '
      
        '   :RelatorioMovimentacao, :ListMovimentacao, :ListTransferencia' +
        ', :Cheques, '
      
        '   :CadastroCheque, :ChequesBorderos, :EmissaoCheques, :Cancelam' +
        'entos, '
      
        '   :RelatoriosCheques, :ConsultaCheques, :Utilitarios, :Parametr' +
        'os, :USuarios, '
      
        '   :Etiquetas, :Sair, :NotasFiscais1, :MovimentoDiario, :Leitura' +
        'Banco1, '
      
        '   :GeraBanco1, :Portadores1, :ContasContabeis1, :Pagamentos1, :' +
        'ChequePre, '
      '   :fluxodecaixa, :UNIDADESDAFEDERAO, :EMPRESAS, :SUBCONTA, '
      ':CONTAENTREEMPRESAS, '
      
        '   :RELATORIODERATEIOS, :RATEIO, :BANCOFOR, :RelatoriodeContas, ' +
        ':GerMov, '
      
        '   :eminf, :GerencialdePagamentosAnual1, :GerencialdeMovimentaoA' +
        'nual1, '
      '   :Relatrios1,'
      
        ':LIBERACONCILIACAO, :BaixaCartao, :RelReceCentroCusto, :RelPagaC' +
        'entroCusto, '
      ':Despesas, :RetornoCNAB, :FaturamentoMultimed)')
    DeleteSQL.Strings = (
      'delete from USUARIOFINANCEIRO'
      'where'
      '  CH = :OLD_CH')
    Left = 361
    Top = 407
  end
end
