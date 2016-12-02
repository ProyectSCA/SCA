using SCA.Clases.Beans;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace SCA.Clases.Modelos
{
    public class ModeloSistemaOperativo
    {
        private Conexion c;

        public ModeloSistemaOperativo()
        {
            c = new Conexion();
        }
        //Metodo para crear Sistema Operativo
        public void crearSO(SistemaOperativo so)
        {
            String insert = "EXEC ingreso_so '" + so.Nombre + "'";
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