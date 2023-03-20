<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="warehouse.aspx.cs" Inherits="deepakfinal.warehouse" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Order Tracking System </title>
     <link rel="stylesheet" href="warehouse.css">
    <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
</head>
<body>
    

   
    <div class="sidebar">
        <div class="side-header">
            <h3>Order Tracking </h3>
        </div>
        
        <div class="side-content">
           

            <div class="side-menu">
                <ul>
                    
              
                    <li>
                       <a href="checkin.aspx">
                            <span class="las la-envelope"></span>
                            <small>Check In </small>
                        </a>
                    </li>
                    <li>
                       <a href="checkout.aspx">
                            <span class="las la-envelope"></span>
                            <small>Check Out </small>
                        </a>
                    </li>


                    <li>
                       <a href="logout.aspx">
                            <span class="las la-power-off"></span>
                            <small>Log Out </small>
                        </a>
                    </li>
                       

                </ul>
            </div>
        </div>
    </div>
    
    <div class="main-content">
        
        
        <main>
            
            <div class="page-header">
                <h1>Dashboard</h1>
                
            </div>
            
            <div class="page-content">
            
                <div class="records table-responsive">

                    <div>
                        <asp:Table runat="server" ID="myTable">

						<asp:TableHeaderRow>
							<asp:TableHeaderCell>Order Id</asp:TableHeaderCell>
							<asp:TableHeaderCell>Product Name</asp:TableHeaderCell>
							<asp:TableHeaderCell>Order Date</asp:TableHeaderCell>
							<asp:TableHeaderCell>Order Status</asp:TableHeaderCell>

						</asp:TableHeaderRow>
						

					</asp:Table>
                    </div>

                </div>
            
            </div>
            
        </main>
        
    </div>
</body>
</html>


