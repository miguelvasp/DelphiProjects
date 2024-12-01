unit CPPCONT;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, Wwdbedit, Buttons, DB, DBTables, Wwdatsrc, Wwquery,
  DBCtrls, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, Wwdotdot, Wwdbcomb,
  Wwtable, wwdblook, ComCtrls, Tabnotbk;

type
  TFCGerenciais = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Fonte: TDBNavigator;
    Q_CONT: TwwQuery;
    DS_CONT: TwwDataSource;
    UPD_CONTG: TUpdateSQL;
    SBT_SAIR: TSpeedButton;
    LBL_STATUS: TLabel;
    SBT_REFR: TSpeedButton;
    T_CTCO: TwwTable;
    DS_CONTG: TwwDataSource;
    T_CTCOCTC_CODI: TStringField;
    T_CTCOCTC_DESC: TStringField;
    SBT_CONS: TSpeedButton;
    TabbedNotebook1: TTabbedNotebook;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBE_CON_CODI: TwwDBEdit;
    DBE_CON_DESC: TwwDBEdit;
    DBR_CON_ENSA: TDBRadioGroup;
    DBR_CON_OPER: TDBRadioGroup;
    DBLC_CON_CTCO: TwwDBLookupCombo;
    DBL_CON_FLUX: TwwDBComboBox;
    DBG_CCUS: TwwDBGrid;
    DBG_CCUSIButton: TwwIButton;
    DBCB_CON_FLUX2: TwwDBComboBox;
    DBCB_CON_ENSA: TwwDBComboBox;
    DBCB_CON_OPER: TwwDBComboBox;
    Panel4: TPanel;
    Label4: TLabel;
    Label6: TLabel;
    wwDBEdit1: TwwDBEdit;
    wwDBLookupCombo1: TwwDBLookupCombo;
    wwDBGrid1: TwwDBGrid;
    Label5: TLabel;
    wwDBEdit2: TwwDBEdit;
    DS_CTCO: TwwDataSource;
    UPD_CONT: TUpdateSQL;
    Q_CONTG: TwwQuery;
    Q_CONTCON_CODI: TStringField;
    Q_CONTCON_DESC: TStringField;
    Q_CONTCON_FLOA: TFloatField;
    Q_CONTCON_FLUX: TStringField;
    Q_CONTCON_CTCO: TStringField;
    Q_CONTCON_ENSA: TStringField;
    Q_CONTCON_OPER: TStringField;
    Q_CONTCTC_CODI: TStringField;
    Q_CONTCTC_DESC: TStringField;
    Q_CONTGCON_CODIG: TAutoIncField;
    Q_CONTGCON_CODI_ORIG: TStringField;
    Q_CONTGCON_CODI_DEST: TStringField;
    Q_CONTGPERCENTUAL: TIntegerField;
    Q_AUX: TwwQuery;
    Q_AUX1: TwwQuery;
    DS_AUX1: TwwDataSource;
    Q_AUX1SOMAPERC: TIntegerField;
    Q_CONTC: TwwQuery;
    wwDBGrid2: TwwDBGrid;
    wwIButton2: TwwIButton;
    Q_SQL: TwwQuery;
    StringField1: TStringField;
    FloatField1: TFloatField;
    Q_CONTCCON_CODI: TStringField;
    Q_CONTCCON_DESC: TStringField;
    wwDBEdit3: TwwDBEdit;
    Q_CONTGCON_DESC: TStringField;
    Q_AUX1CON_CODI_ORIG: TStringField;
    Q_CONTCDS: TStringField;
    procedure SBT_SAIRClick(Sender: TObject);
    procedure Q_CONTAfterPost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DS_CONTStateChange(Sender: TObject);
    procedure Q_CONTAfterDelete(DataSet: TDataSet);
    procedure Q_CONTBeforeDelete(DataSet: TDataSet);
    procedure Q_CONTAfterCancel(DataSet: TDataSet);
    procedure SBT_REFRClick(Sender: TObject);
    procedure Q_CONTBeforeInsert(DataSet: TDataSet);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Q_CONTBeforePost(DataSet: TDataSet);
    procedure SBT_CONSClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure TabbedNotebook1Click(Sender: TObject);
    procedure Q_CONTGAfterDelete(DataSet: TDataSet);
    procedure Q_CONTGAfterPost(DataSet: TDataSet);
    procedure Q_CONTGBeforeDelete(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure Q_CONTGNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCGerenciais: TFCGerenciais;

implementation

uses CPPMENU, UPesqCGer   ;    

{$R *.DFM}

procedure TFCGerenciais.SBT_SAIRClick(Sender: TObject);

  Var SQL:String;
begin

     Q_AUX1.CLOSE;
     Q_AUX1.OPEN;

     If not Q_AUX1.Eof then
     Begin
         If MessageDlg('Há Rateios para Contas Gerenciais que não completam 100%, caso escolha por sair, estes rateios serão apagados. Deseja Prosseguir?',
         MtError,[mbYes,mbNo],0) = mrYes then
         Begin
             SQL := ' DELETE FROM CPACONTG WHERE CON_CODI_ORIG IN ' +
             ' (SELECT		CON_CODI_ORIG ' +
             ' FROM		CPACONTG ' +
             ' GROUP BY	CON_CODI_ORIG  ' +
             ' HAVING		SUM(PERCENTUAL) <> 100 OR SUM(PERCENTUAL) IS NULL) ';

             Q_SQL.SQL.CLEAR;
             Q_SQL.SQL.ADD(SQL);
             Q_SQL.EXECSQL;

             FCGerenciais.Close;
         End
     End Else
           FCGerenciais.Close;
end;

procedure TFCGerenciais.Q_CONTAfterPost(DataSet: TDataSet);
VAR SQL : STRING;
    CONT: STRING;
begin

      CONT:= Q_CONTCON_CODI.AsString ;


  try
  begin
    FMenu.DATABASE1.ApplyUpdates([Q_CONT]);
  end;
  except
    begin
      Q_CONT.RevertRecord;
    end;
  end;
    DBE_CON_CODI.Enabled := false;
    Q_CONT.Close;
    Q_CONT.Open;
    Q_CONT.Locate('CON_CODI',CONT, []);

    Q_AUX.CLOSE;
    Q_AUX.SQL.CLEAR;
    Q_AUX.SQL.ADD('SELECT COUNT(CON_CODIG) HA FROM CPACONTG WHERE CON_CODI_ORIG = ' + '''' + CONT + '''')  ;



    Q_AUX.OPEN;


  IF Q_AUX.FIELDBYNAME('HA').ASSTRING = '0'  THEN BEGIN
        SQL:=   ' INSERT        CPACONTG  ' +
                '               (CON_CODI_ORIG,  ' +
                '                CON_CODI_DEST, ' +
                '                PERCENTUAL) ' +
                '                 VALUES ' +
                ' ( '             + '''' + CONT + '''' + ',' +
                           '''' + CONT + '''' + ',' +
                '                 100) ' ;

        Q_AUX.CLOSE;
        Q_AUX.SQL.CLEAR;
        Q_AUX.SQL.ADD(SQL);
        Q_AUX.ExecSQL;

  END;



end;

procedure TFCGerenciais.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Q_CONT.Close;
  T_CTCO.Close;
  Action := caFree;
end;

procedure TFCGerenciais.FormShow(Sender: TObject);
begin
  Q_CONT.Open;
  T_CTCO.Open;
  Q_CONTG.OPEN;
end;

procedure TFCGerenciais.DS_CONTStateChange(Sender: TObject);
begin
  if (Q_CONT.State = dsEdit) or (Q_CONT.State = dsInsert) then
  begin
    SBT_SAIR.Enabled := false;
    SBT_REFR.Enabled := false;
    if Q_CONT.State = dsEdit then
    begin
      LBL_STATUS.Caption := 'ALTERAÇÃO';
    end
    else
    begin
      LBL_STATUS.Caption := 'INCLUSÃO';
      DBE_CON_CODI.Enabled := true;
      DBE_CON_CODI.SetFocus;
    end;
    LBL_STATUS.Visible := true;
  end
  else
  begin
    SBT_SAIR.Enabled := true;
    SBT_REFR.Enabled := true;
    LBL_STATUS.Visible := false;
  end;
end;

procedure TFCGerenciais.Q_CONTAfterDelete(DataSet: TDataSet);
begin
  try
    begin
      FMenu.DATABASE1.ApplyUpdates([Q_CONT]);
    end;
  except
    begin
       Q_CONT.RevertRecord;
    end;
  end;
end;

procedure TFCGerenciais.Q_CONTBeforeDelete(DataSet: TDataSet);
begin
  if MessageDlg('Confirma Exclusão ?',
    mtInformation, [mbYes, mbNo], 0) = mrNo then
    begin
      Abort;
    end;
end;

procedure TFCGerenciais.Q_CONTAfterCancel(DataSet: TDataSet);
begin
  DBE_CON_CODI.Enabled := false;
end;

procedure TFCGerenciais.SBT_REFRClick(Sender: TObject);
begin
  Q_CONT.Close;
  T_CTCO.Close;
  Q_CONT.Open;
  T_CTCO.Open;
end;

procedure TFCGerenciais.Q_CONTBeforeInsert(DataSet: TDataSet);
begin
  DBE_CON_CODI.Enabled := True;
  DBE_CON_CODI.Setfocus;



end;

procedure TFCGerenciais.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    key := #0;
    perform(WM_nextdlgctl,0,0);
  end;
end;

procedure TFCGerenciais.Q_CONTBeforePost(DataSet: TDataSet);
begin
  if DBE_CON_CODI.text = '' then begin
     MessageDlg('Código em Branco !',mterror, [mbOk], 0);
     DBE_CON_CODI.setfocus ;
     abort ;
  end;
  if DBE_CON_DESC.text = '' then begin
     MessageDlg('Descrição em Branco !',mterror, [mbOk], 0);
     DBE_CON_DESC.setfocus ;
     abort ;
  end;
  //if DBE_CON_ENSA.text = '' then begin
  //   MessageDlg('Movimento em Branco !',mterror, [mbOk], 0);
  //   DBE_CON_ENSA.setfocus ;
  //   abort ;
 // end;
 // if DBE_CON_OPER.text = '' then begin
//     MessageDlg('Operação em Branco !',mterror, [mbOk], 0);
 //    DBE_CON_OPER.setfocus ;
 //    abort ;
 // end;
  if DBl_CON_FLUX.TEXT = '' then begin
     MessageDlg('Fluxo de Caixa em Branco !',mterror, [mbOk], 0);
     DBL_CON_FLUX.setfocus ;
     abort ;
  end;
end;


procedure TFCGerenciais.SBT_CONSClick(Sender: TObject);
begin
   Application.CreateForm(TFPesqCGer, FPesqCGer);
   FPesqCGer.ShowModal ;
   FPesqCGer.Release ;
   if gs_CG <> '' then begin
      Q_CONT.Close;
      Q_CONT.Open;
      Q_CONT.locate('CON_CODI',gs_CG,[]);
      gs_CG := '' ;
   end;
end;

procedure TFCGerenciais.FormActivate(Sender: TObject);
begin
//        CENTRO(Self,False);
end;

procedure TFCGerenciais.TabbedNotebook1Click(Sender: TObject);
begin
      IF TabbedNotebook1.PageIndex = 0 THEN
           Fonte.DataSource:= DS_CONT
        ELSE BEGIN
           Fonte.DataSource:= DS_CONTG;
           Q_CONTG.Close;
           Q_CONTG.SQL.CLEAR;
           Q_CONTG.SQL.ADD( ' SELECT  A.*,    ' +
	                    '         B.CON_DESC   ' +
                            ' FROM    CPACONTG A,  ' +
                            '         CPACONT  B   ' +
                            ' WHERE   B.CON_CODI = A.CON_CODI_DEST' );
           Q_CONTG.SQL.ADD( ' and   A.CON_CODI_ORIG = ' + '''' + Q_CONTCON_CODI.AsString + '''' );
           Q_CONTG.OPEN;
       
       END;



end;

procedure TFCGerenciais.Q_CONTGAfterDelete(DataSet: TDataSet);
begin
try
    begin
      FMenu.DATABASE1.ApplyUpdates([Q_CONTG]);
    end;
  except
    begin
       Q_CONTG.RevertRecord;
    end;
  end;
end;

procedure TFCGerenciais.Q_CONTGAfterPost(DataSet: TDataSet);
begin
 try
  begin
    FMenu.DATABASE1.ApplyUpdates([Q_CONTG]);
  end;
  except
    begin
      Q_CONTG.RevertRecord;
    end;
  end;
  DBE_CON_CODI.Enabled := false;
  Q_CONTG.Close;
  Q_CONTG.Open;

   Q_AUX1.CLOSE;
     Q_AUX1.OPEN;
end;

procedure TFCGerenciais.Q_CONTGBeforeDelete(DataSet: TDataSet);
begin
 if MessageDlg('Confirma Exclusão ?',
    mtInformation, [mbYes, mbNo], 0) = mrNo then
    begin
      Abort;
    end;
end;

procedure TFCGerenciais.FormCreate(Sender: TObject);
begin
        Q_CONTC.Open;
        TabbedNotebook1.PageIndex:= 0;
end;

procedure TFCGerenciais.Q_CONTGNewRecord(DataSet: TDataSet);
begin
        Q_CONTGCON_CODI_ORIG.AsString:= Q_CONTCON_CODI.AsString;
end;

end.
