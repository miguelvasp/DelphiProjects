object Form1: TForm1
  Left = 277
  Top = 162
  Width = 592
  Height = 541
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 16
    Width = 56
    Height = 13
    Caption = 'SERVIDOR'
  end
  object Label2: TLabel
    Left = 144
    Top = 16
    Width = 37
    Height = 13
    Caption = 'BANCO'
  end
  object Button1: TButton
    Left = 8
    Top = 80
    Width = 129
    Height = 25
    Caption = 'Consultar'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 8
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'NBFSRV-01'
  end
  object Edit2: TEdit
    Left = 144
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'NBF'
  end
  object Button2: TButton
    Left = 144
    Top = 80
    Width = 121
    Height = 25
    Caption = 'Corrigir'
    TabOrder = 3
    OnClick = Button2Click
  end
  object wwDBGrid1: TwwDBGrid
    Left = 8
    Top = 112
    Width = 553
    Height = 385
    DittoAttributes.ShortCutDittoField = 0
    DittoAttributes.ShortCutDittoRecord = 0
    DittoAttributes.Options = []
    DisableThemesInTitle = False
    Selected.Strings = (
      'NFI_CODI'#9'10'#9'CODIGO NF'#9'F'
      'NFI_DEST_CGC'#9'14'#9'NF CNPJ'#9'F'
      'NFI_DEST_INSCRG'#9'20'#9'NF IE'#9'F'
      'CLIF_CGCCPF'#9'14'#9'CNPJ'#9'F'
      'CLIF_INSCRG'#9'15'#9'IE'#9'F')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DataSource1
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ReadOnly = True
    TabOrder = 4
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
  end
  object qrBusca: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select '
      #9'A.NFI_CODI,'
      #9'dbo.CONTROLA_CNPJ(A.NFI_DEST_CGC) NFI_DEST_CGC,'
      #9'A.NFI_DEST_INSCRG,'
      #9'dbo.CONTROLA_CNPJ(B.CLIF_CGCCPF) CLIF_CGCCPF,'
      #9'B.CLIF_INSCRG'
      'from NF A INNER JOIN CLIENTEFINAL B'
      'ON A.NFI_DEST_CLI = B.CLIF_ID'
      
        'WHERE (dbo.CONTROLA_CNPJ(A.NFI_DEST_CGC) <> dbo.CONTROLA_CNPJ(B.' +
        'CLIF_CGCCPF)) OR '
      '      (A.NFI_DEST_INSCRG <> B.CLIF_INSCRG)'
      '      ')
    Left = 304
    Top = 8
    object qrBuscaNFI_CODI: TAutoIncField
      DisplayLabel = 'CODIGO NF'
      DisplayWidth = 10
      FieldName = 'NFI_CODI'
      ReadOnly = True
    end
    object qrBuscaNFI_DEST_CGC: TStringField
      DisplayLabel = 'NF CNPJ'
      DisplayWidth = 14
      FieldName = 'NFI_DEST_CGC'
      ReadOnly = True
      Size = 14
    end
    object qrBuscaNFI_DEST_INSCRG: TStringField
      DisplayLabel = 'NF IE'
      DisplayWidth = 20
      FieldName = 'NFI_DEST_INSCRG'
    end
    object qrBuscaCLIF_CGCCPF: TStringField
      DisplayLabel = 'CNPJ'
      DisplayWidth = 14
      FieldName = 'CLIF_CGCCPF'
      ReadOnly = True
      Size = 14
    end
    object qrBuscaCLIF_INSCRG: TStringField
      DisplayLabel = 'IE'
      DisplayWidth = 15
      FieldName = 'CLIF_INSCRG'
      Size = 15
    end
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=45482;Persist Security Info=True;Us' +
      'er ID=SA;Initial Catalog=NBF_ATUAL;Data Source=MIKE-PC'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    BeforeConnect = ADOConnection1BeforeConnect
    Left = 376
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = qrBusca
    Left = 80
    Top = 184
  end
  object qrAux: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 456
    Top = 8
  end
end
