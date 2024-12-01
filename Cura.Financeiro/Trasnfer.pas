unit Trasnfer;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Wwquery, Wwdatsrc, StdCtrls, ExtCtrls, DBCtrls, Mask,
  wwdbedit, wwdblook, Buttons, ComCtrls, Tabnotbk, Grids, Wwdbigrd,
  Wwdbgrid;

type
  TFTransf = class(TForm)
    TabbedNotebook1: TTabbedNotebook;
    Panel1: TPanel;
    Label1: TLabel;
    SBT_SAIR: TSpeedButton;
    SBT_REFR: TSpeedButton;
    Fonte: TDBNavigator;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Panel3: TPanel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    wwDBLookupCombo1: TwwDBLookupCombo;
    wwDBLookupCombo2: TwwDBLookupCombo;
    wwDBLookupCombo3: TwwDBLookupCombo;
    wwDBLookupCombo4: TwwDBLookupCombo;
    wwDBEdit1: TwwDBEdit;
    wwDBEdit2: TwwDBEdit;
    wwDBEdit3: TwwDBEdit;
    wwDBEdit4: TwwDBEdit;
    wwDBEdit5: TwwDBEdit;
    wwDBEdit6: TwwDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    DS_Transf: TwwDataSource;
    Q_Transf: TwwQuery;
    Q_Banc: TwwQuery;
    Q_Cont: TwwQuery;
    UPD_Transf: TUpdateSQL;
    Q_BancBAN_CODI: TStringField;
    Q_BancBAN_NOME: TStringField;
    Q_ContCON_CODI: TStringField;
    Q_ContCON_DESC: TStringField;
    Q_TransfNumero: TIntegerField;
    Q_TransfBancoOrigem: TStringField;
    Q_TransfBancoDestino: TStringField;
    Q_TransfData: TDateTimeField;
    Q_TransfDocumento: TStringField;
    Q_TransfHistorico: TStringField;
    Q_TransfValor: TFloatField;
    Q_TransfEmiteCheque: TStringField;
    Q_TransfCtaGerencialOrig: TStringField;
    Q_TransfCtaGerencialDest: TStringField;
    wwDBGrid1: TwwDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SBT_SAIRClick(Sender: TObject);
    procedure Q_TransfAfterDelete(DataSet: TDataSet);
    procedure Q_TransfAfterPost(DataSet: TDataSet);
    procedure Q_TransfBeforeDelete(DataSet: TDataSet);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FTransf: TFTransf;

implementation
uses CPPMENU ;
{$R *.DFM}


procedure TFTransf.FormCreate(Sender: TObject);
begin
Q_TRANSF.open;
Q_BANC.open;
Q_CONT.open;

end;

procedure TFTransf.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Q_TRANSF.close;
Q_BANC.Close;
Q_CONT.close;
action:=cafree;
end;

procedure TFTransf.SBT_SAIRClick(Sender: TObject);
begin
close ;
end;

procedure TFTransf.Q_TransfAfterDelete(DataSet: TDataSet);
begin
 try
    FMenu.DATABASE1.ApplyUpdates([Q_Transf]);
  except
    Q_Transf.RevertRecord;
  end;

end;

procedure TFTransf.Q_TransfAfterPost(DataSet: TDataSet);
begin
try
  begin
    FMenu.DATABASE1.ApplyUpdates([Q_Pagtos]);
  end;
  except
    begin
      Q_Pagtos.RevertRecord;
    end;
  end;
  Q_Pagtos.Close;
  Q_Pagtos.Open;

end;

procedure TFTransf.Q_TransfBeforeDelete(DataSet: TDataSet);
begin
  if MessageDlg('Confirma Exclusão ?',mtInformation, [mbYes, mbNo], 0) = mrNo then
    Abort;

end;

procedure TFTransf.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then
  begin
    key := #0;
    perform(WM_nextdlgctl,0,0);
  end;
end;

end.
