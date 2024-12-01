unit UPesqCCont;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Wwdbigrd, Grids, Wwdbgrid, StdCtrls, Buttons, ExtCtrls, Db, Wwdatsrc,
  DBTables, Wwquery;

type
  TFPesqCCont = class(TForm)
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
    Q_Cont: TwwQuery;
    DS_Cont: TwwDataSource;
    Q_ContCTC_CODI: TStringField;
    Q_ContCTC_DESC: TStringField;
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
  FPesqCCont: TFPesqCCont;
  gs_cont : string  ;    
implementation
uses CPPMENU ;
{$R *.DFM}


procedure TFPesqCCont.SBT_SELEClick(Sender: TObject);
begin
  gs_cont := Q_contCTC_Codi.AsString ;
  FPesqCCont.close;
end;

procedure TFPesqCCont.wwDBGrid1DblClick(Sender: TObject);
begin
 gs_cont := Q_contCTC_Codi.AsString ;
 close;
end;

procedure TFPesqCCont.SBT_SAIRClick(Sender: TObject);
begin
close ;   
end;

procedure TFPesqCCont.SBT_PESQClick(Sender: TObject);
var StrAnd : String ;
begin
  Q_CONT.close ;
  Q_CONT.SQL.clear ;
  Q_CONT.SQL.add('Select * from CPACTCO ');
  StrAnd := ' Where' ;

  if Edit1.Text  <> '' then begin
     Q_CONT.SQL.Add( StrAnd + ' CTC_CODI Like ''' + '%'+ Edit1.Text + '%'+ '''' ) ;
     StrAnd := ' and ' ;
  end;
  if Edit2.Text  <> '' then begin
     Q_CONT.SQL.Add( StrAnd + ' CTC_DESC Like ''' + '%'+ Edit2.Text + '%'+ '''' ) ;
     StrAnd := ' and ' ;
  end;
  if CB_ORDE.itemindex =  0 then
     Q_CONT.Sql.Add(' order by CTC_CODI')
  else Q_CONT.Sql.Add(' order by CTC_DESC ') ;
  Q_CONT.open;

end;

procedure TFPesqCCont.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Q_Cont.close ;
 action := cafree ; 
end;

procedure TFPesqCCont.FormActivate(Sender: TObject);
begin
//        CENTRO(Self,False);
end;

end.
