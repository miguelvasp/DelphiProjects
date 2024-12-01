unit UPesqOS;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, wwdblook, Buttons, Wwdbigrd, Grids, Wwdbgrid, ExtCtrls, Db,
  Wwdatsrc, DBTables, Wwquery, Mask, wwdbedit;

type
  TFPesqOS = class(TForm)
    Panel1: TPanel;
    DBG_RAAT: TwwDBGrid;
    DBG_RAATIButton: TwwIButton;
    Panel2: TPanel;
    SpeedButton3: TSpeedButton;
    Label4: TLabel;
    Label7: TLabel;
    wwDBEdit2: TwwDBEdit;
    Label2: TLabel;
    wwDBLookupCombo1: TwwDBLookupCombo;
    SpeedButton1: TSpeedButton;
    Q_OS: TwwQuery;
    Q_OSOS_ID: TAutoIncField;
    Q_OSCLIN_ID: TIntegerField;
    Q_OSCTT_ID: TIntegerField;
    Q_OSTOS_ID: TIntegerField;
    Q_OSOS_DATA: TDateTimeField;
    Q_OSOS_USUARIO: TIntegerField;
    DS_OS: TwwDataSource;
    Q_OSCLIN_RAZA: TStringField;
    Q_OSCTT_NOME: TStringField;
    Q_OSTOS_NOME: TStringField;
    Q_CLIN: TwwQuery;
    Q_CLINCLIN_RAZA: TStringField;
    Q_CLINCLIN_ID: TAutoIncField;
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBG_RAATDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPesqOS: TFPesqOS;

implementation
uses USenha, UOS ;
{$R *.DFM}

procedure TFPesqOS.SpeedButton3Click(Sender: TObject);
begin
  close ; 
end;

procedure TFPesqOS.SpeedButton1Click(Sender: TObject);
begin
    Q_OS.close ;
    Q_OS.Sql.Clear ;
    Q_OS.Sql.Add('Select A.*,B.CLIN_RAZA,C.CTT_NOME,D.TOS_NOME from OS A,') ;
    Q_OS.Sql.Add('ClienteNBF B,Contrato C,TpOS D where') ;
    Q_OS.Sql.Add('A.CLIN_ID = B.CLIN_ID and ') ;
    Q_OS.Sql.Add('A.CTT_ID = C.CTT_ID and ') ;
    Q_OS.Sql.Add('A.TOS_ID = D.TOS_ID ') ;

    If wwDBEdit2.text <> '' then
       Q_OS.Sql.Add(' and A.OS_ID = ' + wwDBEdit2.text  ) ;
    If wwDBLookupCombo1.text <> '' then
       Q_OS.Sql.Add(' and A.CLIN_ID = ' + wwDBLookupCombo1.lookupvalue  ) ;

       Q_OS.Sql.Add(' order by A.OS_ID ') ;
    Q_OS.open ;

     Q_OS.close  ;
     Q_OS.open ;



end;

procedure TFPesqOS.FormCreate(Sender: TObject);
begin
  Q_CLIN.open ; 
end;

procedure TFPesqOS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Q_CLIN.close ;
  Q_OS.close ;
  action := cafree ; 
end;

procedure TFPesqOS.DBG_RAATDblClick(Sender: TObject);
begin
   StrPesquisa := Q_OSOS_ID.asstring ;
   FPESQOS.close ;
end;

end.
