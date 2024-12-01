unit ufrmRecebimentoConferencia;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, Wwdbigrd, Wwdbgrid, StdCtrls, ExtCtrls, Db, ADODB;

type
  TfrmRecebimentoConferencia = class(TForm)
    qrConsultaEAN: TADOQuery;
    qrConsultaEANMAT_DESC: TStringField;
    qrConsultaEANUni_Sigla: TStringField;
    qrConsultaEANEAN: TStringField;
    qrConsultaEANQtde: TFloatField;
    qrConsultaEANQtdeConferencia: TFloatField;
    qrMateriais: TADOQuery;
    qrMateriaisMAT_DESC: TStringField;
    qrMateriaisUni_Sigla: TStringField;
    qrMateriaisEAN: TStringField;
    qrMateriaisQtde: TFloatField;
    qrMateriaisQtdeConferencia: TFloatField;
    DataSource1: TDataSource;
    qrAux: TADOQuery;
    lbRecebimento: TLabel;
    Label2: TLabel;
    RadioGroup1: TRadioGroup;
    Label1: TLabel;
    edtEAN: TEdit;
    Label3: TLabel;
    edtQtde: TEdit;
    Button1: TButton;
    lbMaterial: TLabel;
    wwDBGrid1: TwwDBGrid;
    qrMateriaisRec_Item_ID: TAutoIncField;
    qrConsultaEANRec_Item_ID: TAutoIncField;
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
  frmRecebimentoConferencia: TfrmRecebimentoConferencia;

implementation

{$R *.DFM}

procedure TfrmRecebimentoConferencia.edtEANKeyPress(Sender: TObject;
  var Key: Char);
var Qtde: Real;
begin
     if key = #13 then
     begin
       key := #0;



       qrConsultaEAN.Close;
       qrConsultaEAN.Parameters[0].Value := StrToInt(lbRecebimento.Caption);
       qrConsultaEAN.Parameters[1].Value := Trim(edtEAN.Text);
       qrConsultaEAN.Open;
       lbMaterial.Caption := qrConsultaEANMAT_DESC.AsString;

          if qrConsultaEANRec_Item_ID.AsString = '' then begin
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
             qrAux.sql.Add('UPDATE Rec_Item SET QtdeConferencia = ' + FloatToStr(Qtde) + ' WHERE Rec_Item_ID = ' + qrConsultaEANRec_Item_ID.AsString);
             qrAux.ExecSQL;

             qrMateriais.close;
             qrMateriais.Parameters[0].Value := StrToInt(lbRecebimento.Caption);
             qrMateriais.Open;
             edtEAN.Text := '';
             edtQtde.Text := '1';
             edtEAN.SetFocus;
       end else begin
             edtQtde.SetFocus;
       end;



     end;

end;

procedure TfrmRecebimentoConferencia.RadioGroup1Click(Sender: TObject);
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

procedure TfrmRecebimentoConferencia.FormShow(Sender: TObject);
begin
  qrMateriais.close;
  qrMateriais.Parameters[0].Value := StrToInt(lbRecebimento.Caption);
  qrMateriais.Open;
end;

procedure TfrmRecebimentoConferencia.Button1Click(Sender: TObject);
begin
       qrConsultaEAN.Close;
       qrConsultaEAN.Parameters[0].Value := StrToInt(lbRecebimento.Caption);
       qrConsultaEAN.Parameters[1].Value := Trim(edtEAN.Text);
       qrConsultaEAN.Open;
       lbMaterial.Caption := qrConsultaEANMAT_DESC.AsString;

       if qrConsultaEANQtde.AsFloat = qrConsultaEANQtdeConferencia.AsFloat then begin
             ShowMessage('Material já foi conferido totalmente');
             Abort;
       end;

       if qrConsultaEANRec_Item_ID.AsString = '' then begin
             ShowMessage('Código EAN não localizado!');
             Abort;
       end;


                qrAux.Close;
             qrAux.sql.Clear;
             qrAux.sql.Add('UPDATE Rec_Item SET QtdeConferencia = QtdeConferencia + ' + edtQtde.Text + ' WHERE Rec_Item_ID = ' + qrConsultaEANRec_Item_ID.AsString);
             qrAux.ExecSQL;

             qrMateriais.close;
             qrMateriais.Parameters[0].Value := StrToInt(lbRecebimento.Caption);
             qrMateriais.Open;
             edtEAN.Text := '';
             edtQtde.Text := '1';
             edtEAN.SetFocus;
end;

end.
