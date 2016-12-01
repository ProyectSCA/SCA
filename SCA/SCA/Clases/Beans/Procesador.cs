using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SCA.Clases.Beans
{
    public class Procesador
    {
        private int id_procesador;

        private String nombre;

        public int Id_procesador
        {
            get
            {
                return id_procesador;
            }

            set
            {
                id_procesador = value;
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