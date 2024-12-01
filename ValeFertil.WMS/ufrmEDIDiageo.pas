unit ufrmEDIDiageo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ADODB, Db, DBTables, Wwtable, Wwdatsrc, Wwquery, StdCtrls, Grids,
  DBGrids, wwdblook, Mask, Buttons, Gauges, ExtCtrls;

type
  TfrmEDIDiageo = class(TForm)
    pnl1: TPanel;
    btn1: TSpeedButton;
    lbl1: TLabel;
    pnl2: TPanel;
    Gauge1: TGauge;
    lbl2: TLabel;
    lbl3: TLabel;
    lblProgresso: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    Gauge2: TGauge;
    lbl6: TLabel;
    btn2: TBitBtn;
    medt1: TMaskEdit;
    medt2: TMaskEdit;
    cboCliente: TwwDBLookupCombo;
    dbgrd1: TDBGrid;
    dbgrd2: TDBGrid;
    dbgrd3: TDBGrid;
    dbgrd4: TDBGrid;
    edtFatura: TEdit;
    dlgSave1: TSaveDialog;
    Q_PARAMETRO: TwwQuery;
    Q_PARAMETROPAR_RAZA: TStringField;
    Q_PARAMETROPAR_CNPJ: TStringField;
    Q_FAT: TwwQuery;
    Q_FATFAT_ID: TAutoIncField;
    Q_FATFAT_NUM: TIntegerField;
    Q_FATCOND_PGTO_ID: TIntegerField;
    Q_FATCLIN_ID: TIntegerField;
    Q_FATFAT_VALOR: TFloatField;
    Q_FATFAT_EMISSAO: TDateTimeField;
    Q_FATFAT_TIPO: TStringField;
    Q_FATIFAT_VCTO: TDateTimeField;
    DS_FAT: TwwDataSource;
    T_ACEN: TwwTable;
    T_ACENACE_CASC: TIntegerField;
    T_ACENACE_DESC: TStringField;
    T_ACENACE_NOVO: TStringField;
    Q_AUX: TwwQuery;
    Q_AUX2: TwwQuery;
    Q_AUX3: TwwQuery;
    Q_AUX4: TwwQuery;
    Q_AUX5: TwwQuery;
    qrIcms: TwwQuery;
    qrCliente: TwwQuery;
    qrClienteCLIN_RAZA: TStringField;
    qrClienteCLIN_ID: TAutoIncField;
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
    qrConhecimentosORD_ID: TAutoIncField;
    qrConhecimentoscfa_id: TIntegerField;
    qrConhecimentosORD_PAGO: TStringField;
    qrConhecimentosCLIF_ID: TIntegerField;
    qrConhecimentosCTE_CHAVE: TMemoField;
    qrConhecimentosCTE_PROTOCOLO: TMemoField;
    qrConhecimentose_complementar: TStringField;
    qrNotasORD: TwwQuery;
    qrNotasORDNFI_NUMERO: TStringField;
    qrNotasORDNFI_ENTREGA: TStringField;
    ds1: TDataSource;
    ds2: TDataSource;
    ds3: TDataSource;
    ds4: TDataSource;
    qrOcoren: TwwQuery;
    qrOcorenORD_CONH: TStringField;
    qrOcorenORD_DATA: TDateTimeField;
    qrOcorenCLIN_CGCCPF: TStringField;
    qrOcorenNFI_NUMERO: TStringField;
    qrORdNota: TwwQuery;
    qrValores: TwwQuery;
    qry1: TADOQuery;
    qry2: TADOQuery;
    qrConhecimentosMANI_ID: TIntegerField;
    qrConhecimentosVEIC_ID: TIntegerField;
    procedure btn2Click(Sender: TObject);
    function MUDALETR(LETRA: string): string;
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEDIDiageo: TfrmEDIDiageo;

implementation
uses U_FUNCOES, UMenu ;
{$R *.DFM}

function TfrmEDIDiageo.MUDALETR(LETRA: string): string;
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


procedure TfrmEDIDiageo.btn2Click(Sender: TObject);
var
  linha : string;
  aux : string;
  a : Integer;
  filex : TStringList;
  path : string;
  iSize, i : Integer  ;
  D1, D2 : TDateTime;
  NotasConh : string;
  espaco : Integer;

  CONTADOR, VLRTOTAL : Double;
begin

  CONTADOR := 0;
  VLRTOTAL := 0;

     path := dlgSave1.FileName;
     filex := TStringList.Create;


   if edtFatura.Text = '' then  begin
           if (medt1.text = '  /  /    ') or (medt2.text = '  /  /    ') then
           begin
                MessageDlg('Preencha todos os campos.', mtInformation, [mbok], 0);
                abort;
           end;

           IF   cboCliente.Text = '' THEN
           begin
                MessageDlg('Selecione Cliente!', mtInformation, [mbok], 0);
                abort;
           end;

           if medt1.text <> '  /  /    ' then
              D1  := strtodate(medt1.text );
           if medt2.text <> '  /  /    ' then
              D2  := strtodate(medt2.text );
   end;
    dlgSave1.execute;
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
          //linha := linha + 'U';

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

          linha := linha + '' + aux + ' ';




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
           AUX := '000000000000000';
           linha := linha + aux;

           //valor do iss
           AUX := '000000000000000';
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

            //TIPO  NC
            linha := linha  + '57' ;

            AUX := '';
            iSize := 514 - Length(aux);
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
                   sql.Add(' where convert(char(10), ord_data, 112) >= ' + QuotedStr(FormatDateTime('YYYYMMDD', StrToDate(medt1.Text) )));
                   sql.Add(' and convert(char(10), ord_data, 112) <= ' + QuotedStr(FormatDateTime('YYYYMMDD', StrToDate(medt1.Text) )));
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
         lblProgresso.Visible := False;
         FreeAndNil(filex);
  end;

end;

procedure TfrmEDIDiageo.FormCreate(Sender: TObject);
begin
    qrCliente.Open;
    T_ACEN.Open;
    Q_PARAMETRO.open;
end;

procedure TfrmEDIDiageo.btn1Click(Sender: TObject);
begin
  Self.Close;
end;

end.
