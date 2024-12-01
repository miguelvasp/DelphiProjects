unit UPesq_ContasBancarias;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, wwdblook, Mask, Db, Wwdatsrc, DBTables, Wwquery, Buttons,
  ExtCtrls;

type
  TFPesq_ContasBancarias = class(TForm)
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Q_RecCli: TwwQuery;
    Q_BANC: TwwQuery;
    Q_BANCBAN_CODI: TStringField;
    Q_BANCBAN_NOME: TStringField;
    Q_FILI: TwwQuery;
    Q_FILIFIL_DESC: TStringField;
    Q_FILIFIL_CODI: TStringField;
    Q_CONT: TwwQuery;
    Q_CONTCON_CODI: TStringField;
    Q_CONTCON_DESC: TStringField;
    DS_CONT: TwwDataSource;
    DS_FILI: TwwDataSource;
    DS_BANC: TwwDataSource;
    GRB_FILT: TGroupBox;
    Label2: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    cbo_FILIAL_INI: TwwDBLookupCombo;
    cbo_BANCO_INI: TwwDBLookupCombo;
    Label17: TLabel;
    DOC_INI: TEdit;
    Label19: TLabel;
    EMIS_INI: TMaskEdit;
    EMIS_FIM: TMaskEdit;
    Q_FILF: TwwQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    Q_CONF: TwwQuery;
    StringField3: TStringField;
    StringField4: TStringField;
    Q_BANF: TwwQuery;
    StringField5: TStringField;
    StringField6: TStringField;
    Q_RECCLIF: TwwQuery;
    Q_PORT: TwwQuery;
    Q_PORTLCO_CODI: TStringField;
    Q_PORTLCO_BANC: TStringField;
    Q_PORTF: TwwQuery;
    StringField7: TStringField;
    StringField8: TStringField;
    Bevel1: TBevel;
    Q_RecCliFOR_CODI: TStringField;
    Q_RecCliFOR_RAZA: TStringField;
    Q_RECCLIFFOR_CODI: TStringField;
    Q_RECCLIFFOR_RAZA: TStringField;
    Label1: TLabel;
    wwDBLookupCombo1: TwwDBLookupCombo;
    Q_EMP: TwwQuery;
    SpeedButton4: TSpeedButton;
    Q_EMPFIL_CODI: TStringField;
    Q_EMPFIL_DESC: TStringField;
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
    procedure LIMPA_VARIAVEIS;
    procedure SpeedButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPesq_ContasBancarias: TFPesq_ContasBancarias;
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

implementation
uses CPPMENU,RelRec,U_RbGerAn,U_RbGerSint,U_RbVencAn,U_RbVencSint,
     U_RbCliAn,U_RbCliSint,U_RbCCUSAn,U_RbCCUSint,U_RbDocAn,U_RbDocSint,
     U_RbDRsint, U_RbDRan, RelRecCR, RelRecCRSint, URelRecebVend,
  URelRecebRepr, FRelRecebVanc, FRelPagtosVenc, URelContasBancarias ;
{$R *.DFM}

procedure TFPesq_ContasBancarias.FormCreate(Sender: TObject);
begin
  Q_CONT.Open;
  Q_BANC.Open;
  Q_CONF.Open;
  Q_PORT.Open;
  Q_PORTF.Open;
  Q_BANF.Open;
  Q_FILI.Open;
  Q_FILF.Open;
  Q_RECCLI.Open;
  Q_RECCLIF.Open ;
  Q_EMP.OPEN;



end;

procedure TFPesq_ContasBancarias.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Q_CONT.Close;
  Q_EMP.Close;
  Q_BANC.Close;
  Q_CONF.Close;
  Q_BANF.Close;
  Q_PORT.Close;
  Q_PORTF.Close;
  Q_FILI.Close;
  Q_FILF.Close;
  Q_RECCLI.Close;
  Q_RECCLIF.Close;
  Action := caFree;
end;

procedure TFPesq_ContasBancarias.SpeedButton1Click(Sender: TObject);
begin


   Application.CreateForm(tFRelContasBancariais, FRelContasBancariais);
   FRelContasBancariais.QuickRep1.Preview;
   FRelContasBancariais.Close;



end;

procedure TFPesq_ContasBancarias.SpeedButton2Click(Sender: TObject);
begin
   Application.CreateForm(tFRelContasBancariais, FRelContasBancariais);
   FRelContasBancariais.QuickRep1.Print;
   FRelContasBancariais.Close;



end;

procedure TFPesq_ContasBancarias.SpeedButton3Click(Sender: TObject);
begin
   Close;
end;

procedure TFPesq_ContasBancarias.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
      perform(WM_nextdlgctl,0,0);
end;

procedure TFPesq_ContasBancarias.LIMPA_VARIAVEIS;
Begin




   cbo_BANCO_INI.LookupValue   := '' ;

   DOC_INI.Text := '';

End;

procedure TFPesq_ContasBancarias.NCR_FIMEnter(Sender: TObject);
begin
   (Sender as TEdit).Color := ClAqua;
end;

procedure TFPesq_ContasBancarias.NCR_FIMExit(Sender: TObject);
begin
   (Sender as TEdit).Color := Clwindow;
end;

procedure TFPesq_ContasBancarias.NCR_INIEnter(Sender: TObject);
begin
    (Sender as TEdit).Color := ClAqua;
end;

procedure TFPesq_ContasBancarias.NCR_INIExit(Sender: TObject);
begin
    (Sender as TEdit).Color := Clwindow;
end;

procedure TFPesq_ContasBancarias.DOC_FIMEnter(Sender: TObject);
begin
    (Sender as TEdit).Color := ClAqua;
end;

procedure TFPesq_ContasBancarias.DOC_FIMExit(Sender: TObject);
begin
     (Sender as TEdit).Color := Clwindow ;
end;

procedure TFPesq_ContasBancarias.DOC_INIEnter(Sender: TObject);
begin
    (Sender as TEdit).Color := ClAqua;
end;

procedure TFPesq_ContasBancarias.DOC_INIExit(Sender: TObject);
begin
    (Sender as TEdit).Color := Clwindow ;
end;

procedure TFPesq_ContasBancarias.LOTE_FIMExit(Sender: TObject);
begin
     (Sender as TEdit).Color := Clwindow;
end;

procedure TFPesq_ContasBancarias.LOTE_FIMEnter(Sender: TObject);
begin
   (Sender as TEdit).Color := ClAqua;
end;

procedure TFPesq_ContasBancarias.LOTE_INIEnter(Sender: TObject);
begin
   (Sender as TEdit).Color := ClAqua;
end;

procedure TFPesq_ContasBancarias.LOTE_INIExit(Sender: TObject);
begin
   (Sender as TEdit).Color := Clwindow ;
end;

procedure TFPesq_ContasBancarias.cbo_CLIENTE_FIMEnter(Sender: TObject);
begin
   (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFPesq_ContasBancarias.cbo_CLIENTE_FIMExit(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := Clwindow ;
end;

procedure TFPesq_ContasBancarias.cbo_CLIENTE_INIEnter(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFPesq_ContasBancarias.cbo_CLIENTE_INIExit(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := Clwindow ;
end;

procedure TFPesq_ContasBancarias.cbo_FILIAL_FIMEnter(Sender: TObject);
begin
   (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFPesq_ContasBancarias.cbo_FILIAL_FIMExit(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := Clwindow;
end;

procedure TFPesq_ContasBancarias.cbo_FILIAL_INIEnter(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFPesq_ContasBancarias.cbo_FILIAL_INIExit(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := Clwindow;
end;

procedure TFPesq_ContasBancarias.cbo_CONTA_FIMEnter(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFPesq_ContasBancarias.cbo_CONTA_FIMExit(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := Clwindow;
end;

procedure TFPesq_ContasBancarias.cbo_CONTA_INIEnter(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFPesq_ContasBancarias.cbo_CONTA_INIExit(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := Clwindow;
end;

procedure TFPesq_ContasBancarias.cbo_PORTA_FIMEnter(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFPesq_ContasBancarias.cbo_PORTA_FIMExit(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := Clwindow;
end;

procedure TFPesq_ContasBancarias.cbo_PORTA_INIEnter(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFPesq_ContasBancarias.cbo_PORTA_INIExit(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := Clwindow;
end;

procedure TFPesq_ContasBancarias.cbo_BANCO_FIMEnter(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFPesq_ContasBancarias.cbo_BANCO_FIMExit(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := Clwindow;
end;

procedure TFPesq_ContasBancarias.cbo_BANCO_INIEnter(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFPesq_ContasBancarias.cbo_BANCO_INIExit(Sender: TObject);
begin
 (Sender as TwwDBLookupCombo).Color := Clwindow;
end;

procedure TFPesq_ContasBancarias.cbo_TIPOEnter(Sender: TObject);
begin
  (Sender as TCombobox).Color := ClAqua;
end;

procedure TFPesq_ContasBancarias.cbo_TIPOExit(Sender: TObject);
begin
  (Sender as TCombobox).Color := Clwindow;
end;

procedure TFPesq_ContasBancarias.cbo_SITUEnter(Sender: TObject);
begin
  (Sender as TCombobox).Color := ClAqua;
end;

procedure TFPesq_ContasBancarias.cbo_SITUExit(Sender: TObject);
begin
   (Sender as TCombobox).Color := Clwindow ;
end;

procedure TFPesq_ContasBancarias.VENC_FIMEnter(Sender: TObject);
begin
  (Sender as TMaskEdit).Color := ClAqua;
end;

procedure TFPesq_ContasBancarias.VENC_FIMExit(Sender: TObject);
begin
    (Sender as TMaskEdit).Color := Clwindow;
end;

procedure TFPesq_ContasBancarias.VENC_INIEnter(Sender: TObject);
begin
    (Sender as TMaskEdit).Color := ClAqua;
end;

procedure TFPesq_ContasBancarias.VENC_INIExit(Sender: TObject);
begin
    (Sender as TMaskEdit).Color := Clwindow ;
end;

procedure TFPesq_ContasBancarias.REC_FIMEnter(Sender: TObject);
begin
    (Sender as TMaskEdit).Color := ClAqua;
end;

procedure TFPesq_ContasBancarias.REC_FIMExit(Sender: TObject);
begin
    (Sender as TMaskEdit).Color := Clwindow ;
end;

procedure TFPesq_ContasBancarias.REC_INIEnter(Sender: TObject);
begin
    (Sender as TMaskEdit).Color := ClAqua;
end;

procedure TFPesq_ContasBancarias.REC_INIExit(Sender: TObject);
begin
    (Sender as TMaskEdit).Color := Clwindow ;
end;

procedure TFPesq_ContasBancarias.EMIS_FIMEnter(Sender: TObject);
begin
    (Sender as TMaskEdit).Color := ClAqua;
end;

procedure TFPesq_ContasBancarias.EMIS_FIMExit(Sender: TObject);
begin
    (Sender as TMaskEdit).Color := Clwindow ;
end;

procedure TFPesq_ContasBancarias.EMIS_INIEnter(Sender: TObject);
begin
    (Sender as TMaskEdit).Color := ClAqua;
end;

procedure TFPesq_ContasBancarias.EMIS_INIExit(Sender: TObject);
begin
    (Sender as TMaskEdit).Color := Clwindow ;
end;

procedure TFPesq_ContasBancarias.SpeedButton4Click(Sender: TObject);
begin
        wwDBLookupCombo1.Text:= '';
        cbo_FILIAL_INI.Text:= '';
        EMIS_INI.Text:= '';
        EMIS_FIM.Text:= '';
        cbo_BANCO_INI.Text:= '';
        DOC_INI.Text:= '';
end;

end.
