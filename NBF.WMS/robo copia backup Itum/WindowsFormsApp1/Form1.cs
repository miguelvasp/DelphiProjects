using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Ionic.Zip;

namespace WindowsFormsApp1
{
    public partial class Form1 : Form
    {
        string Origem = "";
        string OrigemNFE = "";
        string Destino = "";
        public Form1()
        {
            InitializeComponent();
            Origem = ConfigurationManager.AppSettings["BackUpFilePathOrigin"];
            OrigemNFE = ConfigurationManager.AppSettings["BackUpFilePathOriginNFE"];
            Destino = ConfigurationManager.AppSettings["DestinyPath"];
            timer1.Interval = 1000 * 60 * 60;
            timer1.Enabled = true;
            timer1.Start();
        }

        private void Executar()
        {
            if (!File.Exists(Origem))
            {
                return;
            }

            string filename = $"BKWMS_{DateTime.Now.ToString("yyyy-MM-dd")}.zip";
            if(!File.Exists(Destino + filename))
            {
                using(ZipFile zip = new ZipFile())
                {
                    try
                    {
                        label1.Text = "Zipando";
                        zip.AddFile(Origem, "");
                        zip.Save(Destino + filename);
                        label1.Text = "";
                    }
                    catch
                    {
                        throw;
                    }
                }
            }

            if (!File.Exists(OrigemNFE))
            {
                return;
            }

            filename = $"BKNFE_{DateTime.Now.ToString("yyyy-MM-dd")}.zip";
            if (!File.Exists(Destino + filename))
            {
                using (ZipFile zip = new ZipFile())
                {
                    try
                    {
                        label1.Text = "ZipandoNFE";
                        zip.AddFile(OrigemNFE, "");
                        zip.Save(Destino + filename);
                        label1.Text = "";
                    }
                    catch
                    {
                        throw;
                    }
                }
            }

        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            this.Executar();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.Executar();
        }
    }
}
