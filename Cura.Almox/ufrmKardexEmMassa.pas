unit ufrmKardexEmMassa;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, wwdblook, ComObj, ComCtrls, Db, ADODB, Mask, ExtCtrls, RzPanel,
  RzRadGrp;

type
  TfrmKardexEmMassa = class(TForm)
    cboLocal: TwwDBLookupCombo;
    Label1: TLabel;
    cboGrupo: TwwDBLookupCombo;
    Label2: TLabel;
    Button1: TButton;
    ProgressBar1: TProgressBar;
    dsExcel: TDataSource;
    Label3: TLabel;
    qrKardex: TADOQuery;
    qrKardexData: TDateTimeField;
    qrKardexLote: TStringField;
    qrKardexMaterial: TStringField;
    qrKardexQtde: TFloatField;
    qrKardexSaldo: TFloatField;
    qrKardexValidade: TDateTimeField;
    qrKardexMarca: TStringField;
    qrKardexLocal: TStringField;
    qrKardexTipoDocumento: TStringField;
    qrKardexNumeroDocumento: TStringField;
    qrKardexFornecedor: TStringField;
    qrKardexUSUARIO: TStringField;
    edtIni: TMaskEdit;
    edtFim: TMaskEdit;
    qrAux: TADOQuery;
    rzImobilizado: TRzRadioGroup;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmKardexEmMassa: TfrmKardexEmMassa;

implementation

uses UKardex, UMenu;

{$R *.DFM}

procedure TfrmKardexEmMassa.Button1Click(Sender: TObject);
var linha, Contador : Integer;
    Excel : Variant;
    i, Coluna, Y : Integer;
    dIni, dFim: TDateTime;
    CustoMedioAnterior, SaldoAnterior, CustoMovimento, SaldoDoCustoMedio, UltimoValorReposicao : Real;
begin

  dIni := StrToDateTime(edtIni.Text + ' 00:00');
  dFim := StrToDateTime(edtFim.Text + ' 23:59');

  {If cboLocal.Text = '' then begin
      ShowMessage('Selecione um local');
      Abort;
  end;   }

  //trata os grupos
  with FKardex.qrExportMateriais do begin
      Close;
      SQL.Clear;
      SQL.Add(
        '  SELECT DISTINCT MAT_ID, MAT_DESC '+
        '  FROM Materiais  WHERE 1 = 1 '
      );

      if cboGrupo.Text <> '' then
        sql.Add(' AND GRU_ID = ' + cboGrupo.LookupValue);

      if rzImobilizado.ItemIndex = 1 then
                sql.Add('AND MAT_IMOBILIZADO = ''N'' ');

          if rzImobilizado.ItemIndex = 2 then
                sql.Add('AND MAT_IMOBILIZADO = ''S'' ');

       SQL.ADD(' ORDER BY MAT_DESC ');
       Open;
  end;


  FKardex.qrExportMateriais.Last;
  FKardex.qrExportMateriais.First;


  ProgressBar1.Max := FKardex.qrExportMateriais.RecordCount;
  ProgressBar1.Position := 0;


  {FKardex.Q_LOCAL_FILT.Locate('LOCAL_ID', StrToInt(cboLocal.LookupValue), []);
  FKardex.wwDBLookupCombo3.Text := FKardex.qrExportLocalDescricao.AsString;
  FKardex.wwDBLookupCombo3.LookupValue := FKardex.qrExportLocalLocal_ID.AsString;}

  FKardex.Q_MAT.Locate('MAT_ID', FKardex.qrExportMateriaisMAT_ID.ASSTRING, []);
  FKardex.cboProd.Text := FKardex.qrExportMateriaisMAT_DESC.AsString;
  FKardex.cboProd.LookupValue := FKardex.qrExportMateriaisMAT_ID.AsString;

  FKardex.SBT_VISU.Click;


  excel := CreateOleObject('excel.application');
  Excel.WorkBooks.Add;
  linha := 1;
  //escrevemos os cabeçalhos
  {for i := 0 to pred(dsExcel.DataSet.FieldCount) do begin
      Excel.Cells[Linha, i + 1] :=  dsExcel.DataSet.Fields[i].DisplayName;
  end; }

  Excel.Cells[Linha, 1] := 'Data';
  Excel.Cells[Linha, 2] := 'Número Lote';
  Excel.Cells[Linha, 3] := 'Material';
  Excel.Cells[Linha, 4] := 'Quantidade';
  Excel.Cells[Linha, 5] := 'Saldo';
  Excel.Cells[Linha, 6] := 'Validade';
  Excel.Cells[Linha, 7] := 'Marca';
  Excel.Cells[Linha, 8] := 'Local';
  Excel.Cells[Linha, 9] := 'Tipo Docto.';
  Excel.Cells[Linha, 10] := 'N Documento';
  Excel.Cells[Linha, 11] := 'Fornecedor';
  Excel.Cells[Linha, 12] := 'Usuário';
  Excel.Cells[Linha, 13] := 'Tipo';
  Excel.Cells[Linha, 14] := 'CustoMedio';
  Excel.Cells[Linha, 15] := 'Reposição';
  Excel.Cells[Linha, 16] := 'TotalReposição';
  Excel.Cells[Linha, 17] := 'Custo Movimento';
  Excel.Cells[Linha, 18] := 'Saldo do Custo Médio';



        WHILE not FKardex.qrExportMateriais.Eof DO begin
              ProgressBar1.Position := ProgressBar1.Position + 1;

              Label3.Caption := 'Exportando ' + IntToStr(ProgressBar1.Position) + ' de ' + IntToStr(ProgressBar1.Max);
              Application.ProcessMessages;




              if FKardex.Q_MAT.Locate('MAT_ID', FKardex.qrExportMateriaisMAT_ID.ASSTRING, []) = True then begin
                try
                    FKardex.cboProd.Text := FKardex.qrExportMateriaisMAT_DESC.AsString;
                    FKardex.cboProd.LookupValue := FKardex.qrExportMateriaisMAT_ID.AsString;
                    FKardex.SBT_VISU.Click;


                    Contador := 0;
                    CustoMedioAnterior := 0;
                    SaldoAnterior := 0;
                    CustoMovimento := 0;
                    SaldoDoCustoMedio := 0;
                    UltimoValorReposicao := 0;


                    //EXPORTA PARA O EXCEL
                    dsExcel.DataSet.Last;
                    dsExcel.DataSet.First;
                    while not dsExcel.DataSet.Eof do begin

                        if (FKardex.Q_KDXDATA.AsDateTime >= dIni) and (FKardex.Q_KDXDATA.AsDateTime <= dFim) then begin
                            Inc(linha);
                            Inc(Contador);

                            if FKardex.Q_KDXReposicao.AsFloat > 0 then
                                UltimoValorReposicao := FKardex.Q_KDXReposicao.AsFloat;

                            //calcula o custo de movimento
                            CustoMovimento :=  FKardex.Q_KDXCustoMedio.AsFloat * FKardex.Q_KDXQTDE.AsFloat;


                            if  FKardex.Q_KDXTIPO.AsString = 'B' then
                                    CustoMovimento :=  CustoMovimento * -1;

                            //Calcula o Saldo de Custo
                            if Contador = 1 then begin
                                SaldoDoCustoMedio := FKardex.Q_KDXCustoMedio.AsFloat * FKardex.Q_KDXSALDO.AsFloat;
                            end
                            else begin
                                SaldoDoCustoMedio := CustoMovimento + CustoMedioAnterior;
                            end;

                            CustoMedioAnterior :=  FKardex.Q_KDXCustoMedio.AsFloat * FKardex.Q_KDXSALDO.AsFloat;



                            Excel.Cells[Linha, 1] := FormatDateTime(' dd/mm/yyyy', FKardex.Q_KDXDATA.AsDateTime);
                            Excel.Cells[Linha, 2] := FKardex.Q_KDXN_LOTE.AsString;
                            Excel.Cells[Linha, 3] := FKardex.Q_KDXMATERIAL.AsString;
                            Excel.Cells[Linha, 4] := FKardex.Q_KDXQTDE.AsFloat;
                            Excel.Cells[Linha, 5] := FKardex.Q_KDXSALDO.AsFloat;
                            Excel.Cells[Linha, 6] := FormatDateTime(' dd/mm/yyyy', FKardex.Q_KDXVALID.AsDateTime);
                            Excel.Cells[Linha, 7] := FKardex.Q_KDXMARCA_DESC.AsString;
                            Excel.Cells[Linha, 8] := FKardex.Q_KDXLOCAL.AsString;
                            Excel.Cells[Linha, 9] := FKardex.Q_KDXDESCRICAO.AsString;
                            Excel.Cells[Linha, 10] := FKardex.Q_KDXDOCTO.AsString;
                            Excel.Cells[Linha, 11] := FKardex.Q_KDXFOR_RAZA.AsString;
                            Excel.Cells[Linha, 12] := FKardex.Q_KDXUSUARIO.AsString;
                            Excel.Cells[Linha, 13] := FKardex.Q_KDXTIPO.AsString;
                            Excel.Cells[Linha, 14] := FKardex.Q_KDXCustoMedio.AsFloat;
                            Excel.Cells[Linha, 15] := UltimoValorReposicao;
                            Excel.Cells[Linha, 16] := FKardex.Q_KDXTotalReposicao.AsFloat;
                            Excel.Cells[Linha, 17] := CustoMovimento;
                            Excel.Cells[Linha, 18] := SaldoDoCustoMedio;



                           { for i := 0 to pred(dsExcel.DataSet.FieldCount) do begin
                                 //escreve valor inteiro
                                 if dsExcel.DataSet.Fields[i].DataType in [ftSmallint, ftInteger, ftLargeint, ftAutoInc] then
                                    Excel.Cells[Linha, i + 1] :=  dsExcel.DataSet.Fields[i].AsInteger
                                 //escreve valor decimal
                                 else if dsExcel.DataSet.Fields[i].DataType = ftFloat then  begin
                                    Excel.Cells[Linha, i + 1] :=  dsExcel.DataSet.Fields[i].AsFloat;
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
                                     Excel.Cells[Linha, i + 1] :=  dsExcel.DataSet.Fields[i].Text;
                                 end;
                            end; }
                        end;

                        //se está fora do range de pesquisa ele finaliza
                      //  if FKardex.Q_KDXDATA.AsDateTime < dIni then
                       //    dsExcel.DataSet.Last;

                        dsExcel.DataSet.Next;
                    end;
                except

                end;

              end;//if locate

              FKardex.qrExportMateriais.Next;
          end;//END DO WHILE DO MATERIAIS






  Excel.Range['A:Z'].EntireColumn.AutoFit;
  Excel.Application.Visible := true;

  self.Close;
end;

procedure TfrmKardexEmMassa.FormCreate(Sender: TObject);
begin
   edtIni.Text := DateToStr(Now);
   edtFim.Text := DateToStr(Now);
end;

end.
