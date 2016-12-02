using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SCA.Clases.Beans
{
    public class SistemaOperativo
    {
        private int id_so;
        private String nombre;

        public int Id_so
        {
            get
            {
                return id_so;
            }

            set
            {
                id_so = value;
            }
        }

        public string Nombre
        {
            get
            {
                return nombre;
            }

            set
            {
                nombre = value;
            }
        }
    }
}