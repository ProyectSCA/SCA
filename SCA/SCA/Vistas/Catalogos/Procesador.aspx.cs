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
    public partial class Procesador : System.Web.UI.Page
    {
        private ModeloProcesador mp;
        protected void Page_Load(object sender, EventArgs e)
        {
            mp = new ModeloProcesador();
        }

        protected void btnInsertar(object sender, EventArgs e)
        {
            Clases.Beans.Procesador p = new Clases.Beans.Procesador();
            p.Nombre = TxtNombreProcesador.Text;

            mp.crearProcesador(p);
            TxtNombreProcesador.Text = "";
            TxtNombreProcesador.Focus();
           
            SqlDataSource1.DataBind();
            TablaProcesadores.DataBind();

        }
    }
}