using System;
using System.Collections.Generic;
using System.Text;


    public class Drop
    {
        private string _nome;

        public string Nome
        {
            get { return _nome; }
            set { _nome = value; }
        }
        private string _cnnString;

        public string CnnString
        {
            get { return _cnnString; }
            set { _cnnString = value; }
        }

        public Drop(string pNome, string pccString)
        {
            this.Nome = pNome;
            this.CnnString = pccString;
        }

    }

