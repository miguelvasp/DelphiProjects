unit URelConsultaPagFrete;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, gtQrCtrls, QuickRpt, ExtCtrls, Db, DBTables, Wwquery, Wwdatsrc,
  jpeg;

type
  TFRelConsultaPagFrete = class(TForm)
    ConsultaPosicao: TQuickRep;
    QRBand1: TQRBand;
    QRImage1: TgtQRImage;
    QRLabel1: TgtQRLabel;
    QRLabel2: TgtQRLabel;
    QRLabel3: TgtQRLabel;
    QRSysData1: TgtQRSysData;
    QRLabel4: TgtQRLabel;
    QRSysData2: TgtQRSysData;
    QRLabel5: TgtQRLabel;
    QRSysData3: TgtQRSysData;
    QRLabel17: TgtQRLabel;
    QRShape1: TgtQRShape;
    QRLabel22: TgtQRLabel;
    gtQRLabel2: TgtQRLabel;
    gtQRLabel3: TgtQRLabel;
    gtQRLabel5: TgtQRLabel;
    gtQRLabel6: TgtQRLabel;
    gtQRLabel7: TgtQRLabel;
    gtQRLabel8: TgtQRLabel;
    gtQRLabel9: TgtQRLabel;
    QRLabel23: TgtQRLabel;
    QRLabel32: TgtQRLabel;
    QRLabel24: TgtQRLabel;
    QRLabel33: TgtQRLabel;
    Q_FRE: TwwQuery;
    QRShape2: TgtQRShape;
    QRShape3: TgtQRShape;
    gtQRLabel12: TgtQRLabel;
    gtQRLabel13: TgtQRLabel;
    QRLabel39: TgtQRLabel;
    gtQRLabel14: TgtQRLabel;
    gtQRLabel15: TgtQRLabel;
    DS_FRE: TwwDataSource;
    QRGroup1: TQRGroup;
    QRGroup2: TQRGroup;
    gtQRLabel21: TgtQRLabel;
    gtQRLabel20: TgtQRLabel;
    QRGroup3: TQRGroup;
    QRDBText9: TgtQRDBText;
    QRDBText3: TgtQRDBText;
    gtQRDBText1: TgtQRDBText;
    QRDBText4: TgtQRDBText;
    gtQRDBText2: TgtQRDBText;
    QRBand2: TQRBand;
    gtQRLabel11: TgtQRLabel;
    gtQRLabel16: TgtQRLabel;
    QRBand3: TQRBand;
    gtQRLabel17: TgtQRLabel;
    gtQRLabel18: TgtQRLabel;
    gtQRLabel1: TgtQRLabel;
    gtQRDBText3: TgtQRDBText;
    gtQRLabel4: TgtQRLabel;
    gtQRLabel10: TgtQRLabel;
    Q_FREMANI_ID: TAutoIncField;
    Q_FREMANI_VFRETEPAG: TFloatField;
    Q_FREMANI_DATA: TDateTimeField;
    Q_FREMANI_OBS: TStringField;
    Q_FREMOT_ID: TIntegerField;
    Q_FRETRANS_RAZA: TStringField;
    Q_FREMOT_NOME: TStringField;
    Q_FREMOT_VEIC_PLACA: TStringField;
    Q_FREREG_NOME: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure QRGroup2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRGroup3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand3AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelConsultaPagFrete: TFRelConsultaPagFrete;
  SOMATRANSP : real ;
  SOMAGERAL : real ;
implementation
uses UFConsultaPagFrete ;
{$R *.DFM}

procedure TFRelConsultaPagFrete.FormCreate(Sender: TObject);
begin
          SOMAGERAL := 0 ;


          IF TRANS <> '' then
           gtQRLabel2.caption :=  FFConsultaPagFrete.wwDBLookupCombo1.text
          else
           gtQRLabel2.caption :='Não Preenchido' ;

          IF MOT <> '' then
            gtQRLabel5.caption :=  FFConsultaPagFrete.combo_Motorista.text
          else
            gtQRLabel5.caption :=   'Não Preenchido' ;

          IF VEIC <> '' then
            gtQRLabel7.caption :=  FFConsultaPagFrete.wwDBLookupCombo2.text
          else
            gtQRLabel7.caption :='Não Preenchido' ;

          IF REGIAO <> '' then
            gtQRLabel9.caption :=  FFConsultaPagFrete.wwDBLookupCombo3.text
          else
            gtQRLabel9.caption :='Não Preenchido' ;

          IF PERI <> 0.00 then
             qrLabel32.caption :=  FFConsultaPagFrete.DATA1.text
          else
             qrLabel32.caption := 'Não Preenchido'       ;

          IF PERF <> 0.00 then
             qrLabel33.caption :=  FFConsultaPagFrete.DATA2.text
          else
             qrLabel33.caption := 'Não Preenchido' ;

          IF CLI <> '' then
            gtQRLabel4.caption :=  FFConsultaPagFrete.combo_cliente.text
          else
            gtQRLabel4.caption :='Não Preenchido' ;


        Q_FRE.close ;
        Q_FRE.Sql.Clear ;
        Q_FRE.Sql.Add('SELECT A.MANI_ID,A.MANI_VFRETEPAG,A.MANI_DATA,A.MANI_OBS,A.MOT_ID, ');
        Q_FRE.Sql.Add('C.TRANS_RAZA,B.MOT_NOME,B.MOT_VEIC_PLACA,D.REG_NOME  from  ');
        Q_FRE.Sql.Add('MANIFESTO A, TRANSPORTADORA_MOTORISTA B,TRANSPORTADORA C,REGIAO D,NF E ');
        Q_FRE.Sql.Add('where A.NFI_TRANS = ' + '''' + 'S' + '''' );
        Q_FRE.Sql.Add('and A.MOT_ID = B.MOT_ID' );
        Q_FRE.Sql.Add('and A.TRANS_Id = C.TRANS_ID ');
        Q_FRE.Sql.Add('and D.REG_Id = A.REG_ID ');
        Q_FRE.Sql.Add('and E.MANI_Id = A.MANI_Id ');
        Q_FRE.Sql.Add('and A.MANI_ID in ') ;
        Q_FRE.Sql.Add('(select MANI_ID from NF where NFI_CODI is not null');

        IF CLI <> '' then
           Q_FRE.SQL.ADD(' AND NFI_EMIT_CLI = '+'''' + CLI + '''' + ')')
          else
           Q_FRE.SQL.ADD(' ) ');

        ///Q_FRE.Sql.Add('and A.TRANS_ID = ' + inttostr(266) );


        IF TRANS <> '' then
            Q_FRE.SQL.ADD(' AND A.TRANS_ID = ' + '''' + TRANS + '''');
        IF MOT <> '' then
            Q_FRE.SQL.ADD(' AND A.MOT_ID = ' + '''' +  MOT + '''');
        IF VEIC <> '' then
            Q_FRE.SQL.ADD(' AND A.VEIC_ID = ' + '''' +  VEIC + '''');
        IF REGIAO <> '' then
            Q_FRE.SQL.ADD(' AND A.REG_ID = ' + '''' +  REGIAO + '''');
        if PERI <> 0.0 then

            Q_FRE.SQL.ADD(' AND CONVERT(CHAR(10), A.MANI_DATA, 112) >= ' +''''+ formatdatetime('YYYYMMDD',PERI) + '''');
        if PERF <> 0.0 then
            Q_FRE.SQL.ADD(' AND CONVERT(CHAR(10), A.MANI_DATA, 112) <= ' +''''+ formatdatetime('YYYYMMDD',PERF) + '''') ;
            Q_FRE.SQL.ADD(' group by  A.MANI_ID,A.MANI_VFRETEPAG,A.MANI_DATA,A.MANI_OBS,A.MOT_ID,') ;
            Q_FRE.SQL.ADD(' C.TRANS_RAZA,B.MOT_NOME,B.MOT_VEIC_PLACA,D.REG_NOME ') ;
            Q_FRE.Open ;

end;

procedure TFRelConsultaPagFrete.QRGroup2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  gtQRLabel20.caption := 'Transportadora:  ' + Q_FRETRANS_RAZA.asstring ;
  gtQRLabel21.caption :=  Q_FREMOT_NOME.asstring ;
  SOMATRANSP := 0;


end;

procedure TFRelConsultaPagFrete.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   gtQRLabel16.caption := formatfloat('###,###,##0.00',SOMATRANSP) ;
   SOMAGERAL := (SOMAGERAL + SOMATRANSP) ;

end;

procedure TFRelConsultaPagFrete.QRGroup3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   SOMATRANSP := (SOMATRANSP + Q_FREMANI_VFRETEPAG.asfloat);
end;

procedure TFRelConsultaPagFrete.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    gtQRLabel18.caption := formatfloat('###,###,##0.00',SOMAGERAL) ;
end;

procedure TFRelConsultaPagFrete.QRBand3AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
    SOMAGERAL  := 0 ;
    SOMATRANSP := 0 ;
end;

end.
