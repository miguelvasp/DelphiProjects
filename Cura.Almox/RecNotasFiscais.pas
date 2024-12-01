unit RecNotasFiscais;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, wwdblook, Mask, Db, Wwdatsrc, DBTables, Wwquery, Buttons,
  ExtCtrls;

type
    TNotasFiscais_Filt = class(TForm)
    RadioGroup1: TRadioGroup;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Q_RecCliente: TwwQuery;
    Q_Vendedor: TwwQuery;
    Q_Condicao: TwwQuery;
    GRB_FILT: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    ClienteIni: TwwDBLookupCombo;
    ClienteFim: TwwDBLookupCombo;
    VendedorIni: TwwDBLookupCombo;
    VendedorFin: TwwDBLookupCombo;
    SituacaoNota: TComboBox;
    Label18: TLabel;
    TipoRelat: TComboBox;
    Label19: TLabel;
    DataEmisIni: TMaskEdit;
    DataEmisFin: TMaskEdit;
    Label20: TLabel;
    Q_RecClienteF: TwwQuery;
    CondicaoPagto: TwwDBLookupCombo;
    Label3: TLabel;
    Q_VendedorF: TwwQuery;
    Q_CondicaoCDP_DESC: TStringField;
    Q_RecClienteFCLI_CODI: TAutoIncField;
    Q_RecClienteFCLI_APELIDO: TStringField;
    Q_RecClienteCLI_CODI: TAutoIncField;
    Q_RecClienteCLI_APELIDO: TStringField;
    Q_VendedorVEN_NOME: TStringField;
    Q_VendedorFVEN_NOME: TStringField;
    CodFatur: TwwDBLookupCombo;
    Q_CodFatur: TwwQuery;
    Q_CodFaturCFA_CODI: TStringField;
    Q_CodFaturCFA_DCFO: TStringField;
    Label5: TLabel;
    NotasDe: TComboBox;
    Label7: TLabel;
    FornecIni: TwwDBLookupCombo;
    Label8: TLabel;
    FornecFim: TwwDBLookupCombo;
    Q_Fornec: TwwQuery;
    Q_FornecF: TwwQuery;
    Q_Fornecfor_CODI: TStringField;
    Q_FornecFfor_CODI: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NotasFiscais_Filt: TNotasFiscais_Filt;

  VendedorI : string ;
  VendedorF : string ;
  CLIENTEI : string ;
  CLIENTEF : string ;
  FornecI : string ;
  FornecF : string ;
  CFATUR : string ;
  EMISSAOI : tdatetime ;
  EMISSAOF : tdatetime ;
  TIPO : integer ;
  Situacao : integer ;
  Ordem : Integer;
  Condicao : string ;
  StrFiltro : string ;
  Ordenacao : string ;


implementation
uses CPPMENU,RelRec,U_RbGerAn,U_RbGerSint,U_RbVencAn,U_RbVencSint,
     U_RbCliAn,U_RbCliSint,U_RbCCUSAn,U_RbCCUSint,U_RbDocAn,U_RbDocSint,
     U_RbDRsint, U_RbDRan, RelRecCR, RelRecCRSint, RelRecNotasFiscais,
  RelRecNotasFiscaisf ;
{$R *.DFM}

procedure TNotasFiscais_Filt.FormCreate(Sender: TObject);
begin
  Q_VENDEDOR.Open;
  Q_VENDEDORF.open;
  Q_RecCLIENTE.Open;
  Q_RecCLIENTEF.Open;
  Q_Fornec.Open;
  Q_FornecF.Open;
  Q_CONDICAO.open;
  Q_CODFATUR.open;
  SITUACAONOTA.ItemIndex:= 0 ;   // faturadas
  RadioGroup1.itemindex := 0 ;   // Clientes
  NotasDe.itemindex := 0 ;   // Notas por...
  TIPORELAT.ItemIndex   := 2 ;   // Resumido
end;

procedure TNotasFiscais_Filt.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Q_VENDEDOR.close;
  Q_VENDEDORF.close;
  Q_RecCLIENTE.close;
  Q_RecCLIENTEF.close;
  Q_Fornec.close;
  Q_FornecF.close;
  Q_CONDICAO.close;
  Q_CODFATUR.CLOSE;
  action :=cafree;
end;

procedure TNotasFiscais_Filt.SpeedButton1Click(Sender: TObject);
begin
  if CODFATUR.text <> '' then
//    CFATUR := Q_CodFaturCFA_CODI.Asstring ;
      CFATUR := codfatur.text;

  if ClienteIni.text <> '' then
     ClienteI := Q_RecClienteCLI_apelido.Asstring ;
  if ClienteFim.text <>  '' then
     ClienteF := Q_RecClienteFCLI_apelido.asstring ;

  if FornecIni.text <> '' then
     FornecI := Q_FornecFfor_codi.Asstring ;
  if FornecFim.text <>  '' then
     FornecF := Q_FornecFfor_codi.asstring ;

  if VendedorIni.text <>  '' then
     VendedorI := Q_VendedorVen_Nome.asstring;
  if VendedorFin.text <>  '' then
     VendedorF := Q_VendedorFVen_Nome.asstring;

  if CondicaoPagto.text <>  '' then
     Condicao := Q_CondicaoCDP_desc.asstring ;

  EMISSAOI := 0.0 ;
  EMISSAOF := 0.0 ;
  if DataEmisIni.text <> '  /  /  ' then
     EMISSAOI  := strtodate(DataEmisIni.text );
  if DataEmisFin.text <> '  /  /  ' then
     EMISSAOF   := strtodate(DataEmisFin.text );

  Situacao := SituacaoNota.itemindex ;
  TIPO := TipoRelat.itemindex ;

  case radiogroup1.itemindex of
    0 : Ordem := 0 ;
    1 : Ordem := 1 ;
    2 : Ordem := 2 ;
  end ;

  StrFiltro := '';
  if CFATUR <> ''  then
     StrFiltro := StrFiltro + '  Código de faturamento : ' + CFATUR ;

  if (ClienteI <> '') and (ClienteF <> '' ) then
     StrFiltro := StrFiltro + '  Cliente de : ' + ClienteI + ' até ' + ClienteF ;

  if (FornecI <> '') and (FornecF <> '' ) then
     StrFiltro := StrFiltro + '  Fornecedor de : ' + FornecI + ' até ' + FornecF ;

  if (VendedorI <> '') and (VendedorF <> '' ) then
     StrFiltro := StrFiltro + '  Vendedor de : ' + VendedorI + ' até ' + VendedorF ;

  if Condicao <> '' then
     StrFiltro := StrFiltro + '  Condicao Pagto : ' + Condicao ;

  if EMISSAOI <> 0.0 then
     StrFiltro := StrFiltro + '  Emissão de : ' + formatdatetime('DD/MM/YYYY',EmissaoI)  ;

  if EmissaoF <> 0.0 then
     StrFiltro := StrFiltro + ' até ' + formatdatetime('DD/MM/YYYY',EmissaoF) ;

  if Situacao = 0 then
     StrFiltro := StrFiltro + '  Situação da Nota : Faturadas' ;
  if Situacao = 1 then
     StrFiltro := StrFiltro + '  Situação da Nota : Canceladas' ;
  if Situacao = 2 then
     StrFiltro := StrFiltro + '  Situação da Nota : Geral '  ;
  if Situacao = 3 then
     StrFiltro := StrFiltro + '  Situação da Nota : Especiais' ;

 // TipoRelat.ItemIndex = 0 -> Relatório Analítico
 //                     = 1 -> Relatório Sintético
 //                     = 2 -> Relatório Resumido
//   if(Ordem = 0) or

   if TipoRelat.itemindex = 2  then begin
     Ordenacao := '' ;

     if RadioGroup1.itemindex = 0 then Ordenacao := '1' ;  // Clientes
     if RadioGroup1.itemindex = 1 then Ordenacao := '2' ;  // Vendedores
     if RadioGroup1.itemindex = 2 then Ordenacao := '3' ;  // Data de Emissao

     if notasde.itemindex = 0 then begin
        Application.Createform(TFLstNotasFiscais, FLstNotasFiscais);
        FLstNotasFiscais.Lst_RecNotasFiscais.Preview;
        FLstNotasFiscais.close ;
        FLstNotasFiscais.Release;
      end else begin
        Application.Createform(TFLstNotasFiscaisF, FLstNotasFiscaisF);
        FLstNotasFiscaisF.Lst_RecNotasFiscaisF.Preview;
        FLstNotasFiscaisF.close ;
        FLstNotasFiscaisF.Release;
     end;
{  end else begin

      if Ordem = 1 then begin
         if TipoRelat.ItemIndex = 0 then begin
            Application.Createform(TFLstRbGerAn, FLstRbGerAn);
            FLstRbGerAn.Lst_GerAn.Preview  ;
            FLstRbGerAn.close ;
            FLstRbGerAn.Release;
            end
            else begin
            Application.Createform(TFLstRbGerSint, FLstRbGerSint);
            FLstRbGerSint.Lst_GSINT.Preview ;
            FLstRbGerSint.close ;
            FLstRbGerSint.Release;
         end;
      end;

      if Ordem = 2 then begin
         if TipoRelat.ItemIndex = 0 then begin
            Application.Createform(TFLstRbVencAn, FLstRbVencAn);
            FLstRbVencAn.Lst_Venc.Preview  ;
            FLstRbVencAn.close ;
            FLstRbVencAn.Release;
            end
            else begin
            Application.Createform(TFLstRbVencSint, FLstRbVencSint);
            FLstRbVencSint.Lst_Venc.Preview ;
            FLstRbVencSint.close ;
            FLstRbVencSint.Release;
         end;
      end;}
  end ;

  ClienteIni.lookupvalue := '' ;
  ClienteFim.lookupvalue := '' ;
  FornecIni.lookupvalue := '' ;
  FornecFim.lookupvalue := '' ;
  VendedorIni.lookupvalue := '' ;
  VendedorFin.lookupvalue := '' ;
  CondicaoPagto.lookupvalue := '' ;

  StrFiltro := '';
  VendedorI := '';
  VendedorF := '';
  CLIENTEI := '';
  CLIENTEF := '';
  FornecI := '';
  FornecF := '';
  EMISSAOI := 0.0 ;
  EMISSAOF := 0.0 ;
  TIPO := 0;
  Situacao := 0;
  Ordem := 0;
  Condicao := '';
  CFATUR :=  '';
  Condicao := '';

end;

procedure TNotasFiscais_Filt.SpeedButton2Click(Sender: TObject);
begin

  if CODFATUR.text <> '' then
//    CFATUR := Q_CodFaturCFA_CODI.Asstring ;
      CFATUR := codfatur.text;

  if codfatur.lookupvalue <> '' then;
     CFATUR := codfatur.lookupvalue ;

  if ClienteIni.text <> '' then
     ClienteI := Q_RecClienteCLI_apelido.Asstring ;
  if ClienteFim.text <>  '' then
     ClienteF := Q_RecClienteFCLI_apelido.asstring ;

  if FornecIni.text <> '' then
     FornecI := Q_FornecFfor_codi.Asstring ;
  if FornecFim.text <>  '' then
     FornecF := Q_FornecFfor_codi.asstring ;

  if VendedorIni.text <>  '' then
     VendedorI := Q_VendedorVen_Nome.asstring;
  if VendedorFin.text <>  '' then
     VendedorF := Q_VendedorFVen_Nome.asstring;

  if CondicaoPagto.text <>  '' then
     Condicao := Q_CondicaoCDP_desc.asstring ;

  EMISSAOI := 0.0 ;
  EMISSAOF := 0.0 ;
  if DataEmisIni.text <> '  /  /  ' then
     EMISSAOI  := strtodate(DataEmisIni.text );
  if DataEmisFin.text <> '  /  /  ' then
     EMISSAOF   := strtodate(DataEmisFin.text );

  Situacao := SituacaoNota.itemindex ;
  TIPO := TipoRelat.itemindex ;

  case radiogroup1.itemindex of
    0 : Ordem := 0 ;
    1 : Ordem := 1 ;
    2 : Ordem := 2 ;
  end ;

  StrFiltro := '';
  if CFATUR <> ''  then
     StrFiltro := StrFiltro + '  Código de faturamento : ' + CFATUR ;

  if (ClienteI <> '') and (ClienteF <> '' ) then
     StrFiltro := StrFiltro + '  Cliente de : ' + ClienteI + ' até ' + ClienteF ;

  if (FornecI <> '') and (FornecF <> '' ) then
     StrFiltro := StrFiltro + '  Fornecedor de : ' + FornecI + ' até ' + FornecF ;

  if (VendedorI <> '') and (VendedorF <> '' ) then
     StrFiltro := StrFiltro + '  Vendedor de : ' + VendedorI + ' até ' + VendedorF ;

  if Condicao <> '' then
     StrFiltro := StrFiltro + '  Condicao Pagto : ' + Condicao ;

  if EMISSAOI <> 0.0 then
     StrFiltro := StrFiltro + '  Emissão de : ' + formatdatetime('DD/MM/YYYY',EmissaoI)  ;

  if EmissaoF <> 0.0 then
     StrFiltro := StrFiltro + ' até ' + formatdatetime('DD/MM/YYYY',EmissaoF) ;

  if Situacao = 0 then
     StrFiltro := StrFiltro + '  Situação da Nota : Faturadas' ;
  if Situacao = 1 then
     StrFiltro := StrFiltro + '  Situação da Nota : Canceladas' ;
  if Situacao = 2 then
     StrFiltro := StrFiltro + '  Situação da Nota : Geral '  ;
  if Situacao = 3 then
     StrFiltro := StrFiltro + '  Situação da Nota : Especiais' ;

 // TipoRelat.ItemIndex = 0 -> Relatório Analítico
 //                     = 1 -> Relatório Sintético
 //                     = 2 -> Relatório Resumido
//   if(Ordem = 0) or

   if TipoRelat.itemindex = 2  then begin
     Ordenacao := '' ;

     if RadioGroup1.itemindex = 0 then Ordenacao := '1' ;  // Clientes
     if RadioGroup1.itemindex = 1 then Ordenacao := '2' ;  // Vendedores
     if RadioGroup1.itemindex = 2 then Ordenacao := '3' ;  // Data de Emissao
     if notasde.itemindex = 0 then begin
        Application.Createform(TFLstNotasFiscais, FLstNotasFiscais);
        FLstNotasFiscais.Lst_RecNotasFiscais.Print;
        FLstNotasFiscais.close ;
        FLstNotasFiscais.Release;
      end else begin
        Application.Createform(TFLstNotasFiscaisF, FLstNotasFiscaisF);
        FLstNotasFiscaisF.Lst_RecNotasFiscaisF.Print;
        FLstNotasFiscaisF.close ;
        FLstNotasFiscaisF.Release;
     end;
{  end else begin

      if Ordem = 1 then begin
         if TipoRelat.ItemIndex = 0 then begin
            Application.Createform(TFLstRbGerAn, FLstRbGerAn);
            FLstRbGerAn.Lst_GerAn.Print  ;
            FLstRbGerAn.close ;
            FLstRbGerAn.Release;
            end
            else begin
            Application.Createform(TFLstRbGerSint, FLstRbGerSint);
            FLstRbGerSint.Lst_GSINT.Print;
            FLstRbGerSint.close ;
            FLstRbGerSint.Release;
         end;
      end;

      if Ordem = 2 then begin
         if TipoRelat.ItemIndex = 0 then begin
            Application.Createform(TFLstRbVencAn, FLstRbVencAn);
            FLstRbVencAn.Lst_Venc.Print ;
            FLstRbVencAn.close ;
            FLstRbVencAn.Release;
            end
            else begin
            Application.Createform(TFLstRbVencSint, FLstRbVencSint);
            FLstRbVencSint.Lst_Venc.Print;
            FLstRbVencSint.close ;
            FLstRbVencSint.Release;
         end;
      end;}
  end ;


  ClienteIni.lookupvalue := '' ;
  ClienteFim.lookupvalue := '' ;
  FornecIni.lookupvalue := '' ;
  FornecFim.lookupvalue := '' ;
  VendedorIni.lookupvalue := '' ;
  VendedorFin.lookupvalue := '' ;
  CondicaoPagto.lookupvalue := '' ;

  StrFiltro := '';
  VendedorI := '';
  VendedorF := '';
  CLIENTEI := '';
  CLIENTEF := '';
  FornecI := '';
  FornecF := '';
  EMISSAOI := 0.0 ;
  EMISSAOF := 0.0 ;
  TIPO := 0;
  Situacao := 0;
  Ordem := 0;
  Condicao := '';
  CFATUR :=  '';
  Condicao := '';
end;

procedure TNotasFiscais_Filt.SpeedButton3Click(Sender: TObject);
 begin
  close;
end;

procedure TNotasFiscais_Filt.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
  begin
    key := #0;
    perform(WM_nextdlgctl,0,0);
  end;
end;
end.
