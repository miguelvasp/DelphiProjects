unit UfrmRetornoCNAB;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, Wwdbigrd, Wwdbgrid, Db, ADODB, ExtCtrls;

type
  TfrmRetornoCNAB = class(TForm)
    wwDBGrid1: TwwDBGrid;
    ComboBox1: TComboBox;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    OpenDialog1: TOpenDialog;
    qrRetorno: TADOQuery;
    qrAux: TADOQuery;
    qrRetornoid: TIntegerField;
    qrRetornoNumeroCP: TIntegerField;
    qrRetornoOcorrencias: TStringField;
    qrRetornoNumeroBanco: TStringField;
    qrRetornoDataEfetiva: TStringField;
    qrRetornoValorEfetivo: TBCDField;
    qrRetornoNumeroDocumento: TStringField;
    qrRetornoUsuario: TIntegerField;
    qrListagem: TADOQuery;
    qrListagemFornecedor: TStringField;
    qrListagemDocumento: TStringField;
    qrListagemValorPago: TFloatField;
    qrListagemid: TAutoIncField;
    qrListagemNumeroCP: TIntegerField;
    qrListagemOcorrencias: TStringField;
    qrListagemNumeroBanco: TStringField;
    qrListagemDataEfetiva: TStringField;
    qrListagemValorEfetivo: TBCDField;
    qrListagemNumeroDocumento: TStringField;
    qrListagemUsuario: TIntegerField;
    qrListagemDataDebito: TDateTimeField;
    DataSource1: TDataSource;
    qrListagemSequencia: TAutoIncField;
    qrBaixas: TADOQuery;
    qrBaixasNumero: TIntegerField;
    qrBaixasSequencia: TAutoIncField;
    qrBaixasData: TDateTimeField;
    qrBaixasDocumento: TStringField;
    qrBaixasAbater: TFloatField;
    qrBaixasDescAcresc: TFloatField;
    qrBaixasValorPago: TFloatField;
    qrBaixasDataDebito: TDateTimeField;
    qrBaixasTipoBaixa: TStringField;
    qrBaixasHistorico: TStringField;
    qrBaixasBancoConta: TStringField;
    qrBaixasPrepCheque: TStringField;
    qrBaixasNUMEROICHE: TIntegerField;
    qrBaixasForma_Pag: TStringField;
    qrBaixastx_dolar: TFloatField;
    qrBaixasvalor_dolar: TFloatField;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure wwDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRetornoCNAB: TfrmRetornoCNAB;

implementation

uses CPPMENU;

{$R *.DFM}

procedure TfrmRetornoCNAB.Button1Click(Sender: TObject);
var f: TStringList;
    I: Integer;
    linha: WideString;
    NumeroCP, Ocorrencias, NumeroBanco, DataEfetiva, ValorEfetivo, NumeroDocumentoBanco : string;
begin
   OpenDialog1.Execute;
   if OpenDialog1.FileName <> '' then begin
      f := TStringList.Create;
      with qrAux do begin
          close;
          sql.Clear;
          sql.Add('delete from CNABRetornoTemp where usuario = ' + FMenu.sqlUsuariosCH.AsString);
          ExecSQL;
      end;

      qrRetorno.Close;
      qrRetorno.Parameters[0].Value := FMenu.sqlUsuariosCH.AsInteger;
      qrRetorno.Open;

      try
        f.LoadFromFile(OpenDialog1.FileName);
        for I := 0 to f.Count -1 do begin
           linha := f[I];

           //limpar variaveis
            NumeroCP := '';
            Ocorrencias := '';
            NumeroBanco  := '';
            DataEfetiva  :=  '';
            ValorEfetivo  :=  '';


            NumeroDocumentoBanco := COPY(linha, 198, 6)  ;
           IF Copy(LINHA, 8, 1) = '3' then begin   //verifica se � um detalhe
                IF Copy(linha, 14, 1) = 'A' THEN begin //VERIFICA SE E�TED, DOC OU TRANSFERENCIA ENTRE CONTAS
                         NumeroCP := COPY(linha, 74, 20) ;
			 Ocorrencias := COPY(linha, 231, 10);
			 NumeroBanco  := COPY(linha, 135, 15) ;
			 DataEfetiva  :=  COPY(linha, 155, 8)  ;
			 ValorEfetivo  :=  COPY(linha, 163, 15) ;
			 NumeroDocumentoBanco := COPY(linha, 198, 6)  ;

                         qrRetorno.Append;
                         qrRetornoNumeroCP.Value := StrToInt(Trim(NumeroCP));
                         qrRetornoOcorrencias.Value := Trim(Ocorrencias);
                         qrRetornoNumeroBanco.Value := NumeroBanco;
                         qrRetornoDataEfetiva.Value := Copy(DataEfetiva, 0, 2) + '/' + Copy(DataEfetiva, 3, 2) + '/' + Copy(DataEfetiva, 5, 4);
                         qrRetornoUsuario.Value := FMenu.sqlUsuariosCH.AsInteger;
                         if Trim(ValorEfetivo) <> '' then
                                qrRetornoValorEfetivo.Value := StrToFloat(Trim(ValorEfetivo)) / 100.00;
                         qrRetornoNumeroDocumento.Value := NumeroDocumentoBanco;
                         qrRetorno.Post;

                end;//SE E�TED, DOC OU TRANSFERENCIA ENTRE CONTAS

                IF Copy(linha, 14, 1) = 'J' THEN begin //VERIFICA SE E�TED, DOC OU TRANSFERENCIA ENTRE CONTAS
                         NumeroCP := COPY(linha, 183, 20) ;
			 Ocorrencias := COPY(linha, 231, 10);
			 NumeroBanco  := COPY(linha, 216, 15) ;
                         DataEfetiva  :=  COPY(linha, 145, 8)  ;
			 NumeroDocumentoBanco := 'Boleto' ;
                         ValorEfetivo  :=  COPY(linha, 153, 15) ;

                         qrRetorno.Append;
                         qrRetornoNumeroCP.Value := StrToInt(Trim(NumeroCP));
                         qrRetornoOcorrencias.Value := Trim(Ocorrencias);
                         qrRetornoNumeroBanco.Value := NumeroBanco;
                         qrRetornoDataEfetiva.Value := Copy(DataEfetiva, 0, 2) + '/' + Copy(DataEfetiva, 3, 2) + '/' + Copy(DataEfetiva, 5, 4);
                         if Trim(ValorEfetivo) <> '' then
                                qrRetornoValorEfetivo.Value := StrToFloat(Trim(ValorEfetivo)) / 100.00;
                         qrRetornoUsuario.Value := FMenu.sqlUsuariosCH.AsInteger;
                         qrRetornoNumeroDocumento.Value := NumeroDocumentoBanco;
                         qrRetorno.Post;

                end;//SE E�TED, DOC OU TRANSFERENCIA ENTRE CONTAS


           end; //verifica se � um detalhe
        end;  //END FOR


        qrListagem.Close;
        qrListagem.Parameters[0].Value := FMenu.sqlUsuariosCH.AsInteger;
        qrListagem.Open;

      finally
        f.Free;
      end;
  end;
end;

procedure TfrmRetornoCNAB.Button2Click(Sender: TObject);
begin
   if MessageBox(Self.Handle, 'Confirma a opera��o?', 'Confirma��o' , MB_YESNO  ) = 6 then begin
       qrListagem.First;
       while NOT qrListagem.Eof do begin
            if qrListagemOcorrencias.AsString = '00' then begin
                qrBaixas.Close;
                qrBaixas.Parameters[0].Value := qrListagemNumeroCP.AsInteger;
                qrBaixas.Parameters[1].Value := qrListagemSequencia.AsInteger;
                qrBaixas.Open;

                if (qrBaixasDataDebito.AsString = '') then begin
                    try
                        qrBaixas.Edit;
                        qrBaixasDocumento.Value := qrListagemNumeroDocumento.Value;
                        qrBaixasDataDebito.Value := StrToDate(qrListagemDataEfetiva.Value);
                        qrBaixasHistorico.Value := 'CNAB Retorno ' + qrListagemNumeroBanco.Value;
                        qrBaixas.Post;
                    except end;
                end;




            end;

            qrListagem.NEXT;
       end;


       qrAux.Close;
       qrAux.sql.Clear;
       qrAux.sql.Add('EXEC STP_CNAB_GeraCPAMOVI');
       qrAux.ExecSQL;


       qrListagem.Close;
        qrListagem.Parameters[0].Value := FMenu.sqlUsuariosCH.AsInteger;
        qrListagem.Open;

   end;
end;

procedure TfrmRetornoCNAB.wwDBGrid1CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
   if qrListagemOcorrencias.Value = '00' then
        AFont.Color := clGreen
   else if qrListagemOcorrencias.Value = 'BD' then
        AFont.Color := clBlue
   else if qrListagemOcorrencias.AsString <> '' then begin
        ABrush.Color := clRed;
        AFont.Color := clWhite;
   end;

end;

procedure TfrmRetornoCNAB.wwDBGrid1DblClick(Sender: TObject);
var aux, ocorrencias, msg : widestring;
begin
  ocorrencias :=  qrListagemOcorrencias.Value;
  msg := '';
  while ocorrencias <> '' do begin
      aux := Copy(ocorrencias, 0,2);

      with qrAux do begin
          close;
          sql.Clear;
          sql.Add('SELECT DescricaoOC FROM CnabOcorrencias WHERE CodigoOC = ' + QuotedStr(aux)  + ' AND Banco = ' + QuotedStr(ComboBox1.Text) );
          Open;
      end;

      msg := msg + qrAux.FieldByName('DescricaoOC').AsString + #13;

      ocorrencias := Copy(ocorrencias, 2, 10);
  end;

  ShowMessage(msg);

end;

end.
