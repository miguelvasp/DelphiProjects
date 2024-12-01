unit UFConsultaPagFrete;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  wwdbedit, wwdblook, StdCtrls, Mask, Buttons, ExtCtrls, Db, Wwdatsrc,
  DBTables, Wwquery;

type
  TFFConsultaPagFrete = class(TForm)
    Panel3: TPanel;
    SpeedButton3: TSpeedButton;
    Label16: TLabel;
    Panel2: TPanel;
    GroupBox6: TGroupBox;
    Label4: TLabel;
    Label6: TLabel;
    Label3: TLabel;
    Label20: TLabel;
    Data2: TMaskEdit;
    Data1: TMaskEdit;
    combo_cliente: TwwDBLookupCombo;
    DBTAG: TwwDBEdit;
    Label1: TLabel;
    wwDBLookupCombo1: TwwDBLookupCombo;
    Label2: TLabel;
    combo_Motorista: TwwDBLookupCombo;
    Label5: TLabel;
    wwDBLookupCombo2: TwwDBLookupCombo;
    Label7: TLabel;
    wwDBLookupCombo3: TwwDBLookupCombo;
    RadioGroup2: TRadioGroup;
    Q_CLINBF: TwwQuery;
    Q_CLINBFCLIN_RAZA: TStringField;
    Q_CLINBFCLIN_ID: TAutoIncField;
    DS_CLINBF: TwwDataSource;
    Q_TRMOT: TwwQuery;
    Q_TRMOTMOT_NOME: TStringField;
    Q_TRMOTMOT_ID: TAutoIncField;
    Q_TRMOTTRANS_ID: TIntegerField;
    Q_TRANS: TwwQuery;
    Q_TRANSTRANS_FANTASIA: TStringField;
    Q_TRANSTRANS_ID: TAutoIncField;
    Q_VEIC: TwwQuery;
    Q_VEICVEIC_NOME: TStringField;
    Q_VEICVEIC_ID: TAutoIncField;
    Q_REG: TwwQuery;
    Q_REGREG_ID: TAutoIncField;
    Q_REGREG_NOME: TStringField;
    SpeedButton1: TSpeedButton;
    procedure SpeedButton3Click(Sender: TObject);
    procedure DBTAGEnter(Sender: TObject);
    procedure DBTAGExit(Sender: TObject);
    procedure Data1Enter(Sender: TObject);
    procedure Data1Exit(Sender: TObject);
    procedure Data2Enter(Sender: TObject);
    procedure Data2Exit(Sender: TObject);
    procedure combo_clienteEnter(Sender: TObject);
    procedure combo_clienteExit(Sender: TObject);
    procedure wwDBLookupCombo1Enter(Sender: TObject);
    procedure wwDBLookupCombo1Exit(Sender: TObject);
    procedure combo_MotoristaEnter(Sender: TObject);
    procedure combo_MotoristaExit(Sender: TObject);
    procedure wwDBLookupCombo2Enter(Sender: TObject);
    procedure wwDBLookupCombo2Exit(Sender: TObject);
    procedure wwDBLookupCombo3Enter(Sender: TObject);
    procedure wwDBLookupCombo3Exit(Sender: TObject);
    procedure wwDBLookupCombo1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FFConsultaPagFrete: TFFConsultaPagFrete;
 // NUMTAG : string;
  CLI : string ;
  TRANS :  string ;
  MOT : string ;
  VEIC : string ;
  REGIAO  : string ;
  PERI : tdatetime ;
  PERF : tdatetime ;

implementation

uses URelConsultaPagFrete, URelConsultaPagFreteSINT;

{$R *.DFM}

procedure TFFConsultaPagFrete.SpeedButton3Click(Sender: TObject);
begin
  close ;
end;

procedure TFFConsultaPagFrete.DBTAGEnter(Sender: TObject);
begin
  (Sender as TwwDbEdit).Color := ClAqua;
end;

procedure TFFConsultaPagFrete.DBTAGExit(Sender: TObject);
begin
       (Sender as TwwDbEdit).Color := Clwindow ;
end;

procedure TFFConsultaPagFrete.Data1Enter(Sender: TObject);
begin
  (Sender as TMaskedit).Color := ClAqua;
end;

procedure TFFConsultaPagFrete.Data1Exit(Sender: TObject);
begin
   (Sender as TMaskedit).Color := Clwindow;
end;

procedure TFFConsultaPagFrete.Data2Enter(Sender: TObject);
begin
  (Sender as TMaskedit).Color := ClAqua;
end;

procedure TFFConsultaPagFrete.Data2Exit(Sender: TObject);
begin
  (Sender as TMaskedit).Color := Clwindow ;
end;

procedure TFFConsultaPagFrete.combo_clienteEnter(Sender: TObject);
begin
     (Sender as TwwDblookupcombo).Color := ClAqua;
end;

procedure TFFConsultaPagFrete.combo_clienteExit(Sender: TObject);
begin
  (Sender as TwwDblookupcombo).Color := Clwindow ;
end;

procedure TFFConsultaPagFrete.wwDBLookupCombo1Enter(Sender: TObject);
begin
  (Sender as TwwDblookupcombo).Color := ClAqua;
end;

procedure TFFConsultaPagFrete.wwDBLookupCombo1Exit(Sender: TObject);
begin
   (Sender as TwwDblookupcombo).Color := Clwindow ;


   If wwDBLookupCombo1.text <> '' then begin
        wwDBLookupCombo1.text := Q_TRANSTRANS_FANTASIA.asstring   ;
        Q_TRMOT.close ;
        Q_TRMOT.Sql.Clear ;
        Q_TRMOT.Sql.Add(' select MOT_ID,MOT_NOME,TRANS_ID from TRANSPORTADORA_MOTORISTA') ;
        Q_TRMOT.Sql.Add(' where TRANS_ID = ' +  Q_TRANSTRANS_id.asstring  ) ;
        Q_TRMOT.Open ;
   end ;
   
end;

procedure TFFConsultaPagFrete.combo_MotoristaEnter(Sender: TObject);
begin
  (Sender as TwwDblookupcombo).Color := ClAqua;
end;

procedure TFFConsultaPagFrete.combo_MotoristaExit(Sender: TObject);
begin
  (Sender as TwwDblookupcombo).Color := Clwindow;
end;

procedure TFFConsultaPagFrete.wwDBLookupCombo2Enter(Sender: TObject);
begin
  (Sender as TwwDblookupcombo).Color := ClAqua;
end;

procedure TFFConsultaPagFrete.wwDBLookupCombo2Exit(Sender: TObject);
begin
  (Sender as TwwDblookupcombo).Color := Clwindow ;
end;

procedure TFFConsultaPagFrete.wwDBLookupCombo3Enter(Sender: TObject);
begin
  (Sender as TwwDblookupcombo).Color := ClAqua;
end;

procedure TFFConsultaPagFrete.wwDBLookupCombo3Exit(Sender: TObject);
begin
  (Sender as TwwDblookupcombo).Color := Clwindow ;
end;

procedure TFFConsultaPagFrete.wwDBLookupCombo1Change(Sender: TObject);
begin
   IF wwDBLookupCombo1.text = '' then     begin
     combo_Motorista.enabled := false   ;
     combo_Motorista.Text  := '';
   end   else
     combo_Motorista.enabled := true ;


end;

procedure TFFConsultaPagFrete.FormCreate(Sender: TObject);
begin
   shortdateformat  := 'DD/MM/YYYY'  ;
   dateseparator := '/' ;


   Q_CLINBF.open ;
   Q_VEIC.open ;
   Q_REG.open ;
   Q_TRANS.open ;
   Q_TRMOT.open ;


end;

procedure TFFConsultaPagFrete.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Q_CLINBF.close ;
   Q_VEIC.close ;
   Q_REG.close ;
   Q_TRANS.close ;
   Q_TRMOT.close ;
end;

procedure TFFConsultaPagFrete.SpeedButton1Click(Sender: TObject);
begin

    { IF DBTAG.text <> '' then
        NUMTAG := DBTAG.text ;}

     IF combo_cliente.text    <> '' then
        CLI := combo_cliente.lookupvalue ;

     If wwDBLookupCombo1.text <> '' then
        TRANS := wwDBLookupCombo1.lookupvalue ;

     If combo_Motorista.text <> '' then
        MOT := combo_Motorista.lookupvalue ;

     If wwDBLookupCombo2.text <> '' then
        VEIC := wwDBLookupCombo2.lookupvalue ;

     If wwDBLookupCombo3.text <> '' then
        REGIAO := wwDBLookupCombo3.lookupvalue ;

      PERI:=  0.0 ;
      PERF:=  0.0 ;
      if Data1.text <> '  /  /    ' then
         PERI := strtodate(Data1.text );
      if Data2.text <> '  /  /    ' then
         PERF := strtodate(Data2.text );

     If  RadioGroup2.itemindex = 0 then begin
         Application.CreateForm(TFRelConsultaPagFRETE,FRelConsultaPagFRETE);
         FRelConsultaPagFRETE.ConsultaPosicao.Preview;
         FRelConsultaPagFRETE.Close;
     end else begin
         Application.CreateForm(TFRelConsultaPagFRETESINT,FRelConsultaPagFRETESINT);
         FRelConsultaPagFRETESINT.ConsultaPosicao.Preview;
         FRelConsultaPagFRETESINT.Close;
     end;

     //NUMTAG := '';
     CLI := '';
     TRANS := '';
     MOT := '';
     VEIC := '';
     REGIAO := '';
     PERI := 0.0 ;
     PERF := 0.0 ;
end;

procedure TFFConsultaPagFrete.RadioGroup2Click(Sender: TObject);
begin

     IF RadioGroup2.itemindex = 0 then begin
        wwDBLookupCombo2.enabled := true ;
        wwDBLookupCombo3.enabled := true ;
     end else begin
        wwDBLookupCombo2.enabled := false ;
        wwDBLookupCombo3.enabled := false ;
     end ;


end;

end.
