unit CPPLCCU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, DBTables, DB, Wwdatsrc, Wwquery, Wwtable,
  quickrpt, Qrctrls;

type
  TFListCCusto = class(TForm)
    QR_CCUS: TQuickRep;
    Title: TQRBand;
    Detail: TQRBand;
    QRLabel4: TQRLabel;
    QRShape1: TQRShape;
    Codigo: TQRDBText;
    Descricao: TQRDBText;
    QRLabel3: TQRLabel;
    Q_CCUS: TwwQuery;
    DS_CCUS: TwwDataSource;
    Q_CCUSFIL_CODI: TStringField;
    Q_CCUSFIL_DESC: TStringField;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData3: TQRSysData;
    QRSysData4: TQRSysData;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRShape3: TQRShape;
    QRShape2: TQRShape;
    QRLabel17: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBImage1: TQRDBImage;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QR_CCUSBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FListCCusto: TFListCCusto;

implementation

 uses CPPMLISOLD, CPPMENU ;

{$R *.DFM}


procedure TFListCCusto.FormCreate(Sender: TObject);
var StrAnd : string ;
begin
  Q_CCUS.close ;
  Q_CCUS.SQL.clear ;
  Q_CCUS.SQL.ADD('SELECT * FROM CPAFILI  ' ) ;
  StrAnd := ' where '  ;
  if CODI <> '' then begin
     Q_CCUS.SQL.ADD( StrAnd + ' FIL_CODI >= '+ '''' +  CODI + '''' );
     StrAnd := ' and ' ;
  end ;
  if CODF <> '' then begin
     Q_CCUS.SQL.ADD( StrAnd + ' FIL_CODI <= '+ '''' +  CODF + '''' );
     StrAnd := ' and ' ;
  end ;
  if iTipo = 0  then
     Q_CCUS.SQL.ADD(' order by FIL_CODI ') ;
  if iTipo = 1  then
     Q_CCUS.SQL.ADD(' order by FIL_DESC ') ;
  Q_CCUS.open ;
end;

procedure TFListCCusto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Q_CCUS.close;
   action := cafree ;
end;



procedure TFListCCusto.QR_CCUSBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
Var
     vLogo : TBlobField;
begin
//
// Seleciona o Nome da Empresa
//

   QRLabel9.caption := FMenu.FUsuario ;
end;




end.
