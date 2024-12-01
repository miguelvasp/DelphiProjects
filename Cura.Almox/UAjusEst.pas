unit UAjusEst;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, Wwdbigrd, Wwdbgrid, Wwdotdot, Wwdbcomb, wwdblook, StdCtrls, Mask,
  wwdbedit, DBCtrls, Buttons, ExtCtrls, DBTables, Db, Wwdatsrc, Wwquery,
  wwDialog, wwidlg, wwstorep;

type
  TFAjusEstq = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    Label1: TLabel;
    SBT_SAIR: TSpeedButton;
    Fonte: TDBNavigator;
    Panel3: TPanel;
    LBL_STATUS: TLabel;
    SpeedButton7: TSpeedButton;
    wwDBGrid1: TwwDBGrid;
    Panel4: TPanel;
    Label2: TLabel;
    DBE_AJUS_NUM: TwwDBEdit;
    Label3: TLabel;
    DBLC_AJUS_MAT: TwwDBLookupCombo;
    Label7: TLabel;
    DBE_AJUS_QTDE: TwwDBEdit;
    DBLC_AJUS_MOTIVO: TwwDBLookupCombo;
    Label8: TLabel;
    DBE_AJUS_LOTE: TwwDBEdit;
    Label10: TLabel;
    DBE_AJUS_DATA: TwwDBEdit;
    Label9: TLabel;
    DBLC_AJUS_LOCAL: TwwDBLookupCombo;
    Label5: TLabel;
    DBCB_AJUS_SOMASUB: TwwDBComboBox;
    Label6: TLabel;
    wwDBEdit2: TwwDBEdit;
    Label11: TLabel;
    Q_AJUS: TwwQuery;
    DS_AJUS: TwwDataSource;
    Q_AJUSAJUS_ID: TAutoIncField;
    Q_AJUSLOC_ID: TIntegerField;
    Q_AJUSMAT_ID: TIntegerField;
    Q_AJUSESTQ_ID: TIntegerField;
    Q_AJUSAJUS_SOMASUBTRAI: TIntegerField;
    Q_AJUSAJUS_QUANT: TIntegerField;
    Q_AJUSMOT_ID: TIntegerField;
    Q_AJUSAJUS_DATA: TDateTimeField;
    Q_AJUSAJUS_ATUALIZA: TStringField;
    Q_AJUSUSUARIO: TStringField;
    UPD_AJUS: TUpdateSQL;
    Q_PSQAJUS: TwwQuery;
    PESQ_AJUS: TwwSearchDialog;
    Q_PSQAJUSAJUS_ID: TAutoIncField;
    Q_PSQAJUSLOC_ID: TIntegerField;
    Q_PSQAJUSMAT_ID: TIntegerField;
    Q_PSQAJUSESTQ_ID: TIntegerField;
    Q_PSQAJUSAJUS_SOMASUBTRAI: TIntegerField;
    Q_PSQAJUSAJUS_QUANT: TIntegerField;
    Q_PSQAJUSMOT_ID: TIntegerField;
    Q_PSQAJUSAJUS_DATA: TDateTimeField;
    Q_PSQAJUSAJUS_ATUALIZA: TStringField;
    Q_PSQAJUSAJUS_LOTE: TStringField;
    Q_PSQAJUSUSUARIO: TStringField;
    Q_LOC: TwwQuery;
    Q_LOCLOC_ID: TAutoIncField;
    Q_LOCLOC_DESC: TStringField;
    Q_MAT: TwwQuery;
    Q_MATMAT_ID: TAutoIncField;
    Q_MATMAT_DESC: TStringField;
    Q_MOT: TwwQuery;
    Q_MOTMOT_ID: TAutoIncField;
    Q_MOTMOT_DESC: TStringField;
    Q_AJUSlocal: TStringField;
    Q_AJUSmaterial: TStringField;
    Q_AJUSmotivo: TStringField;
    STP_ATUALIZAESTOQUE: TwwStoredProc;
    Q_AJUSAJUS_LOTE: TStringField;
    Label4: TLabel;
    wwDBLookupCombo1: TwwDBLookupCombo;
    Label12: TLabel;
    DBE_AJUS_VAL: TwwDBEdit;
    Q_AJUSAJUS_VALIDADE: TDateTimeField;
    Q_MARC: TwwQuery;
    DS_MAT: TwwDataSource;
    Q_AJUSmarca: TStringField;
    Q_ESTQ: TwwQuery;
    Q_ESTQQUANTIDADE: TIntegerField;
    Q_MATMAT_CONTROLA: TStringField;
    Q_MARC2: TwwQuery;
    Q_MARC2MARCA_DESC: TStringField;
    AutoIncField1: TAutoIncField;
    IntegerField1: TIntegerField;
    Q_MARCMARCA_ID: TAutoIncField;
    Q_MARCMARCA_DESC: TStringField;
    Q_AUX: TwwQuery;
    Q_AJUSMARCA_ID: TIntegerField;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SBT_PESClick(Sender: TObject);
    procedure Q_AJUSAfterPost(DataSet: TDataSet);
    procedure Q_AJUSAfterDelete(DataSet: TDataSet);
    procedure SBT_SAIRClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBE_AJUS_DATAEnter(Sender: TObject);
    procedure DBE_AJUS_DATAExit(Sender: TObject);
    procedure DBLC_AJUS_LOCALEnter(Sender: TObject);
    procedure DBLC_AJUS_LOCALExit(Sender: TObject);
    procedure DBLC_AJUS_MATExit(Sender: TObject);
    procedure DBLC_AJUS_MOTIVOExit(Sender: TObject);
    procedure DBCB_AJUS_SOMASUBEnter(Sender: TObject);
    procedure DBCB_AJUS_SOMASUBExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Q_AJUSNewRecord(DataSet: TDataSet);
    procedure SpeedButton7Click(Sender: TObject);
    procedure Q_AJUSBeforePost(DataSet: TDataSet);
    procedure Q_AJUSBeforeDelete(DataSet: TDataSet);
    procedure FonteClick(Sender: TObject; Button: TNavigateBtn);
    procedure Q_AJUSAJUS_SOMASUBTRAIGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure DBCB_AJUS_SOMASUBCloseUp(Sender: TwwDBComboBox;
      Select: Boolean);
    procedure DS_AJUSStateChange(Sender: TObject);
    procedure wwDBLookupCombo1Exit(Sender: TObject);
    procedure DBLC_AJUS_MATCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure Q_AJUSBeforeInsert(DataSet: TDataSet);
    procedure DS_AJUSDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAjusEstq: TFAjusEstq;

implementation

uses Unt_Senha, UMenu;

{$R *.DFM}

procedure TFAjusEstq.FormKeyPress(Sender: TObject; var Key: Char);
begin
     If key = #13 then
     begin
       key := #0;
       perform(WM_nextdlgctl,0,0);
     end;
end;

procedure TFAjusEstq.SBT_PESClick(Sender: TObject);
begin
        Q_PSQAJUS.Open;
        PESQ_AJUS.Execute;
        Q_AJUS.Locate('AJUS_ID', Q_PSQAJUSAJUS_ID.AsString, []);
end;

procedure TFAjusEstq.Q_AJUSAfterPost(DataSet: TDataSet);
begin
   try
      FMenu.DATABASE1.ApplyUpdates([Q_AJUS])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_AJUS.close ;
   Q_AJUS.Open ;
   Q_MARC.Close;
   Q_MARC.Open;

   //Q_AJUS.Last ;
end;

procedure TFAjusEstq.Q_AJUSAfterDelete(DataSet: TDataSet);
begin
   try
      FMenu.DATABASE1.ApplyUpdates([Q_AJUS])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_AJUS.close ;
   Q_AJUS.Open ;
end;

procedure TFAjusEstq.SBT_SAIRClick(Sender: TObject);
begin
       close ; 
end;

procedure TFAjusEstq.FormCreate(Sender: TObject);
begin
      Q_AJUS.Open;
      Q_LOC.Open;
      Q_MAT.Open;
      Q_MOT.Open;
      Q_MARC.Open;
      Q_MARC2.Open;
      if Q_AJUSAJUS_ATUALIZA.asstring = 'S' then begin
         SpeedButton7.enabled := false;
         Fonte.visiblebuttons := [nbFirst,nbPrior,nbNext,nbLast,nbInsert];
         fonte.left := 485 ;
      end else begin
         SpeedButton7.enabled := true;
         Fonte.visiblebuttons := [nbFirst,nbPrior,nbNext,nbLast,nbInsert,nbCancel];
         fonte.left := 485 ;
      end;
end;

procedure TFAjusEstq.DBE_AJUS_DATAEnter(Sender: TObject);
begin
        (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFAjusEstq.DBE_AJUS_DATAExit(Sender: TObject);
begin
        (Sender as TwwDBedit).Color := clwindow;
end;

procedure TFAjusEstq.DBLC_AJUS_LOCALEnter(Sender: TObject);
begin
        (Sender as TwwDBlookupcombo).Color := claqua;
end;

procedure TFAjusEstq.DBLC_AJUS_LOCALExit(Sender: TObject);
begin
        (Sender as TwwDBlookupcombo).Color := clwindow;
        If DBLC_AJUS_LOCAL.text <> '' then
                DBLC_AJUS_LOCAL.text := Q_LOCLOC_DESC.asstring;
end;

procedure TFAjusEstq.DBLC_AJUS_MATExit(Sender: TObject);
begin
        (Sender as TwwDBlookupcombo).Color := clwindow;
        If DBLC_AJUS_MAT.text <> '' then
                DBLC_AJUS_MAT.text := Q_MATMAT_DESC.asstring;
end;

procedure TFAjusEstq.DBLC_AJUS_MOTIVOExit(Sender: TObject);
begin
        (Sender as TwwDBlookupcombo).Color := clwindow;
        If DBLC_AJUS_MOTIVO.text <> '' then
                DBLC_AJUS_MOTIVO.text := Q_MOTMOT_DESC.asstring;
end;

procedure TFAjusEstq.DBCB_AJUS_SOMASUBEnter(Sender: TObject);
begin
        (Sender as TwwDBComboBox).Color := claqua;
end;

procedure TFAjusEstq.DBCB_AJUS_SOMASUBExit(Sender: TObject);
begin
        (Sender as TwwDBComboBox).Color := Clwindow;
end;

procedure TFAjusEstq.FormClose(Sender: TObject; var Action: TCloseAction);
begin

        Q_AUX.close ;
        Q_AUX.sql.clear;
        Q_AUX.sql.add('select count(*) as QTDE from ajuste');
        Q_AUX.sql.add('where AJUS_ATUALIZA is null') ;
        Q_AUX.open ;


        If (Q_AUX.fieldbyname('QTDE').asfloat > 0)  then  begin
            MessageDlg('Existe ajuste sem Atualização de estoque ! ',mtInformation,[mbOk], 0);
            Abort;
        end ;



        Q_AUX.close ;
        Q_AUX.sql.clear;
        Q_AUX.sql.add('select count(*) as QTDE from ajuste');
        Q_AUX.open ;

        If (Q_AUX.fieldbyname('QTDE').asinteger > 0)  then  begin
            if Q_AJUSAJUS_ATUALIZA.asstring <> 'S' then begin
                    MessageDlg('Cancelar ou Atualizar o Estoque!',mtWarning,[mbok],0);
                    Abort;
            end
            else
            FAjusEstq.Close;
        end else begin
            IF (Q_AJUS.State = dsEdit) or (Q_AJUS.State = dsInsert) THEN begin
                   MessageDlg('Gravação não efetuada !',mtWarning,[mbok],0);
                    Abort;
            end ;
        end ;

      Q_AJUS.Close;
      Q_LOC.Close;
      Q_MAT.Close;
      Q_MOT.Close;
      Action := cafree;
end;

procedure TFAjusEstq.Q_AJUSNewRecord(DataSet: TDataSet);
begin
     Q_AJUSAJUS_DATA.AsDateTime := Date;
     Q_AJUSUSUARIO.AsString := StrUsuario;
     DBCB_AJUS_SOMASUB.SetFocus;
end;

procedure TFAjusEstq.SpeedButton7Click(Sender: TObject);
var ID:Integer;
begin

   IF DBCB_AJUS_SOMASUB.itemindex = 1 then begin
        Q_AUX.close ;
        Q_AUX.sql.clear;
        Q_AUX.sql.add('select QUANTIDADE from ESTOQUE');
        Q_AUX.sql.add('where LOC_ID = ' + Q_LOCLOC_ID.asstring);
        Q_AUX.sql.add('and   LOTE = ' + '''' + DBE_AJUS_LOTE.text + '''');
        Q_AUX.sql.add('and   MAT_ID = ' + Q_AJUSMAT_ID.asstring);
        Q_AUX.sql.add('and   MARCA_ID = ' + Q_AJUSMARCA_ID.asstring);
        Q_AUX.open ;


        If (Q_AUX.fieldbyname('QUANTIDADE').asfloat < strtofloat(DBE_AJUS_QTDE.text))  then  begin
            MessageDlg('Quantidade em Estoque para este Material/Marca/Local/Lote é insuficiente ! ',mtInformation,[mbOk], 0);
            Abort;
        end ;
   end ; 

     If MessageDlg('Confirma Atualização do Estoque ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
             ID := Q_AJUSAJUS_ID.asinteger ;

             IF (Q_AJUS.State = dsEdit) or (Q_AJUS.State = dsInsert) THEN
                 Q_AJUS.Post;
               { If DBCB_AJUS_SOMASUB.Text = 'Saída' then

                        begin
                               If (Q_ESTQQUANTIDADE.AsInteger - Q_AJUSAJUS_QUANT.asInteger) < 0 then
                                begin
                                MessageDlg('Esse ajuste tornará o estoque Negativo!',mtWarning,[mbok],0);
                                DBCB_AJUS_SOMASUB.SetFocus;
                                Abort;
                                end;
                         end; }
             try
                Begin
                     STP_ATUALIZAESTOQUE.ParamByName( '@Lote' ).Value := Q_AJUSAJUS_LOTE.AsString;
                    STP_ATUALIZAESTOQUE.Execproc;
                 End
             except
                 begin
                   MessageDlg('Erro na Atualização do Estoque !',mtInformation,[mbOk], 0);
                   Abort;
                end;
             end;



             if Q_AJUSAJUS_ATUALIZA.asstring = 'S' then begin
                SpeedButton7.enabled := false;
                Fonte.visiblebuttons := [nbFirst,nbPrior,nbNext,nbLast,nbInsert] ;
                fonte.left := 485 ;
             end else begin
                SpeedButton7.enabled := true;
                Fonte.visiblebuttons := [nbFirst,nbPrior,nbNext,nbLast,nbInsert,nbCancel] ;
                fonte.left := 485 ;
             end;

             MessageDlg('Atualização de Estoque Efetuada com sucesso !', mtConfirmation, [mbOk], 0) ;
             SpeedButton7.enabled := false;
             Q_AJUS.Close;
             Q_AJUS.Open;
             Q_AJUS.Locate('AJUS_ID',ID,[]);
     end;


end;

procedure TFAjusEstq.Q_AJUSBeforePost(DataSet: TDataSet);
begin
        If DBLC_AJUS_LOCAL.Text = '' Then
        begin
                MessageDlg('Local é Campo de preenchimento obrigatório',mtWarning,[mbok],0);
                DBLC_AJUS_LOCAL.SetFocus;
                Abort;
        end;
        If DBLC_AJUS_MAT.Text = '' Then
        begin
                MessageDlg('Material é Campo de preenchimento obrigatório',mtWarning,[mbok],0);
                DBLC_AJUS_MAT.SetFocus;
                Abort;
        end;
        If DBE_AJUS_LOTE.Text = '' Then
        begin
                MessageDlg('Lote é Campo de preenchimento obrigatório',mtWarning,[mbok],0);
                DBE_AJUS_LOTE.SetFocus;
                Abort;
        end;
        If DBE_AJUS_QTDE.Text = '' Then
        begin
                MessageDlg('Quantidade é Campo de preenchimento obrigatório',mtWarning,[mbok],0);
                DBE_AJUS_QTDE.SetFocus;
                Abort;
        end;
        If DBCB_AJUS_SOMASUB.Text = '' Then
        begin
                MessageDlg('Movimentação é Campo de preenchimento obrigatório',mtWarning,[mbok],0);
                DBCB_AJUS_SOMASUB.SetFocus;
                Abort;
        end;
        If DBLC_AJUS_MOTIVO.Text = '' Then
        begin
                MessageDlg('Motivo é Campo de preenchimento obrigatório',mtWarning,[mbok],0);
                DBLC_AJUS_MOTIVO.SetFocus;
                Abort;
        end;

       {  if Q_AJUSAJUS_ATUALIZA.asstring <> 'S' then begin
                MessageDlg('Estoque não foi atualizado !',mtWarning,[mbok],0);
                Abort;
        end     }

       
end;

procedure TFAjusEstq.Q_AJUSBeforeDelete(DataSet: TDataSet);
begin
    If MessageDlg('Confirma Exclusão ?',
    mtInformation, [mbYes, mbNo], 0) = mrNo then
    begin
      Abort;
    end;
end;

procedure TFAjusEstq.FonteClick(Sender: TObject; Button: TNavigateBtn);
begin
        If Q_AJUSAJUS_ATUALIZA.asstring = 'S' then begin
                SpeedButton7.enabled := false ;
                Fonte.visiblebuttons := [nbFirst,nbPrior,nbNext,nbLast,nbInsert] ;
                fonte.left := 485 ;;
        end else begin
                SpeedButton7.enabled := true ;
                Fonte.visiblebuttons := [nbFirst,nbPrior,nbNext,nbLast,nbInsert,nbCancel] ;
                fonte.left := 485 ;
        end ;
end;

procedure TFAjusEstq.Q_AJUSAJUS_SOMASUBTRAIGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
        If Q_AJUSAJUS_SOMASUBTRAI.AsInteger = 1 then
                Text := 'Entrada';
        If Q_AJUSAJUS_SOMASUBTRAI.AsInteger = -1 then
                Text := 'Saída';
end;

procedure TFAjusEstq.DBCB_AJUS_SOMASUBCloseUp(Sender: TwwDBComboBox;
  Select: Boolean);
begin
       { If DBCB_AJUS_SOMASUB.Text = 'Entrada' then
        begin
                DBE_AJUS_VAL.Enabled :=True;
                DBE_AJUS_VAL.Color   :=clWhite;
        end;
        If DBCB_AJUS_SOMASUB.Text = 'Saída' then
        begin
                Q_AJUSAJUS_VALIDADE.AsString    :='';
                DBE_AJUS_VAL.Enabled :=False;
                DBE_AJUS_VAL.Color   :=clSilver;

        end;   }
end;
procedure TFAjusEstq.DS_AJUSStateChange(Sender: TObject);
begin
        IF (Q_AJUS.State = dsBrowse) Then
        begin
                If Q_AJUSAJUS_ATUALIZA.asstring = 'S' then begin

                SpeedButton7.enabled := false ;
                Fonte.visiblebuttons := [nbFirst,nbPrior,nbNext,nbLast,nbInsert] ;
                fonte.left := 485 ;
                end else begin
                SpeedButton7.enabled := true ;
                Fonte.visiblebuttons := [nbFirst,nbPrior,nbNext,nbLast,nbInsert,nbCancel] ;
                fonte.left := 485 ;
                end;



        end;
end;

procedure TFAjusEstq.wwDBLookupCombo1Exit(Sender: TObject);
begin
        (Sender as TwwDBlookupcombo).Color := clwindow;
        If wwDBLookupCombo1.text <> '' then
                wwDBLookupCombo1.text := Q_MARC2MARCA_DESC.asstring;
end;

procedure TFAjusEstq.DBLC_AJUS_MATCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
     Q_MARC2.close;
     Q_MARC2.SQL.clear ;
     Q_MARC2.SQL.ADD(' SELECT A.MAT_ID, A.MARCA_ID, A.UNI_ID , B.MARCA_DESC ');
     Q_MARC2.SQL.ADD(' FROM MATERIAL_MARCA A, MARCAS B ');
     Q_MARC2.SQL.ADD('WHERE A.MARCA_ID = B.MARCA_ID ');
     Q_MARC2.SQL.ADD(' and MAT_ID = ' + Q_MATMAT_ID.asstring ) ;
     Q_MARC2.SQL.ADD(' GROUP BY  A.MARCA_ID,B.MARCA_DESC,A.MAT_ID,A.UNI_ID   ');
     Q_MARC2.open;

     {If DBCB_AJUS_SOMASUB.Text = 'Entrada' then
        begin
             If Q_MATMAT_CONTROLA.Value = 'S' then
             begin
                DBE_AJUS_VAL.Enabled :=True;
                DBE_AJUS_VAL.Color   :=clWhite;
             end
             else begin

                DBE_AJUS_VAL.Enabled :=False;
                DBE_AJUS_VAL.Color   :=clSilver;

             end;
     end;   }
end;
procedure TFAjusEstq.Q_AJUSBeforeInsert(DataSet: TDataSet);
begin
         Q_AUX.close ;
        Q_AUX.sql.clear;
        Q_AUX.sql.add('select count(*) as QTDE from ajuste');
        Q_AUX.sql.add('where AJUS_ATUALIZA is null') ;
        Q_AUX.open ;


        If (Q_AUX.fieldbyname('QTDE').asfloat > 0)  then  begin
            MessageDlg('Existe ajuste sem Atualização de estoque ! ',mtInformation,[mbOk], 0);
            Abort;
        end ;
end;

procedure TFAjusEstq.DS_AJUSDataChange(Sender: TObject; Field: TField);
begin
               If Q_AJUSAJUS_ATUALIZA.asstring = 'S' then begin

                SpeedButton7.enabled := false ;
                Fonte.visiblebuttons := [nbFirst,nbPrior,nbNext,nbLast,nbInsert] ;
                fonte.left := 485 ;
                end else begin
                SpeedButton7.enabled := true ;
                Fonte.visiblebuttons := [nbFirst,nbPrior,nbNext,nbLast,nbdelete,nbInsert,nbCancel] ;
                fonte.left := 485 ;
                end;
end;

end.
