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
    public partial class Insercion_grupo : System.Web.UI.Page
    {
        LogicaGrupo objAccesoGrupo = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
                objAccesoGrupo = new LogicaGrupo();
                Session["objAccesoGrupo"] = objAccesoGrupo;

                string msj = "";
                GridView1.DataSource = objAccesoGrupo.ObtenerGruposGrid (ref msj);
                if (GridView1.DataSource != null)
                {
                    GridView1.DataBind();
                }


            }
            else
            {
                objAccesoGrupo = (LogicaGrupo)Session["objAccesoGrupo"];

            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            EntidadGrupo entidad = new EntidadGrupo
            {
                grado = Convert.ToByte(TextBox1.Text),
                letra = TextBox2.Text,
                extra = TextBox3.Text          
            };
            string mensaje = "";
            Boolean isSuccess = objAccesoGrupo.InsertarGrupo(entidad, ref mensaje);
            TextBox1.Text = mensaje;
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void EliminarGrupo(object sender, EventArgs e)
        {
            string msj = "";
            string x = ((Button)sender).CommandArgument;
            string id = x.ToString();
            objAccesoGrupo.EliminarGrupo(id, ref msj);
            TextBox1.Text = msj;

            GridView1.DataSource = objAccesoGrupo.ObtenerGruposGrid(ref msj);
            if (GridView1.DataSource != null)
            {
                GridView1.DataBind();
            }    
        }
        protected void EditarGrupo(object sender, EventArgs e)
        {
            string x = ((Button)sender).CommandArgument;
            Session["id_seleccionado"] = Convert.ToInt32(x);
            Server.Transfer("Edicion_grupo.aspx");

        }
    }
           
}