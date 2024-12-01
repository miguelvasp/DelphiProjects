unit UConsultaTAG;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Buttons, ExtCtrls, Db, Wwdatsrc,
  DBTables, Wwquery;

type
  TFConsultaTAG = class(TForm)
    Panel3: TPanel;
    SpeedButton3: TSpeedButton;
    Label16: TLabel;
    SBT_VISU: TSpeedButton;
    Panel7: TPanel;
    Label20: TLabel;
    Label10: TLabel;
    GRID2: TwwDBGrid;
    Label1: TLabel;
    Label11: TLabel;
    Label17: TLabel;
    Label15: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Q_ESTQ: TwwQuery;
    DS_ESTQ: TwwDataSource;
    Q_ESTQESTQ_DT_ENTRADA: TDateTimeField;
    Q_ESTQESTQ_DT_SAIDA: TDateTimeField;
    Q_ESTQESTQ_TAG: TIntegerField;
    Q_ESTQESTQ_QTDE: TFloatField;
    Q_ESTQPOS_COD: TStringField;
    Q_ESTQPRO_COD: TStringField;
    Q_ESTQPRO_DESC: TStringField;
    Q_ESTQAR_NOME: TStringField;
    Q_ESTQCLIN_RAZA: TStringField;
    Q_ESTQESTQ_QTDE_RETIRA: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SBT_VISUClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConsultaTAG: TFConsultaTAG;

implementation
uses UFConsultaTAG, UConsultaPosicao, URelConsultaTAG ;
{$R *.DFM}



procedure TFConsultaTAG.FormCreate(Sender: TObject);
VAR IK : Integer;
begin
   for IK := 0 TO PRED(ComponentCount) do begin
       if Components[IK] is TwwDBGrid then begin
           (Components[IK] as TwwDBGrid).TitleColor := clBtnFace;
           (Components[IK] as TwwDBGrid).TitleFont.Color := clBlack;
       end;
   end;

  IF PROD <> '' then  begin
     Label11.caption := FFConsultaTAG.combo_produto.text   ;
     Label15.caption := FFConsultaTAG.Q_PRODPRO_DESC.asstring   ;
  end else begin
     Label11.caption :=  'Não Preenchido'   ;
     Label15.caption :=  'Não Preenchido'   ;
  end ;

  IF NUMTAG = '' then begin
      IF PALLETTAG <> '' then
         Label10.caption :=  PALLETTAG
       else
         Label10.caption :=  'Não Preenchido'   ;
  end else Label10.caption :=  NUMTAG  ;

  IF CLI <> '' then
     Label7.caption :=  FFConsultaTAG.combo_cliente.text 
   else
     Label7.caption :=  'Não Preenchido'   ;

  IF PERI_ENT <> 0.00 then
     Label4.caption := FFConsultaTAG.DATA1.text
   else
     Label4.caption := 'Não Preenchido'    ;

  IF PERF_ENT <> 0.00 then
     Label6.caption :=  FFConsultaTAG.DATA2.text
  else
     Label6.caption := 'Não Preenchido'       ;

  IF PERI_SAI <> 0.00 then
     Label9.caption := FFConsultaTAG.DATA3.text
   else
     Label9.caption := 'Não Preenchido'    ;

  IF PERI_SAI <> 0.00 then
     Label13.caption :=  FFConsultaTAG.DATA4.text
  else
     Label13.caption := 'Não Preenchido'       ;

    Q_ESTQ.SQL.clear ;
    Q_ESTQ.SQL.ADD('Select A.ESTQ_DT_ENTRADA,A.ESTQ_DT_SAIDA,  ');
    Q_ESTQ.SQL.ADD('A.ESTQ_TAG,A.ESTQ_QTDE,A.ESTQ_QTDE_RETIRA,B.POS_COD,C.PRO_COD,C.PRO_DESC,');
    Q_ESTQ.SQL.ADD('D.AR_NOME,E.CLIN_RAZA');
    Q_ESTQ.SQL.ADD('from ESTOQUE A,AREA_POSICOES B,PRODUTO C,AREA D,CLIENTENBF E ');
    Q_ESTQ.SQL.ADD('Where A.POS_ID = B.POS_ID  ');
    Q_ESTQ.SQL.ADD('and   A.PRO_Id = C.PRO_ID  ');
    Q_ESTQ.SQL.ADD('and   A.AR_ID  = D.AR_ID  ');
    Q_ESTQ.SQL.ADD('and   C.CLIN_ID = E.CLIN_ID  ');

    IF NUMTAG = '' then begin
        if PALLETTAG <> '' then
           Q_ESTQ.SQL.ADD ( 'and A.ESTQ_TAG =   ' + PALLETTAG ) ;
    end else Q_ESTQ.SQL.ADD ( 'and A.ESTQ_TAG =   ' + NUMTAG ) ;

    if CLI <> '' then
       Q_ESTQ.SQL.ADD ( 'and C.CLIN_ID  =   ' + CLI ) ;
    if PROD <> '' then
       Q_ESTQ.SQL.ADD ( 'and A.PRO_Id   =   ' + PROD ) ;

    if PERI_ENT  <> 0.0 then
            Q_ESTQ.SQL.ADD(' AND CONVERT(CHAR(10), A.ESTQ_DT_ENTRADA, 112) >= ' +''''+ formatdatetime('YYYYMMDD',PERI_ENT) + '''');
    if PERF_ENT <> 0.0 then
            Q_ESTQ.SQL.ADD(' AND CONVERT(CHAR(10), A.ESTQ_DT_ENTRADA, 112) <= ' +''''+ formatdatetime('YYYYMMDD',PERF_ENT) + '''') ;

    if PERI_SAI  <> 0.0 then
            Q_ESTQ.SQL.ADD(' AND CONVERT(CHAR(10), A.ESTQ_DT_SAIDA, 112) >= ' +''''+ formatdatetime('YYYYMMDD',PERI_SAI) + '''');
    if PERF_SAI <> 0.0 then
            Q_ESTQ.SQL.ADD(' AND CONVERT(CHAR(10), A.ESTQ_DT_SAIDA, 112) <= ' +''''+ formatdatetime('YYYYMMDD',PERF_SAI) + '''') ;
    Q_ESTQ.Open ;

end;
procedure TFConsultaTAG.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Q_ESTQ.close ;
  action := cafree ; 
end;

procedure TFConsultaTAG.SpeedButton3Click(Sender: TObject);
begin
  close ;
end;

procedure TFConsultaTAG.SBT_VISUClick(Sender: TObject);
begin
     Application.CreateForm(TFRelConsultaTAG,FRelConsultaTAG);
     FRelConsultaTAG.ConsultaPosicao.Preview;
     FRelConsultaTAG.Close;
end;

end.
