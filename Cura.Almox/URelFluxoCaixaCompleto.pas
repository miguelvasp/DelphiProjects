unit URelFluxoCaixaCompleto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Wwquery, Wwtable, Qrctrls, QuickRpt, ExtCtrls,
  gtQRXport_RTF, gtQRXport_Excel, gtQRXport, gtQRXport_Doc, gtQRXport_PDF, gtQrCtrls,
  StdCtrls;

type
  TFRelFluxoCaixaCompleto = class(TForm)
    FluxoCaixa: TQuickRep;
    QRBand1: TQRBand;
    QRShape1: TgtQRShape;
    QRLabel1: TgtQRLabel;
    QRLabel2: TgtQRLabel;
    QRLabel3: TgtQRLabel;
    QRLabel4: TgtQRLabel;
    QRLabel5: TgtQRLabel;
    QRSysData1: TgtQRSysData;
    QRSysData2: TgtQRSysData;
    QRSysData3: TgtQRSysData;
    QRShape2: TgtQRShape;
    QRLabel15: TgtQRLabel;
    QRLabel20: TgtQRLabel;
    QRMemo1: TgtQRMemo;
    QRShape5: TgtQRShape;
    QRLabel36: TgtQRLabel;
    data1d: TgtQRLabel;
    Q_FLUXO: TwwQuery;
    Q_AUX: TwwQuery;
    Q_CMOE: TwwQuery;
    Q_CMOEcmo_data: TDateTimeField;
    Q_CMOEcmo_Valo: TFloatField;
    Q_FLUXOValor1: TFloatField;
    Q_FLUXOValor2: TFloatField;
    Q_FLUXOValor3: TFloatField;
    Q_FLUXOValor4: TFloatField;
    Q_FLUXOValor5: TFloatField;
    Q_FLUXOValor6: TFloatField;
    Q_FLUXOValor7: TFloatField;
    Q_FLUXOValor8: TFloatField;
    Q_FLUXOValor9: TFloatField;
    Q_FLUXOValor10: TFloatField;
    Q_FLUXOValor11: TFloatField;
    Q_FLUXOValor12: TFloatField;
    Q_FLUXOQUEBRA: TStringField;
    Q_FLUXOCONTA: TStringField;
    data1a: TgtQRLabel;
    data2a: TgtQRLabel;
    data2d: TgtQRLabel;
    data3a: TgtQRLabel;
    data3d: TgtQRLabel;
    data4a: TgtQRLabel;
    data4d: TgtQRLabel;
    data5a: TgtQRLabel;
    data5d: TgtQRLabel;
    data6a: TgtQRLabel;
    data6d: TgtQRLabel;
    data7a: TgtQRLabel;
    data7d: TgtQRLabel;
    data8a: TgtQRLabel;
    data8d: TgtQRLabel;
    data9a: TgtQRLabel;
    data9d: TgtQRLabel;
    Q_FLUXOFolha: TIntegerField;
    QRBand2: TQRBand;
    QRDBText1: TgtQRDBText;
    QRDBText2: TgtQRDBText;
    QRDBText3: TgtQRDBText;
    QRDBText4: TgtQRDBText;
    QRDBText5: TgtQRDBText;
    QRDBText6: TgtQRDBText;
    QRDBText7: TgtQRDBText;
    QRDBText8: TgtQRDBText;
    QRDBText9: TgtQRDBText;
    QRDBText10: TgtQRDBText;
    QRBand3: TQRBand;
    QRExpr1: TgtQRExpr;
    QRExpr2: TgtQRExpr;
    QRExpr3: TgtQRExpr;
    QRExpr4: TgtQRExpr;
    QRExpr5: TgtQRExpr;
    QRExpr6: TgtQRExpr;
    QRExpr7: TgtQRExpr;
    QRExpr8: TgtQRExpr;
    QRExpr9: TgtQRExpr;
    QRLabel6: TgtQRLabel;
    QRLabel7: TgtQRLabel;
    QRDBImage1: TgtQRDBImage;
    gtQRPDFExport1: TgtQRPDFExport;
    gtQRExcelExport1: TgtQRExcelExport;
    gtQRRTFExport1: TgtQRRTFExport;
    Q_AUX2: TwwQuery;
    mmAnalitico: TMemo;
    mmSintetico: TMemo;
    Q_FLUXOVALOR13: TFloatField;
    Q_FLUXOVALOR14: TFloatField;
    Q_FLUXOVALOR15: TFloatField;
    Q_FLUXOVALOR16: TFloatField;
    Q_FLUXOVALOR17: TFloatField;
    Q_FLUXOVALOR18: TFloatField;
    Q_FLUXOVALOR19: TFloatField;
    Q_FLUXOVALOR20: TFloatField;
    Q_FLUXOVALOR21: TFloatField;
    Q_FLUXOVALOR22: TFloatField;
    Q_FLUXOVALOR23: TFloatField;
    Q_FLUXOVALOR24: TFloatField;
    Q_FLUXOVALOR25: TFloatField;
    Q_FLUXOVALOR26: TFloatField;
    Q_FLUXOVALOR27: TFloatField;
    Q_FLUXOVALOR28: TFloatField;
    Q_FLUXOVALOR29: TFloatField;
    Q_FLUXOVALOR30: TFloatField;
    Q_FLUXOVALOR31: TFloatField;
    QRShape4: TQRShape;
    QRShape3: TQRShape;
    qrTotaisTT: TwwQuery;
    qrTotais: TwwQuery;
    qrTotaistotal: TFloatField;
    qrTotais12: TwwQuery;
    qrTotais12total: TFloatField;
    qrBuscaTotais: TwwQuery;
    qrBuscaTotaisvalor: TFloatField;
    lbT1: TQRLabel;
    lbT2: TQRLabel;
    lbT3: TQRLabel;
    lbT4: TQRLabel;
    lbT5: TQRLabel;
    lbT6: TQRLabel;
    lbT7: TQRLabel;
    lbT8: TQRLabel;
    qrAux3: TwwQuery;
    procedure FormCreate(Sender: TObject);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRDBText1Print(sender: TObject; var Value: String);
    procedure FluxoCaixaBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRDBText2Print(sender: TObject; var Value: String);
    procedure QRDBText3Print(sender: TObject; var Value: String);
    procedure QRDBText4Print(sender: TObject; var Value: String);
    procedure QRDBText5Print(sender: TObject; var Value: String);
    procedure QRDBText6Print(sender: TObject; var Value: String);
    procedure QRDBText7Print(sender: TObject; var Value: String);
    procedure QRDBText8Print(sender: TObject; var Value: String);
    procedure QRDBText9Print(sender: TObject; var Value: String);
    procedure QRDBText10Print(sender: TObject; var Value: String);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRLabel6Print(sender: TObject; var Value: String);
    procedure QRExpr1Print(sender: TObject; var Value: String);
    procedure QRExpr2Print(sender: TObject; var Value: String);
    procedure QRExpr3Print(sender: TObject; var Value: String);
    procedure QRExpr4Print(sender: TObject; var Value: String);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRLabel2Print(sender: TObject; var Value: String);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRExpr5Print(sender: TObject; var Value: String);
    procedure QRExpr6Print(sender: TObject; var Value: String);
    procedure QRExpr7Print(sender: TObject; var Value: String);
    procedure QRExpr8Print(sender: TObject; var Value: String);
    procedure QRExpr9Print(sender: TObject; var Value: String);
    function totalConta(periodos : integer) : Double;
  private
    { Private declarations }
  public
    { Public declarations }
     Total : real ;

     TaxaDolar : real ;
     Totgeral : real ;
     Tot1 : real ;
     Tot2 : real ;
     Tot3 : real ;
     Tot4 : real ;
  end;

var
  FRelFluxoCaixaCompleto: TFRelFluxoCaixaCompleto;

implementation

uses URelFluxoCaixaFilt, CPPMENU, URelFluxoCaixa;

{$R *.DFM}

procedure TFRelFluxoCaixaCompleto.FormCreate(Sender: TObject);
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
  QRMemo1.lines.add(StrFiltro) ;

  {seleciona tipo de relatorio analitico ou sintetico}
  Q_FLUXO.CLOSE;
  Q_FLUXO.SQL.Clear;
  if FRelFluxoCaixaFilt.RadioGroup1.ItemIndex = 1 then
  begin
      Q_FLUXO.SQL := mmAnalitico.Lines;
  end
  else IF   FRelFluxoCaixaFilt.RadioGroup1.ItemIndex = 2 then
  BEGIN
      Q_FLUXO.SQL := mmSintetico.Lines;
  end;


  Q_FLUXO.Open;
end;

procedure TFRelFluxoCaixaCompleto.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
  var p_rel : Integer;
begin

     if FRelFluxoCaixaFilt.CheckBox1.Checked then
        p_rel := StrToInt(FRelFluxoCaixaFilt.edtPeriodo.Text);

     if Q_FLUXOFolha.asinteger <> 4 then
     begin
        data4d.enabled :=true ;
        data4a.enabled :=true ;
        data5a.enabled :=true  ;
        data6a.enabled :=true  ;
        data7a.enabled :=true  ;
        data8a.enabled :=true  ;
        data9a.enabled :=true  ;

        data5d.enabled :=true  ;
        data6d.enabled :=true  ;
        data7d.enabled :=true  ;
        data8d.enabled :=true  ;
        data9d.enabled :=true  ;
     end
     else
     begin
        data5a.enabled :=false ;
        data6a.enabled :=false ;
        data7a.enabled :=false ;
        data8a.enabled :=false ;
        data9a.enabled :=false ;

        data5d.enabled :=false ;
        data6d.enabled :=false ;
        data7d.enabled :=false ;
        data8d.enabled :=false ;
        data9d.enabled :=false ;
     end;


   if Q_FLUXOFolha.asinteger = 1 then
   begin

      data1d.caption := 'de ' + formatdatetime('DD/MM/YY',strtodate(FRelFluxoCaixaFilt.maskedit1.text)) ;
      data1a.caption := ' a ' + formatdatetime('DD/MM/YY',strtodate(FRelFluxoCaixaFilt.maskedit2.text)) ;

      data2d.caption := 'de ' + formatdatetime('DD/MM/YY',strtodate(FRelFluxoCaixaFilt.maskedit3.text)) ;
      data2a.caption := ' a ' + formatdatetime('DD/MM/YY',strtodate(FRelFluxoCaixaFilt.maskedit4.text)) ;

      data3d.caption := 'de ' + formatdatetime('DD/MM/YY',strtodate(FRelFluxoCaixaFilt.maskedit5.text)) ;
      data3a.caption := ' a ' + formatdatetime('DD/MM/YY',strtodate(FRelFluxoCaixaFilt.maskedit6.text)) ;

      data4d.caption := 'de ' + formatdatetime('DD/MM/YY',strtodate(FRelFluxoCaixaFilt.maskedit7.text)) ;
      data4a.caption := ' a ' + formatdatetime('DD/MM/YY',strtodate(FRelFluxoCaixaFilt.maskedit8.text)) ;

      data5d.caption := 'de ' + formatdatetime('DD/MM/YY',strtodate(FRelFluxoCaixaFilt.maskedit9.text)) ;
      data5a.caption := ' a ' + formatdatetime('DD/MM/YY',strtodate(FRelFluxoCaixaFilt.maskedit10.text)) ;

      data6d.caption := 'de ' + formatdatetime('DD/MM/YY',strtodate(FRelFluxoCaixaFilt.maskedit11.text)) ;
      data6a.caption := ' a ' + formatdatetime('DD/MM/YY',strtodate(FRelFluxoCaixaFilt.maskedit12.text)) ;

      data7d.caption := 'de ' + formatdatetime('DD/MM/YY',strtodate(FRelFluxoCaixaFilt.maskedit13.text)) ;
      data7a.caption := ' a ' + formatdatetime('DD/MM/YY',strtodate(FRelFluxoCaixaFilt.maskedit14.text)) ;

      data8d.caption := 'de ' + formatdatetime('DD/MM/YY',strtodate(FRelFluxoCaixaFilt.maskedit15.text)) ;
      data8a.caption := ' a ' + formatdatetime('DD/MM/YY',strtodate(FRelFluxoCaixaFilt.maskedit16.text)) ;

      if FRelFluxoCaixaFilt.Radiogroup3.itemindex = 0 then begin
         data9d.enabled := false ;
         data9a.caption := '    Total' ;
      end else begin
         data9d.caption := 'de ' + formatdatetime('DD/MM/YY',strtodate(FRelFluxoCaixaFilt.maskedit17.text)) ;
         data9a.caption := ' a ' + formatdatetime('DD/MM/YY',strtodate(FRelFluxoCaixaFilt.maskedit18.text)) ;
      end ;
   end
   else   if Q_FLUXOFolha.asinteger = 2 then
   begin
      data1d.caption := 'de ' + formatdatetime('DD/MM/YY',strtodate(FRelFluxoCaixaFilt.maskedit19.text)) ;
      data1a.caption := ' a ' + formatdatetime('DD/MM/YY',strtodate(FRelFluxoCaixaFilt.maskedit20.text)) ;

      data2d.caption := 'de ' + formatdatetime('DD/MM/YY',strtodate(FRelFluxoCaixaFilt.maskedit21.text)) ;
      data2a.caption := ' a ' + formatdatetime('DD/MM/YY',strtodate(FRelFluxoCaixaFilt.maskedit22.text)) ;

      data3d.caption := 'de ' + formatdatetime('DD/MM/YY',strtodate(FRelFluxoCaixaFilt.maskedit23.text)) ;
      data3a.caption := ' a ' + formatdatetime('DD/MM/YY',strtodate(FRelFluxoCaixaFilt.maskedit24.text)) ;

      data4d.caption := 'de ' + formatdatetime('DD/MM/YY',strtodate(FRelFluxoCaixaFilt.maskedit27.text)) ;
      data4a.caption := ' a ' + formatdatetime('DD/MM/YY',strtodate(FRelFluxoCaixaFilt.maskedit28.text)) ;

      data5d.caption := 'de ' + formatdatetime('DD/MM/YY',strtodate(FRelFluxoCaixaFilt.maskedit29.text)) ;
      data5a.caption := ' a ' + formatdatetime('DD/MM/YY',strtodate(FRelFluxoCaixaFilt.maskedit30.text)) ;

      data6d.caption := 'de ' + formatdatetime('DD/MM/YY',strtodate(FRelFluxoCaixaFilt.maskedit31.text)) ;
      data6a.caption := ' a ' + formatdatetime('DD/MM/YY',strtodate(FRelFluxoCaixaFilt.maskedit32.text)) ;

      data7d.caption := 'de ' + formatdatetime('DD/MM/YY',strtodate(FRelFluxoCaixaFilt.maskedit33.text)) ;
      data7a.caption := ' a ' + formatdatetime('DD/MM/YY',strtodate(FRelFluxoCaixaFilt.maskedit34.text)) ;

      data8d.caption := 'de ' + formatdatetime('DD/MM/YY',strtodate(FRelFluxoCaixaFilt.maskedit35.text)) ;
      data8a.caption := ' a ' + formatdatetime('DD/MM/YY',strtodate(FRelFluxoCaixaFilt.maskedit36.text)) ;

      data9d.caption := 'de ' + formatdatetime('DD/MM/YY',strtodate(FRelFluxoCaixaFilt.maskedit37.text)) ;
      data9a.caption := ' a ' + formatdatetime('DD/MM/YY',strtodate(FRelFluxoCaixaFilt.maskedit38.text)) ;

      if FRelFluxoCaixaFilt.Radiogroup3.itemindex = 1 then
      begin
           data4d.enabled := false ;
           data4a.caption := '    Total' ;
           DATA5A.Enabled := FALSE;
           DATA5D.Enabled := False;
           DATA6A.Enabled := FALSE;
           DATA6D.Enabled := False;
           DATA7A.Enabled := FALSE;
           DATA7D.Enabled := False;
           DATA8A.Enabled := FALSE;
           DATA8D.Enabled := False;
           DATA9A.Enabled := FALSE;
           DATA9D.Enabled := False;
      END;

   end
   else   if Q_FLUXOFolha.asinteger = 3 then
   begin
      data1d.caption := 'de ' + formatdatetime('DD/MM/YY',strtodate(FRelFluxoCaixaFilt.maskedit39.text)) ;
      data1a.caption := ' a ' + formatdatetime('DD/MM/YY',strtodate(FRelFluxoCaixaFilt.maskedit40.text)) ;

      data2d.caption := 'de ' + formatdatetime('DD/MM/YY',strtodate(FRelFluxoCaixaFilt.maskedit41.text)) ;
      data2a.caption := ' a ' + formatdatetime('DD/MM/YY',strtodate(FRelFluxoCaixaFilt.maskedit42.text)) ;

      data3d.caption := 'de ' + formatdatetime('DD/MM/YY',strtodate(FRelFluxoCaixaFilt.maskedit43.text)) ;
      data3a.caption := ' a ' + formatdatetime('DD/MM/YY',strtodate(FRelFluxoCaixaFilt.maskedit44.text)) ;

      data4d.caption := 'de ' + formatdatetime('DD/MM/YY',strtodate(FRelFluxoCaixaFilt.maskedit45.text)) ;
      data4a.caption := ' a ' + formatdatetime('DD/MM/YY',strtodate(FRelFluxoCaixaFilt.maskedit46.text)) ;

      data5d.caption := 'de ' + formatdatetime('DD/MM/YY',strtodate(FRelFluxoCaixaFilt.maskedit47.text)) ;
      data5a.caption := ' a ' + formatdatetime('DD/MM/YY',strtodate(FRelFluxoCaixaFilt.maskedit48.text)) ;

      data6d.caption := 'de ' + formatdatetime('DD/MM/YY',strtodate(FRelFluxoCaixaFilt.maskedit49.text)) ;
      data6a.caption := ' a ' + formatdatetime('DD/MM/YY',strtodate(FRelFluxoCaixaFilt.maskedit50.text)) ;

      data7d.caption := 'de ' + formatdatetime('DD/MM/YY',strtodate(FRelFluxoCaixaFilt.maskedit51.text)) ;
      data7a.caption := ' a ' + formatdatetime('DD/MM/YY',strtodate(FRelFluxoCaixaFilt.maskedit52.text)) ;

      data8d.caption := 'de ' + formatdatetime('DD/MM/YY',strtodate(FRelFluxoCaixaFilt.maskedit53.text)) ;
      data8a.caption := ' a ' + formatdatetime('DD/MM/YY',strtodate(FRelFluxoCaixaFilt.maskedit54.text)) ;

      data9d.caption := 'de ' + formatdatetime('DD/MM/YY',strtodate(FRelFluxoCaixaFilt.maskedit55.text)) ;
      data9a.caption := ' a ' + formatdatetime('DD/MM/YY',strtodate(FRelFluxoCaixaFilt.maskedit56.text)) ;

   end
   else   if Q_FLUXOFolha.asinteger = 4 then
   begin
      data1d.caption := 'de ' + formatdatetime('DD/MM/YY',strtodate(FRelFluxoCaixaFilt.maskedit57.text)) ;
      data1a.caption := ' a ' + formatdatetime('DD/MM/YY',strtodate(FRelFluxoCaixaFilt.maskedit58.text)) ;

      data2d.caption := 'de ' + formatdatetime('DD/MM/YY',strtodate(FRelFluxoCaixaFilt.maskedit59.text)) ;
      data2a.caption := ' a ' + formatdatetime('DD/MM/YY',strtodate(FRelFluxoCaixaFilt.maskedit60.text)) ;

      data3d.caption := 'de ' + formatdatetime('DD/MM/YY',strtodate(FRelFluxoCaixaFilt.maskedit61.text)) ;
      data3a.caption := ' a ' + formatdatetime('DD/MM/YY',strtodate(FRelFluxoCaixaFilt.maskedit62.text)) ;

      data4d.caption := 'de ' + formatdatetime('DD/MM/YY',strtodate(FRelFluxoCaixaFilt.maskedit63.text)) ;
      data4a.caption := ' a ' + formatdatetime('DD/MM/YY',strtodate(FRelFluxoCaixaFilt.maskedit64.text)) ;

      if FRelFluxoCaixaFilt.Radiogroup3.itemindex = 2 then
      begin
           data5a.enabled := True ;
           data5a.caption := '    Total' ;
           DATA6A.Enabled := FALSE;
           DATA6D.Enabled := False;
           DATA7A.Enabled := FALSE;
           DATA7D.Enabled := False;
           DATA8A.Enabled := FALSE;
           DATA8D.Enabled := False;
           DATA9A.Enabled := FALSE;
           DATA9D.Enabled := False;
      END;
   end ;


//   if FRelFluxoCaixaFilt.RadioGroup3.ItemIndex = 1 then
//   begin
//       if Q_FLUXOFolha.Value = 2 then
//       begin
//           QRDBText6.Enabled := False;
//           QRDBText7.Enabled := False;
//           QRDBText8.Enabled := False;
//           QRDBText9.Enabled := False;
//           QRDBText10.Enabled := False;
//       end;
//   end;



     IF FRelFluxoCaixaFilt.CheckBox1.Checked then
     begin
        if Q_FLUXOFolha.asinteger = 1 then
        begin
            if p_rel = 1 then
            begin
               data2d.Enabled := False;
               data2a.Caption := 'Total';
               data3d.Enabled := False;
               data3a.Enabled := False;
               data4d.Enabled := False;
               data4a.Enabled := False;
               data5d.Enabled := False;
               data5a.Enabled := False;
               data6d.Enabled := False;
               data6a.Enabled := False;
               data7d.Enabled := False;
               data7a.Enabled := False;
               data8d.Enabled := False;
               data8a.Enabled := False;
               data9d.Enabled := False;
               data9a.Enabled := False;
            end;
            if p_rel = 2 then
            begin
               data3d.Enabled := False;
               data3a.Caption := 'Total';
               data4d.Enabled := False;
               data4a.Enabled := False;
               data5d.Enabled := False;
               data5a.Enabled := False;
               data6d.Enabled := False;
               data6a.Enabled := False;
               data7d.Enabled := False;
               data7a.Enabled := False;
               data8d.Enabled := False;
               data8a.Enabled := False;
               data9d.Enabled := False;
               data9a.Enabled := False;
            end;
            if p_rel = 3 then
            begin
               data4d.Enabled := False;
               data4a.Caption := 'Total';
               data5d.Enabled := False;
               data5a.Enabled := False;
               data6d.Enabled := False;
               data6a.Enabled := False;
               data7d.Enabled := False;
               data7a.Enabled := False;
               data8d.Enabled := False;
               data8a.Enabled := False;
               data9d.Enabled := False;
               data9a.Enabled := False;
            end;
            if p_rel = 4 then
            begin
               data5d.Enabled := False;
               data5a.Caption := 'Total';
               data6d.Enabled := False;
               data6a.Enabled := False;
               data7d.Enabled := False;
               data7a.Enabled := False;
               data8d.Enabled := False;
               data8a.Enabled := False;
               data9d.Enabled := False;
               data9a.Enabled := False;
            end;
            if p_rel = 5 then
            begin
               data6d.Enabled := False;
               data6a.Caption := 'Total';
               data7d.Enabled := False;
               data7a.Enabled := False;
               data8d.Enabled := False;
               data8a.Enabled := False;
               data9d.Enabled := False;
               data9a.Enabled := False;
            end;
            if p_rel = 6 then
            begin
               data7d.Enabled := False;
               data7a.Caption := 'Total';
               data8d.Enabled := False;
               data8a.Enabled := False;
               data9d.Enabled := False;
               data9a.Enabled := False;
            end;
            if p_rel = 7 then
            begin
               data8d.Enabled := False;
               data8a.Caption := 'Total';
               data9d.Enabled := False;
               data9a.Enabled := False;
            end;
            if p_rel = 8 then
            begin
               data9d.Enabled := False;
               data9a.Caption := 'Total';
            end;
        end;    //end folha 1




        if Q_FLUXOFolha.asinteger = 2 then
        begin
            if p_rel = 9 then
            begin
               data1d.Enabled := False;
               data1a.Caption := 'Total';
               data2d.Enabled := False;
               data2a.Enabled := False;
               data3d.Enabled := False;
               data3a.Enabled := False;
               data4d.Enabled := False;
               data4a.Enabled := False;
               data5d.Enabled := False;
               data5a.Enabled := False;
               data6d.Enabled := False;
               data6a.Enabled := False;
               data7d.Enabled := False;
               data7a.Enabled := False;
               data8d.Enabled := False;
               data8a.Enabled := False;
               data9d.Enabled := False;
               data9a.Enabled := False;
            end;
            if p_rel = 10 then
            begin
               data2d.Enabled := False;
               data2a.Caption := 'Total';
               data3d.Enabled := False;
               data3a.Enabled := False;
               data4d.Enabled := False;
               data4a.Enabled := False;
               data5d.Enabled := False;
               data5a.Enabled := False;
               data6d.Enabled := False;
               data6a.Enabled := False;
               data7d.Enabled := False;
               data7a.Enabled := False;
               data8d.Enabled := False;
               data8a.Enabled := False;
               data9d.Enabled := False;
               data9a.Enabled := False;
            end;
            if p_rel = 11 then
            begin
               data3d.Enabled := False;
               data3a.Caption := 'Total';
               data4d.Enabled := False;
               data4a.Enabled := False;
               data5d.Enabled := False;
               data5a.Enabled := False;
               data6d.Enabled := False;
               data6a.Enabled := False;
               data7d.Enabled := False;
               data7a.Enabled := False;
               data8d.Enabled := False;
               data8a.Enabled := False;
               data9d.Enabled := False;
               data9a.Enabled := False;
            end;
            if p_rel = 12 then
            begin
               data4d.Enabled := False;
               data4a.Caption := 'Total';
               data5d.Enabled := False;
               data5a.Enabled := False;
               data6d.Enabled := False;
               data6a.Enabled := False;
               data7d.Enabled := False;
               data7a.Enabled := False;
               data8d.Enabled := False;
               data8a.Enabled := False;
               data9d.Enabled := False;
               data9a.Enabled := False;
            end;
            if p_rel = 13 then
            begin
               data5d.Enabled := False;
               data5a.Caption := 'Total';
               data6d.Enabled := False;
               data6a.Enabled := False;
               data7d.Enabled := False;
               data7a.Enabled := False;
               data8d.Enabled := False;
               data8a.Enabled := False;
               data9d.Enabled := False;
               data9a.Enabled := False;
            end;
            if p_rel = 14 then
            begin
               data6d.Enabled := False;
               data6a.Caption := 'Total';
               data7d.Enabled := False;
               data7a.Enabled := False;
               data8d.Enabled := False;
               data8a.Enabled := False;
               data9d.Enabled := False;
               data9a.Enabled := False;
            end;
            if p_rel = 15 then
            begin
               data7d.Enabled := False;
               data7a.Caption := 'Total';
               data8d.Enabled := False;
               data8a.Enabled := False;
               data9d.Enabled := False;
               data9a.Enabled := False;
            end;
            if p_rel = 16 then
            begin
               data8d.Enabled := False;
               data8a.Caption := 'Total';
               data9d.Enabled := False;
               data9a.Enabled := False;
            end;
            if p_rel = 17 then
            begin
               data9d.Enabled := False;
               data9a.Caption := 'Total';
            end;
        end;    //end folha 2

        if Q_FLUXOFolha.asinteger = 3 then
        begin
            if p_rel = 18 then
            begin
               data1d.Enabled := False;
               data1a.Caption := 'Total';
               data2d.Enabled := False;
               data2a.Enabled := False;
               data3d.Enabled := False;
               data3a.Enabled := False;
               data4d.Enabled := False;
               data4a.Enabled := False;
               data5d.Enabled := False;
               data5a.Enabled := False;
               data6d.Enabled := False;
               data6a.Enabled := False;
               data7d.Enabled := False;
               data7a.Enabled := False;
               data8d.Enabled := False;
               data8a.Enabled := False;
               data9d.Enabled := False;
               data9a.Enabled := False;
            end;
            if p_rel = 19 then
            begin
               data2d.Enabled := False;
               data2a.Caption := 'Total';
               data3d.Enabled := False;
               data3a.Enabled := False;
               data4d.Enabled := False;
               data4a.Enabled := False;
               data5d.Enabled := False;
               data5a.Enabled := False;
               data6d.Enabled := False;
               data6a.Enabled := False;
               data7d.Enabled := False;
               data7a.Enabled := False;
               data8d.Enabled := False;
               data8a.Enabled := False;
               data9d.Enabled := False;
               data9a.Enabled := False;
            end;
            if p_rel = 20 then
            begin
               data3d.Enabled := False;
               data3a.Caption := 'Total';
               data4d.Enabled := False;
               data4a.Enabled := False;
               data5d.Enabled := False;
               data5a.Enabled := False;
               data6d.Enabled := False;
               data6a.Enabled := False;
               data7d.Enabled := False;
               data7a.Enabled := False;
               data8d.Enabled := False;
               data8a.Enabled := False;
               data9d.Enabled := False;
               data9a.Enabled := False;
            end;
            if p_rel = 21 then
            begin
               data4d.Enabled := False;
               data4a.Caption := 'Total';
               data5d.Enabled := False;
               data5a.Enabled := False;
               data6d.Enabled := False;
               data6a.Enabled := False;
               data7d.Enabled := False;
               data7a.Enabled := False;
               data8d.Enabled := False;
               data8a.Enabled := False;
               data9d.Enabled := False;
               data9a.Enabled := False;
            end;
            if p_rel = 22 then
            begin
               data5d.Enabled := False;
               data5a.Caption := 'Total';
               data6d.Enabled := False;
               data6a.Enabled := False;
               data7d.Enabled := False;
               data7a.Enabled := False;
               data8d.Enabled := False;
               data8a.Enabled := False;
               data9d.Enabled := False;
               data9a.Enabled := False;
            end;
            if p_rel = 23 then
            begin
               data6d.Enabled := False;
               data6a.Caption := 'Total';
               data7d.Enabled := False;
               data7a.Enabled := False;
               data8d.Enabled := False;
               data8a.Enabled := False;
               data9d.Enabled := False;
               data9a.Enabled := False;
            end;
            if p_rel = 24 then
            begin
               data7d.Enabled := False;
               data7a.Caption := 'Total';
               data8d.Enabled := False;
               data8a.Enabled := False;
               data9d.Enabled := False;
               data9a.Enabled := False;
            end;
            if p_rel = 25 then
            begin
               data8d.Enabled := False;
               data8a.Caption := 'Total';
               data9d.Enabled := False;
               data9a.Enabled := False;
            end;
            if p_rel = 26 then
            begin
               data9d.Enabled := False;
               data9a.Caption := 'Total';
            end;
        end;    //end folha 3


        if Q_FLUXOFolha.asinteger = 4 then
        begin
            if p_rel = 27 then
            begin
               data1d.Enabled := False;
               data1a.Caption := 'Total';
               data2d.Enabled := False;
               data2a.Enabled := False;
               data3d.Enabled := False;
               data3a.Enabled := False;
               data4d.Enabled := False;
               data4a.Enabled := False;
               data5d.Enabled := False;
               data5a.Enabled := False;
               data6d.Enabled := False;
               data6a.Enabled := False;
               data7d.Enabled := False;
               data7a.Enabled := False;
               data8d.Enabled := False;
               data8a.Enabled := False;
               data9d.Enabled := False;
               data9a.Enabled := False;
            end;
            if p_rel = 28 then
            begin
               data2d.Enabled := False;
               data2a.Caption := 'Total';
               data3d.Enabled := False;
               data3a.Enabled := False;
               data4d.Enabled := False;
               data4a.Enabled := False;
               data5d.Enabled := False;
               data5a.Enabled := False;
               data6d.Enabled := False;
               data6a.Enabled := False;
               data7d.Enabled := False;
               data7a.Enabled := False;
               data8d.Enabled := False;
               data8a.Enabled := False;
               data9d.Enabled := False;
               data9a.Enabled := False;
            end;
            if p_rel = 29 then
            begin
               data3d.Enabled := False;
               data3a.Caption := 'Total';
               data4d.Enabled := False;
               data4a.Enabled := False;
               data5d.Enabled := False;
               data5a.Enabled := False;
               data6d.Enabled := False;
               data6a.Enabled := False;
               data7d.Enabled := False;
               data7a.Enabled := False;
               data8d.Enabled := False;
               data8a.Enabled := False;
               data9d.Enabled := False;
               data9a.Enabled := False;
            end;
            if p_rel = 30 then
            begin
               data4d.Enabled := False;
               data4a.Caption := 'Total';
               data5d.Enabled := False;
               data5a.Enabled := False;
               data6d.Enabled := False;
               data6a.Enabled := False;
               data7d.Enabled := False;
               data7a.Enabled := False;
               data8d.Enabled := False;
               data8a.Enabled := False;
               data9d.Enabled := False;
               data9a.Enabled := False;
            end;
            if p_rel = 31 then
            begin
               data5d.Enabled := False;
               data5a.Caption := 'Total';
               data6d.Enabled := False;
               data6a.Enabled := False;
               data7d.Enabled := False;
               data7a.Enabled := False;
               data8d.Enabled := False;
               data8a.Enabled := False;
               data9d.Enabled := False;
               data9a.Enabled := False;
            end;
            
        end;    //end folha 4

     end;


end;

procedure TFRelFluxoCaixaCompleto.QRDBText1Print(sender: TObject; var Value: String);
begin
   QrBand3.enabled := true ;
   if Q_FLUXOQuebra.asstring <> '4' then begin
      {Q_AUX.close ;
      Q_AUX.Sql.Clear ;
      Q_AUX.Sql.Add(' select con_desc from cpacont where con_codi = ' + '''' + Q_FLUXOConta.asstring + '''' ) ;
      Q_AUX.Open ;   }
      if  FRelFluxoCaixaFilt.RadioGroup1.ItemIndex = 1  then
         begin
              Q_AUX.close ;
              Q_AUX.Sql.Clear ;
              Q_AUX.Sql.Add(' select con_desc from cpacont where con_codi = ' + '''' + Q_FLUXOConta.asstring + '''' ) ;
              Q_AUX.Open ;
                //Q_PCF1DS_CONTA.AsString := Q_AUX.fieldByName('CON_DESC').AsString
              //Q_PCF1DS_CONTA.AsString := Q_PCF1Conta.AsString + ' - ' + Q_AUX.fieldByName('CON_DESC').AsString
         end
         else if FRelFluxoCaixaFilt.RadioGroup1.ItemIndex = 2 then
         begin
              Q_AUX.close ;
              Q_AUX.Sql.Clear ;
              Q_AUX.Sql.Add(' select con_desc from cpacont where Substring(con_codi,1,2) = ' + '''' + Q_FLUXOConta.asstring + '''' ) ;
              Q_AUX.Sql.Add(' ORDER BY CON_CODI ');
              Q_AUX.Open ;
              Q_AUX.First;
               // Q_PCF1DS_CONTA.AsString := Q_AUX.fieldByName('CON_DESC').AsString
         end;

      value := Q_FLUXOConta.asstring + ' ' + Q_AUX.Fieldbyname('CON_DESC').asstring ;
  end else begin
     if Q_FLUXOConta.asstring = '1' then value := '*** Caixa Inicial ' ;
     if Q_FLUXOConta.asstring = '2' then value := '*** Entradas      ' ;
     if Q_FLUXOConta.asstring = '3' then value := '*** Saídas        ' ;
     if Q_FLUXOConta.asstring = '4' then value := '*** Caixa Final   ' ;
     QrBand3.enabled := false ;
  end ;


end;

procedure TFRelFluxoCaixaCompleto.FluxoCaixaBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
   QRLabel20.caption := FMenu.FUsuario ;
   total := 0 ;
   TotGeral := 0 ;
     Tot1 := 0 ;
     Tot2 := 0 ;
     Tot3 := 0 ;
     Tot4 := 0 ;

end;

procedure TFRelFluxoCaixaCompleto.QRDBText2Print(sender: TObject; var Value: String);
var p_rel : Integer;
begin

    p_rel := StrToInt(FRelFluxoCaixaFilt.edtPeriodo.Text);

    if Q_FLUXOFolha.asinteger = 1 then
    begin
       Total := Total + Q_FLUXOvalor1.asfloat ;
       Tot1 := tot1 + Q_FLUXOvalor1.asfloat ;
       value := formatfloat('###,###,##0',Q_FLUXOValor1.asfloat ) ;
    end
    else  if Q_FLUXOFolha.asinteger = 2 then
    begin
       Total := Total + Q_FLUXOvalor10.asfloat ;
       Tot1 := tot1 + Q_FLUXOvalor10.asfloat ;
       value := formatfloat('###,###,##0',Q_FLUXOValor10.asfloat ) ;
    end
    else  if Q_FLUXOFolha.asinteger = 3 then
    begin
       Total := Total + Q_FLUXOvalor19.asfloat ;
       Tot1 := tot1 + Q_FLUXOvalor19.asfloat ;
       value := formatfloat('###,###,##0',Q_FLUXOValor19.asfloat ) ;
    end
    else  if Q_FLUXOFolha.asinteger = 4 then
    begin
       Total := Total + Q_FLUXOvalor28.asfloat ;
       Tot1 := tot1 + Q_FLUXOvalor28.asfloat ;
       value := formatfloat('###,###,##0',Q_FLUXOValor28.asfloat ) ;
    end ;


    //PERIODO DO CLIENTE
    if FRelFluxoCaixaFilt.CheckBox1.Checked then
    begin
        if (Q_FLUXOFolha.asinteger = 2) and (StrToInt(FRelFluxoCaixaFilt.edtPeriodo.Text) = 9)  then
        begin
            Q_AUX.close ;
            Q_AUX.sql.clear;
            Q_AUX.sql.add(' select sum(valor1+valor2+valor3+valor4+valor5+valor6+valor7+valor8+valor9)  as XVALOR' );
            if FRelFluxoCaixaFilt.RadioGroup1.ItemIndex = 1 then
               Q_AUX.sql.add(' from FLUXO WHERE Conta = ' + '''' + Q_FLUXOConta.asstring + '''' )
            else
               Q_AUX.sql.add(' from FLUXO WHERE substring(CONTA,1,2) = ' + '''' + Q_FLUXOConta.asstring + '''' );
            Q_AUX.Open ;
            value := formatfloat('###,###,##0',Q_AUX.fieldbyname('XVALOR').asfloat ) ;

        end;

         if (Q_FLUXOFolha.asinteger = 3) and (StrToInt(FRelFluxoCaixaFilt.edtPeriodo.Text) = 18) then
        begin
             Q_AUX.close ;
             Q_AUX.sql.clear;
             Q_AUX.sql.add(' select sum(valor1+valor2+valor3+valor4+valor5+valor6+valor7+valor8+valor9+valor10+valor11+valor12+valor13+valor14+valor15+valor16+valor17+valor18) as XVALOR ');
            if FRelFluxoCaixaFilt.RadioGroup1.ItemIndex = 1 then
               Q_AUX.sql.add(' from FLUXO WHERE Conta = ' + '''' + Q_FLUXOConta.asstring + '''' )
            else
               Q_AUX.sql.add(' from FLUXO WHERE substring(CONTA,1,2) = ' + '''' + Q_FLUXOConta.asstring + '''' );
             Q_AUX.Open ;
             value := formatfloat('###,###,##0',Q_AUX.fieldbyname('XVALOR').asfloat ) ;
        end;

        if (Q_FLUXOFolha.asinteger = 4) and (StrToInt(FRelFluxoCaixaFilt.edtPeriodo.Text) = 27)  then
        begin
             Q_AUX.close ;
             Q_AUX.sql.clear;
             Q_AUX.sql.add(' select sum(valor1+valor2+valor3+valor4+valor5+valor6+valor7+valor8+valor9+valor10+valor11+valor12+valor13+valor14+valor15+valor16+valor17+valor18+valor19+valor20+valor21' );
             Q_AUX.sql.Add('+valor22+valor23+valor24+valor25+valor26+valor27) as XVALOR ');
            if FRelFluxoCaixaFilt.RadioGroup1.ItemIndex = 1 then
               Q_AUX.sql.add(' from FLUXO WHERE Conta = ' + '''' + Q_FLUXOConta.asstring + '''' )
            else
               Q_AUX.sql.add(' from FLUXO WHERE substring(CONTA,1,2) = ' + '''' + Q_FLUXOConta.asstring + '''' );
             Q_AUX.Open ;
             value := formatfloat('###,###,##0',Q_AUX.fieldbyname('XVALOR').asfloat ) ;
        end;
    end;    //END CHECK BOX



    //procurar os valores totais quebra TT
    if (Q_FLUXOConta.asstring = '1') or ( Q_FLUXOConta.asstring = '2') or ( Q_FLUXOConta.asstring = '3') or (Q_FLUXOConta.asstring = '4') then
    begin
        with qrTotaisTT do
        begin
            close;
            sql.Clear;
            if Q_FLUXOFolha.AsInteger = 1 then
                sql.Add('Select valor1 as valor ')
            else if Q_FLUXOFolha.AsInteger = 2 then
               sql.Add('Select valor10 as valor ')
            else if Q_FLUXOFolha.AsInteger = 3 then
               sql.Add('Select valor19 as valor ')
            else if Q_FLUXOFolha.AsInteger = 4 then
               sql.Add('Select valor28 as valor ') ;
            sql.Add('from fluxo where quebra = ''TT'' and   conta = ' + QuotedStr(Q_FLUXOConta.asstring));
            Open;
        end;
        value := formatfloat('###,###,##0',qrTotaisTT.FieldByName('Valor').AsFloat ) ;
    end;




    //busca o total geral do relatorio
    if (FRelFluxoCaixaFilt.CheckBox1.Checked = True) and (p_rel = 9) and (Q_FLUXOFolha.Value = 2) then
    begin
        if (Q_FLUXOConta.asstring = '1') then
        begin
            Value := FRelFluxoCaixaFilt.Edit1.Text;
        end;
        if (Q_FLUXOConta.asstring = '2') then
        begin
            with qrAux3 do
            begin
                Close;
                SQL.Clear;
                sql.Add(
                'select '+
                'valor1+valor2+valor3+valor4+valor5+valor6+valor7+valor8+valor9 '+
                'as total from fluxo where quebra = ''TT'' '+
                'and conta  = ' + QuotedStr('2')
                );
                Open;
            end;
            fEntradas := qrAux3.FieldByName('Total').AsFloat;
            Value := FormatFloat('###,###,##0', fEntradas);
        end;
        if (Q_FLUXOConta.asstring = '3') then
        begin
            with qrAux3 do
            begin
                Close;
                SQL.Clear;
                sql.Add(
                'select '+
                'valor1+valor2+valor3+valor4+valor5+valor6+valor7+valor8+valor9 '+
                'as total from fluxo where quebra = ''TT'' '+
                'and conta  = ' + QuotedStr('3')
                );
                Open;
            end;
            fSaidas := qrAux3.FieldByName('Total').AsFloat;
            Value := FormatFloat('###,###,##0', fSaidas);
        end;

        if (Q_FLUXOConta.asstring = '4') then
        begin
               if FRelFluxoCaixaFilt.RadioGroup2.ItemIndex = 0 then
                  Value := FormatFloat('###,###,##0',StrToFloat(FRelFluxoCaixaFilt.Edit1.Text) + fEntradas - fSaidas)
               else
                  Value := FormatFloat('###,###,##0',StrToFloat(FRelFluxoCaixaFilt.Edit1.Text) + fEntradas + fSaidas);
        end;
    end;


    if (FRelFluxoCaixaFilt.CheckBox1.Checked) and (p_rel = 18) and (Q_FLUXOFolha.Value = 3) then
    begin
        if (Q_FLUXOConta.asstring = '1') then
        begin
            Value := FRelFluxoCaixaFilt.Edit1.Text;
        end;
        if (Q_FLUXOConta.asstring = '2') then
        begin
            with qrAux3 do
            begin
                Close;
                SQL.Clear;
                sql.Add(
                'select '+
                'valor1+valor2+valor3+valor4+valor5+valor6+valor7+valor8+valor9+valor10+valor11+valor12+valor13+valor14+valor15+valor16+valor17+valor18 '+
                'as total from fluxo where quebra = ''TT'' '+
                'and conta  = ' + QuotedStr('2')
                );
                Open;
            end;
            fEntradas := qrAux3.FieldByName('Total').AsFloat;
            Value := FormatFloat('###,###,##0', fEntradas);
        end;
        if (Q_FLUXOConta.asstring = '3') then
        begin
            with qrAux3 do
            begin
                Close;
                SQL.Clear;
                sql.Add(
                'select '+
                'valor1+valor2+valor3+valor4+valor5+valor6+valor7+valor8+valor9+valor10+valor11+valor12+valor13+valor14+valor15+valor16+valor17+valor18 '+
                'as total from fluxo where quebra = ''TT'' '+
                'and conta  = ' + QuotedStr('3')
                );
                Open;
            end;
            fSaidas := qrAux3.FieldByName('Total').AsFloat;
            Value := FormatFloat('###,###,##0', fSaidas);
        end;

        if (Q_FLUXOConta.asstring = '4') then
        begin
               if FRelFluxoCaixaFilt.RadioGroup2.ItemIndex = 0 then
                  Value := FormatFloat('###,###,##0',StrToFloat(FRelFluxoCaixaFilt.Edit1.Text) + fEntradas - fSaidas)
               else
                  Value := FormatFloat('###,###,##0',StrToFloat(FRelFluxoCaixaFilt.Edit1.Text) + fEntradas + fSaidas);
        end;
    end;



    if (FRelFluxoCaixaFilt.CheckBox1.Checked) and (p_rel = 27) and (Q_FLUXOFolha.Value = 4) then
    begin
        if (Q_FLUXOConta.asstring = '1') then
        begin
            Value := FRelFluxoCaixaFilt.Edit1.Text;
        end;
        if (Q_FLUXOConta.asstring = '2') then
        begin
            with qrAux3 do
            begin
                Close;
                SQL.Clear;
                sql.Add(
                'select '+
                'valor1+valor2+valor3+valor4+valor5+valor6+valor7+valor8+valor9+valor10+valor11+valor12+valor13+valor14+valor15+valor16+valor17+valor18 '+
                '+valor19+valor20+valor21+valor22+valor23+valor24+valor25+valor26+valor27 '+
                'as total from fluxo where quebra = ''TT'' '+
                'and conta  = ' + QuotedStr('2')
                );
                Open;
            end;
            fEntradas := qrAux3.FieldByName('Total').AsFloat;
            Value := FormatFloat('###,###,##0', fEntradas);
        end;
        if (Q_FLUXOConta.asstring = '3') then
        begin
            with qrAux3 do
            begin
                Close;
                SQL.Clear;
                sql.Add(
                'select '+
                'valor1+valor2+valor3+valor4+valor5+valor6+valor7+valor8+valor9+valor10+valor11+valor12+valor13+valor14+valor15+valor16+valor17+valor18 '+
                '+valor19+valor20+valor21+valor22+valor23+valor24+valor25+valor26+valor27 '+
                'as total from fluxo where quebra = ''TT'' '+
                'and conta  = ' + QuotedStr('3')
                );
                Open;
            end;
            fSaidas := qrAux3.FieldByName('Total').AsFloat;
            Value := FormatFloat('###,###,##0', fSaidas);
        end;

        if (Q_FLUXOConta.asstring = '4') then
        begin
               if FRelFluxoCaixaFilt.RadioGroup2.ItemIndex = 0 then
                  Value := FormatFloat('###,###,##0',StrToFloat(FRelFluxoCaixaFilt.Edit1.Text) + fEntradas - fSaidas)
               else
                  Value := FormatFloat('###,###,##0',StrToFloat(FRelFluxoCaixaFilt.Edit1.Text) + fEntradas + fSaidas);
        end;
    end;
           
end;

procedure TFRelFluxoCaixaCompleto.QRDBText3Print(sender: TObject; var Value: String);

var p_rel : Integer;
begin

    p_rel := StrToInt(FRelFluxoCaixaFilt.edtPeriodo.Text);
    if Q_FLUXOFolha.asinteger = 1 then
    begin
       Total := Total + Q_FLUXOvalor2.asfloat ;
       Tot1 := tot1 + Q_FLUXOvalor2.asfloat ;
       value := formatfloat('###,###,##0',Q_FLUXOValor2.asfloat ) ;
    end
    else  if Q_FLUXOFolha.asinteger = 2 then
    begin
       Total := Total + Q_FLUXOvalor11.asfloat ;
       Tot1 := tot1 + Q_FLUXOvalor11.asfloat ;
       value := formatfloat('###,###,##0',Q_FLUXOValor11.asfloat ) ;
    end
    else  if Q_FLUXOFolha.asinteger = 3 then
    begin
       Total := Total + Q_FLUXOvalor20.asfloat ;
       Tot1 := tot1 + Q_FLUXOvalor20.asfloat ;
       value := formatfloat('###,###,##0',Q_FLUXOValor20.asfloat ) ;
    end
    else  if Q_FLUXOFolha.asinteger = 4 then
    begin
       Total := Total + Q_FLUXOvalor29.asfloat ;
       Tot1 := tot1 + Q_FLUXOvalor29.asfloat ;
       value := formatfloat('###,###,##0',Q_FLUXOValor29.asfloat ) ;
    end ;

    //PERIODO DO CLIENTE
    if FRelFluxoCaixaFilt.CheckBox1.Checked then
    begin
        if (Q_FLUXOFolha.asinteger = 1) and (StrToInt(FRelFluxoCaixaFilt.edtPeriodo.Text) = 1) then
        begin
             Q_AUX.close ;
             Q_AUX.sql.clear;
             Q_AUX.sql.add(' select sum(valor1) as XVALOR ');
            if FRelFluxoCaixaFilt.RadioGroup1.ItemIndex = 1 then
               Q_AUX.sql.add(' from FLUXO WHERE Conta = ' + '''' + Q_FLUXOConta.asstring + '''' )
            else
               Q_AUX.sql.add(' from FLUXO WHERE substring(CONTA,1,2) = ' + '''' + Q_FLUXOConta.asstring + '''' );
             Q_AUX.Open ;
             value := formatfloat('###,###,##0',Q_AUX.fieldbyname('XVALOR').asfloat ) ;
        end;
        
        if (Q_FLUXOFolha.asinteger = 2) and (StrToInt(FRelFluxoCaixaFilt.edtPeriodo.Text) = 10)  then
        begin
             Q_AUX.close ;
             Q_AUX.sql.clear;
             Q_AUX.sql.add(' select sum(valor1+valor2+valor3+valor4+valor5+valor6+valor7+valor8+valor9+valor10) as XVALOR ');
            if FRelFluxoCaixaFilt.RadioGroup1.ItemIndex = 1 then
               Q_AUX.sql.add(' from FLUXO WHERE Conta = ' + '''' + Q_FLUXOConta.asstring + '''' )
            else
               Q_AUX.sql.add(' from FLUXO WHERE substring(CONTA,1,2) = ' + '''' + Q_FLUXOConta.asstring + '''' );
             Q_AUX.Open ;
             value := formatfloat('###,###,##0',Q_AUX.fieldbyname('XVALOR').asfloat ) ;
        end;

        if (Q_FLUXOFolha.asinteger = 3) and (StrToInt(FRelFluxoCaixaFilt.edtPeriodo.Text) = 19)  then
        begin
             Q_AUX.close ;
             Q_AUX.sql.clear;
             Q_AUX.sql.add(' select sum(valor1+valor2+valor3+valor4+valor5+valor6+valor7+valor8+valor9+valor10+valor11+valor12+valor13+valor14+valor15+valor16+valor17+valor18+valor19) as XVALOR ');
            if FRelFluxoCaixaFilt.RadioGroup1.ItemIndex = 1 then
               Q_AUX.sql.add(' from FLUXO WHERE Conta = ' + '''' + Q_FLUXOConta.asstring + '''' )
            else
               Q_AUX.sql.add(' from FLUXO WHERE substring(CONTA,1,2) = ' + '''' + Q_FLUXOConta.asstring + '''' );
             Q_AUX.Open ;
             value := formatfloat('###,###,##0',Q_AUX.fieldbyname('XVALOR').asfloat ) ;
        end;

        if (Q_FLUXOFolha.asinteger = 4) and (StrToInt(FRelFluxoCaixaFilt.edtPeriodo.Text) = 28)  then
        begin
             Q_AUX.close ;
             Q_AUX.sql.clear;
             Q_AUX.sql.add(' select sum(valor1+valor2+valor3+valor4+valor5+valor6+valor7+valor8+valor9+valor10+valor11+valor12+valor13+valor14+valor15+valor16+valor17+valor18+valor19+valor20+valor21' );
             Q_AUX.sql.Add('+valor22+valor23+valor24+valor25+valor26+valor27+valor28) as XVALOR ');
            if FRelFluxoCaixaFilt.RadioGroup1.ItemIndex = 1 then
               Q_AUX.sql.add(' from FLUXO WHERE Conta = ' + '''' + Q_FLUXOConta.asstring + '''' )
            else
               Q_AUX.sql.add(' from FLUXO WHERE substring(CONTA,1,2) = ' + '''' + Q_FLUXOConta.asstring + '''' );
             Q_AUX.Open ;
             value := formatfloat('###,###,##0',Q_AUX.fieldbyname('XVALOR').asfloat ) ;
        end;
    end;     //END IF CHECKBOX


        //procurar os valores totais quebra TT
    if (Q_FLUXOConta.asstring = '1') or ( Q_FLUXOConta.asstring = '2') or ( Q_FLUXOConta.asstring = '3') or (Q_FLUXOConta.asstring = '4') then
    begin
        with qrTotaisTT do
        begin
            close;
            sql.Clear;
            if Q_FLUXOFolha.AsInteger = 1 then
                sql.Add('Select valor2 as valor ')
            else if Q_FLUXOFolha.AsInteger = 2 then
               sql.Add('Select valor11 as valor ')
            else if Q_FLUXOFolha.AsInteger = 3 then
               sql.Add('Select valor20 as valor ')
            else if Q_FLUXOFolha.AsInteger = 4 then
               sql.Add('Select valor29 as valor ') ;
            sql.Add('from fluxo where quebra = ''TT'' and   conta = ' + QuotedStr(Q_FLUXOConta.asstring));
            Open;
        end;
        value := formatfloat('###,###,##0',qrTotaisTT.FieldByName('Valor').AsFloat ) ;
    end;


    IF FRelFluxoCaixaFilt.CheckBox1.Checked then
    BEGIN
        //APAGA VALORES CASO NAO SEJA NECESSÁRIO VISUALIZAR

        if (Q_FLUXOFolha.asinteger = 2) and (StrToInt(FRelFluxoCaixaFilt.edtPeriodo.Text) <= 9)  then
        begin
               value := '' ;
        end;
        if (Q_FLUXOFolha.asinteger = 3) and (StrToInt(FRelFluxoCaixaFilt.edtPeriodo.Text) <= 18)  then
        begin
               value := '' ;
        end;
        if (Q_FLUXOFolha.asinteger = 4) and (StrToInt(FRelFluxoCaixaFilt.edtPeriodo.Text) <= 27)  then
        begin
               value := '' ;
        end;
    end;





    //totais gerais do relatorio
    if (FRelFluxoCaixaFilt.CheckBox1.Checked = True) and (p_rel = 1) and (Q_FLUXOFolha.Value = 1) then
    begin
        if (Q_FLUXOConta.asstring = '1') then
        begin
            Value := FRelFluxoCaixaFilt.Edit1.Text;
        end;
        if (Q_FLUXOConta.asstring = '2') then
        begin
            with qrAux3 do
            begin
                Close;
                SQL.Clear;
                sql.Add('select ');
                sql.Add('valor1');
                sql.Add('as total from fluxo where quebra = ''TT'' ');
                sql.Add('and conta  = ' + QuotedStr('2'));
                Open;
            end;
            fEntradas := qrAux3.FieldByName('Total').AsFloat;
            Value := FormatFloat('###,###,##0', fEntradas);
        end;
        if (Q_FLUXOConta.asstring = '3') then
        begin
            with qrAux3 do
            begin
                Close;
                SQL.Clear;
                sql.Add('select ');
                sql.Add('valor1');
                sql.Add('as total from fluxo where quebra = ''TT'' ');
                sql.Add('and conta  = ' + QuotedStr('3'));
                Open;
            end;
            fSaidas := qrAux3.FieldByName('Total').AsFloat;
            Value := FormatFloat('###,###,##0', fSaidas);
        end;

        if (Q_FLUXOConta.asstring = '4') then
        begin
               if FRelFluxoCaixaFilt.RadioGroup2.ItemIndex = 0 then
                  Value := FormatFloat('###,###,##0',StrToFloat(FRelFluxoCaixaFilt.Edit1.Text) + fEntradas - fSaidas)
               else
                  Value := FormatFloat('###,###,##0',StrToFloat(FRelFluxoCaixaFilt.Edit1.Text) + fEntradas + fSaidas);
        end;

    end;

    if (FRelFluxoCaixaFilt.CheckBox1.Checked = True) and (p_rel = 10) and (Q_FLUXOFolha.Value = 2) then
    begin
        if (Q_FLUXOConta.asstring = '1') then
        begin
            Value := FRelFluxoCaixaFilt.Edit1.Text;
        end;
        if (Q_FLUXOConta.asstring = '2') then
        begin
            with qrAux3 do
            begin
                Close;
                SQL.Clear;
                sql.Add('select ');
                sql.Add('valor1+valor2+valor3+valor4+valor5+valor6+valor7+valor8+valor9+valor10 ');
                sql.Add('as total from fluxo where quebra = ''TT'' ');
                sql.Add('and conta  = ' + QuotedStr('2'));
                Open;
            end;
            fEntradas := qrAux3.FieldByName('Total').AsFloat;
            Value := FormatFloat('###,###,##0', fEntradas);
        end;
        if (Q_FLUXOConta.asstring = '3') then
        begin
            with qrAux3 do
            begin
                Close;
                SQL.Clear;
                sql.Add('select ');
                sql.Add('valor1+valor2+valor3+valor4+valor5+valor6+valor7+valor8+valor9+valor10 ');
                sql.Add('as total from fluxo where quebra = ''TT'' ');
                sql.Add('and conta  = ' + QuotedStr('3'));
                Open;
            end;
            fSaidas := qrAux3.FieldByName('Total').AsFloat;
            Value := FormatFloat('###,###,##0', fSaidas);
        end;

        if (Q_FLUXOConta.asstring = '4') then
        begin
               if FRelFluxoCaixaFilt.RadioGroup2.ItemIndex = 0 then
                  Value := FormatFloat('###,###,##0',StrToFloat(FRelFluxoCaixaFilt.Edit1.Text) + fEntradas - fSaidas)
               else
                  Value := FormatFloat('###,###,##0',StrToFloat(FRelFluxoCaixaFilt.Edit1.Text) + fEntradas + fSaidas);
        end;
    end;


    if (FRelFluxoCaixaFilt.CheckBox1.Checked) and (p_rel = 19) and (Q_FLUXOFolha.Value = 3) then
    begin
        if (Q_FLUXOConta.asstring = '1') then
        begin
            Value := FRelFluxoCaixaFilt.Edit1.Text;
        end;
        if (Q_FLUXOConta.asstring = '2') then
        begin
            with qrAux3 do
            begin
                Close;
                SQL.Clear;
                sql.Add( 'select ' );
                sql.Add('valor1+valor2+valor3+valor4+valor5+valor6+valor7+valor8+valor9+valor10+valor11+valor12+valor13+valor14+valor15+valor16+valor17+valor18+valor19 ');
                sql.Add('as total from fluxo where quebra = ''TT'' ');
                sql.Add('and conta  = ' + QuotedStr('2'));
                Open;
            end;
            fEntradas := qrAux3.FieldByName('Total').AsFloat;
            Value := FormatFloat('###,###,##0', fEntradas);
        end;
        if (Q_FLUXOConta.asstring = '3') then
        begin
            with qrAux3 do
            begin
                Close;
                SQL.Clear;
                sql.Add( 'select ' );
                sql.Add('valor1+valor2+valor3+valor4+valor5+valor6+valor7+valor8+valor9+valor10+valor11+valor12+valor13+valor14+valor15+valor16+valor17+valor18+valor19 ');
                sql.Add('as total from fluxo where quebra = ''TT'' ');
                sql.Add('and conta  = ' + QuotedStr('3'));
                Open;
            end;
            fSaidas := qrAux3.FieldByName('Total').AsFloat;
            Value := FormatFloat('###,###,##0', fSaidas);
        end;

        if (Q_FLUXOConta.asstring = '4') then
        begin
               if FRelFluxoCaixaFilt.RadioGroup2.ItemIndex = 0 then
                  Value := FormatFloat('###,###,##0',StrToFloat(FRelFluxoCaixaFilt.Edit1.Text) + fEntradas - fSaidas)
               else
                  Value := FormatFloat('###,###,##0',StrToFloat(FRelFluxoCaixaFilt.Edit1.Text) + fEntradas + fSaidas);
        end;
    end;



    if (FRelFluxoCaixaFilt.CheckBox1.Checked) and (p_rel = 28) and (Q_FLUXOFolha.Value = 4) then
    begin
        if (Q_FLUXOConta.asstring = '1') then
        begin
            Value := FRelFluxoCaixaFilt.Edit1.Text;
        end;
        if (Q_FLUXOConta.asstring = '2') then
        begin
            with qrAux3 do
            begin
                Close;
                SQL.Clear;
                sql.Add('select ');
                sql.Add('valor1+valor2+valor3+valor4+valor5+valor6+valor7+valor8+valor9+valor10+valor11+valor12+valor13+valor14+valor15+valor16+valor17+valor18 ');
                sql.Add('+valor19+valor20+valor21+valor22+valor23+valor24+valor25+valor26+valor27+valor28 ');
                sql.Add('as total from fluxo where quebra = ''TT'' ');
                sql.Add('and conta  = ' + QuotedStr('2'));
                Open;
            end;
            fEntradas := qrAux3.FieldByName('Total').AsFloat;
            Value := FormatFloat('###,###,##0', fEntradas);
        end;
        if (Q_FLUXOConta.asstring = '3') then
        begin
            with qrAux3 do
            begin
                Close;
                SQL.Clear;
                sql.Add('select ');
                sql.Add('valor1+valor2+valor3+valor4+valor5+valor6+valor7+valor8+valor9+valor10+valor11+valor12+valor13+valor14+valor15+valor16+valor17+valor18 ');
                sql.Add('+valor19+valor20+valor21+valor22+valor23+valor24+valor25+valor26+valor27+valor28 ');
                sql.Add('as total from fluxo where quebra = ''TT'' ');
                sql.Add('and conta  = ' + QuotedStr('3'));
                Open;
            end;
            fSaidas := qrAux3.FieldByName('Total').AsFloat;
            Value := FormatFloat('###,###,##0', fSaidas);
        end;

        if (Q_FLUXOConta.asstring = '4') then
        begin
               if FRelFluxoCaixaFilt.RadioGroup2.ItemIndex = 0 then
                  Value := FormatFloat('###,###,##0',StrToFloat(FRelFluxoCaixaFilt.Edit1.Text) + fEntradas - fSaidas)
               else
                  Value := FormatFloat('###,###,##0',StrToFloat(FRelFluxoCaixaFilt.Edit1.Text) + fEntradas + fSaidas);
        end;
    end;
         

end;

procedure TFRelFluxoCaixaCompleto.QRDBText4Print(sender: TObject; var Value: String);
var p_rel : Integer;
begin

    p_rel := StrToInt(FRelFluxoCaixaFilt.Edtperiodo.Text);

    
    if Q_FLUXOFolha.asinteger = 1 then
    begin
       Total := Total + Q_FLUXOvalor3.asfloat ;
       Tot1 := tot1 + Q_FLUXOvalor3.asfloat ;
       value := formatfloat('###,###,##0',Q_FLUXOValor3.asfloat ) ;
    end
    else  if Q_FLUXOFolha.asinteger = 2 then
    begin
       Total := Total + Q_FLUXOvalor12.asfloat ;
       Tot1 := tot1 + Q_FLUXOvalor12.asfloat ;
       value := formatfloat('###,###,##0',Q_FLUXOValor12.asfloat ) ;
    end
    else  if Q_FLUXOFolha.asinteger = 3 then
    begin
       Total := Total + Q_FLUXOvalor21.asfloat ;
       Tot1 := tot1 + Q_FLUXOvalor21.asfloat ;
       value := formatfloat('###,###,##0',Q_FLUXOValor21.asfloat ) ;
    end
    else  if Q_FLUXOFolha.asinteger = 4 then
    begin
       Total := Total + Q_FLUXOvalor30.asfloat ;
       Tot1 := tot1 + Q_FLUXOvalor30.asfloat ;
       value := formatfloat('###,###,##0',Q_FLUXOValor30.asfloat ) ;
    end ;



    //PERIODO DO CLIENTE
    if FRelFluxoCaixaFilt.CheckBox1.Checked then
    begin
        if (Q_FLUXOFolha.asinteger = 1) and (StrToInt(FRelFluxoCaixaFilt.edtPeriodo.Text) = 2) then
        begin
             Q_AUX.close ;
             Q_AUX.sql.clear;
             Q_AUX.sql.add(' select sum(valor1+valor2) as XVALOR ');
            if FRelFluxoCaixaFilt.RadioGroup1.ItemIndex = 1 then
               Q_AUX.sql.add(' from FLUXO WHERE Conta = ' + '''' + Q_FLUXOConta.asstring + '''' )
            else
               Q_AUX.sql.add(' from FLUXO WHERE substring(CONTA,1,2) = ' + '''' + Q_FLUXOConta.asstring + '''' );
             Q_AUX.Open ;
             value := formatfloat('###,###,##0',Q_AUX.fieldbyname('XVALOR').asfloat ) ;
        end;
        if (Q_FLUXOFolha.asinteger = 2) and (StrToInt(FRelFluxoCaixaFilt.edtPeriodo.Text) = 11)  then
        begin
             Q_AUX.close ;
             Q_AUX.sql.clear;
             Q_AUX.sql.add(' select sum(valor1+valor2+valor3+valor4+valor5+valor6+valor7+valor8+valor9+valor10+valor11) as XVALOR ');
            if FRelFluxoCaixaFilt.RadioGroup1.ItemIndex = 1 then
               Q_AUX.sql.add(' from FLUXO WHERE Conta = ' + '''' + Q_FLUXOConta.asstring + '''' )
            else
               Q_AUX.sql.add(' from FLUXO WHERE substring(CONTA,1,2) = ' + '''' + Q_FLUXOConta.asstring + '''' );
             Q_AUX.Open ;
             value := formatfloat('###,###,##0',Q_AUX.fieldbyname('XVALOR').asfloat ) ;
        end;

         if (Q_FLUXOFolha.asinteger = 3) and (StrToInt(FRelFluxoCaixaFilt.edtPeriodo.Text) >= 20)  then
        begin
             Q_AUX.close ;
             Q_AUX.sql.clear;
             Q_AUX.sql.add(' select sum(valor1+valor2+valor3+valor4+valor5+valor6+valor7+valor8+valor9+valor10+valor11+valor12+valor13+valor14+valor15+valor16+valor17+valor18+valor19+valor20) as XVALOR ');
            if FRelFluxoCaixaFilt.RadioGroup1.ItemIndex = 1 then
               Q_AUX.sql.add(' from FLUXO WHERE Conta = ' + '''' + Q_FLUXOConta.asstring + '''' )
            else
               Q_AUX.sql.add(' from FLUXO WHERE substring(CONTA,1,2) = ' + '''' + Q_FLUXOConta.asstring + '''' );
             Q_AUX.Open ;
             value := formatfloat('###,###,##0',Q_AUX.fieldbyname('XVALOR').asfloat ) ;
        end;

        if (Q_FLUXOFolha.asinteger = 4) and (StrToInt(FRelFluxoCaixaFilt.edtPeriodo.Text) = 29)  then
        begin
             Q_AUX.close ;
             Q_AUX.sql.clear;
             Q_AUX.sql.add(' select sum(valor1+valor2+valor3+valor4+valor5+valor6+valor7+valor8+valor9+valor10+valor11+valor12+valor13+valor14+valor15+valor16+valor17+valor18+valor19+valor20+valor21' );
             Q_AUX.sql.Add('+valor22+valor23+valor24+valor25+valor26+valor27+valor28+valor29) as XVALOR ');
            if FRelFluxoCaixaFilt.RadioGroup1.ItemIndex = 1 then
               Q_AUX.sql.add(' from FLUXO WHERE Conta = ' + '''' + Q_FLUXOConta.asstring + '''' )
            else
               Q_AUX.sql.add(' from FLUXO WHERE substring(CONTA,1,2) = ' + '''' + Q_FLUXOConta.asstring + '''' );
             Q_AUX.Open ;
             value := formatfloat('###,###,##0',Q_AUX.fieldbyname('XVALOR').asfloat ) ;
        end;




    end;     //END IF CHECKBOX




        //procurar os valores totais quebra TT
    if (Q_FLUXOConta.asstring = '1') or ( Q_FLUXOConta.asstring = '2')
    or ( Q_FLUXOConta.asstring = '3') or ( Q_FLUXOConta.asstring = '4') then
    begin
        with qrTotaisTT do
        begin
            close;
            sql.Clear;
            if Q_FLUXOFolha.AsInteger = 1 then
               sql.Add('Select valor3 as valor ')
            else if Q_FLUXOFolha.AsInteger = 2 then
               sql.Add('Select valor12 as valor ')
            else if Q_FLUXOFolha.AsInteger = 3 then
               sql.Add('Select valor21 as valor ')
            else if Q_FLUXOFolha.AsInteger = 4 then
               sql.Add('Select valor30 as valor ') ;
            sql.Add('from fluxo where quebra = ''TT'' and conta = ' + QuotedStr(Q_FLUXOConta.asstring));
            Open;
        end;
        value := formatfloat('###,###,##0',qrTotaisTT.FieldByName('Valor').AsFloat ) ;
    end;



    IF FRelFluxoCaixaFilt.CheckBox1.Checked then
    BEGIN
        //APAGA VALORES CASO NAO SEJA NECESSÁRIO VISUALIZAR
        if (Q_FLUXOFolha.asinteger = 1) and (StrToInt(FRelFluxoCaixaFilt.edtPeriodo.Text) <= 1)  then
        begin
               value := '' ;
        end;
        if (Q_FLUXOFolha.asinteger = 2) and (StrToInt(FRelFluxoCaixaFilt.edtPeriodo.Text) <= 10)  then
        begin
               value := '' ;
        end;
        if (Q_FLUXOFolha.asinteger = 3) and (StrToInt(FRelFluxoCaixaFilt.edtPeriodo.Text) <= 19)  then
        begin
               value := '' ;
        end;
        if (Q_FLUXOFolha.asinteger = 4) and (StrToInt(FRelFluxoCaixaFilt.edtPeriodo.Text) <= 28)  then
        begin
               value := '' ;
        end;
    end;





    //totais gerais do relatorio
    if (FRelFluxoCaixaFilt.CheckBox1.Checked = True) and (p_rel = 2) and (Q_FLUXOFolha.Value = 1) then
    begin
        if (Q_FLUXOConta.asstring = '1') then
        begin
            Value := FRelFluxoCaixaFilt.Edit1.Text;
        end;
        if (Q_FLUXOConta.asstring = '2') then
        begin
            with qrAux3 do
            begin
                Close;
                SQL.Clear;
                sql.Add('select ');
                sql.Add('valor1+valor2');
                sql.Add('as total from fluxo where quebra = ''TT'' ');
                sql.Add('and conta  = ' + QuotedStr('2'));
                Open;
            end;
            fEntradas := qrAux3.FieldByName('Total').AsFloat;
            Value := FormatFloat('###,###,##0', fEntradas);
        end;
        if (Q_FLUXOConta.asstring = '3') then
        begin
            with qrAux3 do
            begin
                Close;
                SQL.Clear;
                sql.Add('select ');
                sql.Add('valor1+valor2');
                sql.Add('as total from fluxo where quebra = ''TT'' ');
                sql.Add('and conta  = ' + QuotedStr('3'));
                Open;
            end;
            fSaidas := qrAux3.FieldByName('Total').AsFloat;
            Value := FormatFloat('###,###,##0', fSaidas);
        end;

        if (Q_FLUXOConta.asstring = '4') then
        begin
               if FRelFluxoCaixaFilt.RadioGroup2.ItemIndex = 0 then
                  Value := FormatFloat('###,###,##0',StrToFloat(FRelFluxoCaixaFilt.Edit1.Text) + fEntradas - fSaidas)
               else
                  Value := FormatFloat('###,###,##0',StrToFloat(FRelFluxoCaixaFilt.Edit1.Text) + fEntradas + fSaidas);
        end;

    end;

    if (FRelFluxoCaixaFilt.CheckBox1.Checked = True) and (p_rel = 11) and (Q_FLUXOFolha.Value = 2) then
    begin
        if (Q_FLUXOConta.asstring = '1') then
        begin
            Value := FRelFluxoCaixaFilt.Edit1.Text;
        end;
        if (Q_FLUXOConta.asstring = '2') then
        begin
            with qrAux3 do
            begin
                Close;
                SQL.Clear;
                sql.Add('select ');
                sql.Add('valor1+valor2+valor3+valor4+valor5+valor6+valor7+valor8+valor9+valor10+valor11 ');
                sql.Add('as total from fluxo where quebra = ''TT'' ');
                sql.Add('and conta  = ' + QuotedStr('2'));
                Open;
            end;
            fEntradas := qrAux3.FieldByName('Total').AsFloat;
            Value := FormatFloat('###,###,##0', fEntradas);
        end;
        if (Q_FLUXOConta.asstring = '3') then
        begin
            with qrAux3 do
            begin
                Close;
                SQL.Clear;
                sql.Add('select ');
                sql.Add('valor1+valor2+valor3+valor4+valor5+valor6+valor7+valor8+valor9+valor10+valor11 ');
                sql.Add('as total from fluxo where quebra = ''TT'' ');
                sql.Add('and conta  = ' + QuotedStr('3'));
                Open;
            end;
            fSaidas := qrAux3.FieldByName('Total').AsFloat;
            Value := FormatFloat('###,###,##0', fSaidas);
        end;

        if (Q_FLUXOConta.asstring = '4') then
        begin
               if FRelFluxoCaixaFilt.RadioGroup2.ItemIndex = 0 then
                  Value := FormatFloat('###,###,##0',StrToFloat(FRelFluxoCaixaFilt.Edit1.Text) + fEntradas - fSaidas)
               else
                  Value := FormatFloat('###,###,##0',StrToFloat(FRelFluxoCaixaFilt.Edit1.Text) + fEntradas + fSaidas);
        end;
    end;


    if (FRelFluxoCaixaFilt.CheckBox1.Checked) and (p_rel = 20) and (Q_FLUXOFolha.Value = 3) then
    begin
        if (Q_FLUXOConta.asstring = '1') then
        begin
            Value := FRelFluxoCaixaFilt.Edit1.Text;
        end;
        if (Q_FLUXOConta.asstring = '2') then
        begin
            with qrAux3 do
            begin
                Close;
                SQL.Clear;
                sql.Add( 'select ' );
                sql.Add('valor1+valor2+valor3+valor4+valor5+valor6+valor7+valor8+valor9+valor10+valor11+valor12+valor13+valor14+valor15+valor16+valor17+valor18+valor19+valor20 ');
                sql.Add('as total from fluxo where quebra = ''TT'' ');
                sql.Add('and conta  = ' + QuotedStr('2'));
                Open;
            end;
            fEntradas := qrAux3.FieldByName('Total').AsFloat;
            Value := FormatFloat('###,###,##0', fEntradas);
        end;
        if (Q_FLUXOConta.asstring = '3') then
        begin
            with qrAux3 do
            begin
                Close;
                SQL.Clear;
                sql.Add( 'select ' );
                sql.Add('valor1+valor2+valor3+valor4+valor5+valor6+valor7+valor8+valor9+valor10+valor11+valor12+valor13+valor14+valor15+valor16+valor17+valor18+valor19+valor20 ');
                sql.Add('as total from fluxo where quebra = ''TT'' ');
                sql.Add('and conta  = ' + QuotedStr('3'));
                Open;
            end;
            fSaidas := qrAux3.FieldByName('Total').AsFloat;
            Value := FormatFloat('###,###,##0', fSaidas);
        end;

        if (Q_FLUXOConta.asstring = '4') then
        begin
               if FRelFluxoCaixaFilt.RadioGroup2.ItemIndex = 0 then
                  Value := FormatFloat('###,###,##0',StrToFloat(FRelFluxoCaixaFilt.Edit1.Text) + fEntradas - fSaidas)
               else
                  Value := FormatFloat('###,###,##0',StrToFloat(FRelFluxoCaixaFilt.Edit1.Text) + fEntradas + fSaidas);
        end;
    end;



    if (FRelFluxoCaixaFilt.CheckBox1.Checked) and (p_rel = 29) and (Q_FLUXOFolha.Value = 4) then
    begin
        if (Q_FLUXOConta.asstring = '1') then
        begin
            Value := FRelFluxoCaixaFilt.Edit1.Text;
        end;
        if (Q_FLUXOConta.asstring = '2') then
        begin
            with qrAux3 do
            begin
                Close;
                SQL.Clear;
                sql.Add('select ');
                sql.Add('valor1+valor2+valor3+valor4+valor5+valor6+valor7+valor8+valor9+valor10+valor11+valor12+valor13+valor14+valor15+valor16+valor17+valor18 ');
                sql.Add('+valor19+valor20+valor21+valor22+valor23+valor24+valor25+valor26+valor27+valor28+valor29 ');
                sql.Add('as total from fluxo where quebra = ''TT'' ');
                sql.Add('and conta  = ' + QuotedStr('2'));
                Open;
            end;
            fEntradas := qrAux3.FieldByName('Total').AsFloat;
            Value := FormatFloat('###,###,##0', fEntradas);
        end;
        if (Q_FLUXOConta.asstring = '3') then
        begin
            with qrAux3 do
            begin
                Close;
                SQL.Clear;
                sql.Add('select ');
                sql.Add('valor1+valor2+valor3+valor4+valor5+valor6+valor7+valor8+valor9+valor10+valor11+valor12+valor13+valor14+valor15+valor16+valor17+valor18 ');
                sql.Add('+valor19+valor20+valor21+valor22+valor23+valor24+valor25+valor26+valor27+valor28+valor29 ');
                sql.Add('as total from fluxo where quebra = ''TT'' ');
                sql.Add('and conta  = ' + QuotedStr('3'));
                Open;
            end;
            fSaidas := qrAux3.FieldByName('Total').AsFloat;
            Value := FormatFloat('###,###,##0', fSaidas);
        end;

        if (Q_FLUXOConta.asstring = '4') then
        begin
               if FRelFluxoCaixaFilt.RadioGroup2.ItemIndex = 0 then
                  Value := FormatFloat('###,###,##0',StrToFloat(FRelFluxoCaixaFilt.Edit1.Text) + fEntradas - fSaidas)
               else
                  Value := FormatFloat('###,###,##0',StrToFloat(FRelFluxoCaixaFilt.Edit1.Text) + fEntradas + fSaidas);
        end;
    end;





end;

procedure TFRelFluxoCaixaCompleto.QRDBText5Print(sender: TObject; var Value: String);
var p_rel : Integer;
begin

    p_rel := StrToInt(FRelFluxoCaixaFilt.Edtperiodo.Text);


    
    if Q_FLUXOFolha.asinteger = 1 then
    begin
       Total := Total + Q_FLUXOvalor4.asfloat ;
       Tot1 := tot1 + Q_FLUXOvalor4.asfloat ;
       value := formatfloat('###,###,##0',Q_FLUXOValor4.asfloat ) ;
    end
    else  if Q_FLUXOFolha.asinteger = 2 then
    begin
       IF FRelFluxoCaixaFilt.RadioGroup3.ItemIndex = 1 THEN
       BEGIN
               Q_AUX.close ;
               Q_AUX.sql.clear;
               Q_AUX.sql.add(' select sum(valor1+valor2+valor3+valor4+valor5+valor6+valor7+valor8+valor9+valor10+valor11+valor12) as XVALOR ' );
               Q_AUX.sql.add(' from FLUXO WHERE Conta = ' + '''' + Q_FLUXOConta.asstring + '''' ) ;
               Q_AUX.Open ;
               value := formatfloat('###,###,##0',Q_AUX.fieldbyname('XVALOR').asfloat ) ;
               TotGeral := TotGeral + Q_AUX.fieldbyname('XVALOR').asfloat ;
       END
       ELSE
       BEGIN
       Total := Total + Q_FLUXOvalor13.asfloat ;
       Tot1 := tot1 + Q_FLUXOvalor13.asfloat ;
       value := formatfloat('###,###,##0',Q_FLUXOValor13.asfloat ) ;
       END;
    end
    else  if Q_FLUXOFolha.asinteger = 3 then
    begin
       Total := Total + Q_FLUXOvalor22.asfloat ;
       Tot1 := tot1 + Q_FLUXOvalor22.asfloat ;
       value := formatfloat('###,###,##0',Q_FLUXOValor22.asfloat ) ;
    end
    else  if Q_FLUXOFolha.asinteger = 4 then
    begin
       Total := Total + Q_FLUXOvalor31.asfloat ;
       Tot1 := tot1 + Q_FLUXOvalor31.asfloat ;
       value := formatfloat('###,###,##0',Q_FLUXOValor31.asfloat ) ;
    end ;



    if  Q_FLUXOFolha.asinteger = 1 then begin
       Total := Total + Q_FLUXOvalor4.asfloat ;
       Tot4 := tot4 + Q_FLUXOvalor4.asfloat ;
    end else begin
        if (Q_FLUXOQuebra.asstring = '4' ) and (Q_FLUXOConta.asstring = '1') then begin
          ////// value := formatfloat('###,###,##0.00',strtofloat(FRelFluxocaixaFilt.edit1.text)) ;
        end else begin
           if (Q_FLUXOQuebra.asstring = '4' ) and (Q_FLUXOConta.asstring = '4') then begin
              //Daniel: Tirei este ->>
              ///value := formatfloat('###,###,##0.00',FRelFluxocaixaFilt.caixaInicial) ;
              If FRelFluxoCaixaFilt.RadioGroup3.ItemIndex = 0 then
                 /////     value := formatfloat('###,###,##0.00',Q_FLUXOvalor8.asfloat)
              Else
                 //////     value := formatfloat('###,###,##0.00',Q_FLUXOvalor12.asfloat) ;
              
           end else begin
              // Q_AUX.close ;
              // Q_AUX.sql.clear;
              // Q_AUX.sql.add(' select sum(valor1+valor2+valor3+valor4+valor5+valor6+valor7+valor8+valor9+valor10+valor11+valor12) as XVALOR ' );
              // Q_AUX.sql.add(' from FLUXO WHERE Conta = ' + '''' + Q_FLUXOConta.asstring + '''' ) ;
              // Q_AUX.Open ;
               //value := formatfloat('###,###,##0.00',Q_AUX.fieldbyname('XVALOR').asfloat ) ;
              // TotGeral := TotGeral + Q_AUX.fieldbyname('XVALOR').asfloat ;
           end ;
        end ;
    end ;




    //PERIODO DO CLIENTE
    if FRelFluxoCaixaFilt.CheckBox1.Checked then
    begin
        if (Q_FLUXOFolha.asinteger = 1) and (StrToInt(FRelFluxoCaixaFilt.edtPeriodo.Text) = 3) then
        begin
             Q_AUX.close ;
             Q_AUX.sql.clear;
             Q_AUX.sql.add(' select sum(valor1+valor2+valor3) as XVALOR ');
            if FRelFluxoCaixaFilt.RadioGroup1.ItemIndex = 1 then
               Q_AUX.sql.add(' from FLUXO WHERE Conta = ' + '''' + Q_FLUXOConta.asstring + '''' )
            else
               Q_AUX.sql.add(' from FLUXO WHERE substring(CONTA,1,2) = ' + '''' + Q_FLUXOConta.asstring + '''' );
             Q_AUX.Open ;
             value := formatfloat('###,###,##0',Q_AUX.fieldbyname('XVALOR').asfloat ) ;



        end;
        if (Q_FLUXOFolha.asinteger = 2) and (StrToInt(FRelFluxoCaixaFilt.edtPeriodo.Text) = 12)  then
        begin
             Q_AUX.close ;
             Q_AUX.sql.clear;
             Q_AUX.sql.add(' select sum(valor1+valor2+valor3+valor4+valor5+valor6+valor7+valor8+valor9+valor10+valor11+valor12) as XVALOR ');
            if FRelFluxoCaixaFilt.RadioGroup1.ItemIndex = 1 then
               Q_AUX.sql.add(' from FLUXO WHERE Conta = ' + '''' + Q_FLUXOConta.asstring + '''' )
            else
               Q_AUX.sql.add(' from FLUXO WHERE substring(CONTA,1,2) = ' + '''' + Q_FLUXOConta.asstring + '''' );
             Q_AUX.Open ;
             value := formatfloat('###,###,##0',Q_AUX.fieldbyname('XVALOR').asfloat ) ;


             if Q_FLUXOCONTA.Value = '1' then
                Value := FRelFluxoCaixaFilt.Edit1.Text;

        end;

         if (Q_FLUXOFolha.asinteger = 3) and (StrToInt(FRelFluxoCaixaFilt.edtPeriodo.Text) >= 21)  then
        begin
             Q_AUX.close ;
             Q_AUX.sql.clear;
             Q_AUX.sql.add(' select sum(valor1+valor2+valor3+valor4+valor5+valor6+valor7+valor8+valor9+valor10+valor11+valor12+valor13+valor14+valor15+valor16+valor17+valor18+valor19+valor20+valor21) as XVALOR ');
            if FRelFluxoCaixaFilt.RadioGroup1.ItemIndex = 1 then
               Q_AUX.sql.add(' from FLUXO WHERE Conta = ' + '''' + Q_FLUXOConta.asstring + '''' )
            else
               Q_AUX.sql.add(' from FLUXO WHERE substring(CONTA,1,2) = ' + '''' + Q_FLUXOConta.asstring + '''' );
             Q_AUX.Open ;
             value := formatfloat('###,###,##0',Q_AUX.fieldbyname('XVALOR').asfloat ) ;
        end;

        if (Q_FLUXOFolha.asinteger = 4) and (StrToInt(FRelFluxoCaixaFilt.edtPeriodo.Text) = 30)  then
        begin
             Q_AUX.close ;
             Q_AUX.sql.clear;
             Q_AUX.sql.add(' select sum(valor1+valor2+valor3+valor4+valor5+valor6+valor7+valor8+valor9+valor10+valor11+valor12+valor13+valor14+valor15+valor16+valor17+valor18+valor19+valor20+valor21' );
             Q_AUX.sql.Add('+valor22+valor23+valor24+valor25+valor26+valor27+valor28+valor29+valor30) as XVALOR ');
            if FRelFluxoCaixaFilt.RadioGroup1.ItemIndex = 1 then
               Q_AUX.sql.add(' from FLUXO WHERE Conta = ' + '''' + Q_FLUXOConta.asstring + '''' )
            else
               Q_AUX.sql.add(' from FLUXO WHERE substring(CONTA,1,2) = ' + '''' + Q_FLUXOConta.asstring + '''' );
             Q_AUX.Open ;
             value := formatfloat('###,###,##0',Q_AUX.fieldbyname('XVALOR').asfloat ) ;
        end;
    end;     //END IF CHECKBOX



    //procurar os valores totais quebra TT

       if (FRelFluxoCaixaFilt.RadioGroup3.ItemIndex = 1) and (Q_FLUXOFolha.Value = 2) then
       begin
           if (Q_FLUXOConta.asstring = '1') then
           begin
               value :=  formatfloat('###,###,##0',StrToFloat(FRelFluxoCaixaFilt.Edit1.Text) ) ;
           end;

           if (Q_FLUXOConta.asstring = '2') then
           begin
                    with qrTotais12 do
                    begin
                        close;
                        Params[0].AsString := '2';
                        Open;
                    end;
                    fEntradas := qrTotais12total.Value;
                    Value  := formatfloat('###,###,##0',qrTotais12total.Value ) ;
           end;


           if (Q_FLUXOConta.asstring = '3') then
           begin
                    with qrTotais12 do
                    begin
                        close;
                        Params[0].AsString := '3';
                        Open;
                    end;
                    fSaidas := qrTotais12total.Value;
                    Value  := formatfloat('###,###,##0',qrTotais12total.Value ) ;
           end;

          if  Q_FLUXOConta.asstring = '4' then
          begin

                    with qrTotais12 do
                    begin
                        close;
                        Params[0].AsString := '2';
                        Open;
                    end;
                    fEntradas := qrTotais12total.Value;

                    with qrTotais12 do
                    begin
                        close;
                        Params[0].AsString := '3';
                        Open;
                    end;
                    fSaidas := qrTotais12total.Value;

               if FRelFluxoCaixaFilt.RadioGroup2.ItemIndex = 0 then
                  Value := FloatToStr((StrToFloat(FRelFluxoCaixaFilt.Edit1.Text) + fEntradas) - fSaidas)
               else
                  Value := FloatToStr((StrToFloat(FRelFluxoCaixaFilt.Edit1.Text) + fEntradas) + fSaidas)

          end;
       end;




       //busca de totais  folha 1
       IF (Q_FLUXOCONTA.Value = '1' ) and (Q_FLUXOFolha.Value = 1) then
       begin
            with qrBuscaTotais do
            begin
                close;
                sql.Clear;
                sql.Add('Select valor4 as valor from fluxo where conta = ' + QuotedStr('1') + ' and quebra = ' + QuotedStr('TT'));
                Open;
            end;

            Value  := formatfloat('###,###,##0',qrBuscaTotaisvalor.Value ) ;
       end;

       IF (Q_FLUXOCONTA.Value = '2' ) and (Q_FLUXOFolha.Value = 1) then
       begin
            with qrBuscaTotais do
            begin
                close;
                sql.Clear;
                sql.Add('Select valor4 as valor from fluxo where conta = ' + QuotedStr('2') + ' and quebra = ' + QuotedStr('TT'));
                Open;
            end;

            Value  := formatfloat('###,###,##0',qrBuscaTotaisvalor.Value ) ;
       end;

       IF (Q_FLUXOCONTA.Value = '3' ) and (Q_FLUXOFolha.Value = 1) then
       begin
            with qrBuscaTotais do
            begin
                close;
                sql.Clear;
                sql.Add('Select valor4 as valor from fluxo where conta = ' + QuotedStr('3') + ' and quebra = ' + QuotedStr('TT'));
                Open;
            end;

            Value  := formatfloat('###,###,##0',qrBuscaTotaisvalor.Value ) ;
       end;

       IF (Q_FLUXOCONTA.Value = '4' ) and (Q_FLUXOFolha.Value = 1) then
       begin
            with qrBuscaTotais do
            begin
                close;
                sql.Clear;
                sql.Add('Select valor4 as valor from fluxo where conta = ' + QuotedStr('4') + ' and quebra = ' + QuotedStr('TT'));
                Open;
            end;

            Value  := formatfloat('###,###,##0',qrBuscaTotaisvalor.Value ) ;
       end;




       //busca de totais  folha 2
       IF (Q_FLUXOCONTA.Value = '1' ) and (Q_FLUXOFolha.Value = 2) then
       begin
            with qrBuscaTotais do
            begin
                close;
                sql.Clear;
                sql.Add('Select valor13 as valor from fluxo where conta = ' + QuotedStr('1') + ' and quebra = ' + QuotedStr('TT'));
                Open;
            end;

            Value  := formatfloat('###,###,##0',qrBuscaTotaisvalor.Value ) ;
       end;

       IF (Q_FLUXOCONTA.Value = '2' ) and (Q_FLUXOFolha.Value = 2) then
       begin
            with qrBuscaTotais do
            begin
                close;
                sql.Clear;
                sql.Add('Select valor13 as valor from fluxo where conta = ' + QuotedStr('2') + ' and quebra = ' + QuotedStr('TT'));
                Open;
            end;

            Value  := formatfloat('###,###,##0',qrBuscaTotaisvalor.Value ) ;
       end;

       IF (Q_FLUXOCONTA.Value = '3' ) and (Q_FLUXOFolha.Value = 2) then
       begin
            with qrBuscaTotais do
            begin
                close;
                sql.Clear;
                sql.Add('Select valor13 as valor from fluxo where conta = ' + QuotedStr('3') + ' and quebra = ' + QuotedStr('TT'));
                Open;
            end;

            Value  := formatfloat('###,###,##0',qrBuscaTotaisvalor.Value ) ;
       end;

       IF (Q_FLUXOCONTA.Value = '4' ) and (Q_FLUXOFolha.Value = 2) then
       begin
            with qrBuscaTotais do
            begin
                close;
                sql.Clear;
                sql.Add('Select valor13 as valor from fluxo where conta = ' + QuotedStr('4') + ' and quebra = ' + QuotedStr('TT'));
                Open;
            end;

            Value  := formatfloat('###,###,##0',qrBuscaTotaisvalor.Value ) ;
       end;




       //busca de totais   folha 3
       IF (Q_FLUXOCONTA.Value = '1' ) and (Q_FLUXOFolha.Value = 3) then
       begin
            with qrBuscaTotais do
            begin
                close;
                sql.Clear;
                sql.Add('Select valor22 as valor from fluxo where conta = ' + QuotedStr('1') + ' and quebra = ' + QuotedStr('TT'));
                Open;
            end;

            Value  := formatfloat('###,###,##0',qrBuscaTotaisvalor.Value ) ;
       end;

       IF (Q_FLUXOCONTA.Value = '2' ) and (Q_FLUXOFolha.Value = 3) then
       begin
            with qrBuscaTotais do
            begin
                close;
                sql.Clear;
                sql.Add('Select valor22 as valor from fluxo where conta = ' + QuotedStr('2') + ' and quebra = ' + QuotedStr('TT'));
                Open;
            end;

            Value  := formatfloat('###,###,##0',qrBuscaTotaisvalor.Value ) ;
       end;

       IF (Q_FLUXOCONTA.Value = '3' ) and (Q_FLUXOFolha.Value = 3) then
       begin
            with qrBuscaTotais do
            begin
                close;
                sql.Clear;
                sql.Add('Select valor22 as valor from fluxo where conta = ' + QuotedStr('3') + ' and quebra = ' + QuotedStr('TT'));
                Open;
            end;

            Value  := formatfloat('###,###,##0',qrBuscaTotaisvalor.Value ) ;
       end;

       IF (Q_FLUXOCONTA.Value = '4' ) and (Q_FLUXOFolha.Value = 3) then
       begin
            with qrBuscaTotais do
            begin
                close;
                sql.Clear;
                sql.Add('Select valor22 as valor from fluxo where conta = ' + QuotedStr('4') + ' and quebra = ' + QuotedStr('TT'));
                Open;
            end;

            Value  := formatfloat('###,###,##0',qrBuscaTotaisvalor.Value ) ;
       end;



       //busca de totais        folha 4
       IF (Q_FLUXOCONTA.Value = '1' ) and (Q_FLUXOFolha.Value = 4) then
       begin
            with qrBuscaTotais do
            begin
                close;
                sql.Clear;
                sql.Add('Select valor31 as valor from fluxo where conta = ' + QuotedStr('1') + ' and quebra = ' + QuotedStr('TT'));
                Open;
            end;

            Value  := formatfloat('###,###,##0',qrBuscaTotaisvalor.Value ) ;
       end;

       IF (Q_FLUXOCONTA.Value = '2' ) and (Q_FLUXOFolha.Value = 4) then
       begin
            with qrBuscaTotais do
            begin
                close;
                sql.Clear;
                sql.Add('Select valor31 as valor from fluxo where conta = ' + QuotedStr('2') + ' and quebra = ' + QuotedStr('TT'));
                Open;
            end;

            Value  := formatfloat('###,###,##0',qrBuscaTotaisvalor.Value ) ;
       end;

       IF (Q_FLUXOCONTA.Value = '3' ) and (Q_FLUXOFolha.Value = 4) then
       begin
            with qrBuscaTotais do
            begin
                close;
                sql.Clear;
                sql.Add('Select valor31 as valor from fluxo where conta = ' + QuotedStr('3') + ' and quebra = ' + QuotedStr('TT'));
                Open;
            end;

            Value  := formatfloat('###,###,##0',qrBuscaTotaisvalor.Value ) ;
       end;

       IF (Q_FLUXOCONTA.Value = '4' ) and (Q_FLUXOFolha.Value = 4) then
       begin
            with qrBuscaTotais do
            begin
                close;
                sql.Clear;
                sql.Add('Select valor31 as valor from fluxo where conta = ' + QuotedStr('4') + ' and quebra = ' + QuotedStr('TT'));
                Open;
            end;

            Value  := formatfloat('###,###,##0',qrBuscaTotaisvalor.Value ) ;
       end;



       IF FRelFluxoCaixaFilt.CheckBox1.Checked then
    BEGIN
        //APAGA VALORES CASO NAO SEJA NECESSÁRIO VISUALIZAR
        if (Q_FLUXOFolha.asinteger = 1) and (StrToInt(FRelFluxoCaixaFilt.edtPeriodo.Text) <= 2)  then
        begin
               value := '' ;
        end;
        if (Q_FLUXOFolha.asinteger = 2) and (StrToInt(FRelFluxoCaixaFilt.edtPeriodo.Text) <= 11)  then
        begin
               value := '' ;
        end;
        if (Q_FLUXOFolha.asinteger = 3) and (StrToInt(FRelFluxoCaixaFilt.edtPeriodo.Text) <= 20)  then
        begin
               value := '' ;
        end;
        if (Q_FLUXOFolha.asinteger = 4) and (StrToInt(FRelFluxoCaixaFilt.edtPeriodo.Text) <= 29)  then
        begin
               value := '' ;
        end;
    end;







    //totais gerais do relatorio
    if (FRelFluxoCaixaFilt.CheckBox1.Checked = True) and (p_rel = 3) and (Q_FLUXOFolha.Value = 1) then
    begin
        if (Q_FLUXOConta.asstring = '1') then
        begin
            Value := FRelFluxoCaixaFilt.Edit1.Text;
        end;
        if (Q_FLUXOConta.asstring = '2') then
        begin
            with qrAux3 do
            begin
                Close;
                SQL.Clear;
                sql.Add('select ');
                sql.Add('valor1+valor2+valor3');
                sql.Add('as total from fluxo where quebra = ''TT'' ');
                sql.Add('and conta  = ' + QuotedStr('2'));
                Open;
            end;
            fEntradas := qrAux3.FieldByName('Total').AsFloat;
            Value := FormatFloat('###,###,##0', fEntradas);
        end;
        if (Q_FLUXOConta.asstring = '3') then
        begin
            with qrAux3 do
            begin
                Close;
                SQL.Clear;
                sql.Add('select ');
                sql.Add('valor1+valor2+valor3');
                sql.Add('as total from fluxo where quebra = ''TT'' ');
                sql.Add('and conta  = ' + QuotedStr('3'));
                Open;
            end;
            fSaidas := qrAux3.FieldByName('Total').AsFloat;
            Value := FormatFloat('###,###,##0', fSaidas);
        end;

        if (Q_FLUXOConta.asstring = '4') then
        begin
               if FRelFluxoCaixaFilt.RadioGroup2.ItemIndex = 0 then
                  Value := FormatFloat('###,###,##0',StrToFloat(FRelFluxoCaixaFilt.Edit1.Text) + fEntradas - fSaidas)
               else
                  Value := FormatFloat('###,###,##0',StrToFloat(FRelFluxoCaixaFilt.Edit1.Text) + fEntradas + fSaidas);
        end;

    end;

    if (FRelFluxoCaixaFilt.CheckBox1.Checked = True) and (p_rel = 12) and (Q_FLUXOFolha.Value = 2) then
    begin
        if (Q_FLUXOConta.asstring = '1') then
        begin
            Value := FRelFluxoCaixaFilt.Edit1.Text;
        end;
        if (Q_FLUXOConta.asstring = '2') then
        begin
            with qrAux3 do
            begin
                Close;
                SQL.Clear;
                sql.Add('select ');
                sql.Add('valor1+valor2+valor3+valor4+valor5+valor6+valor7+valor8+valor9+valor10+valor11+valor12 ');
                sql.Add('as total from fluxo where quebra = ''TT'' ');
                sql.Add('and conta  = ' + QuotedStr('2'));
                Open;
            end;
            fEntradas := qrAux3.FieldByName('Total').AsFloat;
            Value := FormatFloat('###,###,##0', fEntradas);
        end;
        if (Q_FLUXOConta.asstring = '3') then
        begin
            with qrAux3 do
            begin
                Close;
                SQL.Clear;
                sql.Add('select ');
                sql.Add('valor1+valor2+valor3+valor4+valor5+valor6+valor7+valor8+valor9+valor10+valor11+valor12 ');
                sql.Add('as total from fluxo where quebra = ''TT'' ');
                sql.Add('and conta  = ' + QuotedStr('3'));
                Open;
            end;
            fSaidas := qrAux3.FieldByName('Total').AsFloat;
            Value := FormatFloat('###,###,##0', fSaidas);
        end;

        if (Q_FLUXOConta.asstring = '4') then
        begin
               if FRelFluxoCaixaFilt.RadioGroup2.ItemIndex = 0 then
                  Value := FormatFloat('###,###,##0',StrToFloat(FRelFluxoCaixaFilt.Edit1.Text) + fEntradas - fSaidas)
               else
                  Value := FormatFloat('###,###,##0',StrToFloat(FRelFluxoCaixaFilt.Edit1.Text) + fEntradas + fSaidas);
        end;
    end;


    if (FRelFluxoCaixaFilt.CheckBox1.Checked) and (p_rel = 21) and (Q_FLUXOFolha.Value = 3) then
    begin
        if (Q_FLUXOConta.asstring = '1') then
        begin
            Value := FRelFluxoCaixaFilt.Edit1.Text;
        end;
        if (Q_FLUXOConta.asstring = '2') then
        begin
            with qrAux3 do
            begin
                Close;
                SQL.Clear;
                sql.Add( 'select ' );
                sql.Add('valor1+valor2+valor3+valor4+valor5+valor6+valor7+valor8+valor9+valor10+valor11+valor12+valor13+valor14+valor15+valor16+valor17+valor18+valor19+valor20 ');
                sql.Add('+valor21 as total from fluxo where quebra = ''TT'' ');
                sql.Add('and conta  = ' + QuotedStr('2'));
                Open;
            end;
            fEntradas := qrAux3.FieldByName('Total').AsFloat;
            Value := FormatFloat('###,###,##0', fEntradas);
        end;
        if (Q_FLUXOConta.asstring = '3') then
        begin
            with qrAux3 do
            begin
                Close;
                SQL.Clear;
                sql.Add( 'select ' );
                sql.Add('valor1+valor2+valor3+valor4+valor5+valor6+valor7+valor8+valor9+valor10+valor11+valor12+valor13+valor14+valor15+valor16+valor17+valor18+valor19+valor20 ');
                sql.Add('+ valor21 as total from fluxo where quebra = ''TT'' ');
                sql.Add('and conta  = ' + QuotedStr('3'));
                Open;
            end;
            fSaidas := qrAux3.FieldByName('Total').AsFloat;
            Value := FormatFloat('###,###,##0', fSaidas);
        end;

        if (Q_FLUXOConta.asstring = '4') then
        begin
               if FRelFluxoCaixaFilt.RadioGroup2.ItemIndex = 0 then
                  Value := FormatFloat('###,###,##0',StrToFloat(FRelFluxoCaixaFilt.Edit1.Text) + fEntradas - fSaidas)
               else
                  Value := FormatFloat('###,###,##0',StrToFloat(FRelFluxoCaixaFilt.Edit1.Text) + fEntradas + fSaidas);
        end;
    end;



    if (FRelFluxoCaixaFilt.CheckBox1.Checked) and (p_rel = 30) and (Q_FLUXOFolha.Value = 4) then
    begin
        if (Q_FLUXOConta.asstring = '1') then
        begin
            Value := FRelFluxoCaixaFilt.Edit1.Text;
        end;
        if (Q_FLUXOConta.asstring = '2') then
        begin
            with qrAux3 do
            begin
                Close;
                SQL.Clear;
                sql.Add('select ');
                sql.Add('valor1+valor2+valor3+valor4+valor5+valor6+valor7+valor8+valor9+valor10+valor11+valor12+valor13+valor14+valor15+valor16+valor17+valor18 ');
                sql.Add('+valor19+valor20+valor21+valor22+valor23+valor24+valor25+valor26+valor27+valor28+valor29+valor30 ');
                sql.Add('as total from fluxo where quebra = ''TT'' ');
                sql.Add('and conta  = ' + QuotedStr('2'));
                Open;
            end;
            fEntradas := qrAux3.FieldByName('Total').AsFloat;
            Value := FormatFloat('###,###,##0', fEntradas);
        end;
        if (Q_FLUXOConta.asstring = '3') then
        begin
            with qrAux3 do
            begin
                Close;
                SQL.Clear;
                sql.Add('select ');
                sql.Add('valor1+valor2+valor3+valor4+valor5+valor6+valor7+valor8+valor9+valor10+valor11+valor12+valor13+valor14+valor15+valor16+valor17+valor18 ');
                sql.Add('+valor19+valor20+valor21+valor22+valor23+valor24+valor25+valor26+valor27+valor28+valor29+valor30 ');
                sql.Add('as total from fluxo where quebra = ''TT'' ');
                sql.Add('and conta  = ' + QuotedStr('3'));
                Open;
            end;
            fSaidas := qrAux3.FieldByName('Total').AsFloat;
            Value := FormatFloat('###,###,##0', fSaidas);
        end;

        if (Q_FLUXOConta.asstring = '4') then
        begin
               if FRelFluxoCaixaFilt.RadioGroup2.ItemIndex = 0 then
                  Value := FormatFloat('###,###,##0',StrToFloat(FRelFluxoCaixaFilt.Edit1.Text) + fEntradas - fSaidas)
               else
                  Value := FormatFloat('###,###,##0',StrToFloat(FRelFluxoCaixaFilt.Edit1.Text) + fEntradas + fSaidas);
        end;
    end;





end;

procedure TFRelFluxoCaixaCompleto.QRDBText6Print(sender: TObject; var Value: String);
var p_rel : Integer;
begin

    p_rel := StrToInt(FRelFluxoCaixaFilt.Edtperiodo.Text);

 if Q_FLUXOFolha.asinteger = 1 then
    begin
       Total := Total + Q_FLUXOvalor5.asfloat ;
       Tot1 := tot1 + Q_FLUXOvalor5.asfloat ;
       value := formatfloat('###,###,##0',Q_FLUXOValor5.asfloat ) ;
    end
    else  if Q_FLUXOFolha.asinteger = 2 then
    begin
       Total := Total + Q_FLUXOvalor14.asfloat ;
       Tot1 := tot1 + Q_FLUXOvalor14.asfloat ;
       value := formatfloat('###,###,##0',Q_FLUXOValor14.asfloat ) ;

    end
    else  if Q_FLUXOFolha.asinteger = 3 then
    begin
       Total := Total + Q_FLUXOvalor23.asfloat ;
       Tot1 := tot1 + Q_FLUXOvalor23.asfloat ;
       value := formatfloat('###,###,##0',Q_FLUXOValor23.asfloat ) ;
    end
    else  if Q_FLUXOFolha.asinteger = 4 then
    begin
               Q_AUX.close ;
               Q_AUX.sql.clear;
               Q_AUX.sql.add(' select sum(valor1+valor2+valor3+valor4+valor5+valor6+valor7+valor8+valor9+valor10+valor11+valor12+valor13+valor14+valor15+valor16+valor17+valor18+valor19+valor20+valor21' );
               Q_AUX.sql.Add('+valor22+valor23+valor24+valor25+valor26+valor27+valor28+valor29+valor30+valor31) as XVALOR ');
               Q_AUX.sql.add(' from FLUXO WHERE Conta = ' + '''' + Q_FLUXOConta.asstring + '''' ) ;
               Q_AUX.Open ;
               value := formatfloat('###,###,##0',Q_AUX.fieldbyname('XVALOR').asfloat ) ;
               TotGeral := TotGeral + Q_AUX.fieldbyname('XVALOR').asfloat ;
    end ;


    //PERIODO DO CLIENTE
    if FRelFluxoCaixaFilt.CheckBox1.Checked then
    begin
        if (Q_FLUXOFolha.asinteger = 1) and (StrToInt(FRelFluxoCaixaFilt.edtPeriodo.Text) = 4) then
        begin
             Q_AUX.close ;
             Q_AUX.sql.clear;
             Q_AUX.sql.add(' select sum(valor1+valor2+valor3+valor4) as XVALOR ');
            if FRelFluxoCaixaFilt.RadioGroup1.ItemIndex = 1 then
               Q_AUX.sql.add(' from FLUXO WHERE Conta = ' + '''' + Q_FLUXOConta.asstring + '''' )
            else
               Q_AUX.sql.add(' from FLUXO WHERE substring(CONTA,1,2) = ' + '''' + Q_FLUXOConta.asstring + '''' );
             Q_AUX.Open ;
             value := formatfloat('###,###,##0',Q_AUX.fieldbyname('XVALOR').asfloat ) ;
        end;
        if (Q_FLUXOFolha.asinteger = 2) and (StrToInt(FRelFluxoCaixaFilt.edtPeriodo.Text) = 13)  then
        begin
             Q_AUX.close ;
             Q_AUX.sql.clear;
             Q_AUX.sql.add(' select sum(valor1+valor2+valor3+valor4+valor5+valor6+valor7+valor8+valor9+valor10+valor11+valor12+valor13) as XVALOR ');
            if FRelFluxoCaixaFilt.RadioGroup1.ItemIndex = 1 then
               Q_AUX.sql.add(' from FLUXO WHERE Conta = ' + '''' + Q_FLUXOConta.asstring + '''' )
            else
               Q_AUX.sql.add(' from FLUXO WHERE substring(CONTA,1,2) = ' + '''' + Q_FLUXOConta.asstring + '''' );
             Q_AUX.Open ;
             value := formatfloat('###,###,##0',Q_AUX.fieldbyname('XVALOR').asfloat ) ;
        end;

         if (Q_FLUXOFolha.asinteger = 3) and (StrToInt(FRelFluxoCaixaFilt.edtPeriodo.Text) >= 22)  then
        begin
             Q_AUX.close ;
             Q_AUX.sql.clear;
             Q_AUX.sql.add(' select sum(valor1+valor2+valor3+valor4+valor5+valor6+valor7+valor8+valor9+valor10+valor11+valor12+valor13+valor14+valor15+valor16+valor17+valor18+valor19+valor20+valor21' );
             Q_AUX.sql.Add('+valor22) as XVALOR ');
            if FRelFluxoCaixaFilt.RadioGroup1.ItemIndex = 1 then
               Q_AUX.sql.add(' from FLUXO WHERE Conta = ' + '''' + Q_FLUXOConta.asstring + '''' )
            else
               Q_AUX.sql.add(' from FLUXO WHERE substring(CONTA,1,2) = ' + '''' + Q_FLUXOConta.asstring + '''' );
             Q_AUX.Open ;
             value := formatfloat('###,###,##0',Q_AUX.fieldbyname('XVALOR').asfloat ) ;
        end;

        if (Q_FLUXOFolha.asinteger = 4) and (StrToInt(FRelFluxoCaixaFilt.edtPeriodo.Text) = 31)  then
        begin
             Q_AUX.close ;
             Q_AUX.sql.clear;
             Q_AUX.sql.add(' select sum(valor1+valor2+valor3+valor4+valor5+valor6+valor7+valor8+valor9+valor10+valor11+valor12+valor13+valor14+valor15+valor16+valor17+valor18+valor19+valor20+valor21' );
             Q_AUX.sql.Add('+valor22+valor23+valor24+valor25+valor26+valor27+valor28+valor29+valor30+valor31) as XVALOR ');
            if FRelFluxoCaixaFilt.RadioGroup1.ItemIndex = 1 then
               Q_AUX.sql.add(' from FLUXO WHERE Conta = ' + '''' + Q_FLUXOConta.asstring + '''' )
            else
               Q_AUX.sql.add(' from FLUXO WHERE substring(CONTA,1,2) = ' + '''' + Q_FLUXOConta.asstring + '''' );
             Q_AUX.Open ;
             value := formatfloat('###,###,##0',Q_AUX.fieldbyname('XVALOR').asfloat ) ;
        end;
    end;     //END IF CHECKBOX


    //procurar os valores totais quebra TT
    if (Q_FLUXOConta.asstring = '1') or ( Q_FLUXOConta.asstring = '2')
    or ( Q_FLUXOConta.asstring = '3') or ( Q_FLUXOConta.asstring = '4') then
    begin
        with qrTotaisTT do
        begin
            close;
            sql.Clear;
            if Q_FLUXOFolha.AsInteger = 1 then
               sql.Add('Select valor5 as valor ')
            else if Q_FLUXOFolha.AsInteger = 2 then
               sql.Add('Select valor14 as valor ')
            else if Q_FLUXOFolha.AsInteger = 3 then
               sql.Add('Select valor23 as valor ');
            sql.Add('from fluxo where quebra = ''TT'' and conta = ' + QuotedStr(Q_FLUXOConta.asstring));
            if  Q_FLUXOFolha.AsInteger <> 4 then
            begin
               Open;
               value := formatfloat('###,###,##0',qrTotaisTT.FieldByName('Valor').AsFloat ) ;
            end
            else//verifica totais de 31 posições
            begin

            //verifica q tipo de conta é
                if  Q_FLUXOConta.asstring = '1' then
                        Value := FRelFluxoCaixaFilt.Edit1.Text;

                if  Q_FLUXOConta.asstring = '2' then
                begin
                    with qrTotais do
                    begin
                        close;
                        Params[0].AsString := '2';
                        Open;
                    end;
                    fEntradas := qrTotaistotal.Value;
                    Value  := formatfloat('###,###,##0',qrTotaistotal.Value ) ;
                end;

                if  Q_FLUXOConta.asstring = '3' then
                begin
                    with qrTotais do
                    begin
                        close;
                        Params[0].AsString := '3';
                        Open;
                    end;
                    fSaidas := qrTotaistotal.Value;
                    Value  := formatfloat('###,###,##0',qrTotaistotal.Value ) ;
                end;


               if  Q_FLUXOConta.asstring = '4' then
               begin
                     //if por causa do total previsto ou realizado
                     IF FRelFluxoCaixaFilt.RadioGroup2.ItemIndex = 0 then
                         Value := formatfloat('###,###,##0',(StrToFloat(FRelFluxoCaixaFilt.Edit1.Text) + fEntradas) - fSaidas)
                     else IF FRelFluxoCaixaFilt.RadioGroup2.ItemIndex = 1 then
                         Value := formatfloat('###,###,##0', (StrToFloat(FRelFluxoCaixaFilt.Edit1.Text) + fEntradas) + fSaidas);
               end;
            end;
        end;
    end;
    if (FRelFluxoCaixaFilt.RadioGroup3.ItemIndex = 1) and (Q_FLUXOFolha.Value = 2) then
    Value := '';



    IF FRelFluxoCaixaFilt.CheckBox1.Checked then
    BEGIN
        //APAGA VALORES CASO NAO SEJA NECESSÁRIO VISUALIZAR
        if (Q_FLUXOFolha.asinteger = 1) and (StrToInt(FRelFluxoCaixaFilt.edtPeriodo.Text) <= 3)  then
        begin
               value := '' ;
        end;
        if (Q_FLUXOFolha.asinteger = 2) and (StrToInt(FRelFluxoCaixaFilt.edtPeriodo.Text) <= 12)  then
        begin
               value := '' ;
        end;
        if (Q_FLUXOFolha.asinteger = 3) and (StrToInt(FRelFluxoCaixaFilt.edtPeriodo.Text) <= 21)  then
        begin
               value := '' ;
        end;
        if (Q_FLUXOFolha.asinteger = 4) and (StrToInt(FRelFluxoCaixaFilt.edtPeriodo.Text) <= 30)  then
        begin
               value := '' ;
        end;
    end;







        //totais gerais do relatorio
    if (FRelFluxoCaixaFilt.CheckBox1.Checked = True) and (p_rel = 4) and (Q_FLUXOFolha.Value = 1) then
    begin
        if (Q_FLUXOConta.asstring = '1') then
        begin
            Value := FRelFluxoCaixaFilt.Edit1.Text;
        end;
        if (Q_FLUXOConta.asstring = '2') then
        begin
            with qrAux3 do
            begin
                Close;
                SQL.Clear;
                sql.Add('select ');
                sql.Add('valor1+valor2+valor3+valor4');
                sql.Add('as total from fluxo where quebra = ''TT'' ');
                sql.Add('and conta  = ' + QuotedStr('2'));
                Open;
            end;
            fEntradas := qrAux3.FieldByName('Total').AsFloat;
            Value := FormatFloat('###,###,##0', fEntradas);
        end;
        if (Q_FLUXOConta.asstring = '3') then
        begin
            with qrAux3 do
            begin
                Close;
                SQL.Clear;
                sql.Add('select ');
                sql.Add('valor1+valor2+valor3+valor4');
                sql.Add('as total from fluxo where quebra = ''TT'' ');
                sql.Add('and conta  = ' + QuotedStr('3'));
                Open;
            end;
            fSaidas := qrAux3.FieldByName('Total').AsFloat;
            Value := FormatFloat('###,###,##0', fSaidas);
        end;

        if (Q_FLUXOConta.asstring = '4') then
        begin
               if FRelFluxoCaixaFilt.RadioGroup2.ItemIndex = 0 then
                  Value := FormatFloat('###,###,##0',StrToFloat(FRelFluxoCaixaFilt.Edit1.Text) + fEntradas - fSaidas)
               else
                  Value := FormatFloat('###,###,##0',StrToFloat(FRelFluxoCaixaFilt.Edit1.Text) + fEntradas + fSaidas);
        end;

    end;

    if (FRelFluxoCaixaFilt.CheckBox1.Checked = True) and (p_rel = 13) and (Q_FLUXOFolha.Value = 2) then
    begin
        if (Q_FLUXOConta.asstring = '1') then
        begin
            Value := FRelFluxoCaixaFilt.Edit1.Text;
        end;
        if (Q_FLUXOConta.asstring = '2') then
        begin
            with qrAux3 do
            begin
                Close;
                SQL.Clear;
                sql.Add('select ');
                sql.Add('valor1+valor2+valor3+valor4+valor5+valor6+valor7+valor8+valor9+valor10+valor11+valor12 ');
                sql.Add('+ valor13 as total from fluxo where quebra = ''TT'' ');
                sql.Add('and conta  = ' + QuotedStr('2'));
                Open;
            end;
            fEntradas := qrAux3.FieldByName('Total').AsFloat;
            Value := FormatFloat('###,###,##0', fEntradas);
        end;
        if (Q_FLUXOConta.asstring = '3') then
        begin
            with qrAux3 do
            begin
                Close;
                SQL.Clear;
                sql.Add('select ');
                sql.Add('valor1+valor2+valor3+valor4+valor5+valor6+valor7+valor8+valor9+valor10+valor11+valor12 ');
                sql.Add(' +valor13 as total from fluxo where quebra = ''TT'' ');
                sql.Add('and conta  = ' + QuotedStr('3'));
                Open;
            end;
            fSaidas := qrAux3.FieldByName('Total').AsFloat;
            Value := FormatFloat('###,###,##0', fSaidas);
        end;

        if (Q_FLUXOConta.asstring = '4') then
        begin
               if FRelFluxoCaixaFilt.RadioGroup2.ItemIndex = 0 then
                  Value := FormatFloat('###,###,##0',StrToFloat(FRelFluxoCaixaFilt.Edit1.Text) + fEntradas - fSaidas)
               else
                  Value := FormatFloat('###,###,##0',StrToFloat(FRelFluxoCaixaFilt.Edit1.Text) + fEntradas + fSaidas);
        end;
    end;


    if (FRelFluxoCaixaFilt.CheckBox1.Checked) and (p_rel = 22) and (Q_FLUXOFolha.Value = 3) then
    begin
        if (Q_FLUXOConta.asstring = '1') then
        begin
            Value := FRelFluxoCaixaFilt.Edit1.Text;
        end;
        if (Q_FLUXOConta.asstring = '2') then
        begin
            with qrAux3 do
            begin
                Close;
                SQL.Clear;
                sql.Add( 'select ' );
                sql.Add('valor1+valor2+valor3+valor4+valor5+valor6+valor7+valor8+valor9+valor10+valor11+valor12+valor13+valor14+valor15+valor16+valor17+valor18+valor19+valor20 ');
                sql.Add('+valor21+valor22 as total from fluxo where quebra = ''TT'' ');
                sql.Add('and conta  = ' + QuotedStr('2'));
                Open;
            end;
            fEntradas := qrAux3.FieldByName('Total').AsFloat;
            Value := FormatFloat('###,###,##0', fEntradas);
        end;
        if (Q_FLUXOConta.asstring = '3') then
        begin
            with qrAux3 do
            begin
                Close;
                SQL.Clear;
                sql.Add( 'select ' );
                sql.Add('valor1+valor2+valor3+valor4+valor5+valor6+valor7+valor8+valor9+valor10+valor11+valor12+valor13+valor14+valor15+valor16+valor17+valor18+valor19+valor20 ');
                sql.Add('+ valor21+valor22 as total from fluxo where quebra = ''TT'' ');
                sql.Add('and conta  = ' + QuotedStr('3'));
                Open;
            end;
            fSaidas := qrAux3.FieldByName('Total').AsFloat;
            Value := FormatFloat('###,###,##0', fSaidas);
        end;

        if (Q_FLUXOConta.asstring = '4') then
        begin
               if FRelFluxoCaixaFilt.RadioGroup2.ItemIndex = 0 then
                  Value := FormatFloat('###,###,##0',StrToFloat(FRelFluxoCaixaFilt.Edit1.Text) + fEntradas - fSaidas)
               else
                  Value := FormatFloat('###,###,##0',StrToFloat(FRelFluxoCaixaFilt.Edit1.Text) + fEntradas + fSaidas);
        end;
    end;



    if (FRelFluxoCaixaFilt.CheckBox1.Checked) and (p_rel = 31) and (Q_FLUXOFolha.Value = 4) then
    begin
        if (Q_FLUXOConta.asstring = '1') then
        begin
            Value := FRelFluxoCaixaFilt.Edit1.Text;
        end;
        if (Q_FLUXOConta.asstring = '2') then
        begin
            with qrAux3 do
            begin
                Close;
                SQL.Clear;
                sql.Add('select ');
                sql.Add('valor1+valor2+valor3+valor4+valor5+valor6+valor7+valor8+valor9+valor10+valor11+valor12+valor13+valor14+valor15+valor16+valor17+valor18 ');
                sql.Add('+valor19+valor20+valor21+valor22+valor23+valor24+valor25+valor26+valor27+valor28+valor29+valor30+valor31 ');
                sql.Add('as total from fluxo where quebra = ''TT'' ');
                sql.Add('and conta  = ' + QuotedStr('2'));
                Open;
            end;
            fEntradas := qrAux3.FieldByName('Total').AsFloat;
            Value := FormatFloat('###,###,##0', fEntradas);
        end;
        if (Q_FLUXOConta.asstring = '3') then
        begin
            with qrAux3 do
            begin
                Close;
                SQL.Clear;
                sql.Add('select ');
                sql.Add('valor1+valor2+valor3+valor4+valor5+valor6+valor7+valor8+valor9+valor10+valor11+valor12+valor13+valor14+valor15+valor16+valor17+valor18 ');
                sql.Add('+valor19+valor20+valor21+valor22+valor23+valor24+valor25+valor26+valor27+valor28+valor29+valor30+valor31 ');
                sql.Add('as total from fluxo where quebra = ''TT'' ');
                sql.Add('and conta  = ' + QuotedStr('3'));
                Open;
            end;
            fSaidas := qrAux3.FieldByName('Total').AsFloat;
            Value := FormatFloat('###,###,##0', fSaidas);
        end;

        if (Q_FLUXOConta.asstring = '4') then
        begin
               if FRelFluxoCaixaFilt.RadioGroup2.ItemIndex = 0 then
                  Value := FormatFloat('###,###,##0',StrToFloat(FRelFluxoCaixaFilt.Edit1.Text) + fEntradas - fSaidas)
               else
                  Value := FormatFloat('###,###,##0',StrToFloat(FRelFluxoCaixaFilt.Edit1.Text) + fEntradas + fSaidas);
        end;
    end;





end;

procedure TFRelFluxoCaixaCompleto.QRDBText7Print(sender: TObject; var Value: String);
var p_rel : Integer;
begin

    p_rel := StrToInt(FRelFluxoCaixaFilt.Edtperiodo.Text);



    
    if Q_FLUXOFolha.asinteger = 1 then
    begin
       Total := Total + Q_FLUXOvalor6.asfloat ;
       Tot1 := tot1 + Q_FLUXOvalor6.asfloat ;
       value := formatfloat('###,###,##0',Q_FLUXOValor6.asfloat ) ;
    end
    else  if Q_FLUXOFolha.asinteger = 2 then
    begin
      IF FRelFluxoCaixaFilt.RadioGroup3.ItemIndex = 1 THEN
       BEGIN
           value := '';
       end
       else
       begin
         Total := Total + Q_FLUXOvalor15.asfloat ;
         Tot1 := tot1 + Q_FLUXOvalor15.asfloat ;
         value := formatfloat('###,###,##0',Q_FLUXOValor15.asfloat ) ;
       end;
    end
    else  if Q_FLUXOFolha.asinteger = 3 then
    begin
       Total := Total + Q_FLUXOvalor24.asfloat ;
       Tot1 := tot1 + Q_FLUXOvalor24.asfloat ;
       value := formatfloat('###,###,##0',Q_FLUXOValor24.asfloat ) ;
    end
    else  if Q_FLUXOFolha.asinteger = 4 then
    begin
       value := '';
    end ;



    //PERIODO DO CLIENTE
    if FRelFluxoCaixaFilt.CheckBox1.Checked then
    begin
        if (Q_FLUXOFolha.asinteger = 1) and (StrToInt(FRelFluxoCaixaFilt.edtPeriodo.Text) = 5) then
        begin
             Q_AUX.close ;
             Q_AUX.sql.clear;
             Q_AUX.sql.add(' select sum(valor1+valor2+valor3+valor4+valor5) as XVALOR ');
            if FRelFluxoCaixaFilt.RadioGroup1.ItemIndex = 1 then
               Q_AUX.sql.add(' from FLUXO WHERE Conta = ' + '''' + Q_FLUXOConta.asstring + '''' )
            else
               Q_AUX.sql.add(' from FLUXO WHERE substring(CONTA,1,2) = ' + '''' + Q_FLUXOConta.asstring + '''' );
             Q_AUX.Open ;
             value := formatfloat('###,###,##0',Q_AUX.fieldbyname('XVALOR').asfloat ) ;
        end;
        if (Q_FLUXOFolha.asinteger = 2) and (StrToInt(FRelFluxoCaixaFilt.edtPeriodo.Text) = 14)  then
        begin
             Q_AUX.close ;
             Q_AUX.sql.clear;
             Q_AUX.sql.add(' select sum(valor1+valor2+valor3+valor4+valor5+valor6+valor7+valor8+valor9+valor10+valor11+valor12+valor13+valor14) as XVALOR ');
            if FRelFluxoCaixaFilt.RadioGroup1.ItemIndex = 1 then
               Q_AUX.sql.add(' from FLUXO WHERE Conta = ' + '''' + Q_FLUXOConta.asstring + '''' )
            else
               Q_AUX.sql.add(' from FLUXO WHERE substring(CONTA,1,2) = ' + '''' + Q_FLUXOConta.asstring + '''' );
             Q_AUX.Open ;
             value := formatfloat('###,###,##0',Q_AUX.fieldbyname('XVALOR').asfloat ) ;
        end;

         if (Q_FLUXOFolha.asinteger = 3) and (StrToInt(FRelFluxoCaixaFilt.edtPeriodo.Text) >= 23)  then
        begin
             Q_AUX.close ;
             Q_AUX.sql.clear;
             Q_AUX.sql.add(' select sum(valor1+valor2+valor3+valor4+valor5+valor6+valor7+valor8+valor9+valor10+valor11+valor12+valor13+valor14+valor15+valor16+valor17+valor18+valor19+valor20+valor21' );
             Q_AUX.sql.Add('+valor22+valor23) as XVALOR ');
            if FRelFluxoCaixaFilt.RadioGroup1.ItemIndex = 1 then
               Q_AUX.sql.add(' from FLUXO WHERE Conta = ' + '''' + Q_FLUXOConta.asstring + '''' )
            else
               Q_AUX.sql.add(' from FLUXO WHERE substring(CONTA,1,2) = ' + '''' + Q_FLUXOConta.asstring + '''' );
             Q_AUX.Open ;
             value := formatfloat('###,###,##0',Q_AUX.fieldbyname('XVALOR').asfloat ) ;
        end;

        if (Q_FLUXOFolha.asinteger = 4) and (StrToInt(FRelFluxoCaixaFilt.edtPeriodo.Text) = 31)  then
        begin

               value := '';
        end;
    end;     //END IF CHECKBOX


    //procurar os valores totais quebra TT
    if (Q_FLUXOConta.asstring = '1') or ( Q_FLUXOConta.asstring = '2')
    or ( Q_FLUXOConta.asstring = '3') or ( Q_FLUXOConta.asstring = '4') then
    begin
        with qrTotaisTT do
        begin
            close;
            sql.Clear;
            if Q_FLUXOFolha.AsInteger = 1 then
               sql.Add('Select valor6 as valor ')
            else if Q_FLUXOFolha.AsInteger = 2 then
               sql.Add('Select valor15 as valor ')
            else if Q_FLUXOFolha.AsInteger = 3 then
               sql.Add('Select valor24 as valor ');
            sql.Add('from fluxo where quebra = ''TT'' and conta = ' + QuotedStr(Q_FLUXOConta.asstring));
            if  Q_FLUXOFolha.AsInteger <> 4 then
            begin
               Open;
               value := formatfloat('###,###,##0',qrTotaisTT.FieldByName('Valor').AsFloat ) ;
            end;
        end;

    end;

           if (FRelFluxoCaixaFilt.RadioGroup3.ItemIndex = 1) and (Q_FLUXOFolha.Value = 2) then
         Value := '';

       if (FRelFluxoCaixaFilt.RadioGroup3.ItemIndex = 2) and (Q_FLUXOFolha.Value = 4) then
         Value := '';



         IF FRelFluxoCaixaFilt.CheckBox1.Checked then
    BEGIN
        //APAGA VALORES CASO NAO SEJA NECESSÁRIO VISUALIZAR
        if (Q_FLUXOFolha.asinteger = 1) and (StrToInt(FRelFluxoCaixaFilt.edtPeriodo.Text) <= 4)  then
        begin
               value := '' ;
        end;
        if (Q_FLUXOFolha.asinteger = 2) and (StrToInt(FRelFluxoCaixaFilt.edtPeriodo.Text) <= 13)  then
        begin
               value := '' ;
        end;
        if (Q_FLUXOFolha.asinteger = 3) and (StrToInt(FRelFluxoCaixaFilt.edtPeriodo.Text) <= 22)  then
        begin
               value := '' ;
        end;
        if (Q_FLUXOFolha.asinteger = 4) and (StrToInt(FRelFluxoCaixaFilt.edtPeriodo.Text) <= 31)  then
        begin
               value := '' ;
        end;
    end;





            //totais gerais do relatorio
    if (FRelFluxoCaixaFilt.CheckBox1.Checked = True) and (p_rel = 5) and (Q_FLUXOFolha.Value = 1) then
    begin
        if (Q_FLUXOConta.asstring = '1') then
        begin
            Value := FRelFluxoCaixaFilt.Edit1.Text;
        end;
        if (Q_FLUXOConta.asstring = '2') then
        begin
            with qrAux3 do
            begin
                Close;
                SQL.Clear;
                sql.Add('select ');
                sql.Add('valor1+valor2+valor3+valor4+valor5');
                sql.Add('as total from fluxo where quebra = ''TT'' ');
                sql.Add('and conta  = ' + QuotedStr('2'));
                Open;
            end;
            fEntradas := qrAux3.FieldByName('Total').AsFloat;
            Value := FormatFloat('###,###,##0', fEntradas);
        end;
        if (Q_FLUXOConta.asstring = '3') then
        begin
            with qrAux3 do
            begin
                Close;
                SQL.Clear;
                sql.Add('select ');
                sql.Add('valor1+valor2+valor3+valor4+valor5');
                sql.Add('as total from fluxo where quebra = ''TT'' ');
                sql.Add('and conta  = ' + QuotedStr('3'));
                Open;
            end;
            fSaidas := qrAux3.FieldByName('Total').AsFloat;
            Value := FormatFloat('###,###,##0', fSaidas);
        end;

        if (Q_FLUXOConta.asstring = '4') then
        begin
               if FRelFluxoCaixaFilt.RadioGroup2.ItemIndex = 0 then
                  Value := FormatFloat('###,###,##0',StrToFloat(FRelFluxoCaixaFilt.Edit1.Text) + fEntradas - fSaidas)
               else
                  Value := FormatFloat('###,###,##0',StrToFloat(FRelFluxoCaixaFilt.Edit1.Text) + fEntradas + fSaidas);
        end;

    end;

    if (FRelFluxoCaixaFilt.CheckBox1.Checked = True) and (p_rel = 14) and (Q_FLUXOFolha.Value = 2) then
    begin
        if (Q_FLUXOConta.asstring = '1') then
        begin
            Value := FRelFluxoCaixaFilt.Edit1.Text;
        end;
        if (Q_FLUXOConta.asstring = '2') then
        begin
            with qrAux3 do
            begin
                Close;
                SQL.Clear;
                sql.Add('select ');
                sql.Add('valor1+valor2+valor3+valor4+valor5+valor6+valor7+valor8+valor9+valor10+valor11+valor12 ');
                sql.Add('+ valor13+valor14 as total from fluxo where quebra = ''TT'' ');
                sql.Add('and conta  = ' + QuotedStr('2'));
                Open;
            end;
            fEntradas := qrAux3.FieldByName('Total').AsFloat;
            Value := FormatFloat('###,###,##0', fEntradas);
        end;
        if (Q_FLUXOConta.asstring = '3') then
        begin
            with qrAux3 do
            begin
                Close;
                SQL.Clear;
                sql.Add('select ');
                sql.Add('valor1+valor2+valor3+valor4+valor5+valor6+valor7+valor8+valor9+valor10+valor11+valor12 ');
                sql.Add(' +valor13 +valor14 as total from fluxo where quebra = ''TT'' ');
                sql.Add('and conta  = ' + QuotedStr('3'));
                Open;
            end;
            fSaidas := qrAux3.FieldByName('Total').AsFloat;
            Value := FormatFloat('###,###,##0', fSaidas);
        end;

        if (Q_FLUXOConta.asstring = '4') then
        begin
               if FRelFluxoCaixaFilt.RadioGroup2.ItemIndex = 0 then
                  Value := FormatFloat('###,###,##0',StrToFloat(FRelFluxoCaixaFilt.Edit1.Text) + fEntradas - fSaidas)
               else
                  Value := FormatFloat('###,###,##0',StrToFloat(FRelFluxoCaixaFilt.Edit1.Text) + fEntradas + fSaidas);
        end;
    end;


    if (FRelFluxoCaixaFilt.CheckBox1.Checked) and (p_rel = 23) and (Q_FLUXOFolha.Value = 3) then
    begin
        if (Q_FLUXOConta.asstring = '1') then
        begin
            Value := FRelFluxoCaixaFilt.Edit1.Text;
        end;
        if (Q_FLUXOConta.asstring = '2') then
        begin
            with qrAux3 do
            begin
                Close;
                SQL.Clear;
                sql.Add( 'select ' );
                sql.Add('valor1+valor2+valor3+valor4+valor5+valor6+valor7+valor8+valor9+valor10+valor11+valor12+valor13+valor14+valor15+valor16+valor17+valor18+valor19+valor20 ');
                sql.Add('+valor21+valor22+valor23 as total from fluxo where quebra = ''TT'' ');
                sql.Add('and conta  = ' + QuotedStr('2'));
                Open;
            end;
            fEntradas := qrAux3.FieldByName('Total').AsFloat;
            Value := FormatFloat('###,###,##0', fEntradas);
        end;
        if (Q_FLUXOConta.asstring = '3') then
        begin
            with qrAux3 do
            begin
                Close;
                SQL.Clear;
                sql.Add( 'select ' );
                sql.Add('valor1+valor2+valor3+valor4+valor5+valor6+valor7+valor8+valor9+valor10+valor11+valor12+valor13+valor14+valor15+valor16+valor17+valor18+valor19+valor20 ');
                sql.Add('+ valor21+valor22+valor23 as total from fluxo where quebra = ''TT'' ');
                sql.Add('and conta  = ' + QuotedStr('3'));
                Open;
            end;
            fSaidas := qrAux3.FieldByName('Total').AsFloat;
            Value := FormatFloat('###,###,##0', fSaidas);
        end;

        if (Q_FLUXOConta.asstring = '4') then
        begin
               if FRelFluxoCaixaFilt.RadioGroup2.ItemIndex = 0 then
                  Value := FormatFloat('###,###,##0',StrToFloat(FRelFluxoCaixaFilt.Edit1.Text) + fEntradas - fSaidas)
               else
                  Value := FormatFloat('###,###,##0',StrToFloat(FRelFluxoCaixaFilt.Edit1.Text) + fEntradas + fSaidas);
        end;
    end;











end;

procedure TFRelFluxoCaixaCompleto.QRDBText8Print(sender: TObject; var Value: String);
var p_rel : Integer;
begin

    p_rel := StrToInt(FRelFluxoCaixaFilt.Edtperiodo.Text);


    
    if Q_FLUXOFolha.asinteger = 1 then
    begin
       Total := Total + Q_FLUXOvalor7.asfloat ;
       Tot1 := tot1 + Q_FLUXOvalor7.asfloat ;
       value := formatfloat('###,###,##0',Q_FLUXOValor7.asfloat ) ;
    end
    else  if Q_FLUXOFolha.asinteger = 2 then
    begin
      IF FRelFluxoCaixaFilt.RadioGroup3.ItemIndex = 1 THEN
       BEGIN
           value := '';
       end
       else
       begin
         Total := Total + Q_FLUXOvalor16.asfloat ;
         Tot1 := tot1 + Q_FLUXOvalor16.asfloat ;
         value := formatfloat('###,###,##0',Q_FLUXOValor16.asfloat ) ;
       end;
    end
    else  if Q_FLUXOFolha.asinteger = 3 then
    begin
       Total := Total + Q_FLUXOvalor25.asfloat ;
       Tot1 := tot1 + Q_FLUXOvalor25.asfloat ;
       value := formatfloat('###,###,##0',Q_FLUXOValor25.asfloat ) ;
    end
    else  if Q_FLUXOFolha.asinteger = 4 then
    begin
       value := '';
    end ;

    //PERIODO DO CLIENTE
    if FRelFluxoCaixaFilt.CheckBox1.Checked then
    begin
        if (Q_FLUXOFolha.asinteger = 1) and (StrToInt(FRelFluxoCaixaFilt.edtPeriodo.Text) = 6) then
        begin
             Q_AUX.close ;
             Q_AUX.sql.clear;
             Q_AUX.sql.add(' select sum(valor1+valor2+valor3+valor4+valor5+valor6) as XVALOR ');
            if FRelFluxoCaixaFilt.RadioGroup1.ItemIndex = 1 then
               Q_AUX.sql.add(' from FLUXO WHERE Conta = ' + '''' + Q_FLUXOConta.asstring + '''' )
            else
               Q_AUX.sql.add(' from FLUXO WHERE substring(CONTA,1,2) = ' + '''' + Q_FLUXOConta.asstring + '''' );
             Q_AUX.Open ;
             value := formatfloat('###,###,##0',Q_AUX.fieldbyname('XVALOR').asfloat ) ;
        end;
        if (Q_FLUXOFolha.asinteger = 2) and (StrToInt(FRelFluxoCaixaFilt.edtPeriodo.Text) = 15)  then
        begin
             Q_AUX.close ;
             Q_AUX.sql.clear;
             Q_AUX.sql.add(' select sum(valor1+valor2+valor3+valor4+valor5+valor6+valor7+valor8+valor9+valor10+valor11+valor12+valor13+valor14+valor15) as XVALOR ');
            if FRelFluxoCaixaFilt.RadioGroup1.ItemIndex = 1 then
               Q_AUX.sql.add(' from FLUXO WHERE Conta = ' + '''' + Q_FLUXOConta.asstring + '''' )
            else
               Q_AUX.sql.add(' from FLUXO WHERE substring(CONTA,1,2) = ' + '''' + Q_FLUXOConta.asstring + '''' );
             Q_AUX.Open ;
             value := formatfloat('###,###,##0',Q_AUX.fieldbyname('XVALOR').asfloat ) ;
        end;

         if (Q_FLUXOFolha.asinteger = 3) and (StrToInt(FRelFluxoCaixaFilt.edtPeriodo.Text) >= 24)  then
        begin
             Q_AUX.close ;
             Q_AUX.sql.clear;
             Q_AUX.sql.add(' select sum(valor1+valor2+valor3+valor4+valor5+valor6+valor7+valor8+valor9+valor10+valor11+valor12+valor13+valor14+valor15+valor16+valor17+valor18+valor19+valor20+valor21' );
             Q_AUX.sql.Add('+valor22+valor23+valor24) as XVALOR ');
            if FRelFluxoCaixaFilt.RadioGroup1.ItemIndex = 1 then
               Q_AUX.sql.add(' from FLUXO WHERE Conta = ' + '''' + Q_FLUXOConta.asstring + '''' )
            else
               Q_AUX.sql.add(' from FLUXO WHERE substring(CONTA,1,2) = ' + '''' + Q_FLUXOConta.asstring + '''' );
             Q_AUX.Open ;
             value := formatfloat('###,###,##0',Q_AUX.fieldbyname('XVALOR').asfloat ) ;
        end;

        if (Q_FLUXOFolha.asinteger = 4)  then
        begin

               value := '';
        end;
    end;     //END IF CHECKBOX



    //procurar os valores totais quebra TT
    if (Q_FLUXOConta.asstring = '1') or ( Q_FLUXOConta.asstring = '2')
    or ( Q_FLUXOConta.asstring = '3') or ( Q_FLUXOConta.asstring = '4') then
    begin
        with qrTotaisTT do
        begin
            close;
            sql.Clear;
            if Q_FLUXOFolha.AsInteger = 1 then
               sql.Add('Select valor7 as valor ')
            else if Q_FLUXOFolha.AsInteger = 2 then
               sql.Add('Select valor16 as valor ')
            else if Q_FLUXOFolha.AsInteger = 3 then
               sql.Add('Select valor25 as valor ') ;
            sql.Add('from fluxo where quebra = ''TT'' and conta = ' + QuotedStr(Q_FLUXOConta.asstring));
            if  Q_FLUXOFolha.AsInteger <> 4 then
            begin
               Open;
               value := formatfloat('###,###,##0',qrTotaisTT.FieldByName('Valor').AsFloat ) ;
            end;
        end;

    end;


       if (FRelFluxoCaixaFilt.RadioGroup3.ItemIndex = 1) and (Q_FLUXOFolha.Value = 2) then
         Value := '';

       if (FRelFluxoCaixaFilt.RadioGroup3.ItemIndex = 2) and (Q_FLUXOFolha.Value = 4) then
         Value := '';


          IF FRelFluxoCaixaFilt.CheckBox1.Checked then
    BEGIN
        //APAGA VALORES CASO NAO SEJA NECESSÁRIO VISUALIZAR
        if (Q_FLUXOFolha.asinteger = 1) and (StrToInt(FRelFluxoCaixaFilt.edtPeriodo.Text) <= 5)  then
        begin
               value := '' ;
        end;
        if (Q_FLUXOFolha.asinteger = 2) and (StrToInt(FRelFluxoCaixaFilt.edtPeriodo.Text) <= 14)  then
        begin
               value := '' ;
        end;
        if (Q_FLUXOFolha.asinteger = 3) and (StrToInt(FRelFluxoCaixaFilt.edtPeriodo.Text) <= 23)  then
        begin
               value := '' ;
        end;
        if (Q_FLUXOFolha.asinteger = 4)  then
        begin
               value := '' ;
        end;
    end;









      //totais gerais do relatorio
    if (FRelFluxoCaixaFilt.CheckBox1.Checked = True) and (p_rel = 6) and (Q_FLUXOFolha.Value = 1) then
    begin
        if (Q_FLUXOConta.asstring = '1') then
        begin
            Value := FRelFluxoCaixaFilt.Edit1.Text;
        end;
        if (Q_FLUXOConta.asstring = '2') then
        begin
            with qrAux3 do
            begin
                Close;
                SQL.Clear;
                sql.Add('select ');
                sql.Add('valor1+valor2+valor3+valor4+valor5+valor6');
                sql.Add('as total from fluxo where quebra = ''TT'' ');
                sql.Add('and conta  = ' + QuotedStr('2'));
                Open;
            end;
            fEntradas := qrAux3.FieldByName('Total').AsFloat;
            Value := FormatFloat('###,###,##0', fEntradas);
        end;
        if (Q_FLUXOConta.asstring = '3') then
        begin
            with qrAux3 do
            begin
                Close;
                SQL.Clear;
                sql.Add('select ');
                sql.Add('valor1+valor2+valor3+valor4+valor5+valor6');
                sql.Add('as total from fluxo where quebra = ''TT'' ');
                sql.Add('and conta  = ' + QuotedStr('3'));
                Open;
            end;
            fSaidas := qrAux3.FieldByName('Total').AsFloat;
            Value := FormatFloat('###,###,##0', fSaidas);
        end;

        if (Q_FLUXOConta.asstring = '4') then
        begin
               if FRelFluxoCaixaFilt.RadioGroup2.ItemIndex = 0 then
                  Value := FormatFloat('###,###,##0',StrToFloat(FRelFluxoCaixaFilt.Edit1.Text) + fEntradas - fSaidas)
               else
                  Value := FormatFloat('###,###,##0',StrToFloat(FRelFluxoCaixaFilt.Edit1.Text) + fEntradas + fSaidas);
        end;

    end;

    if (FRelFluxoCaixaFilt.CheckBox1.Checked = True) and (p_rel = 15) and (Q_FLUXOFolha.Value = 2) then
    begin
        if (Q_FLUXOConta.asstring = '1') then
        begin
            Value := FRelFluxoCaixaFilt.Edit1.Text;
        end;
        if (Q_FLUXOConta.asstring = '2') then
        begin
            with qrAux3 do
            begin
                Close;
                SQL.Clear;
                sql.Add('select ');
                sql.Add('valor1+valor2+valor3+valor4+valor5+valor6+valor7+valor8+valor9+valor10+valor11+valor12 ');
                sql.Add('+ valor13+valor14+valor15 as total from fluxo where quebra = ''TT'' ');
                sql.Add('and conta  = ' + QuotedStr('2'));
                Open;
            end;
            fEntradas := qrAux3.FieldByName('Total').AsFloat;
            Value := FormatFloat('###,###,##0', fEntradas);
        end;
        if (Q_FLUXOConta.asstring = '3') then
        begin
            with qrAux3 do
            begin
                Close;
                SQL.Clear;
                sql.Add('select ');
                sql.Add('valor1+valor2+valor3+valor4+valor5+valor6+valor7+valor8+valor9+valor10+valor11+valor12 ');
                sql.Add(' +valor13 +valor14+valor15 as total from fluxo where quebra = ''TT'' ');
                sql.Add('and conta  = ' + QuotedStr('3'));
                Open;
            end;
            fSaidas := qrAux3.FieldByName('Total').AsFloat;
            Value := FormatFloat('###,###,##0', fSaidas);
        end;

        if (Q_FLUXOConta.asstring = '4') then
        begin
               if FRelFluxoCaixaFilt.RadioGroup2.ItemIndex = 0 then
                  Value := FormatFloat('###,###,##0',StrToFloat(FRelFluxoCaixaFilt.Edit1.Text) + fEntradas - fSaidas)
               else
                  Value := FormatFloat('###,###,##0',StrToFloat(FRelFluxoCaixaFilt.Edit1.Text) + fEntradas + fSaidas);
        end;
    end;


    if (FRelFluxoCaixaFilt.CheckBox1.Checked) and (p_rel = 24) and (Q_FLUXOFolha.Value = 3) then
    begin
        if (Q_FLUXOConta.asstring = '1') then
        begin
            Value := FRelFluxoCaixaFilt.Edit1.Text;
        end;
        if (Q_FLUXOConta.asstring = '2') then
        begin
            with qrAux3 do
            begin
                Close;
                SQL.Clear;
                sql.Add( 'select ' );
                sql.Add('valor1+valor2+valor3+valor4+valor5+valor6+valor7+valor8+valor9+valor10+valor11+valor12+valor13+valor14+valor15+valor16+valor17+valor18+valor19+valor20 ');
                sql.Add('+valor21+valor22+valor23+valor24 as total from fluxo where quebra = ''TT'' ');
                sql.Add('and conta  = ' + QuotedStr('2'));
                Open;
            end;
            fEntradas := qrAux3.FieldByName('Total').AsFloat;
            Value := FormatFloat('###,###,##0', fEntradas);
        end;
        if (Q_FLUXOConta.asstring = '3') then
        begin
            with qrAux3 do
            begin
                Close;
                SQL.Clear;
                sql.Add( 'select ' );
                sql.Add('valor1+valor2+valor3+valor4+valor5+valor6+valor7+valor8+valor9+valor10+valor11+valor12+valor13+valor14+valor15+valor16+valor17+valor18+valor19+valor20 ');
                sql.Add('+ valor21+valor22+valor23+valor24 as total from fluxo where quebra = ''TT'' ');
                sql.Add('and conta  = ' + QuotedStr('3'));
                Open;
            end;
            fSaidas := qrAux3.FieldByName('Total').AsFloat;
            Value := FormatFloat('###,###,##0', fSaidas);
        end;

        if (Q_FLUXOConta.asstring = '4') then
        begin
               if FRelFluxoCaixaFilt.RadioGroup2.ItemIndex = 0 then
                  Value := FormatFloat('###,###,##0',StrToFloat(FRelFluxoCaixaFilt.Edit1.Text) + fEntradas - fSaidas)
               else
                  Value := FormatFloat('###,###,##0',StrToFloat(FRelFluxoCaixaFilt.Edit1.Text) + fEntradas + fSaidas);
        end;
    end;








end;

procedure TFRelFluxoCaixaCompleto.QRDBText9Print(sender: TObject; var Value: String);
var p_rel : Integer;
begin

    p_rel := StrToInt(FRelFluxoCaixaFilt.Edtperiodo.Text);



    
    if Q_FLUXOFolha.asinteger = 1 then
    begin
       Total := Total + Q_FLUXOvalor8.asfloat ;
       Tot1 := tot1 + Q_FLUXOvalor8.asfloat ;
       value := formatfloat('###,###,##0',Q_FLUXOValor8.asfloat ) ;
    end
    else  if Q_FLUXOFolha.asinteger = 2 then
    begin
      IF FRelFluxoCaixaFilt.RadioGroup3.ItemIndex = 1 THEN
       BEGIN
           value := '';
       end
       else
       begin
         Total := Total + Q_FLUXOvalor17.asfloat ;
         Tot1 := tot1 + Q_FLUXOvalor17.asfloat ;
         value := formatfloat('###,###,##0',Q_FLUXOValor17.asfloat ) ;
       end;
    end
    else  if Q_FLUXOFolha.asinteger = 3 then
    begin
       Total := Total + Q_FLUXOvalor26.asfloat ;
       Tot1 := tot1 + Q_FLUXOvalor26.asfloat ;
       value := formatfloat('###,###,##0',Q_FLUXOValor26.asfloat ) ;
    end
    else  if Q_FLUXOFolha.asinteger = 4 then
    begin
       value := '';
    end ;

    //PERIODO DO CLIENTE
    if FRelFluxoCaixaFilt.CheckBox1.Checked then
    begin
        if (Q_FLUXOFolha.asinteger = 1) and (StrToInt(FRelFluxoCaixaFilt.edtPeriodo.Text) = 7) then
        begin
             Q_AUX.close ;
             Q_AUX.sql.clear;
             Q_AUX.sql.add(' select sum(valor1+valor2+valor3+valor4+valor5+valor6+valor7) as XVALOR ');
            if FRelFluxoCaixaFilt.RadioGroup1.ItemIndex = 1 then
               Q_AUX.sql.add(' from FLUXO WHERE Conta = ' + '''' + Q_FLUXOConta.asstring + '''' )
            else
               Q_AUX.sql.add(' from FLUXO WHERE substring(CONTA,1,2) = ' + '''' + Q_FLUXOConta.asstring + '''' );
             Q_AUX.Open ;
             value := formatfloat('###,###,##0',Q_AUX.fieldbyname('XVALOR').asfloat ) ;
        end;
        if (Q_FLUXOFolha.asinteger = 2) and (StrToInt(FRelFluxoCaixaFilt.edtPeriodo.Text) = 16)  then
        begin
             Q_AUX.close ;
             Q_AUX.sql.clear;
             Q_AUX.sql.add(' select sum(valor1+valor2+valor3+valor4+valor5+valor6+valor7+valor8+valor9+valor10+valor11+valor12+valor13+valor14+valor15+valor16) as XVALOR ');
            if FRelFluxoCaixaFilt.RadioGroup1.ItemIndex = 1 then
               Q_AUX.sql.add(' from FLUXO WHERE Conta = ' + '''' + Q_FLUXOConta.asstring + '''' )
            else
               Q_AUX.sql.add(' from FLUXO WHERE substring(CONTA,1,2) = ' + '''' + Q_FLUXOConta.asstring + '''' );
             Q_AUX.Open ;
             value := formatfloat('###,###,##0',Q_AUX.fieldbyname('XVALOR').asfloat ) ;
        end;

         if (Q_FLUXOFolha.asinteger = 3) and (StrToInt(FRelFluxoCaixaFilt.edtPeriodo.Text) >= 25)  then
        begin
             Q_AUX.close ;
             Q_AUX.sql.clear;
             Q_AUX.sql.add(' select sum(valor1+valor2+valor3+valor4+valor5+valor6+valor7+valor8+valor9+valor10+valor11+valor12+valor13+valor14+valor15+valor16+valor17+valor18+valor19+valor20+valor21' );
             Q_AUX.sql.Add('+valor22+valor23+valor24+valor25) as XVALOR ');
            if FRelFluxoCaixaFilt.RadioGroup1.ItemIndex = 1 then
               Q_AUX.sql.add(' from FLUXO WHERE Conta = ' + '''' + Q_FLUXOConta.asstring + '''' )
            else
               Q_AUX.sql.add(' from FLUXO WHERE substring(CONTA,1,2) = ' + '''' + Q_FLUXOConta.asstring + '''' );
             Q_AUX.Open ;
             value := formatfloat('###,###,##0',Q_AUX.fieldbyname('XVALOR').asfloat ) ;
        end;

        if (Q_FLUXOFolha.asinteger = 4)  then
        begin

               value := '';
        end;
    end;     //END IF CHECKBOX


    //procurar os valores totais quebra TT
    if (Q_FLUXOConta.asstring = '1') or ( Q_FLUXOConta.asstring = '2')
    or ( Q_FLUXOConta.asstring = '3') or ( Q_FLUXOConta.asstring = '4') then
    begin
        with qrTotaisTT do
        begin
            close;
            sql.Clear;
            if Q_FLUXOFolha.AsInteger = 1 then
               sql.Add('Select valor8 as valor ')
            else if Q_FLUXOFolha.AsInteger = 2 then
               sql.Add('Select valor17 as valor ')
            else if Q_FLUXOFolha.AsInteger = 3 then
               sql.Add('Select valor26 as valor ');
            sql.Add('from fluxo where quebra = ''TT'' and conta = ' + QuotedStr(Q_FLUXOConta.asstring));
            if  Q_FLUXOFolha.AsInteger <> 4 then
            begin
               Open;
               value := formatfloat('###,###,##0',qrTotaisTT.FieldByName('Valor').AsFloat ) ;
            end;
        end;

    end;

           if (FRelFluxoCaixaFilt.RadioGroup3.ItemIndex = 1) and (Q_FLUXOFolha.Value = 2) then
         Value := '';

       if (FRelFluxoCaixaFilt.RadioGroup3.ItemIndex = 2) and (Q_FLUXOFolha.Value = 4) then
         Value := '';



    IF FRelFluxoCaixaFilt.CheckBox1.Checked then
    BEGIN
        //APAGA VALORES CASO NAO SEJA NECESSÁRIO VISUALIZAR
        if (Q_FLUXOFolha.asinteger = 1) and (StrToInt(FRelFluxoCaixaFilt.edtPeriodo.Text) <= 6)  then
        begin
               value := '' ;
        end;
        if (Q_FLUXOFolha.asinteger = 2) and (StrToInt(FRelFluxoCaixaFilt.edtPeriodo.Text) <= 15)  then
        begin
               value := '' ;
        end;
        if (Q_FLUXOFolha.asinteger = 3) and (StrToInt(FRelFluxoCaixaFilt.edtPeriodo.Text) <= 24)  then
        begin
               value := '' ;
        end;
        if (Q_FLUXOFolha.asinteger = 4)  then
        begin
               value := '' ;
        end;
    end;




         //totais gerais do relatorio
    if (FRelFluxoCaixaFilt.CheckBox1.Checked = True) and (p_rel = 7) and (Q_FLUXOFolha.Value = 1) then
    begin
        if (Q_FLUXOConta.asstring = '1') then
        begin
            Value := FRelFluxoCaixaFilt.Edit1.Text;
        end;
        if (Q_FLUXOConta.asstring = '2') then
        begin
            with qrAux3 do
            begin
                Close;
                SQL.Clear;
                sql.Add('select ');
                sql.Add('valor1+valor2+valor3+valor4+valor5+valor6+valor7');
                sql.Add('as total from fluxo where quebra = ''TT'' ');
                sql.Add('and conta  = ' + QuotedStr('2'));
                Open;
            end;
            fEntradas := qrAux3.FieldByName('Total').AsFloat;
            Value := FormatFloat('###,###,##0', fEntradas);
        end;
        if (Q_FLUXOConta.asstring = '3') then
        begin
            with qrAux3 do
            begin
                Close;
                SQL.Clear;
                sql.Add('select ');
                sql.Add('valor1+valor2+valor3+valor4+valor5+valor6+valor7');
                sql.Add('as total from fluxo where quebra = ''TT'' ');
                sql.Add('and conta  = ' + QuotedStr('3'));
                Open;
            end;
            fSaidas := qrAux3.FieldByName('Total').AsFloat;
            Value := FormatFloat('###,###,##0', fSaidas);
        end;

        if (Q_FLUXOConta.asstring = '4') then
        begin
               if FRelFluxoCaixaFilt.RadioGroup2.ItemIndex = 0 then
                  Value := FormatFloat('###,###,##0',StrToFloat(FRelFluxoCaixaFilt.Edit1.Text) + fEntradas - fSaidas)
               else
                  Value := FormatFloat('###,###,##0',StrToFloat(FRelFluxoCaixaFilt.Edit1.Text) + fEntradas + fSaidas);
        end;

    end;

    if (FRelFluxoCaixaFilt.CheckBox1.Checked = True) and (p_rel = 16) and (Q_FLUXOFolha.Value = 2) then
    begin
        if (Q_FLUXOConta.asstring = '1') then
        begin
            Value := FRelFluxoCaixaFilt.Edit1.Text;
        end;
        if (Q_FLUXOConta.asstring = '2') then
        begin
            with qrAux3 do
            begin
                Close;
                SQL.Clear;
                sql.Add('select ');
                sql.Add('valor1+valor2+valor3+valor4+valor5+valor6+valor7+valor8+valor9+valor10+valor11+valor12 ');
                sql.Add('+ valor13+valor14+valor15+valor16 as total from fluxo where quebra = ''TT'' ');
                sql.Add('and conta  = ' + QuotedStr('2'));
                Open;
            end;
            fEntradas := qrAux3.FieldByName('Total').AsFloat;
            Value := FormatFloat('###,###,##0', fEntradas);
        end;
        if (Q_FLUXOConta.asstring = '3') then
        begin
            with qrAux3 do
            begin
                Close;
                SQL.Clear;
                sql.Add('select ');
                sql.Add('valor1+valor2+valor3+valor4+valor5+valor6+valor7+valor8+valor9+valor10+valor11+valor12 ');
                sql.Add(' +valor13 +valor14+valor15+valor16 as total from fluxo where quebra = ''TT'' ');
                sql.Add('and conta  = ' + QuotedStr('3'));
                Open;
            end;
            fSaidas := qrAux3.FieldByName('Total').AsFloat;
            Value := FormatFloat('###,###,##0', fSaidas);
        end;

        if (Q_FLUXOConta.asstring = '4') then
        begin
               if FRelFluxoCaixaFilt.RadioGroup2.ItemIndex = 0 then
                  Value := FormatFloat('###,###,##0',StrToFloat(FRelFluxoCaixaFilt.Edit1.Text) + fEntradas - fSaidas)
               else
                  Value := FormatFloat('###,###,##0',StrToFloat(FRelFluxoCaixaFilt.Edit1.Text) + fEntradas + fSaidas);
        end;
    end;


    if (FRelFluxoCaixaFilt.CheckBox1.Checked) and (p_rel = 25) and (Q_FLUXOFolha.Value = 3) then
    begin
        if (Q_FLUXOConta.asstring = '1') then
        begin
            Value := FRelFluxoCaixaFilt.Edit1.Text;
        end;
        if (Q_FLUXOConta.asstring = '2') then
        begin
            with qrAux3 do
            begin
                Close;
                SQL.Clear;
                sql.Add( 'select ' );
                sql.Add('valor1+valor2+valor3+valor4+valor5+valor6+valor7+valor8+valor9+valor10+valor11+valor12+valor13+valor14+valor15+valor16+valor17+valor18+valor19+valor20 ');
                sql.Add('+valor21+valor22+valor23+valor24+valor25 as total from fluxo where quebra = ''TT'' ');
                sql.Add('and conta  = ' + QuotedStr('2'));
                Open;
            end;
            fEntradas := qrAux3.FieldByName('Total').AsFloat;
            Value := FormatFloat('###,###,##0', fEntradas);
        end;
        if (Q_FLUXOConta.asstring = '3') then
        begin
            with qrAux3 do
            begin
                Close;
                SQL.Clear;
                sql.Add( 'select ' );
                sql.Add('valor1+valor2+valor3+valor4+valor5+valor6+valor7+valor8+valor9+valor10+valor11+valor12+valor13+valor14+valor15+valor16+valor17+valor18+valor19+valor20 ');
                sql.Add('+ valor21+valor22+valor23+valor24+valor25 as total from fluxo where quebra = ''TT'' ');
                sql.Add('and conta  = ' + QuotedStr('3'));
                Open;
            end;
            fSaidas := qrAux3.FieldByName('Total').AsFloat;
            Value := FormatFloat('###,###,##0', fSaidas);
        end;

        if (Q_FLUXOConta.asstring = '4') then
        begin
               if FRelFluxoCaixaFilt.RadioGroup2.ItemIndex = 0 then
                  Value := FormatFloat('###,###,##0',StrToFloat(FRelFluxoCaixaFilt.Edit1.Text) + fEntradas - fSaidas)
               else
                  Value := FormatFloat('###,###,##0',StrToFloat(FRelFluxoCaixaFilt.Edit1.Text) + fEntradas + fSaidas);
        end;
    end;












end;

procedure TFRelFluxoCaixaCompleto.QRDBText10Print(sender: TObject; var Value: String);
var fTotal : Double;
p_rel : Integer;
begin

    p_rel := StrToInt(FRelFluxoCaixaFilt.Edtperiodo.Text);

    if FRelFluxoCaixaFilt.RadioGroup3.ItemIndex = 0 then
    begin
        fTotal := Q_FLUXOValor1.Value+Q_FLUXOValor2.Value+Q_FLUXOValor3.Value+
        Q_FLUXOValor4.Value+Q_FLUXOValor5.Value+Q_FLUXOValor6.Value+
        Q_FLUXOValor7.Value+Q_FLUXOValor8.Value;
        value := formatfloat('###,###,##0',fTotal ) ;
    end
    else
    begin
        if Q_FLUXOFolha.asinteger = 1 then
        begin
           Total := Total + Q_FLUXOvalor9.asfloat ;
           Tot1 := tot1 + Q_FLUXOvalor9.asfloat ;
           value := formatfloat('###,###,##0',Q_FLUXOValor9.asfloat ) ;
        end
        else  if Q_FLUXOFolha.asinteger = 2 then
        begin
          IF FRelFluxoCaixaFilt.RadioGroup3.ItemIndex = 1 THEN
           BEGIN
               value := '';
           end
           else
           begin
             Total := Total + Q_FLUXOvalor18.asfloat ;
             Tot1 := tot1 + Q_FLUXOvalor18.asfloat ;
             value := formatfloat('###,###,##0',Q_FLUXOValor18.asfloat ) ;
           end;
        end
        else  if Q_FLUXOFolha.asinteger = 3 then
        begin
           Total := Total + Q_FLUXOvalor27.asfloat ;
           Tot1 := tot1 + Q_FLUXOvalor27.asfloat ;
           value := formatfloat('###,###,##0',Q_FLUXOValor27.asfloat ) ;
        end
        else  if Q_FLUXOFolha.asinteger = 4 then
        begin
           value := '';
        end ;
    end;


    //PERIODO DO CLIENTE
    if FRelFluxoCaixaFilt.CheckBox1.Checked then
    begin
        if (Q_FLUXOFolha.asinteger = 1) and (StrToInt(FRelFluxoCaixaFilt.edtPeriodo.Text) = 8) then
        begin
             Q_AUX.close ;
             Q_AUX.sql.clear;
             Q_AUX.sql.add(' select sum(valor1+valor2+valor3+valor4+valor5+valor6+valor7+valor8) as XVALOR ');
            if FRelFluxoCaixaFilt.RadioGroup1.ItemIndex = 1 then
               Q_AUX.sql.add(' from FLUXO WHERE Conta = ' + '''' + Q_FLUXOConta.asstring + '''' )
            else
               Q_AUX.sql.add(' from FLUXO WHERE substring(CONTA,1,2) = ' + '''' + Q_FLUXOConta.asstring + '''' );
             Q_AUX.Open ;
             value := formatfloat('###,###,##0',Q_AUX.fieldbyname('XVALOR').asfloat ) ;
        end;
        if (Q_FLUXOFolha.asinteger = 2) and (StrToInt(FRelFluxoCaixaFilt.edtPeriodo.Text) = 17)  then
        begin
             Q_AUX.close ;
             Q_AUX.sql.clear;
             Q_AUX.sql.add(' select sum(valor1+valor2+valor3+valor4+valor5+valor6+valor7+valor8+valor9+valor10+valor11+valor12+valor13+valor14+valor15+valor16+valor17) as XVALOR ');
            if FRelFluxoCaixaFilt.RadioGroup1.ItemIndex = 1 then
               Q_AUX.sql.add(' from FLUXO WHERE Conta = ' + '''' + Q_FLUXOConta.asstring + '''' )
            else
               Q_AUX.sql.add(' from FLUXO WHERE substring(CONTA,1,2) = ' + '''' + Q_FLUXOConta.asstring + '''' );
             Q_AUX.Open ;
             value := formatfloat('###,###,##0',Q_AUX.fieldbyname('XVALOR').asfloat ) ;
        end;

         if (Q_FLUXOFolha.asinteger = 3) and (StrToInt(FRelFluxoCaixaFilt.edtPeriodo.Text) >= 26)  then
        begin
             Q_AUX.close ;
             Q_AUX.sql.clear;
             Q_AUX.sql.add(' select sum(valor1+valor2+valor3+valor4+valor5+valor6+valor7+valor8+valor9+valor10+valor11+valor12+valor13+valor14+valor15+valor16+valor17+valor18+valor19+valor20+valor21' );
             Q_AUX.sql.Add('+valor22+valor23+valor24+valor25+valor26) as XVALOR ');
            if FRelFluxoCaixaFilt.RadioGroup1.ItemIndex = 1 then
               Q_AUX.sql.add(' from FLUXO WHERE Conta = ' + '''' + Q_FLUXOConta.asstring + '''' )
            else
               Q_AUX.sql.add(' from FLUXO WHERE substring(CONTA,1,2) = ' + '''' + Q_FLUXOConta.asstring + '''' );
             Q_AUX.Open ;
             value := formatfloat('###,###,##0',Q_AUX.fieldbyname('XVALOR').asfloat ) ;
        end;

        if (Q_FLUXOFolha.asinteger = 4)  then
        begin

               value := '';
        end;
    end;     //END IF CHECKBOX


 //procurar os valores totais quebra TT

 if FRelFluxoCaixaFilt.RadioGroup3.ItemIndex <> 0 then
 begin
    if (Q_FLUXOConta.asstring = '1') or ( Q_FLUXOConta.asstring = '2')
    or ( Q_FLUXOConta.asstring = '3') or ( Q_FLUXOConta.asstring = '4') then
    begin
        with qrTotaisTT do
        begin
            close;
            sql.Clear;
            if Q_FLUXOFolha.AsInteger = 1 then
               sql.Add('Select valor9 as valor ')
            else if Q_FLUXOFolha.AsInteger = 2 then
               sql.Add('Select valor18 as valor ')
            else if Q_FLUXOFolha.AsInteger = 3 then
               sql.Add('Select valor27 as valor ');
            sql.Add('from fluxo where quebra = ''TT'' and conta = ' + QuotedStr(Q_FLUXOConta.asstring));
            if  Q_FLUXOFolha.AsInteger <> 4 then
            begin
               Open;
               value := formatfloat('###,###,##0',qrTotaisTT.FieldByName('Valor').AsFloat ) ;
            end;
        end;

    end;
 end
 else //como não vai ter mais folhas buscamos os totais
 begin
     if   Q_FLUXOCONTA.AsString = '1' then
     begin
         Value :=  formatfloat('###,###,##0',StrToFloat(FRelFluxoCaixaFilt.Edit1.Text) ) ;
     end;


     if   Q_FLUXOCONTA.AsString = '2' then
     begin
         fEntradas := Q_FLUXOValor1.Value+Q_FLUXOValor2.Value+Q_FLUXOValor3.Value+Q_FLUXOValor4.Value+Q_FLUXOValor5.Value+Q_FLUXOValor6.Value+Q_FLUXOValor7.Value+Q_FLUXOValor8.Value;
         Value :=  formatfloat('###,###,##0',fEntradas ) ;
     end;

     if   Q_FLUXOCONTA.AsString = '3' then
     begin
         fSaidas := Q_FLUXOValor1.Value+Q_FLUXOValor2.Value+Q_FLUXOValor3.Value+Q_FLUXOValor4.Value+Q_FLUXOValor5.Value+Q_FLUXOValor6.Value+Q_FLUXOValor7.Value+Q_FLUXOValor8.Value;
         Value :=  formatfloat('###,###,##0',fSaidas ) ;
     end;

     if   Q_FLUXOCONTA.AsString = '4' then
     begin
         Value :=  formatfloat('###,###,##0',(StrToFloat(FRelFluxoCaixaFilt.Edit1.Text) + fEntradas) - fSaidas ) ;
     end;

 end;

              if (FRelFluxoCaixaFilt.RadioGroup3.ItemIndex = 1) and (Q_FLUXOFolha.Value = 2) then
         Value := '';

       if (FRelFluxoCaixaFilt.RadioGroup3.ItemIndex = 2) and (Q_FLUXOFolha.Value = 4) then
         Value := '';


 //COMENTADA POR MIGUEL
{    if FRelFluxoCaixaFilt.Radiogroup3.itemindex = 1 then
    begin
        Total := Total + Q_FLUXOvalor9.asfloat
    end
    else
    begin
        if (Q_FLUXOQuebra.asstring = '4' ) and (Q_FLUXOConta.asstring = '1') then
        begin
                value := formatfloat('###,###,##0.00',strtofloat(FRelFluxocaixaFilt.edit1.text)) ;
        end
        else
        begin
                if (Q_FLUXOQuebra.asstring = '4' ) and (Q_FLUXOConta.asstring = '4') then
                begin
                      //Daniel Tirei esse --->
                      value := formatfloat('###,###,##0.00',FRelFluxocaixaFilt.caixaInicial) ;
                      {If FRelFluxoCaixaFilt.RadioGroup3.ItemIndex = 0 then
                              value := formatfloat('###,###,##0.00',Q_FLUXOvalor8.asfloat)
                      Else
                              value := formatfloat('###,###,##0.00',Q_FLUXOvalor12.asfloat) ;
                      }

                {end
                else
                begin
                        Q_AUX.close ;
                        Q_AUX.sql.clear;
                        Q_AUX.sql.add(' SELECT VALOR1+VALOR2+VALOR3+VALOR4+VALOR5+VALOR6+VALOR7+VALOR8+VALOR9+VALOR10+VALOR11+VALOR12 AS XVALOR ' );
                        Q_AUX.sql.add(' FROM FLUXO WHERE CONTA = ' +'''' +Q_FLUXOConta.asstring + '''' ) ;
                        Q_AUX.Open ;
                        value := formatfloat('###,###,##0.00',Q_AUX.fieldbyname('XVALOR').asfloat ) ;
                        TotGeral := TotGeral + Q_AUX.fieldbyname('XVALOR').asfloat ;
                end ;
        end ;
    end ;}



    IF FRelFluxoCaixaFilt.CheckBox1.Checked then
    BEGIN
        //APAGA VALORES CASO NAO SEJA NECESSÁRIO VISUALIZAR
        if (Q_FLUXOFolha.asinteger = 1) and (StrToInt(FRelFluxoCaixaFilt.edtPeriodo.Text) <= 7)  then
        begin
               value := '' ;
        end;
        if (Q_FLUXOFolha.asinteger = 2) and (StrToInt(FRelFluxoCaixaFilt.edtPeriodo.Text) <= 16)  then
        begin
               value := '' ;
        end;
        if (Q_FLUXOFolha.asinteger = 3) and (StrToInt(FRelFluxoCaixaFilt.edtPeriodo.Text) <= 25)  then
        begin
               value := '' ;
        end;
        if (Q_FLUXOFolha.asinteger = 4)  then
        begin
               value := '' ;
        end;
    end;






            //totais gerais do relatorio
    if (FRelFluxoCaixaFilt.CheckBox1.Checked = True) and (p_rel = 8) and (Q_FLUXOFolha.Value = 1) then
    begin
        if (Q_FLUXOConta.asstring = '1') then
        begin
            Value := FRelFluxoCaixaFilt.Edit1.Text;
        end;
        if (Q_FLUXOConta.asstring = '2') then
        begin
            with qrAux3 do
            begin
                Close;
                SQL.Clear;
                sql.Add('select ');
                sql.Add('valor1+valor2+valor3+valor4+valor5+valor6+valor7+valor8');
                sql.Add('as total from fluxo where quebra = ''TT'' ');
                sql.Add('and conta  = ' + QuotedStr('2'));
                Open;
            end;
            fEntradas := qrAux3.FieldByName('Total').AsFloat;
            Value := FormatFloat('###,###,##0', fEntradas);
        end;
        if (Q_FLUXOConta.asstring = '3') then
        begin
            with qrAux3 do
            begin
                Close;
                SQL.Clear;
                sql.Add('select ');
                sql.Add('valor1+valor2+valor3+valor4+valor5+valor6+valor7+valor8');
                sql.Add('as total from fluxo where quebra = ''TT'' ');
                sql.Add('and conta  = ' + QuotedStr('3'));
                Open;
            end;
            fSaidas := qrAux3.FieldByName('Total').AsFloat;
            Value := FormatFloat('###,###,##0', fSaidas);
        end;

        if (Q_FLUXOConta.asstring = '4') then
        begin
               if FRelFluxoCaixaFilt.RadioGroup2.ItemIndex = 0 then
                  Value := FormatFloat('###,###,##0',StrToFloat(FRelFluxoCaixaFilt.Edit1.Text) + fEntradas - fSaidas)
               else
                  Value := FormatFloat('###,###,##0',StrToFloat(FRelFluxoCaixaFilt.Edit1.Text) + fEntradas + fSaidas);
        end;

    end;

    if (FRelFluxoCaixaFilt.CheckBox1.Checked = True) and (p_rel = 17) and (Q_FLUXOFolha.Value = 2) then
    begin
        if (Q_FLUXOConta.asstring = '1') then
        begin
            Value := FRelFluxoCaixaFilt.Edit1.Text;
        end;
        if (Q_FLUXOConta.asstring = '2') then
        begin
            with qrAux3 do
            begin
                Close;
                SQL.Clear;
                sql.Add('select ');
                sql.Add('valor1+valor2+valor3+valor4+valor5+valor6+valor7+valor8+valor9+valor10+valor11+valor12 ');
                sql.Add('+ valor13+valor14+valor15+valor16+valor17 as total from fluxo where quebra = ''TT'' ');
                sql.Add('and conta  = ' + QuotedStr('2'));
                Open;
            end;
            fEntradas := qrAux3.FieldByName('Total').AsFloat;
            Value := FormatFloat('###,###,##0', fEntradas);
        end;
        if (Q_FLUXOConta.asstring = '3') then
        begin
            with qrAux3 do
            begin
                Close;
                SQL.Clear;
                sql.Add('select ');
                sql.Add('valor1+valor2+valor3+valor4+valor5+valor6+valor7+valor8+valor9+valor10+valor11+valor12 ');
                sql.Add(' +valor13 +valor14+valor15+valor16+valor17 as total from fluxo where quebra = ''TT'' ');
                sql.Add('and conta  = ' + QuotedStr('3'));
                Open;
            end;
            fSaidas := qrAux3.FieldByName('Total').AsFloat;
            Value := FormatFloat('###,###,##0', fSaidas);
        end;

        if (Q_FLUXOConta.asstring = '4') then
        begin
               if FRelFluxoCaixaFilt.RadioGroup2.ItemIndex = 0 then
                  Value := FormatFloat('###,###,##0',StrToFloat(FRelFluxoCaixaFilt.Edit1.Text) + fEntradas - fSaidas)
               else
                  Value := FormatFloat('###,###,##0',StrToFloat(FRelFluxoCaixaFilt.Edit1.Text) + fEntradas + fSaidas);
        end;
    end;


    if (FRelFluxoCaixaFilt.CheckBox1.Checked) and (p_rel = 26) and (Q_FLUXOFolha.Value = 3) then
    begin
        if (Q_FLUXOConta.asstring = '1') then
        begin
            Value := FRelFluxoCaixaFilt.Edit1.Text;
        end;
        if (Q_FLUXOConta.asstring = '2') then
        begin
            with qrAux3 do
            begin
                Close;
                SQL.Clear;
                sql.Add( 'select ' );
                sql.Add('valor1+valor2+valor3+valor4+valor5+valor6+valor7+valor8+valor9+valor10+valor11+valor12+valor13+valor14+valor15+valor16+valor17+valor18+valor19+valor20 ');
                sql.Add('+valor21+valor22+valor23+valor24+valor25+valor26 as total from fluxo where quebra = ''TT'' ');
                sql.Add('and conta  = ' + QuotedStr('2'));
                Open;
            end;
            fEntradas := qrAux3.FieldByName('Total').AsFloat;
            Value := FormatFloat('###,###,##0', fEntradas);
        end;
        if (Q_FLUXOConta.asstring = '3') then
        begin
            with qrAux3 do
            begin
                Close;
                SQL.Clear;
                sql.Add( 'select ' );
                sql.Add('valor1+valor2+valor3+valor4+valor5+valor6+valor7+valor8+valor9+valor10+valor11+valor12+valor13+valor14+valor15+valor16+valor17+valor18+valor19+valor20 ');
                sql.Add('+ valor21+valor22+valor23+valor24+valor25+valor26 as total from fluxo where quebra = ''TT'' ');
                sql.Add('and conta  = ' + QuotedStr('3'));
                Open;
            end;
            fSaidas := qrAux3.FieldByName('Total').AsFloat;
            Value := FormatFloat('###,###,##0', fSaidas);
        end;

        if (Q_FLUXOConta.asstring = '4') then
        begin
               if FRelFluxoCaixaFilt.RadioGroup2.ItemIndex = 0 then
                  Value := FormatFloat('###,###,##0',StrToFloat(FRelFluxoCaixaFilt.Edit1.Text) + fEntradas - fSaidas)
               else
                  Value := FormatFloat('###,###,##0',StrToFloat(FRelFluxoCaixaFilt.Edit1.Text) + fEntradas + fSaidas);
        end;
    end;








end;

procedure TFRelFluxoCaixaCompleto.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    { if Q_FLUXOFolha.asinteger = 1 then begin
        QRDBText2.enabled  := true ;
        QRDBText3.enabled  := true ;
        QRDBText4.enabled  := true ;
        QRDBText5.enabled  := true ;
        QRDBText6.enabled  := true ;
        QRDBText7.enabled  := true ;
        QRDBText8.enabled  := true ;
        QRDBText9.enabled  := true ;
        QRDBText10.enabled := true ;
        qrexpr4.enabled := true ;
        qrexpr5.enabled := true ;
        qrexpr6.enabled := true ;
        qrexpr7.enabled := true ;
        qrexpr8.enabled := true ;
        qrexpr9.enabled := true ;
(*
        QRDBText2.datafield := 'Valor1' ;
        QRDBText3.datafield := 'Valor2' ;
        QRDBText4.datafield := 'Valor3' ;
        QRDBText5.datafield := 'Valor4' ;
        QRDBText6.datafield := 'Valor5' ;
        QRDBText7.datafield := 'Valor6' ;
        QRDBText8.datafield := 'Valor7' ;
        QRDBText9.datafield := 'Valor8' ;
        QRDBText10.datafield := 'Valor9' ;
   *)

     end else begin

        QRDBText2.enabled  := true ;
        QRDBText3.enabled  := true ;
        QRDBText4.enabled  := true ;
        QRDBText5.enabled  := true ;
        QRDBText6.enabled  := false ;
        QRDBText7.enabled  := false ;
        QRDBText8.enabled  := False ;
        QRDBText9.enabled  := False ;
        QRDBText10.enabled := False ;
//        qrexpr4.enabled := False ;
        qrexpr5.enabled := False ;
        qrexpr6.enabled := False ;
        qrexpr7.enabled := False ;
        qrexpr8.enabled := False ;
        qrexpr9.enabled := False ;

(*
        QRDBText2.datafield := 'Valor9' ;
        QRDBText3.datafield := 'Valor10' ;
        QRDBText4.datafield := 'Valor11' ;
        QRDBText5.datafield := 'Valor12' ;
        QRDBText6.datafield := 'Valor12' ;
 *)
                           
     end ;    }


end;

procedure TFRelFluxoCaixaCompleto.QRLabel6Print(sender: TObject; var Value: String);
begin

  if Q_FLUXOQuebra.asstring = '1E' then value := 'Total de Entradas Operacionais' ;
  if Q_FLUXOQuebra.asstring = '1S' then value := 'Total de Saidas Operacionais' ;

  if Q_FLUXOQuebra.asstring = '2E' then value := 'Total de Entradas Não Operacionais' ;
  if Q_FLUXOQuebra.asstring = '2S' then value := 'Total de Saidas Não Operacionais' ;

  if Q_FLUXOQuebra.asstring = '3E' then value := 'Total de Entrada Financeiras' ;
  if Q_FLUXOQuebra.asstring = '3S' then value := 'Total de Saidas Financeiras';


end;

procedure TFRelFluxoCaixaCompleto.QRExpr1Print(sender: TObject;
  var Value: String);
begin
  //value := formatfloat('###,###,##0.00',Tot1) ;
  //TOT1 := 0 ;


   if  Q_FLUXOFolha.asinteger = 1 then begin
       Q_AUX.close ;
       Q_AUX.sql.clear;
       Q_AUX.sql.add('SELECT		SUM(VALOR1) as XVALOR');
       Q_AUX.sql.add('FROM		FLUXO ');
        if Q_FLUXOQuebra.asstring = '1E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '1E' + '''');
        if Q_FLUXOQuebra.asstring = '1S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '1S' + '''');
        if Q_FLUXOQuebra.asstring = '2E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '2E' + '''');
        if Q_FLUXOQuebra.asstring = '2S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '2S' + '''');
        if Q_FLUXOQuebra.asstring = '3E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '3E' + '''');
        if Q_FLUXOQuebra.asstring = '3S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '3S' + '''');
       Q_AUX.sql.add('AND FOLHA = ' + inttostr(1));
       Q_AUX.Open ;

       value :=  formatfloat('###,###,##0',Q_AUX.fieldbyname('XVALOR').asfloat) ;
   end
   else if Q_FLUXOFolha.asinteger = 2 then
   begin
       Q_AUX.close ;
       Q_AUX.sql.clear;
       Q_AUX.sql.add('SELECT		SUM(VALOR10) as XVALOR');
       Q_AUX.sql.add('FROM		FLUXO ');
       if Q_FLUXOQuebra.asstring = '1E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '1E' + '''');
       if Q_FLUXOQuebra.asstring = '1S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '1S' + '''');
       if Q_FLUXOQuebra.asstring = '2E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '2E' + '''');
       if Q_FLUXOQuebra.asstring = '2S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '2S' + '''');
       if Q_FLUXOQuebra.asstring = '3E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '3E' + '''');
       if Q_FLUXOQuebra.asstring = '3S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '3S' + '''');
       Q_AUX.sql.add('AND FOLHA = ' + inttostr(2));
       Q_AUX.Open ;

       value :=  formatfloat('###,###,##0',Q_AUX.fieldbyname('XVALOR').asfloat) ;
   end
   else if Q_FLUXOFolha.asinteger = 3 then
   begin
       Q_AUX.close ;
       Q_AUX.sql.clear;
       Q_AUX.sql.add('SELECT		SUM(VALOR19) as XVALOR');
       Q_AUX.sql.add('FROM		FLUXO ');
       if Q_FLUXOQuebra.asstring = '1E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '1E' + '''');
       if Q_FLUXOQuebra.asstring = '1S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '1S' + '''');
       if Q_FLUXOQuebra.asstring = '2E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '2E' + '''');
       if Q_FLUXOQuebra.asstring = '2S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '2S' + '''');
       if Q_FLUXOQuebra.asstring = '3E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '3E' + '''');
       if Q_FLUXOQuebra.asstring = '3S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '3S' + '''');
       Q_AUX.sql.add('AND FOLHA = ' + inttostr(3));
       Q_AUX.Open ;

       value :=  formatfloat('###,###,##0',Q_AUX.fieldbyname('XVALOR').asfloat) ;
   end
   else if Q_FLUXOFolha.asinteger = 4 then
   begin
       Q_AUX.close ;
       Q_AUX.sql.clear;
       Q_AUX.sql.add('SELECT		SUM(VALOR28) as XVALOR');
       Q_AUX.sql.add('FROM		FLUXO ');
       if Q_FLUXOQuebra.asstring = '1E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '1E' + '''');
       if Q_FLUXOQuebra.asstring = '1S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '1S' + '''');
       if Q_FLUXOQuebra.asstring = '2E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '2E' + '''');
       if Q_FLUXOQuebra.asstring = '2S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '2S' + '''');
       if Q_FLUXOQuebra.asstring = '3E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '3E' + '''');
       if Q_FLUXOQuebra.asstring = '3S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '3S' + '''');
       Q_AUX.sql.add('AND FOLHA = ' + inttostr(4));
       Q_AUX.Open ;

       value :=  formatfloat('###,###,##0',Q_AUX.fieldbyname('XVALOR').asfloat) ;
   end ;


end;

procedure TFRelFluxoCaixaCompleto.QRExpr2Print(sender: TObject;
  var Value: String);
begin
   if  Q_FLUXOFolha.asinteger = 1 then begin
       Q_AUX.close ;
       Q_AUX.sql.clear;
       Q_AUX.sql.add('SELECT		SUM(VALOR2) as XVALOR');
       Q_AUX.sql.add('FROM		FLUXO ');
        if Q_FLUXOQuebra.asstring = '1E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '1E' + '''');
        if Q_FLUXOQuebra.asstring = '1S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '1S' + '''');
        if Q_FLUXOQuebra.asstring = '2E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '2E' + '''');
        if Q_FLUXOQuebra.asstring = '2S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '2S' + '''');
        if Q_FLUXOQuebra.asstring = '3E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '3E' + '''');
        if Q_FLUXOQuebra.asstring = '3S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '3S' + '''');
       Q_AUX.sql.add('AND FOLHA = ' + inttostr(1));
       Q_AUX.Open ;

       value :=  formatfloat('###,###,##0',Q_AUX.fieldbyname('XVALOR').asfloat) ;
   end
   else if Q_FLUXOFolha.asinteger = 2 then
   begin
       Q_AUX.close ;
       Q_AUX.sql.clear;
       Q_AUX.sql.add('SELECT		SUM(VALOR11) as XVALOR');
       Q_AUX.sql.add('FROM		FLUXO ');
       if Q_FLUXOQuebra.asstring = '1E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '1E' + '''');
       if Q_FLUXOQuebra.asstring = '1S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '1S' + '''');
       if Q_FLUXOQuebra.asstring = '2E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '2E' + '''');
       if Q_FLUXOQuebra.asstring = '2S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '2S' + '''');
       if Q_FLUXOQuebra.asstring = '3E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '3E' + '''');
       if Q_FLUXOQuebra.asstring = '3S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '3S' + '''');
       Q_AUX.sql.add('AND FOLHA = ' + inttostr(2));
       Q_AUX.Open ;

       value :=  formatfloat('###,###,##0',Q_AUX.fieldbyname('XVALOR').asfloat) ;
   end
   else if Q_FLUXOFolha.asinteger = 3 then
   begin
       Q_AUX.close ;
       Q_AUX.sql.clear;
       Q_AUX.sql.add('SELECT		SUM(VALOR20) as XVALOR');
       Q_AUX.sql.add('FROM		FLUXO ');
       if Q_FLUXOQuebra.asstring = '1E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '1E' + '''');
       if Q_FLUXOQuebra.asstring = '1S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '1S' + '''');
       if Q_FLUXOQuebra.asstring = '2E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '2E' + '''');
       if Q_FLUXOQuebra.asstring = '2S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '2S' + '''');
       if Q_FLUXOQuebra.asstring = '3E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '3E' + '''');
       if Q_FLUXOQuebra.asstring = '3S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '3S' + '''');
       Q_AUX.sql.add('AND FOLHA = ' + inttostr(3));
       Q_AUX.Open ;

       value :=  formatfloat('###,###,##0',Q_AUX.fieldbyname('XVALOR').asfloat) ;
   end
   else if Q_FLUXOFolha.asinteger = 4 then
   begin
       Q_AUX.close ;
       Q_AUX.sql.clear;
       Q_AUX.sql.add('SELECT		SUM(VALOR29) as XVALOR');
       Q_AUX.sql.add('FROM		FLUXO ');
       if Q_FLUXOQuebra.asstring = '1E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '1E' + '''');
       if Q_FLUXOQuebra.asstring = '1S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '1S' + '''');
       if Q_FLUXOQuebra.asstring = '2E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '2E' + '''');
       if Q_FLUXOQuebra.asstring = '2S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '2S' + '''');
       if Q_FLUXOQuebra.asstring = '3E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '3E' + '''');
       if Q_FLUXOQuebra.asstring = '3S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '3S' + '''');
       Q_AUX.sql.add('AND FOLHA = ' + inttostr(4));
       Q_AUX.Open ;

       value :=  formatfloat('###,###,##0',Q_AUX.fieldbyname('XVALOR').asfloat) ;
   end ;

end;

procedure TFRelFluxoCaixaCompleto.QRExpr3Print(sender: TObject;
  var Value: String);
begin

   if  Q_FLUXOFolha.asinteger = 1 then begin
       Q_AUX.close ;
       Q_AUX.sql.clear;
       Q_AUX.sql.add('SELECT		SUM(VALOR3) as XVALOR');
       Q_AUX.sql.add('FROM		FLUXO ');
        if Q_FLUXOQuebra.asstring = '1E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '1E' + '''');
        if Q_FLUXOQuebra.asstring = '1S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '1S' + '''');
        if Q_FLUXOQuebra.asstring = '2E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '2E' + '''');
        if Q_FLUXOQuebra.asstring = '2S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '2S' + '''');
        if Q_FLUXOQuebra.asstring = '3E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '3E' + '''');
        if Q_FLUXOQuebra.asstring = '3S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '3S' + '''');
       Q_AUX.sql.add('AND FOLHA = ' + inttostr(1));
       Q_AUX.Open ;

       value :=  formatfloat('###,###,##0',Q_AUX.fieldbyname('XVALOR').asfloat) ;
   end
   else if Q_FLUXOFolha.asinteger = 2 then
   begin
       Q_AUX.close ;
       Q_AUX.sql.clear;
       Q_AUX.sql.add('SELECT		SUM(VALOR12) as XVALOR');
       Q_AUX.sql.add('FROM		FLUXO ');
       if Q_FLUXOQuebra.asstring = '1E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '1E' + '''');
       if Q_FLUXOQuebra.asstring = '1S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '1S' + '''');
       if Q_FLUXOQuebra.asstring = '2E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '2E' + '''');
       if Q_FLUXOQuebra.asstring = '2S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '2S' + '''');
       if Q_FLUXOQuebra.asstring = '3E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '3E' + '''');
       if Q_FLUXOQuebra.asstring = '3S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '3S' + '''');
       Q_AUX.sql.add('AND FOLHA = ' + inttostr(2));
       Q_AUX.Open ;

       value :=  formatfloat('###,###,##0',Q_AUX.fieldbyname('XVALOR').asfloat) ;
   end
   else if Q_FLUXOFolha.asinteger = 3 then
   begin
       Q_AUX.close ;
       Q_AUX.sql.clear;
       Q_AUX.sql.add('SELECT		SUM(VALOR21) as XVALOR');
       Q_AUX.sql.add('FROM		FLUXO ');
       if Q_FLUXOQuebra.asstring = '1E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '1E' + '''');
       if Q_FLUXOQuebra.asstring = '1S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '1S' + '''');
       if Q_FLUXOQuebra.asstring = '2E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '2E' + '''');
       if Q_FLUXOQuebra.asstring = '2S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '2S' + '''');
       if Q_FLUXOQuebra.asstring = '3E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '3E' + '''');
       if Q_FLUXOQuebra.asstring = '3S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '3S' + '''');
       Q_AUX.sql.add('AND FOLHA = ' + inttostr(3));
       Q_AUX.Open ;

       value :=  formatfloat('###,###,##0',Q_AUX.fieldbyname('XVALOR').asfloat) ;
   end
   else if Q_FLUXOFolha.asinteger = 4 then
   begin
       Q_AUX.close ;
       Q_AUX.sql.clear;
       Q_AUX.sql.add('SELECT		SUM(VALOR30) as XVALOR');
       Q_AUX.sql.add('FROM		FLUXO ');
       if Q_FLUXOQuebra.asstring = '1E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '1E' + '''');
       if Q_FLUXOQuebra.asstring = '1S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '1S' + '''');
       if Q_FLUXOQuebra.asstring = '2E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '2E' + '''');
       if Q_FLUXOQuebra.asstring = '2S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '2S' + '''');
       if Q_FLUXOQuebra.asstring = '3E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '3E' + '''');
       if Q_FLUXOQuebra.asstring = '3S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '3S' + '''');
       Q_AUX.sql.add('AND FOLHA = ' + inttostr(4));
       Q_AUX.Open ;

       value :=  formatfloat('###,###,##0',Q_AUX.fieldbyname('XVALOR').asfloat) ;
   end ;


end;

procedure TFRelFluxoCaixaCompleto.QRExpr4Print(sender: TObject;
  var Value: String);
begin
   if  Q_FLUXOFolha.asinteger = 1 then begin
       Q_AUX.close ;
       Q_AUX.sql.clear;
       Q_AUX.sql.add('SELECT		SUM(VALOR4) as XVALOR');
       Q_AUX.sql.add('FROM		FLUXO ');
        if Q_FLUXOQuebra.asstring = '1E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '1E' + '''');
        if Q_FLUXOQuebra.asstring = '1S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '1S' + '''');
        if Q_FLUXOQuebra.asstring = '2E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '2E' + '''');
        if Q_FLUXOQuebra.asstring = '2S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '2S' + '''');
        if Q_FLUXOQuebra.asstring = '3E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '3E' + '''');
        if Q_FLUXOQuebra.asstring = '3S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '3S' + '''');
       Q_AUX.sql.add('AND FOLHA = ' + inttostr(1));
       Q_AUX.Open ;

       value :=  formatfloat('###,###,##0',Q_AUX.fieldbyname('XVALOR').asfloat) ;
   end
   else if Q_FLUXOFolha.asinteger = 2 then
   begin

       if FRelFluxoCaixaFilt.RadioGroup3.ItemIndex = 1 then
       begin
           Q_AUX.close ;
           Q_AUX.sql.clear;
           Q_AUX.sql.add('select sum(valor1)+sum(valor2)+sum(valor3)+sum(valor4)+sum(valor5)+sum(valor6)+');
           Q_AUX.sql.add('sum(valor7)+sum(valor8)+sum(valor9)+sum(valor10)+sum(valor11)+sum(valor12) as XVALOR');
           Q_AUX.sql.add('FROM		FLUXO ');
           if Q_FLUXOQuebra.asstring = '1E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '1E' + '''');
           if Q_FLUXOQuebra.asstring = '1S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '1S' + '''');
           if Q_FLUXOQuebra.asstring = '2E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '2E' + '''');
           if Q_FLUXOQuebra.asstring = '2S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '2S' + '''');
           if Q_FLUXOQuebra.asstring = '3E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '3E' + '''');
           if Q_FLUXOQuebra.asstring = '3S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '3S' + '''');
           //Q_AUX.sql.add('AND FOLHA = ' + inttostr(2));
           Q_AUX.Open ;
           value :=  formatfloat('###,###,##0',Q_AUX.fieldbyname('XVALOR').asfloat) ;
       end
       else if  FRelFluxoCaixaFilt.RadioGroup3.ItemIndex = 2 then
       begin
           Q_AUX.close ;
           Q_AUX.sql.clear;
           Q_AUX.sql.add('SELECT		SUM(VALOR13) as XVALOR');
           Q_AUX.sql.add('FROM		FLUXO ');
           if Q_FLUXOQuebra.asstring = '1E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '1E' + '''');
           if Q_FLUXOQuebra.asstring = '1S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '1S' + '''');
           if Q_FLUXOQuebra.asstring = '2E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '2E' + '''');
           if Q_FLUXOQuebra.asstring = '2S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '2S' + '''');
           if Q_FLUXOQuebra.asstring = '3E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '3E' + '''');
           if Q_FLUXOQuebra.asstring = '3S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '3S' + '''');
           Q_AUX.sql.add('AND FOLHA = ' + inttostr(2));
           Q_AUX.Open ;
           value :=  formatfloat('###,###,##0',Q_AUX.fieldbyname('XVALOR').asfloat) ;
       end;

   end
   else if Q_FLUXOFolha.asinteger = 3 then
   begin
       Q_AUX.close ;
       Q_AUX.sql.clear;
       Q_AUX.sql.add('SELECT		SUM(VALOR22) as XVALOR');
       Q_AUX.sql.add('FROM		FLUXO ');
       if Q_FLUXOQuebra.asstring = '1E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '1E' + '''');
       if Q_FLUXOQuebra.asstring = '1S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '1S' + '''');
       if Q_FLUXOQuebra.asstring = '2E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '2E' + '''');
       if Q_FLUXOQuebra.asstring = '2S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '2S' + '''');
       if Q_FLUXOQuebra.asstring = '3E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '3E' + '''');
       if Q_FLUXOQuebra.asstring = '3S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '3S' + '''');
       Q_AUX.sql.add('AND FOLHA = ' + inttostr(3));
       Q_AUX.Open ;

       value :=  formatfloat('###,###,##0',Q_AUX.fieldbyname('XVALOR').asfloat) ;
   end
   else if Q_FLUXOFolha.asinteger = 4 then
   begin
       Q_AUX.close ;
       Q_AUX.sql.clear;
       Q_AUX.sql.add('SELECT		SUM(VALOR31) as XVALOR');
       Q_AUX.sql.add('FROM		FLUXO ');
       if Q_FLUXOQuebra.asstring = '1E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '1E' + '''');
       if Q_FLUXOQuebra.asstring = '1S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '1S' + '''');
       if Q_FLUXOQuebra.asstring = '2E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '2E' + '''');
       if Q_FLUXOQuebra.asstring = '2S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '2S' + '''');
       if Q_FLUXOQuebra.asstring = '3E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '3E' + '''');
       if Q_FLUXOQuebra.asstring = '3S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '3S' + '''');
       Q_AUX.sql.add('AND FOLHA = ' + inttostr(4));
       Q_AUX.Open ;

       value :=  formatfloat('###,###,##0',Q_AUX.fieldbyname('XVALOR').asfloat) ;
   end ;


end;

procedure TFRelFluxoCaixaCompleto.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
  var p_rel : Integer;
begin
   if FRelFluxoCaixaFilt.Radiogroup3.itemindex = 0 then
   begin

         Q_AUX.close ;
         Q_AUX.sql.clear;
         Q_AUX.sql.add('SELECT		SUM(VALOR4) as XVALOR');
         Q_AUX.sql.add('FROM		FLUXO ');
          if Q_FLUXOQuebra.asstring = '1E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '1E' + '''');
          if Q_FLUXOQuebra.asstring = '1S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '1S' + '''');
          if Q_FLUXOQuebra.asstring = '2E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '2E' + '''');
          if Q_FLUXOQuebra.asstring = '2S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '2S' + '''');
          if Q_FLUXOQuebra.asstring = '3E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '3E' + '''');
          if Q_FLUXOQuebra.asstring = '3S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '3S' + '''');
         Q_AUX.sql.add('AND FOLHA = ' + inttostr(1));
         Q_AUX.Open ;


        Q_AUX.SQL.Clear;
        Q_AUX.SQL.Add('SELECT SUM(VALOR1+VALOR2+VALOR3+VALOR4+VALOR5+VALOR6+VALOR7+VALOR8+VALOR9+VALOR10+VALOR11+VALOR12) AS TOT');
        Q_AUX.SQL.Add('FROM FLUXO WHERE QUEBRA = ' +'''' +Q_FLUXOQUEBRA.AsString +'''');
        Q_AUX.Open;


        QRLabel7.Enabled := true;
        QRLabel7.Caption := formatfloat('###,###,#0',Q_AUX.fieldbyname('TOT').asfloat);
        QRExpr9.Enabled := false;
        
   end
   else
   begin
        QRLabel7.enabled := false;
   end;

   lbT1.Enabled := False;
   lbT2.Enabled := False;
   lbT3.Enabled := False;
   lbT4.Enabled := False;
   lbT5.Enabled := False;
   lbT6.Enabled := False;
   lbT7.Enabled := False;
   lbT8.Enabled := False;
   


   if FRelFluxoCaixaFilt.CheckBox1.Checked then
   begin
       p_rel := StrToInt(FRelFluxoCaixaFilt.edtPeriodo.Text);
       if  Q_FLUXOFolha.asinteger = 1 then
       begin
            if p_rel = 1 then
            begin

                Q_AUX.SQL.Clear;
                Q_AUX.SQL.Add('SELECT SUM(VALOR1) AS TOT');
                Q_AUX.SQL.Add('FROM FLUXO WHERE QUEBRA = ' +'''' +Q_FLUXOQUEBRA.AsString +'''');
                Q_AUX.Open;
                lbT2.Enabled := True;
                lbT2.Caption := formatfloat('###,###,#0',Q_AUX.fieldbyname('TOT').asfloat);
                QRExpr2.Enabled := False;
                QRExpr3.Enabled := False;
                QRExpr4.Enabled := False;
                QRExpr5.Enabled := False;
                QRExpr6.Enabled := False;
                QRExpr7.Enabled := False;
                QRExpr8.Enabled := False;
                QRExpr9.Enabled := False;
                QRLabel7.Enabled := False;
            end;
            if p_rel = 2 then
            begin
                Q_AUX.SQL.Clear;
                Q_AUX.SQL.Add('SELECT SUM(VALOR1+valor2) AS TOT');
                Q_AUX.SQL.Add('FROM FLUXO WHERE QUEBRA = ' +'''' +Q_FLUXOQUEBRA.AsString +'''');
                Q_AUX.Open;
                lbT3.Enabled := True;
                lbT3.Caption := formatfloat('###,###,#0',Q_AUX.fieldbyname('TOT').asfloat);
                QRExpr3.Enabled := False;
                QRExpr4.Enabled := False;
                QRExpr5.Enabled := False;
                QRExpr6.Enabled := False;
                QRExpr7.Enabled := False;
                QRExpr8.Enabled := False;
                QRExpr9.Enabled := False;
                QRLabel7.Enabled := False;
            end;
            if p_rel = 3 then
            begin
                Q_AUX.SQL.Clear;
                Q_AUX.SQL.Add('SELECT SUM(VALOR1+valor2+VALOR3) AS TOT');
                Q_AUX.SQL.Add('FROM FLUXO WHERE QUEBRA = ' +'''' +Q_FLUXOQUEBRA.AsString +'''');
                Q_AUX.Open;
                lbT4.Enabled := True;
                lbT4.Caption := formatfloat('###,###,#0',Q_AUX.fieldbyname('TOT').asfloat);
                QRExpr4.Enabled := False;
                QRExpr5.Enabled := False;
                QRExpr6.Enabled := False;
                QRExpr7.Enabled := False;
                QRExpr8.Enabled := False;
                QRExpr9.Enabled := False;
                QRLabel7.Enabled := False;
            end;
            if p_rel = 4 then
            begin
                Q_AUX.SQL.Clear;
                Q_AUX.SQL.Add('SELECT SUM(VALOR1+valor2+VALOR3+VALOR4) AS TOT');
                Q_AUX.SQL.Add('FROM FLUXO WHERE QUEBRA = ' +'''' +Q_FLUXOQUEBRA.AsString +'''');
                Q_AUX.Open;
                lbT5.Enabled := True;
                lbT5.Caption := formatfloat('###,###,#0',Q_AUX.fieldbyname('TOT').asfloat);
                QRExpr5.Enabled := False;
                QRExpr6.Enabled := False;
                QRExpr7.Enabled := False;
                QRExpr8.Enabled := False;
                QRExpr9.Enabled := False;
                QRLabel7.Enabled := False;
            end;
            if p_rel = 5 then
            begin
                Q_AUX.SQL.Clear;
                Q_AUX.SQL.Add('SELECT SUM(VALOR1+valor2+VALOR3+VALOR4+VALOR5) AS TOT');
                Q_AUX.SQL.Add('FROM FLUXO WHERE QUEBRA = ' +'''' +Q_FLUXOQUEBRA.AsString +'''');
                Q_AUX.Open;
                lbT6.Enabled := True;
                lbT6.Caption := formatfloat('###,###,#0',Q_AUX.fieldbyname('TOT').asfloat);
                QRExpr6.Enabled := False;
                QRExpr7.Enabled := False;
                QRExpr8.Enabled := False;
                QRExpr9.Enabled := False;
                QRLabel7.Enabled := False;
            end;
            if p_rel = 6 then
            begin
                Q_AUX.SQL.Clear;
                Q_AUX.SQL.Add('SELECT SUM(VALOR1+valor2+VALOR3+VALOR4+VALOR5+VALOR6) AS TOT');
                Q_AUX.SQL.Add('FROM FLUXO WHERE QUEBRA = ' +'''' +Q_FLUXOQUEBRA.AsString +'''');
                Q_AUX.Open;
                lbT7.Enabled := True;
                lbT7.Caption := formatfloat('###,###,#0',Q_AUX.fieldbyname('TOT').asfloat);
                QRExpr7.Enabled := False;
                QRExpr8.Enabled := False;
                QRExpr9.Enabled := False;
                QRLabel7.Enabled := False;
            end;
            if p_rel = 7 then
            begin
                Q_AUX.SQL.Clear;
                Q_AUX.SQL.Add('SELECT SUM(VALOR1+valor2+VALOR3+VALOR4+VALOR5+VALOR6+VALOR7) AS TOT');
                Q_AUX.SQL.Add('FROM FLUXO WHERE QUEBRA = ' +'''' +Q_FLUXOQUEBRA.AsString +'''');
                Q_AUX.Open;
                lbT8.Enabled := True;
                lbT8.Caption := formatfloat('###,###,#0',Q_AUX.fieldbyname('TOT').asfloat);
                QRExpr8.Enabled := False;
                QRLabel7.Enabled := False;
                QRExpr9.Enabled := False;
            end;

            if p_rel = 8 then
            BEGIN
                Q_AUX.SQL.Clear;
                Q_AUX.SQL.Add('SELECT SUM(VALOR1+valor2+VALOR3+VALOR4+VALOR5+VALOR6+VALOR7+VALOR8) AS TOT');
                Q_AUX.SQL.Add('FROM FLUXO WHERE QUEBRA = ' +'''' +Q_FLUXOQUEBRA.AsString +'''');
                Q_AUX.Open;
                QRLabel7.Enabled := True;
                QRLabel7.Caption := formatfloat('###,###,#0',Q_AUX.fieldbyname('TOT').asfloat);
                QRExpr8.Enabled := TRUE;
                QRLabel7.Enabled := True;
                QRExpr9.Enabled := False;
            end;
       end;  //end folha 1





       if  Q_FLUXOFolha.asinteger = 2 then
       begin
            if p_rel = 9 then
            begin
                Q_AUX.SQL.Clear;
                Q_AUX.SQL.Add('SELECT SUM(VALOR1+valor2+VALOR3+VALOR4+VALOR5+VALOR6+VALOR7+VALOR8+valor9) AS TOT');
                Q_AUX.SQL.Add('FROM FLUXO WHERE QUEBRA = ' +'''' +Q_FLUXOQUEBRA.AsString +'''');
                Q_AUX.Open;
                lbT1.Enabled := True;
                lbT1.Caption := formatfloat('###,###,#0',Q_AUX.fieldbyname('TOT').asfloat);
                QRExpr1.Enabled := False;
                QRExpr2.Enabled := False;
                QRExpr3.Enabled := False;
                QRExpr4.Enabled := False;
                QRExpr5.Enabled := False;
                QRExpr6.Enabled := False;
                QRExpr7.Enabled := False;
                QRExpr8.Enabled := False;
                QRExpr9.Enabled := False;
                QRLabel7.Enabled := False;
            end;
            if p_rel = 10 then
            begin
                Q_AUX.SQL.Clear;
                Q_AUX.SQL.Add('SELECT SUM(VALOR1+valor2+VALOR3+VALOR4+VALOR5+VALOR6+VALOR7+VALOR8+valor9+valor10) AS TOT');
                Q_AUX.SQL.Add('FROM FLUXO WHERE QUEBRA = ' +'''' +Q_FLUXOQUEBRA.AsString +'''');
                Q_AUX.Open;
                lbT2.Enabled := True;
                lbT2.Caption := formatfloat('###,###,#0',Q_AUX.fieldbyname('TOT').asfloat);
                QRExpr2.Enabled := False;
                QRExpr3.Enabled := False;
                QRExpr4.Enabled := False;
                QRExpr5.Enabled := False;
                QRExpr6.Enabled := False;
                QRExpr7.Enabled := False;
                QRExpr8.Enabled := False;
                QRExpr9.Enabled := False;
                QRLabel7.Enabled := False;
            end;
            if p_rel = 11 then
            begin
                Q_AUX.SQL.Clear;
                Q_AUX.SQL.Add('SELECT SUM(VALOR1+valor2+VALOR3+VALOR4+VALOR5+VALOR6+VALOR7+VALOR8+valor9+valor10+valor11) AS TOT');
                Q_AUX.SQL.Add('FROM FLUXO WHERE QUEBRA = ' +'''' +Q_FLUXOQUEBRA.AsString +'''');
                Q_AUX.Open;
                lbT3.Enabled := True;
                lbT3.Caption := formatfloat('###,###,#0',Q_AUX.fieldbyname('TOT').asfloat);
                QRExpr3.Enabled := False;
                QRExpr4.Enabled := False;
                QRExpr5.Enabled := False;
                QRExpr6.Enabled := False;
                QRExpr7.Enabled := False;
                QRExpr8.Enabled := False;
                QRExpr9.Enabled := False;
                QRLabel7.Enabled := False;
            end;
            if p_rel = 12 then
            begin
                Q_AUX.SQL.Clear;
                Q_AUX.SQL.Add('SELECT SUM(VALOR1+valor2+VALOR3+VALOR4+VALOR5+VALOR6+VALOR7+VALOR8+valor9+valor10+valor11+valor12) AS TOT');
                Q_AUX.SQL.Add('FROM FLUXO WHERE QUEBRA = ' +'''' +Q_FLUXOQUEBRA.AsString +'''');
                Q_AUX.Open;
                lbT4.Enabled := True;
                lbT4.Caption := formatfloat('###,###,#0',Q_AUX.fieldbyname('TOT').asfloat);
                QRExpr4.Enabled := False;
                QRExpr5.Enabled := False;
                QRExpr6.Enabled := False;
                QRExpr7.Enabled := False;
                QRExpr8.Enabled := False;
                QRExpr9.Enabled := False;
                QRLabel7.Enabled := False;
            end;
            if p_rel = 13 then
            begin
                Q_AUX.SQL.Clear;
                Q_AUX.SQL.Add('SELECT SUM(VALOR1+valor2+VALOR3+VALOR4+VALOR5+VALOR6+VALOR7+VALOR8+valor9+valor10+valor11+valor12+valor13) AS TOT');
                Q_AUX.SQL.Add('FROM FLUXO WHERE QUEBRA = ' +'''' +Q_FLUXOQUEBRA.AsString +'''');
                Q_AUX.Open;
                lbT5.Enabled := True;
                lbT5.Caption := formatfloat('###,###,#0',Q_AUX.fieldbyname('TOT').asfloat);
                QRExpr5.Enabled := False;
                QRExpr6.Enabled := False;
                QRExpr7.Enabled := False;
                QRExpr8.Enabled := False;
                QRExpr9.Enabled := False;
                QRLabel7.Enabled := False;
            end;
            if p_rel = 14 then
            begin
                Q_AUX.SQL.Clear;
                Q_AUX.SQL.Add('SELECT SUM(VALOR1+valor2+VALOR3+VALOR4+VALOR5+VALOR6+VALOR7+VALOR8+valor9+valor10+valor11+valor12+valor13+valor14) AS TOT');
                Q_AUX.SQL.Add('FROM FLUXO WHERE QUEBRA = ' +'''' +Q_FLUXOQUEBRA.AsString +'''');
                Q_AUX.Open;
                lbT6.Enabled := True;
                lbT6.Caption := formatfloat('###,###,#0',Q_AUX.fieldbyname('TOT').asfloat);
                QRExpr6.Enabled := False;
                QRExpr7.Enabled := False;
                QRExpr8.Enabled := False;
                QRExpr9.Enabled := False;
                QRLabel7.Enabled := False;
            end;
            if p_rel = 15 then
            begin
                Q_AUX.SQL.Clear;
                Q_AUX.SQL.Add('SELECT SUM(VALOR1+valor2+VALOR3+VALOR4+VALOR5+VALOR6+VALOR7+VALOR8+valor9+valor10+valor11+valor12+valor13+valor14+valor15) AS TOT');
                Q_AUX.SQL.Add('FROM FLUXO WHERE QUEBRA = ' +'''' +Q_FLUXOQUEBRA.AsString +'''');
                Q_AUX.Open;
                lbT7.Enabled := True;
                lbT7.Caption := formatfloat('###,###,#0',Q_AUX.fieldbyname('TOT').asfloat);
                QRExpr7.Enabled := False;
                QRExpr8.Enabled := False;
                QRLabel7.Enabled := False;
                QRExpr9.Enabled := False;
            end;
            if p_rel = 16 then
            begin
                Q_AUX.SQL.Clear;
                Q_AUX.SQL.Add('SELECT SUM(VALOR1+valor2+VALOR3+VALOR4+VALOR5+VALOR6+VALOR7+VALOR8+valor9+valor10+valor11+valor12+valor13+valor14+valor15+valor16) AS TOT');
                Q_AUX.SQL.Add('FROM FLUXO WHERE QUEBRA = ' +'''' +Q_FLUXOQUEBRA.AsString +'''');
                Q_AUX.Open;
                lbT8.Enabled := True;
                lbT8.Caption := formatfloat('###,###,#0',Q_AUX.fieldbyname('TOT').asfloat);
                QRExpr8.Enabled := False;
                QRLabel7.Enabled := False;
                QRExpr9.Enabled := False;
            end;
            if p_rel = 17 then
            begin
                Q_AUX.SQL.Clear;
                Q_AUX.SQL.Add('SELECT SUM(VALOR1+valor2+VALOR3+VALOR4+VALOR5+VALOR6+VALOR7+VALOR8+valor9+valor10+valor11+valor12+valor13+valor14+valor15+valor16+valor17) AS TOT');
                Q_AUX.SQL.Add('FROM FLUXO WHERE QUEBRA = ' +'''' +Q_FLUXOQUEBRA.AsString +'''');
                Q_AUX.Open;
                QRLabel7.Enabled := True;
                QRLabel7.Caption := formatfloat('###,###,#0',Q_AUX.fieldbyname('TOT').asfloat);
                QRExpr9.Enabled := False;
            end;
       end;  //end folha 2





       if  Q_FLUXOFolha.asinteger = 3 then
       begin
            if p_rel = 18 then
            begin
                Q_AUX.SQL.Clear;
                Q_AUX.SQL.Add('SELECT SUM(VALOR1+valor2+VALOR3+VALOR4+VALOR5+VALOR6+VALOR7+VALOR8+valor9+valor10+valor11+valor12+valor13+valor14+valor15+valor16+valor17+valor18) AS TOT');
                Q_AUX.SQL.Add('FROM FLUXO WHERE QUEBRA = ' +'''' +Q_FLUXOQUEBRA.AsString +'''');
                Q_AUX.Open;
                lbT1.Enabled := True;
                lbT1.Caption := formatfloat('###,###,#0',Q_AUX.fieldbyname('TOT').asfloat);
                QRExpr1.Enabled := False;
                QRExpr2.Enabled := False;
                QRExpr3.Enabled := False;
                QRExpr4.Enabled := False;
                QRExpr5.Enabled := False;
                QRExpr6.Enabled := False;
                QRExpr7.Enabled := False;
                QRExpr8.Enabled := False;
                QRExpr9.Enabled := False;
                QRLabel7.Enabled := False;
            end;
            if p_rel = 19 then
            begin
                Q_AUX.SQL.Clear;
                Q_AUX.SQL.Add('SELECT SUM(VALOR1+valor2+VALOR3+VALOR4+VALOR5+VALOR6+VALOR7+VALOR8+valor9+valor10+valor11+valor12+valor13+valor14+valor15+valor16+valor17+valor18+valor19) AS TOT');
                Q_AUX.SQL.Add('FROM FLUXO WHERE QUEBRA = ' +'''' +Q_FLUXOQUEBRA.AsString +'''');
                Q_AUX.Open;
                lbT2.Enabled := True;
                lbT2.Caption := formatfloat('###,###,#0',Q_AUX.fieldbyname('TOT').asfloat);
                QRExpr2.Enabled := False;
                QRExpr3.Enabled := False;
                QRExpr4.Enabled := False;
                QRExpr5.Enabled := False;
                QRExpr6.Enabled := False;
                QRExpr7.Enabled := False;
                QRExpr8.Enabled := False;
                QRExpr9.Enabled := False;
                QRLabel7.Enabled := False;
            end;
            if p_rel = 20 then
            begin
                Q_AUX.SQL.Clear;
                Q_AUX.SQL.Add('SELECT SUM(VALOR1+valor2+VALOR3+VALOR4+VALOR5+VALOR6+VALOR7+VALOR8+valor9+valor10+valor11+valor12+valor13+valor14+valor15+valor16+valor17+valor18+valor19+valor20) AS TOT');
                Q_AUX.SQL.Add('FROM FLUXO WHERE QUEBRA = ' +'''' +Q_FLUXOQUEBRA.AsString +'''');
                Q_AUX.Open;
                lbT3.Enabled := True;
                lbT3.Caption := formatfloat('###,###,#0',Q_AUX.fieldbyname('TOT').asfloat);
                QRExpr3.Enabled := False;
                QRExpr4.Enabled := False;
                QRExpr5.Enabled := False;
                QRExpr6.Enabled := False;
                QRExpr7.Enabled := False;
                QRExpr8.Enabled := False;
                QRExpr9.Enabled := False;
                QRLabel7.Enabled := False;
            end;
            if p_rel = 21 then
            begin
                Q_AUX.SQL.Clear;
                Q_AUX.SQL.Add('SELECT SUM(VALOR1+valor2+VALOR3+VALOR4+VALOR5+VALOR6+VALOR7+VALOR8+valor9+valor10+valor11+valor12+valor13+valor14+valor15+valor16+valor17+valor18+valor19+valor20+valor21) AS TOT');
                Q_AUX.SQL.Add('FROM FLUXO WHERE QUEBRA = ' +'''' +Q_FLUXOQUEBRA.AsString +'''');
                Q_AUX.Open;
                lbT4.Enabled := True;
                lbT4.Caption := formatfloat('###,###,#0',Q_AUX.fieldbyname('TOT').asfloat);
                QRExpr4.Enabled := False;
                QRExpr5.Enabled := False;
                QRExpr6.Enabled := False;
                QRExpr7.Enabled := False;
                QRExpr8.Enabled := False;
                QRExpr9.Enabled := False;
                QRLabel7.Enabled := False;
            end;
            if p_rel = 22 then
            begin
                Q_AUX.SQL.Clear;
                Q_AUX.SQL.Add('SELECT SUM(VALOR1+valor2+VALOR3+VALOR4+VALOR5+VALOR6+VALOR7+VALOR8+valor9+valor10+valor11+valor12+valor13+valor14+valor15+valor16+valor17+valor18+valor19+valor20+valor21+valor22) AS TOT');
                Q_AUX.SQL.Add('FROM FLUXO WHERE QUEBRA = ' +'''' +Q_FLUXOQUEBRA.AsString +'''');
                Q_AUX.Open;
                lbT5.Enabled := True;
                lbT5.Caption := formatfloat('###,###,#0',Q_AUX.fieldbyname('TOT').asfloat);
                QRExpr5.Enabled := False;
                QRExpr6.Enabled := False;
                QRExpr7.Enabled := False;
                QRExpr8.Enabled := False;
                QRExpr9.Enabled := False;
                QRLabel7.Enabled := False;
            end;
            if p_rel = 23 then
            begin
                Q_AUX.SQL.Clear;
                Q_AUX.SQL.Add('SELECT SUM(VALOR1+valor2+VALOR3+VALOR4+VALOR5+VALOR6+VALOR7+VALOR8+valor9+valor10+valor11+valor12+valor13+valor14+valor15+valor16+valor17+valor18+valor19+valor20+valor21+valor22+valor23) AS TOT');
                Q_AUX.SQL.Add('FROM FLUXO WHERE QUEBRA = ' +'''' +Q_FLUXOQUEBRA.AsString +'''');
                Q_AUX.Open;
                lbT6.Enabled := True;
                lbT6.Caption := formatfloat('###,###,#0',Q_AUX.fieldbyname('TOT').asfloat);
                QRExpr6.Enabled := False;
                QRExpr7.Enabled := False;
                QRExpr8.Enabled := False;
                QRExpr9.Enabled := False;
                QRLabel7.Enabled := False;
            end;
            if p_rel = 24 then
            begin
                Q_AUX.SQL.Clear;
                Q_AUX.SQL.Add('SELECT SUM(VALOR1+valor2+VALOR3+VALOR4+VALOR5+VALOR6+VALOR7+VALOR8+valor9+valor10+valor11+valor12+valor13+valor14+valor15+valor16+valor17+valor18+valor19+valor20+valor21+valor22+valor23+valor24) AS TOT');
                Q_AUX.SQL.Add('FROM FLUXO WHERE QUEBRA = ' +'''' +Q_FLUXOQUEBRA.AsString +'''');
                Q_AUX.Open;
                lbT7.Enabled := True;
                lbT7.Caption := formatfloat('###,###,#0',Q_AUX.fieldbyname('TOT').asfloat);
                QRExpr7.Enabled := False;
                QRExpr8.Enabled := False;
                QRLabel7.Enabled := False;
                QRExpr9.Enabled := False;
            end;
            if p_rel = 25 then
            begin
                Q_AUX.SQL.Clear;
                Q_AUX.SQL.Add('SELECT SUM(VALOR1+valor2+VALOR3+VALOR4+VALOR5+VALOR6+VALOR7+VALOR8+valor9+valor10+valor11+valor12+valor13+valor14+valor15+valor16+valor17+valor18+valor19+valor20+valor21+valor22+valor23+valor24+valor25) AS TOT');
                Q_AUX.SQL.Add('FROM FLUXO WHERE QUEBRA = ' +'''' +Q_FLUXOQUEBRA.AsString +'''');
                Q_AUX.Open;
                lbT8.Enabled := True;
                lbT8.Caption := formatfloat('###,###,#0',Q_AUX.fieldbyname('TOT').asfloat);
                QRExpr8.Enabled := False;
                QRLabel7.Enabled := False;
                QRExpr9.Enabled := False;
            end;
            if p_rel = 26 then
            begin
                Q_AUX.SQL.Clear;
                Q_AUX.SQL.Add('SELECT SUM(VALOR1+valor2+VALOR3+VALOR4+VALOR5+VALOR6+VALOR7+VALOR8+valor9+valor10+valor11+valor12+valor13+valor14+valor15+valor16+valor17+valor18+valor19+valor20+valor21+valor22+valor23+valor24+valor25+valor26) AS TOT');
                Q_AUX.SQL.Add('FROM FLUXO WHERE QUEBRA = ' +'''' +Q_FLUXOQUEBRA.AsString +'''');
                Q_AUX.Open;
                QRLabel7.Enabled := True;
                QRLabel7.Caption := formatfloat('###,###,#0',Q_AUX.fieldbyname('TOT').asfloat);
                QRExpr9.Enabled := False;
            end;
       end;  //end folha 3





       if  Q_FLUXOFolha.asinteger = 4 then
       begin
            if p_rel = 27 then
            begin
                Q_AUX.SQL.Clear;
                Q_AUX.SQL.Add('SELECT SUM(VALOR1+valor2+VALOR3+VALOR4+VALOR5+VALOR6+VALOR7+VALOR8+valor9+valor10+valor11+valor12+valor13+valor14+valor15+valor16+valor17+valor18+valor19+valor20+valor21+valor22+valor23+valor24+valor25+valor26+valor27) AS TOT');
                Q_AUX.SQL.Add('FROM FLUXO WHERE QUEBRA = ' +'''' +Q_FLUXOQUEBRA.AsString +'''');
                Q_AUX.Open;
                lbT1.Enabled := True;
                lbT1.Caption := formatfloat('###,###,#0',Q_AUX.fieldbyname('TOT').asfloat);
                QRExpr1.Enabled := False;
                QRExpr2.Enabled := False;
                QRExpr3.Enabled := False;
                QRExpr4.Enabled := False;
                QRExpr5.Enabled := False;
                QRExpr6.Enabled := False;
                QRExpr7.Enabled := False;
                QRExpr8.Enabled := False;
                QRExpr9.Enabled := False;
                QRLabel7.Enabled := False;
            end;
            if p_rel = 28 then
            begin
                Q_AUX.SQL.Clear;
                Q_AUX.SQL.Add('SELECT SUM(VALOR1+valor2+VALOR3+VALOR4+VALOR5+VALOR6+VALOR7+VALOR8+valor9+valor10+valor11+valor12+valor13+valor14+valor15+valor16+valor17+valor18+valor19+valor20+valor21+valor22+valor23+valor24+valor25+valor26+valor27+valor28) AS TOT');
                Q_AUX.SQL.Add('FROM FLUXO WHERE QUEBRA = ' +'''' +Q_FLUXOQUEBRA.AsString +'''');
                Q_AUX.Open;
                lbT2.Enabled := True;
                lbT2.Caption := formatfloat('###,###,#0',Q_AUX.fieldbyname('TOT').asfloat);
                QRExpr2.Enabled := False;
                QRExpr3.Enabled := False;
                QRExpr4.Enabled := False;
                QRExpr5.Enabled := False;
                QRExpr6.Enabled := False;
                QRExpr7.Enabled := False;
                QRExpr8.Enabled := False;
                QRExpr9.Enabled := False;
                QRLabel7.Enabled := False;
            end;
            if p_rel = 29 then
            begin
                Q_AUX.SQL.Clear;
                Q_AUX.SQL.Add('SELECT SUM(VALOR1+valor2+VALOR3+VALOR4+VALOR5+VALOR6+VALOR7+VALOR8+valor9+valor10+valor11+valor12+valor13+valor14+valor15+valor16+valor17+valor18+valor19+valor20+valor21+valor22+valor23+valor24+valor25+valor26+valor27+valor28+valor29) AS TOT');
                Q_AUX.SQL.Add('FROM FLUXO WHERE QUEBRA = ' +'''' +Q_FLUXOQUEBRA.AsString +'''');
                Q_AUX.Open;
                lbT3.Enabled := True;
                lbT3.Caption := formatfloat('###,###,#0',Q_AUX.fieldbyname('TOT').asfloat);
                QRExpr3.Enabled := False;
                QRExpr4.Enabled := False;
                QRExpr5.Enabled := False;
                QRExpr6.Enabled := False;
                QRExpr7.Enabled := False;
                QRExpr8.Enabled := False;
                QRExpr9.Enabled := False;
                QRLabel7.Enabled := False;
            end;
            if p_rel = 30 then
            begin
                Q_AUX.SQL.Clear;
                Q_AUX.SQL.Add('SELECT SUM(VALOR1+valor2+VALOR3+VALOR4+VALOR5+VALOR6+VALOR7+VALOR8+valor9+valor10+valor11+valor12+valor13+valor14+valor15+valor16+valor17+valor18+valor19+valor20+valor21+valor22+valor23+valor24+valor25+valor26+valor27+valor28+valor29+valor30) AS TOT');
                Q_AUX.SQL.Add('FROM FLUXO WHERE QUEBRA = ' +'''' +Q_FLUXOQUEBRA.AsString +'''');
                Q_AUX.Open;
                lbT4.Enabled := True;
                lbT4.Caption := formatfloat('###,###,#0',Q_AUX.fieldbyname('TOT').asfloat);
                QRExpr4.Enabled := False;
                QRExpr5.Enabled := False;
                QRExpr6.Enabled := False;
                QRExpr7.Enabled := False;
                QRExpr8.Enabled := False;
                QRExpr9.Enabled := False;
                QRLabel7.Enabled := False;
            end;
            if p_rel = 31 then
            begin
                Q_AUX.SQL.Clear;
                Q_AUX.SQL.Add('SELECT SUM(VALOR1+valor2+VALOR3+VALOR4+VALOR5+VALOR6+VALOR7+VALOR8+valor9+valor10+valor11+valor12+valor13+valor14+valor15+valor16+valor17+valor18+valor19+valor20+valor21+valor22');
                Q_AUX.SQL.Add('+valor23+valor24+valor25+valor26+valor27+valor28+valor29+valor30+valor31) AS TOT');
                Q_AUX.SQL.Add('FROM FLUXO WHERE QUEBRA = ' +'''' +Q_FLUXOQUEBRA.AsString +'''');
                Q_AUX.Open;
                lbT5.Enabled := True;
                lbT5.Caption := formatfloat('###,###,#0',Q_AUX.fieldbyname('TOT').asfloat);
                QRExpr5.Enabled := False;
                QRExpr6.Enabled := False;
                QRExpr7.Enabled := False;
                QRExpr8.Enabled := False;
                QRExpr9.Enabled := False;
                QRLabel7.Enabled := False;
            end;
       end;  //end folha 4
   end;



end;

procedure TFRelFluxoCaixaCompleto.QRLabel2Print(sender: TObject;
  var Value: String);
begin
   if FRelFluxoCaixaFilt.RadioGroup2.ItemIndex = 0 then
        value := value + ' Previsto'
   else
        value := value + ' Realizado';

end;

procedure TFRelFluxoCaixaCompleto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin


        Q_AUX.Close ;
        Q_CMOE.Close ;
        Q_FLUXo.Close ;
        Action := CaFree;

        
end;

procedure TFRelFluxoCaixaCompleto.QRExpr5Print(sender: TObject;
  var Value: String);
begin
if  Q_FLUXOFolha.asinteger = 1 then begin
       Q_AUX.close ;
       Q_AUX.sql.clear;
       Q_AUX.sql.add('SELECT		SUM(VALOR5) as XVALOR');
       Q_AUX.sql.add('FROM		FLUXO ');
        if Q_FLUXOQuebra.asstring = '1E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '1E' + '''');
        if Q_FLUXOQuebra.asstring = '1S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '1S' + '''');
        if Q_FLUXOQuebra.asstring = '2E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '2E' + '''');
        if Q_FLUXOQuebra.asstring = '2S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '2S' + '''');
        if Q_FLUXOQuebra.asstring = '3E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '3E' + '''');
        if Q_FLUXOQuebra.asstring = '3S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '3S' + '''');
       Q_AUX.sql.add('AND FOLHA = ' + inttostr(1));
       Q_AUX.Open ;

       value :=  formatfloat('###,###,##0',Q_AUX.fieldbyname('XVALOR').asfloat) ;
   end
   else if Q_FLUXOFolha.asinteger = 2 then
   begin
       Q_AUX.close ;
       Q_AUX.sql.clear;
       Q_AUX.sql.add('SELECT		SUM(VALOR14) as XVALOR');
       Q_AUX.sql.add('FROM		FLUXO ');
       if Q_FLUXOQuebra.asstring = '1E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '1E' + '''');
       if Q_FLUXOQuebra.asstring = '1S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '1S' + '''');
       if Q_FLUXOQuebra.asstring = '2E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '2E' + '''');
       if Q_FLUXOQuebra.asstring = '2S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '2S' + '''');
       if Q_FLUXOQuebra.asstring = '3E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '3E' + '''');
       if Q_FLUXOQuebra.asstring = '3S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '3S' + '''');
       Q_AUX.sql.add('AND FOLHA = ' + inttostr(2));
       Q_AUX.Open ;

       value :=  formatfloat('###,###,##0',Q_AUX.fieldbyname('XVALOR').asfloat) ;
   end
   else if Q_FLUXOFolha.asinteger = 3 then
   begin
       Q_AUX.close ;
       Q_AUX.sql.clear;
       Q_AUX.sql.add('SELECT		SUM(VALOR23) as XVALOR');
       Q_AUX.sql.add('FROM		FLUXO ');
       if Q_FLUXOQuebra.asstring = '1E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '1E' + '''');
       if Q_FLUXOQuebra.asstring = '1S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '1S' + '''');
       if Q_FLUXOQuebra.asstring = '2E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '2E' + '''');
       if Q_FLUXOQuebra.asstring = '2S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '2S' + '''');
       if Q_FLUXOQuebra.asstring = '3E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '3E' + '''');
       if Q_FLUXOQuebra.asstring = '3S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '3S' + '''');
       Q_AUX.sql.add('AND FOLHA = ' + inttostr(3));
       Q_AUX.Open ;

       value :=  formatfloat('###,###,##0',Q_AUX.fieldbyname('XVALOR').asfloat) ;
   end
   else if Q_FLUXOFolha.asinteger = 4 then
   begin
       Q_AUX.close ;
       Q_AUX.sql.clear;
       Q_AUX.sql.add('select sum(valor1)+sum(valor2)+sum(valor3)+sum(valor4)+sum(valor5)+sum(valor6)+');
       Q_AUX.sql.add('sum(valor7)+sum(valor8)+sum(valor9)+sum(valor10)+sum(valor11)+sum(valor12)+');
       Q_AUX.sql.add('sum(valor13)+sum(valor14)+sum(valor15)+sum(valor16)+sum(valor17)+sum(valor18)+');
       Q_AUX.sql.add('sum(valor19)+sum(valor20)+sum(valor21)+sum(valor22)+sum(valor23)+sum(valor24)+');
       Q_AUX.sql.add('sum(valor25)+sum(valor26)+sum(valor27)+sum(valor28)+sum(valor29)+sum(valor30)+sum(valor31) as XVALOR');
       Q_AUX.sql.add('FROM		FLUXO ');
       if Q_FLUXOQuebra.asstring = '1E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '1E' + '''');
       if Q_FLUXOQuebra.asstring = '1S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '1S' + '''');
       if Q_FLUXOQuebra.asstring = '2E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '2E' + '''');
       if Q_FLUXOQuebra.asstring = '2S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '2S' + '''');
       if Q_FLUXOQuebra.asstring = '3E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '3E' + '''');
       if Q_FLUXOQuebra.asstring = '3S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '3S' + '''');
       //Q_AUX.sql.add('AND FOLHA = ' + inttostr(4));
       Q_AUX.Open ;

       value :=  formatfloat('###,###,##0',Q_AUX.fieldbyname('XVALOR').asfloat) ;
   end ;


   if (FRelFluxoCaixaFilt.RadioGroup3.ItemIndex = 1) and (Q_FLUXOFolha.Value = 2) then
        Value := '';


end;

procedure TFRelFluxoCaixaCompleto.QRExpr6Print(sender: TObject;
  var Value: String);
begin

   if  Q_FLUXOFolha.asinteger = 1 then begin
       Q_AUX.close ;
       Q_AUX.sql.clear;
       Q_AUX.sql.add('SELECT		SUM(VALOR6) as XVALOR');
       Q_AUX.sql.add('FROM		FLUXO ');
        if Q_FLUXOQuebra.asstring = '1E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '1E' + '''');
        if Q_FLUXOQuebra.asstring = '1S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '1S' + '''');
        if Q_FLUXOQuebra.asstring = '2E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '2E' + '''');
        if Q_FLUXOQuebra.asstring = '2S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '2S' + '''');
        if Q_FLUXOQuebra.asstring = '3E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '3E' + '''');
        if Q_FLUXOQuebra.asstring = '3S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '3S' + '''');
       Q_AUX.sql.add('AND FOLHA = ' + inttostr(1));
       Q_AUX.Open ;

       value :=  formatfloat('###,###,##0',Q_AUX.fieldbyname('XVALOR').asfloat) ;
   end
   else if Q_FLUXOFolha.asinteger = 2 then
   begin
       Q_AUX.close ;
       Q_AUX.sql.clear;
       Q_AUX.sql.add('SELECT		SUM(VALOR15) as XVALOR');
       Q_AUX.sql.add('FROM		FLUXO ');
       if Q_FLUXOQuebra.asstring = '1E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '1E' + '''');
       if Q_FLUXOQuebra.asstring = '1S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '1S' + '''');
       if Q_FLUXOQuebra.asstring = '2E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '2E' + '''');
       if Q_FLUXOQuebra.asstring = '2S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '2S' + '''');
       if Q_FLUXOQuebra.asstring = '3E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '3E' + '''');
       if Q_FLUXOQuebra.asstring = '3S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '3S' + '''');
       Q_AUX.sql.add('AND FOLHA = ' + inttostr(2));
       Q_AUX.Open ;

       value :=  formatfloat('###,###,##0',Q_AUX.fieldbyname('XVALOR').asfloat) ;
   end
   else if Q_FLUXOFolha.asinteger = 3 then
   begin
       Q_AUX.close ;
       Q_AUX.sql.clear;
       Q_AUX.sql.add('SELECT		SUM(VALOR24) as XVALOR');
       Q_AUX.sql.add('FROM		FLUXO ');
       if Q_FLUXOQuebra.asstring = '1E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '1E' + '''');
       if Q_FLUXOQuebra.asstring = '1S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '1S' + '''');
       if Q_FLUXOQuebra.asstring = '2E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '2E' + '''');
       if Q_FLUXOQuebra.asstring = '2S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '2S' + '''');
       if Q_FLUXOQuebra.asstring = '3E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '3E' + '''');
       if Q_FLUXOQuebra.asstring = '3S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '3S' + '''');
       Q_AUX.sql.add('AND FOLHA = ' + inttostr(3));
       Q_AUX.Open ;

       value :=  formatfloat('###,###,##0',Q_AUX.fieldbyname('XVALOR').asfloat) ;
   end
   else if Q_FLUXOFolha.asinteger = 4 then
   begin
       value :=  '' ;
   end ;

      if (FRelFluxoCaixaFilt.RadioGroup3.ItemIndex = 1) and (Q_FLUXOFolha.Value = 2) then
        Value := '';
end;

procedure TFRelFluxoCaixaCompleto.QRExpr7Print(sender: TObject;
  var Value: String);
begin
   if  Q_FLUXOFolha.asinteger = 1 then begin
       Q_AUX.close ;
       Q_AUX.sql.clear;
       Q_AUX.sql.add('SELECT		SUM(VALOR7) as XVALOR');
       Q_AUX.sql.add('FROM		FLUXO ');
        if Q_FLUXOQuebra.asstring = '1E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '1E' + '''');
        if Q_FLUXOQuebra.asstring = '1S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '1S' + '''');
        if Q_FLUXOQuebra.asstring = '2E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '2E' + '''');
        if Q_FLUXOQuebra.asstring = '2S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '2S' + '''');
        if Q_FLUXOQuebra.asstring = '3E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '3E' + '''');
        if Q_FLUXOQuebra.asstring = '3S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '3S' + '''');
       Q_AUX.sql.add('AND FOLHA = ' + inttostr(1));
       Q_AUX.Open ;

       value :=  formatfloat('###,###,##0',Q_AUX.fieldbyname('XVALOR').asfloat) ;
   end
   else if Q_FLUXOFolha.asinteger = 2 then
   begin
       Q_AUX.close ;
       Q_AUX.sql.clear;
       Q_AUX.sql.add('SELECT		SUM(VALOR16) as XVALOR');
       Q_AUX.sql.add('FROM		FLUXO ');
       if Q_FLUXOQuebra.asstring = '1E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '1E' + '''');
       if Q_FLUXOQuebra.asstring = '1S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '1S' + '''');
       if Q_FLUXOQuebra.asstring = '2E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '2E' + '''');
       if Q_FLUXOQuebra.asstring = '2S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '2S' + '''');
       if Q_FLUXOQuebra.asstring = '3E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '3E' + '''');
       if Q_FLUXOQuebra.asstring = '3S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '3S' + '''');
       Q_AUX.sql.add('AND FOLHA = ' + inttostr(2));
       Q_AUX.Open ;

       value :=  formatfloat('###,###,##0',Q_AUX.fieldbyname('XVALOR').asfloat) ;
   end
   else if Q_FLUXOFolha.asinteger = 3 then
   begin
       Q_AUX.close ;
       Q_AUX.sql.clear;
       Q_AUX.sql.add('SELECT		SUM(VALOR25) as XVALOR');
       Q_AUX.sql.add('FROM		FLUXO ');
       if Q_FLUXOQuebra.asstring = '1E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '1E' + '''');
       if Q_FLUXOQuebra.asstring = '1S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '1S' + '''');
       if Q_FLUXOQuebra.asstring = '2E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '2E' + '''');
       if Q_FLUXOQuebra.asstring = '2S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '2S' + '''');
       if Q_FLUXOQuebra.asstring = '3E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '3E' + '''');
       if Q_FLUXOQuebra.asstring = '3S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '3S' + '''');
       Q_AUX.sql.add('AND FOLHA = ' + inttostr(3));
       Q_AUX.Open ;

       value :=  formatfloat('###,###,##0',Q_AUX.fieldbyname('XVALOR').asfloat) ;
   end
   else if Q_FLUXOFolha.asinteger = 4 then
   begin
       value :=  '' ;
   end ;


      if (FRelFluxoCaixaFilt.RadioGroup3.ItemIndex = 1) and (Q_FLUXOFolha.Value = 2) then
        Value := '';
end;

procedure TFRelFluxoCaixaCompleto.QRExpr8Print(sender: TObject;
  var Value: String);
begin
   if  Q_FLUXOFolha.asinteger = 1 then begin
       Q_AUX.close ;
       Q_AUX.sql.clear;
       Q_AUX.sql.add('SELECT		SUM(VALOR8) as XVALOR');
       Q_AUX.sql.add('FROM		FLUXO ');
        if Q_FLUXOQuebra.asstring = '1E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '1E' + '''');
        if Q_FLUXOQuebra.asstring = '1S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '1S' + '''');
        if Q_FLUXOQuebra.asstring = '2E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '2E' + '''');
        if Q_FLUXOQuebra.asstring = '2S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '2S' + '''');
        if Q_FLUXOQuebra.asstring = '3E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '3E' + '''');
        if Q_FLUXOQuebra.asstring = '3S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '3S' + '''');
       Q_AUX.sql.add('AND FOLHA = ' + inttostr(1));
       Q_AUX.Open ;

       value :=  formatfloat('###,###,##0',Q_AUX.fieldbyname('XVALOR').asfloat) ;
   end
   else if Q_FLUXOFolha.asinteger = 2 then
   begin
       Q_AUX.close ;
       Q_AUX.sql.clear;
       Q_AUX.sql.add('SELECT		SUM(VALOR17) as XVALOR');
       Q_AUX.sql.add('FROM		FLUXO ');
       if Q_FLUXOQuebra.asstring = '1E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '1E' + '''');
       if Q_FLUXOQuebra.asstring = '1S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '1S' + '''');
       if Q_FLUXOQuebra.asstring = '2E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '2E' + '''');
       if Q_FLUXOQuebra.asstring = '2S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '2S' + '''');
       if Q_FLUXOQuebra.asstring = '3E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '3E' + '''');
       if Q_FLUXOQuebra.asstring = '3S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '3S' + '''');
       Q_AUX.sql.add('AND FOLHA = ' + inttostr(2));
       Q_AUX.Open ;

       value :=  formatfloat('###,###,##0',Q_AUX.fieldbyname('XVALOR').asfloat) ;
   end
   else if Q_FLUXOFolha.asinteger = 3 then
   begin
       Q_AUX.close ;
       Q_AUX.sql.clear;
       Q_AUX.sql.add('SELECT		SUM(VALOR26) as XVALOR');
       Q_AUX.sql.add('FROM		FLUXO ');
       if Q_FLUXOQuebra.asstring = '1E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '1E' + '''');
       if Q_FLUXOQuebra.asstring = '1S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '1S' + '''');
       if Q_FLUXOQuebra.asstring = '2E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '2E' + '''');
       if Q_FLUXOQuebra.asstring = '2S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '2S' + '''');
       if Q_FLUXOQuebra.asstring = '3E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '3E' + '''');
       if Q_FLUXOQuebra.asstring = '3S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '3S' + '''');
       Q_AUX.sql.add('AND FOLHA = ' + inttostr(3));
       Q_AUX.Open ;

       value :=  formatfloat('###,###,##0',Q_AUX.fieldbyname('XVALOR').asfloat) ;
   end
   else if Q_FLUXOFolha.asinteger = 4 then
   begin
       value :=  '' ;
   end ;

      if (FRelFluxoCaixaFilt.RadioGroup3.ItemIndex = 1) and (Q_FLUXOFolha.Value = 2) then
        Value := '';
end;

procedure TFRelFluxoCaixaCompleto.QRExpr9Print(sender: TObject;
  var Value: String);
begin
   if  Q_FLUXOFolha.asinteger = 1 then begin
       Q_AUX.close ;
       Q_AUX.sql.clear;
       Q_AUX.sql.add('SELECT		SUM(VALOR9) as XVALOR');
       Q_AUX.sql.add('FROM		FLUXO ');
        if Q_FLUXOQuebra.asstring = '1E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '1E' + '''');
        if Q_FLUXOQuebra.asstring = '1S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '1S' + '''');
        if Q_FLUXOQuebra.asstring = '2E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '2E' + '''');
        if Q_FLUXOQuebra.asstring = '2S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '2S' + '''');
        if Q_FLUXOQuebra.asstring = '3E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '3E' + '''');
        if Q_FLUXOQuebra.asstring = '3S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '3S' + '''');
       Q_AUX.sql.add('AND FOLHA = ' + inttostr(1));
       Q_AUX.Open ;

       value :=  formatfloat('###,###,##0',Q_AUX.fieldbyname('XVALOR').asfloat) ;
   end
   else if Q_FLUXOFolha.asinteger = 2 then
   begin
       Q_AUX.close ;
       Q_AUX.sql.clear;
       Q_AUX.sql.add('SELECT		SUM(VALOR18) as XVALOR');
       Q_AUX.sql.add('FROM		FLUXO ');
       if Q_FLUXOQuebra.asstring = '1E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '1E' + '''');
       if Q_FLUXOQuebra.asstring = '1S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '1S' + '''');
       if Q_FLUXOQuebra.asstring = '2E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '2E' + '''');
       if Q_FLUXOQuebra.asstring = '2S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '2S' + '''');
       if Q_FLUXOQuebra.asstring = '3E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '3E' + '''');
       if Q_FLUXOQuebra.asstring = '3S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '3S' + '''');
       Q_AUX.sql.add('AND FOLHA = ' + inttostr(2));
       Q_AUX.Open ;

       value :=  formatfloat('###,###,##0',Q_AUX.fieldbyname('XVALOR').asfloat) ;
   end
   else if Q_FLUXOFolha.asinteger = 3 then
   begin
       Q_AUX.close ;
       Q_AUX.sql.clear;
       Q_AUX.sql.add('SELECT		SUM(VALOR27) as XVALOR');
       Q_AUX.sql.add('FROM		FLUXO ');
       if Q_FLUXOQuebra.asstring = '1E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '1E' + '''');
       if Q_FLUXOQuebra.asstring = '1S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '1S' + '''');
       if Q_FLUXOQuebra.asstring = '2E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '2E' + '''');
       if Q_FLUXOQuebra.asstring = '2S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '2S' + '''');
       if Q_FLUXOQuebra.asstring = '3E' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '3E' + '''');
       if Q_FLUXOQuebra.asstring = '3S' then Q_AUX.sql.add('Where QUEBRA = ' + '''' + '3S' + '''');
       Q_AUX.sql.add('AND FOLHA = ' + inttostr(3));
       Q_AUX.Open ;

       value :=  formatfloat('###,###,##0',Q_AUX.fieldbyname('XVALOR').asfloat) ;
   end
   else if Q_FLUXOFolha.asinteger = 4 then
   begin
       value :=  '' ;
   end ;


      if (FRelFluxoCaixaFilt.RadioGroup3.ItemIndex = 1) and (Q_FLUXOFolha.Value = 2) then
        Value := '';
end;

function TFRelFluxoCaixaCompleto.totalConta(periodos: integer): Double;
var total : Double;
begin

   case periodos of
       1 : total := Q_FLUXOValor1.Value;
       2 : total := Q_FLUXOValor1.Value + Q_FLUXOValor2.Value;
       3 : total := Q_FLUXOValor1.Value + Q_FLUXOValor2.Value + Q_FLUXOValor3.Value;
       4 : total := Q_FLUXOValor1.Value + Q_FLUXOValor2.Value + Q_FLUXOValor3.Value + Q_FLUXOValor4.Value;
       5 : total := Q_FLUXOValor1.Value + Q_FLUXOValor2.Value + Q_FLUXOValor3.Value + Q_FLUXOValor4.Value+
                    Q_FLUXOValor5.Value;
       6 : total := Q_FLUXOValor1.Value + Q_FLUXOValor2.Value + Q_FLUXOValor3.Value + Q_FLUXOValor4.Value+
                    Q_FLUXOValor5.Value + Q_FLUXOValor6.Value;
   end;
     total := 0;
     if periodos >= 1 then
        total := total + Q_FLUXOValor1.Value;
     if periodos >= 2 then
        total := total + Q_FLUXOValor2.Value;
     if periodos >= 3 then
        total := total + Q_FLUXOValor3.Value;
     if periodos >= 4 then
        total := total + Q_FLUXOValor4.Value;
     if periodos >= 5 then
        total := total + Q_FLUXOValor5.Value;
     if periodos >= 6 then
        total := total + Q_FLUXOValor6.Value;
     if periodos >= 7 then
        total := total + Q_FLUXOValor7.Value;
     if periodos >= 8 then
        total := total + Q_FLUXOValor8.Value;
     if periodos >= 9 then
        total := total + Q_FLUXOValor9.Value;
     if periodos >= 10 then
        total := total + Q_FLUXOValor10.Value;
     if periodos >= 11 then
        total := total + Q_FLUXOValor11.Value;
     if periodos >= 12 then
        total := total + Q_FLUXOValor12.Value;
     if periodos >= 13 then
        total := total + Q_FLUXOValor13.Value;
     if periodos >= 14 then
        total := total + Q_FLUXOValor14.Value;
     if periodos >= 15 then
        total := total + Q_FLUXOValor15.Value;
     if periodos >= 16 then
        total := total + Q_FLUXOValor16.Value;
     if periodos >= 17 then
        total := total + Q_FLUXOValor17.Value;
     if periodos >= 18 then
        total := total + Q_FLUXOValor18.Value;
     if periodos >= 19 then
        total := total + Q_FLUXOValor19.Value;
     if periodos >= 20 then
        total := total + Q_FLUXOValor20.Value;
     if periodos >= 21 then
        total := total + Q_FLUXOValor21.Value;
     if periodos >= 22 then
        total := total + Q_FLUXOValor22.Value;
     if periodos >= 23 then
        total := total + Q_FLUXOValor23.Value;
     if periodos >= 24 then
        total := total + Q_FLUXOValor24.Value;
     if periodos >= 25 then
        total := total + Q_FLUXOValor25.Value;
     if periodos >= 26 then
        total := total + Q_FLUXOValor26.Value;
     if periodos >= 27 then
        total := total + Q_FLUXOValor27.Value;
     if periodos >= 28 then
        total := total + Q_FLUXOValor28.Value;
     if periodos >= 29 then
        total := total + Q_FLUXOValor29.Value;
     if periodos >= 30 then
        total := total + Q_FLUXOValor30.Value;
     if periodos >= 31 then
        total := total + Q_FLUXOValor31.Value;

        Result := total;

end;

end.
