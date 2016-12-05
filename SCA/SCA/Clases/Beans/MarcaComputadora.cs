using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SCA.Clases.Beans
{
    public class MarcaComputadora
    {
        private int id_marca;
        private string marca;

        public int Id_marca
        {
            get
            {
                return id_marca;
            }

            set
            {
                id_marca = value;
            }
        }

        public string Marca
        {
            get
            {
                return marca;
            }

            set
            {
                marca = value;
            }
        }
    }
}