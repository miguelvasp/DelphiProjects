unit UPesqFami;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd, Wwdbgrid, StdCtrls,
  Buttons, ExtCtrls;

type
  TFPesqFami = class(TForm)
    Panel1: TPanel;
    SBT_SELE: TSpeedButton;
    SBT_PESQ: TSpeedButton;
    SBT_SAIR: TSpeedButton;
    Label3: TLabel;
    Label4: TLabel;
    Memo1: TMemo;
    Edit1: TEdit;
    Edit2: TEdit;
    wwDBGrid1: TwwDBGrid;
    Q_Fam: TwwQuery;
    DS_FAm: TwwDataSource;
    Q_FamFAM_CODI: TStringField;
    Q_FamFAM_DESC: TStringField;
    procedure SBT_PESQClick(Sender: TObject);
    procedure SBT_SELEClick(Sender: TObject);
    procedure SBT_SAIRClick(Sender: TObject);
    procedure wwDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPesqFami: TFPesqFami;
  gs_fami : string ;
implementation
uses Menu , Unt_BaseDados2 ;
{$R *.DFM}


procedure TFPesqFami.SBT_PESQClick(Sender: TObject);
var StrAnd : String ;
begin
  Q_Fam.close ;
  Q_Fam.SQL.clear ;
  Q_Fam.SQL.add('Select * from SIAFAMI ');
  StrAnd := ' Where' ;

  if Edit1.Text  <> '' then begin
     Q_Fam.SQL.Add( StrAnd + ' FAM_CODI Like ''' + '%'+ Edit1.Text + '%'+ '''' ) ;
     StrAnd := ' and ' ;
  end;
  if Edit2.Text  <> '' then begin
     Q_Fam.SQL.Add( StrAnd + ' FAM_DESC Like ''' + '%'+ Edit2.Text + '%'+ '''' ) ;
     StrAnd := ' and ' ;
  end;
  Q_fam.open;
end;

procedure TFPesqFami.SBT_SELEClick(Sender: TObject);
begin
  gs_fami  := Q_famFAM_CODI.AsString ;
  FPesqFami.close;

end;

procedure TFPesqFami.SBT_SAIRClick(Sender: TObject);
begin
 close ;
end;

procedure TFPesqFami.wwDBGrid1DblClick(Sender: TObject);
begin
  gs_fami  := Q_famFAM_CODI.AsString ;
  close;

end;

end.
