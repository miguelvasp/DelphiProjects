object frmRelOtimizaCargas: TfrmRelOtimizaCargas
  Left = 358
  Top = 170
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Otimização de Cargas'
  ClientHeight = 312
  ClientWidth = 546
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
  object Label1: TLabel
    Left = 35
    Top = 27
    Width = 23
    Height = 16
    Caption = 'De:'
  end
  object Label2: TLabel
    Left = 171
    Top = 25
    Width = 29
    Height = 16
    Caption = 'Ate:'
  end
  object Label3: TLabel
    Left = 37
    Top = 81
    Width = 75
    Height = 16
    Caption = 'Cliente NBF'
  end
  object Label4: TLabel
    Left = 35
    Top = 135
    Width = 101
    Height = 16
    Caption = 'Tipo de Veiculo'
  end
  object Label5: TLabel
    Left = 35
    Top = 191
    Width = 43
    Height = 16
    Caption = 'Região'
  end
  object Gauge1: TGauge
    Left = 0
    Top = 292
    Width = 546
    Height = 20
    Align = alBottom
    ForeColor = clNavy
    Progress = 0
    Visible = False
  end
  object mskDe: TMaskEdit
    Left = 35
    Top = 44
    Width = 97
    Height = 24
    EditMask = '99/99/9999'
    MaxLength = 10
    TabOrder = 0
    Text = '  /  /    '
  end
  object mskAte: TMaskEdit
    Left = 171
    Top = 44
    Width = 97
    Height = 24
    EditMask = '99/99/9999'
    MaxLength = 10
    TabOrder = 1
    Text = '  /  /    '
  end
  object cboCliente: TwwDBLookupCombo
    Left = 36
    Top = 100
    Width = 481
    Height = 24
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'CLIN_RAZA'#9'50'#9'CLIN_RAZA'#9'F')
    LookupTable = cdsClienteNBF
    LookupField = 'CLIN_ID'
    TabOrder = 2
    AutoDropDown = True
    ShowButton = True
    AllowClearKey = False
  end
  object cboVeiculo: TwwDBLookupCombo
    Left = 36
    Top = 156
    Width = 477
    Height = 24
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'VEIC_NOME'#9'40'#9'VEIC_NOME'#9'F')
    LookupTable = cdsVeiculo
    LookupField = 'VEIC_ID'
    TabOrder = 3
    AutoDropDown = True
    ShowButton = True
    AllowClearKey = False
  end
  object cboRegiao: TwwDBLookupCombo
    Left = 35
    Top = 212
    Width = 478
    Height = 24
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'REG_NOME'#9'40'#9'REG_NOME'#9'F')
    LookupTable = cdsRegiao
    LookupField = 'REG_ID'
    TabOrder = 4
    AutoDropDown = True
    ShowButton = True
    AllowClearKey = False
  end
  object RzBitBtn2: TRzBitBtn
    Left = 178
    Top = 249
    Width = 190
    Caption = 'Gerar Planilha'
    TabOrder = 5
    OnClick = RzBitBtn2Click
  end
  object qrClienteNBF: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT CLIN_ID, CLIN_RAZA'
      'FROM CLIENTENBF'
      'ORDER BY CLIN_RAZA')
    Left = 40
    Top = 48
    object qrClienteNBFCLIN_ID: TAutoIncField
      FieldName = 'CLIN_ID'
      ReadOnly = True
    end
    object qrClienteNBFCLIN_RAZA: TStringField
      FieldName = 'CLIN_RAZA'
      Size = 50
    end
  end
  object dspClienteNBF: TDataSetProvider
    DataSet = qrClienteNBF
    Constraints = True
    Left = 40
    Top = 96
  end
  object cdsClienteNBF: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspClienteNBF'
    Left = 40
    Top = 144
    object cdsClienteNBFCLIN_ID: TAutoIncField
      FieldName = 'CLIN_ID'
      ReadOnly = True
    end
    object cdsClienteNBFCLIN_RAZA: TStringField
      FieldName = 'CLIN_RAZA'
      Size = 50
    end
  end
  object qrVeiculo: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    SQL.Strings = (
      'SELECT VEIC_ID, VEIC_NOME'
      'FROM TPVEICULO'
      'ORDER BY VEIC_NOME')
    Left = 104
    Top = 48
    object qrVeiculoVEIC_ID: TAutoIncField
      FieldName = 'VEIC_ID'
      ReadOnly = True
    end
    object qrVeiculoVEIC_NOME: TStringField
      FieldName = 'VEIC_NOME'
      Size = 40
    end
  end
  object qrRegiao: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    SQL.Strings = (
      'SELECT REG_ID, REG_NOME'
      'FROM REGIAO'
      'ORDER BY REG_NOME')
    Left = 168
    Top = 48
    object qrRegiaoREG_ID: TAutoIncField
      FieldName = 'REG_ID'
      ReadOnly = True
    end
    object qrRegiaoREG_NOME: TStringField
      FieldName = 'REG_NOME'
      Size = 40
    end
  end
  object qrRel: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT  top 1'
      '       [MANI_DATA]'
      '      ,[MANI_ID]'
      '      ,[REG_NOME]'
      '      ,[VEIC_NOME]'
      '      ,[MOT_VEIC_PLACA]'
      '      ,[TARA]'
      '      ,[MANI_PESO]'
      '      ,[FATURADOS]'
      '      ,[ENTREGUES]'
      '      ,[FRETE]'
      '      ,[PEDAGIO]'
      '      ,[DESCARGA]'
      '      ,[MANI_KM_TOTAL], [CONFIRMA_MANI]'
      '  FROM [VW_OTIMIZA_CARGA]')
    Left = 232
    Top = 48
    object qrRelMANI_DATA: TDateTimeField
      FieldName = 'MANI_DATA'
    end
    object qrRelMANI_ID: TAutoIncField
      FieldName = 'MANI_ID'
      ReadOnly = True
    end
    object qrRelREG_NOME: TStringField
      FieldName = 'REG_NOME'
      Size = 40
    end
    object qrRelVEIC_NOME: TStringField
      FieldName = 'VEIC_NOME'
      Size = 40
    end
    object qrRelMOT_VEIC_PLACA: TStringField
      FieldName = 'MOT_VEIC_PLACA'
      Size = 8
    end
    object qrRelTARA: TFloatField
      FieldName = 'TARA'
      ReadOnly = True
    end
    object qrRelMANI_PESO: TFloatField
      FieldName = 'MANI_PESO'
    end
    object qrRelFATURADOS: TIntegerField
      FieldName = 'FATURADOS'
      ReadOnly = True
    end
    object qrRelENTREGUES: TIntegerField
      FieldName = 'ENTREGUES'
      ReadOnly = True
    end
    object qrRelFRETE: TFloatField
      FieldName = 'FRETE'
      ReadOnly = True
    end
    object qrRelPEDAGIO: TFloatField
      FieldName = 'PEDAGIO'
      ReadOnly = True
    end
    object qrRelDESCARGA: TFloatField
      FieldName = 'DESCARGA'
      ReadOnly = True
    end
    object qrRelMANI_KM_TOTAL: TIntegerField
      FieldName = 'MANI_KM_TOTAL'
    end
    object qrRelCONFIRMA_MANI: TStringField
      FieldName = 'CONFIRMA_MANI'
      Size = 1
    end
  end
  object dspVeiculo: TDataSetProvider
    DataSet = qrVeiculo
    Constraints = True
    Left = 104
    Top = 96
  end
  object cdsVeiculo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVeiculo'
    Left = 104
    Top = 144
    object cdsVeiculoVEIC_NOME: TStringField
      DisplayWidth = 40
      FieldName = 'VEIC_NOME'
      Size = 40
    end
    object cdsVeiculoVEIC_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'VEIC_ID'
      ReadOnly = True
      Visible = False
    end
  end
  object dspRegiao: TDataSetProvider
    DataSet = qrRegiao
    Constraints = True
    Left = 168
    Top = 96
  end
  object cdsRegiao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspRegiao'
    Left = 168
    Top = 144
    object cdsRegiaoREG_NOME: TStringField
      DisplayWidth = 40
      FieldName = 'REG_NOME'
      Size = 40
    end
    object cdsRegiaoREG_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'REG_ID'
      ReadOnly = True
      Visible = False
    end
  end
  object dspRel: TDataSetProvider
    DataSet = qrRel
    Constraints = True
    Left = 232
    Top = 96
  end
  object cdsRel: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspRel'
    OnCalcFields = cdsRelCalcFields
    Left = 232
    Top = 144
    object cdsRelMANI_DATA: TDateTimeField
      FieldName = 'MANI_DATA'
    end
    object cdsRelMANI_ID: TAutoIncField
      FieldName = 'MANI_ID'
      ReadOnly = True
    end
    object cdsRelREG_NOME: TStringField
      FieldName = 'REG_NOME'
      Size = 40
    end
    object cdsRelVEIC_NOME: TStringField
      FieldName = 'VEIC_NOME'
      Size = 40
    end
    object cdsRelMOT_VEIC_PLACA: TStringField
      FieldName = 'MOT_VEIC_PLACA'
      Size = 8
    end
    object cdsRelTARA: TFloatField
      FieldName = 'TARA'
      ReadOnly = True
    end
    object cdsRelMANI_PESO: TFloatField
      FieldName = 'MANI_PESO'
    end
    object cdsRelFATURADOS: TIntegerField
      FieldName = 'FATURADOS'
      ReadOnly = True
    end
    object cdsRelENTREGUES: TIntegerField
      FieldName = 'ENTREGUES'
      ReadOnly = True
    end
    object cdsRelFRETE: TFloatField
      FieldName = 'FRETE'
      ReadOnly = True
    end
    object cdsRelPEDAGIO: TFloatField
      FieldName = 'PEDAGIO'
      ReadOnly = True
    end
    object cdsRelDESCARGA: TFloatField
      FieldName = 'DESCARGA'
      ReadOnly = True
    end
    object cdsRelMANI_KM_TOTAL: TIntegerField
      FieldName = 'MANI_KM_TOTAL'
    end
    object cdsRelRETORNO: TFloatField
      FieldKind = fkCalculated
      FieldName = 'RETORNO'
      Calculated = True
    end
    object cdsRelOTIMIZACAO: TFloatField
      FieldKind = fkCalculated
      FieldName = 'OTIMIZACAO'
      Calculated = True
    end
    object cdsRelNF_RETORNADA: TFloatField
      FieldKind = fkCalculated
      FieldName = 'NF_RETORNADA'
      Calculated = True
    end
    object cdsRelNotas: TStringField
      FieldKind = fkCalculated
      FieldName = 'Notas'
      Size = 200
      Calculated = True
    end
    object cdsRelEDI: TStringField
      FieldKind = fkCalculated
      FieldName = 'EDI'
      Size = 200
      Calculated = True
    end
    object cdsRelCONFIRMA_MANI: TStringField
      FieldName = 'CONFIRMA_MANI'
      Size = 1
    end
  end
  object qrAux: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    Left = 368
    Top = 40
  end
  object qrTotalRegiao: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    SQL.Strings = (
      'SELECT  top 1       '
      '      [REG_NOME]'
      '      --,[VEIC_NOME]      '
      '      ,SUM([TARA]) AS TARA'
      '      ,SUM([MANI_PESO]) AS MANI_PESO'
      '      ,SUM([FATURADOS]) AS FATURADOS'
      '      ,SUM([ENTREGUES]) AS ENTREGUES'
      '      ,SUM([FRETE]) AS FRETE'
      '      ,SUM([PEDAGIO]) AS PEDAGIO'
      '      ,SUM([DESCARGA]) AS DESCARGA'
      '      ,SUM([MANI_KM_TOTAL]) AS MANI_KM_TOTAL'
      'FROM [VW_OTIMIZA_CARGA]'
      'WHERE MANI_ID = 123456'
      'GROUP BY REG_NOME')
    Left = 288
    Top = 48
    object qrTotalRegiaoREG_NOME: TStringField
      FieldName = 'REG_NOME'
      Size = 40
    end
    object qrTotalRegiaoTARA: TFloatField
      FieldName = 'TARA'
      ReadOnly = True
    end
    object qrTotalRegiaoMANI_PESO: TFloatField
      FieldName = 'MANI_PESO'
      ReadOnly = True
    end
    object qrTotalRegiaoFATURADOS: TIntegerField
      FieldName = 'FATURADOS'
      ReadOnly = True
    end
    object qrTotalRegiaoENTREGUES: TIntegerField
      FieldName = 'ENTREGUES'
      ReadOnly = True
    end
    object qrTotalRegiaoFRETE: TFloatField
      FieldName = 'FRETE'
      ReadOnly = True
    end
    object qrTotalRegiaoPEDAGIO: TFloatField
      FieldName = 'PEDAGIO'
      ReadOnly = True
    end
    object qrTotalRegiaoDESCARGA: TFloatField
      FieldName = 'DESCARGA'
      ReadOnly = True
    end
    object qrTotalRegiaoMANI_KM_TOTAL: TIntegerField
      FieldName = 'MANI_KM_TOTAL'
      ReadOnly = True
    end
  end
  object cdsTotalVeiculo: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    OnCalcFields = cdsTotalVeiculoCalcFields
    Left = 464
    Top = 112
    Data = {
      C00000009619E0BD010000001800000009000000000003000000C00009564549
      435F4E4F4D450100490000000100055749445448020002002800045441524108
      00040000000000094D414E495F5045534F080004000000000009464154555241
      444F53040001000000000009454E545245475545530400010000000000054652
      4554450800040000000000075045444147494F08000400000000000844455343
      4152474108000400000000000D4D414E495F4B4D5F544F54414C040001000000
      00000000}
    object cdsTotalVeiculoVEIC_NOME: TStringField
      FieldName = 'VEIC_NOME'
      Size = 40
    end
    object cdsTotalVeiculoTARA: TFloatField
      FieldName = 'TARA'
    end
    object cdsTotalVeiculoMANI_PESO: TFloatField
      FieldName = 'MANI_PESO'
    end
    object cdsTotalVeiculoFATURADOS: TIntegerField
      FieldName = 'FATURADOS'
    end
    object cdsTotalVeiculoENTREGUES: TIntegerField
      FieldName = 'ENTREGUES'
    end
    object cdsTotalVeiculoFRETE: TFloatField
      FieldName = 'FRETE'
    end
    object cdsTotalVeiculoPEDAGIO: TFloatField
      FieldName = 'PEDAGIO'
    end
    object cdsTotalVeiculoDESCARGA: TFloatField
      FieldName = 'DESCARGA'
    end
    object cdsTotalVeiculoMANI_KM_TOTAL: TIntegerField
      FieldName = 'MANI_KM_TOTAL'
    end
    object cdsTotalVeiculoOTIMIZACAO: TFloatField
      FieldKind = fkCalculated
      FieldName = 'OTIMIZACAO'
      Calculated = True
    end
    object cdsTotalVeiculoRETORNO: TFloatField
      FieldKind = fkCalculated
      FieldName = 'RETORNO'
      Calculated = True
    end
    object cdsTotalVeiculoNF_RETORNADA: TFloatField
      FieldKind = fkCalculated
      FieldName = 'NF_RETORNADA'
      Calculated = True
    end
  end
  object cdsTotaisRegiao: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    OnCalcFields = cdsTotaisRegiaoCalcFields
    Left = 368
    Top = 112
    Data = {
      BF0000009619E0BD010000001800000009000000000003000000BF0008524547
      5F4E4F4D45010049000000010005574944544802000200280004544152410800
      040000000000094D414E495F5045534F08000400000000000946415455524144
      4F53040001000000000009454E54524547554553040001000000000005465245
      54450800040000000000075045444147494F0800040000000000084445534341
      52474108000400000000000D4D414E495F4B4D5F544F54414C04000100000000
      000000}
    object cdsTotaisRegiaoREG_NOME: TStringField
      FieldName = 'REG_NOME'
      Size = 40
    end
    object cdsTotaisRegiaoTARA: TFloatField
      FieldName = 'TARA'
    end
    object cdsTotaisRegiaoMANI_PESO: TFloatField
      FieldName = 'MANI_PESO'
    end
    object cdsTotaisRegiaoFATURADOS: TIntegerField
      FieldName = 'FATURADOS'
    end
    object cdsTotaisRegiaoENTREGUES: TIntegerField
      FieldName = 'ENTREGUES'
    end
    object cdsTotaisRegiaoFRETE: TFloatField
      FieldName = 'FRETE'
    end
    object cdsTotaisRegiaoPEDAGIO: TFloatField
      FieldName = 'PEDAGIO'
    end
    object cdsTotaisRegiaoDESCARGA: TFloatField
      FieldName = 'DESCARGA'
    end
    object cdsTotaisRegiaoMANI_KM_TOTAL: TIntegerField
      FieldName = 'MANI_KM_TOTAL'
    end
    object cdsTotaisRegiaoOTIMIZACAO: TFloatField
      FieldKind = fkCalculated
      FieldName = 'OTIMIZACAO'
      Calculated = True
    end
    object cdsTotaisRegiaoRETORNO: TFloatField
      FieldKind = fkCalculated
      FieldName = 'RETORNO'
      Calculated = True
    end
    object cdsTotaisRegiaoNF_RETORNADA: TFloatField
      FieldKind = fkCalculated
      FieldName = 'NF_RETORNADA'
      Calculated = True
    end
  end
  object cdsEDI: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 456
    Top = 40
    Data = {
      3E0000009619E0BD0100000018000000020000000000030000003E0003656469
      0100490000000100055749445448020002000200037174640400010000000000
      0000}
    object cdsEDIedi: TStringField
      FieldName = 'edi'
      Size = 2
    end
    object cdsEDIqtd: TIntegerField
      FieldName = 'qtd'
    end
  end
end
