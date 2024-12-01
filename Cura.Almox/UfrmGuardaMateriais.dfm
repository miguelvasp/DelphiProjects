object Form2: TForm2
  Left = 279
  Top = 117
  Width = 783
  Height = 623
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
    Top = 73
    Width = 767
    Height = 512
    ActivePage = TabSheet1
    ActivePageDefault = TabSheet1
    Align = alClient
    TabIndex = 0
    TabOrder = 0
    FixedDimension = 20
    object TabSheet1: TRzTabSheet
      Caption = 'Principal'
      object wwDBGrid1: TwwDBGrid
        Left = 0
        Top = 0
        Width = 763
        Height = 488
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alClient
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
      Caption = 'Itens'
      object wwDBGrid2: TwwDBGrid
        Left = 0
        Top = 0
        Width = 763
        Height = 488
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alClient
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
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 767
    Height = 73
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 15
      Height = 14
      Caption = 'De'
    end
    object Label2: TLabel
      Left = 144
      Top = 16
      Width = 20
      Height = 14
      Caption = 'Até'
    end
    object MaskEdit1: TMaskEdit
      Left = 8
      Top = 32
      Width = 121
      Height = 22
      EditMask = '99/99/9999'
      MaxLength = 10
      TabOrder = 0
      Text = '  /  /    '
    end
    object MaskEdit2: TMaskEdit
      Left = 144
      Top = 32
      Width = 121
      Height = 22
      EditMask = '99/99/9999'
      MaxLength = 10
      TabOrder = 1
      Text = '  /  /    '
    end
    object Button2: TButton
      Left = 289
      Top = 30
      Width = 153
      Height = 25
      Caption = 'Guardar Informações'
      TabOrder = 2
    end
  end
end
