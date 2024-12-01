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
    Private
    Public

End;

Var
   Funcoes : TFuncoes;


implementation
uses UMENU;
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
// 1º parametro - a string a ser pesquisada
// 2º parametro - a string a ser trocada
// 3º parametro -  a string que ira susbstituir o 2º parametro
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
   /// if fgerabanco.T_Acen.FindKey([Ord(LETRA[i])]) then
     /// s := fgerabanco.T_Acen.FieldByName('ACE_NOVO').AsString
  ///  else
      s := LETRA[i];
    NOVALETRA := NOVALETRA + s;
  end;
  {   NOVALETRA := uppercase(NOVALETRA);}
  Result := NOVALETRA;
end;




end.
