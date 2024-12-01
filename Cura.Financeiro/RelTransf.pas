unit RelTransf;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, quickrpt, ExtCtrls, DBTables, Wwquery, Db, Wwtable, Wwdatsrc;

type
  TFlstTransf = class(TForm)
    LST_Transf: TQuickRep;
    QRBand1: TQRBand;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    DS_Transf: TwwDataSource;
    Q_Transf: TwwQuery;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    Q_contas: TwwQuery;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    Q_contasCON_CODI: TStringField;
    Q_contasCON_DESC: TStringField;
    Q_TransfNumero: TIntegerField;
    Q_TransfBancoOrigem: TStringField;
    Q_TransfBancoDestino: TStringField;
    Q_TransfData: TDateTimeField;
    Q_TransfDocumento: TStringField;
    Q_TransfHistorico: TStringField;
    Q_TransfValor: TFloatField;
    Q_TransfEmiteCheque: TStringField;
    Q_TransfCtaGerencialOrig: TStringField;
    Q_TransfCtaGerencialDest: TStringField;
    QRShape3: TQRShape;
    Q_TransfFavorecido: TStringField;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    Q_FILI: TwwQuery;
    Q_FILIFIL_CODI: TStringField;
    Q_FILIFIL_DESC: TStringField;
    Q_TransfFilialOrigem: TStringField;
    Q_TransfFilialDestino: TStringField;
    QRShape4: TQRShape;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRDBImage1: TQRDBImage;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRLabel17Print(sender: TObject; var Value: String);
    procedure QRLabel18Print(sender: TObject; var Value: String);
    procedure QRLabel22Print(sender: TObject; var Value: String);
    procedure QRLabel21Print(sender: TObject; var Value: String);
    procedure LST_TransfBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FlstTransf: TFlstTransf;

implementation
uses CPPMENU ;
{$R *.DFM}

procedure TFlstTransf.FormCreate(Sender: TObject);
begin
  Q_Transf.open;
  Q_Contas.open;
end;

procedure TFlstTransf.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Q_Transf.close;
  Q_Contas.close;
  action:=cafree;
end;

procedure TFlstTransf.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  //fecha a query
   Q_CONTAS.close;
   // limpa oconteúdo da prop SQL do componente Query
   Q_CONTAS.SQL.clear;
   //insere na prop SQL do comp query a linha do select
   Q_CONTAS.SQL.ADD('select CON_CODI,CON_DESC from CPACONT where CON_CODI ='+''''+Q_TRANSFCTAGERENCIALORIG.asstring + '''' );
   Q_CONTAS.SQL.ADD('or CON_CODI = ' + '''' + Q_TRANSFCTAGERENCIALDEST.asstring + '''');
   //abre/executa a sentença SQL
   Q_CONTAS.open;
end;

procedure TFlstTransf.QRLabel17Print(sender: TObject; var Value: String);
begin
  Q_CONTAS.locate('CON_CODI',Q_TRANSFCTAGERENCIALORIG.asstring,[]);
//  QRLabel17.caption := Q_CONTASCON_DESC.asstring ;
  value := Q_CONTASCON_DESC.asstring ;
end;

procedure TFlstTransf.QRLabel18Print(sender: TObject; var Value: String);
begin
  Q_CONTAS.locate ('CON_CODI',Q_TRANSFCTAGERENCIALDEST.asstring,[]);
  //QRlabel18.caption := Q_CONTASCON_DESC.asstring;
  value := Q_CONTASCON_DESC.asstring;
end;



procedure TFlstTransf.QRLabel22Print(sender: TObject; var Value: String);
begin
    Q_FILI.locate('FIL_CODI',Q_TRANSFFILIALORIGEM.asstring,[]);
//  QRLabel17.caption := Q_CONTASCON_DESC.asstring ;
    value := Q_FILIFIL_DESC.asstring ;

end;

procedure TFlstTransf.QRLabel21Print(sender: TObject; var Value: String);
begin
    Q_FILI.locate('FIL_CODI',Q_TRANSFFILIALDESTINO.asstring,[]);
//  QRLabel17.caption := Q_CONTASCON_DESC.asstring ;
    value := Q_FILIFIL_DESC.asstring ;
end;



procedure TFlstTransf.LST_TransfBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
Var
     vLogo : TBlobField;
begin
//
// Seleciona o Nome da Empresa
//
//   QRLabel20.caption := FMenu.StatusBar1.Panels[2].text ;
   QRLabel25.caption := FMenu.FUsuario ;
end;

end.
