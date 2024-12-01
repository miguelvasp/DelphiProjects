unit UfrmBuscaTrans;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, Wwdbigrd, Wwdbgrid, Db, ADODB, StdCtrls;

type
  TfrmBuscaTrans = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    qrTrans: TADOQuery;
    qrTransTRANS_ID: TAutoIncField;
    qrTransTRANS_FANTASIA: TStringField;
    qrTransTRANS_CNPJ: TStringField;
    wwDBGrid1: TwwDBGrid;
    DataSource1: TDataSource;
    Button1: TButton;
    procedure Edit1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBuscaTrans: TfrmBuscaTrans;

implementation

uses UMenu, UNFGenerica;

{$R *.DFM}

procedure TfrmBuscaTrans.Edit1Change(Sender: TObject);
begin
   //
   with qrTrans do begin
       close;
       sql.Clear;
       sql.Add(
           ' SELECT '+
           '         A.TRANS_ID, '+
           '         A.TRANS_FANTASIA, '+
           '         A.TRANS_CNPJ '+
           ' FROM TRANSPORTADORA A  '+
           ' where A.TRANS_FANTASIA like ' + QuotedStr('%' + Edit1.Text + '%') +
           ' order by A.TRANS_FANTASIA '
       );
       Open;
   end;
   
end;

procedure TfrmBuscaTrans.Button1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmBuscaTrans.wwDBGrid1DblClick(Sender: TObject);
begin
  if qrTransTRANS_ID.AsString = '' then Abort;

  with  FNFGenerica do
  begin
        q_nf.Edit;
        Q_NFTRANS_ID.AsInteger :=  qrTransTRANS_ID.AsInteger;
        Q_NFNFI_TRAN.AsString := qrTransTRANS_FANTASIA.AsString;
        Q_NF.Post;
  end;
  close;
end;

procedure TfrmBuscaTrans.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  frmBuscaTrans    := nil;
end;

end.
