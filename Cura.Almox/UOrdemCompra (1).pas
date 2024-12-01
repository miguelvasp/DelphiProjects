
unit UOrdemCompra;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, Qrctrls, jpeg, ExtCtrls, Db, DBTables, Wwquery, Wwdatsrc,
  StdCtrls, gtQRXport, gtQRXport_Doc, gtQRXport_PDF, ADODB, gtQrCtrls;

type
  TORDEMCOMPRA = class(TForm)
    QuickRep1: TQuickRep;
    DS_COMPRAS: TwwDataSource;
    Q_COMPRAS: TwwQuery;
    QRBand1: TQRBand;
    DS_ORDEM_CAPA: TwwDataSource;
    Q_ORDEM_CAPA: TwwQuery;
    Q_PARAN: TwwQuery;
    DS_Paran: TwwDataSource;
    DS_TXTOC: TwwDataSource;
    Q_TXTOC: TwwQuery;
    QRBand3: TQRBand;
    QRLabel2: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData3: TQRSysData;
    QRDBText8: TQRDBText;
    QRShape4: TQRShape;
    Q_PARANOBS: TMemoField;
    Q_TXTOCobs: TMemoField;
    Q_ORDEM_CAPAORD_ID: TAutoIncField;
    Q_ORDEM_CAPADT_ENTREGA: TDateTimeField;
    Q_ORDEM_CAPAFOR_CODI: TStringField;
    Q_ORDEM_CAPAUSUARIO: TStringField;
    Q_ORDEM_CAPAFOR_RAZA: TStringField;
    Q_ORDEM_CAPAFOR_ENDE: TStringField;
    Q_ORDEM_CAPAFOR_CEP: TStringField;
    Q_ORDEM_CAPAFOR_TEL1: TStringField;
    Q_ORDEM_CAPAFOR_TEL2: TStringField;
    Q_ORDEM_CAPAFOR_FAX: TStringField;
    Q_ORDEM_CAPAFOR_ESTA: TStringField;
    Q_ORDEM_CAPAFOR_MUNI: TStringField;
    Q_ORDEM_CAPADESCRICAO: TStringField;
    Q_COMPRASIORD_ID: TAutoIncField;
    Q_COMPRASORD_ID: TIntegerField;
    Q_COMPRASMAT_ID: TIntegerField;
    Q_COMPRASMARCA_ID: TIntegerField;
    Q_COMPRASQTDE: TFloatField;
    Q_COMPRASQTDE_REC: TFloatField;
    Q_COMPRASQTDE_COMP: TFloatField;
    Q_COMPRASQTDE_COMP_REC: TFloatField;
    Q_COMPRASQTDE_ESTQ_COMP: TFloatField;
    Q_COMPRASPRECO_UNIT: TFloatField;
    Q_COMPRASMATMARCA_ID: TIntegerField;
    Q_COMPRASVALOR: TFloatField;
    Q_COMPRASCONVERSAO: TFloatField;
    Q_COMPRASIPI: TFloatField;
    Q_COMPRASVL_IPI: TFloatField;
    Q_COMPRASALTERAR: TStringField;
    Q_COMPRASNFIS: TIntegerField;
    Q_COMPRASREC_ID: TIntegerField;
    Q_COMPRASSTATUS: TStringField;
    Q_COMPRASUSU_CANCEL: TStringField;
    Q_COMPRASDT_CANCEL: TDateTimeField;
    Q_COMPRASVL_TOTITEM: TFloatField;
    Q_COMPRASMAT_DESC: TStringField;
    Q_COMPRASMARCA_DESC: TStringField;
    Q_COMPRASMATMARCA_EMBALAGEM: TStringField;
    Q_COMPRASUNI_SIGLA: TStringField;
    Q_COMPRASUni_Comp_ID: TIntegerField;
    Q_COMPRASUni_Estq_ID: TIntegerField;
    gtQRPDFExport1: TgtQRPDFExport;
    Q_ORDEM_CAPADescTotal: TFloatField;
    Q_ORDEM_CAPAvlrFrete: TFloatField;
    QRMemo1: TQRMemo;
    QRDBImage1: TQRDBImage;
    Q_ORDEM_CAPADT_IMPRESSAO: TDateTimeField;
    QRLabel32: TQRLabel;
    Q_COMPRASMATMARCA_CONVERSAO: TFloatField;
    Q_COMPRASUNI_MARCA: TStringField;
    qrAux: TwwQuery;
    QRBand2: TQRBand;
    QRShape11: TQRShape;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRShape8: TQRShape;
    QRLabel19: TQRLabel;
    QRLabel21: TQRLabel;
    QRShape9: TQRShape;
    QRLabel25: TQRLabel;
    QRLabel24: TQRLabel;
    QRShape10: TQRShape;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRShape7: TQRShape;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel20: TQRLabel;
    QRShape14: TQRShape;
    QRLBO3: TQRLabel;
    QRShape12: TQRShape;
    QRDBText22: TQRDBText;
    QRLabel18: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText13: TQRDBText;
    QRShape2: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText18: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel10: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText17: TQRDBText;
    lbConversao: TQRLabel;
    QRDBText19: TQRDBText;
    QRDBText11: TQRDBText;
    Label1: TQRLabel;
    QRDBText15: TQRDBText;
    QRLabel28: TQRLabel;
    QRBand4: TQRBand;
    QRLabel9: TQRLabel;
    QRShape5: TQRShape;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel35: TQRLabel;
    QRShape13: TQRShape;
    QRLabel8: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel31: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel33: TQRLabel;
    qrEmpresa: TwwQuery;
    qrEmpresaFIL_CODI: TStringField;
    qrEmpresaFIL_DESC: TStringField;
    qrEmpresaFIL_NATOPERA: TStringField;
    qrEmpresaFIL_DESCSERV: TStringField;
    qrEmpresaFIL_ULTIMANF: TStringField;
    qrEmpresaRAZAO: TStringField;
    qrEmpresaCNPJ: TStringField;
    qrEmpresaENDERECO: TStringField;
    qrEmpresaCOMPL: TStringField;
    qrEmpresaCEP: TStringField;
    qrEmpresaCIDADE: TStringField;
    qrEmpresaUF: TStringField;
    qrEmpresaSEL: TStringField;
    Q_ORDEM_CAPAFIL_CODI: TStringField;
    lbFaturamento: TgtQRLabel;
    QRDBRichText1: TQRDBRichText;
    QRLabel36: TQRLabel;
    QRDBText21: TQRDBText;
    Q_ORDEM_CAPATIPOCOMPRA: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRSubDetail4BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail2AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRSubDetail2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSysData1Print(sender: TObject; var Value: String);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRep1AfterPrint(Sender: TObject);
    procedure QRDBText10Print(sender: TObject; var Value: String);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand3AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand2AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ORDEMCOMPRA: TORDEMCOMPRA;
  PRECO : DOUBLE;
  IPI : double;
  TOTPRECO : Double;
  TOTIPI : DOUBLE;
  QTDE     : Double;
  P_UNT    : Double;
  VALORIPI : DOUBLE;
  ExiCab5:Boolean;
  TOTAL: DOUBLE;

  paginas : Integer;
  
implementation
USES   UOrcomImp, UMenu;
{$R *.DFM}

procedure TORDEMCOMPRA.FormCreate(Sender: TObject);
VAR SQL: STRING;
begin
       SQL:= ' SELECT       A.ORD_ID,      ' +
 	     '              A.DT_ENTREGA,  ' +
             '              B.FOR_CODI,    ' +
             '              A.USUARIO,     ' +
             '              B.FOR_RAZA,    ' +
             '              B.FOR_ENDE,    ' +
             '              B.FOR_CEP,     ' +
             '              B.FOR_TEL1,    ' +
             '              B.FOR_TEL2,    ' +
             '              B.FOR_FAX,     ' +
             '              B.FOR_ESTA,    ' +
             '              B.FOR_MUNI,    ' +
             '              D.DESCRICAO,    ' +
             '              A.DESCTOTAL,    ' +
             '              A.VLRFRETE, DT_IMPRESSAO, A.FIL_CODI, A.TIPOCOMPRA   ' +
             ' FROM    ORDEM_COMPRA A      ' +
             ' LEFT OUTER JOIN CPAFORN B ON A.FOR_CODI = B.FOR_CODI ' +
             ' LEFT OUTER JOIN CONDICAO_PAGTO D ON D.COND_PGTO_ID = A.COND_PGTO_ID ' +
             ' WHERE A.ORD_ID between ' + NUMERO;//INTTOSTR(NUMERO)

         Q_Ordem_Capa.SQL.Clear;
         Q_Ordem_Capa.SQL.Add(sql);
         Q_ORDEM_CAPA.Open;
         Q_COMPRAS.Open;
         Q_paran.Open;
         Q_TXTOC.OPEN;
         paginas := 1;

         //CARREGAMOS OS DADOS DO ENDEREÇO DA EMPRESA
         qrEmpresa.Close;
         qrEmpresa.Open;
         qrEmpresa.Locate('FIL_CODI', Q_ORDEM_CAPA.FIELDBYNAME('FIL_CODI').AsString, []);

         lbFaturamento.Caption := 'Faturar esta ordem de compra para a empresa: ' + qrEmpresaRAZAO.AsString     ;

         with QRMemo1 DO begin
             Lines.Clear;
             Lines.Add(qrEmpresaRAZAO.AsString);
             Lines.Add('End: ' + qrEmpresaENDERECO.AsString);
             Lines.Add('CEP: ' + qrEmpresaCEP.AsString + ' ' + qrEmpresaCIDADE.AsString + ' - ' + qrEmpresaUF.AsString);
             Lines.Add('CNPJ: ' + Copy(qrEmpresaCNPJ.AsString, 0, 2) + '.' + Copy(qrEmpresaCNPJ.AsString, 3, 3)  + '.' + Copy(qrEmpresaCNPJ.AsString, 6, 3) + '/' + Copy(qrEmpresaCNPJ.AsString, 9, 4) + '-' + Copy(qrEmpresaCNPJ.AsString, 13, 2));
         end;


END;

procedure TORDEMCOMPRA.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        Q_COMPRAS.Close;
        Q_ORDEM_CAPA.Close;
        q_paran.close;
        Q_TXTOC.Close;

end;


procedure TORDEMCOMPRA.QRSubDetail4BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
  var frete, desconto : Double;
begin

   { QRLabel27.Caption:= formatfloat('###,###,##0.00',IPI);
    QRLabel24.Caption:= formatfloat('###,###,##0.00',PRECO);
    IF Q_ORDEM_CAPADescTotal.AsString <> '' THEN
    begin
    QRLabel21.Caption := formatfloat('###,###,##0.00',Q_ORDEM_CAPADescTotal.Value) ;
    desconto := Q_ORDEM_CAPADescTotal.Value;
    end
    else
    begin
    QRLabel21.Caption := '0,00' ;
    desconto := 0;
    end;
    IF Q_ORDEM_CAPAvlrFrete.AsString <> '' THEN
    begin
       QRLabel23.Caption := formatfloat('###,###,##0.00',Q_ORDEM_CAPAvlrFrete.Value);
       frete := Q_ORDEM_CAPAvlrFrete.Value;
    end
    ELSE
    begin
        QRLabel23.Caption := '0,00';
        frete := 0;
    end;
    TOTAL:= IPI + PRECO + frete - desconto;

    QRLabel30.CAPTION := formatfloat('###,###,##0.00',TOTAL);   }

end;

procedure TORDEMCOMPRA.QRSubDetail3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin

// IF Q_TXTOCobs.AsString = '' THEN
///     QRSubDetail3.Height:= 0
 // ELSE
//     QRSubDetail3.Height:= 37;
end;

procedure TORDEMCOMPRA.QRSubDetail2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
 // ExiCab5 := true;
end;

procedure TORDEMCOMPRA.QRSubDetail2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
{ if ExiCab5 then
 Begin
    QRLabel20.Enabled := False;
    QRShape6.Enabled:= false;
   QRDBText21.Top:= 0;
    END
    ELSE BEGIN
    QRLabel20.Enabled := true;
    QRShape6.Enabled:= true;
   QRDBText21.Top:= 29;

    END; }
end;

procedure TORDEMCOMPRA.QRSysData1Print(sender: TObject; var Value: String);
begin
  IF Q_ORDEM_CAPADT_IMPRESSAO.AsString <> '' then
        Value := 'Emissão: '+ FormatDateTime('DD/MM/YYYY', Q_ORDEM_CAPADT_IMPRESSAO.Value)
  else
        Value := 'Emissão: '+ FormatDateTime('DD/MM/YYYY', Date);
end;

procedure TORDEMCOMPRA.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  //verifica se nao é a primeira pagina, se nao oculta as infor do fornecedor
  if paginas > 1 then begin
      QRBand3.Height := 63;
  end
  else
      QRBand3.Height := 159;


  if Q_ORDEM_CAPADT_IMPRESSAO.AsString <> '' then
     QRLabel32.Enabled := True
  else
        QRLabel32.Enabled := False;


        ExiCab5 := FALSE;
end;

procedure TORDEMCOMPRA.QuickRep1AfterPrint(Sender: TObject);
begin
//
    if Q_ORDEM_CAPADT_IMPRESSAO.AsString = '' then
    begin
        with qrAux do
        begin
            close;
            sql.Clear;
            sql.Add('update ordem_compra set DT_IMPRESSAO = ' + QuotedStr(FormatDateTime('YYYYMMDD', Date)));
            SQL.Add('WHERE ORD_ID = ' + Q_ORDEM_CAPAORD_ID.AsString);
            ExecSQL;
        end;
    end;
end;

procedure TORDEMCOMPRA.QRDBText10Print(sender: TObject; var Value: String);
begin
   Value := Q_COMPRASMAT_DESC.AsString;
end;

procedure TORDEMCOMPRA.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);

  var frete, desconto : Double;
begin

    QRLabel27.Caption:= formatfloat('0.00',IPI);
    QRLabel24.Caption:= formatfloat('0.0000',PRECO);
    IF Q_ORDEM_CAPADescTotal.AsString <> '' THEN
    begin
    QRLabel21.Caption := formatfloat('0.0000',Q_ORDEM_CAPADescTotal.Value) ;
    desconto := Q_ORDEM_CAPADescTotal.Value;
    end
    else
    begin
    QRLabel21.Caption := '0,00' ;
    desconto := 0;
    end;
    IF Q_ORDEM_CAPAvlrFrete.AsString <> '' THEN
    begin
       QRLabel23.Caption := formatfloat('0.0000',Q_ORDEM_CAPAvlrFrete.Value);
       frete := Q_ORDEM_CAPAvlrFrete.Value;
    end
    ELSE
    begin
        QRLabel23.Caption := '0,00';
        frete := 0;
    end;
    TOTAL:= IPI + PRECO + frete - desconto;

    QRLabel30.CAPTION := formatfloat('###,###,##0.0000',TOTAL);

    PRECO := 0;
        IPI   := 0;

end;

procedure TORDEMCOMPRA.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
        QTDE := StrToFloat(FormatFloat('0.0000',Q_COMPRASQTDE_Comp.AsFloat));
        P_UNT := StrToFloat(FormatFloat('0.0000',Q_COMPRASPRECO_UNIT.AsFloat));


        TOTPRECO := QTDE * P_UNT;
        Label1.Caption := FormatFloat('###,###,##0.0000',TOTPRECO);
        PRECO := PRECO + TOTPRECO;

        VALORIPI := StrToFloat(FormatFloat('0.00',Q_COMPRASipi.AsFloat));

        TOTIPI := TOTPRECO * (VALORIPI / 100);
        QRLabel28.Caption := FormatFloat('###,###,##0.00',TOTIPI);

        IPI   := IPI + TOTIPI;

        lbConversao.Caption := FormatFloat('###,###,##0.0000', Q_COMPRASQTDE_COMP.AsInteger * Q_COMPRASMATMARCA_CONVERSAO.Value );



         if Label1.Caption = '0,00' then
                Label1.Caption := '';
end;

procedure TORDEMCOMPRA.QRBand3AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Inc(paginas);
end;

procedure TORDEMCOMPRA.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  paginas := 1;
end;

end.
