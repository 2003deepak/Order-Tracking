using System;
using System.Collections.Generic;
using System.Configuration;
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

        SqlConnection con = new SqlConnection("data source = DESKTOP-QUR84FS\\SQLEXPRESS ; initial catalog = order_tracking ;integrated security = true ;");
        

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void signup_button_Click(object sender, EventArgs e)
        {
           
                SqlCommand cmd = new SqlCommand("insert into signup values('" + username.Text + "','" + password.Text + "','" + email.Text + "')", con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Successfully Registered ')", true);
                string message = "Successfully Registered ";
                string script = $"<script>alert('{message}');</script>";
                Response.Write(script);

                Response.Redirect("login.aspx");
               

        }
    }
}
