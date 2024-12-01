object frmContratoFreteCad: TfrmContratoFreteCad
  Left = 415
  Top = 60
  Width = 510
  Height = 548
  Caption = 'Contrato de Frete'
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
  object SpeedButton1: TSpeedButton
    Left = 136
    Top = 7
    Width = 177
    Height = 26
    Caption = 'Imprimir Contrato'
    OnClick = SpeedButton1Click
  end
  object PageControl1: TPageControl
    Left = 4
    Top = 41
    Width = 473
    Height = 465
    ActivePage = TabSheet2
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Contrato'
      object GroupBox1: TGroupBox
        Left = 11
        Top = 17
        Width = 406
        Height = 57
        Caption = 'Informações do contrato'
        TabOrder = 0
        object Label1: TLabel
          Left = 8
          Top = 16
          Width = 80
          Height = 13
          Caption = 'Numero Contrato'
          FocusControl = DBEdit1
        end
        object Label2: TLabel
          Left = 144
          Top = 16
          Width = 64
          Height = 13
          Caption = 'Tipo Contrato'
          FocusControl = DBEdit2
        end
        object Label3: TLabel
          Left = 304
          Top = 16
          Width = 23
          Height = 13
          Caption = 'Data'
          FocusControl = DBEdit3
        end
        object DBEdit1: TDBEdit
          Left = 8
          Top = 32
          Width = 129
          Height = 21
          DataField = 'NumeroContrato'
          DataSource = DataSource1
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 144
          Top = 32
          Width = 153
          Height = 21
          DataField = 'TipoContrato'
          DataSource = DataSource1
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 304
          Top = 32
          Width = 81
          Height = 21
          DataField = 'Data'
          DataSource = DataSource1
          TabOrder = 2
        end
      end
      object GroupBox2: TGroupBox
        Left = 10
        Top = 78
        Width = 407
        Height = 283
        Caption = 'Contrato'
        TabOrder = 1
        object Label4: TLabel
          Left = 8
          Top = 16
          Width = 23
          Height = 13
          Caption = 'Rota'
          FocusControl = DBEdit4
        end
        object Label5: TLabel
          Left = 192
          Top = 15
          Width = 81
          Height = 13
          Caption = 'Previsão Entrega'
          FocusControl = DBEdit5
        end
        object Label6: TLabel
          Left = 10
          Top = 63
          Width = 33
          Height = 13
          Caption = 'Origem'
          FocusControl = DBEdit6
        end
        object Label7: TLabel
          Left = 8
          Top = 111
          Width = 36
          Height = 13
          Caption = 'Destino'
          FocusControl = DBEdit7
        end
        object Label8: TLabel
          Left = 6
          Top = 166
          Width = 25
          Height = 13
          Caption = 'CIOT'
          FocusControl = DBEdit8
        end
        object Label9: TLabel
          Left = 188
          Top = 165
          Width = 21
          Height = 13
          Caption = 'CTE'
          FocusControl = DBEdit9
        end
        object DBEdit4: TDBEdit
          Left = 8
          Top = 32
          Width = 177
          Height = 21
          DataField = 'Rota'
          DataSource = DataSource1
          TabOrder = 0
        end
        object DBEdit5: TDBEdit
          Left = 192
          Top = 31
          Width = 100
          Height = 21
          DataField = 'PrevisaoEntrega'
          DataSource = DataSource1
          TabOrder = 1
        end
        object DBEdit6: TDBEdit
          Left = 10
          Top = 79
          Width = 375
          Height = 21
          DataField = 'Origem'
          DataSource = DataSource1
          TabOrder = 2
        end
        object DBEdit7: TDBEdit
          Left = 8
          Top = 127
          Width = 377
          Height = 21
          DataField = 'Destino'
          DataSource = DataSource1
          TabOrder = 3
        end
        object DBEdit8: TDBEdit
          Left = 6
          Top = 182
          Width = 171
          Height = 21
          DataField = 'CIOT'
          DataSource = DataSource1
          TabOrder = 4
        end
        object DBEdit9: TDBEdit
          Left = 188
          Top = 181
          Width = 197
          Height = 21
          DataField = 'CTE'
          DataSource = DataSource1
          TabOrder = 5
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Contratado'
      ImageIndex = 1
      object GroupBox3: TGroupBox
        Left = 11
        Top = 17
        Width = 414
        Height = 417
        Caption = 'Contratado'
        TabOrder = 0
        object Label10: TLabel
          Left = 8
          Top = 16
          Width = 31
          Height = 13
          Caption = 'Razão'
        end
        object Label11: TLabel
          Left = 312
          Top = 16
          Width = 59
          Height = 13
          Caption = 'Tipo Pessoa'
          FocusControl = DBEdit11
        end
        object Label12: TLabel
          Left = 8
          Top = 64
          Width = 52
          Height = 13
          Caption = 'CNPJ/CPF'
          FocusControl = DBEdit12
        end
        object Label13: TLabel
          Left = 200
          Top = 63
          Width = 31
          Height = 13
          Caption = 'IE/RG'
          FocusControl = DBEdit13
        end
        object Label14: TLabel
          Left = 9
          Top = 114
          Width = 34
          Height = 13
          Caption = 'IM/PIS'
          FocusControl = DBEdit14
        end
        object Label15: TLabel
          Left = 142
          Top = 114
          Width = 38
          Height = 13
          Caption = 'RNTRC'
          FocusControl = DBEdit15
        end
        object Label16: TLabel
          Left = 291
          Top = 114
          Width = 41
          Height = 13
          Caption = 'Validade'
          FocusControl = DBEdit16
        end
        object Label17: TLabel
          Left = 8
          Top = 163
          Width = 46
          Height = 13
          Caption = 'Endereço'
          FocusControl = DBEdit17
        end
        object Label18: TLabel
          Left = 7
          Top = 211
          Width = 21
          Height = 13
          Caption = 'CEP'
          FocusControl = DBEdit18
        end
        object Label19: TLabel
          Left = 90
          Top = 211
          Width = 42
          Height = 13
          Caption = 'Telefone'
          FocusControl = DBEdit19
        end
        object Label20: TLabel
          Left = 6
          Top = 256
          Width = 25
          Height = 13
          Caption = 'Email'
          FocusControl = DBEdit20
        end
        object Label21: TLabel
          Left = 6
          Top = 296
          Width = 31
          Height = 13
          Caption = 'Banco'
          FocusControl = DBEdit21
        end
        object Label22: TLabel
          Left = 6
          Top = 344
          Width = 39
          Height = 13
          Caption = 'Agência'
          FocusControl = DBEdit22
        end
        object Label23: TLabel
          Left = 173
          Top = 344
          Width = 73
          Height = 13
          Caption = 'Conta Bancária'
          FocusControl = DBEdit23
        end
        object Label24: TLabel
          Left = 173
          Top = 296
          Width = 52
          Height = 13
          Caption = 'Tipo Conta'
          FocusControl = DBEdit24
        end
        object DBEdit11: TDBEdit
          Left = 312
          Top = 32
          Width = 65
          Height = 21
          DataField = 'TipoPessoa'
          DataSource = DataSource1
          TabOrder = 0
        end
        object DBEdit12: TDBEdit
          Left = 8
          Top = 80
          Width = 185
          Height = 21
          DataField = 'CNPJ_CPF'
          DataSource = DataSource1
          TabOrder = 1
        end
        object DBEdit13: TDBEdit
          Left = 200
          Top = 79
          Width = 177
          Height = 21
          DataField = 'IE_RG'
          DataSource = DataSource1
          TabOrder = 2
        end
        object DBEdit14: TDBEdit
          Left = 9
          Top = 130
          Width = 128
          Height = 21
          DataField = 'IM_PIS'
          DataSource = DataSource1
          TabOrder = 3
        end
        object DBEdit15: TDBEdit
          Left = 142
          Top = 130
          Width = 147
          Height = 21
          DataField = 'RNTRC'
          DataSource = DataSource1
          TabOrder = 4
        end
        object DBEdit16: TDBEdit
          Left = 291
          Top = 130
          Width = 90
          Height = 21
          DataField = 'valRNTRC'
          DataSource = DataSource1
          TabOrder = 5
        end
        object DBEdit17: TDBEdit
          Left = 8
          Top = 179
          Width = 371
          Height = 21
          DataField = 'Endereco'
          DataSource = DataSource1
          TabOrder = 6
        end
        object DBEdit18: TDBEdit
          Left = 7
          Top = 227
          Width = 80
          Height = 21
          DataField = 'CEP'
          DataSource = DataSource1
          TabOrder = 7
        end
        object DBEdit19: TDBEdit
          Left = 90
          Top = 227
          Width = 100
          Height = 21
          DataField = 'Telefone'
          DataSource = DataSource1
          TabOrder = 8
        end
        object DBEdit20: TDBEdit
          Left = 6
          Top = 272
          Width = 371
          Height = 21
          DataField = 'Email'
          DataSource = DataSource1
          TabOrder = 9
        end
        object DBEdit21: TDBEdit
          Left = 6
          Top = 312
          Width = 163
          Height = 21
          DataField = 'Banco'
          DataSource = DataSource1
          TabOrder = 10
        end
        object DBEdit22: TDBEdit
          Left = 6
          Top = 360
          Width = 163
          Height = 21
          DataField = 'Agencia'
          DataSource = DataSource1
          TabOrder = 11
        end
        object DBEdit23: TDBEdit
          Left = 173
          Top = 360
          Width = 204
          Height = 21
          DataField = 'ContaBancaria'
          DataSource = DataSource1
          TabOrder = 12
        end
        object DBEdit24: TDBEdit
          Left = 173
          Top = 312
          Width = 204
          Height = 21
          DataField = 'TipoConta'
          DataSource = DataSource1
          TabOrder = 13
        end
        object wwDBLookupCombo1: TwwDBLookupCombo
          Left = 8
          Top = 32
          Width = 297
          Height = 21
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'TRANS_RAZA'#9'60'#9'TRANS_RAZA'#9#9
            'TRANS_FANTASIA'#9'40'#9'TRANS_FANTASIA'#9'F')
          DataField = 'Razao'
          DataSource = DataSource1
          LookupTable = qrTrans
          LookupField = 'TRANS_RAZA'
          TabOrder = 14
          AutoDropDown = False
          ShowButton = True
          PreciseEditRegion = False
          AllowClearKey = False
          OnChange = wwDBLookupCombo1Change
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Veiculo/Motorista'
      ImageIndex = 2
      object GroupBox4: TGroupBox
        Left = 19
        Top = 289
        Width = 414
        Height = 120
        Caption = 'Dados do veiculo'
        TabOrder = 0
        object Label25: TLabel
          Left = 8
          Top = 16
          Width = 27
          Height = 13
          Caption = 'Placa'
          FocusControl = DBEdit25
        end
        object Label26: TLabel
          Left = 101
          Top = 16
          Width = 31
          Height = 13
          Caption = 'Chassi'
          FocusControl = DBEdit26
        end
        object Label27: TLabel
          Left = 280
          Top = 16
          Width = 30
          Height = 13
          Caption = 'Marca'
          FocusControl = DBEdit27
        end
        object Label28: TLabel
          Left = 8
          Top = 63
          Width = 19
          Height = 13
          Caption = 'Ano'
          FocusControl = DBEdit28
        end
        object Label29: TLabel
          Left = 101
          Top = 63
          Width = 46
          Height = 13
          Caption = 'Renavam'
          FocusControl = DBEdit29
        end
        object DBEdit25: TDBEdit
          Left = 8
          Top = 32
          Width = 90
          Height = 21
          DataField = 'Placa'
          DataSource = DataSource1
          TabOrder = 0
        end
        object DBEdit26: TDBEdit
          Left = 101
          Top = 32
          Width = 172
          Height = 21
          DataField = 'Chassi'
          DataSource = DataSource1
          TabOrder = 1
        end
        object DBEdit27: TDBEdit
          Left = 280
          Top = 32
          Width = 100
          Height = 21
          DataField = 'Marca'
          DataSource = DataSource1
          TabOrder = 2
        end
        object DBEdit28: TDBEdit
          Left = 8
          Top = 79
          Width = 89
          Height = 21
          DataField = 'Ano'
          DataSource = DataSource1
          TabOrder = 3
        end
        object DBEdit29: TDBEdit
          Left = 101
          Top = 79
          Width = 150
          Height = 21
          DataField = 'Renavam'
          DataSource = DataSource1
          TabOrder = 4
        end
      end
      object GroupBox5: TGroupBox
        Left = 19
        Top = 12
        Width = 414
        Height = 277
        Caption = 'Dados do motorista'
        TabOrder = 1
        object Label30: TLabel
          Left = 8
          Top = 16
          Width = 43
          Height = 13
          Caption = 'Motorista'
        end
        object Label31: TLabel
          Left = 8
          Top = 59
          Width = 82
          Height = 13
          Caption = 'Data Nascimento'
          FocusControl = DBEdit31
        end
        object Label32: TLabel
          Left = 8
          Top = 101
          Width = 42
          Height = 13
          Caption = 'Telefone'
          FocusControl = DBEdit32
        end
        object Label33: TLabel
          Left = 97
          Top = 58
          Width = 20
          Height = 13
          Caption = 'CPF'
          FocusControl = DBEdit33
        end
        object Label34: TLabel
          Left = 247
          Top = 58
          Width = 16
          Height = 13
          Caption = 'RG'
          FocusControl = DBEdit34
        end
        object Label35: TLabel
          Left = 114
          Top = 100
          Width = 23
          Height = 13
          Caption = 'CNH'
          FocusControl = DBEdit35
        end
        object Label36: TLabel
          Left = 262
          Top = 99
          Width = 19
          Height = 13
          Caption = 'Cat.'
          FocusControl = DBEdit36
        end
        object Label37: TLabel
          Left = 292
          Top = 99
          Width = 41
          Height = 13
          Caption = 'Validade'
          FocusControl = DBEdit37
        end
        object Label38: TLabel
          Left = 8
          Top = 141
          Width = 21
          Height = 13
          Caption = 'Mãe'
          FocusControl = DBEdit38
        end
        object Label39: TLabel
          Left = 8
          Top = 184
          Width = 15
          Height = 13
          Caption = 'Pai'
          FocusControl = DBEdit39
        end
        object DBEdit31: TDBEdit
          Left = 8
          Top = 74
          Width = 84
          Height = 21
          DataField = 'MotoristaDtNas'
          DataSource = DataSource1
          TabOrder = 0
        end
        object DBEdit32: TDBEdit
          Left = 8
          Top = 117
          Width = 100
          Height = 21
          DataField = 'MotoristaTelefone'
          DataSource = DataSource1
          TabOrder = 1
        end
        object DBEdit33: TDBEdit
          Left = 97
          Top = 74
          Width = 144
          Height = 21
          DataField = 'MotoristaCPF'
          DataSource = DataSource1
          TabOrder = 2
        end
        object DBEdit34: TDBEdit
          Left = 247
          Top = 74
          Width = 130
          Height = 21
          DataField = 'MotoristaRG'
          DataSource = DataSource1
          TabOrder = 3
        end
        object DBEdit35: TDBEdit
          Left = 114
          Top = 116
          Width = 143
          Height = 21
          DataField = 'MotoristaCNH'
          DataSource = DataSource1
          TabOrder = 4
        end
        object DBEdit36: TDBEdit
          Left = 262
          Top = 115
          Width = 27
          Height = 21
          DataField = 'MotoristaCNHCategoria'
          DataSource = DataSource1
          TabOrder = 5
        end
        object DBEdit37: TDBEdit
          Left = 292
          Top = 115
          Width = 85
          Height = 21
          DataField = 'MotoristaCNHValidade'
          DataSource = DataSource1
          TabOrder = 6
        end
        object DBEdit38: TDBEdit
          Left = 8
          Top = 157
          Width = 369
          Height = 21
          DataField = 'MotoristaMae'
          DataSource = DataSource1
          TabOrder = 7
        end
        object DBEdit39: TDBEdit
          Left = 8
          Top = 200
          Width = 369
          Height = 21
          DataField = 'MotoristaPai'
          DataSource = DataSource1
          TabOrder = 8
        end
        object wwDBLookupCombo2: TwwDBLookupCombo
          Left = 8
          Top = 32
          Width = 369
          Height = 21
          DropDownAlignment = taLeftJustify
          DataField = 'Motorista'
          DataSource = DataSource1
          LookupTable = qrMot
          LookupField = 'MOT_NOME'
          TabOrder = 9
          AutoDropDown = False
          ShowButton = True
          PreciseEditRegion = False
          AllowClearKey = False
          OnChange = wwDBLookupCombo2Change
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Valores'
      ImageIndex = 3
      object GroupBox6: TGroupBox
        Left = 20
        Top = 17
        Width = 437
        Height = 400
        Caption = 'Valores'
        TabOrder = 0
        object Label40: TLabel
          Left = 8
          Top = 16
          Width = 51
          Height = 13
          Caption = 'Valor Frete'
          FocusControl = DBEdit40
        end
        object Label41: TLabel
          Left = 8
          Top = 56
          Width = 58
          Height = 13
          Caption = 'Valor Outros'
          FocusControl = DBEdit41
        end
        object Label42: TLabel
          Left = 7
          Top = 96
          Width = 79
          Height = 13
          Caption = 'Total Contratado'
          FocusControl = DBEdit42
        end
        object Label43: TLabel
          Left = 7
          Top = 135
          Width = 52
          Height = 13
          Caption = 'Retencoes'
          FocusControl = DBEdit43
        end
        object Label44: TLabel
          Left = 6
          Top = 175
          Width = 63
          Height = 13
          Caption = 'Frete Líquido'
          FocusControl = DBEdit44
        end
        object Label45: TLabel
          Left = 7
          Top = 214
          Width = 106
          Height = 13
          Caption = '%           Adiantamento'
          FocusControl = DBEdit45
        end
        object Label46: TLabel
          Left = 6
          Top = 255
          Width = 67
          Height = 13
          Caption = 'Saldo à Pagar'
          FocusControl = DBEdit46
        end
        object Label47: TLabel
          Left = 5
          Top = 296
          Width = 104
          Height = 13
          Caption = 'Reembolso/Desconto'
          FocusControl = DBEdit47
        end
        object Label48: TLabel
          Left = 5
          Top = 336
          Width = 88
          Height = 13
          Caption = 'Saldo de Quitacao'
          FocusControl = DBEdit48
        end
        object Label49: TLabel
          Left = 136
          Top = 16
          Width = 90
          Height = 13
          Caption = 'Base Calculo INSS'
          FocusControl = DBEdit49
        end
        object Label50: TLabel
          Left = 136
          Top = 56
          Width = 75
          Height = 13
          Caption = 'Retencao INSS'
          FocusControl = DBEdit50
        end
        object Label51: TLabel
          Left = 136
          Top = 95
          Width = 78
          Height = 13
          Caption = 'Retencao SEST'
          FocusControl = DBEdit51
        end
        object Label52: TLabel
          Left = 136
          Top = 135
          Width = 74
          Height = 13
          Caption = 'Retencao IRPF'
          FocusControl = DBEdit52
        end
        object Label53: TLabel
          Left = 136
          Top = 175
          Width = 79
          Height = 13
          Caption = 'Total Retencoes'
          FocusControl = DBEdit53
        end
        object Label54: TLabel
          Left = 264
          Top = 16
          Width = 95
          Height = 13
          Caption = 'Reembolso Pedágio'
          FocusControl = DBEdit54
        end
        object Label55: TLabel
          Left = 264
          Top = 56
          Width = 102
          Height = 13
          Caption = 'Reembolso Descarga'
          FocusControl = DBEdit55
        end
        object Label56: TLabel
          Left = 264
          Top = 95
          Width = 87
          Height = 13
          Caption = 'Reembolso Outros'
          FocusControl = DBEdit56
        end
        object Label57: TLabel
          Left = 264
          Top = 135
          Width = 51
          Height = 13
          Caption = 'Descontos'
          FocusControl = DBEdit57
        end
        object Label58: TLabel
          Left = 264
          Top = 175
          Width = 104
          Height = 13
          Caption = 'Reembolso/Desconto'
          FocusControl = DBEdit58
        end
        object Label59: TLabel
          Left = 136
          Top = 216
          Width = 63
          Height = 13
          Caption = 'Observacoes'
        end
        object DBEdit40: TDBEdit
          Left = 8
          Top = 32
          Width = 118
          Height = 21
          DataField = 'ValorFrete'
          DataSource = DataSource1
          TabOrder = 0
          OnExit = DBEdit40Exit
        end
        object DBEdit41: TDBEdit
          Left = 8
          Top = 72
          Width = 118
          Height = 21
          DataField = 'ValorOutros'
          DataSource = DataSource1
          TabOrder = 1
          OnExit = DBEdit40Exit
        end
        object DBEdit42: TDBEdit
          Left = 7
          Top = 112
          Width = 118
          Height = 21
          DataField = 'ValorTotalContratado'
          DataSource = DataSource1
          TabOrder = 2
          OnExit = DBEdit40Exit
        end
        object DBEdit43: TDBEdit
          Left = 7
          Top = 151
          Width = 118
          Height = 21
          DataField = 'ValorRetencoes'
          DataSource = DataSource1
          TabOrder = 3
          OnExit = DBEdit40Exit
        end
        object DBEdit44: TDBEdit
          Left = 6
          Top = 191
          Width = 118
          Height = 21
          DataField = 'ValorFreteLiquido'
          DataSource = DataSource1
          TabOrder = 4
          OnExit = DBEdit40Exit
        end
        object DBEdit45: TDBEdit
          Left = 48
          Top = 230
          Width = 77
          Height = 21
          DataField = 'ValorAdiantamento'
          DataSource = DataSource1
          TabOrder = 5
          OnExit = DBEdit40Exit
        end
        object DBEdit46: TDBEdit
          Left = 6
          Top = 271
          Width = 118
          Height = 21
          DataField = 'ValorSaldoPagar'
          DataSource = DataSource1
          TabOrder = 6
          OnExit = DBEdit40Exit
        end
        object DBEdit47: TDBEdit
          Left = 5
          Top = 312
          Width = 118
          Height = 21
          DataField = 'ValorReembolsoDesconto'
          DataSource = DataSource1
          TabOrder = 7
          OnExit = DBEdit40Exit
        end
        object DBEdit48: TDBEdit
          Left = 5
          Top = 352
          Width = 118
          Height = 21
          DataField = 'ValorSaldoQuitacao'
          DataSource = DataSource1
          TabOrder = 8
          OnExit = DBEdit40Exit
        end
        object DBEdit49: TDBEdit
          Left = 136
          Top = 32
          Width = 118
          Height = 21
          DataField = 'BaseCalculoINSS'
          DataSource = DataSource1
          TabOrder = 9
          OnExit = DBEdit40Exit
        end
        object DBEdit50: TDBEdit
          Left = 136
          Top = 72
          Width = 118
          Height = 21
          DataField = 'RetencaoINSS'
          DataSource = DataSource1
          TabOrder = 10
          OnExit = DBEdit40Exit
        end
        object DBEdit51: TDBEdit
          Left = 136
          Top = 111
          Width = 118
          Height = 21
          DataField = 'RetencaoSEST'
          DataSource = DataSource1
          TabOrder = 11
          OnExit = DBEdit40Exit
        end
        object DBEdit52: TDBEdit
          Left = 136
          Top = 151
          Width = 118
          Height = 21
          DataField = 'RetencaoIRPF'
          DataSource = DataSource1
          TabOrder = 12
          OnExit = DBEdit40Exit
        end
        object DBEdit53: TDBEdit
          Left = 136
          Top = 191
          Width = 118
          Height = 21
          DataField = 'TotalRetencoes'
          DataSource = DataSource1
          TabOrder = 13
          OnExit = DBEdit40Exit
        end
        object DBEdit54: TDBEdit
          Left = 264
          Top = 32
          Width = 118
          Height = 21
          DataField = 'ReembolsoPedagio'
          DataSource = DataSource1
          TabOrder = 14
          OnExit = DBEdit40Exit
        end
        object DBEdit55: TDBEdit
          Left = 264
          Top = 72
          Width = 118
          Height = 21
          DataField = 'ReembolsoDescarga'
          DataSource = DataSource1
          TabOrder = 15
          OnExit = DBEdit40Exit
        end
        object DBEdit56: TDBEdit
          Left = 264
          Top = 111
          Width = 118
          Height = 21
          DataField = 'ReembolsoOutros'
          DataSource = DataSource1
          TabOrder = 16
          OnExit = DBEdit40Exit
        end
        object DBEdit57: TDBEdit
          Left = 264
          Top = 151
          Width = 118
          Height = 21
          DataField = 'Descontos'
          DataSource = DataSource1
          TabOrder = 17
          OnExit = DBEdit40Exit
        end
        object DBEdit58: TDBEdit
          Left = 264
          Top = 191
          Width = 118
          Height = 21
          DataField = 'ReembolsoDesconto'
          DataSource = DataSource1
          TabOrder = 18
          OnExit = DBEdit40Exit
        end
        object DBMemo1: TDBMemo
          Left = 136
          Top = 232
          Width = 247
          Height = 141
          DataField = 'Observacoes1'
          DataSource = DataSource1
          TabOrder = 19
        end
        object DBEdit10: TDBEdit
          Left = 7
          Top = 231
          Width = 34
          Height = 21
          DataField = 'AdiantamentoPercentual'
          DataSource = DataSource1
          TabOrder = 20
          OnExit = DBEdit10Exit
        end
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Observações'
      ImageIndex = 4
      object DBMemo2: TDBMemo
        Left = 16
        Top = 8
        Width = 433
        Height = 409
        DataField = 'Observacoes2'
        DataSource = DataSource1
        TabOrder = 0
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'Documentos de Entrega'
      ImageIndex = 5
      object Label60: TLabel
        Left = 16
        Top = 8
        Width = 55
        Height = 13
        Caption = 'Documento'
        FocusControl = DBEdit59
      end
      object Label61: TLabel
        Left = 16
        Top = 56
        Width = 28
        Height = 13
        Caption = 'Notas'
        FocusControl = DBEdit60
      end
      object Label62: TLabel
        Left = 16
        Top = 112
        Width = 43
        Height = 13
        Caption = 'Natureza'
        FocusControl = DBEdit61
      end
      object Label63: TLabel
        Left = 224
        Top = 112
        Width = 93
        Height = 13
        Caption = 'Unidade de Medida'
        FocusControl = DBEdit62
      end
      object Label64: TLabel
        Left = 16
        Top = 164
        Width = 55
        Height = 13
        Caption = 'Quantidade'
        FocusControl = DBEdit63
      end
      object Label65: TLabel
        Left = 16
        Top = 216
        Width = 52
        Height = 13
        Caption = 'Remetente'
        FocusControl = DBEdit64
      end
      object Label66: TLabel
        Left = 16
        Top = 256
        Width = 101
        Height = 13
        Caption = 'Remetente Endereco'
        FocusControl = DBEdit65
      end
      object Label67: TLabel
        Left = 16
        Top = 296
        Width = 56
        Height = 13
        Caption = 'Destinatário'
        FocusControl = DBEdit66
      end
      object Label68: TLabel
        Left = 16
        Top = 344
        Width = 105
        Height = 13
        Caption = 'Destinatário Endereco'
        FocusControl = DBEdit67
      end
      object DBEdit59: TDBEdit
        Left = 16
        Top = 24
        Width = 400
        Height = 21
        DataField = 'Documento'
        DataSource = DataSource1
        TabOrder = 0
      end
      object DBEdit60: TDBEdit
        Left = 16
        Top = 72
        Width = 400
        Height = 21
        DataField = 'Notas'
        DataSource = DataSource1
        TabOrder = 1
      end
      object DBEdit61: TDBEdit
        Left = 16
        Top = 128
        Width = 200
        Height = 21
        DataField = 'Natureza'
        DataSource = DataSource1
        TabOrder = 2
      end
      object DBEdit62: TDBEdit
        Left = 224
        Top = 128
        Width = 193
        Height = 21
        DataField = 'UnidadeMedida'
        DataSource = DataSource1
        TabOrder = 3
      end
      object DBEdit63: TDBEdit
        Left = 16
        Top = 180
        Width = 100
        Height = 21
        DataField = 'Quantidade'
        DataSource = DataSource1
        TabOrder = 4
      end
      object DBEdit64: TDBEdit
        Left = 16
        Top = 232
        Width = 400
        Height = 21
        DataField = 'Remetente'
        DataSource = DataSource1
        TabOrder = 5
      end
      object DBEdit65: TDBEdit
        Left = 16
        Top = 272
        Width = 400
        Height = 21
        DataField = 'RemetenteEndereco'
        DataSource = DataSource1
        TabOrder = 6
      end
      object DBEdit66: TDBEdit
        Left = 16
        Top = 312
        Width = 400
        Height = 21
        DataField = 'Destinatario'
        DataSource = DataSource1
        TabOrder = 7
      end
      object DBEdit67: TDBEdit
        Left = 16
        Top = 360
        Width = 400
        Height = 21
        DataField = 'DestinatarioEndereco'
        DataSource = DataSource1
        TabOrder = 8
      end
    end
  end
  object wwDBNavigator1: TwwDBNavigator
    Left = 8
    Top = 8
    Width = 125
    Height = 25
    DataSource = DataSource1
    RepeatInterval.InitialDelay = 500
    RepeatInterval.Interval = 100
    object wwDBNavigator1Insert: TwwNavButton
      Left = 0
      Top = 0
      Width = 25
      Height = 25
      Hint = 'Insert new record'
      ImageIndex = -1
      NumGlyphs = 2
      Spacing = 4
      Transparent = False
      Caption = 'wwDBNavigator1Insert'
      Enabled = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 0
      Style = nbsInsert
    end
    object wwDBNavigator1Delete: TwwNavButton
      Left = 25
      Top = 0
      Width = 25
      Height = 25
      Hint = 'Delete current record'
      ImageIndex = -1
      NumGlyphs = 2
      Spacing = 4
      Transparent = False
      Caption = 'wwDBNavigator1Delete'
      Enabled = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 1
      Style = nbsDelete
    end
    object wwDBNavigator1Edit: TwwNavButton
      Left = 50
      Top = 0
      Width = 25
      Height = 25
      Hint = 'Edit current record'
      ImageIndex = -1
      NumGlyphs = 2
      Spacing = 4
      Transparent = False
      Caption = 'wwDBNavigator1Edit'
      Enabled = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 2
      Style = nbsEdit
    end
    object wwDBNavigator1Post: TwwNavButton
      Left = 75
      Top = 0
      Width = 25
      Height = 25
      Hint = 'Post changes of current record'
      ImageIndex = -1
      NumGlyphs = 2
      Spacing = 4
      Transparent = False
      Caption = 'wwDBNavigator1Post'
      Enabled = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 3
      Style = nbsPost
    end
    object wwDBNavigator1Cancel: TwwNavButton
      Left = 100
      Top = 0
      Width = 25
      Height = 25
      Hint = 'Cancel changes made to current record'
      ImageIndex = -1
      NumGlyphs = 2
      Spacing = 4
      Transparent = False
      Caption = 'wwDBNavigator1Cancel'
      Enabled = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 4
      Style = nbsCancel
    end
  end
  object qrContrato: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'ID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM CONTRATOFRETE '
      'WHERE IDCONTRATOFRETE = :ID')
    Left = 424
    object qrContratoIdContratoFrete: TAutoIncField
      FieldName = 'IdContratoFrete'
      ReadOnly = True
    end
    object qrContratoTipoContrato: TStringField
      FieldName = 'TipoContrato'
      Size = 255
    end
    object qrContratoNumeroContrato: TStringField
      FieldName = 'NumeroContrato'
      Size = 255
    end
    object qrContratoData: TDateTimeField
      FieldName = 'Data'
      EditMask = '99/99/9999'
    end
    object qrContratoRota: TStringField
      FieldName = 'Rota'
      Size = 255
    end
    object qrContratoPrevisaoEntrega: TStringField
      FieldName = 'PrevisaoEntrega'
      Size = 255
    end
    object qrContratoOrigem: TStringField
      FieldName = 'Origem'
      Size = 255
    end
    object qrContratoDestino: TStringField
      FieldName = 'Destino'
      Size = 255
    end
    object qrContratoCIOT: TStringField
      FieldName = 'CIOT'
      Size = 255
    end
    object qrContratoCTE: TStringField
      FieldName = 'CTE'
      Size = 255
    end
    object qrContratoRazao: TStringField
      FieldName = 'Razao'
      Size = 255
    end
    object qrContratoTipoPessoa: TStringField
      FieldName = 'TipoPessoa'
      Size = 255
    end
    object qrContratoCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 255
    end
    object qrContratoIE_RG: TStringField
      FieldName = 'IE_RG'
      Size = 255
    end
    object qrContratoIM_PIS: TStringField
      FieldName = 'IM_PIS'
      Size = 255
    end
    object qrContratoRNTRC: TStringField
      FieldName = 'RNTRC'
      Size = 255
    end
    object qrContratovalRNTRC: TStringField
      FieldName = 'valRNTRC'
      Size = 255
    end
    object qrContratoEndereco: TStringField
      FieldName = 'Endereco'
      Size = 255
    end
    object qrContratoCEP: TStringField
      FieldName = 'CEP'
      Size = 255
    end
    object qrContratoTelefone: TStringField
      FieldName = 'Telefone'
      EditMask = '(99) 99999-9999'
      Size = 255
    end
    object qrContratoEmail: TStringField
      FieldName = 'Email'
      Size = 255
    end
    object qrContratoBanco: TStringField
      FieldName = 'Banco'
      Size = 255
    end
    object qrContratoAgencia: TStringField
      FieldName = 'Agencia'
      Size = 255
    end
    object qrContratoContaBancaria: TStringField
      FieldName = 'ContaBancaria'
      Size = 255
    end
    object qrContratoTipoConta: TStringField
      FieldName = 'TipoConta'
      Size = 255
    end
    object qrContratoPlaca: TStringField
      FieldName = 'Placa'
      Size = 255
    end
    object qrContratoChassi: TStringField
      FieldName = 'Chassi'
      Size = 255
    end
    object qrContratoMarca: TStringField
      FieldName = 'Marca'
      Size = 255
    end
    object qrContratoAno: TStringField
      FieldName = 'Ano'
      Size = 255
    end
    object qrContratoRenavam: TStringField
      FieldName = 'Renavam'
      Size = 255
    end
    object qrContratoMotorista: TStringField
      FieldName = 'Motorista'
      Size = 255
    end
    object qrContratoMotoristaDtNas: TDateTimeField
      FieldName = 'MotoristaDtNas'
    end
    object qrContratoMotoristaTelefone: TStringField
      FieldName = 'MotoristaTelefone'
      Size = 255
    end
    object qrContratoMotoristaCPF: TStringField
      FieldName = 'MotoristaCPF'
      Size = 255
    end
    object qrContratoMotoristaRG: TStringField
      FieldName = 'MotoristaRG'
      Size = 255
    end
    object qrContratoMotoristaCNH: TStringField
      FieldName = 'MotoristaCNH'
      Size = 255
    end
    object qrContratoMotoristaCNHCategoria: TStringField
      FieldName = 'MotoristaCNHCategoria'
      Size = 255
    end
    object qrContratoMotoristaCNHValidade: TDateTimeField
      FieldName = 'MotoristaCNHValidade'
      EditMask = '99/99/9999'
    end
    object qrContratoMotoristaMae: TStringField
      FieldName = 'MotoristaMae'
      Size = 255
    end
    object qrContratoMotoristaPai: TStringField
      FieldName = 'MotoristaPai'
      Size = 255
    end
    object qrContratoValorFrete: TBCDField
      FieldName = 'ValorFrete'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object qrContratoValorOutros: TBCDField
      FieldName = 'ValorOutros'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object qrContratoValorTotalContratado: TBCDField
      FieldName = 'ValorTotalContratado'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object qrContratoValorRetencoes: TBCDField
      FieldName = 'ValorRetencoes'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object qrContratoValorFreteLiquido: TBCDField
      FieldName = 'ValorFreteLiquido'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object qrContratoValorAdiantamento: TBCDField
      FieldName = 'ValorAdiantamento'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object qrContratoValorSaldoPagar: TBCDField
      FieldName = 'ValorSaldoPagar'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object qrContratoValorReembolsoDesconto: TBCDField
      FieldName = 'ValorReembolsoDesconto'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object qrContratoValorSaldoQuitacao: TBCDField
      FieldName = 'ValorSaldoQuitacao'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object qrContratoBaseCalculoINSS: TBCDField
      FieldName = 'BaseCalculoINSS'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object qrContratoRetencaoINSS: TBCDField
      FieldName = 'RetencaoINSS'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object qrContratoRetencaoSEST: TBCDField
      FieldName = 'RetencaoSEST'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object qrContratoRetencaoIRPF: TBCDField
      FieldName = 'RetencaoIRPF'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object qrContratoTotalRetencoes: TBCDField
      FieldName = 'TotalRetencoes'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object qrContratoReembolsoPedagio: TBCDField
      FieldName = 'ReembolsoPedagio'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object qrContratoReembolsoDescarga: TBCDField
      FieldName = 'ReembolsoDescarga'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object qrContratoReembolsoOutros: TBCDField
      FieldName = 'ReembolsoOutros'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object qrContratoDescontos: TBCDField
      FieldName = 'Descontos'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object qrContratoReembolsoDesconto: TBCDField
      FieldName = 'ReembolsoDesconto'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object qrContratoObservacoes1: TStringField
      FieldName = 'Observacoes1'
      Size = 255
    end
    object qrContratoObservacoes2: TStringField
      FieldName = 'Observacoes2'
      Size = 255
    end
    object qrContratoDocumento: TStringField
      FieldName = 'Documento'
      Size = 255
    end
    object qrContratoNotas: TStringField
      FieldName = 'Notas'
      Size = 255
    end
    object qrContratoNatureza: TStringField
      FieldName = 'Natureza'
      Size = 255
    end
    object qrContratoUnidadeMedida: TStringField
      FieldName = 'UnidadeMedida'
      Size = 255
    end
    object qrContratoQuantidade: TStringField
      FieldName = 'Quantidade'
      Size = 255
    end
    object qrContratoRemetente: TStringField
      FieldName = 'Remetente'
      Size = 255
    end
    object qrContratoDestinatario: TStringField
      FieldName = 'Destinatario'
      Size = 255
    end
    object qrContratoRemetenteEndereco: TStringField
      FieldName = 'RemetenteEndereco'
      Size = 255
    end
    object qrContratoDestinatarioEndereco: TStringField
      FieldName = 'DestinatarioEndereco'
      Size = 255
    end
    object qrContratoAdiantamentoPercentual: TBCDField
      FieldName = 'AdiantamentoPercentual'
      Precision = 18
      Size = 2
    end
  end
  object DataSource1: TDataSource
    DataSet = qrContrato
    Left = 384
  end
  object qrTrans: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM TRANSPORTADORA'
      'ORDER BY TRANS_RAZA')
    Left = 451
    Top = 10
    object qrTransTRANS_RAZA: TStringField
      DisplayWidth = 60
      FieldName = 'TRANS_RAZA'
      Size = 60
    end
    object qrTransTRANS_FANTASIA: TStringField
      DisplayWidth = 40
      FieldName = 'TRANS_FANTASIA'
      Size = 40
    end
    object qrTransTRANS_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'TRANS_ID'
      ReadOnly = True
      Visible = False
    end
    object qrTransTRANS_CNPJ: TStringField
      DisplayWidth = 15
      FieldName = 'TRANS_CNPJ'
      Visible = False
      Size = 15
    end
    object qrTransTRANS_INSCRICAO: TStringField
      DisplayWidth = 15
      FieldName = 'TRANS_INSCRICAO'
      Visible = False
      Size = 15
    end
    object qrTransTRANS_ENDERECO: TStringField
      DisplayWidth = 50
      FieldName = 'TRANS_ENDERECO'
      Visible = False
      Size = 50
    end
    object qrTransTRANS_ENDERECO_COMPL: TStringField
      DisplayWidth = 20
      FieldName = 'TRANS_ENDERECO_COMPL'
      Visible = False
    end
    object qrTransTRANS_ENDERECO_BAIRRO: TStringField
      DisplayWidth = 40
      FieldName = 'TRANS_ENDERECO_BAIRRO'
      Visible = False
      Size = 40
    end
    object qrTransTRANS_MUNICIPIO: TStringField
      DisplayWidth = 40
      FieldName = 'TRANS_MUNICIPIO'
      Visible = False
      Size = 40
    end
    object qrTransTRANS_CEP: TStringField
      DisplayWidth = 8
      FieldName = 'TRANS_CEP'
      Visible = False
      Size = 8
    end
    object qrTransUF_SIGLA: TStringField
      DisplayWidth = 2
      FieldName = 'UF_SIGLA'
      Visible = False
      Size = 2
    end
    object qrTransTRANS_TEL: TStringField
      DisplayWidth = 11
      FieldName = 'TRANS_TEL'
      Visible = False
      Size = 11
    end
    object qrTransTRANS_TEL2: TStringField
      DisplayWidth = 11
      FieldName = 'TRANS_TEL2'
      Visible = False
      Size = 11
    end
    object qrTransTRANS_FAX: TStringField
      DisplayWidth = 11
      FieldName = 'TRANS_FAX'
      Visible = False
      Size = 11
    end
    object qrTransTRANS_EMAIL: TStringField
      DisplayWidth = 60
      FieldName = 'TRANS_EMAIL'
      Visible = False
      Size = 60
    end
    object qrTransTRANS_CONTATO: TStringField
      DisplayWidth = 30
      FieldName = 'TRANS_CONTATO'
      Visible = False
      Size = 30
    end
    object qrTransTRANS_FLAG: TStringField
      DisplayWidth = 1
      FieldName = 'TRANS_FLAG'
      Visible = False
      Size = 1
    end
    object qrTransCON_CODI: TStringField
      DisplayWidth = 6
      FieldName = 'CON_CODI'
      Visible = False
      Size = 6
    end
    object qrTransMUN_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'MUN_ID'
      Visible = False
    end
    object qrTransTRANS_PESSOA: TStringField
      DisplayWidth = 1
      FieldName = 'TRANS_PESSOA'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object qrTransTRANS_REDES: TStringField
      DisplayWidth = 1
      FieldName = 'TRANS_REDES'
      Visible = False
      Size = 1
    end
    object qrTransPIS: TStringField
      DisplayWidth = 50
      FieldName = 'PIS'
      Visible = False
      Size = 50
    end
    object qrTransIBGE_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'IBGE_ID'
      Visible = False
    end
    object qrTransRNTRC: TStringField
      DisplayWidth = 50
      FieldName = 'RNTRC'
      Visible = False
      Size = 50
    end
    object qrTransTRANS_CATEGORIA: TStringField
      DisplayWidth = 1
      FieldName = 'TRANS_CATEGORIA'
      Visible = False
      Size = 1
    end
    object qrTransBANCO: TStringField
      FieldName = 'BANCO'
      Size = 255
    end
    object qrTransTIPOCONTA: TStringField
      FieldName = 'TIPOCONTA'
      Size = 255
    end
    object qrTransAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 255
    end
    object qrTransCONTACORRENTE: TStringField
      FieldName = 'CONTACORRENTE'
      Size = 255
    end
  end
  object qrMot: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <
      item
        Name = 'TRANS_ID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM TRANSPORTADORA_MOTORISTA'
      'WHERE TRANS_ID = :TRANS_ID')
    Left = 328
    Top = 65529
    object qrMotMOT_ID: TAutoIncField
      FieldName = 'MOT_ID'
      ReadOnly = True
    end
    object qrMotTRANS_ID: TIntegerField
      FieldName = 'TRANS_ID'
    end
    object qrMotMOT_NOME: TStringField
      FieldName = 'MOT_NOME'
      Size = 40
    end
    object qrMotMOT_ENDERECO: TStringField
      FieldName = 'MOT_ENDERECO'
      Size = 50
    end
    object qrMotMOT_MUNICIPIO: TStringField
      FieldName = 'MOT_MUNICIPIO'
      Size = 40
    end
    object qrMotMOT_CEP: TStringField
      FieldName = 'MOT_CEP'
      Size = 8
    end
    object qrMotUF_SIGLA: TStringField
      FieldName = 'UF_SIGLA'
      Size = 2
    end
    object qrMotMOT_CPF: TStringField
      FieldName = 'MOT_CPF'
      Size = 15
    end
    object qrMotMOT_RG: TStringField
      FieldName = 'MOT_RG'
      Size = 15
    end
    object qrMotMOT_DT_NASC: TDateTimeField
      FieldName = 'MOT_DT_NASC'
    end
    object qrMotMOT_RG_ORGAO: TStringField
      FieldName = 'MOT_RG_ORGAO'
      Size = 6
    end
    object qrMotMOT_CNH: TStringField
      FieldName = 'MOT_CNH'
      Size = 15
    end
    object qrMotMOT_CNH_CATEG: TStringField
      FieldName = 'MOT_CNH_CATEG'
      Size = 3
    end
    object qrMotMOT_CNH_VALID: TDateTimeField
      FieldName = 'MOT_CNH_VALID'
    end
    object qrMotMOT_PAI: TStringField
      FieldName = 'MOT_PAI'
      Size = 40
    end
    object qrMotMOT_MAE: TStringField
      FieldName = 'MOT_MAE'
      Size = 40
    end
    object qrMotMOT_TEL_PESS: TStringField
      FieldName = 'MOT_TEL_PESS'
      Size = 11
    end
    object qrMotMOT_TEL_COM: TStringField
      FieldName = 'MOT_TEL_COM'
      Size = 11
    end
    object qrMotMOT_PAMCARD: TStringField
      FieldName = 'MOT_PAMCARD'
      Size = 1
    end
    object qrMotMOT_PAMCARD_VIG: TDateTimeField
      FieldName = 'MOT_PAMCARD_VIG'
    end
    object qrMotMOT_ENDERECO_COMPL: TStringField
      FieldName = 'MOT_ENDERECO_COMPL'
    end
    object qrMotMOT_ENDERECO_BAIRRO: TStringField
      FieldName = 'MOT_ENDERECO_BAIRRO'
      Size = 40
    end
    object qrMotVEIC_ID: TIntegerField
      FieldName = 'VEIC_ID'
    end
    object qrMotMOT_VEIC_PLACA: TStringField
      FieldName = 'MOT_VEIC_PLACA'
      Size = 8
    end
    object qrMotMOT_VEIC_CIDADE: TStringField
      FieldName = 'MOT_VEIC_CIDADE'
      Size = 50
    end
    object qrMotMOT_VEIC_UF_SIGLA: TStringField
      FieldName = 'MOT_VEIC_UF_SIGLA'
      Size = 2
    end
    object qrMotMOT_VEIC_MARCA: TStringField
      FieldName = 'MOT_VEIC_MARCA'
      Size = 50
    end
    object qrMotMOT_VEIC_ANO: TStringField
      FieldName = 'MOT_VEIC_ANO'
      Size = 4
    end
    object qrMotMOT_VEIC_MODELO: TStringField
      FieldName = 'MOT_VEIC_MODELO'
      Size = 40
    end
    object qrMotMOT_VEIC_COR: TStringField
      FieldName = 'MOT_VEIC_COR'
    end
    object qrMotMOT_VEIC_CHASSI: TStringField
      FieldName = 'MOT_VEIC_CHASSI'
      Size = 60
    end
    object qrMotMOT_CARRETA_PLACA: TStringField
      FieldName = 'MOT_CARRETA_PLACA'
      Size = 8
    end
    object qrMotMOT_CARRETA_CIDADE: TStringField
      FieldName = 'MOT_CARRETA_CIDADE'
      Size = 50
    end
    object qrMotMOT_CARRETA_UF_SIGLA: TStringField
      FieldName = 'MOT_CARRETA_UF_SIGLA'
      Size = 2
    end
    object qrMotMOT_CARRETA_MARCA: TStringField
      FieldName = 'MOT_CARRETA_MARCA'
      Size = 50
    end
    object qrMotMOT_CARRETA_ANO: TStringField
      FieldName = 'MOT_CARRETA_ANO'
      Size = 4
    end
    object qrMotMOT_CARRETA_MODELO: TStringField
      FieldName = 'MOT_CARRETA_MODELO'
      Size = 40
    end
    object qrMotMOT_CARRETA_COR: TStringField
      FieldName = 'MOT_CARRETA_COR'
    end
    object qrMotMOT_CARRETA_CHASSI: TStringField
      FieldName = 'MOT_CARRETA_CHASSI'
      Size = 60
    end
    object qrMotMOT_PAMC_NUM: TStringField
      FieldName = 'MOT_PAMC_NUM'
      Size = 15
    end
    object qrMotMOT_NUMPIS: TStringField
      FieldName = 'MOT_NUMPIS'
      Size = 15
    end
    object qrMotMOT_CARRETA_COMPR: TFloatField
      FieldName = 'MOT_CARRETA_COMPR'
    end
    object qrMotMOT_CARRETA_LARG: TFloatField
      FieldName = 'MOT_CARRETA_LARG'
    end
    object qrMotMOT_CARRETA_ALT: TFloatField
      FieldName = 'MOT_CARRETA_ALT'
    end
    object qrMotMOT_CARRETA_M3: TFloatField
      FieldName = 'MOT_CARRETA_M3'
    end
    object qrMotMOT_NEXTEL: TStringField
      FieldName = 'MOT_NEXTEL'
      Size = 50
    end
    object qrMotMOT_EQUIP: TStringField
      FieldName = 'MOT_EQUIP'
      Size = 50
    end
    object qrMotRENAVAN: TStringField
      FieldName = 'RENAVAN'
      Size = 15
    end
    object qrMotRNTRC: TStringField
      FieldName = 'RNTRC'
      Size = 10
    end
    object qrMotPADRAO: TStringField
      FieldName = 'PADRAO'
      Size = 1
    end
    object qrMotCIOT: TStringField
      FieldName = 'CIOT'
      Size = 255
    end
  end
end
