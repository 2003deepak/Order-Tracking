using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace deepakfinal
{
    public partial class logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
            Session.Abandon();
            Session.Clear();
            string message = "Successfully Logout ";
            string script = $"<script>alert('{message}');</script>";
            Response.Write(script);
            Response.Redirect("login.aspx");
        }
    }
}