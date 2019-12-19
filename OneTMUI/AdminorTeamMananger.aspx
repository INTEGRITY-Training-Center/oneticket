<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminorTeamMananger.aspx.cs" Inherits="OneTMUI.AdminorTeamMananger" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="bootstrap/dist/css/bootstrap.min.css" />
    <script src="bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="js/jquery-3.3.1.min.js"></script>
    <style>

    body{
        /*color: #797979;
        font-size: 14px;
        font-weight:400;*/
    }
    .card-box{
        padding: 45px;
        border: 1px solid #e2e2e2;
        border-radius: 3px;
        background-clip: padding-box;
        margin-bottom: 20px;
        background-color: #ffffff;
        
    }

    .font-color{
        color:#666f7b;
        font-weight:700;
        margin-top:-30px;
        margin-left:-25px;
        font-size:17px;
       
    }

    .number{
        border: 2px double #64c5b1;
        margin-left:250px;
        margin-top:30px;
        width:35px;
        height:30px;
        margin-bottom:-21px;
        
    }

    .table td{
        border-top: 1px solid #eceeef;
    }

    .table-primary tr th{
        background-color:#64c5b1;
        color:white;
    }

    tbody tr td{
        color: #797979;
    }

    .form-control{
        margin-left:105px;
    }
    
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container-fluid">
        <div class="container">
            <br />
            <div class="row">
                <div class="col-12">
                    <h5 style="text-align:center;color: #666f7b;font-size:23px;">Admin or Team Manager Dashbord</h5>
                </div>
                
            </div>
            <br />
            <div class="row" style="margin-top:12px;">
  
                <div class="col-4">
                    <div class="card-box">
                        <div class="font-color">Updated Ticket</div>
                        <div class="number" style="border: 2px double #28a745;">
                            <span style="margin-left:7px; color:#666f7b">30</span>
                        </div>
                        
                    </div>
                </div>

                <div class="col-4">
                    <div class="card-box">
                        <div class="font-color">Defered Ticket</div>
                        <div class="number" style="border-color:#007bff;">
                            <span style="margin-left:7px; color:#666f7b">12</span>
                        </div>
                        
                    </div>
                </div>
              
                <div class="col-4">
                    <div class="card-box">
                        <div class="font-color">Finished Ticket</div>
                        <div class="number">
                            <span style="margin-left:7px; color:#666f7b">15</span>
                        </div>
                        
                    </div>
                </div>
            </div>
            <div class="row">
  
                <div class="col-4">
                    <div class="card-box">
                        <div class="font-color">SLA Ticket</div>
                        <div class="number" style="border-color: #ffc107;">
                            <span style="margin-left:7px; color:#666f7b">2</span>
                        </div>
                        
                    </div>
                </div>

                <div class="col-4">
                    <div class="card-box">
                        <div class="font-color">Closed Ticket</div>
                        <div class="number" style="border-color: #343a40;">
                            <span style="margin-left:7px; color:#666f7b">42</span>
                        </div>
                        
                    </div>
                </div>

                <div class="col-4">
                    <div class="card-box">
                        <div class="font-color">Accepted Ticket</div>
                        <div class="number" style="border-color:red">
                            <span style="margin-left:7px; color:#666f7b">3</span>
                        </div>
                        
                    </div>
                </div>
            </div>
            <div class="row" style="margin-top:28px;">
                
                <div class="col-4">
                    <span style="font-size:19px;font-weight:500;color:#666f7b;">Ticket List</span>
                </div>
                <div class="col-4">

                </div>
                <div class="col-4" style="margin-left:0px;">
                    <asp:DropDownList ID="ddlList" runat="server" AutoPostBack="true" Width="70%" CssClass="form-control"></asp:DropDownList>
                </div>
              
            </div>
            <br />

            <div class="row">
                <div class="col-12">
                    <div class="card-box">
                         <div class="table-responsive">
                            <table class="table table-hover">
                                <thead class="table-primary">
                                    <tr>
                                        <th style="width:250px;text-align:center;">
                                            Ticket Number
                                        </th>
                                        <th style="width:550px;text-align:center;">
                                            Issue
                                        </th>
                                        <th style="width:250px;text-align:center;">
                                            Status
                                        </th>
                                    </tr>
                                </thead>
                                <tbody style="text-align:center">
                                    <tr>
                                        <td>
                                            1
                                        </td>
                                        <td>
                                            Finished

                                        </td>
                                        <td>
                                            True
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            2
                                        </td>
                                        <td>
                                            Finished

                                        </td>
                                        <td>
                                            True
                                        </td>
                                    </tr>
                                    
                                    <tr>
                                        <table style="border-collapse: collapse; text-align: left; margin: 30px auto 30px" id="nav" role="presentation">
                                            <tbody>
                                                <tr>
                                                    <td class="b navend"><span class="csb" style="background: url(/images/nav_logo299.png) no-repeat; background-position: -24px 0; width: 28px"></span></td>
                                                    <td class="cur"><span class="csb" style="background: url(/images/nav_logo299.png) no-repeat; background-position: -53px 0; width: 20px"></span>1</td>
                                                    <td><a aria-label="Page 2" class="fl" href="/search?q=google&amp;client=firefox-b-d&amp;sxsrf=ACYBGNQtN0beon2HdNoNHpMnB1x820xY0Q:1572668733820&amp;ei=PQW9XZ7bMYS2rQGClLOwCw&amp;start=10&amp;sa=N&amp;ved=0ahUKEwje7enJ18rlAhUEWysKHQLKDLYQ8tMDCMkB"><span class="csb ch" style="background: url(/images/nav_logo299.png) no-repeat; background-position: -74px 0; width: 20px"></span>2</a></td>
                                                    <td><a aria-label="Page 3" class="fl" href="/search?q=google&amp;client=firefox-b-d&amp;sxsrf=ACYBGNQtN0beon2HdNoNHpMnB1x820xY0Q:1572668733820&amp;ei=PQW9XZ7bMYS2rQGClLOwCw&amp;start=20&amp;sa=N&amp;ved=0ahUKEwje7enJ18rlAhUEWysKHQLKDLYQ8tMDCMsB"><span class="csb ch" style="background: url(/images/nav_logo299.png) no-repeat; background-position: -74px 0; width: 20px"></span>3</a></td>
                                                    <td><a aria-label="Page 4" class="fl" href="/search?q=google&amp;client=firefox-b-d&amp;sxsrf=ACYBGNQtN0beon2HdNoNHpMnB1x820xY0Q:1572668733820&amp;ei=PQW9XZ7bMYS2rQGClLOwCw&amp;start=30&amp;sa=N&amp;ved=0ahUKEwje7enJ18rlAhUEWysKHQLKDLYQ8tMDCM0B"><span class="csb ch" style="background: url(/images/nav_logo299.png) no-repeat; background-position: -74px 0; width: 20px"></span>4</a></td>
                                                    <td><a aria-label="Page 5" class="fl" href="/search?q=google&amp;client=firefox-b-d&amp;sxsrf=ACYBGNQtN0beon2HdNoNHpMnB1x820xY0Q:1572668733820&amp;ei=PQW9XZ7bMYS2rQGClLOwCw&amp;start=40&amp;sa=N&amp;ved=0ahUKEwje7enJ18rlAhUEWysKHQLKDLYQ8tMDCM8B"><span class="csb ch" style="background: url(/images/nav_logo299.png) no-repeat; background-position: -74px 0; width: 20px"></span>5</a></td>
                                                    <td><a aria-label="Page 6" class="fl" href="/search?q=google&amp;client=firefox-b-d&amp;sxsrf=ACYBGNQtN0beon2HdNoNHpMnB1x820xY0Q:1572668733820&amp;ei=PQW9XZ7bMYS2rQGClLOwCw&amp;start=50&amp;sa=N&amp;ved=0ahUKEwje7enJ18rlAhUEWysKHQLKDLYQ8tMDCNEB"><span class="csb ch" style="background: url(/images/nav_logo299.png) no-repeat; background-position: -74px 0; width: 20px"></span>6</a></td>
                                                    <td><a aria-label="Page 7" class="fl" href="/search?q=google&amp;client=firefox-b-d&amp;sxsrf=ACYBGNQtN0beon2HdNoNHpMnB1x820xY0Q:1572668733820&amp;ei=PQW9XZ7bMYS2rQGClLOwCw&amp;start=60&amp;sa=N&amp;ved=0ahUKEwje7enJ18rlAhUEWysKHQLKDLYQ8tMDCNMB"><span class="csb ch" style="background: url(/images/nav_logo299.png) no-repeat; background-position: -74px 0; width: 20px"></span>7</a></td>
                                                    <td><a aria-label="Page 8" class="fl" href="/search?q=google&amp;client=firefox-b-d&amp;sxsrf=ACYBGNQtN0beon2HdNoNHpMnB1x820xY0Q:1572668733820&amp;ei=PQW9XZ7bMYS2rQGClLOwCw&amp;start=70&amp;sa=N&amp;ved=0ahUKEwje7enJ18rlAhUEWysKHQLKDLYQ8tMDCNUB"><span class="csb ch" style="background: url(/images/nav_logo299.png) no-repeat; background-position: -74px 0; width: 20px"></span>8</a></td>
                                                    <td><a aria-label="Page 9" class="fl" href="/search?q=google&amp;client=firefox-b-d&amp;sxsrf=ACYBGNQtN0beon2HdNoNHpMnB1x820xY0Q:1572668733820&amp;ei=PQW9XZ7bMYS2rQGClLOwCw&amp;start=80&amp;sa=N&amp;ved=0ahUKEwje7enJ18rlAhUEWysKHQLKDLYQ8tMDCNcB"><span class="csb ch" style="background: url(/images/nav_logo299.png) no-repeat; background-position: -74px 0; width: 20px"></span>9</a></td>
                                                    <td><a aria-label="Page 10" class="fl" href="/search?q=google&amp;client=firefox-b-d&amp;sxsrf=ACYBGNQtN0beon2HdNoNHpMnB1x820xY0Q:1572668733820&amp;ei=PQW9XZ7bMYS2rQGClLOwCw&amp;start=90&amp;sa=N&amp;ved=0ahUKEwje7enJ18rlAhUEWysKHQLKDLYQ8tMDCNkB"><span class="csb ch" style="background: url(/images/nav_logo299.png) no-repeat; background-position: -74px 0; width: 20px"></span>10</a></td>
                                                    <td aria-level="3" class="b navend" role="heading"><a class="pn" href="/search?q=google&amp;client=firefox-b-d&amp;sxsrf=ACYBGNQtN0beon2HdNoNHpMnB1x820xY0Q:1572668733820&amp;ei=PQW9XZ7bMYS2rQGClLOwCw&amp;start=10&amp;sa=N&amp;ved=0ahUKEwje7enJ18rlAhUEWysKHQLKDLYQ8NMDCNsB" id="pnnext" style="text-align: left"><span class="csb ch" style="background: url(/images/nav_logo299.png) no-repeat; background-position: -96px 0; width: 71px"></span><span style="display: block; margin-left: 53px">Next</span></a></td>
                                                </tr>
                                            </tbody>
                                        </table>

                                    </tr>
                                </tbody>

                                

                            </table>
                         </div>
                    </div>
                </div>
            </div>

             

           
        </div>
        
        

    
    </div>
    </form>
</body>
</html>
