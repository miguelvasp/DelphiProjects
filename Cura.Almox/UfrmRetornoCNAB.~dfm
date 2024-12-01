object frmRetornoCNAB: TfrmRetornoCNAB
  Left = 264
  Top = 124
  BorderStyle = bsDialog
  Caption = 'Retorno CNAB'
  ClientHeight = 547
  ClientWidth = 984
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 1
    Width = 32
    Height = 13
    Caption = 'Layout'
  end
  object Label2: TLabel
    Left = 16
    Top = 56
    Width = 224
    Height = 13
    Caption = 'Duplo clique para ver mais informações'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object wwDBGrid1: TwwDBGrid
    Left = 16
    Top = 72
    Width = 969
    Height = 433
    Selected.Strings = (
      'Fornecedor'#9'25'#9'Fornecedor'#9#9
      'Documento'#9'15'#9'Documento'#9#9
      'DataDebito'#9'12'#9'Data Debito'#9#9
      'ValorPago'#9'10'#9'Valor '#9#9
      'Ocorrencias'#9'15'#9'Ocorrências'#9#9
      'NumeroBanco'#9'15'#9'Numero Banco'#9#9
      'DataEfetiva'#9'15'#9'Data Efetiva'#9#9
      'ValorEfetivo'#9'20'#9'Valor Efetivo'#9#9
      'NumeroDocumento'#9'15'#9'Documento Banco'#9#9)
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DataSource1
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ReadOnly = True
    TabOrder = 0
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnCalcCellColors = wwDBGrid1CalcCellColors
    OnDblClick = wwDBGrid1DblClick
  end
  object ComboBox1: TComboBox
    Left = 16
    Top = 17
    Width = 201
    Height = 21
    ItemHeight = 13
    TabOrder = 1
    Items.Strings = (
      'ITAU')
  end
  object Button1: TButton
    Left = 224
    Top = 15
    Width = 137
    Height = 25
    Caption = 'Selecionar Arquivo'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 16
    Top = 512
    Width = 105
    Height = 25
    Caption = 'Atualizar Pagos'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Panel1: TPanel
    Left = 284
    Top = 512
    Width = 305
    Height = 33
    Caption = 'Pagamento Aceito Para Processamento'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
  end
  object Panel2: TPanel
    Left = 600
    Top = 511
    Width = 185
    Height = 33
    Caption = 'Pagamentos Aprovados'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
  end
  object Panel3: TPanel
    Left = 792
    Top = 511
    Width = 185
    Height = 33
    Caption = 'Pagamentos Reprovado'
    Color = clRed
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
  end
  object OpenDialog1: TOpenDialog
    Left = 904
    Top = 16
  end
  object qrRetorno: TADOQuery
    Connection = FMenu.ADOConnection1
    Parameters = <
      item
        Name = 'usuario'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM CNABRetornoTemp'
      'where usuario = :usuario')
    Left = 880
    Top = 168
    object qrRetornoid: TIntegerField
      FieldName = 'id'
    end
    object qrRetornoNumeroCP: TIntegerField
      FieldName = 'NumeroCP'
    end
    object qrRetornoOcorrencias: TStringField
      FieldName = 'Ocorrencias'
      Size = 50
    end
    object qrRetornoNumeroBanco: TStringField
      FieldName = 'NumeroBanco'
      Size = 50
    end
    object qrRetornoDataEfetiva: TStringField
      FieldName = 'DataEfetiva'
      Size = 50
    end
    object qrRetornoValorEfetivo: TBCDField
      FieldName = 'ValorEfetivo'
      Precision = 18
      Size = 2
    end
    object qrRetornoNumeroDocumento: TStringField
      FieldName = 'NumeroDocumento'
      Size = 50
    end
    object qrRetornoUsuario: TIntegerField
      FieldName = 'Usuario'
    end
  end
  object qrAux: TADOQuery
    Connection = FMenu.ADOConnection1
    Parameters = <>
    Left = 808
    Top = 176
  end
  object qrListagem: TADOQuery
    Connection = FMenu.ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'USUARIO'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT'
      #9'P.Fornecedor,'
      #9'P.Documento,'
      #9'B.ValorPago,'
      #9'B.DataDebito, '
      #9'B.Sequencia,'
      #9'A.*'
      'FROM CNABRetornoTemp A with (nolock)'
      'INNER JOIN CPAPAGA P  with (nolock) ON A.NumeroCP = P.Numero'
      'INNER JOIN CPAIPAG B with (nolock) ON P.Numero = B.Numero '
      'WHERE  A.USUARIO = :USUARIO')
    Left = 416
    Top = 296
    object qrListagemFornecedor: TStringField
      DisplayWidth = 25
      FieldName = 'Fornecedor'
      Size = 15
    end
    object qrListagemDocumento: TStringField
      DisplayWidth = 15
      FieldName = 'Documento'
      Size = 15
    end
    object qrListagemDataDebito: TDateTimeField
      DisplayLabel = 'Data Debito'
      DisplayWidth = 12
      FieldName = 'DataDebito'
    end
    object qrListagemValorPago: TFloatField
      DisplayLabel = 'Valor '
      DisplayWidth = 10
      FieldName = 'ValorPago'
      DisplayFormat = '###,###,##0.00'
    end
    object qrListagemOcorrencias: TStringField
      DisplayLabel = 'Ocorrências'
      DisplayWidth = 15
      FieldName = 'Ocorrencias'
      Size = 50
    end
    object qrListagemNumeroBanco: TStringField
      DisplayLabel = 'Numero Banco'
      DisplayWidth = 15
      FieldName = 'NumeroBanco'
      Size = 50
    end
    object qrListagemDataEfetiva: TStringField
      DisplayLabel = 'Data Efetiva'
      DisplayWidth = 15
      FieldName = 'DataEfetiva'
      Size = 50
    end
    object qrListagemValorEfetivo: TBCDField
      DisplayLabel = 'Valor Efetivo'
      DisplayWidth = 20
      FieldName = 'ValorEfetivo'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object qrListagemNumeroDocumento: TStringField
      DisplayLabel = 'Documento Banco'
      DisplayWidth = 15
      FieldName = 'NumeroDocumento'
      Size = 50
    end
    object qrListagemid: TAutoIncField
      DisplayWidth = 10
      FieldName = 'id'
      ReadOnly = True
      Visible = False
    end
    object qrListagemNumeroCP: TIntegerField
      DisplayWidth = 10
      FieldName = 'NumeroCP'
      Visible = False
    end
    object qrListagemUsuario: TIntegerField
      DisplayWidth = 10
      FieldName = 'Usuario'
      Visible = False
    end
    object qrListagemSequencia: TAutoIncField
      FieldName = 'Sequencia'
      ReadOnly = True
      Visible = False
    end
  end
  object DataSource1: TDataSource
    DataSet = qrListagem
    Left = 560
    Top = 272
  end
  object qrBaixas: TADOQuery
    AutoCalcFields = False
    Connection = FMenu.ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'NUMERO'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'SEQUENCIA'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT TOP 1 * FROM CPAIPAG'
      'WHERE NUMERO = :NUMERO'
      'AND SEQUENCIA = :SEQUENCIA')
    Left = 480
    Top = 176
    object qrBaixasNumero: TIntegerField
      FieldName = 'Numero'
      ProviderFlags = [pfInWhere]
    end
    object qrBaixasSequencia: TAutoIncField
      FieldName = 'Sequencia'
      ProviderFlags = [pfInWhere]
      ReadOnly = True
    end
    object qrBaixasData: TDateTimeField
      FieldName = 'Data'
      ProviderFlags = [pfInUpdate]
    end
    object qrBaixasDocumento: TStringField
      FieldName = 'Documento'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object qrBaixasAbater: TFloatField
      FieldName = 'Abater'
      ProviderFlags = [pfInUpdate]
    end
    object qrBaixasDescAcresc: TFloatField
      FieldName = 'DescAcresc'
      ProviderFlags = [pfInUpdate]
    end
    object qrBaixasValorPago: TFloatField
      FieldName = 'ValorPago'
      ProviderFlags = [pfInUpdate]
    end
    object qrBaixasDataDebito: TDateTimeField
      FieldName = 'DataDebito'
      ProviderFlags = [pfInUpdate]
    end
    object qrBaixasTipoBaixa: TStringField
      FieldName = 'TipoBaixa'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object qrBaixasHistorico: TStringField
      FieldName = 'Historico'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object qrBaixasBancoConta: TStringField
      FieldName = 'BancoConta'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object qrBaixasPrepCheque: TStringField
      FieldName = 'PrepCheque'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object qrBaixasNUMEROICHE: TIntegerField
      FieldName = 'NUMEROICHE'
      ProviderFlags = [pfInUpdate]
    end
    object qrBaixasForma_Pag: TStringField
      FieldName = 'Forma_Pag'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object qrBaixastx_dolar: TFloatField
      FieldName = 'tx_dolar'
      ProviderFlags = [pfInUpdate]
    end
    object qrBaixasvalor_dolar: TFloatField
      FieldName = 'valor_dolar'
      ProviderFlags = [pfInUpdate]
    end
  end
end
