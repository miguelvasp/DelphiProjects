unit CPPLPGT;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, DBTables, DB, Wwdatsrc, Wwquery, Wwtable, quickrpt,
  Qrctrls;

type
  TFListFPgto = class(TForm)
    QR_PGTO: TQuickRep;
    Title: TQRBand;
    Detail: TQRBand;
    QRLabel4: TQRLabel;
    QRShape1: TQRShape;
    Codigo: TQRDBText;
    Descricao: TQRDBText;
    QRLabel3: TQRLabel;
    Q_PGTO: TwwQuery;
    DS_PGTO: TwwDataSource;
    Q_PGTOPGT_CODI: TStringField;
    Q_PGTOPGT_DESC: TStringField;
    QRImage1: TQRImage;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData3: TQRSysData;
    QRSysData4: TQRSysData;
    QRShape2: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRShape3: TQRShape;
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel8: TQRLabel;
    QRShape4: TQRShape;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRSysData2: TQRSysData;
    QRSysData5: TQRSysData;
    QRSysData6: TQRSysData;
    QRShape5: TQRShape;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRShape6: TQRShape;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRDBImage1: TQRDBImage;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FListFPgto: TFListFPgto;

implementation

uses  Cppmlisold, CPPMENU;

{$R *.DFM}

procedure TFListFPgto.FormCreate(Sender: TObject);
var Strand : string ;  
begin
  Q_pgto.close ;
  Q_pgto.SQL.clear ;
  Q_pgto.SQL.ADD('SELECT * FROM CPAPGTO  ' ) ;
  StrAnd := ' where '  ;
  if CODI <> '' then begin
     Q_pgto.SQL.ADD( StrAnd + ' PGT_CODI >= '+ '''' +  CODI + '''' );
     StrAnd := ' and ' ;
  end ;
  if CODF <> '' then begin
     Q_pgto.SQL.ADD( StrAnd + ' PGT_CODI <= '+ '''' +  CODF + '''' );
     StrAnd := ' and ' ;
  end ;
  if iTipo = 0  then
     Q_pgto.SQL.ADD(' order by PGT_CODI ') ;
  if iTipo = 1  then
     Q_pgto.SQL.ADD(' order by PGT_DESC ') ;
  Q_pgto.open ;
 
end;

procedure TFListFPgto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Q_Pgto.close ;
  action := cafree ;   
end;



procedure TFListFPgto.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
Var
     vLogo : TBlobField;
begin
   QRLabel16.caption := FMenu.FUsuario ;

end;



end.
