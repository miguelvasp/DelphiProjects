object FLeituraBanco: TFLeituraBanco
  Left = 96
  Top = 83
  AutoScroll = False
  Caption = 'Leitura Arquivo Retorno Banco'
  ClientHeight = 408
  ClientWidth = 614
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object SBT_SELE: TSpeedButton
    Left = 125
    Top = 369
    Width = 146
    Height = 33
    Cursor = crHandPoint
    Hint = 'Impressão  de Etiquetas'
    Caption = '&Leitura'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003333330FFFFF
      FFF03333337F3FFFF3F73333330F0000F0F03333337F777737373333330FFFFF
      FFF033FFFF7FFF33FFF77000000007F00000377777777FF777770BBBBBBBB0F0
      FF037777777777F7F3730B77777BB0F0F0337777777777F7F7330B7FFFFFB0F0
      0333777F333377F77F330B7FFFFFB0009333777F333377777FF30B7FFFFFB039
      9933777F333377F777FF0B7FFFFFB0999993777F33337777777F0B7FFFFFB999
      9999777F3333777777770B7FFFFFB0399933777FFFFF77F777F3070077007039
      99337777777777F777F30B770077B039993377FFFFFF77F777330BB7007BB999
      93337777FF777777733370000000073333333777777773333333}
    NumGlyphs = 2
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    OnClick = SBT_SELEClick
  end
  object SpeedButton1: TSpeedButton
    Left = 322
    Top = 369
    Width = 143
    Height = 34
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
    OnClick = SpeedButton1Click
  end
  object Panel1: TPanel
    Left = 5
    Top = 2
    Width = 607
    Height = 361
    BevelInner = bvLowered
    TabOrder = 0
    object SBT_PESQ: TSpeedButton
      Left = 96
      Top = 195
      Width = 401
      Height = 27
      Hint = 'Altera Diretório de Geração do Arquivo'
      Caption = 'C:\ARQUIVO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsItalic]
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
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SBT_PESQClick
    end
    object Label1: TLabel
      Left = 161
      Top = 118
      Width = 101
      Height = 14
      Caption = 'Local de Cobrança'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Gauge1: TGauge
      Left = 96
      Top = 288
      Width = 401
      Height = 27
      ForeColor = clNavy
      Progress = 0
      Visible = False
    end
    object Label5: TLabel
      Left = 96
      Top = 269
      Width = 314
      Height = 13
      Caption = 'Aguarde : Gravando Informações do Número Bancário ....'
      Font.Charset = ANSI_CHARSET
      Font.Color = clTeal
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      Visible = False
    end
    object Memo1: TMemo
      Left = 17
      Top = 6
      Width = 572
      Height = 50
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Lines.Strings = (
        
          'Esta rotina efetua a Leitura do arquivo de Retorno do Banco. Ant' +
          'es de confirmar a leitura, informe o '
        'Banco e o nome do arquivo a ser lido.'
        
          'Para alterar o diretório e o nome do arquivo a ser lido  pressio' +
          'ne duplo clique sobre o nome do '
        'arquivo.')
      ParentFont = False
      TabOrder = 0
    end
    object wwDBLookupCombo1: TwwDBLookupCombo
      Left = 272
      Top = 115
      Width = 161
      Height = 21
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'LCO_BANC'#9'15'#9'Descrição'
        'BANC_CODI'#9'14'#9'Banco/Conta')
      LookupTable = Q_LCOB
      LookupField = 'LCO_CODI'
      TabOrder = 1
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
    end
  end
  object Q_AUX: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      '')
    ValidateWithMask = True
    Left = 24
    Top = 296
  end
  object Q_LCOB: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'select * from sialcob')
    ValidateWithMask = True
    Left = 24
    Top = 128
    object Q_LCOBLCO_BANC: TStringField
      DisplayLabel = 'Descrição'
      DisplayWidth = 15
      FieldName = 'LCO_BANC'
      Origin = 'sialcob.LCO_BANC'
      Size = 15
    end
    object Q_LCOBBANC_CODI: TStringField
      DisplayLabel = 'Banco/Conta'
      DisplayWidth = 14
      FieldName = 'BANC_CODI'
      Origin = 'sialcob.BANC_CODI'
      Size = 14
    end
    object Q_LCOBLCO_CODI: TStringField
      DisplayWidth = 3
      FieldName = 'LCO_CODI'
      Origin = 'sialcob.LCO_CODI'
      Visible = False
      Size = 3
    end
    object Q_LCOBLco_Floating: TIntegerField
      DisplayWidth = 10
      FieldName = 'Lco_Floating'
      Origin = 'sialcob.Lco_Floating'
      Visible = False
    end
    object Q_LCOBLco_FluxoCaixa: TStringField
      DisplayWidth = 1
      FieldName = 'Lco_FluxoCaixa'
      Origin = 'sialcob.Lco_FluxoCaixa'
      Visible = False
      Size = 1
    end
  end
  object Q_BANC: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'select * from CPABANC')
    ValidateWithMask = True
    Left = 16
    Top = 200
    object Q_BANCBAN_CODI: TStringField
      FieldName = 'BAN_CODI'
      Origin = 'CPABANC.BAN_CODI'
      Size = 14
    end
    object Q_BANCBAN_CARTAGECC: TStringField
      FieldName = 'BAN_CARTAGECC'
      Origin = 'CPABANC.BAN_CARTAGECC'
    end
    object Q_BANCBAN_CODEMPR: TStringField
      FieldName = 'BAN_CODEMPR'
      Origin = 'CPABANC.BAN_CODEMPR'
    end
  end
  object Q_PARA: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'select LocalBradesco,LocalBrasil,Par_juros,RemessaBradesco,'
      'RemessaBrasil from SIAPARA')
    ValidateWithMask = True
    Left = 24
    Top = 256
    object Q_PARALocalBradesco: TStringField
      FieldName = 'LocalBradesco'
      Size = 3
    end
    object Q_PARALocalBrasil: TStringField
      FieldName = 'LocalBrasil'
      Size = 3
    end
    object Q_PARAPar_juros: TFloatField
      FieldName = 'Par_juros'
    end
    object Q_PARARemessaBradesco: TIntegerField
      FieldName = 'RemessaBradesco'
    end
    object Q_PARARemessaBrasil: TIntegerField
      FieldName = 'RemessaBrasil'
    end
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Arquivos Retorno'
    Left = 460
    Top = 338
  end
end
