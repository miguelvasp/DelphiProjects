unit UTransferencia;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RzPanel, RzTabs, ExtCtrls, StdCtrls, wwdblook, Wwdbdlg, Buttons, Db,
  ADODB, Wwdotdot, Wwdbcomb, Mask, wwdbedit, Grids, Wwdbigrd, Wwdbgrid,
  ImgList, JvExControls, JvComponent, JvAnimatedImage, JvGIFCtrl, jpeg;

type
  TfrmTransferencia = class(TForm)
    pnlTransferencia: TPanel;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    RzGroupBox1: TRzGroupBox;
    RzGroupBox2: TRzGroupBox;
    RzPageControl2: TRzPageControl;
    TabSheet2: TRzTabSheet;
    RzPageControl3: TRzPageControl;
    TabSheet3: TRzTabSheet;
    pnlOptions: TRzPanel;
    Panel1: TPanel;
    qrLocal: TADOQuery;
    qrLocalLocal_id: TAutoIncField;
    qrLocaldescricao: TStringField;
    cboOrigem: TwwDBLookupCombo;
    cboDestino: TwwDBLookupCombo;
    BitBtn1: TBitBtn;
    wwDBGrid2: TwwDBGrid;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    wwDBEdit1: TwwDBEdit;
    Label1: TLabel;
    wwDBEdit2: TwwDBEdit;
    Label2: TLabel;
    cboStatus: TwwDBComboBox;
    Label3: TLabel;
    qryMatLookup: TADOQuery;
    qryMatLookupMAT_ID: TIntegerField;
    qryMatLookupMAT_DESC: TStringField;
    qryTransferencia: TADOQuery;
    qryTransferenciaTRANS_ID: TAutoIncField;
    qryTransferenciaDATA: TDateTimeField;
    qryTransferenciaORIGEM: TIntegerField;
    qryTransferenciaDESTINO: TIntegerField;
    qryTransferenciaSTATUS: TStringField;
    dsTransferencia: TDataSource;
    qryPreparaProdutos: TADOQuery;
    cboMaterial: TwwDBLookupCombo;
    dsDadosOrigem: TDataSource;
    chk1: TCheckBox;
    qryItensSelecionados: TADOQuery;
    qry1: TADOQuery;
    il1: TImageList;
    qryDadosOrigem: TADOQuery;
    qryDadosOrigemMAT_DESC: TStringField;
    qryDadosOrigemQTDE: TFloatField;
    qryDadosOrigemLOTE: TStringField;
    qryDadosOrigemVALIDADE: TDateTimeField;
    qryDadosOrigemQTDE_SOL: TFloatField;
    qryDadosOrigemITEM: TAutoIncField;
    qryDadosOrigemMAT_ID: TIntegerField;
    qryDadosOrigemIMG: TIntegerField;
    wwDBGrid1: TwwDBGrid;
    qryDadosOrigemESTOQUE: TFloatField;
    qrVerificaEstoque: TADOQuery;
    qrVerificaEstoqueQtde: TFloatField;
    qryItensSelecionadosITEM: TAutoIncField;
    qryItensSelecionadosMAT_ID: TIntegerField;
    qryItensSelecionadosMAT_DESC: TStringField;
    qryItensSelecionadosQTDE: TFloatField;
    qryItensSelecionadosLOTE: TStringField;
    qryItensSelecionadosVALIDADE: TDateTimeField;
    qryItensSelecionadosQTDE_SOL: TFloatField;
    qryItensSelecionadosIMG: TIntegerField;
    qryItensSelecionadosESTOQUE: TFloatField;
    pnlAviso: TPanel;
    Panel3: TPanel;
    Image1: TImage;
    JvGIFAnimator1: TJvGIFAnimator;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    STP_ATUAL_ESTOQUE: TADOStoredProc;
    qryItensSelecionadosFOR_CODI: TStringField;
    qryItensSelecionadosMARCA_ID: TIntegerField;
    qrTransItens: TADOQuery;
    qrTransItensTRANS_ID: TIntegerField;
    qrTransItensITEM: TAutoIncField;
    qrTransItensMAT_ID: TIntegerField;
    qrTransItensQTDE: TFloatField;
    qrTransItensLOTE: TStringField;
    qrTransItensFOR_CODI: TStringField;
    qrTransItensMARCA_ID: TIntegerField;
    qrTransItensQTDE_SOL: TFloatField;
    qrTransItensIMG: TIntegerField;
    dsTransItens: TDataSource;
    qrTransItensMAT_DESC: TStringField;
    pnlConsulta: TPanel;
    Panel4: TPanel;
    wwDBGrid3: TwwDBGrid;
    Label7: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    cboBOrigem: TwwDBLookupCombo;
    cboBDestino: TwwDBLookupCombo;
    cboBMaterial: TwwDBLookupCombo;
    Label11: TLabel;
    qrMateriais: TADOQuery;
    qrConsulta: TADOQuery;
    dsConsulta: TDataSource;
    qrConsultaTRANS_ID: TAutoIncField;
    qrConsultaDATA: TDateTimeField;
    qrConsultaMAT_DESC: TStringField;
    qrConsultaQTDE: TFloatField;
    qrConsultaLOTE: TStringField;
    qrConsultaMARCA_DESC: TStringField;
    qrConsultaORIGEM: TStringField;
    qrConsultaDESTINO: TStringField;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Label12: TLabel;
    edtBCodigo: TEdit;
    qrDoc: TADOQuery;
    qrDocTD_ID: TAutoIncField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure cboMaterialCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure qryDadosOrigemBeforePost(DataSet: TDataSet);
    procedure chk1Click(Sender: TObject);
    procedure qryDadosOrigemAfterPost(DataSet: TDataSet);
    procedure BitBtn4Click(Sender: TObject);
    function VerificaEstoque(Material,  Local: Integer; Qtde : Double; Lote : string) : Boolean;
    procedure dsTransferenciaDataChange(Sender: TObject; Field: TField);
    procedure qrTransItensAfterPost(DataSet: TDataSet);
    procedure cboBOrigemExit(Sender: TObject);
    procedure cboBDestinoExit(Sender: TObject);
    procedure cboBMaterialExit(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure MostrarTela(status : Integer);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTransferencia: TfrmTransferencia;

implementation

uses UMenu;

{$R *.DFM}

procedure TfrmTransferencia.FormCreate(Sender: TObject);
begin
  MostrarTela(0);
    qrLocal.Open;
   qrMateriais.Open;
end;

procedure TfrmTransferencia.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        Action := caFree;
        frmTransferencia := nil;
end;

procedure TfrmTransferencia.BitBtn1Click(Sender: TObject);
begin
  if (cboOrigem.Text = '') then
  begin
        MessageBox(Self.Handle, 'Informe o local de origem!', 'Informa��o', MB_ICONWARNING or MB_OK);
        Abort;
  end;

  if (cboDestino.Text = '') then
  begin
        MessageBox(Self.Handle, 'Informe o local de destino!', 'Informa��o', MB_ICONWARNING or MB_OK);
        Abort;
  end;

  if (cboOrigem.LookupValue = cboDestino.LookupValue) then
  begin
        MessageBox(Self.Handle, 'Os locais de origem e destino n�o podem ser iguais', 'Informa��o', MB_ICONWARNING or MB_OK);
        Abort;
  end;

  if qryTransferencia.State in [dsEDit, dsInsert] then
        qryTransferencia.Post;

  RzPageControl1.Enabled := False;




  //preparamos os dados
  qryPreparaProdutos.Parameters[0].Value := FMenu.sqlUsuariosCH.Value;
  qryPreparaProdutos.Parameters[1].Value := StrToInt(cboOrigem.LookupValue);
  qryPreparaProdutos.ExecSQL;

  qryMatLookup.Close;
  qryMatLookup.Open;

  RzPageControl2.Enabled := True;
  RzPageControl3.Enabled := True;
  pnlOptions.Enabled := True;

  cboMaterial.SetFocus;
  cboMaterial.AutoDropDown := True;


end;

procedure TfrmTransferencia.cboMaterialCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
  if qryDadosOrigem.State in [dsEdit, dsInsert] then
        qryDadosOrigem.Post;



  if cboMaterial.LookupValue <> '' then
  begin
        qryDadosOrigem.Close;
        qryDadosOrigem.Parameters[0].Value := StrToInt(cboMaterial.LookupValue);
        qryDadosOrigem.Parameters[1].Value := FMenu.sqlUsuariosCH.Value;
        qryDadosOrigem.Open;
  end;
end;

procedure TfrmTransferencia.wwDBGrid1CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  if Highlight then
        AFont.Style :=  [fsBold]
  else
        AFont.Style := [];
end;

procedure TfrmTransferencia.qryDadosOrigemBeforePost(DataSet: TDataSet);
begin
 { IF qryDadosOrigemESTOQUE.Value < qryDadosOrigemQTDE_SOL.Value then
  begin
      MessageBox(Self.Handle, 'A quantidade a transferir n�o pode ultrapassar a quantidade em estoque.','Informa��o', MB_ICONWARNING or MB_OK);
      Abort;
  end;}
end;

procedure TfrmTransferencia.chk1Click(Sender: TObject);
begin
  IF chk1.Checked then
  begin
    if qryDadosOrigem.State in [dsEdit, dsInsert] then
        qryDadosOrigem.Post;
        qryItensSelecionados.Close;
        qryItensSelecionados.Parameters[0].Value := FMenu.sqlUsuariosCH.Value;
        qryItensSelecionados.Open;
        dsDadosOrigem.DataSet := qryItensSelecionados;
        cboMaterial.Visible := False;
  end
  else
  begin
        dsDadosOrigem.DataSet := qryDadosOrigem;
        cboMaterial.Visible := True;
  end;
end;

procedure TfrmTransferencia.qryDadosOrigemAfterPost(DataSet: TDataSet);
begin
  qryDadosOrigem.Close;
  qryDadosOrigem.Open;
end;

procedure TfrmTransferencia.BitBtn4Click(Sender: TObject);
var EstoqueInsuficiente : Boolean;
DATAI : string;
begin

    qrDoc.Close;
    qrDoc.Parameters[0].Value := 'TR';   //BUSCAR O CODIGO PARA TRANSFERENCIA
    qrDoc.Open;



    try
        pnlTransferencia.Enabled := False;
        pnlAviso.Visible := True;
        Application.ProcessMessages;
        Sleep(3000);
        chk1.Checked := True;
        qryItensSelecionados.First;
        while not qryItensSelecionados.Eof do
        begin
          qryItensSelecionados.Edit;
          if  VerificaEstoque(qryItensSelecionadosMAT_ID.Value, StrToInt(cboOrigem.LookupValue),
              qryItensSelecionadosQTDE_SOL.Value, qryItensSelecionadosLOTE.Value) then
          begin
               qryItensSelecionadosIMG.Value :=  1;
          end
          else
          begin
               qryItensSelecionadosIMG.Value := 0;
               EstoqueInsuficiente := True;
          end;
          qryItensSelecionados.Post;
          Application.ProcessMessages;
          qryItensSelecionados.Next;
        end;



        //se houve altera�ao na quantidade no estoque q impe�a a transferencia ela � abortada
        if EstoqueInsuficiente = True then
        begin
            MessageBox(Self.Handle, PChar('Houve altera��o no estoque, o que impede a transferencia de alguns itens.'+
                                        #13 +  'Os itens que n�o podem ser transferidos est�o marcados com um X'),
                        'Informa��o', MB_OK + MB_ICONWARNING);
            pnlAviso.Visible := False;
            pnlTransferencia.Enabled := True;
            Abort;
        end;

        //iniciamos o processo de atualiza��o de estoques
        FMenu.ADOConnection.BeginTrans;
        qryItensSelecionados.First;
        while not qryItensSelecionados.Eof do
        begin
                //FAZEMOS A BAIXA DO ESTOQUE  de origem
                with STP_ATUAL_ESTOQUE do
                begin
                  Parameters.ParamByName('@N_LOTE').Value :=  qryItensSelecionadosLOTE.Value;
                  Parameters.ParamByName('@QTDE').Value :=  qryItensSelecionadosQTDE_SOL.Value;
                  Parameters.ParamByName('@MAT_ID').Value :=  qryItensSelecionadosMAT_ID.Value;
                  Parameters.ParamByName('@FOR_CODI').Value :=  qryItensSelecionadosFOR_CODI.Value;
                  Parameters.ParamByName('@MOT_ID').Value :=   Null;
                  Parameters.ParamByName('@TIPO').Value :=   'B';
                  Parameters.ParamByName('@USUARIO').Value :=   FMenu.sqlUsuariosNome.Value;
                  Parameters.ParamByName('@TD_ID').Value := qrDocTD_ID.AsString;
                  Parameters.ParamByName('@DOCTO').Value :=   qryTransferenciaTRANS_ID.AsString  ;
                  Parameters.ParamByName('@REC_ITEM_ID').Value :=  null;
                  Parameters.ParamByName('@DATAX').Value :=  null;
                  Parameters.ParamByName('@MARCA_ID').Value :=   qryItensSelecionadosMARCA_ID.Value;

                  DATAI  := formatdatetime('DD-MM-YYYY',qryItensSelecionadosVALIDADE.Value) ;
                  Parameters.ParamByName('@VALID').Value :=  DATAI;
                  Parameters.ParamByName('@LOCAL_ID').Value :=  StrToInt(cboOrigem.LookupValue);
                  ExecProc;
                end;

                //DAMOS ENTRADA
                with STP_ATUAL_ESTOQUE do
                begin
                  Parameters.ParamByName('@N_LOTE').Value :=  qryItensSelecionadosLOTE.Value;
                  Parameters.ParamByName('@QTDE').Value :=  qryItensSelecionadosQTDE_SOL.Value;
                  Parameters.ParamByName('@MAT_ID').Value :=  qryItensSelecionadosMAT_ID.Value;
                  Parameters.ParamByName('@FOR_CODI').Value :=  qryItensSelecionadosFOR_CODI.Value;
                  Parameters.ParamByName('@MOT_ID').Value :=   null;
                  Parameters.ParamByName('@TIPO').Value :=   'E';
                  Parameters.ParamByName('@USUARIO').Value :=   FMenu.sqlUsuariosNome.Value;
                  Parameters.ParamByName('@TD_ID').Value := qrDocTD_ID.AsString;
                  Parameters.ParamByName('@DOCTO').Value :=   qryTransferenciaTRANS_ID.AsString  ;
                  Parameters.ParamByName('@REC_ITEM_ID').Value :=  null;
                  Parameters.ParamByName('@DATAX').Value :=  null;
                  Parameters.ParamByName('@MARCA_ID').Value :=   qryItensSelecionadosMARCA_ID.Value;
                  Parameters.ParamByName('@VALID').Value :=  qryItensSelecionadosVALIDADE.Value;
                  Parameters.ParamByName('@LOCAL_ID').Value :=  StrToInt(cboDestino.LookupValue);
                  ExecProc;
                end;


                //Adicionamos o material nos itens da transferencia
                qrTransItens.Append;
                qrTransItensTRANS_ID.Value := qryTransferenciaTRANS_ID.Value;
                qrTransItensMAT_ID.Value := qryItensSelecionadosMAT_ID.Value;
                qrTransItensQTDE.Value := qryItensSelecionadosQTDE_SOL.Value;
                qrTransItensLOTE.Value := qryItensSelecionadosLOTE.Value;
                qrTransItensFOR_CODI.Value := qryItensSelecionadosFOR_CODI.Value;
                qrTransItensMARCA_ID.Value := qryItensSelecionadosMARCA_ID.Value;
                qrTransItens.Post;



                qryItensSelecionados.next;
                Application.ProcessMessages;
        end;
        FMenu.ADOConnection.CommitTrans;
        pnlAviso.Visible := False;
        pnlTransferencia.Enabled := True;
        MessageBox(Self.Handle, 'Tranfer�ncia efetuada com sucesso!', 'Informa��o', MB_OK + MB_ICONINFORMATION);
        qrConsulta.Close;
        qrConsulta.Open;
        MostrarTela(0);
    except
         on e : Exception do
         begin
               FMenu.ADOConnection.RollbackTrans;
               MessageBox(Self.Handle, PChar('Aconteceu um erro ao efetuar a transferencia.'+  #13 +
                           'Material: ' + qryItensSelecionadosMAT_DESC.Value +     
                          #13 +  'Mensagem de erro: ' + e.Message),
                         'Erro', MB_OK + MB_ICONERROR);
               pnlAviso.Visible := False;
               pnlTransferencia.Enabled := True;
         end;
    end;


end;

function TfrmTransferencia.VerificaEstoque(Material,  Local: Integer;
  Qtde: Double; Lote : string): Boolean;
var EstoqueOk : Boolean;
begin
//
        EstoqueOk := True;

        with qrVerificaEstoque do
        begin
            Close;
            Parameters[0].Value := Local;
            Parameters[1].Value := Material;
            Parameters[2].Value := Lote;
            Open;
        end;

        if qrVerificaEstoqueQtde.Value < Qtde then
                EstoqueOk := False;

        Result := EstoqueOk;

end;

procedure TfrmTransferencia.dsTransferenciaDataChange(Sender: TObject;
  Field: TField);
begin
  qrTransItens.close;
  qrTransItens.Parameters[0].Value := qryTransferenciaTRANS_ID.Value;
  qrTransItens.Open;
end;

procedure TfrmTransferencia.qrTransItensAfterPost(DataSet: TDataSet);
begin
  qrTransItens.Close;
  qrTransItens.Open;
end;

procedure TfrmTransferencia.cboBOrigemExit(Sender: TObject);
begin
  IF (Sender AS TwwDBLookupCombo).Text = '' then
     (Sender AS TwwDBLookupCombo).LookupValue := '';

end;

procedure TfrmTransferencia.cboBDestinoExit(Sender: TObject);
begin
  IF (Sender AS TwwDBLookupCombo).Text = '' then
     (Sender AS TwwDBLookupCombo).LookupValue := '';
end;

procedure TfrmTransferencia.cboBMaterialExit(Sender: TObject);
begin
  IF (Sender AS TwwDBLookupCombo).Text = '' then
     (Sender AS TwwDBLookupCombo).LookupValue := '';
end;

procedure TfrmTransferencia.BitBtn2Click(Sender: TObject);
var d1, d2 : TDateTime;
begin



  try
      if MaskEdit1.Text <> '  /  /    ' then
        d1 := StrToDate(MaskEdit1.Text);

      if MaskEdit2.Text <> '  /  /    ' then
        d2 := StrToDate(MaskEdit2.Text);
  except
      MessageBox(Self.Handle, 'Data inv�lida', 'Informa��o', MB_OK + MB_ICONERROR)  ;
  end;





  


   with qrConsulta do
   begin
       close;
       sql.Clear;
       sql.Add(

            'SELECT '+
            '        TR.TRANS_ID, '+
            '        TR.DATA,  '+
            '        MT.MAT_DESC,  '+
            '        IT.QTDE, '+
            '        IT.LOTE,  '+
            '        MR.MARCA_DESC, '+
            '        (SELECT DESCRICAO FROM LOCAL WHERE LOCAL_ID = TR.ORIGEM) AS ORIGEM, '+
            '        (SELECT DESCRICAO FROM LOCAL WHERE LOCAL_ID = TR.DESTINO) AS DESTINO  '+
            'FROM   '+
            '        TRANSFERENCIA TR INNER JOIN TRANS_ITEM IT ON TR.TRANS_ID = IT.TRANS_ID '+
            '        INNER JOIN MATERIAIS MT ON IT.MAT_ID = MT.MAT_ID  '+
            '        LEFT OUTER JOIN MARCAS MR ON IT.MARCA_ID = MR.MARCA_ID  WHERE 1 = 1');


        IF edtBCodigo.Text <> '' then
                SQL.Add(' AND TR.TRANS_ID = ' + edtBCodigo.Text)
        else
        begin
                if cboBOrigem.Text <> '' then
                        SQL.Add(' AND TR.ORIGEM = ' + cboBOrigem.LookupValue);

                IF cboBDestino.Text <> '' then
                        SQL.Add(' AND TR.DESTINO = ' + cboBDestino.LookupValue);

                IF cboBMaterial.Text <> '' then
                        SQL.Add(' AND IT.MAT_ID = ' + cboBMaterial.LookupValue);

                if MaskEdit1.Text <> '  /  /    ' then
                        sql.Add(' AND CONVERT(CHAR(10), TR.DATA, 112) >= ' + QuotedStr(FormatDateTime('YYYYMMDD', D1)));

                if MaskEdit2.Text <> '  /  /    ' then
                        sql.Add(' AND CONVERT(CHAR(10), TR.DATA, 112) <= ' + QuotedStr(FormatDateTime('YYYYMMDD', D2)));
        end;






       sql.Add(' ORDER BY TR.TRANS_ID DESC, MT.MAT_DESC ASC ');
       Open;
   end;
end;

procedure TfrmTransferencia.MostrarTela(status: Integer);
begin
  if status = 0 then
  begin
      pnlTransferencia.Align := alNone;
      pnlTransferencia.Width := 0;
      pnlConsulta.Align := alClient;
  end
  else
  begin
      pnlConsulta.Align := alNone;
      pnlConsulta.Width := 0;
      pnlTransferencia.Align := alClient;
      RzPageControl2.Enabled := False;
      RzPageControl3.Enabled := False;
      pnlOptions.Enabled := False;
  end;

end;

procedure TfrmTransferencia.BitBtn3Click(Sender: TObject);
begin
    MostrarTela(1);
    qryTransferencia.Open;
    qryTransferencia.Append;
    qryTransferenciaDATA.Value := Date;
    qryTransferenciaSTATUS.Value := 'A';
    qryTransferencia.Post;
    qryTransferencia.Edit;
    qryMatLookup.Close;
    qryDadosOrigem.Close;
    qryItensSelecionados.Close;
end;

end.
