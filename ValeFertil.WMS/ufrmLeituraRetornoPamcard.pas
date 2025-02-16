unit ufrmLeituraRetornoPamcard;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, RzTreeVw, RzShellCtrls, ExtCtrls, FileCtrl, Db,
  Grids, Wwdbigrd, Wwdbgrid, ADODB;

type
  TfrmLeituraRetornoPamcard = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    RzShellTree1: TRzShellTree;
    Panel2: TPanel;
    Panel3: TPanel;
    Button1: TButton;
    qrArquivos: TADOQuery;
    qrArquivosid: TAutoIncField;
    qrArquivosSEL: TStringField;
    qrArquivosNOME: TStringField;
    qrArquivosCH: TIntegerField;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    Panel4: TPanel;
    wwDBGrid1: TwwDBGrid;
    FileListBox1: TFileListBox;
    Panel5: TPanel;
    Label2: TLabel;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    function AchaValor(valorProcurado, valorArquivo : string) : string;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLeituraRetornoPamcard: TfrmLeituraRetornoPamcard;

implementation

uses UMenu;

{$R *.DFM}

procedure TfrmLeituraRetornoPamcard.Button1Click(Sender: TObject);
var i : Integer;
   aux, ext : string;
begin
   FileListBox1.Directory := RzShellTree1.SelectedPathName;


   with ADOQuery1 do begin
       Close;
       sql.Clear;
       sql.Add('delete from PamcardRetornoArquivos where ch = ' + FMenu.SqlUsuariosCH.AsString);
       ExecSQL;
   end;

   qrArquivos.close;
   //qrArquivos.Parameters[0].Value := FMenu.SqlUsuariosCH.AsInteger;
   qrArquivos.Open;

   for i := 0 to FileListBox1.Items.Count -1 do begin
       aux := FileListBox1.Items[i];
       ext := ExtractFileExt(aux);
       if (UpperCase(ext) = '.TMP') or (UpperCase(ext) = '.TXT') then begin
           qrArquivos.Append;
           qrArquivosSEL.Value := 'N'  ;
           qrArquivosNOME.Value := aux;
           qrArquivosCH.Value := FMenu.SqlUsuariosCH.AsInteger;
           qrArquivos.Post;
       end;
   end;
   qrArquivos.close;
   //qrArquivos.Parameters[0].Value := FMenu.SqlUsuariosCH.AsInteger;
   qrArquivos.Open;
end;

procedure TfrmLeituraRetornoPamcard.FormShow(Sender: TObject);
begin
   with ADOQuery1 do begin
       Close;
       sql.Clear;
       sql.Add('delete from PamcardRetornoArquivos where ch = ' + FMenu.SqlUsuariosCH.AsString);
       ExecSQL;
   end;
end;

procedure TfrmLeituraRetornoPamcard.Button2Click(Sender: TObject);
var FileName : string;
    numero, extensao : string;
    f : TStringList;
    I : Integer;
    texto : string;
begin
   F := TStringList.Create;
   F.Clear;
   qrArquivos.First;
   while not qrArquivos.Eof do begin
        FileName := qrArquivosNOME.AsString;
        numero := ExtractFileName(FileName);
        F.LoadFromFile(RzShellTree1.SelectedPathName + '\' + FileName);

        FOR I := 0 TO F.Count - 1 DO begin
             //buscamos o codigo de retorno
        end;

        qrArquivos.next;
        Application.ProcessMessages;
   end;
end;

function TfrmLeituraRetornoPamcard.AchaValor(valorProcurado,
  valorArquivo: string): string;
  var Aux1, Aux2, Retorno : string;
begin
     Aux1 := Copy(valorArquivo, 0, Length(valorProcurado));
     Aux2 := Copy(valorArquivo,Length(valorProcurado), Length(valorArquivo) - Length(valorProcurado) );
     Retorno := '';
     if Aux1 = valorProcurado then begin
        Retorno := Aux2;
     end;
     Result := Retorno;
end;

end.
