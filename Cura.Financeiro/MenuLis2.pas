unit MenuLis2;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, 
  Buttons, ExtCtrls, wwdblook, Mask, wwdbedit, Db, DBTables, Wwquery;

type
  TFMenuList2 = class(TForm)
    RDG_ORDE: TRadioGroup;
    GRB_FILT: TGroupBox;
    Label1: TLabel;
    Label3: TLabel;
    SBT_VISU: TSpeedButton;
    SBT_IMPR: TSpeedButton;
    SBT_SAIR: TSpeedButton;
    RDG_SELEC: TRadioGroup;
    Label2: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Label4: TLabel;
    Panel1: TPanel;
    RadioGroup1: TRadioGroup;
    DBLC_PRO_MARC: TwwDBLookupCombo;
    wwDBLookupCombo1: TwwDBLookupCombo;
    wwDBLookupCombo2: TwwDBLookupCombo;
    Q_CLIE: TwwQuery;
    Q_CLIECLI_APELIDO: TStringField;
    Q_FORN: TwwQuery;
    Q_FORNFOR_CODI: TStringField;
    Label6: TLabel;
    wwDBLookupCombo3: TwwDBLookupCombo;
    Label7: TLabel;
    Q_RAMO: TwwQuery;
    Q_RAMORAT_CODI: TStringField;
    Q_RAMORAT_DESC: TStringField;
    Label9: TLabel;
    MaskEdit3: TMaskEdit;
    Label10: TLabel;
    MaskEdit4: TMaskEdit;
    CheckBox1: TCheckBox;
    Q_CLIECLI_CODI: TAutoIncField;
    Label11: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label12: TLabel;
    Q_CLIEETIQ: TwwQuery;
    Q_CLIEETIQCLI_RAZA: TStringField;
    Q_CLIEETIQCLI_FEND: TStringField;
    Q_CLIEETIQCLI_FMUN: TStringField;
    Q_CLIEETIQCLI_FEST: TStringField;
    Q_CLIEETIQCLI_FCEP: TStringField;
    Q_CLIEETIQCLI_CEND: TStringField;
    Q_CLIEETIQCLI_CMUN: TStringField;
    Q_CLIEETIQCLI_CEST: TStringField;
    Q_CLIEETIQCLI_CCEP: TStringField;
    Q_FORNETIQ: TwwQuery;
    Q_FORNETIQFOR_CODI: TStringField;
    Q_FORNETIQFOR_RAZA: TStringField;
    Q_FORNETIQFOR_ENDE: TStringField;
    Q_FORNETIQFOR_MUNI: TStringField;
    Q_FORNETIQFOR_ESTA: TStringField;
    Q_FORNETIQFOR_CEP: TStringField;
    Label8: TLabel;
    Edit3: TEdit;
    Label13: TLabel;
    MaskEdit5: TMaskEdit;
    MaskEdit6: TMaskEdit;
    Label14: TLabel;
    procedure SBT_SAIRClick(Sender: TObject);
    procedure SBT_VISUClick(Sender: TObject);
    procedure SBT_IMPRClick(Sender: TObject);
    procedure ED_CODIEnter(Sender: TObject);
    procedure ED_CODIExit(Sender: TObject);
    procedure ED_CODFExit(Sender: TObject);
    procedure RDG_SELECExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure GeraEtiqueta(Sender: TObject);
    procedure GeraEtiquetaForn(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMenuList2: TFMenuList2;

implementation

uses CppMenu, ListForn, ListFor2, Listclie,ListCli2;

{$R *.DFM}

procedure TFMenuList2.SBT_SAIRClick(Sender: TObject);
begin
  FMenuList2.Close;
end;

procedure TFMenuList2.SBT_VISUClick(Sender: TObject);
begin
     if (MyList = 'FORN') then
      begin
         if (RDG_SELEC.ItemIndex = 0) then
           begin
             Application.CreateForm(TList_Forn,List_Forn);
             List_Forn.QR_FORN.Preview;
             List_Forn.Close;
           end
         else
           begin
            if (RDG_SELEC.ItemIndex = 1) then begin
                Application.CreateForm(TListForn2,ListForn2);
                ListForn2.QR_FORN.Preview ;
                ListForn2.Close;
            end else begin
               GeraEtiquetaForn(self) ;
            end ;
           end;
      end;
     if (MyList = 'CLIE') then
      begin
         if (RDG_SELEC.ItemIndex = 0) then
           begin
             Application.CreateForm(TList_Clie,List_Clie);
             List_Clie.QR_CLIE.Preview;
             List_Clie.Close;
           end
         else
           begin
             if (RDG_SELEC.ItemIndex = 1) then begin
                   Application.CreateForm(TListClie2,ListClie2);
                   ListClie2.QR_CLIE.Preview;
                   ListClie2.Close;
             end else begin
                 GeraEtiqueta(self) ;
             end ;
           end;
      end;
 end;

procedure TFMenuList2.SBT_IMPRClick(Sender: TObject);
begin
     if (MyList = 'FORN') then
      begin
         if (RDG_SELEC.ItemIndex = 0) then
           begin
             Application.CreateForm(TList_Forn,List_Forn);
             List_Forn.QR_FORN.Print ;
             List_Forn.Close;
           end
         else
           begin
              if (RDG_SELEC.ItemIndex = 1) then begin
                Application.CreateForm(TListForn2,ListForn2);
                ListForn2.QR_FORN.Print ;
                ListForn2.Close;
              end else begin
                GeraEtiquetaForn(self) ;
              end ;
           end;
      end;
     if (MyList = 'CLIE') then
      begin
         if (RDG_SELEC.ItemIndex = 0) then
           begin
             Application.CreateForm(TList_Clie,List_Clie);
             List_Clie.QR_CLIE.Print ;
             List_Clie.Close;
           end
         else
           begin
             if (RDG_SELEC.ItemIndex = 1) then begin
                   Application.CreateForm(TListClie2,ListClie2);
                   ListClie2.QR_CLIE.Print ;
                   ListClie2.Close;
             end else begin
                 GeraEtiqueta(self) ;
             end ;
           end;
      end;
end;

procedure TFMenuList2.ED_CODIEnter(Sender: TObject);
begin
     (Sender as TEdit).Color := ClAqua;
end;

procedure TFMenuList2.ED_CODIExit(Sender: TObject);
begin
   (Sender as TEdit).Color := ClWindow;
end;

procedure TFMenuList2.ED_CODFExit(Sender: TObject);
begin
   (Sender as TEdit).Color := ClWindow;
end;

procedure TFMenuList2.RDG_SELECExit(Sender: TObject);
begin
//  if (RDG_SELEC.itemindex = 2) and ( MyList = 'CLIE') then panel1.enabled := true
//  else panel1.enabled := false ;
end;

procedure TFMenuList2.FormCreate(Sender: TObject);
begin
  wwDBLookupCombo1.lookupvalue := '' ;
  wwDBLookupCombo2.lookupvalue := '' ;

  if (MyList = 'CLIE') then begin
     wwDBLookupCombo1.Selected.CLEAR ;
     wwDBLookupCombo1.Selected.ADD('CLI_APELIDO'#9'20'#9'Cliente'#9'F') ;
     wwDBLookupCombo1.lookuptable := Q_CLIE;
     wwDBLookupCombo1.lookupfield := 'CLI_CODI';
     wwDBLookupCombo2.Selected.CLEAR ;
     wwDBLookupCombo2.Selected.ADD('CLI_APELIDO'#9'20'#9'Cliente'#9'F') ;
     wwDBLookupCombo2.lookuptable := Q_CLIE;
     wwDBLookupCombo2.lookupfield := 'CLI_CODI';
     Q_CLIE.OPen ;
     Q_RAMO.Open ;
  end else begin
     wwDBLookupCombo1.Selected.clear;
     wwDBLookupCombo1.Selected.ADD('FOR_CODI'#9'20'#9'Fornecedor'#9'F') ;
     wwDBLookupCombo1.lookuptable := Q_FORN;
     wwDBLookupCombo1.lookupfield := 'FOR_CODI';
     wwDBLookupCombo2.Selected.clear;
     wwDBLookupCombo2.Selected.ADD('FOR_CODI'#9'20'#9'Fornecedor'#9'F') ;
     wwDBLookupCombo2.lookuptable := Q_FORN;
     wwDBLookupCombo2.lookupfield := 'FOR_CODI';
     Q_FORN.open  ;
  end ;
end;

procedure TFMenuList2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Q_CLIE.close;
  Q_FORN.Close;
  Q_RAMO.Close;

end;
procedure TFMenuList2.GeraEtiqueta(Sender: TObject);
var StrANd : string ;
    F        : TextFile;
begin
  StrAnd := ' Where ';
  Q_CLIEETIQ.Close;
  Q_CLIEETIQ.Sql.Clear ;
  Q_CLIEETIQ.Sql.Add('select CLI_RAZA, CLI_FEND,CLI_FMUN,CLI_FEST,CLI_FCEP,CLI_CEND,CLI_CMUN,CLI_CEST,CLI_CCEP  ') ;
  Q_CLIEETIQ.Sql.Add('from CPACLIE ') ;

  if wwDBLookupCombo1.text <>  '' then begin
     Q_CLIEETIQ.Sql.Add(StrAnd + 'CLI_APELIDO >= '+ ''''+ wwDBLookupCombo1.text + '''' ) ;
     StrAnd := ' and ' ;
  end ;
  if wwDBLookupCombo2.text <>  '' then begin
     Q_CLIEETIQ.Sql.Add(StrAnd + 'CLI_APELIDO <= '+ ''''+ wwDBLookupCombo2.text + '''' ) ;
     StrAnd := ' and ' ;
  end ;
  if Maskedit1.text <>  '  /  /  ' then begin
     Q_CLIEETIQ.Sql.Add(StrAnd + 'CLI_UCOM >= '+ ''''+ formatdatetime('MM/DD/YYYY',strtodate(Maskedit1.text))  + '''' ) ;
     StrAnd := ' and ' ;
  end ;
  if Maskedit2.text <>  '  /  /  ' then begin
     Q_CLIEETIQ.Sql.Add(StrAnd + 'CLI_UCOM <= '+ ''''+ formatdatetime('MM/DD/YYYY',strtodate(Maskedit2.text))  + '''' ) ;
     StrAnd := ' and ' ;
  end ;

  if (Edit1.text <>  '') or (Edit2.text <>  '') or (Maskedit3.text <> '  /  /  ')  or (Maskedit4.text <> '  /  /  ' ) then begin
      Q_CLIEETIQ.Sql.Add(StrAnd + 'CLI_CODI in ( select CLI_CODI from Fatura where Fatura.CLI_CODI = CPACLIE.CLI_CODI ') ;
      if (Edit1.text <>  '') then begin
            Q_CLIEETIQ.Sql.Add(' and Quebra >= ' + '''' + Edit1.text + '''' ) ;
          if (Edit2.text <>  '') then
               Q_CLIEETIQ.Sql.Add(' and Quebra <= ' + '''' + Edit2.text + '''' ) ;
      end else begin
          if (Edit2.text <>  '') then begin
//                Q_CLIEETIQ.Sql.Add(StrAnd + 'CLI_CODI in ( select CLI_CODI from Fatura where Fatura.CLI_CODI = CPACLIE.CLI_CODI ') ;
                Q_CLIEETIQ.Sql.Add(' and Quebra <= ' + '''' + Edit2.text + '''' ) ;
          end ;
      end ;
      if (Maskedit3.text <> '  /  /  ') then
         Q_CLIEETIQ.Sql.Add(' and convert(char(10),Fat_Vencto,112) >= '+ ''''+ formatdatetime('YYYYMMDD', strtodate(Maskedit3.text)) + '''') ;
      if (Maskedit4.text <> '  /  /  ') then
         Q_CLIEETIQ.Sql.Add(' and convert(char(10),Fat_Vencto,112) <= '+ ''''+ formatdatetime('YYYYMMDD', strtodate(Maskedit4.text)) + '''') ;
      Q_CLIEETIQ.Sql.Add(' ) ') ;
  end ;
  Q_CLIEETIQ.Sql.Add('order by CLI_APELIDO ') ;
  Q_CLIEETIQ.Open ;

   Assignfile(F,'LPT1');
//   Assignfile(F,'TESTE.TXT');
   Rewrite(F);

   while not Q_CLIEETIQ.Eof do  begin
     Writeln(F,Q_CLIEETIQCLI_RAZA.asstring );
     if (RDG_SELEC.ItemIndex = 3) then begin
        Writeln(F,Q_CLIEETIQCLI_FEND.asstring );
        Writeln(F,Q_CLIEETIQCLI_FMUN.asstring  + '    '+ Q_CLIEETIQCLI_FEST.asstring + '  Cep '+ Q_CLIEETIQCLI_FCEP.asstring);
     end else begin
        Writeln(F,Q_CLIEETIQCLI_CEND.asstring );
        Writeln(F,Q_CLIEETIQCLI_CMUN.asstring  + '    '+ Q_CLIEETIQCLI_CEST.asstring + '  Cep '+ Q_CLIEETIQCLI_CCEP.asstring);
     end ;
     Writeln(F,edit3.text);
     Writeln(F,'') ;
     Writeln(F,'') ;
     Q_CLIEETIQ.next ;
   end ;

   Q_CLIEETIQ.close ;
   CloseFile(F);
 end ;

procedure TFMenuList2.GeraEtiquetaForn(Sender: TObject);
var StrANd : string ;
    F        : TextFile;
begin
  StrAnd := ' Where ';
  Q_FORNETIQ.Close;
  Q_FORNETIQ.Sql.Clear ;
  Q_FORNETIQ.Sql.Add('  select FOR_CODI,FOR_RAZA,FOR_ENDE,FOR_MUNI,FOR_ESTA, ');
  Q_FORNETIQ.Sql.Add('FOR_CEP ');
  Q_FORNETIQ.Sql.Add(' from CPAFORN ') ;
  if wwDBLookupCombo1.text <>  '' then begin
     Q_FORNETIQ.Sql.Add(StrAnd + 'FOR_CODI >= '+ ''''+ wwDBLookupCombo1.text + '''' ) ;
     StrAnd := ' and ' ;
  end ;
  if wwDBLookupCombo2.text <>  '' then begin
     Q_FORNETIQ.Sql.Add(StrAnd + 'FOR_CODI <= '+ ''''+ wwDBLookupCombo2.text + '''' ) ;
     StrAnd := ' and ' ;
  end ;
  if Maskedit1.text <>  '  /  /  ' then begin
     Q_FORNETIQ.Sql.Add(StrAnd + 'FOR_UCOM >= '+ ''''+ formatdatetime('MM/DD/YYYY',strtodate(Maskedit1.text))  + '''' ) ;
     StrAnd := ' and ' ;
  end ;
  if Maskedit2.text <>  '  /  /  ' then begin
     Q_FORNETIQ.Sql.Add(StrAnd + 'FOR_UCOM <= '+ ''''+ formatdatetime('MM/DD/YYYY',strtodate(Maskedit2.text))  + '''' ) ;
     StrAnd := ' and ' ;
  end ;
  Q_FORNETIQ.Sql.Add('order by FOR_CODI ') ;
  Q_FORNETIQ.Open ;

   Assignfile(F,'LPT1');
//   Assignfile(F,'TESTE.TXT');
   Rewrite(F);

   while not Q_FORNETIQ.Eof do  begin
     Writeln(F,Q_FORNETIQFOR_RAZA.asstring );
     Writeln(F,Q_FORNETIQFOR_ENDE.asstring );
     Writeln(F,Q_FORNETIQFOR_MUNI.asstring  + '    '+ Q_FORNETIQFOR_ESTA.asstring + '  Cep '+ Q_FORNETIQFOR_CEP.asstring);
     Writeln(F,edit3.text);
     Writeln(F,'') ;
     Writeln(F,'') ;
     Q_FORNETIQ.next ;
   end ;

   Q_FORNETIQ.close ;
   CloseFile(F);
 end ;

procedure TFMenuList2.FormShow(Sender: TObject);
begin
  if (MyList = 'CLIE') then begin
    Panel1.visible := true ;
  end else begin
    Panel1.visible := false ;
  end ;

end;

procedure TFMenuList2.FormActivate(Sender: TObject);
begin
        CENTRO(Self,True);
end;

end.



