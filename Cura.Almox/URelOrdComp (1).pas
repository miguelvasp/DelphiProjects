unit URelOrdComp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Wwdatsrc, DBTables, Wwquery, QuickRpt, Qrctrls, jpeg, ExtCtrls,
  gtQRXport, gtQRXport_Doc, gtQRXport_PDF;

type
  TFRelOrdemCompra = class(TForm)
    OrdemComp: TQuickRep;
    QRBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRShape1: TQRShape;
    QRSubDetail1: TQRSubDetail;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText16: TQRDBText;
    QRGroup1: TQRGroup;
    QRShape2: TQRShape;
    QRDBText10: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel15: TQRLabel;
    QRDBText14: TQRDBText;
    QRDBText1: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel13: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel10: TQRLabel;
    QRShape5: TQRShape;
    Q_AUX: TwwQuery;
    Q_AUXMAT_UNID_ID: TAutoIncField;
    Q_AUXDESCRICAO: TStringField;
    DS_ORDEM: TwwDataSource;
    Q_ORDEM: TwwQuery;
    Q_ITEM: TwwQuery;
    Q_MATMARC: TwwQuery;
    Q_ITEMembalagem: TStringField;
    Q_UNI: TwwQuery;
    Q_UNIUNI_ID: TAutoIncField;
    Q_UNIUNI_SIGLA: TStringField;
    Q_UNIUNI_DESC: TStringField;
    DS_ITEM: TwwDataSource;
    Q_ITEMIORD_ID: TAutoIncField;
    Q_ITEMORD_ID: TIntegerField;
    Q_ITEMMAT_ID: TIntegerField;
    Q_ITEMQTDE: TFloatField;
    Q_ITEMQTDE_REC: TFloatField;
    Q_ITEMQTDE_COMP: TFloatField;
    Q_ITEMQTDE_COMP_REC: TFloatField;
    Q_ITEMQTDE_ESTQ_COMP: TFloatField;
    Q_ITEMPRECO_UNIT: TFloatField;
    Q_ITEMVALOR: TFloatField;
    Q_ITEMCONVERSAO: TFloatField;
    Q_ITEMIPI: TFloatField;
    Q_ITEMVL_IPI: TFloatField;
    Q_ITEMALTERAR: TStringField;
    Q_ITEMNFIS: TIntegerField;
    Q_ITEMREC_ID: TIntegerField;
    Q_ITEMSTATUS: TStringField;
    Q_ITEMUSU_CANCEL: TStringField;
    Q_ITEMDT_CANCEL: TDateTimeField;
    Q_ITEMVL_TOTITEM: TFloatField;
    Q_ITEMMAT_ID_1: TAutoIncField;
    Q_ITEMMAT_DESC: TStringField;
    Q_ITEMIPI_1: TFloatField;
    Q_ITEMVL_IPI_1: TFloatField;
    Q_ITEMQTDE_1: TFloatField;
    Q_ITEMPRECO_UNIT_1: TFloatField;
    QRLabel12: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    Q_ITEMUNI_SIGLA: TStringField;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel3: TQRLabel;
    QRSubDetail2: TQRSubDetail;
    DS_OBS: TwwDataSource;
    Q_OBS: TwwQuery;
    Q_OBSobs: TMemoField;
    QRShape3: TQRShape;
    Q_TOT: TwwQuery;
    DS_TOT: TwwDataSource;
    Q_TOTTOT: TFloatField;
    QRSubDetail3: TQRSubDetail;
    QRLabel21: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText5: TQRDBText;
    Q_TOTTOT_IPI: TFloatField;
    QRDBText7: TQRDBText;
    QRLabel22: TQRLabel;
    QRDBText11: TQRDBText;
    Q_MATMARCMATMARCA_ID: TAutoIncField;
    Q_MATMARCMATMARCA_EMBALAGEM: TStringField;
    Q_MATMARCMAT_ID: TIntegerField;
    Q_MATMARCUNI_ID: TIntegerField;
    Q_ITEMMATMARCA_ID: TIntegerField;
    Q_ITEMMATMARCA_EMBALAGEM: TStringField;
    Q_ORDEMORD_ID: TAutoIncField;
    Q_ORDEMFOR_CODI: TStringField;
    Q_ORDEMDT_CADASTRO: TDateTimeField;
    Q_ORDEMDT_EMISSAO: TDateTimeField;
    Q_ORDEMCOND_PGTO_ID: TIntegerField;
    Q_ORDEMUSUARIO: TStringField;
    Q_ORDEMFOR_CODI_1: TStringField;
    Q_ORDEMFOR_RAZA: TStringField;
    Q_ORDEMDESCRICAO: TStringField;
    Q_ITEMMARCA_ID: TIntegerField;
    Q_ITEMNum_Ocom: TIntegerField;
    Q_ITEMRec_Item_ID: TIntegerField;
    Q_ITEMUni_Comp_ID: TIntegerField;
    Q_ITEMUni_Estq_ID: TIntegerField;
    Q_ITEMUNI_ID: TIntegerField;
    QRImage1: TQRImage;
    gtQRPDFExport1: TgtQRPDFExport;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRSubDetail1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRGroup1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure OrdemCompAfterPrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelOrdemCompra: TFRelOrdemCompra;
  PRINTAR: BOOLEAN;

implementation
USES UOrdCom;
{$R *.DFM}



procedure TFRelOrdemCompra.QRGroup1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
        PRINTAR := FALSE;
end;




procedure TFRelOrdemCompra.FormCreate(Sender: TObject);
VAR SQL: STRING;
begin
      {if ordem = false then begin

      SQL:= ' where 1 = 1 ' ;

      if (FPesqOrdComp.txtOC.Text <> '') then
            SQL:= SQL + 'and A.ORD_ID = ''' + FPesqOrdComp.txtOC.Text + '''' ;

      if  (FPesqOrdComp.cboforn.Text <> '') and (FPesqOrdComp.cboforn.lookupvalue <> '') then
      SQL:= SQL + ' and A.FOR_CODI = ''' + FPesqOrdComp.cboforn.LookupValue + '''' ;

      if FPesqOrdComp.DBE_EST_ENT1.text <> '  /  /    ' then
      SQL:= SQL + 'and A.DT_ENTREGA >= ' + '''' + FormatDateTime('MM/DD/YYYY',strtodate(FPesqOrdComp.DBE_EST_ENT1.text) ) + '''' ;

      if FPesqOrdComp.DBE_EST_ENT2.text <> '  /  /    ' then
      SQL:= SQL + ' and A.DT_ENTREGA <= ' + '''' + FormatDateTime('MM/DD/YYYY',strtodate(FPesqOrdComp.DBE_EST_ENT2.text) ) + '''' ;
      //if (Data1.Text <> '') then
      //Sql.Add('and DT_ENTREGA = ''' + Data1.text + '''' );
      If (FPesqOrdComp.cboMat.Text <> '') and (FPesqOrdComp.cboMat.lookupvalue <> '') then
      SQL:= SQL + ' AND B.MAT_ID = ''' + FPesqOrdComp.cboMat.LookupValue  + '''';

      IF FPesqOrdComp.wwDBComboBox2.Value = 'X' Then
          FPesqOrdComp.wwDBComboBox2.Text:= '';


       IF FPesqOrdComp.wwDBComboBox2.Text <> ''  Then
         SQL:= SQL + ' AND A.STATUS = ' + '''' + FPesqOrdComp.wwDBComboBox2.Value + '''' ;

       IF  FPesqOrdComp.wwDBComboBox2.Text = '' Then
           FPesqOrdComp.wwDBComboBox2.Text:= 'Todas';

      SQL:= SQL + ' ORDER BY A.ORD_ID DESC';


    

        Q_ORDEM.CLOSE;
        Q_ORDEM.SQL.ADD(SQL);
        Q_ORDEM.Open;
        Q_ITEM.Open;
        Q_OBS.open;
        Q_TOT.OPEN;

     end else begin}
        Q_ORDEM.close;
        Q_ORDEM.sql.add(' where a.ord_id = ' + FOrdComp.Q_OCORD_ID.asstring);
        Q_ORDEM.Open;
        Q_ITEM.Open;
        Q_OBS.open;
        Q_TOT.OPEN;
        Q_MATMARC.Open;

   //end;

//Q_AUX.Open;

end;

procedure TFRelOrdemCompra.FormClose(Sender: TObject;
  var Action: TCloseAction);
BEGIN

//        q_ordem.close;
        Q_ORDEM.Close;
        Q_ITEM.CLOSE;
        Q_AUX.CLOSE;
        Q_TOT.CLOSE;
        Q_MATMARC.Close;
    //    Action :=cafree;



end;

procedure TFRelOrdemCompra.QRSubDetail1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
        PRINTAR := TRUE;
end;

procedure TFRelOrdemCompra.OrdemCompAfterPrint(Sender: TObject);
VAR SQL: STRING;
begin


     SQL:= ' UPDATE ORDEM_COMPRA SET DT_EMISSAO = GETDATE() ' +
           ' WHERE ORD_ID IN (SELECT   A.ORD_ID ' +
           '                  FROM    ORDEM_COMPRA A   ' +
           '                  LEFT OUTER JOIN CPAFORN B ON A.FOR_CODI = B.FOR_CODI ' +
           '                  LEFT OUTER JOIN CONDICAO_PAGTO D ON D.COND_PGTO_ID = A.COND_PGTO_ID ' +
           '                  WHERE A.DT_EMISSAO IS NULL) ' ;



     Q_AUX.CLOSE;
     Q_AUX.SQL.CLEAR;
     Q_AUX.SQL.ADD(SQL);
     Q_AUX.ExecSql;
     


end;

end.
