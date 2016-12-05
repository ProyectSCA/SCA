using SCA.Clases.Beans;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace SCA.Clases.Modelos
{
    public class ModeloMarcaComputadora
    {
        private Conexion c;

        public ModeloMarcaComputadora()
        {
            c = new Conexion();
        }

        public Boolean crearMarcaComputadora(MarcaComputadora mc)
        {
            String insert = "EXEC ingreso_marcacomputadora '"+mc.Marca+"'";
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