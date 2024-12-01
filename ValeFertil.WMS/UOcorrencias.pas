unit UOcorrencias;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Wwquery, StdCtrls, Mask, DBCtrls, Grids, DBGrids, ADODB,
  ExtCtrls;

type
  TfrmOcorrencias = class(TForm)
    Q_PARAMETRO: TwwQuery;
    Q_PARAMETROPAR_RAZA: TStringField;
    Q_PARAMETROPAR_CNPJ: TStringField;
    Q_PARAMETROCONNECTIONSTRING: TStringField;
    GroupBox1: TGroupBox;
    DBNavigator1: TDBNavigator;
    qrOcorrencia: TADOQuery;
    DBGrid1: TDBGrid;
    qrOcorrenciaCODIGO: TStringField;
    qrOcorrenciaOCORRENCIA: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOcorrencias: TfrmOcorrencias;

implementation

{$R *.DFM}

procedure TfrmOcorrencias.FormCreate(Sender: TObject);
begin
    Q_PARAMETRO.Open;
    qrOcorrencia.Close;
    qrOcorrencia.ConnectionString := Q_PARAMETROCONNECTIONSTRING.Value;
    qrOcorrencia.Open;
end;

end.
