unit CPPLBAN;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, DBTables, DB, Wwdatsrc, Wwquery, Wwtable, quickrpt,
  Qrctrls;

type
  TFListCBancarias = class(TForm)
    Title: TQRBand;
    Detail: TQRBand;
    QRLabel4: TQRLabel;
    QRShape1: TQRShape;
    Banco: TQRDBText;
    QRLabel3: TQRLabel;
    Q_BANC: TwwQuery;
    DS_BANC: TwwDataSource;
    Nome: TQRDBText;
    Agencia: TQRDBText;
    NomeAgen: TQRDBText;
    Layout: TQRDBText;
    QRShape2: TQRShape;
    QRLabel8: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData3: TQRSysData;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRSysData4: TQRSysData;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRShape3: TQRShape;
    Q_BANCBAN_CODI: TStringField;
    Q_BANCBAN_NOME: TStringField;
    Q_BANCBAN_AGEN: TStringField;
    Q_BANCBAN_NAGE: TStringField;
    Q_BANCBAN_DATA: TDateTimeField;
    Q_BANCBAN_SALD: TFloatField;
    Q_BANCBAN_NLAN: TFloatField;
    Q_BANCBAN_LCHE: TStringField;
    Q_BANCBAN_UCHE: TStringField;
    QR_BANC: TQuickRep;
    QRLabel7: TQRLabel;
    QRLabel11: TQRLabel;
    Q_DACR: TQuery;
    Q_DACRLAY_CODI: TStringField;
    Q_DACRLAY_DESC: TStringField;
    QRDBImage1: TQRDBImage;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QR_BANCBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure LayoutPrint(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FListCBancarias: TFListCBancarias;
  STRAND : STRING ;
implementation

uses CPPMLCB, CPPMENU;

{$R *.DFM}

procedure TFListCBancarias.FormCreate(Sender: TObject);
begin
  STRAND := ' WHERE ';
  Q_BANC.close  ;
  Q_BANC.SQL.clear ;
  Q_BANC.SQL.ADD('SELECT * FROM CPABANC A ' )  ;
  //Q_BANC.SQL.ADD('where A.BAN_LCHE = B.LAY_CODI ' ) ;

  if BANCI <> '' then BEGIN
     Q_BANC.SQL.ADD( STRAND + ' BAN_CODI >= '+ '''' +  BANCI + '''' );
     STRAND := 'AND '
  END ;
  if BANCF <> '' then
     Q_BANC.SQL.ADD( STRAND + ' BAN_CODI <= '+ '''' +  BANCF + '''' );

  if Tipo = 0  then
     Q_BANC.SQL.ADD(' order by BAN_CODI ')  ;
  if Tipo = 1  then
     Q_BANC.SQL.ADD(' order by BAN_NOME ')  ;
  Q_BANC.open  ;

end;
procedure TFListCBancarias.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  Q_BANC.close ;
  action := cafree ;
end;




procedure TFListCBancarias.QR_BANCBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
Var
     vLogo : TBlobField;
begin
//
// Seleciona o Nome da Empresa
//
   QRLabel11.caption := FMenu.FUsuario ;

   Q_DACR.close ;
   Q_DACR.sql.clear ;
   Q_DACR.Sql.Add('select * from cpaLAYO where LAY_CODI = ' + '"' + Q_BANCBAN_LCHE.asstring + '"' );
   Q_DACR.open ;

end;

procedure TFListCBancarias.LayoutPrint(sender: TObject; var Value: String);
begin


    value := Q_DACRLAY_DESC.asstring ;
end;

end.
