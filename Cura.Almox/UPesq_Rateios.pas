unit UPesq_Rateios;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, wwdblook, Mask, Db, Wwdatsrc, DBTables, Wwquery, Buttons,
  ExtCtrls, wwdbedit;

type
  TFPesq_Rateios = class(TForm)
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    GRB_FILT: TGroupBox;
    Label7: TLabel;
    lb1: TLabel;
    EMIS_INI: TMaskEdit;
    EMIS_FIM: TMaskEdit;
    Bevel1: TBevel;
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
    rdRat: TRadioButton;
    rdRatEmp: TRadioButton;
    Q_SUBSub_ID: TIntegerField;
    Q_SUBDescricao: TStringField;
    Label1: TLabel;
    cboEmp: TwwDBLookupCombo;
    Q_FIL: TwwQuery;
    Q_FILFIL_CODI: TStringField;
    Q_FILFIL_DESC: TStringField;
    rdRatEmpAp: TRadioButton;
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
    procedure rdRatEmpClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPesq_Rateios: TFPesq_Rateios;
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
  URelRatEmpPag ;
{$R *.DFM}

procedure TFPesq_Rateios.FormCreate(Sender: TObject);
begin
  Q_CONT.Open;
  Q_SUB.Open;
  Q_FIL.OPEN;



end;

procedure TFPesq_Rateios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Q_CONT.Close;
  Q_SUB.CLOSE;
  Q_FIL.Close;

  Action := caFree;
end;

procedure TFPesq_Rateios.SpeedButton1Click(Sender: TObject);
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


   If rdRat.Checked then
   Begin
           Application.CreateForm(TFRelRateios, FRelRateios);
           FRelRateios.QuickRep1.Preview;
           FRelRateios.Close;

   End Else If rdRatEmp.Checked then
   Begin
           Application.CreateForm(TFRelRatEmpPag, FRelRatEmpPag);
           FRelRatEmpPag.QuickRep1.Preview;
           FRelRatEmpPag.Close;

   End Else Begin
           Application.CreateForm(TFRelRatEmpAp, FRelRatEmpAp);
           FRelRatEmpAp.QuickRep1.Preview;
           FRelRatEmpAp.Close;


   End;

end;

procedure TFPesq_Rateios.SpeedButton2Click(Sender: TObject);
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


   If rdRat.Checked then
   Begin
           Application.CreateForm(TFRelRateios, FRelRateios);
           FRelRateios.QuickRep1.Print;
           FRelRateios.Close;
           abort;
   End Else If rdRatEmp.Checked then
   Begin
           Application.CreateForm(TFRelRatEmpPag, FRelRatEmpPag);
           FRelRatEmpPag.QuickRep1.Print;
           FRelRatEmpPag.Close;

           abort;
   End Else Begin
           Application.CreateForm(TFRelRatEmpAp, FRelRatEmpAp);
           FRelRatEmpAp.QuickRep1.Print;
           FRelRatEmpAp.Close;
           abort;

   End;



end;

procedure TFPesq_Rateios.SpeedButton3Click(Sender: TObject);
begin
   Close;
end;

procedure TFPesq_Rateios.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
      perform(WM_nextdlgctl,0,0);
end;

procedure TFPesq_Rateios.NCR_FIMEnter(Sender: TObject);
begin
   (Sender as TEdit).Color := ClAqua;
end;

procedure TFPesq_Rateios.NCR_FIMExit(Sender: TObject);
begin
   (Sender as TEdit).Color := Clwindow;
end;

procedure TFPesq_Rateios.NCR_INIEnter(Sender: TObject);
begin
    (Sender as TEdit).Color := ClAqua;
end;

procedure TFPesq_Rateios.NCR_INIExit(Sender: TObject);
begin
    (Sender as TEdit).Color := Clwindow;
end;

procedure TFPesq_Rateios.DOC_FIMEnter(Sender: TObject);
begin
    (Sender as TEdit).Color := ClAqua;
end;

procedure TFPesq_Rateios.DOC_FIMExit(Sender: TObject);
begin
     (Sender as TEdit).Color := Clwindow ;
end;

procedure TFPesq_Rateios.DOC_INIEnter(Sender: TObject);
begin
    (Sender as TEdit).Color := ClAqua;
end;

procedure TFPesq_Rateios.DOC_INIExit(Sender: TObject);
begin
    (Sender as TEdit).Color := Clwindow ;
end;

procedure TFPesq_Rateios.LOTE_FIMExit(Sender: TObject);
begin
     (Sender as TEdit).Color := Clwindow;
end;

procedure TFPesq_Rateios.LOTE_FIMEnter(Sender: TObject);
begin
   (Sender as TEdit).Color := ClAqua;
end;

procedure TFPesq_Rateios.LOTE_INIEnter(Sender: TObject);
begin
   (Sender as TEdit).Color := ClAqua;
end;

procedure TFPesq_Rateios.LOTE_INIExit(Sender: TObject);
begin
   (Sender as TEdit).Color := Clwindow ;
end;

procedure TFPesq_Rateios.cbo_CLIENTE_FIMEnter(Sender: TObject);
begin
   (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFPesq_Rateios.cbo_CLIENTE_FIMExit(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := Clwindow ;
end;

procedure TFPesq_Rateios.cbo_CLIENTE_INIEnter(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFPesq_Rateios.cbo_CLIENTE_INIExit(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := Clwindow ;
end;

procedure TFPesq_Rateios.cbo_FILIAL_FIMEnter(Sender: TObject);
begin
   (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFPesq_Rateios.cbo_FILIAL_FIMExit(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := Clwindow;
end;

procedure TFPesq_Rateios.cbo_FILIAL_INIEnter(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFPesq_Rateios.cbo_FILIAL_INIExit(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := Clwindow;
end;

procedure TFPesq_Rateios.cbo_CONTA_FIMEnter(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFPesq_Rateios.cbo_CONTA_FIMExit(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := Clwindow;
end;

procedure TFPesq_Rateios.cbo_CONTA_INIEnter(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFPesq_Rateios.cbo_CONTA_INIExit(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := Clwindow;
end;

procedure TFPesq_Rateios.cbo_PORTA_FIMEnter(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFPesq_Rateios.cbo_PORTA_FIMExit(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := Clwindow;
end;

procedure TFPesq_Rateios.cbo_PORTA_INIEnter(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFPesq_Rateios.cbo_PORTA_INIExit(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := Clwindow;
end;

procedure TFPesq_Rateios.cbo_BANCO_FIMEnter(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFPesq_Rateios.cbo_BANCO_FIMExit(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := Clwindow;
end;

procedure TFPesq_Rateios.cbo_BANCO_INIEnter(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFPesq_Rateios.cbo_BANCO_INIExit(Sender: TObject);
begin
 (Sender as TwwDBLookupCombo).Color := Clwindow;
end;

procedure TFPesq_Rateios.cbo_TIPOEnter(Sender: TObject);
begin
  (Sender as TCombobox).Color := ClAqua;
end;

procedure TFPesq_Rateios.cbo_TIPOExit(Sender: TObject);
begin
  (Sender as TCombobox).Color := Clwindow;
end;

procedure TFPesq_Rateios.cbo_SITUEnter(Sender: TObject);
begin
  (Sender as TCombobox).Color := ClAqua;
end;

procedure TFPesq_Rateios.cbo_SITUExit(Sender: TObject);
begin
   (Sender as TCombobox).Color := Clwindow ;
end;

procedure TFPesq_Rateios.VENC_FIMEnter(Sender: TObject);
begin
  (Sender as TMaskEdit).Color := ClAqua;
end;

procedure TFPesq_Rateios.VENC_FIMExit(Sender: TObject);
begin
    (Sender as TMaskEdit).Color := Clwindow;
end;

procedure TFPesq_Rateios.VENC_INIEnter(Sender: TObject);
begin
    (Sender as TMaskEdit).Color := ClAqua;
end;

procedure TFPesq_Rateios.VENC_INIExit(Sender: TObject);
begin
    (Sender as TMaskEdit).Color := Clwindow ;
end;

procedure TFPesq_Rateios.REC_FIMEnter(Sender: TObject);
begin
    (Sender as TMaskEdit).Color := ClAqua;
end;

procedure TFPesq_Rateios.REC_FIMExit(Sender: TObject);
begin
    (Sender as TMaskEdit).Color := Clwindow ;
end;

procedure TFPesq_Rateios.REC_INIEnter(Sender: TObject);
begin
    (Sender as TMaskEdit).Color := ClAqua;
end;

procedure TFPesq_Rateios.REC_INIExit(Sender: TObject);
begin
    (Sender as TMaskEdit).Color := Clwindow ;
end;

procedure TFPesq_Rateios.EMIS_FIMEnter(Sender: TObject);
begin
    (Sender as TMaskEdit).Color := ClAqua;
end;

procedure TFPesq_Rateios.EMIS_FIMExit(Sender: TObject);
begin
    (Sender as TMaskEdit).Color := Clwindow ;
end;

procedure TFPesq_Rateios.EMIS_INIEnter(Sender: TObject);
begin
    (Sender as TMaskEdit).Color := ClAqua;
end;

procedure TFPesq_Rateios.EMIS_INIExit(Sender: TObject);
begin
    (Sender as TMaskEdit).Color := Clwindow ;
end;

procedure TFPesq_Rateios.SpeedButton4Click(Sender: TObject);
begin
        DBE_CCU_DESC.Text:= '';
        DBLC_FORN.Text:= '';

        EMIS_INI.Text:= '';
        EMIS_FIM.Text:= '';
        cboEmp.Text := '';
        

end;

procedure TFPesq_Rateios.DBLC_FORNEnter(Sender: TObject);
begin
 (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFPesq_Rateios.cboSubEnter(Sender: TObject);
begin
 (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFPesq_Rateios.DBLC_FORNExit(Sender: TObject);
begin
 (Sender as TwwDBLookupCombo).Color := Clwindow;
end;

procedure TFPesq_Rateios.cboSubExit(Sender: TObject);
begin
 (Sender as TwwDBLookupCombo).Color := Clwindow;
end;

procedure TFPesq_Rateios.DBE_CCU_DESCEnter(Sender: TObject);
begin
  (Sender as TWWDBEdit).Color := ClAqua;
end;

procedure TFPesq_Rateios.DBE_CCU_DESCExit(Sender: TObject);
begin
(Sender as TWWDBEdit).Color := Clwindow ;
end;

procedure TFPesq_Rateios.rdRatEmpClick(Sender: TObject);
begin
        If rdRatEmp.Checked then
                lb1.Caption := ' Data de Pagamento de: '
        Else
                lb1.Caption := ' Data de Vencimento de: '

end;

end.
