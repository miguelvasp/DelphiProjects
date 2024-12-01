unit ConsFiltPagtos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, Db, Wwdatsrc, DBTables, Wwquery, DBCtrls, StdCtrls, Mask,
  ExtCtrls;

type
  TFPagtosFilt = class(TForm)
    RadioGroup1: TRadioGroup;
    GRB_FILT: TGroupBox;
    Label1: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    MaskEdit3: TMaskEdit;
    MaskEdit4: TMaskEdit;
    Q_FORN: TwwQuery;
    Q_FORNFOR_CODI: TStringField;
    Q_FORNFOR_RAZA: TStringField;
    DS_FORN: TwwDataSource;
    SBT_SAIR: TSpeedButton;
    SBT_IMPR: TSpeedButton;
    Label5: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Q_BANC: TwwQuery;
    DS_BANC: TwwDataSource;
    Q_BANCBAN_CODI: TStringField;
    Q_BANCBAN_NOME: TStringField;
    DBLookupComboBox4: TDBLookupComboBox;
    DBLookupComboBox5: TDBLookupComboBox;
    DBLookupComboBox6: TDBLookupComboBox;
    DBLookupComboBox7: TDBLookupComboBox;
    Q_FILI: TwwQuery;
    Q_CONT: TwwQuery;
    DS_FILI: TwwDataSource;
    DS_CONT: TwwDataSource;
    Q_CONTCON_CODI: TStringField;
    Q_CONTCON_DESC: TStringField;
    Q_FILIFIL_CODI: TStringField;
    Q_FILIFIL_DESC: TStringField;
    procedure SBT_IMPRClick(Sender: TObject);
    procedure SBT_SAIRClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPagtosFilt: TFPagtosFilt;
  FORNECEDORI : string;
  FORNECEDORF : String ;
  VENCIMENTOI   : Tdatetime ;
  VENCIMENTOF   : Tdatetime ;
  REC_FILII : String;
  REC_FILIF : String;
  CONTAGERENCIALI : String;
  CONTAGERENCIALF : String;
  TIPO : Integer ;
 
implementation
USES CPPMENU, ConsultasPagamentos ;

{$R *.DFM}









procedure TFPagtosFilt.SBT_IMPRClick(Sender: TObject);
begin
  FORNECEDORI := DBLookupComboBox1.text;
  FORNECEDORF := DBLookupComboBox2.text;
  VENCIMENTOI := 0.0 ;
  VENCIMENTOF := 0.0 ;
  if maskedit3.text <> '  /  /    ' then
     VENCIMENTOI   := strtodate(maskedit3.text );
  if maskedit4.text <> '  /  /    ' then
     VENCIMENTOF   := strtodate(maskedit4.text );
  REC_FILII := DBLookupComboBox4.text ;
  REC_FILIF := DBLookupComboBox5.text ;
  CONTAGERENCIALI := DBLookupComboBox6.text;
  CONTAGERENCIALF := DBLookupComboBox7.text;
  if radiogroup1.itemindex=1 then Tipo := 1 else Tipo := 0;
  FConsPagtos := TFConsPagtos.Create(Self);
  FConsPagtos.ShowModal;
end;





procedure TFPagtosFilt.SBT_SAIRClick(Sender: TObject);
begin
close ;

end;

procedure TFPagtosFilt.FormCreate(Sender: TObject);
begin
  Q_FORN.Open;
  Q_CONT.Open;
  Q_FILI.Open;
  Q_BANC.Open;
end;

procedure TFPagtosFilt.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Q_FORN.Close;
  Q_CONT.Close;
  Q_FILI.Close;
  Q_BANC.Close;
  action:=cafree;
end;

end.
