unit UExcluiReentrega;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, StdCtrls, ExtCtrls, Db, DBTables, Wwquery, Wwdatsrc, Grids,
  Wwdbigrd, Wwdbgrid;

type
  TFExcluiReentrega = class(TForm)
    Panel2: TPanel;
    Label5: TLabel;
    Panel1: TPanel;
    SpeedButton3: TSpeedButton;
    Grid: TwwDBGrid;
    UPD_CLINBF: TUpdateSQL;
    DS_CLINBF: TwwDataSource;
    Q_CLINBF: TwwQuery;
    Q_CLINBFNFI_CODI: TAutoIncField;
    Q_CLINBFNFI_NUMERO: TStringField;
    Q_CLINBFMANI_ID: TIntegerField;
    Q_CLINBFNFI_EXCLUI_REEN: TStringField;
    Q_CLINBFCLIN_RAZA: TStringField;
    Q_CLINBFCLIF_RAZA: TStringField;
    BitBtn1: TBitBtn;
    Q_AUX: TwwQuery;
    BitBtn3: TBitBtn;
    btNem: TBitBtn;
    procedure SpeedButton3Click(Sender: TObject);
    procedure GridCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure Q_CLINBFNFI_EXCLUI_REENChange(Sender: TField);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn3Click(Sender: TObject);
    procedure btNemClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FExcluiReentrega: TFExcluiReentrega;
   SQL: STRING;
   
implementation
uses umenu ; 
{$R *.DFM}

procedure TFExcluiReentrega.SpeedButton3Click(Sender: TObject);
begin
  close ;
end;

procedure TFExcluiReentrega.GridCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
   IF Q_CLINBFNFI_EXCLUI_REEN.AsString = '*' THEN begin
        AFONT.Color:= CLRED ;
        if  not highlight then
           AFONT.COLOR:= CLRED ;

     end ELSE begin
        AFONT.COLOR:= CLBLACK  ;
          if   highlight then
           AFONT.COLOR:= CLRED ;
     end ;
end;

procedure TFExcluiReentrega.Q_CLINBFNFI_EXCLUI_REENChange(Sender: TField);
var
   POSICNF : string ;

begin
    POSICNF:=  Q_CLINBFNFI_CODI.asstring;



     IF Q_CLINBFNFI_EXCLUI_REEN.AsString = '*' THEN BEGIN

        SQL:= ' UPDATE NF SET NFI_EXCLUI_REEN = ' + '''' + '*' + '''' +
              ' where NFI_CODI =  ' + Q_CLINBFNFI_CODI.asstring
     END
     ELSE BEGIN

        SQL:= ' UPDATE NF SET NFI_EXCLUI_REEN = ' + '''' + '' + '''' +
              ' where NFI_CODI =  ' + Q_CLINBFNFI_CODI.asstring

     END;

     Q_AUX.Close;
     Q_AUX.SQL.CLEAR;
     Q_AUX.SQL.ADD(SQL);
     Q_AUX.ExecSQL;

     Q_CLINBF.ClosE;
     Q_CLINBF.Open;

     Q_CLINBF.LOCATE('NFI_CODI', POSICNF,[]);

end;

procedure TFExcluiReentrega.FormCreate(Sender: TObject);
begin
   Q_CLINBF.open ;
end;

procedure TFExcluiReentrega.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Q_CLINBF.close ;
   action := cafree ; 
end;

procedure TFExcluiReentrega.BitBtn3Click(Sender: TObject);
begin
     SQL:= ' UPDATE NF SET NFI_EXCLUI_REEN = ' + '''' + '*' + '''' +
           ' where NFI_CLONE = ' + '''' + 'S' + '''' +
           ' and  (MANI_ID = null  or   MANI_ID = ' + '''' + '' + '''' + ')' ;

           
           
     Q_AUX.Close;

     Q_AUX.SQL.CLEAR;
     Q_AUX.SQL.ADD(SQL);
     Q_AUX.ExecSQL;

     Q_CLINBF.ClosE;
     Q_CLINBF.Open;

end;

procedure TFExcluiReentrega.btNemClick(Sender: TObject);
begin
    SQL:= ' UPDATE NF SET NFI_EXCLUI_REEN = ' + '''' + '' + '''' +
           ' where NFI_CLONE = ' + '''' + 'S' + '''' +
           ' and  (MANI_ID = null  or   MANI_ID = ' + '''' + '' + '''' + ')' ;

     Q_AUX.Close;
     Q_AUX.SQL.CLEAR;
     Q_AUX.SQL.ADD(SQL);
     Q_AUX.ExecSQL;

     Q_CLINBF.ClosE;
     Q_CLINBF.Open;

end;

procedure TFExcluiReentrega.BitBtn1Click(Sender: TObject);
begin

    If MessageDlg('Confirma exclusão das NFs de reentrega ?',MtConfirmation,[MbYes,
          MbNo],0)=MrNO Then  abort ;




              Q_CLINBF.first ;
              while not Q_CLINBF.eof do begin

                  IF Q_CLINBFNFI_EXCLUI_REEN.asstring = '*' then begin
                       SQL:= ' DELETE FROM OS_CALCULO Where NFI_CODI = ' + Q_CLINBFNFI_CODI.asstring ;

                       Q_AUX.Close;
                       Q_AUX.SQL.CLEAR;
                       Q_AUX.SQL.ADD(SQL);
                       Q_AUX.ExecSQL;


                       SQL:= ' DELETE FROM NF_ITENS  Where NFI_CODI = ' + Q_CLINBFNFI_CODI.asstring ;

                       Q_AUX.Close;
                       Q_AUX.SQL.CLEAR;
                       Q_AUX.SQL.ADD(SQL);
                       Q_AUX.ExecSQL;
                  end ;
                  Q_CLINBF.next ;
              end ;



     SQL:= ' DELETE FROM NF Where NFI_CLONE = ' + '''' + 'S' + '''' +
           ' and  (MANI_ID = null  or   MANI_ID = ' + '''' + '' + '''' + ')' +
           ' and  NFI_EXCLUI_REEN = ' + '''' + '*' + '''' ;

     Q_AUX.Close;
     Q_AUX.SQL.CLEAR;
     Q_AUX.SQL.ADD(SQL);
     Q_AUX.ExecSQL;

     Q_CLINBF.ClosE;
     Q_CLINBF.Open;
end;


end.
