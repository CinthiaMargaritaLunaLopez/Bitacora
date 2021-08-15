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
    public partial class Insercion_materia : System.Web.UI.Page
    {
        LogicaMateria objAccesoMateria = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            //Si es falso se está realizando la carga por primera vez
            if (IsPostBack == false)
            {
                objAccesoMateria = new LogicaMateria();
                Session["objAccesoMateria"] = objAccesoMateria;

                string msj = "";
                GridView1.DataSource = objAccesoMateria.ObtenerMateriasGrid(ref msj);
                if (GridView1.DataSource != null)
                {
                    GridView1.DataBind();
                }


            }
            else
            {
                objAccesoMateria = (LogicaMateria)Session["objAccesoMateria"];

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            EntidadMateria entidad = new EntidadMateria
            {
                NombreMateria = TextBox1.Text,
                HorasSemana = Convert.ToByte(TextBox2.Text),
                Extra = TextBox3.Text
            };
            string mensaje = "";
            Boolean isSuccess = objAccesoMateria.InsertarMateria( entidad, ref mensaje);

            string msj = "";
            GridView1.DataSource = objAccesoMateria.ObtenerMateriasGrid(ref msj);
            if (GridView1.DataSource != null)
            {
                GridView1.DataBind();
            }

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void EliminarMateria(object sender, EventArgs e)
        {
            string msj = "";
            string x = ((Button)sender).CommandArgument;
            string id = x.ToString();
            objAccesoMateria.EliminarMateria(id, ref msj);


            GridView1.DataSource = objAccesoMateria.ObtenerMateriasGrid(ref msj);
            if (GridView1.DataSource != null)
            {
                GridView1.DataBind();
            }
        }
        protected void EditarMateria(object sender, EventArgs e)
        {
            string x = ((Button)sender).CommandArgument;
            Session["id_seleccionado"] = Convert.ToInt32(x);
            Server.Transfer("Edicion_materia.aspx");

        }
    }
}