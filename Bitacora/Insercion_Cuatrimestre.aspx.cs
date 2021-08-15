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
    public partial class WebForm1 : System.Web.UI.Page
    {
        LogicaCuatrimestre accesoCuatri = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            //Si es falso se está realizando la carga por primera vez
            if (IsPostBack == false)
            {
                accesoCuatri = new LogicaCuatrimestre();
                Session["accesoCuatri"] = accesoCuatri;

                string msj = "";
                GridView1.DataSource = accesoCuatri.ObtenerCuatrimetresGrid(ref msj);
                if (GridView1.DataSource != null)
                {
                    GridView1.DataBind();
                }
            }
            else
            {
                accesoCuatri = (LogicaCuatrimestre)Session["accesoCuatri"];

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            EntidadCuatrimestre entidad = new EntidadCuatrimestre
            {
                periodo = TextBox1.Text,
                anio = Convert.ToInt32(TextBox2.Text),
                inicio = TextBox3.Text,
                fin = TextBox4.Text,
                extra = TextBox5.Text
            };
            string mensaje = "";
            Boolean isSuccess = accesoCuatri.InsertarNuevoCuatrimestre(entidad, ref mensaje);

            if (isSuccess == true)
            {
                TextBox6.Text = mensaje;
            }
            else
            {
                TextBox6.Text = mensaje;
            }
            GridView1.DataSource = accesoCuatri.ObtenerCuatrimetresGrid(ref mensaje);
            if (GridView1.DataSource != null)
            {
                GridView1.DataBind();
            }
        }


        protected void EliminarCuatri(object sender, EventArgs e)
        {
            string msj = "";
            string x = ((Button)sender).CommandArgument;
            string id = x.ToString();
            accesoCuatri.EliminarCuatri(id, ref msj);


            GridView1.DataSource = accesoCuatri.ObtenerCuatrimetresGrid(ref msj);
            if (GridView1.DataSource != null)
            {
                GridView1.DataBind();
            }
        }
        public void EditarCuatri(object sender, EventArgs e)
        {
            string x = ((Button)sender).CommandArgument;
            Session["id_seleccionado"] = Convert.ToInt32(x);
            Server.Transfer("Edicion_Cuatrimestre.aspx");
        }
    }
}