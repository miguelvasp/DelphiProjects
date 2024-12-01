namespace LeitorConhecimentos
{
    partial class Form1
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle1 = new System.Windows.Forms.DataGridViewCellStyle();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.txtXMLPath = new System.Windows.Forms.TextBox();
            this.button2 = new System.Windows.Forms.Button();
            this.label6 = new System.Windows.Forms.Label();
            this.cboEmpresa = new System.Windows.Forms.ComboBox();
            this.lbCliente = new System.Windows.Forms.Label();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.Nome = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Chave = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.CTe = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Protocolo = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ConhecimentoNBF = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column2 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.panel1 = new System.Windows.Forms.Panel();
            this.progressBar1 = new System.Windows.Forms.ProgressBar();
            this.btnStart = new System.Windows.Forms.Button();
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.consultarConhecimentosToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.panel1.SuspendLayout();
            this.menuStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // groupBox1
            // 
            this.groupBox1.BackColor = System.Drawing.Color.White;
            this.groupBox1.Controls.Add(this.txtXMLPath);
            this.groupBox1.Controls.Add(this.button2);
            this.groupBox1.Controls.Add(this.label6);
            this.groupBox1.Controls.Add(this.cboEmpresa);
            this.groupBox1.Controls.Add(this.lbCliente);
            this.groupBox1.Dock = System.Windows.Forms.DockStyle.Top;
            this.groupBox1.Location = new System.Drawing.Point(0, 24);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(971, 50);
            this.groupBox1.TabIndex = 1;
            this.groupBox1.TabStop = false;
            // 
            // txtXMLPath
            // 
            this.txtXMLPath.Enabled = false;
            this.txtXMLPath.Location = new System.Drawing.Point(504, 16);
            this.txtXMLPath.Name = "txtXMLPath";
            this.txtXMLPath.Size = new System.Drawing.Size(447, 20);
            this.txtXMLPath.TabIndex = 10;
            // 
            // button2
            // 
            this.button2.Location = new System.Drawing.Point(379, 15);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(100, 23);
            this.button2.TabIndex = 9;
            this.button2.Text = "Localizar pasta";
            this.button2.UseVisualStyleBackColor = true;
            this.button2.Click += new System.EventHandler(this.button2_Click);
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(6, 18);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(85, 13);
            this.label6.TabIndex = 8;
            this.label6.Text = "Banco de dados";
            // 
            // cboEmpresa
            // 
            this.cboEmpresa.FormattingEnabled = true;
            this.cboEmpresa.Location = new System.Drawing.Point(97, 15);
            this.cboEmpresa.Name = "cboEmpresa";
            this.cboEmpresa.Size = new System.Drawing.Size(262, 21);
            this.cboEmpresa.TabIndex = 7;
            this.cboEmpresa.SelectedIndexChanged += new System.EventHandler(this.cboEmpresa_SelectedIndexChanged);
            // 
            // lbCliente
            // 
            this.lbCliente.AutoSize = true;
            this.lbCliente.Location = new System.Drawing.Point(438, 52);
            this.lbCliente.Name = "lbCliente";
            this.lbCliente.Size = new System.Drawing.Size(10, 13);
            this.lbCliente.TabIndex = 6;
            this.lbCliente.Text = ".";
            // 
            // dataGridView1
            // 
            this.dataGridView1.AllowUserToAddRows = false;
            this.dataGridView1.AllowUserToDeleteRows = false;
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.Nome,
            this.Chave,
            this.CTe,
            this.Protocolo,
            this.ConhecimentoNBF,
            this.Column1,
            this.Column2});
            this.dataGridView1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.dataGridView1.Location = new System.Drawing.Point(0, 74);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.ReadOnly = true;
            this.dataGridView1.Size = new System.Drawing.Size(971, 404);
            this.dataGridView1.TabIndex = 5;
            // 
            // Nome
            // 
            this.Nome.DataPropertyName = "NAME";
            dataGridViewCellStyle1.Alignment = System.Windows.Forms.DataGridViewContentAlignment.TopCenter;
            dataGridViewCellStyle1.Font = new System.Drawing.Font("Tahoma", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Nome.DefaultCellStyle = dataGridViewCellStyle1;
            this.Nome.HeaderText = "Nome do Arquivo";
            this.Nome.Name = "Nome";
            this.Nome.ReadOnly = true;
            this.Nome.Width = 340;
            // 
            // Chave
            // 
            this.Chave.HeaderText = "Chave";
            this.Chave.Name = "Chave";
            this.Chave.ReadOnly = true;
            this.Chave.Width = 300;
            // 
            // CTe
            // 
            this.CTe.HeaderText = "CTe";
            this.CTe.Name = "CTe";
            this.CTe.ReadOnly = true;
            this.CTe.Width = 80;
            // 
            // Protocolo
            // 
            this.Protocolo.HeaderText = "Protocolo";
            this.Protocolo.Name = "Protocolo";
            this.Protocolo.ReadOnly = true;
            this.Protocolo.Width = 170;
            // 
            // ConhecimentoNBF
            // 
            this.ConhecimentoNBF.HeaderText = "Conhecimento NBF";
            this.ConhecimentoNBF.Name = "ConhecimentoNBF";
            this.ConhecimentoNBF.ReadOnly = true;
            // 
            // Column1
            // 
            this.Column1.HeaderText = "ORD_ID";
            this.Column1.Name = "Column1";
            this.Column1.ReadOnly = true;
            // 
            // Column2
            // 
            this.Column2.HeaderText = "Status";
            this.Column2.Name = "Column2";
            this.Column2.ReadOnly = true;
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.progressBar1);
            this.panel1.Controls.Add(this.btnStart);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.panel1.Location = new System.Drawing.Point(0, 425);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(971, 53);
            this.panel1.TabIndex = 8;
            // 
            // progressBar1
            // 
            this.progressBar1.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.progressBar1.Location = new System.Drawing.Point(164, 14);
            this.progressBar1.Name = "progressBar1";
            this.progressBar1.Size = new System.Drawing.Size(787, 23);
            this.progressBar1.TabIndex = 9;
            // 
            // btnStart
            // 
            this.btnStart.Location = new System.Drawing.Point(18, 14);
            this.btnStart.Name = "btnStart";
            this.btnStart.Size = new System.Drawing.Size(124, 23);
            this.btnStart.TabIndex = 8;
            this.btnStart.Text = "Iniciar Leitura";
            this.btnStart.UseVisualStyleBackColor = true;
            this.btnStart.Click += new System.EventHandler(this.btnStart_Click_1);
            // 
            // menuStrip1
            // 
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.consultarConhecimentosToolStripMenuItem});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(971, 24);
            this.menuStrip1.TabIndex = 9;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // consultarConhecimentosToolStripMenuItem
            // 
            this.consultarConhecimentosToolStripMenuItem.Name = "consultarConhecimentosToolStripMenuItem";
            this.consultarConhecimentosToolStripMenuItem.Size = new System.Drawing.Size(157, 20);
            this.consultarConhecimentosToolStripMenuItem.Text = "Consultar Conhecimentos";
            this.consultarConhecimentosToolStripMenuItem.Click += new System.EventHandler(this.consultarConhecimentosToolStripMenuItem_Click);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(971, 478);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.dataGridView1);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.menuStrip1);
            this.Name = "Form1";
            this.Text = "Leitor de conhecimentos eletrônicos - 1.0";
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.panel1.ResumeLayout(false);
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Button button2;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.ComboBox cboEmpresa;
        private System.Windows.Forms.Label lbCliente;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.TextBox txtXMLPath;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Button btnStart;
        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem consultarConhecimentosToolStripMenuItem;
        private System.Windows.Forms.DataGridViewTextBoxColumn Nome;
        private System.Windows.Forms.DataGridViewTextBoxColumn Chave;
        private System.Windows.Forms.DataGridViewTextBoxColumn CTe;
        private System.Windows.Forms.DataGridViewTextBoxColumn Protocolo;
        private System.Windows.Forms.DataGridViewTextBoxColumn ConhecimentoNBF;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column1;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column2;
        private System.Windows.Forms.ProgressBar progressBar1;
    }
}

