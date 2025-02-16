unit ufrmNotasEntradaxRemessa;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, wwdblook, Db, ADODB, ComObj, ComCtrls;

type
  TfrmNotasEntradaxRemessa = class(TForm)
    qrClientes: TADOQuery;
    qrClientesCLIN_ID: TAutoIncField;
    qrClientesCLIN_RAZA: TStringField;
    Label1: TLabel;
    wwDBLookupCombo1: TwwDBLookupCombo;
    Label2: TLabel;
    Label3: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    qrNFE: TADOQuery;
    Button1: TButton;
    qrNFENFI_CODI: TAutoIncField;
    qrNFENFI_NUMERO: TStringField;
    qrNFENFI_SERIE: TStringField;
    qrNFENFI_DEMI: TDateTimeField;
    qrNFEQTDE_TOTAL: TFloatField;
    qrNFEVALOR_TOTAL: TFloatField;
    qrNFEPRO_COD: TStringField;
    qrNFEPRO_DESC: TStringField;
    qrNFEINF_QTDE: TFloatField;
    qrNFEINF_PUNI: TFloatField;
    Label4: TLabel;
    edtNota: TEdit;
    ProgressBar1: TProgressBar;
    qrNFEpro_id: TAutoIncField;
    qrItensRetornados: TADOQuery;
    qrItensRetornadosNFI_NUMERO: TStringField;
    qrItensRetornadosNFI_DEMI: TDateTimeField;
    qrItensRetornadosCFA_CODI: TStringField;
    qrItensRetornadosINF_QTDE: TFloatField;
    qrItensRetornadosINF_PUNI: TFloatField;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNotasEntradaxRemessa: TfrmNotasEntradaxRemessa;

implementation

uses UMenu;

{$R *.DFM}

procedure TfrmNotasEntradaxRemessa.Button1Click(Sender: TObject);
var linha : Integer;
    Excel : Variant;
    i, Coluna, CONTADOR, Contador2 : Integer;
    D1, D2 : TDateTime;
    Nota, notax, Produto, MudaNota : string;
    SomaQtde, SomaVlrEntrada, SomaVlrRetorno, DifQtde, DifValor, QtdeTotal, ValorTotal : Real;
begin
  IF wwDBLookupCombo1.Text = '' then begin
      ShowMessage('Informe o cliente!');
      Abort;
  end;
  SomaQtde:=0;
  SomaVlrEntrada := 0;
  SomaVlrRetorno := 0;
  DifQtde := 0;
  DifValor := 0;

  try
        D1 := StrToDate(MaskEdit1.Text);
        D2 := StrToDate(MaskEdit2.Text);
  except
      ShowMessage('Data inv�lida!');
      Abort;
  end;

  Nota := '';
  Produto := '';

  with qrNFE do begin
      Close;
      sql.Clear;
      sql.Add(
           ' SELECT  '+
           '     A.NFI_CODI,  '+
           '         A.NFI_NUMERO,  '+
           '         A.NFI_SERIE,  '+
           '         A.NFI_DEMI,  '+
           '         (SELECT SUM(INF_QTDE) FROM NF_ITENS WHERE NFI_CODI = A.NFI_CODI) QTDE_TOTAL,  '+
           '         (SELECT SUM(INF_QTDE * INF_PUNI) FROM NF_ITENS WHERE NFI_CODI = A.NFI_CODI) VALOR_TOTAL, '+
           '         P.PRO_COD, p.pro_id,   '+
           '         P.PRO_DESC,   '+
           '         B.INF_QTDE,   '+
           '         B.INF_PUNI  '+
           ' FROM NF A INNER JOIN NF_ITENS B   '+
           ' ON A.NFI_CODI = B.NFI_CODI INNER JOIN PRODUTO P    '+
           ' ON B.PRO_ID = P.PRO_ID   '+
           ' WHERE TDOC_ID = 2   '+
           ' AND A.NFI_EMIT_CLI = '+ wwDBLookupCombo1.LookupValue +
           ' AND CONVERT(CHAR(10), NFI_DEMI, 112) >= ' + QuotedStr(FormatDateTime('YYYYMMDD', StrToDate(MaskEdit1.Text))) +
           ' AND CONVERT(CHAR(10), NFI_DEMI, 112) <= ' + QuotedStr(FormatDateTime('YYYYMMDD', StrToDate(MaskEdit2.Text))) +
           ' AND (SELECT SUM(INF_QTDERETORNADA) FROM NF_ITENS WHERE NFI_CODI = A.NFI_CODI) > 0 '
      );
      if edtNota.Text <> '' then
        sql.Add(' AND A.NFI_NUMERO = ' + QuotedStr(edtNota.Text));

      SQL.Add( 'ORDER BY CONVERT(INT, A.NFI_NUMERO), B.PRO_COD');
      Open;
  end;


  IF qrNFE.IsEmpty then begin
      ShowMessage('N�o foram encontrados registros com os filtros informados.');
      Abort;
  end;


  qrNFE.Last;
  progressbar1.Max := qrNFE.RecordCount;
  ProgressBar1.Visible := True;
  ProgressBar1.Position := 0;

  linha := 1;

  excel := CreateOleObject('excel.application');
  Excel.WorkBooks.Add;

  
  //escrevemos os cabe�alhos
  Excel.Cells[Linha, 1] :=  'NF ENTRADA';
  Excel.Cells[Linha, 2] :=  'SERIE';
  Excel.Cells[Linha, 3] :=  'M�s';
  Excel.Cells[Linha, 4] :=  'QTDE';
  Excel.Cells[Linha, 5] :=  'VALOR';
  Excel.Cells[Linha, 6] :=  'C�DIGO';
  Excel.Cells[Linha, 7] :=  'DESCRI��O';
  Excel.Cells[Linha, 8] :=  'QUANTIDADE ENTRADA';
  Excel.Cells[Linha, 9] :=  'NF RETORNO';
  Excel.Cells[Linha, 10] :=  'DATA EMISS�O';
  Excel.Cells[Linha, 11] :=  'NF DE SA�DA';
  Excel.Cells[Linha, 12] :=  'CFOP';
  Excel.Cells[Linha, 13] :=  'QUANTIDADE';
  Excel.Cells[Linha, 14] :=  'VALOR ENTRADA';
  Excel.Cells[Linha, 15] :=  'VALOR RETORNO';
  Excel.Cells[Linha, 16] :=  'QTDE';
  Excel.Cells[Linha, 17] :=  'VALOR' ;

  qrNFE.First;
  while not qrNFE.Eof do begin
        if(qrNFENFI_NUMERO.AsString <> Nota) then begin
             MudaNota := 'S';
             linha := linha + 2;
        end
        else  begin
             MudaNota := 'N';
             linha := linha + 1;
        end;

        Nota := qrNFENFI_NUMERO.AsString;


        //se mudou a nota, escrevemos o total e zeramos os totais e limpamos o produto
        if MudaNota = 'S' then begin
              Produto := '';

              if SomaQtde > 0 then begin
                  
                  Excel.Cells[Linha, 1] := notax + ' Total';
                  Excel.Cells[Linha, 4] :=  StrToFloat(FormatFloat('##0.00',QtdeTotal));
                  Excel.Cells[Linha, 5] :=  StrToFloat(FormatFloat('##0.00',ValorTotal));
                  Excel.Cells[Linha, 8] :=  StrToFloat(FormatFloat('##0.00',QtdeTotal));
                  Excel.Cells[Linha, 13] :=  StrToFloat(FormatFloat('##0.00',SomaQtde));
                  Excel.Cells[Linha, 14] :=  StrToFloat(FormatFloat('##0.00',SomaVlrEntrada));
                  Excel.Cells[Linha, 15] :=  StrToFloat(FormatFloat('##0.00',SomaVlrRetorno));
                  Excel.Cells[Linha, 16] :=  StrToFloat(FormatFloat('##0.00',QtdeTotal - SomaQtde));
                  Excel.Cells[Linha, 17] :=  StrToFloat(FormatFloat('##0.00',ValorTotal - SomaVlrEntrada));
                  //Excel.Range['A2:F2'].interior.color := $00C8C8C8;
                  Excel.Range['A' + IntToStr(linha) + ':Q' + IntToStr(linha)].interior.color := $00C8C8C8;
                  Inc(linha);
                  Inc(linha);
              end;

              SomaQtde:=0;
              SomaVlrEntrada := 0;
              SomaVlrRetorno := 0;
              DifQtde := 0;
              DifValor := 0;
            //zeramos totais
        end;

        //se o produto � diferente zeramos o contador
        if qrNFEPRO_COD.AsString <> Produto then CONTADOR := 1;

        Produto := qrNFEPRO_COD.AsString;

        //come�amos a escrita dependendo dos parametros
        if MudaNota = 'S' then begin
            Excel.Cells[Linha, 1] :=  qrNFENFI_NUMERO.AsString;
            notax := qrNFENFI_NUMERO.AsString;
            Excel.Cells[Linha, 2] :=  qrNFENFI_SERIE.AsString;
            Excel.Cells[Linha, 3] :=  FormatDateTime(' dd/mm/yyyy', qrNFENFI_DEMI.AsDateTime);
            Excel.Cells[Linha, 3].NumberFormat := 'm/d/yyyy';
            Excel.Cells[Linha, 4] :=  StrToFloat(FormatFloat('##0.00',qrNFEQTDE_TOTAL.Value));
            Excel.Cells[Linha, 5] :=  StrToFloat(FormatFloat('##0.00',qrNFEVALOR_TOTAL.Value));
            ValorTotal := qrNFEVALOR_TOTAL.AsFloat;
            QtdeTotal := qrNFEQTDE_TOTAL.AsFloat;
        end;


        qrItensRetornados.Close;
        qrItensRetornados.Parameters[0].Value := qrNFENFI_CODI.AsInteger;
        qrItensRetornados.Parameters[1].Value := qrNFEpro_id.AsInteger;
        qrItensRetornados.Open;
        
        contador2 := 0;
        if qrItensRetornados.IsEmpty then begin
            Excel.Cells[Linha, 6] :=  qrNFEPRO_COD.AsString;
            Excel.Cells[Linha, 7] :=  qrNFEPRO_DESC.AsString;
            Excel.Cells[Linha, 8] :=  StrToFloat(FormatFloat('##0.00',qrNFEINF_QTDE.Value));
        end;



        while Not qrItensRetornados.Eof do begin
                  INC(LINHA);
                  inc(Contador2);
                  Excel.Cells[Linha, 6] :=  qrNFEPRO_COD.AsString;
                  Excel.Cells[Linha, 7] :=  qrNFEPRO_DESC.AsString;
                  if Contador2 = 1 then
                     Excel.Cells[Linha, 8] :=  StrToFloat(FormatFloat('##0.00',qrNFEINF_QTDE.Value));

                  Excel.Cells[Linha, 9] :=  qrItensRetornadosNFI_NUMERO.AsString;
                  Excel.Cells[Linha, 10] :=  FormatDateTime(' dd/mm/yyyy',qrItensRetornadosNFI_DEMI.AsDateTime);
                  Excel.Cells[Linha, 10].NumberFormat := 'm/d/yyyy';
                  Excel.Cells[Linha, 11] :=  '';
                  Excel.Cells[Linha, 12] :=  qrItensRetornadosCFA_CODI.AsString;
                  Excel.Cells[Linha, 13] :=  StrToFloat(FormatFloat('##0.00',qrItensRetornadosINF_QTDE.Value));
                  SomaQtde := SomaQtde + qrItensRetornadosINF_QTDE.AsFloat;
                  Excel.Cells[Linha, 14] :=  StrToFloat(FormatFloat('##0.00',qrItensRetornadosINF_QTDE.AsFloat * qrItensRetornadosINF_PUNI.AsFloat));
                  SomaVlrEntrada := SomaVlrEntrada + qrItensRetornadosINF_QTDE.AsFloat * qrItensRetornadosINF_PUNI.AsFloat;
                  Excel.Cells[Linha, 15] :=  StrToFloat(FormatFloat('##0.00',qrItensRetornadosINF_QTDE.AsFloat * qrNFEINF_PUNI.AsFloat));
                  SomaVlrRetorno := SomaVlrRetorno +  qrItensRetornadosINF_QTDE.AsFloat * qrNFEINF_PUNI.AsFloat;
                  Excel.Cells[Linha, 16] :=  '';
                  Excel.Cells[Linha, 17] :=  '' ;
                  qrItensRetornados.Next;
                  
         end;

         linha := linha - 1;



        Inc(CONTADOR);
        Application.ProcessMessages;
        qrNFE.next;
        ProgressBar1.Position := ProgressBar1.Position + 1;
  end;





  ProgressBar1.Visible := False;

  Excel.Range['A:Z'].EntireColumn.AutoFit;
  Excel.Application.Visible := true;


end;

procedure TfrmNotasEntradaxRemessa.FormCreate(Sender: TObject);
begin
  qrClientes.Open;
end;

end.
