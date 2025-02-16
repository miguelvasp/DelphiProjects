unit UfrmAddDespesa;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Mask, DBCtrls, ExtCtrls, RzPanel, StdCtrls, wwdblook, RzButton;

type
  TfrmAddDespesa = class(TForm)
    RzGroupBox1: TRzGroupBox;
    wwDBLookupCombo1: TwwDBLookupCombo;
    RzGroupBox2: TRzGroupBox;
    DBEdit1: TDBEdit;
    RzGroupBox3: TRzGroupBox;
    wwDBLookupCombo2: TwwDBLookupCombo;
    RzGroupBox4: TRzGroupBox;
    DBEdit2: TDBEdit;
    RzBitBtn1: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    RzBitBtn3: TRzBitBtn;
    procedure RzBitBtn1Click(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RzBitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAddDespesa: TfrmAddDespesa;

implementation

uses UfrmDespesasFrete;

{$R *.DFM}

procedure TfrmAddDespesa.RzBitBtn1Click(Sender: TObject);
begin
   frmDespesasFrete.qrDespesas.Post;
   close;
end;

procedure TfrmAddDespesa.RzBitBtn2Click(Sender: TObject);
begin
   frmDespesasFrete.qrDespesas.cancel;
   close;
end;

procedure TfrmAddDespesa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
   frmAddDespesa := nil;
end;

procedure TfrmAddDespesa.RzBitBtn3Click(Sender: TObject);
begin
  if MessageBox(Self.Handle, 'Deseja eliminar o registro?', 'Confirmação', MB_YESNO) = 6 then begin
      frmDespesasFrete.qrDespesas.Delete;
      Self.Close;
  end;
end;

end.
