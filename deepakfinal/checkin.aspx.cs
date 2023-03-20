using MySql.Data.MySqlClient;
using MySqlX.XDevAPI.Relational;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics.Eventing.Reader;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace deepakfinal
{
    public partial class checkin : System.Web.UI.Page
    {
        string connectionString = "server=127.0.0.1 ; user = root ; database = order_tracking ; password = ";
        string username = (string)HttpContext.Current.Session["username"];
        protected void Page_Load(object sender, EventArgs e)
        {
            
            string query = "SELECT order_id FROM orders";

            
            if (username == "bhiwandi146")
            {
                using (MySqlConnection connection = new MySqlConnection(connectionString))
                {
                    using (MySqlCommand command = new MySqlCommand(query, connection))
                    {
                        connection.Open();
                        MySqlDataReader reader = command.ExecuteReader();
                        while (reader.Read())
                        {
                            dd1.Items.Add(reader.GetString(0));
                        }

                        reader.Close();
                    }
                }

            }
        }

        protected void check_in_button_Click(object sender, EventArgs e)
        {
            using (MySqlConnection con = new MySqlConnection(connectionString))
            {
                try
                {
                    con.Open();
                    MySqlCommand cmd = new MySqlCommand("INSERT INTO bhiwandi146(order_id) VALUES(@orderid)");
                    cmd.Connection = con;
                    
                    cmd.Parameters.AddWithValue("@orderid", dd1.SelectedValue);
                    

                    //cmd.Parameters.AddWithValue("@order_date", DateTime.Now);
                    cmd.ExecuteNonQuery();
                    Response.Redirect("dashboard.aspx");



                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);

                    Response.Redirect("login.aspx");
                }
            }
        }
    }

        
}
