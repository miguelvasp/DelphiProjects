unit URel_Transporte;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Wwquery, wwdblook, StdCtrls, Mask, ExtCtrls, Buttons,
  wwdbedit, Wwdotdot, Wwdbcomb, ComObj;

type
  TfrmRel_Transporte = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    GroupBox2: TGroupBox;
    cbocliente: TwwDBLookupCombo;
    qrClienteNBF: TwwQuery;
    qrClienteNBFclin_id: TAutoIncField;
    qrClienteNBFclin_nome: TStringField;
    RadioGroup1: TRadioGroup;
    cboProduto: TwwDBLookupCombo;
    qrProduto: TwwQuery;
    qrProdutopro_id: TAutoIncField;
    qrProdutopro_cod: TStringField;
    qrProdutopro_desc: TStringField;
    rgTransportador: TRadioGroup;
    BitBtn1: TBitBtn;
    rgGrupo: TRadioGroup;
    qrExecConsulta: TwwQuery;
    GroupBox3: TGroupBox;
    qrTPProduto: TwwQuery;
    qrTPProdutoTPRO_ID: TAutoIncField;
    qrTPProdutoTPRO_NOME: TStringField;
    cbotpProduto: TwwDBLookupCombo;
    GroupBox4: TGroupBox;
    edtFator: TEdit;
    BitBtn2: TBitBtn;
    qrRel: TwwQuery;
    qrRelDATA: TDateTimeField;
    qrRelNOTA_FISCAL: TStringField;
    qrRelPESO: TFloatField;
    qrRelOBS: TStringField;
    qrRelCODIGO: TStringField;
    qrRelPRODUTO: TStringField;
    qrRelFATURA: TFloatField;
    qrFiltraProduto: TwwQuery;
    qrFiltraNotaFiscal: TwwQuery;
    qrFiltraProdutoCODIGO: TStringField;
    qrFiltraNotaFiscalNOTA_FISCAL: TStringField;
    qrDetalhe: TwwQuery;
    qrDetalheDATA: TDateTimeField;
    qrDetalheNOTA_FISCAL: TStringField;
    qrDetalhePESO: TFloatField;
    qrDetalheOBS: TStringField;
    qrDetalheCODIGO: TStringField;
    qrDetalhePRODUTO: TStringField;
    qrDetalheFATURA: TFloatField;
    qrDetalheCH: TIntegerField;
    qrDetalhefat: TFloatField;
    qrTotais: TwwQuery;
    qrTotaisTPESO: TFloatField;
    qrTotaisTFATURA: TFloatField;
    qrCount: TwwQuery;
    qrCountachei: TIntegerField;
    qrRelUV: TFloatField;
    qrRelUE: TFloatField;
    qrDetalheUV: TFloatField;
    qrDetalheUE: TFloatField;
    qrTotaisTUV: TFloatField;
    qrTotaisTUE: TFloatField;
    rgTpDoc: TRadioGroup;
    qrClienteRemetente: TwwQuery;
    qrClienteRemetenteCLIN_ID: TAutoIncField;
    qrClienteRemetenteclin_nome: TStringField;
    cboClienteRemetente: TwwDBLookupCombo;
    procedure FormCreate(Sender: TObject);
    procedure cboclienteCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure cboclienteExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure MaskEdit1Exit(Sender: TObject);
    procedure MaskEdit2Exit(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure rgTpDocClick(Sender: TObject);
  private
    procedure BuscaProdutos;
    procedure GerarInformacoes;
    procedure GeraExcelProduto;
    procedure GeraExcelNota;
  public
    { Public declarations }
  end;

var
  frmRel_Transporte: TfrmRel_Transporte;

implementation

uses UMenu, uRelTransporteQrp, UAbTabelas;

{$R *.DFM}

{ TForm2 }

procedure TfrmRel_Transporte.BuscaProdutos;
begin
    with qrProduto do
    begin
        close;
        sql.Clear;
        sql.Add('select pro_id, pro_cod, pro_desc from produto');
        if cbocliente.Text <> '' then
                SQL.Add('where clin_id = ' + cbocliente.LookupValue)
        else
                SQL.Add('where clin_id = 0')  ;
        sql.Add('order by pro_cod')  ;
        Open;
    end;


    with qrTPProduto do
    begin
        Close;
        sql.Clear;
        sql.Add('SELECT TPRO_ID, TPRO_NOME FROM TPPRODUTO_CLINBF ');
        if cbocliente.Text <> '' then
                SQL.Add('where clin_id = ' + cbocliente.LookupValue)
        else
                SQL.Add('where clin_id = 0')  ;
        SQL.Add('order by tpro_nome ');
        Open;
    end;
end;

procedure TfrmRel_Transporte.FormCreate(Sender: TObject);
begin
  MaskEdit1.Text := FormatDateTime('DD/MM/YYYY', Date);
  MaskEdit2.Text := FormatDateTime('DD/MM/YYYY', Date);
  qrClienteNBF.Open;
  qrClienteRemetente.Open;
  qrTPProduto.Open;
  BuscaProdutos;
end;

procedure TfrmRel_Transporte.cboclienteCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
        BuscaProdutos;
end;

procedure TfrmRel_Transporte.cboclienteExit(Sender: TObject);
begin
   if rgTpDoc.ItemIndex < 2 then begin
      IF cbocliente.Text = '' then
      begin
           MessageBox(Self.Handle, 'Informe o fornecedor', 'Erro', MB_OK + MB_ICONERROR)  ;
           Abort;
      end;
              BuscaProdutos;
   end;
end;

procedure TfrmRel_Transporte.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        Action := caFree;
        frmRel_Transporte := nil;
end;

procedure TfrmRel_Transporte.GerarInformacoes;
var de, ate : TDateTime;

fator : Double;
begin
             Application.CreateForm(TFAbTabelas, FAbTabelas);
             FAbTabelas.Gauge1.MaxValue := 19;
             FAbTabelas.Show;
             FAbTabelas.RePaint;


        try
          fator := StrToFloat(edtFator.Text);
          if fator = 0 then
          begin
            MessageBox(Self.Handle, 'Fator de cálculo igual a zero', 'Erro', MB_OK + MB_ICONERROR)  ;
            Abort;
          end;
        except
          on e : EConvertError do
            begin
              MessageBox(Self.Handle, 'O valor informado para o fator de cálculo é inválido!', 'Erro', MB_OK + MB_ICONERROR)  ;
              Abort;
            end;
        end;

        if rgTpDoc.ItemIndex < 2 then begin
              IF (cbocliente.Text = '')  then
              begin
                  MessageBox(Self.Handle, 'O campo cliente é obrigatório', 'Erro', MB_OK + MB_ICONERROR)  ;
                  Abort;
              end;
        end
        else
        begin
              IF (cboClienteRemetente.Text = '') then
              begin
                  MessageBox(Self.Handle, 'O campo cliente é obrigatório', 'Erro', MB_OK + MB_ICONERROR)  ;
                  Abort;
              end;
        end;


        

        try
           with qrExecConsulta do
          begin
              Params[0].AsInteger :=  FMenu.SqlUsuariosCH.Value;
              if MaskEdit1.Text <> '  /  /    ' then
              begin
                  de :=  StrToDate(MaskEdit1.Text);
                  Params[1].AsString := FormatDateTime('YYYYMMDD', de);
              end else
                  Params[1].AsString := '';

              if MaskEdit2.Text <> '  /  /    ' then
              begin
                  ate :=  StrToDate(MaskEdit2.Text);
                  Params[2].AsString := FormatDateTime('YYYYMMDD', ate);
              end else
                  Params[2].AsString := '';


              if rgTpDoc.ItemIndex < 2 then
                   Params[3].AsInteger := StrToInt(cbocliente.LookupValue)
              else
                   Params[3].AsInteger := StrToInt(cboClienteRemetente.LookupValue) ;



              if  cboProduto.Text <> '' then
                  Params[4].AsInteger := StrToInt(cboProduto.LookupValue)
              else
                  Params[4].AsInteger := 0;


              if rgTransportador.ItemIndex = 0 then
                  Params[5].AsString := 'T'
              else  if rgTransportador.ItemIndex = 1 then
                  Params[5].AsString := 'S'
              else  if rgTransportador.ItemIndex = 2 then
                  Params[5].AsString := 'N';


              if cbotpProduto.Text <> '' then
                  Params[6].AsString := cbotpProduto.LookupValue
              else
                  Params[6].AsString := '0';

                  Params[7].AsFloat := fator;

              case rgTpDoc.ItemIndex of
                  0 :  Params[8].AsString := '1';
                  1 :  Params[8].AsString := '2';
                  2 :  Params[8].AsString := '4';
              end;

              ExecSQL;

        end; //end with
        except
              on e : Exception do
              begin
                 MessageBox(Self.Handle, PChar('Aconteceu um erro ao gerar o relatório' + #13+ e.Message), 'Erro', MB_OK + MB_ICONERROR)  ;
                 Abort;
              end;
        end;






end;

procedure TfrmRel_Transporte.BitBtn1Click(Sender: TObject);
begin
        GerarInformacoes;
        FAbTabelas.close;
        FAbTabelas.Release;
        frmReltransporteqrp := TfrmReltransporteqrp.Create(Self);
        frmReltransporteqrp.rel.Preview;
end;

procedure TfrmRel_Transporte.MaskEdit1Exit(Sender: TObject);
var data : TDateTime;
begin
  try
     data := StrToDate(MaskEdit1.Text);
  except
    on e : Exception do
    begin
       MessageBox(Self.Handle, 'Data inválida', 'Erro', MB_OK + MB_ICONERROR)  ;
       MaskEdit1.SetFocus;
    end;
  end;

end;

procedure TfrmRel_Transporte.MaskEdit2Exit(Sender: TObject);
var data : TDateTime;
begin
  try
     data := StrToDate(MaskEdit2.Text);
  except
    on e : Exception do
    begin
       MessageBox(Self.Handle, 'Data inválida', 'Erro', MB_OK + MB_ICONERROR)  ;
       MaskEdit2.SetFocus;
    end;
  end;

end;

procedure TfrmRel_Transporte.GeraExcelProduto;
var
  objExcel, Sheet : oleVariant;
  linha : Integer;
  filtros : string;
  TotalPeso, TotalValor, UE, UV : Double;
begin

  TotalPeso := 0;
  TotalValor := 0;
  UE := 0;
  UV := 0;

  filtros := 'Período de: ' + MaskEdit1.Text + ' ate: ' + MaskEdit2.Text;
  if cbocliente.Text <> '' then
        filtros := filtros + ' Cliente: ' + cbocliente.Text;

  if cbotpProduto.Text <> '' then
        filtros := filtros + ' Tipo de Produto: ' + cbotpProduto.Text;

  if cboProduto.Text <> '' then
        filtros := filtros + ' Produto: ' + cboProduto.Text;



  objExcel := CreateOleObject('excel.application');


  objExcel.WorkBooks.Add;
  objExcel.Workbooks[1].Sheets.Add;
  objExcel.Workbooks[1].WorkSheets[1].Name := 'Controle de Transporte';
  Sheet := objExcel.Workbooks[1].WorkSheets['Controle de Transporte'];

  //atribuir largura das colunas
  Sheet.Range['A1'].ColumnWidth := 11;
  Sheet.Range['B1'].ColumnWidth := 11;
  Sheet.Range['C1'].ColumnWidth := 10;
  Sheet.Range['D1'].ColumnWidth := 11;
  Sheet.Range['E1'].ColumnWidth := 11;
  Sheet.Range['F1'].ColumnWidth := 40;
  Sheet.Range['G1'].ColumnWidth := 11;

 // Sheet.Range['A'].NumberFormat := 'm/d/yyyy';

  //gerar cabeçalho
  Sheet.range['A1:G1'].mergecells := true;
  Sheet.cells[1,1].value := 'Controle de Transporte';
  Sheet.cells[1,1].HorizontalAlignment := 3;
  Sheet.cells[1,1].font.bold := true;
  Sheet.cells[1,1].font.size := 15;

  //Gerar filtros
  Sheet.range['A3:G3'].mergecells := true;
  Sheet.cells[3,1].value := filtros;
  Sheet.cells[3,1].HorizontalAlignment := 3;
  Sheet.cells[3,1].font.size := 10;
  
  //cabeçalho das colunas
  Sheet.cells[4,1].value := 'Data';
  Sheet.cells[4,2].value := 'Nota fiscal';
  Sheet.cells[4,3].value := 'Peso(kg)';
  Sheet.cells[4,4].value := 'Observação';
  Sheet.cells[4,5].value := 'Código';
  Sheet.cells[4,6].value := 'Produto';
  Sheet.cells[4,7].value := 'Fatura(R$)';
  Sheet.cells[4,8].value := 'Qtde. UV';
  Sheet.cells[4,9].value := 'Qtde. UE';
  Sheet.Range['A4:I4'].Interior.Color := $00CDCDCD;
  linha := 4;
  //inicio da escrita dos itens
  qrFiltraProduto.Close;
  qrFiltraProduto.Open;
  while not qrFiltraProduto.Eof do
  begin  //buscamos os produtos

        qrCount.Close;
        qrCount.sql.Clear;
        qrCount.SQL.Add('select count(*) as achei from rel_transporte');
        qrCount.sql.Add('where codigo = ' + QuotedStr(qrFiltraProdutoCODIGO.Value));
        qrCount.sql.Add('and ch = ' + FMenu.SqlUsuariosCH.AsString);
        qrCount.Open;


        qrDetalhe.Close;
        qrDetalhe.sql.Clear;
        qrDetalhe.sql.Add('SELECT *, round(fatura, 2) as fat FROM REL_TRANSPORTE where codigo = ' + QuotedStr(qrFiltraProdutoCODIGO.Value));
        qrDetalhe.SQL.Add('AND CH = ' + FMenu.SqlUsuariosCH.AsString);
        //qrDetalhe.sql.Add(' order by data') ;
        qrDetalhe.Open;
        while  not qrDetalhe.Eof do
        begin
                Inc(linha);
                Sheet.cells[linha,1].value := FormatDateTime('dd-mmm-yyyy',qrDetalheDATA.Value);
                Sheet.cells[linha,2].value := qrDetalheNOTA_FISCAL.Value;
                Sheet.cells[linha,3].value := qrDetalhePESO.Value;
                Sheet.cells[linha,4].value := qrDetalheOBS.Value;
                Sheet.cells[linha,5].value := qrDetalheCODIGO.Value;
                Sheet.cells[linha,6].value := qrDetalhePRODUTO.Value;
                Sheet.cells[linha,7].value := qrDetalhefat.Value;
                Sheet.cells[linha,8].value := qrDetalheUV.Value;
                Sheet.cells[linha,9].value := qrDetalheUE.Value;

                qrDetalhe.Next;
        end;//end qrdetalhe

        //geramos os totais por grupo
        if qrCountachei.Value > 0 then
        begin
              qrTotais.close;
              qrTotais.sql.Clear;
              qrTotais.sql.Add('SELECT round(SUM(PESO), 2)  AS TPESO, ROUND(SUM(FATURA), 2) AS TFATURA, SUM(UV) AS TUV, SUM(UE) AS TUE FROM REL_TRANSPORTE ');
              qrTotais.sql.Add('where codigo = ' + QuotedStr(qrFiltraProdutoCODIGO.Value));
              qrTotais.sql.Add(' AND CH = ' + FMenu.SqlUsuariosCH.AsString);
              qrTotais.Open;
              Inc(linha);
              Sheet.Range['A' + IntToStr(linha) + ':I' + IntToStr(linha)].FONT.BOLD := True;
              Sheet.cells[linha,2].value := 'Total Peso:';
              Sheet.cells[linha,3].value := qrTotaisTPESO.Value;
              Sheet.cells[linha,6].value := 'Total Fatura:';
              Sheet.cells[linha,7].value := qrTotaisTFATURA.Value;
              Sheet.cells[linha,8].value := qrTotaisTUV.Value;
              Sheet.cells[linha,9].value := qrTotaisTUE.Value;
              TotalPeso := TotalPeso +  qrTotaisTPESO.Value;
              TotalValor := TotalValor +   qrTotaisTFATURA.Value;
              UV := UV + qrTotaisTUV.Value;
              UE := UE + qrTotaisTUE.Value;
              Inc(linha);
        end;

        qrFiltraProduto.Next;
  end; // end while  qrFiltraProduto.Eof

    linha := linha + 2;
    Sheet.cells[linha,2].value := 'Peso Total:';
    Sheet.cells[linha,3].value := TotalPeso;
    Sheet.cells[linha,6].value := 'Valor total:';
    Sheet.cells[linha,7].value := TotalValor;
    Sheet.cells[linha,8].value := UV;
    Sheet.cells[linha,9].value := UE;


            FAbTabelas.close;
        FAbTabelas.Release;

     objExcel.Application.Visible := true;
end;

procedure TfrmRel_Transporte.BitBtn2Click(Sender: TObject);
begin

   GerarInformacoes;

   Application.ProcessMessages;

   
   if rgGrupo.ItemIndex = 0 then
      GeraExcelProduto
   else
      GeraExcelNota;

end;

procedure TfrmRel_Transporte.GeraExcelNota;
var
  objExcel, Sheet : oleVariant;
  linha : Integer;
  filtros : string;
  TotalPeso, TotalValor, UE, UV : Double;
begin

  TotalPeso := 0;
  TotalValor := 0;
  UE := 0;
  UV := 0;

  
  filtros := 'Período de: ' + MaskEdit1.Text + ' ate: ' + MaskEdit2.Text;
  if cbocliente.Text <> '' then
        filtros := filtros + ' Cliente: ' + cbocliente.Text;

  if cbotpProduto.Text <> '' then
        filtros := filtros + ' Tipo de Produto: ' + cbotpProduto.Text;

  if cboProduto.Text <> '' then
        filtros := filtros + ' Produto: ' + cboProduto.Text;



  objExcel := CreateOleObject('excel.application');


  objExcel.WorkBooks.Add;
  objExcel.Workbooks[1].Sheets.Add;
  objExcel.Workbooks[1].WorkSheets[1].Name := 'Controle de Transporte';
  Sheet := objExcel.Workbooks[1].WorkSheets['Controle de Transporte'];

  //atribuir largura das colunas
  Sheet.Range['A1'].ColumnWidth := 11;
  Sheet.Range['B1'].ColumnWidth := 11;
  Sheet.Range['C1'].ColumnWidth := 10;
  Sheet.Range['D1'].ColumnWidth := 11;
  Sheet.Range['E1'].ColumnWidth := 11;
  Sheet.Range['F1'].ColumnWidth := 40;
  Sheet.Range['G1'].ColumnWidth := 11;

 // Sheet.Range['A'].NumberFormat := 'm/d/yyyy';

  //gerar cabeçalho
  Sheet.range['A1:G1'].mergecells := true;
  Sheet.cells[1,1].value := 'Controle de Transporte';
  Sheet.cells[1,1].HorizontalAlignment := 3;
  Sheet.cells[1,1].font.bold := true;
  Sheet.cells[1,1].font.size := 15;

  //Gerar filtros
  Sheet.range['A3:G3'].mergecells := true;
  Sheet.cells[3,1].value := filtros;
  Sheet.cells[3,1].HorizontalAlignment := 3;
  Sheet.cells[3,1].font.size := 10;
  
  //cabeçalho das colunas
  Sheet.cells[4,1].value := 'Data';
  Sheet.cells[4,2].value := 'Nota fiscal';
  Sheet.cells[4,3].value := 'Peso(kg)';
  Sheet.cells[4,4].value := 'Observação';
  Sheet.cells[4,5].value := 'Código';
  Sheet.cells[4,6].value := 'Produto';
  Sheet.cells[4,7].value := 'Fatura(R$)';
  Sheet.cells[4,8].value := 'Qtde. UV';
  Sheet.cells[4,9].value := 'Qtde. UE';
  Sheet.Range['A4:I4'].Interior.Color := $00CDCDCD;
  linha := 4;
  //inicio da escrita dos itens
  qrFiltraNotaFiscal.Close;
  qrFiltraNotaFiscal.Open;
  while not qrFiltraNotaFiscal.Eof do
  begin  //buscamos os produtos
        qrCount.Close;
        qrCount.sql.Clear;
        qrCount.SQL.Add('select count(*) as achei from rel_transporte');
        qrCount.sql.Add('where nota_fiscal = ' + QuotedStr(qrFiltraNotaFiscalNOTA_FISCAL.Value));
        qrCount.sql.Add('and ch = ' + FMenu.SqlUsuariosCH.AsString);
        qrCount.Open;



        qrDetalhe.Close;
        qrDetalhe.sql.Clear;
        qrDetalhe.sql.Add('SELECT *, round(fatura, 2) as fat FROM REL_TRANSPORTE where NOTA_FISCAL = ' + QuotedStr(qrFiltraNotaFiscalNOTA_FISCAL.Value));
        qrDetalhe.SQL.Add('AND CH = ' + FMenu.SqlUsuariosCH.AsString);
        //qrDetalhe.sql.Add('order by NOTA_FISCAL') ;
        qrDetalhe.Open;
        while  not qrDetalhe.Eof do
        begin
                Inc(linha);
                Sheet.cells[linha,1].value := FormatDateTime('dd-mmm-yyyy',qrDetalheDATA.Value);
                Sheet.cells[linha,2].value := qrDetalheNOTA_FISCAL.Value;
                Sheet.cells[linha,3].value := qrDetalhePESO.Value;
                Sheet.cells[linha,4].value := qrDetalheOBS.Value;
                Sheet.cells[linha,5].value := qrDetalheCODIGO.Value;
                Sheet.cells[linha,6].value := qrDetalhePRODUTO.Value;
                Sheet.cells[linha,7].value := qrDetalhefat.Value;
                Sheet.cells[linha,8].value := qrDetalheUV.Value;
                Sheet.cells[linha,9].value := qrDetalheUE.Value;
                qrDetalhe.Next;
        end;//end qrdetalhe

        //geramos os totais por grupo
        if qrCountachei.Value > 0 then
        begin
              qrTotais.close;
              qrTotais.sql.Clear;
              qrTotais.sql.Add('SELECT round(SUM(PESO), 2)  AS TPESO, ROUND(SUM(FATURA), 2) AS TFATURA FROM REL_TRANSPORTE ');
              qrTotais.sql.Add('where NOTA_FISCAL = ' + QuotedStr(qrFiltraNotaFiscalNOTA_FISCAL.Value));
              qrTotais.sql.Add(' AND CH = ' + FMenu.SqlUsuariosCH.AsString);
              qrTotais.Open;
              Inc(linha);
              Sheet.Range['A' + IntToStr(linha) + ':I' + IntToStr(linha)].FONT.BOLD := True;
              Sheet.cells[linha,2].value := 'Total Peso:';
              Sheet.cells[linha,3].value := qrTotaisTPESO.Value;
              Sheet.cells[linha,6].value := 'Total Fatura:';
              Sheet.cells[linha,7].value := qrTotaisTFATURA.Value;
              Sheet.cells[linha,8].value := qrTotaisTUV.Value;
              Sheet.cells[linha,9].value := qrTotaisTUE.Value;
              UV := UV + qrTotaisTUV.Value;
              UE := UE + qrTotaisTUE.Value;
              TotalPeso := TotalPeso +  qrTotaisTPESO.Value;
              TotalValor := TotalValor +   qrTotaisTFATURA.Value;
              Inc(linha);
        end;

        qrFiltraNotaFiscal.Next;
  end; // end while  qrFiltraProduto.Eof

    linha := linha + 2;
    Sheet.cells[linha,2].value := 'Peso Total:';
    Sheet.cells[linha,3].value := TotalPeso;
    Sheet.cells[linha,6].value := 'Valor total:';
    Sheet.cells[linha,7].value := TotalValor;
    Sheet.cells[linha,8].value := UV;
    Sheet.cells[linha,9].value := UE     ;



            FAbTabelas.close;
        FAbTabelas.Release;

    objExcel.Application.Visible := true;
end;

procedure TfrmRel_Transporte.rgTpDocClick(Sender: TObject);
begin
  if rgTpDoc.ItemIndex < 2 then begin
      cbocliente.Visible := True;
      cboClienteRemetente.Visible := False;
      cboClienteRemetente.Text := '';
      GroupBox3.Enabled := True;
      cboProduto.Enabled := True;
  end
  else
  begin
      cboClienteRemetente.Visible := True;
      cbocliente.Visible := False;
      cbocliente.Text := '';
      GroupBox3.Enabled := False;
      cboProduto.Enabled := False;
  end;
end;

end.
