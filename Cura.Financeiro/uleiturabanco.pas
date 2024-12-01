unit UleituraBanco;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Wwquery, Mask, wwdblook, StdCtrls, Gauges, Buttons,
  ExtCtrls;

type
  TFLeituraBanco = class(TForm)
    Panel1: TPanel;
    SBT_PESQ: TSpeedButton;
    Label1: TLabel;
    Gauge1: TGauge;
    Label5: TLabel;
    Memo1: TMemo;
    wwDBLookupCombo1: TwwDBLookupCombo;
    Q_AUX: TwwQuery;
    SBT_SELE: TSpeedButton;
    SpeedButton1: TSpeedButton;
    Q_LCOB: TwwQuery;
    Q_LCOBLCO_BANC: TStringField;
    Q_LCOBBANC_CODI: TStringField;
    Q_LCOBLCO_CODI: TStringField;
    Q_LCOBLco_Floating: TIntegerField;
    Q_LCOBLco_FluxoCaixa: TStringField;
    Q_BANC: TwwQuery;
    Q_BANCBAN_CODI: TStringField;
    Q_BANCBAN_CARTAGECC: TStringField;
    Q_BANCBAN_CODEMPR: TStringField;
    Q_PARA: TwwQuery;
    Q_PARALocalBradesco: TStringField;
    Q_PARALocalBrasil: TStringField;
    Q_PARAPar_juros: TFloatField;
    Q_PARARemessaBradesco: TIntegerField;
    Q_PARARemessaBrasil: TIntegerField;
    OpenDialog1: TOpenDialog;
    procedure SBT_SELEClick(Sender: TObject);
    procedure LeituraBradesco(Sender: TObject);
    procedure LeituraBrasil(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SBT_PESQClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLeituraBanco: TFLeituraBanco;

implementation

uses cppmenu;//Unt_BaseDados2;
{$R *.DFM}

procedure TFLeituraBanco.SBT_SELEClick(Sender: TObject);
begin
   if wwDBLookupCombo1.text = '' then    begin
      MessageDlg('Informe Local de Cobrança !',mtInformation,[mbOk], 0);
      wwDBLookupCombo1.setfocus ;
      abort ;
   end ;
   if Q_LCOBBANC_CODI.asstring = '' then  begin
      MessageDlg('Local de Cobrança não possui Banco Associado !',mtInformation,[mbOk], 0);
      wwDBLookupCombo1.setfocus ;
      abort ;
   end ;
   Q_BANC.Close ;
   Q_BANC.Sql.Clear ;
   Q_BANC.Sql.Add('select * from CPABANC where BAN_CODI =' + '''' + Q_LCOBBANC_CODI.asstring  + '''' ) ;
   Q_BANC.Open ;
   if MessageDlg('Confirma Leitura do Arquivo Retorno do '+ Q_LCOBLCO_BANC.asstring + ' ?', mtInformation, [mbYes, mbNo], 0) = mrNo then
       Abort;

   Q_PARA.Open ;
   if wwDBLookupCombo1.lookupvalue = Q_PARALocalBradesco.asstring then LeituraBradesco(self);
   if wwDBLookupCombo1.lookupvalue = Q_PARALocalBrasil.asstring   then LeituraBrasil(self);
   Q_PARA.Close ;
   Label5.visible := true ;
   MessageDlg('Leitura Efetuada com sucesso ! !', mtInformation, [mbOK], 0);
   Gauge1.visible := false ;
   Label5.visible := false ;
   close ;
end;

procedure TFLeituraBanco.SpeedButton1Click(Sender: TObject);
begin
  close ;
end;

procedure TFLeituraBanco.LeituraBradesco(Sender: TObject);
var  ArqTxt  : TextFile;
     ArqSize : file of byte ;
     StrDados : String ;
     Contador  : Integer ;
     NumeroDocumento : String ;
     NumeroBanco     : String ;
begin
   if not FileExists(OpenDialog1.FileName) then begin
      MessageDlg('Arquivo não encontrado !', mtInformation, [mbOK], 0);
      abort ;
   end ;

   Contador := 0 ;
   assignfile(ArqSize,OpenDialog1.FileName);
   Reset(ArqSize);
   Gauge1.MaxValue := filesize(ArqSize) ;
   closefile(arqSize);
   Gauge1.visible := true ;
   Label5.visible := true ;

   AssignFile(ArqTxt, OpenDialog1.FileName);
   Reset(ArqTxt);
   // Despreza o Primeiro Registro
   Readln(ArqTxt, StrDados);

   while not Eof(ArqTxt) do begin
      Readln(ArqTxt, StrDados);
      NumeroDocumento := copy(strDados,120,7 ) ;
      // Carteira + NossoNumero + digito
      NumeroBanco     := copy(StrDados,22,3) + copy(StrDados,71,11)+ '-'+ copy(StrDados,82,1) ;
      // atualiza Contas a receber
      if (NumeroDocumento <> '' ) and ( copy(StrDados,1,2 ) =  '10' ) then begin
          Q_AUX.Close ;
          Q_AUX.Sql.Clear ;
          Q_AUX.Sql.Add(' Update CPARECE SET REC_NBAN = '+ ''''+ NumeroBanco + '''' ) ;
          Q_AUX.Sql.Add('  where REC_NFIS = '+ '''' + NumeroDocumento + '''' ) ;
          try
            Q_AUX.ExecSql ;
          except
             On E:EDBEngineError do
             begin
                MessageDlg('Problemas ao gravar no Banco de Dados! Documento ' + NumeroDocumento , mtError, [mbOK], 0);
             end;
          End;
      end ;
      Contador := Contador + length(StrDados) + 2;
      Gauge1.Progress := StrToInt(FloatToStr(Contador));
   end;
   closefile(arqtxt);
end ;

procedure TFLeituraBanco.LeituraBrasil(Sender: TObject);
var  ArqTxt  : TextFile;
     ArqSize : file of byte ;
     StrDados : String ;
     Contador  : Integer ;
     NumeroDocumento : String ;
     NumeroBanco     : String ;
begin
   if not FileExists(OpenDialog1.FileName) then begin
      MessageDlg('Arquivo não encontrado !', mtInformation, [mbOK], 0);
      abort ;
   end ;

   Contador := 0 ;
   assignfile(ArqSize,OpenDialog1.FileName);
   Reset(ArqSize);
   Gauge1.MaxValue := filesize(ArqSize) ;
   closefile(arqSize);   
   Gauge1.visible := true ;
   Label5.visible := true ;

   AssignFile(ArqTxt, OpenDialog1.FileName);
   Reset(ArqTxt);
   // Despreza o Primeiro Registro
   Readln(ArqTxt, StrDados);

   while not Eof(ArqTxt) do begin
      Readln(ArqTxt, StrDados);
      NumeroDocumento := copy(strDados,117,7 ) ;
      //  NossoNumero + digito
      NumeroBanco     := copy(StrDados,63,11)+ '-'+ copy(StrDados,74,1) ;
      // atualiza Contas a receber
      if ( NumeroDocumento <> '' ) and  ( Copy(strDados,1,2) = '10')  then begin
          Q_AUX.Close ;
          Q_AUX.Sql.Clear ;
          Q_AUX.Sql.Add(' Update CPARECE SET REC_NBAN = '+ ''''+ NumeroBanco + '''' ) ;
          Q_AUX.Sql.Add('  where REC_NFIS = '+ '''' + NumeroDocumento + '''' ) ;
          try
            Q_AUX.ExecSql ;
          except
             On E:EDBEngineError do
             begin
                MessageDlg('Problemas ao gravar no Banco de Dados! Documento ' + NumeroDocumento , mtError, [mbOK], 0);
             end;
          End;
      end ;
      Contador := Contador + length(StrDados) + 2;
      Gauge1.Progress := StrToInt(FloatToStr(Contador));
   end;
   closefile(arqtxt);
end ;


procedure TFLeituraBanco.SBT_PESQClick(Sender: TObject);
begin
  if OpenDialog1.Execute then
     SBT_PESQ.caption := OpenDialog1.FileName ;


end;

procedure TFLeituraBanco.FormCreate(Sender: TObject);
begin
  Q_LCob.Open ;
end;

procedure TFLeituraBanco.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Q_LCob.close ;
  Q_BANC.Close ;
  Q_PARA.Close ;
  Q_AUX.Close ;
  action := cafree ;
end;

end.
