object FFConsEstoque: TFFConsEstoque
  Left = 214
  Top = 135
  Width = 802
  Height = 528
  BorderIcons = []
  Caption = 'Consulta de Estoque'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 65
    Top = 177
    Width = 64
    Height = 15
    Caption = 'Cliente NBF'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 786
    Height = 490
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 0
    object GroupBox6: TGroupBox
      Left = 10
      Top = 10
      Width = 767
      Height = 471
      Caption = 'Sele��o de Filtros'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Label4: TLabel
        Left = 48
        Top = 243
        Width = 109
        Height = 15
        Caption = 'Nota Fiscal Entrada'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object Label5: TLabel
        Left = 124
        Top = 187
        Width = 33
        Height = 15
        Caption = 'Batch'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 241
        Top = 187
        Width = 18
        Height = 15
        Caption = 'at�'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 241
        Top = 156
        Width = 18
        Height = 15
        Caption = 'at�'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 60
        Top = 156
        Width = 96
        Height = 15
        Caption = 'Data Vencimento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 112
        Top = 91
        Width = 45
        Height = 15
        Caption = 'Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label20: TLabel
        Left = 93
        Top = 59
        Width = 64
        Height = 15
        Caption = 'Cliente NBF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label14: TLabel
        Left = 130
        Top = 25
        Width = 27
        Height = 15
        Caption = '�rea'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText3: TDBText
        Left = 315
        Top = 90
        Width = 423
        Height = 17
        DataField = 'PRO_DESC'
        DataSource = DS_PROD
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object Label8: TLabel
        Left = 68
        Top = 123
        Width = 89
        Height = 15
        Caption = 'Tipo de Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 132
        Top = 215
        Width = 25
        Height = 15
        Caption = 'Lote'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object SBT_VISU: TSpeedButton
        Left = 161
        Top = 412
        Width = 199
        Height = 35
        Hint = 'Visualiza Estoque'
        Caption = '&Visualizar Estoque'
        Glyph.Data = {
          76060000424D7606000000000000360400002800000018000000180000000100
          08000000000040020000E30E0000E30E00000001000000010000212121000018
          290029292900393939005A39390042424200181852005252520073635200315A
          5A005A5A5A0094735A000039630063636300736B63004A6B6B006B6B6B007B73
          6B00735A73007373730073737B007B7B7B0094847B00A5847B00BD9C7B006384
          84008C8C8C009C948C00AD948C0094949400A59C940084849C009C9C9C00B5AD
          9C00CEBD9C00849CA500A5A5A5009494AD00ADADAD00D6BDAD00FFE7AD00B59C
          B500E7CEB500BDBDBD00D6C6BD009CADC600ADC6C600C6C6C600EFD6C600C6C6
          CE00CECECE00FFDECE00D6D6D600F7E7D600DEDEDE00EFE7DE00D6DEE700DEE7
          E700E7E7E700EFE7E700F7EFE700DEE7EF00EFEFEF00F7F7F700FFF7F700FFFF
          F700FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00424242424242
          4242424242424242424242424242424242424242424242424242424242424242
          4242424242424242424242424242424242424242424242424224000A42424242
          42424242424242424242424242424242240210101A4242424242424242424242
          424242424242422002152B241A4242424242424242424242424242424242420A
          0A2B2B1A42424242424242424242424242420D1A1A4242030A1D1A4242424242
          42424242424242424202110B080300241A2042424242424242424242201F1F20
          07223335271B0705201F1F1F241F1F2B42424242010101020E241B1B1B201B03
          010101010101010142424242090A1E07222B1C17182C2A0D060109141A1E0A04
          424242420919370A2A2C2C2C2C2C2A1613201D262F37191242424242091F4313
          22283C3E412A2A152636434343432509424242421F09432B1B28333C352A211A
          4343413F43430F1F4242424223094340241D2A302A211A3E3F3E3E3E40430929
          42424242230C433F3E2F24202020243F3E3E3E3E3E430929424242422E06413E
          3A3A3A3A3E24243E3A3A3A3A3E410629424242422E063F3A3636363A3A24243A
          3A3636363A3F0629424242422E0C2D322F2F2F2F322020322F2F2F2F322F0C2B
          42424242422E24242B2B2B2B2B20202B2B2B2B2B24242B424242424242424242
          2B242424242020242424242B4242424242424242424242424242424242424242
          4242424242424242424242424242424242424242424242424242424242424242
          4242424242424242424242424242424242424242424242424242}
        ParentShowHint = False
        ShowHint = True
        OnClick = SBT_VISUClick
      end
      object SpeedButton1: TSpeedButton
        Left = 712
        Top = 16
        Width = 41
        Height = 41
        Hint = 'Sair'
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9A66666933
          34FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9A66669A6666
          A36666A76666693334FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9A66669A6666A0
          6666B06667C66667CC6667B36667693334FF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9A66669A66
          66AF6869C0696ACF696ACE6869CD6768CD6768B36667693334AE66669A66669A
          66669A66669A66669A66669A66669A66669A6666FF00FFFF00FFFF00FFFF00FF
          FF00FF9A6666D26F70D56F70D46E6FD36D6ED26C6DD16B6CD06A6BB467686933
          34FEA2A3FDA8A9FCAFB0FBB6B7FABCBDF9C2C2F9C5C6F9C5C69A6666FF00FFFF
          00FFFF00FFFF00FFFF00FF9A6666D97374D87273D77172D67071D56F70D46E6F
          D36D6EB6696A69333459B26733CB6733CB6733CB6733CB6733CB6733CB67F9C5
          C69A6666FF00FFFF00FFFF00FFFF00FFFF00FF9A6666DC7677DB7576DA7475D9
          7374D87273D77172D67071B86B6B69333459B26733CB6733CB6733CB6733CB67
          33CB6733CB67F9C5C69A6666FF00FFFF00FFFF00FFFF00FFFF00FF9A6666DF79
          7ADF797ADE7879DD7778DC7677DB7576DA7475B96C6D69333459B26733CB6733
          CB6733CB6733CB6733CB6733CB67F9C5C69A6666FF00FFFF00FFFF00FFFF00FF
          FF00FF9A6666E37D7EE27C7DE17B7CE07A7BDF797ADE7879DD7778BB6E6F6933
          3459B26733CB6733CB6733CB6733CB6733CB6733CB67F9C5C69A6666FF00FFFF
          00FFFF00FFFF00FFFF00FF9A6666E68081E57F80E47E7FE37D7EE27C7DE17B7C
          E07A7BBD707069333459B26733CB6733CB6733CB6733CB6733CB6733CB67F9C5
          C69A6666FF00FFFF00FFFF00FFFF00FFFF00FF9A6666E98384E88283E78182E6
          8081E78788ECA6A7E47E7FBE717269333473B87633CB6733CB6733CB6733CB67
          33CB6733CB67F9C5C69A6666FF00FFFF00FFFF00FFFF00FFFF00FF9A6666ED87
          88EC8687EB8586EA8485F2B9BAFFFFFFF0B0B0C07374693334F2D9C0C7F0BC79
          DD9079DD9060D68160D68160D681F9C5C69A6666FF00FFFF00FFFF00FFFF00FF
          FF00FF9A6666F08A8BEF898AEE8889ED8788F5BBBCFFFFFFF0AAABC275756933
          34F2D9C0FFFFDDFFFFDDFFFFDDFFFFDDE2F8CCE2F8CCF9C5C69A6666FF00FFFF
          00FFFF00FFFF00FFFF00FF9A6666F38D8EF28C8DF18B8CF08A8BEF898AF3A6A7
          ED8788C37677693334F2D9C0FFFFDDFFFFDDFFFFDDFFFFDDFFFFDDFFFFDDF9C5
          C69A6666FF00FFFF00FFFF00FFFF00FFFF00FF9A6666F69091F69091F58F90F4
          8E8FF38D8EF28C8DF18B8CC57878693334F2D9C0FFFFDDFFFFDDFFFFDDFFFFDD
          FFFFDDFFFFDDF9C5C69A6666FF00FFFF00FFFF00FFFF00FFFF00FF9A6666FA94
          95F99394F89293F79192F69091F58F90F48E8FC77A7A693334F2D9C0FFFFDDFF
          FFDDFFFFDDFFFFDDFFFFDDFFFFDDF9C5C69A6666FF00FFFF00FFFF00FFFF00FF
          FF00FF9A6666FD9798FC9697FB9596FA9495F99394F89293F79192C87B7C6933
          34F2D9C0FFFFDDFFFFDDFFFFDDFFFFDDFFFFDDFFFFDDF9C5C69A6666FF00FFFF
          00FFFF00FFFF00FFFF00FF9A6666FF999AFF999AFE9899FD9798FD9798FC9697
          FB9596CA7D7D693334F2D9C0FFFFDDFFFFDDFFFFDDFFFFDDFFFFDDFFFFDDF9C5
          C69A6666FF00FFFF00FFFF00FFFF00FFFF00FF9A6666FF999AFF999AFF999AFF
          999AFF999AFE9899FE9899CC7F7F693334F2D9C0FFFFDDFFFFDDFFFFDDFFFFDD
          FFFFDDFFFFDDF9C5C69A6666FF00FFFF00FFFF00FFFF00FFFF00FF9A6666F996
          97FF999AFF999AFF999AFF999AFF999AFF999ACD8080693334F2D9C0FFFFDDFF
          FFDDFFFFDDFFFFDDFFFFDDFFFFDDF9C5C69A6666FF00FFFF00FFFF00FFFF00FF
          FF00FF9A66669A6666C0797ADF898AFF999AFF999AFF999AFF999ACD80806933
          34F2D9C0FFFFDDFFFFDDFFFFDDFFFFDDFFFFDDFFFFDDF9C5C69A6666FF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FF9A66669A6666A76C6DC67C7DF29394
          FF999ACD8080693334A766669A66669A66669A66669A66669A66669A66669A66
          669A6666FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FF9A66669A6666AD7070B37373693334FF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9A6666693334FF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton1Click
      end
      object Edit1: TEdit
        Left = 160
        Top = 240
        Width = 121
        Height = 23
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
        Visible = False
        OnEnter = Edit1Enter
        OnExit = Edit1Exit
      end
      object MaskEdit1: TMaskEdit
        Left = 160
        Top = 183
        Width = 76
        Height = 22
        AutoSize = False
        BorderStyle = bsNone
        CharCase = ecUpperCase
        EditMask = '!99/99/9999;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 6
        Text = '  /  /    '
        OnEnter = MaskEdit1Enter
        OnExit = MaskEdit1Exit
      end
      object MaskEdit2: TMaskEdit
        Left = 265
        Top = 183
        Width = 76
        Height = 22
        BorderStyle = bsNone
        CharCase = ecUpperCase
        EditMask = '!99/99/9999;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 7
        Text = '  /  /    '
        OnEnter = MaskEdit2Enter
        OnExit = MaskEdit2Exit
      end
      object Data2: TMaskEdit
        Left = 265
        Top = 152
        Width = 76
        Height = 22
        BorderStyle = bsNone
        CharCase = ecUpperCase
        EditMask = '!99/99/9999;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 5
        Text = '  /  /    '
        OnEnter = Data2Enter
        OnExit = Data2Exit
      end
      object Data1: TMaskEdit
        Left = 160
        Top = 152
        Width = 76
        Height = 22
        AutoSize = False
        BorderStyle = bsNone
        CharCase = ecUpperCase
        EditMask = '!99/99/9999;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 4
        Text = '  /  /    '
        OnEnter = Data1Enter
        OnExit = Data1Exit
      end
      object wwDBLookupCombo1: TwwDBLookupCombo
        Left = 160
        Top = 88
        Width = 152
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
          'PRO_COD'#9'16'#9'C�digo'#9'F'
          'PRO_DESC'#9'40'#9'Descri��o'#9'F')
        LookupTable = Q_PROD
        LookupField = 'PRO_ID'
        DropDownCount = 15
        Enabled = False
        ParentFont = False
        TabOrder = 2
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = True
        OnCloseUp = wwDBLookupCombo1CloseUp
        OnEnter = wwDBLookupCombo1Enter
        OnExit = wwDBLookupCombo1Exit
      end
      object wwDBLookupCombo4: TwwDBLookupCombo
        Left = 160
        Top = 54
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
          'CLIN_RAZA'#9'50'#9'Raz�o Social'#9'F')
        LookupTable = Q_CLINBF
        LookupField = 'CLIN_ID'
        DropDownCount = 16
        ParentFont = False
        TabOrder = 1
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = True
        OnEnter = wwDBLookupCombo4Enter
        OnExit = wwDBLookupCombo4Exit
      end
      object wwDBLookupCombo3: TwwDBLookupCombo
        Left = 161
        Top = 20
        Width = 339
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
          'AR_NOME'#9'42'#9'Nome'#9'F')
        LookupTable = Q_AREA
        LookupField = 'AR_ID'
        DropDownCount = 15
        ParentFont = False
        TabOrder = 0
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = True
        OnEnter = wwDBLookupCombo3Enter
        OnExit = wwDBLookupCombo3Exit
      end
      object RadioGroup1: TRadioGroup
        Left = 159
        Top = 312
        Width = 322
        Height = 37
        Caption = ' Sele��o '
        Columns = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ItemIndex = 0
        Items.Strings = (
          'Sint�tico'
          'Anal�tico')
        ParentFont = False
        TabOrder = 10
      end
      object RadioGroup2: TRadioGroup
        Left = 159
        Top = 268
        Width = 322
        Height = 37
        Caption = 'Produto Descontinuado ?'
        Columns = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ItemIndex = 1
        Items.Strings = (
          'Sim'
          'N�o')
        ParentFont = False
        TabOrder = 11
      end
      object Panel12: TPanel
        Left = 314
        Top = 84
        Width = 424
        Height = 31
        BevelOuter = bvNone
        TabOrder = 12
        Visible = False
      end
      object wwDBLookupCombo2: TwwDBLookupCombo
        Left = 160
        Top = 120
        Width = 225
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
          'TPRO_NOME'#9'41'#9'Nome'#9'F')
        LookupTable = Q_TPROD
        LookupField = 'TPRO_ID'
        DropDownCount = 15
        Enabled = False
        ParentFont = False
        TabOrder = 3
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = True
        OnEnter = wwDBLookupCombo2Enter
        OnExit = wwDBLookupCombo2Exit
      end
      object wwDBEdit1: TwwDBEdit
        Left = 160
        Top = 211
        Width = 96
        Height = 23
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 8
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnEnter = wwDBEdit1Enter
        OnExit = wwDBEdit1Exit
      end
      object rgAvaria: TRadioGroup
        Left = 160
        Top = 360
        Width = 321
        Height = 37
        Caption = 'Produtos'
        Columns = 3
        ItemIndex = 0
        Items.Strings = (
          'Com Avaria'
          'Sem Avaria'
          'S� Avarias')
        TabOrder = 13
      end
    end
  end
  object Q_AREA: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'select AR_ID,AR_NOMe from AREA order by AR_NOME')
    ControlType.Strings = (
      'AR_CONTROL_POS;CustomEdit;wwDBComboBox1'
      'AR_EMPILHA_LIVRE;CustomEdit;wwDBComboBox2'
      'PAR_ID;CustomEdit;wwDBLookupCombo2')
    ValidateWithMask = True
    Left = 579
    Top = 72
    object Q_AREAAR_ID: TAutoIncField
      FieldName = 'AR_ID'
    end
    object Q_AREAAR_NOMe: TStringField
      FieldName = 'AR_NOMe'
      FixedChar = True
      Size = 40
    end
  end
  object Q_CLINBF: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    SQL.Strings = (
      'Select  CLIN_ID,CLIN_RAZA  from CLIENTENBF where'
      '(CLIN_CONTRATO <> '#39'I'#39' and CLIN_CONTRATO <> '#39'R'#39') '
      'order by CLIN_RAZA ')
    ValidateWithMask = True
    Left = 578
    Top = 120
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
  end
  object Q_PROD: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    DataSource = DS_CLINBF
    SQL.Strings = (
      'select PRO_ID,PRO_COD,PRO_DESC from PRODUTO where'
      'CLIN_ID = :CLIN_ID'
      'order by PRO_DESC'
      '')
    ValidateWithMask = True
    Left = 511
    Top = 152
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'CLIN_ID'
        ParamType = ptUnknown
      end>
    object Q_PRODPRO_COD: TStringField
      DisplayLabel = 'C�digo'
      DisplayWidth = 16
      FieldName = 'PRO_COD'
      Origin = 'NBFDADOS.PRODUTO.PRO_COD'
      FixedChar = True
      Size = 16
    end
    object Q_PRODPRO_DESC: TStringField
      DisplayLabel = 'Descri��o'
      DisplayWidth = 40
      FieldName = 'PRO_DESC'
      Origin = 'NBFDADOS.PRODUTO.PRO_DESC'
      FixedChar = True
      Size = 40
    end
    object Q_PRODPRO_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'PRO_ID'
      Origin = 'NBFDADOS.PRODUTO.PRO_ID'
      Visible = False
    end
  end
  object DS_CLINBF: TwwDataSource
    DataSet = Q_CLINBF
    OnDataChange = DS_CLINBFDataChange
    Left = 450
    Top = 114
  end
  object DS_PROD: TwwDataSource
    DataSet = Q_PROD
    OnDataChange = DS_CLINBFDataChange
    Left = 522
    Top = 74
  end
  object Q_TPROD: TwwQuery
    AutoCalcFields = False
    CachedUpdates = True
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    DataSource = DS_CLINBF
    RequestLive = True
    SQL.Strings = (
      'select * from TPPRODUTO_CLINBF  where'
      'CLIN_ID = :CLIN_ID'
      'order by TPRO_NOME')
    ValidateWithMask = True
    Left = 475
    Top = 194
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'CLIN_ID'
        ParamType = ptUnknown
      end>
    object Q_TPRODTPRO_NOME: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 41
      FieldName = 'TPRO_NOME'
      Origin = 'NBFDADOS.TPPRODUTO_CLINBF.TPRO_NOME'
      FixedChar = True
      Size = 40
    end
    object Q_TPRODTPRO_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'TPRO_ID'
      Origin = 'NBFDADOS.TPPRODUTO_CLINBF.TPRO_ID'
      Visible = False
    end
    object Q_TPRODCLIN_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'CLIN_ID'
      Origin = 'NBFDADOS.TPPRODUTO_CLINBF.CLIN_ID'
      Visible = False
    end
  end
end
