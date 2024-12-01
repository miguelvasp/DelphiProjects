unit UPesqMoe;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Mask, Db, Wwdatsrc, DBTables, Wwquery, Wwdbigrd, Grids, Wwdbgrid,
  StdCtrls, Buttons, ExtCtrls;

type
  TFPesqMoe = class(TForm)
    Panel1: TPanel;
    SBT_PESQ: TSpeedButton;
    SBT_SELE: TSpeedButton;
    SBT_SAIR: TSpeedButton;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Memo1: TMemo;
    Edit1: TEdit;
    CB_ORDE: TComboBox;
    Q_Moe: TwwQuery;
    DS_Moe: TwwDataSource;
    Q_MoeMOE_SIGL: TStringField;
    Q_MoeMOE_NOME: TStringField;
    Q_MoeCMO_DATA: TDateTimeField;
    Q_MoeCMO_VALO: TFloatField;
    Q_MoeCMO_MOED: TStringField;
    MaskEdit1: TMaskEdit;
    Edit2: TEdit;
    Label2: TLabel;
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
  FPesqMoe: TFPesqMoe;
  GS_MOE : string  ;
implementation
uses CPPMENU ;
{$R *.DFM}


procedure TFPesqMoe.SBT_SELEClick(Sender: TObject);
begin
GS_MOE := Q_MOEMOE_SIGL.AsString ;
FPesqMoe.close;
end;

procedure TFPesqMoe.wwDBGrid1DblClick(Sender: TObject);
begin
GS_MOE := Q_MOEMOE_SIGL.AsString ;
close;
end;

procedure TFPesqMoe.SBT_SAIRClick(Sender: TObject);
begin
close ;
end;

procedure TFPesqMoe.SBT_PESQClick(Sender: TObject);
var StrAnd : String ;
begin
  Q_MOE.close ;
  Q_MOE.SQL.clear ;
  Q_MOE.SQL.add('Select A.*,B.CMO_DATA,B.CMO_VALO,B.CMO_MOED  from  CPAMOED A,CPACMOE B ') ;
  Q_MOE.SQL.add('where A.MOE_SIGL = B.CMO_MOED ') ;
  if Edit1.Text  <> '' then
     Q_MOE.SQL.Add( ' and MOE_SIGL Like ''' + '%'+ Edit1.Text + '%'+ '''' ) ;
  if Edit2.Text  <> '' then
     Q_MOE.SQL.Add( ' and MOE_NOME Like ''' + '%'+ Edit2.Text + '%'+ '''' ) ;
  if MaskEdit1.Text  <> '  /  /  '  then
     Q_MOE.SQL.Add( ' and CMO_DATA = ' + '''' + FormatDateTime('MM/DD/YYYY',strtodate(MaskEdit1.text) ) + '''' );
  if CB_ORDE.itemindex =  0 then
       Q_MOE.Sql.Add(' order by MOE_SIGL')
  else Q_MOE.Sql.Add(' order by CMO_DATA desc ') ;
  Q_MOE.open;


end;


procedure TFPesqMoe.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Q_MOE.close ;
action := cafree ;  

end;

procedure TFPesqMoe.FormActivate(Sender: TObject);
begin
//        CENTRo(Self,False);
end;

end.
