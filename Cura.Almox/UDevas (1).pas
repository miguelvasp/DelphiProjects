unit UDevas;

interface

uses

  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, Wwdbedit, Buttons, DB, DBTables, Wwdatsrc, Wwquery,
  DBCtrls, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, wwSpeedButton,
  wwDBNavigator, wwdblook,Tabnotbk, ComCtrls, Wwdotdot, Wwdbcomb, wwstorep,
  wwDialog, wwidlg, wwclearpanel ;


type
  TFDevas = class(TForm)
    Tb1: TTabbedNotebook;
    Panel1: TPanel;
    Label3: TLabel;
    cboForn: TwwDBLookupCombo;
    Label2: TLabel;
    dbCod: TwwDBEdit;
    Label1: TLabel;
    txtNF: TwwDBEdit;
    Panel4: TPanel;
    Bt_IncluirY: TSpeedButton;
    bt_gravarY: TSpeedButton;
    Bt_cancelarY: TSpeedButton;
    SBT_SAIRY: TSpeedButton;
    Q_FORN: TwwQuery;
    Q_MAT: TwwQuery;
    Q_MAT2: TwwQuery;
    Q_AUX: TwwQuery;
    Q_MATX: TwwQuery;
    Q_MATXDSMAT: TStringField;
    Q_MATXCOD_MATERIAL_FORN: TStringField;
    Q_MATXDSFORM: TStringField;
    Q_MATXM_F_ID: TAutoIncField;
    Q_MATXDSTXT: TStringField;
    Bt_excluir: TSpeedButton;
    Q_DVC: TwwQuery;
    Q_DVI: TwwQuery;
    DS_DVC: TwwDataSource;
    DS_DVI: TwwDataSource;
    UPD_DVC: TUpdateSQL;
    UPD_DVI: TUpdateSQL;
    Q_MOT: TwwQuery;
    wwDBGrid1: TwwDBGrid;
    Panel2: TPanel;
    Label4: TLabel;
    wwDBEdit1: TwwDBEdit;
    Label6: TLabel;
    wwDBEdit2: TwwDBEdit;
    wwDBLookupCombo1: TwwDBLookupCombo;
    Label7: TLabel;
    Label41: TLabel;
    cboForm: TwwDBLookupCombo;
    Label42: TLabel;
    cboMat: TwwDBLookupCombo;
    txtQ: TwwDBEdit;
    Label37: TLabel;
    Label8: TLabel;
    cboMot: TwwDBLookupCombo;
    Label30: TLabel;
    Label5: TLabel;
    GridY: TwwDBGrid;
    cboStIt: TwwDBComboBox;
    Sp_OC: TSpeedButton;
    Sp_Conf: TSpeedButton;
    Panel5: TPanel;
    btCancx: TSpeedButton;
    btConfx: TSpeedButton;
    bt_Selx: TSpeedButton;
    Grid2: TwwDBGrid;
    Q_IT: TwwQuery;
    Label9: TLabel;
    wwDBEdit4: TwwDBEdit;
    Label10: TLabel;
    cboMotc: TwwDBLookupCombo;
    DS_IT: TDataSource;
    UPD_IT: TUpdateSQL;
    Q_MOT2: TwwQuery;
    Q_MOT3: TwwQuery;
    Label34: TLabel;
    Label33: TLabel;
    Label29: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    BitBtn20: TBitBtn;
    Q_EXEC: TwwQuery;
    Label16: TLabel;
    Q_ITREC_ITEM_ID: TAutoIncField;
    Q_ITALTERAR: TStringField;
    Q_ITMAT_ID: TIntegerField;
    Q_ITQTDE: TFloatField;
    Q_ITSTATUS: TStringField;
    Q_ITORD_ID: TIntegerField;
    Q_ITMARCA_DESC: TStringField;
    Q_ITDSMAT: TStringField;
    Q_ITN_LOTE: TStringField;
    Q_ITREC_LOTE_ID: TAutoIncField;
    Q_ITHA_DEV: TStringField;
    Q_DVIDevit_ID: TAutoIncField;
    Q_DVIDev_ID: TIntegerField;
    Q_DVIN_Lote: TStringField;
    Q_DVIMat_ID: TIntegerField;
    Q_DVIMot_ID: TIntegerField;
    Q_DVIQtde: TFloatField;
    Q_DVIUsuario: TStringField;
    Q_DVIData: TDateTimeField;
    Q_DVIStatus: TStringField;
    Q_DVIRec_Item_ID: TIntegerField;
    Q_DVIRec_Lote_ID: TIntegerField;
    Q_DVIDSMAT: TStringField;
    Q_DVIUNI_ID: TIntegerField;
    Q_FORNFOR_CODI: TStringField;
    Q_FORNFOR_RAZA: TStringField;
    Q_DVCDev_ID: TAutoIncField;
    Q_DVCRec_ID: TIntegerField;
    Q_DVCNFIS: TIntegerField;
    Q_DVCFor_Codi: TStringField;
    Q_DVCData: TDateTimeField;
    Q_DVCMot_ID: TIntegerField;
    Q_MOTMOT_ID: TAutoIncField;
    Q_MOTMOT_DESC: TStringField;
    Q_MOTTP_MOT: TStringField;
    Q_MATMAT_ID: TAutoIncField;
    Q_MATMAT_DESC: TStringField;
    Q_MOT2MOT_ID: TAutoIncField;
    Q_MOT2MOT_DESC: TStringField;
    Q_MOT2TP_MOT: TStringField;
    Q_MOT3MOT_ID: TAutoIncField;
    Q_MOT3MOT_DESC: TStringField;
    Q_MOT3TP_MOT: TStringField;
    Q_MAT2MAT_ID: TAutoIncField;
    Q_MAT2MAT_DESC: TStringField;
    Q_DVIMarca_ID: TIntegerField;
    Q_DVIValid: TDateTimeField;
    Q_DVILocal_ID: TIntegerField;
    Q_DVIFor_Codi: TStringField;
    Q_ITVALID: TDateTimeField;
    Q_ITFOR_CODI: TStringField;
    Q_ITMARCA_ID: TIntegerField;
    Q_ITLOCAL_ID: TIntegerField;
    Q_ITUNI_ID: TIntegerField;
    Q_UNI: TwwQuery;
    Q_UNIUNI_ID: TAutoIncField;
    Q_UNIUNI_SIGLA: TStringField;
    Q_UNIUNI_DESC: TStringField;
    Q_ITUNI_DESC: TStringField;
    Q_DVIMARCA_DESC: TStringField;
    Q_DVIUNI_DESC: TStringField;
    Q_DVIDS_LOC: TStringField;
    SP_AJALM: TwwStoredProc;
    Q_ITMATMARCA_CONVERSAO: TFloatField;
    DBN: TwwDBNavigator;
    DBNFirst: TwwNavButton;
    DBNPriorPage: TwwNavButton;
    DBNPrior: TwwNavButton;
    DBNNext: TwwNavButton;
    DBNNextPage: TwwNavButton;
    DBNLast: TwwNavButton;
    DBNInsert: TwwNavButton;
    DBNDelete: TwwNavButton;
    DBNEdit: TwwNavButton;
    DBNPost: TwwNavButton;
    DBNCancel: TwwNavButton;
    DBNRefresh: TwwNavButton;
    DBNSaveBookmark: TwwNavButton;
    DBNRestoreBookmark: TwwNavButton;
    Procedure  Q_RECAfterPost(DataSet: TDataSet);
    Procedure  DS_RECStateChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SBT_SAIRYClick(Sender: TObject);
    procedure txtNFEnter(Sender: TObject);
    procedure wwDBEdit2Enter(Sender: TObject);
    procedure wwDBEdit2Exit(Sender: TObject);
    procedure cboFornEnter(Sender: TObject);
    procedure cboFornExit(Sender: TObject);
    procedure CboPessoaEnter(Sender: TObject);
    procedure CboPessoaExit(Sender: TObject);
    procedure DBCB_CFA_TICMEnter(Sender: TObject);
    procedure DBCB_CFA_TICMExit(Sender: TObject);
    procedure txtNFExit(Sender: TObject);
    procedure Sp_OCClick(Sender: TObject);
    procedure btConfxClick(Sender: TObject);
    procedure btCancxClick(Sender: TObject);
    procedure cboLocEnter(Sender: TObject);
    procedure bt_SelxClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Q_RECITVl_TotalChange(Sender: TField);

    Procedure  DS_RECITStateChange(Sender: TObject);
    Procedure  Q_RECITAfterPost(DataSet: TDataSet);
    procedure GridYCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure ChecaEnabled(DataSet: TDataSet);
    procedure cboFormEnter(Sender: TObject);
    procedure cboFormExit(Sender: TObject);
    procedure cboMatExit(Sender: TObject);
    procedure cboMatEnter(Sender: TObject);
    procedure txtPEnter(Sender: TObject);
    procedure txtPExit(Sender: TObject);
    procedure txtQEnter(Sender: TObject);
    procedure txtQExit(Sender: TObject);
    procedure txtICMEnter(Sender: TObject);
    procedure txtICMExit(Sender: TObject);
    procedure ChecaBloq(DataSet: TDataSet);
    procedure cboMotExit(Sender: TObject);
    procedure Q_DVICalcFields(DataSet: TDataSet);
    procedure Tb1Click(Sender: TObject);
    procedure cboFornClick(Sender: TObject);
    procedure Q_DVCAfterPost(DataSet: TDataSet);
    procedure Q_DVIAfterPost(DataSet: TDataSet);
    procedure Q_DVINewRecord(DataSet: TDataSet);
    procedure Bt_IncluirYClick(Sender: TObject);
    procedure bt_gravarYClick(Sender: TObject);
    procedure Bt_cancelarYClick(Sender: TObject);
    procedure Bt_excluirClick(Sender: TObject);
    procedure SBT_REFRYClick(Sender: TObject);
    procedure DS_DVIStateChange(Sender: TObject);
    procedure Q_DVCFOR_CODIChange(Sender: TField);
    procedure Q_DVCBeforePost(DataSet: TDataSet);
    procedure Q_ITAfterPost(DataSet: TDataSet);
    procedure Q_DVCNewRecord(DataSet: TDataSet);
    procedure cboMotcExit(Sender: TObject);
    procedure Sp_ConfClick(Sender: TObject);
    procedure Grid2CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure Q_DVCAfterDelete(DataSet: TDataSet);
    procedure Q_DVIAfterDelete(DataSet: TDataSet);
    procedure Q_DVCBeforeDelete(DataSet: TDataSet);
    procedure Tb1Change(Sender: TObject; NewTab: Integer;
      var AllowChange: Boolean);
    procedure Q_DVIBeforeDelete(DataSet: TDataSet);
    procedure BitBtn20Click(Sender: TObject);
    procedure Q_DVCAfterScroll(DataSet: TDataSet);
    procedure Q_DVIBeforePost(DataSet: TDataSet);
    procedure DS_DVCStateChange(Sender: TObject);
    procedure Q_DVIAfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDevas: TFDevas;
  Interno : Integer;
  SQL_Sel :String;
  TD_ID_DEVOL:String;

implementation

Uses U_Funcoes,
  Unt_Senha, UDvSel, UBDinAlm, UMenu;






{$R *.DFM}

procedure TFDevas.ChecaBloq;
Begin
{
        With Dtm_BaseDados3 Do
        Begin
                If (Q_RECStatus.AsString <> 'F') then   //Só bloqueia alteração de itens se a ordem
                                                        //tiver sido finalizada.
                Begin
                        cboForm.Enabled := true;
                        cboMat.Enabled := true;
                        txtQ.Enabled := true;
                End Else Begin
                        cboForm.Enabled := false;
                        cboMat.Enabled := false;
                        txtQ.Enabled := false;
                End;
        End;
}
End;

procedure  TFDevas.Q_RECITVl_TotalChange(Sender: TField);
begin
                GridY.RedrawGrid;
end;





Procedure  TFDevas.Q_RECAfterPost(DataSet: TDataSet);
begin
{
  With Dtm_BaseDados3 Do
  Begin
          try
           begin
             StrChave := Q_RECRec_ID.AsString;
             Dtm_BaseDados2.Dtb_BaseDados.ApplyUpdates([Q_REC]);
             //
           end;
          except
             On E:EdbEngineError do
             begin
                MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
                E.Message,MtError,[MbOk],0);
             end;
          end;

          Q_REC.Close;
          Q_REC.Open;

          If StrChave <> '' Then
                  Q_REC.Locate('Rec_ID',StrChave,[])
          Else Begin
                  Q_SQL.CLOSE;
                  Q_SQL.SQL.CLEAR;
                  Q_SQL.SQL.ADD('SELECT MAX (Rec_ID) Rec_ID FROM Rec_NF ');
                  Q_SQL.OPEN;
                  StrChave := Q_SQL.Fieldbyname('Rec_ID').AsString;
                  If StrChave <> '' Then
                          Q_REC.Locate('Rec_ID',StrChave,[])
          End;
  End;
  }
end ;

Procedure  TFDevas.Q_RECITAfterPost(DataSet: TDataSet);
begin
{
  With Dtm_BaseDados3 Do
  Begin
          try
           begin
             StrChave := Q_RECITRec_Item_ID.AsString;
             Dtm_BaseDados2.Dtb_BaseDados.ApplyUpdates([Q_RECIT]);
           end;
          except
             On E:EdbEngineError do
             begin
                MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
                E.Message,MtError,[MbOk],0);
             end;
          end;

          Q_RECIT.Close;
          Q_RECIT.Open;

          If StrChave <> '' Then
                  Q_RECIT.Locate('Rec_Item_ID',StrChave,[])
          Else Begin
                  Q_SQL.CLOSE;
                  Q_SQL.SQL.CLEAR;
                  Q_SQL.SQL.ADD('SELECT MAX (Rec_Item_ID) Rec_Item_ID FROM Rec_Item ');
                  Q_SQL.OPEN;

                  StrChave := Q_SQL.Fieldbyname('Rec_Item_ID').AsString;
                  If StrChave <> '' Then
                          Q_RECIT.Locate('Rec_Item_ID',StrChave,[])
          End;
  End;
  }
end ;

Procedure TFDevas.DS_RECStateChange(Sender: TObject);
begin
{
   With Dtm_BaseDados3 Do
   Begin
           if (Q_REC.State = dsEdit) or (Q_REC.State = dsInsert) then
             begin
                SBT_SAIRY.Enabled := false;
                SBT_REFRY.Enabled := false;
                Bt_IncluirY.Enabled := false;
                Bt_GravarY.Enabled := true;
                Bt_CancelarY.Enabled := true;
                Bt_Excluir.Enabled := false;

             end else begin
                SBT_SAIRY.Enabled := true;
                SBT_REFRY.Enabled := true;
                Bt_IncluirY.Enabled := true;
                Bt_GravarY.Enabled := false;
                Bt_CancelarY.Enabled := false;

                If not Q_REC.Eof then
                        If Q_RECStatus.AsString = 'F' then
                                Bt_Excluir.Enabled := False
                        Else
                                Bt_Excluir.Enabled := True
                Else
                        Bt_Excluir.Enabled := False;
           end;
   End;
   }
end;


Procedure TFDevas.DS_RECITStateChange(Sender: TObject);
begin
{
   With Dtm_BaseDados3 Do
   Begin
           if (Q_RECIT.State = dsEdit) or (Q_RECIT.State = dsInsert) then
             begin
                SBT_SAIRY.Enabled := false;
                SBT_REFRY.Enabled := false;
                Bt_GravarY.Enabled := true;
                Bt_CancelarY.Enabled := true;
                Bt_Excluir.Enabled := false;

             end else begin
                SBT_SAIRY.Enabled := true;
                SBT_REFRY.Enabled := true;
                Bt_IncluirY.Enabled := true;
                Bt_GravarY.Enabled := false;
                Bt_CancelarY.Enabled := false;
                If not  Q_RECIT.Eof then
                        Bt_Excluir.Enabled := true
                Else
                        Bt_Excluir.Enabled := false;
           end;

          // ChecaEnabled(Q_REC); // Pra verificar se pode entrar com nova OC ou habilitar botões de gravação.

   End;
   }
end;


procedure TFDevas.FormShow(Sender: TObject);
Var SQL:String;
begin

        Q_FORN.OPEN;
        Q_MOT.OPEN;
        Q_MOT2.OPEN;
        Q_UNI.OPEN;
        Q_MOT3.OPEN;


        SQl_Sel :=
        'SELECT		* ' +
        'FROM		DEV_CAPA ';

        Q_DVC.SQL.CLEAR;
        Q_DVC.SQL.ADD(SQL_Sel);
        Q_DVC.SQL.ADD('WHERE  DEV_ID = ' + DEV_IDX);
        Q_DVC.OPEN;
        Q_DVI.OPEN;

        Q_MAT.OPEN;
        Q_MAT2.OPEN;
//        Q_MAT3.OPEN;

        //Determina o ID em TIPO_DOCUMENTO referente a Devolução de Material
        SQL := ' SELECT         TD_ID ' +
               ' FROM           TIPO_DOCUMENTO ' +
               ' WHERE          APELIDO = ' + '''' + 'DM' + '''';

        Q_AUX.SQL.CLEAR;
        Q_AUX.SQL.ADD(SQL);
        Q_AUX.OPEN;

        TD_ID_DEVOL := Q_AUX.FieldByName('TD_ID').AsString;
        Tb1.PageIndex := 0;


        If DEV_IDX = '0' Then
        Begin
                txtNF.Enabled := True;
                cboForn.Enabled := True;
                cboMotc.Enabled := True;
                TxtNF.SetFocus;
                Q_DVC.Insert;
        End Else Begin
                Q_FORN.SQL.CLEAR;

                SQL :=
                'SELECT         FOR_CODI, '+
                '               FOR_RAZA '+
                ' FROM	        CPAFORN '+
                ' ORDER BY	FOR_CODI ';

                Q_FORN.SQL.CLEAR;
                Q_FORN.SQL.ADD(SQL);
                Q_FORN.OPEN;

                txtNF.Enabled := false;
                cboForn.Enabled := false;
                cboMotc.Enabled := false;
        End;


end;

procedure TFDevas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        Q_FORN.CLOSE;
        Q_DVC.CLOSE;
        Q_DVI.CLOSE;
        Q_MAT.CLOSE;
        Q_MAT2.CLOSE;
//        Q_MAT3.CLOSE;
        Q_MOT.CLOSE;
        Q_MOT2.CLOSE;
        Q_UNI.CLOSE;
        Q_MOT3.CLOSE;

        Action := caFree;
end;

procedure TFDevas.SBT_SAIRYClick(Sender: TObject);
begin
        Close;
end;

procedure TFDevas.txtNFEnter(Sender: TObject);
begin
        (sender as TwwDBEdit).Color := clAqua;
end;

procedure TFDevas.wwDBEdit2Enter(Sender: TObject);
begin
        (sender as TwwDBEdit).Color := clAqua;
end;

procedure TFDevas.wwDBEdit2Exit(Sender: TObject);
begin
        (sender as TwwDBEdit).Color := clWindow;
end;

procedure TFDevas.cboFornEnter(Sender: TObject);
begin
        (sender as TwwDBLookupCombo).Color := clAqua;
end;

procedure TFDevas.cboFornExit(Sender: TObject);
begin
        (sender as TwwDBLookupCombo).Color := clWindow;
        (Sender as TwwDBLookupCombo).text := Q_FORNFOR_CODI.AsString;
end;

procedure TFDevas.CboPessoaEnter(Sender: TObject);
begin
        (sender as TwwDBComboBox).Color := clAqua;
end;

procedure TFDevas.CboPessoaExit(Sender: TObject);
begin
        (sender as TwwDBComboBox).Color := clWindow;
end;

procedure TFDevas.DBCB_CFA_TICMEnter(Sender: TObject);
begin
        (Sender as TwwDBCombobox).color := clAqua;
end;

procedure TFDevas.DBCB_CFA_TICMExit(Sender: TObject);
begin
        (Sender as TwwDBCombobox).color := clWindow;
end;

procedure TFDevas.txtNFExit(Sender: TObject);
var SQL:String;
begin
        (Sender as TwwDBEdit).Color := clWindow;

        If txtNF.Text <> '' then
        Begin
                SQL :=  ' SELECT         DISTINCT RN.FOR_CODI, FORN.FOR_RAZA ' +
                        ' FROM           REC_NF RN, ' +
                        '                CPAFORN FORN ' +
                        ' WHERE          RN.NFIS = ' + txtNF.Text +
                        ' AND            RN.FOR_CODI = FORN.FOR_CODI ' +
                        ' ORDER BY       RN.FOR_CODI ' ;
        End Else Begin
                SQL :=  ' SELECT         DISTINCT FORN.FOR_CODI, FORN.FOR_RAZA ' +
                        ' FROM           REC_NF RN RIGHT OUTER JOIN ' +
                        '                CPAFORN FORN ' +
                        ' ON             RN.FOR_CODI = FORN.FOR_CODI ' +
                        ' ORDER BY       FORN.FOR_CODI ' ;
        End;

        Q_FORN.SQL.CLEAR;
        Q_FORN.SQL.ADD(SQL);
        Q_FORN.OPEN;

        If (Q_DVC.State = dsInsert) or (Q_DVC.State = dsEdit) then
        Begin
                Q_DVCFOR_CODI.AsString := '';
                cboForn.Text := '';
                Q_DVCRec_ID.AsString := '';
        End;

end;

procedure TFDevas.Sp_OCClick(Sender: TObject);
begin
        If Q_DVCRec_ID.AsString <> '' Then
        Begin
                Q_IT.CLOSE;
                Q_IT.OPEN;
                Panel5.Visible := true;
                GridY.Visible := false;
        End Else Begin
                MessageDlg('É necessário entrar com o lançamento da Capa da Devolução!',MtError,[MbOk],0);
        End;
end;

procedure TFDevas.btConfxClick(Sender: TObject);
Var
        SQL:String;
begin

        If MessageDlg('Deseja realmente incluir?',
        mtInformation, [mbYes, mbNo], 0) = mrYes then
        Begin

                If Q_IT.State = dsEdit Then
                        Q_IT.POST;

                SQL :=  'INSERT INTO DEV_ITEM ' +
                        '(DEV_ID,' +
                        'N_LOTE,' +
                        'Mat_ID,' +
                        'MOT_ID,'+
                        'QTDE,' +
                        'USUARIO,' +
                        'REC_ITEM_ID,' +
                        'REC_LOTE_ID,' +
                        'DATA,' +
                        'MARCA_ID,' +
                        'VALID,' +
                        'LOCAL_ID,' +
                        'FOR_CODI,' +
                        'UNI_ID)' +
                        ' (SELECT  ' +
                                Q_DVCDev_ID.AsString + ',' +
                                'RL.N_LOTE,' +
                                'RI.Mat_ID,'+
                                Q_DVCMOT_ID.AsString + ',' +
                                'RL.QTDE * (CASE WHEN MM.MATMARCA_CONVERSAO IS NULL THEN 1 WHEN MM.MATMARCA_CONVERSAO = 0 THEN 1 ELSE MM.MATMARCA_CONVERSAO END) ,' +
                                '''' + StrUsuario + '''' + ',' +
                                'RI.REC_ITEM_ID,' +
                                'RL.REC_LOTE_ID,' +
                                'GetDate(),' +
                                'RI.MARCA_ID,' +
                                'RL.VALID,' +
                                'RN.LOCAL_ID,' +
                                'RN.FOR_CODI, ' +
                                'MAT.UNI_ID ' +
                       ' FROM   REC_NF RN, ' +
                       '        REC_ITEM RI, '+
                       '        REC_LOTE RL, ' +
                       '        MATERIAL_MARCA MM, ' +
                       '        MATERIAIS MAT ' +
                       ' WHERE  RI.REC_ITEM_ID = RL.REC_ITEM_ID  ' +
                       ' AND    RI.REC_ID = RN.REC_ID ' +
                       ' AND    RI.MATMARCA_ID = MM.MATMARCA_ID ' +
                       ' AND    MM.MAT_ID = MAT.MAT_ID ' +
                       ' AND    RL.ALTERAR = ' + '''' + 'S' + '''' + ')';

                Q_AUX.SQL.CLEAR;
                Q_AUX.SQL.ADD(SQL);
                Q_AUX.ExecSQL;

                SQL := 'UPDATE           REC_LOTE '+
                       'SET              ALTERAR = NULL ' +
                       'WHERE	         ALTERAR = ' + '''' + 'S' + '''';

                Q_AUX.SQL.CLEAR;
                Q_AUX.SQL.ADD(SQL);
                Q_AUX.ExecSQL;

                Q_DVI.CLOSE;
                Q_DVI.OPEN;

                GridY.Visible := true;
                Panel5.Visible := false;
        End;
end;


procedure TFDevas.ChecaEnabled(DataSet: TDataSet);
begin
{
        With Dtm_BaseDados3 Do
        Begin
                If Q_RECStatus.AsString = 'F' then
                //Ordem Finalizada, não pode mais mexer!
                Begin
        }
//                        Sp_Conf.Enabled := False;
//                        Sp_OC.Enabled   := False;
{                        bt_Excluir.Enabled := False;
                        GridY.Options := [dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgConfirmDelete,dgCancelOnExit,dgWordWrap]
                End Else Begin
                }
//                        Sp_Conf.Enabled := True;
//                        Sp_OC.Enabled   := True;

{                        GridY.Options := [dgEditing,dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgConfirmDelete,dgCancelOnExit,dgWordWrap]
                End;

        End;
        }
End;

procedure TFDevas.btCancxClick(Sender: TObject);
VAR SQL:String;
begin
        If Q_IT.State = dsEdit then
                Q_IT.POST;


        SQL := 'UPDATE           REC_LOTE '+
               'SET              ALTERAR = NULL ' +
               'WHERE	         ALTERAR = ' + '''' + 'S' + '''';

        Q_AUX.SQL.CLEAR;
        Q_AUX.SQL.ADD(SQL);
        Q_AUX.ExecSQL;

        Interno := 1;

        GridY.Visible := true;
        Panel5.Visible := false;
end;

procedure TFDevas.cboLocEnter(Sender: TObject);
begin
        (Sender as TwwDBLookupCombo).Color := clAqua;
end;

procedure TFDevas.bt_SelxClick(Sender: TObject);
Var SQL:String;
begin

        Q_IT.First;

        //ATUALIZA TANTO REC_LOTE QUANTO REC_ITEM PORQUE
        //QUANDO NÃO HÁ CONTROLE DE LOTE AO INVÉS DE REC_LOTE
        //INSERE A PARTIR DE REC_ITEM.
        While not Q_IT.EOF Do
        Begin
                SQL :=  ' UPDATE REC_LOTE SET ALTERAR = ' + '''' + 'S' + '''' +
                        ' WHERE  REC_LOTE_ID = ' + Q_ITRec_Lote_ID.AsString;

                Q_EXEC.SQL.CLEAR;
                Q_EXEC.SQL.ADD(SQL);
                Q_EXEC.ExecSQL;

                Q_IT.Next;
        End;
        Q_IT.CLOSE;
        Q_IT.OPEN;

end;

procedure TFDevas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
     begin
       Key := #0;
       Perform(WM_Nextdlgctl,0,0);
    end else begin
       if (Key = #27 ) then close ;
    end ;
end;

procedure TFDevas.GridYCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
        If Q_DVIStatus.AsString = 'F' then
        Begin
                AFont.Color := clRed;
        End Else If Q_DVIStatus.AsString = '' then
        Begin
                AFont.Color := clBlue;
        End Else Begin
                AFont.Color := clBlack;
        End;

        If Highlight then AFont.Color := clWhite;
end;

procedure TFDevas.cboFormEnter(Sender: TObject);
begin
        (Sender as TwwDbLookupCombo).color := clAqua;
end;

procedure TFDevas.cboFormExit(Sender: TObject);
begin
        (Sender as TwwDbLookupCombo).color := clWindow;
end;

procedure TFDevas.cboMatExit(Sender: TObject);
begin
        (Sender as TwwDbLookupCombo).color := clWindow;
end;

procedure TFDevas.cboMatEnter(Sender: TObject);
begin
        (Sender as TwwDbLookupCombo).color := clAqua;
end;

procedure TFDevas.txtPEnter(Sender: TObject);
begin
        (Sender as TwwDbEdit).color := clAqua;
end;

procedure TFDevas.txtPExit(Sender: TObject);
begin
        (Sender as TwwDbEdit).color := clWindow;
end;

procedure TFDevas.txtQEnter(Sender: TObject);
begin
        (Sender as TwwDbEdit).color := clAqua;
end;

procedure TFDevas.txtQExit(Sender: TObject);
begin
        (Sender as TwwDbEdit).color := clWindow;
end;

procedure TFDevas.txtICMEnter(Sender: TObject);
begin
        (Sender as TwwDbEdit).color := clAqua;
end;

procedure TFDevas.txtICMExit(Sender: TObject);
begin
        (Sender as TwwDbEdit).color := clWindow;
end;

procedure TFDevas.cboMotExit(Sender: TObject);
begin
        (sender as TwwDBLookupCombo).Color := clWindow;

end;

procedure TFDevas.Q_DVICalcFields(DataSet: TDataSet);
begin
{        If Q_DVIM_F_ID.AsString <> '' then
        Begin
                SQL :=  'SELECT         DESCRICAO ' +
                        'FROM           MATERIAIS_FORNECEDOR ' +
                        'WHERE          M_F_ID =  ' + Q_DVIM_F_ID.AsString;

                Q_AUX.SQL.CLEAR;
                Q_AUX.SQL.ADD(SQL);
                Q_AUX.OPEN;

                If Q_AUX.FieldByName('DESCRICAO').AsString <> '' then
                Begin
                        Q_DVIDSMF.AsString := Q_AUX.FieldByName('DESCRICAO').AsString;
                        Q_AUX.Close;
                End Else
                        Q_DVIDSMF.AsString := '';
        End Else
                Q_DVIDSMF.AsString := '';
        }

end;

procedure TFDevas.Tb1Click(Sender: TObject);
begin
        If (Q_DVC.State = dsInsert) or (Q_DVC.State = dsEdit) then
                Q_DVC.Post;
        If (Q_DVI.State = dsInsert) or (Q_DVI.State = dsEdit) then
                Q_DVI.Post;


        IF TB1.PageIndex = 0 then
        Begin
                DBN.DataSource := DS_DVC;
                bt_IncluirY.Enabled := true;
                If (Q_DVCDev_ID.AsString <> '') then
                        bt_Excluir.Enabled := true
                Else
                        bt_Excluir.Enabled := false
        End Else Begin
                bt_Excluir.Enabled := False;
                bt_Incluiry.Enabled := false;
                DBN.DataSource := DS_DVI;
                If (Q_DVCDev_ID.AsString <> '') and (Q_DVIStatus.AsString <> 'F') then
                Begin
                        sp_OC.Enabled := True;
                        sp_Conf.Enabled := True;
                End Else Begin
                        sp_OC.Enabled := False;
                        sp_Conf.Enabled := False;
                End;
        End
end;

procedure TFDevas.cboFornClick(Sender: TObject);
begin
        If txtNf.Text = '' then
                MessageDlg('Antes é necessário selecionar um número de NF!',mtWarning,[MbOk],0);

end;




procedure TFDevas.Q_DVCAfterPost(DataSet: TDataSet);
var     SQL:String;
begin
  try
   begin
     FMenu.DataBase1.ApplyUpdates([Q_DVC]);

   end;
  except
     On E:EdbEngineError do
     begin
        MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
        E.Message,MtError,[MbOk],0);
     end;
  end;

  Q_DVC.SQL.CLEAR;

  If (DEV_IDX = '0') Or (DEV_IDX = '') Then
  Begin
        SQL :=  'SELECT          MAX(DEV_ID) DEV_IDX ' +
                'FROM            DEV_CAPA ';

        Q_AUX.SQL.CLEAR;
        Q_AUX.SQL.ADD(SQL);
        Q_AUX.OPEN;

        If Q_AUX.FieldByName('DEV_IDX').AsString <> '' Then
                DEV_IDX := Q_AUX.FieldByName('DEV_IDX').AsString;
  End;

  Q_DVC.SQL.ADD(SQL_Sel);
  Q_DVC.SQL.ADD(' WHERE   DEV_ID = ' + DEV_IDX);
  Q_DVC.Open;

end;

procedure TFDevas.Q_DVIAfterPost(DataSet: TDataSet);
var StrChave:String ;
begin
  try
   begin
     StrChave := Q_DVIDevit_ID.AsString;
     FMenu.DataBase1.ApplyUpdates([Q_DVI]);
   end;
  except
     On E:EdbEngineError do
     begin
        MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
        E.Message,MtError,[MbOk],0);
     end;
  end;
  Q_DVI.Close;
  Q_DVI.Open;

  If StrChave <> '' then
	Q_DVI.Locate('Devit_ID',StrChave,[]);

end;

procedure TFDevas.Q_DVINewRecord(DataSet: TDataSet);
begin
        Q_DVIDev_ID.AsString := Q_DVCDev_ID.AsString;
        Q_DVIData.AsDateTime := Date();
end;

procedure TFDevas.Bt_IncluirYClick(Sender: TObject);
begin
        If (Q_DVC.State = dsInsert) or (Q_DVC.State = dsEdit) then
                Q_DVC.Post;

        If Q_DVI.State = dsEdit then
                Q_DVI.Post;


        If Tb1.PageIndex = 0 then
        Begin
                txtNF.Enabled := true;
                cboForn.Enabled := true;
                cboMotc.Enabled := true;
                txtNF.SetFocus;
                
                Q_DVC.Insert;

        End;
        //Não existe inserção manual de DVI
end;

procedure TFDevas.bt_gravarYClick(Sender: TObject);
begin
        If Tb1.PageIndex = 0 then
                Q_DVC.Post
        Else
                Q_DVI.Post;


end;

procedure TFDevas.Bt_cancelarYClick(Sender: TObject);
begin
        If Tb1.PageIndex = 0 then
                Q_DVC.Cancel
        Else
                Q_DVI.Cancel;
end;

procedure TFDevas.Bt_excluirClick(Sender: TObject);
begin
        If (Q_DVC.State = dsInsert) or (Q_DVC.State = dsEdit) then
                Q_DVC.Post;

        If Q_DVI.State = dsEdit then
                Q_DVI.Post;

        If Tb1.PageIndex = 0 then
        Begin
                Q_DVC.Delete
        End Else Begin
                If Q_DVIStatus.AsString <> 'F' then
                        Q_DVI.Delete
                Else
                        MessageDlg('Não é possível excluir este item pois já foi gerada baixa através dele.'
                        ,MtError,[MbOk],0);
        End;
end;

procedure TFDevas.SBT_REFRYClick(Sender: TObject);
begin
        Q_DVC.Close;
        Q_DVC.Open;
        Q_DVI.Close;
        Q_DVI.Open;

end;

procedure TFDevas.DS_DVIStateChange(Sender: TObject);
begin
        If (Q_DVI.State = dsEdit) or (Q_DVI.State = dsInsert) then
        Begin
                SBT_SAIRY.Enabled := false;
               // SBT_REFRY.Enabled := false;
                BT_CancelarY.Enabled := true;
                Bt_GravarY.enabled := true;
                Bt_Excluir.Enabled := false;
        End Else begin
                SBT_SAIRY.Enabled := true;
               // SBT_REFRY.Enabled := true;
                bt_gravarY.Enabled := false;
                bt_cancelarY.Enabled := false;

                If (not Q_DVI.eof) and (Q_DVIStatus.AsString <> 'S') then
                        BT_Excluir.enabled := true
                Else
                        BT_Excluir.enabled := False;
        End;

end;

procedure TFDevas.Q_DVCFOR_CODIChange(Sender: TField);
var SQL:String;
begin
        //Atualiza os formatos possíveis para o fornecedor
//        Q_MAT3.CLOSE;
//        Q_MAT3.OPEN;
        Q_MAT.CLOSE;
        Q_MAT.OPEN;
        //

        If (Q_DVCFOR_CODI.AsString <> '') and (txtNF.Text <> '') then
        Begin
                SQL :=  ' SELECT         REC_ID ' +
                        ' FROM           REC_NF ' +
                        ' WHERE          NFIS = ' + txtNF.Text +
                        ' AND            FOR_CODI = ''' + Q_DVCFOR_CODI.AsString +'''';

                Q_AUX.SQL.CLEAR;
                Q_AUX.SQL.ADD(SQL);
                Q_AUX.OPEN;

                If (Q_AUX.FieldByName('REC_ID').AsString <> '') then
                        Q_DVCRec_ID.AsString := Q_AUX.FieldByName('REC_ID').AsString
                Else
                        Q_DVCRec_ID.AsString := '';


        End Else Begin
                Q_DVCRec_ID.AsString := '';
        End;

end;

procedure TFDevas.Q_DVCBeforePost(DataSet: TDataSet);
VAR SQL:String;
begin
        If Q_DVCNFIS.AsString = '' then
        Begin
                MessageDlg('Favor preencher o número de NF!',
                mtWarning,[MbOk],0);
                abort;
        End;
        If Q_DVCFOR_CODI.AsString = '' then
        Begin
                MessageDlg('Favor preencher o Fornecedor!',
                mtWarning,[MbOk],0);
                abort;
        End;
        If Q_DVCMOT_ID.AsString = '' then
        Begin
                MessageDlg('Favor preencher o Motivo!',
                mtWarning,[MbOk],0);
                abort;
        End;


        If Q_DVC.State = dsInsert then
        Begin

                SQL :=  'SELECT          MAX(DEV_ID) DEV_IDX ' +
                        'FROM            DEV_CAPA ';

                Q_AUX.SQL.CLEAR;
                Q_AUX.SQL.ADD(SQL);
                Q_AUX.OPEN;

                If Q_AUX.FieldByName('DEV_IDX').AsString <> '' Then
                        DEV_IDX := Q_AUX.FieldByName('DEV_IDX').AsString;
        End;

        If Q_DVCDev_ID.AsString <> '' then
                DEV_IDX := Q_DVCDev_ID.AsString;

        If DEV_IDX = '' Then
                DEV_IDX := '0';

end;

procedure TFDevas.Q_ITAfterPost(DataSet: TDataSet);
var StrChave:String ;
begin
  try
   begin
     StrChave := Q_ITREC_Item_ID.AsString;
     FMenu.DataBase1.ApplyUpdates([Q_IT]);
   end;
  except
     On E:EdbEngineError do
     begin
        MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
        E.Message,MtError,[MbOk],0);
     end;
  end;
  Q_IT.Close;
  Q_IT.Open;

  If StrChave <> '' then
	Q_IT.Locate('REC_ITEM_ID',StrChave,[]);

end;

procedure TFDevas.Q_DVCNewRecord(DataSet: TDataSet);
begin
        Q_DVCData.AsDateTime := Date;
end;

procedure TFDevas.cboMotcExit(Sender: TObject);
begin
        (sender as TwwDBLookupCombo).Color := clWindow;
        (Sender as TwwDBLookupCombo).text := Q_MOTMot_Desc.AsString;

end;

procedure TFDevas.Sp_ConfClick(Sender: TObject);
Var SQL, DATAI:String;
begin
        If MessageDlg('Deseja realmente atualizar almoxarifado?',
        mtInformation, [mbYes, mbNo], 0) = mrYes then
        Begin
                Q_DVI.First;

                        While not Q_DVI.Eof Do
                        Begin
                                //Não gera baixa com as que já geraram anteriormente.
                                If Q_DVIStatus.AsString <> 'F' then
                                Begin

                                        SP_AJALM.ParamByName('@TD_ID').Value := TD_ID_DEVOL;
                                        SP_AJALM.ParamByName('@DOCTO').Value := Q_DVCDev_ID.AsString;
                                        //Passa o número da Devolução como o número do documento.

                                        SP_AJALM.ParamByName('@N_LOTE').Value := Q_DVIN_LOTE.AsString;
                                        SP_AJALM.ParamByName('@QTDE').Value := Q_DVIQTDE.AsFloat;
                                        SP_AJALM.ParamByName('@MAT_ID').Value := Q_DVIMat_ID.AsString;
                                        SP_AJALM.ParamByName('@FOR_CODI').Value := Q_DVIFor_Codi.AsString;
                                        SP_AJALM.ParamByName('@MOT_ID').Value := '';
                                        SP_AJALM.ParamByName('@TIPO').Value := 'B';
                                        SP_AJALM.ParamByName('@USUARIO').Value := StrUsuario;
                                        SP_AJALM.ParamByName('@REC_ITEM_ID').Value := Null;
                                        SP_AJALM.ParamByName('@DATAX').Value := Null;
                                        SP_AJALM.ParamByName('@MARCA_ID').Value := Q_DVIMarca_ID.AsString;
                                        SP_AJALM.ParamByName('@LOCAL_ID').Value := Q_DVILocal_ID.AsString;

                                        DATAI  := formatdatetime('DD-MM-YYYY',strtodate(Q_DVIValid.AsString)) ;
                                        SP_AJALM.ParamByName('@VALID').Value := DATAI;

                                        SP_AJALM.ExecProc;

                                        If SP_AJALM.ParamByName('@MSG').Value <> 'OK' then
                                                MessageDlg(SP_AJALM.ParamByName('@MSG').Value + ' Item : '+Q_DVIDSMat.AsString + '; Lote:' + Q_DVIN_Lote.AsString ,
                                                mtInformation, [mbOk], 0)
                                        Else Begin
                                                MessageDlg('Operação realizada com sucesso! Item : '+Q_DVIDSMat.AsString + '; Lote:' + Q_DVIN_Lote.AsString ,
                                                mtInformation, [mbOk], 0);
                                                If Q_DVI.State <> dsEdit then
                                                        Q_DVI.Edit;

                                                SQL :=  ' UPDATE        DEV_ITEM ' +
                                                        ' SET           STATUS = ' + '''' + 'F' + '''' +
                                                        ' WHERE         DEVIT_ID = ' + Q_DVIDevit_ID.AsString;

                                                Q_EXEC.SQL.CLEAR;
                                                Q_EXEC.SQL.ADD(SQL);
                                                Q_EXEC.ExecSQL;
                                        End;
                                End;
                                Q_DVI.Next;
                        End;
        End;
        Q_DVI.CLOSE;
        Q_DVI.OPEN;
End;

procedure TFDevas.Grid2CalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
        If Q_ITHA_DEV.AsString = 'S' then
        Begin
                AFont.Color := clRed;
        End Else If Q_ITHA_DEV.AsString = 'N' then
        Begin
                AFont.Color := clBlue;
        End Else Begin
                AFont.Color := clBlack;
        End;

        If Highlight then AFont.Color := clWhite;
end;

procedure TFDevas.Q_DVCAfterDelete(DataSet: TDataSet);
begin
   try
     begin
       FMenu.DataBase1.ApplyUpdates([Q_DVC]);
     end;
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
end;

procedure TFDevas.Q_DVIAfterDelete(DataSet: TDataSet);
begin
   try
     begin
       FMenu.DataBase1.ApplyUpdates([Q_DVI]);
     end;
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
end;

procedure TFDevas.Q_DVCBeforeDelete(DataSet: TDataSet);
begin
  if MessageDlg('Confirma Exclusão ?',
    mtInformation, [mbYes, mbNo], 0) = mrNo then
    begin
      Abort;
    end;
end;

procedure TFDevas.Tb1Change(Sender: TObject; NewTab: Integer;
  var AllowChange: Boolean);
begin
        IF TB1.PageIndex = 0 then
                DBN.DataSource := DS_DVC
        Else
                DBN.DataSource := DS_DVI;



end;

procedure TFDevas.Q_DVIBeforeDelete(DataSet: TDataSet);
begin
  if MessageDlg('Confirma Exclusão ?',
    mtInformation, [mbYes, mbNo], 0) = mrNo then
    begin
      Abort;
    end;

end;

procedure TFDevas.BitBtn20Click(Sender: TObject);
begin
   Application.CreateForm (TFBDinAlm, FBDinAlm);
   FBDinAlm.ShowModal;
   FBDinAlm.Release;
end;

procedure TFDevas.Q_DVCAfterScroll(DataSet: TDataSet);
begin
        If Q_DVCDev_ID.AsString <> '' then
        Begin
                txtNF.Enabled := false;
                cboForn.Enabled := false;         
                cboMotc.Enabled := false;
        End Else Begin
                txtNF.Enabled := true;
                cboForn.Enabled := true;
                cboMotc.Enabled := true;
        End;
end;

procedure TFDevas.Q_DVIBeforePost(DataSet: TDataSet);
begin
        //Não permite alteração em Devoluções que já atualizaram estoque.
        If Q_DVIStatus.AsString = 'F' then
                Abort;
end;

procedure TFDevas.DS_DVCStateChange(Sender: TObject);
begin
        If (DS_DVC.DataSet.State = dsEdit) or (DS_DVC.DataSet.State = dsInsert) then
        Begin
                SBT_SAIRY.Enabled := false;
               // SBT_REFRY.Enabled := false;
                BT_CancelarY.Enabled := true;
                Bt_GravarY.enabled := true;
                Bt_IncluirY.Enabled := false;
        End Else begin
                SBT_SAIRY.Enabled := true;
               // SBT_REFRY.Enabled := true;
                bt_gravarY.Enabled := false;
                bt_cancelarY.Enabled := false;
                Bt_IncluirY.Enabled := true;

                If not DS_DVC.DataSet.EOF then
                        BT_Excluir.enabled := true;
        End;

        If Q_DVCDev_ID.AsString <> '' then
                DEV_IDX := Q_DVCDev_ID.AsString
        Else
                DEV_IDX := '0';
end;

procedure TFDevas.Q_DVIAfterScroll(DataSet: TDataSet);
begin
        If Q_DVIStatus.AsString = 'F' then
        Begin
                bt_Excluir.Enabled := false;
                SP_OC.Enabled := false;
                SP_CONF.Enabled := false;
        End Else Begin
                bt_Excluir.Enabled := true;
                SP_OC.Enabled := true;
                SP_CONF.Enabled := true;
        End;

        If Tb1.PageIndex = 1 then
                Bt_Incluiry.Enabled := false;
end;


procedure TFDevas.FormCreate(Sender: TObject);
VAR IK : Integer;
begin
   for IK := 0 TO PRED(ComponentCount) do begin
       if Components[IK] is TwwDBGrid then begin
           (Components[IK] as TwwDBGrid).TitleColor := clBtnFace;
           (Components[IK] as TwwDBGrid).TitleFont.Color := clBlack;
       end;
   end;

end;

end.



