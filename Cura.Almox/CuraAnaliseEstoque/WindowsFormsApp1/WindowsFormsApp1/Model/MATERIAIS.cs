//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WindowsFormsApp1.Model
{
    using System;
    using System.Collections.Generic;
    
    public partial class MATERIAIS
    {
        public int MAT_ID { get; set; }
        public string MAT_DESC { get; set; }
        public Nullable<int> GRU_ID { get; set; }
        public Nullable<int> UNI_ID { get; set; }
        public Nullable<double> MAT_IPI { get; set; }
        public string MAT_CONTROLA { get; set; }
        public Nullable<double> MAT_ESTMIN { get; set; }
        public Nullable<double> MAT_LOTEPED { get; set; }
        public string MAT_LOCACAO { get; set; }
        public Nullable<double> Custo_Medio { get; set; }
        public string GENERICO { get; set; }
        public string MAT_ATIVO { get; set; }
        public Nullable<double> MAT_ESTMAX { get; set; }
        public string CONTROLA_GRUPO { get; set; }
        public string COD_BIONEXO { get; set; }
        public string RelConsumo { get; set; }
        public string Critico { get; set; }
        public string MatLaboratorio { get; set; }
        public string EAN { get; set; }
        public string LocalArmazem { get; set; }
        public Nullable<double> ValorContrato { get; set; }
        public string CodigoFornecedor { get; set; }
        public string EntregaEmPacote { get; set; }
    
        public virtual GRUPO_MATERIAL GRUPO_MATERIAL { get; set; }
    }
}
