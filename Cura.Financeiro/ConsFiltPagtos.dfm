˙
 TFPAGTOSFILT 0  TPF0TFPagtosFiltFPagtosFiltLeft\Top(WidthńHeightCaptionConsultas de  PagamentosColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Heightő	Font.NameMS Sans Serif
Font.Style OldCreateOrder	OnClose	FormCloseOnCreate
FormCreatePixelsPerInch`
TextHeight TSpeedButtonSBT_SAIRLeftä TopRWidthUHeightHintSair da tela atualCaption&Sair
Glyph.Data
z  v  BMv      v   (   @                                                ŔŔŔ    ˙  ˙   ˙˙ ˙   ˙ ˙ ˙˙  ˙˙˙ 3     3333     333333333333ťťťť33?3333333333333ťťť33ó333333333333ťťť338?333333333333ťť333333333333333ťť333333333333?33ťť3333333ą3333333ťť333333333333333ťť3333333333˙˙ó33ťť333ó333îî338ó33°ťť3333333îî338˙řó33ťť3333333îî338333ťť33?333333333333áťť33333333˙˙˙˙33îťť33˙˙33     3333     333	NumGlyphsParentShowHintShowHint	OnClickSBT_SAIRClick  TSpeedButtonSBT_IMPRLeft TopRWidthUHeightHintConsultaCaptionConsulta
Glyph.Data
z  v  BMv      v   (                                                  żżż   ˙  ˙   ˙˙ ˙   ˙ ˙ ˙˙  ˙˙˙ 33333333?˙˙˙˙˙˙˙        wwwwwwww˙˙˙˙˙˙đ?ó˙?ó˙÷ đ đ đw7sw7w7˙˙˙˙˙˙đ?ó˙?ó˙÷ đ đ đw7sw7w7˙˙˙˙˙˙đ?ó˙?ó˙÷ đ đ đw7sw7w7˙˙˙˙˙˙đ?ó˙?ó˙÷ đ đ đw7sw7w7˙˙˙˙˙˙đ˙˙˙˙˙˙÷ĚĚĚĚĚĚŔwwwwwwwwĚĚĚĚČ÷wwww÷        wwwwwwww33333333333333333333333333333333	NumGlyphsParentShowHintShowHint	OnClickSBT_IMPRClick  TRadioGroupRadioGroup1Left2TopWidthyHeightyCaption	OrdenaçăoItems.Strings
Fornecedor
Vencimento TabOrder   	TGroupBoxGRB_FILTLeft2Top WidthyHeightË Caption	 Filtros TabOrder TLabelLabel1LeftTopjWidth[HeightCaptionCentro de Custo de  TLabelLabel3Leftž TopjWidthHeightCaptionaté  TLabelLabel2LeftTopWidthHHeightCaptionFornecedor de   TLabelLabel4LeftMTop1WidthHeightCaptionaté  TLabelLabel6LeftTopOWidthGHeightCaptionVencimento de  TLabelLabel7Leftž TopOWidthHeightCaptionaté  TLabelLabel5LeftTop Width[HeightCaptionConta Gerencial de  TLabelLabel8Leftž Top WidthHeightCaptionaté  TLabelLabel9Left>Top WidthHeightCaptionBanco  TDBLookupComboBoxDBLookupComboBox1Left`TopWidth HeightKeyFieldFOR_CODI	ListFieldFOR_CODI
ListSourceDS_FORNTabOrder   TDBLookupComboBoxDBLookupComboBox2Left`Top0Width HeightKeyFieldFOR_CODI	ListFieldFOR_CODI
ListSourceDS_FORNTabOrder  	TMaskEdit	MaskEdit3Left`TopJWidthYHeightEditMask!99/99/0000;1;_	MaxLength
TabOrderText
  /  /      	TMaskEdit	MaskEdit4LeftÓ TopJWidthXHeightEditMask!99/99/0000;1;_	MaxLength
TabOrderText
  /  /      TDBLookupComboBoxDBLookupComboBox3Left`Top Width HeightKeyFieldBAN_CODI	ListFieldBAN_CODI
ListSourceDS_BANCTabOrder  TRadioButtonRadioButton1Left`Top¸ WidthqHeightCaptionPagosTabOrder  TRadioButtonRadioButton2LeftŘ Top¸ WidthqHeightCaptionA PagarTabOrder  TDBLookupComboBoxDBLookupComboBox4Left`TopdWidthQHeightKeyFieldFIL_CODI	ListFieldFIL_CODI
ListSourceDS_FILITabOrder  TDBLookupComboBoxDBLookupComboBox5LeftÓ TopdWidthQHeightKeyFieldFIL_CODI	ListFieldFIL_CODI
ListSourceDS_FILITabOrder  TDBLookupComboBoxDBLookupComboBox6Left`Top WidthQHeightKeyFieldCON_CODI	ListFieldCON_CODI
ListSourceDS_CONTTabOrder	  TDBLookupComboBoxDBLookupComboBox7LeftÓ Top WidthQHeightKeyFieldCON_CODI	ListFieldCON_CODI
ListSourceDS_CONTTabOrder
   TwwQueryQ_FORNDatabaseName
FinanceiroSQL.Strings9select FOR_CODI,FOR_RAZA  from CPAFORN order  by FOR_CODI ValidateWithMask	LeftTop°  TStringFieldQ_FORNFOR_CODI	FieldNameFOR_CODIOriginCPAFORN.FOR_CODISize  TStringFieldQ_FORNFOR_RAZA	FieldNameFOR_RAZAOriginCPAFORN.FOR_RAZASize(   TwwDataSourceDS_FORNDataSetQ_FORNLeftTopĚ   TwwQueryQ_BANCDatabaseName
FinanceiroSQL.Strings%Select BAN_CODI,BAN_NOME from CPABANC ValidateWithMask	LeftTopî  TStringFieldQ_BANCBAN_CODI	FieldNameBAN_CODIOriginCPABANC.BAN_CODISize  TStringFieldQ_BANCBAN_NOME	FieldNameBAN_NOMEOriginCPABANC.BAN_NOMESize   TwwDataSourceDS_BANCDataSetQ_BANCLeftTop  TwwQueryQ_FILIDatabaseName
FinanceiroSQL.Strings%select FIL_CODI,FIL_DESC from CPAFILI ValidateWithMask	LeftpTopđ  TStringFieldQ_FILIFIL_CODI	FieldNameFIL_CODIOriginCPAFILI.FIL_CODISize  TStringFieldQ_FILIFIL_DESC	FieldNameFIL_DESCOriginCPAFILI.FIL_DESC   TwwQueryQ_CONTDatabaseName
FinanceiroSQL.Strings'select CON_CODI,CON_DESC  from CPACONT  ValidateWithMask	LeftpTop°  TStringFieldQ_CONTCON_CODI	FieldNameCON_CODIOriginCPACONT.CON_CODISize  TStringFieldQ_CONTCON_DESC	FieldNameCON_DESCOriginCPACONT.CON_DESCSize   TwwDataSourceDS_FILIDataSetQ_FILILeftpTop  TwwDataSourceDS_CONTDataSetQ_CONTLeftpTopĚ    