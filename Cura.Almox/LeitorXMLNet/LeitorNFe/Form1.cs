using LeitorNFe.DataModel;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration;
using System.Data;
using System.Drawing;
using System.IO;
using System.Text;
using System.Windows.Forms;
using System.Xml.Linq;
using System.Linq;

namespace LeitorNFe
{
    public enum TypeString
    {
        Text,
        Numeric,
        CNPJ,
        CPF,
        Date,
        Int,
        CEP,
        Telephone,
        Currency
    }

    public partial class Form1 : Form
    {
        FinanceiroDevEntities db = new FinanceiroDevEntities();
        string cnnString = "";
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            cnnString = ConfigurationManager.ConnectionStrings["FinanceiroDevEntities"].ToString();
            OpenFileDialog opd = new OpenFileDialog();
            opd.Filter = "Arquivos XML | *.xml;";
            opd.Multiselect = true;
            opd.ShowDialog();

            foreach(var file in opd.FileNames)
            {
                string xml = File.ReadAllText(file);
                MontaCamposDanfe(xml);
            }
 

            //MessageBox.Show("Arquivo lido com sucesso!");
            Application.Exit();
        }

        public void MontaCamposDanfe(string xml)
        {
            try
            {

                LeitorNFe.DataModel.NFe nota = new LeitorNFe.DataModel.NFe(); 
                XNamespace ns = "http://www.portalfiscal.inf.br/nfe";
                XDocument arquivo = XDocument.Load(new StringReader(xml));
               
                /* Elementos Principais */
                var nfeProc = arquivo.Element(ns + "nfeProc");
                var NFe = nfeProc.Element(ns + "NFe");
                var protNFe = nfeProc.Element(ns + "protNFe");
                var infProt = protNFe.Element(ns + "infProt");
                var infNFe = NFe.Element(ns + "infNFe");
                var versao = infNFe.Attribute("versao").Value;
                var ide = infNFe.Element(ns + "ide");
                var emit = infNFe.Element(ns + "emit");
                var enderEmit = emit.Element(ns + "enderEmit");
                var dest = infNFe.Element(ns + "dest");
                var enderDest = dest.Element(ns + "enderDest");
                var total = infNFe.Element(ns + "total");
                var ICMSTot = total.Element(ns + "ICMSTot");
                var transp = infNFe.Element(ns + "transp");
                var transporta = transp.Element(ns + "transporta");
                var vol = transp.Element(ns + "vol");
                var dets = infNFe.Elements(ns + "det");

                nota.ide_nNF = Convert.ToInt32(ide.Element(ns + "nNF").Value);
                nota.ide_serie = ide.Element(ns + "serie").Value;
                nota.ide_tpNF = Convert.ToInt32(ide.Element(ns + "tpNF").Value);
                nota.ChaveAut = infProt.Element(ns + "chNFe").Value;
                nota.Protocolo = infProt.Element(ns + "nProt").Value;
                nota.ide_dEmi = Convert.ToDateTime(ide.Element(ns + "dhEmi").Value);


                if (emit != null)
                {
                    if (ExisteElemento(emit, ns, "CNPJ")) nota.emi_CNPJ = emit.Element(ns + "CNPJ").Value;
                    if (ExisteElemento(emit, ns, "xNome")) nota.emi_xNome = emit.Element(ns + "xNome").Value;
                    if (ExisteElemento(emit, ns, "xFant")) nota.emi_xFant = emit.Element(ns + "xFant").Value;
                    if (ExisteElemento(enderEmit, ns, "xLgr")) nota.emi_xLgr = enderEmit.Element(ns + "xLgr").Value;
                    if (ExisteElemento(enderEmit, ns, "nro")) nota.emi_nro = enderEmit.Element(ns + "nro").Value;
                    if (ExisteElemento(enderEmit, ns, "xBairro")) nota.emi_xBairro = enderEmit.Element(ns + "xBairro").Value;
                    if (ExisteElemento(enderEmit, ns, "cMun")) nota.emi_cMun = enderEmit.Element(ns + "cMun").Value;
                    if (ExisteElemento(enderEmit, ns, "xMun")) nota.emi_xMun = enderEmit.Element(ns + "xMun").Value;
                    if (ExisteElemento(enderEmit, ns, "UF")) nota.emi_UF = enderEmit.Element(ns + "UF").Value;
                    if (ExisteElemento(enderEmit, ns, "CEP")) nota.emi_CEP = FormatString(enderEmit.Element(ns + "CEP").Value, TypeString.CEP);
                    if (ExisteElemento(enderEmit, ns, "fone")) FormatString(nota.emi_Fone = enderEmit.Element(ns + "fone").Value, TypeString.Telephone);
                    if (ExisteElemento(emit, ns, "IE")) nota.emi_IE = emit.Element(ns + "IE").Value;
                    if (ExisteElemento(emit, ns, "CRT")) nota.emi_CRT = emit.Element(ns + "CRT").Value;
                }

                if (dest != null)
                {
                    if (ExisteElemento(dest, ns, "CNPJ"))
                    {
                        nota.dest_CNPJ = dest.Element(ns + "CNPJ").Value;
                    }
                    else
                    {
                        nota.dest_CNPJ = dest.Element(ns + "CPF").Value;
                    }
                    if (ExisteElemento(dest, ns, "xNome")) nota.dest_xNome = dest.Element(ns + "xNome").Value;
                    if (ExisteElemento(enderDest, ns, "xLgr")) nota.dest_xlgr = enderDest.Element(ns + "xLgr").Value;
                    if (ExisteElemento(enderDest, ns, "nro")) nota.dest_nro = enderDest.Element(ns + "nro").Value;
                    if (ExisteElemento(enderDest, ns, "xCpl")) nota.dest_xCpl = enderDest.Element(ns + "xCpl").Value;
                    if (ExisteElemento(enderDest, ns, "cMun")) nota.dest_cMun = enderDest.Element(ns + "cMun").Value;
                    if (ExisteElemento(enderDest, ns, "xMun")) nota.dest_xMun = enderDest.Element(ns + "xMun").Value;
                    if (ExisteElemento(enderDest, ns, "UF")) nota.dest_UF = enderDest.Element(ns + "UF").Value;
                    if (ExisteElemento(enderDest, ns, "fone")) FormatString(nota.dest_fone = enderDest.Element(ns + "fone").Value, TypeString.Telephone);
                    if (ExisteElemento(enderDest, ns, "CEP")) nota.dest_CEP = FormatString(enderDest.Element(ns + "CEP").Value, TypeString.CEP);
                    if (ExisteElemento(dest, ns, "IE")) nota.dest_IE = dest.Element(ns + "IE").Value;
                    if (ExisteElemento(dest, ns, "email")) nota.dest_email = dest.Element(ns + "email").Value;
                }

                if (total != null)
                {
                    if (ExisteElemento(ICMSTot, ns, "vBC")) nota.tot_vBC = Convert.ToDecimal(ICMSTot.Element(ns + "vBC").Value.Replace(".", ","));
                    if (ExisteElemento(ICMSTot, ns, "vICMS")) nota.tot_vICMS = Convert.ToDecimal(ICMSTot.Element(ns + "vICMS").Value.Replace(".", ","));
                    if (ExisteElemento(ICMSTot, ns, "vBCST")) nota.tot_vBCST = Convert.ToDecimal(ICMSTot.Element(ns + "vBCST").Value.Replace(".", ","));
                    if (ExisteElemento(ICMSTot, ns, "vST")) nota.tot_vST = Convert.ToDecimal(ICMSTot.Element(ns + "vST").Value.Replace(".", ","));
                    if (ExisteElemento(ICMSTot, ns, "vProd")) nota.tot_vProd = Convert.ToDecimal(ICMSTot.Element(ns + "vProd").Value.Replace(".", ","));
                    if (ExisteElemento(ICMSTot, ns, "vFrete")) nota.tot_vFrete = Convert.ToDecimal(ICMSTot.Element(ns + "vFrete").Value.Replace(".", ","));
                    if (ExisteElemento(ICMSTot, ns, "vSeg")) nota.tot_vSeg = Convert.ToDecimal(ICMSTot.Element(ns + "vSeg").Value.Replace(".", ","));
                    if (ExisteElemento(ICMSTot, ns, "vDesc")) nota.tot_vDesc = Convert.ToDecimal(ICMSTot.Element(ns + "vDesc").Value.Replace(".", ","));
                    if (ExisteElemento(ICMSTot, ns, "vII")) nota.tot_vII = Convert.ToDecimal(ICMSTot.Element(ns + "vII").Value.Replace(".", ","));
                    if (ExisteElemento(ICMSTot, ns, "vIPI")) nota.tot_vIPI = Convert.ToDecimal(ICMSTot.Element(ns + "vIPI").Value.Replace(".", ","));
                    if (ExisteElemento(ICMSTot, ns, "vPIS")) nota.tot_vPIS = Convert.ToDecimal(ICMSTot.Element(ns + "vPIS").Value.Replace(".", ","));
                    if (ExisteElemento(ICMSTot, ns, "vCOFINS")) nota.tot_vCOFINS = Convert.ToDecimal(ICMSTot.Element(ns + "vCOFINS").Value.Replace(".", ","));
                    if (ExisteElemento(ICMSTot, ns, "vOutro")) nota.tot_vOutro = Convert.ToDecimal(ICMSTot.Element(ns + "vOutro").Value.Replace(".", ","));
                    if (ExisteElemento(ICMSTot, ns, "vNF")) nota.tot_vNF = Convert.ToDecimal(ICMSTot.Element(ns + "vNF").Value.Replace(".", ","));
                }

                if (transp != null)
                {
                    if (ExisteElemento(transp, ns, "modFrete")) nota.tra_modFrete = transp.Element(ns + "modFrete").Value;
                    if (ExisteElemento(transporta, ns, "CNPJ")) nota.tra_CNPJ = transporta.Element(ns + "CNPJ").Value;
                    if (ExisteElemento(transporta, ns, "xNome")) nota.tra_xNome = transporta.Element(ns + "xNome").Value;
                    if (ExisteElemento(transporta, ns, "IE")) nota.tra_IE = transporta.Element(ns + "IE").Value;
                    if (ExisteElemento(transporta, ns, "xEnder")) nota.tra_xEnder = transporta.Element(ns + "xEnder").Value;
                    if (ExisteElemento(transporta, ns, "xMun")) nota.tra_xMun = transporta.Element(ns + "xMun").Value;
                    if (ExisteElemento(transporta, ns, "UF")) nota.tra_UF = transporta.Element(ns + "UF").Value;
                    if (ExisteElemento(vol, ns, "esp")) nota.vol_esp = vol.Element(ns + "esp").Value;
                    if (ExisteElemento(vol, ns, "pesoB")) nota.vol_pesoB = Convert.ToDecimal(vol.Element(ns + "pesoB").Value.Replace(".", ","));
                    if (ExisteElemento(vol, ns, "pesoL")) nota.vol_pesoL = Convert.ToDecimal(vol.Element(ns + "pesoL").Value.Replace(".", ","));
                }
 
                if(NotaJaCadastrada((int)nota.ide_nNF, nota.emi_CNPJ))
                {
                    MessageBox.Show("Notá fiscal já cadastrada");
                    return;
                }


                db.Entry(nota).State = System.Data.Entity.EntityState.Added;
                db.SaveChanges();
                
        
                foreach (var det in dets)
                {
                    NFeProduto p = new NFeProduto();
                    p.IdNFe = nota.IdNFe;
                    var item = det.Element(ns + "prod");
                    if (ExisteElemento(item, ns, "cProd")) p.cProd = item.Element(ns + "cProd").Value;
                    if (ExisteElemento(item, ns, "cEAN")) p.cEAN = item.Element(ns + "cEAN").Value;
                    if (ExisteElemento(item, ns, "xProd")) p.xProd = item.Element(ns + "xProd").Value;
                    if (ExisteElemento(item, ns, "NCM")) p.NCM = item.Element(ns + "NCM").Value;
                    if (ExisteElemento(item, ns, "CFOP")) p.CFOP = item.Element(ns + "CFOP").Value; 
                    if (ExisteElemento(item, ns, "uCom")) p.uCom = item.Element(ns + "uCom").Value;
                    if (ExisteElemento(item, ns, "qCom")) p.qCom = Convert.ToDecimal(item.Element(ns + "qCom").Value.Replace(".", ","));
                    if (ExisteElemento(item, ns, "vUnCom")) p.vUnCom = Convert.ToDecimal(item.Element(ns + "vUnCom").Value.Replace(".", ","));
                    if (ExisteElemento(item, ns, "vProd")) p.vProd = Convert.ToDecimal(item.Element(ns + "vProd").Value.Replace(".", ","));
                    db.Entry(p).State = System.Data.Entity.EntityState.Added;
                    db.SaveChanges();
                }



            }
            catch (Exception ex)
            {
                 
            }


        }

        private bool NotaJaCadastrada(int nNF, string CNPJ)
        {
            var nf = (from n in db.NFe
                      where n.ide_nNF == nNF
                      && n.emi_CNPJ == CNPJ
                      select n).FirstOrDefault();
            return nf != null;
        }
 

        public bool ExisteElemento(XElement pElementoPai, XNamespace ns, string pElemento)
        {
            bool exist = false;

            if (pElementoPai != null)
            {
                if (pElementoPai.Element(ns + pElemento) != null)
                {
                    exist = true;
                }
            }

            return exist;
        }

        public string FormatString(string Value, TypeString tType)
        {
            try
            {
                switch (tType)
                {
                    case TypeString.CNPJ:
                        return string.Format("{0}.{1}.{2}/{3}-{4}", Value.Substring(0, 2), Value.Substring(2, 3), Value.Substring(5, 3), Value.Substring(8, 4), Value.Substring(12, 2));
                    case TypeString.CPF:
                        return string.Format("{0}.{1}.{2}-{3}", Value.Substring(0, 3), Value.Substring(3, 3), Value.Substring(6, 3), Value.Substring(9, 2));
                    case TypeString.Date:
                        if (Convert.ToDateTime(Value) == Convert.ToDateTime("1/1/1900"))
                            return string.Empty;
                        else
                            return Convert.ToDateTime(Value).ToString("dd/MM/yyyy");
                    case TypeString.Numeric:
                        return Convert.ToDouble(Value).ToString("#,##0.00");
                    case TypeString.Int:
                        return Convert.ToInt64(Value).ToString("#,##0");
                    case TypeString.Text:
                        return Value;
                    case TypeString.CEP:
                        return string.Format("{0}{1}-{2}", Value.Substring(0, 2), Value.Substring(2, 3), Value.Substring(5, 3));
                    case TypeString.Telephone:
                        Value = Value.Replace("-", "").Replace(" ", "").Replace(".", "");
                        return string.Format("{0}-{1}", Value.Substring(0, Value.Length - 4), Value.Substring(Value.Length - 4, 4));
                    case TypeString.Currency:
                        return Convert.ToDouble(Value).ToString("C");
                    default:
                        return Value;
                }
            }
            catch
            {
                return Value;
            }
        }

    }
}
