<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Report.aspx.cs" Inherits="OneTMUI.Admin.Report" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="userbtn" OnClick="userbtn_Click" runat="server" Text="User" />
            <asp:Button ID="teambtn" OnClick="teambtn_Click" runat="server" Text="Team" />
            <asp:Button ID="memberbtn" OnClick="adminbtn_Click" runat="server" Text="Member" /><br /><br />
            <asp:GridView ID="gvuser" runat="server"></asp:GridView>
            <asp:GridView ID="gvteam" runat="server"></asp:GridView>
            <asp:GridView ID="gvmember" runat="server"></asp:GridView>

        </div>
    </form>
</body>
</html>
