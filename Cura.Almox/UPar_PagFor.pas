unit UPar_PagFor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Wwquery, Wwdatsrc, StdCtrls, wwdblook, DBCtrls, Buttons,
  ExtCtrls, Mask, wwdbedit, Wwdotdot, Wwdbcomb;

type
  TFParPagFor = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    SBT_SAIR: TSpeedButton;
    Panel2: TPanel;
    DS_PARA: TwwDataSource;
    Q_PARA: TwwQuery;
    DBNavigator1: TDBNavigator;
    UPD_PARA: TUpdateSQL;
    Panel3: TPanel;
    Q_PARASIST_ID: TAutoIncField;
    Q_PARACNPJ: TStringField;
    Q_PARABAN_CODI: TStringField;
    Q_PARABAN_AGEN: TStringField;
    Q_PARABAN_CON: TStringField;
    Q_PARABAN_DAC: TStringField;
    Q_PARARAZAO: TStringField;
    Q_PARABAN_NOME: TStringField;
    Label2: TLabel;
    wwDBEdit1: TwwDBEdit;
    Label4: TLabel;
    wwDBEdit4: TwwDBEdit;
    Label5: TLabel;
    wwDBEdit5: TwwDBEdit;
    Label6: TLabel;
    wwDBEdit6: TwwDBEdit;
    Label7: TLabel;
    wwDBEdit7: TwwDBEdit;
    Q_PARAENDERECO: TStringField;
    Q_PARANUMERO: TIntegerField;
    Q_PARAEND_COMPL: TStringField;
    Q_PARACIDADE: TStringField;
    Q_PARAESTADO: TStringField;
    Q_PARACEP: TStringField;
    Label3: TLabel;
    wwDBEdit3: TwwDBEdit;
    Label10: TLabel;
    wwDBEdit8: TwwDBEdit;
    Label14: TLabel;
    wwDBEdit11: TwwDBEdit;
    wwDBEdit12: TwwDBEdit;
    Label11: TLabel;
    Label13: TLabel;
    wwDBEdit13: TwwDBEdit;
    wwDBEdit9: TwwDBEdit;
    Label8: TLabel;
    wwDBEdit2: TwwDBEdit;
    Label12: TLabel;
    Label9: TLabel;
    wwDBEdit10: TwwDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure SBT_SAIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Q_PARAAfterPost(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure Q_PARABeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FParPagFor: TFParPagFor;

implementation
 uses CPPMENU ;  
{$R *.DFM}


procedure TFParPagFor.FormCreate(Sender: TObject);
begin
  Q_PARA.open ;
end;


procedure TFParPagFor.SBT_SAIRClick(Sender: TObject);
begin
    close ;   
end;

procedure TFParPagFor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Q_PARA.Close ;
  action :=cafree ;
end;

procedure TFParPagFor.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
  begin
    key := #0;
    perform(WM_nextdlgctl,0,0);
  end;
end;


procedure TFParPagFor.Q_PARAAfterPost(DataSet: TDataSet);
begin
  try
  begin
    FMenu.DATABASE1.ApplyUpdates([Q_PARA]);
  end;
  except
    begin
      Q_PARA.RevertRecord;
    end;
  end;
//  wwDBLookupCombo1.Enabled := false;
  Q_PARA.Close;
  Q_PARA.Open;
end;















procedure TFParPagFor.FormActivate(Sender: TObject);
begin
//        CENTRO(Self,False);
end;

procedure TFParPagFor.Q_PARABeforePost(DataSet: TDataSet);
begin
        //Cod Companhia - 8 posições.
   {     Q_PARACOD_COM.AsString := copy('00000000',1,8 - Length(Q_PARACOD_COM.AsString)) +
        Q_PARACOD_COM.AsString;

        //Cnpj1 9 (N)
        Q_PARACNPJ1.AsString := copy('000000000',1,9 - Length(Q_PARACNPJ1.AsString)) +
        Q_PARACNPJ1.AsString;

        //Cnpj2 4 (N)
        Q_PARACNPJ2.AsString := copy('000000000',1,4 - Length(Q_PARACNPJ2.AsString)) +
        Q_PARACNPJ2.AsString;

        //Cnpj3 2 (N)
        Q_PARACNPJ3.AsString := copy('000000000',1,2 - Length(Q_PARACNPJ3.AsString)) +
        Q_PARACNPJ3.AsString;

        //Razao 40 (texto)
        Q_PARARAZAO.AsString := Q_PARARAZAO.AsString +
        copy('                                        ',1,40 - Length(Q_PARARAZAO.AsString)) ;

          }
end;

end.
