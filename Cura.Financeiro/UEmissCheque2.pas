unit UEmissCheque2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls, Db, DBTables, Wwquery, Wwdatsrc;

type
  TfrmEmissCheque2 = class(TForm)
    DS_ITEMLOTEPAGA: TwwDataSource;
    DS_LOTEPAGA: TwwDataSource;
    Q_LOTEPAGA: TwwQuery;
    Q_LOTEPAGANumero: TIntegerField;
    Q_LOTEPAGAChequeNumero: TStringField;
    Q_LOTEPAGADataEmissao: TDateTimeField;
    Q_LOTEPAGAFavorecido: TStringField;
    Q_LOTEPAGANome: TStringField;
    Q_LOTEPAGAValor: TFloatField;
    Q_LOTEPAGABanco: TStringField;
    Q_LOTEPAGATipo: TStringField;
    Q_LOTEPAGAEmitido: TStringField;
    Q_LOTEPAGAMarcador: TStringField;
    Q_AUXI: TwwQuery;
    Q_ITEMLOTEPAGA: TwwQuery;
    Q_ITEMLOTEPAGATitulo: TStringField;
    Q_ITEMLOTEPAGASequencia: TAutoIncField;
    Q_ITEMLOTEPAGASeqLotePaga: TIntegerField;
    Q_ITEMLOTEPAGAValorPago: TFloatField;
    Q_ITEMLOTEPAGAValorDescAcresc: TFloatField;
    DS_CPAPAGA: TwwDataSource;
    Q_CPAPAGA: TwwQuery;
    Q_CPAPAGANumero: TIntegerField;
    Q_CPAPAGADocumento: TStringField;
    Q_CPAPAGAFornecedor: TStringField;
    Q_CPAPAGARazao: TStringField;
    Q_CPAPAGAContaGerencial: TStringField;
    Q_CPAPAGAValorTitulo: TFloatField;
    Q_CPAPAGADescAcresc: TFloatField;
    Q_CPAPAGAValorLiquido: TFloatField;
    Q_CPAPAGAVencimento: TDateTimeField;
    Q_CPAPAGABancoConta: TStringField;
    Q_CPAPAGAEmissao: TDateTimeField;
    Q_CPAPAGAMoeda: TStringField;
    Q_CPAPAGADataMoeda: TDateTimeField;
    Q_CPAPAGAMoedaOriginal: TStringField;
    Q_CPAPAGADataMoedaOriginal: TDateTimeField;
    Q_CPAPAGAValorOriginal: TFloatField;
    Q_CPAPAGAVencimentoPrevisto: TDateTimeField;
    Q_CPAPAGAHistorico: TStringField;
    Q_CPAPAGAFlag: TStringField;
    Q_CPAPAGASituacao: TStringField;
    Q_CPAPAGASaldo: TFloatField;
    Q_CPAPAGAFilial: TStringField;
    Q_CPAPAGAConferencia: TStringField;
    Q_CPAPAGAValor: TFloatField;
    Q_AUXI2: TwwQuery;
    Q_Auxiliar: TwwQuery;
    Q_Det: TwwQuery;
    Q_DetNumeroCp: TIntegerField;
    Q_DetCodDescAcres: TStringField;
    Q_DetData: TDateTimeField;
    Q_DetDescAcresc: TFloatField;
    Q_DetHistorico: TStringField;
    Q_DetSequencia: TIntegerField;
    QR_CPDECHEQUE: TQuickRep;
    QRGroup1: TQRGroup;
    qrdbtext1: TQRDBText;
    QRLabel18: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText13: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel10: TQRLabel;
    QRShape6: TQRShape;
    QRGroup2: TQRGroup;
    QRDBText6: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    procedure FormCreate(Sender: TObject);
    procedure qrdbtext1Print(sender: TObject; var Value: String);
    procedure QRDBText12Print(sender: TObject; var Value: String);
    procedure QRDBText13Print(sender: TObject; var Value: String);
    procedure QRGroup1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRDBText4Print(sender: TObject; var Value: String);
    procedure QR_CPDECHEQUEAfterPrint(Sender: TObject);
    procedure Q_CPAPAGAAfterScroll(DataSet: TDataSet);
    procedure QR_CPDECHEQUEBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
       function NumeroParaExtenso(parmNumero: Real): string;
    function ConversaoRecursiva(N: LongWord): string;
  public
  x : integer ;
  ContaBanda : Integer ;
  end;

var
  frmEmissCheque2: TfrmEmissCheque2;
  XVALOR : STRING ;
  PARMNUMERO : REAL ;
  type
  TNumeroStr = string[13];

const
  Unidades: array[1..19] of TNumeroStr = ('um', 'dois', 'três', 'quatro',
    'cinco', 'seis', 'sete', 'oito', 'nove', 'dez', 'onze', 'doze',
    'treze', 'quatorze', 'quinze', 'dezesseis', 'dezessete', 'dezoito',
    'dezenove');

  Dezenas: array[1..9] of TNumeroStr = ('dez', 'vinte', 'trinta', 'quarenta',
    'cinqüenta', 'sessenta', 'setenta', 'oitenta', 'noventa');

  Centenas: array[1..9] of TNumeroStr = ('cem', 'duzentos', 'trezentos',
    'quatrocentos', 'quinhentos', 'seiscentos', 'setecentos', 'oitocentos',
    'novecentos');

  ErrorString = 'Valor fora da faixa';
  Min = 0.01;
  Max = 4294967295.99;
  Moeda = ' real ';
  Moedas = ' reais ';
  Centesimo = ' centavo ';
  Centesimos = ' centavos ';
implementation
  USES LOTEPAGAMENTO ;
{$R *.DFM}

function TfrmEmissCheque2.ConversaoRecursiva(N: LongWord): string;
begin
 case N of
    1..19:
     Result := Unidades[N];
    20, 30, 40, 50, 60, 70, 80, 90:
      Result := Dezenas[N div 10] + ' ';
    21..29, 31..39, 41..49, 51..59, 61..69, 71..79, 81..89, 91..99:
      Result := Dezenas[N div 10] + ' e ' + ConversaoRecursiva(N mod 10);
    100, 200, 300, 400, 500, 600, 700, 800, 900:
      Result := Centenas[N div 100] + ' ';
    101..199:
      Result := ' cento e ' + ConversaoRecursiva(N mod 100);
    201..299, 301..399, 401..499, 501..599, 601..699, 701..799, 801..899, 901..999:
      Result := Centenas[N div 100] + ' e ' + ConversaoRecursiva(N mod 100);
    1000..999999:
      Result := ConversaoRecursiva(N div 1000) + ' mil ' +
        ConversaoRecursiva(N mod 1000);
    1000000..1999999:
      Result := ConversaoRecursiva(N div 1000000) + ' milhão '
                  + ConversaoRecursiva(N mod 1000000);
    2000000..999999999:
      Result := ConversaoRecursiva(N div 1000000) + ' milhões '
                  + ConversaoRecursiva(N mod 1000000);
    1000000000..1999999999:
      Result := ConversaoRecursiva(N div 1000000000) + ' bilhão '
                  + ConversaoRecursiva(N mod 1000000000);
    2000000000..4294967295:
      Result := ConversaoRecursiva(N div 1000000000) + ' bilhões '
                  + ConversaoRecursiva(N mod 1000000000);
 end;
end;

procedure TfrmEmissCheque2.FormCreate(Sender: TObject);
var SQL:String;
begin
//IF NUMEROLOTE <> '' THEN BEGIN
   {Q_LOTEPAGA.Close ;
   Q_LOTEPAGA.SQL.CLEAR ;
   Q_LOTEPAGA.SQL.ADD ('SELECT * FROM LOTEPAGA WHERE NUMLOTE >= ' + '''' + NUMEROLOTE + '''' ) ;
   Q_LOTEPAGA.OPEN ; }

   SQL := ' SELECT EMP_NOME FROM CPAPARA ';
   Q_AUXi.SQL.CLEAR;
   Q_AUXi.SQL.ADD(SQL);
   Q_AUXi.OPEN;

   QRLabel7.Caption := Q_AUXi.FieldByName('EMP_NOME').AsString;

   Q_LOTEPAGA.OPEN ;
   Q_CPAPAGA.Open ;

  { Q_EMPR.CLOSE ;
   Q_EMPR.SQL.CLEAR ;
   Q_EMPR.SQL.ADD ('SELECT Emp_Razao , Emp_MunFiscal  FROM EMPRESA') ;
   Q_EMPR.Open ;    }

//END ;
end;

function TfrmEmissCheque2.NumeroParaExtenso(parmNumero: Real): string;
begin
 if (parmNumero >= Min) and (parmNumero <= Max) then
    begin
      {Tratar reais}
      Result := ConversaoRecursiva(Round(Int(parmNumero)));
      if Round(Int(parmNumero)) = 1 then
        Result := Result + Moeda
      else
        if Round(Int(parmNumero)) <> 0 then
          Result := Result + Moedas;

      {Tratar centavos}
      if not(Frac(parmNumero) = 0.00) then
      begin
        if Round(Int(parmNumero)) <> 0 then
          Result := Result + ' e ';
        Result := Result + ConversaoRecursiva(Round(Frac(parmNumero) * 100));
        if (Round(Frac(parmNumero) * 100) = 1) then
          Result := Result + centesimo
        else
          Result := Result + centesimos;
      end;
    end
  else
    raise ERangeError.CreateFmt('%g ' + ErrorString + ' %g..%g',
      [parmNumero, Min, Max]);
end;

procedure TfrmEmissCheque2.qrdbtext1Print(sender: TObject; var Value: String);
const
letra = '*' ;
begin

        XVALOR := NumeroParaExtenso(STRTOFLOAT(XVALOR));
        //XVALOR := VALUE ;
        x := 0 ;
        if length (xvalor) < 70 then begin
           x := length(xvalor) + 1;
           while  x <= 70 do  begin
              xvalor := xvalor + letra ;
              x := x + 1 ;
           end ;
        end;
        value := xvalor ;

end;

procedure TfrmEmissCheque2.QRDBText12Print(sender: TObject; var Value: String);
CONST
LETRA = '*' ;
begin
        XVALOR := COPY(trim(XVALOR), 71 , 140);
        //IF XVALOR <> '' THEN BEGIN
           if length (xvalor) < 74 then begin
              x := length(xvalor) + 1;
              while  x <= 74 do  begin
                     xvalor := xvalor + letra ;
                     x := x + 1 ;
              end ;
           end;
        //END ;
        value := xvalor ;

end;

procedure TfrmEmissCheque2.QRDBText13Print(sender: TObject; var Value: String);
var
dia : string ;
//mes : ARRAY[1..12] of string ;
ano : string ;
xmes : string ;
begin
     dia := copy(DATETOSTR(Q_LOTEPAGADataEmissao.ASDATETIME),1,2) ;
     xmes := copy(DATETOSTR(Q_LOTEPAGADataEmissao.ASDATETIME),4,2) ;
     ANO := copy(DATETOSTR(Q_LOTEPAGADataEmissao.ASDATETIME),7,4) ;

     if xmes = '01' then xmes := 'Janeiro'
     else if xmes = '02' then xmes := 'Fevereiro'
     else if xmes = '03' then xmes := 'Março'
     else if xmes = '04' then xmes := 'Abril'
     else if xmes = '05' then xmes := 'Maio'
     else if xmes = '06' then xmes := 'Junho'
     else if xmes = '07' then xmes := 'Julho'
     else if xmes = '08' then xmes := 'Agosto'
     else if xmes = '09' then xmes := 'Setembro'
     else if xmes = '10' then xmes := 'Outubro'
     else if xmes = '11' then xmes := 'Novembro'
     else if xmes = '12' then xmes := 'Dezembro' ;

     value :=  (dia + ' de ' +  xmes + ' de ' +  ano ) ;
end;

procedure TfrmEmissCheque2.QRGroup1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  XVALOR := (Q_LOTEPAGAVALOR.ASSTRING) ;
  ContaBanda := 0 ;


  QRLABEL9.caption :=   'São Paulo, ' + FormatDateTime('D "de" MMMM "de" yyyy',date)    ;
end;

procedure TfrmEmissCheque2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Q_auxi.close;
   Q_auxi.sql.Clear;
   Q_auxi.sql.Add(' UPDATE CPACHEQ SET');
   Q_auxi.sql.Add(' MARCADOR = ' + '''' + '' + '''' );
   Q_Auxi.execsql;



        Q_CPAPAGA.CLOSE ;
       //// Q_EMPR.CLOSE ;

       Action := caFree;
       frmEmissCheque2 := nil;
end;

procedure TfrmEmissCheque2.QRDBText4Print(sender: TObject; var Value: String);
begin
           Q_AUXI2.close ;
           Q_AUXI2.SQL.clear ;
           Q_AUXI2.SQL.Add('select  FOR_RAZA from CPAFORN ') ;
           Q_AUXI2.SQL.Add(' where FOR_CODI = '  +  '''' + Q_LOTEPAGAFavorecido.asstring + '''') ;
           Q_AUXI2.Open ;


           IF Q_AUXI2.fieldbyname('FOR_RAZA').asstring   = '' then begin
               Q_AUXI2.close ;
               Q_AUXI2.SQL.clear ;
               Q_AUXI2.SQL.Add('select  BAN_NOME,BAN_AGEN,BAN_CARTAGECC from CPABANC ') ;
               Q_AUXI2.SQL.Add(' where BAN_CODI = '  +  '''' + Q_LOTEPAGAFavorecido.asstring + '''') ;
               Q_AUXI2.Open ;

                value :=  (Q_AUXI2.fieldbyname('BAN_NOME').asstring) + '  /  ' +
                          (Q_AUXI2.fieldbyname('BAN_AGEN').asstring) + '  /  ' +
                          (Q_AUXI2.fieldbyname('BAN_CARTAGECC').asstring) ;
           end else  value :=  Q_AUXI2.fieldbyname('FOR_RAZA').asstring ;
end;

procedure TfrmEmissCheque2.QR_CPDECHEQUEAfterPrint(Sender: TObject);
begin
  Q_AUXI.SQL.Clear;
     Q_AUXI.SQL.Add('UPDATE CPABANC SET BAN_UCHE = ' +Q_LOTEPAGAChequeNumero.AsString);
     Q_AUXI.SQL.Add('WHERE BAN_CODI = ' +'''' +Q_LOTEPAGABanco.AsString +'''');
     Q_AUXI.ExecSql;

     Q_auxi.close;
     Q_auxi.sql.Clear;
     Q_auxi.sql.Add(' UPDATE CPACHEQ SET DataEmissao = ' + '''' + FormatDateTime('mm/dd/yyyy',NOW) + '''' ) ;
     Q_auxi.sql.Add(' where MARCADOR = ' + '''' + '*' + '''') ;
     Q_auxi.sql.Add(' AND TIPO  = ' + '''' + 'C' + '''') ;
     Q_Auxi.ExecSql;

     Q_auxi.close;
     Q_auxi.sql.Clear;
     Q_auxi.sql.Add('SELECT A.NUMEROCP,B.ChequeNumero,B.NUMERO FROM CPAICHE A,CPACHEQ B') ;
     Q_auxi.sql.Add('where A.NUMERO = B.Numero' );
     Q_auxi.sql.Add(' and  B.MARCADOR = ' + '''' + '*' + '''') ;
     Q_auxi.sql.Add(' and  B.TIPO = ' + '''' + 'C' + '''') ;
     Q_Auxi.open;

     Q_Auxi.first ;
     While not (Q_Auxi.eof)  do begin

           Q_auxi2.close;
           Q_auxi2.sql.Clear;
           Q_auxi2.sql.Add(' UPDATE CPAIPAG SET Documento = ' + '''' + Q_Auxi.fieldbyname('ChequeNumero').asstring + '''' ) ;
           Q_auxi2.sql.Add(' where Numero = ' +  Q_Auxi.fieldbyname('NUMEROCP').asstring);
           Q_auxi2.sql.Add(' and   Sequencia = ' +  Q_Auxi.fieldbyname('NUMEROCP').asstring);
           Q_Auxi2.ExecSql;



           Q_auxi2.close;
           Q_auxi2.sql.Clear;
           Q_auxi2.sql.Add(' UPDATE CPACHEQ SET EMITIDO = ' + '''' + 'S' + '''') ;
           Q_auxi2.sql.Add(' WHERE  NUMERO = ' + Q_Auxi.fieldbyname('NUMERO').asstring);
           Q_Auxi2.ExecSql;





         Q_Auxi.next ;
     end ;
end;

procedure TfrmEmissCheque2.Q_CPAPAGAAfterScroll(DataSet: TDataSet);
begin
 Q_auxi.sql.Add(' , EMITIDO = ' + '''' + 'S' + '''') ;
end;

procedure TfrmEmissCheque2.QR_CPDECHEQUEBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  XVALOR := (Q_LOTEPAGAVALOR.ASSTRING) ;
 // qrdbtext1.Caption := NumeroParaExtenso(STRTOFLOAT(XVALOR));
end;

end.
