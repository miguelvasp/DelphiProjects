unit Ucond;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, Tabnotbk, wwdblook, StdCtrls, Mask, wwdbedit, ExtCtrls, Db,
  Wwdatsrc, DBTables, Wwquery, DBCtrls, Buttons, Wwdbigrd, Grids, Wwdbgrid,
  Wwdotdot, Wwdbcomb, wwstorep, wwDialog, Wwlocate, wwidlg;

type
  TFCond = class(TForm)
    TabbedNotebook1: TTabbedNotebook;
    Panel3: TPanel;
    Label50: TLabel;
    Label16: TLabel;
    Label23: TLabel;
    Panel1: TPanel;
    Label1: TLabel;
    TxtNome: TwwDBEdit;
    wwDBGrid1: TwwDBGrid;
    wwDBEdit1: TwwDBEdit;
    Label2: TLabel;
    Panel2: TPanel;
    wwDBGrid2: TwwDBGrid;
    Label4: TLabel;
    DBText1: TDBText;
    DBCB_NFI_PESS: TwwDBComboBox;
    Q_COND: TwwQuery;
    DS_COND: TwwDataSource;
    UPD_COND: TUpdateSQL;
    Q_CONDCond_Pgto_ID: TAutoIncField;
    Q_CONDDescricao: TStringField;
    Q_CONDNum_Parcelas: TFloatField;
    Q_CONDPagamento: TStringField;
    Q_CONDFora: TStringField;
    Q_ICOND: TwwQuery;
    DS_ICOND: TwwDataSource;
    UPD_ICOND: TUpdateSQL;
    Q_ICONDIntervalo_ID: TAutoIncField;
    Q_ICONDCond_Pgto_ID: TIntegerField;
    Q_ICONDPercentual: TFloatField;
    Q_ICONDNum_dias: TFloatField;
    DBNavigator1: TDBNavigator;
    SpeedButton3: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure wwDBGrid2Enter(Sender: TObject);
    procedure wwDBGrid2Exit(Sender: TObject);
    procedure TabbedNotebook1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Q_CONDAfterPost(DataSet: TDataSet);
    procedure Q_CONDAfterDelete(DataSet: TDataSet);
    procedure Q_ICONDNewRecord(DataSet: TDataSet);
    procedure DBCB_NFI_PESSEnter(Sender: TObject);
    procedure DBCB_NFI_PESSExit(Sender: TObject);
    procedure Q_CONDBeforeInsert(DataSet: TDataSet);
    procedure Q_ICONDAfterPost(DataSet: TDataSet);
    procedure Q_ICONDAfterDelete(DataSet: TDataSet);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCond: TFCond;
  STRPESQUISA : string ;
  VALE :  string ;
  PALLET : integer ;
  PALLETSTR : string ;
  BOOPRIMEIRO : BOOLEAN ;
  CLIF : string ;
implementation

uses USenha;


{$R *.DFM}

procedure TFCond.FormClose(Sender: TObject; var Action: TCloseAction);
begin
         Q_COND.close ;
         Q_ICOND.close ;
         Action := caFree;


end;

procedure TFCond.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
     begin
       key := #0;
       perform(WM_nextdlgctl,0,0);
  end;
end;

procedure TFCond.FormCreate(Sender: TObject);
begin
   TabbedNotebook1.pageindex := 0 ;
   Q_COND.open ;
   Q_ICOND.open ;

end;

procedure TFCond.wwDBGrid2Enter(Sender: TObject);
begin
  FCOND.KeyPreview := false ;
end;

procedure TFCond.wwDBGrid2Exit(Sender: TObject);
begin
  FCOND.KeyPreview := true ;
end;

procedure TFCond.TabbedNotebook1Click(Sender: TObject);
begin
  If (TabbedNotebook1.pageindex = 0) then
      DBNavigator1.datasource := DS_COND;

  If (TabbedNotebook1.pageindex = 1) then begin
      DBNavigator1.datasource := DS_ICOND;
      Q_ICOND.edit;
  end ;

end;

procedure TFCond.SpeedButton3Click(Sender: TObject);
begin
  close ; 
end;

procedure TFCond.Q_CONDAfterPost(DataSet: TDataSet);
var StrNOME : string ;
begin
      StrNOME := Q_CONDDescricao.asstring ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_COND])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_COND.close ;
   Q_COND.Open ;
   Q_COND.locate('Descricao',StrNOME,[]);


   
end;

procedure TFCond.Q_CONDAfterDelete(DataSet: TDataSet);
var StrNOME : string ;
begin
      StrNOME := Q_CONDDescricao.asstring ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_COND])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_COND.close ;
   Q_COND.Open ;
   Q_COND.locate('Descricao',StrNOME,[]);

end;

procedure TFCond.Q_ICONDNewRecord(DataSet: TDataSet);
begin
   Q_ICONDCond_Pgto_ID.asstring := Q_CONDCond_Pgto_ID.asstring ;
end;

procedure TFCond.DBCB_NFI_PESSEnter(Sender: TObject);
begin
   (Sender as TwwDBCOMBOBOX).Color := ClAqUA;
end;

procedure TFCond.DBCB_NFI_PESSExit(Sender: TObject);
begin
  (Sender as TwwDBCOMBOBOX).Color := ClWindow;
end;

procedure TFCond.Q_CONDBeforeInsert(DataSet: TDataSet);
begin
   TxtNome.setfocus ; 
end;

procedure TFCond.Q_ICONDAfterPost(DataSet: TDataSet);
var
StrNOME : string ;
StrNUMDIA : string ;
begin
   StrNOME := Q_CONDCond_Pgto_ID.asstring   ;
   StrNUMDIA  := Q_ICONDNum_dias.asstring   ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_ICOND])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_ICOND.close ;
   Q_ICOND.Open ;
   Q_ICOND.locate('Cond_Pgto_ID;Num_dias',vararrayof([StrNOME,StrNUMDIA]),[]);

end;

procedure TFCond.Q_ICONDAfterDelete(DataSet: TDataSet);
var
StrNOME : string ;
StrNUMDIA : string ;
begin
   StrNOME := Q_CONDCond_Pgto_ID.asstring   ;
   StrNUMDIA  := Q_ICONDNum_dias.asstring   ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_ICOND])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_ICOND.close ;
   Q_ICOND.Open ;
   Q_ICOND.locate('Cond_Pgto_ID;Num_dias',vararrayof([StrNOME,StrNUMDIA]),[]);

end;

End.
