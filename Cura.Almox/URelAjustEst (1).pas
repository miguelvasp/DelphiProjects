unit URelAjustEst;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Db, DBTables, Wwquery, Wwdatsrc, Qrctrls, jpeg;

type
  TFRelAjustEst = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel37: TQRLabel;
    QRBand2: TQRBand;
    QRLabel1: TQRLabel;
    DS_ALMOX: TwwDataSource;
    Q_ALMOX: TwwQuery;
    Q_ALMOXMATERIAL: TStringField;
    Q_ALMOXAlmox_ID: TAutoIncField;
    Q_ALMOXAlmox_ID_Mestre: TIntegerField;
    Q_ALMOXLocal_ID: TIntegerField;
    Q_ALMOXQtde: TFloatField;
    Q_ALMOXQtde_Retirada: TFloatField;
    Q_ALMOXQtde_Input: TFloatField;
    Q_ALMOXTipo: TStringField;
    Q_ALMOXObs: TMemoField;
    Q_ALMOXData: TDateTimeField;
    Q_ALMOXUsuario: TStringField;
    QRLabel3: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRLabel13: TQRLabel;
    Q_CALC: TwwQuery;
    Q_ALMOXMOTIVO: TStringField;
    QRLabel11: TQRLabel;
    QRDBText1: TQRDBText;
    Q_CALCQTDE_INPUT: TFloatField;
    Q_CALCQTDE: TFloatField;
    Q_CALCQTDE_RETIRADA: TFloatField;
    QRDBText9: TQRDBText;
    Q_ALMOXN_Lote: TStringField;
    Q_ALMOXFor_Codi: TStringField;
    Q_ALMOXMat_ID: TIntegerField;
    Q_ALMOXMarca_ID: TIntegerField;
    Q_ALMOXValid: TDateTimeField;
    Q_ALMOXTD_ID: TIntegerField;
    Q_ALMOXDocto: TStringField;
    Q_ALMOXRec_Item_ID: TIntegerField;
    Q_ALMOXMot_ID: TIntegerField;
    Q_ALMOXUni_Sigla: TStringField;
    QRDBImage1: TQRDBImage;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelAjustEst: TFRelAjustEst;

implementation

uses UAjusAlm;

//uses UAjustAlm;

{$R *.DFM}

procedure TFRelAjustEst.FormCreate(Sender: TObject);
VAR SQLX : STRING;
begin

     SQLX :=    ' SELECT	MAT.MAT_DESC AS MATERIAL, ' +
                '               AL.*, ' +
                '               MOT.MOT_DESC AS MOTIVO ' +
                ' FROM          ALMOX AL LEFT OUTER JOIN MOTIVOS MOT ON MOT.MOT_ID = AL.MOT_ID, ' +
                '               MATERIAIS MAT  ' +
                ' WHERE         AL.MAT_ID = MAT.MAT_ID ';

        If LOTE <> '' then
                SQLX := SQLX + ' AND             AL.N_LOTE LIKE ' + '''' + LOTE + '%' + '''';
        If MATERIAL <> '' then
                SQLX := SQLX + ' AND             MAT.MAT_ID = ' + MATERIAL;
        If FORNECEDOR <> '' then
                SQLX:= SQLX + ' AND              AL.FOR_CODI = ''' + FORNECEDOR + '''';
        If (DAT1 <> '') and (DAT2 <> '') then
                SQLX:= SQLX + ' AND 	AL.DATA BETWEEN  Convert(SMALLDATETIME,' + '''' +  Dat1 + '''' + ') AND Convert(SMALLDATETIME,' +  '''' + Dat2 + '''' + ')';
        If Marca <> '' then
                SQLX:= SQLX + ' AND 	AL.MARCA_ID = ' + Marca;
        If Fajustalm.Rdbai.checked = true then BEGIN
                 SQLX := SQLX + ' AND AL.TIPO = ' +'''' + 'B' + '''';
                 QRLabel37.Caption := 'Movimentação de Baixa';
        End;


        if Fajustalm.RdENT.checked = true then begin
                 SQLX := SQLX + ' AND AL.TIPO = ' +'''' + 'E' +'''';
                 QRLabel37.Caption := 'Movimentação de Entrada';
        end;

        if Fajustalm.CKB.checked = true then BEGIN
                SQLX := SQLX + ' AND AL.QTDE_RETIRADA IS NOT NULL';
                QRLabel37.Caption := 'Que tiveram Retirada';
        End;


       If Fajustalm.ckPos.Checked then
                 SQLX:= SQLX + ' AND  AL.QTDE_RETIRADA IS NULL ' ;

       if Fajustalm.ckPos.Checked = true THEN
                 SQLX := SQLX + ' AND AL.QTDE_RETIRADA IS NULL ';
                 

        SQLX := SQLX + ' ORDER BY AL.N_LOTE, MAT.MAT_ID, AL.FOR_CODI, AL.DATA,AL.ALMOX_ID';

       Q_ALMOX.CLOSE;
       Q_ALMOX.SQL.Clear;
       Q_ALMOX.SQL.ADD(SQLX);
       Q_ALMOX.Open;
       Q_CALC.Open;


END;


procedure TFRelAjustEst.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

        Q_ALMOX.Close;
        Q_CALC.CLOSE;

end;

procedure TFRelAjustEst.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  IF Q_ALMOXTipo.AsString = 'E'THEN BEGIN
                QRLabel13.Caption := 'Entrada';
                QRLabel13.Font.Color := CLBLACK;
                QRDBText2.Font.Color := CLBLACK;
                QRDBText3.Font.Color := CLBLACK;
                QRDBText4.Font.Color := CLBLACK;
                QRDBText5.Font.Color := CLBLACK;
                QRDBText7.Font.Color := CLBLACK;
                QRDBText8.Font.Color := CLBLACK;
                QRDBText6.Font.Color := CLBLACK;
                QRDBText9.Font.Color := CLBLACK;
  END else BEGIN
               QRLabel13.caption := ' Baixa';
               QRLabel13.Font.Color := CLBLACK;
               QRDBText2.Font.Color := CLBLACK;
               QRDBText3.Font.Color := CLBLACK;
               QRDBText4.Font.Color := CLBLACK;
               QRDBText5.Font.Color := CLBLACK;
               QRDBText7.Font.Color := CLBLACK;
               QRDBText8.Font.Color := CLBLACK;
               QRDBText1.Font.Color := CLBLACK;

               QRDBText6.Font.Color := CLBLACK;
               QRDBText9.Font.Color := CLBLACK;
       end;
END;
end.
