<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="checkin.aspx.cs" Inherits="deepakfinal.checkin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Check In The Product </h1>
        <asp:Label Text ="Choose The Order Id" runat="server" ID="lb1"></asp:Label>
        <br />
        <br />
        <asp:DropDownList ID="dd1" runat="server">
            
        </asp:DropDownList>
        <br /><br />
        <asp:Button runat="server" ID="check_in_button" Text ="Check In Product " OnClick="check_in_button_Click" />
    </form>
</body>
</html>
