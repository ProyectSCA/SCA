using SCA.Clases.Beans;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace SCA.Clases.Modelos
{
    public class ModeloTipoAccesorio
    {
        private Conexion c;

        public ModeloTipoAccesorio()
        {
            c = new Conexion();
        }

        public Boolean crearTipoAccesorio(Tipo_accesorio ta)
        {
            string insertar = "exec Ingreso_Tipo_Accesorio '" + ta.Nombre + "','" + ta.Descripcion + "'";
            ejecutar(insertar);
            return true;
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