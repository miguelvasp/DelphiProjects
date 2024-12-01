unit FiltEtiqueta;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Wwdatsrc, StdCtrls, Mask, DBTables, Wwquery, wwdblook, Buttons,
  Grids, Wwdbigrd, Wwdbgrid, ExtCtrls;

type
  TFEtiqueta = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    SBT_SELE: TSpeedButton;
    SBT_PESQ: TSpeedButton;
    SBT_SAIR: TSpeedButton;
    Memo1: TMemo;
    Label2: TLabel;
    DBLC_FOR_FEST: TwwDBLookupCombo;
    Q_CLIE: TwwQuery;
    Q_CLIECLI_APELIDO: TStringField;
    Q_CLIECLI_CODI: TAutoIncField;
    MaskEdit3: TMaskEdit;
    MaskEdit4: TMaskEdit;
    Label3: TLabel;
    Label8: TLabel;
    ComboBox1: TComboBox;
    Label4: TLabel;
    Q_ETIQ: TwwQuery;
    Q_ETIQREC_CODI: TIntegerField;
    Q_ETIQREC_NFIS: TStringField;
    Q_ETIQREC_VENC: TDateTimeField;
    Q_ETIQREC_VALO: TFloatField;
    Q_ETIQREC_RAZA: TStringField;
    Q_ETIQEtiqueta: TStringField;
    Q_ETIQREC_SALD: TFloatField;
    DS_Etiq: TwwDataSource;
    Label5: TLabel;
    Edit1: TEdit;
    Q_ETIQREC_CLIE: TIntegerField;
    wwDBGrid1: TwwDBGrid;
    wwDBGrid1IButton: TwwIButton;
    GroupBox1: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    Q_CLIECLI_RAZA: TStringField;
    Q_CLIECLI_CEND: TStringField;
    Q_CLIECLI_CMUN: TStringField;
    Q_CLIECLI_CCEP: TStringField;
    Q_CLIECLI_CEST: TStringField;
    Q_CLIECLI_FEND: TStringField;
    Q_CLIECLI_FMUN: TStringField;
    Q_CLIECLI_FCEP: TStringField;
    Q_CLIECLI_FEST: TStringField;
    procedure SBT_PESQClick(Sender: TObject);
    procedure SBT_SELEClick(Sender: TObject);
    procedure SBT_SAIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEtiqueta: TFEtiqueta;

implementation
uses cppmenu ;
{$R *.DFM}

procedure TFEtiqueta.SBT_PESQClick(Sender: TObject);
var StrAnd : string ;
begin
  StrAnd := ' Where ' ;

  Q_ETIQ.close ;
  Q_ETIQ.Sql.Clear ;
  Q_ETIQ.Sql.Add('select REC_CODI,REC_NFIS,REC_VENC,REC_VALO,REC_RAZA,Etiqueta,REC_SALD, REC_CLIE ' ) ;
  Q_ETIQ.Sql.Add('from CPARECE   ' )      ;
  if DBLC_FOR_FEST.text <> ''  then begin
     Q_ETIQ.Sql.Add(StrAnd + ' REC_CLIE = ' + Q_CLIECLI_CODI.asstring  ) ;
     StrAnd := ' and ' ;
  end ;
  if ComboBox1.ItemIndex = 0 then begin
     Q_ETIQ.Sql.Add(StrAnd + ' REC_SALD > 0 ' ) ;
     StrAnd := ' and ' ;
  end ;
  if ComboBox1.ItemIndex = 1 then begin
     Q_ETIQ.Sql.Add(StrAnd + ' REC_SALD = 0 ' ) ;
     StrAnd := ' and ' ;
  end ;
  if (Maskedit3.Text <> '  /  /  ') then Begin
     Q_ETIQ.SQL.Add(StrANd + ' REC_VENC >= ' + '''' + formatdatetime('YYYYMMDD',strtodate(Maskedit3.Text) )  + '''' ) ;
     StrAnd := ' and ' ;
  end ;
  if (Maskedit4.Text <> '  /  /  ') then Begin
     Q_ETIQ.SQL.Add(StrANd + ' REC_VENC  <= ' + '''' + formatdatetime('YYYYMMDD',strtodate(Maskedit4.Text) )  + '''' ) ;
     StrAnd := ' and ' ;
  end ;
  Q_ETIQ.Sql.Add('order by REC_NFIS ' ) ;
  Q_ETIQ.Open ;


end;

procedure TFEtiqueta.SBT_SELEClick(Sender: TObject);
var  F        : TextFile;
begin
       Assignfile(F,'LPT1');
//         Assignfile(F,'TESTE.TXT');
         Rewrite(F);

   Q_Etiq.First ;
   while not Q_ETiq.Eof do begin
     if Q_EtiqEtiqueta.asstring = 'S' then begin
        Q_CLIE.Close;
        Q_CLIE.Sql.Clear ;
        Q_CLIE.Sql.Add('select CLI_APELIDO,CLI_CODI, CLI_RAZA, ');
        Q_CLIE.Sql.Add('CLI_CEND,CLI_CMUN,CLI_CCEP,CLI_CEST, ');
        Q_CLIE.Sql.Add('CLI_FEND,CLI_FMUN,CLI_FCEP,CLI_FEST ');
        Q_CLIE.Sql.Add(' from CPACLIE ');
        Q_CLIE.sql.Add(' where CLI_CODI = '+ Q_EtiqREC_CLIE.asstring ) ;
        Q_CLIE.Open ;


         Writeln(F,Q_CLIECLI_RAZA.asstring );
         if (CheckBox2.checked) then begin
            Writeln(F,Q_CLIECLI_FEND.asstring );
            Writeln(F,Q_CLIECLI_FMUN.asstring  + '    '+ Q_CLIECLI_FEST.asstring + '  Cep '+ Q_CLIECLI_FCEP.asstring);
         end else begin
            Writeln(F,Q_CLIECLI_CEND.asstring );
            Writeln(F,Q_CLIECLI_CMUN.asstring  + '    '+ Q_CLIECLI_CEST.asstring + '  Cep '+ Q_CLIECLI_CCEP.asstring);
         end ;
         Writeln(F,edit1.text);
         Writeln(F,'') ;
         Writeln(F,'') ;
         Q_Etiq.Edit ;
         Q_EtiqEtiqueta.asstring := 'N' ;
         Q_Etiq.post ;
       end ;
      Q_ETIQ.next ;
    end ;
    CloseFile(F);
    Q_CLIE.close ;
    Q_CLIE.Sql.clear ;
    Q_CLIE.Sql.Add('select CLI_APELIDO,CLI_CODI, CLI_RAZA, ');
    Q_CLIE.Sql.Add('CLI_CEND,CLI_CMUN,CLI_CCEP,CLI_CEST, ');
    Q_CLIE.Sql.Add('CLI_FEND,CLI_FMUN,CLI_FCEP,CLI_FEST  ');
    Q_CLIE.Sql.Add(' from CPACLIE ');
    Q_CLIE.Sql.Add('order by CLI_APELIDO ');
    Q_CLIE.Open ;
end;

procedure TFEtiqueta.SBT_SAIRClick(Sender: TObject);
begin
  close ;
end;

procedure TFEtiqueta.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Q_ETIQ.Close ;
  Q_CLIE.close ;
end;

procedure TFEtiqueta.FormCreate(Sender: TObject);
begin
   Q_CLIE.Open ;
   ComboBox1.ItemIndex := 0 ;
end;

procedure TFEtiqueta.CheckBox1Click(Sender: TObject);
begin
  if checkbox1.checked then checkbox2.checked := false ;
end;

procedure TFEtiqueta.CheckBox2Click(Sender: TObject);
begin
  if checkbox2.checked then checkbox1.checked := false ;
end;

procedure TFEtiqueta.FormKeyPress(Sender: TObject; var Key: Char);
begin
     if (Key = #13) then
        begin
//             Key := #0;
             Perform(WM_Nextdlgctl,0,0);
        end;
end;

procedure TFEtiqueta.FormActivate(Sender: TObject);
begin
//        CENTRO(Self,False);
end;

end.
