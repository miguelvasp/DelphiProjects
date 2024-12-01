unit UOrcomImp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls;

type
  TFOrcomImp = class(TForm)
    Panel3: TPanel;
    Label16: TLabel;
    SBT_SAIR: TSpeedButton;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    SpeedButton2: TSpeedButton;
    Bt_Relat: TBitBtn;
    Edit1: TEdit;
    Edit2: TEdit;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    procedure Bt_RelatClick(Sender: TObject);
    procedure SBT_SAIRClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit2Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit2Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FOrcomImp: TFOrcomImp;
  PRIMEIRO: STRING;
  SEGUNDO: STRING;
  NUMERO: STRING;
  ENTRE: string;

implementation
uses UOrdemCompra, UOrdCom ;
{$R *.DFM}

procedure TFOrcomImp.Bt_RelatClick(Sender: TObject);
begin

   IF Edit1.Text = '' THEN begin
     MessageDlg('Campo obrigatorio, favor selecionar a Ordem de Compra ',MtError,[MbOk],0);
     Edit1.SetFocus;
  end;


   PRIMEIRO:= Edit1.Text;
   SEGUNDO:= Edit2.Text;

   NUMERO := PRIMEIRO + '  AND  ' + SEGUNDO;


  if MessageDlg('Deseja realmente imprimir da pagina  ' + PRIMEIRO + '  Até  ' + SEGUNDO, mtInformation, [mbYes, mbNo], 0) = mrYes then
  begin
    Application.CreateForm(TOrdemCompra, OrdemCompra);
    OrdemCompra.QuickRep1.Print;
    OrdemCompra.Close;                          //THIAGO
    self.close;
 end
 else
    abort;   

end;

procedure TFOrcomImp.SBT_SAIRClick(Sender: TObject);
begin
  CLOSE;
end;

procedure TFOrcomImp.SpeedButton2Click(Sender: TObject);
begin
  Edit1.Text := '';
  Edit2.Text := '';
end;

procedure TFOrcomImp.Edit1Exit(Sender: TObject);
begin
 (Sender as tEdit).Color := ClWindow;

   If Edit1.Text <> '' then
     Edit2.Text := Edit1.Text;


  IF Edit1.Text = '' THEN begin
     MessageDlg('Campo obrigatorio, favor selecionar a Ordem de Compra ',MtError,[MbOk],0);
     Edit1.SetFocus;
  end;


end;

procedure TFOrcomImp.BitBtn12Click(Sender: TObject);
begin
IF Edit1.Text = '' THEN begin
     MessageDlg('Campo obrigatorio, favor preencher ',MtError,[MbOk],0);
     Edit1.SetFocus;
 end;

    ENTRE := edit1.text;

    NUMERO:= ENTRE + '  AND  ' + ENTRE;



    Application.CreateForm(TOrdemCompra, OrdemCompra);
    OrdemCompra.QuickRep1.Preview;
    OrdemCompra.Close;                          //THIAGO
    self.close;

end;


procedure TFOrcomImp.BitBtn1Click(Sender: TObject);
begin
   IF Edit1.Text = '' THEN begin
     MessageDlg('Campo obrigatorio, favor selecionar a Ordem de Compra ',MtError,[MbOk],0);
     Edit1.SetFocus;
   end;

   If Edit2.Text = '' then
      Edit2.Text := Edit1.Text;
      

   PRIMEIRO:= Edit1.Text;
   SEGUNDO:= Edit2.Text;

   NUMERO := PRIMEIRO + '  AND  ' + SEGUNDO;

    Application.CreateForm(TOrdemCompra, OrdemCompra);
    OrdemCompra.QuickRep1.Preview;
    OrdemCompra.Close;                          //THIAGO
    self.close;


end;

procedure TFOrcomImp.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (Key = #13) then
     begin
       Key := #0;
       Perform(WM_Nextdlgctl,0,0);
    end else begin
       if (Key = #27 ) then close ;
    end ;
end;

procedure TFOrcomImp.Edit2Exit(Sender: TObject);
begin
 (Sender as tEdit).Color := ClWindow;
end;

procedure TFOrcomImp.FormCreate(Sender: TObject);
begin

    EDIT1.TEXT:= FOrdComp.Q_OCORD_ID.ASSTRING;
    EDIT2.TEXT:= FOrdComp.Q_OCORD_ID.ASSTRING;

end;

procedure TFOrcomImp.Edit1Enter(Sender: TObject);
begin
    (Sender as tEdit).Color := ClAqua;
end;

procedure TFOrcomImp.Edit2Enter(Sender: TObject);
begin
    (Sender as TEdit).Color := ClAqua;
end;

end.
