unit URecebPesq;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Wwdatsrc, DBTables, Wwquery, Wwdotdot, Wwdbcomb, wwdblook, StdCtrls,
  Buttons, Mask, wwdbedit, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls, ADODB;

type
  TFRecebPesq = class(TForm)
    Panel2: TPanel;
    SpeedButton3: TSpeedButton;
    Label4: TLabel;
    btImpr: TSpeedButton;
    btImpPed: TSpeedButton;
    Panel1: TPanel;
    DBG_RAAT: TwwDBGrid;
    Panel3: TPanel;
    btIncluir: TSpeedButton;
    btOc: TSpeedButton;
    BtSol: TSpeedButton;
    Q_FORN: TwwQuery;
    Q_MAT: TwwQuery;
    cboSt: TwwDBComboBox;
    Q_REC: TwwQuery;
    DS_REC: TwwDataSource;
    btPesq: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Q_MATMAT_ID: TAutoIncField;
    Q_MATMAT_DESC: TStringField;
    Q_FORNFOR_CODI: TStringField;
    Q_RECFOR_CODI: TStringField;
    Q_RECMAT_DESC: TStringField;
    Q_RECRec_ID: TAutoIncField;
    Q_RECNFIS: TIntegerField;
    Q_RECSerie: TStringField;
    Q_RECDt_Entrada: TDateTimeField;
    Q_RECCFO: TStringField;
    Q_RECCfa_Sequ: TIntegerField;
    Q_RECDt_Emiss: TDateTimeField;
    Q_RECCond_Pgto_ID: TIntegerField;
    Q_RECLocal_ID: TIntegerField;
    Q_RECICMS: TFloatField;
    Q_RECIPI: TFloatField;
    Q_RECCodICMS: TStringField;
    Q_RECCodIPI: TStringField;
    Q_RECVl_ICMS: TFloatField;
    Q_RECVl_IPI: TFloatField;
    Q_RECBase_ICMS: TFloatField;
    Q_RECBase_IPI: TFloatField;
    Q_RECFrete: TStringField;
    Q_RECVl_Frete: TFloatField;
    Q_RECVl_Seguro: TFloatField;
    Q_RECVl_OutrasDesp: TFloatField;
    Q_RECVl_TotMer: TFloatField;
    Q_RECVl_TotNF: TFloatField;
    Q_RECStatus: TStringField;
    Q_RECFOR_CODI_1: TStringField;
    Q_RECRec_Item_ID: TAutoIncField;
    Q_RECRec_ID_1: TIntegerField;
    Q_RECMat_ID: TIntegerField;
    Q_RECQtde: TFloatField;
    Q_RECQtde_OC: TFloatField;
    Q_RECPreco_Unit: TFloatField;
    Q_RECICMS_1: TFloatField;
    Q_RECIPI_1: TFloatField;
    Q_RECVl_ICMS_1: TFloatField;
    Q_RECVl_IPI_1: TFloatField;
    Q_RECVl_Total: TFloatField;
    Q_RECAlterar: TStringField;
    Q_RECMarca_ID: TIntegerField;
    Q_RECStatus_1: TStringField;
    Q_RECIORD_ID: TIntegerField;
    Q_RECORD_ID: TIntegerField;
    Q_RECMATMARCA_ID: TIntegerField;
    Panel6: TPanel;
    Label5: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    wwDBEdit1: TwwDBEdit;
    wwDBLookupCombo1: TwwDBLookupCombo;
    wwDBLookupCombo2: TwwDBLookupCombo;
    cboStatus: TwwDBComboBox;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    MaskEdit3: TMaskEdit;
    MaskEdit4: TMaskEdit;
    Q_MARCA: TwwQuery;
    DS_MAT: TwwDataSource;
    Q_MARCAMARCA_ID: TAutoIncField;
    Q_MARCAMARCA_DESC: TStringField;
    Label7: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Q_RECST_ITEM: TStringField;
    SpeedButton2: TSpeedButton;
    ADOQuery1: TADOQuery;
    ADOQuery1FIL_DESC: TStringField;
    ADOQuery1FIL_CODI: TStringField;
    cboEmpresa: TwwDBLookupCombo;
    Label3: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtSolClick(Sender: TObject);
    procedure btOcClick(Sender: TObject);
    procedure BitBtn20Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btPesqClick(Sender: TObject);
    procedure wwDBLookupCombo1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure wwDBLookupCombo1CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure wwDBLookupCombo2CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure wwDBLookupCombo2KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cboStatusKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cboStatusCloseUp(Sender: TwwDBComboBox; Select: Boolean);
    procedure btIncluirClick(Sender: TObject);
    procedure DBG_RAATDblClick(Sender: TObject);
    procedure wwDBEdit1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure wwDBEdit1Enter(Sender: TObject);
    procedure wwDBEdit1Exit(Sender: TObject);
    procedure wwDBLookupCombo1Enter(Sender: TObject);
    procedure wwDBLookupCombo1Exit(Sender: TObject);
    procedure wwDBLookupCombo2Exit(Sender: TObject);
    procedure wwDBLookupCombo2Enter(Sender: TObject);
    procedure MaskEdit3Enter(Sender: TObject);
    procedure MaskEdit4Enter(Sender: TObject);
    procedure MaskEdit1Enter(Sender: TObject);
    procedure MaskEdit2Enter(Sender: TObject);
    procedure MaskEdit3Exit(Sender: TObject);
    procedure MaskEdit4Exit(Sender: TObject);
    procedure MaskEdit1Exit(Sender: TObject);
    procedure MaskEdit2Exit(Sender: TObject);
    procedure cboStatusEnter(Sender: TObject);
    procedure cboStatusExit(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBG_RAATCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure SpeedButton2Click(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRecebPesq: TFRecebPesq;

  DATaI  : string;
  DATaF  : string;
  DATAE :STRING;
  DATAEF: STRING ;
  CLIC : BOOLEAN;
  SQL_MERC : STRING;
  ConsIntRec_ID:String;

  

implementation

uses UReceb, UMateriais, URelRecMerc, uDvSel, UMenu;

{$R *.DFM}

procedure TFRecebPesq.FormCreate(Sender: TObject);
VAR IK : Integer;
begin
   for IK := 0 TO PRED(ComponentCount) do begin
       if Components[IK] is TwwDBGrid then begin
           (Components[IK] as TwwDBGrid).TitleColor := clBtnFace;
           (Components[IK] as TwwDBGrid).TitleFont.Color := clBlack;
       end;
   end;
        ADOQuery1.Open;
        Q_MAT.open;
        Q_MARCA.OPEN;
        Q_FORN.open;
       // Q_REC.open;
end;

procedure TFRecebPesq.FormClose(Sender: TObject; var Action: TCloseAction);
begin
         Q_MAT.close;
         Q_MARCA.CLOSE;
         Q_FORN.close;
         Q_REC.close;
         ADOQuery1.Open;
         Action := caFree;
end;

procedure TFRecebPesq.BtSolClick(Sender: TObject);
begin
        if Q_RECMat_ID.AsString = '' then
                Abort;

        Application.CreateForm(TFMateriais, FMateriais);
        FMateriais.Q_MAT.CLOSE;
        FMateriais.Q_MAT.SQL.Clear;
        FMateriais.Q_MAT.SQL.ADD('SELECT * FROM MATERIAIS WHERE MAT_ID = ' + Q_RECMat_ID.AsString);
        FMateriais.Q_MAT.Open;
        //FMateriais.Q_MAT.Append;
        FMateriais.ShowModal;
        FMateriais.Release;
end;

procedure TFRecebPesq.btOcClick(Sender: TObject);
begin
        Application.CreateForm(TFDvSel, FDvSel);
        FDvSel.ShowModal;
        FDvSel.Release;
end;

procedure TFRecebPesq.BitBtn20Click(Sender: TObject);
begin
{        Application.CreateForm (TFBDinAlm, FBDinAlm);
        FBDinAlm.ShowModal;
        FBDinAlm.Release;
}
end;

procedure TFRecebPesq.SpeedButton1Click(Sender: TObject);
begin
        close;
end;

procedure TFRecebPesq.btPesqClick(Sender: TObject);
Var Sql: string;
begin
     SQL_MERC:='';

     SQL:= ' SELECT 	 FORN.FOR_CODI, ' +
           '             CASE WHEN ITEM.GENERICO = ''S'' THEN ITEM.MAT_DESC ELSE MAT.MAT_DESC END AS MAT_DESC , ' +
           '             REC.*,         ' +
           '             ITEM.*,       ' +
           '             ITEM.STATUS ST_ITEM ' +
           ' FROM 	 REC_NF REC LEFT  OUTER JOIN REC_ITEM ITEM ON REC.REC_ID = ITEM.REC_ID' +
           '             LEFT OUTER JOIN CPAFORN FORN ON REC.FOR_CODI = FORN.FOR_CODI  ' +
           '             LEFT OUTER JOIN MATERIAIS MAT ON MAT.MAT_ID = ITEM.MAT_ID  ' ;


     SQL := SQL + ' WHERE 1 = 1 ';
     
     If wwDBEdit1.text <> '' then
        sql:= sql + ' AND   REC.NFIS = ' + wwDBEdit1.Text;

     IF wwDBLookupCombo1.Text <> '' THEN
        SQL:= SQL + ' AND   REC.FOR_CODI  = ' + '''' + wwDBLookupCombo1.LookupValue + '''';

      IF wwDBLookupCombo2.Text <> '' THEN
         SQL:= SQL + ' AND   ITEM.MAT_ID  = ' + wwDBLookupCombo2.LookupValue;

      if cboEmpresa.Text <> '' then
         Sql := Sql + ' AND FIL_CODI = ' + QuotedStr(cboEmpresa.LookupValue);

      If cboStatus.Text <> '' then
         SQL := SQL + ' AND   ITEM.STATUS  =  ' + '''' + cboStatus.Value + '''';

      If (MaskEdit3.TEXT <> '  /  /    ') and (MaskEdit4.TEXT <> '  /  /    ')then begin

          DATAI:= formatdatetime('YYYYMMDD',strtodate(MaskEdit3.text )) ;
          DATAF:= formatdatetime('YYYYMMDD',strtodate(MaskEdit4.text )) ;

          SQL:= SQL + ' AND    REC.DT_ENTRADA  between 	  Convert(SMALLDATETIME,' + '''' +  DataI + '''' + ') AND Convert(SMALLDATETIME,' +  '''' + DataF + '''' + ')';

        END;

        If (MaskEdit1.TEXT <> '  /  /    ') and (MaskEdit2.TEXT <> '  /  /    ')then begin

          DATAE:= formatdatetime('YYYYMMDD',strtodate(MaskEdit1.text )) ;
          DATAEF:= formatdatetime('YYYYMMDD',strtodate(MaskEdit2.text )) ;

          SQL:= SQL + ' AND    REC.DT_EMISS  between Convert(SMALLDATETIME,' + '''' +  DataE + '''' + ') AND Convert(SMALLDATETIME,' +  '''' + DataEF + '''' + ')';
       END;

        SQL:= SQL + ' ORDER BY  REC.NFIS, REC.DT_ENTRADA DESC ' ;

        SQL_MERC:= SQL;

        Q_REC.CLOSE;
        Q_REC.SQL.CLEAR;
        Q_REC.SQL.ADD(SQL);
        Q_REC.open;

end;

procedure TFRecebPesq.wwDBLookupCombo1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      //  If key = 13 then
       //    btPesq.Click
end;

procedure TFRecebPesq.wwDBLookupCombo1CloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
       // btPesqClick(self);
end;

procedure TFRecebPesq.wwDBLookupCombo2CloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
//        btPesqClick(self);
end;

procedure TFRecebPesq.wwDBLookupCombo2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      //  If key = 13 then
      //     btPesq.Click
end;

procedure TFRecebPesq.cboStatusKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
       // If key = 13 then
       //    btPesq.Click
end;

procedure TFRecebPesq.cboStatusCloseUp(Sender: TwwDBComboBox;
  Select: Boolean);
begin
       // btPesqClick(self);
end;

procedure TFRecebPesq.btIncluirClick(Sender: TObject);
begin

         CLIC:= TRUE;

         Application.CreateForm(TFReceb, FReceb);
         FReceb.ShowModal;
         FReceb.Release;

end;

procedure TFRecebPesq.DBG_RAATDblClick(Sender: TObject);
begin
        CLIC:= FALSE;

        ConsIntRec_ID := Q_RECRec_ID.AsString;

         Application.CreateForm(TFReceb, FReceb);
         FReceb.ShowModal;
         FReceb.Release;
end;

procedure TFRecebPesq.wwDBEdit1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
       // If key = 13 then
       //    btPesq.Click
end;

procedure TFRecebPesq.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
     begin
       Key := #0;
       Perform(WM_Nextdlgctl,0,0);
    end else begin
       if (Key = #27 ) then close ;
    end ;
end;

procedure TFRecebPesq.wwDBEdit1Enter(Sender: TObject);
begin
        (sender as TwwDBEdit).Color := clAqua;
end;

procedure TFRecebPesq.wwDBEdit1Exit(Sender: TObject);
begin
        (sender as TwwDBEdit).Color := clWindow;
end;

procedure TFRecebPesq.wwDBLookupCombo1Enter(Sender: TObject);
begin
        (sender as TwwDBLookupCombo).Color := clAqua;
end;

procedure TFRecebPesq.wwDBLookupCombo1Exit(Sender: TObject);
begin
        (sender as TwwDBLookupCombo).Color := clWindow;
end;

procedure TFRecebPesq.wwDBLookupCombo2Exit(Sender: TObject);
begin
        (sender as TwwDBLookupCombo).Color := clWindow;
end;

procedure TFRecebPesq.wwDBLookupCombo2Enter(Sender: TObject);
begin
        (sender as TwwDBLookupCombo).Color := clAqua;
end;

procedure TFRecebPesq.MaskEdit3Enter(Sender: TObject);
begin
        (sender as TMaskEdit).color := clAqua;
end;

procedure TFRecebPesq.MaskEdit4Enter(Sender: TObject);
begin
        (sender as TMaskEdit).color := clAqua;
end;

procedure TFRecebPesq.MaskEdit1Enter(Sender: TObject);
begin
        (sender as TMaskEdit).color := clAqua;
end;

procedure TFRecebPesq.MaskEdit2Enter(Sender: TObject);
begin
        (sender as TMaskEdit).color := clAqua;
end;

procedure TFRecebPesq.MaskEdit3Exit(Sender: TObject);
begin
        (sender as TMaskEdit).color := clWindow;
end;

procedure TFRecebPesq.MaskEdit4Exit(Sender: TObject);
begin
        (sender as TMaskEdit).color := clWindow;
        btPesqClick(self);

end;

procedure TFRecebPesq.MaskEdit1Exit(Sender: TObject);
begin
        (sender as TMaskEdit).color := clWindow;
end;

procedure TFRecebPesq.MaskEdit2Exit(Sender: TObject);
begin
        (sender as TMaskEdit).color := clWindow;
        btPesqClick(self);
end;

procedure TFRecebPesq.cboStatusEnter(Sender: TObject);
begin
        (Sender as TwwDBCombobox).color := clAqua;
end;

procedure TFRecebPesq.cboStatusExit(Sender: TObject);
begin
        (Sender as TwwDBCombobox).color := clWindow;
end;

procedure TFRecebPesq.FormPaint(Sender: TObject);
begin
//         wwDBEdit1.SetFocus;
end;

procedure TFRecebPesq.SpeedButton4Click(Sender: TObject);
begin                             
    wwDBEdit1.Text:= '';
    wwDBLookupCombo1.Text:= '';
    wwDBLookupCombo2.Text:= '';
    cboStatus.Text:= '';
    MaskEdit3.Text:= '';
    MaskEdit4.Text:= '';
    MaskEdit1.Text:= '';
    MaskEdit2.Text:= '';
    //btPesqClick(self);

end;



procedure TFRecebPesq.FormShow(Sender: TObject);
begin
        wwDBEdit1.SetFocus
end;

procedure TFRecebPesq.DBG_RAATCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
        If Q_RECSt_Item.AsString = 'A' then
        Begin
                AFont.Color := ClBlue;
        End Else If Q_RECSt_Item.AsString = 'P' then
        Begin
                AFont.Color := ClRed;
        End Else If Q_RECSt_Item.AsString = 'T' then
                AFont.Color := ClGreen;


        If HighLight then
                AFont.Color := clWhite;
end;

procedure TFRecebPesq.SpeedButton2Click(Sender: TObject);
begin
    Application.CreateForm(TFRelRecMerc,FRelRecMerc);
    FRelRecMerc.QuickRep1.Preview;
    FRelRecMerc.Close;
end;

end.
