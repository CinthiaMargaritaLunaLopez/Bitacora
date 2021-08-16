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
    public partial class Edicion_grupo : System.Web.UI.Page
    {
        LogicaGrupo objAccesoGrupo = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            //Si es falso se está realizando la carga por primera vez
            if (IsPostBack == false)
            {
                objAccesoGrupo = new LogicaGrupo();
                Session["objAccesoGrupo"] = objAccesoGrupo;      
            }
            else
            {
                objAccesoGrupo = (LogicaGrupo)Session["objAccesoGrupo"];

            }
            if (!IsPostBack)
            {
                List<EntidadGrupo> mostrarGrupos = null;
                string msj = "";
                string id = Convert.ToString(Session["id_seleccionado"]);
                mostrarGrupos = objAccesoGrupo.ObtenerGrupoPorID(id, ref msj);
                if (mostrarGrupos != null)
                {
                    foreach (EntidadGrupo grupo in mostrarGrupos)
                    {
                        TextBox1.Text = grupo.grado.ToString();
                        TextBox2.Text = grupo.letra;
                        TextBox3.Text = grupo.extra;
                    }
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string msj = "";
            string id = Session["id_seleccionado"].ToString();

            EntidadGrupo entidad = new EntidadGrupo
            {
                grado = Convert.ToByte(TextBox1.Text),
                letra = TextBox2.Text,
                extra = TextBox3.Text
            };

            objAccesoGrupo.ModificarGrupoPorId(id, entidad, ref msj);

            Server.Transfer("Insercion_grupo.aspx");
        }
    }
}