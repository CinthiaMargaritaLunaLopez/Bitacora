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
    public partial class Edicion_programa : System.Web.UI.Page
    {
        LogicaCarrera objAccesoCarreras = null;

        LogicaProgramaEducativo objAccesoProgramas = null;
        protected void Page_Load(object sender, EventArgs e)
        {
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
                        DropDownList1.Items.Add(new ListItem(carrera.nombre.ToString(), carrera.id_carrera.ToString()));
                        DropDownList1.DataBind();
                    }
                }

                List<EntidadProgramaEducativo> mostrarPrograma = null;
              
                string id = Convert.ToString(Session["id_seleccionado"]);
                mostrarPrograma = objAccesoProgramas.ObtenerProgramaPorId(id, ref msj);
                if (mostrarPrograma != null)
                {
                    foreach (EntidadProgramaEducativo programa in mostrarPrograma)
                    {
                        TextBox1.Text = programa.ProgramaEd;
                        TextBox2.Text = programa.Extra;
                    }
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string id = Session["id_seleccionado"].ToString();


            EntidadProgramaEducativo entidadPrograma = new EntidadProgramaEducativo
            {
                ProgramaEd = TextBox1.Text,
                Extra = TextBox2.Text
            };
            if (DropDownList1.SelectedItem != null)
            {

                Session["id_Carrera"] = Convert.ToInt32(DropDownList1.SelectedValue);
            };

            
            string idCarrera = Convert.ToString(DropDownList1.SelectedValue);
            string mensaje = "";


            mensaje= objAccesoProgramas.EditarPrograma(id, entidadPrograma, idCarrera, ref mensaje);
            Server.Transfer("InsercionProgramaEducativo.aspx");
        }
    }
}