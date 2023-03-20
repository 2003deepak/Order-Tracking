using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Mysqlx.Crud;

namespace deepakfinal
{
    public partial class dashboard : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {
            string connectionString = "server=127.0.0.1 ; user = root ; database = order_tracking ; password = ";
            string username = (string)HttpContext.Current.Session["username"];
            string query = "SELECT order_id , product_name , order_date  FROM orders where username = '" + username + "'";


            using (MySqlConnection connection = new MySqlConnection(connectionString))
            {
                using (MySqlCommand command = new MySqlCommand(query, connection))
                {
                    connection.Open();
                    using (MySqlDataReader reader = command.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            TableRow row = new TableRow();
                            TableCell cell1 = new TableCell();
                            TableCell cell2 = new TableCell();
                            TableCell cell3 = new TableCell();
                            TableCell cell4 = new TableCell();


                            cell1.Text = reader["order_id"].ToString();
                            cell2.Text = reader["product_name"].ToString();
                            cell3.Text = reader["order_date"].ToString();
                           


                            row.Cells.Add(cell1);
                            row.Cells.Add(cell2);
                            row.Cells.Add(cell3);
                            row.Cells.Add(cell4);


                            myTable.Rows.Add(row);
                        }
                    }
                }


            }



           
        }
    }
}
