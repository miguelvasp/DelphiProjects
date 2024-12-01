unit UFConsultaPosicao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  wwdblook, Mask, StdCtrls, Buttons, ExtCtrls, wwdbedit, Db, DBTables,
  Wwquery, Wwdotdot, Wwdbcomb, Wwdatsrc, DBCtrls, wwstorep, Gauges;

type
  TFFConsultaPosicao = class(TForm)
    Panel3: TPanel;
    SpeedButton3: TSpeedButton;
    Label16: TLabel;
    Panel2: TPanel;
    SBT_VISU: TSpeedButton;
    Label1: TLabel;
    GroupBox6: TGroupBox;
    Label4: TLabel;
    wwDBLookupCombo7: TwwDBLookupCombo;
    wwDBLookupCombo1: TwwDBLookupCombo;
    Label3: TLabel;
    Label2: TLabel;
    wwDBLookupCombo2: TwwDBLookupCombo;
    Q_AR: TwwQuery;
    Q_POSI: TwwQuery;
    Q_POSF: TwwQuery;
    DS_AR: TwwDataSource;
    RadioGroup1: TRadioGroup;
    Q_ARAR_ID: TAutoIncField;
    Q_ARAR_NOME: TStringField;
    Q_ARAR_CONTROL_POS: TStringField;
    Q_ARAR_EMPILHA_LIVRE: TStringField;
    Q_ARAR_EMPILHA_MAX: TIntegerField;
    Q_ARAR_DISPONIVEL: TStringField;
    Q_ARPAR_ID: TIntegerField;
    Q_POSIPOS_ID: TAutoIncField;
    Q_POSIPOS_COD: TStringField;
    Q_POSIAR_ID: TIntegerField;
    Q_POSIPOS_PESOMAX: TFloatField;
    Q_POSIPOS_UTILIZADO: TStringField;
    Q_POSFPOS_ID: TAutoIncField;
    Q_POSFPOS_COD: TStringField;
    Q_POSFAR_ID: TIntegerField;
    Q_POSFPOS_PESOMAX: TFloatField;
    Q_POSFPOS_UTILIZADO: TStringField;
    CheckBox1: TCheckBox;
    chk1: TCheckBox;
    procedure SpeedButton3Click(Sender: TObject);
    procedure combo_clienteEnter(Sender: TObject);
    procedure cboclientefinalEnter(Sender: TObject);
    procedure combo_clienteExit(Sender: TObject);
    procedure cboclientefinalExit(Sender: TObject);
    procedure Data1Exit(Sender: TObject);
    procedure Data1Enter(Sender: TObject);
    procedure Data2Enter(Sender: TObject);
    procedure Data2Exit(Sender: TObject);
    procedure dbnfEnter(Sender: TObject);
    procedure dbnfExit(Sender: TObject);
    procedure cboprodutoEnter(Sender: TObject);
    procedure cboprodutoExit(Sender: TObject);
    procedure SBT_VISUClick(Sender: TObject);
    procedure wwDBLookupCombo2Enter(Sender: TObject);
    procedure wwDBLookupCombo2Exit(Sender: TObject);
    procedure MaskEdit2Enter(Sender: TObject);
    procedure MaskEdit2Exit(Sender: TObject);
    procedure wwDBLookupCombo7Enter(Sender: TObject);
    procedure wwDBLookupCombo7Exit(Sender: TObject);
    procedure wwDBLookupCombo1Enter(Sender: TObject);
    procedure wwDBLookupCombo1Exit(Sender: TObject);
    procedure wwDBLookupCombo7Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FFConsultaPosicao: TFFConsultaPosicao;
  ARE : STRING;
  POSI : string ;
  POSF  : String ;
implementation
uses  UMenu, UConsultaNF, UConsultaPosicao ;

{$R *.DFM}

procedure TFFConsultaPosicao.SpeedButton3Click(Sender: TObject);
begin
close;
end;

procedure TFFConsultaPosicao.combo_clienteEnter(Sender: TObject);
begin



      
(Sender as TwwDBlookupcombo).Color := ClAqua;
end;

procedure TFFConsultaPosicao.cboclientefinalEnter(Sender: TObject);
begin
(Sender as TwwDBlookupcombo).Color := ClAqua;
end;

procedure TFFConsultaPosicao.combo_clienteExit(Sender: TObject);
begin
 

(Sender as TwwDBlookupcombo).Color := Clwindow;
end;

procedure TFFConsultaPosicao.cboclientefinalExit(Sender: TObject);
begin
(Sender as TwwDBlookupcombo).Color := Clwindow;
end;

procedure TFFConsultaPosicao.Data1Exit(Sender: TObject);
begin
(Sender as TMaskedit).Color := Clwindow;
end;

procedure TFFConsultaPosicao.Data1Enter(Sender: TObject);
begin
  (Sender as TMaskedit).Color := ClAqua;
end;

procedure TFFConsultaPosicao.Data2Enter(Sender: TObject);
begin
  (Sender as TMaskedit).Color := ClAqua;
end;

procedure TFFConsultaPosicao.Data2Exit(Sender: TObject);
begin
(Sender as TMaskedit).Color := Clwindow;
end;

procedure TFFConsultaPosicao.dbnfEnter(Sender: TObject);
begin
(Sender as TwwDbEdit).Color := ClAqua;
end;

procedure TFFConsultaPosicao.dbnfExit(Sender: TObject);
begin
(Sender as TwwDBEdit).color := ClWindow;
end;

procedure TFFConsultaPosicao.cboprodutoEnter(Sender: TObject);
begin

(SENDER AS TWWDBLOOKUPCOMBO).COLOR := CLAQUA;
end;

procedure TFFConsultaPosicao.cboprodutoExit(Sender: TObject);
begin
   (Sender as TwwDBlookupcombo).Color := Clwindow;
end;

procedure TFFConsultaPosicao.SBT_VISUClick(Sender: TObject);
begin

   if wwDBLookupCombo7.text <> '' then
       ARE := wwDBLookupCombo7.lookupvalue  ;

   if wwDBLookupCombo1.text <> '' then
       POSI := wwDBLookupCombo1.text  ;

   if wwDBLookupCombo2.text <> '' then
      POSF := wwDBLookupCombo2.text  ;

 Application.Createform(TFConsultaPosicao,FConsultaPosicao);
 FConsultaPosicao.ShowModal;
 FConsultaPosicao.Release  ;

 ARE := '' ;
 POSI := '' ;
 POSF := '' ;

end;

procedure TFFConsultaPosicao.wwDBLookupCombo2Enter(Sender: TObject);
begin
  (Sender as TwwDBlookupcombo).Color := ClAqua;
end;

procedure TFFConsultaPosicao.wwDBLookupCombo2Exit(Sender: TObject);
begin
  (Sender as TwwDBlookupcombo).Color := Clwindow;
end;

procedure TFFConsultaPosicao.MaskEdit2Enter(Sender: TObject);
begin
  (Sender as TMaskedit).Color := ClAqua;
end;

procedure TFFConsultaPosicao.MaskEdit2Exit(Sender: TObject);
begin
  (Sender as TMaskedit).Color := Clwindow ;
end;

procedure TFFConsultaPosicao.wwDBLookupCombo7Enter(Sender: TObject);
begin
     (Sender as TwwDBlookupcombo).Color := ClAqua;
end;

procedure TFFConsultaPosicao.wwDBLookupCombo7Exit(Sender: TObject);
begin
    (Sender as TwwDBlookupcombo).Color := Clwindow;
end;

procedure TFFConsultaPosicao.wwDBLookupCombo1Enter(Sender: TObject);
begin
     (Sender as TwwDBlookupcombo).Color := ClAqua;
end;

procedure TFFConsultaPosicao.wwDBLookupCombo1Exit(Sender: TObject);
begin
     (Sender as TwwDBlookupcombo).Color := Clwindow ;
end;

procedure TFFConsultaPosicao.wwDBLookupCombo7Change(Sender: TObject);
begin
  IF wwDBLookupCombo7.text = '' then     begin
     wwDBLookupCombo1.enabled := false   ;
     wwDBLookupCombo2.enabled := false   ;
     wwDBLookupCombo1.Text  := '';
     wwDBLookupCombo2.Text  := '';
   end   else begin
     wwDBLookupCombo1.enabled := true   ;
     wwDBLookupCombo2.enabled := true   ;
  end ;



  

end;

procedure TFFConsultaPosicao.FormCreate(Sender: TObject);
begin
   Q_AR.open;
   Q_POSI.open ;
   Q_POSF.open ;
end;

procedure TFFConsultaPosicao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Q_AR.close;
   Q_POSI.close ;
   Q_POSF.close ;
   action := cafree ; 
end;

end.
