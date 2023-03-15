using System;
using System.Collections.Generic;
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
        SqlConnection con = new SqlConnection("data source = DESKTOP-QUR84FS\\SQLEXPRESS ; initial catalog = order_tracking ;integrated security = true ;");
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        
        protected void addproduct_button_Click(object sender, EventArgs e)
        {
            String product_name = dd1.SelectedValue;
            String username = (String)HttpContext.Current.Session["username"];
            String orderid = generateOrderID();

            try
            {
                SqlCommand cmd = new SqlCommand("insert into orders(username , product_name , order_id) values('" + username + "','" + product_name + "','" + orderid + "')", con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Successfully Registered ')", true);
                string message = "Successfully Added Product  ";
                string script = $"<script>alert('{message}');</script>";
                Response.Write(script);
                Response.Redirect("dashboard.aspx");
            }catch(Exception ex)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Successfully Registered ')", true);
                string message = "Not Added";
                string script = $"<script>alert('{message}');</script>";
                Response.Write(script);
                Response.Redirect("dashboard.aspx");
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
