unit ufrmCte_NFSE_Configuracao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, Wwdbigrd, Wwdbgrid, Db, ADODB, ExtCtrls, DBCtrls, Mask,
  wwdbedit, Wwdotdot, Wwdbcomb;

type
  TfrmNFSE_CteConfig = class(TForm)
    wwDBGrid1: TwwDBGrid;
    lbl1: TLabel;
    qryConfig: TADOQuery;
    qryConfigid: TAutoIncField;
    qryConfigUF_ORIGEM: TStringField;
    qryConfigUF_DESTINO: TStringField;
    qryConfigFRETE: TStringField;
    qryConfigSEGURO: TStringField;
    qryConfigPEDAGIO: TStringField;
    qryConfigDESPACHO: TStringField;
    qryConfigDESCARGA: TStringField;
    dbnvgr1: TDBNavigator;
    ds1: TDataSource;
    cboOrigem: TwwDBComboBox;
    cboDestino: TwwDBComboBox;
    cboFrete: TwwDBComboBox;
    cboDescarga: TwwDBComboBox;
    cboDespacho: TwwDBComboBox;
    cboPedagio: TwwDBComboBox;
    cboSeguro: TwwDBComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNFSE_CteConfig: TfrmNFSE_CteConfig;

implementation

uses UMenu;

{$R *.DFM}

procedure TfrmNFSE_CteConfig.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //if qryConfig.State in [dsEdit, dsInsert] then qryConfig.Post;
end;

procedure TfrmNFSE_CteConfig.FormCreate(Sender: TObject);
begin
  qryConfig.Open;
end;

end.
