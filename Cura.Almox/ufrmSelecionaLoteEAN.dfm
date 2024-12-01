object frmSelecionaLoteEAN: TfrmSelecionaLoteEAN
  Left = 222
  Top = 178
  Width = 1024
  Height = 614
  Caption = 'Selecção de Lote'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1008
    Height = 41
    Align = alTop
    Alignment = taLeftJustify
    Caption = '     Selecione o lote'
    Color = clNavy
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 591
      Top = 9
      Width = 118
      Height = 20
      Caption = 'Estoque Maximo'
    end
    object DBText1: TDBText
      Left = 716
      Top = 10
      Width = 65
      Height = 17
      DataField = 'EstoqueMaximo'
      DataSource = DataSource2
    end
    object Label2: TLabel
      Left = 791
      Top = 9
      Width = 114
      Height = 20
      Caption = 'Estoque Minimo'
    end
    object DBText2: TDBText
      Left = 920
      Top = 9
      Width = 65
      Height = 17
      DataField = 'EstoqueMinimo'
      DataSource = DataSource2
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 535
    Width = 1008
    Height = 41
    Align = alBottom
    TabOrder = 1
    object btnOk: TButton
      Left = 928
      Top = 8
      Width = 75
      Height = 25
      Caption = 'OK'
      TabOrder = 0
      OnClick = btnOkClick
    end
  end
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 41
    Width = 1008
    Height = 494
    Selected.Strings = (
      'MAT_DESC'#9'65'#9'Material'#9#9
      'MARCA_DESC'#9'15'#9'Marca'#9#9
      'UNI_SIGLA'#9'2'#9'Un.'#9#9
      'N_Lote'#9'20'#9'Lote'#9#9
      'Valid'#9'12'#9'Validade'#9#9
      'QTDE'#9'7'#9'QTDE'#9#9
      'QtdeSolicitada'#9'10'#9'Selecionar'#9#9)
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 6
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = DataSource1
    TabOrder = 2
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
  end
  object DataSource1: TDataSource
    Left = 456
    Top = 240
  end
  object DataSource2: TDataSource
    DataSet = frmRequisicaoSimplificada.qrEstoqueMax
    Left = 656
    Top = 160
  end
end
