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
    public partial class InsercionGrupoCuatrimestre : System.Web.UI.Page
    {
        LogicaGrupoCuatrimestre objAccesoGrupoCuatrimestre = null;
        LogicaProgramaEducativo objAccesoPrograma = null;
        LogicaGrupo objAccesoGrupo = null;
        LogicaCuatrimestre objAccesoCuatrimestre = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            //Si es falso se está realizando la carga por primera vez
            if (IsPostBack == false)
            {
                objAccesoGrupoCuatrimestre = new LogicaGrupoCuatrimestre();
                objAccesoPrograma = new LogicaProgramaEducativo();
                objAccesoGrupo = new LogicaGrupo();
                objAccesoCuatrimestre = new LogicaCuatrimestre();


                Session["objAccesoGrupoCuatrimestre"] = objAccesoGrupoCuatrimestre;
                Session["objAccesoPrograma"] = objAccesoPrograma;
                Session["objAccesoGrupo"] = objAccesoGrupo;
                Session["objAccesoCuatrimestre"] = objAccesoCuatrimestre;

                string msj = "";
                GridView1.DataSource = objAccesoGrupoCuatrimestre.ObtenerGrupoCuatrimestreGrid(ref msj);
                if (GridView1.DataSource != null)
                {
                    GridView1.DataBind();
                }
            }
            else
            {
                objAccesoGrupoCuatrimestre = (LogicaGrupoCuatrimestre)Session["objAccesoGrupoCuatrimestre"];
                objAccesoPrograma = (LogicaProgramaEducativo)Session["objAccesoPrograma"];
                objAccesoGrupo = (LogicaGrupo)Session["objAccesoGrupo"];
                objAccesoCuatrimestre = (LogicaCuatrimestre)Session["objAccesoCuatrimestre"];
            }

            if (!IsPostBack)
            {
               
                List<EntidadProgramaEducativo> mostrarProgramas = null;
                string msj = "";
                mostrarProgramas = objAccesoPrograma.ObtenerProgramasLista(ref msj);
                if (mostrarProgramas != null)
                {
                    foreach (EntidadProgramaEducativo programa in mostrarProgramas)
                    {
                        DropDownList1.Items.Add(new ListItem(programa.ProgramaEd.ToString(), programa.id_pe.ToString()));
                        DropDownList1.DataBind();
                    }
                }

                List<EntidadGrupo> mostrarGrupos = null;           
                mostrarGrupos = objAccesoGrupo.ObtenerGruposLista(ref msj);
                if (mostrarGrupos != null)
                {
                    foreach (EntidadGrupo grupo in mostrarGrupos)
                    {
                        DropDownList2.Items.Add(new ListItem(grupo.grado.ToString()+grupo.letra.ToString(), grupo.in_Grupo.ToString()));
                        DropDownList2.DataBind();
                    }
                }

                List<EntidadCuatrimestre> mostrarCuatrimestre = null;
                mostrarCuatrimestre = objAccesoCuatrimestre.ObtenerListaCuatrimestres(ref msj);
                if (mostrarCuatrimestre != null)
                {
                    foreach (EntidadCuatrimestre cuatrimestre in mostrarCuatrimestre)
                    {
                        DropDownList3.Items.Add(new ListItem(cuatrimestre.periodo.ToString() +"  "+ cuatrimestre.anio.ToString(),cuatrimestre.id_cuatri.ToString()));
                        DropDownList3.DataBind();
                    }
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            EntidadGrupoCuatrimestre entidad = new EntidadGrupoCuatrimestre
            {
                F_ProgEd = Convert.ToByte(DropDownList1.SelectedValue),
                F_Grupo = Convert.ToInt16(DropDownList2.SelectedValue),
                F_Cuatri = Convert.ToInt16(DropDownList3.SelectedValue),
                Turno = TextBox1.Text,
                Modalidad = TextBox2.Text,
                Extra = TextBox3.Text
            };
            string msj = "";
            objAccesoGrupoCuatrimestre.InsertarGrupoCuatrimestre(entidad,ref msj);
            
            GridView1.DataSource = objAccesoGrupoCuatrimestre.ObtenerGrupoCuatrimestreGrid(ref msj);
            if (GridView1.DataSource != null)
            {
                GridView1.DataBind();
            }

        }

        protected void Eliminar_registro(object sender, EventArgs e)
        {

            string msj = "";
            string x = ((Button)sender).CommandArgument;
            string id = x.ToString();
            objAccesoGrupoCuatrimestre.EliminarGrupoCuatrimestre(id, ref msj);


            GridView1.DataSource = objAccesoGrupoCuatrimestre.ObtenerGrupoCuatrimestreGrid(ref msj);
            if (GridView1.DataSource != null)
            {
                GridView1.DataBind();
            }
        }
        protected void Editar_registro(object sender, EventArgs e)
        {
            string x = ((Button)sender).CommandArgument;
            Session["id_seleccionado"] = Convert.ToInt32(x);
            Server.Transfer("Edicion_GrupoCuatrimestre.aspx");
        }
    }

}