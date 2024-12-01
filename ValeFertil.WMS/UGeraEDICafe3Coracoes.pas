unit UGeraEDICafe3Coracoes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Wwdbigrd, Grids, Wwdbgrid, StdCtrls, Mask, wwdbedit, Buttons, ExtCtrls,
  ComCtrls, Gauges, Db, DBTables, Wwquery, Wwdatsrc, Wwtable, wwdblook,
  DBGrids, ADODB;

type
    TFGeraEDICafe = class(TForm)
    Panel2: TPanel;
    SpeedButton3: TSpeedButton;
    Label4: TLabel;
    Panel1: TPanel;
    Gauge1: TGauge;
    BitBtn1: TBitBtn;
    SaveDialog1: TSaveDialog;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Label3: TLabel;
    Label1: TLabel;
    Q_PARAMETRO: TwwQuery;
    Q_FAT: TwwQuery;
    DS_FAT: TwwDataSource;
    T_ACEN: TwwTable;
    T_ACENACE_CASC: TIntegerField;
    T_ACENACE_DESC: TStringField;
    T_ACENACE_NOVO: TStringField;
    Q_AUX: TwwQuery;
    Q_AUX2: TwwQuery;
    Q_AUX3: TwwQuery;
    Q_PARAMETROPAR_RAZA: TStringField;
    Q_PARAMETROPAR_CNPJ: TStringField;
    Q_FATFAT_ID: TAutoIncField;
    Q_FATFAT_NUM: TIntegerField;
    Q_FATCOND_PGTO_ID: TIntegerField;
    Q_FATCLIN_ID: TIntegerField;
    Q_FATFAT_VALOR: TFloatField;
    Q_FATFAT_EMISSAO: TDateTimeField;
    Q_FATFAT_TIPO: TStringField;
    Q_FATIFAT_VCTO: TDateTimeField;
    Q_AUX4: TwwQuery;
    Q_AUX5: TwwQuery;
    lbProgresso: TLabel;
    qrIcms: TwwQuery;
    Label2: TLabel;
    cboCliente: TwwDBLookupCombo;
    qrCliente: TwwQuery;
    qrClienteCLIN_ID: TAutoIncField;
    qrClienteCLIN_RAZA: TStringField;
    RadioGroup1: TRadioGroup;
    qrConhecimentos: TwwQuery;
    qrConhecimentosORD_CONH: TStringField;
    qrConhecimentosORD_DATA: TDateTimeField;
    qrConhecimentosORD_VLR_PEDAGIO: TFloatField;
    qrConhecimentosORD_VLR_DESPACHO: TFloatField;
    qrConhecimentosORD_VLR_SECCAT: TFloatField;
    qrConhecimentosORD_VLR_FRETE: TFloatField;
    qrConhecimentosORD_PESO_TOTAL: TFloatField;
    qrConhecimentosORD_TOTALPREST: TFloatField;
    qrConhecimentosORD_VLR_ICMS: TFloatField;
    qrConhecimentosORD_ALIQ: TFloatField;
    qrConhecimentosORD_VLR_OUTROS: TFloatField;
    qrConhecimentosCLIN_ID: TIntegerField;
    qrConhecimentosord_redespacho: TStringField;
    qrNotasORD: TwwQuery;
    qrNotasORDNFI_NUMERO: TStringField;
    qrConhecimentosORD_ID: TAutoIncField;
    qrConhecimentoscfa_id: TIntegerField;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
    Label5: TLabel;
    Gauge2: TGauge;
    qrOcoren: TwwQuery;
    qrOcorenORD_CONH: TStringField;
    qrOcorenORD_DATA: TDateTimeField;
    qrOcorenCLIN_CGCCPF: TStringField;
    qrOcorenNFI_NUMERO: TStringField;
    CheckBox1: TCheckBox;
    qrORdNota: TwwQuery;
    qrValores: TwwQuery;
    qrNotasORDNFI_ENTREGA: TStringField;
    qrConhecimentosORD_PAGO: TStringField;
    Label6: TLabel;
    edtFatura: TEdit;
    qrConhecimentosCLIF_ID: TIntegerField;
    qrConhecimentosCTE_CHAVE: TMemoField;
    qrConhecimentosCTE_PROTOCOLO: TMemoField;
    qry1: TADOQuery;
    qrConhecimentose_complementar: TStringField;
    qry2: TADOQuery;
    qrConhecimentosMANI_ID: TIntegerField;
    qrConhecimentosVEIC_ID: TIntegerField;
    procedure SpeedButton3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure MaskEdit1Enter(Sender: TObject);
    procedure MaskEdit2Enter(Sender: TObject);
    procedure MaskEdit1Exit(Sender: TObject);
    procedure MaskEdit2Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    function MUDALETR(LETRA: string): string;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

    procedure GERA_CONEMB;
    procedure GERA_OCOREN;
    procedure RadioGroup1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FGeraEDICafe: TFGeraEDICafe;
  DATA_IN : tdatetime;
  DATA_FI : tdatetime;
  AUX2 : tdatetime;

  TOTAL_POR_TIPOARQ : integer ;

  ArqTXT : textfile ;

  StrTexto10 : string;
  StrTexto11 : string;
  StrTexto50 : string;
  Conta50 : integer;
  StrTexto54 : string;
  Conta54 : integer;
  StrTexto70 : string;
  Conta70 : integer;
  StrTexto71 : string;
  Conta71 : integer;
  StrTexto74 : string;
  Conta74 : integer;
  StrTexto75 : string;
  Conta75 : integer;
  StrTexto90 : string;

  Conta90 : integer;
  /////Cab90 : string;
  //VER : integer;
  ////DATA_INI : string;
  DATA_INI2 : string;
  dataPER : string;
  DataINT : integer;
  ///DATA_FIM : string;
  DATA_FIM2 : string;
  I : integer;
  ////strdata : string;
  AUX : string;
  DATACO : STRING;
  ISENTAS : STRING ;
  SDS : INTEGER ;
  NOTASEMBARRA : string ;





  VER : integer;
  CONTAFAT : integer;
  SOMA_VLRFAT : real ;
  DATA_INI : tdatetime;
  DATA_FIM : tdatetime;
  MONTA_IDENTIFICACAO_000 : string ; 
  MONTA_IDENTIFICACAO_350 : string ;
  REG_000 : string;
  REG_000_AUX : string;
  REG_350 : string;
  REG_350_AUX : string;
  REG_351 : string;
  REG_351_AUX : string;
  REG_352 : string;
  REG_352_AUX : string;
  REG_353 : string;
  REG_353_AUX : string;
  REG_354 : string;
  REG_354_AUX : string;
  REG_355 : string;
  REG_355_AUX : string;
implementation
uses U_FUNCOES, UMenu ;
{$R *.DFM}

procedure TFGeraEDICafe.SpeedButton3Click(Sender: TObject);
begin
  close;

end;

procedure TFGeraEDICafe.BitBtn1Click(Sender: TObject);
const
  BRANCOA = ' ';
  BRANCON = '0';
  Brancos = '                                                                                                                                                                             ' ;
var P, J : Integer;
     Nota, Aliq : string;
 d1, d2 : TDateTime;

begin

    if edtFatura.Text = '' then begin

              try
                  d1 := StrToDate(MaskEdit1.Text);
                  d2 := StrToDate(MaskEdit2.Text);
              except
                  MessageBox(Self.Handle, 'Data Invalida', 'Erro', MB_OK + MB_ICONERROR)  ;
                  Abort;
              end       ;

              qrValores.Params[0].AsString := FormatDateTime('YYYYMMDD', D1);
              qrValores.Params[1].AsString := FormatDateTime('YYYYMMDD', D2);
              qrValores.ExecSQL;


             if (MaskEdit1.text = '  /  /    ') or (MaskEdit2.text = '  /  /    ') then
             begin
                  MessageDlg('Preencha todos os campos.', mtInformation, [mbok], 0);
                  abort;
             end;

             IF   cboCliente.Text = '' THEN
             begin
                  MessageDlg('Selecione Cliente!', mtInformation, [mbok], 0);
                  abort;
             end;
    end; //end if edtfatura

   DATA_INI :=  0.0 ;
   DATA_FIM :=  0.0 ;
   if MaskEdit1.text <> '  /  /    ' then
      DATA_INI  := strtodate(MaskEdit1.text );
   if MaskEdit2.text <> '  /  /    ' then
      DATA_FIM  := strtodate(MaskEdit2.text );

    gauge1.progress  := 0 ;
   gauge1.visible   := true;
   Gauge2.Visible := True;
   Label5.Visible := True;
   lbProgresso.Visible := True;
   Application.ProcessMessages;

   SaveDialog1.execute;




    ///////////////////////////////

          if RadioGroup1.ItemIndex = 1 then
          begin
              GERA_CONEMB;
              Abort;
          end;

          if RadioGroup1.ItemIndex = 2 then
          begin
              GERA_OCOREN;
              Abort;
          end;

   ////////////////////////////

   AssignFile(ArqTXT,SaveDialog1.filename);




   Q_FAT.close;
   Q_FAT.SQL.CLEAR;
   Q_FAT.SQL.ADD('SELECT A.*,B.IFAT_VCTO') ;
   Q_FAT.Sql.Add(' from FATURA A (NOLOCK),FATURA_ITENS B (NOLOCK)') ;
   Q_FAT.Sql.Add(' where   A.FAT_Id = B.FAT_ID ');


   if edtFatura.Text <> '' then begin
         Q_FAT.Sql.Add(
             ' AND  A.FAT_NUM = ' + edtFatura.Text
         );
   end else begin

         Q_FAT.Sql.Add('   and   A.CLIN_ID = ' + cboCliente.LookupValue);

         if DATA_INI <> 0.0 then
            Q_FAT.SQL.ADD ( 'and convert(Char(10),A.FAT_EMISSAO,112) >= ' +''''+ formatdatetime('YYYYMMDD',DATA_INI) + '''') ;
         if DATA_FIM <> 0.0 then
            Q_FAT.SQL.ADD ( 'and convert(Char(10),A.FAT_EMISSAO,112) <= ' +''''+ formatdatetime('YYYYMMDD',DATA_FIM) + '''') ;

   end;
   Q_FAT.OPEN;






   MONTA_IDENTIFICACAO_000  := 'COB' + FORMATDATETIME('DDMM',NOW) ;
   MONTA_IDENTIFICACAO_000 := MONTA_IDENTIFICACAO_000 + FORMATDATETIME('HHMM',NOW) ;
   MONTA_IDENTIFICACAO_000 := MONTA_IDENTIFICACAO_000 + '5' ;

   MONTA_IDENTIFICACAO_350  := 'COBRA' + FORMATDATETIME('DDMM',NOW) ;
   MONTA_IDENTIFICACAO_350 := MONTA_IDENTIFICACAO_350 + FORMATDATETIME('HHMM',NOW) ;
   MONTA_IDENTIFICACAO_350 := MONTA_IDENTIFICACAO_350 + '5' ;


   //REGISTRO 000
   REG_000 := '000';
         ///REMETENTE
         REG_000_AUX :=  copy(MUDALETR(Q_PARAMETROPAR_RAZA.asstring),1,35);
         VER := 35 - length(REG_000_AUX);
         if VER >= 0 then
         begin
              for I := VER downto 1 do
                      REG_000_AUX := REG_000_AUX + BRANCOA;
         end;
         REG_000 := REG_000 + REG_000_AUX;

         ///DESTINATARIO
         REG_000_AUX :=  cboCliente.Text;
         VER := 35 - length(REG_000_AUX);
         if VER >= 0 then
         begin
              for I := VER downto 1 do
                      REG_000_AUX := REG_000_AUX + BRANCOA;
         end;
         REG_000 := REG_000 + REG_000_AUX;

         //DATA
         REG_000_AUX := formatdatetime('DDMMYY',now);
         REG_000 := REG_000 + REG_000_AUX;

         //HORA
         REG_000_AUX := formatdatetime('HHMM',now);
         REG_000 := REG_000 + REG_000_AUX;


         //IDENTIFICAçÃO DOCTO
         REG_000 := REG_000 + MONTA_IDENTIFICACAO_000 ;

         ///FILLER
         VER := 170 - length(REG_000);
         if VER >= 0 then
         begin
              for I := VER downto 1 do
                      REG_000 := REG_000 + BRANCOA;
         end;

   Rewrite(ArqTXT);
   Writeln(ArqTXT, REG_000);
   //gauge1.progress := 15 ;
   //REGISTRO 000



   //REGISTRO 350
   REG_350 := '350';

         //IDENTIFICAçÃO DOCTO
         REG_350 := REG_350 + MONTA_IDENTIFICACAO_350;

         ///FILLER
         VER := 170 - length(REG_350);
         if VER >= 0 then
         begin
              for I := VER downto 1 do
                      REG_350 := REG_350 + BRANCOA;
         end;

   ///Rewrite(ArqTXT);
   Writeln(ArqTXT, REG_350);
   //gauge1.progress := 30 ;
   //REGISTRO 350




   //REGISTRO 351
   REG_351 := '351';
         ///CNPJ
         REG_351_AUX :=  Q_PARAMETROPAR_CNPJ.asstring;
         VER := 14 - length(REG_351_AUX);
         if VER >= 0 then
         begin
              for I := VER downto 1 do
                      REG_351_AUX := REG_351_AUX + BRANCON;
         end;
         REG_351 := REG_351 + REG_351_AUX;

         ///RAZAO
         REG_351_AUX :=  copy(MUDALETR(Q_PARAMETROPAR_RAZA.asstring),1,40);
         VER := 40 - length(REG_351_AUX);
         if VER >= 0 then
         begin
              for I := VER downto 1 do
                      REG_351_AUX := REG_351_AUX + BRANCOA;
         end;
         REG_351 := REG_351 + REG_351_AUX;

         ///FILLER
         VER := 170 - length(REG_351);
         if VER >= 0 then
         begin
              for I := VER downto 1 do
                      REG_351 := REG_351 + BRANCOA;
         end;

   ///Rewrite(ArqTXT);
   Writeln(ArqTXT, REG_351);
   //gauge1.progress := 45 ;
   //REGISTRO 351


   CONTAFAT := 0 ;
   SOMA_VLRFAT := 0 ;

  Q_FAT.Last;
  Gauge1.MaxValue := Q_FAT.RecordCount;
  Q_FAT.FIRST ;
  DS_FAT.DataSet := Q_FAT;
   WHILE NOT Q_FAT.EOF DO BEGIN

             qrIcms.close;
             qrIcms.Sql.Clear;
             qrIcms.Sql.Add('Select sum(A.ord_vlr_icms) as ICMS from ORDEM_COLETA_ENTREGA A (NOLOCK),OS B (NOLOCK)') ;
             qrIcms.Sql.Add('where  A.OS_ID = B.OS_ID');
             qrIcms.Sql.Add('and    A.FAT_ID =       ' +  Q_FATFAT_ID.asstring);
             qrIcms.Sql.Add('and    A.ORD_STATUS = ' + '''' + 'E' + '''' ) ;
             qrIcms.open;

             DS_FAT.DataSet := qrIcms;

             //REGISTRO 352
             REG_352 := '352';
                   //FILIAL EMISSORA
                   VER := 10 ;
                   if VER >= 0 then
                   begin
                        for I := VER downto 1 do
                                REG_352 := REG_352 + BRANCOA;
                   end;

                   //TIPO DOCTO
                   REG_352 := REG_352 + '0';

                   //SERIE DO DOCTO COBRANCA
                   VER := 3 ;
                   if VER >= 0 then
                   begin
                        for I := VER downto 1 do
                                REG_352 := REG_352 + BRANCOA;
                   end;

                   //NUMERO DOCTO COBRANCA
                   REG_352_AUX := formatfloat('0000000000',Q_FATFAT_NUM.asfloat);
                   REG_352 := REG_352 + REG_352_AUX;

                   //DATA DE EMISSAO
                   REG_352_AUX := formatdatetime('DDMMYYYY',Q_FATFAT_EMISSAO.asdatetime);
                   REG_352 := REG_352 + REG_352_AUX;

                   //DATA DE VENCIMENTO
                   REG_352_AUX := formatdatetime('DDMMYYYY',Q_FATIFAT_VCTO.asdatetime);
                   REG_352 := REG_352 + REG_352_AUX;

                   //VALOR DOCTO COBRANCA
                   REG_352_AUX := formatfloat('000000000000000',(Q_FATFAT_VALOR.asfloat*100));
                   REG_352 := REG_352 + REG_352_AUX;

                   SOMA_VLRFAT := SOMA_VLRFAT +  Q_FATFAT_VALOR.asfloat ;

                   // TIPO COBRANCA
                   REG_352_AUX := 'BCO';
                   REG_352 := REG_352 + REG_352_AUX;
                   
                   {Alterado}
                   //VALOR TOTAL ICMS
                   Aliq := FormatFloat('##0.00',qrIcms.FieldByName('ICMS').asfloat);
                   Aliq := StringReplace(Aliq,',','',[rfReplaceAll]);
                   For j := Length(Aliq) to 14  do
                     Aliq := '0' + Aliq;
                   REG_352_AUX := Aliq;
                   REG_352 := REG_352 + REG_352_AUX;

                   //VALOR JUROS DIA ATRASO
                   REG_352_AUX := '000000000000000';
                   REG_352 := REG_352 + REG_352_AUX;

                   //DATA LIMITE P PAGTO
                   REG_352_AUX := '00000000';
                   REG_352 := REG_352 + REG_352_AUX;

                   //VALOR DESCONTO
                   REG_352_AUX := '000000000000000';
                   REG_352 := REG_352 + REG_352_AUX;

                   //NOME BANCO
                   REG_352_AUX := 'BANCO DO BRASIL';
                   VER := 35 - length(REG_352_AUX);
                   if VER >= 0 then
                   begin
                        for I := VER downto 1 do
                                REG_352_AUX := REG_352_AUX + BRANCOA;
                   end;
                   REG_352 := REG_352 + REG_352_AUX;

                   //AGENCIA BANCARIA
                   REG_352_AUX := '0427';
                   REG_352 := REG_352 + REG_352_AUX;

                   //digito AGENCIA BANCARIA
                   REG_352_AUX := '8';
                   REG_352 := REG_352 + REG_352_AUX;

                   //CONTA CORRENTE
                   REG_352_AUX := '0000004880';
                   VER := 10 - length(REG_352_AUX);
                   if VER >= 0 then
                   begin
                        for I := VER downto 1 do
                                REG_352_AUX := REG_352_AUX + BRANCON;
                   end;
                   REG_352 := REG_352 + REG_352_AUX;

                   //digito C/C
                   REG_352_AUX := '1 ';
                   REG_352 := REG_352 + REG_352_AUX;

                   //AçÃO DO DOCTO
                   REG_352_AUX := 'I';
                   REG_352 := REG_352 + REG_352_AUX;

                   ///FILLER
                   VER := 170 - length(REG_352);
                   if VER >= 0 then
                   begin
                        for I := VER downto 1 do
                                REG_352 := REG_352 + BRANCOA;
                   end;

             ///Rewrite(ArqTXT);
             Writeln(ArqTXT, REG_352);
             //gauge1.progress := 60 ;

             CONTAFAT := CONTAFAT + 1 ;
             //REGISTRO 352

             //ShowMessage('OK');
             Q_AUX2.close;
             Q_AUX2.Sql.Clear;
             Q_AUX2.Sql.Add('Select A.* from ORDEM_COLETA_ENTREGA A (NOLOCK),OS B (NOLOCK)') ;
             Q_AUX2.Sql.Add('where  A.OS_ID = B.OS_ID');
             Q_AUX2.Sql.Add('and    A.FAT_ID =       ' +  Q_FATFAT_ID.asstring);
             Q_AUX2.Sql.Add('and    A.ORD_STATUS = ' + '''' + 'E' + '''' ) ;
             Q_AUX2.Sql.Add('order by A.ORD_CONH' ) ;
             Q_AUX2.open;

             Q_AUX3.close;
             Q_AUX3.Sql.Clear;
             Q_AUX3.Sql.Add('Select CLIN_CGCCPF from CLIENTENBF (NOLOCK)') ;
             Q_AUX3.Sql.Add('where  CLIN_ID = ' + Q_AUX2.fieldbyname('CLIN_ID').asstring);
             Q_AUX3.open;

             Q_AUX4.close;
             Q_AUX4.Sql.Clear;
             Q_AUX4.Sql.Add('Select CLIF_CGCCPF from CLIENTEFINAL (NOLOCK)') ;
             Q_AUX4.Sql.Add('where  CLIF_ID = ' + Q_AUX2.fieldbyname('CLIF_ID').asstring);
             Q_AUX4.open;

             Q_AUX2.Last;
             Gauge2.MaxValue := Q_AUX2.RecordCount;
             Gauge2.Progress := 0;
             Q_AUX2.first;

             DS_FAT.DataSet := Q_AUX2;
             WHILE NOT Q_AUX2.EOF DO BEGIN
                            Gauge2.Progress := Gauge2.Progress + 1;
                            Application.ProcessMessages;
                           //REGISTRO 353
                           REG_353 := '353';
                               //FILIAL EMISSORA
                              // VER := 10 ;
                              // if VER >= 0 then
                              // begin
                               //     for I := VER downto 1 do
                                            REG_353 := REG_353 + 'SBC       ';
                               //end;

                               //SERIE DO DOCTO COBRANCA
                               //VER :=5;
                               //if VER >= 0 then
                                //begin
                               //     for I := VER downto 1 do
                                            REG_353 := REG_353 + '0    ';
                               //end;

                               //Numero do CONHECIMENTO
                               REG_353_AUX :=  Q_AUX2.fieldbyname('ORD_CONH').asstring;
                               VER :=12 - length(REG_353_AUX);
                               if VER >= 0 then
                               begin
                                    for I := VER downto 1 do
                                            REG_353_AUX := REG_353_AUX + BRANCOA;
                               end;
                               REG_353 := REG_353 + REG_353_AUX;

                               //VALOR FRETE  solicitado por Alberto para colocar o valor total da prestação no lugar do valor do frete
                               //REG_353_AUX := formatfloat('000000000000000',(Q_AUX2.fieldbyname('ORD_VLR_FRETE').asfloat*100));
                               REG_353_AUX := formatfloat('000000000000000',(Q_AUX2.fieldbyname('ORD_TOTALPREST').asfloat*100));
                               REG_353 := REG_353 + REG_353_AUX;

                               //DATA EMISSAO CONHCTO
                               REG_353_AUX := formatdatetime('DDMMYYYY',Q_AUX2.fieldbyname('ORD_DATA').asdatetime);
                               REG_353 := REG_353 + REG_353_AUX;

                               ///CNPJ do REMETENTE
                               REG_353_AUX :=   COPY(Q_AUX3.fieldbyname('CLIN_CGCCPF').asstring, 1, 14);
                               VER := 14 - length(REG_353_AUX);
                               if VER >= 0 then
                               begin
                                    for I := VER downto 1 do
                                            REG_353_AUX := REG_353_AUX + BRANCON;
                               end;
                               REG_353 := REG_353 + REG_353_AUX;

                               ///CNPJ do DESTINATARIO
                               if Length(Q_AUX4.fieldbyname('CLIF_CGCCPF').asstring) = 15 then
                                  REG_353_AUX :=  Copy(Q_AUX4.fieldbyname('CLIF_CGCCPF').asstring, 2, 14)
                               else
                                  REG_353_AUX :=  Copy(Q_AUX4.fieldbyname('CLIF_CGCCPF').asstring, 1, 14);
                               VER := 14 - length(REG_353_AUX);
                               if VER >= 0 then
                               begin
                                    for I := VER downto 1 do
                                            REG_353_AUX := REG_353_AUX + BRANCON;
                               end;
                               REG_353 := REG_353 + REG_353_AUX;

                               ///CNPJ  do emissor
                               REG_353_AUX :=  COPY(Q_PARAMETROPAR_CNPJ.asstring, 1,14);
                               VER := 14 - length(REG_353_AUX);
                               if VER >= 0 then
                               begin
                                    for I := VER downto 1 do
                                            REG_353_AUX := REG_353_AUX + BRANCON;
                               end;
                               REG_353 := REG_353 + REG_353_AUX;

                               if CheckBox1.Checked  then
                               begin
                                  { //BASE CALCULO ICMS
                                   REG_353_AUX := FormatFloat('0000000000000.00',Q_AUX2.FieldByName('ORD_TOTALPREST').AsFloat);
                                   REG_353_AUX := StringReplace(REG_353_AUX,',','',[rfReplaceAll]);
                                   REG_353 := REG_353 + REG_353_AUX;

                                   //ALIQUOTA ICMS
                                   Aliq := FormatFloat('000.00',Q_AUX2.FieldByName('ORD_ALIQ').AsFloat);
                                   Aliq := StringReplace(Aliq,',','',[rfReplaceAll]);

                                   REG_353_AUX := Aliq;
                                   REG_353 := REG_353 + REG_353_AUX;    }


                                   ///FILLER
                                     VER := 170 - length(REG_353);
                                     if VER >= 0 then
                                     begin
                                          for I := VER downto 1 do
                                                  REG_353 := REG_353 + BRANCOA;
                                     end;
                               end
                               else
                               begin
                                   ///FILLER
                                     VER := 170 - length(REG_353);
                                     if VER >= 0 then
                                     begin
                                          for I := VER downto 1 do
                                                  REG_353 := REG_353 + BRANCOA;
                                     end;
                               end;
                               

                          /// Rewrite(ArqTXT);
                           Writeln(ArqTXT, REG_353);
                          // gauge1.progress := 75 ;
                           //REGISTRO 353




                           Q_AUX5.close;
                           Q_AUX5.Sql.Clear;
                           Q_AUX5.Sql.Add('SELECT A.ORD_ID,A.NFI_SERIE,A.NFI_NUMERO,');
                           Q_AUX5.Sql.Add('A.NFI_DEMI,A.NFI_PBRU,A.NFI_TOTA,A.NFI_EMIT_CLI,B.CLIN_CGCCPF');
                           Q_AUX5.Sql.Add('FROM  NF A (NOLOCK),CLIENTENBF B (NOLOCK)');
                           Q_AUX5.Sql.Add('WHERE B.CLIN_ID = A.NFI_EMIT_CLI ');
                           Q_AUX5.Sql.Add('AND   A.ORD_ID  =  ' + Q_AUX2.fieldbyname('ORD_ID').asstring);
                           Q_AUX5.open;



                           IF Q_AUX5.fieldbyname('ORD_ID').asstring <> '' then begin

                                    DS_FAT.DataSet := Q_AUX5;
                                    while not Q_AUX5.Eof do
                                    Begin
                                        //REGISTRO 354
                                        REG_354 := '354';


                                         //SERIE
                                         REG_354_AUX :=  Q_AUX5.fieldbyname('NFI_SERIE').asstring;
                                         VER :=3 - length(REG_354_AUX);
                                         if VER >= 0 then
                                         begin
                                              for I := VER downto 1 do
                                                      REG_354_AUX := REG_354_AUX + BRANCOA;
                                         end;
                                         REG_354 := REG_354 + REG_354_AUX;

                                         //NUM DA NOTA FISCAL
                                         p := Pos('/',Q_AUX5.fieldbyname('NFI_NUMERO').AsString);
                                         if p > 0 then
                                             Nota := Copy(Q_AUX5.fieldbyname('NFI_NUMERO').AsString,1,p-1)
                                         else
                                             Nota := Q_AUX5.fieldbyname('NFI_NUMERO').AsString;

                                         nota := Funcoes.RemoveLetras(Nota);

                                         REG_354_AUX := formatfloat('00000000', StrToFloat(Nota));
                                         REG_354 := REG_354 + REG_354_AUX;

                                         //DATA EMISSAO NOTA FISCAL
                                         REG_354_AUX := formatdatetime('DDMMYYYY',Q_AUX5.fieldbyname('NFI_DEMI').asdatetime);
                                         REG_354 := REG_354 + REG_354_AUX;

                                         //PESO DA NOTA FISCAL
                                         REG_354_AUX := formatfloat('0000000', (Q_AUX5.fieldbyname('NFI_PBRU').asfloat*100));
                                         REG_354 := REG_354 + REG_354_AUX;

                                         //VALOR DA NOTA FISCAL
                                         REG_354_AUX := formatfloat('000000000000000', (Q_AUX5.fieldbyname('NFI_TOTA').asfloat*100));
                                         REG_354 := REG_354 + REG_354_AUX;

                                          ///CNPJ do emissor
                                         REG_354_AUX :=  Q_AUX5.fieldbyname('CLIN_CGCCPF').asstring;
                                         VER := 14 - length(REG_354_AUX);
                                         if VER >= 0 then
                                         begin
                                              for I := VER downto 1 do
                                                      REG_354_AUX := REG_354_AUX + BRANCON;
                                         end;
                                         REG_354 := REG_354 + REG_354_AUX;


                                         ///FILLER
                                           VER := 170 - length(REG_354);
                                           if VER >= 0 then
                                           begin
                                                for I := VER downto 1 do
                                                        REG_354 := REG_354 + BRANCOA;
                                           end;

                                     ///Rewrite(ArqTXT);
                                     Writeln(ArqTXT, REG_354);
                                    // gauge1.progress := 90 ;
                                     //REGISTRO 354
                                     Q_AUX5.Next;
                                    end;//end while

                           end else begin
                                   Q_AUX5.close;
                                   Q_AUX5.Sql.Clear;
                                   Q_AUX5.Sql.Add('SELECT  A.CNF_NF,A.CNF_PESO,A.CNF_VALOR, E.CLIN_CGCCPF ');
                                   Q_AUX5.Sql.Add('FROM COLETA_NF A (NOLOCK),MANIFESTO B (NOLOCK), OS C (NOLOCK), ');
                                   Q_AUX5.Sql.Add('ORDEM_COLETA_ENTREGA D (NOLOCK),CLIENTENBF E (NOLOCK)');
                                   Q_AUX5.Sql.Add('where  B.MANI_ID = A.MANI_ID ');
                                   Q_AUX5.Sql.Add('AND    B.MANI_ID = D.MANI_ID ');
                                   Q_AUX5.Sql.Add('AND    C.OS_ID = D.OS_ID ');
                                   Q_AUX5.Sql.Add('AND    E.CLIN_ID = B.CLIN_ID  ');
                                   Q_AUX5.Sql.Add('AND    D.ORD_ID  =  ' + Q_AUX2.fieldbyname('ORD_ID').asstring);
                                   Q_AUX5.open;

                              DS_FAT.DataSet := Q_AUX5;
                              while not Q_AUX5.Eof do
                              begin
                                     //REGISTRO 354
                                     REG_354 := '354';
                                     REG_354_AUX := '';
                                         //SERIE
                                         VER := 3;
                                         if VER >= 0 then
                                         begin
                                              for I := VER downto 1 do
                                                      REG_354_AUX := REG_354_AUX + BRANCOA;
                                         end;
                                         REG_354 := REG_354 + REG_354_AUX;

                                         //NUM DA NOTA FISCAL  {Alteração: Miguel - Remoção da barra / da nota fiscal}
                                         p := Pos('/',Q_AUX5.fieldbyname('CNF_NF').AsString);
                                         if p > 0 then
                                             Nota := Copy(Q_AUX5.fieldbyname('CNF_NF').AsString,1,p-1)
                                         else
                                             Nota := Q_AUX5.fieldbyname('CNF_NF').AsString;

                                         REG_354_AUX := formatfloat('00000000', StrToFloat(Nota));
                                         REG_354 := REG_354 + REG_354_AUX;

                                         //DATA EMISSAO NOTA FISCAL
                                         //REG_354_AUX := formatdatetime('DDMMYYYY',Q_AUX5.fieldbyname('NFI_DEMI').asdatetime);
                                         REG_354_AUX := formatdatetime('DDMMYYYY',NOW);
                                         REG_354 := REG_354 + REG_354_AUX;

                                         //PESO DA NOTA FISCAL
                                         REG_354_AUX := formatfloat('0000000', (Q_AUX5.fieldbyname('CNF_PESO').asfloat*100));
                                         REG_354 := REG_354 + REG_354_AUX;

                                         //VALOR DA NOTA FISCAL
                                         REG_354_AUX := formatfloat('000000000000000', (Q_AUX5.fieldbyname('CNF_VALOR').asfloat*100));
                                         REG_354 := REG_354 + REG_354_AUX;

                                          ///CNPJ do emissor
                                         REG_354_AUX :=  Q_AUX5.fieldbyname('CLIN_CGCCPF').asstring;
                                         VER := 14 - length(REG_354_AUX);
                                         if VER >= 0 then
                                         begin
                                              for I := VER downto 1 do
                                                      REG_354_AUX := REG_354_AUX + BRANCON;
                                         end;
                                         REG_354 := REG_354 + REG_354_AUX;


                                         ///FILLER
                                           VER := 170 - length(REG_354);
                                           if VER >= 0 then
                                           begin
                                                for I := VER downto 1 do
                                                        REG_354 := REG_354 + BRANCOA;
                                           end;

                                     ///Rewrite(ArqTXT);
                                     Writeln(ArqTXT, REG_354);
                                   //  gauge1.progress := 90 ;
                                     //REGISTRO 354
                                   Q_AUX5.Next;
                              end;//end while



                           end ;


                 Q_AUX2.NEXT ;
             END ;

             //REGISTRO 355
            { REG_355 := '355';
                 //QTDE TOTAL DCTOS COBRANÇA
                 REG_355_AUX := formatfloat('0000', CONTAFAT);
                 REG_355 := REG_355 + REG_355_AUX;

                 //VALOR TOTAL DCTOS COBRANÇA
                 REG_355_AUX := formatfloat('000000000000000', (SOMA_VLRFAT*100));
                 REG_355 := REG_355 + REG_355_AUX;

                 ///FILLER
                   VER := 170 - length(REG_355);
                   if VER >= 0 then
                   begin
                        for I := VER downto 1 do
                                REG_355 := REG_355 + BRANCOA;
                   end;

            // Rewrite(ArqTXT);
             Writeln(ArqTXT, REG_355); }
            // gauge1.progress := 97 ;
             //REGISTRO 355
       Application.ProcessMessages;
       Gauge1.Progress := Gauge1.Progress + 1;
       Q_FAT.NEXT ;
       DS_FAT.DataSet := Q_FAT;
   END ;

    // ESTE REGISTRO TEM QUE IR NO FINA DO ARQUIVO 
      //REGISTRO 355
   REG_355 := '355';
       //QTDE TOTAL DCTOS COBRANÇA
       REG_355_AUX := formatfloat('0000', CONTAFAT);
       REG_355 := REG_355 + REG_355_AUX;

       //VALOR TOTAL DCTOS COBRANÇA
       REG_355_AUX := formatfloat('000000000000000', (SOMA_VLRFAT*100));
       REG_355 := REG_355 + REG_355_AUX;

       ///FILLER
         VER := 170 - length(REG_355);
         if VER >= 0 then
         begin
              for I := VER downto 1 do
                      REG_355 := REG_355 + BRANCOA;
         end;

  // Rewrite(ArqTXT);
   Writeln(ArqTXT, REG_355);


   Closefile(ArqTXT);

   gauge1.progress := 0  ;
   Gauge2.Progress := 0;
   gauge1.visible  := false;
   Gauge2.Visible := False;
   label5.Visible := False;
   lbProgresso.Visible := False;
   MessageDlg('Geração efetuada com sucesso!', mtInformation, [mbok], 0);
  

end;



procedure TFGeraEDICafe.MaskEdit1Enter(Sender: TObject);
begin
     (Sender as TMaskedit).Color := ClAqua;
end;

procedure TFGeraEDICafe.MaskEdit2Enter(Sender: TObject);
begin
  (Sender as TMaskedit).Color := ClAqua;
end;

procedure TFGeraEDICafe.MaskEdit1Exit(Sender: TObject);
begin
  (Sender as TMaskedit).Color := ClWHITE;
end;

procedure TFGeraEDICafe.MaskEdit2Exit(Sender: TObject);
begin
     (Sender as TMaskedit).Color := ClWHITE;
end;

procedure TFGeraEDICafe.FormCreate(Sender: TObject);
begin
   Q_PARAMETRO.OPEN;
   t_acen.OPEN ;
   qrCliente.Open;
end;

procedure TFGeraEDICafe.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Q_PARAMETRO.CLOSE;
   ////Q_NF.CLOSE;
   Q_FAT.CLOSE;
   ///Q_CARGA.CLOSE;

   qrCliente.close;
   t_acen.close ;

   action := cafree ;
end;

function TFGeraEDICafe.MUDALETR(LETRA: string): string;
var
  NOVALETRA         : string;
  s                 : string;
  M_DataLEN, i      : Integer;
begin
  NOVALETRA := '';
  M_DataLEN := Length(LETRA);
  for i := 1 to M_DataLEN do
  begin
    if T_Acen.FindKey([Ord(LETRA[i])]) then
      s := T_Acen.FieldByName('ACE_NOVO').AsString
    else
      s := LETRA[i];
    NOVALETRA := NOVALETRA + s;
  end;
  Result := NOVALETRA;
end;




procedure TFGeraEDICafe.GERA_CONEMB;
var
  linha : string;
  aux : string;
  a : Integer;
  filex : TStringList;
  path : string;
  iSize : Integer  ;
  D1, D2 : TDateTime;
  NotasConh : string;
  espaco : Integer;

  CONTADOR, VLRTOTAL : Double;
begin

  CONTADOR := 0;
  VLRTOTAL := 0;

     path := SaveDialog1.FileName;
     filex := TStringList.Create;


   if edtFatura.Text = '' then  begin
           if (MaskEdit1.text = '  /  /    ') or (MaskEdit2.text = '  /  /    ') then
           begin
                MessageDlg('Preencha todos os campos.', mtInformation, [mbok], 0);
                abort;
           end;

           IF   cboCliente.Text = '' THEN
           begin
                MessageDlg('Selecione Cliente!', mtInformation, [mbok], 0);
                abort;
           end;

           if MaskEdit1.text <> '  /  /    ' then
              D1  := strtodate(MaskEdit1.text );
           if MaskEdit2.text <> '  /  /    ' then
              D2  := strtodate(MaskEdit2.text );
   end;

  //inicia o arquivo
  try



     {******   Registro 000   ******}
         linha := '';
         //Identificador de Registro
         linha := '000';

         //Identificador de Remetente
         aux := copy(MUDALETR(Q_PARAMETROPAR_RAZA.asstring),1,35);
         iSize := 35 - Length(aux);
         if iSize > 0 then
         begin
             for i := 1 to iSize do
             begin
                  aux := aux + ' ';
             end;
         end;
         linha := linha  + UpperCase(aux);

         // Identificação do Destinatario
         aux :=  copy(MUDALETR(cboCliente.Text),1,35);
         iSize := 35 - Length(aux);
         if iSize > 0 then
         begin
             for i := 1 to iSize do
             begin
                  aux := aux + ' ';
             end;
         end;
         linha := linha  + aux;

         //data
         linha := linha + formatdatetime('DDMMYY',now);

         //hora
         linha := linha + formatdatetime('HHmm',now);

         //Identificação do Intercambio
         aux :=  'CON' + FormatDateTime('DDMM', Now)+FormatDateTime('HHmm', Now) + '5';
         linha := linha + aux ;

         //Filler
         aux := '';
         for i := 1 to 585 do
                aux := aux + ' ';
         linha := linha + aux;


         filex.Add(linha);

     {******   Fim Registro 000   ******}







     {******   registro 320   ********}
     linha := '';

     //identificador do registro
     linha := linha + '320';

     //Identificação do Documento
     aux :=  'CONHE' + FormatDateTime('DDMM', Now)+FormatDateTime('HHmm', Now) + '5';
     linha := linha + aux ;

     //filler

     aux := '';
     for i := 1 to 663 do
         aux := aux + ' ';
     linha := linha + aux;

     filex.Add(linha);
     {******   fim registro 320   ********}




     {******     Registro 321   **********}

      linha := '';

      linha := '321';

      //cnpf transportador - NBF
      aux :=  Trim(Copy(Q_PARAMETROPAR_CNPJ.asstring,1,14));
      iSize := 14 - Length(aux);
      if iSize > 0 then
      begin
          for i := 1 to iSize do
                aux := aux + ' ';
      end;
      linha := linha + aux;

      //    Razao Social
       aux := copy(MUDALETR(Q_PARAMETROPAR_RAZA.asstring),1,40);
       iSize := 40 - Length(aux);
       if iSize > 0 then
       begin
           for i := 1 to iSize do
           begin
                aux := aux + ' ';
           end;
       end;
       linha := linha  + UpperCase(aux);

       
       //filler

       aux := '';
       for i := 1 to 623 do
         aux := aux + ' ';
       linha := linha + aux;

       filex.Add(linha);

     {******    Fim Registro 321   **********}





      


      {******    Registro 322   **********}

       qrConhecimentos.close;
       qrConhecimentos.sql.Clear;
       qrConhecimentos.sql.Add(' SELECT  MANI_ID, VEIC_ID, Ord_ID, ORD_CONH, ORD_DATA, ORD_VLR_PEDAGIO, ORD_VLR_DESPACHO, ORD_VLR_SECCAT, ORD_VLR_FRETE, ORD_PESO_TOTAL, '+
                               ' ORD_TOTALPREST, ORD_VLR_ICMS, ORD_ALIQ, ORD_VLR_OUTROS, CLIN_ID, ord_redespacho, cfa_id , ORD_PAGO, CLIF_ID, CTE_CHAVE, CTE_PROTOCOLO, E_COMPLEMENTAR '+
                               ' FROM         ORDEM_COLETA_ENTREGA (NOLOCK)');


        //FAZ A PESQUISA POR NUMERO DA FATURA IGNORANDO O RESTO DOS FILTROS
        if edtFatura.Text = '' then begin
            qrConhecimentos.sql.Add(' where convert(char(10), ord_data, 112) >= ' + QuotedStr(FormatDateTime('YYYYMMDD', D1)));
            qrConhecimentos.sql.Add(' and convert(char(10), ord_data, 112) <= ' + QuotedStr(FormatDateTime('YYYYMMDD', D2)));
            qrConhecimentos.SQL.Add('  and clin_id = ' + cboCliente.LookupValue);
        end else begin
            qrConhecimentos.sql.Add
            (
               ' where FAT_ID IN (SELECT FAT_ID FROM FATURA WHERE FAT_NUM = ' + edtFatura.Text + ')'
            );
        end;


        qrConhecimentos.SQL.Add(' AND ORD_STATUS = ' + QuotedStr('E'));
        qrConhecimentos.sql.Add(' order by ord_conh ');
        qrConhecimentos.Open;

        qrConhecimentos.Last;
        Gauge1.MaxValue := qrConhecimentos.RecordCount;
        Gauge1.Progress := 0;
        qrConhecimentos.First;
        while  not qrConhecimentos.Eof do
        begin
            Gauge1.Progress := Gauge1.Progress + 1;

            CONTADOR := CONTADOR + 1;

            VLRTOTAL := VLRTOTAL + qrConhecimentosORD_TOTALPREST.Value;

            linha := '';

            //identificado
            linha := linha + '322';

            //filial emissora
            aux := '';
            for i := 1 to 10 do
               aux := aux + ' ';
            linha := linha + aux;

            //serie
            linha := linha + '0    ';

            //  Conhecimento
            aux := Trim(qrConhecimentosORD_CONH.Value);
            iSize := 12 - Length(aux);
            if iSize > 0 then
            begin
               for i := 1 to iSize do
               begin
                    aux := aux + ' ';
               end;
            end;
            linha := linha  + aux;

            //data de emissão
            linha := linha + FormatDateTime('DDMMYYYY',qrConhecimentosORD_DATA.Value);

            //CONDIÇÃO DO FRETE
            if qrConhecimentosORD_PAGO.AsString = 'S' then
                linha := linha + 'C'
            else
                linha := linha + 'F';

            //PESO TRANSPORTADO
            AUX := FormatFloat('00000.00', qrConhecimentosORD_PESO_TOTAL.Value);
            aux := StringReplace(aux,',','', [rfReplaceall]);
            linha := linha + aux;

            //valor total do frete
            AUX := FormatFloat('0000000000000.00', qrConhecimentosORD_TOTALPREST.Value);
            aux := StringReplace(aux,',','', [rfReplaceall]);
            linha := linha + aux;

            //base de calculo do ICMS
            if qrConhecimentosORD_ALIQ.Value > 0 then
               AUX := FormatFloat('0000000000000.00', qrConhecimentosORD_TOTALPREST.Value)
            else
               AUX := FormatFloat('0000000000000.00', 0);
            aux := StringReplace(aux,',','', [rfReplaceall]);
            linha := linha + aux;

            //Aliq do ICMs
            AUX := FormatFloat('00.00', qrConhecimentosORD_ALIQ.Value);
            aux := StringReplace(aux,',','', [rfReplaceall]);
            linha := linha + aux;

            //valor do ICMS
            if qrConhecimentosORD_ALIQ.Value > 0 then
               AUX := FormatFloat('0000000000000.00', qrConhecimentosORD_VLR_ICMS.Value)
            else
               AUX := FormatFloat('0000000000000.00', 0);
            aux := StringReplace(aux,',','', [rfReplaceall]);
            linha := linha + aux;


            //valor total do frete  peso/volume
            AUX := FormatFloat('0000000000000.00', 0); //verificar com alberto
            aux := StringReplace(aux,',','', [rfReplaceall]);
            linha := linha + aux;

            //valor  frete
            AUX := FormatFloat('0000000000000.00', qrConhecimentosORD_VLR_FRETE.Value);
            aux := StringReplace(aux,',','', [rfReplaceall]);
            linha := linha + aux;

            //valor sec cat
            AUX := FormatFloat('0000000000000.00', qrConhecimentosORD_VLR_SECCAT.Value);
            aux := StringReplace(aux,',','', [rfReplaceall]);
            linha := linha + aux;

            //valor itr
            AUX := FormatFloat('0000000000000.00', 0);
            aux := StringReplace(aux,',','', [rfReplaceall]);
            linha := linha + aux;

            //valor despacho
            AUX := FormatFloat('0000000000000.00', qrConhecimentosORD_VLR_DESPACHO.Value);
            aux := StringReplace(aux,',','', [rfReplaceall]);
            linha := linha + aux;

            //valor pedagio
            AUX := FormatFloat('0000000000000.00', qrConhecimentosORD_VLR_PEDAGIO.Value);
            aux := StringReplace(aux,',','', [rfReplaceall]);
            linha := linha + aux;


            //valor ademe - solicitado colocar valor outros por alberto
            AUX := FormatFloat('0000000000000.00', qrConhecimentosORD_VLR_OUTROS.Value);
            aux := StringReplace(aux,',','', [rfReplaceall]);
            linha := linha + aux;


            //substituiçãotributária
            linha := linha + '2';

            //filler
            linha := linha + '   ';


          //cnpf do emissor do conhecimento - NBF
          aux :=  Trim(Copy(Q_PARAMETROPAR_CNPJ.asstring,1,14));
          iSize := 14 - Length(aux);
          if iSize > 0 then
          begin
              for i := 1 to iSize do
                    aux := aux + ' ';
          end;
          linha := linha + aux;

          //VERIFICA SE O TIPO DE PAGAMENTO É SIM COLOCA CNPJ DO EMITENTE CASO CONTRARIO DO DESTINATÁRIO
          if qrConhecimentosORD_PAGO.Value = 'S' then begin
              Q_AUX2.Close;
              Q_AUX2.sql.Clear;
              Q_AUX2.SQL.Add('sELECT CLIN_CGCCPF FROM CLIENTENBF (NOLOCK) WHERE CLIN_ID = ' + qrConhecimentosCLIN_ID.AsString);
              Q_AUX2.OPEN;
              //cnpf da embarcadora - Cliente NBF
              aux :=  Trim(Copy(Q_AUX2.FIELDBYNAME('CLIN_CGCCPF').AsString,1,14));
          end else begin
              Q_AUX2.Close;
              Q_AUX2.sql.Clear;
              Q_AUX2.SQL.Add('sELECT CLIF_CGCCPF FROM CLIENTEFINAL (NOLOCK) WHERE CLIF_ID = ' + qrConhecimentosCLIN_ID.AsString);
              Q_AUX2.OPEN;
              //cnpf da embarcadora - Cliente NBF
              aux :=  Trim(Copy(Q_AUX2.FIELDBYNAME('CLIF_CGCCPF').AsString,1,14));
          end;

          iSize := 14 - Length(aux);
          if iSize > 0 then
          begin
              for i := 1 to iSize do
                    aux := aux + ' ';
          end;
          linha := linha + aux;

          qrNotasORD.Close;
          qrNotasORD.Params[0].AsInteger := qrConhecimentosORD_ID.Value;
          qrNotasORD.Open;

          a := 0;


          if qrNotasORD.IsEmpty then
          begin
           // linha := linha + '1  ';

             with qrORdNota do
             begin
                 close;
                 sql.Clear;
                 sql.Add('select ord_notas from ordem_coleta_entrega where ord_id = ' + qrConhecimentosORD_ID.AsString);
                 Open;
             end;
             NotasConh := trim(qrORdNota.fieldbyname('ord_notas').AsString);

             while Pos(' ',NotasConh) > 0 do  begin
                 aux := Copy(NotasConh, 1, Pos(' ', NotasConh));
                 iSize := Pos('/', aux);

                 if iSize > 0 then
                    aux := Copy(aux, 1, iSize-1);


                  aux := Funcoes.RemoveLetras(aux);


                  iSize := 8  - Length(aux);
                  if iSize > 0 then
                  begin
                    for i := 1 to iSize do
                      aux := '0' + aux ;
                  end;
                   linha := linha + '1  ' + aux;
                   a := a + 1;

                  //remove a nota q foi adicionada
                  NotasConh := Trim(Copy(NotasConh, Pos(' ', NotasConh), Length(NotasConh)));
             end;//end while pos

             aux := Trim(NotasConh);


              iSize := Pos('/', aux);

              if iSize > 0 then
                aux := Copy(aux, 1, iSize-1);


              aux := Funcoes.RemoveLetras(aux);


              iSize := 8  - Length(aux);
              if iSize > 0 then
              begin
                for i := 1 to iSize do
                  aux := '0' + aux ;
              end;
              linha := linha +'1  ' + aux;
                a := a + 1;
          end    //end if qrordnotas isempty
          else
                a := a + 0;



          qrNotasORD.First;
          while Not qrNotasORD.Eof do
          begin
              linha := linha + '1  ';
              aux:= qrNotasORDNFI_NUMERO.Value;

              //verifica se a nota nao tem vinculação com a tabela de notas fiscais
              if aux = '' then begin
                 with qrORdNota do
                 begin
                     close;
                     sql.Clear;
                     sql.Add('select ord_notas from ordem_coleta_entrega where ord_id = ' + qrConhecimentosORD_ID.AsString);
                     Open;
                 end;
                 aux := qrORdNota.fieldbyname('ord_notas').AsString;
              end;


              iSize := Pos('/', aux);

              if iSize > 0 then
                aux := Copy(aux, 1, iSize-1);


              aux := Funcoes.RemoveLetras(aux);


              iSize := 8  - Length(aux);
              if iSize > 0 then
              begin
                for i := 1 to iSize do
                  aux := '0' + aux ;
              end;
              linha := linha + aux;
              a := a + 1;
              qrNotasORD.Next;
          end;  //end while notas


          for i := a + 1 to 40 do
          begin
              linha := linha + '   ';
              linha := linha + '        ';
          end;

          //ação do documento
          //NOTA FISCAL COMPLEMENTAR QUANDO É REENTREGA
          if qrNotasORDNFI_ENTREGA.Value = 'R' then
                 linha := linha + 'C'
          else
                 linha := linha + 'I';


          //Verifica se existe alguma nota de reentrega no conhecimento
          with qry1 do begin
              close;
              sql.clear;
              sql.Add(
              'select * from NF where NFI_NUMERO like ''%/%''  and ord_id = ' + qrConhecimentosORD_ID.AsString
              );
              Open;
          end;

          //tipo de conhecimento
          if qry1.IsEmpty = False then  //Verifica se o conhecimento tem nota com / barra
             linha := linha + 'R'
          else if qrConhecimentose_complementar.AsString = 'S' then  //Verifica se o conhecimento é complementar
             linha := linha + 'C'
          else
             linha := linha + 'N'; //se nao entrou em um dos ifs é normal.

     
          //indicação de continuidade/repetida
          linha := linha + 'U';

          {IF qrConhecimentoscfa_id.AsString <> '' then
          begin
              Q_AUX2.close;
              Q_AUX2.sql.Clear;
              Q_AUX2.sql.Add('Select CFA_CODI from faturamento (NOLOCK) where cfa_id = ' + qrConhecimentoscfa_id.AsString);
              Q_AUX2.Open;

              aux := Copy(Q_AUX2.fieldbyname('CFA_CODI').AsString, 1, 4);
          end
          else
          BEGIN  }
              Q_AUX2.close;
              Q_AUX2.sql.Clear;
              Q_AUX2.sql.Add('SELECT A.UF_SIGLA FROM MUNICIPIO A INNER JOIN ORDEM_COLETA_ENTREGA B ON A.MUN_ID = B.MUN_ID_ENT');
              Q_AUX2.sql.Add('AND B.ORD_ID = ' + qrConhecimentosORD_ID.AsString);
              Q_AUX2.Open;

              IF Q_AUX2.fieldbyname('UF_SIGLA').AsString = 'SP' then
                aux := '5352'
              else
                aux := '6352';
          //end;

          if aux = '5351' then
            aux := '5352';

          if aux = '6352' then
             aux := '6352';

          linha := linha + '' + aux + '  ';


           //ESPAÇO EM BRANCO
            aux := '';
            iSize := 13 - Length(aux);
            if iSize > 0 then
            begin
               for i := 1 to iSize do
               begin
                    aux := aux + ' ';
               end;
            end;
            linha := linha  + aux + '57'; //tipo doc



          //cHAVE DO CTE
            aux := Trim(qrConhecimentosCTE_CHAVE.Value);
            AUX :=  StringReplace(aux, 'CTe', '', [rfReplaceAll])  ;
            //AUX := 'CTE';
            iSize := 44 - Length(aux);
            if iSize > 0 then
            begin
               for i := 1 to iSize do
               begin
                    aux := aux + ' ';
               end;
            end;
            linha := linha  + aux + '' ;

           //  numero liberacao
            aux := '';
            iSize := 12 - Length(aux);
            if iSize > 0 then
            begin
               for i := 1 to iSize do
               begin
                    aux := aux + ' ';
               end;
            end;
            linha := linha  + aux;



          filex.Add(linha);







          //Adiciona o registro 329
          linha := '329';

          qry2.Close;
          qry2.SQL.Clear;
          qry2.SQL.Add('SELECT * FROM TPVEICULO WHERE VEIC_ID = ' + qrConhecimentos.FieldByName('VEIC_ID').AsString);
          qry2.Open;


          //tipo meio do transporte
           aux := qry2.FieldByName('CodigoEDI').AsString;
            iSize := 5 - Length(aux);
            if iSize > 0 then
            begin
               for i := 1 to iSize do
               begin
                    aux := aux + ' ';
               end;
            end;
            linha := linha  + aux;

           //valor total de despesas extraordinarias
           AUX := '0000000000000.00';
           aux := StringReplace(aux, '.', '', [rfreplaceall]);
           linha := linha + aux;

           //valor do iss
           AUX := '0000000000000.00';
           aux := StringReplace(aux, '.', '', [rfreplaceall]);
           linha := linha + aux;

           //filial emissora do conheciment
           aux := '';
            iSize := 10 - Length(aux);
            if iSize > 0 then
            begin
               for i := 1 to iSize do
               begin
                    aux := aux + ' ';
               end;
            end;
            linha := linha  + aux;

           //serie do conhecimento
           aux := '';
            iSize := 5 - Length(aux);
            if iSize > 0 then
            begin
               for i := 1 to iSize do
               begin
                    aux := aux + ' ';
               end;
            end;
            linha := linha  + aux;

            //numero  do conhecimento
            aux := '';
            iSize := 12 - Length(aux);
            if iSize > 0 then
            begin
               for i := 1 to iSize do
               begin
                    aux := aux + ' ';
               end;
            end;
            linha := linha  + aux;

            //codigo da solicitaçõa
            aux := '';
            iSize := 15 - Length(aux);
            if iSize > 0 then
            begin
               for i := 1 to iSize do
               begin
                    aux := aux + ' ';
               end;
            end;
            linha := linha  + aux;

            //ident do doc de transporte - ManifestoId
            aux := qrConhecimentos.FieldByName('MANI_ID').AsString;
            iSize := 20 - Length(aux);
            if iSize > 0 then
            begin
               for i := 1 to iSize do
               begin
                    aux := aux + ' ';
               end;
            end;
            linha := linha  + aux;

            //ident. do documento de autorização de carregamento
            aux := '';
            iSize := 20 - Length(aux);
            if iSize > 0 then
            begin
               for i := 1 to iSize do
               begin
                    aux := aux + ' ';
               end;
            end;
            linha := linha  + aux;


            //cnpj filial responsavel pag frete
            aux := '';
            iSize := 14 - Length(aux);
            if iSize > 0 then
            begin
               for i := 1 to iSize do
               begin
                    aux := aux + ' ';
               end;
            end;
            linha := linha  + aux;

            //tipo nc
            linha := linha  + '57';

            //cHAVE DO CTE
            aux := Trim(qrConhecimentosCTE_CHAVE.Value);
            AUX :=  StringReplace(aux, 'CTe', '', [rfReplaceAll])  ;
            //AUX := 'CTE';
            iSize := 44 - Length(aux);
            if iSize > 0 then
            begin
               for i := 1 to iSize do
               begin
                    aux := aux + ' ';
               end;
            end;
            linha := linha  + aux + '' ;
            filex.Add(linha);


           qrConhecimentos.Next;
           Application.ProcessMessages;
        end;//end while




      {******    Fim Registro 322   **********}






        {******    Registro 323   **********}
         linha := '';

         linha := '323';

         with Q_AUX2 do
         begin
             close;
             sql.Clear;
             sql.Add('Select count(ord_id) as  numero, sum(ORD_TOTALPREST) as valor from ordem_coleta_entrega (NOLOCK) ') ;

             if edtFatura.Text = '' then begin
                   sql.Add(' where convert(char(10), ord_data, 112) >= ' + QuotedStr(FormatDateTime('YYYYMMDD', DATA_IN)));
                   sql.Add(' and convert(char(10), ord_data, 112) <= ' + QuotedStr(FormatDateTime('YYYYMMDD', DATA_FI)));
                   SQL.Add(' and clin_id = ' + cboCliente.LookupValue);
             end else begin
                   sql.Add
                   (
                     ' WHERE ORD_ID IN (SELECT ORD_ID  '+
                     ' FROM ORDEM_COLETA_ENTREGA A INNER JOIN OS B ON A.OS_ID = B.OS_ID  '+
                     ' INNER JOIN OS_FAT H ON B.OS_ID = H.OS_ID INNER JOIN FATURA C ON H.FAT_ID = C.FAT_ID  '+
                     ' WHERE FAT_NUM = ' + edtFatura.Text + ')'
                   );
             end;
             SQL.Add(' AND ORD_STATUS = ' + QuotedStr('E'));
             Open;
         end;





         aux := FormatFloat('0000', Q_AUX2.fieldbyname('numero').asfloat);
         aux := FormatFloat('0000', CONTADOR);
         linha := linha + aux;

         AUX := FormatFloat('0000000000000.00', Q_AUX2.fieldbyname('valor').asfloat);
         AUX := FormatFloat('0000000000000.00', VLRTOTAL);
         aux := StringReplace(aux,',','', [rfReplaceall]);
         linha := linha + aux;

         aux := '';
         for i := 1 to 658 do
                aux :=  aux + ' ';
         linha := linha + aux;

         filex.Add(linha);


        {******    Fim Registro 323   ******}



     filex.SaveToFile(path);

     MessageBox(Self.Handle, 'Arquivo gerado com sucesso!!!!', 'Informação', MB_OK + MB_ICONINFORMATION);
  finally
         gauge1.progress  := 0 ;
         gauge1.visible   := False;
         lbProgresso.Visible := False;
         FreeAndNil(filex);
  end;

end;

procedure TFGeraEDICafe.GERA_OCOREN;
  var linha : string;
  aux : string;
  a , i, iSize: Integer;
  filex : TStringList;
  DATAI , DATAF : TDateTime;
begin

      if edtFatura.Text = '' then begin
        DATAI := StrToDateTime(MaskEdit1.Text);
        DATAF := StrToDateTime(MaskEdit2.Text);

      end;

        FILEX := TStringList.Create;
        try
             {******   Registro 000   ******}
             linha := '';
             //Identificador de Registro
             linha := '000';

             //Identificador de Remetente
             aux := copy(MUDALETR(Q_PARAMETROPAR_RAZA.asstring),1,35);
             iSize := 35 - Length(aux);
             if iSize > 0 then
             begin
                 for i := 1 to iSize do
                 begin
                      aux := aux + ' ';
                 end;
             end;
             linha := linha  + UpperCase(aux);

             // Identificação do Destinatario
             aux :=  copy(MUDALETR(cboCliente.Text),1,35);
             iSize := 35 - Length(aux);
             if iSize > 0 then
             begin
                 for i := 1 to iSize do
                 begin
                      aux := aux + ' ';
                 end;
             end;
             linha := linha  + aux;

             //data
             linha := linha + formatdatetime('DDMMYY',now);

             //hora
             linha := linha + formatdatetime('HHmm',now);

             //Identificação do Intercambio
             aux :=  'OCO' + FormatDateTime('DDMM', Now)+FormatDateTime('HHmm', Now) + '5';
             linha := linha + aux ;

             //Filler
             aux := '';
             for i := 1 to 25 do
                    aux := aux + ' ';
             linha := linha + aux;
             filex.Add(linha);

         {******   Fim Registro 000   ******}

           {******   registro 340   ********}
             linha := '';

             //identificador do registro
             linha := linha + '340';

             //Identificação do Documento
             aux :=  'OCORR' + FormatDateTime('DDMM', Now)+FormatDateTime('HHmm', Now) + '5';
             linha := linha + aux ;

             //filler

             aux := '';
             for i := 1 to 103 do
                 aux := aux + ' ';
             linha := linha + aux;

             filex.Add(linha);
             {******   fim registro 320   ********}




             {******     Registro 341   **********}

              linha := '';

              linha := '341';

              //cnpf transportador - NBF
              aux :=  Trim(Copy(Q_PARAMETROPAR_CNPJ.asstring,1,14));
              iSize := 14 - Length(aux);
              if iSize > 0 then
              begin
                  for i := 1 to iSize do
                        aux := aux + ' ';
              end;
              linha := linha + aux;

              //    Razao Social
               aux := copy(MUDALETR(Q_PARAMETROPAR_RAZA.asstring),1,40);
               iSize := 40 - Length(aux);
               if iSize > 0 then
               begin
                   for i := 1 to iSize do
                   begin
                        aux := aux + ' ';
                   end;
               end;
               linha := linha  + UpperCase(aux);


               //filler

               aux := '';
               for i := 1 to 63 do
                 aux := aux + ' ';
               linha := linha + aux;

               filex.Add(linha);

             {******   Fim Registro 341   **********}


             {******  Registro 342   **********}

                linha := '';

                qrOcoren.CLOSE;
                qrOcoren.SQL.Clear;
                qrOcoren.SQL.Add
                (
                   ' SELECT A.ORD_CONH, A.ORD_DATA, B.CLIN_CGCCPF, C.NFI_NUMERO '+
                   ' FROM ORDEM_COLETA_ENTREGA A (NOLOCK), CLIENTENBF B, NF C  '+
                   ' WHERE A.CLIN_ID = B.CLIN_ID  '+
                   ' AND A.ORD_ID = C.ORD_ID '+
                   ' AND A.ORD_STATUS = ''E''  '
                );

                //FAZ A PESQUISA POR NUMERO DA FATURA IGNORANDO O RESTO DOS FILTROS
                IF edtFatura.Text = '' then begin
                      qrOcoren.SQL.Add
                      (
                         ' AND A.CLIN_ID = ' + cboCliente.LookupValue +
                         ' AND CONVERT(CHAR(10), A.ORD_DATA, 112) >= ' + QuotedStr(FormatDateTime('YYYYMMDD', DATAI)) +
                         ' AND CONVERT(CHAR(10), A.ORD_DATA, 112) <= ' + QuotedStr(FormatDateTime('YYYYMMDD', DATAF))
                      );
                end else begin
                      qrOcoren.SQL.Add
                      (
                         ' AND A.ORD_ID IN ( '+
                         '   SELECT ORD_ID '+
                         '   FROM ORDEM_COLETA_ENTREGA A INNER JOIN OS B ON A.OS_ID = B.OS_ID '+
                         '   INNER JOIN OS_FAT H ON H.OS_ID = B.OS_ID INNER JOIN FATURA C ON H.FAT_ID = C.FAT_ID '+
                         '   WHERE C.FAT_NUM = ' + edtFatura.Text +
                         ' ) '
                      );

                end;
                qrOcoren.SQL.Add('ORDER BY A.ORD_CONH ');
                qrOcoren.Open;

                qrOcoren.Last;
                Gauge1.MaxValue := qrOcoren.RecordCount;
                Gauge1.Progress := 0;
                Gauge1.Visible := True;
                lbProgresso.Visible := True;
                qrOcoren.First;
                while not qrOcoren.Eof do
                begin

                    Gauge1.Progress := Gauge1.Progress + 1;

                    linha := '342';

                    //cnpj
                    aux := Copy(qrOcorenCLIN_CGCCPF.Value,1,14);
                    iSize := Length(aux);
                    //for i := iSize to 14 do
                   // begin
                   //     aux :=  '0' + aux;
                   // end;
                    linha := linha + aux;

                    //serie da nota
                    linha := linha + '  1';


                    //numero da nota fiscal, eliminamos a barra da nota
                    a := Pos('/', qrOcorenNFI_NUMERO.Value);

                    if a > 0 then
                        aux := Copy(qrOcorenNFI_NUMERO.Value,1,a-1)
                    else
                        aux := qrOcorenNFI_NUMERO.Value;

                    iSize := Length(aux);

                    for i := iSize to 8 - 1 do
                    begin
                        aux := '0' + aux;
                    end;
                    linha := linha + aux;


                    //codigo de ocorrencia

                    linha := linha + '00';

                    //data

                    linha := linha + FormatDateTime('DDMMYYYY', qrOcorenORD_DATA.Value);

                    //HORA

                    linha := linha + '0000';

                    //CODIGO DE OBSERVAÇAÕ
                    linha := linha + '00';


                    //TEXTO EM FORMATO LIVRE      + FILLER
                    AUX := '';
                    FOR I := 1 TO 76 DO
                    BEGIN
                        AUX := AUX + ' ';
                    end;
                    linha := linha + aux;

                    filex.Add(linha);
                {******  Fim Registro 342   **********}







                

                {******  Registro 343   ******}
                    linha := '';

                    linha := '343';

                    //cgc da empresa contratante
                    aux := '';
                    iSize := Length(aux);
                    for i := iSize to 14 do
                    begin
                        aux := '0' + aux;
                    end;
                    linha := linha + aux;


                    //filial emissora
                    aux := '';
                    iSize := Length(aux);
                    for i := iSize to 10 do
                    begin
                        aux :=  aux + ' ';
                    end;
                    linha := linha + aux;


                    //serie do conhecimento
                    aux := 'U';
                    iSize := Length(aux);
                    for i := iSize to 5 do
                    begin
                        aux :=  aux + ' ';
                    end;
                    linha := linha + aux;

                    //numero do conhecimento
                    aux := qrOcorenORD_CONH.Value;
                    iSize := Length(aux);
                    for i := iSize to 12 do
                    begin
                        aux := '0' + aux;
                    end;
                    linha := linha + aux;


                    //filler
                    aux := '';
                    iSize := Length(aux);
                    for i := iSize to 76 do
                    begin
                        aux :=  aux + ' ';
                    end;
                    linha := linha + aux;



                {******  Fim Registro 343   ******}
                    qrOcoren.Next;
                    Application.ProcessMessages;

                    
                end; //end while



               filex.SaveToFile(SaveDialog1.FileName);
        finally
            FreeAndNil(filex);
        end;


end;

procedure TFGeraEDICafe.RadioGroup1Click(Sender: TObject);
begin
   if (RadioGroup1.ItemIndex = 1) or (RadioGroup1.ItemIndex = 2)  then
        CheckBox1.Visible := False
   else
       CheckBox1.Visible := True;
end;

end.
