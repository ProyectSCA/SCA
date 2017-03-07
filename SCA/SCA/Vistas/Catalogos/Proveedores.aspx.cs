using SCA.Clases.Modelos;
using System;
using SCA.Clases.Beans;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SCA.Vistas.Catalogos
{
    public partial class Proveedores : System.Web.UI.Page
    {
        private ModeloProveedores mp;
        string script = @"<script týpe='text/javascript'>alert('Error: campo o campos vacios');</script>";

        protected void Page_Load(object sender, EventArgs e)
        {
            TxtNombre.Focus();

            mp = new ModeloProveedores();
        }

        protected void btnInsertar(object sender, EventArgs e)
        {

            Clases.Beans.Proveedores p = new Clases.Beans.Proveedores();


            if (String.IsNullOrEmpty(TxtNombre.Text) || String.IsNullOrEmpty(TxtNit.Text) || String.IsNullOrEmpty(TxtDescripcion.Text))
            {
                ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", script, false);


            }
            else
            {
                p.Nombre = TxtNombre.Text;
                p.Nit = TxtNit.Text;
                p.Descripcion = TxtDescripcion.Text;

                mp.crearProveedores(p);
                TxtNombre.Text = "";
                TxtNit.Text = "";
                TxtDescripcion.Text = "";
                Response.Redirect("/Vistas/Catalogos/Proveedores.aspx");
            }


            SqlDataSource1.DataBind();
            tablaproveedores.DataBind();

        }
    }
}