unit URelConsultaTonelagemSINT;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, gtQrCtrls, QuickRpt, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery;

type
  TFRelConsultaTonelagemSINT = class(TForm)
    TONELAGEM: TQuickRep;
    QRBand1: TQRBand;
    QRImage1: TgtQRImage;
    QRLabel2: TgtQRLabel;
    gtQRLabel4: TgtQRLabel;
    gtQRLabel5: TgtQRLabel;
    QRLabel3: TgtQRLabel;
    QRSysData1: TgtQRSysData;
    QRSysData2: TgtQRSysData;
    QRSysData3: TgtQRSysData;
    QRLabel5: TgtQRLabel;
    QRLabel4: TgtQRLabel;
    QRBand2: TQRBand;
    gtQRShape6: TgtQRShape;
    gtQRLabel2: TgtQRLabel;
    gtQRShape1: TgtQRShape;
    QRLabel39: TgtQRLabel;
    gtQRShape2: TgtQRShape;
    gtQRShape3: TgtQRShape;
    gtQRDBText15: TgtQRDBText;
    gtQRDBText1: TgtQRDBText;
    Q_TONE: TwwQuery;
    DS_TONE: TwwDataSource;
    Q_TONEDATa: TDateTimeField;
    Q_TONETOTAL: TFloatField;
    QRBand3: TQRBand;
    gtQRShape4: TgtQRShape;
    gtQRDBText2: TgtQRDBText;
    gtQRLabel1: TgtQRLabel;
    Q_TONE2: TwwQuery;
    Q_TONE2TOTAL: TFloatField;
    QRShape2: TgtQRShape;
    Q_AUX: TwwQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelConsultaTonelagemSINT: TFRelConsultaTonelagemSINT;

implementation
uses UMENU ,UFConsultaTonelagem;
{$R *.DFM}

procedure TFRelConsultaTonelagemSINT.FormCreate(Sender: TObject);
var
  EXTENSO : string ;
begin
  Q_TONe.open ;
  Q_TONe2.open ;
  Q_TONE2.last ;


  EXTENSO := FormatDateTime('mmmm',(DataInicial)) + '/' + FormatDateTime('yyyy',DataInicial)    ;
  gtqrlabel5.caption :=   UPPERCASE(EXTENSO)      ;


end;





procedure TFRelConsultaTonelagemSINT.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Q_TONe.close ;
  Q_TONe2.close ;

  Q_aux.close;
  Q_aux.Sql.Clear;
  Q_aux.Sql.Add('DELETE TONELAGEM WHERE CH = ' + FMenu.SqlUsuariosCH.asstring);
  Q_aux.ExecSql;


  action := cafree  ;
end;

end.
