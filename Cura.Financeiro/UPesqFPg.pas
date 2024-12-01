unit UPesqFPg;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Wwdatsrc, DBTables, Wwquery, Wwdbigrd, Grids, Wwdbgrid, StdCtrls,
  Buttons, ExtCtrls;

type
  TFPesqFPg = class(TForm)
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
    Q_FPG: TwwQuery;
    DS_FPG: TwwDataSource;
    Q_FPGPGT_CODI: TStringField;
    Q_FPGPGT_DESC: TStringField;
    Panel2: TPanel;
    wwDBGrid1: TwwDBGrid;
    wwDBGrid1IButton: TwwIButton;
    procedure SBT_SAIRClick(Sender: TObject);
    procedure SBT_SELEClick(Sender: TObject);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure SBT_PESQClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPesqFPg: TFPesqFPg;
  gs_FPG : string  ;
implementation
uses CPPMENU ;
{$R *.DFM}


procedure TFPesqFPg.SBT_SAIRClick(Sender: TObject);
begin
close ;    
end;

procedure TFPesqFPg.SBT_SELEClick(Sender: TObject);
begin
gs_FPG  := Q_FPGPGT_CODI.AsString ;
FPesqFPg.close;
end;

procedure TFPesqFPg.wwDBGrid1DblClick(Sender: TObject);
begin
gs_FPG  := Q_FPGPGT_CODI.AsString ;
close;
end;

procedure TFPesqFPg.SBT_PESQClick(Sender: TObject);
var StrAnd : String ;
begin
  Q_FPG.close ;
  Q_FPG.SQL.clear ;
  Q_FPG.SQL.add('Select * from CPAPGTO ');
  StrAnd := ' Where' ;
  if Edit1.Text  <> '' then begin
     Q_FPG.SQL.Add( StrAnd + ' PGT_CODI Like ''' + '%'+ Edit1.Text + '%'+ '''' ) ;
     StrAnd := ' and ' ;
  end;
  if Edit2.Text  <> '' then begin
     Q_FPG.SQL.Add( StrAnd + ' PGT_DESC Like ''' + '%'+ Edit2.Text + '%'+ '''' ) ;
     StrAnd := ' and ' ;
  end;
  if CB_ORDE.itemindex =  0 then
     Q_FPG.Sql.Add(' order by PGT_CODI')
  else Q_FPG.Sql.Add(' order by PGT_DESC ') ;
  Q_FPG.open;


end;

procedure TFPesqFPg.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Q_FPG.close ;
action := cafree ;

end;

procedure TFPesqFPg.FormActivate(Sender: TObject);
begin
        CENTRO(Self,False);
end;

end.
