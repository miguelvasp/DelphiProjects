unit UFConsultaCTRC;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  wwdbedit, wwdblook, StdCtrls, Mask, Buttons, ExtCtrls, Db, DBTables,
  Wwquery, Wwdatsrc, ADODB;

type
  TFFConsultaCTRC = class(TForm)
    Panel3: TPanel;
    SpeedButton3: TSpeedButton;
    Label16: TLabel;
    Panel2: TPanel;
    SBT_VISU: TSpeedButton;
    GroupBox6: TGroupBox;
    Label6: TLabel;
    Label3: TLabel;
    Label20: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Data2: TMaskEdit;
    Data1: TMaskEdit;
    combo_cliente: TwwDBLookupCombo;
    combo_cliente_final: TwwDBLookupCombo;
    wwDBEdit1: TwwDBEdit;
    DS_CLINBF: TwwDataSource;
    Q_CLINBF: TwwQuery;
    Q_CLINBFCLIN_RAZA: TStringField;
    Q_CLINBFCLIN_ID: TAutoIncField;
    Q_CLIFINAL: TwwQuery;
    Q_CLIFINALCLIF_RAZA: TStringField;
    Q_CLIFINALCLIF_ID: TAutoIncField;
    Label1: TLabel;
    wwDBEdit2: TwwDBEdit;
    qrBuscaOS: TADOQuery;
    qrBuscaOSOS_ID: TIntegerField;
    STP_CORRIGE_OCE: TADOStoredProc;
    Label2: TLabel;
    edtFatura: TwwDBEdit;
    rg1: TRadioGroup;
    procedure SpeedButton3Click(Sender: TObject);
    procedure wwDBEdit1Enter(Sender: TObject);
    procedure wwDBEdit1Exit(Sender: TObject);
    procedure combo_clienteEnter(Sender: TObject);
    procedure combo_clienteExit(Sender: TObject);
    procedure combo_cliente_finalEnter(Sender: TObject);
    procedure combo_cliente_finalExit(Sender: TObject);
    procedure Data1Enter(Sender: TObject);
    procedure Data1Exit(Sender: TObject);
    procedure Data2Enter(Sender: TObject);
    procedure Data2Exit(Sender: TObject);
    procedure SBT_VISUClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FFConsultaCTRC: TFFConsultaCTRC;
  tipo : integer;
REMETENTE :string;
DESTINATARIO:string;
EMII  : tdatetime;
EMIF  : tdatetime;
CTRC : STRING;
NUMNF : STRING;


implementation
uses UConsultaCTRC, UMenu ;
{$R *.DFM}

procedure TFFConsultaCTRC.SpeedButton3Click(Sender: TObject);
begin
close ; 
end;

procedure TFFConsultaCTRC.wwDBEdit1Enter(Sender: TObject);
begin
  (Sender as TwwDbEdit).Color := ClAqua;
end;

procedure TFFConsultaCTRC.wwDBEdit1Exit(Sender: TObject);
begin
   (Sender as TwwDbEdit).Color := Clwindow ;
end;

procedure TFFConsultaCTRC.combo_clienteEnter(Sender: TObject);
begin
  (Sender as TwwDBlookupcombo).Color := ClAqua;
end;

procedure TFFConsultaCTRC.combo_clienteExit(Sender: TObject);
begin
    (Sender as TwwDBlookupcombo).Color := Clwindow;
end;

procedure TFFConsultaCTRC.combo_cliente_finalEnter(Sender: TObject);
begin
    (Sender as TwwDBlookupcombo).Color := ClAqua;
end;

procedure TFFConsultaCTRC.combo_cliente_finalExit(Sender: TObject);
begin
   (Sender as TwwDBlookupcombo).Color := Clwindow ;
end;

procedure TFFConsultaCTRC.Data1Enter(Sender: TObject);
begin
     (Sender as TMASKEDIT).Color := ClAqua;
end;

procedure TFFConsultaCTRC.Data1Exit(Sender: TObject);
begin
    (Sender as TMASKEDIT).Color := Clwindow ;
end;

procedure TFFConsultaCTRC.Data2Enter(Sender: TObject);
begin
    (Sender as TMASKEDIT).Color := ClAqua;
end;

procedure TFFConsultaCTRC.Data2Exit(Sender: TObject);
begin
    (Sender as TMASKEDIT).Color := Clwindow ;
end;

procedure TFFConsultaCTRC.SBT_VISUClick(Sender: TObject);
begin

  if combo_cliente.text <> '' then
       REMETENTE := combo_cliente.lookupvalue ;

  if combo_cliente_final.text <> '' then
       DESTINATARIO := combo_cliente_final.lookupvalue ;

  IF wwDBEdit1.Text <> '' then
     CTRC := wwDBEdit1.Text ;

  IF wwDBEdit2.Text <> '' then
     NUMNF := wwDBEdit2.Text ;


  EMII :=  0.0 ;
  EMIF :=  0.0 ;
  if Data1.text <> '  /  /    ' then
     EMII  := strtodate(Data1.text );
  if Data2.text <> '  /  /    ' then
     EMIF  := strtodate(Data2.text );


     //verifica valor dos conhecimentos

     with qrBuscaOS do
     begin
         close;
         sql.Clear;
         sql.Add('SELECT DISTINCT  OS_ID FROM ORDEM_COLETA_ENTREGA where 1 = 1');
         IF CTRC <> '' then
                SQL.Add('AND ORD_CONH = ' + QuotedStr(CTRC) );
         IF REMETENTE <> '' then
                SQL.Add(' AND CLIN_ID = ' + REMETENTE);
         IF DESTINATARIO <> '' then
                SQL.Add(' AND CLIF_ID = ' + DESTINATARIO);
         IF NUMNF <> '' then
                SQL.ADD(' AND ORD_NOTAS LIKE ' +  '''' + '%' + NUMNF + '%' + '''');
         if EMII <> 0.0 then
                SQL.ADD(' AND CONVERT(CHAR(10), ORD_DATA, 112) >= ' +''''+ formatdatetime('YYYYMMDD',EMII) + '''');
         if EMIF <> 0.0 then
                SQL.ADD(' AND CONVERT(CHAR(10), ORD_DATA, 112) <= ' +''''+ formatdatetime('YYYYMMDD',EMIF) + '''') ;

         if rg1.ItemIndex = 1 then
                SQL.Add(' AND ORD_STATUS = ''E'' ');

         if rg1.ItemIndex = 2 then
                SQL.Add(' AND ORD_STATUS = ''C'' ');

         if rg1.ItemIndex = 3 then
                SQL.Add(' AND ISNULL(GEROU_NFSE, '''') = ''S'' ');

         if edtFatura.Text <> '' then
                sql.Add(' and os_id in (select a.os_id from ORDEM_COLETA_ENTREGA a inner join fatura b on a.fat_id = b.fat_id where b.fat_num = ' + edtFatura.Text +  ') ') ;

         Open;
     end;

     while not qrBuscaOS.Eof do
     begin
          STP_CORRIGE_OCE.Parameters[0].Value := qrBuscaOSOS_ID.Value;
          STP_CORRIGE_OCE.ExecProc;
          qrBuscaOS.Next;
     end;


     Application.Createform(TFConsultaCTRC,FConsultaCTRC);
     FConsultaCTRC.ShowModal;
     FConsultaCTRC.Release  ;

     REMETENTE := '' ;
     DESTINATARIO := '' ;
     CTRC := '' ;
     EMII := 0.00 ;
     EMIF := 0.00 ;
     NUMNF := '' ;
end;

procedure TFFConsultaCTRC.FormCreate(Sender: TObject);
begin
  Q_CLINBF.open ;
  Q_CLIFINAL.open ;
end;

procedure TFFConsultaCTRC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  
  Q_CLINBF.close ;
  Q_CLIFINAL.close ;
  action := cafree ; 

end;

end.
