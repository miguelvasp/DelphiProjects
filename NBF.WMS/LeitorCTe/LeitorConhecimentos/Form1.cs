using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Collections;
using System.Xml;
using System.IO;
using System.Xml.Linq;
using System.Collections.Specialized;
using System.Data.SqlClient;

namespace LeitorConhecimentos
{
    public partial class Form1 : Form
    {

        private string ConnectionString = "";
        public Form1()
        {
            InitializeComponent();
            GetConnections();
            cboEmpresa.SelectedIndex = 0;
        }


        public void GetConnections()
        {
            ArrayList lista = new ArrayList();
            XmlDocument xmlDoc = new XmlDocument();
            xmlDoc.Load(@"C:\ATELIER\LeitorNFe.xml");
            XmlNode NCon = xmlDoc.SelectSingleNode("/Connection/N_CONECTIONS");
            foreach (XmlNode Conn in xmlDoc.SelectNodes("/Connection/ConnectionStrings/Con"))
            {

                Drop drp = new Drop(Conn.Attributes["nome"].Value.ToString(), Conn.InnerText);
                lista.Add(drp);
            }

            cboEmpresa.DataSource = lista;
            cboEmpresa.DisplayMember = "Nome";
            cboEmpresa.ValueMember = "CnnString";


            int NumConections = Convert.ToInt32(NCon.InnerText);
            if (NumConections > 1)
            {
                cboEmpresa.Enabled = true;
            }
            else
            {
                cboEmpresa.Enabled = false;
            }
        }

        

        private void button2_Click(object sender, EventArgs e)
        {
            if (cboEmpresa.SelectedIndex == -1)
            {
                MessageBox.Show("Seleciona uma base de dados!");
                return;
            }

            ConnectionString = cboEmpresa.SelectedValue.ToString();

            cboEmpresa.Enabled = false;
            FolderBrowserDialog folderBrowserDialog1 = new FolderBrowserDialog();

            if (folderBrowserDialog1.ShowDialog() == DialogResult.OK)
            {
                DirectoryInfo dir = new DirectoryInfo(folderBrowserDialog1.SelectedPath);
                txtXMLPath.Text = folderBrowserDialog1.SelectedPath;
                FileInfo[] arquivos = dir.GetFiles("*.xml");
                dataGridView1.AutoGenerateColumns = false;
                dataGridView1.DataSource = arquivos;

                progressBar1.Maximum = dataGridView1.Rows.Count;
                progressBar1.Value = 0;
                progressBar1.Visible = true;
                //carrega as informações do arquivo
                for (int i = 0; i < dataGridView1.Rows.Count; i++)
                {
                    try
                    {
                        string CteNum = "";
                        string CteChave = "";
                        string Protocolo = "";

                        string XDocPath = txtXMLPath.Text + "\\" + dataGridView1.Rows[i].Cells[0].Value.ToString();

                        DataSet dsCTe = new DataSet();
                        dsCTe.ReadXml(XDocPath);
                        Protocolo = dsCTe.Tables["infProt"].Rows[0]["nProt"].ToString();
                        if (!String.IsNullOrEmpty(Protocolo))
                        {
                            CteChave = dsCTe.Tables["infCte"].Rows[0]["id"].ToString();
                            dataGridView1.Rows[i].Cells[1].Value = CteChave;
                            CteNum = dsCTe.Tables["ide"].Rows[0]["nCT"].ToString();
                            dataGridView1.Rows[i].Cells[2].Value = CteNum;
                            dataGridView1.Rows[i].Cells[3].Value = Protocolo;

                            //Procura dados no banco
                            string sql = "select top 1 ord_id, ord_conh from ordem_coleta_entrega where ord_conh = @ord_conh order by ord_data desc";
                            SqlConnection cn = new SqlConnection(ConnectionString);
                            SqlCommand cmd = new SqlCommand(sql, cn);
                            cmd.Parameters.Add(new SqlParameter("@ord_conh", CteNum));
                            DataTable dtDados = new DataTable();
                            SqlDataAdapter da = new SqlDataAdapter(cmd);
                            da.Fill(dtDados);
                            if (dtDados.Rows.Count > 0)
                            {
                                dataGridView1.Rows[i].Cells[4].Value = dtDados.Rows[0]["ORD_CONH"].ToString();
                                dataGridView1.Rows[i].Cells[5].Value = dtDados.Rows[0]["ORD_ID"].ToString();
                                dataGridView1.Rows[i].Cells[6].Value = "OK";
                            }

                        }
                        progressBar1.Value = i;
                        Application.DoEvents();
                    }
                    catch (Exception ex)
                    {
                        dataGridView1.Rows[i].Cells[6].Value = "Erro: " + ex.Message;

                        dataGridView1.Rows[i].DefaultCellStyle.BackColor = Color.Red;
                    }
                }
                progressBar1.Visible = false;
                
            }


        }



        private void cboEmpresa_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (cboEmpresa.SelectedIndex > 0)
            {
                ConnectionString = cboEmpresa.SelectedValue.ToString();
            }
        }

        private void btnStart_Click_1(object sender, EventArgs e)
        {
            progressBar1.Maximum = dataGridView1.Rows.Count;
            progressBar1.Value = 0;
            progressBar1.Visible = true;
            SqlConnection cn = new SqlConnection(ConnectionString);
            for (int i = 0; i < dataGridView1.Rows.Count; i++)
            {
                progressBar1.Value = i;
                if (dataGridView1.Rows[i].Cells[6].Value == "OK")
                {
                    try
                    {
                        //Procura dados no banco
                        string sql = "Update ordem_coleta_entrega Set CTE_CHAVE = @CTE_CHAVE, CTE_PROTOCOLO = @CTE_PROTOCOLO WHERE ORD_ID = @ORD_ID AND CTE_CHAVE IS NULL";

                        SqlCommand cmd = new SqlCommand(sql, cn);
                        string XDocPath = txtXMLPath.Text + "\\" + dataGridView1.Rows[i].Cells[0].Value.ToString();
                        cn.Open();
                        



                        DataSet ds = new DataSet();
                        ds.ReadXml(XDocPath);
                        string Chave = dataGridView1.Rows[i].Cells[1].Value.ToString();
                        string Protocolo = dataGridView1.Rows[i].Cells[3].Value.ToString();
                        string OrdId = dataGridView1.Rows[i].Cells[5].Value.ToString();
                        cmd.Parameters.Add(new SqlParameter("@CTE_CHAVE", Chave));
                        cmd.Parameters.Add(new SqlParameter("@CTE_PROTOCOLO", Protocolo));
                        cmd.Parameters.Add(new SqlParameter("@ORD_ID", OrdId));
                        
                        int ok = cmd.ExecuteNonQuery();

                        string sql2 = "insert into CTe_ArquivosXML(ORD_ID, CTE_XML) values(@ORD_ID, @CTE_XML)";
                        SqlCommand cmd2 = new SqlCommand(sql2, cn);
                        cmd2.Parameters.Add(new SqlParameter("@ORD_ID", OrdId));
                        cmd2.Parameters.Add(new SqlParameter("@CTE_XML", System.IO.File.ReadAllText(XDocPath)));
                        cmd2.ExecuteNonQuery();


                        cn.Close();
                        if (ok > 0)
                        {
                            dataGridView1.Rows[i].Cells[6].Value = "Atualizado";
                        }
                        else
                        {
                            dataGridView1.Rows[i].Cells[6].Value = "Dados já cadastrados";
                        }
                    }
                    catch (Exception ex)
                    {
                        dataGridView1.Rows[i].Cells[6].Value = "Erro: " + ex.Message;
                        cn.Close();
                    }
                    Application.DoEvents();
                }
            }
            progressBar1.Visible = false;
            MessageBox.Show("Atualização concluída");
        }

        private void consultarConhecimentosToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (!String.IsNullOrEmpty(ConnectionString))
            {
                frmConsula frmconsulta = new frmConsula(ConnectionString);
                frmconsulta.ShowDialog();
            }
            else
            {
                MessageBox.Show("Selecione um banco de dados");
            }
        }
    }
}
