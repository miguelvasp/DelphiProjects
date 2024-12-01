unit CPPRRCO;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, DBTables, DB, Wwquery, Wwdatsrc, StdCtrls,
  ExtCtrls, Wwtable, quickrpt, Qrctrls;

type
  TFRelReceConf = class(TForm)
    Title: TQRBand;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRLabel1: TQRLabel;
    QRShape1: TQRShape;
    QRLabel13: TQRLabel;
    Detail: TQRBand;
    QRLabel2: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel8: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel10: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText11: TQRDBText;
    Itens: TQRBand;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRGroup1: TQRGroup;
    rodape: TQRBand;
    QRShape2: TQRShape;
    QR_CONFERENCIA: TQuickRep;
    Q_RECE: TwwQuery;
    DS_RECE: TwwDataSource;
    Q_IREC: TwwQuery;
    DS_IREC: TwwDataSource;
    Q_RECEREC_CODI: TIntegerField;
    Q_RECEREC_NFIS: TStringField;
    Q_RECEREC_DEVE: TStringField;
    Q_RECEREC_RAZA: TStringField;
    Q_RECEREC_CGER: TStringField;
    Q_RECEREC_VALO: TFloatField;
    Q_RECEREC_DESC: TFloatField;
    Q_RECEREC_VLIQ: TFloatField;
    Q_RECEREC_VENC: TDateTimeField;
    Q_RECEREC_BANC: TStringField;
    Q_RECEREC_CONT: TStringField;
    Q_RECEREC_VPAG: TFloatField;
    Q_RECEREC_EMIS: TDateTimeField;
    Q_RECEREC_MOED: TStringField;
    Q_RECEREC_DCON: TDateTimeField;
    Q_RECEREC_MORI: TStringField;
    Q_RECEREC_DCOR: TDateTimeField;
    Q_RECEREC_VORI: TFloatField;
    Q_RECEREC_VPRE: TDateTimeField;
    Q_RECEREC_HIST: TStringField;
    Q_RECEREC_SALD: TFloatField;
    Q_RECEREC_SITU: TStringField;
    Q_RECEREC_FILI: TStringField;
    Q_IRECIRE_CODI: TIntegerField;
    Q_IRECIRE_SEQU: TIntegerField;
    Q_IRECIRE_DATA: TDateTimeField;
    Q_IRECIRE_FMOV: TStringField;
    Q_IRECIRE_DOCT: TStringField;
    Q_IRECIRE_SALD: TFloatField;
    Q_IRECIRE_VDIF: TFloatField;
    Q_IRECIRE_VTOT: TFloatField;
    Q_IRECIRE_DDEB: TDateTimeField;
    Q_IRECIRE_TBAI: TStringField;
    Q_IRECIRE_OBSE: TStringField;
    Q_IRECIRE_BANC: TStringField;
    Q_IRECIRE_CONT: TStringField;
    Q_IRECIRE_FAUX: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QR_CONFERENCIAFilter(var PrintRecord: Boolean);
    procedure ItensBeforePrint(var PrintBand: Boolean);
    procedure DetailBeforePrint(var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelReceConf: TFRelReceConf;

implementation
uses CPPMRRE;
{$R *.DFM}
CONST                                
FldCodigo = 'REC_CODIGO';
FldFornec = 'REC_FORNECEDOR';
FldConta  = 'REC_CONTAGERENCIAL';
FldVenc   = 'REC_VENCIMENTO';
FldSitu   = 'REC_SITUACAO';
FldData   = 'IREC_DATA';
FldBanco  = 'IREC_BANCO';
FldBConta = 'IREC_CONTA';

procedure TFRelReceConf.FormCreate(Sender: TObject);
begin
{  T_RECE.open;
  T_IREC.open;
  Screen.Cursor := crHourGlass;
  T_RECE.Filter.Clear;
  if T_RECE.Active then
   begin
     if (FMENRELREC.ME_CODI.Text <> '') and (FMENRELREC.ME_CODF.Text <> '') then
      begin
        T_RECE.filter.Add(FldCodigo+'>='+FMENRELREC.ME_CODI.Text+' and '+
                          FldCodigo+'<='+FMENRELREC.ME_CODF.Text+'');
      end
     else
      begin
        if FMENRELREC.ME_CODI.Text <> '' then
           T_RECE.filter.Add(FldCodigo+'>='+FMENRELREC.ME_CODI.Text+'');
        if FMENRELREC.ME_CODF.Text <> '' then
           T_RECE.filter.Add(FldCodigo+'<='+FMENRELREC.ME_CODF.Text+'');
      end;

     if FMENRELREC.DBCB_DEVEDOR.Text <> '' then
      begin
        Case FMENRELREC.CB_TIPO.ItemIndex of
          0: T_RECE.filter.Add(FldFornec+'='+ FMENRELREC.wwT_FORNFOR_CODI.AsString+'');
          1: T_RECE.filter.Add(FldFornec+'='+ FMENRELREC.wwT_CLIECLI_CODI.AsString+'');
          2: T_RECE.filter.Add(FldFornec+'='+ FMENRELREC.wwT_PAXPAX_CODI.AsString+'');
        end;
      end;

     if FMENRELREC.DBCB_CONTI.Text <> '' then
        T_RECE.filter.Add(FldConta+'="'+ FMENRELREC.wwT_CONTCON_CODI.AsString+'"');

     if (FMENRELREC.ME_VENCI.Text <> '  /  /    ') and (FMENRELREC.ME_VENCF.Text <> '  /  /    ') then
      begin
        T_RECE.filter.Add(FldVenc+' >="'+FMENRELREC.ME_VENCI.Text+'" and ' +
                          FldVenc+' <="'+FMENRELREC.ME_VENCF.Text+'"');
      end
     else
      if (FMENRELREC.ME_VENCI.Text <> '  /  /    ') and (FMENRELREC.ME_VENCF.Text = '  /  /    ') then
       begin
         T_RECE.filter.Add(FldVenc+' >="'+FMENRELREC.ME_VENCI.Text+'"');

       end
      else
       begin
         if (FMENRELREC.ME_VENCI.Text = '  /  /    ') and (FMENRELREC.ME_VENCF.Text <> '  /  /    ') then
             T_RECE.filter.Add(FldVenc+' <="'+FMENRELREC.ME_VENCF.Text+'"');
       end;
       {T_RECE.filter.Add('FldVenc+'>="'+ FormatDateTime('MM/DD/YYYY',StrToDate(FMENRELREC.ME_VENCI.Text))+'"');}

{     if FMENRELREC.RG_SITU.ItemIndex = 0 then
        T_RECE.filter.Add(FldSitu+'="'+ 'P' +'" or  '+
                          FldSitu+'="'+ 'T' +'"');

     if FMENRELREC.RG_SITU.ItemIndex = 1 then
        T_RECE.filter.Add(FldSitu +'="'+ 'P' +'" or '+
                          FldSitu +'="'+ 'A' +'"');

     T_RECE.filterActivate;
   END;

   T_IREC.Filter.Clear;
   if T_IREC.Active then
    begin
     if FMENRELREC.ME_RECEI.Text <> '  /  /    ' then
        T_IREC.filter.Add(FldData+' >="'+FMENRELREC.ME_RECEI.Text+'"');

     if FMENRELREC.ME_RECEF.Text <> '  /  /    ' then
        T_IREC.Filter.Add(FldData+' <="'+FMENRELREC.ME_RECEF.Text+'"');

     if FMENRELREC.DBCB_BANCI.Text <> '' then
        T_IREC.Filter.Add(FldBanco+'= "'+FMENRELREC.DBCB_BANCI.Text+'"');

     if FMENRELREC.ED_CONTAI.Text <> '' then
        T_IREC.Filter.Add(FldBConta+'= "'+FMENRELREC.ED_CONTAI.text+'"');

     T_IREC.filterActivate;
    end;

  Screen.Cursor := crDefault;
}
end;

procedure TFRelReceConf.FormClose(Sender: TObject; var Action: TCloseAction);
begin
{  T_RECE.Close;
  T_IREC.Close;
  Action:= Cafree;}
end;

procedure TFRelReceConf.QR_CONFERENCIAFilter(var PrintRecord: Boolean);
begin
{
  if T_RECE.Eof then
     PrintRecord := false
  else
    begin
     if ((FMENRELRec.CkRece.Checked or FMENRELRec.CkBanco.Checked ) and T_IREC.Eof) then
        PrintRecord := false
     else
       PrintRecord := true;
    end;}
end;



procedure TFRelReceConf.ItensBeforePrint(var PrintBand: Boolean);
begin
{   if T_IREC.Eof then
     PrintBand := false
  else
     PrintBand := true;
 }
end;

procedure TFRelReceConf.DetailBeforePrint(var PrintBand: Boolean);
begin
{  if T_RECE.Eof then
     PrintBand := false
  else
    begin
     if ((FMENRELRec.CkRece.Checked or FMENRELRec.CkBanco.Checked ) and T_IREC.Eof) then
        PrintBand := false
     else
        PrintBand := true;
    end;}
end;

end.
