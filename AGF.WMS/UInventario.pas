unit UInventario;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, wwdblook, DBCtrls, ExtCtrls, Db, Wwdatsrc, DBTables,
  Wwquery;

type
  TFInventario = class(TForm)
    Panel3: TPanel;
    Label16: TLabel;
    GroupBox6: TGroupBox;
    Label2: TLabel;
    Label20: TLabel;
    DBText3: TDBText;
    wwDBLookupCombo1: TwwDBLookupCombo;
    wwDBLookupCombo4: TwwDBLookupCombo;
    Panel12: TPanel;
    BitBtn3: TBitBtn;
    SpeedButton3: TSpeedButton;
    Q_CLINBF: TwwQuery;
    Q_CLINBFCLIN_RAZA: TStringField;
    Q_CLINBFCLIN_ID: TAutoIncField;
    DS_CLINBF: TwwDataSource;
    Q_PROD: TwwQuery;
    Q_PRODPRO_COD: TStringField;
    Q_PRODPRO_DESC: TStringField;
    Q_PRODPRO_ID: TAutoIncField;
    DS_PROD: TwwDataSource;
    Q_AUX3: TwwQuery;
    RadioGroup2: TRadioGroup;
    BitBtn1: TBitBtn;
    Panel10: TPanel;
    Label46: TLabel;
    Label47: TLabel;
    Q_AUX4: TwwQuery;
    procedure SpeedButton3Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure wwDBLookupCombo4Exit(Sender: TObject);
    procedure wwDBLookupCombo4Enter(Sender: TObject);
    procedure wwDBLookupCombo1CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure wwDBLookupCombo1Enter(Sender: TObject);
    procedure wwDBLookupCombo1Exit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure wwDBLookupCombo4CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FInventario: TFInventario;

implementation
uses USenha,Umenu, UAbTabelas,U_FUNCOES ;
{$R *.DFM}

procedure TFInventario.SpeedButton3Click(Sender: TObject);
begin
  close; 
end;

procedure TFInventario.BitBtn3Click(Sender: TObject);
begin
   IF  Q_AUX4.fieldbyname('XVALOR').asfloat = 0  then begin
        MessageDlg('Para gerar Inventário é necessário que exista estoque físico !',mtWarning,[mbok],0);
        abort ;
  end ;


   if MessageDlg('Confirma geração do Inventário ?'
      ,mtConfirmation, [mbYes, mbNo], 0) = mrYES then  begin

       Q_AUX3.close;
       Q_AUX3.Sql.Clear;
       Q_AUX3.Sql.Add('insert into KARDEX (KAR_TPDOC,KAR_TIPO,KAR_DTMOV,');
       Q_AUX3.Sql.Add(' PRO_ID,KAR_QTDE,CH) ') ;
       Q_AUX3.Sql.Add('values ( ' );
       Q_AUX3.Sql.Add( '''' + 'IV' + '''' + ',');
       Q_AUX3.Sql.Add( '''' + 'E'  + '''' + ',');
       Q_AUX3.Sql.Add( '''' + FormatDateTime('MM/DD/YYYY',NOW)+ '''' + ',');
       Q_AUX3.Sql.Add( '''' + Q_PRODPRO_ID.asstring + '''' + ',');
       Q_AUX3.Sql.Add( Funcoes.Converte(floattostr(Q_AUX4.fieldbyname('XVALOR').asfloat) ,',','.') + ',');
       Q_AUX3.Sql.Add( '''' + FMenu.SqlUsuariosCH.asstring + '''' + ')' );
       Q_AUX3.ExecSql;

   end ;

   MessageDlg('Inventário gerado com Sucesso ! ',mtWarning,[mbok],0);




end;

procedure TFInventario.FormCreate(Sender: TObject);
begin
   Q_CLINBF.open;
   Q_PROD.open ;
   Label47.caption := '0.000' ;

end;

procedure TFInventario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Q_CLINBF.close;
   Q_PROD.close ;
   action := cafree ; 
end;

procedure TFInventario.wwDBLookupCombo4Exit(Sender: TObject);
begin
   IF wwDBLookupCombo4.text = '' then     begin
      wwDBLookupCombo1.enabled := false   ;
      DBText3.visible := false ;
   end else begin
     wwDBLookupCombo1.enabled := true ;
     wwDBLookupCombo1.setfocus ;
     DBText3.visible := true ;
   end ;
  (Sender as TwwDBlookupcombo).Color := Clwindow;


end;

procedure TFInventario.wwDBLookupCombo4Enter(Sender: TObject);
begin
  (Sender as TwwDBlookupcombo).Color := ClAqua;
end;

procedure TFInventario.wwDBLookupCombo1CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
   IF wwDBLookupCombo1.text = '' then
      PANEL12.visible := true else
      PANEL12.visible := false ;


    Label47.caption := '0.000' ;
end;

procedure TFInventario.wwDBLookupCombo1Enter(Sender: TObject);
begin
   IF wwDBLookupCombo1.text = '' then
      PANEL12.visible := true else
      PANEL12.visible := false ;
  (Sender as TwwDBlookupcombo).Color := ClAqua;

  
end;

procedure TFInventario.wwDBLookupCombo1Exit(Sender: TObject);
begin
   (Sender as TwwDBlookupcombo).Color := Clwindow;

end;

procedure TFInventario.BitBtn1Click(Sender: TObject);

begin
   IF (wwDBLookupCombo4.text = '')  then begin
       MessageDlg('Cliente NBF é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
       wwDBLookupCombo4.setfocus ;
       abort ;
   end ;

   IF (wwDBLookupCombo1.text = '')  then begin
       MessageDlg('Produto é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
       wwDBLookupCombo1.setfocus ;
       abort ;
   end ;


    Q_AUX4.SQL.clear ;
    Q_AUX4.SQL.ADD('Select ');
    Q_AUX4.SQL.ADD('SUM(A.ESTQ_QTDE) ');
    Q_AUX4.SQL.ADD('as XVALOR ');
    Q_AUX4.SQL.ADD('from ESTOQUE A,PRODUTO B  ');
    Q_AUX4.SQL.ADD('where A.PRO_ID = B.PRO_ID and ');
    Q_AUX4.SQL.ADD('A.PRO_ID = ' + Q_PRODPRO_ID.asstring );
    IF (RadioGroup2.itemindex = 0) then
        Q_AUX4.SQL.ADD('and B.PRO_DESCONTINUA = ' + '''' + 'S' + '''' )
      else
        Q_AUX4.SQL.ADD('and B.PRO_DESCONTINUA = ' + '''' + 'N' + '''') ;

    Q_AUX4.SQL.ADD('and   A.ESTQ_QTDE_RETIRA = ' + inttostr(0));
    Q_AUX4.SQL.ADD('and   A.ESTQ_DT_ENTRADA <> null ');

    //Q_AUX4.SQL.SaveToFile('C:\BDE\SQL.TXT');

    Q_AUX4.Open ;


    Label47.caption := formatfloat('###,###,##0.000',Q_AUX4.fieldbyname('XVALOR').asfloat) ;




end;

procedure TFInventario.wwDBLookupCombo4CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin            
    Label47.caption := '0.000' ;
    wwDBLookupCombo1.lookupvalue := '' ;
    wwDBLookupCombo1.text := '' ;
    PANEL12.visible := true ; 
    

end;

end.
