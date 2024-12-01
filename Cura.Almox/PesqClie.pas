unit PesqClie;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, Wwdbedit, Buttons, DB, DBTables, Wwdatsrc, Wwquery,
  DBCtrls, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, wwdblook, Wwtable;

type
  TFPesqclie = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBG_CLIE: TwwDBGrid;
    SBT_SELE: TSpeedButton;
    SBT_PESQ: TSpeedButton;
    SBT_SAIR: TSpeedButton;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Memo1: TMemo;
    Label2: TLabel;
    Label7: TLabel;
    Q_CLIE: TwwQuery;
    Q_CLIECLI_FCEP: TStringField;
    Q_CLIECLI_FTEL: TStringField;
    Q_CLIECLI_FTE2: TStringField;
    Q_CLIECLI_FFAX: TStringField;
    Q_CLIECLI_RAZA: TStringField;
    Q_CLIECLI_FEND: TStringField;
    Q_CLIECLI_FMUN: TStringField;
    Q_CLIECLI_FEST: TStringField;
    Q_CLIECLI_FEMA: TStringField;
    Q_CLIECLI_FCON: TStringField;
    DS_CLIE: TwwDataSource;
    Q_Ufed: TwwQuery;
    Q_UfedUFE_CODI: TStringField;
    Q_UfedUFE_DESC: TStringField;
    Q_UfedUFE_AICM: TFloatField;
    Q_CLIECLI_CODI: TAutoIncField;
    SpeedButton1: TSpeedButton;
    Label3: TLabel;
    Label1: TLabel;
    Label8: TLabel;
    Q_CLIECLI_CGC: TStringField;
    Q_CLIECLI_APELIDO: TStringField;
    ED_FANTASIA: TEdit;
    ED_RAZA: TEdit;
    ED_ENDE: TEdit;
    CNPJ: TEdit;
    ED_MUNI: TEdit;
    DBLC_CLI_FEST: TwwDBLookupCombo;
    ED_CEP: TMaskEdit;
    procedure SBT_SAIRClick(Sender: TObject);
    procedure SBT_PESQClick(Sender: TObject);
    procedure SBT_SELEClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ED_FANTASIAKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPesqclie: TFPesqclie;
  StrNumerocliente : String ;
implementation

uses cppMenu,Clientes;

{$R *.DFM}

procedure TFPesqclie.SBT_SAIRClick(Sender: TObject);
begin
     FPesqclie.Close;
end;

procedure TFPesqclie.SBT_PESQClick(Sender: TObject);
begin
     with Q_CLIE do
          begin
               Close;
               Sql.Clear;
               Sql.Add('SELECT CLI_CODI,CLI_RAZA,CLI_FEND,CLI_FMUN,CLI_FEST,CLI_FCEP, ') ;
               Sql.Add('CLI_FTEL,CLI_FTE2,CLI_FFAX,CLI_FCON,CLI_FEMA,CLI_CGC,CLI_APELIDO FROM CPACLIE ') ;
               Sql.Add('WHERE CLI_CODI <> 99999999');
               if (ED_RAZA.Text <> '') then
                  Sql.Add('and CLI_RAZA like ''' + '%'+ ED_RAZA.Text + '%'+ '''');
               if (ED_FANTASIA.Text <> '') then
                  Sql.Add('and CLI_APELIDO like ''' + '%'+ ED_FANTASIA.Text + '%'+ '''');
               if (ED_ENDE.Text <> '') then
                  Sql.Add('and CLI_FEND like ''' + '%'+ ED_ENDE.Text + '%'+ '''');
               if (ED_MUNI.Text <> '') then
                  Sql.Add('and CLI_FMUN like ''' + '%'+ ED_MUNI.Text + '%'+ '''');
               if (DBLC_CLI_FEST.Text <> '') then
                  Sql.Add('and CLI_FEST = ''' + DBLC_CLI_FEST.Text + '''');
               if (ED_CEP.Text <> '') then
                  Sql.Add('and CLI_FCEP = ''' + ED_CEP.text + '''');
               if (CNPJ.Text <> '') then
                  Sql.Add('and CLI_CGC like ''' + '%'+ CNPJ.Text + '%'+ '''');
               Sql.Add(' order by CLI_RAZA' ) ;
               Open;
          end;
end;

procedure TFPesqclie.SBT_SELEClick(Sender: TObject);
begin
     If Q_CLIECLI_CODI.asstring <> '' then
     Begin
             CodigoCliente := Q_CLIECLI_CODI.asstring ;
             Application.CreateForm(TFClientes, FClientes);
             FClientes.ShowModal;
             FClientes.Release;
             CodigoCliente := '0' ;
     End;
end;

procedure TFPesqclie.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Q_CLIE.close;
   Q_Ufed.Close;
   Action := caFree;
end;

procedure TFPesqclie.FormShow(Sender: TObject);
begin
    Q_Ufed.Open;
    ED_FANTASIA.setfocus ;
end;






procedure TFPesqclie.SpeedButton1Click(Sender: TObject);
begin
     CodigoCliente := '0' ;
     Application.CreateForm(TFClientes, FClientes);
     FClientes.ShowModal;
     FClientes.Release;
end;

procedure TFPesqclie.FormActivate(Sender: TObject);
begin
//        CENTRO(Self,False);
end;

procedure TFPesqclie.ED_FANTASIAKeyPress(Sender: TObject; var Key: Char);
begin
        If Key = #13 then
                SBT_PESQ.CLICK;
end;

end.
