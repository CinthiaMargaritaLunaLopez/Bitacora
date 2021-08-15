using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ClassCapaEntidades;
using ClassCapaAccesoDatos;
using System.Data;
using System.Data.SqlClient;

namespace ClassCapaLogicaNegocios
{
    public class LogicaProgramaEducativo
    {
        private ClassAccesoSQL objectoDeAcceso =
       new ClassAccesoSQL("Data Source=DESKTOP-4UCILN2\\SQLEXPRESS;Initial Catalog=Bitacora2021LabsUTP; Integrated Security=true");
        public Boolean InsertarProgramaEducativo( EntidadProgramaEducativo entidadPrograma, EntidadCarrera entidadCarrera, ref string mensajeSalida)
        {
            SqlParameter[] parametros = new SqlParameter[3];

            parametros[0] = new SqlParameter
            {
                ParameterName = "ProgramaEd",
                SqlDbType = SqlDbType.VarChar,
                Size = 150,
                Direction = ParameterDirection.Input,
                Value = entidadPrograma.ProgramaEd
            };

            parametros[1] = new SqlParameter
            {
                ParameterName = "F_Carrera",
                SqlDbType = SqlDbType.TinyInt,
                Direction = ParameterDirection.Input,
                Value = entidadCarrera.id_carrera
            };

            parametros[2] = new SqlParameter
            {
                ParameterName = "Extra",
                SqlDbType = SqlDbType.VarChar,
                Size = 50,
                Direction = ParameterDirection.Input,
                Value = entidadPrograma.Extra

            };

        


            string sentencia = "insert into ProgramaEducativo values(@ProgramaEd,@F_Carrera,@Extra)";

            Boolean salida = false;

            salida = objectoDeAcceso.OperacionesSQLConParametros(sentencia, objectoDeAcceso.AbrirConexion(ref mensajeSalida), ref mensajeSalida, parametros);

            return salida;
        }
        public DataTable ObtenerProgramasGrid(int id ,ref string msj_salida)
        {

            string query = "select nombreCarrea as Carrera, ProgramaEd as Programa, Extra from ProgramaEducativo inner join Carrera on id_Carrera='" + id+"' and F_Carrera='"+id+"';";

            DataSet ObtencionCarreras = null;
            DataTable Datos_salida = null;
            ObtencionCarreras = objectoDeAcceso.ConsultaDS(query, objectoDeAcceso.AbrirConexion(ref msj_salida), ref msj_salida);

            if (ObtencionCarreras != null)
            {
                Datos_salida = ObtencionCarreras.Tables[0];
                if (Datos_salida.Rows.Count == 0)
                {
                    //La consulta es correcta pero el DataSet no está
                    //devolviendo registros

                }

            }

            return Datos_salida;
        }
    }
}
