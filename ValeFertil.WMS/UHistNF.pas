unit UHistNF;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Buttons, ExtCtrls, Db, Wwdatsrc,
  DBTables, Wwquery, ComObj;

type
  TFHistNF = class(TForm)
    Panel3: TPanel;
    SpeedButton3: TSpeedButton;
    Label16: TLabel;
    GRID1: TwwDBGrid;
    Panel7: TPanel;
    SBT_VISU: TSpeedButton;
    Q_HIST: TwwQuery;
    Q_HISTTIPO: TStringField;
    Q_HISTNFI_ENTREGA: TStringField;
    Q_HISTOS_ID: TIntegerField;
    Q_HISTNFI_DEMI: TDateTimeField;
    Q_HISTNFI_NUMERO: TStringField;
    Q_HISTCLIN_RAZA: TStringField;
    Q_HISTNFI_QTDEUV: TFloatField;
    Q_HISTNFI_PBRU: TFloatField;
    Q_HISTNFI_TOTA: TFloatField;
    Q_HISTCH: TIntegerField;
    DS_HIST: TwwDataSource;
    Q_HISTMANI_ID: TIntegerField;
    Q_HISTMOT_NOME: TStringField;
    Q_HISTVEIC_NOME: TStringField;
    Q_HISTNFI_DTSAIDA: TDateTimeField;
    Q_AUX: TwwQuery;
    Panel8: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Panel5: TPanel;
    Label3: TLabel;
    Panel1: TPanel;
    Label48: TLabel;
    Panel4: TPanel;
    Label2: TLabel;
    Panel6: TPanel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    mmFiltros: TMemo;
    Label4: TLabel;
    Q_HISTREG_NOME: TStringField;
    SpeedButton2: TSpeedButton;
    dsExcel: TDataSource;
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure GRID1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure SBT_VISUClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FHistNF: TFHistNF;

implementation
uses UFHistNF, URelHistNF, UMenu ;
{$R *.DFM}

procedure TFHistNF.SpeedButton3Click(Sender: TObject);
begin
  close ; 
end;

procedure TFHistNF.FormCreate(Sender: TObject);
var
   filtro : string;
   IK : Integer;
begin
   for IK := 0 TO PRED(ComponentCount) do begin
       if Components[IK] is TwwDBGrid then begin
           (Components[IK] as TwwDBGrid).TitleColor := clBtnFace;
           (Components[IK] as TwwDBGrid).TitleFont.Color := clBlack;
       end;
   end;


{/************** miguel *************/}
    Q_HIST.SQL.Clear;
    Q_HIST.sql.Add('Select A.*, REG_NOME from HISTORICO_NF A LEFT OUTER JOIN MANIFESTO B ON A.MANI_ID = B.MANI_ID LEFT OUTER JOIN REGIAO C ON B.REG_ID = C.REG_ID WHERE 1 = 1 ');
    if FFHistNF.rdTipoNF.ItemIndex = 1 then
        Q_HIST.sql.Add(' AND  tipo = ' + QuotedStr('Entrada'))
    else if  FFHistNF.rdTipoNF.ItemIndex = 2 then
        Q_HIST.sql.Add(' AND tipo = ' + QuotedStr('Saída'))  ;


    if  FFHistNF.rgStatusNF.ItemIndex = 1 then
        Q_HIST.sql.Add(' and NFI_DTSAIDA IS NOT NULL ')
    ELSE IF  FFHistNF.rgStatusNF.ItemIndex = 2 then
        Q_HIST.sql.Add(' and NFI_DTSAIDA IS  NULL ');

    if FFHistNF.rgOrdenacao.ItemIndex = 0 then
       Q_HIST.sql.Add(' order by nfi_codi')
    else if  FFHistNF.rgOrdenacao.ItemIndex = 1 then
       Q_HIST.sql.Add(' order by NFI_DEMI')
    else if FFHistNF.rgOrdenacao.ItemIndex = 2 then
       Q_HIST.sql.Add(' order by OS_iD');
    

{/************** end ****************/}

     Q_HIST.open ;


{/************** miguel *************/}


     mmFiltros.Lines.Clear;

     
     filtro := '- Tipo de nota fiscal: ' + tipo + ' ' ;

     if cliN <> '' then
     begin
          filtro := filtro + '          - Cliente: '+ FFHistNF.combo_cliente.Text;
     end;
     mmFiltros.Lines.Add(filtro);
     filtro := '';

     if (nota <> '') or (NotaF <> '') then
     begin
          filtro := '- Nota fiscal: ' + nota + ' até ' + NotaF;
          mmFiltros.Lines.Add(filtro);
     end;

     if (DataI <> '') or (dataF <> '') then
     begin
          filtro := '- Período: ' + DataI + ' até ' + dataF;
          mmFiltros.Lines.Add(filtro);
     end;

     filtro := '';
     if OSHist <> '' then
     begin
          filtro := '- Ordem de Serviço: ' + OSHist + ' ';
     end;

     if ManifestoHist <> '' then
     begin
          if filtro <> '' then
             filtro := filtro + '          ';
          filtro := filtro + '- Manifesto: ' + OSHist;
     end;
     
     mmFiltros.Lines.Add(filtro);


     
{/************** end ****************/}

end;

procedure TFHistNF.GRID1CalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
     if Q_HISTTIPO.asstring = 'ENTRADA' then begin
           AFont.color := clwhite;
           if not highlight then   begin
              ABrush.color := $00FFFFA8;
              AFont.Color := clblack;
            End else begin
              ABrush.color := $00FFFFA8;
              Afont.color :=  clblack;

            end ;
     End  ;

     if Q_HISTTIPO.asstring = 'SAÍDA' then begin
           AFont.color := clwhite;
           if not highlight then   begin
              ABrush.color := clTeal;
              AFont.Color := clwhite;
            End else begin
              ABrush.color := clTeal;
              Afont.color :=  clwhite;

            end ;
     End  ;

     if Q_HISTTIPO.asstring = 'DEVOLUÇÃO' then begin
           AFont.color := clwhite;
           if not highlight then   begin
              ABrush.color := clred;
              AFont.Color := clwhite;
            End else begin
              ABrush.color := clred;
              Afont.color :=  clwhite;

            end ;
     End  ;

     if Q_HISTTIPO.asstring = 'REENTREGA' then begin
           AFont.color := clwhite;
           if not highlight then   begin
              ABrush.color := clOlive;
              AFont.Color := clwhite;
            End else begin
              ABrush.color := clOlive;
              Afont.color :=  clwhite;

            end ;
     End  ;

     if Q_HISTTIPO.asstring = 'ENTREGUE' then begin
           AFont.color := clwhite;
           if not highlight then   begin
              ABrush.color := cllime;
              AFont.Color := clblack;
            End else begin
              ABrush.color := cllime;
              Afont.color :=  clblack;

            end ;
     End  ;



end;

procedure TFHistNF.SBT_VISUClick(Sender: TObject);
begin
     Application.CreateForm(TFRelHistNF,FRelHistNF);
     FRelHistNF.hist.Preview;
     FRelHistNF.Close;
end;

procedure TFHistNF.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  Q_aux.close;
  Q_aux.Sql.Clear;
  Q_aux.Sql.Add('DELETE HISTORICO_NF WHERE CH = ' + FMENU.SqlUsuariosCH.AsString );
  Q_aux.ExecSql;

end;

procedure TFHistNF.SpeedButton2Click(Sender: TObject);
var linha : Integer;
    Excel : Variant;
    i, Coluna : Integer;


begin

  linha := 1;

  excel := CreateOleObject('excel.application');
  Excel.WorkBooks.Add;

  //escrevemos os cabeçalhos
  for i := 0 to pred(dsExcel.DataSet.FieldCount) do begin
      Excel.Cells[Linha, i + 1] :=  dsExcel.DataSet.Fields[i].DisplayName;
  end;

  dsExcel.DataSet.First;
  while not dsExcel.DataSet.Eof do begin
      Inc(linha);
      for i := 0 to pred(dsExcel.DataSet.FieldCount) do begin
           //escreve valor inteiro
           if dsExcel.DataSet.Fields[i].DataType in [ftSmallint, ftInteger, ftLargeint, ftAutoInc] then
              Excel.Cells[Linha, i + 1] :=  dsExcel.DataSet.Fields[i].AsInteger
           //escreve valor decimal
           else if dsExcel.DataSet.Fields[i].DataType = ftFloat then  begin
              Excel.Cells[Linha, i + 1] :=  StrToFloat(FormatFloat('##0.00',dsExcel.DataSet.Fields[i].AsFloat));
              //Excel.Cells[Linha, i + 1].numberFormat := '0,00' ;
           end
           //esreve valores de data
           else if dsExcel.DataSet.Fields[i].DataType in [ftDate, ftDateTime] then begin
               Excel.Cells[Linha, i + 1] :=  FormatDateTime(' dd/mm/yyyy', dsExcel.DataSet.Fields[i].AsDateTime);
               Excel.Cells[Linha, i + 1].NumberFormat := 'm/d/yyyy';
           end
           else
           begin
               Excel.Cells[Linha, i + 1].NumberFormat := '@';
               Excel.Cells[Linha, i + 1] :=  dsExcel.DataSet.Fields[i].AsString;
           end;
      end;

      dsExcel.DataSet.Next;
      Application.ProcessMessages;
  end;

  Excel.Range['A:Z'].EntireColumn.AutoFit;
  Excel.Application.Visible := true;

end;

end.
