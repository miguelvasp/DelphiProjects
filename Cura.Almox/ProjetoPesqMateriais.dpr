program ProjetoPesqMateriais;

uses
  Forms,
  UPesqMateriais in 'UPesqMateriais.pas' {frmPesqMateriais};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TfrmPesqMateriais, frmPesqMateriais);
  Application.Run;
end.
