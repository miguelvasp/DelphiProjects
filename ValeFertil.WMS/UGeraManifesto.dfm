object FGeraManifesto: TFGeraManifesto
  Left = 303
  Top = 69
  Width = 894
  Height = 569
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  BorderIcons = []
  Caption = 'Geração do Manifesto de Carga'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label26: TLabel
    Left = 0
    Top = 360
    Width = 878
    Height = 17
    Align = alBottom
    Alignment = taCenter
    AutoSize = False
    Caption = 'Outros Transportadores'
    Color = clBtnShadow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clAqua
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 878
    Height = 34
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object SpeedButton3: TSpeedButton
      Left = 845
      Top = 5
      Width = 34
      Height = 25
      Hint = 'Sair'
      Anchors = [akTop, akRight]
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
    object BitBtn2: TBitBtn
      Left = 811
      Top = 5
      Width = 34
      Height = 25
      Hint = 'Confirmar'
      Anchors = [akTop, akRight]
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
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
    object BitBtn3: TBitBtn
      Left = 3
      Top = 5
      Width = 34
      Height = 25
      Hint = 'Selecionar Todas NF'#39'S'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = BitBtn3Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333FF33333333333330003FF3FFFFF3333777003000003333
        300077F777773F333777E00BFBFB033333337773333F7F33333FE0BFBF000333
        330077F3337773F33377E0FBFBFBF033330077F3333FF7FFF377E0BFBF000000
        333377F3337777773F3FE0FBFBFBFBFB039977F33FFFFFFF7377E0BF00000000
        339977FF777777773377000BFB03333333337773FF733333333F333000333333
        3300333777333333337733333333333333003333333333333377333333333333
        333333333333333333FF33333333333330003333333333333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
    end
    object BitBtn4: TBitBtn
      Left = 37
      Top = 5
      Width = 34
      Height = 25
      Hint = 'Desmarcar Todas NF'#39'S'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = BitBtn4Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        55555FFFFFFF5F55FFF5777777757559995777777775755777F7555555555550
        305555555555FF57F7F555555550055BB0555555555775F777F55555550FB000
        005555555575577777F5555550FB0BF0F05555555755755757F555550FBFBF0F
        B05555557F55557557F555550BFBF0FB005555557F55575577F555500FBFBFB0
        B05555577F555557F7F5550E0BFBFB00B055557575F55577F7F550EEE0BFB0B0
        B05557FF575F5757F7F5000EEE0BFBF0B055777FF575FFF7F7F50000EEE00000
        B0557777FF577777F7F500000E055550805577777F7555575755500000555555
        05555777775555557F5555000555555505555577755555557555}
      NumGlyphs = 2
    end
    object CheckBox1: TCheckBox
      Left = 80
      Top = 9
      Width = 155
      Height = 17
      Caption = 'Escolher NF'#39's - modo rápido'
      TabOrder = 3
      OnClick = CheckBox1Click
    end
    object CheckBox2: TCheckBox
      Left = 552
      Top = 7
      Width = 161
      Height = 17
      Caption = 'Conferir   NF'#39's - modo rápido'
      Enabled = False
      TabOrder = 4
      Visible = False
      OnClick = CheckBox2Click
    end
    object BitBtn1: TBitBtn
      Left = 234
      Top = 5
      Width = 34
      Height = 25
      Hint = 'Conferir   NF'#39's - modo rápido'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = BitBtn1Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
        000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
        00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
        F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
        0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
        FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
        FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
        0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
        00333377737FFFFF773333303300000003333337337777777333}
      NumGlyphs = 2
    end
    object RzBitBtn1: TRzBitBtn
      Left = 272
      Top = 5
      Width = 97
      Caption = 'Gerar Pre-Carga'
      TabOrder = 6
      OnClick = RzBitBtn1Click
    end
    object RzBitBtn2: TRzBitBtn
      Left = 371
      Top = 5
      Width = 174
      Caption = 'Adicionar/Visualizar Pre-Carga'
      TabOrder = 7
      OnClick = RzBitBtn2Click
    end
    object Button1: TButton
      Left = 559
      Top = 5
      Width = 114
      Height = 25
      Caption = 'Geral'
      TabOrder = 8
      OnClick = Button1Click
    end
  end
  object GridNFE: TwwDBGrid
    Left = 0
    Top = 34
    Width = 878
    Height = 326
    Selected.Strings = (
      'MARCADOR'#9'3'#9'*'#9'F'
      'MANI_ORDEM'#9'3'#9'Ord'#9'F'
      'NFI_NUMERO'#9'10'#9'NF'#9'F'
      'CEP'#9'8'#9'CEP'#9'F'
      'BAIRRO'#9'16'#9'Bairro'#9'F'
      'MUN_NOME'#9'15'#9'Município'#9'F'
      'REG_NOME'#9'15'#9'Região'#9'F'
      'NFI_DEST_RAZA'#9'32'#9'Destinatário'#9'F'
      'NFI_DTENTREGA'#9'9'#9'Entrega'#9'F'
      'PESO'#9'9'#9'Peso '#9'F'
      'VOLUME'#9'10'#9'Volume'#9'F'
      'NFI_DEST_ENDERECO'#9'50'#9'Endereço Entrega NF'#9'F'
      'CLIN_RAZA'#9'32'#9'Emitente'#9'F')
    IniAttributes.FileName = 'delphi32.ini'
    IniAttributes.SectionName = 'FGeraManifestoGridNFE'
    IniAttributes.Delimiter = ';;'
    TitleColor = clBlue
    FixedCols = 0
    ShowHorzScrollBar = True
    EditControlOptions = [ecoCheckboxSingleClick, ecoSearchOwnerForm]
    Align = alClient
    Color = clWhite
    DataSource = DS_MANI
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Arial Narrow'
    Font.Style = []
    KeyOptions = [dgEnterToTab, dgAllowInsert]
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    TabOrder = 1
    TitleAlignment = taCenter
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWhite
    TitleFont.Height = -11
    TitleFont.Name = 'Arial'
    TitleFont.Style = [fsBold]
    TitleLines = 1
    TitleButtons = True
    OnCalcCellColors = GridNFECalcCellColors
    OnTitleButtonClick = GridNFETitleButtonClick
    OnKeyPress = GridNFEKeyPress
    FooterColor = clInactiveCaption
    FooterCellColor = clGrayText
  end
  object Panel1: TPanel
    Left = 0
    Top = 377
    Width = 878
    Height = 154
    Align = alBottom
    BevelOuter = bvNone
    BevelWidth = 3
    Color = clBlue
    TabOrder = 2
    object Panel2: TPanel
      Left = 4
      Top = 6
      Width = 779
      Height = 115
      BevelOuter = bvNone
      Color = clWhite
      TabOrder = 0
      object Label32: TLabel
        Left = 331
        Top = 52
        Width = 106
        Height = 13
        Caption = 'S E L E C I O N A D O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object GroupBox1: TGroupBox
        Left = 2
        Top = 0
        Width = 295
        Height = 112
        Caption = 'Total Selecionado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object Label1: TLabel
          Left = 120
          Top = 14
          Width = 29
          Height = 15
          Caption = 'Peso'
        end
        object Label2: TLabel
          Left = 78
          Top = 39
          Width = 70
          Height = 15
          Caption = 'Volume (M3)'
        end
        object Label3: TLabel
          Left = 155
          Top = 9
          Width = 51
          Height = 23
          Alignment = taCenter
          Caption = 'Label3'
          Color = clBlue
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -19
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label4: TLabel
          Left = 155
          Top = 34
          Width = 51
          Height = 23
          Alignment = taCenter
          Caption = 'Label4'
          Color = clBlue
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -19
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label10: TLabel
          Left = 155
          Top = 59
          Width = 60
          Height = 23
          Alignment = taCenter
          Caption = 'Label10'
          Color = clBlue
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -19
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label9: TLabel
          Left = 84
          Top = 64
          Width = 65
          Height = 15
          Caption = 'Qtde. Pallet'
        end
        object Label13: TLabel
          Left = 100
          Top = 88
          Width = 49
          Height = 15
          Caption = 'Qtde. UV'
        end
        object Label14: TLabel
          Left = 155
          Top = 84
          Width = 60
          Height = 23
          Alignment = taCenter
          Caption = 'Label14'
          Color = clBlue
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -19
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
      end
      object GroupBox2: TGroupBox
        Left = 469
        Top = 0
        Width = 309
        Height = 112
        Caption = 'Total Não Selecionado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object Label5: TLabel
          Left = 139
          Top = 42
          Width = 51
          Height = 23
          Alignment = taCenter
          Caption = 'Label5'
          Color = clBlue
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -19
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label6: TLabel
          Left = 139
          Top = 67
          Width = 51
          Height = 23
          Alignment = taCenter
          Caption = 'Label6'
          Color = clBlue
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -19
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label7: TLabel
          Left = 104
          Top = 47
          Width = 29
          Height = 15
          Caption = 'Peso'
        end
        object Label8: TLabel
          Left = 62
          Top = 72
          Width = 70
          Height = 15
          Caption = 'Volume (M3)'
        end
        object Label11: TLabel
          Left = 106
          Top = 64
          Width = 65
          Height = 15
          Caption = 'Qtde. Pallet'
          Visible = False
        end
        object Label12: TLabel
          Left = 177
          Top = 59
          Width = 60
          Height = 23
          Alignment = taCenter
          Caption = 'Label12'
          Color = clBlue
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -19
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Visible = False
        end
        object Label15: TLabel
          Left = 122
          Top = 88
          Width = 49
          Height = 15
          Caption = 'Qtde. UV'
          Visible = False
        end
        object Label17: TLabel
          Left = 177
          Top = 84
          Width = 60
          Height = 23
          Alignment = taCenter
          Caption = 'Label17'
          Color = clBlue
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -19
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Visible = False
        end
      end
      object Panel17: TPanel
        Left = 305
        Top = 26
        Width = 158
        Height = 18
        BevelOuter = bvNone
        Caption = 'Cross Docking / Reentrega'
        Color = 10801360
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object Panel4: TPanel
        Left = 305
        Top = 74
        Width = 158
        Height = 18
        BevelOuter = bvNone
        Caption = 'Saída Armazém'
        Color = 14024703
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
    end
  end
  object wwDBEdit1: TwwDBEdit
    Left = 24
    Top = 101
    Width = 49
    Height = 21
    CharCase = ecUpperCase
    DataField = 'MARCADOR'
    DataSource = DS_MANI
    TabOrder = 3
    UnboundDataType = wwDefault
    UnboundAlignment = taCenter
    Visible = False
    WantReturns = False
    WordWrap = False
    OnDblClick = wwDBEdit1DblClick
  end
  object RadioGroup1: TRadioGroup
    Left = 655
    Top = -49
    Width = 790
    Height = 57
    Caption = 'Ordenação'
    Columns = 7
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ItemIndex = 10
    Items.Strings = (
      'Marcados'
      'Ordem'
      'CEP'
      'Bairro'
      'Município'
      'Região'
      'Destinatário'
      'Dt. Entrega'
      'Peso'
      'Volume'
      'NF      '
      'Emitente')
    ParentFont = False
    TabOrder = 4
    Visible = False
    OnClick = RadioGroup1Click
  end
  object Panel14: TPanel
    Left = 210
    Top = 36
    Width = 651
    Height = 544
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clNavy
    TabOrder = 5
    Visible = False
    object Label18: TLabel
      Left = 85
      Top = 10
      Width = 493
      Height = 19
      Caption = 'Quantidade da Nota Fiscal é maior que a quantidade em estoque.'
      Color = clNavy
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label19: TLabel
      Left = 65
      Top = 58
      Width = 89
      Height = 19
      Caption = 'Nota Fiscal '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText3: TDBText
      Left = 155
      Top = 56
      Width = 190
      Height = 24
      DataField = 'NFI_NUMERO'
      DataSource = DS_MANI
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clAqua
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton1: TSpeedButton
      Left = 585
      Top = 53
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
      OnClick = SpeedButton1Click
    end
    object Label20: TLabel
      Left = 345
      Top = 58
      Width = 67
      Height = 19
      Caption = 'Qtde. UV'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label21: TLabel
      Left = 420
      Top = 56
      Width = 78
      Height = 22
      Caption = 'Qtde. UV'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clAqua
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label22: TLabel
      Left = 482
      Top = 158
      Width = 138
      Height = 19
      Caption = 'Qtde. Selecionada'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label23: TLabel
      Left = 544
      Top = 184
      Width = 78
      Height = 22
      Alignment = taRightJustify
      Caption = 'Qtde. UV'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clAqua
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label24: TLabel
      Left = 471
      Top = 446
      Width = 170
      Height = 16
      Caption = 'Estoque(Áreas Disponíveis)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label25: TLabel
      Left = 544
      Top = 466
      Width = 78
      Height = 22
      Alignment = taRightJustify
      Caption = 'Qtde. UV'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clAqua
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label27: TLabel
      Left = 85
      Top = 27
      Width = 446
      Height = 19
      Caption = 'Estoque Físico - (Qtde. Selecionada + Qtde. em Manifestos)'
      Color = clNavy
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label28: TLabel
      Left = 491
      Top = 216
      Width = 129
      Height = 16
      Caption = 'Qtde. em Manifestos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label29: TLabel
      Left = 544
      Top = 236
      Width = 78
      Height = 22
      Alignment = taRightJustify
      Caption = 'Qtde. UV'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clAqua
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Grid2: TwwDBGrid
      Left = 17
      Top = 101
      Width = 445
      Height = 388
      Hint = 'Visualização dos Registros'
      Selected.Strings = (
        'PRO_COD'#9'16'#9'Cód. Produto'
        'PRO_DESC'#9'43'#9'Descrição'
        'INF_QTDE'#9'20'#9'Qtde.'#9'F')
      IniAttributes.FileName = 'delphi32.ini'
      IniAttributes.SectionName = 'FGeraManifestoGrid2'
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DS_INF
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial Narrow'
      Font.Style = []
      KeyOptions = []
      Options = [dgAlwaysShowEditor, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgWordWrap]
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 0
      TitleAlignment = taCenter
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clNavy
      TitleFont.Height = -11
      TitleFont.Name = 'Arial Narrow'
      TitleFont.Style = [fsBold]
      TitleLines = 1
      TitleButtons = False
      object DBG_RAATIButton: TwwIButton
        Left = 0
        Top = 0
        Width = 13
        Height = 22
        AllowAllUp = True
      end
    end
    object Grid3: TwwDBGrid
      Left = 463
      Top = 101
      Width = 152
      Height = 46
      Hint = 'Visualização dos Registros'
      Selected.Strings = (
        'QTDE_ESTQ'#9'26'#9'Estoque Físico'#9'F')
      IniAttributes.FileName = 'delphi32.ini'
      IniAttributes.SectionName = 'FGeraManifestoGrid3'
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      ShowVertScrollBar = False
      DataSource = DS_ESTQ
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial Narrow'
      Font.Style = []
      KeyOptions = []
      Options = [dgAlwaysShowEditor, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgWordWrap]
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 1
      TitleAlignment = taCenter
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clNavy
      TitleFont.Height = -11
      TitleFont.Name = 'Arial Narrow'
      TitleFont.Style = [fsBold]
      TitleLines = 1
      TitleButtons = False
      object wwIButton1: TwwIButton
        Left = 0
        Top = 0
        Width = 13
        Height = 22
        AllowAllUp = True
      end
    end
    object Panel16: TPanel
      Left = 481
      Top = 273
      Width = 141
      Height = 65
      BevelInner = bvLowered
      Color = clLime
      TabOrder = 2
      object Label30: TLabel
        Left = 13
        Top = 9
        Width = 115
        Height = 16
        Caption = 'D I S P O N Í V E L'
        Color = clLime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label31: TLabel
        Left = 70
        Top = 35
        Width = 56
        Height = 16
        Alignment = taRightJustify
        Caption = 'Qtde. UV'
        Color = clLime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
    end
  end
  object DS_MANI: TwwDataSource
    DataSet = Q_MANI
    Left = 149
    Top = 123
  end
  object Q_MANI: TwwQuery
    CachedUpdates = True
    AfterPost = Q_MANIAfterPost
    OnNewRecord = Q_MANINewRecord
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    RequestLive = True
    SQL.Strings = (
      
        'Select b.NFI_DEST_ENDERECO, A.*,B.NFI_DEST_RAZA,C.MUN_NOME,D.REG' +
        '_NOME,E.CLIN_RAZA'
      ' from ManifestoGera A,NF B,MUNICIPIO C,Regiao D,ClienteNBF E'
      'where '
      '    A.NFI_CODI = B.NFI_CODI and'
      '    A.MUN_ID = C.MUN_ID and '
      '    A.REG_ID = D.REG_ID and '
      '    B.NFI_EMIT_CLI = E.CLIN_ID'
      'AND a.NFI_CODI NOT IN '
      '('
      #9'SELECT NFI_CODI FROM PRE_CARGA '
      ')'
      'order by A.CEP ')
    UpdateObject = UPD_MANI
    ControlType.Strings = (
      'MARCADOR;CheckBox;SIM;')
    ValidateWithMask = True
    Left = 125
    Top = 91
    object Q_MANIMARCADOR: TStringField
      Alignment = taCenter
      DisplayLabel = '*'
      DisplayWidth = 3
      FieldName = 'MARCADOR'
      Origin = 'NBFDADOS.ManifestoGera.MARCADOR'
      OnChange = Q_MANIMARCADORChange
      FixedChar = True
      Size = 3
    end
    object Q_MANIMANI_ORDEM: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Ord'
      DisplayWidth = 3
      FieldName = 'MANI_ORDEM'
      Origin = 'NBFDADOS.ManifestoGera.MANI_ORDEM'
    end
    object Q_MANINFI_NUMERO: TStringField
      DisplayLabel = 'NF'
      DisplayWidth = 10
      FieldName = 'NFI_NUMERO'
      Origin = 'NBFDADOS.ManifestoGera.NFI_NUMERO'
      ReadOnly = True
      FixedChar = True
      Size = 10
    end
    object Q_MANICEP: TStringField
      DisplayWidth = 8
      FieldName = 'CEP'
      Origin = 'NBFDADOS.ManifestoGera.CEP'
      ReadOnly = True
      FixedChar = True
      Size = 8
    end
    object Q_MANIBAIRRO: TStringField
      DisplayLabel = 'Bairro'
      DisplayWidth = 16
      FieldName = 'BAIRRO'
      Origin = 'NBFDADOS.ManifestoGera.BAIRRO'
      ReadOnly = True
      FixedChar = True
      Size = 40
    end
    object Q_MANIMUN_NOME: TStringField
      DisplayLabel = 'Município'
      DisplayWidth = 15
      FieldName = 'MUN_NOME'
      Origin = 'NBFDADOS.MUNICIPIO.MUN_NOME'
      ReadOnly = True
      FixedChar = True
      Size = 40
    end
    object Q_MANIREG_NOME: TStringField
      DisplayLabel = 'Região'
      DisplayWidth = 15
      FieldName = 'REG_NOME'
      Origin = 'NBFDADOS.Regiao.REG_NOME'
      ReadOnly = True
      FixedChar = True
      Size = 40
    end
    object Q_MANINFI_DEST_RAZA: TStringField
      DisplayLabel = 'Destinatário'
      DisplayWidth = 32
      FieldName = 'NFI_DEST_RAZA'
      Origin = 'NBFDADOS.NF.NFI_DEST_RAZA'
      ReadOnly = True
      FixedChar = True
      Size = 50
    end
    object Q_MANINFI_DTENTREGA: TDateTimeField
      DisplayLabel = 'Entrega'
      DisplayWidth = 9
      FieldName = 'NFI_DTENTREGA'
      Origin = 'NBFDADOS.ManifestoGera.NFI_DTENTREGA'
      ReadOnly = True
    end
    object Q_MANIPESO: TFloatField
      DisplayLabel = 'Peso '
      DisplayWidth = 9
      FieldName = 'PESO'
      Origin = 'NBFDADOS.ManifestoGera.PESO'
      ReadOnly = True
      DisplayFormat = '###,###,##0.000'
      EditFormat = '###,###,##0.000'
    end
    object Q_MANIVOLUME: TFloatField
      DisplayLabel = 'Volume'
      DisplayWidth = 10
      FieldName = 'VOLUME'
      Origin = 'NBFDADOS.ManifestoGera.VOLUME'
      ReadOnly = True
      DisplayFormat = '###,###,##0.000000'
      EditFormat = '###,###,##0.000000'
    end
    object Q_MANINFI_DEST_ENDERECO: TStringField
      DisplayLabel = 'Endereço Entrega NF'
      DisplayWidth = 50
      FieldName = 'NFI_DEST_ENDERECO'
      FixedChar = True
      Size = 50
    end
    object Q_MANICLIN_RAZA: TStringField
      DisplayLabel = 'Emitente'
      DisplayWidth = 32
      FieldName = 'CLIN_RAZA'
      Origin = 'NBFDADOS.ClienteNBF.CLIN_RAZA'
      ReadOnly = True
      FixedChar = True
      Size = 50
    end
    object Q_MANINFI_DEST_CLI: TIntegerField
      DisplayLabel = 'Destinatário'
      DisplayWidth = 30
      FieldName = 'NFI_DEST_CLI'
      Origin = 'NBFDADOS.ManifestoGera.NFI_DEST_CLI'
      ReadOnly = True
      Visible = False
    end
    object Q_MANINFI_CODI: TIntegerField
      FieldName = 'NFI_CODI'
      Origin = 'NBFDADOS.ManifestoGera.NFI_CODI'
      ReadOnly = True
      Visible = False
    end
    object Q_MANIMUN_ID: TIntegerField
      FieldName = 'MUN_ID'
      Origin = 'NBFDADOS.ManifestoGera.MUN_ID'
      ReadOnly = True
      Visible = False
    end
    object Q_MANIREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'NBFDADOS.ManifestoGera.REG_ID'
      ReadOnly = True
      Visible = False
    end
    object Q_MANIQTDE: TFloatField
      FieldName = 'QTDE'
      Origin = 'NBFDADOS.ManifestoGera.QTDE'
      Visible = False
    end
    object Q_MANINFI_TRANS: TStringField
      FieldName = 'NFI_TRANS'
      Origin = 'NBFDADOS.ManifestoGera.NFI_TRANS'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Q_MANIGERA_ID: TAutoIncField
      FieldName = 'GERA_ID'
      Origin = 'NBFDADOS.ManifestoGera.MARCADOR'
      Visible = False
    end
    object Q_MANISEMESTOQ: TStringField
      FieldName = 'SEMESTOQ'
      Origin = 'NBFDADOS.ManifestoGera.SEMESTOQ'
      Visible = False
      FixedChar = True
      Size = 1
    end
  end
  object Q_AUX: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    ValidateWithMask = True
    Left = 232
    Top = 413
  end
  object UPD_MANI: TUpdateSQL
    ModifySQL.Strings = (
      'update ManifestoGera'
      'set'
      '  MARCADOR = :MARCADOR,'
      '  NFI_CODI = :NFI_CODI,'
      '  NFI_NUMERO = :NFI_NUMERO,'
      '  NFI_DEST_CLI = :NFI_DEST_CLI,'
      '  NFI_DTENTREGA = :NFI_DTENTREGA,'
      '  MUN_ID = :MUN_ID,'
      '  CEP = :CEP,'
      '  BAIRRO = :BAIRRO,'
      '  REG_ID = :REG_ID,'
      '  PESO = :PESO,'
      '  VOLUME = :VOLUME,'
      '  QTDE = :QTDE,'
      '  MANI_ORDEM = :MANI_ORDEM,'
      '  NFI_TRANS = :NFI_TRANS'
      'where'
      '  GERA_ID = :OLD_GERA_ID')
    InsertSQL.Strings = (
      'insert into ManifestoGera'
      
        '  (MARCADOR, NFI_CODI, NFI_NUMERO, NFI_DEST_CLI, NFI_DTENTREGA, ' +
        'MUN_ID, '
      
        '   CEP, BAIRRO, REG_ID, PESO, VOLUME, QTDE, MANI_ORDEM, NFI_TRAN' +
        'S)'
      'values'
      
        '  (:MARCADOR, :NFI_CODI, :NFI_NUMERO, :NFI_DEST_CLI, :NFI_DTENTR' +
        'EGA, :MUN_ID, '
      
        '   :CEP, :BAIRRO, :REG_ID, :PESO, :VOLUME, :QTDE, :MANI_ORDEM, :' +
        'NFI_TRANS)')
    DeleteSQL.Strings = (
      'delete from ManifestoGera'
      'where'
      '  GERA_ID = :OLD_GERA_ID')
    Left = 472
    Top = 171
  end
  object Q_MANIPROD: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      '')
    ValidateWithMask = True
    Left = 536
    Top = 184
  end
  object Q_AUX1: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    ValidateWithMask = True
    Left = 280
    Top = 397
  end
  object Q_PROD: TwwQuery
    AutoCalcFields = False
    CachedUpdates = True
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    RequestLive = True
    SQL.Strings = (
      'select PRO_ID,PRO_COD,PRO_DESC  from PRODUTO')
    ValidateWithMask = True
    Left = 412
    Top = 144
    object Q_PRODPRO_COD: TStringField
      FieldName = 'PRO_COD'
      Origin = 'NBFDADOS.PRODUTO.PRO_COD'
      FixedChar = True
      Size = 16
    end
    object Q_PRODPRO_DESC: TStringField
      FieldName = 'PRO_DESC'
      Origin = 'NBFDADOS.PRODUTO.PRO_DESC'
      FixedChar = True
      Size = 40
    end
    object Q_PRODPRO_ID: TAutoIncField
      FieldName = 'PRO_ID'
      Origin = 'NBFDADOS.PRODUTO.PRO_ID'
    end
  end
  object Q_INF: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    DataSource = DS_MANI
    SQL.Strings = (
      
        'Select  NFI_CODI,PRO_COD,PRO_DESC,INF_QTDE,PRO_ID from NF_ITENS ' +
        'where'
      'NFI_CODI = :NFI_CODI')
    ValidateWithMask = True
    Left = 216
    Top = 128
    ParamData = <
      item
        DataType = ftInteger
        Name = 'NFI_CODI'
        ParamType = ptUnknown
      end>
    object Q_INFPRO_COD: TStringField
      DisplayLabel = 'Cód. Produto'
      DisplayWidth = 16
      FieldName = 'PRO_COD'
      Origin = 'NBFDADOS.NF_ITENS.PRO_COD'
      FixedChar = True
      Size = 16
    end
    object Q_INFPRO_DESC: TStringField
      DisplayLabel = 'Descrição'
      DisplayWidth = 43
      FieldName = 'PRO_DESC'
      Origin = 'NBFDADOS.NF_ITENS.PRO_DESC'
      FixedChar = True
      Size = 40
    end
    object Q_INFINF_QTDE: TFloatField
      DisplayLabel = 'Qtde.'
      DisplayWidth = 20
      FieldName = 'INF_QTDE'
      Origin = 'NBFDADOS.NF_ITENS.INF_QTDE'
      DisplayFormat = '0.000'
      EditFormat = '0.000'
    end
    object Q_INFNFI_CODI: TIntegerField
      FieldName = 'NFI_CODI'
      Origin = 'NBFDADOS.NF_ITENS.NFI_CODI'
      Visible = False
    end
    object Q_INFPRO_ID: TIntegerField
      FieldName = 'PRO_ID'
      Origin = 'NBFDADOS.NF_ITENS.PRO_ID'
      Visible = False
    end
  end
  object DS_INF: TwwDataSource
    DataSet = Q_INF
    Left = 233
    Top = 208
  end
  object Q_ESTQ: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    DataSource = DS_INF
    SQL.Strings = (
      'Select  A.PRO_ID,SUM(A.ESTq_QTDE) as '
      'QTDE_ESTQ from ESTOQUE A'
      '           where A.PRO_ID = :PRO_ID  '
      'and  A.ESTQ_DT_ENTRADA IS NOT NULL'
      'and A.ESTQ_DT_ENTRADA <> '#39#39' '
      'and A.ESTQ_QTDE_RETIRA = 0    '
      'and A.AR_ID in'
      '(Select AR_ID from AREA '
      ' where  AR_DISPONIVEL = '#39'S'#39') '
      'group by A.PRO_ID')
    ValidateWithMask = True
    Left = 304
    Top = 120
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PRO_ID'
        ParamType = ptUnknown
      end>
    object Q_ESTQQTDE_ESTQ: TFloatField
      DisplayLabel = 'Estoque Físico'
      DisplayWidth = 26
      FieldName = 'QTDE_ESTQ'
      DisplayFormat = '0.000'
      EditFormat = '0.000'
    end
    object Q_ESTQPRO_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'PRO_ID'
      Visible = False
    end
  end
  object DS_ESTQ: TwwDataSource
    DataSet = Q_ESTQ
    OnDataChange = DS_ESTQDataChange
    Left = 304
    Top = 168
  end
  object Q_AUX2: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    ValidateWithMask = True
    Left = 248
    Top = 349
  end
  object Q_AUX3: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    ValidateWithMask = True
    Left = 432
    Top = 437
  end
  object Q_AUX4: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    ValidateWithMask = True
    Left = 491
    Top = 413
  end
  object Q_ESTQ2: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    DataSource = FFGeraManifesto.DS_PAR
    SQL.Strings = (
      'Select  A.PRO_ID,SUM(A.ESTq_QTDE) as '
      'QTDE_ESTQ from ESTOQUE A          '
      'where  A.ESTQ_DT_ENTRADA IS NOT NULL'
      'and A.ESTQ_DT_ENTRADA <> '#39#39' '
      'and A.ESTQ_QTDE_RETIRA = 0     '
      'and A.AR_ID in(Select AR_ID from AREA where PAR_ID = :PAR_ID'
      '                  and AR_DISPONIVEL = '#39'S'#39')     '
      'group by A.PRO_ID')
    ValidateWithMask = True
    Left = 304
    Top = 216
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'PAR_ID'
        ParamType = ptUnknown
      end>
    object Q_ESTQ2PRO_ID: TIntegerField
      FieldName = 'PRO_ID'
    end
    object Q_ESTQ2QTDE_ESTQ: TFloatField
      FieldName = 'QTDE_ESTQ'
      DisplayFormat = '0.000'
      EditFormat = '0.000'
    end
  end
  object STP_MANIFNF: TwwStoredProc
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    StoredProcName = 'dbo.STP_MANIFESTO_NF'
    ValidateWithMask = True
    Left = 406
    Top = 247
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Result'
        ParamType = ptResult
      end
      item
        DataType = ftFloat
        Name = '@PESO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = '@VOLUME'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@EMP'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@TRANSP'
        ParamType = ptInput
      end>
  end
  object STP_MANIFPROD: TwwStoredProc
    ObjectView = True
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    StoredProcName = 'dbo.STP_MANIFESTO_PRODUTO'
    ValidateWithMask = True
    Left = 494
    Top = 263
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Result'
        ParamType = ptResult
        Value = 0
      end
      item
        DataType = ftUnknown
        Name = '@NFI_TRANS'
        ParamType = ptInput
      end>
  end
  object Q_AUX5: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    ValidateWithMask = True
    Left = 539
    Top = 381
  end
  object Q_MANIFESTOS: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    DataSource = DS_INF
    SQL.Strings = (
      ' Select   SUM(A.MRP_QTDE)  as TOT,A.PRO_ID from'
      ' MANIFESTO_RESUMOPRODUTO A,MANIFESTO B,NF C,OS D '
      ' where    A.MANI_ID = B.MANI_ID '
      ' and      A.MANI_ID = C.MANI_ID  '
      ' and      C.OS_ID = D.OS_ID   and'
      ' B.MANI_ID not in'
      ' (Select MANI_ID from ESTOQUE'
      ' where    B.MANI_ID = MANI_ID) '
      ' and A.PRO_Id = :PRO_ID'
      ' and D.TOS_Id <> 5'
      ' and C.NFI_CLONE <> '#39'S'#39
      ' group by A.PRO_ID ')
    ValidateWithMask = True
    Left = 459
    Top = 357
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PRO_ID'
        ParamType = ptUnknown
      end>
    object Q_MANIFESTOSTOT: TFloatField
      FieldName = 'TOT'
    end
    object Q_MANIFESTOSPRO_ID: TIntegerField
      FieldName = 'PRO_ID'
    end
  end
  object Q_AUX6: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    ValidateWithMask = True
    Left = 395
    Top = 390
  end
  object QR_STP_MANIFESTO_PRODUTO: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'EXEC STP_MANIFESTO_PRODUTO :TRANS, :CH')
    ValidateWithMask = True
    Left = 275
    Top = 286
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'TRANS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CH'
        ParamType = ptUnknown
      end>
  end
  object qrSTP_MANIFNF: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    ValidateWithMask = True
    Left = 144
    Top = 173
  end
  object STP_MANIFESTO: TwwStoredProc
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    StoredProcName = 'dbo.STP_MANIFESTO_NF'
    ValidateWithMask = True
    Left = 338
    Top = 468
    ParamData = <
      item
        DataType = ftFloat
        Name = '@PESO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = '@VOLUME'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@EMP'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@TRANSP'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@CH'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@MANI_NOVO'
        ParamType = ptOutput
      end>
  end
  object qrPrecargaHeader: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CH'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT TOP 1 * FROM PRE_CARGA_HEADER'
      'WHERE CH = :CH'
      'AND STATUS = '#39'A'#39
      'ORDER BY CARGA_ID DESC')
    Left = 58
    Top = 300
    object qrPrecargaHeaderCARGA_ID: TAutoIncField
      FieldName = 'CARGA_ID'
      ReadOnly = True
    end
    object qrPrecargaHeaderDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object qrPrecargaHeaderDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object qrPrecargaHeaderCH: TIntegerField
      FieldName = 'CH'
    end
    object qrPrecargaHeaderSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object qrPrecargaHeaderTRANSPORTADOR_NBF: TIntegerField
      FieldName = 'TRANSPORTADOR_NBF'
    end
    object qrPrecargaHeaderGERA_PARAMETRO: TIntegerField
      FieldName = 'GERA_PARAMETRO'
    end
  end
  object qrAux: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    Left = 176
    Top = 256
  end
  object STP_PRE_CARGA: TADOStoredProc
    Connection = FMenu.ADOConnection
    ProcedureName = 'GERA_PRECARGA;1'
    Parameters = <
      item
        Name = '@CH'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@CARGA_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 56
    Top = 360
  end
  object qrGeral: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <
      item
        Name = 'CH'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'NFI_CODI'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT '
      
        'A.PRO_ID, P.PRO_DESC, A.PROD_TOTAL, dbo.fnConsultaEstoque(A.PRO_' +
        'ID) AS ESTOQUE, A.NFI_CODI'#9
      'FROM MANIFESTOGERA_PROD A INNER JOIN PRODUTO P '
      
        'ON A.PRO_ID = P.PRO_ID LEFT OUTER JOIN NF NF ON A.NFI_CODI = NF.' +
        'NFI_CODI'
      'WHERE CH = :CH'
      'AND A.NFI_CODI = :NFI_CODI'
      'AND A.PROD_TOTAL > dbo.fnConsultaEstoque(A.PRO_ID)'
      
        'AND (NF.NFI_CLONE IS NULL OR NF.NFI_CLONE = '#39#39' OR NF.NFI_CLONE =' +
        ' '#39'N'#39')')
    Left = 40
    Top = 200
    object qrGeralPRO_ID: TIntegerField
      FieldName = 'PRO_ID'
    end
    object qrGeralPRO_DESC: TStringField
      FieldName = 'PRO_DESC'
      Size = 40
    end
    object qrGeralPROD_TOTAL: TFloatField
      FieldName = 'PROD_TOTAL'
    end
    object qrGeralESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
      ReadOnly = True
    end
    object qrGeralNFI_CODI: TIntegerField
      FieldName = 'NFI_CODI'
    end
  end
  object STP_GERA_ROMANEIO: TADOStoredProc
    Connection = FMenu.ADOConnection
    ProcedureName = 'STP_ROMANEIO_SAIDA_GERAL;1'
    Parameters = <
      item
        Name = '@MANID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@EMP'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@CH'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 50
    Top = 124
  end
  object STP_COPY_ESTOQUE: TADOStoredProc
    Connection = FMenu.ADOConnection
    ProcedureName = 'COPY_ESTOQUE;1'
    Parameters = <
      item
        Name = '@MANI_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 34
    Top = 60
  end
  object STP_DELETAMANIFESTO: TADOStoredProc
    Connection = FMenu.ADOConnection
    ProcedureName = 'STP_DELETAMANIFESTO;1'
    Parameters = <
      item
        Name = '@MANI_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 96
    Top = 240
  end
  object STP_MANIFESTO2: TADOStoredProc
    Connection = FMenu.ADOConnection
    ProcedureName = 'STP_MANIFESTO_NF_GERAL;1'
    Parameters = <
      item
        Name = '@PESO'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@VOLUME'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@EMP'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@TRANSP'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = Null
      end
      item
        Name = '@CH'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@MANI_NOVO'
        Attributes = [paNullable]
        DataType = ftInteger
        Direction = pdInputOutput
        Precision = 10
        Value = Null
      end>
    Left = 90
    Top = 28
  end
  object qrCopiaEstoque: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <
      item
        Name = 'mani_id'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'INSERT INTO [ESTOQUE_GERAL]'
      '           ([ESTQ_ID],'
      '            [AR_ID]'
      '           ,[POS_ID]'
      '           ,[OS_ID_ORIG]'
      '           ,[PRO_ID]'
      '           ,[ESTQ_QTDE]'
      '           ,[ESTQ_QTDE_RETIRA]'
      '           ,[MANI_ID]'
      '           ,[ESTQ_PESO]'
      '           ,[OS_ID_DEST]'
      '           ,[ESTQ_DT_ENTRADA]'
      '           ,[ESTQ_DT_SAIDA]'
      '           ,[ROM_ID_ENT]'
      '           ,[ROM_ID_SAIDA]'
      '           ,[ROM_DTBATCH]'
      '           ,[ROM_DTVENCTO]'
      '           ,[ESTQ_LOTE]'
      '           ,[UVEN_ID]'
      '           ,[ESTQ_TAG]'
      '           ,[AR_ID_ANTERIOR]'
      '           ,[POS_ID_ANTERIOR]'
      '           ,[ESTQ_DT_ULMOV]'
      '           ,[PAR_ID]'
      '           ,[GEROU_OPER_ROMSAIDA]'
      '           ,[MARCADOR]'
      '           ,[ESTQ_ESCOLHEULOTE], [QTDE_GERAL])'
      'SELECT ESTQ_ID,'
      '       [AR_ID]'
      '      ,[POS_ID]'
      '      ,[OS_ID_ORIG]'
      '      ,[PRO_ID]'
      '      ,[ESTQ_QTDE]'
      '      ,[ESTQ_QTDE_RETIRA]'
      '      ,[MANI_ID]'
      '      ,[ESTQ_PESO]'
      '      ,[OS_ID_DEST]'
      '      ,[ESTQ_DT_ENTRADA]'
      '      ,[ESTQ_DT_SAIDA]'
      '      ,[ROM_ID_ENT]'
      '      ,[ROM_ID_SAIDA]'
      '      ,[ROM_DTBATCH]'
      '      ,[ROM_DTVENCTO]'
      '      ,[ESTQ_LOTE]'
      '      ,[UVEN_ID]'
      '      ,[ESTQ_TAG]'
      '      ,[AR_ID_ANTERIOR]'
      '      ,[POS_ID_ANTERIOR]'
      '      ,[ESTQ_DT_ULMOV]'
      '      ,[PAR_ID]'
      '      ,[GEROU_OPER_ROMSAIDA]'
      '      ,[MARCADOR]'
      '      ,[ESTQ_ESCOLHEULOTE], [QTDE_GERAL]'
      '  FROM [ESTOQUE]'
      '  WHERE MANI_ID = :mani_id')
    Left = 146
    Top = 308
  end
  object qrEstoqueGEral: TADOQuery
    Connection = FMenu.ADOConnection
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
      'SELECT ESTQ_ID, QTDE_GERAL FROM ESTOQUE_GERAL'
      'WHERE MANI_ID = :MANI_ID')
    Left = 610
    Top = 460
    object qrEstoqueGEralESTQ_ID: TIntegerField
      FieldName = 'ESTQ_ID'
    end
    object qrEstoqueGEralQTDE_GERAL: TFloatField
      FieldName = 'QTDE_GERAL'
    end
  end
  object qrDEvolveEstoque: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <
      item
        Name = 'ESTQ_QTDE_RETIRA'
        Attributes = [paSigned, paNullable]
        DataType = ftFloat
        NumericScale = 255
        Precision = 15
        Size = 8
        Value = Null
      end
      item
        Name = 'AR_ID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'POS_ID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'ESTQ_ID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'UPDATE ESTOQUE SET ESTQ_QTDE_RETIRA = :ESTQ_QTDE_RETIRA, MANI_ID' +
        ' = NULL,'
      'AR_ID = :AR_ID, POS_ID = :POS_ID'
      'WHERE ESTQ_ID = :ESTQ_ID')
    Left = 186
    Top = 52
  end
  object qrAreaOper: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <
      item
        Name = 'par_id'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'select POS_ID, AR_ID FROM AREA_POSICOES WHERE AR_ID = (SELECT AR' +
        '_ID_OPER FROM PARAMETRO WHERE PAR_ID = :par_id) '
      '')
    Left = 610
    Top = 316
    object qrAreaOperPOS_ID: TAutoIncField
      FieldName = 'POS_ID'
      ReadOnly = True
    end
    object qrAreaOperAR_ID: TIntegerField
      FieldName = 'AR_ID'
    end
  end
end
