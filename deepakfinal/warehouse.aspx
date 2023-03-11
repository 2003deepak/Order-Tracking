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
                        <table width="100%">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    
                                    <th><span class="las la-sort"></span> TOTAL</th>
                                    <th><span class="las la-sort"></span> ISSUED DATE</th>
                                    <th><span class="las la-sort"></span> BALANCE</th>
                                    <th><span class="las la-sort"></span> ACTIONS</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    
                                    <td>
                                        <div class="client">
                                           
                                            <div class="client-info">
                                                <h4>Andrew Bruno</h4>
                                                <small>bruno@crossover.org</small>
                                            </div>
                                        </div>
                                    </td>
                                    <td>
                                        $3171
                                    </td>
                                    <td>
                                        19 April, 2022
                                    </td>
                                    <td>
                                        -$205
                                    </td>
                                    <td>
                                        <div class="actions">
                                            <span class="lab la-telegram-plane"></span>
                                            <span class="las la-eye"></span>
                                            <span class="las la-ellipsis-v"></span>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    
                                    <td>
                                        <div class="client">
                                           
                                            <div class="client-info">
                                                <h4>Exty Bruno</h4>
                                                <small>exty@crossover.org</small>
                                            </div>
                                        </div>
                                    </td>
                                    <td>
                                        $3171
                                    </td>
                                    <td>
                                        19 April, 2022
                                    </td>
                                    <td>
                                        -$205
                                    </td>
                                    <td>
                                        <div class="actions">
                                            <span class="lab la-telegram-plane"></span>
                                            <span class="las la-eye"></span>
                                            <span class="las la-ellipsis-v"></span>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    
                                    <td>
                                        <div class="client">
                                           
                                            <div class="client-info">
                                                <h4>Exty Bruno</h4>
                                                <small>exty@crossover.org</small>
                                            </div>
                                        </div>
                                    </td>
                                    <td>
                                        $2171
                                    </td>
                                    <td>
                                        19 April, 2022
                                    </td>
                                    <td>
                                        <span class="paid">Paid</span>
                                    </td>
                                    <td>
                                        <div class="actions">
                                            <span class="lab la-telegram-plane"></span>
                                            <span class="las la-eye"></span>
                                            <span class="las la-ellipsis-v"></span>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    
                                    <td>
                                        <div class="client">
                                           
                                            <div class="client-info">
                                                <h4>Andrew Bruno</h4>
                                                <small>bruno@crossover.org</small>
                                            </div>
                                        </div>
                                    </td>
                                    <td>
                                        $3171
                                    </td>
                                    <td>
                                        19 April, 2022
                                    </td>
                                    <td>
                                        -$205
                                    </td>
                                    <td>
                                        <div class="actions">
                                            <span class="lab la-telegram-plane"></span>
                                            <span class="las la-eye"></span>
                                            <span class="las la-ellipsis-v"></span>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    
                                    <td>
                                        <div class="client">
                                          
                                            <div class="client-info">
                                                <h4>Exty Bruno</h4>
                                                <small>exty@crossover.org</small>
                                            </div>
                                        </div>
                                    </td>
                                    <td>
                                        $3171
                                    </td>
                                    <td>
                                        19 April, 2022
                                    </td>
                                    <td>
                                        <span class="paid">Paid</span>
                                    </td>
                                    <td>
                                        <div class="actions">
                                            <span class="lab la-telegram-plane"></span>
                                            <span class="las la-eye"></span>
                                            <span class="las la-ellipsis-v"></span>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                   
                                    <td>
                                        <div class="client">
                                           
                                            <div class="client-info">
                                                <h4>Exty Bruno</h4>
                                                <small>exty@crossover.org</small>
                                            </div>
                                        </div>
                                    </td>
                                    <td>
                                        $2171
                                    </td>
                                    <td>
                                        19 April, 2022
                                    </td>
                                    <td>
                                        <span class="paid">Paid</span>
                                    </td>
                                    <td>
                                        <div class="actions">
                                            <span class="lab la-telegram-plane"></span>
                                            <span class="las la-eye"></span>
                                            <span class="las la-ellipsis-v"></span>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    
                                    <td>
                                        <div class="client">
                                           
                                            <div class="client-info">
                                                <h4>Andrew Bruno</h4>
                                                <small>bruno@crossover.org</small>
                                            </div>
                                        </div>
                                    </td>
                                    <td>
                                        $3171
                                    </td>
                                    <td>
                                        19 April, 2022
                                    </td>
                                    <td>
                                        -$205
                                    </td>
                                    <td>
                                        <div class="actions">
                                            <span class="lab la-telegram-plane"></span>
                                            <span class="las la-eye"></span>
                                            <span class="las la-ellipsis-v"></span>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                   
                                    <td>
                                        <div class="client">
                                           
                                            <div class="client-info">
                                                <h4>Exty Bruno</h4>
                                                <small>exty@crossover.org</small>
                                            </div>
                                        </div>
                                    </td>
                                    <td>
                                        $3171
                                    </td>
                                    <td>
                                        19 April, 2022
                                    </td>
                                    <td>
                                        -$205
                                    </td>
                                    <td>
                                        <div class="actions">
                                            <span class="lab la-telegram-plane"></span>
                                            <span class="las la-eye"></span>
                                            <span class="las la-ellipsis-v"></span>
                                        </div>
                                    </td>
                                </tr>
                                
                                
                            </tbody>
                        </table>
                    </div>

                </div>
            
            </div>
            
        </main>
        
    </div>
</body>
</html>


