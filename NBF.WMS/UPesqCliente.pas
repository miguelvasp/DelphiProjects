unit UPesqCliente;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Wwdatsrc, DBTables, Wwquery, StdCtrls, wwdblook, Wwdbigrd, Grids,
  Wwdbgrid, Buttons, ExtCtrls;

type
  TFPesqCliente = class(TForm)
    Panel2: TPanel;
    SpeedButton3: TSpeedButton;
    Label4: TLabel;
    Panel1: TPanel;
    DBG_RAAT: TwwDBGrid;
    DBG_RAATIButton: TwwIButton;
    wwDBLookupCombo4: TwwDBLookupCombo;
    Label35: TLabel;
    Q_CLINBF: TwwQuery;
    Q_CLINBFCLIN_RAZA: TStringField;
    DS_CLINBF2: TwwDataSource;
    Q_CLINBFCLIN_ID: TAutoIncField;
    Q_CLINBF2: TwwQuery;
    Q_CLINBF2CLIN_ID: TAutoIncField;
    Q_CLINBF2CLIN_RAZA: TStringField;
    DS_CLINBF: TwwDataSource;
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBG_RAATDblClick(Sender: TObject);
    procedure DS_CLINBFDataChange(Sender: TObject; Field: TField);
    procedure FormPaint(Sender: TObject);
    procedure wwDBLookupCombo4Enter(Sender: TObject);
    procedure wwDBLookupCombo4Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPesqCliente: TFPesqCliente;

implementation
uses USenha, UCliente ;
{$R *.DFM}

procedure TFPesqCliente.SpeedButton3Click(Sender: TObject);
begin
  close ;
end;

procedure TFPesqCliente.FormCreate(Sender: TObject);
begin
  Q_CLINBF.open ;
  Q_CLINBF2.open ;
 
end;

procedure TFPesqCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Q_CLINBF.close ;
   Q_CLINBF2.close  ;
   action := cafree ;
end;

procedure TFPesqCliente.DBG_RAATDblClick(Sender: TObject);
begin
   StrPesquisa := Q_CLINBF2CLIN_ID.asstring ;
   FPESQCLIENTE.close ;
end;

procedure TFPesqCliente.DS_CLINBFDataChange(Sender: TObject;
  Field: TField);
begin
     If (wwDBLookupCombo4.text <> '') then begin
        Q_CLINBF2.Locate ('CLIN_ID' , Q_CLINBFCLIN_ID.asstring , []);
    end ;
end;

procedure TFPesqCliente.FormPaint(Sender: TObject);
begin
   wwDBLookupCombo4.SETFOCUS;
end;

procedure TFPesqCliente.wwDBLookupCombo4Enter(Sender: TObject);
begin
  (Sender as TwwDBlookupcombo).Color := ClAqua;
end;

procedure TFPesqCliente.wwDBLookupCombo4Exit(Sender: TObject);
begin
  (Sender as TwwDBlookupcombo).Color := ClWINDOW;
end;

end.
