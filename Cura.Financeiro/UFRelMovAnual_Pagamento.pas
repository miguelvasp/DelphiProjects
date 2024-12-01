unit UFRelMovAnual_Pagamento;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, StdCtrls, wwdblook, Mask, ExtCtrls, Db, DBTables, Wwquery,
  wwstorep,ComObj;

type
  TFFRelMovAnual_Pagamento = class(TForm)
    RadioGroup1: TRadioGroup;
    GRB_FILT: TGroupBox;
    Label6: TLabel;
    Label5: TLabel;
    Label19: TLabel;
    wwDBLookupCombo7: TwwDBLookupCombo;
    cbo_CONTA_INI: TwwDBLookupCombo;
    DATA_FINAL: TMaskEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Q_RecCli: TwwQuery;
    Q_RecCliFOR_CODI: TStringField;
    Q_RecCliFOR_RAZA: TStringField;
    wwQ_Cger: TwwQuery;
    wwQ_CgerDS: TStringField;
    wwQ_CgerCON_DESC: TStringField;
    wwQ_CgerCON_CODI: TStringField;
    STP_RELDATA: TwwStoredProc;
    Q_AUX: TwwQuery;
    Label1: TLabel;
    wwDBLookupCombo1: TwwDBLookupCombo;
    Q_CLI: TwwQuery;
    Q_CLICLI_CODI: TAutoIncField;
    Q_CLICLI_RAZA: TStringField;
    STP_RELDATA_RECEB: TwwStoredProc;
    RadioGroup2: TRadioGroup;
    Q_RELA: TwwQuery;
    Q_RELACampo1: TStringField;
    Q_RELACampo2: TStringField;
    Q_RELAUSUARIO: TIntegerField;
    Q_RELAValor1: TFloatField;
    Q_RELAValor2: TFloatField;
    Q_RELAValor3: TFloatField;
    Q_RELAValor4: TFloatField;
    Q_RELAValor5: TFloatField;
    Q_RELAValor6: TFloatField;
    Q_RELAValor7: TFloatField;
    Q_RELAValor8: TFloatField;
    Q_RELAValor9: TFloatField;
    Q_RELAValor10: TFloatField;
    Q_RELAValor11: TFloatField;
    Q_RELAValor12: TFloatField;
    Q_RELATotal_Meses: TFloatField;
    Q_RELATotal_Geral: TFloatField;
    Q_RELAPercentual: TFloatField;
    Q_RELATotal_Mes1: TFloatField;
    Q_RELATotal_Mes2: TFloatField;
    Q_RELATotal_Mes3: TFloatField;
    Q_RELATotal_Mes4: TFloatField;
    Q_RELATotal_Mes5: TFloatField;
    Q_RELATotal_Mes6: TFloatField;
    Q_RELATotal_Mes7: TFloatField;
    Q_RELATotal_Mes8: TFloatField;
    Q_RELATotal_Mes9: TFloatField;
    Q_RELATotal_Mes10: TFloatField;
    Q_RELATotal_Mes11: TFloatField;
    Q_RELATotal_Mes12: TFloatField;
    SpeedButton2: TSpeedButton;
    procedure wwDBLookupCombo7Enter(Sender: TObject);
    procedure wwDBLookupCombo7Exit(Sender: TObject);
    procedure cbo_CONTA_INIEnter(Sender: TObject);
    procedure cbo_CONTA_INIExit(Sender: TObject);
    procedure DATA_FINALEnter(Sender: TObject);
    procedure DATA_FINALExit(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FFRelMovAnual_Pagamento: TFFRelMovAnual_Pagamento;
  FORNECEDOR    : String;
  DATAFINAL  : tdatetime;
implementation

uses CPPMENU, URelMovAnual_Pagamento;

{$R *.DFM}

procedure TFFRelMovAnual_Pagamento.wwDBLookupCombo7Enter(Sender: TObject);
begin

  (Sender as TwwDBlookupcombo).Color := ClAqua;
end;

procedure TFFRelMovAnual_Pagamento.wwDBLookupCombo7Exit(Sender: TObject);
begin

  (Sender as TwwDBlookupcombo).Color := Clwindow;
end;

procedure TFFRelMovAnual_Pagamento.cbo_CONTA_INIEnter(Sender: TObject);
begin

  (Sender as TwwDBlookupcombo).Color := ClAqua;
end;

procedure TFFRelMovAnual_Pagamento.cbo_CONTA_INIExit(Sender: TObject);
begin
  
  (Sender as TwwDBlookupcombo).Color := Clwindow;
end;

procedure TFFRelMovAnual_Pagamento.DATA_FINALEnter(Sender: TObject);
begin

  (Sender as TMaskEdit).Color := ClAqua;
end;

procedure TFFRelMovAnual_Pagamento.DATA_FINALExit(Sender: TObject);
begin
    (Sender as TMaskEdit).Color := Clwindow;
end;

procedure TFFRelMovAnual_Pagamento.SpeedButton3Click(Sender: TObject);
begin
  close; 
end;

procedure TFFRelMovAnual_Pagamento.FormCreate(Sender: TObject);
begin
   If  RECEB_OU_PAGTO = 'R' then  begin
      FFRelMovAnual_Pagamento.caption := 'Sistema de Controle Financeiro - Relatório Gerencial de Movimentação Anual (Entrada)' ;
      Q_CLI.open;
      wwDBLookupCombo1.visible := true ;
      Label1.visible := true ;
      wwDBLookupCombo1.taborder := 0 ;
      wwDBLookupCombo7.visible := false ;
      Label6.visible := false ;
      RadioGroup2.VISIBLE := TRUE ;
      RadioGroup1.VISIBLE := false ;

   end else begin
      FFRelMovAnual_Pagamento.caption := 'Sistema de Controle Financeiro - Relatório Gerencial de Movimentação Anual (Saída)'  ;
      Q_RECCLI.open;
      wwDBLookupCombo1.visible := false ;
      Label1.visible := false ;
      wwDBLookupCombo7.visible := true ;
      wwDBLookupCombo7.taborder := 0 ;
      Label6.visible := true ;
      RadioGroup2.VISIBLE := false ;
      RadioGroup1.VISIBLE := true ;
   end ;        


   WWQ_CGER.open;
end;

procedure TFFRelMovAnual_Pagamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

   Q_RECCLI.close;
   WWQ_CGER.close;
   action := cafree;
end;

procedure TFFRelMovAnual_Pagamento.SpeedButton1Click(Sender: TObject);
begin
  if wwDBLookupCombo7.text <> '' then
       FORNECEDOR := wwDBLookupCombo7.lookupvalue ;

  DATAFINAL :=  0.0 ;
  if DATA_FINAL.text <> '  /  /    ' then
     DATAFINAL  := strtodate(DATA_FINAL.text )
   else begin
       MessageDlg('Data Final deve ser informada !',mtInformation,[mbOk], 0);
       DATA_FINAL.setfocus;
       abort;
   end ;


   If  RECEB_OU_PAGTO = 'P' then  begin
         try
          Begin
                 If RadioGroup1.itemindex = 0 then
                    STP_RELDATA.ParamByName('@ORDENACAO').Value  := 'CG'  ;

                 If RadioGroup1.itemindex = 1 then
                    STP_RELDATA.ParamByName('@ORDENACAO').Value  := 'FO'  ;

                 If RadioGroup1.itemindex = 2 then
                    STP_RELDATA.ParamByName('@ORDENACAO').Value  := 'OP'  ;


                 if wwDBLookupCombo7.text <> '' then
                    STP_RELDATA.ParamByName('@FORNECEDOR').Value  := wwDBLookupCombo7.text
                 else
                    STP_RELDATA.ParamByName('@FORNECEDOR').Value  :=   'VAZIO'  ;

                  if cbo_CONTA_INI.text <> '' then
                    STP_RELDATA.ParamByName('@CONTAGERENCIAL').Value  := cbo_CONTA_INI.text
                 else
                    STP_RELDATA.ParamByName('@CONTAGERENCIAL').Value  :=   'VAZIO'  ;

                    STP_RELDATA.ParamByName('@DATA_FINAL').Value := formatdatetime('YYYYMMDD',DATAFINAL) ;

                   Q_aux.close;
                   Q_aux.Sql.Clear;
                   Q_aux.Sql.Add(' SELECT CH FROM USUARIOFINANCEIRO ') ;
                   Q_aux.Sql.Add(' where nome = ' +  '''' + FMenu.FUsuario + '''' ) ;
                   Q_AUX.open ;

                    STP_RELDATA.ParamByName('@CH').Value  := Q_AUX.fieldbyname('CH').asstring ;
                    STP_RELDATA.Execproc;
          End
        except
           begin
             MessageDlg('Geração do Relatório com erro !',mtInformation,[mbOk], 0);
             abort  ;
           end;
        end;
   end else begin
        try
          Begin
                 If RadioGroup2.itemindex = 0 then
                    STP_RELDATA_RECEB.ParamByName('@ORDENACAO').Value  := 'CG'  ;

                 If RadioGroup2.itemindex = 1 then
                    STP_RELDATA_RECEB.ParamByName('@ORDENACAO').Value  := 'FO'  ;

                 If RadioGroup2.itemindex = 2 then
                    STP_RELDATA_RECEB.ParamByName('@ORDENACAO').Value  := 'OP'  ;


                 if wwDBLookupCombo1.text <> '' then
                    STP_RELDATA_RECEB.ParamByName('@REC_CLIE').Value  := wwDBLookupCombo1.lookupvalue
                 else
                    STP_RELDATA_RECEB.ParamByName('@REC_CLIE').Value  :=   0  ;

                  if cbo_CONTA_INI.text <> '' then
                    STP_RELDATA_RECEB.ParamByName('@REC_CGER').Value  := cbo_CONTA_INI.text
                 else
                    STP_RELDATA_RECEB.ParamByName('@REC_CGER').Value  :=   'VAZIO'  ;

                    STP_RELDATA_RECEB.ParamByName('@DATA_FINAL').Value := formatdatetime('YYYYMMDD',DATAFINAL) ;

                   Q_aux.close;
                   Q_aux.Sql.Clear;
                   Q_aux.Sql.Add(' SELECT CH FROM USUARIOFINANCEIRO ') ;
                   Q_aux.Sql.Add(' where nome = ' +  '''' + FMenu.FUsuario + '''' ) ;
                   Q_AUX.open ;

                   STP_RELDATA_RECEB.ParamByName('@CH').Value  := Q_AUX.fieldbyname('CH').asstring ;
                   STP_RELDATA_RECEB.Execproc;
          End
        except
           begin
             MessageDlg('Geração do Relatório com erro !',mtInformation,[mbOk], 0);
             abort  ;
           end;
        end;
   end ;

   Application.CreateForm(TFRelMovAnual_Pagamento,FRelMovAnual_Pagamento);
   FRelMovAnual_Pagamento.QuickRep1.Preview;
   FRelMovAnual_Pagamento.Close;
   FORNECEDOR := '' ;
   DATAFINAL := 0.00 ;
   Q_RELA.Close;

end;

procedure TFFRelMovAnual_Pagamento.SpeedButton2Click(Sender: TObject);
var excel,ColumnRange :Variant;
    linha:Integer;
begin
  if wwDBLookupCombo7.text <> '' then
       FORNECEDOR := wwDBLookupCombo7.lookupvalue ;

  DATAFINAL :=  0.0 ;
  if DATA_FINAL.text <> '  /  /    ' then
     DATAFINAL  := strtodate(DATA_FINAL.text )
   else begin
       MessageDlg('Data Final deve ser informada !',mtInformation,[mbOk], 0);
       DATA_FINAL.setfocus;
       abort;
   end ;


   If  RECEB_OU_PAGTO = 'P' then  begin
         try
          Begin
                 If RadioGroup1.itemindex = 0 then
                    STP_RELDATA.ParamByName('@ORDENACAO').Value  := 'CG'  ;

                 If RadioGroup1.itemindex = 1 then
                    STP_RELDATA.ParamByName('@ORDENACAO').Value  := 'FO'  ;

                 If RadioGroup1.itemindex = 2 then
                    STP_RELDATA.ParamByName('@ORDENACAO').Value  := 'OP'  ;


                 if wwDBLookupCombo7.text <> '' then
                    STP_RELDATA.ParamByName('@FORNECEDOR').Value  := wwDBLookupCombo7.text
                 else
                    STP_RELDATA.ParamByName('@FORNECEDOR').Value  :=   'VAZIO'  ;

                  if cbo_CONTA_INI.text <> '' then
                    STP_RELDATA.ParamByName('@CONTAGERENCIAL').Value  := cbo_CONTA_INI.text
                 else
                    STP_RELDATA.ParamByName('@CONTAGERENCIAL').Value  :=   'VAZIO'  ;

                    STP_RELDATA.ParamByName('@DATA_FINAL').Value := formatdatetime('YYYYMMDD',DATAFINAL) ;

                   Q_aux.close;
                   Q_aux.Sql.Clear;
                   Q_aux.Sql.Add(' SELECT CH FROM USUARIOFINANCEIRO ') ;
                   Q_aux.Sql.Add(' where nome = ' +  '''' + FMenu.FUsuario + '''' ) ;
                   Q_AUX.open ;

                    STP_RELDATA.ParamByName('@CH').Value  := Q_AUX.fieldbyname('CH').asstring ;
                    STP_RELDATA.Execproc;
          End
        except
           begin
             MessageDlg('Geração do Relatório com erro !',mtInformation,[mbOk], 0);
             abort  ;
           end;
        end;
   end else begin
        try
          Begin
                 If RadioGroup2.itemindex = 0 then
                    STP_RELDATA_RECEB.ParamByName('@ORDENACAO').Value  := 'CG'  ;

                 If RadioGroup2.itemindex = 1 then
                    STP_RELDATA_RECEB.ParamByName('@ORDENACAO').Value  := 'FO'  ;

                 If RadioGroup2.itemindex = 2 then
                    STP_RELDATA_RECEB.ParamByName('@ORDENACAO').Value  := 'OP'  ;


                 if wwDBLookupCombo1.text <> '' then
                    STP_RELDATA_RECEB.ParamByName('@REC_CLIE').Value  := wwDBLookupCombo1.lookupvalue
                 else
                    STP_RELDATA_RECEB.ParamByName('@REC_CLIE').Value  :=   0  ;

                  if cbo_CONTA_INI.text <> '' then
                    STP_RELDATA_RECEB.ParamByName('@REC_CGER').Value  := cbo_CONTA_INI.text
                 else
                    STP_RELDATA_RECEB.ParamByName('@REC_CGER').Value  :=   'VAZIO'  ;

                    STP_RELDATA_RECEB.ParamByName('@DATA_FINAL').Value := formatdatetime('YYYYMMDD',DATAFINAL) ;

                   Q_aux.close;
                   Q_aux.Sql.Clear;
                   Q_aux.Sql.Add(' SELECT CH FROM USUARIOFINANCEIRO ') ;
                   Q_aux.Sql.Add(' where nome = ' +  '''' + FMenu.FUsuario + '''' ) ;
                   Q_AUX.open ;

                    STP_RELDATA_RECEB.ParamByName('@CH').Value  := Q_AUX.fieldbyname('CH').asstring ;
                    STP_RELDATA_RECEB.Execproc;
          End
        except
           begin
             MessageDlg('Geração do Relatório com erro !',mtInformation,[mbOk], 0);
             abort  ;
           end;
        end;


   end ;

  Try
  Excel := CreateOleObject('excel.application');
  If not Excel.Application.Visible then
          Excel.Application.Visible := true;
          Excel.WorkBooks.Add;
  // Inserindo cabeçalhos
       if RECEB_OU_PAGTO = 'P' then begin
          Excel.Cells[1,1] := 'Relatório Gerencial de Movimentação Anual ( Pagamentos )';

          ColumnRange := Excel.Workbooks[1].WorkSheets[1].Columns;
          case RadioGroup1.ItemIndex of
             0:begin
               ColumnRange.Columns[1].ColumnWidth := 25;
               Excel.Cells[3,1] := 'Ordenação : Conta Gerencial'+
                                   ' Filtros : '+
                                   wwdblookupcombo7.Text+' - '+
                                   cbo_CONTA_INI.Text+' - '+data_final.Text;

             end;
             1:begin
               ColumnRange.Columns[1].ColumnWidth := 55;
               Excel.Cells[3,1] := 'Ordenação : Fornecedores'+
                                   ' Filtros : '+
                                   wwdblookupcombo7.Text+' - '+
                                   cbo_CONTA_INI.Text+' - '+data_final.Text;

             end;
             2:begin
               ColumnRange.Columns[1].ColumnWidth := 25;
               Excel.Cells[3,1] := 'Ordenação : Oper./Não Oper./Financ'+
                                   ' Filtros : '+
                                   wwdblookupcombo7.Text+' - '+
                                   cbo_CONTA_INI.Text+' - '+data_final.Text;

             end;
          end;
       end
       else begin
            Excel.Cells[1,1] := 'Relatório Gerencial de Movimentação Anual ( Recebimentos )';
                      ColumnRange := Excel.Workbooks[1].WorkSheets[1].Columns;
          case RadioGroup2.ItemIndex of
             0:begin
               ColumnRange.Columns[1].ColumnWidth := 25;
               Excel.Cells[3,1] := 'Ordenação : Conta Gerencial'+
                                   ' Filtros : '+
                                   wwdblookupcombo1.Text+' - '+
                                   cbo_CONTA_INI.Text+' - '+data_final.Text;
             end;
             1:begin
               ColumnRange.Columns[1].ColumnWidth := 55;
               Excel.Cells[3,1] := 'Ordenação : Clientes'+
                                   ' Filtros : '+
                                   wwdblookupcombo1.Text+' - '+
                                   cbo_CONTA_INI.Text+' - '+data_final.Text;
             end;
             2:begin
               ColumnRange.Columns[1].ColumnWidth := 25;
               Excel.Cells[3,1] := 'Ordenação : Oper./Não Oper./Financ'+
                                   ' Filtros : '+
                                   wwdblookupcombo1.Text+' - '+
                                   cbo_CONTA_INI.Text+' - '+data_final.Text;
             end;
          end;
       end;

          Excel.Cells[5,3] := 'Janeiro';
          Excel.Cells[5,4] := 'Fevereiro';
          Excel.Cells[5,5] := 'Março';
          Excel.Cells[5,6] := 'Abril';
          Excel.Cells[5,7] := 'Maio';
          Excel.Cells[5,8] := 'Junho';
          Excel.Cells[5,9] := 'Julho';
          Excel.Cells[5,10] := 'Agosto';
          Excel.Cells[5,11] := 'Setembro';
          Excel.Cells[5,12] := 'Outubro';
          Excel.Cells[5,13] := 'Novembro';
          Excel.Cells[5,14] := 'Dezembro';
          Excel.Cells[5,15] := 'Total R$';
          Excel.Cells[5,16] := ' % ';

          LINHA := 6;
          Q_RELA.Open;
          Q_rela.First;
  //      Alterando o tamanho das colunas

          Excel.Range['A3'].Font.Bold := True;

          ColumnRange.Columns[2].ColumnWidth := 0;
          ColumnRange.Columns[3].ColumnWidth := 15;
          ColumnRange.Columns[4].ColumnWidth := 15;
          ColumnRange.Columns[5].ColumnWidth := 15;
          ColumnRange.Columns[6].ColumnWidth := 15;
          ColumnRange.Columns[7].ColumnWidth := 15;
          ColumnRange.Columns[8].ColumnWidth := 15;
          ColumnRange.Columns[9].ColumnWidth := 15;
          ColumnRange.Columns[10].ColumnWidth := 15;
          ColumnRange.Columns[11].ColumnWidth := 15;
          ColumnRange.Columns[12].ColumnWidth := 15;
          ColumnRange.Columns[13].ColumnWidth := 15;
          ColumnRange.Columns[14].ColumnWidth := 15;
          ColumnRange.Columns[15].ColumnWidth := 22;
          ColumnRange.Columns[16].ColumnWidth := 22;

          Excel.Range['A1'].Font.Bold := True;

          WHILE NOT Q_rela.Eof DO
          BEGIN

  //              Acrescentando dados
                  Excel.Cells[LINHA ,1] := Q_relacampo1.value;
                  Excel.Cells[LINHA ,3] := Q_RELAValor1.Value;
                  Excel.Cells[LINHA ,4] := Q_RELAValor2.Value;
                  Excel.Cells[LINHA ,5] := Q_RELAValor3.Value;
                  Excel.Cells[LINHA ,6] := Q_RELAValor4.Value;
                  Excel.Cells[LINHA ,7] := Q_RELAValor5.Value;
                  Excel.Cells[LINHA ,8] := Q_RELAValor6.Value;
                  Excel.Cells[LINHA ,9] := Q_RELAValor7.Value;
                  Excel.Cells[LINHA ,10] := Q_RELAValor8.Value;
                  Excel.Cells[LINHA ,11] := Q_RELAValor9.Value;
                  Excel.Cells[LINHA ,12] := Q_RELAValor10.Value;
                  Excel.Cells[LINHA ,13] := Q_RELAValor11.Value;
                  Excel.Cells[LINHA ,14] := Q_RELAValor12.Value;
  //Acrescentando fórmula
                  Excel.Range['O'+inttostr(linha), 'O'+inttostr(linha)].Formula := '=Sum(C'+inttostr(linha)+':'+'N'+inttostr(linha)+')';

                  Excel.Cells[LINHA ,16] := Q_RELAPercentual.Value;
                  Excel.Range['A'+INTTOSTR(LINHA)].Font.Bold := True;
                  LINHA := LINHA + 1;
                  Q_RELA.next;
          END;

          LINHA := LINHA + 1;

          Excel.Workbooks[1].WorkSheets[1].Name := 'Relatório Gerencial';
          Excel.Range['C5:D5:E5:F5:G5:H5:I5:J5:K5:L5:M5:N5:O5:P5'].Font.Bold := True;

          Excel.Cells[linha,1] := 'Total ------ >';
          Excel.Range['C'+inttostr(linha), 'C'+inttostr(linha)].Formula := '=Sum(C3:'+'C'+inttostr(linha-1)+')';
          Excel.Range['D'+inttostr(linha), 'D'+inttostr(linha)].Formula := '=Sum(D3:'+'D'+inttostr(linha-1)+')';
          Excel.Range['E'+inttostr(linha), 'E'+inttostr(linha)].Formula := '=Sum(E3:'+'E'+inttostr(linha-1)+')';
          Excel.Range['F'+inttostr(linha), 'F'+inttostr(linha)].Formula := '=Sum(F3:'+'F'+inttostr(linha-1)+')';
          Excel.Range['G'+inttostr(linha), 'G'+inttostr(linha)].Formula := '=Sum(G3:'+'G'+inttostr(linha-1)+')';
          Excel.Range['H'+inttostr(linha), 'H'+inttostr(linha)].Formula := '=Sum(H3:'+'H'+inttostr(linha-1)+')';
          Excel.Range['I'+inttostr(linha), 'I'+inttostr(linha)].Formula := '=Sum(I3:'+'I'+inttostr(linha-1)+')';
          Excel.Range['J'+inttostr(linha), 'J'+inttostr(linha)].Formula := '=Sum(J3:'+'J'+inttostr(linha-1)+')';
          Excel.Range['K'+inttostr(linha), 'K'+inttostr(linha)].Formula := '=Sum(K3:'+'K'+inttostr(linha-1)+')';
          Excel.Range['L'+inttostr(linha), 'L'+inttostr(linha)].Formula := '=Sum(L3:'+'L'+inttostr(linha-1)+')';
          Excel.Range['M'+inttostr(linha), 'M'+inttostr(linha)].Formula := '=Sum(M3:'+'M'+inttostr(linha-1)+')';
          Excel.Range['N'+inttostr(linha), 'N'+inttostr(linha)].Formula := '=Sum(N3:'+'N'+inttostr(linha-1)+')';

  //Acrescentando uma fórmula
          Excel.Range['O'+inttostr(linha), 'O'+inttostr(linha)].Formula := '=Sum(O3:'+'O'+inttostr(linha-1)+')';
  //        Excel.Range['P'+inttostr(linha), 'P'+inttostr(linha)].Formula := '=Sum(P3:'+'P'+inttostr(linha-1)+')';
          Excel.Range['C'+inttostr(linha)].Font.Bold := True;
          Excel.Range['D'+inttostr(linha)].Font.Bold := True;
          Excel.Range['E'+inttostr(linha)].Font.Bold := True;
          Excel.Range['F'+inttostr(linha)].Font.Bold := True;
          Excel.Range['G'+inttostr(linha)].Font.Bold := True;
          Excel.Range['H'+inttostr(linha)].Font.Bold := True;
          Excel.Range['I'+inttostr(linha)].Font.Bold := True;
          Excel.Range['J'+inttostr(linha)].Font.Bold := True;
          Excel.Range['K'+inttostr(linha)].Font.Bold := True;
          Excel.Range['L'+inttostr(linha)].Font.Bold := True;
          Excel.Range['M'+inttostr(linha)].Font.Bold := True;
          Excel.Range['N'+inttostr(linha)].Font.Bold := True;
          Excel.Range['O'+inttostr(linha)].Font.Bold := True;
          Excel.Range['P'+inttostr(linha)].Font.Bold := True;

//Formatando (style) separador de milhar
          Excel.Range['C6:C'+inttostr(linha)].Style := 'Comma';
          Excel.Range['D6:D'+inttostr(linha)].Style := 'Comma';
          Excel.Range['E6:E'+inttostr(linha)].Style := 'Comma';
          Excel.Range['F6:F'+inttostr(linha)].Style := 'Comma';
          Excel.Range['G6:G'+inttostr(linha)].Style := 'Comma';
          Excel.Range['H6:H'+inttostr(linha)].Style := 'Comma';
          Excel.Range['I6:I'+inttostr(linha)].Style := 'Comma';
          Excel.Range['J6:J'+inttostr(linha)].Style := 'Comma';
          Excel.Range['K6:K'+inttostr(linha)].Style := 'Comma';
          Excel.Range['L6:L'+inttostr(linha)].Style := 'Comma';
          Excel.Range['M6:M'+inttostr(linha)].Style := 'Comma';
          Excel.Range['N6:N'+inttostr(linha)].Style := 'Comma';
          Excel.Range['O6:O'+inttostr(linha)].Style := 'Comma';
          Excel.Range['P6:P'+inttostr(linha)].Style := 'Comma';

  Except
      Showmessage('Ocorreu erro ao executar a transferência para .xls !!!')
  End;

  FORNECEDOR := '' ;
  DATAFINAL := 0.00 ;
  Q_RELA.Close;

end;

end.
