unit ufrmRelNaoConformidades;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, wwdblook, Mask, Db, ADODB, ExtCtrls, QuickRpt, Qrctrls;

type
  TfrmRelNaoConformidades = class(TForm)
    qrRel: TADOQuery;
    qrRelRec_ID: TAutoIncField;
    qrRelNFIS: TIntegerField;
    qrRelSerie: TStringField;
    qrRelDt_Entrada: TDateTimeField;
    qrRelCFO: TStringField;
    qrRelCfa_Sequ: TIntegerField;
    qrRelDt_Emiss: TDateTimeField;
    qrRelCond_Pgto_ID: TIntegerField;
    qrRelLocal_ID: TIntegerField;
    qrRelICMS: TFloatField;
    qrRelIPI: TFloatField;
    qrRelCodICMS: TStringField;
    qrRelCodIPI: TStringField;
    qrRelVl_ICMS: TFloatField;
    qrRelVl_IPI: TFloatField;
    qrRelBase_ICMS: TFloatField;
    qrRelBase_IPI: TFloatField;
    qrRelFrete: TStringField;
    qrRelVl_Frete: TFloatField;
    qrRelVl_Seguro: TFloatField;
    qrRelVl_OutrasDesp: TFloatField;
    qrRelVl_TotMer: TFloatField;
    qrRelVl_TotNF: TFloatField;
    qrRelStatus: TStringField;
    qrRelFor_Codi: TStringField;
    qrRelFIL_CODI: TStringField;
    qrRelCONFERE_QTDE: TStringField;
    qrRelCONFERE_VALIDADE: TStringField;
    qrRelCONFERE_LOTE: TStringField;
    qrRelCONFERE_HORARIO: TStringField;
    qrRelCONFERE_TEMPERATURA: TStringField;
    qrRelCONFERE_CONDICAO: TStringField;
    qrRelCONFERE_NUMERO_LOTE: TStringField;
    qrRelCONFERE_REGISTRO: TStringField;
    qrRelCONFERE_OBS: TStringField;
    qrRelCONFERE_GRAUS: TFloatField;
    qrRelCONFERE_NC: TStringField;
    qrRelCONFERE_OCORRENCIA: TStringField;
    qrRelCONFERE_CONSEQUENCIA: TStringField;
    qrRelCONFERE_ACAO: TStringField;
    qrRelCONFERE_RESPONSAVEL: TStringField;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    wwDBLookupCombo1: TwwDBLookupCombo;
    Button1: TButton;
    qrForn: TADOQuery;
    qrFornFOR_CODI: TStringField;
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRShape2: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData3: TQRSysData;
    QRSysData4: TQRSysData;
    Filtros: TQRMemo;
    QRLabel5: TQRLabel;
    QRShape1: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel17: TQRLabel;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelNaoConformidades: TfrmRelNaoConformidades;

implementation

uses UMenu;

{$R *.DFM}

procedure TfrmRelNaoConformidades.FormCreate(Sender: TObject);
begin
   qrForn.Open;
end;

procedure TfrmRelNaoConformidades.Button1Click(Sender: TObject);
begin
   with qrRel do begin
       close;
       sql.Clear;
       sql.Add(
         ' SELECT '+
         '         * '+
         ' FROM Rec_NF '+
         ' WHERE CONFERE_NC = ''S'' '
       );

       if MaskEdit1.Text <> '  /  /    ' then
         sql.Add(' and convet(varchar, dt_entrada, 112) >= ' + QuotedStr(FormatDateTime('YYYYMMDD', StrToDate(MaskEdit1.Text)))  );

       if MaskEdit2.Text <> '  /  /    ' then
         sql.Add(' and convet(varchar, dt_entrada, 112) <= ' + QuotedStr(FormatDateTime('YYYYMMDD', StrToDate(MaskEdit2.Text)))  );

       if wwDBLookupCombo1.Text <> '' then
         sql.Add(' and for_codi = ' + QuotedStr(wwDBLookupCombo1.LookupValue));

       sql.Add('order by dt_entrada');
       Open;
   end;
end;

procedure TfrmRelNaoConformidades.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
   frmRelNaoConformidades := nil;
end;

end.
