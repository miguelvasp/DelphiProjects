object frmReqExcecao: TfrmReqExcecao
  Left = 322
  Top = 143
  BorderStyle = bsDialog
  ClientHeight = 504
  ClientWidth = 997
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object pnlExecao: TPanel
    Left = 15
    Top = 9
    Width = 969
    Height = 480
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label5: TLabel
      Left = 16
      Top = 16
      Width = 59
      Height = 16
      Caption = 'Usu�rio:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbUsuario: TLabel
      Left = 79
      Top = 16
      Width = 58
      Height = 16
      Caption = 'lbUsuario'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 16
      Top = 56
      Width = 83
      Height = 16
      Caption = 'Justificativa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 16
      Top = 120
      Width = 45
      Height = 16
      Caption = 'Senha'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtJustificativa: TEdit
      Left = 16
      Top = 74
      Width = 921
      Height = 28
      MaxLength = 50
      TabOrder = 0
    end
    object Button4: TButton
      Left = 16
      Top = 184
      Width = 105
      Height = 25
      Caption = 'Confirmar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 144
      Top = 184
      Width = 98
      Height = 25
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = Button5Click
    end
    object edtSenha: TEdit
      Left = 16
      Top = 136
      Width = 121
      Height = 28
      PasswordChar = '*'
      TabOrder = 3
    end
  end
  object qrExcecao: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    SQL.Strings = (
      'SELECT TOP 0 * FROM Req_excecao')
    Left = 432
    Top = 200
    object qrExcecaoID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object qrExcecaoREQ_ID: TIntegerField
      FieldName = 'REQ_ID'
    end
    object qrExcecaoDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object qrExcecaoMAT_ID: TIntegerField
      FieldName = 'MAT_ID'
    end
    object qrExcecaoN_LOTE: TStringField
      FieldName = 'N_LOTE'
      Size = 50
    end
    object qrExcecaoVALID: TDateTimeField
      FieldName = 'VALID'
    end
    object qrExcecaoJustificativa: TStringField
      FieldName = 'Justificativa'
      Size = 50
    end
    object qrExcecaoUsuario: TStringField
      FieldName = 'Usuario'
      Size = 50
    end
    object qrExcecaoQtde: TFloatField
      FieldName = 'Qtde'
    end
  end
end
