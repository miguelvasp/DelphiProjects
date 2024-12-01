unit UfrmRelTransporte2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Wwquery, StdCtrls, Buttons, ExtCtrls, wwdblook, Mask, ComObj;

type
  TfrmRelTransporte2 = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    GroupBox2: TGroupBox;
    cbocliente: TwwDBLookupCombo;
    cboClienteRemetente: TwwDBLookupCombo;
    RadioGroup1: TRadioGroup;
    rgTransportador: TRadioGroup;
    BitBtn1: TBitBtn;
    rgGrupo: TRadioGroup;
    GroupBox3: TGroupBox;
    cbotpProduto: TwwDBLookupCombo;
    BitBtn2: TBitBtn;
    rgTpDoc: TRadioGroup;
    qrClienteNBF: TwwQuery;
    qrClienteNBFclin_nome: TStringField;
    qrClienteNBFclin_id: TAutoIncField;
    qrProduto: TwwQuery;
    qrProdutopro_cod: TStringField;
    qrProdutopro_desc: TStringField;
    qrProdutopro_id: TAutoIncField;
    qrExecConsulta: TwwQuery;
    qrTPProduto: TwwQuery;
    qrTPProdutoTPRO_NOME: TStringField;
    qrTPProdutoTPRO_ID: TAutoIncField;
    qrRel: TwwQuery;
    qrRelDATA: TDateTimeField;
    qrRelNOTA_FISCAL: TStringField;
    qrRelPESO: TFloatField;
    qrRelOBS: TStringField;
    qrRelCODIGO: TStringField;
    qrRelPRODUTO: TStringField;
    qrRelFATURA: TFloatField;
    qrRelUV: TFloatField;
    qrRelUE: TFloatField;
    qrFiltraProduto: TwwQuery;
    qrFiltraProdutoCODIGO: TStringField;
    qrFiltraNotaFiscal: TwwQuery;
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
    qrDetalheUV: TFloatField;
    qrDetalheUE: TFloatField;
    qrTotais: TwwQuery;
    qrTotaisTPESO: TFloatField;
    qrTotaisTFATURA: TFloatField;
    qrTotaisTUV: TFloatField;
    qrTotaisTUE: TFloatField;
    qrCount: TwwQuery;
    qrCountachei: TIntegerField;
    qrClienteRemetente: TwwQuery;
    qrClienteRemetenteCLIN_ID: TAutoIncField;
    qrClienteRemetenteclin_nome: TStringField;
    qrDetalheDESTINATARIO: TStringField;
    qrDetalheVALOR: TFloatField;
    qrTotaisTVALOR: TFloatField;
    cboProduto: TwwDBLookupCombo;
    RadioGroup2: TRadioGroup;
    qrDetalheNFE: TStringField;
    qrDetalhePRO_ID: TIntegerField;
    qrDetalheCFOP: TStringField;

    procedure BuscaProdutos;
    procedure FormCreate(Sender: TObject);
    procedure cboclienteCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure cboclienteExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GerarInformacoes;
    procedure BitBtn1Click(Sender: TObject);
    procedure MaskEdit1Exit(Sender: TObject);
    procedure MaskEdit2Exit(Sender: TObject);
    procedure GeraExcelProduto;
    procedure BitBtn2Click(Sender: TObject);
    procedure GeraExcelNota;
    procedure rgTpDocClick(Sender: TObject);
    function PegaNFE(Texto: string): string;
    private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelTransporte2: TfrmRelTransporte2;

implementation

uses URel_Transporte, UAbTabelas, UMenu, uRelTransporteQrp,
  uRelTransporteQrp2;

{$R *.DFM}



procedure TfrmRelTransporte2.BuscaProdutos;
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



procedure TfrmRelTransporte2.FormCreate(Sender: TObject);
begin
  MaskEdit1.Text := FormatDateTime('DD/MM/YYYY', Date);
  MaskEdit2.Text := FormatDateTime('DD/MM/YYYY', Date);
  qrClienteNBF.Open;
  qrClienteRemetente.Open;
  qrTPProduto.Open;
  BuscaProdutos;
end;

procedure TfrmRelTransporte2.cboclienteCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
BuscaProdutos;
end;

procedure TfrmRelTransporte2.cboclienteExit(Sender: TObject);
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

procedure TfrmRelTransporte2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
        frmRel_Transporte := nil;
end;

procedure TfrmRelTransporte2.GerarInformacoes;
var de, ate : TDateTime;

fator : Double;
begin
             Application.CreateForm(TFAbTabelas, FAbTabelas);
             FAbTabelas.Gauge1.MaxValue := 19;
             FAbTabelas.Show;
             FAbTabelas.RePaint;


        try
          fator := 1;
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

        if rgTpDoc.ItemIndex <> 2 then begin
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


              if rgTpDoc.ItemIndex <> 2 then
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
                  3 :  Params[8].AsString := '14';
                  4 :  Params[8].AsString := '3';
                  5 :  Params[8].AsString := '23';
                  6 :  Params[8].AsString := '24';
                  7 :  Params[8].AsString := '25';
              end;

              Params[9].AsInteger := RadioGroup2.ItemIndex;


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

procedure TfrmRelTransporte2.BitBtn1Click(Sender: TObject);
begin
GerarInformacoes;
        FAbTabelas.close;
        FAbTabelas.Release;
        RelTransporteQrp2 := TRelTransporteQrp2.Create(Self);
        RelTransporteQrp2.rel.Preview;
end;

procedure TfrmRelTransporte2.MaskEdit1Exit(Sender: TObject);
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

procedure TfrmRelTransporte2.MaskEdit2Exit(Sender: TObject);
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


procedure TfrmRelTransporte2.GeraExcelProduto;
var
  objExcel, Sheet : oleVariant;
  linha : Integer;
  filtros : string;
  TotalPeso, TotalValor, UE, UV, PESO, TOTAL, TITEM, pitem : Double;
begin

  TotalPeso := 0;
  TotalValor := 0;
  UE := 0;
  UV := 0;
  PESO := 0;
  TOTAL := 0;
  TITEM := 0;
  pitem := 0;

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
  Sheet.cells[4,3].value := 'Destinatário';
  Sheet.cells[4,4].value := 'Código';
  Sheet.cells[4,5].value := 'Produto';
  Sheet.cells[4,6].value := 'Qtde. UV';
  Sheet.cells[4,7].value := 'Peso Total';
  Sheet.cells[4,8].value := 'Valor Entrada';
  Sheet.cells[4,9].value := 'Valor Total';
  Sheet.cells[4,10].value := 'NF ENTRADA';
  Sheet.cells[4,11].value := 'CFOP';
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
                Sheet.cells[linha,1].value := '''' + FormatDateTime('dd/mm/yyyy',qrDetalheDATA.Value);
                //Sheet.Cells[Linha,1].NumberFormat := 'm/d/yyyy';
                Sheet.cells[linha,2].value := qrDetalheNOTA_FISCAL.Value;
                Sheet.cells[linha,3].value := qrDetalheDESTINATARIO.Value;
                Sheet.cells[linha,4].value := qrDetalheCODIGO.Value;
                Sheet.cells[linha,5].value := qrDetalhePRODUTO.Value;
                Sheet.cells[linha,6].value := qrDetalheUV.Value;
                Sheet.cells[linha,7].value := StrToFloat(FormatFloat('##.00000', qrDetalhePESO.AsFloat * qrDetalheUV.AsFloat));
                Sheet.cells[linha,8].value := StrToFloat(FormatFloat('##.00000', qrDetalheVALOR.Value));
                Sheet.cells[linha,9].value := StrToFloat(FormatFloat('##.00000', qrDetalheUv.AsFloat * qrDetalheVALOR.Value));
                Sheet.cells[linha,10].value := PegaNFE(qrDetalhePRODUTO.Value);// qrDetalheNFE.AsString;
                Sheet.cells[linha,11].value := qrDetalheCFOP.AsString;
                TOTAL := TOTAL + qrDetalheUv.AsFloat * qrDetalheVALOR.Value;
                TITEM := TITEM + qrDetalheUv.AsFloat * qrDetalheVALOR.Value;
                pitem := pitem +  qrDetalhePESO.AsFloat * qrDetalheUV.AsFloat;
                qrDetalhe.Next;
        end;//end qrdetalhe

        //geramos os totais por grupo
        if qrCountachei.Value > 0 then
        begin
              qrTotais.close;
              qrTotais.sql.Clear;
              qrTotais.sql.Add('SELECT round(SUM(VALOR), 2)  AS TVALOR, round(SUM(PESO), 2)  AS TPESO, ROUND(SUM(FATURA), 2) AS TFATURA, SUM(UV) AS TUV, SUM(UE) AS TUE FROM REL_TRANSPORTE ');
              qrTotais.sql.Add('where codigo = ' + QuotedStr(qrFiltraProdutoCODIGO.Value));
              qrTotais.sql.Add(' AND CH = ' + FMenu.SqlUsuariosCH.AsString);
              qrTotais.Open;
              Inc(linha);
              Sheet.Range['A' + IntToStr(linha) + ':I' + IntToStr(linha)].FONT.BOLD := True;
             // Sheet.cells[linha,2].value := 'Total Peso:';
            //  Sheet.cells[linha,3].value := qrTotaisTPESO.Value;
              Sheet.cells[linha,6].value :=  qrTotaisTUV.AsFloat;
              Sheet.cells[linha,7].value := pitem;
              Sheet.cells[linha,8].value := qrTotaisTVALOR.Value;
              Sheet.cells[linha,9].value := TITEM;
              
              TITEM := 0;
              TotalPeso := TotalPeso +  pitem;
              TotalValor := TotalValor +   qrTotaisTFATURA.Value;
              UV := UV + qrTotaisTUV.Value;
              UE := UE + qrTotaisTUE.Value;
                pitem := 0;
             // TOTAL := TOTAL + qrTotaisTVALOR.Value * qrTotaisTUV.AsFloat;

              Inc(linha);
        end;

        qrFiltraProduto.Next;
  end; // end while  qrFiltraProduto.Eof

    linha := linha + 2;
   // Sheet.cells[linha,2].value := 'Peso Total:';
   // Sheet.cells[linha,3].value := TotalPeso;
    Sheet.cells[linha,6].value := UV;
    Sheet.cells[linha,7].value := TotalPeso;
   // Sheet.cells[linha,8].value := UV;
    Sheet.cells[linha,9].value := TOTAL;


            FAbTabelas.close;
        FAbTabelas.Release;

     objExcel.Application.Visible := true;
end;



procedure TfrmRelTransporte2.BitBtn2Click(Sender: TObject);
begin
   GerarInformacoes;

   Application.ProcessMessages;

   
   if rgGrupo.ItemIndex = 0 then
      GeraExcelProduto
   else
      GeraExcelNota;

end;

function TfrmRelTransporte2.PegaNFE(Texto: string): string;
var i : Integer;
    aux : string;
begin
     i := Pos('NFE ', Texto );
     aux := '';
     if i > 0 then
         aux := Copy(Texto, I + 4, Length(Texto));


     if aux = '' then
        aux := qrDetalheNFE.AsString;

     Result := TRIM(aux);
end;

procedure TfrmRelTransporte2.GeraExcelNota;
var
  objExcel, Sheet : oleVariant;
  linha : Integer;
  filtros : string;
  TotalPeso, TotalValor, UE, UV, TOTAL, TITEM, pitem , uvi: Double;
begin

  TotalPeso := 0;
  TotalValor := 0;
  UE := 0;
  UV := 0;
  TOTAL := 0;
  TITEM := 0;
  pitem := 0;
  uvi := 0;

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
 { Sheet.cells[4,1].value := 'Data';
  Sheet.cells[4,2].value := 'Nota fiscal';
  Sheet.cells[4,3].value := 'Peso(kg)';
  Sheet.cells[4,4].value := 'Observação';
  Sheet.cells[4,5].value := 'Código';
  Sheet.cells[4,6].value := 'Produto';
  Sheet.cells[4,7].value := 'Fatura(R$)';
  Sheet.cells[4,8].value := 'Qtde. UV';
  Sheet.cells[4,9].value := 'Qtde. UE';   }


    Sheet.cells[4,1].value := 'Data';
  Sheet.cells[4,2].value := 'Nota fiscal';
  Sheet.cells[4,3].value := 'Destinatário';
  Sheet.cells[4,4].value := 'Código';
  Sheet.cells[4,5].value := 'Produto';
  Sheet.cells[4,6].value := 'Qtde. UV';
  Sheet.cells[4,7].value := 'Peso Total';
  Sheet.cells[4,8].value := 'Valor Entrada';
  Sheet.cells[4,9].value := 'Valor Total';
  Sheet.cells[4,10].value := 'NF ENTRADA';
  Sheet.cells[4,11].value := 'CFOP';
  Sheet.Range['A4:I4'].Interior.Color := $00CDCDCD;
  linha := 4;
  //inicio da escrita dos itens
  qrFiltraNotaFiscal.Close;
  qrFiltraNotaFiscal.Params[0].AsInteger := FMenu.SqlUsuariosCH.AsInteger;
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
                {Sheet.cells[linha,1].value := FormatDateTime('dd-mmm-yyyy',qrDetalheDATA.Value);
                Sheet.cells[linha,2].value := qrDetalheNOTA_FISCAL.Value;
                Sheet.cells[linha,3].value := qrDetalhePESO.Value;
                Sheet.cells[linha,4].value := qrDetalheOBS.Value;
                Sheet.cells[linha,5].value := qrDetalheCODIGO.Value;
                Sheet.cells[linha,6].value := qrDetalhePRODUTO.Value;
                Sheet.cells[linha,7].value := qrDetalhefat.Value;
                Sheet.cells[linha,8].value := qrDetalheUV.Value;
                Sheet.cells[linha,9].value := qrDetalheUE.Value;   }
                //Sheet.cells[linha,1].NumberFormat := 'dd/mm/yy;@';
                Sheet.cells[linha,1].value := '''' + FormatDateTime('dd/mm/yyyy',qrDetalheDATA.Value);
                //Sheet.Cells[Linha,1].NumberFormat := 'm/d/yyyy';
                Sheet.cells[linha,2].value := qrDetalheNOTA_FISCAL.Value;
                Sheet.cells[linha,3].value := qrDetalheDESTINATARIO.Value;
                Sheet.Cells[Linha,4].NumberFormat := '@';
                Sheet.cells[linha,4].value := qrDetalheCODIGO.Value;
                Sheet.cells[linha,5].value := qrDetalhePRODUTO.Value;
                Sheet.cells[linha,6].value := qrDetalheUV.Value;
                Sheet.cells[linha,7].value := StrToFloat(formatfloat('##0.00000', qrDetalhePESO.AsFloat * qrDetalheUV.AsFloat));
                Sheet.cells[linha,8].value := StrToFloat(formatfloat('##0.00000', qrDetalheVALOR.Value));
                Sheet.cells[linha,9].value := StrToFloat(formatfloat('##0.00000', qrDetalheUv.AsFloat * qrDetalheVALOR.Value));
                Sheet.cells[linha,10].value :=  PegaNFE(qrDetalhePRODUTO.Value);  // qrDetalheNFE.AsString;
                Sheet.cells[linha,11].value :=  qrDetalheCFOP.AsString;
                TOTAL := TOTAL + qrDetalheUv.AsFloat * qrDetalheVALOR.Value;
                TITEM := TITEM + qrDetalheUv.AsFloat * qrDetalheVALOR.Value;
                pitem := pitem +  qrDetalhePESO.AsFloat * qrDetalheUV.AsFloat;
                uvi := uvi + qrDetalheUV.Value;
                qrDetalhe.Next;
        end;//end qrdetalhe

        //geramos os totais por grupo
      {  if qrCountachei.Value > 0 then
        begin
              qrTotais.close;
              qrTotais.sql.Clear;
              qrTotais.sql.Add('SELECT round(SUM(VALOR), 2)  AS TVALOR, round(SUM(PESO), 2)  AS TPESO, ROUND(SUM(FATURA), 2) AS TFATURA FROM REL_TRANSPORTE ');
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
        end;     }


        //geramos os totais por grupo
        if qrCountachei.Value > 0 then
        begin
              qrTotais.close;
              qrTotais.sql.Clear;
              qrTotais.sql.Add('SELECT round(SUM(VALOR), 2)  AS TVALOR, round(SUM(PESO), 2)  AS TPESO, ROUND(SUM(FATURA), 2) AS TFATURA, SUM(UV) AS TUV, SUM(UE) AS TUE FROM REL_TRANSPORTE ');
              qrTotais.sql.Add('where codigo = ' + QuotedStr(qrFiltraProdutoCODIGO.Value));
              qrTotais.sql.Add(' AND CH = ' + FMenu.SqlUsuariosCH.AsString);
              qrTotais.Open;
              Inc(linha);
              Sheet.Range['A' + IntToStr(linha) + ':I' + IntToStr(linha)].FONT.BOLD := True;
             // Sheet.cells[linha,2].value := 'Total Peso:';
            //  Sheet.cells[linha,3].value := qrTotaisTPESO.Value;
              Sheet.cells[linha,6].value :=  uvi;
              Sheet.cells[linha,7].value := pitem;
              Sheet.cells[linha,8].value := qrTotaisTVALOR.Value;
              Sheet.cells[linha,9].value := TITEM;
              TITEM := 0;
              
              TotalPeso := TotalPeso +  pitem;
              TotalValor := TotalValor +   qrTotaisTFATURA.Value;
              UV := UV + uvi;
              UE := UE + qrTotaisTUE.Value;
              pitem := 0;
              uvi := 0;
             // TOTAL := TOTAL + qrTotaisTVALOR.Value * qrTotaisTUV.AsFloat;

              Inc(linha);
        end;


        qrFiltraNotaFiscal.Next;
  end; // end while  qrFiltraProduto.Eof

   { linha := linha + 2;
    Sheet.cells[linha,2].value := 'Peso Total:';
    Sheet.cells[linha,3].value := TotalPeso;
    Sheet.cells[linha,6].value := 'Valor total:';
    Sheet.cells[linha,7].value := TotalValor;
    Sheet.cells[linha,8].value := UV;
    Sheet.cells[linha,9].value := UE     ; }

    linha := linha + 2;
   // Sheet.cells[linha,2].value := 'Peso Total:';
   // Sheet.cells[linha,3].value := TotalPeso;
    Sheet.cells[linha,6].value := UV;
    Sheet.cells[linha,7].value := TotalPeso;
   // Sheet.cells[linha,8].value := UV;
    Sheet.cells[linha,9].value := TOTAL;

            FAbTabelas.close;
        FAbTabelas.Release;

    objExcel.Application.Visible := true;
end;




procedure TfrmRelTransporte2.rgTpDocClick(Sender: TObject);
begin
  if rgTpDoc.ItemIndex <> 2 then begin
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


