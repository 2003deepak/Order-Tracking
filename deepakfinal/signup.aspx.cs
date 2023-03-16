using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace deepakfinal
{
    public partial class WebForm1 : System.Web.UI.Page
    {

        String conString = "server=127.0.0.1 ; user = root ; database = order_tracking ; password = ";
        

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void signup_button_Click(object sender, EventArgs e)
        {
            using (MySqlConnection con = new MySqlConnection(conString))
            {
                try
                {
                    con.Open();
                    MySqlCommand cmd = new MySqlCommand("INSERT INTO signup (username, password, email) VALUES (@username, @password, @email)");
                    cmd.Connection = con;
                    cmd.Parameters.AddWithValue("@username", username.Text);
                    cmd.Parameters.AddWithValue("@password", password.Text);
                    cmd.Parameters.AddWithValue("@email", email.Text);
                    cmd.ExecuteNonQuery();
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Succesfully Registered ');", true);
                    Response.Redirect("login.aspx");

                    
                }
                catch (Exception ex)
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('User record not inserted ');", true);

                    Response.Redirect("login.aspx");
                }
            }

        }
    }
}
