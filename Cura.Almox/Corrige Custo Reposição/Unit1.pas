unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, ADODB, wwdblook,
  ExtCtrls;

type
  TForm1 = class(TForm)
    ADOConnection1: TADOConnection;
    qrMat: TADOQuery;
    qrMatMAT_ID: TAutoIncField;
    qrMatMAT_DESC: TStringField;
    wwDBGrid1: TwwDBGrid;
    qrBusca: TADOQuery;
    qrBuscaAlmox_ID: TAutoIncField;
    qrBuscaAlmox_ID_Mestre: TIntegerField;
    qrBuscaFor_Codi: TStringField;
    qrBuscaMat_ID: TIntegerField;
    qrBuscaLocal_ID: TIntegerField;
    qrBuscaMarca_ID: TIntegerField;
    qrBuscaN_Lote: TWideStringField;
    qrBuscaValid: TDateTimeField;
    qrBuscaQtde: TFloatField;
    qrBuscaQtde_Retirada: TFloatField;
    qrBuscaQtde_Input: TFloatField;
    qrBuscaTipo: TStringField;
    qrBuscaMot_ID: TIntegerField;
    qrBuscaUni_ID: TIntegerField;
    qrBuscaUni_Sigla: TStringField;
    qrBuscaObs: TMemoField;
    qrBuscaData: TDateTimeField;
    qrBuscaUsuario: TWideStringField;
    qrBuscaTD_ID: TIntegerField;
    qrBuscaDocto: TStringField;
    qrBuscaRec_Item_ID: TIntegerField;
    qrBuscaCusto: TFloatField;
    qrBuscaREPOSICAO: TFloatField;
    DataSource1: TDataSource;
    qrMatAux: TADOQuery;
    qrMatAuxMAT_ID: TAutoIncField;
    qrMatAuxMAT_DESC: TStringField;
    qrMatAuxGRU_ID: TIntegerField;
    qrMatAuxUNI_ID: TIntegerField;
    qrMatAuxMAT_IPI: TFloatField;
    qrMatAuxMAT_CONTROLA: TStringField;
    qrMatAuxMAT_ESTMIN: TFloatField;
    qrMatAuxMAT_LOTEPED: TFloatField;
    qrMatAuxMAT_LOCACAO: TStringField;
    qrMatAuxCusto_Medio: TFloatField;
    qrMatAuxGENERICO: TStringField;
    qrMatAuxMAT_ATIVO: TStringField;
    qrMatAuxMAT_ESTMAX: TFloatField;
    qrMatAuxCONTROLA_GRUPO: TStringField;
    qrMarcas: TADOQuery;
    qrMarcasMARCA_ID: TAutoIncField;
    qrMarcasMARCA_DESC: TStringField;
    qrBuscaMARCADESC: TStringField;
    qrBuscaMATDESC: TStringField;
    Panel1: TPanel;
    wwDBLookupCombo1: TwwDBLookupCombo;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    ADOStoredProc1: TADOStoredProc;
    qrAux: TADOQuery;
    qrAuxREC_ID: TIntegerField;
    qrAuxVALOR: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
   qrMat.Open;
   qrMatAux.Open;
   qrMarcas.Open;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
   qrBusca.Close;
   qrBusca.Parameters[0].Value := StrToInt(wwDBLookupCombo1.LookupValue);
   qrBusca.Open;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
    qrBusca.First;
    while not qrBusca.Eof do begin
       qrAux.Close;
       qrAux.Parameters[0].Value := qrBuscaMat_ID.AsInteger;
       qrAux.Open;

       qrMatAux.Locate('mat_id', qrBuscaMat_ID.AsInteger, []);

       qrBusca.Edit;
       qrBuscaREPOSICAO.Value := qrAuxVALOR.AsFloat;
       qrBuscaCusto.AsFloat := qrMatAuxCusto_Medio.AsFloat;
       qrBusca.Post;
       qrBusca.Next;
    end;

    Button1.Click;

end;

end.
