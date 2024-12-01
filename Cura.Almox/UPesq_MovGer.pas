unit UPesq_MovGer;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, wwdblook, Mask, Db, Wwdatsrc, DBTables, Wwquery, Buttons,
  ExtCtrls, wwdbedit;

type
  TFPesq_MovGer = class(TForm)
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    GRB_FILT: TGroupBox;
    Label7: TLabel;
    lb1: TLabel;
    EMIS_INI: TMaskEdit;
    EMIS_FIM: TMaskEdit;
    SpeedButton4: TSpeedButton;
    Label2: TLabel;
    Label3: TLabel;
    DBLC_FORN: TwwDBLookupCombo;
    Q_CONT: TwwQuery;
    Q_CONTCON_DESC: TStringField;
    Q_CONTCON_CODI: TStringField;
    Q_CONTCON_ENSA: TStringField;
    Q_CONTCON_OPER: TStringField;
    Q_CONTCON_FLOA: TFloatField;
    Q_CONTCON_FLUX: TStringField;
    Q_CONTCON_CTCO: TStringField;
    Q_SUB: TwwQuery;
    DBE_CCU_DESC: TwwDBEdit;
    Q_SUBSub_ID: TIntegerField;
    Q_SUBDescricao: TStringField;
    Label1: TLabel;
    cboEmp: TwwDBLookupCombo;
    Q_FIL: TwwQuery;
    Q_FILFIL_CODI: TStringField;
    Q_FILFIL_DESC: TStringField;
    Q_CONTDS: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure NCR_FIMEnter(Sender: TObject);
    procedure NCR_FIMExit(Sender: TObject);
    procedure NCR_INIEnter(Sender: TObject);
    procedure NCR_INIExit(Sender: TObject);
    procedure DOC_FIMEnter(Sender: TObject);
    procedure DOC_FIMExit(Sender: TObject);
    procedure DOC_INIEnter(Sender: TObject);
    procedure DOC_INIExit(Sender: TObject);
    procedure LOTE_FIMExit(Sender: TObject);
    procedure LOTE_FIMEnter(Sender: TObject);
    procedure LOTE_INIEnter(Sender: TObject);
    procedure LOTE_INIExit(Sender: TObject);
    procedure cbo_CLIENTE_FIMEnter(Sender: TObject);
    procedure cbo_CLIENTE_FIMExit(Sender: TObject);
    procedure cbo_CLIENTE_INIEnter(Sender: TObject);
    procedure cbo_CLIENTE_INIExit(Sender: TObject);
    procedure cbo_FILIAL_FIMEnter(Sender: TObject);
    procedure cbo_FILIAL_FIMExit(Sender: TObject);
    procedure cbo_FILIAL_INIEnter(Sender: TObject);
    procedure cbo_FILIAL_INIExit(Sender: TObject);
    procedure cbo_CONTA_FIMEnter(Sender: TObject);
    procedure cbo_CONTA_FIMExit(Sender: TObject);
    procedure cbo_CONTA_INIEnter(Sender: TObject);
    procedure cbo_CONTA_INIExit(Sender: TObject);
    procedure cbo_PORTA_FIMEnter(Sender: TObject);
    procedure cbo_PORTA_FIMExit(Sender: TObject);
    procedure cbo_PORTA_INIEnter(Sender: TObject);
    procedure cbo_PORTA_INIExit(Sender: TObject);
    procedure cbo_BANCO_FIMEnter(Sender: TObject);
    procedure cbo_BANCO_FIMExit(Sender: TObject);
    procedure cbo_BANCO_INIEnter(Sender: TObject);
    procedure cbo_BANCO_INIExit(Sender: TObject);
    procedure cbo_TIPOEnter(Sender: TObject);
    procedure cbo_TIPOExit(Sender: TObject);
    procedure cbo_SITUEnter(Sender: TObject);
    procedure cbo_SITUExit(Sender: TObject);
    procedure VENC_FIMEnter(Sender: TObject);
    procedure VENC_FIMExit(Sender: TObject);
    procedure VENC_INIEnter(Sender: TObject);
    procedure VENC_INIExit(Sender: TObject);
    procedure REC_FIMEnter(Sender: TObject);
    procedure REC_FIMExit(Sender: TObject);
    procedure REC_INIEnter(Sender: TObject);
    procedure REC_INIExit(Sender: TObject);
    procedure EMIS_FIMEnter(Sender: TObject);
    procedure EMIS_FIMExit(Sender: TObject);
    procedure EMIS_INIEnter(Sender: TObject);
    procedure EMIS_INIExit(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure DBLC_FORNEnter(Sender: TObject);
    procedure cboSubEnter(Sender: TObject);
    procedure DBLC_FORNExit(Sender: TObject);
    procedure cboSubExit(Sender: TObject);
    procedure DBE_CCU_DESCEnter(Sender: TObject);
    procedure DBE_CCU_DESCExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPesq_MovGer: TFPesq_MovGer;
  NUMEROI   : String ;
  NUMEROF   : String ;
  CLIENTEI  : String ;
  CLIENTEF  : String ;
  CONTAGERENCIALI : String ;
  CONTAGERENCIALF : String ;
  VENCIMENTOI  : TDateTime ;
  VENCIMENTOF  : TDateTime ;
  RECEBIMENTOI : TDateTime ;
  RECEBIMENTOF : TDateTime ;
  EMISSAOI     : TDateTime ;
  EMISSAOF     : TDateTime ;
  BANCOCONTAI : String ;
  BANCOCONTAF : String ;
  DOCUMENTOI  : String ;
  DOCUMENTOF  : String ;
  TIPO  : Integer;
  SITU  : Integer;
  rTipo : Integer;
  FILIALI : String ;
  FILIALF : String ;
  StrFiltro : String ;
  Ordenacao : String ;

  Data1,
  Data2,
  NumDoc,
  ConGer,
  ConSub,
  EmpID,
  TxFiltro :String;



implementation
uses CPPMENU,RelRec,U_RbGerAn,U_RbGerSint,U_RbVencAn,U_RbVencSint,
     U_RbCliAn,U_RbCliSint,U_RbCCUSAn,U_RbCCUSint,U_RbDocAn,U_RbDocSint,
     U_RbDRsint, U_RbDRan, RelRecCR, RelRecCRSint, URelRecebVend,
  URelRecebRepr, FRelRecebVanc, FRelPagtosVenc, URelContasBancarias,
  URelRateios, URelRatEmp, URelRatEmpN, URelRatEmpX, URelRatEmpAp,
  URelRatEmpPag, URelMovGer ;
{$R *.DFM}

procedure TFPesq_MovGer.FormCreate(Sender: TObject);
begin
  Q_CONT.Open;
  Q_SUB.Open;
  Q_FIL.OPEN;



end;

procedure TFPesq_MovGer.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Q_CONT.Close;
  Q_SUB.CLOSE;
  Q_FIL.Close;

  Action := caFree;
end;

procedure TFPesq_MovGer.SpeedButton1Click(Sender: TObject);
begin


   Data1 := '';
   Data2 := '';
   NumDoc := '';
   ConGer := '';
   ConSub := '';
   EmpID := '';
   TxFiltro := '';

   IF (DBLC_FORN.Text <> '') and (DBLC_FORN.LookupValue <> '') THEN
        ConGer:= DBLC_FORN.LookupValue;
   IF DBE_CCU_DESC.Text <> '' THEN
        NumDoc:= DBE_CCU_DESC.Text;
   IF (EMIS_INI.Text <> '  /  /  ') THEN
        DATA1  := formatdatetime('MM/DD/YYYY',strtodate(EMIS_INI.Text)) ;
   IF  (EMIS_FIM.Text <> '  /  /  ') then
        DATA2  := formatdatetime('MM/DD/YYYY',strtodate(EMIS_FIM.Text)) ;
   If (cboEmp.Text <> '') and (cboEmp.LookupValue <>'') then
        EmpID := cboEmp.LookupValue;

   If DBE_CCU_DESC.Text <> '' then
        TxFiltro := TxFiltro + ' - Documento : ' + DBE_CCU_DESC.Text;
   If DBLC_FORN.Text <> '' then
        TxFiltro := TxFiltro + ' - Conta Gerencial : ' + DBLC_FORN.Text;
   If cboEmp.Text <> '' then
        TxFiltro := TxFiltro + ' - Empresa : ' + cboEmp.Text;
   If EMIS_INI.Text <> '  /  /  ' then
        TxFiltro := TxFiltro + ' - Data Ini: ' + EMIS_INI.Text;
   If EMIS_FIM.Text <> '  /  /  ' then
        TxFiltro := TxFiltro + ' - Data Fin: ' + EMIS_FIM.Text;
   If TxFiltro <> '' then
        TxFiltro := ' Filtro(s) :' + TxFiltro;


   Application.Createform(TFRelMovGer, FRelMovGer);
   FRelMovGer.QuickRep1.Preview;
   FRelMovGer.Release;

end;

procedure TFPesq_MovGer.SpeedButton2Click(Sender: TObject);
begin
   Application.Createform(TFRelMovGer, FRelMovGer);
   FRelMovGer.QuickRep1.Print;
   FRelMovGer.Close;

   abort;


end;

procedure TFPesq_MovGer.SpeedButton3Click(Sender: TObject);
begin
   Close;
end;

procedure TFPesq_MovGer.FormKeyPress(Sender: TObject; var Key: Char);
begin
      if key = #13 then
     begin
       key := #0;
       perform(WM_nextdlgctl,0,0);
   end;
end;

procedure TFPesq_MovGer.NCR_FIMEnter(Sender: TObject);
begin
   (Sender as TEdit).Color := ClAqua;
end;

procedure TFPesq_MovGer.NCR_FIMExit(Sender: TObject);
begin
   (Sender as TEdit).Color := Clwindow;
end;

procedure TFPesq_MovGer.NCR_INIEnter(Sender: TObject);
begin
    (Sender as TEdit).Color := ClAqua;
end;

procedure TFPesq_MovGer.NCR_INIExit(Sender: TObject);
begin
    (Sender as TEdit).Color := Clwindow;
end;

procedure TFPesq_MovGer.DOC_FIMEnter(Sender: TObject);
begin
    (Sender as TEdit).Color := ClAqua;
end;

procedure TFPesq_MovGer.DOC_FIMExit(Sender: TObject);
begin
     (Sender as TEdit).Color := Clwindow ;
end;

procedure TFPesq_MovGer.DOC_INIEnter(Sender: TObject);
begin
    (Sender as TEdit).Color := ClAqua;
end;

procedure TFPesq_MovGer.DOC_INIExit(Sender: TObject);
begin
    (Sender as TEdit).Color := Clwindow ;
end;

procedure TFPesq_MovGer.LOTE_FIMExit(Sender: TObject);
begin
     (Sender as TEdit).Color := Clwindow;
end;

procedure TFPesq_MovGer.LOTE_FIMEnter(Sender: TObject);
begin
   (Sender as TEdit).Color := ClAqua;
end;

procedure TFPesq_MovGer.LOTE_INIEnter(Sender: TObject);
begin
   (Sender as TEdit).Color := ClAqua;
end;

procedure TFPesq_MovGer.LOTE_INIExit(Sender: TObject);
begin
   (Sender as TEdit).Color := Clwindow ;
end;

procedure TFPesq_MovGer.cbo_CLIENTE_FIMEnter(Sender: TObject);
begin
   (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFPesq_MovGer.cbo_CLIENTE_FIMExit(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := Clwindow ;
end;

procedure TFPesq_MovGer.cbo_CLIENTE_INIEnter(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFPesq_MovGer.cbo_CLIENTE_INIExit(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := Clwindow ;
end;

procedure TFPesq_MovGer.cbo_FILIAL_FIMEnter(Sender: TObject);
begin
   (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFPesq_MovGer.cbo_FILIAL_FIMExit(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := Clwindow;
end;

procedure TFPesq_MovGer.cbo_FILIAL_INIEnter(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFPesq_MovGer.cbo_FILIAL_INIExit(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := Clwindow;
end;

procedure TFPesq_MovGer.cbo_CONTA_FIMEnter(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFPesq_MovGer.cbo_CONTA_FIMExit(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := Clwindow;
end;

procedure TFPesq_MovGer.cbo_CONTA_INIEnter(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFPesq_MovGer.cbo_CONTA_INIExit(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := Clwindow;
end;

procedure TFPesq_MovGer.cbo_PORTA_FIMEnter(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFPesq_MovGer.cbo_PORTA_FIMExit(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := Clwindow;
end;

procedure TFPesq_MovGer.cbo_PORTA_INIEnter(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFPesq_MovGer.cbo_PORTA_INIExit(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := Clwindow;
end;

procedure TFPesq_MovGer.cbo_BANCO_FIMEnter(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFPesq_MovGer.cbo_BANCO_FIMExit(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := Clwindow;
end;

procedure TFPesq_MovGer.cbo_BANCO_INIEnter(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFPesq_MovGer.cbo_BANCO_INIExit(Sender: TObject);
begin
 (Sender as TwwDBLookupCombo).Color := Clwindow;
end;

procedure TFPesq_MovGer.cbo_TIPOEnter(Sender: TObject);
begin
  (Sender as TCombobox).Color := ClAqua;
end;

procedure TFPesq_MovGer.cbo_TIPOExit(Sender: TObject);
begin
  (Sender as TCombobox).Color := Clwindow;
end;

procedure TFPesq_MovGer.cbo_SITUEnter(Sender: TObject);
begin
  (Sender as TCombobox).Color := ClAqua;
end;

procedure TFPesq_MovGer.cbo_SITUExit(Sender: TObject);
begin
   (Sender as TCombobox).Color := Clwindow ;
end;

procedure TFPesq_MovGer.VENC_FIMEnter(Sender: TObject);
begin
  (Sender as TMaskEdit).Color := ClAqua;
end;

procedure TFPesq_MovGer.VENC_FIMExit(Sender: TObject);
begin
    (Sender as TMaskEdit).Color := Clwindow;
end;

procedure TFPesq_MovGer.VENC_INIEnter(Sender: TObject);
begin
    (Sender as TMaskEdit).Color := ClAqua;
end;

procedure TFPesq_MovGer.VENC_INIExit(Sender: TObject);
begin
    (Sender as TMaskEdit).Color := Clwindow ;
end;

procedure TFPesq_MovGer.REC_FIMEnter(Sender: TObject);
begin
    (Sender as TMaskEdit).Color := ClAqua;
end;

procedure TFPesq_MovGer.REC_FIMExit(Sender: TObject);
begin
    (Sender as TMaskEdit).Color := Clwindow ;
end;

procedure TFPesq_MovGer.REC_INIEnter(Sender: TObject);
begin
    (Sender as TMaskEdit).Color := ClAqua;
end;

procedure TFPesq_MovGer.REC_INIExit(Sender: TObject);
begin
    (Sender as TMaskEdit).Color := Clwindow ;
end;

procedure TFPesq_MovGer.EMIS_FIMEnter(Sender: TObject);
begin
    (Sender as TMaskEdit).Color := ClAqua;
end;

procedure TFPesq_MovGer.EMIS_FIMExit(Sender: TObject);
begin
    (Sender as TMaskEdit).Color := Clwindow ;
end;

procedure TFPesq_MovGer.EMIS_INIEnter(Sender: TObject);
begin
    (Sender as TMaskEdit).Color := ClAqua;
end;

procedure TFPesq_MovGer.EMIS_INIExit(Sender: TObject);
begin
    (Sender as TMaskEdit).Color := Clwindow ;
end;

procedure TFPesq_MovGer.SpeedButton4Click(Sender: TObject);
begin
        DBE_CCU_DESC.Text:= '';
        DBLC_FORN.Text:= '';

        EMIS_INI.Text:= '';
        EMIS_FIM.Text:= '';
        cboEmp.Text := '';
        

end;

procedure TFPesq_MovGer.DBLC_FORNEnter(Sender: TObject);
begin
 (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFPesq_MovGer.cboSubEnter(Sender: TObject);
begin
 (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFPesq_MovGer.DBLC_FORNExit(Sender: TObject);
begin
 (Sender as TwwDBLookupCombo).Color := Clwindow;
end;

procedure TFPesq_MovGer.cboSubExit(Sender: TObject);
begin
 (Sender as TwwDBLookupCombo).Color := Clwindow;
end;

procedure TFPesq_MovGer.DBE_CCU_DESCEnter(Sender: TObject);
begin
  (Sender as TWWDBEdit).Color := ClAqua;
end;

procedure TFPesq_MovGer.DBE_CCU_DESCExit(Sender: TObject);
begin
(Sender as TWWDBEdit).Color := Clwindow ;
end;

end.
