unit URelConsManifestoE;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, gtQrCtrls, QuickRpt, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery;

type
  TFRelConsManifestoE = class(TForm)
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
    DS_MANIF: TwwDataSource;
    Q_TRMOT: TwwQuery;
    Q_TRMOTMOT_NOME: TStringField;
    Q_TRMOTMOT_ID: TAutoIncField;
    Q_TRMOTTRANS_ID: TIntegerField;
    Q_TRANS: TwwQuery;
    Q_TRANSTRANS_FANTASIA: TStringField;
    Q_TRANSTRANS_ID: TAutoIncField;
    Q_VEIC: TwwQuery;
    Q_VEICVEIC_NOME: TStringField;
    Q_VEICVEIC_ID: TAutoIncField;
    Q_NF: TwwQuery;
    Q_NFNFI_NUMERO: TStringField;
    Q_NFCLIN_RAZA: TStringField;
    Q_NFNFI_DTENTREGA: TDateTimeField;
    Q_NFNFI_DEST_RAZA: TStringField;
    Q_NFNFI_DEST_ENDERECO: TStringField;
    Q_NFNFI_DEST_CEP: TStringField;
    Q_NFMUN_NOME: TStringField;
    Q_NFREG_NOME: TStringField;
    Q_NFMANI_ORDEM: TIntegerField;
    Q_NFNFI_EMIT_CLI: TIntegerField;
    Q_NFNFI_CODI: TAutoIncField;
    Q_NFTEXTO_LIVRE: TMemoField;
    DS_NF: TwwDataSource;
    gtQRDBText1: TgtQRDBText;
    gtQRDBText2: TgtQRDBText;
    gtQRDBText3: TgtQRDBText;
    gtQRDBText4: TgtQRDBText;
    gtQRDBText5: TgtQRDBText;
    gtQRDBText6: TgtQRDBText;
    gtQRDBText7: TgtQRDBText;
    QRGroup2: TQRGroup;
    gtQRLabel1: TgtQRLabel;
    gtQRLabel2: TgtQRLabel;
    QRDBText10: TgtQRDBText;
    QRDBText9: TgtQRDBText;
    QRDBText1: TgtQRDBText;
    gtQRLabel3: TgtQRLabel;
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
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelConsManifestoE: TFRelConsManifestoE;
implementation
uses UConsManifesto , UFConsManifesto;
{$R *.DFM}
procedure TFRelConsManifestoE.FormCreate(Sender: TObject);
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



     {  Q_MANIF.SQL.clear ;
       Q_MANIF.SQL.ADD('SELECT A.MANI_ID,A.MANI_DATA,A.MANI_TIPOCARGA,A.VEIC_ID,A.TRANS_ID,A.MOT_ID, ');
       Q_MANIF.SQL.ADD('B.CLIN_RAZA,C.OS_ID,A.CONFIRMA_MANI FROM MANIFESTO A,CLIENTENBF B,NF C ');
       Q_MANIF.SQL.ADD('where    A.MANI_Id = C.MANI_ID  ');
       Q_MANIF.SQL.ADD('and C.NFI_EMIT_CLI = B.CLIN_ID   ');
       Q_MANIF.SQL.ADD('and A.MANI_ENT_COL = ' + '''' + TIPO + '''') ;
       Q_MANIF.SQL.ADD('and A.NFI_TRANS    = ' + '''' + TRANSP + '''') ;

       if DATAI <> 0.0 then

              Q_MANIF.SQL.ADD ( 'and convert(Char(10),A.MANI_DATA,112) >= ' +''''+ formatdatetime('YYYYMMDD',DATAI) + '''') ;
       if DATAF <> 0.0 then
              Q_MANIF.SQL.ADD ( 'and convert(Char(10),A.MANI_DATA,112) <= ' +''''+ formatdatetime('YYYYMMDD',DATAF) + '''') ;

       if MANIF <> '' then
              Q_MANIF.SQL.ADD ( 'and A.MANI_ID =   ' + MANIF ) ;
       if CLI <> '' then
              Q_MANIF.SQL.ADD ( 'and C.NFI_EMIT_CLI = ' + CLI  ) ;
       if NF <> '' then
              Q_MANIF.SQL.ADD ( 'and C.NFI_NUMERO =  ' + '''' + NF + '''');

       if OS <> '' then
              Q_MANIF.SQL.ADD ( 'and C.OS_ID =  ' + '''' + OS + '''');

       Q_MANIF.SQL.ADD ( ' group by A.MANI_ID,A.MANI_DATA,A.MANI_TIPOCARGA,A.VEIC_ID, ') ;
       Q_MANIF.SQL.ADD ( ' A.TRANS_ID,A.MOT_ID,B.CLIN_RAZA,C.OS_ID,A.CONFIRMA_MANI  ') ;
       Q_MANIF.open ; }

       Q_MANIF.SQL.clear ;
       if FFConsManifesto.chkOs.Checked then
         Q_MANIF.SQL.ADD(

          ' SELECT  DISTINCT   MANIFESTO.MANI_ID, MANIFESTO.MANI_DATA, MANIFESTO.MANI_TIPOCARGA, MANIFESTO.VEIC_ID, '+
          ' MANIFESTO.MOT_ID, MANIFESTO.TRANS_ID, '+
          ' CLIENTENBF.CLIN_RAZA, NF.OS_ID, MANIFESTO.CONFIRMA_MANI, MANIFESTO.REG_ID, MANIFESTO.MANI_VFRETEPAG  '+
          ' FROM         MANIFESTO (NOLOCK), CLIENTENBF (NOLOCK),NF (NOLOCK) LEFT OUTER JOIN ESTOQUE (NOLOCK) ON nf.MANI_ID = ESTOQUE.MANI_ID, OS OS '+
          ' where MANIFESTO.MANI_ID = NF.MANI_ID      '+
          '         and NF.NFI_EMIT_CLI =  CLIENTENBF.CLIN_ID and nf.os_id = os.os_id  ')
       else
         Q_MANIF.SQL.ADD(

          ' SELECT  DISTINCT   MANIFESTO.MANI_ID, MANIFESTO.MANI_DATA, MANIFESTO.MANI_TIPOCARGA, MANIFESTO.VEIC_ID, '+
          ' MANIFESTO.MOT_ID, MANIFESTO.TRANS_ID, '+
          ' CLIENTENBF.CLIN_RAZA, 0 as OS_ID, MANIFESTO.CONFIRMA_MANI, MANIFESTO.REG_ID, MANIFESTO.MANI_VFRETEPAG  '+
          ' FROM         MANIFESTO (NOLOCK), CLIENTENBF (NOLOCK),NF (NOLOCK) LEFT OUTER JOIN ESTOQUE (NOLOCK) ON nf.MANI_ID = ESTOQUE.MANI_ID, OS OS '+
          ' where MANIFESTO.MANI_ID = NF.MANI_ID      '+
          '         and NF.NFI_EMIT_CLI =  CLIENTENBF.CLIN_ID and nf.os_id = os.os_id  ');

       if FFConsManifesto.RadioGroup1.ItemIndex <> 2 then
       Q_MANIF.SQL.ADD('and MANIFESTO.MANI_ENT_COL = ' + '''' + TIPO + '''') ;

       if FFConsManifesto.RadioGroup2.ItemIndex <> 2 then
       Q_MANIF.SQL.ADD('and MANIFESTO.NFI_TRANS    = ' + '''' + TRANSP + '''') ;


       if DATAI <> 0.0 then
              Q_MANIF.SQL.ADD ( 'and convert(Char(10),MANIFESTO.MANI_DATA,112) >= ' +''''+ formatdatetime('YYYYMMDD',DATAI) + '''') ;
       if DATAF <> 0.0 then
              Q_MANIF.SQL.ADD ( 'and convert(Char(10),MANIFESTO.MANI_DATA,112) <= ' +''''+ formatdatetime('YYYYMMDD',DATAF) + '''') ;

       if (MANIF <> '')  then
       BEGIN
       IF MANIF2 = '' then
       MANIF2 := '9999999999';
              Q_MANIF.SQL.ADD ( 'and (MANIFESTO.MANI_ID >= ' + MANIF + ' AND MANIFESTO.MANI_ID <= ' + MANIF2 + ') ' ) ;
       end;

       
       if CLI <> '' then
              Q_MANIF.SQL.ADD ( 'and nf.NFI_EMIT_CLI = ' + CLI  ) ;
       if NF <> '' then
              Q_MANIF.SQL.ADD ( 'and nf.NFI_NUMERO =  ' + '''' + NF + '''');

       if OS <> '' then
              Q_MANIF.SQL.ADD ( 'and nf.OS_ID =  ' + '''' + OS + '''');


              //add paramentro á consulta para verificar manifestos em aberto/fechado
              //***************miguel*****************
       if FFConsManifesto.rgStatus.ItemIndex = 0 then
              Q_MANIF.SQL.ADD ( 'and MANIFESTO.CONFIRMA_MANI =  ' + '''' + 'S' + '''');
        if FFConsManifesto.rgStatus.ItemIndex = 1 then
              Q_MANIF.SQL.ADD (' and MANIFESTO.CONFIRMA_MANI = ' + '''' + 'N' + '''');


       if FFConsManifesto.cboMotorista.Text <> '' then
              Q_MANIF.SQL.ADD ( ' and MANIFESTO.MOT_ID = '+FFConsManifesto.qrMotoristamot_id.AsString);




      IF FFConsManifesto.rgRomaneio.ItemIndex = 1 then
      begin
             Q_MANIF.SQL.ADD ( ' and MANIFESTO.CONFIRMA <> '+QuotedStr('S')) ;
            // Q_MANIF.SQL.ADD(' and estoque.estq_dt_saida is null');
      end
      else if  FFConsManifesto.rgRomaneio.ItemIndex = 0 then
             Q_MANIF.SQL.ADD ( ' and MANIFESTO.CONFIRMA <> '+ QuotedStr('N'));


      Q_MANIF.SQL.ADD (' ORDER BY MANIFESTO.MANI_ID DESC ');

      Q_MANIF.Open;       


   Q_NF.open ;

end;

procedure TFRelConsManifestoE.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     Q_TRMOT.close ;
     Q_VEIC.close ;
     Q_TRANS.close ;
     Q_NF.close ;
     Q_MANIF.close ;
     action := cafree ;
end;

end.
