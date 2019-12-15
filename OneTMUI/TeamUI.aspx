<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TeamUI.aspx.cs" Inherits="OneTMUI.TeamUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="bootstrap/dist/css/bootstrap.min.css" />
    <script src="bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="js/jquery-3.3.1.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        
    <div>
        <div class="container-fluid">
            
            <div class="row" style="margin-top:10px;">
                <div class="col-md-4">
                    <h4>Team Create Form</h4>
                </div>                
            </div>
            <div class="row" style="margin-top:25px">
                <div class="col-md-3">
                    <asp:TextBox ID="txtTeamDescription" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="row" style="margin-top:15px;">
                <div class="col-md-1">
                    <asp:Button ID="btnTeamSave" runat="server" Text="Create" CssClass="btn btn-secondary btnStyle form-control" OnClick="btnTeamSave_Click" />
                </div>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
