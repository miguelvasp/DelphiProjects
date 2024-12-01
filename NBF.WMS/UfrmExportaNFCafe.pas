unit UfrmExportaNFCafe;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  JvProgressBar, Buttons, RzTabs, StdCtrls, Mask, RzEdit, wwdblook,
  ComCtrls, Db, DBTables, Wwquery, ExtCtrls;

type
  TfrmExportaNFCafe = class(TForm)
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    btnGerarArquivo: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    dt01: TDateTimePicker;
    dt02: TDateTimePicker;
    Label3: TLabel;
    cboCliente: TwwDBLookupCombo;
    qrCombo: TwwQuery;
    qrAux: TwwQuery;
    rgbNBF: TRadioGroup;
    SaveDialog1: TSaveDialog;
    qrComboCLIF_ID: TAutoIncField;
    qrComboCLIF_RAZA: TStringField;
    qrNotas: TwwQuery;
    qrNotasNFI_NUMERO: TStringField;
    qrNotasNFI_DEST_CLI: TIntegerField;
    qrNotasCLIF_NOME: TStringField;
    qrNotasNFI_DEST_ENDERECO: TStringField;
    qrNotasNFI_DEST_UF_SIGLA: TStringField;
    qrNotasNFI_DEST_BAIRRO: TStringField;
    qrNotasNFI_DEST_CEP: TStringField;
    qrNotasCLIF_CGCCPF: TStringField;
    qrNotasNFI_DEMI: TDateTimeField;
    qrNotasCLIF_MUNICIPIO: TStringField;
    qrNotasNFI_QTDE: TIntegerField;
    qrNotasNFI_REDESPACHO: TStringField;
    qrItens: TwwQuery;
    qrItensNFI_CODI: TIntegerField;
    qrItensPRO_COD: TStringField;
    qrItensPRO_DESC: TStringField;
    qrItensESTQ_LOTE1: TStringField;
    qrItensINF_PESOLIQ: TFloatField;
    qrItensINF_PESO: TFloatField;
    qrItensINF_QTDE: TFloatField;
    qrItensUVEN_NOME: TStringField;
    qrItensINF_TOTA: TFloatField;
    qrNotasNFI_CODI: TAutoIncField;
    Label4: TLabel;
    progressbar: TProgressBar;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnGerarArquivoClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExportaNFCafe: TfrmExportaNFCafe;

implementation

{$R *.DFM}

procedure TfrmExportaNFCafe.FormCreate(Sender: TObject);
begin
  qrCombo.Open;
end;

procedure TfrmExportaNFCafe.FormClose(Sender: TObject;
  var Action: TCloseAction);

begin
qrCombo.close;
end;

procedure TfrmExportaNFCafe.btnGerarArquivoClick(Sender: TObject);
VAR
   arquivo : TStringList;
   L, Aux : string;
   i : Integer;
   Size : Integer;
   NFI_CODI : Integer;
begin
  if cboCliente.Text = '' then
  begin
      MessageBox(Self.Handle, 'É necessário informar o cliente!', 'Erro!', MB_OK + MB_ICONEXCLAMATION);
      Abort;
  end;

  SaveDialog1.FileName := '';
  SaveDialog1.Execute;
  if SaveDialog1.FileName = '' then
     Abort;   


  try
      arquivo := TStringList.Create;
      L := '';

      {===== HEADER ====}

      //tipo de registro
      L := L + '0';


      //CNPJ - 15
      if rgbNBF.ItemIndex =  0 then
         Aux := '02095918000197 '
      else
         Aux := '02095918000359 ';
      l := L + Aux;

      //branco - 4
      l := l + '    ';

      // nome da empresa - 40
      Aux := 'N.B.F. LOGISTICA, ASSESS. TRANSP. E SERV';
      L := L + Aux;

      //DATA
      L := L + FormatDateTime('ddMMyyyy', Date);


      arquivo.Add(L);



      qrNotas.close;
      qrNotas.Params[0].AsInteger := qrComboCLIF_ID.Value;
      qrNotas.Params[1].AsString := FormatDateTime('YYYYMMDD', dt01.DateTime);
      qrNotas.Params[2].AsString := FormatDateTime('YYYYMMDD', dt02.DateTime);
      qrNotas.Open;

      


      qrNotas.Last;
      progressbar.Max := qrNotas.RecordCount;
      progressbar.Position := 0;

      IF  qrNotas.RecordCount = 0 THEN     begin
        MessageBox(Self.Handle, 'Não existem registros com estes parâmetros!', 'Erro', MB_OK + MB_ICONINFORMATION);
        Abort;
      end;

      qrNotas.First;
      while not qrNotas.Eof do
      begin
       NFI_CODI := qrNotasNFI_CODI.Value;
      {===== CLIENTE ====}

            //DESCRIÇÃO
            L := '1';

            //NOTA FISCAL
            Aux := Trim(qrNotasNFI_NUMERO.Value);
            Size := Length(Aux);
            for i := Size to pred(6) do
              Aux := '0' + Aux;
            L := L + Aux;

            //codigo do cliente
            Aux := Trim(qrComboCLIF_ID.AsString);
            Size := Length(Aux);
            for i := Size to pred(7) do
              Aux := '0' + Aux;
            L := L + Aux;

            //NOME DO CLIENTE - 40
            Aux :=  COPY(Trim(qrNotasCLIF_NOME.AsString), 1,40);
            Size := Length(Aux);
            for i := Size to pred(40) do
              Aux := Aux + ' ';
            L := L + Aux;

            //ENDERECO ENTREGA - 40
            Aux :=  COPY(Trim(qrNotasNFI_DEST_ENDERECO.AsString), 1,40);
            Size := Length(Aux);
            for i := Size to pred(40) do
              Aux := Aux + ' ';
            L := L + Aux;

            //MUNICIPIO - 40
            Aux :=  COPY(Trim(qrNotasCLIF_MUNICIPIO.AsString), 1,40);
            Size := Length(Aux);
            for i := Size to pred(40) do
              Aux := Aux + ' ';
            L := L + Aux;

            //UF   - 2
            Aux :=  COPY(Trim(qrNotasNFI_DEST_UF_SIGLA.AsString), 1,2);
            Size := Length(Aux);
            for i := Size to pred(2) do
              Aux := Aux + ' ';
            L := L + Aux;

            //CEP - 8
            Aux :=  COPY(Trim(qrNotasNFI_DEST_CEP.AsString), 1,8);
            Size := Length(Aux);
            for i := Size to pred(8) do
              Aux := Aux + ' ';
            L := L + Aux;

            //CNPJ - 15
            Aux :=  COPY(Trim(qrNotasCLIF_CGCCPF.AsString), 1,14);
            Size := Length(Aux);
            for i := Size to pred(15) do
              Aux :=  ' ' + Aux ;
            L := L + Aux;

            //INSCRICAO DO LOCAL DE ENTREGA
            Aux :=  '';
            Size := Length(Aux);
            for i := Size to pred(20) do
              Aux := Aux + ' ';
            L := L + Aux;

            //CODIGO DO VENDEDOR
            L := L + '000';

            //NOME - TELEFONE
            Aux :=  '';
            Size := Length(Aux);
            for i := Size to pred(38) do
              Aux := Aux + ' ';
            L := L + Aux;

            arquivo.Add(L);

          {===== NOTA ====}
          progressbar.Position := progressbar.Position + 1;

          //tipo
          L := '2';

          //NOTA FISCAL
          Aux := Trim(qrNotasNFI_NUMERO.Value);
          Size := Length(Aux);
          for i := Size to pred(6) do
            Aux := '0' + Aux;
          L := L + Aux;


          //DATA DE EMISSAO
          L := L + FormatDateTime('DDMMYYYY', qrNotasNFI_DEMI.Value);

          //DATA DE ENTREGA
          L := L + FormatDateTime('DDMMYYYY', qrNotasNFI_DEMI.Value);

          //CODIGO DO CLIENTE
          Aux := Trim(qrComboCLIF_ID.AsString);
          Size := Length(Aux);
          for i := Size to pred(7) do
            Aux := '0' + Aux;
          L := L + Aux;

          //QUANTIDADE DE CAIXAS  {VERIFICAR COM ALBERTO}
          Aux := qrNotasNFI_QTDE.AsString;
          Size := Length(Aux);
          for i := Size to pred(5) do
            Aux := '0' + Aux;
          L := L + Aux;

          //UNIDADE DE EMBALAGEM {VERIFICAR COM ALBERTO}
          Aux :=  'KG';
          Size := Length(Aux);
          for i := Size to pred(6) do
            Aux := Aux + ' ';
          L := L + Aux;

          // TRANSPORTADORA {VERIFICAR COM ALBERTO}
          Aux := 'N.B.F. LOGISTICA, ASSESS. TRANSP. E SER';
          Size := Length(Aux);
          for i := Size to pred(40) do
            Aux := Aux + ' ';
          L := L + Aux;

          // TRANSPORTADORA ENDEREÇO {VERIFICAR COM ALBERTO}
          Aux :=  Copy('R. Libero Badaro, 1115 - São Bernardo do campo-SP', 1, 40);
          Size := Length(Aux);
          for i := Size to pred(40) do
            Aux := Aux + ' ';
          L := L + Aux;

          // TRANSPORTADORA MUNICIPIO {VERIFICAR COM ALBERTO}
          Aux :=  'São Bernardo do Campo';
          Size := Length(Aux);
          for i := Size to pred(40) do
            Aux := Aux + ' ';
          L := L + Aux;

          L := L + 'E';

          arquivo.Add(L);

          {===== ITENS DA NOTA ====}

          qrItens.close;
          qrItens.Params[0].AsInteger := NFI_CODI;
          qrItens.Open;
          while Not qrItens.Eof do
          begin
                //TIPO DE REGISTRO
                L := '5';


                //NOTA FISCAL - 6
                Aux := Trim(qrNotasNFI_NUMERO.Value);
                Size := Length(Aux);
                for i := Size to pred(6) do
                  Aux := '0' + Aux;
                L := L + Aux;

                //CODIGO DO PRODUTO   - 10 // alterado p 20 a pedido do alberto
                Aux :=  Copy(Trim(qrItensPRO_COD.Value), 1, 20);
                Size := Length(Aux);
                for i := Size to pred(20) do
                  Aux := Aux + ' ';
                L := L + Aux;

                //DESCRICAO DO PRODUTO - 34
                Aux :=  Copy(Trim(qrItensPRO_DESC.Value), 1, 34);
                Size := Length(Aux);
                for i := Size to pred(34) do
                  Aux := Aux + ' ';
                L := L + Aux;

                //NUMERO DO LOTE
                Aux := Copy(Trim(qrItensESTQ_LOTE1.AsString),1,25);
                Size := Length(Aux);
                for i := Size to pred(25) do
                  Aux := Aux + ' ';
                L := L + Aux;

                //PESO LIQUIDO - 12
                Aux := FormatFloat('000000000000', qrItensINF_PESOLIQ.Value * 1000);
                Size := Length(Aux);
                for i := Size to pred(12) do
                  Aux := '0' + Aux;
                L := L + Aux;

                //PESO BRUTO - 12
                Aux := FormatFloat('000000000000', qrItensINF_PESO.Value * 1000);
                Size := Length(Aux);
                for i := Size to pred(12) do
                  Aux := '0' + Aux;
                L := L + Aux;


                //QUANTIDADE - 6
                Aux := FormatFloat('000000000000', qrItensINF_QTDE.Value * 1000);
                Size := Length(Aux);
                for i := Size to pred(6) do
                  Aux := '0' + Aux;
                L := L + Aux;

                //UNIDADE
                Aux := Copy(Trim(qrItensUVEN_NOME.AsString),1,5);
                Size := Length(Aux);
                for i := Size to pred(5) do
                  Aux := Aux + ' ';
                L := L + Aux;

                //VALOR - 14
                Aux := FormatFloat('00000000000000', qrItensINF_TOTA.Value * 100);
                Size := Length(Aux);
                for i := Size to pred(14) do
                  Aux := '0' + Aux;
                L := L + Aux;

                //ZEROS
                Aux := '00000000000000' ;
                L := L + Aux;
                arquivo.Add(L) ;
                qrItens.Next;
          end;


          Application.ProcessMessages;
          qrNotas.Next; //NEXT DO WHILE DA NOTA FISCAL
      end;

      arquivo.SaveToFile(SaveDialog1.FileName);
      if FileExists(SaveDialog1.FileName) then
        MessageBox(Self.Handle, 'Arquivo gerado com sucesso', 'Informação', MB_OK + MB_ICONINFORMATION);
      progressbar.Position := 0;
  finally
      FreeAndNil(arquivo);
  end;


end;





end.
