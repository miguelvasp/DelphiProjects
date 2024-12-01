object frmLeitorCodigo: TfrmLeitorCodigo
  Left = 192
  Top = 124
  Width = 1004
  Height = 561
  ActiveControl = edtCodigo
  BorderIcons = []
  Caption = 'Leitura de Código de Barras'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 988
    Height = 83
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 200
      Top = 16
      Width = 163
      Height = 24
      Caption = 'Código de Barras'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbCodigo: TLabel
      Left = 920
      Top = 24
      Width = 6
      Height = 13
      Caption = '0'
      Visible = False
    end
    object Label4: TLabel
      Left = 8
      Top = 16
      Width = 52
      Height = 24
      Caption = 'Qtde.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtCodigo: TEdit
      Left = 368
      Top = 13
      Width = 589
      Height = 32
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      PasswordChar = '*'
      TabOrder = 0
      OnKeyDown = edtCodigoKeyDown
    end
    object edtQtde: TEdit
      Left = 72
      Top = 13
      Width = 81
      Height = 32
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = '1'
      OnKeyDown = edtCodigoKeyDown
    end
    object CheckBox1: TCheckBox
      Left = 368
      Top = 56
      Width = 361
      Height = 17
      Caption = 'Cadastrar produtos na requisição'
      TabOrder = 2
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 83
    Width = 473
    Height = 399
    Align = alLeft
    TabOrder = 1
    object Label2: TLabel
      Left = 8
      Top = 8
      Width = 164
      Height = 20
      Caption = 'Materiais solicitados'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbExcecaoOK: TLabel
      Left = 400
      Top = 8
      Width = 19
      Height = 13
      Caption = 'Erro'
    end
    object wwDBGrid1: TwwDBGrid
      Left = 16
      Top = 40
      Width = 441
      Height = 351
      Selected.Strings = (
        'MAT_DESC'#9'40'#9'Material'
        'Qtde'#9'10'#9'Qtde'
        'QTDE_SEL'#9'10'#9'Qtde Atendida')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      Anchors = [akLeft, akTop, akRight, akBottom]
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 0
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
      OnCalcCellColors = wwDBGrid1CalcCellColors
    end
  end
  object Panel3: TPanel
    Left = 473
    Top = 83
    Width = 515
    Height = 399
    Align = alClient
    TabOrder = 2
    object Label3: TLabel
      Left = 8
      Top = 8
      Width = 156
      Height = 20
      Caption = 'Lotes selecionados'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object wwDBGrid2: TwwDBGrid
      Left = 12
      Top = 40
      Width = 493
      Height = 352
      Selected.Strings = (
        'MAT_DESC'#9'30'#9'Material'#9'F'
        'N_Lote'#9'20'#9'Lote'#9'F'
        'Valid'#9'10'#9'Validade'#9'F'
        'Qtde'#9'10'#9'Qtde'#9'F')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      Anchors = [akLeft, akTop, akRight, akBottom]
      DataSource = DataSource2
      TabOrder = 0
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
    end
    object Button3: TButton
      Left = 376
      Top = 8
      Width = 131
      Height = 25
      Caption = 'Alterar / Excluir'
      TabOrder = 1
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 482
    Width = 988
    Height = 41
    Align = alBottom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object Button1: TButton
      Left = 816
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Confirmar'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 904
      Top = 7
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object qrMateriais: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT '
      #9'M.MAT_DESC,'
      'I.mat_id,'
      #9'I.Qtde,'
      #9'('
      #9#9'SELECT SUM(QTDE)'
      #9#9'FROM Req_Lote'
      #9#9'WHERE Req_Item_ID  = I.Req_Item_ID'
      #9') AS QTDE_SEL, REQ_ITEM_ID'
      'FROM REQ_ITEM I inner join MATERIAIS M'
      'on I.Mat_ID = M.MAT_ID')
    Left = 912
    Top = 393
    object qrMateriaisMAT_DESC: TStringField
      DisplayLabel = 'Material'
      DisplayWidth = 40
      FieldName = 'MAT_DESC'
      Size = 60
    end
    object qrMateriaisQtde: TFloatField
      DisplayWidth = 10
      FieldName = 'Qtde'
    end
    object qrMateriaisQTDE_SEL: TFloatField
      DisplayLabel = 'Qtde Atendida'
      DisplayWidth = 10
      FieldName = 'QTDE_SEL'
      ReadOnly = True
    end
    object qrMateriaismat_id: TIntegerField
      DisplayWidth = 10
      FieldName = 'mat_id'
      Visible = False
    end
    object qrMateriaisREQ_ITEM_ID: TAutoIncField
      FieldName = 'REQ_ITEM_ID'
      ReadOnly = True
      Visible = False
    end
  end
  object qrLotes: TADOQuery
    Active = True
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM Req_Lote L'
      'WHERE Req_Item_ID IN '
      '(SELECT Req_Item_ID FROM Req_Item WHERE Req_ID = 35084)'
      'order by mat_id')
    Left = 913
    Top = 209
    object qrLotesMAT_DESC: TStringField
      DisplayLabel = 'Material'
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'MAT_DESC'
      LookupDataSet = qrMat
      LookupKeyFields = 'MAT_ID'
      LookupResultField = 'MAT_DESC'
      KeyFields = 'Mat_id'
      Size = 200
      Lookup = True
    end
    object qrLotesN_Lote: TWideStringField
      DisplayLabel = 'Lote'
      DisplayWidth = 20
      FieldName = 'N_Lote'
    end
    object qrLotesValid: TDateTimeField
      DisplayLabel = 'Validade'
      DisplayWidth = 10
      FieldName = 'Valid'
    end
    object qrLotesQtde: TFloatField
      DisplayWidth = 10
      FieldName = 'Qtde'
    end
    object qrLotesRR_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'RR_ID'
      ReadOnly = True
      Visible = False
    end
    object qrLotesMat_id: TIntegerField
      FieldName = 'Mat_id'
      Visible = False
    end
    object qrLotesReq_Item_ID: TIntegerField
      FieldName = 'Req_Item_ID'
      Visible = False
    end
    object qrLotesMarca_ID: TIntegerField
      FieldName = 'Marca_ID'
      Visible = False
    end
    object qrLotesFor_Codi: TStringField
      FieldName = 'For_Codi'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object qrLotesLocal_ID: TIntegerField
      FieldName = 'Local_ID'
      Visible = False
    end
    object qrLotesUsuario: TStringField
      FieldName = 'Usuario'
      Visible = False
      Size = 25
    end
    object qrLotesStatus: TStringField
      FieldName = 'Status'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object qrLotesDevolucao: TFloatField
      FieldName = 'Devolucao'
      Visible = False
    end
    object qrLotesAux: TFloatField
      FieldName = 'Aux'
      Visible = False
    end
    object qrLotesDT_INICIO: TDateTimeField
      FieldName = 'DT_INICIO'
      Visible = False
    end
    object qrLotesDT_FIM: TDateTimeField
      FieldName = 'DT_FIM'
      Visible = False
    end
    object qrLotesOBS: TStringField
      FieldName = 'OBS'
      Visible = False
      Size = 500
    end
  end
  object DataSource1: TDataSource
    DataSet = qrMateriais
    Left = 912
    Top = 89
  end
  object DataSource2: TDataSource
    DataSet = qrLotes
    Left = 913
    Top = 145
  end
  object ADOQuery1: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    Left = 704
    Top = 257
  end
  object qrBarras: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <
      item
        Name = 'ID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM CODIGO_BARRAS'
      'WHERE ID = :ID')
    Left = 912
    Top = 329
    object qrBarrasID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object qrBarrasMAT_ID: TIntegerField
      FieldName = 'MAT_ID'
    end
    object qrBarrasN_LOTE: TStringField
      FieldName = 'N_LOTE'
    end
    object qrBarrasVALIDADE: TDateTimeField
      FieldName = 'VALIDADE'
    end
    object qrBarrasMARCA_ID: TIntegerField
      FieldName = 'MARCA_ID'
    end
    object qrBarrasFOR_CODI: TStringField
      FieldName = 'FOR_CODI'
      Size = 15
    end
    object qrBarrasQTDE: TIntegerField
      FieldName = 'QTDE'
    end
    object qrBarrasREC_ID: TIntegerField
      FieldName = 'REC_ID'
    end
    object qrBarrasIMPRESSAO: TStringField
      FieldName = 'IMPRESSAO'
      Size = 1
    end
    object qrBarrasQTDE_SEL: TIntegerField
      FieldName = 'QTDE_SEL'
    end
    object qrBarrasREC_NF: TStringField
      FieldName = 'REC_NF'
      Size = 10
    end
    object qrBarrasREC_DATA: TDateTimeField
      FieldName = 'REC_DATA'
    end
  end
  object qrMat: TADOQuery
    Active = True
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT MAT_ID, MAT_DESC FROM MATERIAIS')
    Left = 913
    Top = 273
    object qrMatMAT_ID: TAutoIncField
      FieldName = 'MAT_ID'
      ReadOnly = True
    end
    object qrMatMAT_DESC: TStringField
      FieldName = 'MAT_DESC'
      Size = 60
    end
  end
  object qrAux: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    Left = 840
    Top = 161
  end
  object ADOStoredProc1: TADOStoredProc
    Connection = FMenu.ADOConnection
    ProcedureName = 'ADD_MATERIAL_REQUISICAO;1'
    Parameters = <
      item
        Name = '@ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@REQ_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@QTDE'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end>
    Left = 256
    Top = 211
  end
end
