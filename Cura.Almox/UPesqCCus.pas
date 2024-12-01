unit UPesqCCus;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Wwdatsrc, DBTables, Wwquery, Wwdbigrd, Grids, Wwdbgrid, StdCtrls,
  Buttons, ExtCtrls;

type
  TFPesqCcus = class(TForm)
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
    Q_CCUS: TwwQuery;
    DS_CCUS: TwwDataSource;
    Q_CCUSFIL_CODI: TStringField;
    Q_CCUSFIL_DESC: TStringField;
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
  FPesqCcus: TFPesqCcus;
  gs_cust :  string ;
implementation
uses CPPMENU ;  
{$R *.DFM}


procedure TFPesqCcus.SBT_SAIRClick(Sender: TObject);
begin
  close ;  
end;

procedure TFPesqCcus.SBT_SELEClick(Sender: TObject);
begin
 gs_cust  := Q_CCUSFIL_CODI.AsString ;
 FPesqCCus.close;
end;

procedure TFPesqCcus.wwDBGrid1DblClick(Sender: TObject);
begin
 gs_cust  := Q_CCUSFIL_CODI.AsString ;
 close;
end;

procedure TFPesqCcus.SBT_PESQClick(Sender: TObject);
var StrAnd : String ;
begin
  Q_ccus.close ;
  Q_ccus.SQL.clear ;
  Q_ccus.SQL.add('Select * from CPAFILI ');
  StrAnd := ' Where' ;

  if Edit1.Text  <> '' then begin
     Q_ccus.SQL.Add( StrAnd + ' FIL_CODI Like ''' + '%'+ Edit1.Text + '%'+ '''' ) ;
     StrAnd := ' and ' ;
  end;
  if Edit2.Text  <> '' then begin
     Q_ccus.SQL.Add( StrAnd + ' FIL_DESC Like ''' + '%'+ Edit2.Text + '%'+ '''' ) ;
     StrAnd := ' and ' ;
  end;
  if CB_ORDE.itemindex =  0 then
     Q_ccus.Sql.Add(' order by FIL_CODI')
  else Q_ccus.Sql.Add(' order by FIL_DESC ') ;
  Q_ccus.open;

end;

procedure TFPesqCcus.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Q_CCUS.close ;
  action := cafree ;
end;

procedure TFPesqCcus.FormActivate(Sender: TObject);
begin
//        CENTRO(Self,False);
end;

end.
