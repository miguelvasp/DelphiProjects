unit ConsultasPagamentos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd, Wwdbgrid;

type
  TFConsPagtos = class(TForm)
    wwDBGrid1: TwwDBGrid;
    Q_Consultas: TwwQuery;
    DS_Consultas: TwwDataSource;
    Q_ConsultasNumero: TIntegerField;
    Q_ConsultasDocumento: TStringField;
    Q_ConsultasFornecedor: TStringField;
    Q_ConsultasRazao: TStringField;
    Q_ConsultasContaGerencial: TStringField;
    Q_ConsultasValorTitulo: TFloatField;
    Q_ConsultasDescAcresc: TFloatField;
    Q_ConsultasValorLiquido: TFloatField;
    Q_ConsultasVencimento: TDateTimeField;
    Q_ConsultasBancoConta: TStringField;
    Q_ConsultasEmissao: TDateTimeField;
    Q_ConsultasMoeda: TStringField;
    Q_ConsultasDataMoeda: TDateTimeField;
    Q_ConsultasMoedaOriginal: TStringField;
    Q_ConsultasDataMoedaOriginal: TDateTimeField;
    Q_ConsultasValorOriginal: TFloatField;
    Q_ConsultasVencimentoPrevisto: TDateTimeField;
    Q_ConsultasHistorico: TStringField;
    Q_ConsultasFlag: TStringField;
    Q_ConsultasSituacao: TStringField;
    Q_ConsultasSaldo: TFloatField;
    Q_ConsultasFIL_DESC: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConsPagtos: TFConsPagtos;

implementation

{$R *.DFM}

end.
