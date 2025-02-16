unit ufrmNFe;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Db, Mask, DBCtrls, ADODB, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls,
  wwdblook, Buttons;

type
  TfrmNFe = class(TForm)
    GroupBox1: TGroupBox;
    qrNFe: TADOQuery;
    qrNFeIdNFe: TAutoIncField;
    qrNFeIdEmitente: TIntegerField;
    qrNFeAmbiente: TIntegerField;
    qrNFecDV: TIntegerField;
    qrNFeide_cUF: TIntegerField;
    qrNFeide_natOp: TStringField;
    qrNFeide_indPag: TIntegerField;
    qrNFeide_mode: TIntegerField;
    qrNFeide_serie: TStringField;
    qrNFeide_nNF: TIntegerField;
    qrNFeide_dEmi: TDateTimeField;
    qrNFeide_dSaiEnt: TDateTimeField;
    qrNFeide_tpNF: TIntegerField;
    qrNFeide_cMunFG: TIntegerField;
    qrNFeide_tpImp: TIntegerField;
    qrNFeide_finNFe: TIntegerField;
    qrNFeide_tpEmis: TIntegerField;
    qrNFeide_procEmi: TIntegerField;
    qrNFeide_verProc: TStringField;
    qrNFeide_NFref: TStringField;
    qrNFeide_CondPagDesc: TStringField;
    qrNFeide_indFinal: TIntegerField;
    qrNFeide_indPres: TIntegerField;
    qrNFeide_cNF: TIntegerField;
    qrNFeemi_CNPJ: TStringField;
    qrNFeemi_CPF: TStringField;
    qrNFeemi_xNome: TStringField;
    qrNFeemi_xFant: TStringField;
    qrNFeemi_IE: TStringField;
    qrNFeemi_xLgr: TStringField;
    qrNFeemi_nro: TStringField;
    qrNFeemi_xCpl: TStringField;
    qrNFeemi_xBairro: TStringField;
    qrNFeemi_cMun: TStringField;
    qrNFeemi_xMun: TStringField;
    qrNFeemi_UF: TStringField;
    qrNFeemi_CEP: TStringField;
    qrNFeemi_cPais: TStringField;
    qrNFeemi_xPais: TStringField;
    qrNFeemi_Fone: TStringField;
    qrNFeemi_IEST: TStringField;
    qrNFeemi_IM: TStringField;
    qrNFeemi_CNAE: TStringField;
    qrNFeemi_CRT: TStringField;
    qrNFeemi_xContato: TStringField;
    qrNFeemi_xContatoEmail: TStringField;
    qrNFeemi_idCSRT: TStringField;
    qrNFeemi_CSRT: TStringField;
    qrNFeemi_chaveNFe: TStringField;
    qrNFedest_CNPJ: TStringField;
    qrNFedest_CPF: TStringField;
    qrNFedest_xNome: TStringField;
    qrNFedest_xFant: TStringField;
    qrNFedest_xlgr: TStringField;
    qrNFedest_nro: TStringField;
    qrNFedest_xCpl: TStringField;
    qrNFedest_xBairro: TStringField;
    qrNFedest_cMun: TStringField;
    qrNFedest_xMun: TStringField;
    qrNFedest_UF: TStringField;
    qrNFedest_CEP: TStringField;
    qrNFedest_cPais: TStringField;
    qrNFedest_xPais: TStringField;
    qrNFedest_fone: TStringField;
    qrNFedest_IE: TStringField;
    qrNFedest_IESUF: TStringField;
    qrNFedest_email: TStringField;
    qrNFedest_indIEDest: TStringField;
    qrNFedest_IdExtrangeiro: TStringField;
    qrNFetot_vBC: TBCDField;
    qrNFetot_vICMS: TBCDField;
    qrNFetot_vBCST: TBCDField;
    qrNFetot_vST: TBCDField;
    qrNFetot_vProd: TBCDField;
    qrNFetot_vFrete: TBCDField;
    qrNFetot_vSeg: TBCDField;
    qrNFetot_vDesc: TBCDField;
    qrNFetot_vII: TBCDField;
    qrNFetot_vIPI: TBCDField;
    qrNFetot_vPIS: TBCDField;
    qrNFetot_vCOFINS: TBCDField;
    qrNFetot_vOutro: TBCDField;
    qrNFetot_vNF: TBCDField;
    qrNFetot_vTotTrib: TBCDField;
    qrNFetot_vICMSDeson: TBCDField;
    qrNFetot_vICMSUFDest_Opc: TBCDField;
    qrNFetot_vICMSUFRemet: TBCDField;
    qrNFetot_vFCPUFDest: TBCDField;
    qrNFetot_vFCP: TBCDField;
    qrNFetot_vFCPST: TBCDField;
    qrNFetot_vFCPSTRet: TBCDField;
    qrNFetot_vIPIDevol: TBCDField;
    qrNFetra_modFrete: TStringField;
    qrNFetra_CNPJ: TStringField;
    qrNFetra_CPF: TStringField;
    qrNFetra_xNome: TStringField;
    qrNFetra_IE: TStringField;
    qrNFetra_xEnder: TStringField;
    qrNFetra_xMun: TStringField;
    qrNFetra_UF: TStringField;
    qrNFeRecibo: TStringField;
    qrNFeProtocolo: TStringField;
    qrNFeDtAutorizacao: TDateTimeField;
    qrNFeMsgRetorno: TMemoField;
    qrNFeNFeStatus: TStringField;
    qrNFeDtCancelamento: TDateTimeField;
    qrNFeJustificativa: TMemoField;
    qrNFeChaveAut: TStringField;
    qrNFeProtocoloCancelamento: TStringField;
    qrNFeveic_Placa: TStringField;
    qrNFeveic_UF: TStringField;
    qrNFeveic_RNTC: TStringField;
    qrNFevol_qVol: TBCDField;
    qrNFevol_esp: TStringField;
    qrNFevol_Marca: TStringField;
    qrNFevol_nVol: TStringField;
    qrNFevol_pesoL: TBCDField;
    qrNFevol_pesoB: TBCDField;
    qrNFevol_lacres: TStringField;
    qrNFeinfAdic: TMemoField;
    qrNFeIdExterno: TIntegerField;
    qrNFepag_tPag: TStringField;
    qrNFepag_vPag: TBCDField;
    qrNFeCCeTexto: TStringField;
    qrNFeUFSaidaPais: TStringField;
    qrNFexLocEmbarq: TStringField;
    qrNFeREC_ID: TIntegerField;
    qrNFeFOR_CODI: TStringField;
    qrNFeINFO_OK: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    lbStatus: TLabel;
    qrAux: TADOQuery;
    qrItens: TADOQuery;
    qrItensIdNFeProduto: TAutoIncField;
    qrItensIdNFe: TIntegerField;
    qrItenscProd: TStringField;
    qrItenscEAN: TStringField;
    qrItensxProd: TStringField;
    qrItensNCM: TStringField;
    qrItensCEST: TStringField;
    qrItensCFOP: TStringField;
    qrItensuCom: TStringField;
    qrItensqCom: TBCDField;
    qrItensvUnCom: TBCDField;
    qrItensvProd: TBCDField;
    qrItenscEANTrib: TStringField;
    qrItensuTrib: TStringField;
    qrItensqTrib: TBCDField;
    qrItensvUnTrib: TBCDField;
    qrItensvOutro: TBCDField;
    qrItensindTot: TIntegerField;
    qrItensxPed: TStringField;
    qrItensICMS_origem: TStringField;
    qrItensICMS_CST: TStringField;
    qrItensICMS_modBC: TIntegerField;
    qrItensICMS_redBC: TBCDField;
    qrItensICMS_vBC: TBCDField;
    qrItensICMS_pICMS: TBCDField;
    qrItensICMS_vICMS: TBCDField;
    qrItensICMS_modBCST: TIntegerField;
    qrItensICMS_pMVAST: TBCDField;
    qrItensICMS_pRedBCST: TBCDField;
    qrItensICMS_vBCST: TBCDField;
    qrItensICMS_pST: TBCDField;
    qrItensICMS_vST: TBCDField;
    qrItensICMS_vBCSTRet: TBCDField;
    qrItensICMS_vICMSSTRet: TBCDField;
    qrItensICMS_pCredSN: TBCDField;
    qrItensICMS_vCredICMSSN: TBCDField;
    qrItensIPI_CST: TStringField;
    qrItensIPI_Enq: TStringField;
    qrItensIPI_pIpi: TBCDField;
    qrItensIPI_vIPI: TBCDField;
    qrItensPIS_CST: TStringField;
    qrItensPIS_pPis: TBCDField;
    qrItensPIS_vPis: TBCDField;
    qrItensCOFINS_CST: TStringField;
    qrItensCOFINS_pCofins: TBCDField;
    qrItensCOFINS_vCofins: TBCDField;
    qrItensinfAdic: TMemoField;
    qrItensvFrete: TBCDField;
    qrItensvSeg: TBCDField;
    qrItensvDesc: TBCDField;
    qrItensIPI_vBC: TBCDField;
    qrItensPIS_vBC: TBCDField;
    qrItensCOFINS_vBC: TBCDField;
    qrItenspis_qBCProd: TBCDField;
    qrItenspis_vAliqProd: TBCDField;
    qrItenscofins_qBCProd: TBCDField;
    qrItenscofins_vAliqProd: TBCDField;
    qrItensipi_CNPJProd: TStringField;
    qrItensipi_cSelo: TStringField;
    qrItensipi_qSelo: TBCDField;
    qrItensipi_clEnq: TStringField;
    qrItensipi_qUnid: TBCDField;
    qrItensipi_vUnid: TBCDField;
    qrItensIdExternoItem: TIntegerField;
    qrItensMAT_ID: TIntegerField;
    qrItensMARCA_ID: TIntegerField;
    qrItensORD_ID: TIntegerField;
    qrItensIORD_ID: TIntegerField;
    qrItensCONVERSAO: TFloatField;
    qrItensQTDE_OC: TFloatField;
    qrItensMATMARCA_ID: TIntegerField;
    Panel1: TPanel;
    btnProcesar: TButton;
    Panel2: TPanel;
    wwDBGrid1: TwwDBGrid;
    DataSource2: TDataSource;
    Label3: TLabel;
    cboMaterial: TwwDBLookupCombo;
    Label4: TLabel;
    cboMarca: TwwDBLookupCombo;
    Panel3: TPanel;
    qrMat: TADOQuery;
    qrMatMAT_ID: TAutoIncField;
    qrMatMAT_DESC: TStringField;
    qrMatEAN: TStringField;
    qrMarca: TADOQuery;
    qrMarcaMARCA_ID: TAutoIncField;
    qrMarcaMARCA_DESC: TStringField;
    qrMarcaMATMARCA_CONVERSAO: TFloatField;
    Button2: TButton;
    qrMarcaMATMARCA_ID: TAutoIncField;
    Panel4: TPanel;
    qrItensOK: TADOQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    BCDField1: TBCDField;
    BCDField2: TBCDField;
    BCDField3: TBCDField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    BCDField4: TBCDField;
    BCDField5: TBCDField;
    BCDField6: TBCDField;
    IntegerField1: TIntegerField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    IntegerField2: TIntegerField;
    BCDField7: TBCDField;
    BCDField8: TBCDField;
    BCDField9: TBCDField;
    BCDField10: TBCDField;
    IntegerField3: TIntegerField;
    BCDField11: TBCDField;
    BCDField12: TBCDField;
    BCDField13: TBCDField;
    BCDField14: TBCDField;
    BCDField15: TBCDField;
    BCDField16: TBCDField;
    BCDField17: TBCDField;
    BCDField18: TBCDField;
    BCDField19: TBCDField;
    StringField13: TStringField;
    StringField14: TStringField;
    BCDField20: TBCDField;
    BCDField21: TBCDField;
    StringField15: TStringField;
    BCDField22: TBCDField;
    BCDField23: TBCDField;
    StringField16: TStringField;
    BCDField24: TBCDField;
    BCDField25: TBCDField;
    MemoField1: TMemoField;
    BCDField26: TBCDField;
    BCDField27: TBCDField;
    BCDField28: TBCDField;
    BCDField29: TBCDField;
    BCDField30: TBCDField;
    BCDField31: TBCDField;
    BCDField32: TBCDField;
    BCDField33: TBCDField;
    BCDField34: TBCDField;
    BCDField35: TBCDField;
    StringField17: TStringField;
    StringField18: TStringField;
    BCDField36: TBCDField;
    StringField19: TStringField;
    BCDField37: TBCDField;
    BCDField38: TBCDField;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    IntegerField7: TIntegerField;
    IntegerField8: TIntegerField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    IntegerField9: TIntegerField;
    AutoIncField1: TAutoIncField;
    IntegerField10: TIntegerField;
    wwDBGrid2: TwwDBGrid;
    DataSource3: TDataSource;
    qrItensOKMAT_DESC: TStringField;
    STP_CadastraCodigoXML: TADOStoredProc;
    Panel5: TPanel;
    btnGetMaterial: TBitBtn;
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure Button2Click(Sender: TObject);
    procedure btnProcesarClick(Sender: TObject);
    procedure DataSource2DataChange(Sender: TObject; Field: TField);
    procedure cboMaterialCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure qrNFeAfterOpen(DataSet: TDataSet);
    procedure wwDBGrid2CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure btnGetMaterialClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNFe: TfrmNFe;
    CLIC : BOOLEAN;
  SQL_MERC : STRING;
  ConsIntRec_ID:String;

implementation

uses UMenu, Fornec, UfrmNFeGerarRecebimento, UReceb, UfrmBuscaMaterial;

{$R *.DFM}

procedure TfrmNFe.DataSource1DataChange(Sender: TObject; Field: TField);
begin
   if qrNFeFOR_CODI.AsString = '' then begin
       lbStatus.Caption := 'Fornecedor n�o localizado!';
       lbStatus.Color := clRed;

   end
   else
   begin
       lbStatus.Caption := 'Fornecedor cadastrado!';
       lbStatus.Color := clBtnFace;
      
   end;




end;

procedure TfrmNFe.Button2Click(Sender: TObject);
var CODIGO, EAN : string;
begin


      if (cboMaterial.Text = '')  and (cboMarca.Text = '') then begin
          ShowMessage('Preencha todos os campos');
          Abort;
      end;

      qrItens.Edit;
      qrItensMAT_ID.Value := qrMatMAT_ID.AsInteger;
      qrItensMARCA_ID.Value := qrMarcaMARCA_ID.AsInteger;
      qrItensCONVERSAO.Value := qrMarcaMATMARCA_CONVERSAO.AsFloat;
      qrItensMATMARCA_ID.Value := qrMarcaMATMARCA_ID.AsInteger;
      qrItens.Post;

      {IF qrItenscEAN.AsString <> 'SEM GTIN' THEN begin
          with qrAux do begin
              Close;
              sql.Clear;
              sql.Add('UPDATE MATERIAIS SET EAN = ' + QuotedStr(qrItenscEAN.AsString) + ' WHERE MAT_ID = ' + qrMatMAT_ID.AsString);
              ExecSQL;
          end;
      end;  }

      with STP_CadastraCodigoXML do begin
          Parameters.ParamByName('@MAT_ID').Value :=  qrMatMAT_ID.AsInteger;
          Parameters.ParamByName('@FOR_CODI').Value := qrNFeFOR_CODI.AsString;
          Parameters.ParamByName('@Codigo').Value := qrItenscProd.AsString;
          IF qrItenscEAN.AsString <> 'SEM GTIN' THEN
                Parameters.ParamByName('@EAN').Value := qrItenscEAN.AsString
          ELSE
                Parameters.ParamByName('@EAN').Value := '';
          ExecProc;
      end;

      {with qrAux do begin
          Close;
          sql.Clear;
          sql.Add('UPDATE MATERIAIS SET CodigoFornecedor = ' + QuotedStr(qrItenscProd.AsString) + ' WHERE MAT_ID = ' + qrMatMAT_ID.AsString);
          ExecSQL;
      end; }

      qrItens.Close;
      qrItens.Open;
      qrItensOK.Close;
      qrItensOK.Parameters[0].Value := qrNFeIdNFe.AsInteger;
      qrItensOK.Open;
      cboMaterial.Text := '';
      cboMarca.Text := '';

end;

procedure TfrmNFe.btnProcesarClick(Sender: TObject);
    var Cond, Local, Filial, sql: string;
begin

  Self.Close;



end;

procedure TfrmNFe.DataSource2DataChange(Sender: TObject; Field: TField);
begin
   if (qrItens.RecordCount = 0) and (qrNFeFOR_CODI.AsString <> '') then begin
       btnProcesar.Enabled := True;
   end
   else
   begin
       btnProcesar.Enabled := false;
   end;

end;

procedure TfrmNFe.cboMaterialCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
    qrMarca.close;
    qrMarca.Parameters[0].Value := qrMatMAT_ID.AsInteger;
    qrMarca.Open;
end;

procedure TfrmNFe.FormCreate(Sender: TObject);
begin
  qrMat.Open;
end;

procedure TfrmNFe.qrNFeAfterOpen(DataSet: TDataSet);
begin
      qrItens.Close;
   qrItens.Parameters[0].Value := qrNFeIdNFe.AsInteger;
   qrItens.Open;

   qrItensOK.Close;
   qrItensOK.Parameters[0].Value := qrNFeIdNFe.AsInteger;
   qrItensOK.Open;
end;

procedure TfrmNFe.wwDBGrid2CalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
   if qritensok.FieldByName('ORD_ID').asstring = '' then
   begin
      ABrush.Color := clRed;
   end;
end;

procedure TfrmNFe.btnGetMaterialClick(Sender: TObject);
begin
    frmBuscaMaterial := tfrmBuscaMaterial.create(Self);
    frmBuscaMaterial.chkConsideraMarca.Checked := False;
    frmBuscaMaterial.showmodal;
    if frmBuscaMaterial.lbSelecao.Caption <> '' then begin
         cboMaterial.LookupValue := frmBuscaMaterial.lbSelecao.Caption;
    end;
    frmBuscaMaterial.lbSelecao.Caption := '';
    FreeAndNil(frmBuscaMaterial);
end;

end.
