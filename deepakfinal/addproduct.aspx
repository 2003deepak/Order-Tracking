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
            <asp:ListItem Value="Iphone">Iphone</asp:ListItem>
            <asp:ListItem Value="Bat">Bat</asp:ListItem>
            <asp:ListItem Value="Laptop">Laptop</asp:ListItem>
            <asp:ListItem Value="Tv">Tv</asp:ListItem>
        </asp:DropDownList>
        <br /><br />
       
        <asp:Label ID="deepak" runat="server"></asp:Label>
        <asp:Label ID="rinku" runat="server"></asp:Label>
        <br /><br />
        <asp:Button runat="server" ID="addproduct_button" OnClick="addproduct_button_Click" Text ="Add Product "/>
        <br />

        
        
    </form>
</body>
</html>


