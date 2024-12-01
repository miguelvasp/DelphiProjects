unit UBDinAlm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, wwdblook, Buttons, Wwdbigrd, Grids, Wwdbgrid, ExtCtrls, Db,
  Wwdatsrc, DBTables, Wwquery, Mask, wwdbedit, Wwdotdot, Wwdbcomb, ActnList,
  RzTabs;

type
  TFBDinAlm = class(TForm)
    Panel1: TPanel;
    DBG_RAAT: TwwDBGrid;
    Q_LOC: TwwQuery;
    Panel4: TPanel;
    Label1: TLabel;
    cboLoc: TwwDBLookupCombo;
    Label2: TLabel;
    cboForn: TwwDBLookupCombo;
    Q_ALM: TwwQuery;
    DS_ALM: TDataSource;
    Label6: TLabel;
    Q_AUX: TwwQuery;
    Q_FORN: TwwQuery;
    Q_MAT: TwwQuery;
    cboMat: TwwDBLookupCombo;
    Q_LOCLocal_ID: TAutoIncField;
    Q_LOCDescricao: TStringField;
    Q_LOT: TwwQuery;
    DS_LOT: TDataSource;
    Q_OC: TwwQuery;
    DS_OC: TDataSource;
    Label3: TLabel;
    txtLote: TwwDBEdit;
    Q_REC: TwwQuery;
    DS_REC: TDataSource;
    rdSal: TRadioButton;
    rdSem: TRadioButton;
    rdTodos: TRadioButton;
    Q_MATMAT_ID: TAutoIncField;
    Q_MATMAT_DESC: TStringField;
    Q_ALMMAT_DESC: TStringField;
    Q_ALMUNI_ID: TIntegerField;
    Q_ALMDS_LOC: TStringField;
    Q_LOTQTDE: TFloatField;
    Q_LOTN_LOTE: TStringField;
    Q_LOTFOR_RAZA: TStringField;
    Q_LOTALMOX_ID: TAutoIncField;
    Q_LOTDOCTO: TStringField;
    Q_LOTDSTDOC: TStringField;
    Q_OCQTDE: TFloatField;
    Q_OCORD_ID: TIntegerField;
    Q_OCDT_ENTREGA: TDateTimeField;
    Q_OCFOR_RAZA: TStringField;
    Q_RECORD_ID: TIntegerField;
    Q_RECQTDE: TFloatField;
    Q_RECFORMATO: TStringField;
    Q_RECNFIS: TIntegerField;
    Q_RECFOR_RAZA: TStringField;
    Q_RECREC_ID: TIntegerField;
    Q_FORNFOR_CODI: TStringField;
    Q_FORNFOR_RAZA: TStringField;
    ckLoc: TCheckBox;
    ckMat: TCheckBox;
    ActionList1: TActionList;
    Q_UN: TwwQuery;
    Q_UNUNI_ID: TAutoIncField;
    Q_UNUNI_SIGLA: TStringField;
    Q_UNUNI_DESC: TStringField;
    Q_ALMDS_UNI: TStringField;
    Q_ALMMAT_ID: TAutoIncField;
    Q_UN_ORD: TwwQuery;
    AutoIncField1: TAutoIncField;
    StringField1: TStringField;
    StringField2: TStringField;
    Q_OCDSUNI: TStringField;
    Q_ALMLOCAL_ID: TAutoIncField;
    Q_ALMQTDE: TFloatField;
    Q_ALMQTDE_MOSTRA: TFloatField;
    Q_ALMMARCA_ID: TIntegerField;
    Q_MARCA: TwwQuery;
    Q_MARCAMARCA_ID: TAutoIncField;
    Q_MARCAMARCA_DESC: TStringField;
    Q_ALMDESCMAR: TStringField;
    Q_ALMQtdeOC: TFloatField;
    Q_MARCA_FIL: TwwQuery;
    AutoIncField2: TAutoIncField;
    StringField3: TStringField;
    wwDBLookupCombo1: TwwDBLookupCombo;
    Label7: TLabel;
    Q_LOTVALID: TDateTimeField;
    Q_LOTMARCA_ID: TIntegerField;
    Label8: TLabel;
    MaskEdit1: TMaskEdit;
    Q_LOTLOCAL_ID: TIntegerField;
    Q_LOTMAT_ID: TIntegerField;
    Q_LOTFOR_CODI: TStringField;
    Q_REQ: TwwQuery;
    DS_REQ: TDataSource;
    Q_REQReq_ID: TAutoIncField;
    Q_REQData: TDateTimeField;
    Q_REQUsuario: TStringField;
    Q_REQData_Sist: TDateTimeField;
    Q_REQQtde: TFloatField;
    Q_REQStatus: TStringField;
    Q_REQCC_DESC: TStringField;
    Q_OCUNI_COMP_ID: TIntegerField;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    TabSheet3: TRzTabSheet;
    TabSheet4: TRzTabSheet;
    wwDBGrid2: TwwDBGrid;
    Label12: TLabel;
    Label9: TLabel;
    wwDBGrid3: TwwDBGrid;
    wwDBGrid1: TwwDBGrid;
    Label5: TLabel;
    wwDBGrid4: TwwDBGrid;
    Label10: TLabel;
    Panel3: TPanel;
    btLimp: TSpeedButton;
    btPesq: TSpeedButton;
    BitBtn22: TBitBtn;
    BitBtn1: TBitBtn;
    Q_RECDT_ENTRADA: TDateTimeField;
    TabSheet5: TRzTabSheet;
    wwDBGrid5: TwwDBGrid;
    qrSolicitacao: TwwQuery;
    qrSolicitacaoSOL_ID: TAutoIncField;
    qrSolicitacaoDATA: TDateTimeField;
    qrSolicitacaoUSUARIO: TStringField;
    qrSolicitacaoMAT_DESC: TStringField;
    qrSolicitacaoQTDE_SOL: TFloatField;
    qrSolicitacaoSALDO: TFloatField;
    qrSolicitacaoSTATUS: TStringField;
    qrSolicitacaoCC_Desc: TStringField;
    qrSolicitacaoTIPO: TStringField;
    dsSolicitacao: TDataSource;
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btPesqClick(Sender: TObject);
    procedure btLimpClick(Sender: TObject);
    procedure cboGMatCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure cboLocCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure cboFornCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure txtLoteEnter(Sender: TObject);
    procedure txtLoteExit(Sender: TObject);
    procedure cboGMatEnter(Sender: TObject);
    procedure cboGMatExit(Sender: TObject);
    procedure cboLocExit(Sender: TObject);
    procedure cboLocEnter(Sender: TObject);
    procedure cboFornExit(Sender: TObject);
    procedure cboFornEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ckGMatClick(Sender: TObject);
    procedure ckMatClick(Sender: TObject);
    procedure ckFornClick(Sender: TObject);
    procedure txtLoteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBG_RAATDblClick(Sender: TObject);
    procedure mkDiniEnter(Sender: TObject);
    procedure mkDiniExit(Sender: TObject);
    procedure mkDiniKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure cboGMatKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cboGMatChange(Sender: TObject);
    procedure Q_ALMCalcFields(DataSet: TDataSet);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure wwDBGrid3DblClick(Sender: TObject);
    procedure wwDBGrid4DblClick(Sender: TObject);
    procedure SBT_REFRYClick(Sender: TObject);
    procedure DBG_RAATCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure btAnaClick(Sender: TObject);
    procedure btSintClick(Sender: TObject);
    procedure btAnaMonClick(Sender: TObject);
    procedure btSintMonClick(Sender: TObject);
    procedure rdSalClick(Sender: TObject);
    procedure rdSemClick(Sender: TObject);
    procedure BitBtn22Click(Sender: TObject);
    procedure rdTodosClick(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure MaskEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure wwDBGrid2DblClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure wwDBGrid5DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FBDinAlm: TFBDinAlm;
  SQLSEL:String;
  SQLNHA:String;
  SQLTODOS: STRING;
  ConsIntAlmox_ID: string;
  ConsIntN_Lote: string;
  ConsIntMarca: string;
  ConsIntValid: string;
  ConsIntLOCAL: STRING;
  ConsIntMAT: STRING;
  ConsIntFOR: STRING;


  ConsIntREQ: STRING;


  ConsIntNum_Ocom: string;
  Rec_ID: STRING;


  SQLGRP:String;

  SQLX: STRING;

  Mat_DinDet:String;
  Mat_DesDinDet:String;

  LOTE : string;
  GRUPO : string;
  MATERIAL : string;            //THIAGO 16/06
  FORNECEDOR : string;
  LOCAL : STRING;
  BOTAO1 :STRING;
  BOTAO2 : STRING;
  strfiltro: string;
  SOME: BOOLEAN;

  SQLREL: STRING;


implementation
uses UMenu ,  UReceb,
    Unt_Senha, UAjusAlm, UMateriais, UOrdCom, UKardex, 
  URequisicaoPesq, URequisicao, UfrmSolicitacaoMateriais;// Materiais, URecebPesq, URelBuscaDin, UKardex;
{$R *.DFM}

procedure TFBDinAlm.SpeedButton3Click(Sender: TObject);
begin
  close ;
end;

Procedure TFBDinAlm.FormCreate(Sender: TObject);
VAR IK : Integer;
begin
   for IK := 0 TO PRED(ComponentCount) do begin
       if Components[IK] is TwwDBGrid then begin
           (Components[IK] as TwwDBGrid).TitleColor := clBtnFace;
           (Components[IK] as TwwDBGrid).TitleFont.Color := clBlack;
       end;
   end;


        SQLSEL:=        ' SELECT	SUM(CASE WHEN ALM.QTDE IS NULL THEN 0.0 ELSE ALM.QTDE END) QTDE, ' +
                        '		MAT.MAT_ID, ' +
                        '		MAT.MAT_DESC, ' +
                        '		MAT.UNI_ID, ' +
                        '		LOC.LOCAL_ID, ' +
                        '		LOC.DESCRICAO DS_LOC, ' +
                        '               ALM.MARCA_ID ' + 
                        ' FROM		ALMOX		ALM, ' +
                        '		MATERIAIS	MAT, ' +
                        '		LOCAL		LOC  ' +
                        ' WHERE		ALM.MAT_ID = MAT.MAT_ID ' +
                        ' AND		ALM.LOCAL_ID	= LOC.LOCAL_ID ' +
                        ' AND		ALM.TIPO = ' + '''' + 'E' + '''' +
                        ' AND		ALM.QTDE_RETIRADA IS NULL ';

        SQLNHA := 	' SELECT	SUM(ALM.QTDE) QTDE , ' +
			' 		MAT.MAT_ID, ' +
			' 		MAT.MAT_DESC, ' +
			' 		MAT.UNI_ID, ' +
			' 		LOC.LOCAL_ID, ' +
                        '               LOC.DESCRICAO   DS_LOC, ' +
                        '               ALM.MARCA_ID ' +
			' FROM		ALMOX 		ALM, ' +
			' 		MATERIAIS	MAT, ' +
			' 		LOCAL		LOC ' +
			' WHERE		ALM.TIPO = ' + '''' + 'E' + '''' +
			' AND		ALM.MAT_ID = MAT.MAT_ID ' +
			' AND		ALM.LOCAL_ID = LOC.LOCAL_ID ' +
			' AND		ALM.QTDE = ALM.QTDE_RETIRADA ' +
			' AND		NOT EXISTS (SELECT		1 ' +
			' 			    FROM		ALMOX ALMHA ' +
			' 			    WHERE		ALMHA.TIPO = ' + '''' + 'E' + '''' +
			' 			    AND			ALMHA.QTDE_RETIRADA IS NULL ' +
			' 			    AND			ALMHA.MAT_ID = ALM.MAT_ID) ';


        SQLTODOS:=      ' SELECT	SUM(CASE WHEN ALM.QTDE IS NULL THEN 0 ELSE ALM.QTDE END) AS  QTDE, ' +
		        '               MAT.MAT_ID, ' +
                        '               MAT.MAT_DESC, ' +
                        '               MAT.UNI_ID,  ' +
                        '               LOC.LOCAL_ID,  ' +
                        '               CASE WHEN LOC.DESCRICAO IS NULL THEN ' + '''' + 'Vazio' + '''' + ' ELSE LOC.DESCRICAO END AS DS_LOC, ' +
                        '               ALM.MARCA_ID ' +
                        ' FROM		MATERIAIS	MAT   ' +
                        '               LEFT OUTER JOIN ALMOX ALM ON 	ALM.MAT_ID = MAT.MAT_ID   ' +
			'		AND 	ALM.TIPO = ' + '''' + 'E' + '''' +
			'		AND	ALM.QTDE_RETIRADA IS NULL  ' +
                        '               LEFT OUTER JOIN LOCAL LOC    ' +
			'		ON 	ALM.LOCAL_ID	= LOC.LOCAL_ID  ' +
                        ' WHERE		MAT.MAT_ID = MAT.MAT_ID ' ;




        SQLGRP :=
                        ' GROUP BY	MAT.MAT_ID, ' +
                        '		MAT.MAT_DESC, ' +
                        '		LOC.LOCAL_ID, ' +
                        '		LOC.DESCRICAO, ' +
                        '		MAT.UNI_ID, '  +
                        '               ALM.MARCA_ID '  ;





End;

procedure TFBDinAlm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        Q_LOT.CLOSE;
        Q_OC.CLOSE;
        Q_REC.CLOSE;
        Q_ALM.CLOSE;
        Q_FORN.CLOSE;
        Q_UN.CLOSE;
        Q_UN_ORD.CLOSE;
        Q_MARCA.CLOSE;
        Q_MARCA_FIL.close;
        Q_REQ.close;
    
  
        Q_LOC.CLOSE;
        Q_MAT.CLOSE;
        Q_AUX.CLOSE;
        action := cafree ;
end;

procedure TFBDinAlm.btPesqClick(Sender: TObject);
Var SQL:String;
    SQL_ORD:String;
    StrChave :String;
    dataV : string;
Begin
        StrChave := Q_ALMMat_ID.AsString;

        SQL_ORD:='';

        If rdSal.Checked then
                SQL:= SQLSEL
        Else IF rdSem.Checked THEN
                SQL := SQLNHA
        ELSE if rdTodos.Checked then
                SQL:= SQLTODOS
        ELSE
                SQL:= SQLX;


        if txtLote.Text <> '' then BEGIN
                SQL := SQL + ' AND ALM.N_LOTE LIKE ' + '''' + txtLote.Text + '%' + '''';
                LOTE:= txtLote.Text;
        End;



        If (cboMat.LookupValue <> '') and (cboMat.Text <> '') then Begin
                SQL := SQL + ' AND MAT.MAT_ID = ' + cboMat.LookupValue;
                material:= cboMat.LookupValue;
        End;

        If (cboForn.LookupValue <> '') and (cboForn.Text <> '') then  begin
                SQL := SQL + ' AND ALM.FOR_CODI = ' + '''' + cboForn.LookupValue + '''';
                fornecedor := cboForn.LookupValue;
        end;

        If (cboLoc.LookupValue <> '') and (cboLoc.Text <> '') then begin
                SQL := SQL + ' AND ALM.LOCAL_ID = ' + cboLoc.LookupValue;
                local:= cboLoc.LookupValue;
        End;

        if  (wwDBLookupCombo1.LookupValue <> '') and (wwDBLookupCombo1.Text <> '') then begin
                SQL:= SQL + ' AND  ALM.MARCA_ID = ' + wwDBLookupCombo1.LookupValue;
        End;


        if MaskEdit1.Text <> '  /  /    ' then begin
           dataV:= formatdatetime('MM/DD/YYYY',strtodate(MaskEdit1.text));
           
           SQL:= SQL + ' AND alm.VALID = Convert(SMALLDATETIME,' + '''' +  dataV + '''' + ')';
        END;   




        If not rdSal.Checked then
                SQL_ORD := ' ORDER BY MAT.MAT_DESC '
        Else If ckMat.Checked then
        Begin
                If SQL_ORD = '' then
                   SQL_ORD := ' ORDER BY MAT.MAT_DESC, LOC.DESCRICAO '
        End Else If ckLoc.Checked then
        Begin
                If SQL_ORD = '' then
                        SQL_ORD := ' ORDER BY LOC.DESCRICAO, MAT.MAT_DESC '
        End Else If SQL_ORD = '' THEN
                SQL_ORD := ' ORDER BY MAT.MAT_DESC, LOC.DESCRICAO ';


        SQLREL:= SQL + SQLGRP + SQL_ORD;

        Q_ALM.SQL.CLEAR;
        Q_ALM.SQL.ADD(SQL);
        Q_ALM.SQL.ADD(SQLGRP);
        Q_ALM.SQL.ADD(SQL_ORD);
        Q_ALM.CLOSE;
        Q_ALM.OPEN;

        If StrChave <> '' then
                Q_ALM.Locate('MAT_ID',StrChave,[]);


End;

procedure TFBDinAlm.btLimpClick(Sender: TObject);
begin
   
        cboMat.LookupValue := '';
        cboForn.LookupValue := '';
        cboLoc.LookupValue := '';
        txtLote.Text := '';
        LOTE := '';
        GRUPO := '';
        MATERIAL := '';            //THIAGO 16/06
        FORNECEDOR := '';
        LOCAL := '';
        MaskEdit1.Text:= '';
        wwDBLookupCombo1.Text:= '';

    

        btPesqClick(self);
end;

procedure TFBDinAlm.cboGMatCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
        btPesqClick(self);

 
end;

procedure TFBDinAlm.cboLocCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
        btPesqClick(self);
end;

procedure TFBDinAlm.cboFornCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
        btPesqClick(self);
end;

procedure TFBDinAlm.txtLoteEnter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := ClAqua;

end;

procedure TFBDinAlm.txtLoteExit(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := ClWindow;
end;

procedure TFBDinAlm.cboGMatEnter(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFBDinAlm.cboGMatExit(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := ClWindow;
end;

procedure TFBDinAlm.cboLocExit(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := ClWindow;
end;

procedure TFBDinAlm.cboLocEnter(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFBDinAlm.cboFornExit(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := ClWindow;
end;

procedure TFBDinAlm.cboFornEnter(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFBDinAlm.FormShow(Sender: TObject);
Begin
        txtLote.SetFocus;
        Q_LOT.OPEN;
        Q_OC.OPEN;
        Q_REC.OPEN;
        Q_ALM.OPEN;
        Q_FORN.OPEN;
        Q_UN.OPEN;
        Q_REQ.open;
        qrSolicitacao.OPEN;

        Q_MARCA.OPEN;
        Q_UN_ORD.OPEN;
        Q_LOC.OPEN;
        Q_MAT.OPEN;
        Q_MARCA_FIL.open;

     //   If Lote_Busca <> '' then
      //          txtLote.Text := Lote_Busca;

      btPesqClick(self);

End;

procedure TFBDinAlm.ckGMatClick(Sender: TObject);
begin
        btPesqClick(self);
end;

procedure TFBDinAlm.ckMatClick(Sender: TObject);
begin
     
        btPesqClick(self);
end;

procedure TFBDinAlm.ckFornClick(Sender: TObject);
begin
        btPesqClick(self);
end;

procedure TFBDinAlm.txtLoteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        If (key = 13) then
                btPesqClick(self);
end;

procedure TFBDinAlm.DBG_RAATDblClick(Sender: TObject);
begin

   Mat_DinDet :=  Q_ALMMat_ID.AsString;
   Mat_DesDinDet := Q_ALMMAT_DESC.AsString;

   If Mat_DinDet <> '' then
   Begin
    //       Application.CreateForm(TFBDinAlmDet, FBDinAlmDet);
   //        FBDinAlmDet.ShowModal;
   //        FBDinAlmDet.Release;
   End Else Begin
        MessageDlg('Não há Material para abrir detalhes!',mtWarning,[mbok],0);
   End;

end;

procedure TFBDinAlm.mkDiniEnter(Sender: TObject);
begin
  (Sender as TMaskEdit).Color := ClAqua;
end;

procedure TFBDinAlm.mkDiniExit(Sender: TObject);
begin
  (Sender as TMaskEdit).Color := ClWindow;
end;

procedure TFBDinAlm.mkDiniKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        If Key = 13 then
                btPesqClick(self);
end;

procedure TFBDinAlm.SpeedButton1Click(Sender: TObject);
begin

//    Application.CreateForm(TFRelBuscaDin,FRelBuscaDin);
//    FRelBuscaDin.QuickRep1.Preview;
//    FRelBuscaDin.Close;


end;

procedure TFBDinAlm.cboGMatKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        If (key = 13) then
                btPesqClick(self);

end;

procedure TFBDinAlm.cboGMatChange(Sender: TObject);
begin
  {      If (cboGMat.LookupValue = '') OR (cboGMat.Text = '') then
        Begin
                Q_MAT.SQL.CLEAR;
                Q_MAT.SQL.ADD('SELECT		MATERIAL_ID,');
                Q_MAT.SQL.ADD('                 DESCRICAO ');
                Q_MAT.SQL.ADD('FROM		MATERIAIS ');
                Q_MAT.SQL.ADD('ORDER BY		DESCRICAO ');
                Q_MAT.OPEN;

        End;
   }
end;

procedure TFBDinAlm.Q_ALMCalcFields(DataSet: TDataSet);
var     SQL: String;
Begin


        If rdSem.Checked then
                Q_ALMQtde_Mostra.AsInteger := 0
        Else
                Q_ALMQtde_Mostra.AsFloat := Q_ALMQtde.AsFloat;

        {
        SQL := 'SELECT          SUM(OI.QTDE_COMP - ' +
               '                CASE WHEN OI.QTDE_COMP_REC IS NULL THEN 0 ' +
               '                ELSE OI.QTDE_COMP_REC              END) QTDE ' +
               ' FROM           ORDEM_ITEM OI, ' +
               '                ORDEM_CAPA OC ' +
               ' WHERE          OI.NUM_OCOM = OC.NUM_OCOM ' +
               ' AND            OI.MATERIAL_ID = ' + Q_ALMMaterial_ID.AsString +
               ' AND            OC.STATUS <> ' + '''' + 'F' + '''' +
               ' AND		OI.STATUS  <> ' + '''' + 'T' + '''' +
               ' AND		OI.STATUS  <> ' + '''' + 'C' + '''' +
               ' AND		(OI.QTDE_COMP - QTDE_COMP_REC > 0.001  OR QTDE_COMP_REC IS  NULL ) ';

       }
        SQL := 'SELECT          SUM(OI.QTDE_ESTQ_COMP - ' +
               '                CASE WHEN OI.QTDE_REC IS NULL THEN 0 ' +
               '                ELSE OI.QTDE_REC              END) QTDE ' +
               ' FROM           ORDEM_COMPRAITEM OI, ' +
               '                ORDEM_COMPRA OC ' +
               ' WHERE          OI.ORD_ID = OC.ORD_ID ' +
               ' AND            OI.MAT_ID = ' + Q_ALMMat_ID.AsString +
               ' AND            OC.STATUS <> ' + '''' + 'F' + '''' +
               ' AND		OI.STATUS  <> ' + '''' + 'T' + '''' +
               ' AND		OI.STATUS  <> ' + '''' + 'C' + '''' +
               ' AND		(OI.QTDE_COMP - QTDE_COMP_REC > 0.001  OR QTDE_COMP_REC IS  NULL ) ';


        Q_AUX.SQL.CLEAR;
        Q_AUX.SQL.ADD(SQL);
        Q_AUX.OPEN;

        If Q_AUX.FieldByName('QTDE').AsString <> '' then
                Q_ALMQtdeOC.AsFloat := Q_AUX.FieldByName('QTDE').AsFloat
        Else
                Q_ALMQtdeOC.AsFloat := 0.0;
        {
        SQL :=
        ' SELECT	SUM(QTDE) QTDE ' +
        ' FROM		SOL_COMP ' +
        ' WHERE		MATERIAL_ID  = ' + Q_ALMMat_ID.AsString +
        ' AND		STATUS = ' + '''' + 'P' + '''';

        Q_AUX.SQL.CLEAR;
        Q_AUX.SQL.ADD(SQL);
        Q_AUX.OPEN;

        If Q_AUX.FieldByName('QTDE').AsString <> '' then
                Q_ALMQtdeSol.AsFloat := Q_AUX.FieldByName('QTDE').AsFloat
        Else
                Q_ALMQtdeSol.AsFloat := 0.0;


        //ABERTO, IMPRESSO (EMITIDO, ALOCADO E EM PRODUÇÃO*/
        //Cálculo de quantidade empenhada.
        SQL :=
        ' SELECT	SUM(QTDE) QTDE' +
        ' FROM		OS_MAT ' +
        ' WHERE		MATERIAL_ID = ' + Q_ALMMat_Id.AsString +
        ' AND		STATUS IN (' + '''' + 'A' + '''' +
                        ',' + '''' + 'I' + '''' +
                        ',' + '''' + 'L' + '''' +
                        ',' + '''' + 'P' + '''' + ')' +
        ' GROUP BY	MATERIAL_ID ';

        Q_AUX.SQL.CLEAR;
        Q_AUX.SQL.ADD(SQL);
        Q_AUX.OPEN;

        If Q_AUX.FieldByName('QTDE').AsString <> '' then
                Q_ALMQtde_Emp.AsFloat := Q_AUX.FieldByName('QTDE').AsFloat
        Else
                Q_ALMQtde_Emp.AsFloat := 0.0;

        //ABERTO, IMPRESSO (EMITIDO, ALOCADO E EM PRODUÇÃO*/
        //Cálculo de quantidade usada para OS ainda não finalizadas, ou seja
        // quanto do empenho já foi gasto.
        SQL :=
        ' SELECT	SUM(APMAT.QTDE) QTDE ' +
        ' FROM		APONT_MAT  APMAT,  ' +
        '		APONT_CAPA APCAP, ' +
        '		OS_SEMI	   OSMI ' +
        ' WHERE		APMAT.APONT_CAPA_ID = APCAP.APONT_CAPA_ID ' +
        ' AND		APCAP.OS_SEMI_ID = OSMI.OS_SEMI_ID ' +
        ' AND		APMAT.MATERIAL_ID = ' + Q_ALMMaT_ID.AsString +
        ' AND		OSMI.STATUS IN (' + '''' + 'A' + '''' +
                        ',' + '''' + 'I' + '''' +
                        ',' + '''' + 'L' + '''' +
                        ',' + '''' + 'P' + '''' + ')';

        Q_AUX.SQL.CLEAR;
        Q_AUX.SQL.ADD(SQL);
        Q_AUX.OPEN;

        If Q_AUX.FieldByName('QTDE').AsString <> '' then
                Q_ALMQtde_EmpUsa.AsFloat := Q_AUX.FieldByName('QTDE').AsFloat
        Else
                Q_ALMQtde_EmpUsa.AsFloat := 0.0;

        Q_AUX.CLOSE;

        Q_ALMQt_Calc.AsFloat := Q_ALMQtde.AsFloat - Q_ALMQtde_Emp.AsFloat;
    }
end;

procedure TFBDinAlm.wwDBGrid1DblClick(Sender: TObject);
begin
   ConsIntAlmox_ID := '';
   ConsIntN_Lote   := '';
   ConsIntMarca    := '';
   ConsIntValid    := '';
   ConsIntLOCAL    := '';
   ConsIntMAT      := '';
   ConsIntFOR      := '';



   ConsIntAlmox_ID := Q_LOTAlmox_ID.AsString;
   ConsIntN_Lote   := Q_LOTN_Lote.AsString;
   ConsIntMarca    := Q_LOTMARCA_ID.AsString;
   ConsIntValid    := formatdatetime('DD/MM/YYYY',strtodate(Q_LOTVALID.AsString));
   ConsIntLOCAL    := Q_LOTLOCAL_ID.AsString;
   ConsIntMAT      := Q_LOTMAT_ID.AsString;
   ConsIntFOR      := Q_LOTFOR_CODI.ASSTRING;

   If ConsIntAlmox_ID <> '' then
   Begin
           Application.CreateForm(TFAjustAlm, FAjustAlm);
           FAjustAlm.ShowModal;
           FAjustAlm.Release;
           ConsIntAlmox_ID := '';
           ConsIntN_Lote   := '';
           ConsIntMarca    := '';
           ConsIntValid    := '';
           ConsIntLOCAL    := '';
           ConsIntMAT      := '';
           ConsIntFOR      := '';
   End Else Begin
        MessageDlg('Não há Material para abrir Detalhes!',mtWarning,[mbok],0);
   End;

end;

procedure TFBDinAlm.wwDBGrid3DblClick(Sender: TObject);
begin
   ConsIntNum_Ocom := Q_OCord_id.AsString;

   If ConsIntNum_Ocom <> '' then
   Begin
           Application.CreateForm(tFOrdComp, FOrdComp);
           FOrdComp.ShowModal;
            FOrdComp.Release;
            ConsIntNum_Ocom:= '';

   End Else Begin
        MessageDlg('Não há O.C. para abrir Detalhes!',mtWarning,[mbok],0);
   End;

end;

procedure TFBDinAlm.wwDBGrid4DblClick(Sender: TObject);
begin
 //  CLIC:= FALSE;    //VARIALVEL DA TELA DE PESQUISA RECEBIMENTO

    Rec_ID := Q_RECRec_ID.AsString;

   If Rec_ID <> '' then
   Begin
           Application.CreateForm(TFReceb, FReceb);
           FReceb.ShowModal;
           FReceb.Release;
           Rec_ID:= '';
   End Else Begin
        MessageDlg('Não há Recebimento para abrir Detalhes!',mtWarning,[mbok],0);
   End;

end;

procedure TFBDinAlm.SBT_REFRYClick(Sender: TObject);
begin
        btPesq.Click;
end;

procedure TFBDinAlm.DBG_RAATCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
        If Field = Q_ALMUni_ID then
        Begin
                Afont.Color := clRed;
                Afont.Style := [fsBold]
        End Else Begin
                Afont.Color := clBlue;
                Afont.Style := [];
        End;

        If (Highlight) and (Field <> Q_ALMUni_ID) then
                AFont.Color := clWhite;
end;

procedure TFBDinAlm.btAnaClick(Sender: TObject);
begin
//    Application.CreateForm(TFRelAlmox,FRelAlmox);
//    FRelAlmox.QuickRep1.Preview;
//    FRelAlmox.Close;

end;

procedure TFBDinAlm.btSintClick(Sender: TObject);
begin
//    Application.CreateForm(TFRelAlmox,FRelAlmox);
//    FRelAlmox.QRSubDetail1.Height:= 0;
 //   FRelAlmox.QRLabel37.Caption:= 'Sintético';
 //   FRelAlmox.QuickRep1.Preview;
 //   FRelAlmox.Close;

end;

procedure TFBDinAlm.btAnaMonClick(Sender: TObject);
begin
   //   total := 0;
      StrFiltro := '' ;

      SOME:= FALSE;

  
  if  cboMat.text <> '' THEN
     StrFiltro := StrFiltro +  '    Material : ' + cboMat.Text;

  if (cboForn.text <> '') then
     StrFiltro := StrFiltro +  '    Fornecedor : ' + cboForn.Text;

  if (cboLoc.text <> '') then
     StrFiltro := StrFiltro +  '    Local : ' + cboLoc.Text;


 if (txtLote.text <> '') then
     StrFiltro := StrFiltro +  '    Lote : ' + txtLote.Text;


//    Application.CreateForm(TFRelAlmoxMoney,FRelAlmoxMoney);
//    FRelAlmoxMoney.QuickRep1.Preview;
//    FRelAlmoxMoney.Close;

end;

procedure TFBDinAlm.btSintMonClick(Sender: TObject);
begin
 //  total:= 0;
   StrFiltro := '' ;

   SOME:= TRUE;

  
  if (cboMat.text <> '' ) then
     StrFiltro := StrFiltro +  '    Material : ' + cboMat.Text;

  if (cboForn.text <> '') then
     StrFiltro := StrFiltro +  '    Fornecedor : ' + cboForn.Text;

  if (cboLoc.text <> '') then
     StrFiltro := StrFiltro +  '    Local : ' + cboLoc.Text;


 if (txtLote.text <> '') then
     StrFiltro := StrFiltro +  '    Lote : ' + txtLote.Text;



//    Application.CreateForm(TFRelAlmoxMoney,FRelAlmoxMoney);
//    FRelAlmoxMoney.QRSubDetail1.Height:= 0;
//    FRelAlmoxMoney.QRLabel37.Caption:= 'Sintético';
//    FRelAlmoxMoney.QuickRep1.Preview;
//    FRelAlmoxMoney.Close;

end;

procedure TFBDinAlm.rdSalClick(Sender: TObject);
begin
        btPesq.Click;
end;

procedure TFBDinAlm.rdSemClick(Sender: TObject);
begin
        btPesq.Click;
end;

procedure TFBDinAlm.BitBtn22Click(Sender: TObject);
begin
  IF Q_ALMMAT_ID.AsString = '' THEN Abort;
        Application.CreateForm(TFMateriais, FMateriais);
        FMateriais.Q_MAT.CLOSE;
        FMateriais.Q_MAT.SQL.Clear;
        FMateriais.Q_MAT.SQL.ADD('SELECT * FROM MATERIAIS WHERE MAT_ID = ' + Q_ALMMAT_ID.AsString);
        FMateriais.Q_MAT.Open;
        //FMateriais.Q_MAT.Append;
        FMateriais.ShowModal;
        FMateriais.Release;
end;

procedure TFBDinAlm.rdTodosClick(Sender: TObject);
begin
        btPesq.Click;
end;

procedure TFBDinAlm.CheckBox1Click(Sender: TObject);
begin
  btPesqClick(self);
end;

procedure TFBDinAlm.MaskEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If (key = 13) then
                btPesqClick(self);
end;

procedure TFBDinAlm.wwDBGrid2DblClick(Sender: TObject);
begin
        ConsIntREQ:= Q_REQReq_ID.asstring;


        If ConsIntREQ <> '' then
        Begin
           Application.CreateForm(tFRequisicao, FRequisicao);
           //FRequisicao.cboLocal.LookupTable := FRequisicao.qrLocal;
           FRequisicao.ShowModal;
           FRequisicao.Release;
           ConsIntREQ:= '';
        End Else Begin
           MessageDlg('Não há Requisição para abrir Detalhes!',mtWarning,[mbok],0);
        End;


        
end;

procedure TFBDinAlm.BitBtn1Click(Sender: TObject);
begin
  Application.CreateForm(TFKardex, FKardex);
  if  Q_ALMMAT_ID.AsString <> '' then begin
      FKardex.cboProd.LookupValue := IntToStr(Q_ALMMAT_ID.AsInteger);
      FKardex.cboProd.Text := Q_ALMMAT_DESC.AsString;
  end;
   FKardex.ShowModal;
   FKardex.Release;
end;

procedure TFBDinAlm.wwDBGrid5DblClick(Sender: TObject);
begin
  if qrSolicitacaoSOL_ID.AsString <> '' then begin
   frmSolicitacaoMateriais := TfrmSolicitacaoMateriais.Create(Self);
   frmSolicitacaoMateriais.edtSol.Text := qrSolicitacaoSOL_ID.AsString;
   frmSolicitacaoMateriais.btnBuscar.Click;
   frmSolicitacaoMateriais.btnVisualizar.Click;
   frmSolicitacaoMateriais.ShowModal;
  end;
end;

end.



