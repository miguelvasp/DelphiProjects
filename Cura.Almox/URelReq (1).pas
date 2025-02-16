unit URelReq;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Wwquery, Qrctrls, QuickRpt, ExtCtrls, jpeg, Wwdatsrc,
  gtQRXport, gtQRXport_Doc, gtQRXport_PDF;

type
  TFRelReq = class(TForm)
    QR_REQ: TQuickRep;
    Title: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel3: TQRLabel;
    QRSysData4: TQRSysData;
    QRSysData3: TQRSysData;
    QRSysData5: TQRSysData;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    Q_Req: TwwQuery;
    Q_ReqReq_ID: TAutoIncField;
    Q_ReqData: TDateTimeField;
    Q_ReqUsuario: TStringField;
    Q_ReqCC_ID: TIntegerField;
    Q_ReqData_Sist: TDateTimeField;
    Q_ReqCC_Desc: TStringField;
    DS_REQ: TwwDataSource;
    Q_REQ_ITEM: TwwQuery;
    SA_REQ_ITEM: TwwDataSource;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText1: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel15: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel16: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText12: TQRDBText;
    gtQRPDFExport1: TgtQRPDFExport;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRDBImage1: TQRDBImage;
    Q_REQ_ITEMMAT_DESC: TStringField;
    Q_REQ_ITEMMARCA_DESC: TStringField;
    Q_REQ_ITEMN_LOTE: TStringField;
    Q_REQ_ITEMVALID: TDateTimeField;
    Q_REQ_ITEMDESCRICAO: TStringField;
    Q_REQ_ITEMQTDE: TFloatField;
    Q_REQ_ITEMUNI_SIGLA: TStringField;
    QRBand2: TQRBand;
    QRShape3: TQRShape;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    Q_ReqDescricao: TStringField;
    QRLabel19: TQRLabel;
    QRDBText11: TQRDBText;
    QRLabel20: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRSubDetail1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRGroup1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelReq: TFRelReq;
  ExiCab6: boolean;

implementation

USES URequisicao, UMenu    ;

{$R *.DFM}

procedure TFRelReq.FormCreate(Sender: TObject);
begin

        IF FRequisicao.Q_REQYReq_ID.ASSTRING <> '' THEN BEGIN
           Q_REQ.SQL.ADD(' AND  A.REQ_ID = ' + FRequisicao.Q_REQYReq_ID.ASSTRING);
           Q_Req.Open;
        End Else
           Q_Req.Open;

           Q_REQ_ITEM.CLOSE;
           Q_REQ_ITEM.Params[0].AsInteger := Q_ReqReq_ID.Value;
           Q_REQ_ITEM.Open;
end;

procedure TFRelReq.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        Q_Req.OPEN;
        Q_REQ_ITEM.Close;
        Action := cafree;
end;

procedure TFRelReq.QRSubDetail1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  ExiCab6:= TRUE;
end;

procedure TFRelReq.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin

     {
        if ExiCab6 then begin
           QRLabel11.Enabled:= false;
           QRLabel12.Enabled:= false;
           QRLabel13.enabled:= false;
           QRLabel7.Enabled:= false ;
           QRLabel15.Enabled:= false;
           QRLabel16.Enabled:= false;
           QRLabel17.Enabled:= false;
           QRLabel14.Enabled:= false
        end Else Begin
           QRLabel11.Enabled:= true;
           QRLabel12.Enabled:= true;
           QRLabel13.enabled:= true;
           QRLabel7.Enabled:= true ;
           QRLabel15.Enabled:= true;
           QRLabel16.Enabled:= true;
           QRLabel17.Enabled:= true;
           QRLabel14.Enabled:= true;
        End;
      }


end;

procedure TFRelReq.QRGroup1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  ExiCab6:= false;
end;

end.
