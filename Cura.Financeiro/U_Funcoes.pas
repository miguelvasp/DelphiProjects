unit U_Funcoes;

interface
Uses SysUtils,Classes;


Type

    TFuncoes = Class(TObject)

    Function StrZero(Vl_Valor : String; Vl_Tam : Byte): String;
    function CGC( STXT : String) : Boolean;
    function CPF( STXT : String) : Boolean;
    function Converte(Vl_Valor : String; Sinal : String; Vl_Sinal : Char): String;
    function MUDALETR(LETRA: string): string;
    function NumeroParaExtenso(parmNumero: Real): string;
    function ConversaoRecursiva(N: LongWord): string;
    function writeString(Value : string; iSize : Integer) : string;
    function writeInt(Value, iSize : Integer) : string;
    function writeFloat(Value : Double; iSize, Decimal : Integer; Virgula : Boolean) : string;
    function writeStringZero(Value: string; iSize: Integer): string;
    Private
    Public

End;

Var
   Funcoes : TFuncoes;

type
   TNumeroStr = string[13];


const
  Unidades: array[1..19] of TNumeroStr = ('um', 'dois', 'tr�s', 'quatro',
    'cinco', 'seis', 'sete', 'oito', 'nove', 'dez', 'onze', 'doze',
    'treze', 'quatorze', 'quinze', 'dezesseis', 'dezessete', 'dezoito',
    'dezenove');

  Dezenas: array[1..9] of TNumeroStr = ('dez', 'vinte', 'trinta', 'quarenta',
    'cinq�enta', 'sessenta', 'setenta', 'oitenta', 'noventa');

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
uses UgeraBanco;
//
//
//
Function TFuncoes.StrZero(Vl_Valor : String; Vl_Tam : Byte): String;
//
//
//
Var
   Vl_Zeros : String;
   i        : Byte;
Begin
   For i:= 1 to (Vl_Tam-Length(trim(Vl_Valor))) do
      Vl_Zeros := Vl_Zeros + '0';
      Result := Vl_Zeros + Vl_Valor;
End;
//
//
//
function TFuncoes.CGC( STXT : String) : Boolean;
//
//
//
Var
  A,B,C,D,E,F,G,H,I,J,K,L,X,M,Y,N : Integer;
  DC : String[2];
  RT : Boolean;
begin
  RT := true;
  A:= StrtoInt(copy(STXT,1,1));
  B:= StrtoInt(copy(STXT,2,1));
  C:= StrtoInt(copy(STXT,3,1));
  D:= StrtoInt(copy(STXT,4,1));
  E:= StrtoInt(copy(STXT,5,1));
  F:= StrtoInt(copy(STXT,6,1));
  G:= StrtoInt(copy(STXT,7,1));
  H:= StrtoInt(copy(STXT,8,1));
  I:= StrtoInt(copy(STXT,9,1));
  J:= StrtoInt(copy(STXT,10,1));
  K:= StrtoInt(copy(STXT,11,1));
  L:= StrtoInt(copy(STXT,12,1));
  X:= 2*(L+D)+3*(K+C)+4*(J+B)+5*(I+A)+6*H+7*G+8*F+9*E;
  M:= 11-((X)-(11*((X div 11))));
  if M > 9 then
     M:=0;
  Y:= 2*(M+E)+3*(L+D)+4*(K+C)+5*(J+B)+6*(I+A)+7*H+8*G+9*F;
  N:= 11-((Y)-(11*((Y div 11))));
  if N > 9 then
     N:=0;
  DC:= copy((INTTOSTR(M)),1,1)+ copy((iNTTOSTR(N)),1,1);
  if DC <> copy(STXT,13,2) then
   Begin
     RT := false;
   end;
   CGC := RT;
end;
//
//
//
function TFuncoes.CPF( STXT : String) : Boolean;
//
//
//
Var
  CP1,CP2,CP3,CPF1,CPF2,DC,A : String[15];
  ACUMULA,CONTADOR,B,X,R,U,Y,V : Integer;
  RT : Boolean;
begin
  RT := true;
  CP1:= copy(STXT,1,3);
  CP2:= copy(STXT,4,3);
  CP3:= copy(STXT,7,3);
  CPF1:= CP1+CP2+CP3;
  ACUMULA:= 0;
  for Contador:=2 to 10 do
    Begin
    A:= copy(CPF1,11-CONTADOR,1);
    B:= Strtoint(A) * CONTADOR;
    ACUMULA:=ACUMULA + B;
  End;
  X:= ACUMULA * 10;
  R:= X-(X div 11)*11;
  If R = 10 then
     U:= 0
    Else
  U:= R;
  CPF2:= CPF1 + copy(IntToStr(U),1,1);
  ACUMULA:= 0;
  For Contador:=2 to 11 do
    Begin
      A:= copy(CPF2,12-CONTADOR,1);
      B:= Strtoint(A) * CONTADOR;
      ACUMULA:=ACUMULA + B;
  end;
  Y:= ACUMULA * 10;
  R:= Y-(Y div 11)*11;
  If R = 10 then
     V:= 0
    Else
  V:= R;
  DC:= copy(INTTOSTR(U),1,1)+ copy(INTTOSTR(V),1,1);
  if DC <> copy(STXT,10,2) then
    Begin
      RT := false;
    end;

  CPF := RT;
end;

Function TFuncoes.Converte(Vl_Valor : String; Sinal : String; Vl_Sinal : Char): String;
// Converte virgula para ponto quando o tipo for float
// 1� parametro - a string a ser pesquisada
// 2� parametro - a string a ser trocada
// 3� parametro -  a string que ira susbstituir o 2� parametro
begin
  while Pos(Sinal, Vl_Valor) > 0 do
    Vl_Valor[Pos(Sinal, Vl_Valor)] := Vl_Sinal;
    Result := Vl_Valor;
end;

    
function TFuncoes.MUDALETR(LETRA: string): string;
var
  NOVALETRA         : string;
  s                 : string;
  M_DataLEN, i      : Integer;
begin
  NOVALETRA := '';
  M_DataLEN := Length(LETRA);
  for i := 1 to M_DataLEN do
  begin
    if fgerabanco.T_Acen.FindKey([Ord(LETRA[i])]) then
      s := fgerabanco.T_Acen.FieldByName('ACE_NOVO').AsString
    else
      s := LETRA[i];
    NOVALETRA := NOVALETRA + s;
  end;
  {   NOVALETRA := uppercase(NOVALETRA);}
  Result := NOVALETRA;
end;




function TFuncoes.NumeroParaExtenso(parmNumero: Real): string;
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

function TFuncoes.ConversaoRecursiva(N: LongWord): string;
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
      Result := ConversaoRecursiva(N div 1000000) + ' milh�o '
                  + ConversaoRecursiva(N mod 1000000);
    2000000..999999999:
      Result := ConversaoRecursiva(N div 1000000) + ' milh�es '
                  + ConversaoRecursiva(N mod 1000000);
    1000000000..1999999999:
      Result := ConversaoRecursiva(N div 1000000000) + ' bilh�o '
                  + ConversaoRecursiva(N mod 1000000000);
    2000000000..4294967295:
      Result := ConversaoRecursiva(N div 1000000000) + ' bilh�es '
                  + ConversaoRecursiva(N mod 1000000000);
 end;
end;

function TFuncoes.writeString(Value: string; iSize: Integer): string;
var
   Aux : string;
   i   : Integer;
begin
      Aux := Trim(Value);
      Aux := Copy(Aux, 1, iSize);
      for i := Length(Aux) to pred(iSize) do begin
          Aux := Aux + ' ';
      end;
      Result := Aux;
end;

function TFuncoes.writeInt(Value, iSize: Integer): string;
var
   Aux : string;
   i   : Integer;
begin
      Aux := IntToStr(Value);
      for i := Length(Aux) to pred(iSize) do begin
          Aux := '0' + Aux;
      end;
      Result := Aux;
end;


function TFuncoes.writeStringZero(Value: string; iSize: Integer): string;
var
   Aux : string;
   i   : Integer;
begin
      Aux := Value;
      for i := Length(Aux) to pred(iSize) do begin
          Aux := '0' + Aux;
      end;
      Result := Aux;
end;

function TFuncoes.writeFloat(Value: Double; iSize, Decimal: Integer;
  Virgula: Boolean): string;
var
        i : Integer;
        FormatMaks : string;
        Aux : string;
begin
   for i := 1 to  Decimal do begin
       FormatMaks := FormatMaks + '0';
   end;

  FormatMaks := '##0.' + FormatMaks;
  Aux := FormatFloat(FormatMaks, Value);
  Aux := StringReplace(Aux, ',','.',[rfReplaceAll]);
 // if Virgula = False then  begin
        Aux := StringReplace(Aux, '.','',[rfReplaceAll]);
 // end;

  for i := Length(Aux) to pred(iSize) do begin
          Aux := '0' + Aux;
  end;

  Result := Aux;
end;

end.
