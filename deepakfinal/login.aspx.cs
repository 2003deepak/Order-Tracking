using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace deepakfinal
{
    public partial class WebForm2 : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection("data source = DESKTOP-QUR84FS\\SQLEXPRESS ; initial catalog = order_tracking ;integrated security = true ;");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void login_button_Click(object sender, EventArgs e)
        {
            
            try
            {
                
                con.Open();
                string a = username.Text;
                SqlCommand cmd = new SqlCommand("select count(*) from signup where username='" + username.Text + "' and password ='" + password.Text + "' ", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                cmd.ExecuteNonQuery();
                if (dt.Rows[0][0].ToString() == "1")
                {

                    Session["username"] = username.Text;

                    if (a == "colaba146")
                    {
                        string message = "Login Successful  ";
                        string script = $"<script>alert('{message}');</script>";
                        Response.Write(script);
                        Response.Redirect("warehouse.aspx");
                    }else if(a == "thane146")
                    {
                        string message = "Login Successful  ";
                        string script = $"<script>alert('{message}');</script>";
                        Response.Write(script);
                        Response.Redirect("warehouse.aspx");
                    }else if(a == "bhiwandi146"){
                        string message = "Login Successful  ";
                        string script = $"<script>alert('{message}');</script>";
                        Response.Write(script);
                        Response.Redirect("warehouse.aspx");
                    }
                    else
                    {
                        string message = "Login Successful";
                        string script = $"<script>alert('{message}');</script>";
                        Response.Write(script);
                        Response.Redirect("dashboard.aspx");
                    }

                    

                }
                else
                {
                    string message = "Login Failed ";
                    string script = $"<script>alert('{message}');</script>";
                    Response.Write(script);

                }



            
                
            }
            catch (Exception ex)
            {
                string message = ex.Message;
                string script = $"<script>alert('{message}');</script>";
                Response.Write(script);
            }
        }
    }
}