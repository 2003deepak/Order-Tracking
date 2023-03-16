using MySql.Data.MySqlClient;
using Mysqlx.Crud;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace deepakfinal
{
    public partial class addproduct : System.Web.UI.Page
    {
        String conString = "server=127.0.0.1 ; user = root ; database = order_tracking ; password = ";
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        
        protected void addproduct_button_Click(object sender, EventArgs e)
        {



            using (MySqlConnection con = new MySqlConnection(conString))
            {
                try
                {
                    con.Open();
                    string userid = (string)HttpContext.Current.Session["username"];
                    string order = generateOrderID();
                    string product = dd1.SelectedValue;


                    MySqlCommand cmd = new MySqlCommand("insert into orders(username , order_id , product_name ) values('" + userid + "','" + order + "','" + product + "')", con);
                    
                    cmd.ExecuteNonQuery();
                    con.Close();
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Succesfully Added Product ');", true);
                    Response.Redirect("dashboard.aspx");

                }
                catch (Exception ex)
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert(' Not Added Product ');", true);


                }

            }
               
            

        }
       
       

        protected String generateOrderID()
        {
            Random rn = new Random();
            String sb = "O";
            int i = 1;
            while (i < 5)
            {

                
                String a = rn.Next(10).ToString();
                sb = sb + a;    
                i++;
            }

            return sb; 

            

        }

    }
}
