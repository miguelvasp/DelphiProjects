unit URelFluxoCaixaSimples;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Wwtable, QuickRpt, Qrctrls, ExtCtrls, Wwquery, wwstorep;

type
  TFRelFluxoCaixaSimples = class(TForm)
    FluxoCaixa: TQuickRep;
    Q_CMOE: TwwQuery;
    Q_CMOEcmo_data: TDateTimeField;
    Q_CMOEcmo_Valo: TFloatField;
    Q_AUX: TwwQuery;
    QRBand2: TQRBand;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRBand3: TQRBand;
    Q_FLUXO: TwwQuery;
    STP_FLUXO: TwwStoredProc;
    Q_FLUXOVencimento: TDateTimeField;
    Q_FLUXOValorEntrada: TFloatField;
    Q_FLUXOValorSaida: TFloatField;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRBand4: TQRBand;
    QRShape3: TQRShape;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel25: TQRLabel;
    QRShape4: TQRShape;
    QRLabel22: TQRLabel;
    QRMemo1: TQRMemo;
    QRShape6: TQRShape;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel20: TQRLabel;
    QRSysData3: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData1: TQRSysData;
    QRDBImage1: TQRDBImage;
    procedure FormCreate(Sender: TObject);
    procedure QRLabel7Print(sender: TObject; var Value: String);
    procedure QRDBText4Print(sender: TObject; var Value: String);
    procedure FluxoCaixaBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRLabel9Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
    TaxaDolar : real ;
    Saldo : real ;
  end;

var
  FRelFluxoCaixaSimples: TFRelFluxoCaixaSimples;

implementation

uses URelFluxoCaixaFilt,U_Funcoes, CPPMENU ;

{$R *.DFM}

procedure TFRelFluxoCaixaSimples.FormCreate(Sender: TObject);
Var StrFiltro : string ;
    Data1 : string ;
    Data2 : string ;
begin
  StrFiltro := 'Empresa: ' + FRelFluxoCaixaFilt.wwDBLookupCombo2.text + '  -  ' +
               'Valores em ';
  if FRelFluxoCaixaFilt.wwDBLookupCombo1.text = '' then
     StrFiltro := StrFiltro + 'R$'
  else StrFiltro := StrFiltro + FRelFluxoCaixaFilt.wwDBLookupCombo1.text ;

  Q_AUX.close ;
  Q_AUX.Sql.Clear ;
  Q_AUX.Sql.Add(' select PAR_MOED from CPAPARA' ) ;
  Q_AUX.Open ;

  if ( FRelFluxoCaixaFilt.wwDBLookupCombo1.text <> '' ) and
     ( FRelFluxoCaixaFilt.wwDBLookupCombo1.text <> Q_AUX.fieldbyname('PAR_MOED').asstring ) then begin
     Q_CMOE.close ;
     Q_CMOE.Sql.Clear ;
     Q_CMOE.Sql.Add(' select CMO_DATA,CMO_VALO from CPACMOE ' ) ;
     Q_CMOE.Sql.Add(' where CMO_MOED =' + '''' + FRelFluxoCaixaFilt.wwDBLookupCombo1.text + '''' ) ;
     Q_CMOE.sql.Add(' and convert(char(01),CMO_DATA,112) <= ' + '''' + formatdatetime('YYYYMMDD',date) + '''' ) ;
     Q_CMOE.Sql.Add(' order by CMO_DATA desc ') ;
     Q_CMOE.Open ;
     TaxaDolar := Q_CMOECMO_VALO.asfloat ;
     StrFiltro := StrFiltro  + ' Data : ' + formatdatetime('DD/MM/YYYY',Q_CMOECMO_DATA.asdatetime) ;
     StrFiltro := StrFiltro  + ' Taxa : ' + formatfloat('###,###,##0.000',Q_CMOECMO_VALO.asfloat) ;
  end ;
  StrFiltro := StrFiltro  + ' Período : ' + FRelFluxoCaixaFilt.Maskedit25.text  + ' até ' + FRelFluxoCaixaFilt.Maskedit26.text ;

  QRMemo1.lines.add(StrFiltro) ;

  try
    if FRelFluxoCaixaFilt.Maskedit25.text <> '  /  /  ' then
      data1 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit25.text ))
    else data1 := '  /  /  ' ;
    if FRelFluxoCaixaFilt.Maskedit26.text <> '  /  /  ' then
      data2 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit26.text ) )
    else data2 := '  /  /  ' ;


    IF FRelFluxoCaixaFilt.wwDBLookupCombo2.Text <> '' THEN
       STP_FLUXO.ParamByName( '@filial' ).Value:=FRelFluxoCaixaFilt.wwDBLookupCombo2.LookupValue;


    STP_FLUXO.ParamByName( '@DataI' ).Value := data1;
    STP_FLUXO.ParamByName( '@DataF' ).Value := data2 ;
    STP_FLUXO.ExecProc;
  finally
  end;
  Q_FLUXo.open ;

end;

procedure TFRelFluxoCaixaSimples.QRLabel7Print(sender: TObject;
  var Value: String);
var Valor : real ;
begin

    Valor := strtofloat(FRelFluxoCaixaFilt.edit1.text);
    if Valor < 0  then
       qrlabel7.font.color := clred
    else qrlabel7.font.color := clWindowText ;
    value := formatfloat('###,###,##0.00;(###,###,##0.00)',Valor) ;
    Saldo := Valor ;

end;

procedure TFRelFluxoCaixaSimples.QRDBText4Print(sender: TObject;
  var Value: String);
begin
   Saldo := Saldo + Q_FLUXOValorEntrada.asfloat - Q_FLUXOValorSaida.asfloat ;
//value := formatfloat('###,###,##0.00',Saldo) ;
    if Saldo < 0  then
       qrdbtext4.font.color := clred
    else qrdbtext4.font.color := clWindowText ;

   value := formatfloat('###,###,##0.00;(###,###,##0.00)',Saldo);
end;

procedure TFRelFluxoCaixaSimples.FluxoCaixaBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
   Saldo := 0 ;
   QRLabel20.caption := FMenu.FUsuario ;
end;

procedure TFRelFluxoCaixaSimples.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Q_FLUXo.close ;
   Q_AUX.close ;
   Q_CMOE.Close ;
   action := cafree ;
end;

procedure TFRelFluxoCaixaSimples.QRLabel9Print(sender: TObject;
  var Value: String);
begin
   if FRelFluxoCaixaFilt.RadioGroup2.ItemIndex = 0 then
        value := value + ' Previsto'
   else
        value := value + ' Realizado';
end;

end.
