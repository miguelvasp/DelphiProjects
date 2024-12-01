unit ufrmRequisicaoConferencia;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, ExtCtrls;

type
  TfrmRequisicaoConferencia = class(TForm)
    wwDBGrid1: TwwDBGrid;
    qrMateriais: TADOQuery;
    qrMateriaisMAT_DESC: TStringField;
    qrMateriaisUni_Sigla: TStringField;
    qrMateriaisEAN: TStringField;
    qrMateriaisQtde: TFloatField;
    qrMateriaisQtdeConferencia: TFloatField;
    lbRequisicao: TLabel;
    Label2: TLabel;
    edtEAN: TEdit;
    Label1: TLabel;
    lbMaterial: TLabel;
    edtQtde: TEdit;
    Label3: TLabel;
    qrConsultaEAN: TADOQuery;
    qrMateriaisReq_Item_ID: TAutoIncField;
    qrConsultaEANReq_Item_ID: TAutoIncField;
    qrConsultaEANMAT_DESC: TStringField;
    qrConsultaEANUni_Sigla: TStringField;
    qrConsultaEANEAN: TStringField;
    qrConsultaEANQtde: TFloatField;
    qrConsultaEANQtdeConferencia: TFloatField;
    RadioGroup1: TRadioGroup;
    qrAux: TADOQuery;
    Button1: TButton;
    DataSource1: TDataSource;
    procedure edtEANKeyPress(Sender: TObject; var Key: Char);
    procedure RadioGroup1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRequisicaoConferencia: TfrmRequisicaoConferencia;

implementation

uses UMenu;

{$R *.DFM}

procedure TfrmRequisicaoConferencia.edtEANKeyPress(Sender: TObject; var Key: Char);
var Qtde: Real;
begin
     if key = #13 then
     begin
       key := #0;



       qrConsultaEAN.Close;
       qrConsultaEAN.Parameters[0].Value := StrToInt(lbRequisicao.Caption);
       qrConsultaEAN.Parameters[1].Value := Trim(edtEAN.Text);
       qrConsultaEAN.Open;
       lbMaterial.Caption := qrConsultaEANMAT_DESC.AsString;

          if qrConsultaEANReq_Item_ID.AsString = '' then begin
             ShowMessage('Código EAN não localizado!');
             edtEAN.Text := '';
             edtQtde.Text := '1';
             edtEAN.SetFocus;
             Abort;
       end;


       if qrConsultaEANQtde.AsFloat = qrConsultaEANQtdeConferencia.AsFloat then begin
             ShowMessage('Material já foi conferido totalmente');
             edtEAN.Text := '';
             edtQtde.Text := '1';
             edtEAN.SetFocus;
             Abort;
       end;




       //passando as validações ele adicioina o item a conferencia
       Qtde := qrConsultaEANQtdeConferencia.AsFloat + 1;

       if RadioGroup1.ItemIndex = 0 then begin
             qrAux.Close;
             qrAux.sql.Clear;
             qrAux.sql.Add('UPDATE Req_Item SET QtdeConferencia = ' + FloatToStr(Qtde) + ' WHERE Req_Item_ID = ' + qrConsultaEANReq_Item_ID.AsString);
             qrAux.ExecSQL;

             qrMateriais.close;
             qrMateriais.Parameters[0].Value := StrToInt(lbRequisicao.Caption);
             qrMateriais.Open;
             edtEAN.Text := '';
             edtQtde.Text := '1';
             edtEAN.SetFocus;
       end else begin
             edtQtde.SetFocus;
       end;



     end;
end;

procedure TfrmRequisicaoConferencia.RadioGroup1Click(Sender: TObject);
begin
  if RadioGroup1.ItemIndex = 0 then begin
     Label3.Visible := False;
     edtQtde.Visible := False;
     Button1.Visible := False;
  end
  else begin
     Label3.Visible := true;
     edtQtde.Visible := true;
     edtQtde.Text := '1';
     Button1.Visible := true;
  end;
end;

procedure TfrmRequisicaoConferencia.FormShow(Sender: TObject);
begin
  qrMateriais.close;
  qrMateriais.Parameters[0].Value := StrToInt(lbRequisicao.Caption);
  qrMateriais.Open;
end;

procedure TfrmRequisicaoConferencia.Button1Click(Sender: TObject);
begin
       qrConsultaEAN.Close;
       qrConsultaEAN.Parameters[0].Value := StrToInt(lbRequisicao.Caption);
       qrConsultaEAN.Parameters[1].Value := Trim(edtEAN.Text);
       qrConsultaEAN.Open;
       lbMaterial.Caption := qrConsultaEANMAT_DESC.AsString;

       if qrConsultaEANQtde.AsFloat = qrConsultaEANQtdeConferencia.AsFloat then begin
             ShowMessage('Material já foi conferido totalmente');
             Abort;
       end;

       if qrConsultaEANReq_Item_ID.AsString = '' then begin
             ShowMessage('Código EAN não localizado!');
             Abort;
       end;


                qrAux.Close;
             qrAux.sql.Clear;
             qrAux.sql.Add('UPDATE Req_Item SET QtdeConferencia = QtdeConferencia + ' + edtQtde.Text + ' WHERE Req_Item_ID = ' + qrConsultaEANReq_Item_ID.AsString);
             qrAux.ExecSQL;

             qrMateriais.close;
             qrMateriais.Parameters[0].Value := StrToInt(lbRequisicao.Caption);
             qrMateriais.Open;
             edtEAN.Text := '';
             edtQtde.Text := '1';
             edtEAN.SetFocus;
end;

end.
