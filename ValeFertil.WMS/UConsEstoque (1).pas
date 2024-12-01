unit UConsEstoque;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Wwdbigrd, Grids, Wwdbgrid, StdCtrls, Buttons, ExtCtrls, Db, Wwdatsrc,
  DBTables, Wwquery, DBClient, Provider, ComObj;

type
  TFConsEstoque = class(TForm)
    Panel3: TPanel;
    SpeedButton3: TSpeedButton;
    Label16: TLabel;
    DBG_RAAT: TwwDBGrid;
    DBG_RAATIButton: TwwIButton;
    Q_ESTQ: TwwQuery;
    Q_PROD: TwwQuery;
    Q_PRODPRO_COD: TStringField;
    Q_PRODPRO_DESC: TStringField;
    Q_PRODPRO_ID: TAutoIncField;
    Q_PRODCLIN_ID: TIntegerField;
    Q_PRODUVEN_ID: TIntegerField;
    Q_AREAux: TwwQuery;
    Q_AREAuxAR_ID: TAutoIncField;
    Q_AREAuxAR_NOME: TStringField;
    Q_POS2: TwwQuery;
    Q_POS2POS_COD: TStringField;
    Q_POS2POS_ID: TAutoIncField;
    Panel1: TPanel;
    Label30: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    wwDBGrid1: TwwDBGrid;
    wwIButton1: TwwIButton;
    Q_ESTQ2: TwwQuery;
    DS_ESTQ: TwwDataSource;
    DS_ESTQ2: TwwDataSource;
    SBT_VISU: TSpeedButton;
    Q_PRODPRO_QTDE_PALLETUV: TFloatField;
    Q_PRODQTDE_UVUE: TFloatField;
    RadioGroup4: TRadioGroup;
    Q_ESTQESTQ_ID: TAutoIncField;
    Q_ESTQAR_ID: TIntegerField;
    Q_ESTQPOS_ID: TIntegerField;
    Q_ESTQOS_ID_ORIG: TIntegerField;
    Q_ESTQPRO_ID: TIntegerField;
    Q_ESTQESTQ_QTDE: TFloatField;
    Q_ESTQESTQ_QTDE_RETIRA: TFloatField;
    Q_ESTQMANI_ID: TIntegerField;
    Q_ESTQESTQ_PESO: TFloatField;
    Q_ESTQOS_ID_DEST: TIntegerField;
    Q_ESTQESTQ_DT_ENTRADA: TDateTimeField;
    Q_ESTQESTQ_DT_SAIDA: TDateTimeField;
    Q_ESTQROM_ID_ENT: TIntegerField;
    Q_ESTQROM_ID_SAIDA: TIntegerField;
    Q_ESTQROM_DTBATCH: TDateTimeField;
    Q_ESTQROM_DTVENCTO: TDateTimeField;
    Q_ESTQESTQ_LOTE: TStringField;
    Q_ESTQUVEN_ID: TIntegerField;
    Q_ESTQESTQ_TAG: TIntegerField;
    Q_ESTQAR_ID_ANTERIOR: TIntegerField;
    Q_ESTQPOS_ID_ANTERIOR: TIntegerField;
    Q_ESTQESTQ_DT_ULMOV: TDateTimeField;
    Q_ESTQPAR_ID: TIntegerField;
    Q_ESTQGEROU_OPER_ROMSAIDA: TStringField;
    Q_ESTQMARCADOR: TStringField;
    Q_ESTQPOS_COD: TStringField;
    Q_ESTQAR_NOME: TStringField;
    Q_ESTQPRO_COD: TStringField;
    Q_ESTQPRO_DESC: TStringField;
    Q_ESTQCLIN_RAZA: TStringField;
    RadioGroup1: TRadioGroup;
    Q_ESTQ2PRO_ID: TIntegerField;
    Q_ESTQ2XVALOR: TFloatField;
    Q_ESTQ2CLIN_RAZA: TStringField;
    Q_ESTQ2Pro_COD: TStringField;
    Q_ESTQ2PRO_DESC: TStringField;
    Q_AUX3: TwwQuery;
    RadioGroup2: TRadioGroup;
    SpeedButton1: TSpeedButton;
    Q_ESTQ2TOTPESO: TFloatField;
    dspEstoque2: TDataSetProvider;
    cdsEstoque2: TClientDataSet;
    cdsEstoque2CLIN_RAZA: TStringField;
    cdsEstoque2Pro_COD: TStringField;
    cdsEstoque2PRO_DESC: TStringField;
    cdsEstoque2XVALOR: TFloatField;
    cdsEstoque2PRO_ID: TIntegerField;
    cdsEstoque2TOTPESO: TFloatField;
    dspEstoque: TDataSetProvider;
    cdsEstoque: TClientDataSet;
    cdsEstoqueCLIN_RAZA: TStringField;
    cdsEstoquePRO_COD: TStringField;
    cdsEstoquePRO_DESC: TStringField;
    cdsEstoqueESTQ_TAG: TIntegerField;
    cdsEstoqueAR_NOME: TStringField;
    cdsEstoquePOS_COD: TStringField;
    cdsEstoqueESTQ_QTDE: TFloatField;
    cdsEstoqueROM_DTBATCH: TDateTimeField;
    cdsEstoqueROM_DTVENCTO: TDateTimeField;
    cdsEstoqueESTQ_ID: TAutoIncField;
    cdsEstoqueAR_ID: TIntegerField;
    cdsEstoquePOS_ID: TIntegerField;
    cdsEstoqueOS_ID_ORIG: TIntegerField;
    cdsEstoquePRO_ID: TIntegerField;
    cdsEstoqueESTQ_QTDE_RETIRA: TFloatField;
    cdsEstoqueMANI_ID: TIntegerField;
    cdsEstoqueESTQ_PESO: TFloatField;
    cdsEstoqueOS_ID_DEST: TIntegerField;
    cdsEstoqueESTQ_DT_ENTRADA: TDateTimeField;
    cdsEstoqueESTQ_DT_SAIDA: TDateTimeField;
    cdsEstoqueROM_ID_ENT: TIntegerField;
    cdsEstoqueROM_ID_SAIDA: TIntegerField;
    cdsEstoqueESTQ_LOTE: TStringField;
    cdsEstoqueUVEN_ID: TIntegerField;
    cdsEstoqueAR_ID_ANTERIOR: TIntegerField;
    cdsEstoquePOS_ID_ANTERIOR: TIntegerField;
    cdsEstoqueESTQ_DT_ULMOV: TDateTimeField;
    cdsEstoquePAR_ID: TIntegerField;
    cdsEstoqueGEROU_OPER_ROMSAIDA: TStringField;
    cdsEstoqueMARCADOR: TStringField;
    dspProduto: TDataSetProvider;
    cdsProduto: TClientDataSet;
    cdsProdutoPRO_COD: TStringField;
    cdsProdutoPRO_DESC: TStringField;
    cdsProdutoPRO_ID: TAutoIncField;
    cdsProdutoCLIN_ID: TIntegerField;
    cdsProdutoUVEN_ID: TIntegerField;
    cdsProdutoPRO_QTDE_PALLETUV: TFloatField;
    cdsProdutoQTDE_UVUE: TFloatField;
    Q_ESTQ2ULTIMO_PRECO: TFloatField;
    cdsEstoque2ULTIMO_PRECO: TFloatField;
    Button1: TButton;
    dsExcel: TDataSource;
    procedure DS_ESTQDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SBT_VISUClick(Sender: TObject);
    procedure RadioGroup4Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConsEstoque: TFConsEstoque;

implementation
uses USenha,Umenu, UAbTabelas, UFConsEstoque,URelEstoqueSINT,
  URelEstoqueANALIT, UKardex;
{$R *.DFM}

procedure TFConsEstoque.DS_ESTQDataChange(Sender: TObject; Field: TField);
var
  UE : real ;
  CONFERE : string  ;
begin
      CONFERE := '' ;
      UE := 0 ; 

      IF (cdsEstoquePRO_ID.asstring <> '') then begin
          cdsProduto.locate('PRO_ID',cdsEstoquePRO_ID.asstring,[]);
          If (cdsEstoqueESTQ_QTDE.asfloat =
              cdsProdutoPRO_QTDE_PALLETUV.asfloat) then begin
              Label2.caption := '1' ;
              UE := {INT}(cdsEstoqueESTQ_QTDE.asfloat/cdsProdutoQTDE_UVUE.asfloat);
              CONFERE := formatfloat('0.000',(UE * cdsProdutoQTDE_UVUE.asfloat)) ;

              IF (CONFERE=  formatfloat('0.000',cdsEstoqueESTQ_QTDE.asfloat)) then
                 Label3.caption :=  FLOATTOSTR(UE)
               else begin
                 UE := INT(cdsEstoqueESTQ_QTDE.asfloat/cdsProdutoQTDE_UVUE.asfloat);
                 Label3.caption :=  FLOATTOSTR(UE) ;
                 end ;
          end else begin
              Label2.caption := '0' ;
              ///UE := INT(Q_ESTQESTQ_QTDE.asfloat/Q_PRODQTDE_UVUE.asfloat);
              //Label3.caption :=  FLOATTOSTR(UE);
              CONFERE := formatfloat('0.000',(UE * cdsProdutoQTDE_UVUE.asfloat)) ;

               IF (strtofloat(CONFERE)= cdsEstoqueESTQ_QTDE.asfloat) then
                 Label3.caption :=  FLOATTOSTR(UE)
               else  begin
                 UE := INT(cdsEstoqueESTQ_QTDE.asfloat/cdsProdutoQTDE_UVUE.asfloat);
                 Label3.caption :=  FLOATTOSTR(UE)
                 end ;
          end ;
      end ;
end;

procedure TFConsEstoque.FormCreate(Sender: TObject);
VAR IK : Integer;
begin
   for IK := 0 TO PRED(ComponentCount) do begin
       if Components[IK] is TwwDBGrid then begin
           (Components[IK] as TwwDBGrid).TitleColor := clBtnFace;
           (Components[IK] as TwwDBGrid).TitleFont.Color := clBlack;
       end;
   end;
    cdsProduto.open ;
   IF KARDEX = '' THEN BEGIN
       IF  FFConsEstoque.RadioGroup1.itemindex = 0 then begin
            RadioGroup2.itemindex := 0  ;
            Q_ESTQ2.SQL.clear ;
            Q_ESTQ2.SQL.ADD('Select A.PRO_ID,');
            Q_ESTQ2.SQL.ADD('SUM(A.ESTQ_QTDE) - SUM(A.ESTQ_QTDE_RETIRA)');
            Q_ESTQ2.SQL.ADD('as XVALOR,(SUM(A.ESTQ_QTDE) * B.PRO_PESO) as TOTPESO,C.CLIN_RAZA,B.PRO_COD,B.PRO_DESC ');
            Q_ESTQ2.SQL.ADD(', B.ULTIMO_PRECO from');
            Q_ESTQ2.SQL.ADD('ESTOQUE A,');
            Q_ESTQ2.SQL.ADD('PRODUTO B,');
            Q_ESTQ2.SQL.ADD('CLIENTENBF C  ');
            Q_ESTQ2.SQL.ADD('where ');
            Q_ESTQ2.SQL.ADD('A.PRO_ID = B.PRO_ID and ');

            IF FFConsEstoque.RadioGroup2.itemindex = 0 then
                Q_ESTQ2.SQL.ADD('B.PRO_DESCONTINUA = ' + '''' + 'S' +
                 '''' )
              else
                Q_ESTQ2.SQL.ADD('B.PRO_DESCONTINUA = ' + '''' + 'N' + '''') ;

            Q_ESTQ2.SQL.ADD('and B.CLIN_ID = C.CLIN_ID');

                if VENCI <> 0.0 then
                       Q_ESTQ2.SQL.ADD ( 'and convert(Char(10),A.ROM_DTVENCTO,112) >= ' +''''+ formatdatetime('YYYYMMDD',VENCI) + '''') ;
                if VENCF <> 0.0 then
                       Q_ESTQ2.SQL.ADD ( 'and convert(Char(10),A.ROM_DTVENCTO,112) <= ' +''''+ formatdatetime('YYYYMMDD',VENCF) + '''') ;
                if BATCHI <> 0.0 then
                       Q_ESTQ2.SQL.ADD ( 'and convert(Char(10),A.ROM_DTBATCH,112) >= ' +''''+ formatdatetime('YYYYMMDD',BATCHI) + '''') ;
                if BATCHF <> 0.0 then
                       Q_ESTQ2.SQL.ADD ( 'and convert(Char(10),A.ROM_DTBATCH,112) <= ' +''''+ formatdatetime('YYYYMMDD',BATCHF) + '''') ;
                if AREA <> '' then
                       Q_ESTQ2.SQL.ADD ( 'and A.AR_ID =   ' + AREA ) ;
                if CLI <> '' then
                       Q_ESTQ2.SQL.ADD ( 'and B.CLIN_ID = ' + CLI  ) ;
                if PROD <> '' then
                       Q_ESTQ2.SQL.ADD ( 'and A.PRO_ID =  ' + PROD ) ;
                if TPROD <> '' then
                       Q_ESTQ2.SQL.ADD ( 'and B.TPRO_ID =  ' + TPROD ) ;
                if LOTE <> '' then
                       Q_ESTQ2.SQL.ADD ( 'and A.ESTQ_LOTE =  ' + '''' + LOTE + '''' ) ;

            Q_ESTQ2.SQL.ADD('and A.ESTQ_QTDE_RETIRA = '+inttostr(0));
            Q_ESTQ2.SQL.ADD('and A.ESTQ_DT_ENTRADA is not null ');


            //adicionado filtro avaria
            CASE FFConsEstoque.rgAvaria.ItemIndex of
                1 : Q_ESTQ2.SQL.ADD('AND A.AR_ID <> 73');
                2 : Q_ESTQ2.SQL.ADD('AND A.AR_ID = 73');
            end;




            Q_ESTQ2.SQL.ADD('group by A.PRO_ID ,C.CLIN_RAZA,B.PRO_PESO,B.PRO_COD,B.PRO_DESC , B.ULTIMO_PRECO');
            //Q_ESTQ2.Open ;
            cdsEstoque2.Close;
            cdsEstoque2.Open;

            wwDBGrid1.visible := true ;
            DBG_RAAT.visible := false ;
            RadioGroup1.visible := true ;
       end else begin

            RadioGroup2.itemindex := 1  ;
            Q_ESTQ.SQL.clear ;
            Q_ESTQ.SQL.ADD('Select A.*,B.POS_COD,C.AR_NOME,D.PRO_COD,D.PRO_DESC, ');
            Q_ESTQ.SQL.ADD('E.CLIN_RAZA   ');
            Q_ESTQ.SQL.ADD('from ESTOQUE A   ');
            Q_ESTQ.SQL.ADD('LEFT JOIN AREA_POSICOES B ON A.POS_ID = B.POS_ID ');
            Q_ESTQ.SQL.ADD('LEFT JOIN AREA C ON A.AR_ID = C.AR_ID ');
            Q_ESTQ.SQL.ADD('LEFT JOIN PRODUTO D ON A.PRO_ID = D.PRO_ID ');
            Q_ESTQ.SQL.ADD('LEFT JOIN CLIENTENBF E ON D.CLIN_ID = E.CLIN_ID ');
            Q_ESTQ.SQL.ADD('where 1 = 1 ');

            IF FFConsEstoque.RadioGroup2.itemindex = 0 then
                Q_ESTQ.SQL.ADD('AND D.PRO_DESCONTINUA = ' + '''' + 'S' + '''' )
              else
                Q_ESTQ.SQL.ADD('AND D.PRO_DESCONTINUA = ' + '''' + 'N' + '''') ;
            Q_ESTQ.SQL.ADD(' and A.ESTQ_QTDE_RETIRA='+inttostr(0));
            Q_ESTQ.SQL.ADD(' and A.ESTQ_DT_ENTRADA is not null ');


                if VENCI <> 0.0 then
                       Q_ESTQ.SQL.ADD ( 'and convert(Char(10),A.ROM_DTVENCTO,112) >= ' +''''+ formatdatetime('YYYYMMDD',VENCI) + '''') ;
                if VENCF <> 0.0 then
                       Q_ESTQ.SQL.ADD ( 'and convert(Char(10),A.ROM_DTVENCTO,112) <= ' +''''+ formatdatetime('YYYYMMDD',VENCF) + '''') ;
                if BATCHI <> 0.0 then
                       Q_ESTQ.SQL.ADD ( 'and convert(Char(10),A.ROM_DTBATCH,112) >= ' +''''+ formatdatetime('YYYYMMDD',BATCHI) + '''') ;
                if BATCHF <> 0.0 then
                       Q_ESTQ.SQL.ADD ( 'and convert(Char(10),A.ROM_DTBATCH,112) <= ' +''''+ formatdatetime('YYYYMMDD',BATCHF) + '''') ;
                if AREA <> '' then
                       Q_ESTQ.SQL.ADD ( 'and A.AR_ID =   ' + AREA ) ;
                if CLI <> '' then
                       Q_ESTQ.SQL.ADD ( 'and D.CLIN_ID = ' + CLI  ) ;
                if PROD <> '' then
                       Q_ESTQ.SQL.ADD ( 'and A.PRO_ID =  ' + PROD ) ;
                if TPROD <> '' then
                       Q_ESTQ.SQL.ADD ( 'and D.TPRO_ID =  ' + TPROD ) ;
                if LOTE <> '' then
                       Q_ESTQ.SQL.ADD ( 'and A.ESTQ_LOTE =  ' + '''' + LOTE + '''' ) ;
                //adicionado filtro avaria
              CASE FFConsEstoque.rgAvaria.ItemIndex of
                  1 : Q_ESTQ.SQL.ADD('AND A.AR_ID <> 73');
                  2 : Q_ESTQ.SQL.ADD('AND A.AR_ID = 73');
              end;

            //Q_ESTQ.Open ;
            cdsEstoque.close;
            cdsEstoque.Open;
            DBG_RAAT.visible := true ;
            wwDBGrid1.visible := false ;
            RadioGroup4.visible := true ;
       end ;
   END ELSE BEGIN
         IF FKARDEX.RadioGroup1.itemindex = 0 then begin
            RadioGroup2.itemindex := 0  ;
            Q_ESTQ2.SQL.clear ;
            Q_ESTQ2.SQL.ADD('Select A.PRO_ID,');
            Q_ESTQ2.SQL.ADD('SUM(A.ESTQ_QTDE) - SUM(A.ESTQ_QTDE_RETIRA)');
            Q_ESTQ2.SQL.ADD('as XVALOR,(SUM(A.ESTQ_QTDE) * B.PRO_PESO) as TOTPESO,C.CLIN_RAZA,B.PRO_COD,B.PRO_DESC ');
            Q_ESTQ2.SQL.ADD(' , B.ULTIMO_PRECO from');
            Q_ESTQ2.SQL.ADD('ESTOQUE A,');
            Q_ESTQ2.SQL.ADD('PRODUTO B,');
            Q_ESTQ2.SQL.ADD('CLIENTENBF C  ');
            Q_ESTQ2.SQL.ADD('where ');
            Q_ESTQ2.SQL.ADD('A.PRO_ID = B.PRO_ID and ');

            IF FKARDEX.RadioGroup2.itemindex = 0 then
                Q_ESTQ2.SQL.ADD('B.PRO_DESCONTINUA = ' + '''' + 'S' + '''' )
              else
                Q_ESTQ2.SQL.ADD('B.PRO_DESCONTINUA = ' + '''' + 'N' + '''') ;

            Q_ESTQ2.SQL.ADD('and B.CLIN_ID = C.CLIN_ID');
            Q_ESTQ2.SQL.ADD ( 'and A.PRO_ID =  ' + KARDEX ) ;


            Q_ESTQ2.SQL.ADD('and A.ESTQ_QTDE_RETIRA = '+inttostr(0));
            Q_ESTQ2.SQL.ADD('and A.ESTQ_DT_ENTRADA is not null ');

            //adicionado filtro avaria
            CASE FFConsEstoque.rgAvaria.ItemIndex of
                1 : Q_ESTQ2.SQL.ADD('AND A.AR_ID <> 73');
                2 : Q_ESTQ2.SQL.ADD('AND A.AR_ID = 73');
            end;

            Q_ESTQ2.SQL.ADD('group by A.PRO_ID ,C.CLIN_RAZA,B.PRO_PESO,B.PRO_COD,B.PRO_DESC  , B.ULTIMO_PRECO');
           // Q_ESTQ2.Open ;
           cdsEstoque2.Close;
            cdsEstoque2.Open;

            wwDBGrid1.visible := true ;
            DBG_RAAT.visible := false ;
            RadioGroup1.visible := true ;
       end else begin

            RadioGroup2.itemindex := 1  ;
            Q_ESTQ.SQL.clear ;
            Q_ESTQ.SQL.ADD('Select A.*,B.POS_COD,C.AR_NOME,D.PRO_COD,D.PRO_DESC, ');
            Q_ESTQ.SQL.ADD('E.CLIN_RAZA   ');
            Q_ESTQ.SQL.ADD('from ESTOQUE A   ');
            Q_ESTQ.SQL.ADD('LEFT JOIN AREA_POSICOES B ON A.POS_ID = B.POS_ID ');
            Q_ESTQ.SQL.ADD('LEFT JOIN AREA C ON A.AR_ID = C.AR_ID ');
            Q_ESTQ.SQL.ADD('LEFT JOIN PRODUTO D ON A.PRO_ID = D.PRO_ID ');
            Q_ESTQ.SQL.ADD('LEFT JOIN CLIENTENBF E ON D.CLIN_ID = E.CLIN_ID ');
            Q_ESTQ.SQL.ADD('where 1 = 1 ');

            IF FKARDEX.RadioGroup2.itemindex = 0 then
                Q_ESTQ.SQL.ADD('AND D.PRO_DESCONTINUA = ' + '''' + 'S' + '''' )
              else
                Q_ESTQ.SQL.ADD('AND D.PRO_DESCONTINUA = ' + '''' + 'N' + '''') ;
            Q_ESTQ.SQL.ADD(' and A.ESTQ_QTDE_RETIRA='+inttostr(0));
            Q_ESTQ.SQL.ADD(' and A.ESTQ_DT_ENTRADA is not null ');
            Q_ESTQ.SQL.ADD(' and A.PRO_ID =  ' + KARDEX ) ;

            //adicionado filtro avaria
            CASE FFConsEstoque.rgAvaria.ItemIndex of
                1 : Q_ESTQ.SQL.ADD('AND A.AR_ID <> 73');
                2 : Q_ESTQ.SQL.ADD('AND A.AR_ID = 73');
            end;
  
            //Q_ESTQ.Open ;
            cdsEstoque.close;
            cdsEstoque.Open;
            DBG_RAAT.visible := true ;
            wwDBGrid1.visible := false ;
            RadioGroup4.visible := true ;
       end ;


   END ;

  //  Q_POS2.Open ;
  //  Q_AREAux.open ;
end;

procedure TFConsEstoque.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Q_ESTQ.close ;
    Q_PROD.close ;
    Q_POS2.close ;
    Q_AREAux.close ;
    action := cafree ;
end;

procedure TFConsEstoque.SpeedButton3Click(Sender: TObject);
begin
 KARDEX := '' ; 
 close;
end;

procedure TFConsEstoque.SBT_VISUClick(Sender: TObject);
begin

      IF (RadioGroup2.itemindex = 0) then begin
         Application.CreateForm(TFRelEstoqueSINT,FRelEstoqueSINT);
         FRelEstoqueSINT.ESTOQ.Preview;
         FRelEstoqueSINT.Close;
      end else begin
         Application.CreateForm(TFRelEstoqueANALIT,FRelEstoqueANALIT);
         FRelEstoqueANALIT.ESTOQ.Preview;
         FRelEstoqueANALIT.Close;
      end ;

end;

procedure TFConsEstoque.RadioGroup4Click(Sender: TObject);
begin
     IF KARDEX = '' then begin
        Q_ESTQ.SQL.clear ;
        Q_ESTQ.SQL.ADD('Select A.*,B.POS_COD,C.AR_NOME,D.PRO_COD,D.PRO_DESC,');
        Q_ESTQ.SQL.ADD('E.CLIN_RAZA  from');
        Q_ESTQ.SQL.ADD('ESTOQUE A (NOLOCK)  LEFT OUTER JOIN ');
        Q_ESTQ.SQL.ADD('AREA_POSICOES B (NOLOCK) ON A.POS_ID = B.POS_ID,');
        Q_ESTQ.SQL.ADD('AREA C (NOLOCK), PRODUTO D (NOLOCK), CLIENTENBF E (NOLOCK) where');
        Q_ESTQ.SQL.ADD('A.PRO_ID = D.PRO_ID and ');
        Q_ESTQ.SQL.ADD('D.CLIN_ID = E.CLIN_ID and ');
        Q_ESTQ.SQL.ADD('A.AR_ID = C.AR_ID and ');

        IF (FFConsEstoque.RadioGroup2.itemindex = 0) then
           Q_ESTQ.SQL.ADD('D.PRO_DESCONTINUA = ' + '''' + 'S' + '''' )
         else
           Q_ESTQ.SQL.ADD('D.PRO_DESCONTINUA = ' + '''' + 'N' + '''') ;

        Q_ESTQ.SQL.ADD(' and A.ESTQ_QTDE_RETIRA='+inttostr(0));
        Q_ESTQ.SQL.ADD(' and A.ESTQ_DT_ENTRADA is not null ');

        if VENCI <> 0.0 then
               Q_ESTQ.SQL.ADD ( 'and convert(Char(10),A.ROM_DTVENCTO,112) >= ' +''''+ formatdatetime('YYYYMMDD',VENCI) + '''') ;
        if VENCF <> 0.0 then
               Q_ESTQ.SQL.ADD ( 'and convert(Char(10),A.ROM_DTVENCTO,112) <= ' +''''+ formatdatetime('YYYYMMDD',VENCF) + '''') ;
        if BATCHI <> 0.0 then
               Q_ESTQ.SQL.ADD ( 'and convert(Char(10),A.ROM_DTBATCH,112) >= ' +''''+ formatdatetime('YYYYMMDD',BATCHI) + '''') ;
        if BATCHF <> 0.0 then
               Q_ESTQ.SQL.ADD ( 'and convert(Char(10),A.ROM_DTBATCH,112) <= ' +''''+ formatdatetime('YYYYMMDD',BATCHF) + '''') ;
        if AREA <> '' then
               Q_ESTQ.SQL.ADD ( 'and A.AR_ID =   ' + AREA ) ;
        if CLI <> '' then
               Q_ESTQ.SQL.ADD ( 'and D.CLIN_ID = ' + CLI  ) ;
        if PROD <> '' then
               Q_ESTQ.SQL.ADD ( 'and A.PRO_ID =  ' + PROD ) ;
        if TPROD <> '' then
               Q_ESTQ.SQL.ADD ( 'and D.TPRO_ID =  ' + TPROD ) ;
        if LOTE <> '' then
               Q_ESTQ.SQL.ADD ( 'and A.ESTQ_LOTE =  ' + '''' + LOTE + '''' ) ;

        //adicionado filtro avaria
            CASE FFConsEstoque.rgAvaria.ItemIndex of
                1 : Q_ESTQ.SQL.ADD('AND A.AR_ID <> 73');
                2 : Q_ESTQ.SQL.ADD('AND A.AR_ID = 73');
            end;



        IF RadioGroup4.itemindex = 0 then
           Q_ESTQ.SQL.ADD('order by E.CLIN_RAZA ');
        IF RadioGroup4.itemindex = 1 then
           Q_ESTQ.SQL.ADD('order by D.PRO_COD ');
        IF RadioGroup4.itemindex = 2 then
           Q_ESTQ.SQL.ADD('order by D.PRO_DESC ');
        IF RadioGroup4.itemindex = 3 then
           Q_ESTQ.SQL.ADD('order by C.AR_NOME ');
        IF RadioGroup4.itemindex = 4 then
           Q_ESTQ.SQL.ADD('order by B.POS_COD ');
        IF RadioGroup4.itemindex = 5 then
           Q_ESTQ.SQL.ADD('order by A.ESTQ_QTDE');
        IF RadioGroup4.itemindex = 6 then
           Q_ESTQ.SQL.ADD('order by A.rom_dtbatch');
        IF RadioGroup4.itemindex = 7 then
           Q_ESTQ.SQL.ADD('order by A.rom_dtvencto');
        //Q_ESTQ.Open ;
        cdsEstoque.close;
        cdsEstoque.Open;
     END ELSE BEGIN
        Q_ESTQ.SQL.clear ;
        Q_ESTQ.SQL.ADD('Select A.*,B.POS_COD,C.AR_NOME,D.PRO_COD,D.PRO_DESC,');
        Q_ESTQ.SQL.ADD('E.CLIN_RAZA  from');
        Q_ESTQ.SQL.ADD('ESTOQUE A (NOLOCK) LEFT OUTER JOIN ');
        Q_ESTQ.SQL.ADD('AREA_POSICOES B (NOLOCK) ON A.POS_ID = B.POS_ID,');
        Q_ESTQ.SQL.ADD('AREA C (NOLOCK), PRODUTO D (NOLOCK), CLIENTENBF E (NOLOCK) where');
        Q_ESTQ.SQL.ADD('A.PRO_ID = D.PRO_ID and ');
        Q_ESTQ.SQL.ADD('D.CLIN_ID = E.CLIN_ID and ');
        Q_ESTQ.SQL.ADD('A.AR_ID = C.AR_ID and ');

        IF (FKARDEX.RadioGroup2.itemindex = 0) then
           Q_ESTQ.SQL.ADD('D.PRO_DESCONTINUA = ' + '''' + 'S' + '''' )
         else
           Q_ESTQ.SQL.ADD('D.PRO_DESCONTINUA = ' + '''' + 'N' + '''') ;

        Q_ESTQ.SQL.ADD(' and A.ESTQ_QTDE_RETIRA='+inttostr(0));
        Q_ESTQ.SQL.ADD(' and A.ESTQ_DT_ENTRADA is not null ');
        Q_ESTQ.SQL.ADD( 'and A.PRO_ID =  ' + KARDEX ) ;

        //adicionado filtro avaria
            CASE FFConsEstoque.rgAvaria.ItemIndex of
                1 : Q_ESTQ.SQL.ADD('AND A.AR_ID <> 73');
                2 : Q_ESTQ.SQL.ADD('AND A.AR_ID = 73');
            end;

        IF RadioGroup4.itemindex = 0 then
           Q_ESTQ.SQL.ADD('order by E.CLIN_RAZA ');
        IF RadioGroup4.itemindex = 1 then
           Q_ESTQ.SQL.ADD('order by D.PRO_COD ');
        IF RadioGroup4.itemindex = 2 then
           Q_ESTQ.SQL.ADD('order by D.PRO_DESC ');
        IF RadioGroup4.itemindex = 3 then
           Q_ESTQ.SQL.ADD('order by C.AR_NOME ');
        IF RadioGroup4.itemindex = 4 then
           Q_ESTQ.SQL.ADD('order by B.POS_COD ');
        IF RadioGroup4.itemindex = 5 then
           Q_ESTQ.SQL.ADD('order by A.ESTQ_QTDE');
        IF RadioGroup4.itemindex = 6 then
           Q_ESTQ.SQL.ADD('order by A.rom_dtbatch');
        IF RadioGroup4.itemindex = 7 then
           Q_ESTQ.SQL.ADD('order by A.rom_dtvencto');
       // Q_ESTQ.Open ;
       cdsEstoque.close;
       cdsEstoque.Open;
     END ;

end;

procedure TFConsEstoque.RadioGroup1Click(Sender: TObject);
begin
     IF KARDEX = '' then begin
        Q_ESTQ2.SQL.clear ;
        Q_ESTQ2.SQL.ADD('Select A.PRO_ID,');
        Q_ESTQ2.SQL.ADD('SUM(A.ESTQ_QTDE) - SUM(A.ESTQ_QTDE_RETIRA)');
        Q_ESTQ2.SQL.ADD('as XVALOR,(SUM(A.ESTQ_QTDE) * B.PRO_PESO) as TOTPESO,C.CLIN_RAZA,B.PRO_COD,B.PRO_DESC ');
        Q_ESTQ2.SQL.ADD(',  B.ULTIMO_PRECO from');
        Q_ESTQ2.SQL.ADD('ESTOQUE A,');
        Q_ESTQ2.SQL.ADD('PRODUTO B,');
        Q_ESTQ2.SQL.ADD('CLIENTENBF C  ');
        Q_ESTQ2.SQL.ADD('where ');
        Q_ESTQ2.SQL.ADD('A.PRO_ID = B.PRO_ID and ');

        IF (FFConsEstoque.RadioGroup2.itemindex = 0) then
            Q_ESTQ2.SQL.ADD('B.PRO_DESCONTINUA = ' + '''' + 'S' + '''' )
          else
            Q_ESTQ2.SQL.ADD('B.PRO_DESCONTINUA = ' + '''' + 'N' + '''') ;

        Q_ESTQ2.SQL.ADD('and B.CLIN_ID = C.CLIN_ID');




        if VENCI <> 0.0 then
               Q_ESTQ2.SQL.ADD ( 'and convert(Char(10),A.ROM_DTVENCTO,112) >= ' +''''+ formatdatetime('YYYYMMDD',VENCI) + '''') ;
        if VENCF <> 0.0 then
               Q_ESTQ2.SQL.ADD ( 'and convert(Char(10),A.ROM_DTVENCTO,112) <= ' +''''+ formatdatetime('YYYYMMDD',VENCF) + '''') ;
        if BATCHI <> 0.0 then
               Q_ESTQ2.SQL.ADD ( 'and convert(Char(10),A.ROM_DTBATCH,112) >= ' +''''+ formatdatetime('YYYYMMDD',BATCHI) + '''') ;
        if BATCHF <> 0.0 then
               Q_ESTQ2.SQL.ADD ( 'and convert(Char(10),A.ROM_DTBATCH,112) <= ' +''''+ formatdatetime('YYYYMMDD',BATCHF) + '''') ;
        if AREA <> '' then
               Q_ESTQ2.SQL.ADD ( 'and A.AR_ID =   ' + AREA ) ;
        if CLI <> '' then
               Q_ESTQ2.SQL.ADD ( 'and B.CLIN_ID = ' + CLI  ) ;
        if PROD <> '' then
               Q_ESTQ2.SQL.ADD ( 'and A.PRO_ID =  ' + PROD ) ;
        if TPROD <> '' then
               Q_ESTQ2.SQL.ADD ( 'and B.TPRO_ID =  ' + TPROD ) ;
        if LOTE <> '' then
               Q_ESTQ2.SQL.ADD ( 'and A.ESTQ_LOTE =  ' + '''' + LOTE + '''' ) ;



        Q_ESTQ2.SQL.ADD('and A.ESTQ_QTDE_RETIRA = '+inttostr(0));
        Q_ESTQ2.SQL.ADD('and A.ESTQ_DT_ENTRADA is not null ');

        //adicionado filtro avaria
            CASE FFConsEstoque.rgAvaria.ItemIndex of
                1 : Q_ESTQ2.SQL.ADD('AND A.AR_ID <> 73');
                2 : Q_ESTQ2.SQL.ADD('AND A.AR_ID = 73');
            end;

        Q_ESTQ2.SQL.ADD('group by A.PRO_ID ,C.CLIN_RAZA,B.PRO_PESO,B.PRO_COD,B.PRO_DESC, B.ULTIMO_PRECO');


        IF RadioGroup1.itemindex = 0 then
           Q_ESTQ2.SQL.ADD('order by C.CLIN_RAZA ');
        IF RadioGroup1.itemindex = 1 then
           Q_ESTQ2.SQL.ADD('order by B.PRO_COD ');
        IF RadioGroup1.itemindex = 2 then
           Q_ESTQ2.SQL.ADD('order by B.PRO_DESC ');
        IF RadioGroup1.itemindex = 3 then
           Q_ESTQ2.SQL.ADD('order by A.XVALOR ');

       // Q_ESTQ2.Open ;
       cdsEstoque2.close;
       cdsEstoque2.Open;

     end else begin
        Q_ESTQ2.SQL.clear ;
        Q_ESTQ2.SQL.ADD('Select A.PRO_ID,');
        Q_ESTQ2.SQL.ADD('SUM(A.ESTQ_QTDE) - SUM(A.ESTQ_QTDE_RETIRA)');
        Q_ESTQ2.SQL.ADD('as XVALOR,(SUM(A.ESTQ_QTDE) * B.PRO_PESO) as TOTPESO,C.CLIN_RAZA,B.PRO_COD,B.PRO_DESC ');
        Q_ESTQ2.SQL.ADD(', B.ULTIMO_PRECO from');
        Q_ESTQ2.SQL.ADD('ESTOQUE A,');
        Q_ESTQ2.SQL.ADD('PRODUTO B,');
        Q_ESTQ2.SQL.ADD('CLIENTENBF C  ');
        Q_ESTQ2.SQL.ADD('where ');
        Q_ESTQ2.SQL.ADD('A.PRO_ID = B.PRO_ID and ');

        IF (FKARDEX.RadioGroup2.itemindex = 0) then
            Q_ESTQ2.SQL.ADD('B.PRO_DESCONTINUA = ' + '''' + 'S' + '''' )
          else
            Q_ESTQ2.SQL.ADD('B.PRO_DESCONTINUA = ' + '''' + 'N' + '''') ;

        Q_ESTQ2.SQL.ADD('and B.CLIN_ID = C.CLIN_ID');
        Q_ESTQ2.SQL.ADD ( 'and A.PRO_ID =  ' + KARDEX ) ;
        Q_ESTQ2.SQL.ADD('and A.ESTQ_QTDE_RETIRA = '+inttostr(0));
        Q_ESTQ2.SQL.ADD('and A.ESTQ_DT_ENTRADA is not null ');
        Q_ESTQ2.SQL.ADD('group by A.PRO_ID ,C.CLIN_RAZA,B.PRO_PESO,B.PRO_COD,B.PRO_DESC, B.ULTIMO_PRECO');

        //adicionado filtro avaria
            CASE FFConsEstoque.rgAvaria.ItemIndex of
                1 : Q_ESTQ2.SQL.ADD('AND A.AR_ID <> 73');
                2 : Q_ESTQ2.SQL.ADD('AND A.AR_ID = 73');
            end;

        IF RadioGroup1.itemindex = 0 then
           Q_ESTQ2.SQL.ADD('order by C.CLIN_RAZA ');
        IF RadioGroup1.itemindex = 1 then
           Q_ESTQ2.SQL.ADD('order by B.PRO_COD ');
        IF RadioGroup1.itemindex = 2 then
           Q_ESTQ2.SQL.ADD('order by B.PRO_DESC ');
        IF RadioGroup1.itemindex = 3 then
           Q_ESTQ2.SQL.ADD('order by A.XVALOR ');

       // Q_ESTQ2.Open ;
       cdsEstoque2.close;
       cdsEstoque2.Open;

     end ;
end;

procedure TFConsEstoque.RadioGroup2Click(Sender: TObject);
begin



   IF ( RadioGroup2.itemindex = 0 ) then begin
        IF KARDEX = '' THEN BEGIN
                  Q_ESTQ2.SQL.clear ;
                  Q_ESTQ2.SQL.ADD('Select A.PRO_ID,');
                  Q_ESTQ2.SQL.ADD('SUM(A.ESTQ_QTDE) - SUM(A.ESTQ_QTDE_RETIRA)');
                  Q_ESTQ2.SQL.ADD('as XVALOR,(SUM(A.ESTQ_QTDE) * B.PRO_PESO) as TOTPESO,');
                  Q_ESTQ2.SQL.ADD('C.CLIN_RAZA,B.PRO_COD,B.PRO_DESC ');
                  Q_ESTQ2.SQL.ADD(', B.ULTIMO_PRECO from');
                  Q_ESTQ2.SQL.ADD('ESTOQUE A,');
                  Q_ESTQ2.SQL.ADD('PRODUTO B,');
                  Q_ESTQ2.SQL.ADD('CLIENTENBF C  ');
                  Q_ESTQ2.SQL.ADD('where ');
                  Q_ESTQ2.SQL.ADD('A.PRO_ID = B.PRO_ID and ');

                  IF (FFConsEstoque.RadioGroup2.itemindex = 0) then
                      Q_ESTQ2.SQL.ADD('B.PRO_DESCONTINUA = ' + '''' + 'S' + '''' )
                    else
                      Q_ESTQ2.SQL.ADD('B.PRO_DESCONTINUA = ' + '''' + 'N' + '''') ;

                  Q_ESTQ2.SQL.ADD('and B.CLIN_ID = C.CLIN_ID');


                      if VENCI <> 0.0 then
                             Q_ESTQ2.SQL.ADD ( 'and convert(Char(10),A.ROM_DTVENCTO,112) >= ' +''''+ formatdatetime('YYYYMMDD',VENCI) + '''') ;
                      if VENCF <> 0.0 then
                             Q_ESTQ2.SQL.ADD ( 'and convert(Char(10),A.ROM_DTVENCTO,112) <= ' +''''+ formatdatetime('YYYYMMDD',VENCF) + '''') ;
                      if BATCHI <> 0.0 then
                             Q_ESTQ2.SQL.ADD ( 'and convert(Char(10),A.ROM_DTBATCH,112) >= ' +''''+ formatdatetime('YYYYMMDD',BATCHI) + '''') ;
                      if BATCHF <> 0.0 then
                             Q_ESTQ2.SQL.ADD ( 'and convert(Char(10),A.ROM_DTBATCH,112) <= ' +''''+ formatdatetime('YYYYMMDD',BATCHF) + '''') ;
                      if AREA <> '' then
                             Q_ESTQ2.SQL.ADD ( 'and A.AR_ID =   ' + AREA ) ;
                      if CLI <> '' then
                             Q_ESTQ2.SQL.ADD ( 'and B.CLIN_ID = ' + CLI  ) ;
                      if PROD <> '' then
                             Q_ESTQ2.SQL.ADD ( 'and A.PRO_ID =  ' + PROD ) ;
                      if TPROD <> '' then
                             Q_ESTQ2.SQL.ADD ( 'and B.TPRO_ID =  ' + TPROD ) ;
                      if LOTE <> '' then
                             Q_ESTQ2.SQL.ADD ( 'and A.ESTQ_LOTE =  ' + '''' + LOTE + '''' ) ;



                  Q_ESTQ2.SQL.ADD('and A.ESTQ_QTDE_RETIRA = '+inttostr(0));
                  Q_ESTQ2.SQL.ADD('and A.ESTQ_DT_ENTRADA is not null ');


                  //adicionado filtro avaria
            CASE FFConsEstoque.rgAvaria.ItemIndex of
                1 : Q_ESTQ2.SQL.ADD('AND A.AR_ID <> 73');
                2 : Q_ESTQ2.SQL.ADD('AND A.AR_ID = 73');
            end;

                  Q_ESTQ2.SQL.ADD('group by A.PRO_ID ,C.CLIN_RAZA,B.PRO_PESO,B.PRO_COD,B.PRO_DESC, B.ULTIMO_PRECO');
                  //Q_ESTQ2.Open ;
                  cdsEstoque2.close;
                  cdsEstoque2.Open;
                  dsExcel.DataSet := cdsEstoque2;
        END ELSE BEGIN
                  Q_ESTQ2.SQL.clear ;
                  Q_ESTQ2.SQL.ADD('Select A.PRO_ID,');
                  Q_ESTQ2.SQL.ADD('SUM(A.ESTQ_QTDE) - SUM(A.ESTQ_QTDE_RETIRA)');
                  Q_ESTQ2.SQL.ADD('as XVALOR,(SUM(A.ESTQ_QTDE) * B.PRO_PESO) as TOTPESO,C.CLIN_RAZA,B.PRO_COD,B.PRO_DESC ');
                  Q_ESTQ2.SQL.ADD(', B.ULTIMO_PRECOfrom');
                  Q_ESTQ2.SQL.ADD('ESTOQUE A,');
                  Q_ESTQ2.SQL.ADD('PRODUTO B,');
                  Q_ESTQ2.SQL.ADD('CLIENTENBF C  ');
                  Q_ESTQ2.SQL.ADD('where ');
                  Q_ESTQ2.SQL.ADD('A.PRO_ID = B.PRO_ID and ');

                  IF (FKARDEX.RadioGroup2.itemindex = 0) then
                      Q_ESTQ2.SQL.ADD('B.PRO_DESCONTINUA = ' + '''' + 'S' + '''' )
                    else
                      Q_ESTQ2.SQL.ADD('B.PRO_DESCONTINUA = ' + '''' + 'N' + '''') ;

                  Q_ESTQ2.SQL.ADD('and B.CLIN_ID = C.CLIN_ID');
                  Q_ESTQ2.SQL.ADD ( 'and A.PRO_ID =  ' + KARDEX ) ;

                  Q_ESTQ2.SQL.ADD('and A.ESTQ_QTDE_RETIRA = '+inttostr(0));
                  Q_ESTQ2.SQL.ADD('and A.ESTQ_DT_ENTRADA is not null '); 


                  //adicionado filtro avaria
            CASE FFConsEstoque.rgAvaria.ItemIndex of
                1 : Q_ESTQ2.SQL.ADD('AND A.AR_ID <> 73');
                2 : Q_ESTQ2.SQL.ADD('AND A.AR_ID = 73');
            end;


                  Q_ESTQ2.SQL.ADD('group by A.PRO_ID ,C.CLIN_RAZA,B.PRO_PESO,B.PRO_COD,B.PRO_DESC, B.ULTIMO_PRECO');
                  //Q_ESTQ2.Open ;
                  cdsEstoque2.close;
                  cdsEstoque2.Open;

        END  ;

        wwDBGrid1.visible := true ;

        DBG_RAAT.visible := false ;
        RadioGroup1.visible := true ;
        RadioGroup4.visible := false ;

        dsExcel.DataSet := cdsEstoque2;

   end else begin
        IF KARDEX = '' THEN BEGIN
                      Q_ESTQ.SQL.clear ;
                      Q_ESTQ.SQL.ADD('Select A.*,B.POS_COD,C.AR_NOME,D.PRO_COD,D.PRO_DESC, ');
                      Q_ESTQ.SQL.ADD('E.CLIN_RAZA   ');
                      Q_ESTQ.SQL.ADD('from ESTOQUE A   ');
                      Q_ESTQ.SQL.ADD('LEFT JOIN AREA_POSICOES B ON A.POS_ID = B.POS_ID ');
                      Q_ESTQ.SQL.ADD('LEFT JOIN AREA C ON A.AR_ID = C.AR_ID ');
                      Q_ESTQ.SQL.ADD('LEFT JOIN PRODUTO D ON A.PRO_ID = D.PRO_ID ');
                      Q_ESTQ.SQL.ADD('LEFT JOIN CLIENTENBF E ON D.CLIN_ID = E.CLIN_ID ');
                      Q_ESTQ.SQL.ADD('where 1 = 1 ');

                       IF (FFConsEstoque.RadioGroup2.itemindex = 0) then
                          Q_ESTQ.SQL.ADD('AND D.PRO_DESCONTINUA = ' + '''' + 'S' + '''' )
                        else
                          Q_ESTQ.SQL.ADD('AND D.PRO_DESCONTINUA = ' + '''' + 'N' + '''') ;

                      Q_ESTQ.SQL.ADD(' and A.ESTQ_QTDE_RETIRA='+inttostr(0));
                      Q_ESTQ.SQL.ADD(' and A.ESTQ_DT_ENTRADA is not null ');


                          if VENCI <> 0.0 then
                                 Q_ESTQ.SQL.ADD ( 'and convert(Char(10),A.ROM_DTVENCTO,112) >= ' +''''+ formatdatetime('YYYYMMDD',VENCI) + '''') ;
                          if VENCF <> 0.0 then
                                 Q_ESTQ.SQL.ADD ( 'and convert(Char(10),A.ROM_DTVENCTO,112) <= ' +''''+ formatdatetime('YYYYMMDD',VENCF) + '''') ;
                          if BATCHI <> 0.0 then
                                 Q_ESTQ.SQL.ADD ( 'and convert(Char(10),A.ROM_DTBATCH,112) >= ' +''''+ formatdatetime('YYYYMMDD',BATCHI) + '''') ;
                          if BATCHF <> 0.0 then
                                 Q_ESTQ.SQL.ADD ( 'and convert(Char(10),A.ROM_DTBATCH,112) <= ' +''''+ formatdatetime('YYYYMMDD',BATCHF) + '''') ;
                          if AREA <> '' then
                                 Q_ESTQ.SQL.ADD ( 'and A.AR_ID =   ' + AREA ) ;
                          if CLI <> '' then
                                 Q_ESTQ.SQL.ADD ( 'and D.CLIN_ID = ' + CLI  ) ;
                          if PROD <> '' then
                                 Q_ESTQ.SQL.ADD ( 'and A.PRO_ID =  ' + PROD ) ;
                          if TPROD <> '' then
                                 Q_ESTQ.SQL.ADD ( 'and D.TPRO_ID =  ' + TPROD ) ;
                          if LOTE <> '' then
                                 Q_ESTQ.SQL.ADD ( 'and A.ESTQ_LOTE =  ' + '''' + LOTE + '''' ) ;

                       //adicionado filtro avaria
            CASE FFConsEstoque.rgAvaria.ItemIndex of
                1 : Q_ESTQ.SQL.ADD('AND A.AR_ID <> 73');
                2 : Q_ESTQ.SQL.ADD('AND A.AR_ID = 73');
            end;

                      //Q_ESTQ.Open ;
                      cdsEstoque.close;
                      cdsEstoque.Open;
                      dsExcel.DataSet := cdsEstoque;
        END ELSE BEGIN
                      Q_ESTQ.SQL.clear ;
                      Q_ESTQ.SQL.ADD('Select A.*,B.POS_COD,C.AR_NOME,D.PRO_COD,D.PRO_DESC, ');
                      Q_ESTQ.SQL.ADD('E.CLIN_RAZA   ');
                      Q_ESTQ.SQL.ADD('from ESTOQUE A   ');
                      Q_ESTQ.SQL.ADD('LEFT JOIN AREA_POSICOES B ON A.POS_ID = B.POS_ID ');
                      Q_ESTQ.SQL.ADD('LEFT JOIN AREA C ON A.AR_ID = C.AR_ID ');
                      Q_ESTQ.SQL.ADD('LEFT JOIN PRODUTO D ON A.PRO_ID = D.PRO_ID ');
                      Q_ESTQ.SQL.ADD('LEFT JOIN CLIENTENBF E ON D.CLIN_ID = E.CLIN_ID ');
                      Q_ESTQ.SQL.ADD('where 1 = 1 ');

                       IF (FKARDEX.RadioGroup2.itemindex = 0) then
                          Q_ESTQ.SQL.ADD('AND D.PRO_DESCONTINUA = ' + '''' + 'S' + '''' )
                        else
                          Q_ESTQ.SQL.ADD('AND D.PRO_DESCONTINUA = ' + '''' + 'N' + '''') ;

                      Q_ESTQ.SQL.ADD(' and A.ESTQ_QTDE_RETIRA='+inttostr(0));
                      Q_ESTQ.SQL.ADD(' and A.ESTQ_DT_ENTRADA is not null ');
                      Q_ESTQ.SQL.ADD ( 'and A.PRO_ID =  ' + KARDEX ) ;

                      //adicionado filtro avaria
                      CASE FFConsEstoque.rgAvaria.ItemIndex of
                          1 : Q_ESTQ.SQL.ADD('AND A.AR_ID <> 73');
                          2 : Q_ESTQ.SQL.ADD('AND A.AR_ID = 73');
                      end;

                      //Q_ESTQ.Open ;
                      cdsEstoque.close;
                      cdsEstoque.Open;
                      dsExcel.DataSet := cdsEstoque;

        END  ;
        DBG_RAAT.visible := true ;
        wwDBGrid1.visible := false ;
        RadioGroup4.visible := true ;
        RadioGroup1.visible := false ;
   end ;



end;
procedure TFConsEstoque.SpeedButton1Click(Sender: TObject);
begin
   // TIPOEMAIL := 'ETQ' ;
   // Application.CreateForm(TFEmail, FEmail);
   // FEmail.ShowModal;
   // FEmail.Release;
end;

procedure TFConsEstoque.Button1Click(Sender: TObject);
var linha : Integer;
    Excel : Variant;
    i, Coluna : Integer;
    uex : real;
    saldox : string;

begin

  linha := 1;

  excel := CreateOleObject('excel.application');
  Excel.WorkBooks.Add;





  if RadioGroup2.ItemIndex = 0 then begin
    //escrevemos os cabeçalhos
    for i := 0 to pred(dsExcel.DataSet.FieldCount) do begin
        Excel.Cells[Linha, i + 1] :=  dsExcel.DataSet.Fields[i].DisplayName;
    end;
    dsExcel.DataSet.First;
    while not dsExcel.DataSet.Eof do begin
        Inc(linha);
      for i := 0 to pred(dsExcel.DataSet.FieldCount) do begin
           //escreve valor inteiro
           if dsExcel.DataSet.Fields[i].DataType in [ftSmallint, ftInteger, ftLargeint, ftAutoInc] then
              Excel.Cells[Linha, i + 1] :=  dsExcel.DataSet.Fields[i].AsInteger
           //escreve valor decimal
           else if dsExcel.DataSet.Fields[i].DataType = ftFloat then  begin
              Excel.Cells[Linha, i + 1] :=  StrToFloat(FormatFloat('##0.00',dsExcel.DataSet.Fields[i].AsFloat));
              //Excel.Cells[Linha, i + 1].numberFormat := '0,00' ;
           end
           //esreve valores de data
           else if dsExcel.DataSet.Fields[i].DataType in [ftDate, ftDateTime] then begin
               Excel.Cells[Linha, i + 1] :=  FormatDateTime('dd/mm/yyyy', dsExcel.DataSet.Fields[i].AsDateTime) + '.';
               //Excel.Cells[Linha, i + 1].NumberFormat := 'd/m/yyyy';
           end
           else
           begin
               Excel.Cells[Linha, i + 1].NumberFormat := '@';
               Excel.Cells[Linha, i + 1] :=  dsExcel.DataSet.Fields[i].AsString;
           end;
      end;
        cdsEstoque2.Next;
    end;

  end
  else // excel analisto
  begin
    Excel.Cells[Linha, 1]   := 'Cliente NBF';
    Excel.Cells[Linha, 2]   := 'Código Produto';
    Excel.Cells[Linha, 3]   := 'Descrição';
    Excel.Cells[Linha, 4]   := 'Área';
    Excel.Cells[Linha, 5]   := 'Posição';
    Excel.Cells[Linha, 6]   := 'TAG';
    Excel.Cells[Linha, 7]   := 'Qtde UV';
    Excel.Cells[Linha, 8]   := 'Pallets';
    Excel.Cells[Linha, 9]   := 'Qtde UE';
    Excel.Cells[Linha, 10]   := 'Batch';
    Excel.Cells[Linha, 11]   := 'Lote';
    Excel.Cells[Linha, 12]   := 'Vencimento';
    Excel.Cells[Linha, 13]   := 'Dt. Entrada';

    cdsEstoque.First;
    while not cdsEstoque.Eof do begin
        Inc(linha);
        Excel.Cells[Linha, 1]   := cdsEstoqueCLIN_RAZA.AsString;
        Excel.Cells[Linha, 2]   := cdsEstoquePRO_COD.AsString;
        Excel.Cells[Linha, 3]   := cdsEstoquePRO_DESC.AsString;
        Excel.Cells[Linha, 4]   := cdsEstoqueAR_NOME.Value;
        Excel.Cells[Linha, 5]   := cdsEstoquePOS_COD.Value;
        Excel.Cells[Linha, 6]   := cdsEstoqueESTQ_TAG.AsString;
        Excel.Cells[Linha, 7]   := cdsEstoqueESTQ_QTDE.Value;
        //calcula pallet
        IF (cdsEstoquePRO_ID.asstring <> '') then begin
          cdsProduto.locate('PRO_ID',FConsEstoque.cdsEstoquePRO_ID.asstring,[]);
          If (cdsEstoqueESTQ_QTDE.asfloat =
              cdsProdutoPRO_QTDE_PALLETUV.asfloat) then begin
              Excel.Cells[Linha, 8]  := '1' ;
              UEx := {INT}(cdsEstoqueESTQ_QTDE.asfloat/FConsEstoque.cdsProdutoQTDE_UVUE.asfloat);
              Excel.Cells[Linha, 9] :=  FLOATTOSTR(UEx);
          end else begin
              Excel.Cells[Linha, 8] := '0' ;
              UEx := {INT}(FConsEstoque.cdsEstoqueESTQ_QTDE.asfloat/FConsEstoque.cdsProdutoQTDE_UVUE.asfloat);
              SALDOx := formatfloat('0.000',(UEx * cdsProdutoQTDE_UVUE.asfloat)) ;

              ///qrLabel16.caption :=  FLOATTOSTR(UE);
              IF  (SALDO =  formatfloat('0.000',(FConsEstoque.cdsEstoqueESTQ_QTDE.asfloat))) then
                Excel.Cells[Linha, 9] :=  formatfloat('0',(UEx))
              else
                Excel.Cells[Linha, 9] :=  floatTOSTR(int(UEx));
          end ;
      end ;

      {Alterado para adicionar os paletes q nao sejam avarias}
      if (FConsEstoque.cdsEstoqueAR_ID.Value <> 73) and (FConsEstoque.cdsEstoqueESTQ_QTDE.asfloat > 0) then
              Excel.Cells[Linha, 8]  := '1' ;


        Excel.Cells[Linha, 10]   := '''' +  FormatDateTime('dd/MM/yyyy', cdsEstoqueROM_DTBATCH.AsDateTime);
        //Excel.Cells[Linha, 10].NumberFormat := 'd/m/yyyy';
        Excel.Cells[Linha, 11]   := cdsEstoqueESTQ_LOTE.Value;
        Excel.Cells[Linha, 12]   := '''' + FormatDateTime('dd/MM/yyyy', cdsEstoqueROM_DTVENCTO.AsDateTime);
        //Excel.Cells[Linha, 12].NumberFormat := 'd/m/yyyy';
        Excel.Cells[Linha, 13]   := '''' + FormatDateTime('dd/MM/yyyy', cdsEstoqueESTQ_DT_ENTRADA.AsDateTime);
        cdsEstoque.Next;
    end;


  end;



  Excel.Range['A:Z'].EntireColumn.AutoFit;
  Excel.Application.Visible := true;

end;

end .


