using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WindowsFormsApp1.Model
{
    public class Recebimento
    {
        public DateTime? Data { get; set; }
        public string Material { get; set; }
        public string Marca { get; set; }
        public int Qtde { get; set; }
        public int Conversao { get; set; }
        public int QtdeEstoque { get; set; }
    }
}
