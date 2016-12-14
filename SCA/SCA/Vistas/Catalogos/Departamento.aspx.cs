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
    public partial class Departamento : System.Web.UI.Page
    {
        private ModeloDepartamento md;
        string script = @"<script týpe='text/javascript'>alert('Error: campo o campos vacios');</script>";
        protected void Page_Load(object sender, EventArgs e)
        {
            TxtCodigoDepartamento.Focus();
            md = new ModeloDepartamento();
        }

        protected void btnInsertar(object sender, EventArgs e)
        {
            Clases.Beans.Departamento d = new Clases.Beans.Departamento();

            if (String.IsNullOrEmpty(TxtCodigoDepartamento.Text) || String.IsNullOrEmpty(TxtNombreDepartamento.Text) || String.IsNullOrEmpty(TxtDescripcionDepartamento.Text))
            {
                ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", script, false);
            }
            else
            {
                d.Codigo_departamento = TxtCodigoDepartamento.Text;
                d.Nombre = TxtNombreDepartamento.Text;
                d.Descripcion = TxtDescripcionDepartamento.Text;

                md.crearDepartamento(d);
                TxtCodigoDepartamento.Text = "";
                TxtNombreDepartamento.Text = "";
                TxtDescripcionDepartamento.Text = "";
                Response.Redirect("/Vistas/Catalogos/Departamento.aspx");
            }

            SqlDataSource1.DataBind();
            TablaDepartamento.DataBind();

        }
    }
}