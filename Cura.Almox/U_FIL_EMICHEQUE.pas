unit U_FIL_EMICHEQUE;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, wwdblook, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Mask,
  wwdbedit, Wwdatsrc, Wwquery, Buttons;

type
  TForm2 = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    wwDBGrid1: TwwDBGrid;
    wwDBLookupCombo1: TwwDBLookupCombo;
    wwDBLookupCombo2: TwwDBLookupCombo;
    wwDBLookupCombo3: TwwDBLookupCombo;
    wwDBLookupCombo4: TwwDBLookupCombo;
    Q_TESTE: TwwQuery;
    DS_TESTE: TwwDataSource;
    Q_TESTEDOCUMENTO: TStringField;
    Q_TESTEVENCIMENTO: TDateTimeField;
    Q_TESTESALDO: TFloatField;
    Q_TESTEBANCOCONTA: TStringField;
    Q_TESTERAZAO: TStringField;
    SpeedButton1: TSpeedButton;
    Q_GRID: TQuery;
    Q_GRIDDOCUMENTO: TStringField;
    Q_GRIDVENCIMENTO: TDateTimeField;
    Q_GRIDBANCOCONTA: TStringField;
    Q_GRIDSALDO: TFloatField;
    DS_GRID: TDataSource;
    MaskEdit1: TMaskEdit;
    Q_GRIDRAZAO: TStringField;
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation
 USES LOTEPAGAMENTO ;
{$R *.DFM}

procedure TForm2.SpeedButton1Click(Sender: TObject);
VAR
STRAND : STRING ;
FORNECEDOR_INI : STRING ;
FORNECEDOR_FINAL : STRING ;
BCOCONTA_INI : STRING ;
BCOCONTA_FINAL : STRING ;
begin

STRAND := ' WHERE ' ;
FORNECEDOR_INI := WWDBLOOKUPCOMBO3.TEXT ;
FORNECEDOR_FINAL := WWDBLOOKUPCOMBO4.TEXT ;
BCOCONTA_INI := WWDBLOOKUPCOMBO1.TEXT ;
BCOCONTA_FINAL := WWDBLOOKUPCOMBO2.TEXT ;

Q_GRID.CLOSE ;
Q_GRID.SQL.CLEAR ;
Q_GRID.SQL.ADD ('SELECT  DOCUMENTO , RAZAO , VENCIMENTO , BANCOCONTA , SALDO FROM CPAPAGA');

 IF MASKEDIT1.TEXT <> '  /  /  ' THEN BEGIN
       Q_GRID.SQL.ADD ( STRAND + ' VENCIMENTO >= ' + ''''+ FormatDateTime('MM/DD/YYYY',strtodate(MASKEDIT1.text) ) + '''' );
       STRAND := ' AND ' ;
 END ;
                                   
IF WWDBLOOKUPCOMBO1.TEXT <> '' THEN BEGIN
        Q_GRID.SQL.ADD ( STRAND + 'BANCOCONTA >= ' + '''' + BCOCONTA_INI + '''') ;
        STRAND := ' AND ' ;
END ;

IF WWDBLOOKUPCOMBO2.TEXT <> '' THEN
        Q_GRID.SQL.ADD ( STRAND + 'BANCOCONTA <= ' + '''' + BCOCONTA_FINAL + '''') ;

IF WWDBLOOKUPCOMBO3.TEXT <> '' THEN BEGIN
        Q_GRID.SQL.ADD ( STRAND + 'RAZAO >= ' + '''' + FORNECEDOR_INI + '''') ;
        STRAND := 'AND ';
END ;

IF WWDBLOOKUPCOMBO4.TEXT <> '' THEN
        Q_GRID.SQL.ADD ( STRAND + 'RAZAO <= ' + '''' + FORNECEDOR_FINAL + '''') ;

        Q_GRID.OPEN ;
end;
end.
