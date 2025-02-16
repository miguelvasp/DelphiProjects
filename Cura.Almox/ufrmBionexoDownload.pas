unit ufrmBionexoDownload;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, Wwdbigrd, Wwdbgrid, RzTabs, Db, Mask, DBCtrls, ADODB,
  ExtCtrls, wwdblook;

type
  TfrmBionexoDownload = class(TForm)
    Panel1: TPanel;
    qrBionexo: TADOQuery;
    qrBionexobioId: TAutoIncField;
    qrBionexodata: TDateTimeField;
    qrBionexousuario: TStringField;
    Button1: TButton;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    TabSheet3: TRzTabSheet;
    Panel2: TPanel;
    Button2: TButton;
    Button3: TButton;
    wwDBGrid1: TwwDBGrid;
    wwDBGrid2: TwwDBGrid;
    Memo1: TMemo;
    OpenDialog1: TOpenDialog;
    qrBionexoItens: TADOQuery;
    qrBionexoItensItem: TAutoIncField;
    qrBionexoItensbioId: TIntegerField;
    qrBionexoItenscnpj: TStringField;
    qrBionexoItensdataEntrega: TDateTimeField;
    qrBionexoItenspgtoBio_id: TIntegerField;
    qrBionexoItenscod_bionexo: TStringField;
    qrBionexoItensqtde: TFloatField;
    qrBionexoItenspreco_unit: TFloatField;
    qrBionexoItenspreco_total: TFloatField;
    qrBionexoItensdataConfirmacao: TDateTimeField;
    qrBionexoItenspedidoCompra: TIntegerField;
    qrBionexoItensdata1: TDateTimeField;
    qrBionexoItensqtde1: TFloatField;
    qrBionexoItensdata2: TDateTimeField;
    qrBionexoItensqtde2: TFloatField;
    qrBionexoItensdata3: TDateTimeField;
    qrBionexoItensqtde3: TFloatField;
    qrBionexoItensdata4: TDateTimeField;
    qrBionexoItensqtde4: TFloatField;
    qrBionexoItensdata5: TDateTimeField;
    qrBionexoItensqtde5: TFloatField;
    qrBionexoItensdata6: TDateTimeField;
    qrBionexoItensqtde6: TFloatField;
    qrBionexoItensdata7: TDateTimeField;
    qrBionexoItensqtde7: TFloatField;
    qrBionexoItensdata8: TDateTimeField;
    qrBionexoItensqtde8: TFloatField;
    qrBionexoItensdata9: TDateTimeField;
    qrBionexoItensqtde9: TFloatField;
    qrBionexoItensdata10: TDateTimeField;
    qrBionexoItensqtde10: TFloatField;
    qrBionexoItensdata11: TDateTimeField;
    qrBionexoItensqtde11: TFloatField;
    qrBionexoItensdata12: TDateTimeField;
    qrBionexoItensqtde12: TFloatField;
    qrBionexoItensdata13: TDateTimeField;
    qrBionexoItensqtde13: TFloatField;
    qrBionexoItensdata14: TDateTimeField;
    qrBionexoItensqtde14: TFloatField;
    qrBionexoItensdata15: TDateTimeField;
    qrBionexoItensqtde15: TFloatField;
    qrBionexoItensdata16: TDateTimeField;
    qrBionexoItensqtde16: TFloatField;
    qrBionexoItensdata17: TDateTimeField;
    qrBionexoItensqtde17: TFloatField;
    qrBionexoItensdata18: TDateTimeField;
    qrBionexoItensqtde18: TFloatField;
    qrBionexoItensdata19: TDateTimeField;
    qrBionexoItensqtde19: TFloatField;
    qrBionexoItensdata20: TDateTimeField;
    qrBionexoItensqtde20: TFloatField;
    qrBionexoItensstatusItem: TStringField;
    qrImportados: TADOQuery;
    qrImportadosMAT_ID: TAutoIncField;
    qrImportadosMAT_DESC: TStringField;
    qrImportadosPGTO: TStringField;
    qrImportadosItem: TAutoIncField;
    qrImportadosbioId: TIntegerField;
    qrImportadoscnpj: TStringField;
    qrImportadosdataEntrega: TDateTimeField;
    qrImportadospgtoBio_id: TIntegerField;
    qrImportadoscod_bionexo: TStringField;
    qrImportadosqtde: TFloatField;
    qrImportadospreco_unit: TFloatField;
    qrImportadospreco_total: TFloatField;
    qrImportadosdataConfirmacao: TDateTimeField;
    qrImportadospedidoCompra: TIntegerField;
    qrImportadosdata1: TDateTimeField;
    qrImportadosqtde1: TFloatField;
    qrImportadosdata2: TDateTimeField;
    qrImportadosqtde2: TFloatField;
    qrImportadosdata3: TDateTimeField;
    qrImportadosqtde3: TFloatField;
    qrImportadosdata4: TDateTimeField;
    qrImportadosqtde4: TFloatField;
    qrImportadosdata5: TDateTimeField;
    qrImportadosqtde5: TFloatField;
    qrImportadosdata6: TDateTimeField;
    qrImportadosqtde6: TFloatField;
    qrImportadosdata7: TDateTimeField;
    qrImportadosqtde7: TFloatField;
    qrImportadosdata8: TDateTimeField;
    qrImportadosqtde8: TFloatField;
    qrImportadosdata9: TDateTimeField;
    qrImportadosqtde9: TFloatField;
    qrImportadosdata10: TDateTimeField;
    qrImportadosqtde10: TFloatField;
    qrImportadosdata11: TDateTimeField;
    qrImportadosqtde11: TFloatField;
    qrImportadosdata12: TDateTimeField;
    qrImportadosqtde12: TFloatField;
    qrImportadosdata13: TDateTimeField;
    qrImportadosqtde13: TFloatField;
    qrImportadosdata14: TDateTimeField;
    qrImportadosqtde14: TFloatField;
    qrImportadosdata15: TDateTimeField;
    qrImportadosqtde15: TFloatField;
    qrImportadosdata16: TDateTimeField;
    qrImportadosqtde16: TFloatField;
    qrImportadosdata17: TDateTimeField;
    qrImportadosqtde17: TFloatField;
    qrImportadosdata18: TDateTimeField;
    qrImportadosqtde18: TFloatField;
    qrImportadosdata19: TDateTimeField;
    qrImportadosqtde19: TFloatField;
    qrImportadosdata20: TDateTimeField;
    qrImportadosqtde20: TFloatField;
    qrImportadosstatusItem: TStringField;
    qrImportadospgtoBio_id_1: TIntegerField;
    qrImportadospgtoBio_desc: TStringField;
    DataSource2: TDataSource;
    qrAuxPedido: TADOQuery;
    qrImportadosFOR_CODI: TStringField;
    qrAuxPedidoItemId: TAutoIncField;
    qrAuxPedidostatusItem: TStringField;
    qrAuxPedidoQtdeTotal: TFloatField;
    qrAux: TADOQuery;
    qrImportadosMARCA_DESC: TStringField;
    pnlFilial: TPanel;
    cboEmpresa: TwwDBLookupCombo;
    qrEmpresa: TADOQuery;
    qrEmpresaFIL_CODI: TStringField;
    qrEmpresaFIL_DESC: TStringField;
    Label4: TLabel;
    Button4: TButton;
    Button5: TButton;
    STP_GERA_OC: TADOStoredProc;
    qrOC: TADOQuery;
    qrOCDT_CADASTRO: TDateTimeField;
    qrOCFOR_CODI: TStringField;
    qrOCDT_ENTREGA: TDateTimeField;
    qrOCDESCRICAO: TStringField;
    qrOCMAT_DESC: TStringField;
    qrOCQtde_Comp: TFloatField;
    qrOCValor: TFloatField;
    DataSource3: TDataSource;
    qrOCORD_ID: TAutoIncField;
    Panel3: TPanel;
    Button6: TButton;
    qrBionexostatus: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure Button2Click(Sender: TObject);
    procedure wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBionexoDownload: TfrmBionexoDownload;
  Erros : Boolean;

implementation

uses UMenu, UOrdCom, PesqOC;

{$R *.DFM}

procedure TfrmBionexoDownload.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Action := caFree;
    frmBionexoDownload := nil;
end;

procedure TfrmBionexoDownload.Button1Click(Sender: TObject);
var i, j : Integer;
    aux : string;
    Dados : TStringList;
    Lista: TStringList;
begin
   Lista := TStringList.Create;
   OpenDialog1.Execute;
   if OpenDialog1.FileName <> '' then begin
     //criamos o registro pai
     
     qrBionexo.Append;
     qrBionexodata.Value := Now;
     qrBionexousuario.Value := FMenu.sqlUsuariosNOME_COMPLETO.AsString;
     qrBionexo.Post;
     Dados := TStringList.Create;
     Dados.LoadFromFile(OpenDialog1.FileName);
     for i :=0 to Dados.Count - 1 do  begin
          aux := Dados[i];
          Lista.Clear;
          ExtractStrings([';'],[' '],PChar(aux),Lista);
          Memo1.Lines := Lista;
         

          //criamos os registros
          qrBionexoItens.Close;
          qrBionexoItens.Open;
          qrBionexoItens.Append;
          qrBionexoItensbioId.Value := qrBionexobioId.AsInteger;
          qrBionexoItenscnpj.Value := Lista[0];
          qrBionexoItensdataEntrega.Value := StrToDate(Lista[1]);
          qrBionexoItenspgtoBio_id.Value := StrToInt(Lista[2]);
          qrBionexoItenscod_bionexo.Value := Lista[3];
          qrBionexoItensqtde.Value := StrToFloat(Lista[4]);
          qrBionexoItenspreco_unit.Value := StrToFloat(Lista[5]);
          qrBionexoItenspreco_total.Value := StrToFloat(Lista[6]);
          qrBionexoItensdataConfirmacao.Value := StrToDate(Lista[7]);
          qrBionexoItenspedidoCompra.Value := StrToInt(Lista[8]);
          qrBionexoItensstatusItem.Value := 'Importado';
          if Lista.Count > 9 then begin
              qrBionexoItensdata1.Value := StrToDate(Lista[9]);
              qrBionexoItensqtde1.Value := StrToFloat(Lista[10]);
          end;
          if Lista.Count > 11 then begin
              qrBionexoItensdata2.Value := StrToDate(Lista[11]);
              qrBionexoItensqtde2.Value := StrToFloat(Lista[12]);
          end;
          if Lista.Count > 13 then begin
              qrBionexoItensdata3.Value := StrToDate(Lista[13]);
              qrBionexoItensqtde3.Value := StrToFloat(Lista[14]);
          end;
          if Lista.Count > 15 then begin
              qrBionexoItensdata4.Value := StrToDate(Lista[15]);
              qrBionexoItensqtde4.Value := StrToFloat(Lista[16]);
          end;
          if Lista.Count > 17 then begin
              qrBionexoItensdata5.Value := StrToDate(Lista[17]);
              qrBionexoItensqtde5.Value := StrToFloat(Lista[18]);
          end;
          if Lista.Count > 19 then begin
              qrBionexoItensdata6.Value := StrToDate(Lista[19]);
              qrBionexoItensqtde6.Value := StrToFloat(Lista[20]);
          end;
          if Lista.Count > 21 then begin
              qrBionexoItensdata7.Value := StrToDate(Lista[21]);
              qrBionexoItensqtde7.Value := StrToFloat(Lista[22]);
          end;
          if Lista.Count > 23 then begin
              qrBionexoItensdata8.Value := StrToDate(Lista[23]);
              qrBionexoItensqtde8.Value := StrToFloat(Lista[24]);
          end;
          if Lista.Count > 25 then begin
              qrBionexoItensdata9.Value := StrToDate(Lista[25]);
              qrBionexoItensqtde9.Value := StrToFloat(Lista[26]);
          end;
          if Lista.Count > 27 then begin
              qrBionexoItensdata10.Value := StrToDate(Lista[27]);
              qrBionexoItensqtde10.Value := StrToFloat(Lista[28]);
          end;
          if Lista.Count > 29 then begin
              qrBionexoItensdata11.Value := StrToDate(Lista[29]);
              qrBionexoItensqtde11.Value := StrToFloat(Lista[30]);
          end;
          if Lista.Count > 31 then begin
              qrBionexoItensdata12.Value := StrToDate(Lista[31]);
              qrBionexoItensqtde12.Value := StrToFloat(Lista[32]);
          end;
          if Lista.Count > 33 then begin
              qrBionexoItensdata13.Value := StrToDate(Lista[33]);
              qrBionexoItensqtde13.Value := StrToFloat(Lista[34]);
          end;
          if Lista.Count > 35 then begin
              qrBionexoItensdata14.Value := StrToDate(Lista[35]);
              qrBionexoItensqtde14.Value := StrToFloat(Lista[36]);
          end;
          if Lista.Count > 37 then begin
              qrBionexoItensdata15.Value := StrToDate(Lista[37]);
              qrBionexoItensqtde15.Value := StrToFloat(Lista[38]);
          end;
          if Lista.Count > 39 then begin
              qrBionexoItensdata16.Value := StrToDate(Lista[39]);
              qrBionexoItensqtde16.Value := StrToFloat(Lista[40]);
          end;
          if Lista.Count > 41 then begin
              qrBionexoItensdata17.Value := StrToDate(Lista[41]);
              qrBionexoItensqtde17.Value := StrToFloat(Lista[42]);
          end;
          if Lista.Count > 43 then begin
              qrBionexoItensdata18.Value := StrToDate(Lista[43]);
              qrBionexoItensqtde18.Value := StrToFloat(Lista[44]);
          end;
          if Lista.Count > 45 then begin
              qrBionexoItensdata19.Value := StrToDate(Lista[45]);
              qrBionexoItensqtde19.Value := StrToFloat(Lista[46]);
          end;
          if Lista.Count > 47 then begin
              qrBionexoItensdata20.Value := StrToDate(Lista[47]);
              qrBionexoItensqtde20.Value := StrToFloat(Lista[48]);
          end;



          qrBionexoItens.Post;
     end;
     qrImportados.Close;
     qrImportados.Parameters[0].Value := qrBionexobioId.AsInteger;
     qrImportados.Open;
     ShowMessage('Leitura efetuada com sucesso');
   end;
end;

procedure TfrmBionexoDownload.DataSource1DataChange(Sender: TObject;
  Field: TField);
begin
qrImportados.Close;
     qrImportados.Parameters[0].Value := qrBionexobioId.AsInteger;
     qrImportados.Open;

     qrOC.Close;
     qrOC.Parameters[0].Value := qrBionexobioId.AsInteger;
     qrOC.Open;

     if qrBionexostatus.AsString <> '' then begin
        Panel2.Visible := False;
     end;

end;

procedure TfrmBionexoDownload.Button2Click(Sender: TObject);
var Avisos : TStringList;
    i : Integer;
begin
   Erros := False;
   Memo1.Lines.Clear;
   Button3.Enabled := False;
   if qrImportados.Active then begin
       qrImportados.First;
       while not qrImportados.Eof do begin
           //valida CNPJ
           if qrImportadosFOR_CODI.AsString = '' then begin
               Memo1.Lines.Add('Material: ' + qrImportadoscod_bionexo.AsString + ' - Fornecedor com CNPJ: ' + qrImportadoscnpj.AsString + ' n�o encontrado');
                Erros := True;
           end;

           //valida condi��o de pagamento
           if qrImportadosPGTO.AsString = '' then begin
               Memo1.Lines.Add('Material: ' + qrImportadoscod_bionexo.AsString + ' - Condi��o de pagamento n�o encontrada: ' + qrImportadospgtoBio_desc.AsString + ' verifique se a condi��o de pagamento bionexo est� vinculada');
               Erros := True;
           end;

           if qrImportadosMAT_ID.AsString = '' then begin
               Memo1.Lines.Add('Material: ' + qrImportadoscod_bionexo.AsString + ' n�o cadastrado');
               Erros := True;
           end;

           //verifica informa��es do pedido
           qrAuxPedido.close;
           qrAuxPedido.Parameters[0].Value := qrImportadospedidoCompra.AsInteger;
           qrAuxPedido.Parameters[1].Value := qrImportadoscod_bionexo.AsString;
           qrAuxPedido.Open;

           if qrAuxPedido.IsEmpty then begin
               Memo1.Lines.Add('Material: ' + qrImportadoscod_bionexo.AsString + ' - Pedido n�o encontrado');
               Erros := True;
           end
           else begin
               if qrAuxPedidostatusItem.Value = 'Atendido' then begin
                   Memo1.Lines.Add('Material: ' + qrImportadoscod_bionexo.AsString + ' - Pedido j� foi atendido');
                   Erros := True;
               end;
               if qrAuxPedidoQtdeTotal.AsFloat < qrImportadosqtde.AsFloat then begin
                   Memo1.Lines.Add('Material: ' + qrImportadoscod_bionexo.AsString + ' - Quantidade superior a quantidade solicitada');
                   Erros := True;
               end;
           end;


//           Memo1.Lines.Add('');
//           Memo1.Lines.Add('');
           qrImportados.next;
       end;
   end;

   if Erros then begin
       RzPageControl1.ActivePageIndex := 2;
       ShowMessage('A valida��o do arquivos apresentou erros');
   end
   else begin
       ShowMessage('Valida��o efetuada com sucesso, n�o foram encontrados erros.');
       Button3.Enabled := True;
   end;

end;

procedure TfrmBionexoDownload.wwDBGrid1CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  if (qrImportadosMAT_ID.AsString = '') or (qrImportadosFOR_CODI.AsString = '' ) or (qrImportadosPGTO.AsString = '') then
      ABrush.Color := clRed;
end;

procedure TfrmBionexoDownload.Button3Click(Sender: TObject);
begin
  pnlFilial.Visible := True;
  qrEmpresa.Close;
  qrEmpresa.Open;
end;

procedure TfrmBionexoDownload.Button4Click(Sender: TObject);
begin
  if cboEmpresa.Text = '' then begin
      ShowMessage('selecione uma empresa');
      Abort;
  end;

  try
  STP_GERA_OC.Parameters.ParamByName('@bioId').Value := qrBionexobioId.AsInteger;
  STP_GERA_OC.Parameters.ParamByName('@usuario').Value := FMenu.sqlUsuariosNome.AsString;
  STP_GERA_OC.Parameters.ParamByName('@ch').Value := FMenu.sqlUsuariosCH.AsInteger;
  STP_GERA_OC.Parameters.ParamByName('@FIL_CODI').Value := cboEmpresa.LookupValue;
  STP_GERA_OC.ExecProc;

  qrOC.Close;
     qrOC.Parameters[0].Value := qrBionexobioId.AsInteger;
     qrOC.Open;

  RzPageControl1.ActivePageIndex := 1;

  qrBionexo.Edit;
  qrBionexostatus.Value := 'O';
  qrBionexo.Post;

  except
      ON E : Exception do begin
          ShowMessage('Aconteceu um erro ao tentar executar a opera��o: ' + e.Message);
      end;
  end;


end;

procedure TfrmBionexoDownload.Button6Click(Sender: TObject);
begin
  IF qrOCORD_ID.AsString <> '' then begin
       ORD_ID := qrOCORD_ID.AsString;
       Application.CreateForm(TFOrdComp, FOrdComp);
       FOrdComp.ShowModal;
       FOrdComp.Release;
       ORD_ID:= '';
   end;
end;

end.
