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
    public partial class Edicion_materia : System.Web.UI.Page
    {
        LogicaMateria objAccesoMateria = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            //Si es falso se está realizando la carga por primera vez
            if (IsPostBack == false)
            {
                objAccesoMateria = new LogicaMateria();
                Session["objAccesoMateria"] = objAccesoMateria;            

            }
            else
            {
                objAccesoMateria = (LogicaMateria)Session["objAccesoMateria"];

            }
            if (!IsPostBack)
            {
                List<EntidadMateria> mostrarMaterias= null;
                string msj = "";
                string id = Convert.ToString(Session["id_seleccionado"]);
                mostrarMaterias = objAccesoMateria.ObtenerMateriaPorID (id, ref msj);
                if (mostrarMaterias != null)
                {
                    foreach (EntidadMateria Materia in mostrarMaterias)
                    {
                        TextBox1.Text = Materia.NombreMateria;
                        TextBox2.Text = Materia.HorasSemana.ToString();
                        TextBox3.Text = Materia.Extra;

                    }
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string msj = "";
            string id = Session["id_seleccionado"].ToString();
            
            EntidadMateria entidad = new EntidadMateria
            {            
                NombreMateria = TextBox1.Text,
                HorasSemana = Convert.ToByte(TextBox2.Text),
                Extra = TextBox3.Text
            };
            
            objAccesoMateria.ModificarMateriaPorId(id, entidad, ref msj);

            Server.Transfer("Insercionmateria.aspx");
        }
    }
}