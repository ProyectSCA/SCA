using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SCA.Clases.Beans
{

    public class Tipo_accesorio
    {
        private int id_tipo_accesorio;
        private string nombre;
        private string descripcion;

        public int Id_tipo_accesorio
        {
            get
            {
                return id_tipo_accesorio;
            }

            set
            {
                id_tipo_accesorio = value;
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

        public string Descripcion
        {
            get
            {
                return descripcion;
            }

            set
            {
                descripcion = value;
            }
        }
    }

}