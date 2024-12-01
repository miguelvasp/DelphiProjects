object frmBuscaMaterial: TfrmBuscaMaterial
  Left = 559
  Top = 296
  BorderStyle = bsDialog
  Caption = 'Buscar Material'
  ClientHeight = 592
  ClientWidth = 1020
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 14
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1020
    Height = 59
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 276
      Height = 14
      Caption = 'Digite parte do Código do Material ou da Descrição'
    end
    object edtBuscar: TEdit
      Left = 16
      Top = 25
      Width = 561
      Height = 22
      TabOrder = 0
      OnChange = edtBuscarChange
      OnKeyDown = edtBuscarKeyDown
      OnKeyPress = edtBuscarKeyPress
    end
    object RadioGroup1: TRadioGroup
      Left = 656
      Top = 8
      Width = 249
      Height = 41
      Caption = 'Ordena por:'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Código'
        'Material')
      TabOrder = 1
    end
    object chkConsideraMarca: TCheckBox
      Left = 920
      Top = 24
      Width = 97
      Height = 17
      Caption = 'chkConsideraMarca'
      TabOrder = 2
      Visible = False
    end
  end
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 59
    Width = 1020
    Height = 492
    Selected.Strings = (
      'CodigoMaterial'#9'15'#9'Código'
      'MAT_DESC'#9'100'#9'Material'
      'MARCA_DESC'#9'20'#9'Marca'
      'MATMARCA_ID'#9'10'#9'MATMARCA_ID')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = DataSource1
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    TabOrder = 1
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
  end
  object Panel2: TPanel
    Left = 0
    Top = 551
    Width = 1020
    Height = 41
    Align = alBottom
    TabOrder = 2
    object lbSelecao: TLabel
      Left = 216
      Top = 8
      Width = 4
      Height = 14
      Visible = False
    end
    object Button1: TButton
      Left = 16
      Top = 8
      Width = 177
      Height = 25
      Caption = 'Selecionar Material'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Panel3: TPanel
      Left = 248
      Top = 8
      Width = 649
      Height = 25
      Caption = 
        'Use as setas para cima e para baixo para navegar entre os materi' +
        'ais e Enter para selecionar'
      Color = clHighlight
      TabOrder = 1
    end
  end
  object qrBusca: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT TOP 50 * FROM VW_ConsultaMaterial')
    Left = 392
    Top = 184
    object qrBuscaCodigoMaterial: TStringField
      DisplayLabel = 'Código'
      DisplayWidth = 15
      FieldName = 'CodigoMaterial'
      Size = 50
    end
    object qrBuscaMAT_DESC: TStringField
      DisplayLabel = 'Material'
      DisplayWidth = 100
      FieldName = 'MAT_DESC'
      Size = 100
    end
    object qrBuscaMARCA_DESC: TStringField
      DisplayLabel = 'Marca'
      DisplayWidth = 20
      FieldName = 'MARCA_DESC'
    end
    object qrBuscaMATMARCA_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'MATMARCA_ID'
    end
    object qrBuscaMAT_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'MAT_ID'
      ReadOnly = True
      Visible = False
    end
    object qrBuscaMARCA_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'MARCA_ID'
      Visible = False
    end
  end
  object DataSource1: TDataSource
    DataSet = qrBusca
    Left = 184
    Top = 168
  end
end
