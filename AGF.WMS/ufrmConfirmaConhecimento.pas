unit ufrmConfirmaConhecimento;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, Wwdbigrd, Wwdbgrid, ExtCtrls, Db, ADODB, StdCtrls, wwdblook, Mask;

type
  TfrmConfirmaConhecimento = class(TForm)
    Panel1: TPanel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    edtMani: TEdit;
    Label3: TLabel;
    cboCliente: TwwDBLookupCombo;
    Label4: TLabel;
    Panel2: TPanel;
    Button1: TButton;
    wwDBGrid1: TwwDBGrid;
    qrBusca: TADOQuery;
    DataSource1: TDataSource;
    qrBuscaSEL_CTRC: TStringField;
    qrBuscaORD_ID: TAutoIncField;
    qrBuscaORD_CONH: TStringField;
    qrBuscaMANI_ID: TIntegerField;
    qrBuscaMANI_DATA: TDateTimeField;
    qrBuscaCLIN_RAZA: TStringField;
    qrAux: TADOQuery;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    ADOStoredProc1: TADOStoredProc;
    qrCli: TADOQuery;
    qrCliCLIN_ID: TAutoIncField;
    qrCliCLIN_RAZA: TStringField;
    Label5: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConfirmaConhecimento: TfrmConfirmaConhecimento;

implementation

uses UMenu;

{$R *.DFM}

procedure TfrmConfirmaConhecimento.Button2Click(Sender: TObject);
begin

   with qrAux do begin
       close;
       sql.Clear;
       sql.Add(
         'Update ordem_coleta_entrega set SEL_CTRC = ''N''  WHERE ORD_STATUS = ''A'' '
       );
       ExecSQL;
   end;

   
   with qrBusca do begin
       close;
       SQL.Clear;
       sql.Add(
         ' SELECT '+
         '         A.SEL_CTRC,  '+
         '         A.ORD_ID,  '+
         '         A.ORD_CONH,  '+
         '         A.MANI_ID, '+
         '         B.MANI_DATA,  '+
         '         C.CLIN_RAZA   '+
         ' FROM ORDEM_COLETA_ENTREGA A INNER JOIN MANIFESTO B    '+
         ' ON A.MANI_ID = B.MANI_ID INNER JOIN CLIENTENBF C ON  '+
         ' A.CLIN_ID = C.CLIN_ID   INNER JOIN OEC_AUX X  '+                           
         ' ON A.ORD_ID = X.ORD_ID '+
         ' WHERE A.ORD_STATUS = ''A''   '
       );

       IF MaskEdit1.Text <> '  /  /    ' then
         SQL.Add(' AND CONVERT(CHAR(10), B.MANI_DATA, 112) >= ' + QuotedStr(FormatDateTime('yyyyMMdd', StrToDate(MaskEdit1.Text))) );

       IF MaskEdit2.Text <> '  /  /    ' then
         SQL.Add(' AND CONVERT(CHAR(10), B.MANI_DATA, 112) <= ' + QuotedStr(FormatDateTime('yyyyMMdd', StrToDate(MaskEdit2.Text))) );

       if edtMani.Text <> '' then
         sql.Add(' and a.mani_id = ' + edtMani.Text);

       if cboCliente.Text <> '' then
         SQL.Add(' and a.clin_id = ' + cboCliente.LookupValue );

       sql.Add('order by a.mani_id, a.ord_conh');

       Open;

   end;
end;

procedure TfrmConfirmaConhecimento.Button3Click(Sender: TObject);
begin
   qrBusca.First;
   while not qrBusca.eof do begin
      qrBusca.Edit;
      qrBuscaSEL_CTRC.Value := 'S';
      qrBusca.Post;
      qrBusca.Next;
   end     ;
   qrBusca.First;
end;

procedure TfrmConfirmaConhecimento.Button4Click(Sender: TObject);
begin
qrBusca.First;
   while not qrBusca.eof do begin
      qrBusca.Edit;
      qrBuscaSEL_CTRC.Value := 'N';
      qrBusca.Post;
      qrBusca.Next;
   end  ;
   qrBusca.First;
end;

procedure TfrmConfirmaConhecimento.Button1Click(Sender: TObject);
begin

   IF qrBusca.State = dsEdit then
        qrBusca.Post;

   IF MessageBox(Self.Handle, 'Confirma a operação?', 'Confirmação', MB_YESNO + MB_ICONQUESTION) = 7 then
        Abort;

   qrBusca.First;
   while not qrBusca.Eof do begin
     if qrBuscaSEL_CTRC.Value = 'S' then begin
        ADOStoredProc1.Parameters.ParamByName('@ORD_ID').Value := qrBuscaORD_ID.AsInteger;
        ADOStoredProc1.ExecProc;
     end;
     qrBusca.Next;
     Application.ProcessMessages;
   end;

   ShowMessage('Alterações efetuadas com sucesso!');
   Button2.Click;

   
end;

procedure TfrmConfirmaConhecimento.FormShow(Sender: TObject);
begin
   qrCli.Open;
end;

end.
