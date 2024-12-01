unit UImportacao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FileCtrl, StdCtrls, Wwdbigrd, Grids, Wwdbgrid, Buttons, ExtCtrls, Db,
  DBTables, Wwquery, Wwdatsrc, wwstorep, Wwtable, ComCtrls, Mask, wwdbedit,
  wwdblook;

type
  TFImportacao = class(TForm)
    Panel2: TPanel;
    Label4: TLabel;
    SpeedButton3: TSpeedButton;
    Panel1: TPanel;
    Panel3: TPanel;
    DirectoryListBox1: TDirectoryListBox;
    DriveComboBox1: TDriveComboBox;
    FileListBox1: TFileListBox;
    BitBtn7: TBitBtn;
    BitBtn1: TBitBtn;
    DS_IMPORT: TwwDataSource;
    Q_IMPORT: TwwQuery;
    Q_IMPORTCLIENTEFINAL: TStringField;
    Q_IMPORTCNPJ: TStringField;
    Q_IMPORTNF: TStringField;
    wwDBGrid2: TwwDBGrid;
    wwIButton2: TwwIButton;
    Q_AUX: TwwQuery;
    Q_AUX1: TwwQuery;
    Q_IMPORTnaocliente: TStringField;
    STP_NF: TwwStoredProc;
    T_ACEN: TwwTable;
    T_ACENACE_CASC: TIntegerField;
    T_ACENACE_DESC: TStringField;
    T_ACENACE_NOVO: TStringField;
    Animate1: TAnimate;
    Animate2: TAnimate;
    SpeedButton1: TSpeedButton;
    Q_AUX2: TwwQuery;
    RadioGroup1: TRadioGroup;
    Label51: TLabel;
    wwDBEdit1: TwwDBEdit;
    Label1: TLabel;
    edtLoad: TEdit;
    rgTipoLayout: TRadioGroup;
    qrFat: TwwQuery;
    cboFat: TwwDBLookupCombo;
    Label2: TLabel;
    procedure SpeedButton3Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure wwDBGrid2CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure BitBtn1Click(Sender: TObject);
     function MUDALETR(LETRA: string): string;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    PROCEDURE LEITURA;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FImportacao: TFImportacao;
  NomeArq : string ;
  TIPO5: STRING;
   SDS : integer ;
   SDS2 : integer ;

   PESOfloat : real ;
   QTDE3     : real ;
   PESOstr : string ;

   PESO2float : real ;
   PESO2str : string ;
   MUNIsemacent : string ;

  


implementation
uses UOS,U_FUNCOES, URelImportacao, USenha;

{$R *.DFM}

procedure TFImportacao.SpeedButton3Click(Sender: TObject);
VAR  SQL: STRING;
begin
   SQL:= 'DELETE FROM VERIFICANF';

     Q_AUX.Close;
     Q_AUX.SQL.CLEAR;
     Q_AUX.SQL.ADD(SQL);
     Q_AUX.ExecSQL;
           
    close;
end;

procedure TFImportacao.BitBtn7Click(Sender: TObject);
var

     ArqTxt : TextFile  ;
     DiretorioOrig  : string ;
     StrDados : String  ;
     DATA: STRING;
    


     CNPJ: string;
     NOTA: STRING;

     TIPO: STRING;
     SQL: STRING;


     CLIENTEFINAL: STRING;
     CNPJFINAL: STRING;
     NFINAL: STRING;
     PRODUTO: STRING;

     ENDERECOFINAL: STRING;
     MUNICIPIOFINAL : STRING ;
     UFFINAL : STRING ;
     CEPFINAL : STRING ;

     PRO_DESC: STRING;

     NFCLIN: STRING;
     TIPO1: STRING;
     TIPO2: STRING;

     PESOLIQ: STRING;
     PESOBR: STRING;

     INSCRICAO : string;


begin

        Animate2.active := true ;
        Animate2.visible := true ;

        SQL:= 'DELETE FROM VERIFICANF';

        Q_AUX.Close;
        Q_AUX.SQL.CLEAR;
        Q_AUX.SQL.ADD(SQL);
        Q_AUX.ExecSQL;

        IF  cboFat.Text = '' then begin
            ShowMessage('informe o CFOP');
            Abort;
        end;




        DATA:= FormatDateTime('DD.MM',Date);

        //DiretorioOrig := DirectoryListBox1.Directory ;
        ///NomeArq := DiretorioOrig+ '\NFD04' + DATA;
        NomeArq :=  FileListBox1.FileName ;



        if FileExists(NomeArq) then begin
           AssignFile(ArqTxt, NomeArq);
           Reset(ArqTxt);
                Readln(ArqTxt, StrDados);

              ///cnpj Jiever e Cargill 60498706007836
              IF (FOS.CDSOSCNPJ.asstring <> '08179305000114') and
                 (FOS.CDSOSCNPJ.asstring <> '60498706007836') and
                 (FOS.CDSOSCNPJ.asstring <> '60498706013488') and
                 (FOS.CDSOSCNPJ.asstring <> '60498706033918')   then
                  CNPJ:= copy(StrDados,2,15) //MUDAR A POSICAO PARA 2
              else
                  CNPJ:= copy(StrDados,3,14) ;

            //VERIFICA SE O CLIENTE DA NOTA É O MESMO DA OS...
            SQL:=  ' SELECT      MIN(1) HA ' +
                   ' FROM	     CLIENTENBF ' +
                   ' WHERE	     DBO.COMP_ESQ(CLIN_CGCCPF,15,' +''''+ '0' + '''' + ') = DBO.COMP_ESQ(' + ''''+ CNPJ + '''' + ',15, ' + '''' +'0'+ ''''+ ')' +
                   ' AND         CLIN_ID = :clin_id '  ;

            Q_AUX.Close;
            Q_AUX.SQL.CLEAR;
            Q_AUX.SQL.ADD(SQL);
            Q_AUX.Params[0].Value :=  CNPJOS;
            Q_AUX.OPEN;
                    If Q_AUX.FieldByName('HA').AsString <> '1' then Begin
                    MessageDlg('Atenção!!! Este cliente não pertence a está importacão!',
                    mtInformation, [mbOk],0);
                    Animate2.active := false ;
                    Animate2.visible := false ;
                    abort;
                    End;
         End;


           ///cnpj Jiever e Cargill
          IF (FOS.CDSOSCNPJ.asstring = '08179305000114') OR
             (FOS.CDSOSCNPJ.asstring = '60498706007836') or
             (FOS.CDSOSCNPJ.asstring = '60498706013488') or
             (FOS.CDSOSCNPJ.asstring = '60498706033918')   then begin

                  while not Eof(ArqTxt) do begin
                  Readln(ArqTxt, StrDados);

                                   TIPO := copy(StrDados,1,2);
                                IF TIPO <> '1 ' Then Begin {}

                                   NOTA:= copy(StrDados,7,14);






                                   SQL:= ' SELECT  COUNT(*) AS XVALOR ' +
                                         ' FROM    VERIFICANF  ' +
                                         ' WHERE   CNPJ = ' + '''' + NOTA + '''';

                                   Q_AUX.Close;
                                   Q_AUX.SQL.CLEAR;
                                   Q_AUX.SQL.ADD(SQL);
                                   Q_AUX.OPEN;

                                   IF Q_AUX.FieldByName('XVALOR').asinteger = 0 Then begin


                                           { SQL:= ' SELECT  COUNT(*) AS XVALOR ' +
                                                 ' FROM    CLIENTEFINAL  ' +
                                                 ' WHERE   CLIF_CGCCPF = ' + '''' + NOTA + '''';    }


                                              SQL:=  ' SELECT     COUNT(*) AS XVALOR ' +
                                                  ' FROM        CLIENTEFINAL A, ' +
                                                  '             CLIENTE_NBFINAL B  ' +
                                                  ' WHERE       A.CLIF_ID = B.CLIF_ID   ' +
                                                  ' AND	DBO.COMP_ESQ(CLIF_CGCCPF,15,' +''''+ '0' + '''' + ') = DBO.COMP_ESQ(' + ''''+ NOTA + '''' + ',15, ' + '''' +'0'+ ''''+ ')' +
                                                  ' AND         B.CLIN_ID = ' + CNPJOS;

                                            Q_AUX.Close;
                                            Q_AUX.SQL.CLEAR;
                                            Q_AUX.SQL.ADD(SQL);
                                            Q_AUX.OPEN;


                                            IF Q_AUX.FieldByName('XVALOR').asinteger = 0 Then begin


                                                  SQL:=' INSERT  VERIFICANF  ' +
                                                       '         ( CNPJ ) ' +
                                                       ' VALUES    ' +
                                                       '         ( ' + '''' + TRIM(NOTA) + ''''  + ')';

                                               Q_AUX.Close;
                                               Q_AUX.SQL.CLEAR;
                                               Q_AUX.SQL.ADD(SQL);
                                               Q_AUX.ExecSQL;

                                            End;
                                   end ;
                                end ;
                  end;



                  SQL:= ' SELECT  COUNT(*) AS XVALOR ' +
                       ' FROM    VERIFICANF ';

                 Q_AUX.Close;
                 Q_AUX.SQL.CLEAR;
                 Q_AUX.SQL.ADD(SQL);
                 Q_AUX.OPEN;

                 IF Q_AUX.FieldByName('XVALOR').asinteger > 0 Then begin
                      MessageDlg('Atenção!!! Existem ClienteFinal não cadastrado!',
                      mtInformation, [mbOk],0);
                      Animate2.active := false ;
                      Animate2.visible := false     ;

                      Q_IMPORT.close ;
                      Q_IMPORT.open ;
                      ABORT;
                 end ;
          end ;




       if FileExists(NomeArq) then begin
           AssignFile(ArqTxt, NomeArq);
           Reset(ArqTxt);

          while not Eof(ArqTxt) do begin
          Readln(ArqTxt, StrDados);

                 ///cnpj Jiever e Cargill
              IF (FOS.CDSOSCNPJ.asstring <> '08179305000114') and
                 (FOS.CDSOSCNPJ.asstring <> '60498706007836') and
                 (FOS.CDSOSCNPJ.asstring <> '60498706013488') and
                 (FOS.CDSOSCNPJ.asstring <> '60498706033918')   then begin

                        TIPO := copy(StrDados,1,1);
                        IF TIPO = '1' Then Begin

                           NOTA:= copy(StrDados,2,6);

                           SQL:= ' SELECT  COUNT(A.NFI_NUMERO) AS NFI_NUMERO ' +
                                 ' FROM    NF A, ' +
                                 '         OS B  ' +
                                 ' WHERE   A.OS_ID = B.OS_ID ' +
                                 ' AND     B.CLIN_ID = ' + FOS.CDSOSCLIN_ID.asstring +
                                 ' AND     A.NFI_NUMERO = ' + '''' + NOTA + '''' +
                                 ' AND A.NFI_SERIE = ' + QuotedStr(wwDBEdit1.Text);

                        SQL := '';
                        //NOVO SQL PARA VERIFICAR SE A NOTA DO CARA EXISTE
                        SQL := '  SELECT '+
                               '  COUNT(A.NFI_NUMERO) AS NFI_NUMERO  '+
                               '   FROM  ' +
                               '   NF A   '+
                               '   where A.NFI_EMIT_CLI = ' + FOS.CDSOSCLIN_ID.asstring +
                               '   AND RTRIM(LTRIM(NFI_NUMERO)) = ' + QuotedStr(Trim(NOTA)) +
                               '   AND NFI_SERIE =    '+ QuotedStr(wwDBEdit1.Text) +
                               '   AND TDOC_ID = 1 ';




                            Q_AUX.Close;
                            Q_AUX.SQL.CLEAR;
                            Q_AUX.SQL.ADD(SQL);
                            Q_AUX.OPEN;


                                IF Q_AUX.FieldByName('NFI_NUMERO').AsString = '1' Then begin
                                   MessageDlg('Atenção!!! NOTA FISCAL: '+ NOTA + ' já está cadastrada!',
                                   mtInformation, [mbOk],0);
                                   Animate2.active := false ;
                                   Animate2.visible := false     ;
                                   ABORT;
                                End;

                        end;
              end else begin
                           TIPO := copy(StrDados,1,2);
                        IF TIPO <> '1 ' Then Begin

                           NOTA:= copy(StrDados,1,6);

                           SQL:= ' SELECT  COUNT(A.NFI_NUMERO) AS NFI_NUMERO ' +
                                 ' FROM    NF A, ' +
                                 '         OS B  ' +
                                 ' WHERE   A.OS_ID = B.OS_ID ' +
                                 ' AND     B.CLIN_ID = ' + FOS.CDSOSCLIN_ID.asstring +
                                 ' AND     A.NFI_NUMERO = ' + '''' + NOTA + '''';


                           SQL := '';
                        //NOVO SQL PARA VERIFICAR SE A NOTA DO CARA EXISTE
                        SQL := '  SELECT '+
                               '  COUNT(A.NFI_NUMERO) AS NFI_NUMERO  '+
                               '   FROM '  +
                               '   NF A   '+
                               '   where A.NFI_EMIT_CLI = ' + FOS.CDSOSCLIN_ID.asstring +
                               '   AND RTRIM(LTRIM(NFI_NUMERO)) = ' + QuotedStr(Trim(NOTA)) +
                               '   AND NFI_SERIE =    '+ QuotedStr(wwDBEdit1.Text) +
                               '   AND TDOC_ID = 1 ';


                            Q_AUX.Close;
                            Q_AUX.SQL.CLEAR;
                            Q_AUX.SQL.ADD(SQL);
                            Q_AUX.OPEN;


                                IF Q_AUX.FieldByName('NFI_NUMERO').AsString = '1' Then begin
                                   MessageDlg('Atenção!!!  NOTA FISCAL '+ NOTA + ' já está cadastrada!',
                                   mtInformation, [mbOk],0);
                                   Animate2.active := false ;
                                   Animate2.visible := false     ;
                                   ABORT;
                                End;
                        end ;
              end ;
          end;
        //AQUI ACABA AS VERIFICAÇÕES....
       end ;


       if FileExists(NomeArq) then begin
           AssignFile(ArqTxt, NomeArq);
           Reset(ArqTxt);

                while not Eof(ArqTxt) do begin
                      Readln(ArqTxt, StrDados);

                        ///cnpj Jiever e Cargill
                        IF (FOS.CDSOSCNPJ.asstring <> '08179305000114') and
                           (FOS.CDSOSCNPJ.asstring <> '60498706007836') and
                           (FOS.CDSOSCNPJ.asstring <> '60498706013488') and
                           (FOS.CDSOSCNPJ.asstring <> '60498706033918')  then begin

                                TIPO5:= copy(StrDados,0,1);

                                IF TIPO5 = '5' then Begin
                                   PRODUTO:= COPY(StrDados,8,10);
                                   NFINAL:=  COPY(StrDados,2,6);
                                   PRO_DESC:=  COPY(StrDados,18,34);

                                    SQL:=' INSERT  VERIFICANF  ' +
                                         '         (CLIENTEFINAL,  ' +
                                         '          CNPJ,  ' +
                                         '          NF,  ' +
                                         '          NAOPRODUTO, ' +
                                         '          NAOCLIENTE, ' +
                                         '          PRODUTO,  ' +
                                         '          PRO_DESC ' +
                                         '          ) ' +
                                         ' VALUES    ' +
                                         '         ( ' + 'NULL' + ',' +
                                         '''' + 'NULL' + '''' + ',' +
                                         '''' + NFINAL + '''' + ',' +
                                         '''' + 'N' + '''' + ',' +
                                         '''' + 'N' + '''' + ',' +
                                         '''' + PRODUTO + '''' +     ',' +
                                         '''' + PRO_DESC + '''' + ')';

                                     Q_AUX.Close;
                                     Q_AUX.SQL.CLEAR;
                                     Q_AUX.SQL.ADD(SQL);
                                     Q_AUX.ExecSQL;

                                End;
                        end else begin
                                TIPO := copy(StrDados,1,2);   /////////////////////aqui/////////////////////
                                IF TIPO <> '1 ' Then Begin
                                     PRODUTO:= COPY(StrDados,31,6);
                                     NFINAL:=  copy(StrDados,1,6);

                                      SQL:=' INSERT  VERIFICANF  ' +
                                           '         (NF,  ' +
                                           '          NAOPRODUTO, ' +
                                           '          NAOCLIENTE, ' +
                                           '          PRODUTO  ) ' +
                                           ' VALUES    ' +
                                           '         ( ' + '''' + TRIM(NFINAL) + '''' + ',' +
                                           '''' + 'N' + '''' + ',' +
                                           '''' + 'N' + '''' + ',' +
                                           '''' + trim(PRODUTO) + '''' + ')';

                                       Q_AUX.Close;
                                       Q_AUX.SQL.CLEAR;
                                       Q_AUX.SQL.ADD(SQL);
                                       Q_AUX.ExecSQL;
                                end ;

                        end ;

                End;

       End;   //NESTE PONTO JÁ INSERIMOS O PRODUTO E O NUM_NF





       if FileExists(NomeArq) then begin
           AssignFile(ArqTxt, NomeArq);
           Reset(ArqTxt);


                  ///cnpj Jiever e Cargill
                  IF (FOS.CDSOSCNPJ.asstring <> '08179305000114') and
                     (FOS.CDSOSCNPJ.asstring <> '60498706007836') and
                     (FOS.CDSOSCNPJ.asstring <> '60498706013488') and
                     (FOS.CDSOSCNPJ.asstring <> '60498706033918')   then begin

                             while not Eof(ArqTxt) do begin
                                      Readln(ArqTxt, StrDados);

                                      TIPO1:= copy(StrDados,0,1);

                                   IF TIPO1 = '1' then Begin

                                      NFCLIN:= copy(StrDados,2,6);
                                      CLIENTEFINAL:= copy(StrDados,15,40);
                                      CNPJFINAL:= copy(StrDados,145,15);

                                     SQL:= ' UPDATE VERIFICANF SET   CLIENTEFINAL = ' + '''' +  MUDALETR(CLIENTEFINAL) + '''' + ',' +
                                           '	                 CNPJ = ' + '''' + CNPJFINAL + '''' +
                                           ' WHERE                   NF = ' + '''' + NFCLIN + '''' ;


                                      Q_AUX.Close;
                                      Q_AUX.SQL.CLEAR;
                                      Q_AUX.SQL.ADD(SQL);
                                      Q_AUX.ExecSQL;
                                   END;
                             END;
                  end else begin
                           while not Eof(ArqTxt) do begin
                                      Readln(ArqTxt, StrDados);

                                      TIPO := copy(StrDados,1,2);      //////aqui//////
                                 IF TIPO <> '1 ' Then Begin

                                      NFCLIN:= copy(StrDados,1,6);
                                      CNPJFINAL:= copy(StrDados,7,14);

                                     SQL:= ' UPDATE VERIFICANF SET  CNPJ = ' + '''' + CNPJFINAL + '''' +
                                           ' WHERE                   NF = ' + '''' + trim(NFCLIN) + '''' ;


                                      Q_AUX.Close;
                                      Q_AUX.SQL.CLEAR;
                                      Q_AUX.SQL.ADD(SQL);
                                      Q_AUX.ExecSQL;
                                 END;
                             END;

                  end ;

        END;



        ///cnpj Jiever e Cargill
        IF (FOS.CDSOSCNPJ.asstring <> '08179305000114') and
           (FOS.CDSOSCNPJ.asstring <> '60498706007836') and
           (FOS.CDSOSCNPJ.asstring <> '60498706013488') and
           (FOS.CDSOSCNPJ.asstring <> '60498706033918')  then begin



                          if FileExists(NomeArq) then begin
                             AssignFile(ArqTxt, NomeArq);
                             Reset(ArqTxt);

                                    TIPO5:= '';
                                    NFCLIN:= '';
                                    CLIENTEFINAL:= '';
                                    CNPJFINAL:= '';

                                    ENDERECOFINAL:= '';
                                    MUNICIPIOFINAL := '' ;
                                    UFFINAL := '' ;
                                    INSCRICAO := '';
                                    CEPFINAL := '' ;


                                     while not Eof(ArqTxt) do begin
                                        Readln(ArqTxt, StrDados);

                                        TIPO5:= copy(StrDados,0,1);


                                       IF TIPO5 = '1' then Begin

                                              NFCLIN:= copy(StrDados,2,6);
                                              CLIENTEFINAL:= copy(StrDados,15,40);
                                              CNPJFINAL:= copy(StrDados,145,15);
                                              INSCRICAO := copy(StrDados,160,20);

                                              ENDERECOFINAL:= copy(StrDados,55,40);
                                              MUNICIPIOFINAL := copy(StrDados,95,40);
                                              UFFINAL := copy(StrDados,135,2);
                                              CEPFINAL := copy(StrDados,137,8);


                                           SQL:=  ' SELECT      MIN(1) HA ' +
                                                  ' FROM        CLIENTEFINAL A, ' +
                                                  '             CLIENTE_NBFINAL B  ' +
                                                  ' WHERE       A.CLIF_ID = B.CLIF_ID   ' +
                                                  ' AND	DBO.COMP_ESQ(CLIF_CGCCPF,15,' +''''+ '0' + '''' + ') = DBO.COMP_ESQ(' + ''''+ CNPJFINAL + '''' + ',15, ' + '''' +'0'+ ''''+ ')' +
                                                  ' AND         B.CLIN_ID = ' + CNPJOS;

                                          Q_AUX.Close;
                                          Q_AUX.SQL.CLEAR;
                                          Q_AUX.SQL.ADD(SQL);
                                          Q_AUX.OPEN;

                                          IF Q_AUX.FieldByName('HA').AsString <> '1' Then begin

                                               { SQL:= ' UPDATE VERIFICANF SET  NAOCLIENTE = ' + '''' + 'S' + '''' +
                                                     ' WHERE	          CNPJ = ' + '''' + CNPJFINAL + '''' +
                                                     ' AND                NF = ' + '''' + NFCLIN + '''' ;

                                                Q_AUX.Close;
                                                Q_AUX.SQL.CLEAR;
                                                Q_AUX.SQL.ADD(SQL);
                                                Q_AUX.ExecSQL;   }

                                                 SQL:=  ' SELECT      MIN(1) HA ' +
                                                  ' FROM      CLIENTEFINAL ' +
                                                  ' WHERE     DBO.COMP_ESQ(CLIF_CGCCPF,15,' +''''+ '0' + '''' + ')   '+
                                                  ' = DBO.COMP_ESQ(' + ''''+ CNPJFINAL + '''' + ',15, ' + '''' +'0'+ ''''+ ')'   ;

                                                  Q_AUX.Close;
                                                  Q_AUX.SQL.CLEAR;
                                                  Q_AUX.SQL.ADD(SQL);
                                                  Q_AUX.OPEN;

                                                  IF Q_AUX.FieldByName('HA').AsString <> '1' Then begin

                                                      SDS :=  POS('/',MUDALETR(MUNICIPIOFINAL))  ;
                                                      MUNIsemacent :=   TRIM(MUDALETR(MUNICIPIOFINAL))   ;

                                                      Q_AUX1.Close;
                                                      Q_AUX1.SQL.CLEAR;
                                                      Q_AUX1.SQL.ADD('SELECT MUN_ID from municipio');
                                                      //Q_AUX1.SQL.ADD('where MUN_NOME = ' + '''' +  TRIM(copy(MUNIsemacent,1,SDS-1)) + '''' );
                                                      IF SDS > 0 then
                                                         Q_AUX1.SQL.ADD('where MUN_NOME = ' + '''' +  copy(MUNIsemacent,1,SDS-1) + '''' )
                                                       else
                                                         Q_AUX1.SQL.ADD('where MUN_NOME = ' + '''' +  MUNIsemacent + '''' );
                                                      Q_AUX1.OPEN;

                                                      SDS2 := Q_AUX1.fieldbyname('MUN_Id').asinteger  ;


                                                      if Q_AUX1.fieldbyname('MUN_Id').AsString = '' then begin
                                                          MessageBox(Self.Handle, PChar('Municipio não encontrado' + #13 + 'Cliente: ' + CLIENTEFINAL),
                                                            'Erro', MB_OK + MB_ICONERROR );
                                                          Abort;
                                                      end;


                                                      SQL:=  'INSERT   CLIENTEFINAL ' +
                                                                      '          (CLIF_NOME,  ' +
                                                                      '           CLIF_RAZA,  ' +
                                                                      '           CLIF_PESSOA, ' +
                                                                      '           CLIF_CGCCPF, ' +
                                                                      '           CLIF_CARGAPALLET,  ' +
                                                                      '		  CLIF_CEP,  ' +
                                                                      '		  CLIF_ENDERECO,   ' +
                                                                      '		  CLIF_ENDERECO_BAIRRO,   ' +
                                                                      '		  MUN_ID,  ' +
                                                                      '		  UF_SIGLA, CLIF_INSCRG )  VALUES(  ' +
                                                                      '''' + MUDALETR(TRIM(CLIENTEFINAL)) + '''' + ',' +
                                                                      '''' + MUDALETR(TRIM(CLIENTEFINAL)) + '''' + ',' +
                                                                      '''' + 'J' + '''' + ',' +
                                                                      '''' + CNPJFINAL + '''' + ',' +
                                                                      '''' + 'N' + '''' + ',' +
                                                                      '''' + TRIM(CEPFINAL) + '''' + ',' +
                                                                      '''' + MUDALETR(TRIM(ENDERECOFINAL)) + '''' + ',' +
                                                                      '''' + copy(MUNICIPIOFINAL,SDS+1,(40 -(SDS+1))+1) + '''' + ',' +
                                                                      '''' + inttostr(SDS2) + '''' + ',' +
                                                                      '''' + TRIM(UFFINAL) + '''' + ', ' +
                                                                      QuotedStr(INSCRICAO) +
                                                                      ')' ;

                                                                       Q_AUX.Close;
                                                                       Q_AUX.SQL.CLEAR;
                                                                       Q_AUX.SQL.ADD(SQL);
                                                                       Q_AUX.ExecSQL;

                                                            Q_AUX1.Close;
                                                            Q_AUX1.SQL.CLEAR;
                                                            Q_AUX1.SQL.ADD('SELECT CLIF_ID from CLIENTEFINAL');
                                                            Q_AUX1.SQL.ADD('where CLIF_CGCCPF = ' +  '''' + CNPJFINAL + '''' );
                                                            Q_AUX1.OPEN;

                                                            SDS2 := Q_AUX1.fieldbyname('CLIF_ID').asinteger  ;

                                                            SQL:=  'INSERT   CLIENTE_NBFINAL ' +
                                                                      '          (CLIF_Id,  ' +
                                                                      '           CLIN_ID,  ' +
                                                                      '           NbFINAL_DT_INCL)  VALUES(  ' +
                                                                      '''' + inttostr(SDS2) + '''' + ',' +
                                                                      '''' + inttostr(FOS.CDSOSCLIN_ID.asinteger) + '''' + ',' +
                                                                      ''''+ FormatDateTime('mm/dd/yyyy',NOW) + '''' + ')' ;

                                                            Q_AUX.Close;
                                                            Q_AUX.SQL.CLEAR;
                                                            Q_AUX.SQL.ADD(SQL);
                                                            Q_AUX.ExecSQL;
                                                  end else begin
                                                            Q_AUX1.Close;
                                                            Q_AUX1.SQL.CLEAR;
                                                            Q_AUX1.SQL.ADD('SELECT CLIF_ID from CLIENTEFINAL');
                                                            ///Q_AUX1.SQL.ADD('where CLIF_CGCCPF = ' +  '''' + CNPJFINAL + '''' );
                                                            Q_AUX1.SQL.ADD('where  DBO.COMP_ESQ(CLIF_CGCCPF,15,' +''''+ '0' + '''' + ')   ');
                                                            Q_AUX1.SQL.ADD(' = DBO.COMP_ESQ(' + ''''+ CNPJFINAL + '''' + ',15, ' + '''' +'0'+ ''''+ ')')   ;



                                                            Q_AUX1.OPEN;

                                                            SDS2 := Q_AUX1.fieldbyname('CLIF_ID').asinteger  ;

                                                            SQL:=  'INSERT   CLIENTE_NBFINAL ' +
                                                                      '          (CLIF_Id,  ' +
                                                                      '           CLIN_ID,  ' +
                                                                      '           NbFINAL_DT_INCL)  VALUES(  ' +
                                                                      '''' + inttostr(SDS2) + '''' + ',' +
                                                                      '''' + inttostr(FOS.CDSOSCLIN_ID.asinteger) + '''' + ',' +
                                                                      ''''+ FormatDateTime('mm/dd/yyyy',NOW) + '''' + ')' ;

                                                            Q_AUX.Close;
                                                            Q_AUX.SQL.CLEAR;
                                                            Q_AUX.SQL.ADD(SQL);
                                                            Q_AUX.ExecSQL;

                                                  end ;
                                          End;

                                       End;
                                     End;
                          End;






                                 if FileExists(NomeArq) then begin
                                    AssignFile(ArqTxt, NomeArq);
                                    Reset(ArqTxt);

                                    TIPO5:= '';
                                    PRODUTO:= '';

                                     while not Eof(ArqTxt) do begin
                                        Readln(ArqTxt, StrDados);

                                        TIPO5:= copy(StrDados,0,1);



                                     IF TIPO5 = '5' then Begin

                                        PRODUTO:= COPY(StrDados,8,10);

                                        SQL:= ' SELECT      MIN(1) HA ' +
                                              ' FROM	  PRODUTO  ' +
                                              ' WHERE	  PRO_COD = ' + '''' + PRODUTO +'''' +
                                              ' AND         CLIN_ID = ' + CNPJOS;


                                       Q_AUX.Close;
                                       Q_AUX.SQL.CLEAR;
                                       Q_AUX.SQL.ADD(SQL);
                                       Q_AUX.OPEN;

                                        IF Q_AUX.FieldByName('HA').AsString <> '1' Then begin

                                           SQL:= ' UPDATE VERIFICANF SET  NAOPRODUTO = ' + '''' + 'S' + '''' +
                                                 ' WHERE NAOPRODUTO = ' + '''' + 'N' + '''' +
                                                 ' AND	                PRODUTO = ' + '''' + PRODUTO + '''' ;

                                           Q_AUX.Close;
                                           Q_AUX.SQL.CLEAR;
                                           Q_AUX.SQL.ADD(SQL);
                                           Q_AUX.ExecSQL;

                                         End;
                                       End;
                                     End;
                                 End;



                                 SQL:= 'SELECT NAOPRODUTO FROM VERIFICANF GROUP BY NAOPRODUTO ORDER BY NAOPRODUTO DESC';


                                      Q_AUX1.Close;
                                      Q_AUX1.SQL.CLEAR;
                                      Q_AUX1.SQL.ADD(SQL);
                                      Q_AUX1.OPEN;

                                 IF   Q_AUX1.FieldByName('NAOPRODUTO').AsString = 'S' THEN BEGIN

                                       SQL:=  'INSERT   PRODUTO ' +
                                              '          (CLIN_ID,  ' +
                                              '           PRO_DESC,  ' +
                                              '           TPRO_ID, ' +
                                              '           PRO_COD,  ' +
                                              '		  PRO_ORIGEM,  ' +
                                              '		  UVEN_ID,   ' +
                                              '		  UVEN_ID_EXP,  ' +
                                              '		  QTDE_UVUE,   ' +
                                              '		  PRO_QTDE_PALLET,  ' +
                                              '		  PRO_QTDE_PALLETUV,  ' +
                                              '           PRO_LASTRO, ' +
                                              '           PRO_ALTURA, ' +
                                              '           PRO_VOLUME, ' +
                                              '           PRO_VOLUME_PALLET, ' +
                                              '           PRO_VALIDDIAS, ' +
                                              '           PRO_DESCONTINUA)  SELECT  ' +
                                              '''' + CNPJOS + '''' + ',' +
                                              '      PRO_DESC , ' +
                                              '''' + TIPOPRODUTO + '''' + ',' +
                                              '      PRODUTO, ' +
                                              '      0 , ' +
                                              '      1 , ' +
                                              '      1 , ' +
                                              '      1 , ' +
                                              '      9801, ' +
                                              '      9801, ' +
                                              '      99, ' +
                                              '      99, ' +
                                              '      0, ' +
                                              '      0, ' +
                                              '      999, ' +
                                              '''' + 'N' + '''' +
                                              ' FROM 	VERIFICANF WHERE NAOPRODUTO  = ' + '''' + 'S' + '''' +
                                              ' GROUP BY PRODUTO,PRO_DESC ' +
                                              ' ORDER BY PRO_DESC  ' ;



                                       Q_AUX.Close;
                                       Q_AUX.SQL.CLEAR;
                                       Q_AUX.SQL.ADD(SQL);
                                       Q_AUX.ExecSQL;


                                 END;


                          IF  Q_AUX1.FieldByName('NAOPRODUTO').AsString = 'S' THEN BEGIN

                                 if FileExists(NomeArq) then begin
                                    AssignFile(ArqTxt, NomeArq);
                                    Reset(ArqTxt);


                                     TIPO5:= '';
                                     PRODUTO:= '';

                                     while not Eof(ArqTxt) do begin
                                        Readln(ArqTxt, StrDados);

                                      TIPO5:= copy(StrDados,0,1);


                                      IF TIPO5 = '5' then Begin

                                         PRODUTO:= copy(StrDados,8,10);

                                         if rgTipoLayout.ItemIndex = 0 then
                                            QTDE3:=    strtofloat(copy(StrDados,101,6))
                                         else begin
                                            QTDE3:=    strtofloat(copy(StrDados,101,9));
                                            QTDE3 := QTDE3 / 1000;
                                            //QTDE3 := StringReplace(QTDE3, ',', '.', [rfReplaceAll]);
                                         end;
                                         ///PESOLIQ:= copy(StrDados,77,12);
                                        PESOfloat :=  strtofloat(copy(StrDados,77,12) );
                                        PESOstr :=  formatfloat('0.000' ,((PESOfloat/1000)/QTDE3)) ;


                                         ///PESOBR:= copy(StrDados,89,12);
                                         PESO2float :=  strtofloat(copy(StrDados,89,12) );
                                         PESO2str :=  formatfloat('0.000' ,((PESO2float/1000)/QTDE3)) ;


                                      {SQL:= ' UPDATE  PRODUTO SET PRO_PESO = ' + '''' + PESOLIQ +'''' + ',' +
                                            '                 PRO_PESO_LIQ = ' + '''' + PESOBR + '''' +
                                            ' WHERE   CLIN_ID = ' + CNPJOS +
                                            ' AND     PRO_COD = ' + '''' + PRODUTO + '''';   }

                                      SQL:= ' UPDATE  PRODUTO SET PRO_PESO = ' + Funcoes.Converte(floattostr(strtofloat(PESO2str)) ,',','.')  + ',' +
                                            '                 PRO_PESO_LIQ = ' + Funcoes.Converte(floattostr(strtofloat(PESOstr)) ,',','.') +
                                            ' WHERE   CLIN_ID = ' + CNPJOS +
                                            ' AND     PRO_COD = ' + '''' + PRODUTO + '''';


                                 Q_AUX.Close;
                                 Q_AUX.SQL.CLEAR;
                                 Q_AUX.SQL.ADD(SQL);
                                 Q_AUX.ExecSQL;



                                END;
                             END;
                          END;
                        END;

      end ;

              closefile(ArqTxt) ;

              Q_IMPORT.CLOSE;
              Q_IMPORT.Open;


          SQL:= ' SELECT NAOCLIENTE FROM VERIFICANF GROUP BY NAOCLIENTE ORDER BY NAOCLIENTE DESC ' ;


                    Q_AUX1.Close;
                    Q_AUX1.SQL.CLEAR;
                    Q_AUX1.SQL.ADD(SQL);
                    Q_AUX1.OPEN;


              IF   Q_AUX1.FieldByName('NAOCLIENTE').AsString = 'S' THEN
                    BitBtn1.Enabled:= FALSE
              ELSE
                    BitBtn1.Enabled:= TRUE;



      Animate2.active := FALSE ;
      Animate2.visible := FALSE ;

End;

procedure TFImportacao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
         Q_IMPORT.CLOSE;
          T_ACEN.close ;
          action := cafree ;
end;

procedure TFImportacao.wwDBGrid2CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin

      IF Q_IMPORTNAOcliente.AsString = 'S'  THEN  BEGIN
          AFONT.Color:= CLRED ;
        if  not highlight then
           AFONT.COLOR:= CLRED ;

     end ELSE begin
        AFONT.COLOR:= CLBLACK  ;
          if   highlight then
           AFONT.COLOR:= CLRED ;
     end ;

         
end;

procedure TFImportacao.BitBtn1Click(Sender: TObject);
VAR   ArqTxt : TextFile  ;
      DiretorioOrig  : string ;
      StrDados : String  ;
      DATA5: STRING;
       DT_HJ : tdatetime;
       ST_AR : tdatetime ;

      SQL: STRING;

      DT_EMIS: STRING;

      TIPO: STRING;
      NOTAITENS: STRING;

      VALOR2: real;
      VALOR: STRING;
      QTDE: STRING;
      PRO_COD: STRING;

      INF_ITEM: INTEGER;
      // VALOR2_STRING1 :string  ;

begin


   //   try
       //  FSenha.Dtb_BaseDados.StartTransaction;

//       wwDBGrid2.Visible := False;

       Application.ProcessMessages;
         LEITURA;
         wwDBGrid2.Visible := True;
         Application.ProcessMessages;
       //  FSenha.Dtb_BaseDados.Commit;

       BitBtn1.Enabled := False;
    //  except
    //    ON E : Exception do
    //    begin
        //   FSenha.Dtb_BaseDados.Rollback;
          // MessageBox(Self.Handle, PChar('Aconteceu um erro na importação'+ #13+ e.Message), 'Erro', MB_OK + MB_ICONERROR)  ;
     //   end;
     // end;


end;



function TFimportacao.MUDALETR(LETRA: string): string;
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

procedure TFImportacao.FormCreate(Sender: TObject);
var i : Integer;
begin

   for i := 0 to pred(ComponentCount) do begin
       if Components[i] is TwwDBGrid then begin
          TwwDBGrid(Components[i]).TitleColor := $00F7F7F7;
          TwwDBGrid(Components[i]).TitleFont.Color := clNavy;
       end;
   end;
   T_ACEN.open;

   qrFat.Open;
end;

procedure TFImportacao.SpeedButton1Click(Sender: TObject);
begin
   Application.CreateForm(TFRelImportacao,FRelImportacao);
   FRelImportacao.AREA.Preview;
   FRelImportacao.Close;
end;

procedure TFImportacao.LEITURA;
VAR   ArqTxt : TextFile  ;
      DiretorioOrig  : string ;
      StrDados : String  ;
      DATA5: STRING;
       DT_HJ : tdatetime;
       ST_AR : tdatetime ;

      SQL: STRING;

      DT_EMIS: STRING;

      TIPO: STRING;
      NOTAITENS: STRING;

      VALOR2: real;
      VALOR: STRING;
      QTDE: STRING;
      PRO_COD: STRING;

      INF_ITEM: INTEGER;
      // VALOR2_STRING1 :string  ;


      MultiItem : Boolean;
begin

MultiItem := False;

   IF TRIM(wwDBEdit1.text) = ''  then begin
       MessageDlg('Série é campo obrigatório !',mtWarning,[mbok],0);
       wwDBEdit1.text  ;
       abort ;
   end ;

 If MessageDlg('Deseja realmente importar as NOTAS ?',MtConfirmation,[MbYes,
        MbNo],0)=MrYes Then
        Begin

      Animate1.active := true ;
      Animate1.visible := true ;


     Q_AUX1.Close;
     Q_AUX1.SQL.CLEAR;
     Q_AUX1.SQL.ADD('SELECT   A.NF, B.CLIF_ID,B.CLIF_CEP, B.CLIF_ENDERECO,' );
     Q_AUX1.SQL.ADD(' B.CLIF_ENDERECO_COMPL, B.CLIF_ENDERECO_BAIRRO, ' );
     Q_AUX1.SQL.ADD(' B.MUN_ID,B.UF_SIGLA ,B.CLIF_RAZA,B.CLIF_INSCRG, A.CNPJ  ' );
     Q_AUX1.SQL.ADD(' FROM        VERIFICANF A, CLIENTEFINAL B');
     Q_AUX1.SQL.ADD(' WHERE     DBO.COMP_ESQ(B.CLIF_CGCCPF,15,' + '''' + '0' + '''' + ')') ;
     Q_AUX1.SQL.ADD('      =    DBO.COMP_ESQ(A.CNPJ,15,' + '''' + '0' + '''' + ')') ;
     Q_AUX1.SQL.ADD('  GROUP BY  A.NF, B.CLIF_ID,B.CLIF_CEP, ') ;
     Q_AUX1.SQL.ADD('    B.CLIF_ENDERECO,B.CLIF_ENDERECO_COMPL,  ') ;
     Q_AUX1.SQL.ADD('    B.CLIF_ENDERECO_BAIRRO, B.MUN_ID,   B.UF_SIGLA ,   ') ;
     Q_AUX1.SQL.ADD('  B.CLIF_RAZA,B.CLIF_INSCRG,A.CNPJ,A.NF,  B.CLIF_CGCCPF, B.CLIF_ID ') ;
     Q_AUX1.SQL.ADD('    order by A.NF ') ;
     Q_AUX1.open ;

     Q_AUX1.first ;
     while not Q_AUX1.eof do begin
          Application.ProcessMessages;


          Q_AUX2.Close;
          Q_AUX2.SQL.CLEAR;
          Q_AUX2.SQL.ADD('select count(*) as QTDE from NF');
          Q_AUX2.SQL.ADD('where NFI_NUMERO = ' + '''' + Q_AUX1.fieldbyname('NF').asstring + '''') ;
          Q_AUX2.SQL.ADD('and   NFI_EMIT_CLI = ' + '''' + CNPJOS + '''');
          //adicionada serie
          Q_AUX2.sql.Add('and NFI_SERIE = ' + QuotedStr(wwDBEdit1.Text));
          Q_AUX2.open ;


          IF  Q_AUX2.fieldbyname('QTDE').asinteger = 0 then begin
                Q_aux.close;
                Q_aux.Sql.Clear;
                Q_aux.Sql.Add(' insert into NF (NFI_LOAD, NFI_SERIE,NFI_NUMERO,TDOC_ID,NFI_EMIT_CLI,NFI_DEST_CLI,');
                Q_aux.Sql.Add('   NFI_DEST_CEP, NFI_DEST_ENDERECO, NFI_DEST_COMPL, NFI_DEST_BAIRrO,');
                Q_aux.Sql.Add('    MUN_ID, NFI_DEST_UF_SIGLA,NFI_DEST_RAZA, NFI_DEST_INSCRG,NFI_DEST_CGC,') ;
                Q_aux.Sql.Add('  NFI_DEST_PESS,NFI_VFRE,NFI_VSEG,NFI_BIPI,NFI_VIPI,NFI_BICM,');
                Q_aux.Sql.Add('  NFI_VICM,NFI_VMER,NFI_TOTA,  NFI_PLIQ,NFI_PBRU,NFI_VDES,');
                Q_aux.Sql.Add('  OS_ID,CFA_ID,NFI_TRANS,NFI_COBRAR,NFI_CLONE, NFI_RETORNADA ,');
                Q_aux.Sql.Add('  NFI_REDESPACHO ,NFI_MOVESTQ )') ;
                Q_aux.Sql.Add(' values ( ' );
                Q_aux.Sql.Add( '''' +	edtLoad.text + '''' + ',');
                Q_aux.Sql.Add( '''' +	wwDBEdit1.text + '''' + ',');
                Q_aux.Sql.Add( '''' +	Q_AUX1.fieldbyname('NF').asstring + '''' + ',');
                Q_aux.Sql.Add( inttostr(1) + ',');
                Q_aux.Sql.Add( '''' +   CNPJOS + '''' + ',' );
                Q_aux.Sql.Add( '''' +   Q_AUX1.fieldbyname('CLIF_ID').asstring + ''''  + ',');
                Q_aux.Sql.Add( '''' +	Q_AUX1.fieldbyname('CLIF_CEP').asstring + '''' + ',');
                //Q_aux.Sql.Add( '''' +	Q_AUX1.fieldbyname('CLIF_ENDERECO').asstring + '''' + ',');
                //Q_aux.Sql.Add( '''' +	Q_AUX1.fieldbyname('CLIF_ENDERECO_COMPL').asstring + '''' + ',');
                //Q_aux.Sql.Add( '''' +	Q_AUX1.fieldbyname('CLIF_ENDERECO_BAIRRO').asstring + '''' + ',');
                Q_aux.Sql.Add( quotedstr(Q_AUX1.fieldbyname('CLIF_ENDERECO').asstring)  + ',');
                Q_aux.Sql.Add( quotedstr(Q_AUX1.fieldbyname('CLIF_ENDERECO_COMPL').asstring) + ',');
                Q_aux.Sql.Add( quotedstr(Q_AUX1.fieldbyname('CLIF_ENDERECO_BAIRRO').asstring) + ',');

                Q_aux.Sql.Add( '''' +   Q_AUX1.fieldbyname('MUN_ID').asstring +  '''' + ',');
                Q_aux.Sql.Add( '''' +	Q_AUX1.fieldbyname('UF_SIGLA').asstring + '''' + ',');
                Q_aux.Sql.Add( '''' +   Q_AUX1.fieldbyname('CLIF_RAZA').asstring + '''' + ',');
                Q_aux.Sql.Add( '''' +   Q_AUX1.fieldbyname('CLIF_INSCRG').asstring + '''' + ',');
                Q_aux.Sql.Add( '''' +	Q_AUX1.fieldbyname('CNPJ').asstring + '''' + ',');
                Q_aux.Sql.Add( '''' +	  'J' + '''' + ',' );
                Q_aux.Sql.Add( inttostr(0) + ',');
                Q_aux.Sql.Add( inttostr(0) + ',');
                Q_aux.Sql.Add( inttostr(0) + ',');
                Q_aux.Sql.Add( inttostr(0) + ',');
                Q_aux.Sql.Add( inttostr(0) + ',');
                Q_aux.Sql.Add( inttostr(0) + ',');
                Q_aux.Sql.Add( inttostr(0) + ',');
                Q_aux.Sql.Add( inttostr(0) + ',');
                Q_aux.Sql.Add( inttostr(0) + ',');
                Q_aux.Sql.Add( inttostr(0) + ',');
                Q_aux.Sql.Add( inttostr(0) + ',');
                Q_aux.Sql.Add( '''' + FOS.CDSOSOS_ID.asstring + '''' +  ',');
                //Q_aux.Sql.Add( inttostr(617) + ',');

                Q_aux.Sql.Add( cboFat.LookupValue + ',');

                IF RadioGroup1.itemindex = 0 then
                   Q_aux.Sql.Add( '''' + 'S' + '''' + ',' )
                else
                   Q_aux.Sql.Add( '''' + 'N' + '''' + ',' );

                Q_aux.Sql.Add( '''' +	  'S' + '''' + ',' );
                Q_aux.Sql.Add( '''' +	  'N' + '''' + ',' );
                Q_aux.Sql.Add( '''' +	  'N' + '''' + ',' );
                Q_aux.Sql.Add( '''' +	  'N' + '''' + ',' );
                Q_aux.Sql.Add( '''' +	  'S' + '''' + ')' );
                Q_aux.ExecSql;
          end ;

       Q_AUX1.next ;
     end ;



       DATA5:= FormatDateTime('DD.MM',Date);

       ////DiretorioOrig := DirectoryListBox1.Directory ;
       //// NomeArq := DiretorioOrig+ '\NFD04' + DATA;
        NomeArq :=  FileListBox1.FileName ;

        if FileExists(NomeArq) then begin
           AssignFile(ArqTxt, NomeArq);
           Reset(ArqTxt);

            while not Eof(ArqTxt) do begin
             Readln(ArqTxt, StrDados);
               Application.ProcessMessages;
                 ///cnpj Jiever e Cargill
                IF (FOS.CDSOSCNPJ.asstring <> '08179305000114') and
                   (FOS.CDSOSCNPJ.asstring <> '60498706007836') and
                   (FOS.CDSOSCNPJ.asstring <> '60498706013488') and
                   (FOS.CDSOSCNPJ.asstring <> '60498706033918')  then begin

                      TIPO:= copy(StrDados,0,1);
                      IF TIPO = '2' then Begin

                            NOTAITENS:= COPY(StrDados,2,6);

                            SQL:= ' UPDATE NF SET  NFI_DEMI = ' + '''' + FormatDateTime('mm/dd/yyyy',NOW) + '''' +
                                  ' WHERE  NFI_DEMI = NULL ' +
                                  ' AND    NFI_NUMERO = ' + '''' + trim(NOTAITENS) + '''' +
                                  ' AND    NFI_EMIT_CLI  = ' + CNPJOS;
                            Q_AUX.Close;
                            Q_AUX.SQL.CLEAR;
                            Q_AUX.SQL.ADD(SQL);
                            Q_AUX.ExecSQL;
                      End;
                end else begin
                      TIPO:= copy(StrDados,1,2);  //////aqui//////////
                      IF TIPO <> '1 ' then Begin

                            NOTAITENS:= COPY(StrDados,1,6);
                            ///DATA  := COPY(StrDados,27,4) + COPY(StrDados,24,2) + COPY(StrDados,21,2);
                            DATA5 :=   COPY(StrDados,21,10)  ;

                            DT_HJ := now ;
                            ST_AR := strtodate(data5) ;

                           SQL:= ' UPDATE NF SET  NFI_DEMI = ' + '''' + FormatDateTime('YYYYMMDD',DT_HJ) + '''' + ',' +
                                  ' NFI_DTENTREGA  =  ' + '''' + FormatDateTime('YYYYMMDD',ST_AR) + '''' +
                                  ' WHERE  NFI_DEMI = NULL ' +
                                  ' AND    NFI_NUMERO = ' + '''' + trim(NOTAITENS) + '''' +
                                  ' AND    NFI_EMIT_CLI  = ' + CNPJOS;


                            Q_AUX.Close;
                            Q_AUX.SQL.CLEAR;
                            Q_AUX.SQL.ADD(SQL);
                            Q_AUX.ExecSQL;




                      End;
                end ;
            end;
        end;



        SQL:= 'INSERT 	NF_ITENS ' +
              '         (NFI_CODI,  ' +
              '         PRO_ID, ' +
              '         PRO_COD,  ' +
              '         PRO_DESC,   ' +
              '         INF_VIPI,    ' +
              '         INF_VOL,     ' +
              '         UVEN_ID,     ' +
              '         INF_QTDERETORNADA)  ' +
              ' SELECT  B.NFI_CODI,  ' +
              '	        C.PRO_ID,   ' +
              '	        C.PRO_COD,  ' +
              ' 	C.PRO_DESC,  ' +
              '         0,       ' +
              '         C.PRO_VOLUME,  ' +
             /// '         1,   ' +
              '(SELECT PRODUTO.UVEN_ID FROM PRODUTO WHERE PRODUTO.PRO_ID = C.PRO_ID), '+
              '         0     ' +
              ' FROM    VERIFICANF A, ' +
              '         NF B,      ' +
              '	        PRODUTO C   ' +
              ' WHERE   A.NF = B.NFI_NUMERO ' +
              ' AND     A.PRODUTO  =  C.PRO_COD  ' +
              ' AND     B.NFI_EMIT_CLI = C.CLIN_ID  ' +
              ' AND NOT EXISTS (SELECT * FROM NF_ITENS WHERE NFI_CODI = B.NFI_CODI)  '+//ADD MIGUEL: SOMENTE NOTAS NOVAS
              ' GROUP BY B.NFI_CODI, ' +
              '	        C.PRO_ID,    ' +        

              '	        C.PRO_COD,   ' +
              '   	  C.PRO_DESC,     ' +

              '        C.PRO_VOLUME    ' +
              ' ORDER BY  C.PRO_COD       ' ;

        Q_AUX.Close;
        Q_AUX.SQL.CLEAR;
        Q_AUX.SQL.ADD(SQL);
        Q_AUX.ExecSQL;









       if FileExists(NomeArq) then begin
           AssignFile(ArqTxt, NomeArq);
           Reset(ArqTxt);



            while not Eof(ArqTxt) do begin
             Readln(ArqTxt, StrDados);
             Application.ProcessMessages;
                  ///cnpj Jiever e Cargill
                IF (FOS.CDSOSCNPJ.asstring <> '08179305000114') and
                   (FOS.CDSOSCNPJ.asstring <> '60498706007836') AND
                   (FOS.CDSOSCNPJ.asstring <> '60498706013488') and
                   (FOS.CDSOSCNPJ.asstring <> '60498706033918')  then begin

                               TIPO:= copy(StrDados,0,1);
                               IF TIPO = '5' then Begin
                                  PRO_COD:= COPY(StrDados,8,10);
                                  NOTAITENS:= COPY(StrDados,2,6);

                                  Q_AUX.Close;
                                  Q_AUX.SQL.CLEAR;
                                  Q_AUX.SQL.ADD('SELECT COUNT(*) as XVALOR,A.INF_QTDE,A.INF_TOTA,A.INF_PESOLIQ,A.INF_PESO');
                                  Q_AUX.SQL.ADD('FROM   NF_ITENS A,NF B');
                                  Q_AUX.SQL.ADD('WHERE A.PRO_COD = ' + '''' + PRO_COD + '''');
                                  Q_AUX.SQL.ADD('AND   A.NFI_CODI = B.NFI_CODI') ;
                                  Q_AUX.SQL.ADD('AND   B.NFI_NUMERO = '  + '''' + NOTAITENS + '''')  ;
                                  Q_AUX.SQL.ADD('group by A.INF_QTDE,A.INF_TOTA,A.INF_PESOLIQ,A.INF_PESO') ;
                                  Q_AUX.OPEN;

                                  MultiItem := False;

                                  IF Q_AUX.fieldbyname('XVALOR').asinteger = 1 then begin

                                      //miguel - verifica se o layout está com casas decimais
                                      if rgTipoLayout.ItemIndex = 0 then  begin
                                         QTDE:=   copy(StrDados,101,6);


                                         //miguel, verifica se a nota tem itens repetidos e se tiver so atualiza a qtde
                                         if Q_AUX.fieldbyname('INF_QTDE').asfloat > 0 then
                                             MultiItem := True
                                         else
                                             MultiItem := False;

                                       //  System.sqlClient := Connection.SQl.strtofloat(QTDE);

                                         QTDE:= floattostr((Q_AUX.fieldbyname('INF_QTDE').asfloat +  strtofloat(QTDE))) ;
                                         NOTAITENS:= COPY(StrDados,2,6);
                                         VALOR2 := strtofloat(copy(StrDados,112,14) );
                                      end else begin
                                         QTDE:=   copy(StrDados,101,9);
                                         QTDE := floattostr(strtofloat(QTDE) / 1000);
                                        //
                                         QTDE:= floattostr((Q_AUX.fieldbyname('INF_QTDE').asfloat +  strtofloat(QTDE))) ;
                                         //QTDE := StringReplace(QTDE, ',', '.', [rfReplaceAll]);
                                         NOTAITENS:= COPY(StrDados,2,6);
                                         VALOR2 := strtofloat(copy(StrDados,115,14) );
                                      end;//end if layout decimais miguel

                                      VALOR2:= (Q_AUX.fieldbyname('INF_TOTA').asfloat +  VALOR2) ;
                                      VALOR:=  formatfloat('0.00' ,(VALOR2/100)) ;

                                      PESOfloat :=  strtofloat(copy(StrDados,89,12) );
                                      PESOfloat:= (Q_AUX.fieldbyname('INF_PESO').asfloat +  PESOfloat) ;
                                      IF strtofloat(QTDE) > 0 then
                                         PESOfloat :=  (PESOfloat/strtofloat(QTDE));
                                      PESOstr :=  formatfloat('0.000' ,(PESOfloat/1000)) ;



                                      PESO2float :=  strtofloat(copy(StrDados,77,12) );
                                      PESO2float := (Q_AUX.fieldbyname('INF_PESOLIQ').asfloat +  PESO2float) ;
                                      IF strtofloat(QTDE) > 0 then
                                         PESO2float :=  (PESO2float/strtofloat(QTDE));
                                      PESO2str :=  formatfloat('0.000' ,(PESO2float/1000)) ;


                                  end else begin


                                      //miguel - verifica se o layout está com casas decimais
                                      if rgTipoLayout.ItemIndex = 0 then  begin
                                         QTDE:=   copy(StrDados,101,6);
                                         NOTAITENS:= COPY(StrDados,2,6);
                                         VALOR2 := strtofloat(copy(StrDados,112,14) );
                                      end else begin
                                         QTDE:=   copy(StrDados,101,9);
                                         QTDE := floattostr(strtofloat(QTDE) / 1000);

                                         NOTAITENS:= COPY(StrDados,2,6);
                                         VALOR2 := strtofloat(copy(StrDados,115,14) );
                                      end;//end if decimais


                                      ///PRO_COD:= COPY(StrDados,8,10);



                                      
                                      VALOR:=  formatfloat('0.00' ,(VALOR2/100)) ;

                                      PESOfloat :=  strtofloat(copy(StrDados,89,12) );

                                      IF strtofloat(QTDE) > 0 then
                                         PESOfloat :=  (PESOfloat/strtofloat(QTDE));
                                      PESOstr :=  formatfloat('0.000' ,(PESOfloat/1000)) ;



                                      PESO2float :=  strtofloat(copy(StrDados,77,12) );
                                      IF strtofloat(QTDE) > 0 then
                                         PESO2float :=  (PESO2float/strtofloat(QTDE));
                                      PESO2str :=  formatfloat('0.000' ,(PESO2float/1000)) ;

                                      //MIGUEL
                                      //
                                  end ;

                                 QTDE := StringReplace(QTDE, ',', '.', [rfReplaceAll]);


                                 if (MultiItem) then begin
                                       SQL:= ' UPDATE  NF_ITENS SET    INF_QTDE = ' + QTDE +// ',' +
                                       // '                         INF_TOTA = ' + Funcoes.Converte(floattostr(strtofloat(VALOR)) ,',','.') + ',' +
                                       // '                         INF_PESO = ' + Funcoes.Converte(floattostr(strtofloat(PESOstr)) ,',','.') + ',' +
                                       // '                         INF_PESOLIQ = ' + Funcoes.Converte(floattostr(strtofloat(PESO2str)) ,',','.')  +

                                        ' WHERE   NFI_CODI IN   ' +
                                        ' (SELECT NFI_CODI FROM NF WHERE NFI_NUMERO = ' + '''' + NOTAITENS + '''' + ')' +
                                        ' AND    PRO_COD = ' + '''' + PRO_COD + '''';
                                end else begin
                                       SQL:= ' UPDATE  NF_ITENS SET    INF_QTDE = ' + QTDE + ',' +
                                        '                         INF_TOTA = ' + Funcoes.Converte(floattostr(strtofloat(VALOR)) ,',','.') + ',' +
                                        '                         INF_PESO = ' + Funcoes.Converte(floattostr(strtofloat(PESOstr)) ,',','.') + ',' +
                                        '                         INF_PESOLIQ = ' + Funcoes.Converte(floattostr(strtofloat(PESO2str)) ,',','.')  +

                                        ' WHERE   NFI_CODI IN   ' +
                                        ' (SELECT NFI_CODI FROM NF WHERE NFI_NUMERO = ' + '''' + NOTAITENS + '''' + ')' +
                                        ' AND    PRO_COD = ' + '''' + PRO_COD + '''';
                                end;

                                Q_AUX.Close;
                                Q_AUX.SQL.CLEAR;
                                Q_AUX.SQL.ADD(SQL);
                                Q_AUX.ExecSQL;


                                if (MultiItem = False) then begin
                                        SQL:= ' UPDATE  NF_ITENS SET  INF_PUNI = INF_TOTA / INF_QTDE ' +
                                              ////'                       INF_ITEM = ' + INTTOSTR(INF_ITEM) +
                                              ' WHERE   NFI_CODI IN   ' +
                                              ' (SELECT NFI_CODI FROM NF WHERE NFI_NUMERO = ' + '''' + NOTAITENS + '''' + ')' +
                                              '  AND    PRO_COD = ' + '''' + PRO_COD + '''';



                                        Q_AUX.Close;
                                        Q_AUX.SQL.CLEAR;
                                        Q_AUX.SQL.ADD(SQL);
                                        Q_AUX.ExecSQL;
                                end;
                               END;
                end else begin
                               TIPO:= copy(StrDados,1,2);    //////aqui//////////
                               IF TIPO <> '1 ' then Begin
                                  PRO_COD:= COPY(StrDados,31,6);
                                  NOTAITENS:= COPY(StrDados,1,6);

                                  Q_AUX.Close;
                                  Q_AUX.SQL.CLEAR;
                                  Q_AUX.SQL.ADD('SELECT COUNT(*) as XVALOR,A.INF_QTDE,A.INF_TOTA,A.INF_PESOLIQ,A.INF_PESO');
                                  Q_AUX.SQL.ADD('FROM   NF_ITENS A,NF B');
                                  Q_AUX.SQL.ADD('WHERE A.PRO_COD = ' + '''' + TRIM(PRO_COD) + '''');
                                  Q_AUX.SQL.ADD('AND   A.NFI_CODI = B.NFI_CODI') ;
                                  Q_AUX.SQL.ADD('AND   B.NFI_NUMERO = '  + '''' + TRIM(NOTAITENS) + '''')  ;
                                  Q_AUX.SQL.ADD('group by A.INF_QTDE,A.INF_TOTA,A.INF_PESOLIQ,A.INF_PESO') ;
                                  Q_AUX.OPEN;


                                  IF Q_AUX.fieldbyname('XVALOR').asinteger = 1 then begin

                                      QTDE:=   copy(StrDados,37,5);
                                      QTDE:= floattostr((Q_AUX.fieldbyname('INF_QTDE').asfloat +  strtofloat(QTDE))) ;

                                      NOTAITENS:= COPY(StrDados,1,6);



                                      VALOR2 := strtofloat(copy(StrDados,44,10) );
                                      VALOR:=  formatfloat('' ,(VALOR2)) ;



                                      Q_AUX2.Close;
                                      Q_AUX2.SQL.CLEAR;
                                      Q_AUX2.SQL.ADD('SELECT PRO_PESO,PRO_PESO_LIQ from produto');
                                      Q_AUX2.SQL.ADD('WHERE PRO_COD = ' + '''' +TRIM(PRO_COD) + '''');
                                      Q_AUX2.OPEN;

                                      IF Q_AUX2.fieldbyname('PRO_PESO').asfloat >  0 then
                                       //PESOfloat :=  strtofloat(copy(StrDados,89,12) );
                                         PESOfloat :=   Q_AUX2.fieldbyname('PRO_PESO').asfloat
                                        else
                                         PESOfloat := 0 ;

                                      PESOfloat:= (Q_AUX.fieldbyname('INF_PESO').asfloat +  PESOfloat) ;
                                      IF strtofloat(QTDE) > 0 then
                                         PESOfloat :=  (PESOfloat/strtofloat(QTDE));
                                      ///PESOstr :=  formatfloat('0.000' ,(PESOfloat/1000)) ;
                                         PESOstr :=  formatfloat('0.000' ,(PESOfloat)) ;


                                      IF Q_AUX2.fieldbyname('PRO_PESO_LIQ').asfloat >  0 then
                                      ////PESO2float :=  strtofloat(copy(StrDados,77,12) );
                                             PESO2float :=   Q_AUX2.fieldbyname('PRO_PESO_LIQ').asfloat
                                        else
                                         PESO2float := 0 ;

                                      PESO2float := (Q_AUX.fieldbyname('INF_PESOLIQ').asfloat +  PESO2float) ;
                                      IF strtofloat(QTDE) > 0 then
                                         PESO2float :=  (PESO2float/strtofloat(QTDE));
                                      ///PESO2str :=  formatfloat('0.000' ,(PESO2float/1000)) ;
                                          PESO2str :=  formatfloat('0.000' ,(PESO2float)) ;

                                  end else begin
                                      QTDE:=   copy(StrDados,37,5);
                                      NOTAITENS:= COPY(StrDados,1,6);

                                      VALOR2 := strtofloat(copy(StrDados,44,10) );
                                      VALOR:=  formatfloat('' ,(VALOR2*100)) ;


                                      Q_AUX2.Close;
                                      Q_AUX2.SQL.CLEAR;
                                      Q_AUX2.SQL.ADD('SELECT PRO_PESO,PRO_PESO_LIQ from produto');
                                      Q_AUX2.SQL.ADD('WHERE PRO_COD = ' + '''' + TRIM(PRO_COD) + '''');
                                      Q_AUX2.OPEN;

                                      IF Q_AUX2.fieldbyname('PRO_PESO').asfloat >  0 then
                                      ///PESOfloat :=  strtofloat(copy(StrDados,89,12));
                                         PESOfloat :=   Q_AUX2.fieldbyname('PRO_PESO').asfloat
                                       else
                                        PESOfloat := 0 ;


                                      IF strtofloat(QTDE) > 0 then
                                         PESOfloat :=  (PESOfloat/strtofloat(QTDE));
                                      ///PESOstr :=  formatfloat('0.000' ,(PESOfloat/1000)) ;
                                      PESOstr := formatfloat('0.000',(PESOfloat)) ;


                                      IF Q_AUX2.fieldbyname('PRO_PESO_LIQ').asfloat >  0 then
                                        ////PESO2float :=  strtofloat(copy(StrDados,77,12) );
                                         PESO2float :=   Q_AUX2.fieldbyname('PRO_PESO_LIQ').asfloat
                                       else
                                        PESOfloat := 0 ;



                                      IF strtofloat(QTDE) > 0 then
                                         PESO2float :=  (PESO2float/strtofloat(QTDE));
                                        //PESO2str :=  formatfloat('0.000' ,(PESO2float/1000)) ;
                                        PESO2str :=  formatfloat('0.000' ,(PESO2float)) ;


                                  end ;


                                ///////////////////////////////////////////////////////////////////////////////////////
                                {  alterado para gerar a multiplicação  peso * QTd
                                SQL:= ' UPDATE  NF_ITENS SET    INF_QTDE = ' + QTDE + ',' +
                                  '                         INF_TOTA = ' + Funcoes.Converte(floattostr(strtofloat(VALOR)) ,',','.') + ',' +
                                  '                         INF_PESO = ' + Funcoes.Converte(floattostr(strtofloat(PESOstr)) ,',','.') + ',' +
                                  '                         INF_PESOLIQ = ' + Funcoes.Converte(floattostr(strtofloat(PESO2str)) ,',','.')  +

                                  ' WHERE   NFI_CODI IN   ' +
                                  ' (SELECT NFI_CODI FROM NF WHERE NFI_NUMERO = ' + '''' + TRIM(NOTAITENS) + '''' + ')' +
                                  ' AND    PRO_COD = ' + '''' + TRIM(PRO_COD) + '''';    }

                                 //********* MIGUEL *********************************
                                 //*********adicionada multiplicação da quantidade pelo peso********
                                 SQL:= ' UPDATE  NF_ITENS SET    INF_QTDE = ' + QTDE + ',' +
                                  '                         INF_TOTA = ' + Funcoes.Converte(floattostr(strtofloat(VALOR) ) ,',','.') + ',' +
                                  '                         INF_PESO = ' + Funcoes.Converte(floattostr(strtofloat(PESOstr) * strtofloat(qtde)) ,',','.') + ',' +
                                  '                         INF_PESOLIQ = ' + Funcoes.Converte(floattostr(strtofloat(PESO2str)* strtofloat(qtde)) ,',','.')  +

                                  ' WHERE   NFI_CODI IN   ' +
                                  ' (SELECT NFI_CODI FROM NF WHERE NFI_NUMERO = ' + '''' + TRIM(NOTAITENS) + '''' + ')' +
                                  ' AND    PRO_COD = ' + '''' + TRIM(PRO_COD) + '''';




                                Q_AUX.Close;
                                Q_AUX.SQL.CLEAR;
                                Q_AUX.SQL.ADD(SQL);
                                Q_AUX.ExecSQL;



                                SQL:= ' UPDATE  NF_ITENS SET  INF_PUNI = INF_TOTA / INF_QTDE ' +
                                      ////'                       INF_ITEM = ' + INTTOSTR(INF_ITEM) +
                                      ' WHERE   NFI_CODI IN   ' +
                                      ' (SELECT NFI_CODI FROM NF WHERE NFI_NUMERO = ' + '''' + TRIM(NOTAITENS) + '''' + ')' +
                                      '  AND    PRO_COD = ' + '''' + TRIM(PRO_COD) + '''';



                                Q_AUX.Close;
                                Q_AUX.SQL.CLEAR;
                                Q_AUX.SQL.ADD(SQL);
                                Q_AUX.ExecSQL;
                               END;
                end ;



            END;
                   END;

                 closefile(ArqTxt) ;

       end else     abort;



    Q_IMPORT.first ;
    While not  Q_IMPORT.eof do begin

            Application.ProcessMessages;
            INF_ITEM:= 1;

            Q_AUX1.Close;
            Q_AUX1.SQL.CLEAR;
            Q_AUX1.SQL.ADD('SELECT A.INF_CODI from NF_ITENS A,NF B');
            Q_AUX1.SQL.add('where A.NFI_CODI = B.NFI_CODI');
            Q_AUX1.SQL.ADD('and  B.NFI_NUMERO = ' + '''' + Q_IMPORTNF.asstring + '''' );
            Q_AUX1.SQL.ADD('order by PRO_COD' );
            Q_AUX1.OPEN;

            Q_AUX1.first ;
            While not  Q_AUX1.eof do begin

                     Q_AUX.Close;
                     Q_aux.Sql.Clear;
                     Q_aux.Sql.Add(' UPDATE NF_ITENS SET INF_ITEM  = ' + inttostr(INF_ITEM) );
                     Q_aux.Sql.Add(' where INF_CODI = ' + Q_AUX1.fieldbyname('INF_CODI').asstring );
                     Q_aux.ExecSql;

                     INF_ITEM:= INF_ITEM + 1;

                Q_AUX1.next ;
            end ;



            Q_AUX1.Close;
            Q_AUX1.SQL.CLEAR;
            Q_AUX1.SQL.ADD('SELECT NFI_CODI,CFA_ID,NFI_EMIT_CLI from NF');
            Q_AUX1.SQL.ADD('where NFI_NUMERO = ' + '''' + Q_IMPORTNF.asstring + '''' );
            Q_AUX1.SQL.ADD('and   NFI_EMIT_CLi = ' + '''' + FOS.CDSOSCLIN_ID.asstring + '''' );
            Q_AUX1.SQL.ADD('and NFI_SERIE = ' + QuotedStr(wwDBEdit1.Text));
            Q_AUX1.OPEN;



            try
            Begin

               STP_NF.ParamByName('@NF').Value    :=  Q_AUX1.fieldbyname('NFI_CODI').asinteger   ;
               STP_NF.ParamByName('@CFO').Value       :=  Q_AUX1.fieldbyname('CFA_ID').asinteger  ;
               STP_NF.ParamByName('@CLIN_ID').Value    := Q_AUX1.fieldbyname('NFI_EMIT_CLI').asinteger  ;
               STP_NF.ParamByName('@GERATPROD').Value    := 'S' ;
               STP_NF.Execproc;

               
            End
          except
            on e: Exception do
             begin
               MessageDlg('Geração Nota Fiscal, com erro !' + #13 + e.Message,mtInformation,[mbOk], 0);
               Animate1.active := false ;
               Animate1.visible := false ;
               abort  ;
             end;
          end;

       Q_IMPORT.next ;
    end ;

    Animate1.active := false ;
    Animate1.visible := false ;



    Q_IMPORT.first ;
    MessageDlg('Notas importadas com sucesso !',mtInformation,[mbOk], 0);

end;

end.
