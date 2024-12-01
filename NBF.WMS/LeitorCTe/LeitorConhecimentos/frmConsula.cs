using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace LeitorConhecimentos
{
    public partial class frmConsula : Form
    {
        private string ConnectionString;
        public frmConsula(string pConnectionString)
        {
            InitializeComponent();
            this.ConnectionString = pConnectionString;
            maskedTextBox1.Text = DateTime.Now.ToShortDateString();
            maskedTextBox2.Text = DateTime.Now.ToShortDateString();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection(ConnectionString);
            try
            {
                DateTime I = Convert.ToDateTime(maskedTextBox1.Text);
                DateTime F = Convert.ToDateTime(maskedTextBox2.Text);
                string ORD_CONH = textBox1.Text;
                string sql = "SELECT ORD_CONH, ORD_DATA, CTE_CHAVE, CTE_PROTOCOLO FROM ORDEM_COLETA_ENTREGA " +
                             "WHERE CONVERT(VARCHAR, ORD_DATA, 112) >= @DATAI AND CONVERT(VARCHAR, ORD_DATA, 112) <= @DATAF " +
                             " AND ORD_CONH LIKE '%' + @ORD_CONH + '%' ";
                if (checkBox1.Checked)
                {
                    sql += " and CTE_CHAVE IS NULL";
                }

                sql += "ORDER BY ORD_CONH";
                
                SqlCommand cmd = new SqlCommand(sql, cn);
                cmd.Parameters.Add(new SqlParameter("@DATAI", I.ToString("yyyyMMdd")));
                cmd.Parameters.Add(new SqlParameter("@DATAF", F.ToString("yyyyMMdd")));
                cmd.Parameters.Add(new SqlParameter("@ORD_CONH", ORD_CONH));
                DataTable dtDados = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                cn.Open();
                da.Fill(dtDados);
                cn.Close();
                dataGridView1.DataSource = dtDados;
            }
            catch(Exception ex)
            {
                cn.Close();
                MessageBox.Show("Erro: " + ex.Message);
            }
        }
    }
}
