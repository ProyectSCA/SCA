using SCA.Clases.Modelos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SCA.Vistas.Catalogos
{
    public partial class SistemaOperativo : System.Web.UI.Page
    {
        private ModeloSistemaOperativo mso;
        protected void Page_Load(object sender, EventArgs e)
        {
            mso = new ModeloSistemaOperativo();
        }

        protected void btnInsertar(object sender, EventArgs e)
        {
            Clases.Beans.SistemaOperativo so = new Clases.Beans.SistemaOperativo();
            so.Nombre = TxtSistemaOperativo.Text;

            mso.crearSO(so);
            TxtSistemaOperativo.Text = "";
            TxtSistemaOperativo.Focus();

            SqlDataSource1.DataBind();
            TablaSO.DataBind();
        }
    }
}