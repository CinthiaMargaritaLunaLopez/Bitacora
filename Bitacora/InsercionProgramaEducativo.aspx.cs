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
    public partial class InsercionProgramaEducativo : System.Web.UI.Page
    {
        LogicaCarrera objAccesoCarreras  = null;

        LogicaProgramaEducativo objAccesoProgramas = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            //Si es falso se está realizando la carga por primera vez
            if (IsPostBack == false)
            {
                objAccesoCarreras = new LogicaCarrera();
                Session["objAccesoCarreras"] = objAccesoCarreras;

                objAccesoProgramas = new LogicaProgramaEducativo();
                Session["objProgramaEducativo"] = objAccesoProgramas;
            }
            else
            {
                objAccesoCarreras = (LogicaCarrera)Session["objAccesoCarreras"];
                objAccesoProgramas = (LogicaProgramaEducativo)Session["objProgramaEducativo"];
            }

            if (!IsPostBack)
            {
                List<EntidadCarrera> mostrarCarreras = null;
                string msj = "";
                mostrarCarreras = objAccesoCarreras.ObtenerCarreras(ref msj);
                if (mostrarCarreras != null)
                {
                    foreach (EntidadCarrera carrera in mostrarCarreras)
                    {
                        DropDownList1.Items.Add(new ListItem(carrera.nombre.ToString(),carrera.id_carrera.ToString()));
                        DropDownList1.DataBind();
                    }
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            EntidadProgramaEducativo entidadPrograma = new EntidadProgramaEducativo
            {
                ProgramaEd = TextBox1.Text,
                Extra = TextBox2.Text
            };
            if (DropDownList1.SelectedItem != null)
            {
                
                Session["id_Carrera"] = Convert.ToInt32(DropDownList1.SelectedValue);
            };

            EntidadCarrera entidadCarrera = new EntidadCarrera
            {
                id_carrera = Convert.ToInt32(Session["id_Carrera"])
            };

            string mensaje = "";
        

            Boolean isSucces = objAccesoProgramas.InsertarProgramaEducativo(entidadPrograma, entidadCarrera, ref mensaje);

            TextBox3.Text = mensaje;


        }
    }
}