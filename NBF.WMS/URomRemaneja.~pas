unit URomRemaneja;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, StdCtrls, Buttons, ExtCtrls, wwdblook, Mask, wwdbedit, Grids,
  Wwdbigrd, Wwdbgrid, Db, Wwdatsrc, DBTables, Wwquery, ComCtrls, Tabnotbk,
  Wwdotdot, Wwdbcomb, wwstorep, ADODB;

type
  TFRomRemaneja = class(TForm)
    Panel2: TPanel;
    SpeedButton3: TSpeedButton;
    Label4: TLabel;
    DBNavigator1: TDBNavigator;
    Q_ESTQ: TwwQuery;
    DS_ESTQ: TwwDataSource;
    Q_ESTQPOS_ID: TIntegerField;
    Q_ESTQPRO_ID: TIntegerField;
    Q_ESTQESTQ_DT_ENTRADA: TDateTimeField;
    Q_ESTQESTQ_DT_SAIDA: TDateTimeField;
    Q_ESTQROM_ID_ENT: TIntegerField;
    Q_ESTQROM_ID_SAIDA: TIntegerField;
    Q_ESTQROM_DTBATCH: TDateTimeField;
    Q_ESTQROM_DTVENCTO: TDateTimeField;
    Q_ESTQESTQ_LOTE: TStringField;
    Q_ESTQESTQ_TAG: TIntegerField;
    Q_ESTQESTQ_DT_ULMOV: TDateTimeField;
    Q_ESTQPAR_ID: TIntegerField;
    Q_ESTQPRO_DESC: TStringField;
    Q_ESTQUVEN_NOME: TStringField;
    Q_ESTQAR_NOME: TStringField;
    Q_ESTQPRO_COD: TStringField;
    Q_ROM: TwwQuery;
    DS_ROM: TwwDataSource;
    Q_ROMRREM_ID: TAutoIncField;
    Q_ROMPAR_ID: TIntegerField;
    Q_ROMRREM_DATA: TDateTimeField;
    Q_PAR: TwwQuery;
    Q_PARPAR_NOME: TStringField;
    Q_PARPAR_ID: TAutoIncField;
    Q_PARPAR_RAZA: TStringField;
    UPD_ROM: TUpdateSQL;
    TabbedNotebook1: TTabbedNotebook;
    Label18: TLabel;
    DBText4: TDBText;
    Label17: TLabel;
    DBText10: TDBText;
    Panel1: TPanel;
    Label6: TLabel;
    wwDBEdit6: TwwDBEdit;
    Label24: TLabel;
    wwDBLookupCombo10: TwwDBLookupCombo;
    Label28: TLabel;
    wwDBEdit11: TwwDBEdit;
    DS_PAR: TwwDataSource;
    Panel3: TPanel;
    Panel4: TPanel;
    DBText1: TDBText;
    wwDBLookupCombo2: TwwDBLookupCombo;
    Label2: TLabel;
    Label3: TLabel;
    wwDBEdit1: TwwDBEdit;
    Label5: TLabel;
    Label7: TLabel;
    wwDBEdit2: TwwDBEdit;
    wwDBEdit3: TwwDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    wwDBEdit4: TwwDBEdit;
    Label1: TLabel;
    wwDBLookupCombo1: TwwDBLookupCombo;
    wwDBLookupCombo7: TwwDBLookupCombo;
    Label51: TLabel;
    Q_IROM: TwwQuery;
    DS_IROM: TwwDataSource;
    UPD_IROM: TUpdateSQL;
    Q_IROMRREMI_ID: TAutoIncField;
    Q_IROMRREM_ID: TIntegerField;
    Q_IROMTIPO: TStringField;
    Q_IROMESTQ_ID: TIntegerField;
    Q_IROMAR_ID: TIntegerField;
    Q_IROMPOS_ID: TIntegerField;
    Q_IROMPRO_ID: TIntegerField;
    Q_IROMPALLET_TAG: TIntegerField;
    Q_IROMLOTE: TStringField;
    Q_IROMBATCH: TDateTimeField;
    Q_IROMVENCIMENTO: TDateTimeField;
    Q_AR: TwwQuery;
    Q_POS: TwwQuery;
    Q_POSPOS_COD: TStringField;
    Q_POSAR_ID: TIntegerField;
    Q_POSPOS_UTILIZADO: TStringField;
    Q_POSPOS_ID: TAutoIncField;
    DS_AR: TwwDataSource;
    Label10: TLabel;
    Q_PROD: TwwQuery;
    Q_PRODPRO_COD: TStringField;
    Q_PRODPRO_DESC: TStringField;
    Q_PRODPRO_ID: TAutoIncField;
    Q_PRODCLIN_ID: TIntegerField;
    DS_PROD: TwwDataSource;
    Q_CLIN: TwwQuery;
    Q_CLINCLIN_RAZA: TStringField;
    Q_CLINCLIN_ID: TAutoIncField;
    Q_IROMCLIN_ID: TIntegerField;
    DS_CLIN: TwwDataSource;
    Q_ESTQAR_ID: TIntegerField;
    Q_ESTQCLIN_ID: TIntegerField;
    Q_AUX: TwwQuery;
    Label75: TLabel;
    Panel5: TPanel;
    GroupBox6: TGroupBox;
    Label15: TLabel;
    Label20: TLabel;
    Label16: TLabel;
    wwDBLookupCombo3: TwwDBLookupCombo;
    wwDBLookupCombo4: TwwDBLookupCombo;
    wwDBLookupCombo5: TwwDBLookupCombo;
    BitBtn1: TBitBtn;
    GRID: TwwDBGrid;
    wwDBComboBox1: TwwDBComboBox;
    Label11: TLabel;
    DBCB_CFA_CANA: TwwDBComboBox;
    Q_IROMSOMASUBTRAI: TIntegerField;
    Q_ARAR_ID: TAutoIncField;
    Q_ARAR_NOME: TStringField;
    Q_ARAR_CONTROL_POS: TStringField;
    Q_ARAR_EMPILHA_LIVRE: TStringField;
    Q_ARAR_EMPILHA_MAX: TIntegerField;
    Q_ARAR_DISPONIVEL: TStringField;
    Q_ARPAR_ID: TIntegerField;
    Label12: TLabel;
    DBText2: TDBText;
    Panel6: TPanel;
    Q_PROD2: TwwQuery;
    Q_PROD2PRO_ID: TAutoIncField;
    Q_PROD2PRO_COD: TStringField;
    Q_PROD2PRO_DESC: TStringField;
    Q_IROMPROdesc: TStringField;
    SpeedButton2: TSpeedButton;
    Q_CLIN2: TwwQuery;
    Q_CLIN2CLIN_RAZA: TStringField;
    Q_CLIN2CLIN_ID: TAutoIncField;
    Q_PROD3: TwwQuery;
    Q_PROD3PRO_ID: TAutoIncField;
    Q_PROD3PRO_COD: TStringField;
    Q_PROD3PRO_DESC: TStringField;
    Q_PROD3CLIN_ID: TIntegerField;
    Q_AR2: TwwQuery;
    Q_AR2AR_ID: TAutoIncField;
    Q_AR2AR_NOME: TStringField;
    Q_AR2AR_CONTROL_POS: TStringField;
    Q_AR2AR_EMPILHA_LIVRE: TStringField;
    Q_AR2AR_EMPILHA_MAX: TIntegerField;
    Q_AR2AR_DISPONIVEL: TStringField;
    Q_AR2PAR_ID: TIntegerField;
    Panel7: TPanel;
    BitBtn2: TBitBtn;
    Q_ROMCONFIRMA: TStringField;
    STP_REMANEJA: TwwStoredProc;
    Q_ESTQESTQ_ID: TAutoIncField;
    Q_ESTQOS_ID_ORIG: TIntegerField;
    Q_ESTQMANI_ID: TIntegerField;
    Q_ESTQESTQ_PESO: TFloatField;
    Q_ESTQOS_ID_DEST: TIntegerField;
    Q_ESTQUVEN_ID: TIntegerField;
    Q_ESTQAR_ID_ANTERIOR: TIntegerField;
    Q_ESTQPOS_ID_ANTERIOR: TIntegerField;
    Q_ESTQGEROU_OPER_ROMSAIDA: TStringField;
    Q_ESTQESTQ_QTDE_RETIRA: TFloatField;
    Q_ESTQESTQ_QTDE: TFloatField;
    Q_IROMDISPONIVEL: TFloatField;
    Q_IROMQTDE: TFloatField;
    DS_CLIN2: TwwDataSource;
    Q_POS2: TwwQuery;
    Q_POS2POS_COD: TStringField;
    Q_POS2POS_ID: TAutoIncField;
    Q_ESTQPOSCOD: TStringField;
    DBText3: TDBText;
    DS_PROD3: TwwDataSource;
    RadioGroup2: TRadioGroup;
    wwDBLookupCombo6: TwwDBLookupCombo;
    DBText5: TDBText;
    Label13: TLabel;
    Label14: TLabel;
    Q_IROMPOS_ID_ANTERIOR: TIntegerField;
    Q_PARULT_TAG: TIntegerField;
    Label19: TLabel;
    BitBtn3: TBitBtn;
    pnlAlteraDado: TPanel;
    GroupBox1: TGroupBox;
    qrAltera: TADOQuery;
    qrAlteraESTQ_ID: TAutoIncField;
    qrAlteraROM_DTBATCH: TDateTimeField;
    qrAlteraROM_DTVENCTO: TDateTimeField;
    Label21: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    Label22: TLabel;
    DBEdit2: TDBEdit;
    Label23: TLabel;
    DBEdit3: TDBEdit;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    qrAlteraESTQ_LOTE: TStringField;
    Label25: TLabel;
    DBEdit4: TDBEdit;
    qrAlteraSTATUS: TStringField;
    btnConsulta: TButton;
    procedure SpeedButton3Click(Sender: TObject);
    procedure wwDBLookupCombo10Enter(Sender: TObject);
    procedure wwDBLookupCombo10Exit(Sender: TObject);
    procedure wwDBEdit11Enter(Sender: TObject);
    procedure wwDBEdit11Exit(Sender: TObject);
    procedure wwDBEdit6Exit(Sender: TObject);
    procedure wwDBEdit6Enter(Sender: TObject);
    procedure Q_ROMAfterPost(DataSet: TDataSet);
    procedure Q_ROMAfterDelete(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TabbedNotebook1Click(Sender: TObject);
    procedure Q_IROMAfterDelete(DataSet: TDataSet);
    procedure Q_IROMAfterPost(DataSet: TDataSet);
    procedure Q_IROMNewRecord(DataSet: TDataSet);
    procedure DS_IROMDataChange(Sender: TObject; Field: TField);
    procedure wwDBLookupCombo6Exit(Sender: TObject);
    procedure wwDBLookupCombo6CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure wwDBLookupCombo2CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure BitBtn1Click(Sender: TObject);
    procedure wwDBComboBox1CloseUp(Sender: TwwDBComboBox; Select: Boolean);
    procedure GRIDDblClick(Sender: TObject);
    procedure Q_ROMNewRecord(DataSet: TDataSet);
    procedure wwDBLookupCombo6Enter(Sender: TObject);
    procedure wwDBLookupCombo2Enter(Sender: TObject);
    procedure wwDBLookupCombo7Enter(Sender: TObject);
    procedure wwDBLookupCombo1Enter(Sender: TObject);
    procedure wwDBLookupCombo2Exit(Sender: TObject);
    procedure wwDBLookupCombo7Exit(Sender: TObject);
    procedure wwDBLookupCombo1Exit(Sender: TObject);
    procedure DBCB_CFA_CANAEnter(Sender: TObject);
    procedure DBCB_CFA_CANAExit(Sender: TObject);
    procedure wwDBComboBox1Enter(Sender: TObject);
    procedure wwDBComboBox1Exit(Sender: TObject);
    procedure wwDBLookupCombo7CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure SpeedButton2Click(Sender: TObject);
    procedure wwDBLookupCombo4CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure wwDBLookupCombo4Enter(Sender: TObject);
    procedure wwDBLookupCombo4Exit(Sender: TObject);
    procedure wwDBLookupCombo3Enter(Sender: TObject);
    procedure wwDBLookupCombo3Exit(Sender: TObject);
    procedure wwDBLookupCombo5Enter(Sender: TObject);
    procedure wwDBLookupCombo5Exit(Sender: TObject);
    procedure Q_IROMBeforePost(DataSet: TDataSet);
    procedure DS_ROMDataChange(Sender: TObject; Field: TField);
    procedure BitBtn2Click(Sender: TObject);
    procedure Q_ROMBeforeInsert(DataSet: TDataSet);
    procedure Q_ROMAfterCancel(DataSet: TDataSet);
    procedure Q_IROMBeforeScroll(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure btnConsultaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRomRemaneja: TFRomRemaneja;

implementation
uses USenha,UMENU, UAbTabelas, UAlteraDados, ufrmConsultaRemanejamento ;
{$R *.DFM}

procedure TFRomRemaneja.SpeedButton3Click(Sender: TObject);
begin
  close ;
end;

procedure TFRomRemaneja.wwDBLookupCombo10Enter(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFRomRemaneja.wwDBLookupCombo10Exit(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := Clwindow;
end;

procedure TFRomRemaneja.wwDBEdit11Enter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFRomRemaneja.wwDBEdit11Exit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Clwindow;
end;

procedure TFRomRemaneja.wwDBEdit6Exit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Clwindow;
end;

procedure TFRomRemaneja.wwDBEdit6Enter(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFRomRemaneja.Q_ROMAfterPost(DataSet: TDataSet);
var
  STRESTQ : string ;
begin
   STRESTQ := Q_ROMRREM_ID.asstring ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_ROM])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_ROM.close ;
   Q_ROM.Open ;

   if STRESTQ = '' then begin
     Q_AUX.close ;
     Q_AUX.Sql.Clear ;
     Q_AUX.Sql.Add( ' select max(RREM_ID) as Numero from ROMANEIO_REMANEJA ' ) ;
     Q_AUX.open ;
     STRESTQ := Q_AUX.fieldbyname('Numero').asstring ;
   end  ;
    Q_ROM.locate('RREM_ID',STRESTQ,[])    ;


end;

procedure TFRomRemaneja.Q_ROMAfterDelete(DataSet: TDataSet);
var
  STRESTQ : string ;
begin
   STRESTQ := Q_ROMRREM_ID.asstring ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_ROM])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_ROM.close ;
   Q_ROM.Open ;

   If (STRESTQ <> '') then begin
       Q_ROM.close ;
       Q_ROM.Open ;
       Q_ROM.locate('RREM_ID',STRESTQ,[]);
   end ;


end;

procedure TFRomRemaneja.FormCreate(Sender: TObject);
VAR IK : Integer;
begin
   for IK := 0 TO PRED(ComponentCount) do begin
       if Components[IK] is TwwDBGrid then begin
           (Components[IK] as TwwDBGrid).TitleColor := clBtnFace;
           (Components[IK] as TwwDBGrid).TitleFont.Color := clBlack;
       end;
   end;
  Q_ROM.open ;
  Q_ROM.LAST ;
  Q_PAR.open ;  
  Q_IROM.open ;
  Q_AR.open ;
  Q_POS.open ;
  Q_CLIN.open ;
  Q_PROD.open ;
  Q_PROD2.open ;
  ///Q_ESTQ.open ;
  if FMenu.SqlUsuariosRemanejaSN.AsString = 'S' then
      Q_CLIN2.open
  else
  begin
      Q_CLIN2.sql.Clear;
      Q_CLIN2.SQL.Add(
       ' Select CLIN_RAZA,CLIN_ID from CLIENTENBF where '  +
       ' (CLIN_CONTRATO <> ''I'' and CLIN_CONTRATO <> ''R'') and RemanejaSN = ''S'' ' +
       ' order by CLIN_RAZA '
      );
      Q_CLIN2.Open;
  end;
  Q_PROD3.open ;
  Q_AR2.open ;
  Q_POS2.open ; 
  TabbedNotebook1.pageindex := 0;
end;

procedure TFRomRemaneja.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Q_PROD2.close ;
  Q_ROM.close   ;
  Q_PAR.close   ;
  Q_IROM.close  ;
  Q_AR.close    ;
  Q_POS.close   ;
  Q_CLIN.close  ;
  Q_PROD.close  ;
  Q_ESTQ.close  ;
  Q_CLIN2.close ;
  Q_PROD3.close ;
  Q_AR2.close ;
  Q_POS2.close ;
  action := cafree ;
end;

procedure TFRomRemaneja.TabbedNotebook1Click(Sender: TObject);
begin
   If (Q_ROM.state = dsedit ) or (Q_ROM.state = dsinsert )  then
      Q_ROM.post ;

   If Panel5.visible = true then begin
      Q_IROM.cancel ;
      Panel5.visible := false ;
      abort ;
   end ;

   IF Q_ROMRREM_ID.asstring <> '' then
     panel3.visible := true
    else
     panel3.visible := false ;


  If (Q_IROM.state = dsedit ) or (Q_IROM.state = dsinsert )  then
      Q_IROM.post ;
  If (TabbedNotebook1.pageindex = 0) then begin
     DBNavigator1.VisibleButtons  := [nbFirst,nbPrior,nbNext,nbLast,NBINSERT,nbdelete,nbpost,nbcancel];
     DBNavigator1.datasource := DS_ROM;
  end ;

  If (TabbedNotebook1.pageindex = 1) then begin
     DBNavigator1.datasource := DS_IROM;
     IF Q_ROMCONFIRMA.ASSTRING = 'S' then begin
        DBNavigator1.VisibleButtons  := [nbFirst,nbPrior,nbNext,nbLast] ;
        DBNavigator1.width := 192 ;
     end ELSE begin
        DBNavigator1.width := 192 ;
        DBNavigator1.VisibleButtons  := [nbFirst,nbPrior,nbNext,nbLast,NBINSERT,nbdelete,nbpost,nbcancel];
     end ;
     Q_IROM.edit ;
     Q_IROM.cancel ;
  end ;


  if TabbedNotebook1.PageIndex = 1 then
        BitBtn3.Visible := True
  else
        BitBtn3.Visible := False;

end;

procedure TFRomRemaneja.Q_IROMAfterDelete(DataSet: TDataSet);
var
  STRESTQ : string ;
begin
   STRESTQ := Q_IROMRREMI_ID.asstring ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_IROM])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_IROM.close ;
   Q_IROM.Open ;

   If (STRESTQ <> '') then begin
       Q_IROM.close ;
       Q_IROM.Open ;
       Q_IROM.locate('RREMI_ID',STRESTQ,[]);
   end ;


end;

procedure TFRomRemaneja.Q_IROMAfterPost(DataSet: TDataSet);
var
  STRESTQ : string ;
begin
   STRESTQ := Q_IROMRREMI_ID.asstring ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_IROM])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;

   Q_IROM.close ;
   Q_IROM.Open ;

   if STRESTQ = '' then begin
     Q_AUX.close ;
     Q_AUX.Sql.Clear ;
     Q_AUX.Sql.Add( ' select max(RREMI_ID) as Numero from ROMANEIO_REMANEJAITENS ' ) ;
     Q_AUX.open ;
     STRESTQ := Q_AUX.fieldbyname('Numero').asstring ;
   end  ;
    Q_IROM.locate('RREMI_ID',STRESTQ,[])    ;

   { Q_AUX.close ;
    Q_AUX.Sql.Clear ;
    Q_AUX.Sql.Add( ' UPDATE PARAMETRO set ULT_TAG = '  + '''' + inttostr(Q_PARULT_TAG.asinteger + 1)  + '''' ) ;
    Q_aux.ExecSql;  }


   If Q_ARAR_CONTROL_POS.asstring = 'N' then begin
      Q_aux.Sql.Clear;
      Q_aux.Sql.Add(' UPDATE romaneio_remanejaitens SET POS_ID = null');
      Q_aux.Sql.Add(' where RREMI_ID = ' + STRESTQ );
      Q_aux.ExecSql;
   end ;


    wwDBLookupCombo6.visible := true ;
    Q_IROM.edit ;
    Q_IROM.cancel ;
    DBText5.visible := false ;
    wwDBLookupCombo2.visible := true ;
    DBText1.left := 273 ;
end;

procedure TFRomRemaneja.Q_IROMNewRecord(DataSet: TDataSet);
begin
 Q_IROMRREM_ID.asstring := Q_ROMRREM_ID.asstring ;
end;

procedure TFRomRemaneja.DS_IROMDataChange(Sender: TObject; Field: TField);
begin
   IF (Q_IROM.state <> dsedit ) and (Q_IROM.state <> dsinsert )  then
      Label19.caption := Q_IROMPALLET_TAG.asstring ;


     IF Q_IROM.recordcount > 0 then begin
        If (Q_ROMCONFIRMA.asstring = 'N') then
           BitBtn2.enabled := true
          else
           BitBtn2.enabled := false ;
     end else
       BitBtn2.enabled := false ;

   Q_POS2.open ;

   if wwDBComboBox1.itemindex  = 0   then  begin
      If wwDBLookupCombo2.text = '' then begin
         //PANEL12.visible := true ;
         wwDBLookupCombo2.enabled := false ;
      end else begin
         //PANEL12.visible := false ;
         wwDBLookupCombo2.enabled := true ;
      end ;


      Label1.visible := true ;
      Label1.left := 62;
      wwDBLookupCombo1.visible := true ;
      wwDBLookupCombo1.enabled := true ;
      wwDBLookupCombo1.left := 143;

      Label14.visible := false ;
      Label13.visible := false ;

      wwDBLookupCombo7.enabled := true ;
      wwDBLookupCombo6.enabled := true ;
      DBCB_CFA_CANA.enabled := true ;
      //wwdbedit7.enabled := true ;
      wwdbedit1.enabled := true ;
      wwdbedit2.enabled := true ;
      wwdbedit3.enabled := true ;
      wwdbedit4.enabled := true ;
      PANEL6.visible := true ;
      PANEL7.visible := false ;

      If (Q_ARAR_ID.asstring <> '') and
         (wwDBLookupCombo7.text <> '')  then  begin
         Q_POS.close ;
         Q_POS.Sql.Clear ;
         Q_POS.Sql.Add(' select POS_COD,AR_ID,POS_UTILIZADO,POS_ID ');
         Q_POS.Sql.Add(' from AREA_POSICOES where  ');
         Q_POS.Sql.Add(' AR_ID = ' + Q_ARAR_ID.asstring );
         Q_POS.Sql.Add(' and POS_UTILIZADO = ' + '''' + 'N' + '''');
         Q_POS.Sql.Add(' order by POS_COD');
         Q_POS.Open ;
      end ;

      If wwDBLookupCombo1.text = '' then
         wwDBLookupCombo1.enabled := false
       else
         wwDBLookupCombo1.enabled := true;

   end else begin
      if wwDBComboBox1.itemindex  = 1 then  begin
          wwDBLookupCombo6.enabled := false ;
          wwDBLookupCombo2.enabled := false ;
          wwDBLookupCombo7.enabled := false ;

          Label1.visible := false ;
          wwDBLookupCombo1.visible := false ;
          wwDBLookupCombo1.enabled := false ;
          Label14.visible := true ;

          IF Q_IROMPOS_ID.asstring  <> '' then begin
              Q_POS2.locate('POS_ID',Q_IROMPOS_ID.asstring,[])    ;
              Label14.caption := Q_POS2POS_COD.asstring ;
          end else Label14.caption := '' ;
          Label13.visible := true ;


          //wwdbedit7.enabled := false ;
          wwdbedit1.enabled := false ;
          wwdbedit2.enabled := false ;
          wwdbedit3.enabled := false ;
          wwdbedit4.enabled := true ;

          If (Q_ARAR_ID.asstring <> '') and
             (wwDBLookupCombo7.text <> '')   Then  begin
             Q_POS.close ;
             Q_POS.Sql.Clear ;
             Q_POS.Sql.Add(' select POS_COD,AR_ID,POS_UTILIZADO,POS_ID ');
             Q_POS.Sql.Add(' from AREA_POSICOES where  ');
             Q_POS.Sql.Add(' AR_ID = ' + Q_ARAR_ID.asstring );
             ///Q_POS.Sql.Add(' and POS_UTILIZADO = ' + '''' + 'N' + '''');
             Q_POS.Sql.Add(' order by POS_COD');
             Q_POS.Open ;
          end ;
          PANEL6.visible := false ;
          PANEL7.visible := false ;

      end ;

      if wwDBComboBox1.itemindex  = 2 then  begin
          wwDBLookupCombo6.enabled := false ;
          wwDBLookupCombo2.enabled := false ;
          wwDBLookupCombo7.enabled := true ;


          Label1.visible := true ;
          Label1.left := 254;
          wwDBLookupCombo1.visible := true ;
          wwDBLookupCombo1.enabled := true ;
          wwDBLookupCombo1.left := 335;

          Label14.visible := true ;
          IF Q_IROMPOS_ID_ANTERIOR.asstring  <> '' then begin
              Q_POS2.locate('POS_ID',Q_IROMPOS_ID_ANTERIOR.asstring,[])    ;
              Label14.caption := Q_POS2POS_COD.asstring ;
          end else Label14.caption := '' ;
          Label13.visible := true ;



          //wwdbedit7.enabled := true ;
          wwdbedit1.enabled := true ;
          wwdbedit2.enabled := true ;
          wwdbedit3.enabled := true ;
          wwdbedit4.enabled := false ;
          DBCB_CFA_CANA.enabled := false ;

          {IF RadioGroup2.itemindex = 0 then begin
               If (Q_ARAR_ID.asstring <> '') and
                  (wwDBLookupCombo7.text <> '')  then  begin
                 Q_POS.close ;
                 Q_POS.Sql.Clear ;
                 Q_POS.Sql.Add(' select POS_COD,AR_ID,POS_UTILIZADO,POS_ID ');
                 Q_POS.Sql.Add(' from AREA_POSICOES where  ');
                 Q_POS.Sql.Add(' AR_ID = ' + Q_ARAR_ID.asstring );
                 ////Q_POS.Sql.Add(' and POS_UTILIZADO = ' + '''' + 'N' + '''');
                 Q_POS.Sql.Add(' order by POS_COD');
                 Q_POS.Open ;
              end ;
          end else begin
               If (Q_ARAR_ID.asstring <> '') and
                  (wwDBLookupCombo7.text <> '')   then  begin
                 Q_POS.close ;
                 Q_POS.Sql.Clear ;
                 Q_POS.Sql.Add(' select POS_COD,AR_ID,POS_UTILIZADO,POS_ID ');
                 Q_POS.Sql.Add(' from AREA_POSICOES where  ');
                 Q_POS.Sql.Add(' AR_ID = ' + Q_ARAR_ID.asstring );
                 Q_POS.Sql.Add(' and POS_UTILIZADO = ' + '''' + 'N' + '''');
                 Q_POS.Sql.Add(' order by POS_COD');
                 Q_POS.Open ;
              end ;
          end ;   }

          IF (Q_IROM.state = dsedit ) or (Q_IROM.state = dsinsert )  then begin

                 Q_POS.close ;
                 Q_POS.Sql.Clear ;
                 Q_POS.Sql.Add(' select POS_COD,AR_ID,POS_UTILIZADO,POS_ID ');
                 Q_POS.Sql.Add(' from AREA_POSICOES where  ');
                 Q_POS.Sql.Add(' AR_ID = ' + Q_ARAR_ID.asstring );
                 Q_POS.Sql.Add(' and POS_UTILIZADO = ' + '''' + 'N' + '''');
                 Q_POS.Sql.Add(' order by POS_COD');
                 Q_POS.Open ;

          end else begin
                 IF Q_ARAR_ID.asstring <> '' then begin
                     Q_POS.close ;
                     Q_POS.Sql.Clear ;
                     Q_POS.Sql.Add(' select POS_COD,AR_ID,POS_UTILIZADO,POS_ID ');
                     Q_POS.Sql.Add(' from AREA_POSICOES where  ');
                     Q_POS.Sql.Add(' AR_ID = ' + Q_ARAR_ID.asstring );
                     ////Q_POS.Sql.Add(' and POS_UTILIZADO = ' + '''' + 'N' + '''');
                     Q_POS.Sql.Add(' order by POS_COD');
                     Q_POS.Open ;
                 end ; 
          end ;


          PANEL6.visible := true ;
          PANEL7.visible := true ;
      end else DBCB_CFA_CANA.enabled := true ;
      PANEL6.visible := false ;
   end ;

   If wwDBComboBox1.itemindex  <> -1 then  begin
      Panel4.visible := true ;
      wwDBComboBox1.enabled := false ;

   end else  begin
      Panel4.visible := false ;
      wwDBComboBox1.enabled := true ;
   end ;

   IF (Q_POSPOS_ID.asstring  = '') or
      (wwDBLookupCombo7.text = '') then
       wwDBLookupCombo1.text := '' ;

end;

procedure TFRomRemaneja.wwDBLookupCombo6Exit(Sender: TObject);
begin

    { IF wwDBLookupCombo6.text = '' then begin
        wwDBLookupCombo2.enabled := false ;
        ///Panel12.visible := true ;
     end else begin
        wwDBLookupCombo2.enabled := true ;
        ////Panel12.visible := false ;
        wwDBLookupCombo2.setfocus ;
     end ; }
     If wwDBLookupCombo6.text = '' then begin
        //PANEL12.visible := true ;
        wwDBLookupCombo2.enabled := false ;
        wwDBLookupCombo2.lookupvalue := '' ;
        wwDBLookupCombo2.text  := '' ;
        wwDBLookupCombo7.setfocus ;
    end else begin
        ///PANEL12.visible := false ;
        wwDBLookupCombo2.enabled := true ;
        wwDBLookupCombo2.setfocus ;
    end ;

    (Sender as TwwDBlookupcombo).Color := Clwindow;
end;

procedure TFRomRemaneja.wwDBLookupCombo6CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
     wwDBLookupCombo2.lookupvalue := '' ;
     wwDBLookupCombo2.text  := '' ;
     //PANEL12.visible := true ;

     

end;

procedure TFRomRemaneja.wwDBLookupCombo2CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
   //panel12.visible := false ;

   
end;

procedure TFRomRemaneja.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
    If Panel5.visible = true then begin
      Q_IROM.cancel ;
      Panel5.visible := false ;
      abort ;
   end ;

    if button in [nbcancel] then  begin
       if wwDBComboBox1.itemindex  = -1 then
          Panel4.visible := false
        else
          Panel4.visible := true ;
    end ;

    if button in [nbInsert] then  begin
         If (TabbedNotebook1.pageindex = 0) then
           wwDBLookupCombo10.setfocus ;

         If (TabbedNotebook1.pageindex = 1) then begin
            Panel4.visible := false; 
            wwDBComboBox1.setfocus ;
         end ;
    end ;
end;

procedure TFRomRemaneja.BitBtn1Click(Sender: TObject);
begin
    { wwDBComboBox1.enabled := true ;
     Panel2.enabled := true;}

      Q_IROM.cancel ;
   if wwDBComboBox1.itemindex = -1 then
      Panel4.visible := false
    else
      Panel4.visible := true ;

   Panel5.visible := false;
   Q_ESTQ.close ;



end;

procedure TFRomRemaneja.wwDBComboBox1CloseUp(Sender: TwwDBComboBox;
  Select: Boolean);
begin
  /// If   (Q_IROM.state = dsedit ) or (Q_IROM.state = dsinsert )then begin
       If  wwDBComboBox1.itemindex <> 0 then begin
           Panel5.visible := true ;
           wwDBLookupCombo6.visible := false ;
           DBText5.visible := true ;
           wwDBLookupCombo2.visible := false ;
           DBText1.left := 144 ;
           Panel4.visible := false ;
       end else begin
           Panel5.visible := false ;
           wwDBLookupCombo6.visible := TRUE ;
           Panel4.visible := true ;
           wwDBLookupCombo6.enabled := true ;
           {wwDBComboBox1.enabled := false ;
           Panel2.enabled := false ;  }

           Label1.visible := true ;
            Label1.left := 62;
            wwDBLookupCombo1.visible := true ;
            wwDBLookupCombo1.enabled := true ;
            wwDBLookupCombo1.left := 143;

            Label14.visible := false ;
            Label13.visible := false ;

            Q_PAR.close ;
            Q_PAR.open ;
            Label19.caption := inttostr(Q_PARULT_TAG.asinteger + 1)  ;
       end ;

     ///end else begin
       {Panel5.visible := false ;
       If wwDBComboBox6.itemindex = 0 then
           Panel4.visible := true
         else
           Panel4.visible := false ; }
    ///end ;
end;

procedure TFRomRemaneja.GRIDDblClick(Sender: TObject);
begin
  ///Q_CLIN.LOCATE('CLIN_ID',Q_CLIN2CLIN_ID.asstring,[])    ;
  wwDBLookupCombo6.lookupvalue :=  Q_CLIN2CLIN_ID.asstring ;

  Q_IROMCLIN_ID.asstring :=  Q_CLIN2CLIN_ID.asstring ;
  Q_IROMPRO_ID.asstring  :=  Q_ESTQPRO_ID.asstring ;
  Q_IROMAR_ID.asstring   := Q_ESTQAR_ID.asstring ;

  Q_IROMPOS_ID_ANTERIOR.asstring  :=  Q_ESTQPOS_ID.asstring ;
  Q_IROMPOS_ID.asstring  :=  Q_ESTQPOS_ID.asstring ;
  ///Label14.caption := Q_ESTQPOSCOD.asstring ;



  Q_IROMPALLET_TAG.asstring := Q_ESTQESTQ_TAG.asstring ;
  Q_IROMLOTE.asstring  :=  Q_ESTQESTQ_LOTE.asstring ;
  Q_IROMBATCH.asstring := Q_ESTQROM_DTBATCH.asstring ;
  Q_IROMVENCIMENTO.asstring := Q_ESTQROM_DTVENCTO.asstring ;

  Q_IROMVENCIMENTO.asstring := Q_ESTQROM_DTVENCTO.asstring ;


  Q_IROMDISPONIVEL.asfloat := (Q_ESTQESTQ_QTDE.asfloat -
                               Q_ESTQESTQ_QTDE_RETIRA.asfloat) ;

  IF wwDBComboBox1.itemindex  <> 2 then
     Q_IROMqtde.asfloat := 0 else
     Q_IROMqtde.asfloat := (Q_ESTQESTQ_QTDE.asfloat -
                            Q_ESTQESTQ_QTDE_RETIRA.asfloat) ;


   Q_IROMESTQ_ID.asstring :=  Q_ESTQESTQ_ID.asstring ;


   IF wwDBComboBox1.itemindex = 2 then begin
       Q_POS.close ;
       Q_POS.Sql.Clear ;
       Q_POS.Sql.Add(' select POS_COD,AR_ID,POS_UTILIZADO,POS_ID ');
       Q_POS.Sql.Add(' from AREA_POSICOES where  ');
       Q_POS.Sql.Add(' AR_ID = ' + Q_ARAR_ID.asstring );
       Q_POS.Sql.Add(' and POS_UTILIZADO = ' + '''' + 'N'+ '''');
       Q_POS.Sql.Add(' order by POS_COD');
       Q_POS.Open ;
   end ;

  { end else begin
       Q_POS.close ;
       Q_POS.Sql.Clear ;
       Q_POS.Sql.Add(' select POS_COD,AR_ID,POS_UTILIZADO,POS_ID ');
       Q_POS.Sql.Add(' from AREA_POSICOES where  ');
       Q_POS.Sql.Add(' AR_ID = ' + Q_ARAR_ID.asstring );
       Q_POS.Sql.Add(' and POS_UTILIZADO = ' + '''' + 'N'+ '''');
       Q_POS.Sql.Add(' order by POS_COD');
       Q_POS.Open ;
   end ;   }


  {wwDBComboBox1.enabled := true ;
  Panel2.enabled := true ;}
  {Q_PROD.close ;
  Q_PROd.open ;   }

  Panel5.visible := false;
  Panel4.visible := true;
  Q_ESTQ.close ;
end;

procedure TFRomRemaneja.Q_ROMNewRecord(DataSet: TDataSet);
begin
  Q_ROMRREM_DATA.asdatetime := now ;
  Q_ROMCONFIRMA.asstring := 'N' ;
end;

procedure TFRomRemaneja.wwDBLookupCombo6Enter(Sender: TObject);
begin
  (Sender as TwwDBlookupcombo).Color := ClAqua;
end;

procedure TFRomRemaneja.wwDBLookupCombo2Enter(Sender: TObject);
begin
  (Sender as TwwDBlookupcombo).Color := ClAqua;
end;

procedure TFRomRemaneja.wwDBLookupCombo7Enter(Sender: TObject);
begin
  (Sender as TwwDBlookupcombo).Color := ClAqua;
end;

procedure TFRomRemaneja.wwDBLookupCombo1Enter(Sender: TObject);
begin
  (Sender as TwwDBlookupcombo).Color := ClAqua;
end;

procedure TFRomRemaneja.wwDBLookupCombo2Exit(Sender: TObject);
begin
  (Sender as TwwDBlookupcombo).Color := Clwindow;
end;

procedure TFRomRemaneja.wwDBLookupCombo7Exit(Sender: TObject);
begin
   If wwDBLookupCombo7.text = '' then begin
        wwDBLookupCombo1.enabled := false ;
        wwDBLookupCombo1.lookupvalue := '' ;
        wwDBLookupCombo1.text  := '' ;
        //wwDBedit7.setfocus ;
    end else begin
        ///PANEL12.visible := false ;
        wwDBLookupCombo1.enabled := true ;
        wwDBLookupCombo1.setfocus ;
    end ;

   Q_POS.close ;
   Q_POS.Sql.Clear ;
   Q_POS.Sql.Add(' select POS_COD,AR_ID,POS_UTILIZADO,POS_ID ');
   Q_POS.Sql.Add(' from AREA_POSICOES where  ');
   Q_POS.Sql.Add(' AR_ID = ' + Q_ARAR_ID.asstring );
   Q_POS.Sql.Add(' and POS_UTILIZADO = ' + '''' + 'N' + '''');
   Q_POS.Sql.Add(' order by POS_COD');
   Q_POS.Open ;

   (Sender as TwwDBlookupcombo).Color := Clwindow;
end;

procedure TFRomRemaneja.wwDBLookupCombo1Exit(Sender: TObject);
begin
 (Sender as TwwDBlookupcombo).Color := Clwindow ;
end;

procedure TFRomRemaneja.DBCB_CFA_CANAEnter(Sender: TObject);
begin
  (Sender as TwwDBcombobox).Color := ClAqua;
end;

procedure TFRomRemaneja.DBCB_CFA_CANAExit(Sender: TObject);
begin
  (Sender as TwwDBcombobox).Color := Clwindow;
end;

procedure TFRomRemaneja.wwDBComboBox1Enter(Sender: TObject);
begin
    (Sender as TwwDBcombobox).Color := ClAqua;
end;

procedure TFRomRemaneja.wwDBComboBox1Exit(Sender: TObject);
begin
    (Sender as TwwDBcombobox).Color := Clwindow ;

 if wwDBComboBox1.itemindex  = 0 then begin
     If (Q_IROM.state = dsedit ) or (Q_IROM.state = dsinsert )  then
        Q_IROMSOMASUBTRAI.asinteger := 1 ;

    

 end ;
 
end;

procedure TFRomRemaneja.wwDBLookupCombo7CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
     wwDBLookupCombo1.lookupvalue := '' ;
     wwDBLookupCombo1.text  := '' ;
end;

procedure TFRomRemaneja.SpeedButton2Click(Sender: TObject);
begin   //////////http://www.jogo-crl.pt.vu/
        Q_ESTQ.SQL.clear ;
        Q_ESTQ.SQL.ADD('Select A.*,B.PRO_DESC,B.PRO_COD,C.UVEN_NOME,D.AR_NOME, ');
        Q_ESTQ.SQL.ADD('F.CLIN_ID from ');
        Q_ESTQ.SQL.ADD('ESTOQUE A  LEFT OUTER JOIN ');
	Q_ESTQ.SQL.ADD('OS F ON A.OS_ID_ORIG = F.OS_ID, ');
        Q_ESTQ.SQL.ADD('PRODUTO B,UNIDVENDA C,');
        Q_ESTQ.SQL.ADD('AREA D where ');
        Q_ESTQ.SQL.ADD('A.PRO_ID = B.PRO_ID and   ');
        Q_ESTQ.SQL.ADD('A.UVEN_ID = C.UVEN_ID and  ');
        Q_ESTQ.SQL.ADD('A.AR_ID = D.AR_ID and  ');
        Q_ESTQ.SQL.ADD('A.PAR_ID = ' + Q_PARPAR_ID.asstring);
        Q_ESTQ.SQL.ADD('and A.ESTQ_DT_ENTRADA is not null ');
        Q_ESTQ.SQL.ADD('and A.ESTQ_QTDE_RETIRA = ' + inttostr(0));
        if wwDBLookupCombo5.text <> '' then
               Q_ESTQ.SQL.ADD ( 'and A.AR_ID =   ' + wwDBLookupCombo5.lookupvalue ) ;
        if wwDBLookupCombo4.text  <> '' then
               Q_ESTQ.SQL.ADD ( 'and B.CLIN_ID = ' + wwDBLookupCombo4.lookupvalue  ) ;
        if wwDBLookupCombo3.text <> '' then
               Q_ESTQ.SQL.ADD ( 'and A.PRO_ID =  ' + wwDBLookupCombo3.lookupvalue ) ;

        {IF RadioGroup1.itemindex = 0 then
           Q_ESTQ.SQL.ADD('order by A.ESTQ_TAG ');
        IF RadioGroup1.itemindex = 1 then
           Q_ESTQ.SQL.ADD('order by D.AR_NOME ');
        IF RadioGroup1.itemindex = 2 then
           Q_ESTQ.SQL.ADD('order by A.POSCOD ');
        IF RadioGroup1.itemindex = 3 then
           Q_ESTQ.SQL.ADD('order by A.ROM_DTVENCTO ');
        IF RadioGroup1.itemindex = 4 then
           Q_ESTQ.SQL.ADD('order by A.ROM_DTbatch ');
        IF RadioGroup1.itemindex = 5 then
           Q_ESTQ.SQL.ADD('order by A.ESTQ_lote '); }
        Q_ESTQ.SQL.ADD('order by A.PRO_ID,A.AR_ID,A.POS_ID,A.ESTQ_QTDE desc');
        Q_ESTQ.Open ;
        
{        SELECT A.*, B.*, C.*, D.*, E.* FROM (((( A LEFT OUTER JOIN B ON A.key = B.key) LEFT OUTER JOIN C ON
A.key = C.key) LEFT OUTER JOIN D ON A.key = D.key) LEFT OUTER JOIN E ON A.key = E.key)}




end;

procedure TFRomRemaneja.wwDBLookupCombo4CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
     wwDBLookupCombo3.lookupvalue := '' ;
     wwDBLookupCombo3.text  := '' ;
     DBText3.visible := false ;
end;

procedure TFRomRemaneja.wwDBLookupCombo4Enter(Sender: TObject);
begin
  (Sender as TwwDBlookupcombo).Color := ClAqua;
end;

procedure TFRomRemaneja.wwDBLookupCombo4Exit(Sender: TObject);
begin
   If wwDBLookupCombo4.text = '' then begin
        wwDBLookupCombo3.enabled := false ;
        wwDBLookupCombo3.lookupvalue := '' ;
        wwDBLookupCombo3.text  := '' ;
        DBText3.visible := false ;
        wwDBLookupCombo5.setfocus ;
    end else begin
        wwDBLookupCombo3.enabled := true ;
        wwDBLookupCombo3.setfocus ;
        DBText3.visible := true ;  
    end ;

    (Sender as TwwDBlookupcombo).Color := Clwindow;
end;

procedure TFRomRemaneja.wwDBLookupCombo3Enter(Sender: TObject);
begin
    (Sender as TwwDBlookupcombo).Color := ClAqua;
end;

procedure TFRomRemaneja.wwDBLookupCombo3Exit(Sender: TObject);
begin
    (Sender as TwwDBlookupcombo).Color := clwindow;
end;

procedure TFRomRemaneja.wwDBLookupCombo5Enter(Sender: TObject);
begin
    (Sender as TwwDBlookupcombo).Color := ClAqua;
end;

procedure TFRomRemaneja.wwDBLookupCombo5Exit(Sender: TObject);
begin
    (Sender as TwwDBlookupcombo).Color := Clwindow;
end;

procedure TFRomRemaneja.Q_IROMBeforePost(DataSet: TDataSet);
begin
       if (wwDBComboBox1.itemindex  = 2) then  begin
           IF (wwDBLookupCombo7.text = '')  then begin
               MessageDlg('Área é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
               wwDBLookupCombo7.setfocus ;
               abort ;
           end ;

           ///If Q_ARAR_CONTROL_POS.asstring = 'S' then begin
               IF (wwDBLookupCombo1.text = '')  then begin
                   //MessageDlg('Posição é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
                   //wwDBLookupCombo1.setfocus ;
                   //abort ;
                   Q_IROMPOS_ID.asstring  :=  Q_IROMPOS_ID_ANTERIOR.asstring  ;
               end ;
           ////end else Q_IROMPOS_ID.asstring := '' ;


           {IF (wwDBEdit7.text = '')  then begin
               MessageDlg('Pallet TAG é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
               wwDBEdit7.setfocus ;
               abort ;
           end ;}
           {IF (wwDBEdit1.text = '')  then begin
               MessageDlg('Lote é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
               wwDBEdit1.setfocus ;
               abort ;
           end ;  }
           IF (wwDBEdit2.text = '')  then begin
               MessageDlg('Batch é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
               wwDBEdit2.setfocus ;
               abort ;
           end ;
           IF (wwDBEdit3.text = '')  then begin
               MessageDlg('Vencimento é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
               wwDBEdit3.setfocus ;
               abort ;
           end ;
       end ;

       if (wwDBComboBox1.itemindex  = 0) then  begin
            IF (wwDBLookupCombo7.text = '')  then begin
               MessageDlg('Área é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
               wwDBLookupCombo7.setfocus ;
               abort ;
           end ;

           IF (wwDBEdit4.text = '')  then begin
               MessageDlg('Qtde. Movimentada é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
               wwDBEdit4.setfocus ;
               abort ;
           end ;


           Q_PAR.close;
           Q_PAR.open;
           Q_IROMPALLET_TAG.asstring :=  inttostr(Q_PARULT_TAG.asinteger + 1) ;

           Q_AUX.close ;
           Q_AUX.Sql.Clear ;
           Q_AUX.Sql.Add( ' UPDATE PARAMETRO set ULT_TAG = '  + '''' + Q_IROMPALLET_TAG.asstring  + '''' ) ;
           Q_aux.ExecSql;

       end;

       if (wwDBComboBox1.itemindex  = 1) then  begin
           IF (wwDBEdit4.text = '')  then begin
               MessageDlg('Qtde. Movimentada é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
               wwDBEdit4.setfocus ;
               abort ;
           end ;

           IF (DBCB_CFA_CANA.text = '')  then begin
               MessageDlg('Movimentação é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
               DBCB_CFA_CANA.setfocus ;
               abort ;
           end ;

           IF ( strtofloat(wwDBEdit4.text) = 0)  then begin
               MessageDlg('Qtde. Movimentada deverá ser superior a ZERO !',mtWarning,[mbok],0);
               wwDBEdit4.setfocus ;
               abort ;
           end ;

       end;




end;

procedure TFRomRemaneja.DS_ROMDataChange(Sender: TObject; Field: TField);
begin               

    If (Q_ROMCONFIRMA.asstring = 'S') then  begin
        BITBTN2.Caption := 'Romaneio Confirmado !'   ;
        PANEL3.enabled := false ;
     end else begin
        BITBTN2.Caption := 'Confirmar Romaneio ?' ;
        PANEL3.enabled := true ; 
     end ;
end;

procedure TFRomRemaneja.BitBtn2Click(Sender: TObject);
begin
     try
    Begin
      STP_REMANEJA.ParamByName('@RREM').Value  := Q_ROMRREM_ID.asstring  ;
      STP_REMANEJA.ParamByName('@PAR_ID').Value  :=  Q_PARPAR_ID.asstring  ;
      STP_REMANEJA.ParamByName('@USUARIO').Value  :=  FMenu.SqlUsuariosCH.asstring ;
      STP_REMANEJA.Execproc;

     //executa so se for alteração de posição ou dados
     // if Q_IROMTIPO.Value = 'T' then begin
     //     STP_REMANEJA.ParamByName('@RREM').Value  := Q_ROMRREM_ID.asstring  ;
     //    STP_REMANEJA.ParamByName('@PAR_ID').Value  :=  Q_PARPAR_ID.asstring  ;
     //     STP_REMANEJA.ParamByName('@USUARIO').Value  :=  FMenu.SqlUsuariosCH.asstring ;
     //     STP_REMANEJA.Execproc;
     // end;



      End
    except
       begin
         MessageDlg('Geração da Confirmação, com erro !',mtInformation,[mbOk], 0);
         abort  ;
       end;
    end;

     Q_ROM.edit ;
     Q_ROMCONFIRMA.asstring := 'S'  ;
     Q_ROM.post ;

end;

procedure TFRomRemaneja.Q_ROMBeforeInsert(DataSet: TDataSet);
begin
   BitBtn2.enabled := false ;
   BITBTN2.Caption := 'Confirmar Romaneio ?' ;
end;

procedure TFRomRemaneja.Q_ROMAfterCancel(DataSet: TDataSet);
begin
     
    IF Q_IROM.recordcount > 0 then begin
        If (Q_ROMCONFIRMA.asstring = 'N') then
           BitBtn2.enabled := true
          else
           BitBtn2.enabled := false ;
     end else
       BitBtn2.enabled := false ;


end;

procedure TFRomRemaneja.Q_IROMBeforeScroll(DataSet: TDataSet);
begin
  //// IF  Q_ROMCONFIRMA.ASSTRING = 'S' then abort ;
end;

procedure TFRomRemaneja.Button1Click(Sender: TObject);
begin
  ShowMessage(Q_ROMRREM_ID.AsString);
end;

procedure TFRomRemaneja.BitBtn3Click(Sender: TObject);
begin
//
   qrAltera.Close;
   qrAltera.Parameters[0].Value := Q_ESTQESTQ_ID.Value;
   qrAltera.Open;

   pnlAlteraDado.Visible := True;
end;

procedure TFRomRemaneja.BitBtn5Click(Sender: TObject);
begin
  qrAltera.cancel;
  pnlAlteraDado.Visible := False;
end;

procedure TFRomRemaneja.BitBtn4Click(Sender: TObject);
begin
 if MessageBox(Self.Handle, 'Confirma a alteração das informações', 'Confirmação', MB_YESNO + MB_ICONQUESTION) = 6 then
 begin
   qrAltera.Post;
   pnlAlteraDado.Visible := False;
   SpeedButton2.Click;
 end;
end;

procedure TFRomRemaneja.btnConsultaClick(Sender: TObject);
begin
   frmConsultaRemanejamento := TfrmConsultaRemanejamento.Create(Self);
   frmConsultaRemanejamento.ShowModal;
end;

end.
