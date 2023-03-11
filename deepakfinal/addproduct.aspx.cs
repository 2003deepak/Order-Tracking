using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace deepakfinal
{

    public partial class addproduct : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("data source = DESKTOP-QUR84FS\\SQLEXPRESS ; initial catalog = order_tracking ;integrated security = true ;");
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void addproduct_button_Click(object sender, EventArgs e)
        {
            String choice = dd1.SelectedValue;
            
            deepak.Text= choice;
            rinku.Text = generateOrderId();
            SqlCommand cmd = new SqlCommand("insert into order values('" + username.Text + "','" + password.Text + "','" + email.Text + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Successfully Registered ')", true);
            string message = "Successfully Registered ";
            string script = $"<script>alert('{message}');</script>";
            Response.Write(script);

            Response.Redirect("login.aspx");


        }

        protected  static String generateOrderId()
        {

            // generating order id of 5 digits 

            Random rn = new Random();
            String s = "O";
            int i = 1;
            while (i <= 5)
            {

                int a = rn.Next(9);
                s = s + a;
                i++;
            }

            return s;
        }
    }
}