unit UfrmExportaManifesto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, Db, ADODB, StdCtrls, wwdblook, Mask, comobj;

type
  TfrmExportaManifesto = class(TForm)
    qrManif: TADOQuery;
    wwDBGrid1: TwwDBGrid;
    Panel1: TPanel;
    qrManifSEL_EXPORT: TStringField;
    qrManifMANI_ID: TAutoIncField;
    qrManifMANI_DATA: TDateTimeField;
    qrManifMANI_TIPOCARGA: TStringField;
    qrManifVEIC_ID: TIntegerField;
    qrManifMOT_ID: TIntegerField;
    qrManifTRANS_ID: TIntegerField;
    qrManifCLIN_RAZA: TStringField;
    qrManifCONFIRMA_MANI: TStringField;
    qrManifREG_ID: TIntegerField;
    qrManifMANI_VFRETEPAG: TFloatField;
    qrManifREG_NOME: TStringField;
    qrManifVEIC_NOME: TStringField;
    qrManifTRANS_FANTASIA: TStringField;
    qrManifMOT_NOME: TStringField;
    DataSource1: TDataSource;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    wwDBLookupCombo1: TwwDBLookupCombo;
    Label3: TLabel;
    Button3: TButton;
    qrCliCombo: TADOQuery;
    qrCliComboCLIN_ID: TAutoIncField;
    qrCliComboCLIN_RAZA: TStringField;
    Panel2: TPanel;
    Button1: TButton;
    Button2: TButton;
    RadioGroup1: TRadioGroup;
    qrManifNOTA: TStringField;
    qrMot: TADOQuery;
    qrMotMOT_ID: TAutoIncField;
    qrMotTRANS_ID: TIntegerField;
    qrMotMOT_NOME: TStringField;
    qrMotMOT_ENDERECO: TStringField;
    qrMotMOT_MUNICIPIO: TStringField;
    qrMotMOT_CEP: TStringField;
    qrMotUF_SIGLA: TStringField;
    qrMotMOT_CPF: TStringField;
    qrMotMOT_RG: TStringField;
    qrMotMOT_DT_NASC: TDateTimeField;
    qrMotMOT_RG_ORGAO: TStringField;
    qrMotMOT_CNH: TStringField;
    qrMotMOT_CNH_CATEG: TStringField;
    qrMotMOT_CNH_VALID: TDateTimeField;
    qrMotMOT_PAI: TStringField;
    qrMotMOT_MAE: TStringField;
    qrMotMOT_TEL_PESS: TStringField;
    qrMotMOT_TEL_COM: TStringField;
    qrMotMOT_PAMCARD: TStringField;
    qrMotMOT_PAMCARD_VIG: TDateTimeField;
    qrMotMOT_ENDERECO_COMPL: TStringField;
    qrMotMOT_ENDERECO_BAIRRO: TStringField;
    qrMotVEIC_ID: TIntegerField;
    qrMotMOT_VEIC_PLACA: TStringField;
    qrMotMOT_VEIC_CIDADE: TStringField;
    qrMotMOT_VEIC_UF_SIGLA: TStringField;
    qrMotMOT_VEIC_MARCA: TStringField;
    qrMotMOT_VEIC_ANO: TStringField;
    qrMotMOT_VEIC_MODELO: TStringField;
    qrMotMOT_VEIC_COR: TStringField;
    qrMotMOT_VEIC_CHASSI: TStringField;
    qrMotMOT_CARRETA_PLACA: TStringField;
    qrMotMOT_CARRETA_CIDADE: TStringField;
    qrMotMOT_CARRETA_UF_SIGLA: TStringField;
    qrMotMOT_CARRETA_MARCA: TStringField;
    qrMotMOT_CARRETA_ANO: TStringField;
    qrMotMOT_CARRETA_MODELO: TStringField;
    qrMotMOT_CARRETA_COR: TStringField;
    qrMotMOT_CARRETA_CHASSI: TStringField;
    qrMotMOT_PAMC_NUM: TStringField;
    qrMotMOT_NUMPIS: TStringField;
    qrMotMOT_CARRETA_COMPR: TFloatField;
    qrMotMOT_CARRETA_LARG: TFloatField;
    qrMotMOT_CARRETA_ALT: TFloatField;
    qrMotMOT_CARRETA_M3: TFloatField;
    qrMotMOT_NEXTEL: TStringField;
    qrMotMOT_EQUIP: TStringField;
    qrManifEMITENTE: TIntegerField;
    qrManifDESTINATARIO: TIntegerField;
    qrClinNBF: TADOQuery;
    qrClinFinal: TADOQuery;
    qrClinNBFCLIN_ID: TAutoIncField;
    qrClinNBFCLIN_PESSOA: TStringField;
    qrClinNBFCLIN_RAZA: TStringField;
    qrClinNBFCLIN_NOME: TStringField;
    qrClinNBFCLIN_CGCCPF: TStringField;
    qrClinNBFCLIN_INSCRG: TStringField;
    qrClinNBFCLIN_ENDERECO: TStringField;
    qrClinNBFCLIN_ENDERECO_COMPL: TStringField;
    qrClinNBFCLIN_ENDERECO_BAIRRO: TStringField;
    qrClinNBFCLIN_MUNICIPIO: TStringField;
    qrClinNBFUF_SIGLA: TStringField;
    qrClinNBFCLIN_CEP: TStringField;
    qrClinNBFCLIN_TEL1: TStringField;
    qrClinNBFCLIN_TEL2: TStringField;
    qrClinNBFCLIN_FAX: TStringField;
    qrClinNBFCLIN_EMAIL: TStringField;
    qrClinNBFCON_CODI: TStringField;
    qrClinNBFCLIN_CONTRATO: TStringField;
    qrClinNBFCLIN_UTIL_COD: TStringField;
    qrClinNBFMUN_ID: TIntegerField;
    qrClinNBFCLIN_WEB: TStringField;
    qrClinNBFCLIN_ENDC: TStringField;
    qrClinNBFCLIN_END_COMPLC: TStringField;
    qrClinNBFCLIN_END_BAIRC: TStringField;
    qrClinNBFCLIN_MUNICC: TStringField;
    qrClinNBFUF_SIGLAC: TStringField;
    qrClinNBFCLIN_CEPC: TStringField;
    qrClinNBFCLIN_TELC: TStringField;
    qrClinNBFCLIN_FAXC: TStringField;
    qrClinNBFCLIN_EMAILC: TStringField;
    qrClinNBFMUN_IDC: TIntegerField;
    qrClinNBFCLIN_TIPOSALDO: TStringField;
    qrClinNBFCLIN_VLRSALDO: TFloatField;
    qrClinNBFCLIN_TPMERC: TStringField;
    qrClinNBFCLIN_LOTE: TStringField;
    qrClinNBFCLIN_ISS: TFloatField;
    qrClinNBFCLIN_DESCONTO: TFloatField;
    qrClinNBFRemanejaSN: TStringField;
    qrClinNBFIBGE_ID: TIntegerField;
    qrClinFinalCLIF_ID: TAutoIncField;
    qrClinFinalCLIF_PESSOA: TStringField;
    qrClinFinalCLIF_RAZA: TStringField;
    qrClinFinalCLIF_NOME: TStringField;
    qrClinFinalCLIF_CGCCPF: TStringField;
    qrClinFinalCLIF_INSCRG: TStringField;
    qrClinFinalCLIF_ENDERECO: TStringField;
    qrClinFinalCLIF_ENDERECO_COMPL: TStringField;
    qrClinFinalCLIF_ENDERECO_BAIRRO: TStringField;
    qrClinFinalCLIF_MUNICIPIO: TStringField;
    qrClinFinalCLIF_MUNICIPIO2: TStringField;
    qrClinFinalUF_SIGLA: TStringField;
    qrClinFinalCLIF_CEP: TStringField;
    qrClinFinalCLIF_TEL1: TStringField;
    qrClinFinalCLIF_TEL2: TStringField;
    qrClinFinalCLIF_FAX: TStringField;
    qrClinFinalCLIF_EMAIL: TStringField;
    qrClinFinalCLIF_CONTATO: TStringField;
    qrClinFinalMUN_ID: TIntegerField;
    qrClinFinalCLIF_CARGAPALLET: TStringField;
    qrClinFinalCLIE_ENDERECO: TStringField;
    qrClinFinalCLIE_ENDERECO_COMPL: TStringField;
    qrClinFinalCLIE_ENDERECO_BAIRRO: TStringField;
    qrClinFinalCLIE_MUNICIPIO: TStringField;
    qrClinFinalCLIE_MUN_ID: TIntegerField;
    qrClinFinalCLIE_UF_SIGLA: TStringField;
    qrClinFinalCLIE_CEP: TStringField;
    qrClinFinalCLI_HORARIO: TStringField;
    qrClinFinalCLI_VL_DESCARGA: TFloatField;
    qrClinFinalCLI_OBS: TStringField;
    qrClinFinalCLI_UNCOBRACA: TStringField;
    qrClinFinalIBGE_ID: TIntegerField;
    qrClinNBFMUN_NOME: TStringField;
    qrClinFinalMUN_NOME: TStringField;
    qrManifMOT_EQUIP: TStringField;
    SaveDialog1: TSaveDialog;
    qrAux: TADOQuery;
    Button4: TButton;
    Button5: TButton;
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure qrManifAfterPost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure GeraExcel;
    procedure Button2Click(Sender: TObject);
    procedure qrManifSEL_EXPORTChange(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExportaManifesto: TfrmExportaManifesto;
  excel,ColumnRange :Variant;
implementation

uses UMenu, UFConsManifesto, U_Funcoes;

{$R *.DFM}

procedure TfrmExportaManifesto.Button3Click(Sender: TObject);
begin
 WITH qrManif do   begin

        Close;

        SQL.Clear;
      if RadioGroup1.ItemIndex = 0 then begin

        SQL.Add(
          '  SELECT  distinct '+
          '  A.SEL_EXPORT, N.NFI_NUMERO NOTA, N.NFI_EMIT_CLI EMITENTE, N.NFI_DEST_CLI DESTINATARIO,'+
          '  A.MANI_ID, '+
          '  A.MANI_DATA, '+
          '  A.MANI_TIPOCARGA, '+
          '  A.VEIC_ID, '+
          '  A.MOT_ID, '+
          '  A.TRANS_ID, '+
          '  C.CLIN_RAZA,  '+
          '  A.CONFIRMA_MANI, '+
          '  A.REG_ID,  '+
          '  A.MANI_VFRETEPAG,   '+
          '  R.REG_NOME,  '+
          '  V.VEIC_NOME,  '+
          '  T.TRANS_RAZA TRANS_FANTASIA,   '+
          '  M.MOT_NOME, A.MOT_EQUIP  '+
          '  FROM MANIFESTO A LEFT OUTER JOIN NF N  '+
          '  ON A.MANI_ID = N.MANI_ID LEFT OUTER JOIN CLIENTENBF C  '+
          '  ON N.NFI_EMIT_CLI = C.CLIN_ID LEFT OUTER JOIN ESTOQUE  '+
          '  ON N.MANI_ID = ESTOQUE.MANI_ID left outer join REGIAO R   '+
          '  ON A.REG_ID = R.REG_ID LEFT OUTER JOIN TPVEICULO V  '+
          '  ON A.VEIC_ID = V.VEIC_ID LEFT OUTER JOIN TRANSPORTADORA T '+
          '  ON A.TRANS_ID = T.TRANS_ID LEFT OUTER JOIN TRANSPORTADORA_MOTORISTA M '+
          '  ON A.MOT_ID = M.MOT_ID WHERE A.MANI_ENT_COL = ''E'' '
        );
     end;

     if RadioGroup1.ItemIndex = 1 then begin
         sql.Add(
            '  SELECT  distinct   '+
            '  A.SEL_EXPORT, N.CNF_NF NOTA, N.CLIF_ID EMITENTE, A.CLIN_ID DESTINATARIO,'+
            '  A.MANI_ID, '+
            '  A.MANI_DATA,  '+
            '  A.MANI_TIPOCARGA, '+
            '  A.VEIC_ID,  '+
            '  A.MOT_ID, '+
            '  A.TRANS_ID,  '+
            '  C.CLIf_RAZA CLIN_RAZA,  '+
            '  A.CONFIRMA_MANI, '+
            '  A.REG_ID,  '+
            '  A.MANI_VFRETEPAG, '+
            '  R.REG_NOME, '+
            '  V.VEIC_NOME, '+
            '  T.TRANS_RAZA TRANS_FANTASIA, '+
            '  M.MOT_NOME, A.MOT_EQUIP '+
            '  FROM MANIFESTO A LEFT OUTER JOIN COLETA_NF N '+
            '  ON A.MANI_ID = N.MANI_ID LEFT OUTER JOIN CLIENTEFINAL C  '+
            '  ON N.CLIF_ID = C.CLIF_ID LEFT OUTER JOIN ESTOQUE '+
            '  ON N.MANI_ID = ESTOQUE.MANI_ID left outer join REGIAO R  '+
            '  ON A.REG_ID = R.REG_ID LEFT OUTER JOIN TPVEICULO V  '+
            '  ON A.VEIC_ID = V.VEIC_ID LEFT OUTER JOIN TRANSPORTADORA T   '+
            '  ON A.TRANS_ID = T.TRANS_ID LEFT OUTER JOIN TRANSPORTADORA_MOTORISTA M   '+
            '  ON A.MOT_ID = M.MOT_ID WHERE A.MANI_ENT_COL = ''C'' '
         );
     end;

       if MaskEdit1.Text <> '  /  /    ' then
              qrManif.SQL.ADD ( 'and convert(Char(10),A.MANI_DATA,112) >= ' +''''+ formatdatetime('YYYYMMDD',StrToDate(MaskEdit1.Text)) + '''') ;
       if MaskEdit2.Text <> '  /  /    ' then
              qrManif.SQL.ADD ( 'and convert(Char(10),A.MANI_DATA,112) <= ' +''''+ formatdatetime('YYYYMMDD',StrToDate(MaskEdit2.Text)) + '''') ;

       if wwDBLookupCombo1.Text <> '' then begin
           qrManif.sql.Add(' and N.NFI_EMIT_CLI = ' + wwDBLookupCombo1.LookupValue);
       end;

       qrManif.sql.Add(' AND ISNULL(A.MOT_EQUIP, '''') <> '''' ');

      qrManif.SQL.Add(' ORDER BY A.MANI_ID DESC ');

      qrManif.Open;
   end;
end;

procedure TfrmExportaManifesto.FormCreate(Sender: TObject);
begin
  qrCliCombo.Open;
  MaskEdit1.Text := FormatDateTime('DD/MM/YYYY', Date);
    MaskEdit2.Text := FormatDateTime('DD/MM/YYYY', Date);
end;

procedure TfrmExportaManifesto.RadioGroup1Click(Sender: TObject);
begin
   if RadioGroup1.ItemIndex = 0 then
        wwDBLookupCombo1.Visible :=True
   else
        wwDBLookupCombo1.Visible := False;

   wwDBLookupCombo1.Text := '';
end;

procedure TfrmExportaManifesto.Button1Click(Sender: TObject);
var F : TStringList;
    linha, aux : string;
    I : Integer;
    PATH: string;
begin

  f := TStringList.Create;
 

  SaveDialog1.Execute;

  if SaveDialog1.FileName = '' then
     Abort;

   //iniciamos a exportação dos dados
  if qrManif.State = dsEdit then
     qrManif.Post;

  qrManif.First;
  while not qrManif.Eof do begin

      if qrManifSEL_EXPORT.AsString = 'S' then begin
            //abrimos as consultas

            linha := '';

            //tipo de manifesto
            if RadioGroup1.ItemIndex = 0 then
               linha := linha + Funcoes.writeString('E', 1) + ' '
            else
               linha := linha + Funcoes.writeString('C', 1) + ' ';

            i := 0;
            i := Pos('/', qrManifNOTA.AsString);
            if i <> 0 then
                aux := Copy(qrManifNOTA.AsString, 0, i-1)
            else
                AUX := qrManifNOTA.AsString;

            //ESCREVEMOS A NOTA FISCAL
            linha := linha + Funcoes.writeString(aux, 10) + ' ';

            //MANIFESTO
            linha := linha + Funcoes.writeInt(qrManifMANI_ID.AsInteger, 8) + ' ';

            //DATA DO MANIFESTO
            linha := linha + Funcoes.writeString(FormatDateTime('DDMMYYYY', qrManifMANI_DATA.Value), 8 ) + ' ';

            //TIPO DE VEICULO
            linha := linha + Funcoes.writeString(qrManifVEIC_NOME.AsString, 40) + ' ';

            //TRANPORTADORA
            linha := linha + Funcoes.writeString(qrManifTRANS_FANTASIA.AsString, 60) + ' ';

            qrMot.Close;
            qrMot.Parameters[0].Value := qrManifMOT_ID.Value;
            qrMot.Open;

            //PLACA DO VEICULO
            linha := linha + Funcoes.writeString(qrMotMOT_VEIC_PLACA.AsString, 8) + ' ';

            //MOTORISTA
            linha := linha + Funcoes.writeString(qrMotMOT_NOME.AsString, 40) + ' ';

            //RG DO MOTORISTA
            linha := linha + Funcoes.writeString(qrMotMOT_RG.AsString, 20) +  ' ';

            //CPF DO MOTORISTA
            linha := linha + Funcoes.writeString(qrMotMOT_CPF.AsString, 11) + ' ';

            //NUMERO DE NEXTEL
            linha := linha + Funcoes.writeString(qrMotMOT_NEXTEL.AsString, 20) + ' ';


            //INFORMAÇÕES EM CASO DE ENTREGA
            if RadioGroup1.ItemIndex = 0 then begin
               qrClinNBF.Close;
               qrClinNBF.Parameters[0].Value := qrManifEMITENTE.AsInteger;
               qrClinNBF.Open;

               qrClinFinal.CLOSE;
               qrClinFinal.Parameters[0].Value := qrManifDESTINATARIO.AsInteger;
               qrClinFinal.Open;

               //EMITENTE
               linha := linha + Funcoes.writeString(qrClinNBFCLIN_RAZA.AsString, 50) + ' ';

               //ENDEREÇO emitente
               linha := linha + Funcoes.writeString(qrClinNBFCLIN_ENDERECO.AsString, 50) + ' ';

               //MUNICIPIO
               linha := linha + Funcoes.writeString(qrClinNBFMUN_NOME.AsString, 50) + ' ';

               //cep
               linha := linha + Funcoes.writeString(qrClinNBFCLIN_CEP.AsString, 8) + ' ';

               //bairro
               linha := linha + Funcoes.writeString(qrClinNBFCLIN_ENDERECO_BAIRRO.AsString, 50) + ' ';

               //raStreador
               linha := linha + Funcoes.writeString(qrManifMOT_EQUIP.AsString, 30) +  ' ';

               //DESTINATARIO
               linha := linha + Funcoes.writeString(qrClinFinalCLIF_RAZA.AsString, 50) + ' ';

               //ENDEREÇO emitente
               linha := linha + Funcoes.writeString(qrClinFinalCLIF_ENDERECO.AsString, 50) + ' ';

               //MUNICIPIO
               linha := linha + Funcoes.writeString(qrClinFinalMUN_NOME.AsString, 50) + ' ';

               //cep
               linha := linha + Funcoes.writeString(qrClinFinalCLIF_CEP.AsString, 8) + ' ';

               //bairro
               linha := linha + Funcoes.writeString(qrClinFinalCLIF_ENDERECO_BAIRRO.AsString, 50) + ' ';


            end;





            if RadioGroup1.ItemIndex = 1 then begin
               qrClinNBF.Close;
               qrClinNBF.Parameters[0].Value := qrManifDESTINATARIO.AsInteger;
               qrClinNBF.Open;

               qrClinFinal.CLOSE;
               qrClinFinal.Parameters[0].Value :=  qrManifEMITENTE.AsInteger;
               qrClinFinal.Open;


               //DESTINATARIO
               linha := linha + Funcoes.writeString(qrClinFinalCLIF_RAZA.AsString, 50) + ' ';

               //ENDEREÇO emitente
               linha := linha + Funcoes.writeString(qrClinFinalCLIF_ENDERECO.AsString, 50) + ' ';

               //MUNICIPIO
               linha := linha + Funcoes.writeString(qrClinFinalMUN_NOME.AsString, 50) + ' ';

               //cep
               linha := linha + Funcoes.writeString(qrClinFinalCLIF_CEP.AsString, 8) + ' ';

               //bairro
               linha := linha + Funcoes.writeString(qrClinFinalCLIF_ENDERECO_BAIRRO.AsString, 50) + ' ';


               //raStreador
               linha := linha + Funcoes.writeString(qrManifMOT_EQUIP.AsString, 30) +  ' ';

               //EMITENTE
               linha := linha + Funcoes.writeString(qrClinNBFCLIN_RAZA.AsString, 50) + ' ';

               //ENDEREÇO emitente
               linha := linha + Funcoes.writeString(qrClinNBFCLIN_ENDERECO.AsString, 50) + ' ';

               //MUNICIPIO
               linha := linha + Funcoes.writeString(qrClinNBFMUN_NOME.AsString, 50) + ' ';

               //cep
               linha := linha + Funcoes.writeString(qrClinNBFCLIN_CEP.AsString, 8) + ' ';

               //bairro
               linha := linha + Funcoes.writeString(qrClinNBFCLIN_ENDERECO_BAIRRO.AsString, 50) + ' ';

            end;


            //BRANCOS
            linha := linha + Funcoes.writeString('', 6);

            F.Add(linha);
            linha := '';


      end;//end if sel_Exporta
      qrManif.Next;
      Application.ProcessMessages;
  end;



  F.SaveToFile(SaveDialog1.FileName);

  FreeAndNil(F);

  ShowMessage('Exportação Efetuada com sucesso!');

end;

procedure TfrmExportaManifesto.qrManifAfterPost(DataSet: TDataSet);
var mani_idx : Integer;
begin
     mani_idx := qrManifMANI_ID.AsInteger;

     qrManif.close;
     qrManif.Open;
     qrManif.Locate('MANI_ID', mani_idx, []);
end;

procedure TfrmExportaManifesto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

   with qrAux do begin
       close;
       sql.Clear;
       sql.Add(
                ' update MANIFESTO SET SEL_EXPORT = ''N'' WHERE (SEL_EXPORT = ''S'') '
       );
       ExecSQL;
   end;

  Action := caFree;
  frmExportaManifesto := nil;
end;

procedure TfrmExportaManifesto.Button4Click(Sender: TObject);
begin
  with qrAux do begin
     CLOSE;
     SQL.Clear;
     SQL.Add('update MANIFESTO SET SEL_EXPORT = ''S'' WHERE MANI_ID IN ');

     if RadioGroup1.ItemIndex = 0 then
     sql.Add(
            ' ( SELECT  '+
            '  A.MANI_ID '+
            '  FROM MANIFESTO A LEFT OUTER JOIN NF N  '+
          '  ON A.MANI_ID = N.MANI_ID LEFT OUTER JOIN CLIENTENBF C  '+
          '  ON N.NFI_EMIT_CLI = C.CLIN_ID LEFT OUTER JOIN ESTOQUE  '+
          '  ON N.MANI_ID = ESTOQUE.MANI_ID left outer join REGIAO R   '+
          '  ON A.REG_ID = R.REG_ID LEFT OUTER JOIN TPVEICULO V  '+
          '  ON A.VEIC_ID = V.VEIC_ID LEFT OUTER JOIN TRANSPORTADORA T '+
          '  ON A.TRANS_ID = T.TRANS_ID LEFT OUTER JOIN TRANSPORTADORA_MOTORISTA M '+
          '  ON A.MOT_ID = M.MOT_ID WHERE A.MANI_ENT_COL = ''E'' '
         )
     else
     sql.Add(
            '  (SELECT   '+
            '  A.MANI_Id '+
            '  FROM MANIFESTO A LEFT OUTER JOIN COLETA_NF N '+
            '  ON A.MANI_ID = N.MANI_ID LEFT OUTER JOIN CLIENTEFINAL C  '+
            '  ON N.CLIF_ID = C.CLIF_ID LEFT OUTER JOIN ESTOQUE '+
            '  ON N.MANI_ID = ESTOQUE.MANI_ID left outer join REGIAO R  '+
            '  ON A.REG_ID = R.REG_ID LEFT OUTER JOIN TPVEICULO V  '+
            '  ON A.VEIC_ID = V.VEIC_ID LEFT OUTER JOIN TRANSPORTADORA T   '+
            '  ON A.TRANS_ID = T.TRANS_ID LEFT OUTER JOIN TRANSPORTADORA_MOTORISTA M   '+
            '  ON A.MOT_ID = M.MOT_ID WHERE A.MANI_ENT_COL = ''C'' '
         );




  //     IF RadioGroup1.ItemIndex = 0 then
  ///      SQL.Add('WHERE A.MANI_ENT_COL = ''E'' ')
   //  else
   //     SQL.Add('WHERE A.MANI_ENT_COL = ''C'' ');

       if MaskEdit1.Text <> '  /  /    ' then
              SQL.ADD ( 'and convert(Char(10),A.MANI_DATA,112) >= ' +''''+ formatdatetime('YYYYMMDD',StrToDate(MaskEdit1.Text)) + '''') ;
       if MaskEdit2.Text <> '  /  /    ' then
              SQL.ADD ( 'and convert(Char(10),A.MANI_DATA,112) <= ' +''''+ formatdatetime('YYYYMMDD',StrToDate(MaskEdit2.Text)) + '''') ;

       if (wwDBLookupCombo1.Text <> '') then begin
           sql.Add(' and N.NFI_EMIT_CLI = ' + wwDBLookupCombo1.LookupValue);
       end;

       sql.Add(' AND ISNULL(A.MOT_EQUIP, '''') <> '''' )');

       ExecSQL;
  end;
  qrManif.CLOSE;
  qrManif.Open;

end;

procedure TfrmExportaManifesto.Button5Click(Sender: TObject);
begin
  with qrAux do begin
     CLOSE;
     SQL.Clear;
     SQL.Add('update MANIFESTO SET SEL_EXPORT = ''N'' WHERE MANI_ID IN ');

     if RadioGroup1.ItemIndex = 0 then
     sql.Add(
            ' ( SELECT  '+
            '  A.MANI_ID '+
            '  FROM MANIFESTO A LEFT OUTER JOIN NF N  '+
          '  ON A.MANI_ID = N.MANI_ID LEFT OUTER JOIN CLIENTENBF C  '+
          '  ON N.NFI_EMIT_CLI = C.CLIN_ID LEFT OUTER JOIN ESTOQUE  '+
          '  ON N.MANI_ID = ESTOQUE.MANI_ID left outer join REGIAO R   '+
          '  ON A.REG_ID = R.REG_ID LEFT OUTER JOIN TPVEICULO V  '+
          '  ON A.VEIC_ID = V.VEIC_ID LEFT OUTER JOIN TRANSPORTADORA T '+
          '  ON A.TRANS_ID = T.TRANS_ID LEFT OUTER JOIN TRANSPORTADORA_MOTORISTA M '+
          '  ON A.MOT_ID = M.MOT_ID WHERE A.MANI_ENT_COL = ''E'' '
         )
     else
     sql.Add(
            ' ( SELECT   '+
            '  A.MANI_Id '+
            '  FROM MANIFESTO A LEFT OUTER JOIN COLETA_NF N '+
            '  ON A.MANI_ID = N.MANI_ID LEFT OUTER JOIN CLIENTEFINAL C  '+
            '  ON N.CLIF_ID = C.CLIF_ID LEFT OUTER JOIN ESTOQUE '+
            '  ON N.MANI_ID = ESTOQUE.MANI_ID left outer join REGIAO R  '+
            '  ON A.REG_ID = R.REG_ID LEFT OUTER JOIN TPVEICULO V  '+
            '  ON A.VEIC_ID = V.VEIC_ID LEFT OUTER JOIN TRANSPORTADORA T   '+
            '  ON A.TRANS_ID = T.TRANS_ID LEFT OUTER JOIN TRANSPORTADORA_MOTORISTA M   '+
            '  ON A.MOT_ID = M.MOT_ID WHERE A.MANI_ENT_COL = ''C'' '
         );




  //     IF RadioGroup1.ItemIndex = 0 then
  ///      SQL.Add('WHERE A.MANI_ENT_COL = ''E'' ')
   //  else
   //     SQL.Add('WHERE A.MANI_ENT_COL = ''C'' ');

       if MaskEdit1.Text <> '  /  /    ' then
              SQL.ADD ( 'and convert(Char(10),A.MANI_DATA,112) >= ' +''''+ formatdatetime('YYYYMMDD',StrToDate(MaskEdit1.Text)) + '''') ;
       if MaskEdit2.Text <> '  /  /    ' then
              SQL.ADD ( 'and convert(Char(10),A.MANI_DATA,112) <= ' +''''+ formatdatetime('YYYYMMDD',StrToDate(MaskEdit2.Text)) + '''') ;

       if wwDBLookupCombo1.Text <> '' then begin
           sql.Add(' and N.NFI_EMIT_CLI = ' + wwDBLookupCombo1.LookupValue);
       end;

       sql.Add(' AND ISNULL(A.MOT_EQUIP, '''') <> '''' )');

       ExecSQL;
  end;
  qrManif.CLOSE;
  qrManif.Open;
end;

procedure TfrmExportaManifesto.GeraExcel;
var linha, I : Integer;
    AUX : string;
begin
//
    Excel := CreateOleObject('excel.application');
    Excel.WorkBooks.Add;
    Excel.Workbooks[1].WorkSheets[1].Name := 'Manifestos';
    ColumnRange := Excel.Workbooks[1].WorkSheets[1].Columns;
    linha := 1;

    Excel.Cells[LINHA,1] := 'TIPO';
    Excel.Cells[LINHA,2] := 'NOTA';
    Excel.Cells[LINHA,3] := 'MANIFESTO';
    Excel.Cells[LINHA,4] := 'DATA';
    Excel.Cells[LINHA,5] := 'VEICULO';
    Excel.Cells[LINHA,6] := 'TRANSPORTADORA';
    Excel.Cells[LINHA,7] := 'PLACA';
    Excel.Cells[LINHA,8] := 'MOTORISTA';
    Excel.Cells[LINHA,9] := 'RG';
    Excel.Cells[LINHA,10] := 'CPF';
    Excel.Cells[LINHA,11] := 'NEXTEL';
    Excel.Cells[LINHA,12] := 'EMITENTE';
    Excel.Cells[LINHA,13] := 'ENDEREÇO EMIT.';
    Excel.Cells[LINHA,14] := 'MUNICIPIO EMIT.';
    Excel.Cells[LINHA,15] := 'CEP EMIT.';
    Excel.Cells[LINHA,16] := 'BAIRRO EMIT.';
    Excel.Cells[LINHA,17] := 'RASTREADOR';
    Excel.Cells[LINHA,18] := 'DESTINATÁRIO';
    Excel.Cells[LINHA,19] := 'ENDEREÇO DEST.';
    Excel.Cells[LINHA,20] := 'MUNICIPIO DEST.';
    Excel.Cells[LINHA,21] := 'CEP DEST.';
    Excel.Cells[LINHA,22] := 'BAIRRO DEST.';

   //iniciamos a exportação dos dados
  if qrManif.State = dsEdit then
     qrManif.Post;

  qrManif.First;
  while not qrManif.Eof do begin

      if qrManifSEL_EXPORT.AsString = 'S' then begin
            //abrimos as consultas

            Inc(linha);

            //tipo de manifesto
            if RadioGroup1.ItemIndex = 0 then
               Excel.Cells[LINHA,1] := 'E'
            else
               Excel.Cells[LINHA,1] := 'C';

            i := 0;
            i := Pos('/', qrManifNOTA.AsString);
            if i <> 0 then
                aux := Copy(qrManifNOTA.AsString, 0, i-1)
            else
                AUX := qrManifNOTA.AsString;

            //ESCREVEMOS A NOTA FISCAL
            Excel.Cells[LINHA,2] := aux;

            //MANIFESTO
            Excel.Cells[LINHA,3] := qrManifMANI_ID.AsInteger;

            //DATA DO MANIFESTO
            Excel.Cells[LINHA,4] := FormatDateTime('DD/MM/YYYY', qrManifMANI_DATA.Value);

            //TIPO DE VEICULO
            Excel.Cells[LINHA,5] := qrManifVEIC_NOME.AsString;

            //TRANPORTADORA
            Excel.Cells[LINHA,6] := qrManifTRANS_FANTASIA.AsString;

            qrMot.Close;
            qrMot.Parameters[0].Value := qrManifMOT_ID.Value;
            qrMot.Open;

            //PLACA DO VEICULO
            Excel.Cells[LINHA,7] := qrMotMOT_VEIC_PLACA.AsString;

            //MOTORISTA
            Excel.Cells[LINHA,8] := qrMotMOT_NOME.AsString;

            //RG DO MOTORISTA
            Excel.Cells[LINHA,9].NumberFormat := '00000';
            Excel.Cells[LINHA,9] := qrMotMOT_RG.AsString;

            //CPF DO MOTORISTA
            Excel.Cells[LINHA,10].NumberFormat := '000.000.000-00';
            Excel.Cells[LINHA,10] := qrMotMOT_CPF.AsString;

            //NUMERO DE NEXTEL
            Excel.Cells[LINHA,11] := qrMotMOT_NEXTEL.AsString;


            //INFORMAÇÕES EM CASO DE ENTREGA
            if RadioGroup1.ItemIndex = 0 then begin
               qrClinNBF.Close;
               qrClinNBF.Parameters[0].Value := qrManifEMITENTE.AsInteger;
               qrClinNBF.Open;

               qrClinFinal.CLOSE;
               qrClinFinal.Parameters[0].Value := qrManifDESTINATARIO.AsInteger;
               qrClinFinal.Open;

               //EMITENTE
               Excel.Cells[LINHA,12] := qrClinNBFCLIN_RAZA.AsString;

               //ENDEREÇO emitente
               Excel.Cells[LINHA,13] := qrClinNBFCLIN_ENDERECO.AsString;

               //MUNICIPIO
               Excel.Cells[LINHA,14] := qrClinNBFMUN_NOME.AsString;

    
    
    
               //cep
               Excel.Cells[LINHA,15].NumberFormat := '00000-00';
               Excel.Cells[LINHA,15] := qrClinNBFCLIN_CEP.AsString;

               //bairro
               Excel.Cells[LINHA,16] := qrClinNBFCLIN_ENDERECO_BAIRRO.AsString;

               //raStreador
               Excel.Cells[LINHA,17] := qrManifMOT_EQUIP.AsString;

               //DESTINATARIO
               Excel.Cells[LINHA,18] := qrClinFinalCLIF_RAZA.AsString;



    
    
    
               //ENDEREÇO emitente
               Excel.Cells[LINHA,19] := qrClinFinalCLIF_ENDERECO.AsString;

               //MUNICIPIO
               Excel.Cells[LINHA,20] := qrClinFinalMUN_NOME.AsString;

               //cep
               Excel.Cells[LINHA,21].NumberFormat := '00000-00';
               Excel.Cells[LINHA,21] := qrClinFinalCLIF_CEP.AsString;

               //bairro
               Excel.Cells[LINHA,22] := qrClinFinalCLIF_ENDERECO_BAIRRO.AsString;


            end;





            if RadioGroup1.ItemIndex = 1 then begin
               qrClinNBF.Close;
               qrClinNBF.Parameters[0].Value := qrManifDESTINATARIO.AsInteger;
               qrClinNBF.Open;

               qrClinFinal.CLOSE;
               qrClinFinal.Parameters[0].Value := qrManifEMITENTE.AsInteger;
               qrClinFinal.Open;

                   
    

    
    
               //DESTINATARIO
               Excel.Cells[LINHA,12] := qrClinFinalCLIF_RAZA.AsString;

               //ENDEREÇO emitente
               Excel.Cells[LINHA,13] := qrClinFinalCLIF_ENDERECO.AsString;

               //MUNICIPIO
               Excel.Cells[LINHA,14] := qrClinFinalMUN_NOME.AsString;

               //cep
               Excel.Cells[LINHA,15] := qrClinFinalCLIF_CEP.AsString;

               //bairro
               Excel.Cells[LINHA,16] := qrClinFinalCLIF_ENDERECO_BAIRRO.AsString;


               //raStreador
               Excel.Cells[LINHA,17] := qrManifMOT_EQUIP.AsString;




               //EMITENTE
               Excel.Cells[LINHA,18] := qrClinNBFCLIN_RAZA.AsString;

               //ENDEREÇO emitente
               Excel.Cells[LINHA,19] := qrClinNBFCLIN_ENDERECO.AsString;

               //MUNICIPIO
               Excel.Cells[LINHA,20] := qrClinNBFMUN_NOME.AsString;

               //cep
               Excel.Cells[LINHA,21] := qrClinNBFCLIN_CEP.AsString;

               //bairro
               Excel.Cells[LINHA,22] := qrClinNBFCLIN_ENDERECO_BAIRRO.AsString;



            end;




      end;//end if sel_Exporta
      qrManif.Next;
      Application.ProcessMessages;
  end;
  Excel.Range['A:Z'].EntireColumn.AutoFit;
  excel.visible := True;

end;

procedure TfrmExportaManifesto.Button2Click(Sender: TObject);
begin
  GeraExcel;
end;

procedure TfrmExportaManifesto.qrManifSEL_EXPORTChange(Sender: TField);
begin
   qrManif.Post;
end;

end.
