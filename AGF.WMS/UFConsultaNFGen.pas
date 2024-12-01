unit UFConsultaNFGen;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, Db, Wwdatsrc,
  DBTables, Wwquery, ComObj;

type
  TFConsultaNFGen = class(TForm)
    Panel3: TPanel;
    SpeedButton3: TSpeedButton;
    Label16: TLabel;
    Panel7: TPanel;
    Label1: TLabel;
    RadioGroup1: TRadioGroup;
    GRID1: TwwDBGrid;
    Q_CONSUL: TwwQuery;
    DS_CONSUL: TwwDataSource;
    Q_CONSULNFI_CODI: TAutoIncField;
    Q_CONSULNFI_NUMERO: TStringField;
    Q_CONSULNFI_DEMI: TDateTimeField;
    Q_CONSULNFI_DEST_RAZA: TStringField;
    Q_CONSULNFI_TOTA: TFloatField;
    Q_CONSULQTDE: TFloatField;
    Q_CONSULPBRUTO: TFloatField;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SaveDialog1: TSaveDialog;
    Q_CONSULNFI_STATUS: TStringField;
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GRID1DblClick(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure GRID1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConsultaNFGen: TFConsultaNFGen;
  PESQUISANFger : string ; 
implementation
uses UFConsultaNF, UNFGenerica, URelConsulta_NF_Generica ;
{$R *.DFM}

procedure TFConsultaNFGen.SpeedButton3Click(Sender: TObject);
begin
  close; 
end;

procedure TFConsultaNFGen.FormCreate(Sender: TObject);
VAR IK : Integer;
begin
   for IK := 0 TO PRED(ComponentCount) do begin
       if Components[IK] is TwwDBGrid then begin
           (Components[IK] as TwwDBGrid).TitleColor := clBtnFace;
           (Components[IK] as TwwDBGrid).TitleFont.Color := clBlack;
       end;
   end;

    Q_CONSUL.SQL.Clear;
    Q_CONSUL.SQL.Add(' select a.NFI_CODI, a.NFI_NUMERO, A.NFI_STATUS, ') ;
    Q_CONSUL.SQL.Add(' a.NFI_DEMI, a.NFI_DEST_RAZA, a.NFI_TOTA, SUM(B.INF_QTDE) AS QTDE, CASE WHEN SUM(B.INF_PESO * B.INF_QTDE ) IS NULL THEN 0 ELSE SUM(B.INF_PESO * B.INF_QTDE ) END AS PBRUTO ') ;
    Q_CONSUL.SQL.Add(' from nf A, NF_ITENS B  ') ;
    Q_CONSUL.SQL.ADD(' WHERE A.NFI_CODI = B.NFI_CODI AND TDOC_ID = ' + inttostr(17));


    IF FFConsultaNF.wwDBEdit2.text <> '' then
            Q_CONSUL.SQL.ADD(' AND a.NFI_NUMERO = '+ '''' + FFConsultaNF.wwDBEdit2.text + '''');

    IF FFConsultaNF.wwDBEdit3.text <> '' then
            Q_CONSUL.SQL.ADD(' AND a.NFI_DEST_RAZA LIKE '+ '''' + '%' + FFConsultaNF.wwDBEdit3.text + '%' + '''');

    if VENCI_2 <> 0.0 then
           Q_CONSUL.SQL.ADD(' AND CONVERT(CHAR(10),a.NFI_DEMI, 112) >= ' +''''+ formatdatetime('YYYYMMDD',VENCI_2) + '''');
    if VENCF_2 <> 0.0 then
           Q_CONSUL.SQL.ADD(' AND CONVERT(CHAR(10),a.NFI_DEMI, 112) <= ' +''''+ formatdatetime('YYYYMMDD',VENCF_2) + '''') ;
   Q_CONSUL.SQL.Add('GROUP BY  A.NFI_CODI, A.NFI_NUMERO, A.NFI_STATUS, A.NFI_DEMI, A.NFI_DEST_RAZA,  A.NFI_TOTA ');
   Q_CONSUL.open;

end;

procedure TFConsultaNFGen.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Q_CONSUL.close ;
  action := cafree ; 
end;

procedure TFConsultaNFGen.GRID1DblClick(Sender: TObject);
begin
   IF  GRID1.Selectedfield = Q_CONSULNFI_NUMERO  then begin
     PESQUISANFger := Q_CONSULNFI_CODI.asstring  ;
     application.createform(TFNFGenerica , FNFGenerica);
     FNFGenerica.SHOWMODAL ;
     FNFGenerica.RELEASE   ;
     FNFGenerica.CLOSE     ;
   end ;



end;

procedure TFConsultaNFGen.RadioGroup1Click(Sender: TObject);
begin

 IF RadioGroup1.itemindex = 0 then begin
//        Q_CONSUL.SQL.Clear;
//        Q_CONSUL.SQL.Add(' select NFI_CODI,NFI_NUMERO, SUM(B.INF_QTDE) AS QTDE ') ;
//        Q_CONSUL.SQL.Add(' NFI_DEMI,NFI_DEST_RAZA, NFI_TOTA  ') ;
//        Q_CONSUL.SQL.Add(' FROM NF ') ;
//        Q_CONSUL.SQL.ADD(' WHERE TDOC_ID = ' + inttostr(17));

    Q_CONSUL.SQL.Clear;
    Q_CONSUL.SQL.Add(' select a.NFI_CODI, a.NFI_NUMERO, ') ;
    Q_CONSUL.SQL.Add(' a.NFI_DEMI, a.NFI_DEST_RAZA, a.NFI_TOTA, SUM(B.INF_QTDE) AS QTDE, CASE WHEN SUM(B.INF_PESO * B.INF_QTDE ) IS NULL THEN 0 ELSE SUM(B.INF_PESO * B.INF_QTDE ) END AS PBRUTO ') ;
    Q_CONSUL.SQL.Add(' from nf A, NF_ITENS B  ') ;
    Q_CONSUL.SQL.ADD(' WHERE A.NFI_CODI = B.NFI_CODI AND TDOC_ID = ' + inttostr(17));

        IF FFConsultaNF.wwDBEdit2.text <> '' then
                Q_CONSUL.SQL.ADD(' AND NFI_NUMERO = '+ '''' + FFConsultaNF.wwDBEdit2.text + '''');

        IF FFConsultaNF.wwDBEdit3.text <> '' then
                Q_CONSUL.SQL.ADD(' AND NFI_DEST_RAZA LIKE '+ '''' + '%' + FFConsultaNF.wwDBEdit3.text + '%' + '''');

        if VENCI_2 <> 0.0 then
               Q_CONSUL.SQL.ADD(' AND CONVERT(CHAR(10),NFI_DEMI, 112) >= ' +''''+ formatdatetime('YYYYMMDD',VENCI_2) + '''');
        if VENCF_2 <> 0.0 then
               Q_CONSUL.SQL.ADD(' AND CONVERT(CHAR(10),NFI_DEMI, 112) <= ' +''''+ formatdatetime('YYYYMMDD',VENCF_2) + '''') ;

       Q_CONSUL.SQL.Add('GROUP BY  A.NFI_CODI, A.NFI_NUMERO, A.NFI_DEMI, A.NFI_DEST_RAZA,  A.NFI_TOTA ');
       Q_CONSUL.SQL.add('order by NFI_NUMERO') ;
       Q_CONSUL.open;
 end ;

 IF RadioGroup1.itemindex = 1 then begin
//        Q_CONSUL.SQL.Clear;
//        Q_CONSUL.SQL.Add(' select NFI_CODI,NFI_NUMERO, ') ;
//        Q_CONSUL.SQL.Add(' NFI_DEMI,NFI_DEST_RAZA, NFI_TOTA  ') ;
//        Q_CONSUL.SQL.Add(' FROM NF ') ;
//        Q_CONSUL.SQL.ADD(' WHERE TDOC_ID = ' + inttostr(17));

    Q_CONSUL.SQL.Clear;
    Q_CONSUL.SQL.Add(' select a.NFI_CODI, a.NFI_NUMERO, ') ;
    Q_CONSUL.SQL.Add(' a.NFI_DEMI, a.NFI_DEST_RAZA, a.NFI_TOTA, SUM(B.INF_QTDE) AS QTDE, CASE WHEN SUM(B.INF_PESO * B.INF_QTDE ) IS NULL THEN 0 ELSE SUM(B.INF_PESO * B.INF_QTDE ) END AS PBRUTO ') ;
    Q_CONSUL.SQL.Add(' from nf A, NF_ITENS B  ') ;
    Q_CONSUL.SQL.ADD(' WHERE A.NFI_CODI = B.NFI_CODI AND TDOC_ID = ' + inttostr(17));

        IF FFConsultaNF.wwDBEdit2.text <> '' then
                Q_CONSUL.SQL.ADD(' AND NFI_NUMERO = '+ '''' + FFConsultaNF.wwDBEdit2.text + '''');

        IF FFConsultaNF.wwDBEdit3.text <> '' then
                Q_CONSUL.SQL.ADD(' AND NFI_DEST_RAZA LIKE '+ '''' + '%' + FFConsultaNF.wwDBEdit3.text + '%' + '''');

        if VENCI_2 <> 0.0 then
               Q_CONSUL.SQL.ADD(' AND CONVERT(CHAR(10),NFI_DEMI, 112) >= ' +''''+ formatdatetime('YYYYMMDD',VENCI_2) + '''');
        if VENCF_2 <> 0.0 then
               Q_CONSUL.SQL.ADD(' AND CONVERT(CHAR(10),NFI_DEMI, 112) <= ' +''''+ formatdatetime('YYYYMMDD',VENCF_2) + '''') ;

       Q_CONSUL.SQL.Add('GROUP BY  A.NFI_CODI, A.NFI_NUMERO, A.NFI_DEMI, A.NFI_DEST_RAZA,  A.NFI_TOTA ');
       Q_CONSUL.SQL.add('order by NFI_DEMI') ;
       Q_CONSUL.open;
 end ;

 IF RadioGroup1.itemindex = 2 then begin
//        Q_CONSUL.SQL.Clear;
//        Q_CONSUL.SQL.Add(' select NFI_CODI,NFI_NUMERO, ') ;
//        Q_CONSUL.SQL.Add(' NFI_DEMI,NFI_DEST_RAZA, NFI_TOTA  ') ;
//        Q_CONSUL.SQL.Add(' FROM NF ') ;
//        Q_CONSUL.SQL.ADD(' WHERE TDOC_ID = ' + inttostr(17));

    Q_CONSUL.SQL.Clear;
    Q_CONSUL.SQL.Add(' select a.NFI_CODI, a.NFI_NUMERO, ') ;
    Q_CONSUL.SQL.Add(' a.NFI_DEMI, a.NFI_DEST_RAZA, a.NFI_TOTA, SUM(B.INF_QTDE) AS QTDE, CASE WHEN SUM(B.INF_PESO * B.INF_QTDE ) IS NULL THEN 0 ELSE SUM(B.INF_PESO * B.INF_QTDE ) END AS PBRUTO ') ;
    Q_CONSUL.SQL.Add(' from nf A, NF_ITENS B  ') ;
    Q_CONSUL.SQL.ADD(' WHERE A.NFI_CODI = B.NFI_CODI AND TDOC_ID = ' + inttostr(17));

        IF FFConsultaNF.wwDBEdit2.text <> '' then
                Q_CONSUL.SQL.ADD(' AND NFI_NUMERO = '+ '''' + FFConsultaNF.wwDBEdit2.text + '''');

        IF FFConsultaNF.wwDBEdit3.text <> '' then
                Q_CONSUL.SQL.ADD(' AND NFI_DEST_RAZA LIKE '+ '''' + '%' + FFConsultaNF.wwDBEdit3.text + '%' + '''');

        if VENCI_2 <> 0.0 then
               Q_CONSUL.SQL.ADD(' AND CONVERT(CHAR(10),NFI_DEMI, 112) >= ' +''''+ formatdatetime('YYYYMMDD',VENCI_2) + '''');
        if VENCF_2 <> 0.0 then
               Q_CONSUL.SQL.ADD(' AND CONVERT(CHAR(10),NFI_DEMI, 112) <= ' +''''+ formatdatetime('YYYYMMDD',VENCF_2) + '''') ;

       Q_CONSUL.SQL.Add('GROUP BY  A.NFI_CODI, A.NFI_NUMERO, A.NFI_DEMI, A.NFI_DEST_RAZA,  A.NFI_TOTA ');
       Q_CONSUL.SQL.add('order by NFI_DEST_RAZA') ;
       Q_CONSUL.open;
 end ;

 IF RadioGroup1.itemindex = 3 then begin
//        Q_CONSUL.SQL.Clear;
//        Q_CONSUL.SQL.Add(' select NFI_CODI,NFI_NUMERO, ') ;
//        Q_CONSUL.SQL.Add(' NFI_DEMI,NFI_DEST_RAZA, NFI_TOTA  ') ;
//        Q_CONSUL.SQL.Add(' FROM NF ') ;
//        Q_CONSUL.SQL.ADD(' WHERE TDOC_ID = ' + inttostr(17));

    Q_CONSUL.SQL.Clear;
    Q_CONSUL.SQL.Add(' select a.NFI_CODI, a.NFI_NUMERO, ') ;
    Q_CONSUL.SQL.Add(' a.NFI_DEMI, a.NFI_DEST_RAZA, a.NFI_TOTA, SUM(B.INF_QTDE) AS QTDE, CASE WHEN SUM(B.INF_PESO * B.INF_QTDE ) IS NULL THEN 0 ELSE SUM(B.INF_PESO * B.INF_QTDE ) END AS PBRUTO ') ;
    Q_CONSUL.SQL.Add(' from nf A, NF_ITENS B  ') ;
    Q_CONSUL.SQL.ADD(' WHERE A.NFI_CODI = B.NFI_CODI AND TDOC_ID = ' + inttostr(17));


        IF FFConsultaNF.wwDBEdit2.text <> '' then
                Q_CONSUL.SQL.ADD(' AND NFI_NUMERO = '+ '''' + FFConsultaNF.wwDBEdit2.text + '''');

        IF FFConsultaNF.wwDBEdit3.text <> '' then
                Q_CONSUL.SQL.ADD(' AND NFI_DEST_RAZA LIKE '+ '''' + '%' + FFConsultaNF.wwDBEdit3.text + '%' + '''');

        if VENCI_2 <> 0.0 then
               Q_CONSUL.SQL.ADD(' AND CONVERT(CHAR(10),NFI_DEMI, 112) >= ' +''''+ formatdatetime('YYYYMMDD',VENCI_2) + '''');
        if VENCF_2 <> 0.0 then
               Q_CONSUL.SQL.ADD(' AND CONVERT(CHAR(10),NFI_DEMI, 112) <= ' +''''+ formatdatetime('YYYYMMDD',VENCF_2) + '''') ;

      Q_CONSUL.SQL.Add('GROUP BY  A.NFI_CODI, A.NFI_NUMERO, A.NFI_DEMI, A.NFI_DEST_RAZA,  A.NFI_TOTA ');
       Q_CONSUL.SQL.add('order by NFI_TOTA') ;
       Q_CONSUL.open;
 end ;




end;

procedure TFConsultaNFGen.SpeedButton1Click(Sender: TObject);
begin
   frmRelConsulta_Nf_Generica := TfrmRelConsulta_Nf_Generica.Create(nil) ;
   frmRelConsulta_Nf_Generica.Report.Preview;
   frmRelConsulta_Nf_Generica.Close;
end;

procedure TFConsultaNFGen.SpeedButton2Click(Sender: TObject);
const
  XlBottom = -4107;
  XlLeft = -4131;
  XlRight = -4152;
  XlTop = -4160;
var path : string;
  excel,ColumnRange :Variant;
    linha:Integer;

  qtde, peso, valor : Double;
  data :  string; 
begin

     Excel := CreateOleObject('excel.application');

     qtde := 0;
     peso := 0;
     valor := 0;

     If not Excel.Application.Visible then
          Excel.Application.Visible := true;

     Excel.WorkBooks.Add;
     Excel.Cells[1,1] := 'NOTAS FISCAIS GENERICAS';
     Excel.Rows[1].RowHeight := 24.75;
     Excel.Range['A1:A1'].Font.Size := 16;
     Excel.Workbooks[1].WorkSheets[1].Name := 'Notas fiscais genericas';
     ColumnRange := Excel.Workbooks[1].WorkSheets[1].Columns;
     ColumnRange.Columns[1].ColumnWidth := 12;
     ColumnRange.Columns[2].ColumnWidth := 12;
     ColumnRange.Columns[3].ColumnWidth := 35;
     ColumnRange.Columns[4].ColumnWidth := 12;
     ColumnRange.Columns[5].ColumnWidth := 12;
     ColumnRange.Columns[6].ColumnWidth := 12;
     Excel.Range['A2:F2'].interior.color := $00C8C8C8;
     Excel.Range['A2:F2'].font.bold := true;
     Excel.Cells[2,1] := 'Nota Fiscal';
     Excel.Cells[2,2] := 'Data';
     Excel.Cells[2,3] := 'Destinatário';
     Excel.Cells[2,4] := 'Qtde.';
     Excel.Cells[2,5] := 'Peso Bruto';
     Excel.Cells[2,6] := 'Valor';
     Q_CONSUL.Last;

     //Excel.Range['B3:B' + IntToStr(Q_CONSUL.RecordCount + 2)].NumberFormat := 'd/m/yyyy';

     linha := 2;

     Q_CONSUL.First;
     while not Q_CONSUL.Eof do
     begin
          Inc(linha);
          Excel.Cells[Linha,1] := Q_CONSULNFI_NUMERO.AsString;
          Excel.Cells[Linha,1].HorizontalAlignment := xlleft;
          //Excel.Cells[Linha,2].HorizontalAlignment := xlright;

          Excel.Cells[Linha,2] := FormatDateTime(' dd/mm/yyyy', Q_CONSULNFI_DEMI.AsDateTime);
          Excel.Cells[Linha,3] := Q_CONSULNFI_DEST_RAZA.Value;
          Excel.Cells[Linha,3].HorizontalAlignment := xlleft;
          Excel.Cells[Linha,4] := StrToFloat(FORMATFLOAT('##0.00',Q_CONSULQTDE.Value));
          Excel.Cells[Linha,4].HorizontalAlignment := xlright;
          Excel.Cells[Linha,5] := StrToFloat(FormatFloat('##0.0000',Q_CONSULPBRUTO.Value));
          Excel.Cells[Linha,5].HorizontalAlignment := xlright;
          Excel.Cells[Linha,6] := StrToFloat(FormatFloat('##0.00',Q_CONSULNFI_TOTA.Value));
          Excel.Cells[Linha,6].HorizontalAlignment := xlright;
          qtde := qtde + Q_CONSULQTDE.Value;
          peso := peso + Q_CONSULPBRUTO.Value;
          valor := valor +  Q_CONSULNFI_TOTA.Value;
          Q_CONSUL.Next;
     end;

      {Gera os totais - miguel}
       Inc(linha);
       Excel.Range['A'+inttostr(linha)+ ':C'+ inttostr(linha)].Mergecells := True;
       Excel.cells[linha, 1].HorizontalAlignment := xlright;
       Excel.cells[linha, 1] := 'Totais';
       Excel.Cells[Linha,4] := StrToFloat(FORMATFLOAT('##0.00',qtde));
       Excel.Cells[Linha,4].HorizontalAlignment := xlright;
       Excel.Cells[Linha,5] := StrToFloat(FormatFloat('##0.0000',peso));
       Excel.Cells[Linha,5].HorizontalAlignment := xlright;
       Excel.Cells[Linha,6] := StrToFloat(FormatFloat('##0.00',valor));
       Excel.Cells[Linha,6].HorizontalAlignment := xlright;
       Excel.Range['A'+inttostr(linha)+ ':F'+ inttostr(linha)].interior.color := $00C8C8C8;




end;

procedure TFConsultaNFGen.GRID1CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
    if Q_CONSULNFI_STATUS.AsString = 'C' then begin
        AFont.color := clwhite;
           if not highlight then   begin
              ABrush.color := $006F84FB;
              AFont.Color := clblack;
            End else begin
              ABrush.color := $006F84FB;
              Afont.color :=  clblack;
            end ;
    end;
end;

end.
