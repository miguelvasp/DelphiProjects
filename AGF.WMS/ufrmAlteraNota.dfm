object frmAlteraNota: TfrmAlteraNota
  Left = 284
  Top = 198
  Width = 923
  Height = 500
  Caption = 'Alteração de notas fiscais'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 14
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 30
    Height = 14
    Caption = 'Nota'
  end
  object Edit1: TEdit
    Left = 16
    Top = 24
    Width = 209
    Height = 22
    TabOrder = 0
  end
  object Button1: TButton
    Left = 232
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Buscar'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 320
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Eliminar'
    TabOrder = 2
    OnClick = Button2Click
  end
  object wwDBGrid1: TwwDBGrid
    Left = 16
    Top = 64
    Width = 873
    Height = 377
    Selected.Strings = (
      'NFI_NUMERO'#9'10'#9'Nota Fiscal'#9'F'
      'OS_ID'#9'10'#9'OS'#9'F'
      'TDOC_NOME'#9'20'#9'Tipo de Nota'#9'F'
      'NFI_DEST_RAZA'#9'40'#9'Destinatário'#9'F'
      'NFI_DEMI'#9'10'#9'Emissão'#9'F')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 3
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Verdana'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
  end
  object qrNF: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     NF.NFI_CODI, NF.OS_ID, NF.NFI_NUMERO, NF.NFI_DEST_NOM' +
        'E, NF.NFI_DEST_RAZA, NF.NFI_DEMI, TPDOC.TDOC_NOME'
      'FROM         NF INNER JOIN'
      '                      TPDOC ON NF.TDOC_ID = TPDOC.TDOC_ID')
    Left = 312
    Top = 152
    object qrNFNFI_NUMERO: TStringField
      DisplayLabel = 'Nota Fiscal'
      DisplayWidth = 10
      FieldName = 'NFI_NUMERO'
      Size = 10
    end
    object qrNFOS_ID: TIntegerField
      DisplayLabel = 'OS'
      DisplayWidth = 10
      FieldName = 'OS_ID'
    end
    object qrNFTDOC_NOME: TStringField
      DisplayLabel = 'Tipo de Nota'
      DisplayWidth = 20
      FieldName = 'TDOC_NOME'
      Size = 40
    end
    object qrNFNFI_DEST_RAZA: TStringField
      DisplayLabel = 'Destinatário'
      DisplayWidth = 40
      FieldName = 'NFI_DEST_RAZA'
      Size = 50
    end
    object qrNFNFI_DEMI: TDateTimeField
      DisplayLabel = 'Emissão'
      DisplayWidth = 10
      FieldName = 'NFI_DEMI'
      DisplayFormat = 'DD/MM/YYYY'
    end
    object qrNFNFI_DEST_NOME: TStringField
      DisplayWidth = 30
      FieldName = 'NFI_DEST_NOME'
      Visible = False
      Size = 30
    end
    object qrNFNFI_CODI: TAutoIncField
      FieldName = 'NFI_CODI'
      ReadOnly = True
      Visible = False
    end
  end
  object DataSource1: TDataSource
    DataSet = qrNF
    Left = 232
    Top = 160
  end
  object qrAux: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    Left = 400
    Top = 152
  end
end
