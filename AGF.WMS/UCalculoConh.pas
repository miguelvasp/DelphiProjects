unit UCalculoConh;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBClient, Provider, Db, DBTables, Wwquery;

type
  TfrmCalculoConh = class(TForm)
    Q_OCE: TwwQuery;
    Q_OCEMARCADOR: TStringField;
    Q_OCEORD_STATUS: TStringField;
    Q_OCEORD_CONH: TStringField;
    Q_OCEORD_MINUTA: TStringField;
    Q_OCEOS_ID: TIntegerField;
    Q_OCEVEICNOME: TStringField;
    Q_OCEREGNOME: TStringField;
    Q_OCECLIFraza: TStringField;
    Q_OCEORD_ID: TAutoIncField;
    Q_OCECFACODI: TStringField;
    Q_OCEORD_CONSIGN: TStringField;
    Q_OCEORD_PESO_TOTAL: TFloatField;
    Q_OCEORD_VOLUME: TFloatField;
    Q_OCEORD_QTDE_PALLET: TFloatField;
    Q_OCEORD_VALORTOTAL: TFloatField;
    Q_OCEORD_TPCARGA: TStringField;
    Q_OCEORD_QTDE_UV: TFloatField;
    Q_OCEORD_PLACA: TStringField;
    Q_OCEORD_TOTALPREST: TFloatField;
    Q_OCEORD_VLR_ICMS: TFloatField;
    Q_OCEORD_NOTAS: TStringField;
    Q_OCETRANS_ID_REDES: TIntegerField;
    Q_OCEORD_PAGO: TStringField;
    Q_OCECLIN_ID: TIntegerField;
    Q_OCEORD_VLR_FRETE: TFloatField;
    Q_OCEORD_VLR_SECCAT: TFloatField;
    Q_OCEORD_VLR_DESPACHO: TFloatField;
    Q_OCEORD_VLR_PEDAGIO: TFloatField;
    Q_OCEORD_VLR_OUTROS: TFloatField;
    Q_OCEVEIC_ID_RECEB: TIntegerField;
    Q_OCEREG_ID: TIntegerField;
    Q_OCEMANI_ID: TIntegerField;
    Q_OCETRANS_ID: TIntegerField;
    Q_OCEVEIC_ID: TIntegerField;
    Q_OCEORD_COLETA_ENTREGA: TStringField;
    Q_OCEORD_COL_ENDERECO: TStringField;
    Q_OCEORD_COL_ENDERECO_COMPL: TStringField;
    Q_OCEORD_COL_ENDERECO_BAIRRO: TStringField;
    Q_OCEMUN_ID_COL: TIntegerField;
    Q_OCEORD_COL_MUNICIPIO: TStringField;
    Q_OCEUF_SIGLA_COL: TStringField;
    Q_OCEORD_COL_CEP: TStringField;
    Q_OCEORD_COL_TEL1: TStringField;
    Q_OCEORD_COL_TEL2: TStringField;
    Q_OCEORD_COL_FAX: TStringField;
    Q_OCEORD_COL_EMAIL: TStringField;
    Q_OCEORD_COL_CONTATO: TStringField;
    Q_OCEORD_ENT_ENDERECO: TStringField;
    Q_OCEORD_ENT_ENDERECO_COMPL: TStringField;
    Q_OCEORD_ENT_ENDERECO_BAIRRO: TStringField;
    Q_OCEMUN_ID_ENT: TIntegerField;
    Q_OCEORD_ENT_MUNICIPIO: TStringField;
    Q_OCEUF_SIGLA_ENT: TStringField;
    Q_OCEORD_ENT_CEP: TStringField;
    Q_OCEORD_ENT_TEL1: TStringField;
    Q_OCEORD_ENT_TEL2: TStringField;
    Q_OCEORD_ENT_FAX: TStringField;
    Q_OCEORD_ENT_EMAIL: TStringField;
    Q_OCEORD_ENT_CONTATO: TStringField;
    Q_OCECLIF_ID: TIntegerField;
    Q_OCECLINraza: TStringField;
    Q_OCETRANSRaza: TStringField;
    Q_OCEMUNIdesc: TStringField;
    Q_OCEMUNIdescENT: TStringField;
    Q_OCETransEND: TStringField;
    Q_OCETransENDCOMPL: TStringField;
    Q_OCETransCNPJ: TStringField;
    Q_OCETransPESSOA: TStringField;
    Q_OCETransMUN_ID: TIntegerField;
    Q_OCEORD_ALIQ: TFloatField;
    Q_OCEORD_REDESPACHO: TStringField;
    Q_OCECFA_ID: TIntegerField;
    Q_OCEUFCli: TStringField;
    Q_OCEORD_OBS: TStringField;
    Q_OCEORD_GENERICO: TStringField;
    dspOCE: TDataSetProvider;
    cdsOCE: TClientDataSet;
    cdsOCEMARCADOR: TStringField;
    cdsOCEORD_STATUS: TStringField;
    cdsOCEORD_CONH: TStringField;
    cdsOCEORD_MINUTA: TStringField;
    cdsOCEOS_ID: TIntegerField;
    cdsOCEVEICNOME: TStringField;
    cdsOCEREGNOME: TStringField;
    cdsOCECLIFraza: TStringField;
    cdsOCECFACODI: TStringField;
    cdsOCEORD_ID: TAutoIncField;
    cdsOCEORD_CONSIGN: TStringField;
    cdsOCEORD_PESO_TOTAL: TFloatField;
    cdsOCEORD_VOLUME: TFloatField;
    cdsOCEORD_QTDE_PALLET: TFloatField;
    cdsOCEORD_VALORTOTAL: TFloatField;
    cdsOCEORD_TPCARGA: TStringField;
    cdsOCEORD_QTDE_UV: TFloatField;
    cdsOCEORD_PLACA: TStringField;
    cdsOCEORD_TOTALPREST: TFloatField;
    cdsOCEORD_VLR_ICMS: TFloatField;
    cdsOCEORD_NOTAS: TStringField;
    cdsOCETRANS_ID_REDES: TIntegerField;
    cdsOCEORD_PAGO: TStringField;
    cdsOCECLIN_ID: TIntegerField;
    cdsOCEORD_VLR_FRETE: TFloatField;
    cdsOCEORD_VLR_SECCAT: TFloatField;
    cdsOCEORD_VLR_DESPACHO: TFloatField;
    cdsOCEORD_VLR_PEDAGIO: TFloatField;
    cdsOCEORD_VLR_OUTROS: TFloatField;
    cdsOCEVEIC_ID_RECEB: TIntegerField;
    cdsOCEREG_ID: TIntegerField;
    cdsOCEMANI_ID: TIntegerField;
    cdsOCETRANS_ID: TIntegerField;
    cdsOCEVEIC_ID: TIntegerField;
    cdsOCEORD_COLETA_ENTREGA: TStringField;
    cdsOCEORD_COL_ENDERECO: TStringField;
    cdsOCEORD_COL_ENDERECO_COMPL: TStringField;
    cdsOCEORD_COL_ENDERECO_BAIRRO: TStringField;
    cdsOCEMUN_ID_COL: TIntegerField;
    cdsOCEORD_COL_MUNICIPIO: TStringField;
    cdsOCEUF_SIGLA_COL: TStringField;
    cdsOCEORD_COL_CEP: TStringField;
    cdsOCEORD_COL_TEL1: TStringField;
    cdsOCEORD_COL_TEL2: TStringField;
    cdsOCEORD_COL_FAX: TStringField;
    cdsOCEORD_COL_EMAIL: TStringField;
    cdsOCEORD_COL_CONTATO: TStringField;
    cdsOCEORD_ENT_ENDERECO: TStringField;
    cdsOCEORD_ENT_ENDERECO_COMPL: TStringField;
    cdsOCEORD_ENT_ENDERECO_BAIRRO: TStringField;
    cdsOCEMUN_ID_ENT: TIntegerField;
    cdsOCEORD_ENT_MUNICIPIO: TStringField;
    cdsOCEUF_SIGLA_ENT: TStringField;
    cdsOCEORD_ENT_CEP: TStringField;
    cdsOCEORD_ENT_TEL1: TStringField;
    cdsOCEORD_ENT_TEL2: TStringField;
    cdsOCEORD_ENT_FAX: TStringField;
    cdsOCEORD_ENT_EMAIL: TStringField;
    cdsOCEORD_ENT_CONTATO: TStringField;
    cdsOCECLIF_ID: TIntegerField;
    cdsOCECLINraza: TStringField;
    cdsOCETRANSRaza: TStringField;
    cdsOCEMUNIdesc: TStringField;
    cdsOCEMUNIdescENT: TStringField;
    cdsOCETransEND: TStringField;
    cdsOCETransENDCOMPL: TStringField;
    cdsOCETransCNPJ: TStringField;
    cdsOCETransPESSOA: TStringField;
    cdsOCETransMUN_ID: TIntegerField;
    cdsOCEORD_ALIQ: TFloatField;
    cdsOCEORD_REDESPACHO: TStringField;
    cdsOCECFA_ID: TIntegerField;
    cdsOCEUFCli: TStringField;
    cdsOCEORD_OBS: TStringField;
    cdsOCEORD_GENERICO: TStringField;
    Button1: TButton;
    Q_AUX: TwwQuery;
    Q_AUX1: TwwQuery;
    Q_AUX2: TwwQuery;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCalculoConh: TfrmCalculoConh;

implementation

uses U_Funcoes;

{$R *.DFM}

procedure TfrmCalculoConh.Button1Click(Sender: TObject);
var
  RECALC : real ;
  RECALC2 : real ;
  STROCExx : string;
begin

     STROCExx :=       cdsOCEORD_ID.asstring ;

     If (cdsOCE.state = dsedit )  then  cdsOCE.post ;



     Q_AUX.close ;
     Q_AUX.Sql.Clear ;
     Q_AUX.Sql.Add( ' select SUM((ORD_VLR_OUTROS ') ;
     Q_AUX.Sql.Add( ' +ORD_VLR_FRETE+ORD_VLR_SECCAT ') ;
     //Q_AUX.Sql.Add(' +ORD_VLR_DESPACHO+ORD_VLR_PEDAGIO)-ORD_VLR_ICMS) as TOTAL') ;
     Q_AUX.Sql.Add( ' +ORD_VLR_DESPACHO+ORD_VLR_PEDAGIO))  as TOTAL') ;
     Q_AUX.Sql.Add( ' from ordem_coleta_entrega');
     Q_AUX.Sql.Add( ' where ord_ID = ' + cdsOCEORD_ID.asstring ) ;
     Q_AUX.open ;

     Q_AUX1.close ;
     Q_AUX1.Sql.Clear ;
     Q_AUX1.Sql.Add( '  SELECT UF_ALIQUOTACONH FROM UF ') ;
     Q_AUX1.Sql.Add( '  WHERE UF_SIGLA = ' + '''' +  cdsOCEUFCli.asstring + '''');
     Q_AUX1.open ;

     IF Q_AUX.fieldbyname('TOTAL').asfloat <= 0 then begin
         Q_AUX2.close;
         Q_AUX2.sql.Clear;
         Q_AUX2.sql.Add(' Update ORDEM_COLETA_ENTREGA  set  ORD_VLR_ICMS = ' + inttostr(0));
         Q_AUX2.Sql.Add(' where ord_ID = ' + cdsOCEORD_ID.asstring) ;
         Q_AUX2.ExecSql;

         Q_AUX.close ;
         Q_AUX.Sql.Clear ;
         Q_AUX.Sql.Add( ' select SUM((ORD_VLR_OUTROS ') ;
         Q_AUX.Sql.Add( ' +ORD_VLR_FRETE+ORD_VLR_SECCAT ') ;
         Q_AUX.Sql.Add( ' +ORD_VLR_DESPACHO+ORD_VLR_PEDAGIO))  as TOTAL') ;
         Q_AUX.Sql.Add( ' from ordem_coleta_entrega');
         Q_AUX.Sql.Add( ' where ord_ID = ' + cdsOCEORD_ID.asstring ) ;
         Q_AUX.open ;


     end ;


     Q_AUX2.close ;
     Q_AUX2.Sql.Clear ;
     Q_AUX2.Sql.Add( ' select sum(ORD_VLR_OUTROS-ORD_VLR_ICMS)as DIF from ordem_coleta_entrega');
     Q_AUX2.Sql.Add( ' where ord_ID = ' + cdsOCEORD_ID.asstring ) ;
     Q_AUX2.open ;


      RECALC := (((Q_AUX.fieldbyname('TOTAL').asfloat){ - (Q_OCEORD_VLR_ICMS.asfloat)})/
      (1-Q_AUX1.fieldbyname('UF_ALIQUOTACONH').asfloat/100));

     RECALC2 := (RECALC - ((Q_AUX.fieldbyname('TOTAL').asfloat) {- (Q_OCEORD_VLR_ICMS.asfloat)})) ;




     Q_AUX.close;
     Q_AUX.sql.Clear;
     Q_AUX.sql.Add(' Update ORDEM_COLETA_ENTREGA  set ORD_VLR_OUTROS = ' + Funcoes.Converte(floattostr((Q_AUX2.fieldbyname('DIF').asfloat) + RECALC2) ,',','.') + ',');
     Q_AUX.Sql.Add(' ORD_VLR_ICMS = ' + Funcoes.Converte(floattostr(RECALC2) ,',','.') + ',');
     Q_AUX.Sql.Add(' ORD_ALIQ = ' + Funcoes.Converte(floattostr(Q_AUX1.fieldbyname('UF_ALIQUOTACONH').asfloat) ,',','.'));
     Q_AUX.Sql.Add(' where ord_ID = ' + cdsOCEORD_ID.asstring) ;
     Q_AUX.ExecSql;



     Q_AUX.close ;
     Q_AUX.Sql.Clear ;
     Q_AUX.Sql.Add( ' select SUM(ORD_VLR_OUTROS+ ') ;
     Q_AUX.Sql.Add( ' +ORD_VLR_FRETE+ORD_VLR_SECCAT ') ;
     Q_AUX.Sql.Add( ' +ORD_VLR_DESPACHO+ORD_VLR_PEDAGIO)  as TOTAL') ;
     Q_AUX.Sql.Add( ' from ordem_coleta_entrega');
     Q_AUX.Sql.Add( ' where ord_ID = ' + cdsOCEORD_ID.asstring ) ;
     Q_AUX.open ;


     Q_AUX1.close;
     Q_AUX1.sql.Clear;
     Q_AUX1.sql.Add(' Update ORDEM_COLETA_ENTREGA  set ORD_TOTALPREST = ' + Funcoes.Converte(floattostr(Q_AUX.fieldbyname('TOTAL').asfloat) ,',','.'));
     Q_AUX1.Sql.Add('  where  ord_CONH = ' + '''' + cdsOCEORD_CONH.asstring + '''') ;
     Q_AUX1.ExecSql;


end;

end.
