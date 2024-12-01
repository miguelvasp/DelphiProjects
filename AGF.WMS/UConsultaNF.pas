unit UConsultaNF;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Wwdbigrd, Grids, Wwdbgrid, Buttons, Db, Wwdatsrc,
  DBTables, Wwquery, DBCtrls, wwstorep, ComObj;

type
  TFConsultaNF = class(TForm)
    Panel3: TPanel;
    SpeedButton3: TSpeedButton;
    Label16: TLabel;
    GRID1: TwwDBGrid;
    Q_CONSULTA: TwwQuery;
    DS_CONSULTA: TwwDataSource;
    Q_CONSULTAOS_ID: TIntegerField;
    Q_CONSULTANFI_NUMERO: TStringField;
    Q_CONSULTANFI_EMIT_CLI: TIntegerField;
    Q_CONSULTANFI_DEST_RAZA: TStringField;
    Q_CONSULTANFI_DEMI: TDateTimeField;
    Q_CONSULTADESC_CLI: TStringField;
    Panel7: TPanel;
    Q_CLINBF: TwwQuery;
    Q_CLINBFCLIN_ID: TAutoIncField;
    Q_CLINBFCLIN_RAZA: TStringField;
    Q_CONSULTANFI_CODI: TAutoIncField;
    Label1: TLabel;
    Q_CONSULTAQTDEUV: TFloatField;
    Q_CONSULTAPESOBRU: TFloatField;
    Label4: TLabel;
    Label5: TLabel;
    Label20: TLabel;
    Label2: TLabel;
    Label8: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    Q_CONSULTANFI_TOTA: TFloatField;
    SBT_VISU: TSpeedButton;
    Label18: TLabel;
    Label19: TLabel;
    Q_CONSUL: TwwQuery;
    DS_CONSUL: TwwDataSource;
    Q_CONSULQTDEUV: TFloatField;
    Q_CONSULPESOBRU: TFloatField;
    Q_CONSULOS_ID: TIntegerField;
    Q_CONSULNFI_NUMERO: TStringField;
    Q_CONSULNFI_EMIT_CLI: TIntegerField;
    Q_CONSULNFI_DEST_CLI: TIntegerField;
    Q_CONSULNFI_DEST_RAZA: TStringField;
    Q_CONSULNFI_DEMI: TDateTimeField;
    Q_CONSULNFI_CODI: TIntegerField;
    Q_CONSULNFI_TOTA: TFloatField;
    Q_CONSULQTDEPALLET: TIntegerField;
    Q_CONSULDESC_CLI: TStringField;
    Q_CONSULMANI_ID: TIntegerField;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    SpeedButton1: TSpeedButton;
    RadioGroup1: TRadioGroup;
    STP_CONSULTANF: TwwStoredProc;
    Q_AUX: TwwQuery;
    Panel1: TPanel;
    Label48: TLabel;
    Panel2: TPanel;
    Label27: TLabel;
    Panel4: TPanel;
    Label28: TLabel;
    RadioGroup2: TRadioGroup;
    Q_CONSULSTATUS: TStringField;
    Q_CONSULNFI_LOAD: TStringField;
    SpeedButton2: TSpeedButton;
    dsExcel: TDataSource;
    Q_CONSULCH: TIntegerField;
    Q_CONSULDT_ENTREGA: TDateTimeField;
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure GRID1DblClick(Sender: TObject);
    procedure SBT_VISUClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure GRID1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);

    procedure buscanotas;
    procedure RadioGroup2Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConsultaNF: TFConsultaNF;
  VAR
  OS: STRING;
  NF: STRING;
  PESQUISANF : string ;
  PESQUISAOS : string ;
  PESQUISAMANI : string ;
implementation
USES UFCONSULTANF, UOS, UNF, URelConsNF, UManifesto, UMENU ;
{$R *.DFM}

procedure TFConsultaNF.SpeedButton3Click(Sender: TObject);
begin
CLOSE;
end;

procedure TFConsultaNF.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//Q_CONSULTA.CLOSE;
Q_CONSUL.close;
Q_CLINBF.close ;
ACTION := CAFREE;
end;

procedure TFConsultaNF.FormCreate(Sender: TObject);
VAR IK : Integer;
begin
   for IK := 0 TO PRED(ComponentCount) do begin
       if Components[IK] is TwwDBGrid then begin
           (Components[IK] as TwwDBGrid).TitleColor := clBtnFace;
           (Components[IK] as TwwDBGrid).TitleFont.Color := clBlack;
       end;
   end;
  Q_CLINBF.open ;

  case Tipo of
    1 : LABEL1.caption  :=  'Nota Fiscal de Saída'   ;
    2 : LABEL1.caption  :=  'Nota Fiscal de Entrada'     ;
    14 : LABEL1.caption :=  'Nota Fiscal de Retorno Simbólico' ;
    4 : LABEL1.caption  :=  'Nota Fiscal de Remetente' ;
    3 : LABEL1.caption  :=  'Nota Fiscal de Armazém' ;
    15 : LABEL1.caption :=  'Nota Fiscal de Remessa Conta Ordem Terceiros' ;
  end ;

  IF PROD <> '' then  begin
     Label11.caption := FFConsultaNF.combo_produto.text   ;
     Label15.caption := FFConsultaNF.Q_PRODPRO_DESC.asstring   ;
  end else begin
     Label11.caption :=  'Não Preenchido'   ;
     Label15.caption :=  'Não Preenchido'   ;
  end ;

  IF REM <> '' then
     Label7.caption :=  FFConsultaNF.wwDBLookupCombo1.text  ;
  IF FFConsultaNF.wwDBLookupCombo1.text = '' then
     Label7.caption := 'Não Preenchido'    ;

  IF NOTA <> '' then
     Label6.caption :=  FFConsultaNF.dbnf.text
  else
     Label6.caption :='Não Preenchido' ;


  IF CLIF <> '' then
     Label9.caption :=  FFConsultaNF.combo_cliente_final.text
  else
     Label9.caption := 'Não Preenchido'      ;


  IF CLI <> '' then
     Label10.caption :=  FFConsultaNF.combo_cliente.text
  else
     Label10.caption := 'Não Preenchido'    ;

  IF VENCI <> 0.00 then
     Label12.caption :=  FFConsultaNF.DATA1.text
  else
     Label12.caption := 'Não Preenchido'       ;

  IF VENCF <> 0.00 then
     Label14.caption :=  FFConsultaNF.DATA2.text
  else
     Label14.caption := 'Não Preenchido' ;

  IF (TPROD <> '') and (TPROD <> '*')  then
     Label19.caption :=  FFConsultaNF.wwDBLookupCombo2.text
  else
     Label19.caption := 'Não Preenchido' ;


  IF BATCH <> 0.00 then
     Label22.caption :=  FFConsultaNF.MaskEdit1.text
  else
     Label22.caption := 'Não Preenchido'       ;


  IF BATCHF <> 0.00 then
     Label26.caption :=  FFConsultaNF.MaskEdit2.text
  else
     Label26.caption := 'Não Preenchido' ;

  IF LOTE <> '' then
     Label24.caption :=  FFConsultaNF.wwDBEdit1.text
  else
     Label24.caption :='Não Preenchido' ;


    GRID1.Visible := true ;
   { Q_CONSULTA.SQL.Clear;
    Q_CONSULTA.SQL.Add(' SELECT   SUM(B.INF_QTDE) as QTDEUV, SUM(B.INF_PESO*B.INF_QTDE) as PESOBRU, ') ;
    Q_CONSULTA.SQL.Add('  A.OS_ID, A.NFI_NUMERO, A.NFI_EMIT_CLI, A.NFI_DEST_RAZA, A.NFI_DEMI ,A.NFI_CODI, A.NFI_TOTA    ') ;
    Q_CONSULTA.SQL.Add(' FROM NF A , NF_ITENS B ,PRODUTO C ') ;
    Q_CONSULTA.SQL.ADD(' WHERE ');
    Q_CONSULTA.SQL.ADD(' A.NFI_CODI = B.NFI_CODI ') ;
    Q_CONSULTA.SQL.ADD(' and A.TDOC_ID = ' + inttostr(TIPO));
    Q_CONSULTA.SQL.ADD(' and C.PRO_ID = B.PRO_ID ');
    IF PROD <> '' then
            Q_CONSULTA.SQL.ADD(' AND B.PRO_ID = '+ '''' + PROD + '''');

    IF TPROD <> '' then
            Q_CONSULTA.SQL.ADD(' AND C.TPRO_ID = '+ '''' + TPROD + '''');


    IF (TIPO <> 4) and (TIPO <> 14) and (TIPO <> 3) then begin
       IF CLI <> '' then
            Q_CONSULTA.SQL.ADD(' AND A.NFI_EMIT_CLI = '+'''' + CLI + '''');
    end else begin
        IF REM <> '' then
            Q_CONSULTA.SQL.ADD(' AND A.NFI_EMIT_CLI = '+'''' + REM + '''');
    end ;

    IF NOTA <> '' then
            Q_CONSULTA.SQL.ADD(' AND A.NFI_NUMERO = '+'''' + NOTA + '''');
    IF CLIF <> '' then
            Q_CONSULTA.SQL.ADD(' AND A.NFI_DEST_CLI = '+'''' + CLIF + '''');
    if VENCI <> 0.0 then
            Q_CONSULTA.SQL.ADD(' AND CONVERT(CHAR(10), A.NFI_DEMI, 112) >= ' +''''+ formatdatetime('YYYYMMDD',VENCI) + '''');
    if VENCF <> 0.0 then
            Q_CONSULTA.SQL.ADD(' AND CONVERT(CHAR(10), A.NFI_DEMI, 112) <= ' +''''+ formatdatetime('YYYYMMDD',VENCF) + '''') ;
    Q_CONSULTA.SQL.ADD(' group by A.OS_ID, A.NFI_NUMERO,A.NFI_EMIT_CLI,A.NFI_DEST_RAZA, ');
    Q_CONSULTA.SQL.ADD(' A.NFI_DEMI ,A.NFI_CODI,A.NFI_TOTA  ');}
    //Q_CONSULTA.OPEN ;
    Q_CONSUL.open;





    IF (TIPO <> 14)  then begin
    end else begin
        {Grid1.Selected.clear;
        Grid1.Selected.Add('NFI_NUMERO'#9'7'#9'NF'#9'F');
        Grid1.Selected.Add('NFI_DEMI'#9'9'#9'Data'#9'F');
        Grid1.Selected.Add('NFI_DEST_RAZA'#9'34'#9'Destinatário'#9'F');
        Grid1.Selected.Add('QTDEUV'#9'10'#9'Qtde. UV'#9'F');
        Grid1.Selected.Add('PESOBRU'#9'11'#9'Peso Bruto'#9'F');
        Grid1.Selected.Add('NFI_TOTA'#9'10'#9'Vlr. da Nota'#9'F');
        Grid1.Selected.Add('QTDEPALLET'#9'10'#9'Qtde. Pallet'#9'F');
        Grid1.ApplySelected;
        Grid1.Font.Height := -17  ;
        Grid1.TitleFont.Height := -9    ;   }
    end ;


end;


procedure TFConsultaNF.GRID1DblClick(Sender: TObject);
begin
 IF  GRID1.Selectedfield = Q_CONSULOS_ID  then begin
     PESQUISAOS := '*' ;
     application.createform(TFOS , FOS);
     FOS.SHOWMODAL ;
     FOS.RELEASE   ;
     FOS.CLOSE     ;
 end ;

 IF  GRID1.Selectedfield = Q_CONSULNFI_NUMERO  then begin
     PESQUISANF := '*' ;
     application.createform(TFNF , FNF);
     FNF.SHOWMODAL ;
     FNF.RELEASE   ;
     FNF.CLOSE     ;

    //// FConsultaNF.close ;


        try
         Begin
           If FFConsultaNf.dbnf.text <> '' then
              STP_CONSULTANF.ParamByName('@NF').Value  :=  FFConsultaNf.dbnf.text
            else
              STP_CONSULTANF.ParamByName('@NF').Value  := 'VAZIO'   ;

           if FFConsultaNf.combo_cliente.text <> '' then
              STP_CONSULTANF.ParamByName('@CLIN_ID').Value  := FFConsultaNf.combo_cliente.lookupvalue
           else
              STP_CONSULTANF.ParamByName('@CLIN_ID').Value  :=   0  ;

           if FFConsultaNf.wwDBLookupCombo1.text <> '' then
              STP_CONSULTANF.ParamByName('@CLIN_REMET').Value    :=  FFConsultaNf.wwDBLookupCombo1.lookupvalue
           else
              STP_CONSULTANF.ParamByName('@CLIN_REMET').Value    :=   0  ;

           if FFConsultaNf.combo_PRODUTO.text <> '' then
              STP_CONSULTANF.ParamByName('@PRO_ID').Value    :=  FFConsultaNf.combo_PRODUTO.lookupvalue
           else
              STP_CONSULTANF.ParamByName('@PRO_ID').Value    :=   0  ;

           if FFConsultaNf.combo_cliente_final.text <> '' then
              STP_CONSULTANF.ParamByName('@CLIF_ID').Value    :=  FFConsultaNf.combo_cliente_final.lookupvalue
           else
              STP_CONSULTANF.ParamByName('@CLIF_ID').Value    :=   0  ;

           if (FFConsultaNf.wwDBLookupCombo2.text <> '') then begin
               TPROD_ASTERISCO := copy(FFConsultaNf.wwDBLookupCombo2.text,1,1);
               if (TPROD_ASTERISCO <> '*') then
                  STP_CONSULTANF.ParamByName('@TPRO_ID').Value    :=  FFConsultaNf.wwDBLookupCombo2.lookupvalue
               else
                  STP_CONSULTANF.ParamByName('@TPRO_ID').Value    :=   0  ;
           end else  STP_CONSULTANF.ParamByName('@TPRO_ID').Value    :=   0  ;

           STP_CONSULTANF.ParamByName('@TIPO_NF').Value    :=  Tipo  ;

            VENCI := 0.0 ;
            VENCF := 0.0 ;
            if FFConsultaNf.Data1.text <> '  /  /    ' then begin
               VENCI  := strtodate(FFConsultaNf.Data1.text );
               STP_CONSULTANF.ParamByName('@DATAI').Value :=  formatdatetime('YYYYMMDD',VENCI) ;
            end else STP_CONSULTANF.ParamByName('@DATAI').Value := 0.0 ;

            if FFConsultaNf.Data2.text <> '  /  /    ' then begin
               VENCF  := strtodate(FFConsultaNf.Data2.text );
               STP_CONSULTANF.ParamByName('@DATAF').Value  :=   formatdatetime('YYYYMMDD',VENCF) ;
            end else STP_CONSULTANF.ParamByName('@DATAF').Value  := 0.0 ;

            If FFConsultaNf.Radiogroup2.itemindex = 0 then
               STP_CONSULTANF.ParamByName('@CALCPALLET').Value    :=  'N'
             else
               STP_CONSULTANF.ParamByName('@CALCPALLET').Value    :=  'S'  ;
            
                //ADICIONA FILTRO DE DATA DE ENTREGA
                IF FFConsultaNf.edtEntregaIni.Text <> '  /  /    ' then begin
                   STP_CONSULTANF.ParamByName('@ENTREGA_INI').Value := FormatDateTime('YYYYMMDD', StrToDate(FFConsultaNf.edtEntregaIni.Text));
                end else STP_CONSULTANF.ParamByName('@ENTREGA_INI').Value := 0;

                //ADICIONA FILTRO DE DATA DE ENTREGA
                IF FFConsultaNf.edtEntregaFim.Text <> '  /  /    ' then begin
                   STP_CONSULTANF.ParamByName('@ENTREGA_FIM').Value := FormatDateTime('YYYYMMDD', StrToDate(FFConsultaNf.edtEntregaFim.Text));
                end else STP_CONSULTANF.ParamByName('@ENTREGA_FIM').Value := 0;




            If FFConsultaNf.wwDBEdit1.text <> '' then
               STP_CONSULTANF.ParamByName('@LOTE').Value  :=  FFConsultaNf.wwDBEdit1.text
            else
               STP_CONSULTANF.ParamByName('@LOTE').Value  := 'VAZIO'   ;

             if FFConsultaNf.MaskEdit1.text <> '  /  /    ' then begin
               BATCH  := strtodate(FFConsultaNf.MaskEdit1.text );
               STP_CONSULTANF.ParamByName('@BATCH').Value :=  formatdatetime('YYYYMMDD',BATCH) ;
            end else STP_CONSULTANF.ParamByName('@BATCH').Value := 0.0 ;

             if FFConsultaNf.MaskEdit2.text <> '  /  /    ' then begin
               BATCHF  := strtodate(FFConsultaNf.MaskEdit2.text );
               STP_CONSULTANF.ParamByName('@BATCHF').Value :=  formatdatetime('YYYYMMDD',BATCHF) ;
            end else STP_CONSULTANF.ParamByName('@BATCHF').Value := 0.0 ;

            STP_CONSULTANF.ParamByName('@CH').Value :=  FMenu.SqlUsuariosCH.asstring ;

            IF FFConsultaNf.edtLoad.Text = '' then
                        STP_CONSULTANF.ParamByName('@LOAD_IN').AsString := 'VAZIO'
                else
                        STP_CONSULTANF.ParamByName('@LOAD_IN').AsString := FFConsultaNf.edtLoad.Text;



          // STP_CONSULTANF.Execproc;



          End
        except
           begin
             MessageDlg('Geração de Consulta de Nota Fiscal, com erro !',mtInformation,[mbOk], 0);
             abort  ;
           end;
        end;

        Q_CONSUL.close ;
        Q_CONSUL.open ;

 end ;

 IF  GRID1.Selectedfield = Q_CONSULMANI_ID  then begin
     PESQUISAMANI := '*' ;
     application.createform(TFManifesto , FManifesto);
     FManifesto.SHOWMODAL ;
     FManifesto.RELEASE   ;
     FManifesto.CLOSE     ;
 end ;


end;

procedure TFConsultaNF.SBT_VISUClick(Sender: TObject);
begin
     Application.CreateForm(TFRelConsNF,FRelConsNF);
     FRelConsNF.ConsNF.Preview;
     FRelConsNF.Close;
end;

procedure TFConsultaNF.SpeedButton1Click(Sender: TObject);
begin

   // TIPOEMAIL := 'NFI' ;
   // Application.CreateForm(TFEmail, FEmail);
  //  FEmail.ShowModal;
  //  FEmail.Release;

    
end;

procedure TFConsultaNF.RadioGroup1Click(Sender: TObject);
begin
{
       IF RadioGroup1.itemindex = 0 then begin
           Q_CONSUL.close;
           Q_CONSUL.Sql.Clear;
           Q_CONSUL.Sql.Add('Select * from CONSULTA_NF ');
           Q_CONSUL.Sql.Add('where CH = ' + FMenu.SqlUsuariosCH.asstring );
           Q_CONSUL.Sql.Add('order by OS_ID ');
           Q_CONSUL.open ;
       end ;

       IF RadioGroup1.itemindex = 1 then begin
           Q_CONSUL.close;
           Q_CONSUL.Sql.Clear;
           Q_CONSUL.Sql.Add('Select * from CONSULTA_NF');
           Q_CONSUL.Sql.Add('where CH = ' + FMenu.SqlUsuariosCH.asstring );
           Q_CONSUL.Sql.Add('order by MANI_ID ');
           Q_CONSUL.open ;
       end ;

       IF RadioGroup1.itemindex = 2 then begin
           Q_CONSUL.close;
           Q_CONSUL.Sql.Clear;
           Q_CONSUL.Sql.Add('Select * from CONSULTA_NF');
           Q_CONSUL.Sql.Add('where CH = ' + FMenu.SqlUsuariosCH.asstring );
           Q_CONSUL.Sql.Add('order by NFI_NUMERO ');
           Q_CONSUL.open ;
       end ;

       IF RadioGroup1.itemindex = 3 then begin
           Q_CONSUL.close;
           Q_CONSUL.Sql.Clear;
           Q_CONSUL.Sql.Add('Select * from CONSULTA_NF');
           Q_CONSUL.Sql.Add('where CH = ' + FMenu.SqlUsuariosCH.asstring );
           Q_CONSUL.Sql.Add('order by NFI_demi ');
           Q_CONSUL.open ;
       end ;
               }

       buscanotas;
end;

procedure TFConsultaNF.GRID1CalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
{     Q_AUX.close ;
     Q_AUX.Sql.Clear ;
     Q_AUX.Sql.Add( ' select NFI_STATUS from NF' ) ;
     Q_AUX.Sql.Add( ' where NFI_CODI = ' + Q_CONSULNFI_CODI.asstring ) ;
     Q_AUX.open ;   }


    //if (Q_AUX.fieldbyname('NFI_STATUS').asstring = 'C') then begin
    if (Q_CONSULSTATUS.AsString = 'C') then begin
           AFont.color := clwhite;
           if not highlight then   begin
              ABrush.color := $006F84FB;
              AFont.Color := clblack;
            End else begin
              ABrush.color := $006F84FB;
              Afont.color :=  clblack;
            end ;
     End ;

      //if (Q_AUX.fieldbyname('NFI_STATUS').asstring = '') then begin
        if (Q_CONSULSTATUS.AsString = 'I') then begin
           AFont.color := clwhite;
           if not highlight then   begin
              ABrush.color := clwhite;
              AFont.Color := clblack;
            End else begin
              ABrush.color :=clwhite;
              Afont.color :=  clblack;
            end ;
     End ;

      //if (Q_AUX.fieldbyname('NFI_STATUS').asstring = 'E') then begin
        if (Q_CONSULSTATUS.AsString = 'E') then begin
           AFont.color := clwhite;
           if not highlight then   begin
              ABrush.color := $007EE4AA;
              AFont.Color := clblack;
            End else begin
              ABrush.color := $007EE4AA;
              Afont.color :=  clblack;
            end ;
     End ;

end;
procedure TFConsultaNF.buscanotas;
begin
     Q_CONSUL.close;
     Q_CONSUL.Sql.Clear;
     Q_CONSUL.Sql.Add('Select * from CONSULTA_NF ');
     Q_CONSUL.Sql.Add('where CH = ' + FMenu.SqlUsuariosCH.asstring );

     //VERIFICAMOS O TIPO DE NOTA A SER CHAMADO
     IF RadioGroup2.ItemIndex = 1 then
        Q_CONSUL.SQL.Add('AND STATUS = ' + QuotedStr('E'))
     else IF RadioGroup2.ItemIndex = 2 then
        Q_CONSUL.SQL.Add('AND STATUS = ' + QuotedStr('I'))
     ELSE IF RadioGroup2.ItemIndex = 3 then
        Q_CONSUL.SQL.Add('AND STATUS = ' + QuotedStr('C')) ;


     //BUSCAMOS A ORDENAÇÃO
     if RadioGroup1.ItemIndex = 0 then
        Q_CONSUL.Sql.Add('order by OS_ID ')
     else if  RadioGroup1.ItemIndex = 1 then
        Q_CONSUL.Sql.Add('order by MANI_ID ')
     else IF RadioGroup1.ItemIndex = 2 then
        Q_CONSUL.Sql.Add('order by NFI_NUMERO ')
     else IF RadioGroup1.ItemIndex = 3 then
        Q_CONSUL.Sql.Add('order by NFI_DEMI ')   ;


     Q_CONSUL.open ;
end;

procedure TFConsultaNF.RadioGroup2Click(Sender: TObject);
begin
buscanotas;

end;



procedure TFConsultaNF.SpeedButton2Click(Sender: TObject);
var linha : Integer;
    Excel : Variant;
    i, Coluna : Integer;


begin

  dsExcel.DataSet := Q_CONSUL;

  
  linha := 1;

  excel := CreateOleObject('excel.application');
  Excel.WorkBooks.Add;

  //escrevemos os cabeçalhos
  for i := 0 to pred(dsExcel.DataSet.FieldCount) do begin
    if dsExcel.DataSet.Fields[i].Tag = 1 then
      Excel.Cells[Linha, i + 1] :=  dsExcel.DataSet.Fields[i].DisplayName;
  end;

  dsExcel.DataSet.First;
  while not dsExcel.DataSet.Eof do begin
      Inc(linha);
      for i := 0 to pred(dsExcel.DataSet.FieldCount) do begin

           if dsExcel.DataSet.Fields[i].Tag = 1 then begin
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
      end;

      dsExcel.DataSet.Next;
      Application.ProcessMessages;
  end;

  Excel.Range['A:Z'].EntireColumn.AutoFit;
  Excel.Application.Visible := true;


end;

end.




