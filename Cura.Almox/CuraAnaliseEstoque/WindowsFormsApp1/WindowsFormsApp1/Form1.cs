using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using WindowsFormsApp1.DAL;
using WindowsFormsApp1.Util;

namespace WindowsFormsApp1
{
    public partial class Form1 : Form
    {
        Repository rep = new Repository();
        string Pasta = @"C:\Users\migue\Documents\_importantes\Cura\Gerados\";
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {

            var grupo = rep.GetGrupos();
            cboGrupo.DataSource = grupo;
            cboGrupo.DisplayMember = "nome";
            cboGrupo.ValueMember = "id";
            cboGrupo.SelectedIndex = -1;


            var locais = rep.GetLocais();
            cboLocal.DataSource = locais;
            cboLocal.DisplayMember = "nome";
            cboLocal.ValueMember = "id";

            
        }

        private void button1_Click(object sender, EventArgs e)
        {
            FolderBrowserDialog fb = new FolderBrowserDialog();
            fb.ShowDialog();

            if (string.IsNullOrEmpty(fb.SelectedPath))
            {
                MessageBox.Show("Selecione uma pasta de destino");
                return;
            }

            Pasta = fb.SelectedPath + "\\";


            dataGridView1.EndEdit();
            int LocalId = Convert.ToInt32(cboLocal.SelectedValue);
            string local = cboLocal.Text;
            foreach (DataGridViewRow dr in dataGridView1.Rows)
            {
                if (Convert.ToBoolean(dr.Cells[0].Value))
                {
                    int MatId = Convert.ToInt32(dr.Cells[1].Value); 
                    string Nome = dr.Cells[2].Value.ToString();
                    var Recebimentos = rep.GetRecebimentos(MatId, LocalId);
                    var Transferencias = rep.GetTransferencias(MatId, LocalId);
                    var Consumo = rep.GetConsumo(MatId, LocalId);
                    var AjusteEntrada = rep.GetAjustesEntrada(MatId, LocalId);
                    var AjusteSaida = rep.GetAjustesSaida(MatId, LocalId);
                    var TransferenciasRealizadas = rep.GetTransferenciasRealizadas(MatId, LocalId);
                    Excel exc = new Excel();
                    exc.GerarExcel(Nome, Pasta, local, Recebimentos, Transferencias, Consumo, AjusteEntrada, AjusteSaida, TransferenciasRealizadas);
                    exc.Dispose();
                }
            }
            MessageBox.Show("Ok");
        }

        private void checkBox1_CheckedChanged(object sender, EventArgs e)
        {
            foreach (DataGridViewRow dr in dataGridView1.Rows)
            {
                dr.Cells[0].Value = checkBox1.Checked; 
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            int? IdGrupoMaterial = null;

            if (!string.IsNullOrEmpty(cboGrupo.Text))
            {
                IdGrupoMaterial = Convert.ToInt32(cboGrupo.SelectedValue);
            }


            var materiais = rep.getMateriais(IdGrupoMaterial);

            dataGridView1.AutoGenerateColumns = false;
            dataGridView1.DataSource = materiais;
        }
    }
}
