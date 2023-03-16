<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="deepakfinal.dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Order Tracking System </title>
    <link rel ="stylesheet" href ="dashboard.css" />
    <link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>
</head>
<body>
    
        <!-- SIDEBAR -->
	<section id="sidebar">
		<a href="#" class="brand">
			
			<span class="text"> &nbsp Order Tracking System </span>
		</a>
		<ul class="side-menu top">
			<li>
                <span class="text" ><a href="addproduct.aspx"> Add Product </a></span>
				
			</li>
            <li>

                <span class="text" ><a href="logout.aspx"> Logout </a></span>

            </li>
		</ul>
		
	</section>
	<!-- SIDEBAR -->



	<!-- CONTENT -->
	<section id="content">
		
		<!-- NAVBAR -->

		<!-- MAIN -->
		<main>
			<div class="head-title">
				<div class="left">
					<h1>Dashboard</h1>
					
				</div>
				
			</div>


			

			<div class="table-data">
				<div class="order">
					<div class="head">
						<h3>Recent Orders</h3>
						
					</div>
					<table>
						<thead>
							<tr>
								<th>Order ID </th>
								<th>Product Name </th>
								<th>Order Date</th>
								<th>Status</th>
							</tr>
						</thead>
						<tbody>
							
								
								<!-- <td><span class="status completed">Completed</span></td> --> 
							
							
						
						</tbody>
					</table>

				</div> 
			
			
			</div>
		</main>
		<!-- MAIN -->
	</section>
	<!-- CONTENT -->
	

	<script src="dashboard.js"></script>
    
</body>
</html>
