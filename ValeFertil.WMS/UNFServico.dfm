object FNFServico: TFNFServico
  Left = 256
  Top = 32
  Width = 807
  Height = 582
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 4
    Top = 1
    Width = 781
    Height = 36
    BevelInner = bvLowered
    TabOrder = 0
    object SpeedButton3: TSpeedButton
      Left = 747
      Top = 6
      Width = 25
      Height = 25
      Hint = 'Sair'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000010000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
        03333377777777777F333301111111110333337F333333337F33330111111111
        0333337F333333337F333301111111110333337F333333337F33330111111111
        0333337F333333337F333301111111110333337F333333337F33330111111111
        0333337F3333333F7F333301111111B10333337F333333737F33330111111111
        0333337F333333337F333301111111110333337F33FFFFF37F3333011EEEEE11
        0333337F377777F37F3333011EEEEE110333337F37FFF7F37F3333011EEEEE11
        0333337F377777337F333301111111110333337F333333337F33330111111111
        0333337FFFFFFFFF7F3333000000000003333377777777777333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton3Click
    end
    object Label16: TLabel
      Left = 9
      Top = 6
      Width = 241
      Height = 25
      Caption = 'Nota Fiscal de Servi�o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -21
      Font.Name = 'Georgia'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object SpeedButton1: TSpeedButton
      Left = 622
      Top = 6
      Width = 25
      Height = 25
      Hint = 'Visualizar Relat�rio'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000010000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        0003377777777777777308888888888888807F33333333333337088888888888
        88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
        8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
        8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton1Click
    end
    object DBNavigator1: TDBNavigator
      Left = 441
      Top = 6
      Width = 182
      Height = 25
      DataSource = DS_NF
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbDelete, nbPost, nbCancel]
      Hints.Strings = (
        'Posiciona no primeiro registro | Posiciona no primeiro registro'
        'Retorna ao registro anterior | Retorna ao registro anterior '
        'Avan�a para o pr�ximo registro | Avan�a para o pr�ximo registro '
        'Posiciona no �ltimo registro | Posiciona no �ltimo registro '
        'Incluir  '
        'Excluir'
        ''
        'Confirmar'
        'Cancelar')
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
    end
    object BitBtn3: TBitBtn
      Left = 647
      Top = 6
      Width = 100
      Height = 25
      Hint = 'Confirmar'
      Caption = 'Gerar Fatura'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = BitBtn3Click
      Glyph.Data = {
        BE060000424DBE06000000000000360400002800000024000000120000000100
        0800000000008802000000000000000000000001000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
        A600000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000F0FBFF00A4A0A000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00030303030303
        0303030303030303030303030303030303030303030303030303030303030303
        03030303030303030303030303030303030303030303FF030303030303030303
        03030303030303040403030303030303030303030303030303F8F8FF03030303
        03030303030303030303040202040303030303030303030303030303F80303F8
        FF030303030303030303030303040202020204030303030303030303030303F8
        03030303F8FF0303030303030303030304020202020202040303030303030303
        0303F8030303030303F8FF030303030303030304020202FA0202020204030303
        0303030303F8FF0303F8FF030303F8FF03030303030303020202FA03FA020202
        040303030303030303F8FF03F803F8FF0303F8FF03030303030303FA02FA0303
        03FA0202020403030303030303F8FFF8030303F8FF0303F8FF03030303030303
        FA0303030303FA0202020403030303030303F80303030303F8FF0303F8FF0303
        0303030303030303030303FA0202020403030303030303030303030303F8FF03
        03F8FF03030303030303030303030303FA020202040303030303030303030303
        0303F8FF0303F8FF03030303030303030303030303FA02020204030303030303
        03030303030303F8FF0303F8FF03030303030303030303030303FA0202020403
        030303030303030303030303F8FF0303F8FF03030303030303030303030303FA
        0202040303030303030303030303030303F8FF03F8FF03030303030303030303
        03030303FA0202030303030303030303030303030303F8FFF803030303030303
        030303030303030303FA0303030303030303030303030303030303F803030303
        0303030303030303030303030303030303030303030303030303030303030303
        0303}
      NumGlyphs = 2
      Style = bsNew
    end
  end
  object Panel2: TPanel
    Left = 3
    Top = 40
    Width = 783
    Height = 499
    BevelInner = bvLowered
    TabOrder = 1
    object Panel1: TPanel
      Left = 8
      Top = 16
      Width = 768
      Height = 481
      BevelInner = bvSpace
      BevelOuter = bvLowered
      BevelWidth = 3
      Color = clSilver
      TabOrder = 0
      object Label1: TLabel
        Left = 11
        Top = 14
        Width = 39
        Height = 15
        Caption = 'C�digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 126
        Top = 14
        Width = 112
        Height = 15
        Caption = 'Tipo de Documento '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 602
        Top = 14
        Width = 62
        Height = 15
        Caption = 'N�mero NF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBE_NFI_CODI: TwwDBEdit
        Left = 58
        Top = 12
        Width = 43
        Height = 21
        BorderStyle = bsNone
        DataField = 'NFI_CODI'
        DataSource = DS_NF
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object GroupBox1: TGroupBox
        Left = 8
        Top = 39
        Width = 748
        Height = 41
        Caption = 'Emitente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object DBText1: TDBText
          Left = 102
          Top = 15
          Width = 305
          Height = 17
          Color = clSilver
          DataField = 'CLIN_RAZA'
          DataSource = FOS.DS_OS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Visible = False
        end
        object DBText2: TDBText
          Left = 203
          Top = 16
          Width = 316
          Height = 17
          DataField = 'CLIF_RAZA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object DBText3: TDBText
          Left = 365
          Top = 15
          Width = 291
          Height = 17
          DataField = 'NBFINAL_COD_CLIN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object DBText8: TDBText
          Left = 102
          Top = 15
          Width = 283
          Height = 17
          Color = clSilver
          DataField = 'PAR_RAZA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Visible = False
        end
        object wwDBLookupCombo2: TwwDBLookupCombo
          Left = 104
          Top = 14
          Width = 258
          Height = 21
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          BorderStyle = bsNone
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'CLIN_RAZA'#9'50'#9'CLIN_RAZA'#9'F')
          DataField = 'NFI_EMIT_CLI'
          LookupField = 'CLIN_ID'
          DropDownCount = 18
          ParentFont = False
          TabOrder = 0
          Visible = False
          AutoDropDown = True
          ShowButton = True
          SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
          AllowClearKey = False
        end
        object Panel5: TPanel
          Left = 60
          Top = 11
          Width = 637
          Height = 27
          BevelInner = bvLowered
          BevelOuter = bvSpace
          Color = clSilver
          TabOrder = 1
          object DBText16: TDBText
            Left = 9
            Top = 5
            Width = 618
            Height = 17
            DataField = 'EmitDESC'
            DataSource = DS_NF
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
      end
      object GroupBox2: TGroupBox
        Left = 9
        Top = 80
        Width = 747
        Height = 89
        Caption = 'Destinat�rio'
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object Label3: TLabel
          Left = 37
          Top = 41
          Width = 64
          Height = 15
          Caption = 'Cliente NBF'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object wwDBLookupCombo4: TwwDBLookupCombo
          Left = 104
          Top = 38
          Width = 354
          Height = 21
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          BorderStyle = bsNone
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'CLIN_RAZA'#9'50'#9'CLIN_RAZA'#9'F')
          DataField = 'NFI_DEST_CLI'
          DataSource = DS_NF
          LookupTable = Q_CLIN
          LookupField = 'CLIN_ID'
          DropDownCount = 18
          Enabled = False
          ParentFont = False
          TabOrder = 0
          AutoDropDown = True
          ShowButton = True
          SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
          AllowClearKey = False
          OnEnter = wwDBLookupCombo4Enter
          OnExit = wwDBLookupCombo4Exit
        end
      end
      object wwDBEdit13: TwwDBEdit
        Left = 665
        Top = 12
        Width = 91
        Height = 21
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'NFI_NUMERO'
        DataSource = DS_NF
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnEnter = wwDBEdit13Enter
        OnExit = wwDBEdit13Exit
      end
      object Panel7: TPanel
        Left = 238
        Top = 11
        Width = 298
        Height = 25
        BevelInner = bvLowered
        BevelOuter = bvSpace
        Color = clSilver
        TabOrder = 4
        object Label40: TLabel
          Left = 6
          Top = 2
          Width = 146
          Height = 17
          Caption = 'Nota Fiscal de Servi�o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object GroupBox3: TGroupBox
        Left = 9
        Top = 172
        Width = 747
        Height = 110
        Caption = 'Discrimina��o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        object Label5: TLabel
          Left = 37
          Top = 25
          Width = 67
          Height = 15
          Caption = 'Servi�os de'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 46
          Top = 53
          Width = 58
          Height = 15
          Caption = 'Descri��o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 74
          Top = 83
          Width = 29
          Height = 15
          Caption = 'Valor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText4: TDBText
          Left = 106
          Top = 82
          Width = 96
          Height = 17
          DataField = 'NFI_TOTA'
          DataSource = DS_NF
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object wwDBEdit2: TwwDBEdit
          Left = 106
          Top = 23
          Width = 193
          Height = 21
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'NFI_PRESTSERV'
          DataSource = DS_NF
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnEnter = wwDBEdit2Enter
          OnExit = wwDBEdit2Exit
        end
        object wwDBEdit1: TwwDBEdit
          Left = 106
          Top = 52
          Width = 625
          Height = 21
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'NFI_DISCRIM'
          DataSource = DS_NF
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnEnter = wwDBEdit1Enter
          OnExit = wwDBEdit1Exit
        end
      end
      object DBG_RAAT: TwwDBGrid
        Left = 13
        Top = 290
        Width = 741
        Height = 177
        Hint = 'Visualiza��o dos Registros'
        Selected.Strings = (
          'NFI_NUMERO'#9'9'#9'N�mero NF'#9'F'
          'NFI_DEMI'#9'9'#9'Emiss�o'#9'F'
          'CLINraza'#9'48'#9'Destinat�rio'#9'F'
          'NFI_TOTA'#9'10'#9'Vlr. Total'#9'F')
        IniAttributes.FileName = 'delphi32.ini'
        IniAttributes.SectionName = 'FClienteDBG_RAAT'
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        DataSource = DS_NF
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        KeyOptions = []
        Options = [dgAlwaysShowEditor, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgWordWrap]
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 6
        TitleAlignment = taCenter
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clNavy
        TitleFont.Height = -16
        TitleFont.Name = 'Arial Narrow'
        TitleFont.Style = [fsBold]
        TitleLines = 1
        TitleButtons = False
        IndicatorColor = icBlack
        object DBG_RAATIButton: TwwIButton
          Left = 0
          Top = 0
          Width = 13
          Height = 22
          AllowAllUp = True
        end
      end
    end
  end
  object Panel4: TPanel
    Left = 115
    Top = 161
    Width = 553
    Height = 160
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Caption = 'Panel2'
    Color = clBlue
    TabOrder = 2
    Visible = False
    object Panel6: TPanel
      Left = 13
      Top = 12
      Width = 530
      Height = 137
      BevelInner = bvLowered
      TabOrder = 0
      object Label6: TLabel
        Left = 168
        Top = 21
        Width = 188
        Height = 19
        Caption = 'Condi��o de Pagamento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object wwDBLookupCombo3: TwwDBLookupCombo
        Left = 93
        Top = 52
        Width = 352
        Height = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        CharCase = ecUpperCase
        BorderStyle = bsNone
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'Descricao'#9'25'#9'Descri��o'#9'F'
          'Num_Parcelas'#9'28'#9'N�mero de Parcelas'#9'F')
        LookupTable = Q_COND
        LookupField = 'Cond_Pgto_ID'
        Options = [loTitles]
        ParentFont = False
        TabOrder = 0
        AutoDropDown = True
        ShowButton = True
        AllowClearKey = True
      end
      object BitBtn2: TBitBtn
        Left = 184
        Top = 90
        Width = 100
        Height = 24
        Hint = 'Confirmar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = BitBtn2Click
        Glyph.Data = {
          BE060000424DBE06000000000000360400002800000024000000120000000100
          0800000000008802000000000000000000000001000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
          A600000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000F0FBFF00A4A0A000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00030303030303
          0303030303030303030303030303030303030303030303030303030303030303
          03030303030303030303030303030303030303030303FF030303030303030303
          03030303030303040403030303030303030303030303030303F8F8FF03030303
          03030303030303030303040202040303030303030303030303030303F80303F8
          FF030303030303030303030303040202020204030303030303030303030303F8
          03030303F8FF0303030303030303030304020202020202040303030303030303
          0303F8030303030303F8FF030303030303030304020202FA0202020204030303
          0303030303F8FF0303F8FF030303F8FF03030303030303020202FA03FA020202
          040303030303030303F8FF03F803F8FF0303F8FF03030303030303FA02FA0303
          03FA0202020403030303030303F8FFF8030303F8FF0303F8FF03030303030303
          FA0303030303FA0202020403030303030303F80303030303F8FF0303F8FF0303
          0303030303030303030303FA0202020403030303030303030303030303F8FF03
          03F8FF03030303030303030303030303FA020202040303030303030303030303
          0303F8FF0303F8FF03030303030303030303030303FA02020204030303030303
          03030303030303F8FF0303F8FF03030303030303030303030303FA0202020403
          030303030303030303030303F8FF0303F8FF03030303030303030303030303FA
          0202040303030303030303030303030303F8FF03F8FF03030303030303030303
          03030303FA0202030303030303030303030303030303F8FFF803030303030303
          030303030303030303FA0303030303030303030303030303030303F803030303
          0303030303030303030303030303030303030303030303030303030303030303
          0303}
        NumGlyphs = 2
        Style = bsNew
      end
      object BitBtn1: TBitBtn
        Left = 288
        Top = 90
        Width = 36
        Height = 24
        Hint = 'Cancelar'
        Cancel = True
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = BitBtn1Click
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333333333333333000033338833333333333333333F333333333333
          0000333911833333983333333388F333333F3333000033391118333911833333
          38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
          911118111118333338F3338F833338F3000033333911111111833333338F3338
          3333F8330000333333911111183333333338F333333F83330000333333311111
          8333333333338F3333383333000033333339111183333333333338F333833333
          00003333339111118333333333333833338F3333000033333911181118333333
          33338333338F333300003333911183911183333333383338F338F33300003333
          9118333911183333338F33838F338F33000033333913333391113333338FF833
          38F338F300003333333333333919333333388333338FFF830000333333333333
          3333333333333333333888330000333333333333333333333333333333333333
          0000}
        NumGlyphs = 2
        Style = bsNew
      end
    end
  end
  object Q_NF: TwwQuery
    CachedUpdates = True
    AfterPost = Q_NFAfterPost
    AfterDelete = Q_NFAfterDelete
    OnNewRecord = Q_NFNewRecord
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    RequestLive = True
    SQL.Strings = (
      'Select * from NF '
      'where TDOC_ID = 16'
      'order by NFI_CODI')
    UpdateObject = UPD_NF
    ValidateWithMask = True
    Left = 600
    Top = 89
    object Q_NFNFI_NUMERO: TStringField
      DisplayLabel = 'N�mero NF'
      DisplayWidth = 9
      FieldName = 'NFI_NUMERO'
      Origin = 'NBFDADOS.NF.NFI_NUMERO'
      FixedChar = True
      Size = 10
    end
    object Q_NFNFI_DEMI: TDateTimeField
      DisplayLabel = 'Emiss�o'
      DisplayWidth = 9
      FieldName = 'NFI_DEMI'
      Origin = 'NBFDADOS.NF.NFI_DEMI'
    end
    object Q_NFCLINraza: TStringField
      DisplayLabel = 'Destinat�rio'
      DisplayWidth = 48
      FieldKind = fkLookup
      FieldName = 'CLINraza'
      LookupDataSet = Q_CLIN
      LookupKeyFields = 'CLIN_ID'
      LookupResultField = 'CLIN_RAZA'
      KeyFields = 'NFI_DEST_CLI'
      Size = 50
      Lookup = True
    end
    object Q_NFNFI_TOTA: TFloatField
      DisplayLabel = 'Vlr. Total'
      DisplayWidth = 10
      FieldName = 'NFI_TOTA'
      Origin = 'NBFDADOS.NF.NFI_TOTA'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_NFNFI_DEST_CLI: TIntegerField
      DisplayWidth = 10
      FieldName = 'NFI_DEST_CLI'
      Origin = 'NBFDADOS.NF.NFI_DEST_CLI'
      Visible = False
    end
    object Q_NFNFI_CODI: TAutoIncField
      FieldName = 'NFI_CODI'
      Origin = 'NBFDADOS.NF.NFI_CODI'
      Visible = False
    end
    object Q_NFTDOC_ID: TIntegerField
      FieldName = 'TDOC_ID'
      Origin = 'NBFDADOS.NF.TDOC_ID'
      Visible = False
    end
    object Q_NFNFI_EMIT_CLI: TIntegerField
      FieldName = 'NFI_EMIT_CLI'
      Origin = 'NBFDADOS.NF.NFI_EMIT_CLI'
      Visible = False
    end
    object Q_NFNFI_PRESTSERV: TStringField
      FieldName = 'NFI_PRESTSERV'
      Origin = 'NBFDADOS.NF.NFI_PRESTSERV'
      Visible = False
      FixedChar = True
      Size = 25
    end
    object Q_NFNFI_DISCRIM: TStringField
      FieldName = 'NFI_DISCRIM'
      Origin = 'NBFDADOS.NF.NFI_DISCRIM'
      Visible = False
      FixedChar = True
      Size = 70
    end
    object Q_NFNFI_EMIT_ORIG: TStringField
      FieldName = 'NFI_EMIT_ORIG'
      Origin = 'NBFDADOS.NF.NFI_EMIT_ORIG'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_NFNFI_DEST_ORIG: TStringField
      FieldName = 'NFI_DEST_ORIG'
      Origin = 'NBFDADOS.NF.NFI_DEST_ORIG'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_NFNFI_DEST_NOME: TStringField
      FieldName = 'NFI_DEST_NOME'
      Origin = 'NBFDADOS.NF.NFI_DEST_NOME'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object Q_NFNFI_DEST_RAZA: TStringField
      FieldName = 'NFI_DEST_RAZA'
      Origin = 'NBFDADOS.NF.NFI_DEST_RAZA'
      Visible = False
      FixedChar = True
      Size = 50
    end
    object Q_NFNFI_DEST_ENDERECO: TStringField
      FieldName = 'NFI_DEST_ENDERECO'
      Origin = 'NBFDADOS.NF.NFI_DEST_ENDERECO'
      Visible = False
      FixedChar = True
      Size = 50
    end
    object Q_NFNFI_DEST_COMPL: TStringField
      FieldName = 'NFI_DEST_COMPL'
      Origin = 'NBFDADOS.NF.NFI_DEST_COMPL'
      Visible = False
      FixedChar = True
    end
    object Q_NFNFI_DEST_BAIRRO: TStringField
      FieldName = 'NFI_DEST_BAIRRO'
      Origin = 'NBFDADOS.NF.NFI_DEST_BAIRRO'
      Visible = False
      FixedChar = True
      Size = 40
    end
    object Q_NFNFI_DEST_UF_SIGLA: TStringField
      FieldName = 'NFI_DEST_UF_SIGLA'
      Origin = 'NBFDADOS.NF.NFI_DEST_UF_SIGLA'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object Q_NFNFI_DEST_CEP: TStringField
      FieldName = 'NFI_DEST_CEP'
      Origin = 'NBFDADOS.NF.NFI_DEST_CEP'
      Visible = False
      FixedChar = True
      Size = 8
    end
    object Q_NFNFI_DEST_TEL: TStringField
      FieldName = 'NFI_DEST_TEL'
      Origin = 'NBFDADOS.NF.NFI_DEST_TEL'
      Visible = False
      FixedChar = True
      Size = 11
    end
    object Q_NFNFI_DEST_FAX: TStringField
      FieldName = 'NFI_DEST_FAX'
      Origin = 'NBFDADOS.NF.NFI_DEST_FAX'
      Visible = False
      FixedChar = True
      Size = 11
    end
    object Q_NFNFI_DEST_CGC: TStringField
      FieldName = 'NFI_DEST_CGC'
      Origin = 'NBFDADOS.NF.NFI_DEST_CGC'
      Visible = False
      FixedChar = True
      Size = 14
    end
    object Q_NFNFI_DEST_INSCRG: TStringField
      FieldName = 'NFI_DEST_INSCRG'
      Origin = 'NBFDADOS.NF.NFI_DEST_INSCRG'
      Visible = False
      FixedChar = True
    end
    object Q_NFNFI_DEST_INSCTRB: TStringField
      FieldName = 'NFI_DEST_INSCTRB'
      Origin = 'NBFDADOS.NF.NFI_DEST_INSCTRB'
      Visible = False
      FixedChar = True
    end
    object Q_NFNFI_DEST_PESS: TStringField
      FieldName = 'NFI_DEST_PESS'
      Origin = 'NBFDADOS.NF.NFI_DEST_PESS'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_NFNFI_VDES: TFloatField
      FieldName = 'NFI_VDES'
      Origin = 'NBFDADOS.NF.NFI_VDES'
      Visible = False
    end
    object Q_NFNFI_VFRE: TFloatField
      FieldName = 'NFI_VFRE'
      Origin = 'NBFDADOS.NF.NFI_VFRE'
      Visible = False
    end
    object Q_NFNFI_VSEG: TFloatField
      FieldName = 'NFI_VSEG'
      Origin = 'NBFDADOS.NF.NFI_VSEG'
      Visible = False
    end
    object Q_NFNFI_BIPI: TFloatField
      FieldName = 'NFI_BIPI'
      Origin = 'NBFDADOS.NF.NFI_BIPI'
      Visible = False
    end
    object Q_NFNFI_VIPI: TFloatField
      FieldName = 'NFI_VIPI'
      Origin = 'NBFDADOS.NF.NFI_VIPI'
      Visible = False
    end
    object Q_NFNFI_BICM: TFloatField
      FieldName = 'NFI_BICM'
      Origin = 'NBFDADOS.NF.NFI_BICM'
      Visible = False
    end
    object Q_NFNFI_VICM: TFloatField
      FieldName = 'NFI_VICM'
      Origin = 'NBFDADOS.NF.NFI_VICM'
      Visible = False
    end
    object Q_NFNFI_VMER: TFloatField
      FieldName = 'NFI_VMER'
      Origin = 'NBFDADOS.NF.NFI_VMER'
      Visible = False
    end
    object Q_NFNFI_DSAI: TDateTimeField
      FieldName = 'NFI_DSAI'
      Origin = 'NBFDADOS.NF.NFI_DSAI'
      Visible = False
    end
    object Q_NFNFI_HSAI: TDateTimeField
      FieldName = 'NFI_HSAI'
      Origin = 'NBFDADOS.NF.NFI_HSAI'
      Visible = False
    end
    object Q_NFNFI_TRAN: TStringField
      FieldName = 'NFI_TRAN'
      Origin = 'NBFDADOS.NF.NFI_TRAN'
      Visible = False
      FixedChar = True
      Size = 50
    end
    object Q_NFNFI_PLAC: TStringField
      FieldName = 'NFI_PLAC'
      Origin = 'NBFDADOS.NF.NFI_PLAC'
      Visible = False
      FixedChar = True
      Size = 50
    end
    object Q_NFNFI_UF_SIGLA: TStringField
      FieldName = 'NFI_UF_SIGLA'
      Origin = 'NBFDADOS.NF.NFI_UF_SIGLA'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object Q_NFNFI_MARC: TStringField
      FieldName = 'NFI_MARC'
      Origin = 'NBFDADOS.NF.NFI_MARC'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object Q_NFNFI_QTDE: TIntegerField
      FieldName = 'NFI_QTDE'
      Origin = 'NBFDADOS.NF.NFI_QTDE'
      Visible = False
    end
    object Q_NFNFI_ESPE: TStringField
      FieldName = 'NFI_ESPE'
      Origin = 'NBFDADOS.NF.NFI_ESPE'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object Q_NFNFI_PLIQ: TFloatField
      FieldName = 'NFI_PLIQ'
      Origin = 'NBFDADOS.NF.NFI_PLIQ'
      Visible = False
    end
    object Q_NFNFI_PBRU: TFloatField
      FieldName = 'NFI_PBRU'
      Origin = 'NBFDADOS.NF.NFI_PBRU'
      Visible = False
    end
    object Q_NFNFI_VOL: TFloatField
      FieldName = 'NFI_VOL'
      Origin = 'NBFDADOS.NF.NFI_VOL'
      Visible = False
    end
    object Q_NFNFI_TFRE: TStringField
      FieldName = 'NFI_TFRE'
      Origin = 'NBFDADOS.NF.NFI_TFRE'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_NFCFA_ID: TIntegerField
      FieldName = 'CFA_ID'
      Origin = 'NBFDADOS.NF.CFA_ID'
      Visible = False
    end
    object Q_NFOS_ID: TIntegerField
      FieldName = 'OS_ID'
      Origin = 'NBFDADOS.NF.OS_ID'
      Visible = False
    end
    object Q_NFMUN_ID: TIntegerField
      FieldName = 'MUN_ID'
      Origin = 'NBFDADOS.NF.MUN_ID'
      Visible = False
    end
    object Q_NFNFI_MARCADOR: TStringField
      FieldName = 'NFI_MARCADOR'
      Origin = 'NBFDADOS.NF.NFI_MARCADOR'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_NFNFI_DTENTREGA: TDateTimeField
      FieldName = 'NFI_DTENTREGA'
      Origin = 'NBFDADOS.NF.NFI_DTENTREGA'
      Visible = False
    end
    object Q_NFMANI_ID: TIntegerField
      FieldName = 'MANI_ID'
      Origin = 'NBFDADOS.NF.MANI_ID'
      Visible = False
    end
    object Q_NFMANI_ORDEM: TIntegerField
      FieldName = 'MANI_ORDEM'
      Origin = 'NBFDADOS.NF.MANI_ORDEM'
      Visible = False
    end
    object Q_NFNFI_MOVESTQ: TStringField
      FieldName = 'NFI_MOVESTQ'
      Origin = 'NBFDADOS.NF.NFI_MOVESTQ'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_NFNFI_TRANS: TStringField
      FieldName = 'NFI_TRANS'
      Origin = 'NBFDADOS.NF.NFI_TRANS'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_NFTEXTO_LIVRE: TMemoField
      FieldName = 'TEXTO_LIVRE'
      Origin = 'NBFDADOS.NF.TEXTO_LIVRE'
      Visible = False
      BlobType = ftMemo
    end
    object Q_NFNFI_DTENTREGA_FIM: TDateTimeField
      FieldName = 'NFI_DTENTREGA_FIM'
      Origin = 'NBFDADOS.NF.NFI_DTENTREGA_FIM'
      Visible = False
    end
    object Q_NFNFI_ENTREGA: TStringField
      FieldName = 'NFI_ENTREGA'
      Origin = 'NBFDADOS.NF.NFI_ENTREGA'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_NFNFI_COBRAR: TStringField
      FieldName = 'NFI_COBRAR'
      Origin = 'NBFDADOS.NF.NFI_COBRAR'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_NFNFI_CLONE: TStringField
      FieldName = 'NFI_CLONE'
      Origin = 'NBFDADOS.NF.NFI_CLONE'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_NFNFI_QTDEPALLET: TIntegerField
      FieldName = 'NFI_QTDEPALLET'
      Origin = 'NBFDADOS.NF.NFI_QTDEPALLET'
      Visible = False
    end
    object Q_NFNFI_QTDEUV: TFloatField
      FieldName = 'NFI_QTDEUV'
      Origin = 'NBFDADOS.NF.NFI_QTDEUV'
      Visible = False
    end
    object Q_NFTPRO_ID: TIntegerField
      FieldName = 'TPRO_ID'
      Origin = 'NBFDADOS.NF.TPRO_ID'
      Visible = False
    end
    object Q_NFNFI_MARCADOR_NFRS: TStringField
      FieldName = 'NFI_MARCADOR_NFRS'
      Origin = 'NBFDADOS.NF.NFI_MARCADOR_NFRS'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_NFNFI_NFRS_REJEITADA: TStringField
      FieldName = 'NFI_NFRS_REJEITADA'
      Origin = 'NBFDADOS.NF.NFI_NFRS_REJEITADA'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_NFNFI_RETORNADA: TStringField
      FieldName = 'NFI_RETORNADA'
      Origin = 'NBFDADOS.NF.NFI_RETORNADA'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_NFNFI_GEROUNFE: TStringField
      FieldName = 'NFI_GEROUNFE'
      Origin = 'NBFDADOS.NF.NFI_GEROUNFE'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_NFNFI_REDESPACHO: TStringField
      FieldName = 'NFI_REDESPACHO'
      Origin = 'NBFDADOS.NF.NFI_REDESPACHO'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_NFORD_ID: TIntegerField
      FieldName = 'ORD_ID'
      Origin = 'NBFDADOS.NF.ORD_ID'
      Visible = False
    end
    object Q_NFTRANS_ID: TIntegerField
      FieldName = 'TRANS_ID'
      Origin = 'NBFDADOS.NF.TRANS_ID'
      Visible = False
    end
    object Q_NFEmitDESC: TStringField
      FieldKind = fkLookup
      FieldName = 'EmitDESC'
      LookupDataSet = Q_CLIN2
      LookupKeyFields = 'CLIN_ID'
      LookupResultField = 'CLIN_RAZA'
      KeyFields = 'NFI_EMIT_CLI'
      Visible = False
      Size = 50
      Lookup = True
    end
    object Q_NFFAT_ID: TIntegerField
      FieldName = 'FAT_ID'
      Origin = 'NBFDADOS.NF.FAT_ID'
      Visible = False
    end
  end
  object DS_NF: TwwDataSource
    DataSet = Q_NF
    OnDataChange = DS_NFDataChange
    Left = 521
    Top = 240
  end
  object UPD_NF: TUpdateSQL
    ModifySQL.Strings = (
      'update NF'
      'set'
      '  NFI_NUMERO = :NFI_NUMERO,'
      '  TDOC_ID = :TDOC_ID,'
      '  NFI_EMIT_ORIG = :NFI_EMIT_ORIG,'
      '  NFI_EMIT_CLI = :NFI_EMIT_CLI,'
      '  NFI_DEST_ORIG = :NFI_DEST_ORIG,'
      '  NFI_DEST_CLI = :NFI_DEST_CLI,'
      '  NFI_DEST_NOME = :NFI_DEST_NOME,'
      '  NFI_DEST_RAZA = :NFI_DEST_RAZA,'
      '  NFI_DEST_ENDERECO = :NFI_DEST_ENDERECO,'
      '  NFI_DEST_COMPL = :NFI_DEST_COMPL,'
      '  NFI_DEST_BAIRRO = :NFI_DEST_BAIRRO,'
      '  NFI_DEST_UF_SIGLA = :NFI_DEST_UF_SIGLA,'
      '  NFI_DEST_CEP = :NFI_DEST_CEP,'
      '  NFI_DEST_TEL = :NFI_DEST_TEL,'
      '  NFI_DEST_FAX = :NFI_DEST_FAX,'
      '  NFI_DEST_CGC = :NFI_DEST_CGC,'
      '  NFI_DEST_INSCRG = :NFI_DEST_INSCRG,'
      '  NFI_DEST_INSCTRB = :NFI_DEST_INSCTRB,'
      '  NFI_DEST_PESS = :NFI_DEST_PESS,'
      '  NFI_VDES = :NFI_VDES,'
      '  NFI_VFRE = :NFI_VFRE,'
      '  NFI_VSEG = :NFI_VSEG,'
      '  NFI_BIPI = :NFI_BIPI,'
      '  NFI_VIPI = :NFI_VIPI,'
      '  NFI_BICM = :NFI_BICM,'
      '  NFI_VICM = :NFI_VICM,'
      '  NFI_VMER = :NFI_VMER,'
      '  NFI_TOTA = :NFI_TOTA,'
      '  NFI_DSAI = :NFI_DSAI,'
      '  NFI_HSAI = :NFI_HSAI,'
      '  NFI_TRAN = :NFI_TRAN,'
      '  NFI_PLAC = :NFI_PLAC,'
      '  NFI_UF_SIGLA = :NFI_UF_SIGLA,'
      '  NFI_MARC = :NFI_MARC,'
      '  NFI_QTDE = :NFI_QTDE,'
      '  NFI_ESPE = :NFI_ESPE,'
      '  NFI_PLIQ = :NFI_PLIQ,'
      '  NFI_PBRU = :NFI_PBRU,'
      '  NFI_VOL = :NFI_VOL,'
      '  NFI_TFRE = :NFI_TFRE,'
      '  NFI_DEMI = :NFI_DEMI,'
      '  CFA_ID = :CFA_ID,'
      '  OS_ID = :OS_ID,'
      '  MUN_ID = :MUN_ID,'
      '  NFI_MARCADOR = :NFI_MARCADOR,'
      '  NFI_DTENTREGA = :NFI_DTENTREGA,'
      '  MANI_ID = :MANI_ID,'
      '  MANI_ORDEM = :MANI_ORDEM,'
      '  NFI_MOVESTQ = :NFI_MOVESTQ,'
      '  NFI_TRANS = :NFI_TRANS,'
      '  TEXTO_LIVRE = :TEXTO_LIVRE,'
      '  NFI_DTENTREGA_FIM = :NFI_DTENTREGA_FIM,'
      '  NFI_ENTREGA = :NFI_ENTREGA,'
      '  NFI_COBRAR = :NFI_COBRAR,'
      '  NFI_CLONE = :NFI_CLONE,'
      '  NFI_QTDEPALLET = :NFI_QTDEPALLET,'
      '  NFI_QTDEUV = :NFI_QTDEUV,'
      '  TPRO_ID = :TPRO_ID,'
      '  NFI_MARCADOR_NFRS = :NFI_MARCADOR_NFRS,'
      '  NFI_NFRS_REJEITADA = :NFI_NFRS_REJEITADA,'
      '  NFI_RETORNADA = :NFI_RETORNADA,'
      '  NFI_GEROUNFE = :NFI_GEROUNFE,'
      '  NFI_REDESPACHO = :NFI_REDESPACHO,'
      '  ORD_ID = :ORD_ID,'
      '  TRANS_ID = :TRANS_ID,'
      '  NFI_PRESTSERV = :NFI_PRESTSERV,'
      '  NFI_DISCRIM = :NFI_DISCRIM'
      'where'
      '  NFI_CODI = :OLD_NFI_CODI')
    InsertSQL.Strings = (
      'insert into NF'
      
        '  (NFI_NUMERO, TDOC_ID, NFI_EMIT_ORIG, NFI_EMIT_CLI, NFI_DEST_OR' +
        'IG, NFI_DEST_CLI, '
      
        '   NFI_DEST_NOME, NFI_DEST_RAZA, NFI_DEST_ENDERECO, NFI_DEST_COM' +
        'PL, NFI_DEST_BAIRRO, '
      
        '   NFI_DEST_UF_SIGLA, NFI_DEST_CEP, NFI_DEST_TEL, NFI_DEST_FAX, ' +
        'NFI_DEST_CGC, '
      
        '   NFI_DEST_INSCRG, NFI_DEST_INSCTRB, NFI_DEST_PESS, NFI_VDES, N' +
        'FI_VFRE, '
      
        '   NFI_VSEG, NFI_BIPI, NFI_VIPI, NFI_BICM, NFI_VICM, NFI_VMER, N' +
        'FI_TOTA, '
      
        '   NFI_DSAI, NFI_HSAI, NFI_TRAN, NFI_PLAC, NFI_UF_SIGLA, NFI_MAR' +
        'C, NFI_QTDE, '
      
        '   NFI_ESPE, NFI_PLIQ, NFI_PBRU, NFI_VOL, NFI_TFRE, NFI_DEMI, CF' +
        'A_ID, OS_ID, '
      
        '   MUN_ID, NFI_MARCADOR, NFI_DTENTREGA, MANI_ID, MANI_ORDEM, NFI' +
        '_MOVESTQ, '
      
        '   NFI_TRANS, TEXTO_LIVRE, NFI_DTENTREGA_FIM, NFI_ENTREGA, NFI_C' +
        'OBRAR, '
      
        '   NFI_CLONE, NFI_QTDEPALLET, NFI_QTDEUV, TPRO_ID, NFI_MARCADOR_' +
        'NFRS, NFI_NFRS_REJEITADA, '
      
        '   NFI_RETORNADA, NFI_GEROUNFE, NFI_REDESPACHO, ORD_ID, TRANS_ID' +
        ', NFI_PRESTSERV, '
      '   NFI_DISCRIM)'
      'values'
      
        '  (:NFI_NUMERO, :TDOC_ID, :NFI_EMIT_ORIG, :NFI_EMIT_CLI, :NFI_DE' +
        'ST_ORIG, '
      
        '   :NFI_DEST_CLI, :NFI_DEST_NOME, :NFI_DEST_RAZA, :NFI_DEST_ENDE' +
        'RECO, :NFI_DEST_COMPL, '
      
        '   :NFI_DEST_BAIRRO, :NFI_DEST_UF_SIGLA, :NFI_DEST_CEP, :NFI_DES' +
        'T_TEL, '
      
        '   :NFI_DEST_FAX, :NFI_DEST_CGC, :NFI_DEST_INSCRG, :NFI_DEST_INS' +
        'CTRB, :NFI_DEST_PESS, '
      
        '   :NFI_VDES, :NFI_VFRE, :NFI_VSEG, :NFI_BIPI, :NFI_VIPI, :NFI_B' +
        'ICM, :NFI_VICM, '
      
        '   :NFI_VMER, :NFI_TOTA, :NFI_DSAI, :NFI_HSAI, :NFI_TRAN, :NFI_P' +
        'LAC, :NFI_UF_SIGLA, '
      
        '   :NFI_MARC, :NFI_QTDE, :NFI_ESPE, :NFI_PLIQ, :NFI_PBRU, :NFI_V' +
        'OL, :NFI_TFRE, '
      
        '   :NFI_DEMI, :CFA_ID, :OS_ID, :MUN_ID, :NFI_MARCADOR, :NFI_DTEN' +
        'TREGA, '
      
        '   :MANI_ID, :MANI_ORDEM, :NFI_MOVESTQ, :NFI_TRANS, :TEXTO_LIVRE' +
        ', :NFI_DTENTREGA_FIM, '
      
        '   :NFI_ENTREGA, :NFI_COBRAR, :NFI_CLONE, :NFI_QTDEPALLET, :NFI_' +
        'QTDEUV, '
      
        '   :TPRO_ID, :NFI_MARCADOR_NFRS, :NFI_NFRS_REJEITADA, :NFI_RETOR' +
        'NADA, :NFI_GEROUNFE, '
      
        '   :NFI_REDESPACHO, :ORD_ID, :TRANS_ID, :NFI_PRESTSERV, :NFI_DIS' +
        'CRIM)')
    DeleteSQL.Strings = (
      'delete from NF'
      'where'
      '  NFI_CODI = :OLD_NFI_CODI')
    Left = 588
    Top = 236
  end
  object Q_CLIN: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select CLIN_RAZA,CLIN_ID from CLIENTENBF'
      'order by CLIN_RAZA ')
    ValidateWithMask = True
    Left = 664
    Top = 160
    object Q_CLINCLIN_RAZA: TStringField
      DisplayWidth = 50
      FieldName = 'CLIN_RAZA'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_RAZA'
      FixedChar = True
      Size = 50
    end
    object Q_CLINCLIN_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'CLIN_ID'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_ID'
      Visible = False
    end
  end
  object Q_AUX: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    ValidateWithMask = True
    Left = 592
    Top = 154
  end
  object Q_PAR: TwwQuery
    CachedUpdates = True
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    RequestLive = True
    SQL.Strings = (
      'select * from parametro  ')
    ValidateWithMask = True
    Left = 663
    Top = 218
    object Q_PARPAR_ID: TAutoIncField
      FieldName = 'PAR_ID'
      Origin = 'NBFDADOS.parametro.PAR_ID'
    end
    object Q_PARPAR_NOME: TStringField
      FieldName = 'PAR_NOME'
      Origin = 'NBFDADOS.parametro.PAR_NOME'
      FixedChar = True
      Size = 30
    end
    object Q_PARPAR_RAZA: TStringField
      FieldName = 'PAR_RAZA'
      Origin = 'NBFDADOS.parametro.PAR_RAZA'
      FixedChar = True
      Size = 50
    end
    object Q_PARPAR_CNPJ: TStringField
      FieldName = 'PAR_CNPJ'
      Origin = 'NBFDADOS.parametro.PAR_CNPJ'
      EditMask = '!99.999.999/9999-99;0;_'
      FixedChar = True
      Size = 15
    end
    object Q_PARPAR_INSC: TStringField
      FieldName = 'PAR_INSC'
      Origin = 'NBFDADOS.parametro.PAR_INSC'
      FixedChar = True
      Size = 15
    end
    object Q_PARPAR_ENDERECO: TStringField
      FieldName = 'PAR_ENDERECO'
      Origin = 'NBFDADOS.parametro.PAR_ENDERECO'
      FixedChar = True
      Size = 50
    end
    object Q_PARPAR_ENDERECO_COMPL: TStringField
      FieldName = 'PAR_ENDERECO_COMPL'
      Origin = 'NBFDADOS.parametro.PAR_ENDERECO_COMPL'
      FixedChar = True
    end
    object Q_PARPAR_ENDERECO_BAIRRO: TStringField
      FieldName = 'PAR_ENDERECO_BAIRRO'
      Origin = 'NBFDADOS.parametro.PAR_ENDERECO_BAIRRO'
      FixedChar = True
      Size = 40
    end
    object Q_PARPAR_UF_SIGLA: TStringField
      FieldName = 'PAR_UF_SIGLA'
      Origin = 'NBFDADOS.parametro.PAR_UF_SIGLA'
      FixedChar = True
      Size = 2
    end
    object Q_PARPAR_CEP: TStringField
      FieldName = 'PAR_CEP'
      Origin = 'NBFDADOS.parametro.PAR_CEP'
      EditMask = '99999-999;0;_'
      FixedChar = True
      Size = 8
    end
    object Q_PARPAR_TEL: TStringField
      FieldName = 'PAR_TEL'
      Origin = 'NBFDADOS.parametro.PAR_TEL'
      EditMask = '!\(999\)#999-9999;0; '
      FixedChar = True
      Size = 11
    end
    object Q_PARPAR_FAX: TStringField
      FieldName = 'PAR_FAX'
      Origin = 'NBFDADOS.parametro.PAR_FAX'
      EditMask = '!\(999\)#999-9999;0; '
      FixedChar = True
      Size = 11
    end
    object Q_PARPAR_EMAIL: TStringField
      FieldName = 'PAR_EMAIL'
      Origin = 'NBFDADOS.parametro.PAR_EMAIL'
      FixedChar = True
      Size = 60
    end
    object Q_PARAR_ID: TIntegerField
      FieldName = 'AR_ID'
      Origin = 'NBFDADOS.parametro.AR_ID'
    end
    object Q_PARMUN_ID: TIntegerField
      FieldName = 'MUN_ID'
      Origin = 'NBFDADOS.parametro.MUN_ID'
    end
    object Q_PARAR_ID_OPER: TIntegerField
      FieldName = 'AR_ID_OPER'
      Origin = 'NBFDADOS.parametro.AR_ID_OPER'
    end
    object Q_PARPALLET_M2: TFloatField
      FieldName = 'PALLET_M2'
      Origin = 'NBFDADOS.parametro.PALLET_M2'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object Q_PARULT_TAG: TIntegerField
      FieldName = 'ULT_TAG'
      Origin = 'NBFDADOS.parametro.ULT_TAG'
    end
    object Q_PARCO_SER_ID: TIntegerField
      FieldName = 'CO_SER_ID'
      Origin = 'NBFDADOS.parametro.CO_SER_ID'
    end
    object Q_PAREN_SER_ID: TIntegerField
      FieldName = 'EN_SER_ID'
      Origin = 'NBFDADOS.parametro.EN_SER_ID'
    end
    object Q_PARCLIN_ID: TIntegerField
      FieldName = 'CLIN_ID'
      Origin = 'NBFDADOS.parametro.CLIN_ID'
    end
    object Q_PARFLAGTELA: TStringField
      FieldName = 'FLAGTELA'
      Origin = 'NBFDADOS.parametro.FLAGTELA'
      FixedChar = True
      Size = 1
    end
    object Q_PARFLAGTELA2: TStringField
      FieldName = 'FLAGTELA2'
      Origin = 'NBFDADOS.parametro.FLAGTELA2'
      FixedChar = True
      Size = 1
    end
    object Q_PARFLAGTELA3: TStringField
      FieldName = 'FLAGTELA3'
      Origin = 'NBFDADOS.parametro.FLAGTELA3'
      FixedChar = True
      Size = 1
    end
    object Q_PARVERSAO: TStringField
      FieldName = 'VERSAO'
      Origin = 'NBFDADOS.parametro.VERSAO'
      FixedChar = True
      Size = 50
    end
    object Q_PARFLAGTELA_USUARIO: TStringField
      FieldName = 'FLAGTELA_USUARIO'
      Origin = 'NBFDADOS.parametro.FLAGTELA_USUARIO'
      FixedChar = True
    end
    object Q_PARFLAGTELA_DATA: TDateTimeField
      FieldName = 'FLAGTELA_DATA'
      Origin = 'NBFDADOS.parametro.FLAGTELA_DATA'
    end
    object Q_PARFLAGTELA2_USUARIO: TStringField
      FieldName = 'FLAGTELA2_USUARIO'
      Origin = 'NBFDADOS.parametro.FLAGTELA2_USUARIO'
      FixedChar = True
    end
    object Q_PARFLAGTELA2_DATA: TDateTimeField
      FieldName = 'FLAGTELA2_DATA'
      Origin = 'NBFDADOS.parametro.FLAGTELA2_DATA'
    end
    object Q_PARPORTA: TIntegerField
      FieldName = 'PORTA'
      Origin = 'NBFDADOS.parametro.PORTA'
    end
    object Q_PARHOST: TStringField
      FieldName = 'HOST'
      Origin = 'NBFDADOS.parametro.HOST'
      FixedChar = True
      Size = 30
    end
    object Q_PARCAMINHO: TStringField
      FieldName = 'CAMINHO'
      Origin = 'NBFDADOS.parametro.CAMINHO'
      FixedChar = True
      Size = 40
    end
  end
  object Q_CLIN2: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select CLIN_RAZA,CLIN_ID from CLIENTENBF ')
    ValidateWithMask = True
    Left = 719
    Top = 216
    object StringField1: TStringField
      DisplayWidth = 50
      FieldName = 'CLIN_RAZA'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_RAZA'
      FixedChar = True
      Size = 50
    end
    object AutoIncField1: TAutoIncField
      DisplayWidth = 10
      FieldName = 'CLIN_ID'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_ID'
      Visible = False
    end
  end
  object Q_COND: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'SELECT * from CONDICAO_PAGTO')
    ValidateWithMask = True
    Left = 716
    Top = 168
    object Q_CONDDescricao: TStringField
      DisplayLabel = 'Descri��o'
      DisplayWidth = 25
      FieldName = 'Descricao'
      Origin = 'NBFDADOS.CONDICAO_PAGTO.Descricao'
      FixedChar = True
      Size = 30
    end
    object Q_CONDNum_Parcelas: TFloatField
      DisplayLabel = 'N�mero de Parcelas'
      DisplayWidth = 28
      FieldName = 'Num_Parcelas'
      Origin = 'NBFDADOS.CONDICAO_PAGTO.Num_Parcelas'
    end
    object Q_CONDCond_Pgto_ID: TAutoIncField
      FieldName = 'Cond_Pgto_ID'
      Origin = 'NBFDADOS.CONDICAO_PAGTO.Cond_Pgto_ID'
      Visible = False
    end
    object Q_CONDPagamento: TStringField
      FieldName = 'Pagamento'
      Origin = 'NBFDADOS.CONDICAO_PAGTO.Pagamento'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object Q_CONDFora: TStringField
      FieldName = 'Fora'
      Origin = 'NBFDADOS.CONDICAO_PAGTO.Fora'
      Visible = False
      FixedChar = True
      Size = 1
    end
  end
  object STP_GERAFATURA: TwwStoredProc
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    StoredProcName = 'dbo.STP_GERAFATURA'
    ValidateWithMask = True
    Left = 537
    Top = 305
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Result'
        ParamType = ptResult
      end
      item
        DataType = ftFloat
        Name = '@VALORCHEIO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@CLIN_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@COND_PGTO_ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@TIPO'
        ParamType = ptInput
      end>
  end
  object T_ACEN: TwwTable
    DatabaseName = 'NBF'
    TableName = 'Acentuacao.DB'
    SyncSQLByRange = True
    NarrowSearch = False
    ValidateWithMask = True
    Left = 648
    Top = 304
    object T_ACENACE_CASC: TIntegerField
      FieldName = 'ACE_CASC'
    end
    object T_ACENACE_DESC: TStringField
      FieldName = 'ACE_DESC'
    end
    object T_ACENACE_NOVO: TStringField
      FieldName = 'ACE_NOVO'
      Size = 1
    end
  end
  object Q_CLINBF: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    DataSource = DS_NF
    SQL.Strings = (
      'Select  *  from CLIENTENBF where'
      'CLIN_ID = :NFI_dest_CLI'
      'order by CLIN_RAZA ')
    ValidateWithMask = True
    Left = 650
    Top = 368
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NFI_dest_CLI'
        ParamType = ptUnknown
      end>
    object Q_CLINBFCLIN_RAZA: TStringField
      DisplayLabel = 'Raz�o Social'
      DisplayWidth = 50
      FieldName = 'CLIN_RAZA'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_RAZA'
      FixedChar = True
      Size = 50
    end
    object Q_CLINBFCLIN_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'CLIN_ID'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_ID'
      Visible = False
    end
    object Q_CLINBFCLIN_PESSOA: TStringField
      FieldName = 'CLIN_PESSOA'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_PESSOA'
      FixedChar = True
      Size = 1
    end
    object Q_CLINBFCLIN_NOME: TStringField
      FieldName = 'CLIN_NOME'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_NOME'
      FixedChar = True
      Size = 30
    end
    object Q_CLINBFCLIN_CGCCPF: TStringField
      FieldName = 'CLIN_CGCCPF'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_CGCCPF'
      FixedChar = True
      Size = 15
    end
    object Q_CLINBFCLIN_INSCRG: TStringField
      FieldName = 'CLIN_INSCRG'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_INSCRG'
      FixedChar = True
      Size = 15
    end
    object Q_CLINBFCLIN_ENDERECO: TStringField
      FieldName = 'CLIN_ENDERECO'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_ENDERECO'
      FixedChar = True
      Size = 50
    end
    object Q_CLINBFCLIN_ENDERECO_COMPL: TStringField
      FieldName = 'CLIN_ENDERECO_COMPL'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_ENDERECO_COMPL'
      FixedChar = True
      Size = 35
    end
    object Q_CLINBFCLIN_ENDERECO_BAIRRO: TStringField
      FieldName = 'CLIN_ENDERECO_BAIRRO'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_ENDERECO_BAIRRO'
      FixedChar = True
      Size = 40
    end
    object Q_CLINBFCLIN_MUNICIPIO: TStringField
      FieldName = 'CLIN_MUNICIPIO'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_MUNICIPIO'
      FixedChar = True
      Size = 40
    end
    object Q_CLINBFUF_SIGLA: TStringField
      FieldName = 'UF_SIGLA'
      Origin = 'NBFDADOS.CLIENTENBF.UF_SIGLA'
      FixedChar = True
      Size = 2
    end
    object Q_CLINBFCLIN_CEP: TStringField
      FieldName = 'CLIN_CEP'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_CEP'
      FixedChar = True
      Size = 8
    end
    object Q_CLINBFCLIN_TEL1: TStringField
      FieldName = 'CLIN_TEL1'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_TEL1'
      FixedChar = True
      Size = 11
    end
    object Q_CLINBFCLIN_TEL2: TStringField
      FieldName = 'CLIN_TEL2'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_TEL2'
      FixedChar = True
      Size = 11
    end
    object Q_CLINBFCLIN_FAX: TStringField
      FieldName = 'CLIN_FAX'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_FAX'
      FixedChar = True
      Size = 11
    end
    object Q_CLINBFCLIN_EMAIL: TStringField
      FieldName = 'CLIN_EMAIL'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_EMAIL'
      FixedChar = True
      Size = 60
    end
    object Q_CLINBFCON_CODI: TStringField
      FieldName = 'CON_CODI'
      Origin = 'NBFDADOS.CLIENTENBF.CON_CODI'
      FixedChar = True
      Size = 6
    end
    object Q_CLINBFCLIN_CONTRATO: TStringField
      FieldName = 'CLIN_CONTRATO'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_CONTRATO'
      FixedChar = True
      Size = 1
    end
    object Q_CLINBFCLIN_UTIL_COD: TStringField
      FieldName = 'CLIN_UTIL_COD'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_UTIL_COD'
      FixedChar = True
      Size = 1
    end
    object Q_CLINBFMUN_ID: TIntegerField
      FieldName = 'MUN_ID'
      Origin = 'NBFDADOS.CLIENTENBF.MUN_ID'
    end
    object Q_CLINBFCLIN_WEB: TStringField
      FieldName = 'CLIN_WEB'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_WEB'
      FixedChar = True
      Size = 60
    end
    object Q_CLINBFCLIN_ENDC: TStringField
      FieldName = 'CLIN_ENDC'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_ENDC'
      FixedChar = True
      Size = 50
    end
    object Q_CLINBFCLIN_END_COMPLC: TStringField
      FieldName = 'CLIN_END_COMPLC'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_END_COMPLC'
      FixedChar = True
      Size = 35
    end
    object Q_CLINBFCLIN_END_BAIRC: TStringField
      FieldName = 'CLIN_END_BAIRC'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_END_BAIRC'
      FixedChar = True
      Size = 40
    end
    object Q_CLINBFCLIN_MUNICC: TStringField
      FieldName = 'CLIN_MUNICC'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_MUNICC'
      FixedChar = True
      Size = 40
    end
    object Q_CLINBFUF_SIGLAC: TStringField
      FieldName = 'UF_SIGLAC'
      Origin = 'NBFDADOS.CLIENTENBF.UF_SIGLAC'
      FixedChar = True
      Size = 2
    end
    object Q_CLINBFCLIN_CEPC: TStringField
      FieldName = 'CLIN_CEPC'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_CEPC'
      FixedChar = True
      Size = 8
    end
    object Q_CLINBFCLIN_TELC: TStringField
      FieldName = 'CLIN_TELC'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_TELC'
      FixedChar = True
      Size = 11
    end
    object Q_CLINBFCLIN_FAXC: TStringField
      FieldName = 'CLIN_FAXC'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_FAXC'
      FixedChar = True
      Size = 11
    end
    object Q_CLINBFCLIN_EMAILC: TStringField
      FieldName = 'CLIN_EMAILC'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_EMAILC'
      FixedChar = True
      Size = 60
    end
    object Q_CLINBFMUN_IDC: TIntegerField
      FieldName = 'MUN_IDC'
      Origin = 'NBFDADOS.CLIENTENBF.MUN_IDC'
    end
  end
  object Q_CTT: TwwQuery
    AutoCalcFields = False
    CachedUpdates = True
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    DataSource = FFaturamento.DS_OS
    RequestLive = True
    SQL.Strings = (
      'select MIN_M2 from CONTRATO'
      'where '
      'CTT_ID = :CTT_ID')
    ValidateWithMask = True
    Left = 719
    Top = 448
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CTT_ID'
        ParamType = ptUnknown
      end>
    object Q_CTTMIN_M2: TFloatField
      FieldName = 'MIN_M2'
      Origin = 'NBFDADOS.CONTRATO.MIN_M2'
    end
  end
  object Q_AUX2: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    ValidateWithMask = True
    Left = 520
    Top = 89
  end
end
