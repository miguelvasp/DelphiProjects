object frmReverteConciliacao: TfrmReverteConciliacao
  Left = 378
  Top = 218
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Desbloqueio de Conciliação Bancária'
  ClientHeight = 332
  ClientWidth = 487
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object GroupBox1: TGroupBox
    Left = 35
    Top = 24
    Width = 417
    Height = 73
    Caption = 'Selecione uma conta bancária'
    TabOrder = 0
    object cboBanco: TwwDBLookupCombo
      Left = 24
      Top = 29
      Width = 377
      Height = 24
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'BAN_NOME'#9'25'#9'BAN_NOME'#9'F')
      LookupTable = qrBancos
      LookupField = 'BAN_CODI'
      TabOrder = 0
      AutoDropDown = True
      ShowButton = True
      AllowClearKey = False
      OnCloseUp = cboBancoCloseUp
    end
  end
  object GroupBox2: TGroupBox
    Left = 35
    Top = 112
    Width = 414
    Height = 73
    Caption = 'Data da última movimentação conciliada'
    TabOrder = 1
    object DBText1: TDBText
      Left = 161
      Top = 32
      Width = 92
      Height = 23
      AutoSize = True
      DataField = 'DATA'
      DataSource = DataSource1
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -19
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object GroupBox3: TGroupBox
    Left = 35
    Top = 200
    Width = 414
    Height = 73
    Caption = 'Liberar movimentação bancária a partir de'
    TabOrder = 2
    object MaskEdit1: TMaskEdit
      Left = 146
      Top = 32
      Width = 121
      Height = 26
      EditMask = '99/99/9999'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 0
      Text = '  /  /    '
    end
  end
  object BitBtn1: TBitBtn
    Left = 123
    Top = 288
    Width = 241
    Height = 33
    Caption = 'Alterar da de Conciliação'
    TabOrder = 3
    OnClick = BitBtn1Click
  end
  object Q_AUX: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    ValidateWithMask = True
    Left = 446
    Top = 104
  end
  object qrBancos: TwwQuery
    Active = True
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'SELECT BAN_CODI, BAN_NOME FROM CPABANC'
      'ORDER BY BAN_NOME')
    ValidateWithMask = True
    Left = 454
    Top = 48
    object qrBancosBAN_NOME: TStringField
      DisplayWidth = 25
      FieldName = 'BAN_NOME'
      Origin = 'FINANCEIRO.CPABANC.BAN_NOME'
      FixedChar = True
      Size = 25
    end
    object qrBancosBAN_CODI: TStringField
      DisplayWidth = 50
      FieldName = 'BAN_CODI'
      Origin = 'FINANCEIRO.CPABANC.BAN_CODI'
      Visible = False
      FixedChar = True
      Size = 50
    end
  end
  object qrDataConc: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'SELECT MAX(MOV_DATA) AS DATA FROM CPAMOVI'
      'WHERE CONCILIADO = '#39'S'#39
      'AND MOV_BANC = :MOV_BANC')
    ValidateWithMask = True
    Left = 406
    Top = 216
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'MOV_BANC'
        ParamType = ptUnknown
      end>
    object qrDataConcDATA: TDateTimeField
      FieldName = 'DATA'
      Origin = 'FINANCEIRO.CPAMOVI.MOV_DATA'
    end
  end
  object DataSource1: TDataSource
    DataSet = qrDataConc
    Left = 344
    Top = 144
  end
  object qrLibera: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'UPDATE CPAMOVI SET CONCILIADO = '#39'N'#39
      'WHERE CONVERT(CHAR(10), MOV_DATA, 112) >= :MOV_DAT'
      'AND MOV_BANC = :MOV_BANC')
    ValidateWithMask = True
    Left = 446
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'MOV_DAT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MOV_BANC'
        ParamType = ptUnknown
      end>
  end
  object QRCPABANC: TwwQuery
    DatabaseName = 'Financeiro'
    SessionName = 'Sec_BaseFin'
    SQL.Strings = (
      'UPDATE CPABANC SET DT_CONCILIACAO = :DT_CONCILIACAO'
      'WHERE BAN_CODI = :BAN_CODI')
    ValidateWithMask = True
    Left = 430
    Top = 280
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DT_CONCILIACAO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BAN_CODI'
        ParamType = ptUnknown
      end>
  end
end
