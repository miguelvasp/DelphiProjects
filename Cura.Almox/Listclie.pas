unit Listclie;

// QuickReport simple list
// - Connect a datasource to the QuickReport component
// - Put QRDBText components on the Detail band

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Quickrpt, StdCtrls, ExtCtrls, DBTables, DB, Wwdatsrc, Wwquery, Wwtable,
  Qrctrls, wwstorep;

type
  TList_Clie = class(TForm)
    QR_CLIE: TQuickRep;
    Title: TQRBand;
    Detail: TQRBand;
    QRLabel4: TQRLabel;
    QRShape1: TQRShape;
    Codigo: TQRDBText;
    Descricao: TQRDBText;
    QRLabel3: TQRLabel;
    Q_CLIE: TwwQuery;
    DS_CLIE: TwwDataSource;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText11: TQRDBText;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRShape2: TQRShape;
    QRLabel13: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel14: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel15: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel22: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRDBText15: TQRDBText;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRDBText16: TQRDBText;
    QRLabel28: TQRLabel;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRDBText20: TQRDBText;
    QRLabel31: TQRLabel;
    QRDBText21: TQRDBText;
    QRLabel32: TQRLabel;
    QRDBText22: TQRDBText;
    QRLabel33: TQRLabel;
    QRDBText23: TQRDBText;
    QRLabel34: TQRLabel;
    QRDBText24: TQRDBText;
    QRLabel35: TQRLabel;
    QRDBText25: TQRDBText;
    QRLabel36: TQRLabel;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRLabel37: TQRLabel;
    QRDBText28: TQRDBText;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRDBText29: TQRDBText;
    QRShape5: TQRShape;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRDBText30: TQRDBText;
    QRDBText31: TQRDBText;
    QRDBText32: TQRDBText;
    QRShape6: TQRShape;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText33: TQRDBText;
    QRDBText34: TQRDBText;
    QRLabel46: TQRLabel;
    QRDBText35: TQRDBText;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRShape7: TQRShape;
    QRLabel49: TQRLabel;
    QRDBText36: TQRDBText;
    QRLabel50: TQRLabel;
    QRDBText38: TQRDBText;
    QRLabel51: TQRLabel;
    QRShape8: TQRShape;
    QRLabel52: TQRLabel;
    QRDBText37: TQRDBText;
    QRLabel53: TQRLabel;
    QRDBText39: TQRDBText;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape9: TQRShape;
    Q_CLIECLI_INSC: TStringField;
    Q_CLIECLI_FCEP: TStringField;
    Q_CLIECLI_FTEL: TStringField;
    Q_CLIECLI_FTE2: TStringField;
    Q_CLIECLI_FFAX: TStringField;
    Q_CLIECLI_CCEP: TStringField;
    Q_CLIECLI_CTEL: TStringField;
    Q_CLIECLI_CTE2: TStringField;
    Q_CLIECLI_CFAX: TStringField;
    Q_CLIECLI_CEMA: TStringField;
    Q_CLIECLI_CGER: TStringField;
    Q_CLIECLI_CODI: TIntegerField;
    Q_CLIECLI_RAZA: TStringField;
    Q_CLIECLI_PESS: TStringField;
    Q_CLIECLI_FEND: TStringField;
    Q_CLIECLI_FMUN: TStringField;
    Q_CLIECLI_FEST: TStringField;
    Q_CLIECLI_FEMA: TStringField;
    Q_CLIECLI_FCON: TStringField;
    Q_CLIECLI_CEND: TStringField;
    Q_CLIECLI_CMUN: TStringField;
    Q_CLIECLI_CEST: TStringField;
    Q_CLIECLI_CCON: TStringField;
    Q_CLIECLI_CONT: TStringField;
    Q_CLIECLI_RAAT: TStringField;
    Q_CLIECLI_CANA: TStringField;
    Q_CLIECLI_VEND: TStringField;
    Q_CLIECLI_REPR: TStringField;
    Q_CLIECLI_INIC: TDateTimeField;
    Q_CLIECLI_UCOM: TDateTimeField;
    Q_CLIECLI_VUCO: TFloatField;
    Q_CLIECLI_VUCD: TFloatField;
    Q_CLIECLI_MCOM: TDateTimeField;
    Q_CLIECLI_VMCO: TFloatField;
    Q_CLIECLI_VMCD: TFloatField;
    Q_CLIECLI_ATRA: TIntegerField;
    Q_CLIECLI_LCRE: TFloatField;
    Q_CLIECLI_VATR: TFloatField;
    Q_CLIECLI_SCRE: TStringField;
    Q_CLIEBAN_AGEN: TStringField;
    Q_CLIEBAN_NOME: TStringField;
    Q_CLIECTC_DESC: TStringField;
    Q_CLIETRA_RAZA: TStringField;
    Q_CLIERAT_DESC: TStringField;
    Q_CLIEVEN_NOME: TStringField;
    Q_CLIEREP_RAZA: TStringField;
    Q_CLIECON_DESC: TStringField;
    Q_CLIECLI_CGC: TStringField;
    Q_CLIECLI_TRAN: TStringField;
    Q_CLIEBAN_CODI: TStringField;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRLabel56: TQRLabel;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRSysData1: TQRSysData;
    QRShape10: TQRShape;
    Q_CLIECLI_CBAN: TStringField;
    QRLabel57: TQRLabel;
    Q_CLIECPD_CODI: TStringField;
    Q_CLIECLI_ACRES: TFloatField;
    Q_CLIEObservacoes: TStringField;
    Q_CLIECLI_ESPE: TStringField;
    QRDBText41: TQRDBText;
    QRLabel58: TQRLabel;
    QRLabel59: TQRLabel;
    QRLabel60: TQRLabel;
    QRDBText42: TQRDBText;
    QRDBText43: TQRDBText;
    QRDBText44: TQRDBText;
    Q_CLIECLI_FILI: TStringField;
    QRLabel61: TQRLabel;
    QRDBText45: TQRDBText;
    QRLabel62: TQRLabel;
    QRDBText46: TQRDBText;
    Q_CLIECLI_CONTICM: TStringField;
    QRBand1: TQRBand;
    Q_CLIECDP_DESC: TStringField;
    Q_CLIECLI_APELIDO: TStringField;
    STP_DIVIDACLIENTE: TwwStoredProc;
    QRShape11: TQRShape;
    QRLabel63: TQRLabel;
    QRShape12: TQRShape;
    QRLabel64: TQRLabel;
    QRDBText40: TQRDBText;
    QRLabel65: TQRLabel;
    QRDBText47: TQRDBText;
    QRLabel66: TQRLabel;
    QRDBText48: TQRDBText;
    QRShape13: TQRShape;
    QRLabel67: TQRLabel;
    QRLabel68: TQRLabel;
    QRDBImage1: TQRDBImage;
    procedure FormActivate(Sender: TObject);
    procedure QR_CLIEAfterPrint(Sender: TObject);
    procedure QRLabel19Print(sender: TObject; var Value: string);
    procedure QRLabel20Print(sender: TObject; var Value: string);
    procedure QRLabel21Print(sender: TObject; var Value: string);
    procedure QRDBText29Print(sender: TObject; var Value: string);
    procedure QRDBText40Print(sender: TObject; var Value: String);
    procedure DetailBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRDBText47Print(sender: TObject; var Value: String);
    procedure QRDBText48Print(sender: TObject; var Value: String);
    procedure QR_CLIEBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  List_Clie: TList_Clie;

implementation
uses CppMenu, MenuLis2;
{$R *.DFM}

procedure TList_Clie.FormActivate(Sender: TObject);
begin
     Screen.Cursor := crDefault;
end;

procedure TList_Clie.QR_CLIEAfterPrint(Sender: TObject);
begin
     Q_CLIE.Close;
     Screen.Cursor := crDefault;
end;

procedure TList_Clie.QRLabel19Print(sender: TObject; var Value: string);
begin
     if ((copy(Q_CLIECLI_CANA.AsString,1,1)= '1') or
         (copy(Q_CLIECLI_CANA.AsString,2,1)= '1')) then
       Value := '[X] Indústria';
end;

procedure TList_Clie.QRLabel20Print(sender: TObject; var Value: string);
begin
     if ((copy(Q_CLIECLI_CANA.AsString,1,1)= '2') or
         (copy(Q_CLIECLI_CANA.AsString,2,1)= '2')) then
       Value := '[X] Comércio/Revenda';
end;

procedure TList_Clie.QRLabel21Print(sender: TObject; var Value: string);
begin
     if ((copy(Q_CLIECLI_CANA.AsString,1,1)= '1') or
         (copy(Q_CLIECLI_CANA.AsString,2,1)= '1')) then
       Value := '[X] Consumo Próprio';
end;

procedure TList_Clie.QRDBText29Print(sender: TObject; var Value: string);
begin
     Value := Q_CLIECLI_CBAN.AsString + Q_CLIEBAN_AGEN.AsString + Q_CLIEBAN_NOME.AsString;
end;


procedure TList_Clie.QRDBText40Print(sender: TObject; var Value: String);
begin
    value := inttostr(STP_DIVIDACLIENTE.Parambyname('@NumeroDuplicatas').asinteger );
end;

procedure TList_Clie.DetailBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
     if (Q_CLIECLI_PESS.AsString = 'F') then
       begin
         Q_CLIECLI_CGC.EditMask := '999.999.999/99;0;_';
       end
     else
       begin
         if (Q_CLIECLI_PESS.AsString = 'J') then
           begin
             Q_CLIECLI_CGC.EditMask := '99.999.999/9999-99;0;_';
           end
         else
           begin
             Q_CLIECLI_CGC.EditMask := '';
           end;
       end;
           try
             STP_DIVIDACLIENTE.ParamByName('@Cliente').AsInteger := Q_CLIECLI_CODI.AsInteger;
             STP_DIVIDACLIENTE.ParamByName('@NumeroDuplicatas').Asinteger := 0 ;
             STP_DIVIDACLIENTE.ParamByName('@ValorDividaReais').Asfloat   := 0 ;
             STP_DIVIDACLIENTE.ParamByName('@ValorDividaDolar').asfloat   := 0 ;
             STP_DIVIDACLIENTE.ExecProc;
           finally
           end;


end;

procedure TList_Clie.QRDBText47Print(sender: TObject; var Value: String);
begin
  value := formatfloat('###,###,##0.00',STP_DIVIDACLIENTE.Parambyname('@ValorDividaReais').asfloat );
end;

procedure TList_Clie.QRDBText48Print(sender: TObject; var Value: String);
begin
 value := formatfloat('###,###,##0.00',STP_DIVIDACLIENTE.Parambyname('@ValorDividaDolar').asfloat );
end;


procedure TList_Clie.QR_CLIEBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
     with Q_CLIE do
     begin
       Close;
       Sql.Clear;
       Sql.Add('SELECT A.CLI_CODI,A.CLI_RAZA,A.CLI_PESS,A.CLI_CGC,A.CLI_INSC,A.CLI_FEND,A.CLI_FMUN,A.CLI_FEST,A.CLI_FCEP,A.CLI_FTEL,A.CLI_FTE2,A.CLI_FFAX,A.CLI_FEMA,A.CLI_FCON,A.CLI_APELIDO, ');
       Sql.Add('A.CLI_CEND,A.CLI_CMUN,A.CLI_CEST,A.CLI_CCEP,A.CLI_CTEL,A.CLI_CTE2,A.CLI_CFAX,A.CLI_CEMA,A.CLI_CCON,A.CLI_CBAN,A.CLI_CONT,A.CLI_TRAN,A.CLI_RAAT,A.CLI_CANA,');
       Sql.Add('A.CLI_VEND,A.CLI_REPR,A.CLI_INIC,A.CLI_UCOM,A.CLI_VUCO,A.CLI_VUCD,A.CLI_MCOM,A.CLI_VMCO,A.CLI_VMCD,A.CLI_ATRA,A.CLI_LCRE,A.CLI_VATR,A.CLI_SCRE,A.CLI_CGER, A.CPD_CODI, A.OBSERVACOES, A.CLI_FILI, A.CLI_ACRES, A.CLI_ESPE, A.CLI_CONTICM,');
       Sql.Add('B.BAN_CODI,B.BAN_AGEN,B.BAN_NOME,C.CTC_DESC,D.TRA_RAZA,E.RAT_DESC,F.VEN_NOME,G.REP_RAZA,H.CON_DESC, I.CDP_DESC');
       Sql.Add('FROM CPACLIE A,CPABANC B,CPACTCO C,SIATRAN D,SIARAAT E,SIAVEND F,SIAREPR G,CPACONT H, CPACDPG I');

       // inicio - Regiane
//       Sql.Add('WHERE A.CLI_CODI <> 999999999');
       Sql.Add('where E.RAT_CODI =* A.CLI_RAAT AND F.VEN_CODI =* A.CLI_VEND');
       Sql.Add('AND B.BAN_CODI =* A.CLI_CBAN');
       Sql.Add('AND C.CTC_CODI =* A.CLI_CONT AND D.TRA_CODI =* A.CLI_TRAN');
       Sql.Add('AND G.REP_CODI =* A.CLI_REPR AND H.CON_CODI =* A.CLI_CGER');
       Sql.Add('AND I.CDP_CODI =* A.CPD_CODI');

       if (FMenuList2.wwDBLookupCombo1.Text <> '') then begin
          Sql.Add(' and a.CLI_APELIDO >= ' + '''' + FMenuList2.wwDBLookupCombo1.Text+'''');
          if ( FMenuList2.wwDBLookupCombo2.Text <> '' ) then begin
              Sql.Add(' AND a.CLI_APELIDO <= ' + '''' + FMenuList2.wwDBLookupCombo2.Text + '''');
            end else begin
              Sql.Add(' AND a.CLI_APELIDO <= '+ '''' + FMenuList2.wwDBLookupCombo1.Text + '''');
          end;              
       end;

       if (FMenuList2.Maskedit5.text <> '  /  /  ') then BEGIN
          Sql.Add(' and convert(char(10),cli_inic,112) >= '+ ''''+ formatdatetime('YYYYMMDD', strtodate(FMenuList2.Maskedit5.text)) + '''') ;
          if (FMenuList2.Maskedit6.text <> '  /  /  ') then   begin
             Sql.Add(' and convert(char(10),cli_inic,112) <= '+ ''''+ formatdatetime('YYYYMMDD', strtodate(FMenuList2.Maskedit6.text)) + '''') ;
           end else begin
             Sql.Add(' and convert(char(10),cli_inic,112) >= '+ ''''+ formatdatetime('YYYYMMDD', strtodate(FMenuList2.Maskedit5.text)) + '''') ;
          end;
       END;

       if (FMenuList2.RDG_ORDE.ItemIndex = 0) then begin
          Sql.Add('ORDER BY A.CLI_apelido')  ;
       end;
       if (FMenuList2.RDG_ORDE.ItemIndex = 1) then begin
          Sql.Add('ORDER BY A.CLI_RAZA');
       end;
       if (FMenuList2.RDG_ORDE.ItemIndex = 2) then begin
          Sql.Add('ORDER BY A.CLI_INIC');
       end;
       Open;
     end;
// fim - Regiane
//
// Seleciona o Nome da Empresa
//
     QRLabel67.caption := FMenu.FUsuario  ;   
  end;
end.
