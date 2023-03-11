<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="checkout.aspx.cs" Inherits="deepakfinal.checkout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Check Out The Product </h1>
        <asp:Label Text ="Choose The Order Id" runat="server" ID="lb1"></asp:Label>
        <br />
        <br />
        <asp:DropDownList ID="dd1" runat="server">
            <asp:ListItem Value="#">Iphone</asp:ListItem>
            <asp:ListItem Value="#">Iphone</asp:ListItem>
            <asp:ListItem Value="#">Iphone</asp:ListItem>
            <asp:ListItem Value="#">Iphone</asp:ListItem>
        </asp:DropDownList>
        <br /><br />
        <asp:Button runat="server" ID="checkout_button" Text="Check Out" OnClick="checkout_button_Click" />
    </form>
</body>
</html>
