unit UfrmSelConhecimentos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RzButton, ExtCtrls, RzPanel, Grids, DBGrids, Db, ADODB, Wwdbigrd,
  Wwdbgrid, DBClient, Provider, StdCtrls, DBCtrls;

type
  TfrmSelConhecimentos = class(TForm)
    RzGroupBox1: TRzGroupBox;
    RzBitBtn1: TRzBitBtn;
    RzBitBtn3: TRzBitBtn;
    qrOCE: TADOQuery;
    qrOCESEL: TStringField;
    qrOCEORD_DATA: TDateTimeField;
    qrOCEORD_CONH: TStringField;
    qrOCEORD_NOTAS: TStringField;
    qrOCECLIN_RAZA: TStringField;
    qrOCECLIF_RAZA: TStringField;
    qrOCEORD_VLR_FRETE: TFloatField;
    qrOCEORD_VLR_OUTROS: TFloatField;
    qrOCEORD_VLR_ICMS: TFloatField;
    qrOCEORD_TOTALPREST: TFloatField;
    DataSource1: TDataSource;
    wwDBGrid1: TwwDBGrid;
    dspOCE: TDataSetProvider;
    cdsOCE: TClientDataSet;
    cdsOCESEL: TStringField;
    cdsOCEORD_CONH: TStringField;
    cdsOCECLIN_RAZA: TStringField;
    cdsOCECLIF_RAZA: TStringField;
    cdsOCEORD_VLR_FRETE: TFloatField;
    cdsOCEORD_VLR_OUTROS: TFloatField;
    cdsOCEORD_VLR_ICMS: TFloatField;
    cdsOCEORD_TOTALPREST: TFloatField;
    cdsOCEORD_NOTAS: TStringField;
    cdsOCEORD_DATA: TDateTimeField;
    qrOCEORD_ID: TAutoIncField;
    cdsOCEORD_ID: TAutoIncField;
    RzBitBtn2: TRzBitBtn;
    qrAux: TADOQuery;
    qrOCEOS_ID: TIntegerField;
    cdsOCEOS_ID: TIntegerField;
    DBText1: TDBText;
    Label1: TLabel;
    procedure cdsOCESELChange(Sender: TField);
    procedure cdsOCEAfterPost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure RzBitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSelConhecimentos: TfrmSelConhecimentos;

implementation

uses UMenu, UFaturamento;

{$R *.DFM}

procedure TfrmSelConhecimentos.cdsOCESELChange(Sender: TField);
begin
  cdsOCE.Post;
end;

procedure TfrmSelConhecimentos.cdsOCEAfterPost(DataSet: TDataSet);
begin
  cdsOCE.ApplyUpdates(0);
end;

procedure TfrmSelConhecimentos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  frmSelConhecimentos := nil;
end;

procedure TfrmSelConhecimentos.RzBitBtn2Click(Sender: TObject);
begin
  if cdsOCE.State = dsEdit then
        cdsOCE.Post;
  close;
end;

procedure TfrmSelConhecimentos.RzBitBtn1Click(Sender: TObject);
begin
  with qrAux do begin
      Parameters[0].Value := '*';
      Parameters[1].Value := FFaturamento.Q_OSOS_ID.Value;
      ExecSQL;
  end;
  cdsOCE.Close;
  cdsOCE.Open;
end;

procedure TfrmSelConhecimentos.RzBitBtn3Click(Sender: TObject);
begin
  with qrAux do begin
      Parameters[0].Value := '';
      Parameters[1].Value := FFaturamento.Q_OSOS_ID.Value;
      ExecSQL;
  end;
  cdsOCE.Close;
  cdsOCE.Open;
end;

end.
