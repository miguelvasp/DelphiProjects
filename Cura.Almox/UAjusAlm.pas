unit UAjusAlm;

interface


uses
  Windows, Messages, SysUtils, Classes, Graphics
  , Controls, Forms, Dialogs,
  StdCtrls, Mask, Wwdbedit, Buttons, DB, DBTables, Wwdatsrc, Wwquery,
  DBCtrls, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, wwSpeedButton,
  wwDBNavigator, wwdblook,Tabnotbk, ComCtrls, Wwdotdot, Wwdbcomb, wwstorep,
  wwDialog, wwidlg ;

type
  TFAjustAlm = class(TForm)
    Panel4: TPanel;
    Grid: TwwDBGrid;
    cboMat: TwwDBLookupCombo;
    Label19: TLabel;
    SBT_SAIR: TSpeedButton;
    txtLote: TwwDBEdit;
    Label3: TLabel;
    Panel5: TPanel;
    Label2: TLabel;
    CboTipoMov: TwwDBComboBox;
    Label4: TLabel;
    cboMot: TwwDBLookupCombo;
    dbOBS: TDBMemo;
    Label46: TLabel;
    lbMin: TLabel;
    txtSaldo: TwwDBEdit;
    wwDBEdit2: TwwDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    cboPesqMat: TwwDBLookupCombo;
    Label9: TLabel;
    txtPesqLote: TwwDBEdit;
    Label10: TLabel;
    cboPesqFor: TwwDBLookupCombo;
    btPesquisa: TBitBtn;
    BitBtn1: TBitBtn;
    Data1: TMaskEdit;
    Data2: TMaskEdit;
    Label15: TLabel;
    Label16: TLabel;
    cboForn: TwwDBLookupCombo;
    Label17: TLabel;
    rdEnt: TRadioButton;
    rdBai: TRadioButton;
    ckPos: TCheckBox;
    ckB: TCheckBox;
    Q_AUX: TwwQuery;
    Q_MAT_PESQ: TwwQuery;
    Q_FORN_PESQ: TwwQuery;
    RadioButton1: TRadioButton;
    cboTipo: TwwDBComboBox;
    Label6: TLabel;
    wwDBEdit1: TwwDBEdit;
    Label12: TLabel;
    wwDBEdit3: TwwDBEdit;
    Panel1: TPanel;
    Bt_Incluir: TSpeedButton;
    bt_gravar: TSpeedButton;
    Bt_cancelar: TSpeedButton;
    SBT_REFR: TSpeedButton;
    SpeedButton2: TSpeedButton;
    cboTD: TwwDBLookupCombo;
    Label13: TLabel;
    Label14: TLabel;
    txtID: TwwDBEdit;
    Q_TDOC: TwwQuery;
    Q_TDOCTD_ID: TAutoIncField;
    Q_TDOCDESCRICAO: TStringField;
    btImpr: TSpeedButton;
    Label18: TLabel;
    wwDBEdit4: TwwDBEdit;
    BitBtn2: TBitBtn;
    Q_AJALM: TwwQuery;
    DS_AJALM: TwwDataSource;
    UPD_AJALM: TUpdateSQL;
    Q_MOT: TwwQuery;
    Q_CALC: TwwQuery;
    Q_CALCQTDE: TFloatField;
    DS_CALC: TwwDataSource;
    Q_FORN: TwwQuery;
    Q_MAT: TwwQuery;
    DS_MAT: TDataSource;
    SP_AJALM: TwwStoredProc;
    Q_SBOBAJ: TwwQuery;
    Q_SBOBAJPeso: TFloatField;
    Q_SBOBAJQtde: TFloatField;
    DS_SBOBAJ: TDataSource;
    Q_MAT_PESQMAT_ID: TAutoIncField;
    Q_MAT_PESQMAT_DESC: TStringField;
    Q_MATMAT_ID: TAutoIncField;
    Q_MATMAT_DESC: TStringField;
    Q_MOTMOT_ID: TAutoIncField;
    Q_MOTMOT_DESC: TStringField;
    Q_FORN_PESQFOR_CODI: TStringField;
    Q_FORN_PESQFOR_RAZA: TStringField;
    Q_FORNFOR_CODI: TStringField;
    Q_FORNFOR_RAZA: TStringField;
    Q_AJALMAlmox_ID: TAutoIncField;
    Q_AJALMAlmox_ID_Mestre: TIntegerField;
    Q_AJALMFor_Codi: TStringField;
    Q_AJALMMat_ID: TIntegerField;
    Q_AJALMLocal_ID: TIntegerField;
    Q_AJALMMarca_ID: TIntegerField;
    Q_AJALMN_Lote: TStringField;
    Q_AJALMValid: TDateTimeField;
    Q_AJALMQtde: TFloatField;
    Q_AJALMQtde_Retirada: TFloatField;
    Q_AJALMQtde_Input: TFloatField;
    Q_AJALMTipo: TStringField;
    Q_AJALMObs: TMemoField;
    Q_AJALMData: TDateTimeField;
    Q_AJALMUsuario: TStringField;
    Q_AJALMTD_ID: TIntegerField;
    Q_AJALMDocto: TStringField;
    Q_AJALMRec_Item_ID: TIntegerField;
    Label20: TLabel;
    wwDBLookupCombo1: TwwDBLookupCombo;
    Q_MARCA: TwwQuery;
    Label21: TLabel;
    wwDBEdit5: TwwDBEdit;
    Q_MATGR: TwwQuery;
    StringField1: TStringField;
    AutoIncField1: TAutoIncField;
    Q_AJALMDSMAT: TStringField;
    Q_FORNGR: TwwQuery;
    StringField2: TStringField;
    StringField3: TStringField;
    Q_LOCAL: TwwQuery;
    Q_LOCALLocal_ID: TAutoIncField;
    Q_LOCALDescricao: TStringField;
    Q_LOCALDisponivelSN: TStringField;
    Label5: TLabel;
    wwDBLookupCombo2: TwwDBLookupCombo;
    Q_AJALMDSFORN: TStringField;
    Q_MARCAGR: TwwQuery;
    Q_LOCALGR: TwwQuery;
    StringField5: TStringField;
    AutoIncField2: TAutoIncField;
    StringField6: TStringField;
    Q_AJALMDSLOCAL: TStringField;
    Q_MARCAMARCA_ID: TAutoIncField;
    Q_MARCAMARCA_DESC: TStringField;
    Q_MARCAGRMARCA_ID: TAutoIncField;
    Q_MARCAGRMARCA_DESC: TStringField;
    Q_AJALMDS_MARCA: TStringField;
    SpeedButton7: TSpeedButton;
    Label22: TLabel;
    wwDBLookupCombo3: TwwDBLookupCombo;
    Label23: TLabel;
    cboMarca: TwwDBLookupCombo;
    Q_MARCA_FILT: TwwQuery;
    StringField4: TStringField;
    AutoIncField3: TAutoIncField;
    Q_LOCAL_FILT: TwwQuery;
    StringField7: TStringField;
    AutoIncField4: TAutoIncField;
    StringField8: TStringField;
    MaskEdit1: TMaskEdit;
    Label11: TLabel;
    Q_AJALMUni_ID: TIntegerField;
    Q_AJALMMot_ID: TIntegerField;
    BitBtn20: TBitBtn;
    Q_AJALMUni_Sigla: TStringField;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    Label24: TLabel;
    edtObs: TEdit;
    lbObs: TLabel;
    btnGetMaterial: TBitBtn;
    BitBtn3: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure SBT_SAIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bt_gravarClick(Sender: TObject);
    procedure Bt_IncluirClick(Sender: TObject);
    procedure Bt_cancelarClick(Sender: TObject);
    procedure Bt_excluirClick(Sender: TObject);
    procedure SBT_REFRClick(Sender: TObject);

    procedure Q_AJALMAfterScroll(DataSet: TDataSet);
    procedure DS_AJALMDataChange(Sender: TObject; Field: TField);
    procedure DS_AJALMStateChange(Sender: TObject);
    procedure Q_AJALMAfterPost(DataSet: TDataSet);
    procedure Q_AJALMAfterDelete(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure txtLoteEnter(Sender: TObject);
    procedure txtLoteExit(Sender: TObject);
    procedure cboMotExit(Sender: TObject);
    procedure cboMotEnter(Sender: TObject);
    procedure cboMatEnter(Sender: TObject);
    procedure cboMatExit(Sender: TObject);
    procedure CboTipoMovExit(Sender: TObject);
    procedure CboTipoMovEnter(Sender: TObject);
    procedure dbOBSEnter(Sender: TObject);
    procedure dbOBSExit(Sender: TObject);
    procedure GridRowChanged(Sender: TObject);
    procedure btPesquisaClick(Sender: TObject);
    procedure txtPesqLoteKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cboPesqMatCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure cboPesqForCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure BitBtn1Click(Sender: TObject);
    procedure Data1Enter(Sender: TObject);
    procedure Data2Enter(Sender: TObject);
    procedure Data2Exit(Sender: TObject);
    procedure Data1Exit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure cboFornEnter(Sender: TObject);
    procedure cboFornExit(Sender: TObject);
    procedure ckPosClick(Sender: TObject);
    procedure ckBClick(Sender: TObject);
    procedure rdBaiClick(Sender: TObject);
    procedure rdEntClick(Sender: TObject);
    procedure CboTipoMovChange(Sender: TObject);
    procedure GridCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure Data1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Data2KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cboPesqMatKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cboPesqForKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn2Click(Sender: TObject);
    procedure Q_AJALMBeforeDelete(DataSet: TDataSet);
    procedure Q_AJALMMat_IDChange(Sender: TField);
    procedure SpeedButton7Click(Sender: TObject);
    procedure wwDBEdit2Enter(Sender: TObject);
    procedure wwDBEdit2Exit(Sender: TObject);
    procedure Q_AJALMNewRecord(DataSet: TDataSet);
    procedure btImprClick(Sender: TObject);
    procedure BitBtn20Click(Sender: TObject);
    procedure edtObsChange(Sender: TObject);
    procedure Q_AJALMBeforePost(DataSet: TDataSet);
    procedure btnGetMaterialClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAjustAlm: TFAjustAlm;
  SqlCons:String;
  SqlOrd:String;
  DataX:TDateTime;
  SQLFILT :String;
  TD_ID_AJALME: String;
  TD_ID_AJALMB: String;
  Primeira :Boolean;
  DAT1: STRING;
  DAT2: STRING;
  LOTE: STRING;
  MATERIAL: STRING;
  FORNECEDOR: STRING;
  MARCA :STRING;
  obsAux: string;

implementation

uses //Unt_BaseDados3, Unt_PesquisaDados, Unt_BaseDados2, UBuscaDin,
 { UAjustEst,}Unt_Senha, UMenu, UMateriais,UBDinAlm, URelAjustEst,
  UfrmBuscaMaterial {Menu, URelAjustEst, UBDinAlm, UDvSel}
  ;

{$R *.DFM}



procedure TFAjustAlm.FormShow(Sender: TObject);
VAR SQL:String;
Begin

        txtPesqLote.SetFocus;

        IF ConsIntAlmox_ID <> '' THEN
           Primeira := FALSE
        ELSE
           Primeira := TRUE ;


        Q_TDOC.OPEN;

        SQL :=
        'SELECT		ALM.* ' +
        'FROM		ALMOX ALM ' +
        'WHERE          1 = 1 ';


        SQLCONS := SQL;
        SQLORD := 'ORDER BY N_LOTE,MAT_ID,FOR_CODI,DATA,ALMOX_ID';


        Q_MOT.OPEN;
        Q_CALC.OPEN;
        Q_FORN.OPEN;
        Q_LOCAL.Open;
        Q_LOCALGR.open;
        Q_MARCAGR.open;
        Q_MARCA_FILT.OPEN;
        Q_LOCAL_FILT.OPEN;

        Q_FORN_PESQ.OPEN;
        Q_MAT_PESQ.OPEN;
        Q_MAT.OPEN;
        Q_FORN.Open;
        Q_MARCA.OPEN;
        Q_MATGR.OPEN;
        Q_FORNGR.OPEN;
        

        DS_AJALM.onStateChange := DS_AJALMStateChange ;
        Q_AJALM.AfterDelete  :=  Q_AJALMAfterDelete ;
        Q_AJALM.AfterPost    :=  Q_AJALMAfterPost;
        DS_AJALM.onDataChange := DS_AJALMDataChange ;

        Q_AJALM.AfterScroll := Q_AJALMAfterScroll;

        //Caso esta tela tenha sido chamada a partir de Busca Integrada
       If ConsIntN_Lote <> '' then Begin
           txtPesqLote.Text := ConsIntN_Lote;

       end;

       IF ConsIntMarca <> '' THEN Begin
                cboMarca.LookupValue := ConsIntMarca;

       end;

       IF ConsIntMAT <> '' THEN
                cboPesqMat.LookupValue:= ConsIntMAT;


       IF  ConsIntValid <> '' THEN Begin
           MaskEdit1.Text := ConsIntValid ;
       end;

       IF  ConsIntLOCAL <> '' THEN Begin
           wwDBLookupCombo3.LOOKUPVALUE:= ConsIntLOCAL;

       end;

       IF ConsIntFOR <> '' THEN 
          cboPesqFor.LookupValue:= ConsIntFOR;


        btPesquisaClick(self);

        //Caso esta tela tenha sido chamada a partir de Busca Integrada
        If ConsIntAlmox_ID <> '' then
            Q_AJALM.Locate('Almox_ID',ConsIntAlmox_ID,[]);


        SQL :=  ' SELECT        TD_ID ' +
                ' FROM          TIPO_DOCUMENTO ' +
                ' WHERE         APELIDO = ' + '''' + 'AJE' + '''';

        Q_AUX.SQL.CLEAR;
        Q_AUX.SQL.ADD(SQL);
        Q_AUX.OPEN;

        TD_ID_AJALME := Q_AUX.FieldByName('TD_ID').AsString;

        SQL :=  ' SELECT        TD_ID ' +
                ' FROM          TIPO_DOCUMENTO ' +
                ' WHERE         APELIDO = ' + '''' + 'AJB' + '''';

        Q_AUX.SQL.CLEAR;
        Q_AUX.SQL.ADD(SQL);
        Q_AUX.OPEN;

        TD_ID_AJALMB := Q_AUX.FieldByName('TD_ID').AsString;

     Q_AJALM.OPEN;
End;

procedure TFAjustAlm.SBT_SAIRClick(Sender: TObject);
begin
     Close;
      txtPesqLote.Text := '';
      cboPesqMat.Text := '';
      cboPesqFor.Text := '';
      cboMarca.Text:= '';
      wwDBLookupCombo3.text:= '';


      DAT1:= '';
      DAT2:= '';
      LOTE:= '';
      MATERIAL:= '';
      MARCA := '';
      FORNECEDOR:= '';
      DATA1.Text:= '';
      DATA2.Text:= '';
      MaskEdit1.text:= '';



     
end;

procedure TFAjustAlm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        Q_AJALM.CLOSE;
        Q_MOT.CLOSE;
        Q_MAT.CLOSE;
        Q_CALC.CLOSE;
        Q_FORN.Close;
        Q_LOCALGR.close;

        Q_FORN.CLOSE;
        Q_MAT.CLOSE;
        Q_MARCA.CLOSE;
        Q_MATGR.CLOSE;
        Q_FORNGR.CLOSE;
        Q_LOCAL.close;
        Q_MARCAGR.Close;
        Q_MARCA_FILT.CLOSE;
        Q_LOCAL_FILT.Close;


        DS_AJALM.onStateChange := nil ;
        Q_AJALM.AfterDelete  :=  nil ;
        Q_AJALM.AfterPost    :=  nil ;
        DS_AJALM.onDataChange := nil ;

        Action := caFree;
end;

procedure TFAjustAlm.bt_gravarClick(Sender: TObject);
begin
        obsAux := edtObs.Text;
        If (Q_AJALM.State = dsEdit) or (Q_AJALM.State = dsInsert)  then  begin 
          Q_AJALM.Post;
        end;
end;

procedure TFAjustAlm.Bt_IncluirClick(Sender: TObject);
begin
//        cboTipoMov.SetFocus;
    //    txtPesqLote.SetFocus;
        Q_AJALM.Insert;
        CboTipoMov.SetFocus;
        cboForn.Text := '';
        cboMat.Text := '';
        
end;

procedure TFAjustAlm.Bt_cancelarClick(Sender: TObject);
begin
        If (Q_AJALM.State = dsEdit) or (Q_AJALM.State = dsInsert)  then
                Q_AJALM.Cancel;
end;

procedure TFAjustAlm.Bt_excluirClick(Sender: TObject);
begin
        If (not Q_AJALM.EOF)  then
                Q_AJALM.Delete;

end;

procedure TFAjustAlm.SBT_REFRClick(Sender: TObject);
begin

        Q_AJALM.CLOSE;
        Q_MOT.CLOSE;
        Q_MAT.CLOSE;
        Q_FORN.CLOSE;
        Q_LOCAL.close;
       Q_LOCAL.open;
        Q_AJALM.OPEN;
        Q_MOT.OPEN;
        Q_MAT.OPEN;

       Q_FORN.OPEN;

end;

procedure TFAjustAlm.DS_AJALMDataChange(Sender: TObject;
  Field: TField);
begin

  if Q_AJALM.eof then begin
     bt_Cancelar.enabled := false ;
     Bt_Gravar.enabled := false ;
     Bt_Incluir.enabled := true ;
  end else begin
     bt_Cancelar.enabled := false ;
     Bt_Gravar.enabled := false ;
     Bt_Incluir.enabled := true ;
  end ;
  if Q_AJALM.state = dsedit  then begin
      bt_Cancelar.enabled := true  ;
      bt_Incluir.enabled := false ;
      Bt_Gravar.enabled := true ;
  end ;
  if Q_AJALM.state = dsinsert then begin

  
      bt_Cancelar.enabled := true  ;
      bt_Incluir.enabled := false ;
      Bt_Gravar.enabled := true ;
  end ;

  if Q_AJALM.State in [dsEdit, dsInsert] then
        edtObs.visible := True
  else
        edtObs.visible := false;
 
  lbObs.Caption :=  Q_AJALMObs.AsString;

end;


procedure TFAjustAlm.DS_AJALMStateChange(Sender: TObject);
begin


   if (Q_AJALM.State = dsEdit) or (Q_AJALM.State = dsInsert) then
     begin
       Q_AJALMTD_ID.AsString := '';
        Q_AJALMDocto.AsString := '';
        SBT_SAIR.Enabled := false;
        SBT_REFR.Enabled := false;
     end
   else
     begin
        SBT_SAIR.Enabled := true;
        SBT_REFR.Enabled := true;
     end;

   if (Q_AJALM.State = dsInsert) then
   Begin
//      cboTD.Enabled := true;
//      txtID.Enabled := true;
   End Else Begin
        cboTD.Enabled := false;
        txtID.Enabled := false;
   End

end;


procedure TFAjustAlm.Q_AJALMAfterScroll(DataSet: TDataSet);
Var SQL:String  ;
begin
        SQL := 'SELECT		' + '''' + ''''  + ' TEXTO,' +
               '                SUM(QTDE_INPUT) QTDE_INPUT,' +
	       '        	SUM(QTDE) QTDE,' +
	       '        	SUM(QTDE_RETIRADA) QTDE_RETIRADA ' +
               ' FROM		ALMOX WHERE 1 = 1 ' + SQLFILT +
               ' AND            QTDE_RETIRADA IS NULL ' +
               ' AND            TIPO = ' + '''' + 'E' + '''';

               If (CboMat.Text <> '') and (cboMat.LookupValue <> '') then
               Begin
                        SQL := SQL + ' AND      MAT_ID = '  + cboMat.LookupValue;
               End;



                Q_CALC.SQL.CLEAR;
                Q_CALC.SQL.ADD(SQL);
                Q_CALC.OPEN;


        If Q_AJALMMat_ID.AsString <> '' then
        Begin

                SQL:= ' SELECT    A.* ' +
                      ' FROM      MARCAS A, ' +
                      '           MATERIAL_MARCA B ' +
                      ' WHERE     A.MARCA_ID = B.MARCA_ID ' +
                      ' AND       b.MAT_ID = ' + Q_AJALMMat_ID.AsString +
                      ' ORDER BY  A.MARCA_DESC  ' ;

               Q_MARCA.Close;
               Q_MARCA.SQL.CLEAR;
               Q_MARCA.SQL.ADD(SQL);
               Q_MARCA.OPEN;

        End;

end;



procedure TFAjustAlm.Q_AJALMAfterPost(DataSet: TDataSet);
Var SQL:String;
    INPUT: DOUBLE;
    QTDE: DOUBLE;
    dataI : string ;
    dataf  : string ;
begin

                If Q_AJALMMot_ID.AsString = '' then
                Begin
                        MessageDlg('O campo de motivo de Ajuste é de preenchimento obrigatório!' ,mtWarning,[MbOk],0);
                        abort;
                End;

                If Q_AJALMMaT_ID.AsString = '' then
                Begin
                        MessageDlg('O campo Material é de preenchimento obrigatório!' ,mtWarning,[MbOk],0);
                        abort;
                End;

                If Q_AJALMFor_Codi.AsString = '' then
                Begin
                        MessageDlg('O campo Fornecedor é de preenchimento obrigatório!' ,mtWarning,[MbOk],0);
                        abort;
                End;

                If Q_AJALMN_Lote.AsString = '' then
                Begin
                        MessageDlg('O campo de número de lote é de preenchimento obrigatório!' ,mtWarning,[MbOk],0);
                        abort;
                End;

                If Q_AJALMQtde_INPUT.AsString = '' then
                Begin
                        MessageDlg('O campo Quantidade é de preenchimento obrigatório!' ,mtWarning,[MbOk],0);
                        abort;
                End;

                If Q_AJALMTipo.AsString = '' then
                Begin
                        MessageDlg('O campo tipo é de preenchimento obrigatório!' ,mtWarning,[MbOk],0);
                        abort;
                End;

                If Q_AJALMUnI_ID.AsString = '' then
                Begin
                        MessageDlg('O campo de Unidade de Medida é de preenchimento obrigatório! Favor atualizar no cadastro de Materiais.' ,mtWarning,[MbOk],0);
                        abort;
                End;


                if Q_AJALMLocal_ID.AsString = '' then
                Begin
                        MessageDlg('O campo de Local é de preenchimento obrigatório! Favor atualizar no cadastro de Materiais.' ,mtWarning,[MbOk],0);
                        abort;
                End;


                if Q_AJALMValid.AsString = '' then
                Begin
                        MessageDlg('O campo de Validade é de preenchimento obrigatório! Favor atualizar no cadastro de Materiais.' ,mtWarning,[MbOk],0);
                        abort;
                End;

                if Q_AJALMMarca_ID.AsString = '' then
                Begin
                        MessageDlg('O campo de Marca é de preenchimento obrigatório! Favor atualizar no cadastro de Materiais.' ,mtWarning,[MbOk],0);
                        abort;
                End;
        

                If MessageDlg('Deseja realmente gravar? Note que para alterar a posição de almoxarifado será necessário incluir uma nova entrada ou baixa, com a finalidade de manter o histórico.',mtInformation, [mbYes,mbNo], 0) = mrYes then
                Begin


                        If Q_AJALMTD_ID.AsString <> '' then
                                SP_AJALM.ParamByName('@TD_ID').Value := Q_AJALMTD_ID.AsString
                        Else
                        Begin
                                //Entrada ou Baixa
                                If Q_AJALMTipo.AsString = 'E' then
                                       SP_AJALM.ParamByName('@TD_ID').Value := TD_ID_AJALME
                                Else
                                       SP_AJALM.ParamByName('@TD_ID').Value := TD_ID_AJALMB;
                        End;

                        If Q_AJALMDocto.AsString <> '' then
                                SP_AJALM.ParamByName('@DOCTO').Value := Q_AJALMDocto.AsString
                        Else
                                SP_AJALM.ParamByName('@DOCTO').Value := Null;


                        SP_AJALM.ParamByName('@N_LOTE').Value := Q_AJALMN_LOTE.AsString;
                        SP_AJALM.ParamByName('@QTDE').Value := Q_AJALMQTDE_INPUT.AsFloat;
                        SP_AJALM.ParamByName('@MAT_ID').Value := Q_AJALMMat_ID.AsString;
                        SP_AJALM.ParamByName('@FOR_CODI').Value := Q_AJALMFor_Codi.AsString;
                        SP_AJALM.ParamByName('@MOT_ID').Value := Q_AJALMMoT_ID.AsString;
                        SP_AJALM.ParamByName('@TIPO').Value := Q_AJALMTipo.AsString;
                        SP_AJALM.ParamByName('@USUARIO').Value := StrUsuario;
                        SP_AJALM.ParamByName('@REC_ITEM_ID').Value := Null;
                        SP_AJALM.ParamByName('@DATAX').Value := Null;
                        SP_AJALM.ParamByName('@MARCA_ID').Value := Q_AJALMMarca_ID.AsString;
                        SP_AJALM.ParamByName('@LOCAL_ID').Value := Q_AJALMLocal_ID.AsString;

                        DATAI  := formatdatetime('DD-MM-YYYY',strtodate(Q_AJALMValid.AsString)) ;

                        SP_AJALM.ParamByName('@VALID').Value := datai;
                        SP_AJALM.ParamByName('@OBS').Value := obsAux;

                        SP_AJALM.ExecProc;

                        obsAux := '';

                        //Caso não tenha sido escolhido tipo de documento algum
                        //o padrão será 'Ajuste de Almoxarifado' e o número do Documento será
                        //O Id de Almox (Almox_ID).

                        If Q_AJALMTipo.AsString = 'E' then
                                SQL :=  ' UPDATE          ALMOX SET DOCTO = ALMOX_ID ' +
                                        ' WHERE           TD_ID = ' + TD_ID_AJALME   +
                                        ' AND             DOCTO IS NULL'
                        Else
                                SQL :=  ' UPDATE          ALMOX SET DOCTO = ALMOX_ID ' +
                                        ' WHERE           TD_ID = ' + TD_ID_AJALMB   +
                                        ' AND             DOCTO IS NULL';

                        Q_AUX.SQL.CLEAR;
                        Q_AUX.SQL.ADD(SQL);
                        Q_AUX.EXECSQL;


                        If SP_AJALM.ParamByName('@MSG').Value <> 'OK' then
                                MessageDlg(SP_AJALM.ParamByName('@MSG').Value,
                                mtInformation, [mbOk], 0)

                        Else Begin
                                MessageDlg('Operação realizada com sucesso!',
                                mtInformation, [mbOk], 0);
                                SQL :=  'SELECT         MAX(ALMOX_ID) ALMOX_ID ' +
                                        'FROM           ALMOX ';

                                Q_AUX.SQL.CLEAR;
                                Q_AUX.SQL.ADD(SQL);
                                Q_AUX.OPEN;
                                SQL := Q_AUX.FIELDBYNAME('ALMOX_ID').AsString;

                                Q_AJALM.CLOSE;
                                Q_AJALM.OPEN;

                                IF SQL <> '' Then
                                        Q_AJALM.LOCATE('ALMOX_ID',SQL,[]);

                        End;
                End;

end;


procedure TFAjustAlm.Q_AJALMAfterDelete(DataSet: TDataSet);
begin
   try
     begin
     Q_AJALM.ApplyUpdates;
     end;
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
    Q_AJALM.Close;
    Q_AJALM.Open;
end;




procedure TFAjustAlm.SpeedButton1Click(Sender: TObject);
begin
     //   Application.CreateForm(TFBuscaDin, FBuscaDin);
     //   FBuscaDin.ShowModal;
     //   FBuscaDin.Release;

end;

procedure TFAjustAlm.txtLoteEnter(Sender: TObject);
begin
//     FAjustAlm.KeyPreview := false;
     (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFAjustAlm.txtLoteExit(Sender: TObject);
var SQL:String;
begin
     FAjustAlm.KeyPreview := true;
     (Sender as TwwDBEdit).Color := ClWindow;
end;

procedure TFAjustAlm.cboMotExit(Sender: TObject);
begin
        (Sender as TwwDBLookupCombo).Color := ClWindow;
        if cboPesqFor.LookupValue <> '' then
        cboPesqFor.Text :=  Q_FORN_PESQFOR_RAZA.Value;
end;

procedure TFAjustAlm.cboMotEnter(Sender: TObject);
begin
      // FAjustAlm.KeyPreview := false;
        (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFAjustAlm.cboMatEnter(Sender: TObject);
begin
        (Sender as TwwDBLookupCombo).Color := ClAqua;
        If (DS_Ajalm.State = dsEdit) or (DS_Ajalm.State = dsInsert) then
        Begin
                If (cboPesqMat.Text <> '') and (cboPesqMat.LookupValue <> '') then
                        cboMat.LookupValue := cboPesqMat.LookupValue;
        End
end;

procedure TFAjustAlm.cboMatExit(Sender: TObject);
begin
        (Sender as TwwDBLookupCombo).Color := ClWindow;
        cboMat.Text := Q_MATMAT_DESC.AsString;
end;

procedure TFAjustAlm.CboTipoMovExit(Sender: TObject);
begin
        (Sender as TwwDBComboBox).Color := ClWindow;
end;

procedure TFAjustAlm.CboTipoMovEnter(Sender: TObject);
begin
        (Sender as TwwDBComboBox).Color := ClAqua;
end;

procedure TFAjustAlm.dbOBSEnter(Sender: TObject);
begin
        (Sender as TDBMemo).Color := ClAqua;
end;

procedure TFAjustAlm.dbOBSExit(Sender: TObject);
begin
        (Sender as TDBMemo).Color := ClWindow;
end;


procedure TFAjustAlm.GridRowChanged(Sender: TObject);
begin
        Q_LOCAL.close;
        Q_MARCAGR.Close;
        Q_LOCAL.open;
        Q_MARCAGR.open;
end;

procedure TFAjustAlm.btPesquisaClick(Sender: TObject);
VAR SQL:String;
    DataI : String;
    DataF : String;
    dataV : String;
begin
        DAT1:= '';
        DAT2:= '';
        LOTE:= '';
        MATERIAL:= '';
        MARCA := '';
        FORNECEDOR:= '';
     



        datai := '';
        dataf := '';

        if Data1.text <> '  /  /    ' then begin
                DATAI  := formatdatetime('MM/DD/YYYY',strtodate(Data1.text )) ;
                DAT1 := DATAI;
        end ;

        if Data2.text <> '  /  /    ' then begin
                DataX := StrtoDate(Data2.text);
                DataX := DataX + 1;
                DataF := formatdatetime('MM/DD/YYYY',DataX);
                DAT2:= DataF;
        end ;

        SQL := '';


        If txtPesqLote.Text <> '' then Begin
                SQL := SQL + ' AND              N_LOTE LIKE ' + '''' + txtPesqLote.Text + '%' + '''';
                //SQL := SQL + ' AND              N_LOTE = ' + '''' + txtPesqLote.Text + '%' + '''';
                LOTE:= txtPesqLote.Text;
        End;
        If (cboPesqMat.Text <> '') and (cboPesqMat.LookupValue <> '') then Begin
                SQL := SQL + ' AND              MAT_ID = ' + cboPesqMat.LookupValue;
                MATERIAL:= cboPesqMat.LookupValue;
        End;

        If (cboPesqFor.Text <> '') and (cboPesqFor.LookupValue <> '') then begin
                SQL := SQL + ' AND              FOR_CODI = ' + '''' + cboPesqFor.LookupValue + '''';
                FORNECEDOR:= cboPesqFor.LookupValue;
        End;


        if (cboMarca.text <> '') and (cboMarca.LookupValue <> '') then begin
            SQL:= SQL + ' AND MARCA_ID = ' + cboMarca.LookupValue;
            MARCA := cboMarca.LookupValue;
        End;

        IF (wwDBLookupCombo3.TEXT <> '' ) AND (wwDBLookupCombo3.LOOKUPVALUE <> '') THEN BEGIN
           SQL:= SQL + '  AND LOCAL_ID = ' + wwDBLookupCombo3.LookupValue;
        End;

        if MaskEdit1.Text <> '  /  /    ' then begin
           dataV:= formatdatetime('MM/DD/YYYY',strtodate(MaskEdit1.text));
           
           SQL:= SQL + ' AND VALID = Convert(SMALLDATETIME,' + '''' +  dataV + '''' + ')';
        END;   


        If (DataI <> '') and (DataF <> '') then
                        SQL:=SQL + ' AND 	DATA BETWEEN  Convert(SMALLDATETIME,' + '''' +  DataI + '''' + ') AND Convert(SMALLDATETIME,' +  '''' + DataF + '''' + ')';

        If rdEnt.Checked then
                SQL := SQL + ' AND              TIPO = ' + '''' + 'E' + ''''
        Else If rdBai.Checked then
                SQL := SQL + ' AND              TIPO = ' + '''' + 'B' + '''';

        If ckPos.Checked then
                SQL := SQL + ' AND              QTDE_RETIRADA IS NULL ';

        If ckB.Checked then
                SQL := SQL + ' AND              QTDE_RETIRADA IS NOT NULL ' ;

        If Primeira then
        Begin
                Primeira := False;
                SQL := SQL + ' AND 1 = 0 ';
        End;


        SQLFILT := SQL;


        SQL := SQLCONS + SQL + SQLORD;

        Q_AJALM.SQL.CLEAR;
        Q_AJALM.SQL.ADD(SQL);
        Q_AJALM.OPEN;

end;

procedure TFAjustAlm.txtPesqLoteKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//        If key = 13 then
        //        btPesquisaClick(self);
end;

procedure TFAjustAlm.cboPesqMatCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
      //  btPesquisaClick(self);
end;

procedure TFAjustAlm.cboPesqForCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
//        btPesquisaClick(self);
end;

procedure TFAjustAlm.BitBtn1Click(Sender: TObject);
begin
        txtPesqLote.Text := '';
        cboPesqMat.Text := '';
        cboPesqFor.Text := '';
        cboMarca.Text:= '';
        wwDBLookupCombo3.text:= '';


        DAT1:= '';
        DAT2:= '';
        LOTE:= '';
        MATERIAL:= '';
        FORNECEDOR:= '';
        DATA1.Text:= '';
        DATA2.Text:= '';
        MaskEdit1.text:= '';
        btPesquisaClick(self);
        
end;

procedure TFAjustAlm.Data1Enter(Sender: TObject);
begin
//        FAjustAlm.KeyPreview := true;
        (Sender as TMaskEdit).Color := ClAqua;
end;

procedure TFAjustAlm.Data2Enter(Sender: TObject);
begin
//        FAjustAlm.KeyPreview := false;
        (Sender as TMaskEdit).Color := ClAqua;
end;

procedure TFAjustAlm.Data2Exit(Sender: TObject);
begin
        (Sender as TMaskEdit).Color := ClWindow;
end;

procedure TFAjustAlm.Data1Exit(Sender: TObject);
begin
        (Sender as TMaskEdit).Color := ClWindow;
end;

procedure TFAjustAlm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
     begin
       Key := #0;
       Perform(WM_Nextdlgctl,0,0);
    end else begin
       if (Key = #27 ) then close ;
    end ;
end;

procedure TFAjustAlm.cboFornEnter(Sender: TObject);
begin
        (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFAjustAlm.cboFornExit(Sender: TObject);
var SQL:String;
begin
        (Sender as TwwDBLookupCombo).Color := ClWindow;

   If   (cboTipoMov.Value = 'B') and
        (txtLote.Text <> '') and
        (Q_AJALM.State <> dsBrowse) and
        ((cboForn.Text <> '')and(cboForn.LookupValue<>'')) then //Saída and
   Begin

        SQL :=         ' SELECT         DISTINCT ' +
                       '                MAT_ID,' +
                       '                MAT_DESC ' +
                       ' FROM           MATERIAIS ' +
                       ' WHERE          MAT_ID IN ( ' +
                                        ' SELECT     MAT_ID ' +
                                        ' FROM       ALMOX ' +
                                        ' WHERE      N_LOTE = ' + '''' + txtLote.Text + '''' +
                                        ' AND        TIPO = ' + '''' + 'E' + '''' +
                                        ' AND        FOR_CODI = ' + '''' + cboForn.LookupValue + '''' +
                                        ' AND        QTDE_RETIRADA IS NULL)  ' +
                       ' ORDER BY       MAT_DESC  ' ;

        Q_MAT.SQL.CLEAR;
        Q_MAT.SQL.ADD(SQL);
        Q_MAT.OPEN;

        If Q_MAT.FieldByName('MAT_ID').AsString = '' then
        Begin
                MessageDlg('Não foi encontrada quantidade disponível para este lote, para este fornecedor!' ,mtWarning,[MbOk],0);
        End;
   END ELSE BEGIN

         SQL := 'SELECT          MAT_ID, ' +
                '                MAT_DESC ' +
                ' FROM           MATERIAIS ' +
                ' ORDER BY       MAT_DESC';
        End;

        Q_MAT.SQL.CLEAR;
        Q_MAT.SQL.ADD(SQL);
        Q_MAT.OPEN;



        {
   End Else  If
        (cboTipoMov.Value = 'E') and
        (Q_AJALM.State <> dsBrowse) then //Saída and
   Begin

        If (cboForn.Text <> '') and (cboForn.lookupvalue <> '') then
        Begin
                SQL := 'SELECT          MATERIAL_ID, ' +
                       '                DESCRICAO ' +
                       'FROM            MATERIAIS ' +
                       'WHERE           MATERIAL_ID IN ' +
                       '                (SELECT         MATERIAL_ID ' +
                       '                 FROM           MATERIAIS_FORNECEDOR ' +
                       '                 WHERE          FORNECEDOR_ID = ' + cboForn.LookupValue + ')' +
                       ' ORDER BY       DESCRICAO';

        End Else Begin
                SQL := 'SELECT          MATERIAL_ID, ' +
                       '                DESCRICAO ' +
                       'FROM            MATERIAIS ' +
                       ' ORDER BY       DESCRICAO';
        End;

        Q_MAT.SQL.CLEAR;
        Q_MAT.SQL.ADD(SQL);
        Q_MAT.OPEN;

   End;
    }
End;

procedure TFAjustAlm.ckPosClick(Sender: TObject);
begin
        ckB.Checked := False;

        If ckPos.Checked then
                rdEnt.Checked := True;

        btPesquisaClick(self);                
End;

procedure TFAjustAlm.ckBClick(Sender: TObject);
begin
        If ckB.Checked then
        Begin
                rdEnt.Checked := True;
                ckPos.Checked := False;
        End;
        btPesquisaClick(self);
End;

procedure TFAjustAlm.rdBaiClick(Sender: TObject);
begin
        ckPos.Checked := false;
        ckB.Checked := false;

        btPesquisaClick(self);
End;

procedure TFAjustAlm.rdEntClick(Sender: TObject);
begin
        btPesquisaClick(self);
End;

procedure TFAjustAlm.CboTipoMovChange(Sender: TObject);
var SQL:String;
begin

        If (Q_AJALM.State = dsInsert) or (Q_AJALM.State = dsEdit) then
        Begin
                Q_AJALMMot_ID.AsString := '';
        End;
End;

procedure TFAjustAlm.GridCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
        If Q_AJALMTipo.AsString = 'E' then
                AFont.Color := clBlue
        Else
                AFont.Color := clRed ;

        If Highlight then
        Begin
                AFont.Color := clWhite;

        End;
End;

procedure TFAjustAlm.Data1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//        If key = 13 then
      //          btPesquisaClick(self);

End;

procedure TFAjustAlm.Data2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//        If key = 13 then
       //         btPesquisaClick(self);

End;

procedure TFAjustAlm.cboPesqMatKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//        If key = 13 then
   //            btPesquisaClick(self);

end;

procedure TFAjustAlm.cboPesqForKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//        If key = 13 then
     //           btPesquisaClick(self);

end;

procedure TFAjustAlm.BitBtn2Click(Sender: TObject);
begin
  IF Q_AJALMMat_ID.AsString = '' THEN ABORT;
        Application.CreateForm(TFMateriais, FMateriais);
        FMateriais.Q_MAT.CLOSE;
        FMateriais.Q_MAT.SQL.Clear;
        FMateriais.Q_MAT.SQL.ADD('SELECT * FROM MATERIAIS WHERE MAT_ID = ' + Q_AJALMMat_ID.AsString);
        FMateriais.Q_MAT.Open;
        //FMateriais.Q_MAT.Append;
        FMateriais.ShowModal;
        FMateriais.Release;
end;

procedure TFAjustAlm.Q_AJALMBeforeDelete(DataSet: TDataSet);
begin
   If MessageDlg('Confirma Exclusão ?',
    mtInformation, [mbYes, mbNo], 0) = mrNo then
    begin
      Abort;
    end;
end;

procedure TFAjustAlm.Q_AJALMMat_IDChange(Sender: TField);
VAR SQL: STRING;
begin
        SQL:= ' SELECT    A.* ' +
              ' FROM      MARCAS A, ' +
              '           MATERIAL_MARCA B ' +
              ' WHERE     A.MARCA_ID = B.MARCA_ID ' +
              ' AND       b.MAT_ID = ' + Q_AJALMMat_ID.AsString +
              ' ORDER BY  A.MARCA_DESC  ' ;


       Q_MARCA.Close;
       Q_MARCA.SQL.CLEAR;
       Q_MARCA.SQL.ADD(SQL);
       Q_MARCA.OPEN;

       If (DS_AJALM.State = dsInsert) or (DS_AJALM.State = dsEdit) then
               Q_AJALMMarca_ID.AsString := Q_MARCAMarca_ID.AsString;

       If Q_AJALMMat_ID.AsString <> '' Then
       Begin

        SQL:= ' SELECT 	B.UNI_SIGLA,  ' +
              '         b.UNI_ID      ' +
              ' FROM 	MATERIAIS A, ' +
              '	        UNIDADES  B  ' +
              ' WHERE   A.UNI_ID = B.UNI_ID ' +
              ' AND     A.MAT_ID = ' + Q_AJALMMat_ID.AsString +
              ' ORDER BY  B.UNI_SIGLA  ' ;


        Q_AUX.CLOSE;
        Q_AUX.SQL.CLEAR;
        Q_AUX.SQL.ADD(SQL);
        Q_AUX.OPEN;

         If Q_AUX.FIELDBYNAME('UNI_ID').AsString <> '' then begin
            Q_AJALMUni_ID.AsString :=  Q_AUX.FIELDBYNAME('UNI_ID').ASSTRING;
            Q_AJALMUni_Sigla.AsString :=  Q_AUX.FIELDBYNAME('UNI_Sigla').ASSTRING;
           
         end;
      end;

end;

procedure TFAjustAlm.SpeedButton7Click(Sender: TObject);
begin
        WinExec('calc.exe',sw_show);
end;

procedure TFAjustAlm.wwDBEdit2Enter(Sender: TObject);
begin
        (Sender as TwwDBEdit).Color := clAqua;
end;

procedure TFAjustAlm.wwDBEdit2Exit(Sender: TObject);
begin
        (Sender as TwwDBEdit).Color := clWindow;
end;

procedure TFAjustAlm.Q_AJALMNewRecord(DataSet: TDataSet);
begin
        Q_AJALMLocal_Id.AsString := Q_LOCALLocal_ID.AsString;
end;

procedure TFAjustAlm.btImprClick(Sender: TObject);
begin
        Application.Createform(TFRelAjustEst, FRelAjustEst);
        FRelAjustEst.QuickRep1.Preview ;
        FRelAjustEst.close ;
end;

procedure TFAjustAlm.BitBtn20Click(Sender: TObject);
begin
   Application.CreateForm (TFBDinAlm, FBDinAlm);
   FBDinAlm.ShowModal;
   FBDinAlm.Release;

end;

procedure TFAjustAlm.edtObsChange(Sender: TObject);
begin
   obsAux := edtObs.Text;
end;

procedure TFAjustAlm.Q_AJALMBeforePost(DataSet: TDataSet);
begin
        if Q_AJALM.State in [dsEdit] then begin
            ShowMessage('Não é permitido alterar um registro de estoque nesta rotina!');
            Abort;
        end;
end;

procedure TFAjustAlm.btnGetMaterialClick(Sender: TObject);
begin
    frmBuscaMaterial := tfrmBuscaMaterial.create(Self);
    frmBuscaMaterial.chkConsideraMarca.Checked := False;
    frmBuscaMaterial.showmodal;
    if frmBuscaMaterial.lbSelecao.Caption <> '' then begin
         cboPesqMat.LookupValue := frmBuscaMaterial.lbSelecao.Caption;
    end;
    frmBuscaMaterial.lbSelecao.Caption := '';
    FreeAndNil(frmBuscaMaterial);
end;

procedure TFAjustAlm.BitBtn3Click(Sender: TObject);
begin
    frmBuscaMaterial := tfrmBuscaMaterial.create(Self);

    frmBuscaMaterial.showmodal;
    if frmBuscaMaterial.lbSelecao.Caption <> '' then begin
      if Q_AJALMAlmox_ID.AsString = '' then
         Q_AJALM.Append
      else
         Q_AJALM.Edit;

      Q_AJALMMat_ID.Value := StrToInt(frmBuscaMaterial.lbSelecao.Caption);

      cboMat.SetFocus;
    end;
    frmBuscaMaterial.lbSelecao.Caption := '';
    FreeAndNil(frmBuscaMaterial);
end;

end.
