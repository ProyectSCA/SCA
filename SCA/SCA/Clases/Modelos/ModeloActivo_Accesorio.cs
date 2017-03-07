using SCA.Clases.Beans;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace SCA.Clases.Modelos
{
    public class ModeloActivo_Accesorio
    {
        private Conexion c;

        public ModeloActivo_Accesorio()
            {
            c = new Conexion();
            
            }

        public Boolean CrearModeloActivoAccesorio(Activo_Accesorio ac)
        {
            string insert = "exec ingreso_accesorio '" + ac.Modelo + "','"+ac.No_serie+"','"+ac.Codigo_inventario+"','"+ac.Fecha_compra+"',"+ac.No_factura+","+ac.Precio+","+ac.Precio_actual+","+ac.Id_tipo_accesorio+","+ac.Id_empleado+","+ac.Id_cuenta+","+ac.Id_proveedor+"";
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