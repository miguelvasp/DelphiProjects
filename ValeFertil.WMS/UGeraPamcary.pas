unit UGeraPamcary;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, StdCtrls, FileCtrl, Buttons, ExtCtrls, Db, DBTables, Wwquery,
  Wwdatsrc, Grids, Wwdbigrd, Wwdbgrid, Mask, wwdblook;

type
  TFGeraPamcary = class(TForm)
    Panel1: TPanel;
    Label4: TLabel;
    btnFechar: TSpeedButton;
    Panel2: TPanel;
    Label3: TLabel;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    DriveComboBox1: TDriveComboBox;
    DirectoryListBox1: TDirectoryListBox;
    Q_TP10: TwwQuery;
    Q_NBF: TwwQuery;
    Q_AUX: TwwQuery;
    Q_TP20: TwwQuery;
    DS_TP10: TwwDataSource;
    Q_TP1112: TwwQuery;
    Q_TP1112MOT_ID: TAutoIncField;
    Q_TP1112TRANS_ID: TIntegerField;
    Q_TP1112MOT_NOME: TStringField;
    Q_TP1112MOT_CPF: TStringField;
    Q_TP1112MOT_PAMC_NUM: TStringField;
    Q_TP10MANI_ID: TAutoIncField;
    Q_TP10MANI_DATA: TDateTimeField;
    Q_TP10TRANS_ID: TIntegerField;
    Q_TP10MOT_ID: TIntegerField;
    Q_TP1112MOT_VEIC_PLACA: TStringField;
    Q_NBFPAR_UF_SIGLA: TStringField;
    Q_NBFPAR_CNPJ: TStringField;
    Q_NBFMUN_NOME: TStringField;
    Q_TP21: TwwQuery;
    DS_TP20: TwwDataSource;
    Q_TP21CLIF_PESSOA: TStringField;
    Q_TP21CLIF_RAZA: TStringField;
    Q_TP21CLIF_NOME: TStringField;
    Q_TP21CLIF_CGCCPF: TStringField;
    Q_TP21CLIF_INSCRG: TStringField;
    Q_TP21CLIF_ENDERECO: TStringField;
    Q_TP21CLIF_ENDERECO_BAIRRO: TStringField;
    Q_TP21CLIF_CEP: TStringField;
    Q_TP21CLIF_TEL1: TStringField;
    Q_TP21MUN_NOME: TStringField;
    Q_TP21UF_SIGLA_1: TStringField;
    Q_NBFPAR_INSC: TStringField;
    Q_NBFPAR_RAZA: TStringField;
    Q_NBFPAR_ENDERECO: TStringField;
    Q_NBFPAR_ENDERECO_BAIRRO: TStringField;
    Q_NBFPAR_CEP: TStringField;
    Q_NBFUF_SIGLA: TStringField;
    Q_NBFPAR_TEL: TStringField;
    Q_CONHEC: TwwQuery;
    Q_CONHECORD_ID: TAutoIncField;
    Q_TP1112VEIC_ID: TIntegerField;
    MaskEdit1: TMaskEdit;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    Label5: TLabel;
    wwDBGrid1: TwwDBGrid;
    wwDBGrid2: TwwDBGrid;
    Q_MOSTRAMANI: TwwQuery;
    DS_MOSTRAMANI: TwwDataSource;
    Q_MOSTRAMANIMANI_ID: TAutoIncField;
    Q_MOSTRAMANIMANI_PESO: TFloatField;
    Q_MOSTRAMANIMANI_VOLUME: TFloatField;
    Q_MOSTRANFS: TwwQuery;
    Q_MOSTRANFSNFI_NUMERO: TStringField;
    DS_MOSTRANFS: TwwDataSource;
    Label7: TLabel;
    Q_MOSTRANFSNFI_TOTA: TFloatField;
    Q_MOSTRAMANIFLAG: TStringField;
    Q_MOSTRAMANITOTAL: TFloatField;
    UPD_MOSTRAMANI: TUpdateSQL;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Q_MOSTRANFSCLIN_NOME: TStringField;
    Q_TP1112MOT_CARRETA_PLACA: TStringField;
    Q_AUX3: TwwQuery;
    Q_TP20NFI_DEST_UF_SIGLA: TStringField;
    Q_TP20NFI_NUMERO: TStringField;
    Q_TP20NFI_VMER: TFloatField;
    Q_TP20NFI_CODI: TAutoIncField;
    Q_TP20NFI_PBRU: TFloatField;
    Q_TP20NFI_VOl: TFloatField;
    Q_TP20NFI_DEMI: TDateTimeField;
    Q_TP20NFI_DEST_CLI: TIntegerField;
    Q_TP20NFI_EMIT_CLI: TIntegerField;
    Q_TP20MUN_ID: TIntegerField;
    Q_TP20MUN_NOME: TStringField;
    Q_TP20PRO_ISENCAO: TStringField;
    Q_TP20PRO_DESC: TStringField;
    Q_TP20PRO_COD: TStringField;
    Q_CONHECORD_CONH: TStringField;
    Q_TP20INF_TOTA: TFloatField;
    Q_CONHECMANI_ID: TIntegerField;
    Q_TP20MANI_ID: TIntegerField;
    Label6: TLabel;
    qrParamentro: TwwQuery;
    qrParamentroPAR_ID: TAutoIncField;
    qrParamentroPAR_NOME: TStringField;
    qrParamentroPAR_RAZA: TStringField;
    qrParamentroPAR_CNPJ: TStringField;
    qrParamentroPAR_INSC: TStringField;
    qrParamentroPAR_ENDERECO: TStringField;
    qrParamentroPAR_ENDERECO_COMPL: TStringField;
    qrParamentroPAR_ENDERECO_BAIRRO: TStringField;
    qrParamentroPAR_UF_SIGLA: TStringField;
    qrParamentroPAR_CEP: TStringField;
    qrParamentroPAR_TEL: TStringField;
    qrParamentroPAR_FAX: TStringField;
    qrParamentroPAR_EMAIL: TStringField;
    qrParamentroAR_ID: TIntegerField;
    qrParamentroMUN_ID: TIntegerField;
    qrParamentroAR_ID_OPER: TIntegerField;
    qrParamentroULT_TAG: TIntegerField;
    qrParamentroPALLET_M2: TFloatField;
    qrParamentroCO_SER_ID: TIntegerField;
    qrParamentroEN_SER_ID: TIntegerField;
    qrParamentroFLAGTELA: TStringField;
    qrParamentroFLAGTELA2: TStringField;
    qrParamentroFLAGTELA3: TStringField;
    qrParamentroCLIN_ID: TIntegerField;
    qrParamentroVERSAO: TStringField;
    qrParamentroFLAGTELA_USUARIO: TStringField;
    qrParamentroFLAGTELA_DATA: TDateTimeField;
    qrParamentroFLAGTELA2_USUARIO: TStringField;
    qrParamentroFLAGTELA2_DATA: TDateTimeField;
    qrParamentroPORTA: TIntegerField;
    qrParamentroHOST: TStringField;
    qrParamentroCAMINHO: TStringField;
    qrParamentroULT_FATURA: TIntegerField;
    qrParamentroULT_NF: TIntegerField;
    qrParamentroULT_CONH: TIntegerField;
    qrParamentroAR_ID_AVARIA: TIntegerField;
    qrParamentroULT_MINUTA: TIntegerField;
    qrParamentroULT_NFPROV: TIntegerField;
    qrParamentroULT_CONHPROV: TIntegerField;
    qrParamentroULT_MINUTAPROV: TIntegerField;
    qrParamentroCAMINHO_MATRICIAL: TStringField;
    qrParamentroCAMINHO_MATRICIAL_FATURA: TStringField;
    qrParamentroCAMINHO_MATRICIAL_CONH: TStringField;
    qrParamentroDATA: TDateTimeField;
    qrParamentroConnectionString: TStringField;
    wwDBLookupCombo1: TwwDBLookupCombo;
    Q_TP10MANI_ENT_COL: TStringField;
    procedure BitBtn1Click(Sender: TObject);
    procedure escrevetexto(valor:string; tamanho:integer);
    procedure escrevenumero(valor:integer;tamanho:integer);
    procedure escrevecnpj(valor:string; tamanho:integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnFecharClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Q_MOSTRAMANIAfterOpen(DataSet: TDataSet);
    procedure Q_MOSTRAMANIAfterClose(DataSet: TDataSet);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Q_MOSTRAMANIFLAGChange(Sender: TField);
    procedure Q_MOSTRAMANIAfterPost(DataSet: TDataSet);
    procedure MaskEdit1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FGeraPamcary: TFGeraPamcary;
  F : TextFile;
  contnf : integer;
  continf : integer;
  totvar : real;

implementation

uses U_FUNCOES, USenha;

{$R *.DFM}

procedure TFGeraPamcary.BitBtn1Click(Sender: TObject);
var
caminho : string;
Reg21 : string;
begin

  if wwDBLookupCombo1.Text = '' then begin
      ShowMessage('informe a empresa');
      Abort;
  end;

  try



  Q_NBF.close;
  Q_NBF.Params[0].AsInteger := StrToInt(wwDBLookupCombo1.LookupValue);
  Q_NBF.Open;


   caminho := DirectoryListBox1.Directory +'\TIDN'+formatdatetime('MMDD',strtodate(MaskEdit1.text))
                +'.001';

   AssignFile(F,caminho);
   Rewrite(F);


   Q_TP10.SQL.Clear;
   Q_TP10.SQL.Add(' SELECT * FROM MANIFESTO WITH (NOLOCK)') ;
   Q_TP10.SQL.Add(' WHERE FLAG = ' +'''' +'S' +  '''') ;
   //Q_TP10.SQL.Add(' AND NFI_TRANS = ' + '''' + 'S' + '''');
   Q_TP10.Open;

   Q_TP1112.Open;

   Q_TP20.Open;
   Q_TP21.Open;
   Q_NBF.Open;
   Q_CONHEC.Open;

   totvar := 0;

   while not Q_TP10.eof do
   begin
        escrevenumero(10,2);//01
        escrevenumero(1,2);//02
        escrevetexto(Q_TP10MANI_ID.AsString,30);//03
        escrevetexto('S�o Bernardo do Campo',50);//04
        escrevetexto(Q_NBFPAR_UF_SIGLA.asstring,2);//05
        escrevetexto('Brasil',30);//06
        escrevenumero(1,2);//07
        if not Q_NBFPAR_CNPJ.isnull then
                escrevecnpj(formatfloat('0',Q_NBFPAR_CNPJ.AsFloat),15)//08
        else
                escrevecnpj('0',15);//08
        escrevenumero(1,2);//09
        escrevetexto('',1);//10
        escrevenumero(14,2);//11


       { Q_AUX.close;
        Q_AUX.SQL.Clear;
        Q_AUX.SQL.Add('SELECT 	SUM(A.NFI_VMER) as TOT  ') ;
        Q_AUX.SQL.Add('FROM NF A WITH (NOLOCK) ,  ') ;
        //Q_AUX.SQL.Add('    MANIFESTO_RESUMOPRODUTO B WITH (NOLOCK) ');
        Q_AUX.SQL.Add('    MANIFESTO B WITH (NOLOCK) ');
        Q_AUX.SQL.Add('WHERE	A.MANI_ID = B.MANI_ID  ');
        Q_AUX.SQL.Add('AND     A.MANI_ID = ' + Q_TP10MANI_ID.asstring);
        Q_AUX.Open;       }


        //Erro ao chamar valor null,
        Q_AUX.close;
        Q_AUX.SQL.Clear;


        //SE FOR ENTREGA

        IF Q_TP10MANI_ENT_COL.AsString = 'E' then begin
            Q_AUX.SQL.Add(
            ' SELECT  '+
            ' case      '+
            ' when SUM(A.NFI_VMER) is null then 0  '+
            ' else   '+
            ' SUM(A.NFI_VMER) '+
            ' end  as TOT       '+
            ' FROM NF A WITH (NOLOCK) , '+

            ' MANIFESTO B WITH (NOLOCK)   '+
            ' WHERE	A.MANI_ID = B.MANI_ID   '+
            ' AND     A.MANI_ID = ' + Q_TP10MANI_ID.asstring );
        end else begin
           Q_AUX.SQL.Add(  'select ISNULL(sum(A.CNF_VALOR), 0) AS TOT FROM COLETA_NF A '+
                           ' WHERE MANI_ID = '  + Q_TP10MANI_ID.asstring );
        end;
        Q_AUX.Open;

        escrevenumero(strtoint(formatfloat('0',Q_AUX.fieldbyname('TOT').value*100)),15);//12
        totvar := totvar + Q_AUX.fieldbyname('TOT').value;
        escrevetexto(Q_TP10MANI_DATA.displaytext,10);//13
        escrevetexto('00:00:00',8);//14
        escrevetexto('',10);//15
        escrevetexto('',8);//16
        escrevetexto('',53);//17
        escrevenumero(0,9);//18
        escrevetexto('N',1);//19
        escrevetexto(Q_NBFMUN_NOME.asstring,50);//20
        escrevetexto(Q_NBFPAR_UF_SIGLA.asstring,2);//21
        escrevetexto('Brasil',30);//22
        escrevetexto(Q_TP20MUN_NOME.asstring,50);//23
        escrevetexto(Q_TP20NFI_DEST_UF_SIGLA.asstring,2);//24
        escrevetexto('Brasil',30);//25
        escrevetexto(Q_TP10MANI_DATA.displaytext,10);//26
        escrevetexto('',8);//27
        escrevetexto('N',1);//28
        escrevetexto('',15);//29
        Writeln(F);

        while not Q_TP1112.eof do
        begin
              escrevenumero(11,2);//01
              escrevetexto(Q_TP10MANI_ID.asstring,30);//02

              escrevenumero(2,2);//03

              if not Q_TP1112MOT_CPF.isnull then
                escrevecnpj(formatfloat('0',Q_TP1112MOT_CPF.asfloat),15)//04
              else
                escrevecnpj('0',15);//04
              escrevetexto(Q_TP1112MOT_NOME.asstring,50);//05
              escrevenumero(3,1);//06

              if not Q_TP1112MOT_PAMC_NUM.isnull then
                IF Q_TP1112MOT_PAMC_NUM.asstring <> '' then
                   escrevenumero(strtoint(Funcoes.Remove(Q_TP1112MOT_PAMC_NUM.asstring,'.')),10)//07
                else
                   escrevenumero(strtoint(Funcoes.Remove('0','.')),10)//07
              else
              
                escrevenumero(0,10);//07
              escrevetexto('',339);//08
              Writeln(F);

          Q_TP1112.Next;
          end;


           Q_TP1112.close;
           Q_TP1112.open;
           while not Q_TP1112.eof do
           begin

              escrevenumero(12,2);//01
              escrevetexto(Q_TP10MANI_ID.asstring,30);//02

              if Q_TP1112VEIC_ID.Value in [1,16,17,18] then
                escrevenumero(7,2);//03
              if Q_TP1112VEIC_ID.Value in [20,7] then
                escrevenumero(3,2);//03     //ALBERTO SOLICITOU
              if Q_TP1112VEIC_ID.Value = 2 then
                escrevenumero(1,2);//03
              if Q_TP1112VEIC_ID.Value = 3 then
                escrevenumero(2,2);//03
              if Q_TP1112VEIC_ID.Value = 4 then
                escrevenumero(4,2);//03
              if Q_TP1112VEIC_ID.Value = 21 then
                escrevenumero(15,2);//03
              if not Q_TP1112VEIC_ID.Value in [1,2,3,4,7,16,17,18,20,21] then
                escrevenumero(8,2);//03

              escrevetexto(Funcoes.Remove(Q_TP1112MOT_VEIC_PLACA.asstring,'-'),50);//04
              escrevenumero(0,10);//05
              escrevetexto('',1);//06
              escrevenumero(2,2);//07


              if not Q_TP1112MOT_CPF.IsNull then
                escrevecnpj(formatfloat('0',Q_TP1112MOT_CPF.asfloat),15)//08
              else
                escrevecnpj('0',15);//08
              escrevetexto('',338);//09
              Writeln(F);


              //caso seja carreta-cavalo
              if (Q_TP1112VEIC_ID.Value = 20) and (Q_TP1112MOT_CARRETA_PLACA.AsString <> '') then begin

                  escrevenumero(12,2);//01
                  escrevetexto(Q_TP10MANI_ID.asstring,30);//02

              if Q_TP1112VEIC_ID.Value in [1,16,17,18] then
                  escrevenumero(7,2);//03
              if Q_TP1112VEIC_ID.Value in [20,7] then
                  escrevenumero(9,2);//03     //ALBERTO SOLICITOU
              if Q_TP1112VEIC_ID.Value = 2 then
                  escrevenumero(1,2);//03
              if Q_TP1112VEIC_ID.Value = 3 then
                  escrevenumero(2,2);//03
              if Q_TP1112VEIC_ID.Value = 4 then
                  escrevenumero(4,2);//03
              if Q_TP1112VEIC_ID.Value = 21 then
                  escrevenumero(15,2);//03
              if not Q_TP1112VEIC_ID.Value in [1,2,3,4,7,16,17,18,20,21] then
                  escrevenumero(8,2);//03

                  escrevetexto(Funcoes.Remove(Q_TP1112MOT_CARRETA_PLACA.asstring,'-'),50);//04
                  escrevenumero(0,10);//05
                  escrevetexto('',1);//06
                  escrevenumero(2,2);//07
              if not Q_TP1112MOT_CPF.IsNull then
                  escrevecnpj(formatfloat('0',Q_TP1112MOT_CPF.asfloat),15)//08
              else
                  escrevecnpj('0',15);//08
                  escrevetexto('',338);//09
              Writeln(F);

           end;

              Q_TP1112.Next;
        end;

        escrevenumero(13,2);//01                  //registro 13
        escrevetexto(Q_TP10MANI_ID.asstring,30);//02
        escrevenumero(2,2);//03
        escrevetexto('',10);//04
        escrevenumero(0,2);//05
        escrevetexto('',30);//06
        escrevenumero(2,2);//07
        escrevetexto('',30);//08
        escrevetexto('',342);//09    //acabou o registro 13
        Writeln(F);

        contnf := 1;

        {
        select do q_tp20
        Select 	B.NFI_DEST_UF_SIGLA,B.NFI_NUMERO,
        B.NFI_VMER,A.INF_TOTA,B.NFI_CODI,B.NFI_PBRU,
        B.NFI_VOl,B.NFI_DEMI,B.NFI_DEST_CLI,B.NFI_EMIT_CLI,B.MUN_ID,
       B.MANI_ID,
	C.MUN_NOME,
	D.PRO_ISENCAO,D.PRO_DESC,D.PRO_COD

from 	NF B,
	MUNICIPIO C,
	PRODUTO D,
        NF_ITENS  A
  
where	B.MUN_ID = C.MUN_ID
AND     B.MANI_ID = :MANI_ID
AND     A.PRO_ID = D.PRO_ID
AND     B.NFI_CODI = A.NFI_CODI 
order by   B.NFI_NUMERO


        }

        while not Q_TP20.eof do
        begin
                escrevenumero(20,2);//01                //registro 20
                escrevetexto(Q_TP10MANI_ID.asstring,30);//02
                escrevenumero(contnf,4);//03
                escrevetexto('',15);//04???
                escrevenumero(Q_TP20MANI_ID.asinteger,6);//05???

                escrevetexto(Q_TP20NFI_NUMERO.asstring,6);//06

                escrevetexto(Q_TP20MUN_NOME.AsString,50);//07
                escrevetexto(Q_TP20NFI_DEST_UF_SIGLA.AsString,2);//08
                escrevetexto('Brasil',30);//09
                escrevetexto('',8);//10


                escrevetexto(Q_TP20PRO_DESC.asstring,50);//11
                escrevenumero(1,2);//12
                IF Q_TP20PRO_ISENCAO.AsString <> '' THEN
                   escrevenumero(Q_TP20PRO_ISENCAO.AsInteger,2)//13
                ELSE
                   escrevenumero(6,2);//13

                escrevenumero(strtoint(formatfloat('0',Q_TP20INF_TOTA.value*100)),15);//14
                                  {}
                Q_AUX.SQL.Clear;
                Q_AUX.SQL.Add('SELECT COUNT(*)*10000 AS QTDE FROM NF_ITENS WITH (NOLOCK) ');
                Q_AUX.SQL.Add('WHERE INF_CODI = ' + Q_TP20NFI_CODI.asstring);
                Q_AUX.Open;
                escrevenumero(Q_AUX.fieldbyname('QTDE').asinteger,15);//15
                escrevetexto('CX',2);//16
                escrevenumero(strtoint(formatfloat('0',Q_TP20NFI_PBRU.value*100)),15);//17
                escrevenumero(strtoint(formatfloat('0',Q_TP20NFI_VOL.value*100)),15);//18
                escrevetexto(formatdatetime('DD/MM/YYYY',Q_TP20NFI_DEMI.value),10);//19
                escrevetexto(formatdatetime('hh:mm:ss',Q_TP20NFI_DEMI.value),8);//20
                escrevetexto('',1);//21
                escrevetexto('',1);//22
                escrevetexto('',1);//23
                escrevetexto('',1);//24
                escrevenumero(3,1);//25
                escrevetexto(Q_NBFMUN_NOME.asstring,50);//26
                escrevetexto(Q_NBFPAR_UF_SIGLA.asstring,2);//27
                escrevetexto('Brasil',30);//28
                escrevetexto('',76);//29        //acabou o registro 20
                Writeln(F);
                contnf := contnf + 1;

                continf := 1;


                escrevenumero(21,2);//01                //registro 21
                escrevetexto(Q_TP10MANI_ID.asstring,30);//02
                escrevenumero(continf,4);//03
                escrevetexto('',15);//04???
                escrevenumero(Q_TP20MANI_ID.AsInteger,6);//05???
                escrevetexto(Q_TP20NFI_NUMERO.asstring,6);//06
                escrevenumero(1,2);//07
                escrevenumero(1,2);//08
                if not Q_NBFPAR_CNPJ.isnull then
                        escrevecnpj(formatfloat('0',Q_NBFPAR_CNPJ.AsFloat),15)//09
                else
                        escrevecnpj('0',15);//09
                escrevetexto(Q_NBFPAR_INSC.asstring,20);//10
                escrevetexto(Q_NBFPAR_RAZA.asstring,50);//11
                escrevetexto(Q_NBFPAR_ENDERECO.asstring,50);//12
                escrevetexto(Q_NBFPAR_ENDERECO_BAIRRO.asstring,30);//13
                escrevenumero(Q_NBFPAR_CEP.AsInteger,8);//14
                escrevetexto(Q_NBFMUN_NOME.asstring,50);//15
                escrevetexto(Q_NBFUF_SIGLA.asstring,2);//16
                escrevetexto('Brasil',30);//17
                escrevetexto(Q_NBFPAR_TEL.asstring,30);//18
                escrevetexto('',10);//19
                escrevetexto('',8);//20
                escrevetexto('',80);//21        //acabou o registro 21
                Writeln(F);

                continf := continf + 1;

                escrevenumero(21,2);//01
                escrevetexto(Q_TP10MANI_ID.asstring,30);//02
                escrevenumero(continf,4);//03
                escrevetexto('',15);//04???
                escrevenumero(Q_TP20MANI_ID.ASINTEGER,6);//05???

                escrevetexto(Q_TP20NFI_NUMERO.asstring,6);//06


                escrevenumero(3,2);//07
                if Q_TP21CLIF_PESSOA.Value = 'J' then
                        escrevenumero(1,2)//08
                else
                        escrevenumero(2,2);//08
                if not Q_TP21CLIF_CGCCPF.IsNull then
                        escrevecnpj(formatfloat('0',Q_TP21CLIF_CGCCPF.AsFloat),15)//09
                else
                        escrevecnpj('0',15);//09
                if not Q_TP21CLIF_INSCRG.isnull then
                        escrevetexto(Q_TP21CLIF_INSCRG.asstring,20)//10
                else
                        escrevetexto('',20);//10
                escrevetexto(Q_TP21CLIF_NOME.asstring,50);//11
                escrevetexto(Q_TP21CLIF_ENDERECO.asstring,50);//12
                escrevetexto(Q_TP21CLIF_ENDERECO_BAIRRO.asstring,30);//13
                if not Q_TP21CLIF_CEP.isnull then
                        escrevenumero(Q_TP21CLIF_CEP.AsInteger,8)//14
                else
                        escrevenumero(0,8);//14
                escrevetexto(Q_TP21MUN_NOME.asstring,50);//15
                escrevetexto(Q_TP21UF_SIGLA_1.asstring,2);//16
                escrevetexto('Brasil',30);//17
                escrevetexto(Q_TP21CLIF_TEL1.asstring,30);//18
                escrevetexto('',10);//19
                escrevetexto('',8);//20
                escrevetexto('',80);//21
                Writeln(F);

                Q_TP20.Next;
        end;


      Q_TP10.Next;
   end;

   escrevenumero(99,2);//01
   escrevenumero(Q_TP10.recordcount,9);//02
   escrevenumero(strtoint(formatfloat('0',totvar*100)),15);//03
   escrevenumero(4,2);//04
   escrevetexto('',422);//05

   CloseFile(F);
   MessageDlg('Arquivo gerado com sucesso!',mtInformation,[mbok],0);

  except
    ON E : Exception DO begin
      CloseFile(F);
      ShowMessage('Aconteceu o seguinte erro na gera��o: ' + e.Message + 'Manifesto: ' + Q_TP10MANI_ID.AsString);
    end;
  end;

   
end;

procedure TFGeraPamcary.escrevetexto(valor:string;tamanho:integer);
var
I : integer;
begin
valor := copy(valor,0,tamanho);
Write(F,valor);
for I := 1 to (tamanho - length(valor)) do
        Write(F,' ');
end;

procedure TFGeraPamcary.escrevenumero(valor:integer;tamanho:integer);
var
I : integer;
begin
valor := strtoint(copy(inttostr(valor),0,tamanho));
for I := 1 to (tamanho - length(inttostr(valor))) do
        Write(F,'0');
Write(F,valor);
end;

procedure TFGeraPamcary.escrevecnpj(valor:string;tamanho:integer);
var
I : integer;
begin
valor := copy(valor,0,tamanho);
for I := 1 to (tamanho - length(valor)) do
        Write(F,'0');
Write(F,valor);
end;

procedure TFGeraPamcary.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Q_TP10.Close;
   Q_TP1112.Close;
   Q_TP20.Close;
   Q_TP21.Close;
   Q_NBF.Close;
   Q_CONHEC.Close;
   Q_MOSTRAMANI.Close;
   Q_MOSTRANFS.Close;
end;

procedure TFGeraPamcary.btnFecharClick(Sender: TObject);
begin
   close;
end;

procedure TFGeraPamcary.SpeedButton1Click(Sender: TObject);
begin

   if MaskEdit1.Text = '  /  /    ' then
   begin
        MessageDlg('Preencha a data de filtro.', mtInformation, [mbok], 0);
        Q_MOSTRANFS.Close;
        Q_MOSTRAMANI.Close;
        MaskEdit1.SetFocus;
        abort;
   end;

   Q_AUX.SQL.Clear;
   Q_AUX.SQL.Add('UPDATE MANIFESTO SET FLAG = ' +'''' +'N' +'''');
   Q_AUX.ExecSQL;

  { Q_MOSTRAMANI.SQL.Clear;
   Q_MOSTRAMANI.SQL.Add('SELECT FLAG,MANI_ID,MANI_PESO,MANI_VOLUME,(SELECT ');
   Q_MOSTRAMANI.SQL.Add('SUM(NFI_TOTA) FROM NF ');
   Q_MOSTRAMANI.SQL.Add('WHERE MANI_ID = MANIFESTO.MANI_ID) AS TOTAL FROM MANIFESTO ');
   Q_MOSTRAMANI.SQL.Add('WHERE CONVERT(CHAR(10),MANI_DATA,112) = ' +formatdatetime('YYYYMMDD',strtodate(MaskEdit1.text)));
   Q_MOSTRAMANI.SQL.Add('AND NFI_TRANS = ' +'''' +'S' +'''');
   Q_MOSTRAMANI.SQL.Add('ORDER BY MANI_ID');
   Q_MOSTRAMANI.Open; }

   Q_MOSTRAMANI.close;
   Q_MOSTRAMANI.SQL.Clear;
   Q_MOSTRAMANI.SQL.Add(
       //  ' SELECT FLAG,MANI_ID,MANI_PESO,MANI_VOLUME,(SELECT   '+
       //  ' CASE WHEN SUM(NFI_TOTA) is NULL THEN 0  '+
       //  ' else SUM(NFI_TOTA) END FROM NF  '+
       //  ' WHERE MANI_ID = MANIFESTO.MANI_ID) '+

       //  ' AS TOTAL FROM MANIFESTO  '+
         ' select distinct FLAG,MANI_ID,MANI_PESO,MANI_VOLUME, total from vwPAMCARY_MANIFESTO '+
         ' WHERE CONVERT(CHAR(10),MANI_DATA,112) = '+formatdatetime('YYYYMMDD',strtodate(MaskEdit1.text))+
         //' AND NFI_TRANS = '+ QuotedStr('S')+' ORDER BY 2  '
         ' ORDER BY 2  '
   );
   Q_MOSTRAMANI.Open;

   if Q_MOSTRAMANI.RecordCount > 0 then
        Q_MOSTRANFS.Open
   else
        Q_MOSTRANFS.Close;
end;

procedure TFGeraPamcary.Q_MOSTRAMANIAfterOpen(DataSet: TDataSet);
begin
   BitBtn1.Enabled := true;
end;

procedure TFGeraPamcary.Q_MOSTRAMANIAfterClose(DataSet: TDataSet);
begin
   BitBtn1.Enabled := false;
end;

procedure TFGeraPamcary.SpeedButton3Click(Sender: TObject);
begin
   Q_AUX.SQL.Clear;
   Q_AUX.SQL.Add('UPDATE MANIFESTO SET FLAG = ' +'''' +'S' +'''');
   Q_AUX.SQL.Add('WHERE CONVERT(CHAR(10),MANI_DATA,112) = ' +formatdatetime('YYYYMMDD',strtodate(MaskEdit1.text)));
   ///Q_AUX.SQL.Add('AND CONFIRMA_MANI = ' +'''' +'S' +'''');
   Q_AUX.ExecSQL;

   Q_MOSTRAMANI.Close;
   Q_MOSTRAMANI.Open;
end;

procedure TFGeraPamcary.SpeedButton2Click(Sender: TObject);
begin


   Q_AUX.SQL.Clear;
   Q_AUX.SQL.Add('UPDATE MANIFESTO SET FLAG = ' +'''' +'N' +'''');
   Q_AUX.SQL.Add('WHERE CONVERT(CHAR(10),MANI_DATA,112) = ' +formatdatetime('YYYYMMDD',strtodate(MaskEdit1.text)));
   ///Q_AUX.SQL.Add('AND CONFIRMA_MANI = ' +'''' +'S' +'''');
   Q_AUX.ExecSQL;

   Q_MOSTRAMANI.Close;
   Q_MOSTRAMANI.Open;
end;

procedure TFGeraPamcary.Q_MOSTRAMANIFLAGChange(Sender: TField);
begin
   Q_MOSTRAMANI.Post;
end;

procedure TFGeraPamcary.Q_MOSTRAMANIAfterPost(DataSet: TDataSet);
begin
  try
     FSenha.Dtb_BaseDados.ApplyUpdates([Q_MOSTRAMANI])
  except
     On E:EdbEngineError do
     begin
        MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
        E.Message,MtError,[MbOk],0);
     end;
  end;
end;

procedure TFGeraPamcary.MaskEdit1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If  (Key = 13)  then begin
                SpeedButton1.Click;
        End ;
end;

procedure TFGeraPamcary.FormCreate(Sender: TObject);
VAR IK : Integer;
begin
   for IK := 0 TO PRED(ComponentCount) do begin
       if Components[IK] is TwwDBGrid then begin
           (Components[IK] as TwwDBGrid).TitleColor := clBtnFace;
           (Components[IK] as TwwDBGrid).TitleFont.Color := clBlack;
       end;
   end;
  qrParamentro.Open;
end;

end.
