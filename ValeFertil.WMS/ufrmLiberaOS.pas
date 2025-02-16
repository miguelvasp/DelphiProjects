unit ufrmLiberaOS;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, StdCtrls;

type
  TfrmLiberaOS = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    Button1: TButton;
    ADOQuery1: TADOQuery;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLiberaOS: TfrmLiberaOS;

implementation

uses UMenu;

{$R *.DFM}

procedure TfrmLiberaOS.Button1Click(Sender: TObject);
var OK : string;
begin
   if CheckBox1.Checked then begin
       with ADOQuery1 do begin
           close;
           sql.Clear;
           sql.Add('update OS set os_concluida = ''N'' where OS_ID = ' + Edit1.Text);
           ExecSQL;
       end;
       OK := '1';
   end;
   if CheckBox2.Checked then begin
       with ADOQuery1 do begin
           close;
           sql.Clear;
           sql.Add('delete from OEC_AUX where ORD_ID in (SELECT ORD_ID FROM ORDEM_COLETA_ENTREGA WHERE OS_ID = ' + Edit1.Text + ' )');
           ExecSQL;
       end;
       OK := '2';
   end;

   IF OK = '' then ShowMessage('Nenhuma atualização foi efetuada')
   else begin
        ShowMessage('Alterações efetuadas com sucesso!');
        self.Close;
   end;



end;

procedure TfrmLiberaOS.Button2Click(Sender: TObject);
begin
     with ADOQuery1 do begin
           close;
           sql.Clear;
           sql.Add('update OS set os_concluida = ''S'' where OS_ID = ' + Edit1.Text);
           ExecSQL;
       end;
       ShowMessage('Alterações efetuadas com sucesso!');
       self.Close;
end;

end.
