unit CPPLCON;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, DBTables, DB, Wwdatsrc, Wwquery, Wwtable, quickrpt,
  Qrctrls;

type
  TFListCGerenciais = class(TForm)
    QR_CONT: TQuickRep;
    Title: TQRBand;
    Detail: TQRBand;
    QRLabel4: TQRLabel;
    QRShape1: TQRShape;
    Codigo: TQRDBText;
    Descricao: TQRDBText;
    QRLabel3: TQRLabel;
    DS_CONT: TwwDataSource;
    EntSaida: TQRDBText;
    Tipo: TQRDBText;
    FluxoCaixa: TQRDBText;
    QRDBText1: TQRDBText;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData3: TQRSysData;
    QRSysData4: TQRSysData;
    QRShape2: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRShape3: TQRShape;
    Q_CONT: TwwQuery;
    Q_CONTCON_CODI: TStringField;
    Q_CONTCON_DESC: TStringField;
    Q_CONTCON_ENSA: TStringField;
    Q_CONTCON_OPER: TStringField;
    Q_CONTCON_FLOA: TFloatField;
    Q_CONTCON_FLUX: TStringField;
    Q_CONTCON_CTCO: TStringField;
    QRLabel17: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel13: TQRLabel;
    Q_CTCO: TwwQuery;
    Q_CTCOctc_desc: TStringField;
    QRDBImage1: TQRDBImage;
    procedure EntSaidaPrint(sender: TObject; var Value: string);
    procedure TipoPrint(sender: TObject; var Value: string);
    procedure FluxoCaixaPrint(sender: TObject; var Value: string);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QR_CONTBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRDBText1Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FListCGerenciais: TFListCGerenciais;

implementation
uses CPPMLISOLD, CPPMENU ;


{$R *.DFM}

procedure TFListCGerenciais.EntSaidaPrint(sender: TObject; var Value: string);
begin
  if Value = 'S' then
    Value := 'Saída'
  else
    Value := 'Entrada'
end;

procedure TFListCGerenciais.TipoPrint(sender: TObject; var Value: string);
begin
  if Value = 'O' then
    Value := 'Operacional'
  else
    if Value = 'N' then
      Value := 'Não Operacional'
    else
      if Value = 'F' then
        Value := 'Financeira'     
end;

procedure TFListCGerenciais.FluxoCaixaPrint(sender: TObject; var Value: string);
begin
  if Value = 'S' then
    Value := 'Sim'
  else
    Value := 'Não'
end;





procedure TFListCGerenciais.FormCreate(Sender: TObject);
var StrAnd : string ;
begin
  StrAnd := 'where';
  Q_CONT.close ;
  Q_CONT.SQL.clear ;
  Q_CONT.SQL.ADD('select * from cpacont ') ;

  if CODI <> '' then begin
     Q_CONT.SQL.ADD( StrAnd + ' CON_CODI >= '+ '''' +  CODI + '''' );
     StrAnd := ' and ';
  end ;
  if CODF <> '' then begin
     Q_CONT.SQL.ADD( StrAnd + 'CON_CODI <= '+ '''' +  CODF + '''' );
     StrAnd := ' and ';
  end ;


  if iTIPo = 0  then
     Q_CONT.SQL.ADD(' order by CON_CODI ') ;
  if iTIPO = 1  then
     Q_CONT.SQL.ADD(' order by CON_DESC ') ;
  Q_CONT.open ;
  QRLabel13.caption := FMenu.FUsuario;

end;

procedure TFListCGerenciais.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Q_CONT.close;
 action := cafree ;
end;





procedure TFListCGerenciais.QR_CONTBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
Var
     vLogo : TBlobField;
begin
//
// Seleciona o Nome da Empresa
//

   QRLabel13.caption := FMenu.FUsuario ;

end;

procedure TFListCGerenciais.QRDBText1Print(sender: TObject;
  var Value: String);
begin
    Q_CTCO.close ;
    Q_CTCO.sql.clear ;
    Q_CTCO.Sql.Add('select CTC_DESC from cpactco where ctc_codi = ' + '"' + Q_CONTCON_CTCO.asstring + '"' );
    Q_CTCO.open ;

    value := Q_CTCOCTC_DESC.asstring ; 
end;

end.
