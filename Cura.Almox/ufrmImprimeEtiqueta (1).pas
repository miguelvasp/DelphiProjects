unit ufrmImprimeEtiqueta;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Db, ADODB, Grids, Wwdbigrd, Wwdbgrid, Mask, wwdblook, DBCtrls,
  ExtCtrls;

type
  TfrmImprimeEtiquetas = class(TForm)
    lbREC_ID: TLabel;
    wwDBLookupCombo1: TwwDBLookupCombo;
    wwDBLookupCombo2: TwwDBLookupCombo;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Edit1: TEdit;
    wwDBGrid1: TwwDBGrid;
    Button1: TButton;
    Button2: TButton;
    qrForn: TADOQuery;
    qrFornFOR_CODI: TStringField;
    qrFornFOR_RAZA: TStringField;
    qrMateriais: TADOQuery;
    qrMateriaisMAT_ID: TAutoIncField;
    qrMateriaisMAT_DESC: TStringField;
    qrBusca: TADOQuery;
    DataSource1: TDataSource;
    qrBuscaID: TAutoIncField;
    qrBuscaMAT_ID: TIntegerField;
    qrBuscaN_LOTE: TStringField;
    qrBuscaVALIDADE: TDateTimeField;
    qrBuscaMARCA_ID: TIntegerField;
    qrBuscaFOR_CODI: TStringField;
    qrBuscaQTDE: TIntegerField;
    qrBuscaREC_ID: TIntegerField;
    qrBuscaIMPRESSAO: TStringField;
    qrBuscaQTDE_SEL: TIntegerField;
    qrBuscaREC_NF: TStringField;
    qrBuscaREC_DATA: TDateTimeField;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    qrMatLookup: TADOQuery;
    qrMarca: TADOQuery;
    qrMarcaMARCA_ID: TAutoIncField;
    qrMarcaMARCA_DESC: TStringField;
    qrMatLookupMAT_ID: TAutoIncField;
    qrMatLookupMAT_DESC: TStringField;
    qrBuscaMATERIAL: TStringField;
    qrBuscaMARCA: TStringField;
    qrParametros: TADOQuery;
    qrParametrosParam_ID: TAutoIncField;
    qrParametrosPIS: TFloatField;
    qrParametrosCofins: TFloatField;
    qrParametrosNum_Inv: TIntegerField;
    qrParametrosUsu_Inv: TStringField;
    qrParametrosFor_Codi_Inv: TStringField;
    qrParametrosFoto: TBlobField;
    qrParametrosEmp_Nome: TStringField;
    qrParametrosParam_end: TStringField;
    qrParametrosParam_bairro: TStringField;
    qrParametrosParam_cep: TStringField;
    qrParametrosParam_cidade: TStringField;
    qrParametrosParam_uf: TStringField;
    qrParametrosParam_tel: TStringField;
    qrParametrosParam_site: TStringField;
    qrParametrosVersao: TFloatField;
    qrParametrosZEBRA: TStringField;
    edtLote: TEdit;
    Label6: TLabel;
    Button3: TButton;
    Panel1: TPanel;
    Label7: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label8: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label9: TLabel;
    DBEdit1: TDBEdit;
    Label10: TLabel;
    DBEdit2: TDBEdit;
    Label11: TLabel;
    DBEdit3: TDBEdit;
    Label12: TLabel;
    DBEdit4: TDBEdit;
    Button4: TButton;
    Button5: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    function PreencheZeros(codigo : Integer) : string;
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmImprimeEtiquetas: TfrmImprimeEtiquetas;

implementation

uses UMenu;

{$R *.DFM}

procedure TfrmImprimeEtiquetas.FormCreate(Sender: TObject);
begin
  qrForn.Open;
  qrMateriais.Open;
  qrMarca.Open;
  qrMatLookup.Open;
end;

procedure TfrmImprimeEtiquetas.Button1Click(Sender: TObject);
begin
    with qrBusca do begin
        close;
        sql.Clear;
        sql.Add(
                ' SELECT * FROM CODIGO_BARRAS where 1 = 1'
        );

        if lbREC_ID.Caption <> '0' then begin
             sql.Add(' and REC_ID ='  + lbREC_ID.Caption);
        end else begin
             IF MaskEdit1.Text <> '  /  /    ' then
                sql.Add(' and convert(varchar, REC_DATA, 112) >= ' + QuotedStr(FormatDateTime('yyyyMMdd', StrToDate(MaskEdit1.Text))));

             IF MaskEdit2.Text <> '  /  /    ' then
                sql.Add(' and convert(varchar, REC_DATA, 112) <= ' + QuotedStr(FormatDateTime('yyyyMMdd', StrToDate(MaskEdit2.Text))));

             if wwDBLookupCombo1.Text <> '' then
                sql.Add(' and for_codi = ' + QuotedStr(wwDBLookupCombo1.LookupValue));

             if wwDBLookupCombo2.Text <> '' then
                sql.Add(' and mat_id = ' + wwDBLookupCombo2.LookupValue);

             if edtLote.Text <> '' then
                sql.Add(' and N_LOTE = ' + QuotedStr(edtLote.Text));


        end;
        sql.Add('order by mat_id');
        Open;
    end;
end;

procedure TfrmImprimeEtiquetas.Button2Click(Sender: TObject);
var i, contador : Integer;
    E1, E2, E3, E4, E5, E6, E7, C1, C2, C3, C4, C5, C6, C7, L1, L2, L3, L4, L5, L6, L7 : string;
    Commands : TStringList;
begin

  qrParametros.Open;
  Commands := TStringList.Create;
    qrBusca.First;
    contador := 0;
    while not qrBusca.Eof do begin

         for i := 1 to qrBuscaQTDE_SEL.AsInteger do begin
            Inc(contador);
            if contador = 1 then begin
                E1 := PreencheZeros(qrBuscaID.AsInteger);
                C1 := Copy(qrBuscaMATERIAL.AsString, 1, 26);
                L1 := 'L:' + qrBuscaN_LOTE.AsString + '-' + 'V:' + FormatDateTime('dd/MM/yy', qrBuscaVALIDADE.Value);
            end;
            if contador = 2 then begin
                E2 := PreencheZeros(qrBuscaID.AsInteger);
                C2 := Copy(qrBuscaMATERIAL.AsString, 1, 26);
                L2 := 'L:' + qrBuscaN_LOTE.AsString + '-' + 'V:' + FormatDateTime('dd/MM/yy', qrBuscaVALIDADE.Value);
            end;
            if contador = 3 then begin
                E3 := PreencheZeros(qrBuscaID.AsInteger);
                C3 := Copy(qrBuscaMATERIAL.AsString, 1, 26);
                L3 := 'L:' + qrBuscaN_LOTE.AsString + '-' + 'V:' + FormatDateTime('dd/MM/yy', qrBuscaVALIDADE.Value);
            end;
            if contador = 4 then begin
                E4 := PreencheZeros(qrBuscaID.AsInteger);
                C4 := Copy(qrBuscaMATERIAL.AsString, 1, 26);
                L4 := 'L:' + qrBuscaN_LOTE.AsString + '-' + 'V:' + FormatDateTime('dd/MM/yy', qrBuscaVALIDADE.Value);
            end;
            if contador = 5 then begin
                E5 := PreencheZeros(qrBuscaID.AsInteger);
                C5 := Copy(qrBuscaMATERIAL.AsString, 1, 26);
                L5 := 'L:' + qrBuscaN_LOTE.AsString + '-' + 'V:' + FormatDateTime('dd/MM/yy', qrBuscaVALIDADE.Value);
            end;
            if contador = 6 then begin
                E6 := PreencheZeros(qrBuscaID.AsInteger);
                C6 := Copy(qrBuscaMATERIAL.AsString, 1, 26);
                L6 := 'L:' + qrBuscaN_LOTE.AsString + '-' + 'V:' + FormatDateTime('dd/MM/yy', qrBuscaVALIDADE.Value);
            end;
            if contador = 7 then begin
                E7 := PreencheZeros(qrBuscaID.AsInteger);
                C7 := Copy(qrBuscaMATERIAL.AsString, 1, 26);
                L7 := 'L:' + qrBuscaN_LOTE.AsString + '-' + 'V:' + FormatDateTime('dd/MM/yy', qrBuscaVALIDADE.Value);

                // A cada 7 etiquetas imprimimos e zeramos o contador
                contador := 0;

                //imprimimos
                Commands.Add('N');
                Commands.Add('B5,250,3,1,2,5,64,N,"'+E1+'"');
                Commands.Add('A100,10,1,1,1,1,N,"'+C1+'"');
                Commands.Add('A83,10,1,1,1,1,N,"'+L1+'"');

                //segunda impressao
                Commands.Add('B119,250,3,1,2,5,64,N,"'+E2+'"');
                Commands.Add('A225,10,1,1,1,1,N,"'+C2+'"');
                Commands.Add('A208,10,1,1,1,1,N,"'+L2+'"');

                //terceira impressao
                Commands.Add('B240,250,3,1,2,5,64,N,"'+E3+'"');
                Commands.Add('A345,10,1,1,1,1,N,"'+C3+'"');
                Commands.Add('A328,10,1,1,1,1,N,"'+L3+'"');
                //quarta impressao
                Commands.Add('B364,250,3,1,2,5,64,N,"'+E4+'"');
                Commands.Add('A470,10,1,1,1,1,N,"'+C4+'"');
                Commands.Add('A453,10,1,1,1,1,N,"'+L4+'"');

                //quinta impressao
                Commands.Add('B486,250,3,1,2,5,64,N,"'+E5+'"');
                Commands.Add('A590,10,1,1,1,1,N,"'+C5+'"');
                Commands.Add('A573,10,1,1,1,1,N,"'+L5+'"');

                //sexta impressao
                Commands.Add('B610,250,3,1,2,5,64,N,"'+E6+'"');
                Commands.Add('A705,10,1,1,1,1,N,"'+C6+'"');
                Commands.Add('A688,10,1,1,1,1,N,"'+L6+'"');

                //SETIMA IMPRESSAO
                Commands.Add('B730,250,3,1,2,5,64,N,"'+E7+'"');
                Commands.Add('A830,10,1,1,1,1,N,"'+C7+'"');
                Commands.Add('A813,10,1,1,1,1,N,"'+L7+'"');


                Commands.Add('P1');
               // Commands.SaveToFile('c:\atelier\etiquetaAlmox.txt');
               // Commands.Clear;
                E1 := '';
                E2 := '';
                E3 := '';
                E4 := '';
                E5 := '';
                E6 := '';
                E7 := '';
                C1 := '';
                C2 := '';
                C3 := '';
                C4 := '';
                C5 := '';
                C6 := '';
                C7 := '';


            end;
         end;
        qrBusca.Next;
    end;

    //se sobrou algo imprimirmos na hora.
    if contador > 0 then begin
                Commands.Add('N');
                Commands.Add('B5,250,3,1,2,5,64,N,"'+E1+'"');
                Commands.Add('A100,10,1,1,1,1,N,"'+C1+'"');
                Commands.Add('A83,10,1,1,1,1,N,"'+L1+'"');

                //segunda impressao
                Commands.Add('B119,250,3,1,2,5,64,N,"'+E2+'"');
                Commands.Add('A225,10,1,1,1,1,N,"'+C2+'"');
                Commands.Add('A208,10,1,1,1,1,N,"'+L2+'"');

                //terceira impressao
                Commands.Add('B240,250,3,1,2,5,64,N,"'+E3+'"');
                Commands.Add('A345,10,1,1,1,1,N,"'+C3+'"');
                Commands.Add('A328,10,1,1,1,1,N,"'+L3+'"');
                //quarta impressao
                Commands.Add('B364,250,3,1,2,5,64,N,"'+E4+'"');
                Commands.Add('A470,10,1,1,1,1,N,"'+C4+'"');
                Commands.Add('A453,10,1,1,1,1,N,"'+L4+'"');

                //quinta impressao
                Commands.Add('B486,250,3,1,2,5,64,N,"'+E5+'"');
                Commands.Add('A590,10,1,1,1,1,N,"'+C5+'"');
                Commands.Add('A573,10,1,1,1,1,N,"'+L5+'"');

                //sexta impressao
                Commands.Add('B610,250,3,1,2,5,64,N,"'+E6+'"');
                Commands.Add('A705,10,1,1,1,1,N,"'+C6+'"');
                Commands.Add('A688,10,1,1,1,1,N,"'+L6+'"');

                //SETIMA IMPRESSAO
                Commands.Add('B730,250,3,1,2,5,64,N,"'+E7+'"');
                Commands.Add('A830,10,1,1,1,1,N,"'+C7+'"');
                Commands.Add('A813,10,1,1,1,1,N,"'+L7+'"');


                Commands.Add('P1');

                E1 := '';
                E2 := '';
                E3 := '';
                E4 := '';
                E5 := '';
                E6 := '';
                E7 := '';
                C1 := '';
                C2 := '';
                C3 := '';
                C4 := '';
                C5 := '';
                C6 := '';
                C7 := '';
    end;


    //enviamos mais uma linha para que a etiqueta nao fique pela metade
    Commands.Add('N');
                Commands.Add('B5,250,3,1,2,5,64,N,"'+E1+'"');
                Commands.Add('A100,10,1,1,1,1,N,"'+C1+'"');
                Commands.Add('A83,10,1,1,1,1,N,"'+L1+'"');

                //segunda impressao
                Commands.Add('B119,250,3,1,2,5,64,N,"'+E2+'"');
                Commands.Add('A225,10,1,1,1,1,N,"'+C2+'"');
                Commands.Add('A208,10,1,1,1,1,N,"'+L2+'"');

                //terceira impressao
                Commands.Add('B240,250,3,1,2,5,64,N,"'+E3+'"');
                Commands.Add('A345,10,1,1,1,1,N,"'+C3+'"');
                Commands.Add('A328,10,1,1,1,1,N,"'+L3+'"');
                //quarta impressao
                Commands.Add('B364,250,3,1,2,5,64,N,"'+E4+'"');
                Commands.Add('A470,10,1,1,1,1,N,"'+C4+'"');
                Commands.Add('A453,10,1,1,1,1,N,"'+L4+'"');

                //quinta impressao
                Commands.Add('B486,250,3,1,2,5,64,N,"'+E5+'"');
                Commands.Add('A590,10,1,1,1,1,N,"'+C5+'"');
                Commands.Add('A573,10,1,1,1,1,N,"'+L5+'"');

                //sexta impressao
                Commands.Add('B610,250,3,1,2,5,64,N,"'+E6+'"');
                Commands.Add('A705,10,1,1,1,1,N,"'+C6+'"');
                Commands.Add('A688,10,1,1,1,1,N,"'+L6+'"');

                //SETIMA IMPRESSAO
                Commands.Add('B730,250,3,1,2,5,64,N,"'+E7+'"');
                Commands.Add('A830,10,1,1,1,1,N,"'+C7+'"');
                Commands.Add('A813,10,1,1,1,1,N,"'+L7+'"');


                Commands.Add('P1');




    try
        Commands.SaveToFile(qrParametrosZEBRA.AsString);
        FreeAndNil(Commands);
    except

    end;
end;

function TfrmImprimeEtiquetas.PreencheZeros(codigo: Integer): string;
var aux : string;
    i, isize : Integer;
begin
   aux := IntToStr(codigo);
   isize :=   Length(aux);
   for i := 0 to 10 - isize  do begin
        aux := '0' + aux;
   end;

   Result := aux;
end;

procedure TfrmImprimeEtiquetas.Button4Click(Sender: TObject);
begin
  if qrBusca.State = dsEdit then
  qrBusca.Post;
  Panel1.Visible := False;
end;

procedure TfrmImprimeEtiquetas.Button3Click(Sender: TObject);
begin
  Panel1.Visible := True;
end;

procedure TfrmImprimeEtiquetas.Button5Click(Sender: TObject);
begin
  Panel1.Visible := False;
end;

end.
