unit UAlteraDados;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, Wwdbigrd, Wwdbgrid, ExtCtrls, StdCtrls, Buttons, wwdblook,
  DBCtrls, Db, DBTables, Wwquery, ADODB;

type
  TfrmAlteraDados = class(TForm)
    Q_CLIN2: TwwQuery;
    Q_CLIN2CLIN_RAZA: TStringField;
    Q_CLIN2CLIN_ID: TAutoIncField;
    Q_PROD3: TwwQuery;
    Q_PROD3PRO_COD: TStringField;
    Q_PROD3PRO_DESC: TStringField;
    Q_PROD3PRO_ID: TAutoIncField;
    Q_PROD3CLIN_ID: TIntegerField;
    Q_AR2: TwwQuery;
    Q_AR2AR_NOME: TStringField;
    Q_AR2AR_ID: TAutoIncField;
    Q_AR2AR_CONTROL_POS: TStringField;
    Q_AR2AR_EMPILHA_LIVRE: TStringField;
    Q_AR2AR_EMPILHA_MAX: TIntegerField;
    Q_AR2AR_DISPONIVEL: TStringField;
    Q_AR2PAR_ID: TIntegerField;
    Panel5: TPanel;
    GroupBox6: TGroupBox;
    Label15: TLabel;
    Label20: TLabel;
    Label16: TLabel;
    SpeedButton2: TSpeedButton;
    DBText3: TDBText;
    wwDBLookupCombo3: TwwDBLookupCombo;
    wwDBLookupCombo4: TwwDBLookupCombo;
    wwDBLookupCombo5: TwwDBLookupCombo;
    RadioGroup2: TRadioGroup;
    GRID: TwwDBGrid;
    Q_ESTQ: TADOQuery;
    Q_ESTQESTQ_ID: TAutoIncField;
    Q_ESTQAR_ID: TIntegerField;
    Q_ESTQPOS_ID: TIntegerField;
    Q_ESTQOS_ID_ORIG: TIntegerField;
    Q_ESTQPRO_ID: TIntegerField;
    Q_ESTQESTQ_QTDE: TFloatField;
    Q_ESTQESTQ_QTDE_RETIRA: TFloatField;
    Q_ESTQMANI_ID: TIntegerField;
    Q_ESTQESTQ_PESO: TFloatField;
    Q_ESTQOS_ID_DEST: TIntegerField;
    Q_ESTQESTQ_DT_ENTRADA: TDateTimeField;
    Q_ESTQESTQ_DT_SAIDA: TDateTimeField;
    Q_ESTQROM_ID_ENT: TIntegerField;
    Q_ESTQROM_ID_SAIDA: TIntegerField;
    Q_ESTQROM_DTBATCH: TDateTimeField;
    Q_ESTQROM_DTVENCTO: TDateTimeField;
    Q_ESTQESTQ_LOTE: TStringField;
    Q_ESTQUVEN_ID: TIntegerField;
    Q_ESTQESTQ_TAG: TIntegerField;
    Q_ESTQAR_ID_ANTERIOR: TIntegerField;
    Q_ESTQPOS_ID_ANTERIOR: TIntegerField;
    Q_ESTQESTQ_DT_ULMOV: TDateTimeField;
    Q_ESTQPAR_ID: TIntegerField;
    Q_ESTQGEROU_OPER_ROMSAIDA: TStringField;
    Q_ESTQMARCADOR: TStringField;
    Q_ESTQESTQ_ESCOLHEULOTE: TStringField;
    Q_ESTQPRO_DESC: TStringField;
    Q_ESTQPRO_COD: TStringField;
    Q_ESTQUVEN_NOME: TStringField;
    Q_ESTQAR_NOME: TStringField;
    Q_ESTQCLIN_ID: TIntegerField;
    DataSource1: TDataSource;
    Label1: TLabel;
    Q_PAR: TwwQuery;
    Q_PARPAR_NOME: TStringField;
    Q_PARPAR_ID: TAutoIncField;
    Q_PARPAR_RAZA: TStringField;
    Q_PARULT_TAG: TIntegerField;
    wwDBLookupCombo10: TwwDBLookupCombo;
    Label2: TLabel;
    dspar: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton2Click(Sender: TObject);
    procedure wwDBLookupCombo4CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAlteraDados: TfrmAlteraDados;

implementation

uses UMenu;

{$R *.DFM}

procedure TfrmAlteraDados.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  frmAlteraDados := nil;
end;

procedure TfrmAlteraDados.SpeedButton2Click(Sender: TObject);
begin
        Q_ESTQ.close;
        Q_ESTQ.SQL.clear ;
        Q_ESTQ.SQL.ADD('Select A.*,B.PRO_DESC,B.PRO_COD,C.UVEN_NOME,D.AR_NOME, ');
        Q_ESTQ.SQL.ADD('F.CLIN_ID from ');
        Q_ESTQ.SQL.ADD('ESTOQUE A  LEFT OUTER JOIN ');
	Q_ESTQ.SQL.ADD('OS F ON A.OS_ID_ORIG = F.OS_ID, ');
        Q_ESTQ.SQL.ADD('PRODUTO B,UNIDVENDA C,');
        Q_ESTQ.SQL.ADD('AREA D where ');
        Q_ESTQ.SQL.ADD('A.PRO_ID = B.PRO_ID and   ');
        Q_ESTQ.SQL.ADD('A.UVEN_ID = C.UVEN_ID and  ');
        Q_ESTQ.SQL.ADD('A.AR_ID = D.AR_ID and  ');
        Q_ESTQ.SQL.ADD('A.PAR_ID = ' + Q_PARPAR_ID.asstring);
        Q_ESTQ.SQL.ADD('and A.ESTQ_DT_ENTRADA <> null ');
        Q_ESTQ.SQL.ADD('and A.ESTQ_QTDE_RETIRA = ' + inttostr(0));
        if wwDBLookupCombo5.text <> '' then
               Q_ESTQ.SQL.ADD ( 'and A.AR_ID =   ' + wwDBLookupCombo5.lookupvalue ) ;
        if wwDBLookupCombo4.text  <> '' then
               Q_ESTQ.SQL.ADD ( 'and B.CLIN_ID = ' + wwDBLookupCombo4.lookupvalue  ) ;
        if wwDBLookupCombo3.text <> '' then
               Q_ESTQ.SQL.ADD ( 'and A.PRO_ID =  ' + wwDBLookupCombo3.lookupvalue ) ;

        Q_ESTQ.SQL.ADD('order by A.PRO_ID,A.AR_ID,A.POS_ID,A.ESTQ_QTDE desc');
        Q_ESTQ.Open ;
end;

procedure TfrmAlteraDados.wwDBLookupCombo4CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
  Q_PROD3.close;
  Q_PROD3.Params[0].AsInteger := Q_CLIN2CLIN_ID.Value;
  Q_PROD3.Open;
  wwDBLookupCombo3.Enabled := True;
end;

procedure TfrmAlteraDados.FormCreate(Sender: TObject);
begin
  Q_CLIN2.Open;
  Q_AR2.Open;
  Q_PAR.Open;
end;

end.
