object frmAdministrativo: TfrmAdministrativo
  Left = 252
  Top = 123
  Width = 749
  Height = 367
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 14
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 0
    Width = 733
    Height = 329
    ActivePage = TabSheet3
    Align = alClient
    TabIndex = 2
    TabOrder = 0
    FixedDimension = 20
    object TabSheet1: TRzTabSheet
      Caption = 'MANIFESTO'
      object GroupBox1: TGroupBox
        Left = 16
        Top = 16
        Width = 185
        Height = 153
        Caption = 'Manifesto de Entrega'
        TabOrder = 3
      end
      object edtManifesto: TEdit
        Left = 40
        Top = 48
        Width = 121
        Height = 22
        TabOrder = 0
      end
      object Button1: TButton
        Left = 40
        Top = 86
        Width = 121
        Height = 25
        Caption = 'Liberar'
        TabOrder = 1
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 40
        Top = 120
        Width = 121
        Height = 25
        Caption = 'Eliminar OE'
        TabOrder = 2
        OnClick = Button2Click
      end
    end
    object TabSheet2: TRzTabSheet
      Caption = 'NOTAS FISCAIS X MANIFESTO'
      object Label2: TLabel
        Left = 16
        Top = 8
        Width = 66
        Height = 14
        Caption = 'Manifesto:'
      end
      object edtNFMani: TEdit
        Left = 16
        Top = 24
        Width = 121
        Height = 22
        TabOrder = 0
      end
      object Button3: TButton
        Left = 144
        Top = 21
        Width = 75
        Height = 25
        Caption = 'Buscar'
        TabOrder = 1
        OnClick = Button3Click
      end
      object wwDBGrid1: TwwDBGrid
        Left = 16
        Top = 64
        Width = 705
        Height = 225
        Selected.Strings = (
          'NFI_NUMERO'#9'10'#9'Número'
          'NFI_DEST_RAZA'#9'50'#9'Destinatário'
          'NFI_ENTREGA'#9'1'#9'Entrega'
          'NFI_COBRAR'#9'1'#9'Cobrar')
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 2
        ShowHorzScrollBar = True
        DataSource = dsNF
        TabOrder = 2
        TitleAlignment = taLeftJustify
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Verdana'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
        IndicatorColor = icBlack
      end
    end
    object TabSheet3: TRzTabSheet
      Caption = 'OS'
      object GroupBox2: TGroupBox
        Left = 16
        Top = 16
        Width = 297
        Height = 81
        Caption = 'Liberar Romaneio de Entrada'
        TabOrder = 0
        object edtRomaneio: TEdit
          Left = 16
          Top = 32
          Width = 121
          Height = 22
          TabOrder = 0
        end
        object Button4: TButton
          Left = 160
          Top = 32
          Width = 121
          Height = 25
          Caption = 'Liberar'
          TabOrder = 1
          OnClick = Button4Click
        end
      end
    end
  end
  object qrAux: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    Left = 529
    Top = 37
  end
  object qrNF: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'MANI_ID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM NF WHERE MANI_ID = :MANI_ID')
    Left = 481
    Top = 37
    object qrNFNFI_NUMERO: TStringField
      DisplayLabel = 'Número'
      DisplayWidth = 10
      FieldName = 'NFI_NUMERO'
      Size = 10
    end
    object qrNFNFI_DEST_RAZA: TStringField
      DisplayLabel = 'Destinatário'
      DisplayWidth = 50
      FieldName = 'NFI_DEST_RAZA'
      Size = 50
    end
    object qrNFNFI_ENTREGA: TStringField
      DisplayLabel = 'Entrega'
      DisplayWidth = 1
      FieldName = 'NFI_ENTREGA'
      Size = 1
    end
    object qrNFNFI_COBRAR: TStringField
      DisplayLabel = 'Cobrar'
      DisplayWidth = 1
      FieldName = 'NFI_COBRAR'
      Size = 1
    end
    object qrNFNFI_CODI: TAutoIncField
      DisplayWidth = 10
      FieldName = 'NFI_CODI'
      ReadOnly = True
      Visible = False
    end
    object qrNFTDOC_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'TDOC_ID'
      Visible = False
    end
    object qrNFNFI_EMIT_ORIG: TStringField
      DisplayWidth = 1
      FieldName = 'NFI_EMIT_ORIG'
      Visible = False
      Size = 1
    end
    object qrNFNFI_EMIT_CLI: TIntegerField
      DisplayWidth = 10
      FieldName = 'NFI_EMIT_CLI'
      Visible = False
    end
    object qrNFNFI_DEST_ORIG: TStringField
      DisplayWidth = 1
      FieldName = 'NFI_DEST_ORIG'
      Visible = False
      Size = 1
    end
    object qrNFNFI_DEST_CLI: TIntegerField
      DisplayWidth = 10
      FieldName = 'NFI_DEST_CLI'
      Visible = False
    end
    object qrNFNFI_DEST_NOME: TStringField
      DisplayWidth = 30
      FieldName = 'NFI_DEST_NOME'
      Visible = False
      Size = 30
    end
    object qrNFNFI_DEST_ENDERECO: TStringField
      DisplayWidth = 50
      FieldName = 'NFI_DEST_ENDERECO'
      Visible = False
      Size = 50
    end
    object qrNFNFI_DEST_COMPL: TStringField
      DisplayWidth = 20
      FieldName = 'NFI_DEST_COMPL'
      Visible = False
    end
    object qrNFNFI_DEST_BAIRRO: TStringField
      DisplayWidth = 40
      FieldName = 'NFI_DEST_BAIRRO'
      Visible = False
      Size = 40
    end
    object qrNFNFI_DEST_UF_SIGLA: TStringField
      DisplayWidth = 2
      FieldName = 'NFI_DEST_UF_SIGLA'
      Visible = False
      Size = 2
    end
    object qrNFNFI_DEST_CEP: TStringField
      DisplayWidth = 8
      FieldName = 'NFI_DEST_CEP'
      Visible = False
      Size = 8
    end
    object qrNFNFI_DEST_TEL: TStringField
      DisplayWidth = 11
      FieldName = 'NFI_DEST_TEL'
      Visible = False
      Size = 11
    end
    object qrNFNFI_DEST_FAX: TStringField
      DisplayWidth = 11
      FieldName = 'NFI_DEST_FAX'
      Visible = False
      Size = 11
    end
    object qrNFNFI_DEST_CGC: TStringField
      DisplayWidth = 14
      FieldName = 'NFI_DEST_CGC'
      Visible = False
      Size = 14
    end
    object qrNFNFI_DEST_INSCRG: TStringField
      DisplayWidth = 20
      FieldName = 'NFI_DEST_INSCRG'
      Visible = False
    end
    object qrNFNFI_DEST_INSCTRB: TStringField
      DisplayWidth = 20
      FieldName = 'NFI_DEST_INSCTRB'
      Visible = False
    end
    object qrNFNFI_DEST_PESS: TStringField
      DisplayWidth = 1
      FieldName = 'NFI_DEST_PESS'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object qrNFNFI_VDES: TFloatField
      DisplayWidth = 10
      FieldName = 'NFI_VDES'
      Visible = False
    end
    object qrNFNFI_VFRE: TFloatField
      DisplayWidth = 10
      FieldName = 'NFI_VFRE'
      Visible = False
    end
    object qrNFNFI_VSEG: TFloatField
      DisplayWidth = 10
      FieldName = 'NFI_VSEG'
      Visible = False
    end
    object qrNFNFI_BIPI: TFloatField
      DisplayWidth = 10
      FieldName = 'NFI_BIPI'
      Visible = False
    end
    object qrNFNFI_VIPI: TFloatField
      DisplayWidth = 10
      FieldName = 'NFI_VIPI'
      Visible = False
    end
    object qrNFNFI_BICM: TFloatField
      DisplayWidth = 10
      FieldName = 'NFI_BICM'
      Visible = False
    end
    object qrNFNFI_VICM: TFloatField
      DisplayWidth = 10
      FieldName = 'NFI_VICM'
      Visible = False
    end
    object qrNFNFI_VMER: TFloatField
      DisplayWidth = 10
      FieldName = 'NFI_VMER'
      Visible = False
    end
    object qrNFNFI_TOTA: TFloatField
      DisplayWidth = 10
      FieldName = 'NFI_TOTA'
      Visible = False
    end
    object qrNFNFI_DSAI: TDateTimeField
      DisplayWidth = 18
      FieldName = 'NFI_DSAI'
      Visible = False
    end
    object qrNFNFI_HSAI: TDateTimeField
      DisplayWidth = 18
      FieldName = 'NFI_HSAI'
      Visible = False
    end
    object qrNFNFI_TRAN: TStringField
      DisplayWidth = 50
      FieldName = 'NFI_TRAN'
      Visible = False
      Size = 50
    end
    object qrNFNFI_PLAC: TStringField
      DisplayWidth = 50
      FieldName = 'NFI_PLAC'
      Visible = False
      Size = 50
    end
    object qrNFNFI_UF_SIGLA: TStringField
      DisplayWidth = 2
      FieldName = 'NFI_UF_SIGLA'
      Visible = False
      Size = 2
    end
    object qrNFNFI_MARC: TStringField
      DisplayWidth = 15
      FieldName = 'NFI_MARC'
      Visible = False
      Size = 15
    end
    object qrNFNFI_QTDE: TIntegerField
      DisplayWidth = 10
      FieldName = 'NFI_QTDE'
      Visible = False
    end
    object qrNFNFI_ESPE: TStringField
      DisplayWidth = 15
      FieldName = 'NFI_ESPE'
      Visible = False
      Size = 15
    end
    object qrNFNFI_PLIQ: TFloatField
      DisplayWidth = 10
      FieldName = 'NFI_PLIQ'
      Visible = False
    end
    object qrNFNFI_PBRU: TFloatField
      DisplayWidth = 10
      FieldName = 'NFI_PBRU'
      Visible = False
    end
    object qrNFNFI_VOL: TFloatField
      DisplayWidth = 10
      FieldName = 'NFI_VOL'
      Visible = False
    end
    object qrNFNFI_TFRE: TStringField
      DisplayWidth = 1
      FieldName = 'NFI_TFRE'
      Visible = False
      Size = 1
    end
    object qrNFNFI_DEMI: TDateTimeField
      DisplayWidth = 18
      FieldName = 'NFI_DEMI'
      Visible = False
    end
    object qrNFCFA_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'CFA_ID'
      Visible = False
    end
    object qrNFOS_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'OS_ID'
      Visible = False
    end
    object qrNFMUN_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'MUN_ID'
      Visible = False
    end
    object qrNFNFI_MARCADOR: TStringField
      DisplayWidth = 1
      FieldName = 'NFI_MARCADOR'
      Visible = False
      Size = 1
    end
    object qrNFNFI_DTENTREGA: TDateTimeField
      DisplayWidth = 18
      FieldName = 'NFI_DTENTREGA'
      Visible = False
    end
    object qrNFMANI_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'MANI_ID'
      Visible = False
    end
    object qrNFMANI_ORDEM: TIntegerField
      DisplayWidth = 10
      FieldName = 'MANI_ORDEM'
      Visible = False
    end
    object qrNFNFI_MOVESTQ: TStringField
      DisplayWidth = 1
      FieldName = 'NFI_MOVESTQ'
      Visible = False
      Size = 1
    end
    object qrNFNFI_TRANS: TStringField
      DisplayWidth = 1
      FieldName = 'NFI_TRANS'
      Visible = False
      Size = 1
    end
    object qrNFTEXTO_LIVRE: TMemoField
      DisplayWidth = 10
      FieldName = 'TEXTO_LIVRE'
      Visible = False
      BlobType = ftMemo
    end
    object qrNFNFI_DTENTREGA_FIM: TDateTimeField
      DisplayWidth = 18
      FieldName = 'NFI_DTENTREGA_FIM'
      Visible = False
    end
    object qrNFNFI_CLONE: TStringField
      DisplayWidth = 1
      FieldName = 'NFI_CLONE'
      Visible = False
      Size = 1
    end
    object qrNFNFI_QTDEPALLET: TIntegerField
      DisplayWidth = 10
      FieldName = 'NFI_QTDEPALLET'
      Visible = False
    end
    object qrNFNFI_QTDEUV: TFloatField
      DisplayWidth = 10
      FieldName = 'NFI_QTDEUV'
      Visible = False
    end
    object qrNFTPRO_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'TPRO_ID'
      Visible = False
    end
    object qrNFNFI_MARCADOR_NFRS: TStringField
      DisplayWidth = 1
      FieldName = 'NFI_MARCADOR_NFRS'
      Visible = False
      Size = 1
    end
    object qrNFNFI_NFRS_REJEITADA: TStringField
      DisplayWidth = 1
      FieldName = 'NFI_NFRS_REJEITADA'
      Visible = False
      Size = 1
    end
    object qrNFNFI_RETORNADA: TStringField
      DisplayWidth = 1
      FieldName = 'NFI_RETORNADA'
      Visible = False
      Size = 1
    end
    object qrNFNFI_GEROUNFE: TStringField
      DisplayWidth = 1
      FieldName = 'NFI_GEROUNFE'
      Visible = False
      Size = 1
    end
    object qrNFNFI_REDESPACHO: TStringField
      DisplayWidth = 1
      FieldName = 'NFI_REDESPACHO'
      Visible = False
      Size = 1
    end
    object qrNFORD_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'ORD_ID'
      Visible = False
    end
    object qrNFTRANS_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'TRANS_ID'
      Visible = False
    end
    object qrNFNFI_PRESTSERV: TStringField
      DisplayWidth = 25
      FieldName = 'NFI_PRESTSERV'
      Visible = False
      Size = 25
    end
    object qrNFNFI_FATURADA: TStringField
      DisplayWidth = 10
      FieldName = 'NFI_FATURADA'
      Visible = False
      Size = 10
    end
    object qrNFNFI_DISCRIM: TStringField
      DisplayWidth = 2000
      FieldName = 'NFI_DISCRIM'
      Visible = False
      Size = 2000
    end
    object qrNFFAT_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'FAT_ID'
      Visible = False
    end
    object qrNFNFI_MARCAREEN: TStringField
      DisplayWidth = 1
      FieldName = 'NFI_MARCAREEN'
      Visible = False
      Size = 1
    end
    object qrNFNFI_STATUS: TStringField
      DisplayWidth = 1
      FieldName = 'NFI_STATUS'
      Visible = False
      Size = 1
    end
    object qrNFNFI_MARCAIMP: TStringField
      DisplayWidth = 1
      FieldName = 'NFI_MARCAIMP'
      Visible = False
      Size = 1
    end
    object qrNFNFI_CODI_ORIGINOUNFRS: TIntegerField
      DisplayWidth = 10
      FieldName = 'NFI_CODI_ORIGINOUNFRS'
      Visible = False
    end
    object qrNFNFI_LOAD: TStringField
      DisplayWidth = 8
      FieldName = 'NFI_LOAD'
      Visible = False
      Size = 8
    end
    object qrNFNFI_SERIE: TStringField
      DisplayWidth = 2
      FieldName = 'NFI_SERIE'
      Visible = False
      Size = 2
    end
    object qrNFNFI_MARCADOR_CROS: TStringField
      DisplayWidth = 1
      FieldName = 'NFI_MARCADOR_CROS'
      Visible = False
      Size = 1
    end
    object qrNFNFI_EXCLUI_REEN: TStringField
      DisplayWidth = 1
      FieldName = 'NFI_EXCLUI_REEN'
      Visible = False
      Size = 1
    end
    object qrNFNFI_MARCADOR_CTRCGEN: TStringField
      DisplayWidth = 1
      FieldName = 'NFI_MARCADOR_CTRCGEN'
      Visible = False
      Size = 1
    end
    object qrNFNFI_GEROU_REENTREGA: TStringField
      DisplayWidth = 1
      FieldName = 'NFI_GEROU_REENTREGA'
      Visible = False
      Size = 1
    end
    object qrNFBLOQUEIO: TStringField
      DisplayWidth = 1
      FieldName = 'BLOQUEIO'
      Visible = False
      Size = 1
    end
    object qrNFSEL: TStringField
      DisplayWidth = 1
      FieldName = 'SEL'
      Visible = False
      Size = 1
    end
    object qrNFCOD_EDI: TStringField
      DisplayWidth = 2
      FieldName = 'COD_EDI'
      Visible = False
      Size = 2
    end
    object qrNFNFI_CODI_SIMB: TIntegerField
      DisplayWidth = 10
      FieldName = 'NFI_CODI_SIMB'
      Visible = False
    end
  end
  object dsNF: TDataSource
    DataSet = qrNF
    Left = 585
    Top = 37
  end
end
