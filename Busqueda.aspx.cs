using System;
using System.Data;
using System.Data.SqlClient;

namespace Tarrago
{
    public partial class Busqueda : System.Web.UI.Page
    {
        ConexionesDB bd = new ConexionesDB();
        private string expresion = null;
        DataTable resultados = null;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["expresion"] != null)
            {
                expresion = Session["expresion"].ToString();

                resultados = getBusqueda(expresion);

                if (resultados.Rows.Count > 0)
                {
                    gridConsulta1.DataSource = resultados;
                    gridConsulta1.DataBind();

                    gridConsulta2.DataSource = resultados;
                    gridConsulta2.DataBind();
                }
            }
            //switch(resultados.Rows.Count)
            //{
            //    case 0:
            //        Label4.Text = "REGISTRO NO ENCONTRADO";
            //        Label3.Text = "Que desea hacer?";
            //        LinkButton1.Visible = true;
            //        break;
            //    case 1:                    
            //        obtenerFila(0);
            //        break;
            //    default:
            //        break;
            //}
            //if (GridView1.Rows.Count + GridView5.Rows.Count  == 0)
            //if (gridConsulta.Rows.Count == 0)
            //{
            //    Label4.Text = "REGISTRO NO ENCONTRADO";
            //    Label3.Text = "Que desea hacer?";
            //    Label6.Text = "";

            //    LinkButton1.Visible = true;
            //}
            //else
            //{
            //    Label4.Text = "TOMADOR PRINCIPAL";
            //    Label3.Text = "ASEGURADOS";
            //    Label6.Text = "CONSULTA";
            //}


        }

        public DataTable getBusqueda(string exp)
        {
            DataTable dt = new DataTable();

            string query = "SELECT TOP 1 * FROM v_consulta WHERE (nombre_empleado LIKE '%{0}%' OR nombre_empresa LIKE '%{0}%') ORDER BY id_empleado DESC";

            query = string.Format(query, exp);

            SqlDataAdapter da = new SqlDataAdapter(query, bd.conn);
            bd.conn.Open();
            da.Fill(dt);
            bd.conn.Close();
            return dt;
        }

    }
}