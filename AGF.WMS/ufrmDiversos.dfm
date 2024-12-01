object frmDiversos: TfrmDiversos
  Left = 271
  Top = 83
  Width = 800
  Height = 600
  Caption = 'Operações Diversas'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 14
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 0
    Width = 784
    Height = 562
    ActivePage = TabSheet1
    Align = alClient
    TabIndex = 0
    TabOrder = 0
    FixedDimension = 20
    object TabSheet1: TRzTabSheet
      Caption = 'Parametros'
      object wwDBGrid1: TwwDBGrid
        Left = 0
        Top = 0
        Width = 780
        Height = 217
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        TabOrder = 0
        TitleAlignment = taLeftJustify
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
        IndicatorColor = icBlack
      end
    end
    object TabSheet2: TRzTabSheet
      Caption = 'TabSheet2'
    end
    object TabSheet3: TRzTabSheet
      Caption = 'TabSheet3'
    end
  end
  object qrParametros: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM PARAMETRO')
    Left = 705
    Top = 37
    object qrParametrosPAR_ID: TAutoIncField
      FieldName = 'PAR_ID'
      ReadOnly = True
    end
    object qrParametrosPAR_NOME: TStringField
      FieldName = 'PAR_NOME'
      Size = 30
    end
    object qrParametrosPAR_RAZA: TStringField
      FieldName = 'PAR_RAZA'
      Size = 50
    end
    object qrParametrosPAR_CNPJ: TStringField
      FieldName = 'PAR_CNPJ'
      Size = 15
    end
    object qrParametrosPAR_INSC: TStringField
      FieldName = 'PAR_INSC'
      Size = 15
    end
    object qrParametrosPAR_ENDERECO: TStringField
      FieldName = 'PAR_ENDERECO'
      Size = 50
    end
    object qrParametrosPAR_ENDERECO_COMPL: TStringField
      FieldName = 'PAR_ENDERECO_COMPL'
    end
    object qrParametrosPAR_ENDERECO_BAIRRO: TStringField
      FieldName = 'PAR_ENDERECO_BAIRRO'
      Size = 40
    end
    object qrParametrosPAR_UF_SIGLA: TStringField
      FieldName = 'PAR_UF_SIGLA'
      Size = 2
    end
    object qrParametrosPAR_CEP: TStringField
      FieldName = 'PAR_CEP'
      Size = 8
    end
    object qrParametrosPAR_TEL: TStringField
      FieldName = 'PAR_TEL'
      Size = 11
    end
    object qrParametrosPAR_FAX: TStringField
      FieldName = 'PAR_FAX'
      Size = 11
    end
    object qrParametrosPAR_EMAIL: TStringField
      FieldName = 'PAR_EMAIL'
      Size = 60
    end
    object qrParametrosAR_ID: TIntegerField
      FieldName = 'AR_ID'
    end
    object qrParametrosMUN_ID: TIntegerField
      FieldName = 'MUN_ID'
    end
    object qrParametrosAR_ID_OPER: TIntegerField
      FieldName = 'AR_ID_OPER'
    end
    object qrParametrosULT_TAG: TIntegerField
      FieldName = 'ULT_TAG'
    end
    object qrParametrosPALLET_M2: TFloatField
      FieldName = 'PALLET_M2'
    end
    object qrParametrosCO_SER_ID: TIntegerField
      FieldName = 'CO_SER_ID'
    end
    object qrParametrosEN_SER_ID: TIntegerField
      FieldName = 'EN_SER_ID'
    end
    object qrParametrosFLAGTELA: TStringField
      FieldName = 'FLAGTELA'
      Size = 1
    end
    object qrParametrosFLAGTELA2: TStringField
      FieldName = 'FLAGTELA2'
      Size = 1
    end
    object qrParametrosFLAGTELA3: TStringField
      FieldName = 'FLAGTELA3'
      Size = 1
    end
    object qrParametrosCLIN_ID: TIntegerField
      FieldName = 'CLIN_ID'
    end
    object qrParametrosVERSAO: TStringField
      FieldName = 'VERSAO'
      Size = 50
    end
    object qrParametrosFLAGTELA_USUARIO: TStringField
      FieldName = 'FLAGTELA_USUARIO'
    end
    object qrParametrosFLAGTELA_DATA: TDateTimeField
      FieldName = 'FLAGTELA_DATA'
    end
    object qrParametrosFLAGTELA2_USUARIO: TStringField
      FieldName = 'FLAGTELA2_USUARIO'
    end
    object qrParametrosFLAGTELA2_DATA: TDateTimeField
      FieldName = 'FLAGTELA2_DATA'
    end
    object qrParametrosPORTA: TIntegerField
      FieldName = 'PORTA'
    end
    object qrParametrosHOST: TStringField
      FieldName = 'HOST'
      Size = 30
    end
    object qrParametrosCAMINHO: TStringField
      FieldName = 'CAMINHO'
      Size = 40
    end
    object qrParametrosULT_FATURA: TIntegerField
      FieldName = 'ULT_FATURA'
    end
    object qrParametrosULT_NF: TIntegerField
      FieldName = 'ULT_NF'
    end
    object qrParametrosULT_CONH: TIntegerField
      FieldName = 'ULT_CONH'
    end
    object qrParametrosAR_ID_AVARIA: TIntegerField
      FieldName = 'AR_ID_AVARIA'
    end
    object qrParametrosULT_MINUTA: TIntegerField
      FieldName = 'ULT_MINUTA'
    end
    object qrParametrosULT_NFPROV: TIntegerField
      FieldName = 'ULT_NFPROV'
    end
    object qrParametrosULT_CONHPROV: TIntegerField
      FieldName = 'ULT_CONHPROV'
    end
    object qrParametrosULT_MINUTAPROV: TIntegerField
      FieldName = 'ULT_MINUTAPROV'
    end
    object qrParametrosCAMINHO_MATRICIAL: TStringField
      FieldName = 'CAMINHO_MATRICIAL'
      Size = 40
    end
    object qrParametrosCAMINHO_MATRICIAL_FATURA: TStringField
      FieldName = 'CAMINHO_MATRICIAL_FATURA'
      Size = 40
    end
    object qrParametrosCAMINHO_MATRICIAL_CONH: TStringField
      FieldName = 'CAMINHO_MATRICIAL_CONH'
      Size = 40
    end
    object qrParametrosDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object qrParametrosConnectionString: TStringField
      FieldName = 'ConnectionString'
      Size = 1000
    end
    object qrParametrosIBGE_ID: TIntegerField
      FieldName = 'IBGE_ID'
    end
    object qrParametrosNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object qrParametrosLOGO: TBlobField
      FieldName = 'LOGO'
      BlobType = ftBlob
    end
  end
  object qrAux: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    Left = 705
    Top = 93
  end
end
