using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using AlmoxEstoqueRetroativo.Models;

namespace AlmoxEstoqueRetroativo
{
    public partial class Form1 : Form
    {
        List<vwKardex> K = new List<vwKardex>();
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            StorageCuraEntities db = new StorageCuraEntities();
            var datas = getDatas(); 
            progressBar1.Maximum = datas.Count;
            CarregaKardex();

            for (int i =0; i < datas.Count; i++)
            {
                progressBar1.Value = i + 1;
                label1.Text = "Data " + datas[i].Data.ToString();
                Application.DoEvents();
                var materiais = getMateriais();
                progressBar2.Maximum = materiais.Count;
                for(int y = 0; y < materiais.Count; y++)
                {
                    progressBar2.Value = y + 1;
                    label2.Text = "Material " + materiais[y].matId.ToString();
                    Application.DoEvents();
                    var kardex = Getkardex(materiais[y].matId, materiais[y].marcaId, datas[i].Data);
                    if(kardex != null)
                    {
                        stoHistoricoEstoque h = new stoHistoricoEstoque();
                        h.DataReferencia = datas[i].Data;
                        h.QTDE = kardex.QTDE;
                        h.MAT_ID = (int)kardex.MAT_ID;
                        h.GRU_ID = (int)kardex.GRU_ID;
                        h.UNI_ID = (int)kardex.UNI_ID;
                        h.LOCAL_ID = (int)kardex.LOCAL_ID;
                        h.MARCA_ID = (int)kardex.MARCA_ID;
                        h.REPOSICAO = kardex.Reposicao;
                        db.stoHistoricoEstoque.Add(h);
                        db.SaveChanges();
                    }
                }
                
            }
        } 

        private List<Datas> getDatas()
        {
            StorageCuraEntities db = new StorageCuraEntities();
            return (from d in db.Datas select d).ToList();
        }

        public void CarregaKardex()
        {
            StorageCuraEntities db = new StorageCuraEntities();
            K = (from k in db.vwKardex
                 select k).ToList();
        }

        private List<matKardex> getMateriais()
        {
            return K.Select(x => new matKardex
            {
                matId = x.MAT_ID,
                marcaId = x.MARCA_ID
            }).ToList();
                
                //(from m in db.KardexTemp
                //    orderby m.MAT_ID
                //    select new matKardex
                //    {
                //        matId = m.MAT_ID,
                //        marcaId = m.MARCA_ID
                //    }).Distinct().OrderByDescending(X => X.matId).ToList();
        }

        private vwKardex Getkardex(int? matId, int? marcaId, DateTime? data)
        { 
            string dt = Convert.ToDateTime(data).ToShortDateString() + " 23:59";
            DateTime dtp = Convert.ToDateTime(dt);

            return K.Where(x =>
                x.MAT_ID == matId &&
                x.MARCA_ID == marcaId &&
                x.DATA < data
            ).OrderByDescending(x => x.DATA).FirstOrDefault();

            //return (from k in db.vwKardex
            //        where k.MAT_ID == matId
            //        && k.MARCA_ID == marcaId
            //        && k.DATA < dtp
            //        select k).OrderByDescending(x => x.DATA).FirstOrDefault();
        }
    }

    public class matKardex
    {
        public int? matId { get; set; }
        public int? marcaId { get; set; }
    }
}
