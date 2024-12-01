unit URomaneioITENS;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, Wwdbigrd, Wwdbgrid, DBCtrls, StdCtrls, Buttons, ExtCtrls, Db,
  DBTables, Wwdatsrc, Wwquery, wwdblook, Mask, ComCtrls;

type
  TFRomaneioITENS = class(TForm)
    Panel2: TPanel;
    SpeedButton3: TSpeedButton;
    Label4: TLabel;
    Panel3: TPanel;
    Label8: TLabel;
    DBText7: TDBText;
    Label1: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    Panel5: TPanel;
    DBText2: TDBText;
    GRID: TwwDBGrid;
    Q_ESTQ: TwwQuery;
    DS_ESTQ: TwwDataSource;
    UPD_ESTQ: TUpdateSQL;
    Q_ESTQESTQ_ID: TAutoIncField;
    Q_ESTQAR_ID: TIntegerField;
    Q_ESTQPOS_ID: TIntegerField;
    Q_ESTQOS_ID_ORIG: TIntegerField;
    Q_ESTQPRO_ID: TIntegerField;
    Q_ESTQESTQ_PESO: TFloatField;
    Q_ESTQOS_ID_DEST: TIntegerField;
    Q_ESTQESTQ_DT_ENTRADA: TDateTimeField;
    Q_ESTQESTQ_DT_SAIDA: TDateTimeField;
    Q_ESTQESTQ_DT_ULMOV: TDateTimeField;
    Q_ESTQROM_ID_ENT: TIntegerField;
    Q_ESTQROM_ID_SAIDA: TIntegerField;
    Q_ESTQROM_DTBATCH: TDateTimeField;
    Q_ESTQESTQ_LOTE: TStringField;
    Q_PROD: TwwQuery;
    Q_PRODPRO_COD: TStringField;
    Q_PRODPRO_DESC: TStringField;
    Q_ESTQPROdesc: TStringField;
    Q_PRODPRO_ID: TAutoIncField;
    Q_ESTQPROcod: TStringField;
    ComboPROD: TwwDBLookupCombo;
    Q_UNIDVEND: TwwQuery;
    Q_UNIDVENDUVEN_ID: TAutoIncField;
    Q_UNIDVENDUVEN_NOME: TStringField;
    Q_ESTQUVEN_ID: TIntegerField;
    Q_ESTQUVENdesc: TStringField;
    Q_ESTQESTQ_TAG: TIntegerField;
    Q_PRODCLIN_ID: TIntegerField;
    Q_AREA: TwwQuery;
    DS_PROD: TwwDataSource;
    ComboAREA: TwwDBLookupCombo;
    Q_AREAAR_ID: TAutoIncField;
    Q_AREAAR_NOME: TStringField;
    Q_ESTQAreaDESC: TStringField;
    Q_POS: TwwQuery;
    Q_ESTQPOSdesc: TStringField;
    ComboPOSICAO: TwwDBLookupCombo;
    DBNavigator1: TDBNavigator;
    SpeedButton1: TSpeedButton;
    Q_ESTQROM_DTVENCTO: TDateTimeField;
    Q_PROD2: TwwQuery;
    Q_PROD2PRO_COD: TStringField;
    Q_PROD2PRO_VALIDDIAS: TIntegerField;
    GridBATCH: TwwDBGrid;
    BitBtn6: TBitBtn;
    Q_PRODUTO: TwwQuery;
    DS_PRODUTO: TwwDataSource;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Q_IRaux: TwwQuery;
    Panel1: TPanel;
    MonthCalendar1: TMonthCalendar;
    Label3: TLabel;
    Edit1: TEdit;
    Label5: TLabel;
    UPD_PRODUTO: TUpdateSQL;
    BitBtn1: TBitBtn;
    RadioGroup1: TRadioGroup;
    Q_PRODUTOPRO_ID: TAutoIncField;
    Q_PRODUTOMARCADOR: TStringField;
    Q_PRODUTOPRO_DESC: TStringField;
    Q_PRODUTOPRO_COD: TStringField;
    Q_PRODUTOaux: TwwQuery;
    Q_PRODUTOPRO_VALIDDIAS: TIntegerField;
    Q_POSPOS_COD: TStringField;
    Q_POSAR_ID: TIntegerField;
    Q_POSPOS_UTILIZADO: TStringField;
    Q_POSPOS_ID: TAutoIncField;
    Q_POS2: TwwQuery;
    Q_POS2POS_COD: TStringField;
    Q_POS2AR_ID: TIntegerField;
    Q_POS2POS_UTILIZADO: TStringField;
    Q_POS2POS_ID: TAutoIncField;
    Q_QTDEaux: TwwQuery;
    DS_AREA: TwwDataSource;
    Q_AREAAR_EMPILHA_MAX: TIntegerField;
    Q_AREA_2: TwwQuery;
    Q_AREA_2AR_ID: TAutoIncField;
    Q_AREA_2AR_EMPILHA_MAX: TIntegerField;
    Q_PRODUVEN_ID: TIntegerField;
    Q_ESTQPAR_ID: TIntegerField;
    Q_ESTQMANI_ID: TIntegerField;
    Q_ESTQAR_ID_ANTERIOR: TIntegerField;
    Q_ESTQPOS_ID_ANTERIOR: TIntegerField;
    Q_ESTQGEROU_OPER_ROMSAIDA: TStringField;
    Q_ESTQESTQ_QTDE: TFloatField;
    Q_ESTQESTQ_QTDE_RETIRA: TFloatField;
    BitBtn5: TBitBtn;
    Panel4: TPanel;
    Label18: TLabel;
    Label38: TLabel;
    Label40: TLabel;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText3: TDBText;
    Label36: TLabel;
    BitBtn7: TBitBtn;
    wwDBLookupCombo1: TwwDBLookupCombo;
    wwDBLookupCombo2: TwwDBLookupCombo;
    Label6: TLabel;
    DBText4: TDBText;
    Label7: TLabel;
    DBText8: TDBText;
    Label9: TLabel;
    Label10: TLabel;
    BitBtn8: TBitBtn;
    Q_AREA_2AR_NOME: TStringField;
    Q_POS3: TwwQuery;
    Q_POS3POS_COD: TStringField;
    Q_POS3AR_ID: TIntegerField;
    Q_POS3POS_UTILIZADO: TStringField;
    Q_POS3POS_ID: TAutoIncField;
    DS_AREA_2: TwwDataSource;
    Q_AREAux: TwwQuery;
    Q_AREAuxAR_ID: TAutoIncField;
    Q_AREAuxAR_NOME: TStringField;
    Label11: TLabel;
    DBText9: TDBText;
    Button1: TButton;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    procedure SpeedButton3Click(Sender: TObject);
    procedure Q_ESTQNewRecord(DataSet: TDataSet);
    procedure Q_ESTQAfterPost(DataSet: TDataSet);
    procedure Q_ESTQAfterDelete(DataSet: TDataSet);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormPaint(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Q_ESTQBeforePost(DataSet: TDataSet);
    procedure GRIDColExit(Sender: TObject);
    procedure Q_PRODUTOAfterPost(DataSet: TDataSet);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DS_ESTQDataChange(Sender: TObject; Field: TField);
    procedure ComboAREAExit(Sender: TObject);
    procedure ComboPOSICAOEnter(Sender: TObject);
    procedure Q_ESTQBeforeEdit(DataSet: TDataSet);
    procedure Q_ESTQBeforeDelete(DataSet: TDataSet);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure wwDBLookupCombo1Exit(Sender: TObject);
    procedure wwDBLookupCombo1Enter(Sender: TObject);
    procedure wwDBLookupCombo2Enter(Sender: TObject);
    procedure wwDBLookupCombo2Exit(Sender: TObject);
    procedure ComboAREADblClick(Sender: TObject);
    procedure ComboPOSICAODblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure AlteraArea;
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRomaneioITENS: TFRomaneioITENS;
  AREA    : String ;
  POSICAO : String ;
  AREANEW    : String ;
  Selecionado   : tfield ;
implementation
uses USenha,UOS,UAbTabelas,URomaneio,URelROMENT, URELUF, URelManifesto;
{$R *.DFM}

procedure TFRomaneioITENS.SpeedButton3Click(Sender: TObject);
begin

   IF (Q_ESTQ.State = dsinsert) or (Q_ESTQ.State = dsedit) then //begin
       Q_ESTQ.post;

       Q_IRAUX.close;
       Q_IRAUX.Sql.Clear;
       Q_IRAUX.Sql.Add('Select SUM(ESTQ_QTDE) as xvalor from  ESTOQUE ') ;
       Q_IRAUX.Sql.Add(' where ROM_ID_ENT = ' + FRomaneio.Q_ROMROM_ID.asstring ) ;
       Q_IRAUX.open ;

       If (Q_IRAUX.fieldbyname('XVALOR').asinteger > 0) then begin
           Q_QTDEaux.close;
           Q_QTDEaux.Sql.Clear;
           Q_QTDEaux.Sql.Add(' Select SUM(IROM_QTDE) as VALORORIGINAL from  ROMANEIO_ITENS ') ;
           Q_QTDEaux.Sql.Add(' where ROM_ID = ' + FRomaneio.Q_ROMROM_ID.asstring ) ;
           Q_QTDEaux.open ;

           If (Q_IRAUX.fieldbyname('XVALOR').asinteger <>
               Q_QTDEaux.fieldbyname('VALORORIGINAL').asinteger) and
               ((Q_ESTQ.State = dsinsert) or (Q_ESTQ.State = dsedit))   then begin
               MessageDlg('Quantidade de UV está diferente do Romaneio ! ',mtWarning,[mbok],0);
               GRID.SetFocus;
               GRID.SelectedField := Q_ESTQESTQ_QTDE;
               Abort;
           end ;

           Q_QTDEaux.close;
           Q_QTDEaux.Sql.Clear;
           Q_QTDEaux.Sql.Add(' Select count(*) as BATCH from  ESTOQUE ') ;
           Q_QTDEaux.Sql.Add(' where ROM_ID_ENT = ' + FRomaneio.Q_ROMROM_ID.asstring ) ;
           Q_QTDEaux.Sql.Add(' and ROM_DTBATCH  is null ' ) ;
           Q_QTDEaux.open ;
           If (Q_QTDEaux.fieldbyname('BATCH').asinteger = 0)  then begin
                 Q_QTDEaux.close;
                 Q_QTDEaux.Sql.Clear;
                 Q_QTDEaux.Sql.Add(' Select count(*) as VCTO from  ESTOQUE ') ;
                 Q_QTDEaux.Sql.Add(' where ROM_ID_ENT = ' + FRomaneio.Q_ROMROM_ID.asstring ) ;
                 Q_QTDEaux.Sql.Add(' and ROM_DTVENCTO is null ' ) ;
                 Q_QTDEaux.open ;
                 If (Q_QTDEaux.fieldbyname('VCTO').asinteger = 0)  then begin
                     {Q_QTDEaux.close;
                     Q_QTDEaux.Sql.Clear;
                     Q_QTDEaux.Sql.Add(' Select count(*) as LOTE from  ESTOQUE ') ;
                     Q_QTDEaux.Sql.Add(' where ROM_ID_ENT = ' + FRomaneio.Q_ROMROM_ID.asstring ) ;
                     Q_QTDEaux.Sql.Add(' and (ESTQ_LOTE  is null or ESTQ_LOTE =' + '''' + '' + '''' + ')' ) ;
                     Q_QTDEaux.open ;
                     If (Q_QTDEaux.fieldbyname('LOTE').asinteger = 0)  then begin  }
                         Q_QTDEaux.close;
                         Q_QTDEaux.Sql.Clear;
                         Q_QTDEaux.Sql.Add(' Select count(*) as TAG from  ESTOQUE ') ;
                         Q_QTDEaux.Sql.Add(' where ROM_ID_ENT = ' + FRomaneio.Q_ROMROM_ID.asstring ) ;
                         Q_QTDEaux.Sql.Add(' and (ESTQ_TAG  is null or ESTQ_TAG =' + '''' + '' + '''' + ')' ) ;
                         Q_QTDEaux.open ;
                         If (Q_QTDEaux.fieldbyname('TAG').asinteger = 0) and
                             (FRomaneio.Q_ROMROM_CONFIRMA.asstring <> 'S') 
                             then
                             FROmaneio.BITBTN2.Enabled := true ;
                     ///end ;
                 end ;
           end ;
       end ;
   //end ;
   close ;
end;

procedure TFRomaneioITENS.Q_ESTQNewRecord(DataSet: TDataSet);
begin
  Q_ESTQROM_ID_ENT.asstring := FROmaneio.Q_ROMROM_ID.asstring ;
  Q_ESTQOS_ID_ORIG.asstring := FROmaneio.Q_ROMOS_ID.asstring ;
  Q_ESTQUVEN_ID.asstring := Q_PRODUVEN_ID.asstring ;
  Q_ESTQPAR_ID.asstring := FOS.CDSCTTPAR_ID.asstring ;


end;

procedure TFRomaneioITENS.Q_ESTQAfterPost(DataSet: TDataSet);
var
///StrPRO_ID : string ;
///StrDT : string ;
STRESTQ : string ;
//Selecionado   : tfield ;
begin
   //Selecionado := Grid.Selectedfield ;
   ////StrPRO_ID := Q_ESTQPRO_ID.asstring   ;
   ////StrDT    := Q_ESTQROM_DTBATCH.asstring ;
   STRESTQ := Q_ESTQESTQ_ID.asstring ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_ESTQ])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_ESTQ.close ;
   Q_ESTQ.Open ;

   if strEstq = '' then begin
     Q_QTDEAUX.close ;
     Q_QTDEAUX.Sql.Clear ;
     Q_QTDEAUX.Sql.Add( ' select max(Estq_id) as Numero from estoque ' ) ;
     Q_QTDEAUX.open ;
     StrEstq := Q_QTDEAUX.fieldbyname('Numero').asstring ;
   end  ;

   ///If (StrDT <> '') then
   ///Q_ESTQ.locate('ESTQ_ID,PR0_ID;ROM_DTBATCH',VarArrayOf([StrPRO_ID,StrDT]), [])
    Q_ESTQ.locate('ESTQ_ID',STRESTQ,[])    ;
   /// else
    ///  Q_ESTQ.locate('PRO_ID',StrPRO_ID,[]);

   {Q_QTDEaux.close;
   Q_QTDEaux.Sql.Clear;
   Q_QTDEaux.Sql.Add(' Select COUNT(*) as POSICAO_OCUP from  ESTOQUE ') ;
   Q_QTDEaux.Sql.Add(' where   AR_ID  = ' +  AREANEW ) ;
   Q_QTDEaux.Sql.Add('   and  POS_ID  = ' +  Q_POSPOS_ID.asstring ) ;
   Q_QTDEaux.open ; }

   //Q_AREA_2.open ;
   //Q_AREA_2.locate('AR_ID',AREANEW,[]);

   {If (Q_QTDEaux.fieldbyname('POSICAO_OCUP').asinteger > Q_AREA_2AR_EMPILHA_MAX.asinteger) or
      (Q_QTDEaux.fieldbyname('POSICAO_OCUP').asinteger = Q_AREA_2AR_EMPILHA_MAX.asinteger) and
      (Q_QTDEaux.fieldbyname('POSICAO_OCUP').asinteger <> 0)  then begin }
       ///****////
       //Q_QTDEaux.close;
       //Q_QTDEaux.Sql.Clear;
       //Q_QTDEaux.Sql.Add(' Update AREA_POSICOES set POS_UTILIZADO = '+ ''''+ 'S' + '''') ;
       //Q_QTDEaux.Sql.Add(' Where AR_ID  =   ' + Q_AREA_2AR_ID.asstring) ;
       //Q_QTDEaux.Sql.Add(' and  POS_ID  =   ' + Q_POSPOS_ID.asstring ) ;
       //Q_QTDEaux.ExecSql;
   ///end ;

   {IF (AREA <> '') and (POSICAO <> '') then begin
       Q_QTDEaux.close;
       Q_QTDEaux.Sql.Clear;
       Q_QTDEaux.Sql.Add(' Select COUNT(*) as POSICAO_OCUP from  ESTOQUE ') ;
       Q_QTDEaux.Sql.Add(' where   AR_ID  = ' + AREA    ) ;
       Q_QTDEaux.Sql.Add('   and  POS_ID  = ' + POSICAO ) ;
       Q_QTDEaux.open ; }

       //Q_AREA_2.locate('AR_ID',AREA,[]);

       {If (Q_QTDEaux.fieldbyname('POSICAO_OCUP').asinteger <
           Q_AREA_2AR_EMPILHA_MAX.asinteger)    or
          (Q_QTDEaux.fieldbyname('POSICAO_OCUP').asinteger = Q_AREA_2AR_EMPILHA_MAX.asinteger) and
          (Q_AREA_2AR_EMPILHA_MAX.asinteger = 0)
           then begin                 }
           ///****////
           //Q_QTDEaux.close;
           //Q_QTDEaux.Sql.Clear;
           //Q_QTDEaux.Sql.Add(' Update AREA_POSICOES set POS_UTILIZADO = '+ ''''+ 'N' + '''') ;
           //Q_QTDEaux.Sql.Add(' Where AR_ID  =   ' + AREA ) ;
           //Q_QTDEaux.Sql.Add(' and  POS_ID  =   ' + POSICAO ) ;
           //Q_QTDEaux.ExecSql;
       //end ;
       //Q_AREA_2.close ;
   ///end ;
    Grid.SETFOCUS ;
    Grid.Selectedfield := Selecionado ;
end;

procedure TFRomaneioITENS.Q_ESTQAfterDelete(DataSet: TDataSet);
var
///StrPRO_ID : string ;
///StrDT : string ;
STRESTQ : string ;
begin
   //StrPRO_ID := Q_ESTQPRO_ID.asstring   ;
   //StrDT    := Q_ESTQROM_DTBATCH.asstring   ;
   STRESTQ := Q_ESTQESTQ_ID.asstring ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_ESTQ])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_ESTQ.close ;
   Q_ESTQ.Open ;

   If (STRESTQ <> '') then Q_ESTQ.locate('ESTQ_ID',STRESTQ,[])    ;

//
//   If (StrDT <> '') then                                              -
//     Q_ESTQ.locate('PRO_ID;ROM_DTBATCH',VarArrayOf([StrPRO_ID,StrDT]), [])
//    else
//      Q_ESTQ.locate('PRO_ID',StrPRO_ID,[]);




end;

procedure TFRomaneioITENS.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
     begin
       key := #0;
       perform(WM_nextdlgctl,0,0);
   end;
end;

procedure TFRomaneioITENS.FormPaint(Sender: TObject);
begin
   If Self.Tag = 0 Then
        Begin
             Self.Tag := 1;
             Application.CreateForm(TFAbTabelas, FAbTabelas);
             FAbTabelas.Gauge1.MaxValue := 5;
             FAbTabelas.Show;
             FAbTabelas.RePaint;
             Self.Repaint;
             Try
                Begin
                     FAbTabelas.Gauge1.Progress            := 1;
                     FRomaneioITENS.Q_ESTQ.Open;
                     FAbTabelas.Gauge1.Progress            := 2;
                     FRomaneioITENS.Q_PROD.Open;
                     FAbTabelas.Gauge1.Progress            := 3;
                     FRomaneioITENS.Q_UNIDVEND.Open;
                     FAbTabelas.Gauge1.Progress            := 4;
                     FRomaneioITENS.Q_AREA.Open;
                     FAbTabelas.Gauge1.Progress            := 5;
                     FRomaneioITENS.Q_POS.Open;

                     
                    

                End
                Except
                On E:EdbEngineError do
                   Begin
                        MessageDlg('Erro ao Abrir Tabelas, '+#13+#10+
                        E.Message,MtError,[MbOk],0);
                        Self.Tag := 2;
                   End;
                End;
             FAbTabelas.Close;
             FAbTabelas.Release;
             If Self.Tag = 2 Then Self.Close; 


    end  ;
end;

procedure TFRomaneioITENS.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Q_ESTQ.close ;
   Q_PROD.close ;
   Q_UNIDVEND.close ;
   Q_AREA.close ;
   Q_POS.close ;
   Q_POS2.close; 
   ACTION:=cafree;
end;

procedure TFRomaneioITENS.Q_ESTQBeforePost(DataSet: TDataSet);
begin
  {If (Q_ESTQROM_DTBATCH.asstring = '')  then begin
     MessageDlg('Batch é Campo de preenchimento obrigatório, não pode estar em branco ! ',mtWarning,[mbok],0);
     GRID.SetFocus;
     GRID.SelectedField := Q_ESTQROM_DTBATCH;
     Q_ESTQ.cancel;
     Abort;
  end ; }
  AREANEW := Q_ESTQAR_ID.asstring ;

  If (Q_ESTQESTQ_TAG.asstring <> '') then begin
      Q_QTDEaux.close;
      Q_QTDEaux.Sql.Clear;
      Q_QTDEaux.Sql.Add(' select Count(*) as TAG,ESTQ_iD from ESTOQUE  ') ;
      Q_QTDEaux.Sql.Add(' where ESTQ_TAG = ' + Q_ESTQESTQ_TAG.asstring );
      Q_QTDEaux.Sql.Add(' GROUP BY ESTQ_iD ' ) ;
      Q_QTDEaux.open ;

      If (Q_QTDEaux.fieldbyname('TAG').asinteger > 0) AND
         ((Q_QTDEaux.fieldbyname('ESTQ_iD').asstring) <> (Q_ESTQESTQ_ID.asstring))
          then begin
         MessageDlg('Pallet TAG já existente em seu Estoque ! ',mtWarning,[mbok],0);
         GRID.SetFocus;
         GRID.SelectedField := Q_ESTQESTQ_TAG;
         Abort;
      end ;
  end ;

end;

procedure TFRomaneioITENS.GRIDColExit(Sender: TObject);
begin
  if (Q_ESTQ.State = dsEdit) or (Q_ESTQ.State = dsinsert) then
       begin

         If (GRID.SelectedField = Q_ESTQROM_DTBATCH) Then begin
             Q_PROD2.open ;
             Q_ESTQROM_DTVENCTO.asdatetime :=
             (Q_ESTQROM_DTBATCH.asdatetime + Q_PROD2PRO_VALIDDIAS.asinteger) ;
             Q_PROD2.close ;
         end;
         
   End;

end;

procedure TFRomaneioITENS.Q_PRODUTOAfterPost(DataSet: TDataSet);
var
StrPRO_ID : string ;
begin
   StrPRO_ID := Q_PRODUTOPRO_ID.asstring   ;

   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_PRODUTO])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_PRODUTO.close ;
   Q_PRODUTO.Open ;
   Q_PRODUTO.locate('PRO_ID',StrPRO_ID,[]);
end;

procedure TFRomaneioITENS.BitBtn6Click(Sender: TObject);
begin
 { Q_ESTQ2.close;
  Q_ESTQ2.Sql.Clear;
  Q_ESTQ2.Sql.Add('Select A.ESTQ_ID,A.PRO_ID,');
  Q_ESTQ2.Sql.Add('A.MARCADOR,');
  Q_ESTQ2.Sql.Add('B.PRO_DESC,B.PRO_COD');
  Q_ESTQ2.Sql.Add(' from ESTOQUE A,PRODUTO B where ROM_ID_ENT = ' + FRomaneio.Q_ROMROM_ID.asstring);
  Q_ESTQ2.Sql.Add(' and A.PRO_ID = B.PRO_ID order by B.PRO_COD');
  Q_ESTQ2.open ; }
  GridBATCH.visible := true ;
  Bitbtn6.visible := false;
  Bitbtn3.visible := true;
  Bitbtn4.visible := true;
  Bitbtn2.visible := true;
  Bitbtn1.visible := true;
  PAnel1.visible := true  ;
  Q_PRODUTO.open ;

end ;

procedure TFRomaneioITENS.BitBtn3Click(Sender: TObject);
begin

      Q_PRODUTO.first ;
      while not Q_PRODUTO.eof do begin
         Q_PRODUTOaux.close;
         Q_PRODUTOaux.sql.Clear;
         Q_PRODUTOaux.sql.Add(' Update PRODUTO set MARCADOR = ' + '''' + '*' + '''' );
         Q_PRODUTOaux.Sql.Add(' where PRO_ID = ' + Q_PRODUTOPRO_ID.asstring) ;
         Q_PRODUTOaux.ExecSql;

       Q_PRODUTO.next ;
      end ;

     Q_PRODUTO.close;
     Q_PRODUTO.open ;
end;

procedure TFRomaneioITENS.BitBtn4Click(Sender: TObject);
begin
     Q_PRODUTO.first ;
      while not Q_PRODUTO.eof do begin
         Q_PRODUTOaux.close;
         Q_PRODUTOaux.sql.Clear;
         Q_PRODUTOaux.sql.Add(' Update PRODUTO set MARCADOR = ' + '''' + '' + '''' );
         Q_PRODUTOaux.Sql.Add(' where PRO_ID = ' + Q_PRODUTOPRO_ID.asstring) ;
         Q_PRODUTOaux.ExecSql;

       Q_PRODUTO.next ;
      end ;

     Q_PRODUTO.close;
     Q_PRODUTO.open ;
end;

procedure TFRomaneioITENS.BitBtn2Click(Sender: TObject);
var
  DTVENC : tdatetime ;
  DT : tdatetime ;
begin
  DT := MonthCalendar1.date ;
  {IF (DT > NOW) then begin
      MessageDlg('Data Inválida ! ',mtWarning,[mbok],0);
      MonthCalendar1.SetFocus;
      Abort;
  end ;    }


  IF (Q_PRODUTO.state = dsedit) then Q_PRODUTO.post ;

  If (RadioGroup1.itemindex = 0) then begin
      Q_PRODUTO.first ;
      while not Q_PRODUTO.eof do begin
         If (Q_PRODUTOMarcador.asstring = '*') then begin

            DT := MonthCalendar1.date ;
            DTVENC := (DT + Q_PRODUTOPRO_VALIDDIAS.asinteger) ;

            Q_IRaux.close;
            Q_IRaux.sql.Clear;
            Q_IRaux.sql.Add(' Update ESTOQUE set ROM_DTBATCH = ' + ''''+ FormatDateTime('MM/DD/YYYY', MonthCalendar1.date) + '''' + ',') ;
            Q_IRaux.Sql.Add(' ROM_DTVENCTO = '+ ''''+ FormatDateTime('MM/DD/YYYY',DTVENC ) + '''' ) ;
            Q_IRaux.Sql.Add(' where PRO_ID = ' + Q_PRODUTOPRO_ID.asstring ) ;
            Q_IRaux.Sql.Add(' and ROM_ID_ENT = ' + Q_ESTQROM_ID_ENT.asstring);
            Q_IRaux.ExecSql;
         end ;
         Q_PRODUTO.next ;
      end ;
  end ;

  If (RadioGroup1.itemindex = 1) then begin
      If (Edit1.text <> '') then begin
          Q_PRODUTO.first ;
          while not Q_PRODUTO.eof do begin
             If (Q_PRODUTOMarcador.asstring = '*') then begin

                DT := MonthCalendar1.date ;
                DTVENC := (DT + Q_PRODUTOPRO_VALIDDIAS.asinteger) ;

                Q_IRaux.close;
                Q_IRaux.sql.Clear;
                Q_IRaux.sql.Add(' Update ESTOQUE set ESTQ_LOTE = ' + '''' + Edit1.text + '''');
                Q_IRaux.Sql.Add(' where PRO_ID = ' + Q_PRODUTOPRO_ID.asstring ) ;
                Q_IRaux.Sql.Add(' and ROM_ID_ENT = ' + Q_ESTQROM_ID_ENT.asstring);
                Q_IRaux.ExecSql;
             end ;
             Q_PRODUTO.next ;
          end ;
      end else begin
        MessageDlg('Lote está em Branco!',mtWarning,[mbok],0);
        EDIT1.setfocus ;
        abort ;
      end ;
  end ;

  If (RadioGroup1.itemindex = 2) then begin
      If (Edit1.text <> '') then begin
          Q_PRODUTO.first ;
          while not Q_PRODUTO.eof do begin
             If (Q_PRODUTOMarcador.asstring = '*') then begin

                DT := MonthCalendar1.date ;
                DTVENC := (DT + Q_PRODUTOPRO_VALIDDIAS.asinteger) ;


                Q_IRaux.close;
                Q_IRaux.sql.Clear;
                Q_IRaux.sql.Add(' Update ESTOQUE set ROM_DTBATCH = ' + ''''+ FormatDateTime('MM/DD/YYYY', MonthCalendar1.date) + '''' + ',') ;
                Q_IRaux.Sql.Add(' ROM_DTVENCTO = '+ ''''+ FormatDateTime('MM/DD/YYYY',DTVENC ) + '''' + ',') ;
                Q_IRaux.Sql.Add(' ESTQ_LOTE = ' + '''' + Edit1.text + '''');
                Q_IRaux.Sql.Add(' where PRO_ID = ' + Q_PRODUTOPRO_ID.asstring ) ;
                Q_IRaux.Sql.Add(' and ROM_ID_ENT = ' + Q_ESTQROM_ID_ENT.asstring);
                Q_IRaux.ExecSql;
             end ;
             Q_PRODUTO.next ;
          end ;
      end else begin
        MessageDlg('Lote está em Branco!',mtWarning,[mbok],0);
        EDIT1.setfocus ;
        abort ;
      end ;
  end ;


  GridBATCH.visible := false ;
  Bitbtn6.visible := true;
  PAnel1.visible := false  ;
  Bitbtn3.visible := false;
  Bitbtn4.visible := false;
  Bitbtn2.visible := false;
  Bitbtn1.visible := false;
  Q_PRODUTO.close;

  Q_ESTQ.CLOSE ;
  Q_ESTQ.open ;


end;

procedure TFRomaneioITENS.Edit1Enter(Sender: TObject);
begin
 (Sender as Tedit).Color := ClAqua;
end;

procedure TFRomaneioITENS.Edit1Exit(Sender: TObject);
begin
  (Sender as Tedit).Color := Clwindow;
end;

procedure TFRomaneioITENS.BitBtn1Click(Sender: TObject);
begin
  GridBATCH.visible := false ;
  Bitbtn6.visible := true;
  PAnel1.visible := false  ;
  Bitbtn3.visible := false;
  Bitbtn4.visible := false;
  Bitbtn2.visible := false;
  Bitbtn1.visible := false;
  Q_PRODUTO.close;
end;

procedure TFRomaneioITENS.SpeedButton1Click(Sender: TObject);
begin
   Application.CreateForm(TFRelROMENT,FRelROMENT);
   FRelROMENT.ROM.Preview;
   FRelROMENT.Close;

end;

procedure TFRomaneioITENS.FormCreate(Sender: TObject);
VAR IK : Integer;
begin
   for IK := 0 TO PRED(ComponentCount) do begin
       if Components[IK] is TwwDBGrid then begin
           (Components[IK] as TwwDBGrid).TitleColor := clBtnFace;
           (Components[IK] as TwwDBGrid).TitleFont.Color := clBlack;
       end;
   end;
  MonthCalendar1.date := now ;
  Q_POS2.open ;
  Q_AREAux.open ;

  If (FRomaneio.Q_ROMROM_CONFIRMA.asstring = 'S') then BEGIN
      FRomaneioITENS.GRID.readonly := true  ;
     // DBNavigator1.VisibleButtons := [nbFirst,nbPrior,nbNext,nbLast];
      BitBtn6.enabled := false;
      BitBtn5.enabled := false;
  END else BEGIN
     FRomaneioITENS.GRID.readonly := false ;
     //DBNavigator1.VisibleButtons  := [nbFirst,nbPrior,nbNext,nbLast,nbinsert,nbdelete,nbpost,nbcancel];
     BitBtn6.enabled := true;
     BitBtn5.enabled := true;
  END ;
end;

procedure TFRomaneioITENS.DS_ESTQDataChange(Sender: TObject;
  Field: TField);
begin
   IF (Q_ESTQ.state = dsedit) or (Q_ESTQ.state = dsBROWSE) and
       (Q_ESTQAR_ID.asstring <> '')  then begin
       Q_QTDEaux.close;
       Q_QTDEaux.Sql.Clear;
       Q_QTDEaux.Sql.Add(' Select COUNT(*) as POSICAO_VAGA from  AREA_POSICOES ') ;
       Q_QTDEaux.Sql.Add(' where AR_ID = ' + Q_ESTQAR_ID.asstring ) ;
       Q_QTDEaux.Sql.Add(' and POS_UTILIZADO = ' + '''' + 'N' + '''');
       Q_QTDEaux.open ;

       {If (Q_QTDEaux.fieldbyname('POSICAO_VAGA').asinteger > 0 ) then  begin
          ComboPOSICAO.enabled := true   ;
       end else
          ComboPOSICAO.enabled := false;  }
   end ;


end;

procedure TFRomaneioITENS.ComboAREAExit(Sender: TObject);
begin
   {Q_POS.close;
   Q_POS.Sql.Clear;
   Q_POS.Sql.Add(' select AREA_POSICOES.POS_COD,AREA_POSICOES.AR_ID,POS_UTILIZADO,POS_ID ') ;
   Q_POS.Sql.Add(' from AREA_POSICOES , AREA ' ) ;
   Q_POS.Sql.Add(' where ');
   Q_POS.Sql.Add(' AREA_POSICOES.AR_ID = AREA.AR_ID ' ) ;
   Q_POS.Sql.Add(' and AREA.AR_ID = ' + Q_ESTQAR_ID.asstring );
   Q_POS.Sql.Add(' and POS_UTILIZADO = ' + '''' + 'N' + '''');
   Q_POS.Sql.Add(' and AREA.PAR_ID = ' + FOS.CDSCTTPAR_ID.asstring) ;
   Q_POS.Sql.Add(' order by POS_COD' );
   Q_POS.open  ; }

end;

procedure TFRomaneioITENS.ComboPOSICAOEnter(Sender: TObject);
begin   

  { Q_POS.close;
   Q_POS.Sql.Clear;
   Q_POS.Sql.Add(' select AREA_POSICOES.POS_COD,AREA_POSICOES.AR_ID,POS_UTILIZADO,POS_ID ') ;
   Q_POS.Sql.Add(' from AREA_POSICOES , AREA ' ) ;
   Q_POS.Sql.Add(' where ');
   Q_POS.Sql.Add(' AREA_POSICOES.AR_ID = AREA.AR_ID ' ) ;
   Q_POS.Sql.Add(' and AREA.AR_ID = ' + Q_ESTQAR_ID.asstring );
   Q_POS.Sql.Add(' and POS_UTILIZADO = ' + '''' + 'N' + '''');
   Q_POS.Sql.Add(' and AREA.PAR_ID = ' + FOS.CDSCTTPAR_ID.asstring) ;
   Q_POS.Sql.Add(' order by POS_COD' );
   Q_POS.open  ;   }

end;

procedure TFRomaneioITENS.Q_ESTQBeforeEdit(DataSet: TDataSet);
begin
  AREA := Q_ESTQAR_ID.asstring ;
  POSICAO := Q_ESTQPOS_ID.asstring ;
end;

procedure TFRomaneioITENS.Q_ESTQBeforeDelete(DataSet: TDataSet);
begin
   {Q_QTDEaux.close;
   Q_QTDEaux.Sql.Clear;
   Q_QTDEaux.Sql.Add(' Select COUNT(*) as POSICAO_OCUP from  ESTOQUE ') ;
   Q_QTDEaux.Sql.Add(' where   AR_ID  = ' +  Q_ESTQAR_ID.asstring ) ;
   Q_QTDEaux.Sql.Add('   and  POS_ID  = ' +  Q_ESTQPOS_ID.asstring ) ;
   Q_QTDEaux.open ;

   Q_AREA_2.open ;
   Q_AREA_2.locate('AR_ID',Q_ESTQAR_ID.asstring,[]);

   If  (Q_AREA_2AR_EMPILHA_MAX.asinteger = 0) then begin
       Q_QTDEaux.close;
       Q_QTDEaux.Sql.Clear;
       Q_QTDEaux.Sql.Add(' Update AREA_POSICOES set POS_UTILIZADO = '+ ''''+ 'N' + '''') ;
       Q_QTDEaux.Sql.Add(' Where AR_ID  =   ' + Q_ESTQAR_ID.asstring ) ;
       Q_QTDEaux.Sql.Add(' and  POS_ID  =   ' + Q_ESTQPOS_ID.asstring ) ;
       Q_QTDEaux.ExecSql;
   end  ;

   If  (Q_AREA_2AR_EMPILHA_MAX.asinteger > 0) then begin
       If  ((Q_QTDEaux.fieldbyname('POSICAO_OCUP').asinteger - 1) <
             Q_AREA_2AR_EMPILHA_MAX.asinteger )then begin
           Q_QTDEaux.close;
           Q_QTDEaux.Sql.Clear;
           Q_QTDEaux.Sql.Add(' Update AREA_POSICOES set POS_UTILIZADO = '+ ''''+ 'N' + '''') ;
           Q_QTDEaux.Sql.Add(' Where AR_ID  =   ' + Q_ESTQAR_ID.asstring ) ;
           Q_QTDEaux.Sql.Add(' and  POS_ID  =   ' + Q_ESTQPOS_ID.asstring ) ;
           Q_QTDEaux.ExecSql;
       end ;
   end  ;

   Q_AREA_2.close ;    }

end;

procedure TFRomaneioITENS.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin

  if button in [nbInsert] then begin
      GRID.SetFocus;
      GRID.SelectedField := Q_ESTQPRO_ID ;
   end ;

end;

procedure TFRomaneioITENS.BitBtn5Click(Sender: TObject);
begin
  Panel4.visible := true ;
  Bitbtn5.visible := false ;
  Bitbtn6.visible := false ;
  Q_AREA_2.open ;
  Q_POS3.open ;
  Selecionado := Grid.Selectedfield ;
end;

procedure TFRomaneioITENS.BitBtn7Click(Sender: TObject);
begin
  Panel4.visible := false ;
  Bitbtn5.visible := true ;
  Bitbtn6.visible := true ;
  Q_AREA_2.close ;
  Q_POS3.close ;
  Grid.SETFOCUS ;
  Grid.Selectedfield := Selecionado ;
end;

procedure TFRomaneioITENS.BitBtn8Click(Sender: TObject);
var
  ESTQ1 : string ;
begin
  IF Q_ESTQPOS_ID.asstring <> '' then begin
      Q_QTDEaux.close;
      Q_QTDEaux.Sql.Clear;
      Q_QTDEaux.Sql.Add(' Update AREA_POSICOES set POS_UTILIZADO = '+ ''''+ 'N' + '''') ;
      Q_QTDEaux.Sql.Add(' Where AR_ID  =   ' + Q_ESTQAR_ID.asstring) ;
      Q_QTDEaux.Sql.Add(' and  POS_ID  =   ' + Q_ESTQPOS_ID.asstring ) ;
      Q_QTDEaux.ExecSql;
  end ;

  ESTQ1 := Q_ESTQESTQ_ID.asstring ;


  IF  Q_POS3POS_ID.asstring <> '' then begin
      Q_QTDEaux.close;
      Q_QTDEaux.Sql.Clear;
      Q_QTDEaux.Sql.Add(' UPDATE ESTOQUE SET AR_ID  = ' + Q_AREA_2AR_ID.asstring + ',');
      Q_QTDEaux.Sql.Add(' POS_ID  = ' + Q_POS3POS_ID.asstring);
      Q_QTDEaux.Sql.Add(' where estq_ID = ' + Q_ESTQESTQ_ID.asstring );
      Q_QTDEaux.ExecSql;
  end else begin
      Q_QTDEaux.close;
      Q_QTDEaux.Sql.Clear;
      Q_QTDEaux.Sql.Add(' UPDATE ESTOQUE SET AR_ID  = ' + Q_AREA_2AR_ID.asstring + ',');
      Q_QTDEaux.Sql.Add(' POS_ID  = null ');
      Q_QTDEaux.Sql.Add(' where estq_ID = ' + Q_ESTQESTQ_ID.asstring );
      Q_QTDEaux.ExecSql;

  end ;


  Q_QTDEaux.close;
  Q_QTDEaux.Sql.Clear;
  Q_QTDEaux.Sql.Add(' Update AREA_POSICOES set POS_UTILIZADO = '+ ''''+ 'S' + '''') ;
  Q_QTDEaux.Sql.Add(' Where AR_ID  =   ' + Q_AREA_2AR_ID.asstring) ;
  If  Q_POS3POS_ID.asstring <> '' then
      Q_QTDEaux.Sql.Add(' and  POS_ID  =   ' + Q_POS3POS_ID.asstring ) ;
  Q_QTDEaux.ExecSql;



  Panel4.visible := false ;
  Bitbtn5.visible := true ;
  Bitbtn6.visible := true ;
  Q_AREA_2.close ;
  Q_POS3.close ;

  Q_ESTQ.close ;
  Q_ESTQ.open ;
  Q_ESTQ.locate('ESTQ_ID', ESTQ1,[])    ;
  Grid.SETFOCUS ;
  Grid.Selectedfield := Selecionado ;
end;

procedure TFRomaneioITENS.wwDBLookupCombo1Exit(Sender: TObject);
begin
   IF wwDBLookupCombo1.text = '' then
     wwDBLookupCombo2.enabled := false
     else begin
         Q_POS3.close;
         Q_POS3.Sql.Clear;
         Q_POS3.Sql.Add(' select AREA_POSICOES.POS_COD,AREA_POSICOES.AR_ID,POS_UTILIZADO,POS_ID ') ;
         Q_POS3.Sql.Add(' from AREA_POSICOES , AREA ' ) ;
         Q_POS3.Sql.Add(' where ');
         Q_POS3.Sql.Add(' AREA_POSICOES.AR_ID = AREA.AR_ID ' ) ;
         Q_POS3.Sql.Add(' and AREA.AR_ID = ' + Q_AREA_2AR_ID.asstring + '  and status = ''D'' ');
         Q_POS3.Sql.Add(' and POS_UTILIZADO = ' + '''' + 'N' + '''');
         Q_POS3.Sql.Add(' and AREA.PAR_ID = ' + FOS.CDSCTTPAR_ID.asstring) ;
         Q_POS3.Sql.Add(' order by POS_COD' );
         Q_POS3.open  ;
         wwDBLookupCombo2.enabled := true ;
     end ;
   (Sender as TwwDBlookupcombo).Color := Clwindow;
end;

procedure TFRomaneioITENS.wwDBLookupCombo1Enter(Sender: TObject);
begin
  (Sender as TwwDBlookupcombo).Color := ClAqua;
end;

procedure TFRomaneioITENS.wwDBLookupCombo2Enter(Sender: TObject);
begin
  (Sender as TwwDBlookupcombo).Color := ClAqua;
end;

procedure TFRomaneioITENS.wwDBLookupCombo2Exit(Sender: TObject);
begin
  (Sender as TwwDBlookupcombo).Color := Clwindow ;
end;

procedure TFRomaneioITENS.ComboAREADblClick(Sender: TObject);
begin
 { Panel4.visible := true ;
  Bitbtn5.visible := false ;
  Bitbtn6.visible := false ;
  Q_AREA_2.open ;
  Q_POS3.open ;
  Selecionado := Grid.Selectedfield ;   }
end;

procedure TFRomaneioITENS.ComboPOSICAODblClick(Sender: TObject);
begin
 { Panel4.visible := true ;
  Bitbtn5.visible := false ;
  Bitbtn6.visible := false ;
  Q_AREA_2.open ;
  Q_POS3.open ;
  Selecionado := Grid.Selectedfield ;   }
end;

procedure TFRomaneioITENS.Button1Click(Sender: TObject);
begin
  Q_ESTQ.First;
  while not Q_ESTQ.Eof do begin
      AlteraArea;
      Q_ESTQ.Next;
  end;
  Q_ESTQ.close ;
  Q_ESTQ.open ;
  Q_AREA_2.close ;
  Q_POS3.close ;
end;

procedure TFRomaneioITENS.AlteraArea;
begin
  IF Q_ESTQPOS_ID.asstring <> '' then begin
      Q_QTDEaux.close;
      Q_QTDEaux.Sql.Clear;
      Q_QTDEaux.Sql.Add(' Update AREA_POSICOES set POS_UTILIZADO = '+ ''''+ 'N' + '''') ;
      Q_QTDEaux.Sql.Add(' Where AR_ID  =   ' + Q_ESTQAR_ID.asstring) ;
      Q_QTDEaux.Sql.Add(' and  POS_ID  =   ' + Q_ESTQPOS_ID.asstring ) ;
      Q_QTDEaux.ExecSql;
  end ;

  //ESTQ1 := Q_ESTQESTQ_ID.asstring ;


  IF  Q_POS3POS_ID.asstring <> '' then begin
      Q_QTDEaux.close;
      Q_QTDEaux.Sql.Clear;
      Q_QTDEaux.Sql.Add(' UPDATE ESTOQUE SET AR_ID  = ' + Q_AREA_2AR_ID.asstring + ',');
      Q_QTDEaux.Sql.Add(' POS_ID  = ' + Q_POS3POS_ID.asstring);
      Q_QTDEaux.Sql.Add(' where estq_ID = ' + Q_ESTQESTQ_ID.asstring );
      Q_QTDEaux.ExecSql;
  end else begin
      Q_QTDEaux.close;
      Q_QTDEaux.Sql.Clear;
      Q_QTDEaux.Sql.Add(' UPDATE ESTOQUE SET AR_ID  = ' + Q_AREA_2AR_ID.asstring + ',');
      Q_QTDEaux.Sql.Add(' POS_ID  = null ');
      Q_QTDEaux.Sql.Add(' where estq_ID = ' + Q_ESTQESTQ_ID.asstring );
      Q_QTDEaux.ExecSql;

  end ;


  Q_QTDEaux.close;
  Q_QTDEaux.Sql.Clear;
  Q_QTDEaux.Sql.Add(' Update AREA_POSICOES set POS_UTILIZADO = '+ ''''+ 'S' + '''') ;
  Q_QTDEaux.Sql.Add(' Where AR_ID  =   ' + Q_AREA_2AR_ID.asstring) ;
  If  Q_POS3POS_ID.asstring <> '' then
      Q_QTDEaux.Sql.Add(' and  POS_ID  =   ' + Q_POS3POS_ID.asstring ) ;
  Q_QTDEaux.ExecSql;


  

end;

procedure TFRomaneioITENS.BitBtn9Click(Sender: TObject);
var
  ESTQ1 : string ;
begin
if MessageBox(Self.Handle, pchar('Confirma a alteração para OPVP?'), 'Confirmação', MB_YESNO + MB_ICONQUESTION) = 7 then
        Abort;

    Q_ESTQ.First;
    while not Q_ESTQ.Eof do begin

      IF Q_ESTQPOS_ID.asstring <> '' then begin
          Q_QTDEaux.close;
          Q_QTDEaux.Sql.Clear;
          Q_QTDEaux.Sql.Add(' Update AREA_POSICOES set POS_UTILIZADO = '+ ''''+ 'N' + '''') ;
          Q_QTDEaux.Sql.Add(' Where AR_ID  =   ' + Q_ESTQAR_ID.asstring) ;
          Q_QTDEaux.Sql.Add(' and  POS_ID  =   ' + Q_ESTQPOS_ID.asstring ) ;
          Q_QTDEaux.ExecSql;
      end ;

      ESTQ1 := Q_ESTQESTQ_ID.asstring ;



      Q_QTDEaux.close;
      Q_QTDEaux.Sql.Clear;
      Q_QTDEaux.Sql.Add(' UPDATE ESTOQUE SET AR_ID  = 12, ');
      Q_QTDEaux.Sql.Add(' POS_ID  = 14577 ');
      Q_QTDEaux.Sql.Add(' where estq_ID = ' + Q_ESTQESTQ_ID.asstring );
      Q_QTDEaux.ExecSql;


      Q_ESTQ.Next;

    end ;//wnd while



    Panel4.visible := false ;
    Bitbtn5.visible := true ;
    Bitbtn6.visible := true ;
    Q_AREA_2.close ;
    Q_POS3.close ;

    
  Q_ESTQ.close ;
  Q_ESTQ.open ;
  Q_ESTQ.locate('ESTQ_ID', ESTQ1,[])    ;
  Grid.SETFOCUS ;
  Grid.Selectedfield := Selecionado ;


end;

procedure TFRomaneioITENS.BitBtn10Click(Sender: TObject);
var
  ESTQ1 : string ;
begin
if MessageBox(Self.Handle, pchar('Confirma a alteração para CORVP?'), 'Confirmação', MB_YESNO + MB_ICONQUESTION) = 7 then
        Abort;

    Q_ESTQ.First;
    while not Q_ESTQ.Eof do begin

      IF Q_ESTQPOS_ID.asstring <> '' then begin
          Q_QTDEaux.close;
          Q_QTDEaux.Sql.Clear;
          Q_QTDEaux.Sql.Add(' Update AREA_POSICOES set POS_UTILIZADO = '+ ''''+ 'N' + '''') ;
          Q_QTDEaux.Sql.Add(' Where AR_ID  =   ' + Q_ESTQAR_ID.asstring) ;
          Q_QTDEaux.Sql.Add(' and  POS_ID  =   ' + Q_ESTQPOS_ID.asstring ) ;
          Q_QTDEaux.ExecSql;
      end ;

      ESTQ1 := Q_ESTQESTQ_ID.asstring ;



      Q_QTDEaux.close;
      Q_QTDEaux.Sql.Clear;
      Q_QTDEaux.Sql.Add(' UPDATE ESTOQUE SET AR_ID  = 13, ');
      Q_QTDEaux.Sql.Add(' POS_ID  = null ');
      Q_QTDEaux.Sql.Add(' where estq_ID = ' + Q_ESTQESTQ_ID.asstring );
      Q_QTDEaux.ExecSql;


      Q_ESTQ.Next;

    end ;//wnd while



    Panel4.visible := false ;
    Bitbtn5.visible := true ;
    Bitbtn6.visible := true ;
    Q_AREA_2.close ;
    Q_POS3.close ;

  Q_ESTQ.close ;
  Q_ESTQ.open ;
  Q_ESTQ.locate('ESTQ_ID', ESTQ1,[])    ;
  Grid.SETFOCUS ;
  Grid.Selectedfield := Selecionado ;

end;

end.
