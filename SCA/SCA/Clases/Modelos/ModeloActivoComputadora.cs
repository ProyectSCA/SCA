using SCA.Clases.Beans;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace SCA.Clases.Modelos
{
    public class ModeloActivoComputadora
    {
        private Conexion c;

        public ModeloActivoComputadora()
        {
            c = new Conexion();
        }

        public Boolean crearModeloActivoComputadora(ActivoComputadora ac)
        {
            String insert = "Exec ingreso_activocomputadora '"+ac.Modelo+"','"+ac.No_serie+"',"+ac.Memoria+","+ac.Capacidad_hdd+",'"+ac.Codigo_inventario+"','"+ac.Fecha_compra+"',"+ac.No_factura+","+ac.Precio+","+ac.Precio_actual+",'"+ac.Direccion_ip+"',"+ac.Id_procesador+ ","+ac.Id_so+ ",,"+ac.Id_empleado+ ",,"+ac.Id_tipocomputadora+ ","+ac.Id_marca+ ","+ac.Id_cuenta+ ","+ac.Id_proveedor+"";
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