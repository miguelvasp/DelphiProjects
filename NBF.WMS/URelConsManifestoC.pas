unit URelConsManifestoC;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, gtQrCtrls, QuickRpt, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery;

type
  TFRelConsManifestoC = class(TForm)
    ConsMANIF: TQuickRep;
    QRBand1: TQRBand;
    QRImage1: TgtQRImage;
    QRLabel1: TgtQRLabel;
    QRLabel2: TgtQRLabel;
    QRLabel3: TgtQRLabel;
    QRSysData1: TgtQRSysData;
    QRLabel4: TgtQRLabel;
    QRSysData2: TgtQRSysData;
    QRLabel5: TgtQRLabel;
    QRSysData3: TgtQRSysData;
    QRLabel17: TgtQRLabel;
    QRShape1: TgtQRShape;
    QRLabel18: TgtQRLabel;
    QRLabel19: TgtQRLabel;
    QRLabel20: TgtQRLabel;
    QRLabel21: TgtQRLabel;
    QRLabel22: TgtQRLabel;
    QRLabel23: TgtQRLabel;
    QRLabel24: TgtQRLabel;
    QRLabel25: TgtQRLabel;
    QRLabel26: TgtQRLabel;
    QRLabel27: TgtQRLabel;
    QRLabel28: TgtQRLabel;
    QRLabel29: TgtQRLabel;
    QRLabel32: TgtQRLabel;
    QRLabel33: TgtQRLabel;
    QRGroup1: TQRGroup;
    QRSubDetail1: TQRSubDetail;
    gtQRDBText1: TgtQRDBText;
    gtQRDBText4: TgtQRDBText;
    gtQRDBText5: TgtQRDBText;
    gtQRDBText6: TgtQRDBText;
    gtQRDBText7: TgtQRDBText;
    QRGroup2: TQRGroup;
    gtQRLabel1: TgtQRLabel;
    QRDBText10: TgtQRDBText;
    QRDBText9: TgtQRDBText;
    QRDBText1: TgtQRDBText;
    gtQRLabel4: TgtQRLabel;
    QRDBText2: TgtQRDBText;
    QRDBText3: TgtQRDBText;
    gtQRLabel5: TgtQRLabel;
    QRDBText4: TgtQRDBText;
    QRDBText5: TgtQRDBText;
    gtQRLabel6: TgtQRLabel;
    gtQRLabel7: TgtQRLabel;
    QRDBText6: TgtQRDBText;
    QRLabel38: TgtQRLabel;
    QRLabel39: TgtQRLabel;
    QRLabel6: TgtQRLabel;
    QRLabel7: TgtQRLabel;
    QRLabel8: TgtQRLabel;
    QRLabel9: TgtQRLabel;
    QRLabel10: TgtQRLabel;
    QRLabel11: TgtQRLabel;
    QRShape3: TgtQRShape;
    QRShape2: TgtQRShape;
    Q_TRMOT: TwwQuery;
    Q_TRMOTMOT_NOME: TStringField;
    Q_TRMOTMOT_ID: TAutoIncField;
    Q_TRMOTTRANS_ID: TIntegerField;
    Q_VEIC: TwwQuery;
    Q_VEICVEIC_NOME: TStringField;
    Q_VEICVEIC_ID: TAutoIncField;
    Q_TRANS: TwwQuery;
    Q_TRANSTRANS_FANTASIA: TStringField;
    Q_TRANSTRANS_ID: TAutoIncField;
    DS_MANIF: TwwDataSource;
    Q_MANIF: TwwQuery;
    Q_MANIFMANI_ID: TAutoIncField;
    Q_MANIFOS_ID: TIntegerField;
    Q_MANIFCLIN_RAZA: TStringField;
    Q_MANIFMANI_DATA: TDateTimeField;
    Q_MANIFMANI_TIPOCARGA: TStringField;
    Q_MANIFVEICdescr: TStringField;
    Q_MANIFTranspDESCR: TStringField;
    Q_MANIFMOTdescr: TStringField;
    Q_MANIFVEIC_ID: TIntegerField;
    Q_MANIFTRANS_ID: TIntegerField;
    Q_MANIFMOT_ID: TIntegerField;
    Q_MANIFCONFIRMA_MANI: TStringField;
    Q_NFCOL: TwwQuery;
    Q_NFCOLCNF_NF: TStringField;
    Q_NFCOLCLIFraza: TStringField;
    Q_NFCOLCNF_UV: TFloatField;
    Q_NFCOLCNF_PESO: TFloatField;
    Q_NFCOLCNF_PALLETS: TIntegerField;
    Q_NFCOLCNF_VALOR: TFloatField;
    Q_NFCOLCNF_QTDENF: TIntegerField;
    Q_NFCOLCNF_ID: TAutoIncField;
    Q_NFCOLMANI_ID: TIntegerField;
    Q_NFCOLCLIF_ID: TIntegerField;
    DS_NFCOL: TwwDataSource;
    Q_CLIFINAL: TwwQuery;
    Q_CLIFINALCLIF_RAZA: TStringField;
    Q_CLIFINALCLIF_ID: TAutoIncField;
    gtQRLabel2: TgtQRLabel;
    gtQRDBText2: TgtQRDBText;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelConsManifestoC: TFRelConsManifestoC;

implementation      
uses UConsManifesto , UFConsManifesto;
{$R *.DFM}

procedure TFRelConsManifestoC.FormCreate(Sender: TObject);
begin
     Q_TRMOT.open ;
     Q_VEIC.open ;
     Q_TRANS.open ;

  IF CLI <> '' then
     qrLabel28.caption := FFConsManifesto.combo_cliente.text
   else
     qrLabel28.caption :=  'Não Preenchido'   ;

  IF  FFConsManifesto.dbnf.text <> '' then
     qrLabel25.caption :=  FFConsManifesto.dbnf.text
    else
     qrLabel25.caption := 'Não Preenchido'    ;

  IF FFConsManifesto.wwDBEdit1.text <> '' then
     qrLabel26.caption :=  FFConsManifesto.wwDBEdit1.text
  else
     qrLabel26.caption :='Não Preenchido' ;

  IF FFConsManifesto.wwDBEdit2.text <> '' then
     qrLabel27.caption :=  FFConsManifesto.wwDBEdit2.text
  else
     qrLabel27.caption := 'Não Preenchido'      ;

  IF TRANSP = 'S' then
      qrLABEL29.caption := 'Sim'
    else
      qrLABEL29.caption := 'Não' ;

  IF DATAI <> 0.00 then
     QRLabel32.caption :=  FFConsMANIFESTO.DATA1.text
  else
     QRLabel32.caption := 'Não Preenchido'       ;

  IF DATAF <> 0.00 then
     QRLabel33.caption :=  FFConsMANIFESTO.DATA2.text
  else
     QRLabel33.caption := 'Não Preenchido' ;


      { Q_MANIF.SQL.clear ;
       Q_MANIF.SQL.ADD('SELECT A.MANI_ID,A.MANI_DATA,A.MANI_TIPOCARGA,A.VEIC_ID,A.TRANS_ID,A.MOT_ID, ');
       Q_MANIF.SQL.ADD('B.CLIN_RAZA,C.OS_ID,A.CONFIRMA_MANI FROM MANIFESTO A,CLIENTENBF B,ORDEM_COLETA_ENTREGA C,COLETA_NF D ');
       Q_MANIF.SQL.ADD('where    A.MANI_Id      = C.MANI_ID  ');
       Q_MANIF.SQL.ADD('and A.CLIN_ID = B.CLIN_ID   ');
       Q_MANIF.SQL.ADD('and D.MANI_ID = A.MANI_ID   ');
       Q_MANIF.SQL.ADD('and A.MANI_ENT_COL = ' + '''' + TIPO + '''') ;
       Q_MANIF.SQL.ADD('and A.NFI_TRANS    = ' + '''' + TRANSP + '''') ;

       if DATAI <> 0.0 then
       
              Q_MANIF.SQL.ADD ( 'and convert(Char(10),A.MANI_DATA,112) >= ' +''''+ formatdatetime('YYYYMMDD',DATAI) + '''') ;
       if DATAF <> 0.0 then
              Q_MANIF.SQL.ADD ( 'and convert(Char(10),A.MANI_DATA,112) <= ' +''''+ formatdatetime('YYYYMMDD',DATAF) + '''') ;

       if MANIF <> '' then
              Q_MANIF.SQL.ADD ( 'and A.MANI_ID =   ' + MANIF ) ;
       if CLI <> '' then
              Q_MANIF.SQL.ADD ( 'and A.CLIN_ID = ' + CLI  ) ;
       if NF <> '' then
              Q_MANIF.SQL.ADD ( 'and D.CNF_NF like  ' + '''' + '%'+ NF + '%' + '''');

       if OS <> '' then
              Q_MANIF.SQL.ADD ( 'and C.OS_ID =  ' + '''' + OS + '''');


       Q_MANIF.SQL.ADD ( ' group by A.MANI_ID,A.MANI_DATA,A.MANI_TIPOCARGA,A.VEIC_ID, ') ;
       Q_MANIF.SQL.ADD ( ' A.TRANS_ID,A.MOT_ID,B.CLIN_RAZA,C.OS_ID,A.CONFIRMA_MANI  ') ;
       Q_MANIF.open ; }

       Q_MANIF.SQL.clear ;
       Q_MANIF.SQL.ADD('/*************/  SELECT  A.MANI_ID,A.MANI_DATA,A.MANI_TIPOCARGA,A.VEIC_ID,A.TRANS_ID,A.MOT_ID, ');
       Q_MANIF.SQL.ADD('B.CLIN_RAZA,D.OS_ID,A.CONFIRMA_MANI, A.REG_ID,A.MANI_VFRETEPAG ') ;
       Q_MANIF.SQL.ADD('FROM  COLETA_NF C LEFT OUTER JOIN  ORDEM_COLETA_ENTREGA D ON C.MANI_ID = D.MANI_ID ');
       Q_MANIF.SQL.ADD(',MANIFESTO A,CLIENTENBF B');
       Q_MANIF.SQL.ADD('where    A.MANI_Id      = C.MANI_ID  ');
       Q_MANIF.SQL.ADD('and A.CLIN_ID      = B.CLIN_ID   ');

       if FFConsManifesto.RadioGroup1.ItemIndex <> 2 then
           Q_MANIF.SQL.ADD('and A.MANI_ENT_COL = ' + '''' + TIPO + '''') ;

       if FFConsManifesto.RadioGroup2.ItemIndex <> 2 then
           Q_MANIF.SQL.ADD('and (A.NFI_TRANS    = ' + '''' + TRANSP + ''''+'or A.NFI_TRANS is null)') ;

       

       if DATAI <> 0.0 then
              Q_MANIF.SQL.ADD ( 'and convert(Char(10),A.MANI_DATA,112) >= ' +''''+ formatdatetime('YYYYMMDD',DATAI) + '''') ;
       if DATAF <> 0.0 then
              Q_MANIF.SQL.ADD ( 'and convert(Char(10),A.MANI_DATA,112) <= ' +''''+ formatdatetime('YYYYMMDD',DATAF) + '''') ;

       if (MANIF <> '')  then
       BEGIN
       IF MANIF2 = '' then
       MANIF2 := '9999999999';
              Q_MANIF.SQL.ADD ( 'and (MANIFESTO.MANI_ID >= ' + MANIF + ' AND MANIFESTO.MANI_ID <= ' + MANIF2 + ') ' ) ;
       end;

       
       if CLI <> '' then
              Q_MANIF.SQL.ADD ( 'and A.CLIN_ID = ' + CLI  ) ;
       if NF <> '' then
              Q_MANIF.SQL.ADD ( 'and C.CNF_NF =  ' + '''' + NF + '''');

       if OS <> '' then
          Q_MANIF.SQL.ADD ( 'AND   D.OS_ID = ' + '''' + OS + '''');

              //add paramentro á consulta para verificar manifestos em aberto/fechado
              //***************miguel*****************
       if FFConsManifesto.rgStatus.ItemIndex = 0 then
              Q_MANIF.SQL.ADD ( 'and a.CONFIRMA_MANI =  ' + '''' + 'S' + '''');
        if FFConsManifesto.rgStatus.ItemIndex = 1 then
              Q_MANIF.SQL.ADD ( 'and a.CONFIRMA_MANI =  ' + '''' + 'N' + '''');


              
      IF FFConsManifesto.rgRomaneio.ItemIndex = 0 then
             Q_MANIF.SQL.ADD ( ' and A.CONFIRMA <> '+QuotedStr('S'))
      else  if FFConsManifesto.rgRomaneio.ItemIndex = 1 then
             Q_MANIF.SQL.ADD ( ' and A.CONFIRMA <> '+ QuotedStr('N'));

       Q_MANIF.SQL.ADD ( ' group by A.MANI_ID,A.MANI_DATA,A.MANI_TIPOCARGA,A.VEIC_ID, ') ;
       Q_MANIF.SQL.ADD ( ' A.TRANS_ID,A.MOT_ID,B.CLIN_RAZA,D.OS_ID,A.CONFIRMA_MANI, A.REG_ID,A.MANI_VFRETEPAG  ') ;
       Q_MANIF.open ;




   Q_NFCOL.open ;
   Q_CLIFINAL.open ;
end;

procedure TFRelConsManifestoC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

     Q_TRMOT.close ;
     Q_VEIC.close ;
     Q_TRANS.close ;
     Q_NFCOL.close ;
     Q_CLIFINAL.close ;
     Q_MANIF.close ;
     action := cafree ;


end;

end.
