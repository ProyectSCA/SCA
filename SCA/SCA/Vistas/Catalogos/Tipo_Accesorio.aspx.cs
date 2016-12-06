using SCA.Clases.Modelos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SCA.Vistas.Catalogos
{
    public partial class Tipo_Accesorio : System.Web.UI.Page
    {
        private ModeloTipoAccesorio Accesorio;
           
            protected void Page_Load(object sender, EventArgs e)
        {
            Accesorio = new ModeloTipoAccesorio();
        }

        protected void BtnGuardar_Click(object sender, EventArgs e)
        {

            try
            {
                Clases.Beans.Tipo_accesorio ta = new Clases.Beans.Tipo_accesorio();
                ta.Nombre = TxtAccesorio.Text;
                ta.Descripcion = TxtADescripcion.Text;

                if (Accesorio.crearTipoAccesorio(ta))
                {
                    TxtAccesorio.Text = " ";
                    TxtADescripcion.Text = " ";

                    Response.Write("<script>alert('Datos Ingresados Correctamente');</script>");

                    //Instrucción para refrescar el sqldatasource y el datagrid
                    SqlDataSource1.DataBind();
                    TablaTipoAccesorio.DataBind();
                }

            }
            catch
            {
                Response.Write("<script>alert('Error al ingresar los datos');</script>");
            }


           

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
    }
}