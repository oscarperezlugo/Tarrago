using System;
using System.Data;
using System.Data.SqlClient;

namespace Tarrago
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {



        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string connectionString = "workstation id=DESKTOP-BCE3QLS\\SQLEDWARD;user id=sa;pwd=123;data source=DESKTOP-BCE3QLS\\SQLEDWARD;persist security info=False;initial catalog=tarrago";

            string query = "SELECT nombre_usuario FROM usuario WHERE nombre_usuario=@user AND password=@pwd;";

            // set up a connection and command in using() blocks
            using (SqlConnection con = new SqlConnection(connectionString))
            using (SqlCommand cmd = new SqlCommand(query, con))
            {
                // add parameters and set their values
                cmd.Parameters.Add("@user", SqlDbType.VarChar, 50).Value = TextBox1.Text;
                cmd.Parameters.Add("@pwd", SqlDbType.VarChar, 50).Value = TextBox2.Text;

                // open connection
                con.Open();

                // establish data reader
                using (SqlDataReader dr = cmd.ExecuteReader())
                {
                    // if at least one row is returned....  
                    if (dr.Read())
                    {
                        // get employee ID and role from the reader
                        string nombreUsuario = dr.GetFieldValue<string>(0);

                        Session["bienvenido"] = nombreUsuario;
                        Session["fecha"] = DateTime.Now.ToString();

                        Response.Redirect("Busqueda.aspx");
                    }
                    else
                    {
                        string error = "Usuario y Contraseña incorrectos";
                        //Label1.Text = error;

                        // what do you want to do if NO ROW was returned? E.g. user/pwd combo is wrong
                    }

                    dr.Close();
                }

                con.Close();
            }
        }

        protected void LinkButtonClicked(object sender, EventArgs e)
        {
            //Response.Redirect("RecuperarPass");
        }
    }
}