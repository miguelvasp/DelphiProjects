unit UPrepInvCa;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Wwdotdot, Wwdbcomb, Mask, wwdbedit, StdCtrls, wwdblook, Buttons, ExtCtrls,
  Db, DBTables, Wwquery, Wwdatsrc, DBCtrls;

type
  TFPrepInvCa = class(TForm)
    Panel1: TPanel;
    bt_gravar: TSpeedButton;
    Bt_Incluir: TSpeedButton;
    Bt_excluir: TSpeedButton;
    SBT_SAIR: TSpeedButton;
    Label1: TLabel;
    Bt_cancelar: TSpeedButton;
    Panel2: TPanel;
    Label2: TLabel;
    Label9: TLabel;
    cboForn: TwwDBLookupCombo;
    txtOC: TwwDBEdit;
    txtInv: TwwDBEdit;
    txtDtCad: TwwDBEdit;
    cboMat: TwwDBLookupCombo;
    txtVal: TwwDBEdit;
    cboStat: TwwDBComboBox;
    Label5: TLabel;
    Label8: TLabel;
    Label7: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label4: TLabel;
    Q_FORN: TwwQuery;
    Q_MATERIAL: TwwQuery;
    DS_INV: TwwDataSource;
    Q_INV: TwwQuery;
    UPD_INV: TUpdateSQL;
    Q_INVInv_ID: TAutoIncField;
    Q_INVNum_Inv: TIntegerField;
    Q_INVData: TDateTimeField;
    Q_INVN_Lote: TStringField;
    Q_INVQtde_Almox: TFloatField;
    Q_INVQtde_Inv: TFloatField;
    Q_INVTipo: TStringField;
    Q_INVUsuario: TStringField;
    Q_INVDt_Alt: TDateTimeField;
    Q_INVStatus: TStringField;
    Label10: TLabel;
    Label11: TLabel;
    txtLote: TwwDBEdit;
    wwDBComboBox1: TwwDBComboBox;
    Q_AUX: TwwQuery;
    DBMemo1: TDBMemo;
    Label46: TLabel;
    Q_INVObs: TMemoField;
    Label12: TLabel;
    SpeedButton4: TSpeedButton;
    Q_FORNFOR_CODI: TStringField;
    Q_FORNFOR_RAZA: TStringField;
    Q_MATERIALMAT_ID: TAutoIncField;
    Q_MATERIALMAT_DESC: TStringField;
    Q_INVMat_ID: TIntegerField;
    Q_INVMarca_ID: TIntegerField;
    Q_INVFor_Codi: TStringField;
    Q_INVValid: TDateTimeField;
    Q_INVLocal_ID: TIntegerField;
    Q_INVCusto_Medio_Inv: TFloatField;
    Label22: TLabel;
    wwDBLookupCombo4: TwwDBLookupCombo;
    Label23: TLabel;
    wwDBLookupCombo3: TwwDBLookupCombo;
    Label13: TLabel;
    wwDBEdit1: TwwDBEdit;
    Q_LOCAL_FILT: TwwQuery;
    StringField7: TStringField;
    AutoIncField4: TAutoIncField;
    StringField8: TStringField;
    Q_MARCA_FILT: TwwQuery;
    StringField4: TStringField;
    AutoIncField3: TAutoIncField;
    Q_INVLoteSN: TStringField;
    qrAux2: TwwQuery;
    Q_INVReposicao: TFloatField;
    procedure SBT_SAIRClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Bt_IncluirClick(Sender: TObject);
    procedure bt_gravarClick(Sender: TObject);
    procedure Bt_cancelarClick(Sender: TObject);
    procedure Bt_excluirClick(Sender: TObject);
    procedure Q_INVBeforeDelete(DataSet: TDataSet);
    procedure Q_INVAfterPost(DataSet: TDataSet);
    procedure DS_INVStateChange(Sender: TObject);
    procedure Q_INVAfterDelete(DataSet: TDataSet);
    procedure wwDBEdit1Enter(Sender: TObject);
    procedure txtValEnter(Sender: TObject);
    procedure txtInvEnter(Sender: TObject);
    procedure txtOCEnter(Sender: TObject);
    procedure txtDtCadEnter(Sender: TObject);
    procedure txtOCExit(Sender: TObject);
    procedure txtDtCadExit(Sender: TObject);
    procedure wwDBEdit1Exit(Sender: TObject);
    procedure txtValExit(Sender: TObject);
    procedure txtInvExit(Sender: TObject);
    procedure cboMatEnter(Sender: TObject);
    procedure cboFornEnter(Sender: TObject);
    procedure cboMatExit(Sender: TObject);
    procedure cboFornExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Q_INVNewRecord(DataSet: TDataSet);
    procedure Q_INVAfterScroll(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure Q_INVMaterial_IDChange(Sender: TField);
    procedure Q_INVBeforePost(DataSet: TDataSet);
    procedure Q_INVCalcFields(DataSet: TDataSet);
    procedure Q_INVMat_IDChange(Sender: TField);
    procedure wwDBLookupCombo4Enter(Sender: TObject);
    procedure wwDBLookupCombo3Enter(Sender: TObject);
    procedure wwDBLookupCombo4Exit(Sender: TObject);
    procedure wwDBLookupCombo3Exit(Sender: TObject);
    procedure BuscaReposicao;
    procedure cboMatChange(Sender: TObject);
    procedure wwDBLookupCombo4Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrepInvCa: TFPrepInvCa;
  SQLPrin :String;

implementation
USES UPrepInv, Unt_Senha, UMenu;

{$R *.DFM}

procedure TFPrepInvCa.SBT_SAIRClick(Sender: TObject);
begin
        Close;
end;

procedure TFPrepInvCa.FormCreate(Sender: TObject);
VAR SQLX : STRING;
begin

     SQLPrin := ' SELECT  I.*, ' +
                '         MAT.MAT_DESC, ' +
                '         FORN.FOR_CODI ' +
                ' FROM    INV I,   ' +
	        '         MATERIAIS MAT, ' +
	        '         CPAFORN FORN  ' +
                ' WHERE   I.MAT_ID = MAT.MAT_ID ' +
                ' AND     I.FOR_CODI = FORN.FOR_CODI ';

         SQLX := SQLPrin
              + ' AND I.INV_ID = ' + INVX;


        Q_INV.SQL.CLEAR;
        Q_INV.SQL.Add(SQLX);
        Q_INV.Open;
        Q_FORN.Open;
        Q_MATERIAL.Open;
        Q_MARCA_FILT.OPEN;
        Q_LOCAL_FILT.OPEN;

        If INVX = '0' Then
                Q_INV.Insert;
end;

procedure TFPrepInvCa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        Q_INV.Close;
        Q_FORN.CLOSE;
        Q_MATERIAL.CLOSE;
        Q_MARCA_FILT.CLOSE;
        Q_LOCAL_FILT.CLOSE;
end;

procedure TFPrepInvCa.Bt_IncluirClick(Sender: TObject);
begin
     If NINV = '' then begin
                MessageDlg(' Favor voltar à tela principal preencher o campo Numero de Inventário!',mtInformation, [MbOk], 0);
                SBT_SAIR.Click
     End Else Begin
                Q_INV.Insert;
                cboMat.SetFocus;
     End;
end;

procedure TFPrepInvCa.bt_gravarClick(Sender: TObject);
begin
        Q_INV.Post;
       
end;

procedure TFPrepInvCa.Bt_cancelarClick(Sender: TObject);
begin
        Q_INV.Cancel;

end;

procedure TFPrepInvCa.Bt_excluirClick(Sender: TObject);
begin
        Q_INV.Delete;
end;

procedure TFPrepInvCa.Q_INVBeforeDelete(DataSet: TDataSet);
begin
    if MessageDlg('Confirma Exclusão ?',
       mtInformation, [mbYes, mbNo], 0) = mrNo then
    begin
       Abort;
    end;

END;

procedure TFPrepInvCa.Q_INVAfterPost(DataSet: TDataSet);
var StrChave :String;
    SQL :String;
begin

     StrChave := Q_INVInv_ID.AsString;

     FMenu.DataBase1.ApplyUpdates([Q_INV]);

     If StrChave = '' then
     Begin
                SQL :=  'SELECT         MAX(INV_ID) INV ' +
                        'FROM           INV ';

                Q_AUX.SQL.CLEAR;
                Q_AUX.SQL.ADD(SQL);
                Q_AUX.OPEN;

                StrChave := Q_AUX.FieldByName('INV').AsString;

                Q_AUX.CLOSE;
     End;

     IF StrChave <> '' then
     Begin
                SQL := SqlPrin + ' AND        I.INV_ID = ' + StrChave;
                Q_INV.SQL.CLEAR;
                Q_INV.SQL.ADD(SQL);
     End;

     Q_INV.CLOSE;
     Q_INV.OPEN;
     Q_INV.Locate('INV_ID',StrChave,[]);

     INVX := Q_INVInv_ID.AsString;

     with qrAux2 do begin
         close;
         sql.Clear;
         sql.Add('EXEC STP_INV_CORRIGE_REPOSICAO');
         ExecSQL;
     end;

     MessageDlg('Operação realizada com sucesso!',mtInformation, [MbOk], 0);
End;

procedure TFPrepInvCa.DS_INVStateChange(Sender: TObject);
begin
 if  (sender as twwDataSource).state = dsbrowse then begin
        Bt_Incluir.Enabled := true;

        If (sender as twwDataSource).DataSet.EOF then
                Bt_excluir.Enabled := false
        Else
                Bt_excluir.Enabled := true;

        bt_Cancelar.enabled := FALSE ;
        bt_gravar.Enabled := FALSE;
        SBT_SAIR.Enabled := TRUE;
        Bt_Incluir.Enabled := true;        
   end;

   if (sender as twwDataSource).state = dsEdit then begin
       bt_Excluir.enabled := FALSE ;
       bt_Cancelar.enabled := true ;
       bt_gravar.Enabled := true;
       SBT_SAIR.Enabled := TRUE;
       Bt_Incluir.Enabled := false;
   end;

  if (sender as twwDataSource).state = dsInsert then begin
      SBT_SAIR.Enabled := false;
      bt_Excluir.enabled := false ;
      bt_Cancelar.enabled := true ;
      bt_gravar.Enabled := true;
      Bt_Incluir.Enabled := false;
   end;

end;

procedure TFPrepInvCa.Q_INVAfterDelete(DataSet: TDataSet);
begin
        FMenu.DataBase1.ApplyUpdates([Q_INV]);
        Bt_Excluir.Enabled := false;
end;

procedure TFPrepInvCa.wwDBEdit1Enter(Sender: TObject);
begin
 (Sender as TwwDBEdit).color := ClAqua;
end;

procedure TFPrepInvCa.txtValEnter(Sender: TObject);
begin
 (Sender as TwwDBEdit).color := ClAqua; 
end;

procedure TFPrepInvCa.txtInvEnter(Sender: TObject);
begin
 (Sender as TwwDBEdit).color := ClAqua; 
end;

procedure TFPrepInvCa.txtOCEnter(Sender: TObject);
begin
 (Sender as TwwDBEdit).color := ClAqua; 
end;

procedure TFPrepInvCa.txtDtCadEnter(Sender: TObject);
begin
 (Sender as TwwDBEdit).color := ClAqua; 
end;

procedure TFPrepInvCa.txtOCExit(Sender: TObject);
begin
  (Sender as TwwDBEdit).color := ClWindow;
end;

procedure TFPrepInvCa.txtDtCadExit(Sender: TObject);
begin
  (Sender as TwwDBEdit).color := ClWindow;
end;

procedure TFPrepInvCa.wwDBEdit1Exit(Sender: TObject);
begin
  (Sender as TwwDBEdit).color := ClWindow;
end;

procedure TFPrepInvCa.txtValExit(Sender: TObject);
begin
  (Sender as TwwDBEdit).color := ClWindow;
end;

procedure TFPrepInvCa.txtInvExit(Sender: TObject);
begin
  (Sender as TwwDBEdit).color := ClWindow;
end;

procedure TFPrepInvCa.cboMatEnter(Sender: TObject);
begin
(Sender as TwwDBLookupCombo).color := clAqua;
end;

procedure TFPrepInvCa.cboFornEnter(Sender: TObject);
begin
(Sender as TwwDBLookupCombo).color := clAqua;
end;

procedure TFPrepInvCa.cboMatExit(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).color := clWindow;
  cboMat.Text := Q_MATERIALMAT_DESC.Value;
end;

procedure TFPrepInvCa.cboFornExit(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).color := clWindow;
  cboForn.Text := Q_FORNFOR_CODI.Value;
end;

procedure TFPrepInvCa.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
     begin
       Key := #0;
       Perform(WM_Nextdlgctl,0,0);
     end;
end;

procedure TFPrepInvCa.Q_INVNewRecord(DataSet: TDataSet);
VAR SQLY : STRING;
    SQL  : String;
begin

          Q_INVData.AsDateTime := Date;
          Q_INVUsuario.AsString := StrUsuario;
          Q_INVQtde_Almox.AsString:= '0' ;
          Q_INVTipo.AsString:= 'M';
          Q_INVStatus.AsString:= 'A';
          Q_INVDt_Alt.AsDateTime := Date;

          If NINV <> '' Then
                  Q_INVNum_Inv.AsString:= NINV;

//          Q_INVInv_ID.AsString:= INVX;

        SQL:=  'SELECT 	FORN.FOR_CODI, ' +
               '        FORN.FOR_RAZA ' +
               ' FROM 	CPAFORN FORN ';

        SQL := SQL + ' ORDER BY FOR_CODI ';

        Q_FORN.SQL.CLEAR;
        Q_FORN.SQL.ADD(SQL);
        Q_FORN.OPEN;

        cboMat.Text := '';
        cboForn.Text := '';
        txtLote.Text := '';

end;

procedure TFPrepInvCa.Q_INVAfterScroll(DataSet: TDataSet);
begin
        If Q_INVStatus.AsString = 'A' then //Aberto
        Begin
                If Q_INVTipo.AsString = 'M' then //Manual
                Begin
                        bt_Excluir.Enabled := true;

                        cboMat.Enabled := true;
                        If Q_INVLoteSN.AsString = 'S' then
                                txtLote.Enabled := true;
                        cboForn.Enabled := true;
                        txtInv.Enabled := true;
                End Else Begin
                        bt_Excluir.Enabled := false;
                        txtInv.Enabled := true;
                        cboMat.Enabled := false;
                        If Q_INVN_LOTE.AsString = '9999999' then
                                txtLote.Enabled := true
                        Else
                                txtLote.Enabled := false;
                                
                        cboForn.Enabled := false;

                End;
        End Else Begin
                cboMat.Enabled := false;
                txtLote.Enabled := false;
                cboForn.Enabled := false;
                txtInv.Enabled := false;
                bt_Excluir.Enabled := false;
        End;
end;

procedure TFPrepInvCa.FormShow(Sender: TObject);
VAR SQL:String;
begin
        SQL:=  'SELECT 	FORN.FOR_CODI, ' +
               '        FORN.FOR_RAZA ' +
               ' FROM 	CPAFORN FORN ';



        SQL := SQL + ' ORDER BY FOR_CODI ';

        Q_FORN.SQL.CLEAR;
        Q_FORN.SQL.ADD(SQL);
        Q_FORN.OPEN;



       { If Q_INVLoteSN.AsString = 'S' then
                txtLote.Enabled := true
        Else
                If Q_INVN_LOTE.AsString = '9999999' then
                        txtLote.Enabled := true
                Else
                        txtLote.Enabled := false;  }
end;

procedure TFPrepInvCa.Q_INVMaterial_IDChange(Sender: TField);
VAR SQL:String;
begin
        SQL:=  'SELECT 	FORN.FOR_CODI, ' +
               '        FORN.FOR_RAZA ' +
               ' FROM 	CPAFORN FORN ';



        SQL := SQL + ' ORDER BY CPAFORN ';

        Q_FORN.SQL.CLEAR;
        Q_FORN.SQL.ADD(SQL);
        Q_FORN.OPEN;

        If (Q_INV.State = dsInsert) or
           (Q_INV.State = dsEdit) then
        Begin
                SQL := 'SELECT         MAT_CONTROLA ' +
                       'FROM           MATERIAIS ' +
                       'WHERE          MAT_ID = ' + Q_INVMat_ID.AsString;

                Q_AUX.SQL.CLEAR;
                Q_AUX.SQL.ADD(SQL);
                Q_AUX.OPEN;

                {If Q_AUX.FieldByName('MAT_CONTROLA').AsString = 'N' then
                Begin
                        txtLote.Enabled := false;
                        Q_INVN_Lote.AsString := '9999999';
                End Else Begin
                        txtLote.Enabled := true;
                        Q_INVN_Lote.AsString := '';
                End; }
        End;

end;

procedure TFPrepInvCa.Q_INVBeforePost(DataSet: TDataSet);
begin
        If Q_INVStatus.AsString = 'G' then
        Begin
                MessageDlg('Não é possível alterar registros que já tenham gerado atualização no Almoxarifado (Status "Gerado")!',mtInformation, [mbOk], 0);
                abort;
        End;

end;

procedure TFPrepInvCa.Q_INVCalcFields(DataSet: TDataSet);
VAR SQL:String;
begin
        If Q_INVMaT_ID.AsString <> '' then
        Begin
                SQL := 'SELECT         MAT_CONTROLA ' +
                       'FROM           MATERIAIS ' +
                       'WHERE          MAT_ID = ' + Q_INVMaT_ID.AsString;

                Q_AUX.SQL.CLEAR;
                Q_AUX.SQL.ADD(SQL);
                Q_AUX.OPEN;

                If Q_AUX.FieldByName('MAT_CONTROLA').AsString = 'S' then
                        Q_INVLOTESN.AsString := 'S'
                Else
                        Q_INVLOTESN.AsString := 'N';
        End;
end;

procedure TFPrepInvCa.Q_INVMat_IDChange(Sender: TField);
VAR SQL:String;
begin
        SQL:=  'SELECT 	FORN.FOR_CODI, ' +
               '        FORN.FOR_RAZA ' +
               ' FROM 	CPAFORN FORN ';



        SQL := SQL + ' ORDER BY FOR_CODI ';

        Q_FORN.SQL.CLEAR;
        Q_FORN.SQL.ADD(SQL);
        Q_FORN.OPEN;

        If (Q_INV.State = dsInsert) or
           (Q_INV.State = dsEdit) then
        Begin
                SQL := 'SELECT         MAT_CONTROLA ' +
                       'FROM           MATERIAIS ' +
                       'WHERE          MAT_ID = ' + Q_INVMat_ID.AsString;

                Q_AUX.SQL.CLEAR;
                Q_AUX.SQL.ADD(SQL);
                Q_AUX.OPEN;

                {If Q_AUX.FieldByName('MAT_CONTROLA').AsString = 'N' then
                Begin
                        txtLote.Enabled := false;
                        Q_INVN_Lote.AsString := '9999999';
                End Else Begin
                        txtLote.Enabled := true;
                        Q_INVN_Lote.AsString := '';
                End; }
        End;

end;

procedure TFPrepInvCa.wwDBLookupCombo4Enter(Sender: TObject);
begin
(Sender as TwwDBLookupCombo).color := clAqua;
end;

procedure TFPrepInvCa.wwDBLookupCombo3Enter(Sender: TObject);
begin
(Sender as TwwDBLookupCombo).color := clAqua;
end;

procedure TFPrepInvCa.wwDBLookupCombo4Exit(Sender: TObject);
begin
(Sender as TwwDBLookupCombo).color := clWindow;
wwDBLookupCombo4.Text := Q_MARCA_FILT.fieldbyname('marca_desc').AsString;
end;

procedure TFPrepInvCa.wwDBLookupCombo3Exit(Sender: TObject);
begin
(Sender as TwwDBLookupCombo).color := clWindow;
end;

procedure TFPrepInvCa.BuscaReposicao;
begin
  {TRY
    with qrAux2 do begin
        Close;
        sql.Clear;
        sql.Add(
        'SELECT TOP 1 REPOSICAO FROM REQ_ITEM '  +
        ' WHERE MAT_ID = ' + cboMat.LookupValue +
        ' AND MARCA_ID = ' + wwDBLookupCombo4.LookupValue +
        ' AND REPOSICAO IS NOT NULL ORDER BY REQ_ID DESC '
        );
        Open;

        Q_INVReposicao.Value := qrAux2.FIELDBYNAME('REPOSICAO').AsFloat;
    end;
  except end;}
end;

procedure TFPrepInvCa.cboMatChange(Sender: TObject);
begin
BuscaReposicao;
end;

procedure TFPrepInvCa.wwDBLookupCombo4Change(Sender: TObject);
begin
BuscaReposicao;
end;

end.
