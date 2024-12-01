unit UGeraFiscal2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Wwquery, wwdblook, StdCtrls, Mask, ComCtrls, Buttons,
  Gauges, ExtCtrls;

type
  TFGeraFiscal2 = class(TForm)
    Panel1: TPanel;
    Gauge1: TGauge;
    Label3: TLabel;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    Animate1: TAnimate;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Label2: TLabel;
    wwDBLookupCombo1: TwwDBLookupCombo;
    Q_CLIENTE: TwwQuery;
    Q_CLIENTECLIN_RAZA: TStringField;
    Q_CLIENTECLIN_ID: TAutoIncField;
    Panel2: TPanel;
    SpeedButton3: TSpeedButton;
    Label4: TLabel;
    Q_NF: TwwQuery;
    Q_NFCFA_CODI: TStringField;
    Q_NFNFI_NUMERO: TStringField;
    Q_NFNFI_TOTA: TFloatField;
    Q_CONHEC: TwwQuery;
    SaveDialog1: TSaveDialog;
    Q_NFNFI_DEMI: TDateTimeField;
    Q_CONHECCFA_CODI: TStringField;
    Q_CONHECOS_DATA: TDateTimeField;
    Q_CONHECMANI_ID: TIntegerField;
    Q_CONHECORD_VALORTOTAL: TFloatField;
    Q_CONHECORD_CONH: TStringField;
    Q_CLIENTECLIN_CGCCPF: TStringField;
    Q_AUX1: TwwQuery;
    Q_CONHECORD_TOTALPREST: TFloatField;
    Q_CONHECORD_DATA: TDateTimeField;
    Q_CONHECORD_ALIQ: TFloatField;
    Q_CONHECORD_VLR_ICMS: TFloatField;
    procedure wwDBLookupCombo1Enter(Sender: TObject);
    procedure wwDBLookupCombo1Exit(Sender: TObject);
    procedure MaskEdit1Enter(Sender: TObject);
    procedure MaskEdit2Enter(Sender: TObject);
    procedure MaskEdit1Exit(Sender: TObject);
    procedure MaskEdit2Exit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FGeraFiscal2: TFGeraFiscal2;

implementation

{$R *.DFM}

procedure TFGeraFiscal2.wwDBLookupCombo1Enter(Sender: TObject);
begin
     (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFGeraFiscal2.wwDBLookupCombo1Exit(Sender: TObject);
begin
     (Sender as TwwDBLookupCombo).Color := Clwhite;
end;

procedure TFGeraFiscal2.MaskEdit1Enter(Sender: TObject);
begin
     (Sender as TMaskedit).Color := ClAqua;
end;

procedure TFGeraFiscal2.MaskEdit2Enter(Sender: TObject);
begin
     (Sender as TMaskedit).Color := ClAqua;
end;

procedure TFGeraFiscal2.MaskEdit1Exit(Sender: TObject);
begin
     (Sender as TMaskedit).Color := Clwhite;
end;

procedure TFGeraFiscal2.MaskEdit2Exit(Sender: TObject);
begin
     (Sender as TMaskedit).Color := Clwhite;
end;

procedure TFGeraFiscal2.BitBtn1Click(Sender: TObject);
var
data_ini : string;
data_fim : string;
Arq : TextFile;
i : integer;

CFOP : string;

DTI   :tdatetime ;
DTF   :tdatetime ;

begin

  DTI :=  0.0 ;
  DTF :=  0.0 ;
  if MaskEdit1.text <> '  /  /    ' then
     DTI  := strtodate(MaskEdit1.text );
  if MaskEdit2.text <> '  /  /    ' then
     DTF  := strtodate(MaskEdit2.text );




   SaveDialog1.FileName := 'NFR' +formatdatetime('DDMMYY', date);

   if SaveDialog1.Execute then
   begin
        Animate1.active := true;
        AssignFile(Arq, SaveDialog1.FileName);
        Rewrite(Arq);

        Q_AUX1.close ;
        Q_AUX1.Sql.Clear ;
        Q_AUX1.Sql.Add(' Select CLIF_ID from clientefinal ') ;
        Q_AUX1.Sql.Add(' where CLIF_CGCCPF  = ' + '''' + Q_CLIENTECLIN_CGCCPF.asstring + '''' ) ;
        Q_AUX1.Open ;


        Q_NF.SQL.CLEAR;
        Q_NF.SQL.ADD('SELECT B.CFA_CODI, A.NFI_DEMI, A.NFI_NUMERO, A.NFI_TOTA ');
        Q_NF.SQL.ADD('FROM NF A LEFT OUTER JOIN FATURAMENTO B ON A.CFA_ID = B.CFA_ID');
        Q_NF.SQL.ADD('WHERE A.TDOC_ID IN (3,14)');
        if wwDBLookupCombo1.text <> '' then
            // Q_NF.SQL.ADD(' AND A.NFI_DEST_CLI = ' + Q_AUX1.fieldbyname('CLIF_ID').asstring );
            Q_NF.SQL.ADD(' AND A.NFI_DEST_CGC = ' + QuotedStr(Q_CLIENTECLIN_CGCCPF.asstring) );
        if DTI <> 0.0 then
             Q_NF.SQL.ADD ( 'and convert(Char(10),A.NFI_DEMI,112) >= ' +''''+ formatdatetime('YYYYMMDD',DTI) + '''') ;
        if DTF <> 0.0 then
             Q_NF.SQL.ADD ( 'and convert(Char(10),A.NFI_DEMI,112) <= ' +''''+ formatdatetime('YYYYMMDD',DTF) + '''') ;
        Q_NF.SQL.ADD(' ORDER BY A.NFI_DEMI');
        Q_NF.OPEN;



        Q_CONHEC.SQL.CLEAR;
        Q_CONHEC.SQL.ADD('SELECT C.CFA_CODI, B.OS_DATA, A.MANI_ID, ');
        Q_CONHEC.SQL.ADD('A.ORD_VALORTOTAL,A.ORD_CONH,A.ORD_TOTALPREST,A.ORD_DATA, A.ORD_ALIQ, A.ORD_VLR_ICMS ');
        Q_CONHEC.SQL.ADD('FROM ORDEM_COLETA_ENTREGA A LEFT OUTER JOIN FATURAMENTO C ON ');
        Q_CONHEC.SQL.ADD(' A.CFA_ID = C.CFA_ID, OS B WHERE A.OS_ID = B.OS_ID ');
        Q_CONHEC.SQL.ADD('  and    A.ORD_DATA is not  null  ');
        Q_CONHEC.SQL.ADD('  and    A.ORD_DATA <> ' + '''' + '' + '''');
        if wwDBLookupCombo1.text <> '' then begin
             Q_CONHEC.SQL.ADD(' AND (A.CLIN_ID = ' +wwDBLookupCombo1.lookupvalue  );
             Q_CONHEC.SQL.ADD(' OR   A.CLIF_ID = ' + Q_AUX1.fieldbyname('CLIF_ID').asstring  +')' );
        end ;
        if DTI <> 0.0 then
               Q_CONHEC.SQL.ADD ( 'and convert(Char(10),A.ORD_DATA,112) >= ' +''''+ formatdatetime('YYYYMMDD',DTI) + '''') ;
        if DTF <> 0.0 then
               Q_CONHEC.SQL.ADD ( 'and convert(Char(10),A.ORD_DATA,112) <= ' +''''+ formatdatetime('YYYYMMDD',DTF) + '''') ;
        Q_CONHEC.SQL.ADD('ORDER BY A.ORD_CONH');
        Q_CONHEC.OPEN;





        while not Q_NF.Eof do
        begin
                for i := length(Q_NFCFA_CODI.asstring) to 3 do
                        Write(Arq, '0');
                Write(Arq, copy(Q_NFCFA_CODI.asstring,0,4));

                for i := length(Q_NFNFI_DEMI.displaytext) to 7 do
                        Write(Arq, '0');
                Write(Arq, copy(Q_NFNFI_DEMI.displaytext,0,8));

                for i := length(Q_NFNFI_NUMERO.asstring) to 5 do
                        Write(Arq, '0');
                Write(Arq, copy(Q_NFNFI_NUMERO.asstring,0,6));


                Writeln(Arq,FormatFloat('00000000000000',(Q_NFNFI_TOTA.asfloat*100))) ;


                Q_NF.Next;
        end;
        CloseFile(Arq);
   end;




   SaveDialog1.FileName := 'CONH' +formatdatetime('DDMMYY', date);
   if SaveDialog1.execute then
   begin
        AssignFile(Arq, SaveDialog1.filename);
        Rewrite(Arq);

        while not Q_CONHEC.eof do
        begin
                for i := length(Q_CONHECCFA_CODI.asstring) to 3 do
                        Write(Arq, '0');

                //O CFOP MUDA DE 5360 para 5353
                CFOP :=  copy(Q_CONHECCFA_CODI.asstring,0,4);

                IF Trim(CFOP) = '5360' THEN
                        CFOP := '5353';


                Write(Arq, CFOP);

                for i := length(formatdatetime('DDMMYYYY', Q_CONHECORD_DATA.asdatetime)) to 7 do
                        Write(Arq, '0');
                Write(Arq, copy(formatdatetime('DDMMYYYY', Q_CONHECORD_DATA.asdatetime),0,8));

                for i := length(Q_CONHECORD_CONH.asstring) to 5 do
                        Write(Arq, '0');
                Write(Arq, copy(Q_CONHECORD_CONH.asstring,0,6));

                Write(Arq,FormatFloat('00000000000000',(Q_CONHECORD_TOTALPREST.asfloat*100))) ;

                Write(Arq,FormatFloat('00000000000000',(Q_CONHECORD_TOTALPREST.asfloat*100))) ;

                Write(Arq,FormatFloat('0000',(Q_CONHECORD_ALIQ.asfloat*100))) ;

                Writeln(Arq,FormatFloat('000000000000',(Q_CONHECORD_VLR_ICMS.asfloat*100))) ;

                Q_CONHEC.Next;
        end;
        CloseFile(Arq);


        MessageDlg('Arquivos gerados com sucesso.', mtInformation, [mbok], 0);
   end;
   Animate1.active := false;

end;

procedure TFGeraFiscal2.SpeedButton3Click(Sender: TObject);
begin
   close;
end;

procedure TFGeraFiscal2.FormCreate(Sender: TObject);
begin
   Q_CLIENTE.OPEN;
end;

procedure TFGeraFiscal2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Q_CLIENTE.CLOSE;
end;

end.
