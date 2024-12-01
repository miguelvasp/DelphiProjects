unit UPesqFer;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Mask, wwdbedit, Wwdotdot, Wwdbcomb, Db, Wwdatsrc, DBTables, Wwquery,
  Wwdbigrd, Grids, Wwdbgrid, StdCtrls, Buttons, ExtCtrls;

type
  TFPesqFer = class(TForm)
    Panel1: TPanel;
    SBT_PESQ: TSpeedButton;
    SBT_SELE: TSpeedButton;
    SBT_SAIR: TSpeedButton;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Memo1: TMemo;
    Edit2: TEdit;
    CB_ORDE: TComboBox;
    Q_Fer: TwwQuery;
    DS_FER: TwwDataSource;
    Q_FerFER_DATA: TDateTimeField;
    Q_FerFER_DESC: TStringField;
    Q_FerFER_DUTIL: TStringField;
    MaskEdit1: TMaskEdit;
    Panel2: TPanel;
    DBCB_FER_DUTIL: TwwDBComboBox;
    wwDBGrid1: TwwDBGrid;
    wwDBGrid1IButton: TwwIButton;
    procedure SBT_SAIRClick(Sender: TObject);
    procedure SBT_SELEClick(Sender: TObject);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure SBT_PESQClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPesqFer: TFPesqFer;
 gs_Feri : string ;
implementation
uses CPPMENU ;
{$R *.DFM}



procedure TFPesqFer.SBT_SAIRClick(Sender: TObject);
begin
close ;
end;

procedure TFPesqFer.SBT_SELEClick(Sender: TObject);
begin
gs_FERI  := Q_FERFER_DATA.AsString ;
FPesqFer.close;
end;

procedure TFPesqFer.wwDBGrid1DblClick(Sender: TObject);
begin
gs_FERI  := Q_FERFER_DATA.AsString ;
close;
end;

procedure TFPesqFer.SBT_PESQClick(Sender: TObject);
var StrAnd : String ;
begin
  Q_FER.close ;
  Q_FER.SQL.clear ;
  Q_FER.SQL.add('Select * from CPAFERI ');
  StrAnd := ' Where' ;
  if MaskEdit1.Text  <> '  /  /  '  then begin
     Q_FER.SQL.Add( StrAnd + ' FER_DATA = ' + '''' + FormatDateTime('MM/DD/YYYY',strtodate(MaskEdit1.text) ) + '''' );
     StrAnd := ' and ' ;
  end;
  if Edit2.Text  <> '' then begin
     Q_FER.SQL.Add( StrAnd + ' FER_DESC Like ''' + '%'+ Edit2.Text + '%'+ '''' ) ;
     StrAnd := ' and ' ;
  end;
  if CB_ORDE.itemindex =  0 then
     Q_FER.Sql.Add(' order by FER_DATA')
  else Q_FER.Sql.Add(' order by FER_DESC ') ;
  Q_FER.open;


end;


procedure TFPesqFer.FormActivate(Sender: TObject);
begin
        CENTRO(Self,False);
end;

end.
