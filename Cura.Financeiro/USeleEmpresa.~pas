unit USeleEmpresa;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RzButton, StdCtrls, Grids, Wwdbigrd, Wwdbgrid, Db, DBTables, Wwquery;

type
  TfrmSeleEmpresa = class(TForm)
    wwDBGrid1: TwwDBGrid;
    RzBitBtn1: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    RzBitBtn3: TRzBitBtn;
    Q_EMP: TwwQuery;
    Q_EMPFIL_CODI: TStringField;
    Q_EMPFIL_DESC: TStringField;
    Q_EMPSEL: TStringField;
    dsEmpresa: TDataSource;
    UpdateSQL1: TUpdateSQL;
    Q_EMPRAZAO: TStringField;
    qrEmpTemp: TwwQuery;
    qrEmpTempUSUARIO: TIntegerField;
    qrEmpTempFIL_CODI: TStringField;
    qrEmpTempSEL: TStringField;
    wwQuery1: TwwQuery;
    qrEmpTempEMPRESA: TStringField;
    qrEmpTempid: TAutoIncField;
    QRADD: TwwQuery;
    procedure RzBitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Q_EMPAfterPost(DataSet: TDataSet);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure RzBitBtn3Click(Sender: TObject);
    procedure qrEmpTempAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSeleEmpresa: TfrmSeleEmpresa;

implementation

uses CPPMENU;

{$R *.DFM}

procedure TfrmSeleEmpresa.RzBitBtn1Click(Sender: TObject);
begin
   if Q_EMP.State in [dsedit, dsInsert] then
     Q_EMP.Post;
  Close;
end;

procedure TfrmSeleEmpresa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  IF qrEmpTemp.State IN [DSEDIT, DSINSERT] then
        qrEmpTemp.Post;
        
  Action := caFree;
  frmSeleEmpresa := nil;
end;

procedure TfrmSeleEmpresa.FormCreate(Sender: TObject);
begin
  //FMenu.LimpaEmpresas;
  Q_EMP.Open;

  wwQuery1.Params[0].AsInteger := FMenu.sqlUsuariosCH.Value;
  wwQuery1.ExecSQL;

  qrEmpTemp.Params[0].AsInteger := FMenu.sqlUsuariosCH.Value;
  qrEmpTemp.Open;

  Q_EMP.First;
  WHILE not Q_EMP.Eof do
  begin

      QRADD.Params[0].AsInteger := FMenu.sqlUsuariosCH.Value;
      QRADD.PARAMS[1].AsString := Q_EMPFIL_CODI.Value;
      QRADD.PARAMS[2].AsString := 'N';
      QRADD.ExecSQL;
      Q_EMP.Next;
  end;

  qrEmpTemp.CLOSE;
  qrEmpTemp.Open;
  qrEmpTemp.First;

end;

procedure TfrmSeleEmpresa.Q_EMPAfterPost(DataSet: TDataSet);
begin
  try
     FMenu.DATABASE1.ApplyUpdates([Q_EMP]);
  except
    begin
      Q_EMP.RevertRecord;
    end;
  end;
end;

procedure TfrmSeleEmpresa.RzBitBtn2Click(Sender: TObject);
begin
  qrEmpTemp.First;
  while not qrEmpTemp.Eof do
  begin
      qrEmpTemp.Edit;
      qrEmpTempSEL.AsString := '*';
      qrEmpTemp.Post;
      qrEmpTemp.Next;
  end;
  qrEmpTemp.First;
end;

procedure TfrmSeleEmpresa.RzBitBtn3Click(Sender: TObject);
begin
  qrEmpTemp.First;
  while not qrEmpTemp.Eof do
  begin
      qrEmpTemp.Edit;
      qrEmpTempSEL.AsString := '';
      qrEmpTemp.Post;
      qrEmpTemp.Next;
  end;
  qrEmpTemp.First;
end;

procedure TfrmSeleEmpresa.qrEmpTempAfterPost(DataSet: TDataSet);
begin
try
  FMenu.DATABASE1.ApplyUpdates([qrEmpTemp]);
  except
    begin
      qrEmpTemp.RevertRecord;
    end;
  end;
end;

end.
