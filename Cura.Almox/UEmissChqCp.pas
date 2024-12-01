unit UEmissChqCp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Wwdatsrc, DBTables, Wwtable, Wwquery, QuickRpt, Qrctrls, ExtCtrls;

type
  TFEmissaoCopia = class(TForm)
    QR_CPDECHEQUE: TQuickRep;
    Q_LOTEPAGA: TwwQuery;
    Q_ITEMLOTEPAGA: TwwQuery;
    DS_LOTEPAGA: TwwDataSource;
    DS_ITEMLOTEPAGA: TwwDataSource;
    Q_ITEMLOTEPAGATitulo: TStringField;
    Q_ITEMLOTEPAGASequencia: TAutoIncField;
    Q_ITEMLOTEPAGASeqLotePaga: TIntegerField;
    Q_ITEMLOTEPAGAValorPago: TFloatField;
    Q_ITEMLOTEPAGAValorDescAcresc: TFloatField;
    Q_CPAPAGA: TwwQuery;
    DS_CPAPAGA: TwwDataSource;
    QRDBText6: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRBand1: TQRBand;
    qrdbtext1: TQRDBText;
    QRLabel18: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRShape6: TQRShape;
    Q_Auxiliar: TwwQuery;
    QRBand2: TQRBand;
    QRShape10: TQRShape;
    QRShape12: TQRShape;
    QRLabel8: TQRLabel;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape4: TQRShape;
    QRLabel4: TQRLabel;
    QRShape1: TQRShape;
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
    QRLabel7: TQRLabel;
    Q_AUXI2: TwwQuery;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText13: TQRDBText;
    Q_AUXI: TwwQuery;
    QRBand3: TQRBand;
    qrDesconto: TwwQuery;
    qrDescontodesconto: TFloatField;
    lbDesconto: TQRLabel;
    qrContaGerencial: TwwQuery;
    Q_CPAPAGACGerDesc: TStringField;
    QRDBText7: TQRDBText;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure QR_CPDECHEQUEBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    function NumeroParaExtenso(parmNumero: Real): string;
    function ConversaoRecursiva(N: LongWord): string;
    procedure qrdbtext1Print(sender: TObject; var Value: String);
    procedure QRDBText12Print(sender: TObject; var Value: String);
    procedure QRDBText13Print(sender: TObject; var Value: String);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRSubDetail2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail4BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRDBText4Print(sender: TObject; var Value: String);
    procedure QRDBText8Print(sender: TObject; var Value: String);
    procedure QR_CPDECHEQUEAfterPrint(Sender: TObject);
    procedure Q_CPAPAGAAfterScroll(DataSet: TDataSet);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  x : integer ;
  ContaBanda : Integer ; 
  end;
var
  FEmissaoCopia: TFEmissaoCopia;
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
 USES LOTEPAGAMENTO, U_ChBor ;
{$R *.DFM}

procedure TFEmissaoCopia.FormCreate(Sender: TObject);
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


END;
procedure TFEmissaoCopia.QR_CPDECHEQUEBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  XVALOR := (Q_LOTEPAGAVALOR.ASSTRING) ;
 // qrdbtext1.Caption := NumeroParaExtenso(STRTOFLOAT(XVALOR));

end;


function TFEmissaoCopia.NumeroParaExtenso(parmNumero: Real): string;
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

function TFEmissaoCopia.ConversaoRecursiva(N: LongWord): string;
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
procedure TFEmissaoCopia.qrdbtext1Print(sender: TObject; var Value: String);
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

procedure TFEmissaoCopia.QRDBText12Print(sender: TObject; var Value: String);
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

procedure TFEmissaoCopia.QRDBText13Print(sender: TObject; var Value: String);
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

procedure TFEmissaoCopia.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  XVALOR := (Q_LOTEPAGAVALOR.ASSTRING) ;
  ContaBanda := 0 ;
  QRLabel13.Caption := FChBor.DBLC_REC_RAZA.Text;

  QRLABEL9.caption :=   'São Paulo, ' + FormatDateTime('D "de" MMMM "de" yyyy',date)    ;
end ;

procedure TFEmissaoCopia.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Q_auxi.close;
   Q_auxi.sql.Clear;
   Q_auxi.sql.Add(' UPDATE CPACHEQ SET');
   Q_auxi.sql.Add(' MARCADOR = ' + '''' + '' + '''' );
   Q_Auxi.execsql;



        Q_CPAPAGA.CLOSE ;
       //// Q_EMPR.CLOSE ;
end ;
procedure TFEmissaoCopia.QRSubDetail2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
 { Q_Auxiliar.close ;
  Q_Auxiliar.Sql.Clear ;
  Q_AUxiliar.Sql.Add('select count(*) as XCONTA FROM CPAPAGA A , ItemLotePaga B ') ;
  Q_AUxiliar.Sql.Add('where A.Documento = B.Titulo and B.SeqLotePaga = '+ Q_LOTEPAGASequencia.asstring ) ;
  Q_Auxiliar.Open ;

  IF Q_Auxiliar.fieldbyname('XCONTA').asinteger + CONTABANDA >= 11 then printband := false
  else begin
     ContaBanda := ContaBanda + 1 ;
     Printband := true ;
  end ;

  Q_Auxiliar.close ;  }

end;

procedure TFEmissaoCopia.QRSubDetail3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  {Q_Auxiliar.close ;
  Q_Auxiliar.Sql.Clear ;
  Q_AUxiliar.Sql.Add('select count(*) as XCONTA FROM CPAPAGA A , ItemLotePaga B ') ;
  Q_AUxiliar.Sql.Add('where A.Documento = B.Titulo and B.SeqLotePaga = '+ Q_LOTEPAGASequencia.asstring ) ;
  Q_Auxiliar.Open ;

  IF Q_Auxiliar.fieldbyname('XCONTA').asinteger + CONTABANDA >= 11 then printband := false
  else begin
     ContaBanda := ContaBanda + 1 ;
     Printband := true ;
  end ;

  Q_Auxiliar.close ;   }

end;

procedure TFEmissaoCopia.QRSubDetail4BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
 { Q_Auxiliar.close ;
  Q_Auxiliar.Sql.Clear ;
  Q_AUxiliar.Sql.Add('select count(*) as XCONTA FROM CPAPAGA A , ItemLotePaga B ') ;
  Q_AUxiliar.Sql.Add('where A.Documento = B.Titulo and B.SeqLotePaga = '+ Q_LOTEPAGASequencia.asstring ) ;
  Q_Auxiliar.Open ;

  IF Q_Auxiliar.fieldbyname('XCONTA').asinteger + CONTABANDA >= 11 then printband := false
  else begin
     ContaBanda := ContaBanda + 1 ;
     Printband := true ;
  end ;

  Q_Auxiliar.close ;     }

end;

procedure TFEmissaoCopia.QRDBText4Print(sender: TObject;
  var Value: String);
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


           //SE FOR MAIS D UM PAGAMENTO COLOCAR NOME DO BANCO
           Q_CPAPAGA.Last;
           IF Q_CPAPAGA.RecordCount > 1 then
                Value := FChBor.DBLC_REC_RAZA.Text;
           Q_CPAPAGA.First;


end;

procedure TFEmissaoCopia.QRDBText8Print(sender: TObject;
  var Value: String);
begin
   {        Q_AUXI2.close ;
           Q_AUXI2.SQL.clear ;
           Q_AUXI2.SQL.Add(' select  FOR_RAZA from CPAFORN ') ;
           Q_AUXI2.SQL.Add(' where FOR_CODI = '  +  '''' + Q_CPAPAGAFornecedor.asstring + '''') ;
           Q_AUXI2.Open ;
           value :=  Q_AUXI2.fieldbyname('FOR_RAZA').asstring ;
    }
end;

procedure TFEmissaoCopia.QR_CPDECHEQUEAfterPrint(Sender: TObject);
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
           Q_auxi2.sql.Add(' UPDATE CPACHEQ SET EMITIDO = ' + '''' + 'S' + '''') ;
           Q_auxi2.sql.Add(' WHERE  NUMERO = ' + Q_Auxi.fieldbyname('NUMERO').asstring);
           Q_Auxi2.ExecSql;

           
           Q_auxi2.close;
           Q_auxi2.sql.Clear;
           Q_auxi2.sql.Add(' UPDATE CPAIPAG SET Documento = ' + '''' + Q_Auxi.fieldbyname('ChequeNumero').asstring + '''' ) ;
           Q_auxi2.sql.Add(' where Numero = ' +  Q_Auxi.fieldbyname('NUMEROCP').asstring);
           Q_auxi2.sql.Add(' and   Sequencia = ' +  Q_Auxi.fieldbyname('NUMEROCP').asstring);
           Q_Auxi2.ExecSql;

           

         Q_Auxi.next ;
     end ;

end;

procedure TFEmissaoCopia.Q_CPAPAGAAfterScroll(DataSet: TDataSet);
begin
     Q_auxi.sql.Add(' , EMITIDO = ' + '''' + 'S' + '''') ;
end;

procedure TFEmissaoCopia.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
     var desconto : Double;
begin

  qrDesconto.close;
  qrDesconto.Params[0].AsInteger := Q_CPAPAGANumero.Value;
  qrDesconto.Open;

  if qrDescontodesconto.AsString <> '' then
     desconto := qrDescontodesconto.Value
  else
     desconto := 0;

  lbDesconto.Caption := FormatFloat('###,##0.00',desconto) ;

end;

END.




