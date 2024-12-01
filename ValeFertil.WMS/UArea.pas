unit UArea;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Wwdotdot, Wwdbcomb, Wwdbigrd, Grids, Wwdbgrid, StdCtrls, Mask, wwdbedit,
  DBCtrls, Buttons, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, ComCtrls,
  Tabnotbk, wwdblook, RzButton, ADODB;




type
  TFArea = class(TForm)
    Panel2: TPanel;
    {SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;   }
    Label4: TLabel;
    Q_PAR: TwwQuery;
    Q_AREAaux: TwwQuery;
    Q_POSaux: TwwQuery;
    DS_POS: TwwDataSource;
    UPD_POS: TUpdateSQL;
    UPD_AREA: TUpdateSQL;
    DS_AREA: TwwDataSource;
    Q_AREA: TwwQuery;
    Q_AREAAR_NOME: TStringField;
    Q_AREAAR_CONTROL_POS: TStringField;
    Q_AREAAR_EMPILHA_LIVRE: TStringField;
    Q_AREAAR_EMPILHA_MAX: TIntegerField;
    Q_AREAEmpNOME: TStringField;
    Q_AREAPAR_ID: TIntegerField;
    Q_AREAAR_ID: TAutoIncField;
    Q_AREAAR_DISPONIVEL: TStringField;
    Q_POS: TwwQuery;
    Q_POSPOS_COD: TStringField;
    Q_POSPOS_PESOMAX: TFloatField;
    Q_POSPOS_ID: TAutoIncField;
    Q_POSAR_ID: TIntegerField;
    Q_POSPOS_UTILIZADO: TStringField;
    TabbedNotebook1: TTabbedNotebook;
    Panel6: TPanel;
    Label25: TLabel;
    Label3: TLabel;
    Label30: TLabel;
    Label10: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    wwDBEdit3: TwwDBEdit;
    wwDBComboBox3: TwwDBComboBox;
    DBG_RAAT: TwwDBGrid;
    DBG_RAATIButton: TwwIButton;
    wwDBComboBox1: TwwDBComboBox;
    wwDBEdit9: TwwDBEdit;
    EmpLIVRE: TwwDBComboBox;
    wwDBComboBox2: TwwDBComboBox;
    wwDBComboBox4: TwwDBComboBox;
    wwDBLookupCombo1: TwwDBLookupCombo;
    Label15: TLabel;
    DBText3: TDBText;
    Panel4: TPanel;
    Label19: TLabel;
    Label6: TLabel;
    Label1: TLabel;
    wwDBGrid2: TwwDBGrid;
    wwIButton2: TwwIButton;
    wwDBEdit2: TwwDBEdit;
    wwDBEdit1: TwwDBEdit;
    DBNavigator1: TDBNavigator;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Q_POSSTATUS: TStringField;
    Label7: TLabel;
    wwDBComboBox5: TwwDBComboBox;
    cboArea: TwwDBLookupCombo;
    cboPosicao: TwwDBLookupCombo;
    RzBitBtn1: TRzBitBtn;
    qrAux: TADOQuery;
    Label8: TLabel;
    Label9: TLabel;
    qrPos: TADOQuery;
    qrPosPOS_ID: TAutoIncField;
    qrPosPOS_COD: TStringField;
    qrPosAR_ID: TIntegerField;
    qrPosPOS_PESOMAX: TFloatField;
    qrPosPOS_UTILIZADO: TStringField;
    qrPosSTATUS: TStringField;
    Panel1: TPanel;
    {DBNavigator1: TDBNavigator;
    Q_AREA: TwwQuery;
    DS_AREA: TwwDataSource;
    Q_AREAAR_ID: TAutoIncField;
    Q_AREAAR_NOME: TStringField;
    Q_AREAAR_CONTROL_POS: TStringField;
    TabbedNotebook1: TTabbedNotebook;
    Panel6: TPanel;
    Label15: TLabel;                                
    DBText3: TDBText;
    Panel4: TPanel;
    Label19: TLabel;
    Label6: TLabel;
    wwDBGrid2: TwwDBGrid;
    wwIButton2: TwwIButton;
    wwDBEdit2: TwwDBEdit;
    Label25: TLabel;
    Label3: TLabel;
    wwDBEdit3: TwwDBEdit;
    wwDBComboBox3: TwwDBComboBox;
    DBG_RAAT: TwwDBGrid;
    DBG_RAATIButton: TwwIButton;
    wwDBComboBox1: TwwDBComboBox;
    wwDBEdit1: TwwDBEdit;
    Label1: TLabel;
    Q_POS: TwwQuery;
    UPD_POS: TUpdateSQL;
    DS_POS: TwwDataSource;
    Q_POSPOS_ID: TAutoIncField;
    Q_POSPOS_COD: TStringField;
    Q_POSAR_ID: TIntegerField;
    Q_POSPOS_PESOMAX: TFloatField;
    Label30: TLabel;
    wwDBEdit9: TwwDBEdit;
    Label10: TLabel;
    EmpLIVRE: TwwDBComboBox;
    Q_AREAAR_EMPILHA_LIVRE: TStringField;
    Q_AREAAR_EMPILHA_MAX: TIntegerField;
    UPD_AREA: TUpdateSQL;
    wwDBComboBox2: TwwDBComboBox;
    Q_POSPOS_UTILIZADO: TStringField;
    Q_POSaux: TwwQuery;
    Q_AREAaux: TwwQuery;
    Label2: TLabel;
    wwDBComboBox4: TwwDBComboBox;
    Q_AREAAR_DISPONIVEL: TStringField;
    Label5: TLabel;
    wwDBLookupCombo1: TwwDBLookupCombo;
    Q_PAR: TwwQuery;
    Q_AREAPAR_ID: TIntegerField;
    Q_AREAEmpNOME: TStringField;}
    procedure SpeedButton3Click(Sender: TObject);
    procedure wwDBEdit3Enter(Sender: TObject);
    procedure wwDBEdit3Exit(Sender: TObject);
    procedure wwDBComboBox3Enter(Sender: TObject);
    procedure wwDBComboBox3Exit(Sender: TObject);
    procedure Q_AREAAfterDelete(DataSet: TDataSet);
    procedure Q_AREAAfterPost(DataSet: TDataSet);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure FormPaint(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure wwDBEdit2Enter(Sender: TObject);
    procedure wwDBEdit2Exit(Sender: TObject);
    procedure wwDBEdit1Enter(Sender: TObject);
    procedure wwDBEdit1Exit(Sender: TObject);
    procedure Q_POSAfterPost(DataSet: TDataSet);
    procedure Q_POSAfterDelete(DataSet: TDataSet);
    procedure Q_POSNewRecord(DataSet: TDataSet);
    procedure TabbedNotebook1Click(Sender: TObject);
    procedure TabbedNotebook1Change(Sender: TObject; NewTab: Integer;
      var AllowChange: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure EmpLIVREEnter(Sender: TObject);
    procedure EmpLIVREExit(Sender: TObject);
    procedure wwDBEdit9Enter(Sender: TObject);
    procedure wwDBEdit9Exit(Sender: TObject);
    procedure DS_AREADataChange(Sender: TObject; Field: TField);
    procedure Q_AREABeforeDelete(DataSet: TDataSet);
    procedure Q_AREANewRecord(DataSet: TDataSet);
    procedure Q_AREABeforePost(DataSet: TDataSet);
    procedure wwDBComboBox4Enter(Sender: TObject);
    procedure wwDBComboBox4Exit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure wwDBLookupCombo1Exit(Sender: TObject);
    procedure wwDBLookupCombo1Enter(Sender: TObject);
    procedure cboAreaCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure cboAreaChange(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure DS_POSDataChange(Sender: TObject; Field: TField);
    procedure wwDBGrid2CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FArea: TFArea;
  VALE : string ; 
implementation
uses USenha,Umenu, UAbTabelas , URelARea;
{$R *.DFM}

procedure TFArea.SpeedButton3Click(Sender: TObject);
begin
   close ; 
end;

procedure TFArea.wwDBEdit3Enter(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFArea.wwDBEdit3Exit(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFArea.wwDBComboBox3Enter(Sender: TObject);
begin
  (Sender as TwwDBcombobox).Color := ClAqua;
end;

procedure TFArea.wwDBComboBox3Exit(Sender: TObject);
begin
    (Sender as TwwDBcombobox).Color := Clwindow;

  {  If  (Q_AREAAR_CONTROL_POS.asstring = 'S') then begin
         //Label10.visible   := true  ;
         //Label30.visible   := true  ;
         //EmpLivre.visible  := true  ;
         //wwDBEdit9.visible := true  ;           
     end else begin
         //Label10.visible := false   ;
        // Label30.visible := false   ;
         //EmpLivre.visible := false  ;
         //wwDBEdit9.visible := false ;
     end ;  }

end;

procedure TFArea.Q_AREAAfterDelete(DataSet: TDataSet);
var StrNOME : string ;
begin
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_AREA])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_AREA.close ;
   Q_AREA.Open ;
   Q_AREA.locate('AR_NOME',StrNOME,[]);


end;

procedure TFArea.Q_AREAAfterPost(DataSet: TDataSet);
var StrNome : string ;
begin
   STRNOme :=  Q_AREAAR_NOME.asstring ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_AREA])
   except
      On E:EdbEngineError do
      begin        {}
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_AREA.close ;
   Q_AREA.Open ;
   Q_AREA.locate('AR_NOME',StrNome,[]);

   {If (Q_AREAAR_CONTROL_POS.asstring = 'S') then begin
      Q_AREAaux.Sql.Clear;
      Q_AREAaux.Sql.Add(' UPDATE AREA SET AR_EMPILHA_LIVRE = ' + '''' + 'N' + '''' + ',');
      Q_AREAaux.Sql.Add(' AR_EMPILHA_MAX = ' + '''' + '0' + '''');
      Q_AREAaux.Sql.Add(' where AR_ID = ' + Q_AREAAR_ID.asstring );
      Q_AREAaux.ExecSql;
   end ;  }

   If (Q_AREAAR_CONTROL_POS.asstring = 'N') then begin
      Q_AREAaux.Sql.Clear;
      Q_AREAaux.Sql.Add(' UPDATE AREA SET AR_EMPILHA_LIVRE = ' + '''' + 'S' + '''' + ',');
      Q_AREAaux.Sql.Add(' AR_EMPILHA_MAX = ' + '''' + '9999' + '''');
      Q_AREAaux.Sql.Add(' where AR_ID = ' + Q_AREAAR_ID.asstring );
      Q_AREAaux.ExecSql;

      Q_POSaux.close;
      Q_POSaux.Sql.Clear;
      Q_POSaux.Sql.Add('Select count(*) as xvalor from  AREA_POSICOES ') ;
      Q_POSaux.Sql.Add(' where AR_ID = ' + Q_AREAAR_ID.asstring ) ;
      Q_POSaux.open ;

      If  Q_POSaux.fieldbyname('XVALOR').asinteger = 0 then begin
          Q_POSaux.close;
          Q_POSaux.Sql.Clear;
          Q_POSaux.Sql.Add(' insert into AREA_POSICOES (AR_ID,POS_COD,POS_UTILIZADO) ') ;
          Q_POSaux.Sql.Add(' values ( ' );
          Q_POSaux.Sql.Add( inttostr(Q_AREAAR_ID.asinteger) + ',');
          Q_POSaux.Sql.Add( '''' + '9999' + '''' + ',');
          Q_POSaux.Sql.Add( '''' + 'N' + '''' + ')' );
          Q_POSaux.ExecSql;
      end ;
   end ;

   Q_AREA.close ;
   Q_AREA.Open ;
   Q_AREA.locate('AR_NOME',StrNome,[]);

end;

procedure TFArea.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then
     begin
       key := #0;
       perform(WM_nextdlgctl,0,0);
  end;
end;

procedure TFArea.DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
begin
   if button in [nbInsert] then  begin
         If (TabbedNotebook1.pageindex = 0) then
           wwDBEdit3.setfocus ;
         If (TabbedNotebook1.pageindex = 1) then
           wwDBEdit2.setfocus ;
   end ;
end;

procedure TFArea.FormPaint(Sender: TObject);
begin
     If Self.Tag = 0 Then
        Begin
             Self.Tag := 1;
             Application.CreateForm(TFAbTabelas, FAbTabelas);
             FAbTabelas.Gauge1.MaxValue := 3;
             FAbTabelas.Show;
             FAbTabelas.RePaint;
             Self.Repaint;
             Try
                Begin
                     ///FAbTabelas.Gauge1.Progress            := 1;
                     ///FAbTabelas.DS_REG.OnStateChange      := DS_CATEStateChange;

                     //FAbTabelas.Gauge1.Progress            := 1;
                     ///FRegiao.Q_REG.BeforePost          := Q_REGBeforePost;

                     FAbTabelas.Gauge1.Progress            := 1;
                     FAREA.Q_AREA.Open;
                     FAbTabelas.Gauge1.Progress            := 2;
                     FAREA.Q_POS.Open;
                     FAbTabelas.Gauge1.Progress            := 2;
                     FAREA.Q_PAR.Open;


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

procedure TFArea.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Q_AREA.close ;
  Q_PAR.close;  
  Q_POS.close ;
  action := cafree ;
end;

procedure TFArea.wwDBEdit2Enter(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFArea.wwDBEdit2Exit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Clwindow;
end;

procedure TFArea.wwDBEdit1Enter(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFArea.wwDBEdit1Exit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Clwindow;
end;


procedure TFArea.Q_POSAfterPost(DataSet: TDataSet);
var StrCOD : string ;
begin
   StrCOD :=  Q_POSPOS_COD.asstring ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_POS])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_POS.close ;
   Q_POS.Open ;
   Q_POS.locate('POS_COD',StrCOD,[]);


end;
  procedure TFArea.Q_POSAfterDelete(DataSet: TDataSet);
var StrCOD : string ;
begin
   StrCOD :=  Q_POSPOS_COD.asstring ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_POS])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_POS.close ;
   Q_POS.Open ;
   Q_POS.locate('POS_COD',StrCOD,[]);


end;

procedure TFArea.Q_POSNewRecord(DataSet: TDataSet);
begin
  Q_POSAR_ID.asstring := Q_AREAAR_ID.asstring ;
  Q_POSPOS_UTILIZADO.asstring := 'N';
  Q_POSSTATUS.AsString := 'D';

end;

procedure TFArea.TabbedNotebook1Click(Sender: TObject);
begin
  If (TabbedNotebook1.pageindex = 0) then
     DBNavigator1.datasource := DS_AREA;

  If (TabbedNotebook1.pageindex = 1) then begin
     DBNavigator1.datasource := DS_POs;
     Q_POS.edit;
     Q_POS.cancel;

     If (VALE = 'F') then
         DBNavigator1.enabled := false
      else
       DBNavigator1.enabled := true ;
  end ;

end;

procedure TFArea.TabbedNotebook1Change(Sender: TObject; NewTab: Integer;
  var AllowChange: Boolean);
begin
   DBNavigator1.enabled := true ;
   If  (Q_AREAAR_CONTROL_POS.asstring = 'S') then begin
       PANEL4.visible := true ;
       VALE := 'T'
   end else begin
       PANEL4.visible := false ;
       VALE := 'F'
   end ;


end;

procedure TFArea.FormCreate(Sender: TObject);
VAR IK : Integer;
begin
   for IK := 0 TO PRED(ComponentCount) do begin
       if Components[IK] is TwwDBGrid then begin
           (Components[IK] as TwwDBGrid).TitleColor := clBtnFace;
           (Components[IK] as TwwDBGrid).TitleFont.Color := clBlack;
       end;
   end;
   TabbedNotebook1.pageindex := 0 ; 
end;

procedure TFArea.EmpLIVREEnter(Sender: TObject);
begin
  (Sender as TwwDBcombobox).Color := ClAqua;
end;

procedure TFArea.EmpLIVREExit(Sender: TObject);
begin
  (Sender as TwwDBcombobox).Color := Clwindow ;

   { If (Q_AREA.state = dsedit ) or (Q_AREA.state = dsinsert ) then begin
          If Q_AREAAR_EMPILHA_LIVRE.asstring = 'S' then begin
              wwDBEdit9.enabled := true    ;
              wwDBEdit9.setfocus ;
           end else

              wwDBEdit9.enabled := false ;   
    end ;    }
end;

procedure TFArea.wwDBEdit9Enter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFArea.wwDBEdit9Exit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFArea.DS_AREADataChange(Sender: TObject; Field: TField);
begin
     If  (Q_AREAAR_CONTROL_POS.asstring = 'S') or
         (Q_AREAAR_CONTROL_POS.asstring = '') then begin
         Label10.visible   := true    ;
         Label30.visible   := true    ;
         EmpLivre.visible  := true   ;
         wwDBEdit9.visible := true  ;
     end else begin
         Label10.visible := false   ;
         Label30.visible := false   ;
         EmpLivre.visible := false  ;
         wwDBEdit9.visible := false ;
     end ;


     {If (Q_AREA.state = dsedit ) or (Q_AREA.state = dsinsert ) then begin
           If (Q_AREAAR_CONTROL_POS.asstring = 'S') or
               (Q_AREAAR_CONTROL_POS.asstring = '') then begin
               ///Q_AREA.edit ;
               Q_AREAAR_EMPILHA_LIVRE.asstring := 'N';
               Q_AREAAR_EMPILHA_MAX.asstring   := '0' ;
               ///Q_AREA.post ;

           end else begin 
               //Q_AREA.edit ;
               Q_AREAAR_EMPILHA_LIVRE.asstring := 'S';
               Q_AREAAR_EMPILHA_MAX.asstring   := '9999' ;
               //Q_AREA.post ;

              { Q_POSaux.close;
               Q_POSaux.Sql.Clear;
               Q_POSaux.Sql.Add('Select count(*) as xvalor from  AREA_POSICOES ') ;
               Q_POSaux.Sql.Add(' where AR_ID = ' + Q_AREAAR_ID.asstring ) ;
               Q_POSaux.open ;

               If  Q_POSaux.fieldbyname('XVALOR').asinteger = 0 then begin
                   Q_POSaux.close;
                   Q_POSaux.Sql.Clear;
                   Q_POSaux.Sql.Add(' insert into AREA_POSICOES (AR_ID,POS_COD,POS_UTILIZADO) ') ;
                   Q_POSaux.Sql.Add(' values ( ' );
                   Q_POSaux.Sql.Add( inttostr(Q_AREAAR_ID.asinteger) + ',');
                   Q_POSaux.Sql.Add( '''' + '9999' + '''' + ',');
                   Q_POSaux.Sql.Add( '''' + 'N' + '''' + ')' );
                   Q_POSaux.ExecSql;
               end ;  }

        {   end  ;
   end ;    }




end;

procedure TFArea.Q_AREABeforeDelete(DataSet: TDataSet);
begin
   Q_POSaux.close;
   Q_POSaux.Sql.Clear;
   Q_POSaux.Sql.Add(' delete from AREA_POSICOES ') ;
   Q_POSaux.Sql.Add(' where AR_ID = ' + Q_AREAAR_ID.asstring ) ;
   Q_POSaux.ExecSql;
end;

procedure TFArea.Q_AREANewRecord(DataSet: TDataSet);
begin
  Q_AREAAR_EMPILHA_LIVRE.asstring :=  'N' ;
  Q_AREAAR_EMPILHA_MAX.asinteger := 0 ;
  Q_AREAAR_DISPONIVEL.asstring :=  'S' ;
end;

procedure TFArea.Q_AREABeforePost(DataSet: TDataSet);
begin
    If (wwDBComboBox3.text = '') then begin
        MessageDlg('Campo Controla Posição é de Preechimento obrigatório !',mtWarning,[mbok],0);
        wwDBComboBox3.setfocus ;
        abort ;
    end ;


    If (wwDBComboBox4.text = '') then begin
        MessageDlg('Campo Disponível (S/N) é de Preechimento obrigatório !',mtWarning,[mbok],0);
        wwDBComboBox4.setfocus ;
        abort ;
    end ;

    
    If (EmpLIVRE.text = '') then begin
        MessageDlg('Campo Empilhamento Livre é de Preechimento obrigatório !',mtWarning,[mbok],0);
        EmpLIVRE.setfocus ;
        abort ;
    end ;

     If (wwDBEdit9.text = '') then begin
        MessageDlg('Campo Empilhamento MAX. é de Preechimento obrigatório !',mtWarning,[mbok],0);
        wwDBEdit9.setfocus ;
        abort ;
    end ;
end;

procedure TFArea.wwDBComboBox4Enter(Sender: TObject);
begin
   (Sender as TwwDBcombobox).Color := ClAqua;
end;

procedure TFArea.wwDBComboBox4Exit(Sender: TObject);
begin
     (Sender as TwwDBcombobox).Color := Clwindow ;
end;

procedure TFArea.SpeedButton1Click(Sender: TObject);
begin
   Application.CreateForm(TFRelarea,FRelarea);
   FRelarea.AREA.Preview;
   FRelarea.Close;
end;

procedure TFArea.wwDBLookupCombo1Exit(Sender: TObject);
begin
   (Sender as TwwDBLookupCombo).Color := Clwindow ;
end;

procedure TFArea.wwDBLookupCombo1Enter(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := ClAQUA ;
end;



procedure TFArea.cboAreaCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
   cboPosicao.Text := '';
end;

procedure TFArea.cboAreaChange(Sender: TObject);
begin
    cboPosicao.Text := '';
end;

procedure TFArea.RzBitBtn1Click(Sender: TObject);
begin
    IF cboArea.Text <> '' then begin
        IF cboPosicao.Text <> '' then
        begin
            qrAux.Parameters[0].Value := StrToInt(cboPosicao.LookupValue);
            qrAux.ExecSQL;
            cboArea.Text := '';
            cboPosicao.Text := '';
            cboArea.SetFocus;
        end;
    end;
end;

procedure TFArea.DS_POSDataChange(Sender: TObject; Field: TField);
begin
  qrPos.close;
  qrPos.Parameters[0].Value := Q_AREAAR_ID.Value;
  qrPos.Open;
end;

procedure TFArea.wwDBGrid2CalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
   if Q_POSSTATUS.AsString = 'B' then
        ABrush.Color := clRed;

   if Highlight then
        AFont.Color := clBlack
   else
        AFont.Color := clBlack;

end;

end.

