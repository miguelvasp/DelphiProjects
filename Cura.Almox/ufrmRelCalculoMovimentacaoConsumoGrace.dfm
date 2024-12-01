object frmRelCalculoMovimentacaoConsumoGrace: TfrmRelCalculoMovimentacaoConsumoGrace
  Left = 35
  Top = 124
  Width = 1382
  Height = 563
  Caption = 'Relatório de Calculo de Consumo'
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
    Width = 144
    Height = 14
    Caption = 'Ano Mes Inicial (AAAAMM)'
  end
  object Label2: TLabel
    Left = 184
    Top = 8
    Width = 138
    Height = 14
    Caption = 'Ano Mes Final (AAAAMM)'
  end
  object Label3: TLabel
    Left = 544
    Top = 27
    Width = 143
    Height = 16
    Caption = 'Calculando os dados...'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object edtIni: TEdit
    Left = 16
    Top = 24
    Width = 145
    Height = 22
    TabOrder = 0
    Text = 'edtIni'
  end
  object edtFim: TEdit
    Left = 184
    Top = 24
    Width = 145
    Height = 22
    TabOrder = 1
    Text = 'Edit1'
  end
  object btnConsultar: TButton
    Left = 344
    Top = 23
    Width = 75
    Height = 25
    Caption = 'Consultar'
    TabOrder = 2
    OnClick = btnConsultarClick
  end
  object GridCG: TwwDBGrid
    Left = 4
    Top = 64
    Width = 1357
    Height = 457
    PictureMasks.Strings = (
      '202204'#9'###,###,##0.00'#9'T'#9'T')
    Selected.Strings = (
      'Tipo'#9'250'#9'Tipo'
      '202201'#9'39'#9'202201'
      '202202'#9'39'#9'202202'
      '202203'#9'39'#9'202203'
      '202204'#9'39'#9'202204'
      'ORDEM'#9'10'#9'ORDEM'
      'Soma'#9'10'#9'Acumulado'#9'F')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = dsExcel
    ReadOnly = True
    TabOrder = 3
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
  end
  object btnExcel: TButton
    Left = 424
    Top = 23
    Width = 113
    Height = 25
    Caption = 'Exportar Excel'
    TabOrder = 4
    OnClick = btnExcelClick
  end
  object qrAux: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    Left = 792
    Top = 24
  end
  object qrConsulta: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT Tipo, [202201], [202202], [202203], [202204], ORDEM, 0 as' +
        ' Soma'
      'FROM('
      '    SELECT ANOMES, TIPO, VALOR, ORDEM'
      '    FROM RelCalculoMovimentacaoConsumoGrace'
      ') AS SOURCETABLE'
      'PIVOT'
      '('
      '    SUM(VALOR)'
      '    FOR [anomes]'
      '    IN ([202201], [202202], [202203], [202204])'
      ') AS PIVOTTABLE'
      'ORDER by ORDEM')
    Left = 664
    Top = 32
  end
  object dsExcel: TDataSource
    DataSet = qrConsulta
    Left = 464
    Top = 192
  end
end
