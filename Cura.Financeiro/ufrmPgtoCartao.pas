unit ufrmPgtoCartao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Wwquery, StdCtrls, wwdblook, Grids, Wwdbigrd, Wwdbgrid,
  Mask, ExtCtrls;

type
  TfrmPgtoCartao = class(TForm)
    Q_AUX: TwwQuery;
    Q_RECCLI: TwwQuery;
    Q_RECCLICLI_RAZA: TStringField;
    Q_RECCLICLI_CODI: TAutoIncField;
    cboCliente: TwwDBLookupCombo;
    Label13: TLabel;
    Q_BANC: TwwQuery;
    Q_BANCBAN_NOME: TStringField;
    Q_BANCBAN_CODI: TStringField;
    cboBanco: TwwDBLookupCombo;
    Label33: TLabel;
    edtIni: TMaskEdit;
    Label1: TLabel;
    edtFim: TMaskEdit;
    Label2: TLabel;
    edtDoc: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    edtTaxa: TEdit;
    edtdataCred: TMaskEdit;
    Label5: TLabel;
    Button1: TButton;
    wwDBGrid1: TwwDBGrid;
    Button3: TButton;
    qrExec: TwwQuery;
    qrBusca: TwwQuery;
    qrBuscaID: TAutoIncField;
    qrBuscaREC_RAZA: TStringField;
    qrBuscaREC_CODI: TIntegerField;
    qrBuscaREC_NFIS: TStringField;
    qrBuscaREC_VENC: TDateTimeField;
    qrBuscaREC_VLIQ: TFloatField;
    qrBuscaREC_SALD: TFloatField;
    DataSource1: TDataSource;
    qrBuscaPgtoTotal: TStringField;
    qrBuscaPgtoParcial: TFloatField;
    UPD_RECE: TUpdateSQL;
    qrApagaSobra: TwwQuery;
    RadioGroup1: TRadioGroup;
    STP_BAIXA: TStoredProc;
    qrPara: TwwQuery;
    qrParaPAR_CHAV: TStringField;
    qrParaPAR_MOED: TStringField;
    qrParaPAR_SALD: TFloatField;
    qrParaPAR_DATA: TDateTimeField;
    qrParaCtaGerencialOrig: TStringField;
    qrParaCtaGerencialDest: TStringField;
    qrParaFilialOrigem: TStringField;
    qrParaFilialDestino: TStringField;
    qrParaCta_GerencialPaga: TStringField;
    qrParaFilialPaga: TStringField;
    qrParaCta_GerencialRece: TStringField;
    qrParaFilialRece: TStringField;
    qrParaPAR_MOVI: TStringField;
    qrParaPAR_DOLAR: TStringField;
    qrParaPAR_Acrescimo: TStringField;
    qrParaEmp_Nome: TStringField;
    qrParaPar_impnf: TStringField;
    qrParaRestringe_pag_empresa: TStringField;
    qrParaPARA_CARTAO: TStringField;
    qrProc: TwwQuery;
    Label6: TLabel;
    cboClienteDestino: TwwDBLookupCombo;
    qrCliente: TwwQuery;
    qrClienteCLI_CODI: TAutoIncField;
    qrClienteCLI_RAZA: TStringField;
    Label7: TLabel;
    Label8: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    qrBuscaREC_EMIS: TDateTimeField;
    qrBuscaREC_HIST: TStringField;
    Button2: TButton;
    qrBuscaNSU: TStringField;
    qrTotal: TwwQuery;
    qrTotalTOTAL: TFloatField;
    tbTotal: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure qrBuscaAfterPost(DataSet: TDataSet);
    procedure qrBuscaBeforePost(DataSet: TDataSet);
    procedure Button3Click(Sender: TObject);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPgtoCartao: TfrmPgtoCartao;

implementation

uses CPPMENU, CPPRECE;

{$R *.DFM}

procedure TfrmPgtoCartao.FormCreate(Sender: TObject);
begin
   Q_RECCLI.Open;
   Q_BANC.Open;
   qrCliente.Open;
end;

procedure TfrmPgtoCartao.Button1Click(Sender: TObject);
var D1, D2, E1, E2 : TDateTime;
    V1, V2, EM1, EM2 : string;
begin
  IF edtIni.Text <> '  /  /    ' then begin
     try
         D1 := StrToDate(edtIni.Text);
         V1 := FormatDateTime('YYYYMMDD', D1);
     except
         ShowMessage('Informe uma data v�lida!');
         Abort;
     end;
  end;

  IF edtFim.Text <> '  /  /    ' then begin
     try
         D2 := StrToDate(edtFim.Text);
         V2 := FormatDateTime('YYYYMMDD', D2);
     except
         ShowMessage('Informe uma data v�lida!');
         Abort;
     end;
  end;

  IF MaskEdit1.Text <> '  /  /    ' then begin
     try
         E1 := StrToDate(MaskEdit1.Text);
         EM1 := FormatDateTime('YYYYMMDD', E1);
     except
         ShowMessage('Informe uma data v�lida!');
         Abort;
     end;
  end;

  IF MaskEdit2.Text <> '  /  /    ' then begin
     try
         E2 := StrToDate(MaskEdit2.Text);
         EM2 := FormatDateTime('YYYYMMDD', E2);
     except
         ShowMessage('Informe uma data v�lida!');
         Abort;
     end;
  end;



     if cboCliente.Text = '' then begin
         ShowMessage('Informe o cliente');
         Abort;
     end;

     with qrExec do begin
         close;
         sql.Clear;
         sql.Add('Exec CONSULTA_CARTAO ' + cboCliente.LookupValue + ', ' + QuotedStr(V1) + ', ' +  QuotedStr(V2) + ', ' +  QuotedStr(EM1) + ', ' +  QuotedStr(EM2)  );
         ExecSQL;
     end;

     qrBusca.Close;
     qrBusca.sql.Clear;
     qrBusca.SQL.Add('SELECT * FROM PgtoCartao');
     case RadioGroup1.ItemIndex of
         0 :  qrBusca.sql.add('order by REC_VENC');
         1 :  qrBusca.sql.add('order by REC_NFIS');
         2 :  qrBusca.sql.add('order by REC_VLIQ');
         3 :  qrBusca.sql.add('order by NSU');
     end;
     qrBusca.Open;
     Button3.Enabled := True;
end;

procedure TfrmPgtoCartao.qrBuscaAfterPost(DataSet: TDataSet);
begin
  try
  begin
    FMenu.DATABASE1.ApplyUpdates([qrBusca]);


    qrTotal.Close;
    qrTotal.Open;
    tbTotal.Caption := 'Total R$: ' + FormatFloat('###,###,##0.00', qrTotalTOTAL.AsFloat);
  end;
  except
      ShowMessage('Aconteceu um erro');
  end;
end;

procedure TfrmPgtoCartao.qrBuscaBeforePost(DataSet: TDataSet);
begin
  try
   if qrBuscaPgtoTotal.AsString = 'T' then begin
       if qrBuscaPgtoParcial.AsFloat > 0 then begin
           ShowMessage('N�o � possivel ter as op��es de pagamento total e pagamento parcial selecionadas');
           qrBusca.RevertRecord;
       end;
   end;
  except

  end;
end;

procedure TfrmPgtoCartao.Button3Click(Sender: TObject);
var dataCre, DtRecebimento, dtx : TDateTime;
    Taxa : Real;
    aux, aux2, aux3 : string;
    dia, mes, ano : Integer;
    erro : Boolean;
begin
   qrPara.Open;
   if qrParaPARA_CARTAO.AsString = '' then begin
       ShowMessage('� necess�rio informar o c�digo de desconto/acrescimo da taxa do cart�o na tabela de parametros');
       Abort;
   end;
   qrPara.Close;

   if edtDoc.Text = '' then begin
        ShowMessage('Informe o documento');
        Abort;
   end;

   if edtTaxa.Text = '' then begin
       ShowMessage('Informe a taxa do cart�o');
       Abort;
   end;

   if edtdataCred.Text = '  /  /    ' then begin
       ShowMessage('Informe a data de cr�dito');
       Abort;
   end;

   if cboBanco.Text = '' then begin
       ShowMessage('Informe a conta banc�ria');
       Abort;
   end;


   try
       dataCre := StrToDate(edtdataCred.Text);
   except
       ShowMessage('Dat� de cr�dito inv�lida');
       Abort;
   end;

   try
       Taxa := StrToFloat(edtTaxa.Text);
   except
       ShowMessage('O valor de taxa informado � inv�lido');
       Abort;
   end;

   if Application.MessageBox('Confirma a opera��o?', 'Confirma��o', MB_YESNO ) = 7 then Abort;



   if cboClienteDestino.Text <> '' then begin
          if Application.MessageBox('Os recebimentos selecionados ser�o alterados para o cliente de destino, confirma a opera��o?', 'Confirma��o', MB_YESNO ) = 7 then Abort;
   end;


   qrApagaSobra.ExecSQL;

    qrBusca.Close;
    qrBusca.sql.Clear;
    qrBusca.SQL.Add('SELECT * FROM PgtoCartao');
    case RadioGroup1.ItemIndex of
       0 :  qrBusca.sql.add('order by REC_VENC');
       1 :  qrBusca.sql.add('order by REC_NFIS');
       2 :  qrBusca.sql.add('order by REC_VLIQ');
    end;
    qrBusca.Open;

   erro := False;
   qrBusca.First;
   while not qrBusca.Eof do begin
      if  qrBuscaPgtoTotal.AsString <> 'T' then begin
          if qrBuscaREC_SALD.AsFloat < qrBuscaPgtoParcial.AsFloat then
                erro := True;
      end;
      qrBusca.Next;
   end;


   if erro then begin
       ShowMessage('Existem pagamentos parciais cujo valor a ser pago � maior que o saldo');
       Abort;
   end;







   qrBusca.First;
   while not qrBusca.Eof do begin
     WITH qrProc do begin
         Params.ParamByName('REC_CODI').AsInteger := qrBuscaREC_CODI.AsInteger;
         if qrBuscaPgtoTotal.AsString = 'T' then
            Params.ParamByName('TIPO').AsString := 'T'
         else
            Params.ParamByName('TIPO').AsString := 'P';
         Params.ParamByName('DATA_CREDITO').AsDateTime := dataCre;
         Params.ParamByName('DOCUMENTO').AsString := edtDoc.Text;
         Params.ParamByName('TAXA').AsFloat := Taxa;
         Params.ParamByName('BANCO').AsString := cboBanco.LookupValue;
         if qrBuscaPgtoTotal.AsString = 'T' then
            Params.ParamByName('VALOR').AsFloat := qrBuscaREC_SALD.AsFloat
         else
            Params.ParamByName('VALOR').AsFloat := qrBuscaPgtoParcial.AsFloat;
         Params.ParamByName('CLIENTE').AsString := qrBuscaREC_RAZA.AsString;
         ExecSQL;
     end;



     //altera a data do recebimento caso exista saldo
     if  qrBuscaPgtoTotal.AsString <> 'T' then begin
       IF  qrBuscaREC_SALD.AsFloat > qrBuscaPgtoParcial.AsFloat then begin

         aux := FormatDateTime('DD/MM/YYYY', qrBuscaREC_VENC.AsDateTime);
         aux2 := FormatDateTime('DD/MM/YYYY', StrToDate(edtdataCred.Text));
         aux3 := Copy(aux2, 4, 2);
         mes := StrToInt(aux3);
         aux3 := Copy(aux2, 7, 4);
         ano := StrToInt(aux3);
         aux3 := Copy(aux, 1, 2);
         dia := StrToInt(aux3);
         if mes = 12 then begin
             mes := 1;
             ano := ano + 1;
         end else begin
             mes := mes + 1;
             //verifica fevereiro que s� tem 28 dias
             if mes = 2 then begin
                 if dia > 28 then
                        dia := 28;
             end;
             //verifica os meses q s� tem 30 dias
             if (mes = 4) or (mes = 6) or (mes = 9) or (mes = 11) then begin
                 if dia > 30 then
                        dia := 30;
             end;
         end;

         //aux3 := FormatDateTime('DD', qrBuscaREC_VENC.AsDateTime) + '/' + IntToStr(mes) + '/' + IntToStr(ano);
         aux3 := IntToStr(dia) + '/' + IntToStr(mes) + '/' + IntToStr(ano);
         dtx := StrToDate(aux3);


         with Q_AUX do begin
             Close;
             sql.Clear;
             sql.Add(
              '  UPDATE CPARECE SET '+
              '  REC_VPRE = :REC_VPRE,  '+
              '  REC_VENC = :REC_VENC   '+
              '  WHERE REC_CODI =  '+ qrBuscaREC_CODI.AsString
             );
             Params[0].AsDateTime := dtx;
             Params[1].AsDateTime := dtx;
             ExecSQL;
         end;
       end;
     end;


     qrBusca.Next;
     Application.ProcessMessages;
   end;


   //se o combo de cliente destino foi preenchido mudamos os pagamentos
   if cboClienteDestino.Text <> '' then begin
       qrBusca.First;
       while not qrBusca.Eof do begin

          with Q_AUX do begin
              Close;
              sql.Clear;
              sql.Add('update cparece set rec_clie = ' + cboClienteDestino.LookupValue );
              SQL.Add(', REC_RAZA = ' + QuotedStr(qrClienteCLI_RAZA.ASSTRING));
              sql.Add(' where rec_codi = ' + qrBuscaREC_CODI.AsString);
              ExecSQL;
          end;
          qrBusca.Next;
       end;
   end;


   Button3.Enabled := False;
   ShowMessage('Opera��o efetuada');

end;

procedure TfrmPgtoCartao.wwDBGrid1DblClick(Sender: TObject);
begin
     gs_rece := qrBuscaREC_CODI.AsString ;
     //controle := true;
     Application.CreateForm(TFRecebimentos, FRecebimentos);
     FRecebimentos.ShowModal ;
     FRecebimentos.Release ;
end;

procedure TfrmPgtoCartao.Button2Click(Sender: TObject);
begin
  if cboCliente.Text = '' then
  begin
      ShowMessage('Informe o cliente de origem');
      Abort;
  end;
  if cboClienteDestino.Text = '' then
  begin
      ShowMessage('Informe o cliente destino');
      Abort;
  end;

  if MessageBox(Self.Handle, 'Confirma a opera��o', 'Confirma��o', MB_YESNO) = 7 then Abort;

  qrApagaSobra.ExecSQL;

    qrBusca.Close;
    qrBusca.sql.Clear;
    qrBusca.SQL.Add('SELECT * FROM PgtoCartao');
    case RadioGroup1.ItemIndex of
       0 :  qrBusca.sql.add('order by REC_VENC');
       1 :  qrBusca.sql.add('order by REC_NFIS');
       2 :  qrBusca.sql.add('order by REC_VLIQ');
    end;
    qrBusca.Open;

    


   qrBusca.First;
   while not qrBusca.Eof do begin

      with Q_AUX do begin
          Close;
          sql.Clear;
          sql.Add('update cparece set rec_clie = ' + cboClienteDestino.LookupValue );
          SQL.Add(', REC_RAZA = ' + QuotedStr(qrClienteCLI_RAZA.ASSTRING));
          sql.Add(' where rec_codi = ' + qrBuscaREC_CODI.AsString);
          ExecSQL;
      end;
      qrBusca.Next;
   end;

   ShowMessage('Atualiza��o efetuada com sucesso');

end;

end.
