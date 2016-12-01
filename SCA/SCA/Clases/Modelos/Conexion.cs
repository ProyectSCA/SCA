using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Configuration;

namespace SCA.Clases.Modelos
{
    public class Conexion
    {
        public SqlConnection con; //Establece una conecion a SQL Server
        public SqlCommand sen; //Objeto tipo Sentencia para las bases de datos
        public SqlDataReader rs; //Objeto tipo Result Set (resultados de los select)

        public Conexion()
        {
            con = new SqlConnection(
                    "Data Source = 192.168.1.248;"+ 
                    "Initial Catalog = sistema-sca;"+
                    "User ID = sca;"+
                    "Password = sca2016**;"
                );
        }

    }
}