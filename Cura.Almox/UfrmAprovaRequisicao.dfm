object frmAprovaRequisicao: TfrmAprovaRequisicao
  Left = 206
  Top = 50
  Width = 1067
  Height = 644
  Caption = 'Requisição de Materiais'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 41
    Width = 1051
    Height = 161
    Selected.Strings = (
      'SOL_ID'#9'8'#9'Código'#9#9
      'DATA'#9'10'#9'Data'#9#9
      'DESCRICAO'#9'15'#9'Local'#9#9
      'CC_Desc'#9'40'#9'Centro de Custo'#9#9
      'USUARIO'#9'15'#9'Solicitado por'#9#9
      'TIPO'#9'15'#9'Tipo'#9#9
      'MOTIVO'#9'40'#9'Motivo'#9#9
      'Observacao'#9'500'#9'Observacao'#9#9)
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alTop
    DataSource = dsSolicitacao
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ReadOnly = True
    TabOrder = 1
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnCalcCellColors = wwDBGrid1CalcCellColors
  end
  object pnltools: TPanel
    Left = 0
    Top = 0
    Width = 1051
    Height = 41
    Align = alTop
    TabOrder = 0
    object SpeedButton1: TSpeedButton
      Left = 907
      Top = 3
      Width = 139
      Height = 35
      Anchors = [akTop, akRight]
      Caption = 'Cancelar Saldos'
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FF0732DE0732DEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF0732DE0732DE0732DEFF00FFFF00FFFF00FF0732DE0732DE0732
        DEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FF0732DE0732DE0732DEFF00FFFF00FFFF00FFFF00FF
        0732DE0732DE0732DE0732DEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FF0732DE0732DE0732DE0732DEFF00FFFF00FFFF
        00FFFF00FFFF00FF0732DE0732DE0732DE0732DE0732DEFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0732DE0732DE0732DE0732DEFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0732DE0732DE0732DE0732DE07
        32DEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0732DE0732DE0732DE
        0732DEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0335
        FB0732DE0732DE0732DE0732DEFF00FFFF00FFFF00FFFF00FFFF00FF0732DE07
        32DE0732DE0732DEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FF0732DE0732DE0732DE0732DEFF00FFFF00FF0732
        DE0732DE0732DE0732DE0732DEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0732DE0732DE0732DE
        0732DE0732DE0732DE0732DE0732DE0732DEFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FF0732DE0732DE0335FB0732DE0335FB0732DE0732DEFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FF0732DE0732DE0732DE0335FB0732DEFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0732DE0732DE0335FB0732DE0732
        DE0335FB0335FBFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0732DE0732DE0335FB
        0732DE0335FB0335FB0335FB0732DE0335FBFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0335FB03
        35FB0335FB0732DE0335FBFF00FFFF00FF0335FB0335FB0335FB0335FBFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FF0335FB0335FB0732DE0335FB0335FBFF00FFFF00FFFF00FFFF00FF0335FB03
        35FB0335FB0335FBFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF0335FB0335FB0335FB0335FB0335FBFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FF0335FB0335FB0335FBFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FF0335FB0335FB0335FB0335FB0335FBFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0335FB0335FB0335FBFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FF0335FB0335FB0335FB0335FB0335FBFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF0335FBFF00FFFF00FFFF00FFFF00FFFF00FF0335FB0335FB0335FB0335
        FB0335FBFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0335FB
        0335FB0335FB0335FBFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FF0335FB0335FB0335FBFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      OnClick = SpeedButton1Click
    end
    object Label3: TLabel
      Left = 8
      Top = 10
      Width = 20
      Height = 16
      Caption = 'De:'
    end
    object Label4: TLabel
      Left = 160
      Top = 10
      Width = 24
      Height = 16
      Caption = 'Até:'
    end
    object CheckBox1: TCheckBox
      Left = 424
      Top = 13
      Width = 321
      Height = 17
      Caption = 'Ver somente requisições que não foram atendidas'
      TabOrder = 0
      Visible = False
      OnClick = CheckBox1Click
    end
    object BitBtn1: TBitBtn
      Left = 756
      Top = 3
      Width = 144
      Height = 35
      Anchors = [akTop, akRight]
      Caption = 'Imprimir Saldos'
      TabOrder = 1
      OnClick = BitBtn1Click
    end
    object MaskEdit1: TMaskEdit
      Left = 32
      Top = 8
      Width = 121
      Height = 24
      EditMask = '99/99/9999'
      MaxLength = 10
      TabOrder = 2
      Text = '  /  /    '
    end
    object MaskEdit2: TMaskEdit
      Left = 192
      Top = 8
      Width = 121
      Height = 24
      EditMask = '99/99/9999'
      MaxLength = 10
      TabOrder = 3
      Text = '  /  /    '
    end
    object Button1: TButton
      Left = 320
      Top = 8
      Width = 89
      Height = 25
      Caption = 'Filtrar'
      TabOrder = 4
      OnClick = Button1Click
    end
  end
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 202
    Width = 1051
    Height = 404
    ActivePage = TabSheet1
    Align = alClient
    TabIndex = 0
    TabOrder = 2
    FixedDimension = 22
    object TabSheet1: TRzTabSheet
      Caption = 'Itens da Requisição de Materiais'
      object pnlAprova: TPanel
        Left = 0
        Top = 345
        Width = 1047
        Height = 33
        Align = alBottom
        TabOrder = 0
        object Label1: TLabel
          Left = 12
          Top = 8
          Width = 245
          Height = 16
          Caption = 'Digite sua senha para aprovar a requisição'
        end
        object edtSenha: TEdit
          Left = 264
          Top = 3
          Width = 145
          Height = 27
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          PasswordChar = '*'
          TabOrder = 0
          OnKeyPress = edtSenhaKeyPress
        end
      end
      object wwDBGrid2: TwwDBGrid
        Left = 0
        Top = 40
        Width = 1047
        Height = 178
        ControlType.Strings = (
          'SEL;CheckBox;S;N')
        Selected.Strings = (
          'SEL'#9'1'#9'**'#9#9
          'CRITICO'#9'1'#9'Critico'#9'F'
          'MAT_DESC'#9'45'#9'Material'#9#9
          'QTDE_SOL'#9'10'#9'Qtde'#9#9
          'UNI_SIGLA'#9'5'#9'Un.'#9#9
          'SALDO'#9'10'#9'Saldo'#9#9
          'ESTOQUE'#9'10'#9'Estoque'#9#9)
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alClient
        DataSource = dsItens
        TabOrder = 1
        TitleAlignment = taLeftJustify
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
        OnCalcCellColors = wwDBGrid2CalcCellColors
      end
      object RzPageControl2: TRzPageControl
        Left = 0
        Top = 218
        Width = 1047
        Height = 127
        ActivePage = TabSheet2
        Align = alBottom
        TabIndex = 0
        TabOrder = 2
        FixedDimension = 22
        object TabSheet2: TRzTabSheet
          Caption = 'Estoque'
          object Label2: TLabel
            Left = 8
            Top = 8
            Width = 173
            Height = 19
            Caption = 'Produto sem estoque'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object wwDBGrid3: TwwDBGrid
            Left = 0
            Top = 0
            Width = 907
            Height = 101
            Selected.Strings = (
              'MARCA_DESC'#9'30'#9'Marca'#9'F'
              'QTDE_ESTQ'#9'14'#9'Estoque'#9'F'
              'QTDE'#9'14'#9'Qtde por atender'#9'F')
            IniAttributes.Delimiter = ';;'
            TitleColor = clBtnFace
            FixedCols = 2
            ShowHorzScrollBar = True
            Align = alClient
            DataSource = dsEStoque
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            TitleAlignment = taLeftJustify
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -13
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            TitleLines = 1
            TitleButtons = False
          end
          object Panel1: TPanel
            Left = 907
            Top = 0
            Width = 136
            Height = 101
            Align = alRight
            Color = 14869218
            TabOrder = 1
            object RzBitBtn1: TRzBitBtn
              Left = 16
              Top = 26
              Width = 105
              Height = 49
              Caption = 'Confirmar Alterações'
              TabOrder = 0
              OnClick = RzBitBtn1Click
            end
          end
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1047
        Height = 40
        Align = alTop
        TabOrder = 3
        object btnEstoque: TSpeedButton
          Left = 8
          Top = 3
          Width = 153
          Height = 34
          Caption = 'Verificar Estoque'
          Glyph.Data = {
            F6060000424DF606000000000000360000002800000018000000180000000100
            180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FF004B00004B00FF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            A46769A46769A46769A46769405D2B045B0719A12E0E871C235516A46769A467
            69A46769A46769FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFA46769F7E3BCF8E0B70E69110A6F122AC24C21B53D1AAB31
            035804F3CE91F3CC8CF3CA89A46769FF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFA46769FAE6C6F8E2C00A6F1335D35F0C
            7616035804119222108F1F236916F3CF92F3CC8EA46769FF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA0675BFAEACEEABD
            82EABC7F07600A4D7E2BEAB777105C0A0F8B1C046007E7B46CF3D093A46769FF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            9F665BFAEDD5F8EACFE9E0BCF7E3C2F7E1BBF7DEB5F6DCAF085A07097B133776
            25F4D39AA46769FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFE00FEA47369F2E7D5E0B782E0B580E0B47EE1B47BE1B479E6B779
            E9B777025804066409628B40A46769FF00FFFF00FFA46769A46769A46769A467
            69A46769A46769A46769A366689F6466996B63D5CFC2CBC2B5C7BFADC7BCA7CB
            BDA7D5C6ABE9D5B4F4DEB865974E0259030F5D0CA46769FF00FFFF00FFA46769
            F7E3BCF8E0B7F7DDB0F7DAAAF6D8A5F6D59FF0CF98E2C18A976853A7A49D8C74
            55886F51876E508E7451A5865DCAA36FE1B57BE9BA7B5A82330051013B5D28FF
            00FFFF00FFA46769FAE6C6F8E2C0F7E0B8F8DDB2F7DAACF4D8A6EFD19DD9BA8A
            0C48970C48970C48970C48970C48970C4897978F82CBBFAAEEDEC1F7E5C4F8E3
            C0357D2C025103FF00FFFF00FFA0675BFAEACEEABD82EABC7FEABA7DEAB879E9
            B676E0B06F0C489746B0FF40A9FF39A1FF359CFF2E96FF0C4897886F50BB9A6E
            E0B681EABD83EBBC82FAE5C1245B1A004B00FF00FFA0675BFBEED7FAEBD0FAE9
            CAF8E5C4F8E2BCF4DCB4E3CCA3BFA9840C489747B0FF41A9FF39A1FF359CFF0C
            4897918C84C9C1B4EEE2D0F8EBD5FBEACFFAE9CAA46769FF00FFFF00FFA7756B
            FBF0DDEBC189EBBF87EBBD84EABB80E5B77BD1A66E0C489753BCFF4CB6FF46B0
            FF40A9FF39A1FF0C48978C7557BF9E75E1B888EBC18BEBC089FAEBD1A46769FF
            00FFFF00FFA7756BFCF4E6FCF2E1FBEFDAFBEDD3FAEACEF6E3C50C48975BC5FF
            58C1FF52BCFF4CB6FF46B0FF41A9FF0C4897A9A5A1D7D3CAF4EDE2FBF3E3FCF2
            E0FBEFDAA46769FF00FFFF00FFBC8268FEF7EDEDC490EDC28EEBC18BEBC088EA
            BD84E3B77E0C48975BC5FF57C1FF53BCFF0C489746AFFF0C4897CBCAC9E9E6E1
            F8F4EDFCF6EBFCF4E7FCF2E1A46769FF00FFFF00FF000188C7C5DEFCF8EEFEF6
            EAFCF3E38982BB000188E1D4CAF2E1C50C48975BC5FF0C4897C6C6C60C4897E1
            E1E1EDEBEBF8F7F3FCFBF6FEFAF3FEF8EEFCF6E9A46769FF00FF0209A30A31FE
            0109A6C0A092EDC693826C8A000DC6001BFA000188E9BD87E0A6760C4897BC83
            62C18765C98C69CC8F6ACE906BD0916CD1926DD1926DD1926DD1926DD1926DFF
            00FF01038B0A26E00C34FB0209A4000077000DC50021FF000CC48984BDFBEFDC
            F8EBD5F7E6CBF4E3C6A16567FE00FEFE00FEFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FF0001840B26DD0B2FFA0218E2001DFF000DC181
            6B8AEDC491EDC28FEDC28CEBC089F8EAD0A46769FF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFDA9D750000870D30FE082E
            FF0319DD000077FFFAF4FEF8EFFEF6EBFCF4E5FCF2E0FBEFDAA46769FF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF83627A
            01038B1640FF0F33FA0F35F7030BA5C6C5E2FEFBF6FEFAF2FEF7EDFCF4E7FCF2
            E1A46769FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FF01038B275BFF1640FF0103870D29DE133FFF040DA7C7C6E3FEFCF7
            FEFAF3FEF8EEFCF6E9A46769FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FF01038B356DFF356DFF01038BD1926D0001830F2DE015
            3FFF000188D1926DD1926DD1926DD1926DD1926DFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF01038B01038BFF00FFFF00
            FFFF00FF01028A040BA1FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          OnClick = btnEstoqueClick
        end
        object btnGerar: TSpeedButton
          Left = 170
          Top = 3
          Width = 139
          Height = 34
          Caption = 'Gerar Requisição'
          Enabled = False
          Glyph.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000D30E0000D30E00000001000000010000CE392900216B
            290021842900D64A31002973310039393900396B3900299439007B394200F794
            420039424A00394A4A00424A4A009C4A4A004A6B4A004A734A00183952002142
            5200525A52004A635200527B520039845200D69452005A5A5A005A6B5A005A7B
            5A0039A55A0063316300294A6300945A63009463630008396B00314A6B003152
            6B00EFAD6B00104273007B427300104A7300734A73004ABD7300EFBD73007B29
            7B0029527B00295A7B0042637B004A637B006B737B007B847B00AD947B0052AD
            7B008429840021528400426384006B738400847B840084848400848C84006BB5
            840021528C00215A8C0042638C008C638C00426B8C004A6B8C00947B8C008C84
            8C008C8C8C00942994002963940039639400316B94004A6B9400738494009484
            94007B8C9400848C9400948C9400949494007B9C940073BD94006BC694009C31
            9C0073849C00848C9C007B949C0094949C009C949C009C9C9C0073CE9C00396B
            A500427BA500A57BA500A58CA5008494A500949CA500A59CA50084A5A5009CA5
            A500A5A5A500AD39AD00AD42AD00AD6BAD004A84AD00949CAD00ADA5AD00ADAD
            AD004A7BB5004A84B500528CB5006B9CB500A5ADB500B5ADB500B5B5B5004A84
            BD00528CBD005A8CBD005A94BD00B5B5BD00BDB5BD00BDBDBD00C66BC6005A8C
            C6005A94C600C694C60094ADC600A5B5C600ADBDC600B5BDC600C6BDC600C6C6
            C600CE73CE00CE8CCE005A94CE006394CE006B9CCE00B5BDCE005AC6CE00CEC6
            CE00CECECE00DECECE00639CD6006B9CD6009CB5D6009CBDD600D6CED600D6D6
            D600CEDED600BDEFD6006BA5DE00DED6DE00DEDEDE007BADE7007BB5E7006BC6
            E700E7DEE70073E7E700E7E7E70084BDEF008CBDEF00EFE7EF00E7EFEF00EFEF
            EF005ADEF700F7EFF700F7FFF700FF00FF0042F7FF00FFFFFF00FFFFFF00FFFF
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
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A5A5A5A5A5A5
            A5A5A5170537A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A52E346B2B0C37A5
            A5A5A5A5A5A5A5A5A5A5A5A5A5A5A52E3C7A8572462B0C37A5A5A5A5A5A5A5A5
            A5A5A5A5A52E3E7A858D857246462B0C37A5A5A5A5A5A5A5A5A5A5353F79858C
            867A8C724646462B0C37A5A5A5A5A5A5A5A5A51C85857972466C8D7246464646
            2B0B37A5A5A5A5A5A5A5A51C853346461F5985725A864646462B0B37A5A5A5A5
            A5A5A51C8523253B6B8C979D7C48744646462B0B37A5A5A5A5A5A51C85336B8C
            979E8E758A367D664646462B0B37A5A5A5A5A51C858C979E8E758990914C7067
            6C4646462B0B37A5A5A5A521979E8F7F8A969595954D76694A734646462B0B2F
            A5A5A52C6A5E9A9C9C9AA195686F776F417E664646462B0CA5A5A5554555A4A1
            A092694276956F764D805D6C46464611A5A5A5A56E57A49358155F9580577095
            4D815F5373464611A5A5A5A5A514501A04188349689090766F81683787664611
            A5A5A5A5A5060112657851408B76567695776F4D8A206611A5A5A5A5A5A54D43
            51243028165F95896268954D90103B2CA5A5A5A5A5A5A526082209031E9B605F
            89958062902D3F4BA5A5A5A5A5A5A5A50D001D88A6A25491804D69958937A5A5
            A5A5A5A5A5A5A5A5A54D99A26D4E4F314C95906969A5A5A5A5A5A5A5A5A5A5A5
            A5A548133927070F7B5C68A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A519020E5B82
            643DA5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A54D32642949A5A5A5A5A5A5A5
            A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5}
          OnClick = btnGerarClick
        end
      end
    end
  end
  object qrSolicitacao: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT S.SOL_ID'
      '      ,S.DATA'
      '      ,C.CC_Desc      '
      
        '      ,S.USUARIO, S.LOCAL_ID , L.DESCRICAO  , s.CC_ID, S.TIPO, S' +
        '.MOTIVO, S.Observacao'
      'FROM SolMaterial S INNER JOIN CENTRO_CUSTO C'
      
        'ON S.CC_ID = C.CC_ID LEFT OUTER JOIN LOCAL L ON S.LOCAL_ID = L.L' +
        'OCAL_ID'
      'WHERE S.SOL_ID IN'
      '('
      #9'SELECT SOL_ID'
      #9'FROM ITEM_SOLMATERIAL'
      #9'WHERE SALDO > 0'
      ')'
      'AND S.DT_APROVACAO IS NOT NULL'
      'AND S.CONCLUIDO = '#39'S'#39)
    Left = 337
    Top = 241
    object qrSolicitacaoSOL_ID: TAutoIncField
      DisplayLabel = 'Código'
      DisplayWidth = 8
      FieldName = 'SOL_ID'
      ReadOnly = True
    end
    object qrSolicitacaoDATA: TDateTimeField
      DisplayLabel = 'Data'
      DisplayWidth = 10
      FieldName = 'DATA'
    end
    object qrSolicitacaoDESCRICAO: TStringField
      DisplayLabel = 'Local'
      DisplayWidth = 15
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object qrSolicitacaoCC_Desc: TStringField
      DisplayLabel = 'Centro de Custo'
      DisplayWidth = 40
      FieldName = 'CC_Desc'
      Size = 40
    end
    object qrSolicitacaoUSUARIO: TStringField
      DisplayLabel = 'Solicitado por'
      DisplayWidth = 15
      FieldName = 'USUARIO'
      Size = 50
    end
    object qrSolicitacaoTIPO: TStringField
      DisplayLabel = 'Tipo'
      DisplayWidth = 15
      FieldName = 'TIPO'
      OnGetText = qrSolicitacaoTIPOGetText
      Size = 1
    end
    object qrSolicitacaoMOTIVO: TStringField
      DisplayLabel = 'Motivo'
      DisplayWidth = 40
      FieldName = 'MOTIVO'
      Size = 50
    end
    object qrSolicitacaoObservacao: TStringField
      DisplayWidth = 500
      FieldName = 'Observacao'
      Size = 500
    end
    object qrSolicitacaoLOCAL_ID: TIntegerField
      FieldName = 'LOCAL_ID'
      Visible = False
    end
    object qrSolicitacaoCC_ID: TIntegerField
      FieldName = 'CC_ID'
      Visible = False
    end
  end
  object dsSolicitacao: TDataSource
    DataSet = qrSolicitacao
    OnDataChange = dsSolicitacaoDataChange
    Left = 409
    Top = 241
  end
  object qrItens: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'SOL_ID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT'
      #9'I.ITEM,'
      #9'I.MAT_ID,'
      #9'I.QTDE_SOL,'
      #9'I.QTDE_ATENDIDA,'
      #9'I.SALDO,'
      #9'I.STATUS,'
      #9'I.ESTOQUE,'
      #9'ISNULL(I.SEL, '#39'N'#39') SEL,'
      #9'M.MAT_DESC ,  U.UNI_SIGLA,'
      
        '                CASE WHEN CRITICO = '#39'C'#39' THEN '#39'S'#39' ELSE '#39#39' END AS ' +
        'CRITICO,'
      'I.Obs'
      'FROM ITEM_SOLMATERIAL I LEFT OUTER JOIN MATERIAIS M'
      'ON I.MAT_ID = M.MAT_ID  LEFT OUTER JOIN UNIDADES U'
      'ON M.UNI_ID = U.UNI_ID'
      'WHERE I.SOL_ID = :SOL_ID'
      'AND SALDO > 0'
      'ORDER BY M.MAT_DESC')
    Left = 353
    Top = 305
    object qrItensSEL: TStringField
      DisplayLabel = '**'
      DisplayWidth = 1
      FieldName = 'SEL'
      FixedChar = True
      Size = 1
    end
    object qrItensMAT_DESC: TStringField
      DisplayLabel = 'Material'
      DisplayWidth = 45
      FieldName = 'MAT_DESC'
      Size = 60
    end
    object qrItensQTDE_SOL: TFloatField
      DisplayLabel = 'Qtde'
      DisplayWidth = 10
      FieldName = 'QTDE_SOL'
    end
    object qrItensUNI_SIGLA: TStringField
      DisplayLabel = 'Un.'
      DisplayWidth = 5
      FieldName = 'UNI_SIGLA'
      Size = 2
    end
    object qrItensSALDO: TFloatField
      DisplayLabel = 'Saldo'
      DisplayWidth = 10
      FieldName = 'SALDO'
    end
    object qrItensESTOQUE: TFloatField
      DisplayLabel = 'Estoque'
      DisplayWidth = 10
      FieldName = 'ESTOQUE'
    end
    object qrItensITEM: TAutoIncField
      DisplayWidth = 10
      FieldName = 'ITEM'
      Visible = False
    end
    object qrItensMAT_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'MAT_ID'
      Visible = False
    end
    object qrItensQTDE_ATENDIDA: TFloatField
      DisplayWidth = 10
      FieldName = 'QTDE_ATENDIDA'
      Visible = False
    end
    object qrItensSTATUS: TStringField
      DisplayWidth = 1
      FieldName = 'STATUS'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object qrItensCRITICO: TStringField
      FieldName = 'CRITICO'
      ReadOnly = True
      Size = 1
    end
    object qrItensObs: TStringField
      FieldName = 'Obs'
      Size = 250
    end
  end
  object dsItens: TDataSource
    DataSet = cdsItens
    OnDataChange = dsItensDataChange
    Left = 513
    Top = 305
  end
  object qrAux: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    Left = 265
    Top = 241
  end
  object qrMarcaEstoque: TADOQuery
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
      'SELECT '
      'MAR.MARCA_ID,'
      'MAR.MARCA_DESC,'
      'SUM(CASE WHEN ALM.QTDE IS NULL THEN 0.0 ELSE ALM.QTDE END) QTDE '
      'FROM ALMOX ALM  LEFT OUTER JOIN MARCAS MAR'
      'ON ALM.Marca_ID = MAR.MARCA_ID'
      'WHERE ALM.TIPO = '#39'E'#39' AND'#9#9
      'ALM.QTDE_RETIRADA IS NULL  '
      'and ALM.mat_id = :mat_id'
      'GROUP BY MAR.MARCA_ID, MAR.MARCA_DESC')
    Left = 617
    Top = 265
    object qrMarcaEstoqueMARCA_DESC: TStringField
      DisplayLabel = 'Marca'
      DisplayWidth = 20
      FieldName = 'MARCA_DESC'
    end
    object qrMarcaEstoqueQTDE: TFloatField
      DisplayLabel = 'Estoque'
      DisplayWidth = 10
      FieldName = 'QTDE'
      ReadOnly = True
    end
    object qrMarcaEstoqueMARCA_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'MARCA_ID'
      ReadOnly = True
      Visible = False
    end
  end
  object qrEstoque: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'SOL_ID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'MAT_ID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'LOCAL_ID'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT '
      #9'A.*, '
      #9'('
      #9#9'select TOP 1 QTDE FROM BAIXA_SOLMATERIAL'
      #9#9'WHERE MARCA_ID = A.MARCA_ID'
      #9#9'AND MAT_ID = A.MAT_ID'
      '                                AND SOL_ID = :SOL_ID'
      #9') AS QTDE'
      'FROM ESTOQUE_MARCA A '
      'WHERE A.MAT_ID = :MAT_ID'
      'AND qtde_estq > 0'
      'AND A.MAT_ID IN ('
      ''
      'SELECT DISTINCT'
      #9'ALM.MAT_ID '
      'FROM ALMOX ALM, MATERIAIS'#9'MAT INNER JOIN GRUPO_MATERIAL G '
      'ON MAT.GRU_ID = G.GRU_ID, '
      'LOCAL LOC   '
      'WHERE ALM.MAT_ID = MAT.MAT_ID  '
      'AND'#9#9'ALM.LOCAL_ID'#9'= LOC.LOCAL_ID  '
      'AND'#9'ALM.TIPO = '#39'E'#39' AND'#9#9
      'ALM.QTDE_RETIRADA IS NULL   '
      'and loc.local_id = :LOCAL_ID)')
    Left = 250
    Top = 456
    object qrEstoqueMARCA_ID: TAutoIncField
      FieldName = 'MARCA_ID'
      ReadOnly = True
    end
    object qrEstoqueMARCA_DESC: TStringField
      FieldName = 'MARCA_DESC'
    end
    object qrEstoqueMat_ID: TIntegerField
      FieldName = 'Mat_ID'
    end
    object qrEstoqueQTDE_ESTQ: TFloatField
      FieldName = 'QTDE_ESTQ'
      ReadOnly = True
    end
    object qrEstoqueQTDE: TFloatField
      FieldName = 'QTDE'
    end
  end
  object cdsEStoque: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEstoque'
    Left = 426
    Top = 456
    object cdsEStoqueMARCA_DESC: TStringField
      DisplayLabel = 'Marca'
      DisplayWidth = 30
      FieldName = 'MARCA_DESC'
    end
    object cdsEStoqueQTDE_ESTQ: TFloatField
      DisplayLabel = 'Estoque'
      DisplayWidth = 14
      FieldName = 'QTDE_ESTQ'
      ReadOnly = True
    end
    object cdsEStoqueQTDE: TFloatField
      DisplayLabel = 'Qtde por atender'
      DisplayWidth = 14
      FieldName = 'QTDE'
    end
    object cdsEStoqueMARCA_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'MARCA_ID'
      ReadOnly = True
      Visible = False
    end
    object cdsEStoqueMat_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'Mat_ID'
      Visible = False
    end
  end
  object dspEstoque: TDataSetProvider
    DataSet = qrEstoque
    Constraints = True
    Left = 330
    Top = 456
  end
  object dsEStoque: TDataSource
    DataSet = cdsEStoque
    Left = 490
    Top = 456
  end
  object STP_ESTOQUE: TADOStoredProc
    Connection = FMenu.ADOConnection
    ProcedureName = 'CALCULA_ESTOQUE;1'
    Parameters = <
      item
        Name = '@SOL_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@ITEM'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@MAT_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@QTD_SOL'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@SALDOX'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@LOCAL_ID'
        DataType = ftInteger
        Value = Null
      end>
    Prepared = True
    Left = 169
    Top = 241
  end
  object qrBx: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT TOP 1 * FROM BAIXA_SOLMATERIAL')
    Left = 609
    Top = 369
    object qrBxITEM: TIntegerField
      FieldName = 'ITEM'
    end
    object qrBxMARCA_ID: TIntegerField
      FieldName = 'MARCA_ID'
    end
    object qrBxQTDE: TFloatField
      FieldName = 'QTDE'
    end
    object qrBxSOL_ID: TIntegerField
      FieldName = 'SOL_ID'
    end
    object qrBxMAT_ID: TIntegerField
      FieldName = 'MAT_ID'
    end
  end
  object qrReqCapa: TADOQuery
    Connection = FMenu.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT TOP 1 *  FROM REQ_CAPA')
    Left = 89
    Top = 321
    object qrReqCapaReq_ID: TAutoIncField
      FieldName = 'Req_ID'
      ReadOnly = True
    end
    object qrReqCapaData: TDateTimeField
      FieldName = 'Data'
    end
    object qrReqCapaUsuario: TStringField
      FieldName = 'Usuario'
    end
    object qrReqCapaCC_ID: TIntegerField
      FieldName = 'CC_ID'
    end
    object qrReqCapaData_Sist: TDateTimeField
      FieldName = 'Data_Sist'
    end
    object qrReqCapaLOCAL_ID: TIntegerField
      FieldName = 'LOCAL_ID'
    end
    object qrReqCapaTIPO_REQUISICAO: TStringField
      FieldName = 'TIPO_REQUISICAO'
      Size = 1
    end
    object qrReqCapaUsuarioSolicitacao: TStringField
      FieldName = 'UsuarioSolicitacao'
      Size = 50
    end
    object qrReqCapaObservacaoSolicitacao: TStringField
      FieldName = 'ObservacaoSolicitacao'
      Size = 500
    end
    object qrReqCapaTipoSolicitacao: TStringField
      FieldName = 'TipoSolicitacao'
      Size = 50
    end
    object qrReqCapaMotivoSolicitacao: TStringField
      FieldName = 'MotivoSolicitacao'
      Size = 250
    end
  end
  object qrReqItem: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    SQL.Strings = (
      'SELECT TOP 1 * FROM REQ_ITEM')
    Left = 161
    Top = 321
    object qrReqItemReq_Item_ID: TAutoIncField
      FieldName = 'Req_Item_ID'
      ReadOnly = True
    end
    object qrReqItemReq_ID: TIntegerField
      FieldName = 'Req_ID'
    end
    object qrReqItemMat_ID: TIntegerField
      FieldName = 'Mat_ID'
    end
    object qrReqItemMarca_ID: TIntegerField
      FieldName = 'Marca_ID'
    end
    object qrReqItemUni_Sigla: TStringField
      FieldName = 'Uni_Sigla'
      FixedChar = True
      Size = 2
    end
    object qrReqItemQtde: TFloatField
      FieldName = 'Qtde'
    end
    object qrReqItemStatus: TStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 1
    end
    object qrReqItemtipoConsumo: TStringField
      FieldName = 'tipoConsumo'
      FixedChar = True
      Size = 1
    end
    object qrReqItemInformacaoAdicional: TStringField
      FieldName = 'InformacaoAdicional'
      Size = 250
    end
  end
  object dspItens: TDataSetProvider
    DataSet = qrItens
    Constraints = True
    Left = 417
    Top = 313
  end
  object cdsItens: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspItens'
    Left = 473
    Top = 313
    object cdsItensSEL: TStringField
      DisplayLabel = '**'
      DisplayWidth = 1
      FieldName = 'SEL'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsItensSELChange
      FixedChar = True
      Size = 1
    end
    object cdsItensCRITICO: TStringField
      DisplayLabel = 'Critico'
      DisplayWidth = 1
      FieldName = 'CRITICO'
      ReadOnly = True
      Size = 1
    end
    object cdsItensMAT_DESC: TStringField
      DisplayLabel = 'Material'
      DisplayWidth = 45
      FieldName = 'MAT_DESC'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object cdsItensQTDE_SOL: TFloatField
      DisplayLabel = 'Qtde'
      DisplayWidth = 10
      FieldName = 'QTDE_SOL'
      ProviderFlags = []
      ReadOnly = True
    end
    object cdsItensUNI_SIGLA: TStringField
      DisplayLabel = 'Un.'
      DisplayWidth = 5
      FieldName = 'UNI_SIGLA'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object cdsItensSALDO: TFloatField
      DisplayLabel = 'Saldo'
      DisplayWidth = 10
      FieldName = 'SALDO'
      ProviderFlags = []
    end
    object cdsItensESTOQUE: TFloatField
      DisplayLabel = 'Estoque'
      DisplayWidth = 10
      FieldName = 'ESTOQUE'
      ProviderFlags = []
      ReadOnly = True
    end
    object cdsItensITEM: TAutoIncField
      FieldName = 'ITEM'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
    object cdsItensMAT_ID: TIntegerField
      FieldName = 'MAT_ID'
      ProviderFlags = []
      Visible = False
    end
    object cdsItensQTDE_ATENDIDA: TFloatField
      FieldName = 'QTDE_ATENDIDA'
      ProviderFlags = []
      Visible = False
    end
    object cdsItensSTATUS: TStringField
      FieldName = 'STATUS'
      ProviderFlags = []
      Visible = False
      FixedChar = True
      Size = 1
    end
    object cdsItensObs: TStringField
      FieldName = 'Obs'
      Size = 250
    end
  end
end
