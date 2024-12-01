unit UfrmAcertaDestConh;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Buttons, Mask, wwdblook, Db, ADODB,
  DBTables, Wwquery;

type
  TfrmAcertaDestConh = class(TForm)
    wwDBLookupCombo1: TwwDBLookupCombo;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    BitBtn1: TBitBtn;
    wwDBGrid1: TwwDBGrid;
    qrCLFIN: TwwQuery;
    Button1: TButton;
    qrBusca: TwwQuery;
    qrBuscaORD_CONH: TStringField;
    qrBuscaORD_DATA: TDateTimeField;
    DataSource1: TDataSource;
    qrAux: TwwQuery;
    qrBuscaORD_ID: TAutoIncField;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAcertaDestConh: TfrmAcertaDestConh;

implementation

uses UMenu;

{$R *.DFM}

procedure TfrmAcertaDestConh.FormCreate(Sender: TObject);
begin
  qrCLFIN.OPEN;
end;

procedure TfrmAcertaDestConh.BitBtn1Click(Sender: TObject);
begin
   WITH qrBusca DO BEGIN
       CLOSE;
       Params[0].AsString := FormatDateTime('YYYYMMDD', StrToDate(MaskEdit1.Text));
       Params[1].AsString := FormatDateTime('YYYYMMDD', StrToDate(MaskEdit2.Text));
       Open;
   end;
end;

procedure TfrmAcertaDestConh.Button1Click(Sender: TObject);
begin
  IF wwDBLookupCombo1.Text = '' then BEGIN
      ShowMessage('Informe um cliente final');
      Abort;
  end;

   with qrAux do begin
      close;
      sql.Clear;
      sql.Add('update ordem_coleta_Entrega set clif_id = ' + wwDBLookupCombo1.LookupValue);
      sql.Add('where ord_id = ' + qrBuscaORD_ID.AsString);
      ExecSQL;
   end;
  
   WITH qrBusca DO BEGIN
       CLOSE;
       Params[0].AsString := FormatDateTime('YYYYMMDD', StrToDate(MaskEdit1.Text));
       Params[1].AsString := FormatDateTime('YYYYMMDD', StrToDate(MaskEdit2.Text));
       Open;
   end;

   wwDBLookupCombo1.Text := '';


end;

end.
