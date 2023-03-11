<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addproduct.aspx.cs" Inherits="deepakfinal.addproduct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Add New Product </h1>
        <asp:Label Text ="Choose The Product " runat="server" ID="lb1"></asp:Label>
        <br />
        <br />
        <asp:DropDownList ID="dd1" runat="server">
            <asp:ListItem Value="#">Iphone</asp:ListItem>
            <asp:ListItem Value="#">Bat</asp:ListItem>
            <asp:ListItem Value="#">Laptop</asp:ListItem>
            <asp:ListItem Value="#">Tv</asp:ListItem>
        </asp:DropDownList>
        <br /><br />
       
        <asp:Button ID="addproduct_button" runat="server" Text="Add Product" OnClick="addproduct_button_Click" />
        <br />
        
    </form>
</body>
</html>
