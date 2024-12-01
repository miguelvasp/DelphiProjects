unit URelChq;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls, Db, DBTables, Wwquery;

type
  TFRelChq = class(TForm)
    RelChq: TQuickRep;
    Title: TQRBand;
    QRLabel4: TQRLabel;
    QRShape1: TQRShape;
    QRLabel3: TQRLabel;
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
    QRLabel11: TQRLabel;
    QRBand1: TQRBand;
    Q_CHQ: TwwQuery;
    Descricao: TQRDBText;
    QRDBText1: TQRDBText;
    Q_CHQNUMERO: TAutoIncField;
    Q_CHQCHEQUENUMERO: TStringField;
    Q_CHQDATAEMISSAO: TDateTimeField;
    Q_CHQFOR_RAZA: TStringField;
    Q_CHQNOME: TStringField;
    Q_CHQVALOR: TFloatField;
    Q_CHQBAN_NOME: TStringField;
    Q_CHQTIPO: TStringField;
    Q_CHQEMITIDO: TStringField;
    Q_CHQMARCADOR: TStringField;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel13: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel14: TQRLabel;
    QRBand2: TQRBand;
    QRShape4: TQRShape;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRDBImage1: TQRDBImage;
    QRLabel17: TQRLabel;
    QRDBText6: TQRDBText;
    Q_CHQC_GERENCIAL: TStringField;
    Q_CHQVENCIMENTO: TDateTimeField;
    QRLabel18: TQRLabel;
    QRDBText7: TQRDBText;
    procedure QRLabel7Print(sender: TObject; var Value: String);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRLabel14Print(sender: TObject; var Value: String);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRLabel16Print(sender: TObject; var Value: String);
    procedure RelChqBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelChq: TFRelChq;
  TOT : real;

implementation

uses CPPMENU, UFILTRELCHQ;

{$R *.DFM}

procedure TFRelChq.QRLabel7Print(sender: TObject; var Value: String);
begin
   Value := FMenu.FUsuario;
end;

procedure TFRelChq.FormCreate(Sender: TObject);
var
virg : string;
begin
   Q_CHQ.SQL.Clear;
   Q_CHQ.SQL.Add('SELECT A.NUMERO, A.CHEQUENUMERO, A.DATAEMISSAO, A.VENCIMENTO, CASE ');
   Q_CHQ.SQL.Add('(SELECT COUNT(*) FROM CPAFORN WHERE FOR_CODI = A.FAVORECIDO) ');
   Q_CHQ.SQL.Add('WHEN 0 THEN A.FAVORECIDO ELSE B.FOR_RAZA END AS FOR_RAZA, ');
   Q_CHQ.SQL.Add('A.NOME, A.VALOR, C.BAN_NOME, A.TIPO, CASE A.EMITIDO ');
   Q_CHQ.SQL.Add('WHEN ' +'''' +'C' +'''' +'THEN ' +'''' +'Cancelado' +'''');
   Q_CHQ.SQL.Add('WHEN ' +'''' +'N' +'''' +'THEN ' +'''' +'Preparado' +'''');
   Q_CHQ.SQL.Add('ELSE ' +'''' +'Emitido' +'''');
   Q_CHQ.SQL.Add('END AS EMITIDO, A.MARCADOR, (select GER.CON_DESC from CPACONT GER INNER JOIN CPAPAGA PAG ON GER.CON_CODI = PAG.ContaGerencial WHERE PAG.NUMERO = A.NUMEROCP ) AS C_GERENCIAL FROM CPACHEQ A LEFT OUTER JOIN ');
   Q_CHQ.SQL.Add('CPAFORN B ON A.FAVORECIDO = B.FOR_CODI LEFT OUTER JOIN ');
   Q_CHQ.SQL.Add('CPABANC C ON A.BANCO = C.BAN_CODI WHERE NUMERO > 0');

   {/************** miguel *************/}
   
        {
           sELECIONA O TIPO DE RELATÓRIO
        }
      case TIPOREL OF
          0 :
          Begin
             Q_CHQ.SQL.Add('  and tipo = ''C''  ');
             QRLabel1.Caption := 'Cheque';
             QRLabel4.Caption := 'Relatório de Cheques';

          end;
          1 :
          Begin
             Q_CHQ.SQL.Add('  and tipo = ''S''  ');
             QRLabel1.Caption := 'Código';
             QRLabel4.Caption := 'Relatório de Pagamento Escritural';
          end;
          2 :
          Begin
             Q_CHQ.SQL.Add('  and tipo = ''B''  ');
             QRLabel1.Caption := 'Código';
             QRLabel4.Caption := 'Relatório de Baixa Automática';
          end;
      end;




      IF FFiltRelChq.RadioGroup2.ItemIndex = 1 then begin
                QRLabel4.Caption := QRLabel4.Caption + ' (Pagamentos não confirmados)';
                QRLabel11.Caption := 'Vencimento';
                QRDBText3.DataField := 'VENCIMENTO';
      end else begin
                QRLabel11.Caption := 'Emissão';
                QRDBText3.DataField := 'DATAEMISSAO';
      end;






   {/************** end ****************/}


   if NUMEROI <> '' then
        Q_CHQ.SQL.Add('AND A.CHEQUENUMERO >= ' +NUMEROI);
   if NUMEROF <> '' then
        Q_CHQ.SQL.Add('AND A.CHEQUENUMERO <= ' +NUMEROF);
   if BANCOI <> '' then
        Q_CHQ.SQL.Add('AND A.BANCO >= ' +'''' +BANCOI +'''');
   if BANCOF <> '' then
        Q_CHQ.SQL.Add('AND A.BANCO <= ' +'''' +BANCOF +'''');
   if FAVORECIDOI <> '' then
        Q_CHQ.SQL.Add('AND A.FAVORECIDO >= ' +'''' +FAVORECIDOI +'''');
   if FAVORECIDOF <> '' then
        Q_CHQ.SQL.Add('AND A.FAVORECIDO <= ' +'''' +FAVORECIDOF +'''');



   //FILTRO DE PAGAMENTOS NAO EFETUADOS

   if FFiltRelChq.RadioGroup2.ItemIndex = 0 then begin
       if DINI <> 0 then
            Q_CHQ.SQL.Add('AND CONVERT(CHAR(10),A.DATAEMISSAO,112) >= ' +'''' +formatdatetime('YYYYMMDD',DINI) +'''');
       if DFIM <> 0 then
            Q_CHQ.SQL.Add('AND CONVERT(CHAR(10),A.DATAEMISSAO,112) <= ' +'''' +formatdatetime('YYYYMMDD',DFIM) +'''');

       if VENC_I <> 0 then
            Q_CHQ.SQL.Add('AND CONVERT(CHAR(10),A.VENCIMENTO,112) >= ' +'''' +formatdatetime('YYYYMMDD',VENC_I) +'''');
       if VENC_F <> 0 then
            Q_CHQ.SQL.Add('AND CONVERT(CHAR(10),A.VENCIMENTO,112) <= ' +'''' +formatdatetime('YYYYMMDD',VENC_F) +'''');

       case SIT of
            0 : Q_CHQ.SQL.Add('AND A.DATAEMISSAO IS NOT NULL ');
            1 : Q_CHQ.SQL.Add('AND EMITIDO = ' +'''' +'C' +'''');
       end;

   end
   else begin
        if DINI <> 0 then
            Q_CHQ.SQL.Add('AND CONVERT(CHAR(10),A.DATAEMISSAO,112) >= ' +'''' +formatdatetime('YYYYMMDD',DINI) +'''');
       if DFIM <> 0 then
            Q_CHQ.SQL.Add('AND CONVERT(CHAR(10),A.DATAEMISSAO,112) <= ' +'''' +formatdatetime('YYYYMMDD',DFIM) +'''');

       if VENC_I <> 0 then
            Q_CHQ.SQL.Add('AND CONVERT(CHAR(10),A.VENCIMENTO,112) >= ' +'''' +formatdatetime('YYYYMMDD',VENC_I) +'''');
       if VENC_F <> 0 then
            Q_CHQ.SQL.Add('AND CONVERT(CHAR(10),A.VENCIMENTO,112) <= ' +'''' +formatdatetime('YYYYMMDD',VENC_F) +'''');


       Q_CHQ.SQL.Add(' AND A.EMITIDO = ''N'' ');

   end;


   {/************** miguel *************/}
   {
        Verificar os filtros situação dos cheques ou pagamentos
   }
      {  if TIPOREL = 0 then
        begin
           case SIT of
                0 : Q_CHQ.SQL.Add('AND A.DATAEMISSAO IS NOT NULL ');
                1 : Q_CHQ.SQL.Add('AND EMITIDO = ' +'''' +'C' +'''');
           end;
        end;  }
   {/************** end ****************/}


   case ORD of
        0 : Q_CHQ.SQL.Add('ORDER BY A.DATAEMISSAO, B.FOR_RAZA, A.CHEQUENUMERO');
        1 : Q_CHQ.SQL.Add('ORDER BY B.FOR_RAZA');
        2 : Q_CHQ.SQL.Add('ORDER BY C.BAN_NOME');
        3 : Q_CHQ.SQL.Add('ORDER BY A.CHEQUENUMERO');
        4 : Q_CHQ.SQL.Add('ORDER BY C_GERENCIAL');
   end;
   Q_CHQ.Open;
   virg := '';

end;

procedure TFRelChq.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Q_CHQ.Close;
   BANCOI := '';
   BANCOF := '';
   NUMEROI := '';
   NUMEROF := '';
   FAVORECIDOI := '';
   FAVORECIDOF := '';
   DINI := 0;
   DFIM := 0;
   ORD := 0;
   SIT := 0;
   FILTRO := '';
end;

procedure TFRelChq.QRLabel14Print(sender: TObject; var Value: String);
begin
   value := FILTRO;
end;

procedure TFRelChq.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   if Q_CHQEMITIDO.asstring <> 'Cancelado' then
        TOT := TOT + Q_CHQVALOR.value;



end;

procedure TFRelChq.QRLabel16Print(sender: TObject; var Value: String);
begin
   Value := formatfloat('###,###,##0.00',TOT);
end;

procedure TFRelChq.RelChqBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
   TOT := 0;
end;

end.
