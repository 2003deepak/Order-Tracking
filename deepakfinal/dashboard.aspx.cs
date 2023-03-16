using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace deepakfinal
{
    public partial class dashboard : System.Web.UI.Page
    {
        String conString = "server=127.0.0.1 ; user = root ; database = order_tracking ; password = ";
        StringBuilder table = new StringBuilder();

        protected void Page_Load(object sender, EventArgs e)
        {
            string username = (string)HttpContext.Current.Session["username"];
            MySqlConnection con = new MySqlConnection(conString);
            con.Open();
            MySqlCommand cmd = new MySqlCommand("select order_id,product_name,order_date from orders where username = '" + username + "' ");
            cmd.Connection = con;
            con.Open();
            MySqlDataReader rd = cmd.ExecuteReader();

            if (rd.HasRows)
            {
                while (rd.Read())
                {
                    table.Append("<tr>");
                    table.Append("<td>" + rd[0] + "</td>");
                    table.Append("<td>" + rd[1] + "</td>");
                    table.Append("<td>" + rd[2] + "</td>");
                    table.Append("</tr>");
                }

                rd.Close();
            }

            con.Close();

            // Add the HTML table to the web page
            Literal1.Text = "<table><thead><tr><th>Order ID</th><th>Product Name</th><th>Order Date</th></tr></thead><tbody>" + table.ToString() + "</tbody></table>";
        }

        protected void addproduct_Click(object sender, EventArgs e)
        {

        }
    }
}
