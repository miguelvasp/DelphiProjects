unit ufrmEstoqueRetroativo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, Mask, wwdblook, StdCtrls, wwdbedit, Buttons, Db, DBTables,
  Wwquery, wwstorep, ADODB, ComObj;

type
  TfrmEstoqueRetroativo = class(TForm)
    Q_LOCAL_FILT: TwwQuery;
    StringField7: TStringField;
    AutoIncField4: TAutoIncField;
    StringField8: TStringField;
    Q_MAT: TwwQuery;
    Q_MATMAT_DESC: TStringField;
    Q_MATMAT_ID: TAutoIncField;
    Q_MARCA_FILT: TwwQuery;
    StringField4: TStringField;
    AutoIncField3: TAutoIncField;
    GroupBox6: TGroupBox;
    SBT_VISU: TSpeedButton;
    Label2: TLabel;
    Label6: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    SpeedButton1: TSpeedButton;
    cboProd: TwwDBLookupCombo;
    mkDini: TMaskEdit;
    wwDBLookupCombo4: TwwDBLookupCombo;
    wwDBLookupCombo3: TwwDBLookupCombo;
    SpeedButton2: TSpeedButton;
    ProgressBar1: TProgressBar;
    STP_CONSULTAKARDEX: TwwStoredProc;
    qrBuscaMaterial: TADOQuery;
    qrBuscaMaterialMAT_ID: TAutoIncField;
    qrSaldo: TADOQuery;
    qrSaldosaldo: TFloatField;
    qrValor: TADOQuery;
    qrValorREPOSICAO: TFloatField;
    qrAux: TADOQuery;
    qrEstoqueR: TADOQuery;
    qrEstoqueRMAT_ID: TIntegerField;
    qrEstoqueRQTDE: TFloatField;
    qrEstoqueRVLR_REPOSICAO: TFloatField;
    qrEstoqueRID: TAutoIncField;
    qrEstoqueRMARCA_ID: TIntegerField;
    dsExcel: TDataSource;
    qrRel: TADOQuery;
    qrEstoqueRUSUARIO: TStringField;
    qrValorNota: TADOQuery;
    qrValorNotaDt_Emiss: TDateTimeField;
    qrValorNotaREPOSICAO: TFloatField;
    Label1: TLabel;
    wwDBLookupCombo1: TwwDBLookupCombo;
    qrGrupo: TADOQuery;
    qrGrupoGRU_ID: TAutoIncField;
    qrGrupoGRU_DESC: TStringField;
    qrRelMAT_DESC: TStringField;
    qrRelMARCA_DESC: TStringField;
    qrRelQTDE: TFloatField;
    qrRelVLR_REPOSICAO: TFloatField;
    qrRelTOTAL5: TFloatField;
    qrTotal: TADOQuery;
    qrTotalQTDE: TFloatField;
    qrExec: TADOQuery;
    procedure SBT_VISUClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cboProdChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEstoqueRetroativo: TfrmEstoqueRetroativo;

implementation

uses UMenu, ufrmRelEstoqueRetroativo;

{$R *.DFM}

procedure TfrmEstoqueRetroativo.SBT_VISUClick(Sender: TObject);
VAR VALOR, SALDO : Real;
begin


  IF mkDini.Text = '  /  /    ' then begin
      ShowMessage('Informe a data de pesquisa');
      Abort;
  end;

    with qrBuscaMaterial do begin
        close;
        sql.Clear;
        sql.Add(
          '  SELECT DISTINCT '+
          '   A.MAT_ID    '+
          '  FROM MATERIAIS A INNER JOIN MATERIAL_MARCA B   '+
          '  ON A.MAT_ID = B.MAT_ID where 1 = 1 '
        );

        if cboProd.Text <> '' then
                sql.Add(' AND A.MAT_ID = ' + cboProd.LookupValue);

        IF wwDBLookupCombo4.Text <> '' then
                SQL.Add(' AND B.MARCA_ID = ' + wwDBLookupCombo4.LookupValue);

        if wwDBLookupCombo1.Text <> '' then
                sql.Add(' and a.gru_id = ' + wwDBLookupCombo1.LookupValue);

        Open;
    end;

    with qrAux do begin
            close;
            sql.Clear;
            sql.Add(
                'delete from ESTOQUE_RETROATIVO'// where usuario = ' + QuotedStr(FMenu.sqlUsuariosNome.AsString)
            );
            ExecSQL
        end;

    qrEstoqueR.Open;


    //executamos o kardex para todos os materiais dentro da faixa de busca
    qrBuscaMaterial.Last;
    ProgressBar1.Max := qrBuscaMaterial.RecordCount;
    qrBuscaMaterial.First;
    while not qrBuscaMaterial.Eof do begin










        STP_CONSULTAKARDEX.ParamByName('@MAT_ID').Value := qrBuscaMaterialMAT_ID.AsInteger;
        STP_CONSULTAKARDEX.ParamByName('@USUARIO').Value := FMenu.sqlUsuariosNome.AsString;
        STP_CONSULTAKARDEX.ParamByName('@FOR_CODI').Value  := Null;
        STP_CONSULTAKARDEX.ParamByName('@LOTE').Value  := 'VAZIO';
        STP_CONSULTAKARDEX.ParamByName('@VALID').Value  := Null;
        STP_CONSULTAKARDEX.ParamByName('@TIPOKARDEX').Value  := 'A';
        STP_CONSULTAKARDEX.ParamByName('@MARCA_ID').Value := null;
        STP_CONSULTAKARDEX.ParamByName('@SALDOINICIAL').Value    := null;
        IF wwDBLookupCombo3.Text <> '' THEN
               STP_CONSULTAKARDEX.ParamByName('@LOCAL_ID').Value  := wwDBLookupCombo3.LookupValue
           else
               STP_CONSULTAKARDEX.ParamByName('@LOCAL_ID').Value  := Null;
        STP_CONSULTAKARDEX.ExecProc;


      qrTotal.Close;
      qrTotal.Parameters[0].Value := qrBuscaMaterialMAT_ID.AsInteger;
      qrTotal.Open;

      qrExec.Parameters[0].Value := FMenu.sqlUsuariosNome.Value;
      qrExec.Parameters[1].Value := qrTotalQTDE.Value;
      qrExec.ExecSQL;
                           {


      qrMovimento.Close;
      qrMovimento.Parameters[0].Value := qrBuscaMaterialMAT_ID.AsInteger;
      qrMovimento.Open;

      qrTotal.Close;
      qrTotal.Parameters[0].Value := qrBuscaMaterialMAT_ID.AsInteger;
      qrTotal.Open;

      SALDO := qrTotalQTDE.AsFloat;


      with qrAux do begin
            close;
            sql.Clear;
            sql.Add(
                'delete from tbMovimentacaoTemp'// where usuario = ' + QuotedStr(FMenu.sqlUsuariosNome.AsString)
            );
            ExecSQL ;
        end;

      qrTemp.Close;
      qrTemp.Open;

      //criamos a movimentação temporaria com saldo
      while not   qrMovimento.Eof do begin
        qrTemp.Append;
        qrTempMAT_ID.Value := qrBuscaMaterialMAT_ID.AsInteger;
        qrTempQTDE.Value := qrMovimentoQTDE.AsFloat;
        qrTempSINAL.Value := qrMovimentoSINAL.AsString;
        qrTempSALDO.Value := SALDO;
        qrTempDATA.Value := qrMovimentoDATA.AsDateTime;
        qrTempORIGEM.Value := qrMovimentoorigem.Value;
        qrTemp.Post;

        if qrMovimentoSINAL.AsString = '+' then
                SALDO := SALDO - qrMovimentoQTDE.AsFloat
        else
                SALDO := SALDO + qrMovimentoQTDE.AsFloat;


        qrMovimento.Next;
      end;

                  }



        //buscamos o valor do saldo
        with qrSaldo do begin
                Close;
                sql.Clear;
                sql.Add(
                    '  SELECT TOP 1 SALDO '+
                    '  FROM kardex   '+
                    '  WHERE MAT_ID =    '+ qrBuscaMaterialMAT_ID.AsString +
                    '  AND CONVERT(VARCHAR, DATA, 112) <=   '+ QuotedStr(FormatDateTime('YYYYMMDD', StrToDate(mkDini.Text))) +
                    '  ORDER BY KAR_ID   '
                );
                Open;
        end;

              //  if qrSaldosaldo.AsFloat > 0.00 then begin
                with qrValor do begin
                    close;
                    sql.Clear;
                    sql.Add(
                       ' SELECT TOP 1 '+
                       '    REPOSICAO   '+
                       ' FROM Req_Capa A INNER JOIN Req_Item B  '+
                       ' ON A.Req_ID = B.Req_ID  '+
                       ' WHERE B.Mat_ID =  '+  qrBuscaMaterialMAT_ID.AsString +
                     //  ' AND B.Marca_ID  =   '+  qrBuscaMaterialMARCA_ID.AsString +
                       ' AND CONVERT(VARCHAR, A.Data, 112) <=  '+ QuotedStr(FormatDateTime('YYYYMMDD', StrToDate(mkDini.Text))) +
                       ' ORDER BY A.Data DESC  '
                    );
                    Open;
                end;

                VALOR := StrToFloat(FormatFloat('##0.00', qrValorREPOSICAO.AsFloat));
                try
                    if VALOR = 0.00 then begin
                        with qrValorNota do begin
                            Close;
                            sql.Clear;
                            sql.Add(
                               ' SELECT TOP 1 '+
                               '    A.Dt_Emiss, B.Preco_Unit / B.CONVERSAO AS REPOSICAO  '+
                               ' FROM Rec_NF A INNER JOIN Rec_Item B  '+
                               ' ON A.Rec_ID = B.Rec_ID  '+
                               ' WHERE Mat_ID = '+    qrBuscaMaterialMAT_ID.AsString +
                              // ' AND MARCA_ID = ' + qrBuscaMaterialMARCA_ID.AsString +
                               ' AND CONVERT(VARCHAR, A.Dt_Entrada, 112) <= '+ QuotedStr(FormatDateTime('YYYYMMDD', StrToDate(mkDini.Text))) +
                               ' ORDER BY A.Dt_Emiss DESC '
                            );
                            Open;
                            VALOR := StrToFloat(FormatFloat('##0.00', qrValorNotaREPOSICAO.AsFloat));
                        end;
                    end;
                except

                end;


                qrEstoqueR.Append;
                qrEstoqueRUSUARIO.AsString := FMenu.sqlUsuariosNome.AsString;
                qrEstoqueRMAT_ID.AsInteger := qrBuscaMaterialMAT_ID.AsInteger;
               // qrEstoqueRMARCA_ID.AsInteger := qrBuscaMaterialMARCA_ID.AsInteger;
                qrEstoqueRQTDE.AsFloat := qrSaldosaldo.AsFloat;
                qrEstoqueRVLR_REPOSICAO.AsFloat := VALOR ;
                qrEstoqueR.Post;
       // end;

        Application.ProcessMessages;
        qrBuscaMaterial.Next;
        ProgressBar1.Position := ProgressBar1.Position + 1;
    end;

    SpeedButton1.Enabled := True;
    SpeedButton2.Enabled := True;

    ShowMessage('Dados gerados com sucesso!');
    ProgressBar1.Position := 0;

end;

procedure TfrmEstoqueRetroativo.SpeedButton2Click(Sender: TObject);
var linha : Integer;
    Excel : Variant;
    i, Coluna : Integer;


begin
    qrRel.Close;
    qrRel.sql.Clear;
    qrRel.sql.Add(
        'SELECT  '+
        '	B.MAT_DESC, '+
        '	C.MARCA_DESC, '+
        '	A.QTDE,  '+
        '	A.VLR_REPOSICAO, '+
        '	A.QTDE * A.VLR_REPOSICAO AS TOTAL5 '+
        'FROM ESTOQUE_RETROATIVO A INNER JOIN MATERIAIS B  '+
        'ON A.MAT_ID = B.MAT_ID LEFT OUTER JOIN MARCAS C '+
        'ON A.MARCA_ID = C.MARCA_ID '+
        'where  usuario = ' + QuotedStr(FMenu.sqlUsuariosNome.AsString) +
        'ORDER BY MAT_DESC    '

    );
    qrRel.Open;

  linha := 1;

  excel := CreateOleObject('excel.application');
  Excel.WorkBooks.Add;

  dsExcel.DataSet.Last;
  ProgressBar1.Max := dsExcel.DataSet.RecordCount;
  dsExcel.DataSet.First;


  //escrevemos os cabeçalhos
  for i := 0 to pred(dsExcel.DataSet.FieldCount) do begin
      Excel.Cells[Linha, i + 1] :=  dsExcel.DataSet.Fields[i].DisplayName;
  end;

  dsExcel.DataSet.First;
  while not dsExcel.DataSet.Eof do begin
      Inc(linha);
      ProgressBar1.Position := ProgressBar1.Position + 1;
      for i := 0 to pred(dsExcel.DataSet.FieldCount) do begin
           //escreve valor inteiro
           if dsExcel.DataSet.Fields[i].DataType in [ftSmallint, ftInteger, ftLargeint, ftAutoInc] then
              Excel.Cells[Linha, i + 1] :=  dsExcel.DataSet.Fields[i].AsInteger
           //escreve valor decimal
           else if dsExcel.DataSet.Fields[i].DataType = ftFloat then  begin
              Excel.Cells[Linha, i + 1] :=  StrToFloat(FormatFloat('##0.00',dsExcel.DataSet.Fields[i].AsFloat));
              //Excel.Cells[Linha, i + 1].numberFormat := '0,00' ;
           end
           //esreve valores de data
           else if dsExcel.DataSet.Fields[i].DataType in [ftDate, ftDateTime] then begin
               Excel.Cells[Linha, i + 1] :=  FormatDateTime(' dd/mm/yyyy', dsExcel.DataSet.Fields[i].AsDateTime);
               Excel.Cells[Linha, i + 1].NumberFormat := 'm/d/yyyy';
           end
           else
           begin
               Excel.Cells[Linha, i + 1].NumberFormat := '@';
               Excel.Cells[Linha, i + 1] :=  dsExcel.DataSet.Fields[i].AsString;
           end;
      end;

      dsExcel.DataSet.Next;
      Application.ProcessMessages;
  end;

  Excel.Range['A:Z'].EntireColumn.AutoFit;
  Excel.Application.Visible := true;

  ProgressBar1.Position := 0;
end;

procedure TfrmEstoqueRetroativo.SpeedButton1Click(Sender: TObject);
begin
    qrRel.Close;
    qrRel.sql.Clear;
    qrRel.sql.Add(
        'SELECT  '+
        '	B.MAT_DESC, '+
        '	c.MARCA_DESC, '+
        '	A.QTDE,  '+
        '	A.VLR_REPOSICAO, '+
        '	A.QTDE * A.VLR_REPOSICAO AS TOTAL5 '+
        'FROM ESTOQUE_RETROATIVO A INNER JOIN MATERIAIS B  '+
        'ON A.MAT_ID = B.MAT_ID LEFT OUTER JOIN MARCAS C '+
        'ON A.MARCA_ID = C.MARCA_ID '+
        'where  usuario = ' + QuotedStr(FMenu.sqlUsuariosNome.AsString) +
        'ORDER BY MAT_DESC    '

    );
    qrRel.Open;
    frmRelEstoqueRetroativo := TfrmRelEstoqueRetroativo.Create(Self);
    frmRelEstoqueRetroativo.lbPosicao.Caption := 'Posição do estoque no dia ' + mkDini.Text;
    frmRelEstoqueRetroativo.QuickRep1.Preview;
end;

procedure TfrmEstoqueRetroativo.FormCreate(Sender: TObject);
begin
    Q_LOCAL_FILT.Open;
    Q_MAT.Open;
    Q_MARCA_FILT.Open;
    qrGrupo.Open;
end;

procedure TfrmEstoqueRetroativo.cboProdChange(Sender: TObject);
begin
   SpeedButton1.Enabled := False;
   SpeedButton2.Enabled := False;
end;

end.
