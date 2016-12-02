using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SCA.Clases.Beans
{
    public class TipoComputadora
    {
        private int id_tipocomputadora;
        private string nombre;

        public int Id_tipocomputadora
        {
            get
            {
                return id_tipocomputadora;
            }

            set
            {
                id_tipocomputadora = value;
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