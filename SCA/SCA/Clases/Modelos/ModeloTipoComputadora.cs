using SCA.Clases.Beans;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace SCA.Clases.Modelos
{
    public class ModeloTipoComputadora
    {
        private Conexion c;

        public ModeloTipoComputadora()
        {
            c = new Conexion();
        }

        //Metodo para crear Sistema Operativo
        public void crearTipoComputadora(TipoComputadora tc)
        {
            String insert = "EXEC ingreso_tipocomputadora'" + tc.Nombre + "'";
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