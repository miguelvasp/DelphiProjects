unit ufrmEdocs;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ShellAPI;

type
  TfrmEdocs = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEdocs: TfrmEdocs;

implementation

{$R *.DFM}

procedure TfrmEdocs.Button1Click(Sender: TObject);
var PAth : string;
begin
    PAth := ExtractFilePath(Application.ExeName) + '\NFe\NFe20.exe';
    ShellExecute(handle, nil, Pchar(PAth),nil,nil, SW_SHOWNORMAL);
end;

procedure TfrmEdocs.Button2Click(Sender: TObject);
var PAth : string;
begin
    PAth := ExtractFilePath(Application.ExeName) + '\LeitorNfe\LeitorNFe.exe';
    ShellExecute(handle, nil, Pchar(PAth),nil,nil, SW_SHOWNORMAL);

end;

procedure TfrmEdocs.Button3Click(Sender: TObject);
var PAth : string;
begin
    PAth := ExtractFilePath(Application.ExeName) + '\CTe\CTe.exe';
    ShellExecute(handle, nil, Pchar(PAth),nil,nil, SW_SHOWNORMAL);

end;

procedure TfrmEdocs.Button4Click(Sender: TObject);
var PAth : string;
begin
    PAth := ExtractFilePath(Application.ExeName) + '\LeitorCTe\LeitorConhecimentos.exe';
    ShellExecute(handle, nil, Pchar(PAth),nil,nil, SW_SHOWNORMAL);
end;

procedure TfrmEdocs.Button5Click(Sender: TObject);
var PAth : string;
begin
    PAth := ExtractFilePath(Application.ExeName) + '\NFe 3.10\NFe20.exe';
    ShellExecute(handle, nil, Pchar(PAth),nil,nil, SW_SHOWNORMAL);

end;

procedure TfrmEdocs.Button6Click(Sender: TObject);
var PAth : string;
begin
    PAth := ExtractFilePath(Application.ExeName) + '\MDFe\MDFe.exe';
    ShellExecute(handle, nil, Pchar(PAth),nil,nil, SW_SHOWNORMAL);

end;

end.
