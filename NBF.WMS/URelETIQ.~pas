unit URelETIQ;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, DBCtrls, Buttons, wwdblook, Db, DBTables, Wwquery;

type
  TFRelETIQ = class(TForm)
    Panel2: TPanel;
    SpeedButton3: TSpeedButton;
    Label4: TLabel;
    DBNavigator1: TDBNavigator;
    Panel1: TPanel;
    RadioGroup1: TRadioGroup;
    SpeedButton1: TSpeedButton;
    GroupBox6: TGroupBox;
    wwDBLookupCombo3: TwwDBLookupCombo;
    GroupBox1: TGroupBox;
    Q_ESTQ: TwwQuery;
    Q_ESTQROM_ID: TAutoIncField;
    wwDBLookupCombo1: TwwDBLookupCombo;
    Q_ESTOQUE: TwwQuery;
    Q_ESTOQUEESTQ_TAG: TIntegerField;
    procedure SpeedButton3Click(Sender: TObject);
    procedure wwDBLookupCombo3Enter(Sender: TObject);
    procedure wwDBLookupCombo3Exit(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure wwDBLookupCombo1Enter(Sender: TObject);
    procedure wwDBLookupCombo1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelETIQ: TFRelETIQ;

implementation
uses UMENU , ETIQCODBARr;
{$R *.DFM}

procedure TFRelETIQ.SpeedButton3Click(Sender: TObject);
begin
  close ; 
end;

procedure TFRelETIQ.wwDBLookupCombo3Enter(Sender: TObject);
begin
  (Sender as TwwDBlookupcombo).Color := ClAqua;
end;

procedure TFRelETIQ.wwDBLookupCombo3Exit(Sender: TObject);
begin
    (Sender as TwwDBlookupcombo).Color := Clwindow;
end;

procedure TFRelETIQ.RadioGroup1Click(Sender: TObject);
begin
   IF RadioGroup1.itemindex = 0 then begin
      wwDBLookupCombo3.text := '';
      GroupBox6.visible := true ;
      GroupBox1.visible := false ;
   end else begin
      wwDBLookupCombo1.text := '';
      GroupBox6.visible := false ;
      GroupBox1.visible := true ;
   end ;

end;

procedure TFRelETIQ.FormCreate(Sender: TObject);
begin
  GroupBox6.visible := true ;
  Q_ESTQ.open ;
  Q_ESTOQUE.open ;
end;

procedure TFRelETIQ.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Q_ESTQ.close ;
     Q_ESTOQUE.Close ;
     action := cafree ;
end;

procedure TFRelETIQ.SpeedButton1Click(Sender: TObject);
{var
  ARQTXT : textfile ;
  strtexto : string ; }
begin
  //assignfile(ARQTXT,'\\svatelier\hpdeskje');
  //assignfile(ARQTXT,'\\alexandre\EPSONSty');
  //assignfile(ARQTXT,'\\RUBENS\LabelDr.');
   {assignfile(ARQTXT,'Label' ) ;
   rewrite(ARQTXT); }

   //StrTexto := '<STX>L<CR>' ;
   //writeln(ArqTXT,Strtexto);
   //writeln(ArqTXT,'') ;

   //StrTexto := '121100001000050ALEXANDRE GOMES FELICIO<CR>' ;
   //writeln(ArqTXT,Strtexto);
   //writeln(ArqTXT,'') ;

   //StrTexto := 'E<CR>' ;
   {StrTexto := 'AlexandreXXXXXXXXXXXXXXXXXXXXXXXXXXXx' ;
   writeln(ARQTXT,StrTexto);
   closefile(ARQTXT) ;  }

    Application.CreateForm(TFEtiqCodbar, FEtiqCodBar);
    FEtiqCodBar.Quickrep1.Preview ;
    FEtiqCodBar.close ;
    FEtiqCodBar.Release;

    wwDBLookupCombo3.text := '' ;
    wwDBLookupCombo1.text := '' ;




end;

procedure TFRelETIQ.wwDBLookupCombo1Enter(Sender: TObject);
begin
 (Sender as TwwDBlookupcombo).Color := ClAqua;
end;

procedure TFRelETIQ.wwDBLookupCombo1Exit(Sender: TObject);
begin
  (Sender as TwwDBlookupcombo).Color := ClWINDOW;
end;

end.
