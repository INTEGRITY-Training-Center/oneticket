<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Report.aspx.cs" Inherits="OneTMUI.Admin.Report" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .button1 {
            display: inline-block;
            padding: 15px 25px;
            font-size: 24px;
            cursor: pointer;
            text-align: center;
            text-decoration: none;
            outline: none;
            color: #fff;
            background-color: lightblue;
            border: none;
            border-radius: 15px;
            box-shadow: 0 9px #999;
        }

            .button1:hover {
                background-color: darkturquoise
            }

            .button1:active {
                background-color: aqua;
                box-shadow: 0 5px #666;
                transform: translateY(4px);
            }

        .button2 {
            display: inline-block;
            padding: 15px 25px;
            font-size: 24px;
            cursor: pointer;
            text-align: center;
            text-decoration: none;
            outline: none;
            color: #fff;
            background-color: lightblue;
            border: none;
            border-radius: 15px;
            box-shadow: 0 9px #999;
        }

            .button2:hover {
                background-color: darkturquoise
            }

            .button2:active {
                background-color: aqua;
                box-shadow: 0 5px #666;
                transform: translateY(4px);
            }

        .button3 {
            display: inline-block;
            padding: 15px 25px;
            font-size: 24px;
            cursor: pointer;
            text-align: center;
            text-decoration: none;
            outline: none;
            color: #fff;
            background-color: lightblue;
            border: none;
            border-radius: 15px;
            box-shadow: 0 9px #999;
        }

            .button3:hover {
                background-color: darkturquoise
            }

            .button3:active {
                background-color: aqua;
                box-shadow: 0 5px #666;
                transform: translateY(4px);
            }

        .grid1 {
            width: 100%;
            border: solid dodgerblue;
        }

        .header1 {
            background-color: dodgerblue;
            font-family: Arial;
            color: White;
            border: none 0px transparent;
            height: 25px;
            text-align: center;
            font-size: 16px;
        }

        .rows1:hover {
            background-color: darkturquoise;
            font-family: Arial;
            color: black;
            text-align: left;
        }

        .grid2 {
            width: 100%;
            border: solid dodgerblue;
        }

        .header2 {
            background-color: dodgerblue;
            font-family: Arial;
            color: White;
            border: none 0px transparent;
            height: 25px;
            text-align: center;
            font-size: 16px;
        }

        .rows2:hover {
            background-color: darkturquoise;
            font-family: Arial;
            color: black;
            text-align: left;
        }

        .grid3 {
            width: 100%;
            border: solid dodgerblue;
        }

        .header3 {
            background-color: dodgerblue;
            font-family: Arial;
            color: White;
            border: none 0px transparent;
            height: 25px;
            text-align: center;
            font-size: 16px;
        }

        .rows3:hover {
            background-color: darkturquoise;
            font-family: Arial;
            color: black;
            text-align: left;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="userbtn" OnClick="userbtn_Click" CssClass="button1" runat="server" Text="User" />
            <asp:Button ID="teambtn" OnClick="teambtn_Click" CssClass="button2" runat="server" Text="Team" />
            <asp:Button ID="memberbtn" OnClick="adminbtn_Click" CssClass="button3" runat="server" Text="Member" /><br />
            <br />
            <asp:GridView ID="gvuser" CssClass="grid1" HeaderStyle-CssClass="header1" RowStyle-CssClass="rows1" runat="server"></asp:GridView>
            <asp:GridView ID="gvteam" CssClass="grid2" HeaderStyle-CssClass="header2" RowStyle-CssClass="rows2" runat="server"></asp:GridView>
            <asp:GridView ID="gvmember" CssClass="grid3" HeaderStyle-CssClass="header3" RowStyle-CssClass="rows3" runat="server"></asp:GridView>

        </div>
    </form>
</body>
</html>
