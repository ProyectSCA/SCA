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
    public partial class Empleado : System.Web.UI.Page
    {
        private ModeloEmpleado me;
        string script = @"<script týpe='text/javascript'>alert('Error: campo o campos vacios');</script>";

        protected void Page_Load(object sender, EventArgs e)
        {
            TxtCodigo.Focus();
            
            me = new ModeloEmpleado();
        }

        protected void btnInsertar(object sender, EventArgs e)
        {
            
            Clases.Beans.Empleado em = new Clases.Beans.Empleado();
            
            
            if (String.IsNullOrEmpty(TxtCodigo.Text) || String.IsNullOrEmpty(TxtNombre.Text) || String.IsNullOrEmpty(TxtFechaAlta.Text) || String.IsNullOrEmpty(TxtApellido.Text))
            {
                ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", script, false);
               
                
            }
            else
            {
                em.Codigo_empleado = int.Parse(TxtCodigo.Text);
                em.Nombre = TxtNombre.Text;
                em.Apellido = TxtApellido.Text;
                em.Fecha_alta = TxtFechaAlta.Text;
                em.Fk_id_departamento = int.Parse(ddldepartamento.Text);
                me.crearEmpleado(em);
                TxtCodigo.Text = "";
                TxtNombre.Text = "";
                TxtFechaAlta.Text = "";
                TxtApellido.Text = "";
                Response.Redirect("/Vistas/Catalogos/Empleado.aspx");
            }
           

            SqlDataSource1.DataBind();
            tablaempleado.DataBind();

        }
    }
}