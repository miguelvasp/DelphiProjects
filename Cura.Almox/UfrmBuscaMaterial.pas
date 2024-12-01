unit UfrmBuscaMaterial;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, StdCtrls, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls;

type
  TfrmBuscaMaterial = class(TForm)
    Panel1: TPanel;
    edtBuscar: TEdit;
    Label1: TLabel;
    wwDBGrid1: TwwDBGrid;
    Panel2: TPanel;
    Button1: TButton;
    qrBusca: TADOQuery;
    qrBuscaMAT_ID: TAutoIncField;
    qrBuscaMAT_DESC: TStringField;
    qrBuscaCodigoMaterial: TStringField;
    RadioGroup1: TRadioGroup;
    lbSelecao: TLabel;
    DataSource1: TDataSource;
    Panel3: TPanel;
    chkConsideraMarca: TCheckBox;
    qrBuscaMARCA_DESC: TStringField;
    qrBuscaMARCA_ID: TIntegerField;
    qrBuscaMATMARCA_ID: TIntegerField;
    procedure edtBuscarChange(Sender: TObject);
    procedure edtBuscarKeyPress(Sender: TObject; var Key: Char);
    procedure edtBuscarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBuscaMaterial: TfrmBuscaMaterial;

implementation

uses UMenu;

{$R *.DFM}

procedure TfrmBuscaMaterial.edtBuscarChange(Sender: TObject);
begin


        with qrBusca do begin
            Close;
            SQL.Clear;
            if chkConsideraMarca.Checked then
                SQL.Add('SELECT * FROM VW_ConsultaMaterial')
            else
                SQL.Add('SELECT DISTINCT MAT_ID, MAT_DESC, CodigoMaterial, '''' MARCA_DESC, 0 MARCA_ID, 0 MATMARCA_ID FROM VW_ConsultaMaterial');
            SQL.Add(' WHERE CODIGOMATERIAL = ' + QuotedStr( edtBuscar.Text  ));
            SQL.Add(' OR MAT_DESC LIKE ' + QuotedStr('%' + edtBuscar.Text + '%'));
            if RadioGroup1.ItemIndex = 0 then
                SQL.Add('ORDER BY CODIGOMATERIAL')
            else
                SQL.Add('ORDER BY MAT_DESC');
            Open;
        end;

     
end;

procedure TfrmBuscaMaterial.edtBuscarKeyPress(Sender: TObject;
  var Key: Char);
begin
   if key = #13 then begin
      Key := #0;
      if (qrBusca.Active = True) AND (qrBuscaMAT_ID.AsString <> '') then
      begin
        if chkConsideraMarca.Checked then
           lbSelecao.Caption := qrBuscaMATMARCA_ID.AsString
        else
           lbSelecao.Caption := qrBuscaMAT_ID.AsString;
          qrBusca.Close;
          Self.Close;
      end;
   end;
end;

procedure TfrmBuscaMaterial.edtBuscarKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   try
       if key = vk_up then
          qrBusca.Prior;

       if Key = vk_down then
          qrBusca.Next;
   except

   end;
end;

procedure TfrmBuscaMaterial.Button1Click(Sender: TObject);
begin
 if (qrBusca.Active = True) AND (qrBuscaMAT_ID.AsString <> '') then
      begin
          lbSelecao.Caption := qrBuscaMAT_ID.AsString;
          qrBusca.Close;
          Self.Close;
      end;
end;

end.
