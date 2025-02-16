object frmContratoFretePesq: TfrmContratoFretePesq
  Left = 274
  Top = 84
  BorderStyle = bsDialog
  Caption = 'Contrato de Frete'
  ClientHeight = 562
  ClientWidth = 884
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 25
    Height = 14
    Caption = 'Data'
  end
  object Label2: TLabel
    Left = 104
    Top = 8
    Width = 20
    Height = 14
    Caption = 'At�'
  end
  object Label3: TLabel
    Left = 192
    Top = 8
    Width = 32
    Height = 14
    Caption = 'Nome'
  end
  object MaskEdit1: TMaskEdit
    Left = 16
    Top = 24
    Width = 81
    Height = 22
    EditMask = '99/99/9999'
    MaxLength = 10
    TabOrder = 0
    Text = '  /  /    '
  end
  object MaskEdit2: TMaskEdit
    Left = 104
    Top = 24
    Width = 81
    Height = 22
    EditMask = '99/99/9999'
    MaxLength = 10
    TabOrder = 1
    Text = '  /  /    '
  end
  object MaskEdit3: TMaskEdit
    Left = 192
    Top = 24
    Width = 257
    Height = 22
    TabOrder = 2
  end
  object Button1: TButton
    Left = 458
    Top = 22
    Width = 75
    Height = 25
    Caption = 'Buscar'
    TabOrder = 3
    OnClick = Button1Click
  end
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 56
    Width = 884
    Height = 506
    Selected.Strings = (
      'Data'#9'15'#9'Data'#9#9
      'NumeroContrato'#9'20'#9'NumeroContrato'#9#9
      'Razao'#9'60'#9'Razao'#9'F'#9
      'CNPJ_CPF'#9'15'#9'CNPJ_CPF'#9#9)
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alBottom
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 4
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnDblClick = wwDBGrid1DblClick
  end
  object Button2: TButton
    Left = 552
    Top = 23
    Width = 161
    Height = 25
    Caption = 'Novo Contrato'
    TabOrder = 5
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 728
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Imprimir'
    TabOrder = 6
    OnClick = Button3Click
  end
  object qrBusca: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select   * from contratofrete order by data desc')
    Left = 520
    Top = 232
    object qrBuscaIdContratoFrete: TAutoIncField
      FieldName = 'IdContratoFrete'
      ReadOnly = True
    end
    object qrBuscaTipoContrato: TStringField
      FieldName = 'TipoContrato'
      Size = 255
    end
    object qrBuscaNumeroContrato: TStringField
      FieldName = 'NumeroContrato'
      Size = 255
    end
    object qrBuscaData: TDateTimeField
      FieldName = 'Data'
    end
    object qrBuscaRota: TStringField
      FieldName = 'Rota'
      Size = 255
    end
    object qrBuscaPrevisaoEntrega: TStringField
      FieldName = 'PrevisaoEntrega'
      Size = 255
    end
    object qrBuscaOrigem: TStringField
      FieldName = 'Origem'
      Size = 255
    end
    object qrBuscaDestino: TStringField
      FieldName = 'Destino'
      Size = 255
    end
    object qrBuscaCIOT: TStringField
      FieldName = 'CIOT'
      Size = 255
    end
    object qrBuscaCTE: TStringField
      FieldName = 'CTE'
      Size = 255
    end
    object qrBuscaRazao: TStringField
      FieldName = 'Razao'
      Size = 255
    end
    object qrBuscaTipoPessoa: TStringField
      FieldName = 'TipoPessoa'
      Size = 255
    end
    object qrBuscaCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 255
    end
    object qrBuscaIE_RG: TStringField
      FieldName = 'IE_RG'
      Size = 255
    end
    object qrBuscaIM_PIS: TStringField
      FieldName = 'IM_PIS'
      Size = 255
    end
    object qrBuscaRNTRC: TStringField
      FieldName = 'RNTRC'
      Size = 255
    end
    object qrBuscavalRNTRC: TStringField
      FieldName = 'valRNTRC'
      Size = 255
    end
    object qrBuscaEndereco: TStringField
      FieldName = 'Endereco'
      Size = 255
    end
    object qrBuscaCEP: TStringField
      FieldName = 'CEP'
      Size = 255
    end
    object qrBuscaTelefone: TStringField
      FieldName = 'Telefone'
      Size = 255
    end
    object qrBuscaEmail: TStringField
      FieldName = 'Email'
      Size = 255
    end
    object qrBuscaBanco: TStringField
      FieldName = 'Banco'
      Size = 255
    end
    object qrBuscaAgencia: TStringField
      FieldName = 'Agencia'
      Size = 255
    end
    object qrBuscaContaBancaria: TStringField
      FieldName = 'ContaBancaria'
      Size = 255
    end
    object qrBuscaTipoConta: TStringField
      FieldName = 'TipoConta'
      Size = 255
    end
    object qrBuscaPlaca: TStringField
      FieldName = 'Placa'
      Size = 255
    end
    object qrBuscaChassi: TStringField
      FieldName = 'Chassi'
      Size = 255
    end
    object qrBuscaMarca: TStringField
      FieldName = 'Marca'
      Size = 255
    end
    object qrBuscaAno: TStringField
      FieldName = 'Ano'
      Size = 255
    end
    object qrBuscaRenavam: TStringField
      FieldName = 'Renavam'
      Size = 255
    end
    object qrBuscaMotorista: TStringField
      FieldName = 'Motorista'
      Size = 255
    end
    object qrBuscaMotoristaDtNas: TDateTimeField
      FieldName = 'MotoristaDtNas'
    end
    object qrBuscaMotoristaTelefone: TStringField
      FieldName = 'MotoristaTelefone'
      Size = 255
    end
    object qrBuscaMotoristaCPF: TStringField
      FieldName = 'MotoristaCPF'
      Size = 255
    end
    object qrBuscaMotoristaRG: TStringField
      FieldName = 'MotoristaRG'
      Size = 255
    end
    object qrBuscaMotoristaCNH: TStringField
      FieldName = 'MotoristaCNH'
      Size = 255
    end
    object qrBuscaMotoristaCNHCategoria: TStringField
      FieldName = 'MotoristaCNHCategoria'
      Size = 255
    end
    object qrBuscaMotoristaCNHValidade: TDateTimeField
      FieldName = 'MotoristaCNHValidade'
    end
    object qrBuscaMotoristaMae: TStringField
      FieldName = 'MotoristaMae'
      Size = 255
    end
    object qrBuscaMotoristaPai: TStringField
      FieldName = 'MotoristaPai'
      Size = 255
    end
    object qrBuscaValorFrete: TBCDField
      FieldName = 'ValorFrete'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object qrBuscaValorOutros: TBCDField
      FieldName = 'ValorOutros'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object qrBuscaValorTotalContratado: TBCDField
      FieldName = 'ValorTotalContratado'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object qrBuscaValorRetencoes: TBCDField
      FieldName = 'ValorRetencoes'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object qrBuscaValorFreteLiquido: TBCDField
      FieldName = 'ValorFreteLiquido'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object qrBuscaValorAdiantamento: TBCDField
      FieldName = 'ValorAdiantamento'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object qrBuscaValorSaldoPagar: TBCDField
      FieldName = 'ValorSaldoPagar'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object qrBuscaValorReembolsoDesconto: TBCDField
      FieldName = 'ValorReembolsoDesconto'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object qrBuscaValorSaldoQuitacao: TBCDField
      FieldName = 'ValorSaldoQuitacao'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object qrBuscaBaseCalculoINSS: TBCDField
      FieldName = 'BaseCalculoINSS'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object qrBuscaRetencaoINSS: TBCDField
      FieldName = 'RetencaoINSS'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object qrBuscaRetencaoSEST: TBCDField
      FieldName = 'RetencaoSEST'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object qrBuscaRetencaoIRPF: TBCDField
      FieldName = 'RetencaoIRPF'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object qrBuscaTotalRetencoes: TBCDField
      FieldName = 'TotalRetencoes'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object qrBuscaReembolsoPedagio: TBCDField
      FieldName = 'ReembolsoPedagio'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object qrBuscaReembolsoDescarga: TBCDField
      FieldName = 'ReembolsoDescarga'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object qrBuscaReembolsoOutros: TBCDField
      FieldName = 'ReembolsoOutros'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object qrBuscaDescontos: TBCDField
      FieldName = 'Descontos'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object qrBuscaReembolsoDesconto: TBCDField
      FieldName = 'ReembolsoDesconto'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object qrBuscaObservacoes1: TStringField
      FieldName = 'Observacoes1'
      Size = 255
    end
    object qrBuscaObservacoes2: TStringField
      FieldName = 'Observacoes2'
      Size = 255
    end
    object qrBuscaDocumento: TStringField
      FieldName = 'Documento'
      Size = 255
    end
    object qrBuscaNotas: TStringField
      FieldName = 'Notas'
      Size = 255
    end
    object qrBuscaNatureza: TStringField
      FieldName = 'Natureza'
      Size = 255
    end
    object qrBuscaUnidadeMedida: TStringField
      FieldName = 'UnidadeMedida'
      Size = 255
    end
    object qrBuscaQuantidade: TStringField
      FieldName = 'Quantidade'
      Size = 255
    end
    object qrBuscaRemetente: TStringField
      FieldName = 'Remetente'
      Size = 255
    end
    object qrBuscaDestinatario: TStringField
      FieldName = 'Destinatario'
      Size = 255
    end
    object qrBuscaRemetenteEndereco: TStringField
      FieldName = 'RemetenteEndereco'
      Size = 255
    end
    object qrBuscaDestinatarioEndereco: TStringField
      FieldName = 'DestinatarioEndereco'
      Size = 255
    end
  end
  object DataSource1: TDataSource
    DataSet = qrBusca
    Left = 376
    Top = 280
  end
end
