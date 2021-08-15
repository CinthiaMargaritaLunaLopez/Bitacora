using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//IMPORTAR LAS CLASES DE LOGICA DE NEGOCIOS Y ENTIDADES
using ClassCapaLogicaNegocios; //TRAE MÉTODOS DE INSERCIÓN
using ClassCapaEntidades; //LOS CONTENEDORES



namespace Bitacora
{
    public partial class InsercionCarrera : System.Web.UI.Page
    {
        LogicaCarrera objAccesoCarrera = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            //Si es falso se está realizando la carga por primera vez
            if (IsPostBack == false)
            {
                objAccesoCarrera = new LogicaCarrera();
                Session["objAccesoCarrera"] = objAccesoCarrera;

                string msj = "";
                GridView1.DataSource = objAccesoCarrera.ObtenerCarrerasGrid(ref msj);
                if (GridView1.DataSource != null)
                {
                    GridView1.DataBind();
                }
            }
            else
            {
                objAccesoCarrera = (LogicaCarrera)Session["objAccesoCarrera"];

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            EntidadCarrera entidad = new EntidadCarrera {
                nombre = TextBox1.Text
            };
            string mensaje = "";
            Boolean isSuccess = objAccesoCarrera.InsertarCarrera(entidad, ref mensaje);

            if (isSuccess == true)
            {
                TextBox2.Text = mensaje;
            }
            GridView1.DataSource = objAccesoCarrera.ObtenerCarrerasGrid(ref mensaje);
            if (GridView1.DataSource != null)
            {
                GridView1.DataBind();
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

       
        protected void EliminarCarrera(object sender, EventArgs e)
        {
            string msj = "";
            string x = ((Button)sender).CommandArgument;
            string id = x.ToString();
            objAccesoCarrera.EliminarCarrera( id, ref msj);
                       

            GridView1.DataSource = objAccesoCarrera.ObtenerCarrerasGrid(ref msj);
            if (GridView1.DataSource != null)
            {
                GridView1.DataBind();
            }
        }
        public void EditarCarrera(object sender, EventArgs e)
        {
            string x = ((Button)sender).CommandArgument;
            Session["id_seleccionado"] = Convert.ToInt32(x);
            Server.Transfer("Edicion_carrera.aspx");
        }

        public void VerProgramasEducativos(object sender, EventArgs e)
        {
            string x = ((Button)sender).CommandArgument;
            Session["id_seleccionado"] = Convert.ToInt32(x);
            Server.Transfer("Programas_Carrera.aspx");
        }

    }
}