object frmFechamentoFrete: TfrmFechamentoFrete
  Left = 357
  Top = 232
  BorderStyle = bsDialog
  Caption = 'Fechamento de Frete'
  ClientHeight = 200
  ClientWidth = 550
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
  object Label1: TLabel
    Left = 16
    Top = 24
    Width = 40
    Height = 14
    Caption = 'Label1'
  end
  object Label2: TLabel
    Left = 16
    Top = 8
    Width = 116
    Height = 14
    Caption = 'Último fechamento'
  end
  object GroupBox1: TGroupBox
    Left = 16
    Top = 56
    Width = 521
    Height = 89
    Caption = 'Selecione os dados do fechamento do pagamento de frete'
    TabOrder = 0
    object Label5: TLabel
      Left = 24
      Top = 27
      Width = 56
      Height = 14
      Anchors = [akTop, akRight]
      Caption = 'Quinzena'
    end
    object Label6: TLabel
      Left = 184
      Top = 27
      Width = 24
      Height = 14
      Anchors = [akTop, akRight]
      Caption = 'Mês'
    end
    object Label7: TLabel
      Left = 344
      Top = 27
      Width = 25
      Height = 14
      Anchors = [akTop, akRight]
      Caption = 'Ano'
    end
    object cboQuinzena: TComboBox
      Left = 24
      Top = 43
      Width = 145
      Height = 22
      Style = csDropDownList
      Anchors = [akTop, akRight]
      ItemHeight = 14
      TabOrder = 0
      Items.Strings = (
        '1° Quinzena'
        '2° Quinzena')
    end
    object cboMes: TComboBox
      Left = 181
      Top = 43
      Width = 145
      Height = 22
      Style = csDropDownList
      Anchors = [akTop, akRight]
      ItemHeight = 14
      TabOrder = 1
      Items.Strings = (
        ''
        'Janeiro'
        'Fevereiro'
        'Março'
        'Abril'
        'Maio'
        'Junho'
        'Julho'
        'Agosto'
        'Setembro'
        'Outubro'
        'Novembro'
        'Dezembro')
    end
    object cboAno: TComboBox
      Left = 341
      Top = 43
      Width = 145
      Height = 22
      Style = csDropDownList
      Anchors = [akTop, akRight]
      ItemHeight = 14
      TabOrder = 2
      Items.Strings = (
        '2013'
        '2014'
        '2015'
        '2016'
        '2017'
        '2018'
        '2019'
        '2020'
        '2021')
    end
  end
  object Button1: TButton
    Left = 16
    Top = 160
    Width = 153
    Height = 25
    Caption = 'Confirmar fechamento'
    TabOrder = 1
    OnClick = Button1Click
  end
  object qrParametro: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    SQL.Strings = (
      
        'SELECT DBO.MOSTRA_FECHAMENTO_FRETE(DATA_FRETE_FECHAMENTO) as dat' +
        'a, DATA_FRETE_FECHAMENTO FROM PARAMETRO')
    Left = 425
    Top = 13
    object qrParametrodata: TStringField
      FieldName = 'data'
      ReadOnly = True
      Size = 200
    end
    object qrParametroDATA_FRETE_FECHAMENTO: TDateTimeField
      FieldName = 'DATA_FRETE_FECHAMENTO'
    end
  end
  object ADOQuery1: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    Left = 208
    Top = 8
  end
end
