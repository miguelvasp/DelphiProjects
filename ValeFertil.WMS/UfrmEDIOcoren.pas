unit UfrmEDIOcoren;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Db, DBTables, Wwquery, Mask,
  wwdblook, Gauges, Wwtable, wwdbedit, Wwdotdot, Wwdbcomb, midas, DBClient,
  DBCGrids, DBCtrls, ExtCtrls, ADODB;

type
  TfrmEDIOcoren = class(TForm)
    GroupBox1: TGroupBox;
    btnNotas: TSpeedButton;
    btnArquivo: TSpeedButton;
    qrOcorrencias: TwwQuery;
    qrOcorrenciasCODIGO: TStringField;
    qrOcorrenciasOCORRENCIA: TStringField;
    dsOcoren: TDataSource;
    Q_PARAMETRO: TwwQuery;
    Q_PARAMETROPAR_RAZA: TStringField;
    Q_PARAMETROPAR_CNPJ: TStringField;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    qrCliente: TwwQuery;
    qrClienteCLIN_RAZA: TStringField;
    qrClienteCLIN_ID: TAutoIncField;
    cboCliente: TwwDBLookupCombo;
    Gauge1: TGauge;
    SaveDialog1: TSaveDialog;
    T_ACEN: TwwTable;
    T_ACENACE_CASC: TIntegerField;
    T_ACENACE_DESC: TStringField;
    T_ACENACE_NOVO: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    UPD_OCOREN: TUpdateSQL;
    qrExecOcoren: TwwQuery;
    wwDBGrid1: TwwDBGrid;
    Q_PARAMETROCONNECTIONSTRING: TStringField;
    qrOcoren: TADOQuery;
    qrOcorenID: TAutoIncField;
    qrOcorenSELE: TStringField;
    qrOcorenNOTA: TStringField;
    qrOcorenCRTC: TStringField;
    qrOcorenEMISSAO: TDateTimeField;
    qrOcorenOBS: TStringField;
    qrOcorenOCORRENCIA: TStringField;
    qrOcorenFILIAL: TStringField;
    qrOcorenTEXTO: TStringField;
    qrOcorenCNPJ: TStringField;
    qrOcorenCH: TIntegerField;
    cboObs: TwwDBComboBox;
    cboOcorrencia: TwwDBLookupCombo;
    qrAux: TwwQuery;
    procedure btnArquivoClick(Sender: TObject);
    function MUDALETR(LETRA: string): string;
    procedure btnNotasClick(Sender: TObject);
    procedure qrOcoren2AfterPost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);

    function ValidaOcoren : Boolean;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEDIOcoren: TfrmEDIOcoren;

implementation

uses U_Funcoes, USenha, UMenu;

{$R *.DFM}

procedure TfrmEDIOcoren.btnArquivoClick(Sender: TObject);
  var linha : string;
  aux : string;
  a , i, iSize: Integer;
  filex : TStringList;
  DATAI , DATAF : TDateTime;
begin
        qrAux.close;
        qrAux.Params[0].AsInteger := FMenu.SqlUsuariosCH.Value;
        qrAux.Open;

        if qrAux.FieldByName('achei').AsInteger = 0 then
        begin
                MessageBox(Self.Handle, 'Não foi selecionado nenhum registro', 'Erro', MB_OK + MB_ICONERROR)  ;
                Abort;
        end;

        if qrOcoren.State in [dsinsert, dsedit] then
                qrOcoren.Post;

        qrOcoren.Close;
        qrOcoren.Connection := FMenu.ADOConnection;
        qrOcoren.SQL.Clear;
        qrOcoren.SQL.Add('SELECT * FROM OCOREN WHERE sele = ''S'' and CH = ' + FMENU.SQLUSUARIOSCH.AsString) ;
        qrOcoren.Open;


         if ValidaOcoren then
         begin
                MessageBox(Self.Handle, 'Existem registros sem o código de ocorrência!', 'Erro', MB_OK + MB_ICONERROR)  ;
                Abort;
         end;

        try
        DATAI := StrToDateTime(MaskEdit1.Text);
        DATAF := StrToDateTime(MaskEdit2.Text);
        except
           on e : EConvertError do
           begin
                MessageBox(Self.Handle, 'Data inválida!', 'Erro', MB_OK + MB_ICONERROR)  ;
           end;
         end;

         SaveDialog1.Execute;

         if SaveDialog1.FileName = '' then
         Abort;


        FILEX := TStringList.Create;
        try
             {******   Registro 000   ******}
             linha := '';



             //Identificador de Registro
             linha := '000';

             if T_ACEN.Active = False
             then T_ACEN.Active := True;

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

             //   qrOcoren.CLOSE;
              //  qrOcoren.Params[0].AsInteger := StrToInt(cboCliente.LookupValue);
             //   qrOcoren.Params[1].AsString := FormatDateTime('YYYYMMDD', DATAI);
             //   qrOcoren.Params[2].AsString := FormatDateTime('YYYYMMDD', DATAF);
             //   qrOcoren.Open;

                qrOcoren.Last;
                Gauge1.MaxValue := qrOcoren.RecordCount;
                Gauge1.Progress := 0;
                Gauge1.Visible := True;
//                lbProgresso.Visible := True;
                qrOcoren.First;
                while not qrOcoren.Eof do
                begin

                    Gauge1.Progress := Gauge1.Progress + 1;

                    linha := '342';

                    //cnpj
                    aux := Copy(qrOcorenCNPJ.Value,1,14);
                    iSize := Length(aux);
                    for i := iSize to 14 - 1 do
                    begin
                        aux :=  '0' + aux;
                    end;
                    linha := linha + aux;

                    //serie da nota
                    linha := linha + '  1';


                    //numero da nota fiscal, eliminamos a barra da nota
                    a := Pos('/', qrOcorenNOTA.AsString);

                    if a > 0 then
                        aux := Copy(qrOcorenNOTA.AsString,1,a-1)
                    else
                        aux := qrOcorenNOTA.AsString;

                    iSize := Length(aux);

                    for i := iSize to 8 - 1 do
                    begin
                        aux := '0' + aux;
                    end;
                    linha := linha + aux;


                    //codigo de ocorrencia

                    linha := linha + qrOcorenOCORRENCIA.Value;

                    //data

                    linha := linha + FormatDateTime('DDMMYYYY', qrOcorenEMISSAO.Value);

                    //HORA

                    linha := linha + '0000';

                    //CODIGO DE OBSERVAÇAÕ
                    AUX :=  qrOcorenOBS.Value;
                    iSize := Length(aux);
                    FOR I := iSize TO 2 - 1 DO
                    BEGIN
                        AUX := AUX + ' ';
                    end;
                    linha := linha + aux;


                    //TEXTO EM FORMATO LIVRE      + FILLER
                    AUX := qrOcorenTEXTO.Value;
                    iSize := Length(aux);
                    FOR I := iSize TO 70 - 1 DO
                    BEGIN
                        AUX := AUX + ' ';
                    end;
                    linha := linha + aux;

                    linha := linha + '      ';


                    if qrOcorenSELE.Value = 'S' then
                    filex.Add(linha);


                {******  Fim Registro 342   **********}







                

                {******  Registro 343   ******}
                    linha := '';

                    linha := '343';

                    //cgc da empresa contratante
                    aux := Copy(qrOcorenCNPJ.Value,1,14);
                    iSize := Length(aux);
                    for i := iSize to 14 - 1 do
                    begin
                        aux :=  '0' + aux;
                    end;
                    linha := linha + aux;


                    //filial emissora
                    aux := qrOcorenFILIAL.Value;
                    iSize := Length(aux);
                    for i := iSize to 10 - 1 do
                    begin
                        aux :=  aux + ' ';
                    end;
                    linha := linha + aux;


                    //serie do conhecimento
                    aux := 'U';
                    iSize := Length(aux);
                    for i := iSize to 5 - 1 do
                    begin
                        aux :=  aux + ' ';
                    end;
                    linha := linha + aux;

                    //numero do conhecimento
                    aux := qrOcorenCRTC.Value;
                    iSize := Length(aux);
                    for i := iSize to 12 - 1 do
                    begin
                        aux := '0' + aux;
                    end;
                    linha := linha + aux;


                    //filler
                    aux := '';
                    iSize := Length(aux);
                    for i := iSize to 76 - 1 do
                    begin
                        aux :=  aux + ' ';
                    end;
                    linha := linha + aux;

                    if qrOcorenSELE.Value = 'S' then
                    filex.Add(linha);



                {******  Fim Registro 343   ******}
                    qrOcoren.Next;
                    Application.ProcessMessages;

                end; //end while

               filex.SaveToFile(SaveDialog1.FileName);
        finally
            FreeAndNil(filex);
            Gauge1.Progress := 0;
            Gauge1.Visible := False;
        end;



end;

function TfrmEDIOcoren.MUDALETR(LETRA: string): string;
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

procedure TfrmEDIOcoren.btnNotasClick(Sender: TObject);
var
    d1, d2 : tdatetime;
begin

        try
        D1 := StrToDateTime(MaskEdit1.Text);
        D2 := StrToDateTime(MaskEdit2.Text);
        except
           on e : EConvertError do
           begin
                MessageBox(Self.Handle, 'Data inválida!', 'Erro', MB_OK + MB_ICONERROR)  ;
                Abort;
           end;
         end;

         IF cboCliente.Text = '' then
         BEGIN
                MessageBox(Self.Handle, 'Informe o Cliente!', 'Erro', MB_OK + MB_ICONERROR)  ;
                Abort;
         end;

        qrExecOcoren.Params[0].AsString := FormatDateTime('YYYYMMDD', D1);
        qrExecOcoren.Params[1].AsString := FormatDateTime('YYYYMMDD', D2);
        qrExecOcoren.Params[2].AsInteger := StrToInt(cboCliente.LookupValue);
        qrExecOcoren.Params[3].AsInteger := FMENU.SQLUSUARIOSCH.ASINTEGER;
        qrExecOcoren.ExecSQL;



        qrOcoren.Close;
        qrOcoren.Connection := FMenu.ADOConnection;
        qrOcoren.SQL.Clear;
        qrOcoren.SQL.Add('SELECT * FROM OCOREN WHERE CH = ' + FMENU.SQLUSUARIOSCH.AsString) ;
        qrOcoren.Open;
end;

procedure TfrmEDIOcoren.qrOcoren2AfterPost(DataSet: TDataSet);
begin
//   try
//      FSenha.Dtb_BaseDados.ApplyUpdates([qrOcoren]) ;
//   except
//      On E:EdbEngineError do
//      begin
//         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
//         E.Message,MtError,[MbOk],0);
//      end;
//   end;
end;

procedure TfrmEDIOcoren.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  frmEDIOcoren := nil;
end;

procedure TfrmEDIOcoren.FormCreate(Sender: TObject);
begin
        qrOcorrencias.Open;
        qrCliente.Open;
        Q_PARAMETRO.Open;
end;

procedure TfrmEDIOcoren.wwDBGrid1CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
        IF qrOcoren.RecNo mod 2 = 0 then
        BEGIN
            ABrush.Color := clBtnFace;
        end;
end;

function TfrmEDIOcoren.ValidaOcoren : Boolean;
var achei : Boolean;
begin
  achei := False;
  qrOcoren.First;
  while not qrOcoren.Eof do
  begin
        if qrOcorenOCORRENCIA.AsString = '' then
                achei := True;                
        qrOcoren.Next;
  end;
  Result := achei;
end;

end.
