�
 TFCONSPAGTOS 0q  TPF0TFConsPagtosFConsPagtosLeft\Top)Width�Height�CaptionConsultas de PagamentosColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	PixelsPerInch`
TextHeight 	TwwDBGrid	wwDBGrid1Left Top8Width�Height)Selected.StringsFornecedor	15	FornecedorContaGerencial	6	ContaGerencialValorTitulo	10	ValorTituloVencimento	10	VencimentoBancoConta	14	BancoContaHistorico	50	HistoricoSaldo	10	SaldoNumero	10	NumeroFIL_DESC	20	Centro de Custo IniAttributes.Delimiter;;
TitleColor	clBtnFace	FixedCols ShowHorzScrollBar	
DataSourceDS_ConsultasFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTabOrder TitleAlignmenttaLeftJustifyTitleFont.CharsetANSI_CHARSETTitleFont.ColorclNavyTitleFont.Height�TitleFont.NameArialTitleFont.StylefsBold 
TitleLinesTitleButtonsIndicatorColoricBlack  TwwQueryQ_ConsultasDatabaseName
FinanceiroFiltered	SQL.Strings:Select A.*,B.FIL_CODI,B.FIL_DESC  from CPAPAGA A,CPAFILI B/where A.Filial = B.FIL_CODI order by Fornecedor ValidateWithMask	LeftTop�  TStringFieldQ_ConsultasFornecedorDisplayWidth	FieldName
FornecedorOriginCPAPAGA.FornecedorSize  TStringFieldQ_ConsultasContaGerencialDisplayWidth	FieldNameContaGerencialOriginCPAPAGA.ContaGerencialSize  TFloatFieldQ_ConsultasValorTituloDisplayWidth
	FieldNameValorTituloOriginCPAPAGA.ValorTitulo  TDateTimeFieldQ_ConsultasVencimentoDisplayWidth
	FieldName
VencimentoOriginCPAPAGA.Vencimento  TStringFieldQ_ConsultasBancoContaDisplayWidth	FieldName
BancoContaOriginCPAPAGA.BancoContaSize  TStringFieldQ_ConsultasHistoricoDisplayWidth2	FieldName	HistoricoOriginCPAPAGA.HistoricoSize2  TFloatFieldQ_ConsultasSaldoDisplayWidth
	FieldNameSaldoOriginCPAPAGA.Saldo  TIntegerFieldQ_ConsultasNumeroDisplayWidth
	FieldNameNumeroOriginCPAPAGA.Numero  TStringFieldQ_ConsultasFIL_DESCDisplayLabelCentro de CustoDisplayWidth	FieldNameFIL_DESCOriginCPAPAGA.Fornecedor  TStringFieldQ_ConsultasDocumentoDisplayWidth	FieldName	DocumentoOriginCPAPAGA.DocumentoVisibleSize  TStringFieldQ_ConsultasRazaoDisplayWidth(	FieldNameRazaoOriginCPAPAGA.RazaoVisibleSize(  TFloatFieldQ_ConsultasDescAcrescDisplayWidth
	FieldName
DescAcrescOriginCPAPAGA.DescAcrescVisible  TFloatFieldQ_ConsultasValorLiquidoDisplayWidth
	FieldNameValorLiquidoOriginCPAPAGA.ValorLiquidoVisible  TDateTimeFieldQ_ConsultasEmissaoDisplayWidth
	FieldNameEmissaoOriginCPAPAGA.EmissaoVisible  TStringFieldQ_ConsultasMoedaDisplayWidth	FieldNameMoedaOriginCPAPAGA.MoedaVisibleSize  TDateTimeFieldQ_ConsultasDataMoedaDisplayWidth
	FieldName	DataMoedaOriginCPAPAGA.DataMoedaVisible  TStringFieldQ_ConsultasMoedaOriginalDisplayWidth	FieldNameMoedaOriginalOriginCPAPAGA.MoedaOriginalVisibleSize  TDateTimeFieldQ_ConsultasDataMoedaOriginalDisplayWidth
	FieldNameDataMoedaOriginalOriginCPAPAGA.DataMoedaOriginalVisible  TFloatFieldQ_ConsultasValorOriginalDisplayWidth
	FieldNameValorOriginalOriginCPAPAGA.ValorOriginalVisible  TDateTimeFieldQ_ConsultasVencimentoPrevistoDisplayWidth
	FieldNameVencimentoPrevistoOriginCPAPAGA.VencimentoPrevistoVisible  TStringFieldQ_ConsultasFlagDisplayWidth	FieldNameFlagOriginCPAPAGA.FlagVisibleSize  TStringFieldQ_ConsultasSituacaoDisplayWidth	FieldNameSituacaoOriginCPAPAGA.SituacaoVisibleSize   TwwDataSourceDS_ConsultasDataSetQ_ConsultasLeft� Top�    