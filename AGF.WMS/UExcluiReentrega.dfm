object FExcluiReentrega: TFExcluiReentrega
  Left = 73
  Top = 42
  Width = 665
  Height = 499
  BorderIcons = []
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
  object Panel2: TPanel
    Left = 3
    Top = 2
    Width = 651
    Height = 37
    BevelInner = bvLowered
    TabOrder = 0
    object Label5: TLabel
      Left = 8
      Top = 4
      Width = 227
      Height = 29
      Caption = 'Excluir Reentrega'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -24
      Font.Name = 'Georgia'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object SpeedButton3: TSpeedButton
      Left = 618
      Top = 5
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
  end
  object Panel1: TPanel
    Left = 3
    Top = 40
    Width = 651
    Height = 425
    BevelInner = bvLowered
    TabOrder = 1
    object Grid: TwwDBGrid
      Left = 18
      Top = 32
      Width = 617
      Height = 337
      Selected.Strings = (
        'NFI_EXCLUI_REEN'#9'1'#9'     '#9'F'
        'NFI_NUMERO'#9'10'#9'Nº NF'#9'F'
        'CLIN_RAZA'#9'34'#9'Emitente'#9'F'
        'CLIF_RAZA'#9'34'#9'Destinatário'#9'F')
      IniAttributes.FileName = 'delphi32.ini'
      IniAttributes.SectionName = 'FPcPGrid'
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      EditControlOptions = [ecoCheckboxSingleClick, ecoSearchOwnerForm]
      Color = clWhite
      DataSource = DS_CLINBF
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      KeyOptions = []
      Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      ParentFont = False
      TabOrder = 0
      TitleAlignment = taCenter
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clNavy
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = [fsBold]
      TitleLines = 1
      TitleButtons = False
      OnCalcCellColors = GridCalcCellColors
      IndicatorColor = icBlack
      FooterColor = clInactiveCaption
      FooterCellColor = clGrayText
    end
    object BitBtn1: TBitBtn
      Left = 290
      Top = 376
      Width = 88
      Height = 33
      Hint = 'Confirmar'
      Default = True
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = BitBtn1Click
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object BitBtn3: TBitBtn
      Left = 18
      Top = 9
      Width = 30
      Height = 24
      Hint = 'Selecionar Todos'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
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
    object btNem: TBitBtn
      Left = 48
      Top = 9
      Width = 30
      Height = 24
      Hint = 'Desmarcar Todos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = btNemClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
        555557777F777555F55500000000555055557777777755F75555005500055055
        555577F5777F57555555005550055555555577FF577F5FF55555500550050055
        5555577FF77577FF555555005050110555555577F757777FF555555505099910
        555555FF75777777FF555005550999910555577F5F77777775F5500505509990
        3055577F75F77777575F55005055090B030555775755777575755555555550B0
        B03055555F555757575755550555550B0B335555755555757555555555555550
        BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
        50BB555555555555575F555555555555550B5555555555555575}
      NumGlyphs = 2
    end
  end
  object UPD_CLINBF: TUpdateSQL
    ModifySQL.Strings = (
      'update CLIENTENBF'
      'set'
      '  NFI_NUMERO = :NFI_NUMERO,'
      '  MANI_ID = :MANI_ID,'
      '  NFI_EXCLUI_REEN = :NFI_EXCLUI_REEN,'
      '  CLIN_RAZA = :CLIN_RAZA,'
      '  CLIF_RAZA = :CLIF_RAZA'
      'where'
      '  NFI_CODI = :OLD_NFI_CODI')
    InsertSQL.Strings = (
      'insert into CLIENTENBF'
      '  (NFI_NUMERO, MANI_ID, NFI_EXCLUI_REEN, CLIN_RAZA, CLIF_RAZA)'
      'values'
      
        '  (:NFI_NUMERO, :MANI_ID, :NFI_EXCLUI_REEN, :CLIN_RAZA, :CLIF_RA' +
        'ZA)')
    DeleteSQL.Strings = (
      'delete from CLIENTENBF'
      'where'
      '  NFI_CODI = :OLD_NFI_CODI')
    Left = 355
    Top = 256
  end
  object DS_CLINBF: TwwDataSource
    DataSet = Q_CLINBF
    Left = 355
    Top = 318
  end
  object Q_CLINBF: TwwQuery
    AutoCalcFields = False
    CachedUpdates = True
    DatabaseName = 'NBFDados'
    SessionName = 'Sec_BaseDados'
    RequestLive = True
    SQL.Strings = (
      ''
      'select A.NFI_CODI,A.NFI_NUMERO,A.MANI_ID,A.NFI_EXCLUI_REEN,'
      'B.CLIN_RAZA,C.CLIF_RAZA '
      '  from NF A,CLIENTENBF B,CLIENTEFINAL C'
      ' Where A.NFI_CLONE = '#39'S'#39
      '   and  (A.MANI_ID is null '
      '    or   A.MANI_ID = '#39#39')'
      '   and  B.CLIN_ID = A.NFI_EMIT_CLI'
      '   and  C.CLIF_ID = A.NFI_DEST_CLI ')
    UpdateObject = UPD_CLINBF
    ControlType.Strings = (
      'NFI_EXCLUI_REEN;CheckBox;*;')
    ValidateWithMask = True
    Left = 351
    Top = 208
    object Q_CLINBFNFI_EXCLUI_REEN: TStringField
      DisplayLabel = '     '
      DisplayWidth = 1
      FieldName = 'NFI_EXCLUI_REEN'
      Origin = 'NBFDADOS.NF.NFI_EXCLUI_REEN'
      OnChange = Q_CLINBFNFI_EXCLUI_REENChange
      FixedChar = True
      Size = 1
    end
    object Q_CLINBFNFI_NUMERO: TStringField
      DisplayLabel = 'Nº NF'
      DisplayWidth = 10
      FieldName = 'NFI_NUMERO'
      Origin = 'NBFDADOS.NF.NFI_NUMERO'
      FixedChar = True
      Size = 10
    end
    object Q_CLINBFCLIN_RAZA: TStringField
      DisplayLabel = 'Emitente'
      DisplayWidth = 34
      FieldName = 'CLIN_RAZA'
      Origin = 'NBFDADOS.CLIENTENBF.CLIN_RAZA'
      FixedChar = True
      Size = 50
    end
    object Q_CLINBFCLIF_RAZA: TStringField
      DisplayLabel = 'Destinatário'
      DisplayWidth = 34
      FieldName = 'CLIF_RAZA'
      Origin = 'NBFDADOS.CLIENTEFINAL.CLIF_RAZA'
      FixedChar = True
      Size = 50
    end
    object Q_CLINBFNFI_CODI: TAutoIncField
      FieldName = 'NFI_CODI'
      Origin = 'NBFDADOS.NF.NFI_CODI'
      Visible = False
    end
    object Q_CLINBFMANI_ID: TIntegerField
      FieldName = 'MANI_ID'
      Origin = 'NBFDADOS.NF.MANI_ID'
      Visible = False
    end
  end
  object Q_AUX: TwwQuery
    DatabaseName = 'NbfDados'
    SessionName = 'Sec_BaseDados'
    ValidateWithMask = True
    Left = 685
    Top = 137
  end
end
