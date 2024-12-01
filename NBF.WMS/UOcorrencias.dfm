object frmOcorrencias: TfrmOcorrencias
  Left = 192
  Top = 114
  BorderStyle = bsSingle
  Caption = 'Cadastro de Ocorrencias de Transporte'
  ClientHeight = 446
  ClientWidth = 574
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object GroupBox1: TGroupBox
    Left = 8
    Top = 40
    Width = 553
    Height = 105
    Caption = 'OCORRÊNCIA'
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 52
      Height = 16
      Caption = 'CODIGO'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 16
      Top = 56
      Width = 85
      Height = 16
      Caption = 'OCORRENCIA'
      FocusControl = DBEdit2
    end
    object DBEdit1: TDBEdit
      Left = 72
      Top = 21
      Width = 65
      Height = 24
      DataField = 'CODIGO'
      DataSource = DataSource1
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 16
      Top = 72
      Width = 529
      Height = 24
      DataField = 'OCORRENCIA'
      DataSource = DataSource1
      TabOrder = 1
    end
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 8
    Width = 240
    Height = 25
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 152
    Width = 553
    Height = 287
    DataSource = DataSource1
    TabOrder = 2
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Verdana'
    TitleFont.Style = []
  end
  object Q_PARAMETRO: TwwQuery
    DatabaseName = 'NBFDADOS'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'SELECT CONNECTIONSTRING, PAR_RAZA,PAR_CNPJ FROM PARAMETRO'
      'WHERE PAR_ID = 2')
    ValidateWithMask = True
    Left = 252
    Top = 4
    object Q_PARAMETROPAR_RAZA: TStringField
      FieldName = 'PAR_RAZA'
      Origin = 'NBFDADOS.PARAMETRO.PAR_RAZA'
      FixedChar = True
      Size = 50
    end
    object Q_PARAMETROPAR_CNPJ: TStringField
      FieldName = 'PAR_CNPJ'
      Origin = 'NBFDADOS.PARAMETRO.PAR_CNPJ'
      FixedChar = True
      Size = 15
    end
    object Q_PARAMETROCONNECTIONSTRING: TStringField
      FieldName = 'CONNECTIONSTRING'
      FixedChar = True
      Size = 255
    end
  end
  object qrOcorrencia: TADOQuery
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=NBF;Data Source=MIGUEL\SQL'
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from EDI_OCORRENCIAS'
      'order by codigo')
    Left = 336
    Top = 8
    object qrOcorrenciaCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 2
    end
    object qrOcorrenciaOCORRENCIA: TStringField
      FieldName = 'OCORRENCIA'
      Size = 100
    end
  end
  object DataSource1: TDataSource
    DataSet = qrOcorrencia
    Left = 224
    Top = 280
  end
end
