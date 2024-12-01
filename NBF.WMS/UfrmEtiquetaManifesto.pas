unit UfrmEtiquetaManifesto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, StdCtrls, Grids, Wwdbigrd, Wwdbgrid, QuickRpt, Barcode,
  ExtCtrls, Qrctrls;

type
  TfrmEtiquetaManifesto = class(TForm)
    wwDBGrid1: TwwDBGrid;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    qrBusca: TADOQuery;
    qrBuscaNFI_NUMERO: TStringField;
    qrBuscaNFI_DEST_RAZA: TStringField;
    qrBuscaPRO_COD: TStringField;
    qrBuscaINF_QTDE: TFloatField;
    qrBuscaQTDE_UVUE: TFloatField;
    DataSource1: TDataSource;
    qrBuscaNFI_CODI: TAutoIncField;
    qrBuscaPRO_ID: TIntegerField;
    qrExec: TADOQuery;
    qrBuscaCLIN_RAZA: TStringField;
    Quickrep1: TQuickRep;
    Barcode1: TBarcode;
    DetailBand1: TQRBand;
    qrRel: TADOQuery;
    qrRelNUMERO: TStringField;
    qrRelCLIENTE: TStringField;
    qrRelPRODUTO: TStringField;
    qrRelCH: TIntegerField;
    QRDBText1: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText3: TQRDBText;
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEtiquetaManifesto: TfrmEtiquetaManifesto;

implementation

uses UMenu;

{$R *.DFM}

procedure TfrmEtiquetaManifesto.DataSource1DataChange(Sender: TObject; Field: TField);
begin
   edit1.Text := IntToStr(qrBuscaINF_QTDE.AsInteger);
end;

procedure TfrmEtiquetaManifesto.Button1Click(Sender: TObject);
begin
   try
        qrExec.Parameters[0].Value := qrBuscaNFI_CODI.AsInteger;
        qrExec.Parameters[1].Value := qrBuscaPRO_ID.AsInteger;
        qrExec.Parameters[2].Value := StrToInt(Edit1.Text);
        qrExec.Parameters[3].Value := FMenu.SqlUsuariosCH.AsInteger;
        qrExec.ExecSQL;

        qrRel.Close;
        qrRel.Parameters[0].Value := FMenu.SqlUsuariosCH.AsInteger;
        qrRel.Open;

        Quickrep1.Preview;


   except

   end;
end;

procedure TfrmEtiquetaManifesto.FormCreate(Sender: TObject);
begin
  wwDBGrid1.Left := 16;
  wwDBGrid1.Top := 56;
end;

procedure TfrmEtiquetaManifesto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := cafree;
   frmEtiquetaManifesto := nil;
end;

end.
