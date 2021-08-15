using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ClassCapaEntidades;
using ClassCapaLogicaNegocios;

namespace Bitacora
{
    public partial class Programas_Carrera : System.Web.UI.Page
    {
        LogicaProgramaEducativo objAccesoPrograma = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            //Si es falso se está realizando la carga por primera vez
            if (IsPostBack == false)
            {
                objAccesoPrograma = new LogicaProgramaEducativo();
                Session["objAccesoPrograma"] = objAccesoPrograma;

                int id = (int)HttpContext.Current.Session["id_seleccionado"];
                string msj = "";
                GridView1.DataSource = objAccesoPrograma.ObtenerProgramasGrid(id,ref msj);
                if (GridView1.DataSource != null)
                {
                    GridView1.DataBind();
                }
            }
            else
            {
                objAccesoPrograma = (LogicaProgramaEducativo)Session["objAccesoPrograma"];

            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}