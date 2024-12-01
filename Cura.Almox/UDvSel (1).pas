unit UDvSel;

interface

uses

  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, Wwdbedit, Buttons, DB, DBTables, Wwdatsrc, Wwquery,
  DBCtrls, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, wwSpeedButton,
  wwDBNavigator, wwdblook,Tabnotbk, ComCtrls, Wwdotdot, Wwdbcomb, wwstorep,
  wwDialog, wwidlg ;


type
  TFDvSel = class(TForm)
    Q_FORN: TwwQuery;
    Q_MAT: TwwQuery;
    Q_AUX: TwwQuery;
    Q_DVC: TwwQuery;
    DS_DVC: TwwDataSource;
    Q_MOT: TwwQuery;
    Panel1: TPanel;
    wwDBGrid1: TwwDBGrid;
    txtDev: TwwDBEdit;
    Label2: TLabel;
    Label1: TLabel;
    txtNF: TwwDBEdit;
    cboForn: TwwDBLookupCombo;
    Label3: TLabel;
    cboMat: TwwDBLookupCombo;
    Label4: TLabel;
    Label5: TLabel;
    cboMot: TwwDBLookupCombo;
    btPesq: TSpeedButton;
    btLimpa: TSpeedButton;
    Label6: TLabel;
    Q_DVCDEV_ID: TAutoIncField;
    Q_DVCREC_ID: TIntegerField;
    Q_DVCNFIS: TIntegerField;
    Q_DVCFOR_CODI: TStringField;
    Q_DVCDSMOT: TStringField;
    Q_DVCDSMAT: TStringField;
    Q_FORNFOR_CODI: TStringField;
    Q_FORNFOR_RAZA: TStringField;
    Q_MOTMOT_ID: TAutoIncField;
    Q_MOTMOT_DESC: TStringField;
    Q_MOTTP_MOT: TStringField;
    Q_MATMAT_ID: TAutoIncField;
    Q_MATMAT_DESC: TStringField;
    Q_DVCVALID: TDateTimeField;
    Q_DVCMARCA_DESC: TStringField;
    Q_DVCUNI_DESC: TStringField;
    Q_DVCQTDE: TFloatField;
    Q_DVCDS_LOC: TStringField;
    btInc: TSpeedButton;
    BitBtn20: TBitBtn;
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
    procedure cboLocEnter(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
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
    procedure cboMotExit(Sender: TObject);
    procedure Busca;
    procedure btPesqClick(Sender: TObject);
    procedure cboFornCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure cboMotCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure cboMatCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure txtDevKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txtNFKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txtNFExit(Sender: TObject);
    procedure txtDevExit(Sender: TObject);
    procedure txtDevEnter(Sender: TObject);
    procedure btIncClick(Sender: TObject);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure btLimpaClick(Sender: TObject);
    procedure BitBtn20Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDvSel : TFDvSel;
  Interno: Integer;

  SQL_X         :String;
  SQL_ORD_X     :String;
  DEV_IDX       :String;


Implementation

Uses U_Funcoes,Unt_Senha, UBDinAlm, UDevas;


{$R *.DFM}

procedure TFDvSel.FormShow(Sender: TObject);
begin

        Q_FORN.OPEN;
        Q_DVC.OPEN;
        Q_MAT.OPEN;
        Q_MOT.OPEN;

        TxtDev.SetFocus;

        SQL_X :=' SELECT	DC.DEV_ID,' +
		'		DC.REC_ID,' +
		'		DC.NFIS,' +
		'		DC.FOR_CODI,' +
		'		MOT.MOT_DESC DSMOT,' +
		'		MAT.MAT_DESC DSMAT,' +
                '               M.MARCA_DESC, ' +
                '               UNI.UNI_DESC, ' +
                '               DI.VALID, ' +
                '               DI.QTDE, ' +
                '               L.DESCRICAO DS_LOC ' +
		' FROM		DEV_CAPA DC ' +
		'		FULL OUTER JOIN	DEV_ITEM DI ON  DC.DEV_ID = DI.DEV_ID ' +
		'		LEFT OUTER JOIN MOTIVOS MOT ON' +
		'				DI.MOT_ID = MOT.MOT_ID ' +
		'		LEFT OUTER JOIN MATERIAIS MAT ON' +
		'				DI.MAT_ID = MAT.MAT_ID ' +
		'		LEFT OUTER JOIN UNIDADES UNI ON' +
		'				MAT.UNI_ID = UNI.UNI_ID ' +
		'		LEFT OUTER JOIN MARCAS M ON' +
		'				DI.MARCA_ID = M.MARCA_ID ' +
		'		LEFT OUTER JOIN LOCAL L ON' +
		'				DI.LOCAL_ID = L.LOCAL_ID ' +
		' WHERE		1 = 1 ';


        SQL_ORD_X := 'ORDER BY	DC.NFIS, ' +
                     ' 		MAT.MAT_DESC,' +
                     '  	DC.FOR_CODI ';

        btPesq.Click;
        

end;


procedure TFDvSel.Busca;
var SQLFilt:String;
Begin

        SQLFilt := '';

        If txtDev.Text <> '' then
                SQLFilt := SQLFilt + ' AND         DC.DEV_ID = ' + txtDev.Text;
        If txtNF.Text <> '' then
                SQLFilt := SQLFilt + ' AND         DC.NFIS = ' + txtNF.Text;
        If (cboForn.Text <> '') and (cboForn.LookupValue <> '') then
                SQLFilt := SQLFilt + ' AND         DC.FOR_CODI = ' + '''' +  cboForn.LookupValue + '''';
        If (cboMot.Text <> '') and (cboMot.LookupValue <> '') then
                SQLFilt := SQLFilt + ' AND         DI.MOT_ID = ' + cboMot.LookupValue;
        If (cboMat.Text <> '') and (cboMat.LookupValue <> '') then
                SQLFilt := SQLFilt + ' AND         DI.MAT_ID = ' + cboMat.LookupValue;

        Q_DVC.SQL.CLEAR;
        Q_DVC.SQL.ADD(SQL_X);
        Q_DVC.SQL.ADD(SQLFilt);
        Q_DVC.SQL.ADD(SQL_ORD_X);
        Q_DVC.OPEN;

End;

procedure TFDvSel.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        Q_FORN.CLOSE;
        Q_DVC.CLOSE;
        Q_MAT.CLOSE;
        Q_MOT.CLOSE;

        Action := caFree;
end;

procedure TFDvSel.SBT_SAIRYClick(Sender: TObject);
begin
        Close;
end;

procedure TFDvSel.txtNFEnter(Sender: TObject);
begin
        (sender as TwwDBEdit).Color := clAqua;
end;

procedure TFDvSel.wwDBEdit2Enter(Sender: TObject);
begin
        (sender as TwwDBEdit).Color := clAqua;
end;

procedure TFDvSel.wwDBEdit2Exit(Sender: TObject);
begin
        (sender as TwwDBEdit).Color := clWindow;
end;

procedure TFDvSel.cboFornEnter(Sender: TObject);
begin
        (sender as TwwDBLookupCombo).Color := clAqua;
end;

procedure TFDvSel.cboFornExit(Sender: TObject);
begin
        (sender as TwwDBLookupCombo).Color := clWindow;
end;

procedure TFDvSel.CboPessoaEnter(Sender: TObject);
begin
        (sender as TwwDBComboBox).Color := clAqua;
end;

procedure TFDvSel.CboPessoaExit(Sender: TObject);
begin
        (sender as TwwDBComboBox).Color := clWindow;
end;

procedure TFDvSel.DBCB_CFA_TICMEnter(Sender: TObject);
begin
        (Sender as TwwDBCombobox).color := clAqua;
end;

procedure TFDvSel.DBCB_CFA_TICMExit(Sender: TObject);
begin
        (Sender as TwwDBCombobox).color := clWindow;
end;

procedure TFDvSel.cboLocEnter(Sender: TObject);
begin
        (Sender as TwwDBLookupCombo).Color := clAqua;
end;

procedure TFDvSel.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
     begin
       Key := #0;
       Perform(WM_Nextdlgctl,0,0);
       Busca;
    end else begin
       if (Key = #27 ) then close ;
    end ;
end;

procedure TFDvSel.cboFormEnter(Sender: TObject);
begin
        (Sender as TwwDbLookupCombo).color := clAqua;
end;

procedure TFDvSel.cboFormExit(Sender: TObject);
begin
        (Sender as TwwDbLookupCombo).color := clWindow;
end;

procedure TFDvSel.cboMatExit(Sender: TObject);
begin
        (Sender as TwwDbLookupCombo).color := clWindow;
end;

procedure TFDvSel.cboMatEnter(Sender: TObject);
begin
        (Sender as TwwDbLookupCombo).color := clAqua;
end;

procedure TFDvSel.txtPEnter(Sender: TObject);
begin
        (Sender as TwwDbEdit).color := clAqua;
end;

procedure TFDvSel.txtPExit(Sender: TObject);
begin
        (Sender as TwwDbEdit).color := clWindow;
end;

procedure TFDvSel.txtQEnter(Sender: TObject);
begin
        (Sender as TwwDbEdit).color := clAqua;
end;

procedure TFDvSel.txtQExit(Sender: TObject);
begin
        (Sender as TwwDbEdit).color := clWindow;
end;

procedure TFDvSel.txtICMEnter(Sender: TObject);
begin
        (Sender as TwwDbEdit).color := clAqua;
end;

procedure TFDvSel.txtICMExit(Sender: TObject);
begin
        (Sender as TwwDbEdit).color := clWindow;
end;

procedure TFDvSel.cboMotExit(Sender: TObject);
begin
        (sender as TwwDBLookupCombo).Color := clWindow;

end;

procedure TFDvSel.btPesqClick(Sender: TObject);
begin
        Busca;
end;

procedure TFDvSel.cboFornCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
        Busca;
end;

procedure TFDvSel.cboMotCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
        Busca;
end;

procedure TFDvSel.cboMatCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
        Busca;
end;

procedure TFDvSel.txtDevKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        If key = 13 then
                Busca;
end;

procedure TFDvSel.txtNFKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        If key = 13 then
                Busca;
end;

procedure TFDvSel.txtNFExit(Sender: TObject);
begin
        (sender as TwwDBEdit).Color := clWindow;
end;

procedure TFDvSel.txtDevExit(Sender: TObject);
begin
        (sender as TwwDBEdit).Color := clWindow;
end;

procedure TFDvSel.txtDevEnter(Sender: TObject);
begin
        (sender as TwwDBEdit).Color := clAqua;
end;

procedure TFDvSel.btIncClick(Sender: TObject);
begin

        Dev_Idx := '0';
        Application.CreateForm(TFDevas, FDevas);
        FDevas.ShowModal;
        FDevas.Release;

        btPesq.Click;

end;

procedure TFDvSel.wwDBGrid1DblClick(Sender: TObject);
begin

        If Q_DVCRec_ID.AsString <> '' then
        Begin
                DEV_IDX := Q_DVCDEV_ID.AsString;

                Application.CreateForm(TFDevas, FDevas);
                FDevas.ShowModal;
                FDevas.Release;

                Q_DVC.CLOSE;
                Q_DVC.OPEN;

                If Dev_IDX <> '' then
                        Q_DVC.Locate('DEV_ID',DEV_IDX,[]);

        End;
end;

procedure TFDvSel.btLimpaClick(Sender: TObject);
begin
        txtDev.Text := '';
        cboForn.Text := '';
        cboMot.Text := '';
        txtNF.Text := '';
        cboMat.Text := '';
        Busca;
end;

procedure TFDvSel.BitBtn20Click(Sender: TObject);
begin
   Application.CreateForm (TFBDinAlm, FBDinAlm);
   FBDinAlm.ShowModal;
   FBDinAlm.Release;
end;

end.
