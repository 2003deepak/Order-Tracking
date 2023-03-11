<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="deepakfinal.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Order Tracking System</title>
    <link rel="stylesheet" href="login.css"/>
</head>
<body>
    <nav>
        
        <a href="signup.aspx"  class="Navigation"><b> SignUp </b> </a>
        <a href="login.aspx"   class="Navigation"><b> Login </b></a>
       
    </nav>

    <div class="login">
     
    <form id="form1" runat="server" >
        <img src="loginavatar.png"  height="120px"/>
            <h1>LOGIN</h1>

            <asp:TextBox ID="username" runat="server" placeholder="Enter Your Username " CssClass="text"></asp:TextBox>
            <br />
            <asp:TextBox ID="password" runat="server" placeholder="Enter Your Password " TextMode="password" CssClass="text"  ></asp:TextBox>
            <br/>
            
            <asp:Button ID="login_button" runat="server" Text ="Login Now" CssClass ="button_login" OnClick="login_button_Click"/>
             <br />
            <p>Forgot Password? <a href="forgot.html">Click Here </a></p>
            <p>Not yet registered <a href="signup.aspx">Register </a></p>
    </form>
    </div>
</body>
</html>
