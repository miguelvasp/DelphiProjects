unit UfrmRastreabilidade;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, StdCtrls, Mask, wwdblook, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls, ComObj;

type
  TfrmRastreabilidade = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    cboCliente: TwwDBLookupCombo;
    cboProduto: TwwDBLookupCombo;
    edtNota: TEdit;
    edtManifesto: TEdit;
    edtD1: TMaskEdit;
    edtD2: TMaskEdit;
    edtLoad: TEdit;
    edtLote: TEdit;
    Button1: TButton;
    qrBusca: TADOQuery;
    DataSource1: TDataSource;
    qrCliente: TADOQuery;
    qrClienteCLIN_RAZA: TStringField;
    qrClienteCLIN_ID: TAutoIncField;
    qrProd: TADOQuery;
    qrProdPRO_COD: TStringField;
    qrProdPRO_ID: TAutoIncField;
    qrProdPRO_DESC: TStringField;
    DataSource2: TDataSource;
    RadioGroup1: TRadioGroup;
    STP_RASTREABILIDADE: TADOStoredProc;
    Label8: TLabel;
    edtVenc: TMaskEdit;
    qrBuscaCH: TIntegerField;
    qrBuscaPRO_ID: TIntegerField;
    qrBuscaMANI_ID: TIntegerField;
    qrBuscaDATA: TDateTimeField;
    qrBuscaCLIN_ID: TIntegerField;
    qrBuscaLOTE: TStringField;
    qrBuscaVALIDADE: TDateTimeField;
    qrBuscaQTDE: TFloatField;
    qrBuscaNFI_LOAD: TStringField;
    qrBuscaNFI_NUMERO: TStringField;
    Button2: TButton;
    qrRel: TADOQuery;
    qrRelCH: TIntegerField;
    qrRelPRO_ID: TIntegerField;
    qrRelMANI_ID: TIntegerField;
    qrRelDATA: TDateTimeField;
    qrRelCLIN_ID: TIntegerField;
    qrRelLOTE: TStringField;
    qrRelVALIDADE: TDateTimeField;
    qrRelQTDE: TFloatField;
    qrRelNFI_NUMERO: TStringField;
    qrRelNFI_LOAD: TStringField;
    qrRelNFI_DEMI: TDateTimeField;
    qrRelNFI_DEST_RAZA: TStringField;
    qrRelINF_QTDE: TFloatField;
    qrRelNFI_DTENTREGA: TDateTimeField;
    qrRelNFI_DEST_ENDERECO: TStringField;
    qrRelNFI_DEST_BAIRRO: TStringField;
    qrRelNFI_DEST_COMPL: TStringField;
    qrRelNFI_DEST_CEP: TStringField;
    qrRelNFI_DEST_UF_SIGLA: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cboClienteChange(Sender: TObject);
    procedure DataSource2DataChange(Sender: TObject; Field: TField);
    procedure GeraExcel(filtro : WideString);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ExecConsulta;
    procedure Button2Click(Sender: TObject);
    procedure GErarExcelAnalitico;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRastreabilidade: TfrmRastreabilidade;
  excel,ColumnRange :Variant;
  filtro : WideString;
implementation

uses UMenu, UfrmRelRastreabilidade, UfrmRelRastreabilidadeAnalitico;

{$R *.DFM}

procedure TfrmRastreabilidade.Button1Click(Sender: TObject);
begin
      ExecConsulta;

      with qrBusca do begin
          close;
          Parameters[0].Value := FMenu.SqlUsuariosCH.AsInteger;
          Open;
      end;



       if RadioGroup1.ItemIndex = 0  then begin
            frmRelRastreabilidade := TfrmRelRastreabilidade.Create(Self);
            frmRelRastreabilidade.lbFiltros.Caption := Filtro;
            frmRelRastreabilidade.QuickRep1.Preview;
            frmRelRastreabilidade.close;
       end
       else
       begin
           GeraExcel(Filtro);
       end;


end;

procedure TfrmRastreabilidade.FormCreate(Sender: TObject);
begin
  qrCliente.Open;
end;

procedure TfrmRastreabilidade.cboClienteChange(Sender: TObject);
begin
  cboProduto.Text := '';
end;

procedure TfrmRastreabilidade.DataSource2DataChange(Sender: TObject;
  Field: TField);
begin
     qrProd.CLOSE;
     qrProd.Parameters[0].Value := qrClienteCLIN_ID.AsInteger;
     qrProd.Open;
end;

procedure TfrmRastreabilidade.GeraExcel(filtro: WideString);
var linha : Integer;
begin
    Excel := CreateOleObject('excel.application');
    Excel.WorkBooks.Add;
    Excel.Workbooks[1].WorkSheets[1].Name := 'Rastreabilidade de Produtos';
    ColumnRange := Excel.Workbooks[1].WorkSheets[1].Columns;

    linha := 1;
    Excel.Cells[LINHA,1] := 'Relatório de Rastreabilidade';
    linha := 2;
    Excel.Cells[LINHA,1] := filtro;
    

    linha := 4;
    Excel.Cells[LINHA,1] := 'Manifesto';
    Excel.Cells[LINHA,2] := 'Dt. Manifesto';
    Excel.Cells[LINHA,3] := 'Nota Fiscal';
    Excel.Cells[LINHA,4] := 'Qtde.';
    Excel.Cells[LINHA,5] := 'Load';
    Excel.Cells[LINHA,6] := 'Lote';
    Excel.Cells[LINHA,7] := 'Vencimento';

    qrBusca.First;
    while not qrBusca.Eof do begin
        Inc(linha);
        Excel.Cells[LINHA,1] := qrBuscaMANI_ID.AsInteger;
        Excel.Cells[LINHA,2] := StrToDate(FormatDateTime('dd/MM/yyyy', qrBuscaDATA.Value));
        Excel.Cells[LINHA,3] := qrBuscaNFI_NUMERO.AsString;
        Excel.Cells[LINHA,4] := StrToFloat(FormatFloat('##0.00',qrBuscaQTDE.Value));
        Excel.Cells[LINHA,5] := qrBuscaNFI_LOAD.Value;
        Excel.Cells[LINHA,6] := qrBuscaLOTE.Value;
        Excel.Cells[LINHA,7] := StrToDate(FormatDateTime('dd/MM/yyyy', qrBuscaVALIDADE.Value));
        qrBusca.Next;
    end;
    //Excel.Range['A:Z'].EntireColumn.AutoFit;
    excel.visible := True;

end;

procedure TfrmRastreabilidade.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  frmRastreabilidade := nil;
end;

procedure TfrmRastreabilidade.ExecConsulta;
begin
   if cboCliente.Text = '' then begin
       ShowMessage('Informe o cliente');
       Abort;
   end;

   if cboProduto.Text = '' then begin
       ShowMessage('informe o produto');
       Abort;
   end;


   Filtro := 'Filtros: Cliente: ' + cboCliente.Text;
   Filtro := Filtro + ' Produto: ' + cboProduto.Text;

  { with qrBusca do begin
       Close;
       SQL.Clear;
       SQL.Add(
         ' SELECT '+
         '         B.MANI_ID, '+
         '         M.MANI_DATA DT_MANI, '+
         '         B.NFI_NUMERO, '+
         '         C.PRO_COD, '+
         '         C.PRO_DESC,'+
         '         C.INF_QTDE,'+
         '         B.NFI_LOAD, '+
         '         D.ESTQ_LOTE '+
         ' FROM NF B INNER JOIN NF_ITENS C '+
         ' ON B.NFI_CODI = C.NFI_CODI INNER JOIN MANIFESTO M ON B.MANI_ID = M.MANI_ID'+
         ' INNER JOIN ESTOQUE_MANI D '+
         ' ON B.MANI_ID = D.MANI_ID AND C.PRO_ID = D.PRO_ID '+
         ' WHERE 1 = 1 '+
         ' AND D.PRO_ID = ' + cboProduto.LookupValue
       );

       IF edtNota.Text <> '' then  begin
          SQL.Add(' AND B.NFI_NUMERO LIKE ' + QuotedStr('%'+edtNota.Text+'%'));
          Filtro := Filtro + ' Nota: ' + edtNota.Text;
       end;

       IF edtManifesto.Text <> '' then begin
          SQL.Add(' AND B.MANI_ID = ' + edtManifesto.Text);
          Filtro := Filtro + ' Manifesto: ' + edtManifesto.Text      ;
       end;

       IF edtD1.Text <> '  /  /    ' then begin
          SQL.Add(' AND CONVERT(CHAR(10), M.MANI_DATA, 112) >= ' + QuotedStr(FormatDateTime('YYYYMMDD', StrToDate(edtD1.Text))));
          Filtro := Filtro + ' Data de: ' + edtD1.Text;
       end;

       IF edtD2.Text <> '  /  /    ' then begin
          SQL.Add(' AND CONVERT(CHAR(10), M.MANI_DATA, 112) <= '  +QuotedStr(FormatDateTime('YYYYMMDD', StrToDate(edtD2.Text))));
          Filtro := Filtro + ' até ' + edtD2.Text;
       end;

       IF edtLoad.Text <> '' then begin
          SQL.Add(' AND B.NFI_LOAD = ' + QuotedStr(edtLoad.Text));
          Filtro := Filtro + ' Load: ' + edtLoad.Text;
       end;

       IF edtLote.Text <> '' then begin
          SQL.Add(' AND D.ESTQ_LOTE = ' + QuotedStr(edtLote.Text));
          Filtro := Filtro + ' Lote: ' + edtLote.Text;
       end;

       SQL.Add('ORDER BY B.MANI_ID, B.NFI_NUMERO, C.PRO_COD');
       Open;
   end;

   if qrBusca.IsEmpty then begin
       ShowMessage('Não foram encontrados registros com os filtros informados!');
       Abort;
   end;  }

   STP_RASTREABILIDADE.Parameters.ParamByName('@CH').Value := FMenu.SqlUsuariosCH.AsInteger;
   STP_RASTREABILIDADE.Parameters.ParamByName('@CLIN_ID').Value := StrToInt(cboCliente.LookupValue);
   STP_RASTREABILIDADE.Parameters.ParamByName('@PRO_ID').Value := StrToInt(cboProduto.LookupValue);

       IF edtManifesto.Text <> '' then begin
          STP_RASTREABILIDADE.Parameters.ParamByName('@MANI_ID').Value := StrToInt(edtManifesto.Text);
          Filtro := Filtro + ' Manifesto: ' + edtManifesto.Text      ;
       end
       else
          STP_RASTREABILIDADE.Parameters.ParamByName('@MANI_ID').Value := 0;

       IF edtD1.Text <> '  /  /    ' then begin
          STP_RASTREABILIDADE.Parameters.ParamByName('@DT_INI').Value := FormatDateTime('YYYYMMDD', StrToDate(edtD1.Text));
          Filtro := Filtro + ' Data de: ' + edtD1.Text;
       end
       else  STP_RASTREABILIDADE.Parameters.ParamByName('@DT_INI').Value := '';

       IF edtD2.Text <> '  /  /    ' then begin
          STP_RASTREABILIDADE.Parameters.ParamByName('@DT_FIM').Value := FormatDateTime('YYYYMMDD', StrToDate(edtD2.Text));
          Filtro := Filtro + ' até ' + edtD2.Text;
       end ELSE
       STP_RASTREABILIDADE.Parameters.ParamByName('@DT_FIM').Value := '';

       IF edtLote.Text <> '' then begin
          STP_RASTREABILIDADE.Parameters.ParamByName('@LOTE').Value := edtLote.Text;
          Filtro := Filtro + ' Lote: ' + edtLote.Text;
       end ELSE
          STP_RASTREABILIDADE.Parameters.ParamByName('@LOTE').Value := '';

       IF edtLoad.Text <> '' then begin
          STP_RASTREABILIDADE.Parameters.ParamByName('@LOAD').Value := edtLoad.Text;
          Filtro := Filtro + ' Load: ' + edtLoad.Text;
       end ELSE
          STP_RASTREABILIDADE.Parameters.ParamByName('@LOAD').Value := '';

       IF edtNota.Text <> '' then  begin
          STP_RASTREABILIDADE.Parameters.ParamByName('@NF').Value := edtNota.Text;
          Filtro := Filtro + ' Nota: ' + edtNota.Text;
       end  else
          STP_RASTREABILIDADE.Parameters.ParamByName('@NF').Value := '';

       IF edtVenc.Text <> '  /  /    ' then begin
          STP_RASTREABILIDADE.Parameters.ParamByName('@VENCIMENTO').Value := FormatDateTime('YYYYMMDD', StrToDate(edtVenc.Text));
          Filtro := Filtro + ' Vencimeto ' + edtVenc.Text;
       end else
          STP_RASTREABILIDADE.Parameters.ParamByName('@VENCIMENTO').Value := '';


       try
         STP_RASTREABILIDADE.ExecProc;
       except
           ON E : Exception DO
           begin
                 ShowMessage('Aconteceu um erro: ' + e.Message);
           end;
       end;


end;

procedure TfrmRastreabilidade.Button2Click(Sender: TObject);
begin
    ExecConsulta;

    if RadioGroup1.ItemIndex = 0 then begin
      frmRelRastreabilidadeAnalitico := TfrmRelRastreabilidadeAnalitico.Create(Self);
      frmRelRastreabilidadeAnalitico.gtQRMemo1.Lines.Text := filtro;
      frmRelRastreabilidadeAnalitico.QuickRep1.Preview;
      frmRelRastreabilidadeAnalitico.close;
    end else
      GErarExcelAnalitico;
end;

procedure TfrmRastreabilidade.GErarExcelAnalitico;
var linha : Integer;
begin
    Excel := CreateOleObject('excel.application');
    Excel.WorkBooks.Add;
    Excel.Workbooks[1].WorkSheets[1].Name := 'Rastreabilidade de Produtos';
    ColumnRange := Excel.Workbooks[1].WorkSheets[1].Columns;

    linha := 1;
    Excel.Cells[LINHA,1] := 'Relatório de Rastreabilidade';
    linha := 2;
    Excel.Cells[LINHA,1] := filtro;


    linha := 4;
    Excel.Cells[LINHA,1] := 'Manifesto';
    Excel.Cells[LINHA,2] := 'Lote';
    Excel.Cells[LINHA,3] := 'Vencimento';
    Excel.Cells[LINHA,4] := 'Qtde. Estq.';
    Excel.Cells[LINHA,5] := 'Nota';
    Excel.Cells[LINHA,6] := 'Emissão';
    Excel.Cells[LINHA,7] := 'Load';
    Excel.Cells[LINHA,8] := 'Dest';
    Excel.Cells[LINHA,9] := 'Qtde NF';
    Excel.Cells[LINHA,10] := 'Endereço';
    Excel.Cells[LINHA,11] := 'Bairro';
    Excel.Cells[LINHA,12] := 'Complemento';
    Excel.Cells[LINHA,13] := 'CEP';
    Excel.Cells[LINHA,14] := 'UF';

    qrRel.close;
    qrRel.Parameters[0].Value := FMenu.SqlUsuariosCH.AsInteger;
    qrRel.Open;

    qrRel.First;
    while not qrRel.Eof do begin
        Inc(linha);
        Excel.Cells[LINHA,1] := qrRelMANI_ID.AsInteger;
        Excel.Cells[LINHA,2] := qrRelLOTE.Value;
        Excel.Cells[LINHA,3] := qrRelVALIDADE.Value;
        Excel.Cells[LINHA,4] := StrToFloat(FormatFloat('##0.00',qrRelQTDE.Value));
        Excel.Cells[LINHA,5] := qrRelNFI_NUMERO.AsString;
        Excel.Cells[LINHA,6] := qrRelNFI_DTENTREGA.Value;
        Excel.Cells[LINHA,7] := qrRelNFI_LOAD.Value;
        Excel.Cells[LINHA,8] := qrRelNFI_DEST_RAZA.AsString;
        Excel.Cells[LINHA,9] := qrRelINF_QTDE.AsFloat;
        Excel.Cells[LINHA,10] := qrRelNFI_DEST_ENDERECO.Value;
        Excel.Cells[LINHA,11] := qrRelNFI_DEST_BAIRRO.AsString;
        Excel.Cells[LINHA,12] := qrRelNFI_DEST_COMPL.AsString;
        Excel.Cells[LINHA,13] := qrRelNFI_DEST_CEP.AsString;
        Excel.Cells[LINHA,14] := qrRelNFI_DEST_UF_SIGLA.AsString;
        qrRel.Next;
    end;
    //Excel.Range['A:Z'].EntireColumn.AutoFit;
    excel.visible := True;

end;

end.
