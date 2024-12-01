unit ufrmSelEmpresa;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, wwdblook, Wwdbdlg, ExtCtrls, RzPanel, Db, ADODB;

type
  TfrmSelEmpresa = class(TForm)
    RzGroupBox1: TRzGroupBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    wwDBLookupCombo1: TwwDBLookupCombo;
    ADOQuery1: TADOQuery;
    ADOQuery1FIL_CODI: TStringField;
    ADOQuery1FIL_DESC: TStringField;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSelEmpresa: TfrmSelEmpresa;

implementation

uses UCOTACAO, UMenu;

{$R *.DFM}

procedure TfrmSelEmpresa.BitBtn1Click(Sender: TObject);
begin
   if wwDBLookupCombo1.Text = '' then begin
       ShowMessage('Selecione uma empresa');
       Abort;
   end;

   frmCotacao.FIL_CODI := wwDBLookupCombo1.LookupValue;
   self.Close;


end;

procedure TfrmSelEmpresa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ADOQuery1.Close;
  Action := caFree;
  frmSelEmpresa := nil;
end;

procedure TfrmSelEmpresa.FormCreate(Sender: TObject);
begin
 ADOQuery1.Open;
end;

procedure TfrmSelEmpresa.BitBtn2Click(Sender: TObject);
begin
   frmCotacao.FIL_CODI := '';
   self.Close;
end;

end.
