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
        protected void Page_Load(object sender, EventArgs e)
        {
            TxtPrefijo.Text = DropDepto.SelectedValue.ToString();
        }

        protected void DropDepto_SelectedIndexChanged(object sender, EventArgs e)
        {
            TxtPrefijo.Text = "20";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
        }
    }
}