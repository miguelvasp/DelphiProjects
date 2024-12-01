unit U_ConsulEstq;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Wwdbigrd, Grids, Wwdbgrid, StdCtrls, wwdblook, Buttons, Db, Wwdatsrc,
  DBTables, Wwquery, Mask, wwdbedit, ExtCtrls;

type
  TFEstqConsulta = class(TForm)
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    SBT_PESQ: TSpeedButton;
    wwDBLookupCombo1: TwwDBLookupCombo;
    wwDBLookupCombo2: TwwDBLookupCombo;
    wwDBGrid1: TwwDBGrid;
    wwDBGrid1IButton: TwwIButton;
    Q_ESTOQUE: TwwQuery;
    Q_ESTOQUEMAT_ID: TIntegerField;
    Q_ESTOQUEMAT_DESC: TStringField;
    Q_ESTOQUELOC_DESC: TStringField;
    Q_ESTOQUEQuantidade: TIntegerField;
    Q_ESTOQUELOC_ID: TAutoIncField;
    DS_ESTOQUE: TwwDataSource;
    Q_AUX: TwwQuery;
    Q_MAT: TwwQuery;
    Q_LOC: TwwQuery;
    Q_MATMAT_ID: TAutoIncField;
    Q_MATMAT_DESC: TStringField;
    Q_LOCLOC_ID: TAutoIncField;
    Q_LOCLOC_DESC: TStringField;
    Q_ESTOQUELOTE: TStringField;
    Q_LOTE: TwwQuery;
    Q_LOTELOTE: TStringField;
    Label1: TLabel;
    wwDBLookupCombo3: TwwDBLookupCombo;
    Label2: TLabel;
    Q_MARC: TwwQuery;
    Q_MARCMARCA_ID: TAutoIncField;
    Q_MARCMARCA_DESC: TStringField;
    DBE_AJUS_VAL1: TMaskEdit;
    Label15: TLabel;
    DBE_AJUS_VAL2: TMaskEdit;
    Q_ESTOQUEVALIDADE: TDateTimeField;
    Q_ESTOQUEmarca_desc: TStringField;
    Q_ESTOQUEMARCA_ID: TIntegerField;
    Panel1: TPanel;
    Label5: TLabel;
    SBT_SAIR: TSpeedButton;
    procedure SBT_SAIRClick(Sender: TObject);
    procedure SBT_PESQClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure wwDBLookupCombo2Enter(Sender: TObject);
    procedure wwDBLookupCombo3Enter(Sender: TObject);
    procedure wwDBLookupCombo1Enter(Sender: TObject);
    procedure wwDBLookupCombo2Exit(Sender: TObject);
    procedure wwDBLookupCombo3Exit(Sender: TObject);
    procedure wwDBLookupCombo1Exit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEstqConsulta: TFEstqConsulta;

implementation

{$R *.DFM}

procedure TFEstqConsulta.SBT_SAIRClick(Sender: TObject);
begin
        Close;
end;

procedure TFEstqConsulta.SBT_PESQClick(Sender: TObject);
var DATAI: String;
begin

        Q_Estoque.Close;
        Q_ESTOQUE.SQL.Clear;

        Q_ESTOQUE.Sql.Add(' select A.MAT_ID,A.LOTE,B.MAT_DESC,C.LOC_DESC,A.Quantidade,C.LOC_ID,A.MARCA_ID,A.VALIDADE');
        Q_ESTOQUE.Sql.Add(' from MATERIAIS B,LOCAIS C , Estoque A ');
        Q_ESTOQUE.Sql.Add(' where A.MAT_ID = B.MAT_ID');
        Q_ESTOQUE.Sql.Add(' and   A.LOC_ID = C.LOC_ID');


   if wwDBLookupCombo1.text <> '' then
      Q_ESTOQUE.Sql.Add(' and C.LOC_ID = ' + ''''+ wwDBLookupCombo1.lookupvalue + '''') ;

   if wwDBLookupCombo2.text <> '' then
      Q_ESTOQUE.Sql.Add(' and A.MAT_ID  = ' + ''''+ wwDBLookupCombo2.lookupvalue + '''') ;

   if wwDBLookupCombo3.text <> '' then
      Q_ESTOQUE.Sql.Add(' and A.MARCA_ID  = ' + ''''+ wwDBLookupCombo3.lookupvalue + '''') ;

   if DBE_AJUS_VAL1.text <> '  /  /    ' then
     Q_ESTOQUE.SQL.ADD( ' and A.VALIDADE >= ' + '''' + FormatDateTime('MM/DD/YYYY',strtodate(DBE_AJUS_VAL1.text) ) + '''' );
   if DBE_AJUS_VAL2.text <> '  /  /    ' then
     Q_ESTOQUE.SQL.ADD( ' and A.VALIDADE <= ' + '''' + FormatDateTime('MM/DD/YYYY',strtodate(DBE_AJUS_VAL2.text) ) + '''' );


   Q_ESTOQUE.Sql.Add(' GROUP BY A.MAT_ID,A.LOTE,B.MAT_DESC,C.LOC_DESC,A.Quantidade,C.LOC_ID,A.MARCA_ID,A.VALIDADE ');

   Q_ESTOQUE.Sql.Add('order by A.Mat_id ' );
   Q_Estoque.Close;
   Q_Estoque.open;
end;

procedure TFEstqConsulta.FormCreate(Sender: TObject);
begin
     //   Q_ESTOQUE.Open;
        Q_MAT.Open;
        Q_LOC.Open;
        Q_LOTE.Open;

end;

procedure TFEstqConsulta.wwDBLookupCombo2Enter(Sender: TObject);
begin
        (Sender as TwwDBlookupcombo).Color := claqua;
end;

procedure TFEstqConsulta.wwDBLookupCombo3Enter(Sender: TObject);
begin
        (Sender as TwwDBlookupcombo).Color := claqua;
end;

procedure TFEstqConsulta.wwDBLookupCombo1Enter(Sender: TObject);
begin
        (Sender as TwwDBlookupcombo).Color := claqua;
end;

procedure TFEstqConsulta.wwDBLookupCombo2Exit(Sender: TObject);
begin
        (Sender as TwwDBlookupcombo).Color := clwindow;
end;

procedure TFEstqConsulta.wwDBLookupCombo3Exit(Sender: TObject);
begin
        (Sender as TwwDBlookupcombo).Color := clwindow;
end;

procedure TFEstqConsulta.wwDBLookupCombo1Exit(Sender: TObject);
begin
        (Sender as TwwDBlookupcombo).Color := clwindow;
end;

procedure TFEstqConsulta.FormKeyPress(Sender: TObject; var Key: Char);
begin
     If key = #13 then
     begin
       key := #0;
       perform(WM_nextdlgctl,0,0);
     end;
end;

procedure TFEstqConsulta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        Q_ESTOQUE.Close;
        Q_MAT.Close;
        Q_LOC.Close;
        Q_LOTE.Close;
        Action:= cafree;
end;

end.
