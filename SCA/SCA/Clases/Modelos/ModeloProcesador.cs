using SCA.Clases.Beans;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace SCA.Clases.Modelos
{
    public class ModeloProcesador
    {
        private Conexion c;

        public ModeloProcesador()
        {
            c = new Conexion();
        }

        //Metodo para crear Procesador
        public void crearProcesador(Procesador p)
        {
            String insert = "EXEC ingreso_procesador '"+p.Nombre+"'";
            ejecutar(insert);
        }
        //Metodo que ejecuta Insert, Update, Delete
        private void ejecutar(String consultaSQL)
        {
            c.con.Open();
            c.sen = new SqlCommand(consultaSQL, c.con);
            c.sen.ExecuteNonQuery();
            c.con.Close();
        }
    }
}