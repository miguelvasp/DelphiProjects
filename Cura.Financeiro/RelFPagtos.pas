unit RelFPagtos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  wwdblook, Db, DBTables, Wwquery, Wwdatsrc, Buttons, StdCtrls, Mask,
  ExtCtrls;

type
  TLst_Pagto_Filt = class(TForm)
    Bevel1: TBevel;
    RadioGroup1: TRadioGroup;
    GRB_FILT: TGroupBox;
    Label1: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    MaskEdit4: TMaskEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Label5: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    wwDBLookupCombo1: TwwDBLookupCombo;
    wwDBLookupCombo2: TwwDBLookupCombo;
    wwDBLookupCombo3: TwwDBLookupCombo;
    wwDBLookupCombo4: TwwDBLookupCombo;
    wwDBLookupCombo5: TwwDBLookupCombo;
    wwDBLookupCombo6: TwwDBLookupCombo;
    MaskEdit6: TMaskEdit;
    wwDBLookupCombo7: TwwDBLookupCombo;
    wwDBLookupCombo8: TwwDBLookupCombo;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    PAG_SITU: TComboBox;
    Label14: TLabel;
    Q_CONT: TwwQuery;
    Q_CONTCON_CODI: TStringField;
    Q_CONTCON_DESC: TStringField;
    DS_CONT: TwwDataSource;
    Q_FILI: TwwQuery;
    Q_FILIFIL_DESC: TStringField;
    Q_FILIFIL_CODI: TStringField;
    DS_FILI: TwwDataSource;
    DS_BANC: TwwDataSource;
    Q_BANC: TwwQuery;
    Q_BANCBAN_CODI: TStringField;
    Q_BANCBAN_NOME: TStringField;
    Q_PagForn: TwwQuery;
    Edit2: TEdit;
    Edit1: TEdit;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    ComboBox1: TComboBox;
    Label16: TLabel;
    Q_PagFornFOR_CODI: TStringField;
    Q_PagFornFOR_RAZa: TStringField;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Lst_Pagto_Filt: TLst_Pagto_Filt;
  NUMEROI : string ;
  NUMEROF : string ;
  FORNECEDORI : string ;
  FORNECEDORF : string ;
  FILIALI : string ;
  FILIALF : string ;
  CONTAGERENCIALI : string ;
  CONTAGERENCIALF : string ;
  VENCIMENTOI : tdatetime ;
  VENCIMENTOF : tdatetime ;
  PAGAMENTOI : tdatetime ;
  PAGAMENTOF : tdatetime ;
  BANCOCONTAI : string ;
  BANCOCONTAF : string ;
  TIPO : integer ;
  rTipo : integer ;
  StrFiltro : string ;
  Ordenacao : string ;
implementation
uses CPPMENU, RelPagtos , U_CGERAN , U_CGERSINT , U_VencAn , U_VencSint,
     U_FornAn , U_FornSint ,  U_CCUSAn , U_CCUSint , U_DTPGAN , U_DTPGSint ;
{$R *.DFM}

procedure TLst_Pagto_Filt.SpeedButton1Click(Sender: TObject);
begin
  NUMEROI := edit1.text;
  NUMEROF := edit2.text;
  FORNECEDORI := wwDBLookupCombo1.text ;
  FORNECEDORF := wwDBLookupCombo2.text;
  FILIALI := wwDBLookupCombo3.lookupvalue ;
  FILIALF := wwDBLookupCombo4.lookupvalue ;
  CONTAGERENCIALI := wwDBLookupCombo5.lookupvalue ;
  CONTAGERENCIALF := wwDBLookupCombo6.lookupvalue ;
  VENCIMENTOI := 0.0 ;
  VENCIMENTOF := 0.0 ;
  StrFiltro := '' ;
  if (NumeroI <> '') and (NumeroF <> '' ) then
     StrFiltro := ' CP No. de : ' +NumeroI + ' até ' + NumeroF ;
  if (FornecedorI <> '') and (FornecedorF <> '' ) then
     StrFiltro := StrFiltro + ' Fornecedor de : ' + FornecedorI + ' até ' + FornecedorF ;
  if (FilialI <> '') and (FilialF <> '' ) then
     StrFiltro := StrFiltro + ' Filial de : ' + FilialI + ' até ' + FilialF ;
  if (ContaGerencialI <> '') and (ContaGerencialF <> '' ) then
     StrFiltro := StrFiltro + ' Conta Gerencial de : ' + ContagerencialI + ' até ' + ContaGerencialF ;
  if maskedit1.text <> '  /  /    ' then
     VENCIMENTOI  := strtodate(maskedit1.text );
  if maskedit4.text <> '  /  /    ' then
     VENCIMENTOF   := strtodate(maskedit4.text );
  if VencimentoI <> 0.0 then
     StrFiltro := StrFiltro + ' Vencimento de : ' + formatdatetime('DD/MM/YYYY',VencimentoI) + ' até ' ;
  if VencimentoF <> 0.0 then
     StrFiltro := StrFiltro + formatdatetime('DD/MM/YYYY',VencimentoF) ;

  PAGAMENTOI := 0.0 ;
  PAGAMENTOF := 0.0 ;
  if MaskEdit2.text <> '  /  /    ' then
     PAGAMENTOI  := strtodate(maskedit2.text );
  if MaskEdit6.text <> '  /  /    ' then
     PAGAMENTOF  := strtodate(maskedit6.text );
  if PagamentoI <> 0.0 then
     StrFiltro := StrFiltro + ' Pagamento de : ' + formatdatetime('DD/MM/YYYY',PagamentoI) + ' até ' ;
  if PagamentoF <> 0.0 then
     StrFiltro := StrFiltro + formatdatetime('DD/MM/YYYY',PagamentoF) ;

  BANCOCONTAI := wwDBLookupCombo7.lookupvalue ;
  BANCOCONTAF := wwDBLookupCombo8.lookupvalue ;
  TIPO := PAG_SITU.itemindex ;
  if Tipo = 0 then StrFiltro := StrFiltro  + ' Situação : Pagos ' ;
  if Tipo = 1 then StrFiltro := StrFiltro  + ' Situação : A Pagar ' ;
  if Tipo = 2 then StrFiltro := StrFiltro  + ' Situação : Todos' ;

  case radiogroup1.itemindex of
    0 : rTipo := 0 ;
    1 : rTipo := 1 ;
    2 : rTipo := 2 ;
    3 : rTipo := 3 ;
    4 : rTipo := 4 ;
    5 : rTipo := 5 ;
    6 : rTipo := 6 ;
    7 : rTipo := 7 ;
    8 : rTipo := 8 ;
  end;

     Ordenacao := '' ;
     if RadioGroup1.itemindex = 1 then Ordenacao := '1' ;  // Conta Gerencial
     if RadioGroup1.itemindex = 2 then Ordenacao := '2' ;  // vencimento
     if RadioGroup1.itemindex = 3 then Ordenacao := '3' ;  // fornecedor
     if RadioGroup1.itemindex = 4 then Ordenacao := '4' ;  // centro de custo
     if RadioGroup1.itemindex = 5 then Ordenacao := '5' ;
     if RadioGroup1.itemindex = 6 then Ordenacao := '7' ;  // cp

  if (RadioGroup1.itemindex = 0) or (ComboBox1.itemindex = 2 ) then
  begin
     Application.Createform(TFLstPagtos, FLstPagtos);
     FLstPagtos.Lst_Pagtos.Preview ;
     FLstPagtos.close ;
     FLstPagtos.Release;
  end
  else
  begin
      if RadioGroup1.itemindex = 1 then begin
         if Combobox1.ItemIndex = 0 then begin
            Application.Createform(TFLstCGERAN, FLstCGERAN);
            FLstCGERAN.Lst_CGERAN.Preview ;
            FLstCGERAN.close ;
            FLstCGERAN.Release ;
            end
            else begin
            Application.Createform(TFLstCGERSINT, FLstCGERSINT);
            FLstCGERSINT.Lst_CGERSINT.Preview ;
            FLstCGERSINT.close ;
            FLstCGERSINT.Release;
         end;
      end;

      if RadioGroup1.itemindex = 2 then begin
         if Combobox1.ItemIndex = 0 then begin
            Application.Createform(TFLstVencimentosAn, FLstVencimentosAn);
            FLstVencimentosAn.Lst_Venc.Preview ;
            FLstVencimentosAn.close ;
            FLstVencimentosAn.Release;
            end
            else begin
            Application.Createform(TFLstVencimentosint, FLstVencimentosint);
            FLstVencimentosint.Lst_Venc.Preview ;
            FLstVencimentosint.close ;
            FLstVencimentosint.Release;
         end ;
      end;

      if RadioGroup1.itemindex = 3 then begin
         if Combobox1.ItemIndex = 0 then begin
            Application.Createform(TFLstFornAn, FLstFornAn);
            FLstFornAn.Lst_Forn.Preview ;
            FLstFornAn.close ;
            FLstFornAn.Release  ;
            end
            else begin
            Application.Createform(TFLstFornSint, FLstFornSint);
            FLstFornSint.Lst_Forn.Preview ;
            FLstFornSint.close ;
            FLstFornSint.Release;
         end;
      end;
      if RadioGroup1.itemindex = 4 then begin
         if Combobox1.ItemIndex = 0 then begin
            Application.Createform(TFLstCCUSAn, FLstCCUSAn);
            FLstCCUSAn.Lst_Ccus.Preview ;
            FLstCCUSAn.close ;
            FLstCCUSAn.Release  ;
            end
            else begin
            Application.Createform(TFLstCCUSint, FLstCCUSint);
            FLstCCUSint.Lst_CCUS.Preview ;
            FLstCCUSint.close ;
            FLstCCUSint.Release;
         end;
      end;

      if RadioGroup1.itemindex = 5 then begin
         if Combobox1.ItemIndex = 0 then begin
            Application.Createform(TFLstDTPGAN, FLstDTPGAN);
            FLstDTPGAN.Lst_DTPG.Preview ;
            FLstDTPGAN.close ;
            FLstDTPGAN.Release  ;
            end
            else begin
            Application.Createform(TFLstDTPGSint, FLstDTPGSint);
            FLstDTPGSint.Lst_DTPG.Preview ;
            FLstDTPGSint.close ;
            FLstDTPGSint.Release;
         end;
      end;

       if RadioGroup1.itemindex = 6 then begin
         if Combobox1.ItemIndex = 0 then begin
            Application.Createform(TFLstPagtos, FLstPagtos);
            FLstPagtos.Lst_Pagtos.Preview ;
            FLstPagtos.close ;
            FLstPagtos.Release;
            end
            else begin
            Application.Createform(TFLstPagtos, FLstPagtos);
            FLstPagtos.Lst_Pagtos.Preview ;
            FLstPagtos.close ;
            FLstPagtos.Release;
         end;
      end;
  end ;

  NUMEROI := '';
  NUMEROF := '';
  FORNECEDORI := '';
  FORNECEDORF := '';
  FILIALI :=  '';
  FILIALF := '';
  CONTAGERENCIALI := '';
  CONTAGERENCIALF := '';
  VENCIMENTOI := 0.0 ;
  VENCIMENTOF := 0.0 ;
  PAGAMENTOI := 0.0 ;
  PAGAMENTOF := 0.0 ;
  BANCOCONTAI := '';
  BANCOCONTAF := '';
  wwDBLookupCombo1.Lookupvalue :='' ;
  wwDBLookupCombo2.lookupvalue :='' ;
  wwDBLookupCombo3.lookupvalue :='' ;
  wwDBLookupCombo4.lookupvalue :='' ;
  wwDBLookupCombo5.lookupvalue :='' ;
  wwDBLookupCombo6.lookupvalue :='' ;
  wwDBLookupCombo7.lookupvalue :='' ;
  wwDBLookupCombo8.lookupvalue :='' ;

end ;
procedure TLst_Pagto_Filt.SpeedButton2Click(Sender: TObject);
begin
  NUMEROI := edit1.text;
  NUMEROF := edit2.text;
  FORNECEDORI := wwDBLookupCombo1.text;
  FORNECEDORF := wwDBLookupCombo2.text;
  FILIALI := wwDBLookupCombo3.lookupvalue ;
  FILIALF := wwDBLookupCombo4.lookupvalue ;
  CONTAGERENCIALI := wwDBLookupCombo5.lookupvalue ;
  CONTAGERENCIALF := wwDBLookupCombo6.lookupvalue ;
  VENCIMENTOI := 0.0 ;
  VENCIMENTOF := 0.0 ;
  if maskedit1.text <> '  /  /    ' then
     VENCIMENTOI  := strtodate(maskedit1.text );
  if maskedit4.text <> '  /  /    ' then
     VENCIMENTOF   := strtodate(maskedit4.text );
  PAGAMENTOI := 0.0 ;
  PAGAMENTOF := 0.0 ;
  if MaskEdit2.text <> '  /  /    ' then
     PAGAMENTOI  := strtodate(maskedit2.text );
  if MaskEdit6.text <> '  /  /    ' then
     PAGAMENTOF  := strtodate(maskedit6.text );
  BANCOCONTAI := wwDBLookupCombo7.lookupvalue ;
  BANCOCONTAF := wwDBLookupCombo8.lookupvalue ;
  TIPO := PAG_SITU.itemindex ;

  case radiogroup1.itemindex of
    0 : rTipo := 0 ;
    1 : rTipo := 1 ;
    2 : rTipo := 2 ;
    3 : rTipo := 3 ;
    4 : rTipo := 4 ;
    5 : rTipo := 5 ;
    6 : rTipo := 6 ;
    7 : rTipo := 7 ;
    8 : rTipo := 8 ;
  end ;

  if RadioGroup1.itemindex = 0 then begin
     Application.Createform(TFLstPagtos, FLstPagtos);
     FLstPagtos.Lst_Pagtos.Print;
     FLstPagtos.close ;
     FLstPagtos.Release;
  end;

  if RadioGroup1.itemindex = 1 then begin
     if Combobox1.ItemIndex = 0 then begin
        Application.Createform(TFLstCGERAN, FLstCGERAN);
        FLstCGERAN.Lst_CGERAN.Print ;
        FLstCGERAN.close ;
        FLstCGERAN.Release;
        end
        else begin
        Application.Createform(TFLstCGERSINT, FLstCGERSINT);
        FLstCGERSINT.Lst_CGERSINT.Print ;
        FLstCGERSINT.close ;
        FLstCGERSINT.Release;

     end;
  end;

  if RadioGroup1.itemindex = 2 then begin
     if Combobox1.ItemIndex = 0 then begin
        Application.Createform(TFLstVencimentosAn, FLstVencimentosAn);
        FLstVencimentosAn.Lst_Venc.Print ;
        FLstVencimentosAn.close ;
        FLstVencimentosAn.Release;
        end
        else begin
        Application.Createform(TFLstVencimentosint, FLstVencimentosint);
        FLstVencimentosint.Lst_Venc.Print ;
        FLstVencimentosint.close ;
        FLstVencimentosint.Release;
     end ;
  end;

  if RadioGroup1.itemindex = 3 then begin
     if Combobox1.ItemIndex = 0 then begin
        Application.Createform(TFLstFornAn, FLstFornAn);
        FLstFornAn.Lst_Forn.Print ;
        FLstFornAn.close ;
        FLstFornAn.Release;
        end
        else begin
        Application.Createform(TFLstFornSint, FLstFornSint);
        FLstFornSint.Lst_Forn.Print ;
        FLstFornSint.close ;
        FLstFornSint.Release;
     end;
  end;
  if RadioGroup1.itemindex = 4 then begin
     if Combobox1.ItemIndex = 0 then begin
        Application.Createform(TFLstCCUSAn, FLstCCUSAn);
        FLstCCUSAn.Lst_Ccus.Print ;
        FLstCCUSAn.close ;
        FLstCCUSAn.Release  ;
        end
        else begin
        Application.Createform(TFLstCCUSint, FLstCCUSint);
        FLstCCUSint.Lst_CCUS.Print ;
        FLstCCUSint.close ;
        FLstCCUSint.Release;
     end;
  end;
  if RadioGroup1.itemindex = 6 then begin
     if Combobox1.ItemIndex = 0 then begin
        Application.Createform(TFLstDTPGAN, FLstDTPGAN);
        FLstDTPGAN.Lst_DTPG.Print ;
        FLstDTPGAN.close ;
        FLstDTPGAN.Release  ;
        end
        else begin
        Application.Createform(TFLstDTPGSint, FLstDTPGSint);
        FLstDTPGSint.Lst_DTPG.Print ;
        FLstDTPGSint.close ;
        FLstDTPGSint.Release;
     end;
  end;

  if RadioGroup1.itemindex = 7 then begin
     if Combobox1.ItemIndex = 0 then begin
        Application.Createform(TFLstPagtos, FLstPagtos);
        FLstPagtos.Lst_Pagtos.Preview ;
        FLstPagtos.close ;
        FLstPagtos.Release;
        end
        else begin
        Application.Createform(TFLstPagtos, FLstPagtos);
        FLstPagtos.Lst_Pagtos.Preview ;
        FLstPagtos.close ;
        FLstPagtos.Release;
     end;
  end;

  NUMEROI := '';
  NUMEROF := '';
  FORNECEDORI := '';
  FORNECEDORF := '';
  FILIALI :=  '';
  FILIALF := '';
  CONTAGERENCIALI := '';
  CONTAGERENCIALF := '';
  VENCIMENTOI := 0.0 ;
  VENCIMENTOF := 0.0 ;
  PAGAMENTOI := 0.0 ;
  PAGAMENTOF := 0.0 ;
  BANCOCONTAI := '';
  BANCOCONTAF := '';
  wwDBLookupCombo1.Lookupvalue :='' ;
  wwDBLookupCombo2.lookupvalue :='' ;
  wwDBLookupCombo3.lookupvalue :='' ;
  wwDBLookupCombo4.lookupvalue :='' ;
  wwDBLookupCombo5.lookupvalue :='' ;
  wwDBLookupCombo6.lookupvalue :='' ;
  wwDBLookupCombo7.lookupvalue :='' ;
  wwDBLookupCombo8.lookupvalue :='' ;

end ;
procedure TLst_Pagto_Filt.SpeedButton3Click(Sender: TObject);
begin
  close ;
end;


procedure TLst_Pagto_Filt.FormCreate(Sender: TObject);
begin
  Q_CONT.open;
  Q_BANC.open;
  Q_PAGFORN.open;
  Q_FILI.open;
  PAG_SITU.ItemIndex    := 2 ;
  RadioGroup1.itemindex := 0  ;
  Combobox1.ItemIndex   := 2 ;
end;

procedure TLst_Pagto_Filt.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Q_CONT.close;
  Q_BANC.close;
  Q_PAGFORN.close;
  Q_FILI.close;
  action :=cafree;
end;

procedure TLst_Pagto_Filt.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if (Key = #13) then
     begin
       Key := #0;
       Perform(WM_Nextdlgctl,0,0);
     end;
end;

procedure TLst_Pagto_Filt.FormActivate(Sender: TObject);
begin
        CENTRO(Self,True);
end;

end.
