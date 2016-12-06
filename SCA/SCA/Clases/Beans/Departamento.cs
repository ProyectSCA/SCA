using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SCA.Clases.Beans
{
    public class Departamento
    {
        private int id_departamento;
        private string codigo_departamento;
        private string nombre;
        private string descripcion;

        public int Id_departamento
        {
            get
            {
                return id_departamento;
            }

            set
            {
                id_departamento = value;
            }
        }

        public string Codigo_departamento
        {
            get
            {
                return codigo_departamento;
            }

            set
            {
                codigo_departamento = value;
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
