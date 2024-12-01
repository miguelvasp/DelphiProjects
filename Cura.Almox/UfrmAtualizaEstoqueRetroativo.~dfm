object frmAtualizaEstoqueRetroativo: TfrmAtualizaEstoqueRetroativo
  Left = 290
  Top = 129
  Width = 873
  Height = 578
  Caption = 'Atualiza Estoque Retroativo'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 857
    Height = 540
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Atualizar Estoque Retroativo'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 849
        Height = 69
        Align = alTop
        TabOrder = 0
        object Label3: TLabel
          Left = 18
          Top = 13
          Width = 32
          Height = 13
          Caption = 'Grupo:'
        end
        object Label1: TLabel
          Left = 328
          Top = 13
          Width = 40
          Height = 13
          Caption = 'Material:'
        end
        object cboGrupo: TwwDBLookupCombo
          Left = 16
          Top = 29
          Width = 305
          Height = 21
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'GRU_DESC'#9'40'#9'GRU_DESC'#9'F')
          LookupTable = qrGrupo
          LookupField = 'GRU_ID'
          TabOrder = 0
          AutoDropDown = True
          ShowButton = True
          PreciseEditRegion = False
          AllowClearKey = False
        end
        object cboMateriais: TwwDBLookupCombo
          Left = 328
          Top = 29
          Width = 401
          Height = 21
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'MAT_DESC'#9'60'#9'MAT_DESC'#9'F')
          LookupTable = qrMateriais
          LookupField = 'MAT_ID'
          TabOrder = 1
          AutoDropDown = True
          ShowButton = True
          PreciseEditRegion = False
          AllowClearKey = False
        end
        object Button1: TButton
          Left = 744
          Top = 28
          Width = 75
          Height = 25
          Caption = 'Filtrar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnClick = Button1Click
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 336
        Width = 849
        Height = 176
        Align = alBottom
        TabOrder = 1
        object Label2: TLabel
          Left = 16
          Top = 139
          Width = 32
          Height = 13
          Caption = 'Label2'
          Visible = False
        end
        object Label4: TLabel
          Left = 16
          Top = 9
          Width = 194
          Height = 13
          Caption = 'Atualizar estoque a partir da data:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 488
          Top = 92
          Width = 24
          Height = 13
          Caption = 'Valor'
        end
        object Button2: TButton
          Left = 672
          Top = 105
          Width = 161
          Height = 25
          Caption = 'Atualizar Selecionados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = Button2Click
        end
        object ProgressBar1: TProgressBar
          Left = 16
          Top = 153
          Width = 809
          Height = 17
          Min = 0
          Max = 100
          TabOrder = 1
          Visible = False
        end
        object edtDataInicio: TMaskEdit
          Left = 216
          Top = 4
          Width = 73
          Height = 21
          EditMask = '99/99/9999'
          MaxLength = 10
          TabOrder = 2
          Text = '  /  /    '
        end
        object rbOpcoes: TRadioGroup
          Left = 16
          Top = 40
          Width = 433
          Height = 89
          Caption = 'Opções'
          ItemIndex = 0
          Items.Strings = (
            'Atualizar a partir dos cadastros'
            'Atualizar somente Valor de Reposição'
            'Atualizar somente Custo Médio')
          TabOrder = 3
        end
        object edtValor: TEdit
          Left = 488
          Top = 108
          Width = 121
          Height = 21
          TabOrder = 4
        end
      end
      object wwDBGrid1: TwwDBGrid
        Left = 0
        Top = 69
        Width = 849
        Height = 267
        ControlType.Strings = (
          'SEL;CheckBox;S;N')
        Selected.Strings = (
          'SEL'#9'1'#9'         '#9'F'#9
          'MAT_DESC'#9'100'#9'Material'#9#9)
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alClient
        DataSource = dsBusca
        TabOrder = 2
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
      end
      object CheckBox1: TCheckBox
        Left = 23
        Top = 71
        Width = 17
        Height = 17
        TabOrder = 3
        OnClick = CheckBox1Click
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Consultar Histórico do Material Retroativo'
      ImageIndex = 1
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 849
        Height = 49
        Align = alTop
        TabOrder = 0
        object Label5: TLabel
          Left = 8
          Top = 4
          Width = 40
          Height = 13
          Caption = 'Material:'
        end
        object cboMateriaisHist: TwwDBLookupCombo
          Left = 8
          Top = 19
          Width = 505
          Height = 21
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'MAT_DESC'#9'60'#9'MAT_DESC'#9'F')
          LookupTable = qrMateriaisHist
          LookupField = 'MAT_ID'
          TabOrder = 0
          AutoDropDown = True
          ShowButton = True
          PreciseEditRegion = False
          AllowClearKey = False
        end
        object Button3: TButton
          Left = 520
          Top = 16
          Width = 75
          Height = 25
          Caption = 'Filtrar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = Button3Click
        end
      end
      object wwDBGrid2: TwwDBGrid
        Left = 0
        Top = 49
        Width = 849
        Height = 463
        Selected.Strings = (
          'DataReferencia'#9'10'#9'Data Referência'
          'MAT_DESC'#9'60'#9'Material'
          'Descricao'#9'15'#9'Local'#9'F'
          'QTDE'#9'8'#9'Qtde'
          'REPOSICAO'#9'15'#9'Valor Reposição'
          'CUSTO_MEDIO'#9'15'#9'Custo Médio')
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alClient
        DataSource = dsBuscaHist
        ReadOnly = True
        TabOrder = 1
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
      end
    end
  end
  object qrGrupo: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT GRU_ID, GRU_DESC FROM GRUPO_MATERIAL'
      'ORDER BY GRU_DESC')
    Left = 40
    Top = 328
  end
  object qrMateriais: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT MAT_ID, MAT_DESC FROM MATERIAIS'
      'WHERE GENERICO NOT IN ('#39'S'#39')'
      'AND MAT_ATIVO = '#39'S'#39
      'ORDER BY MAT_DESC')
    Left = 112
    Top = 328
    object qrMateriaisMAT_DESC: TStringField
      DisplayWidth = 60
      FieldName = 'MAT_DESC'
      Size = 60
    end
    object qrMateriaisMAT_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'MAT_ID'
      ReadOnly = True
      Visible = False
    end
  end
  object qrBusca: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM AuxMateriaisRetroativos ORDER BY MAT_DESC')
    Left = 176
    Top = 328
    object qrBuscaSEL: TStringField
      DisplayLabel = '         '
      DisplayWidth = 1
      FieldName = 'SEL'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object qrBuscaMAT_DESC: TStringField
      DisplayLabel = 'Material'
      DisplayWidth = 100
      FieldName = 'MAT_DESC'
      ProviderFlags = []
      Size = 255
    end
    object qrBuscaMAT_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'MAT_ID'
      ProviderFlags = [pfInWhere, pfInKey]
      Visible = False
    end
  end
  object qrAux: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    Left = 224
    Top = 328
  end
  object dsBusca: TDataSource
    DataSet = qrBusca
    Left = 368
    Top = 328
  end
  object qrMateriaisHist: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT MAT_ID, MAT_DESC FROM MATERIAIS'
      'WHERE GENERICO NOT IN ('#39'S'#39')'
      'AND MAT_ATIVO = '#39'S'#39
      'ORDER BY MAT_DESC')
    Left = 280
    Top = 328
    object StringField1: TStringField
      DisplayWidth = 60
      FieldName = 'MAT_DESC'
      Size = 60
    end
    object AutoIncField1: TAutoIncField
      DisplayWidth = 10
      FieldName = 'MAT_ID'
      ReadOnly = True
      Visible = False
    end
  end
  object qrBuscaHist: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'mat_id'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT'
      #9'E.DataReferencia,'
      #9'M.MAT_DESC,'
      #9'L.Descricao,'
      #9'E.QTDE,'
      #9'E.REPOSICAO,'
      #9'E.CUSTO_MEDIO'
      'FROM StorageCura..stoHistoricoEstoque E'
      'INNER JOIN MATERIAIS M ON E.MAT_ID = M.MAT_ID'
      'INNER JOIN LOCAL L ON E.LOCAL_ID = L.Local_ID'
      'WHERE M.MAT_ID = :mat_id'
      'ORDER BY E.DataReferencia DESC')
    Left = 460
    Top = 328
    object qrBuscaHistDataReferencia: TDateTimeField
      DisplayLabel = 'Data Referência'
      DisplayWidth = 10
      FieldName = 'DataReferencia'
      DisplayFormat = 'dd/MM/yyyy'
    end
    object qrBuscaHistMAT_DESC: TStringField
      DisplayLabel = 'Material'
      DisplayWidth = 60
      FieldName = 'MAT_DESC'
      Size = 100
    end
    object qrBuscaHistDescricao: TStringField
      DisplayLabel = 'Local'
      DisplayWidth = 15
      FieldName = 'Descricao'
      Size = 50
    end
    object qrBuscaHistQTDE: TFloatField
      DisplayLabel = 'Qtde'
      DisplayWidth = 8
      FieldName = 'QTDE'
    end
    object qrBuscaHistREPOSICAO: TBCDField
      DisplayLabel = 'Valor Reposição'
      DisplayWidth = 15
      FieldName = 'REPOSICAO'
      Precision = 18
      Size = 2
    end
    object qrBuscaHistCUSTO_MEDIO: TBCDField
      DisplayLabel = 'Custo Médio'
      DisplayWidth = 15
      FieldName = 'CUSTO_MEDIO'
      Precision = 18
      Size = 2
    end
  end
  object dsBuscaHist: TDataSource
    DataSet = qrBuscaHist
    Left = 540
    Top = 328
  end
end
