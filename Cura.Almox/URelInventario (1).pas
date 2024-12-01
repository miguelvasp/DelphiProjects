unit URelInventario;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, Qrctrls, jpeg, ExtCtrls, Db, DBTables, Wwquery, Wwdatsrc;

type
  TFRelInventario = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRShape1: TQRShape;
    QRLabel4: TQRLabel;
    QRLabel1: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel3: TQRLabel;
    QRShape4: TQRShape;
    QRLabel5: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel6: TQRLabel;
    QRShape3: TQRShape;
    QRMemo1: TQRMemo;
    QRLabel12: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    DS_INV: TwwDataSource;
    DS_ITEMS: TwwDataSource;
    Q_ITENS: TwwQuery;
    Q_ITENSInv_ID: TAutoIncField;
    Q_ITENSNum_Inv: TIntegerField;
    Q_ITENSData: TDateTimeField;
    Q_ITENSMaterial_ID: TIntegerField;
    Q_ITENSFornecedor_ID: TIntegerField;
    Q_ITENSN_Lote: TStringField;
    Q_ITENSQtde_Almox: TFloatField;
    Q_ITENSQtde_Inv: TFloatField;
    Q_ITENSTipo: TStringField;
    Q_ITENSUsuario: TStringField;
    Q_ITENSDt_Alt: TDateTimeField;
    Q_ITENSStatus: TStringField;
    Q_ITENSDESCRICAO: TStringField;
    Q_ITENSFANTASIA: TStringField;
    Q_ITENSQtdeCalc: TFloatField;
    Q_INV: TwwQuery;
    Q_INVDATA: TDateTimeField;
    Q_INVNUM_INV: TIntegerField;
    Q_ITENSUNIDADE_ID: TStringField;
    QRGroup1: TQRGroup;
    QRLabel18: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel14: TQRLabel;
    QRDBText10: TQRDBText;
    Q_ITENSVALOR: TFloatField;
    QRDBText12: TQRDBText;
    Q_ITENSCusto_Medio_Inv: TFloatField;
    QRBand2: TQRBand;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRLabel13: TQRLabel;
    QRShape2: TQRShape;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRImage1: TQRImage;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Q_ITENSCalcFields(DataSet: TDataSet);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelInventario: TFRelInventario;

implementation

USES UPrepInv;
{$R *.DFM}

procedure TFRelInventario.FormCreate(Sender: TObject);
VAR SQL : String;
    SQLX: String;
begin
        qrmemo1.lines.clear;
        qrmemo1.lines.add(strfiltro) ;

        SQL:= 'SELECT   MIN(DATA)    DATA, ' +
	      '         MIN(NUM_INV) NUM_INV ' +
              ' FROM    INV  ' +
              ' WHERE   NUM_INV = ' + NINV ;



        SQLX:=  ' SELECT        I.*, ' +
                '               MAT.DESCRICAO, ' +
	        '               FORN.FANTASIA,  ' +
	        '               MAT.UNIDADE_ID, ' +
                '               ROUND(I.QTDE_INV,2) * ROUND(I.CUSTO_MEDIO_INV,2) AS VALOR ' +
                ' FROM          INV I, ' +
	        '               MATERIAIS MAT,  ' +
	        '               FORNECEDORES FORN   ' +
                ' WHERE         I.MATERIAL_ID = MAT.MATERIAL_ID  ' +
                ' AND           I.FORNECEDOR_ID = FORN.FORNECEDOR_ID   ' +
                ' AND           I.NUM_INV = :NUM_INV  ' ;



        if  FORN <> '' THEN
                SQLX:= SQLX + ' AND         I.FORNECEDOR_ID = ' + FORN;

        if  GRUPO <> '' THEN
                SQLX:= SQLX + ' AND         MAT.MATERIAIS_GRUPO_ID = ' + GRUPO;

         if MAT <> '' THEN
                SQLX:= SQLX + ' AND         MAT.MATERIAL_ID = ' + MAT;


         if LOTE <> '' THEN
                SQLX:= SQLX +  ' AND         I.N_LOTE = ' + '''' + LOTE + '''';



        If DIF = TRUE Then begin
           SQLX:= SQLX + ' AND  ABS(QTDE_INV - QTDE_ALMOX) > 0.0001 ';
           QRLabel3.Caption := 'Só os que tenham diferença';

        end;

        SQLX:= SQLX + ' ORDER BY I.NUM_INV, MAT.DESCRICAO ';

        Q_INV.Close;
        Q_INV.SQL.Clear;
        Q_INV.SQL.Add(SQL);
        Q_INV.Open;



        Q_ITENS.Close;
        Q_ITENS.SQL.Clear;
        Q_ITENS.SQL.Add(SQLX);
        Q_ITENS.Open;

end;

procedure TFRelInventario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        Q_INV.CLOSE;
        Q_ITENS.CLOSE;
end;

procedure TFRelInventario.Q_ITENSCalcFields(DataSet: TDataSet);
begin
       If Q_ITENSQtde_Inv.AsString <> '' then
        Begin

           If Q_ITENSQtde_Inv.AsFloat = 0.00 then
                Q_ITENSQtdeCalc.AsFloat := -Q_ITENSQtde_Almox.AsFloat
           ELSE
            Q_ITENSQtdeCalc.AsFloat := Q_ITENSQtde_Inv.AsFloat - Q_ITENSQtde_Almox.AsFloat;


   END;
end;

procedure TFRelInventario.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   { if  Q_ITENSTipo.AsString = 'A' Then
        QRLabel19.Caption:= 'Automático'
    Else
        QRLabel19.caption:= 'Manual';

                                   }
    if  Q_ITENSStatus.AsString = 'A' THEN
        QRLabel18.Caption:= 'Aberto'
    else if Q_ITENSStatus.AsString = 'G' then
        QRLabel18.Caption:= 'Gerado'
        else
        QRLabel18.Caption:= 'Erro';
end;

end.
