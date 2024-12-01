unit UCadOrca;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, Wwdbigrd, Wwdbgrid, Buttons, Db, DBTables, Wwquery,
  Wwdatsrc, wwstorep, Mask, wwdblook, wwdbedit, ExtCtrls, Wwdotdot,
  Wwdbcomb;

type
  TFCadOrca = class(TForm)
    DS_OC: TwwDataSource;
    Q_OC: TwwQuery;
    Q_COND: TwwQuery;
    Panel1: TPanel;
    bt_gravar: TSpeedButton;
    Bt_Incluir: TSpeedButton;
    Bt_excluir: TSpeedButton;
    Bt_cancelar: TSpeedButton;
    SBT_SAIR: TSpeedButton;
    Label1: TLabel;
    UPD_OC: TUpdateSQL;
    Q_AUX: TwwQuery;
    Q_OCDT_CADASTRO: TDateTimeField;
    Q_OCUSUARIO: TStringField;
    Q_OCFORNECEDOR_ID: TIntegerField;
    Q_OCNUM_OCOM: TIntegerField;
    Q_OCCOND_PGTO_ID: TIntegerField;
    Q_OCDT_EMISSAO: TDateTimeField;
    Q_OCDT_ENTREGA: TDateTimeField;
    Q_OCSTATUS: TStringField;
    Q_OCVALOR: TFloatField;
    Q_CONDCond_Pgto_ID: TAutoIncField;
    Q_CONDDescricao: TStringField;
    Q_CONDNum_Parcelas: TFloatField;
    Q_CONDPagamento: TStringField;
    Q_CONDFora: TStringField;
    Q_FORN: TwwQuery;
    Q_FORNFORNECEDOR_ID: TAutoIncField;
    Q_FORNFANTASIA: TStringField;
    Q_OCORD_CAPA_ID: TAutoIncField;
    Panel2: TPanel;
    Label7: TLabel;
    txtOC: TwwDBEdit;
    Label2: TLabel;
    cboForn: TwwDBLookupCombo;
    Label11: TLabel;
    txtUser: TwwDBEdit;
    Label3: TLabel;
    txtDtCad: TwwDBEdit;
    Label5: TLabel;
    txtDtEntr: TwwDBEdit;
    Label8: TLabel;
    txtDtEmiss: TwwDBEdit;
    cboCond: TwwDBLookupCombo;
    Label9: TLabel;
    txtVal: TwwDBEdit;
    Label6: TLabel;
    Label4: TLabel;
    cboStat: TwwDBComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SBT_SAIRClick(Sender: TObject);
    procedure txtOCEnter(Sender: TObject);
    procedure txtOCExit(Sender: TObject);
    procedure Data1Exit(Sender: TObject);
    procedure Data2Exit(Sender: TObject);
    procedure Data2Enter(Sender: TObject);
    procedure cboProdEnter(Sender: TObject);
    procedure cboCliEnter(Sender: TObject);
    procedure cboProdExit(Sender: TObject);
    procedure cboCliExit(Sender: TObject);
    procedure cboFornExit(Sender: TObject);
    procedure cboFornEnter(Sender: TObject);
    procedure Data1Enter(Sender: TObject);
    procedure DS_OCStateChange(Sender: TObject);
    procedure Q_OCNewRecord(DataSet: TDataSet);
    procedure Bt_IncluirClick(Sender: TObject);
    procedure Bt_excluirClick(Sender: TObject);
    procedure Bt_cancelarClick(Sender: TObject);
    procedure bt_gravarClick(Sender: TObject);
    procedure Q_OCBeforeDelete(DataSet: TDataSet);
    procedure Q_OCAfterPost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure Q_OCAfterDelete(DataSet: TDataSet);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Q_OCBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadOrca: TFCadOrca;
  DataX : TDateTime;
  SQLPrin :String;

implementation

{$R *.DFM}
uses    Unt_Senha;

procedure TFCadOrca.FormCreate(Sender: TObject);
Var SQL:String;

begin

        SQLPrin :=
        'SELECT		NUM_OCOM, ' +
        '		DT_CADASTRO, ' +
        '		DT_ENTREGA, ' +
        '		DT_EMISSAO, ' +
        '		FORNECEDOR_ID, ' +
        '		COND_PGTO_ID, ' +
        '		USUARIO, ' +
        '		VALOR, ' +
        '		STATUS, ' +
        '               ORD_CAPA_ID ' +
        'FROM		ORDEM_CAPA ';

        SQL := SQLPrin +
        'WHERE  Num_Ocom = ' + Num_Ocom;

        Q_OC.SQL.CLEAR;
        Q_OC.SQL.ADD(SQL);
        Q_OC.OPEN;

        Q_COND.OPEN;
        Q_FORN.OPEN;

end;

procedure TFCadOrca.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        Q_OC.CLOSE;
        Q_COND.CLOSE;
        Q_FORN.CLOSE;
end;

procedure TFCadOrca.SBT_SAIRClick(Sender: TObject);
begin
        Close;
end;

procedure TFCadOrca.txtOCEnter(Sender: TObject);
begin
        (Sender as TwwDBEdit).color := ClAqua; 
end;

procedure TFCadOrca.txtOCExit(Sender: TObject);
begin
        (Sender as TwwDBEdit).color := ClWindow;
end;

procedure TFCadOrca.Data1Exit(Sender: TObject);
begin
        (Sender as TMaskEdit).color := ClWindow;
end;

procedure TFCadOrca.Data2Exit(Sender: TObject);
begin
        (Sender as TMaskEdit).color := ClWindow;
end;

procedure TFCadOrca.Data2Enter(Sender: TObject);
begin
        (Sender as TMaskEdit).color := ClAqua;
end;

procedure TFCadOrca.cboProdEnter(Sender: TObject);
begin
        (Sender as TwwDBLookupCombo).color := clAqua;
end;

procedure TFCadOrca.cboCliEnter(Sender: TObject);
begin
        (Sender as TwwDBLookupCombo).color := clAqua;
end;

procedure TFCadOrca.cboProdExit(Sender: TObject);
begin
        (Sender as TwwDBLookupCombo).color := clWindow;
end;

procedure TFCadOrca.cboCliExit(Sender: TObject);
begin
        (Sender as TwwDBLookupCombo).color := clWindow;
end;

procedure TFCadOrca.cboFornExit(Sender: TObject);
begin
        (Sender as TwwDBLookupCombo).color := clWindow;
end;

procedure TFCadOrca.cboFornEnter(Sender: TObject);
begin
        (Sender as TwwDBLookupCombo).color := clAqua;
end;

procedure TFCadOrca.Data1Enter(Sender: TObject);
begin
        (Sender as TMaskEdit).color := ClAqua;
end;

procedure TFCadOrca.DS_OCStateChange(Sender: TObject);
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

procedure TFCadOrca.Q_OCNewRecord(DataSet: TDataSet);
var SQL:String;
begin
        Q_OCStatus.AsString := 'A'; //'A'provado, o outro seria 'A'berto.
        Q_OCDt_Cadastro.AsDateTime := Date;
        Q_OCUsuario.AsString := StrUsuario;
end;

procedure TFCadOrca.Bt_IncluirClick(Sender: TObject);
begin
        txtDtEntr.SetFocus;
        Q_OC.Insert;
end;

procedure TFCadOrca.Bt_excluirClick(Sender: TObject);
begin
        Q_OC.Delete;
end;

procedure TFCadOrca.Bt_cancelarClick(Sender: TObject);
begin
        Q_OC.Cancel;
end;

procedure TFCadOrca.bt_gravarClick(Sender: TObject);
begin
        Q_OC.Post;
end;

procedure TFCadOrca.Q_OCBeforeDelete(DataSet: TDataSet);
begin
  if MessageDlg('Confirma Exclusão ?',
    mtInformation, [mbYes, mbNo], 0) = mrNo then
    begin
      Abort;
    end;

end;

procedure TFCadOrca.Q_OCAfterPost(DataSet: TDataSet);
var StrChave :String;
    SQL :String;

begin
     StrChave := Q_OCNum_Ocom.AsString;
     Dtm_BaseDados2.Dtb_BaseDados.ApplyUpdates([Q_OC]);

     If StrChave = '' then
     Begin
        SQL := 'SELECT MAX(Num_Ocom) Num_Ocom FROM ORDEM_CAPA WHERE USUARIO = ' + '''' + StrUsuario + '''';
        Q_AUX.SQL.CLEAR;
        Q_AUX.SQL.ADD(SQL);
        Q_AUX.OPEN;

        StrChave := Q_AUX.FIELDBYNAME('Num_Ocom').AsString;
     End;

     IF StrChave <> '' then
     Begin
        SQL := SqlPrin + ' WHERE        Num_Ocom = ' + StrChave;
        Q_OC.SQL.CLEAR;
        Q_OC.SQL.ADD(SQL);
     End;


     Q_OC.CLOSE;
     Q_OC.OPEN;
     Q_OC.Locate('NUM_OCOM',StrChave,[]);

     Num_Ocom := Q_OCNum_Ocom.AsString;

     MessageDlg('Operação realizada com sucesso!',mtInformation, [MbOk], 0);
     Close;
end;

procedure TFCadOrca.FormShow(Sender: TObject);
begin
        If Num_Ocom = '0' then
                Q_OC.Insert;

end;

procedure TFCadOrca.Q_OCAfterDelete(DataSet: TDataSet);
begin
        Dtm_BaseDados2.Dtb_BaseDados.ApplyUpdates([Q_OC]);
        Bt_Excluir.Enabled := false;
end;

procedure TFCadOrca.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if (Key = #13) then
     begin
       Key := #0;
       Perform(WM_Nextdlgctl,0,0);
     end;

end;

procedure TFCadOrca.Q_OCBeforePost(DataSet: TDataSet);
Var SQL:String;
begin

        If Q_OC.STATE = dsInsert then
        Begin
                SQL :=  'SELECT         CASE WHEN MAX(NUM_OCOM) IS NULL THEN 0 ELSE MAX(NUM_OCOM) END + 1 NUM_OCOM ' +
                        'FROM           ORDEM_CAPA ';

                Q_AUX.SQL.CLEAR;
                Q_AUX.SQL.ADD(SQL);
                Q_AUX.OPEN;

                Q_OCNum_Ocom.AsString :=  Q_AUX.FieldbyName('NUM_OCOM').AsString;
        End;
end;

end.
