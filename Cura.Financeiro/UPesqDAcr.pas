unit UPesqDAcr;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Mask, wwdbedit, Wwdotdot, Wwdbcomb, Db, Wwdatsrc, DBTables, Wwquery,
  Wwdbigrd, Grids, Wwdbgrid, StdCtrls, Buttons, ExtCtrls;

type
  TFPesqDAcr = class(TForm)
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
    Q_Desc: TwwQuery;
    DS_Desc: TwwDataSource;
    Q_DescDIF_CODI: TStringField;
    Q_DescDIF_DESC: TStringField;
    Q_DescDIF_SINAL: TStringField;
    Q_DescDIF_CTCO: TStringField;
    Q_DescCTC_CODI: TStringField;
    Q_DescCTC_DESC: TStringField;
    Panel2: TPanel;
    wwDBGrid1: TwwDBGrid;
    wwDBGrid1IButton: TwwIButton;
    DBCB_DIF_SINAL: TwwDBComboBox;
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
  FPesqDAcr: TFPesqDAcr;
  gs_DRES : string ;
implementation
uses CPPMENU  ;  
{$R *.DFM}



procedure TFPesqDAcr.SBT_SELEClick(Sender: TObject);
begin
gs_DRES  := Q_DESCDIF_CODI.AsString ;
FPesqDAcr.close;
end;

procedure TFPesqDAcr.wwDBGrid1DblClick(Sender: TObject);
begin
gs_DRES  := Q_DESCDIF_CODI.AsString ;
close;
end;

procedure TFPesqDAcr.SBT_SAIRClick(Sender: TObject);
begin
close ;
end;

procedure TFPesqDAcr.SBT_PESQClick(Sender: TObject);
var StrAnd : String ;
begin
  Q_DESC.close ;
  Q_DESC.SQL.clear ;
  Q_DESC.SQL.add('Select A.*,B.CTC_CODI,B.CTC_DESC from CPADIFE A ');
  Q_DESC.SQL.add('LEFT OUTER JOIN CPACTCO B ON A.DIF_CTCO = B.CTC_CODI ') ;
  if Edit1.Text  <> '' then
     Q_DESC.SQL.Add( ' and  DIF_CODI Like ''' + '%'+ Edit1.Text + '%'+ '''' ) ;
  if Edit2.Text  <> '' then
     Q_DESC.SQL.Add( ' and  DIF_DESC Like ''' + '%'+ Edit2.Text + '%'+ '''' ) ;
  if CB_ORDE.itemindex =  0 then
     Q_DESC.Sql.Add(' order by DIF_CODI')
  else Q_DESC.Sql.Add(' order by DIF_DESC ') ;
  Q_DESC.open;


end;

procedure TFPesqDAcr.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Q_DESC.close ;
action := cafree ;  
end;

procedure TFPesqDAcr.FormActivate(Sender: TObject);
begin
//        CENTRO(Self,False);
end;

end.
