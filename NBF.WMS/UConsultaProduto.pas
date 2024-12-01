unit UConsultaProduto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Wwdbigrd, Grids, Wwdbgrid, Buttons, Db, Wwdatsrc,
  DBTables, Wwquery, DBCtrls;

type
  TFConsultaProduto = class(TForm)
    Panel3: TPanel;
    SpeedButton3: TSpeedButton;
    Label16: TLabel;
    GRID1: TwwDBGrid;
    Panel7: TPanel;
    Q_CLINBF: TwwQuery;
    Q_CLINBFCLIN_ID: TAutoIncField;
    Q_CLINBFCLIN_RAZA: TStringField;
    Label1: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label20: TLabel;
    Label2: TLabel;
    Label8: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    SBT_VISU: TSpeedButton;
    Label18: TLabel;
    Label19: TLabel;
    Q_CONSUL: TwwQuery;
    DS_CONSUL: TwwDataSource;
    Q_CONSULQTDEUV: TFloatField;
    Q_CONSULPESOBRU: TFloatField;
    Q_CONSULOS_ID: TIntegerField;
    Q_CONSULNFI_NUMERO: TStringField;
    Q_CONSULNFI_EMIT_CLI: TIntegerField;
    Q_CONSULNFI_DEST_CLI: TIntegerField;
    Q_CONSULNFI_DEST_RAZA: TStringField;
    Q_CONSULNFI_DEMI: TDateTimeField;
    Q_CONSULNFI_CODI: TIntegerField;
    Q_CONSULNFI_TOTA: TFloatField;
    Q_CONSULQTDEPALLET: TIntegerField;
    Q_CONSULDESC_CLI: TStringField;
    Q_CONSULMANI_ID: TIntegerField;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    SpeedButton1: TSpeedButton;
    RadioGroup1: TRadioGroup;
    Q_CONSULos_DATA: TDateTimeField;
    Q_CONSULCH: TIntegerField;
    Q_CONSULLOTE: TStringField;
    Q_CONSULVENCIMENTO: TDateTimeField;
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure GRID1DblClick(Sender: TObject);
    procedure SBT_VISUClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConsultaProduto: TFConsultaProduto;
  VAR
  OS: STRING;
  NF: STRING;
  //PESQUISANF : string ;
  //PESQUISAOS : string ;
  //PESQUISAMANI : string ;
  PESQUISANF2 : string ;
  PESQUISAOS2 : string ;
  PESQUISAMANI2 : string ;
implementation
USES UFConsultaProduto, UOS, UNF, URelConsNF, UManifesto, UMENU,
  URelConsProduto ;
{$R *.DFM}

procedure TFConsultaProduto.SpeedButton3Click(Sender: TObject);
begin
CLOSE;
end;

procedure TFConsultaProduto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//Q_CONSULTA.CLOSE;

PESQUISAOS2 := '';
PESQUISAMANI2 := '';

Q_CONSUL.close;
Q_CLINBF.close ;
ACTION := CAFREE;
end;

procedure TFConsultaProduto.FormCreate(Sender: TObject);
VAR IK : Integer;
begin
   for IK := 0 TO PRED(ComponentCount) do begin
       if Components[IK] is TwwDBGrid then begin
           (Components[IK] as TwwDBGrid).TitleColor := clBtnFace;
           (Components[IK] as TwwDBGrid).TitleFont.Color := clBlack;
       end;
   end;
Q_CLINBF.open ;

  case Tipo of
    1 : LABEL1.caption  :=  'Nota Fiscal de Saída'   ;
    2 : LABEL1.caption  :=  'Nota Fiscal de Entrada'     ;

    4 : LABEL1.caption  :=  'Nota Fiscal de Remetente' ;
    3 : LABEL1.caption  :=  'Nota Fiscal de Armazém' ;
  end ;

  IF PROD <> '' then  begin
     Label11.caption := FFConsultaProduto.combo_produto.text   ;
     Label15.caption := FFConsultaProduto.Q_PRODPRO_DESC.asstring   ;
  end else begin
     Label11.caption :=  'Não Preenchido'   ;
     Label15.caption :=  'Não Preenchido'   ;
  end ;

  IF REM <> '' then
     Label7.caption :=  FFConsultaProduto.wwDBLookupCombo1.text  ;
  IF FFConsultaProduto.wwDBLookupCombo1.text = '' then
     Label7.caption := 'Não Preenchido'    ;

  IF NOTA <> '' then
     Label6.caption :=  FFConsultaProduto.dbnf.text
  else
     Label6.caption :='Não Preenchido' ;


  IF CLIF <> '' then
     Label9.caption :=  FFConsultaProduto.combo_cliente_final.text
  else
     Label9.caption := 'Não Preenchido'      ;


  IF CLI <> '' then
     Label10.caption :=  FFConsultaProduto.combo_cliente.text
  else
     Label10.caption := 'Não Preenchido'    ;

  IF VENCI <> 0.00 then
     Label12.caption :=  FFConsultaProduto.DATA1.text
  else
     Label12.caption := 'Não Preenchido'       ;

  IF VENCF <> 0.00 then
     Label14.caption :=  FFConsultaProduto.DATA2.text
  else
     Label14.caption := 'Não Preenchido' ;

  IF (TPROD <> '') and (TPROD <> '*')  then
     Label19.caption :=  FFConsultaProduto.wwDBLookupCombo2.text
  else
     Label19.caption := 'Não Preenchido' ;


  IF BATCH <> 0.00 then
     Label22.caption :=  FFConsultaProduto.MaskEdit1.text
  else
     Label22.caption := 'Não Preenchido'       ;


  IF BATCHF <> 0.00 then
     Label26.caption :=  FFConsultaProduto.MaskEdit2.text
  else
     Label26.caption := 'Não Preenchido' ;

  IF LOTE <> '' then
     Label24.caption :=  FFConsultaProduto.wwDBEdit1.text
  else
     Label24.caption :='Não Preenchido' ;


    GRID1.Visible := true ;
   { Q_CONSULTA.SQL.Clear;
    Q_CONSULTA.SQL.Add(' SELECT   SUM(B.INF_QTDE) as QTDEUV, SUM(B.INF_PESO*B.INF_QTDE) as PESOBRU, ') ;
    Q_CONSULTA.SQL.Add('  A.OS_ID, A.NFI_NUMERO, A.NFI_EMIT_CLI, A.NFI_DEST_RAZA, A.NFI_DEMI ,A.NFI_CODI, A.NFI_TOTA    ') ;
    Q_CONSULTA.SQL.Add(' FROM NF A , NF_ITENS B ,PRODUTO C ') ;
    Q_CONSULTA.SQL.ADD(' WHERE ');
    Q_CONSULTA.SQL.ADD(' A.NFI_CODI = B.NFI_CODI ') ;
    Q_CONSULTA.SQL.ADD(' and A.TDOC_ID = ' + inttostr(TIPO));
    Q_CONSULTA.SQL.ADD(' and C.PRO_ID = B.PRO_ID ');
    IF PROD <> '' then
            Q_CONSULTA.SQL.ADD(' AND B.PRO_ID = '+ '''' + PROD + '''');

    IF TPROD <> '' then
            Q_CONSULTA.SQL.ADD(' AND C.TPRO_ID = '+ '''' + TPROD + '''');


    IF (TIPO <> 4) and (TIPO <> 14) and (TIPO <> 3) then begin
       IF CLI <> '' then
            Q_CONSULTA.SQL.ADD(' AND A.NFI_EMIT_CLI = '+'''' + CLI + '''');
    end else begin
        IF REM <> '' then
            Q_CONSULTA.SQL.ADD(' AND A.NFI_EMIT_CLI = '+'''' + REM + '''');
    end ;

    IF NOTA <> '' then
            Q_CONSULTA.SQL.ADD(' AND A.NFI_NUMERO = '+'''' + NOTA + '''');
    IF CLIF <> '' then
            Q_CONSULTA.SQL.ADD(' AND A.NFI_DEST_CLI = '+'''' + CLIF + '''');
    if VENCI <> 0.0 then
            Q_CONSULTA.SQL.ADD(' AND CONVERT(CHAR(10), A.NFI_DEMI, 112) >= ' +''''+ formatdatetime('YYYYMMDD',VENCI) + '''');
    if VENCF <> 0.0 then
            Q_CONSULTA.SQL.ADD(' AND CONVERT(CHAR(10), A.NFI_DEMI, 112) <= ' +''''+ formatdatetime('YYYYMMDD',VENCF) + '''') ;
    Q_CONSULTA.SQL.ADD(' group by A.OS_ID, A.NFI_NUMERO,A.NFI_EMIT_CLI,A.NFI_DEST_RAZA, ');
    Q_CONSULTA.SQL.ADD(' A.NFI_DEMI ,A.NFI_CODI,A.NFI_TOTA  ');}
    //Q_CONSULTA.OPEN ;
  //  Q_CONSUL.open;

   { IF (TIPO <> 14) and (TIPO <> 3) then begin
    end else begin
        Grid1.Selected.clear;
        Grid1.Selected.Add('NFI_NUMERO'#9'7'#9'NF'#9'F');
        //NECESSÁRIO TRAZER A DATA DA OS E NAO DO MANIFESTO - MIGUEL
        //Grid1.Selected.Add('NFI_DEMI'#9'9'#9'Data'#9'F');
        Grid1.Selected.Add('OS_DATA'#9'9'#9'Data'#9'F');
        Grid1.Selected.Add('NFI_DEST_RAZA'#9'34'#9'Destinatário'#9'F');
        Grid1.Selected.Add('QTDEUV'#9'10'#9'Qtde. UV'#9'F');
        Grid1.Selected.Add('PESOBRU'#9'11'#9'Peso Bruto'#9'F');
        Grid1.Selected.Add('NFI_TOTA'#9'10'#9'Vlr. da Nota'#9'F');
        Grid1.Selected.Add('QTDEPALLET'#9'10'#9'Qtde. Pallet'#9'F');
        Grid1.ApplySelected;
        Grid1.Font.Height := -17  ;
        Grid1.TitleFont.Height := -9    ;
    end ;   }


end;


procedure TFConsultaProduto.GRID1DblClick(Sender: TObject);
begin
 IF  GRID1.Selectedfield = Q_CONSULOS_ID  then begin
     //PESQUISAOS := '*' ;
     PESQUISAOS2 := '*' ;
     application.createform(TFOS , FOS);
     FOS.SHOWMODAL ;
     FOS.RELEASE   ;
     FOS.CLOSE     ;
 end ;

 IF  GRID1.Selectedfield = Q_CONSULNFI_NUMERO  then begin
     //PESQUISANF := '*' ;
     PESQUISANF2 := '*' ;
     application.createform(TFNF , FNF);
     FNF.SHOWMODAL ;
     FNF.RELEASE   ;
     FNF.CLOSE     ;
 end ;

 IF  GRID1.Selectedfield = Q_CONSULMANI_ID  then begin
     //PESQUISAMANI := '*' ;
     PESQUISAMANI2 := '*' ;
     application.createform(TFManifesto , FManifesto);
     FManifesto.SHOWMODAL ;
     FManifesto.RELEASE   ;
     FManifesto.CLOSE     ;
 end ;


end;

procedure TFConsultaProduto.SBT_VISUClick(Sender: TObject);
begin
     Application.CreateForm(TFRelConsProduto,FRelConsProduto);
     FRelConsProduto.ConsNF.Preview;
     FRelConsProduto.Close;
end;

procedure TFConsultaProduto.SpeedButton1Click(Sender: TObject);
begin

 {   TIPOEMAIL := 'NFI' ;
    Application.CreateForm(TFEmail, FEmail);
    FEmail.ShowModal;
    FEmail.Release;    }


end;

procedure TFConsultaProduto.RadioGroup1Click(Sender: TObject);
begin

   {    IF RadioGroup1.itemindex = 0 then begin
           Q_CONSUL.close;
           Q_CONSUL.Sql.Clear;
           Q_CONSUL.Sql.Add('Select * from CONSULTA_PRODUTO');
           Q_CONSUL.Sql.Add('where CH = ' + FMenu.SqlUsuariosCH.asstring );
           Q_CONSUL.Sql.Add('order by OS_ID ');
           Q_CONSUL.open ;
       end ;

       IF RadioGroup1.itemindex = 1 then begin
           Q_CONSUL.close;
           Q_CONSUL.Sql.Clear;
           Q_CONSUL.Sql.Add('Select * from CONSULTA_PRODUTO');
           Q_CONSUL.Sql.Add('where CH = ' + FMenu.SqlUsuariosCH.asstring );
           Q_CONSUL.Sql.Add('order by MANI_ID ');
           Q_CONSUL.open ;
       end ;

       IF RadioGroup1.itemindex = 2 then begin
           Q_CONSUL.close;
           Q_CONSUL.Sql.Clear;
           Q_CONSUL.Sql.Add('Select * from CONSULTA_PRODUTO');
           Q_CONSUL.Sql.Add('where CH = ' + FMenu.SqlUsuariosCH.asstring );
           Q_CONSUL.Sql.Add('order by NFI_NUMERO ');
           Q_CONSUL.open ;
       end ;

       IF RadioGroup1.itemindex = 3 then begin
           Q_CONSUL.close;
           Q_CONSUL.Sql.Clear;
           Q_CONSUL.Sql.Add('Select * from CONSULTA_PRODUTO');
           Q_CONSUL.Sql.Add('where CH = ' + FMenu.SqlUsuariosCH.asstring );
           Q_CONSUL.Sql.Add('order by NFI_demi ');
           Q_CONSUL.open ;
       end ;
              }


 //alteramos a consulta q resulta da procedure
 if (FFConsultaProduto.RadioGroup1.ItemIndex = 0) or (FFConsultaProduto.RadioGroup1.ItemIndex = 2) then //se for saida, nao tomar em conta reentrega
 begin
     FConsultaProduto.Q_CONSUL.close;
     FConsultaProduto.Q_CONSUL.sql.Clear;
     FConsultaProduto.Q_CONSUL.sql.Add(
      '  Select A.*, C.MANI_DATA AS OS_DATA ' +
      '  from CONSULTA_PRODUTO A '+
      '  INNER JOIN NF B ON A.NFI_CODI = B.NFI_CODI INNER JOIN MANIFESTO C ON A.MANI_ID = C.MANI_ID'+
      '  where CH =  ' + FMenu.SqlUsuariosCH.AsString +    ' AND A.NFI_DEMI IS NOT NULL '  +
      '  and (case when b.NFI_ENTREGA is null  then ''1'' else b.NFI_ENTREGA end) <> ''R'' '+
      ' and A.NFI_NUMERO NOT LIKE ''%/%'' '
     );
 end;


 if FFConsultaProduto.RadioGroup1.ItemIndex = 1 then begin
     FConsultaProduto.Q_CONSUL.close;
     FConsultaProduto.Q_CONSUL.sql.Clear;
     FConsultaProduto.Q_CONSUL.sql.Add(
      '  Select A.*, c.os_data ' +
      '  from CONSULTA_PRODUTO A '+
      '  INNER JOIN NF B ON A.NFI_CODI = B.NFI_CODI INNER JOIN OS C ON A.OS_ID = C.OS_ID'+
      '  where CH =  ' + FMenu.SqlUsuariosCH.AsString
     );

     case FFConsultaProduto.RadioGroup4.ItemIndex of
         0 : FConsultaProduto.Q_CONSUL.sql.Add(' AND B.TDOC_ID = 2 ');
         1 : FConsultaProduto.Q_CONSUL.sql.Add(' AND B.TDOC_ID = 4 ');
     end;
 end;


 CASE   RadioGroup1.ItemIndex OF
     0 : FConsultaProduto.Q_CONSUL.sql.Add('order by A.OS_ID');
     1 : FConsultaProduto.Q_CONSUL.sql.Add('order by A.MANI_ID');
     2 : FConsultaProduto.Q_CONSUL.sql.Add('order by A.NFI_NUMERO');
     3 : FConsultaProduto.Q_CONSUL.sql.Add('order by A.NFI_DEMI');
 end;
 FConsultaProduto.Q_CONSUL.Open;

end;

end.




