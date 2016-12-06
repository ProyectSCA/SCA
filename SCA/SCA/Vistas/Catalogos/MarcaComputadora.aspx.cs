using SCA.Clases.Modelos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SCA.Vistas.Catalogos
{
    public partial class MarcaComputadora : System.Web.UI.Page
    {
        private ModeloMarcaComputadora mmc;
        protected void Page_Load(object sender, EventArgs e)
        {
            mmc = new ModeloMarcaComputadora();
        }

        protected void btnInsertar(object sender, EventArgs e)
        {
            Clases.Beans.MarcaComputadora mc = new Clases.Beans.MarcaComputadora();

            mc.Marca = TxtMarca.Text;

            mmc.crearMarcaComputadora(mc);

            TxtMarca.Text = "";
            TxtMarca.Focus();

            SqlDataSource1.DataBind();
            TablaMarcaComputadoras.DataBind();

            Response.Redirect("/Vistas/Catalogos/MarcaComputadora.aspx");
        }
    }
}