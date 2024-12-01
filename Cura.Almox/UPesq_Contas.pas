unit UPesq_Contas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, wwdblook, Mask, Db, Wwdatsrc, DBTables, Wwquery, Buttons,
  ExtCtrls, wwdbedit;

type
  TFPesq_Contas = class(TForm)
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    GRB_FILT: TGroupBox;
    Label7: TLabel;
    Label19: TLabel;
    EMIS_INI: TMaskEdit;
    EMIS_FIM: TMaskEdit;
    Bevel1: TBevel;
    SpeedButton4: TSpeedButton;
    Label2: TLabel;
    Label3: TLabel;
    DBLC_FORN: TwwDBLookupCombo;
    Q_CONT: TwwQuery;
    Q_FORN: TwwQuery;
    DBE_CCU_DESC: TwwDBEdit;
    Label5: TLabel;
    cboForn: TwwDBLookupCombo;
    Q_CONTFIL_CODI: TStringField;
    Q_CONTFIL_DESC: TStringField;
    Q_FORNFOR_CODI: TStringField;
    Q_FORNFOR_RAZA: TStringField;
    ck_Sim: TCheckBox;
    ck_Nao: TCheckBox;
    Button1: TButton;
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
    procedure cboFornEnter(Sender: TObject);
    procedure DBLC_FORNExit(Sender: TObject);
    procedure cboFornExit(Sender: TObject);
    procedure DBE_CCU_DESCEnter(Sender: TObject);
    procedure DBE_CCU_DESCExit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPesq_Contas: TFPesq_Contas;
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
  TxFiltro :String;

implementation
uses CPPMENU,RelRec,U_RbGerAn,U_RbGerSint,U_RbVencAn,U_RbVencSint,
     U_RbCliAn,U_RbCliSint,U_RbCCUSAn,U_RbCCUSint,U_RbDocAn,U_RbDocSint,
     U_RbDRsint, U_RbDRan, RelRecCR, RelRecCRSint, URelRecebVend,
  URelRecebRepr, FRelRecebVanc, FRelPagtosVenc, URelContasBancarias,
  URelRateios, URelContas, URelPag, USeleEmpresa ;
{$R *.DFM}

procedure TFPesq_Contas.FormCreate(Sender: TObject);
begin
  Q_CONT.Open;
  Q_FORN.Open;
 


end;

procedure TFPesq_Contas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Q_CONT.Close;
  Q_FORN.CLOSE;
  FMenu.LimpaEmpresas;
  
  Action := caFree;
end;

procedure TFPesq_Contas.SpeedButton1Click(Sender: TObject);
begin

{
   Application.CreateForm(TFRelcontas, FRelcontas);
   FRelcontas.QuickRep1.Preview;
   FRelcontas.Close;
}
   Application.CreateForm(TFRelPag, FRelPag);
   FRelPag.QuickRep1.Preview;
   FRelPag.Close;


end;

procedure TFPesq_Contas.SpeedButton2Click(Sender: TObject);
begin
   Application.CreateForm(TFRelcontas, FRelcontas);
   FRelcontas.QuickRep1.Print;
   FRelcontas.Close;
   abort;


end;

procedure TFPesq_Contas.SpeedButton3Click(Sender: TObject);
begin
   Close;
end;

procedure TFPesq_Contas.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
      perform(WM_nextdlgctl,0,0);
end;

procedure TFPesq_Contas.NCR_FIMEnter(Sender: TObject);
begin
   (Sender as TEdit).Color := ClAqua;
end;

procedure TFPesq_Contas.NCR_FIMExit(Sender: TObject);
begin
   (Sender as TEdit).Color := Clwindow;
end;

procedure TFPesq_Contas.NCR_INIEnter(Sender: TObject);
begin
    (Sender as TEdit).Color := ClAqua;
end;

procedure TFPesq_Contas.NCR_INIExit(Sender: TObject);
begin
    (Sender as TEdit).Color := Clwindow;
end;

procedure TFPesq_Contas.DOC_FIMEnter(Sender: TObject);
begin
    (Sender as TEdit).Color := ClAqua;
end;

procedure TFPesq_Contas.DOC_FIMExit(Sender: TObject);
begin
     (Sender as TEdit).Color := Clwindow ;
end;

procedure TFPesq_Contas.DOC_INIEnter(Sender: TObject);
begin
    (Sender as TEdit).Color := ClAqua;
end;

procedure TFPesq_Contas.DOC_INIExit(Sender: TObject);
begin
    (Sender as TEdit).Color := Clwindow ;
end;

procedure TFPesq_Contas.LOTE_FIMExit(Sender: TObject);
begin
     (Sender as TEdit).Color := Clwindow;
end;

procedure TFPesq_Contas.LOTE_FIMEnter(Sender: TObject);
begin
   (Sender as TEdit).Color := ClAqua;
end;

procedure TFPesq_Contas.LOTE_INIEnter(Sender: TObject);
begin
   (Sender as TEdit).Color := ClAqua;
end;

procedure TFPesq_Contas.LOTE_INIExit(Sender: TObject);
begin
   (Sender as TEdit).Color := Clwindow ;
end;

procedure TFPesq_Contas.cbo_CLIENTE_FIMEnter(Sender: TObject);
begin
   (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFPesq_Contas.cbo_CLIENTE_FIMExit(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := Clwindow ;
end;

procedure TFPesq_Contas.cbo_CLIENTE_INIEnter(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFPesq_Contas.cbo_CLIENTE_INIExit(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := Clwindow ;
end;

procedure TFPesq_Contas.cbo_FILIAL_FIMEnter(Sender: TObject);
begin
   (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFPesq_Contas.cbo_FILIAL_FIMExit(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := Clwindow;
end;

procedure TFPesq_Contas.cbo_FILIAL_INIEnter(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFPesq_Contas.cbo_FILIAL_INIExit(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := Clwindow;
end;

procedure TFPesq_Contas.cbo_CONTA_FIMEnter(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFPesq_Contas.cbo_CONTA_FIMExit(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := Clwindow;
end;

procedure TFPesq_Contas.cbo_CONTA_INIEnter(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFPesq_Contas.cbo_CONTA_INIExit(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := Clwindow;
end;

procedure TFPesq_Contas.cbo_PORTA_FIMEnter(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFPesq_Contas.cbo_PORTA_FIMExit(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := Clwindow;
end;

procedure TFPesq_Contas.cbo_PORTA_INIEnter(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFPesq_Contas.cbo_PORTA_INIExit(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := Clwindow;
end;

procedure TFPesq_Contas.cbo_BANCO_FIMEnter(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFPesq_Contas.cbo_BANCO_FIMExit(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := Clwindow;
end;

procedure TFPesq_Contas.cbo_BANCO_INIEnter(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFPesq_Contas.cbo_BANCO_INIExit(Sender: TObject);
begin
 (Sender as TwwDBLookupCombo).Color := Clwindow;
end;

procedure TFPesq_Contas.cbo_TIPOEnter(Sender: TObject);
begin
  (Sender as TCombobox).Color := ClAqua;
end;

procedure TFPesq_Contas.cbo_TIPOExit(Sender: TObject);
begin
  (Sender as TCombobox).Color := Clwindow;
end;

procedure TFPesq_Contas.cbo_SITUEnter(Sender: TObject);
begin
  (Sender as TCombobox).Color := ClAqua;
end;

procedure TFPesq_Contas.cbo_SITUExit(Sender: TObject);
begin
   (Sender as TCombobox).Color := Clwindow ;
end;

procedure TFPesq_Contas.VENC_FIMEnter(Sender: TObject);
begin
  (Sender as TMaskEdit).Color := ClAqua;
end;

procedure TFPesq_Contas.VENC_FIMExit(Sender: TObject);
begin
    (Sender as TMaskEdit).Color := Clwindow;
end;

procedure TFPesq_Contas.VENC_INIEnter(Sender: TObject);
begin
    (Sender as TMaskEdit).Color := ClAqua;
end;

procedure TFPesq_Contas.VENC_INIExit(Sender: TObject);
begin
    (Sender as TMaskEdit).Color := Clwindow ;
end;

procedure TFPesq_Contas.REC_FIMEnter(Sender: TObject);
begin
    (Sender as TMaskEdit).Color := ClAqua;
end;

procedure TFPesq_Contas.REC_FIMExit(Sender: TObject);
begin
    (Sender as TMaskEdit).Color := Clwindow ;
end;

procedure TFPesq_Contas.REC_INIEnter(Sender: TObject);
begin
    (Sender as TMaskEdit).Color := ClAqua;
end;

procedure TFPesq_Contas.REC_INIExit(Sender: TObject);
begin
    (Sender as TMaskEdit).Color := Clwindow ;
end;

procedure TFPesq_Contas.EMIS_FIMEnter(Sender: TObject);
begin
    (Sender as TMaskEdit).Color := ClAqua;
end;

procedure TFPesq_Contas.EMIS_FIMExit(Sender: TObject);
begin
    (Sender as TMaskEdit).Color := Clwindow ;
end;

procedure TFPesq_Contas.EMIS_INIEnter(Sender: TObject);
begin
    (Sender as TMaskEdit).Color := ClAqua;
end;

procedure TFPesq_Contas.EMIS_INIExit(Sender: TObject);
begin
    (Sender as TMaskEdit).Color := Clwindow ;
end;

procedure TFPesq_Contas.SpeedButton4Click(Sender: TObject);
begin
        cboForn.Text:= '';
        DBE_CCU_DESC.Text:= '';
        DBLC_FORN.Text:= '';

        EMIS_INI.Text:= '';
        EMIS_FIM.Text:= '';
        

end;

procedure TFPesq_Contas.DBLC_FORNEnter(Sender: TObject);
begin
 (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFPesq_Contas.cboFornEnter(Sender: TObject);
begin
 (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFPesq_Contas.DBLC_FORNExit(Sender: TObject);
begin
 (Sender as TwwDBLookupCombo).Color := Clwindow;
end;

procedure TFPesq_Contas.cboFornExit(Sender: TObject);
begin
 (Sender as TwwDBLookupCombo).Color := Clwindow;
end;

procedure TFPesq_Contas.DBE_CCU_DESCEnter(Sender: TObject);
begin
  (Sender as TWWDBEdit).Color := ClAqua;
end;

procedure TFPesq_Contas.DBE_CCU_DESCExit(Sender: TObject);
begin
(Sender as TWWDBEdit).Color := Clwindow ;
end;

procedure TFPesq_Contas.Button1Click(Sender: TObject);
begin
  frmSeleEmpresa := TfrmSeleEmpresa.Create(Self);
  frmSeleEmpresa.ShowModal;
end;

end.
