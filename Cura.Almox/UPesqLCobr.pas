unit UPesqLCobr;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Wwdatsrc, DBTables, Wwquery, Wwdbigrd, Grids, Wwdbgrid, StdCtrls,
  Buttons, ExtCtrls;

type
  TFPesqLCobr = class(TForm)
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
    Q_LCob: TwwQuery;
    DS_LCob: TwwDataSource;
    Q_LCobLCO_CODI: TStringField;
    Q_LCobLCO_BANC: TStringField;
    Q_LCobBANC_CODI: TStringField;
    Panel2: TPanel;
    wwDBGrid1: TwwDBGrid;
    wwDBGrid1IButton: TwwIButton;
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
  FPesqLCobr: TFPesqLCobr;
  gs_LC : string ;  
implementation
uses Cppmenu  ;
{$R *.DFM}


procedure TFPesqLCobr.SBT_SELEClick(Sender: TObject);
begin
  gs_LC  := Q_LCobLCO_CODI.AsString ;
  FPesqLCobr.close;

end;

procedure TFPesqLCobr.wwDBGrid1DblClick(Sender: TObject);
begin
  gs_LC  := Q_LCobLCO_CODI.AsString ;
  close;

end;

procedure TFPesqLCobr.SBT_SAIRClick(Sender: TObject);
begin
close; 
end;

procedure TFPesqLCobr.SBT_PESQClick(Sender: TObject);
var StrAnd : String ;
begin
  Q_LCob.close ;
  Q_LCob.SQL.clear ;
  Q_LCob.SQL.add('Select * from SIALCOB ');
  StrAnd := ' Where' ;

  if Edit1.Text  <> '' then begin
     Q_LCob.SQL.Add( StrAnd + ' LCO_CODI Like ''' + '%'+ Edit1.Text + '%'+ '''' ) ;
     StrAnd := ' and ' ;
  end;
  if Edit2.Text  <> '' then begin
     Q_LCob.SQL.Add( StrAnd + ' LCO_BANC Like ''' + '%'+ Edit2.Text + '%'+ '''' ) ;
     StrAnd := ' and ' ;
  end;
  if CB_ORDE.itemindex =  0 then
     Q_LCob.Sql.Add(' order by LCO_CODI')
  else Q_LCob.Sql.Add(' order by LCO_BANC ') ;
  Q_LCob.open;

end;

procedure TFPesqLCobr.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Q_LCob.close ;
  action := cafree ; 
end;

procedure TFPesqLCobr.FormActivate(Sender: TObject);
begin
//        CENTRO(Self,False);
end;

end.
