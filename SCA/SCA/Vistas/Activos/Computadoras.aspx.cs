using SCA.Clases.Beans;
using SCA.Clases.Modelos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SCA.Vistas.Activos
{
    public partial class Computadoras : System.Web.UI.Page
    {
        private ModeloDepartamento md;
        private ModeloActivoComputadora mc;
        protected void Page_Load(object sender, EventArgs e)
        {
            md = new ModeloDepartamento();
            mc = new ModeloActivoComputadora();
        }

        protected void DropDepto_SelectedIndexChanged(object sender, EventArgs e)
        {
            Departamento d = md.darCodigoDepto(int.Parse(DropDepto.SelectedValue));
            if (d != null)
            {
               LblPrefijo.Text = d.Codigo_departamento;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Vistas/Activos/Computadoras.aspx");
        }

        protected void TxtSufijo_TextChanged(object sender, EventArgs e)
        {
            Clases.Beans.ActivoComputadora ac = new ActivoComputadora();
            ac.Id_procesador = int.Parse(DropProcesador.SelectedValue);
            ac.Id_so = int.Parse(DropSo.SelectedValue);
            ac.Modelo = TxtModelo.Text;
            ac.Memoria = int.Parse(DropMemoria.SelectedValue);
            ac.No_factura = int.Parse(TxtFactura.Text);
            ac.Precio = float.Parse(TxtCosto.Text);
            ac.Id_marca = int.Parse(DropMarca.SelectedValue);
            ac.Id_tipocomputadora = int.Parse(DropTipoComputadora.SelectedValue);
            ac.No_serie = TxtSerie.Text;
            ac.Capacidad_hdd = int.Parse(DropDisco.SelectedValue);
            ac.Fecha_compra = FechaCompra.Text;
            ac.Precio_actual = float.Parse(TxtCostoActual.Text);
            ac.Id_proveedor = int.Parse(DropProveedor.SelectedValue);
            ac.Direccion_ip = TxtIP.Text;
            if (RbtnDepreciacion.Checked == true)
            {
                ac.Id_cuenta = 1;
            }
            if (RbtnGasto.Checked == true)
            {
                ac.Id_cuenta = 2;
            }
            ac.Id_empleado = int.Parse(DropEmpleado.SelectedValue);

            ac.Codigo_inventario = (LblPrefijo.Text.Trim() + TxtSufijo.Text.Trim());

            mc.crearModeloActivoComputadora(ac);

            Response.Redirect("/Vistas/Activos/Computadoras.aspx");

        }
    }
}