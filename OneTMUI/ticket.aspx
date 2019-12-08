<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ticket.aspx.cs" Inherits="OneTMUI.ticket" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="bootstrap/dist/css/bootstrap.min.css" />
    <script src="bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="js/jquery-3.3.1.min.js"></script>
    <link rel="stylesheet" href="css/jquery.timepicker.css" />
    <script src="js/jquery.timepicker.js"></script>
    <style>
        .container {
            width: 100%;
            padding: 2px 0px;
            background-color: #ffffff;
        }


        .coupon {
            border: 3px solid #000;
            margin: 0 auto;
            max-width: 200px;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        
            <div class="container">
            <div class="row marpad">
                <div class="col-md-4">
                    <div class="coupon">
                        <div class="container">
                            <div style="position: relative; width: 190px;">
                                Total Tickets<br />
                                <br />
                                <br />
                                <div style="position: absolute; bottom: 0; right: 0; width: 100px; text-align: right;">
                                    30
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="coupon">
                        <div class="container">
                            <div style="position: relative; width: 190px;">
                                Done Tickets<br />
                                <br />
                                <br />
                                <div style="position: absolute; bottom: 0; right: 0; width: 100px; text-align: right;">
                                    30
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="coupon">
                        <div class="container">
                            <div style="position: relative; width: 190px;">
                                Pending Tickets<br />
                                <br />
                                <br />
                                <div style="position: absolute; bottom: 0; right: 0; width: 100px; text-align: right;">
                                    30
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row marpad">
                <div class="col-md-4">
                    <div class="coupon">
                        <div class="container">
                            <div style="position: relative; width: 190px;">
                                NSLATickets<br />
                                <br />
                                <br />
                                <div style="position: absolute; bottom: 0; right: 0; width: 100px; text-align: right;">
                                    30
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="col-md-4">
                    <div class="coupon">
                        <div class="container">

                            <div style="position: relative; width: 190px;">
                                SLABranchedTickets<br />
                                <br />
                                <br />
                                <div style="position: absolute; bottom: 0; right: 0; width: 100px; text-align: right;">
                                    30
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="coupon">
                        <div class="container">

                            <div style="position: relative; width: 190px;">
                                KPI<br />
                                <br />
                                <br />
                                <div style="position: absolute; bottom: 0; right: 0; width: 100px; text-align: right;">
                                    30
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
            </div>
            <br />
            <asp:DropDownList ID="ddlListUpdate" Style="float: right; margin-right: 30px" Width="10%" runat="server" AutoPostBack="true"></asp:DropDownList><br />
            <br />


           <%-- <asp:GridView ID="GridView1" runat="server">
                               <Columns>
                    <asp:BoundField DataField="TicketNo" HeaderText="Ticket No" />
                    <asp:BoundField DataField="Issue" HeaderText="Issue" />
                    <asp:BoundField DataField="Status" HeaderText="Status" />
                </Columns>

            </asp:GridView>--%>

             <table border="1" Width="100%">
            <tr>
                <td align="left">Title No</td>
                <td align="center">Issue</td>
                <td align="right">Status</td>
            </tr>
            <tr>
                <td align="center" valign="middle" ">aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa</td>
                <td>bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb </td>
                <td align="right" valign="bottom">ccccccccccccccccccccccccccccccccccccccccc</td>
            </tr>
        </table>

    
    

                <table style="border-collapse: collapse; text-align: left; margin: 30px auto 30px" id="nav" role="presentation">
            <tbody>
                <tr valign="top">
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
      
   </form>
</body>
</html>
