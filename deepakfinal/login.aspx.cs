using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace deepakfinal
{
    public partial class WebForm2 : System.Web.UI.Page
    {

        String conString = "server=127.0.0.1 ; user = root ; database = order_tracking ; password = ";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void login_button_Click(object sender, EventArgs e)
        {
            MySqlConnection con = new MySqlConnection(conString);
            try
            {
                
                String a = username.Text;
                Session["username"] = a ;
                con.Open();
                String query = "select count(*) from signup where username = '" + username.Text + "' and password = '" + password.Text + "' ";
                MySqlCommand cmd = new MySqlCommand(query, con);
                int count = Convert.ToInt32(cmd.ExecuteScalar());
                if(count ==1)
                {
                    if(a=="thane146" || a=="bhiwandi146" || a == "colaba146")
                    {

                        Response.Write("Login Successful");
                        Response.Redirect("warehouse.aspx");

                    }
                    else
                    {
                        
                        Response.Write("Login Successful");
                        Response.Redirect("dashboard.aspx");
                    }
                }
                else
                {
                    
                    Response.Write("Login Failed");
                    Response.Redirect("login.aspx");
                }
            }catch(Exception ex)
            {
                Response.Write(ex.ToString());
            }
           
                    
               
            

        }
    }
}
