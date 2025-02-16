unit UPrepInv;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Wwquery, Mask, wwdbedit, Wwdotdot, Wwdbcomb, StdCtrls,
  wwdblook, Grids, Wwdbigrd, Wwdbgrid, Buttons, ExtCtrls, wwstorep, DBCtrls,
  ADODB, ComObj;

type
  TFPrepInv = class(TForm)
    Panel2: TPanel;
    SpeedButton3: TSpeedButton;
    Pnl1: TPanel;
    Grid: TwwDBGrid;
    Panel4: TPanel;
    Label7: TLabel;
    Label1: TLabel;
    Label57: TLabel;
    cboForn: TwwDBLookupCombo;
    cboGr: TwwDBLookupCombo;
    cboMat: TwwDBLookupCombo;
    Panel1: TPanel;
    btPesq: TSpeedButton;
    btLimp: TSpeedButton;
    btGera: TSpeedButton;
    cbpTp: TwwDBComboBox;
    Q_FORN: TwwQuery;
    Q_GRMAT: TwwQuery;
    Q_MATERIAL: TwwQuery;
    spRelat1: TSpeedButton;
    txtInv: TwwDBEdit;
    Label3: TLabel;
    Q_INV: TwwQuery;
    DS_INV: TDataSource;
    UPD_INV: TUpdateSQL;
    SP_INV: TStoredProc;
    Label2: TLabel;
    txtLote: TwwDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    btAtual: TSpeedButton;
    ckDif: TCheckBox;
    ckQt: TCheckBox;
    Q_AUX: TwwQuery;
    cboSt: TwwDBComboBox;
    BitBtn20: TBitBtn;
    Bt_Incluir: TSpeedButton;
    spRelat2: TSpeedButton;
    Panel3: TPanel;
    RadioButton1: TRadioButton;
    rdSal: TRadioButton;
    BitBtn1: TBitBtn;
    btRet: TSpeedButton;
    BitBtn2: TBitBtn;
    SP_ENC_INV: TStoredProc;
    Q_MATERIALMAT_ID: TAutoIncField;
    Q_MATERIALMAT_DESC: TStringField;
    Q_FORNFOR_CODI: TStringField;
    Q_FORNFOR_RAZA: TStringField;
    Q_INVInv_ID: TAutoIncField;
    Q_INVNum_Inv: TIntegerField;
    Q_INVData: TDateTimeField;
    Q_INVMat_ID: TIntegerField;
    Q_INVN_Lote: TStringField;
    Q_INVMarca_ID: TIntegerField;
    Q_INVFor_Codi: TStringField;
    Q_INVValid: TDateTimeField;
    Q_INVLocal_ID: TIntegerField;
    Q_INVQtde_Almox: TFloatField;
    Q_INVQtde_Inv: TFloatField;
    Q_INVTipo: TStringField;
    Q_INVUsuario: TStringField;
    Q_INVDt_Alt: TDateTimeField;
    Q_INVStatus: TStringField;
    Q_INVObs: TMemoField;
    Q_INVCusto_Medio_Inv: TFloatField;
    Q_INVMAT_DESC: TStringField;
    Q_INVUNI_ID: TIntegerField;
    Q_INVVALOR: TFloatField;
    Q_GRMATGRU_ID: TAutoIncField;
    Q_GRMATGRU_DESC: TStringField;
    Q_INVQtdeCalc: TFloatField;
    SP_AJALM: TwwStoredProc;
    Q_INVMARCA_DESC: TStringField;
    CheckBox1: TCheckBox;
    Label4: TLabel;
    qrLocal: TADOQuery;
    qrLocalLocal_ID: TAutoIncField;
    qrLocalDescricao: TStringField;
    qrLocalDisponivelSN: TStringField;
    qrLocalCONSUMO: TStringField;
    qrLocalCONTROLA_ESTOQUE: TStringField;
    cboLocal: TwwDBLookupCombo;
    BitBtn3: TBitBtn;
    qrAux: TwwQuery;
    qrAuxREPOSICAO: TFloatField;
    Panel5: TPanel;
    chkLote: TCheckBox;
    Fornecedor: TCheckBox;
    chkMarca: TCheckBox;
    Validade: TCheckBox;
    QtdeAlmox: TCheckBox;
    QtdeInv: TCheckBox;
    QtdeDif: TCheckBox;
    Panel6: TPanel;
    Label46: TLabel;
    SpeedButton4: TSpeedButton;
    Label13: TLabel;
    DBMemo1: TDBMemo;
    Label16: TLabel;
    Label17: TLabel;
    Edit1: TEdit;
    SpeedButton6: TSpeedButton;
    Label12: TLabel;
    Label15: TLabel;
    Data1: TMaskEdit;
    Label14: TLabel;
    bt_gravar: TSpeedButton;
    btn1: TButton;
    qryLotes: TADOQuery;
    qryLotesAlmox_ID: TAutoIncField;
    qryLotesAlmox_ID_Mestre: TIntegerField;
    qryLotesFor_Codi: TStringField;
    qryLotesMat_ID: TIntegerField;
    qryLotesLocal_ID: TIntegerField;
    qryLotesMarca_ID: TIntegerField;
    qryLotesN_Lote: TWideStringField;
    qryLotesValid: TDateTimeField;
    qryLotesQtde: TFloatField;
    qryLotesQtde_Retirada: TFloatField;
    qryLotesQtde_Input: TFloatField;
    qryLotesTipo: TStringField;
    qryLotesMot_ID: TIntegerField;
    qryLotesUni_ID: TIntegerField;
    qryLotesUni_Sigla: TStringField;
    qryLotesObs: TMemoField;
    qryLotesData: TDateTimeField;
    qryLotesUsuario: TWideStringField;
    qryLotesTD_ID: TIntegerField;
    qryLotesDocto: TStringField;
    qryLotesRec_Item_ID: TIntegerField;
    qryLotesCusto: TFloatField;
    qryLotesREPOSICAO: TFloatField;
    Q_INVReposicao: TFloatField;
    Q_INVLocalArmazem: TStringField;
    Q_INVValorDiferenca: TFloatField;
    dsExcel: TDataSource;
    Q_INVConsumoTresMeses: TIntegerField;
    btnGetMaterial: TBitBtn;
    chkConsumoMedio: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btLimpClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure txtInvEnter(Sender: TObject);
    procedure txtInvExit(Sender: TObject);
    procedure cboFornEnter(Sender: TObject);
    procedure cboFornExit(Sender: TObject);
    procedure cboGrExit(Sender: TObject);
    procedure cboMatExit(Sender: TObject);
    procedure cboGrEnter(Sender: TObject);
    procedure cboMatEnter(Sender: TObject);
    procedure btGeraClick(Sender: TObject);
    procedure btPesqClick(Sender: TObject);
    procedure cboFornKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Q_INVAfterPost(DataSet: TDataSet);
    procedure Q_INVBeforePost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure GridKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Q_INVCalcFields(DataSet: TDataSet);
    procedure cboFornCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure GridDblClick(Sender: TObject);
    procedure GridCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure ckDifClick(Sender: TObject);
    procedure btAtualClick(Sender: TObject);
    procedure BitBtn20Click(Sender: TObject);
    procedure Bt_IncluirClick(Sender: TObject);
    procedure spRelat1Click(Sender: TObject);
    procedure spRelat2Click(Sender: TObject);
    procedure Q_INVAfterScroll(DataSet: TDataSet);
    procedure SpeedButton4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btRetClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure bt_gravarClick(Sender: TObject);
    procedure spRelatInvClick(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Data1Enter(Sender: TObject);
    procedure Data1Exit(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btnGetMaterialClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrepInv: TFPrepInv;
  SQLPrin: String;
  SQLOrd :  String;
  NINV :String;
  INVX : String;
  DIF:Boolean;
  QTDEDIF:Boolean;
  N_LoteOrig:String;
  StrFiltro: STRING;
  DATI  : STRING;
  DATAI  : STRING;
  FORN: STRING;
  GRUPO: STRING;
  MAT: STRING;
  LOTE: STRING;


implementation

uses Unt_Senha, UBDinAlm, U_FuncoeS, UAjusAlm, UMenu, UPrepInvCa, URelInv,
  URelInvPre, UfrmBuscaMaterial;

{$R *.DFM}

procedure TFPrepInv.FormCreate(Sender: TObject);
VAR SQL, consumo: STRING;
begin

       consumo:= 'CONVERT(INT, MediaCompras3Meses) as ConsumoTresMeses ' ;


        qrLocal.Open;
        Q_FORN.Open;
        Q_MATERIAL.OPEN;
        Q_GRMAT.Open;
        //Q_INV.OPEN;

        SQLPrin  := 'SELECT    I.*, ' +
                    '           MAT.CodigoMaterial + '' '' + MAT.MAT_DESC AS MAT_DESC, MAT.LocalArmazem, ' +
                    '    	FORN.FOR_CODI, ' +
                    '    	MAT.UNI_ID, ' +
                    '    	M.MARCA_DESC, ' +
                    '           ROUND(I.QTDE_INV,2) * ROUND(I.REPOSICAO,2) AS VALOR, ' + consumo +
                    ' FROM      INV I, ' +
                    '    	MATERIAIS MAT, ' +
                    '    	CPAFORN FORN, ' +
                    '    	MARCAS M ' +
                    ' WHERE     I.MAT_ID = MAT.MAT_ID ' +
                    ' AND       I.FOR_CODI = FORN.FOR_CODI ' +
                    ' AND       I.MARCA_ID = M.MARCA_ID ';


       SQLOrd :=
        ' ORDER BY      I.NUM_INV, ' +
        '               MAT.MAT_DESC, i.iNV_ID';

    //    BtPesq.Click;

end;

procedure TFPrepInv.FormClose(Sender: TObject; var Action: TCloseAction);
VAR SQL:String;
begin
        SQL:=   'UPDATE         PARAMETROS ' +
                'SET            USU_INV = NULL ' +
                'WHERE          USU_INV = ' + '''' + StrUsuario + '''';

        Q_AUX.SQL.CLEAR;
        Q_AUX.SQL.ADD(SQL);
        Q_AUX.EXECSQL;

        Q_FORN.CLOSE;
        Q_MATERIAL.CLOSE;
        Q_GRMAT.CLOSE;
        Q_INV.CLOSE;
end;

procedure TFPrepInv.btLimpClick(Sender: TObject);
begin
        cboForn.Text:= '';
        cboGr.Text:= '';
        cboMat.Text:= '';
        txtLote.Text := '';
        txtInv.Text := '';
        Edit1.Text:= '';
        

        FORN:='';
        GRUPO:= '';
        MAT:= '';
        LOTE:= '';

        btPesq.Click;

end;

procedure TFPrepInv.SpeedButton3Click(Sender: TObject);
begin
        Close;
end;

procedure TFPrepInv.txtInvEnter(Sender: TObject);
begin
        (Sender as TwwDBEdit).color := clAqua;
end;

procedure TFPrepInv.txtInvExit(Sender: TObject);
begin
        (Sender as TwwDBEdit).color := clWindow;
end;

procedure TFPrepInv.cboFornEnter(Sender: TObject);
begin
        (Sender as TwwDBLookupCombo).color := clAqua;
end;

procedure TFPrepInv.cboFornExit(Sender: TObject);
begin
        (Sender as TwwDBLookupCombo).color := clWindow;
end;

procedure TFPrepInv.cboGrExit(Sender: TObject);
begin
        (Sender as TwwDBLookupCombo).color := clWindow;
end;

procedure TFPrepInv.cboMatExit(Sender: TObject);
begin
        (Sender as TwwDBLookupCombo).color := clWindow;
end;

procedure TFPrepInv.cboGrEnter(Sender: TObject);
begin
        (Sender as TwwDBLookupCombo).color := clAqua;
end;

procedure TFPrepInv.cboMatEnter(Sender: TObject);
begin
        (Sender as TwwDBLookupCombo).color := clAqua;
end;

procedure TFPrepInv.btGeraClick(Sender: TObject);
Var SQL:String;
begin
        If Q_INV.State = dsEdit then
                Q_INV.Post;

        SQL := ' SELECT         USU_INV ' +
               ' FROM           PARAMETROS ';

        Q_AUX.SQL.CLEAR;
        Q_AUX.SQL.ADD(SQL);
        Q_AUX.OPEN;

        If (Q_AUX.FieldByName('USU_INV').AsString <> '') And
           (Q_AUX.FieldByName('USU_INV').AsString <> StrUsuario) Then
        Begin
                MessageDlg('N�o ser� poss�vel gerar invent�rio porque o usu�rio ' + Q_AUX.FieldByName('USU_INV').AsString +
                ' est� utilizando este recurso, por favor tente dentro de alguns minutos.',mtInformation, [mbOk], 0);
        End Else Begin //Est� vazio e pode entrar
                SQL := 'UPDATE          PARAMETROS ' +
                       'SET             USU_INV = ' + '''' + StrUsuario + '''' +
                       'WHERE           USU_INV IS NULL ' ;

                Q_AUX.SQL.CLEAR;
                Q_AUX.SQL.ADD(SQL);
                Q_AUX.EXECSQL;

                If MessageDlg('Deseja realmente gerar Invent�rio?',
                mtInformation, [mbYes, mbNo], 0) = mrYes then
                begin

                        If (cboForn.Text <> '') and (cboForn.LookupValue <> '') then
                                SP_INV.ParamByName('@FOR_CODI').Value := cboForn.Text
                        Else
                                SP_INV.ParamByName('@FOR_CODI').Value := Null;

                        If (cboGr.Text <> '') and (cboGr.LookupValue <> '') then
                                SP_INV.ParamByName('@GRUPO_ID').Value := cboGr.LookupValue
                        Else
                                SP_INV.ParamByName('@GRUPO_ID').Value := Null;

                        If (cboMat.Text <> '') and (cboMat.LookupValue <> '') then
                                SP_INV.ParamByName('@MAT_ID').Value := cboMat.LookupValue
                        Else
                                SP_INV.ParamByName('@MAT_ID').Value := Null;

                        If (txtLote.Text <> '') then
                                SP_INV.ParamByName('@N_LOTE').Value := txtLote.Text
                        Else
                                SP_INV.ParamByName('@N_LOTE').Value := Null;
                                
                        If rdSal.Checked then
                                SP_INV.ParamByName('@TODOS').Value := 'N'
                        Else
                                SP_INV.ParamByName('@TODOS').Value := 'S';

                        SP_INV.ParamByName('@USUARIO').Value := StrUsuario;

                        SP_INV.ExecProc;

                        btPesq.Click;
                End;

                SQL := ' UPDATE          PARAMETROS ' +
                       ' SET             USU_INV =  NULL ' +
                       ' WHERE           USU_INV = ' + '''' + StrUsuario + '''';

                Q_AUX.SQL.CLEAR;
                Q_AUX.SQL.ADD(SQL);
                Q_AUX.EXECSQL;

        End;

End;


procedure TFPrepInv.btPesqClick(Sender: TObject);
var     SQL:String;
        StrChave : String;
        Campo:TField;
begin
        FORN:='';
        GRUPO:= '';
        MAT:= '';
        LOTE:= '';

        if cboLocal.Text = '' then begin
            ShowMessage('Informe o local');
            Abort;
        end;

        StrChave := Q_InvInv_ID.AsString;
        Campo := Grid.SelectedField;

        Q_INV.SQL.Clear;
        Q_INV.SQL.Add(SQLPrin);

        If (cboForn.Text <> '') and (cboForn.LookupValue <> '') then begin
                SQL := SQL + ' AND         I.FOR_CODI = ' + '''' + cboForn.LookupValue + '''';
                FORN:= cboForn.LookupValue;
         End;

        If (cboGr.Text <> '') and (cboGr.LookupValue <> '') then Begin
                SQL := SQL + ' AND         MAT.GRU_ID = ' + cboGr.LookupValue;
                GRUPO:= cboGr.LookupValue;
        End;

        If (cboMat.Text <> '') and (cboMat.LookupValue <> '') then Begin
                SQL := SQL + ' AND         MAT.MAT_ID = ' + cboMat.LookupValue;
                MAT := cboMat.LookupValue;
        END;

        If txtLote.Text <> '' then Begin
                SQL := SQL + ' AND         I.N_LOTE = ' + '''' + txtLote.Text + '''';
                LOTE:= txtLote.Text;
        End;

        If txtInv.Text <> '' then
                SQL := SQL + ' AND         I.NUM_INV = ' + txtInv.Text;

        If ckDif.Checked then
                SQL := SQL + ' AND         ABS(I.QTDE_INV - I.QTDE_ALMOX) > 0.0001 ';

        If ckQt.Checked then
                SQL := SQL + ' AND         I.QTDE_INV IS NULL ';

        SQL := SQL + ' AND LOCAL_ID = ' + cboLocal.LookupValue;



        If SQL <> '' Then
                Q_INV.SQL.ADD(SQL);

        Q_INV.SQL.ADD(SQLOrd);

        Q_INV.OPEN;

        If StrChave <> '' then
                Q_INV.Locate('INV_ID', StrChave, []);

        Grid.SelectedField := Campo;

end;

procedure TFPrepInv.cboFornKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        If key = 13 then
                btPesq.Click;
end;

procedure TFPrepInv.Q_INVAfterPost(DataSet: TDataSet);
var     StrChave:String;
        Campo:TField;
begin
        Campo := Grid.SelectedField;
        StrChave := Q_INVInv_ID.AsString;

        FMenu.DataBase1.ApplyUpdates([Q_INV]);
        Q_INV.CLOSE;
        Q_INV.OPEN;

        Grid.SelectedField := Campo;

        //A rigor StrChave deve ser sempre n�o nula pois nesta tela n�o � feito insert.
        If StrChave <> '' then
                Q_INV.Locate('INV_ID',StrChave,[]);
end;

procedure TFPrepInv.Q_INVBeforePost(DataSet: TDataSet);
begin
        Q_INVUsuario.AsString := StrUsuario;
        Q_INVDt_Alt.AsDateTime := Date;

        If (N_LoteOrig <> Q_INVN_Lote.AsString) and (N_LoteOrig <> '9999999') then
        Begin
                MessageDlg('N�o � permitido alterar N�mero de Lote para registros gerados a partir de saldo em Almoxarifado!',mtInformation, [mbOk], 0);
                abort;
        End;

        If Q_INVStatus.AsString = 'G' then
        Begin
                MessageDlg('N�o � poss�vel alterar registros que j� tenham gerado atualiza��o no Almoxarifado (Status "Gerado")!',mtInformation, [mbOk], 0);
                abort;
        End;
end;

procedure TFPrepInv.FormShow(Sender: TObject);
var SQL:String;
begin
        cboForn.SetFocus;
end;

procedure TFPrepInv.GridKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        If (Key = 13) and (Grid.SelectedField = Q_INVQtde_Inv) then
        Begin
                Q_INV.Next;
                Grid.SelectedField := Q_INVQtde_Inv;
        End;
end;

procedure TFPrepInv.Q_INVCalcFields(DataSet: TDataSet);
begin
   If Q_INVQtde_Inv.AsString <> '' then
        Begin

           If Q_INVQtde_Inv.AsFloat = 0.00 then
                Q_INVQtdeCalc.AsFloat := -Q_INVQtde_Almox.AsFloat
           ELSE
            Q_INVQtdeCalc.AsFloat := Q_INVQtde_Inv.AsFloat - Q_INVQtde_Almox.AsFloat;

           Q_INVValorDiferenca.AsFloat :=  Q_INVQtdeCalc.AsFloat * Q_INVReposicao.AsFloat;
   END;
END;


procedure TFPrepInv.cboFornCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
        btPesq.Click;
end;

procedure TFPrepInv.GridDblClick(Sender: TObject);
begin

        If (Grid.SelectedField = Q_INVQtde_Inv)  then
        Begin
                If Q_INVInv_ID.AsString <> '' then
                Begin
                        If Q_INV.State <> dsEdit then
                                Q_INV.Edit;
                        Q_InvQtde_Inv.AsFloat := Q_INVQtde_Almox.AsFloat;
                End;
        End Else Begin
                NINV:= txtInv.Text;
                INVX:= Q_INVInv_ID.AsString;

                If (INVX <> '') then
                Begin
                        Application.CreateForm(tFPrepInvCa, FPrepInvCa);
                        FPrepInvCa.ShowModal;
                        FPrepInvCa.Release;
                        btPesq.Click;
                End Else Begin
                        If INVX = '' then
                                MessageDlg('Para ver detalhes � necess�rio haver registro!',mtInformation, [mbOk], 0);
                End;
        End;
end;

procedure TFPrepInv.GridCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
        AFont.Color := clBlue;

        If (Field = Q_INVQtde_Inv) or (Field = Q_INVValid) then
        Begin
                ABrush.Color := $00AAFFFF;
        End Else Begin
                ABrush.Color := $00E1FFFF;
        End;

        If Field = Q_INVQtdeCalc then
        Begin
                ABrush.Color := $00CACAFF;
                If Q_INVQtdeCalc.AsFloat < 0.0 then
                        AFont.Color := clRed
                Else
                        AFont.Color := clGreen;
        End;
end;

procedure TFPrepInv.ckDifClick(Sender: TObject);
begin
        btPesq.Click;
end;

procedure TFPrepInv.btAtualClick(Sender: TObject);
var SQL:String;
    TD_INV_ID:String;
    Fez:Boolean;
    StrChave:String;
    DATAI : STRING;
    saldo, qtdeBaixar : Real;
begin
        If Q_INV.State = dsEdit then
                Q_INV.Post;

        If Q_INV.State = dsEdit then
                Q_INV.Post;


        SQL := ' SELECT         USU_INV ' +
               ' FROM           PARAMETROS ';

        Q_AUX.CLOSE;
        Q_AUX.SQL.CLEAR;
        Q_AUX.SQL.ADD(SQL);
        Q_AUX.OPEN;

       If (Q_AUX.FieldByName('USU_INV').AsString <> '') And
           (Q_AUX.FieldByName('USU_INV').AsString <> StrUsuario) Then
        Begin
                MessageDlg('N�o ser� poss�vel gerar invent�rio porque o usu�rio ' + Q_AUX.FieldByName('USU_INV').AsString +
                ' est� utilizando este recurso, por favor tente dentro de alguns minutos.',mtInformation, [mbOk], 0);
        End Else Begin //Est� vazio e pode entrar

                btPesq.Click;

                If txtInv.Text = '' then
                Begin
                        MessageDlg('Favor filtrar por invent�rio!',
                        mtInformation, [mbOk], 0);
                        abort;
                End;

              {  SQL := ' SELECT         COUNT(1) HA ' +
                       ' FROM           INV ' +
                       ' WHERE          NUM_INV = ' +  txtInv.Text +
                       ' AND            VALID IS NULL ';     }


                 SQL := 'SELECT  COUNT(1) HA '+
                        'FROM    INV I, '+
                        '    MATERIAIS MAT, '+
                        '    CPAFORN FORN, '+
                        '   MARCAS M  '+
                        ' WHERE   I.MAT_ID = MAT.MAT_ID '+
                        ' AND     I.FOR_CODI = FORN.FOR_CODI '+
                        ' AND      I.NUM_INV = ' +  txtInv.Text +
                        ' AND M.MARCA_ID = I.MARCA_ID  '  +
                        ' AND I.VALID IS NULL ';
        If (cboForn.Text <> '') and (cboForn.LookupValue <> '') then begin
                SQL := SQL + ' AND         I.FOR_CODI = ' + '''' + cboForn.LookupValue + '''';
                //FORN:= cboForn.LookupValue;
         End;

        If (cboGr.Text <> '') and (cboGr.LookupValue <> '') then Begin
                SQL := SQL + ' AND         MAT.GRU_ID = ' + cboGr.LookupValue;
                //GRUPO:= cboGr.LookupValue;
        End;

        if cboLocal.Text <> '' then begin
            SQL  := sql  + ' and LOCAL_ID = ' + cboLocal.LookupValue;
        end;


        If (cboMat.Text <> '') and (cboMat.LookupValue <> '') then Begin
                SQL := SQL + ' AND         MAT.MAT_ID = ' + cboMat.LookupValue;
                //MAT := cboMat.LookupValue;
        END;

        If txtLote.Text <> '' then Begin
                SQL := SQL + ' AND         I.N_LOTE = ' + '''' + txtLote.Text + '''';
                //LOTE:= txtLote.Text;
        End;

        If txtInv.Text <> '' then
                SQL := SQL + ' AND         I.NUM_INV = ' + txtInv.Text;

        If ckDif.Checked then
                SQL := SQL + ' AND         ABS(I.QTDE_INV - I.QTDE_ALMOX) > 0.0001 ';

        If ckQt.Checked then
                SQL := SQL + ' AND         I.QTDE_INV IS NULL ';

                Q_AUX.SQL.CLEAR;
                Q_AUX.SQL.ADD(SQL);
                Q_AUX.OPEN;

                If Q_AUX.FieldByName('Ha').Asinteger > 0 then
                Begin
                        MessageDlg('Favor preencher todas as datas de validade!',
                        mtInformation, [mbOk], 0);
                        abort;
                End;

                StrChave := Q_INVInv_ID.AsString;

                Fez := False;

                //Descobre o ID que identifica
                //Tipo de documento = Invent�rio "INV"
                SQL :=  ' SELECT        TD_ID '+
                        ' FROM          TIPO_DOCUMENTO ' +
                        ' WHERE         APELIDO = ' + '''' + 'INV' + '''';

                Q_AUX.SQL.CLEAR;
                Q_AUX.SQL.ADD(SQL);
                Q_AUX.OPEN;

                TD_INV_ID := Q_AUX.FieldByName('TD_ID').AsString;

                {SQL :=
        	' SELECT	COUNT(*) Qtos ' +
        	' FROM		INV ' +
        	' WHERE		NUM_INV = ' + TxtInv.Text +
                ' AND           QTDE_INV IS NULL';   }


                 SQL := 'SELECT  COUNT(1) Qtos '+
                        'FROM    INV I, '+
                        '    MATERIAIS MAT, '+
                        '    CPAFORN FORN, '+
                        '   MARCAS M  '+
                        ' WHERE   I.MAT_ID = MAT.MAT_ID '+
                        ' AND     I.FOR_CODI = FORN.FOR_CODI '+
                        ' AND      I.NUM_INV = ' +  txtInv.Text +
                        ' AND M.MARCA_ID = I.MARCA_ID  '  +
                        ' AND I.QTDE_INV IS NULL ';
        If (cboForn.Text <> '') and (cboForn.LookupValue <> '') then begin
                SQL := SQL + ' AND         I.FOR_CODI = ' + '''' + cboForn.LookupValue + '''';
                //FORN:= cboForn.LookupValue;
         End;

        If (cboGr.Text <> '') and (cboGr.LookupValue <> '') then Begin
                SQL := SQL + ' AND         MAT.GRU_ID = ' + cboGr.LookupValue;
                //GRUPO:= cboGr.LookupValue;
        End;

        If (cboMat.Text <> '') and (cboMat.LookupValue <> '') then Begin
                SQL := SQL + ' AND         MAT.MAT_ID = ' + cboMat.LookupValue;
                //MAT := cboMat.LookupValue;
        END;

        if cboLocal.Text <> '' then begin
            SQL  := sql  + ' and LOCAL_ID = ' + cboLocal.LookupValue;
        end;

        If txtLote.Text <> '' then Begin
                SQL := SQL + ' AND         I.N_LOTE = ' + '''' + txtLote.Text + '''';
                //LOTE:= txtLote.Text;
        End;

        If txtInv.Text <> '' then
                SQL := SQL + ' AND         I.NUM_INV = ' + txtInv.Text;

        If ckDif.Checked then
                SQL := SQL + ' AND         ABS(I.QTDE_INV - I.QTDE_ALMOX) > 0.0001 ';

        If ckQt.Checked then
                SQL := SQL + ' AND         I.QTDE_INV IS NULL ';

                Q_AUX.SQL.CLEAR;
                Q_AUX.SQL.ADD(SQL);
                Q_AUX.OPEN;

                If Q_AUX.FieldByName('Qtos').Asfloat > 0.0 then
                Begin
                        MessageDlg('Antes � necess�rio preencher todas as quantidades para este o Invent�rio!',
                                mtInformation, [mbOk], 0);
                        abort;
                End Else Begin


                        SQL := 'UPDATE          PARAMETROS ' +
                               'SET             USU_INV = ' + '''' + StrUsuario + '''' +
                               'WHERE           USU_INV IS NULL ' ;

                        Q_AUX.SQL.CLEAR;
                        Q_AUX.SQL.ADD(SQL);
                        Q_AUX.EXECSQL;

                        If MessageDlg('Deseja realmente atualizar almoxarifado? S� ser�o atualizados os registos que aparecem no grid e que tenham status "Aberto" ou "Com Erro"!',
                        mtInformation, [mbYes, mbNo], 0) = mrYes then
                        Begin
                                Q_INV.First;

                                While Not Q_INV.Eof Do
                                Begin
                                        //Permite que gere atualiza��o apenas quem tiver status
                                        //"A"berto e quantidade a ajustar diferente de Zero.

                                        If ((Q_INVStatus.AsString = 'A') OR (Q_INVStatus.AsString = 'E')) and (Q_INVQtdeCalc.AsFloat <> 0.0) then
                                        Begin
                                                //se for entrada
                                                If Q_INVQtdeCalc.AsFloat > 0.0 then begin
                                                        SP_AJALM.ParamByName('@TIPO').Value := 'E';
                                                        SP_AJALM.ParamByName('@QTDE').Value := Abs(Q_INVQtdeCalc.AsFloat);

                                                        If TD_INV_ID = '' Then
                                                                SP_AJALM.ParamByName('@TD_ID').Value := Null
                                                        Else
                                                                SP_AJALM.ParamByName('@TD_ID').Value := TD_INV_ID;

                                                        SP_AJALM.ParamByName('@DOCTO').Value := Q_INVNum_INV.AsString;
                                                        SP_AJALM.ParamByName('@N_LOTE').Value := Q_INVN_LOTE.AsString;
                                                        SP_AJALM.ParamByName('@MAT_ID').Value := Q_INVMAT_ID.AsString;
                                                        SP_AJALM.ParamByName('@FOR_CODI').Value := Q_INVFOR_CODI.AsString;
                                                        SP_AJALM.ParamByName('@MOT_ID').Value := Null;
                                                        If Q_INVUsuario.AsString <> '' Then
                                                                SP_AJALM.ParamByName('@USUARIO').Value := Q_INVUsuario.AsString
                                                        Else
                                                                SP_AJALM.ParamByName('@USUARIO').Value := StrUsuario;

                                                        SP_AJALM.ParamByName('@REC_ITEM_ID').Value := Null;

                                                        SP_AJALM.ParamByName('@DATAX').Value := Null;

                                                        SP_AJALM.ParamByName('@MARCA_ID').Value := Q_INVMarca_ID.AsString;

                                                        SP_AJALM.ParamByName('@LOCAL_ID').Value := Q_INVLocal_ID.AsString;

                                                        If Q_INVValid.AsString <> '' then
                                                                DATAI  := formatdatetime('DD-MM-YYYY',strtodate(Q_INVValid.AsString))
                                                        Else
                                                                DATAI := '';

                                                        If DataI = '' then
                                                                SP_AJALM.ParamByName('@VALID').Value := Null
                                                        Else
                                                                SP_AJALM.ParamByName('@VALID').Value := Datai;

                                                        SP_AJALM.EXECPROC;

                                                        If SP_AJALM.ParamByName('@MSG').Value <> 'OK' then
                                                                MessageDlg(SP_AJALM.ParamByName('@MSG').Value,
                                                                mtInformation, [mbOk], 0)
                                                        Else Begin
                                                                SQL :=  'UPDATE         INV ' +
                                                                        'SET            STATUS = ' + '''' + 'G' + '''' +
                                                                        'WHERE          INV_ID = ' + Q_INVInv_ID.AsString;
                                                                Q_AUX.SQL.CLEAR;
                                                                Q_AUX.SQL.ADD(SQL);
                                                                Q_AUX.EXECSQL;
                                                        End;

                                                        If Fez = False then
                                                                Fez := True;
                                                end
                                                Else //se for baixa procura os lotes para baixar
                                                begin
                                                        qryLotes.Close;
                                                        qryLotes.Parameters[0].Value :=  Q_INVMAT_ID.AsString;
                                                        qryLotes.Parameters[1].Value :=  Q_INVN_LOTE.AsString;
                                                        qryLotes.Parameters[2].Value :=  Q_INVFOR_CODI.AsString;
                                                        qryLotes.Parameters[3].Value :=  Q_INVMarca_ID.AsString;
                                                        qryLotes.Parameters[4].Value :=  Q_INVLocal_ID.AsString;
                                                        qryLotes.Open;
                                                        saldo := Abs(Q_INVQtdeCalc.AsFloat);
                                                        qtdeBaixar := 0;
                                                        while not qryLotes.Eof do begin
                                                                if saldo > 0 then begin

                                                                        if qryLotesQtde.AsFloat >=  saldo then begin
                                                                              SP_AJALM.ParamByName('@QTDE').Value := Abs(saldo);
                                                                              saldo := 0;
                                                                        end
                                                                        else
                                                                        begin
                                                                              saldo := saldo - qryLotesQtde.AsFloat;
                                                                              SP_AJALM.ParamByName('@QTDE').Value := qryLotesQtde.AsFloat;
                                                                        end;

                                                                        SP_AJALM.ParamByName('@TIPO').Value := 'B';


                                                                        If TD_INV_ID = '' Then
                                                                                SP_AJALM.ParamByName('@TD_ID').Value := Null
                                                                        Else
                                                                                SP_AJALM.ParamByName('@TD_ID').Value := TD_INV_ID;

                                                                        SP_AJALM.ParamByName('@DOCTO').Value := Q_INVNum_INV.AsString;
                                                                        SP_AJALM.ParamByName('@N_LOTE').Value := Q_INVN_LOTE.AsString;
                                                                        SP_AJALM.ParamByName('@MAT_ID').Value := Q_INVMAT_ID.AsString;
                                                                        SP_AJALM.ParamByName('@FOR_CODI').Value := Q_INVFOR_CODI.AsString;
                                                                        SP_AJALM.ParamByName('@MOT_ID').Value := Null;
                                                                        If Q_INVUsuario.AsString <> '' Then
                                                                                SP_AJALM.ParamByName('@USUARIO').Value := Q_INVUsuario.AsString
                                                                        Else
                                                                                SP_AJALM.ParamByName('@USUARIO').Value := StrUsuario;

                                                                        SP_AJALM.ParamByName('@REC_ITEM_ID').Value := Null;

                                                                        SP_AJALM.ParamByName('@DATAX').Value := Null;

                                                                        SP_AJALM.ParamByName('@MARCA_ID').Value := Q_INVMarca_ID.AsString;

                                                                        SP_AJALM.ParamByName('@LOCAL_ID').Value := Q_INVLocal_ID.AsString;

                                                                        If Q_INVValid.AsString <> '' then
                                                                                DATAI  := formatdatetime('DD-MM-YYYY',strtodate(Q_INVValid.AsString))
                                                                        Else
                                                                                DATAI := '';

                                                                        If DataI = '' then
                                                                                SP_AJALM.ParamByName('@VALID').Value := Null
                                                                        Else
                                                                                SP_AJALM.ParamByName('@VALID').Value := Datai;

                                                                        SP_AJALM.EXECPROC;

                                                                        If SP_AJALM.ParamByName('@MSG').Value <> 'OK' then
                                                                                MessageDlg(SP_AJALM.ParamByName('@MSG').Value,
                                                                                mtInformation, [mbOk], 0)
                                                                        Else Begin
                                                                                SQL :=  'UPDATE         INV ' +
                                                                                        'SET            STATUS = ' + '''' + 'G' + '''' +
                                                                                        'WHERE          INV_ID = ' + Q_INVInv_ID.AsString;
                                                                                Q_AUX.SQL.CLEAR;
                                                                                Q_AUX.SQL.ADD(SQL);
                                                                                Q_AUX.EXECSQL;
                                                                        End;

                                                                        If Fez = False then
                                                                                Fez := True;





                                                                end;//end if saldo
                                                                qryLotes.Next;
                                                        end;//end while
                                                end;





                                        End Else If (Q_INVStatus.AsString = 'A') then
                                        //Porque pode ser que n�o gere ajuste mas sempre tem que indicar que j� foi considerado (gerado)
                                        Begin
                                                SQL :=  'UPDATE         INV ' +
                                                        'SET            STATUS = ' + '''' + 'G' + '''' +
                                                        'WHERE          INV_ID = ' + Q_INVInv_ID.AsString;
                                                        Q_AUX.SQL.CLEAR;
                                                        Q_AUX.SQL.ADD(SQL);
                                                        Q_AUX.EXECSQL;
                                        End;

                                        Q_INV.Next;
                                End; //Do While

                                If Fez then
                                Begin
                                        MessageDlg('Invent�rio Executado!',
                                        mtInformation, [mbOk], 0);

                                        btPesq.Click;
                                End;

                                End; //Do With

                                SQL := ' UPDATE          PARAMETROS ' +
                                       ' SET             USU_INV =  NULL ' +
                                       ' WHERE           USU_INV = ' + '''' + StrUsuario + '''';

                                Q_AUX.SQL.CLEAR;
                                Q_AUX.SQL.ADD(SQL);
                                Q_AUX.EXECSQL;

                        End;
       End;

End;

procedure TFPrepInv.BitBtn20Click(Sender: TObject);
begin
   Application.CreateForm (TFBDinAlm, FBDinAlm);
   FBDinAlm.ShowModal;
   FBDinAlm.Release;
end;

procedure TFPrepInv.Bt_IncluirClick(Sender: TObject);
VAR SQL : STRING;
Begin
        NINV:= txtInv.Text;

        IF Ninv = '' THEN BEGIN
                MessageDlg(' Favor preencher o n�mero de Invent�rio !',mtInformation, [MbOk], 0);
                txtInv.SetFocus;
                abort;
        End Else Begin

                SQL :=  ' SELECT      MIN(NUM_INV) HA '+
                        ' FROM        INV ' +
                        ' WHERE       NUM_INV = ' + NINV;

                Q_AUX.SQL.CLEAR;
                Q_AUX.SQL.ADD(SQL);
                Q_AUX.OPEN;

                If Q_AUX.FieldByName('HA').AsString <> '' then
                Begin

                        INVX := '0';

                        Application.CreateForm(tFPrepInvCa, FPrepInvCa);
                        FPrepInvCa.ShowModal;
                        FPrepInvCa.Release;
                        btPesq.Click;

                End Else Begin

                        MessageDlg('Este n�mero de Invent�rio n�o existe!',mtInformation, [mbOk], 0);
                End;
        End;
End;

procedure TFPrepInv.spRelat1Click(Sender: TObject);
begin

     StrFiltro := '' ;

     if (cboForn.text <> '') then
        StrFiltro := StrFiltro + '    Fornecedor : ' + cboForn.text;
     if (cboGr.text <> '' ) then
        StrFiltro := StrFiltro +  '    Grupo : ' + cboGr.Text;
     if (cboMat.text <> '') then
        StrFiltro := StrFiltro +  '    Material : ' + cboMat.Text;
     if (txtLote.text <> '') then
        StrFiltro := StrFiltro +  '    Lote : ' + txtLote.Text;

     If ckDif.Checked Then
        DIF := ckDif.Checked
     Else
        DIF := False;

     NINV:= txtInv.Text;

     If ckDif.Checked Then
        DIF := ckDif.Checked
     Else
        DIF := False;


     If NINV = '' Then Begin
                MessageDlg(' Num. Invent�rio, preenchimento obrigatorio! ',mtInformation, [MbOk], 0);
                txtInv.SetFocus;
     End Else Begin
               INVX := '0';
               Application.CreateForm(TFRelInv ,FRelInv);
               FRelInv.QuickRep1.Preview;
               FRelInv.Close;
     End;

end;

procedure TFPrepInv.spRelat2Click(Sender: TObject);
begin
   StrFiltro := '' ;

  if (cboForn.text <> '') then
      StrFiltro := StrFiltro + '    Fornecedor : ' + cboForn.text;
  if (cboGr.text <> '' ) then
     StrFiltro := StrFiltro +  '    Grupo : ' + cboGr.Text;
  if (cboMat.text <> '') then
     StrFiltro := StrFiltro +  '    Material : ' + cboMat.Text;
  if (txtLote.text <> '') then
     StrFiltro := StrFiltro +  '    Lote : ' + txtLote.Text;
  if cboLocal.Text <> '' then
     StrFiltro := StrFiltro + '  Local: ' + cboLocal.Text;



//     If ckQt.Checked Then
//        QTDEDIF := ckQt.Checked
//     Else
//        QTDEDIF := False;

        NINV:= txtInv.Text;

        IF  NINV = ''  THEN BEGIN
             MessageDlg(' Num. Invent�rio, preenchimento obrigatorio! ',mtInformation, [MbOk], 0);
             txtInv.SetFocus;
       end
       else begin
             Application.CreateForm(TFRelInvPre ,FRelInvPre);
             if CheckBox1.Checked then begin
                FRelInvPre.QRDBText4.Enabled :=  QtdeDif.Checked;
                FRelInvPre.QRDBText5.Enabled := QtdeInv.Checked;
                FRelInvPre.QRDBText6.Enabled := QtdeAlmox.Checked;
                FRelInvPre.QRDBText11.Enabled := Validade.Checked;
                FRelInvPre.QRDBText7.Enabled := chkLote.Checked;
                FRelInvPre.QRDBText2.Enabled := Fornecedor.Checked;
                FRelInvPre.QRDBText10.Enabled := chkMarca.Checked;
             end;
             FRelInvPre.QRMemo1.Lines.Text := StrFiltro;
             FRelInvPre.QuickRep1.Preview;
             FRelInvPre.Close;
      end;

end;

procedure TFPrepInv.Q_INVAfterScroll(DataSet: TDataSet);
begin
        N_LoteOrig := Q_INVN_Lote.AsString;
end;

procedure TFPrepInv.SpeedButton4Click(Sender: TObject);
begin
        If Q_INV.State = dsEdit then
                Q_INV.Post;
end;

procedure TFPrepInv.BitBtn1Click(Sender: TObject);
Var SQL:String;
begin
    NINV:= txtInv.Text;

    If Ninv = '' Then Begin
                MessageDlg(' Favor preencher o n�mero de Invent�rio !',mtInformation, [MbOk], 0);
                txtInv.SetFocus;
                abort;
    End
    Else Begin

        If MessageDlg('Deseja realmente apagar o invent�rio ' + NINV + '?',
           mtInformation, [mbYes, mbNo], 0) = mrYes then
        Begin
            If MessageDlg('Lembre-se os dados do invent�rio ' + NINV + ' ser�o excluidos do Banco de Dados! ',
               mtInformation, [mbYes, mbNo], 0) = mrYes then
            Begin
               SQL := ' DELETE FROM INV WHERE NUM_INV = ' + NINV;
               Q_AUX.SQL.CLEAR;
               Q_AUX.SQL.ADD(SQL);
               Q_AUX.EXECSQL;

                btPesq.Click;
            End
            Else
              ABORT;
        End;
    End;
end;

procedure TFPrepInv.btRetClick(Sender: TObject);
var SQL:String;
    TD_INV_ID:String;
    Fez:Boolean;
    StrChave:String;
begin
        If Q_INV.State = dsEdit then
                Q_INV.Post;

        SQL := ' SELECT         USU_INV ' +
               ' FROM           PARAMETROS ';

        Q_AUX.SQL.CLEAR;
        Q_AUX.SQL.ADD(SQL);
        Q_AUX.OPEN;

        If (Q_AUX.FieldByName('USU_INV').AsString <> '') And
           (Q_AUX.FieldByName('USU_INV').AsString <> StrUsuario) Then
        Begin
                MessageDlg('N�o ser� poss�vel gerar invent�rio porque o usu�rio ' + Q_AUX.FieldByName('USU_INV').AsString +
                ' est� utilizando este recurso, por favor tente dentro de alguns minutos.',mtInformation, [mbOk], 0);
        End Else Begin //Est� vazio e pode entrar

                btPesq.Click;

                If txtInv.Text = '' then
                Begin
                        MessageDlg('Favor filtrar por invent�rio!',
                        mtInformation, [mbOk], 0);
                        abort;
                End;

                StrChave := Q_INVInv_ID.AsString;

                Fez := False;

                SQL :=
        	' SELECT	COUNT(*) Qtos ' +
        	' FROM		INV ' +
        	' WHERE		NUM_INV = ' + TxtInv.Text +
                ' AND           QTDE_INV IS NULL';

                Q_AUX.SQL.CLEAR;
                Q_AUX.SQL.ADD(SQL);
                Q_AUX.OPEN;

                If Q_AUX.FieldByName('Qtos').Asfloat > 0.0 then
                Begin
                        MessageDlg('Antes � necess�rio preencher todas as quantidades para este o Invent�rio!',
                                mtInformation, [mbOk], 0);
                        abort;
                End Else Begin


                        SQL := 'UPDATE          PARAMETROS ' +
                               'SET             USU_INV = ' + '''' + StrUsuario + '''' +
                               'WHERE           USU_INV IS NULL ' ;

                        Q_AUX.SQL.CLEAR;
                        Q_AUX.SQL.ADD(SQL);
                        Q_AUX.EXECSQL;

                        If MessageDlg('Deseja realmente atualizar almoxarifado? S� ser�o atualizados os registos que aparecem no grid e que tenham status "Aberto" ou "Com Erro"!',
                        mtInformation, [mbYes, mbNo], 0) = mrYes then
                        Begin
                                Q_INV.First;

                                While Not Q_INV.Eof Do
                                Begin
                                        //Permite que gere atualiza��o apenas quem tiver status
                                        //"A"berto e quantidade a ajustar diferente de Zero.

                                        //Pode executar dois status 'G'erado e 'E'rrado
                                        If (Q_INVStatus.AsString <> 'G') and (Q_INVQtdeCalc.AsFloat <> 0.0) then
                                        Begin

                                                SP_ENC_INV.ParamByName('@FOR_CODI').Value := Q_INVFOR_CODI.AsString;
                                                SP_ENC_INV.ParamByName('@N_LOTE').Value := Q_INVN_LOTE.AsString;
                                                SP_ENC_INV.ParamByName('@MAT_ID').Value := Q_INVMAT_ID.AsString;
                                                SP_ENC_INV.ParamByName('@NUM_INV').Value := Q_INVNum_Inv.ASInteger;

                                                If Q_INVUsuario.AsString <> '' Then
                                                        SP_ENC_INV.ParamByName('@USUARIO').Value := Q_INVUsuario.AsString
                                                Else
                                                        SP_ENC_INV.ParamByName('@USUARIO').Value := StrUsuario;

                                                SP_ENC_INV.ParamByName('@QTDE').Value := Abs(Q_INVQtdeCalc.AsFloat);
                                                SP_ENC_INV.ParamByName('@DATA').Value := Q_INVData.AsDateTime;

                                                If Q_INVQtdeCalc.AsFloat > 0.0 then
                                                        SP_ENC_INV.ParamByName('@TIPO').Value := 'E'
                                                Else
                                                        SP_ENC_INV.ParamByName('@TIPO').Value := 'B';

                                                SP_ENC_INV.EXECPROC;

                                                If SP_ENC_INV.ParamByName('@MSG').Value <> 'OK' then
                                                Begin
                                                        SQL :=  'UPDATE         INV ' +
                                                                'SET            STATUS = ' + '''' + 'E' + '''' +
                                                                'WHERE          INV_ID = ' + Q_INVInv_ID.AsString;

                                                        Q_AUX.SQL.CLEAR;
                                                        Q_AUX.SQL.ADD(SQL);
                                                        Q_AUX.EXECSQL;

                                                        MessageDlg(SP_ENC_INV.ParamByName('@MSG').Value,
                                                        mtInformation, [mbOk], 0);

                                                End Else Begin
                                                        SQL :=  'UPDATE         INV ' +
                                                                'SET            STATUS = ' + '''' + 'G' + '''' +
                                                                'WHERE          INV_ID = ' + Q_INVInv_ID.AsString;
                                                        Q_AUX.SQL.CLEAR;
                                                        Q_AUX.SQL.ADD(SQL);
                                                        Q_AUX.EXECSQL;
                                                End;

                                                If Fez = False then
                                                        Fez := True;

                                        End Else If (Q_INVStatus.AsString = 'A') or (Q_INVStatus.AsString = 'E') then
                                        //Porque pode ser que n�o gere ajuste mas sempre tem que indicar que j� foi considerado (gerado)
                                        Begin
                                                SQL :=  'UPDATE         INV ' +
                                                        'SET            STATUS = ' + '''' + 'G' + '''' +
                                                        'WHERE          INV_ID = ' + Q_INVInv_ID.AsString;
                                                        Q_AUX.SQL.CLEAR;
                                                        Q_AUX.SQL.ADD(SQL);
                                                        Q_AUX.EXECSQL;
                                                        btpesq.Click;
                                        End;

                                        Q_INV.Next;
                                End; //Do While

                                If Fez then
                                Begin
                                        MessageDlg('Invent�rio Executado!',
                                        mtInformation, [mbOk], 0);

                                        btPesq.Click;
                                End;

                                End; //Do With

                                SQL := ' UPDATE          PARAMETROS ' +
                                       ' SET             USU_INV =  NULL ' +
                                       ' WHERE           USU_INV = ' + '''' + StrUsuario + '''';

                                Q_AUX.SQL.CLEAR;
                                Q_AUX.SQL.ADD(SQL);
                                Q_AUX.EXECSQL;

                        End;

        End;
end;

procedure TFPrepInv.BitBtn2Click(Sender: TObject);
begin
   Application.CreateForm(TFAjustAlm, FAjustAlm);
   FAjustAlm.ShowModal;
   FAjustAlm.Release;
end;

procedure TFPrepInv.bt_gravarClick(Sender: TObject);
var SQL:String;
begin
      IF txtInv.Text = '' THEN BEGIN
              messagebox(0,'Favor Selecionar um Num. Invent�rio !!!','Vetorpel',(mb_Ok + Mb_IconInformation + 8192));
              txtInv.SetFocus;
              abort ;
      END;


      IF Data1.Text = '  /  /     :  ' THEN BEGIN
              messagebox(0,'Favor Selecionar o Per�odo !!!','Vetorpel',(mb_Ok + Mb_IconInformation + 8192));
              Data1.SetFocus;
              abort ;
      END;

     DATI  := FormatDateTime('mm/dd/yy  hh:mm',StrToDateTime(Data1.Text));

     NINV:= txtInv.Text;

      If MessageDlg('Deseja realmente alterar todas as datas do invent�rio Num.'  + NINV + ' ? ' ,
                        mtInformation, [mbYes, mbNo], 0) = mrYes then
      Begin


             SQL := '  UPDATE INV ' +
                    '  SET DATA = ' + '''' + DATI + '''' +
                    '  WHERE NUM_INV = ' + '''' + NINV + '''';

             Q_AUX.SQL.CLEAR;
             Q_AUX.SQL.ADD(SQL);
             Q_AUX.EXECSQL;
             btPesq.Click;
     End;


end;

procedure TFPrepInv.spRelatInvClick(Sender: TObject);
begin
     StrFiltro := '' ;

     if (cboForn.text <> '') then
        StrFiltro := StrFiltro + '    Fornecedor : ' + cboForn.text;
     if (cboGr.text <> '' ) then
        StrFiltro := StrFiltro +  '    Grupo : ' + cboGr.Text;
     if (cboMat.text <> '') then
        StrFiltro := StrFiltro +  '    Material : ' + cboMat.Text;
     if (txtLote.text <> '') then
        StrFiltro := StrFiltro +  '    Lote : ' + txtLote.Text;

     If ckDif.Checked Then
        DIF := ckDif.Checked
     Else
        DIF := False;

     NINV:= txtInv.Text;

     If ckDif.Checked Then
        DIF := ckDif.Checked
     Else
        DIF := False;


     If NINV = '' Then Begin
                MessageDlg(' Num. Invent�rio, preenchimento obrigatorio! ',mtInformation, [MbOk], 0);
                txtInv.SetFocus;
     End Else Begin
               INVX := '0';
//               Application.CreateForm(tFRelInventario ,FRelInventario);
//               FRelInventario.QuickRep1.Preview;
//               FRelInventario.Close;
     End;

end;

procedure TFPrepInv.SpeedButton6Click(Sender: TObject);
var SQL:String;
begin
      If txtInv.Text = '' Then Begin
              messagebox(0,'Favor Selecionar um Num. Invent�rio !!!','Vetorpel',(mb_Ok + Mb_IconInformation + 8192));
              txtInv.SetFocus;
              abort ;
      End;


      If  Q_INVStatus.AsString <> 'G' Then Begin

          If MessageDlg('Deseja realmente alterar todos os Custos M�dios do invent�rio Num.'  + txtInv.Text + ' e do Material: ' + Q_INVMat_Desc.AsString + ' ? ' ,
                        mtInformation, [mbYes, mbNo], 0) = mrYes then
          Begin

                If Edit1.Text <> '' Then Begin


                SQL:=       ' UPDATE INV SET CUSTO_MEDIO_INV = ' + Funcoes.Converte((Edit1.Text),',','.') +
                            ' WHERE  MAT_ID = '  + Q_INVMAT_ID.AsString +
                            ' AND    NUM_INV = ' + txtInv.Text ;


                Q_AUX.SQL.CLEAR;
                Q_AUX.SQL.ADD(SQL);
                Q_AUX.EXECSQL;
                btPesq.Click;

                End Else Begin

                messagebox(0,'Favor selecionar um novo Custo M�dio !!!','Vetorpel',(mb_Ok + Mb_IconInformation + 8192));
                Edit1.SetFocus;
                abort ;

                End;
          End;
     End

     Else Begin
        messagebox(0,'Este Invent�rio esta com Status "Gerado", n�o � poss�vel alterar!','Vetorpel',(mb_Ok + Mb_IconInformation + 8192));
        txtInv.SetFocus;
        abort ;

     End;

      
end;

procedure TFPrepInv.Edit1Enter(Sender: TObject);
begin
        (Sender as TEdit).color := clAqua;
end;

procedure TFPrepInv.Edit1Exit(Sender: TObject);
begin
        (Sender as TEdit).color := clWindow;
end;

procedure TFPrepInv.Data1Enter(Sender: TObject);
begin
        (Sender as Tmaskedit).color := clAqua;
end;

procedure TFPrepInv.Data1Exit(Sender: TObject);
begin
        (Sender as Tmaskedit).color := clWindow;
end;

procedure TFPrepInv.SpeedButton7Click(Sender: TObject);
Var SQL:String;
begin
{
         If MessageDlg('Deseja realmente gerar Invent�rio?',
        mtInformation, [mbYes, mbNo], 0) = mrYes then
        begin
                SP_INV_COR.ParamByName('@USUARIO').AsString := strUsuario;
                SP_INV_COR.ExecProc;
                btPesq.Click;
        End;

        SQL := ' UPDATE          PARAMETROS ' +
               ' SET             USU_INV =  NULL ' +
               ' WHERE           USU_INV = ' + '''' + StrUsuario + '''';

        Q_AUX.SQL.CLEAR;
        Q_AUX.SQL.ADD(SQL);
        Q_AUX.EXECSQL;
        }
End;

procedure TFPrepInv.CheckBox1Click(Sender: TObject);
begin
   Panel5.Visible := CheckBox1.Checked;
end;

procedure TFPrepInv.BitBtn3Click(Sender: TObject);
var linha : Integer;
    Excel : Variant;
    i, Coluna : Integer;
begin
  excel := CreateOleObject('excel.application');
  Excel.WorkBooks.Add;

   linha := 1;


     
    Excel.Cells[Linha, 1] := 'Invent�rio';
    Excel.Cells[Linha, 2] := 'Fornecedor';
    Excel.Cells[Linha, 3] := 'Material';
    Excel.Cells[Linha, 4] := 'Marca';
    Excel.Cells[Linha, 5] := 'Lote';
    Excel.Cells[Linha, 6] := 'Qtde Almox';
    Excel.Cells[Linha, 7] := 'Qtde Invent�rio';
    Excel.Cells[Linha, 8] := 'Validade';
    Excel.Cells[Linha, 9] := 'Qtde Movimento';
    Excel.Cells[Linha, 10] := 'Data';
    Excel.Cells[Linha, 11] := 'Tipo';
    Excel.Cells[Linha, 12] := 'Usu�rio';
    Excel.Cells[Linha, 13] := 'Data Atualiza��o';
    Excel.Cells[Linha, 14] := 'Valor Reposi��o';
    Excel.Cells[Linha, 15] := 'Valor Estoque';
    Excel.Cells[Linha, 16] := 'Valor Diferen�a';
    Excel.Cells[Linha, 17] := 'Status';
    Excel.Cells[Linha, 18] := 'Local Armazem';
    Excel.Cells[Linha, 19] := 'Consumo �ltimos 3 Meses';




  dsExcel.DataSet.First;
  while not dsExcel.DataSet.Eof do begin
      Inc(linha);
      for i := 0 to pred(dsExcel.DataSet.FieldCount) do begin
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

           if i + 1 > 19 then
                Excel.Cells[Linha, i + 1] := '';
      end;

      dsExcel.DataSet.Next;
      Application.ProcessMessages;
  end;

  Excel.Range['A:Z'].EntireColumn.AutoFit;
  Excel.Application.Visible := true;

end;

procedure TFPrepInv.btn1Click(Sender: TObject);
begin
  Panel5.Visible := False;
end;

procedure TFPrepInv.btnGetMaterialClick(Sender: TObject);
begin
        frmBuscaMaterial := tfrmBuscaMaterial.create(Self);
    frmBuscaMaterial.chkConsideraMarca.Checked := False;
    frmBuscaMaterial.showmodal;
    if frmBuscaMaterial.lbSelecao.Caption <> '' then begin
         cboMat.LookupValue := frmBuscaMaterial.lbSelecao.Caption;
    end;
    frmBuscaMaterial.lbSelecao.Caption := '';
    FreeAndNil(frmBuscaMaterial);
end;

end.

