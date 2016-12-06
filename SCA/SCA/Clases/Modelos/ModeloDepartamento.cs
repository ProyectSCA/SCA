using SCA.Clases.Beans;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace SCA.Clases.Modelos
{
    public class ModeloDepartamento
    {
        private Conexion c;

        public ModeloDepartamento()
        {
            c = new Conexion();
        }

        public Boolean crearDepartamento(Departamento d)
        {
            String insert = "EXEC ingreso_departamento '" + d.Codigo_departamento + "','" + d.Nombre + "','" + d.Descripcion + "'";
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
