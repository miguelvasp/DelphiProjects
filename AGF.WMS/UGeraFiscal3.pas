unit UGeraFiscal3;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, StdCtrls, ExtCtrls, FileCtrl, ComCtrls, Db, DBTables, Wwquery,
  Wwdatsrc;

type
  TFGeraFiscal3 = class(TForm)
    Panel1: TPanel;
    Label4: TLabel;
    btnFechar: TSpeedButton;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    DriveComboBox1: TDriveComboBox;
    DirectoryListBox1: TDirectoryListBox;
    Label3: TLabel;
    Label1: TLabel;
    ProgressBar1: TProgressBar;
    Q_AUXEST: TwwQuery;
    Q_ESTOQUE: TwwQuery;
    Q_NF: TwwQuery;
    Q_ESTOQUEPRO_ID: TAutoIncField;
    Q_ESTOQUEPRO_COD: TStringField;
    Q_ESTOQUEPRO_DESC: TStringField;
    DS_ESTOQUE: TwwDataSource;
    Q_ESTOQUEVAVA: TFloatField;
    Q_ESTOQUEVTOT: TFloatField;
    Q_NFNFI_CODI: TAutoIncField;
    Q_NFNFI_NUMERO: TStringField;
    Q_NFNFI_DEMI: TDateTimeField;
    Q_NFNBFINAL_COD_CLIN: TStringField;
    Q_NFCLIF_RAZA: TStringField;
    Q_NFNFI_TOTA: TFloatField;
    Q_NFNFI_PBRU: TFloatField;
    Q_NFNFI_VOL: TFloatField;
    Q_NFNFI_QTDEPALLET: TIntegerField;
    Q_NFNFI_QTDEUV: TFloatField;
    procedure btnFecharClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FGeraFiscal3: TFGeraFiscal3;
  F : TextFile;

implementation

{$R *.DFM}

procedure TFGeraFiscal3.btnFecharClick(Sender: TObject);
begin
   close;
end;

procedure TFGeraFiscal3.BitBtn1Click(Sender: TObject);
const
branco = ' ';
var
caminho : string;
x : integer;
i : integer;
begin
   Q_ESTOQUE.Open;
   ProgressBar1.Position := 10;
   Q_NF.Open;
   ProgressBar1.Position := 20;
   Q_AUXEST.Open;
   ProgressBar1.Position := 30;

   ProgressBar1.Max := Q_ESTOQUE.RecordCount + Q_NF.recordcount + 50;

   caminho := DirectoryListBox1.Directory +'\est_cd_sbo_52191.txt';

   AssignFile(F,caminho);
   Rewrite(F);
   ProgressBar1.Position := 40;
   x := ProgressBar1.Position;
   while not Q_ESTOQUE.eof do
   begin
        x := x + 10;
        Write(F,copy(Q_ESTOQUEPRO_DESC.asstring,0,40));
        for i := length(copy(Q_ESTOQUEPRO_DESC.asstring,0,40)) to 39 do
                Write(F, branco);
        Write(F, chr(09));

        Write(F,copy(Q_ESTOQUEPRO_COD.asstring,0,10));
        for i := length(copy(Q_ESTOQUEPRO_COD.asstring,0,10)) to 9 do
                Write(F, branco);
        Write(F, chr(09));

        Write(F,formatfloat('000,000,000.00',Q_ESTOQUEVAVA.asfloat));
        Write(F, chr(09));

        Writeln(F,formatfloat('000,000,000.00',Q_ESTOQUEVTOT.asfloat));

        ProgressBar1.position := x;

        Q_ESTOQUE.Next;
   end;
   CloseFile(F);

   caminho := DirectoryListBox1.Directory +'\nf_cd_sbo_52191.txt';

   AssignFile(F,caminho);
   Rewrite(F);
   ProgressBar1.Position := x + 10;
   While not Q_NF.eof do
   begin
        x := x + 10;
        Write(F,copy(Q_NFNFI_NUMERO.asstring,0,10));
        for i := length(copy(Q_NFNFI_NUMERO.asstring,0,10)) to 9 do
                Write(F, branco);
        Write(F, chr(09));

        Write(F,Q_NFNFI_DEMI.displaytext);
        Write(F, chr(09));

        Write(F,copy(Q_NFNBFINAL_COD_CLIN.asstring,0,10));
        for i := length(copy(Q_NFNBFINAL_COD_CLIN.asstring,0,10)) to 9 do
                Write(F, branco);
        Write(F, chr(09));

        Write(F,copy(Q_NFCLIF_RAZA.asstring,0,50));
        for i := length(copy(Q_NFCLIF_RAZA.asstring,0,50)) to 49 do
                Write(F, branco);
        Write(F, chr(09));

        Write(F,formatfloat('000,000,000.00',Q_NFNFI_TOTA.asfloat));
        Write(F, chr(09));

        Write(F,formatfloat('00,000,000.000',Q_NFNFI_PBRU.asfloat));
        Write(F, chr(09));

        Write(F,formatfloat('00,000,000,000',Q_NFNFI_QTDEPALLET.asfloat));
        Write(F, chr(09));

        Writeln(F,formatfloat('000,000,000.00',Q_NFNFI_QTDEUV.asfloat));

        ProgressBar1.position := x;

        Q_NF.Next;
   end;
   CloseFile(F);

   MessageDlg('Arquivos gerados com sucesso!', mtInformation, [mbok], 0);
   ProgressBAr1.Position := 0;
end;

procedure TFGeraFiscal3.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Q_ESTOQUE.Close;
   Q_NF.Close;
   Q_AUXEST.Close;
end;

end.
