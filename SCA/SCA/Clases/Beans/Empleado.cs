using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SCA.Clases.Beans
{
    public class Empleado
    {
        private int id_empleado;
        private int codigo_empleado;
        private string nombre;
        private string apellido;
        private string fecha_alta;
        private string fecha_baja;
        private int fk_id_departamento;
        private int fk_id_estado_empleado;

        public int Id_empleado
        {
            get
            {
                return id_empleado;
            }

            set
            {
                id_empleado = value;
            }
        }

        public int Codigo_empleado
        {
            get
            {
                return codigo_empleado;
            }

            set
            {
                codigo_empleado = value;
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

        public string Apellido
        {
            get
            {
                return apellido;
            }

            set
            {
                apellido = value;
            }
        }

        public string Fecha_alta
        {
            get
            {
                return fecha_alta;
            }

            set
            {
                fecha_alta = value;
            }
        }

        public string Fecha_baja
        {
            get
            {
                return fecha_baja;
            }

            set
            {
                fecha_baja = value;
            }
        }

        public int Fk_id_departamento
        {
            get
            {
                return fk_id_departamento;
            }

            set
            {
                fk_id_departamento = value;
            }
        }

        public int Fk_id_estado_empleado
        {
            get
            {
                return fk_id_estado_empleado;
            }

            set
            {
                fk_id_estado_empleado = value;
            }
        }
    }
}


