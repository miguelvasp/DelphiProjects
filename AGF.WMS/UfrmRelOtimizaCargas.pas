unit UfrmRelOtimizaCargas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RzButton, wwdblook, StdCtrls, Mask, DBClient, Provider, Db, ADODB, ComObj,
  Gauges;

type
  TfrmRelOtimizaCargas = class(TForm)
    Label1: TLabel;
    mskDe: TMaskEdit;
    Label2: TLabel;
    mskAte: TMaskEdit;
    Label3: TLabel;
    cboCliente: TwwDBLookupCombo;
    Label4: TLabel;
    cboVeiculo: TwwDBLookupCombo;
    Label5: TLabel;
    cboRegiao: TwwDBLookupCombo;
    RzBitBtn2: TRzBitBtn;
    qrClienteNBF: TADOQuery;
    qrClienteNBFCLIN_ID: TAutoIncField;
    qrClienteNBFCLIN_RAZA: TStringField;
    dspClienteNBF: TDataSetProvider;
    cdsClienteNBF: TClientDataSet;
    qrVeiculo: TADOQuery;
    qrRegiao: TADOQuery;
    qrRel: TADOQuery;
    cdsClienteNBFCLIN_ID: TAutoIncField;
    cdsClienteNBFCLIN_RAZA: TStringField;
    qrVeiculoVEIC_ID: TAutoIncField;
    qrVeiculoVEIC_NOME: TStringField;
    dspVeiculo: TDataSetProvider;
    cdsVeiculo: TClientDataSet;
    cdsVeiculoVEIC_ID: TAutoIncField;
    cdsVeiculoVEIC_NOME: TStringField;
    qrRegiaoREG_ID: TAutoIncField;
    qrRegiaoREG_NOME: TStringField;
    dspRegiao: TDataSetProvider;
    cdsRegiao: TClientDataSet;
    cdsRegiaoREG_ID: TAutoIncField;
    cdsRegiaoREG_NOME: TStringField;
    dspRel: TDataSetProvider;
    cdsRel: TClientDataSet;
    qrRelMANI_DATA: TDateTimeField;
    qrRelMANI_ID: TAutoIncField;
    qrRelREG_NOME: TStringField;
    qrRelVEIC_NOME: TStringField;
    qrRelMOT_VEIC_PLACA: TStringField;
    qrRelTARA: TFloatField;
    qrRelMANI_PESO: TFloatField;
    qrRelFATURADOS: TIntegerField;
    qrRelENTREGUES: TIntegerField;
    qrRelFRETE: TFloatField;
    qrRelPEDAGIO: TFloatField;
    qrRelDESCARGA: TFloatField;
    qrRelMANI_KM_TOTAL: TIntegerField;
    cdsRelMANI_DATA: TDateTimeField;
    cdsRelMANI_ID: TAutoIncField;
    cdsRelREG_NOME: TStringField;
    cdsRelVEIC_NOME: TStringField;
    cdsRelMOT_VEIC_PLACA: TStringField;
    cdsRelTARA: TFloatField;
    cdsRelMANI_PESO: TFloatField;
    cdsRelFATURADOS: TIntegerField;
    cdsRelENTREGUES: TIntegerField;
    cdsRelFRETE: TFloatField;
    cdsRelPEDAGIO: TFloatField;
    cdsRelDESCARGA: TFloatField;
    cdsRelMANI_KM_TOTAL: TIntegerField;
    cdsRelRETORNO: TFloatField;
    cdsRelOTIMIZACAO: TFloatField;
    cdsRelNF_RETORNADA: TFloatField;
    Gauge1: TGauge;
    qrAux: TADOQuery;
    cdsRelNotas: TStringField;
    cdsRelEDI: TStringField;
    qrTotalRegiao: TADOQuery;
    qrTotalRegiaoREG_NOME: TStringField;
    qrTotalRegiaoTARA: TFloatField;
    qrTotalRegiaoMANI_PESO: TFloatField;
    qrTotalRegiaoFATURADOS: TIntegerField;
    qrTotalRegiaoENTREGUES: TIntegerField;
    qrTotalRegiaoFRETE: TFloatField;
    qrTotalRegiaoPEDAGIO: TFloatField;
    qrTotalRegiaoDESCARGA: TFloatField;
    qrTotalRegiaoMANI_KM_TOTAL: TIntegerField;
    cdsTotalVeiculo: TClientDataSet;
    cdsTotalVeiculoVEIC_NOME: TStringField;
    cdsTotalVeiculoTARA: TFloatField;
    cdsTotalVeiculoMANI_PESO: TFloatField;
    cdsTotalVeiculoFATURADOS: TIntegerField;
    cdsTotalVeiculoENTREGUES: TIntegerField;
    cdsTotalVeiculoFRETE: TFloatField;
    cdsTotalVeiculoPEDAGIO: TFloatField;
    cdsTotalVeiculoDESCARGA: TFloatField;
    cdsTotalVeiculoMANI_KM_TOTAL: TIntegerField;
    cdsTotaisRegiao: TClientDataSet;
    cdsTotaisRegiaoREG_NOME: TStringField;
    cdsTotaisRegiaoTARA: TFloatField;
    cdsTotaisRegiaoMANI_PESO: TFloatField;
    cdsTotaisRegiaoFATURADOS: TIntegerField;
    cdsTotaisRegiaoENTREGUES: TIntegerField;
    cdsTotaisRegiaoFRETE: TFloatField;
    cdsTotaisRegiaoPEDAGIO: TFloatField;
    cdsTotaisRegiaoDESCARGA: TFloatField;
    cdsTotaisRegiaoMANI_KM_TOTAL: TIntegerField;
    cdsTotaisRegiaoOTIMIZACAO: TFloatField;
    cdsTotalVeiculoOTIMIZACAO: TFloatField;
    cdsTotaisRegiaoRETORNO: TFloatField;
    cdsTotalVeiculoRETORNO: TFloatField;
    cdsTotaisRegiaoNF_RETORNADA: TFloatField;
    cdsTotalVeiculoNF_RETORNADA: TFloatField;
    cdsEDI: TClientDataSet;
    cdsEDIedi: TStringField;
    cdsEDIqtd: TIntegerField;
    qrRelCONFIRMA_MANI: TStringField;
    cdsRelCONFIRMA_MANI: TStringField;
    procedure RzBitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ExportaExcel;
    procedure cdsRelCalcFields(DataSet: TDataSet);
    procedure cdsTotaisRegiaoCalcFields(DataSet: TDataSet);
    procedure cdsTotalVeiculoCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelOtimizaCargas: TfrmRelOtimizaCargas;
  excel,ColumnRange :Variant;
implementation

uses UMenu;

{$R *.DFM}

procedure TfrmRelOtimizaCargas.RzBitBtn2Click(Sender: TObject);
VAR
   d1, d2 : TDateTime;
begin
     try
          d1 := StrToDate(mskDe.Text);
          d2 := StrToDate(mskAte.Text);
     except
          MessageBox(Self.Handle, 'Data inválida!', 'Erro', MB_OK + MB_ICONERROR);
          Abort;
     end;

     cdsEDI.EmptyDataSet;

     cdsRel.CLOSE;
     with  qrRel do begin
         close;
         sql.Clear;
         sql.Add(
        ' SELECT distinct [MANI_DATA] '+
        '  ,[MANI_ID] '+
        '  ,[REG_NOME]  '+
        '  ,[VEIC_NOME]  '+
        '  ,[MOT_VEIC_PLACA]  '+
        '  ,[TARA] '+
        '  ,[MANI_PESO] '+
        '  ,[FATURADOS] '+
        '  ,[ENTREGUES]  '+
        '  ,[FRETE] '+
        '  ,[PEDAGIO] '+
        '  ,[DESCARGA] '+
        '  ,[MANI_KM_TOTAL], [CONFIRMA_MANI] '+
        '   FROM [VW_OTIMIZA_CARGA]  '
         );

         sql.Add('where convert(char(10), MANI_DATA, 112) >= ' +  FormatDateTime('YYYYMMDD', d1) );
         sql.Add('and convert(char(10), MANI_DATA, 112) <= ' +  FormatDateTime('YYYYMMDD', d2) );
     end;


     //filtros
     if cboCliente.Text <> '' then  begin
        qrRel.sql.Add(' and NFI_EMIT_CLI = '  + cboCliente.LookupValue);
     end;

     IF cboVeiculo.Text <> '' then begin
        qrRel.SQL.Add(' AND VEIC_ID = ' + cboVeiculo.LookupValue);
     end;


     IF cboRegiao.Text <> '' then begin
        qrRel.SQL.Add(' AND REG_ID = ' + cboRegiao.LookupValue);
     end;

     qrRel.SQL.Add('ORDER BY MANI_ID ');


     cdsRel.Open;



     ExportaExcel;




end;

procedure TfrmRelOtimizaCargas.FormCreate(Sender: TObject);
begin
  cdsClienteNBF.Open;
  cdsVeiculo.Open;
  cdsRegiao.Open;
end;




procedure TfrmRelOtimizaCargas.ExportaExcel;
var linha, congela, totalEDI : Integer;
begin
    Excel := CreateOleObject('excel.application');
    Excel.WorkBooks.Add;
    Excel.Workbooks[1].WorkSheets[1].Name := 'Relatório Otimização de Carga';
    ColumnRange := Excel.Workbooks[1].WorkSheets[1].Columns;
    congela := 0;
    linha := 1;
    Excel.Cells[LINHA,1] := 'Relatório de Otimização de Cargas';
    Inc(linha);
    Excel.Cells[LINHA,1] := 'Periodo de ' + mskDe.Text + ' até ' + mskAte.Text;
    Inc(linha) ;
    Excel.Cells[LINHA,1] := 'Cliente: ' + cboCliente.Text;
    Inc(linha);


    congela := linha;

    Excel.Range['A'+inttostr(linha)+':Y'+inttostr(linha)].interior.color := $00C8C8C8;
    Excel.Cells[LINHA,1] := 'Manifesto';
    Excel.Cells[LINHA,2] := 'Data';
    Excel.Cells[LINHA,3] := 'Placa';
    Excel.Cells[LINHA,4] := 'Veiculo';
    Excel.Cells[LINHA,5] := 'Regiao';
    Excel.Cells[LINHA,6] := 'Plano';
    Excel.Cells[LINHA,7] := 'Tara/veiculo';
    Excel.Cells[LINHA,8] := 'Peso/Plano';
    Excel.Cells[LINHA,9] := 'Otim. Carga (%)';
    Excel.Cells[LINHA,10] := 'Ped. Fat.';
    Excel.Cells[LINHA,11] := 'Ped. Entr.';
    Excel.Cells[LINHA,12] := 'Ped. Retorno';
    Excel.Cells[LINHA,13] := 'NF Retornada (%)';
    Excel.Cells[LINHA,14] := 'NF Devolvidas';
    Excel.Cells[LINHA,15] := 'Motivo Retorno';
    Excel.Cells[LINHA,16] := 'Cliente';
    Excel.Cells[LINHA,17] := 'Razão Social';
    Excel.Cells[LINHA,18] := 'C. Vendedor';
    Excel.Cells[LINHA,19] := 'Solução';
    Excel.Cells[LINHA,20] := '$ do Plano';
    Excel.Cells[LINHA,21] := '$ do Retornado';
    Excel.Cells[LINHA,22] := 'Pedágio';
    Excel.Cells[LINHA,23] := 'Descargas';
    Excel.Cells[LINHA,24] := 'km Rodados';
    Excel.Cells[LINHA,25] := 'Frete';



    //limpamos os cds temporarios
    cdsTotalVeiculo.EmptyDataSet;
    cdsTotaisRegiao.EmptyDataSet;

    Gauge1.Progress := 0;
    cdsRel.Last;
    Gauge1.MaxValue := cdsrel.RecordCount;
    Gauge1.Visible := True;
    cdsRel.First;
    while not cdsRel.Eof do begin

            //Adiciona valores de totais nos cds temporarios

            //procura pelo veiculo se existe adiciona os valores, senao cadastra novo
            if(cdsTotalVeiculo.Locate('VEIC_NOME', cdsRelVEIC_NOME.Value,[])) then begin
               cdsTotalVeiculo.Edit;
               cdsTotalVeiculoTARA.Value := cdsTotalVeiculoTARA.Value + cdsRelTARA.Value;
               cdsTotalVeiculoMANI_PESO.Value := cdsTotalVeiculoMANI_PESO.Value + cdsRelMANI_PESO.Value;
               cdsTotalVeiculoFATURADOS.Value := cdsTotalVeiculoFATURADOS.Value + cdsRelFATURADOS.Value;
               cdsTotalVeiculoENTREGUES.Value := cdsTotalVeiculoENTREGUES.Value + cdsRelENTREGUES.Value;
               cdsTotalVeiculoFRETE.Value := cdsTotalVeiculoFRETE.Value + cdsRelFRETE.Value;
               cdsTotalVeiculoPEDAGIO.Value := cdsTotalVeiculoPEDAGIO.Value + cdsRelPEDAGIO.Value;
               cdsTotalVeiculoDESCARGA.Value := cdsTotalVeiculoDESCARGA.Value + cdsRelDESCARGA.Value;
               cdsTotalVeiculoMANI_KM_TOTAL.Value := cdsTotalVeiculoMANI_KM_TOTAL.Value + cdsRelMANI_KM_TOTAL.Value;
               cdsTotalVeiculo.Post;
            end else begin
               cdsTotalVeiculo.Append;
               cdsTotalVeiculoVEIC_NOME.Value := cdsRelVEIC_NOME.Value;
               cdsTotalVeiculoTARA.Value :=  cdsRelTARA.Value;
               cdsTotalVeiculoMANI_PESO.Value :=  cdsRelMANI_PESO.Value;
               cdsTotalVeiculoFATURADOS.Value :=  cdsRelFATURADOS.Value;
               cdsTotalVeiculoENTREGUES.Value :=  cdsRelENTREGUES.Value;
               cdsTotalVeiculoFRETE.Value :=  cdsRelFRETE.Value;
               cdsTotalVeiculoPEDAGIO.Value :=  cdsRelPEDAGIO.Value;
               cdsTotalVeiculoDESCARGA.Value :=  cdsRelDESCARGA.Value;
               cdsTotalVeiculoMANI_KM_TOTAL.Value :=  cdsRelMANI_KM_TOTAL.Value;
               cdsTotalVeiculo.Post;
            end;

            //procura pela Regiao se existe adiciona os valores, senao cadastra novo
            if(cdsTotaisRegiao.Locate('REG_NOME', cdsRelREG_NOME.Value,[])) then begin
               cdsTotaisRegiao.Edit;
               cdsTotaisRegiaoTARA.Value := cdsTotaisRegiaoTARA.Value + cdsRelTARA.Value;
               cdsTotaisRegiaoMANI_PESO.Value := cdsTotaisRegiaoMANI_PESO.Value + cdsRelMANI_PESO.Value;
               cdsTotaisRegiaoFATURADOS.Value := cdsTotaisRegiaoFATURADOS.Value + cdsRelFATURADOS.Value;
               cdsTotaisRegiaoENTREGUES.Value := cdsTotaisRegiaoENTREGUES.Value + cdsRelENTREGUES.Value;
               cdsTotaisRegiaoFRETE.Value := cdsTotaisRegiaoFRETE.Value + cdsRelFRETE.Value;
               cdsTotaisRegiaoPEDAGIO.Value := cdsTotaisRegiaoPEDAGIO.Value + cdsRelPEDAGIO.Value;
               cdsTotaisRegiaoDESCARGA.Value := cdsTotaisRegiaoDESCARGA.Value + cdsRelDESCARGA.Value;
               cdsTotaisRegiaoMANI_KM_TOTAL.Value := cdsTotaisRegiaoMANI_KM_TOTAL.Value + cdsRelMANI_KM_TOTAL.Value;
               cdsTotaisRegiao.Post;
            end else begin
               cdsTotaisRegiao.Append;
               cdsTotaisRegiaoREG_NOME.Value := cdsRelREG_NOME.Value;
               cdsTotaisRegiaoTARA.Value :=  cdsRelTARA.Value;
               cdsTotaisRegiaoMANI_PESO.Value :=  cdsRelMANI_PESO.Value;
               cdsTotaisRegiaoFATURADOS.Value :=  cdsRelFATURADOS.Value;
               cdsTotaisRegiaoENTREGUES.Value :=  cdsRelENTREGUES.Value;
               cdsTotaisRegiaoFRETE.Value :=  cdsRelFRETE.Value;
               cdsTotaisRegiaoPEDAGIO.Value :=  cdsRelPEDAGIO.Value;
               cdsTotaisRegiaoDESCARGA.Value :=  cdsRelDESCARGA.Value;
               cdsTotaisRegiaoMANI_KM_TOTAL.Value :=  cdsRelMANI_KM_TOTAL.Value;
               cdsTotaisRegiao.Post;
            end;


            Inc(linha);
            Excel.Cells[LINHA,1] := cdsRelMANI_ID.Value;
            Excel.Cells[LINHA,2] := StrToDate(FormatDateTime('dd/MM/yyyy', cdsRelMANI_DATA.Value));
            Excel.Cells[LINHA,3] := cdsRelMOT_VEIC_PLACA.AsString;
            Excel.Cells[LINHA,4] := cdsRelVEIC_NOME.Value;
            Excel.Cells[LINHA,5] := cdsRelREG_NOME.Value;
            Excel.Cells[LINHA,7] := StrToFloat(FormatFloat('##0.00',cdsRelTARA.Value));

            Excel.Cells[LINHA,8] := StrToFloat(FormatFloat('##0.00',cdsRelMANI_PESO.Value));

            Excel.Cells[LINHA,9] := StrToFloat(FormatFloat('##0.00',cdsRelOTIMIZACAO.Value));

            Excel.Cells[LINHA,10] := cdsRelFATURADOS.Value;
            Excel.Cells[LINHA,11] := cdsRelENTREGUES.Value;
            IF cdsRelCONFIRMA_MANI.Value = 'S' then
               Excel.Cells[LINHA,12] := cdsRelRETORNO.Value
            else
                Excel.Cells[LINHA,12] := 0;
            Excel.Cells[LINHA,13] := StrToFloat(FormatFloat('##0.00',cdsRelNF_RETORNADA.Value));

            Excel.Cells[LINHA,14] := cdsRelNotas.Value;
            Excel.Cells[LINHA,15] := cdsRelEDI.Value;
            Excel.Cells[LINHA,22] := StrToFloat(FormatFloat('##0.00',cdsRelPEDAGIO.Value));
            Excel.Cells[LINHA,22].Style := 'Currency';
            Excel.Cells[LINHA,23] := StrToFloat(FormatFloat('##0.00',cdsRelDESCARGA.Value));
            Excel.Cells[LINHA,23].Style := 'Currency';
            Excel.Cells[LINHA,24] := cdsRelMANI_KM_TOTAL.Value ;
            Excel.Cells[LINHA,25] := StrToFloat(FormatFloat('##0.00',cdsRelFRETE.Value));
            Excel.Cells[LINHA,25].Style := 'Currency';
            Gauge1.Progress := Gauge1.Progress + 1;
        cdsRel.Next;
        Application.ProcessMessages;
    end;


    if cdsRel.IsEmpty = False then begin
            ///tOTAIS
            Inc(linha);
            Excel.Range['E'+inttostr(linha)+':Y'+inttostr(linha)].interior.color := $00C8C8C8;
            Excel.Cells[LINHA,5] := 'TOTAIS';
            Excel.Cells[LINHA,7] := '=Sum(G' + IntToStr(congela+1) + ':G'+IntToStr(linha-1);
            Excel.Cells[LINHA,8] := '=Sum(H' + IntToStr(congela+1) + ':H'+IntToStr(linha-1);
            Excel.Cells[LINHA,9] := '=(H' + IntToStr(linha)+' * 100)/G'+IntToStr(linha);
            Excel.Cells[LINHA,10] := '=Sum(J' + IntToStr(congela+1) + ':J'+IntToStr(linha-1);  ///FAT
            Excel.Cells[LINHA,11] := '=Sum(K' + IntToStr(congela+1) + ':K'+IntToStr(linha-1);  //EN
            Excel.Cells[LINHA,12] := '=Sum(L' + IntToStr(congela+1) + ':L'+IntToStr(linha-1);  //EN
            Excel.Cells[LINHA,13] := '=(L' + IntToStr(linha)+' * 100)/J'+IntToStr(linha);
            Excel.Cells[LINHA,22] := '=Sum(V' + IntToStr(congela+1) + ':V'+IntToStr(linha-1);  //EN
            Excel.Cells[LINHA,22].Style := 'Currency';
            Excel.Cells[LINHA,23] := '=Sum(W' + IntToStr(congela+1) + ':W'+IntToStr(linha-1);  //EN
            Excel.Cells[LINHA,23].Style := 'Currency';
            Excel.Cells[LINHA,24] := cdsRelMANI_KM_TOTAL.Value ;
            Excel.Cells[LINHA,25] := '=Sum(Y' + IntToStr(congela+1) + ':Y'+IntToStr(linha-1);  //EN
            Excel.Cells[LINHA,25].Style := 'Currency';
    end;


    //CONGELAMOS A PRIMEIRA LINHA
    Excel.ActiveWindow.SplitColumn := 0 ;
    Excel.ActiveWindow.SplitRow := congela ;
    Excel.ActiveWindow.FreezePanes := True   ;



    linha := linha + 2;
    Excel.Cells[LINHA,5] := 'Resumo por Veiculo';

    congela := linha;

    //Começamos a escrever os totais
    cdsTotalVeiculo.First;
    while not cdsTotalVeiculo.Eof do begin

            Inc(linha);

            Excel.Cells[LINHA,5] := cdsTotalVeiculoVEIC_NOME.Value;
            Excel.Cells[LINHA,7] := StrToFloat(FormatFloat('##0.00',cdsTotalVeiculoTARA.Value));
            Excel.Cells[LINHA,8] := StrToFloat(FormatFloat('##0.00',cdsTotalVeiculoMANI_PESO.Value));
            Excel.Cells[LINHA,9] := StrToFloat(FormatFloat('##0.00',cdsTotalVeiculoOTIMIZACAO.Value));
            Excel.Cells[LINHA,10] := cdsTotalVeiculoFATURADOS.Value;
            Excel.Cells[LINHA,11] := cdsTotalVeiculoENTREGUES.Value;
            Excel.Cells[LINHA,12] := cdsTotalVeiculoRETORNO.Value;
            Excel.Cells[LINHA,13] := StrToFloat(FormatFloat('##0.00',cdsTotalVeiculoNF_RETORNADA.Value));
            Excel.Cells[LINHA,22] := StrToFloat(FormatFloat('##0.00',cdsTotalVeiculoPEDAGIO.Value));
            Excel.Cells[LINHA,22].Style := 'Currency';
            Excel.Cells[LINHA,23] := StrToFloat(FormatFloat('##0.00',cdsTotalVeiculoDESCARGA.Value));
            Excel.Cells[LINHA,23].Style := 'Currency';
            Excel.Cells[LINHA,24] := cdsTotalVeiculoMANI_KM_TOTAL.Value ;
            Excel.Cells[LINHA,25] := StrToFloat(FormatFloat('##0.00',cdsTotalVeiculoFRETE.Value));
            Excel.Cells[LINHA,25].Style := 'Currency';

        cdsTotalVeiculo.Next;
        Application.ProcessMessages;
    end;

    //tOTAIS
    if cdsTotalVeiculo.IsEmpty = False then begin
        Inc(linha);
        Excel.Range['E'+inttostr(linha)+':Y'+inttostr(linha)].interior.color := $00C8C8C8;
        Excel.Cells[LINHA,5] := 'TOTAIS';
        Excel.Cells[LINHA,7] := '=Sum(G' + IntToStr(congela+1) + ':G'+IntToStr(linha-1);
        Excel.Cells[LINHA,8] := '=Sum(H' + IntToStr(congela+1) + ':H'+IntToStr(linha-1);
        Excel.Cells[LINHA,9] := '=(H' + IntToStr(linha)+' * 100)/G'+IntToStr(linha);
        Excel.Cells[LINHA,10] := '=Sum(J' + IntToStr(congela+1) + ':J'+IntToStr(linha-1);  ///FAT
        Excel.Cells[LINHA,11] := '=Sum(K' + IntToStr(congela+1) + ':K'+IntToStr(linha-1);  //EN
        Excel.Cells[LINHA,12] := '=Sum(L' + IntToStr(congela+1) + ':L'+IntToStr(linha-1);  //EN
        Excel.Cells[LINHA,13] := '=(L' + IntToStr(linha)+' * 100)/J'+IntToStr(linha);
        Excel.Cells[LINHA,22] := '=Sum(V' + IntToStr(congela+1) + ':V'+IntToStr(linha-1);  //EN
        Excel.Cells[LINHA,22].Style := 'Currency';
        Excel.Cells[LINHA,23] := '=Sum(W' + IntToStr(congela+1) + ':W'+IntToStr(linha-1);  //EN
        Excel.Cells[LINHA,23].Style := 'Currency';
        Excel.Cells[LINHA,24] := cdsRelMANI_KM_TOTAL.Value ;
        Excel.Cells[LINHA,25] := '=Sum(Y' + IntToStr(congela+1) + ':Y'+IntToStr(linha-1);  //EN
        Excel.Cells[LINHA,25].Style := 'Currency';
    end;



    linha := linha + 2;
    Excel.Cells[LINHA,5] := 'Resumo por Região';
    congela := linha;

    //Começamos a escrever os totais
    cdsTotaisRegiao.First;
    while not cdsTotaisRegiao.Eof do begin

            Inc(linha);

            Excel.Cells[LINHA,5] := cdsTotaisRegiaoReg_Nome.Value;
            Excel.Cells[LINHA,7] := StrToFloat(FormatFloat('##0.00',cdsTotaisRegiaoTARA.Value));

            Excel.Cells[LINHA,8] := StrToFloat(FormatFloat('##0.00',cdsTotaisRegiaoMANI_PESO.Value));

            Excel.Cells[LINHA,9] := StrToFloat(FormatFloat('##0.00',cdsTotaisRegiaoOTIMIZACAO.Value));

            Excel.Cells[LINHA,10] := cdsTotaisRegiaoFATURADOS.Value;
            Excel.Cells[LINHA,11] := cdsTotaisRegiaoENTREGUES.Value;
            Excel.Cells[LINHA,12] := cdsTotaisRegiaoRETORNO.Value;
            Excel.Cells[LINHA,13] := StrToFloat(FormatFloat('##0.00',cdsTotaisRegiaoNF_RETORNADA.Value));

            Excel.Cells[LINHA,22] := StrToFloat(FormatFloat('##0.00',cdsTotaisRegiaoPEDAGIO.Value));
            Excel.Cells[LINHA,22].Style := 'Currency';
            Excel.Cells[LINHA,23] := StrToFloat(FormatFloat('##0.00',cdsTotaisRegiaoDESCARGA.Value));
            Excel.Cells[LINHA,23].Style := 'Currency';
            Excel.Cells[LINHA,24] := cdsTotaisRegiaoMANI_KM_TOTAL.Value ;
            Excel.Cells[LINHA,25] := StrToFloat(FormatFloat('##0.00',cdsTotaisRegiaoFRETE.Value));
            Excel.Cells[LINHA,25].Style := 'Currency';

        cdsTotaisRegiao.Next;
        Application.ProcessMessages;
    end;


    //tOTAIS
    if cdsTotaisRegiao.IsEmpty = False then begin
        Inc(linha);
        Excel.Range['E'+inttostr(linha)+':Y'+inttostr(linha)].interior.color := $00C8C8C8;
        Excel.Cells[LINHA,5] := 'TOTAIS';
        Excel.Cells[LINHA,7] := '=Sum(G' + IntToStr(congela+1) + ':G'+IntToStr(linha-1);
        Excel.Cells[LINHA,8] := '=Sum(H' + IntToStr(congela+1) + ':H'+IntToStr(linha-1);
        Excel.Cells[LINHA,9] := '=(H' + IntToStr(linha)+' * 100)/G'+IntToStr(linha);
        Excel.Cells[LINHA,10] := '=Sum(J' + IntToStr(congela+1) + ':J'+IntToStr(linha-1);  ///FAT
        Excel.Cells[LINHA,11] := '=Sum(K' + IntToStr(congela+1) + ':K'+IntToStr(linha-1);  //EN
        Excel.Cells[LINHA,12] := '=Sum(L' + IntToStr(congela+1) + ':L'+IntToStr(linha-1);  //EN
        Excel.Cells[LINHA,13] := '=(L' + IntToStr(linha)+' * 100)/J'+IntToStr(linha);
        Excel.Cells[LINHA,22] := '=Sum(V' + IntToStr(congela+1) + ':V'+IntToStr(linha-1);  //EN
        Excel.Cells[LINHA,22].Style := 'Currency';
        Excel.Cells[LINHA,23] := '=Sum(W' + IntToStr(congela+1) + ':W'+IntToStr(linha-1);  //EN
        Excel.Cells[LINHA,23].Style := 'Currency';
        Excel.Cells[LINHA,24] := cdsRelMANI_KM_TOTAL.Value ;
        Excel.Cells[LINHA,25] := '=Sum(Y' + IntToStr(congela+1) + ':Y'+IntToStr(linha-1);  //EN
        Excel.Cells[LINHA,25].Style := 'Currency';
    end;


    //AUTO DIMENSIONAMOS AS COLUNAS
    Excel.Range['A:Y'].EntireColumn.AutoFit;

    linha := linha + 10;

    Excel.Cells[LINHA,4] := 'Código';
    Excel.Cells[LINHA,5] := 'Ocorrência EDI';
    Excel.Cells[LINHA,7] := 'Qtde';
    Excel.Cells[LINHA,8] := '% s/total';

    congela := linha;

    totalEDI := 0;
    cdsEDI.First;
    while not cdsEDI.Eof do begin
        totalEDI := totalEDI + cdsEDIqtd.Value;
        cdsEDI.Next;
    end;

    cdsEDI.First;
      while not cdsEDI.Eof do begin
      Inc(linha);
      Excel.Cells[LINHA,4] := cdsEDIedi.Value;
      with qrAux do begin
          close;
          sql.Clear;
          sql.Add('select OCORRENCIA from edi_OCORRENCIAs where codigo = ' + QuotedStr(cdsEDIedi.Value));
          Open;
      end;

      Excel.Cells[LINHA,5] := qrAux.FieldByName('OCORRENCIA').AsString;
      Excel.Cells[LINHA,7] := cdsEDIqtd.Value;
      if totalEDI <> 0 then
      Excel.Cells[LINHA,8] := StrToFloat(FormatFloat('##0.00',(cdsEDIqtd.Value * 100)/totalEDI));;
      cdsEDI.Next;
    end;

    if cdsEDI.IsEmpty = False then begin
      Inc(linha);
      Excel.Cells[LINHA,5] := 'TOTAL';
      Excel.Cells[LINHA,7] := '=Sum(G' + IntToStr(congela+1) + ':G'+IntToStr(linha-1);
    end;

    linha := 0;
    congela := 0;
    
    Gauge1.Visible := False;
    excel.visible := True;

end;

procedure TfrmRelOtimizaCargas.cdsRelCalcFields(DataSet: TDataSet);
var EDI, NOTAS : string;
begin
    if cdsRelTARA.AsString <> '' then
       cdsRelOTIMIZACAO.Value := (100 * cdsRelMANI_PESO.Value) / cdsRelTARA.Value
    else
       cdsRelOTIMIZACAO.Value := 0;

    cdsRelRETORNO.Value := cdsRelFATURADOS.Value - cdsRelENTREGUES.Value;

    //se houver nf retornadas pegamos os
    if cdsRelRETORNO.AsInteger > 0 then begin

       //buscamos os codigos edi
       with qrAux do begin
           Close;
           sql.Clear;
           sql.Add('select cod_edi from nf where (cod_edi is not null OR COD_EDI <> '''') and mani_id = ' + cdsRelMANI_ID.AsString);
           Open;
       end;
       EDI := '';
       qrAux.First;
       while not qrAux.Eof do begin

           if qrAux.fieldbyname('cod_edi').AsString <> '' then begin
                 EDI := EDI + qrAux.fieldbyname('cod_edi').AsString + '/';
                 if (cdsEDI.locate('edi', qrAux.fieldbyname('cod_edi').AsString, []) = False) then begin
                      cdsEDI.Append;
                      cdsEDIedi.Value := qrAux.fieldbyname('cod_edi').AsString;
                      cdsEDIqtd.Value := 1;
                      cdsEDI.Post;
                 end
                 else
                 begin
                      cdsEDI.Edit;
                      cdsEDIqtd.Value := cdsEDIqtd.Value + 1;
                      cdsEDI.Post;
                 end;
           end;

          qrAux.Next;
       end;
       cdsRelEDI.Value := EDI;

       with qrAux do begin
           Close;
           sql.Clear;
           sql.Add('select nfi_numero from nf where (nfi_entrega = ''R'' or nfi_entrega = ''D'') and mani_id = ' + cdsRelMANI_ID.AsString);
           Open;
       end;

       NOTAS := '';
       qrAux.First;
       while not qrAux.Eof do begin

         NOTAS := NOTAS + qrAux.FieldByName('NFI_NUMERO').AsString + '/';
        qrAux.Next;
       end;

       cdsRelNotas.Value := NOTAS;
    end;

    cdsRelNF_RETORNADA.Value := (100 * cdsRelRETORNO.Value) / cdsRelFATURADOS.Value;
end;

procedure TfrmRelOtimizaCargas.cdsTotaisRegiaoCalcFields(
  DataSet: TDataSet);
begin
  if (cdsTotaisRegiaoMANI_PESO.Value <> 0) and (cdsTotaisRegiaoTARA.Value <> 0) then begin
      if cdsTotaisRegiaoTARA.AsString <> '' then
         cdsTotaisRegiaoOTIMIZACAO.Value := (100 * cdsTotaisRegiaoMANI_PESO.Value) / cdsTotaisRegiaoTARA.Value
      else
         cdsTotaisRegiaoOTIMIZACAO.Value := 0;
  end;
    cdsTotaisRegiaoRETORNO.Value := cdsTotaisRegiaoFATURADOS.Value - cdsTotaisRegiaoENTREGUES.Value;
    if (cdsTotaisRegiaoRETORNO.Value <> 0) and (cdsTotaisRegiaoFATURADOS.Value <> 0) then
       cdsTotaisRegiaoNF_RETORNADA.Value := (100 * cdsTotaisRegiaoRETORNO.Value) / cdsTotaisRegiaoFATURADOS.Value;
end;

procedure TfrmRelOtimizaCargas.cdsTotalVeiculoCalcFields(
  DataSet: TDataSet);
begin
  if(cdsTotalVeiculoMANI_PESO.Value <> 0) and (cdsTotalVeiculoTARA.Value <> 0) then begin
      if cdsTotalVeiculoTARA.AsString <> '' then
         cdsTotalVeiculoOTIMIZACAO.Value := (100 * cdsTotalVeiculoMANI_PESO.Value) / cdsTotalVeiculoTARA.Value
      else
         cdsTotalVeiculoOTIMIZACAO.Value := 0;
  end;
    cdsTotalVeiculoRETORNO.Value := cdsTotalVeiculoFATURADOS.Value - cdsTotalVeiculoENTREGUES.Value;
    if(cdsTotalVeiculoRETORNO.Value <> 0) and (cdsTotalVeiculoFATURADOS.Value <> 0) then
       cdsTotalVeiculoNF_RETORNADA.Value := (100 * cdsTotalVeiculoRETORNO.Value) / cdsTotalVeiculoFATURADOS.Value;
end;

end.
