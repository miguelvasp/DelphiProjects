object frmLeituraRetornoPamcard: TfrmLeituraRetornoPamcard
  Left = 170
  Top = 87
  Width = 760
  Height = 600
  Caption = 'Leitura PAMCARD - CIOT'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 241
    Height = 562
    Align = alLeft
    TabOrder = 0
    object Label1: TLabel
      Left = 4
      Top = 6
      Width = 175
      Height = 14
      Caption = 'Selecione a pasta de destino'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RzShellTree1: TRzShellTree
      Left = 1
      Top = 42
      Width = 239
      Height = 478
      Align = alClient
      Indent = 19
      TabOrder = 0
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 239
      Height = 41
      Align = alTop
      Caption = 'Selecione a Pasta de origem dos arquivos'
      TabOrder = 1
    end
    object Panel3: TPanel
      Left = 1
      Top = 520
      Width = 239
      Height = 41
      Align = alBottom
      TabOrder = 2
      object Button1: TButton
        Left = 40
        Top = 8
        Width = 121
        Height = 25
        Caption = 'Confirmar'
        TabOrder = 0
        OnClick = Button1Click
      end
    end
  end
  object Panel4: TPanel
    Left = 241
    Top = 0
    Width = 503
    Height = 562
    Align = alClient
    Caption = 'Panel4'
    TabOrder = 1
    object wwDBGrid1: TwwDBGrid
      Left = 137
      Top = 1
      Width = 365
      Height = 519
      ControlType.Strings = (
        'SEL;CheckBox;S;N')
      Selected.Strings = (
        'SEL'#9'1'#9'***'
        'NOME'#9'50'#9'Nome do arquivo'#9'F')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      Align = alClient
      DataSource = DataSource1
      TabOrder = 0
      TitleAlignment = taLeftJustify
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
      IndicatorColor = icBlack
    end
    object FileListBox1: TFileListBox
      Left = 1
      Top = 1
      Width = 136
      Height = 519
      Align = alLeft
      ItemHeight = 14
      TabOrder = 1
      Visible = False
    end
    object Panel5: TPanel
      Left = 1
      Top = 520
      Width = 501
      Height = 41
      Align = alBottom
      TabOrder = 2
      object Label2: TLabel
        Left = 8
        Top = 13
        Width = 298
        Height = 14
        Caption = 'Selecione os arquivos a serem importados e clique em '
      end
      object Button2: TButton
        Left = 312
        Top = 8
        Width = 153
        Height = 25
        Caption = 'Efetuar Leitura'
        TabOrder = 0
        OnClick = Button2Click
      end
    end
  end
  object qrArquivos: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from PamcardRetornoArquivos'
      'order by nome')
    Left = 680
    Top = 88
    object qrArquivosSEL: TStringField
      DisplayLabel = '***'
      DisplayWidth = 1
      FieldName = 'SEL'
      Size = 1
    end
    object qrArquivosNOME: TStringField
      DisplayLabel = 'Nome do arquivo'
      DisplayWidth = 50
      FieldName = 'NOME'
      Size = 150
    end
    object qrArquivosid: TAutoIncField
      DisplayWidth = 10
      FieldName = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
      Visible = False
    end
    object qrArquivosCH: TIntegerField
      DisplayWidth = 10
      FieldName = 'CH'
      Visible = False
    end
  end
  object DataSource1: TDataSource
    DataSet = qrArquivos
    Left = 592
    Top = 88
  end
  object ADOQuery1: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    Left = 392
    Top = 216
  end
end
