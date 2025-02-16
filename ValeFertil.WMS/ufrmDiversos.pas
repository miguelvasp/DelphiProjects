unit ufrmDiversos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, Wwdbigrd, Wwdbgrid, Db, ADODB, RzTabs;

type
  TfrmDiversos = class(TForm)
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    TabSheet3: TRzTabSheet;
    qrParametros: TADOQuery;
    qrParametrosPAR_ID: TAutoIncField;
    qrParametrosPAR_NOME: TStringField;
    qrParametrosPAR_RAZA: TStringField;
    qrParametrosPAR_CNPJ: TStringField;
    qrParametrosPAR_INSC: TStringField;
    qrParametrosPAR_ENDERECO: TStringField;
    qrParametrosPAR_ENDERECO_COMPL: TStringField;
    qrParametrosPAR_ENDERECO_BAIRRO: TStringField;
    qrParametrosPAR_UF_SIGLA: TStringField;
    qrParametrosPAR_CEP: TStringField;
    qrParametrosPAR_TEL: TStringField;
    qrParametrosPAR_FAX: TStringField;
    qrParametrosPAR_EMAIL: TStringField;
    qrParametrosAR_ID: TIntegerField;
    qrParametrosMUN_ID: TIntegerField;
    qrParametrosAR_ID_OPER: TIntegerField;
    qrParametrosULT_TAG: TIntegerField;
    qrParametrosPALLET_M2: TFloatField;
    qrParametrosCO_SER_ID: TIntegerField;
    qrParametrosEN_SER_ID: TIntegerField;
    qrParametrosFLAGTELA: TStringField;
    qrParametrosFLAGTELA2: TStringField;
    qrParametrosFLAGTELA3: TStringField;
    qrParametrosCLIN_ID: TIntegerField;
    qrParametrosVERSAO: TStringField;
    qrParametrosFLAGTELA_USUARIO: TStringField;
    qrParametrosFLAGTELA_DATA: TDateTimeField;
    qrParametrosFLAGTELA2_USUARIO: TStringField;
    qrParametrosFLAGTELA2_DATA: TDateTimeField;
    qrParametrosPORTA: TIntegerField;
    qrParametrosHOST: TStringField;
    qrParametrosCAMINHO: TStringField;
    qrParametrosULT_FATURA: TIntegerField;
    qrParametrosULT_NF: TIntegerField;
    qrParametrosULT_CONH: TIntegerField;
    qrParametrosAR_ID_AVARIA: TIntegerField;
    qrParametrosULT_MINUTA: TIntegerField;
    qrParametrosULT_NFPROV: TIntegerField;
    qrParametrosULT_CONHPROV: TIntegerField;
    qrParametrosULT_MINUTAPROV: TIntegerField;
    qrParametrosCAMINHO_MATRICIAL: TStringField;
    qrParametrosCAMINHO_MATRICIAL_FATURA: TStringField;
    qrParametrosCAMINHO_MATRICIAL_CONH: TStringField;
    qrParametrosDATA: TDateTimeField;
    qrParametrosConnectionString: TStringField;
    qrParametrosIBGE_ID: TIntegerField;
    qrParametrosNUMERO: TIntegerField;
    qrParametrosLOGO: TBlobField;
    wwDBGrid1: TwwDBGrid;
    qrAux: TADOQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDiversos: TfrmDiversos;

implementation

uses UMenu;

{$R *.DFM}

end.
