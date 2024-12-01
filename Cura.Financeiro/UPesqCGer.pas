unit UPesqCGer;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Mask, wwdbedit, Wwdotdot, Wwdbcomb, Db, Wwdatsrc, DBTables, Wwquery,
  Wwdbigrd, Grids, Wwdbgrid, StdCtrls, Buttons, ExtCtrls;

type
  TFPesqCGer = class(TForm)
    Panel1: TPanel;
    SBT_PESQ: TSpeedButton;
    SBT_SELE: TSpeedButton;
    SBT_SAIR: TSpeedButton;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Memo1: TMemo;
    Edit1: TEdit;
    Edit2: TEdit;
    CB_ORDE: TComboBox;
    Q_CGER: TwwQuery;
    DS_CGER: TwwDataSource;
    Q_CGERCON_CODI: TStringField;
    Q_CGERCON_DESC: TStringField;
    Q_CGERCON_ENSA: TStringField;
    Q_CGERCON_OPER: TStringField;
    Q_CGERCON_FLOA: TFloatField;
    Q_CGERCON_FLUX: TStringField;
    Q_CGERCON_CTCO: TStringField;
    Panel2: TPanel;
    wwDBGrid1: TwwDBGrid;
    wwDBGrid1IButton: TwwIButton;
    DBCB_CON_OPER: TwwDBComboBox;
    DBCB_CON_FLUX2: TwwDBComboBox;
    DBCB_CON_ENSA: TwwDBComboBox;
    procedure SBT_SELEClick(Sender: TObject);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure SBT_SAIRClick(Sender: TObject);
    procedure SBT_PESQClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPesqCGer: TFPesqCGer;
  gs_CG : string ;  
implementation
uses CPPMENU ;
{$R *.DFM}


procedure TFPesqCGer.SBT_SELEClick(Sender: TObject);
begin
gs_cg  := Q_CGERCON_CODI.AsString ;
FPesqCGer.close;
end;

procedure TFPesqCGer.wwDBGrid1DblClick(Sender: TObject);
begin
gs_cg  := Q_CGERCON_CODI.AsString ;
close;
end;

procedure TFPesqCGer.SBT_SAIRClick(Sender: TObject);
begin
close ;
end;

procedure TFPesqCGer.SBT_PESQClick(Sender: TObject);
var StrAnd : String ;
begin
  Q_cger.close ;
  Q_cger.SQL.clear ;
  Q_cger.SQL.add('Select * from CPACONT ');
  StrAnd := ' Where' ;

  if Edit1.Text  <> '' then begin
     Q_cger.SQL.Add( StrAnd + ' CON_CODI Like ''' + '%'+ Edit1.Text + '%'+ '''' ) ;
     StrAnd := ' and ' ;
  end;
  if Edit2.Text  <> '' then begin
     Q_cger.SQL.Add( StrAnd + ' CON_DESC Like ''' + '%'+ Edit2.Text + '%'+ '''' ) ;
     StrAnd := ' and ' ;
  end;
  if CB_ORDE.itemindex =  0 then
     Q_cger.Sql.Add(' order by CON_CODI')
  else Q_cger.Sql.Add(' order by CON_DESC ') ;
  Q_cger.open;

end;

procedure TFPesqCGer.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Q_CGER.close ;
action := cafree ;
end;

procedure TFPesqCGer.FormActivate(Sender: TObject);
begin
//        CENTRO(Self,False);
end;

end.
