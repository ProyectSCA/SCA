using SCA.Clases.Modelos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SCA.Vistas.Catalogos
{
    public partial class TipoComputadora : System.Web.UI.Page
    {
        private ModeloTipoComputadora mtc;
        protected void Page_Load(object sender, EventArgs e)
        {
            mtc = new ModeloTipoComputadora();
        }

        protected void btnInsertar(object sender, EventArgs e)
        {
            Clases.Beans.TipoComputadora tc = new Clases.Beans.TipoComputadora();
            tc.Nombre = TxtTipoComputadora.Text;

            mtc.crearTipoComputadora(tc);
            TxtTipoComputadora.Text = "";
            TxtTipoComputadora.Focus();

            SqlDataSource1.DataBind();
            TablaTipoComputadora.DataBind();
        }
    }
}