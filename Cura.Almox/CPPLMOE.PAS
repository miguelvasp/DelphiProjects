unit CPPLMOE;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, DBTables, DB, Wwdatsrc, Wwquery, Wwtable, quickrpt,
  Qrctrls;

type
  TFListMoedas = class(TForm)
    QR_MOED: TQuickRep;
    Title: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel3: TQRLabel;
    Q_MOED: TwwQuery;
    DS_MOED: TwwDataSource;
    QRShape1: TQRShape;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRShape2: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRShape3: TQRShape;
    QRGroup1: TQRGroup;
    Codigo: TQRDBText;
    Descricao: TQRDBText;
    Q_MOEDMOE_SIGL: TStringField;
    Q_MOEDMOE_NOME: TStringField;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    Q_CTMOED: TQuery;
    Q_CTMOEDCMO_MOED: TStringField;
    Q_CTMOEDCMO_DATA: TDateTimeField;
    Q_CTMOEDCMO_VALO: TFloatField;
    QRSubDetail1: TQRSubDetail;
    Data: TQRDBText;
    Cotacao: TQRDBText;
    QRDBImage1: TQRDBImage;
    procedure QRLabel5Print(sender: TObject; var Value: string);
    procedure QRLabel6Print(sender: TObject; var Value: string);
    procedure detalheBeforePrint(var PrintBand: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QR_MOEDBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure DataPrint(sender: TObject; var Value: String);
    procedure CotacaoPrint(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FListMoedas: TFListMoedas;
  STRAND : STRING ;

implementation

uses CPPMLMO, CPPMENU;

{$R *.DFM}

procedure TFListMoedas.QRLabel5Print(sender: TObject; var Value: string);
begin
  //if (Q_CTMOEDCMO_VALO.IsNull) and (Q_CTMOEDCMO_DATA.IsNull) then
  //  Value := '';
end;

procedure TFListMoedas.QRLabel6Print(sender: TObject; var Value: string);
begin
  //if (Q_CTMOEDCMO_VALO.IsNull) and (Q_CTMOEDCMO_DATA.IsNull) then
  //  Value := '';
end;

procedure TFListMoedas.detalheBeforePrint(var PrintBand: Boolean);
begin
  PrintBand := not ((Q_CTMOEDCMO_VALO.IsNull) and (Q_CTMOEDCMO_DATA.IsNull))
end;



procedure TFListMoedas.FormCreate(Sender: TObject);
begin
  STRAND :=  'WHERE ';

  Q_MOED.close  ;
  Q_MOED.SQL.clear ;
  //Q_MOED.SQL.ADD('SELECT A.*,B.CMO_MOED,B.CMO_DATA,B.CMO_VALO FROM CPAMOED A,CPACMOE B ' )  ;
  Q_MOED.SQL.ADD ('SELECT * FROM CPAMOED ');
  //Q_MOED.SQL.ADD('where A.MOE_SIGL = B.CMO_MOED ' ) ;

  if SIGLAI <> '' then BEGIN
     Q_MOED.SQL.ADD( STRAND + 'MOE_SIGL >= '+ '''' +  SIGLAI + '''' );
     STRAND := ' AND ';
  END;
  if SIGLAF <> '' then
     Q_MOED.SQL.ADD( STRAND + ' MOE_SIGL <= '+ '''' +  SIGLAF + '''' );

  if DataI <> 0.0 then BEGIN
     STRAND := 'AND ' ;
     Q_CTMOED.SQL.ADD( STRAND + ' CMO_DATA >= '+ ''''+ FormatDateTime('MM/DD/YYYY',DataI ) + '''' );
    //STRAND := ' AND ';
  END ;
  if DataF <> 0.0 then
     Q_CTMOED.SQL.ADD( STRAND + ' CMO_DATA <= '+ '''' + FormatDateTime('MM/DD/YYYY',DataF ) + '''' );

  if Tipo = 0  then
     Q_MOED.SQL.ADD(' order by MOE_SIGL ')  ;
  if Tipo = 1  then
     Q_MOED.SQL.ADD(' order by MOE_NOME ')  ;
  Q_MOED.open  ;
  Q_CTMOED.open ;

end;

procedure TFListMoedas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Q_MOED.close ;
  Q_CTMOED.CLOSE ;
  action := cafree ;
end;







procedure TFListMoedas.QR_MOEDBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
Var
     vLogo : TBlobField;
begin
//
// Seleciona o Nome da Empresa
//
//   QRLabel20.caption := FMenu.StatusBar1.Panels[2].text ;

   QRLabel11.caption := FMenu.FUsuario ;

end;

procedure TFListMoedas.DataPrint(sender: TObject; var Value: String);
begin
        value := FormatDateTime('DD/MM/YYYY',Q_CTMOEDCMO_DATA.ASDATETIME) ;
end;

procedure TFListMoedas.CotacaoPrint(sender: TObject; var Value: String);
begin
        VALUE := Q_CTMOEDCMO_VALO.AsSTRING ;
end;

end.
