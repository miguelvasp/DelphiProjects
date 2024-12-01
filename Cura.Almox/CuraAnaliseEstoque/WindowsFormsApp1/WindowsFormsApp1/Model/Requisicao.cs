using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WindowsFormsApp1.Model
{
    public class Requisicao
    {
        public int ID { get; set; }
        public DateTime? Data { get; set; }
        public string Material { get; set; }
        public int Qtde { get; set; }
        public decimal? Reposicao { get; set; }

        public decimal? CustoMedio { get; set; }
        public string LocalDestino { get; set; }
    }
}
