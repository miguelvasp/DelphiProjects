object frmBionexoDownload: TfrmBionexoDownload
  Left = 192
  Top = 124
  Width = 928
  Height = 480
  Caption = 'Importação Bionexo'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 14
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 912
    Height = 81
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 32
      Width = 37
      Height = 14
      Caption = 'Código'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 96
      Top = 32
      Width = 25
      Height = 14
      Caption = 'Data'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 232
      Top = 32
      Width = 39
      Height = 14
      Caption = 'Usuário'
      FocusControl = DBEdit3
    end
    object Button1: TButton
      Left = 4
      Top = 3
      Width = 129
      Height = 25
      Caption = 'Importar arquivo'
      TabOrder = 0
      OnClick = Button1Click
    end
    object DBEdit1: TDBEdit
      Left = 8
      Top = 48
      Width = 74
      Height = 22
      DataField = 'bioId'
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 96
      Top = 48
      Width = 130
      Height = 22
      DataField = 'data'
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 2
    end
    object DBEdit3: TDBEdit
      Left = 232
      Top = 48
      Width = 250
      Height = 22
      DataField = 'usuario'
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 3
    end
  end
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 81
    Width = 912
    Height = 361
    ActivePage = TabSheet2
    ActivePageDefault = TabSheet1
    Align = alClient
    TabIndex = 1
    TabOrder = 1
    FixedDimension = 20
    object TabSheet1: TRzTabSheet
      Caption = 'Itens importados'
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 908
        Height = 38
        Align = alTop
        TabOrder = 0
        object Button2: TButton
          Left = 4
          Top = 5
          Width = 157
          Height = 25
          Caption = 'Validar informações'
          TabOrder = 0
          OnClick = Button2Click
        end
        object Button3: TButton
          Left = 164
          Top = 5
          Width = 165
          Height = 25
          Caption = 'Gerar Ordem de Compras'
          Enabled = False
          TabOrder = 1
          OnClick = Button3Click
        end
        object pnlFilial: TPanel
          Left = 164
          Top = 1
          Width = 741
          Height = 35
          TabOrder = 2
          Visible = False
          object Label4: TLabel
            Left = 26
            Top = 11
            Width = 46
            Height = 14
            Caption = 'Empresa'
          end
          object cboEmpresa: TwwDBLookupCombo
            Left = 80
            Top = 8
            Width = 329
            Height = 22
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'FIL_DESC'#9'20'#9'FIL_DESC'#9#9)
            LookupTable = qrEmpresa
            LookupField = 'FIL_CODI'
            TabOrder = 0
            AutoDropDown = True
            ShowButton = True
            PreciseEditRegion = False
            AllowClearKey = False
          end
          object Button4: TButton
            Left = 416
            Top = 6
            Width = 75
            Height = 25
            Caption = 'Confirmar'
            TabOrder = 1
            OnClick = Button4Click
          end
          object Button5: TButton
            Left = 496
            Top = 6
            Width = 75
            Height = 25
            Caption = 'Cancelar'
            TabOrder = 2
          end
        end
      end
      object wwDBGrid1: TwwDBGrid
        Left = 0
        Top = 38
        Width = 908
        Height = 299
        Selected.Strings = (
          'statusItem'#9'13'#9'Status'#9#9
          'cnpj'#9'14'#9'CNPJ'#9#9
          'FOR_CODI'#9'15'#9'Fornecedor'#9'F'#9
          'cod_bionexo'#9'20'#9'Cod. Bionexo'#9#9
          'MAT_DESC'#9'50'#9'Material'#9#9
          'MARCA_DESC'#9'20'#9'Marca'#9'F'#9
          'pgtoBio_desc'#9'20'#9'C. pgto Bionexo'#9'F'#9
          'PGTO'#9'20'#9'Cond. Pgto.'#9#9
          'dataEntrega'#9'10'#9'dataEntrega'#9#9
          'qtde'#9'10'#9'Qtde'#9#9
          'preco_unit'#9'10'#9'Pr. Unit'#9#9
          'preco_total'#9'10'#9'Pr. Total'#9#9
          'dataConfirmacao'#9'10'#9'Dt. Confirmação'#9#9
          'pedidoCompra'#9'6'#9'Pedido'#9#9
          'data1'#9'10'#9'data1'#9#9
          'qtde1'#9'10'#9'qtde1'#9#9
          'data2'#9'10'#9'data2'#9#9
          'qtde2'#9'10'#9'qtde2'#9#9
          'data3'#9'10'#9'data3'#9#9
          'qtde3'#9'10'#9'qtde3'#9#9
          'data4'#9'10'#9'data4'#9#9
          'qtde4'#9'10'#9'qtde4'#9#9
          'data5'#9'10'#9'data5'#9#9
          'qtde5'#9'10'#9'qtde5'#9#9
          'data6'#9'10'#9'data6'#9#9
          'qtde6'#9'10'#9'qtde6'#9#9
          'data7'#9'10'#9'data7'#9#9
          'qtde7'#9'10'#9'qtde7'#9#9
          'data8'#9'10'#9'data8'#9#9
          'qtde8'#9'10'#9'qtde8'#9#9
          'data9'#9'10'#9'data9'#9#9
          'qtde9'#9'10'#9'qtde9'#9#9
          'data10'#9'10'#9'data10'#9#9
          'qtde10'#9'10'#9'qtde10'#9#9
          'data11'#9'10'#9'data11'#9#9
          'qtde11'#9'10'#9'qtde11'#9#9
          'data12'#9'10'#9'data12'#9#9
          'qtde12'#9'10'#9'qtde12'#9#9
          'data13'#9'10'#9'data13'#9#9
          'qtde13'#9'10'#9'qtde13'#9#9
          'data14'#9'10'#9'data14'#9#9
          'qtde14'#9'10'#9'qtde14'#9#9
          'data15'#9'10'#9'data15'#9#9
          'qtde15'#9'10'#9'qtde15'#9#9
          'data16'#9'10'#9'data16'#9#9
          'qtde16'#9'10'#9'qtde16'#9#9
          'data17'#9'10'#9'data17'#9#9
          'qtde17'#9'10'#9'qtde17'#9#9
          'data18'#9'10'#9'data18'#9#9
          'qtde18'#9'10'#9'qtde18'#9#9
          'data19'#9'10'#9'data19'#9#9
          'qtde19'#9'10'#9'qtde19'#9#9
          'data20'#9'10'#9'data20'#9#9
          'qtde20'#9'10'#9'qtde20'#9#9)
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alClient
        DataSource = DataSource2
        ReadOnly = True
        TabOrder = 1
        TitleAlignment = taLeftJustify
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
        OnCalcCellColors = wwDBGrid1CalcCellColors
      end
    end
    object TabSheet2: TRzTabSheet
      Caption = 'Ordem de Compras'
      object wwDBGrid2: TwwDBGrid
        Left = 0
        Top = 33
        Width = 908
        Height = 304
        Selected.Strings = (
          'ORD_ID'#9'10'#9'OC'#9'F'
          'DT_CADASTRO'#9'10'#9'Data'#9'F'
          'FOR_CODI'#9'15'#9'Fornecedor'#9'F'
          'DT_ENTREGA'#9'10'#9'Data Entrega'#9'F'
          'DESCRICAO'#9'30'#9'Cond. Pagamento'#9'F'
          'MAT_DESC'#9'100'#9'Material'#9'F'
          'Qtde_Comp'#9'10'#9'Qtde'#9'F'
          'Valor'#9'10'#9'Valor'#9#9)
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alClient
        DataSource = DataSource3
        ReadOnly = True
        TabOrder = 0
        TitleAlignment = taLeftJustify
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 908
        Height = 33
        Align = alTop
        TabOrder = 1
        object Button6: TButton
          Left = 16
          Top = 4
          Width = 161
          Height = 25
          Caption = 'Abrir Ordem de compras'
          TabOrder = 0
          OnClick = Button6Click
        end
      end
    end
    object TabSheet3: TRzTabSheet
      Caption = 'Resumo da leitura'
      object Memo1: TMemo
        Left = 0
        Top = 0
        Width = 908
        Height = 337
        Align = alClient
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
  end
  object qrBionexo: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <
      item
        Name = 'bioId'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM bionexoDownload'
      'WHERE bioId = :bioId')
    Left = 864
    Top = 8
    object qrBionexobioId: TAutoIncField
      FieldName = 'bioId'
      ReadOnly = True
    end
    object qrBionexodata: TDateTimeField
      FieldName = 'data'
    end
    object qrBionexousuario: TStringField
      FieldName = 'usuario'
      Size = 255
    end
    object qrBionexostatus: TStringField
      FieldName = 'status'
      Size = 1
    end
  end
  object DataSource1: TDataSource
    DataSet = qrBionexo
    OnDataChange = DataSource1DataChange
    Left = 800
    Top = 8
  end
  object OpenDialog1: TOpenDialog
    Filter = 'TextFile|*.txt'
    Options = [ofEnableSizing]
    Left = 744
    Top = 8
  end
  object qrBionexoItens: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    SQL.Strings = (
      'select top 0 * from bionexoDownloadItens')
    Left = 640
    Top = 16
    object qrBionexoItensItem: TAutoIncField
      FieldName = 'Item'
      ReadOnly = True
    end
    object qrBionexoItensbioId: TIntegerField
      FieldName = 'bioId'
    end
    object qrBionexoItenscnpj: TStringField
      FieldName = 'cnpj'
      Size = 255
    end
    object qrBionexoItensdataEntrega: TDateTimeField
      FieldName = 'dataEntrega'
    end
    object qrBionexoItenspgtoBio_id: TIntegerField
      FieldName = 'pgtoBio_id'
    end
    object qrBionexoItenscod_bionexo: TStringField
      FieldName = 'cod_bionexo'
      Size = 255
    end
    object qrBionexoItensqtde: TFloatField
      FieldName = 'qtde'
    end
    object qrBionexoItenspreco_unit: TFloatField
      FieldName = 'preco_unit'
    end
    object qrBionexoItenspreco_total: TFloatField
      FieldName = 'preco_total'
    end
    object qrBionexoItensdataConfirmacao: TDateTimeField
      FieldName = 'dataConfirmacao'
    end
    object qrBionexoItenspedidoCompra: TIntegerField
      FieldName = 'pedidoCompra'
    end
    object qrBionexoItensdata1: TDateTimeField
      FieldName = 'data1'
    end
    object qrBionexoItensqtde1: TFloatField
      FieldName = 'qtde1'
    end
    object qrBionexoItensdata2: TDateTimeField
      FieldName = 'data2'
    end
    object qrBionexoItensqtde2: TFloatField
      FieldName = 'qtde2'
    end
    object qrBionexoItensdata3: TDateTimeField
      FieldName = 'data3'
    end
    object qrBionexoItensqtde3: TFloatField
      FieldName = 'qtde3'
    end
    object qrBionexoItensdata4: TDateTimeField
      FieldName = 'data4'
    end
    object qrBionexoItensqtde4: TFloatField
      FieldName = 'qtde4'
    end
    object qrBionexoItensdata5: TDateTimeField
      FieldName = 'data5'
    end
    object qrBionexoItensqtde5: TFloatField
      FieldName = 'qtde5'
    end
    object qrBionexoItensdata6: TDateTimeField
      FieldName = 'data6'
    end
    object qrBionexoItensqtde6: TFloatField
      FieldName = 'qtde6'
    end
    object qrBionexoItensdata7: TDateTimeField
      FieldName = 'data7'
    end
    object qrBionexoItensqtde7: TFloatField
      FieldName = 'qtde7'
    end
    object qrBionexoItensdata8: TDateTimeField
      FieldName = 'data8'
    end
    object qrBionexoItensqtde8: TFloatField
      FieldName = 'qtde8'
    end
    object qrBionexoItensdata9: TDateTimeField
      FieldName = 'data9'
    end
    object qrBionexoItensqtde9: TFloatField
      FieldName = 'qtde9'
    end
    object qrBionexoItensdata10: TDateTimeField
      FieldName = 'data10'
    end
    object qrBionexoItensqtde10: TFloatField
      FieldName = 'qtde10'
    end
    object qrBionexoItensdata11: TDateTimeField
      FieldName = 'data11'
    end
    object qrBionexoItensqtde11: TFloatField
      FieldName = 'qtde11'
    end
    object qrBionexoItensdata12: TDateTimeField
      FieldName = 'data12'
    end
    object qrBionexoItensqtde12: TFloatField
      FieldName = 'qtde12'
    end
    object qrBionexoItensdata13: TDateTimeField
      FieldName = 'data13'
    end
    object qrBionexoItensqtde13: TFloatField
      FieldName = 'qtde13'
    end
    object qrBionexoItensdata14: TDateTimeField
      FieldName = 'data14'
    end
    object qrBionexoItensqtde14: TFloatField
      FieldName = 'qtde14'
    end
    object qrBionexoItensdata15: TDateTimeField
      FieldName = 'data15'
    end
    object qrBionexoItensqtde15: TFloatField
      FieldName = 'qtde15'
    end
    object qrBionexoItensdata16: TDateTimeField
      FieldName = 'data16'
    end
    object qrBionexoItensqtde16: TFloatField
      FieldName = 'qtde16'
    end
    object qrBionexoItensdata17: TDateTimeField
      FieldName = 'data17'
    end
    object qrBionexoItensqtde17: TFloatField
      FieldName = 'qtde17'
    end
    object qrBionexoItensdata18: TDateTimeField
      FieldName = 'data18'
    end
    object qrBionexoItensqtde18: TFloatField
      FieldName = 'qtde18'
    end
    object qrBionexoItensdata19: TDateTimeField
      FieldName = 'data19'
    end
    object qrBionexoItensqtde19: TFloatField
      FieldName = 'qtde19'
    end
    object qrBionexoItensdata20: TDateTimeField
      FieldName = 'data20'
    end
    object qrBionexoItensqtde20: TFloatField
      FieldName = 'qtde20'
    end
    object qrBionexoItensstatusItem: TStringField
      FieldName = 'statusItem'
      Size = 50
    end
  end
  object qrImportados: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'BIOID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT'
      '    C.MAT_ID,'
      '    C.MAT_DESC,'
      '    MR.MARCA_DESC,'
      '    E.DESCRICAO AS PGTO,'
      #9'b.*,'
      #9'D.*,'
      #9'F.FOR_CODI'
      'FROM bionexoDownload A'
      ''
      'INNER JOIN bionexoDownloadItens B'
      'ON A.bioId = B.bioId '
      ''
      'LEFT JOIN MATERIAL_MARCA MM'
      'ON B.cod_bionexo = MM.CodBionexo'
      ''
      'LEFT JOIN MATERIAIS C'
      'ON MM.MAT_ID = C.MAT_ID'
      ''
      'LEFT JOIN MARCAS MR'
      'ON MM.MARCA_ID = MR.MARCA_ID'
      ''
      'LEFT JOIN pgtoBionexo D'
      'ON B.pgtoBio_id = D.pgtoBio_id'
      ''
      'LEFT JOIN CONDICAO_PAGTO E'
      'ON D.pgtoBio_id = E.pgtoBio_id'
      ''
      'LEFT OUTER JOIN CPAFORN F'
      'ON B.CNPJ = F.FOR_CGC'
      ''
      'WHERE A.bioId =  :BIOID')
    Left = 425
    Top = 286
    object qrImportadosstatusItem: TStringField
      DisplayLabel = 'Status'
      DisplayWidth = 13
      FieldName = 'statusItem'
      Size = 50
    end
    object qrImportadoscnpj: TStringField
      DisplayLabel = 'CNPJ'
      DisplayWidth = 14
      FieldName = 'cnpj'
      Size = 255
    end
    object qrImportadosFOR_CODI: TStringField
      DisplayLabel = 'Fornecedor'
      DisplayWidth = 15
      FieldName = 'FOR_CODI'
      FixedChar = True
      Size = 15
    end
    object qrImportadoscod_bionexo: TStringField
      DisplayLabel = 'Cod. Bionexo'
      DisplayWidth = 20
      FieldName = 'cod_bionexo'
      Size = 255
    end
    object qrImportadosMAT_DESC: TStringField
      DisplayLabel = 'Material'
      DisplayWidth = 50
      FieldName = 'MAT_DESC'
      Size = 100
    end
    object qrImportadosMARCA_DESC: TStringField
      DisplayLabel = 'Marca'
      DisplayWidth = 20
      FieldName = 'MARCA_DESC'
    end
    object qrImportadospgtoBio_desc: TStringField
      DisplayLabel = 'C. pgto Bionexo'
      DisplayWidth = 20
      FieldName = 'pgtoBio_desc'
      Size = 255
    end
    object qrImportadosPGTO: TStringField
      DisplayLabel = 'Cond. Pgto.'
      DisplayWidth = 20
      FieldName = 'PGTO'
      Size = 30
    end
    object qrImportadosdataEntrega: TDateTimeField
      DisplayWidth = 10
      FieldName = 'dataEntrega'
    end
    object qrImportadosqtde: TFloatField
      DisplayLabel = 'Qtde'
      DisplayWidth = 10
      FieldName = 'qtde'
    end
    object qrImportadospreco_unit: TFloatField
      DisplayLabel = 'Pr. Unit'
      DisplayWidth = 10
      FieldName = 'preco_unit'
    end
    object qrImportadospreco_total: TFloatField
      DisplayLabel = 'Pr. Total'
      DisplayWidth = 10
      FieldName = 'preco_total'
    end
    object qrImportadosdataConfirmacao: TDateTimeField
      DisplayLabel = 'Dt. Confirmação'
      DisplayWidth = 10
      FieldName = 'dataConfirmacao'
    end
    object qrImportadospedidoCompra: TIntegerField
      DisplayLabel = 'Pedido'
      DisplayWidth = 6
      FieldName = 'pedidoCompra'
    end
    object qrImportadosdata1: TDateTimeField
      DisplayWidth = 10
      FieldName = 'data1'
    end
    object qrImportadosqtde1: TFloatField
      DisplayWidth = 10
      FieldName = 'qtde1'
    end
    object qrImportadosdata2: TDateTimeField
      DisplayWidth = 10
      FieldName = 'data2'
    end
    object qrImportadosqtde2: TFloatField
      DisplayWidth = 10
      FieldName = 'qtde2'
    end
    object qrImportadosdata3: TDateTimeField
      DisplayWidth = 10
      FieldName = 'data3'
    end
    object qrImportadosqtde3: TFloatField
      DisplayWidth = 10
      FieldName = 'qtde3'
    end
    object qrImportadosdata4: TDateTimeField
      DisplayWidth = 10
      FieldName = 'data4'
    end
    object qrImportadosqtde4: TFloatField
      DisplayWidth = 10
      FieldName = 'qtde4'
    end
    object qrImportadosdata5: TDateTimeField
      DisplayWidth = 10
      FieldName = 'data5'
    end
    object qrImportadosqtde5: TFloatField
      DisplayWidth = 10
      FieldName = 'qtde5'
    end
    object qrImportadosdata6: TDateTimeField
      DisplayWidth = 10
      FieldName = 'data6'
    end
    object qrImportadosqtde6: TFloatField
      DisplayWidth = 10
      FieldName = 'qtde6'
    end
    object qrImportadosdata7: TDateTimeField
      DisplayWidth = 10
      FieldName = 'data7'
    end
    object qrImportadosqtde7: TFloatField
      DisplayWidth = 10
      FieldName = 'qtde7'
    end
    object qrImportadosdata8: TDateTimeField
      DisplayWidth = 10
      FieldName = 'data8'
    end
    object qrImportadosqtde8: TFloatField
      DisplayWidth = 10
      FieldName = 'qtde8'
    end
    object qrImportadosdata9: TDateTimeField
      DisplayWidth = 10
      FieldName = 'data9'
    end
    object qrImportadosqtde9: TFloatField
      DisplayWidth = 10
      FieldName = 'qtde9'
    end
    object qrImportadosdata10: TDateTimeField
      DisplayWidth = 10
      FieldName = 'data10'
    end
    object qrImportadosqtde10: TFloatField
      DisplayWidth = 10
      FieldName = 'qtde10'
    end
    object qrImportadosdata11: TDateTimeField
      DisplayWidth = 10
      FieldName = 'data11'
    end
    object qrImportadosqtde11: TFloatField
      DisplayWidth = 10
      FieldName = 'qtde11'
    end
    object qrImportadosdata12: TDateTimeField
      DisplayWidth = 10
      FieldName = 'data12'
    end
    object qrImportadosqtde12: TFloatField
      DisplayWidth = 10
      FieldName = 'qtde12'
    end
    object qrImportadosdata13: TDateTimeField
      DisplayWidth = 10
      FieldName = 'data13'
    end
    object qrImportadosqtde13: TFloatField
      DisplayWidth = 10
      FieldName = 'qtde13'
    end
    object qrImportadosdata14: TDateTimeField
      DisplayWidth = 10
      FieldName = 'data14'
    end
    object qrImportadosqtde14: TFloatField
      DisplayWidth = 10
      FieldName = 'qtde14'
    end
    object qrImportadosdata15: TDateTimeField
      DisplayWidth = 10
      FieldName = 'data15'
    end
    object qrImportadosqtde15: TFloatField
      DisplayWidth = 10
      FieldName = 'qtde15'
    end
    object qrImportadosdata16: TDateTimeField
      DisplayWidth = 10
      FieldName = 'data16'
    end
    object qrImportadosqtde16: TFloatField
      DisplayWidth = 10
      FieldName = 'qtde16'
    end
    object qrImportadosdata17: TDateTimeField
      DisplayWidth = 10
      FieldName = 'data17'
    end
    object qrImportadosqtde17: TFloatField
      DisplayWidth = 10
      FieldName = 'qtde17'
    end
    object qrImportadosdata18: TDateTimeField
      DisplayWidth = 10
      FieldName = 'data18'
    end
    object qrImportadosqtde18: TFloatField
      DisplayWidth = 10
      FieldName = 'qtde18'
    end
    object qrImportadosdata19: TDateTimeField
      DisplayWidth = 10
      FieldName = 'data19'
    end
    object qrImportadosqtde19: TFloatField
      DisplayWidth = 10
      FieldName = 'qtde19'
    end
    object qrImportadosdata20: TDateTimeField
      DisplayWidth = 10
      FieldName = 'data20'
    end
    object qrImportadosqtde20: TFloatField
      DisplayWidth = 10
      FieldName = 'qtde20'
    end
    object qrImportadospgtoBio_id_1: TIntegerField
      DisplayWidth = 10
      FieldName = 'pgtoBio_id_1'
      Visible = False
    end
    object qrImportadospgtoBio_id: TIntegerField
      DisplayWidth = 10
      FieldName = 'pgtoBio_id'
      Visible = False
    end
    object qrImportadosMAT_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'MAT_ID'
      ReadOnly = True
      Visible = False
    end
    object qrImportadosItem: TAutoIncField
      DisplayWidth = 10
      FieldName = 'Item'
      ReadOnly = True
      Visible = False
    end
    object qrImportadosbioId: TIntegerField
      DisplayWidth = 10
      FieldName = 'bioId'
      Visible = False
    end
  end
  object DataSource2: TDataSource
    DataSet = qrImportados
    Left = 273
    Top = 278
  end
  object qrAuxPedido: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <
      item
        Name = 'bioId'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'codigo'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 255
        Value = Null
      end>
    SQL.Strings = (
      'SELECT '
      '    ItemId,'
      #9'statusItem,'
      #9'QtdeTotal'
      'FROM bionexoUploadItens'
      'WHERE bioId = :bioId'
      'AND codBionexo = :codigo')
    Left = 721
    Top = 286
    object qrAuxPedidoItemId: TAutoIncField
      FieldName = 'ItemId'
      ReadOnly = True
    end
    object qrAuxPedidostatusItem: TStringField
      FieldName = 'statusItem'
      Size = 50
    end
    object qrAuxPedidoQtdeTotal: TFloatField
      FieldName = 'QtdeTotal'
    end
  end
  object qrAux: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    Left = 537
    Top = 214
  end
  object qrEmpresa: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    SQL.Strings = (
      'SELECT FIL_CODI, FIL_DESC FROM CPAFILI'
      'order by FIL_DESC')
    Left = 625
    Top = 198
    object qrEmpresaFIL_DESC: TStringField
      DisplayWidth = 20
      FieldName = 'FIL_DESC'
      FixedChar = True
    end
    object qrEmpresaFIL_CODI: TStringField
      DisplayWidth = 3
      FieldName = 'FIL_CODI'
      Visible = False
      FixedChar = True
      Size = 3
    end
  end
  object STP_GERA_OC: TADOStoredProc
    Connection = FMenu.ADOConnection
    ProcedureName = 'STP_GERAOC_BIONEXO;1'
    Parameters = <
      item
        Name = '@bioId'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
      end
      item
        Name = '@usuario'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
      end
      item
        Name = '@ch'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
      end
      item
        Name = '@FIL_CODI'
        Attributes = [paNullable]
        DataType = ftString
        Size = 3
      end>
    Left = 369
    Top = 206
  end
  object qrOC: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <
      item
        Name = 'BioId'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT'
      '                A.ORD_ID,'
      #9'DT_CADASTRO,'
      #9'FOR_CODI,'
      #9'DT_ENTREGA,'
      #9'C.DESCRICAO,'
      #9'M.MAT_DESC,'
      #9'B.Qtde_Comp,'
      #9'B.Valor'
      'FROM Ordem_Compra A '
      ''
      'INNER JOIN Ordem_CompraItem B'
      'ON A.ORD_ID = B.Ord_ID'
      ''
      'INNER JOIN MATERIAIS M'
      'ON B.Mat_ID = M.MAT_ID'
      ''
      'INNER JOIN CONDICAO_PAGTO C'
      'ON A.COND_PGTO_ID = C.COND_PGTO_ID'
      'where b.bioId = :BioId')
    Left = 89
    Top = 302
    object qrOCORD_ID: TAutoIncField
      DisplayLabel = 'OC'
      DisplayWidth = 10
      FieldName = 'ORD_ID'
      ReadOnly = True
    end
    object qrOCDT_CADASTRO: TDateTimeField
      DisplayLabel = 'Data'
      DisplayWidth = 10
      FieldName = 'DT_CADASTRO'
    end
    object qrOCFOR_CODI: TStringField
      DisplayLabel = 'Fornecedor'
      DisplayWidth = 15
      FieldName = 'FOR_CODI'
      FixedChar = True
      Size = 15
    end
    object qrOCDT_ENTREGA: TDateTimeField
      DisplayLabel = 'Data Entrega'
      DisplayWidth = 10
      FieldName = 'DT_ENTREGA'
    end
    object qrOCDESCRICAO: TStringField
      DisplayLabel = 'Cond. Pagamento'
      DisplayWidth = 30
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object qrOCMAT_DESC: TStringField
      DisplayLabel = 'Material'
      DisplayWidth = 100
      FieldName = 'MAT_DESC'
      Size = 100
    end
    object qrOCQtde_Comp: TFloatField
      DisplayLabel = 'Qtde'
      DisplayWidth = 10
      FieldName = 'Qtde_Comp'
    end
    object qrOCValor: TFloatField
      DisplayWidth = 10
      FieldName = 'Valor'
    end
  end
  object DataSource3: TDataSource
    DataSet = qrOC
    Left = 249
    Top = 166
  end
end
