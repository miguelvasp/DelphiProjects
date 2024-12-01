unit CPPLDIF;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, DBTables, DB, Wwdatsrc, Wwquery, Wwtable, quickrpt,
  Qrctrls;

type
  TFListDescAcres = class(TForm)
    QR_DIFE: TQuickRep;
    Title: TQRBand;
    Detail: TQRBand;
    QRLabel4: TQRLabel;
    QRShape1: TQRShape;
    Codigo: TQRDBText;
    Descricao: TQRDBText;
    QRLabel3: TQRLabel;
    Q_DIFE: TwwQuery;
    DS_DIFE: TwwDataSource;
    Q_DIFEDIF_CODI: TStringField;
    Q_DIFEDIF_DESC: TStringField;
    Q_DIFEDIF_SINAL: TStringField;
    Q_DIFEDIF_CTCO: TStringField;
    Sinal: TQRDBText;
    CContabil: TQRDBText;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRSysData4: TQRSysData;
    QRSysData3: TQRSysData;
    QRSysData5: TQRSysData;
    QRShape2: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRShape3: TQRShape;
    QRDBText1: TQRDBText;
    QRLabel7: TQRLabel;
    QRLabel11: TQRLabel;
    Q_DA: TQuery;
    Q_DACTC_CODI: TStringField;
    Q_DACTC_DESC: TStringField;
    QRDBImage1: TQRDBImage;
    QRDBText2: TQRDBText;
    Q_DIFEDIF_RETFONTE: TStringField;
    Q_DIFEDIF_ALIQ: TFloatField;
    Q_DIFEDIF_LIMITE: TFloatField;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel14: TQRLabel;
    QRDBText4: TQRDBText;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QR_DIFEBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRDBText1Print(sender: TObject; var Value: String);
    procedure QRDBText2Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FListDescAcres: TFListDescAcres;
  STRAND : STRING ;
implementation

uses Cppmlisold, CPPMENU;

{$R *.DFM}

procedure TFListDescAcres.FormCreate(Sender: TObject);
begin
  STRAND := ' WHERE ' ;
  //Q_DA.CLOSE ;
  Q_DIFE.close  ;
  Q_DIFE.SQL.clear ;
  //Q_DIFE.SQL.ADD('SELECT A.*,B.CTC_CODI,B.CTC_DESC from CPADIFE A,CPACTCO B ') ;
  //Q_DIFE.SQL.ADD('SELECT * FROM CPADIFE ') ;   comentada por miguel
  //Q_DIFE.SQL.ADD(' where A.DIF_CTCO = B.CTC_CODI ');

  Q_DIFE.SQL.ADD(' select dif_codi, dif_desc, dif_sinal, dif_ctco, dif_retfonte, '+
                 ' case when dif_aliq is null then 0 else dif_aliq end as dif_aliq, '+
                 ' case when dif_limite is null then 0 else dif_limite end as dif_limite from cpadife ') ;

  if CODI <> '' then BEGIN
     Q_DIFE.SQL.ADD( STRAND + ' DIF_CODI >= '+ '''' +  CODI + '''' );
     STRAND := ' AND ' ;
  END ;
  if CODF <> '' then
     Q_DIFE.SQL.ADD( STRAND + ' DIF_CODI <= '+ '''' +  CODF + '''' );

  if iTipo = 0  then
     Q_DIFE.SQL.ADD(' order by DIF_CODI ')  ;
  if iTipo = 1  then
     Q_DIFE.SQL.ADD(' order by DIF_DESC ')  ;
  Q_DIFE.open  ;
  QRLabel11.caption := FMenu.FUsuario;

end;

procedure TFListDescAcres.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Q_DIFE.close ;
 // Q_DA.CLOSE ;
end;



procedure TFListDescAcres.QR_DIFEBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
Var
     vLogo : TBlobField;
begin
//
// Seleciona o Nome da Empresa
//

   QRLabel11.caption := FMenu.FUsuario ;

   Q_DA.close ;
   Q_DA.sql.clear ;
   Q_DA.Sql.Add('select * from cpactco where ctc_codi = ' + '"' + Q_DIFEDIF_CTCO.asstring + '"' );
   Q_DA.open ;
end;

procedure TFListDescAcres.QRDBText1Print(sender: TObject;
  var Value: String);
begin
        value := Q_DACTC_DESC.asstring ;
end;

procedure TFListDescAcres.QRDBText2Print(sender: TObject;
  var Value: String);
begin
  if Q_DIFEDIF_RETFONTE.AsString = 'S' then
     Value := 'Sim'
  else if  Q_DIFEDIF_RETFONTE.AsString = 'N' then
     Value := 'Não';
end;

end.
