object frmAddPgtoFrete: TfrmAddPgtoFrete
  Left = 377
  Top = 122
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Adi��o de Pagamento'
  ClientHeight = 453
  ClientWidth = 534
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object Label5: TLabel
    Left = 28
    Top = 32
    Width = 60
    Height = 16
    Anchors = [akTop, akRight]
    Caption = 'Quinzena'
  end
  object Label6: TLabel
    Left = 188
    Top = 32
    Width = 26
    Height = 16
    Anchors = [akTop, akRight]
    Caption = 'M�s'
  end
  object Label7: TLabel
    Left = 336
    Top = 32
    Width = 25
    Height = 16
    Anchors = [akTop, akRight]
    Caption = 'Ano'
  end
  object GroupBox1: TGroupBox
    Left = 32
    Top = 96
    Width = 113
    Height = 57
    Caption = 'DATA:'
    TabOrder = 3
    object MaskEdit1: TMaskEdit
      Left = 16
      Top = 24
      Width = 89
      Height = 24
      EditMask = '99/99/9999'
      MaxLength = 10
      TabOrder = 0
      Text = '  /  /    '
    end
  end
  object GroupBox2: TGroupBox
    Left = 32
    Top = 168
    Width = 457
    Height = 57
    Caption = 'TRANSPORTADORA:'
    TabOrder = 6
    object wwDBLookupCombo1: TwwDBLookupCombo
      Left = 16
      Top = 24
      Width = 417
      Height = 24
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'TRANS_FANTASIA'#9'40'#9'TRANS_FANTASIA'#9'F')
      DataField = 'TRANS_ID'
      DataSource = frmPgtoFrete.dsGera
      LookupTable = cdsTrans
      LookupField = 'TRANS_ID'
      TabOrder = 0
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
    end
  end
  object GroupBox3: TGroupBox
    Left = 352
    Top = 96
    Width = 137
    Height = 57
    Caption = 'FRETE:'
    TabOrder = 5
    object DBEdit2: TDBEdit
      Left = 16
      Top = 24
      Width = 105
      Height = 24
      DataField = 'VLR_FRETE'
      DataSource = frmPgtoFrete.dsGera
      TabOrder = 0
    end
  end
  object GroupBox4: TGroupBox
    Left = 32
    Top = 240
    Width = 457
    Height = 145
    Caption = 'OBSERVA��O:'
    TabOrder = 7
    object DBMemo1: TDBMemo
      Left = 16
      Top = 32
      Width = 417
      Height = 97
      DataField = 'OBS'
      DataSource = frmPgtoFrete.dsGera
      MaxLength = 250
      TabOrder = 0
    end
  end
  object RzBitBtn1: TRzBitBtn
    Left = 38
    Top = 413
    Width = 211
    Height = 31
    Caption = 'Adicionar Lan�amento'
    TabOrder = 8
    OnClick = RzBitBtn1Click
    Glyph.Data = {
      76060000424D7606000000000000360400002800000018000000180000000100
      08000000000040020000230B0000230B000000010000000000002184290031A5
      4A0031AD520039B5520063A563006BAD840094DE8C00A5E79C00FF00FF00FFFF
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
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00080808080808
      0808080808080808080808080808080808080808080808080808080808080808
      0808080808080808080808080808080808080808000000000808080808080808
      0808080808080808080808040506030100080808080808080808080808080808
      0808080407060302000808080808080808080808080808080808080407060302
      0008080808080808080808080808080808080804070603020008080808080808
      0808080808080808080808040706030200080808080808080808080808080808
      0808080407060302000808080808080808080808080000000000000007060302
      0000000000000000080808080401020202020202020203020202020202020201
      0008080804030303030303030303030303030303030303030008080804060606
      0606060606060303060606060606060600080808040507070707070707060302
      0707070707070705000808080804040404040404070603020000000000000000
      0808080808080808080808040706030200080808080808080808080808080808
      0808080407060302000808080808080808080808080808080808080407060302
      0008080808080808080808080808080808080804070603020008080808080808
      0808080808080808080808040706030200080808080808080808080808080808
      0808080407060302000808080808080808080808080808080808080405060301
      0008080808080808080808080808080808080808040404040808080808080808
      0808080808080808080808080808080808080808080808080808}
  end
  object RzBitBtn2: TRzBitBtn
    Left = 286
    Top = 413
    Width = 211
    Height = 31
    Caption = 'Cancelar Lan�amento'
    TabOrder = 9
    OnClick = RzBitBtn2Click
    Glyph.Data = {
      F6060000424DF606000000000000360000002800000018000000180000000100
      180000000000C0060000EB0A0000EB0A00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFDFDFEFEFE
      FEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAE0E0D9CACABCCACABD
      CACABDCBCBBDCACABDCACABDCACABCCECEBEE9E9E3FDFDFEFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFBD3D3CB68
      68913F3F9B4444994545994646984646974646964646953D3D92707091E4E4DA
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFD
      FDD4D4C96565902B2BCD2C2CE92626E92323E72525E82626E92525E92B2BEC31
      31ED1C1CB66B6B89E6E6DBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFEFEFDD5D5CC6363912C2CD03535E92B2BE13636C14646BD3D3DC23D3D
      C34242BF3333CA3232E83D3DF01C1CB76A6A89E7E7DDFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFDFDFAD5D5C96363932B2BD33535ED2C2CDF6060B1C2C2C1
      D2D2D0C6C6CAC6C6CACECECCB8B8BC5050C03232EB3D3DF51B1BB96A6A87E7E7
      DAFFFFFFFFFFFFFFFFFFFFFFFFFDFDFCD6D6CB6363952C2CD43636EC2E2EE84C
      4CBFD9D9CDEBEBEEE0E0EAE2E2E9E2E2E9E1E1EAEEEEEBC4C4C73B3BD33939F1
      4040F61E1EBA6A6A86E7E7DBFFFFFFFFFFFFFFFFFFE3E3DF66669B2B2BD43737
      EB3939E72C2CE29292C1EEEEE9DBDBE9DBDBE8DCDCE8DCDCE8DBDBE8DDDDEAEC
      ECE58282C53131EB4141ED4141F81F1FB870708FF2F2EDFFFFFFFFFFFFADADC4
      2626C73636F03B3BE63A3AEB3535E1B2B2CEEFEFEFDEDEEBDFDFEBDFDFECDFDF
      ECDFDFEBDEDEEBEAEAF1CBCBD44343DF3E3EF24343ED3C3CF73333C1CFCFDBFF
      FFFFFFFFFFA7A7C92B2BD33B3BED3E3EEB3D3DF03A3AE4B4B4CFF2F2F3E2E2EF
      E4E4F0E4E4F1E4E4F1E3E3F0E3E3EFE7E7F5EBEBE56868D63D3DF84646F14141
      F54747E3CCCCE2FFFFFFFFFFFFA9A9CA2E2ED33E3EF24242F04343F63F3FE9B6
      B6D1F8F8FAE9E9F6E8E8F5E9E9F5E9E9F5E9E9F5EAEAF5EBEBF2F5F5F49292D5
      3D3DFB4B4BF64343F94747DECECEE1FFFFFFFFFFFFA9A9C93131D64242F74747
      F44848FC4444EEBBBBD7FCFCFCEAEAF7EFEFFCF0F0FCEFEFFCF2F2FEE1E1F1A9
      A9D2FFFFFEC6C6DA4444E64E4EFE4848FE4A4AE0CDCDE0FFFFFFFFFFFFA9A9C9
      3434DA4848FD4D4DFB4E4EFF4949EFC5C5DFE0E0E6C9C9D8FFFFFFF7F7FFF7F7
      FFFBFBFFE7E7F26868DCD0D0F1FFFFF28E8ECF4646FD4D4DFF4B4BE2CDCDDFFF
      FFFFFFFFFFA9A9CB3737DE4D4DFF5252FF5454FF5050F0C9C9E1DADAE2CDCDD9
      E5E5ECD3D3DEE9E9EFCFCFDBF7F7F46B6BEB6464F7B6B6F49595F34F4FFC5151
      FF4C4CE3CCCCDFFFFFFFFFFFFFA9A9CA3A3AE15353FF5959FF5C5CFF5858F0CB
      CBE3DADADDD1D1D8D5D5E0C2C2CFE0E0EABABACFFBFBF47B7BE95F5FFF5757FE
      5A5AFF5F5FFF5656FF4F4FE2CBCBDEFFFFFFFFFFFFA6A6CC3B3BE35A5AFF5F5F
      FF6363FF5F5FF0D2D2E2E3E3DDD1D1D6DADAE7C8C8D7E2E2EBC1C1D4FBFBF481
      81E97070FF6E6EFF6868FF6565FF5D5DFF4F4FE2CACADEFFFFFFFFFFFFC2C2DF
      3D3DDD5D5DFF6666FF6B6BFF6A6AF9B4B4EDC0C0E4D2D2E1DADAE6C7C7D6E2E2
      EAC0C0D2F9F9F58787E97878FF7777FF7171FF6B6BFF5F5FFF5A5AE6DDDDEAFF
      FFFFFFFFFFFCFCFD9F9FE04646E66E6EFF7676FF7A7AFF7E7EFE7777ECD9D9E3
      DCDCE4C8C8D4E2E2E9C2C2D1FBFBF58F8FE78282FF7F7FFF7A7AFF6F6FFF5D5D
      EFBDBDECFEFEFEFFFFFFFFFFFFFFFFFFFFFFFF9C9CDD4F4FE78181FF8585FF89
      89FF8383F2DBDBE2E0E0E6CCCCDAE2E2ECC3C3D2FFFFF49797EC8A8AFF8989FF
      8080FF6161F0BBBBE9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9999
      DE5959E89191FF9393FF9595FEAFAFF8ACACEDD3D3E2F2F2F3AAAAE5B6B6F99B
      9BFE9696FF8F8FFF6868EFB8B8E8FFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFE9898DF6161E7A2A2FFAAAAFFA8A8FFA6A6FFC5C5F1D7D7
      F5AEAEFEA5A5FFABABFFA0A0FF6C6CEEB5B5E7FFFFFEFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9898E16868E89898FC9B9BFC
      9F9FFC9C9CFD9999FC9F9FFC9D9DFC9797FC7272EDB5B5E7FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF
      AFEA8C8CEA9393EA9494EA9595EB9595EA9494EA9393EB8C8CEAC0C0ECFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFAFAFAFAFAFAFAFAFBFAFAFAFAFAFAFAFAFAF9F9FAFB
      FBFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
  end
  object cboQuinzena: TComboBox
    Left = 28
    Top = 48
    Width = 145
    Height = 24
    Style = csDropDownList
    Anchors = [akTop, akRight]
    ItemHeight = 16
    TabOrder = 0
    Items.Strings = (
      '1� Quinzena'
      '2� Quinzena')
  end
  object cboMes: TComboBox
    Left = 181
    Top = 48
    Width = 145
    Height = 24
    Style = csDropDownList
    Anchors = [akTop, akRight]
    ItemHeight = 16
    TabOrder = 1
    Items.Strings = (
      ''
      'Janeiro'
      'Fevereiro'
      'Mar�o'
      'Abril'
      'Maio'
      'Junho'
      'Julho'
      'Agosto'
      'Setembro'
      'Outubro'
      'Novembro'
      'Dezembro')
  end
  object cboAno: TComboBox
    Left = 333
    Top = 48
    Width = 145
    Height = 24
    Style = csDropDownList
    Anchors = [akTop, akRight]
    ItemHeight = 16
    TabOrder = 2
    Items.Strings = (
      '2013'
      '2014'
      '2015'
      '2016'
      '2017'
      '2018'
      '2019'
      '2020'
      '2021')
  end
  object GroupBox5: TGroupBox
    Left = 153
    Top = 96
    Width = 193
    Height = 57
    Caption = 'Retira/Recebimento'
    TabOrder = 4
    object DBEdit1: TDBEdit
      Left = 16
      Top = 24
      Width = 153
      Height = 24
      DataField = 'RECIBO'
      DataSource = frmPgtoFrete.dsGera
      TabOrder = 0
    end
  end
  object qrTrans: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    SQL.Strings = (
      'SELECT TRANS_ID, TRANS_FANTASIA'
      'FROM TRANSPORTADORA'
      'ORDER BY TRANS_FANTASIA')
    Left = 408
    Top = 24
    object qrTransTRANS_ID: TAutoIncField
      FieldName = 'TRANS_ID'
      ReadOnly = True
    end
    object qrTransTRANS_FANTASIA: TStringField
      FieldName = 'TRANS_FANTASIA'
      Size = 40
    end
  end
  object dspTrans: TDataSetProvider
    DataSet = qrTrans
    Constraints = True
    Left = 408
    Top = 80
  end
  object cdsTrans: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTrans'
    Left = 408
    Top = 144
    object cdsTransTRANS_FANTASIA: TStringField
      DisplayWidth = 40
      FieldName = 'TRANS_FANTASIA'
      Size = 40
    end
    object cdsTransTRANS_ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'TRANS_ID'
      ReadOnly = True
      Visible = False
    end
  end
  object qrAux: TADOQuery
    Connection = FMenu.ADOConnection
    Parameters = <>
    SQL.Strings = (
      'SELECT MAX(LANC_MANUAL) AS NEWLANC FROM PGTO_FRETE')
    Left = 404
    Top = 208
  end
end
