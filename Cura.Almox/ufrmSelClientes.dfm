object frmSelClientes: TfrmSelClientes
  Left = 269
  Top = 132
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Selecionar Clientes'
  ClientHeight = 501
  ClientWidth = 676
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 105
    Height = 16
    Caption = 'Buscar pelo nome'
  end
  object edtNome: TEdit
    Left = 8
    Top = 24
    Width = 489
    Height = 24
    TabOrder = 0
    OnChange = edtNomeChange
  end
  object Button1: TButton
    Left = 8
    Top = 56
    Width = 105
    Height = 25
    Caption = 'Marcar todos'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 120
    Top = 56
    Width = 121
    Height = 25
    Caption = 'Limpar sele��o'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 248
    Top = 56
    Width = 209
    Height = 25
    Caption = 'Mostrar Clientes selecionados'
    TabOrder = 3
    OnClick = Button3Click
  end
  object wwDBGrid1: TwwDBGrid
    Left = 8
    Top = 88
    Width = 657
    Height = 401
    Selected.Strings = (
      'SEL'#9'1'#9'***'
      'CLI_APELIDO'#9'20'#9'Nome'
      'CLI_RAZA'#9'70'#9'Raz�o'#9'F')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DataSource1
    TabOrder = 4
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Arial'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    IndicatorColor = icBlack
  end
  object Button4: TButton
    Left = 464
    Top = 56
    Width = 97
    Height = 25
    Caption = 'Confirmar'
    TabOrder = 5
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 568
    Top = 56
    Width = 97
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 6
    OnClick = Button5Click
  end
  object Q_AUX: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    ValidateWithMask = True
    Left = 488
    Top = 256
  end
  object Q_RecCli: TwwQuery
    CachedUpdates = True
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    RequestLive = True
    SQL.Strings = (
      
        'Select isnull(SEL, '#39'N'#39') SEL, CLI_CODI,CLI_RAZA,CLI_APELIDO from ' +
        'CPACLIE order by CLI_APELIDO')
    UpdateObject = UpdateSQL1
    ControlType.Strings = (
      'SEL;CheckBox;S;N')
    ValidateWithMask = True
    Left = 232
    Top = 193
    object Q_RecCliSEL: TStringField
      DisplayLabel = '***'
      DisplayWidth = 1
      FieldName = 'SEL'
      Origin = 'FINANCEIRO.CPACLIE.SEL'
      OnChange = Q_RecCliSELChange
      FixedChar = True
      Size = 1
    end
    object Q_RecCliCLI_APELIDO: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 20
      FieldName = 'CLI_APELIDO'
      Origin = 'CPACLIE.CLI_CODI'
    end
    object Q_RecCliCLI_RAZA: TStringField
      DisplayLabel = 'Raz�o'
      DisplayWidth = 70
      FieldName = 'CLI_RAZA'
      Origin = 'CPACLIE.CLI_RAZA'
      Size = 50
    end
    object Q_RecCliCLI_CODI: TAutoIncField
      DisplayLabel = 'C�digo'
      DisplayWidth = 10
      FieldName = 'CLI_CODI'
      Origin = 'CPACLIE.CLI_CODI'
      Visible = False
    end
  end
  object DataSource1: TDataSource
    DataSet = Q_RecCli
    Left = 224
    Top = 256
  end
  object UpdateSQL1: TUpdateSQL
    Left = 344
    Top = 240
  end
end
