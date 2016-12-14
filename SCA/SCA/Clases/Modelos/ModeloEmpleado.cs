using SCA.Clases.Beans;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace SCA.Clases.Modelos
{
    public class ModeloEmpleado
    {
        private Conexion c;

        public ModeloEmpleado()
        {
            c = new Conexion();
        }

        public Boolean crearEmpleado(Empleado em)
        {
            String insert = "EXEC ingreso_empleado '" + em.Codigo_empleado + "','" + em.Nombre + "','" + em.Apellido + "','" + em.Fecha_alta + "','" + em.Fk_id_departamento + "'";
            ejecutar(insert);
            return true;
        }

        private void ejecutar(string insert)
        {
            c.con.Open();
            c.sen = new SqlCommand(insert, c.con);
            c.sen.ExecuteNonQuery();
            c.con.Close();
        }
    }
}
