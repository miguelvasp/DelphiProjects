unit UPesqCBan;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Wwdatsrc, DBTables, Wwquery, Wwdbigrd, Grids, Wwdbgrid, StdCtrls,
  Buttons, ExtCtrls;

type
  TFPesqCBan = class(TForm)
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
    Q_CBan: TwwQuery;
    DS_CBan: TwwDataSource;
    Q_CBanBAN_CODI: TStringField;
    Q_CBanBAN_NOME: TStringField;
    Q_CBanBAN_AGEN: TStringField;
    Q_CBanBAN_NAGE: TStringField;
    Q_CBanBAN_DATA: TDateTimeField;
    Q_CBanBAN_SALD: TFloatField;
    Q_CBanBAN_NLAN: TFloatField;
    Q_CBanBAN_LCHE: TStringField;
    Q_CBanBAN_UCHE: TStringField;
    Panel2: TPanel;
    wwDBGrid1: TwwDBGrid;
    wwDBGrid1IButton: TwwIButton;
    procedure SBT_SELEClick(Sender: TObject);
    procedure SBT_SAIRClick(Sender: TObject);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SBT_PESQClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPesqCBan: TFPesqCBan;
  gs_Banc : string ;
implementation
uses CPPMENU ;
{$R *.DFM}


procedure TFPesqCBan.SBT_SELEClick(Sender: TObject);
begin
  gs_banc  := Q_CBanBAN_CODI.AsString ;
  FPesqCBan.close ;
end;

procedure TFPesqCBan.SBT_SAIRClick(Sender: TObject);
begin
close ;
end;

procedure TFPesqCBan.wwDBGrid1DblClick(Sender: TObject);
begin
  gs_banc  := Q_CBanBAN_CODI.AsString ;
  close;
end;

procedure TFPesqCBan.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Q_CBan.close ;
 action := cafree ;
end;

procedure TFPesqCBan.SBT_PESQClick(Sender: TObject);
var StrAnd : String ;
begin
  Q_CBAN.close ;
  Q_CBAN.SQL.clear ;
  Q_CBAN.SQL.add('Select * from CPABANC ');
  StrAnd := ' Where' ;

  if Edit1.Text  <> '' then begin
     Q_CBAN.SQL.Add( StrAnd + ' BAN_CODI Like ''' + '%'+ Edit1.Text + '%'+ '''' ) ;
     StrAnd := ' and ' ;
  end;
  if Edit2.Text  <> '' then begin
     Q_CBAN.SQL.Add( StrAnd + ' BAN_NOME Like ''' + '%'+ Edit2.Text + '%'+ '''' ) ;
     StrAnd := ' and ' ;
  end;
  if CB_ORDE.itemindex =  0 then
     Q_CBAN.Sql.Add(' order by BAN_CODI')
  else Q_CBAN.Sql.Add(' order by BAN_NOME ') ;
  Q_CBAN.open;

end;

procedure TFPesqCBan.FormActivate(Sender: TObject);
begin
//        CENTRO(Self,False);
end;

end.
