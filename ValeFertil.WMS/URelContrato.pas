unit URelContrato;

{Select A.*,B.CLIN_RAZA,C.TOS_NOME,D.PAR_NOME,E.SER_NOME,
F.CTTSERV_COBRADO,F.CTTSERV_ID,G.TSER_NOME,H.TDOC_NOME,
I.*,J.UCOB_NOME,K.CLIF_RAZA,L.REG_NOME,M.VEIC_NOME,
N.TPRO_NOME
from
Contrato A,ClienteNBF B,TPOS C,Parametro D,Servico E,Contrato_Servico F,
TPServico G,TpDoc H,Contrato_Especificacoes I ,UnidCobranca J,
clienteFINAL K,Regiao L,TpVeiculo M,TPPRODUTO_CLINBF N
where A.CLIN_ID = B.CLIN_ID  and
      A.TOS_ID = C.TOS_ID  and
      A.PAR_ID = D.PAR_ID and
            A.CTT_ID = F.CTT_ID and
            F.SER_ID = E.SER_ID and
            E.TSER_ID = G.TSER_ID  and
            F.TDOC_ID  = H.TDOC_ID and
            I.UCOB_ID = J.UCOB_ID and
            I.CLIF_ID = K.CLIF_ID and
            I.REG_ID = L.REG_ID and
            I.VEIC_ID = M.VEIC_ID and
            I.TPRO_ID = N.TPRO_ID  order by A.CTT_ID,F.CTTSERV_Id,I.CTTESPEC_ID

}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Qrctrls, Db, DBTables, Wwquery, Wwdatsrc, jpeg;

type
  TFRelContratos = class(TForm)
    QRLabel10: TQRLabel;
    dt_inicio: TQRDBText;
    ucob_id: TQRDBText;
    QRDBText1: TQRDBText;
    spec_tpcarga: TQRDBText;
    CONTRA: TQuickRep;
    QRBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel1: TQRLabel;
    QRImage1: TQRImage;
    QRLabel3: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRSysData3: TQRSysData;
    QRGroup1: TQRGroup;
    Q_CONTRA: TwwQuery;
    QRShape1: TQRShape;
    QRSysData2: TQRSysData;
    Q_ESPEC: TwwQuery;
    DS_CONTRA: TwwDataSource;
    Q_CONTRACTT_ID: TAutoIncField;
    Q_CONTRACLIN_ID: TIntegerField;
    Q_CONTRACTT_NOME: TStringField;
    Q_CONTRATOS_ID: TIntegerField;
    Q_CONTRACTT_DT_INICIO: TDateTimeField;
    Q_CONTRACTT_DT_FINAL: TDateTimeField;
    Q_CONTRAEMP_ID: TIntegerField;
    Q_CONTRACTT_TERCEIRO: TStringField;
    Q_CONTRAPAR_ID: TIntegerField;
    Q_CONTRACLIN_RAZA: TStringField;
    Q_CONTRATOS_NOME: TStringField;
    Q_CONTRAPAR_NOME: TStringField;
    Q_SERV: TwwQuery;
    QRSubDetail2: TQRSubDetail;
    QRDBText3: TQRDBText;
    Q_ESPECCTTESPEC_ID: TAutoIncField;
    Q_ESPECCTT_ID: TIntegerField;
    Q_ESPECCTTSERV_ID: TIntegerField;
    Q_ESPECCTTESPEC_ORDEM: TIntegerField;
    Q_ESPECSER_ID: TIntegerField;
    Q_ESPECTSER_ID: TIntegerField;
    Q_ESPECCTTESPEC_FATOR: TFloatField;
    Q_ESPECCTTESPEC_MINIMA: TIntegerField;
    Q_ESPECUCOB_ID: TIntegerField;
    Q_ESPECCTTESPEC_TPCARGA: TStringField;
    Q_ESPECCLIF_ID: TIntegerField;
    Q_ESPECVEIC_ID: TIntegerField;
    Q_ESPECREG_ID: TIntegerField;
    Q_ESPECTPRO_ID: TIntegerField;
    Q_ESPECCTTESPEC_PESO_DE: TFloatField;
    Q_ESPECCTTESPEC_PESO_ATE: TFloatField;
    Q_ESPECCTTESPEC_AREA_DE: TFloatField;
    Q_ESPECCTTESPEC_AREA_ATE: TFloatField;
    Q_ESPECCTTESPEC_QTDEPALLET_DE: TIntegerField;
    Q_ESPECCTTESPEC_QTDEPALLET_ATE: TIntegerField;
    Q_ESPECCTTESPEC_VOL_DE: TFloatField;
    Q_ESPECCTTESPEC_VOL_ATE: TFloatField;
    QRDBText17: TQRDBText;
    serv_cobrado: TQRDBText;
    QRDBText18: TQRDBText;
    DS_ESPEC: TwwDataSource;
    Q_SERV2: TwwQuery;
    Q_SERV2SER_ID: TAutoIncField;
    Q_SERV2TSER_ID: TIntegerField;
    Q_SERV2SER_NOME: TStringField;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel155: TQRLabel;
    Q_TPSERV: TwwQuery;
    Q_TPSERVTSER_ID: TAutoIncField;
    Q_TPSERVTSER_NOME: TStringField;
    Q_TPSERVTSER_CONCEITO: TMemoField;
    Q_SERV2TserNOME: TStringField;
    Q_SERVCTTSERV_ID: TAutoIncField;
    Q_SERVCTT_ID: TIntegerField;
    Q_SERVSER_ID: TIntegerField;
    Q_SERVTSER_ID: TIntegerField;
    Q_SERVCTTSERV_COBRADO: TStringField;
    Q_SERVTDOC_ID: TIntegerField;
    Q_TDOC: TwwQuery;
    Q_SERVTDOCnome: TStringField;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    Q_UNIDCOB: TwwQuery;
    Q_UNIDCOBUCOB_ID: TAutoIncField;
    Q_UNIDCOBUCOB_NOME: TStringField;
    Q_ESPECUcobNOME: TStringField;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    Q_CLIF: TwwQuery;
    Q_ESPECCLIFraza: TStringField;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    Q_REG: TwwQuery;
    Q_REGREG_ID: TAutoIncField;
    Q_REGREG_NOME: TStringField;
    Q_ESPECRegNOME: TStringField;
    QRDBText21: TQRDBText;
    Q_TPVEIC: TwwQuery;
    Q_TPVEICVEIC_ID: TAutoIncField;
    Q_TPVEICVEIC_NOME: TStringField;
    Q_ESPECVEICnome: TStringField;
    Q_TPROD: TwwQuery;
    Q_TPRODTPRO_ID: TAutoIncField;
    Q_TPRODTPRO_NOME: TStringField;
    Q_TPRODCLIN_ID: TIntegerField;
    Q_ESPECTPROnome: TStringField;
    QRDBText22: TQRDBText;
    QRShape2: TQRShape;
    Q_TDOCTDTO_ID: TAutoIncField;
    Q_TDOCTOS_ID: TIntegerField;
    Q_TDOCTDOC_ID: TIntegerField;
    Q_TDOCTDTO_ORDEM: TIntegerField;
    Q_TDOCTDOC_NOME: TStringField;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    Q_CLIFCLIF_ID: TAutoIncField;
    Q_CLIFCLIF_RAZA: TStringField;
    Q_CLIFCLIF_ENDERECO: TStringField;
    Q_CLIFCLIF_ENDERECO_BAIRRO: TStringField;
    Q_CLIFUF_SIGLA: TStringField;
    Q_MUNI: TwwQuery;
    DS_CLIF: TwwDataSource;
    Q_CLIFMUN_ID: TIntegerField;
    Q_MUNIMUN_ID: TAutoIncField;
    Q_MUNIDIPAM: TStringField;
    Q_MUNIMUN_NOME: TStringField;
    Q_MUNIUF_SIGLA: TStringField;
    Q_MUNIREG_ID: TIntegerField;
    QRLabel37: TQRLabel;
    clin_id: TQRDBText;
    ctt_nome: TQRDBText;
    QRLabel6: TQRLabel;
    tos_id: TQRDBText;
    tipodeOS: TQRLabel;
    par_id: TQRDBText;
    QRLabel7: TQRLabel;
    remessa: TQRDBText;
    dt_termino: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel13: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel8: TQRLabel;
    QRShape5: TQRShape;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure remessaPrint(sender: TObject; var Value: String);
    procedure serv_cobradoPrint(sender: TObject; var Value: String);
    procedure QRDBText16Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelContratos: TFRelContratos;

implementation
uses USenha,UMenu, UAbTabelas, UFRelContrato ;
{$R *.DFM}

procedure TFRelContratos.FormCreate(Sender: TObject);
//var SQLAux : String;
begin
   Q_CONTRA.close ;
   Q_CONTRA.SQL.clear ;
   Q_CONTRA.SQL.ADD('Select A.*,B.CLIN_RAZA,C.TOS_NOME,D.PAR_NOME');
   Q_CONTRA.SQL.ADD('from');
   Q_CONTRA.SQL.ADD('Contrato A,ClienteNBF B,TPOS C,Parametro D');
   Q_CONTRA.SQL.ADD('where A.CLIN_ID = B.CLIN_ID  and ')  ;
   Q_CONTRA.SQL.ADD('A.TOS_ID = C.TOS_ID  and  ');
   Q_CONTRA.SQL.ADD('A.PAR_ID = D.PAR_ID   ');

   if CLI <> '' then
         Q_CONTRA.SQL.ADD ( 'and A.CLIN_ID =   ' + CLI ) ;
   if TPOS <> '' then
         Q_CONTRA.SQL.ADD ( 'and A.TOS_ID = ' + TPOS  ) ;
   if CONT <> '' then
         Q_CONTRA.SQL.ADD ( 'and A.CTT_ID =  ' + CONT ) ;

   //Q_CONTRA.SQL.ADD ( 'order by D.CLIN_NOME' ) ;
   Q_CONTRA.open;


  Q_ESPEC.open ;
  Q_SERV2.open ;
  Q_SERV.open ;
  Q_TPSERV.open ;
  Q_TDOC.open ;
  Q_UNIDCOB.open;
  Q_CLIF.open ;
  Q_TPVEIC.open ;
  Q_REG.open ;
  Q_TPROD.open  ;
  Q_MUNI.open ;

end;

procedure TFRelContratos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Q_CONTRA.close ;
  Q_ESPEC.close ;
  Q_CONTRA.close;
  Q_ESPEC.close ;
  Q_SERV2.close ;
  Q_SERV.close ;
  Q_TPSERV.close ;
  Q_TDOC.close ;
  Q_UNIDCOB.close;
  Q_CLIF.close ;
  Q_TPVEIC.close ;
  Q_REG.close ;
  Q_TPROD.close  ;
  Q_MUNI.close ;
  action := cafree ;
end;

procedure TFRelContratos.remessaPrint(sender: TObject; var Value: String);
begin
  If (Value = 'S') then Value := 'Sim';
  If (Value = 'N') then Value := 'Não';
end;

procedure TFRelContratos.serv_cobradoPrint(sender: TObject;
  var Value: String);
begin
  If (Q_SERVCTTSERV_COBRADO.asstring = 'S') then Value := 'Sim';
  If (Q_SERVCTTSERV_COBRADO.asstring = 'N') then Value := 'Não';
end;

procedure TFRelContratos.QRDBText16Print(sender: TObject;
  var Value: String);
begin
  If (Q_ESPECCTTESPEC_TPCARGA.asstring = 'N') then Value := 'Não se Aplica';
  If (Q_ESPECCTTESPEC_TPCARGA.asstring = 'P') then Value := 'Pallets';
  If (Q_ESPECCTTESPEC_TPCARGA.asstring = 'G') then Value := 'Granel';
end;

end.
