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
    public partial class Edicion_Carrera : System.Web.UI.Page
    {
        LogicaCarrera objAccesoCarreras = null;
        protected void Page_Load(object sender, EventArgs e)
        {
           
            //Si es falso se está realizando la carga por primera vez
            if (IsPostBack == false)
            {
                objAccesoCarreras = new LogicaCarrera();
                Session["objAccesoCarreras"] = objAccesoCarreras;

               
            }
            else
            {
                objAccesoCarreras = (LogicaCarrera)Session["objAccesoCarreras"];
            }

            if (!IsPostBack)
            {
                List<EntidadCarrera> mostrarCarreras = null;
                string msj = "";
                string id = Convert.ToString(Session["id_seleccionado"]);
                mostrarCarreras = objAccesoCarreras.ObtenerCarreraPorID( id, ref msj);
                if (mostrarCarreras != null)
                {
                    foreach (EntidadCarrera carrera in mostrarCarreras)
                    {              
                        TextBox1.Text = carrera.nombre;
                    }
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string msj = "";
            string id = Session["id_seleccionado"].ToString() ;
            string nuevoNombre = TextBox1.Text;
            objAccesoCarreras.ModificarCarreraPorId(id, nuevoNombre, ref msj);
            Server.Transfer("InsercionCarrera.aspx");
        }
    }
}