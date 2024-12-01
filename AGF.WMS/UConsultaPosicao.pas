unit UConsultaPosicao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Buttons, ExtCtrls, Db, Wwdatsrc,
  DBTables, Wwquery;

type
  TFConsultaPosicao = class(TForm)
    Panel3: TPanel;
    SpeedButton3: TSpeedButton;
    Label16: TLabel;
    Panel7: TPanel;
    Label4: TLabel;
    Label20: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Q_ESTQ: TwwQuery;
    DS_ESTQ: TwwDataSource;
    Q_ESTQESTQ_TAG: TIntegerField;
    Q_ESTQESTQ_QTDE: TFloatField;
    Q_ESTQPOS_COD: TStringField;
    Q_ESTQPRO_COD: TStringField;
    Q_ESTQPRO_DESC: TStringField;
    GRID2: TwwDBGrid;
    Q_POS: TwwQuery;
    DS_POS: TwwDataSource;
    Q_POSPOS_ID: TAutoIncField;
    Q_POSPOS_COD: TStringField;
    Q_POSAR_ID: TIntegerField;
    Q_POSPOS_PESOMAX: TFloatField;
    Label1: TLabel;
    Q_POSPOS_UTILIZADO: TStringField;
    Q_POSAR_NOME: TStringField;
    Panel1: TPanel;
    Label48: TLabel;
    Panel2: TPanel;
    Label3: TLabel;
    Q_POSESTQ_TAG: TIntegerField;
    Q_POSESTQ_QTDE: TFloatField;
    Q_POSPRO_COD: TStringField;
    Q_POSPRO_DESC: TStringField;
    SBT_VISU: TSpeedButton;
    qrLibera: TwwQuery;
    BitBtn1: TBitBtn;
    Panel4: TPanel;
    Label7: TLabel;
    Q_POSSTATUS: TStringField;
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GRID2CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure DS_POSDataChange(Sender: TObject; Field: TField);
    procedure SBT_VISUClick(Sender: TObject);
    procedure GRID2DblClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConsultaPosicao: TFConsultaPosicao;
  NUMTAG : string ;
implementation
uses UFConsultaPosicao, URelConsultaPosicao, UConsultaTAG ;
{$R *.DFM}

procedure TFConsultaPosicao.SpeedButton3Click(Sender: TObject);
begin
  close ;
end;

procedure TFConsultaPosicao.FormCreate(Sender: TObject);
VAR IK : Integer;
begin
   for IK := 0 TO PRED(ComponentCount) do begin
       if Components[IK] is TwwDBGrid then begin
           (Components[IK] as TwwDBGrid).TitleColor := clBtnFace;
           (Components[IK] as TwwDBGrid).TitleFont.Color := clBlack;
       end;
   end;
  IF POSI <> '' then
     Label6.caption := FFConsultaPosicao.Q_POSIPOS_COD.asstring
   else
     Label6.caption :=  'Não Preenchido'   ;

  IF POSF <> '' then
     Label5.caption := FFConsultaPosicao.Q_POSFPOS_COD.asstring
   else
     Label5.caption :=  'Não Preenchido'   ;

  IF ARE <> '' then
     Label10.caption :=  FFConsultaPosicao.Q_ARAR_NOME.asstring
    else
     Label10.caption :=  'Não Preenchido'   ;

         IF FFConsultaPosicao.RadioGroup1.itemindex = 0 then begin
            LABEL1.caption  :=  'Posições Ocupadas e Livres'   ;
            Q_POS.SQL.clear ;
            Q_POS.SQL.ADD('SELECT A.*,B.AR_NOME,C.ESTQ_TAG,C.ESTQ_QTDE,D.PRO_COD,D.PRO_DESC');
            Q_POS.SQL.ADD('FROM  AREA_POSICOES A ');
            Q_POS.SQL.ADD('LEFT   OUTER JOIN ESTOQUE  C     ON A.POS_ID= C.POS_ID and C.ESTQ_QTDE_RETIRA = ' + inttostr(0));
            Q_POS.SQL.ADD('LEFT   OUTER JOIN PRODUTO  D     ON D.PRO_ID= C.PRO_ID ,AREA B ');
            Q_POS.SQL.ADD('where A.AR_ID = B.AR_ID') ;

            if FFConsultaPosicao.CheckBox1.Checked then
                Q_POS.SQL.Add(' and a.status = ''B'' ');

            if FFConsultaPosicao.chk1.Checked then
                Q_POS.SQL.Add(' and isnull(a.status, '''') <> ''B'' ');

            if ARE <> '' then
               Q_POS.SQL.ADD ( 'and B.AR_ID =   ' + ARE ) ;

            if POSI <> '' then
               Q_POS.SQL.ADD ( 'and A.POS_COD >=   ' + '''' + POSI + '''' ) ;
            if POSF <> '' then
               Q_POS.SQL.ADD ( 'and A.POS_COD <=   ' + '''' + POSF + '''' ) ;
               Q_POS.SQL.ADD(' order by B.AR_NOME,A.POS_COD ');
               Q_POS.Open ;
         end ;


         IF FFConsultaPosicao.RadioGroup1.itemindex = 1 then begin
            LABEL1.caption  :=  'Posições Ocupadas'   ;

            Q_POS.SQL.clear ;
            Q_POS.SQL.ADD('SELECT A.*,B.AR_NOME,C.ESTQ_TAG,C.ESTQ_QTDE,D.PRO_COD,D.PRO_DESC');
            Q_POS.SQL.ADD('FROM  AREA_POSICOES A ');
            Q_POS.SQL.ADD('LEFT   OUTER JOIN ESTOQUE  C     ON A.POS_ID= C.POS_ID and C.ESTQ_QTDE_RETIRA = ' + inttostr(0));
            Q_POS.SQL.ADD('LEFT   OUTER JOIN PRODUTO  D     ON D.PRO_ID= C.PRO_ID ,AREA B ');
            Q_POS.SQL.ADD('where A.AR_ID = B.AR_ID') ;
            Q_POS.SQL.ADD('and   A.POS_UTILIZADO  =  ' + '''' + 'S' + '''');

            if ARE <> '' then
               Q_POS.SQL.ADD ( 'and B.AR_ID =   ' + ARE ) ;

            if FFConsultaPosicao.chk1.Checked then
                Q_POS.SQL.Add(' and isnull(a.status, '''') <> ''B'' ');

            if POSI <> '' then
               Q_POS.SQL.ADD ( 'and A.POS_COD >=   ' + '''' + POSI + '''' ) ;
            if POSF <> '' then
               Q_POS.SQL.ADD ( 'and A.POS_COD <=   ' + '''' + POSF + '''' ) ;
               Q_POS.SQL.ADD(' order by B.AR_NOME,A.POS_COD ');
               Q_POS.Open ;
         end ;


         IF FFConsultaPosicao.RadioGroup1.itemindex = 2 then begin
            LABEL1.caption  :=  'Posições Livres'   ;

            Q_POS.SQL.clear ;
            Q_POS.SQL.ADD('SELECT A.*,B.AR_NOME,C.ESTQ_TAG,C.ESTQ_QTDE,D.PRO_COD,D.PRO_DESC');
            Q_POS.SQL.ADD('FROM  AREA_POSICOES A ');
            Q_POS.SQL.ADD('LEFT   OUTER JOIN ESTOQUE  C     ON A.POS_ID= C.POS_ID and C.ESTQ_QTDE_RETIRA = ' + inttostr(0));
            Q_POS.SQL.ADD('LEFT   OUTER JOIN PRODUTO  D     ON D.PRO_ID= C.PRO_ID ,AREA B ');
            Q_POS.SQL.ADD('where A.AR_ID = B.AR_ID') ;
            Q_POS.SQL.ADD('and   A.POS_UTILIZADO  =  ' + '''' + 'N' + '''');

            if ARE <> '' then
               Q_POS.SQL.ADD ( 'and B.AR_ID =   ' + ARE ) ;

            if FFConsultaPosicao.chk1.Checked then
                Q_POS.SQL.Add(' and isnull(a.status, '''') <> ''B'' ');

            if POSI <> '' then
               Q_POS.SQL.ADD ( 'and A.POS_COD >=   ' + '''' + POSI + '''' ) ;
            if POSF <> '' then
               Q_POS.SQL.ADD ( 'and A.POS_COD <=   ' + '''' + POSF + '''' ) ;
               Q_POS.SQL.ADD(' order by B.AR_NOME,A.POS_COD ');
               Q_POS.Open ;
         end ;


end;

procedure TFConsultaPosicao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Q_ESTQ.close ;
  Q_POs.close ;
  NUMTAG := '' ; 
  action := cafree ;
end;

procedure TFConsultaPosicao.GRID2CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
     if Q_POSPOS_UTILIZADO.asstring = 'N' then begin
           AFont.color := clwhite;
           if not highlight then   begin
              ABrush.color := $00FFC140;
              AFont.Color := clblack;
            End else begin
              ABrush.color := $00FFC140;
              Afont.color :=  clblack;

            end ;
     End  ;

     if Q_POSPOS_UTILIZADO.asstring = 'S' then begin
           AFont.color := clwhite;
           if not highlight then   begin
              ABrush.color := $004AA5FF;
              AFont.Color := clblack;
            End else begin
              ABrush.color := $004AA5FF;
              Afont.color :=  clblack;

            end ;
     End  ;



     if Q_POSSTATUS.AsString = 'B' then begin
         ABrush.Color := clRed;
         AFont.Color := clBlack;
     end;

end;

procedure TFConsultaPosicao.DS_POSDataChange(Sender: TObject;
  Field: TField);
begin

   { Q_ESTQ.SQL.clear ;
    Q_ESTQ.SQL.ADD('Select A.POS_ID,A.ESTQ_TAG,A.ESTQ_QTDE,B.POS_COD,C.PRO_COD,C.PRO_DESC  ');
    Q_ESTQ.SQL.ADD('from ESTOQUE A,AREA_POSICOES B,PRODUTO C ');
    Q_ESTQ.SQL.ADD('Where A.POS_ID = B.POS_ID  ');
    Q_ESTQ.SQL.ADD('and   A.PRO_Id = C.PRO_ID  ');
    Q_ESTQ.SQL.ADD('and   A.POS_Id = ' + Q_POSPOS_ID.asstring);
    Q_ESTQ.SQL.ADD('and   A.ESTQ_QTDE_RETIRA = '+ INTTOSTR(0) );

    if ARE <> '' then
       Q_ESTQ.SQL.ADD ( 'and A.AR_ID =   ' + ARE ) ;
    if POSI <> '' then
       Q_ESTQ.SQL.ADD ( 'and B.POS_COD >=   ' + '''' + POSI + '''' ) ;
    if POSF <> '' then
       Q_ESTQ.SQL.ADD ( 'and B.POS_COD <=   ' + '''' + POSF + '''' ) ;
       Q_ESTQ.Open ;   }

end;

procedure TFConsultaPosicao.SBT_VISUClick(Sender: TObject);
begin
     Application.CreateForm(TFRelConsultaPosicao,FRelConsultaPosicao);
     FRelConsultaPosicao.ConsultaPosicao.Preview;
     FRelConsultaPosicao.Close;
end;

procedure TFConsultaPosicao.GRID2DblClick(Sender: TObject);
begin

     IF Q_POSESTQ_TAG.asstring = '' then abort ; 

     IF  GRID2.Selectedfield = Q_POSESTQ_TAG  then begin
         NUMTAG := Q_POSESTQ_TAG.asstring ;
         application.createform(TFConsultaTAG , FConsultaTAG);
         FConsultaTAG.SHOWMODAL ;
         FConsultaTAG.RELEASE   ;
         FConsultaTAG.CLOSE     ;
     end ;


end;
procedure TFConsultaPosicao.BitBtn1Click(Sender: TObject);
var posicao : string;
begin
  if Q_POSESTQ_TAG.AsString = '' then
  begin
    posicao :=  Q_POSPOS_ID.AsString;
    qrLibera.Params[0].AsInteger := Q_POSPOS_ID.Value;
    qrLibera.ExecSQL;

    Q_POS.Close;
    Q_POS.Open;
    Q_POS.Locate('POS_ID', posicao, []);
  end;
end;

end.
