using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WindowsFormsApp1.Model
{
    public class Almox
    {
        public int ID { get; set; }
        public DateTime? Data { get; set; }
        public string Material { get; set; }
        public int Qtde { get; set; }
        public string Movimento { get; set; }
        public string Motivo { get; set; }
    }
}
