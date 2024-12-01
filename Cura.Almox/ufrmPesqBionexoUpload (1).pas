unit ufrmPesqBionexoUpload;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Mask, wwdblook, DBTables,
  Wwquery;

type
  TfrmPesqBionexoUpload = class(TForm)
    wwDBLookupCombo1: TwwDBLookupCombo;
    Label1: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    wwDBGrid1: TwwDBGrid;
    qrBusca: TADOQuery;
    Button2: TButton;
    Button3: TButton;
    qrBuscaBIOID: TAutoIncField;
    qrBuscaDATA: TDateTimeField;
    qrBuscacodBionexo: TStringField;
    qrBuscaMAT_DESC: TStringField;
    qrBuscaQtdeTotal: TFloatField;
    DataSource1: TDataSource;
    Q_MAT: TwwQuery;
    Q_MATMAT_DESC: TStringField;
    Q_MATMAT_ID: TAutoIncField;
    Q_MATCOD_BIONEXO: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesqBionexoUpload: TfrmPesqBionexoUpload;

implementation

uses UMenu, ufrmBionexoUpload;

{$R *.DFM}

procedure TfrmPesqBionexoUpload.FormCreate(Sender: TObject);
begin
  MaskEdit1.Text := DateToStr(Now);
  MaskEdit2.Text := DateToStr(Now);
  q_mat.open;
end;

procedure TfrmPesqBionexoUpload.Button1Click(Sender: TObject);
begin
  with qrBusca do begin
      close;
      sql.Clear;
      sql.Add(
         ' SELECT  '+
         '         A.BIOID,   '+
         '         A.DATA,   '+
         '         B.codBionexo,   '+
         '         B.MAT_DESC,  '+
         '         B.QtdeTotal     '+
         ' FROM bionexoUpload a inner join bionexoUploadItens b    '+
         ' on a.bioId = b.BioId   ' +
         ' where convert(varchar, a.data, 112) >= ' + QuotedStr(FormatDateTime('yyyyMMdd', StrToDate(MaskEdit1.Text)))  +
         ' and convert(varchar, a.data, 112) <= ' +  QuotedStr(FormatDateTime('yyyyMMdd', StrToDate(MaskEdit2.Text)))
      )   ;

      IF wwDBLookupCombo1.Text <> '' then
        SQL.Add(' AND B.MAT_ID = ' + wwDBLookupCombo1.LookupValue);

      sql.Add(' order by A.DATA DESC');
      Open;
  end;
end;

procedure TfrmPesqBionexoUpload.Button3Click(Sender: TObject);
begin
  if qrBusca.IsEmpty = False then begin
    frmBionexoUpload := TfrmBionexoUpload.Create(Self);
    frmBionexoUpload.qrBionexo.close;
    frmBionexoUpload.qrBionexo.Parameters[0].Value := qrBuscaBIOID.AsInteger;
    frmBionexoUpload.qrBionexo.Open;
    frmBionexoUpload.ShowModal;
  end;
end;

procedure TfrmPesqBionexoUpload.Button2Click(Sender: TObject);
begin
    frmBionexoUpload := TfrmBionexoUpload.Create(Self);
    frmBionexoUpload.qrBionexo.close;
    frmBionexoUpload.qrBionexo.Parameters[0].Value := 0;
    frmBionexoUpload.qrBionexo.Open;
    frmBionexoUpload.SpeedButton2.Click;
    frmBionexoUpload.ShowModal;
end;

procedure TfrmPesqBionexoUpload.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  frmPesqBionexoUpload := nil;
end;

end.
