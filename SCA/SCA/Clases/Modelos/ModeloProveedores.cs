using SCA.Clases.Beans;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace SCA.Clases.Modelos
{
    public class ModeloProveedores
    {
        private Conexion c;

        public ModeloProveedores()
        {
            c = new Conexion();
        }

        public Boolean crearProveedores(Proveedores p)
        {
            String insert = "EXEC ingreso_proveedor '" + p.Nombre + "','" + p.Nit + "','" + p.Descripcion + "'";
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
