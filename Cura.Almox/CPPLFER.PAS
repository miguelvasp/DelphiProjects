unit CPPLFER;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, DBTables, DB, Wwdatsrc, Wwquery, Wwtable, quickrpt,
  Qrctrls;

type
  TFListFeriados = class(TForm)
    QR_FERI: TQuickRep;
    Title: TQRBand;
    Detail: TQRBand;
    QRLabel4: TQRLabel;
    QRShape1: TQRShape;
    Data: TQRDBText;
    Descricao: TQRDBText;
    QRLabel3: TQRLabel;
    Q_FERI: TwwQuery;
    DS_FERI: TwwDataSource;
    DiaUtil: TQRDBText;
    Q_FERIFER_DATA: TDateTimeField;
    Q_FERIFER_DESC: TStringField;
    Q_FERIFER_DUTIL: TStringField;
    QRShape2: TQRShape;
    QRSysData4: TQRSysData;
    QRSysData3: TQRSysData;
    QRSysData5: TQRSysData;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRShape3: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBImage1: TQRDBImage;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
   procedure DiaUtilPrint(sender: TObject; var Value: string);
    procedure QR_FERIBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FListFeriados: TFListFeriados;

implementation
uses CPPFILFER, CPPMENU ;
{$R *.DFM}

procedure TFListFeriados.DiaUtilPrint(sender: TObject; var Value: string);
begin
  if Value = 'S' then
   Value := 'Sim'
  else
   Value := 'Não'
end;





procedure TFListFeriados.FormCreate(Sender: TObject);
var StrAnd : string ;
begin
  Q_FERI.close ;
  Q_FERI.SQL.clear ;
  Q_FERI.SQL.ADD('select * from CPAFERI');
  StrAnd := ' where ' ;
  if DATAI <> 0.0 then  begin
     Q_FERI.SQL.ADD( StrAnd + ' FER_DATA >= '+ ''''+ FormatDateTime('MM/DD/YYYY',DATAI ) + '''' );
     StrAnd := ' and ' ;
  end ;
  if DATAF <> 0.0 then begin
     Q_FERI.SQL.ADD( StrAnd + ' FER_DATA <= '+ '''' + FormatDateTime('MM/DD/YYYY',DATAF ) + '''' );
     StrAnd := ' and ' ;
  end ;
  Q_FERI.open ;
  QRLabel7.caption := FMenu.FUsuario;
  
end;

procedure TFListFeriados.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Q_FERI.close ;
  action := cafree ;
end;




procedure TFListFeriados.QR_FERIBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
Var
     vLogo : TBlobField;
begin
//
// Seleciona o Nome da Empresa
//
   QRLabel7.caption := FMenu.FUsuario ;
end;

end.
