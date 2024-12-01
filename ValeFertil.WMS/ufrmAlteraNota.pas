unit ufrmAlteraNota;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, ADODB;

type
  TfrmAlteraNota = class(TForm)
    qrNF: TADOQuery;
    Edit1: TEdit;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    wwDBGrid1: TwwDBGrid;
    qrNFNFI_NUMERO: TStringField;
    qrNFNFI_DEST_NOME: TStringField;
    qrNFNFI_DEST_RAZA: TStringField;
    qrNFNFI_DEMI: TDateTimeField;
    qrNFTDOC_NOME: TStringField;
    DataSource1: TDataSource;
    qrAux: TADOQuery;
    qrNFNFI_CODI: TAutoIncField;
    qrNFOS_ID: TIntegerField;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAlteraNota: TfrmAlteraNota;

implementation

uses UMenu;

{$R *.DFM}

procedure TfrmAlteraNota.Button1Click(Sender: TObject);
begin
   with qrNF do begin
       close;
       sql.Clear;
       sql.Add(

            'SELECT    NF.NFI_CODI, NF.OS_ID, NF.NFI_NUMERO, NF.NFI_DEST_NOME, NF.NFI_DEST_RAZA, NF.NFI_DEMI, TPDOC.TDOC_NOME '+
            'FROM         NF INNER JOIN '+
            '                      TPDOC ON NF.TDOC_ID = TPDOC.TDOC_ID '+
            ' where NF.TDOC_ID IN (1, 2) AND nfi_numero like ' + QuotedStr( Edit1.Text )
                   );
        open;
   end;
   
end;

procedure TfrmAlteraNota.Button2Click(Sender: TObject);
begin
  if MessageBox(self.handle, 'Confirma a operação?', 'confirmação', MB_YESNO ) = 6 then begin
      with qrAux do begin
          close;
          sql.Clear;
          sql.Add('delete from nf_itens where nfi_codi = ' + qrNFNFI_CODI.AsString);
          ExecSQL;
      end;
      with qrAux do begin
          close;
          sql.Clear;
          sql.Add('delete from nf where nfi_codi = ' + qrNFNFI_CODI.AsString);
          ExecSQL;
      end;

      Button1.Click;
  end;

end;

end.
