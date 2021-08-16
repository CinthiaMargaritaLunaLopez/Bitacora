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
    public partial class Edicion_GrupoCuatrimestre : System.Web.UI.Page
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
                List<EntidadGrupoCuatrimestre> mostrarEGP = null;
                string msj = "";
                string id = Convert.ToString(Session["id_seleccionado"]);
                mostrarEGP = objAccesoGrupoCuatrimestre.ObtenerGrupoCuatrimestrePorId(id, ref msj);
                if (mostrarEGP != null)
                {
                    foreach (EntidadGrupoCuatrimestre entidadGC in mostrarEGP)
                    {
                        TextBox1.Text = entidadGC.Turno;
                        TextBox2.Text = entidadGC.Modalidad;
                        TextBox3.Text = entidadGC.Extra;
                    }
                }

                List<EntidadProgramaEducativo> mostrarProgramas = null;
               
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
                        DropDownList2.Items.Add(new ListItem(grupo.grado.ToString() + grupo.letra.ToString(), grupo.in_Grupo.ToString()));
                        DropDownList2.DataBind();
                    }
                }

                List<EntidadCuatrimestre> mostrarCuatrimestre = null;
                mostrarCuatrimestre = objAccesoCuatrimestre.ObtenerListaCuatrimestres(ref msj);
                if (mostrarCuatrimestre != null)
                {
                    foreach (EntidadCuatrimestre cuatrimestre in mostrarCuatrimestre)
                    {
                        DropDownList3.Items.Add(new ListItem(cuatrimestre.periodo.ToString() + "  " + cuatrimestre.anio.ToString(), cuatrimestre.id_cuatri.ToString()));
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
            string id = Convert.ToString(Session["id_seleccionado"]);
            objAccesoGrupoCuatrimestre.UpdateGrupoCuatrimestre(entidad, id, ref msj);
            Server.Transfer("InsercionGrupoCuatrimestre.aspx");
        }
    }
}