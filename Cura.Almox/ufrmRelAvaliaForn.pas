unit ufrmRelAvaliaForn;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Qrctrls;

type
  TfrmRelAvaliaForn = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRShape2: TQRShape;
    QRLabel4: TQRLabel;
    QRDBImage1: TQRDBImage;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel5: TQRLabel;
    QRShape1: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    lbR1: TQRLabel;
    lbR2: TQRLabel;
    lbR3: TQRLabel;
    QRShape5: TQRShape;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRShape6: TQRShape;
    QRLabel12: TQRLabel;
    QRLabel14: TQRLabel;
    QRShape7: TQRShape;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRShape8: TQRShape;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRShape9: TQRShape;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRShape10: TQRShape;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel24: TQRLabel;
    QRShape11: TQRShape;
    QRLabel25: TQRLabel;
    lbQ1O1: TQRLabel;
    QRShape12: TQRShape;
    QRShape19: TQRShape;
    QRLabel33: TQRLabel;
    QRShape20: TQRShape;
    QRLabel34: TQRLabel;
    QRShape21: TQRShape;
    QRLabel35: TQRLabel;
    QRShape22: TQRShape;
    QRLabel36: TQRLabel;
    QRShape23: TQRShape;
    QRLabel37: TQRLabel;
    QRShape24: TQRShape;
    QRLabel38: TQRLabel;
    QRShape25: TQRShape;
    QRLabel39: TQRLabel;
    QRShape26: TQRShape;
    QRLabel40: TQRLabel;
    QRShape27: TQRShape;
    QRLabel41: TQRLabel;
    QRShape28: TQRShape;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRShape29: TQRShape;
    QRLabel46: TQRLabel;
    QRShape30: TQRShape;
    lbQ3O1: TQRLabel;
    QRShape31: TQRShape;
    QRLabel48: TQRLabel;
    QRShape32: TQRShape;
    lbQ3O2: TQRLabel;
    QRShape33: TQRShape;
    QRLabel50: TQRLabel;
    QRShape34: TQRShape;
    lbQ3O3: TQRLabel;
    QRShape35: TQRShape;
    QRLabel52: TQRLabel;
    QRShape36: TQRShape;
    lbQ3O4: TQRLabel;
    QRShape37: TQRShape;
    QRLabel54: TQRLabel;
    QRShape38: TQRShape;
    lbQ3O5: TQRLabel;
    QRLabel56: TQRLabel;
    QRShape39: TQRShape;
    QRLabel57: TQRLabel;
    QRShape40: TQRShape;
    lbQ4O1: TQRLabel;
    QRShape41: TQRShape;
    QRLabel59: TQRLabel;
    QRShape42: TQRShape;
    lbQ4O2: TQRLabel;
    QRShape43: TQRShape;
    QRLabel61: TQRLabel;
    QRShape44: TQRShape;
    lbQ4O3: TQRLabel;
    QRShape45: TQRShape;
    QRLabel63: TQRLabel;
    QRShape46: TQRShape;
    lbQ4O4: TQRLabel;
    QRShape47: TQRShape;
    QRLabel65: TQRLabel;
    QRShape48: TQRShape;
    lbQ4O5: TQRLabel;
    QRLabel67: TQRLabel;
    QRShape49: TQRShape;
    QRLabel68: TQRLabel;
    QRShape50: TQRShape;
    lbQ5O1: TQRLabel;
    QRShape51: TQRShape;
    QRLabel70: TQRLabel;
    QRShape52: TQRShape;
    lbQ5O2: TQRLabel;
    QRShape53: TQRShape;
    QRLabel72: TQRLabel;
    QRShape54: TQRShape;
    lbQ5O3: TQRLabel;
    QRShape55: TQRShape;
    QRLabel74: TQRLabel;
    QRShape56: TQRShape;
    lbQ5O4: TQRLabel;
    QRShape57: TQRShape;
    QRLabel76: TQRLabel;
    QRShape58: TQRShape;
    lbQ5O5: TQRLabel;
    QRLabel78: TQRLabel;
    QRShape59: TQRShape;
    QRLabel79: TQRLabel;
    QRShape60: TQRShape;
    lbQ6O1: TQRLabel;
    QRShape61: TQRShape;
    QRLabel81: TQRLabel;
    QRShape62: TQRShape;
    lbQ6O2: TQRLabel;
    QRShape63: TQRShape;
    QRLabel83: TQRLabel;
    QRShape64: TQRShape;
    lbQ6O3: TQRLabel;
    QRShape65: TQRShape;
    QRLabel85: TQRLabel;
    QRShape66: TQRShape;
    lbQ6O4: TQRLabel;
    QRShape67: TQRShape;
    QRLabel87: TQRLabel;
    QRShape68: TQRShape;
    lbQ6O5: TQRLabel;
    QRLabel89: TQRLabel;
    QRShape69: TQRShape;
    QRLabel90: TQRLabel;
    QRShape70: TQRShape;
    lbQ7O1: TQRLabel;
    QRShape71: TQRShape;
    QRLabel92: TQRLabel;
    QRShape72: TQRShape;
    lbQ7O2: TQRLabel;
    QRShape73: TQRShape;
    QRLabel94: TQRLabel;
    QRShape74: TQRShape;
    lbQ7O3: TQRLabel;
    QRShape75: TQRShape;
    QRLabel96: TQRLabel;
    QRShape76: TQRShape;
    lbQ7O4: TQRLabel;
    QRShape77: TQRShape;
    QRLabel98: TQRLabel;
    QRShape78: TQRShape;
    lbQ7O5: TQRLabel;
    QRLabel100: TQRLabel;
    QRShape79: TQRShape;
    QRLabel101: TQRLabel;
    QRShape80: TQRShape;
    lbQ8O1: TQRLabel;
    QRShape81: TQRShape;
    QRLabel103: TQRLabel;
    QRShape82: TQRShape;
    lbQ8O2: TQRLabel;
    QRShape83: TQRShape;
    QRLabel105: TQRLabel;
    QRShape84: TQRShape;
    lbQ8O3: TQRLabel;
    QRShape85: TQRShape;
    QRLabel107: TQRLabel;
    QRShape86: TQRShape;
    lbQ8O4: TQRLabel;
    QRShape87: TQRShape;
    QRLabel109: TQRLabel;
    QRShape88: TQRShape;
    lbQ8O5: TQRLabel;
    QRLabel111: TQRLabel;
    QRShape89: TQRShape;
    QRLabel112: TQRLabel;
    QRShape90: TQRShape;
    lbQ9O1: TQRLabel;
    QRShape91: TQRShape;
    QRLabel114: TQRLabel;
    QRShape92: TQRShape;
    lbQ9O2: TQRLabel;
    QRShape93: TQRShape;
    QRLabel116: TQRLabel;
    QRShape94: TQRShape;
    lbQ9O3: TQRLabel;
    QRShape95: TQRShape;
    QRLabel118: TQRLabel;
    QRShape96: TQRShape;
    lbQ9O4: TQRLabel;
    QRShape97: TQRShape;
    QRLabel120: TQRLabel;
    QRShape98: TQRShape;
    lbQ9O5: TQRLabel;
    QRLabel122: TQRLabel;
    QRShape99: TQRShape;
    QRLabel123: TQRLabel;
    QRShape100: TQRShape;
    lbQ10O1: TQRLabel;
    QRShape101: TQRShape;
    QRLabel125: TQRLabel;
    QRShape102: TQRShape;
    lbQ10O2: TQRLabel;
    QRShape103: TQRShape;
    QRLabel127: TQRLabel;
    QRShape104: TQRShape;
    lbQ10O3: TQRLabel;
    QRShape105: TQRShape;
    QRLabel129: TQRLabel;
    QRShape106: TQRShape;
    lbQ10O4: TQRLabel;
    QRShape107: TQRShape;
    QRLabel131: TQRLabel;
    QRShape108: TQRShape;
    lbQ10O5: TQRLabel;
    QRLabel133: TQRLabel;
    QRLabel134: TQRLabel;
    QRShape109: TQRShape;
    QRLabel135: TQRLabel;
    QRShape110: TQRShape;
    lbQ2O1: TQRLabel;
    QRShape111: TQRShape;
    QRLabel137: TQRLabel;
    QRShape112: TQRShape;
    lbQ2O2: TQRLabel;
    QRShape113: TQRShape;
    QRLabel139: TQRLabel;
    QRShape114: TQRShape;
    lbQ2O3: TQRLabel;
    QRShape115: TQRShape;
    QRLabel141: TQRLabel;
    QRShape116: TQRShape;
    lbQ2O4: TQRLabel;
    QRShape117: TQRShape;
    QRLabel143: TQRLabel;
    QRShape118: TQRShape;
    lbQ2O5: TQRLabel;
    QRShape119: TQRShape;
    QRLabel145: TQRLabel;
    QRShape120: TQRShape;
    lbQ11O1: TQRLabel;
    QRShape121: TQRShape;
    QRLabel147: TQRLabel;
    QRShape122: TQRShape;
    lbQ11O2: TQRLabel;
    QRShape123: TQRShape;
    QRLabel149: TQRLabel;
    QRShape124: TQRShape;
    lbQ11O3: TQRLabel;
    QRShape125: TQRShape;
    QRLabel151: TQRLabel;
    QRShape126: TQRShape;
    lbQ11O4: TQRLabel;
    QRShape127: TQRShape;
    QRLabel153: TQRLabel;
    QRShape128: TQRShape;
    lbQ11O5: TQRLabel;
    QRLabel155: TQRLabel;
    QRShape129: TQRShape;
    QRLabel156: TQRLabel;
    QRShape130: TQRShape;
    lbQ12O1: TQRLabel;
    QRShape131: TQRShape;
    QRLabel158: TQRLabel;
    QRShape132: TQRShape;
    lbQ12O2: TQRLabel;
    QRShape133: TQRShape;
    QRLabel160: TQRLabel;
    QRShape134: TQRShape;
    lbQ12O3: TQRLabel;
    QRShape135: TQRShape;
    QRLabel162: TQRLabel;
    QRShape136: TQRShape;
    lbQ12O4: TQRLabel;
    QRShape137: TQRShape;
    QRLabel164: TQRLabel;
    QRShape138: TQRShape;
    lbQ12O5: TQRLabel;
    QRShape139: TQRShape;
    QRLabel166: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel167: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel168: TQRLabel;
    QRDBText6: TQRDBText;
    QRShape140: TQRShape;
    QRLabel169: TQRLabel;
    QRLabel170: TQRLabel;
    QRLabel171: TQRLabel;
    QRLabel172: TQRLabel;
    QRShape141: TQRShape;
    QRLabel173: TQRLabel;
    QRLabel174: TQRLabel;
    QRShape142: TQRShape;
    QRLabel175: TQRLabel;
    QRLabel27: TQRLabel;
    QRShape13: TQRShape;
    QRLabel28: TQRLabel;
    QRShape14: TQRShape;
    lbQ1O2: TQRLabel;
    QRLabel30: TQRLabel;
    QRShape15: TQRShape;
    QRLabel31: TQRLabel;
    QRShape16: TQRShape;
    lbQ1O3: TQRLabel;
    QRLabel176: TQRLabel;
    QRShape17: TQRShape;
    QRLabel177: TQRLabel;
    QRShape18: TQRShape;
    lbQ1O4: TQRLabel;
    QRLabel179: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelAvaliaForn: TfrmRelAvaliaForn;

implementation

uses Fornec;

{$R *.DFM}

procedure TfrmRelAvaliaForn.FormCreate(Sender: TObject);
 var i : Integer;
begin
  QRBand2.Height := 0;

  for i := 0 to pred(ComponentCount) do begin
      if Components[i] is TQRLabel then begin
          if (Components[i] as TQRLabel).Tag = 1 then
                (Components[i] as TQRLabel).Caption := '';
      end;
  end;


end;

procedure TfrmRelAvaliaForn.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   with FFornecedores do begin
       if qrAvaliaFornRESULTADO.AsString = 'Qualificado' then lbR1.Caption := 'X';
       if qrAvaliaFornRESULTADO.AsString = 'Qualificado com Ressalvas' then lbR2.Caption := 'X';
       if qrAvaliaFornRESULTADO.AsString = 'Crítico' then lbR3.Caption := 'X';

       //questoes de 1  a 12
       if Copy(qrAvaliaFornQ1.AsString, 1, 1) = '1' then lbQ1O1.Caption := 'X';
       if Copy(qrAvaliaFornQ1.AsString, 1, 1) = '2' then lbQ1O2.Caption := 'X';
       if Copy(qrAvaliaFornQ1.AsString, 1, 1) = '3' then lbQ1O3.Caption := 'X';
       if Copy(qrAvaliaFornQ1.AsString, 1, 1) = '4' then lbQ1O4.Caption := 'X';


       if Copy(qrAvaliaFornQ2.AsString, 1, 1) = '0' then lbQ2O1.Caption := 'X';
       if Copy(qrAvaliaFornQ2.AsString, 1, 1) = '1' then lbQ2O2.Caption := 'X';
       if Copy(qrAvaliaFornQ2.AsString, 1, 1) = '2' then lbQ2O3.Caption := 'X';
       if Copy(qrAvaliaFornQ2.AsString, 1, 1) = '3' then lbQ2O4.Caption := 'X';
       if Copy(qrAvaliaFornQ2.AsString, 1, 1) = '4' then lbQ2O5.Caption := 'X';


       if Copy(qrAvaliaFornQ3.AsString, 1, 1) = '0' then lbQ3O1.Caption := 'X';
       if Copy(qrAvaliaFornQ3.AsString, 1, 1) = '1' then lbQ3O2.Caption := 'X';
       if Copy(qrAvaliaFornQ3.AsString, 1, 1) = '2' then lbQ3O3.Caption := 'X';
       if Copy(qrAvaliaFornQ3.AsString, 1, 1) = '3' then lbQ3O4.Caption := 'X';
       if Copy(qrAvaliaFornQ3.AsString, 1, 1) = '4' then lbQ3O5.Caption := 'X';

       if Copy(qrAvaliaFornQ4.AsString, 1, 1) = '0' then lbQ4O1.Caption := 'X';
       if Copy(qrAvaliaFornQ4.AsString, 1, 1) = '1' then lbQ4O2.Caption := 'X';
       if Copy(qrAvaliaFornQ4.AsString, 1, 1) = '2' then lbQ4O3.Caption := 'X';
       if Copy(qrAvaliaFornQ4.AsString, 1, 1) = '3' then lbQ4O4.Caption := 'X';
       if Copy(qrAvaliaFornQ4.AsString, 1, 1) = '4' then lbQ4O5.Caption := 'X';

       if Copy(qrAvaliaFornQ5.AsString, 1, 1) = '0' then lbQ5O1.Caption := 'X';
       if Copy(qrAvaliaFornQ5.AsString, 1, 1) = '1' then lbQ5O2.Caption := 'X';
       if Copy(qrAvaliaFornQ5.AsString, 1, 1) = '2' then lbQ5O3.Caption := 'X';
       if Copy(qrAvaliaFornQ5.AsString, 1, 1) = '3' then lbQ5O4.Caption := 'X';
       if Copy(qrAvaliaFornQ5.AsString, 1, 1) = '4' then lbQ5O5.Caption := 'X';

       if Copy(qrAvaliaFornQ6.AsString, 1, 1) = '0' then lbQ6O1.Caption := 'X';
       if Copy(qrAvaliaFornQ6.AsString, 1, 1) = '1' then lbQ6O2.Caption := 'X';
       if Copy(qrAvaliaFornQ6.AsString, 1, 1) = '2' then lbQ6O3.Caption := 'X';
       if Copy(qrAvaliaFornQ6.AsString, 1, 1) = '3' then lbQ6O4.Caption := 'X';
       if Copy(qrAvaliaFornQ6.AsString, 1, 1) = '4' then lbQ6O5.Caption := 'X';

       if Copy(qrAvaliaFornQ7.AsString, 1, 1) = '0' then lbQ7O1.Caption := 'X';
       if Copy(qrAvaliaFornQ7.AsString, 1, 1) = '1' then lbQ7O2.Caption := 'X';
       if Copy(qrAvaliaFornQ7.AsString, 1, 1) = '2' then lbQ7O3.Caption := 'X';
       if Copy(qrAvaliaFornQ7.AsString, 1, 1) = '3' then lbQ7O4.Caption := 'X';
       if Copy(qrAvaliaFornQ7.AsString, 1, 1) = '4' then lbQ7O5.Caption := 'X';


       if Copy(qrAvaliaFornQ8.AsString, 1, 1) = '0' then lbQ8O1.Caption := 'X';
       if Copy(qrAvaliaFornQ8.AsString, 1, 1) = '1' then lbQ8O2.Caption := 'X';
       if Copy(qrAvaliaFornQ8.AsString, 1, 1) = '2' then lbQ8O3.Caption := 'X';
       if Copy(qrAvaliaFornQ8.AsString, 1, 1) = '3' then lbQ8O4.Caption := 'X';
       if Copy(qrAvaliaFornQ8.AsString, 1, 1) = '4' then lbQ8O5.Caption := 'X';


       if Copy(qrAvaliaFornQ9.AsString, 1, 1) = '0' then lbQ9O1.Caption := 'X';
       if Copy(qrAvaliaFornQ9.AsString, 1, 1) = '1' then lbQ9O2.Caption := 'X';
       if Copy(qrAvaliaFornQ9.AsString, 1, 1) = '2' then lbQ9O3.Caption := 'X';
       if Copy(qrAvaliaFornQ9.AsString, 1, 1) = '3' then lbQ9O4.Caption := 'X';
       if Copy(qrAvaliaFornQ9.AsString, 1, 1) = '4' then lbQ9O5.Caption := 'X';


       if Copy(qrAvaliaFornQ10.AsString, 1, 1) = '0' then lbQ10O1.Caption := 'X';
       if Copy(qrAvaliaFornQ10.AsString, 1, 1) = '1' then lbQ10O2.Caption := 'X';
       if Copy(qrAvaliaFornQ10.AsString, 1, 1) = '2' then lbQ10O3.Caption := 'X';
       if Copy(qrAvaliaFornQ10.AsString, 1, 1) = '3' then lbQ10O4.Caption := 'X';
       if Copy(qrAvaliaFornQ10.AsString, 1, 1) = '4' then lbQ10O5.Caption := 'X';


       if Copy(qrAvaliaFornQ11.AsString, 1, 1) = '0' then lbQ11O1.Caption := 'X';
       if Copy(qrAvaliaFornQ11.AsString, 1, 1) = '1' then lbQ11O2.Caption := 'X';
       if Copy(qrAvaliaFornQ11.AsString, 1, 1) = '2' then lbQ11O3.Caption := 'X';
       if Copy(qrAvaliaFornQ11.AsString, 1, 1) = '3' then lbQ11O4.Caption := 'X';
       if Copy(qrAvaliaFornQ11.AsString, 1, 1) = '4' then lbQ11O5.Caption := 'X';

       if Copy(qrAvaliaFornQ12.AsString, 1, 1) = '0' then lbQ12O1.Caption := 'X';
       if Copy(qrAvaliaFornQ12.AsString, 1, 1) = '1' then lbQ12O2.Caption := 'X';
       if Copy(qrAvaliaFornQ12.AsString, 1, 1) = '2' then lbQ12O3.Caption := 'X';
       if Copy(qrAvaliaFornQ12.AsString, 1, 1) = '3' then lbQ12O4.Caption := 'X';
       if Copy(qrAvaliaFornQ12.AsString, 1, 1) = '4' then lbQ12O5.Caption := 'X';


   end;
end;

end.
