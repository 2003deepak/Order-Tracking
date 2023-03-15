<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="deepakfinal.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Order Tracking System </title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link rel="stylesheet" href="signup.css"/>

</head>
<body>
    <nav>
        
        <a href="signup.aspx"  class="Navigation"><b> SignUp </b> </a>
        <a href="login.aspx"   class="Navigation"><b> Login </b></a>
       
    </nav>

    <div class ="Signup">
   <form id="form1" runat="server">
        <div>
           

            <img src ="loginavatar.png" height="120px" />
            <h1>Sign Up </h1>
                <asp:TextBox ID="username" runat ="server" placeholder ="Enter Your Username " CssClass ="text" required></asp:TextBox>
               
                <br />
                <asp:TextBox ID="password" runat="server" placeholder="Enter Your Password " TextMode="password" CssClass="text" required ></asp:TextBox>
                <br />
                <asp:TextBox ID="email" runat="server" placeholder ="Enter Your Email Id " TextMode ="email" CssClass="text" required ></asp:TextBox>
                <br />
               <asp:Button ID="signup_button" runat ="server" Text="Sign Up" OnClick="signup_button_Click" CssClass="signupbtn" />
              
                
               <p id = "learn"><b>Do You Have an Account ? </b><a href="login.aspx"><b>Login</a></b></p>

           
           
        </div>
       
    </form>
    </div>
</body>
</html>
