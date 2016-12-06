using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SCA.Vistas.Activos
{
    public partial class AccesoriosComputo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDepto_SelectedIndexChanged(object sender, EventArgs e)
        {

            Empleado.DataBind();
            DropEmpleado.DataBind();
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }
    }
}